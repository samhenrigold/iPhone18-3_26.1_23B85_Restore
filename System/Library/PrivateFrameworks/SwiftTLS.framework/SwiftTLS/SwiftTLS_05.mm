uint64_t _s8SwiftTLS21HandshakeStateMachineV4pake13configurationAcA23PAKEClientConfigurationV_AC0I0VtAA8TLSErrorOYKcfC@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  MEMORY[0x28223BE20](v8 - 8);
  v57 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC50, "N;");
  MEMORY[0x28223BE20](v10 - 8);
  v56 = &v52 - v11;
  v12 = type metadata accessor for PAKEClientState(0);
  v54 = *(v12 - 8);
  v55 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = (&v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[5];
  v68 = a1[4];
  v69 = v15;
  v70[0] = a1[6];
  *(v70 + 9) = *(a1 + 105);
  v16 = a1[1];
  v64 = *a1;
  v65 = v16;
  v17 = a1[3];
  v66 = a1[2];
  v67 = v17;
  v18 = *a2;
  v19 = a2[1];
  v20 = a2[2];
  v21 = a2[3];
  v75 = *(a2 + 64);
  v73 = v20;
  v74 = v21;
  v71 = v18;
  v72 = v19;
  *a4 = xmmword_26C14A540;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v22 = type metadata accessor for HandshakeStateMachine(0);
  v23 = (a4 + v22[7]);
  v23[3] = &type metadata for SwiftTLSDefaultClock;
  v23[4] = &off_287CCAB28;
  *&v62[0] = 0;
  MEMORY[0x26D69C3B0](v62, 8);
  v24 = *&v62[0];
  *&v62[0] = 0;
  MEMORY[0x26D69C3B0](v62, 8);
  v25 = *&v62[0];
  *&v62[0] = 0;
  MEMORY[0x26D69C3B0](v62, 8);
  v26 = *&v62[0];
  *&v62[0] = 0;
  MEMORY[0x26D69C3B0](v62, 8);
  v27 = *&v62[0];
  v28 = (a4 + v22[8]);
  *v28 = v24;
  v28[1] = v25;
  v28[2] = v26;
  v28[3] = v27;
  v29 = a4 + v22[9];
  v30 = v74;
  *(v29 + 32) = v73;
  *(v29 + 48) = v30;
  *(v29 + 64) = v75;
  v31 = v72;
  *v29 = v71;
  *(v29 + 16) = v31;
  v62[4] = v68;
  v62[5] = v69;
  v63[0] = v70[0];
  *(v63 + 9) = *(v70 + 9);
  v62[0] = v64;
  v62[1] = v65;
  v62[2] = v66;
  v62[3] = v67;
  sub_26C10B120(&v71, v58);
  sub_26C0ECD38(&v64, v58);
  v32 = v76;
  _s8SwiftTLS15PAKEClientStateVyAcA0C13ConfigurationVAA8TLSErrorOYKcfC(v62, &v60, v14);
  if (v32)
  {
    sub_26C10B17C(&v71);
    sub_26C0E6E80(&v64);
    v33 = v61;
    *a3 = v60;
    *(a3 + 16) = v33;
    sub_26C0BB344(*a4, *(a4 + 8));
    __swift_destroy_boxed_opaque_existential_1(v23);
    v34 = *(v29 + 48);
    v58[2] = *(v29 + 32);
    v58[3] = v34;
    v59 = *(v29 + 64);
    v35 = *(v29 + 16);
    v58[0] = *v29;
    v58[1] = v35;
    return sub_26C10B17C(v58);
  }

  else
  {
    v76 = 0;
    sub_26C0E6E80(&v64);
    v37 = a4 + v22[6];
    v38 = type metadata accessor for SessionTicket(0);
    v52 = *(*(v38 - 8) + 56);
    v52(v56, 1, 1, v38);
    v53 = v14;
    v39 = v14;
    v40 = v57;
    sub_26C11F050(v39, v57, type metadata accessor for PAKEClientState);
    v41 = v55;
    v42 = *(v54 + 56);
    v42(v40, 0, 1, v55);
    v43 = type metadata accessor for HandshakeState.IdleState(0);
    v44 = v43[5];
    v52(v37 + v44, 1, 1, v38);
    v45 = v43[8];
    v42(v37 + v45, 1, 1, v41);
    v46 = v74;
    *(v37 + 32) = v73;
    *(v37 + 48) = v46;
    *(v37 + 64) = v75;
    v47 = v72;
    *v37 = v71;
    *(v37 + 16) = v47;
    sub_26C0FF20C(v56, v37 + v44, &qword_28047AC50, "N;");
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
    swift_storeEnumTagMultiPayload();
    *(v37 + v43[7]) = MEMORY[0x277D84F90];
    sub_26C0FF20C(v57, v37 + v45, &qword_28047AC40, &unk_26C14D320);
    type metadata accessor for HandshakeState(0);
    swift_storeEnumTagMultiPayload();
    if (qword_28047A760 != -1)
    {
      swift_once();
    }

    v48 = sub_26C148A9C();
    __swift_project_value_buffer(v48, qword_28047AC70);
    v49 = sub_26C148A7C();
    v50 = sub_26C148FEC();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_26C0B5000, v49, v50, "client state machine initialized with pake", v51, 2u);
      MEMORY[0x26D69C3A0](v51, -1, -1);
    }

    return sub_26C11F1F0(v53, type metadata accessor for PAKEClientState);
  }
}

uint64_t _s8SwiftTLS21HandshakeStateMachineV05startC0AA07PartialC6ResultVyAA8TLSErrorOYKF@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v348 = a1;
  v3 = v2;
  v318 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  MEMORY[0x28223BE20](v4 - 8);
  v314 = &v303 - v5;
  v6 = sub_26C148BDC();
  v315 = *(v6 - 8);
  v316 = v6;
  MEMORY[0x28223BE20](v6);
  v313 = &v303 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A948, &qword_26C14A7F0);
  MEMORY[0x28223BE20](v8 - 8);
  v308 = &v303 - v9;
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  MEMORY[0x28223BE20](v320);
  v319 = &v303 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC38, &unk_26C14D110);
  MEMORY[0x28223BE20](v11 - 8);
  v330 = &v303 - v12;
  v310 = type metadata accessor for HandshakeState.ClientHelloState(0);
  v13 = MEMORY[0x28223BE20](v310);
  v309 = &v303 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v311 = &v303 - v15;
  v312 = type metadata accessor for PartialHandshakeResult(0);
  MEMORY[0x28223BE20](v312);
  v17 = (&v303 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v344 = type metadata accessor for SessionTicket(0);
  v338 = *(v344 - 8);
  v18 = MEMORY[0x28223BE20](v344);
  v305 = &v303 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v332 = &v303 - v20;
  v21 = sub_26C14896C();
  v325 = *(v21 - 8);
  v326 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v304 = &v303 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v303 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC50, "N;");
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v307 = &v303 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v327 = &v303 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v321 = &v303 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v303 - v34;
  MEMORY[0x28223BE20](v33);
  v329 = &v303 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v306 = &v303 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v337 = &v303 - v40;
  v41 = type metadata accessor for PAKEClientState(0);
  v340 = *(v41 - 8);
  v341 = v41;
  MEMORY[0x28223BE20](v41);
  v328 = &v303 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v354 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  *&v356 = *(v354 - 8);
  v43 = MEMORY[0x28223BE20](v354);
  v324 = &v303 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v336 = &v303 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v323 = &v303 - v48;
  MEMORY[0x28223BE20](v47);
  v334 = &v303 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A960, "L6");
  v51 = MEMORY[0x28223BE20](v50 - 8);
  v335 = &v303 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v350 = &v303 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v333 = &v303 - v56;
  MEMORY[0x28223BE20](v55);
  v58 = &v303 - v57;
  v346 = type metadata accessor for HandshakeState.IdleState(0);
  v59 = MEMORY[0x28223BE20](v346);
  v342 = &v303 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v62 = &v303 - v61;
  v63 = type metadata accessor for HandshakeState(0);
  v64 = MEMORY[0x28223BE20](v63);
  v322 = &v303 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v64);
  v349 = (&v303 - v67);
  MEMORY[0x28223BE20](v66);
  v69 = &v303 - v68;
  v70 = type metadata accessor for HandshakeStateMachine(0);
  v71 = *(v70 + 24);
  v351 = v70;
  v352 = v71;
  sub_26C11F050(v3 + v71, v69, type metadata accessor for HandshakeState);
  v353 = v63;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v78 = 1701602409;
    v79 = 0x6548746E65696C63;
    if (EnumCaseMultiPayload != 1)
    {
      v79 = 0x6548726576726573;
    }

    if (EnumCaseMultiPayload)
    {
      v78 = v79;
    }

    *&v347 = v78;
    if (EnumCaseMultiPayload)
    {
      v77 = 0xEB000000006F6C6CLL;
    }

    else
    {
      v77 = 0xE400000000000000;
    }
  }

  else
  {
    v73 = 0x800000026C15A460;
    v74 = 0xD000000000000017;
    if (EnumCaseMultiPayload != 5)
    {
      v74 = 0x726F467964616572;
      v73 = 0xEC00000061746144;
    }

    v75 = 0x800000026C15A4A0;
    v76 = 0xD000000000000019;
    if (EnumCaseMultiPayload != 3)
    {
      v76 = 0xD000000000000011;
      v75 = 0x800000026C15A480;
    }

    if (EnumCaseMultiPayload > 4)
    {
      v76 = v74;
    }

    *&v347 = v76;
    if (EnumCaseMultiPayload <= 4)
    {
      v77 = v75;
    }

    else
    {
      v77 = v73;
    }
  }

  v339 = v25;
  sub_26C11F1F0(v69, type metadata accessor for HandshakeState);
  if (qword_28047A760 != -1)
  {
    swift_once();
  }

  v80 = sub_26C148A9C();
  v81 = __swift_project_value_buffer(v80, qword_28047AC70);

  v383 = v81;
  v82 = sub_26C148A7C();
  v83 = sub_26C148FFC();

  v84 = os_log_type_enabled(v82, v83);
  v355 = v58;
  *&v357 = v3;
  v331 = v35;
  v317 = v17;
  if (v84)
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *&v371[0] = v86;
    *v85 = 136315138;
    *(v85 + 4) = sub_26C0E5DE8(v347, v77, v371);
    _os_log_impl(&dword_26C0B5000, v82, v83, "startHandshake in state %s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v86);
    MEMORY[0x26D69C3A0](v86, -1, -1);
    v87 = v85;
    v3 = v357;
    MEMORY[0x26D69C3A0](v87, -1, -1);
  }

  v88 = v3 + *(v351 + 9);
  v89 = *(v88 + 60);
  v345 = v88;
  v90 = *(v88 + 62);
  v91 = sub_26C148A7C();
  v92 = sub_26C148FEC();
  v93 = os_log_type_enabled(v91, v92);
  if ((v90 & 1) == 0 && v89 == 4588)
  {
    if (v93)
    {
      v94 = swift_slowAlloc();
      v95 = v62;
      v96 = swift_slowAlloc();
      *&v371[0] = v96;
      *v94 = 136315138;
      LOWORD(v364) = 4588;
      v97 = NamedGroup.description.getter();
      v99 = sub_26C0E5DE8(v97, v98, v371);

      *(v94 + 4) = v99;
      _os_log_impl(&dword_26C0B5000, v91, v92, "starting handshake with group %s (PQ-TLS)", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v96);
      v100 = v96;
      v62 = v95;
      MEMORY[0x26D69C3A0](v100, -1, -1);
      MEMORY[0x26D69C3A0](v94, -1, -1);
    }

    goto LABEL_29;
  }

  if (!v93)
  {
LABEL_29:

    v106 = v355;
    v105 = v356;
    goto LABEL_32;
  }

  v303 = v62;
  v101 = swift_slowAlloc();
  v102 = swift_slowAlloc();
  *&v371[0] = v102;
  *v101 = 136315138;
  if (v90)
  {
    v103 = 0xE400000000000000;
    v104 = 1701736302;
  }

  else
  {
    LOWORD(v364) = v89;
    v104 = NamedGroup.description.getter();
    v103 = v107;
  }

  v105 = v356;
  v108 = sub_26C0E5DE8(v104, v103, v371);

  *(v101 + 4) = v108;
  _os_log_impl(&dword_26C0B5000, v91, v92, "starting handshake with group %s", v101, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v102);
  MEMORY[0x26D69C3A0](v102, -1, -1);
  MEMORY[0x26D69C3A0](v101, -1, -1);

  v62 = v303;
  v106 = v355;
