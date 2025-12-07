void sub_26BEB1F1C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v61 = a4;
  v52 = a3;
  v51 = a2;
  v49[1] = a5;
  v71 = *MEMORY[0x277D85DE8];
  v7 = sub_26C00A4EC();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x28223BE20](v7);
  v55 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_26C009EDC();
  v60 = *(v63 - 8);
  v9 = MEMORY[0x28223BE20](v63);
  v50 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = v49 - v11;
  v12 = sub_26C009EAC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_26C009C8C();
  v54 = *(v59 - 8);
  v16 = MEMORY[0x28223BE20](v59);
  MEMORY[0x28223BE20](v16);
  v18 = v49 - v17;
  v62 = *(a1 + 8);
  v19 = *(a1 + 32);
  sub_26C009C3C();
  v53 = v5;
  v20 = v65;
  v21 = v66;
  v22 = *(v13 + 16);
  v49[3] = v19;
  v49[2] = OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke;
  v22(v15, v19 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v12);
  v23 = v58;
  sub_26C009E6C();
  (*(v13 + 8))(v15, v12);
  v24 = v18;
  *&v69 = v20;
  *(&v69 + 1) = v21;
  sub_26BE016A8();
  sub_26C009ECC();
  v25 = *(v60 + 8);
  v25(v23, v63);
  v26 = v20;
  v27 = v62;
  sub_26BE00258(v26, v21);
  sub_26BE82314();
  v28 = v59;
  sub_26C009C5C();
  if ((v27 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v27 >> 16)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v29 = v55;
  sub_26C00A4DC();
  v30 = sub_26C00A49C();
  v32 = v31;
  (*(v56 + 8))(v29, v57);
  if (v32 >> 60 == 15)
  {
    sub_26BE01654();
    swift_allocError();
    *v33 = 5;
    v33[112] = 1;
    swift_willThrow();
    (*(v54 + 8))(v24, v28);
    return;
  }

  v69 = xmmword_26C00BBD0;
  v70 = 0;
  v64 = bswap32(v27) >> 16;
  v67 = MEMORY[0x277D838B0];
  v68 = MEMORY[0x277CC9C18];
  v65 = &v64;
  v66 = &v65;
  __swift_project_boxed_opaque_existential_1(&v65, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v65);
  v34 = v32 >> 62;
  if ((v32 >> 62) <= 1)
  {
    if (!v34)
    {
      v35 = BYTE6(v32);
      goto LABEL_14;
    }

LABEL_12:
    if (!__OFSUB__(HIDWORD(v30), v30))
    {
      v35 = HIDWORD(v30) - v30;
      goto LABEL_14;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v35 = 0;
  if (v34 == 2)
  {
    v37 = *(v30 + 16);
    v36 = *(v30 + 24);
    v35 = v36 - v37;
    if (__OFSUB__(v36, v37))
    {
      __break(1u);
      goto LABEL_12;
    }
  }

LABEL_14:
  v38 = v53;
  sub_26BF30414(v35);
  if (!v38)
  {
    sub_26BE11228(v30, v32);
    v39 = v52 >> 62;
    if ((v52 >> 62) > 1)
    {
      if (v39 != 2)
      {
        v40 = 0;
        goto LABEL_26;
      }

      v42 = *(v51 + 16);
      v41 = *(v51 + 24);
      v40 = v41 - v42;
      if (!__OFSUB__(v41, v42))
      {
        goto LABEL_26;
      }

      __break(1u);
    }

    else if (!v39)
    {
      v40 = BYTE6(v52);
LABEL_26:
      sub_26BF30414(v40);
      sub_26BE11228(v51, v52);
      sub_26C009E6C();
      v43 = *(&v69 + 1) >> 62;
      v44 = v24;
      if ((*(&v69 + 1) >> 62) > 1)
      {
        if (v43 != 2 || (*(v69 + 24) & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }
      }

      else if (!v43 || ((v69 >> 32) & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_36:
      v45 = sub_26C00909C();
      v47 = v46;
      v49[0] = v44;
      v48 = v50;
      sub_26C009EBC();
      sub_26BE00258(v45, v47);
      sub_26BE136AC(v30, v32);
      v25(v48, v63);
      (*(v54 + 8))(v49[0], v28);
      goto LABEL_27;
    }

    if (!__OFSUB__(HIDWORD(v51), v51))
    {
      v40 = HIDWORD(v51) - v51;
      goto LABEL_26;
    }

LABEL_40:
    __break(1u);
  }

  sub_26BE136AC(v30, v32);
  (*(v54 + 8))(v24, v28);
LABEL_27:
  sub_26BE00258(v69, *(&v69 + 1));
}

uint64_t MLS.KeySchedule.init(ciphersuiteID:)@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26C009D7C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_26C009C8C();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_26C009D4C();
  sub_26C009C6C();
  return MLS.KeySchedule.init(ciphersuiteID:initSecret:)(&v10, v7, a2);
}

uint64_t MLS.KeySchedule.init(ciphersuiteID:initSecret:)@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26C009D7C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = *a1;
  result = type metadata accessor for MLS.KeySchedule(0);
  v9 = a3 + *(result + 64);
  *(v9 + 32) = 0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  if ((v7 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    *a3 = v14;
    *(a3 + 8) = v15;
    *(a3 + 24) = v16;
    *(a3 + 32) = v17;
    v11 = *(v10 + 60);
    v12 = sub_26C009C8C();
    v13 = *(v12 - 8);
    (*(v13 + 16))(a3 + v11, a2, v12);

    sub_26C009D4C();
    sub_26C009C6C();
    sub_26C009D4C();
    sub_26C009C6C();
    sub_26C009D4C();
    sub_26C009C6C();
    sub_26C009D4C();
    sub_26C009C6C();
    sub_26C009D4C();
    sub_26C009C6C();
    sub_26C009D4C();
    sub_26C009C6C();
    sub_26C009D4C();
    sub_26C009C6C();
    sub_26C009D4C();
    sub_26C009C6C();
    sub_26C009D4C();
    sub_26C009C6C();
    sub_26C009D4C();
    sub_26C009C6C();

    (*(v13 + 8))(a2, v12);
    result = sub_26BE2E258(v9, &qword_28045E6A8, &qword_26C0112B0);
    *v9 = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0;
  }

  return result;
}

uint64_t MLS.KeySchedule.init(ciphersuiteID:joinerSecret:pskSecret:context:)@<X0>(unsigned __int16 *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v122 = a5;
  v126 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v104 - v12;
  v14 = sub_26C009C8C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v106 = v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v107 = v104 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v108 = v104 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v109 = v104 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v110 = v104 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v111 = v104 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v112 = v104 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v113 = v104 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v114 = v104 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = v104 - v35;
  MEMORY[0x28223BE20](v34);
  v125 = v104 - v37;
  v38 = *a1;
  v39 = type metadata accessor for MLS.KeySchedule(0);
  v40 = a6 + *(v39 + 64);
  *(v40 + 32) = 0;
  *v40 = 0u;
  *(v40 + 16) = 0u;
  if ((v38 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v41 = v39;
    v117 = v40;
    v127 = v38 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    v42 = v133;
    v43 = v134;
    *a6 = v131;
    v115 = v132;
    *(a6 + 8) = v132;
    *(a6 + 24) = v42;
    *(a6 + 32) = v43;
    v135 = v41;
    v44 = v41[5];
    v118 = a6;
    v45 = *(v15 + 16);
    v116 = (a6 + v44);
    v121 = a2;
    v45();
    v120 = a3;
    sub_26BE2E1F0(a3, v13, &qword_28045E708, &unk_26C011370);
    v46 = *(v15 + 48);
    v47 = v46(v13, 1, v14);
    v123 = v15;
    if (v47 == 1)
    {
      v131 = sub_26BE125AC(v115);
      *&v132 = v48;
      v49 = v125;
      sub_26C009C5C();
      v50 = v14;
      if (v46(v13, 1, v14) != 1)
      {
        sub_26BE2E258(v13, &qword_28045E708, &unk_26C011370);
      }
    }

    else
    {
      v49 = v125;
      v50 = v14;
      (*(v15 + 32))(v125, v13, v14);
    }

    a6 = v118;
    v51 = *(v118 + 24);
    v52 = *(v118 + 32);
    LOBYTE(v131) = *v118;
    v132 = *(v118 + 8);
    v133 = v51;
    v134 = v52;

    v53 = v121;
    v54 = v122;
    v55 = v126;
    v56 = v119;
    sub_26BEB17D4(&v131, v49, v126, v122, v36);
    v57 = v56;
    v124 = v50;
    if (v56)
    {
      sub_26BE00258(v55, v54);
      sub_26BE2E258(v120, &qword_28045E708, &unk_26C011370);
      v58 = *(v123 + 8);
      v58(v53, v50);

      v58(v49, v50);
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      LODWORD(v121) = 0;
      LODWORD(v122) = 0;
      LODWORD(v123) = 0;
      LODWORD(v125) = 0;
      LODWORD(v126) = 0;
      v119 = v56;
      goto LABEL_12;
    }

    v63 = v135;
    v64 = v135[6];
    v65 = *(v123 + 32);
    v104[1] = v123 + 32;
    v105 = v65;
    v65(a6 + v64, v36, v50);
    v67 = *(a6 + 24);
    v66 = *(a6 + 32);
    LOBYTE(v131) = *a6;
    v132 = *(a6 + 8);
    v133 = v67;
    v134 = v66;

    v119 = v64;
    v68 = v114;
    *&v115 = 0;
    MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(a6 + v64, 0x64207265646E6573, 0xEB00000000617461, v114);

    v69 = v68;
    a3 = v124;
    v105(a6 + v63[7], v69, v124);
    v71 = *(a6 + 24);
    v70 = *(a6 + 32);
    LOBYTE(v131) = *a6;
    v132 = *(a6 + 8);
    v133 = v71;
    v134 = v70;

    v72 = v113;
    MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(a6 + v119, 0x6974707972636E65, 0xEA00000000006E6FLL, v113);

    v105(a6 + v63[8], v72, a3);
    v74 = *(a6 + 24);
    v73 = *(a6 + 32);
    LOBYTE(v131) = *a6;
    v132 = *(a6 + 8);
    v133 = v74;
    v134 = v73;

    v75 = v112;
    MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(a6 + v119, 0x726574726F707865, 0xE800000000000000, v112);
    v76 = v75;
    v36 = v126;

    v105(a6 + v63[9], v76, a3);
    v78 = *(a6 + 24);
    v77 = *(a6 + 32);
    LOBYTE(v131) = *a6;
    v132 = *(a6 + 8);
    v133 = v78;
    v134 = v77;

    v79 = v111;
    MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(a6 + v119, 0x69746E6568747561, 0xEE006E6F69746163, v111);
    a2 = v63;

    v105(a6 + v63[10], v79, a3);
    v81 = *(a6 + 24);
    v80 = *(a6 + 32);
    LOBYTE(v131) = *a6;
    v132 = *(a6 + 8);
    v133 = v81;
    v134 = v80;

    v82 = v110;
    MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(a6 + v119, 0x6C616E7265747865, 0xE800000000000000, v110);

    v83 = a2[11];
    v105(&v83[a6], v82, a3);
    v85 = *(a6 + 24);
    v84 = *(a6 + 32);
    LOBYTE(v131) = *a6;
    v132 = *(a6 + 8);
    v133 = v85;
    v134 = v84;

    v86 = v109;
    MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(a6 + v119, 0x6D7269666E6F63, 0xE700000000000000, v109);
    v13 = v83;

    v105(a6 + a2[12], v86, a3);
    v88 = *(a6 + 24);
    v87 = *(a6 + 32);
    LOBYTE(v131) = *a6;
    v132 = *(a6 + 8);
    v133 = v88;
    v134 = v87;

    v89 = v108;
    MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(a6 + v119, 0x68737265626D656DLL, 0xEA00000000007069, v108);

    v105(a6 + a2[13], v89, a3);
    v91 = *(a6 + 24);
    v90 = *(a6 + 32);
    LOBYTE(v131) = *a6;
    v132 = *(a6 + 8);
    v133 = v91;
    v134 = v90;

    v14 = v107;
    v6 = 0;
    MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(a6 + v119, 0x6974706D75736572, 0xEA00000000006E6FLL, v107);
  }

  v105(a6 + a2[14], v14, a3);
  v93 = *(a6 + 24);
  v92 = *(a6 + 32);
  LOBYTE(v131) = *a6;
  v132 = *(a6 + 8);
  v133 = v93;
  v134 = v92;

  v94 = v106;
  MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(a6 + v119, 1953066601, 0xE400000000000000, v106);
  v119 = v6;
  if (v6)
  {
    sub_26BE00258(v36, v122);
    sub_26BE2E258(v120, &qword_28045E708, &unk_26C011370);
    v58 = *(v123 + 8);
    v58(v121, a3);

    v58(v125, a3);
    LODWORD(v126) = 0;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    LODWORD(v121) = 1;
    LODWORD(v122) = 1;
    LODWORD(v123) = 1;
    LODWORD(v125) = 1;
    v57 = v115;
    goto LABEL_12;
  }

  v98 = a6;
  v99 = v123;

  v105(v98 + v135[15], v94, a3);
  v101 = *(v98 + 24);
  v100 = *(v98 + 32);
  v127 = *v98;
  v128 = *(v98 + 8);
  v129 = v101;
  v130 = v100;

  v102 = v119;
  MLS.Cryptography.Ciphersuite.deriveHPKEPrivateKey(_:)(&v13[v98], &v131);
  v119 = v102;
  if (v102)
  {
    sub_26BE00258(v126, v122);
    sub_26BE2E258(v120, &qword_28045E708, &unk_26C011370);
    v58 = *(v99 + 8);
    v58(v121, a3);

    v58(v125, a3);
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    LODWORD(v121) = 1;
    LODWORD(v122) = 1;
    LODWORD(v123) = 1;
    LODWORD(v125) = 1;
    LODWORD(v126) = 1;
    v57 = v115;
    a6 = v118;
LABEL_12:

    v95 = v124;
    v58(v116, v124);
    if (v57)
    {
      if (!v59)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v58((a6 + v135[6]), v95);
      if (!v59)
      {
LABEL_14:
        v96 = v135;
        if (!v60)
        {
          goto LABEL_15;
        }

        goto LABEL_31;
      }
    }

    v58((a6 + v135[7]), v95);
    v96 = v135;
    if (!v60)
    {
LABEL_15:
      if (!v61)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }

LABEL_31:
    v58((a6 + v96[8]), v95);
    if (!v61)
    {
LABEL_16:
      if (!v62)
      {
        goto LABEL_17;
      }

      goto LABEL_33;
    }

LABEL_32:
    v58((a6 + v96[9]), v95);
    if (!v62)
    {
LABEL_17:
      if (!v121)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_33:
    v58((a6 + v96[10]), v95);
    if (!v121)
    {
LABEL_19:
      if (v122)
      {
        v58((a6 + v96[12]), v95);
        if (!v123)
        {
LABEL_21:
          if (!v125)
          {
            goto LABEL_22;
          }

          goto LABEL_27;
        }
      }

      else if (!v123)
      {
        goto LABEL_21;
      }

      v58((a6 + v96[13]), v95);
      if (!v125)
      {
LABEL_22:
        if (!v126)
        {
          return sub_26BE2E258(v117, &qword_28045E6A8, &qword_26C0112B0);
        }

LABEL_23:
        v58((a6 + v96[15]), v95);
        return sub_26BE2E258(v117, &qword_28045E6A8, &qword_26C0112B0);
      }

LABEL_27:
      v58((a6 + v96[14]), v95);
      if (!v126)
      {
        return sub_26BE2E258(v117, &qword_28045E6A8, &qword_26C0112B0);
      }

      goto LABEL_23;
    }

LABEL_18:
    v58((a6 + v96[11]), v95);
    goto LABEL_19;
  }

  sub_26BE00258(v126, v122);
  sub_26BE2E258(v120, &qword_28045E708, &unk_26C011370);
  v103 = *(v99 + 8);
  v103(v121, a3);

  v103(v125, a3);
  return sub_26BEB628C(&v131, v117);
}

uint64_t MLS.KeySchedule.init(ciphersuiteID:initSecret:commitSecret:pskSecret:context:)@<X0>(unsigned __int16 *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a5;
  v30 = a6;
  v27 = a7;
  v28 = a4;
  v31 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  v13 = sub_26C009C8C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v15);
  v20 = &v25 - v19;
  v21 = *a1;
  if ((v21 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v33 = v21 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    sub_26BEB1F1C(&v32, v29, v30, a3, v20);
    if (v7)
    {
      sub_26BE00258(v29, v30);
      v22 = *(v14 + 8);
      v22(v28, v13);
      v22(a3, v13);
      v22(v31, v13);
    }

    else
    {
      v26 = a3;
      v32 = v21;
      v23 = *(v14 + 16);
      v23(v17, v20, v13);
      v23(v12, v28, v13);
      (*(v14 + 56))(v12, 0, 1, v13);
      MLS.KeySchedule.init(ciphersuiteID:joinerSecret:pskSecret:context:)(&v32, v17, v12, v29, v30, v27);

      v24 = *(v14 + 8);
      v24(v28, v13);
      v24(v26, v13);
      v24(v31, v13);
      return (v24)(v20, v13);
    }
  }

  return result;
}

uint64_t MLS.KeySchedule.init(ciphersuiteID:initSecret:context:)@<X0>(unsigned __int16 *a1@<X0>, char *a2@<X1>, char *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a4;
  v35 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  MEMORY[0x28223BE20](v9 - 8);
  v34 = &v29 - v10;
  v11 = sub_26C009C8C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  result = MEMORY[0x28223BE20](v14);
  v20 = &v29 - v19;
  v21 = *a1;
  if ((v21 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v32 = v18;
    v33 = a5;
    LOBYTE(v36[0]) = v21 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    v22 = v38;
    v36[0] = sub_26BE125AC(v38);
    v36[1] = v23;
    sub_26C009C5C();
    sub_26BEB1F1C(&v37, v35, v39, v16, v20);
    if (v5)
    {
      sub_26BE00258(v35, v39);
      v24 = *(v12 + 8);
      v24(a2, v11);
      v24(v16, v11);
    }

    else
    {
      v31 = a2;
      v30 = *(v12 + 8);
      v30(v16, v11);
      LOWORD(v36[0]) = v21;
      v25 = v32;
      (*(v12 + 16))(v32, v20, v11);
      v37 = sub_26BE125AC(v22);
      *&v38 = v26;
      v27 = v34;
      sub_26C009C5C();
      (*(v12 + 56))(v27, 0, 1, v11);
      MLS.KeySchedule.init(ciphersuiteID:joinerSecret:pskSecret:context:)(v36, v25, v27, v35, v39, v33);

      v28 = v30;
      v30(v31, v11);
      return v28(v20, v11);
    }
  }

  return result;
}

uint64_t MLS.KeySchedule.nextRaw(commitSecret:pskSecret:context:)@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a2;
  v46 = a3;
  v47 = a4;
  v45 = a1;
  v40 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v37 - v7;
  v8 = sub_26C009C8C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v38 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v37 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v37 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - v21;
  v23 = *v5;
  v24 = *(type metadata accessor for MLS.KeySchedule(0) + 60);
  v42 = v9;
  v25 = *(v9 + 16);
  v25(v22, &v5[v24], v8);
  v25(v20, v45, v8);
  v45 = v17;
  v25(v17, v43, v8);
  v50 = v23;
  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
  v26 = v49;
  v41 = v14;
  v43 = v22;
  v27 = v44;
  sub_26BEB1F1C(&v48, v46, v47, v20, v14);
  if (v27)
  {
    v28 = *(v42 + 8);
    v28(v45, v8);
    v28(v20, v8);
    v28(v43, v8);
  }

  else
  {
    v44 = v26;
    if (v23)
    {
      v30 = 2;
    }

    else
    {
      v30 = 1;
    }

    v48 = v30;
    v31 = v38;
    v25(v38, v41, v8);
    v32 = v39;
    v25(v39, v45, v8);
    v33 = v42;
    (*(v42 + 56))(v32, 0, 1, v8);
    v35 = v46;
    v34 = v47;
    sub_26BE00608(v46, v47);
    MLS.KeySchedule.init(ciphersuiteID:joinerSecret:pskSecret:context:)(&v48, v31, v32, v35, v34, v40);

    v36 = *(v33 + 8);
    v36(v41, v8);
    v36(v45, v8);
    v36(v20, v8);
    return (v36)(v43, v8);
  }
}

uint64_t static MLS.KeySchedule.welcomeSecretRaw(ciphersuiteID:joinerSecret:pskSecret:)@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v31 = a2;
  v32 = sub_26C009EDC();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C009EAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_26C009C8C();
  v11 = MEMORY[0x28223BE20](v39);
  result = MEMORY[0x28223BE20](v11);
  v16 = v23 - v15;
  v17 = *a1;
  if ((v17 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v28 = v13;
    LOBYTE(v33) = v17 != 1;
    v23[1] = v14;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    v27 = v35;
    v26 = v36;
    v18 = v38;
    v25 = v37;
    v19 = v29;
    sub_26C009C3C();
    v29 = v19;
    v24 = a3;
    v21 = v35;
    v20 = v36;
    (*(v8 + 16))(v10, v18 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v7);
    sub_26C009E6C();
    (*(v8 + 8))(v10, v7);
    v33 = v21;
    v34 = v20;
    sub_26BE016A8();
    sub_26C009ECC();
    (*(v30 + 8))(v6, v32);
    sub_26BE00258(v21, v20);
    sub_26BE82314();
    v22 = v39;
    sub_26C009C5C();
    LOBYTE(v35) = v27;
    v36 = v26;
    v37 = v25;
    v38 = v18;
    MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(v16, 0x656D6F636C6577, 0xE700000000000000, v24);
    (*(v28 + 8))(v16, v22);
  }

  return result;
}

uint64_t static MLS.KeySchedule.senderDataKeys(ciphersuiteID:senderDataSecret:ciphertext:)@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a3;
  v33 = a4;
  v9 = sub_26C009C8C();
  v10 = MEMORY[0x28223BE20](v9);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v27 - v14;
  v16 = *a1;
  if ((v16 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v29 = v13;
    v30 = v12;
    v28 = a5;
    v31 = result;
    v39 = v16 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    v17 = v34;
    v18 = v35;
    v19 = v36;
    v21 = v37;
    v20 = v38;
    MLS.Cryptography.Ciphersuite.deriveSenderDataKey(secret:ciphertext:)(a2, v32, v33, v15);
    if (v5)
    {
    }

    else
    {
      v34 = v17;
      v35 = v18;
      v36 = v19;
      v37 = v21;
      v38 = v20;
      v22 = v29;
      MLS.Cryptography.Ciphersuite.deriveSenderDataNonce(secret:ciphertext:)(a2, v32, v33, v29);

      v23 = v31;
      v24 = *(v30 + 32);
      v25 = v28;
      v24(v28, v15, v31);
      v26 = type metadata accessor for MLS.KeyAndNonce(0);
      return (v24)(v25 + *(v26 + 20), v22, v23);
    }
  }

  return result;
}

uint64_t MLS.KeySchedule.doExport(label:context:size:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v61 = a2;
  v7 = v6;
  v58 = a4;
  v59 = a5;
  v57 = a3;
  v60 = a1;
  v54 = a6;
  v70 = *MEMORY[0x277D85DE8];
  v8 = sub_26C009EDC();
  v55 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C00A4EC();
  v56 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26C009C8C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v16) = *v6;
  v18 = *(v6 + 24);
  v19 = *(v6 + 32);
  LOBYTE(v66) = v16;
  v67 = *(v7 + 8);
  v68 = v18;
  v69 = v19;
  v20 = *(type metadata accessor for MLS.KeySchedule(0) + 36);

  v21 = v7 + v20;
  v22 = v62;
  MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(v21, v60, v61, v17);

  if (!v22)
  {
    v52 = v8;
    v53 = 0;
    v60 = v10;
    v24 = v17;
    v26 = *(v7 + 24);
    v25 = *(v7 + 32);
    LOBYTE(v66) = *v7;
    v67 = *(v7 + 8);
    v68 = v26;
    v69 = v25;

    v61 = MLS.Cryptography.Ciphersuite.digestHash(_:)(v57, v58);
    v62 = v27;

    v28 = v59;
    if ((v59 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v59 >> 16))
    {
      v29 = *(v7 + 32);

      sub_26C00A4DC();
      v30 = sub_26C00A49C();
      v32 = v31;
      (*(v56 + 8))(v13, v11);
      if (v32 >> 60 == 15)
      {
        sub_26BE01654();
        swift_allocError();
        *v33 = 5;
        v33[112] = 1;
        swift_willThrow();
        sub_26BE00258(v61, v62);
        (*(v15 + 8))(v24, v14);
      }

      v57 = v29;
      v58 = v30;
      v64 = xmmword_26C00BBD0;
      v65 = 0;
      v63 = bswap32(v28) >> 16;
      v68 = MEMORY[0x277D838B0];
      v69 = MEMORY[0x277CC9C18];
      v66 = &v63;
      *&v67 = &v64;
      __swift_project_boxed_opaque_existential_1(&v66, MEMORY[0x277D838B0]);
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v66);
      v34 = v32 >> 62;
      v35 = v14;
      v36 = v15;
      if ((v32 >> 62) > 1)
      {
        v38 = 0;
        v37 = v24;
        v39 = v55;
        if (v34 != 2)
        {
          goto LABEL_16;
        }

        v41 = *(v58 + 16);
        v40 = *(v58 + 24);
        v38 = v40 - v41;
        if (!__OFSUB__(v40, v41))
        {
          goto LABEL_16;
        }

        __break(1u);
      }

      else
      {
        v37 = v24;
        if (!v34)
        {
          v38 = BYTE6(v32);
LABEL_15:
          v39 = v55;
LABEL_16:
          v42 = v53;
          sub_26BF30414(v38);
          if (v42)
          {
            sub_26BE136AC(v58, v32);
            sub_26BE00258(v61, v62);
            (*(v36 + 8))(v37, v14);
            sub_26BE00258(v64, *(&v64 + 1));
          }

          sub_26BE11228(v58, v32);
          v43 = v62 >> 62;
          if ((v62 >> 62) > 1)
          {
            if (v43 != 2)
            {
              v44 = 0;
              goto LABEL_27;
            }

            v46 = *(v61 + 16);
            v45 = *(v61 + 24);
            v44 = v45 - v46;
            if (!__OFSUB__(v45, v46))
            {
              goto LABEL_27;
            }

            __break(1u);
          }

          else if (!v43)
          {
            v44 = BYTE6(v62);
LABEL_27:
            sub_26BF30414(v44);
            sub_26BE11228(v61, v62);
            sub_26C009E6C();
            v47 = *(&v64 + 1) >> 62;
            if ((*(&v64 + 1) >> 62) > 1)
            {
              if (v47 != 2 || (*(v64 + 24) & 0x8000000000000000) == 0)
              {
                goto LABEL_39;
              }
            }

            else if (!v47 || ((v64 >> 32) & 0x8000000000000000) == 0)
            {
              goto LABEL_39;
            }

            __break(1u);
LABEL_39:
            v48 = sub_26C00909C();
            v50 = v49;
            v51 = v60;
            sub_26C009EBC();
            sub_26BE00258(v48, v50);
            sub_26BE136AC(v58, v32);
            sub_26BE00258(v61, v62);
            (*(v39 + 8))(v51, v52);
            (*(v36 + 8))(v37, v35);
            sub_26BE00258(v64, *(&v64 + 1));
          }

          if (!__OFSUB__(HIDWORD(v61), v61))
          {
            v44 = HIDWORD(v61) - v61;
            goto LABEL_27;
          }

LABEL_43:
          __break(1u);
        }
      }

      if (!__OFSUB__(HIDWORD(v58), v58))
      {
        v38 = HIDWORD(v58) - v58;
        goto LABEL_15;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    __break(1u);
    goto LABEL_42;
  }

  return result;
}

uint64_t MLS.KeySchedule.sendExternalInit(externalPublicKey:)(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  return (*(v5 + 32))(a1, 0xD000000000000014, 0x800000026C02C280, *(v2 + 8), v4, v5);
}

void sub_26BEB5224()
{
  sub_26C009C3C();
  v1 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    v2 = 0;
    if (v1 != 2)
    {
      goto LABEL_10;
    }

    v4 = *(v7 + 16);
    v3 = *(v7 + 24);
    v2 = v3 - v4;
    if (!__OFSUB__(v3, v4))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v1)
  {
    v2 = BYTE6(v8);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v7), v7))
  {
LABEL_15:
    __break(1u);
    return;
  }

  v2 = HIDWORD(v7) - v7;
LABEL_10:
  v5 = sub_26BF30414(v2);
  if (v0)
  {
    sub_26BE00258(v7, v8);
    return;
  }

  v6 = v5;
  sub_26BE11228(v7, v8);
  sub_26BE00258(v7, v8);
  if (__OFADD__(v6, v2))
  {
    __break(1u);
    goto LABEL_15;
  }
}

void sub_26BEB5330(_BYTE *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    v3 = 512;
  }

  else
  {
    v3 = 256;
  }

  LOWORD(v27) = v3;
  v4 = MEMORY[0x277D838B0];
  v5 = MEMORY[0x277CC9C18];
  v32 = MEMORY[0x277D838B0];
  v33 = MEMORY[0x277CC9C18];
  v30 = &v27;
  v31 = &v27 + 2;
  __swift_project_boxed_opaque_existential_1(&v30, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v30);
  v6 = type metadata accessor for MLS.KeySchedule(0);
  sub_26BEB5224();
  if (!v1)
  {
    v8 = v7 + 2;
    if (__OFADD__(v7, 2))
    {
      __break(1u);
    }

    else
    {
      sub_26BEB5224();
      v9 = __OFADD__(v8, v7);
      v8 += v7;
      if (!v9)
      {
        sub_26BEB5224();
        v9 = __OFADD__(v8, v7);
        v8 += v7;
        if (!v9)
        {
          sub_26BEB5224();
          v9 = __OFADD__(v8, v10);
          v11 = v8 + v10;
          if (v9)
          {
            goto LABEL_26;
          }

          sub_26BEB5224();
          v9 = __OFADD__(v11, v12);
          v13 = v11 + v12;
          if (v9)
          {
            __break(1u);
          }

          else
          {
            sub_26BEB5224();
            v9 = __OFADD__(v13, v14);
            v15 = v13 + v14;
            if (!v9)
            {
              sub_26BEB5224();
              v9 = __OFADD__(v15, v16);
              v17 = v15 + v16;
              if (v9)
              {
                __break(1u);
              }

              else
              {
                sub_26BEB5224();
                v9 = __OFADD__(v17, v18);
                v19 = v17 + v18;
                if (!v9)
                {
                  sub_26BEB5224();
                  v9 = __OFADD__(v19, v20);
                  v21 = v19 + v20;
                  if (!v9)
                  {
                    sub_26BEB5224();
                    v9 = __OFADD__(v21, v22);
                    v8 = v21 + v22;
                    if (!v9)
                    {
                      sub_26BEB5224();
                      v25 = 0;
                      goto LABEL_20;
                    }

LABEL_35:
                    __break(1u);
                    goto LABEL_36;
                  }

LABEL_34:
                  __break(1u);
                  goto LABEL_35;
                }
              }

              __break(1u);
              goto LABEL_34;
            }
          }

          __break(1u);
        }

LABEL_19:
        __break(1u);
LABEL_20:
        v9 = __OFADD__(v8, v7);
        v11 = v8 + v7;
        if (!v9)
        {
          sub_26BE2E1F0(&a1[*(v6 + 64)], &v27, &qword_28045E6A8, &qword_26C0112B0);
          if (!v28)
          {
LABEL_27:
            sub_26BE2E258(&v27, &qword_28045E6A8, &qword_26C0112B0);
            LOBYTE(v27) = 0;
            v32 = v4;
            v33 = v5;
            v30 = &v27;
            v31 = &v27 + 1;
            __swift_project_boxed_opaque_existential_1(&v30, v4);
            sub_26C00908C();
            __swift_destroy_boxed_opaque_existential_1(&v30);
            v24 = 1;
            goto LABEL_28;
          }

          sub_26BE2E410(&v27, &v30);
          v26 = 1;
          v28 = v4;
          v29 = v5;
          *&v27 = &v26;
          *(&v27 + 1) = &v27;
          __swift_project_boxed_opaque_existential_1(&v27, v4);
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(&v27);
          sub_26BE10BE4(&v30);
          v4 = v23;
          __swift_destroy_boxed_opaque_existential_1(&v30);
          if (v25)
          {
            return;
          }

          v24 = v4 + 1;
          if (!__OFADD__(v4, 1))
          {
LABEL_28:
            if (!__OFADD__(v11, v24))
            {
              return;
            }

LABEL_37:
            __break(1u);
            return;
          }

          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }
    }

    __break(1u);
    goto LABEL_19;
  }
}

uint64_t sub_26BEB563C@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v2 = sub_26C009C8C();
  v3 = *(v2 - 8);
  v70 = v2;
  v71 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v59 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v59 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v59 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v59 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v66 = &v59 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v67 = &v59 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v68 = &v59 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v69 = &v59 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v59 - v28;
  MEMORY[0x28223BE20](v27);
  v81 = &v59 - v30;
  v31 = sub_26BEE6180();
  if ((v31 & 0x10000) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    *v35 = 1;
    return swift_willThrow();
  }

  v32 = v31;
  result = sub_26BF2F7B0();
  if (v1)
  {
    return result;
  }

  v64 = v29;
  *&v78 = result;
  *(&v78 + 1) = v34;
  sub_26C009C5C();
  *&v78 = sub_26BF2F7B0();
  *(&v78 + 1) = v36;
  sub_26C009C5C();
  *&v78 = sub_26BF2F7B0();
  *(&v78 + 1) = v37;
  sub_26C009C5C();
  *&v78 = sub_26BF2F7B0();
  *(&v78 + 1) = v38;
  sub_26C009C5C();
  *&v78 = sub_26BF2F7B0();
  *(&v78 + 1) = v39;
  sub_26C009C5C();
  *&v78 = sub_26BF2F7B0();
  *(&v78 + 1) = v40;
  sub_26C009C5C();
  *&v78 = sub_26BF2F7B0();
  *(&v78 + 1) = v41;
  sub_26C009C5C();
  *&v78 = sub_26BF2F7B0();
  *(&v78 + 1) = v42;
  sub_26C009C5C();
  *&v78 = sub_26BF2F7B0();
  *(&v78 + 1) = v43;
  sub_26C009C5C();
  *&v78 = sub_26BF2F7B0();
  *(&v78 + 1) = v44;
  sub_26C009C5C();
  *&v78 = sub_26BF2F7B0();
  *(&v78 + 1) = v45;
  sub_26C009C5C();
  result = sub_26BEE62D4();
  if ((result & 0x100) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    v47 = 1;
    goto LABEL_15;
  }

  if (result)
  {
    if (result == 1)
    {
      result = sub_26BE10E8C();
      goto LABEL_12;
    }

    sub_26BE01600();
    swift_allocError();
    v47 = 5;
LABEL_15:
    *v46 = v47;
    swift_willThrow();
    v56 = *(v71 + 8);
    v57 = v6;
    v58 = v70;
    v56(v57, v70);
    v56(v9, v58);
    v56(v12, v58);
    v56(v15, v58);
    v56(v18, v58);
    v56(v66, v58);
    v56(v67, v58);
    v56(v68, v58);
    v56(v69, v58);
    v56(v64, v58);
    return (v56)(v81, v58);
  }

  v80 = 0;
  v78 = 0u;
  v79 = 0u;
LABEL_12:
  if (v32 - 3 < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v72[0]) = v32 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    v62 = v74;
    v61 = v75;
    v60 = v76;
    v59 = v77;
    v63 = type metadata accessor for MLS.KeySchedule(0);
    v48 = v63[5];
    v49 = v70;
    v71 = *(v71 + 32);
    v50 = v65;
    (v71)(v65 + v48, v81, v70);
    (v71)(v50 + v63[6], v64, v49);
    (v71)(v50 + v63[7], v69, v49);
    (v71)(v50 + v63[8], v68, v49);
    (v71)(v50 + v63[9], v67, v49);
    (v71)(v50 + v63[10], v66, v49);
    (v71)(v50 + v63[11], v18, v49);
    v51 = v63;
    v52 = v15;
    v53 = v71;
    (v71)(v50 + v63[12], v52, v49);
    v53(v50 + v51[13], v12, v49);
    v53(v50 + v51[14], v9, v49);
    v53(v50 + v51[15], v6, v49);
    v72[0] = v78;
    v72[1] = v79;
    v73 = v80;
    v54 = v50 + v51[16];
    *(v54 + 32) = 0;
    *v54 = 0u;
    *(v54 + 16) = 0u;
    *v50 = v62;
    *(v50 + 8) = v61;
    v55 = v59;
    *(v50 + 24) = v60;
    *(v50 + 32) = v55;
    return sub_26BEB628C(v72, v54);
  }

  return result;
}

uint64_t sub_26BEB628C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6A8, &qword_26C0112B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BEB6310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26C009C8C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26BEB63D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_26C009C8C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26BEB6474(uint64_t a1)
{
  sub_26C009C8C();
  if (v1 <= 0x3F)
  {
    sub_26BEB6528(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BEB6528(uint64_t a1)
{
  if (!qword_28045ED38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E6D8, &qword_26C011338);
    v1 = sub_26C00AAAC();
    if (!v2)
    {
      atomic_store(v1, &qword_28045ED38);
    }
  }
}

uint64_t sub_26BEB658C(uint64_t a1)
{
  v2 = type metadata accessor for MLS.Cryptography.MACTag(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26BEB65E8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1;
    v40 = MEMORY[0x277D84F90];
    sub_26BECB974(0, v3, 0);
    v5 = v40;
    v6 = v4 + 56;
    v7 = sub_26C00AB4C();
    v8 = 0;
    v32 = v4 + 64;
    v33 = v3;
    v34 = v4 + 56;
    v35 = v4;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      v36 = v8;
      v38 = *(v4 + 36);
      v11 = (*(v4 + 48) + 16 * v7);
      v39 = v5;
      v12 = *v11;
      v13 = v11[1];
      sub_26BE00608(*v11, v13);
      v37 = v2;
      sub_26BF87240(v12, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
      sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0, MEMORY[0x277D83958]);
      sub_26C00A3EC();

      sub_26C00A5AC();
      v14 = sub_26C00A66C();
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v21 = v13;
      v5 = v39;
      sub_26BE00258(v12, v21);
      v23 = *(v39 + 16);
      v22 = *(v39 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_26BECB974((v22 > 1), v23 + 1, 1);
        v5 = v39;
      }

      *(v5 + 16) = v23 + 1;
      v24 = (v5 + 32 * v23);
      v24[4] = v14;
      v24[5] = v16;
      v24[6] = v18;
      v24[7] = v20;
      v4 = v35;
      v9 = 1 << *(v35 + 32);
      if (v7 >= v9)
      {
        goto LABEL_22;
      }

      v6 = v34;
      v25 = *(v34 + 8 * v10);
      if ((v25 & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (v38 != *(v35 + 36))
      {
        goto LABEL_24;
      }

      v26 = v25 & (-2 << (v7 & 0x3F));
      if (v26)
      {
        v9 = __clz(__rbit64(v26)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v10 << 6;
        v28 = v10 + 1;
        v29 = (v32 + 8 * v10);
        while (v28 < (v9 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            sub_26BE2E070(v7, v38, 0);
            v9 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        sub_26BE2E070(v7, v38, 0);
      }

LABEL_4:
      v8 = v36 + 1;
      v7 = v9;
      v2 = v37;
      if (v36 + 1 == v33)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_26BEB6938(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1;
    v40 = MEMORY[0x277D84F90];
    sub_26BECB974(0, v3, 0);
    v5 = v40;
    v6 = v4 + 64;
    v7 = sub_26C00AB4C();
    v8 = 0;
    v32 = v4 + 72;
    v33 = v3;
    v34 = v4 + 64;
    v35 = v4;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      v36 = v8;
      v38 = *(v4 + 36);
      v11 = (*(v4 + 48) + 16 * v7);
      v39 = v5;
      v12 = *v11;
      v13 = v11[1];
      sub_26BE00608(*v11, v13);
      v37 = v2;
      sub_26BF87240(v12, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
      sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0, MEMORY[0x277D83958]);
      sub_26C00A3EC();

      sub_26C00A5AC();
      v14 = sub_26C00A66C();
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v21 = v13;
      v5 = v39;
      sub_26BE00258(v12, v21);
      v23 = *(v39 + 16);
      v22 = *(v39 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_26BECB974((v22 > 1), v23 + 1, 1);
        v5 = v39;
      }

      *(v5 + 16) = v23 + 1;
      v24 = (v5 + 32 * v23);
      v24[4] = v14;
      v24[5] = v16;
      v24[6] = v18;
      v24[7] = v20;
      v4 = v35;
      v9 = 1 << *(v35 + 32);
      if (v7 >= v9)
      {
        goto LABEL_22;
      }

      v6 = v34;
      v25 = *(v34 + 8 * v10);
      if ((v25 & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (v38 != *(v35 + 36))
      {
        goto LABEL_24;
      }

      v26 = v25 & (-2 << (v7 & 0x3F));
      if (v26)
      {
        v9 = __clz(__rbit64(v26)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v10 << 6;
        v28 = v10 + 1;
        v29 = (v32 + 8 * v10);
        while (v28 < (v9 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            sub_26BE2E070(v7, v38, 0);
            v9 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        sub_26BE2E070(v7, v38, 0);
      }

LABEL_4:
      v8 = v36 + 1;
      v7 = v9;
      v2 = v37;
      if (v36 + 1 == v33)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_26BEB6C88@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 104);
  if (v3)
  {
    v4 = v1;
    v89 = a1;
    swift_beginAccess();
    sub_26BE295A0(v3 + 40, &v72);

    sub_26BE1118C(v84);
    if (v2)
    {
      sub_26BE29710(&v72);
    }

    else
    {
      sub_26BE29710(&v72);
      sub_26BEB8494(v69, v71);
      v66 = v69[6];
      v67 = v69[7];
      v68 = v70;
      v62 = v69[2];
      v63 = v69[3];
      v65 = v69[5];
      v64 = v69[4];
      v61 = v69[1];
      v60 = v69[0];
      v36 = 0;
      v59 = sub_26BEB8C30();

      sub_26BF9E81C(v7);
      if (*v1)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      v35 = v8;
      v9 = v85;
      v10 = v86;
      __swift_project_boxed_opaque_existential_1(v84, v85);
      v11 = *(v10 + 8);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v34[1] = v34;
      v13 = *(AssociatedTypeWitness - 8);
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v15 = v34 - v14;
      (*(v11 + 32))(v9, v11);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v17 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v19 = v18;
      (*(v13 + 8))(v15, AssociatedTypeWitness);
      *(&v57[5] + 8) = v65;
      *(&v57[6] + 8) = v66;
      *(&v57[7] + 8) = v67;
      *(&v57[1] + 8) = v61;
      *(&v57[2] + 8) = v62;
      *(&v57[3] + 8) = v63;
      *(&v57[4] + 8) = v64;
      LOWORD(v56) = v35;
      *(&v56 + 1) = v17;
      *&v57[0] = v19;
      *(v57 + 8) = v60;
      *(&v57[8] + 1) = v68;
      *v58 = v59;
      *&v58[8] = xmmword_26C00BBD0;
      v20 = v36;
      sub_26BEC3978((v4 + 8));
      if (v20)
      {

        v80 = v57[7];
        v81 = v57[8];
        v82 = *v58;
        v83 = *&v58[16];
        v76 = v57[3];
        v77 = v57[4];
        v78 = v57[5];
        v79 = v57[6];
        v72 = v56;
        v73 = v57[0];
        v74 = v57[1];
        v75 = v57[2];
        sub_26BE2E01C(&v72);
        __swift_destroy_boxed_opaque_existential_1(v71);
      }

      else
      {
        v80 = v57[7];
        v81 = v57[8];
        v82 = *v58;
        v76 = v57[3];
        v77 = v57[4];
        v78 = v57[5];
        v79 = v57[6];
        v72 = v56;
        v73 = v57[0];
        v74 = v57[1];
        v75 = v57[2];
        v52 = v57[7];
        v53 = v57[8];
        v54 = *v58;
        v48 = v57[3];
        v49 = v57[4];
        v50 = v57[5];
        v51 = v57[6];
        v44 = v56;
        v45 = v57[0];
        v83 = *&v58[16];
        v55 = *&v58[16];
        v46 = v57[1];
        v47 = v57[2];
        sub_26BE2DFC0(&v72, v42);
        v21 = MLS.KeyPackage.refHash.getter();
        v23 = v22;
        sub_26BE2E01C(&v72);
        v87[8] = v57[7];
        v87[9] = v57[8];
        v87[10] = *v58;
        v88 = *&v58[16];
        v87[4] = v57[3];
        v87[5] = v57[4];
        v87[6] = v57[5];
        v87[7] = v57[6];
        v87[0] = v56;
        v87[1] = v57[0];
        v87[2] = v57[1];
        v87[3] = v57[2];
        sub_26BE2DFC0(v87, v40);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v40[0] = *(v4 + 80);
        sub_26BE56D08(v87, v21, v23, isUniquelyReferenced_nonNull_native);
        sub_26BE00258(v21, v23);
        *(v4 + 80) = *&v40[0];
        sub_26BE038A8(v84, v38);
        sub_26BE038A8(v71, &v39);
        v42[8] = v57[7];
        v42[9] = v57[8];
        v42[10] = *v58;
        v42[4] = v57[3];
        v42[5] = v57[4];
        v42[6] = v57[5];
        v42[7] = v57[6];
        v42[0] = v56;
        v42[1] = v57[0];
        v42[2] = v57[1];
        v42[3] = v57[2];
        v40[8] = v57[7];
        v40[9] = v57[8];
        v40[10] = *v58;
        v40[4] = v57[3];
        v40[5] = v57[4];
        v40[6] = v57[5];
        v40[7] = v57[6];
        v40[0] = v56;
        v40[1] = v57[0];
        v43 = *&v58[16];
        v41 = *&v58[16];
        v40[2] = v57[1];
        v40[3] = v57[2];
        sub_26BE2DFC0(v42, v37);
        v25 = MLS.KeyPackage.refHash.getter();
        v27 = v26;
        sub_26BE2E01C(v42);
        sub_26BE2E07C(v38, v37);
        sub_26BE4CFD8(v37, v25, v27);

        sub_26BE2E0D8(v38);
        __swift_destroy_boxed_opaque_existential_1(v71);
        v28 = v57[8];
        v29 = v89;
        *(v89 + 128) = v57[7];
        *(v29 + 144) = v28;
        *(v29 + 160) = *v58;
        *(v29 + 176) = *&v58[16];
        v30 = v57[4];
        *(v29 + 64) = v57[3];
        *(v29 + 80) = v30;
        v31 = v57[6];
        *(v29 + 96) = v57[5];
        *(v29 + 112) = v31;
        v32 = v57[0];
        *v29 = v56;
        *(v29 + 16) = v32;
        v33 = v57[2];
        *(v29 + 32) = v57[1];
        *(v29 + 48) = v33;
      }

      return __swift_destroy_boxed_opaque_existential_1(v84);
    }
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v6 = 36;
    v6[112] = 0;
    return swift_willThrow();
  }
}

void MLS.ClientState.joinGroup(welcome:ratchetTree:)(__int128 *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X8>)
{
  v6 = *a2;
  v114 = *a1;
  MLS.Group.Message.asWelcome()(v126);
  if (v4)
  {
    return;
  }

  v101 = a3;
  v134 = 0;
  v7 = *v126;
  v9 = *&v126[24];
  v8 = *&v126[16];
  v103 = *&v126[8];
  v10 = sub_26BF2B7B8();
  v11 = *(v3 + 80);

  v13 = sub_26BEBCB50(v12, v10);

  v104 = v8;
  v102 = v3;
  if (*(v13 + 2) != 1 || (sub_26BEB8194(v13, v126), v14 = *&v126[8], *&v126[8] >> 60 == 15))
  {
    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v15 = sub_26C009A5C();
    __swift_project_value_buffer(v15, qword_280478E70);

    v16 = sub_26C009A3C();
    v17 = sub_26C00AA0C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      v19 = *(v13 + 2);

      *(v18 + 4) = v19;

      _os_log_impl(&dword_26BDFE000, v16, v17, "Join failed, found %ld matching key package references", v18, 0xCu);
      MEMORY[0x26D69A4E0](v18, -1, -1);
    }

    else
    {
    }

    v20 = sub_26C009A3C();
    v21 = sub_26C00AA0C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v126 = v23;
      *v22 = 136315138;
      v24 = v134;
      sub_26BEB65E8(v10);
      v26 = v25;
      v134 = v24;

      v27 = MEMORY[0x26D6991B0](v26, MEMORY[0x277D83E40]);
      v28 = v9;
      v30 = v29;

      v31 = sub_26BE29740(v27, v30, v126);
      v9 = v28;

      *(v22 + 4) = v31;
      _os_log_impl(&dword_26BDFE000, v20, v21, "Welcome had: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x26D69A4E0](v23, -1, -1);
      MEMORY[0x26D69A4E0](v22, -1, -1);
    }

    else
    {
    }

    sub_26BE2B9C8(v3, v126);
    v32 = sub_26C009A3C();
    v33 = sub_26C00AA0C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v114 = v35;
      *v34 = 136315138;

      sub_26BEB6938(v36);
      v38 = v37;

      v39 = MEMORY[0x26D6991B0](v38, MEMORY[0x277D83E40]);
      v41 = v40;

      sub_26BE2BA24(v126);
      v42 = sub_26BE29740(v39, v41, &v114);

      *(v34 + 4) = v42;
      _os_log_impl(&dword_26BDFE000, v32, v33, "Client had: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x26D69A4E0](v35, -1, -1);
      MEMORY[0x26D69A4E0](v34, -1, -1);
    }

    else
    {

      sub_26BE2BA24(v126);
    }

    memset(&v126[8], 0, 104);
    *v126 = 13;
    LOBYTE(v127) = 23;
    v43 = sub_26C00A45C();
    sub_26BE2DC18(v126, &v114);
    v44 = swift_allocObject();
    v45 = v119;
    *(v44 + 88) = v118;
    *(v44 + 104) = v45;
    *(v44 + 120) = v120;
    v46 = v115;
    *(v44 + 24) = v114;
    *(v44 + 40) = v46;
    v47 = v117;
    *(v44 + 56) = v116;
    *(v44 + 16) = 1;
    *(v44 + 136) = v121;
    *(v44 + 72) = v47;
    v107 = sub_26BE2DC78;
    v108 = v44;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v106 = sub_26BEB8234;
    *(&v106 + 1) = &block_descriptor_3;
    v48 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v48);

    sub_26BE2DC9C(v126);
    sub_26BE01654();
    swift_allocError();
    *v49 = 13;
    *(v49 + 8) = 0u;
    *(v49 + 24) = 0u;
    *(v49 + 40) = 0u;
    *(v49 + 56) = 0u;
    *(v49 + 72) = 0u;
    *(v49 + 88) = 0u;
    *(v49 + 104) = 0;
    *(v49 + 112) = 23;
    swift_willThrow();

    v50 = v104;
    v51 = v9;
    goto LABEL_25;
  }

  v52 = v9;
  v53 = *v126;

  *v126 = v7;
  *&v126[8] = v103;
  *&v126[16] = __PAIR128__(v52, v104);
  v54 = v134;
  sub_26BF2B8A0(v53, v14);
  if (v54)
  {
    sub_26BE136AC(v53, v14);

    v50 = v104;
LABEL_24:
    v51 = v52;
LABEL_25:
    sub_26BE00258(v50, v51);
    return;
  }

  v134 = v53;
  if (v55)
  {
    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v56 = sub_26C009A5C();
    __swift_project_value_buffer(v56, qword_280478E70);
    v57 = sub_26C009A3C();
    v58 = sub_26C00AA0C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_26BDFE000, v57, v58, "Join failed, could not find matching key package in Welcome", v59, 2u);
      MEMORY[0x26D69A4E0](v59, -1, -1);
    }

    memset(&v126[8], 0, 104);
    *v126 = 13;
    LOBYTE(v127) = 23;
    v60 = sub_26C00A45C();
    sub_26BE2DC18(v126, &v114);
    v61 = swift_allocObject();
    v62 = v119;
    *(v61 + 88) = v118;
    *(v61 + 104) = v62;
    *(v61 + 120) = v120;
    v63 = v115;
    *(v61 + 24) = v114;
    *(v61 + 40) = v63;
    v64 = v117;
    *(v61 + 56) = v116;
    *(v61 + 16) = 1;
    *(v61 + 136) = v121;
    *(v61 + 72) = v64;
    v107 = sub_26BE2E3DC;
    v108 = v61;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v106 = sub_26BEB8234;
    *(&v106 + 1) = &block_descriptor_7;
    v65 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v65);

    sub_26BE2DC9C(v126);
    sub_26BE01654();
    swift_allocError();
    *v66 = 13;
    *(v66 + 8) = 0u;
    *(v66 + 24) = 0u;
    *(v66 + 40) = 0u;
    *(v66 + 56) = 0u;
    *(v66 + 72) = 0u;
    *(v66 + 88) = 0u;
    *(v66 + 104) = 0;
    *(v66 + 112) = 23;
    swift_willThrow();
    sub_26BE136AC(v134, v14);

    v50 = v104;
    goto LABEL_24;
  }

  v67 = *(v3 + 88);
  if (!*(v67 + 16) || (v68 = sub_26BEBB690(v134, v14), (v69 & 1) == 0))
  {
LABEL_37:
    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v83 = sub_26C009A5C();
    __swift_project_value_buffer(v83, qword_280478E70);
    v84 = sub_26C009A3C();
    v85 = sub_26C00AA0C();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_26BDFE000, v84, v85, "Join failed, missing secrets for intended key package", v86, 2u);
      MEMORY[0x26D69A4E0](v86, -1, -1);
    }

    memset(&v126[8], 0, 104);
    *v126 = 32;
    LOBYTE(v127) = 23;
    v87 = sub_26C00A45C();
    sub_26BE2DC18(v126, &v114);
    v88 = swift_allocObject();
    v89 = v119;
    *(v88 + 88) = v118;
    *(v88 + 104) = v89;
    *(v88 + 120) = v120;
    v90 = v115;
    *(v88 + 24) = v114;
    *(v88 + 40) = v90;
    v91 = v117;
    *(v88 + 56) = v116;
    *(v88 + 16) = 1;
    *(v88 + 136) = v121;
    *(v88 + 72) = v91;
    v107 = sub_26BE2E3DC;
    v108 = v88;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v106 = sub_26BEB8234;
    *(&v106 + 1) = &block_descriptor_14;
    v92 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v92);

    sub_26BE2DC9C(v126);
    sub_26BE01654();
    swift_allocError();
    *v93 = 32;
    *(v93 + 8) = 0u;
    *(v93 + 24) = 0u;
    *(v93 + 40) = 0u;
    *(v93 + 56) = 0u;
    *(v93 + 72) = 0u;
    *(v93 + 88) = 0u;
    *(v93 + 104) = 0;
    *(v93 + 112) = 23;
    swift_willThrow();
    sub_26BE136AC(v134, v14);

    v50 = v104;
    v51 = v52;
    goto LABEL_25;
  }

  sub_26BE2E07C(*(v67 + 56) + 80 * v68, v132);
  if (!*(v11 + 16) || (v70 = sub_26BEBB690(v134, v14), (v71 & 1) == 0))
  {
    sub_26BE2E0D8(v132);
    goto LABEL_37;
  }

  v72 = *(v11 + 56) + 184 * v70;
  v74 = *(v72 + 32);
  v73 = *(v72 + 48);
  v75 = *(v72 + 16);
  *v126 = *v72;
  *&v126[16] = v75;
  *&v126[32] = v74;
  *&v126[48] = v73;
  v76 = *(v72 + 64);
  v77 = *(v72 + 80);
  v78 = *(v72 + 112);
  *&v126[96] = *(v72 + 96);
  v127 = v78;
  *&v126[64] = v76;
  *&v126[80] = v77;
  v79 = *(v72 + 128);
  v80 = *(v72 + 144);
  v81 = *(v72 + 160);
  v131 = *(v72 + 176);
  v129 = v80;
  v130 = v81;
  v128 = v79;
  if (v6)
  {
    if (*v102)
    {
      v82 = 2;
    }

    else
    {
      v82 = 1;
    }

    LOWORD(v111[0]) = v82;
    v112[0] = v6;
    sub_26BE2DFC0(v126, &v114);

    MLS.TreeKEMPublicKey.init(ciphersuiteID:ratchetTree:)(v111, v112, &aBlock);
    v99 = v106;
    v100 = aBlock;
  }

  else
  {
    sub_26BE2DFC0(v126, &v114);
    v99 = 0u;
    v100 = 0u;
  }

  v94 = v134;
  LOWORD(v113[0]) = v7;
  v113[1] = v103;
  v113[2] = v104;
  v113[3] = v52;
  sub_26BE038A8(v132, v112);
  sub_26BE038A8(&v133, v111);
  sub_26BE038A8((v102 + 8), v110);
  v122 = v128;
  v123 = v129;
  v124 = v130;
  v125 = v131;
  v118 = *&v126[64];
  v119 = *&v126[80];
  v120 = *&v126[96];
  v121 = v127;
  v114 = *v126;
  v115 = *&v126[16];
  v116 = *&v126[32];
  v117 = *&v126[48];
  v109[0] = v100;
  v109[1] = v99;
  sub_26BE2DFC0(v126, &aBlock);

  sub_26BE00608(v104, v52);
  v95 = MEMORY[0x277D84F90];
  v96 = sub_26C001A78(MEMORY[0x277D84F90]);
  v97 = sub_26C00528C(v95);

  sub_26BFEB860(v113, v112, v111, v110, &v114, v109, v96, v97, v101, v98);
  sub_26BE2E0D8(v132);
  sub_26BE136AC(v94, v14);

  sub_26BE00258(v104, v52);
  sub_26BE2E01C(v126);
}

void *sub_26BEB80FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26C00AB4C();
  v5 = result;
  v6 = (1 << *(a1 + 32));
  if (result == v6)
  {
    v7 = 0;
  }

  else
  {
    result = sub_26BEBE4D0(result, *(a1 + 36), a1, &v8);
    v7 = v8;
  }

  *a2 = v7;
  *(a2 + 2) = v5 == v6;
  return result;
}

void sub_26BEB8194(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_26C00AB4C();
  if (v4 == 1 << *(a1 + 32))
  {
    v5 = 0;
    v6 = 0xF000000000000000;
  }

  else
  {
    sub_26BEBE524(v4, *(a1 + 36), a1, &v7);
    v6 = *(&v7 + 1);
    v5 = v7;
    sub_26BE00608(v7, *(&v7 + 1));
    sub_26BE00258(v5, v6);
  }

  *a2 = v5;
  a2[1] = v6;
}

id sub_26BEB8234(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_26BEBE750();
    v4 = sub_26C00A37C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t MLS.ClientState.signaturePrivateKey.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 8));

  return sub_26BE03890(a1, v1 + 8);
}

void MLS.ClientState.credential.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  a1[1] = v3;
  sub_26BE04890(v2, v3);
}

void MLS.ClientState.credential.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_26BE0489C(*(v1 + 48), *(v1 + 56));
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
}

uint64_t MLS.ClientState.keyPackageExtensions.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t MLS.ClientState.leafNodeExtensions.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_26BEB8494(void *a1, uint64_t a2)
{
  v4 = v2[13];
  if (v4)
  {
    v5 = v2;
    swift_beginAccess();
    sub_26BE295A0((v4 + 5), &v84);

    sub_26BE1118C(v91);
    if (v3)
    {
      sub_26BE29710(&v84);
    }

    else
    {
      v56 = a1;
      v57 = a2;
      sub_26BE29710(&v84);
      v10 = v4[42];
      v94 = v4[43];
      v11 = v4[44];
      v66 = v4[45];
      v67 = v11;
      v65 = v4[46];
      v60 = 0;
      v13 = v92;
      v12 = v93;
      v63 = __swift_project_boxed_opaque_existential_1(v91, v92);
      v14 = *(v12 + 8);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v62 = &v50;
      v16 = *(AssociatedTypeWitness - 8);
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v18 = &v50 - v17;
      v58 = v5;
      v19 = *(v14 + 32);
      v64 = v10;

      v19(v13, v14);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v63 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v59 = v21;
      (*(v16 + 8))(v18, AssociatedTypeWitness);
      v22 = v58;
      v23 = v58[4];
      v24 = v58[5];
      __swift_project_boxed_opaque_existential_1(v58 + 1, v23);
      v25 = swift_getAssociatedTypeWitness();
      v61 = &v50;
      v26 = *(v25 - 8);
      MEMORY[0x28223BE20](v25);
      v28 = &v50 - v27;
      (*(v24 + 40))(v23, v24);
      v29 = swift_getAssociatedConformanceWitness();
      v30 = (*(*(v29 + 8) + 16))(v25);
      v32 = v31;
      (*(v26 + 8))(v28, v25);
      v81 = *(v22 + 3);
      v33 = v60;
      v34 = MLS.Identity.Credential.serializedRepresentation.getter();
      if (v33)
      {
        sub_26BE00258(v30, v32);
        sub_26BE00258(v63, v59);
      }

      else
      {
        v36 = v59;
        v37 = v22;
        MLS.Credential.init(rawValue:)(v34, v35, &v82);
        v38 = v22[9];
        *&v84 = v63;
        *(&v84 + 1) = v36;
        *&v85 = v30;
        *(&v85 + 1) = v32;
        v54 = *(&v82 + 1);
        v55 = v82;
        v86 = v82;
        *&v87 = v64;
        *(&v87 + 1) = v94;
        *&v88 = v67;
        *(&v88 + 1) = v66;
        *&v89[0] = v65;
        v53 = xmmword_26C015F70;
        *(v89 + 8) = xmmword_26C015F70;
        BYTE8(v89[1]) = 0;
        HIDWORD(v89[1]) = *(v83 + 3);
        *(&v89[1] + 9) = v83[0];
        *&v90[0] = v38;
        v52 = xmmword_26C00BBD0;
        *(v90 + 8) = xmmword_26C00BBD0;
        v78 = v89[1];
        v79 = v90[0];
        v80 = 0xC000000000000000;
        v74 = v82;
        v75 = v87;
        v76 = v88;
        v77 = v89[0];
        v72 = v84;
        v73 = v85;
        v70 = xmmword_26C00DA60;
        v71 = 0;
        v60 = v38;

        sub_26BE00758(&v84, v68);
        v51 = sub_26BE5B600(&v70);
        v68[6] = v78;
        v68[7] = v79;
        v69 = v80;
        v68[2] = v74;
        v68[3] = v75;
        v68[4] = v76;
        v68[5] = v77;
        v68[0] = v72;
        v68[1] = v73;
        v40 = v39;
        sub_26BE00854(v68);
        v41 = v37[4];
        v50 = v37[5];
        __swift_project_boxed_opaque_existential_1(v37 + 1, v41);
        v42 = v51;
        v58 = v40;
        v43 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0x65646F4E6661654CLL, 0xEB00000000534254, v51, v40, v41, v50);
        v45 = v44;

        sub_26BE00258(v42, v58);
        sub_26BE00258(0, 0xC000000000000000);
        v46 = v56;
        *v56 = v63;
        v46[1] = v36;
        v46[2] = v30;
        v46[3] = v32;
        v47 = v54;
        v46[4] = v55;
        v46[5] = v47;
        v48 = v94;
        v46[6] = v64;
        v46[7] = v48;
        v49 = v66;
        v46[8] = v67;
        v46[9] = v49;
        v46[10] = v65;
        *(v46 + 11) = v53;
        *(v46 + 104) = 0;
        *(v46 + 105) = v83[0];
        *(v46 + 27) = *(v83 + 3);
        v46[14] = v60;
        v46[15] = v43;
        v46[16] = v45;
        sub_26BE038A8(v91, v57);
      }

      return __swift_destroy_boxed_opaque_existential_1(v91);
    }
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v9 = 36;
    v9[112] = 0;
    return swift_willThrow();
  }
}

