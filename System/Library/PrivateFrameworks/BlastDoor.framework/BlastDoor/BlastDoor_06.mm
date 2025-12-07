uint64_t sub_21405E78C(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_21405E80C(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "imageProviderType";
  }

  else
  {
    v2 = "descriptionStyle";
  }

  *a1 = 0xD000000000000011;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_21405E874@<X0>(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_21405E8D8(uint64_t a1)
{
  v2 = sub_214061AE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21405E914(uint64_t a1)
{
  v2 = sub_214061AE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21405E950(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1635017060;
  }

  else
  {
    v2 = 1701603686;
  }

  if (*a2)
  {
    v3 = 1635017060;
  }

  else
  {
    v3 = 1701603686;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2146DA6A8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_21405E9C8()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21405EA30(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_21405EA7C(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21405EAEC@<X0>(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_21405EB48(uint64_t *a1@<X8>)
{
  v2 = 1701603686;
  if (*v1)
  {
    v2 = 1635017060;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

void sub_21405EC20(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v115 = a3;
  v6 = sub_2146D8958();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v110 - v11;
  v13 = a2[9];
  v165 = a2[8];
  v166 = v13;
  v14 = a2[11];
  v167 = a2[10];
  v168 = v14;
  v15 = a2[5];
  v161 = a2[4];
  v162 = v15;
  v16 = a2[7];
  v163 = a2[6];
  v164 = v16;
  v17 = a2[1];
  v157 = *a2;
  v158 = v17;
  v18 = a2[3];
  v159 = a2[2];
  v160 = v18;
  v169 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904548, &unk_2146ECC10);
  sub_21405FA60();
  sub_2146DA1C8();
  if (v3)
  {
    (*(*(v19 - 8) + 8))(a1, v19);
    sub_21405FAB4(&v157);
  }

  else
  {
    v111 = v12;
    v112 = v10;
    v20 = v115;
    v113 = v6;
    v114 = v7;
    v21 = v170;
    v156[8] = v165;
    v156[9] = v166;
    v156[10] = v167;
    v156[11] = v168;
    v156[4] = v161;
    v156[5] = v162;
    v156[6] = v163;
    v156[7] = v164;
    v156[0] = v157;
    v156[1] = v158;
    v156[2] = v159;
    v156[3] = v160;
    v22 = sub_21405FB08(v156);
    if (v22 <= 1)
    {
      v24 = a1;
      if (v22)
      {
        v28 = sub_213FB4918(v156);
        type metadata accessor for PixelBufferDecoder();
        v29 = swift_allocObject();
        v30 = v28[3];
        v32 = *v28;
        v31 = v28[1];
        v29[3] = v28[2];
        v29[4] = v30;
        v29[1] = v32;
        v29[2] = v31;
        v33 = v28[7];
        v35 = v28[4];
        v34 = v28[5];
        v29[7] = v28[6];
        v29[8] = v33;
        v29[5] = v35;
        v29[6] = v34;
        v36 = v28[11];
        v38 = v28[8];
        v37 = v28[9];
        v29[11] = v28[10];
        v29[12] = v36;
        v29[9] = v38;
        v29[10] = v37;
        if (v21)
        {
          LOBYTE(v116[0]) = 1;
          v152 = v165;
          v153 = v166;
          v154 = v167;
          v155 = v168;
          v148 = v161;
          v149 = v162;
          v150 = v163;
          v151 = v164;
          v144 = v157;
          v145 = v158;
          v146 = v159;
          v147 = v160;
          v39 = sub_213FB4918(&v144);
          sub_214060FB0(v39, &v132);
          sub_21406116C();
          sub_2146DA1C8();
          v40 = v117;
          sub_2144AA2F8(v117, *(&v117 + 1));
          v78 = v77;
          type metadata accessor for CVBuffer(0);
          v130 = v79;
          v131 = &off_28268E9D0;
          sub_213FB54FC(v40, *(&v40 + 1));
          swift_setDeallocating();
          v80 = v29[10];
          v116[8] = v29[9];
          v116[9] = v80;
          v81 = v29[12];
          v116[10] = v29[11];
          v116[11] = v81;
          v82 = v29[6];
          v116[4] = v29[5];
          v116[5] = v82;
          v83 = v29[8];
          v116[6] = v29[7];
          v116[7] = v83;
          v84 = v29[2];
          v116[0] = v29[1];
          v116[1] = v84;
          v85 = v29[4];
          v116[2] = v29[3];
          v116[3] = v85;
          sub_214061060(v116);
          swift_deallocClassInstance();
          *&v129 = v78;
          (*(*(v19 - 8) + 8))(a1, v19);
          v86 = *v28;
          v87 = v28[1];
          v88 = v28[3];
          v119 = v28[2];
          v120 = v88;
          v117 = v86;
          v118 = v87;
          v89 = v28[4];
          v90 = v28[5];
          v91 = v28[7];
          v123 = v28[6];
          v124 = v91;
          v121 = v89;
          v122 = v90;
          v92 = v28[8];
          v93 = v28[9];
          v94 = v28[11];
          v127 = v28[10];
          v128 = v94;
          v125 = v92;
          v126 = v93;
          sub_2140611C0(&v117);
          v140 = v125;
          v141 = v126;
          v142 = v127;
          v143 = v128;
          v136 = v121;
          v137 = v122;
          v138 = v123;
          v139 = v124;
          v132 = v117;
          v133 = v118;
          v134 = v119;
          v135 = v120;
          nullsub_1();
          v95 = v115;
          sub_213FB77C8(&v129, v115);
          v96 = v141;
          *(v95 + 184) = v140;
          *(v95 + 200) = v96;
          v97 = v143;
          *(v95 + 216) = v142;
          *(v95 + 232) = v97;
          v98 = v137;
          *(v95 + 120) = v136;
          *(v95 + 136) = v98;
          v99 = v139;
          *(v95 + 152) = v138;
          *(v95 + 168) = v99;
          v100 = v133;
          *(v95 + 56) = v132;
          *(v95 + 72) = v100;
          v101 = v135;
          *(v95 + 88) = v134;
          *(v95 + 40) = 0;
          *(v95 + 48) = 1;
          *(v95 + 104) = v101;
        }

        else
        {
          LOBYTE(v129) = 1;
          v152 = v165;
          v153 = v166;
          v154 = v167;
          v155 = v168;
          v148 = v161;
          v149 = v162;
          v150 = v163;
          v151 = v164;
          v144 = v157;
          v145 = v158;
          v146 = v159;
          v147 = v160;
          v45 = sub_213FB4918(&v144);
          sub_214060FB0(v45, &v132);
          sub_21406100C();
          sub_2146DA1C8();
          v115 = *(&v117 + 1);
          *&v116[0] = v117;
          *&v132 = 47;
          *(&v132 + 1) = 0xE100000000000000;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
          sub_2140610B4();
          v54 = sub_2146D9558();
          v56 = v55;

          MEMORY[0x2160545D0](v54, v56);

          v57 = v112;
          sub_2146D8888();

          sub_214061118();
          swift_allocError();
          *v58 = 1280;
          *(v58 + 8) = 0;
          swift_willThrow();
          swift_setDeallocating();
          v59 = v29[10];
          v140 = v29[9];
          v141 = v59;
          v60 = v29[12];
          v142 = v29[11];
          v143 = v60;
          v61 = v29[6];
          v136 = v29[5];
          v137 = v61;
          v62 = v29[8];
          v138 = v29[7];
          v139 = v62;
          v63 = v29[2];
          v132 = v29[1];
          v133 = v63;
          v64 = v29[4];
          v134 = v29[3];
          v135 = v64;
          sub_214061060(&v132);
          swift_deallocClassInstance();

          sub_21405FAB4(&v157);
          (*(*(v19 - 8) + 8))(v24, v19);
          (*(v114 + 8))(v57, v113);
        }
      }

      else
      {
        sub_213FB4918(v156);
        LOBYTE(v116[0]) = 1;
        if (v21)
        {
          sub_21406116C();
          v25 = MEMORY[0x277CC9318];
          sub_2146DA1C8();
          *(v20 + 24) = v25;
          *(v20 + 32) = &protocol witness table for Data;
          *v20 = v117;
        }

        else
        {
          sub_21406100C();
          sub_2146DA1C8();
          v46 = v117;
          v47 = v118;
          *(v20 + 24) = &type metadata for File;
          *(v20 + 32) = &off_28268EA30;
          *v20 = v46;
          *(v20 + 16) = v47;
        }

        (*(*(v19 - 8) + 8))(a1, v19);
        LOWORD(v132) = 0;
        sub_2140615D0(&v132);
        v152 = v140;
        v153 = v141;
        v154 = v142;
        v155 = v143;
        v148 = v136;
        v149 = v137;
        v150 = v138;
        v151 = v139;
        v144 = v132;
        v145 = v133;
        v146 = v134;
        v147 = v135;
        nullsub_1();
        v48 = v153;
        *(v20 + 184) = v152;
        *(v20 + 200) = v48;
        v49 = v155;
        *(v20 + 216) = v154;
        *(v20 + 232) = v49;
        v50 = v149;
        *(v20 + 120) = v148;
        *(v20 + 136) = v50;
        v51 = v151;
        *(v20 + 152) = v150;
        *(v20 + 168) = v51;
        v52 = v145;
        *(v20 + 56) = v144;
        *(v20 + 72) = v52;
        v53 = v147;
        *(v20 + 88) = v146;
        *(v20 + 40) = 0;
        *(v20 + 48) = 1;
        *(v20 + 104) = v53;
      }
    }

    else if (v22 == 2)
    {
      LOBYTE(v132) = 1;
      if (v21)
      {
        sub_21406116C();
        sub_2146DA1C8();
        v26 = v144;
        v117 = v144;
        sub_21402D9F8(v144, *(&v144 + 1));
        v65 = sub_214061224(&v117);
        sub_213FB54FC(v117, *(&v117 + 1));
        type metadata accessor for CGImage(0);
        *(&v133 + 1) = v66;
        *&v134 = &off_28268E9F0;
        sub_213FB54FC(v26, *(&v26 + 1));
        *&v132 = v65;
        (*(*(v19 - 8) + 8))(a1, v19);
        sub_2140615A8(&v144);
        sub_213FB77C8(&v132, v20);
        v67 = v153;
        *(v20 + 184) = v152;
        *(v20 + 200) = v67;
        v68 = v155;
        *(v20 + 216) = v154;
        *(v20 + 232) = v68;
        v69 = v149;
        *(v20 + 120) = v148;
        *(v20 + 136) = v69;
        v70 = v151;
        *(v20 + 152) = v150;
        *(v20 + 168) = v70;
        v71 = v145;
        *(v20 + 56) = v144;
        *(v20 + 72) = v71;
        v72 = v147;
        *(v20 + 88) = v146;
        *(v20 + 40) = 0;
        *(v20 + 48) = 1;
        *(v20 + 104) = v72;
      }

      else
      {
        sub_21406100C();
        sub_2146DA1C8();
        v112 = *(&v144 + 1);
        v41 = v144;
        *&v144 = 47;
        *(&v144 + 1) = 0xE100000000000000;
        *&v117 = v41;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
        sub_2140610B4();
        v110 = sub_2146D9558();
        v43 = v42;

        MEMORY[0x2160545D0](v110, v43);

        v44 = v111;
        sub_2146D8888();

        *&v117 = sub_2146D8978();
        *(&v117 + 1) = v73;
        v74 = sub_214061224(&v117);
        v76 = v113;
        v75 = v114;
        v110 = v74;
        sub_213FB54FC(v117, *(&v117 + 1));
        (*(v75 + 8))(v44, v76);
        type metadata accessor for CGImage(0);
        *(&v133 + 1) = v102;
        *&v134 = &off_28268E9F0;

        *&v132 = v110;
        (*(*(v19 - 8) + 8))(a1, v19);
        sub_2140615A8(&v144);
        v103 = v115;
        sub_213FB77C8(&v132, v115);
        v104 = v153;
        *(v103 + 184) = v152;
        *(v103 + 200) = v104;
        v105 = v155;
        *(v103 + 216) = v154;
        *(v103 + 232) = v105;
        v106 = v149;
        *(v103 + 120) = v148;
        *(v103 + 136) = v106;
        v107 = v151;
        *(v103 + 152) = v150;
        *(v103 + 168) = v107;
        v108 = v145;
        *(v103 + 56) = v144;
        *(v103 + 72) = v108;
        v109 = v147;
        *(v103 + 88) = v146;
        *(v103 + 40) = 0;
        *(v103 + 48) = 1;
        *(v103 + 104) = v109;
      }
    }

    else
    {
      if (v22 == 3)
      {
        sub_21405FB24();
        swift_allocError();
        *v23 = 0;
      }

      else
      {
        sub_21405FB24();
        swift_allocError();
        *v27 = 1;
      }

      swift_willThrow();
      (*(*(v19 - 8) + 8))(a1, v19);
    }
  }
}

unint64_t sub_21405FA60()
{
  result = qword_280B30CD0;
  if (!qword_280B30CD0)
  {
    result = swift_getWitnessTable(aDm, &_s17ImageProviderTypeON, v0, v1);
    atomic_store(result, &qword_280B30CD0);
  }

  return result;
}

unint64_t sub_21405FB08(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

unint64_t sub_21405FB24()
{
  result = qword_27C904550;
  if (!qword_27C904550)
  {
    result = swift_getWitnessTable(byte_2146ED1A4, &type metadata for ImageEncodingError, v0, v1);
    atomic_store(result, &qword_27C904550);
  }

  return result;
}

uint64_t sub_21405FB78(uint64_t a1, _OWORD *a2)
{
  LOBYTE(v12[0]) = 1;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904560, &qword_2146ECC20);
  sub_214061630();
  result = sub_2146DA388();
  if (!v2)
  {
    v5 = a2[9];
    v12[8] = a2[8];
    v12[9] = v5;
    v6 = a2[11];
    v12[10] = a2[10];
    v12[11] = v6;
    v7 = a2[5];
    v12[4] = a2[4];
    v12[5] = v7;
    v8 = a2[7];
    v12[6] = a2[6];
    v12[7] = v8;
    v9 = a2[1];
    v12[0] = *a2;
    v12[1] = v9;
    v10 = a2[3];
    v12[2] = a2[2];
    v12[3] = v10;
    *&v12[0] = sub_21463C734(v12);
    *(&v12[0] + 1) = v11;
    v13 = 1;
    sub_214061684();
    sub_2146DA388();
    return sub_213FB54FC(*&v12[0], *(&v12[0] + 1));
  }

  return result;
}

double sub_21405FC9C@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[9];
  v5 = a1[7];
  v83 = a1[8];
  v84 = v4;
  v6 = a1[9];
  v7 = a1[11];
  v85 = a1[10];
  v86 = v7;
  v8 = a1[5];
  v9 = a1[3];
  v79 = a1[4];
  v80 = v8;
  v10 = a1[5];
  v11 = a1[7];
  v81 = a1[6];
  v82 = v11;
  v12 = a1[1];
  v75 = *a1;
  v76 = v12;
  v13 = a1[3];
  v15 = *a1;
  v14 = a1[1];
  v77 = a1[2];
  v78 = v13;
  v87[8] = v83;
  v87[9] = v6;
  v16 = a1[11];
  v87[10] = v85;
  v87[11] = v16;
  v87[4] = v79;
  v87[5] = v10;
  v87[6] = v81;
  v87[7] = v5;
  v87[0] = v15;
  v87[1] = v14;
  v87[2] = v77;
  v87[3] = v9;
  if (sub_21405FB08(v87) == 1)
  {
    sub_213FB4918(v87);
    v17 = v2[3];
    v18 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v17);
    (*(v18 + 24))(v62, sub_21463D924, 0, &type metadata for PixelBufferEncodingConfiguration, v17, v18);
    v58 = v62[8];
    v59 = v62[9];
    v60 = v62[10];
    v61 = v62[11];
    v54 = v62[4];
    v55 = v62[5];
    v56 = v62[6];
    v57 = v62[7];
    v50 = v62[0];
    v51 = v62[1];
    v52 = v62[2];
    v53 = v62[3];
    v26 = sub_214061734(&v50);
    if (v26 == 1)
    {
      v27 = sub_2146D9BA8();
      if (qword_280B35360 != -1)
      {
        v37 = v27;
        swift_once();
        v27 = v37;
      }

      sub_2146D91D8(v27, &dword_213FAF000, qword_280B35410, "Could not create new configuration", 34, 2, MEMORY[0x277D84F90]);
      v46 = v83;
      v47 = v84;
      v48 = v85;
      v49 = v86;
      v42 = v79;
      v43 = v80;
      v44 = v81;
      v45 = v82;
      v38 = v75;
      v39 = v76;
      v40 = v77;
      v41 = v78;
      v28 = sub_213FB4918(&v38);
      sub_214060FB0(v28, &v63);
      v71 = v83;
      v72 = v84;
      v73 = v85;
      v74 = v86;
      v67 = v79;
      v68 = v80;
      v69 = v81;
      v70 = v82;
      v63 = v75;
      v64 = v76;
      v29 = v77;
      v30 = v78;
    }

    else
    {
      v46 = v58;
      v47 = v59;
      v48 = v60;
      v49 = v61;
      v42 = v54;
      v43 = v55;
      v44 = v56;
      v45 = v57;
      v38 = v50;
      v39 = v51;
      v40 = v52;
      v41 = v53;
      sub_2140611C0(&v38);
      v71 = v46;
      v72 = v47;
      v73 = v48;
      v74 = v49;
      v67 = v42;
      v68 = v43;
      v69 = v44;
      v70 = v45;
      v63 = v38;
      v64 = v39;
      v29 = v40;
      v30 = v41;
    }

    v65 = v29;
    v66 = v30;
    v31 = v72;
    a2[8] = v71;
    a2[9] = v31;
    v32 = v74;
    a2[10] = v73;
    a2[11] = v32;
    v33 = v68;
    a2[4] = v67;
    a2[5] = v33;
    v34 = v70;
    a2[6] = v69;
    a2[7] = v34;
    v35 = v64;
    *a2 = v63;
    a2[1] = v35;
    result = *&v65;
    v36 = v66;
    a2[2] = v65;
    a2[3] = v36;
  }

  else
  {
    v19 = v84;
    a2[8] = v83;
    a2[9] = v19;
    v20 = v86;
    a2[10] = v85;
    a2[11] = v20;
    v21 = v80;
    a2[4] = v79;
    a2[5] = v21;
    v22 = v82;
    a2[6] = v81;
    a2[7] = v22;
    v23 = v76;
    *a2 = v75;
    a2[1] = v23;
    v24 = v78;
    a2[2] = v77;
    a2[3] = v24;
    sub_2140616D8(&v75, &v63);
  }

  return result;
}

uint64_t sub_214060020()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214060108(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2140601DC(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2140602C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214061DE8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2140602F0(unint64_t *a1@<X8>)
{
  v2 = 0xED0000676E69646FLL;
  v3 = 0x636E456567616D69;
  v4 = 0xEF64657373657270;
  v5 = 0x6D6F436573667A6CLL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000020;
    v4 = 0x8000000214786040;
  }

  if (*v1)
  {
    v3 = 0x6464697754657270;
    v2 = 0xEB0000000064656CLL;
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

unint64_t sub_214060394()
{
  v1 = 0x636E456567616D69;
  v2 = 0x6D6F436573667A6CLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000020;
  }

  if (*v0)
  {
    v1 = 0x6464697754657270;
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

unint64_t sub_214060434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214061DE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21406045C(uint64_t a1)
{
  v2 = sub_214061758();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214060498(uint64_t a1)
{
  v2 = sub_214061758();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140604D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x70616D746962;
  if (v2 != 1)
  {
    v4 = 0x6675426C65786970;
    v3 = 0xEB00000000726566;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7894113;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x70616D746962;
  if (*a2 != 1)
  {
    v8 = 0x6675426C65786970;
    v7 = 0xEB00000000726566;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7894113;
  }

  if (*a2)
  {
    v10 = v7;
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
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2140605D8()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214060678(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_214060704(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2140607A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214061E88(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2140607D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x70616D746962;
  if (v2 != 1)
  {
    v5 = 0x6675426C65786970;
    v4 = 0xEB00000000726566;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7894113;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2140608DC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904568, &qword_2146ECC28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = a1[3];
  v22 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_214061758();
  sub_2146DAA08();
  if (!v2)
  {
    v60 = 0;
    sub_2140617AC();
    sub_2146DA1C8();
    if (v61)
    {
      if (v61 == 1)
      {
        (*(v6 + 8))(v8, v5);
        sub_214061854(&v47);
LABEL_8:
        v14 = v56;
        a2[8] = v55;
        a2[9] = v14;
        v15 = v58;
        a2[10] = v57;
        a2[11] = v15;
        v16 = v52;
        a2[4] = v51;
        a2[5] = v16;
        v17 = v54;
        a2[6] = v53;
        a2[7] = v17;
        v18 = v48;
        *a2 = v47;
        a2[1] = v18;
        v19 = v50;
        a2[2] = v49;
        a2[3] = v19;
        return __swift_destroy_boxed_opaque_existential_1(v22);
      }

      v59 = 3;
      sub_214061800();
      sub_2146DA1C8();
      (*(v6 + 8))(v8, v5);
      v31 = v43;
      v32 = v44;
      v33 = v45;
      v34 = v46;
      v27 = v39;
      v28 = v40;
      v29 = v41;
      v30 = v42;
      v23 = v35;
      v24 = v36;
      v25 = v37;
      v26 = v38;
      sub_2140611C0(&v23);
      v55 = v31;
      v56 = v32;
      v57 = v33;
      v58 = v34;
      v51 = v27;
      v52 = v28;
      v53 = v29;
      v54 = v30;
      v47 = v23;
      v48 = v24;
      v12 = v25;
      v13 = v26;
    }

    else
    {
      LOBYTE(v35) = 1;
      v10 = sub_2146DA178();
      LOBYTE(v35) = 2;
      v11 = sub_2146DA178();
      (*(v6 + 8))(v8, v5);
      LOBYTE(v35) = v10 & 1;
      BYTE1(v35) = v11 & 1;
      sub_2140615D0(&v35);
      v55 = v43;
      v56 = v44;
      v57 = v45;
      v58 = v46;
      v51 = v39;
      v52 = v40;
      v53 = v41;
      v54 = v42;
      v47 = v35;
      v48 = v36;
      v12 = v37;
      v13 = v38;
    }

    v49 = v12;
    v50 = v13;
    goto LABEL_8;
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_214060C48(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904578, &qword_2146ECC30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214061758();
  sub_2146DAA28();
  v9 = v3[9];
  v30[8] = v3[8];
  v30[9] = v9;
  v10 = v3[11];
  v30[10] = v3[10];
  v30[11] = v10;
  v11 = v3[5];
  v30[4] = v3[4];
  v30[5] = v11;
  v12 = v3[7];
  v30[6] = v3[6];
  v30[7] = v12;
  v13 = v3[1];
  v30[0] = *v3;
  v30[1] = v13;
  v14 = v3[3];
  v30[2] = v3[2];
  v30[3] = v14;
  v15 = sub_21405FB08(v30);
  if (v15 > 1)
  {
    if (v15 != 2)
    {
      if (v15 == 3)
      {
        sub_21405FB24();
        swift_allocError();
        *v16 = 0;
      }

      else
      {
        sub_21405FB24();
        swift_allocError();
        *v17 = 1;
      }

      swift_willThrow();
      return (*(v6 + 8))(v8, v5);
    }

    LOBYTE(v29[0]) = 1;
    v31 = 0;
    sub_21406187C();
LABEL_13:
    sub_2146DA388();
    return (*(v6 + 8))(v8, v5);
  }

  if (v15)
  {
    v18 = sub_213FB4918(v30);
    LOBYTE(v29[0]) = 2;
    v31 = 0;
    sub_21406187C();
    sub_2146DA388();
    if (v2)
    {
      return (*(v6 + 8))(v8, v5);
    }

    v19 = *v18;
    v20 = v18[1];
    v21 = v18[3];
    v29[2] = v18[2];
    v29[3] = v21;
    v29[0] = v19;
    v29[1] = v20;
    v22 = v18[4];
    v23 = v18[5];
    v24 = v18[7];
    v29[6] = v18[6];
    v29[7] = v24;
    v29[4] = v22;
    v29[5] = v23;
    v25 = v18[8];
    v26 = v18[9];
    v27 = v18[11];
    v29[10] = v18[10];
    v29[11] = v27;
    v29[8] = v25;
    v29[9] = v26;
    v31 = 3;
    sub_2140618D0();
    goto LABEL_13;
  }

  sub_213FB4918(v30);
  LOBYTE(v29[0]) = 0;
  v31 = 0;
  sub_21406187C();
  sub_2146DA388();
  if (!v2)
  {
    LOBYTE(v29[0]) = 1;
    sub_2146DA338();
    LOBYTE(v29[0]) = 2;
    sub_2146DA338();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_21406100C()
{
  result = qword_280B2FF08[0];
  if (!qword_280B2FF08[0])
  {
    result = swift_getWitnessTable(aQw, &type metadata for File, v0, v1);
    atomic_store(result, qword_280B2FF08);
  }

  return result;
}

unint64_t sub_2140610B4()
{
  result = qword_280B34F20;
  if (!qword_280B34F20)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C904F20, &qword_2146EE8A0);
    result = swift_getWitnessTable(MEMORY[0x277D83958], v3, v0, v1);
    atomic_store(result, &qword_280B34F20);
  }

  return result;
}

unint64_t sub_214061118()
{
  result = qword_27C904558;
  if (!qword_27C904558)
  {
    result = swift_getWitnessTable(byte_214773500, &type metadata for PixelBufferHelperError, v0, v1);
    atomic_store(result, &qword_27C904558);
  }

  return result;
}

unint64_t sub_21406116C()
{
  result = qword_280B34F10;
  if (!qword_280B34F10)
  {
    result = swift_getWitnessTable(MEMORY[0x277CC9348], MEMORY[0x277CC9318], v0, v1);
    atomic_store(result, &qword_280B34F10);
  }

  return result;
}

void *sub_2140611C0(void *result)
{
  v1 = result[5] & 1;
  v2 = result[7] & 1;
  v3 = result[9] & 0xFF01;
  v4 = result[13] & 0x101;
  v5 = result[15] & 1;
  v6 = result[17] & 1 | 0x4000000000000000;
  result[3] &= 1uLL;
  result[5] = v1;
  result[7] = v2;
  result[9] = v3;
  result[13] = v4;
  result[15] = v5;
  result[17] = v6;
  return result;
}

NSObject *sub_214061224(uint64_t *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v5)
    {
      sub_213FB54FC(v4, v3);
      *&v27 = v4;
      WORD4(v27) = v3;
      BYTE10(v27) = BYTE2(v3);
      BYTE11(v27) = BYTE3(v3);
      BYTE12(v27) = BYTE4(v3);
      BYTE13(v27) = BYTE5(v3);
      BYTE14(v27) = BYTE6(v3);
      result = sub_21409BB94(&v27, &v27 + BYTE6(v3));
      v7 = DWORD2(v27) | ((WORD6(v27) | (BYTE14(v27) << 16)) << 32);
      *a1 = v27;
      a1[1] = v7;
      return result;
    }

    v18 = v3 & 0x3FFFFFFFFFFFFFFFLL;

    sub_213FB54FC(v4, v3);
    *a1 = xmmword_2146ECC00;
    sub_213FB54FC(0, 0xC000000000000000);
    v19 = v4 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v19 < v4)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (sub_2146D8728() && __OFSUB__(v4, sub_2146D8758()))
      {
LABEL_33:
        __break(1u);
      }

      sub_2146D8778();
      swift_allocObject();
      v20 = sub_2146D8708();

      v18 = v20;
    }

    if (v19 >= v4)
    {

      result = sub_2146D8728();
      if (result)
      {
        v21 = result;
        v22 = sub_2146D8758();
        v23 = v4 - v22;
        if (!__OFSUB__(v4, v22))
        {
          v24 = sub_2146D8748();
          if (v24 >= v19 - v4)
          {
            v25 = v19 - v4;
          }

          else
          {
            v25 = v24;
          }

          v26 = sub_21409BB94(v21 + v23, v21 + v23 + v25);

          *a1 = v4;
          a1[1] = v18 | 0x4000000000000000;
          if (!v1)
          {
            return v26;
          }

          return result;
        }

        goto LABEL_31;
      }

LABEL_35:
      __break(1u);
      return result;
    }

    goto LABEL_29;
  }

  if (v5 != 2)
  {
    *(&v27 + 7) = 0;
    *&v27 = 0;
    return sub_21409BB94(&v27, &v27);
  }

  sub_213FB54FC(v4, v3);
  *&v27 = v4;
  *(&v27 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_2146ECC00;
  sub_213FB54FC(0, 0xC000000000000000);
  sub_2146D8968();
  v8 = *(&v27 + 1);
  v9 = *(v27 + 16);
  v10 = *(v27 + 24);
  result = sub_2146D8728();
  if (!result)
  {
    __break(1u);
    goto LABEL_35;
  }

  v11 = result;
  v12 = sub_2146D8758();
  v13 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = __OFSUB__(v10, v9);
  v15 = v10 - v9;
  if (v14)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v16 = sub_2146D8748();
  if (v16 >= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  result = sub_21409BB94(v11 + v13, v11 + v13 + v17);
  *a1 = v27;
  a1[1] = v8 | 0x8000000000000000;
  return result;
}

double sub_2140615A8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x1FFFFFFFELL;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  return result;
}

void *sub_2140615D0(void *result)
{
  v1 = result[5] & 1;
  v2 = result[7] & 1;
  v3 = result[9] & 0xFF01;
  v4 = result[13] & 0x101;
  v5 = result[15] & 1;
  v6 = result[17] & 1;
  result[3] &= 1uLL;
  result[5] = v1;
  result[7] = v2;
  result[9] = v3;
  result[13] = v4;
  result[15] = v5;
  result[17] = v6;
  return result;
}

unint64_t sub_214061630()
{
  result = qword_280B2E738;
  if (!qword_280B2E738)
  {
    result = swift_getWitnessTable(aM_146, &_s17ImageProviderTypeON, v0, v1);
    atomic_store(result, &qword_280B2E738);
  }

  return result;
}

unint64_t sub_214061684()
{
  result = qword_280B34B60;
  if (!qword_280B34B60)
  {
    result = swift_getWitnessTable(MEMORY[0x277CC9320], MEMORY[0x277CC9318], v0, v1);
    atomic_store(result, &qword_280B34B60);
  }

  return result;
}

uint64_t sub_214061734(uint64_t a1)
{
  v1 = *(a1 + 144);
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

unint64_t sub_214061758()
{
  result = qword_280B31028;
  if (!qword_280B31028)
  {
    result = swift_getWitnessTable(byte_2146ED12C, &_s10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_280B31028);
  }

  return result;
}

unint64_t sub_2140617AC()
{
  result = qword_280B30CC8;
  if (!qword_280B30CC8)
  {
    result = swift_getWitnessTable(byte_2146ED104, &_s13ImageEncodingON, v0, v1);
    atomic_store(result, &qword_280B30CC8);
  }

  return result;
}

unint64_t sub_214061800()
{
  result = qword_27C904570;
  if (!qword_27C904570)
  {
    result = swift_getWitnessTable(byte_214751180, &type metadata for PixelBufferEncodingConfiguration, v0, v1);
    atomic_store(result, &qword_27C904570);
  }

  return result;
}

double sub_214061854(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0x8000000000000000;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  return result;
}

unint64_t sub_21406187C()
{
  result = qword_280B2E730;
  if (!qword_280B2E730)
  {
    result = swift_getWitnessTable(byte_2146ED0DC, &_s13ImageEncodingON, v0, v1);
    atomic_store(result, &qword_280B2E730);
  }

  return result;
}

unint64_t sub_2140618D0()
{
  result = qword_27C904580;
  if (!qword_27C904580)
  {
    result = swift_getWitnessTable(a1_21, &type metadata for PixelBufferEncodingConfiguration, v0, v1);
    atomic_store(result, &qword_27C904580);
  }

  return result;
}

unint64_t sub_214061928()
{
  result = qword_27C904588;
  if (!qword_27C904588)
  {
    result = swift_getWitnessTable(byte_2146ECC38, &_s10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27C904588);
  }

  return result;
}

unint64_t sub_214061980()
{
  result = qword_280B31038;
  if (!qword_280B31038)
  {
    result = swift_getWitnessTable(aQ_56, &_s10CodingKeysON, v0, v1);
    atomic_store(result, &qword_280B31038);
  }

  return result;
}

unint64_t sub_2140619D8()
{
  result = qword_280B31040;
  if (!qword_280B31040)
  {
    result = swift_getWitnessTable(byte_2146ECD28, &_s10CodingKeysON, v0, v1);
    atomic_store(result, &qword_280B31040);
  }

  return result;
}

unint64_t sub_214061A30()
{
  result = qword_280B30CC0;
  if (!qword_280B30CC0)
  {
    result = swift_getWitnessTable(aUdmh3, &type metadata for Image.Encoding, v0, v1);
    atomic_store(result, &qword_280B30CC0);
  }

  return result;
}

unint64_t sub_214061A88()
{
  result = qword_280B2E728;
  if (!qword_280B2E728)
  {
    result = swift_getWitnessTable(byte_2146ECDBC, &type metadata for Image.Encoding, v0, v1);
    atomic_store(result, &qword_280B2E728);
  }

  return result;
}

unint64_t sub_214061AE0()
{
  result = qword_280B31048;
  if (!qword_280B31048)
  {
    result = swift_getWitnessTable(aQ_55, &_s10CodingKeysON, v0, v1);
    atomic_store(result, &qword_280B31048);
  }

  return result;
}

unint64_t sub_214061B88()
{
  result = qword_27C904590;
  if (!qword_27C904590)
  {
    result = swift_getWitnessTable(aM_147, &_s17ImageProviderTypeON, v0, v1);
    atomic_store(result, &qword_27C904590);
  }

  return result;
}

unint64_t sub_214061BE0()
{
  result = qword_27C904598;
  if (!qword_27C904598)
  {
    result = swift_getWitnessTable(byte_2146ECF24, &type metadata for ImageEncodingError, v0, v1);
    atomic_store(result, &qword_27C904598);
  }

  return result;
}

unint64_t sub_214061C38()
{
  result = qword_27C9045A0;
  if (!qword_27C9045A0)
  {
    result = swift_getWitnessTable(byte_2146ED014, &_s10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_27C9045A0);
  }

  return result;
}

unint64_t sub_214061C90()
{
  result = qword_27C9045A8;
  if (!qword_27C9045A8)
  {
    result = swift_getWitnessTable(byte_2146ED0B4, &_s13ImageEncodingON, v0, v1);
    atomic_store(result, &qword_27C9045A8);
  }

  return result;
}

unint64_t sub_214061CE8()
{
  result = qword_280B31018;
  if (!qword_280B31018)
  {
    result = swift_getWitnessTable(aU_106, &_s10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_280B31018);
  }

  return result;
}

unint64_t sub_214061D40()
{
  result = qword_280B31020;
  if (!qword_280B31020)
  {
    result = swift_getWitnessTable(aEam_1, &_s10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_280B31020);
  }

  return result;
}

unint64_t sub_214061D94()
{
  result = qword_280B31050;
  if (!qword_280B31050)
  {
    result = swift_getWitnessTable(aM_145, &_s17ImageProviderTypeON, v0, v1);
    atomic_store(result, &qword_280B31050);
  }

  return result;
}

unint64_t sub_214061DE8(uint64_t a1, uint64_t a2)
{
  v2 = sub_2146DA098();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_214061E34()
{
  result = qword_280B31030;
  if (!qword_280B31030)
  {
    result = swift_getWitnessTable(aEym, &_s13ImageEncodingON, v0, v1);
    atomic_store(result, &qword_280B31030);
  }

  return result;
}

unint64_t sub_214061E88(uint64_t a1, uint64_t a2)
{
  v2 = sub_2146DA098();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_214061EE8()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_280B35410 = result;
  return result;
}

uint64_t sub_214061F6C()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_280B35408 = result;
  return result;
}

uint64_t sub_214061FF8()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C9045B0 = result;
  return result;
}

uint64_t sub_21406207C()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_280B2E350 = result;
  return result;
}

uint64_t sub_214062100()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C9045B8 = result;
  return result;
}

uint64_t sub_21406218C()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C9045C0 = result;
  return result;
}

uint64_t sub_214062210()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C9045C8 = result;
  return result;
}

uint64_t sub_214062294()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C9045D0 = result;
  return result;
}

uint64_t sub_214062318()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C9045D8 = result;
  return result;
}

uint64_t sub_21406239C()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C9045E0 = result;
  return result;
}

uint64_t sub_214062420()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C9045E8 = result;
  return result;
}

uint64_t *sub_214062480()
{
  if (qword_27C902E50 != -1)
  {
    swift_once();
  }

  return &qword_27C9045E8;
}

uint64_t sub_2140624F4()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C9045F0 = result;
  return result;
}

uint64_t sub_214062578()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C9045F8 = result;
  return result;
}

uint64_t sub_2140625FC()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_280B30DE0 = result;
  return result;
}

uint64_t sub_214062680()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904600 = result;
  return result;
}

uint64_t sub_214062710()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904608 = result;
  return result;
}

uint64_t sub_214062794()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904610 = result;
  return result;
}

uint64_t sub_214062818()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904618 = result;
  return result;
}

uint64_t sub_21406289C()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904620 = result;
  return result;
}

uint64_t sub_214062920()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904628 = result;
  return result;
}