LABEL_32:
  v110 = v349;
  v109 = v350;
  sub_26C11F050(v357 + v352, v349, type metadata accessor for HandshakeState);
  v111 = swift_getEnumCaseMultiPayload();
  v112 = v354;
  if (v111)
  {
    sub_26C11F1F0(v110, type metadata accessor for HandshakeState);

    v113 = sub_26C148A7C();
    v114 = sub_26C14900C();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      *&v371[0] = v116;
      *v115 = 136315138;
      v117 = sub_26C0E5DE8(v347, v77, v371);

      *(v115 + 4) = v117;
      _os_log_impl(&dword_26C0B5000, v113, v114, "invalid state for startHandshake: %s", v115, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v116);
      MEMORY[0x26D69C3A0](v116, -1, -1);
      MEMORY[0x26D69C3A0](v115, -1, -1);
    }

    else
    {
    }

    v121 = v348;
    *v348 = xmmword_26C14A570;
    *(v121 + 16) = 2;
    v371[0] = xmmword_26C14A570;
    LOBYTE(v371[1]) = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  sub_26C11D8DC(v110, v62, type metadata accessor for HandshakeState.IdleState);
  v118 = (v105 + 56);
  v349 = *(v105 + 56);
  (v349)(v106, 1, 1, v112);
  if ((*(v345 + 62) & 1) == 0)
  {
    v119 = *(v345 + 60);
    switch(v119)
    {
      case 4588:
        v120 = v333;
        sub_26C0DDB04(v333);
        break;
      case 29:
        v120 = v333;
        sub_26C148AFC();
        break;
      case 24:
        v120 = v333;
        sub_26C148E6C();
        break;
      default:
        v230 = sub_26C148A7C();
        v231 = sub_26C14900C();
        if (os_log_type_enabled(v230, v231))
        {
          v232 = swift_slowAlloc();
          *v232 = 33554688;
          *(v232 + 4) = v119;
          _os_log_impl(&dword_26C0B5000, v230, v231, "unknown fixedGroup: %hu", v232, 6u);
          MEMORY[0x26D69C3A0](v232, -1, -1);
        }

        v233 = v348;
        *v348 = xmmword_26C14A570;
        *(v233 + 16) = 2;
        v371[0] = xmmword_26C14A570;
        LOBYTE(v371[1]) = 2;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        v204 = v106;
        goto LABEL_125;
    }

    sub_26C0CF5C4(v106, &qword_28047A960, "L6");
    swift_storeEnumTagMultiPayload();
    (v349)(v120, 0, 1, v112);
    sub_26C0CF55C(v120, v106, &qword_28047A960, "L6");
    v105 = v356;
    v109 = v350;
  }

  v350 = v118;
  sub_26C0CF314(v106, v109, &qword_28047A960, "L6");
  v123 = *(v105 + 48);
  *&v356 = v105 + 48;
  if (v123(v109, 1, v112) == 1)
  {
    sub_26C0CF5C4(v109, &qword_28047A960, "L6");
    v124 = MEMORY[0x277D84F90];
  }

  else
  {
    v125 = v334;
    sub_26C11D8DC(v109, v334, type metadata accessor for GeneratedEphemeralPrivateKey);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A8D8, &qword_26C14A780);
    v126 = swift_allocObject();
    *(v126 + 16) = xmmword_26C14A550;
    v127 = v125;
    v128 = v323;
    sub_26C11F050(v127, v323, type metadata accessor for GeneratedEphemeralPrivateKey);
    v129 = swift_getEnumCaseMultiPayload();
    sub_26C11F1F0(v128, type metadata accessor for GeneratedEphemeralPrivateKey);
    *(v126 + 32) = 0x11EC0018001DuLL >> (16 * v129);
    v124 = sub_26C0CD87C(0, 1, 1, MEMORY[0x277D84F90]);
    v131 = *(v124 + 2);
    v130 = *(v124 + 3);
    if (v131 >= v130 >> 1)
    {
      v124 = sub_26C0CD87C((v130 > 1), v131 + 1, 1, v124);
    }

    sub_26C11F1F0(v334, type metadata accessor for GeneratedEphemeralPrivateKey);
    *(v124 + 2) = v131 + 1;
    v132 = &v124[88 * v131];
    *(v132 + 4) = v126;
    v132[112] = 16;
    v106 = v355;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v124 = sub_26C0CD87C(0, *(v124 + 2) + 1, 1, v124);
  }

  v134 = *(v124 + 2);
  v133 = *(v124 + 3);
  if (v134 >= v133 >> 1)
  {
    v124 = sub_26C0CD87C((v133 > 1), v134 + 1, 1, v124);
  }

  v374 = 0;
  *(v124 + 2) = v134 + 1;
  v135 = &v124[88 * v134];
  *(v135 + 4) = &unk_287CC9B10;
  v135[40] = v374;
  v135[112] = 32;
  v375 = v124;
  v136 = v335;
  sub_26C0CF314(v106, v335, &qword_28047A960, "L6");
  if (v123(v136, 1, v354) == 1)
  {
    sub_26C0CF5C4(v136, &qword_28047A960, "L6");
    v137 = v357;
    v138 = v346;
  }

  else
  {
    v139 = v336;
    sub_26C11D8DC(v136, v336, type metadata accessor for GeneratedEphemeralPrivateKey);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A8E8, &qword_26C14A790);
    v140 = swift_allocObject();
    *(v140 + 16) = xmmword_26C14A550;
    v141 = v324;
    sub_26C11F050(v139, v324, type metadata accessor for GeneratedEphemeralPrivateKey);
    v142 = 0x11EC0018001DuLL >> (16 * swift_getEnumCaseMultiPayload());
    sub_26C11F1F0(v141, type metadata accessor for GeneratedEphemeralPrivateKey);
    v143 = sub_26C0DB5E8();
    v145 = 0;
    v146 = v144 >> 62;
    v138 = v346;
    if ((v144 >> 62) > 1)
    {
      if (v146 == 2)
      {
        v145 = *(v143 + 16);
      }
    }

    else if (v146)
    {
      v145 = v143;
    }

    *(v140 + 32) = v142;
    *(v140 + 40) = v143;
    *(v140 + 48) = v144;
    *(v140 + 56) = v145;
    v148 = *(v124 + 2);
    v147 = *(v124 + 3);
    v137 = v357;
    if (v148 >= v147 >> 1)
    {
      v124 = sub_26C0CD87C((v147 > 1), v148 + 1, 1, v124);
    }

    sub_26C11F1F0(v336, type metadata accessor for GeneratedEphemeralPrivateKey);
    *(v124 + 2) = v148 + 1;
    v149 = &v124[88 * v148];
    *(v149 + 4) = v140;
    *(v149 + 5) = 0;
    *(v149 + 6) = 0;
    *(v149 + 7) = 0;
    v149[112] = 64;
    v375 = v124;
  }

  sub_26C0C6450(&unk_287CC9BD8);
  v150 = *(v62 + 1);
  if (v150)
  {
    v151 = *v62;

    v152 = sub_26C10BCF8(v151, v150);
    v153 = v152;
    v155 = v154;
    v156 = 0;
    v157 = v154 >> 62;
    if ((v154 >> 62) > 1)
    {
      if (v157 == 2)
      {
        v156 = *(v152 + 16);
      }
    }

    else if (v157)
    {
      v156 = v152;
    }

    v158 = v375;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v158 = sub_26C0CD87C(0, *(v158 + 2) + 1, 1, v158);
    }

    v160 = *(v158 + 2);
    v159 = *(v158 + 3);
    if (v160 >= v159 >> 1)
    {
      v158 = sub_26C0CD87C((v159 > 1), v160 + 1, 1, v158);
    }

    *(v158 + 2) = v160 + 1;
    v161 = &v158[88 * v160];
    *(v161 + 4) = v153;
    *(v161 + 5) = v155;
    *(v161 + 6) = v156;
    v161[112] = 0;
    v375 = v158;
    v137 = v357;
    v138 = v346;
  }

  v162 = *(v62 + 4);
  if (v162 >> 60 != 15)
  {
    v356 = *(v62 + 2);
    v163 = *(v62 + 3);
    v164 = v375;
    sub_26C0BBAA4(v163, v162);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v164 = sub_26C0CD87C(0, *(v164 + 2) + 1, 1, v164);
    }

    v166 = *(v164 + 2);
    v165 = *(v164 + 3);
    v167 = v356;
    if (v166 >= v165 >> 1)
    {
      v302 = sub_26C0CD87C((v165 > 1), v166 + 1, 1, v164);
      v167 = v356;
      v164 = v302;
    }

    *(v164 + 2) = v166 + 1;
    v168 = &v164[88 * v166];
    *(v168 + 4) = v163;
    *(v168 + 40) = v167;
    v168[112] = 0x80;
    v375 = v164;
  }

  v169 = *(v62 + 6);
  if (v169)
  {
    v170 = v375;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v170 = sub_26C0CD87C(0, *(v170 + 2) + 1, 1, v170);
    }

    v172 = *(v170 + 2);
    v171 = *(v170 + 3);
    if (v172 >= v171 >> 1)
    {
      v170 = sub_26C0CD87C((v171 > 1), v172 + 1, 1, v170);
    }

    LOBYTE(v371[0]) = 0;
    *(v170 + 2) = v172 + 1;
    v173 = &v170[88 * v172];
    *(v173 + 4) = v169;
    *(v173 + 5) = 0;
    v173[48] = v371[0];
    v173[112] = 48;
    v375 = v170;
  }

  if ((v62[58] & 1) == 0)
  {
    v174 = *(v62 + 28);
    v175 = v375;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v175 = sub_26C0CD87C(0, *(v175 + 2) + 1, 1, v175);
    }

    v177 = *(v175 + 2);
    v176 = *(v175 + 3);
    if (v177 >= v176 >> 1)
    {
      v175 = sub_26C0CD87C((v176 > 1), v177 + 1, 1, v175);
    }

    LOBYTE(v371[0]) = 0;
    *(v175 + 2) = v177 + 1;
    v178 = &v175[88 * v177];
    *(v178 + 16) = v174;
    v178[34] = v371[0];
    v178[112] = -80;
    v375 = v175;
  }

  v179 = v337;
  sub_26C0CF314(&v62[*(v138 + 32)], v337, &qword_28047AC40, &unk_26C14D320);
  if ((*(v340 + 48))(v179, 1, v341) == 1)
  {
    v180 = v137;
    v181 = v138;
    sub_26C0CF5C4(v179, &qword_28047AC40, &unk_26C14D320);
    v182 = v375;
  }

  else
  {
    v183 = v179;
    v184 = v328;
    sub_26C11D8DC(v183, v328, type metadata accessor for PAKEClientState);
    v185 = v343;
    sub_26C0E9D0C(&v364, v371);
    if (v185)
    {
      sub_26C11F1F0(v184, type metadata accessor for PAKEClientState);
      sub_26C0CF5C4(v106, &qword_28047A960, "L6");

      v186 = v365;
      v187 = v348;
      *v348 = v364;
      *(v187 + 16) = v186;
LABEL_126:
      v234 = v62;
      return sub_26C11F1F0(v234, type metadata accessor for HandshakeState.IdleState);
    }

    v343 = 0;
    v347 = v371[1];
    v356 = v371[0];
    v188 = v371[2];
    v189 = *&v371[3];
    v182 = v375;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v182 = sub_26C0CD87C(0, *(v182 + 2) + 1, 1, v182);
    }

    v191 = *(v182 + 2);
    v190 = *(v182 + 3);
    if (v191 >= v190 >> 1)
    {
      v182 = sub_26C0CD87C((v190 > 1), v191 + 1, 1, v182);
    }

    LOBYTE(v364) = 0;
    sub_26C11F1F0(v328, type metadata accessor for PAKEClientState);
    *(v182 + 2) = v191 + 1;
    v192 = &v182[88 * v191];
    v193 = v347;
    *(v192 + 2) = v356;
    *(v192 + 3) = v193;
    *(v192 + 4) = v188;
    *(v192 + 10) = v189;
    v192[112] = -64;
    v375 = v182;
    v180 = v357;
    v181 = v346;
  }

  v194 = (v180 + *(v351 + 8));
  v195 = v194[1];
  *(v371 + 8) = *v194;
  LOWORD(v371[0]) = 771;
  *(&v371[1] + 8) = v195;
  *(&v371[2] + 8) = 0u;
  *(&v371[3] + 8) = 0u;
  *(&v371[4] + 1) = 0;
  *&v372 = &unk_287CC9B88;
  *(&v372 + 1) = &unk_287CC9BB0;
  *&v347 = v182;
  v373 = v182;
  v196 = *(v181 + 20);
  v197 = v329;
  sub_26C0CF314(&v62[v196], v329, &qword_28047AC50, "N;");
  v198 = *(v338 + 48);
  *&v356 = v338 + 48;
  v351 = v198;
  v199 = (v198)(v197, 1, v344);
  sub_26C0CF5C4(v197, &qword_28047AC50, "N;");
  if (v199 != 1 && *(*&v62[*(v181 + 28)] + 16))
  {
    v368 = v371[4];
    v369 = v372;
    v370 = v373;
    v364 = v371[0];
    v365 = v371[1];
    v366 = v371[2];
    v367 = v371[3];
    sub_26C0FED20(&v364);
    v200 = sub_26C148A7C();
    v201 = sub_26C14900C();
    if (os_log_type_enabled(v200, v201))
    {
      v202 = swift_slowAlloc();
      *v202 = 0;
      _os_log_impl(&dword_26C0B5000, v200, v201, "both session resumption and imported PSKs are in use, only one is allowed", v202, 2u);
      MEMORY[0x26D69C3A0](v202, -1, -1);
    }

    v203 = v348;
    *v348 = xmmword_26C14A570;
    *(v203 + 16) = 2;
    v359 = xmmword_26C14A570;
    LOBYTE(v360) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v204 = v355;
LABEL_125:
    sub_26C0CF5C4(v204, &qword_28047A960, "L6");
    goto LABEL_126;
  }

  sub_26C14895C();
  v205 = &v62[v196];
  v206 = v331;
  sub_26C0CF314(v205, v331, &qword_28047AC50, "N;");
  v207 = v321;
  sub_26C0CF314(v206, v321, &qword_28047AC50, "N;");
  v208 = v344;
  if (v351(v207, 1, v344) == 1)
  {
    sub_26C0CF5C4(v207, &qword_28047AC50, "N;");
    v209 = v342;
    v210 = v327;
    v211 = v347;
    v212 = v181;
    goto LABEL_140;
  }

  v213 = v332;
  sub_26C11D8DC(v207, v332, type metadata accessor for SessionTicket);
  v363 = v62[64];
  v214 = *(v62 + 3);
  v361 = *(v62 + 2);
  v362 = v214;
  v215 = *(v62 + 1);
  v359 = *v62;
  v360 = v215;
  v216 = word_287CC9BA8;
  if (!qword_287CC9B98)
  {
    v216 = 0;
  }

  v210 = v327;
  v211 = v347;
  if (!qword_287CC9B98)
  {
    v212 = v181;
    goto LABEL_137;
  }

  v212 = v181;
  if (*(v213 + v208[11]) != v216)
  {
    goto LABEL_137;
  }

  v217 = *(v347 + 16);
  if (!v217)
  {
    v235 = v206;
    sub_26C10B120(&v359, &v364);
    v221 = v332;
LABEL_130:
    v236 = v221;
    if (sub_26C0D0F0C(v360))
    {
      v237 = v304;
      sub_26C14892C();
      if (sub_26C14893C())
      {
        sub_26C11F2F0(&qword_28047AC88, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v238 = v326;
        v239 = sub_26C148F2C();
        (*(v325 + 8))(v304, v238);
        sub_26C10B17C(&v359);
        if ((v239 & 1) == 0)
        {
          sub_26C11F1F0(v236, type metadata accessor for SessionTicket);
          v208 = v344;
          v209 = v342;
          v206 = v235;
          goto LABEL_140;
        }

LABEL_136:
        v206 = v235;
        goto LABEL_137;
      }

      (*(v325 + 8))(v237, v326);
    }

    sub_26C10B17C(&v359);
    goto LABEL_136;
  }

  v218 = v347 + 32;
  v219 = sub_26C10B120(&v359, &v364);
  v220 = v217 - 1;
  v221 = v332;
  while (1)
  {
    v222 = *(v218 + 16);
    v364 = *v218;
    v365 = v222;
    v223 = *(v218 + 32);
    v224 = *(v218 + 48);
    v225 = *(v218 + 64);
    LOBYTE(v369) = *(v218 + 80);
    v367 = v224;
    v368 = v225;
    v366 = v223;
    if ((v369 & 0xF0) == 0x30 && (v365 & 1) == 0)
    {
      v226 = (v221 + v208[13]);
      v227 = v226[1];
      if (v227)
      {
        break;
      }
    }

LABEL_120:
    if (!v220)
    {
      v235 = v331;
      v210 = v327;
      goto LABEL_130;
    }

    --v220;
    v218 += 88;
  }

  v228 = v364;
  v358[0] = *v226;
  v358[1] = v227;
  MEMORY[0x28223BE20](v219);
  *(&v303 - 2) = v358;
  sub_26C0FF14C(v364, *(&v364 + 1), v365 & 1);
  v229 = v343;
  LOBYTE(v228) = sub_26C10BC4C(sub_26C11E874, (&v303 - 4), v228);
  v343 = v229;
  v219 = sub_26C0BE468(&v364);
  if (v228)
  {
    v208 = v344;
    v212 = v346;
    v221 = v332;
    goto LABEL_120;
  }

  sub_26C10B17C(&v359);
  v206 = v331;
  v212 = v346;
  v210 = v327;
LABEL_137:
  v240 = sub_26C148A7C();
  v241 = sub_26C148FFC();
  if (os_log_type_enabled(v240, v241))
  {
    v242 = swift_slowAlloc();
    *v242 = 0;
    _os_log_impl(&dword_26C0B5000, v240, v241, "unable to resume session, incompatible with current handshake", v242, 2u);
    v243 = v242;
    v210 = v327;
    MEMORY[0x26D69C3A0](v243, -1, -1);
  }

  sub_26C11F1F0(v332, type metadata accessor for SessionTicket);
  sub_26C0CF5C4(v206, &qword_28047AC50, "N;");
  v208 = v344;
  (*(v338 + 56))(v206, 1, 1, v344);
  v209 = v342;
LABEL_140:
  if (*(v345 + 63) == 1)
  {
    sub_26C0CF314(v206, v210, &qword_28047AC50, "N;");
    if (v351(v210, 1, v208) == 1)
    {
      sub_26C0CF5C4(v210, &qword_28047AC50, "N;");
      goto LABEL_152;
    }

    v244 = v305;
    sub_26C11D8DC(v210, v305, type metadata accessor for SessionTicket);
    if (*(v244 + v208[10]))
    {
      v245 = sub_26C148A7C();
      v246 = sub_26C148FFC();
      if (os_log_type_enabled(v245, v246))
      {
        v247 = swift_slowAlloc();
        *v247 = 0;
        _os_log_impl(&dword_26C0B5000, v245, v246, "client requesting early data with session resumption", v247, 2u);
        MEMORY[0x26D69C3A0](v247, -1, -1);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v211 = sub_26C0CD87C(0, *(v211 + 2) + 1, 1, v211);
      }

      v249 = *(v211 + 2);
      v248 = *(v211 + 3);
      v250 = v249 + 1;
      if (v249 >= v248 >> 1)
      {
        v211 = sub_26C0CD87C((v248 > 1), v249 + 1, 1, v211);
      }

      LOBYTE(v364) = 1;
      sub_26C11F1F0(v244, type metadata accessor for SessionTicket);
LABEL_160:
      *(v211 + 2) = v250;
      v255 = &v211[88 * v249];
      *(v255 + 8) = 0;
      v255[36] = v364;
      v255[112] = 80;
      v373 = v211;
      v208 = v344;
      v209 = v342;
    }

    else
    {
      sub_26C11F1F0(v244, type metadata accessor for SessionTicket);
LABEL_152:
      if (*(*&v62[*(v212 + 28)] + 16))
      {
        v251 = sub_26C148A7C();
        v252 = sub_26C148FFC();
        if (os_log_type_enabled(v251, v252))
        {
          v253 = swift_slowAlloc();
          *v253 = 0;
          _os_log_impl(&dword_26C0B5000, v251, v252, "client requesting early data with external psks", v253, 2u);
          MEMORY[0x26D69C3A0](v253, -1, -1);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v211 = sub_26C0CD87C(0, *(v211 + 2) + 1, 1, v211);
        }

        v249 = *(v211 + 2);
        v254 = *(v211 + 3);
        v250 = v249 + 1;
        if (v249 >= v254 >> 1)
        {
          v211 = sub_26C0CD87C((v254 > 1), v249 + 1, 1, v211);
        }

        LOBYTE(v364) = 1;
        goto LABEL_160;
      }
    }
  }

  v256 = v206;
  v257 = *&v62[*(v212 + 28)];
  v258 = v322;
  sub_26C11F050(v357 + v352, v322, type metadata accessor for HandshakeState);
  if (swift_getEnumCaseMultiPayload())
  {
    result = sub_26C11F1F0(v258, type metadata accessor for HandshakeState);
    __break(1u);
    goto LABEL_173;
  }

  sub_26C11D8DC(v258, v209, type metadata accessor for HandshakeState.IdleState);
  v259 = v209;
  v260 = *(v209 + 64);
  v261 = v330;
  sub_26C0CF314(v259 + *(v212 + 24), v330, &qword_28047AC38, &unk_26C14D110);
  v262 = v319;
  sub_26C0CF314(v261, v319, &qword_28047A870, &qword_26C14A5A0);
  if (swift_getEnumCaseMultiPayload() >= 4)
  {
    v303 = v62;
    v264 = v308;
    *&v356 = v257;
    sub_26C11B1BC(v308, &v364, v371, v256, v257, v260, v339);
    *&v347 = *(&v364 + 1);
    v348 = v364;
    v345 = v365;
    sub_26C0CF5C4(v261, &qword_28047A870, &qword_26C14A5A0);
    sub_26C0CF55C(v264, v261, &qword_28047A948, &qword_26C14A7F0);
    swift_storeEnumTagMultiPayload();
    v265 = v342;
    v266 = *(v342 + 48);
    v361 = *(v342 + 32);
    v362 = v266;
    v363 = *(v342 + 64);
    v267 = *(v342 + 16);
    v359 = *v342;
    v360 = v267;
    v380 = v371[4];
    v381 = v372;
    v382 = v373;
    v376 = v371[0];
    v377 = v371[1];
    v378 = v371[2];
    v379 = v371[3];
    v351 = sub_26C120B44();
    sub_26C0CF314(v355, v333, &qword_28047A960, "L6");
    v268 = v310;
    v269 = v208;
    v270 = v309;
    sub_26C0CF314(v261, &v309[*(v310 + 36)], &qword_28047AC38, &unk_26C14D110);
    v271 = v307;
    sub_26C0CF314(v256, v307, &qword_28047AC50, "N;");
    v272 = v306;
    sub_26C0CF314(v265 + *(v346 + 32), v306, &qword_28047AC40, &unk_26C14D320);
    v273 = v268[8];
    (v349)(v270 + v273, 1, 1, v354);
    v274 = v268[10];
    (*(v338 + 56))(v270 + v274, 1, 1, v269);
    v275 = v268[12];
    (*(v340 + 56))(v270 + v275, 1, 1, v341);
    v276 = v362;
    *(v270 + 32) = v361;
    *(v270 + 48) = v276;
    *(v270 + 64) = v363;
    v277 = v360;
    *v270 = v359;
    *(v270 + 16) = v277;
    *(v270 + 72) = 0u;
    *(v270 + 88) = 0u;
    *(v270 + 104) = 0;
    *(v270 + 112) = &unk_287CC9B88;
    *(v270 + 120) = v351;
    sub_26C10B120(&v359, &v364);

    sub_26C0FF20C(v333, v270 + v273, &qword_28047A960, "L6");
    sub_26C0FF20C(v271, v270 + v274, &qword_28047AC50, "N;");
    *(v270 + v268[11]) = v356;

    sub_26C0FF20C(v272, v270 + v275, &qword_28047AC40, &unk_26C14D320);
    sub_26C0CF5C4(v330, &qword_28047AC38, &unk_26C14D110);
    v278 = v311;
    sub_26C11D8DC(v270, v311, type metadata accessor for HandshakeState.ClientHelloState);
    v279 = v314;
    sub_26C10C2B8(v314);
    v281 = v315;
    v280 = v316;
    result = (*(v315 + 48))(v279, 1, v316);
    if (result != 1)
    {
      sub_26C11F1F0(v342, type metadata accessor for HandshakeState.IdleState);
      v282 = v357;
      v283 = v352;
      sub_26C11F1F0(v357 + v352, type metadata accessor for HandshakeState);
      v284 = *(v281 + 32);
      v285 = v313;
      v284(v313, v279, v280);
      sub_26C11D8DC(v278, v282 + v283, type metadata accessor for HandshakeState.ClientHelloState);
      swift_storeEnumTagMultiPayload();
      v286 = v312;
      v287 = *(v312 + 20);
      v288 = v317;
      v284(v317 + v287, v285, v280);
      v289 = type metadata accessor for EncryptionLevel(0);
      swift_storeEnumTagMultiPayload();
      v290 = *(*(v289 - 8) + 56);
      v290(v288 + v287, 0, 1, v289);
      v290(v288 + *(v286 + 24), 1, 1, v289);
      v291 = v347;
      *v288 = v348;
      v288[1] = v291;
      v288[2] = v345;
      *(v288 + *(v286 + 28)) = xmmword_26C14A540;
      v368 = v371[4];
      v369 = v372;
      v370 = v373;
      v366 = v371[2];
      v367 = v371[3];
      v364 = v371[0];
      v365 = v371[1];
      sub_26C0FED20(&v364);
      v292 = sub_26C148A7C();
      v293 = sub_26C14901C();
      if (os_log_type_enabled(v292, v293))
      {
        v294 = swift_slowAlloc();
        *v294 = 0;
        _os_log_impl(&dword_26C0B5000, v292, v293, "client beginning TLS handshake", v294, 2u);
        MEMORY[0x26D69C3A0](v294, -1, -1);
      }

      v295 = sub_26C148A7C();
      v296 = sub_26C148FEC();
      v297 = os_log_type_enabled(v295, v296);
      v298 = v303;
      v299 = v355;
      v300 = v331;
      if (v297)
      {
        v301 = swift_slowAlloc();
        *v301 = 0;
        _os_log_impl(&dword_26C0B5000, v295, v296, "client sent client hello", v301, 2u);
        MEMORY[0x26D69C3A0](v301, -1, -1);
      }

      sub_26C0CF5C4(v300, &qword_28047AC50, "N;");
      (*(v325 + 8))(v339, v326);
      sub_26C0CF5C4(v299, &qword_28047A960, "L6");
      sub_26C11D8DC(v288, v318, type metadata accessor for PartialHandshakeResult);
      return sub_26C11F1F0(v298, type metadata accessor for HandshakeState.IdleState);
    }

LABEL_173:
    __break(1u);
    return result;
  }

  sub_26C0CF5C4(v262, &qword_28047A870, &qword_26C14A5A0);
  v357 = xmmword_26C14A570;
  v364 = xmmword_26C14A570;
  LOBYTE(v365) = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  sub_26C11F1F0(v342, type metadata accessor for HandshakeState.IdleState);
  sub_26C0CF5C4(v256, &qword_28047AC50, "N;");
  (*(v325 + 8))(v339, v326);
  sub_26C0CF5C4(v355, &qword_28047A960, "L6");
  sub_26C0CF5C4(v261, &qword_28047AC38, &unk_26C14D110);
  v263 = v348;
  *v348 = v357;
  *(v263 + 16) = 2;
  v368 = v371[4];
  v369 = v372;
  v370 = v373;
  v364 = v371[0];
  v365 = v371[1];
  v366 = v371[2];
  v367 = v371[3];
  sub_26C0FED20(&v364);
  v234 = v62;
  return sub_26C11F1F0(v234, type metadata accessor for HandshakeState.IdleState);
}

void HandshakeStateMachine.receivedNetworkData(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v7 = *(v2 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v6 = BYTE6(v3);
    v7 = v2 >> 32;
    if (!v5)
    {
      v7 = v6;
    }
  }

  v8 = v7 - v4;
  if (__OFSUB__(v7, v4))
  {
    __break(1u);
  }

  else if (qword_28047A760 == -1)
  {
    goto LABEL_10;
  }

  swift_once();
LABEL_10:
  v9 = sub_26C148A9C();
  __swift_project_value_buffer(v9, qword_28047AC70);
  v10 = sub_26C148A7C();
  v11 = sub_26C148FFC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_26C0B5000, v10, v11, "received network data (%ld bytes)", v12, 0xCu);
    MEMORY[0x26D69C3A0](v12, -1, -1);
  }

  sub_26C0E0B74(a1);
}

uint64_t _s8SwiftTLS21HandshakeStateMachineV07processC0AA07PartialC6ResultVSgyAA8TLSErrorOYKF@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a1;
  v4 = v3;
  v5 = v2;
  v101 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v92 - v7;
  v9 = type metadata accessor for PartialHandshakeResult(0);
  v10 = *(v9 - 8);
  v102 = v9;
  v103 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v94 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v93 = &v92 - v14;
  MEMORY[0x28223BE20](v13);
  v95 = &v92 - v15;
  v106 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v16 = MEMORY[0x28223BE20](v106);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v107 = &v92 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC90, &qword_26C14D330);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v99 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v98 = &v92 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v96 = &v92 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v100 = &v92 - v28;
  MEMORY[0x28223BE20](v27);
  v97 = &v92 - v29;
  v30 = type metadata accessor for HandshakeState(0);
  MEMORY[0x28223BE20](v30);
  v112 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(type metadata accessor for HandshakeStateMachine(0) + 24);
  *&v108 = v18;
  v105 = v8;
  while (1)
  {
    if (qword_28047A760 != -1)
    {
      swift_once();
    }

    v34 = sub_26C148A9C();
    v109 = __swift_project_value_buffer(v34, qword_28047AC70);
    v35 = sub_26C148A7C();
    v36 = sub_26C148FFC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_26C0B5000, v35, v36, "client attempting process step", v37, 2u);
      MEMORY[0x26D69C3A0](v37, -1, -1);
    }

    sub_26C11F050(v5 + v32, v112, type metadata accessor for HandshakeState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload < 3)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v39 = v4;
        sub_26C115FB4(&v110);
        if (v4)
        {
          goto LABEL_38;
        }

        goto LABEL_2;
      }

      if (!EnumCaseMultiPayload)
      {
        v61 = sub_26C148A7C();
        v62 = sub_26C14900C();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&dword_26C0B5000, v61, v62, "processHandshake called in idle state", v63, 2u);
          MEMORY[0x26D69C3A0](v63, -1, -1);
        }

        v108 = xmmword_26C14D300;
        v110 = xmmword_26C14D300;
        v64 = 2;
        v111 = 2;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        v65 = type metadata accessor for HandshakeState;
        goto LABEL_43;
      }

      v68 = v97;
      sub_26C115438(&v110, v97);
      if (!v4)
      {
        v54 = v103;
        goto LABEL_50;
      }

LABEL_38:
      v108 = v110;
      v64 = v111;
      v69 = type metadata accessor for HandshakeState;
LABEL_39:
      v65 = v69;
      goto LABEL_43;
    }

    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v39 = v4;
        sub_26C116E54(&v110);
        if (v4)
        {
          goto LABEL_38;
        }