uint64_t sub_26BEB8C30()
{
  v1 = *(v0 + 104);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v2 = *(v1 + 280) == 0xD00000000000001ALL && 0x800000026C02AD20 == *(v1 + 288);
  if (!v2 && (sub_26C00AF2C() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = qword_28045DF40;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_26C009A5C();
  __swift_project_value_buffer(v4, qword_280478E70);

  v5 = sub_26C009A3C();
  v6 = sub_26C00AA1C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;

    v9 = sub_26BE16A38();
    v11 = v10;

    v12 = sub_26BE29740(v9, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_26BDFE000, v5, v6, "%s: Adding last-resort key package extension", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v13 = sub_26BEEBD8C(0, 1, 1, MEMORY[0x277D84F90]);
  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_26BEEBD8C((v14 > 1), v15 + 1, 1, v13);
  }

  v16 = v13;

  result = v16;
  *(v16 + 16) = v15 + 1;
  v18 = v16 + 24 * v15;
  *(v18 + 32) = 10;
  *(v18 + 40) = xmmword_26C00BBD0;
  return result;
}

void sub_26BEB8E9C(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v149 = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    v6 = 512;
  }

  else
  {
    v6 = 256;
  }

  LOWORD(v121) = v6;
  v7 = MEMORY[0x277D838B0];
  v8 = MEMORY[0x277CC9C18];
  *(&v138 + 1) = MEMORY[0x277D838B0];
  *&v139 = MEMORY[0x277CC9C18];
  *&v137 = &v121;
  *(&v137 + 1) = &v121 + 2;
  __swift_project_boxed_opaque_existential_1(&v137, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v137);
  sub_26BE136C4((a1 + 8));
  if (v2)
  {
    return;
  }

  v10 = v9 + 2;
  if (__OFADD__(v9, 2))
  {
    __break(1u);
    goto LABEL_17;
  }

  v121 = *(a1 + 48);
  v11 = MLS.Identity.Credential.serializedRepresentation.getter();
  MLS.Credential.init(rawValue:)(v11, v12, &v137);
  v121 = v137;
  sub_26BE03BF4(&v121);
  v14 = v13;
  sub_26BE0489C(v121, *(&v121 + 1));
  v15 = __OFADD__(v10, v14);
  v16 = v10 + v14;
  if (v15)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v17 = *(a1 + 64);
  v119 = xmmword_26C00BBD0;
  v137 = xmmword_26C00BBD0;
  *&v138 = 0;
  v18 = sub_26BEEAC24(0, v17);
  v19 = sub_26BF30414(v18);
  sub_26BF2A30C(&v137);
  sub_26BE00258(v137, *(&v137 + 1));
  v20 = v19 + v18;
  if (__OFADD__(v19, v18))
  {
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
  }

  v15 = __OFADD__(v16, v20);
  v21 = v16 + v20;
  v22 = 0;
  if (v15)
  {
    goto LABEL_96;
  }

  v23 = *(a1 + 72);
  v137 = xmmword_26C00BBD0;
  *&v138 = 0;
  v24 = sub_26BEEAC24(0, v23);
  v115 = 0;
  v25 = sub_26BF30414(v24);
  sub_26BF2A30C(&v137);
  sub_26BE00258(v137, *(&v137 + 1));
  v26 = v25 + v24;
  if (__OFADD__(v25, v24))
  {
    goto LABEL_107;
  }

  v95 = v21 + v26;
  if (__OFADD__(v21, v26))
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v3 = *(a1 + 80);
  *&v121 = bswap64(*(v3 + 16));
  *(&v138 + 1) = v7;
  *&v139 = v8;
  *&v137 = &v121;
  *(&v137 + 1) = &v121 + 8;
  __swift_project_boxed_opaque_existential_1(&v137, v7);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v137);
  v27 = *(v3 + 16);
  v101 = v3;
  if (!v27)
  {
LABEL_17:
    v28 = MEMORY[0x277D84F90];
    v22 = v115;
    goto LABEL_18;
  }

  v28 = sub_26BE328AC(v27, 0);
  v29 = sub_26BE34104();
  v22 = v137;
  v112 = v29;

  sub_26BE2DA4C();
  if (v112 != v27)
  {
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v22 = 0;
LABEL_18:
  *&v137 = v28;
  sub_26BE294CC(&v137);
  if (v22)
  {
LABEL_115:

    __break(1u);
    return;
  }

  v30 = v137;
  v31 = *(v137 + 16);
  if (!v31)
  {
LABEL_45:

    v33 = 8;
    goto LABEL_47;
  }

  v32 = 0;
  v97 = v31 - 1;
  v99 = v137;
  v33 = 8;
  while (1)
  {
    v109 = v33;
    if (!*(v3 + 16))
    {
      goto LABEL_93;
    }

    v107 = v32;
    v34 = v30 + 16 * v32;
    v35 = *(v34 + 32);
    v113 = *(v34 + 32);
    v36 = *(v34 + 40);
    sub_26BE00608(v35, v36);
    v37 = sub_26BEBB690(v35, v36);
    if ((v38 & 1) == 0)
    {
      goto LABEL_94;
    }

    v39 = *(v3 + 56) + 184 * v37;
    v41 = *(v39 + 32);
    v40 = *(v39 + 48);
    v42 = *(v39 + 16);
    v137 = *v39;
    v138 = v42;
    v139 = v41;
    v140 = v40;
    v43 = *(v39 + 64);
    v44 = *(v39 + 80);
    v45 = *(v39 + 112);
    v143 = *(v39 + 96);
    v144 = v45;
    v141 = v43;
    v142 = v44;
    v46 = *(v39 + 128);
    v47 = *(v39 + 144);
    v48 = *(v39 + 160);
    v148 = *(v39 + 176);
    v146 = v47;
    v147 = v48;
    v145 = v46;
    v49 = v36 >> 62;
    if ((v36 >> 62) > 1)
    {
      v50 = v35;
      if (v49 != 2)
      {
        v51 = 0;
LABEL_38:
        v105 = v51;
        LOBYTE(v120) = v51;
        v135 = v7;
        v136 = v8;
        v133 = &v120;
        v134 = (&v120 + 1);
        __swift_project_boxed_opaque_existential_1(&v133, v7);
        sub_26BE2DFC0(&v137, &v121);
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v133);
        v54 = 1;
        goto LABEL_40;
      }

      v53 = *(v35 + 16);
      v52 = *(v35 + 24);
      v15 = __OFSUB__(v52, v53);
      v51 = v52 - v53;
      if (v15)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v50 = v35;
      if (!v49)
      {
        v51 = BYTE6(v36);
        goto LABEL_33;
      }

      if (__OFSUB__(HIDWORD(v35), v35))
      {
        goto LABEL_106;
      }

      v51 = HIDWORD(v35) - v35;
    }

    if ((v51 & 0x8000000000000000) != 0)
    {
      goto LABEL_84;
    }

LABEL_33:
    if (v51 <= 0x3F)
    {
      goto LABEL_38;
    }

    v105 = v51;
    if (v51 >> 14)
    {
      if (v51 >> 30)
      {
        goto LABEL_84;
      }

      v120 = bswap32(v51 | 0x80000000);
      v135 = v7;
      v136 = v8;
      v133 = &v120;
      v134 = &v121;
      __swift_project_boxed_opaque_existential_1(&v133, v7);
      sub_26BE2DFC0(&v137, &v121);
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v133);
      v54 = 4;
    }

    else
    {
      LOWORD(v120) = bswap32(v51 | 0x4000) >> 16;
      v135 = v7;
      v136 = v8;
      v133 = &v120;
      v134 = (&v120 + 2);
      __swift_project_boxed_opaque_existential_1(&v133, v7);
      sub_26BE2DFC0(&v137, &v121);
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v133);
      v54 = 2;
    }