uint64_t sub_2140629A4()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904630 = result;
  return result;
}

uint64_t sub_214062A28()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904638 = result;
  return result;
}

uint64_t sub_214062AAC()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904640 = result;
  return result;
}

uint64_t sub_214062B30()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904648 = result;
  return result;
}

uint64_t sub_214062BB4()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_280B2E358 = result;
  return result;
}

uint64_t sub_214062C38()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904650 = result;
  return result;
}

uint64_t sub_214062CBC()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904658 = result;
  return result;
}

uint64_t sub_214062D40()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904660 = result;
  return result;
}

uint64_t sub_214062DC4()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904668 = result;
  return result;
}

uint64_t sub_214062E48()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904670 = result;
  return result;
}

uint64_t sub_214062ECC()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904678 = result;
  return result;
}

uint64_t sub_214062F50()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904680 = result;
  return result;
}

uint64_t sub_214062FD4()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904688 = result;
  return result;
}

uint64_t sub_214063058()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904690 = result;
  return result;
}

uint64_t sub_2140630DC()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904698 = result;
  return result;
}

uint64_t sub_214063160()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C9046A0 = result;
  return result;
}

uint64_t sub_2140631E4()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C9046A8 = result;
  return result;
}

id sub_214063268(void *a1, void **a2, uint64_t a3)
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