LABEL_2:
        v4 = v39;
        v33 = type metadata accessor for HandshakeState;
        if (v40)
        {
          goto LABEL_22;
        }

        goto LABEL_3;
      }

      if (EnumCaseMultiPayload == 5)
      {
        v55 = v98;
        sub_26C1163E4(&v110, v98);
        v54 = v103;
        if (!v4)
        {
          v53 = v102;
          if ((*(v103 + 48))(v55, 1, v102) != 1)
          {
            sub_26C11D8DC(v55, v94, type metadata accessor for PartialHandshakeResult);
            v56 = sub_26C148A7C();
            v57 = sub_26C14901C();
            v58 = os_log_type_enabled(v56, v57);
            v59 = v101;
            if (v58)
            {
              v60 = swift_slowAlloc();
              *v60 = 0;
              _os_log_impl(&dword_26C0B5000, v56, v57, "client completed TLS handshake", v60, 2u);
              MEMORY[0x26D69C3A0](v60, -1, -1);
            }

            sub_26C11D8DC(v94, v59, type metadata accessor for PartialHandshakeResult);
            v52 = v59;
            goto LABEL_53;
          }

LABEL_51:
          v50 = type metadata accessor for HandshakeState;
LABEL_60:
          v51 = 1;
          v52 = v101;
          goto LABEL_65;
        }

        goto LABEL_38;
      }

      v68 = v99;
      sub_26C1172C8(&v110, v99);
      v54 = v103;
      if (!v4)
      {
LABEL_50:
        v53 = v102;
        if ((*(v54 + 48))(v68, 1, v102) != 1)
        {
          v81 = v101;
          sub_26C11D8DC(v68, v101, type metadata accessor for PartialHandshakeResult);
          v52 = v81;
LABEL_53:
          v51 = 0;
          v50 = type metadata accessor for HandshakeState;
          goto LABEL_65;
        }

        goto LABEL_51;
      }

      goto LABEL_38;
    }

    v41 = v107;
    sub_26C11F050(v112, v107, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v42 = v106;
    if ((*(v41 + *(v106 + 40)) & 1) != 0 || *(v41 + *(v106 + 44)) == 1)
    {
      v66 = v100;
      sub_26C1163E4(&v110, v100);
      if (v4)
      {
        v67 = v107;
        goto LABEL_42;
      }

      v53 = v102;
      v54 = v103;
      if ((*(v103 + 48))(v66, 1, v102) == 1)
      {
        v80 = v107;
        goto LABEL_59;
      }

      sub_26C11D8DC(v66, v95, type metadata accessor for PartialHandshakeResult);
      v82 = sub_26C148A7C();
      v83 = sub_26C14901C();
      v84 = os_log_type_enabled(v82, v83);
      v85 = v101;
      if (v84)
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_26C0B5000, v82, v83, "client completed TLS handshake", v86, 2u);
        MEMORY[0x26D69C3A0](v86, -1, -1);
      }

      v50 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      sub_26C11F1F0(v107, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v87 = v95;
LABEL_64:
      sub_26C11D8DC(v87, v85, type metadata accessor for PartialHandshakeResult);
      v52 = v85;
      v51 = 0;
LABEL_65:
      (*(v54 + 56))(v52, v51, 1, v53);
      return sub_26C11F1F0(v112, v50);
    }

    v43 = v30;
    v44 = v112;
    sub_26C11F1F0(v41, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v45 = v44;
    v46 = v108;
    sub_26C11F050(v45, v108, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v47 = v105;
    sub_26C0CF314(v46 + *(v42 + 48), v105, &qword_28047AC40, &unk_26C14D320);
    v48 = type metadata accessor for PAKEClientState(0);
    if ((*(*(v48 - 8) + 48))(v47, 1, v48) != 1)
    {
      break;
    }

    sub_26C11F1F0(v108, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    sub_26C0CF5C4(v47, &qword_28047AC40, &unk_26C14D320);
    sub_26C1169D0(&v110);
    if (v4)
    {
      v108 = v110;
      v64 = v111;
      v69 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      goto LABEL_39;
    }

    v4 = 0;
    v33 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
    if (v49)
    {
LABEL_22:
      v50 = v33;
      v51 = 1;
      v52 = v101;
      v53 = v102;
      v54 = v103;
      goto LABEL_65;
    }

    v30 = v43;
LABEL_3:
    sub_26C11F1F0(v112, v33);
  }

  sub_26C0CF5C4(v47, &qword_28047AC40, &unk_26C14D320);
  v70 = v96;
  sub_26C1163E4(&v110, v96);
  if (!v4)
  {
    v53 = v102;
    v54 = v103;
    if ((*(v103 + 48))(v70, 1, v102) != 1)
    {
      sub_26C11D8DC(v70, v93, type metadata accessor for PartialHandshakeResult);
      v88 = sub_26C148A7C();
      v89 = sub_26C14901C();
      v90 = os_log_type_enabled(v88, v89);
      v85 = v101;
      if (v90)
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_26C0B5000, v88, v89, "client completed TLS handshake", v91, 2u);
        MEMORY[0x26D69C3A0](v91, -1, -1);
      }

      v50 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      sub_26C11F1F0(v108, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v87 = v93;
      goto LABEL_64;
    }

    v80 = v108;
LABEL_59:
    v50 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
    sub_26C11F1F0(v80, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    goto LABEL_60;
  }

  v67 = v108;
LABEL_42:
  sub_26C11F1F0(v67, type metadata accessor for HandshakeState.EncryptedExtensionsState);
  v65 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
  v108 = v110;
  v64 = v111;
LABEL_43:
  sub_26C11F1F0(v112, v65);
  v71 = v108;
  sub_26C0CF018(v108, *(&v108 + 1), v64);
  v72 = sub_26C148A7C();
  v73 = sub_26C14900C();
  sub_26C0CF030(v71, *(&v71 + 1), v64);
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v74 = 138412290;
    sub_26C0BBAF8();
    swift_allocError();
    *v76 = v71;
    *(v76 + 16) = v64;
    sub_26C0CF018(v71, *(&v71 + 1), v64);
    v77 = _swift_stdlib_bridgeErrorToNSError();
    *(v74 + 4) = v77;
    *v75 = v77;
    _os_log_impl(&dword_26C0B5000, v72, v73, "processing message failed due to error %@", v74, 0xCu);
    sub_26C0CF5C4(v75, &qword_28047A880, &qword_26C14A5B0);
    MEMORY[0x26D69C3A0](v75, -1, -1);
    MEMORY[0x26D69C3A0](v74, -1, -1);
  }

  v78 = v104;
  *v104 = v71;
  *(v78 + 16) = v64;
  v110 = v71;
  v111 = v64;
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

void sub_26C115438(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a1;
  v3 = v2;
  v91 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v85 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v84 = &v74 - v7;
  v86 = sub_26C148BDC();
  v8 = *(v86 - 8);
  v9 = MEMORY[0x28223BE20](v86);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v74 - v12;
  v83 = type metadata accessor for HandshakeState.ServerHelloState(0);
  MEMORY[0x28223BE20](v83);
  v15 = (&v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for HandshakeState.ClientHelloState(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v87 = (&v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v89 = &v74 - v19;
  v90 = type metadata accessor for HandshakeState(0);
  MEMORY[0x28223BE20](v90);
  v88 = (&v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for EncryptionLevel(0);
  v81 = *(v21 - 8);
  v82 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v78 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v77 = &v74 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v79 = &v74 - v27;
  MEMORY[0x28223BE20](v26);
  v80 = &v74 - v28;
  if (qword_28047A760 != -1)
  {
    swift_once();
  }

  v29 = sub_26C148A9C();
  v92 = __swift_project_value_buffer(v29, qword_28047AC70);
  v30 = sub_26C148A7C();
  v31 = sub_26C148FFC();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = v8;
    v33 = v3;
    v34 = v15;
    v35 = v11;
    v36 = v13;
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_26C0B5000, v30, v31, "client expecting server hello", v37, 2u);
    v38 = v37;
    v13 = v36;
    v11 = v35;
    v15 = v34;
    v3 = v33;
    v8 = v32;
    MEMORY[0x26D69C3A0](v38, -1, -1);
  }

  if (v3[1] >> 60 == 15)
  {
    v76 = v13;
    sub_26C0CF2F4(&v112);
  }

  else
  {
    v39 = v122;
    sub_26C0DE9B4(v3, v3, &v110, &v112);
    if (v39)
    {
      v40 = v111[0];
      v41 = v110;
LABEL_20:
      v55 = v93;
      *v93 = v41;
      *(v55 + 16) = v40;
      return;
    }

    v76 = v13;
    v122 = 0;
  }

  v108[6] = v118;
  v108[7] = v119;
  v108[2] = v114;
  v108[3] = v115;
  v108[4] = v116;
  v108[5] = v117;
  v108[0] = v112;
  v108[1] = v113;
  *&v111[80] = v118;
  *&v111[96] = v119;
  *&v111[16] = v114;
  *&v111[32] = v115;
  *&v111[48] = v116;
  *&v111[64] = v117;
  v109 = v120;
  v111[112] = v120;
  v110 = v112;
  *v111 = v113;
  if (sub_26C0CF284(&v110) != 1)
  {
    if (v111[112] != 1)
    {
      v98 = *&v111[72];
      v99[0] = *&v111[88];
      *(v99 + 9) = *&v111[97];
      v94 = *&v111[8];
      v95 = *&v111[24];
      v96 = *&v111[40];
      v97 = *&v111[56];
      sub_26C0BF530(&v111[8], &v102);
      sub_26C11ACDC(&v94);
      v106 = v98;
      v107[0] = v99[0];
      *(v107 + 9) = *(v99 + 9);
      v102 = v94;
      v103 = v95;
      v104 = v96;
      v105 = v97;
      sub_26C0BF5D0(&v102);
      v56 = v93;
      *v93 = xmmword_26C14A560;
      *(v56 + 16) = 2;
      v94 = xmmword_26C14A560;
      LOBYTE(v95) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0CF5C4(v108, &qword_28047A940, &qword_26C14A7E8);
      return;
    }

    v121[2] = *&v111[40];
    v121[3] = *&v111[56];
    v121[4] = *&v111[72];
    v121[5] = *&v111[88];
    v121[0] = *&v111[8];
    v121[1] = *&v111[24];
    v106 = *&v111[72];
    v107[0] = *&v111[88];
    *(v107 + 9) = *&v111[97];
    v102 = *&v111[8];
    v103 = *&v111[24];
    v104 = *&v111[40];
    v105 = *&v111[56];
    sub_26C11EFF4(&v102, &v94);
    v46 = sub_26C148A7C();
    v47 = sub_26C148FEC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_26C0B5000, v46, v47, "client got server hello", v48, 2u);
      MEMORY[0x26D69C3A0](v48, -1, -1);
    }

    v75 = v8;

    v49 = type metadata accessor for HandshakeStateMachine(0);
    __swift_project_boxed_opaque_existential_1((v3 + *(v49 + 28)), *(v3 + *(v49 + 28) + 24));
    v50 = v110;
    v92 = *v111;
    v74 = *(v49 + 24);
    v51 = v88;
    sub_26C11F050(v3 + v74, v88, type metadata accessor for HandshakeState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v52 = v89;
      sub_26C11D8DC(v51, v89, type metadata accessor for HandshakeState.ClientHelloState);
      v53 = v87;
      sub_26C11F050(v52, v87, type metadata accessor for HandshakeState.ClientHelloState);
      sub_26C0BF530(&v111[8], &v94);
      sub_26C0BBAA4(v50, *(&v50 + 1));
      v54 = v122;
      sub_26C10C4E4(v53, v121, v50, *(&v50 + 1), v92, &v100, v15);
      if (v54)
      {
        sub_26C0BF5D0(&v111[8]);
        sub_26C0CF5C4(v108, &qword_28047A940, &qword_26C14A7E8);
        sub_26C11F1F0(v52, type metadata accessor for HandshakeState.ClientHelloState);
        v40 = v101;
        v41 = v100;
        goto LABEL_20;
      }

      v122 = 0;
      v49 = v84;
      v92 = *(v83 + 24);
      sub_26C10FB04(v84);
      v93 = v15;
      v57 = v75;
      v58 = *(v75 + 48);
      v59 = v86;
      if (v58(v49, 1, v86) != 1)
      {
        v88 = *(v57 + 32);
        (v88)(v76, v49, v59);
        v60 = v85;
        sub_26C10FE3C(v85);
        v61 = v86;
        if (v58(v60, 1, v86) != 1)
        {
          sub_26C0BF5D0(&v111[8]);
          sub_26C0CF5C4(v108, &qword_28047A940, &qword_26C14A7E8);
          sub_26C11F1F0(v89, type metadata accessor for HandshakeState.ClientHelloState);
          v62 = v74;
          sub_26C11F1F0(v3 + v74, type metadata accessor for HandshakeState);
          v63 = v88;
          (v88)(v11, v60, v61);
          sub_26C11D8DC(v93, v3 + v62, type metadata accessor for HandshakeState.ServerHelloState);
          swift_storeEnumTagMultiPayload();
          v64 = v77;
          v63(v77, v11, v61);
          v65 = v82;
          swift_storeEnumTagMultiPayload();
          v66 = v78;
          v63(v78, v76, v61);
          swift_storeEnumTagMultiPayload();
          v67 = v80;
          sub_26C11D8DC(v64, v80, type metadata accessor for EncryptionLevel);
          v68 = v79;
          sub_26C11D8DC(v66, v79, type metadata accessor for EncryptionLevel);
          v69 = type metadata accessor for PartialHandshakeResult(0);
          v70 = v69[5];
          v71 = v91;
          sub_26C11D8DC(v68, v91 + v70, type metadata accessor for EncryptionLevel);
          v72 = *(v81 + 56);
          v72(v71 + v70, 0, 1, v65);
          v73 = v69[6];
          sub_26C11D8DC(v67, v71 + v73, type metadata accessor for EncryptionLevel);
          v72(v71 + v73, 0, 1, v65);
          *v71 = xmmword_26C14A540;
          *(v71 + 16) = 0;
          *(v71 + v69[7]) = xmmword_26C14A540;
          (*(*(v69 - 1) + 56))(v71, 0, 1, v69);
          return;
        }

        (*(v75 + 8))(v76, v61);
        goto LABEL_28;
      }
    }

    else
    {
      sub_26C11F1F0(v51, type metadata accessor for HandshakeState);
      __break(1u);
    }

    v85 = v49;
LABEL_28:
    sub_26C0CF5C4(v85, &qword_28047A930, qword_26C14C120);
    __break(1u);
    return;
  }

  v42 = sub_26C148A7C();
  v43 = sub_26C148FFC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_26C0B5000, v42, v43, "incomplete message, waiting for more data", v44, 2u);
    MEMORY[0x26D69C3A0](v44, -1, -1);
  }

  v45 = type metadata accessor for PartialHandshakeResult(0);
  (*(*(v45 - 8) + 56))(v91, 1, 1, v45);
}

void sub_26C115FB4(uint64_t a1)
{
  v4 = v2;
  if (qword_28047A760 != -1)
  {
    swift_once();
  }

  v5 = sub_26C148A9C();
  __swift_project_value_buffer(v5, qword_28047AC70);
  v6 = sub_26C148A7C();
  v7 = sub_26C148FFC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26C0B5000, v6, v7, "client expecting ee", v8, 2u);
    MEMORY[0x26D69C3A0](v8, -1, -1);
  }

  if (v1[1] >> 60 == 15)
  {
    sub_26C0CF2F4(&v37);
  }

  else
  {
    sub_26C0DE9B4(v1, v1, v36, &v37);
    if (v2)
    {
      v9 = v36[16];
      v10 = *v36;
LABEL_19:
      *a1 = v10;
      *(a1 + 16) = v9;
      return;
    }

    v4 = 0;
  }

  v34[6] = v43;
  v34[7] = v44;
  v35 = v45;
  v34[2] = v39;
  v34[3] = v40;
  v34[4] = v41;
  v34[5] = v42;
  v34[0] = v37;
  v34[1] = v38;
  *&v36[96] = v43;
  *&v36[112] = v44;
  v36[128] = v45;
  *&v36[32] = v39;
  *&v36[48] = v40;
  *&v36[64] = v41;
  *&v36[80] = v42;
  *v36 = v37;
  *&v36[16] = v38;
  if (sub_26C0CF284(v36) == 1)
  {
    v11 = sub_26C148A7C();
    v12 = sub_26C148FFC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26C0B5000, v11, v12, "incomplete message, waiting for more data", v13, 2u);
      MEMORY[0x26D69C3A0](v13, -1, -1);
    }

    return;
  }

  if (v36[128] != 2)
  {
    v27 = *&v36[88];
    v28[0] = *&v36[104];
    *(v28 + 9) = *&v36[113];
    v23 = *&v36[24];
    v24 = *&v36[40];
    v25 = *&v36[56];
    v26 = *&v36[72];
    sub_26C0BF530(&v36[24], v29);
    sub_26C11ACDC(&v23);
    v32 = v27;
    v33[0] = v28[0];
    *(v33 + 9) = *(v28 + 9);
    *v29 = v23;
    *&v29[16] = v24;
    v30 = v25;
    v31 = v26;
    sub_26C0BF5D0(v29);
    *a1 = xmmword_26C14A560;
    *(a1 + 16) = 2;
    v23 = xmmword_26C14A560;
    LOBYTE(v24) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0CF5C4(v34, &qword_28047A940, &qword_26C14A7E8);
    return;
  }

  v14 = *&v36[24];

  v15 = sub_26C148A7C();
  v16 = sub_26C148FEC();
  if (os_log_type_enabled(v15, v16))
  {
    v21 = v14;
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26C0B5000, v15, v16, "client got ee", v17, 2u);
    v18 = v17;
    v14 = v21;
    MEMORY[0x26D69C3A0](v18, -1, -1);
  }

  v20 = *v36;
  v22 = v20 >> 64;
  v19 = v20;
  *v29 = *v36;
  *&v29[8] = *&v36[8];
  type metadata accessor for HandshakeStateMachine(0);
  sub_26C0BBAA4(v19, v22);
  sub_26C1012D8(v14, v29, &v23);
  sub_26C0BF5D0(&v36[24]);
  sub_26C0CF5C4(v34, &qword_28047A940, &qword_26C14A7E8);
  sub_26C0BB9B0(*v29, *&v29[8]);
  if (v4)
  {
    v9 = v24;
    v10 = v23;
    goto LABEL_19;
  }
}

void sub_26C1163E4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v36 = a2;
  v5 = type metadata accessor for PartialHandshakeResult(0);
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_28047A760 != -1)
  {
    swift_once();
  }

  v8 = sub_26C148A9C();
  __swift_project_value_buffer(v8, qword_28047AC70);
  v9 = sub_26C148A7C();
  v10 = sub_26C148FFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = a1;
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26C0B5000, v9, v10, "client expecting finished", v12, 2u);
    v13 = v12;
    a1 = v11;
    MEMORY[0x26D69C3A0](v13, -1, -1);
  }

  if (v4[1] >> 60 == 15)
  {
    v34 = v5;
    sub_26C0CF2F4(&v51);
  }

  else
  {
    v14 = v60;
    sub_26C0DE9B4(v4, v4, v50, &v51);
    if (v14)
    {
      v15 = v50[16];
      *a1 = *v50;
      *(a1 + 16) = v15;
      return;
    }

    v34 = v5;
    v60 = 0;
  }

  v48[6] = v57;
  v48[7] = v58;
  v49 = v59;
  v48[2] = v53;
  v48[3] = v54;
  v48[4] = v55;
  v48[5] = v56;
  v48[0] = v51;
  v48[1] = v52;
  *&v50[96] = v57;
  *&v50[112] = v58;
  v50[128] = v59;
  *&v50[32] = v53;
  *&v50[48] = v54;
  *&v50[64] = v55;
  *&v50[80] = v56;
  *v50 = v51;
  *&v50[16] = v52;
  if (sub_26C0CF284(v50) == 1)
  {
    v16 = sub_26C148A7C();
    v17 = sub_26C148FFC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26C0B5000, v16, v17, "incomplete message, waiting for more data", v18, 2u);
      MEMORY[0x26D69C3A0](v18, -1, -1);
    }

    v19 = 1;
LABEL_14:
    (*(v35 + 56))(v36, v19, 1, v34);
    return;
  }

  if (v50[128] == 6)
  {
    v32 = a1;
    v20 = *&v50[24];
    v33 = *&v50[32];
    sub_26C0BBAA4(*&v50[24], *&v50[32]);
    v21 = sub_26C148A7C();
    v22 = sub_26C148FEC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_26C0B5000, v21, v22, "client got server finished ", v23, 2u);
      MEMORY[0x26D69C3A0](v23, -1, -1);
    }

    *&v37[0] = v20;
    *(v37 + 8) = v33;
    v24 = *v50;
    v46 = *v50;
    v33 = *&v50[8];
    v47 = *&v50[8];
    type metadata accessor for HandshakeStateMachine(0);
    sub_26C0BF530(&v50[24], v42);
    sub_26C0BBAA4(v24, v33);
    v25 = v60;
    sub_26C1042A8(v37, &v46, &v44, v7);
    if (!v25)
    {
      v60 = 0;
      sub_26C0BB9B0(v46, v47);
      sub_26C0BB9B0(*&v37[0], *(&v37[0] + 1));
      v28 = sub_26C148A7C();
      v29 = sub_26C148FEC();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_26C0B5000, v28, v29, "client sending client finished", v30, 2u);
        MEMORY[0x26D69C3A0](v30, -1, -1);
      }

      sub_26C0BF5D0(&v50[24]);

      sub_26C0CF5C4(v48, &qword_28047A940, &qword_26C14A7E8);
      sub_26C11D8DC(v7, v36, type metadata accessor for PartialHandshakeResult);
      v19 = 0;
      goto LABEL_14;
    }

    sub_26C0CF5C4(v48, &qword_28047A940, &qword_26C14A7E8);
    sub_26C0BF5D0(&v50[24]);
    sub_26C0BB9B0(v46, v47);
    sub_26C0BB9B0(*&v37[0], *(&v37[0] + 1));
    v26 = v45;
    v27 = v32;
    *v32 = v44;
    *(v27 + 16) = v26;
  }

  else
  {
    v40 = *&v50[88];
    v41[0] = *&v50[104];
    *(v41 + 9) = *&v50[113];
    v37[0] = *&v50[24];
    v37[1] = *&v50[40];
    v38 = *&v50[56];
    v39 = *&v50[72];
    sub_26C0BF530(&v50[24], v42);
    sub_26C11ACDC(v37);
    v42[4] = v40;
    v43[0] = v41[0];
    *(v43 + 9) = *(v41 + 9);
    v42[0] = v37[0];
    v42[1] = v37[1];
    v42[2] = v38;
    v42[3] = v39;
    sub_26C0BF5D0(v42);
    *a1 = xmmword_26C14A560;
    *(a1 + 16) = 2;
    v37[0] = xmmword_26C14A560;
    LOBYTE(v37[1]) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0CF5C4(v48, &qword_28047A940, &qword_26C14A7E8);
  }
}

void sub_26C1169D0(uint64_t a1)
{
  v4 = v2;
  if (qword_28047A760 != -1)
  {
    swift_once();
  }

  v5 = sub_26C148A9C();
  __swift_project_value_buffer(v5, qword_28047AC70);
  v6 = sub_26C148A7C();
  v7 = sub_26C148FFC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26C0B5000, v6, v7, "client expecting certificate message", v8, 2u);
    MEMORY[0x26D69C3A0](v8, -1, -1);
  }

  if (v1[1] >> 60 == 15)
  {
    sub_26C0CF2F4(&v38);
  }

  else
  {
    sub_26C0DE9B4(v1, v1, v37, &v38);
    if (v2)
    {
      v9 = v37[16];
      v10 = *v37;
LABEL_19:
      *a1 = v10;
      *(a1 + 16) = v9;
      return;
    }

    v4 = 0;
  }

  v35[6] = v44;
  v35[7] = v45;
  v36 = v46;
  v35[2] = v40;
  v35[3] = v41;
  v35[4] = v42;
  v35[5] = v43;
  v35[0] = v38;
  v35[1] = v39;
  *&v37[96] = v44;
  *&v37[112] = v45;
  v37[128] = v46;
  *&v37[32] = v40;
  *&v37[48] = v41;
  *&v37[64] = v42;
  *&v37[80] = v43;
  *v37 = v38;
  *&v37[16] = v39;
  if (sub_26C0CF284(v37) == 1)
  {
    v11 = sub_26C148A7C();
    v12 = sub_26C148FFC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26C0B5000, v11, v12, "incomplete message, waiting for more data", v13, 2u);
      MEMORY[0x26D69C3A0](v13, -1, -1);
    }

    return;
  }

  if (v37[128] != 4)
  {
    v27 = *&v37[88];
    v28[0] = *&v37[104];
    *(v28 + 9) = *&v37[113];
    *v24 = *&v37[24];
    *&v24[16] = *&v37[40];
    v25 = *&v37[56];
    v26 = *&v37[72];
    sub_26C0BF530(&v37[24], v29);
    sub_26C11ACDC(v24);
    v29[4] = v27;
    v30[0] = v28[0];
    *(v30 + 9) = *(v28 + 9);
    v29[0] = *v24;
    v29[1] = *&v24[16];
    v29[2] = v25;
    v29[3] = v26;
    sub_26C0BF5D0(v29);
    *a1 = xmmword_26C14A560;
    *(a1 + 16) = 2;
    *v24 = xmmword_26C14A560;
    v24[16] = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0CF5C4(v35, &qword_28047A940, &qword_26C14A7E8);
    return;
  }

  v14 = *&v37[48];
  v22 = *&v37[32];
  v47 = *&v37[24];
  sub_26C0BBAA4(*&v37[24], *&v37[32]);

  v15 = sub_26C148A7C();
  v16 = sub_26C148FEC();
  if (os_log_type_enabled(v15, v16))
  {
    v21 = a1;
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26C0B5000, v15, v16, "client got certificate message", v17, 2u);
    v18 = v17;
    a1 = v21;
    MEMORY[0x26D69C3A0](v18, -1, -1);
  }

  *v24 = v47;
  *&v24[8] = v22;
  *&v24[24] = v14;
  v20 = *v37;
  v23 = v20 >> 64;
  v19 = v20;
  v33 = *v37;
  v34 = *&v37[8];
  type metadata accessor for HandshakeStateMachine(0);
  sub_26C0BF530(&v37[24], v29);
  sub_26C0BBAA4(v19, v23);
  sub_26C102D6C(v24, &v33, &v31);
  sub_26C0CF5C4(v35, &qword_28047A940, &qword_26C14A7E8);
  sub_26C0BF5D0(&v37[24]);
  sub_26C0BB9B0(v33, v34);
  sub_26C0BB9B0(*v24, *&v24[8]);

  if (v4)
  {
    v9 = v32;
    v10 = v31;
    goto LABEL_19;
  }
}

void sub_26C116E54(uint64_t a1)
{
  v4 = v2;
  if (qword_28047A760 != -1)
  {
    swift_once();
  }

  v5 = sub_26C148A9C();
  __swift_project_value_buffer(v5, qword_28047AC70);
  v6 = sub_26C148A7C();
  v7 = sub_26C148FFC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26C0B5000, v6, v7, "client expecting certificate verify", v8, 2u);
    MEMORY[0x26D69C3A0](v8, -1, -1);
  }

  if (v1[1] >> 60 == 15)
  {
    sub_26C0CF2F4(&v39);
  }

  else
  {
    sub_26C0DE9B4(v1, v1, v38, &v39);
    if (v2)
    {
      v9 = v38[16];
      v10 = *v38;
LABEL_19:
      *a1 = v10;
      *(a1 + 16) = v9;
      return;
    }

    v4 = 0;
  }

  v36[6] = v45;
  v36[7] = v46;
  v37 = v47;
  v36[2] = v41;
  v36[3] = v42;
  v36[4] = v43;
  v36[5] = v44;
  v36[0] = v39;
  v36[1] = v40;
  *&v38[96] = v45;
  *&v38[112] = v46;
  v38[128] = v47;
  *&v38[32] = v41;
  *&v38[48] = v42;
  *&v38[64] = v43;
  *&v38[80] = v44;
  *v38 = v39;
  *&v38[16] = v40;
  if (sub_26C0CF284(v38) == 1)
  {
    v11 = sub_26C148A7C();
    v12 = sub_26C148FFC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26C0B5000, v11, v12, "incomplete message, waiting for more data", v13, 2u);
      MEMORY[0x26D69C3A0](v13, -1, -1);
    }

    return;
  }

  if (v38[128] != 5)
  {
    v28 = *&v38[88];
    v29[0] = *&v38[104];
    *(v29 + 9) = *&v38[113];
    v24 = *&v38[24];
    v25 = *&v38[40];
    v26 = *&v38[56];
    v27 = *&v38[72];
    sub_26C0BF530(&v38[24], v30);
    sub_26C11ACDC(&v24);
    v30[4] = v28;
    v31[0] = v29[0];
    *(v31 + 9) = *(v29 + 9);
    v30[0] = v24;
    v30[1] = v25;
    v30[2] = v26;
    v30[3] = v27;
    sub_26C0BF5D0(v30);
    *a1 = xmmword_26C14A560;
    *(a1 + 16) = 2;
    v24 = xmmword_26C14A560;
    LOBYTE(v25) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0CF5C4(v36, &qword_28047A940, &qword_26C14A7E8);
    return;
  }

  v48 = *&v38[24];
  v14 = *&v38[32];
  v22 = *&v38[40];
  sub_26C0BBAA4(*&v38[32], *&v38[40]);
  v15 = sub_26C148A7C();
  v16 = sub_26C148FEC();
  if (os_log_type_enabled(v15, v16))
  {
    v21 = a1;
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26C0B5000, v15, v16, "client got certificate verify", v17, 2u);
    v18 = v17;
    a1 = v21;
    MEMORY[0x26D69C3A0](v18, -1, -1);
  }

  LOWORD(v24) = v48;
  *(&v24 + 1) = v14;
  v25 = v22;
  v20 = *v38;
  v23 = v20 >> 64;
  v19 = v20;
  v34 = *v38;
  v35 = *&v38[8];
  type metadata accessor for HandshakeStateMachine(0);
  sub_26C0BF530(&v38[24], v30);
  sub_26C0BBAA4(v19, v23);
  sub_26C103B24(&v24, &v34, &v32);
  sub_26C0CF5C4(v36, &qword_28047A940, &qword_26C14A7E8);
  sub_26C0BF5D0(&v38[24]);
  sub_26C0BB9B0(v34, v35);
  sub_26C0BB9B0(*(&v24 + 1), v25);
  if (v4)
  {
    v9 = v33;
    v10 = v32;
    goto LABEL_19;
  }
}

void sub_26C1172C8(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v4 = v3;
  v26 = a2;
  v5 = sub_26C14896C();
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28047A760 != -1)
  {
    swift_once();
  }

  v8 = sub_26C148A9C();
  __swift_project_value_buffer(v8, qword_28047AC70);
  v9 = sub_26C148A7C();
  v10 = sub_26C148FFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26C0B5000, v9, v10, "client expecting newSessionTicket", v11, 2u);
    MEMORY[0x26D69C3A0](v11, -1, -1);
  }

  if (v2[1] >> 60 == 15)
  {
    sub_26C0CF2F4(&v49);
  }

  else
  {
    sub_26C0DE9B4(v2, v2, &v47, &v49);
    if (v3)
    {
      v12 = v48[0];
      v13 = v47;
      goto LABEL_20;
    }

    v4 = 0;
  }

  v45[6] = v55;
  v45[7] = v56;
  v45[2] = v51;
  v45[3] = v52;
  v45[4] = v53;
  v45[5] = v54;
  v45[0] = v49;
  v45[1] = v50;
  *&v48[80] = v55;
  *&v48[96] = v56;
  *&v48[16] = v51;
  *&v48[32] = v52;
  *&v48[48] = v53;
  *&v48[64] = v54;
  v46 = v57;
  v48[112] = v57;
  v47 = v49;
  *v48 = v50;
  v14 = sub_26C0CF284(&v47);
  v15 = sub_26C148A7C();
  if (v14 != 1)
  {
    v19 = sub_26C148FEC();
    if (os_log_type_enabled(v15, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_26C0B5000, v15, v19, "client got message expecting new session ticket", v20, 2u);
      MEMORY[0x26D69C3A0](v20, -1, -1);
    }

    if (v48[112] <= 6u)
    {
      v33 = *&v48[72];
      v34[0] = *&v48[88];
      *(v34 + 9) = *&v48[97];
      v29 = *&v48[8];
      v30 = *&v48[24];
      v31 = *&v48[40];
      v32 = *&v48[56];
      sub_26C0BF530(&v48[8], &v39);
      sub_26C11ACDC(&v29);
      v43 = v33;
      v44[0] = v34[0];
      *(v44 + 9) = *(v34 + 9);
      v39 = v29;
      v40 = v30;
      v41 = v31;
      v42 = v32;
      sub_26C0BF5D0(&v39);
      v21 = v58;
      *v58 = xmmword_26C14A560;
      *(v21 + 16) = 2;
      v29 = xmmword_26C14A560;
      LOBYTE(v30) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0CF5C4(v45, &qword_28047A940, &qword_26C14A7E8);
      return;
    }

    v35 = *&v48[8];
    v36 = *&v48[24];
    v43 = *&v48[72];
    v44[0] = *&v48[88];
    *(v44 + 9) = *&v48[97];
    v37 = *&v48[40];
    v38 = *&v48[56];
    v39 = *&v48[8];
    v40 = *&v48[24];
    v41 = *&v48[40];
    v42 = *&v48[56];
    sub_26C0BF530(&v48[8], &v29);
    sub_26C11F0B8(&v39, &v29);
    sub_26C14895C();
    type metadata accessor for HandshakeStateMachine(0);
    v22 = v26;
    sub_26C1075F4(&v35, v7, &v27, v26);
    if (!v4)
    {
      sub_26C0CF5C4(v45, &qword_28047A940, &qword_26C14A7E8);
      sub_26C0BF5D0(&v48[8]);
      (*(v25 + 8))(v7, v5);
      v29 = v35;
      v30 = v36;
      v31 = v37;
      v32 = v38;
      sub_26C11F114(&v29);
      v24 = type metadata accessor for PartialHandshakeResult(0);
      (*(*(v24 - 8) + 56))(v22, 0, 1, v24);
      return;
    }

    sub_26C0CF5C4(v45, &qword_28047A940, &qword_26C14A7E8);
    sub_26C0BF5D0(&v48[8]);
    (*(v25 + 8))(v7, v5);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    sub_26C11F114(&v29);
    v12 = v28;
    v13 = v27;
LABEL_20:
    v23 = v58;
    *v58 = v13;
    *(v23 + 16) = v12;
    return;
  }

  v16 = sub_26C148FFC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26C0B5000, v15, v16, "incomplete message, waiting for more data", v17, 2u);
    MEMORY[0x26D69C3A0](v17, -1, -1);
  }

  v18 = type metadata accessor for PartialHandshakeResult(0);
  (*(*(v18 - 8) + 56))(v26, 1, 1, v18);
}