LABEL_40:
    v103 = v54;
    *(&v122 + 1) = MEMORY[0x277CC9318];
    *&v123 = MEMORY[0x277CC9300];
    v121 = v113;
    v55 = __swift_project_boxed_opaque_existential_1(&v121, MEMORY[0x277CC9318]);
    v56 = *v55;
    v57 = v55[1];
    sub_26BE00608(v50, v36);
    sub_26BE121A0(v56, v57, v4);
    __swift_destroy_boxed_opaque_existential_1(&v121);
    v129 = v145;
    v130 = v146;
    v131 = v147;
    v132 = v148;
    v125 = v141;
    v126 = v142;
    v127 = v143;
    v128 = v144;
    v121 = v137;
    v122 = v138;
    v123 = v139;
    v124 = v140;
    sub_26BE00A98(&v121);
    v59 = v58;
    sub_26BE00258(v50, v36);
    sub_26BE2E01C(&v137);
    v60 = v105 + v103 + v59;
    if (__OFADD__(v105 + v103, v59))
    {
      goto LABEL_97;
    }

    v33 = v109 + v60;
    v30 = v99;
    v3 = v101;
    if (__OFADD__(v109, v60))
    {
      goto LABEL_98;
    }

    if (v97 == v107)
    {
      break;
    }

    v32 = v107 + 1;
    if ((v107 + 1) >= *(v99 + 16))
    {
      __break(1u);
      goto LABEL_45;
    }
  }