uint64_t sub_2140632C8()
{
  v0 = sub_2146D9208();
  __swift_allocate_value_buffer(v0, qword_27C9046B0);
  __swift_project_value_buffer(v0, qword_27C9046B0);
  return sub_2146D91F8();
}

uint64_t sub_214063364()
{
  v0 = sub_2146D9208();
  __swift_allocate_value_buffer(v0, qword_27C9046C8);
  __swift_project_value_buffer(v0, qword_27C9046C8);
  return sub_2146D91F8();
}

uint64_t sub_214063400()
{
  v0 = sub_2146D9208();
  __swift_allocate_value_buffer(v0, qword_27C9046E0);
  __swift_project_value_buffer(v0, qword_27C9046E0);
  return sub_2146D91F8();
}

uint64_t sub_214063530()
{
  v0 = sub_2146D9208();
  __swift_allocate_value_buffer(v0, qword_27C904710);
  __swift_project_value_buffer(v0, qword_27C904710);
  return sub_2146D91F8();
}

uint64_t sub_214063600(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2146D9208();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2146D91F8();
}

uint64_t sub_21406369C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2146D9208();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

unint64_t sub_214063750()
{
  result = qword_280B35400;
  if (!qword_280B35400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B35400);
  }

  return result;
}

uint64_t sub_21406379C@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if ((result + 1) < 4)
  {
    v2 = result + 1;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_2140637C0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = sub_214069764(&unk_282653520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_214059810;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_214032610;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214063914@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_214064194;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_214032610;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214063A34@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2146ED240;
  *(v4 + 16) = sub_214032554;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142DFFF8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403255C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_2140428D0(inited, a1);
}

unint64_t sub_214063B78@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 200;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21406418C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403254C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214063CC8()
{
  result = qword_27C904740;
  if (!qword_27C904740)
  {
    result = swift_getWitnessTable(aYdml, &type metadata for MBDRichCardMediaHeightType, v0, v1);
    atomic_store(result, &qword_27C904740);
  }

  return result;
}

uint64_t sub_214063D1C()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1 - 1);
  return sub_2146DA9B8();
}

uint64_t sub_214063D64(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  MEMORY[0x216055860](v2 - 1);
  return sub_2146DA9B8();
}

unint64_t sub_214063DDC()
{
  result = qword_27C904748;
  if (!qword_27C904748)
  {
    result = swift_getWitnessTable(byte_2146ED30C, &type metadata for MBDRichCardMediaHeightType, v0, v1);
    atomic_store(result, &qword_27C904748);
  }

  return result;
}

unint64_t sub_214063E30()
{
  result = qword_27C904750;
  if (!qword_27C904750)
  {
    result = swift_getWitnessTable(byte_2146ED334, &type metadata for MBDRichCardMediaHeightType, v0, v1);
    atomic_store(result, &qword_27C904750);
  }

  return result;
}

uint64_t sub_214063F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214063F9C()
{
  result = qword_27C904758;
  if (!qword_27C904758)
  {
    result = swift_getWitnessTable(byte_2146FBF30, &type metadata for MBDRichCardMedia, v0, v1);
    atomic_store(result, &qword_27C904758);
  }

  return result;
}

unint64_t sub_214063FF0()
{
  result = qword_27C904760;
  if (!qword_27C904760)
  {
    result = swift_getWitnessTable(byte_2146FBF58, &type metadata for MBDRichCardMedia, v0, v1);
    atomic_store(result, &qword_27C904760);
  }

  return result;
}

uint64_t sub_21406405C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 257))
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

uint64_t sub_2140640A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 256) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 257) = 1;
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

    *(result + 257) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_214064138()
{
  result = qword_27C904768;
  if (!qword_27C904768)
  {
    result = swift_getWitnessTable(byte_2146ED2B8, &type metadata for MBDRichCardMediaHeightType, v0, v1);
    atomic_store(result, &qword_27C904768);
  }

  return result;
}

uint64_t sub_2140641A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BalloonPlugin.Payload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214064230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BalloonPlugin.Payload(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t BalloonPlugin.bundleID.getter()
{
  v1 = v0 + *(type metadata accessor for BalloonPlugin(0) + 20);
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);

    return v2;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214064360@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for BalloonPlugin(0) + 20);
  v4 = *(v3 + 24);
  if (v4)
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2140643F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for BalloonPlugin(0);
  sub_214031F20(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t BalloonPlugin.bundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for BalloonPlugin(0) + 20);
  v11[0] = a1;
  v11[1] = a2;
  v6 = *v5;
  v10 = *(v5 + 32);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v6(v11, &v10, v9))
  {

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*BalloonPlugin.bundleID.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for BalloonPlugin(0) + 20);
  *(v4 + 32) = v5;
  v6 = v1 + v5;
  v7 = *(v6 + 24);
  *(v4 + 24) = v7;
  if (v7)
  {
    *v4 = *(v6 + 16);
    *(v4 + 8) = v7;

    return sub_2140646F8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2140646F8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2] + *(*a1 + 8);
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v15 = **a1;
    v16 = v3;
    v10 = *v4;
    v17 = *(v4 + 32);
    v18 = 0x6E776F6E6B6E753CLL;
    v19 = 0xE90000000000003ELL;
    v20 = 0xD00000000000001CLL;
    v21 = 0x800000021478A360;
    if (v10(&v15, &v17, &v18))
    {
      v11 = *(v2 + 8);
      v12 = v2[2];

      v13 = v12 + v11;
      *(v13 + 16) = v5;
      *(v13 + 24) = v3;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v14 = 0x6E776F6E6B6E753CLL;
    v14[1] = 0xE90000000000003ELL;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v15 = **a1;
  v16 = v3;
  v6 = *v4;
  v17 = *(v4 + 32);
  v18 = 0x6E776F6E6B6E753CLL;
  v19 = 0xE90000000000003ELL;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000021478A360;

  if ((v6(&v15, &v17, &v18) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = *(v2 + 8);
  v8 = v2[2];

  v9 = v8 + v7;
  *(v9 + 16) = v5;
  *(v9 + 24) = v3;

LABEL_6:

  free(v2);
}

uint64_t BalloonPlugin.$bundleID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BalloonPlugin(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;
}

uint64_t sub_214064940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for BalloonPlugin(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
}

uint64_t sub_2140649A4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for BalloonPlugin(0) + 20);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
  return result;
}

__n128 BalloonPlugin.$bundleID.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for BalloonPlugin(0) + 20));

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

void (*BalloonPlugin.$bundleID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for BalloonPlugin(0) + 20);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v10;
  *(v4 + 24) = v9;
  *(v4 + 32) = v6;

  return sub_214064B44;
}

void sub_214064B44(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5] + *(*a1 + 9);
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  if (a2)
  {

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v8;
  }

  else
  {

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v8;
  }

  free(v2);
}

uint64_t BalloonPlugin.isExpirable.setter(char a1)
{
  result = type metadata accessor for BalloonPlugin(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t BalloonPlugin.attributionInfo.getter()
{
  type metadata accessor for BalloonPlugin(0);
}

uint64_t BalloonPlugin.attributionInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BalloonPlugin(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t BalloonPlugin.plainTextBody.getter()
{
  v1 = *(v0 + *(type metadata accessor for BalloonPlugin(0) + 32));

  return v1;
}

uint64_t BalloonPlugin.plainTextBody.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BalloonPlugin(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BalloonPlugin.content.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BalloonPlugin(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_214031CA0(v4, v5, v6);
}

__n128 BalloonPlugin.content.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for BalloonPlugin(0) + 36));
  sub_214031CE0(*v3, v3[1], v3[2]);
  result = v5;
  *v3 = v5;
  v3[2] = v2;
  return result;
}

uint64_t BalloonPlugin.participantDestinationIdentifiers.getter()
{
  if (*(v0 + *(type metadata accessor for BalloonPlugin(0) + 40) + 16))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214064FB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for BalloonPlugin(0) + 40) + 16);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214065048(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for BalloonPlugin(0);
  sub_2140325F8(v1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t BalloonPlugin.participantDestinationIdentifiers.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for BalloonPlugin(0) + 40);
  v9 = a1;
  v4 = *v3;
  v8 = *(v3 + 24);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v4(&v9, &v8, v7))
  {

    *(v3 + 16) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*BalloonPlugin.participantDestinationIdentifiers.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for BalloonPlugin(0) + 40);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    *a1 = v4;

    return sub_2140652FC;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2140652FC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1] + *(a1 + 6);
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v6 = *v3;
    v9 = *(v3 + 24);
    v10 = 0x6E776F6E6B6E753CLL;
    v11 = 0xE90000000000003ELL;
    v12 = 0xD00000000000001CLL;
    v13 = 0x800000021478A360;
    if (v6(&v8, &v9, &v10))
    {

      *(v3 + 16) = v2;
      return result;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v4 = *v3;
  v9 = *(v3 + 24);
  v10 = 0x6E776F6E6B6E753CLL;
  v11 = 0xE90000000000003ELL;
  v12 = 0xD00000000000001CLL;
  v13 = 0x800000021478A360;

  if ((v4(&v8, &v9, &v10) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  *(v3 + 16) = v2;
}

uint64_t BalloonPlugin.$participantDestinationIdentifiers.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BalloonPlugin(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v3;
}

uint64_t sub_214065544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for BalloonPlugin(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v3;
}

uint64_t sub_2140655A8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = a2 + *(type metadata accessor for BalloonPlugin(0) + 40);

  *v6 = v3;
  *(v6 + 8) = v2;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  return result;
}

__n128 BalloonPlugin.$participantDestinationIdentifiers.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = (v1 + *(type metadata accessor for BalloonPlugin(0) + 40));

  result = *a1;
  *v5 = *a1;
  v5[1].n128_u64[0] = v3;
  v5[1].n128_u8[8] = v4;
  return result;
}

void (*BalloonPlugin.$participantDestinationIdentifiers.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for BalloonPlugin(0) + 40);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  LOBYTE(v6) = *(v6 + 24);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v6;

  return sub_214065740;
}

void sub_214065740(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4] + *(*a1 + 7);
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  if (a2)
  {

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
  }

  else
  {

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
  }

  free(v2);
}

uint64_t BalloonPlugin.associatedMessageGUID.getter()
{
  v1 = v0 + *(type metadata accessor for BalloonPlugin(0) + 44);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);

    return v2;
  }

  return result;
}

uint64_t sub_214065898@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for BalloonPlugin(0) + 44);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_214065934(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for BalloonPlugin(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t BalloonPlugin.associatedMessageGUID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for BalloonPlugin(0) + 44);
  v11[0] = a1;
  v11[1] = a2;
  v6 = *v5;
  v10 = *(v5 + 32);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v6(v11, &v10, v9))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*BalloonPlugin.associatedMessageGUID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for BalloonPlugin(0) + 44);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_214065C38;
  }

  return result;
}

void sub_214065C38(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2] + *(*a1 + 10);
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v3;
    v8 = *v4;
    v13 = *(v4 + 32);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2] + *(v2 + 10);
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 16) = v5;
      *(v9 + 24) = v3;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v3;
  v6 = *v4;
  v13 = *(v4 + 32);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2] + *(v2 + 10);
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 16) = v5;
  *(v7 + 24) = v3;

LABEL_6:

  free(v2);
}

uint64_t BalloonPlugin.$associatedMessageGUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BalloonPlugin(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_214065E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for BalloonPlugin(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_214065EFC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for BalloonPlugin(0) + 44);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

__n128 BalloonPlugin.$associatedMessageGUID.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for BalloonPlugin(0) + 44));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

void (*BalloonPlugin.$associatedMessageGUID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for BalloonPlugin(0) + 44);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_2140660B8;
}

void sub_2140660B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5] + *(*a1 + 9);
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v8;
  }

  free(v2);
}

uint64_t BalloonPlugin.associatedMessageRange.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for BalloonPlugin(0);
  v8 = v3 + *(result + 48);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t BalloonPlugin.associatedMessageType.getter()
{
  v1 = v0 + *(type metadata accessor for BalloonPlugin(0) + 52);
  if ((*(v1 + 25) & 1) == 0)
  {
    return *(v1 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2140662DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for BalloonPlugin(0);
  v5 = a1 + *(result + 52);
  if (*(v5 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 24);
    *a2 = *(v5 + 16);
    *(a2 + 8) = v6 & 1;
  }

  return result;
}

uint64_t (*BalloonPlugin.associatedMessageType.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for BalloonPlugin(0) + 52);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  if (*(v4 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 24);
    *a1 = *(v4 + 16);
    *(a1 + 8) = v5 & 1;
    return sub_21406646C;
  }

  return result;
}

uint64_t BalloonPlugin.$associatedMessageType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BalloonPlugin(0) + 52));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v8;
  *(a1 + 26) = v3;
}

uint64_t sub_21406650C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for BalloonPlugin(0) + 52));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v8;
  *(a2 + 26) = v3;
}

uint64_t sub_214066578(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 26);
  v8 = a2 + *(type metadata accessor for BalloonPlugin(0) + 52);

  *v8 = v3;
  *(v8 + 8) = v2;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 25) = v6;
  *(v8 + 26) = v7;
  return result;
}

__n128 BalloonPlugin.$associatedMessageType.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = (v1 + *(type metadata accessor for BalloonPlugin(0) + 52));

  result = *a1;
  *v7 = *a1;
  v7[1].n128_u64[0] = v3;
  v7[1].n128_u8[8] = v4;
  v7[1].n128_u8[9] = v5;
  v7[1].n128_u8[10] = v6;
  return result;
}

void (*BalloonPlugin.$associatedMessageType.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for BalloonPlugin(0) + 52);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  v11 = *(v6 + 25);
  LOBYTE(v6) = *(v6 + 26);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v11;
  *(v4 + 26) = v6;

  return sub_214066720;
}

void sub_214066720(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4] + *(*a1 + 7);
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(*a1 + 26);
  if (a2)
  {

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
    *(v3 + 25) = v8;
    *(v3 + 26) = v9;
  }

  else
  {

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
    *(v3 + 25) = v8;
    *(v3 + 26) = v9;
  }

  free(v2);
}

uint64_t BalloonPlugin.attachments.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for BalloonPlugin(0) + 56));
}

uint64_t BalloonPlugin.attachments.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for BalloonPlugin(0) + 56);

  *(v1 + v3) = v2;
  return result;
}

unint64_t sub_2140668B4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2140676DC;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_21403254C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2140669D4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 2;
  *(v5 + 16) = sub_2140676B8;
  *(v5 + 24) = v6;
  *(v4 + 32) = v5;
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = 3;
  *(v7 + 16) = sub_2140676E0;
  *(v7 + 24) = v8;
  *(v4 + 40) = v7;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = 4000;
  *(v9 + 16) = sub_2140676E0;
  *(v9 + 24) = v10;
  *(v4 + 48) = v9;
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v11 + 16) = sub_2140676CC;
  *(v11 + 24) = v12;
  *(v3 + 32) = v11;
  v13 = sub_2142DFFF8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v14 + 16) = sub_21403255C;
  *(v14 + 24) = v15;
  *(inited + 32) = v14;
  return sub_2140428D0(inited, a1);
}