uint64_t HandshakeStateMachine.peerQUICTransportParameters.getter@<X0>(uint64_t *a1@<X8>)
{
  v30 = a1;
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  MEMORY[0x28223BE20](ready);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HandshakeState(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HandshakeStateMachine(0);
  sub_26C11F050(v1 + *(v17 + 24), v16, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    result = sub_26C11F1F0(v16, type metadata accessor for HandshakeState);
    v20 = 0;
    v22 = 0;
    v21 = 0xF000000000000000;
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_26C11D8DC(v16, v7, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
        v26 = &v7[*(v5 + 36)];
        v20 = *v26;
        v21 = v26[1];
        v22 = v26[2];
        sub_26C0BB37C(*v26, v21);
        v23 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
        v24 = v7;
      }

      else
      {
        sub_26C11D8DC(v16, v4, type metadata accessor for HandshakeState.ReadyState);
        v27 = &v4[*(ready + 36)];
        v20 = *v27;
        v21 = v27[1];
        v22 = v27[2];
        sub_26C0BB37C(*v27, v21);
        v23 = type metadata accessor for HandshakeState.ReadyState;
        v24 = v4;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_26C11D8DC(v16, v13, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v19 = &v13[*(v11 + 28)];
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      sub_26C0BB37C(*v19, v21);
      v23 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      v24 = v13;
    }

    else
    {
      sub_26C11D8DC(v16, v10, type metadata accessor for HandshakeState.ServerCertificateState);
      v20 = v10[11];
      v21 = v10[12];
      v22 = v10[13];
      sub_26C0BB37C(v20, v21);
      v23 = type metadata accessor for HandshakeState.ServerCertificateState;
      v24 = v10;
    }

    result = sub_26C11F1F0(v24, v23);
  }

  v28 = v30;
  *v30 = v20;
  v28[1] = v21;
  v28[2] = v22;
  return result;
}

uint64_t HandshakeStateMachine.peerALPN.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  MEMORY[0x28223BE20](ready);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HandshakeState(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HandshakeStateMachine(0);
  sub_26C11F050(v0 + *(v16 + 24), v15, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    sub_26C11F1F0(v15, type metadata accessor for HandshakeState);
    return 0;
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_26C11D8DC(v15, v6, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
        v18 = *&v6[*(v4 + 32)];

        v19 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
        v20 = v6;
      }

      else
      {
        sub_26C11D8DC(v15, v3, type metadata accessor for HandshakeState.ReadyState);
        v18 = *&v3[*(ready + 32)];

        v19 = type metadata accessor for HandshakeState.ReadyState;
        v20 = v3;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_26C11D8DC(v15, v12, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v18 = *&v12[*(v10 + 24)];

      v19 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      v20 = v12;
    }

    else
    {
      sub_26C11D8DC(v15, v9, type metadata accessor for HandshakeState.ServerCertificateState);
      v18 = *(v9 + 9);

      v19 = type metadata accessor for HandshakeState.ServerCertificateState;
      v20 = v9;
    }

    sub_26C11F1F0(v20, v19);
  }

  return v18;
}

uint64_t HandshakeStateMachine.negotiatedCiphersuite.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  MEMORY[0x28223BE20](ready - 8);
  v82 = &v72 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x28223BE20](v2 - 8);
  v80 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  MEMORY[0x28223BE20](v4 - 8);
  v78 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v74 = (&v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC48, "~;");
  MEMORY[0x28223BE20](v7 - 8);
  v83 = &v72 - v8;
  v76 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  MEMORY[0x28223BE20](v76);
  v77 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for HandshakeState.ServerHelloState(0);
  MEMORY[0x28223BE20](v88);
  v87 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ImportedPSK(0);
  MEMORY[0x28223BE20](v11 - 8);
  v86 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for PSK(0);
  v13 = MEMORY[0x28223BE20](v85);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v72 - v16;
  v18 = type metadata accessor for GeneralEPSK(0);
  v72 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v72 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC50, "N;");
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v72 - v25;
  v84 = type metadata accessor for SessionTicket(0);
  v75 = *(v84 - 8);
  v27 = MEMORY[0x28223BE20](v84);
  v73 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v72 - v29;
  v31 = type metadata accessor for HandshakeState.ClientHelloState(0);
  MEMORY[0x28223BE20](v31);
  v33 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for HandshakeState(0);
  MEMORY[0x28223BE20](v34);
  v36 = &v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for HandshakeStateMachine(0);
  sub_26C11F050(&v89[*(v37 + 24)], v36, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v41 = v88;
    v89 = v21;
    v83 = v15;
    v42 = v86;
    if (!EnumCaseMultiPayload)
    {
      v50 = type metadata accessor for HandshakeState;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v54 = v87;
      sub_26C11D8DC(v36, v87, type metadata accessor for HandshakeState.ServerHelloState);
      v55 = v54 + *(v41 + 28);
      v51 = *v55;
      v53 = *(v55 + 2);
      v56 = type metadata accessor for HandshakeState.ServerHelloState;
      goto LABEL_22;
    }

    v43 = v36;
    v36 = v33;
    sub_26C11D8DC(v43, v33, type metadata accessor for HandshakeState.ClientHelloState);
    sub_26C0CF314(&v33[*(v31 + 40)], v26, &qword_28047AC50, "N;");
    v44 = v84;
    if ((*(v75 + 48))(v26, 1, v84) != 1)
    {
      sub_26C11D8DC(v26, v30, type metadata accessor for SessionTicket);
      v51 = *&v30[*(v44 + 44)];
      sub_26C11F1F0(v30, type metadata accessor for SessionTicket);
      v57 = type metadata accessor for HandshakeState.ClientHelloState;
      v58 = v36;
LABEL_33:
      sub_26C11F1F0(v58, v57);
      v53 = 0;
      return v51 | (v53 << 16);
    }

    sub_26C0CF5C4(v26, &qword_28047AC50, "N;");
    v45 = *&v36[*(v31 + 44)];
    if (!*(v45 + 16) || (v36[64] & 1) != 0)
    {
LABEL_13:
      v50 = type metadata accessor for HandshakeState.ClientHelloState;
LABEL_17:
      sub_26C11F1F0(v36, v50);
      goto LABEL_18;
    }

    v46 = *(v36 + 14);
    if (*(v46 + 16))
    {
      v47 = *(v46 + 32);
      v30 = ((*(v72 + 80) + 32) & ~*(v72 + 80));
      sub_26C11F050(&v30[v45], v23, type metadata accessor for GeneralEPSK);
      v48 = v17;
      sub_26C11D8DC(v23, v17, type metadata accessor for PSK);
      v49 = swift_getEnumCaseMultiPayload();
      sub_26C11F1F0(v48, type metadata accessor for PSK);
      if (v49 == 1)
      {
        goto LABEL_13;
      }

      if (v47 != 4866)
      {
        v90 = xmmword_26C14CBF0;
        v91 = 2;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        if (qword_28047A760 == -1)
        {
LABEL_41:
          v67 = sub_26C148A9C();
          __swift_project_value_buffer(v67, qword_28047AC70);
          v68 = sub_26C148A7C();
          v69 = sub_26C148FFC();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            *v70 = 0;
            _os_log_impl(&dword_26C0B5000, v68, v69, "first ciphersuite offered does not match KDF of first offered PSK", v70, 2u);
            MEMORY[0x26D69C3A0](v70, -1, -1);
          }

          v50 = type metadata accessor for HandshakeState.ClientHelloState;
          goto LABEL_17;
        }

LABEL_49:
        swift_once();
        goto LABEL_41;
      }

      if (qword_28047A630 == -1)
      {
LABEL_37:
        v64 = v89;
        if (*(v45 + 16))
        {
          v65 = word_280480300;
          sub_26C11F050(&v30[v45], v89, type metadata accessor for GeneralEPSK);
          v66 = v83;
          sub_26C11D8DC(v64, v83, type metadata accessor for PSK);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_26C11F1F0(v66, type metadata accessor for PSK);
          }

          else
          {
            sub_26C11D8DC(v66, v42, type metadata accessor for ImportedPSK);
            v71 = *(v42 + 50);
            sub_26C11F1F0(v42, type metadata accessor for ImportedPSK);
            if (v65 == v71)
            {
              sub_26C11F1F0(v36, type metadata accessor for HandshakeState.ClientHelloState);
              v53 = 0;
              v51 = 4866;
              return v51 | (v53 << 16);
            }
          }

          goto LABEL_13;
        }

        __break(1u);
        goto LABEL_49;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v39 = v77;
      sub_26C11D8DC(v36, v77, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v40 = v83;
      sub_26C0CF314(v39 + *(v76 + 20), v83, &qword_28047AC48, "~;");
      sub_26C11F1F0(v39, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      if ((*(v79 + 48))(v40, 1, v81) == 1)
      {
        sub_26C0CF5C4(v40, &qword_28047AC48, "~;");
LABEL_18:
        v51 = 0;
        v53 = 1;
        return v51 | (v53 << 16);
      }

      v59 = v74;
      sub_26C11F050(v40, v74, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
      v60 = swift_getEnumCaseMultiPayload();
      if (v60)
      {
        if (v60 == 1)
        {
          v51 = *v59;
        }

        else
        {
          v61 = v59;
          v62 = v73;
          sub_26C11D8DC(v61, v73, type metadata accessor for SessionTicket);
          v51 = *(v62 + *(v84 + 44));
          sub_26C11F1F0(v62, type metadata accessor for SessionTicket);
        }
      }

      else
      {
        v51 = *v59;
      }

      v52 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData;
    }

    else
    {
      v40 = v78;
      sub_26C11D8DC(v36, v78, type metadata accessor for HandshakeState.ServerCertificateState);
      v51 = *(v40 + 66);
      v52 = type metadata accessor for HandshakeState.ServerCertificateState;
    }

    goto LABEL_32;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v40 = v80;
    sub_26C11D8DC(v36, v80, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
    v51 = *(v40 + 66);
    v52 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
LABEL_32:
    v57 = v52;
    v58 = v40;
    goto LABEL_33;
  }

  v54 = v82;
  sub_26C11D8DC(v36, v82, type metadata accessor for HandshakeState.ReadyState);
  v51 = *(v54 + 66);
  v53 = *(v54 + 68);
  v56 = type metadata accessor for HandshakeState.ReadyState;
LABEL_22:
  sub_26C11F1F0(v54, v56);
  if (v53)
  {
    v51 = 0;
  }

  return v51 | (v53 << 16);
}

uint64_t HandshakeStateMachine.negotiatedPAKE.getter()
{
  v28[0] = type metadata accessor for HandshakeState.ReadyState(0);
  MEMORY[0x28223BE20](v28[0]);
  v2 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  MEMORY[0x28223BE20](v3);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = (v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (v28 - v10);
  v12 = type metadata accessor for HandshakeState.ServerHelloState(0);
  MEMORY[0x28223BE20](v12);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HandshakeState(0);
  MEMORY[0x28223BE20](v15);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HandshakeStateMachine(0);
  sub_26C11F050(v0 + *(v18 + 24), v17, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      sub_26C11D8DC(v17, v14, type metadata accessor for HandshakeState.ServerHelloState);
      sub_26C0CF314(&v14[*(v12 + 48)], v11, &qword_28047AC40, &unk_26C14D320);
      sub_26C11F1F0(v14, type metadata accessor for HandshakeState.ServerHelloState);
      v22 = type metadata accessor for PAKEClientState(0);
      if ((*(*(v22 - 8) + 48))(v11, 1, v22) == 1)
      {
        v21 = v11;
        goto LABEL_9;
      }

      v23 = *v11;
      v27 = v11;
LABEL_19:
      sub_26C11F1F0(v27, type metadata accessor for PAKEClientState);
      v24 = 0;
      return v23 | (v24 << 16);
    }

LABEL_11:
    sub_26C11F1F0(v17, type metadata accessor for HandshakeState);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_26C11D8DC(v17, v5, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      sub_26C0CF314(&v5[*(v3 + 48)], v9, &qword_28047AC40, &unk_26C14D320);
      sub_26C11F1F0(v5, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v20 = type metadata accessor for PAKEClientState(0);
      if ((*(*(v20 - 8) + 48))(v9, 1, v20) == 1)
      {
        v21 = v9;
LABEL_9:
        sub_26C0CF5C4(v21, &qword_28047AC40, &unk_26C14D320);
LABEL_12:
        v23 = 0;
        v24 = 1;
        return v23 | (v24 << 16);
      }

      v23 = *v9;
      v27 = v9;
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 5)
  {
    goto LABEL_11;
  }

  sub_26C11D8DC(v17, v2, type metadata accessor for HandshakeState.ReadyState);
  v26 = &v2[*(v28[0] + 48)];
  v23 = *v26;
  v24 = v26[2];
  sub_26C11F1F0(v2, type metadata accessor for HandshakeState.ReadyState);
  if (v24)
  {
    v23 = 0;
  }

  return v23 | (v24 << 16);
}

uint64_t HandshakeStateMachine.negotiatedEPSK.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  MEMORY[0x28223BE20](ready);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HandshakeState.ServerHelloState(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HandshakeState(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HandshakeStateMachine(0);
  sub_26C11F050(v0 + *(v13 + 24), v12, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      sub_26C11D8DC(v12, v9, type metadata accessor for HandshakeState.ServerHelloState);
      v15 = v9[*(v7 + 36)];
      v16 = type metadata accessor for HandshakeState.ServerHelloState;
      v17 = v9;
      goto LABEL_10;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      sub_26C11D8DC(v12, v3, type metadata accessor for HandshakeState.ReadyState);
      v15 = v3[*(ready + 52)];
      v16 = type metadata accessor for HandshakeState.ReadyState;
      v17 = v3;
      goto LABEL_10;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_26C11D8DC(v12, v6, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v15 = v6[*(v4 + 40)];
    v16 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
    v17 = v6;
LABEL_10:
    sub_26C11F1F0(v17, v16);
    return v15;
  }

  sub_26C11F1F0(v12, type metadata accessor for HandshakeState);
  return 0;
}

uint64_t HandshakeStateMachine.epskOffered.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  MEMORY[0x28223BE20](ready);
  v27 = &v24 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x28223BE20](v26);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  MEMORY[0x28223BE20](v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HandshakeState.ServerHelloState(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HandshakeState.ClientHelloState(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HandshakeState(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HandshakeStateMachine(0);
  sub_26C11F050(v29 + *(v17 + 24), v16, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_26C11D8DC(v16, v2, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
        v19 = v2[*(v26 + 48)];
        v20 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
        v21 = v2;
      }

      else
      {
        v22 = v27;
        sub_26C11D8DC(v16, v27, type metadata accessor for HandshakeState.ReadyState);
        v19 = *(v22 + *(ready + 56));
        v20 = type metadata accessor for HandshakeState.ReadyState;
        v21 = v22;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_26C11D8DC(v16, v7, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v19 = v7[*(v5 + 52)];
      v20 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      v21 = v7;
    }

    else
    {
      sub_26C11D8DC(v16, v4, type metadata accessor for HandshakeState.ServerCertificateState);
      v19 = v4[*(v25 + 48)];
      v20 = type metadata accessor for HandshakeState.ServerCertificateState;
      v21 = v4;
    }

LABEL_14:
    sub_26C11F1F0(v21, v20);
    return v19;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_26C11D8DC(v16, v13, type metadata accessor for HandshakeState.ClientHelloState);
      v19 = *(*&v13[*(v11 + 44)] + 16) != 0;
      v20 = type metadata accessor for HandshakeState.ClientHelloState;
      v21 = v13;
    }

    else
    {
      sub_26C11D8DC(v16, v10, type metadata accessor for HandshakeState.ServerHelloState);
      v19 = v10[*(v8 + 52)];
      v20 = type metadata accessor for HandshakeState.ServerHelloState;
      v21 = v10;
    }

    goto LABEL_14;
  }

  sub_26C11F1F0(v16, type metadata accessor for HandshakeState);
  return 0;
}

uint64_t HandshakeStateMachine.pakeOffered.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  MEMORY[0x28223BE20](ready);
  v38 = &v33 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x28223BE20](v37);
  v36 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  MEMORY[0x28223BE20](v35);
  v34 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  MEMORY[0x28223BE20](v33);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HandshakeState.ServerHelloState(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v33 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = type metadata accessor for HandshakeState.ClientHelloState(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for HandshakeState(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for HandshakeStateMachine(0);
  sub_26C11F050(v40 + *(v23 + 24), v22, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v29 = v36;
        sub_26C11D8DC(v22, v36, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
        v26 = *(v29 + *(v37 + 52));
        v30 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
      }

      else
      {
        v29 = v38;
        sub_26C11D8DC(v22, v38, type metadata accessor for HandshakeState.ReadyState);
        v26 = *(v29 + *(ready + 60));
        v30 = type metadata accessor for HandshakeState.ReadyState;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_26C11D8DC(v22, v4, type metadata accessor for HandshakeState.EncryptedExtensionsState);
        sub_26C0CF314(&v4[*(v33 + 48)], v11, &qword_28047AC40, &unk_26C14D320);
        sub_26C11F1F0(v4, type metadata accessor for HandshakeState.EncryptedExtensionsState);
        v25 = type metadata accessor for PAKEClientState(0);
        v26 = (*(*(v25 - 8) + 48))(v11, 1, v25) != 1;
        v27 = v11;
        goto LABEL_8;
      }

      v29 = v34;
      sub_26C11D8DC(v22, v34, type metadata accessor for HandshakeState.ServerCertificateState);
      v26 = *(v29 + *(v35 + 52));
      v30 = type metadata accessor for HandshakeState.ServerCertificateState;
    }

    sub_26C11F1F0(v29, v30);
    return v26;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_26C11F1F0(v22, type metadata accessor for HandshakeState);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_26C11D8DC(v22, v7, type metadata accessor for HandshakeState.ServerHelloState);
    sub_26C0CF314(&v7[*(v5 + 48)], v14, &qword_28047AC40, &unk_26C14D320);
    sub_26C11F1F0(v7, type metadata accessor for HandshakeState.ServerHelloState);
    v31 = type metadata accessor for PAKEClientState(0);
    v26 = (*(*(v31 - 8) + 48))(v14, 1, v31) != 1;
    sub_26C0CF5C4(v14, &qword_28047AC40, &unk_26C14D320);
    return v26;
  }

  sub_26C11D8DC(v22, v19, type metadata accessor for HandshakeState.ClientHelloState);
  sub_26C0CF314(&v19[*(v17 + 48)], v16, &qword_28047AC40, &unk_26C14D320);
  sub_26C11F1F0(v19, type metadata accessor for HandshakeState.ClientHelloState);
  v28 = type metadata accessor for PAKEClientState(0);
  v26 = (*(*(v28 - 8) + 48))(v16, 1, v28) != 1;
  v27 = v16;
LABEL_8:
  sub_26C0CF5C4(v27, &qword_28047AC40, &unk_26C14D320);
  return v26;
}

uint64_t HandshakeStateMachine.negotiatedGroup.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  MEMORY[0x28223BE20](ready - 8);
  v56 = &v50 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x28223BE20](v2 - 8);
  v54 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SessionTicket(0);
  v8 = *(v7 - 8);
  v57 = v7;
  v58 = v8;
  MEMORY[0x28223BE20](v7);
  v50 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x28223BE20](v10);
  v51 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC48, "~;");
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v50 - v13;
  v15 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  MEMORY[0x28223BE20](v15);
  v55 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HandshakeState.ServerHelloState(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC50, "N;");
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v50 - v21;
  v23 = type metadata accessor for HandshakeState.ClientHelloState(0);
  MEMORY[0x28223BE20](v23);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for HandshakeState(0);
  MEMORY[0x28223BE20](v26);
  v28 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for HandshakeStateMachine(0);
  sub_26C11F050(v59 + *(v29 + 24), v28, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v32 = v58;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_26C11D8DC(v28, v25, type metadata accessor for HandshakeState.ClientHelloState);
        sub_26C0CF314(&v25[*(v23 + 40)], v22, &qword_28047AC50, "N;");
        v33 = *(v32 + 48);
        v34 = v57;
        if (v33(v22, 1, v57) == 1)
        {
          sub_26C11F1F0(v25, type metadata accessor for HandshakeState.ClientHelloState);
          sub_26C0CF5C4(v22, &qword_28047AC50, "N;");
          return 0;
        }

        v43 = *&v22[*(v34 + 48)];
        sub_26C11F1F0(v22, type metadata accessor for SessionTicket);
        v60 = v43;
        v35 = NamedGroup.metadataDescription.getter();
        v40 = type metadata accessor for HandshakeState.ClientHelloState;
        v41 = v25;
        goto LABEL_31;
      }

      sub_26C11D8DC(v28, v19, type metadata accessor for HandshakeState.ServerHelloState);
      v39 = &v19[*(v17 + 32)];
      if ((v39[2] & 1) == 0)
      {
        v61 = *v39;
        v35 = NamedGroup.metadataDescription.getter();
        v40 = type metadata accessor for HandshakeState.ServerHelloState;
        v41 = v19;
        goto LABEL_31;
      }

      v37 = type metadata accessor for HandshakeState.ServerHelloState;
      v38 = v19;
    }

    else
    {
      v37 = type metadata accessor for HandshakeState;
      v38 = v28;
    }

LABEL_24:
    sub_26C11F1F0(v38, v37);
    return 0;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v31 = v54;
      sub_26C11D8DC(v28, v54, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
      v64 = *(v31 + 68);
      v35 = NamedGroup.metadataDescription.getter();
      v36 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
    }

    else
    {
      v31 = v56;
      sub_26C11D8DC(v28, v56, type metadata accessor for HandshakeState.ReadyState);
      if (*(v31 + 72))
      {
        v42 = type metadata accessor for HandshakeState.ReadyState;
LABEL_23:
        v37 = v42;
        v38 = v31;
        goto LABEL_24;
      }

      v65 = *(v31 + 70);
      v35 = NamedGroup.metadataDescription.getter();
      v36 = type metadata accessor for HandshakeState.ReadyState;
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v31 = v55;
    sub_26C11D8DC(v28, v55, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    sub_26C0CF314(v31 + *(v15 + 20), v14, &qword_28047AC48, "~;");
    if ((*(v52 + 48))(v14, 1, v53) == 1)
    {
      sub_26C11F1F0(v31, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      sub_26C0CF5C4(v14, &qword_28047AC48, "~;");
      return 0;
    }

    v44 = v51;
    sub_26C11F050(v14, v51, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
    v45 = swift_getEnumCaseMultiPayload();
    if (v45)
    {
      if (v45 == 1)
      {
        sub_26C11F1F0(v14, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
        v42 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
        goto LABEL_23;
      }

      v48 = v44;
      v49 = v50;
      sub_26C11D8DC(v48, v50, type metadata accessor for SessionTicket);
      v47 = *(v49 + *(v57 + 48));
      sub_26C11F1F0(v49, type metadata accessor for SessionTicket);
    }

    else
    {
      v47 = *(v44 + 2);
    }

    sub_26C11F1F0(v14, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
    v62 = v47;
    v35 = NamedGroup.metadataDescription.getter();
    v36 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
LABEL_30:
    v40 = v36;
    v41 = v31;
    goto LABEL_31;
  }

  sub_26C11D8DC(v28, v6, type metadata accessor for HandshakeState.ServerCertificateState);
  v63 = *(v6 + 34);
  v35 = NamedGroup.metadataDescription.getter();
  v40 = type metadata accessor for HandshakeState.ServerCertificateState;
  v41 = v6;
LABEL_31:
  sub_26C11F1F0(v41, v40);
  return v35;
}

uint64_t HandshakeStateMachine.earlyDataAccepted.getter()
{
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  MEMORY[0x28223BE20](ready);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HandshakeState(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HandshakeStateMachine(0);
  sub_26C11F050(v0 + *(v16 + 24), v15, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    sub_26C11F1F0(v15, type metadata accessor for HandshakeState);
    return 2;
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_26C11D8DC(v15, v6, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
        v18 = v6[*(v4 + 40)];
        v19 = type metadata accessor for HandshakeState.ServerCertificateVerifyState;
        v20 = v6;
      }

      else
      {
        sub_26C11D8DC(v15, v3, type metadata accessor for HandshakeState.ReadyState);
        v18 = v3[*(ready + 40)];
        v19 = type metadata accessor for HandshakeState.ReadyState;
        v20 = v3;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_26C11D8DC(v15, v12, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v18 = v12[*(v10 + 32)];
      v19 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      v20 = v12;
    }

    else
    {
      sub_26C11D8DC(v15, v9, type metadata accessor for HandshakeState.ServerCertificateState);
      v18 = v9[112];
      v19 = type metadata accessor for HandshakeState.ServerCertificateState;
      v20 = v9;
    }

    sub_26C11F1F0(v20, v19);
  }

  return v18;
}

BOOL HandshakeStateMachine.handshakeComplete.getter()
{
  v1 = type metadata accessor for HandshakeState(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HandshakeStateMachine(0);
  sub_26C11F050(v0 + *(v4 + 24), v3, type metadata accessor for HandshakeState);
  v5 = swift_getEnumCaseMultiPayload() > 5;
  sub_26C11F1F0(v3, type metadata accessor for HandshakeState);
  return v5;
}

BOOL HandshakeStateMachine.handshakeStarted.getter()
{
  v1 = type metadata accessor for HandshakeState(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HandshakeStateMachine(0);
  sub_26C11F050(v0 + *(v4 + 24), v3, type metadata accessor for HandshakeState);
  v5 = swift_getEnumCaseMultiPayload() != 0;
  sub_26C11F1F0(v3, type metadata accessor for HandshakeState);
  return v5;
}

double HandshakeStateMachine.clientRandom.getter@<D0>(uint64_t a1@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = xmmword_26C14A1B0;
  v11 = 0;
  v3 = (v1 + *(type metadata accessor for HandshakeStateMachine(0) + 32));
  v4 = v3[1];
  v7[0] = *v3;
  v7[1] = v4;
  v9[3] = MEMORY[0x277D838B0];
  v9[4] = MEMORY[0x277CC9C18];
  v9[0] = v7;
  v9[1] = &v8;
  __swift_project_boxed_opaque_existential_1(v9, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(v9);
  v5 = v11;
  result = *&v10;
  *a1 = v10;
  *(a1 + 16) = v5;
  return result;
}

void sub_26C11ACDC(uint64_t a1)
{
  v3 = type metadata accessor for HandshakeState(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 104);
  v7 = type metadata accessor for HandshakeStateMachine(0);
  sub_26C11F050(v1 + *(v7 + 24), v5, type metadata accessor for HandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v11 = 0x6548726576726573;
    if (EnumCaseMultiPayload == 1)
    {
      v11 = 0x6548746E65696C63;
    }

    if (EnumCaseMultiPayload)
    {
      v9 = v11;
    }

    else
    {
      v9 = 1701602409;
    }

    if (EnumCaseMultiPayload)
    {
      v10 = 0xEB000000006F6C6CLL;
    }

    else
    {
      v10 = 0xE400000000000000;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v10 = 0x800000026C15A460;
      v9 = 0xD000000000000017;
    }

    else
    {
      v10 = 0xEC00000061746144;
      v9 = 0x726F467964616572;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v9 = 0xD000000000000019;
    }

    else
    {
      v9 = 0xD000000000000011;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v10 = 0x800000026C15A4A0;
    }

    else
    {
      v10 = 0x800000026C15A480;
    }
  }

  sub_26C11F1F0(v5, type metadata accessor for HandshakeState);
  v12 = 0xE800000000000000;
  v13 = 0x64656873696E6966;
  if (v6 != 6)
  {
    v13 = 0xD000000000000010;
    v12 = 0x800000026C15A4C0;
  }

  v14 = 0xEB00000000657461;
  v15 = 0x6369666974726563;
  if (v6 != 4)
  {
    v15 = 0xD000000000000011;
    v14 = 0x800000026C15A4E0;
  }

  if (v6 <= 5)
  {
    v13 = v15;
    v12 = v14;
  }

  v16 = 0x800000026C15A520;
  v17 = 0xD000000000000013;
  if (v6 != 2)
  {
    v17 = 0xD000000000000012;
    v16 = 0x800000026C15A500;
  }

  v18 = 0x6548726576726573;
  if (!v6)
  {
    v18 = 0x6548746E65696C63;
  }

  if (v6 <= 1)
  {
    v17 = v18;
    v16 = 0xEB000000006F6C6CLL;
  }

  if (v6 <= 3)
  {
    v19 = v17;
  }

  else
  {
    v19 = v13;
  }

  if (v6 <= 3)
  {
    v20 = v16;
  }

  else
  {
    v20 = v12;
  }

  if (qword_28047A760 != -1)
  {
    swift_once();
  }

  v21 = sub_26C148A9C();
  __swift_project_value_buffer(v21, qword_28047AC70);

  v22 = sub_26C148A7C();
  v23 = sub_26C14900C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29 = v25;
    *v24 = 136315394;
    v26 = sub_26C0E5DE8(v19, v20, &v29);

    *(v24 + 4) = v26;
    *(v24 + 12) = 2080;
    v27 = sub_26C0E5DE8(v9, v10, &v29);

    *(v24 + 14) = v27;
    _os_log_impl(&dword_26C0B5000, v22, v23, "unexpected message %s in state %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69C3A0](v25, -1, -1);
    MEMORY[0x26D69C3A0](v24, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_26C11B104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26C148E9C();
  sub_26C11F2F0(&qword_281590328, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
  sub_26C0E6678();
  return sub_26C148CEC();
}

void sub_26C11B1BC(uint64_t a1, __int128 *a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, int a6, uint64_t a7)
{
  v108 = a7;
  LODWORD(v114) = a6;
  v123 = a5;
  v133 = a4;
  v119 = a3;
  v104 = type metadata accessor for RawEPSK(0);
  MEMORY[0x28223BE20](v104);
  v110 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for ImportedPSK(0);
  MEMORY[0x28223BE20](v102);
  v103 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for SessionTicket(0);
  v11 = *(v125 - 1);
  MEMORY[0x28223BE20](v125);
  v107 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_26C148E9C();
  v131 = *(v135 - 8);
  v13 = MEMORY[0x28223BE20](v135);
  v126 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v130 = &v102 - v15;
  v16 = sub_26C148B6C();
  v136 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v118 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v129 = &v102 - v19;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v128 = &v102 - v20;
  v111 = type metadata accessor for PSK(0);
  MEMORY[0x28223BE20](v111);
  v22 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for GeneralEPSK(0);
  v109 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v105 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v102 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC50, "N;");
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v102 - v32;
  v34 = sub_26C148BDC();
  v124 = *(v34 - 8);
  v35 = MEMORY[0x28223BE20](v34);
  v134 = &v102 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v132 = &v102 - v37;
  v127 = sub_26C11F2F0(&qword_28047AB38, MEMORY[0x277CC52C8], MEMORY[0x277CC52C0]);
  v38 = sub_26C148E7C();
  if (v38 < 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  v113 = a2;
  v115 = a1;
  if (v38)
  {
    v39 = v38;
    v40 = sub_26C148FCC();
    *(v40 + 16) = v39;
    bzero((v40 + 32), v39);
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
  }

  v41 = *(v123 + 16);
  v42 = *(v11 + 48);
  v43 = v125;
  v122 = v11 + 48;
  v121 = v42;
  v44 = v42(v133, 1, v125);
  v45 = v132;
  v106 = v41;
  v112 = v34;
  v120 = v31;
  if (v41)
  {
    if (v44 == 1)
    {
      sub_26C11F050(v123 + ((*(v109 + 80) + 32) & ~*(v109 + 80)), v27, type metadata accessor for GeneralEPSK);
      sub_26C11D8DC(v27, v22, type metadata accessor for PSK);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v47 = (v124 + 16);
      if (EnumCaseMultiPayload == 1)
      {
        v48 = v110;
        sub_26C11D8DC(v22, v110, type metadata accessor for RawEPSK);
        (*v47)(v45, &v48[*(v104 + 20)], v34);
        v49 = type metadata accessor for RawEPSK;
      }

      else
      {
        v48 = v103;
        sub_26C11D8DC(v22, v103, type metadata accessor for ImportedPSK);
        (*v47)(v45, &v48[*(v102 + 20)], v34);
        v49 = type metadata accessor for ImportedPSK;
      }

      sub_26C11F1F0(v48, v49);
      if (v114)
      {
        v50 = 0x646E696220747865;
      }

      else
      {
        v50 = 0x646E696220706D69;
      }

      v51 = v125;
      goto LABEL_18;
    }
  }

  else if (v44 == 1)
  {
    v50 = 0x646E696220736572;
    *&v139 = v40;

    v51 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
    sub_26C0FF1C4(&qword_28047ABE8, &qword_28047A840, &unk_26C14A530, MEMORY[0x277CC9C28]);
    sub_26C148BAC();
LABEL_18:
    *&v139 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
    v52 = sub_26C11F2F0(&qword_281590328, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
    sub_26C0FF1C4(&qword_28047A850, &qword_28047A840, &unk_26C14A530, MEMORY[0x277CC9C20]);
    v53 = v135;
    sub_26C148CEC();
    v54 = v130;
    sub_26C148B3C();
    v55 = v129;
    v114 = v52;
    sub_26C148B2C();
    v56 = *(v131 + 8);
    v111 = v131 + 8;
    v110 = v56;
    (v56)(v54, v53);
    v57 = sub_26C148E7C();
    sub_26C1372CC(v50, 0xEA00000000007265, v57, v134);
    v58 = v136 + 8;
    v59 = *(v136 + 8);
    v59(v55, v16);
    v60 = v120;
    sub_26C0CF314(v133, v120, &qword_28047AC50, "N;");
    v61 = v121(v60, 1, v51);
    v136 = v58;
    if (v61 == 1)
    {
      sub_26C0CF5C4(v60, &qword_28047AC50, "N;");

      v62 = v115;
      v63 = v126;
      if (v106)
      {
        v64 = v105;
        sub_26C11F050(v123 + ((*(v109 + 80) + 32) & ~*(v109 + 80)), v105, type metadata accessor for GeneralEPSK);
        sub_26C0C3830(&v139);
        v66 = *(&v139 + 1);
        v65 = v139;
        sub_26C11CDA0(v134, v119, v139, *(&v139 + 1), v140, 0, &v139);
        sub_26C0BB9B0(v65, v66);
        sub_26C11F1F0(v64, type metadata accessor for GeneralEPSK);
        v67 = v140;
        v137 = v139;
        v138 = v140;
      }

      else
      {
        v137 = xmmword_26C14A1B0;
        v138 = 0;
        v77 = *(v119 + 80);
        v143 = *(v119 + 64);
        v144 = v77;
        v145 = *(v119 + 96);
        v78 = *(v119 + 16);
        v139 = *v119;
        v140 = v78;
        v79 = *(v119 + 48);
        v141 = *(v119 + 32);
        v142 = v79;
        sub_26C1010B0();
        v67 = 0;
      }
    }

    else
    {

      v68 = v107;
      sub_26C11D8DC(v60, v107, type metadata accessor for SessionTicket);
      sub_26C14891C();
      v70 = v69 * 1000.0;
      if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v70 <= -1.0)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (v70 >= 4294967300.0)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v71 = v70;
      v72 = *(v68 + v125[6]);
      v73 = (v68 + v125[8]);
      v74 = *v73;
      v75 = v73[1];
      v76 = v73[2];
      sub_26C0BBAA4(*v73, v75);
      sub_26C11CDA0(v134, v119, v74, v75, v76, v72 + v71, &v139);
      sub_26C0BB9B0(v74, v75);
      sub_26C11F1F0(v68, type metadata accessor for SessionTicket);
      v67 = v140;
      v137 = v139;
      v138 = v140;
      v62 = v115;
      v63 = v126;
    }

    sub_26C148B3C();
    v80 = *(&v137 + 1) >> 62;
    if ((*(&v137 + 1) >> 62) > 1)
    {
      if (v80 == 2)
      {
        v81 = *(v137 + 24);
      }

      else
      {
        v81 = 0;
      }
    }

    else if (v80)
    {
      v81 = v137 >> 32;
    }

    else
    {
      v81 = BYTE14(v137);
    }

    if (v81 >= v67)
    {
      v82 = sub_26C14889C();
      v84 = v83;
      sub_26C11E5B4(v82, v83, v63);
      sub_26C0BB9B0(v82, v84);
      v85 = v129;
      v86 = v135;
      sub_26C148B2C();
      v87 = sub_26C148E7C();
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A948, &qword_26C14A7F0);
      v89 = *(v88 + 44);
      v90 = v88;
      v125 = v88;
      v133 = v59;
      v91 = v128;
      sub_26C1372CC(0x6661727420652063, 0xEB00000000636966, v87, v62 + v89);
      v92 = sub_26C148E7C();
      sub_26C1372CC(0x616D207078652065, 0xEC00000072657473, v92, v62 + *(v90 + 48));
      v93 = v130;
      sub_26C148B3C();
      v94 = v118;
      sub_26C148B2C();
      (v110)(v93, v86);
      v95 = sub_26C148E7C();
      v96 = v125;
      sub_26C1372CC(0x64657669726564, 0xE700000000000000, v95, v62 + v125[9]);
      v97 = v133;
      v133(v94, v16);
      v97(v85, v16);
      (*(v116 + 8))(v91, v117);
      v98 = v124;
      v99 = v112;
      (*(v124 + 8))(v132, v112);
      (*(v131 + 32))(v62, v126, v86);
      (*(v98 + 32))(v62 + v96[10], v134, v99);
      v100 = v138;
      v101 = v113;
      *v113 = v137;
      *(v101 + 2) = v100;
      return;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_26C0CF314(v133, v33, &qword_28047AC50, "N;");
  if (v121(v33, 1, v43) != 1)
  {
    v50 = 0x646E696220736572;
    (*(v124 + 16))(v45, &v33[v43[9]], v34);
    sub_26C11F1F0(v33, type metadata accessor for SessionTicket);
    v51 = v43;
    goto LABEL_18;
  }

LABEL_40:
  __break(1u);
}

size_t sub_26C11C240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  LODWORD(v83) = a6;
  v81 = a5;
  v82 = a3;
  v93 = a7;
  v94 = a2;
  v9 = sub_26C148E9C();
  v96 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v88 = v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C148B6C();
  v90 = *(v11 - 8);
  v91 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v80 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v75 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  v87 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v78 = v75 - v20;
  v21 = sub_26C148BDC();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v77 = v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v75 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = v75 - v28;
  v95 = v75 - v28;
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A948, &qword_26C14A7F0) + 36);
  v84 = v22;
  v85 = v21;
  v31 = *(v22 + 16);
  v92 = a1;
  v32 = v29;
  v33 = v96;
  v34 = v31(v32, a1 + v30, v21);
  v89 = v16;
  v86 = v19;
  if ((v83 & 1) == 0)
  {
    goto LABEL_10;
  }

  v76 = a4;
  v83 = v9;
  if (qword_28047A770 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v35 = sub_26C148A9C();
    __swift_project_value_buffer(v35, qword_28047AD78);
    v36 = sub_26C148A7C();
    v37 = sub_26C148FFC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_26C0B5000, v36, v37, "authenticating with a psk failed (resumption or external psk)", v38, 2u);
      MEMORY[0x26D69C3A0](v38, -1, -1);
    }

    v39 = sub_26C11F2F0(&qword_28047AB38, MEMORY[0x277CC52C8], MEMORY[0x277CC52C0]);
    result = sub_26C148E7C();
    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    v75[1] = v39;
    v41 = v27;
    v42 = v91;
    if (result)
    {
      v43 = result;
      v44 = sub_26C148FCC();
      *(v44 + 16) = v43;
      bzero((v44 + 32), v43);
    }

    else
    {
      v44 = MEMORY[0x277D84F90];
    }

    v97 = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
    sub_26C0FF1C4(&qword_28047ABE8, &qword_28047A840, &unk_26C14A530, MEMORY[0x277CC9C28]);
    sub_26C148BAC();
    v97 = v44;
    sub_26C11F2F0(&qword_281590328, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
    sub_26C0FF1C4(&qword_28047A850, &qword_28047A840, &unk_26C14A530, MEMORY[0x277CC9C20]);
    v45 = v78;
    v9 = v83;
    sub_26C148CEC();

    v46 = v88;
    sub_26C148B3C();
    sub_26C148B2C();
    v33 = v96;
    (*(v96 + 8))(v46, v9);
    v47 = sub_26C148E7C();
    v27 = v77;
    sub_26C1372CC(0x64657669726564, 0xE700000000000000, v47, v77);
    (*(v90 + 8))(v15, v42);
    (*(v87 + 8))(v45, v89);
    v49 = v84;
    v48 = v85;
    v50 = *(v84 + 8);
    v50(v41, v85);
    v51 = v95;
    v50(v95, v48);
    v34 = (*(v49 + 32))(v51, v27, v48);
    a4 = v76;
LABEL_10:
    MEMORY[0x28223BE20](v34);
    v75[-2] = v94;
    sub_26C148B8C();
    (*(v33 + 16))(v93, v92, v9);
    v52 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      v53 = v81;
      v54 = v82;
      if (v52 == 2)
      {
        v55 = *(v82 + 24);
      }

      else
      {
        v55 = 0;
      }
    }

    else
    {
      v53 = v81;
      v54 = v82;
      if (v52)
      {
        v55 = v82 >> 32;
      }

      else
      {
        v55 = BYTE6(a4);
      }
    }

    if (v55 >= v53)
    {
      v56 = sub_26C14889C();
      v58 = v57;
      sub_26C0BB9B0(v54, a4);
      sub_26C0BBAA4(v56, v58);
      v59 = v93;
      sub_26C11E5B4(v56, v58, v93);
      sub_26C0BB9B0(v56, v58);
      sub_26C0BB9B0(v56, v58);
      v83 = sub_26C11F2F0(&qword_281590328, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
      sub_26C148B2C();
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9C8, &qword_26C14D2A0);
      v61 = *(v60 + 40);
      v82 = v60;
      sub_26C11F2F0(&qword_28047AB38, MEMORY[0x277CC52C8], MEMORY[0x277CC52C0]);
      v62 = v91;
      v63 = sub_26C148E7C();
      v64 = v96;
      v65 = v86;
      v79 = v15;
      sub_26C1372CC(0x6172742073682063, 0xEC00000063696666, v63, v59 + v61);
      v66 = *(v60 + 44);
      v67 = sub_26C148E7C();
      sub_26C1372CC(0x6172742073682073, 0xEC00000063696666, v67, v59 + v66);
      v68 = v88;
      sub_26C148B3C();
      v69 = v80;
      sub_26C148B2C();
      (*(v64 + 8))(v68, v9);
      v70 = *(v82 + 36);
      v71 = sub_26C148E7C();
      sub_26C1372CC(0x64657669726564, 0xE700000000000000, v71, v59 + v70);
      sub_26C0CF5C4(v92, &qword_28047A948, &qword_26C14A7F0);
      v72 = *(v90 + 8);
      v72(v69, v62);
      v72(v79, v62);
      (*(v87 + 8))(v65, v89);
      v73 = v85;
      v74 = *(v84 + 8);
      v74(v95, v85);
      return (v74)(v94, v73);
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t sub_26C11CC58@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    v7 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v7 == 2)
      {
        a2 = *(a2 + 16);
        v8 = *(v5 + 24);
      }

      else
      {
        a2 = 0;
        v8 = 0;
      }
    }

    else
    {
      if (v7)
      {
        a2 = a2;
      }

      else
      {
        a2 = 0;
      }

      if (v7)
      {
        v8 = v5 >> 32;
      }

      else
      {
        v8 = BYTE6(a3);
      }
    }

    v9 = -result;
    v10 = sub_26C0DE118(v8, a2, v5, a3);
    if (v10 > 0 || v10 <= v9)
    {
      v11 = sub_26C0DE1CC(v8, v9, v5, a3);
      if (v7 > 1)
      {
        v12 = 0;
        if (v7 == 2)
        {
          v12 = *(v5 + 16);
        }
      }

      else if (v7)
      {
        v12 = v5;
      }

      else
      {
        v12 = 0;
      }

      if (v11 < v12)
      {
        __break(1u);
      }
    }

    v13 = sub_26C14889C();
    v15 = v14;
    result = sub_26C0BB9B0(v5, a3);
    *a4 = v13;
    a4[1] = v15;
  }

  return result;
}

uint64_t sub_26C11CDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W6>, uint64_t a7@<X8>)
{
  v103 = a1;
  v87 = a7;
  v12 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  v106 = *(v13 - 8);
  v107 = v13;
  MEMORY[0x28223BE20](v13);
  v105 = &v85 - v14;
  v15 = sub_26C148BDC();
  v97 = *(v15 - 8);
  v98 = v15;
  MEMORY[0x28223BE20](v15);
  v109 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26C148E9C();
  v101 = *(v17 - 8);
  v102 = v17;
  MEMORY[0x28223BE20](v17);
  v100 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26C148B6C();
  v93 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v108 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_26C11F2F0(&qword_28047AB38, MEMORY[0x277CC52C8], MEMORY[0x277CC52C0]);
  v112 = v19;
  v22 = sub_26C148E7C();
  *&v125[0] = sub_26C11F250(v22);
  *(&v125[0] + 1) = v23;
  sub_26C11E290(v125, 0);
  v99 = 0;
  v111 = *(&v125[0] + 1);
  v24 = *&v125[0];
  v25 = *(&v125[0] + 1) >> 62;
  v26 = v21;
  if ((*(&v125[0] + 1) >> 62) > 1)
  {
    if (v25 == 2)
    {
      v12 = *(*&v125[0] + 16);
    }
  }

  else if (v25)
  {
    v12 = SLODWORD(v125[0]);
  }

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A910, &qword_26C14A7B8);
  v27 = swift_allocObject();
  v113 = xmmword_26C14A550;
  *(v27 + 16) = xmmword_26C14A550;
  *(v27 + 32) = a3;
  *(v27 + 40) = a4;
  v95 = a5;
  *(v27 + 48) = a5;
  v96 = a6;
  *(v27 + 56) = a6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A908, &qword_26C14A7B0);
  v28 = swift_allocObject();
  *(v28 + 16) = v113;
  v29 = v111;
  *(v28 + 32) = v24;
  *(v28 + 40) = v29;
  *(v28 + 48) = v12;
  v124 = 0;
  v30 = v24;
  v31 = *(a2 + 96);
  v94 = a3;
  sub_26C0BBAA4(a3, a4);
  v104 = v30;
  sub_26C0BBAA4(v30, v29);
  v110 = v27;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v92 = a4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v31 = sub_26C0CD87C(0, *(v31 + 2) + 1, 1, v31);
  }

  v34 = *(v31 + 2);
  v33 = *(v31 + 3);
  if (v34 >= v33 >> 1)
  {
    v31 = sub_26C0CD87C((v33 > 1), v34 + 1, 1, v31);
  }

  *(v31 + 2) = v34 + 1;
  v35 = &v31[88 * v34];
  *(v35 + 4) = v110;
  *(v35 + 5) = v28;
  v35[48] = v124;
  v35[112] = -96;
  *(a2 + 96) = v31;
  v122 = xmmword_26C14A1B0;
  v123 = 0;
  v36 = *(a2 + 80);
  v125[4] = *(a2 + 64);
  v125[5] = v36;
  v126 = v31;
  v37 = *(a2 + 16);
  v125[0] = *a2;
  v125[1] = v37;
  v38 = *(a2 + 48);
  v125[2] = *(a2 + 32);
  v125[3] = v38;
  sub_26C1010B0();
  if (qword_28047A770 != -1)
  {
    swift_once();
  }

  v39 = sub_26C148A9C();
  __swift_project_value_buffer(v39, qword_28047AD78);
  v40 = sub_26C148A7C();
  v41 = sub_26C148FFC();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = a2;
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    *(v43 + 4) = sub_26C148E7C() + 3;
    _os_log_impl(&dword_26C0B5000, v40, v41, "bindersarray length should be %ld", v43, 0xCu);
    v44 = v43;
    a2 = v42;
    MEMORY[0x26D69C3A0](v44, -1, -1);
  }

  v45 = *(&v122 + 1) >> 62;
  if ((*(&v122 + 1) >> 62) > 1)
  {
    if (v45 != 2)
    {
      goto LABEL_22;
    }

    v46 = *(v122 + 24);
  }

  else
  {
    if (!v45)
    {
      goto LABEL_22;
    }

    v46 = v122 >> 32;
  }

  if (v46 < 0)
  {
    __break(1u);
  }

LABEL_22:
  v86 = a2;
  v89 = v28;
  v47 = sub_26C14889C();
  v49 = v48;
  v50 = sub_26C148E7C();
  sub_26C11CC58(v50 + 3, v47, v49, &v114);
  v52 = *(&v114 + 1);
  v51 = v114;
  sub_26C11F2F0(&qword_281590328, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
  v53 = v100;
  v54 = v102;
  sub_26C148B3C();
  sub_26C0BBAA4(v51, v52);
  v55 = v26;
  sub_26C11E5B4(v51, v52, v53);
  v99 = v51;
  v88 = v52;
  sub_26C0BB9B0(v51, v52);
  sub_26C148B2C();
  (*(v101 + 8))(v53, v54);
  v56 = sub_26C148E7C();
  v57 = v109;
  v58 = sub_26C136F6C(0x64656873696E6966, 0xE800000000000000, MEMORY[0x277D84F90], v56, v109);
  MEMORY[0x28223BE20](v58);
  *(&v85 - 2) = v57;
  sub_26C11F2F0(&qword_28047A9D0, MEMORY[0x277CC52C8], MEMORY[0x277CC52B8]);
  v59 = v105;
  v60 = v107;
  sub_26C14880C();
  *(&v115 + 1) = v60;
  v61 = sub_26C0FF1C4(&qword_28047AB40, &qword_28047AB18, &unk_26C14C110, MEMORY[0x277CC53C0]);
  *&v116 = v61;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v114);
  v63 = v106;
  (*(v106 + 16))(boxed_opaque_existential_1, v59, v60);
  __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
  sub_26C14880C();
  (*(v63 + 8))(v59, v60);
  v64 = v120;
  v65 = v121;
  __swift_destroy_boxed_opaque_existential_1(&v114);
  v66 = v65 >> 62;
  if ((v65 >> 62) > 1)
  {
    if (v66 == 2)
    {
      v67 = *(v64 + 16);
      sub_26C0BB9B0(v104, v111);
      goto LABEL_28;
    }
  }

  else if (v66)
  {
    sub_26C0BB9B0(v104, v111);
    v67 = v64;
    goto LABEL_28;
  }

  sub_26C0BB9B0(v104, v111);
  v67 = 0;
LABEL_28:
  *&v114 = v64;
  *(&v114 + 1) = v65;
  *&v115 = v67;
  v68 = *(&v122 + 1) >> 62;
  if ((*(&v122 + 1) >> 62) > 1)
  {
    if (v68 == 2)
    {
      v69 = *(v122 + 24);
      if (v66 <= 1)
      {
LABEL_39:
        if (v66)
        {
          v70 = v64 >> 32;
        }

        else
        {
          v70 = BYTE6(v65);
        }

        goto LABEL_43;
      }
    }

    else
    {
      v69 = 0;
      if (v66 <= 1)
      {
        goto LABEL_39;
      }
    }
  }

  else if (v68)
  {
    v69 = v122 >> 32;
    if (v66 <= 1)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v69 = BYTE14(v122);
    if (v66 <= 1)
    {
      goto LABEL_39;
    }
  }

  if (v66 == 2)
  {
    v70 = *(v64 + 24);
  }

  else
  {
    v70 = 0;
  }

LABEL_43:
  v71 = __OFSUB__(v70, v67);
  v72 = v70 - v67;
  if (v71)
  {
    __break(1u);
  }

  else
  {
    v52 = v126;
    v73 = v69 - v72;
    sub_26C0BBAA4(v64, v65);
    sub_26C0DEB70(&v114, v73);
    sub_26C0BB9B0(v114, *(&v114 + 1));
    v55 = *(v52 + 2);
    v66 = swift_allocObject();
    *(v66 + 16) = v113;
    v75 = v94;
    v74 = v95;
    v76 = v92;
    *(v66 + 32) = v94;
    *(v66 + 40) = v76;
    *(v66 + 48) = v74;
    *(v66 + 56) = v96;
    v61 = swift_allocObject();
    *(v61 + 16) = v113;
    *(v61 + 32) = v64;
    *(v61 + 40) = v65;
    *(v61 + 48) = v67;
    sub_26C0BBAA4(v75, v76);
    sub_26C0BBAA4(v64, v65);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_45;
    }
  }

  v52 = sub_26C11E4F8(v52);
LABEL_45:
  sub_26C0BB9B0(v99, v88);

  LOBYTE(v120) = 0;

  (*(v93 + 8))(v108, v112);
  result = (*(v97 + 8))(v109, v98);
  if (v55)
  {
    if (v55 <= *(v52 + 2))
    {
      v78 = &v52[88 * v55];
      v79 = *(v78 - 40);
      v114 = *(v78 - 56);
      v115 = v79;
      v80 = *(v78 - 24);
      v81 = *(v78 - 8);
      v82 = *(v78 + 8);
      v119 = v78[24];
      v117 = v81;
      v118 = v82;
      v116 = v80;
      *(v78 - 7) = v66;
      *(v78 - 6) = v61;
      *(v78 - 40) = v120;
      v78[24] = -96;
      sub_26C0BE468(&v114);
      result = sub_26C0BB9B0(v64, v65);
      v83 = v87;
      *(v86 + 96) = v52;
      v84 = v123;
      *v83 = v122;
      *(v83 + 16) = v84;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C11D848(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26C11D8AC@<X0>(uint64_t (*a1)(void)@<X0>, _WORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_26C11D8DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C11D97C(_WORD *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  sub_26C1491AC();
  sub_26C1491DC();
  v12 = sub_26C14920C();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + 2 * v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_26C11DCE4(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_26C11DA9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_26C14906C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 2 * (v16 | (v8 << 6)));
      sub_26C1491AC();
      sub_26C1491DC();
      result = sub_26C14920C();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 2 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_26C11DCE4(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26C11DA9C(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      result = sub_26C11DE54(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    sub_26C11DF84(v8 + 1, a4, a5);
  }

  v11 = *v6;
  sub_26C1491AC();
  sub_26C1491DC();
  result = sub_26C14920C();
  v12 = -1 << *(v11 + 32);
  a2 = result & ~v12;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v11 + 48) + 2 * a2) != v7)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 2 * a2) = v7;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26C14913C();
  __break(1u);
  return result;
}

void *sub_26C11DE54(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_26C14905C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 2 * v16) = *(*(v4 + 48) + 2 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_26C11DF84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_26C14906C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 2 * (v15 | (v8 << 6)));
      sub_26C1491AC();
      sub_26C1491DC();
      result = sub_26C14920C();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 2 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

uint64_t *sub_26C11E1C8@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_26C13ECD0(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_26C1487FC();
      swift_allocObject();
      v8 = sub_26C1487AC();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_26C14885C();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t *sub_26C11E290(uint64_t *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v22 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_26C0BB9B0(v5, v4);
      __b = v5;
      v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_26C14A1B0;
      sub_26C0BB9B0(0, 0xC000000000000000);
      result = sub_26C11E50C(&__b, v2);
      v7 = __b;
      v8 = v21 | 0x4000000000000000;
    }

    else
    {
      __c = a2;
      sub_26C0BB9B0(v5, v4);
      __b = v5;
      LOWORD(v21) = v4;
      BYTE2(v21) = BYTE2(v4);
      BYTE3(v21) = BYTE3(v4);
      BYTE4(v21) = BYTE4(v4);
      BYTE5(v21) = BYTE5(v4);
      BYTE6(v21) = BYTE6(v4);
      result = memset(&__b, __c, BYTE6(v4));
      v7 = __b;
      v8 = v21 | ((WORD2(v21) | (BYTE6(v21) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    return result;
  }

  if (v6 != 2)
  {
    return result;
  }

  sub_26C0BB9B0(v5, v4);
  __b = v5;
  v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_26C14A1B0;
  sub_26C0BB9B0(0, 0xC000000000000000);
  sub_26C14881C();
  v9 = v21;
  v10 = *(__b + 16);
  v11 = *(__b + 24);
  result = sub_26C1487BC();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = sub_26C1487EC();
  v14 = v10 - v13;
  if (__OFSUB__(v10, v13))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v15 = __OFSUB__(v11, v10);
  v16 = v11 - v10;
  if (v15)
  {
    goto LABEL_16;
  }

  v17 = sub_26C1487DC();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  result = memset(v12 + v14, v2, v18);
  *v3 = __b;
  v3[1] = v9 | 0x8000000000000000;
  return result;
}

uint64_t sub_26C11E50C(int *a1, int a2)
{
  result = sub_26C14882C();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_26C1487BC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_26C1487EC();
  v8 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6 - v5;
  v10 = sub_26C1487DC();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  memset((v7 + v8), a2, v11);
}

uint64_t sub_26C11E5B4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_26C148E9C();
      sub_26C11F2F0(&qword_281590328, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
      return sub_26C148B1C();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_26C11E794(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_26C11E794(v5, v6);
  }

  sub_26C148E9C();
  sub_26C11F2F0(&qword_281590328, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
  return sub_26C148B1C();
}

uint64_t sub_26C11E794(uint64_t a1, uint64_t a2)
{
  result = sub_26C1487BC();
  if (!result || (result = sub_26C1487EC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_26C1487DC();
      sub_26C148E9C();
      sub_26C11F2F0(&qword_281590328, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
      return sub_26C148B1C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C11E874(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26C14912C() & 1;
  }
}

uint64_t sub_26C11E8F4(uint64_t a1)
{
  result = type metadata accessor for HandshakeState(319);
  if (v2 <= 0x3F)
  {
    result = sub_26C11E9A8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_26C11E9A8()
{
  result = qword_281591F50;
  if (!qword_281591F50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281591F50);
  }

  return result;
}

uint64_t sub_26C11EA2C(uint64_t a1)
{
  result = type metadata accessor for HandshakeStateMachine(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ServerHandshakeStateMachine(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26C11EAA8(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_26C11EB04(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_26C11EC84(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
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
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_26C11EEC8@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_26C14909C();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C11EF18(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
  v10 = sub_26C0FF1C4(&qword_28047ABE8, &qword_28047A840, &unk_26C14A530, MEMORY[0x277CC9C28]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_26C13EA50(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_26C11F050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_26C11F168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_26C0D32AC(sub_26C11F1D0, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_26C11F1F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26C11F250(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_26C13ECB0(result);
    }

    else
    {
      sub_26C1487FC();
      swift_allocObject();
      sub_26C1487CC();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_26C14885C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_26C11F2F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SessionTicket(uint64_t a1)
{
  result = qword_281591DD0;
  if (!qword_281591DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26C11F3DC(uint64_t a1)
{
  sub_26C14896C();
  if (v1 <= 0x3F)
  {
    sub_26C148BDC();
    if (v2 <= 0x3F)
    {
      sub_26C11F4C0();
      if (v3 <= 0x3F)
      {
        type metadata accessor for PeerCertificateBundle(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26C11F4C0()
{
  if (!qword_281592488[0])
  {
    v0 = sub_26C14902C();
    if (!v1)
    {
      atomic_store(v0, qword_281592488);
    }
  }
}

uint64_t sub_26C11F510(char *a1, char *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a2 - a1;
  if (!a1)
  {
    v2 = 0;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v8 = bswap64(v2);
  v5 = MEMORY[0x277D838B0];
  v6 = MEMORY[0x277CC9C18];
  v11 = MEMORY[0x277D838B0];
  v12 = MEMORY[0x277CC9C18];
  v9 = &v8;
  v10 = &v9;
  __swift_project_boxed_opaque_existential_1(&v9, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v9);
  v11 = v5;
  v12 = v6;
  v9 = a1;
  v10 = a2;
  __swift_project_boxed_opaque_existential_1(&v9, v5);
  sub_26C14888C();
  return __swift_destroy_boxed_opaque_existential_1(&v9);
}

uint64_t sub_26C11F5FC()
{
  v27 = *MEMORY[0x277D85DE8];
  v25 = xmmword_26C14A1B0;
  v26 = 0;
  sub_26C14890C();
  v18 = bswap64(v1);
  v2 = MEMORY[0x277D838B0];
  v3 = MEMORY[0x277CC9C18];
  v23 = MEMORY[0x277D838B0];
  v24 = MEMORY[0x277CC9C18];
  v21 = &v18;
  *&v22 = &v19;
  __swift_project_boxed_opaque_existential_1(&v21, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v21);
  v4 = type metadata accessor for SessionTicket(0);
  LODWORD(v18) = bswap32(*(v0 + v4[5]));
  v23 = v2;
  v24 = v3;
  v21 = &v18;
  *&v22 = &v18 + 4;
  __swift_project_boxed_opaque_existential_1(&v21, v2);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v21);
  LODWORD(v18) = bswap32(*(v0 + v4[6]));
  v23 = v2;
  v24 = v3;
  v21 = &v18;
  *&v22 = &v18 + 4;
  __swift_project_boxed_opaque_existential_1(&v21, v2);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v21);
  v5 = v0 + v4[7];
  v6 = *v5;
  v21 = v6;
  v22 = *(v5 + 8);
  v7 = v22;
  sub_26C0BBAA4(v6, v22);
  sub_26C1201BC(&v21);
  sub_26C0BB9B0(v6, v7);
  v8 = v0 + v4[8];
  v9 = *v8;
  v21 = v9;
  v22 = *(v8 + 8);
  v10 = v22;
  sub_26C0BBAA4(v9, v22);
  sub_26C1201BC(&v21);
  sub_26C0BB9B0(v9, v10);
  v20 = &v25;
  sub_26C148B8C();
  LODWORD(v18) = bswap32(*(v0 + v4[10]));
  v23 = v2;
  v24 = v3;
  v21 = &v18;
  *&v22 = &v18 + 4;
  __swift_project_boxed_opaque_existential_1(&v21, v2);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v21);
  LOWORD(v18) = bswap32(*(v0 + v4[11])) >> 16;
  v23 = v2;
  v24 = v3;
  v21 = &v18;
  *&v22 = &v18 + 2;
  __swift_project_boxed_opaque_existential_1(&v21, v2);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v21);
  LOWORD(v18) = bswap32(*(v0 + v4[12])) >> 16;
  v23 = v2;
  v24 = v3;
  v21 = &v18;
  *&v22 = &v18 + 2;
  __swift_project_boxed_opaque_existential_1(&v21, v2);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v21);
  v11 = (v0 + v4[13]);
  v12 = v11[1];
  if (v12)
  {
    v13 = *v11;
    LOBYTE(v18) = -1;
    v23 = v2;
    v24 = v3;
    v21 = &v18;
    *&v22 = &v18 + 1;
    __swift_project_boxed_opaque_existential_1(&v21, v2);

    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(&v21);
    sub_26C0D7104(v13, v12);
  }

  else
  {
    LOBYTE(v18) = 0;
    v23 = v2;
    v24 = v3;
    v21 = &v18;
    *&v22 = &v18 + 1;
    __swift_project_boxed_opaque_existential_1(&v21, v2);
    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(&v21);
  }

  sub_26C0D1520(v0 + v4[14]);
  v14 = *(&v25 + 1) >> 62;
  if ((*(&v25 + 1) >> 62) > 1)
  {
    if (v14 == 2)
    {
      v15 = *(v25 + 24);
    }

    else
    {
      v15 = 0;
    }
  }

  else if (v14)
  {
    v15 = v25 >> 32;
  }

  else
  {
    v15 = BYTE14(v25);
  }

  if (v15 < v26)
  {
    __break(1u);
  }

  v16 = sub_26C14889C();
  sub_26C0BB9B0(v25, *(&v25 + 1));
  return v16;
}

uint64_t sub_26C11F9F4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v75 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC58, &qword_26C14D288);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v62 - v8;
  v10 = type metadata accessor for PeerCertificateBundle(0);
  v76 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_26C148BDC();
  v13 = MEMORY[0x28223BE20](v83);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v62 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v62 - v19;
  v21 = 0;
  v80 = a1;
  v81 = a2;
  v22 = a2 >> 62;
  v24 = v23;
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v21 = *(a1 + 16);
    }
  }

  else if (v22)
  {
    v21 = a1;
  }

  v82 = v21;
  v74 = sub_26C136A68();
  if (v25)
  {
    goto LABEL_38;
  }

  v73 = sub_26C13675C();
  if ((v73 & 0x100000000) != 0)
  {
    goto LABEL_38;
  }

  v72 = sub_26C13675C();
  if ((v72 & 0x100000000) != 0)
  {
    goto LABEL_38;
  }

  v26 = sub_26C136A68();
  if (v27)
  {
    goto LABEL_38;
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  sub_26C0DE248(v26, &v78);
  if (*(&v78 + 1) >> 60 != 15)
  {
    v70 = v78;
    v71 = v79;
    result = sub_26C136A68();
    if (v29)
    {
LABEL_15:
      v31 = *(&v70 + 1);
      v30 = v70;
LABEL_37:
      sub_26C0BB344(v30, v31);
      goto LABEL_38;
    }

    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      sub_26C0DE248(result, &v78);
      if (*(&v78 + 1) >> 60 == 15)
      {
        goto LABEL_15;
      }

      v68 = v78;
      v69 = v79;
      result = sub_26C136A68();
      if (v32)
      {
        goto LABEL_36;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        result = sub_26C0DE248(result, &v78);
        v33 = *(&v78 + 1);
        if (*(&v78 + 1) >> 60 != 15)
        {
          v34 = *(&v78 + 1) >> 62;
          if ((*(&v78 + 1) >> 62) > 1)
          {
            if (v34 == 2)
            {
              v35 = *(v78 + 24);
            }

            else
            {
              v35 = 0;
            }
          }

          else if (v34)
          {
            v35 = v78 >> 32;
          }

          else
          {
            v35 = BYTE14(v78);
          }

          if (v35 >= v79)
          {
            v66 = v78;
            v67 = v79;
            *&v78 = sub_26C14889C();
            *(&v78 + 1) = v36;
            sub_26C148BAC();
            sub_26C0BB344(v66, v33);
            v67 = v24;
            v37 = v24 + 32;
            v38 = *(v24 + 32);
            v39 = v15;
            v40 = v83;
            v38(v18, v39, v83);
            v66 = v37;
            v65 = v38;
            v38(v20, v18, v40);
            v41 = sub_26C13675C();
            if ((v41 & 0x100000000) != 0)
            {
              (*(v67 + 8))(v20, v40);
              goto LABEL_36;
            }

            v42 = v67;
            v64 = v41;
            v43 = sub_26C1365D4();
            if ((v43 & 0x10000) != 0)
            {
              (*(v42 + 8))(v20, v40);
              goto LABEL_36;
            }

            LOWORD(v18) = v43;
            v44 = sub_26C1365D4();
            if ((v44 & 0x10000) != 0)
            {
              goto LABEL_33;
            }

            LOWORD(v15) = v44;
            v45 = sub_26C1368E8();
            if ((v45 & 0x100) != 0)
            {
              goto LABEL_33;
            }

            if (v45)
            {
              v62 = sub_26C0D7260(v45);
              v63 = v46;
              if (!v46)
              {
LABEL_33:
                (*(v42 + 8))(v20, v83);
                goto LABEL_36;
              }
            }

            else
            {
              v62 = 0;
              v63 = 0;
            }

            v51 = v77;
            sub_26C0D1800(&v78, v9);
            if (v51)
            {
              sub_26C0BB344(v70, *(&v70 + 1));
              sub_26C0BB344(v68, *(&v68 + 1));
              sub_26C120568(v62, v63);
              (*(v42 + 8))(v20, v83);
              result = sub_26C0BB9B0(v80, v81);
              v52 = v79;
              *a3 = v78;
              *(a3 + 16) = v52;
              return result;
            }

            if ((*(v76 + 48))(v9, 1, v10) == 1)
            {
              (*(v42 + 8))(v20, v83);
              sub_26C0BB344(v70, *(&v70 + 1));
              sub_26C0BB344(v68, *(&v68 + 1));
              sub_26C120568(v62, v63);
              sub_26C12057C(v9);
              goto LABEL_38;
            }

LABEL_49:
            v53 = type metadata accessor for SessionTicket(0);
            v54 = v75;
            v55 = (v75 + v53[13]);
            sub_26C1205E4(v9, v12);
            sub_26C1488FC();
            sub_26C0BB9B0(v80, v81);
            v56 = v72;
            *(v54 + v53[5]) = v73;
            *(v54 + v53[6]) = v56;
            v57 = (v54 + v53[7]);
            v58 = *(&v70 + 1);
            *v57 = v70;
            v57[1] = v58;
            v57[2] = v71;
            v59 = (v54 + v53[8]);
            v60 = *(&v68 + 1);
            *v59 = v68;
            v59[1] = v60;
            v59[2] = v69;
            v65(v54 + v53[9], v20, v83);
            *(v54 + v53[10]) = v64;
            *(v54 + v53[11]) = v18;
            *(v54 + v53[12]) = v15;
            v61 = v63;
            *v55 = v62;
            v55[1] = v61;
            return sub_26C1205E4(v12, v54 + v53[14]);
          }

LABEL_52:
          __break(1u);
          return result;
        }

LABEL_36:
        sub_26C0BB344(v70, *(&v70 + 1));
        v31 = *(&v68 + 1);
        v30 = v68;
        goto LABEL_37;
      }
    }

    __break(1u);
    goto LABEL_52;
  }

LABEL_38:
  if (qword_28047A768 != -1)
  {
    swift_once();
  }

  v47 = sub_26C148A9C();
  __swift_project_value_buffer(v47, qword_28047AD38);
  v48 = sub_26C148A7C();
  v49 = sub_26C14900C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_26C0B5000, v48, v49, "Unable to parse decrypted session ticket", v50, 2u);
    MEMORY[0x26D69C3A0](v50, -1, -1);
  }

  *a3 = xmmword_26C14A910;
  *(a3 + 16) = 2;
  v78 = xmmword_26C14A910;
  LOBYTE(v79) = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  return sub_26C0BB9B0(v80, v81);
}

uint64_t sub_26C120138()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AD38);
  __swift_project_value_buffer(v0, qword_28047AD38);
  return sub_26C148A8C();
}

uint64_t sub_26C1201BC(uint64_t *a1)
{
  v15[5] = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v1 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = BYTE6(v2);
    if (v4)
    {
      v5 = v1 >> 32;
    }
  }

  v6 = __OFSUB__(v5, v3);
  v7 = v5 - v3;
  if (v6)
  {
    __break(1u);
    goto LABEL_24;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v14 = bswap64(v7);
  v15[3] = MEMORY[0x277D838B0];
  v15[4] = MEMORY[0x277CC9C18];
  v15[0] = &v14;
  v15[1] = v15;
  __swift_project_boxed_opaque_existential_1(v15, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(v15);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v9 = *(v1 + 16);
      v8 = *(v1 + 24);
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }
  }

  else
  {
    if (v4)
    {
      v8 = v1 >> 32;
    }

    else
    {
      v8 = BYTE6(v2);
    }

    if (v4)
    {
      v9 = v1;
    }

    else
    {
      v9 = 0;
    }
  }

  if (v8 < v3 || v8 < v9)
  {
LABEL_25:
    __break(1u);
  }

  v10 = sub_26C14889C();
  v12 = v11;
  sub_26C1488CC();
  return sub_26C0BB9B0(v10, v12);
}

uint64_t sub_26C12032C(uint64_t a1, uint64_t a2)
{
  if ((sub_26C14894C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SessionTicket(0);
  if (*(a1 + v4[5]) != *(a2 + v4[5]))
  {
    return 0;
  }

  v5 = v4;
  if (*(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v6 = v4[7];
  v22 = *(a1 + v6);
  v23 = *(a1 + v6 + 8);
  v7 = a2 + v6;
  v20 = *v7;
  v21 = *(v7 + 8);
  sub_26C0BBAA4(v22, v23);
  sub_26C0BBAA4(v20, v21);
  v8 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v22, &v20);
  sub_26C0BB9B0(v20, v21);
  sub_26C0BB9B0(v22, v23);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v5[8];
  v22 = *(a1 + v9);
  v23 = *(a1 + v9 + 8);
  v10 = a2 + v9;
  v20 = *v10;
  v11 = v20;
  v21 = *(v10 + 8);
  v19 = v21;
  sub_26C0BBAA4(v22, v23);
  sub_26C0BBAA4(v11, v19);
  LOBYTE(v11) = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v22, &v20);
  sub_26C0BB9B0(v20, v21);
  sub_26C0BB9B0(v22, v23);
  if ((v11 & 1) == 0 || (MEMORY[0x26D69B8D0](a1 + v5[9], a2 + v5[9]) & 1) == 0 || *(a1 + v5[10]) != *(a2 + v5[10]) || *(a1 + v5[11]) != *(a2 + v5[11]) || *(a1 + v5[12]) != *(a2 + v5[12]))
  {
    return 0;
  }

  v12 = v5[13];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  if (v14)
  {
    if (v16 && (*v13 == *v15 && v14 == v16 || (sub_26C14912C() & 1) != 0))
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v16)
  {
    return 0;
  }

LABEL_15:
  v17 = v5[14];

  return sub_26C0D3518(a1 + v17, a2 + v17);
}

uint64_t sub_26C120568(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_26C12057C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC58, &qword_26C14D288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26C1205E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCertificateBundle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

uint64_t sub_26C120674(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C1206BC(uint64_t result, int a2, int a3)
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
      *(result + 80) = (a2 - 1);
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

uint64_t sub_26C120724@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_26C1365D4();
  if ((v7 & 0x10000) != 0)
  {
    goto LABEL_7;
  }

  v8 = v7;
  sub_26C0D7B44(v40);
  if (v41)
  {
    goto LABEL_7;
  }

  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  sub_26C0BBAA4(*a1, v9);
  v12 = sub_26C1368E8();
  if ((v12 & 0x100) != 0)
  {
    goto LABEL_5;
  }

  sub_26C0DE248(v12, &v35);
  if (*(&v35 + 1) >> 60 == 15)
  {
    goto LABEL_5;
  }

  v38 = v35;
  v39 = v36;
  sub_26C0D4B74(&v38, &v33, &v35);
  if (v3)
  {
    v14 = *(&v33 + 1);
    v15 = v33;
    v16 = v34;
    v18 = *(&v38 + 1);
    v17 = v38;
LABEL_21:
    sub_26C0BB9B0(v17, v18);
    sub_26C0BB9B0(*a1, a1[1]);
    *a1 = v10;
    a1[1] = v9;
    a1[2] = v11;
    *&v35 = v15;
    *(&v35 + 1) = v14;
    LOBYTE(v36) = v16;
    sub_26C0BBAF8();
    result = swift_willThrowTypedImpl();
    *a2 = v15;
    *(a2 + 8) = v14;
    *(a2 + 16) = v16;
    return result;
  }

  result = v38;
  v19 = *(&v38 + 1) >> 62;
  if ((*(&v38 + 1) >> 62) > 1)
  {
    if (v19 == 2)
    {
      v20 = *(v38 + 24);
    }

    else
    {
      v20 = 0;
    }
  }

  else if (v19)
  {
    v20 = v38 >> 32;
  }

  else
  {
    v20 = BYTE14(v38);
  }

  if (!__OFSUB__(v20, v39))
  {
    if (v20 != v39)
    {
      v33 = xmmword_26C149860;
      v16 = 2;
      v34 = 2;
      v24 = *(&v38 + 1);
      v23 = v38;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v18 = v24;
      v17 = v23;
      v14 = 0;
      v15 = 1;
      goto LABEL_21;
    }

    sub_26C0BB9B0(v38, *(&v38 + 1));
    sub_26C0BB9B0(v10, v9);
    v30 = v36;
    v31 = v35;
    v21 = v37;
    v10 = *a1;
    v9 = a1[1];
    v11 = a1[2];
    sub_26C0BBAA4(*a1, v9);
    v22 = sub_26C0DF788(a1, &v35);
    if (!v22)
    {
LABEL_5:
      sub_26C0BB9B0(*a1, a1[1]);
LABEL_6:
      *a1 = v10;
      a1[1] = v9;
      a1[2] = v11;
LABEL_7:
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 2;
      v35 = 0uLL;
      LOBYTE(v36) = 2;
      sub_26C0BBAF8();
      return swift_willThrowTypedImpl();
    }

    v42 = v21;
    v25 = v22;
    sub_26C0BB9B0(v10, v9);
    v10 = *a1;
    v9 = a1[1];
    v11 = a1[2];
    sub_26C0BBAA4(*a1, v9);
    v26 = sub_26C0DF650(a1, &v35);
    if (v26)
    {
      v29 = v26;
      sub_26C0BB9B0(v10, v9);
      v10 = *a1;
      v9 = a1[1];
      v11 = a1[2];
      sub_26C0BBAA4(*a1, v9);
      v27 = sub_26C0DF2C0(a1, &v35);
      if (v27)
      {
        v28 = v27;
        result = sub_26C0BB9B0(v10, v9);
        *&v32[6] = v40[0];
        *&v32[22] = v40[1];
        *(a3 + 2) = *v32;
        *a3 = bswap32(v8) >> 16;
        *(a3 + 18) = *&v32[16];
        *(a3 + 32) = *&v32[30];
        *(a3 + 56) = v30;
        *(a3 + 40) = v31;
        *(a3 + 72) = v42;
        *(a3 + 80) = v25;
        *(a3 + 88) = v29;
        *(a3 + 96) = v28;
        return result;
      }

      sub_26C0BB9B0(*a1, a1[1]);
    }

    else
    {
      sub_26C0BB9B0(*a1, a1[1]);
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void *sub_26C120B44()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return &unk_287CC9AE8;
  }

  for (i = (v1 + 112); (*i & 0xF0) != 0x70; i += 88)
  {
LABEL_3:
    if (!--v2)
    {
      return &unk_287CC9AE8;
    }
  }

  v4 = *(i - 10);
  if (*(i - 18))
  {
    sub_26C0FF460(v4, 1);
    goto LABEL_3;
  }

  v6 = *(i - 10);
  sub_26C0FF460(v4, 0);
  return v6;
}

uint64_t sub_26C120BDC(uint64_t a1)
{
  sub_26C1491CC();
  sub_26C1491CC();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  MEMORY[0x26D69BF30](v1[1]);
  MEMORY[0x26D69BF30](v3);
  MEMORY[0x26D69BF30](v4);
  MEMORY[0x26D69BF30](v5);
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  MEMORY[0x26D69BEF0](v1[9]);
  MEMORY[0x26D69BF30](v6);
  MEMORY[0x26D69BF30](v7);
  MEMORY[0x26D69BF30](v8);
  MEMORY[0x26D69BF30](v9);
  v10 = v1[10];
  v11 = *(v10 + 16);
  MEMORY[0x26D69BEF0](v11);
  if (v11)
  {
    v12 = v10 + 32;
    do
    {
      v12 += 2;
      sub_26C1491DC();
      --v11;
    }

    while (v11);
  }

  v13 = v1[11];
  v14 = *(v13 + 16);
  MEMORY[0x26D69BEF0](v14);
  if (v14)
  {
    v15 = v13 + 32;
    do
    {
      ++v15;
      sub_26C1491CC();
      --v14;
    }

    while (v14);
  }

  v16 = v1[12];
  v17 = *(v16 + 16);
  result = MEMORY[0x26D69BEF0](v17);
  if (v17)
  {
    v19 = (v16 + 32);
    do
    {
      v20 = v19[1];
      v28[0] = *v19;
      v28[1] = v20;
      v21 = v19[2];
      v22 = v19[3];
      v23 = v19[4];
      v29 = *(v19 + 80);
      v28[3] = v22;
      v28[4] = v23;
      v28[2] = v21;
      v24 = v19[1];
      v32 = *v19;
      v33 = v24;
      v25 = v19[2];
      v26 = v19[3];
      v27 = v19[4];
      v37 = *(v19 + 80);
      v35 = v26;
      v36 = v27;
      v34 = v25;
      sub_26C0BE40C(v28, v30);
      sub_26C128984(a1);
      v30[2] = v34;
      v30[3] = v35;
      v30[4] = v36;
      v31 = v37;
      v30[0] = v32;
      v30[1] = v33;
      result = sub_26C0BE468(v30);
      v19 = (v19 + 88);
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_26C120D90()
{
  sub_26C1491AC();
  sub_26C120BDC(v1);
  return sub_26C14920C();
}

uint64_t sub_26C120DD4(uint64_t a1)
{
  sub_26C1491AC();
  sub_26C120BDC(v2);
  return sub_26C14920C();
}

uint64_t sub_26C120E10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_26C1218C0(v11, v13) & 1;
}

unint64_t sub_26C120E80()
{
  result = qword_28047AD50;
  if (!qword_28047AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AD50);
  }

  return result;
}

unint64_t sub_26C120ED4(uint64_t *a1)
{
  v2 = v1;
  v49 = *MEMORY[0x277D85DE8];
  LOWORD(v43) = *v2;
  v4 = MEMORY[0x277D838B0];
  v5 = MEMORY[0x277CC9C18];
  *(&v47 + 1) = MEMORY[0x277D838B0];
  v48 = MEMORY[0x277CC9C18];
  *&v46 = &v43;
  *(&v46 + 1) = &v43 + 2;
  __swift_project_boxed_opaque_existential_1(&v46, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v46);
  v6 = *(v2 + 24);
  v43 = *(v2 + 8);
  v44 = v6;
  *(&v47 + 1) = v4;
  v48 = v5;
  *&v46 = &v43;
  *(&v46 + 1) = &v45;
  __swift_project_boxed_opaque_existential_1(&v46, v4);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v46);
  v7 = *(v2 + 56);
  v46 = *(v2 + 40);
  v47 = v7;
  v48 = *(v2 + 72);
  v8 = sub_26C0D4944(&v46);
  v9 = v8 + 34;
  if (__OFADD__(v8, 34))
  {
    goto LABEL_42;
  }

  v10 = *a1;
  v11 = a1[1];
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v13 = *(v10 + 24);
    }

    else
    {
      v13 = 0;
    }
  }

  else if (v12)
  {
    v13 = v10 >> 32;
  }

  else
  {
    v13 = BYTE6(v11);
  }

  v42 = 0;
  *(&v44 + 1) = v4;
  v45 = v5;
  *&v43 = &v42;
  *(&v43 + 1) = &v43;
  __swift_project_boxed_opaque_existential_1(&v43, v4);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v43);
  v14 = *(v2 + 80);
  v15 = *(v14 + 16);
  if (!v15)
  {
LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  v40 = v13;
  v16 = 0;
  v17 = v14 + 32;
  do
  {
    v42 = bswap32(*(v17 + v16)) >> 16;
    *(&v44 + 1) = v4;
    v45 = v5;
    *&v43 = &v42;
    *(&v43 + 1) = &v43;
    __swift_project_boxed_opaque_existential_1(&v43, v4);
    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(&v43);
    if (v16 == 0x7FFFFFFFFFFFFFFELL)
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v16 += 2;
    --v15;
  }

  while (v15);
  v13 = v40;
  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v16 >> 16)
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  sub_26C10064C(v16, v13);
  v18 = v9 + v16 + 2;
  if (__OFADD__(v9, v16 + 2))
  {
    goto LABEL_44;
  }

  v19 = *a1;
  v20 = a1[1];
  v21 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v21 == 2)
    {
      v22 = *(v19 + 24);
    }

    else
    {
      v22 = 0;
    }
  }

  else if (v21)
  {
    v22 = v19 >> 32;
  }

  else
  {
    v22 = BYTE6(v20);
  }

  LOBYTE(v42) = 0;
  *(&v44 + 1) = v4;
  v45 = v5;
  *&v43 = &v42;
  *(&v43 + 1) = &v42 + 1;
  __swift_project_boxed_opaque_existential_1(&v43, v4);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v43);
  v23 = *(v2 + 88);
  v24 = *(v23 + 16);
  if (v24)
  {
    v41 = v22;
    v25 = v18;
    v26 = 0;
    v27 = v23 + 32;
    do
    {
      v28 = *(v27 + v26++);
      LOBYTE(v42) = v28;
      *(&v44 + 1) = v4;
      v45 = v5;
      *&v43 = &v42;
      *(&v43 + 1) = &v42 + 1;
      __swift_project_boxed_opaque_existential_1(&v43, v4);
      sub_26C14888C();
      __swift_destroy_boxed_opaque_existential_1(&v43);
    }

    while (v24 != v26);
    v18 = v25;
    v22 = v41;
    if (v24 > 0xFF)
    {
      goto LABEL_45;
    }
  }

  sub_26C100778(v24, v22);
  v29 = __OFADD__(v18, v24 + 1);
  v30 = v18 + v24 + 1;
  if (v29)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v31 = *a1;
  v32 = a1[1];
  v33 = v32 >> 62;
  if ((v32 >> 62) > 1)
  {
    if (v33 == 2)
    {
      v36 = *(v31 + 24);
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v34 = BYTE6(v32);
    v35 = v31 >> 32;
    if (v33)
    {
      v36 = v35;
    }

    else
    {
      v36 = v34;
    }
  }

  v42 = 0;
  *(&v44 + 1) = v4;
  v45 = v5;
  *&v43 = &v42;
  *(&v43 + 1) = &v43;
  __swift_project_boxed_opaque_existential_1(&v43, v4);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v43);
  v37 = sub_26C0BF600(0, *(v2 + 96));
  if ((v37 & 0x8000000000000000) != 0)
  {
    goto LABEL_47;
  }

  v38 = v37;
  if (v37 >> 16)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  sub_26C10064C(v37, v36);
  result = v30 + v38 + 2;
  if (__OFADD__(v30, v38 + 2))
  {
    goto LABEL_49;
  }

  return result;
}

uint64_t sub_26C1212AC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = a1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = BYTE6(v3);
    if (v5)
    {
      v6 = v2 >> 32;
    }
  }

  v7 = __OFSUB__(v6, result);
  v8 = v6 - result;
  if (v7)
  {
    __break(1u);
    goto LABEL_23;
  }

  v9 = result + v8;
  if (__OFADD__(result, v8))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_19;
    }

    if (*(v2 + 24) >= v9)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v5)
    {
      v10 = v2 >> 32;
    }

    else
    {
      v10 = BYTE6(v3);
    }

    if (v10 >= v9)
    {
LABEL_20:
      if (v9 >= result)
      {
        v11 = sub_26C14889C();
        result = sub_26C148778(v11, v12);
        a1[2] = v9;
        return result;
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_19:
  if (v9 <= 0)
  {
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

char *sub_26C121384(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v69 = *MEMORY[0x277D85DE8];
  v5 = sub_26C0CD87C(0, 8, 0, MEMORY[0x277D84F90]);
  v6 = a1[1];
  v49 = *a1;
  LOWORD(v66) = 0;
  v7 = a1[2];
  v8 = v7 + 2;
  if (__OFADD__(v7, 2))
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }

  v9 = v5;
  v10 = v6 >> 62;
  v50 = BYTE6(v6);
  v51 = v6 >> 62;
  while (1)
  {
    if (v10 <= 1)
    {
      v11 = v50;
      if (v10)
      {
        v11 = v49 >> 32;
      }

LABEL_8:
      if (v11 < v8)
      {
        return v9;
      }

      goto LABEL_11;
    }

    if (v10 == 2)
    {
      v11 = *(v49 + 24);
      goto LABEL_8;
    }

    if (v8 > 0)
    {
      return v9;
    }

LABEL_11:
    v12 = *a1;
    v13 = a1[1];
    *&v60 = *a1;
    *(&v60 + 1) = v13;
    if (v8 < v7)
    {
      goto LABEL_61;
    }

    v53 = v9;
    *&v54 = v7;
    *(&v54 + 1) = v8;
    sub_26C0BBAA4(v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v60, *(&v60 + 1));
    v14 = v66;
    a1[2] = v8;
    v15 = *a1;
    v16 = a1[1];
    LOWORD(v66) = 0;
    v17 = v8 + 2;
    if (__OFADD__(v8, 2))
    {
      goto LABEL_62;
    }

    v18 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      break;
    }

    if (v18)
    {
      v19 = v15 >> 32;
    }

    else
    {
      v19 = BYTE6(v16);
    }

LABEL_19:
    if (v19 < v17)
    {
      goto LABEL_55;
    }

LABEL_22:
    *&v60 = v15;
    *(&v60 + 1) = v16;
    if (v17 < v8)
    {
      goto LABEL_63;
    }

    *&v54 = v8;
    *(&v54 + 1) = v8 + 2;
    sub_26C0BBAA4(v15, v16);
    v52 = v15;
    sub_26C0BBAA4(v15, v16);
    sub_26C14878C();
    sub_26C0BB9B0(v60, *(&v60 + 1));
    v20 = bswap32(v66) >> 16;
    a1[2] = v17;
    v21 = v17 + v20;
    if (__OFADD__(v17, v20))
    {
      goto LABEL_64;
    }

    v22 = *a1;
    v23 = a1[1];
    v24 = v23 >> 62;
    if ((v23 >> 62) <= 1)
    {
      if (v24)
      {
        v25 = v22 >> 32;
      }

      else
      {
        v25 = BYTE6(v23);
      }

LABEL_30:
      if (v25 < v21)
      {
        goto LABEL_56;
      }

      goto LABEL_33;
    }

    if (v24 == 2)
    {
      v25 = *(v22 + 24);
      goto LABEL_30;
    }

    if (v21 > 0)
    {
      goto LABEL_56;
    }

LABEL_33:
    if (v21 < v17)
    {
      goto LABEL_65;
    }

    v26 = sub_26C14889C();
    v28 = 0;
    a1[2] = v21;
    v29 = v27 >> 62;
    if ((v27 >> 62) > 1)
    {
      v30 = v3;
      if (v29 == 2)
      {
        v28 = *(v26 + 16);
      }
    }

    else
    {
      v30 = v3;
      if (v29)
      {
        v28 = v26;
      }
    }

    v66 = v26;
    v67 = v27;
    v68 = v28;
    sub_26C1298E0(&v66, bswap32(v14) >> 16, 1u, 0, &v54, &v60);
    if (v30)
    {
      v45 = *(&v54 + 1);
      v46 = v54;
      v40 = v55;
      v44 = v66;
      v43 = v67;
      goto LABEL_58;
    }

    v3 = 0;
    v31 = v67 >> 62;
    if ((v67 >> 62) > 1)
    {
      if (v31 == 2)
      {
        v32 = *(v66 + 24);
      }

      else
      {
        v32 = 0;
      }
    }

    else if (v31)
    {
      v32 = v66 >> 32;
    }

    else
    {
      v32 = BYTE6(v67);
    }

    if (__OFSUB__(v32, v68))
    {
      goto LABEL_66;
    }

    if (v32 != v68)
    {
      v40 = 2;
      v41 = v66;
      v42 = v67;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v56 = v62;
      v57 = v63;
      v58 = v64;
      v59 = v65;
      v54 = v60;
      v55 = v61;
      sub_26C0BE468(&v54);
      v43 = v42;
      v44 = v41;
      v45 = 0;
      v46 = 1;
LABEL_58:
      sub_26C0BB9B0(v44, v43);
      sub_26C0BB9B0(*a1, a1[1]);
      *a1 = v52;
      a1[1] = v16;
      a1[2] = v8;
      *&v60 = v46;
      *(&v60 + 1) = v45;
      LOBYTE(v61) = v40;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v9 = v53;

      *a2 = v46;
      *(a2 + 8) = v45;
      *(a2 + 16) = v40;
      return v9;
    }

    sub_26C0BB9B0(v66, v67);
    sub_26C0BB9B0(v15, v16);
    v59 = v65;
    v57 = v63;
    v58 = v64;
    v55 = v61;
    v56 = v62;
    v54 = v60;
    v9 = v53;
    v34 = *(v53 + 2);
    v33 = *(v53 + 3);
    if (v34 >= v33 >> 1)
    {
      v9 = sub_26C0CD87C((v33 > 1), v34 + 1, 1, v53);
    }

    LODWORD(v10) = v51;
    *(v9 + 2) = v34 + 1;
    v35 = &v9[88 * v34];
    v36 = v55;
    *(v35 + 2) = v54;
    *(v35 + 3) = v36;
    v37 = v56;
    v38 = v57;
    v39 = v58;
    v35[112] = v59;
    *(v35 + 5) = v38;
    *(v35 + 6) = v39;
    *(v35 + 4) = v37;
    LOWORD(v66) = 0;
    v7 = a1[2];
    v8 = v7 + 2;
    if (__OFADD__(v7, 2))
    {
      goto LABEL_60;
    }
  }

  if (v18 == 2)
  {
    v19 = *(v15 + 24);
    goto LABEL_19;
  }

  if (v17 < 1)
  {
    goto LABEL_22;
  }

LABEL_55:
  sub_26C0BBAA4(v15, v16);
  v22 = *a1;
  v23 = a1[1];
LABEL_56:
  sub_26C0BB9B0(v22, v23);
  *a1 = v15;
  a1[1] = v16;
  a1[2] = v8;
  return v53;
}

uint64_t sub_26C1218C0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 8), *(a2 + 8)), vceqq_s64(*(a1 + 24), *(a2 + 24))))) & 1) == 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 40), *(a2 + 40)), vceqq_s64(*(a1 + 56), *(a2 + 56))))) & 1) == 0 || *(a1 + 9) != *(a2 + 9) || (sub_26C0BE8CC() & 1) == 0 || (sub_26C0BC82C(*(a1 + 11), *(a2 + 11)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 12);
  v5 = *(a2 + 12);

  return sub_26C0BD914(v4, v5);
}

uint64_t sub_26C1219BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v8 = sub_26C1365D4();
  if ((v8 & 0x10000) != 0)
  {
    goto LABEL_6;
  }

  v9 = v8;
  sub_26C0D7B44(v59);
  if (v60)
  {
    goto LABEL_6;
  }

  v10 = v59[0];
  v61 = v59[1];
  v50 = v59[3];
  v51 = v59[2];
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  sub_26C0BBAA4(*a1, v11);
  v14 = sub_26C1368E8();
  if ((v14 & 0x100) != 0 || (sub_26C0DE248(v14, &v54), *(&v54 + 1) >> 60 == 15))
  {
    sub_26C0BB9B0(*a1, a1[1]);
    *a1 = v12;
    a1[1] = v11;
    a1[2] = v13;
LABEL_6:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 2;
    v54 = 0uLL;
    LOBYTE(v55) = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  v57 = v54;
  v58 = v55;
  sub_26C0D4B74(&v57, &v52, &v54);
  if (v3)
  {
    v16 = *(&v52 + 1);
    v17 = v52;
    v18 = v53;
    v20 = *(&v57 + 1);
    v19 = v57;
LABEL_28:
    sub_26C0BB9B0(v19, v20);
    sub_26C0BB9B0(*a1, a1[1]);
    *a1 = v12;
    a1[1] = v11;
    a1[2] = v13;
    *&v54 = v17;
    *(&v54 + 1) = v16;
    LOBYTE(v55) = v18;
    sub_26C0BBAF8();
    result = swift_willThrowTypedImpl();
    *a2 = v17;
LABEL_29:
    *(a2 + 8) = v16;
    *(a2 + 16) = v18;
    return result;
  }

  LOBYTE(v21) = v57;
  v22 = *(&v57 + 1) >> 62;
  if ((*(&v57 + 1) >> 62) > 1)
  {
    if (v22 == 2)
    {
      v23 = *(v57 + 24);
    }

    else
    {
      v23 = 0;
    }
  }

  else if (v22)
  {
    v23 = v57 >> 32;
  }

  else
  {
    v23 = BYTE14(v57);
  }

  if (__OFSUB__(v23, v58))
  {
    __break(1u);
LABEL_45:
    v42 = v21;
    swift_once();
    LOBYTE(v21) = v42;
    goto LABEL_22;
  }

  if (v23 != v58)
  {
    v52 = xmmword_26C149860;
    v18 = 2;
    v53 = 2;
    v31 = *(&v57 + 1);
    v30 = v57;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v20 = v31;
    v19 = v30;
    v16 = 0;
    v17 = 1;
    goto LABEL_28;
  }

  v49 = 0;
  sub_26C0BB9B0(v57, *(&v57 + 1));
  sub_26C0BB9B0(v12, v11);
  v47 = v55;
  v48 = v54;
  v12 = v56;
  v24 = sub_26C1365D4();
  if ((v24 & 0x10000) != 0)
  {
    goto LABEL_6;
  }

  v5 = v24;
  v21 = sub_26C1368E8();
  if ((v21 & 0x100) != 0)
  {
    goto LABEL_6;
  }

  if (qword_28047A728 != -1)
  {
    goto LABEL_45;
  }

LABEL_22:
  v25 = 0;
  v45 = v21;
  v44 = v12;
  if (v10 == unk_280480350 && __PAIR128__(v51, v61) == xmmword_280480358)
  {
    v25 = v50 == qword_280480368;
  }

  v46 = v25;
  v26 = *a1;
  v27 = a1[1];
  v28 = a1[2];
  sub_26C0BBAA4(*a1, v27);
  v29 = sub_26C1365D4();
  if ((v29 & 0x10000) != 0 || (v43 = v26, sub_26C0DE248(v29, &v57), *(&v57 + 1) >> 60 == 15))
  {
    sub_26C0BB9B0(*a1, a1[1]);
    *a1 = v26;
    a1[1] = v27;
    a1[2] = v28;
    goto LABEL_6;
  }

  v54 = v57;
  *&v55 = v58;
  sub_26C1223C4(&v54, v46, &v57, &v52);
  if (v49)
  {
    v16 = *(&v57 + 1);
    v32 = v57;
    v18 = v58;
    v34 = *(&v54 + 1);
    v33 = v54;
LABEL_43:
    sub_26C0BB9B0(v33, v34);
    sub_26C0BB9B0(*a1, a1[1]);
    *a1 = v43;
    a1[1] = v27;
    a1[2] = v28;
    *&v54 = v32;
    *(&v54 + 1) = v16;
    LOBYTE(v55) = v18;
    sub_26C0BBAF8();
    result = swift_willThrowTypedImpl();
    *a2 = v32;
    goto LABEL_29;
  }

  result = v54;
  v35 = *(&v54 + 1) >> 62;
  if ((*(&v54 + 1) >> 62) > 1)
  {
    v36 = v27;
    if (v35 == 2)
    {
      v37 = *(v54 + 24);
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v36 = v27;
    if (v35)
    {
      v37 = v54 >> 32;
    }

    else
    {
      v37 = BYTE14(v54);
    }
  }

  if (__OFSUB__(v37, v55))
  {
    __break(1u);
  }

  else
  {
    if (v37 != v55)
    {
      v57 = xmmword_26C149860;
      v18 = 2;
      LOBYTE(v58) = 2;
      v41 = *(&v54 + 1);
      v40 = v54;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();

      v34 = v41;
      v33 = v40;
      v16 = 0;
      v32 = 1;
      goto LABEL_43;
    }

    sub_26C0BB9B0(v54, *(&v54 + 1));
    result = sub_26C0BB9B0(v43, v36);
    *a3 = HIBYTE(v9);
    *(a3 + 1) = v9;
    v38 = v61;
    *(a3 + 8) = v10;
    *(a3 + 16) = v38;
    v39 = v52;
    *(a3 + 24) = v51;
    *(a3 + 32) = v50;
    *(a3 + 56) = v47;
    *(a3 + 40) = v48;
    *(a3 + 72) = v44;
    *(a3 + 80) = v5;
    *(a3 + 82) = v45;
    *(a3 + 88) = v39;
  }

  return result;
}

uint64_t sub_26C121E5C()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 112);
    while ((*v3 & 0xF0) != 0x20 || (*(v3 - 18) & 1) == 0)
    {
      v3 += 88;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    v4 = *(v3 - 10);
    sub_26C0FF460(*(v3 - 10), 1);
    v5 = 0;
  }

  else
  {
LABEL_7:
    v4 = 0;
    v5 = 1;
  }

  return v4 | (v5 << 16);
}

uint64_t sub_26C121EDC(uint64_t a1)
{
  sub_26C1491CC();
  sub_26C1491CC();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  MEMORY[0x26D69BF30](v1[1]);
  MEMORY[0x26D69BF30](v3);
  MEMORY[0x26D69BF30](v4);
  MEMORY[0x26D69BF30](v5);
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  MEMORY[0x26D69BEF0](v1[9]);
  MEMORY[0x26D69BF30](v6);
  MEMORY[0x26D69BF30](v7);
  MEMORY[0x26D69BF30](v8);
  MEMORY[0x26D69BF30](v9);
  sub_26C1491DC();
  sub_26C1491CC();
  v10 = v1[11];
  v11 = *(v10 + 16);
  result = MEMORY[0x26D69BEF0](v11);
  if (v11)
  {
    v13 = (v10 + 32);
    do
    {
      v14 = v13[1];
      v22[0] = *v13;
      v22[1] = v14;
      v15 = v13[2];
      v16 = v13[3];
      v17 = v13[4];
      v23 = *(v13 + 80);
      v22[3] = v16;
      v22[4] = v17;
      v22[2] = v15;
      v18 = v13[1];
      v26 = *v13;
      v27 = v18;
      v19 = v13[2];
      v20 = v13[3];
      v21 = v13[4];
      v31 = *(v13 + 80);
      v29 = v20;
      v30 = v21;
      v28 = v19;
      sub_26C0BE40C(v22, v24);
      sub_26C128984(a1);
      v24[2] = v28;
      v24[3] = v29;
      v24[4] = v30;
      v25 = v31;
      v24[0] = v26;
      v24[1] = v27;
      result = sub_26C0BE468(v24);
      v13 = (v13 + 88);
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_26C122040()
{
  sub_26C1491AC();
  sub_26C121EDC(v1);
  return sub_26C14920C();
}

uint64_t sub_26C122084(uint64_t a1)
{
  sub_26C1491AC();
  sub_26C121EDC(v2);
  return sub_26C14920C();
}

uint64_t sub_26C1220C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_26C122918(v9, v10) & 1;
}

unint64_t sub_26C122120()
{
  result = qword_28047AD58;
  if (!qword_28047AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AD58);
  }

  return result;
}

unint64_t sub_26C122174(uint64_t *a1)
{
  v2 = v1;
  v27 = *MEMORY[0x277D85DE8];
  LOWORD(v21) = *v2;
  v4 = MEMORY[0x277D838B0];
  v5 = MEMORY[0x277CC9C18];
  *(&v25 + 1) = MEMORY[0x277D838B0];
  v26 = MEMORY[0x277CC9C18];
  *&v24 = &v21;
  *(&v24 + 1) = &v21 + 2;
  __swift_project_boxed_opaque_existential_1(&v24, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v24);
  v6 = *(v2 + 24);
  v21 = *(v2 + 8);
  v22 = v6;
  *(&v25 + 1) = v4;
  v26 = v5;
  *&v24 = &v21;
  *(&v24 + 1) = &v23;
  __swift_project_boxed_opaque_existential_1(&v24, v4);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v24);
  v7 = *(v2 + 56);
  v24 = *(v2 + 40);
  v25 = v7;
  v26 = *(v2 + 72);
  v8 = sub_26C0D4944(&v24);
  v9 = v8 + 34;
  if (__OFADD__(v8, 34))
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = bswap32(*(v2 + 80)) >> 16;
  *(&v22 + 1) = v4;
  v23 = v5;
  *&v21 = &v20;
  *(&v21 + 1) = &v21;
  __swift_project_boxed_opaque_existential_1(&v21, v4);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v21);
  v10 = __OFADD__(v9, 2);
  v11 = v9 + 2;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  LOBYTE(v20) = *(v2 + 82);
  *(&v22 + 1) = v4;
  v23 = v5;
  *&v21 = &v20;
  *(&v21 + 1) = &v20 + 1;
  __swift_project_boxed_opaque_existential_1(&v21, v4);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v21);
  v10 = __OFADD__(v11, 1);
  v12 = v11 + 1;
  if (v10)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = *a1;
  v14 = a1[1];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v16 = *(v13 + 24);
    }

    else
    {
      v16 = 0;
    }
  }

  else if (v15)
  {
    v16 = v13 >> 32;
  }

  else
  {
    v16 = BYTE6(v14);
  }

  v20 = 0;
  *(&v22 + 1) = v4;
  v23 = v5;
  *&v21 = &v20;
  *(&v21 + 1) = &v21;
  __swift_project_boxed_opaque_existential_1(&v21, v4);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v21);
  v17 = sub_26C0BF600(0, *(v2 + 88));
  if ((v17 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  v18 = v17;
  if (v17 >> 16)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  sub_26C10064C(v17, v16);
  result = v12 + v18 + 2;
  if (__OFADD__(v12, v18 + 2))
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26C1223C4@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v72 = *MEMORY[0x277D85DE8];
  result = sub_26C0CD87C(0, 8, 0, MEMORY[0x277D84F90]);
  v8 = a1[1];
  v51 = *a1;
  LOWORD(v69) = 0;
  v9 = a1[2];
  v10 = v9 + 2;
  if (__OFADD__(v9, 2))
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
  }

  v11 = result;
  v12 = v8 >> 62;
  v52 = BYTE6(v8);
  v53 = v8 >> 62;
  while (1)
  {
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        if (*(v51 + 24) < v10)
        {
          goto LABEL_56;
        }
      }

      else if (v10 > 0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v13 = v52;
      if (v12)
      {
        v13 = v51 >> 32;
      }

      if (v13 < v10)
      {
LABEL_56:
        *a4 = v11;
        return result;
      }
    }

    v14 = *a1;
    v15 = a1[1];
    *&v63 = *a1;
    *(&v63 + 1) = v15;
    if (v10 < v9)
    {
      goto LABEL_62;
    }

    v56 = v11;
    *&v57 = v9;
    *(&v57 + 1) = v10;
    sub_26C0BBAA4(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v63, *(&v63 + 1));
    v16 = v69;
    a1[2] = v10;
    v17 = *a1;
    v18 = a1[1];
    LOWORD(v69) = 0;
    v19 = v10 + 2;
    if (__OFADD__(v10, 2))
    {
      goto LABEL_63;
    }

    v20 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      break;
    }

    if (v20)
    {
      v21 = v17 >> 32;
    }

    else
    {
      v21 = BYTE6(v18);
    }

LABEL_20:
    if (v21 < v19)
    {
      goto LABEL_57;
    }

LABEL_23:
    *&v63 = v17;
    *(&v63 + 1) = v18;
    if (v19 < v10)
    {
      goto LABEL_64;
    }

    *&v57 = v10;
    *(&v57 + 1) = v10 + 2;
    sub_26C0BBAA4(v17, v18);
    v55 = v17;
    sub_26C0BBAA4(v17, v18);
    sub_26C14878C();
    sub_26C0BB9B0(v63, *(&v63 + 1));
    v22 = bswap32(v69) >> 16;
    a1[2] = v19;
    v23 = v19 + v22;
    if (__OFADD__(v19, v22))
    {
      goto LABEL_65;
    }

    v24 = *a1;
    v25 = a1[1];
    v26 = v25 >> 62;
    if ((v25 >> 62) <= 1)
    {
      if (v26)
      {
        v27 = v24 >> 32;
      }

      else
      {
        v27 = BYTE6(v25);
      }

LABEL_31:
      if (v27 < v23)
      {
        goto LABEL_58;
      }

      goto LABEL_34;
    }

    if (v26 == 2)
    {
      v27 = *(v24 + 24);
      goto LABEL_31;
    }

    if (v23 > 0)
    {
      goto LABEL_58;
    }

LABEL_34:
    if (v23 < v19)
    {
      goto LABEL_66;
    }

    v28 = sub_26C14889C();
    v30 = 0;
    a1[2] = v23;
    v31 = v29 >> 62;
    if ((v29 >> 62) > 1)
    {
      v32 = v5;
      if (v31 == 2)
      {
        v30 = *(v28 + 16);
      }
    }

    else
    {
      v32 = v5;
      if (v31)
      {
        v30 = v28;
      }
    }

    v69 = v28;
    v70 = v29;
    v71 = v30;
    sub_26C1298E0(&v69, bswap32(v16) >> 16, 2u, a2 & 1, &v57, &v63);
    if (v32)
    {
      v47 = *(&v57 + 1);
      v48 = v57;
      v42 = v58;
      v46 = v69;
      v45 = v70;
      goto LABEL_60;
    }

    v5 = 0;
    v33 = v70 >> 62;
    if ((v70 >> 62) > 1)
    {
      if (v33 == 2)
      {
        v34 = *(v69 + 24);
      }

      else
      {
        v34 = 0;
      }
    }

    else if (v33)
    {
      v34 = v69 >> 32;
    }

    else
    {
      v34 = BYTE6(v70);
    }

    if (__OFSUB__(v34, v71))
    {
      goto LABEL_67;
    }

    if (v34 != v71)
    {
      v42 = 2;
      v43 = v69;
      v44 = v70;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v59 = v65;
      v60 = v66;
      v61 = v67;
      v62 = v68;
      v57 = v63;
      v58 = v64;
      sub_26C0BE468(&v57);
      v45 = v44;
      v46 = v43;
      v47 = 0;
      v48 = 1;
LABEL_60:
      sub_26C0BB9B0(v46, v45);
      sub_26C0BB9B0(*a1, a1[1]);
      *a1 = v55;
      a1[1] = v18;
      a1[2] = v10;
      *&v63 = v48;
      *(&v63 + 1) = v47;
      LOBYTE(v64) = v42;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();

      *a3 = v48;
      *(a3 + 8) = v47;
      *(a3 + 16) = v42;
      return result;
    }

    sub_26C0BB9B0(v69, v70);
    result = sub_26C0BB9B0(v17, v18);
    v62 = v68;
    v60 = v66;
    v61 = v67;
    v58 = v64;
    v59 = v65;
    v57 = v63;
    v11 = v56;
    v36 = *(v56 + 16);
    v35 = *(v56 + 24);
    if (v36 >= v35 >> 1)
    {
      result = sub_26C0CD87C((v35 > 1), v36 + 1, 1, v56);
      v11 = result;
    }

    LODWORD(v12) = v53;
    *(v11 + 16) = v36 + 1;
    v37 = v11 + 88 * v36;
    v38 = v58;
    *(v37 + 32) = v57;
    *(v37 + 48) = v38;
    v39 = v59;
    v40 = v60;
    v41 = v61;
    *(v37 + 112) = v62;
    *(v37 + 80) = v40;
    *(v37 + 96) = v41;
    *(v37 + 64) = v39;
    LOWORD(v69) = 0;
    v9 = a1[2];
    v10 = v9 + 2;
    if (__OFADD__(v9, 2))
    {
      goto LABEL_61;
    }
  }

  if (v20 == 2)
  {
    v21 = *(v17 + 24);
    goto LABEL_20;
  }

  if (v19 < 1)
  {
    goto LABEL_23;
  }