LABEL_47:
  if (__OFADD__(v95, v33))
  {
    goto LABEL_112;
  }

  v96 = v95 + v33;
  v61 = *(a1 + 88);
  *&v121 = bswap64(*(v61 + 16));
  *(&v138 + 1) = v7;
  *&v139 = v8;
  *&v137 = &v121;
  *(&v137 + 1) = &v121 + 8;
  __swift_project_boxed_opaque_existential_1(&v137, v7);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v137);
  v62 = *(v61 + 16);
  v102 = v61;
  if (!v62)
  {
    goto LABEL_51;
  }

  v63 = sub_26BE328AC(v62, 0);
  v116 = sub_26BE34104();

  sub_26BE2DA4C();
  if (v116 != v62)
  {
    __break(1u);
LABEL_51:
    v63 = MEMORY[0x277D84F90];
  }

  *&v137 = v63;
  v22 = 0;
  sub_26BE294CC(&v137);
  v64 = v137;
  v98 = *(v137 + 16);
  if (v98)
  {
    v65 = 0;
    v66 = 8;
    v100 = v137;
    while (1)
    {
      if (v65 >= *(v64 + 16))
      {
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v110 = v66;
      if (!*(v102 + 16))
      {
        goto LABEL_100;
      }

      v108 = v65;
      v67 = v64 + 16 * v65;
      v68 = *(v67 + 32);
      v114 = *(v67 + 32);
      v69 = *(v67 + 40);
      sub_26BE00608(v68, v69);
      v117 = v68;
      v70 = sub_26BEBB690(v68, v69);
      if ((v71 & 1) == 0)
      {
        goto LABEL_101;
      }

      sub_26BE2E07C(*(v102 + 56) + 80 * v70, &v137);
      v72 = v69 >> 62;
      if ((v69 >> 62) > 1)
      {
        if (v72 != 2)
        {
          v73 = 0;
LABEL_72:
          v106 = v73;
          LOBYTE(v133) = v73;
          *(&v122 + 1) = v7;
          *&v123 = v8;
          *&v121 = &v133;
          *(&v121 + 1) = &v133 + 1;
          __swift_project_boxed_opaque_existential_1(&v121, v7);
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(&v121);
          v76 = 1;
          goto LABEL_74;
        }

        v75 = *(v68 + 16);
        v74 = *(v68 + 24);
        v15 = __OFSUB__(v74, v75);
        v73 = v74 - v75;
        if (v15)
        {
          goto LABEL_110;
        }
      }

      else
      {
        if (!v72)
        {
          v73 = BYTE6(v69);
          goto LABEL_67;
        }

        if (__OFSUB__(HIDWORD(v68), v68))
        {
          goto LABEL_109;
        }

        v73 = HIDWORD(v68) - v68;
      }

      if ((v73 & 0x8000000000000000) != 0)
      {
        goto LABEL_87;
      }

LABEL_67:
      if (v73 <= 0x3F)
      {
        goto LABEL_72;
      }

      v106 = v73;
      if (v73 >> 14)
      {
        if (v73 >> 30)
        {
LABEL_87:
          sub_26BE01600();
          swift_allocError();
          *v93 = 3;
          swift_willThrow();

          sub_26BE00258(v68, v69);
          sub_26BE2E0D8(&v137);
          return;
        }

        LODWORD(v133) = bswap32(v73 | 0x80000000);
        *(&v122 + 1) = v7;
        *&v123 = v8;
        *&v121 = &v133;
        *(&v121 + 1) = &v133 + 4;
        __swift_project_boxed_opaque_existential_1(&v121, v7);
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v121);
        v76 = 4;
      }

      else
      {
        LOWORD(v133) = bswap32(v73 | 0x4000) >> 16;
        *(&v122 + 1) = v7;
        *&v123 = v8;
        *&v121 = &v133;
        *(&v121 + 1) = &v133 + 2;
        __swift_project_boxed_opaque_existential_1(&v121, v7);
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v121);
        v76 = 2;
      }

LABEL_74:
      v104 = v76;
      *(&v122 + 1) = MEMORY[0x277CC9318];
      *&v123 = MEMORY[0x277CC9300];
      v121 = v114;
      v77 = __swift_project_boxed_opaque_existential_1(&v121, MEMORY[0x277CC9318]);
      v78 = *v77;
      v79 = v77[1];
      sub_26BE00608(v117, v69);
      v22 = 0;
      sub_26BE121A0(v78, v79, v4);
      __swift_destroy_boxed_opaque_existential_1(&v121);
      sub_26BE10BE4(&v137);
      v81 = v80;
      sub_26BE10BE4(&v139 + 1);
      v83 = v82;
      sub_26BE00258(v117, v69);
      v84 = v81 + v83;
      if (__OFADD__(v81, v83))
      {
        goto LABEL_102;
      }

      v85 = v106 + v104 + v84;
      if (__OFADD__(v106 + v104, v84))
      {
        goto LABEL_103;
      }

      sub_26BE2E0D8(&v137);
      v66 = v110 + v85;
      if (__OFADD__(v110, v85))
      {
        goto LABEL_104;
      }

      v65 = v108 + 1;
      v64 = v100;
      if (v98 == v108 + 1)
      {

        goto LABEL_80;
      }
    }
  }

  v66 = 8;
LABEL_80:
  if (__OFADD__(v96, v66))
  {
    goto LABEL_113;
  }

  v111 = v96 + v66;
  v86 = *(a1 + 96);
  v87 = *(v86 + 16);
  if (!v87)
  {
    v88 = MEMORY[0x277D84F90];
    goto LABEL_86;
  }

  v88 = sub_26BE328AC(*(v86 + 16), 0);
  v118 = sub_26BE336A0(&v137, v88 + 2, v87, v86);
  v36 = v138;
  v50 = v139;

  sub_26BE2DA4C();
  if (v118 == v87)
  {
LABEL_86:
    *&v137 = v88;
    v22 = 0;
    sub_26BE294CC(&v137);
    v90 = v137;
    v137 = v119;
    *&v138 = 0;
    v91 = sub_26BE04360(0, v90);
    v92 = v91;
    v94 = sub_26BF30414(v91);
    sub_26BF2A30C(&v137);
    sub_26BE00258(v137, *(&v137 + 1));

    if (!__OFADD__(v94, v92))
    {
      if (!__OFADD__(v111, v94 + v92))
      {
        return;
      }

      __break(1u);
      goto LABEL_92;
    }

    goto LABEL_114;
  }

  __break(1u);
LABEL_84:
  sub_26BE01600();
  swift_allocError();
  *v89 = 3;
  swift_willThrow();
  sub_26BE2DFC0(&v137, &v121);

  sub_26BE00258(v50, v36);
  sub_26BE2E01C(&v137);
}

void sub_26BEB9B44(uint64_t a2@<X8>)
{
  v4 = v2;
  v173[5] = *MEMORY[0x277D85DE8];
  v6 = sub_26BEE6180();
  if ((v6 & 0x10000) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
    return;
  }

  v7 = v6;
  sub_26BE108C0();
  if (v3)
  {
    return;
  }

  sub_26BE03DC0(&v169);
  v10 = *(&v169 + 1);
  v9 = v169;
  v167[0] = v169;
  MLS.Credential.rawValue.getter();
  v12 = v11;
  v14 = v13;
  sub_26BE0489C(v9, v10);
  sub_26BE00608(v12, v14);
  MLS.Credential.init(rawValue:)(v12, v14, v168);
  v16 = *(&v168[0] + 1);
  v15 = *&v168[0];
  v172 = v168[0];
  sub_26BE04890(*&v168[0], *(&v168[0] + 1));
  sub_26C006590(&v172, v168);
  sub_26BE0489C(v15, v16);
  sub_26BE00258(v12, v14);
  v17 = *(&v168[0] + 1);
  isUniquelyReferenced_nonNull_native = *&v168[0];
  v20 = *v4;
  v19 = v4[1];
  v21 = v4[2];
  sub_26BE00608(*v4, v19);
  sub_26BE00608(v20, v19);
  sub_26BF30764(v4, &v169);
  if (BYTE8(v169))
  {
    sub_26BE00258(*v4, v4[1]);
    *v4 = v20;
    v4[1] = v19;
    v22 = v19;
    v23 = v20;
    v4[2] = v21;
LABEL_9:
    sub_26BE00258(v23, v22);
    *v4 = v20;
    v4[1] = v19;
    v4[2] = v21;
    sub_26BE01600();
    swift_allocError();
    *v24 = 1;
    goto LABEL_10;
  }

  v163 = v21;
  v164 = v17;
  v27 = v169;
  v28 = 100000000;
  sub_26BE00258(v20, v19);
  if (v27 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v29 = 5;
    swift_willThrow();
    v30 = v163;
    v17 = v164;
    goto LABEL_6;
  }

  v31 = sub_26BF2A44C(v27);
  if (v32 >> 60 == 15)
  {
    v23 = *v4;
    v22 = v4[1];
    v21 = v163;
    v17 = v164;
    goto LABEL_9;
  }

  v34 = v33;
  v152 = a2;
  v153 = v7;
  *&v169 = v31;
  *(&v169 + 1) = v32;
  v35 = v32 >> 62;
  v170 = v33;
  v154 = v31 >> 32;
  v157 = BYTE6(v32);
  v36 = MEMORY[0x277D84F90];
  v160 = isUniquelyReferenced_nonNull_native;
  v161 = v20;
  v162 = v19;
  v158 = v32 >> 62;
  v159 = v31;
  if ((v32 >> 62) > 1)
  {
    goto LABEL_19;
  }

LABEL_17:
  v37 = v157;
  if (v35)
  {
    v37 = v154;
  }

  while (1)
  {
    v38 = __OFSUB__(v37, v34);
    v39 = v37 - v34;
    if (v38)
    {
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      v94 = *(&v169 + 1) >> 62;
      if ((*(&v169 + 1) >> 62) > 1)
      {
        if (v94 == 2)
        {
          v95 = *(v169 + 24);
        }

        else
        {
          v95 = 0;
        }
      }

      else if (v94)
      {
        v95 = v169 >> 32;
      }

      else
      {
        v95 = BYTE14(v169);
      }

      if (__OFSUB__(v95, v34))
      {
        __break(1u);
LABEL_222:
        if (v95 == 2)
        {
          v145 = *(a2 + 24);
        }

        else
        {
LABEL_225:
          v145 = 0;
        }

LABEL_226:
        if (__OFSUB__(v145, isUniquelyReferenced_nonNull_native))
        {
LABEL_236:
          __break(1u);
        }

        else
        {
          if (v145 != isUniquelyReferenced_nonNull_native)
          {
            sub_26BE01654();
            swift_allocError();
            *v149 = 0;
            v149[112] = 1;
LABEL_220:
            swift_willThrow();

            sub_26BE00258(v169, *(&v169 + 1));
            goto LABEL_155;
          }

          sub_26BE00258(a2, v36);
          sub_26BE00258(v159, v162);
          v147 = sub_26BEC800C(v157);

          if ((v153 - 3) >= 0xFFFFFFFE)
          {
            sub_26BE038A8(v173, v152 + 8);
            sub_26BE04890(v160, v164);
            v148 = MEMORY[0x277D84F90];
            sub_26C00447C(MEMORY[0x277D84F90]);
            sub_26C004684(v148);
            sub_26BE0489C(v160, v164);
            __swift_destroy_boxed_opaque_existential_1(v173);

            *v152 = v153 != 1;
            *(v152 + 48) = v160;
            *(v152 + 56) = v164;
            *(v152 + 64) = v166;
            *(v152 + 72) = v161;
            *(v152 + 80) = v163;
            *(v152 + 88) = i;
            *(v152 + 96) = v147;
            *(v152 + 104) = 0;
            return;
          }
        }

        __break(1u);
LABEL_238:
        sub_26C00AF8C();
        __break(1u);
        return;
      }

      if (v95 != v34)
      {
        sub_26BE01654();
        swift_allocError();
        *v97 = 0;
        v97[112] = 1;
        goto LABEL_143;
      }

      sub_26BE00258(v169, *(&v169 + 1));
      sub_26BE00258(v163, i);
      v163 = sub_26BF2FAC0();
      v59 = sub_26BEEE594();
      if (v98)
      {
        sub_26BE01600();
        swift_allocError();
        *v99 = 1;
        swift_willThrow();
LABEL_173:
        __swift_destroy_boxed_opaque_existential_1(v173);

        sub_26BE0489C(v160, v164);
        return;
      }

LABEL_153:
      a2 = v59;
      for (i = sub_26C004684(MEMORY[0x277D84F90]); a2; --a2)
      {
        v102 = sub_26BF2F7B0();
        v104 = v103;
        sub_26BE10E8C();
        sub_26BE10E8C();
        sub_26BE03890(v167, &v169);
        sub_26BE03890(v168, &v171);
        sub_26BE2E07C(&v169, v167);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v168[0] = i;
        v106 = sub_26BEBB690(v102, v104);
        v107 = i[2];
        v108 = (v105 & 1) == 0;
        v109 = v107 + v108;
        if (__OFADD__(v107, v108))
        {
          __break(1u);
          goto LABEL_225;
        }

        v36 = v105;
        if (i[3] >= v109)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_26BE6D84C();
          }
        }

        else
        {
          sub_26BE695CC(v109, isUniquelyReferenced_nonNull_native);
          v110 = sub_26BEBB690(v102, v104);
          if ((v36 & 1) != (v111 & 1))
          {
            goto LABEL_238;
          }

          v106 = v110;
        }

        i = *&v168[0];
        if (v36)
        {
          sub_26BE5B15C(v167, *(*&v168[0] + 56) + 80 * v106);
          sub_26BE2E0D8(&v169);
        }

        else
        {
          *(*&v168[0] + 8 * (v106 >> 6) + 64) |= 1 << v106;
          v112 = (i[6] + 16 * v106);
          *v112 = v102;
          v112[1] = v104;
          v113 = (i[7] + 80 * v106);
          *v113 = v167[0];
          v114 = v167[1];
          v115 = v167[2];
          v116 = v167[4];
          v113[3] = v167[3];
          v113[4] = v116;
          v113[1] = v114;
          v113[2] = v115;
          sub_26BE00608(v102, v104);
          sub_26BE2E0D8(&v169);
          v117 = i[2];
          v38 = __OFADD__(v117, 1);
          v118 = v117 + 1;
          if (v38)
          {
            __break(1u);
LABEL_232:
            __break(1u);
LABEL_233:
            __break(1u);
LABEL_234:
            __break(1u);
LABEL_235:
            __break(1u);
            goto LABEL_236;
          }

          i[2] = v118;
        }

        sub_26BE00258(v102, v104);
      }

      v101 = *v4;
      v100 = v4[1];
      v158 = v4[2];
      sub_26BE00608(*v4, v100);
      v159 = v101;
      v162 = v100;
      sub_26BE00608(v101, v100);
      sub_26BF30764(v4, &v169);
      if ((BYTE8(v169) & 1) == 0)
      {
        goto LABEL_177;
      }

      sub_26BE00258(*v4, v4[1]);
      v119 = v101;
      v120 = v100;
      *v4 = v101;
      v4[1] = v100;
      v4[2] = v158;
LABEL_169:
      sub_26BE00258(v119, v120);

      *v4 = v159;
      v4[1] = v162;
      v69 = v158;
      goto LABEL_80;
    }

    v166 = v36;
    if (v39 < 1)
    {
      break;
    }

    LOWORD(v172) = 0;
    v36 = (v34 + 2);
    if (__OFADD__(v34, 2))
    {
      goto LABEL_131;
    }

    a2 = *(&v169 + 1);
    v40 = v169;
    v41 = *(&v169 + 1) >> 62;
    if ((*(&v169 + 1) >> 62) <= 1)
    {
      if (v41)
      {
        v42 = v169 >> 32;
      }

      else
      {
        v42 = BYTE14(v169);
      }

LABEL_31:
      if (v42 < v36)
      {
        goto LABEL_64;
      }

      goto LABEL_34;
    }

    if (v41 == 2)
    {
      v42 = *(v169 + 24);
      goto LABEL_31;
    }

    if (v36 > 0)
    {
LABEL_64:
      sub_26BE01600();
      swift_allocError();
      *v62 = 1;
      v17 = v164;
      goto LABEL_67;
    }