uint64_t BalloonPlugin.debugDescription.getter()
{
  sub_2146D9EF8();
  MEMORY[0x2160545D0](60, 0xE100000000000000);
  MEMORY[0x2160545D0](0x506E6F6F6C6C6142, 0xED00006E6967756CLL);
  MEMORY[0x2160545D0](0x49656C646E756220, 0xEB00000000203A44);
  v1 = type metadata accessor for BalloonPlugin(0);
  v2 = v0 + *(v1 + 20);
  v3 = *(v2 + 24);
  if (!v3)
  {
    goto LABEL_20;
  }

  v4 = v1;
  v5 = 7104878;
  v6 = *(v2 + 16);

  MEMORY[0x2160545D0](v6, v3);

  MEMORY[0x2160545D0](0x7269707845736920, 0xEE00203A656C6261);
  if (*(v0 + v4[6]))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + v4[6]))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x2160545D0](v7, v8);

  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBB0);
  v9 = v0 + v4[11];
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (!v11)
  {
    sub_213FDC6D0(v10, 0);
    v12 = 0xE300000000000000;
    v13 = 7104878;
    goto LABEL_12;
  }

  if (v11 == 1)
  {
LABEL_20:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v13 = sub_2146D9618();
  v12 = v14;
LABEL_12:
  MEMORY[0x2160545D0](v13, v12);

  MEMORY[0x2160545D0](0xD000000000000019, 0x800000021478BBD0);
  if (*(v0 + v4[12] + 16))
  {
    v15 = 0xE300000000000000;
    v16 = 7104878;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
    v16 = sub_2146D9618();
    v15 = v17;
  }

  MEMORY[0x2160545D0](v16, v15);

  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBF0);
  v18 = v0 + v4[13];
  if (*(v18 + 25))
  {
    goto LABEL_20;
  }

  if (*(v18 + 24))
  {
    v19 = 0xE300000000000000;
  }

  else
  {
    v5 = sub_2146D9618();
    v19 = v20;
  }

  MEMORY[0x2160545D0](v5, v19);

  MEMORY[0x2160545D0](0x6D68636174746120, 0xEE00203A73746E65);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](0xD000000000000012, 0x800000021478BC10);
  v21 = MEMORY[0x216054820](*(v0 + v4[7]), &type metadata for AttributionInfo);
  MEMORY[0x2160545D0](v21);

  MEMORY[0x2160545D0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_214066FF0(uint64_t a1)
{
  *(a1 + 8) = sub_214067074(&qword_27C904778, type metadata accessor for BalloonPlugin.Payload, protocol conformance descriptor for BalloonPlugin.Payload);
  result = sub_214067074(&qword_27C904780, type metadata accessor for BalloonPlugin.Payload, protocol conformance descriptor for BalloonPlugin.Payload);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214067074(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2140670BC(uint64_t a1)
{
  *(a1 + 8) = sub_214067074(&qword_27C904788, type metadata accessor for BalloonPlugin, protocol conformance descriptor for BalloonPlugin);
  result = sub_214067074(&qword_27C904790, type metadata accessor for BalloonPlugin, protocol conformance descriptor for BalloonPlugin);
  *(a1 + 16) = result;
  return result;
}

void sub_214067168(uint64_t a1)
{
  type metadata accessor for BalloonPlugin.Payload(319);
  if (v1 <= 0x3F)
  {
    sub_2140673E4(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
    if (v2 <= 0x3F)
    {
      sub_2140673E4(319, &qword_280B2E470, &type metadata for AttributionInfo, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_2140673E4(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_2140673E4(319, &qword_280B2F2E8, &type metadata for _AttributedString, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_214067434(319, &qword_280B2E568, &unk_27C904F20, &qword_2146EE8A0, type metadata accessor for Validated);
            if (v6 <= 0x3F)
            {
              sub_214067434(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050, type metadata accessor for Validated);
              if (v7 <= 0x3F)
              {
                sub_214067434(319, &qword_280B2E390, &qword_27C904770, &qword_2146ED4C0, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_214067434(319, &qword_280B2E560, &qword_27C904798, qword_21473CFD0, type metadata accessor for Validated);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2140673E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_214067434(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2140674E8(uint64_t a1)
{
  result = type metadata accessor for MessagesAppBalloon(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Handwriting(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for LinkPresentation.MessagesPayload(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for CombinedPluginAttachmentInfo(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for DigitalTouchBalloon(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for MessagesAppCustomAcknowledgement(319);
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_2140675AC(uint64_t a1, char a2, unint64_t a3)
{
  v6 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_15:
    v7 = sub_2146DA028();
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x216054E00](v8, a3);
      if (__OFADD__(v9, 1))
      {
LABEL_12:
        __break(1u);
        return v7 != v9;
      }
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v10 = *(a3 + 8 * v8 + 32);

      if (__OFADD__(v9, 1))
      {
        goto LABEL_12;
      }
    }

    v15 = a1;
    v11 = *(v10 + 16);
    v14 = a2;
    v12 = v11(&v15, &v14);

    v8 = v9 + 1;
  }

  while ((v12 & 1) == 0);
  return v7 != v9;
}

char *sub_2140676E4(uint64_t a1)
{
  result = sub_2145A8204();
  if (!v1)
  {
    v3 = result;
    v4 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
    v5 = sub_2146D9588();
    sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
    [v4 setClassName:v5 forClass:swift_getObjCClassFromMetadata()];

    [v3 encodeWithCoder_];
    v6 = [v4 encodedData];
    v7 = sub_2146D8A58();

    return v7;
  }

  return result;
}

uint64_t sub_2140677EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E6F436572616873;
  v4 = 0xEE0072656E696174;
  if (v2 != 1)
  {
    v3 = 0x6B6F546572616873;
    v4 = 0xEE00617461446E65;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C72556572616873;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6E6F436572616873;
  v8 = 0xEE0072656E696174;
  if (*a2 != 1)
  {
    v7 = 0x6B6F546572616873;
    v8 = 0xEE00617461446E65;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6C72556572616873;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_214067920()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2140679DC(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_214067A84(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_214067B3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21406967C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_214067B6C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEE0072656E696174;
  v5 = 0x6E6F436572616873;
  if (v2 != 1)
  {
    v5 = 0x6B6F546572616873;
    v4 = 0xEE00617461446E65;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C72556572616873;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_214067BE4()
{
  v1 = 0x6E6F436572616873;
  if (*v0 != 1)
  {
    v1 = 0x6B6F546572616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C72556572616873;
  }
}

unint64_t sub_214067C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21406967C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214067C80(uint64_t a1)
{
  v2 = sub_2140682BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214067CBC(uint64_t a1)
{
  v2 = sub_2140682BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214067CF8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = &v32 - v3;
  v4 = type metadata accessor for CloudKitSharingToken(0);
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9047A0, &unk_2146ED5C8);
  v38 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140682BC();
  sub_2146DAA28();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v39 + *(v16 + 28), v8, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C903F40, &unk_2146F1C50);
LABEL_9:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  sub_214032588(v8, v12);
  LOBYTE(v40) = 0;
  sub_2146D8958();
  sub_214069714(&qword_280B2FDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
  v17 = v37;
  sub_2146DA308();
  v18 = v13;
  if (v17)
  {
    sub_213FB2DF4(v12, &unk_27C9131A0, &unk_2146E9D10);
    return (*(v38 + 8))(v15, v13);
  }

  sub_213FB2DF4(v12, &unk_27C9131A0, &unk_2146E9D10);
  v20 = type metadata accessor for AccountsRepresentativeCloudShareInfo(0);
  v21 = v39;
  v22 = v39 + *(v20 + 20);
  v23 = *(v22 + 24);
  if (v23 == 1)
  {
    goto LABEL_9;
  }

  v24 = v20;
  v25 = *(v22 + 16);
  LOBYTE(v40) = 1;

  sub_2146DA2B8();
  sub_213FDC6D0(v25, v23);
  v26 = v36;
  sub_213FB2E54(v21 + *(v24 + 24), v36, &qword_27C9041D8, &qword_2146ED5C0);
  if ((*(v34 + 48))(v26, 1, v35) == 1)
  {
    (*(v38 + 8))(v15, v18);
    return sub_213FB2DF4(v26, &qword_27C9041D8, &qword_2146ED5C0);
  }

  else
  {
    v27 = v33;
    v28 = sub_21404A900(v26, v33);
    v40 = sub_2140676E4(v28);
    v41 = v29;
    v42 = 2;
    v30 = v40;
    v31 = v29;
    sub_214061684();
    sub_2146DA388();
    sub_214068310(v27);
    (*(v38 + 8))(v15, v18);
    return sub_213FB54FC(v30, v31);
  }
}

unint64_t sub_2140682BC()
{
  result = qword_27C9047A8;
  if (!qword_27C9047A8)
  {
    result = swift_getWitnessTable(byte_2146ED8A4, &_s21EncodingConfigurationV10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_27C9047A8);
  }

  return result;
}

uint64_t sub_214068310(uint64_t a1)
{
  v2 = type metadata accessor for CloudKitSharingToken(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214068384()
{
  sub_2140683D8();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2140683D8()
{
  sub_2146D8608();
  swift_allocObject();
  sub_2146D85F8();
  type metadata accessor for AccountsRepresentativeMessage(0);
  sub_214069714(&qword_27C904810, type metadata accessor for AccountsRepresentativeMessage, byte_2146ED618);
  v0 = sub_2146D85D8();
  v2 = v1;
  v3 = v0;

  v4 = MEMORY[0x277D84F98];
  v10 = MEMORY[0x277D84F98];
  if (v2 >> 60 == 15)
  {
    sub_2144AEF6C(0xD000000000000010, 0x800000021478BC50, v7);
    sub_213FB2DF4(v7, &qword_27C913170, &qword_2146EAB20);
    return v10;
  }

  else
  {
    v9 = MEMORY[0x277CC9318];
    *&v8 = v3;
    *(&v8 + 1) = v2;
    sub_213FDC730(&v8, v7);
    sub_21402D9F8(v3, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v7, 0xD000000000000010, 0x800000021478BC50, isUniquelyReferenced_nonNull_native);
    sub_213FDC6BC(v3, v2);
    return v4;
  }
}

uint64_t sub_21406856C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x657A696C616E6966;
    v6 = 0xD000000000000018;
    if (a1 != 8)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6465747065636361;
    if (a1 != 5)
    {
      v7 = 0x666E496572616873;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1701869940;
    v2 = 2003790950;
    v3 = 0x6169646F74737563;
    if (a1 != 3)
    {
      v3 = 0x69636966656E6562;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6E6F73616572;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2140686C4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_21406856C(*a1);
  v5 = v4;
  if (v3 == sub_21406856C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_21406874C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_21406856C(v1);
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2140687B0(uint64_t a1)
{
  sub_21406856C(*v1);
  sub_2146D9698();
}

uint64_t sub_214068804(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  sub_21406856C(v2);
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_214068864@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2140696C8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_214068894@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21406856C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2140688DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2140696C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214068904(uint64_t a1)
{
  v2 = sub_214068D90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214068940(uint64_t a1)
{
  v2 = sub_214068D90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21406897C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9047B0, &qword_2146ED5D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214068D90();
  sub_2146DAA28();
  v14[15] = *v3;
  v14[14] = 0;
  sub_214068DE4();
  sub_2146DA308();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v14[13] = *(v3 + 1);
  v14[12] = 1;
  sub_214068E38();
  sub_2146DA308();
  v14[11] = *(v3 + 2);
  v14[10] = 2;
  sub_214068E8C();
  sub_2146DA308();
  v10 = *(v3 + 32);
  if (v10 != 1)
  {
    v11 = *(v3 + 24);
    v14[9] = 3;

    sub_2146DA2B8();
    sub_213FDC6D0(v11, v10);
    v12 = *(v3 + 72);
    if (v12 != 1)
    {
      v13 = *(v3 + 64);
      v14[8] = 4;

      sub_2146DA2B8();
      sub_213FDC6D0(v13, v12);
      v14[7] = 5;
      sub_2146DA2C8();
      type metadata accessor for AccountsRepresentativeMessage(0);
      v14[6] = 6;
      type metadata accessor for AccountsRepresentativeCloudShareInfo(0);
      sub_214069714(&qword_27C9047D8, type metadata accessor for AccountsRepresentativeCloudShareInfo, byte_2146ED5E8);
      sub_2146DA298();
      v14[5] = 7;
      sub_2146DA2C8();
      v14[4] = 8;
      sub_2146DA2C8();
      v14[3] = 9;
      sub_2146DA2B8();
      return (*(v6 + 8))(v8, v5);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_214068D90()
{
  result = qword_27C9047B8;
  if (!qword_27C9047B8)
  {
    result = swift_getWitnessTable(byte_2146ED854, &_s21EncodingConfigurationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27C9047B8);
  }

  return result;
}

unint64_t sub_214068DE4()
{
  result = qword_27C9047C0;
  if (!qword_27C9047C0)
  {
    result = swift_getWitnessTable(aQ_57, &type metadata for AccountsRepresentativeMessage.MessageType, v0, v1);
    atomic_store(result, &qword_27C9047C0);
  }

  return result;
}

unint64_t sub_214068E38()
{
  result = qword_27C9047C8;
  if (!qword_27C9047C8)
  {
    result = swift_getWitnessTable(aE_91, &type metadata for AccountsRepresentativeMessage.Reason, v0, v1);
    atomic_store(result, &qword_27C9047C8);
  }

  return result;
}

unint64_t sub_214068E8C()
{
  result = qword_27C9047D0;
  if (!qword_27C9047D0)
  {
    result = swift_getWitnessTable(aY_54, &type metadata for AccountsRepresentativeMessage.ContextType, v0, v1);
    atomic_store(result, &qword_27C9047D0);
  }

  return result;
}

void sub_214068EE0(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_21402D9F8(a1, a2);
  v8 = sub_21404A62C();
  if (v3)
  {
    sub_213FB54FC(a1, a2);
    v9 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    sub_21404A8B8(0, &qword_27C9131B0, 0x277CCA9B8);
    if (swift_dynamicCast())
    {

      sub_21404A6EC();
      swift_allocError();
      v11 = v10;
      v12 = v32;
      v13 = [v12 domain];
      v14 = sub_2146D95B8();
      v16 = v15;

      MEMORY[0x2160545D0](v14, v16);

      *v11 = 0xD000000000000014;
      v11[1] = 0x800000021478AAD0;
      [v12 code];
      v17 = sub_2146DA428();
      v19 = v18;

      v11[2] = v17;
      v11[3] = v19;
      v11[4] = 0xD00000000000001DLL;
      v11[5] = 0x800000021478BC30;
      swift_willThrow();
    }

    else
    {

      sub_21404A6EC();
      swift_allocError();
      v27 = v26;
      v28 = v3;
      sub_214689A34(v3, 0xD00000000000001DLL, 0x800000021478BC30, v27);
      swift_willThrow();
    }
  }

  else
  {
    v20 = v8;
    sub_213FB54FC(a1, a2);
    v21 = v20;
    [v21 setRequiresSecureCoding_];
    [v21 _enableStrictSecureDecodingMode];
    sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = sub_2146D9588();
    [v21 setClass:ObjCClassFromMetadata forClassName:v23];

    v24 = [objc_allocWithZone(_BlastDoorCKDeviceToDeviceShareInvitationToken) initWithCoder_];
    if (v24)
    {
      v25 = sub_2146D8898();
      [v24 setShareURL_];

      sub_2145A8530(v24, a3);
    }

    else
    {
      v29 = sub_2146D9F58();
      swift_allocError();
      v31 = v30;
      sub_2146D9F28();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84168], v29);
      swift_willThrow();
    }
  }
}

uint64_t _s21EncodingConfigurationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s21EncodingConfigurationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_214069470()
{
  result = qword_27C9047E0;
  if (!qword_27C9047E0)
  {
    result = swift_getWitnessTable(byte_2146ED73C, &_s21EncodingConfigurationV10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_27C9047E0);
  }

  return result;
}

unint64_t sub_2140694C8()
{
  result = qword_27C9047E8;
  if (!qword_27C9047E8)
  {
    result = swift_getWitnessTable(byte_2146ED82C, &_s21EncodingConfigurationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27C9047E8);
  }

  return result;
}

unint64_t sub_214069520()
{
  result = qword_27C9047F0;
  if (!qword_27C9047F0)
  {
    result = swift_getWitnessTable(aM_148, &_s21EncodingConfigurationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27C9047F0);
  }

  return result;
}

unint64_t sub_214069578()
{
  result = qword_27C9047F8;
  if (!qword_27C9047F8)
  {
    result = swift_getWitnessTable(aMdm, &_s21EncodingConfigurationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27C9047F8);
  }

  return result;
}

unint64_t sub_2140695D0()
{
  result = qword_27C904800;
  if (!qword_27C904800)
  {
    result = swift_getWitnessTable(aM_149, &_s21EncodingConfigurationV10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_27C904800);
  }

  return result;
}

unint64_t sub_214069628()
{
  result = qword_27C904808;
  if (!qword_27C904808)
  {
    result = swift_getWitnessTable(aMm_3, &_s21EncodingConfigurationV10CodingKeysON_0, v0, v1);
    atomic_store(result, &qword_27C904808);
  }

  return result;
}

unint64_t sub_21406967C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2146DA098();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2140696C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_2146DA098();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_214069714(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214069764(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    sub_21409FD08(0, v2, 0);
    v3 = v13;
    sub_214069AD8();
    v4 = a1 + 40;
    do
    {
      v5 = sub_2146D9DD8();
      v14 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_21409FD08((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v14;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_214069888(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v30 = MEMORY[0x277D84F90];
    result = sub_21409FD28(0, v2, 0);
    v4 = 0;
    v5 = v30;
    v25 = v1 + 32;
    v23 = v2;
    v24 = v1;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v25 + 24 * v4 + 16);
      sub_214069AD8();

      v7 = sub_2146D9DD8();
      v8 = v7;
      v28 = v9;
      v10 = *(v6 + 16);
      if (v10)
      {
        v26 = v7;
        v27 = v5;
        v29 = MEMORY[0x277D84F90];
        sub_21409FD08(0, v10, 0);
        v11 = v6;
        v12 = v29;
        v13 = v11 + 40;
        do
        {
          v14 = sub_2146D9DD8();
          v16 = v15;
          v18 = *(v29 + 16);
          v17 = *(v29 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_21409FD08((v17 > 1), v18 + 1, 1);
          }

          *(v29 + 16) = v18 + 1;
          v19 = v29 + 16 * v18;
          *(v19 + 32) = v14;
          *(v19 + 40) = v16;
          v13 += 16;
          --v10;
        }

        while (v10);

        v2 = v23;
        v1 = v24;
        v5 = v27;
        v8 = v26;
      }

      else
      {

        v12 = MEMORY[0x277D84F90];
      }

      v21 = *(v5 + 16);
      v20 = *(v5 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_21409FD28((v20 > 1), v21 + 1, 1);
      }

      ++v4;
      *(v5 + 16) = v21 + 1;
      v22 = (v5 + 24 * v21);
      v22[4] = v8;
      v22[5] = v28;
      v22[6] = v12;
      if (v4 == v2)
      {

        return v5;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_214069AD8()
{
  result = qword_280B35238;
  if (!qword_280B35238)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83820], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_280B35238);
  }

  return result;
}

unint64_t sub_214069B2C@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 6;
  if (result < 6)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214069C30()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214069CAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    *a2 = *(a1 + 24);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214069D1C(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214069DCC(uint64_t a1, uint64_t a2)
{
  v10[0] = a1;
  v10[1] = a2;
  v5 = *(v2 + 8);
  v9 = *(v2 + 40);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v5(v10, &v9, v8))
  {

    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214069F14(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 32);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 24);
    a1[1] = v3;

    return sub_214069FB0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214069FB0(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    v9 = *a1;
    v10 = v2;
    v7 = *(v3 + 8);
    v11 = *(v3 + 40);
    v12 = 0x6E776F6E6B6E753CLL;
    v13 = 0xE90000000000003ELL;
    v14 = 0xD00000000000001CLL;
    v15 = 0x800000021478A360;
    if (v7(&v9, &v11, &v12))
    {

      *(v3 + 24) = v4;
      *(v3 + 32) = v2;
      return result;
    }

    goto LABEL_8;
  }

  v9 = *a1;
  v10 = v2;
  v5 = *(v3 + 8);
  v11 = *(v3 + 40);
  v12 = 0x6E776F6E6B6E753CLL;
  v13 = 0xE90000000000003ELL;
  v14 = 0xD00000000000001CLL;
  v15 = 0x800000021478A360;

  if ((v5(&v9, &v11, &v12) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  *(v3 + 24) = v4;
  *(v3 + 32) = v2;
}

uint64_t sub_21406A1D0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

uint64_t sub_21406A21C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);

  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  *(a2 + 24) = v6;
  *(a2 + 32) = v5;
  *(a2 + 40) = v7;
  return result;
}

__n128 sub_21406A294(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

void (*sub_21406A2F0(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21406A388;
}

void sub_21406A388(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  if (a2)
  {

    *(v3 + 8) = v5;
    *(v3 + 16) = v4;
    *(v3 + 24) = v7;
    *(v3 + 32) = v6;
    *(v3 + 40) = v8;
  }

  else
  {

    *(v3 + 8) = v5;
    *(v3 + 16) = v4;
    *(v3 + 24) = v7;
    *(v3 + 32) = v6;
    *(v3 + 40) = v8;
  }

  free(v2);
}

uint64_t sub_21406A458()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 64);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21406A4D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    *a2 = *(a1 + 64);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21406A544(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21406A5F4(uint64_t a1, uint64_t a2)
{
  v10[0] = a1;
  v10[1] = a2;
  v5 = *(v2 + 48);
  v9 = *(v2 + 80);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v5(v10, &v9, v8))
  {

    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_21406A73C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 72);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 64);
    a1[1] = v3;

    return sub_21406A7D8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21406A7D8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    v9 = *a1;
    v10 = v2;
    v7 = *(v3 + 48);
    v11 = *(v3 + 80);
    v12 = 0x6E776F6E6B6E753CLL;
    v13 = 0xE90000000000003ELL;
    v14 = 0xD00000000000001CLL;
    v15 = 0x800000021478A360;
    if (v7(&v9, &v11, &v12))
    {

      *(v3 + 64) = v4;
      *(v3 + 72) = v2;
      return result;
    }

    goto LABEL_8;
  }

  v9 = *a1;
  v10 = v2;
  v5 = *(v3 + 48);
  v11 = *(v3 + 80);
  v12 = 0x6E776F6E6B6E753CLL;
  v13 = 0xE90000000000003ELL;
  v14 = 0xD00000000000001CLL;
  v15 = 0x800000021478A360;

  if ((v5(&v9, &v11, &v12) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  *(v3 + 64) = v4;
  *(v3 + 72) = v2;
}

uint64_t sub_21406A9F8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

uint64_t sub_21406AA44(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);

  *(a2 + 48) = v4;
  *(a2 + 56) = v3;
  *(a2 + 64) = v6;
  *(a2 + 72) = v5;
  *(a2 + 80) = v7;
  return result;
}

__n128 sub_21406AABC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v4;
  v1[5].n128_u8[0] = v5;
  return result;
}

void (*sub_21406AB18(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 56);
  v7 = *(v1 + 64);
  v6 = *(v1 + 72);
  v8 = *(v1 + 80);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21406ABB0;
}

void sub_21406ABB0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  if (a2)
  {

    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v7;
    *(v3 + 72) = v6;
    *(v3 + 80) = v8;
  }

  else
  {

    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v7;
    *(v3 + 72) = v6;
    *(v3 + 80) = v8;
  }

  free(v2);
}

uint64_t sub_21406ACB8()
{
  sub_21406AD60();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21406AD0C()
{
  sub_21406AD60();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21406AD60()
{
  v1 = *v0;
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[8];
  v4 = v0[9];
  v6 = *(v0 + 81);
  v16 = MEMORY[0x277D83E88];
  *&v15 = v1;
  sub_213FDC730(&v15, v14);
  v7 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v14, 118, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  if (v2 && (v9 = MEMORY[0x277D837D0], v16 = MEMORY[0x277D837D0], *&v15 = v3, *(&v15 + 1) = v2, sub_213FDC730(&v15, v14), , v10 = swift_isUniquelyReferenced_nonNull_native(), sub_2140524DC(v14, 115, 0xE100000000000000, v10), v4))
  {
    v16 = v9;
    *&v15 = v5;
    *(&v15 + 1) = v4;
    sub_213FDC730(&v15, v14);

    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v14, 112, 0xE100000000000000, v11);
    v16 = &type metadata for IDSSessionReinitiate.IDSSessionReinitiateSubcommand;
    LOBYTE(v15) = v6;
    sub_213FDC730(&v15, v14);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v14, 26994, 0xE200000000000000, v12);
    return v7;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_21406AF14()
{
  result = qword_27C904818;
  if (!qword_27C904818)
  {
    result = swift_getWitnessTable(byte_2146ED940, &type metadata for IDSSessionReinitiate.IDSSessionReinitiateSubcommand, v0, v1);
    atomic_store(result, &qword_27C904818);
  }

  return result;
}

unint64_t sub_21406AF94()
{
  result = qword_27C904820;
  if (!qword_27C904820)
  {
    result = swift_getWitnessTable(byte_2146EDA0C, &type metadata for IDSSessionReinitiate.IDSSessionReinitiateSubcommand, v0, v1);
    atomic_store(result, &qword_27C904820);
  }

  return result;
}

unint64_t sub_21406AFE8()
{
  result = qword_27C904828;
  if (!qword_27C904828)
  {
    result = swift_getWitnessTable(byte_2146EDA34, &type metadata for IDSSessionReinitiate.IDSSessionReinitiateSubcommand, v0, v1);
    atomic_store(result, &qword_27C904828);
  }

  return result;
}

uint64_t sub_21406B068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21406B0A4()
{
  result = qword_27C904830;
  if (!qword_27C904830)
  {
    result = swift_getWitnessTable(byte_2146FA9F0, &type metadata for IDSSessionReinitiate, v0, v1);
    atomic_store(result, &qword_27C904830);
  }

  return result;
}

unint64_t sub_21406B0F8()
{
  result = qword_27C904838;
  if (!qword_27C904838)
  {
    result = swift_getWitnessTable(byte_2146FAA18, &type metadata for IDSSessionReinitiate, v0, v1);
    atomic_store(result, &qword_27C904838);
  }

  return result;
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_21406B170(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
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

uint64_t sub_21406B1B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21406B230()
{
  result = qword_27C904840;
  if (!qword_27C904840)
  {
    result = swift_getWitnessTable(byte_2146ED9A8, &type metadata for IDSSessionReinitiate.IDSSessionReinitiateSubcommand, v0, v1);
    atomic_store(result, &qword_27C904840);
  }

  return result;
}

uint64_t sub_21406B29C()
{
  v1 = v0;
  v184 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904848, &unk_2146F4E30);
  MEMORY[0x28223BE20](v2 - 8);
  v131 = &v127 - v3;
  v4 = type metadata accessor for EncodedAppData(0);
  v129 = *(v4 - 8);
  v130 = v4;
  MEMORY[0x28223BE20](v4);
  v132 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v128 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v133 = &v127 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v127 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v127 - v13;
  v15 = MEMORY[0x277D84F98];
  v136 = MEMORY[0x277D84F98];
  v16 = type metadata accessor for MessagesAppBalloon(0);
  v17 = (v1 + *(v16 + 24));
  v18 = v17[1];
  if (v18)
  {
    v19 = *v17;
    *(&v172 + 1) = MEMORY[0x277D837D0];
    *&v171 = v19;
    *(&v171 + 1) = v18;
    sub_213FDC730(&v171, &v153);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v137 = v15;
    sub_2140524DC(&v153, 0x74786574646CLL, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v136 = v137;
  }

  v135 = v16;
  v21 = *(v16 + 20);
  sub_213FB2E54(v1 + v21, v14, &unk_27C904F30, &unk_2146EFA20);
  v22 = sub_2146D8B88();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  v25 = v24(v14, 1, v22);
  sub_213FB2DF4(v14, &unk_27C904F30, &unk_2146EFA20);
  v134 = v1;
  if (v25 != 1)
  {
    v26 = v1 + v21;
    v27 = v127;
    sub_213FB2E54(v26, v127, &unk_27C904F30, &unk_2146EFA20);
    if (v24(v27, 1, v22) == 1)
    {
      sub_213FB2DF4(v27, &unk_27C904F30, &unk_2146EFA20);
      sub_2144AEF6C(0xD000000000000011, 0x800000021478BCE0, &v171);
      sub_213FB2DF4(&v171, &qword_27C913170, &qword_2146EAB20);
    }

    else
    {
      *(&v172 + 1) = v22;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v171);
      (*(v23 + 32))(boxed_opaque_existential_0, v27, v22);
      sub_213FDC730(&v171, &v153);
      v29 = v136;
      v30 = swift_isUniquelyReferenced_nonNull_native();
      *&v137 = v29;
      sub_2140524DC(&v153, 0xD000000000000011, 0x800000021478BCE0, v30);
      v136 = v137;
    }

    v1 = v134;
  }

  v31 = v135;
  v32 = (v1 + v135[8]);
  v33 = v32[1];
  v34 = v1;
  if (v33 != 1)
  {
    v35 = *v32;
    v36 = *(v32 + 4);
    v174 = *(v32 + 3);
    v175 = v36;
    v176[0] = *(v32 + 5);
    *(v176 + 9) = *(v32 + 89);
    v37 = *(v32 + 2);
    v172 = *(v32 + 1);
    v173 = v37;
    *&v171 = v35;
    *(&v171 + 1) = v33;
    v38 = sub_21406C2A0();
    *(&v154 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *&v153 = v38;
    sub_213FDC730(&v153, &v171);
    v39 = v136;
    v40 = swift_isUniquelyReferenced_nonNull_native();
    *&v137 = v39;
    sub_2140524DC(&v171, 0x6F666E4972657375, 0xE800000000000000, v40);
    v136 = v137;
  }

  v41 = v1 + v31[12];
  v42 = *(v41 + 24);
  if (v42)
  {
    if (v42 == 1)
    {
      goto LABEL_53;
    }

    v43 = *(v41 + 16);
    *(&v172 + 1) = MEMORY[0x277D837D0];
    *&v171 = v43;
    *(&v171 + 1) = v42;
    sub_213FDC730(&v171, &v153);

    v44 = v136;
    v45 = swift_isUniquelyReferenced_nonNull_native();
    *&v137 = v44;
    sub_2140524DC(&v153, 0x6C4374756F79616CLL, 0xEB00000000737361, v45);
    v136 = v137;
  }

  v46 = v31[7];
  v47 = v1 + v46;
  v48 = v133;
  sub_213FB2E54(v47, v133, &unk_27C9131A0, &unk_2146E9D10);
  v49 = sub_2146D8958();
  v50 = v34;
  v51 = *(v49 - 8);
  v52 = *(v51 + 48);
  v53 = v52(v48, 1, v49);
  sub_213FB2DF4(v48, &unk_27C9131A0, &unk_2146E9D10);
  if (v53 != 1)
  {
    v54 = v128;
    sub_213FB2E54(v50 + v46, v128, &unk_27C9131A0, &unk_2146E9D10);
    if (v52(v54, 1, v49) == 1)
    {
      sub_213FB2DF4(v54, &unk_27C9131A0, &unk_2146E9D10);
      sub_2144AEF6C(5001813, 0xE300000000000000, &v171);
      sub_213FB2DF4(&v171, &qword_27C913170, &qword_2146EAB20);
    }

    else
    {
      *(&v172 + 1) = v49;
      v55 = __swift_allocate_boxed_opaque_existential_0(&v171);
      (*(v51 + 32))(v55, v54, v49);
      sub_213FDC730(&v171, &v153);
      v56 = v136;
      v57 = swift_isUniquelyReferenced_nonNull_native();
      *&v137 = v56;
      sub_2140524DC(&v153, 5001813, 0xE300000000000000, v57);
      v136 = v137;
    }

    v50 = v134;
  }

  v58 = v50[1];
  if (v58)
  {
    v59 = *v50;
    *(&v172 + 1) = MEMORY[0x277D837D0];
    *&v171 = v59;
    *(&v171 + 1) = v58;
    sub_213FDC730(&v171, &v153);

    v60 = v136;
    v61 = swift_isUniquelyReferenced_nonNull_native();
    *&v137 = v60;
    sub_2140524DC(&v153, 0xD000000000000012, 0x800000021478BCC0, v61);
    v136 = v137;
  }

  v133 = v135[11];
  sub_213FB2E54(v50 + v133, &v171, &qword_27C904850, &unk_2146EDB40);
  v62 = v177;
  v63 = v178;
  v64 = v179;
  v65 = v180;
  v66 = v181;
  v67 = v182;
  v68 = v183;
  sub_213FB2DF4(&v171, &qword_27C904850, &unk_2146EDB40);
  if (v62 >> 1 != 0xFFFFFFFF || (v64 | v63) > 1 || v66 & 0xFFFFFFFFFFFFFEFELL | v65 & 0xFFFFFFFFFFFF00FELL || (v68 | v67) >= 2)
  {
    v70 = v134;
    sub_213FB2E54(v134 + v133, &v171, &qword_27C904850, &unk_2146EDB40);
    if (v177 >> 1 == 0xFFFFFFFF && (v179 | v178) <= 1 && !(v181 & 0xFFFFFFFFFFFFFEFELL | v180 & 0xFFFFFFFFFFFF00FELL) && (v183 | v182) < 2)
    {
      sub_213FB2DF4(&v171, &qword_27C904850, &unk_2146EDB40);
      v73 = v135;
      v74 = MEMORY[0x277D837D0];
      sub_2144AEF6C(26977, 0xE200000000000000, &v171);
      sub_213FB2DF4(&v171, &qword_27C913170, &qword_2146EAB20);
      v71 = v131;
      v69 = v132;
      v72 = v130;
      goto LABEL_33;
    }

    sub_213FB2E54(&v171, &v137, &qword_27C904858, &qword_214736F00);
    if (*(&v138 + 1))
    {
      v165 = v149;
      v166 = v150;
      v167 = v151;
      v168 = v152;
      v161 = v145;
      v162 = v146;
      v163 = v147;
      v164 = v148;
      v157 = v141;
      v158 = v142;
      v159 = v143;
      v160 = v144;
      v153 = v137;
      v154 = v138;
      v155 = v139;
      v156 = v140;
      sub_21406D278(&v171);
      type metadata accessor for JPEGEncoder();
      v75 = swift_allocObject();
      v121 = sub_21463D370(v75);
      v123 = v122;
      swift_setDeallocating();
      swift_deallocClassInstance();
      sub_21406D2CC(&v153);
      v170 = MEMORY[0x277CC9318];
      *&v169 = v121;
      *(&v169 + 1) = v123;
      sub_213FDC730(&v169, &v171);
      v124 = v136;
      v125 = swift_isUniquelyReferenced_nonNull_native();
      *&v153 = v124;
      sub_2140524DC(&v171, 26977, 0xE200000000000000, v125);
      v136 = v153;
      v69 = v132;
      goto LABEL_25;
    }

    __break(1u);
LABEL_53:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v69 = v132;
  v70 = v134;
LABEL_25:
  v72 = v130;
  v71 = v131;
  v73 = v135;
  v74 = MEMORY[0x277D837D0];
LABEL_33:
  v76 = (v70 + v73[10]);
  v77 = v76[1];
  if (v77)
  {
    v78 = *v76;
    *(&v172 + 1) = v74;
    *&v171 = v78;
    *(&v171 + 1) = v77;
    sub_213FDC730(&v171, &v153);

    v79 = v136;
    v80 = swift_isUniquelyReferenced_nonNull_native();
    *&v137 = v79;
    sub_2140524DC(&v153, 28257, 0xE200000000000000, v80);
    v136 = v137;
  }

  v81 = (v70 + v73[9]);
  if ((v81[1] & 1) == 0)
  {
    v82 = *v81;
    *(&v172 + 1) = MEMORY[0x277D83B88];
    *&v171 = v82;
    sub_213FDC730(&v171, &v153);
    v83 = v136;
    v84 = swift_isUniquelyReferenced_nonNull_native();
    *&v137 = v83;
    sub_2140524DC(&v153, 0x6469707061, 0xE500000000000000, v84);
    v136 = v137;
  }

  v85 = (v70 + v73[13]);
  v86 = v85[1];
  if (v86 != 1)
  {
    *&v153 = *v85;
    *(&v153 + 1) = v86;
    v87 = sub_21406C5D0();
    *(&v172 + 1) = MEMORY[0x277CC9318];
    *&v171 = v87;
    *(&v171 + 1) = v88;
    sub_213FDC730(&v171, &v153);
    v89 = v136;
    v90 = swift_isUniquelyReferenced_nonNull_native();
    *&v137 = v89;
    sub_2140524DC(&v153, 0x6F79614C6576696CLL, 0xEE006F666E497475, v90);
    v136 = v137;
  }

  sub_213FB2E54(v70 + v73[16], v71, &qword_27C904848, &unk_2146F4E30);
  if ((*(v129 + 48))(v71, 1, v72) == 1)
  {
    sub_213FB2DF4(v71, &qword_27C904848, &unk_2146F4E30);
  }

  else
  {
    v91 = sub_21406D198(v71, v69);
    v92 = (v69 + *(v72 + 20));
    v94 = *v92;
    v93 = v92[1];
    *&v171 = v94;
    *(&v171 + 1) = v93;
    MEMORY[0x28223BE20](v91);
    v126 = &v171;
    if (sub_21441C084(sub_21406D1FC, (&v127 - 4), &unk_2826536D8))
    {
      v95 = sub_214679ABC();
      *(&v172 + 1) = MEMORY[0x277CC9318];
      *&v171 = v95;
      *(&v171 + 1) = v96;
      sub_213FDC730(&v171, &v153);
      v97 = v136;
      v98 = swift_isUniquelyReferenced_nonNull_native();
      *&v137 = v97;
      sub_2140524DC(&v153, 1635017060, 0xE400000000000000, v98);
      sub_21406D21C(v69);
      v136 = v137;
    }

    else
    {
      v99 = sub_2146D9BA8();
      if (qword_280B35360 != -1)
      {
        swift_once();
      }

      v100 = qword_280B35410;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_2146EA710;
      v102 = (v70 + v73[15]);
      v104 = *v102;
      v103 = v102[1];
      *(v101 + 56) = v74;
      *(v101 + 64) = sub_213FB2DA0();
      *(v101 + 32) = v104;
      *(v101 + 40) = v103;

      sub_2146D91D8(v99, &dword_213FAF000, v100, "Fatal error, App Extension attempted to pass data through: %@", 61, 2, v101);

      sub_21406D21C(v69);
    }
  }

  v105 = objc_opt_self();
  v106 = MEMORY[0x277D837D0];
  v107 = sub_2146D9468();

  *&v171 = 0;
  v108 = [v105 archivedDataWithRootObject:v107 requiringSecureCoding:1 error:&v171];

  v109 = v171;
  if (v108)
  {
    v110 = sub_2146D8A58();
  }

  else
  {
    v111 = v109;
    v112 = sub_2146D8838();

    swift_willThrow();
    v113 = sub_2146D9BA8();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v114 = qword_280B35410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v115 = swift_allocObject();
    *(v115 + 16) = xmmword_2146EA710;
    *&v171 = v112;
    v116 = v112;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    v117 = sub_2146D9618();
    v119 = v118;
    *(v115 + 56) = v106;
    *(v115 + 64) = sub_213FB2DA0();
    *(v115 + 32) = v117;
    *(v115 + 40) = v119;
    sub_2146D91D8(v113, &dword_213FAF000, v114, "Fatal error, Could not encode application extension dictionary: %@", 66, 2, v115);

    return 0;
  }

  return v110;
}

uint64_t sub_21406C2A0()
{
  v1 = v0[1];
  v2 = v0[3];
  v21 = *v0;
  v22 = v0[2];
  v3 = v0[5];
  v4 = v0[7];
  v23 = v0[4];
  v24 = v0[6];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[11];
  v20 = v0[12];
  v25 = *(v0 + 104);
  v8 = MEMORY[0x277D84F98];
  if (v5)
  {
    v9 = v0[8];
    v10 = MEMORY[0x277D837D0];
    v28 = MEMORY[0x277D837D0];
    *&v27 = v9;
    *(&v27 + 1) = v5;
    sub_213FDC730(&v27, v26);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v26, 0x69742D6567616D69, 0xEB00000000656C74, isUniquelyReferenced_nonNull_native);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = MEMORY[0x277D837D0];
    if (v7)
    {
LABEL_3:
      v12 = v10;
      v28 = v10;
      *&v27 = v6;
      *(&v27 + 1) = v7;
      sub_213FDC730(&v27, v26);

      v13 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v26, 0x75732D6567616D69, 0xEE00656C74697462, v13);
      if (!v1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v12 = v10;
  if (v1)
  {
LABEL_4:
    v28 = v12;
    *&v27 = v21;
    *(&v27 + 1) = v1;
    sub_213FDC730(&v27, v26);

    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v26, 0x6E6F6974706163, 0xE700000000000000, v14);
  }

LABEL_5:
  if (v2)
  {
    v28 = v12;
    *&v27 = v22;
    *(&v27 + 1) = v2;
    sub_213FDC730(&v27, v26);

    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v26, 0x6974706163627573, 0xEA00000000006E6FLL, v15);
  }

  if (v3)
  {
    v28 = v12;
    *&v27 = v23;
    *(&v27 + 1) = v3;
    sub_213FDC730(&v27, v26);

    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v26, 0xD000000000000014, 0x800000021478BD60, v16);
  }

  if (v4)
  {
    v28 = v12;
    *&v27 = v24;
    *(&v27 + 1) = v4;
    sub_213FDC730(&v27, v26);

    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v26, 0xD000000000000013, 0x800000021478BD40, v17);
  }

  if ((v25 & 1) == 0)
  {
    v28 = MEMORY[0x277D83B88];
    *&v27 = v20;
    sub_213FDC730(&v27, v26);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v26, 0x697463612D706174, 0xEA00000000006E6FLL, v18);
  }

  return v8;
}

uint64_t sub_21406C5D0()
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = v0[1];
  v2 = MEMORY[0x277D84F98];
  if (v1)
  {
    v3 = *v0;
    v24 = MEMORY[0x277D837D0];
    *&v23 = v3;
    *(&v23 + 1) = v1;
    sub_213FDC730(&v23, v22);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v22, 0x6C4374756F79616CLL, 0xEB00000000737361, isUniquelyReferenced_nonNull_native);
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
  *&v23 = v2;
  sub_213FDC730(&v23, v22);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v22, 0x6F666E4972657375, 0xE800000000000000, v5);
  v6 = objc_opt_self();
  v7 = MEMORY[0x277D837D0];
  v8 = sub_2146D9468();

  *&v23 = 0;
  v9 = [v6 archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v23];

  v10 = v23;
  if (v9)
  {
    v11 = sub_2146D8A58();
  }

  else
  {
    v12 = v10;
    v13 = sub_2146D8838();

    swift_willThrow();
    v14 = sub_2146D9BA8();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v15 = qword_280B35410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2146EA710;
    *&v23 = v13;
    v17 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    v18 = sub_2146D9618();
    v20 = v19;
    *(v16 + 56) = v7;
    *(v16 + 64) = sub_213FB2DA0();
    *(v16 + 32) = v18;
    *(v16 + 40) = v20;
    sub_2146D91D8(v14, &dword_213FAF000, v15, "Error, Could not encode liveLayout dictionary: %@", 49, 2, v16);

    return 0;
  }

  return v11;
}

uint64_t sub_21406C8D4(uint64_t (*a1)(void))
{
  v1 = a1();
  v3 = v2;
  v4 = sub_2146D8A38();
  sub_213FB54FC(v1, v3);
  return v4;
}

uint64_t sub_21406C920()
{
  v1 = v0;
  v78 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v70 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v71 = &v69 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v69 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v69 - v9;
  v11 = MEMORY[0x277D84F98];
  v74 = MEMORY[0x277D84F98];
  v12 = type metadata accessor for MessagesAppCustomAcknowledgement(0);
  v13 = (v1 + *(v12 + 24));
  v14 = v13[1];
  if (v14)
  {
    v15 = *v13;
    v77 = MEMORY[0x277D837D0];
    *&v76 = v15;
    *(&v76 + 1) = v14;
    sub_213FDC730(&v76, v75);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v11;
    sub_2140524DC(v75, 0x74786574646CLL, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v74 = v73;
  }

  v72 = v12;
  v17 = *(v12 + 20);
  sub_213FB2E54(v1 + v17, v10, &unk_27C904F30, &unk_2146EFA20);
  v18 = sub_2146D8B88();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = v20(v10, 1, v18);
  sub_213FB2DF4(v10, &unk_27C904F30, &unk_2146EFA20);
  if (v21 != 1)
  {
    v22 = v1 + v17;
    v23 = v69;
    sub_213FB2E54(v22, v69, &unk_27C904F30, &unk_2146EFA20);
    if (v20(v23, 1, v18) == 1)
    {
      sub_213FB2DF4(v23, &unk_27C904F30, &unk_2146EFA20);
      sub_2144AEF6C(0xD000000000000011, 0x800000021478BCE0, &v76);
      sub_213FB2DF4(&v76, &qword_27C913170, &qword_2146EAB20);
    }

    else
    {
      v77 = v18;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v76);
      (*(v19 + 32))(boxed_opaque_existential_0, v23, v18);
      sub_213FDC730(&v76, v75);
      v25 = v74;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v73 = v25;
      sub_2140524DC(v75, 0xD000000000000011, 0x800000021478BCE0, v26);
      v74 = v73;
    }
  }

  v27 = v71;
  v28 = *(v72 + 28);
  sub_213FB2E54(v1 + v28, v71, &unk_27C9131A0, &unk_2146E9D10);
  v29 = sub_2146D8958();
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  v32 = v31(v27, 1, v29);
  sub_213FB2DF4(v27, &unk_27C9131A0, &unk_2146E9D10);
  if (v32 != 1)
  {
    v33 = v1 + v28;
    v34 = v70;
    sub_213FB2E54(v33, v70, &unk_27C9131A0, &unk_2146E9D10);
    if (v31(v34, 1, v29) == 1)
    {
      sub_213FB2DF4(v34, &unk_27C9131A0, &unk_2146E9D10);
      sub_2144AEF6C(5001813, 0xE300000000000000, &v76);
      sub_213FB2DF4(&v76, &qword_27C913170, &qword_2146EAB20);
    }

    else
    {
      v77 = v29;
      v35 = __swift_allocate_boxed_opaque_existential_0(&v76);
      (*(v30 + 32))(v35, v34, v29);
      sub_213FDC730(&v76, v75);
      v36 = v74;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v73 = v36;
      sub_2140524DC(v75, 5001813, 0xE300000000000000, v37);
      v74 = v73;
    }
  }

  v38 = v1[1];
  v39 = MEMORY[0x277D837D0];
  if (v38)
  {
    v40 = *v1;
    v77 = MEMORY[0x277D837D0];
    *&v76 = v40;
    *(&v76 + 1) = v38;
    sub_213FDC730(&v76, v75);

    v41 = v74;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v41;
    sub_2140524DC(v75, 0xD000000000000012, 0x800000021478BCC0, v42);
    v74 = v73;
  }

  v43 = v72;
  v44 = (v1 + *(v72 + 36));
  v45 = v44[1];
  if (v45)
  {
    v46 = *v44;
    v77 = v39;
    *&v76 = v46;
    *(&v76 + 1) = v45;
    sub_213FDC730(&v76, v75);

    v47 = v74;
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v47;
    sub_2140524DC(v75, 28257, 0xE200000000000000, v48);
    v74 = v73;
  }

  v49 = v1 + *(v43 + 32);
  if (v49[8] != 1)
  {
    v50 = *v49;
    v77 = MEMORY[0x277D83B88];
    *&v76 = v50;
    sub_213FDC730(&v76, v75);
    v51 = v74;
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v51;
    sub_2140524DC(v75, 0x6469707061, 0xE500000000000000, v52);
  }

  v53 = objc_opt_self();
  v54 = MEMORY[0x277D837D0];
  v55 = sub_2146D9468();

  *&v76 = 0;
  v56 = [v53 archivedDataWithRootObject:v55 requiringSecureCoding:1 error:&v76];

  v57 = v76;
  if (v56)
  {
    v58 = sub_2146D8A58();
  }

  else
  {
    v59 = v57;
    v60 = sub_2146D8838();

    swift_willThrow();
    v61 = sub_2146D9BA8();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v62 = qword_280B35410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_2146EA710;
    *&v76 = v60;
    v64 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    v65 = sub_2146D9618();
    v67 = v66;
    *(v63 + 56) = v54;
    *(v63 + 64) = sub_213FB2DA0();
    *(v63 + 32) = v65;
    *(v63 + 40) = v67;
    sub_2146D91D8(v61, &dword_213FAF000, v62, "Fatal error, Could not encode application extension dictionary: %@", 66, 2, v63);

    return 0;
  }

  return v58;
}

uint64_t sub_21406D14C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = a3(a1, a2);
  v5 = v4;
  v6 = sub_2146D8A38();
  sub_213FB54FC(v3, v5);
  return v6;
}

uint64_t sub_21406D198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EncodedAppData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21406D21C(uint64_t a1)
{
  v2 = type metadata accessor for EncodedAppData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21406D350@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LinkPresentation.LinkMetadata(0) + 84));
  v4 = v3[5];
  v21[0] = v3[6];
  *(v21 + 9) = *(v3 + 105);
  v5 = v3[5];
  v7 = v3[3];
  v19 = v3[4];
  v6 = v19;
  v20 = v5;
  v8 = v3[1];
  v10 = v8;
  v16[0] = *v3;
  v9 = v16[0];
  v16[1] = v8;
  v11 = v3[3];
  v17 = v3[2];
  v12 = v17;
  v18 = v11;
  *(a1 + 105) = *(v3 + 105);
  v13 = v3[6];
  a1[5] = v4;
  a1[6] = v13;
  a1[3] = v7;
  a1[4] = v6;
  a1[1] = v10;
  a1[2] = v12;
  *a1 = v9;
  return sub_213FB2E54(v16, &v15, &qword_27C904868, &qword_2146EDB58);
}

uint64_t sub_21406D414@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LinkPresentation.LinkMetadata(0) + 100));
  v4 = v3[5];
  v19[0] = v3[6];
  *(v19 + 9) = *(v3 + 105);
  v5 = v3[3];
  v6 = v3[5];
  v17 = v3[4];
  v7 = v17;
  v18 = v6;
  v8 = v3[1];
  v14[0] = *v3;
  v9 = v14[0];
  v14[1] = v8;
  v10 = v3[3];
  v15 = v3[2];
  v16 = v10;
  a1[2] = v15;
  a1[3] = v5;
  *a1 = v9;
  a1[1] = v8;
  *(a1 + 105) = *(v3 + 105);
  v11 = v3[6];
  a1[5] = v4;
  a1[6] = v11;
  a1[4] = v7;
  return sub_213FB2E54(v14, &v13, &qword_27C904868, &qword_2146EDB58);
}

uint64_t sub_21406D4B8()
{
  type metadata accessor for LinkPresentation.LinkMetadata(0);
}

uint64_t sub_21406D4EC()
{
  type metadata accessor for LinkPresentation.LinkMetadata(0);
}

uint64_t sub_21406D5E8()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_21406D618(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_21406D670()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_21406D6A0(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

__n128 sub_21406D6FC(uint64_t a1)
{
  v3 = v1[11];
  v10[4] = v1[10];
  v10[5] = v3;
  v11[0] = v1[12];
  *(v11 + 9) = *(v1 + 201);
  v4 = v1[7];
  v10[0] = v1[6];
  v10[1] = v4;
  v5 = v1[9];
  v10[2] = v1[8];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[10] = *(a1 + 64);
  v1[11] = v6;
  v1[12] = *(a1 + 96);
  *(v1 + 201) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[6] = *a1;
  v1[7] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[8] = result;
  v1[9] = v9;
  return result;
}

uint64_t sub_21406D8FC()
{
  type metadata accessor for LinkPresentation.SongMetadata(0);
}

uint64_t sub_21406D930(uint64_t a1)
{
  v3 = *(type metadata accessor for LinkPresentation.SongMetadata(0) + 52);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21406D9B8@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LinkPresentation.SongMetadata(0) + 56));
  *&v10[9] = *(v3 + 41);
  v4 = *&v10[9];
  v5 = v3[1];
  v9[0] = *v3;
  v9[1] = v5;
  *v10 = v3[2];
  v6 = *v10;
  *a1 = v9[0];
  a1[1] = v5;
  a1[2] = v6;
  *(a1 + 41) = v4;
  return sub_213FB2E54(v9, &v8, &qword_27C904880, &qword_2146EDB78);
}

__n128 sub_21406DA30(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for LinkPresentation.SongMetadata(0) + 56));
  *&v8[9] = *(v3 + 41);
  v4 = v3[1];
  v7[0] = *v3;
  v7[1] = v4;
  *v8 = v3[2];
  sub_213FB2DF4(v7, &qword_27C904880, &qword_2146EDB78);
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  v3[2] = *(a1 + 32);
  result = *(a1 + 41);
  *(v3 + 41) = result;
  return result;
}

uint64_t sub_21406DD48@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[9];
  v14 = v1[8];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[10];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 169);
  v5 = *(v16 + 9);
  v6 = v1[5];
  v11[0] = v1[4];
  v11[1] = v6;
  v8 = v1[7];
  v12 = v1[6];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

uint64_t sub_21406E1D8()
{
  v1 = *(v0 + *(type metadata accessor for LinkPresentation.PlaylistMetadata(0) + 36));

  return v1;
}

uint64_t sub_21406E218(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for LinkPresentation.PlaylistMetadata(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_21406E67C@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[11];
  v14 = v1[10];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[12];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 201);
  v5 = *(v16 + 9);
  v6 = v1[7];
  v11[0] = v1[6];
  v11[1] = v6;
  v8 = v1[9];
  v12 = v1[8];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

uint64_t sub_21406E720(uint64_t a1)
{

  *(v1 + 224) = a1;
  return result;
}

uint64_t sub_21406E8F4(char a1)
{
  result = type metadata accessor for LinkPresentation.SoftwareMetadata(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t sub_21406E96C@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LinkPresentation.SoftwareMetadata(0) + 56));
  v4 = v3[5];
  v6 = v3[3];
  v19 = v3[4];
  v5 = v19;
  v20 = v4;
  v7 = v3[5];
  v21[0] = v3[6];
  *(v21 + 9) = *(v3 + 105);
  v8 = v3[1];
  v10 = v8;
  v16[0] = *v3;
  v9 = v16[0];
  v16[1] = v8;
  v11 = v3[3];
  v17 = v3[2];
  v12 = v17;
  v18 = v11;
  *(a1 + 105) = *(v3 + 105);
  v13 = v3[6];
  a1[5] = v7;
  a1[6] = v13;
  a1[3] = v6;
  a1[4] = v5;
  a1[1] = v10;
  a1[2] = v12;
  *a1 = v9;
  return sub_213FB2E54(v16, &v15, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_21406EA10(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for LinkPresentation.SoftwareMetadata(0) + 56));
  v4 = v3[5];
  v11[4] = v3[4];
  v11[5] = v4;
  v12[0] = v3[6];
  *(v12 + 9) = *(v3 + 105);
  v5 = v3[1];
  v11[0] = *v3;
  v11[1] = v5;
  v6 = v3[3];
  v11[2] = v3[2];
  v11[3] = v6;
  sub_213FB2DF4(v11, &qword_27C904868, &qword_2146EDB58);
  v7 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v7;
  v3[6] = *(a1 + 96);
  *(v3 + 105) = *(a1 + 105);
  v8 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  v3[2] = result;
  v3[3] = v10;
  return result;
}

uint64_t sub_21406EAF8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_21406EB28(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_21406EB80()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_21406EBB0(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_21406EC08()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_21406EC38(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_21406EC90()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_21406ECC0(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

__n128 sub_21406ED1C(uint64_t a1)
{
  v3 = v1[9];
  v10[4] = v1[8];
  v10[5] = v3;
  v11[0] = v1[10];
  *(v11 + 9) = *(v1 + 169);
  v4 = v1[5];
  v10[0] = v1[4];
  v10[1] = v4;
  v5 = v1[7];
  v10[2] = v1[6];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[8] = *(a1 + 64);
  v1[9] = v6;
  v1[10] = *(a1 + 96);
  *(v1 + 169) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[4] = *a1;
  v1[5] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[6] = result;
  v1[7] = v9;
  return result;
}

uint64_t sub_21406EEA8(char a1)
{
  result = type metadata accessor for LinkPresentation.BookMetadata(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

__n128 sub_21406EFC4(uint64_t a1)
{
  v3 = v1[10];
  v10[4] = v1[9];
  v10[5] = v3;
  v11[0] = v1[11];
  *(v11 + 9) = *(v1 + 185);
  v4 = v1[6];
  v10[0] = v1[5];
  v10[1] = v4;
  v5 = v1[8];
  v10[2] = v1[7];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[9] = *(a1 + 64);
  v1[10] = v6;
  v1[11] = *(a1 + 96);
  *(v1 + 185) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[5] = *a1;
  v1[6] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[7] = result;
  v1[8] = v9;
  return result;
}

uint64_t sub_21406F334@<X0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  v4 = (v2 + *(a1(0) + 40));
  v5 = v4[3];
  v6 = v4[5];
  v19 = v4[4];
  v7 = v19;
  v20 = v6;
  v8 = v4[5];
  v21[0] = v4[6];
  *(v21 + 9) = *(v4 + 105);
  v9 = v4[3];
  v10 = v4[1];
  v17 = v4[2];
  v18 = v9;
  v11 = v4[1];
  v16[0] = *v4;
  v12 = v16[0];
  v16[1] = v11;
  a2[2] = v17;
  a2[3] = v5;
  *a2 = v12;
  a2[1] = v10;
  *(a2 + 105) = *(v4 + 105);
  v13 = v4[6];
  a2[5] = v8;
  a2[6] = v13;
  a2[4] = v7;
  return sub_213FB2E54(v16, &v15, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_21406F3F8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = (v2 + *(a2(0) + 40));
  v5 = v4[5];
  v12[4] = v4[4];
  v12[5] = v5;
  v13[0] = v4[6];
  *(v13 + 9) = *(v4 + 105);
  v6 = v4[3];
  v12[2] = v4[2];
  v12[3] = v6;
  v7 = v4[1];
  v12[0] = *v4;
  v12[1] = v7;
  sub_213FB2DF4(v12, &qword_27C904868, &qword_2146EDB58);
  v8 = *(a1 + 80);
  v4[4] = *(a1 + 64);
  v4[5] = v8;
  v4[6] = *(a1 + 96);
  *(v4 + 105) = *(a1 + 105);
  v9 = *(a1 + 16);
  *v4 = *a1;
  v4[1] = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  v4[2] = result;
  v4[3] = v11;
  return result;
}

uint64_t sub_21406F57C()
{
  type metadata accessor for LinkPresentation.PodcastEpisodeMetadata(0);
}

uint64_t sub_21406F5B0(uint64_t a1)
{
  v3 = *(type metadata accessor for LinkPresentation.PodcastEpisodeMetadata(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21406F7A8(uint64_t (*a1)(void))
{
  a1(0);
}

uint64_t sub_21406F7FC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 40);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_21406F928@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[10];
  v14 = v1[9];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[11];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 185);
  v5 = *(v16 + 9);
  v6 = v1[6];
  v11[0] = v1[5];
  v11[1] = v6;
  v8 = v1[8];
  v12 = v1[7];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_21406FCE4(uint64_t a1)
{
  v3 = v1[8];
  v10[4] = v1[7];
  v10[5] = v3;
  v11[0] = v1[9];
  *(v11 + 9) = *(v1 + 153);
  v4 = v1[4];
  v10[0] = v1[3];
  v10[1] = v4;
  v5 = v1[6];
  v10[2] = v1[5];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[7] = *(a1 + 64);
  v1[8] = v6;
  v1[9] = *(a1 + 96);
  *(v1 + 153) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[3] = *a1;
  v1[4] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[5] = result;
  v1[6] = v9;
  return result;
}

uint64_t sub_2140700C8()
{
  v1 = *(v0 + *(type metadata accessor for LinkPresentation.MovieMetadata(0) + 44));

  return v1;
}

uint64_t sub_214070108(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for LinkPresentation.MovieMetadata(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2140702F0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_214070320(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_214070378@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LinkPresentation.EncodedToken(0) + 20);

  return sub_2140703DC(v3, a1);
}

uint64_t sub_2140703DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitSharingToken(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214070440(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LinkPresentation.EncodedToken(0) + 20);

  return sub_214070484(a1, v3);
}

uint64_t sub_214070484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitSharingToken(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_214070530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for LinkPresentation.EncodedToken(0) + 20);

  return sub_21404A900(a3, v5);
}

uint64_t sub_21407057C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2140705AC(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_214070604()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_214070634(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_21407068C()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_2140706BC(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_214070714@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[8];
  v14 = v1[7];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[9];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 153);
  v5 = *(v16 + 9);
  v6 = v1[4];
  v11[0] = v1[3];
  v11[1] = v6;
  v8 = v1[6];
  v12 = v1[5];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_214070790(uint64_t a1)
{
  v3 = v1[8];
  v10[4] = v1[7];
  v10[5] = v3;
  v11[0] = v1[9];
  *(v11 + 9) = *(v1 + 153);
  v4 = v1[4];
  v10[0] = v1[3];
  v10[1] = v4;
  v5 = v1[6];
  v10[2] = v1[5];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[7] = *(a1 + 64);
  v1[8] = v6;
  v1[9] = *(a1 + 96);
  *(v1 + 153) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[3] = *a1;
  v1[4] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[5] = result;
  v1[6] = v9;
  return result;
}

uint64_t sub_214070840@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[16];
  v14 = v1[15];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[17];
  v4 = v16[0];
  v5 = v1[12];
  v11[0] = v1[11];
  v11[1] = v5;
  v7 = v1[14];
  v12 = v1[13];
  v6 = v12;
  v13 = v7;
  *(v16 + 9) = *(v1 + 281);
  v8 = *(v16 + 9);
  *a1 = v11[0];
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v8;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_2140708C0(uint64_t a1)
{
  v3 = v1[16];
  v10[4] = v1[15];
  v10[5] = v3;
  v11[0] = v1[17];
  v4 = v1[12];
  v10[0] = v1[11];
  v10[1] = v4;
  v5 = v1[14];
  v10[2] = v1[13];
  v10[3] = v5;
  *(v11 + 9) = *(v1 + 281);
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[15] = *(a1 + 64);
  v1[16] = v6;
  v1[17] = *(a1 + 96);
  *(v1 + 281) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[11] = *a1;
  v1[12] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[13] = result;
  v1[14] = v9;
  return result;
}

uint64_t sub_214070984(uint64_t a1)
{

  *(v1 + 304) = a1;
  return result;
}

uint64_t sub_2140709D0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_214070A00(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_214070A58()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_214070A88(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_214070AE0()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_214070B10(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_214070B68@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[8];
  v14 = v1[7];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[9];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 153);
  v5 = *(v16 + 9);
  v6 = v1[4];
  v11[0] = v1[3];
  v11[1] = v6;
  v8 = v1[6];
  v12 = v1[5];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_214070BE4(uint64_t a1)
{
  v3 = v1[8];
  v10[4] = v1[7];
  v10[5] = v3;
  v11[0] = v1[9];
  *(v11 + 9) = *(v1 + 153);
  v4 = v1[4];
  v10[0] = v1[3];
  v10[1] = v4;
  v5 = v1[6];
  v10[2] = v1[5];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[7] = *(a1 + 64);
  v1[8] = v6;
  v1[9] = *(a1 + 96);
  *(v1 + 153) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[3] = *a1;
  v1[4] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[5] = result;
  v1[6] = v9;
  return result;
}

uint64_t sub_214070C94()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_214070CC4(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_214070D1C@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[6];
  v14 = v1[5];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[7];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 121);
  v5 = *(v16 + 9);
  v6 = v1[2];
  v11[0] = v1[1];
  v11[1] = v6;
  v8 = v1[4];
  v12 = v1[3];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_214070D98(uint64_t a1)
{
  v3 = v1[6];
  v10[4] = v1[5];
  v10[5] = v3;
  v11[0] = v1[7];
  *(v11 + 9) = *(v1 + 121);
  v4 = v1[2];
  v10[0] = v1[1];
  v10[1] = v4;
  v5 = v1[4];
  v10[2] = v1[3];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[5] = *(a1 + 64);
  v1[6] = v6;
  v1[7] = *(a1 + 96);
  *(v1 + 121) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[3] = result;
  v1[4] = v9;
  return result;
}

uint64_t sub_214070E48@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[14];
  v14 = v1[13];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[15];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 249);
  v5 = *(v16 + 9);
  v6 = v1[10];
  v11[0] = v1[9];
  v11[1] = v6;
  v8 = v1[12];
  v12 = v1[11];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_214070EC4(uint64_t a1)
{
  v3 = v1[14];
  v10[4] = v1[13];
  v10[5] = v3;
  v11[0] = v1[15];
  *(v11 + 9) = *(v1 + 249);
  v4 = v1[10];
  v10[0] = v1[9];
  v10[1] = v4;
  v5 = v1[12];
  v10[2] = v1[11];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[13] = *(a1 + 64);
  v1[14] = v6;
  v1[15] = *(a1 + 96);
  *(v1 + 249) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[9] = *a1;
  v1[10] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[11] = result;
  v1[12] = v9;
  return result;
}

uint64_t sub_214071004()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_214071034(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_21407108C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2140710BC(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_214071114()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_214071144(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_21407119C()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_2140711CC(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_214071224()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_214071254(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_2140712AC()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_2140712DC(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_214071334()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_214071364(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t sub_2140713BC()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_2140713EC(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t sub_214071444()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_214071474(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2140714CC()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2140714FC(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_214071554@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[7];
  v14 = v1[6];
  v2 = v14;
  v15 = v3;
  v5 = v1[9];
  v16 = v1[8];
  v4 = v16;
  v17 = v5;
  v6 = v1[3];
  v11[0] = v1[2];
  v11[1] = v6;
  v8 = v1[5];
  v12 = v1[4];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904890, &qword_2146EDB90);
}

__n128 sub_2140715C4(uint64_t a1)
{
  v3 = v1[7];
  v12[4] = v1[6];
  v12[5] = v3;
  v4 = v1[9];
  v12[6] = v1[8];
  v12[7] = v4;
  v5 = v1[3];
  v12[0] = v1[2];
  v12[1] = v5;
  v6 = v1[5];
  v12[2] = v1[4];
  v12[3] = v6;
  sub_213FB2DF4(v12, &qword_27C904890, &qword_2146EDB90);
  v7 = *(a1 + 80);
  v1[6] = *(a1 + 64);
  v1[7] = v7;
  v8 = *(a1 + 112);
  v1[8] = *(a1 + 96);
  v1[9] = v8;
  v9 = *(a1 + 16);
  v1[2] = *a1;
  v1[3] = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  v1[4] = result;
  v1[5] = v11;
  return result;
}

uint64_t sub_214071664()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t sub_214071694(uint64_t a1, uint64_t a2)
{

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t sub_2140716EC@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[16];
  v14 = v1[15];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[17];
  v4 = v16[0];
  v5 = v1[12];
  v11[0] = v1[11];
  v11[1] = v5;
  v7 = v1[14];
  v12 = v1[13];
  v6 = v12;
  v13 = v7;
  *(v16 + 9) = *(v1 + 281);
  v8 = *(v16 + 9);
  *a1 = v11[0];
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v8;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_21407176C(uint64_t a1)
{
  v3 = v1[16];
  v10[4] = v1[15];
  v10[5] = v3;
  v11[0] = v1[17];
  v4 = v1[12];
  v10[0] = v1[11];
  v10[1] = v4;
  v5 = v1[14];
  v10[2] = v1[13];
  v10[3] = v5;
  *(v11 + 9) = *(v1 + 281);
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[15] = *(a1 + 64);
  v1[16] = v6;
  v1[17] = *(a1 + 96);
  *(v1 + 281) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[11] = *a1;
  v1[12] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[13] = result;
  v1[14] = v9;
  return result;
}

uint64_t sub_214071828()
{
  v1 = *(v0 + 304);

  return v1;
}

uint64_t sub_214071858(uint64_t a1, uint64_t a2)
{

  *(v2 + 304) = a1;
  *(v2 + 312) = a2;
  return result;
}

uint64_t sub_2140718B0()
{
  v1 = *(v0 + 320);

  return v1;
}

uint64_t sub_2140718E0(uint64_t a1, uint64_t a2)
{

  *(v2 + 320) = a1;
  *(v2 + 328) = a2;
  return result;
}

uint64_t sub_214071944(uint64_t result, char a2)
{
  *(v2 + 336) = result;
  *(v2 + 344) = a2 & 1;
  return result;
}

uint64_t sub_214071974()
{
  v1 = *(v0 + 352);

  return v1;
}

uint64_t sub_2140719A4(uint64_t a1, uint64_t a2)
{

  *(v2 + 352) = a1;
  *(v2 + 360) = a2;
  return result;
}

uint64_t sub_2140719FC@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[28];
  v14 = v1[27];
  v2 = v14;
  v15 = v3;
  v5 = v1[30];
  v16 = v1[29];
  v4 = v16;
  v17 = v5;
  v6 = v1[24];
  v11[0] = v1[23];
  v11[1] = v6;
  v8 = v1[26];
  v12 = v1[25];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904890, &qword_2146EDB90);
}

__n128 sub_214071A6C(uint64_t a1)
{
  v3 = v1[28];
  v12[4] = v1[27];
  v12[5] = v3;
  v4 = v1[30];
  v12[6] = v1[29];
  v12[7] = v4;
  v5 = v1[24];
  v12[0] = v1[23];
  v12[1] = v5;
  v6 = v1[26];
  v12[2] = v1[25];
  v12[3] = v6;
  sub_213FB2DF4(v12, &qword_27C904890, &qword_2146EDB90);
  v7 = *(a1 + 80);
  v1[27] = *(a1 + 64);
  v1[28] = v7;
  v8 = *(a1 + 112);
  v1[29] = *(a1 + 96);
  v1[30] = v8;
  v9 = *(a1 + 16);
  v1[23] = *a1;
  v1[24] = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  v1[25] = result;
  v1[26] = v11;
  return result;
}

uint64_t sub_214071B0C()
{
  v1 = *(v0 + 496);

  return v1;
}

uint64_t sub_214071B3C(uint64_t a1, uint64_t a2)
{

  *(v2 + 496) = a1;
  *(v2 + 504) = a2;
  return result;
}

uint64_t sub_214071B94()
{
  v1 = *(v0 + 512);

  return v1;
}

uint64_t sub_214071BC8(uint64_t a1, uint64_t a2)
{

  *(v2 + 512) = a1;
  *(v2 + 520) = a2;
  return result;
}

uint64_t sub_214071C24@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[38];
  v14 = v1[37];
  v2 = v14;
  v15 = v3;
  v5 = v1[40];
  v16 = v1[39];
  v4 = v16;
  v17 = v5;
  v6 = v1[34];
  v11[0] = v1[33];
  v11[1] = v6;
  v8 = v1[36];
  v12 = v1[35];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904890, &qword_2146EDB90);
}

__n128 sub_214071C94(uint64_t a1)
{
  v3 = v1[38];
  v12[4] = v1[37];
  v12[5] = v3;
  v4 = v1[40];
  v12[6] = v1[39];
  v12[7] = v4;
  v5 = v1[34];
  v12[0] = v1[33];
  v12[1] = v5;
  v6 = v1[36];
  v12[2] = v1[35];
  v12[3] = v6;
  sub_213FB2DF4(v12, &qword_27C904890, &qword_2146EDB90);
  v7 = *(a1 + 80);
  v1[37] = *(a1 + 64);
  v1[38] = v7;
  v8 = *(a1 + 112);
  v1[39] = *(a1 + 96);
  v1[40] = v8;
  v9 = *(a1 + 16);
  v1[33] = *a1;
  v1[34] = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  v1[35] = result;
  v1[36] = v11;
  return result;
}

uint64_t sub_214071D34()
{
  v1 = *(v0 + 656);

  return v1;
}

uint64_t sub_214071D68(uint64_t a1, uint64_t a2)
{

  *(v2 + 656) = a1;
  *(v2 + 664) = a2;
  return result;
}

uint64_t sub_214071DD0(uint64_t result, char a2)
{
  *(v2 + 672) = result;
  *(v2 + 680) = a2 & 1;
  return result;
}

uint64_t sub_214071E00@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[48];
  v14 = v1[47];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[49];
  v4 = v16[0];
  v5 = v1[44];
  v11[0] = v1[43];
  v11[1] = v5;
  v7 = v1[46];
  v12 = v1[45];
  v6 = v12;
  v13 = v7;
  *(v16 + 9) = *(v1 + 793);
  v8 = *(v16 + 9);
  *a1 = v11[0];
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v8;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_214071E80(uint64_t a1)
{
  v3 = v1[48];
  v10[4] = v1[47];
  v10[5] = v3;
  v11[0] = v1[49];
  v4 = v1[44];
  v10[0] = v1[43];
  v10[1] = v4;
  v5 = v1[46];
  v10[2] = v1[45];
  v10[3] = v5;
  *(v11 + 9) = *(v1 + 793);
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[47] = *(a1 + 64);
  v1[48] = v6;
  v1[49] = *(a1 + 96);
  *(v1 + 793) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[43] = *a1;
  v1[44] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[45] = result;
  v1[46] = v9;
  return result;
}

uint64_t sub_214071F3C@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[56];
  v14 = v1[55];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[57];
  v4 = v16[0];
  v5 = v1[52];
  v11[0] = v1[51];
  v11[1] = v5;
  v7 = v1[54];
  v12 = v1[53];
  v6 = v12;
  v13 = v7;
  *(v16 + 9) = *(v1 + 921);
  v8 = *(v16 + 9);
  *a1 = v11[0];
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v8;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_214071FBC(uint64_t a1)
{
  v3 = v1[56];
  v10[4] = v1[55];
  v10[5] = v3;
  v11[0] = v1[57];
  v4 = v1[52];
  v10[0] = v1[51];
  v10[1] = v4;
  v5 = v1[54];
  v10[2] = v1[53];
  v10[3] = v5;
  *(v11 + 9) = *(v1 + 921);
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[55] = *(a1 + 64);
  v1[56] = v6;
  v1[57] = *(a1 + 96);
  *(v1 + 921) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[51] = *a1;
  v1[52] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[53] = result;
  v1[54] = v9;
  return result;
}

uint64_t sub_214072078@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[64];
  v14 = v1[63];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[65];
  v4 = v16[0];
  v5 = v1[60];
  v11[0] = v1[59];
  v11[1] = v5;
  v7 = v1[62];
  v12 = v1[61];
  v6 = v12;
  v13 = v7;
  *(v16 + 9) = *(v1 + 1049);
  v8 = *(v16 + 9);
  *a1 = v11[0];
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v8;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_2140720F8(uint64_t a1)
{
  v3 = v1[64];
  v10[4] = v1[63];
  v10[5] = v3;
  v11[0] = v1[65];
  v4 = v1[60];
  v10[0] = v1[59];
  v10[1] = v4;
  v5 = v1[62];
  v10[2] = v1[61];
  v10[3] = v5;
  *(v11 + 9) = *(v1 + 1049);
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[63] = *(a1 + 64);
  v1[64] = v6;
  v1[65] = *(a1 + 96);
  *(v1 + 1049) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[59] = *a1;
  v1[60] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[61] = result;
  v1[62] = v9;
  return result;
}

uint64_t sub_2140721E4()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_214072214(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_21407229C@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 104);
  v14 = *(v1 + 88);
  v2 = v14;
  v15 = v3;
  v16[0] = *(v1 + 120);
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 129);
  v5 = *(v16 + 9);
  v6 = *(v1 + 40);
  v11[0] = *(v1 + 24);
  v11[1] = v6;
  v8 = *(v1 + 72);
  v12 = *(v1 + 56);
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_214072324(uint64_t a1)
{
  v3 = *(v1 + 104);
  v10[4] = *(v1 + 88);
  v10[5] = v3;
  v11[0] = *(v1 + 120);
  *(v11 + 9) = *(v1 + 129);
  v4 = *(v1 + 40);
  v10[0] = *(v1 + 24);
  v10[1] = v4;
  v5 = *(v1 + 72);
  v10[2] = *(v1 + 56);
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  *(v1 + 88) = *(a1 + 64);
  *(v1 + 104) = v6;
  *(v1 + 120) = *(a1 + 96);
  *(v1 + 129) = *(a1 + 105);
  v7 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 56) = result;
  *(v1 + 72) = v9;
  return result;
}

uint64_t sub_2140723EC@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 232);
  v14 = *(v1 + 216);
  v2 = v14;
  v15 = v3;
  v16[0] = *(v1 + 248);
  v4 = v16[0];
  v5 = *(v1 + 168);
  v11[0] = *(v1 + 152);
  v11[1] = v5;
  v7 = *(v1 + 200);
  v12 = *(v1 + 184);
  v6 = v12;
  v13 = v7;
  *(v16 + 9) = *(v1 + 257);
  v8 = *(v16 + 9);
  *a1 = v11[0];
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v8;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_214072478(uint64_t a1)
{
  v3 = *(v1 + 232);
  v10[4] = *(v1 + 216);
  v10[5] = v3;
  v11[0] = *(v1 + 248);
  v4 = *(v1 + 168);
  v10[0] = *(v1 + 152);
  v10[1] = v4;
  v5 = *(v1 + 200);
  v10[2] = *(v1 + 184);
  v10[3] = v5;
  *(v11 + 9) = *(v1 + 257);
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  *(v1 + 216) = *(a1 + 64);
  *(v1 + 232) = v6;
  *(v1 + 248) = *(a1 + 96);
  *(v1 + 257) = *(a1 + 105);
  v7 = *(a1 + 16);
  *(v1 + 152) = *a1;
  *(v1 + 168) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 184) = result;
  *(v1 + 200) = v9;
  return result;
}

uint64_t sub_21407254C@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 360);
  v14 = *(v1 + 344);
  v2 = v14;
  v15 = v3;
  v16[0] = *(v1 + 376);
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 385);
  v5 = *(v16 + 9);
  v6 = *(v1 + 296);
  v11[0] = *(v1 + 280);
  v11[1] = v6;
  v8 = *(v1 + 328);
  v12 = *(v1 + 312);
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_2140725CC(uint64_t a1)
{
  v3 = (v1 + 280);
  v4 = v3[5];
  v11[4] = v3[4];
  v11[5] = v4;
  v12[0] = v3[6];
  *(v12 + 9) = *(v3 + 105);
  v5 = v3[1];
  v11[0] = *v3;
  v11[1] = v5;
  v6 = v3[3];
  v11[2] = v3[2];
  v11[3] = v6;
  sub_213FB2DF4(v11, &qword_27C904868, &qword_2146EDB58);
  v7 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v7;
  v3[6] = *(a1 + 96);
  *(v3 + 105) = *(a1 + 105);
  v8 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  v3[2] = result;
  v3[3] = v10;
  return result;
}

uint64_t sub_214072688(uint64_t a1)
{

  *(v1 + 408) = a1;
  return result;
}

uint64_t sub_2140726D4()
{
  v1 = *(v0 + 416);

  return v1;
}

uint64_t sub_214072704(uint64_t a1, uint64_t a2)
{

  *(v2 + 416) = a1;
  *(v2 + 424) = a2;
  return result;
}

uint64_t sub_21407275C@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[32];
  v14 = v1[31];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[33];
  v4 = v16[0];
  v5 = v1[28];
  v11[0] = v1[27];
  v11[1] = v5;
  v7 = v1[30];
  v12 = v1[29];
  v6 = v12;
  v13 = v7;
  *(v16 + 9) = *(v1 + 537);
  v8 = *(v16 + 9);
  *a1 = v11[0];
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v8;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_2140727DC(uint64_t a1)
{
  v3 = v1[32];
  v10[4] = v1[31];
  v10[5] = v3;
  v11[0] = v1[33];
  v4 = v1[28];
  v10[0] = v1[27];
  v10[1] = v4;
  v5 = v1[30];
  v10[2] = v1[29];
  v10[3] = v5;
  *(v11 + 9) = *(v1 + 537);
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[31] = *(a1 + 64);
  v1[32] = v6;
  v1[33] = *(a1 + 96);
  *(v1 + 537) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[27] = *a1;
  v1[28] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[29] = result;
  v1[30] = v9;
  return result;
}

uint64_t sub_214072898()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2140728C8(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_214072920@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[6];
  v14 = v1[5];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[7];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 121);
  v5 = *(v16 + 9);
  v6 = v1[2];
  v11[0] = v1[1];
  v11[1] = v6;
  v8 = v1[4];
  v12 = v1[3];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_21407299C(uint64_t a1)
{
  v3 = v1[6];
  v10[4] = v1[5];
  v10[5] = v3;
  v11[0] = v1[7];
  *(v11 + 9) = *(v1 + 121);
  v4 = v1[2];
  v10[0] = v1[1];
  v10[1] = v4;
  v5 = v1[4];
  v10[2] = v1[3];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[5] = *(a1 + 64);
  v1[6] = v6;
  v1[7] = *(a1 + 96);
  *(v1 + 121) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[3] = result;
  v1[4] = v9;
  return result;
}

__n128 sub_214072AF0(uint64_t a1)
{
  v3 = *(v1 + 120);
  v10[4] = *(v1 + 104);
  v10[5] = v3;
  v11[0] = *(v1 + 136);
  *(v11 + 9) = *(v1 + 145);
  v4 = *(v1 + 56);
  v10[0] = *(v1 + 40);
  v10[1] = v4;
  v5 = *(v1 + 88);
  v10[2] = *(v1 + 72);
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  *(v1 + 104) = *(a1 + 64);
  *(v1 + 120) = v6;
  *(v1 + 136) = *(a1 + 96);
  *(v1 + 145) = *(a1 + 105);
  v7 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 72) = result;
  *(v1 + 88) = v9;
  return result;
}

uint64_t sub_214072BB8@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 248);
  v14 = *(v1 + 232);
  v2 = v14;
  v15 = v3;
  v4 = *(v1 + 184);
  v11[0] = *(v1 + 168);
  v11[1] = v4;
  v6 = *(v1 + 216);
  v12 = *(v1 + 200);
  v5 = v12;
  v13 = v6;
  v16[0] = *(v1 + 264);
  v7 = v16[0];
  *(v16 + 9) = *(v1 + 273);
  v8 = *(v16 + 9);
  *a1 = v11[0];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v7;
  *(a1 + 105) = v8;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_214072C44(uint64_t a1)
{
  v3 = *(v1 + 248);
  v10[4] = *(v1 + 232);
  v10[5] = v3;
  v4 = *(v1 + 184);
  v10[0] = *(v1 + 168);
  v10[1] = v4;
  v5 = *(v1 + 216);
  v10[2] = *(v1 + 200);
  v10[3] = v5;
  v11[0] = *(v1 + 264);
  *(v11 + 9) = *(v1 + 273);
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  *(v1 + 232) = *(a1 + 64);
  *(v1 + 248) = v6;
  *(v1 + 264) = *(a1 + 96);
  *(v1 + 273) = *(a1 + 105);
  v7 = *(a1 + 16);
  *(v1 + 168) = *a1;
  *(v1 + 184) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 200) = result;
  *(v1 + 216) = v9;
  return result;
}

uint64_t sub_214072DF0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_214072E20(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_214072E78()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_214072EA8(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_214072F00()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_214072F30(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_214072F88()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_214072FB8(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_214073010@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[9];
  v14 = v1[8];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[10];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 169);
  v5 = *(v16 + 9);
  v6 = v1[5];
  v11[0] = v1[4];
  v11[1] = v6;
  v8 = v1[7];
  v12 = v1[6];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_21407308C(uint64_t a1)
{
  v3 = v1[9];
  v10[4] = v1[8];
  v10[5] = v3;
  v11[0] = v1[10];
  *(v11 + 9) = *(v1 + 169);
  v4 = v1[5];
  v10[0] = v1[4];
  v10[1] = v4;
  v5 = v1[7];
  v10[2] = v1[6];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[8] = *(a1 + 64);
  v1[9] = v6;
  v1[10] = *(a1 + 96);
  *(v1 + 169) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[4] = *a1;
  v1[5] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[6] = result;
  v1[7] = v9;
  return result;
}

uint64_t sub_21407313C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_21407316C(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2140731C4()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2140731F4(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_21407324C@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[7];
  v14 = v1[6];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[8];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 137);
  v5 = *(v16 + 9);
  v6 = v1[3];
  v11[0] = v1[2];
  v11[1] = v6;
  v8 = v1[5];
  v12 = v1[4];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_2140732C8(uint64_t a1)
{
  v3 = v1[7];
  v10[4] = v1[6];
  v10[5] = v3;
  v11[0] = v1[8];
  *(v11 + 9) = *(v1 + 137);
  v4 = v1[3];
  v10[0] = v1[2];
  v10[1] = v4;
  v5 = v1[5];
  v10[2] = v1[4];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[6] = *(a1 + 64);
  v1[7] = v6;
  v1[8] = *(a1 + 96);
  *(v1 + 137) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[2] = *a1;
  v1[3] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[4] = result;
  v1[5] = v9;
  return result;
}

uint64_t sub_214073418@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 120);
  v14 = *(v1 + 104);
  v2 = v14;
  v15 = v3;
  v16[0] = *(v1 + 136);
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 145);
  v5 = *(v16 + 9);
  v6 = *(v1 + 56);
  v11[0] = *(v1 + 40);
  v11[1] = v6;
  v8 = *(v1 + 88);
  v12 = *(v1 + 72);
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

uint64_t sub_214073938()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_214073968(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2140739C0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2140739F0(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_214073A48@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[6];
  v14 = v1[5];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[7];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 121);
  v5 = *(v16 + 9);
  v6 = v1[2];
  v11[0] = v1[1];
  v11[1] = v6;
  v8 = v1[4];
  v12 = v1[3];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_213FB2E54(v11, &v10, &qword_27C904868, &qword_2146EDB58);
}

__n128 sub_214073AC4(uint64_t a1)
{
  v3 = v1[6];
  v10[4] = v1[5];
  v10[5] = v3;
  v11[0] = v1[7];
  *(v11 + 9) = *(v1 + 121);
  v4 = v1[2];
  v10[0] = v1[1];
  v10[1] = v4;
  v5 = v1[4];
  v10[2] = v1[3];
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C904868, &qword_2146EDB58);
  v6 = *(a1 + 80);
  v1[5] = *(a1 + 64);
  v1[6] = v6;
  v1[7] = *(a1 + 96);
  *(v1 + 121) = *(a1 + 105);
  v7 = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[3] = result;
  v1[4] = v9;
  return result;
}

uint64_t sub_214073B74()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t sub_214073BA4(uint64_t a1, uint64_t a2)
{

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

uint64_t sub_214073BFC()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t sub_214073C2C(uint64_t a1, uint64_t a2)
{

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t sub_214073CD4()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t sub_214073D54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_214073DC8(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214073E74(uint64_t a1, uint64_t a2)
{
  v10[0] = a1;
  v10[1] = a2;
  v5 = *v2;
  v9 = *(v2 + 32);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v5(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v2 + 16), *(v2 + 24));

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214073FB8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214074090;
  }

  return result;
}

void sub_214074090(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *v3;
    v13 = *(v3 + 32);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 16) = v5;
      *(v9 + 24) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *v3;
  v13 = *(v3 + 32);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 16) = v5;
  *(v7 + 24) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_214074260@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2140742B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21407430C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

__n128 sub_214074394(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_i64[0];
  v7 = v1[1].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

void (*sub_2140743FC(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21407449C;
}

void sub_21407449C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v8;
  }

  free(v2);
}

uint64_t sub_21407457C()
{
  if (*(v0 + 64) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 56);

    return v1;
  }

  return result;
}

uint64_t sub_2140745FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 64);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 56);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_214074670(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214074720(uint64_t a1, uint64_t a2)
{
  v10[0] = a1;
  v10[1] = a2;
  v5 = *(v2 + 40);
  v9 = *(v2 + 72);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v5(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v2 + 56), *(v2 + 64));

    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214074864(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21407493C;
  }

  return result;
}

void sub_21407493C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 40);
    v13 = *(v3 + 72);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 56) = v5;
      *(v9 + 64) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 40);
  v13 = *(v3 + 72);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 56) = v5;
  *(v7 + 64) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_214074B0C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214074B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  *a2 = *(a1 + 40);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214074BB8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 40) = v4;
  *(a2 + 48) = v3;
  *(a2 + 56) = v5;
  *(a2 + 64) = v6;
  *(a2 + 72) = v7;
  return result;
}

__n128 sub_214074C40(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

void (*sub_214074CA8(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214074D48;
}