LABEL_57:
  sub_26C0BBAA4(v17, v18);
  v24 = *a1;
  v25 = a1[1];
LABEL_58:
  result = sub_26C0BB9B0(v24, v25);
  *a1 = v17;
  a1[1] = v18;
  a1[2] = v10;
  *a4 = v56;
  return result;
}

uint64_t sub_26C122918(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 8), *(a2 + 8)), vceqq_s64(*(a1 + 24), *(a2 + 24))))) & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 40), *(a2 + 40)), vceqq_s64(*(a1 + 56), *(a2 + 56))))) & 1) != 0 && *(a1 + 9) == *(a2 + 9) && *(a1 + 40) == *(a2 + 40) && a1[82] == a2[82])
  {
    return sub_26C0BD914(*(a1 + 11), *(a2 + 11));
  }

  else
  {
    return 0;
  }
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

uint64_t sub_26C1229F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C122A38(uint64_t result, int a2, int a3)
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
      *(result + 88) = (a2 - 1);
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

void *sub_26C122AA0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  result = sub_26C1491AC();
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v1 + 24);
    }
  }

  else if (v5)
  {
    v6 = v1 >> 32;
  }

  else
  {
    v6 = BYTE6(v2);
  }

  if (v6 < v3)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_26C14889C();
    v9 = v8;
    sub_26C1488BC();
    sub_26C0BB9B0(v7, v9);
    return sub_26C14920C();
  }

  return result;
}