LABEL_34:
    v167[0] = v169;
    if (v36 < v34)
    {
      goto LABEL_132;
    }

    *&v168[0] = v34;
    *(&v168[0] + 1) = v34 + 2;
    sub_26BE00608(v169, *(&v169 + 1));
    isUniquelyReferenced_nonNull_native = &unk_26C00E290;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE13630(&qword_28045E280, &qword_28045E270, &unk_26C00E290, MEMORY[0x277D83D30]);
    sub_26C008E1C();
    sub_26BE00258(*&v167[0], *(&v167[0] + 1));
    v43 = v172;
    v170 = (v34 + 2);
    sub_26BE00608(v40, a2);
    sub_26BE00608(v40, a2);
    sub_26BF30764(&v169, v167);
    if (BYTE8(v167[0]))
    {
      sub_26BE00258(v169, *(&v169 + 1));
      v46 = a2;
      v45 = v40;
LABEL_66:
      sub_26BE00258(v45, v46);
      *&v169 = v40;
      *(&v169 + 1) = a2;
      v170 = v36;
      sub_26BE01600();
      swift_allocError();
      *v63 = 1;
      v17 = v164;
      v20 = v161;
      v19 = v162;
      isUniquelyReferenced_nonNull_native = v160;
LABEL_67:
      swift_willThrow();

      sub_26BE00258(v169, *(&v169 + 1));
      v30 = v163;
LABEL_6:
      sub_26BE00258(*v4, v4[1]);
      *v4 = v20;
      v4[1] = v19;
      v4[2] = v30;
LABEL_10:
      swift_willThrow();
      v25 = isUniquelyReferenced_nonNull_native;
      v26 = v17;
      goto LABEL_11;
    }

    v44 = *&v167[0];
    sub_26BE00258(v40, a2);
    v38 = __OFADD__(v170, v44);
    v34 = &v170[v44];
    if (v38)
    {
      goto LABEL_133;
    }

    v46 = *(&v169 + 1);
    v45 = v169;
    v47 = *(&v169 + 1) >> 62;
    if ((*(&v169 + 1) >> 62) <= 1)
    {
      if (v47)
      {
        v48 = v169 >> 32;
      }

      else
      {
        v48 = BYTE14(v169);
      }

LABEL_43:
      if (v48 < v34)
      {
        goto LABEL_66;
      }

      goto LABEL_46;
    }

    if (v47 == 2)
    {
      v48 = *(v169 + 24);
      goto LABEL_43;
    }

    if (v34 > 0)
    {
      goto LABEL_66;
    }

LABEL_46:
    if (v34 < v170)
    {
      goto LABEL_134;
    }

    v49 = sub_26C00909C();
    v50 = v49;
    v36 = v51;
    v170 = v34;
    v52 = v51 >> 62;
    LODWORD(i) = v43;
    if ((v51 >> 62) > 1)
    {
      if (v52 != 2)
      {
        goto LABEL_54;
      }

      v49 = *(v49 + 16);
      v53 = *(v50 + 24);
    }

    else
    {
      if (!v52)
      {
        goto LABEL_54;
      }

      v49 = v49;
      v53 = v50 >> 32;
    }

    if (v53 < v49)
    {
      goto LABEL_135;
    }

LABEL_54:
    v54 = sub_26C00909C();
    v56 = v55;
    sub_26BE00258(v50, v36);
    sub_26BE00258(v40, a2);
    sub_26BE00608(v54, v56);
    v36 = v166;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_26BEEBD8C(0, *(v166 + 2) + 1, 1, v166);
    }

    v28 = *(v36 + 2);
    v57 = *(v36 + 3);
    a2 = v28 + 1;
    if (v28 >= v57 >> 1)
    {
      v36 = sub_26BEEBD8C((v57 > 1), v28 + 1, 1, v36);
    }

    sub_26BE00258(v54, v56);
    *(v36 + 2) = a2;
    v58 = &v36[24 * v28];
    *(v58 + 16) = bswap32(i) >> 16;
    *(v58 + 5) = v54;
    *(v58 + 6) = v56;
    isUniquelyReferenced_nonNull_native = v160;
    v20 = v161;
    v19 = v162;
    LODWORD(v35) = v158;
    v31 = v159;
    if (v158 <= 1)
    {
      goto LABEL_17;
    }

LABEL_19:
    if (v35 == 2)
    {
      v37 = *(v31 + 24);
    }

    else
    {
      v37 = 0;
    }
  }

  v59 = v169;
  v60 = *(&v169 + 1) >> 62;
  if ((*(&v169 + 1) >> 62) > 1)
  {
    if (v60 == 2)
    {
      v61 = *(v169 + 24);
    }

    else
    {
      v61 = 0;
    }
  }

  else if (v60)
  {
    v61 = v169 >> 32;
  }

  else
  {
    v61 = BYTE14(v169);
  }

  if (__OFSUB__(v61, v34))
  {
    __break(1u);
    goto LABEL_153;
  }

  if (v61 != v34)
  {
    sub_26BE01654();
    swift_allocError();
    *v66 = 0;
    v66[112] = 1;
    swift_willThrow();

    sub_26BE00258(v169, *(&v169 + 1));
    v30 = v163;
    v17 = v164;
    isUniquelyReferenced_nonNull_native = v160;
    v20 = v161;
    v19 = v162;
    goto LABEL_6;
  }

  sub_26BE00258(v169, *(&v169 + 1));
  sub_26BE00258(v161, v162);
  v65 = *v4;
  v64 = v4[1];
  v162 = v4[2];
  sub_26BE00608(*v4, v64);
  v163 = v65;
  i = v64;
  sub_26BE00608(v65, v64);
  sub_26BF30764(v4, &v169);
  if (BYTE8(v169))
  {
    sub_26BE00258(*v4, v4[1]);
    v67 = v65;
    v68 = v64;
    *v4 = v65;
    v4[1] = v64;
    v4[2] = v162;
    goto LABEL_79;
  }

  a2 = v169;
  sub_26BE00258(v65, i);
  if (a2 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v71 = 5;
    swift_willThrow();
    goto LABEL_75;
  }

  v157 = sub_26BF2A44C(a2);
  if (v72 >> 60 == 15)
  {
    v67 = *v4;
    v68 = v4[1];
LABEL_79:
    sub_26BE00258(v67, v68);

    *v4 = v65;
    v4[1] = i;
    v69 = v162;
LABEL_80:
    v4[2] = v69;
    sub_26BE01600();
    swift_allocError();
    *v70 = 1;
    swift_willThrow();
    goto LABEL_81;
  }

  v34 = v73;
  *&v169 = v157;
  *(&v169 + 1) = v72;
  v159 = v72 >> 62;
  v170 = v73;
  v155 = BYTE6(v72);
  v161 = MEMORY[0x277D84F90];
  while (2)
  {
    if (v159 > 1)
    {
      if (v159 == 2)
      {
        v74 = *(v157 + 24);
      }

      else
      {
        v74 = 0;
      }
    }

    else
    {
      v74 = v155;
      if (v159)
      {
        v74 = v157 >> 32;
      }
    }

    v38 = __OFSUB__(v74, v34);
    v75 = v74 - v34;
    if (v38)
    {
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
      sub_26BE00258(v19, v28);

      goto LABEL_173;
    }

    if (v75 < 1)
    {
      goto LABEL_136;
    }

    LOWORD(v172) = 0;
    v76 = v34 + 2;
    if (__OFADD__(v34, 2))
    {
      goto LABEL_171;
    }

    v77 = *(&v169 + 1);
    v28 = v169;
    v78 = *(&v169 + 1) >> 62;
    if ((*(&v169 + 1) >> 62) <= 1)
    {
      if (v78)
      {
        v79 = v169 >> 32;
      }

      else
      {
        v79 = BYTE14(v169);
      }

      goto LABEL_102;
    }

    if (v78 == 2)
    {
      v79 = *(v169 + 24);
LABEL_102:
      if (v79 < v76)
      {
        goto LABEL_142;
      }
    }

    else if (v76 > 0)
    {
      goto LABEL_142;
    }

    v167[0] = v169;
    if (v76 < v34)
    {
      goto LABEL_172;
    }

    *&v168[0] = v34;
    *(&v168[0] + 1) = v34 + 2;
    sub_26BE00608(v169, *(&v169 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE13630(&qword_28045E280, &qword_28045E270, &unk_26C00E290, MEMORY[0x277D83D30]);
    sub_26C008E1C();
    sub_26BE00258(*&v167[0], *(&v167[0] + 1));
    LODWORD(v158) = v172;
    v170 = (v34 + 2);
    sub_26BE00608(v28, v77);
    sub_26BE00608(v28, v77);
    sub_26BF30764(&v169, v167);
    if ((BYTE8(v167[0]) & 1) == 0)
    {
      v80 = *&v167[0];
      sub_26BE00258(v28, v77);
      v38 = __OFADD__(v170, v80);
      v34 = &v170[v80];
      if (!v38)
      {
        v82 = *(&v169 + 1);
        v81 = v169;
        v83 = *(&v169 + 1) >> 62;
        if ((*(&v169 + 1) >> 62) <= 1)
        {
          if (v83)
          {
            v84 = v169 >> 32;
          }

          else
          {
            v84 = BYTE14(v169);
          }

          goto LABEL_114;
        }

        if (v83 == 2)
        {
          v84 = *(v169 + 24);
LABEL_114:
          if (v84 < v34)
          {
            goto LABEL_141;
          }
        }

        else if (v34 > 0)
        {
          goto LABEL_141;
        }

        if (v34 < v170)
        {
          goto LABEL_175;
        }

        v85 = sub_26C00909C();
        v86 = v85;
        isUniquelyReferenced_nonNull_native = v87;
        v170 = v34;
        v88 = v87 >> 62;
        if ((v87 >> 62) > 1)
        {
          if (v88 != 2)
          {
LABEL_125:
            v19 = sub_26C00909C();
            v91 = v90;
            sub_26BE00258(v86, isUniquelyReferenced_nonNull_native);
            sub_26BE00258(v28, v77);
            sub_26BE00608(v19, v91);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v161 = sub_26BEEBD8C(0, *(v161 + 2) + 1, 1, v161);
            }

            v28 = *(v161 + 2);
            v92 = *(v161 + 3);
            a2 = v28 + 1;
            if (v28 >= v92 >> 1)
            {
              v161 = sub_26BEEBD8C((v92 > 1), v28 + 1, 1, v161);
            }

            v36 = (bswap32(v158) >> 16);
            sub_26BE00258(v19, v91);
            *(v161 + 2) = a2;
            v93 = &v161[24 * v28];
            *(v93 + 16) = v36;
            *(v93 + 5) = v19;
            *(v93 + 6) = v91;
            continue;
          }

          v85 = *(v85 + 16);
          v89 = *(v86 + 24);
        }

        else
        {
          if (!v88)
          {
            goto LABEL_125;
          }

          v85 = v85;
          v89 = v86 >> 32;
        }

        if (v89 < v85)
        {
          goto LABEL_176;
        }

        goto LABEL_125;
      }

      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      v121 = v169;
      sub_26BE00258(v159, v162);
      if (v121 > 100000000)
      {
        sub_26BE01600();
        swift_allocError();
        *v122 = 5;
        swift_willThrow();
LABEL_155:
        sub_26BE00258(*v4, v4[1]);
        *v4 = v159;
        v4[1] = v162;
        v4[2] = v158;
        swift_willThrow();

        goto LABEL_76;
      }

      v150 = sub_26BF2A44C(v121);
      if (v123 >> 60 == 15)
      {
        v119 = *v4;
        v120 = v4[1];
        goto LABEL_169;
      }

      isUniquelyReferenced_nonNull_native = v124;
      *&v169 = v150;
      *(&v169 + 1) = v123;
      v156 = v123 >> 62;
      v170 = v124;
      v151 = BYTE6(v123);
      v157 = MEMORY[0x277D84F90];
      while (2)
      {
        if (v156 > 1)
        {
          if (v156 == 2)
          {
            v125 = *(v150 + 24);
          }

          else
          {
            v125 = 0;
          }
        }

        else
        {
          v125 = v151;
          if (v156)
          {
            v125 = v150 >> 32;
          }
        }

        v38 = __OFSUB__(v125, isUniquelyReferenced_nonNull_native);
        v126 = v125 - isUniquelyReferenced_nonNull_native;
        if (v38)
        {
          goto LABEL_232;
        }

        v36 = *(&v169 + 1);
        a2 = v169;
        if (v126 < 1)
        {
          v95 = *(&v169 + 1) >> 62;
          if ((*(&v169 + 1) >> 62) > 1)
          {
            goto LABEL_222;
          }

          if (v95)
          {
            v145 = v169 >> 32;
          }

          else
          {
            v145 = BYTE14(v169);
          }

          goto LABEL_226;
        }

        v127 = v170;
        sub_26BE00608(v169, *(&v169 + 1));
        sub_26BE00608(a2, v36);
        sub_26BF30764(&v169, v167);
        if (BYTE8(v167[0]))
        {
          sub_26BE00258(v169, *(&v169 + 1));
          v130 = v36;
          v129 = a2;
LABEL_219:
          sub_26BE00258(v129, v130);
          *&v169 = a2;
          *(&v169 + 1) = v36;
          v170 = v127;
          sub_26BE01600();
          swift_allocError();
          *v146 = 1;
          goto LABEL_220;
        }

        v128 = *&v167[0];
        sub_26BE00258(a2, v36);
        isUniquelyReferenced_nonNull_native = &v170[v128];
        if (__OFADD__(v170, v128))
        {
          goto LABEL_233;
        }

        v130 = *(&v169 + 1);
        v129 = v169;
        v131 = *(&v169 + 1) >> 62;
        if ((*(&v169 + 1) >> 62) <= 1)
        {
          if (v131)
          {
            v132 = v169 >> 32;
          }

          else
          {
            v132 = BYTE14(v169);
          }

          goto LABEL_198;
        }

        if (v131 == 2)
        {
          v132 = *(v169 + 24);
LABEL_198:
          if (v132 < isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_219;
          }
        }

        else if (isUniquelyReferenced_nonNull_native > 0)
        {
          goto LABEL_219;
        }

        if (isUniquelyReferenced_nonNull_native < v170)
        {
          goto LABEL_234;
        }

        v133 = sub_26C00909C();
        v134 = v133;
        v136 = v135;
        v170 = isUniquelyReferenced_nonNull_native;
        v137 = v135 >> 62;
        if ((v135 >> 62) > 1)
        {
          if (v137 != 2)
          {
LABEL_209:
            v139 = sub_26C00909C();
            v141 = v140;
            sub_26BE00258(v134, v136);
            sub_26BE00258(a2, v36);
            sub_26BE00608(v139, v141);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v157 = sub_26BEECB7C(0, *(v157 + 16) + 1, 1, v157);
            }

            v143 = *(v157 + 16);
            v142 = *(v157 + 24);
            if (v143 >= v142 >> 1)
            {
              v157 = sub_26BEECB7C((v142 > 1), v143 + 1, 1, v157);
            }

            sub_26BE00258(v139, v141);
            *(v157 + 16) = v143 + 1;
            v144 = v157 + 16 * v143;
            *(v144 + 32) = v139;
            *(v144 + 40) = v141;
            continue;
          }

          v133 = *(v133 + 16);
          v138 = *(v134 + 24);
        }

        else
        {
          if (!v137)
          {
            goto LABEL_209;
          }

          v133 = v133;
          v138 = v134 >> 32;
        }

        break;
      }

      if (v138 < v133)
      {
        goto LABEL_235;
      }

      goto LABEL_209;
    }

    break;
  }

  sub_26BE00258(v169, *(&v169 + 1));
  v82 = v77;
  v81 = v28;
LABEL_141:
  sub_26BE00258(v81, v82);
  *&v169 = v28;
  *(&v169 + 1) = v77;
  v170 = v76;
LABEL_142:
  sub_26BE01600();
  swift_allocError();
  *v96 = 1;
LABEL_143:
  swift_willThrow();

  sub_26BE00258(v169, *(&v169 + 1));
LABEL_75:
  sub_26BE00258(*v4, v4[1]);
  *v4 = v163;
  v4[1] = i;
  v4[2] = v162;
  swift_willThrow();
LABEL_76:

LABEL_81:
  v25 = v160;
  v26 = v164;
LABEL_11:
  sub_26BE0489C(v25, v26);
  __swift_destroy_boxed_opaque_existential_1(v173);
}

void *sub_26BEBB1B8(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_26BEBB1D8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_26BEBB208(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x26D699B00](*(v1 + 40), a1, 4);

  return sub_26BEBB704(v2, v3);
}

unint64_t sub_26BEBB250(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_26C00B05C();
  sub_26C00911C();
  MEMORY[0x26D699B60](a3);
  v6 = sub_26C00B0CC();

  return sub_26BEBB770(a1, a2, a3, v6);
}

unint64_t sub_26BEBB2E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26C00B05C();
  sub_26C00911C();
  MEMORY[0x26D699B60](a3);
  MEMORY[0x26D699B60](a4);
  v8 = sub_26C00B0CC();

  return sub_26BEBBB7C(a1, a2, a3, a4, v8);
}

unint64_t sub_26BEBB390(uint64_t a1)
{
  sub_26C00928C();
  sub_26BEBE70C(&qword_28045E828, MEMORY[0x277CC9600]);
  v2 = sub_26C00A3BC();

  return sub_26BEBBFA0(a1, v2);
}

unint64_t sub_26BEBB414(uint64_t a1)
{
  v1 = a1;
  sub_26C00B05C();
  sub_26C00B09C();
  v2 = sub_26C00B0CC();

  return sub_26BEBB704(v1, v2);
}

