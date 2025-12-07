uint64_t sub_2140D5464(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v4 = 0x617461646174656DLL;
    v5 = 0xD000000000000014;
    v6 = 0xD00000000000001CLL;
    if (a1 != 3)
    {
      v6 = 0x444970756F7267;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    if (a1)
    {
      v4 = 0x536567617373656DLL;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (a1 > 7u)
    {
      v1 = 0xD000000000000013;
      v2 = 0xD00000000000001BLL;
      if (a1 == 9)
      {
        v2 = 0xD000000000000017;
      }

      v3 = a1 == 8;
    }

    else
    {
      v1 = 0xD000000000000010;
      v2 = 0xD000000000000017;
      if (a1 != 6)
      {
        v2 = 0xD000000000000014;
      }

      v3 = a1 == 5;
    }

    if (v3)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2140D55E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21435D580(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2140D560C(uint64_t a1)
{
  v2 = sub_2142E5D28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140D5648(uint64_t a1)
{
  v2 = sub_2142E5D28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140D5684@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v130 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v130);
  v4 = &v105[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905A28, &qword_2146F3F38);
  v131 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v105[-v6];
  v8 = type metadata accessor for BasicTextMessage(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v105[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a1[3];
  v168 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_2142E5D28();
  v12 = v132;
  sub_2146DAA08();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(v168);
  }

  v13 = v8;
  v132 = v10;
  LOBYTE(v158) = 0;
  sub_214328930(&qword_280B2E650, type metadata accessor for Metadata, byte_2146FB080);
  sub_2146DA1C8();
  v157 = 1;
  sub_21409EB94();
  sub_2146DA1C8();
  v155 = v166;
  *v156 = v167[0];
  *&v156[9] = *(v167 + 9);
  v151 = v162;
  v152 = v163;
  v153 = v164;
  v154 = v165;
  v147 = v158;
  v148 = v159;
  v149 = v160;
  v150 = v161;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v139) = 2;
  v130 = sub_2142E12FC();
  sub_2146DA1C8();
  v128 = v143;
  LOBYTE(v139) = 3;
  sub_2146DA1C8();
  v15 = *(&v143 + 1);
  v127 = v143;
  LOBYTE(v139) = 4;
  sub_2146DA1C8();
  v125 = v143;
  v126 = v15;
  v16 = *(&v143 + 1);
  LOBYTE(v139) = 5;
  sub_2146DA1C8();
  v130 = v16;
  v17 = *(&v143 + 1);
  v123 = v143;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  LOBYTE(v139) = 6;
  v124 = sub_2142E3570();
  sub_2146DA1C8();
  v122 = v17;
  v18 = v143;
  v121 = BYTE8(v143);
  LOBYTE(v139) = 7;
  sub_2146DA1C8();
  v19 = v143;
  LODWORD(v124) = BYTE8(v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v139) = 8;
  sub_2142E11FC();
  sub_2146DA1C8();
  v118 = v4;
  v20 = v143;
  v117 = BYTE8(v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  LOBYTE(v139) = 9;
  sub_2142E1548();
  v119 = v7;
  v120 = v5;
  sub_2146DA1C8();
  v116 = v143;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
  LOBYTE(v139) = 10;
  sub_2142E18D0();
  sub_2146DA1C8();
  v115 = v143;
  v114 = BYTE8(v143);
  v21 = v132;
  sub_2143287C0(v118, v132, type metadata accessor for Metadata);
  sub_21409E80C(&v143);
  v112 = v145;
  v113 = v144;
  LODWORD(v111) = v146;
  sub_21409E840(&v139);
  v109 = v141;
  v110 = v140;
  v108 = v142;
  sub_21409E874(&v135);
  v22 = v136;
  v107 = v137;
  v106 = v138;
  sub_21409E8A8(v133);
  v23 = v134;
  v24 = (v21 + v13[5]);
  v25 = v152;
  v24[4] = v151;
  v24[5] = v25;
  *(v24 + 153) = *&v156[9];
  v26 = *v156;
  v24[8] = v155;
  v24[9] = v26;
  v27 = v154;
  v24[6] = v153;
  v24[7] = v27;
  v28 = v148;
  *v24 = v147;
  v24[1] = v28;
  v29 = v150;
  v24[2] = v149;
  v24[3] = v29;
  v30 = v21 + v13[6];
  *v30 = v143;
  v31 = v112;
  *(v30 + 16) = v113;
  *(v30 + 24) = v31;
  *(v30 + 32) = v111;
  v32 = v21 + v13[7];
  *v32 = v139;
  v33 = v109;
  *(v32 + 16) = v110;
  *(v32 + 24) = v33;
  v113 = v32;
  *(v32 + 32) = v108;
  v34 = v21 + v13[8];
  *v34 = v135;
  v35 = v107;
  *(v34 + 16) = v22;
  *(v34 + 24) = v35;
  v112 = v34;
  *(v34 + 32) = v106;
  v36 = v21 + v13[9];
  v37 = v133[1];
  *v36 = v133[0];
  *(v36 + 16) = v37;
  v111 = v36;
  *(v36 + 32) = v23;
  v38 = v21 + v13[10];
  *v38 = v18;
  *(v38 + 8) = v121;
  v39 = v21 + v13[11];
  *v39 = v19;
  *(v39 + 8) = v124;
  v40 = v21 + v13[12];
  *v40 = v20;
  *(v40 + 8) = v117;
  v41 = v115;
  *(v21 + v13[13]) = v116;
  v42 = v21 + v13[14];
  *v42 = v41;
  *(v42 + 8) = v114;
  v44 = *v30;
  v43 = *(v30 + 8);
  v46 = *(v30 + 16);
  v45 = *(v30 + 24);
  LODWORD(v35) = *(v30 + 32);
  v139 = v128;
  v121 = v35;
  LOBYTE(v135) = v35;
  *&v143 = 0xD000000000000025;
  *(&v143 + 1) = 0x800000021478CE10;
  v144 = 0xD00000000000001CLL;
  v145 = 0x800000021478A360;

  sub_213FDC9D0(v46, v45);
  v47 = v44(&v139, &v135, &v143);
  v124 = 0;
  if ((v47 & 1) == 0)
  {
    sub_214031C4C();
    v58 = swift_allocError();
    *v59 = 0xD000000000000025;
    v59[1] = 0x800000021478CE10;
    v59[2] = 0xD00000000000001CLL;
    v59[3] = 0x800000021478A360;
    v124 = v58;
    swift_willThrow();

    sub_21432887C(v118, type metadata accessor for Metadata);
    (*(v131 + 8))(v119, v120);
    v60 = *(v30 + 16);
    v61 = *(v30 + 24);

    sub_213FDC6D0(v60, v61);
    *v30 = v44;
    *(v30 + 8) = v43;
    *(v30 + 16) = v46;
    *(v30 + 24) = v45;
    *(v30 + 32) = v121;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v168);
    return sub_21432887C(v132, type metadata accessor for BasicTextMessage);
  }

  sub_213FDC6D0(v46, v45);

  v48 = *(v30 + 16);
  v49 = *(v30 + 24);

  sub_213FDC6D0(v48, v49);
  *v30 = v44;
  *(v30 + 8) = v43;
  v50 = *(&v128 + 1);
  *(v30 + 16) = v128;
  *(v30 + 24) = v50;
  *(v30 + 32) = v121;
  v52 = *v113;
  v51 = *(v113 + 8);
  v54 = *(v113 + 16);
  v53 = *(v113 + 24);
  v55 = *(v113 + 32);
  *&v139 = v127;
  *(&v139 + 1) = v126;
  DWORD2(v128) = v55;
  LOBYTE(v135) = v55;
  *&v143 = 0xD00000000000002DLL;
  *(&v143 + 1) = 0x800000021478CE40;
  v144 = 0xD00000000000001CLL;
  v145 = 0x800000021478A360;

  *&v128 = v53;
  sub_213FDC9D0(v54, v53);
  v56 = v124;
  v57 = v52(&v139, &v135, &v143);
  v124 = v56;
  if (v56)
  {

LABEL_13:

    sub_21432887C(v118, type metadata accessor for Metadata);
    (*(v131 + 8))(v119, v120);
    v76 = v113;
    v77 = *(v113 + 16);
    v78 = *(v113 + 24);

    sub_213FDC6D0(v77, v78);
    *v76 = v52;
    *(v76 + 8) = v51;
    v79 = v128;
    *(v76 + 16) = v54;
    *(v76 + 24) = v79;
LABEL_14:
    *(v76 + 32) = BYTE8(v128);
    goto LABEL_8;
  }

  if ((v57 & 1) == 0)
  {
    sub_214031C4C();
    v74 = swift_allocError();
    *v75 = 0xD00000000000002DLL;
    v75[1] = 0x800000021478CE40;
    v75[2] = 0xD00000000000001CLL;
    v75[3] = 0x800000021478A360;
    v124 = v74;
    swift_willThrow();
    goto LABEL_13;
  }

  sub_213FDC6D0(v54, v128);

  v62 = v113;
  v63 = *(v113 + 16);
  v64 = *(v113 + 24);

  sub_213FDC6D0(v63, v64);
  *v62 = v52;
  *(v62 + 8) = v51;
  v65 = v126;
  *(v62 + 16) = v127;
  *(v62 + 24) = v65;
  *(v62 + 32) = BYTE8(v128);
  v67 = *v112;
  v66 = *(v112 + 8);
  v69 = *(v112 + 16);
  v68 = *(v112 + 24);
  v70 = *(v112 + 32);
  *&v139 = v125;
  *(&v139 + 1) = v130;
  DWORD2(v128) = v70;
  LOBYTE(v135) = v70;
  *&v143 = 0xD000000000000018;
  *(&v143 + 1) = 0x800000021478CE70;
  v144 = 0xD00000000000001CLL;
  v145 = 0x800000021478A360;

  v71 = v68;
  sub_213FDC9D0(v69, v68);
  v72 = v124;
  v73 = v67(&v139, &v135, &v143);
  v124 = v72;
  if (v72)
  {

LABEL_19:

    sub_21432887C(v118, type metadata accessor for Metadata);
    (*(v131 + 8))(v119, v120);
    v76 = v112;
    v93 = *(v112 + 16);
    v94 = *(v112 + 24);

    sub_213FDC6D0(v93, v94);
    *v76 = v67;
    *(v76 + 8) = v66;
    *(v76 + 16) = v69;
    *(v76 + 24) = v71;
    goto LABEL_14;
  }

  if ((v73 & 1) == 0)
  {
    sub_214031C4C();
    v91 = swift_allocError();
    *v92 = 0xD000000000000018;
    v92[1] = 0x800000021478CE70;
    v92[2] = 0xD00000000000001CLL;
    v92[3] = 0x800000021478A360;
    v124 = v91;
    swift_willThrow();
    goto LABEL_19;
  }

  sub_213FDC6D0(v69, v71);

  v80 = v112;
  v81 = *(v112 + 16);
  v82 = *(v112 + 24);

  sub_213FDC6D0(v81, v82);
  *v80 = v67;
  *(v80 + 8) = v66;
  v83 = v130;
  *(v80 + 16) = v125;
  *(v80 + 24) = v83;
  *(v80 + 32) = BYTE8(v128);
  v85 = *v111;
  v84 = *(v111 + 8);
  v87 = *(v111 + 16);
  v86 = *(v111 + 24);
  v88 = *(v111 + 32);
  *&v139 = v123;
  *(&v139 + 1) = v122;
  LOBYTE(v135) = v88;
  *&v143 = 0xD000000000000021;
  *(&v143 + 1) = 0x800000021478CE90;
  v144 = 0xD00000000000001CLL;
  v145 = 0x800000021478A360;

  v130 = v86;
  sub_213FDC9D0(v87, v86);
  v89 = v124;
  v90 = v85(&v139, &v135, &v143);
  v124 = v89;
  if (v89)
  {

LABEL_23:

    sub_21432887C(v118, type metadata accessor for Metadata);
    (*(v131 + 8))(v119, v120);
    v101 = v111;
    v102 = *(v111 + 16);
    v103 = *(v111 + 24);

    sub_213FDC6D0(v102, v103);
    *v101 = v85;
    *(v101 + 8) = v84;
    v104 = v130;
    *(v101 + 16) = v87;
    *(v101 + 24) = v104;
    *(v101 + 32) = v88;
    goto LABEL_8;
  }

  if ((v90 & 1) == 0)
  {
    sub_214031C4C();
    v99 = swift_allocError();
    *v100 = 0xD000000000000021;
    v100[1] = 0x800000021478CE90;
    v100[2] = 0xD00000000000001CLL;
    v100[3] = 0x800000021478A360;
    v124 = v99;
    swift_willThrow();
    goto LABEL_23;
  }

  sub_213FDC6D0(v87, v130);

  sub_21432887C(v118, type metadata accessor for Metadata);
  (*(v131 + 8))(v119, v120);
  v95 = v111;
  v96 = *(v111 + 16);
  v97 = *(v111 + 24);

  sub_213FDC6D0(v96, v97);
  *v95 = v85;
  *(v95 + 8) = v84;
  v98 = v122;
  *(v95 + 16) = v123;
  *(v95 + 24) = v98;
  *(v95 + 32) = v88;
  sub_214328704(v132, v129, type metadata accessor for BasicTextMessage);
  return __swift_destroy_boxed_opaque_existential_1(v168);
}

uint64_t sub_2140D6618(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905A38, &qword_2146F3F40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E5D28();
  sub_2146DAA28();
  v70[0] = 0;
  type metadata accessor for Metadata(0);
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = type metadata accessor for BasicTextMessage(0);
  v10 = v3;
  v11 = v9;
  v12 = *(v9 + 20);
  v71 = v10;
  v13 = (v10 + v12);
  v14 = v13[8];
  v15 = v13[6];
  v67 = v13[7];
  v68 = v14;
  v16 = v13[8];
  *v69 = v13[9];
  *&v69[9] = *(v13 + 153);
  v17 = v13[3];
  v18 = v13[5];
  v64 = v13[4];
  v65 = v18;
  v19 = v13[5];
  v66 = v13[6];
  v20 = v13[1];
  v21 = v13[3];
  v62 = v13[2];
  v63 = v21;
  v22 = v13[1];
  v61[0] = *v13;
  v61[1] = v22;
  v58 = v67;
  v59 = v16;
  v60[0] = v13[9];
  *(v60 + 9) = *(v13 + 153);
  v55 = v64;
  v56 = v19;
  v57 = v15;
  v51 = v61[0];
  v52 = v20;
  v53 = v62;
  v54 = v17;
  v50 = 1;
  sub_21409C7E8(v61, v48);
  sub_21409EBE8();
  sub_2146DA388();
  v48[7] = v58;
  v48[8] = v59;
  *v49 = v60[0];
  *&v49[9] = *(v60 + 9);
  v48[4] = v55;
  v48[5] = v56;
  v48[6] = v57;
  v48[0] = v51;
  v48[1] = v52;
  v48[2] = v53;
  v48[3] = v54;
  sub_21409C8C0(v48);
  v44 = v11;
  v23 = v11[6];
  v24 = v71;
  v25 = v71 + v23;
  v26 = *(v71 + v23 + 24);
  if (v26 != 1)
  {
    v46 = *(v25 + 16);
    v47 = v26;
    v45 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v27 = v24 + v44[7];
    v28 = *(v27 + 24);
    if (v28 != 1)
    {
      v46 = *(v27 + 16);
      v47 = v28;
      v45 = 3;
      sub_2146DA388();
      v29 = v24 + v44[8];
      v30 = *(v29 + 24);
      if (v30 != 1)
      {
        v46 = *(v29 + 16);
        v47 = v30;
        v45 = 4;
        sub_2146DA388();
        v31 = v24 + v44[9];
        v32 = *(v31 + 24);
        if (v32 != 1)
        {
          v46 = *(v31 + 16);
          v47 = v32;
          v45 = 5;
          sub_2146DA388();
          v33 = v24;
          v34 = v44;
          v35 = (v33 + v44[10]);
          v36 = *v35;
          LOBYTE(v35) = *(v35 + 8);
          v46 = v36;
          LOBYTE(v47) = v35;
          v45 = 6;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
          sub_2142E3778();
          sub_2146DA388();
          v37 = (v71 + v34[11]);
          v38 = *v37;
          LOBYTE(v37) = *(v37 + 8);
          v46 = v38;
          LOBYTE(v47) = v37;
          v45 = 7;
          sub_2146DA388();
          v39 = (v71 + v34[12]);
          v40 = *v39;
          LOBYTE(v39) = *(v39 + 8);
          v46 = v40;
          LOBYTE(v47) = v39;
          v45 = 8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
          sub_2142E1C30();
          sub_2146DA388();
          v46 = *(v71 + v34[13]);
          v45 = 9;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
          sub_2140459AC();
          sub_2146DA388();
          v41 = (v71 + v34[14]);
          v42 = *v41;
          LOBYTE(v41) = *(v41 + 8);
          v46 = v42;
          LOBYTE(v47) = v41;
          v45 = 10;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
          sub_2142E2204();
          sub_2146DA388();
          return (*(v6 + 8))(v8, v5);
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2140D6CBC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_2140D6CC8()
{
  if (*v0)
  {
    return 0xD000000000000021;
  }

  else
  {
    return 0x6873696E69467369;
  }
}

uint64_t sub_2140D6D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6873696E69467369 && a2 == 0xEA00000000006465;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000214793E80 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_2140D6DF8(uint64_t a1)
{
  v2 = sub_2142E5D7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140D6E34(uint64_t a1)
{
  v2 = sub_2142E5D7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140D6E70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905A40, &qword_2146F3F48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E5D7C();
  sub_2146DAA08();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_2146DA178();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    v13 = 1;
    sub_2142E1548();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v10 = v12[1];
    *a2 = v9 & 1;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140D7048(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905A50, &qword_2146F3F50);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[0] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E5D7C();
  sub_2146DAA28();
  v11 = 0;
  sub_2146DA338();
  if (!v2)
  {
    v9[1] = v9[0];
    v10 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    sub_2140459AC();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2140D7218(char a1)
{
  result = 0x495255646E617262;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x69726F6765746163;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0x6966697265567369;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x6465696669726576;
      break;
    case 9:
      result = 0x65746973626577;
      break;
    case 10:
      result = 0x4E6567617373656DLL;
      break;
    case 11:
      result = 0x6464416C69616D65;
      break;
    case 12:
      result = 0x73736572646461;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0x676F4C646E617262;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2140D7420@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21435D908(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2140D7448(uint64_t a1)
{
  v2 = sub_2142E5DD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140D7484(uint64_t a1)
{
  v2 = sub_2142E5DD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MBDBrandInfo.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905A58, &qword_2146F3F58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v85 - v7;
  v9 = a1[3];
  v277 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142E5DD0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v277);
  }

  v169 = v6;
  v168 = a2;
  LOBYTE(v171) = 0;
  v10 = sub_2146DA168();
  v167 = v11;
  LOBYTE(v171) = 1;
  v12 = sub_2146DA168();
  v14 = v13;
  v166 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  LOBYTE(v170[0]) = 2;
  sub_2142E1548();
  sub_2146DA1C8();
  v165 = v14;
  v164 = v10;
  v15 = v171;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v170[0]) = 3;
  sub_2142E12FC();
  sub_2146DA1C8();
  v163 = v15;
  v16 = v171;
  v17 = v172;
  LOBYTE(v170[0]) = 4;
  sub_2146DA1C8();
  v161 = v16;
  v162 = v17;
  v19 = v171;
  v20 = v172;
  LOBYTE(v170[0]) = 5;
  sub_2146DA1C8();
  v159 = v19;
  v21 = v171;
  v160 = v172;
  LOBYTE(v171) = 6;
  LODWORD(v157) = sub_2146DA178();
  v156 = v21;
  v158 = v20;
  LOBYTE(v170[0]) = 7;
  sub_2146DA1C8();
  v155 = v171;
  v22 = v172;
  LOBYTE(v170[0]) = 8;
  sub_2146DA1C8();
  v23 = v157;
  v154 = v22;
  v152 = v171;
  v153 = v172;
  LOBYTE(v170[0]) = 9;
  v24 = v5;
  sub_2146DA1C8();
  v150 = v171;
  v151 = v172;
  LOBYTE(v170[0]) = 10;
  sub_2146DA1C8();
  v148 = v171;
  v149 = v172;
  LOBYTE(v170[0]) = 11;
  sub_2146DA1C8();
  v146 = v171;
  v147 = v172;
  LOBYTE(v170[0]) = 12;
  sub_2146DA1C8();
  v144 = v171;
  v145 = v172;
  LOBYTE(v170[0]) = 13;
  sub_2146DA1C8();
  v142 = v171;
  v143 = v172;
  LOBYTE(v170[0]) = 14;
  sub_2146DA1C8();
  v140 = v171;
  v141 = v172;
  LOBYTE(v170[0]) = 15;
  sub_2146DA1C8();
  v137 = v171;
  v139 = v172;
  v263 = 16;
  sub_2146DA1C8();
  v89 = v264;
  v90 = v265;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v26 = swift_allocObject();
  LOBYTE(v171) = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 100;
  *(v27 + 24) = v171;
  *(v26 + 16) = sub_21438F518;
  *(v26 + 24) = v27;
  *(v25 + 32) = v26;
  sub_214042B80(v25, &v171);
  v28 = v171;
  v29 = v172;
  v85 = v173;
  v30 = v174;
  LODWORD(v26) = v175;
  sub_21449E824(v170);
  v131 = v170[0];
  v135 = v170[2];
  v133 = v170[1];
  v134 = v170[3];
  v132 = LOBYTE(v170[4]);
  sub_21449E858(&v258);
  v126 = v258;
  v130 = v260;
  v128 = v259;
  v129 = v261;
  v127 = v262;
  sub_21449E9A4(v256);
  v121 = v256[0];
  v125 = v256[2];
  v123 = v256[1];
  v124 = v256[3];
  v122 = v257;
  sub_21449EAF0(v254);
  v116 = v254[0];
  v120 = v254[2];
  v118 = v254[1];
  v119 = v254[3];
  v117 = v255;
  sub_21449EC44(v252);
  v111 = v252[0];
  v115 = v252[2];
  v113 = v252[1];
  v114 = v252[3];
  v112 = v253;
  sub_21449F000(v250);
  v106 = v250[0];
  v110 = v250[2];
  v108 = v250[1];
  v109 = v250[3];
  v107 = v251;
  sub_21449F034(v248);
  v101 = v248[0];
  v105 = v248[2];
  v103 = v248[1];
  v104 = v248[3];
  v102 = v249;
  sub_21449F180(v246);
  v96 = v246[0];
  v100 = v246[2];
  v98 = v246[1];
  v99 = v246[3];
  v97 = v247;
  sub_21449F2D4(v244);
  v91 = v244[0];
  v93 = v244[2];
  v94 = v244[3];
  v95 = v244[1];
  v92 = v245;
  v86 = v23 & 1;
  v170[0] = v166;
  v170[1] = v165;
  v88 = v26;
  LOBYTE(v258) = v26;
  v171 = 0xD000000000000011;
  v172 = 0x800000021478A940;
  v173 = 0xD00000000000001CLL;
  v136 = 0x800000021478A360;
  v174 = 0x800000021478A360;
  v157 = v30;

  v138 = v29;
  v87 = v28;
  if (v28(v170, &v258, &v171))
  {
    v31 = v136;

    v170[0] = v161;
    v170[1] = v162;
    LOBYTE(v258) = v132;
    v171 = 0xD00000000000001FLL;
    v172 = 0x800000021478A960;
    v173 = 0xD00000000000001CLL;
    v174 = v31;

    sub_213FDC9D0(v135, v134);
    if (v131(v170, &v258, &v171))
    {
      v33 = v134;
      v32 = v135;
      sub_213FDC6D0(v135, v134);
      v34 = v136;

      sub_213FDC6D0(v32, v33);
      v170[0] = v155;
      v170[1] = v154;
      LOBYTE(v258) = v127;
      v171 = 0xD000000000000021;
      v172 = 0x800000021478A980;
      v173 = 0xD00000000000001CLL;
      v174 = v34;

      sub_213FDC9D0(v130, v129);
      if (v126(v170, &v258, &v171))
      {
        v36 = v129;
        v35 = v130;
        sub_213FDC6D0(v130, v129);
        v37 = v136;

        sub_213FDC6D0(v35, v36);
        v170[0] = v152;
        v170[1] = v153;
        LOBYTE(v258) = v122;
        v171 = 0xD000000000000017;
        v172 = 0x800000021478A9B0;
        v173 = 0xD00000000000001CLL;
        v174 = v37;

        sub_213FDC9D0(v125, v124);
        if (v121(v170, &v258, &v171))
        {
          v38 = v124;
          v39 = v125;
          sub_213FDC6D0(v125, v124);
          v40 = v136;

          sub_213FDC6D0(v39, v38);
          v170[0] = v150;
          v170[1] = v151;
          LOBYTE(v258) = v117;
          v171 = 0xD000000000000014;
          v172 = 0x800000021478A9D0;
          v173 = 0xD00000000000001CLL;
          v174 = v40;

          sub_213FDC9D0(v120, v119);
          if (v116(v170, &v258, &v171))
          {
            v42 = v119;
            v41 = v120;
            sub_213FDC6D0(v120, v119);
            v43 = v136;

            sub_213FDC6D0(v41, v42);
            v170[0] = v148;
            v170[1] = v149;
            LOBYTE(v258) = v112;
            v171 = 0xD00000000000001ALL;
            v172 = 0x800000021478A9F0;
            v173 = 0xD00000000000001CLL;
            v174 = v43;

            sub_213FDC9D0(v115, v114);
            if (v111(v170, &v258, &v171))
            {
              v45 = v114;
              v44 = v115;
              sub_213FDC6D0(v115, v114);
              v46 = v136;

              sub_213FDC6D0(v44, v45);
              v170[0] = v146;
              v170[1] = v147;
              LOBYTE(v258) = v107;
              v171 = 0xD000000000000019;
              v172 = 0x800000021478AA10;
              v173 = 0xD00000000000001CLL;
              v174 = v46;

              sub_213FDC9D0(v110, v109);
              if (v106(v170, &v258, &v171))
              {
                v48 = v109;
                v47 = v110;
                sub_213FDC6D0(v110, v109);
                v49 = v136;

                sub_213FDC6D0(v47, v48);
                v170[0] = v144;
                v170[1] = v145;
                LOBYTE(v258) = v102;
                v171 = 0xD000000000000014;
                v172 = 0x800000021478AA30;
                v173 = 0xD00000000000001CLL;
                v174 = v49;

                sub_213FDC9D0(v105, v104);
                if (v101(v170, &v258, &v171))
                {
                  v67 = v104;
                  v66 = v105;
                  sub_213FDC6D0(v105, v104);
                  v68 = v136;

                  sub_213FDC6D0(v66, v67);
                  v170[0] = v142;
                  v170[1] = v143;
                  LOBYTE(v258) = v97;
                  v171 = 0xD000000000000022;
                  v172 = 0x800000021478AA50;
                  v173 = 0xD00000000000001CLL;
                  v174 = v68;

                  sub_213FDC9D0(v100, v99);
                  if (v96(v170, &v258, &v171))
                  {
                    v71 = v99;
                    v70 = v100;
                    sub_213FDC6D0(v100, v99);
                    v72 = v136;

                    sub_213FDC6D0(v70, v71);
                    v258 = v137;
                    v259 = v139;
                    LOBYTE(v170[0]) = v92;
                    v171 = 0xD000000000000022;
                    v172 = 0x800000021478AA80;
                    v173 = 0xD00000000000001CLL;
                    v174 = v72;

                    sub_213FDC9D0(v93, v94);
                    if (v91(&v258, v170, &v171))
                    {
                      v76 = v93;
                      v75 = v94;
                      sub_213FDC6D0(v93, v94);

                      (*(v169 + 8))(v8, v24);

                      sub_213FDC6D0(v76, v75);
                      *(&v170[17] + 1) = *v274;
                      HIDWORD(v170[22]) = *&v273[3];
                      *(&v170[22] + 1) = *v273;
                      HIDWORD(v170[27]) = *&v272[3];
                      *(&v170[27] + 1) = *v272;
                      *(&v170[32] + 1) = *v271;
                      *(&v170[37] + 1) = *v270;
                      *(&v170[42] + 1) = *v269;
                      *(&v170[47] + 1) = *v268;
                      *(&v170[52] + 1) = *v267;
                      *(&v170[59] + 1) = *v266;
                      *(&v170[6] + 1) = v276[0];
                      HIDWORD(v170[6]) = *(v276 + 3);
                      HIDWORD(v170[12]) = *&v275[3];
                      *(&v170[12] + 1) = *v275;
                      HIDWORD(v170[17]) = *&v274[3];
                      HIDWORD(v170[32]) = *&v271[3];
                      HIDWORD(v170[37]) = *&v270[3];
                      HIDWORD(v170[42]) = *&v269[3];
                      HIDWORD(v170[47]) = *&v268[3];
                      HIDWORD(v170[52]) = *&v267[3];
                      HIDWORD(v170[59]) = *&v266[3];
                      v170[0] = v164;
                      v77 = v167;
                      v170[1] = v167;
                      v170[2] = v87;
                      v170[3] = v138;
                      v170[4] = v166;
                      v170[5] = v165;
                      LOBYTE(v170[6]) = v88;
                      v78 = v163;
                      v170[7] = v163;
                      v170[8] = v131;
                      v170[9] = v133;
                      v170[10] = v161;
                      v170[11] = v162;
                      LOBYTE(v170[12]) = v132;
                      v170[13] = v159;
                      v79 = v158;
                      v170[14] = v158;
                      v170[15] = v156;
                      v170[16] = v160;
                      LOBYTE(v170[17]) = v86;
                      v170[18] = v126;
                      v170[19] = v128;
                      v170[20] = v155;
                      v170[21] = v154;
                      LOBYTE(v170[22]) = v127;
                      v170[23] = v121;
                      v170[24] = v123;
                      v170[25] = v152;
                      v80 = v153;
                      v170[26] = v153;
                      LOBYTE(v170[27]) = v122;
                      v170[28] = v116;
                      v170[29] = v118;
                      v170[30] = v150;
                      v170[31] = v151;
                      LOBYTE(v170[32]) = v117;
                      v81 = v111;
                      v170[33] = v111;
                      v82 = v113;
                      v170[34] = v113;
                      v170[35] = v148;
                      v170[36] = v149;
                      LOBYTE(v170[37]) = v112;
                      v170[38] = v106;
                      v170[39] = v108;
                      v170[40] = v146;
                      v170[41] = v147;
                      LOBYTE(v170[42]) = v107;
                      v170[43] = v101;
                      v170[44] = v103;
                      v170[45] = v144;
                      v170[46] = v145;
                      LOBYTE(v170[47]) = v102;
                      v170[48] = v96;
                      v170[49] = v98;
                      v170[50] = v142;
                      v170[51] = v143;
                      LOBYTE(v170[52]) = v97;
                      v170[53] = v140;
                      v170[54] = v141;
                      v170[55] = v91;
                      v170[56] = v95;
                      v170[57] = v137;
                      v170[58] = v139;
                      LOBYTE(v170[59]) = v92;
                      v170[60] = v89;
                      v170[61] = v90;
                      memcpy(v168, v170, 0x1F0uLL);
                      sub_2142E5E24(v170, &v171);
                      __swift_destroy_boxed_opaque_existential_1(v277);
                      v171 = v164;
                      v172 = v77;
                      v173 = v87;
                      v174 = v138;
                      v175 = v166;
                      v176 = v165;
                      v177 = v88;
                      v179 = v78;
                      v180 = v131;
                      v181 = v133;
                      v182 = v161;
                      v183 = v162;
                      v184 = v132;
                      v186 = v159;
                      v187 = v79;
                      v188 = v156;
                      v189 = v160;
                      v190 = v86;
                      v192 = v126;
                      v193 = v128;
                      v194 = v155;
                      v195 = v154;
                      v196 = v127;
                      v198 = v121;
                      v199 = v123;
                      v200 = v152;
                      v201 = v80;
                      v202 = v122;
                      v204 = v116;
                      v205 = v118;
                      v206 = v150;
                      v207 = v151;
                      v208 = v117;
                      v210 = v81;
                      v211 = v82;
                      *v178 = v276[0];
                      *&v178[3] = *(v276 + 3);
                      *&v185[3] = *&v275[3];
                      *v185 = *v275;
                      *v191 = *v274;
                      *&v191[3] = *&v274[3];
                      *&v197[3] = *&v273[3];
                      *v197 = *v273;
                      *&v203[3] = *&v272[3];
                      *v203 = *v272;
                      *v209 = *v271;
                      *&v209[3] = *&v271[3];
                      v212 = v148;
                      v213 = v149;
                      v214 = v112;
                      *v215 = *v270;
                      *&v215[3] = *&v270[3];
                      v216 = v106;
                      v217 = v108;
                      v218 = v146;
                      v219 = v147;
                      v220 = v107;
                      *v221 = *v269;
                      *&v221[3] = *&v269[3];
                      v222 = v101;
                      v223 = v103;
                      v224 = v144;
                      v225 = v145;
                      v226 = v102;
                      *v227 = *v268;
                      *&v227[3] = *&v268[3];
                      v228 = v96;
                      v229 = v98;
                      v230 = v142;
                      v231 = v143;
                      v232 = v97;
                      *v233 = *v267;
                      *&v233[3] = *&v267[3];
                      v234 = v140;
                      v235 = v141;
                      v236 = v91;
                      v237 = v95;
                      v238 = v137;
                      v239 = v139;
                      v240 = v92;
                      v52 = *&v266[3];
                      v53 = *v266;
                      goto LABEL_14;
                    }

                    sub_214031C4C();
                    swift_allocError();
                    *v83 = 0xD000000000000022;
                    v83[1] = 0x800000021478AA80;
                    v84 = v136;
                    v83[2] = 0xD00000000000001CLL;
                    v83[3] = v84;
                    swift_willThrow();

                    (*(v169 + 8))(v8, v24);

                    sub_213FDC6D0(v93, v94);
                    v157 = v165;
                    v134 = v162;
                    v135 = v161;
                    v129 = v154;
                    v130 = v155;
                    v124 = v153;
                    v125 = v152;
                    v119 = v151;
                    v120 = v150;
                    v114 = v149;
                    v115 = v148;
                    v109 = v147;
                    v110 = v146;
                    v104 = v145;
                    v105 = v144;
                    v99 = v143;
                    v100 = v142;
                  }

                  else
                  {
                    sub_214031C4C();
                    swift_allocError();
                    *v73 = 0xD000000000000022;
                    v73[1] = 0x800000021478AA50;
                    v74 = v136;
                    v73[2] = 0xD00000000000001CLL;
                    v73[3] = v74;
                    swift_willThrow();

                    (*(v169 + 8))(v8, v24);

                    sub_213FDC6D0(v100, v99);
                    v157 = v165;
                    v134 = v162;
                    v135 = v161;
                    v129 = v154;
                    v130 = v155;
                    v124 = v153;
                    v125 = v152;
                    v119 = v151;
                    v120 = v150;
                    v114 = v149;
                    v115 = v148;
                    v109 = v147;
                    v110 = v146;
                    v104 = v145;
                    v105 = v144;
                  }
                }

                else
                {
                  sub_214031C4C();
                  swift_allocError();
                  *v69 = 0xD000000000000014;
                  v69[1] = 0x800000021478AA30;
                  v69[2] = 0xD00000000000001CLL;
                  v69[3] = v136;
                  swift_willThrow();

                  (*(v169 + 8))(v8, v24);

                  sub_213FDC6D0(v105, v104);
                  v157 = v165;
                  v134 = v162;
                  v135 = v161;
                  v129 = v154;
                  v130 = v155;
                  v124 = v153;
                  v125 = v152;
                  v119 = v151;
                  v120 = v150;
                  v114 = v149;
                  v115 = v148;
                  v109 = v147;
                  v110 = v146;
                }
              }

              else
              {
                sub_214031C4C();
                swift_allocError();
                *v64 = 0xD000000000000019;
                v64[1] = 0x800000021478AA10;
                v65 = v136;
                v64[2] = 0xD00000000000001CLL;
                v64[3] = v65;
                swift_willThrow();

                (*(v169 + 8))(v8, v24);

                sub_213FDC6D0(v110, v109);
                v157 = v165;
                v134 = v162;
                v135 = v161;
                v129 = v154;
                v130 = v155;
                v124 = v153;
                v125 = v152;
                v119 = v151;
                v120 = v150;
                v114 = v149;
                v115 = v148;
              }
            }

            else
            {
              sub_214031C4C();
              swift_allocError();
              *v62 = 0xD00000000000001ALL;
              v62[1] = 0x800000021478A9F0;
              v63 = v136;
              v62[2] = 0xD00000000000001CLL;
              v62[3] = v63;
              swift_willThrow();

              (*(v169 + 8))(v8, v24);

              sub_213FDC6D0(v115, v114);
              v157 = v165;
              v134 = v162;
              v135 = v161;
              v129 = v154;
              v130 = v155;
              v124 = v153;
              v125 = v152;
              v119 = v151;
              v120 = v150;
            }
          }

          else
          {
            sub_214031C4C();
            swift_allocError();
            *v60 = 0xD000000000000014;
            v60[1] = 0x800000021478A9D0;
            v61 = v136;
            v60[2] = 0xD00000000000001CLL;
            v60[3] = v61;
            swift_willThrow();

            (*(v169 + 8))(v8, v24);

            sub_213FDC6D0(v120, v119);
            v157 = v165;
            v134 = v162;
            v135 = v161;
            v129 = v154;
            v130 = v155;
            v124 = v153;
            v125 = v152;
          }
        }

        else
        {
          sub_214031C4C();
          swift_allocError();
          *v58 = 0xD000000000000017;
          v58[1] = 0x800000021478A9B0;
          v59 = v136;
          v58[2] = 0xD00000000000001CLL;
          v58[3] = v59;
          swift_willThrow();

          (*(v169 + 8))(v8, v24);

          sub_213FDC6D0(v125, v124);
          v157 = v165;
          v134 = v162;
          v135 = v161;
          v129 = v154;
          v130 = v155;
        }
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v56 = 0xD000000000000021;
        v56[1] = 0x800000021478A980;
        v57 = v136;
        v56[2] = 0xD00000000000001CLL;
        v56[3] = v57;
        swift_willThrow();

        (*(v169 + 8))(v8, v24);

        sub_213FDC6D0(v130, v129);
        v157 = v165;
        v134 = v162;
        v135 = v161;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v54 = 0xD00000000000001FLL;
      v54[1] = 0x800000021478A960;
      v55 = v136;
      v54[2] = 0xD00000000000001CLL;
      v54[3] = v55;
      swift_willThrow();

      (*(v169 + 8))(v8, v24);

      sub_213FDC6D0(v135, v134);
      v157 = v165;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v50 = 0xD000000000000011;
    v50[1] = 0x800000021478A940;
    v51 = v136;
    v50[2] = 0xD00000000000001CLL;
    v50[3] = v51;
    swift_willThrow();

    (*(v169 + 8))(v8, v24);

    v166 = v85;
  }

  __swift_destroy_boxed_opaque_existential_1(v277);
  v171 = v164;
  v172 = v167;
  v173 = v87;
  v174 = v138;
  v175 = v166;
  v176 = v157;
  v177 = v88;
  v179 = v163;
  v180 = v131;
  v181 = v133;
  v182 = v135;
  v183 = v134;
  v184 = v132;
  v186 = v159;
  v187 = v158;
  v188 = v156;
  v189 = v160;
  v190 = v86;
  v192 = v126;
  v193 = v128;
  v194 = v130;
  v195 = v129;
  v196 = v127;
  v198 = v121;
  v199 = v123;
  v200 = v125;
  v201 = v124;
  v202 = v122;
  v204 = v116;
  v205 = v118;
  v206 = v120;
  v207 = v119;
  v208 = v117;
  *v178 = v276[0];
  *&v185[3] = *&v275[3];
  *v185 = *v275;
  *&v191[3] = *&v274[3];
  *v191 = *v274;
  *&v197[3] = *&v273[3];
  *v197 = *v273;
  *&v203[3] = *&v272[3];
  *v203 = *v272;
  *v209 = *v271;
  *&v178[3] = *(v276 + 3);
  *&v209[3] = *&v271[3];
  v210 = v111;
  v211 = v113;
  v212 = v115;
  v213 = v114;
  v214 = v112;
  *v215 = *v270;
  *&v215[3] = *&v270[3];
  v216 = v106;
  v217 = v108;
  v218 = v110;
  v219 = v109;
  v220 = v107;
  *v221 = *v269;
  *&v221[3] = *&v269[3];
  v222 = v101;
  v223 = v103;
  v224 = v105;
  v225 = v104;
  v226 = v102;
  *v227 = *v268;
  *&v227[3] = *&v268[3];
  v228 = v96;
  v229 = v98;
  v230 = v100;
  v231 = v99;
  v232 = v97;
  *v233 = *v267;
  *&v233[3] = *&v267[3];
  v234 = v140;
  v235 = v141;
  v236 = v91;
  v237 = v95;
  v238 = v93;
  v239 = v94;
  v240 = v92;
  v52 = *&v266[3];
  v53 = *v266;
LABEL_14:
  *v241 = v53;
  *&v241[3] = v52;
  v242 = v89;
  v243 = v90;
  return sub_214045958(&v171);
}

uint64_t MBDBrandInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905A68, &qword_2146F3F60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - v5;
  v7 = *(v1 + 40);
  v57 = *(v1 + 32);
  v58 = v7;
  v8 = *(v1 + 56);
  v9 = *(v1 + 80);
  v55 = *(v1 + 88);
  v56 = v8;
  v10 = *(v1 + 104);
  v53 = *(v1 + 112);
  v54 = v9;
  v11 = *(v1 + 120);
  v51 = *(v1 + 128);
  v52 = v10;
  v62 = *(v1 + 136);
  v12 = *(v1 + 160);
  v46 = *(v1 + 168);
  v47 = v12;
  v13 = *(v1 + 208);
  v49 = *(v1 + 200);
  v50 = v11;
  v14 = *(v1 + 248);
  v48 = *(v1 + 240);
  v44 = v14;
  v45 = v13;
  v15 = *(v1 + 288);
  v42 = *(v1 + 280);
  v43 = v15;
  v16 = *(v1 + 328);
  v40 = *(v1 + 320);
  v41 = v16;
  v17 = *(v1 + 368);
  v38 = *(v1 + 360);
  v39 = v17;
  v18 = *(v1 + 408);
  v36 = *(v1 + 400);
  v37 = v18;
  v19 = *(v1 + 432);
  v34 = *(v1 + 424);
  v35 = v19;
  v20 = *(v1 + 464);
  v32 = *(v1 + 456);
  v33 = v20;
  v21 = *(v1 + 488);
  v31 = *(v1 + 480);
  v22 = a1[3];
  v23 = a1;
  v25 = v24;
  __swift_project_boxed_opaque_existential_1(v23, v22);
  sub_2142E5DD0();
  sub_2146DAA28();
  LOBYTE(v60) = 0;
  v26 = v59;
  sub_2146DA328();
  if (v26)
  {
    return (*(v4 + 8))(v6, v25);
  }

  v28 = v56;
  v29 = v55;
  v59 = v21;
  if (!v58 || (LOBYTE(v60) = 1, , sub_2146DA328(), , v60 = v28, v63 = 2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780), sub_2140459AC(), sub_2146DA388(), v29 == 1) || (v60 = v54, v61 = v29, v63 = 3, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v60 = v52, v61 = v53, v63 = 4, sub_2146DA388(), v60 = v50, v61 = v51, v63 = 5, sub_2146DA388(), LOBYTE(v60) = 6, sub_2146DA338(), v46 == 1) || (v60 = v47, v61 = v46, v63 = 7, sub_2146DA388(), v30 = v48, v45 == 1) || (v60 = v49, v61 = v45, v63 = 8, sub_2146DA388(), v44 == 1) || (v60 = v30, v61 = v44, v63 = 9, sub_2146DA388(), v43 == 1) || (v60 = v42, v61 = v43, v63 = 10, sub_2146DA388(), v41 == 1) || (v60 = v40, v61 = v41, v63 = 11, sub_2146DA388(), v39 == 1) || (v60 = v38, v61 = v39, v63 = 12, sub_2146DA388(), v37 == 1) || (v60 = v36, v61 = v37, v63 = 13, sub_2146DA388(), v60 = v34, v61 = v35, v63 = 14, sub_2146DA388(), v33 == 1))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v60 = v32;
    v61 = v33;
    v63 = 15;
    sub_2146DA388();
    v60 = v31;
    v61 = v59;
    v63 = 16;
    sub_2146DA388();
    return (*(v4 + 8))(v6, v25);
  }

  return result;
}

uint64_t sub_2140DA16C(uint64_t a1)
{
  v2 = sub_2142E5E80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140DA1A8(uint64_t a1)
{
  v2 = sub_2142E5E80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CSDMHandle.init(with:genericHandle:phoneNumber:emailAddress:isoCountryCode:siriDisplayName:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v46 = *a1;
  sub_214650EB4(&v68);
  v15 = v68;
  v14 = v69;
  v17 = v70;
  v16 = v71;
  v18 = v72;
  sub_214651000(&v104);
  v64 = v104;
  v66 = v105;
  v114 = v106;
  v67 = v107;
  v65 = v108;
  sub_214651034(v102);
  v58 = v102[0];
  v63 = v102[2];
  v61 = v102[1];
  v62 = v102[3];
  v59 = v103;
  sub_214651068(v100);
  v54 = v100[0];
  v52 = v100[2];
  v56 = v100[1];
  v57 = v100[3];
  v55 = v101;
  sub_2146511B4(v98);
  v49 = v98[1];
  v50 = v98[0];
  v51 = v98[2];
  v45 = v98[3];
  v44 = v99;
  v104 = a2;
  v105 = a3;
  v47 = v18;
  LOBYTE(v102[0]) = v18;
  v68 = 0xD000000000000018;
  v69 = 0x800000021478CEC0;
  v70 = 0xD00000000000001CLL;
  v71 = 0x800000021478A360;

  sub_213FDC9D0(v17, v16);
  v19 = v14;
  v20 = v15(&v104, v102, &v68);
  if (v48)
  {

    v21 = v50;
LABEL_6:

    sub_213FDC6D0(v17, v16);
    v24 = v44;
    v25 = v49;
    v26 = v45;
LABEL_7:
    v27 = v52;
LABEL_8:
    LOBYTE(v68) = v46;
    *(&v68 + 1) = v113[0];
    HIDWORD(v68) = *(v113 + 3);
    v69 = v15;
    v70 = v19;
    v71 = v17;
    v72 = v16;
    v73 = v47;
    *v74 = *v112;
    *&v74[3] = *&v112[3];
    v75 = v64;
    v76 = v66;
    v77 = v114;
    v78 = v67;
    v79 = v65;
    *&v80[3] = *&v111[3];
    *v80 = *v111;
    v81 = v58;
    v82 = v61;
    v83 = v63;
    v84 = v62;
    v85 = v59;
    *&v86[3] = *&v110[3];
    *v86 = *v110;
    v87 = v54;
    v88 = v56;
    v89 = v27;
    v90 = v57;
    v91 = v55;
    *&v92[3] = *&v109[3];
    *v92 = *v109;
    v93 = v21;
    v94 = v25;
    v95 = v51;
    v96 = v26;
    v97 = v24;
    return sub_2142E5ED4(&v68);
  }

  v38 = a2;
  v39 = a3;
  if ((v20 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v23 = 0xD000000000000018;
    v23[1] = 0x800000021478CEC0;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();

    v21 = v50;
    goto LABEL_6;
  }

  sub_213FDC6D0(v17, v16);

  sub_213FDC6D0(v17, v16);
  v104 = a4;
  v105 = a5;
  LOBYTE(v102[0]) = v65;
  v68 = 0xD000000000000016;
  v69 = 0x800000021478CEE0;
  v70 = 0xD00000000000001CLL;
  v71 = 0x800000021478A360;

  sub_213FDC9D0(v114, v67);
  v22 = v64(&v104, v102, &v68);
  v24 = v44;
  v26 = v45;
  if ((v22 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD000000000000016;
    v31[1] = 0x800000021478CEE0;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();

    v25 = v49;
    v21 = v50;

    sub_213FDC6D0(v114, v67);
    v17 = v38;
    v16 = v39;
    goto LABEL_7;
  }

  v29 = v114;
  sub_213FDC6D0(v114, v67);

  sub_213FDC6D0(v29, v67);
  v104 = a6;
  v105 = a7;
  LOBYTE(v102[0]) = v59;
  v68 = 0xD000000000000017;
  v69 = 0x800000021478CF00;
  v70 = 0xD00000000000001CLL;
  v71 = 0x800000021478A360;

  sub_213FDC9D0(v63, v62);
  v25 = v49;
  if ((v58(&v104, v102, &v68) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD000000000000017;
    v32[1] = 0x800000021478CF00;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = 0x800000021478A360;
    swift_willThrow();

    v21 = v50;

    sub_213FDC6D0(v63, v62);
    v17 = v38;
    v16 = v39;
    v114 = a4;
    v67 = a5;
    goto LABEL_7;
  }

  sub_213FDC6D0(v63, v62);

  sub_213FDC6D0(v63, v62);
  v104 = a8;
  v105 = a10;
  LOBYTE(v102[0]) = v55;
  v114 = 0xD000000000000019;
  v68 = 0xD000000000000019;
  v69 = 0x800000021478CF20;
  v70 = 0xD00000000000001CLL;
  v71 = 0x800000021478A360;

  sub_213FDC9D0(v52, v57);
  v30 = v54(&v104, v102, &v68);
  v33 = v114;
  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v35 = v33;
    v35[1] = 0x800000021478CF20;
    v35[2] = 0xD00000000000001CLL;
    v35[3] = 0x800000021478A360;
    swift_willThrow();

    v21 = v50;
    v17 = v38;

    v27 = v52;
    sub_213FDC6D0(v52, v57);
    v16 = v39;
    v114 = a4;
    v67 = a5;
    v62 = a7;
    v63 = a6;
    goto LABEL_8;
  }

  v114 = a11;
  sub_213FDC6D0(v52, v57);

  sub_213FDC6D0(v52, v57);
  v104 = v114;
  v105 = a12;
  LOBYTE(v102[0]) = v44;
  v68 = 0xD00000000000001ALL;
  v69 = 0x800000021478CF40;
  v70 = 0xD00000000000001CLL;
  v71 = 0x800000021478A360;

  sub_213FDC9D0(v51, v45);
  v34 = v50(&v104, v102, &v68);
  v21 = v50;
  if ((v34 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v37 = 0xD00000000000001ALL;
    v37[1] = 0x800000021478CF40;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v51, v45);
    v17 = v38;
    v16 = v39;
    v114 = a4;
    v67 = a5;
    v27 = a8;
    v62 = a7;
    v63 = a6;
    v57 = a10;
    goto LABEL_8;
  }

  sub_213FDC6D0(v51, v45);

  result = sub_213FDC6D0(v51, v45);
  *a9 = v46;
  *(a9 + 1) = v113[0];
  *(a9 + 4) = *(v113 + 3);
  *(a9 + 8) = v15;
  *(a9 + 16) = v19;
  *(a9 + 24) = v38;
  *(a9 + 32) = v39;
  *(a9 + 40) = v47;
  *(a9 + 41) = *v112;
  *(a9 + 44) = *&v112[3];
  *(a9 + 48) = v64;
  *(a9 + 56) = v66;
  *(a9 + 64) = a4;
  *(a9 + 72) = a5;
  *(a9 + 80) = v65;
  *(a9 + 84) = *&v111[3];
  *(a9 + 81) = *v111;
  *(a9 + 88) = v58;
  *(a9 + 96) = v61;
  *(a9 + 104) = a6;
  *(a9 + 112) = a7;
  *(a9 + 120) = v59;
  *(a9 + 124) = *&v110[3];
  *(a9 + 121) = *v110;
  *(a9 + 128) = v54;
  *(a9 + 136) = v56;
  *(a9 + 144) = a8;
  *(a9 + 152) = a10;
  *(a9 + 160) = v55;
  v36 = *v109;
  *(a9 + 164) = *&v109[3];
  *(a9 + 161) = v36;
  *(a9 + 168) = v50;
  *(a9 + 176) = v49;
  *(a9 + 184) = v114;
  *(a9 + 192) = a12;
  *(a9 + 200) = v44;
  return result;
}

uint64_t sub_2140DACEC()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x6464416C69616D65;
  v4 = 0x746E756F436F7369;
  if (v1 != 4)
  {
    v4 = 0x7073694469726973;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x48636972656E6567;
  if (v1 != 1)
  {
    v5 = 0x6D754E656E6F6870;
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

uint64_t sub_2140DADD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21435DE68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2140DADFC(uint64_t a1)
{
  v2 = sub_2142E5F28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140DAE38(uint64_t a1)
{
  v2 = sub_2142E5F28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CSDMHandle.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905A88, &qword_2146F3F78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v72 - v7;
  v9 = a1[3];
  v170 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142E5F28();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v170);
  }

  v110 = a2;
  LOBYTE(v111) = 0;
  sub_2142E5F7C();
  sub_2146DA1C8();
  v109 = v6;
  v10 = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v111) = 1;
  sub_2142E12FC();
  v11 = v5;
  sub_2146DA1C8();
  v108 = v10;
  v12 = v123;
  v13 = v124;
  LOBYTE(v111) = 2;
  sub_2146DA1C8();
  v106 = v12;
  v14 = v123;
  v107 = v124;
  LOBYTE(v111) = 3;
  sub_2146DA1C8();
  v104 = v123;
  v105 = v14;
  v15 = v124;
  LOBYTE(v111) = 4;
  sub_2146DA1C8();
  v103 = v15;
  v16 = v123;
  v102 = v124;
  v162 = 5;
  sub_2146DA1C8();
  v76 = v11;
  v18 = v13;
  v73 = v16;
  v74 = v163;
  v81 = v164;
  sub_214650EB4(&v123);
  v19 = v123;
  v20 = v124;
  v21 = v125;
  v22 = v126;
  LODWORD(v11) = v127;
  sub_214651000(&v111);
  v95 = v112;
  v99 = *(&v111 + 1);
  v96 = v111;
  v100 = *(&v112 + 1);
  v97 = v113;
  sub_214651034(&v157);
  v94 = v158;
  v91 = v159;
  v92 = v157;
  v90 = v160;
  v93 = v161;
  sub_214651068(v155);
  v88 = v155[1];
  v89 = v155[2];
  v85 = v155[3];
  v86 = v155[0];
  v87 = v156;
  sub_2146511B4(v153);
  v79 = v153[0];
  v82 = v153[2];
  v83 = v153[3];
  v84 = v153[1];
  v80 = v154;
  *&v111 = v106;
  *(&v111 + 1) = v18;
  v77 = v18;
  v78 = v11;
  LOBYTE(v157) = v11;
  v123 = 0xD000000000000018;
  v124 = 0x800000021478CEC0;
  v125 = 0xD00000000000001CLL;
  v101 = 0x800000021478A360;
  v126 = 0x800000021478A360;

  sub_213FDC9D0(v21, v22);
  v98 = v20;
  v75 = v19;
  v23 = v19(&v111, &v157, &v123);
  v24 = v107;
  if (v23)
  {
    sub_213FDC6D0(v21, v22);
    v25 = v101;

    sub_213FDC6D0(v21, v22);
    *&v111 = v105;
    *(&v111 + 1) = v24;
    LOBYTE(v157) = v97;
    v123 = 0xD000000000000016;
    v124 = 0x800000021478CEE0;
    v125 = 0xD00000000000001CLL;
    v126 = v25;

    sub_213FDC9D0(v95, v100);
    v26 = v96(&v111, &v157, &v123);
    v34 = v74;
    if (v26)
    {
      v35 = v95;
      v36 = v100;
      sub_213FDC6D0(v95, v100);
      v37 = v101;

      sub_213FDC6D0(v35, v36);
      *&v111 = v104;
      *(&v111 + 1) = v103;
      LOBYTE(v157) = v93;
      v123 = 0xD000000000000017;
      v124 = 0x800000021478CF00;
      v125 = 0xD00000000000001CLL;
      v126 = v37;

      sub_213FDC9D0(v91, v90);
      v38 = v92(&v111, &v157, &v123);
      if (v38)
      {
        v42 = v90;
        v41 = v91;
        sub_213FDC6D0(v91, v90);
        v43 = v101;

        sub_213FDC6D0(v41, v42);
        *&v111 = v73;
        *(&v111 + 1) = v102;
        LOBYTE(v157) = v87;
        v123 = 0xD000000000000019;
        v124 = 0x800000021478CF20;
        v125 = 0xD00000000000001CLL;
        v126 = v43;

        sub_213FDC9D0(v89, v85);
        v44 = v86(&v111, &v157, &v123);
        if (v44)
        {
          v47 = v89;
          v48 = v85;
          sub_213FDC6D0(v89, v85);
          v49 = v101;

          sub_213FDC6D0(v47, v48);
          v157 = v34;
          v158 = v81;
          LOBYTE(v111) = v80;
          v123 = 0xD00000000000001ALL;
          v124 = 0x800000021478CF40;
          v125 = 0xD00000000000001CLL;
          v126 = v49;

          sub_213FDC9D0(v82, v83);
          v50 = v79(&v157, &v111, &v123);
          if (v50)
          {
            v54 = v82;
            v53 = v83;
            sub_213FDC6D0(v82, v83);

            (*(v109 + 8))(v8, v76);
            v55 = v84;

            sub_213FDC6D0(v54, v53);
            LOBYTE(v111) = v108;
            *(&v111 + 1) = v169[0];
            DWORD1(v111) = *(v169 + 3);
            v56 = v75;
            *(&v111 + 1) = v75;
            *&v112 = v98;
            v57 = v77;
            *(&v112 + 1) = v106;
            *&v113 = v77;
            BYTE8(v113) = v78;
            *(&v113 + 9) = *v168;
            HIDWORD(v113) = *&v168[3];
            *&v114 = v96;
            *(&v114 + 1) = v99;
            *&v115 = v105;
            *(&v115 + 1) = v107;
            LOBYTE(v116) = v97;
            *(&v116 + 1) = *v167;
            DWORD1(v116) = *&v167[3];
            *(&v116 + 1) = v92;
            *&v117 = v94;
            *(&v117 + 1) = v104;
            *&v118 = v103;
            BYTE8(v118) = v93;
            *(&v118 + 9) = *v166;
            HIDWORD(v118) = *&v166[3];
            *&v119 = v86;
            *(&v119 + 1) = v88;
            v58 = v73;
            *&v120 = v73;
            *(&v120 + 1) = v102;
            LOBYTE(v121) = v87;
            DWORD1(v121) = *&v165[3];
            *(&v121 + 1) = *v165;
            v59 = v79;
            *(&v121 + 1) = v79;
            *&v122[0] = v55;
            *(&v122[0] + 1) = v34;
            *&v122[1] = v81;
            LOBYTE(v55) = v80;
            BYTE8(v122[1]) = v80;
            v60 = v111;
            v61 = v112;
            v62 = v114;
            v63 = v110;
            v110[2] = v113;
            v63[3] = v62;
            *v63 = v60;
            v63[1] = v61;
            v64 = v115;
            v65 = v116;
            v66 = v118;
            v63[6] = v117;
            v63[7] = v66;
            v63[4] = v64;
            v63[5] = v65;
            v67 = v119;
            v68 = v120;
            *(v63 + 185) = *(v122 + 9);
            v69 = v122[0];
            v63[10] = v121;
            v63[11] = v69;
            v63[8] = v67;
            v63[9] = v68;
            sub_2142E5FD0(&v111, &v123);
            __swift_destroy_boxed_opaque_existential_1(v170);
            LOBYTE(v123) = v108;
            *(&v123 + 1) = v169[0];
            HIDWORD(v123) = *(v169 + 3);
            v124 = v56;
            v125 = v98;
            v126 = v106;
            v127 = v57;
            v128 = v78;
            *v129 = *v168;
            *&v129[3] = *&v168[3];
            v130 = v96;
            v131 = v99;
            v132 = v105;
            v133 = v107;
            v134 = v97;
            *v135 = *v167;
            *&v135[3] = *&v167[3];
            v136 = v92;
            v137 = v94;
            v138 = v104;
            v139 = v103;
            v140 = v93;
            *v141 = *v166;
            *&v141[3] = *&v166[3];
            v142 = v86;
            v143 = v88;
            v144 = v58;
            v145 = v102;
            v146 = v87;
            *&v147[3] = *&v165[3];
            *v147 = *v165;
            v148 = v59;
            v149 = v84;
            v150 = v74;
            v151 = v81;
            v152 = v55;
            return sub_2142E5ED4(&v123);
          }

          sub_214031C4C();
          swift_allocError();
          *v70 = 0xD00000000000001ALL;
          v70[1] = 0x800000021478CF40;
          v71 = v101;
          v70[2] = 0xD00000000000001CLL;
          v70[3] = v71;
          swift_willThrow();

          (*(v109 + 8))(v8, v76);

          sub_213FDC6D0(v82, v83);
          v33 = v105;
          v29 = v106;
          v22 = v77;
          v100 = v107;
          v32 = v103;
          v31 = v104;
          v89 = v73;
          v30 = v102;
          v28 = v98;
        }

        else
        {
          sub_214031C4C();
          swift_allocError();
          *v51 = 0xD000000000000019;
          v51[1] = 0x800000021478CF20;
          v52 = v101;
          v51[2] = 0xD00000000000001CLL;
          v51[3] = v52;
          swift_willThrow();

          (*(v109 + 8))(v8, v76);

          v30 = v85;
          sub_213FDC6D0(v89, v85);
          v33 = v105;
          v29 = v106;
          v22 = v77;
          v100 = v107;
          v32 = v103;
          v31 = v104;
          v28 = v98;
        }
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v45 = 0xD000000000000017;
        v45[1] = 0x800000021478CF00;
        v46 = v101;
        v45[2] = 0xD00000000000001CLL;
        v45[3] = v46;
        swift_willThrow();

        (*(v109 + 8))(v8, v76);

        v32 = v90;
        v31 = v91;
        sub_213FDC6D0(v91, v90);
        v33 = v105;
        v29 = v106;
        v22 = v77;
        v100 = v107;
        v28 = v98;
        v30 = v85;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v39 = 0xD000000000000016;
      v39[1] = 0x800000021478CEE0;
      v40 = v101;
      v39[2] = 0xD00000000000001CLL;
      v39[3] = v40;
      swift_willThrow();

      (*(v109 + 8))(v8, v76);

      v33 = v95;
      sub_213FDC6D0(v95, v100);
      v29 = v106;
      v22 = v77;
      v30 = v85;
      v32 = v90;
      v31 = v91;
      v28 = v98;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v27 = 0xD000000000000018;
    v27[1] = 0x800000021478CEC0;
    v27[2] = 0xD00000000000001CLL;
    v27[3] = v101;
    swift_willThrow();

    v28 = v98;
    v29 = v21;

    (*(v109 + 8))(v8, v76);

    sub_213FDC6D0(v21, v22);
    v30 = v85;
    v32 = v90;
    v31 = v91;
    v33 = v95;
  }

  __swift_destroy_boxed_opaque_existential_1(v170);
  LOBYTE(v123) = v108;
  *(&v123 + 1) = v169[0];
  HIDWORD(v123) = *(v169 + 3);
  v124 = v75;
  v125 = v28;
  v126 = v29;
  v127 = v22;
  v128 = v78;
  *v129 = *v168;
  *&v129[3] = *&v168[3];
  v130 = v96;
  v131 = v99;
  v132 = v33;
  v133 = v100;
  v134 = v97;
  *&v135[3] = *&v167[3];
  *v135 = *v167;
  v136 = v92;
  v137 = v94;
  v138 = v31;
  v139 = v32;
  v140 = v93;
  *&v141[3] = *&v166[3];
  *v141 = *v166;
  v142 = v86;
  v143 = v88;
  v144 = v89;
  v145 = v30;
  v146 = v87;
  *&v147[3] = *&v165[3];
  *v147 = *v165;
  v148 = v79;
  v149 = v84;
  v150 = v82;
  v151 = v83;
  v152 = v80;
  return sub_2142E5ED4(&v123);
}

uint64_t CSDMHandle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AA0, &qword_2146F3F80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v7 = *v1;
  v8 = *(v1 + 3);
  v9 = *(v1 + 4);
  v10 = *(v1 + 9);
  v27 = *(v1 + 8);
  v28 = v8;
  v11 = *(v1 + 13);
  v22 = *(v1 + 14);
  v23 = v11;
  v12 = *(v1 + 19);
  v24 = *(v1 + 18);
  v13 = *(v1 + 24);
  v25 = *(v1 + 23);
  v26 = v10;
  v20 = v13;
  v21 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E5F28();
  sub_2146DAA28();
  LOBYTE(v30) = v7;
  v32 = 0;
  sub_2142E602C();
  v14 = v29;
  sub_2146DA388();
  if (v14)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v16 = v27;
  v17 = v26;
  if (v9 == 1 || (v30 = v28, v31 = v9, v32 = 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v17 == 1 || (v30 = v16, v31 = v17, v32 = 2, sub_2146DA388(), v19 = v24, v18 = v25, v22 == 1 || (v30 = v23, v31 = v22, v32 = 3, sub_2146DA388(), v21 == 1 || (v30 = v19, v31 = v21, v32 = 4, sub_2146DA388(), v20 == 1)))))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v30 = v18;
    v31 = v20;
    v32 = 5;
    sub_2146DA388();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_2140DC200@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(void, char *, _BYTE *)@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v101 = a8;
  sub_214651940(&v79);
  v16 = a2[8];
  *&v85[147] = a2[9];
  v17 = a2[11];
  *&v85[163] = a2[10];
  *&v85[179] = v17;
  *&v85[188] = *(a2 + 185);
  v18 = a2[4];
  *&v85[83] = a2[5];
  v19 = a2[7];
  *&v85[99] = a2[6];
  *&v85[115] = v19;
  *&v85[131] = v16;
  v20 = *a2;
  *&v85[19] = a2[1];
  v21 = a2[3];
  *&v85[35] = a2[2];
  *&v85[51] = v21;
  *&v85[67] = v18;
  *&v85[3] = v20;
  v22 = a5[8];
  *&v55[151] = a5[9];
  v23 = a5[11];
  *&v55[167] = a5[10];
  *&v55[183] = v23;
  *&v55[192] = *(a5 + 185);
  v24 = a5[4];
  *&v55[87] = a5[5];
  v25 = a5[7];
  *&v55[103] = a5[6];
  *&v55[119] = v25;
  *&v55[135] = v22;
  v26 = *a5;
  *&v55[23] = a5[1];
  v27 = a5[3];
  *&v55[39] = a5[2];
  *&v55[55] = v27;
  v28 = v79;
  v29 = v80;
  v30 = v81;
  v31 = v82;
  *&v55[71] = v24;
  *&v55[7] = v26;
  v84 = a7 & 1;
  v98 = *&v55[160];
  v99 = *&v55[176];
  v100[0] = *&v55[192];
  v94 = *&v55[96];
  v95 = *&v55[112];
  v96 = *&v55[128];
  v97 = *&v55[144];
  v90 = *&v55[32];
  v91 = *&v55[48];
  v92 = *&v55[64];
  v93 = *&v55[80];
  v88 = *v55;
  v89 = *&v55[16];
  v79 = a3;
  v80 = a4;
  v53 = v83;
  v86[0] = v83;
  *v55 = 0xD00000000000001FLL;
  *&v55[8] = 0x800000021478CF60;
  *&v55[16] = 0xD00000000000001CLL;
  *&v55[24] = 0x800000021478A360;

  sub_213FDC9D0(v30, v31);
  v32 = v28(&v79, v86, v55);
  if (v52)
  {
  }

  else
  {
    if (v32)
    {
      sub_213FDC6D0(v30, v31);

      result = sub_213FDC6D0(v30, v31);
      v34 = *&v85[128];
      *(a9 + 149) = *&v85[144];
      v35 = *&v85[176];
      *(a9 + 165) = *&v85[160];
      *(a9 + 181) = v35;
      *(a9 + 193) = *&v85[188];
      v36 = *&v85[64];
      *(a9 + 85) = *&v85[80];
      v37 = *&v85[112];
      *(a9 + 101) = *&v85[96];
      *(a9 + 117) = v37;
      *(a9 + 133) = v34;
      v38 = *v85;
      *(a9 + 21) = *&v85[16];
      v39 = *&v85[48];
      *(a9 + 37) = *&v85[32];
      *(a9 + 53) = v39;
      *(a9 + 69) = v36;
      *(a9 + 5) = v38;
      v40 = v98;
      v41 = v100[0];
      *(a9 + 425) = v99;
      *(a9 + 441) = v41;
      v42 = v94;
      v43 = v96;
      v44 = v97;
      *(a9 + 361) = v95;
      *(a9 + 377) = v43;
      *(a9 + 393) = v44;
      *(a9 + 409) = v40;
      v45 = v90;
      v46 = v92;
      v47 = v93;
      *(a9 + 297) = v91;
      *(a9 + 313) = v46;
      *(a9 + 329) = v47;
      *(a9 + 345) = v42;
      v48 = v89;
      *(a9 + 249) = v88;
      *a9 = a1;
      *(a9 + 4) = BYTE4(a1) & 1;
      *(a9 + 216) = v28;
      *(a9 + 224) = v29;
      *(a9 + 232) = a3;
      *(a9 + 240) = a4;
      *(a9 + 248) = v53;
      v49 = *(v100 + 15);
      *(a9 + 265) = v48;
      *(a9 + 281) = v45;
      *(a9 + 456) = v49;
      *(a9 + 464) = a6;
      *(a9 + 472) = a7 & 1;
      *(a9 + 480) = v101;
      *(a9 + 488) = a10;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v50 = 0xD00000000000001FLL;
    v50[1] = 0x800000021478CF60;
    v50[2] = 0xD00000000000001CLL;
    v50[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v30, v31);
  *&v55[149] = *&v85[144];
  *&v55[165] = *&v85[160];
  *&v55[181] = *&v85[176];
  *&v55[193] = *&v85[188];
  *&v55[85] = *&v85[80];
  *&v55[101] = *&v85[96];
  *&v55[117] = *&v85[112];
  *&v55[133] = *&v85[128];
  *&v55[21] = *&v85[16];
  *&v55[37] = *&v85[32];
  *&v55[53] = *&v85[48];
  *&v55[69] = *&v85[64];
  *&v55[5] = *v85;
  v72 = v99;
  *v73 = v100[0];
  v68 = v95;
  v69 = v96;
  v70 = v97;
  v71 = v98;
  v64 = v91;
  v65 = v92;
  v66 = v93;
  v67 = v94;
  v62 = v89;
  v63 = v90;
  *v55 = a1;
  v55[4] = BYTE4(a1) & 1;
  v56 = v28;
  v57 = v29;
  v58 = v30;
  v59 = v31;
  v60 = v53;
  v61 = v88;
  *&v73[15] = *(v100 + 15);
  v74 = a6;
  v75 = a7 & 1;
  *v76 = v87[0];
  *&v76[3] = *(v87 + 3);
  v77 = v101;
  v78 = a10;
  return sub_2142E6080(v55);
}

unint64_t sub_2140DC76C()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0xD000000000000012;
  v4 = 0xD00000000000001FLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C646E6168;
  if (v1 != 1)
  {
    v5 = 0x656D616E6B63696ELL;
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

uint64_t sub_2140DC82C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21435E084(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2140DC854(uint64_t a1)
{
  v2 = sub_2142E60D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140DC890(uint64_t a1)
{
  v2 = sub_2142E60D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140DC8CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AB0, &qword_2146F3F88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  v9 = a1[3];
  v143 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142E60D4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v143);
  }

  v10 = v6;
  v46 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v47[0]) = 0;
  sub_2142E6128();
  sub_2146DA1C8();
  v45 = *v48;
  v11 = v48[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AD0, &unk_214759900);
  v127 = 1;
  v12 = sub_2142E61A4();
  sub_2146DA1C8();
  v44 = v12;
  v43 = v11;
  v125 = v138;
  *v126 = *v139;
  *&v126[9] = *&v139[9];
  v121 = v134;
  v122 = v135;
  v124 = v137;
  v123 = v136;
  v117 = v130;
  v118 = v131;
  v120 = v133;
  v119 = v132;
  v116 = v129;
  v115 = v128;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v47[0]) = 2;
  v15 = sub_2142E12FC();
  sub_2146DA1C8();
  v41 = v15;
  v42 = v14;
  v16 = *v48;
  v17 = *&v48[8];
  v102 = 3;
  sub_2146DA1C8();
  v100 = v113;
  *v101 = v114[0];
  *&v101[9] = *(v114 + 9);
  v96 = v109;
  v97 = v110;
  v99 = v112;
  v98 = v111;
  v92 = v105;
  v93 = v106;
  v95 = v108;
  v94 = v107;
  v91 = v104;
  v90 = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
  LOBYTE(v47[0]) = 4;
  sub_2142E18D0();
  sub_2146DA1C8();
  v40 = v16;
  v44 = v17;
  v18 = *v48;
  v19 = v48[8];
  v87 = 5;
  sub_2146DA1C8();
  v35 = v5;
  v37 = v18;
  v39 = v88;
  v41 = v89;
  LODWORD(v42) = v19;
  sub_213FB2E54(&v115, v48, &qword_27C905AD0, &unk_214759900);
  sub_213FB2E54(&v90, v48, &qword_27C905AD0, &unk_214759900);
  sub_214651940(v48);
  *&v86[147] = v124;
  *&v86[163] = v125;
  *&v86[179] = *v126;
  *&v86[188] = *&v126[9];
  *&v86[83] = v120;
  *&v86[99] = v121;
  *&v86[115] = v122;
  *&v86[131] = v123;
  *&v86[19] = v116;
  *&v86[35] = v117;
  *&v86[51] = v118;
  *&v86[67] = v119;
  *&v86[3] = v115;
  *(&v85[9] + 7) = v99;
  *(&v85[10] + 7) = v100;
  *(&v85[11] + 7) = *v101;
  v85[12] = *&v101[9];
  *(&v85[5] + 7) = v95;
  *(&v85[6] + 7) = v96;
  *(&v85[7] + 7) = v97;
  *(&v85[8] + 7) = v98;
  *(&v85[1] + 7) = v91;
  *(&v85[2] + 7) = v92;
  *(&v85[3] + 7) = v93;
  *(&v85[4] + 7) = v94;
  v20 = *v48;
  v21 = *&v48[8];
  v22 = *&v48[16];
  v23 = *&v48[24];
  *(v85 + 7) = v90;
  v34 = v43;
  v84[0] = v40;
  v84[1] = v44;
  v43 = v48[32];
  LOBYTE(v47[0]) = v48[32];
  *v48 = 0xD00000000000001FLL;
  *&v48[8] = 0x800000021478CF60;
  *&v48[16] = 0xD00000000000001CLL;
  *&v48[24] = 0x800000021478A360;

  v38 = v22;
  sub_213FDC9D0(v22, v23);
  v36 = v20;
  v24 = v20(v84, v47, v48);
  if (v24)
  {
    sub_213FDC6D0(v38, v23);

    sub_213FB2DF4(&v115, &qword_27C905AD0, &unk_214759900);
    sub_213FB2DF4(&v90, &qword_27C905AD0, &unk_214759900);
    (*(v10 + 8))(v8, v35);

    sub_213FDC6D0(v38, v23);
    *(&v47[18] + 5) = *&v86[144];
    *(&v47[20] + 5) = *&v86[160];
    *(&v47[22] + 5) = *&v86[176];
    *(&v47[24] + 1) = *&v86[188];
    *(&v47[10] + 5) = *&v86[80];
    *(&v47[12] + 5) = *&v86[96];
    *(&v47[14] + 5) = *&v86[112];
    *(&v47[16] + 5) = *&v86[128];
    *(&v47[2] + 5) = *&v86[16];
    *(&v47[4] + 5) = *&v86[32];
    *(&v47[6] + 5) = *&v86[48];
    *(&v47[8] + 5) = *&v86[64];
    *(v47 + 5) = *v86;
    *(&v47[49] + 1) = v85[9];
    *(&v47[51] + 1) = v85[10];
    *(&v47[53] + 1) = v85[11];
    *(&v47[55] + 1) = v85[12];
    *(&v47[41] + 1) = v85[5];
    *(&v47[43] + 1) = v85[6];
    *(&v47[45] + 1) = v85[7];
    *(&v47[47] + 1) = v85[8];
    *(&v47[33] + 1) = v85[1];
    *(&v47[35] + 1) = v85[2];
    *(&v47[37] + 1) = v85[3];
    *(&v47[39] + 1) = v85[4];
    v25 = v45;
    LODWORD(v47[0]) = v45;
    v26 = v34;
    BYTE4(v47[0]) = v34;
    v28 = v36;
    v27 = v37;
    v47[27] = v36;
    v47[28] = v21;
    v29 = v40;
    v30 = v44;
    v47[29] = v40;
    v47[30] = v44;
    LOBYTE(v47[31]) = v43;
    *(&v47[31] + 1) = v85[0];
    v47[58] = v37;
    LOBYTE(v47[59]) = v42;
    v47[60] = v39;
    v47[61] = v41;
    memcpy(v46, v47, 0x1F0uLL);
    sub_2142E627C(v47, v48);
    __swift_destroy_boxed_opaque_existential_1(v143);
    v56 = *&v86[144];
    v57 = *&v86[160];
    *v58 = *&v86[176];
    *&v58[12] = *&v86[188];
    v52 = *&v86[80];
    v53 = *&v86[96];
    v54 = *&v86[112];
    v55 = *&v86[128];
    *&v48[21] = *&v86[16];
    v49 = *&v86[32];
    v50 = *&v86[48];
    v51 = *&v86[64];
    *&v48[5] = *v86;
    v74 = v85[9];
    v75 = v85[10];
    v76 = v85[11];
    v77 = v85[12];
    v70 = v85[5];
    v71 = v85[6];
    v72 = v85[7];
    v73 = v85[8];
    v66 = v85[1];
    v67 = v85[2];
    v68 = v85[3];
    v69 = v85[4];
    *v48 = v25;
    v48[4] = v26;
    *v59 = v142[0];
    *&v59[3] = *(v142 + 3);
    v60 = v28;
    v61 = v21;
    v62 = v29;
    v63 = v30;
    v64 = v43;
    v65 = v85[0];
    *v78 = *v141;
    *&v78[3] = *&v141[3];
    v79 = v27;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD00000000000001FLL;
    v31[1] = 0x800000021478CF60;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(&v115, &qword_27C905AD0, &unk_214759900);
    sub_213FB2DF4(&v90, &qword_27C905AD0, &unk_214759900);
    (*(v10 + 8))(v8, v35);

    v32 = v38;
    sub_213FDC6D0(v38, v23);
    __swift_destroy_boxed_opaque_existential_1(v143);
    v56 = *&v86[144];
    v57 = *&v86[160];
    *v58 = *&v86[176];
    *&v58[12] = *&v86[188];
    v52 = *&v86[80];
    v53 = *&v86[96];
    v54 = *&v86[112];
    v55 = *&v86[128];
    *&v48[21] = *&v86[16];
    v49 = *&v86[32];
    v50 = *&v86[48];
    v51 = *&v86[64];
    *&v48[5] = *v86;
    v74 = v85[9];
    v75 = v85[10];
    v76 = v85[11];
    v77 = v85[12];
    v70 = v85[5];
    v71 = v85[6];
    v72 = v85[7];
    v73 = v85[8];
    v66 = v85[1];
    v67 = v85[2];
    v68 = v85[3];
    v69 = v85[4];
    *v48 = v45;
    v48[4] = v34;
    *v59 = v142[0];
    *&v59[3] = *(v142 + 3);
    v60 = v36;
    v61 = v21;
    v62 = v32;
    v63 = v23;
    v64 = v43;
    v65 = v85[0];
    *v78 = *v141;
    *&v78[3] = *&v141[3];
    v79 = v37;
  }

  v80 = v42;
  *v81 = *v140;
  *&v81[3] = *&v140[3];
  v82 = v39;
  v83 = v41;
  return sub_2142E6080(v48);
}

uint64_t sub_2140DD4D8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AE8, &qword_2146F3FA0);
  v91 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  v6 = *v1;
  v31 = *(v1 + 4);
  v32 = v6;
  v7 = *(v1 + 42);
  v76 = *(v1 + 38);
  v77 = v7;
  v78[0] = *(v1 + 46);
  *(v78 + 9) = *(v1 + 193);
  v8 = *(v1 + 22);
  v9 = *(v1 + 30);
  v73 = *(v1 + 26);
  v74 = v9;
  v75 = *(v1 + 34);
  v10 = *(v1 + 6);
  v11 = *(v1 + 14);
  v69 = *(v1 + 10);
  v70 = v11;
  v71 = *(v1 + 18);
  v72 = v8;
  v67 = *(v1 + 2);
  v68 = v10;
  v12 = *(v1 + 30);
  *&v30 = *(v1 + 29);
  *(&v30 + 1) = v12;
  v13 = *(v1 + 26);
  v14 = *(v1 + 27);
  v15 = *(v1 + 24);
  v88 = *(v1 + 25);
  v89 = v13;
  v90[0] = v14;
  *(v90 + 9) = *(v1 + 441);
  v16 = *(v1 + 23);
  v85 = *(v1 + 22);
  v86 = v16;
  v87 = v15;
  v17 = *(v1 + 19);
  v81 = *(v1 + 18);
  v82 = v17;
  v18 = *(v1 + 21);
  v83 = *(v1 + 20);
  v84 = v18;
  v19 = *(v1 + 17);
  v79 = *(v1 + 16);
  v80 = v19;
  v29 = *(v1 + 58);
  v28 = *(v1 + 472);
  v20 = *(v1 + 60);
  v26 = *(v1 + 61);
  v27 = v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E60D4();
  sub_2146DAA28();
  LODWORD(v55) = v32;
  BYTE4(v55) = v31;
  LOBYTE(v52[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  sub_2142E62D8();
  v21 = v33;
  sub_2146DA388();
  if (v21)
  {
    return (*(v91 + 8))(v5, v3);
  }

  v64 = v76;
  v65 = v77;
  v66[0] = v78[0];
  *(v66 + 9) = *(v78 + 9);
  v61 = v73;
  v62 = v74;
  v63 = v75;
  v57 = v69;
  v58 = v70;
  v59 = v71;
  v60 = v72;
  v55 = v67;
  v56 = v68;
  v54 = 1;
  sub_213FB2E54(&v67, v52, &qword_27C905AD0, &unk_214759900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AD0, &unk_214759900);
  sub_2142E6354();
  sub_2146DA388();
  v52[9] = v64;
  v52[10] = v65;
  *v53 = v66[0];
  *&v53[9] = *(v66 + 9);
  v52[6] = v61;
  v52[7] = v62;
  v52[8] = v63;
  v52[2] = v57;
  v52[3] = v58;
  v52[4] = v59;
  v52[5] = v60;
  v52[0] = v55;
  v52[1] = v56;
  sub_213FB2DF4(v52, &qword_27C905AD0, &unk_214759900);
  if (*(&v30 + 1) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v40 = v30;
    LOBYTE(v37[0]) = 2;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v33 = v23;
    v49 = v88;
    v50 = v89;
    v51[0] = v90[0];
    *(v51 + 9) = *(v90 + 9);
    v46 = v85;
    v47 = v86;
    v48 = v87;
    v42 = v81;
    v43 = v82;
    v44 = v83;
    v45 = v84;
    v40 = v79;
    v41 = v80;
    v39 = 3;
    sub_213FB2E54(&v79, v37, &qword_27C905AD0, &unk_214759900);
    sub_2146DA388();
    v37[9] = v49;
    v37[10] = v50;
    *v38 = v51[0];
    *&v38[9] = *(v51 + 9);
    v37[7] = v47;
    v37[8] = v48;
    v37[2] = v42;
    v37[3] = v43;
    v37[5] = v45;
    v37[6] = v46;
    v37[4] = v44;
    v37[0] = v40;
    v37[1] = v41;
    sub_213FB2DF4(v37, &qword_27C905AD0, &unk_214759900);
    v34 = v29;
    LOBYTE(v35) = v28;
    v36 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
    sub_2142E2204();
    sub_2146DA388();
    v24 = v91;
    v34 = v27;
    v35 = v26;
    v36 = 5;
    sub_2146DA388();
    return (*(v24 + 8))(v5, v3);
  }

  return result;
}

uint64_t sub_2140DDB3C@<X0>(uint64_t (*a1)(void, void, void)@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t (*a5)(void, void, void)@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v68 = a6;
  sub_214651BCC(&v46);
  v10 = v46;
  v11 = v47;
  v13 = v48;
  v12 = v49;
  v14 = v50;
  sub_214651C00(&v60);
  v44 = v61;
  v37 = v60;
  v38 = v62;
  v40 = v63;
  v41 = v14;
  v42 = v64;
  v39 = a4 & 1;
  v35 = a1;
  v60 = a1;
  v61 = a2;
  v65[0] = v14;
  v15 = v11;
  v46 = 0xD000000000000025;
  v47 = 0x800000021478CF80;
  v48 = 0xD00000000000001CLL;
  v49 = 0x800000021478A360;

  v16 = v13;
  v17 = v13;
  v18 = v12;
  sub_213FDC9D0(v17, v12);
  v19 = v10(&v60, v65, &v46);
  if (v43)
  {

LABEL_6:

    v24 = v37;
    v22 = v38;
    v23 = v40;
    v27 = v16;

    v28 = v16;
    v29 = v18;
    sub_213FDC6D0(v28, v18);
    v20 = v42;
    v21 = v44;
LABEL_7:
    v46 = v10;
    v47 = v15;
    v48 = v27;
    v49 = v29;
    v50 = v41;
    *v51 = v67[0];
    *&v51[3] = *(v67 + 3);
    v52 = a3;
    v53 = v39;
    *v54 = v66[0];
    *&v54[3] = *(v66 + 3);
    v55 = v24;
    v56 = v21;
    v57 = v22;
    v58 = v23;
    v59 = v20;
    return sub_2142E642C(&v46);
  }

  v33 = a2;
  if ((v19 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD000000000000025;
    v26[1] = 0x800000021478CF80;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v16, v12);

  sub_213FDC6D0(v16, v12);
  v60 = a5;
  v61 = v68;
  v20 = v42;
  v65[0] = v42;
  v46 = 0xD00000000000002CLL;
  v47 = 0x800000021478CFB0;
  v48 = 0xD00000000000001CLL;
  v49 = 0x800000021478A360;
  v21 = v44;

  v22 = v38;
  v23 = v40;
  sub_213FDC9D0(v38, v40);
  v24 = v37;
  v25 = v37(&v60, v65, &v46);
  v29 = v33;
  if ((v25 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD00000000000002CLL;
    v32[1] = 0x800000021478CFB0;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v38, v40);
    v27 = v35;
    goto LABEL_7;
  }

  sub_213FDC6D0(v38, v40);

  result = sub_213FDC6D0(v38, v40);
  *a7 = v10;
  *(a7 + 8) = v15;
  *(a7 + 16) = v35;
  *(a7 + 24) = v33;
  *(a7 + 32) = v41;
  *(a7 + 40) = a3;
  *(a7 + 48) = v39;
  *(a7 + 56) = v37;
  *(a7 + 64) = v44;
  v31 = v68;
  *(a7 + 72) = a5;
  *(a7 + 80) = v31;
  *(a7 + 88) = v42;
  return result;
}

unint64_t sub_2140DDF30()
{
  v1 = 0x65736162656D6974;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x61737265766E6F63;
  }
}

uint64_t sub_2140DDF9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21435E284(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2140DDFC4(uint64_t a1)
{
  v2 = sub_2142E6480();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140DE000(uint64_t a1)
{
  v2 = sub_2142E6480();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140DE03C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905B08, &qword_2146F3FA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E6480();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v85 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v60) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v9 = v67;
  v59 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v60) = 1;
  sub_2142E35EC();
  sub_2146DA1C8();
  v58 = v9;
  v10 = v66;
  v57 = v67;
  v80 = 2;
  sub_2146DA1C8();
  v48 = v10;
  v44 = v81;
  v49 = v82;
  sub_214651BCC(&v66);
  v12 = v67;
  v56 = v66;
  v13 = v69;
  v55 = v68;
  v14 = v70;
  sub_214651C00(&v60);
  v53 = *(&v60 + 1);
  v50 = v60;
  v52 = *(&v61 + 1);
  v54 = v61;
  v51 = v62;
  *&v60 = v59;
  *(&v60 + 1) = v58;
  v46 = v14;
  LOBYTE(v65[0]) = v14;
  v66 = 0xD000000000000025;
  v67 = 0x800000021478CF80;
  v68 = 0xD00000000000001CLL;
  v69 = 0x800000021478A360;

  v45 = v13;
  sub_213FDC9D0(v55, v13);
  v47 = v12;
  v15 = v56(&v60, v65, &v66);
  v42 = 0x800000021478CF80;
  v43 = 0x800000021478A360;
  if (v15)
  {
    v16 = v55;
    v17 = v45;
    sub_213FDC6D0(v55, v45);
    v18 = v43;

    v19 = v47;

    sub_213FDC6D0(v16, v17);
    v65[0] = v44;
    v65[1] = v49;
    LOBYTE(v60) = v51;
    v66 = 0xD00000000000002CLL;
    v67 = 0x800000021478CFB0;
    v68 = 0xD00000000000001CLL;
    v69 = v18;

    sub_213FDC9D0(v54, v52);
    v20 = v50(v65, &v60, &v66);
    v24 = v57;
    if (v20)
    {
      v29 = v52;
      sub_213FDC6D0(v54, v52);

      (*(v6 + 8))(v8, v5);
      v30 = v53;

      sub_213FDC6D0(v54, v29);
      v31 = v19;
      v32 = v56;
      *&v60 = v56;
      *(&v60 + 1) = v19;
      v33 = v59;
      *&v61 = v59;
      v34 = v58;
      *(&v61 + 1) = v58;
      v35 = v46;
      LOBYTE(v62) = v46;
      *(&v62 + 1) = v48;
      LOBYTE(v63) = v24;
      *(&v63 + 1) = v50;
      *v64 = v30;
      *&v64[8] = v44;
      *&v64[16] = v49;
      v64[24] = v51;
      v36 = v63;
      v37 = v85;
      v85[2] = v62;
      v37[3] = v36;
      v37[4] = *v64;
      *(v37 + 73) = *&v64[9];
      v38 = v61;
      *v37 = v60;
      v37[1] = v38;
      sub_2142E64D4(&v60, &v66);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v66 = v32;
      v67 = v31;
      v68 = v33;
      v69 = v34;
      v70 = v35;
      *v71 = *v84;
      *&v71[3] = *&v84[3];
      v72 = v48;
      v73 = v24;
      *v74 = *v83;
      *&v74[3] = *&v83[3];
      v75 = v50;
      v76 = v30;
      v77 = v44;
      v28 = &v75;
      goto LABEL_8;
    }

    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD00000000000002CLL;
    v39[1] = 0x800000021478CFB0;
    v40 = v43;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = v40;
    swift_willThrow();

    v25 = v58;
    (*(v6 + 8))(v8, v5);

    sub_213FDC6D0(v54, v52);
    v26 = v59;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v21 = v42;
    *v22 = 0xD000000000000025;
    v22[1] = v21;
    v23 = v43;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = v23;
    swift_willThrow();

    v24 = v57;
    v19 = v47;
    v25 = v45;
    (*(v6 + 8))(v8, v5);

    v26 = v55;
    sub_213FDC6D0(v55, v25);
  }

  v27 = v48;
  __swift_destroy_boxed_opaque_existential_1(a1);
  v66 = v56;
  v67 = v19;
  v68 = v26;
  v69 = v25;
  v70 = v46;
  *v71 = *v84;
  *&v71[3] = *&v84[3];
  v72 = v27;
  v73 = v24;
  *v74 = *v83;
  *&v74[3] = *&v83[3];
  v75 = v50;
  v76 = v53;
  v77 = v54;
  v28 = &v78;
LABEL_8:
  v78 = *(v28 - 32);
  v79 = v51;
  return sub_2142E642C(&v66);
}

uint64_t sub_2140DE8F8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905B18, &qword_2146F3FB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 40);
  v19 = *(v1 + 48);
  v10 = *(v1 + 80);
  v14 = *(v1 + 72);
  v15 = v9;
  v13 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E6480();
  sub_2146DAA28();
  if (v8 != 1)
  {
    v17 = v7;
    v18 = v8;
    v20 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    v11 = v16;
    sub_2146DA388();
    if (v11)
    {
      return (*(v4 + 8))(v6, v3);
    }

    v17 = v15;
    LOBYTE(v18) = v19;
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
    sub_2142E37F4();
    sub_2146DA388();
    if (v13 != 1)
    {
      v17 = v14;
      v18 = v13;
      v20 = 2;
      sub_2146DA388();
      return (*(v4 + 8))(v6, v3);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2140DEB9C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char a12, int a13, int a14, char a15, int a16, char a17, __int16 a18, char a19, char a20, char a21, char *a22, char a23, char a24, uint64_t a25, unint64_t a26, char a27, char a28, int a29, int a30, char a31, int a32, char a33, __int16 a34, char a35, char a36, int a37, int a38, char a39, __int16 a40, char a41, char *a42, uint64_t a43, uint64_t a44, char a45)
{
  v81 = *a22;
  v82 = *a42;
  v166 = a6;
  sub_213FDCA18(a5, a6);
  sub_213FDCA18(a25, a26);
  sub_214651EB4(&v83);
  v48 = a4[8];
  *(&v151[9] + 7) = a4[9];
  v49 = a4[11];
  *(&v151[10] + 7) = a4[10];
  *(&v151[11] + 7) = v49;
  v151[12] = *(a4 + 185);
  v50 = a4[4];
  *(&v151[5] + 7) = a4[5];
  v51 = a4[7];
  *(&v151[6] + 7) = a4[6];
  *(&v151[7] + 7) = v51;
  *(&v151[8] + 7) = v48;
  v52 = *a4;
  *(&v151[1] + 7) = a4[1];
  v53 = a4[3];
  *(&v151[2] + 7) = a4[2];
  *(&v151[3] + 7) = v53;
  *(&v151[4] + 7) = v50;
  v54 = v83;
  v55 = v84;
  v56 = *v85;
  *(v151 + 7) = v52;
  v150 = a15 & 1;
  v149 = a17 & 1;
  v148 = a31 & 1;
  v147 = a33 & 1;
  v146 = a39 & 1;
  v145[0] = a43;
  v145[1] = a44;
  v75 = v85[16];
  v152[0] = v85[16];
  v83 = 0xD000000000000032;
  v84 = 0x800000021478CFE0;
  *v85 = 0xD00000000000001CLL;
  *&v85[8] = 0x800000021478A360;

  sub_213FDC9D0(v56, *(&v56 + 1));
  v72 = v55;
  v57 = v79;
  v80 = v54;
  v58 = v54(v145, v152, &v83);
  if (v57)
  {

    v59 = a25;
    v60 = a26;
    sub_213FDC6BC(a25, a26);
    v61 = a5;
    v62 = a5;
  }

  else
  {
    v59 = a25;
    if (v58)
    {
      sub_213FDC6D0(v56, *(&v56 + 1));
      sub_213FDC6BC(a25, a26);
      v63 = v166;
      sub_213FDC6BC(a5, v166);

      result = sub_213FDC6D0(v56, *(&v56 + 1));
      *a9 = a1;
      *(a9 + 4) = BYTE4(a1) & 1;
      *(a9 + 8) = a2;
      *(a9 + 16) = a3 & 1;
      *(a9 + 232) = a5;
      *(a9 + 240) = v63;
      *(a9 + 248) = a7;
      *(a9 + 249) = a8;
      *(a9 + 250) = a10;
      *(a9 + 251) = a11;
      *(a9 + 252) = a12;
      v65 = v151[8];
      *(a9 + 161) = v151[9];
      v66 = v151[11];
      *(a9 + 177) = v151[10];
      *(a9 + 193) = v66;
      *(a9 + 209) = v151[12];
      v67 = v151[4];
      *(a9 + 97) = v151[5];
      v68 = v151[7];
      *(a9 + 113) = v151[6];
      *(a9 + 129) = v68;
      *(a9 + 145) = v65;
      v69 = v151[0];
      *(a9 + 33) = v151[1];
      v70 = v151[3];
      *(a9 + 49) = v151[2];
      *(a9 + 65) = v70;
      *(a9 + 81) = v67;
      *(a9 + 17) = v69;
      *(a9 + 256) = a14;
      *(a9 + 260) = a15 & 1;
      *(a9 + 264) = a16;
      *(a9 + 268) = a17 & 1;
      *(a9 + 269) = a19;
      *(a9 + 270) = a20;
      *(a9 + 271) = a21;
      *(a9 + 272) = v81;
      *(a9 + 273) = a23;
      *(a9 + 274) = a24;
      *(a9 + 280) = a25;
      *(a9 + 288) = a26;
      *(a9 + 296) = a27;
      *(a9 + 297) = a28;
      *(a9 + 300) = a30;
      *(a9 + 304) = a31 & 1;
      *(a9 + 308) = a32;
      *(a9 + 312) = a33 & 1;
      *(a9 + 313) = a35;
      *(a9 + 314) = a36;
      *(a9 + 316) = a38;
      *(a9 + 320) = a39 & 1;
      *(a9 + 321) = a41;
      *(a9 + 322) = v82;
      *(a9 + 328) = v80;
      *(a9 + 336) = v55;
      *(a9 + 344) = a43;
      *(a9 + 352) = a44;
      *(a9 + 360) = v75;
      *(a9 + 361) = a45;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v71 = 0xD000000000000032;
    v71[1] = 0x800000021478CFE0;
    v71[2] = 0xD00000000000001CLL;
    v71[3] = 0x800000021478A360;
    swift_willThrow();

    v60 = a26;
    sub_213FDC6BC(a25, a26);
    v62 = a5;
    v61 = a5;
  }

  sub_213FDC6BC(v62, v166);

  sub_213FDC6D0(v56, *(&v56 + 1));
  LODWORD(v83) = a1;
  BYTE4(v83) = BYTE4(a1) & 1;
  v84 = a2;
  v85[0] = a3 & 1;
  v99 = v61;
  v100 = v166;
  v101 = a7;
  v102 = a8;
  v103 = a10;
  v104 = a11;
  v105 = a12;
  v108 = a14;
  v110 = v159;
  *(&v83 + 5) = v164;
  HIBYTE(v83) = v165;
  *v98 = *v163;
  v106 = v161;
  v94 = v151[9];
  v95 = v151[10];
  v96 = v151[11];
  v97 = v151[12];
  v92 = v151[7];
  v93 = v151[8];
  *&v98[3] = *&v163[3];
  v107 = v162;
  v90 = v151[5];
  v91 = v151[6];
  v86 = v151[1];
  v87 = v151[2];
  v88 = v151[3];
  v89 = v151[4];
  *&v85[1] = v151[0];
  v109 = a15 & 1;
  v111 = v160;
  v112 = a16;
  v113 = a17 & 1;
  v114 = a19;
  v115 = a20;
  v116 = a21;
  v117 = v81;
  v118 = a23;
  v119 = a24;
  v120 = v157;
  v121 = v158;
  v122 = v59;
  v123 = v60;
  v124 = a27;
  v125 = a28;
  v126 = a30;
  v127 = a31 & 1;
  v128 = v155;
  v129 = v156;
  v130 = a32;
  v131 = a33 & 1;
  v132 = a35;
  v133 = a36;
  v134 = a38;
  v135 = a39 & 1;
  v136 = a41;
  v137 = v82;
  v138 = v153;
  v139 = v154;
  v140 = v54;
  v141 = v72;
  v142 = v56;
  v143 = v75;
  v144 = a45;
  return sub_2142E6530(&v83);
}

unint64_t sub_2140DF3B4(char a1)
{
  result = 0x6E6F6973726576;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0x656C646E6168;
      break;
    case 3:
      result = 0x61746144637661;
      break;
    case 4:
    case 7:
      result = 0xD000000000000012;
      break;
    case 5:
    case 9:
      result = 0xD000000000000018;
      break;
    case 6:
    case 19:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0x77746867694C7369;
      break;
    case 10:
      result = 0x736E6F6974706FLL;
      break;
    case 11:
    case 22:
      result = 0xD000000000000021;
      break;
    case 12:
    case 26:
      result = 0xD000000000000010;
      break;
    case 13:
    case 25:
      result = 0xD00000000000001ALL;
      break;
    case 14:
      result = 0x65646F4D7661;
      break;
    case 15:
      result = 0xD000000000000014;
      break;
    case 16:
      result = 0xD000000000000020;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0xD000000000000017;
      break;
    case 20:
      result = 0xD000000000000014;
      break;
    case 21:
      v3 = 10;
      goto LABEL_15;
    case 23:
      result = 0xD00000000000001CLL;
      break;
    case 24:
      v3 = 11;
LABEL_15:
      result = v3 | 0xD000000000000014;
      break;
    case 27:
    case 28:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2140DF69C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21435E3AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2140DF6D0(uint64_t a1)
{
  v2 = sub_2142E6584();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140DF70C(uint64_t a1)
{
  v2 = sub_2142E6584();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140DF748@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905B20, &qword_2146F3FB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - v7;
  v9 = a1[3];
  v195 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142E6584();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v195);
  }

  v82 = a2;
  v83 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v84[0]) = 0;
  v10 = sub_2142E6128();
  sub_2146DA1C8();
  v11 = v85;
  v12 = BYTE4(v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
  LOBYTE(v84[0]) = 1;
  sub_2142E18D0();
  sub_2146DA1C8();
  v81 = v10;
  v80 = v11;
  v13 = v85;
  v14 = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AD0, &unk_214759900);
  v169 = 2;
  sub_2142E61A4();
  sub_2146DA1C8();
  v78 = v13;
  LODWORD(v79) = v14;
  v167 = v180;
  v168[0] = *v181;
  *(v168 + 9) = *&v181[9];
  v163 = v176;
  v164 = v177;
  v165 = v178;
  v166 = v179;
  v159 = v172;
  v160 = v173;
  v161 = v174;
  v162 = v175;
  v157 = v170;
  v158 = v171;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v84[0]) = 3;
  v17 = sub_2142E1278();
  sub_2146DA1C8();
  v74 = v17;
  v75 = v16;
  v76 = v85;
  v77 = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v84[0]) = 4;
  sub_2142E1378();
  sub_2146DA1C8();
  v73 = v12;
  v18 = v85;
  LOBYTE(v84[0]) = 5;
  sub_2146DA1C8();
  v72 = v85;
  LOBYTE(v84[0]) = 6;
  sub_2146DA1C8();
  v71 = v85;
  LOBYTE(v84[0]) = 7;
  sub_2146DA1C8();
  v69 = v85;
  v70 = v18;
  LOBYTE(v84[0]) = 8;
  sub_2146DA1C8();
  v68 = v85;
  LOBYTE(v84[0]) = 9;
  v19 = v5;
  sub_2146DA1C8();
  v20 = v85;
  v67 = BYTE4(v85);
  LOBYTE(v84[0]) = 10;
  sub_2146DA1C8();
  v65 = v85;
  v66 = BYTE4(v85);
  LOBYTE(v84[0]) = 11;
  sub_2146DA1C8();
  v64 = v85;
  LOBYTE(v84[0]) = 12;
  sub_2146DA1C8();
  v63 = v85;
  LOBYTE(v84[0]) = 13;
  sub_2146DA1C8();
  v62 = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905B30, &qword_2146F3FC0);
  LOBYTE(v84[0]) = 14;
  sub_2142E65D8();
  sub_2146DA1C8();
  v61 = v85;
  LOBYTE(v84[0]) = 15;
  sub_2146DA1C8();
  v60 = v85;
  LOBYTE(v84[0]) = 16;
  sub_2146DA1C8();
  v59 = v85;
  LOBYTE(v84[0]) = 17;
  sub_2146DA1C8();
  v74 = v85;
  v75 = v86;
  LOBYTE(v84[0]) = 18;
  sub_2146DA1C8();
  v58 = v85;
  LOBYTE(v84[0]) = 19;
  sub_2146DA1C8();
  v57 = v85;
  LOBYTE(v84[0]) = 20;
  sub_2146DA1C8();
  v55 = v85;
  v56 = BYTE4(v85);
  LOBYTE(v84[0]) = 21;
  sub_2146DA1C8();
  v53 = v85;
  v54 = BYTE4(v85);
  LOBYTE(v84[0]) = 22;
  sub_2146DA1C8();
  v52 = v85;
  LOBYTE(v84[0]) = 23;
  sub_2146DA1C8();
  v51 = v85;
  LOBYTE(v84[0]) = 24;
  sub_2146DA1C8();
  LODWORD(v81) = v85;
  v21 = BYTE4(v85);
  LOBYTE(v84[0]) = 25;
  sub_2146DA1C8();
  v50 = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905B48, &qword_2146F3FC8);
  LOBYTE(v84[0]) = 26;
  sub_2142E66B0();
  sub_2146DA1C8();
  v49 = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v84[0]) = 27;
  sub_2142E12FC();
  sub_2146DA1C8();
  v47 = v85;
  v48 = v86;
  v155 = 28;
  sub_2146DA1C8();
  v45 = v156;
  sub_213FB2E54(&v157, &v85, &qword_27C905AD0, &unk_214759900);
  sub_213FDCA18(v76, v77);
  sub_213FDCA18(v74, v75);
  sub_214651EB4(&v85);
  *(&v154[9] + 7) = v166;
  *(&v154[10] + 7) = v167;
  *(&v154[11] + 7) = v168[0];
  v154[12] = *(v168 + 9);
  *(&v154[5] + 7) = v162;
  *(&v154[6] + 7) = v163;
  *(&v154[7] + 7) = v164;
  *(&v154[8] + 7) = v165;
  *(&v154[1] + 7) = v158;
  *(&v154[2] + 7) = v159;
  *(&v154[3] + 7) = v160;
  *(&v154[4] + 7) = v161;
  v46 = v85;
  v22 = v86;
  v23 = *v87;
  v24 = *&v87[8];
  *(v154 + 7) = v157;
  v153 = v67;
  v152 = v66;
  v151 = v56;
  v150 = v54;
  v149 = v21;
  v43 = v79;
  v44 = v73;
  v148[0] = v47;
  v148[1] = v48;
  v73 = v87[16];
  LOBYTE(v84[0]) = v87[16];
  v85 = 0xD000000000000032;
  v40 = 0x800000021478A360;
  v41 = 0x800000021478CFE0;
  v86 = 0x800000021478CFE0;
  *v87 = 0xD00000000000001CLL;
  *&v87[8] = 0x800000021478A360;

  v42 = v23;
  sub_213FDC9D0(v23, v24);
  v79 = v22;
  v25 = v46(v148, v84, &v85);
  if (v25)
  {
    v26 = v42;
    sub_213FDC6D0(v42, v24);

    sub_213FDC6BC(v74, v75);
    sub_213FDC6BC(v76, v77);
    sub_213FB2DF4(&v157, &qword_27C905AD0, &unk_214759900);
    (*(v83 + 8))(v8, v19);

    sub_213FDC6D0(v26, v24);
    *(&v84[32] + 5) = v188;
    *(&v84[34] + 3) = v186;
    *(&v84[38] + 1) = v184;
    *(&v84[40] + 3) = v182;
    *(v84 + 5) = v193;
    HIBYTE(v84[0]) = v194;
    *(&v84[28] + 1) = *v192;
    *(&v84[31] + 5) = v190;
    *(&v84[20] + 1) = v154[9];
    *(&v84[22] + 1) = v154[10];
    *(&v84[24] + 1) = v154[11];
    *(&v84[26] + 1) = v154[12];
    *(&v84[16] + 1) = v154[7];
    *(&v84[18] + 1) = v154[8];
    HIDWORD(v84[28]) = *&v192[3];
    HIBYTE(v84[31]) = v191;
    HIBYTE(v84[32]) = v189;
    HIBYTE(v84[34]) = v187;
    BYTE3(v84[38]) = v185;
    HIBYTE(v84[40]) = v183;
    *(&v84[12] + 1) = v154[5];
    *(&v84[14] + 1) = v154[6];
    *(&v84[4] + 1) = v154[1];
    *(&v84[6] + 1) = v154[2];
    *(&v84[8] + 1) = v154[3];
    *(&v84[10] + 1) = v154[4];
    LODWORD(v84[0]) = v80;
    v27 = v43;
    BYTE4(v84[0]) = v44;
    v84[1] = v78;
    LOBYTE(v84[2]) = v43;
    *(&v84[2] + 1) = v154[0];
    v84[29] = v76;
    v84[30] = v77;
    v28 = v70;
    LOBYTE(v26) = v71;
    LOBYTE(v84[31]) = v70;
    v29 = v72;
    BYTE1(v84[31]) = v72;
    BYTE2(v84[31]) = v71;
    v30 = v68;
    BYTE3(v84[31]) = v69;
    BYTE4(v84[31]) = v68;
    v39 = v20;
    LODWORD(v84[32]) = v20;
    v31 = v67;
    BYTE4(v84[32]) = v67;
    LODWORD(v84[33]) = v65;
    BYTE4(v84[33]) = v66;
    BYTE5(v84[33]) = v64;
    BYTE6(v84[33]) = v63;
    HIBYTE(v84[33]) = v62;
    LOBYTE(v84[34]) = v61;
    BYTE1(v84[34]) = v60;
    BYTE2(v84[34]) = v59;
    v84[35] = v74;
    v84[36] = v75;
    LOBYTE(v84[37]) = v58;
    BYTE1(v84[37]) = v57;
    HIDWORD(v84[37]) = v55;
    LOBYTE(v84[38]) = v56;
    HIDWORD(v84[38]) = v53;
    LOBYTE(v84[39]) = v54;
    BYTE1(v84[39]) = v52;
    BYTE2(v84[39]) = v51;
    HIDWORD(v84[39]) = v81;
    LOBYTE(v84[40]) = v21;
    BYTE1(v84[40]) = v50;
    BYTE2(v84[40]) = v49;
    v84[41] = v46;
    v84[42] = v79;
    v84[43] = v47;
    v84[44] = v48;
    LOBYTE(v84[45]) = v73;
    BYTE1(v84[45]) = v45;
    memcpy(v82, v84, 0x16AuLL);
    sub_2142E6788(v84, &v85);
    __swift_destroy_boxed_opaque_existential_1(v195);
    LODWORD(v85) = v80;
    BYTE4(v85) = v44;
    v86 = v78;
    v87[0] = v27;
    v101 = v76;
    v102 = v77;
    v103 = v28;
    v104 = v29;
    v105 = v26;
    v106 = v69;
    v107 = v30;
    v110 = v39;
    v111 = v31;
    v112 = v188;
    *(&v85 + 5) = v193;
    HIBYTE(v85) = v194;
    *v100 = *v192;
    v108 = v190;
    v96 = v154[9];
    v97 = v154[10];
    v98 = v154[11];
    v99 = v154[12];
    v92 = v154[5];
    v93 = v154[6];
    v94 = v154[7];
    v95 = v154[8];
    v88 = v154[1];
    v89 = v154[2];
    v90 = v154[3];
    v91 = v154[4];
    *&v87[1] = v154[0];
    *&v100[3] = *&v192[3];
    v109 = v191;
    v113 = v189;
    v114 = v65;
    v115 = v66;
    v116 = v64;
    v117 = v63;
    v118 = v62;
    v119 = v61;
    v120 = v60;
    v121 = v59;
    v122 = v186;
    v123 = v187;
    v124 = v74;
    v125 = v75;
    v126 = v58;
    v127 = v57;
    v128 = v55;
    v129 = v56;
    v130 = v184;
    v131 = v185;
    v132 = v53;
    v133 = v54;
    v134 = v52;
    v135 = v51;
    v136 = v81;
    v137 = v21;
    v138 = v50;
    v139 = v49;
    v140 = v182;
    v141 = v183;
    v142 = v46;
    v143 = v79;
    v144 = v47;
    v145 = v48;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v32 = v40;
    v33 = v41;
    *v34 = 0xD000000000000032;
    v34[1] = v33;
    v34[2] = 0xD00000000000001CLL;
    v34[3] = v32;
    swift_willThrow();

    sub_213FDC6BC(v74, v75);
    v36 = v76;
    v35 = v77;
    sub_213FDC6BC(v76, v77);
    sub_213FB2DF4(&v157, &qword_27C905AD0, &unk_214759900);
    (*(v83 + 8))(v8, v19);

    v37 = v42;
    sub_213FDC6D0(v42, v24);
    __swift_destroy_boxed_opaque_existential_1(v195);
    LODWORD(v85) = v80;
    BYTE4(v85) = v44;
    v86 = v78;
    v87[0] = v43;
    v101 = v36;
    v102 = v35;
    v103 = v70;
    v104 = v72;
    v105 = v71;
    v106 = v69;
    v107 = v68;
    v110 = v20;
    v112 = v188;
    *(&v85 + 5) = v193;
    HIBYTE(v85) = v194;
    *v100 = *v192;
    v108 = v190;
    v96 = v154[9];
    v97 = v154[10];
    v98 = v154[11];
    v99 = v154[12];
    v92 = v154[5];
    v93 = v154[6];
    v94 = v154[7];
    v95 = v154[8];
    v88 = v154[1];
    v89 = v154[2];
    v90 = v154[3];
    v91 = v154[4];
    *&v87[1] = v154[0];
    *&v100[3] = *&v192[3];
    v109 = v191;
    v111 = v67;
    v113 = v189;
    v114 = v65;
    v115 = v66;
    v116 = v64;
    v117 = v63;
    v118 = v62;
    v119 = v61;
    v120 = v60;
    v121 = v59;
    v122 = v186;
    v123 = v187;
    v124 = v74;
    v125 = v75;
    v126 = v58;
    v127 = v57;
    v128 = v55;
    v129 = v56;
    v130 = v184;
    v131 = v185;
    v132 = v53;
    v133 = v54;
    v134 = v52;
    v135 = v51;
    v136 = v81;
    v137 = v21;
    v138 = v50;
    v139 = v49;
    v140 = v182;
    v141 = v183;
    v142 = v46;
    v143 = v79;
    v144 = v37;
    v145 = v24;
  }

  v146 = v73;
  v147 = v45;
  return sub_2142E6530(&v85);
}

uint64_t sub_2140E0BB8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905B60, &qword_2146F3FD0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  LODWORD(v62) = *v1;
  LODWORD(v61) = *(v1 + 4);
  v60 = *(v1 + 8);
  LODWORD(v59) = *(v1 + 16);
  v7 = *(v1 + 184);
  v90 = *(v1 + 168);
  v91 = v7;
  v92[0] = *(v1 + 200);
  *(v92 + 9) = *(v1 + 209);
  v8 = *(v1 + 104);
  v9 = *(v1 + 136);
  v87 = *(v1 + 120);
  v88 = v9;
  v89 = *(v1 + 152);
  v10 = *(v1 + 40);
  v11 = *(v1 + 72);
  v83 = *(v1 + 56);
  v84 = v11;
  v85 = *(v1 + 88);
  v86 = v8;
  v81 = *(v1 + 24);
  v82 = v10;
  v12 = *(v1 + 232);
  v57 = *(v1 + 240);
  v58 = v12;
  LODWORD(v12) = *(v1 + 248);
  v55 = *(v1 + 249);
  v56 = v12;
  LODWORD(v12) = *(v1 + 250);
  v53 = *(v1 + 251);
  v54 = v12;
  LODWORD(v12) = *(v1 + 252);
  v51 = *(v1 + 256);
  v52 = v12;
  LODWORD(v12) = *(v1 + 260);
  v49 = *(v1 + 264);
  v50 = v12;
  LODWORD(v12) = *(v1 + 268);
  v47 = *(v1 + 269);
  v48 = v12;
  LODWORD(v12) = *(v1 + 270);
  v45 = *(v1 + 271);
  v46 = v12;
  LODWORD(v12) = *(v1 + 272);
  v43 = *(v1 + 273);
  v44 = v12;
  v42 = *(v1 + 274);
  v13 = *(v1 + 280);
  v25 = *(v1 + 288);
  v26 = v13;
  LODWORD(v5) = *(v1 + 297);
  v27 = *(v1 + 296);
  v28 = v5;
  LODWORD(v13) = *(v1 + 300);
  v29 = *(v1 + 304);
  v30 = v13;
  LODWORD(v13) = *(v1 + 308);
  v31 = *(v1 + 312);
  v32 = v13;
  LODWORD(v5) = *(v1 + 314);
  v33 = *(v1 + 313);
  v34 = v5;
  LODWORD(v13) = *(v1 + 316);
  v35 = *(v1 + 320);
  v36 = v13;
  LODWORD(v5) = *(v1 + 322);
  v37 = *(v1 + 321);
  v38 = v5;
  v14 = *(v1 + 352);
  v39 = *(v1 + 344);
  v40 = v14;
  v41 = *(v1 + 361);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E6584();
  sub_2146DAA28();
  LODWORD(v69) = v62;
  BYTE4(v69) = v61;
  LOBYTE(v66[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  sub_2142E62D8();
  v15 = v93;
  sub_2146DA388();
  if (v15)
  {
    v16 = *(v4 + 8);
    v17 = v6;
    v18 = v3;
    return v16(v17, v18);
  }

  v93 = v4;
  *&v69 = v60;
  BYTE8(v69) = v59;
  LOBYTE(v66[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
  sub_2142E2204();
  sub_2146DA388();
  v78 = v90;
  v79 = v91;
  v80[0] = v92[0];
  *(v80 + 9) = *(v92 + 9);
  v75 = v87;
  v76 = v88;
  v77 = v89;
  v71 = v83;
  v72 = v84;
  v73 = v85;
  v74 = v86;
  v69 = v81;
  v70 = v82;
  v68 = 2;
  v62 = v6;
  sub_213FB2E54(&v81, v66, &qword_27C905AD0, &unk_214759900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AD0, &unk_214759900);
  sub_2142E6354();
  sub_2146DA388();
  v66[9] = v78;
  v66[10] = v79;
  *v67 = v80[0];
  *&v67[9] = *(v80 + 9);
  v66[7] = v76;
  v66[8] = v77;
  v66[2] = v71;
  v66[3] = v72;
  v66[5] = v74;
  v66[6] = v75;
  v66[4] = v73;
  v66[0] = v69;
  v66[1] = v70;
  sub_213FB2DF4(v66, &qword_27C905AD0, &unk_214759900);
  v64 = v58;
  v65 = v57;
  v63 = 3;
  sub_213FDCA18(v58, v57);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  v21 = sub_2142E1CAC();
  sub_2146DA388();
  v60 = v21;
  v61 = v20;
  sub_213FDC6BC(v64, v65);
  LOBYTE(v64) = v56;
  v63 = 4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  sub_2142E1D30();
  sub_2146DA388();
  LOBYTE(v64) = v55;
  v63 = 5;
  sub_2146DA388();
  LOBYTE(v64) = v54;
  v63 = 6;
  sub_2146DA388();
  LOBYTE(v64) = v53;
  v63 = 7;
  sub_2146DA388();
  LOBYTE(v64) = v52;
  v63 = 8;
  v59 = v22;
  sub_2146DA388();
  LODWORD(v64) = v51;
  BYTE4(v64) = v50;
  v63 = 9;
  sub_2146DA388();
  LODWORD(v64) = v49;
  BYTE4(v64) = v48;
  v63 = 10;
  sub_2146DA388();
  LOBYTE(v64) = v47;
  v63 = 11;
  sub_2146DA388();
  LOBYTE(v64) = v46;
  v63 = 12;
  sub_2146DA388();
  LOBYTE(v64) = v45;
  v63 = 13;
  sub_2146DA388();
  LOBYTE(v64) = v44;
  v63 = 14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905B30, &qword_2146F3FC0);
  sub_2142E67E4();
  sub_2146DA388();
  LOBYTE(v64) = v43;
  v63 = 15;
  sub_2146DA388();
  LOBYTE(v64) = v42;
  v63 = 16;
  sub_2146DA388();
  v64 = v26;
  v65 = v25;
  v63 = 17;
  sub_213FDCA18(v26, v25);
  sub_2146DA388();
  sub_213FDC6BC(v64, v65);
  LOBYTE(v64) = v27;
  v63 = 18;
  sub_2146DA388();
  LOBYTE(v64) = v28;
  v63 = 19;
  sub_2146DA388();
  LODWORD(v64) = v30;
  BYTE4(v64) = v29;
  v63 = 20;
  sub_2146DA388();
  LODWORD(v64) = v32;
  BYTE4(v64) = v31;
  v63 = 21;
  sub_2146DA388();
  LOBYTE(v64) = v33;
  v63 = 22;
  sub_2146DA388();
  LOBYTE(v64) = v34;
  v63 = 23;
  sub_2146DA388();
  LODWORD(v64) = v36;
  BYTE4(v64) = v35;
  v63 = 24;
  sub_2146DA388();
  LOBYTE(v64) = v37;
  v63 = 25;
  sub_2146DA388();
  LOBYTE(v64) = v38;
  v63 = 26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905B48, &qword_2146F3FC8);
  sub_2142E68BC();
  sub_2146DA388();
  if (v40 != 1)
  {
    v64 = v39;
    v65 = v40;
    v63 = 27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    LOBYTE(v64) = v41;
    v63 = 28;
    v23 = v62;
    sub_2146DA388();
    v16 = *(v93 + 8);
    v17 = v23;
    v18 = v3;
    return v16(v17, v18);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2140E176C@<X0>(uint64_t (*a1)(void, void, void)@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_21465202C(&v41);
  v8 = v41;
  v9 = v42;
  v10 = v43;
  v11 = v44;
  v12 = v45;
  sub_214652178(&v54);
  v37 = v55;
  v31 = v54;
  v32 = v57;
  v33 = v12;
  v34 = v58;
  v54 = a1;
  v55 = a2;
  v59 = v12;
  v40 = v56;
  v41 = 0xD000000000000048;
  v42 = 0x800000021478D020;
  v43 = 0xD00000000000001CLL;
  v44 = 0x800000021478A360;

  v29 = v10;
  v13 = v10;
  v14 = v11;
  sub_213FDC9D0(v13, v11);
  v30 = v9;
  v15 = v35;
  v36 = v8;
  v16 = v8(&v54, &v59, &v41);
  if (v15)
  {

LABEL_6:

    v22 = v31;
    v20 = v32;
    a1 = v29;
    v17 = v30;

    sub_213FDC6D0(v29, v11);
    v18 = v34;
    v19 = v37;
LABEL_7:
    v41 = v36;
    v42 = v17;
    v43 = a1;
    v44 = v14;
    v45 = v33;
    v46 = a3;
    v47 = v60;
    v48 = v61;
    v49 = v22;
    v50 = v19;
    v51 = v40;
    v52 = v20;
    v53 = v18;
    return sub_2142E6994(&v41);
  }

  v26 = a2;
  if ((v16 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v23 = 0xD000000000000048;
    v23[1] = 0x800000021478D020;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v29, v11);

  v17 = v9;

  sub_213FDC6D0(v29, v11);
  v54 = a4;
  v55 = a5;
  v18 = v34;
  v59 = v34;
  v41 = 0xD00000000000004ALL;
  v42 = 0x800000021478D070;
  v43 = 0xD00000000000001CLL;
  v44 = 0x800000021478A360;
  v19 = v37;

  v20 = v32;
  sub_213FDC9D0(v40, v32);
  v21 = v31(&v54, &v59, &v41);
  v22 = v31;
  if ((v21 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v25 = 0xD00000000000004ALL;
    v25[1] = 0x800000021478D070;
    v25[2] = 0xD00000000000001CLL;
    v25[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v40, v32);
    v14 = v26;
    goto LABEL_7;
  }

  sub_213FDC6D0(v40, v32);

  result = sub_213FDC6D0(v40, v32);
  *a6 = v36;
  *(a6 + 8) = v30;
  *(a6 + 16) = a1;
  *(a6 + 24) = v26;
  *(a6 + 32) = v33;
  *(a6 + 33) = a3;
  *(a6 + 40) = v31;
  *(a6 + 48) = v37;
  *(a6 + 56) = a4;
  *(a6 + 64) = a5;
  *(a6 + 72) = v34;
  return result;
}

unint64_t sub_2140E1B24()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_2140E1B7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21435ECFC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2140E1BA4(uint64_t a1)
{
  v2 = sub_2142E69E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140E1BE0(uint64_t a1)
{
  v2 = sub_2142E69E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140E1C1C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905B88, &qword_2146F3FD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E69E8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v77 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v55) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v9 = v61;
  v54 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v55) = 1;
  sub_2142E1378();
  sub_2146DA1C8();
  v53 = v9;
  LODWORD(v9) = v60;
  v72 = 2;
  sub_2146DA1C8();
  v45 = v9;
  v41 = v73;
  v48 = v74;
  sub_21465202C(&v60);
  v11 = v61;
  v52 = v60;
  v12 = v62;
  v13 = v63;
  v14 = v64;
  sub_214652178(&v55);
  v47 = *(&v55 + 1);
  v49 = v55;
  v51 = v56;
  v50 = v57;
  *&v55 = v54;
  *(&v55 + 1) = v53;
  v44 = v14;
  LOBYTE(v59[0]) = v14;
  v60 = 0xD000000000000048;
  v61 = 0x800000021478D020;
  v42 = 0x800000021478D020;
  v62 = 0xD00000000000001CLL;
  v63 = 0x800000021478A360;

  v43 = v12;
  v15 = v12;
  v16 = v13;
  sub_213FDC9D0(v15, v13);
  v46 = v11;
  v17 = v52(&v55, v59, &v60);
  v18 = v42;
  v40 = 0x800000021478A360;
  if (v17)
  {
    v19 = v43;
    sub_213FDC6D0(v43, v16);
    v20 = v40;

    v21 = v46;

    sub_213FDC6D0(v19, v16);
    v59[0] = v41;
    v59[1] = v48;
    LOBYTE(v55) = v50;
    v60 = 0xD00000000000004ALL;
    v61 = 0x800000021478D070;
    v62 = 0xD00000000000001CLL;
    v63 = v20;
    v22 = v47;

    sub_213FDC9D0(v51, *(&v51 + 1));
    v23 = v49(v59, &v55, &v60);
    v26 = v54;
    if (v23)
    {
      sub_213FDC6D0(v51, *(&v51 + 1));

      (*(v6 + 8))(v8, v5);

      sub_213FDC6D0(v51, *(&v51 + 1));
      v28 = v52;
      *&v55 = v52;
      *(&v55 + 1) = v21;
      *&v56 = v26;
      *(&v56 + 1) = v53;
      v29 = v44;
      LOBYTE(v57) = v44;
      v30 = v45;
      BYTE1(v57) = v45;
      v31 = v49;
      *(&v57 + 1) = v49;
      *v58 = v22;
      v32 = v48;
      *&v58[8] = v41;
      *&v58[16] = v48;
      v33 = v50;
      v58[24] = v50;
      v34 = *v58;
      v35 = v77;
      v77[2] = v57;
      v35[3] = v34;
      *(v35 + 57) = *&v58[9];
      v36 = v56;
      *v35 = v55;
      v35[1] = v36;
      sub_2142E6A3C(&v55, &v60);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v60 = v28;
      v61 = v46;
      v62 = v54;
      v63 = v53;
      v64 = v29;
      v65 = v30;
      v68 = v31;
      v69 = v22;
      *&v70 = v41;
      *(&v70 + 1) = v32;
      v71 = v33;
      return sub_2142E6994(&v60);
    }

    sub_214031C4C();
    swift_allocError();
    *v37 = 0xD00000000000004ALL;
    v37[1] = 0x800000021478D070;
    v38 = v40;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = v38;
    swift_willThrow();

    (*(v6 + 8))(v8, v5);

    sub_213FDC6D0(v51, *(&v51 + 1));
    v16 = v53;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD000000000000048;
    v24[1] = v18;
    v25 = v40;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = v25;
    swift_willThrow();

    v21 = v46;
    (*(v6 + 8))(v8, v5);

    v26 = v43;
    sub_213FDC6D0(v43, v16);
  }

  v27 = v45;
  __swift_destroy_boxed_opaque_existential_1(a1);
  v60 = v52;
  v61 = v21;
  v62 = v26;
  v63 = v16;
  v64 = v44;
  v65 = v27;
  v66 = v75;
  v67 = v76;
  v68 = v49;
  v69 = v47;
  v70 = v51;
  v71 = v50;
  return sub_2142E6994(&v60);
}

uint64_t sub_2140E2410(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905B98, &qword_2146F3FE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v18 = *(v1 + 33);
  v9 = *(v1 + 56);
  v13 = *(v1 + 64);
  v14 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E69E8();
  sub_2146DAA28();
  if (v8 != 1)
  {
    v16 = v7;
    v17 = v8;
    v19 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    v10 = v15;
    sub_2146DA388();
    if (v10)
    {
      return (*(v4 + 8))(v6, v3);
    }

    LOBYTE(v16) = v18;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    sub_2142E1D30();
    sub_2146DA388();
    if (v13 != 1)
    {
      v16 = v14;
      v17 = v13;
      v19 = 2;
      sub_2146DA388();
      return (*(v4 + 8))(v6, v3);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

__n128 sub_2140E26A4@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, int a11, char a12, __int128 *a13, char a14, int a15, int a16, char a17)
{
  sub_213FDCA18(a8, a10);
  sub_214652544(&v58);
  v19 = v58;
  v18 = v59;
  v21 = v60;
  v20 = v61;
  v22 = v62;
  sub_214652690(&v84);
  v23 = *a13;
  *&v90[19] = a13[1];
  v24 = a13[3];
  *&v90[35] = a13[2];
  *&v90[51] = v24;
  *&v90[60] = *(a13 + 57);
  v47 = v84;
  v48 = v85;
  v95 = v86;
  v57 = v87;
  *&v90[3] = v23;
  v89 = a17 & 1;
  v49 = v88;
  v50 = v22;
  v84 = a4;
  v85 = a5;
  v91[0] = v22;
  v58 = 0xD000000000000026;
  v59 = 0x800000021478D0C0;
  v60 = 0xD00000000000001CLL;
  v61 = 0x800000021478A360;

  v25 = v21;
  v46 = v20;
  sub_213FDC9D0(v21, v20);
  v26 = v18;
  v27 = v19(&v84, v91, &v58);
  if (v51)
  {

    v28 = a8;
    v29 = a10;
    sub_213FDC6BC(a8, a10);

    v30 = v49;
    v31 = v48;
LABEL_6:

    v35 = v25;
    v36 = v25;
    v37 = v46;
    sub_213FDC6D0(v36, v46);
    v32 = v47;
LABEL_7:
    v77 = *v90;
    *&v80[12] = *&v90[60];
    *v80 = *&v90[48];
    v79 = *&v90[32];
    v58 = a1;
    v59 = a2;
    LOBYTE(v60) = a3;
    *(&v60 + 1) = v94[0];
    HIDWORD(v60) = *(v94 + 3);
    v61 = v19;
    v62 = v26;
    v63 = v35;
    v64 = v37;
    v65 = v50;
    *v66 = *v93;
    *&v66[3] = *&v93[3];
    v67 = v32;
    v68 = v31;
    v69 = v95;
    v70 = v57;
    v71 = v30;
    *&v72[3] = *(v92 + 3);
    *v72 = v92[0];
    v73 = v28;
    v74 = v29;
    v75 = a11;
    v76 = a12 & 1;
    v78 = *&v90[16];
    v81 = a14;
    v82 = a16;
    v83 = a17 & 1;
    sub_2142E6A98(&v58);
    return result;
  }

  v42 = a5;
  if ((v27 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v34 = 0xD000000000000026;
    v34[1] = 0x800000021478D0C0;
    v34[2] = 0xD00000000000001CLL;
    v34[3] = 0x800000021478A360;
    swift_willThrow();

    v28 = a8;
    v29 = a10;
    sub_213FDC6BC(a8, a10);

    v30 = v49;
    v31 = v48;
    goto LABEL_6;
  }

  sub_213FDC6D0(v25, v20);

  sub_213FDC6D0(v25, v20);
  v84 = a6;
  v85 = a7;
  v30 = v49;
  v91[0] = v49;
  v58 = 0xD000000000000029;
  v59 = 0x800000021478D0F0;
  v60 = 0xD00000000000001CLL;
  v61 = 0x800000021478A360;
  v31 = v48;

  sub_213FDC9D0(v95, v57);
  v32 = v47;
  v33 = v47(&v84, v91, &v58);
  v28 = a8;
  if ((v33 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v41 = 0xD000000000000029;
    v41[1] = 0x800000021478D0F0;
    v41[2] = 0xD00000000000001CLL;
    v41[3] = 0x800000021478A360;
    swift_willThrow();

    v29 = a10;
    sub_213FDC6BC(a8, a10);

    sub_213FDC6D0(v95, v57);
    v35 = a4;
    v37 = v42;
    goto LABEL_7;
  }

  sub_213FDC6D0(v95, v57);
  sub_213FDC6BC(a8, a10);

  sub_213FDC6D0(v95, v57);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = v19;
  *(a9 + 32) = v26;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = v50;
  *(a9 + 64) = v47;
  *(a9 + 72) = v48;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 96) = v49;
  *(a9 + 104) = a8;
  *(a9 + 112) = a10;
  *(a9 + 120) = a11;
  *(a9 + 124) = a12 & 1;
  v39 = *&v90[16];
  *(a9 + 125) = *v90;
  result = *&v90[32];
  v40 = *&v90[48];
  *(a9 + 185) = *&v90[60];
  *(a9 + 173) = v40;
  *(a9 + 157) = result;
  *(a9 + 141) = v39;
  *(a9 + 201) = a14;
  *(a9 + 204) = a16;
  *(a9 + 208) = a17 & 1;
  return result;
}

uint64_t sub_2140E2C3C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6B6361626C6C6166;
    v6 = 0x656C746974;
    if (a1 != 2)
    {
      v6 = 0x656C746974627573;
    }

    if (a1)
    {
      v5 = 0xD000000000000018;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000018;
    v2 = 0x656D69746566696CLL;
    if (a1 == 7)
    {
      v2 = 0xD000000000000018;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD00000000000001FLL;
    if (a1 == 4)
    {
      v3 = 0x6567616D69;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2140E2D78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21435EE20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2140E2DA0(uint64_t a1)
{
  v2 = sub_2142E6AEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140E2DDC(uint64_t a1)
{
  v2 = sub_2142E6AEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140E2E18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905BA0, &qword_2146F3FE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - v7;
  v9 = a1[3];
  v124 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142E6AEC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v124);
  }

  v71 = a2;
  v72 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v73) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v70 = v83;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v73) = 1;
  v11 = sub_2142E1378();
  sub_2146DA1C8();
  v68 = v11;
  v69 = v10;
  LODWORD(v11) = v83;
  LOBYTE(v73) = 2;
  sub_2146DA1C8();
  v13 = *(&v83 + 1);
  v67 = v83;
  LOBYTE(v73) = 3;
  sub_2146DA1C8();
  v66 = v13;
  v14 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v73) = 4;
  sub_2142E1278();
  sub_2146DA1C8();
  v62 = v14;
  v63 = v11;
  v64 = *(&v14 + 1);
  v15 = *(&v83 + 1);
  v65 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v73) = 5;
  v16 = sub_2142E6128();
  sub_2146DA1C8();
  v60 = v16;
  v61 = v15;
  LODWORD(v15) = v83;
  v17 = BYTE4(v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905BB0, &qword_2146F3FF0);
  v116 = 6;
  sub_2142E6B40();
  sub_2146DA1C8();
  v58 = v15;
  v59 = v17;
  v114 = v119;
  *v115 = *v120;
  *&v115[9] = *&v120[9];
  v112 = v117;
  v113 = v118;
  LOBYTE(v73) = 7;
  sub_2146DA1C8();
  v18 = v61;
  v19 = v83;
  v109 = 8;
  sub_2146DA1C8();
  v50 = v5;
  v51 = v19;
  v49 = v110;
  v20 = v111;
  sub_213FDCA18(v65, v18);
  sub_213FB2E54(&v112, &v83, &qword_27C905BB0, &qword_2146F3FF0);
  sub_214652544(&v83);
  v21 = *(&v83 + 1);
  v68 = v83;
  v22 = v84;
  v23 = v85;
  v24 = v86;
  sub_214652690(&v73);
  *&v108[19] = v113;
  *&v108[35] = v114;
  *&v108[51] = *v115;
  *&v108[60] = *&v115[9];
  v54 = v73;
  v56 = v74;
  v57 = *(&v73 + 1);
  v55 = v75;
  *&v108[3] = v112;
  v48 = v20;
  v107 = v20;
  *&v73 = v67;
  *(&v73 + 1) = v66;
  v52 = v24;
  LOBYTE(v82[0]) = v24;
  *&v83 = 0xD000000000000026;
  *(&v83 + 1) = 0x800000021478D0C0;
  v84 = 0xD00000000000001CLL;
  v85 = 0x800000021478A360;
  v53 = 0x800000021478A360;

  v25 = v22;
  v69 = v23;
  sub_213FDC9D0(v22, v23);
  v60 = v21;
  v26 = v68(&v73, v82, &v83);
  if (v26)
  {
    v27 = v69;
    sub_213FDC6D0(v22, v69);
    v28 = v53;

    sub_213FDC6D0(v22, v27);
    v82[0] = v62;
    v82[1] = v64;
    LOBYTE(v73) = v55;
    *&v83 = 0xD000000000000029;
    *(&v83 + 1) = 0x800000021478D0F0;
    v84 = 0xD00000000000001CLL;
    v85 = v28;

    sub_213FDC9D0(v56, *(&v56 + 1));
    v29 = v54(v82, &v73, &v83);
    if (v29)
    {
      v32 = v56;
      sub_213FDC6D0(v56, *(&v56 + 1));

      v33 = v65;
      v34 = v61;
      sub_213FDC6BC(v65, v61);
      sub_213FB2DF4(&v112, &qword_27C905BB0, &qword_2146F3FF0);
      (*(v72 + 8))(v8, v50);
      v35 = v57;

      sub_213FDC6D0(v32, *(&v32 + 1));
      v73 = v70;
      LOBYTE(v74) = v63;
      *(&v74 + 1) = v123[0];
      DWORD1(v74) = *(v123 + 3);
      *(&v74 + 1) = v68;
      *&v75 = v60;
      *(&v75 + 1) = v67;
      *&v76 = v66;
      BYTE8(v76) = v52;
      *(&v76 + 9) = *v122;
      HIDWORD(v76) = *&v122[3];
      *&v77 = v54;
      *(&v77 + 1) = v35;
      v36 = v62;
      *&v78 = v62;
      *(&v78 + 1) = v64;
      LOBYTE(v79) = v55;
      *(&v79 + 1) = *v121;
      DWORD1(v79) = *&v121[3];
      *(&v79 + 1) = v33;
      *&v80[0] = v34;
      DWORD2(v80[0]) = v58;
      BYTE12(v80[0]) = v59;
      *(v80 + 13) = *v108;
      *(&v80[1] + 13) = *&v108[16];
      *(&v80[2] + 13) = *&v108[32];
      *(&v80[3] + 13) = *&v108[48];
      *(&v80[4] + 9) = *&v108[60];
      v37 = v51;
      BYTE9(v80[5]) = v51;
      LOBYTE(v33) = v48;
      v38 = v49;
      HIDWORD(v80[5]) = v49;
      v81 = v48;
      v39 = v71;
      *(v71 + 208) = v48;
      v40 = v74;
      *v39 = v73;
      v39[1] = v40;
      v41 = v78;
      v39[4] = v77;
      v39[5] = v41;
      v42 = v76;
      v39[2] = v75;
      v39[3] = v42;
      v43 = v80[0];
      v39[6] = v79;
      v39[7] = v43;
      v44 = v80[2];
      v39[8] = v80[1];
      v39[9] = v44;
      v45 = v80[4];
      v39[10] = v80[3];
      v39[11] = v45;
      v39[12] = v80[5];
      sub_2142E6C18(&v73, &v83);
      __swift_destroy_boxed_opaque_existential_1(v124);
      v101 = *&v108[16];
      v102 = *&v108[32];
      *v103 = *&v108[48];
      *&v103[12] = *&v108[60];
      v83 = v70;
      LOBYTE(v84) = v63;
      *(&v84 + 1) = v123[0];
      HIDWORD(v84) = *(v123 + 3);
      v85 = v68;
      v86 = v60;
      v87 = v67;
      v88 = v66;
      v89 = v52;
      *v90 = *v122;
      *&v90[3] = *&v122[3];
      v91 = v54;
      v92 = v35;
      *&v93 = v36;
      *(&v93 + 1) = v64;
      v94 = v55;
      *v95 = *v121;
      *&v95[3] = *&v121[3];
      v96 = v65;
      v97 = v61;
      v98 = v58;
      v99 = v59;
      v100 = *v108;
      v104 = v37;
      v105 = v38;
      v106 = v33;
      return sub_2142E6A98(&v83);
    }

    sub_214031C4C();
    swift_allocError();
    *v46 = 0xD000000000000029;
    v46[1] = 0x800000021478D0F0;
    v47 = v53;
    v46[2] = 0xD00000000000001CLL;
    v46[3] = v47;
    swift_willThrow();

    sub_213FDC6BC(v65, v61);
    sub_213FB2DF4(&v112, &qword_27C905BB0, &qword_2146F3FF0);
    (*(v72 + 8))(v8, v50);

    sub_213FDC6D0(v56, *(&v56 + 1));
    v25 = v67;
    v69 = v66;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD000000000000026;
    v30[1] = 0x800000021478D0C0;
    v31 = v53;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = v31;
    swift_willThrow();

    sub_213FDC6BC(v65, v61);
    sub_213FB2DF4(&v112, &qword_27C905BB0, &qword_2146F3FF0);
    (*(v72 + 8))(v8, v50);

    sub_213FDC6D0(v22, v69);
  }

  __swift_destroy_boxed_opaque_existential_1(v124);
  v100 = *v108;
  *&v103[12] = *&v108[60];
  *v103 = *&v108[48];
  v102 = *&v108[32];
  v83 = v70;
  LOBYTE(v84) = v63;
  *(&v84 + 1) = v123[0];
  HIDWORD(v84) = *(v123 + 3);
  v85 = v68;
  v86 = v60;
  v87 = v25;
  v88 = v69;
  v89 = v52;
  *v90 = *v122;
  *&v90[3] = *&v122[3];
  v91 = v54;
  v92 = v57;
  v93 = v56;
  v94 = v55;
  *&v95[3] = *&v121[3];
  *v95 = *v121;
  v96 = v65;
  v97 = v61;
  v98 = v58;
  v99 = v59;
  v101 = *&v108[16];
  v104 = v51;
  v105 = v49;
  v106 = v48;
  return sub_2142E6A98(&v83);
}

uint64_t sub_2140E3A24(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905BC8, &qword_2146F3FF8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - v5;
  v8 = *v1;
  v7 = v1[1];
  LODWORD(v33) = *(v1 + 16);
  v9 = v1[6];
  v29 = v1[5];
  v32 = v9;
  v10 = v1[11];
  v31 = v1[10];
  v27 = v10;
  v11 = v1[14];
  v30 = v1[13];
  v28 = v11;
  v25 = *(v1 + 30);
  v26 = *(v1 + 124);
  v12 = *(v1 + 11);
  v46 = *(v1 + 10);
  *v47 = v12;
  *&v47[9] = *(v1 + 185);
  v13 = *(v1 + 9);
  v44 = *(v1 + 8);
  v45 = v13;
  v24 = *(v1 + 201);
  v22 = *(v1 + 51);
  v23 = *(v1 + 208);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E6AEC();
  sub_2146DAA28();
  *&v40 = v8;
  *(&v40 + 1) = v7;
  LOBYTE(v37[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v14 = v48;
  sub_2146DA388();
  if (v14)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = v32;
  LOBYTE(v40) = v33;
  LOBYTE(v37[0]) = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  v17 = sub_2142E1D30();
  sub_2146DA388();
  v33 = v17;
  v48 = v16;
  if (v15 == 1 || (v19 = v4, *&v40 = v29, *(&v40 + 1) = v15, LOBYTE(v37[0]) = 2, sub_2146DA388(), v20 = v30, v27 == 1))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *&v40 = v31;
    *(&v40 + 1) = v27;
    LOBYTE(v37[0]) = 3;
    sub_2146DA388();
    *&v40 = v20;
    *(&v40 + 1) = v28;
    LOBYTE(v37[0]) = 4;
    sub_213FDCA18(v20, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    sub_2142E1CAC();
    sub_2146DA388();
    sub_213FDC6BC(v40, *(&v40 + 1));
    LODWORD(v40) = v25;
    BYTE4(v40) = v26;
    LOBYTE(v37[0]) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    sub_2142E62D8();
    sub_2146DA388();
    v43[0] = *v47;
    *(v43 + 9) = *&v47[9];
    v41 = v45;
    v42 = v46;
    v40 = v44;
    v39 = 6;
    sub_213FB2E54(&v44, v37, &qword_27C905BB0, &qword_2146F3FF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905BB0, &qword_2146F3FF0);
    sub_2142E6C74();
    sub_2146DA388();
    v37[2] = v42;
    *v38 = v43[0];
    *&v38[9] = *(v43 + 9);
    v37[1] = v41;
    v37[0] = v40;
    sub_213FB2DF4(v37, &qword_27C905BB0, &qword_2146F3FF0);
    LOBYTE(v34) = v24;
    v36 = 7;
    sub_2146DA388();
    v34 = v22;
    v35 = v23;
    v36 = 8;
    sub_2146DA388();
    return (*(v19 + 8))(0, v3);
  }

  return result;
}

uint64_t sub_2140E4070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_214652A5C(&v58);
  v12 = v58;
  v11 = v59;
  v13 = v60;
  v14 = v61;
  v83[0] = *v63;
  *(v83 + 3) = *&v63[3];
  v51 = v64;
  v53 = v65;
  v84 = v66;
  v54 = v67;
  v52 = v68;
  v82[0] = *v69;
  *(v82 + 3) = *&v69[3];
  v47 = v70;
  v48 = v71;
  v49 = v72;
  v41 = v74;
  *(v81 + 3) = *&v75[3];
  v81[0] = *v75;
  v39 = v76;
  v44 = v77;
  v45 = v73;
  v42 = v78;
  v43 = v79;
  v36 = v62;
  v37 = v80;
  v56 = a1;
  v57 = a2;
  v55 = v62;
  v58 = 0xD000000000000031;
  v59 = 0x800000021478D120;
  v60 = 0xD00000000000001CLL;
  v61 = 0x800000021478A360;

  sub_213FDC9D0(v13, v14);
  v15 = v11;
  v16 = v12(&v56, &v55, &v58);
  if (v38)
  {

    v17 = v39;
    v18 = v15;
LABEL_6:

    sub_213FDC6D0(v13, v14);
    v21 = v37;
    v22 = v41;
LABEL_7:
    v23 = v45;
LABEL_8:
    v58 = v12;
    v59 = v18;
    v60 = v13;
    v61 = v14;
    v62 = v36;
    *v63 = v83[0];
    *&v63[3] = *(v83 + 3);
    v64 = v51;
    v65 = v53;
    v66 = v84;
    v67 = v54;
    v68 = v52;
    *v69 = v82[0];
    *&v69[3] = *(v82 + 3);
    v70 = v47;
    v71 = v48;
    v72 = v49;
    v73 = v23;
    v74 = v22;
    *&v75[3] = *(v81 + 3);
    *v75 = v81[0];
    v76 = v17;
    v77 = v44;
    v78 = v42;
    v79 = v43;
    v80 = v21;
    return sub_2142E6D4C(&v58);
  }

  v31 = a1;
  if ((v16 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000031;
    v20[1] = 0x800000021478D120;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();

    v17 = v39;
    v18 = v15;
    goto LABEL_6;
  }

  sub_213FDC6D0(v13, v14);

  v18 = v11;

  sub_213FDC6D0(v13, v14);
  v56 = a3;
  v57 = a4;
  v55 = v52;
  v58 = 0xD000000000000031;
  v59 = 0x800000021478D160;
  v60 = 0xD00000000000001CLL;
  v61 = 0x800000021478A360;

  sub_213FDC9D0(v84, v54);
  v19 = v51(&v56, &v55, &v58);
  v21 = v37;
  v14 = a2;
  if ((v19 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v27 = 0xD000000000000031;
    v27[1] = 0x800000021478D160;
    v27[2] = 0xD00000000000001CLL;
    v27[3] = 0x800000021478A360;
    swift_willThrow();

    v17 = v39;
    v22 = v41;

    sub_213FDC6D0(v84, v54);
    v13 = v31;
    goto LABEL_7;
  }

  v25 = v84;
  sub_213FDC6D0(v84, v54);

  sub_213FDC6D0(v25, v54);
  v56 = a5;
  v57 = a6;
  v22 = v41;
  v55 = v41;
  v58 = 0xD000000000000032;
  v59 = 0x800000021478D1A0;
  v60 = 0xD00000000000001CLL;
  v61 = 0x800000021478A360;

  sub_213FDC9D0(v49, v45);
  v26 = v47(&v56, &v55, &v58);
  if ((v26 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v29 = 0xD000000000000032;
    v29[1] = 0x800000021478D1A0;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = 0x800000021478A360;
    swift_willThrow();

    v17 = v39;

    v23 = v45;
    sub_213FDC6D0(v49, v45);
    v13 = v31;
    v84 = a3;
    v54 = a4;
    goto LABEL_8;
  }

  sub_213FDC6D0(v49, v45);

  sub_213FDC6D0(v49, v45);
  v56 = a7;
  v57 = a8;
  v55 = v37;
  v58 = 0xD000000000000034;
  v59 = 0x800000021478D1E0;
  v60 = 0xD00000000000001CLL;
  v61 = 0x800000021478A360;

  sub_213FDC9D0(v42, v43);
  v28 = v39(&v56, &v55, &v58);
  v17 = v39;
  v22 = v41;
  if ((v28 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD000000000000034;
    v30[1] = 0x800000021478D1E0;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = 0x800000021478A360;
    swift_willThrow();

    v13 = v31;

    sub_213FDC6D0(v42, v43);
    v14 = a2;
    v84 = a3;
    v54 = a4;
    v49 = a5;
    v23 = a6;
    goto LABEL_8;
  }

  sub_213FDC6D0(v42, v43);

  result = sub_213FDC6D0(v42, v43);
  *a9 = v12;
  *(a9 + 8) = v18;
  *(a9 + 16) = v31;
  *(a9 + 24) = a2;
  *(a9 + 32) = v36;
  *(a9 + 33) = v83[0];
  *(a9 + 36) = *(v83 + 3);
  *(a9 + 40) = v51;
  *(a9 + 48) = v53;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = v52;
  *(a9 + 73) = v82[0];
  *(a9 + 76) = *(v82 + 3);
  *(a9 + 80) = v47;
  *(a9 + 88) = v48;
  *(a9 + 96) = a5;
  *(a9 + 104) = a6;
  *(a9 + 112) = v41;
  *(a9 + 116) = *(v81 + 3);
  *(a9 + 113) = v81[0];
  *(a9 + 120) = v39;
  *(a9 + 128) = v44;
  *(a9 + 136) = a7;
  *(a9 + 144) = a8;
  *(a9 + 152) = v37;
  return result;
}

unint64_t sub_2140E4880()
{
  v1 = 0xD000000000000014;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000011;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2140E48E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21435F110(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2140E4910(uint64_t a1)
{
  v2 = sub_2142E6DA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140E494C(uint64_t a1)
{
  v2 = sub_2142E6DA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140E4988@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905BE0, &qword_2146F4000);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v60 - v7;
  v9 = a1[3];
  v129 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142E6DA0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v129);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v90) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v88 = v100;
  v89 = v6;
  v10 = v101;
  LOBYTE(v90) = 1;
  sub_2146DA1C8();
  v86 = v100;
  v87 = v10;
  v11 = v101;
  LOBYTE(v90) = 2;
  sub_2146DA1C8();
  v84 = v100;
  v85 = v11;
  v12 = v101;
  v123 = 3;
  sub_2146DA1C8();
  v62 = v5;
  v76 = v12;
  v60 = v124;
  v67 = v125;
  sub_214652A5C(&v100);
  v15 = v100;
  v14 = v101;
  v16 = v102;
  v17 = v103;
  v128[0] = *v105;
  *(v128 + 3) = *&v105[3];
  v83 = v107;
  v80 = v108;
  v81 = v106;
  v79 = v109;
  v82 = v110;
  v127[0] = *v111;
  *(v127 + 3) = *&v111[3];
  v77 = v113;
  v73 = v114;
  v74 = v112;
  v75 = v116;
  *(v126 + 3) = *&v117[3];
  v126[0] = *v117;
  v65 = v118;
  v71 = v119;
  v72 = v115;
  v69 = v120;
  v70 = v121;
  v66 = v122;
  *&v90 = v88;
  *(&v90 + 1) = v87;
  v64 = v104;
  LOBYTE(v99[0]) = v104;
  v100 = 0xD000000000000031;
  v101 = 0x800000021478D120;
  v102 = 0xD00000000000001CLL;
  v103 = 0x800000021478A360;
  v78 = 0x800000021478A360;

  v61 = v17;
  sub_213FDC9D0(v16, v17);
  v68 = v14;
  v63 = v15;
  v18 = v15(&v90, v99, &v100);
  if (v18)
  {
    v19 = v61;
    sub_213FDC6D0(v16, v61);
    v20 = v78;

    v21 = v68;

    sub_213FDC6D0(v16, v19);
    *&v90 = v86;
    *(&v90 + 1) = v85;
    LOBYTE(v99[0]) = v82;
    v100 = 0xD000000000000031;
    v101 = 0x800000021478D160;
    v102 = 0xD00000000000001CLL;
    v103 = v20;

    sub_213FDC9D0(v80, v79);
    v22 = v81(&v90, v99, &v100);
    if (v22)
    {
      v32 = v79;
      v31 = v80;
      sub_213FDC6D0(v80, v79);
      v33 = v78;

      sub_213FDC6D0(v31, v32);
      *&v90 = v84;
      *(&v90 + 1) = v76;
      LOBYTE(v99[0]) = v75;
      v100 = 0xD000000000000032;
      v101 = 0x800000021478D1A0;
      v102 = 0xD00000000000001CLL;
      v103 = v33;

      sub_213FDC9D0(v73, v72);
      v34 = v74(&v90, v99, &v100);
      if (v34)
      {
        v37 = v62;
        v39 = v72;
        v38 = v73;
        sub_213FDC6D0(v73, v72);
        v40 = v78;

        sub_213FDC6D0(v38, v39);
        v99[0] = v60;
        v99[1] = v67;
        LOBYTE(v90) = v66;
        v100 = 0xD000000000000034;
        v101 = 0x800000021478D1E0;
        v102 = 0xD00000000000001CLL;
        v103 = v40;

        sub_213FDC9D0(v69, v70);
        v41 = v65(v99, &v90, &v100);
        if (v41)
        {
          v45 = v69;
          v44 = v70;
          sub_213FDC6D0(v69, v70);

          (*(v89 + 8))(v8, v37);
          v46 = v71;

          sub_213FDC6D0(v45, v44);
          v47 = v63;
          *&v90 = v63;
          *(&v90 + 1) = v68;
          *&v91 = v88;
          *(&v91 + 1) = v87;
          LOBYTE(v92) = v64;
          *(&v92 + 1) = v128[0];
          DWORD1(v92) = *(v128 + 3);
          *(&v92 + 1) = v81;
          *&v93 = v83;
          *(&v93 + 1) = v86;
          *&v94 = v85;
          BYTE8(v94) = v82;
          *(&v94 + 9) = v127[0];
          HIDWORD(v94) = *(v127 + 3);
          v48 = v74;
          *&v95 = v74;
          *(&v95 + 1) = v77;
          *&v96 = v84;
          *(&v96 + 1) = v76;
          v49 = v75;
          LOBYTE(v97) = v75;
          *(&v97 + 1) = v126[0];
          DWORD1(v97) = *(v126 + 3);
          v50 = v65;
          *(&v97 + 1) = v65;
          *&v98[0] = v46;
          *(&v98[0] + 1) = v60;
          *&v98[1] = v67;
          LOBYTE(v46) = v66;
          BYTE8(v98[1]) = v66;
          v51 = v91;
          *a2 = v90;
          a2[1] = v51;
          v52 = v92;
          v53 = v93;
          v54 = v95;
          a2[4] = v94;
          a2[5] = v54;
          a2[2] = v52;
          a2[3] = v53;
          v55 = v96;
          v56 = v97;
          v57 = v98[0];
          *(a2 + 137) = *(v98 + 9);
          a2[7] = v56;
          a2[8] = v57;
          a2[6] = v55;
          sub_2142E6DF4(&v90, &v100);
          __swift_destroy_boxed_opaque_existential_1(v129);
          v100 = v47;
          v101 = v68;
          v102 = v88;
          v103 = v87;
          v104 = v64;
          *v105 = v128[0];
          *&v105[3] = *(v128 + 3);
          v106 = v81;
          v107 = v83;
          v108 = v86;
          v109 = v85;
          v110 = v82;
          *v111 = v127[0];
          *&v111[3] = *(v127 + 3);
          v112 = v48;
          v113 = v77;
          v114 = v84;
          v115 = v76;
          v116 = v49;
          *v117 = v126[0];
          *&v117[3] = *(v126 + 3);
          v118 = v50;
          v119 = v71;
          v120 = v60;
          v121 = v67;
          v122 = v46;
          return sub_2142E6D4C(&v100);
        }

        sub_214031C4C();
        swift_allocError();
        *v58 = 0xD000000000000034;
        v58[1] = 0x800000021478D1E0;
        v59 = v78;
        v58[2] = 0xD00000000000001CLL;
        v58[3] = v59;
        swift_willThrow();

        (*(v89 + 8))(v8, v37);

        sub_213FDC6D0(v69, v70);
        v26 = v87;
        v25 = v88;
        v29 = v85;
        v30 = v86;
        v27 = v84;
        v28 = v76;
        v21 = v68;
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v42 = 0xD000000000000032;
        v42[1] = 0x800000021478D1A0;
        v43 = v78;
        v42[2] = 0xD00000000000001CLL;
        v42[3] = v43;
        swift_willThrow();

        v30 = v86;
        v26 = v87;
        (*(v89 + 8))(v8, v62);

        v28 = v72;
        v27 = v73;
        sub_213FDC6D0(v73, v72);
        v25 = v88;
        v29 = v85;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v35 = 0xD000000000000031;
      v35[1] = 0x800000021478D160;
      v36 = v78;
      v35[2] = 0xD00000000000001CLL;
      v35[3] = v36;
      swift_willThrow();

      v26 = v87;

      (*(v89 + 8))(v8, v62);

      v29 = v79;
      v30 = v80;
      sub_213FDC6D0(v80, v79);
      v25 = v88;
      v28 = v72;
      v27 = v73;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v23 = 0xD000000000000031;
    v23[1] = 0x800000021478D120;
    v24 = v78;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = v24;
    swift_willThrow();

    v21 = v68;

    (*(v89 + 8))(v8, v62);

    v25 = v16;
    v26 = v61;
    sub_213FDC6D0(v16, v61);
    v28 = v72;
    v27 = v73;
    v29 = v79;
    v30 = v80;
  }

  __swift_destroy_boxed_opaque_existential_1(v129);
  v100 = v63;
  v101 = v21;
  v102 = v25;
  v103 = v26;
  v104 = v64;
  *v105 = v128[0];
  *&v105[3] = *(v128 + 3);
  v106 = v81;
  v107 = v83;
  v108 = v30;
  v109 = v29;
  v110 = v82;
  *v111 = v127[0];
  *&v111[3] = *(v127 + 3);
  v112 = v74;
  v113 = v77;
  v114 = v27;
  v115 = v28;
  v116 = v75;
  *&v117[3] = *(v126 + 3);
  *v117 = v126[0];
  v118 = v65;
  v119 = v71;
  v120 = v69;
  v121 = v70;
  v122 = v66;
  return sub_2142E6D4C(&v100);
}

uint64_t sub_2140E5558(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905BF0, &qword_2146F4008);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[7];
  v19 = v1[8];
  v20 = v9;
  v10 = v1[12];
  v17 = v1[13];
  v18 = v10;
  v11 = v1[17];
  v15 = v1[18];
  v16 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E6DA0();
  sub_2146DAA28();
  if (v8 == 1)
  {
LABEL_11:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v22 = v7;
  v23 = v8;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v12 = v21;
  sub_2146DA388();
  if (!v12)
  {
    if (v19 != 1)
    {
      v22 = v20;
      v23 = v19;
      v24 = 1;
      sub_2146DA388();
      if (v17 != 1)
      {
        v22 = v18;
        v23 = v17;
        v24 = 2;
        sub_2146DA388();
        if (v15 != 1)
        {
          v22 = v16;
          v23 = v15;
          v24 = 3;
          sub_2146DA388();
          return (*(v4 + 8))(v6, v3);
        }
      }
    }

    goto LABEL_11;
  }

  return (*(v4 + 8))(v6, v3);
}

double sub_2140E5834@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, _OWORD *a12, __int128 *a13, uint64_t a14, char a15, __int128 a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  *(&v103 + 1) = a2;
  *&v103 = a1;
  sub_21465335C(v144);
  v20 = v144[0];
  v21 = v144[1];
  v72 = v144[2];
  v105 = v144[3];
  v159 = v145;
  sub_214653390(v142);
  v99 = v142[0];
  v74 = v142[1];
  v76 = v142[2];
  v73 = v142[3];
  v158 = v143;
  sub_2146533CC(v140);
  v98 = v140[0];
  v102 = v140[2];
  v100 = v140[1];
  v101 = v140[3];
  v79 = v141;
  sub_214653518(v138);
  v83 = v138[0];
  v96 = v138[2];
  v94 = v138[1];
  v95 = v138[3];
  v80 = v139;
  sub_214653664(v136);
  v91 = v136[0];
  v87 = v136[1];
  v88 = v136[2];
  v77 = v136[3];
  v90 = v137;
  sub_2146537D8(v134);
  v22 = a12[7];
  *&v149[103] = a12[6];
  *&v149[119] = v22;
  *&v149[135] = a12[8];
  *&v149[144] = *(a12 + 137);
  v23 = a12[3];
  *&v149[39] = a12[2];
  *&v149[55] = v23;
  v24 = a12[5];
  *&v149[71] = a12[4];
  *&v149[87] = v24;
  v25 = a12[1];
  *&v149[7] = *a12;
  *&v149[23] = v25;
  v26 = a13[8];
  *&v106[151] = a13[9];
  v27 = a13[11];
  *&v106[167] = a13[10];
  *&v106[183] = v27;
  *&v106[192] = *(a13 + 185);
  v28 = a13[4];
  *&v106[87] = a13[5];
  v29 = a13[7];
  *&v106[103] = a13[6];
  *&v106[119] = v29;
  *&v106[135] = v26;
  v30 = *a13;
  *&v106[23] = a13[1];
  v31 = a13[3];
  *&v106[39] = a13[2];
  *&v106[55] = v31;
  v81 = v134[0];
  v84 = v134[2];
  v85 = v134[3];
  v86 = v134[1];
  v82 = v135;
  *&v106[71] = v28;
  *&v106[7] = v30;
  v148 = a15 & 1;
  v32 = *(a17 + 176);
  *&v147[167] = *(a17 + 160);
  *&v147[183] = v32;
  *&v147[199] = *(a17 + 192);
  v147[215] = *(a17 + 208);
  v33 = *(a17 + 112);
  *&v147[103] = *(a17 + 96);
  *&v147[119] = v33;
  v34 = *(a17 + 144);
  *&v147[135] = *(a17 + 128);
  *&v147[151] = v34;
  v35 = *(a17 + 48);
  *&v147[39] = *(a17 + 32);
  *&v147[55] = v35;
  v36 = *(a17 + 80);
  *&v147[71] = *(a17 + 64);
  *&v147[87] = v36;
  v37 = *(a17 + 16);
  *&v147[7] = *a17;
  *&v147[23] = v37;
  v146 = a20 & 1;
  __src[6] = *&v149[96];
  __src[7] = *&v149[112];
  __src[8] = *&v149[128];
  __src[9] = *&v149[144];
  __src[2] = *&v149[32];
  __src[3] = *&v149[48];
  __src[4] = *&v149[64];
  __src[5] = *&v149[80];
  __src[0] = *v149;
  __src[1] = *&v149[16];
  __src[20] = *&v106[160];
  __src[21] = *&v106[176];
  __src[22] = *&v106[192];
  __src[16] = *&v106[96];
  __src[17] = *&v106[112];
  __src[19] = *&v106[144];
  __src[18] = *&v106[128];
  __src[12] = *&v106[32];
  __src[13] = *&v106[48];
  __src[15] = *&v106[80];
  __src[14] = *&v106[64];
  __src[11] = *&v106[16];
  __src[10] = *v106;
  *v149 = v103;
  LOBYTE(v144[0]) = v159;
  *v106 = 0xD00000000000002DLL;
  *&v106[8] = 0x800000021478D220;
  *&v106[16] = 0xD00000000000001CLL;
  *&v106[24] = 0x800000021478A360;

  sub_213FDC9D0(v72, v105);
  v78 = v20;
  v38 = v20(v149, v144, v106);
  if (v104)
  {
    goto LABEL_5;
  }

  if ((v38 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD00000000000002DLL;
    v39[1] = 0x800000021478D220;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = 0x800000021478A360;
    swift_willThrow();

LABEL_5:
    sub_213FDC6BC(a10, a11);
    sub_213FDC6BC(a3, a4);

    v55 = v79;
    v40 = v80;

    v41 = v72;
    v42 = v105;
    sub_213FDC6D0(v72, v105);
    v43 = v83;
    v44 = v99;
    v45 = v87;
    v46 = v88;
    v47 = v76;
    v48 = v77;
    v50 = v73;
    v49 = v74;
    v51 = v78;
LABEL_6:
    *v106 = v51;
    *&v106[8] = v21;
    *&v106[16] = v41;
    *&v106[24] = v42;
    v106[32] = v159;
    *&v106[33] = *v156;
    *&v106[36] = *&v156[3];
    *&v106[40] = v44;
    *&v106[48] = v49;
    *&v106[56] = v47;
    *&v106[64] = v50;
    v106[72] = v158;
    *&v106[73] = *v155;
    *&v106[76] = *&v155[3];
    *&v106[80] = v98;
    *&v106[88] = v100;
    *&v106[96] = v102;
    *&v106[104] = v101;
    v106[112] = v55;
    *&v106[116] = *&v154[3];
    *&v106[113] = *v154;
    *&v106[120] = v43;
    *&v106[128] = v94;
    *&v106[136] = v96;
    *&v106[144] = v95;
    v106[152] = v40;
    *&v106[153] = *v153;
    *&v106[156] = *&v153[3];
    *&v106[160] = v91;
    *&v106[168] = v45;
    *&v106[176] = v46;
    *&v106[184] = v48;
    v106[192] = v90;
    memcpy(&v106[193], __src, 0x177uLL);
    v107 = a14;
    v108 = a15 & 1;
    *v109 = v152[0];
    *&v109[3] = *(v152 + 3);
    v110 = v81;
    v111 = v86;
    v112 = v84;
    v113 = v85;
    v114 = v82;
    v125 = *&v147[160];
    v126 = *&v147[176];
    v127 = *&v147[192];
    v128 = *&v147[208];
    v121 = *&v147[96];
    v122 = *&v147[112];
    v123 = *&v147[128];
    v124 = *&v147[144];
    v117 = *&v147[32];
    v118 = *&v147[48];
    v119 = *&v147[64];
    v120 = *&v147[80];
    v115 = *v147;
    v116 = *&v147[16];
    v129 = a18;
    v130 = v150;
    v131 = v151;
    v132 = a19;
    v133 = a20 & 1;
    sub_2142E6E50(v106);
    return result;
  }

  sub_213FDC6D0(v72, v105);

  sub_213FDC6D0(v72, v105);
  *v106 = v99;
  *&v106[8] = v74;
  *&v106[16] = v76;
  *&v106[24] = v73;
  v106[32] = v158;

  sub_21404F7E0(v76, v73);
  sub_214032118(a3, a4, 2, 0xD00000000000002BLL, 0x800000021478D250, 0xD00000000000001CLL, 0x800000021478A360);

  v53 = *v106;
  v54 = *&v106[16];
  v158 = v106[32];

  sub_214032564(v76, v73);
  *v149 = a5;
  *&v149[8] = a6;
  LOBYTE(v144[0]) = v79;
  *v106 = 0xD000000000000029;
  *&v106[8] = 0x800000021478D280;
  *&v106[16] = 0xD00000000000001CLL;
  *&v106[24] = 0x800000021478A360;
  v55 = v79;

  sub_213FDC9D0(v102, v101);
  v56 = v98(v149, v144, v106);
  v43 = v83;
  v40 = v80;
  if ((v56 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v58 = 0xD000000000000029;
    v58[1] = 0x800000021478D280;
    v58[2] = 0xD00000000000001CLL;
    v58[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a10, a11);

    sub_213FDC6BC(a3, a4);
    v46 = v88;

    sub_213FDC6D0(v102, v101);
    v42 = *(&v103 + 1);
    v41 = v103;
    v49 = *(&v53 + 1);
    v50 = *(&v54 + 1);
    v47 = v54;
LABEL_10:
    v51 = v78;
    v44 = v53;
    v48 = v77;
    v45 = v87;
    goto LABEL_6;
  }

  sub_213FDC6D0(v102, v101);

  sub_213FDC6D0(v102, v101);
  *v149 = a7;
  *&v149[8] = a8;
  LOBYTE(v144[0]) = v80;
  *v106 = 0xD00000000000002BLL;
  *&v106[8] = 0x800000021478D2B0;
  *&v106[16] = 0xD00000000000001CLL;
  *&v106[24] = 0x800000021478A360;

  sub_213FDC9D0(v96, v95);
  v57 = v83(v149, v144, v106);
  if ((v57 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v59 = 0xD00000000000002BLL;
    v59[1] = 0x800000021478D2B0;
    v59[2] = 0xD00000000000001CLL;
    v59[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a10, a11);

    sub_213FDC6BC(a3, a4);
    v41 = v103;
    v46 = v88;

    sub_213FDC6D0(v96, v95);
    v42 = *(&v103 + 1);
    v49 = *(&v53 + 1);
    v50 = *(&v54 + 1);
    v47 = v54;
    v101 = a6;
    v102 = a5;
    goto LABEL_10;
  }

  sub_213FDC6D0(v96, v95);

  sub_213FDC6D0(v96, v95);
  *v106 = v91;
  *&v106[8] = v87;
  *&v106[16] = v88;
  *&v106[24] = v77;
  v106[32] = v90;

  sub_21404F7E0(v88, v77);
  sub_214032118(a10, a11, 2, 0xD000000000000021, 0x800000021478D2E0, 0xD00000000000001CLL, 0x800000021478A360);

  v75 = *&v106[8];
  v91 = *v106;
  v60 = *&v106[16];
  v90 = v106[32];

  sub_214032564(v88, v77);
  *v149 = a16;
  LOBYTE(v144[0]) = v82;
  *v106 = 0xD000000000000030;
  *&v106[8] = 0x800000021478D310;
  *&v106[16] = 0xD00000000000001CLL;
  *&v106[24] = 0x800000021478A360;

  sub_213FDC9D0(v84, v85);
  v61 = v81(v149, v144, v106);
  if ((v61 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v68 = 0xD000000000000030;
    v68[1] = 0x800000021478D310;
    v68[2] = 0xD00000000000001CLL;
    v68[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a10, a11);
    sub_213FDC6BC(a3, a4);

    sub_213FDC6D0(v84, v85);
    v42 = *(&v103 + 1);
    v49 = *(&v53 + 1);
    v50 = *(&v54 + 1);
    v47 = v54;
    v101 = a6;
    v102 = a5;
    v95 = a8;
    v96 = a7;
    v41 = v103;
    v45 = v75;
    v48 = *(&v60 + 1);
    v46 = v60;
    v51 = v78;
    v44 = v53;
    goto LABEL_6;
  }

  sub_213FDC6D0(v84, v85);
  sub_213FDC6BC(a10, a11);
  sub_213FDC6BC(a3, a4);

  sub_213FDC6D0(v84, v85);
  *a9 = v78;
  *(a9 + 8) = v21;
  *(a9 + 16) = v103;
  *(a9 + 32) = v159;
  *(a9 + 33) = *v156;
  *(a9 + 36) = *&v156[3];
  *(a9 + 40) = v53;
  *(a9 + 56) = v54;
  *(a9 + 72) = v158;
  *(a9 + 73) = *v155;
  *(a9 + 76) = *&v155[3];
  *(a9 + 80) = v98;
  *(a9 + 88) = v100;
  *(a9 + 96) = a5;
  *(a9 + 104) = a6;
  *(a9 + 112) = v79;
  *(a9 + 116) = *&v154[3];
  *(a9 + 113) = *v154;
  *(a9 + 120) = v83;
  *(a9 + 128) = v94;
  *(a9 + 136) = a7;
  *(a9 + 144) = a8;
  *(a9 + 152) = v80;
  *(a9 + 156) = *&v153[3];
  *(a9 + 153) = *v153;
  *(a9 + 160) = v91;
  *(a9 + 168) = v75;
  *(a9 + 176) = v60;
  *(a9 + 192) = v90;
  memcpy((a9 + 193), __src, 0x177uLL);
  *(a9 + 568) = a14;
  *(a9 + 576) = a15 & 1;
  *(a9 + 577) = v152[0];
  *(a9 + 580) = *(v152 + 3);
  *(a9 + 584) = v81;
  *(a9 + 592) = v86;
  *(a9 + 600) = a16;
  *(a9 + 616) = v82;
  v62 = *&v147[176];
  *(a9 + 777) = *&v147[160];
  *(a9 + 793) = v62;
  *(a9 + 809) = *&v147[192];
  *(a9 + 825) = *&v147[208];
  v63 = *&v147[112];
  *(a9 + 713) = *&v147[96];
  *(a9 + 729) = v63;
  v64 = *&v147[144];
  *(a9 + 745) = *&v147[128];
  *(a9 + 761) = v64;
  v65 = *&v147[48];
  *(a9 + 649) = *&v147[32];
  *(a9 + 665) = v65;
  v66 = *&v147[80];
  *(a9 + 681) = *&v147[64];
  *(a9 + 697) = v66;
  result = *v147;
  v67 = *&v147[16];
  *(a9 + 617) = *v147;
  *(a9 + 633) = v67;
  *(a9 + 833) = a18;
  *(a9 + 834) = v150;
  *(a9 + 838) = v151;
  *(a9 + 840) = a19;
  *(a9 + 848) = a20 & 1;
  return result;
}

unint64_t sub_2140E6818(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v6 = 0xD000000000000010;
      if (a1 != 10)
      {
        v6 = 0xD000000000000029;
      }

      if (a1 == 9)
      {
        return 0xD000000000000010;
      }

      else
      {
        return v6;
      }
    }

    else
    {
      v5 = 0xD000000000000014;
      if (a1 != 7)
      {
        v5 = 0xD000000000000017;
      }

      if (a1 == 6)
      {
        return 0xD000000000000010;
      }

      else
      {
        return v5;
      }
    }
  }

  else
  {
    v1 = 0x617461646174656DLL;
    v2 = 0xD000000000000012;
    if (a1 != 4)
    {
      v1 = 0x7974697669746361;
    }

    if (a1 == 3)
    {
      v1 = 0xD000000000000012;
    }

    v3 = 0xD000000000000014;
    if (a1 != 1)
    {
      v2 = 0xD000000000000010;
    }

    if (a1)
    {
      v3 = v2;
    }

    if (a1 <= 2u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2140E69B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21435F280(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2140E69DC(uint64_t a1)
{
  v2 = sub_2142E6EA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140E6A18(uint64_t a1)
{
  v2 = sub_2142E6EA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140E6A54(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v307 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905BF8, &unk_2146F4010);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v71 - v6;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2142E6EA4();
  sub_2146DAA08();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v126[0]) = 0;
  v8 = sub_2142E12FC();
  sub_2146DA1C8();
  v123 = v8;
  v124 = v5;
  v125 = v2;
  v9 = v7;
  v10 = v127;
  v11 = v128;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v126[0]) = 1;
  sub_2142E1278();
  sub_2146DA1C8();
  v122 = v11;
  v120 = v10;
  v121 = v127;
  v12 = v128;
  LOBYTE(v126[0]) = 2;
  sub_2146DA1C8();
  v118 = v12;
  v119 = v4;
  v14 = v127;
  v15 = v128;
  LOBYTE(v126[0]) = 3;
  sub_2146DA1C8();
  v16 = v14;
  v117 = v127;
  v17 = v128;
  LOBYTE(v126[0]) = 4;
  sub_2146DA1C8();
  v115 = v16;
  v116 = v17;
  v18 = v127;
  v19 = v128;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905C08, &unk_2147738C0);
  v289 = 5;
  sub_2142E6EF8();
  sub_2146DA1C8();
  v113 = v15;
  v114 = v18;
  v112 = v19;
  v286 = v296;
  v287 = v297;
  *v288 = v298[0];
  *&v288[9] = *(v298 + 9);
  v282 = v292;
  v283 = v293;
  v284 = v294;
  v285 = v295;
  v280 = v290;
  v281 = v291;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AD0, &unk_214759900);
  v267 = 6;
  sub_2142E61A4();
  sub_2146DA1C8();
  v265 = v278;
  *v266 = v279[0];
  *&v266[9] = *(v279 + 9);
  v261 = v274;
  v262 = v275;
  v264 = v277;
  v263 = v276;
  v257 = v270;
  v258 = v271;
  v260 = v273;
  v259 = v272;
  v256 = v269;
  v255 = v268;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v126[0]) = 7;
  v111 = sub_2142E35EC();
  sub_2146DA1C8();
  v110 = v127;
  LODWORD(v109) = v128;
  LOBYTE(v126[0]) = 8;
  sub_2146DA1C8();
  v20 = v127;
  v123 = v128;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905C20, &qword_2146F4020);
  v240 = 9;
  sub_2142E6FD0();
  v21 = v119;
  v22 = v9;
  sub_2146DA1C8();
  v236 = v251;
  v237 = v252;
  v238 = v253;
  v239 = v254;
  v232 = v247;
  v233 = v248;
  v234 = v249;
  v235 = v250;
  v228 = v243;
  v229 = v244;
  v230 = v245;
  v231 = v246;
  v226 = v241;
  v227 = v242;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v126[0]) = 10;
  sub_2142E1378();
  sub_2146DA1C8();
  v107 = v127;
  v223 = 11;
  sub_2146DA1C8();
  v111 = 0;
  v78 = v224;
  v106 = v225;
  sub_213FB2E54(&v280, &v127, &qword_27C905C08, &unk_2147738C0);
  sub_213FB2E54(&v255, &v127, &qword_27C905AD0, &unk_214759900);
  sub_213FB2E54(&v226, &v127, &qword_27C905C20, &qword_2146F4020);
  sub_21465335C(&v127);
  v105 = v127;
  v108 = v128;
  v75 = v130;
  v76 = v129;
  v104 = v131;
  sub_214653390(v126);
  v99 = v126[0];
  v102 = v126[1];
  v103 = v126[2];
  v101 = v126[3];
  v100 = LOBYTE(v126[4]);
  sub_2146533CC(&v213);
  v94 = v213;
  v98 = v215;
  v96 = v214;
  v97 = v216;
  v95 = v217;
  sub_214653518(v211);
  v89 = v211[0];
  v93 = v211[2];
  v91 = v211[1];
  v92 = v211[3];
  v90 = v212;
  sub_214653664(v209);
  v85 = v209[0];
  v86 = v209[1];
  v87 = v209[3];
  v88 = v209[2];
  v84 = v210;
  sub_2146537D8(v207);
  *(&v222[6] + 7) = v286;
  *(&v222[7] + 7) = v287;
  *(&v222[8] + 7) = *v288;
  v222[9] = *&v288[9];
  *(&v222[2] + 7) = v282;
  *(&v222[3] + 7) = v283;
  *(&v222[4] + 7) = v284;
  *(&v222[5] + 7) = v285;
  *(v222 + 7) = v280;
  *(&v222[1] + 7) = v281;
  *(&v221[9] + 7) = v264;
  *(&v221[10] + 7) = v265;
  *(&v221[11] + 7) = *v266;
  v221[12] = *&v266[9];
  *(&v221[5] + 7) = v260;
  *(&v221[6] + 7) = v261;
  *(&v221[7] + 7) = v262;
  *(&v221[8] + 7) = v263;
  *(&v221[1] + 7) = v256;
  *(&v221[2] + 7) = v257;
  *(&v221[3] + 7) = v258;
  *(&v221[4] + 7) = v259;
  *(v221 + 7) = v255;
  *&v219[167] = v236;
  *&v219[183] = v237;
  *&v219[199] = v238;
  *&v219[103] = v232;
  *&v219[119] = v233;
  *&v219[135] = v234;
  *&v219[151] = v235;
  *&v219[39] = v228;
  *&v219[55] = v229;
  *&v219[71] = v230;
  *&v219[87] = v231;
  *&v219[7] = v226;
  v79 = v207[0];
  v81 = v207[2];
  v82 = v207[3];
  v83 = v207[1];
  v80 = v208;
  v220 = v109;
  v219[215] = v239;
  *&v219[23] = v227;
  v218 = v106;
  v77 = v109;
  v126[0] = v120;
  v126[1] = v122;
  LOBYTE(v213) = v104;
  v127 = 0xD00000000000002DLL;
  v128 = 0x800000021478D220;
  v129 = 0xD00000000000001CLL;
  v109 = 0x800000021478A360;
  v130 = 0x800000021478A360;

  v23 = v76;
  v24 = v75;
  sub_213FDC9D0(v76, v75);
  v25 = v111;
  v26 = v105(v126, &v213, &v127);
  v111 = v25;
  if (v25)
  {

LABEL_10:

    sub_213FDC6BC(v114, v112);
    sub_213FDC6BC(v121, v118);

    sub_213FB2DF4(&v280, &qword_27C905C08, &unk_2147738C0);
    sub_213FB2DF4(&v255, &qword_27C905AD0, &unk_214759900);
    sub_213FB2DF4(&v226, &qword_27C905C20, &qword_2146F4020);
    (*(v124 + 8))(v9, v21);

    sub_213FDC6D0(v23, v24);
    goto LABEL_11;
  }

  if ((v26 & 1) == 0)
  {
    sub_214031C4C();
    v33 = swift_allocError();
    *v34 = 0xD00000000000002DLL;
    v34[1] = 0x800000021478D220;
    v35 = v109;
    v34[2] = 0xD00000000000001CLL;
    v34[3] = v35;
    v111 = v33;
    swift_willThrow();
    goto LABEL_10;
  }

  sub_213FDC6D0(v23, v24);

  sub_213FDC6D0(v23, v24);
  v127 = v99;
  v27 = v103;
  v128 = v102;
  v129 = v103;
  v28 = v101;
  v130 = v101;
  v131 = v100;

  sub_21404F7E0(v27, v28);
  v29 = v111;
  sub_214032118(v121, v118, 2, 0xD00000000000002BLL, 0x800000021478D250, 0xD00000000000001CLL, v109);
  v111 = v29;
  if (v29)
  {

    sub_213FDC6BC(v114, v112);
    sub_213FDC6BC(v121, v118);

    sub_213FB2DF4(&v280, &qword_27C905C08, &unk_2147738C0);
    sub_213FB2DF4(&v255, &qword_27C905AD0, &unk_214759900);
    sub_213FB2DF4(&v226, &qword_27C905C20, &qword_2146F4020);
    (*(v124 + 8))(v22, v21);
    v99 = v127;
    v30 = v128;
    v31 = v129;
    v32 = v130;
    v100 = v131;

    sub_214032564(v103, v101);
    v23 = v120;
    v24 = v122;
    v102 = v30;
    v103 = v31;
    v101 = v32;
    goto LABEL_11;
  }

  v36 = v109;

  v99 = v127;
  v74 = v128;
  v75 = v129;
  v76 = v130;
  v100 = v131;

  sub_214032564(v103, v101);
  v126[0] = v115;
  v126[1] = v113;
  LOBYTE(v213) = v95;
  v127 = 0xD000000000000029;
  v128 = 0x800000021478D280;
  v129 = 0xD00000000000001CLL;
  v130 = v36;

  sub_213FDC9D0(v98, v97);
  v37 = v111;
  v38 = v94(v126, &v213, &v127);
  v111 = v37;
  if (v37)
  {

LABEL_19:

    sub_213FDC6BC(v114, v112);
    sub_213FDC6BC(v121, v118);

    sub_213FB2DF4(&v280, &qword_27C905C08, &unk_2147738C0);
    sub_213FB2DF4(&v255, &qword_27C905AD0, &unk_214759900);
    sub_213FB2DF4(&v226, &qword_27C905C20, &qword_2146F4020);
    (*(v124 + 8))(v22, v21);

    sub_213FDC6D0(v98, v97);
    v23 = v120;
    v24 = v122;
    v102 = v74;
    v103 = v75;
    v101 = v76;
    goto LABEL_11;
  }

  if ((v38 & 1) == 0)
  {
    sub_214031C4C();
    v44 = swift_allocError();
    *v45 = 0xD000000000000029;
    v45[1] = 0x800000021478D280;
    v46 = v109;
    v45[2] = 0xD00000000000001CLL;
    v45[3] = v46;
    v111 = v44;
    swift_willThrow();
    goto LABEL_19;
  }

  v40 = v97;
  v39 = v98;
  sub_213FDC6D0(v98, v97);
  v41 = v109;

  sub_213FDC6D0(v39, v40);
  v126[0] = v117;
  v126[1] = v116;
  LOBYTE(v213) = v90;
  v127 = 0xD00000000000002BLL;
  v128 = 0x800000021478D2B0;
  v129 = 0xD00000000000001CLL;
  v130 = v41;

  sub_213FDC9D0(v93, v92);
  v42 = v111;
  v43 = v89(v126, &v213, &v127);
  v111 = v42;
  if (v42)
  {

LABEL_24:

    sub_213FDC6BC(v114, v112);
    sub_213FDC6BC(v121, v118);

    sub_213FB2DF4(&v280, &qword_27C905C08, &unk_2147738C0);
    sub_213FB2DF4(&v255, &qword_27C905AD0, &unk_214759900);
    sub_213FB2DF4(&v226, &qword_27C905C20, &qword_2146F4020);
    (*(v124 + 8))(v22, v21);

    sub_213FDC6D0(v93, v92);
    v23 = v120;
    v24 = v122;
    v102 = v74;
    v103 = v75;
    v101 = v76;
    v97 = v113;
    v98 = v115;
    goto LABEL_11;
  }

  if ((v43 & 1) == 0)
  {
    sub_214031C4C();
    v56 = swift_allocError();
    *v57 = 0xD00000000000002BLL;
    v57[1] = 0x800000021478D2B0;
    v58 = v109;
    v57[2] = 0xD00000000000001CLL;
    v57[3] = v58;
    v111 = v56;
    swift_willThrow();
    goto LABEL_24;
  }

  v48 = v92;
  v47 = v93;
  sub_213FDC6D0(v93, v92);
  v49 = v109;

  sub_213FDC6D0(v47, v48);
  v127 = v85;
  v128 = v86;
  v50 = v87;
  v51 = v88;
  v129 = v88;
  v130 = v87;
  v131 = v84;

  sub_21404F7E0(v51, v50);
  v52 = v111;
  sub_214032118(v114, v112, 2, 0xD000000000000021, 0x800000021478D2E0, 0xD00000000000001CLL, v49);
  v111 = v52;
  if (v52)
  {

    sub_213FDC6BC(v114, v112);
    sub_213FDC6BC(v121, v118);

    sub_213FB2DF4(&v280, &qword_27C905C08, &unk_2147738C0);
    sub_213FB2DF4(&v255, &qword_27C905AD0, &unk_214759900);
    sub_213FB2DF4(&v226, &qword_27C905C20, &qword_2146F4020);
    (*(v124 + 8))(v22, v21);
    v85 = v127;
    v53 = v128;
    v54 = v129;
    v55 = v130;
    v84 = v131;

    sub_214032564(v88, v87);
    v23 = v120;
    v24 = v122;
    v102 = v74;
    v103 = v75;
    v101 = v76;
    v97 = v113;
    v98 = v115;
    v92 = v116;
    v93 = v117;
    v86 = v53;
    v87 = v55;
    v88 = v54;
  }

  else
  {
    v59 = v109;

    v85 = v127;
    v71 = v129;
    v72 = v128;
    v73 = v130;
    v84 = v131;

    sub_214032564(v88, v87);
    v213 = v20;
    v214 = v123;
    LOBYTE(v126[0]) = v80;
    v127 = 0xD000000000000030;
    v128 = 0x800000021478D310;
    v129 = 0xD00000000000001CLL;
    v130 = v59;

    sub_213FDC9D0(v81, v82);
    v60 = v111;
    v61 = v79(&v213, v126, &v127);
    v111 = v60;
    if (v60)
    {
    }

    else
    {
      if (v61)
      {
        v63 = v81;
        v62 = v82;
        sub_213FDC6D0(v81, v82);

        sub_213FDC6BC(v114, v112);
        sub_213FDC6BC(v121, v118);

        sub_213FB2DF4(&v280, &qword_27C905C08, &unk_2147738C0);
        sub_213FB2DF4(&v255, &qword_27C905AD0, &unk_214759900);
        sub_213FB2DF4(&v226, &qword_27C905C20, &qword_2146F4020);
        (*(v124 + 8))(v22, v21);

        sub_213FDC6D0(v63, v62);
        *(&v126[70] + 1) = *v302;
        *(&v126[72] + 1) = *v301;
        *(&v126[104] + 2) = v299;
        *(&v126[4] + 1) = v306[0];
        HIDWORD(v126[4]) = *(v306 + 3);
        *(&v126[9] + 1) = *v305;
        HIDWORD(v126[9]) = *&v305[3];
        *(&v126[14] + 1) = *v304;
        HIDWORD(v126[14]) = *&v304[3];
        *(&v126[19] + 1) = *v303;
        HIDWORD(v126[19]) = *&v303[3];
        *(&v126[40] + 1) = v222[8];
        *(&v126[42] + 1) = v222[9];
        *(&v126[36] + 1) = v222[6];
        *(&v126[38] + 1) = v222[7];
        *(&v126[32] + 1) = v222[4];
        *(&v126[34] + 1) = v222[5];
        *(&v126[30] + 1) = v222[3];
        *(&v126[28] + 1) = v222[2];
        *(&v126[26] + 1) = v222[1];
        *(&v126[24] + 1) = v222[0];
        *(&v126[64] + 1) = v221[10];
        *(&v126[66] + 1) = v221[11];
        *(&v126[68] + 1) = v221[12];
        *(&v126[56] + 1) = v221[6];
        *(&v126[58] + 1) = v221[7];
        *(&v126[60] + 1) = v221[8];
        *(&v126[62] + 1) = v221[9];
        *(&v126[48] + 1) = v221[2];
        *(&v126[50] + 1) = v221[3];
        *(&v126[52] + 1) = v221[4];
        *(&v126[54] + 1) = v221[5];
        *(&v126[44] + 1) = v221[0];
        *(&v126[46] + 1) = v221[1];
        HIDWORD(v126[70]) = *&v302[3];
        HIDWORD(v126[72]) = *&v301[3];
        *(&v126[103] + 1) = *&v219[208];
        *(&v126[77] + 1) = *v219;
        *(&v126[79] + 1) = *&v219[16];
        *(&v126[85] + 1) = *&v219[64];
        *(&v126[87] + 1) = *&v219[80];
        *(&v126[81] + 1) = *&v219[32];
        *(&v126[83] + 1) = *&v219[48];
        *(&v126[93] + 1) = *&v219[128];
        *(&v126[95] + 1) = *&v219[144];
        *(&v126[89] + 1) = *&v219[96];
        *(&v126[91] + 1) = *&v219[112];
        *(&v126[99] + 1) = *&v219[176];
        *(&v126[101] + 1) = *&v219[192];
        *(&v126[97] + 1) = *&v219[160];
        HIWORD(v126[104]) = v300;
        v64 = v108;
        v126[0] = v105;
        v126[1] = v108;
        v65 = v120;
        v66 = v122;
        v126[2] = v120;
        v126[3] = v122;
        LOBYTE(v126[4]) = v104;
        v126[5] = v99;
        v126[6] = v74;
        v126[7] = v75;
        v126[8] = v76;
        LOBYTE(v126[9]) = v100;
        v126[10] = v94;
        v126[11] = v96;
        v126[12] = v115;
        v126[13] = v113;
        LOBYTE(v126[14]) = v95;
        v126[15] = v89;
        v126[16] = v91;
        v126[17] = v117;
        v126[18] = v116;
        LOBYTE(v126[19]) = v90;
        v126[20] = v85;
        v67 = v71;
        v126[21] = v72;
        v126[22] = v71;
        v126[23] = v73;
        LOBYTE(v126[24]) = v84;
        v126[71] = v110;
        LOBYTE(v126[72]) = v77;
        v126[73] = v79;
        v126[74] = v83;
        v126[75] = v20;
        v126[76] = v123;
        LOBYTE(v126[77]) = v80;
        BYTE1(v126[104]) = v107;
        v126[105] = v78;
        LOBYTE(v126[106]) = v106;
        memcpy(v307, v126, 0x351uLL);
        sub_2142E70A8(v126, &v127);
        __swift_destroy_boxed_opaque_existential_1(v125);
        v127 = v105;
        v128 = v64;
        v129 = v65;
        v130 = v66;
        v131 = v104;
        v133 = v99;
        v134 = v74;
        v135 = v75;
        v136 = v76;
        v137 = v100;
        *v132 = v306[0];
        *&v132[3] = *(v306 + 3);
        *v138 = *v305;
        *&v138[3] = *&v305[3];
        v139 = v94;
        v140 = v96;
        v141 = v115;
        v142 = v113;
        v143 = v95;
        *v144 = *v304;
        *&v144[3] = *&v304[3];
        v145 = v89;
        v146 = v91;
        v147 = v117;
        v148 = v116;
        v149 = v90;
        *v150 = *v303;
        *&v150[3] = *&v303[3];
        v151 = v85;
        v152 = v72;
        v153 = v67;
        v154 = v73;
        v155 = v84;
        v164 = v222[8];
        v165 = v222[9];
        v162 = v222[6];
        v163 = v222[7];
        v160 = v222[4];
        v161 = v222[5];
        v159 = v222[3];
        v158 = v222[2];
        v157 = v222[1];
        v156 = v222[0];
        v176 = v221[10];
        v177 = v221[11];
        v178 = v221[12];
        v172 = v221[6];
        v173 = v221[7];
        v174 = v221[8];
        v175 = v221[9];
        v168 = v221[2];
        v169 = v221[3];
        v170 = v221[4];
        v171 = v221[5];
        v166 = v221[0];
        v167 = v221[1];
        *v179 = *v302;
        *&v179[3] = *&v302[3];
        v180 = v110;
        v181 = v77;
        *v182 = *v301;
        *&v182[3] = *&v301[3];
        v183 = v79;
        v184 = v83;
        v185 = v20;
        v186 = v123;
        v187 = v80;
        v188 = *v219;
        v189 = *&v219[16];
        v192 = *&v219[64];
        v193 = *&v219[80];
        v190 = *&v219[32];
        v191 = *&v219[48];
        v196 = *&v219[128];
        v197 = *&v219[144];
        v194 = *&v219[96];
        v195 = *&v219[112];
        v201 = *&v219[208];
        v199 = *&v219[176];
        v200 = *&v219[192];
        v198 = *&v219[160];
        v202 = v107;
        goto LABEL_12;
      }

      sub_214031C4C();
      v68 = swift_allocError();
      *v69 = 0xD000000000000030;
      v69[1] = 0x800000021478D310;
      v70 = v109;
      v69[2] = 0xD00000000000001CLL;
      v69[3] = v70;
      v111 = v68;
      swift_willThrow();
    }

    sub_213FDC6BC(v114, v112);
    sub_213FDC6BC(v121, v118);

    sub_213FB2DF4(&v280, &qword_27C905C08, &unk_2147738C0);
    sub_213FB2DF4(&v255, &qword_27C905AD0, &unk_214759900);
    sub_213FB2DF4(&v226, &qword_27C905C20, &qword_2146F4020);
    (*(v124 + 8))(v22, v21);

    sub_213FDC6D0(v81, v82);
    v23 = v120;
    v24 = v122;
    v102 = v74;
    v103 = v75;
    v101 = v76;
    v97 = v113;
    v98 = v115;
    v92 = v116;
    v93 = v117;
    v88 = v71;
    v86 = v72;
    v87 = v73;
  }

LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v125);
  v127 = v105;
  v128 = v108;
  v129 = v23;
  v130 = v24;
  v131 = v104;
  v133 = v99;
  v134 = v102;
  v135 = v103;
  v136 = v101;
  *v132 = v306[0];
  *&v132[3] = *(v306 + 3);
  v137 = v100;
  *v138 = *v305;
  *&v138[3] = *&v305[3];
  v139 = v94;
  v140 = v96;
  v141 = v98;
  v142 = v97;
  v143 = v95;
  *&v144[3] = *&v304[3];
  *v144 = *v304;
  v145 = v89;
  v146 = v91;
  v147 = v93;
  v148 = v92;
  v149 = v90;
  *&v150[3] = *&v303[3];
  *v150 = *v303;
  v151 = v85;
  v152 = v86;
  v153 = v88;
  v154 = v87;
  v155 = v84;
  v160 = v222[4];
  v161 = v222[5];
  v164 = v222[8];
  v165 = v222[9];
  v162 = v222[6];
  v163 = v222[7];
  v157 = v222[1];
  v156 = v222[0];
  v159 = v222[3];
  v158 = v222[2];
  v176 = v221[10];
  v177 = v221[11];
  v178 = v221[12];
  v172 = v221[6];
  v173 = v221[7];
  v174 = v221[8];
  v175 = v221[9];
  v168 = v221[2];
  v169 = v221[3];
  v170 = v221[4];
  v171 = v221[5];
  v166 = v221[0];
  v167 = v221[1];
  *v179 = *v302;
  *&v179[3] = *&v302[3];
  v180 = v110;
  v181 = v77;
  *v182 = *v301;
  *&v182[3] = *&v301[3];
  v183 = v79;
  v184 = v83;
  v185 = v81;
  v186 = v82;
  v187 = v80;
  v188 = *v219;
  v189 = *&v219[16];
  v192 = *&v219[64];
  v193 = *&v219[80];
  v190 = *&v219[32];
  v191 = *&v219[48];
  v196 = *&v219[128];
  v197 = *&v219[144];
  v194 = *&v219[96];
  v195 = *&v219[112];
  v201 = *&v219[208];
  v199 = *&v219[176];
  v200 = *&v219[192];
  v198 = *&v219[160];
  v202 = v107;
LABEL_12:
  v203 = v299;
  v204 = v300;
  v205 = v78;
  v206 = v106;
  return sub_2142E6E50(&v127);
}

uint64_t sub_2140E88A0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905C38, &qword_2146F4028);
  v50 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - v4;
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 56);
  v48 = *(v1 + 64);
  v49 = v8;
  v9 = *(v1 + 96);
  v46 = *(v1 + 104);
  v47 = v9;
  v10 = *(v1 + 136);
  v44 = *(v1 + 144);
  v45 = v10;
  v11 = *(v1 + 176);
  v42 = *(v1 + 184);
  v43 = v11;
  v12 = *(v1 + 312);
  v104 = *(v1 + 296);
  v105 = v12;
  v106[0] = *(v1 + 328);
  *(v106 + 9) = *(v1 + 337);
  v13 = *(v1 + 248);
  v100 = *(v1 + 232);
  v101 = v13;
  v14 = *(v1 + 280);
  v102 = *(v1 + 264);
  v103 = v14;
  v15 = *(v1 + 216);
  v98 = *(v1 + 200);
  v99 = v15;
  v16 = *(v1 + 536);
  v117 = *(v1 + 520);
  v118[0] = v16;
  *(v118 + 9) = *(v1 + 545);
  v17 = *(v1 + 472);
  v113 = *(v1 + 456);
  v114 = v17;
  v18 = *(v1 + 488);
  v116 = *(v1 + 504);
  v115 = v18;
  v19 = *(v1 + 408);
  v109 = *(v1 + 392);
  v110 = v19;
  v20 = *(v1 + 424);
  v112 = *(v1 + 440);
  v111 = v20;
  v21 = *(v1 + 360);
  v108 = *(v1 + 376);
  v107 = v21;
  v41 = *(v1 + 568);
  v40 = *(v1 + 576);
  v22 = *(v1 + 600);
  v38 = *(v1 + 608);
  v39 = v22;
  v23 = *(v1 + 800);
  v129 = *(v1 + 784);
  v130 = v23;
  v131 = *(v1 + 816);
  v132 = *(v1 + 832);
  v24 = *(v1 + 736);
  v125 = *(v1 + 720);
  v126 = v24;
  v25 = *(v1 + 768);
  v127 = *(v1 + 752);
  v128 = v25;
  v26 = *(v1 + 672);
  v121 = *(v1 + 656);
  v122 = v26;
  v27 = *(v1 + 704);
  v123 = *(v1 + 688);
  v124 = v27;
  v28 = *(v1 + 640);
  v119 = *(v1 + 624);
  v120 = v28;
  v37 = *(v1 + 833);
  v36 = *(v1 + 840);
  HIDWORD(v35) = *(v1 + 848);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E6EA4();
  sub_2146DAA28();
  if (v6 != 1)
  {
    *&v57 = v7;
    *(&v57 + 1) = v6;
    LOBYTE(v54[0]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    v29 = v133;
    sub_2146DA388();
    if (v29)
    {
      v30 = *(v50 + 8);
      v31 = v5;
      v32 = v3;
      return v30(v31, v32);
    }

    if (v48 >> 60 != 11)
    {
      *&v57 = v49;
      *(&v57 + 1) = v48;
      LOBYTE(v54[0]) = 1;
      sub_213FDCA18(v49, v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
      sub_2142E1CAC();
      sub_2146DA388();
      sub_213FDC6BC(v57, *(&v57 + 1));
      if (v46 != 1)
      {
        *&v57 = v47;
        *(&v57 + 1) = v46;
        LOBYTE(v54[0]) = 2;
        sub_2146DA388();
        if (v44 != 1)
        {
          *&v57 = v45;
          *(&v57 + 1) = v44;
          LOBYTE(v54[0]) = 3;
          sub_2146DA388();
          if (v42 >> 60 != 11)
          {
            *&v57 = v43;
            *(&v57 + 1) = v42;
            LOBYTE(v54[0]) = 4;
            sub_213FDCA18(v43, v42);
            sub_2146DA388();
            sub_213FDC6BC(v57, *(&v57 + 1));
            v95 = v104;
            v96 = v105;
            v97[0] = v106[0];
            *(v97 + 9) = *(v106 + 9);
            v91 = v100;
            v92 = v101;
            v93 = v102;
            v94 = v103;
            v89 = v98;
            v90 = v99;
            v88 = 5;
            v133 = v5;
            sub_213FB2E54(&v98, &v57, &qword_27C905C08, &unk_2147738C0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905C08, &unk_2147738C0);
            sub_2142E7104();
            sub_2146DA388();
            v86[6] = v95;
            v86[7] = v96;
            *v87 = v97[0];
            *&v87[9] = *(v97 + 9);
            v86[2] = v91;
            v86[3] = v92;
            v86[4] = v93;
            v86[5] = v94;
            v86[0] = v89;
            v86[1] = v90;
            sub_213FB2DF4(v86, &qword_27C905C08, &unk_2147738C0);
            v84 = v117;
            v85[0] = v118[0];
            *(v85 + 9) = *(v118 + 9);
            v80 = v113;
            v81 = v114;
            v82 = v115;
            v83 = v116;
            v76 = v109;
            v77 = v110;
            v78 = v111;
            v79 = v112;
            v74 = v107;
            v75 = v108;
            v73 = 6;
            sub_213FB2E54(&v107, &v57, &qword_27C905AD0, &unk_214759900);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AD0, &unk_214759900);
            sub_2142E6354();
            sub_2146DA388();
            v71[10] = v84;
            *v72 = v85[0];
            *&v72[9] = *(v85 + 9);
            v71[6] = v80;
            v71[7] = v81;
            v71[8] = v82;
            v71[9] = v83;
            v71[2] = v76;
            v71[3] = v77;
            v71[4] = v78;
            v71[5] = v79;
            v71[0] = v74;
            v71[1] = v75;
            sub_213FB2DF4(v71, &qword_27C905AD0, &unk_214759900);
            *&v57 = v41;
            BYTE8(v57) = v40;
            LOBYTE(v54[0]) = 7;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
            sub_2142E37F4();
            sub_2146DA388();
            if (v38 != 1)
            {
              *&v57 = v39;
              *(&v57 + 1) = v38;
              LOBYTE(v54[0]) = 8;
              sub_2146DA388();
              v67 = v129;
              v68 = v130;
              v69 = v131;
              v70 = v132;
              v63 = v125;
              v64 = v126;
              v65 = v127;
              v66 = v128;
              v59 = v121;
              v60 = v122;
              v61 = v123;
              v62 = v124;
              v57 = v119;
              v58 = v120;
              v56 = 9;
              sub_213FB2E54(&v119, v54, &qword_27C905C20, &qword_2146F4020);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905C20, &qword_2146F4020);
              sub_2142E71DC();
              sub_2146DA388();
              v54[10] = v67;
              v54[11] = v68;
              v54[12] = v69;
              v55 = v70;
              v54[6] = v63;
              v54[7] = v64;
              v54[8] = v65;
              v54[9] = v66;
              v54[2] = v59;
              v54[3] = v60;
              v54[4] = v61;
              v54[5] = v62;
              v54[0] = v57;
              v54[1] = v58;
              sub_213FB2DF4(v54, &qword_27C905C20, &qword_2146F4020);
              LOBYTE(v51) = v37;
              v53 = 10;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
              sub_2142E1D30();
              sub_2146DA388();
              v51 = v36;
              v52 = BYTE4(v35);
              v53 = 11;
              v34 = v133;
              sub_2146DA388();
              v30 = *(v50 + 8);
              v31 = v34;
              v32 = v3;
              return v30(v31, v32);
            }
          }
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

void *sub_2140E932C@<X0>(uint64_t (*a1)(void, char *, void *)@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  sub_2146540C8(&v23);
  v10 = v23;
  v11 = v24;
  v12 = v25;
  v13 = v26;
  memcpy(__src + 7, a3, 0x351uLL);
  memcpy(__dst, __src, 0x358uLL);
  v30 = a5 & 1;
  v23 = a1;
  v24 = a2;
  v18 = v27;
  v29[0] = v27;
  __src[0] = 0xD000000000000034;
  __src[1] = 0x800000021478D350;
  __src[2] = 0xD00000000000001CLL;
  __src[3] = 0x800000021478A360;

  sub_213FDC9D0(v12, v13);
  v14 = v10(&v23, v29, __src);
  if (v19)
  {
  }

  else
  {
    if (v14)
    {
      sub_213FDC6D0(v12, v13);

      sub_213FDC6D0(v12, v13);
      *a6 = v10;
      *(a6 + 8) = v11;
      *(a6 + 16) = a1;
      *(a6 + 24) = a2;
      *(a6 + 32) = v18;
      result = memcpy((a6 + 33), __dst, 0x35FuLL);
      *(a6 + 896) = a4;
      *(a6 + 904) = v30;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v16 = 0xD000000000000034;
    v16[1] = 0x800000021478D350;
    v16[2] = 0xD00000000000001CLL;
    v16[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v12, v13);
  __src[0] = v10;
  __src[1] = v11;
  __src[2] = v12;
  __src[3] = v13;
  LOBYTE(__src[4]) = v18;
  memcpy(&__src[4] + 1, __dst, 0x35FuLL);
  __src[112] = a4;
  v22 = v30;
  return sub_2142E72B4(__src);
}

unint64_t sub_2140E9578()
{
  v1 = 0x7974697669746361;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_2140E95D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21435F654(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2140E9600(uint64_t a1)
{
  v2 = sub_2142E7308();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140E963C(uint64_t a1)
{
  v2 = sub_2142E7308();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140E9678(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905C60, &unk_2146F4030);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  v9 = v2[3];
  v61 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v9);
  sub_2142E7308();
  sub_2146DAA08();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(v61);
  }

  v10 = v6;
  v43 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v44[0]) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v11 = v45;
  v12 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905C70, &unk_214759910);
  v58[855] = 1;
  sub_2142E735C();
  sub_2146DA1C8();
  v13 = v10;
  v41 = v11;
  v42 = v12;
  memcpy(v58, v59, 0x351uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  v55[863] = 2;
  sub_2142E35EC();
  sub_2146DA1C8();
  v38 = v56;
  v36 = v57;
  sub_213FB2E54(v58, &v45, &qword_27C905C70, &unk_214759910);
  sub_2146540C8(&v45);
  v40 = v45;
  v15 = v46;
  v16 = v47;
  v17 = v48;
  memcpy(&v55[7], v58, 0x351uLL);
  v54[0] = v41;
  v54[1] = v42;
  v37 = v49;
  LOBYTE(v44[0]) = v49;
  v45 = 0xD000000000000034;
  v34 = 0x800000021478D350;
  v46 = 0x800000021478D350;
  v47 = 0xD00000000000001CLL;
  v48 = 0x800000021478A360;

  v39 = v16;
  v35 = v17;
  sub_213FDC9D0(v16, v17);
  v18 = v15;
  v19 = v40(v54, v44, &v45);
  v20 = v34;
  if (v19)
  {
    v21 = v35;
    sub_213FDC6D0(v39, v35);

    sub_213FB2DF4(v58, &qword_27C905C70, &unk_214759910);
    (*(v13 + 8))(v8, v5);
    v22 = v15;

    sub_213FDC6D0(v39, v21);
    v24 = v40;
    v23 = v41;
    v44[0] = v40;
    v44[1] = v18;
    v25 = v42;
    v44[2] = v41;
    v44[3] = v42;
    v26 = v37;
    LOBYTE(v44[4]) = v37;
    memcpy(&v44[4] + 1, v55, 0x358uLL);
    v27 = v38;
    v44[112] = v38;
    v28 = v36;
    LOBYTE(v44[113]) = v36;
    memcpy(v43, v44, 0x389uLL);
    sub_2142E7434(v44, &v45);
    __swift_destroy_boxed_opaque_existential_1(v61);
    v45 = v24;
    v46 = v22;
    v47 = v23;
    v48 = v25;
    v49 = v26;
    memcpy(v50, v55, sizeof(v50));
    v52 = v27;
    v53 = v28;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v29 = 0xD000000000000034;
    v29[1] = v20;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v58, &qword_27C905C70, &unk_214759910);
    (*(v13 + 8))(v8, v5);
    v30 = v15;

    v31 = v39;
    v32 = v35;
    sub_213FDC6D0(v39, v35);
    __swift_destroy_boxed_opaque_existential_1(v61);
    v45 = v40;
    v46 = v30;
    v47 = v31;
    v48 = v32;
    v49 = v37;
    memcpy(v50, v55, sizeof(v50));
    *v51 = v60[0];
    *&v51[3] = *(v60 + 3);
    v52 = v38;
    v53 = v36;
  }

  return sub_2142E72B4(&v45);
}

uint64_t sub_2140E9C54(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905C88, &qword_2146F4040);
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  memcpy(v18, (v1 + 40), 0x351uLL);
  v11 = *(v1 + 896);
  HIDWORD(v10) = *(v1 + 904);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E7308();
  sub_2146DAA28();
  if (v7 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v17[0] = v6;
    v17[1] = v7;
    v16[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    v8 = v12;
    sub_2146DA388();
    if (!v8)
    {
      memcpy(v17, v18, 0x351uLL);
      v16[855] = 1;
      sub_213FB2E54(v18, v16, &qword_27C905C70, &unk_214759910);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905C70, &unk_214759910);
      sub_2142E7490();
      sub_2146DA388();
      memcpy(v16, v17, 0x351uLL);
      sub_213FB2DF4(v16, &qword_27C905C70, &unk_214759910);
      v14 = v11;
      v15 = BYTE4(v10);
      v13 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
      sub_2142E37F4();
      sub_2146DA388();
    }

    return (*(v19 + 8))(v5, v3);
  }

  return result;
}

__n128 sub_2140E9F84@<Q0>(uint64_t (*a1)(void, void *, _BYTE *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t (*a11)(void, void *, _BYTE *), uint64_t a12, __int128 *a13, uint64_t a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_21465423C(&v131);
  v20 = v131;
  v21 = v132;
  v22 = v133;
  v23 = v134;
  v24 = v135;
  sub_214654270(v129);
  v98 = v129[0];
  v81 = v129[2];
  v78 = v129[1];
  v79 = v129[3];
  v102 = v130;
  sub_2146543E4(v127);
  v93 = v127[0];
  v97 = v127[2];
  v82 = v127[1];
  v83 = v127[3];
  v100 = v128;
  sub_214654420(v125);
  v25 = a13[8];
  *&v104[151] = a13[9];
  v26 = a13[11];
  *&v104[167] = a13[10];
  *&v104[183] = v26;
  *&v104[192] = *(a13 + 185);
  v27 = a13[4];
  *&v104[87] = a13[5];
  v28 = a13[7];
  *&v104[103] = a13[6];
  *&v104[119] = v28;
  *&v104[135] = v25;
  v29 = *a13;
  *&v104[23] = a13[1];
  v30 = a13[3];
  *&v104[39] = a13[2];
  *&v104[55] = v30;
  v88 = v125[1];
  v94 = v125[2];
  v91 = v125[0];
  v92 = v125[3];
  v138 = a10 & 1;
  *&v104[71] = v27;
  *&v104[7] = v29;
  v137 = a15 & 1;
  v136 = a20 & 1;
  v84 = v126;
  v155 = *&v104[160];
  v156 = *&v104[176];
  v157[0] = *&v104[192];
  v151 = *&v104[96];
  v152 = *&v104[112];
  v154 = *&v104[144];
  v153 = *&v104[128];
  v147 = *&v104[32];
  v148 = *&v104[48];
  v150 = *&v104[80];
  v149 = *&v104[64];
  v145 = *v104;
  v146 = *&v104[16];
  v85 = v24;
  v131 = a1;
  v132 = a2;
  LOBYTE(v129[0]) = v24;
  *v104 = 0xD00000000000001ELL;
  *&v104[8] = 0x800000021478D390;
  *&v104[16] = 0xD00000000000001CLL;
  *&v104[24] = 0x800000021478A360;

  v31 = v22;
  v76 = v23;
  sub_213FDC9D0(v22, v23);
  v32 = v21;
  v33 = v158;
  v34 = v20(&v131, v129, v104);
  v35 = v20;
  v158 = v33;
  if (v33)
  {
    sub_213FDC6BC(a5, a6);
    sub_213FDC6BC(a3, a4);
LABEL_7:

    v54 = v32;
    v38 = v98;

    v41 = v31;
    v42 = v76;
    sub_213FDC6D0(v31, v76);
    v46 = v84;
    v47 = v93;
    v48 = v97;
    v50 = v82;
    v49 = v83;
    v44 = v81;
    v45 = v79;
    v43 = v78;
    goto LABEL_8;
  }

  if ((v34 & 1) == 0)
  {
    sub_214031C4C();
    v51 = swift_allocError();
    *v52 = 0xD00000000000001ELL;
    v52[1] = 0x800000021478D390;
    v52[2] = 0xD00000000000001CLL;
    v52[3] = 0x800000021478A360;
    v158 = v51;
    swift_willThrow();

    sub_213FDC6BC(a5, a6);
    sub_213FDC6BC(a3, a4);
    goto LABEL_7;
  }

  v74 = v20;
  sub_213FDC6D0(v22, v76);

  v73 = v32;

  sub_213FDC6D0(v22, v76);
  *v104 = v98;
  *&v104[8] = v78;
  *&v104[16] = v81;
  *&v104[24] = v79;
  v104[32] = v102;

  sub_21404F7E0(v81, v79);
  v36 = v158;
  sub_214032118(a3, a4, 2, 0xD00000000000001ELL, 0x800000021478D3B0, 0xD00000000000001CLL, 0x800000021478A360);
  if (v36)
  {
    sub_213FDC6BC(a5, a6);
    sub_213FDC6BC(a3, a4);

    v37 = *&v104[8];
    v38 = *v104;
    v40 = *&v104[24];
    v39 = *&v104[16];
    v102 = v104[32];

    sub_214032564(v81, v79);
    v41 = a1;
    v42 = a2;
    v43 = v37;
    v44 = v39;
    v45 = v40;
    v35 = v20;
    v46 = v84;
    v47 = v93;
    v48 = v97;
    v50 = v82;
    v49 = v83;
    v158 = v36;
    v54 = v73;
LABEL_8:
    *v104 = v35;
    *&v104[8] = v54;
    *&v104[16] = v41;
    *&v104[24] = v42;
    v104[32] = v85;
    *&v104[33] = *v144;
    *&v104[36] = *&v144[3];
    *&v104[40] = v38;
    *&v104[48] = v43;
    *&v104[56] = v44;
    *&v104[64] = v45;
    v104[72] = v102;
    *&v104[73] = *v143;
    *&v104[76] = *&v143[3];
    *&v104[80] = v47;
    *&v104[88] = v50;
    *&v104[96] = v48;
    *&v104[104] = v49;
    v104[112] = v100;
    *&v104[116] = *(v142 + 3);
    *&v104[113] = v142[0];
    *&v104[120] = a7;
    *&v104[128] = a8;
    v104[136] = a10 & 1;
    *&v104[140] = *(v141 + 3);
    *&v104[137] = v141[0];
    *&v104[144] = v91;
    *&v104[152] = v88;
    *&v104[160] = v94;
    *&v104[168] = v92;
    v104[176] = v46;
    v110 = v152;
    v111 = v153;
    v108 = v150;
    v109 = v151;
    v114 = v156;
    *v115 = v157[0];
    v112 = v154;
    v113 = v155;
    *&v104[193] = v146;
    *&v104[177] = v145;
    v107 = v149;
    v106 = v148;
    v105 = v147;
    *&v115[15] = *(v157 + 15);
    v116 = a14;
    v117 = a15 & 1;
    v118 = a16;
    v119 = v139;
    v120 = v140;
    v121 = a17;
    v122 = a18;
    v123 = a19;
    v124 = a20 & 1;
    sub_2142E7568(v104);
    return result;
  }

  v99 = *v104;
  v71 = *&v104[16];
  v72 = *&v104[8];
  v77 = *&v104[24];
  v102 = v104[32];

  sub_214032564(v81, v79);
  *v104 = v93;
  *&v104[8] = v82;
  *&v104[16] = v97;
  *&v104[24] = v83;
  v104[32] = v100;

  sub_21404F7E0(v97, v83);
  sub_214032118(a5, a6, 2, 0xD00000000000001FLL, 0x800000021478D3D0, 0xD00000000000001CLL, 0x800000021478A360);
  v46 = v84;
  v158 = 0;

  v55 = *v104;
  v80 = *&v104[16];
  v100 = v104[32];

  sub_214032564(v97, v83);
  v131 = a11;
  v132 = a12;
  LOBYTE(v129[0]) = v84;
  *v104 = 0xD000000000000024;
  *&v104[8] = 0x800000021478D3F0;
  *&v104[16] = 0xD00000000000001CLL;
  *&v104[24] = 0x800000021478A360;

  sub_213FDC9D0(v94, v92);
  v56 = v158;
  v57 = v91(&v131, v129, v104);
  v54 = v73;
  v158 = v56;
  if (v56)
  {

    sub_213FDC6BC(a5, a6);
    sub_213FDC6BC(a3, a4);
    v35 = v74;
    v58 = a1;
    v59 = v77;
LABEL_14:

    sub_213FDC6D0(v94, v92);
    v41 = v58;
    v42 = a2;
    v43 = v72;
    v44 = v71;
    v45 = v59;
    v50 = *(&v55 + 1);
    v49 = *(&v80 + 1);
    v48 = v80;
    v47 = v55;
    v38 = v99;
    goto LABEL_8;
  }

  v35 = v74;
  v59 = v77;
  if ((v57 & 1) == 0)
  {
    sub_214031C4C();
    v69 = swift_allocError();
    *v70 = 0xD000000000000024;
    v70[1] = 0x800000021478D3F0;
    v70[2] = 0xD00000000000001CLL;
    v70[3] = 0x800000021478A360;
    v158 = v69;
    swift_willThrow();

    sub_213FDC6BC(a5, a6);
    sub_213FDC6BC(a3, a4);
    v58 = a1;
    goto LABEL_14;
  }

  sub_213FDC6D0(v94, v92);
  sub_213FDC6BC(a5, a6);
  sub_213FDC6BC(a3, a4);

  sub_213FDC6D0(v94, v92);
  *a9 = v74;
  *(a9 + 8) = v73;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = v85;
  *(a9 + 33) = *v144;
  *(a9 + 36) = *&v144[3];
  *(a9 + 40) = v99;
  *(a9 + 48) = v72;
  *(a9 + 56) = v71;
  *(a9 + 64) = v77;
  *(a9 + 72) = v102;
  *(a9 + 73) = *v143;
  *(a9 + 76) = *&v143[3];
  *(a9 + 80) = v55;
  *(a9 + 96) = v80;
  *(a9 + 112) = v100;
  *(a9 + 116) = *(v142 + 3);
  *(a9 + 113) = v142[0];
  *(a9 + 120) = a7;
  *(a9 + 128) = a8;
  *(a9 + 136) = a10 & 1;
  *(a9 + 140) = *(v141 + 3);
  *(a9 + 137) = v141[0];
  *(a9 + 144) = v91;
  *(a9 + 152) = v88;
  *(a9 + 160) = a11;
  *(a9 + 168) = a12;
  *(a9 + 176) = v84;
  v60 = v145;
  *(a9 + 193) = v146;
  *(a9 + 177) = v60;
  v61 = v147;
  v62 = v148;
  v63 = v150;
  *(a9 + 241) = v149;
  *(a9 + 225) = v62;
  *(a9 + 209) = v61;
  v64 = v151;
  v65 = v153;
  v66 = v154;
  *(a9 + 289) = v152;
  *(a9 + 305) = v65;
  *(a9 + 257) = v63;
  *(a9 + 273) = v64;
  result = v155;
  v67 = v156;
  v68 = v157[0];
  *(a9 + 384) = *(v157 + 15);
  *(a9 + 353) = v67;
  *(a9 + 369) = v68;
  *(a9 + 321) = v66;
  *(a9 + 337) = result;
  *(a9 + 392) = a14;
  *(a9 + 400) = a15 & 1;
  *(a9 + 401) = a16;
  *(a9 + 402) = v139;
  *(a9 + 406) = v140;
  *(a9 + 408) = a17;
  *(a9 + 416) = a18;
  *(a9 + 424) = a19;
  *(a9 + 432) = a20 & 1;
  return result;
}

uint64_t sub_2140EAA64(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x796E6F6475657370;
    v7 = 0x4B65746176697270;
    v8 = 0x4864657469766E69;
    if (a1 != 3)
    {
      v8 = 0xD000000000000015;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x654B63696C627570;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6176697463417369;
    v2 = 0x656D614E6B6E696CLL;
    if (a1 != 9)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x69755570756F7267;
    v4 = 0xD000000000000010;
    if (a1 != 6)
    {
      v4 = 0xD000000000000020;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2140EAC08@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21435F77C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2140EAC30(uint64_t a1)
{
  v2 = sub_2142E75BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140EAC6C(uint64_t a1)
{
  v2 = sub_2142E75BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140EACA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905CA0, &qword_2146F4048);
  v5 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v7 = &v49 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E75BC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v96[0]) = 0;
  v9 = sub_2142E12FC();
  sub_2146DA1C8();
  v92 = v9;
  v93 = v8;
  v94 = v5;
  v95 = a1;
  v10 = v97;
  v11 = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v96[0]) = 1;
  sub_2142E1278();
  sub_2146DA1C8();
  v90 = v10;
  v91 = v11;
  v12 = v97;
  v13 = v98;
  LOBYTE(v96[0]) = 2;
  sub_2146DA1C8();
  v88 = v12;
  v89 = v13;
  v14 = v97;
  v15 = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905CB0, &qword_2146F4050);
  LOBYTE(v96[0]) = 3;
  sub_2142E7610();
  sub_2146DA1C8();
  v86 = v97;
  v87 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v96[0]) = 4;
  v16 = sub_2142E35EC();
  sub_2146DA1C8();
  v84 = v16;
  v85 = v14;
  v18 = v97;
  v19 = v98;
  LOBYTE(v96[0]) = 5;
  sub_2146DA1C8();
  v83 = v18;
  LODWORD(v82) = v19;
  v20 = v97;
  v21 = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AD0, &unk_214759900);
  v173 = 6;
  sub_2142E61A4();
  sub_2146DA1C8();
  v80 = v20;
  v81 = v21;
  v171 = v184;
  v172[0] = *v185;
  *(v172 + 9) = *&v185[9];
  v167 = v180;
  v168 = v181;
  v169 = v182;
  v170 = v183;
  v163 = v176;
  v164 = v177;
  v165 = v178;
  v166 = v179;
  v161 = v174;
  v162 = v175;
  LOBYTE(v96[0]) = 7;
  sub_2146DA1C8();
  v84 = v97;
  LODWORD(v21) = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v96[0]) = 8;
  sub_2142E1378();
  sub_2146DA1C8();
  v77 = a2;
  v78 = v97;
  v79 = v21;
  LOBYTE(v96[0]) = 9;
  v93 = v7;
  sub_2146DA1C8();
  v76 = v97;
  v92 = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  v158 = 10;
  sub_2142E11FC();
  sub_2146DA1C8();
  v58 = v159;
  v22 = v160;
  sub_213FB2E54(&v161, &v97, &qword_27C905AD0, &unk_214759900);
  sub_21465423C(&v97);
  v75 = v97;
  v23 = v98;
  v24 = v99;
  v25 = v100;
  LODWORD(v12) = v101;
  sub_214654270(v96);
  v70 = v96[0];
  v74 = v96[2];
  v72 = v96[1];
  v73 = v96[3];
  v71 = LOBYTE(v96[4]);
  sub_2146543E4(&v149);
  v65 = v149;
  v66 = v150;
  v67 = v151;
  v68 = v152;
  v64 = v153;
  sub_214654420(v147);
  *(&v156[9] + 7) = v170;
  *(&v156[10] + 7) = v171;
  *(&v156[11] + 7) = v172[0];
  v156[12] = *(v172 + 9);
  *(&v156[5] + 7) = v166;
  *(&v156[6] + 7) = v167;
  *(&v156[7] + 7) = v168;
  *(&v156[8] + 7) = v169;
  *(&v156[1] + 7) = v162;
  *(&v156[2] + 7) = v163;
  *(&v156[3] + 7) = v164;
  *(&v156[4] + 7) = v165;
  v59 = v147[0];
  v61 = v147[2];
  v62 = v147[3];
  v63 = v147[1];
  v60 = v148;
  v157 = v82;
  *(v156 + 7) = v161;
  v155 = v79;
  v154 = v22;
  v56 = v82;
  v57 = v22;
  v96[0] = v90;
  v96[1] = v91;
  v55 = v12;
  LOBYTE(v149) = v12;
  v97 = 0xD00000000000001ELL;
  v98 = 0x800000021478D390;
  v99 = 0xD00000000000001CLL;
  v69 = 0x800000021478A360;
  v100 = 0x800000021478A360;

  v26 = v24;
  v27 = v25;
  sub_213FDC9D0(v24, v25);
  v82 = v23;
  if (v75(v96, &v149, &v97))
  {
    sub_213FDC6D0(v24, v25);
    v28 = v69;

    sub_213FDC6D0(v24, v25);
    v97 = v70;
    v29 = v73;
    v98 = v72;
    v30 = v74;
    v99 = v74;
    v100 = v73;
    v101 = v71;

    sub_21404F7E0(v30, v29);
    sub_214032118(v88, v89, 2, 0xD00000000000001ELL, 0x800000021478D3B0, 0xD00000000000001CLL, v28);
    v34 = v69;

    v70 = v97;
    v35 = v98;
    v53 = v100;
    v54 = v99;
    v71 = v101;

    sub_214032564(v74, v73);
    v97 = v65;
    v98 = v66;
    v37 = v67;
    v36 = v68;
    v99 = v67;
    v100 = v68;
    v101 = v64;

    sub_21404F7E0(v37, v36);
    sub_214032118(v85, v87, 2, 0xD00000000000001FLL, 0x800000021478D3D0, 0xD00000000000001CLL, v34);
    v38 = v69;

    v65 = v97;
    v50 = v98;
    v51 = v99;
    v52 = v100;
    v64 = v101;

    sub_214032564(v67, v68);
    v149 = v80;
    v150 = v81;
    LOBYTE(v96[0]) = v60;
    v97 = 0xD000000000000024;
    v98 = 0x800000021478D3F0;
    v99 = 0xD00000000000001CLL;
    v100 = v38;

    sub_213FDC9D0(v61, v62);
    if (v59(&v149, v96, &v97))
    {
      v40 = v61;
      v39 = v62;
      sub_213FDC6D0(v61, v62);

      sub_213FDC6BC(v85, v87);
      sub_213FDC6BC(v88, v89);

      sub_213FB2DF4(&v161, &qword_27C905AD0, &unk_214759900);
      (*(v94 + 8))(v93, v193);

      sub_213FDC6D0(v40, v39);
      *(&v96[48] + 1) = *v188;
      *(&v96[50] + 2) = v186;
      *(&v96[4] + 1) = v192[0];
      HIDWORD(v96[4]) = *(v192 + 3);
      *(&v96[9] + 1) = *v191;
      HIDWORD(v96[9]) = *&v191[3];
      *(&v96[14] + 1) = *v190;
      HIDWORD(v96[14]) = *&v190[3];
      *(&v96[17] + 1) = *v189;
      HIDWORD(v96[17]) = *&v189[3];
      *(&v96[36] + 1) = v156[7];
      *(&v96[38] + 1) = v156[8];
      *(&v96[32] + 1) = v156[5];
      *(&v96[34] + 1) = v156[6];
      *(&v96[44] + 1) = v156[11];
      *(&v96[46] + 1) = v156[12];
      *(&v96[40] + 1) = v156[9];
      *(&v96[42] + 1) = v156[10];
      *(&v96[22] + 1) = v156[0];
      *(&v96[30] + 1) = v156[4];
      *(&v96[28] + 1) = v156[3];
      *(&v96[26] + 1) = v156[2];
      *(&v96[24] + 1) = v156[1];
      HIDWORD(v96[48]) = *&v188[3];
      HIWORD(v96[50]) = v187;
      v41 = v82;
      v96[0] = v75;
      v96[1] = v82;
      v43 = v90;
      v42 = v91;
      v96[2] = v90;
      v96[3] = v91;
      v44 = v55;
      LOBYTE(v96[4]) = v55;
      v45 = v70;
      v96[5] = v70;
      v96[6] = v35;
      v49 = v35;
      v46 = v53;
      v96[7] = v54;
      v96[8] = v53;
      LOBYTE(v96[9]) = v71;
      v96[10] = v65;
      v96[11] = v50;
      v96[12] = v51;
      v96[13] = v52;
      LOBYTE(v96[14]) = v64;
      v96[15] = v86;
      v96[16] = v83;
      LOBYTE(v96[17]) = v56;
      v96[18] = v59;
      v96[19] = v63;
      v96[20] = v80;
      v96[21] = v81;
      LOBYTE(v96[22]) = v60;
      v96[49] = v84;
      LOBYTE(v96[50]) = v79;
      BYTE1(v96[50]) = v78;
      v96[51] = v76;
      v96[52] = v92;
      v96[53] = v58;
      LOBYTE(v96[54]) = v57;
      memcpy(v77, v96, 0x1B1uLL);
      sub_2142E7694(v96, &v97);
      __swift_destroy_boxed_opaque_existential_1(v95);
      v97 = v75;
      v98 = v41;
      v99 = v43;
      v100 = v42;
      v101 = v44;
      *v102 = v192[0];
      *&v102[3] = *(v192 + 3);
      v103 = v45;
      v104 = v49;
      v105 = v54;
      v106 = v46;
      v107 = v71;
      *v108 = *v191;
      *&v108[3] = *&v191[3];
      v109 = v65;
      v110 = v50;
      v111 = v51;
      v112 = v52;
      v113 = v64;
      *v114 = *v190;
      *&v114[3] = *&v190[3];
      v115 = v86;
      v116 = v83;
      v117 = v56;
      *v118 = *v189;
      *&v118[3] = *&v189[3];
      v119 = v59;
      v120 = v63;
      v121 = v80;
      v122 = v81;
      v123 = v60;
      v131 = v156[7];
      v132 = v156[8];
      v129 = v156[5];
      v130 = v156[6];
      v135 = v156[11];
      v136 = v156[12];
      v133 = v156[9];
      v134 = v156[10];
      v124 = v156[0];
      v128 = v156[4];
      v127 = v156[3];
      v126 = v156[2];
      v125 = v156[1];
      *v137 = *v188;
      *&v137[3] = *&v188[3];
      v138 = v84;
      v139 = v79;
      v140 = v78;
      v33 = v186;
      goto LABEL_8;
    }

    sub_214031C4C();
    swift_allocError();
    *v47 = 0xD000000000000024;
    v47[1] = 0x800000021478D3F0;
    v48 = v69;
    v47[2] = 0xD00000000000001CLL;
    v47[3] = v48;
    swift_willThrow();
    sub_213FDC6BC(v85, v87);
    sub_213FDC6BC(v88, v89);

    sub_213FB2DF4(&v161, &qword_27C905AD0, &unk_214759900);
    (*(v94 + 8))(v93, v193);

    sub_213FDC6D0(v61, v62);
    v26 = v90;
    v27 = v91;
    v74 = v54;
    v72 = v35;
    v73 = v53;
    v66 = v50;
    v67 = v51;
    v68 = v52;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD00000000000001ELL;
    v31[1] = 0x800000021478D390;
    v32 = v69;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = v32;
    swift_willThrow();

    sub_213FDC6BC(v85, v87);
    sub_213FDC6BC(v88, v89);

    sub_213FB2DF4(&v161, &qword_27C905AD0, &unk_214759900);
    (*(v94 + 8))(v93, v193);

    sub_213FDC6D0(v24, v25);
  }

  __swift_destroy_boxed_opaque_existential_1(v95);
  v97 = v75;
  v98 = v82;
  v99 = v26;
  v100 = v27;
  v101 = v55;
  *v102 = v192[0];
  *&v102[3] = *(v192 + 3);
  v103 = v70;
  v104 = v72;
  v105 = v74;
  v106 = v73;
  v107 = v71;
  *v108 = *v191;
  *&v108[3] = *&v191[3];
  v109 = v65;
  v110 = v66;
  v111 = v67;
  v112 = v68;
  v113 = v64;
  *&v114[3] = *&v190[3];
  *v114 = *v190;
  v115 = v86;
  v116 = v83;
  v117 = v56;
  *&v118[3] = *&v189[3];
  *v118 = *v189;
  v119 = v59;
  v120 = v63;
  v121 = v61;
  v122 = v62;
  v123 = v60;
  v131 = v156[7];
  v132 = v156[8];
  v129 = v156[5];
  v130 = v156[6];
  v135 = v156[11];
  v136 = v156[12];
  v133 = v156[9];
  v134 = v156[10];
  v124 = v156[0];
  v128 = v156[4];
  v127 = v156[3];
  v126 = v156[2];
  v125 = v156[1];
  *v137 = *v188;
  *&v137[3] = *&v188[3];
  v138 = v84;
  v139 = v79;
  v140 = v78;
  v33 = v186;
LABEL_8:
  v141 = v33;
  v142 = v187;
  v143 = v76;
  v144 = v92;
  v145 = v58;
  v146 = v57;
  return sub_2142E7568(&v97);
}

uint64_t sub_2140EC118(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905CC0, &qword_2146F4058);
  v41 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - v4;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 104);
  v39 = *(v1 + 96);
  v40 = v8;
  v38 = v10;
  v11 = *(v1 + 120);
  v36 = *(v1 + 128);
  v37 = v11;
  v35 = *(v1 + 136);
  v12 = *(v1 + 160);
  v33 = *(v1 + 168);
  v34 = v12;
  v13 = *(v1 + 344);
  v69 = *(v1 + 328);
  v70 = v13;
  v71[0] = *(v1 + 360);
  *(v71 + 9) = *(v1 + 369);
  v14 = *(v1 + 264);
  v15 = *(v1 + 296);
  v16 = *(v1 + 312);
  v66 = *(v1 + 280);
  v67 = v15;
  v68 = v16;
  v17 = *(v1 + 200);
  v18 = *(v1 + 232);
  v62 = *(v1 + 216);
  v63 = v18;
  v64 = *(v1 + 248);
  v65 = v14;
  v60 = *(v1 + 184);
  v61 = v17;
  v32 = *(v1 + 392);
  LODWORD(v12) = *(v1 + 400);
  v30 = *(v1 + 401);
  v31 = v12;
  v19 = *(v1 + 408);
  v28 = *(v1 + 416);
  v29 = v19;
  v27 = *(v1 + 424);
  HIDWORD(v26) = *(v1 + 432);
  v20 = a1[3];
  v21 = a1;
  v22 = v5;
  __swift_project_boxed_opaque_existential_1(v21, v20);
  sub_2142E75BC();
  sub_2146DAA28();
  if (v7 == 1)
  {
    goto LABEL_9;
  }

  *&v48 = v6;
  *(&v48 + 1) = v7;
  LOBYTE(v45[0]) = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v24 = v72;
  sub_2146DA388();
  if (v24)
  {
    return (*(v41 + 8))(v22, v3);
  }

  if (v9 >> 60 == 11 || (*&v48 = v40, *(&v48 + 1) = v9, LOBYTE(v45[0]) = 1, sub_213FDCA18(v40, v9), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0), sub_2142E1CAC(), sub_2146DA388(), sub_213FDC6BC(v48, *(&v48 + 1)), v38 >> 60 == 11) || (*&v48 = v39, *(&v48 + 1) = v38, LOBYTE(v45[0]) = 2, sub_213FDCA18(v39, v38), sub_2146DA388(), sub_213FDC6BC(v48, *(&v48 + 1)), *&v48 = v37, LOBYTE(v45[0]) = 3, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905CB0, &qword_2146F4050), sub_2142E76F0(), sub_2146DA388(), v72 = v23, *&v48 = v36, BYTE8(v48) = v35, LOBYTE(v45[0]) = 4, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0), sub_2142E37F4(), sub_2146DA388(), v33 == 1))
  {
LABEL_9:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *&v48 = v34;
    *(&v48 + 1) = v33;
    LOBYTE(v45[0]) = 5;
    sub_2146DA388();
    v57 = v69;
    v58 = v70;
    v59[0] = v71[0];
    *(v59 + 9) = *(v71 + 9);
    v54 = v66;
    v55 = v67;
    v56 = v68;
    v50 = v62;
    v51 = v63;
    v52 = v64;
    v53 = v65;
    v48 = v60;
    v49 = v61;
    v47 = 6;
    sub_213FB2E54(&v60, v45, &qword_27C905AD0, &unk_214759900);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AD0, &unk_214759900);
    sub_2142E6354();
    sub_2146DA388();
    v45[9] = v57;
    v45[10] = v58;
    *v46 = v59[0];
    *&v46[9] = *(v59 + 9);
    v45[7] = v55;
    v45[8] = v56;
    v45[2] = v50;
    v45[3] = v51;
    v45[5] = v53;
    v45[6] = v54;
    v45[4] = v52;
    v45[0] = v48;
    v45[1] = v49;
    sub_213FB2DF4(v45, &qword_27C905AD0, &unk_214759900);
    v42 = v32;
    LOBYTE(v43) = v31;
    v44 = 7;
    sub_2146DA388();
    LOBYTE(v42) = v30;
    v44 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    sub_2142E1D30();
    sub_2146DA388();
    v42 = v29;
    v43 = v28;
    v44 = 9;
    sub_2146DA388();
    v42 = v27;
    LOBYTE(v43) = BYTE4(v26);
    v44 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
    return (*(v41 + 8))(v22, v3);
  }

  return result;
}

uint64_t sub_2140EC830@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 4) = BYTE4(result) & 1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 20) = a4;
  *(a5 + 24) = BYTE4(a4) & 1;
  return result;
}

unint64_t sub_2140EC858()
{
  v1 = 0x7954656C646E6168;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_2140EC8BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21435FB20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2140EC8E4(uint64_t a1)
{
  v2 = sub_2142E7774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140EC920(uint64_t a1)
{
  v2 = sub_2142E7774();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140EC95C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905CD0, &qword_2146F4060);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E7774();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    v19 = 0;
    sub_2142E6128();
    sub_2146DA1C8();
    v18 = v16;
    v15 = BYTE4(v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    v19 = 1;
    sub_2142E11FC();
    sub_2146DA1C8();
    v14 = v16;
    v13 = v17;
    v19 = 2;
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v10 = BYTE4(v16);
    *a2 = v18;
    v11 = v16;
    *(a2 + 4) = v15;
    *(a2 + 8) = v14;
    *(a2 + 16) = v13;
    *(a2 + 20) = v11;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140ECBD0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905CE0, &qword_2146F4068);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = *v1;
  v8 = *(v1 + 4);
  v17 = *(v1 + 1);
  v21 = *(v1 + 16);
  v9 = v1[5];
  v15 = *(v1 + 24);
  v16 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E7774();
  sub_2146DAA28();
  LODWORD(v19) = v7;
  BYTE4(v19) = v8;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  sub_2142E62D8();
  v10 = v18;
  sub_2146DA388();
  if (!v10)
  {
    v12 = v15;
    v11 = v16;
    v19 = v17;
    v20 = v21;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
    LODWORD(v19) = v11;
    BYTE4(v19) = v12;
    v22 = 2;
    sub_2146DA388();
  }

  return (*(v4 + 8))(v6, v3);
}

void *sub_2140ECE2C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, _OWORD *a16, char a17, uint64_t *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, const void *a31, char *a32, int a33, char a34, char *a35, char a36)
{
  v73 = *a2;
  v80 = *a18;
  v81 = a18[1];
  v82 = a18[2];
  v83 = a18[3];
  v84 = *a23;
  memcpy(__dst, a31, sizeof(__dst));
  v85 = *a32;
  v86 = *a35;
  sub_214654964(v151);
  v105 = v151[0];
  v38 = v151[1];
  v39 = v151[2];
  v40 = v151[3];
  v41 = v152;
  sub_214654998(v149);
  v96 = v149[0];
  v106 = v149[1];
  v169 = v149[2];
  v107 = v149[3];
  v97 = v150;
  sub_2146549CC(v147);
  v98 = v147[0];
  v102 = v147[2];
  v100 = v147[1];
  v101 = v147[3];
  v99 = v148;
  sub_214654B18(v145);
  v92 = v145[0];
  v94 = v145[1];
  v90 = v145[3];
  v91 = v145[2];
  v93 = v146;
  sub_214654C54(v143);
  v74 = a1;
  v75 = v143[0];
  v87 = v143[1];
  v88 = v143[2];
  v89 = v143[3];
  v72 = v144;
  v156 = BYTE4(a1) & 1;
  v79 = a8;
  v155 = BYTE4(a8) & 1;
  memcpy(&__src[7], a15, 0x1B1uLL);
  v42 = a16[3];
  *&v154[39] = a16[2];
  *&v154[55] = v42;
  *&v154[71] = a16[4];
  *&v154[80] = *(a16 + 73);
  v43 = a16[1];
  *&v154[7] = *a16;
  *&v154[23] = v43;
  v153 = a34 & 1;
  v69 = BYTE4(a1) & 1;
  v70 = BYTE4(a8) & 1;
  memcpy(v168, __src, 0x1B8uLL);
  *&v168[59] = *&v154[32];
  *&v168[61] = *&v154[48];
  *&v168[63] = *&v154[64];
  *&v168[65] = *&v154[80];
  *&v168[55] = *v154;
  *&v168[57] = *&v154[16];
  *v154 = a5;
  *&v154[8] = a6;
  v71 = v41;
  LOBYTE(v151[0]) = v41;
  *__src = 0xD000000000000033;
  *&__src[8] = 0x800000021478D420;
  *&__src[16] = 0xD00000000000001CLL;
  *&__src[24] = 0x800000021478A360;

  v68 = v40;
  sub_213FDC9D0(v39, v40);
  v44 = v38;
  v45 = v105(v154, v151, __src);
  v46 = v105;
  if (v95)
  {
    goto LABEL_5;
  }

  if ((v45 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v50 = 0xD000000000000033;
    v50[1] = 0x800000021478D420;
    v50[2] = 0xD00000000000001CLL;
    v50[3] = 0x800000021478A360;
    swift_willThrow();

LABEL_5:

    v51 = v72;
    v47 = v97;

    v52 = v68;
    sub_213FDC6D0(v39, v68);
    v53 = v39;
    v54 = v75;
LABEL_6:
    v48 = v96;
LABEL_7:
    v56 = v90;
    v55 = v91;
LABEL_8:
    *__src = v74;
    __src[4] = v69;
    __src[5] = v73;
    __src[6] = a3;
    *&__src[8] = a4;
    *&__src[16] = v46;
    *&__src[24] = v44;
    *&__src[32] = v53;
    *&__src[40] = v52;
    __src[48] = v71;
    *&__src[49] = v167[0];
    *&__src[52] = *(v167 + 3);
    *&__src[56] = a7;
    *&__src[64] = v79;
    __src[68] = v70;
    __src[71] = v166;
    *&__src[69] = v165;
    *&__src[72] = v48;
    *&__src[80] = v106;
    *&__src[88] = v169;
    *&__src[96] = v107;
    __src[104] = v47;
    *&__src[108] = *(v164 + 3);
    *&__src[105] = v164[0];
    *&__src[112] = a12;
    *&__src[120] = v98;
    *&__src[128] = v100;
    *&__src[136] = v102;
    *&__src[144] = v101;
    __src[152] = v99;
    memcpy(&__src[153], v168, 0x218uLL);
    v109 = a17;
    v110 = v162;
    v111 = v163;
    v112 = v80;
    v113 = v81;
    v114 = v82;
    v115 = v83;
    v116 = v92;
    v117 = v94;
    v118 = v55;
    v119 = v56;
    v120 = v93;
    *v121 = *v161;
    *&v121[3] = *&v161[3];
    v122 = v54;
    v123 = v87;
    v124 = v88;
    v125 = v89;
    v126 = v51;
    v127 = v84;
    v128 = v159;
    v129 = v160;
    v130 = a24;
    v131 = a25;
    v132 = a26;
    v133 = a27;
    v134 = a28;
    *v135 = v158[0];
    *&v135[3] = *(v158 + 3);
    v136 = a29;
    v137 = a30;
    memcpy(v138, __dst, 0x389uLL);
    v138[905] = v85;
    v139 = a33;
    v140 = a34 & 1;
    v141 = v86;
    v142 = a36;
    return sub_2142E77C8(__src);
  }

  sub_213FDC6D0(v39, v68);

  sub_213FDC6D0(v39, v68);
  *v154 = a10;
  *&v154[8] = a11;
  v47 = v97;
  LOBYTE(v151[0]) = v97;
  *__src = 0xD00000000000002FLL;
  *&__src[8] = 0x800000021478D460;
  *&__src[16] = 0xD00000000000001CLL;
  *&__src[24] = 0x800000021478A360;

  sub_213FDC9D0(v169, v107);
  v48 = v96;
  v49 = v96(v154, v151, __src);
  v54 = v75;
  if ((v49 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v60 = 0xD00000000000002FLL;
    v60[1] = 0x800000021478D460;
    v60[2] = 0xD00000000000001CLL;
    v60[3] = 0x800000021478A360;
    swift_willThrow();

    v46 = v105;
    v51 = v72;

    sub_213FDC6D0(v169, v107);
    v53 = a5;
    v52 = a6;
    goto LABEL_7;
  }

  v58 = v169;
  sub_213FDC6D0(v169, v107);

  sub_213FDC6D0(v58, v107);
  *v154 = a13;
  *&v154[8] = a14;
  LOBYTE(v151[0]) = v99;
  *__src = 0xD000000000000020;
  *&__src[8] = 0x800000021478D490;
  *&__src[16] = 0xD00000000000001CLL;
  *&__src[24] = 0x800000021478A360;

  sub_213FDC9D0(v102, v101);
  v59 = v98(v154, v151, __src);
  v51 = v72;
  if ((v59 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v62 = 0xD000000000000020;
    v62[1] = 0x800000021478D490;
    v62[2] = 0xD00000000000001CLL;
    v62[3] = 0x800000021478A360;
    swift_willThrow();

    v46 = v105;

    sub_213FDC6D0(v102, v101);
    v53 = a5;
    v52 = a6;
    v169 = a10;
    v107 = a11;
    v47 = v97;
    goto LABEL_6;
  }

  sub_213FDC6D0(v102, v101);

  sub_213FDC6D0(v102, v101);
  *v154 = a19;
  *&v154[8] = a20;
  LOBYTE(v151[0]) = v93;
  *__src = 0xD00000000000002FLL;
  *&__src[8] = 0x800000021478D4C0;
  *&__src[16] = 0xD00000000000001CLL;
  *&__src[24] = 0x800000021478A360;

  sub_213FDC9D0(v91, v90);
  v61 = v92(v154, v151, __src);
  v169 = a19;
  if ((v61 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v64 = 0xD00000000000002FLL;
    v64[1] = 0x800000021478D4C0;
    v64[2] = 0xD00000000000001CLL;
    v64[3] = 0x800000021478A360;
    swift_willThrow();

    v46 = v105;
    v56 = v90;

    v55 = v91;
    sub_213FDC6D0(v91, v90);
    v53 = a5;
    v52 = a6;
    v169 = a10;
    v107 = a11;
    v101 = a14;
    v102 = a13;
    v47 = v97;
    v48 = v96;
    goto LABEL_8;
  }

  sub_213FDC6D0(v91, v90);

  sub_213FDC6D0(v91, v90);
  *v154 = a21;
  *&v154[8] = a22;
  LOBYTE(v151[0]) = v72;
  *__src = 0xD00000000000002DLL;
  *&__src[8] = 0x800000021478D4F0;
  *&__src[16] = 0xD00000000000001CLL;
  *&__src[24] = 0x800000021478A360;

  sub_213FDC9D0(v88, v89);
  v63 = v75(v154, v151, __src);
  if ((v63 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v66 = 0xD00000000000002DLL;
    v66[1] = 0x800000021478D4F0;
    v66[2] = 0xD00000000000001CLL;
    v66[3] = 0x800000021478A360;
    swift_willThrow();

    v55 = v169;

    sub_213FDC6D0(v88, v89);
    v53 = a5;
    v52 = a6;
    v169 = a10;
    v107 = a11;
    v101 = a14;
    v102 = a13;
    v56 = a20;
    v47 = v97;
    v48 = v96;
    v46 = v105;
    goto LABEL_8;
  }

  sub_213FDC6D0(v88, v89);

  sub_213FDC6D0(v88, v89);
  *a9 = a1;
  *(a9 + 4) = v69;
  *(a9 + 5) = v73;
  *(a9 + 6) = a3;
  *(a9 + 8) = a4;
  *(a9 + 16) = v105;
  *(a9 + 24) = v44;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v41;
  *(a9 + 49) = v167[0];
  *(a9 + 52) = *(v167 + 3);
  *(a9 + 56) = a7;
  *(a9 + 64) = v79;
  *(a9 + 68) = v70;
  v65 = v165;
  *(a9 + 71) = v166;
  *(a9 + 69) = v65;
  *(a9 + 72) = v96;
  *(a9 + 80) = v106;
  *(a9 + 88) = a10;
  *(a9 + 96) = a11;
  *(a9 + 104) = v97;
  *(a9 + 108) = *(v164 + 3);
  *(a9 + 105) = v164[0];
  *(a9 + 112) = a12;
  *(a9 + 120) = v98;
  *(a9 + 128) = v100;
  *(a9 + 136) = a13;
  *(a9 + 144) = a14;
  *(a9 + 152) = v99;
  memcpy((a9 + 153), v168, 0x218uLL);
  *(a9 + 689) = a17;
  *(a9 + 690) = v162;
  *(a9 + 694) = v163;
  *(a9 + 696) = v80;
  *(a9 + 704) = v81;
  *(a9 + 712) = v82;
  *(a9 + 720) = v83;
  *(a9 + 728) = v92;
  *(a9 + 736) = v94;
  *(a9 + 744) = v169;
  *(a9 + 752) = a20;
  *(a9 + 760) = v93;
  *(a9 + 761) = *v161;
  *(a9 + 764) = *&v161[3];
  *(a9 + 768) = v75;
  *(a9 + 776) = v87;
  *(a9 + 784) = a21;
  *(a9 + 792) = a22;
  *(a9 + 800) = v72;
  *(a9 + 801) = v84;
  *(a9 + 806) = v160;
  *(a9 + 802) = v159;
  *(a9 + 808) = a24;
  *(a9 + 816) = a25;
  *(a9 + 824) = a26;
  *(a9 + 832) = a27;
  *(a9 + 840) = a28;
  *(a9 + 841) = v158[0];
  *(a9 + 844) = *(v158 + 3);
  *(a9 + 848) = a29;
  *(a9 + 856) = a30;
  result = memcpy((a9 + 864), __dst, 0x389uLL);
  *(a9 + 1769) = v85;
  *(a9 + 1772) = a33;
  *(a9 + 1776) = a34 & 1;
  *(a9 + 1777) = v86;
  *(a9 + 1778) = a36;
  return result;
}