uint64_t sub_26C122B5C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v6 = *a1;
  v7 = *(a1 + 8);
  v4 = v2;
  v5 = *(a2 + 8);
  sub_26C0BBAA4(v6, v7);
  sub_26C0BBAA4(v2, v5);
  LOBYTE(v2) = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v6, &v4);
  sub_26C0BB9B0(v4, v5);
  sub_26C0BB9B0(v6, v7);
  return v2 & 1;
}

unint64_t sub_26C122BE8()
{
  result = qword_28047AD60;
  if (!qword_28047AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AD60);
  }

  return result;
}

void sub_26C122C3C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = 0;
      v6 = BYTE6(v1);
      goto LABEL_9;
    }

    v5 = v2;
    v6 = v2 >> 32;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
LABEL_7:
    sub_26C0BBAA4(v2, v1);
    goto LABEL_9;
  }

  v6 = 0;
  v5 = 0;
LABEL_9:
  if (v6 < v3 || v6 < v5)
  {
    __break(1u);
    goto LABEL_24;
  }

  v8 = sub_26C14889C();
  v10 = v9;
  sub_26C1488CC();
  v11 = v10;
  v12 = v10 >> 62;
  if ((v10 >> 62) <= 1)
  {
    if (!v12)
    {
LABEL_15:
      sub_26C0BB9B0(v8, v10);
      sub_26C0BB9B0(v2, v1);
      return;
    }

LABEL_20:
    sub_26C0BB9B0(v8, v11);
    sub_26C0BB9B0(v2, v1);
    if (!__OFSUB__(HIDWORD(v8), v8))
    {
      return;
    }

LABEL_24:
    __break(1u);
    return;
  }

  if (v12 != 2)
  {
    goto LABEL_15;
  }

  v14 = *(v8 + 16);
  v13 = *(v8 + 24);
  sub_26C0BB9B0(v8, v11);
  sub_26C0BB9B0(v2, v1);
  if (__OFSUB__(v13, v14))
  {
    __break(1u);
    goto LABEL_20;
  }
}