unint64_t sub_26BEBB480(unint64_t a1)
{
  sub_26C00B05C();
  sub_26C00B07C();
  sub_26C00B09C();
  v2 = sub_26C00B0CC();

  return sub_26BEBC14C(a1 & 0xFFFFFFFF00000001, v2);
}

unint64_t sub_26BEBB504(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_26C00B05C();
  MEMORY[0x26D699B60](a1);
  sub_26C00911C();
  v6 = sub_26C00B0CC();

  return sub_26BEBC1D4(a1, a2, a3, v6);
}

unint64_t sub_26BEBB598(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_26C00B05C();
  sub_26C00B09C();
  MEMORY[0x26D699B60](a2);
  v4 = sub_26C00B0CC();

  return sub_26BEBC61C(v3, a2, v4);
}

unint64_t sub_26BEBB618(uint64_t a1, uint64_t a2)
{
  sub_26C00B05C();
  sub_26C00A58C();
  v4 = sub_26C00B0CC();

  return sub_26BEBC698(a1, a2, v4);
}

unint64_t sub_26BEBB690(uint64_t a1, unint64_t a2)
{
  sub_26C00B05C();
  sub_26C00911C();
  v4 = sub_26C00B0CC();
  return sub_26BEBC750(a1, a2, v4);
}