uint64_t sub_26C122DF8(uint64_t a1)
{
  sub_26C1491AC();
  v2 = *(a1 + 16);
  MEMORY[0x26D69BEF0](v2);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      v4 = *(v3 + 48);
      v8 = *(v3 + 32);
      v9 = v4;
      v10 = *(v3 + 64);
      v11 = *(v3 + 80);
      v5 = *(v3 + 16);
      v7[0] = *v3;
      v7[1] = v5;
      v14 = v7[0];
      v15 = v5;
      v16 = v8;
      v17 = v4;
      v18 = v10;
      v19 = v11;
      sub_26C0BE40C(v7, v12);
      sub_26C128984(v20);
      v12[2] = v16;
      v12[3] = v17;
      v12[4] = v18;
      v13 = v19;
      v12[0] = v14;
      v12[1] = v15;
      sub_26C0BE468(v12);
      v3 += 88;
      --v2;
    }

    while (v2);
  }

  return sub_26C14920C();
}

uint64_t sub_26C122ED8(uint64_t a1)
{
  v3 = *v1;
  result = MEMORY[0x26D69BEF0](*(*v1 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = (v3 + 32);
    do
    {
      v7 = v6[1];
      v15[0] = *v6;
      v15[1] = v7;
      v8 = v6[2];
      v9 = v6[3];
      v10 = v6[4];
      v16 = *(v6 + 80);
      v15[3] = v9;
      v15[4] = v10;
      v15[2] = v8;
      v11 = v6[1];
      v19 = *v6;
      v20 = v11;
      v12 = v6[2];
      v13 = v6[3];
      v14 = v6[4];
      v24 = *(v6 + 80);
      v22 = v13;
      v23 = v14;
      v21 = v12;
      sub_26C0BE40C(v15, v17);
      sub_26C128984(a1);
      v17[2] = v21;
      v17[3] = v22;
      v17[4] = v23;
      v18 = v24;
      v17[0] = v19;
      v17[1] = v20;
      result = sub_26C0BE468(v17);
      v6 = (v6 + 88);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_26C122FB8(uint64_t a1)
{
  v2 = *v1;
  sub_26C1491AC();
  MEMORY[0x26D69BEF0](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = v4[1];
      v14[0] = *v4;
      v14[1] = v5;
      v6 = v4[2];
      v7 = v4[3];
      v8 = v4[4];
      v15 = *(v4 + 80);
      v14[3] = v7;
      v14[4] = v8;
      v14[2] = v6;
      v9 = v4[1];
      v18 = *v4;
      v19 = v9;
      v10 = v4[2];
      v11 = v4[3];
      v12 = v4[4];
      v23 = *(v4 + 80);
      v21 = v11;
      v22 = v12;
      v20 = v10;
      sub_26C0BE40C(v14, v16);
      sub_26C128984(v24);
      v16[2] = v20;
      v16[3] = v21;
      v16[4] = v22;
      v17 = v23;
      v16[0] = v18;
      v16[1] = v19;
      sub_26C0BE468(v16);
      v4 = (v4 + 88);
      --v3;
    }

    while (v3);
  }

  return sub_26C14920C();
}

unint64_t sub_26C1230AC()
{
  result = qword_28047AD68;
  if (!qword_28047AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AD68);
  }

  return result;
}

unint64_t sub_26C123100(uint64_t *a1, uint64_t a2)
{
  v13[5] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    v8 = 0;
    if (v5 == 2)
    {
      v8 = *(v3 + 24);
    }
  }

  else
  {
    v6 = BYTE6(v4);
    v7 = v3 >> 32;
    if (v5)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }
  }

  v12 = 0;
  v13[3] = MEMORY[0x277D838B0];
  v13[4] = MEMORY[0x277CC9C18];
  v13[0] = &v12;
  v13[1] = v13;
  __swift_project_boxed_opaque_existential_1(v13, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(v13);
  v9 = sub_26C0BF600(0, a2);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  v10 = v9;
  if (v9 >> 16)
  {
    goto LABEL_11;
  }

  sub_26C10064C(v9, v8);
  return v10 + 2;
}

char *sub_26C123210(uint64_t *a1, uint64_t a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v48 = *a1;
  LOWORD(v65) = 0;
  v4 = a1[2];
  v5 = v4 + 2;
  if (__OFADD__(v4, 2))
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
  }

  v6 = v2;
  v8 = v3 >> 62;
  v9 = MEMORY[0x277D84F90];
  v49 = BYTE6(v3);
  v50 = v3 >> 62;
  while (1)
  {
    if (v8 <= 1)
    {
      v10 = v49;
      if (v8)
      {
        v10 = v48 >> 32;
      }

LABEL_8:
      if (v10 < v5)
      {
        return v9;
      }

      goto LABEL_11;
    }

    if (v8 == 2)
    {
      v10 = *(v48 + 24);
      goto LABEL_8;
    }

    if (v5 > 0)
    {
      return v9;
    }

LABEL_11:
    v11 = *a1;
    v12 = a1[1];
    *&v59 = *a1;
    *(&v59 + 1) = v12;
    if (v5 < v4)
    {
      goto LABEL_63;
    }

    v52 = v9;
    *&v53 = v4;
    *(&v53 + 1) = v5;
    sub_26C0BBAA4(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v59, *(&v59 + 1));
    v13 = v65;
    a1[2] = v5;
    v14 = *a1;
    v15 = a1[1];
    LOWORD(v65) = 0;
    v16 = v5 + 2;
    if (__OFADD__(v5, 2))
    {
      goto LABEL_64;
    }

    v17 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      break;
    }

    if (v17)
    {
      v18 = v14 >> 32;
    }

    else
    {
      v18 = BYTE6(v15);
    }

LABEL_19:
    if (v18 < v16)
    {
      goto LABEL_57;
    }

LABEL_22:
    *&v59 = v14;
    *(&v59 + 1) = v15;
    if (v16 < v5)
    {
      goto LABEL_65;
    }

    *&v53 = v5;
    *(&v53 + 1) = v5 + 2;
    sub_26C0BBAA4(v14, v15);
    v51 = v14;
    sub_26C0BBAA4(v14, v15);
    sub_26C14878C();
    sub_26C0BB9B0(v59, *(&v59 + 1));
    v19 = bswap32(v65) >> 16;
    a1[2] = v16;
    v20 = v16 + v19;
    if (__OFADD__(v16, v19))
    {
      goto LABEL_66;
    }

    v21 = *a1;
    v22 = a1[1];
    v23 = v22 >> 62;
    if ((v22 >> 62) <= 1)
    {
      if (v23)
      {
        v24 = v21 >> 32;
      }

      else
      {
        v24 = BYTE6(v22);
      }

LABEL_30:
      if (v24 < v20)
      {
        goto LABEL_58;
      }

      goto LABEL_33;
    }

    if (v23 == 2)
    {
      v24 = *(v21 + 24);
      goto LABEL_30;
    }

    if (v20 > 0)
    {
      goto LABEL_58;
    }

LABEL_33:
    if (v20 < v16)
    {
      goto LABEL_67;
    }

    v25 = sub_26C14889C();
    v27 = 0;
    a1[2] = v20;
    v28 = v26 >> 62;
    if ((v26 >> 62) > 1)
    {
      v29 = v6;
      if (v28 == 2)
      {
        v27 = *(v25 + 16);
      }
    }

    else
    {
      v29 = v6;
      if (v28)
      {
        v27 = v25;
      }
    }

    v65 = v25;
    v66 = v26;
    v67 = v27;
    sub_26C1298E0(&v65, bswap32(v13) >> 16, 8u, 0, &v53, &v59);
    if (v29)
    {
      v44 = *(&v53 + 1);
      v45 = v53;
      v39 = v54;
      v43 = v65;
      v42 = v66;
      goto LABEL_60;
    }

    v6 = 0;
    v30 = v66 >> 62;
    if ((v66 >> 62) > 1)
    {
      if (v30 == 2)
      {
        v31 = *(v65 + 24);
      }

      else
      {
        v31 = 0;
      }
    }

    else if (v30)
    {
      v31 = v65 >> 32;
    }

    else
    {
      v31 = BYTE6(v66);
    }

    if (__OFSUB__(v31, v67))
    {
      goto LABEL_68;
    }

    if (v31 != v67)
    {
      v39 = 2;
      v40 = v65;
      v41 = v66;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v55 = v61;
      v56 = v62;
      v57 = v63;
      v58 = v64;
      v53 = v59;
      v54 = v60;
      sub_26C0BE468(&v53);
      v42 = v41;
      v43 = v40;
      v44 = 0;
      v45 = 1;
LABEL_60:
      sub_26C0BB9B0(v43, v42);
      sub_26C0BB9B0(*a1, a1[1]);
      *a1 = v51;
      a1[1] = v15;
      a1[2] = v5;
      *&v59 = v45;
      *(&v59 + 1) = v44;
      LOBYTE(v60) = v39;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v9 = v52;

      *a2 = v45;
      *(a2 + 8) = v44;
      *(a2 + 16) = v39;
      return v9;
    }

    sub_26C0BB9B0(v65, v66);
    sub_26C0BB9B0(v14, v15);
    v55 = v61;
    v56 = v62;
    v57 = v63;
    v58 = v64;
    v53 = v59;
    v54 = v60;
    v9 = v52;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_26C0CD87C(0, *(v52 + 2) + 1, 1, v52);
    }

    LODWORD(v8) = v50;
    v33 = *(v9 + 2);
    v32 = *(v9 + 3);
    if (v33 >= v32 >> 1)
    {
      v9 = sub_26C0CD87C((v32 > 1), v33 + 1, 1, v9);
    }

    *(v9 + 2) = v33 + 1;
    v34 = &v9[88 * v33];
    v35 = v54;
    *(v34 + 2) = v53;
    *(v34 + 3) = v35;
    v36 = v55;
    v37 = v56;
    v38 = v57;
    v34[112] = v58;
    *(v34 + 5) = v37;
    *(v34 + 6) = v38;
    *(v34 + 4) = v36;
    LOWORD(v65) = 0;
    v4 = a1[2];
    v5 = v4 + 2;
    if (__OFADD__(v4, 2))
    {
      goto LABEL_62;
    }
  }

  if (v17 == 2)
  {
    v18 = *(v14 + 24);
    goto LABEL_19;
  }

  if (v16 < 1)
  {
    goto LABEL_22;
  }

LABEL_57:
  sub_26C0BBAA4(v14, v15);
  v21 = *a1;
  v22 = a1[1];
LABEL_58:
  sub_26C0BB9B0(v21, v22);
  *a1 = v14;
  a1[1] = v15;
  a1[2] = v5;
  return v52;
}

uint64_t sub_26C123774@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_26C0DE5C8(a1, &v16, &v18);
  if (v3)
  {
    v8 = v17;
    *a2 = v16;
    *(a2 + 16) = v8;
    return result;
  }

  v9 = v19;
  if (v19 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v10 = v18;
  v21 = v20;
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  sub_26C0BBAA4(*a1, v11);
  v14 = sub_26C0DF2EC(a1, &v18);
  if (!v14)
  {
    sub_26C0BB9B0(*a1, a1[1]);
    sub_26C0BB344(v10, v9);
    *a1 = v12;
    a1[1] = v11;
    a1[2] = v13;
LABEL_4:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 2;
    v18 = 0;
    v19 = 0;
    LOBYTE(v20) = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  v15 = v14;
  result = sub_26C0BB9B0(v12, v11);
  *a3 = v10;
  a3[1] = v9;
  a3[2] = v21;
  a3[3] = v15;
  return result;
}

unint64_t sub_26C123918()
{
  result = qword_28047AD70;
  if (!qword_28047AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AD70);
  }

  return result;
}