unint64_t sub_26BEBB704(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_26BEBB770(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v52[3] = *MEMORY[0x277D85DE8];
  v6 = v4 + 64;
  v7 = -1 << *(v4 + 32);
  v8 = a4 & ~v7;
  if ((*(v4 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = a3;
    v10 = a2;
    v11 = a1;
    v12 = 0;
    v13 = ~v7;
    if (a1)
    {
      v14 = 0;
    }

    else
    {
      v14 = a2 == 0xC000000000000000;
    }

    v15 = !v14;
    v16 = a2 >> 62;
    v17 = __OFSUB__(HIDWORD(a1), a1);
    v50 = v17;
    v48 = v6;
    v49 = HIDWORD(a1) - a1;
    v18 = BYTE6(a2);
    v45 = BYTE6(a2);
    v47 = ~v7;
    v46 = v15;
    while (1)
    {
      v19 = (*(v5 + 48) + 24 * v8);
      v21 = *v19;
      v20 = v19[1];
      v22 = v19[2];
      v23 = v20 >> 62;
      if (v20 >> 62 == 3)
      {
        break;
      }

      if (v23 > 1)
      {
        if (v23 != 2)
        {
          goto LABEL_37;
        }

        v29 = *(v21 + 16);
        v28 = *(v21 + 24);
        v30 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v30)
        {
          goto LABEL_65;
        }

        if (v16 <= 1)
        {
          goto LABEL_34;
        }
      }

      else if (v23)
      {
        LODWORD(v27) = HIDWORD(v21) - v21;
        if (__OFSUB__(HIDWORD(v21), v21))
        {
          goto LABEL_66;
        }

        v27 = v27;
        if (v16 <= 1)
        {
LABEL_34:
          v31 = v18;
          if (v16)
          {
            v31 = v49;
            if (v50)
            {
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
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
            }
          }

          goto LABEL_40;
        }
      }

      else
      {
        v27 = BYTE6(v20);
        if (v16 <= 1)
        {
          goto LABEL_34;
        }
      }

LABEL_38:
      if (v16 != 2)
      {
        if (!v27)
        {
          goto LABEL_13;
        }

        goto LABEL_14;
      }

      v33 = *(v11 + 16);
      v32 = *(v11 + 24);
      v30 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (v30)
      {
        goto LABEL_64;
      }

LABEL_40:
      if (v27 != v31)
      {
        goto LABEL_14;
      }

      if (v27 < 1)
      {
        goto LABEL_13;
      }

      if (v23 > 1)
      {
        if (v23 == 2)
        {
          v43 = v12;
          v35 = *(v21 + 16);
          v34 = *(v21 + 24);
          sub_26BE00608(v21, v20);
          v36 = sub_26C008E9C();
          if (v36)
          {
            v37 = sub_26C008ECC();
            if (__OFSUB__(v35, v37))
            {
              goto LABEL_69;
            }

            v36 += v35 - v37;
          }

          if (__OFSUB__(v34, v35))
          {
            goto LABEL_68;
          }

          goto LABEL_58;
        }

        memset(v52, 0, 14);
        sub_26BE00608(v21, v20);
      }

      else
      {
        if (v23)
        {
          v43 = v12;
          if (v21 >> 32 < v21)
          {
            goto LABEL_67;
          }

          sub_26BE00608(v21, v20);
          v36 = sub_26C008E9C();
          if (v36)
          {
            v38 = sub_26C008ECC();
            if (__OFSUB__(v21, v38))
            {
              goto LABEL_70;
            }

            v36 += v21 - v38;
          }

LABEL_58:
          sub_26C008EBC();
          v12 = v43;
          v11 = a1;
          v10 = a2;
          sub_26BE567B0(v36, a1, a2, v52);
          sub_26BE00258(v21, v20);
          v39 = LOBYTE(v52[0]);
          v9 = a3;
          goto LABEL_61;
        }

        v52[0] = v21;
        LOWORD(v52[1]) = v20;
        BYTE2(v52[1]) = BYTE2(v20);
        BYTE3(v52[1]) = BYTE3(v20);
        BYTE4(v52[1]) = BYTE4(v20);
        BYTE5(v52[1]) = BYTE5(v20);
        sub_26BE00608(v21, v20);
        v11 = a1;
      }

      sub_26BE567B0(v52, v11, v10, &v51);
      sub_26BE00258(v21, v20);
      v39 = v51;
LABEL_61:
      v13 = v47;
      v6 = v48;
      v15 = v46;
      v18 = v45;
      if (v39)
      {
        goto LABEL_13;
      }

LABEL_14:
      v8 = (v8 + 1) & v13;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        return v8;
      }
    }

    if (v21)
    {
      v24 = 0;
    }

    else
    {
      v24 = v20 == 0xC000000000000000;
    }

    v26 = !v24 || v16 < 3;
    if (((v26 | v15) & 1) == 0)
    {
LABEL_13:
      if (v22 == v9)
      {
        return v8;
      }

      goto LABEL_14;
    }

LABEL_37:
    v27 = 0;
    if (v16 <= 1)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

  return v8;
}

unint64_t sub_26BEBBB7C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55[3] = *MEMORY[0x277D85DE8];
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = a4;
    v10 = a3;
    v11 = a1;
    v12 = ~v7;
    if (a1)
    {
      v13 = 0;
    }

    else
    {
      v13 = a2 == 0xC000000000000000;
    }

    v14 = !v13;
    v15 = a2 >> 62;
    v16 = __OFSUB__(HIDWORD(a1), a1);
    v52 = v16;
    v51 = HIDWORD(a1) - a1;
    v17 = BYTE6(a2);
    v48 = ~v7;
    v49 = v5 + 64;
    v47 = v14;
    while (1)
    {
      v19 = (*(v5 + 48) + 32 * v8);
      v21 = *v19;
      v20 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = v20 >> 62;
      if (v20 >> 62 == 3)
      {
        break;
      }

      if (v24 > 1)
      {
        if (v24 != 2)
        {
          goto LABEL_39;
        }

        v30 = *(v21 + 16);
        v29 = *(v21 + 24);
        v31 = __OFSUB__(v29, v30);
        v28 = v29 - v30;
        if (v31)
        {
          goto LABEL_72;
        }

        if (v15 > 1)
        {
          goto LABEL_40;
        }
      }

      else if (v24)
      {
        LODWORD(v28) = HIDWORD(v21) - v21;
        if (__OFSUB__(HIDWORD(v21), v21))
        {
          goto LABEL_73;
        }

        v28 = v28;
        if (v15 > 1)
        {
LABEL_40:
          if (v15 != 2)
          {
            if (v28)
            {
              goto LABEL_16;
            }

            goto LABEL_12;
          }

          v34 = *(v11 + 16);
          v33 = *(v11 + 24);
          v31 = __OFSUB__(v33, v34);
          v32 = v33 - v34;
          if (v31)
          {
            goto LABEL_71;
          }

          goto LABEL_42;
        }
      }

      else
      {
        v28 = BYTE6(v20);
        if (v15 > 1)
        {
          goto LABEL_40;
        }
      }

LABEL_36:
      v32 = v17;
      if (v15)
      {
        v32 = v51;
        if (v52)
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
        }
      }

LABEL_42:
      if (v28 != v32)
      {
        goto LABEL_16;
      }

      if (v28 >= 1)
      {
        if (v24 > 1)
        {
          if (v24 == 2)
          {
            v37 = *(v21 + 16);
            v36 = *(v21 + 24);
            sub_26BE00608(v21, v20);
            v38 = sub_26C008E9C();
            if (v38)
            {
              v39 = sub_26C008ECC();
              if (__OFSUB__(v37, v39))
              {
                goto LABEL_76;
              }

              v38 += v37 - v39;
            }

            if (__OFSUB__(v36, v37))
            {
              goto LABEL_75;
            }

            goto LABEL_62;
          }

          memset(v55, 0, 14);
          sub_26BE00608(v21, v20);
          v35 = v11;
LABEL_64:
          sub_26BE567B0(v55, v35, a2, &v54);
          sub_26BE00258(v21, v20);
          v41 = v54;
        }

        else
        {
          if (!v24)
          {
            v55[0] = v21;
            LOWORD(v55[1]) = v20;
            BYTE2(v55[1]) = BYTE2(v20);
            BYTE3(v55[1]) = BYTE3(v20);
            BYTE4(v55[1]) = BYTE4(v20);
            BYTE5(v55[1]) = BYTE5(v20);
            sub_26BE00608(v21, v20);
            v35 = a1;
            goto LABEL_64;
          }

          if (v21 >> 32 < v21)
          {
            goto LABEL_74;
          }

          sub_26BE00608(v21, v20);
          v38 = sub_26C008E9C();
          if (v38)
          {
            v40 = sub_26C008ECC();
            if (__OFSUB__(v21, v40))
            {
              goto LABEL_77;
            }

            v38 += v21 - v40;
          }

LABEL_62:
          sub_26C008EBC();
          sub_26BE567B0(v38, a1, a2, v55);
          sub_26BE00258(v21, v20);
          v41 = LOBYTE(v55[0]);
          v9 = a4;
          v5 = v45;
          v10 = a3;
        }

        v12 = v48;
        v6 = v49;
        v14 = v47;
        v17 = v46;
        if (v41)
        {
          v11 = a1;
          if (v22 == v10 && v23 == v9)
          {
            return v8;
          }
        }

        else
        {
          v11 = a1;
        }

        goto LABEL_16;
      }

LABEL_12:
      if (v22 == v10 && v23 == v9)
      {
        return v8;
      }

LABEL_16:
      v8 = (v8 + 1) & v12;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        return v8;
      }
    }

    if (v21)
    {
      v25 = 0;
    }

    else
    {
      v25 = v20 == 0xC000000000000000;
    }

    v27 = !v25 || v15 < 3;
    if (((v27 | v14) & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_39:
    v28 = 0;
    if (v15 > 1)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  return v8;
}

unint64_t sub_26BEBBFA0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_26C00928C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_26BEBE70C(&qword_28045ED48, MEMORY[0x277CC9610]);
      v15 = sub_26C00A43C();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_26BEBC14C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (!((*(*(v2 + 48) + 8 * result) ^ a1) & 1 | (*(*(v2 + 48) + 8 * result + 4) != HIDWORD(a1))))
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_26BEBC1D4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v51[3] = *MEMORY[0x277D85DE8];
  v6 = v4 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a4 & ~v7;
  if ((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = a3;
    v10 = a2;
    v11 = a1;
    v12 = 0;
    v13 = ~v7;
    if (a2)
    {
      v14 = 0;
    }

    else
    {
      v14 = a3 == 0xC000000000000000;
    }

    v15 = !v14;
    v49 = v15;
    v16 = a3 >> 62;
    v17 = __OFSUB__(HIDWORD(a2), a2);
    v44 = v17;
    v43 = HIDWORD(a2) - a2;
    v47 = v13;
    v48 = BYTE6(a3);
    v46 = v6;
    while (1)
    {
      v18 = (*(v5 + 48) + 24 * v8);
      if (*v18 != v11)
      {
        goto LABEL_13;
      }

      v20 = v18[1];
      v19 = v18[2];
      v21 = v19 >> 62;
      if (v19 >> 62 == 3)
      {
        break;
      }

      if (v21 > 1)
      {
        if (v21 != 2)
        {
          goto LABEL_37;
        }

        v27 = *(v20 + 16);
        v26 = *(v20 + 24);
        v28 = __OFSUB__(v26, v27);
        v25 = v26 - v27;
        if (v28)
        {
          goto LABEL_69;
        }

        if (v16 <= 1)
        {
          goto LABEL_34;
        }
      }

      else if (v21)
      {
        LODWORD(v25) = HIDWORD(v20) - v20;
        if (__OFSUB__(HIDWORD(v20), v20))
        {
          goto LABEL_68;
        }

        v25 = v25;
        if (v16 <= 1)
        {
LABEL_34:
          v29 = v48;
          if (v16)
          {
            v29 = v43;
            if (v44)
            {
              __break(1u);
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
LABEL_73:
              __break(1u);
            }
          }

          goto LABEL_40;
        }
      }

      else
      {
        v25 = BYTE6(v19);
        if (v16 <= 1)
        {
          goto LABEL_34;
        }
      }

LABEL_38:
      if (v16 != 2)
      {
        if (!v25)
        {
          return v8;
        }

        goto LABEL_13;
      }

      v31 = *(v10 + 16);
      v30 = *(v10 + 24);
      v28 = __OFSUB__(v30, v31);
      v29 = v30 - v31;
      if (v28)
      {
        goto LABEL_67;
      }

LABEL_40:
      if (v25 == v29)
      {
        if (v25 < 1)
        {
          return v8;
        }

        if (v21 > 1)
        {
          if (v21 == 2)
          {
            v32 = *(v20 + 16);
            v40 = *(v20 + 24);
            sub_26BE00608(v20, v19);
            v33 = sub_26C008E9C();
            v45 = v12;
            if (v33)
            {
              v34 = sub_26C008ECC();
              if (__OFSUB__(v32, v34))
              {
                goto LABEL_72;
              }

              v35 = v10;
              v33 += v32 - v34;
            }

            else
            {
              v35 = v10;
            }

            if (__OFSUB__(v40, v32))
            {
              goto LABEL_71;
            }

            goto LABEL_62;
          }

          memset(v51, 0, 14);
          sub_26BE00608(v20, v19);
          sub_26BE567B0(v51, v10, v9, &v50);
          sub_26BE00258(v20, v19);
          if (v50)
          {
            return v8;
          }
        }

        else
        {
          if (!v21)
          {
            v51[0] = v20;
            LOWORD(v51[1]) = v19;
            BYTE2(v51[1]) = BYTE2(v19);
            BYTE3(v51[1]) = BYTE3(v19);
            BYTE4(v51[1]) = BYTE4(v19);
            BYTE5(v51[1]) = BYTE5(v19);
            sub_26BE00608(v20, v19);
            sub_26BE567B0(v51, v10, v9, &v50);
            sub_26BE00258(v20, v19);
            if (v50)
            {
              return v8;
            }

            goto LABEL_64;
          }

          v45 = v12;
          v35 = v10;
          if (v20 >> 32 < v20)
          {
            goto LABEL_70;
          }

          sub_26BE00608(v20, v19);
          v33 = sub_26C008E9C();
          if (v33)
          {
            v36 = sub_26C008ECC();
            if (__OFSUB__(v20, v36))
            {
              goto LABEL_73;
            }

            v33 += v20 - v36;
          }

LABEL_62:
          sub_26C008EBC();
          v37 = v33;
          v10 = v35;
          v38 = v35;
          v9 = a3;
          v12 = v45;
          sub_26BE567B0(v37, v38, a3, v51);
          sub_26BE00258(v20, v19);
          if (v51[0])
          {
            return v8;
          }

          v11 = a1;
LABEL_64:
          v6 = v46;
        }

        v13 = v47;
      }

LABEL_13:
      v8 = (v8 + 1) & v13;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        return v8;
      }
    }

    if (v20)
    {
      v22 = 0;
    }

    else
    {
      v22 = v19 == 0xC000000000000000;
    }

    v24 = !v22 || v16 < 3;
    if (((v24 | v49) & 1) == 0)
    {
      return v8;
    }

LABEL_37:
    v25 = 0;
    if (v16 <= 1)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

  return v8;
}

unint64_t sub_26BEBC61C(int a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *v8;
      v10 = *(v8 + 8);
      if (v9 == a1 && v10 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_26BEBC698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26C00AF2C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26BEBC750(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v45[3] = *MEMORY[0x277D85DE8];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v43 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v40 = v14;
    v39 = HIDWORD(a1) - a1;
    v41 = v10;
    v42 = BYTE6(a2);
    v36 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v42;
          if (v13)
          {
            v26 = v39;
            if (v40)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
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
LABEL_69:
        __break(1u);
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        return v6;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v45[0] = v17;
          LOWORD(v45[1]) = v16;
          BYTE2(v45[1]) = BYTE2(v16);
          BYTE3(v45[1]) = BYTE3(v16);
          BYTE4(v45[1]) = BYTE4(v16);
          BYTE5(v45[1]) = BYTE5(v16);
          sub_26BE00608(v17, v16);
          sub_26BE567B0(v45, v9, v8, &v44);
          sub_26BE00258(v17, v16);
          if (v44)
          {
            return v6;
          }

          v10 = v41;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_26BE00608(v17, v16);
        v31 = sub_26C008E9C();
        if (v31)
        {
          v33 = sub_26C008ECC();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_26BE00608(v17, v16);
        v31 = sub_26C008E9C();
        if (v31)
        {
          v32 = sub_26C008ECC();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        sub_26C008EBC();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_26BE567B0(v34, a1, a2, v45);
        sub_26BE00258(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      sub_26BE00608(v17, v16);
      sub_26BE567B0(v45, v9, v8, &v44);
      sub_26BE00258(v17, v16);
      if (v44)
      {
        return v6;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v43) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}

char *sub_26BEBCB50(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_26BEBCEAC(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_26BEBE79C(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x26D69A4E0](v14, -1, -1);
  }

  return v10;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26BEBCD0C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_26BEBDB9C(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_26BEBE6E0(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x26D69A4E0](v14, -1, -1);
  }

  return v10;
}

char *sub_26BEBCEAC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v129 = *MEMORY[0x277D85DE8];
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  v114 = a4 + 56;

  v95 = 0;
  v10 = 0;
  v112 = a4;
  v97 = v9;
  v98 = v5;
  while (1)
  {
LABEL_6:
    if (v8)
    {
      goto LABEL_11;
    }

    do
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_163:
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
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
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
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
      }

      if (v11 >= v9)
      {

        return sub_26BEBDE70(a1, a2, v95, v112);
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
    }

    while (!v8);
    v10 = v11;
LABEL_11:
    v107 = (v8 - 1) & v8;
    v12 = (*(a3 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v8)))));
    v13 = *v12;
    v14 = v12[1];
    sub_26C00B05C();
    sub_26BE00608(v13, v14);
    sub_26C00911C();
    v15 = sub_26C00B0CC();
    v16 = v112;
    v17 = -1 << *(v112 + 32);
    v18 = v15 & ~v17;
    v19 = v18 >> 6;
    v20 = v114;
    v21 = 1 << v18;
    v118 = v14;
    if (((1 << v18) & *(v114 + 8 * (v18 >> 6))) != 0)
    {
      break;
    }

LABEL_5:
    sub_26BE00258(v13, v118);
    v9 = v97;
    v5 = v98;
    v8 = v107;
  }

  v22 = ~v17;
  v23 = v14 >> 62;
  if (v13)
  {
    v24 = 0;
  }

  else
  {
    v24 = v14 == 0xC000000000000000;
  }

  v25 = !v24;
  v115 = v25;
  v106 = HIDWORD(v13);
  v26 = __OFSUB__(HIDWORD(v13), v13);
  v110 = v26;
  v116 = v14 >> 62;
  __n = BYTE6(v14);
  v108 = v13;
  v109 = HIDWORD(v13) - v13;
  v104 = (v13 >> 32) - v13;
  v105 = v13 >> 32;
  v113 = v13;
  v111 = v22;
  while (1)
  {
    v27 = (*(v16 + 48) + 16 * v18);
    v29 = *v27;
    v28 = v27[1];
    v30 = v28 >> 62;
    if (v28 >> 62 == 3)
    {
      if (v29)
      {
        v31 = 0;
      }

      else
      {
        v31 = v28 == 0xC000000000000000;
      }

      v33 = !v31 || v23 < 3;
      if (((v33 | v115) & 1) == 0)
      {
        v85 = 0;
        v86 = 0xC000000000000000;
LABEL_155:
        sub_26BE00258(v85, v86);
LABEL_156:
        v9 = v97;
        v87 = a1[v19];
        a1[v19] = v87 | v21;
        v5 = v98;
        v8 = v107;
        if ((v87 & v21) == 0)
        {
          v37 = __OFADD__(v95++, 1);
          if (v37)
          {
            goto LABEL_186;
          }
        }

        goto LABEL_6;
      }

LABEL_46:
      v34 = 0;
      if (v23 <= 1)
      {
        goto LABEL_43;
      }

      goto LABEL_47;
    }

    if (v30 > 1)
    {
      if (v30 != 2)
      {
        goto LABEL_46;
      }

      v36 = *(v29 + 16);
      v35 = *(v29 + 24);
      v37 = __OFSUB__(v35, v36);
      v34 = v35 - v36;
      if (v37)
      {
        goto LABEL_165;
      }

      if (v23 <= 1)
      {
        goto LABEL_43;
      }
    }

    else if (v30)
    {
      LODWORD(v34) = HIDWORD(v29) - v29;
      if (__OFSUB__(HIDWORD(v29), v29))
      {
        goto LABEL_166;
      }

      v34 = v34;
      if (v23 <= 1)
      {
LABEL_43:
        v38 = __n;
        if (v23)
        {
          v38 = v109;
          if (v110)
          {
            goto LABEL_163;
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
      v34 = BYTE6(v28);
      if (v23 <= 1)
      {
        goto LABEL_43;
      }
    }

LABEL_47:
    if (v23 != 2)
    {
      if (!v34)
      {
        goto LABEL_154;
      }

      goto LABEL_23;
    }

    v40 = *(v13 + 16);
    v39 = *(v13 + 24);
    v37 = __OFSUB__(v39, v40);
    v38 = v39 - v40;
    if (v37)
    {
      goto LABEL_164;
    }

LABEL_49:
    if (v34 != v38)
    {
      goto LABEL_23;
    }

    if (v34 < 1)
    {
      goto LABEL_154;
    }

    if (v30 > 1)
    {
      if (v30 != 2)
      {
        *&__s1[6] = 0;
        *__s1 = 0;
        if (!v23)
        {
LABEL_76:
          __s2 = v13;
          v120 = BYTE2(v13);
          v121 = BYTE3(v13);
          v122 = v106;
          v123 = BYTE5(v13);
          v124 = BYTE6(v13);
          v125 = HIBYTE(v13);
          v126 = v118;
          v127 = WORD2(v118);
          v56 = v16;
          v57 = memcmp(__s1, &__s2, __n);
          v16 = v56;
          v23 = v116;
          v22 = v111;
          v20 = v114;
          if (!v57)
          {
            goto LABEL_154;
          }

          goto LABEL_23;
        }

        if (v23 == 2)
        {
          v101 = *(v13 + 16);
          v90 = *(v13 + 24);
          sub_26BE00608(v29, v28);
          v53 = sub_26C008E9C();
          if (v53)
          {
            v54 = sub_26C008ECC();
            v55 = v101;
            if (__OFSUB__(v101, v54))
            {
              goto LABEL_181;
            }

            v53 = &v101[v53 - v54];
          }

          else
          {
            v55 = v101;
          }

          v77 = v90 - v55;
          if (__OFSUB__(v90, v55))
          {
            goto LABEL_174;
          }

          v78 = sub_26C008EBC();
          if (!v53)
          {
            goto LABEL_193;
          }

          goto LABEL_130;
        }

        if (v105 < v108)
        {
          goto LABEL_170;
        }

        sub_26BE00608(v29, v28);
        v67 = sub_26C008E9C();
        if (!v67)
        {
          goto LABEL_189;
        }

        v68 = v67;
        v69 = sub_26C008ECC();
        if (__OFSUB__(v108, v69))
        {
          goto LABEL_176;
        }

        v44 = (v108 - v69 + v68);
        v45 = sub_26C008EBC();
        if (!v44)
        {
          goto LABEL_190;
        }

LABEL_109:
        if (v45 >= v104)
        {
          v70 = v104;
        }

        else
        {
          v70 = v45;
        }

        v71 = memcmp(__s1, v44, v70);
        sub_26BE00258(v29, v28);
        v13 = v113;
        v20 = v114;
LABEL_153:
        v22 = v111;
        v16 = v112;
        v23 = v116;
        if (!v71)
        {
          goto LABEL_154;
        }

        goto LABEL_23;
      }

      v46 = *(v29 + 16);
      sub_26BE00608(v29, v28);
      v47 = sub_26C008E9C();
      if (v47)
      {
        v48 = v47;
        v49 = sub_26C008ECC();
        if (__OFSUB__(v46, v49))
        {
          goto LABEL_168;
        }

        v99 = (v46 - v49 + v48);
      }

      else
      {
        v99 = 0;
      }

      sub_26C008EBC();
      v13 = v113;
      if (v116 == 2)
      {
        v88 = *(v113 + 24);
        v92 = *(v113 + 16);
        v58 = sub_26C008E9C();
        if (v58)
        {
          v72 = sub_26C008ECC();
          v73 = v92;
          if (__OFSUB__(v92, v72))
          {
            goto LABEL_182;
          }

          v58 += v92 - v72;
        }

        else
        {
          v73 = v92;
        }

        v81 = v88 - v73;
        if (__OFSUB__(v88, v73))
        {
          goto LABEL_177;
        }

        v82 = sub_26C008EBC();
        if (v82 >= v81)
        {
          v61 = v81;
        }

        else
        {
          v61 = v82;
        }

        result = v99;
        if (!v99)
        {
          goto LABEL_201;
        }

        v13 = v113;
        if (!v58)
        {
          goto LABEL_202;
        }

        goto LABEL_150;
      }

      if (v116 == 1)
      {
        if (v105 < v108)
        {
          goto LABEL_173;
        }

        v58 = sub_26C008E9C();
        if (v58)
        {
          v59 = sub_26C008ECC();
          if (__OFSUB__(v108, v59))
          {
            goto LABEL_183;
          }

          v58 += v108 - v59;
        }

        v60 = sub_26C008EBC();
        v61 = v104;
        if (v60 < v104)
        {
          v61 = v60;
        }

        v13 = v113;
        result = v99;
        if (!v99)
        {
          goto LABEL_199;
        }

        if (!v58)
        {
          goto LABEL_195;
        }

LABEL_150:
        if (result == v58)
        {
          sub_26BE00258(v29, v28);
          sub_26BE00258(v13, v118);
          goto LABEL_156;
        }

        v71 = memcmp(result, v58, v61);
        sub_26BE00258(v29, v28);
        goto LABEL_152;
      }

      v74 = v99;
      *__s1 = v113;
      __s1[4] = v106;
      *&__s1[5] = *(&v113 + 5);
      __s1[7] = HIBYTE(v113);
      *&__s1[8] = v118;
      *&__s1[12] = WORD2(v118);
      if (!v99)
      {
        goto LABEL_192;
      }

LABEL_122:
      v71 = memcmp(v74, __s1, __n);
      sub_26BE00258(v29, v28);
LABEL_152:
      v20 = v114;
      goto LABEL_153;
    }

    if (v30)
    {
      if (v29 > v29 >> 32)
      {
        goto LABEL_167;
      }

      sub_26BE00608(v29, v28);
      v50 = sub_26C008E9C();
      if (v50)
      {
        v51 = v50;
        v52 = sub_26C008ECC();
        if (__OFSUB__(v29, v52))
        {
          goto LABEL_169;
        }

        v100 = (v29 - v52 + v51);
      }

      else
      {
        v100 = 0;
      }

      sub_26C008EBC();
      v13 = v113;
      if (v116 == 2)
      {
        v89 = *(v113 + 24);
        v93 = *(v113 + 16);
        v58 = sub_26C008E9C();
        if (v58)
        {
          v75 = sub_26C008ECC();
          v76 = v93;
          if (__OFSUB__(v93, v75))
          {
            goto LABEL_184;
          }

          v58 += v93 - v75;
        }

        else
        {
          v76 = v93;
        }

        v83 = v89 - v76;
        if (__OFSUB__(v89, v76))
        {
          goto LABEL_179;
        }

        v84 = sub_26C008EBC();
        if (v84 >= v83)
        {
          v61 = v83;
        }

        else
        {
          v61 = v84;
        }

        result = v100;
        if (!v100)
        {
          goto LABEL_196;
        }

        v13 = v113;
        if (!v58)
        {
          goto LABEL_198;
        }

        goto LABEL_150;
      }

      if (v116 == 1)
      {
        if (v105 < v108)
        {
          goto LABEL_178;
        }

        v58 = sub_26C008E9C();
        if (v58)
        {
          v63 = sub_26C008ECC();
          if (__OFSUB__(v108, v63))
          {
            goto LABEL_185;
          }

          v58 += v108 - v63;
        }

        v64 = sub_26C008EBC();
        v61 = v104;
        if (v64 < v104)
        {
          v61 = v64;
        }

        v13 = v113;
        result = v100;
        if (!v100)
        {
          goto LABEL_200;
        }

        if (!v58)
        {
          goto LABEL_197;
        }

        goto LABEL_150;
      }

      v74 = v100;
      *__s1 = v113;
      __s1[4] = v106;
      *&__s1[5] = *(&v113 + 5);
      __s1[7] = HIBYTE(v113);
      *&__s1[8] = v118;
      *&__s1[12] = WORD2(v118);
      if (!v100)
      {
        goto LABEL_191;
      }

      goto LABEL_122;
    }

    *__s1 = v29;
    *&__s1[8] = v28;
    __s1[10] = BYTE2(v28);
    __s1[11] = BYTE3(v28);
    __s1[12] = BYTE4(v28);
    __s1[13] = BYTE5(v28);
    if (!v23)
    {
      goto LABEL_76;
    }

    if (v23 == 1)
    {
      if (v105 < v108)
      {
        goto LABEL_171;
      }

      sub_26BE00608(v29, v28);
      v41 = sub_26C008E9C();
      if (!v41)
      {
        goto LABEL_194;
      }

      v42 = v41;
      v43 = sub_26C008ECC();
      if (__OFSUB__(v108, v43))
      {
        goto LABEL_175;
      }

      v44 = (v108 - v43 + v42);
      v45 = sub_26C008EBC();
      if (!v44)
      {
        goto LABEL_188;
      }

      goto LABEL_109;
    }

    v102 = *(v13 + 16);
    v91 = *(v13 + 24);
    sub_26BE00608(v29, v28);
    v53 = sub_26C008E9C();
    if (v53)
    {
      v65 = sub_26C008ECC();
      v66 = v102;
      if (__OFSUB__(v102, v65))
      {
        goto LABEL_180;
      }

      v53 = &v102[v53 - v65];
    }

    else
    {
      v66 = v102;
    }

    v77 = v91 - v66;
    if (__OFSUB__(v91, v66))
    {
      goto LABEL_172;
    }

    v78 = sub_26C008EBC();
    if (!v53)
    {
      break;
    }

LABEL_130:
    if (v78 >= v77)
    {
      v79 = v77;
    }

    else
    {
      v79 = v78;
    }

    v80 = memcmp(__s1, v53, v79);
    sub_26BE00258(v29, v28);
    v16 = v112;
    v13 = v113;
    v20 = v114;
    v22 = v111;
    v23 = v116;
    if (!v80)
    {
LABEL_154:
      v85 = v13;
      v86 = v118;
      goto LABEL_155;
    }

LABEL_23:
    v18 = (v18 + 1) & v22;
    v19 = v18 >> 6;
    v21 = 1 << v18;
    if ((*(v20 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  sub_26C008EBC();
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  result = sub_26C008EBC();
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
  return result;
}

uint64_t sub_26BEBDA1C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = *(a3 + 16);
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = 0;
  v9 = 0;
  v10 = a4 + 56;
  v11 = a3 + 32;
  while (1)
  {
    v13 = *(v11 + 2 * v9);
    sub_26C00B05C();
    sub_26C00B08C();
    v14 = sub_26C00B0CC();
    v15 = -1 << *(a4 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    v18 = 1 << v16;
    if (((1 << v16) & *(v10 + 8 * (v16 >> 6))) != 0)
    {
      v19 = *(a4 + 48);
      if (*(v19 + 2 * v16) != v13)
      {
        v20 = ~v15;
        do
        {
          v16 = (v16 + 1) & v20;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v10 + 8 * (v16 >> 6))) == 0)
          {
            goto LABEL_4;
          }
        }

        while (*(v19 + 2 * v16) != v13);
      }

      v12 = a1[v17];
      a1[v17] = v12 | v18;
      if ((v12 & v18) == 0 && __OFADD__(v8++, 1))
      {
        break;
      }
    }

LABEL_4:
    if (++v9 == v7)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_14:
  v8 = 0;
LABEL_15:

  return sub_26BEBE0AC(a1, a2, v8, a4, a5, a6);
}

uint64_t sub_26BEBDB9C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v36 = a4 + 56;

  v31 = 0;
  v32 = v5;
  v12 = 0;
  v34 = v10;
  v35 = v6;
  while (v9)
  {
LABEL_11:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = (*(v5 + 48) + ((v12 << 10) | (16 * v15)));
    v18 = *v16;
    v17 = v16[1];
    sub_26C00B05C();

    sub_26C00A58C();
    v19 = sub_26C00B0CC();
    v20 = -1 << *(v4 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) != 0)
    {
      v24 = v4;
      v25 = (*(v4 + 48) + 16 * v21);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v20;
        while ((sub_26C00AF2C() & 1) == 0)
        {
          v21 = (v21 + 1) & v27;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) == 0)
          {
            v4 = v24;
            v5 = v32;
            goto LABEL_23;
          }

          v28 = (*(v24 + 48) + 16 * v21);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v13 = a1[v22];
      a1[v22] = v13 | v23;
      v4 = v24;
      v5 = v32;
      v10 = v34;
      v6 = v35;
      if ((v13 & v23) == 0 && __OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_27:

        return sub_26BEBE2AC(a1, a2, v31, v4);
      }
    }

    else
    {
LABEL_23:

      v10 = v34;
      v6 = v35;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_27;
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_26BEBDDF4(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
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
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
    }

    result = a3(&v7, result, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_26BEBDE70(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED70, &qword_26C016128);
  result = sub_26C00ABFC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_26C00B05C();
    sub_26BE00608(v17, v18);
    sub_26C00911C();
    result = sub_26C00B0CC();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_26BEBE0AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_26C00ABFC();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 2 * (v15 | (v13 << 6)));
    sub_26C00B05C();
    sub_26C00B08C();
    result = sub_26C00B0CC();
    v19 = -1 << *(v11 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v11 + 48) + 2 * v22) = v18;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_26BEBE2AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED40, &unk_26C0160F8);
  result = sub_26C00ABFC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_26C00B05C();

    sub_26C00A58C();
    result = sub_26C00B0CC();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_26BEBE4D0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _WORD *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + 2 * result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_26BEBE524(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  if (a1 < 0 || 1 << *(a3 + 32) <= a1)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v4 = *(*(a3 + 48) + 16 * a1);
    *a4 = v4;
    sub_26BE00608(v4, *(&v4 + 1));
    return;
  }

LABEL_8:
  __break(1u);
}

uint64_t sub_26BEBE580(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BEBE5C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BEBE634(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_26BEBE67C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BEBE70C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_26C00928C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BEBE750()
{
  result = qword_28045ED68;
  if (!qword_28045ED68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28045ED68);
  }

  return result;
}

uint64_t sub_26BEBE7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2, **(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t MLS.Time.init(derEncoded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v36 = sub_26C00950C();
  v35 = *(v36 - 8);
  v3 = MEMORY[0x28223BE20](v36);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - v5;
  v31 = type metadata accessor for MLS.Time(0);
  v7 = MEMORY[0x28223BE20](v31);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v33 = &v28 - v9;
  v10 = sub_26C00934C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v17 = a1;
  sub_26C0094EC();
  sub_26C00960C();
  sub_26BEC073C(&qword_28045ED78, MEMORY[0x277D6A8A8], MEMORY[0x277D6A8B0]);
  LOBYTE(a1) = sub_26C00A43C();
  v18 = *(v11 + 8);
  v18(v14, v10);
  if (a1)
  {
    v18(v16, v10);
    sub_26C00969C();
    v19 = v35;
    v20 = v17;
    v21 = v36;
    (*(v35 + 16))(v6, v17, v36);
    v23 = v33;
    v22 = v34;
    sub_26C0096EC();
    v24 = v21;
    if (!v22)
    {
      goto LABEL_9;
    }

    return (*(v19 + 8))(v20, v24);
  }

  v25 = v34;
  sub_26C00980C();
  v26 = sub_26C00A43C();
  v18(v14, v10);
  v18(v16, v10);
  if ((v26 & 1) == 0)
  {
    v20 = v17;
    sub_26C0094EC();
    sub_26C00955C();
    sub_26BEC073C(&qword_28045ED80, MEMORY[0x277D6A9C0], MEMORY[0x277D6A9C8]);
    swift_allocError();
    sub_26C00954C();
    v18(v14, v10);
    swift_willThrow();
    v24 = v36;
    v19 = v35;
    return (*(v19 + 8))(v20, v24);
  }

  sub_26C00989C();
  v19 = v35;
  v20 = v17;
  v21 = v36;
  (*(v35 + 16))(v30, v17);
  v23 = v29;
  sub_26C0096EC();
  if (v25)
  {
    v24 = v21;
    return (*(v19 + 8))(v20, v24);
  }

LABEL_9:
  (*(v19 + 8))(v20, v21);
  swift_storeEnumTagMultiPayload();
  return sub_26BEBED64(v23, v32);
}

uint64_t type metadata accessor for MLS.Time(uint64_t a1)
{
  result = qword_28045EDA0;
  if (!qword_28045EDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BEBED64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.Time(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MLS.Time.serialize(into:)()
{
  v1 = sub_26C00969C();
  v15 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26C00989C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MLS.Time(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BEBF078(v0, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v12 = v15;
    (*(v15 + 32))(v3, v10, v1);
    sub_26C00976C();
    return (*(v12 + 8))(v3, v1);
  }

  else if (EnumCaseMultiPayload)
  {
    result = sub_26C00AD6C();
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_26C00976C();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_26BEBF078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.Time(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static MLS.Time.makeTime(from:)(char *a1@<X8>)
{
  v22 = a1;
  v2 = sub_26C00969C();
  v20 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = sub_26C00989C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  sub_26C0091EC();
  v16 = round(v15);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return;
  }

  Int64.utcDateFromTimestamp.getter(v16, &v21);
  if ((v21 - 1950) > 0x63)
  {
    sub_26C00963C();
    if (v1)
    {
      return;
    }

    v18 = *(v20 + 32);
    v18(v7, v5, v2);
    v18(v22, v7, v2);
  }

  else
  {
    sub_26C00983C();
    if (v1)
    {
      return;
    }

    v17 = *(v9 + 32);
    v17(v14, v12, v8);
    v17(v22, v14, v8);
  }

  type metadata accessor for MLS.Time(0);
  swift_storeEnumTagMultiPayload();
}

void Date.utcDate.getter(_OWORD *a2@<X8>)
{
  sub_26C0091EC();
  v4 = round(v3);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 9.22337204e18)
  {
    Int64.utcDateFromTimestamp.getter(v4, v7);
    v5 = v7[1];
    v6 = v7[2];
    *a2 = v7[0];
    a2[1] = v5;
    a2[2] = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t MLS.Time.hash(into:)(uint64_t a1)
{
  v2 = sub_26C00969C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C00989C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MLS.Time(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BEBF078(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v12, v2);
    MEMORY[0x26D699B20](1);
    sub_26BEC073C(&qword_28045ED88, MEMORY[0x277D6AA20], MEMORY[0x277D6AA28]);
    sub_26C00A3CC();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    MEMORY[0x26D699B20](0);
    sub_26BEC073C(&qword_28045ED90, MEMORY[0x277D6AA40], MEMORY[0x277D6AA48]);
    sub_26C00A3CC();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t MLS.Time.hashValue.getter()
{
  sub_26C00B05C();
  MLS.Time.hash(into:)(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BEBF784()
{
  sub_26C00B05C();
  MLS.Time.hash(into:)(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BEBF7C8(uint64_t a1)
{
  sub_26C00B05C();
  MLS.Time.hash(into:)(v2);
  return sub_26C00B0CC();
}

uint64_t Date.init(fromUTCDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = __OFSUB__(a1, 1900);
  result = a1 - 1900;
  if (v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = _ss5Int64V8SwiftMLSE13yearToSecondsyAB7seconds_Sb6isLeaptABFZ_0(result);
  result = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = _ss5Int64V8SwiftMLSE14monthToSeconds_6isLeapA2B_SbtFZ_0(result, v13 & 1);
  v15 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = 86400 * v16;
  if ((v16 * 86400) >> 64 != (86400 * v16) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = __OFADD__(v15, v17);
  v18 = v15 + v17;
  if (v6)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = 3600 * a4;
  if ((a4 * 3600) >> 64 != (3600 * a4) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = __OFADD__(v18, v19);
  v20 = v18 + v19;
  if (v6)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v21 = 60 * a5;
  if ((a5 * 60) >> 64 != (60 * a5) >> 63)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = __OFADD__(v20, v21);
  v22 = v20 + v21;
  if (v6)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (__OFADD__(v22, a6))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  return sub_26C0091DC();
}

uint64_t Date.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_26C00989C();
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = sub_26C00969C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = type metadata accessor for MLS.Time(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  sub_26BEBF078(a1, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v10 + 32))(v15, v18, v9);
      (*(v10 + 16))(v13, v15, v9);
      Date.init(_:)(v13);
      sub_26BEC0698(a1);
      return (*(v10 + 8))(v15, v9);
    }

    else
    {
      result = sub_26C00AD6C();
      __break(1u);
    }
  }

  else
  {
    v22 = v25;
    v21 = v26;
    (*(v25 + 32))(v8, v18, v26);
    (*(v22 + 16))(v6, v8, v21);
    Date.init(_:)(v6);
    sub_26BEC0698(v19);
    return (*(v22 + 8))(v8, v21);
  }

  return result;
}

uint64_t Date.init(_:)(uint64_t a1)
{
  v2 = sub_26C00964C();
  v3 = sub_26C00966C();
  v4 = sub_26C00962C();
  v5 = sub_26C00965C();
  v6 = sub_26C00967C();
  v7 = sub_26C00968C();
  result = v2 - 1900;
  if (__OFSUB__(v2, 1900))
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = _ss5Int64V8SwiftMLSE13yearToSecondsyAB7seconds_Sb6isLeaptABFZ_0(result);
  result = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = _ss5Int64V8SwiftMLSE14monthToSeconds_6isLeapA2B_SbtFZ_0(result, v9 & 1);
  v11 = v10 + result;
  if (__OFADD__(v10, result))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = 86400 * v12;
  if ((v12 * 86400) >> 64 != (86400 * v12) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = __OFADD__(v11, v13);
  v15 = v11 + v13;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = 3600 * v5;
  if ((v5 * 3600) >> 64 != (3600 * v5) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = __OFADD__(v15, v16);
  v17 = v15 + v16;
  if (v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = 60 * v6;
  if ((v6 * 60) >> 64 != (60 * v6) >> 63)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = __OFADD__(v17, v18);
  v19 = v17 + v18;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (__OFADD__(v19, v7))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  sub_26C0091DC();
  v20 = sub_26C00969C();
  v21 = *(*(v20 - 8) + 8);

  return v21(a1, v20);
}

{
  v2 = sub_26C00984C();
  v3 = sub_26C00986C();
  v4 = sub_26C00982C();
  v5 = sub_26C00985C();
  v6 = sub_26C00987C();
  v7 = sub_26C00988C();
  result = v2 - 1900;
  if (__OFSUB__(v2, 1900))
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = _ss5Int64V8SwiftMLSE13yearToSecondsyAB7seconds_Sb6isLeaptABFZ_0(result);
  result = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = _ss5Int64V8SwiftMLSE14monthToSeconds_6isLeapA2B_SbtFZ_0(result, v9 & 1);
  v11 = v10 + result;
  if (__OFADD__(v10, result))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = 86400 * v12;
  if ((v12 * 86400) >> 64 != (86400 * v12) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = __OFADD__(v11, v13);
  v15 = v11 + v13;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = 3600 * v5;
  if ((v5 * 3600) >> 64 != (3600 * v5) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = __OFADD__(v15, v16);
  v17 = v15 + v16;
  if (v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = 60 * v6;
  if ((v6 * 60) >> 64 != (60 * v6) >> 63)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = __OFADD__(v17, v18);
  v19 = v17 + v18;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (__OFADD__(v19, v7))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  sub_26C0091DC();
  v20 = sub_26C00989C();
  v21 = *(*(v20 - 8) + 8);

  return v21(a1, v20);
}

uint64_t GeneralizedTime.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26C00969C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C00989C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MLS.Time(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BEBF078(a1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v17 = a1;
    v18 = v4;
    v19 = a2;
    (*(v9 + 32))(v11, v14, v8);
    sub_26C00984C();
    sub_26C00986C();
    sub_26C00982C();
    sub_26C00985C();
    sub_26C00987C();
    sub_26C00988C();
    sub_26C00963C();
    sub_26BEC0698(v17);
    (*(v9 + 8))(v11, v8);
    v14 = v7;
    v4 = v18;
    a2 = v19;
    return (*(v5 + 32))(a2, v14, v4);
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_26BEC0698(a1);
    return (*(v5 + 32))(a2, v14, v4);
  }

  result = sub_26C00AD6C();
  __break(1u);
  return result;
}

uint64_t GeneralizedTime.init(_:)(uint64_t a1)
{
  sub_26C0091EC();
  v3 = round(v2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  Int64.utcDateFromTimestamp.getter(v3, &v7);
  sub_26C00963C();
  v4 = sub_26C00921C();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

uint64_t _s8SwiftMLS0B0O4TimeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v26 = sub_26C00969C();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C00989C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MLS.Time(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EDB0, &qword_26C016200);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v25 - v17;
  v19 = *(v16 + 56);
  sub_26BEBF078(v27, &v25 - v17);
  sub_26BEBF078(v28, &v18[v19]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26BEBF078(v18, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v26;
      (*(v2 + 32))(v4, &v18[v19], v26);
      v21 = MEMORY[0x26D6980D0](v12, v4);
      v22 = *(v2 + 8);
      v22(v4, v20);
      v22(v12, v20);
LABEL_9:
      sub_26BEC0698(v18);
      return v21 & 1;
    }

    (*(v2 + 8))(v12, v26);
  }

  else
  {
    sub_26BEBF078(v18, v14);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v6 + 32))(v8, &v18[v19], v5);
      v21 = MEMORY[0x26D6982D0](v14, v8);
      v23 = *(v6 + 8);
      v23(v8, v5);
      v23(v14, v5);
      goto LABEL_9;
    }

    (*(v6 + 8))(v14, v5);
  }

  sub_26BEC07F8(v18);
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_26BEC0698(uint64_t a1)
{
  v2 = type metadata accessor for MLS.Time(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BEC073C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BEC0784(uint64_t a1)
{
  result = sub_26C00989C();
  if (v2 <= 0x3F)
  {
    result = sub_26C00969C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BEC07F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EDB0, &qword_26C016200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int64 __swiftcall Int64.init(timestampFromUTCDate:)(Swift::tuple_year_Int_month_Int_day_Int_hours_Int_minutes_Int_seconds_Int *timestampFromUTCDate)
{
  v6 = __OFSUB__(timestampFromUTCDate, 1900);
  result = &timestampFromUTCDate[-40].day + 4;
  if (v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = v5;
  v9 = v4;
  v10 = v3;
  v11 = v2;
  v12 = v1;
  v14 = _ss5Int64V8SwiftMLSE13yearToSecondsyAB7seconds_Sb6isLeaptABFZ_0(result);
  result = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = _ss5Int64V8SwiftMLSE14monthToSeconds_6isLeapA2B_SbtFZ_0(result, v13 & 1);
  v15 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11 - 1;
  if (__OFSUB__(v11, 1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = 86400 * v16;
  if ((v16 * 86400) >> 64 != (86400 * v16) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = __OFADD__(v15, v17);
  v18 = v15 + v17;
  if (v6)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = 3600 * v10;
  if ((v10 * 3600) >> 64 != (3600 * v10) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = __OFADD__(v18, v19);
  v20 = v18 + v19;
  if (v6)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = 60 * v9;
  if ((v9 * 60) >> 64 != (60 * v9) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = __OFADD__(v20, v21);
  v22 = v20 + v21;
  if (v6)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = v22 + v8;
  if (__OFADD__(v22, v8))
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t Int64.utcDateFromTimestamp.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1 - 951868800;
  if (!__OFADD__(a1, -951868800))
  {
    v3 = v2 / 86400;
    v4 = v2 % 86400;
    v5 = v3 + (v4 >> 63);
    v6 = v5 / 146097;
    v7 = v5 % 146097;
    if (v7 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 + 146097;
    }

    v9 = (__PAIR128__(v8 / 36524, v8 - 146096) - 0x8EAC) >> 64;
    v10 = v8 - 36524 * v9;
    v11 = (__PAIR128__(v10 / 1461, v10 - 36525) - 0x5B5) >> 64;
    v12 = v10 - 1461 * v11;
    v13 = (__PAIR128__(v12 / 365, v12 - 1460) - 0x16D) >> 64;
    v14 = v12 - 365 * v13;
    for (i = -1; ; ++i)
    {
      v17 = i + 1;
      if (i + 1 > 0xB)
      {
        goto LABEL_19;
      }

      if (((1 << v17) & 0x6B4) != 0)
      {
        if (v14 < 31)
        {
          goto LABEL_22;
        }

LABEL_14:
        if (i > 9)
        {
          goto LABEL_31;
        }

        v16 = qword_26C016210[i];
        goto LABEL_7;
      }

      if (((1 << v17) & 0x14A) != 0)
      {
        if (v14 < 30)
        {
          goto LABEL_22;
        }

        goto LABEL_14;
      }

      if (i == 10)
      {
        if (v14 < 29)
        {
          goto LABEL_22;
        }

        v16 = -29;
      }

      else
      {
LABEL_19:
        if (i != -1)
        {
          goto LABEL_31;
        }

        if (v14 < 31)
        {
LABEL_22:
          v18 = 400 * (v6 + (v7 >> 63));
          result = i - 11;
          if (i + 1 <= 9)
          {
            v20 = i + 1;
          }

          else
          {
            v20 = i - 11;
          }

          v21 = v18 + 100 * v9 + 4 * v11 + v13;
          if (i + 1 > 9)
          {
            ++v21;
          }

          v22 = v21 + 2000;
          v23 = v4 + 86400;
          if (v4 >= 0)
          {
            v23 = v4;
          }

          *a2 = v22;
          a2[1] = v20 + 3;
          a2[2] = v14 + 1;
          a2[3] = v23 / 3600;
          a2[4] = v23 / 60 % 60;
          a2[5] = v23 % 60;
          return result;
        }

        v16 = -31;
      }

LABEL_7:
      v14 += v16;
    }
  }

  __break(1u);
LABEL_31:
  result = sub_26C00AD6C();
  __break(1u);
  return result;
}

uint64_t static Int64.daysInMonth(_:)(unint64_t a1)
{
  if (a1 < 0xC)
  {
    return qword_26C016260[a1];
  }

  result = sub_26C00AD6C();
  __break(1u);
  return result;
}

uint64_t _ss5Int64V8SwiftMLSE13yearToSecondsyAB7seconds_Sb6isLeaptABFZ_0(uint64_t result)
{
  v1 = result - 100;
  if (__OFSUB__(result, 100))
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v1 % 400 >= 0)
  {
    v2 = v1 % 400;
  }

  else
  {
    v2 = v1 % 400 + 400;
  }

  if (!v2)
  {
    v4 = 0;
    v5 = 1;
    goto LABEL_15;
  }

  v3 = v2 - 300;
  if (v2 >= 300)
  {
    v4 = 72;
    if (v2 != 300)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = v2 - 200;
    if (v2 >= 200)
    {
      v4 = 48;
      if (v2 != 200)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v3 = v2 - 100;
      if (v2 < 100)
      {
        v4 = 0;
        v3 = v2;
LABEL_12:
        v2 = (v3 + ((v3 >> 29) & 3)) >> 2;
        v5 = (v3 & 3) == 0;
        goto LABEL_15;
      }

      v4 = 24;
      if (v2 != 100)
      {
        goto LABEL_12;
      }
    }
  }

  v5 = 0;
  v2 = 0;
LABEL_15:
  v6 = 31536000 * v1;
  if ((v1 * 31536000) >> 64 != (31536000 * v1) >> 63)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = 97 * (v1 / 400 + ((v1 % 400) >> 63)) - v5 + v2 + v4;
  v8 = 86400 * v7;
  if ((v7 * 86400) >> 64 != (86400 * v7) >> 63)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = __OFADD__(v6, v8);
  v10 = v6 + v8;
  if (v9)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v9 = __OFADD__(v10, 946684800);
  v11 = v10 + 946684800;
  if (v9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  result = v11 + 86400;
  if (__OFADD__(v11, 86400))
  {
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t _ss5Int64V8SwiftMLSE14monthToSeconds_6isLeapA2B_SbtFZ_0(uint64_t a1, char a2)
{
  if (a1 > 5)
  {
    if (a1 <= 8)
    {
      if (a1 == 6)
      {
        v2 = 15638400;
        if ((a2 & 1) == 0)
        {
          return v2;
        }
      }

      else if (a1 == 7)
      {
        v2 = 18316800;
        if ((a2 & 1) == 0)
        {
          return v2;
        }
      }

      else
      {
        v2 = 20995200;
        if ((a2 & 1) == 0)
        {
          return v2;
        }
      }

      goto LABEL_27;
    }

    switch(a1)
    {
      case 9:
        v2 = 23587200;
        if ((a2 & 1) == 0)
        {
          return v2;
        }

LABEL_27:
        if (a1 >= 2)
        {
          v2 += 86400;
        }

        return v2;
      case 10:
        v2 = 26265600;
        if ((a2 & 1) == 0)
        {
          return v2;
        }

        goto LABEL_27;
      case 11:
        v2 = 28857600;
        if ((a2 & 1) == 0)
        {
          return v2;
        }

        goto LABEL_27;
    }
  }

  else
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v2 = 7776000;
        if ((a2 & 1) == 0)
        {
          return v2;
        }
      }

      else if (a1 == 4)
      {
        v2 = 10368000;
        if ((a2 & 1) == 0)
        {
          return v2;
        }
      }

      else
      {
        v2 = 13046400;
        if ((a2 & 1) == 0)
        {
          return v2;
        }
      }

      goto LABEL_27;
    }

    switch(a1)
    {
      case 0:
        v2 = 0;
        if ((a2 & 1) == 0)
        {
          return v2;
        }

        goto LABEL_27;
      case 1:
        v2 = 2678400;
        if ((a2 & 1) == 0)
        {
          return v2;
        }

        goto LABEL_27;
      case 2:
        v2 = 5097600;
        if ((a2 & 1) == 0)
        {
          return v2;
        }

        goto LABEL_27;
    }
  }

  sub_26C00AC1C();

  v4 = sub_26C00AEFC();
  MEMORY[0x26D699090](v4);

  result = sub_26C00AD6C();
  __break(1u);
  return result;
}

uint64_t sub_26BEC102C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.Time(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MLS.Validity.notAfter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MLS.Validity(0) + 20);

  return sub_26BEBF078(v3, a1);
}

uint64_t type metadata accessor for MLS.Validity(uint64_t a1)
{
  result = qword_28045EDC8;
  if (!qword_28045EDC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MLS.Validity.notAfter.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MLS.Validity(0) + 20);

  return sub_26BEC102C(a1, v3);
}

uint64_t MLS.Validity.init(derEncoded:withIdentifier:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MLS.Validity(0);
  sub_26C0097FC();
  v4 = sub_26C00934C();
  (*(*(v4 - 8) + 8))(a2, v4);
  v5 = sub_26C00950C();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t sub_26BEC12B0@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MLS.Time(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  sub_26BEC1BBC(&qword_28045EDE8, type metadata accessor for MLS.Time, &protocol conformance descriptor for MLS.Time);
  result = sub_26C0095EC();
  if (!v2)
  {
    sub_26C0095EC();
    sub_26BEBED64(v9, a2);
    v11 = type metadata accessor for MLS.Validity(0);
    return sub_26BEBED64(v7, a2 + *(v11 + 20));
  }

  return result;
}

uint64_t sub_26BEC1450(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MLS.Time(0);
  sub_26BEC1BBC(&qword_28045EDE0, type metadata accessor for MLS.Time, &protocol conformance descriptor for MLS.Time);
  result = sub_26C00976C();
  if (!v2)
  {
    type metadata accessor for MLS.Validity(0);
    return sub_26C00976C();
  }

  return result;
}

uint64_t static MLS.Validity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s8SwiftMLS0B0O4TimeO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for MLS.Validity(0) + 20);

  return _s8SwiftMLS0B0O4TimeO2eeoiySbAE_AEtFZ_0(a1 + v4, a2 + v4);
}

uint64_t MLS.Validity.hash(into:)(uint64_t a1)
{
  MLS.Time.hash(into:)(a1);
  type metadata accessor for MLS.Validity(0);
  return MLS.Time.hash(into:)(a1);
}

uint64_t MLS.Validity.hashValue.getter()
{
  sub_26C00B05C();
  MLS.Time.hash(into:)(v1);
  type metadata accessor for MLS.Validity(0);
  MLS.Time.hash(into:)(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BEC161C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26C0097FC();
  v5 = sub_26C00934C();
  (*(*(v5 - 8) + 8))(a2, v5);
  v6 = sub_26C00950C();
  return (*(*(v6 - 8) + 8))(a1, v6);
}

uint64_t sub_26BEC1730()
{
  sub_26C00B05C();
  MLS.Time.hash(into:)(v1);
  MLS.Time.hash(into:)(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BEC17C4(uint64_t a1)
{
  sub_26C00B05C();
  MLS.Time.hash(into:)(v2);
  MLS.Time.hash(into:)(v2);
  return sub_26C00B0CC();
}

uint64_t sub_26BEC190C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s8SwiftMLS0B0O4TimeO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return _s8SwiftMLS0B0O4TimeO2eeoiySbAE_AEtFZ_0(a1 + v6, a2 + v6);
}

uint64_t sub_26BEC1A60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.Time(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26BEC1AE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.Time(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26BEC1B50(uint64_t a1)
{
  result = type metadata accessor for MLS.Time(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BEC1BBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_26BEC1C1C(uint64_t *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v8 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v8 = HIDWORD(v2) - v2;
  }

LABEL_11:
  v11 = sub_26BF30414(v8);
  if (v1)
  {
    return;
  }

  v12 = v11;
  sub_26BE11228(v2, v3);
  v13 = __OFADD__(v12, v8);
  v14 = v12 + v8;
  if (v13)
  {
    goto LABEL_37;
  }

  v15 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v15)
    {
      v16 = BYTE6(v5);
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (v15 != 2)
  {
    v16 = 0;
    goto LABEL_23;
  }

  v18 = *(v4 + 16);
  v17 = *(v4 + 24);
  v16 = v17 - v18;
  if (__OFSUB__(v17, v18))
  {
    __break(1u);
LABEL_20:
    if (__OFSUB__(HIDWORD(v4), v4))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v16 = HIDWORD(v4) - v4;
  }

LABEL_23:
  v19 = sub_26BF30414(v16);
  sub_26BE11228(v4, v5);
  v20 = v19 + v16;
  if (__OFADD__(v19, v16))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v29 = v14 + v20;
  if (__OFADD__(v14, v20))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v33 = xmmword_26C00BBD0;
  v34 = 0;
  v21 = *(v6 + 16);
  v22 = (v6 + 32);
  v23 = 0x1FFFFFFFFFFFFFFFLL;
  if (v21 < 0x1FFFFFFFFFFFFFFFLL)
  {
    v23 = *(v6 + 16);
  }

  v30 = 4 * v23;
  v24 = 0x2000000000000000;
  v25 = MEMORY[0x277D838B0];
  v26 = MEMORY[0x277CC9C18];
  while (v21)
  {
    v27 = *v22++;
    v31 = bswap32(v27);
    v32[3] = v25;
    v32[4] = v26;
    v32[0] = &v31;
    v32[1] = v32;
    __swift_project_boxed_opaque_existential_1(v32, v25);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(v32);
    --v21;
    if (!--v24)
    {
      __break(1u);
      break;
    }
  }

  v28 = sub_26BF30414(v30);
  sub_26BF2A30C(&v33);
  sub_26BE00258(v33, *(&v33 + 1));
  if (__OFADD__(v28, v30))
  {
LABEL_42:
    __break(1u);
  }

  if (__OFADD__(v29, v28 + v30))
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }
}

uint64_t MLS.ParentNode.init(encryptionKey:parentHash:unmergedLeaves:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t MLS.ParentNode.unmergedLeaves.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_26BEC1EFC(uint64_t a1)
{
  result = MEMORY[0x26D699320](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_26BF75B2C(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BEC2018(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v3 = a1;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v23 = v3;
  v24 = v2;
  if (!v7)
  {
    goto LABEL_6;
  }

  while (2)
  {
    if (!*(v3 + 16))
    {
LABEL_29:

      return 0;
    }

LABEL_12:
    v13 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
    v15 = *v13;
    v14 = v13[1];
    sub_26C00B05C();
    sub_26C00B07C();
    if (v14)
    {

      sub_26C00A58C();
    }

    result = sub_26C00B0CC();
    v16 = -1 << *(v3 + 32);
    v17 = result & ~v16;
    if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {

      return 0;
    }

    v7 &= v7 - 1;
    v18 = ~v16;
    v19 = *(v3 + 48);
    while (1)
    {
      v20 = (v19 + 16 * v17);
      v21 = v20[1];
      if (v21)
      {
        break;
      }

      if (!v14)
      {
        goto LABEL_26;
      }

LABEL_17:
      v17 = (v17 + 1) & v18;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {

        goto LABEL_29;
      }
    }

    if (!v14)
    {
      goto LABEL_17;
    }

    if (*v20 != v15 || v21 != v14)
    {
      result = sub_26C00AF2C();
      if ((result & 1) == 0)
      {
        goto LABEL_17;
      }
    }

LABEL_26:
    v3 = v23;
    v2 = v24;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_6:
  while (2)
  {
    v12 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      if (v12 >= v8)
      {

        return 1;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (!v7)
      {
        continue;
      }

      v11 = v12;
      if (!*(v3 + 16))
      {
        goto LABEL_29;
      }

      goto LABEL_12;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BEC2238(uint64_t result, uint64_t a2)
{
  if (*(result + 16) < *(a2 + 16))
  {
    return 0;
  }

  v3 = result;
  v4 = 0;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  for (i = result + 56; v8; v4 = v11)
  {
    v11 = v4;
LABEL_11:
    if (!*(v3 + 16))
    {
      return 0;
    }

    v12 = *(*(a2 + 48) + ((v11 << 7) | (2 * __clz(__rbit64(v8)))));
    sub_26C00B05C();
    sub_26C00B08C();
    result = sub_26C00B0CC();
    v13 = -1 << *(v3 + 32);
    v14 = result & ~v13;
    if (((*(i + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }

    v8 &= v8 - 1;
    v15 = ~v13;
    while (*(*(v3 + 48) + 2 * v14) != v12)
    {
      v14 = (v14 + 1) & v15;
      if (((*(i + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        return 0;
      }
    }
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      return 1;
    }

    v8 = *(v5 + 8 * v11);
    ++v4;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}