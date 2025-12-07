uint64_t sub_2141426CC@<X0>(char *a1@<X0>, unsigned int *a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, unint64_t a4@<X3>, uint64_t (*a5)(void, void, void)@<X4>, unint64_t a6@<X5>, uint64_t (*a7)(void, void, void)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char a11, uint64_t (*a12)(void, void, void), char a13)
{
  v54 = *a1;
  v55 = *a2 | (*(a2 + 2) << 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_214059900;
  *(v16 + 24) = 0;
  *(v15 + 32) = v16;
  sub_214042B80(v15, &v67);
  v18 = v67;
  v17 = v68;
  v19 = v70;
  v46 = v69;
  v20 = v71;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2146E9BF0;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_214059900;
  *(v22 + 24) = 0;
  *(v21 + 32) = v22;
  sub_214042B80(v21, &v103);
  v65 = v103;
  v66 = v104;
  v47 = v105;
  v64 = v106;
  v120 = v107;
  sub_2144BA538(v101);
  v57 = v101[0];
  v63 = v101[1];
  v60 = v101[2];
  v58 = v102;
  sub_2144BA6A4(v97);
  v53 = v97[0];
  v59 = v97[1];
  v50 = v97[2];
  v49 = v98;
  v119 = v100;
  v108 = v99;
  v48 = v99;
  v109 = v99;
  v103 = a3;
  v104 = a4;
  v52 = v20;
  LOBYTE(v97[0]) = v20;
  v67 = 0xD00000000000001BLL;
  v68 = 0x800000021478E490;
  v69 = 0xD00000000000001CLL;
  v70 = 0x800000021478A360;

  v23 = v17;
  v24 = v18(&v103, v97, &v67);
  if (v51)
  {

LABEL_6:

    v29 = v53;
    v25 = v23;
    v27 = v57;

    a3 = v46;
    v30 = v47;
    v31 = v58;
    v32 = v48;
    v33 = v60;
    v34 = v64;
LABEL_7:
    LOBYTE(v67) = v54;
    *(&v67 + 1) = v117;
    BYTE3(v67) = v118;
    HIDWORD(v67) = v55;
    LOWORD(v68) = WORD2(v55);
    *(&v68 + 2) = v115;
    HIWORD(v68) = v116;
    v69 = v18;
    v70 = v25;
    v71 = a3;
    v72 = v19;
    v73 = v52;
    *&v74[3] = *&v114[3];
    *v74 = *v114;
    v75 = v65;
    v76 = v66;
    v77 = v30;
    v78 = v34;
    v79 = v120;
    *v80 = *v113;
    *&v80[3] = *&v113[3];
    v81 = v27;
    v82 = v63;
    v83 = v33;
    v84 = v31;
    *v85 = v112[0];
    *&v85[3] = *(v112 + 3);
    v86 = a8;
    v87 = a10 & 1;
    v88 = a11;
    v90 = v111;
    v89 = v110;
    v91 = v29;
    v92 = v59;
    v93 = v50;
    v94 = v49;
    v95 = v32;
    v96 = v119;
    return sub_2142F2C90(&v67);
  }

  v43 = a4;
  if ((v24 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD00000000000001BLL;
    v28[1] = 0x800000021478E490;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v25 = v17;

  v103 = a5;
  v104 = a6;
  LOBYTE(v97[0]) = v120;
  v67 = 0xD00000000000001FLL;
  v68 = 0x800000021478E4B0;
  v69 = 0xD00000000000001CLL;
  v70 = 0x800000021478A360;

  v26 = v65(&v103, v97, &v67);
  v27 = v57;
  v19 = v43;
  v31 = v58;
  if ((v26 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v37 = 0xD00000000000001FLL;
    v37[1] = 0x800000021478E4B0;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = 0x800000021478A360;
    swift_willThrow();

    v29 = v53;
    v34 = v64;

    v32 = v48;
    v33 = v60;
    v30 = v47;
    goto LABEL_7;
  }

  v103 = a7;
  LOBYTE(v97[0]) = v58;
  v67 = 0xD000000000000024;
  v68 = 0x800000021478E4D0;
  v69 = 0xD00000000000001CLL;
  v70 = 0x800000021478A360;

  v36 = v57(&v103, v97, &v67);
  if ((v36 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD000000000000024;
    v39[1] = 0x800000021478E4D0;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = 0x800000021478A360;
    swift_willThrow();

    v29 = v53;
    v33 = v60;

    v30 = a5;
    v34 = a6;
    v32 = v48;
    goto LABEL_7;
  }

  v103 = a12;
  LOBYTE(v104) = a13 & 1;
  LOBYTE(v97[0]) = v119;
  v67 = 0xD00000000000001BLL;
  v68 = 0x800000021478E500;
  v69 = 0xD00000000000001CLL;
  v70 = 0x800000021478A360;

  v38 = v53(&v103, v97, &v67);
  v29 = v53;
  if ((v38 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD00000000000001BLL;
    v42[1] = 0x800000021478E500;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = 0x800000021478A360;
    swift_willThrow();
    v31 = v58;
    v27 = v57;

    v32 = v48;
    v109 = v48;
    v19 = v43;
    v30 = a5;
    v33 = a7;
    v34 = a6;
    goto LABEL_7;
  }

  v109 = 0;
  *a9 = v54;
  *(a9 + 1) = v117;
  *(a9 + 3) = v118;
  *(a9 + 8) = WORD2(v55);
  *(a9 + 4) = v55;
  v40 = *&v114[3];
  *(a9 + 10) = v115;
  *(a9 + 14) = v116;
  *(a9 + 16) = v18;
  *(a9 + 24) = v25;
  *(a9 + 32) = a3;
  *(a9 + 40) = v43;
  *(a9 + 48) = v52;
  v41 = *v114;
  *(a9 + 52) = v40;
  *(a9 + 49) = v41;
  *(a9 + 56) = v65;
  *(a9 + 64) = v66;
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = v120;
  *(a9 + 89) = *v113;
  *(a9 + 92) = *&v113[3];
  *(a9 + 96) = v57;
  *(a9 + 104) = v63;
  *(a9 + 112) = a7;
  *(a9 + 120) = v58;
  *(a9 + 124) = *(v112 + 3);
  *(a9 + 121) = v112[0];
  *(a9 + 128) = a8;
  *(a9 + 136) = a10 & 1;
  *(a9 + 137) = a11;
  *(a9 + 142) = v111;
  *(a9 + 138) = v110;
  *(a9 + 144) = v53;
  *(a9 + 152) = v59;
  *(a9 + 160) = a12;
  *(a9 + 168) = a13 & 1;
  *(a9 + 169) = 0;
  *(a9 + 170) = v119;
  return result;
}

unint64_t sub_214142FB0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6F43746E65696C63;
    v6 = 0x496E6F6973736573;
    if (a1 != 2)
    {
      v6 = 0x724774756F6E6166;
    }

    if (!a1)
    {
      v5 = 0xD000000000000010;
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
    v1 = 0x616974696E497369;
    v2 = 0x4F73756C50557369;
    if (a1 != 7)
    {
      v2 = 0x6D617473656D6974;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000012;
    if (a1 != 4)
    {
      v3 = 0x7069636974726170;
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

uint64_t sub_21414311C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214366D88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214143144(uint64_t a1)
{
  v2 = sub_2142F2CE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214143180(uint64_t a1)
{
  v2 = sub_2142F2CE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141431BC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9072D0, &qword_2146F49B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - v7;
  v9 = a1[3];
  v139 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142F2CE4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v139);
  }

  v10 = v6;
  LOBYTE(v80) = 0;
  sub_2142F261C();
  sub_2146DA1C8();
  v11 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9072E0, &qword_2146F49B8);
  LOBYTE(v80) = 1;
  sub_2142F2D38();
  sub_2146DA1C8();
  v79 = v11;
  v13 = WORD2(v89);
  v14 = v89;
  LOBYTE(v89) = 2;
  *&v78 = sub_2146DA168();
  *(&v78 + 1) = v15;
  LOBYTE(v89) = 3;
  *&v77 = sub_2146DA168();
  *(&v77 + 1) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v80) = 4;
  sub_2142E15CC();
  sub_2146DA1C8();
  v76 = v89;
  LOBYTE(v89) = 5;
  v75 = sub_2146DA228();
  LOBYTE(v89) = 6;
  v17 = sub_2146DA178();
  *&v74 = v13;
  LODWORD(v13) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v80) = 7;
  sub_2142E1378();
  sub_2146DA1C8();
  LODWORD(v72) = v13;
  v73 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  v126 = 8;
  sub_2142E35EC();
  sub_2146DA1C8();
  v48 = v127;
  v47 = v128;
  v54 = v14 | (v74 << 32);
  v55 = v5;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v18 = swift_allocObject();
  v74 = xmmword_2146E9BF0;
  *(v18 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_214059900;
  *(v19 + 24) = 0;
  *(v18 + 32) = v19;
  sub_214042B80(v18, &v89);
  v20 = v90;
  v70 = v89;
  v21 = v92;
  v50 = v91;
  v71 = v93;
  v22 = swift_allocObject();
  *(v22 + 16) = v74;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_214059900;
  *(v23 + 24) = 0;
  *(v22 + 32) = v23;
  sub_214042B80(v22, &v80);
  v65 = v80;
  v60 = v81;
  v68 = *(&v80 + 1);
  v69 = *(&v81 + 1);
  v66 = v82;
  sub_2144BA538(v123);
  v61 = v123[0];
  v63 = v123[1];
  v64 = v123[2];
  v62 = v124;
  sub_2144BA6A4(&v117);
  v58 = v117;
  v59 = v118;
  v52 = v119;
  v51 = v120;
  v56 = v72 & 1;
  v57 = v122;
  v125 = v121;
  v46 = v121;
  v129 = v121;
  v80 = v78;
  LOBYTE(v117) = v71;
  v49 = 0xD00000000000001BLL;
  v89 = 0xD00000000000001BLL;
  v90 = 0x800000021478E490;
  v53 = 0x800000021478E490;
  v91 = 0xD00000000000001CLL;
  v92 = 0x800000021478A360;
  v67 = 0x800000021478A360;
  *&v74 = v21;

  v72 = v20;
  if (v70(&v80, &v117, &v89))
  {
    v24 = v67;

    v80 = v77;
    LOBYTE(v117) = v66;
    v89 = 0xD00000000000001FLL;
    v90 = 0x800000021478E4B0;
    v91 = 0xD00000000000001CLL;
    v92 = v24;

    if (v65(&v80, &v117, &v89))
    {
      v27 = v67;

      *&v80 = v76;
      LOBYTE(v117) = v62;
      v89 = 0xD000000000000024;
      v90 = 0x800000021478E4D0;
      v91 = 0xD00000000000001CLL;
      v92 = v27;

      if (v61(&v80, &v117, &v89))
      {
        v30 = v67;

        v117 = v48;
        LOBYTE(v118) = v47;
        LOBYTE(v80) = v57;
        v89 = v49;
        v90 = 0x800000021478E500;
        v91 = 0xD00000000000001CLL;
        v92 = v30;

        if (v58(&v117, &v80, &v89))
        {

          (*(v10 + 8))(v8, v55);
          v33 = v59;

          v129 = 0;
          LOBYTE(v80) = v79;
          *(&v80 + 1) = v137;
          BYTE3(v80) = v138;
          v34 = v54;
          *&v74 = HIDWORD(v54);
          WORD4(v80) = WORD2(v54);
          DWORD1(v80) = v54;
          *(&v80 + 10) = v135;
          HIWORD(v80) = v136;
          *&v81 = v70;
          *(&v81 + 1) = v72;
          v82 = v78;
          LOBYTE(v83) = v71;
          *(&v83 + 1) = *v134;
          DWORD1(v83) = *&v134[3];
          *(&v83 + 1) = v65;
          *v84 = v68;
          *&v84[8] = v77;
          v84[24] = v66;
          *&v84[25] = *v133;
          *&v84[28] = *&v133[3];
          v35 = v63;
          *&v85 = v61;
          *(&v85 + 1) = v63;
          v36 = v75;
          *&v86 = v76;
          BYTE8(v86) = v62;
          *(&v86 + 9) = *v132;
          HIDWORD(v86) = *&v132[3];
          *&v87 = v75;
          BYTE8(v87) = v56;
          v37 = v73;
          BYTE9(v87) = v73;
          HIWORD(v87) = v131;
          *(&v87 + 10) = v130;
          *&v88[0] = v58;
          *(&v88[0] + 1) = v33;
          *&v88[1] = v48;
          WORD4(v88[1]) = v47;
          LODWORD(v69) = 0;
          LOBYTE(v33) = v57;
          BYTE10(v88[1]) = v57;
          v38 = v81;
          *a2 = v80;
          a2[1] = v38;
          v39 = v82;
          v40 = v83;
          v41 = *&v84[16];
          a2[4] = *v84;
          a2[5] = v41;
          a2[2] = v39;
          a2[3] = v40;
          v42 = v85;
          v43 = v86;
          *(a2 + 155) = *(v88 + 11);
          v44 = v88[0];
          a2[8] = v87;
          a2[9] = v44;
          a2[6] = v42;
          a2[7] = v43;
          sub_2142F2E10(&v80, &v89);
          __swift_destroy_boxed_opaque_existential_1(v139);
          LOBYTE(v89) = v79;
          *(&v89 + 1) = v137;
          BYTE3(v89) = v138;
          LOWORD(v90) = v74;
          HIDWORD(v89) = v34;
          *(&v90 + 2) = v135;
          HIWORD(v90) = v136;
          v91 = v70;
          v92 = v72;
          v93 = v78;
          v94 = v71;
          *&v95[3] = *&v134[3];
          *v95 = *v134;
          v96 = v65;
          v97 = v68;
          v98 = v77;
          v99 = v66;
          *v100 = *v133;
          *&v100[3] = *&v133[3];
          v101 = v61;
          v102 = v35;
          v103 = v76;
          v104 = v62;
          *v105 = *v132;
          *&v105[3] = *&v132[3];
          v106 = v36;
          v107 = v56;
          v108 = v37;
          v110 = v131;
          v109 = v130;
          v111 = v58;
          v112 = v59;
          v113 = v48;
          v114 = v47;
          v115 = v69;
          v116 = v33;
          return sub_2142F2C90(&v89);
        }

        sub_214031C4C();
        swift_allocError();
        *v45 = v49;
        v45[1] = 0x800000021478E500;
        v45[2] = 0xD00000000000001CLL;
        v45[3] = v67;
        swift_willThrow();
        (*(v10 + 8))(v8, v55);

        v129 = v46;
        *&v74 = *(&v78 + 1);
        v69 = *(&v77 + 1);
        v60 = v77;
        v64 = v76;
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v31 = 0xD000000000000024;
        v31[1] = 0x800000021478E4D0;
        v32 = v67;
        v31[2] = 0xD00000000000001CLL;
        v31[3] = v32;
        swift_willThrow();

        (*(v10 + 8))(v8, v55);

        *&v74 = *(&v78 + 1);
        v69 = *(&v77 + 1);
        v60 = v77;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v28 = 0xD00000000000001FLL;
      v28[1] = 0x800000021478E4B0;
      v29 = v67;
      v28[2] = 0xD00000000000001CLL;
      v28[3] = v29;
      swift_willThrow();

      (*(v10 + 8))(v8, v55);

      *&v74 = *(&v78 + 1);
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v25 = v53;
    *v26 = v49;
    v26[1] = v25;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = v67;
    swift_willThrow();

    (*(v10 + 8))(v8, v55);

    *&v78 = v50;
  }

  __swift_destroy_boxed_opaque_existential_1(v139);
  LOBYTE(v89) = v79;
  *(&v89 + 1) = v137;
  BYTE3(v89) = v138;
  LOWORD(v90) = WORD2(v54);
  HIDWORD(v89) = v54;
  *(&v90 + 2) = v135;
  HIWORD(v90) = v136;
  v91 = v70;
  v92 = v72;
  *&v93 = v78;
  *(&v93 + 1) = v74;
  v94 = v71;
  *&v95[3] = *&v134[3];
  *v95 = *v134;
  v96 = v65;
  v97 = v68;
  *&v98 = v60;
  *(&v98 + 1) = v69;
  v99 = v66;
  *v100 = *v133;
  *&v100[3] = *&v133[3];
  v101 = v61;
  v102 = v63;
  v103 = v64;
  v104 = v62;
  *v105 = *v132;
  *&v105[3] = *&v132[3];
  v106 = v75;
  v107 = v56;
  v108 = v73;
  v110 = v131;
  v109 = v130;
  v111 = v58;
  v112 = v59;
  v113 = v52;
  v114 = v51;
  v115 = v129;
  v116 = v57;
  return sub_2142F2C90(&v89);
}

uint64_t sub_21414409C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9072F8, &qword_2146F49C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - v5;
  v7 = *v1;
  v33 = *(v1 + 4);
  v32 = *(v1 + 1);
  v8 = *(v1 + 4);
  v30 = *(v1 + 5);
  v31 = v8;
  v9 = *(v1 + 9);
  v27 = *(v1 + 10);
  v28 = v9;
  v10 = *(v1 + 14);
  v25 = *(v1 + 16);
  v26 = v10;
  v24[3] = v1[136];
  v37 = v1[137];
  v29 = *(v1 + 20);
  v11 = v1[168];
  v12 = v1[169];
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_2142F2CE4();
  sub_2146DAA28();
  LOBYTE(v35) = v7;
  v38 = 0;
  sub_2142F2984();
  v17 = v34;
  sub_2146DA388();
  if (v17)
  {
    return (*(v4 + 8))(v6, v16);
  }

  v18 = v30;
  LODWORD(v34) = v12;
  v19 = v11;
  v20 = v29;
  WORD2(v35) = (v32 | (v33 << 32)) >> 32;
  LODWORD(v35) = v32;
  v38 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9072E0, &qword_2146F49B8);
  sub_2142F2E6C();
  sub_2146DA388();
  v33 = v4;
  if (v18 && (LOBYTE(v35) = 2, , sub_2146DA328(), , v27) && (LOBYTE(v35) = 3, , sub_2146DA328(), , v26) && (v35 = v26, v38 = 4, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0), sub_2142E1F00(), sub_2146DA388(), v22 = v34, v23 = v37, LOBYTE(v35) = 5, sub_2146DA3E8(), LOBYTE(v35) = 6, sub_2146DA338(), LOBYTE(v35) = v23, v38 = 7, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0), sub_2142E1D30(), sub_2146DA388(), (v22 & 1) == 0))
  {
    v35 = v20;
    v36 = v19 & 1;
    v38 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
    sub_2142E37F4();
    sub_2146DA388();
    return (*(v33 + 8))(v6, v16);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t KeyMaterial.init(with:index:wrappedData:salt:generation:wrapMode:participantId:shortKILength:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t (*a10)(void, void, void), char a11, uint64_t a12, char a13, __int16 a14)
{
  v99 = a8;
  v51 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v19 = swift_allocObject();
  v20 = swift_allocObject();
  v20[2] = sub_213FB7988;
  v20[3] = 0;
  v20[4] = 16;
  v20[5] = sub_21403C354;
  v20[6] = 0;
  *(v19 + 16) = sub_21438F670;
  *(v19 + 24) = v20;
  *(inited + 32) = v19;
  v52 = a4;
  v53 = a5;
  sub_21402D9F8(a4, a5);
  v21 = a6;
  sub_21402D9F8(a6, a7);
  sub_214042CD0(inited, v58);
  v22 = *v58;
  v24 = *&v58[16];
  v23 = v59;
  v25 = v60;
  sub_2144BAC70(&v82);
  v54 = v82;
  v57 = v83;
  v44 = v84;
  v43 = v85;
  v46 = v87;
  v91[0] = BYTE4(v99) & 1;
  v90 = v86;
  v89 = a13 & 1;
  v88 = HIBYTE(a14) & 1;
  v50 = BYTE4(v99) & 1;
  v42 = v86;
  v94 = v86;
  *v58 = v22;
  *&v58[16] = v24;
  v59 = v23;
  LOBYTE(v60) = v25;

  v45 = v23;
  sub_213FDCA18(v24, v23);
  sub_214032024(a2, a3, 2, 0xD000000000000011, 0x800000021478E520, 0xD00000000000001CLL, 0x800000021478A360);
  if (v47)
  {
    sub_213FB54FC(a2, a3);
    v26 = a7;
    sub_213FB54FC(a6, a7);
    v28 = v52;
    v27 = v53;
    sub_213FB54FC(v52, v53);

    v48 = *v58;
    v29 = *&v58[16];
    v30 = v60;
    v31 = v59;

    sub_213FDC6BC(v24, v45);
    v32 = v48;
    v33 = v46;
    v34 = v57;
  }

  else
  {

    v49 = *v58;
    v38 = *&v58[16];
    v40 = v59;
    v35 = v60;

    sub_213FDC6BC(v24, v23);
    v82 = a10;
    LOBYTE(v83) = a11 & 1;
    v33 = v46;
    v91[0] = v46;
    *v58 = 0xD000000000000014;
    *&v58[8] = 0x800000021478E540;
    *&v58[16] = 0xD00000000000001CLL;
    v59 = 0x800000021478A360;

    v39 = v35;
    v26 = a7;
    if (v54(&v82, v91, v58))
    {
      sub_213FB54FC(a2, a3);

      sub_213FB54FC(a6, a7);
      sub_213FB54FC(v52, v53);

      v94 = 0;
      *a9 = v51;
      *(a9 + 8) = v49;
      *(a9 + 24) = v38;
      *(a9 + 32) = v40;
      *(a9 + 40) = v35;
      *(a9 + 48) = v52;
      *(a9 + 56) = v53;
      *(a9 + 64) = a6;
      *(a9 + 72) = a7;
      *(a9 + 80) = v99;
      *(a9 + 84) = v50;
      *(a9 + 88) = v54;
      *(a9 + 96) = v57;
      *(a9 + 104) = a10;
      *(a9 + 112) = a11 & 1;
      *(a9 + 113) = 0;
      *(a9 + 114) = v46;
      *(a9 + 120) = a12;
      *(a9 + 128) = a13 & 1;
      *(a9 + 129) = a14;
      *(a9 + 130) = HIBYTE(a14) & 1;
      return result;
    }

    v29 = v38;
    sub_214031C4C();
    swift_allocError();
    *v37 = 0xD000000000000014;
    v37[1] = 0x800000021478E540;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB54FC(a2, a3);
    sub_213FB54FC(a6, a7);
    v28 = v52;
    v27 = v53;
    sub_213FB54FC(v52, v53);
    v34 = v57;

    v32 = v49;
    v31 = v40;
    v30 = v39;
  }

  v58[0] = v51;
  *&v58[1] = v98[0];
  *&v58[4] = *(v98 + 3);
  *&v58[8] = v32;
  v59 = v29;
  v60 = v31;
  v61 = v30;
  *v62 = v97[0];
  *&v62[3] = *(v97 + 3);
  v63 = v28;
  v64 = v27;
  v65 = v21;
  v66 = v26;
  v67 = v99;
  v68 = v50;
  v70 = v96;
  v69 = v95;
  v71 = v54;
  v72 = v34;
  v73 = v44;
  v74 = v43;
  v75 = v42;
  v76 = v33;
  v78 = v93;
  v77 = v92;
  v79 = a12;
  v80 = a13 & 1;
  v81 = a14 & 0x1FF;
  return sub_2142F2F44(v58);
}

uint64_t sub_214144B88()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x7069636974726170;
  if (v1 != 6)
  {
    v3 = 0x4C494B74726F6873;
  }

  v4 = 0x69746172656E6567;
  if (v1 != 4)
  {
    v4 = 0x65646F4D70617277;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x4464657070617277;
  if (v1 != 2)
  {
    v5 = 1953259891;
  }

  if (*v0)
  {
    v2 = 0x7865646E69;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_214144C94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143670A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214144CBC(uint64_t a1)
{
  v2 = sub_2142F2F98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214144CF8(uint64_t a1)
{
  v2 = sub_2142F2F98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KeyMaterial.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907310, &qword_2146F49C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - v7;
  v9 = a1[3];
  v122 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142F2F98();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v122);
  }

  v74 = a2;
  v75 = v6;
  LOBYTE(v76[0]) = 0;
  sub_2142F2FEC();
  sub_2146DA1C8();
  v10 = v85[0];
  LOBYTE(v76[0]) = 1;
  sub_21406116C();
  sub_2146DA1C8();
  v13 = *v85;
  v12 = *&v85[8];
  LOBYTE(v76[0]) = 2;
  sub_2146DA1C8();
  v72 = v13;
  v73 = v12;
  v71 = v10;
  v15 = *v85;
  v14 = *&v85[8];
  LOBYTE(v76[0]) = 3;
  sub_2146DA1C8();
  v69 = v15;
  v70 = v14;
  v16 = *v85;
  v17 = *&v85[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v76[0]) = 4;
  sub_2142E6128();
  sub_2146DA1C8();
  v67 = v17;
  v68 = v16;
  LODWORD(v17) = *v85;
  LODWORD(v16) = v85[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v76[0]) = 5;
  sub_2142E11FC();
  sub_2146DA1C8();
  v66 = v17;
  v18 = *v85;
  LODWORD(v17) = v85[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
  LOBYTE(v76[0]) = 6;
  sub_2142E18D0();
  sub_2146DA1C8();
  v63 = v17;
  v64 = v18;
  v65 = *v85;
  LODWORD(v18) = v85[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907328, &qword_2146F49D0);
  v112 = 7;
  sub_2142F3040();
  sub_2146DA1C8();
  v55 = v113;
  v62 = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v20 = swift_allocObject();
  v21 = swift_allocObject();
  v21[2] = sub_213FB7988;
  v21[3] = 0;
  v21[4] = 16;
  v21[5] = sub_21403C354;
  v21[6] = 0;
  *(v20 + 16) = sub_21438F670;
  *(v20 + 24) = v21;
  *(v19 + 32) = v20;
  sub_21402D9F8(v69, v70);
  sub_21402D9F8(v68, v67);
  sub_214042CD0(v19, v85);
  v22 = *&v85[8];
  v57 = *v85;
  v24 = *&v85[16];
  v23 = v86;
  LODWORD(v56) = v87;
  sub_2144BAC70(v76);
  v61 = v76[0];
  v51 = *&v76[1];
  v59 = v16;
  v60 = BYTE10(v76[1]);
  LOBYTE(v83) = v16;
  v111 = BYTE9(v76[1]);
  v58 = v18;
  v110 = v18;
  v109 = v62;
  v49 = BYTE9(v76[1]);
  v50 = BYTE8(v76[1]);
  v117 = BYTE9(v76[1]);
  *v85 = v57;
  *&v85[8] = v22;
  *&v85[16] = v24;
  v86 = v23;
  LOBYTE(v87) = v56;
  v52 = v22;

  v53 = v23;
  v54 = v24;
  sub_213FDCA18(v24, v23);
  sub_214032024(v72, v73, 2, 0xD000000000000011, 0x800000021478E520, 0xD00000000000001CLL, 0x800000021478A360);

  v56 = *v85;
  v57 = *&v85[16];
  v48 = v86;
  HIDWORD(v47) = v87;

  sub_213FDC6BC(v54, v53);
  v83 = v64;
  v84 = v63;
  LOBYTE(v76[0]) = v60;
  *v85 = 0xD000000000000014;
  *&v85[8] = 0x800000021478E540;
  *&v85[16] = 0xD00000000000001CLL;
  v86 = 0x800000021478A360;

  v25 = (v61)(&v83, v76, v85);
  if (v25)
  {
    sub_213FB54FC(v72, v73);

    v26 = v67;
    v27 = v68;
    sub_213FB54FC(v68, v67);
    v28 = v69;
    v29 = v70;
    sub_213FB54FC(v69, v70);
    (*(v75 + 8))(v8, v5);
    v30 = *(&v61 + 1);

    v117 = 0;
    LOBYTE(v76[0]) = v71;
    *(v76 + 1) = v121[0];
    DWORD1(v76[0]) = *(v121 + 3);
    *(v76 + 8) = v56;
    *(&v76[1] + 1) = v57;
    *&v77 = v48;
    BYTE8(v77) = BYTE4(v47);
    *(&v77 + 9) = *v120;
    HIDWORD(v77) = *&v120[3];
    *&v78 = v28;
    *(&v78 + 1) = v29;
    *&v79 = v27;
    *(&v79 + 1) = v26;
    LODWORD(v80) = v66;
    LOBYTE(v26) = v60;
    BYTE4(v80) = v59;
    *(&v80 + 5) = v118;
    BYTE7(v80) = v119;
    *(&v80 + 1) = v61;
    *&v81 = v30;
    v31 = v65;
    *(&v81 + 1) = v64;
    LOBYTE(v29) = v62;
    v82[0] = v63;
    LODWORD(v75) = 0;
    v82[1] = 0;
    v82[2] = v60;
    *&v82[3] = v115;
    v82[7] = v116;
    *&v82[8] = v65;
    v82[16] = v58;
    v32 = v55;
    v82[17] = v55;
    v82[18] = v62;
    v33 = v78;
    v34 = v74;
    *(v74 + 32) = v77;
    *(v34 + 48) = v33;
    v35 = v76[1];
    *v34 = v76[0];
    *(v34 + 16) = v35;
    v36 = v79;
    v37 = v80;
    v38 = v81;
    v39 = *v82;
    *(v34 + 127) = *&v82[15];
    *(v34 + 96) = v38;
    *(v34 + 112) = v39;
    *(v34 + 64) = v36;
    *(v34 + 80) = v37;
    sub_2142F30BC(v76, v85);
    __swift_destroy_boxed_opaque_existential_1(v122);
    v85[0] = v71;
    *&v85[1] = v121[0];
    *&v85[4] = *(v121 + 3);
    *&v85[8] = v56;
    v86 = v57;
    v87 = v48;
    v88 = BYTE4(v47);
    *v89 = *v120;
    *&v89[3] = *&v120[3];
    v90 = v69;
    v91 = v70;
    v92 = v68;
    v93 = v67;
    v94 = v66;
    v95 = v59;
    v96 = v118;
    v97 = v119;
    *&v98 = v61;
    *(&v98 + 1) = v30;
    v99 = v64;
    v100 = v63;
    v101 = v75;
    v102 = v26;
    v103 = v115;
    v104 = v116;
    v105 = v31;
    v106 = v58;
    v107 = v32;
    v108 = v29;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v40 = 0xD000000000000014;
    v40[1] = 0x800000021478E540;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB54FC(v72, v73);
    sub_213FB54FC(v68, v67);
    sub_213FB54FC(v69, v70);
    (*(v75 + 8))(v8, v5);

    v41 = v69;
    v42 = v70;
    v43 = v67;
    v44 = v68;
    v45 = v48;
    v46 = BYTE4(v47);
    __swift_destroy_boxed_opaque_existential_1(v122);
    v85[0] = v71;
    *&v85[1] = v121[0];
    *&v85[4] = *(v121 + 3);
    *&v85[8] = v56;
    v86 = v57;
    v87 = v45;
    v88 = v46;
    *v89 = *v120;
    *&v89[3] = *&v120[3];
    v90 = v41;
    v91 = v42;
    v92 = v44;
    v93 = v43;
    v94 = v66;
    v95 = v59;
    v97 = v119;
    v96 = v118;
    v98 = v61;
    v99 = v51;
    v100 = v50;
    v101 = v49;
    v102 = v60;
    v104 = v116;
    v103 = v115;
    v105 = v65;
    v106 = v58;
    v107 = v55;
    v108 = v62;
  }

  return sub_2142F2F44(v85);
}

uint64_t KeyMaterial.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907338, &qword_2146F49D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = *v1;
  v8 = *(v1 + 3);
  v9 = *(v1 + 4);
  v10 = *(v1 + 6);
  v33 = *(v1 + 7);
  v34 = v10;
  v11 = *(v1 + 8);
  v31 = *(v1 + 9);
  v32 = v11;
  LODWORD(v11) = *(v1 + 20);
  v29 = v1[84];
  v30 = v11;
  v35 = *(v1 + 13);
  v36 = v8;
  LODWORD(v8) = v1[112];
  v25 = v1[113];
  v26 = v8;
  v28 = *(v1 + 15);
  v27 = v1[128];
  v40 = v1[129];
  v12 = v1[130];
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_2142F2F98();
  v17 = v6;
  sub_2146DAA28();
  LOBYTE(v38) = v7;
  v41 = 0;
  sub_2142F3118();
  v18 = v37;
  sub_2146DA388();
  if (v18)
  {
    return (*(v4 + 8))(v6, v16);
  }

  v20 = v35;
  LODWORD(v37) = v12;
  v21 = v40;
  if (v9 >> 60 == 15 || (v38 = v36, v39 = v9, v41 = 1, sub_21402D9F8(v36, v9), sub_214061684(), sub_2146DA388(), v22 = v4, sub_213FB54FC(v38, v39), v38 = v34, v39 = v33, v41 = 2, sub_21402D9F8(v34, v33), sub_2146DA388(), sub_213FB54FC(v38, v39), v38 = v32, v39 = v31, v41 = 3, sub_21402D9F8(v32, v31), sub_2146DA388(), sub_213FB54FC(v38, v39), LODWORD(v38) = v30, BYTE4(v38) = v29, v41 = 4, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90), sub_2142E62D8(), sub_2146DA388(), (v25 & 1) != 0))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v38 = v20;
    LOBYTE(v39) = v26 & 1;
    v41 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
    v23 = v37;
    v38 = v28;
    LOBYTE(v39) = v27;
    v41 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
    sub_2142E2204();
    sub_2146DA388();
    LOBYTE(v38) = v21;
    BYTE1(v38) = v23;
    v41 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907328, &qword_2146F49D0);
    sub_2142F316C();
    sub_2146DA388();
    return (*(v22 + 8))(v17, v16);
  }

  return result;
}

void *sub_214145DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>)
{
  v80 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_214059900;
  *(v12 + 24) = 0;
  *(v11 + 32) = v12;
  sub_214042B80(v11, v73);
  v64 = v73[0];
  v13 = v73[1];
  v45 = v73[2];
  v14 = v73[3];
  v15 = v74;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2146E9BF0;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_214059900;
  *(v17 + 24) = 0;
  *(v16 + 32) = v17;
  sub_214042B80(v16, v71);
  v62 = v71[0];
  v65 = v71[1];
  v46 = v71[2];
  v49 = v71[3];
  v63 = v72;
  sub_2144BB028(v69);
  v54 = v69[0];
  v58 = v69[1];
  v59 = v69[2];
  v50 = v70;
  sub_2144BB198(v67);
  v18 = a7[4];
  *(&v66[5] + 7) = a7[5];
  v19 = a7[7];
  *(&v66[6] + 7) = a7[6];
  *(&v66[7] + 7) = v19;
  *(&v66[8] + 6) = *(a7 + 127);
  v20 = *a7;
  *(&v66[1] + 7) = a7[1];
  v21 = a7[3];
  *(&v66[2] + 7) = a7[2];
  *(&v66[3] + 7) = v21;
  *(&v66[4] + 7) = v18;
  *(v66 + 7) = v20;
  v22 = a8[4];
  *&v75[85] = a8[5];
  v23 = a8[7];
  *&v75[101] = a8[6];
  *&v75[117] = v23;
  v24 = *a8;
  *&v75[21] = a8[1];
  v25 = a8[3];
  *&v75[37] = a8[2];
  *&v75[53] = v25;
  *&v75[69] = v22;
  *&v75[5] = v24;
  __src[6] = v66[6];
  __src[7] = v66[7];
  *(&__src[7] + 10) = *(&v66[7] + 10);
  __src[2] = v66[2];
  __src[3] = v66[3];
  __src[4] = v66[4];
  __src[5] = v66[5];
  __src[0] = v66[0];
  __src[1] = v66[1];
  *(&__src[13] + 10) = *&v75[80];
  *(&__src[14] + 10) = *&v75[96];
  *(&__src[15] + 10) = *&v75[112];
  *(&__src[9] + 10) = *&v75[16];
  *(&__src[10] + 10) = *&v75[32];
  *(&__src[11] + 10) = *&v75[48];
  *(&__src[12] + 10) = *&v75[64];
  v52 = v67[0];
  v55 = v67[2];
  v56 = v67[1];
  v53 = v68;
  *&v75[132] = *(a8 + 127);
  *(&__src[16] + 10) = *&v75[128];
  *(&__src[8] + 10) = *v75;
  v26 = v64;
  *v75 = a1;
  *&v75[8] = v80;
  LOBYTE(v73[0]) = v15;
  *&v66[0] = 0xD00000000000001DLL;
  *(&v66[0] + 1) = 0x800000021478E560;
  *&v66[1] = 0xD00000000000001CLL;
  *(&v66[1] + 1) = 0x800000021478A360;

  v60 = v13;
  v27 = v64(v75, v73, v66);
  if (v47)
  {

LABEL_6:

    v28 = v49;

    v31 = v45;
    v32 = v46;
    v33 = v50;
    v34 = v54;
LABEL_7:
    *&v66[0] = v26;
    *(&v66[0] + 1) = v13;
    *&v66[1] = v31;
    *(&v66[1] + 1) = v14;
    LOBYTE(v66[2]) = v15;
    *(&v66[2] + 1) = *v78;
    DWORD1(v66[2]) = *&v78[3];
    *(&v66[2] + 1) = v62;
    *&v66[3] = v65;
    *(&v66[3] + 1) = v32;
    *&v66[4] = v28;
    BYTE8(v66[4]) = v63;
    *(&v66[4] + 9) = *v77;
    HIDWORD(v66[4]) = *&v77[3];
    *&v66[5] = v34;
    *(&v66[5] + 1) = v58;
    *&v66[6] = v59;
    BYTE8(v66[6]) = v33;
    HIDWORD(v66[6]) = *&v76[3];
    *(&v66[6] + 9) = *v76;
    *&v66[7] = v52;
    *(&v66[7] + 1) = v56;
    *&v66[8] = v55;
    BYTE8(v66[8]) = v53;
    memcpy(&v66[8] + 9, __src, 0x112uLL);
    return sub_2142F31E8(v66);
  }

  if ((v27 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD00000000000001DLL;
    v30[1] = 0x800000021478E560;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  *v75 = a3;
  *&v75[8] = a4;
  LOBYTE(v73[0]) = v63;
  *&v66[0] = 0xD000000000000019;
  *(&v66[0] + 1) = 0x800000021478E580;
  *&v66[1] = 0xD00000000000001CLL;
  *(&v66[1] + 1) = 0x800000021478A360;
  v28 = v49;

  v29 = v62(v75, v73, v66);
  if ((v29 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v37 = 0xD000000000000019;
    v37[1] = 0x800000021478E580;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = 0x800000021478A360;
    swift_willThrow();

    v38 = v80;
    v34 = v54;

    v14 = v38;
    v26 = v64;
    v13 = v60;
    v31 = a1;
    v33 = v50;
    v32 = v46;
    goto LABEL_7;
  }

  *v75 = a5;
  v33 = v50;
  LOBYTE(v73[0]) = v50;
  *&v66[0] = 0xD000000000000024;
  *(&v66[0] + 1) = 0x800000021478E5A0;
  *&v66[1] = 0xD00000000000001CLL;
  *(&v66[1] + 1) = 0x800000021478A360;

  sub_213FBE134(v59);
  v36 = v54(v75, v73, v66);
  v34 = v54;
  if ((v36 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v40 = 0xD000000000000024;
    v40[1] = 0x800000021478E5A0;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = 0x800000021478A360;
    swift_willThrow();

    v14 = v80;
    v32 = a3;

    sub_213FB7170(v59);
    v28 = a4;
LABEL_14:
    v26 = v64;
    v13 = v60;
    v31 = a1;
    goto LABEL_7;
  }

  sub_213FB7170(v59);

  sub_213FB7170(v59);
  *v75 = a6;
  LOBYTE(v73[0]) = v53;
  *&v66[0] = 0xD000000000000028;
  *(&v66[0] + 1) = 0x800000021478E5D0;
  *&v66[1] = 0xD00000000000001CLL;
  *(&v66[1] + 1) = 0x800000021478A360;

  v39 = v52(v75, v73, v66);
  v41 = v80;
  v34 = v54;
  if ((v39 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD000000000000028;
    v42[1] = 0x800000021478E5D0;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = 0x800000021478A360;
    swift_willThrow();

    v14 = v41;
    v32 = a3;
    v28 = a4;
    v59 = a5;
    goto LABEL_14;
  }

  swift_bridgeObjectRelease_n();
  *a9 = v64;
  *(a9 + 8) = v60;
  *(a9 + 16) = a1;
  *(a9 + 24) = v41;
  *(a9 + 32) = v15;
  *(a9 + 33) = *v78;
  *(a9 + 36) = *&v78[3];
  *(a9 + 40) = v62;
  *(a9 + 48) = v65;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = v63;
  *(a9 + 73) = *v77;
  *(a9 + 76) = *&v77[3];
  *(a9 + 80) = v54;
  *(a9 + 88) = v58;
  *(a9 + 96) = a5;
  *(a9 + 104) = v50;
  *(a9 + 108) = *&v76[3];
  *(a9 + 105) = *v76;
  *(a9 + 112) = v52;
  *(a9 + 120) = v56;
  *(a9 + 128) = a6;
  *(a9 + 136) = v53;
  return memcpy((a9 + 137), __src, 0x112uLL);
}

unint64_t sub_214146724()
{
  v1 = *v0;
  v2 = 0x724774756F6E6166;
  v3 = 0xD000000000000018;
  v4 = 0x726574614D79656BLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x496E6F6973736573;
  if (v1 != 1)
  {
    v5 = 0xD000000000000014;
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

uint64_t sub_214146804@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436734C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21414682C(uint64_t a1)
{
  v2 = sub_2142F323C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214146868(uint64_t a1)
{
  v2 = sub_2142F323C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141468A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907350, &qword_2146F49E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - v7;
  v9 = a1[3];
  v148 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142F323C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v148);
  }

  v72 = a2;
  v73 = v6;
  LOBYTE(v75) = 0;
  v10 = sub_2146DA168();
  v12 = v11;
  v71 = v10;
  LOBYTE(v75) = 1;
  v13 = sub_2146DA168();
  v15 = v14;
  v70 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907360, &qword_2146F49E8);
  LOBYTE(v74[0]) = 2;
  sub_2142F3290();
  sub_2146DA1C8();
  v69 = v12;
  v16 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v74[0]) = 3;
  sub_2142E15CC();
  sub_2146DA1C8();
  v67 = v16;
  v68 = v15;
  v18 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907388, &qword_2147519C0);
  v136 = 4;
  sub_2142F33EC();
  sub_2146DA1C8();
  v133 = v142;
  v134 = v143;
  *v135 = *v144;
  *&v135[15] = *&v144[15];
  v130 = v139;
  v131 = v140;
  v132 = v141;
  v128 = v137;
  v129 = v138;
  v119 = 5;
  sub_2146DA1C8();
  v52 = v18;
  v116 = v125;
  v117 = v126;
  *v118 = *v127;
  *&v118[15] = *&v127[15];
  v113 = v122;
  v114 = v123;
  v115 = v124;
  v111 = v120;
  v112 = v121;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v19 = swift_allocObject();
  v63 = xmmword_2146E9BF0;
  *(v19 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_214059900;
  *(v20 + 24) = 0;
  *(v19 + 32) = v20;
  sub_213FB2E54(&v128, &v75, &qword_27C907388, &qword_2147519C0);
  sub_213FB2E54(&v111, &v75, &qword_27C907388, &qword_2147519C0);
  sub_214042B80(v19, &v75);
  v66 = v75;
  v21 = v76;
  v48 = v77;
  v64 = v78;
  v65 = v79;
  v22 = swift_allocObject();
  *(v22 + 16) = v63;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_214059900;
  *(v23 + 24) = 0;
  *(v22 + 32) = v23;
  sub_214042B80(v22, v74);
  *&v63 = v74[1];
  v49 = v74[2];
  v59 = v74[3];
  v60 = v74[0];
  v61 = LOBYTE(v74[4]);
  sub_2144BB028(v107);
  v58 = v107[1];
  v55 = v107[2];
  v56 = v107[0];
  v57 = v108;
  sub_2144BB198(v105);
  *(&v110[5] + 7) = v133;
  *(&v110[6] + 7) = v134;
  *(&v110[7] + 7) = *v135;
  *(&v110[1] + 7) = v129;
  *(&v110[2] + 7) = v130;
  *(&v110[3] + 7) = v131;
  *(&v110[4] + 7) = v132;
  *(v110 + 7) = v128;
  *&v109[85] = v116;
  *&v109[101] = v117;
  *&v109[117] = *v118;
  *&v109[21] = v112;
  *&v109[37] = v113;
  *&v109[53] = v114;
  *&v109[69] = v115;
  v50 = v105[0];
  v53 = v105[2];
  v54 = v105[1];
  v51 = v106;
  *(&v110[8] + 6) = *&v135[15];
  *&v109[132] = *&v118[15];
  *&v109[5] = v111;
  v74[0] = v71;
  v74[1] = v69;
  LOBYTE(v107[0]) = v65;
  v75 = 0xD00000000000001DLL;
  v76 = 0x800000021478E560;
  v77 = 0xD00000000000001CLL;
  v78 = 0x800000021478A360;

  v62 = v21;
  v24 = v66(v74, v107, &v75);
  v47 = 0x800000021478A360;
  if (v24)
  {
    v25 = v47;

    v74[0] = v70;
    v74[1] = v68;
    LOBYTE(v107[0]) = v61;
    v75 = 0xD000000000000019;
    v76 = 0x800000021478E580;
    v77 = 0xD00000000000001CLL;
    v78 = v25;

    if (v60(v74, v107, &v75))
    {

      v74[0] = v67;
      LOBYTE(v107[0]) = v57;
      v75 = 0xD000000000000024;
      v76 = 0x800000021478E5A0;
      v77 = 0xD00000000000001CLL;
      v78 = v25;

      sub_213FBE134(v55);
      if (v56(v74, v107, &v75))
      {
        v36 = v55;
        sub_213FB7170(v55);
        v37 = v47;

        sub_213FB7170(v36);
        v107[0] = v52;
        LOBYTE(v74[0]) = v51;
        v75 = 0xD000000000000028;
        v76 = 0x800000021478E5D0;
        v77 = 0xD00000000000001CLL;
        v78 = v37;

        if (v50(v107, v74, &v75))
        {

          sub_213FB2DF4(&v128, &qword_27C907388, &qword_2147519C0);
          sub_213FB2DF4(&v111, &qword_27C907388, &qword_2147519C0);
          (*(v73 + 8))(v8, v5);

          v40 = v54;

          *(&v74[32] + 3) = *(&v110[7] + 10);
          *(&v74[27] + 1) = v110[5];
          *(&v74[29] + 1) = v110[6];
          *(&v74[31] + 1) = v110[7];
          *(&v74[19] + 1) = v110[1];
          *(&v74[21] + 1) = v110[2];
          *(&v74[23] + 1) = v110[3];
          v74[0] = v66;
          v74[1] = v62;
          v41 = v71;
          v42 = v68;
          v43 = v69;
          v74[2] = v71;
          v74[3] = v69;
          LOBYTE(v74[4]) = v65;
          *(&v74[4] + 1) = v147[0];
          HIDWORD(v74[4]) = *(v147 + 3);
          v74[5] = v60;
          v74[6] = v63;
          v74[7] = v70;
          v74[8] = v68;
          LOBYTE(v74[9]) = v61;
          *(&v74[9] + 1) = *v146;
          HIDWORD(v74[9]) = *&v146[3];
          v74[10] = v56;
          v74[11] = v58;
          v44 = v67;
          v74[12] = v67;
          LOBYTE(v74[13]) = v57;
          *(&v74[13] + 1) = *v145;
          HIDWORD(v74[13]) = *&v145[3];
          v74[14] = v50;
          v74[15] = v40;
          v74[16] = v52;
          LOBYTE(v74[17]) = v51;
          *(&v74[25] + 1) = v110[4];
          *(&v74[17] + 1) = v110[0];
          *(&v74[46] + 3) = *&v109[96];
          *(&v74[48] + 3) = *&v109[112];
          *(&v74[50] + 3) = *&v109[128];
          *(&v74[38] + 3) = *&v109[32];
          *(&v74[40] + 3) = *&v109[48];
          *(&v74[42] + 3) = *&v109[64];
          *(&v74[44] + 3) = *&v109[80];
          *(&v74[34] + 3) = *v109;
          *(&v74[36] + 3) = *&v109[16];
          memcpy(v72, v74, 0x19BuLL);
          sub_2142F3470(v74, &v75);
          __swift_destroy_boxed_opaque_existential_1(v148);
          *&v103[5] = *(&v110[7] + 10);
          v101 = v110[5];
          v102 = v110[6];
          *v103 = v110[7];
          v97 = v110[1];
          v98 = v110[2];
          v99 = v110[3];
          v75 = v66;
          v76 = v62;
          v77 = v41;
          v78 = v43;
          v79 = v65;
          *v80 = v147[0];
          *&v80[3] = *(v147 + 3);
          v81 = v60;
          v82 = v63;
          v83 = v70;
          v84 = v42;
          v85 = v61;
          *v86 = *v146;
          *&v86[3] = *&v146[3];
          v87 = v56;
          v88 = v58;
          v89 = v44;
          v90 = v57;
          *v91 = *v145;
          *&v91[3] = *&v145[3];
          v92 = v50;
          v93 = v40;
          v94 = v52;
          v95 = v51;
          v100 = v110[4];
          v96 = v110[0];
          goto LABEL_8;
        }

        sub_214031C4C();
        swift_allocError();
        *v45 = 0xD000000000000028;
        v45[1] = 0x800000021478E5D0;
        v46 = v47;
        v45[2] = 0xD00000000000001CLL;
        v45[3] = v46;
        swift_willThrow();

        sub_213FB2DF4(&v128, &qword_27C907388, &qword_2147519C0);
        sub_213FB2DF4(&v111, &qword_27C907388, &qword_2147519C0);
        (*(v73 + 8))(v8, v5);

        v29 = v69;
        v31 = v70;
        v33 = v67;
        v32 = v68;
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v38 = 0xD000000000000024;
        v38[1] = 0x800000021478E5A0;
        v39 = v47;
        v38[2] = 0xD00000000000001CLL;
        v38[3] = v39;
        swift_willThrow();

        sub_213FB2DF4(&v128, &qword_27C907388, &qword_2147519C0);
        sub_213FB2DF4(&v111, &qword_27C907388, &qword_2147519C0);
        (*(v73 + 8))(v8, v5);

        v33 = v55;
        sub_213FB7170(v55);
        v29 = v69;
        v31 = v70;
        v32 = v68;
      }

      v34 = v66;
      v30 = v62;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v35 = 0xD000000000000019;
      v35[1] = 0x800000021478E580;
      v35[2] = 0xD00000000000001CLL;
      v35[3] = v25;
      swift_willThrow();

      sub_213FB2DF4(&v128, &qword_27C907388, &qword_2147519C0);
      sub_213FB2DF4(&v111, &qword_27C907388, &qword_2147519C0);
      (*(v73 + 8))(v8, v5);
      v32 = v59;

      v29 = v69;
      v34 = v66;
      v30 = v62;
      v31 = v49;
      v33 = v55;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD00000000000001DLL;
    v26[1] = 0x800000021478E560;
    v27 = v47;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = v27;
    swift_willThrow();

    v28 = v73;

    sub_213FB2DF4(&v128, &qword_27C907388, &qword_2147519C0);
    sub_213FB2DF4(&v111, &qword_27C907388, &qword_2147519C0);
    (*(v28 + 8))(v8, v5);
    v29 = v64;

    v30 = v62;

    v31 = v49;
    v71 = v48;
    v32 = v59;
    v33 = v55;
    v34 = v66;
  }

  __swift_destroy_boxed_opaque_existential_1(v148);
  *&v103[5] = *(&v110[7] + 10);
  v96 = v110[0];
  v100 = v110[4];
  v99 = v110[3];
  v98 = v110[2];
  v97 = v110[1];
  *v103 = v110[7];
  v75 = v34;
  v76 = v30;
  v77 = v71;
  v78 = v29;
  v79 = v65;
  *v80 = v147[0];
  *&v80[3] = *(v147 + 3);
  v81 = v60;
  v82 = v63;
  v83 = v31;
  v84 = v32;
  v85 = v61;
  *v86 = *v146;
  *&v86[3] = *&v146[3];
  v87 = v56;
  v88 = v58;
  v89 = v33;
  v90 = v57;
  *&v91[3] = *&v145[3];
  *v91 = *v145;
  v92 = v50;
  v93 = v54;
  v94 = v53;
  v95 = v51;
  v102 = v110[6];
  v101 = v110[5];
LABEL_8:
  *&v103[61] = *&v109[96];
  *&v103[69] = *&v109[112];
  v104 = *&v109[128];
  *&v103[29] = *&v109[32];
  *&v103[37] = *&v109[48];
  *&v103[45] = *&v109[64];
  *&v103[53] = *&v109[80];
  *&v103[13] = *v109;
  *&v103[21] = *&v109[16];
  return sub_2142F31E8(&v75);
}

uint64_t sub_2141479A8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907398, &qword_2146F4A00);
  v64 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v4 = *(v1 + 24);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v23 = *(v1 + 96);
  v24 = v5;
  v22 = *(v1 + 128);
  v7 = *(v1 + 256);
  v54 = *(v1 + 240);
  v55[0] = v7;
  *(v55 + 15) = *(v1 + 271);
  v8 = *(v1 + 192);
  v50 = *(v1 + 176);
  v51 = v8;
  v9 = *(v1 + 224);
  v52 = *(v1 + 208);
  v53 = v9;
  v10 = *(v1 + 160);
  v48 = *(v1 + 144);
  v49 = v10;
  v11 = *(v1 + 392);
  v62 = *(v1 + 376);
  v63[0] = v11;
  *(v63 + 15) = *(v1 + 407);
  v12 = *(v1 + 328);
  v58 = *(v1 + 312);
  v59 = v12;
  v13 = *(v1 + 360);
  v60 = *(v1 + 344);
  v61 = v13;
  v14 = *(v1 + 296);
  v56 = *(v1 + 280);
  v57 = v14;
  v15 = a1[3];
  v16 = a1;
  v18 = &v22 - v17;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  sub_2142F323C();
  sub_2146DAA28();
  if (!v4)
  {
    goto LABEL_8;
  }

  LOBYTE(v40) = 0;

  v19 = v25;
  sub_2146DA328();
  if (v19)
  {
    (*(v64 + 8))(v18, v3);
  }

  if (v6 && (LOBYTE(v40) = 1, , sub_2146DA328(), , v23 != 1) && (*&v40 = v23, LOBYTE(v37[0]) = 2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907360, &qword_2146F49E8), sub_2142F34CC(), sub_2146DA388(), v22))
  {
    *&v40 = v22;
    LOBYTE(v37[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    v46 = v54;
    v47[0] = v55[0];
    *(v47 + 15) = *(v55 + 15);
    v42 = v50;
    v43 = v51;
    v44 = v52;
    v45 = v53;
    v40 = v48;
    v41 = v49;
    v39 = 4;
    sub_213FB2E54(&v48, v37, &qword_27C907388, &qword_2147519C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907388, &qword_2147519C0);
    sub_2142F3628();
    sub_2146DA388();
    v37[6] = v46;
    *v38 = v47[0];
    *&v38[15] = *(v47 + 15);
    v37[2] = v42;
    v37[3] = v43;
    v37[4] = v44;
    v37[5] = v45;
    v37[0] = v40;
    v37[1] = v41;
    sub_213FB2DF4(v37, &qword_27C907388, &qword_2147519C0);
    v35 = v62;
    v36[0] = v63[0];
    *(v36 + 15) = *(v63 + 15);
    v31 = v58;
    v32 = v59;
    v33 = v60;
    v34 = v61;
    v29 = v56;
    v30 = v57;
    v28 = 5;
    sub_213FB2E54(&v56, v26, &qword_27C907388, &qword_2147519C0);
    sub_2146DA388();
    v21 = (v64 + 8);
    v26[6] = v35;
    *v27 = v36[0];
    *&v27[15] = *(v36 + 15);
    v26[2] = v31;
    v26[3] = v32;
    v26[4] = v33;
    v26[5] = v34;
    v26[0] = v29;
    v26[1] = v30;
    sub_213FB2DF4(v26, &qword_27C907388, &qword_2147519C0);
    return (*v21)(v18, v3);
  }

  else
  {
LABEL_8:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214147F50@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, char a6@<W5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_2144BB778(&v71);
  v13 = v71;
  v14 = v72;
  v15 = v74;
  v44 = v73;
  v100[0] = *v76;
  *(v100 + 3) = *&v76[3];
  v64 = v77;
  v49 = v78;
  v101 = v79;
  v50 = v81;
  v99[0] = *v82;
  *(v99 + 3) = *&v82[3];
  v62 = v83;
  v66 = v84;
  v67 = v80;
  v46 = v85;
  v58 = v86;
  v63 = v88;
  v97 = v90;
  v96 = v89;
  v54 = v91;
  v57 = v92;
  v48 = v93;
  v59 = v94;
  v55 = v95;
  v47 = v87;
  v98 = v87;
  v69 = a1;
  v70 = a2;
  v53 = v75;
  v68 = v75;
  v71 = 0xD000000000000020;
  v72 = 0x800000021478E600;
  v73 = 0xD00000000000001CLL;
  v74 = 0x800000021478A360;

  v61 = v14;
  v52 = v13;
  v16 = v13(&v69, &v68, &v71);
  if (v9)
  {
    sub_213FB54FC(a3, a4);

    v17 = v54;
    v18 = v61;
    v19 = v64;
LABEL_6:

    v22 = v44;
    v23 = v46;
    v31 = v55;
    v29 = v50;
    v24 = v47;
    v25 = v101;
    v26 = v67;
    v27 = v49;
LABEL_7:
    v71 = v52;
    v72 = v18;
    v73 = v22;
    v74 = v15;
    v75 = v53;
    *v76 = v100[0];
    *&v76[3] = *(v100 + 3);
    v77 = v19;
    v78 = v27;
    v79 = v25;
    v80 = v26;
    v81 = v29;
    *v82 = v99[0];
    *&v82[3] = *(v99 + 3);
    v83 = v62;
    v84 = v66;
    v85 = v23;
    v86 = v58;
    v87 = v24;
    v88 = v63;
    v90 = v97;
    v89 = v96;
    v91 = v17;
    v92 = v57;
    v93 = v48;
    v94 = v59;
    v95 = v31;
    return sub_2142F36AC(&v71);
  }

  v38 = a1;
  v39 = a2;
  if ((v16 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD000000000000020;
    v21[1] = 0x800000021478E600;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB54FC(a3, a4);

    v17 = v54;
    v18 = v61;
    v19 = v64;
    goto LABEL_6;
  }

  v71 = v64;
  v72 = v49;
  v20 = v101;
  v73 = v101;
  v74 = v67;
  v75 = v50;

  sub_213FDCA18(v20, v67);
  sub_214032024(a3, a4, 2, 0xD00000000000001CLL, 0x800000021478E630, 0xD00000000000001CLL, 0x800000021478A360);
  v36 = a3;

  v65 = v71;
  v37 = v72;
  v45 = v73;
  v51 = v74;
  v29 = v75;

  sub_213FDC6BC(v101, v67);
  v69 = a5;
  LOBYTE(v70) = a6 & 1;
  v68 = v63;
  v71 = 0xD00000000000001BLL;
  v72 = 0x800000021478E650;
  v73 = 0xD00000000000001CLL;
  v74 = 0x800000021478A360;

  v30 = v62(&v69, &v68, &v71);
  v31 = v55;
  if ((v30 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD00000000000001BLL;
    v33[1] = 0x800000021478E650;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB54FC(v36, a4);
    v17 = v54;
    v15 = a2;

    v27 = v37;
    v25 = v45;
    v26 = v51;
    v18 = v61;
    v19 = v65;
    v22 = v38;
    v24 = v47;
    v23 = v46;
    goto LABEL_7;
  }

  v58 = a6 & 1;

  v98 = 0;
  v69 = a7;
  v70 = a8;
  v68 = v55;
  v71 = 0xD00000000000001CLL;
  v72 = 0x800000021478E670;
  v73 = 0xD00000000000001CLL;
  v74 = 0x800000021478A360;

  v32 = v54(&v69, &v68, &v71);
  v17 = v54;
  if ((v32 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v35 = 0xD00000000000001CLL;
    v35[1] = 0x800000021478E670;
    v35[2] = 0xD00000000000001CLL;
    v35[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB54FC(v36, a4);

    v19 = v65;

    v22 = v38;
    v15 = v39;
    v24 = v98;
    v27 = v37;
    v23 = a5;
    v25 = v45;
    v26 = v51;
    v18 = v61;
    goto LABEL_7;
  }

  sub_213FB54FC(v36, a4);

  v34 = v98;
  *a9 = v13;
  *(a9 + 8) = v61;
  *(a9 + 16) = v38;
  *(a9 + 24) = a2;
  *(a9 + 32) = v53;
  *(a9 + 33) = v100[0];
  *(a9 + 36) = *(v100 + 3);
  *(a9 + 40) = v65;
  *(a9 + 48) = v37;
  *(a9 + 56) = v45;
  *(a9 + 64) = v51;
  *(a9 + 72) = v29;
  *(a9 + 73) = v99[0];
  *(a9 + 76) = *(v99 + 3);
  *(a9 + 80) = v62;
  *(a9 + 88) = v66;
  *(a9 + 96) = a5;
  *(a9 + 104) = v58;
  *(a9 + 105) = v34;
  *(a9 + 106) = v63;
  *(a9 + 107) = v96;
  *(a9 + 111) = v97;
  *(a9 + 112) = v54;
  *(a9 + 120) = v57;
  *(a9 + 128) = a7;
  *(a9 + 136) = a8;
  *(a9 + 144) = v55;
  return result;
}

uint64_t sub_21414873C()
{
  v1 = 0x724774756F6E6166;
  v2 = 0x65646F4D70617277;
  if (*v0 != 2)
  {
    v2 = 0x496E6F6973736573;
  }

  if (*v0)
  {
    v1 = 0x654B63696C627570;
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

uint64_t sub_2141487C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214367564(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141487F0(uint64_t a1)
{
  v2 = sub_2142F3700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21414882C(uint64_t a1)
{
  v2 = sub_2142F3700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214148868@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9073C0, &qword_2146F4A08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v57 - v7;
  v9 = a1[3];
  v132 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142F3700();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v132);
  }

  v88 = v6;
  LOBYTE(v101) = 0;
  v10 = sub_2146DA168();
  v12 = v11;
  v87 = v10;
  LOBYTE(v89) = 1;
  sub_21406116C();
  sub_2146DA1C8();
  v86 = v12;
  v13 = v101;
  v14 = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v89) = 2;
  sub_2142E11FC();
  sub_2146DA1C8();
  v84 = v14;
  v85 = v13;
  v15 = v101;
  v16 = v102;
  v126 = 3;
  v17 = sub_2146DA168();
  v61 = v16;
  v59 = v17;
  v69 = v19;
  v62 = v15;
  sub_2144BB778(&v101);
  v20 = v102;
  v21 = v104;
  v63 = v103;
  v131[0] = *v106;
  *(v131 + 3) = *&v106[3];
  v82 = v108;
  v83 = v101;
  v78 = v110;
  v79 = v109;
  LODWORD(v81) = v111;
  v130[0] = *v112;
  *(v130 + 3) = *&v112[3];
  v75 = v113;
  v76 = v107;
  v77 = v114;
  v64 = v116;
  v74 = v118;
  v128 = v120;
  v127 = v119;
  v70 = v121;
  v73 = v122;
  v65 = v115;
  v66 = v123;
  v72 = v124;
  v71 = v125;
  v60 = v117;
  v129 = v117;
  *&v89 = v87;
  *(&v89 + 1) = v86;
  v68 = v105;
  LOBYTE(v99[0]) = v105;
  v101 = 0xD000000000000020;
  v102 = 0x800000021478E600;
  v103 = 0xD00000000000001CLL;
  v104 = 0x800000021478A360;
  v67 = v21;

  v80 = v20;
  v22 = v83(&v89, v99, &v101);
  v23 = v85;
  v58 = 0x800000021478A360;
  if (v22)
  {
    v24 = v58;

    v25 = v23;

    v101 = v76;
    v102 = v82;
    v27 = v78;
    v26 = v79;
    v103 = v79;
    v104 = v78;
    v105 = v81;

    sub_213FDCA18(v26, v27);
    v81 = "ey.fanoutGroupId";
    sub_214032024(v25, v84, 2, 0xD00000000000001CLL, 0x800000021478E630, 0xD00000000000001CLL, v24);

    v76 = v101;
    v63 = v102;
    v67 = v103;
    v57 = v104;
    LODWORD(v81) = v105;

    sub_213FDC6BC(v79, v78);
    LOBYTE(v99[0]) = v60 & 1;
    *&v89 = v62;
    BYTE8(v89) = v61;
    v100 = v74;
    v101 = 0xD00000000000001BLL;
    v102 = 0x800000021478E650;
    v103 = 0xD00000000000001CLL;
    v104 = v24;

    v37 = v75(&v89, &v100, &v101);
    v38 = v69;
    if (v37)
    {
      v40 = v57;
      v39 = v58;

      v129 = 0;
      v99[0] = v59;
      v99[1] = v38;
      LOBYTE(v89) = v71;
      v101 = 0xD00000000000001CLL;
      v102 = 0x800000021478E670;
      v103 = 0xD00000000000001CLL;
      v104 = v39;

      if (v70(v99, &v89, &v101))
      {

        sub_213FB54FC(v85, v84);
        (*(v88 + 8))(v8, v5);

        v44 = v73;

        *&v89 = v83;
        *(&v89 + 1) = v80;
        *&v90 = v87;
        *(&v90 + 1) = v86;
        LOBYTE(v91) = v68;
        *(&v91 + 1) = v131[0];
        DWORD1(v91) = *(v131 + 3);
        *(&v91 + 1) = v76;
        *&v92 = v63;
        *(&v92 + 1) = v67;
        *&v93 = v40;
        BYTE8(v93) = v81;
        *(&v93 + 9) = v130[0];
        HIDWORD(v93) = *(v130 + 3);
        *&v94 = v75;
        *(&v94 + 1) = v77;
        *&v95 = v62;
        v45 = v61;
        BYTE8(v95) = v61;
        LODWORD(v88) = v129;
        BYTE9(v95) = v129;
        v46 = v74;
        BYTE10(v95) = v74;
        *(&v95 + 11) = v127;
        HIBYTE(v95) = v128;
        v47 = v69;
        v48 = v70;
        *&v96 = v70;
        *(&v96 + 1) = v44;
        *&v97 = v59;
        *(&v97 + 1) = v69;
        LOBYTE(v44) = v71;
        v98 = v71;
        v49 = v90;
        *a2 = v89;
        *(a2 + 16) = v49;
        v50 = v91;
        v51 = v92;
        v52 = v94;
        *(a2 + 64) = v93;
        *(a2 + 80) = v52;
        *(a2 + 32) = v50;
        *(a2 + 48) = v51;
        v53 = v95;
        v54 = v96;
        v55 = v97;
        *(a2 + 144) = v44;
        *(a2 + 112) = v54;
        *(a2 + 128) = v55;
        *(a2 + 96) = v53;
        sub_2142F3754(&v89, &v101);
        __swift_destroy_boxed_opaque_existential_1(v132);
        v101 = v83;
        v102 = v80;
        v103 = v87;
        v104 = v86;
        v105 = v68;
        *v106 = v131[0];
        *&v106[3] = *(v131 + 3);
        v107 = v76;
        v108 = v63;
        v109 = v67;
        v110 = v57;
        v111 = v81;
        *v112 = v130[0];
        *&v112[3] = *(v130 + 3);
        v113 = v75;
        v114 = v77;
        v115 = v62;
        v116 = v45;
        v117 = v88;
        v118 = v46;
        v119 = v127;
        v120 = v128;
        v121 = v48;
        v122 = v73;
        v123 = v59;
        v124 = v47;
        v125 = v44;
        return sub_2142F36AC(&v101);
      }

      sub_214031C4C();
      swift_allocError();
      *v56 = 0xD00000000000001CLL;
      v56[1] = 0x800000021478E670;
      v56[2] = 0xD00000000000001CLL;
      v56[3] = v58;
      swift_willThrow();

      sub_213FB54FC(v85, v84);
      (*(v88 + 8))(v8, v5);

      v31 = v86;
      v34 = v62;
      v82 = v63;
      v35 = v40;
      v36 = v67;
      v30 = v61;
      v32 = v80;
      v33 = v76;
    }

    else
    {

      sub_214031C4C();
      swift_allocError();
      *v41 = 0xD00000000000001BLL;
      v41[1] = 0x800000021478E650;
      v41[2] = 0xD00000000000001CLL;
      v41[3] = v58;
      swift_willThrow();
      sub_213FB54FC(v85, v84);
      (*(v88 + 8))(v8, v5);
      v42 = v86;
      v30 = v64;
      v43 = v99[0];

      v129 = v43;
      v31 = v42;
      v82 = v63;
      v36 = v67;
      v35 = v57;
      v32 = v80;
      v33 = v76;
      v34 = v65;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD000000000000020;
    v28[1] = 0x800000021478E600;
    v29 = v58;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = v29;
    swift_willThrow();

    v30 = v64;
    sub_213FB54FC(v23, v84);
    (*(v88 + 8))(v8, v5);
    v31 = v67;

    v32 = v80;

    v87 = v63;
    v33 = v76;
    v34 = v65;
    v35 = v78;
    v36 = v79;
  }

  __swift_destroy_boxed_opaque_existential_1(v132);
  v101 = v83;
  v102 = v32;
  v103 = v87;
  v104 = v31;
  v105 = v68;
  *v106 = v131[0];
  *&v106[3] = *(v131 + 3);
  v107 = v33;
  v108 = v82;
  v109 = v36;
  v110 = v35;
  v111 = v81;
  *v112 = v130[0];
  *&v112[3] = *(v130 + 3);
  v113 = v75;
  v114 = v77;
  v115 = v34;
  v116 = v30;
  v117 = v129;
  v118 = v74;
  v119 = v127;
  v120 = v128;
  v121 = v70;
  v122 = v73;
  v123 = v66;
  v124 = v72;
  v125 = v71;
  return sub_2142F36AC(&v101);
}

uint64_t sub_214149454(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9073D0, &qword_2146F4A10);
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v12 - v4;
  v6 = *(v1 + 24);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v15 = *(v1 + 96);
  v16 = v7;
  v21 = *(v1 + 104);
  v14 = *(v1 + 105);
  v9 = *(v1 + 136);
  v12[1] = *(v1 + 128);
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F3700();
  sub_2146DAA28();
  if (v6)
  {
    LOBYTE(v19) = 0;

    v10 = v17;
    sub_2146DA328();
    if (v10)
    {
      (*(v18 + 8))(v5, v3);
    }

    if (v8 >> 60 != 15)
    {
      v19 = v16;
      v20 = v8;
      v22 = 1;
      sub_21402D9F8(v16, v8);
      sub_214061684();
      sub_2146DA388();
      sub_213FB54FC(v19, v20);
      if ((v14 & 1) == 0)
      {
        v19 = v15;
        LOBYTE(v20) = v21 & 1;
        v22 = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
        sub_2142E1C30();
        sub_2146DA388();
        if (v13)
        {
          LOBYTE(v19) = 3;

          sub_2146DA328();
          (*(v18 + 8))(v5, v3);
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

void *sub_214149798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, uint64_t (*a10)(void, void, void), const void *a11)
{
  v12 = MEMORY[0x28223BE20](a1);
  v72 = v14;
  v73 = v13;
  v69 = v15;
  v61 = v17;
  v62 = v16;
  v76 = v18;
  v20 = v19;
  v22 = v21;
  v71 = *v12;
  v23 = a9[5];
  v130 = a9[4];
  v131 = v23;
  v132 = *(a9 + 12);
  v24 = a9[1];
  v126 = *a9;
  v127 = v24;
  v25 = a9[3];
  v128 = a9[2];
  v129 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_214059900;
  *(v27 + 24) = 0;
  *(v26 + 32) = v27;
  sub_214042B80(v26, &v83);
  v28 = v83;
  v29 = v84;
  v30 = v86;
  v63 = v85;
  LOBYTE(v26) = v87;
  sub_2144BBF10(v123);
  v79 = v123[0];
  v82 = v123[1];
  v138 = v123[2];
  v81 = v124;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_2146E9BF0;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_214059900;
  *(v32 + 24) = 0;
  *(v31 + 32) = v32;
  sub_214042B80(v31, &v118);
  v80 = v119;
  v64 = v120;
  v77 = v121;
  v78 = v118;
  v74 = v122;
  sub_2144BC164(v116);
  v68 = v116[0];
  v65 = v116[1];
  v75 = v116[2];
  v66 = v69 & 1;
  v70 = v117;
  memcpy(&__src[7], a11, 0xB81uLL);
  v118 = v22;
  v119 = v20;
  v67 = v26;
  LOBYTE(v123[0]) = v26;
  v33 = v29;
  v83 = 0xD000000000000020;
  v84 = 0x800000021478E690;
  v85 = 0xD00000000000001CLL;
  v86 = 0x800000021478A360;

  v34 = v28(&v118, v123, &v83);
  if (v11)
  {

LABEL_6:

    v38 = v68;
    v36 = v79;

    v39 = v63;
    v40 = v65;
    v41 = v33;
    v42 = v70;
    v43 = v74;
LABEL_7:
    v44 = v77;
LABEL_8:
    v45 = v64;
LABEL_9:
    LOBYTE(v83) = v71;
    *(&v83 + 1) = v137[0];
    HIDWORD(v83) = *(v137 + 3);
    v84 = v28;
    v85 = v41;
    v86 = v39;
    v87 = v30;
    v88 = v67;
    *v89 = *v136;
    *&v89[3] = *&v136[3];
    v90 = v36;
    v91 = v82;
    v92 = v138;
    v93 = v81;
    *&v94[3] = *&v135[3];
    *v94 = *v135;
    v95 = v78;
    v96 = v80;
    v97 = v45;
    v98 = v44;
    v99 = v43;
    v100 = v66;
    v102 = v134;
    v101 = v133;
    v103 = v72;
    v104 = v126;
    v105 = v127;
    v108 = v130;
    v109 = v131;
    v106 = v128;
    v107 = v129;
    v110 = v132;
    v111 = v38;
    v112 = v40;
    v113 = v75;
    v114 = v42;
    memcpy(v115, __src, sizeof(v115));
    return sub_2142F37B0(&v83);
  }

  v59 = v22;
  v60 = v20;
  if ((v34 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v37 = 0xD000000000000020;
    v37[1] = 0x800000021478E690;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v118 = v76;
  LOBYTE(v123[0]) = v81;
  v83 = 0xD000000000000025;
  v84 = 0x800000021478E6C0;
  v85 = 0xD00000000000001CLL;
  v86 = 0x800000021478A360;

  v35 = v79(&v118, v123, &v83);
  v36 = v79;
  v58 = v29;
  v40 = v65;
  if ((v35 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v48 = 0xD000000000000025;
    v48[1] = 0x800000021478E6C0;
    v48[2] = 0xD00000000000001CLL;
    v48[3] = 0x800000021478A360;
    swift_willThrow();

    v38 = v68;
    v42 = v70;
    v30 = v60;
    v43 = v74;

    v41 = v58;
    v39 = v59;
    goto LABEL_7;
  }

  v118 = v62;
  v119 = v73;
  v43 = v74;
  LOBYTE(v123[0]) = v74;
  v83 = 0xD00000000000001CLL;
  v84 = 0x800000021478E6F0;
  v85 = 0xD00000000000001CLL;
  v86 = 0x800000021478A360;

  v47 = v78(&v118, v123, &v83);
  v42 = v70;
  if ((v47 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v50 = 0xD00000000000001CLL;
    v50[1] = 0x800000021478E6F0;
    v50[2] = 0xD00000000000001CLL;
    v50[3] = 0x800000021478A360;
    swift_willThrow();

    v38 = v68;
    v30 = v60;
    v36 = v79;
    v44 = v77;

    v138 = v76;
    v41 = v58;
    v39 = v59;
    goto LABEL_8;
  }

  v118 = a10;
  LOBYTE(v123[0]) = v70;
  v83 = 0xD000000000000025;
  v84 = 0x800000021478E710;
  v85 = 0xD00000000000001CLL;
  v86 = 0x800000021478A360;

  sub_213FBE134(v75);
  v49 = v68(&v118, v123, &v83);
  v38 = v68;
  v138 = 0x800000021478E710;
  v43 = v74;
  if ((v49 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    v56 = v138;
    *v57 = 0xD000000000000025;
    v57[1] = v56;
    v57[2] = 0xD00000000000001CLL;
    v57[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB7170(v75);
    v30 = v60;
    v138 = v76;
    v45 = v62;
    v44 = v73;
    v41 = v58;
    v39 = v59;
    v36 = v79;
    goto LABEL_9;
  }

  sub_213FB7170(v75);

  sub_213FB7170(v75);
  *v61 = v71;
  *(v61 + 1) = v137[0];
  *(v61 + 4) = *(v137 + 3);
  *(v61 + 8) = v28;
  *(v61 + 16) = v58;
  *(v61 + 24) = v59;
  *(v61 + 32) = v60;
  *(v61 + 40) = v67;
  *(v61 + 41) = *v136;
  *(v61 + 44) = *&v136[3];
  *(v61 + 48) = v79;
  *(v61 + 56) = v82;
  *(v61 + 64) = v76;
  *(v61 + 72) = v81;
  *(v61 + 76) = *&v135[3];
  *(v61 + 73) = *v135;
  *(v61 + 80) = v78;
  *(v61 + 88) = v80;
  *(v61 + 96) = v62;
  *(v61 + 104) = v73;
  *(v61 + 112) = v74;
  *(v61 + 113) = v66;
  *(v61 + 118) = v134;
  *(v61 + 114) = v133;
  *(v61 + 120) = v72;
  v51 = v127;
  *(v61 + 128) = v126;
  *(v61 + 144) = v51;
  v52 = v128;
  v53 = v129;
  v54 = v131;
  v55 = v132;
  *(v61 + 192) = v130;
  *(v61 + 208) = v54;
  *(v61 + 160) = v52;
  *(v61 + 176) = v53;
  *(v61 + 224) = v55;
  *(v61 + 232) = v68;
  *(v61 + 240) = v65;
  *(v61 + 248) = a10;
  *(v61 + 256) = v70;
  return memcpy((v61 + 257), __src, 0xB88uLL);
}

unint64_t sub_21414A0F4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x724774756F6E6166;
    v6 = 0x496E6F6973736573;
    if (a1 == 2)
    {
      v6 = 0xD000000000000012;
    }

    if (!a1)
    {
      v5 = 0xD000000000000010;
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
    v1 = 0x7069636974726170;
    v2 = 0xD000000000000012;
    if (a1 != 7)
    {
      v2 = 0x6F43746E65696C63;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x616974696E497369;
    if (a1 != 4)
    {
      v3 = 0x7069636974726170;
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

uint64_t sub_21414A258@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143676DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21414A280(uint64_t a1)
{
  v2 = sub_2142F3804();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21414A2BC(uint64_t a1)
{
  v2 = sub_2142F3804();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21414A2F8(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9073D8, &qword_2146F4A18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - v7;
  v9 = v2[3];
  v141 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v9);
  sub_2142F3804();
  sub_2146DAA08();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(v141);
  }

  v10 = v6;
  LOBYTE(v74[0]) = 0;
  sub_2142F261C();
  sub_2146DA1C8();
  v11 = v75;
  LOBYTE(v75) = 1;
  v12 = sub_2146DA168();
  v15 = v14;
  v73 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v74[0]) = 2;
  sub_2142E15CC();
  sub_2146DA1C8();
  v72 = v11;
  v16 = v75;
  LOBYTE(v75) = 3;
  *&v70 = sub_2146DA168();
  *(&v70 + 1) = v17;
  v71 = v16;
  LOBYTE(v75) = 4;
  LODWORD(v69) = sub_2146DA178();
  LOBYTE(v75) = 5;
  v68 = sub_2146DA228();
  v121 = 6;
  sub_2142F2670();
  sub_2146DA1C8();
  v118 = v126;
  v119 = v127;
  v120 = v128;
  v114 = v122;
  v115 = v123;
  v116 = v124;
  v117 = v125;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907248, &qword_2146F4988);
  LOBYTE(v74[0]) = 7;
  sub_2142F26C4();
  sub_2146DA1C8();
  v18 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907278, &qword_2146F49A0);
  v112[2951] = 8;
  sub_2142F2850();
  sub_2146DA1C8();
  v47 = v5;
  v53 = v18;
  memcpy(v112, v113, 0xB81uLL);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v19 = swift_allocObject();
  v63 = xmmword_2146E9BF0;
  *(v19 + 16) = xmmword_2146E9BF0;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_214059900;
  *(v20 + 24) = 0;
  *(v19 + 32) = v20;
  sub_2142F2518(&v114, &v75);
  sub_213FB2E54(v112, &v75, &qword_27C907278, &qword_2146F49A0);
  sub_214042B80(v19, &v75);
  v48 = v75;
  v21 = v76;
  v46 = v77;
  v22 = v78;
  v67 = v79;
  sub_2144BBF10(v109);
  v61 = v109[0];
  v64 = v109[1];
  v65 = v109[2];
  v62 = v110;
  v23 = swift_allocObject();
  *(v23 + 16) = v63;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_214059900;
  *(v24 + 24) = 0;
  *(v23 + 32) = v24;
  sub_214042B80(v23, v74);
  v57 = *&v74[0];
  v51 = *&v74[1];
  v59 = *(&v74[0] + 1);
  v60 = *(&v74[1] + 1);
  v58 = LOBYTE(v74[2]);
  sub_2144BC164(v107);
  v56 = v107[1];
  v54 = v107[0];
  v55 = v107[2];
  v52 = v108;
  v49 = v69 & 1;
  v133 = v118;
  v134 = v119;
  v135 = v120;
  v129 = v114;
  v130 = v115;
  v131 = v116;
  v132 = v117;
  memcpy(&v111[7], v112, 0xB81uLL);
  *&v74[0] = v73;
  *(&v74[0] + 1) = v15;
  v50 = v15;
  LOBYTE(v109[0]) = v67;
  v75 = 0xD000000000000020;
  v76 = 0x800000021478E690;
  v77 = 0xD00000000000001CLL;
  *&v63 = 0x800000021478A360;
  v78 = 0x800000021478A360;
  v69 = v22;

  v66 = v21;
  v25 = v48;
  v26 = v48(v74, v109, &v75);
  if (v26)
  {
    v27 = v63;

    *&v74[0] = v71;
    LOBYTE(v109[0]) = v62;
    v75 = 0xD000000000000025;
    v76 = 0x800000021478E6C0;
    v77 = 0xD00000000000001CLL;
    v78 = v27;

    v28 = v61(v74, v109, &v75);
    if (v28)
    {
      v31 = v63;

      v74[0] = v70;
      LOBYTE(v109[0]) = v58;
      v75 = 0xD00000000000001CLL;
      v76 = 0x800000021478E6F0;
      v77 = 0xD00000000000001CLL;
      v78 = v31;

      v32 = v57(v74, v109, &v75);
      if (v32)
      {
        v35 = v63;

        v109[0] = v53;
        LOBYTE(v74[0]) = v52;
        v75 = 0xD000000000000025;
        v76 = 0x800000021478E710;
        v77 = 0xD00000000000001CLL;
        v78 = v35;

        sub_213FBE134(v55);
        v36 = v54(v109, v74, &v75);
        if (v36)
        {
          v38 = v55;
          sub_213FB7170(v55);

          sub_2142F2470(&v114);
          sub_213FB2DF4(v112, &qword_27C907278, &qword_2146F49A0);
          (*(v10 + 8))(v8, v47);
          v39 = v56;

          sub_213FB7170(v38);
          v40 = v72;
          LOBYTE(v74[0]) = v72;
          *(v74 + 1) = v140[0];
          DWORD1(v74[0]) = *(v140 + 3);
          *(&v74[0] + 1) = v25;
          *&v74[1] = v66;
          *(&v74[1] + 1) = v73;
          *&v74[2] = v50;
          BYTE8(v74[2]) = v67;
          *(&v74[2] + 9) = *v139;
          HIDWORD(v74[2]) = *&v139[3];
          *&v74[3] = v61;
          *(&v74[3] + 1) = v64;
          v41 = v71;
          *&v74[4] = v71;
          BYTE8(v74[4]) = v62;
          *(&v74[4] + 9) = *v138;
          HIDWORD(v74[4]) = *&v138[3];
          *&v74[5] = v57;
          *(&v74[5] + 1) = v59;
          v74[6] = v70;
          LOBYTE(v74[7]) = v58;
          BYTE1(v74[7]) = v49;
          *(&v74[7] + 2) = v136;
          WORD3(v74[7]) = v137;
          *(&v74[7] + 1) = v68;
          v74[9] = v130;
          v74[8] = v129;
          v74[13] = v134;
          v74[12] = v133;
          v74[10] = v131;
          v74[11] = v132;
          *&v74[14] = v135;
          *(&v74[14] + 1) = v54;
          *&v74[15] = v39;
          v42 = v53;
          *(&v74[15] + 1) = v53;
          LOBYTE(v38) = v52;
          LOBYTE(v74[16]) = v52;
          memcpy(&v74[16] + 1, v111, 0xB88uLL);
          memcpy(v4, v74, 0xC89uLL);
          sub_2142F3858(v74, &v75);
          __swift_destroy_boxed_opaque_existential_1(v141);
          LOBYTE(v75) = v40;
          *(&v75 + 1) = v140[0];
          HIDWORD(v75) = *(v140 + 3);
          v76 = v48;
          v77 = v66;
          v78 = v73;
          v79 = v50;
          v80 = v67;
          *v81 = *v139;
          *&v81[3] = *&v139[3];
          v82 = v61;
          v83 = v64;
          v84 = v41;
          v85 = v62;
          *v86 = *v138;
          *&v86[3] = *&v138[3];
          v87 = v57;
          v88 = v59;
          v89 = v70;
          v90 = v58;
          v91 = v49;
          v92 = v136;
          v93 = v137;
          v94 = v68;
          v96 = v130;
          v95 = v129;
          v100 = v134;
          v99 = v133;
          v97 = v131;
          v98 = v132;
          v101 = v135;
          v102 = v54;
          v103 = v56;
          v104 = v42;
          v105 = v38;
          goto LABEL_8;
        }

        sub_214031C4C();
        swift_allocError();
        *v43 = 0xD000000000000025;
        v43[1] = 0x800000021478E710;
        v44 = v63;
        v43[2] = 0xD00000000000001CLL;
        v43[3] = v44;
        swift_willThrow();

        sub_2142F2470(&v114);
        sub_213FB2DF4(v112, &qword_27C907278, &qword_2146F49A0);
        (*(v10 + 8))(v8, v47);

        sub_213FB7170(v55);
        v69 = v50;
        v65 = v71;
        v60 = *(&v70 + 1);
        v51 = v70;
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v37 = 0xD00000000000001CLL;
        v37[1] = 0x800000021478E6F0;
        v37[2] = 0xD00000000000001CLL;
        v37[3] = v63;
        swift_willThrow();

        sub_2142F2470(&v114);
        sub_213FB2DF4(v112, &qword_27C907278, &qword_2146F49A0);
        (*(v10 + 8))(v8, v47);

        v69 = v50;
        v65 = v71;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v33 = 0xD000000000000025;
      v33[1] = 0x800000021478E6C0;
      v34 = v63;
      v33[2] = 0xD00000000000001CLL;
      v33[3] = v34;
      swift_willThrow();

      sub_2142F2470(&v114);
      sub_213FB2DF4(v112, &qword_27C907278, &qword_2146F49A0);
      (*(v10 + 8))(v8, v47);

      v69 = v50;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v29 = 0xD000000000000020;
    v29[1] = 0x800000021478E690;
    v30 = v63;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = v30;
    swift_willThrow();

    sub_2142F2470(&v114);
    sub_213FB2DF4(v112, &qword_27C907278, &qword_2146F49A0);
    (*(v10 + 8))(v8, v47);

    v73 = v46;
  }

  __swift_destroy_boxed_opaque_existential_1(v141);
  LOBYTE(v75) = v72;
  *(&v75 + 1) = v140[0];
  HIDWORD(v75) = *(v140 + 3);
  v76 = v25;
  v77 = v66;
  v78 = v73;
  v79 = v69;
  v80 = v67;
  *v81 = *v139;
  *&v81[3] = *&v139[3];
  v82 = v61;
  v83 = v64;
  v84 = v65;
  v85 = v62;
  *&v86[3] = *&v138[3];
  *v86 = *v138;
  v87 = v57;
  v88 = v59;
  *&v89 = v51;
  *(&v89 + 1) = v60;
  v90 = v58;
  v91 = v49;
  v93 = v137;
  v92 = v136;
  v94 = v68;
  v96 = v130;
  v95 = v129;
  v100 = v134;
  v99 = v133;
  v97 = v131;
  v98 = v132;
  v101 = v135;
  v102 = v54;
  v103 = v56;
  v104 = v55;
  v105 = v52;
LABEL_8:
  memcpy(v106, v111, sizeof(v106));
  return sub_2142F37B0(&v75);
}

uint64_t sub_21414B434(uint64_t a1)
{
  v29 = v2;
  v3 = MEMORY[0x28223BE20](a1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9073E8, &qword_2146F4A20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = *(v1 + 10);
  v45 = *(v1 + 11);
  v9 = *(v1 + 13);
  v46 = *(v1 + 12);
  v47 = v9;
  v10 = *(v1 + 9);
  v42 = *(v1 + 8);
  v43 = v10;
  v11 = *v1;
  v12 = *(v1 + 4);
  v28 = *(v1 + 3);
  v50 = v12;
  v13 = *(v1 + 8);
  v14 = *(v1 + 12);
  v26 = *(v1 + 13);
  v27 = v13;
  v23 = v1[113];
  v15 = *(v1 + 15);
  v24 = v14;
  v25 = v15;
  v48 = *(v1 + 28);
  v44 = v8;
  v22 = *(v1 + 31);
  memcpy(v49, v1 + 264, 0xB81uLL);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2142F3804();
  sub_2146DAA28();
  LOBYTE(v31[0]) = v11;
  v16 = v4;
  v30[0] = 0;
  sub_2142F2984();
  v17 = v29;
  sub_2146DA388();
  if (v17)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v19 = v27;
  v20 = v26;
  if (v50 && (LOBYTE(v31[0]) = 1, , sub_2146DA328(), , v19) && (v31[0] = v19, v30[0] = 2, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0), sub_2142E1F00(), sub_2146DA388(), v20) && (LOBYTE(v31[0]) = 3, , sub_2146DA328(), , LOBYTE(v31[0]) = 4, sub_2146DA338(), LOBYTE(v31[0]) = 5, sub_2146DA3E8(), v38 = v45, v39 = v46, v40 = v47, v41 = v48, v35 = v42, v36 = v43, v37 = v44, v34 = 6, sub_2142F2518(&v42, v31), sub_2142F29D8(), sub_2146DA388(), v32[3] = v38, v32[4] = v39, v32[5] = v40, v33 = v41, v32[0] = v35, v32[1] = v36, v32[2] = v37, sub_2142F2470(v32), v22 != 1))
  {
    v31[0] = v22;
    v30[0] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907248, &qword_2146F4988);
    sub_2142F2A2C();
    sub_2146DA388();
    memcpy(v31, v49, 0xB81uLL);
    v30[2951] = 8;
    sub_213FB2E54(v49, v30, &qword_27C907278, &qword_2146F49A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907278, &qword_2146F49A0);
    sub_2142F2BB8();
    sub_2146DA388();
    memcpy(v30, v31, 0xB81uLL);
    sub_213FB2DF4(v30, &qword_27C907278, &qword_2146F49A0);
    return (*(v5 + 8))(v7, v16);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

__n128 Handwriting.init(with:creationDate:drawing:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2146D8B88();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for Handwriting(0);
  v10 = *(v9 + 20);
  v11 = sub_2146D8B08();
  (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  v12 = a4 + *(v9 + 24);
  v13 = *(a3 + 48);
  *(v12 + 32) = *(a3 + 32);
  *(v12 + 48) = v13;
  *(v12 + 64) = *(a3 + 64);
  result = *(a3 + 16);
  *v12 = *a3;
  *(v12 + 16) = result;
  return result;
}

uint64_t sub_21414BB14()
{
  v1 = 0x6E6F697461657263;
  if (*v0 != 1)
  {
    v1 = 0x676E6977617264;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_21414BB7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143679E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21414BBA4(uint64_t a1)
{
  v2 = sub_2142F38B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21414BBE0(uint64_t a1)
{
  v2 = sub_2142F38B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Handwriting.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v27 = sub_2146D8B08();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2146D8B88();
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9073F0, &qword_2146F4A28);
  v8 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F38B4();
  v11 = v29;
  sub_2146DAA08();
  if (v11)
  {
    v21 = a1;
  }

  else
  {
    v12 = v8;
    v29 = a1;
    v13 = v26;
    v14 = v27;
    LOBYTE(v35) = 0;
    sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_2146DA1C8();
    v23 = v5;
    LOBYTE(v35) = 1;
    sub_214328930(&qword_280B34D28, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_2146DA1C8();
    v40 = 2;
    sub_2142F3908();
    sub_2146DA1C8();
    (*(v12 + 8))(v10, v28);
    v32 = v37;
    v33 = v38;
    v34 = v39;
    v30 = v35;
    v31 = v36;
    v16 = v24;
    (*(v13 + 32))(v24, v7, v23);
    v17 = type metadata accessor for Handwriting(0);
    (*(v25 + 32))(v16 + *(v17 + 20), v4, v14);
    v18 = (v16 + *(v17 + 24));
    v19 = v33;
    v18[2] = v32;
    v18[3] = v19;
    v18[4] = v34;
    v20 = v31;
    *v18 = v30;
    v18[1] = v20;
    v21 = v29;
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t Handwriting.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907408, &unk_2146F4A30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F38B4();
  sub_2146DAA28();
  LOBYTE(v22[0]) = 0;
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2146DA388();
  if (!v2)
  {
    v9 = type metadata accessor for Handwriting(0);
    v27 = 1;
    sub_2146D8B08();
    sub_214328930(&qword_280B34C68, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_2146DA388();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v12 = v10[3];
    v23 = v10[2];
    v24 = v12;
    v13 = v10[3];
    v25 = v10[4];
    v14 = v10[1];
    v22[0] = *v10;
    v22[1] = v14;
    v19 = v23;
    v20 = v13;
    v21 = v10[4];
    v17 = v22[0];
    v18 = v11;
    v26 = 2;
    sub_2142F395C(v22, v16);
    sub_2142F39B8();
    sub_2146DA388();
    v16[2] = v19;
    v16[3] = v20;
    v16[4] = v21;
    v16[0] = v17;
    v16[1] = v18;
    sub_2142F3A0C(v16);
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 sub_21414C3A0@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v15 = *(a5 + 32);
  v26 = *(a7 + 40);
  v27 = *(a7 + 32);
  v25 = *(a7 + 48);
  *a8 = *a1;
  v16 = type metadata accessor for IDSActivitySharingInvitation(0);
  sub_21408AC04(a2, &a8[v16[5]], &qword_27C907418, &unk_214755810);
  sub_21408AC04(a3, &a8[v16[6]], &qword_27C907420, &unk_2146F4A40);
  sub_21408AC04(a4, &a8[v16[7]], &qword_27C907428, &unk_214755800);
  v17 = &a8[v16[8]];
  v18 = *(a5 + 16);
  *v17 = *a5;
  *(v17 + 1) = v18;
  v17[32] = v15;
  v19 = &a8[v16[9]];
  *(v19 + 57) = *(a6 + 57);
  v20 = a6[3];
  v19[2] = a6[2];
  v19[3] = v20;
  v21 = a6[1];
  *v19 = *a6;
  v19[1] = v21;
  v22 = &a8[v16[10]];
  result = *a7;
  v24 = *(a7 + 16);
  *v22 = *a7;
  *(v22 + 1) = v24;
  *(v22 + 4) = v27;
  *(v22 + 5) = v26;
  v22[48] = v25;
  return result;
}

uint64_t sub_21414C4DC()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000018;
    if (v1 != 1)
    {
      v5 = 0xD000000000000019;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x726F70736E617274;
    }
  }

  else
  {
    if (v1 == 5)
    {
      v2 = 0xD000000000000017;
    }

    else
    {
      v2 = 0xD00000000000001ALL;
    }

    v3 = 0xD000000000000019;
    if (v1 != 3)
    {
      v3 = 0xD000000000000016;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21414C5D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214367B10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21414C600(uint64_t a1)
{
  v2 = sub_2142F3A60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21414C63C(uint64_t a1)
{
  v2 = sub_2142F3A60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21414C678@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907428, &unk_214755800);
  MEMORY[0x28223BE20](v44);
  v43 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907420, &unk_2146F4A40);
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907418, &unk_214755810);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  *&v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907430, &qword_2146F4A50);
  v10 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v12 = &v35 - v11;
  v13 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2142F3A60();
  *&v46 = v12;
  v14 = v47;
  sub_2146DAA08();
  if (!v14)
  {
    v41 = v6;
    v47 = v9;
    v15 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907440, &qword_2146F4A58);
    LOBYTE(v54) = 0;
    sub_2142F3AB4();
    v16 = v45;
    sub_2146DA1C8();
    v17 = v59;
    LOBYTE(v59) = 1;
    sub_2142F3B8C();
    sub_2146DA1C8();
    v40 = v17;
    LOBYTE(v59) = 2;
    sub_2142F3C40();
    sub_2146DA1C8();
    LOBYTE(v59) = 3;
    sub_2142F3CF4();
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907488, &qword_2146F4A60);
    LOBYTE(v54) = 4;
    sub_2142F3DA8();
    sub_2146DA1C8();
    v39 = *(&v59 + 1);
    v19 = v59;
    v44 = *(&v60 + 1);
    v20 = v60;
    v21 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9074A0, &qword_2146F4A68);
    v58 = 5;
    sub_2142F3E80();
    sub_2146DA1C8();
    v36 = v19;
    v37 = v21;
    v38 = v20;
    v56 = v61;
    *v57 = *v62;
    *&v57[9] = *&v62[9];
    v54 = v59;
    v55 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9074B8, &qword_2146F4A70);
    v48 = 6;
    sub_2142F3F58();
    sub_2146DA1C8();
    v22 = v41;
    (*(v15 + 8))(v46, v16);
    v23 = v51;
    v24 = v52;
    LOBYTE(v20) = v53;
    v25 = type metadata accessor for IDSActivitySharingInvitation(0);
    v46 = v50;
    v45 = v49;
    v26 = v42;
    sub_21408AC04(v47, &v42[v25[5]], &qword_27C907418, &unk_214755810);
    sub_21408AC04(v22, &v26[v25[6]], &qword_27C907420, &unk_2146F4A40);
    sub_21408AC04(v43, &v26[v25[7]], &qword_27C907428, &unk_214755800);
    *v26 = v40;
    v27 = &v26[v25[8]];
    v28 = v39;
    *v27 = v36;
    *(v27 + 1) = v28;
    v29 = v44;
    *(v27 + 2) = v38;
    *(v27 + 3) = v29;
    v27[32] = v37;
    v30 = &v26[v25[9]];
    v31 = *v57;
    v30[2] = v56;
    v30[3] = v31;
    *(v30 + 57) = *&v57[9];
    v32 = v55;
    *v30 = v54;
    v30[1] = v32;
    v33 = &v26[v25[10]];
    v34 = v46;
    *v33 = v45;
    *(v33 + 1) = v34;
    *(v33 + 4) = v23;
    *(v33 + 5) = v24;
    v33[48] = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_21414CE28(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9074D0, &qword_2146F4A78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F3A60();
  sub_2146DAA28();
  LOBYTE(v43[0]) = *v3;
  LOBYTE(v39) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907440, &qword_2146F4A58);
  sub_2142F4030();
  sub_2146DA388();
  if (!v2)
  {
    v9 = type metadata accessor for IDSActivitySharingInvitation(0);
    LOBYTE(v43[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907418, &unk_214755810);
    sub_2142F4108();
    sub_2146DA388();
    LOBYTE(v43[0]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907420, &unk_2146F4A40);
    sub_2142F41BC();
    sub_2146DA388();
    LOBYTE(v43[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907428, &unk_214755800);
    sub_2142F4270();
    sub_2146DA388();
    v10 = &v3[v9[8]];
    v11 = *(v10 + 1);
    v12 = *(v10 + 2);
    v13 = *(v10 + 3);
    v14 = v10[32];
    v47 = *v10;
    v48 = v11;
    v49 = v12;
    v50 = v13;
    v51 = v14;
    v46 = 4;
    sub_21431326C(v47, v11, v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907488, &qword_2146F4A60);
    sub_2142F4324();
    sub_2146DA388();
    sub_214313220(v47, v48, v49, v50);
    v15 = &v3[v9[9]];
    v16 = v15[1];
    v17 = v15[3];
    v44 = v15[2];
    v45[0] = v17;
    *(v45 + 9) = *(v15 + 57);
    v18 = v15[1];
    v43[0] = *v15;
    v43[1] = v18;
    v19 = v15[3];
    v41 = v44;
    v42[0] = v19;
    *(v42 + 9) = *(v15 + 57);
    v39 = v43[0];
    v40 = v16;
    v38 = 5;
    sub_213FB2E54(v43, v36, &qword_27C9074A0, &qword_2146F4A68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9074A0, &qword_2146F4A68);
    sub_2142F43FC();
    sub_2146DA388();
    v36[2] = v41;
    *v37 = v42[0];
    *&v37[9] = *(v42 + 9);
    v36[0] = v39;
    v36[1] = v40;
    sub_213FB2DF4(v36, &qword_27C9074A0, &qword_2146F4A68);
    v20 = &v3[v9[10]];
    v21 = *(v20 + 1);
    v22 = *(v20 + 2);
    v23 = *(v20 + 3);
    v24 = *(v20 + 4);
    v25 = *(v20 + 5);
    v26 = v20[48];
    v29 = *v20;
    v30 = v21;
    v31 = v22;
    v32 = v23;
    v33 = v24;
    v34 = v25;
    v35 = v26;
    v28[7] = 6;
    sub_2142F44D4(v29, v21, v22, v23, v24, v25, v26, sub_213FDC9D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9074B8, &qword_2146F4A70);
    sub_2142F4534();
    sub_2146DA388();
    sub_2142F460C(v29, v30, v31, v32, v33, v34, v35, sub_213FDC6D0);
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 sub_21414D31C@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char a7@<W6>, unint64_t a8@<X7>, __n128 *a9@<X8>, char a10, __n128 a11, unsigned __int16 a13, __n128 a14, unint64_t a15, char a16, __n128 a17, unsigned __int8 a19, unint64_t a20, char a21)
{
  result = a14;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u8[0] = a3 & 1;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u8[0] = a7 & 1;
  a9[3].n128_u64[1] = a8;
  a9[4].n128_u8[0] = a10 & 1;
  *(a9 + 72) = a11;
  a9[5].n128_u16[4] = a13;
  a9[6] = a14;
  a9[7].n128_u64[0] = a15;
  a9[7].n128_u8[8] = a16 & 1;
  a9[8] = a17;
  a9[9].n128_u8[0] = a19;
  a9[9].n128_u64[1] = a20;
  a9[10].n128_u8[0] = a21 & 1;
  return result;
}

uint64_t sub_21414D3C0(char a1)
{
  result = 0x646E616D6D6F63;
  switch(a1)
  {
    case 1:
      result = 0x496567617373656DLL;
      break;
    case 2:
      result = 0x556567617373656DLL;
      break;
    case 3:
      result = 0x65736E6F70736572;
      break;
    case 4:
      result = 0x736165526C696166;
      break;
    case 5:
      result = 0x6E656B6F74;
      break;
    case 6:
      result = 0x6C616E7265746E69;
      break;
    case 7:
      result = 0x50676E6967676F6CLL;
      break;
    case 8:
      result = 0x746163696C707061;
      break;
    case 9:
      result = 0x5474736575716572;
      break;
    case 10:
      result = 0x6973736553736469;
      break;
    case 11:
      result = 0x6553646572616873;
      break;
    case 12:
      result = 0x6C6F636F746F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21414D588@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214367D60(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21414D5B0(uint64_t a1)
{
  v2 = sub_2142F466C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21414D5EC(uint64_t a1)
{
  v2 = sub_2142F466C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21414D628@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907548, &qword_2146F4A80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F466C();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v52) = 0;
    v47 = sub_2146DA1A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
    v55 = 1;
    sub_2142E14CC();
    sub_2146DA1C8();
    v46 = v52;
    v45 = v53;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    v55 = 2;
    v10 = sub_2142E1278();
    sub_2146DA1C8();
    v41 = v10;
    v42 = v9;
    v43 = v53;
    v44 = v52;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    v55 = 3;
    v13 = sub_2142E11FC();
    sub_2146DA1C8();
    v40 = v52;
    v39 = v53;
    v55 = 4;
    sub_2146DA1C8();
    v37 = v13;
    v38 = v12;
    v14 = v52;
    LODWORD(v13) = v53;
    v55 = 5;
    sub_2146DA1C8();
    v33 = v13;
    v36 = v52;
    v34 = v14;
    v35 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    v55 = 6;
    v15 = sub_2142E1378();
    sub_2146DA1C8();
    v31 = v52;
    v55 = 7;
    v32 = v15;
    sub_2146DA1C8();
    v30 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v55 = 8;
    sub_2142E12FC();
    sub_2146DA1C8();
    v16 = v35;
    v28 = v52;
    v29 = v53;
    v55 = 9;
    sub_2146DA1C8();
    v27 = v52;
    HIDWORD(v26) = v53;
    v55 = 10;
    sub_2146DA1C8();
    v41 = v52;
    v42 = v53;
    v55 = 11;
    sub_2146DA1C8();
    LOBYTE(v13) = v52;
    v55 = 12;
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v17 = v52;
    v18 = v53;
    v19 = v45;
    v54 = v45;
    v20 = v39;
    v51 = v39;
    v21 = v33;
    v50 = v33;
    v22 = BYTE4(v26);
    v49 = BYTE4(v26);
    v48 = v53;
    *a2 = v47;
    *(a2 + 8) = v46;
    *(a2 + 16) = v19;
    v23 = v43;
    *(a2 + 24) = v44;
    *(a2 + 32) = v23;
    *(a2 + 40) = v40;
    *(a2 + 48) = v20;
    *(a2 + 56) = v34;
    *(a2 + 64) = v21;
    *(a2 + 72) = v36;
    *(a2 + 80) = v16;
    *(a2 + 88) = v31;
    *(a2 + 89) = v30;
    v24 = v29;
    *(a2 + 96) = v28;
    *(a2 + 104) = v24;
    *(a2 + 112) = v27;
    *(a2 + 120) = v22;
    v25 = v42;
    *(a2 + 128) = v41;
    *(a2 + 136) = v25;
    *(a2 + 144) = v13;
    *(a2 + 152) = v17;
    *(a2 + 160) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21414DD18(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907550, &qword_2146F4A88);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  v40 = *(v1 + 8);
  LODWORD(v39) = *(v1 + 16);
  v7 = *(v1 + 24);
  v37 = *(v1 + 32);
  v38 = v7;
  v8 = *(v1 + 40);
  LODWORD(v36) = *(v1 + 48);
  v34 = *(v1 + 56);
  v35 = v8;
  v44 = *(v1 + 64);
  v9 = *(v1 + 80);
  v32 = *(v1 + 72);
  v33 = v9;
  LODWORD(v8) = *(v1 + 88);
  v30 = *(v1 + 89);
  v31 = v8;
  v10 = *(v1 + 96);
  v28 = *(v1 + 104);
  v29 = v10;
  v27 = *(v1 + 112);
  v26 = *(v1 + 120);
  v11 = *(v1 + 128);
  v24 = *(v1 + 136);
  v25 = v11;
  v23 = *(v1 + 144);
  v22 = *(v1 + 152);
  v12 = *(v1 + 160);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F466C();
  sub_2146DAA28();
  LOBYTE(v42) = 0;
  v13 = v41;
  sub_2146DA368();
  if (v13)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = v37;
  v16 = v38;
  LODWORD(v41) = v12;
  v17 = v4;
  v42 = v40;
  LOBYTE(v43) = v39;
  v45 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
  sub_2142E1E84();
  sub_2146DA388();
  v42 = v16;
  v43 = v15;
  v45 = 2;
  sub_213FDCA18(v16, v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  v19 = sub_2142E1CAC();
  sub_2146DA388();
  v39 = v18;
  v40 = v17;
  v38 = v19;
  sub_213FDC6BC(v42, v43);
  v42 = v35;
  LOBYTE(v43) = v36;
  v45 = 3;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  v21 = sub_2142E1C30();
  sub_2146DA388();
  v42 = v34;
  LOBYTE(v43) = v44;
  v45 = 4;
  sub_2146DA388();
  v42 = v32;
  v43 = v33;
  v45 = 5;
  sub_213FDCA18(v32, v33);
  sub_2146DA388();
  v36 = v21;
  v37 = v20;
  sub_213FDC6BC(v42, v43);
  LOBYTE(v42) = v31;
  v45 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  sub_2142E1D30();
  sub_2146DA388();
  LOBYTE(v42) = v30;
  v45 = 7;
  sub_2146DA388();
  v42 = v29;
  v43 = v28;
  v45 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  v42 = v27;
  LOBYTE(v43) = v26;
  v45 = 9;
  sub_2146DA388();
  v42 = v25;
  v43 = v24;
  v45 = 10;
  sub_213FDCA18(v25, v24);
  sub_2146DA388();
  sub_213FDC6BC(v42, v43);
  LOBYTE(v42) = v23;
  v45 = 11;
  sub_2146DA388();
  v42 = v22;
  LOBYTE(v43) = v41;
  v45 = 12;
  sub_2146DA388();
  return (*(v17 + 8))(0, v3);
}

__n128 sub_21414E334@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, _OWORD *a15, __int128 a16, __int128 a17, __n128 a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22)
{
  result = a18;
  v23 = a15[3];
  *(a9 + 136) = a15[2];
  *(a9 + 152) = v23;
  v24 = a15[5];
  *(a9 + 168) = a15[4];
  *(a9 + 184) = v24;
  v25 = a15[1];
  *(a9 + 104) = *a15;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12 & 1;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  *(a9 + 120) = v25;
  *(a9 + 200) = a16;
  *(a9 + 216) = a17;
  *(a9 + 232) = a18;
  *(a9 + 248) = a19;
  *(a9 + 256) = a20 & 1;
  *(a9 + 264) = a21;
  *(a9 + 272) = a22;
  return result;
}

unint64_t sub_21414E3E4(char a1)
{
  result = 0x646E616D6D6F63;
  switch(a1)
  {
    case 1:
      result = 0x496567617373656DLL;
      break;
    case 2:
      result = 0x556567617373656DLL;
      break;
    case 3:
      result = 0x65736E6F70736572;
      break;
    case 4:
      result = 0x54746E65746E6F63;
      break;
    case 5:
      result = 0x6D695468636F7065;
      break;
    case 6:
      result = 0x6C725570747468;
      break;
    case 7:
      result = 0x6461654870747468;
      break;
    case 8:
    case 9:
    case 10:
      result = 0x79646F4270747468;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x6F72724570747468;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21414E570@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143681B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21414E598(uint64_t a1)
{
  v2 = sub_2142F46C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21414E5D4(uint64_t a1)
{
  v2 = sub_2142F46C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21414E610@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907558, &qword_2146F4A90);
  v5 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v7 = &v36 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F46C0();
  sub_2146DAA08();
  if (!v2)
  {
    v8 = v5;
    v55 = a2;
    LOBYTE(v67) = 0;
    v54 = sub_2146DA1A8();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    LOBYTE(v61) = 1;
    v10 = sub_2142E11FC();
    sub_2146DA1C8();
    v52 = v9;
    v53 = v10;
    v51 = v67;
    v50 = BYTE8(v67);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    LOBYTE(v61) = 2;
    v12 = sub_2142E1278();
    sub_2146DA1C8();
    *&v49 = v12;
    *(&v49 + 1) = v11;
    v14 = v67;
    LOBYTE(v61) = 3;
    sub_2146DA1C8();
    v48 = v14;
    v47 = v67;
    v46 = BYTE8(v67);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v61) = 4;
    v16 = sub_2142E12FC();
    sub_2146DA1C8();
    v44 = v15;
    v45 = v16;
    v17 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
    LOBYTE(v61) = 5;
    sub_2142E14CC();
    sub_2146DA1C8();
    v43 = *(&v17 + 1);
    v18 = v67;
    v42 = BYTE8(v67);
    LOBYTE(v61) = 6;
    sub_2146DA1C8();
    v40 = v18;
    v41 = v17;
    v19 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056A8, &qword_2146F3D10);
    v75 = 7;
    sub_2142E1720();
    sub_2146DA1C8();
    v63 = v69;
    v64 = v70;
    v65 = v71;
    v66 = v72;
    v61 = v67;
    v62 = v68;
    v74 = 8;
    sub_2146DA1C8();
    v38 = v60;
    v39 = *(&v19 + 1);
    v74 = 9;
    sub_2146DA1C8();
    v37 = v60;
    v74 = 10;
    sub_2146DA1C8();
    v49 = v60;
    v74 = 11;
    sub_2146DA1C8();
    v53 = v60;
    LODWORD(v52) = BYTE8(v60);
    v74 = 12;
    v20 = v56;
    sub_2146DA1C8();
    (*(v8 + 8))(v7, v20);
    v21 = v64;
    v22 = v54;
    v23 = v55;
    *(v55 + 136) = v63;
    *(v23 + 152) = v21;
    v24 = v66;
    *(v23 + 168) = v65;
    *(v23 + 184) = v24;
    v25 = v62;
    *(v23 + 104) = v61;
    v26 = v50;
    v73 = v50;
    v27 = v46;
    v59 = v46;
    v28 = v42;
    v58 = v42;
    v29 = v52;
    v57 = v52;
    *v23 = v22;
    *(v23 + 8) = v51;
    *(v23 + 16) = v26;
    v30 = *(&v48 + 1);
    *(v23 + 24) = v48;
    *(v23 + 32) = v30;
    *(v23 + 40) = v47;
    *(v23 + 48) = v27;
    v31 = v43;
    *(v23 + 56) = v41;
    *(v23 + 64) = v31;
    v32 = v39;
    *(v23 + 72) = v40;
    *(v23 + 80) = v28;
    *(v23 + 88) = v19;
    *(v23 + 96) = v32;
    *(v23 + 120) = v25;
    v33 = *(&v38 + 1);
    *(v23 + 200) = v38;
    *(v23 + 208) = v33;
    v34 = *(&v37 + 1);
    *(v23 + 216) = v37;
    *(v23 + 224) = v34;
    v35 = *(&v49 + 1);
    *(v23 + 232) = v49;
    *(v23 + 240) = v35;
    *(v23 + 248) = v53;
    *(v23 + 256) = v29;
    *(v23 + 264) = v60;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21414EDC8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907560, &qword_2146F4A98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - v5;
  v54 = *(v1 + 8);
  LODWORD(v53) = *(v1 + 16);
  v7 = *(v1 + 24);
  v51 = *(v1 + 32);
  v52 = v7;
  v50 = *(v1 + 40);
  LODWORD(v49) = *(v1 + 48);
  v8 = *(v1 + 64);
  *&v48 = *(v1 + 56);
  *(&v48 + 1) = v8;
  v9 = *(v1 + 72);
  v47 = *(v1 + 80);
  v10 = *(v1 + 88);
  *(&v45 + 1) = *(v1 + 96);
  v46 = v9;
  v11 = *(v1 + 152);
  v68 = *(v1 + 136);
  v69 = v11;
  v12 = *(v1 + 184);
  v70 = *(v1 + 168);
  v71 = v12;
  v13 = *(v1 + 120);
  v66 = *(v1 + 104);
  v67 = v13;
  v14 = *(v1 + 200);
  v44 = *(v1 + 208);
  *&v45 = v10;
  v15 = *(v1 + 216);
  v42 = *(v1 + 224);
  v43 = v14;
  v16 = *(v1 + 240);
  v39 = *(v1 + 232);
  v40 = v16;
  v41 = v15;
  v17 = *(v1 + 248);
  v38 = *(v1 + 256);
  v18 = *(v1 + 272);
  v36 = *(v1 + 264);
  v37 = v17;
  v19 = a1[3];
  v20 = a1;
  v22 = v21;
  __swift_project_boxed_opaque_existential_1(v20, v19);
  sub_2142F46C0();
  sub_2146DAA28();
  LOBYTE(v60) = 0;
  v23 = v72;
  sub_2146DA368();
  if (v23)
  {
    return (*(v4 + 8))(v6, v22);
  }

  v26 = v51;
  v25 = v52;
  v27 = v50;
  v35 = v18;
  v72 = v4;
  *&v60 = v54;
  BYTE8(v60) = v53;
  LOBYTE(v58[0]) = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  v29 = sub_2142E1C30();
  sub_2146DA388();
  v54 = v29;
  *&v60 = v25;
  *(&v60 + 1) = v26;
  LOBYTE(v58[0]) = 2;
  sub_213FDCA18(v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  v30 = sub_2142E1CAC();
  sub_2146DA388();
  v52 = v30;
  v53 = v28;
  sub_213FDC6BC(v60, *(&v60 + 1));
  *&v60 = v27;
  BYTE8(v60) = v49;
  LOBYTE(v58[0]) = 3;
  sub_2146DA388();
  v60 = v48;
  LOBYTE(v58[0]) = 4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v32 = sub_214045AC0();
  sub_2146DA388();
  v51 = v32;
  *&v60 = v46;
  BYTE8(v60) = v47;
  LOBYTE(v58[0]) = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
  sub_2142E1E84();
  sub_2146DA388();
  v60 = v45;
  LOBYTE(v58[0]) = 6;
  sub_2146DA388();
  v62 = v68;
  v63 = v69;
  v64 = v70;
  v65 = v71;
  v60 = v66;
  v61 = v67;
  v59 = 7;
  sub_213FB2E54(&v66, v58, &qword_27C9056A8, &qword_2146F3D10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056A8, &qword_2146F3D10);
  sub_2142E2054();
  sub_2146DA388();
  v50 = v31;
  v58[2] = v62;
  v58[3] = v63;
  v58[4] = v64;
  v58[5] = v65;
  v58[0] = v60;
  v58[1] = v61;
  sub_213FB2DF4(v58, &qword_27C9056A8, &qword_2146F3D10);
  v56 = v43;
  v57 = v44;
  v55 = 8;
  sub_213FDCA18(v43, v44);
  sub_2146DA388();
  sub_213FDC6BC(v56, v57);
  v56 = v41;
  v57 = v42;
  v55 = 9;
  sub_2146DA388();
  v56 = v39;
  v57 = v40;
  v55 = 10;
  sub_213FDCA18(v39, v40);
  v49 = v22;
  sub_2146DA388();
  sub_213FDC6BC(v56, v57);
  v56 = v37;
  LOBYTE(v57) = v38;
  v55 = 11;
  sub_2146DA388();
  v56 = v36;
  v57 = v35;
  v55 = 12;
  v33 = v49;
  sub_2146DA388();
  return (*(v72 + 8))(0, v33);
}

uint64_t sub_21414F474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, char *a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, __int128 a19, uint64_t a20, char *a21, uint64_t a22, char *a23, unint64_t a24)
{
  v147 = a2;
  v111 = *a11;
  v108 = *a13;
  v109 = *a12;
  v114 = *a21;
  v115 = *a23;
  v25 = type metadata accessor for IDSHealthInvitation(0);
  sub_213FB2E54(a14, a9 + v25[12], &qword_27C907568, &unk_2146F4AA0);
  sub_213FB2E54(a15, a9 + v25[13], &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(a16, a9 + v25[14], &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(a17, a9 + v25[15], &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(a20, a9 + v25[18], &qword_27C907570, &qword_214732A10);
  sub_214392E94(&v143);
  v106 = v145;
  v107 = v144;
  v105 = v146;
  sub_214392EC8(&v139);
  v26 = v140;
  v27 = v141;
  v28 = v142;
  sub_2143930D8(&v136);
  v29 = v137;
  v30 = v138;
  sub_214393298(&v132);
  v103 = v134;
  v104 = v133;
  v102 = v135;
  sub_2143932CC(&v128);
  v31 = v129;
  v32 = v130;
  v101 = v131;
  sub_2143934A4(&v125);
  v33 = v126;
  v34 = v127;
  *a9 = v143;
  *(a9 + 16) = v107;
  *(a9 + 24) = v106;
  *(a9 + 32) = v105;
  *(a9 + 40) = v139;
  *(a9 + 56) = v26;
  *(a9 + 64) = v27;
  *(a9 + 72) = v28;
  *(a9 + 80) = v136;
  *(a9 + 96) = v29;
  *(a9 + 104) = v30;
  *(a9 + 112) = a6;
  *(a9 + 120) = a7;
  *(a9 + 128) = a8;
  *(a9 + 136) = a10;
  *(a9 + 144) = v111;
  *(a9 + 145) = v109;
  *(a9 + 146) = v108;
  v35 = a9 + v25[16];
  *v35 = v132;
  *(v35 + 16) = v104;
  *(v35 + 24) = v103;
  *(v35 + 32) = v102;
  v36 = a9 + v25[17];
  *v36 = v128;
  *(v36 + 16) = v31;
  *(v36 + 24) = v32;
  *(v36 + 32) = v101;
  *(a9 + v25[19]) = v114;
  *(a9 + v25[20]) = a22;
  *(a9 + v25[21]) = v115;
  v37 = a9 + v25[22];
  *v37 = v125;
  *(v37 + 16) = v33;
  *(v37 + 24) = v34;
  v39 = *a9;
  v38 = *(a9 + 8);
  v40 = *(a9 + 16);
  v41 = *(a9 + 24);
  v42 = *(a9 + 32);
  *&v139 = a1;
  *(&v139 + 1) = v147;
  v120 = v42;
  LOBYTE(v132) = v42;
  *&v143 = 0xD000000000000018;
  *(&v143 + 1) = 0x800000021478E740;
  v144 = 0xD00000000000001CLL;
  v145 = 0x800000021478A360;

  v117 = v41;
  v43 = v41;
  v44 = v39;
  sub_213FDC9D0(v40, v43);
  v45 = v39(&v139, &v132, &v143);
  if (v124)
  {

LABEL_6:

    sub_213FB2DF4(a20, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(a17, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a16, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a15, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a14, &qword_27C907568, &unk_2146F4AA0);
    v56 = *(a9 + 16);
    v57 = *(a9 + 24);

    sub_213FDC6D0(v56, v57);
    *a9 = v44;
    *(a9 + 8) = v38;
    *(a9 + 16) = v40;
    *(a9 + 24) = v117;
    *(a9 + 32) = v120;
    return sub_21432887C(a9, type metadata accessor for IDSHealthInvitation);
  }

  v112 = v36;
  v113 = v35;
  v110 = v37;
  if ((v45 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v55 = 0xD000000000000018;
    v55[1] = 0x800000021478E740;
    v55[2] = 0xD00000000000001CLL;
    v55[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  sub_213FDC6D0(v40, v117);

  v46 = *(a9 + 16);
  v47 = *(a9 + 24);

  sub_213FDC6D0(v46, v47);
  *a9 = v44;
  *(a9 + 8) = v38;
  v48 = v147;
  *(a9 + 16) = a1;
  *(a9 + 24) = v48;
  *(a9 + 32) = v120;
  v50 = *(a9 + 40);
  v49 = *(a9 + 48);
  v51 = *(a9 + 56);
  v52 = *(a9 + 64);
  v53 = *(a9 + 72);
  *&v139 = a3;
  *(&v139 + 1) = a4;
  LOBYTE(v132) = v53;
  *&v143 = 0xD00000000000002CLL;
  *(&v143 + 1) = 0x800000021478E760;
  v144 = 0xD00000000000001CLL;
  v145 = 0x800000021478A360;

  sub_213FDC9D0(v51, v52);
  v54 = v50(&v139, &v132, &v143);
  if ((v54 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v66 = 0xD00000000000002CLL;
    v66[1] = 0x800000021478E760;
    v66[2] = 0xD00000000000001CLL;
    v66[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a20, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(a17, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a16, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a15, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a14, &qword_27C907568, &unk_2146F4AA0);
    v67 = *(a9 + 56);
    v68 = *(a9 + 64);

    sub_213FDC6D0(v67, v68);
    *(a9 + 40) = v50;
    *(a9 + 48) = v49;
    *(a9 + 56) = v51;
    *(a9 + 64) = v52;
    *(a9 + 72) = v53;
    return sub_21432887C(a9, type metadata accessor for IDSHealthInvitation);
  }

  sub_213FDC6D0(v51, v52);

  v59 = *(a9 + 56);
  v60 = *(a9 + 64);

  sub_213FDC6D0(v59, v60);
  *(a9 + 40) = v50;
  *(a9 + 48) = v49;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = v53;
  v62 = *(a9 + 80);
  v61 = *(a9 + 88);
  v63 = *(a9 + 96);
  v64 = *(a9 + 104);
  *&v139 = a5;
  LOBYTE(v132) = v64;
  *&v143 = 0xD000000000000029;
  *(&v143 + 1) = 0x800000021478E790;
  v144 = 0xD00000000000001CLL;
  v145 = 0x800000021478A360;

  v65 = v62(&v139, &v132, &v143);
  if ((v65 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v75 = 0xD000000000000029;
    v75[1] = 0x800000021478E790;
    v75[2] = 0xD00000000000001CLL;
    v75[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a20, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(a17, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a16, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a15, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a14, &qword_27C907568, &unk_2146F4AA0);

    *(a9 + 80) = v62;
    *(a9 + 88) = v61;
    *(a9 + 96) = v63;
    *(a9 + 104) = v64;
    return sub_21432887C(a9, type metadata accessor for IDSHealthInvitation);
  }

  *(a9 + 80) = v62;
  *(a9 + 88) = v61;
  *(a9 + 96) = a5;
  *(a9 + 104) = v64;
  v70 = *v113;
  v69 = *(v113 + 8);
  v71 = *(v113 + 16);
  v72 = *(v113 + 24);
  v73 = *(v113 + 32);
  v139 = a18;
  LODWORD(v147) = v73;
  LOBYTE(v132) = v73;
  *&v143 = 0xD000000000000022;
  *(&v143 + 1) = 0x800000021478E7C0;
  v144 = 0xD00000000000001CLL;
  v145 = 0x800000021478A360;

  sub_213FDC9D0(v71, v72);
  v74 = v70(&v139, &v132, &v143);
  if ((v74 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v85 = 0xD000000000000022;
    v85[1] = 0x800000021478E7C0;
    v85[2] = 0xD00000000000001CLL;
    v85[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a20, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(a17, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a16, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a15, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a14, &qword_27C907568, &unk_2146F4AA0);
    v86 = *(v113 + 16);
    v87 = *(v113 + 24);

    sub_213FDC6D0(v86, v87);
    *v113 = v70;
    *(v113 + 8) = v69;
    *(v113 + 16) = v71;
    *(v113 + 24) = v72;
    *(v113 + 32) = v147;
    return sub_21432887C(a9, type metadata accessor for IDSHealthInvitation);
  }

  sub_213FDC6D0(v71, v72);

  v76 = *(v113 + 16);
  v77 = *(v113 + 24);

  sub_213FDC6D0(v76, v77);
  *v113 = v70;
  *(v113 + 8) = v69;
  *(v113 + 16) = a18;
  *(v113 + 32) = v147;
  v79 = *v112;
  v78 = *(v112 + 8);
  v80 = *(v112 + 16);
  v81 = *(v112 + 24);
  v82 = *(v112 + 32);
  v139 = a19;
  LODWORD(v147) = v82;
  LOBYTE(v132) = v82;
  *&v143 = 0xD000000000000026;
  *(&v143 + 1) = 0x800000021478E7F0;
  v144 = 0xD00000000000001CLL;
  v145 = 0x800000021478A360;
  v83 = v80;

  sub_213FDC9D0(v83, v81);
  v84 = v79(&v139, &v132, &v143);
  v88 = v79;
  if ((v84 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v96 = 0xD000000000000026;
    v96[1] = 0x800000021478E7F0;
    v96[2] = 0xD00000000000001CLL;
    v96[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a20, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(a17, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a16, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a15, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a14, &qword_27C907568, &unk_2146F4AA0);
    v97 = *(v112 + 16);
    v98 = *(v112 + 24);

    sub_213FDC6D0(v97, v98);
    *v112 = v79;
    *(v112 + 8) = v78;
    *(v112 + 16) = v83;
    *(v112 + 24) = v81;
    *(v112 + 32) = v147;
    return sub_21432887C(a9, type metadata accessor for IDSHealthInvitation);
  }

  sub_213FDC6D0(v83, v81);

  v89 = *(v112 + 16);
  v90 = *(v112 + 24);

  sub_213FDC6D0(v89, v90);
  *v112 = v88;
  *(v112 + 8) = v78;
  *(v112 + 16) = a19;
  *(v112 + 32) = v147;
  v92 = *v110;
  v91 = *(v110 + 8);
  v93 = *(v110 + 16);
  v94 = *(v110 + 24);
  *&v139 = a24;
  LOBYTE(v132) = v94;
  *&v143 = 0xD00000000000002BLL;
  *(&v143 + 1) = 0x800000021478E820;
  v144 = 0xD00000000000001CLL;
  v145 = 0x800000021478A360;

  v95 = v92(&v139, &v132, &v143);
  if ((v95 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v99 = 0xD00000000000002BLL;
    v99[1] = 0x800000021478E820;
    v99[2] = 0xD00000000000001CLL;
    v99[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a20, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(a17, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a16, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a15, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(a14, &qword_27C907568, &unk_2146F4AA0);

    *v110 = v92;
    *(v110 + 8) = v91;
    *(v110 + 16) = v93;
    *(v110 + 24) = v94;
    return sub_21432887C(a9, type metadata accessor for IDSHealthInvitation);
  }

  sub_213FB2DF4(a20, &qword_27C907570, &qword_214732A10);
  sub_213FB2DF4(a17, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(a16, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(a15, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(a14, &qword_27C907568, &unk_2146F4AA0);

  *v110 = v92;
  *(v110 + 8) = v91;
  *(v110 + 16) = a24;
  *(v110 + 24) = v94;
  return result;
}

unint64_t sub_21415031C(char a1)
{
  result = 1684632949;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
    case 16:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x6D614E7473726966;
      break;
    case 4:
      result = 0x656D614E7473616CLL;
      break;
    case 5:
      result = 1701869940;
      break;
    case 6:
      result = 0x6F69746365726964;
      break;
    case 7:
      result = 0x737574617473;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x69646F4D65746164;
      break;
    case 10:
      result = 0x6563634165746164;
      break;
    case 11:
      result = 0x69766E4965746164;
      break;
    case 12:
      result = 0x6974617469766E69;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    case 18:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_214150548@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143685F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214150570(uint64_t a1)
{
  v2 = sub_2142F4714();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141505AC(uint64_t a1)
{
  v2 = sub_2142F4714();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141505E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v172 = a2;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
  MEMORY[0x28223BE20](v173);
  v174 = &v141[-v3];
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v4 = MEMORY[0x28223BE20](v178);
  v175 = &v141[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v4);
  v176 = &v141[-v7];
  MEMORY[0x28223BE20](v6);
  v177 = &v141[-v8];
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907568, &unk_2146F4AA0);
  MEMORY[0x28223BE20](v179);
  v10 = &v141[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907578, &qword_2146F4AB0);
  v180 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v141[-v12];
  v14 = type metadata accessor for IDSHealthInvitation(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v141[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a1[3];
  v204 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_2142F4714();
  v18 = v181;
  sub_2146DAA08();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v204);
  }

  v170 = v14;
  v171 = v16;
  v181 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v196) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v19 = *(&v200 + 1);
  v20 = v200;
  LOBYTE(v196) = 1;
  sub_2146DA1C8();
  v168 = v200;
  v169 = __PAIR128__(*(&v200 + 1), v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v196) = 2;
  v22 = sub_2142E15CC();
  sub_2146DA1C8();
  v166 = v21;
  v167 = v22;
  v23 = v200;
  LOBYTE(v196) = 3;
  sub_2146DA1C8();
  v25 = *(&v200 + 1);
  v165 = v200;
  LOBYTE(v196) = 4;
  sub_2146DA1C8();
  v162 = v25;
  v163 = *(&v200 + 1);
  v26 = v200;
  v164 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907588, &qword_2146F4AB8);
  LOBYTE(v196) = 5;
  sub_2142F4768();
  sub_2146DA1C8();
  v161 = v26;
  LODWORD(v26) = v200;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9075A0, &qword_2146F4AC0);
  LOBYTE(v196) = 6;
  sub_2142F4840();
  sub_2146DA1C8();
  LODWORD(v160) = v26;
  LODWORD(v26) = v200;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9075B8, &qword_2146F4AC8);
  LOBYTE(v196) = 7;
  sub_2142F4918();
  sub_2146DA1C8();
  LODWORD(v159) = v26;
  LODWORD(v158) = v200;
  LOBYTE(v200) = 8;
  sub_2142F49F0();
  sub_2146DA1C8();
  v157 = v23;
  LOBYTE(v200) = 9;
  sub_2142EC0C4();
  v179 = v11;
  v27 = v13;
  sub_2146DA1C8();
  LOBYTE(v200) = 10;
  sub_2146DA1C8();
  LOBYTE(v200) = 11;
  sub_2146DA1C8();
  LOBYTE(v196) = 12;
  sub_2146DA1C8();
  v178 = *(&v200 + 1);
  v28 = v200;
  LOBYTE(v196) = 13;
  sub_2146DA1C8();
  v156 = *(&v200 + 1);
  v29 = v200;
  LOBYTE(v200) = 14;
  sub_2142F4AA4();
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9075F0, &qword_2146F4AD0);
  LOBYTE(v196) = 15;
  sub_2142F4B58();
  sub_2146DA1C8();
  v30 = v200;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907608, &qword_2146F4AD8);
  LOBYTE(v196) = 16;
  sub_2142F4C30();
  sub_2146DA1C8();
  v31 = v200;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907620, &qword_2146F4AE0);
  LOBYTE(v196) = 17;
  sub_2142F4D08();
  sub_2146DA1C8();
  v155 = v200;
  LOBYTE(v196) = 18;
  sub_2146DA1C8();
  v173 = 0;
  v167 = v200;
  v32 = v170;
  v33 = v171;
  sub_213FB2E54(v181, v171 + *(v170 + 48), &qword_27C907568, &unk_2146F4AA0);
  sub_213FB2E54(v177, v33 + v32[13], &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(v176, v33 + v32[14], &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(v175, v33 + v32[15], &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(v174, v33 + v32[18], &qword_27C907570, &qword_214732A10);
  sub_214392E94(&v200);
  v166 = v201;
  v154 = v202;
  v153 = v203;
  sub_214392EC8(&v196);
  v145 = v198;
  v146 = v197;
  v144 = v199;
  sub_2143930D8(&v193);
  v143 = v194;
  v142 = v195;
  sub_214393298(&v189);
  v151 = v191;
  v152 = v190;
  v150 = v192;
  sub_2143932CC(&v185);
  v148 = v187;
  v149 = v186;
  v147 = v188;
  sub_2143934A4(&v182);
  v34 = v183;
  v35 = v184;
  *v33 = v200;
  v36 = v154;
  v33[2] = v166;
  v33[3] = v36;
  *(v33 + 32) = v153;
  *(v33 + 5) = v196;
  v37 = v145;
  v33[7] = v146;
  v33[8] = v37;
  *(v33 + 72) = v144;
  *(v33 + 5) = v193;
  v33[12] = v143;
  *(v33 + 104) = v142;
  v38 = v162;
  v33[14] = v165;
  v33[15] = v38;
  v39 = v163;
  v33[16] = v161;
  v33[17] = v39;
  *(v33 + 144) = v160;
  *(v33 + 145) = v159;
  *(v33 + 146) = v158;
  v40 = v33 + v32[16];
  *v40 = v189;
  *(v40 + 2) = v152;
  *(v40 + 3) = v151;
  v160 = v40;
  v40[32] = v150;
  v41 = v33 + v32[17];
  *v41 = v185;
  *(v41 + 2) = v149;
  *(v41 + 3) = v148;
  v159 = v41;
  v41[32] = v147;
  *(v33 + v32[19]) = v30;
  *(v33 + v32[20]) = v31;
  *(v33 + v32[21]) = v155;
  v42 = v33 + v32[22];
  *v42 = v182;
  *(v42 + 2) = v34;
  v158 = v42;
  v42[24] = v35;
  v44 = *v33;
  v43 = v33[1];
  v45 = v33[2];
  v46 = v33[3];
  LODWORD(v42) = *(v33 + 32);
  *&v196 = v169;
  *(&v196 + 1) = v164;
  LODWORD(v165) = v42;
  LOBYTE(v189) = v42;
  *&v200 = 0xD000000000000018;
  *(&v200 + 1) = 0x800000021478E740;
  v201 = 0xD00000000000001CLL;
  v202 = 0x800000021478A360;
  v170 = 0x800000021478A360;

  v161 = v45;
  v163 = v46;
  sub_213FDC9D0(v45, v46);
  v162 = v43;
  v47 = v173;
  v166 = v44;
  v48 = v44(&v196, &v189, &v200);
  v173 = v47;
  if (v47)
  {

LABEL_10:

    sub_213FB2DF4(v174, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v175, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v176, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v177, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v181, &qword_27C907568, &unk_2146F4AA0);
    (*(v180 + 8))(v27, v179);
    v65 = v171;
    v66 = v171[2];
    v67 = v171[3];

    sub_213FDC6D0(v66, v67);
    v69 = v161;
    v68 = v162;
    *v65 = v166;
    v65[1] = v68;
    v70 = v163;
    v65[2] = v69;
    v65[3] = v70;
    *(v65 + 32) = v165;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v204);
    return sub_21432887C(v171, type metadata accessor for IDSHealthInvitation);
  }

  if ((v48 & 1) == 0)
  {
    sub_214031C4C();
    v63 = swift_allocError();
    *v64 = 0xD000000000000018;
    v64[1] = 0x800000021478E740;
    v64[2] = 0xD00000000000001CLL;
    v64[3] = v170;
    v173 = v63;
    swift_willThrow();
    goto LABEL_10;
  }

  sub_213FDC6D0(v161, v163);

  v49 = v171;
  v50 = v171[2];
  v51 = v171[3];

  sub_213FDC6D0(v50, v51);
  v52 = v162;
  *v49 = v166;
  v49[1] = v52;
  v53 = v164;
  v49[2] = v169;
  v49[3] = v53;
  *(v49 + 32) = v165;
  v55 = v49[5];
  v54 = v49[6];
  v57 = v49[7];
  v56 = v49[8];
  v58 = *(v49 + 72);
  *&v196 = v168;
  *(&v196 + 1) = *(&v169 + 1);
  LODWORD(v169) = v58;
  LOBYTE(v189) = v58;
  *&v200 = 0xD00000000000002CLL;
  *(&v200 + 1) = 0x800000021478E760;
  v201 = 0xD00000000000001CLL;
  v202 = v170;

  v59 = v57;
  v165 = v56;
  sub_213FDC9D0(v57, v56);
  v60 = v54;
  v61 = v173;
  v166 = v55;
  v62 = v55(&v196, &v189, &v200);
  v173 = v61;
  if (v61)
  {

LABEL_16:

    sub_213FB2DF4(v174, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v175, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v176, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v177, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v181, &qword_27C907568, &unk_2146F4AA0);
    (*(v180 + 8))(v27, v179);
    v84 = v171;
    v85 = v171[7];
    v86 = v171[8];

    sub_213FDC6D0(v85, v86);
    v87 = v165;
    v84[5] = v166;
    v84[6] = v54;
    v84[7] = v59;
    v84[8] = v87;
    *(v84 + 72) = v169;
    goto LABEL_11;
  }

  if ((v62 & 1) == 0)
  {
    sub_214031C4C();
    v81 = swift_allocError();
    *v82 = 0xD00000000000002CLL;
    v82[1] = 0x800000021478E760;
    v83 = v170;
    v82[2] = 0xD00000000000001CLL;
    v82[3] = v83;
    v173 = v81;
    swift_willThrow();
    goto LABEL_16;
  }

  sub_213FDC6D0(v59, v165);

  v71 = v171;
  v72 = v171[7];
  v73 = v171[8];

  sub_213FDC6D0(v72, v73);
  v71[5] = v166;
  v71[6] = v60;
  v74 = *(&v169 + 1);
  v71[7] = v168;
  v71[8] = v74;
  *(v71 + 72) = v169;
  v76 = v71[10];
  v75 = v71[11];
  v77 = v71[12];
  v78 = *(v71 + 104);
  *&v196 = v157;
  DWORD2(v169) = v78;
  LOBYTE(v189) = v78;
  *&v200 = 0xD000000000000029;
  *(&v200 + 1) = 0x800000021478E790;
  v201 = 0xD00000000000001CLL;
  v202 = v170;

  v79 = v173;
  *&v169 = v76;
  v80 = v76(&v196, &v189, &v200);
  v173 = v79;
  if (v79)
  {

LABEL_21:

    sub_213FB2DF4(v174, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v175, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v176, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v177, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v181, &qword_27C907568, &unk_2146F4AA0);
    (*(v180 + 8))(v27, v179);
    v99 = v171;

    v99[10] = v169;
    v99[11] = v75;
    v99[12] = v77;
    *(v99 + 104) = BYTE8(v169);
    goto LABEL_11;
  }

  if ((v80 & 1) == 0)
  {
    sub_214031C4C();
    v96 = swift_allocError();
    *v97 = 0xD000000000000029;
    v97[1] = 0x800000021478E790;
    v98 = v170;
    v97[2] = 0xD00000000000001CLL;
    v97[3] = v98;
    v173 = v96;
    swift_willThrow();
    goto LABEL_21;
  }

  v88 = v171;

  v88[10] = v169;
  v88[11] = v75;
  v88[12] = v157;
  *(v88 + 104) = BYTE8(v169);
  v90 = *v160;
  v89 = *(v160 + 1);
  v92 = *(v160 + 2);
  v91 = *(v160 + 3);
  v93 = v160[32];
  *&v196 = v28;
  *(&v196 + 1) = v178;
  LODWORD(v169) = v93;
  LOBYTE(v189) = v93;
  *&v200 = 0xD000000000000022;
  *(&v200 + 1) = 0x800000021478E7C0;
  v201 = 0xD00000000000001CLL;
  v202 = v170;

  sub_213FDC9D0(v92, v91);
  v94 = v173;
  *(&v169 + 1) = v90;
  v95 = v90(&v196, &v189, &v200);
  v173 = v94;
  if (v94)
  {

LABEL_26:

    sub_213FB2DF4(v174, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v175, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v176, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v177, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v181, &qword_27C907568, &unk_2146F4AA0);
    (*(v180 + 8))(v27, v179);
    v116 = v160;
    v117 = *(v160 + 2);
    v118 = *(v160 + 3);

    sub_213FDC6D0(v117, v118);
    *v116 = *(&v169 + 1);
    *(v116 + 1) = v89;
    *(v116 + 2) = v92;
    *(v116 + 3) = v91;
    v116[32] = v169;
    goto LABEL_11;
  }

  if ((v95 & 1) == 0)
  {
    sub_214031C4C();
    v113 = swift_allocError();
    *v114 = 0xD000000000000022;
    v114[1] = 0x800000021478E7C0;
    v115 = v170;
    v114[2] = 0xD00000000000001CLL;
    v114[3] = v115;
    v173 = v113;
    swift_willThrow();
    goto LABEL_26;
  }

  sub_213FDC6D0(v92, v91);
  v100 = v170;

  v101 = v160;
  v102 = *(v160 + 2);
  v103 = *(v160 + 3);

  sub_213FDC6D0(v102, v103);
  *v101 = *(&v169 + 1);
  *(v101 + 1) = v89;
  v104 = v178;
  *(v101 + 2) = v28;
  *(v101 + 3) = v104;
  v101[32] = v169;
  v106 = *v159;
  v105 = *(v159 + 1);
  v107 = *(v159 + 2);
  v108 = *(v159 + 3);
  v109 = v159[32];
  *&v196 = v29;
  *(&v196 + 1) = v156;
  LODWORD(v178) = v109;
  LOBYTE(v189) = v109;
  *&v200 = 0xD000000000000026;
  *(&v200 + 1) = 0x800000021478E7F0;
  v201 = 0xD00000000000001CLL;
  v202 = v100;

  sub_213FDC9D0(v107, v108);
  v110 = v173;
  v111 = v106;
  v112 = v106(&v196, &v189, &v200);
  v173 = v110;
  if (v110)
  {

LABEL_31:

    sub_213FB2DF4(v174, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v175, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v176, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v177, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v181, &qword_27C907568, &unk_2146F4AA0);
    (*(v180 + 8))(v27, v179);
    v133 = v159;
    v134 = *(v159 + 2);
    v135 = *(v159 + 3);

    sub_213FDC6D0(v134, v135);
    *v133 = v106;
    *(v133 + 1) = v105;
    *(v133 + 2) = v107;
    *(v133 + 3) = v108;
    v133[32] = v178;
    goto LABEL_11;
  }

  if ((v112 & 1) == 0)
  {
    sub_214031C4C();
    v130 = swift_allocError();
    *v131 = 0xD000000000000026;
    v131[1] = 0x800000021478E7F0;
    v132 = v170;
    v131[2] = 0xD00000000000001CLL;
    v131[3] = v132;
    v173 = v130;
    swift_willThrow();
    goto LABEL_31;
  }

  sub_213FDC6D0(v107, v108);
  v119 = v170;

  v120 = v159;
  v121 = *(v159 + 2);
  v122 = *(v159 + 3);

  sub_213FDC6D0(v121, v122);
  *v120 = v111;
  *(v120 + 1) = v105;
  v123 = v156;
  *(v120 + 2) = v29;
  *(v120 + 3) = v123;
  v120[32] = v178;
  v125 = *v158;
  v124 = *(v158 + 1);
  v126 = *(v158 + 2);
  v127 = v158[24];
  *&v196 = v167;
  LODWORD(v178) = v127;
  LOBYTE(v189) = v127;
  *&v200 = 0xD00000000000002BLL;
  *(&v200 + 1) = 0x800000021478E820;
  v201 = 0xD00000000000001CLL;
  v202 = v119;

  v128 = v173;
  v129 = v125(&v196, &v189, &v200);
  v173 = v128;
  if (v128)
  {

LABEL_35:

    sub_213FB2DF4(v174, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v175, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v176, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v177, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v181, &qword_27C907568, &unk_2146F4AA0);
    (*(v180 + 8))(v27, v179);
    v140 = v158;

    *v140 = v125;
    *(v140 + 1) = v124;
    *(v140 + 2) = v126;
    v140[24] = v178;
    goto LABEL_11;
  }

  if ((v129 & 1) == 0)
  {
    sub_214031C4C();
    v137 = swift_allocError();
    *v138 = 0xD00000000000002BLL;
    v138[1] = 0x800000021478E820;
    v139 = v170;
    v138[2] = 0xD00000000000001CLL;
    v138[3] = v139;
    v173 = v137;
    swift_willThrow();
    goto LABEL_35;
  }

  sub_213FB2DF4(v174, &qword_27C907570, &qword_214732A10);
  sub_213FB2DF4(v175, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v176, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v177, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v181, &qword_27C907568, &unk_2146F4AA0);
  (*(v180 + 8))(v27, v179);
  v136 = v158;

  *v136 = v125;
  *(v136 + 1) = v124;
  *(v136 + 2) = v167;
  v136[24] = v178;
  sub_214328704(v171, v172, type metadata accessor for IDSHealthInvitation);
  return __swift_destroy_boxed_opaque_existential_1(v204);
}

uint64_t sub_214152120(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907638, &qword_2146F4AE8);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F4714();
  sub_2146DAA28();
  v8 = *(v3 + 24);
  if (v8 == 1)
  {
    goto LABEL_11;
  }

  *&v23 = *(v3 + 16);
  *(&v23 + 1) = v8;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v2)
  {
    return (*(v22 + 8))(v7, v5);
  }

  v9 = *(v3 + 64);
  if (v9 == 1 || (*&v23 = *(v3 + 56), *(&v23 + 1) = v9, v24 = 1, sub_2146DA388(), !*(v3 + 96) || (*&v23 = *(v3 + 96), v24 = 2, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0), sub_2142E1F00(), sub_2146DA388(), v23 = *(v3 + 112), v24 = 3, sub_2146DA388(), v23 = *(v3 + 128), v24 = 4, sub_2146DA388(), LOBYTE(v23) = *(v3 + 144), v24 = 5, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907588, &qword_2146F4AB8), sub_2142F4DE0(), sub_2146DA388(), LOBYTE(v23) = *(v3 + 145), v24 = 6, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9075A0, &qword_2146F4AC0), sub_2142F4EB8(), sub_2146DA388(), LOBYTE(v23) = *(v3 + 146), v24 = 7, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9075B8, &qword_2146F4AC8), sub_2142F4F90(), sub_2146DA388(), v11 = type metadata accessor for IDSHealthInvitation(0), v12 = *(v11 + 48), v20 = v11, v21 = v12, LOBYTE(v23) = 8, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907568, &unk_2146F4AA0), sub_2142F5068(), sub_2146DA388(), v21 = v20[13], LOBYTE(v23) = 9, v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0), v14 = sub_2142EC30C(), v21 = v13, v19 = v14, sub_2146DA388(), LOBYTE(v23) = 10, sub_2146DA388(), LOBYTE(v23) = 11, sub_2146DA388(), v15 = v3 + v20[16], v16 = *(v15 + 24), v16 == 1) || (*&v23 = *(v15 + 16), *(&v23 + 1) = v16, v24 = 12, sub_2146DA388(), v17 = v3 + v20[17], v18 = *(v17 + 24), v18 == 1) || (*&v23 = *(v17 + 16), *(&v23 + 1) = v18, v24 = 13, sub_2146DA388(), LOBYTE(v23) = 14, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10), sub_2142F511C(), sub_2146DA388(), LOBYTE(v23) = *(v3 + v20[19]), v24 = 15, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9075F0, &qword_2146F4AD0), sub_2142F51D0(), sub_2146DA388(), *&v23 = *(v3 + v20[20]), v24 = 16, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907608, &qword_2146F4AD8), sub_2142F52A8(), sub_2146DA388(), LOBYTE(v23) = *(v3 + v20[21]), v24 = 17, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907620, &qword_2146F4AE0), sub_2142F5380(), sub_2146DA388(), !*(v3 + v20[22] + 16))))
  {
LABEL_11:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *&v23 = *(v3 + v20[22] + 16);
    v24 = 18;
    sub_2146DA388();
    return (*(v22 + 8))(v7, v5);
  }

  return result;
}

double sub_2141528B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11, uint64_t a12, unint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, unint64_t a23)
{
  v193 = a2;
  v142 = *(a4 + 32);
  v143 = a10[1];
  v144 = *a10;
  v26 = type metadata accessor for IDSHomeKitInvitation(0);
  v149 = a3;
  sub_213FB2E54(a3, a9 + v26[5], &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(a11, a9 + v26[11], &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2E54(a15, a9 + v26[14], &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2E54(a16, a9 + v26[15], &qword_27C9041D8, &qword_2146ED5C0);
  sub_2144B2AB8(&v189);
  v27 = v190;
  v28 = v191;
  LOBYTE(a3) = v192;
  sub_2144B2AEC(&v184);
  v29 = v185;
  v30 = v186;
  v117 = v187;
  v118 = v188;
  sub_2144B2C30(&v180);
  v119 = v182;
  v120 = v181;
  v126 = v183;
  sub_2144B2D98(&v176);
  v122 = v178;
  v123 = v177;
  v128 = v179;
  sub_2144B2DCC(&v172);
  v124 = v174;
  v125 = v173;
  v129 = v175;
  sub_2144B2E00(&v167);
  v127 = v168;
  v141 = v169;
  v140 = v170;
  v138 = v171;
  sub_2144B2F78(&v162);
  v136 = v163;
  v134 = v164;
  v132 = v165;
  v130 = v166;
  sub_2144B2FB4(v160);
  *(a9 + 16) = v27;
  *(a9 + 24) = v28;
  v31 = a9;
  *(a9 + 32) = a3;
  *a9 = v189;
  v32 = *a4;
  v33 = a4[1];
  v34 = a9 + v26[6];
  *(v34 + 32) = v142;
  *v34 = v32;
  *(v34 + 16) = v33;
  *(a9 + v26[7]) = a5;
  v35 = a9 + v26[8];
  *(v35 + 16) = v29;
  *(v35 + 24) = v30;
  *(v35 + 25) = v117;
  *v35 = v184;
  *(v35 + 26) = v118;
  *(a9 + v26[9]) = a8;
  v36 = (a9 + v26[10]);
  *v36 = v144;
  v36[1] = v143;
  v37 = a9 + v26[12];
  *(v37 + 16) = v120;
  *(v37 + 24) = v119;
  *v37 = v180;
  v121 = v37;
  *(v37 + 32) = v126;
  v38 = a9 + v26[13];
  *(v38 + 16) = v123;
  *(v38 + 24) = v122;
  *v38 = v176;
  *(v38 + 32) = v128;
  v39 = a9 + v26[16];
  *(v39 + 16) = v125;
  *(v39 + 24) = v124;
  *v39 = v172;
  *(v39 + 32) = v129;
  v40 = a9 + v26[17];
  *(v40 + 16) = v127;
  LOBYTE(v37) = v161;
  *v40 = v167;
  *(v40 + 24) = v141;
  *(v40 + 25) = v140;
  *(v40 + 26) = v138;
  v41 = a9 + v26[18];
  *v41 = v162;
  *(v41 + 16) = v136;
  *(v41 + 24) = v134;
  *(v41 + 25) = v132;
  *(v41 + 26) = v130;
  v42 = a9 + v26[19];
  v43 = v160[1];
  *v42 = v160[0];
  *(v42 + 16) = v43;
  *(v42 + 32) = v37;
  v44 = *a9;
  v45 = *(v31 + 8);
  v46 = *(v31 + 16);
  v47 = *(v31 + 24);
  *&v189 = 0xD00000000000001DLL;
  *(&v189 + 1) = 0x800000021478E850;
  v152 = v31;
  LOBYTE(v31) = *(v31 + 32);
  *&v180 = a1;
  *(&v180 + 1) = v193;
  v145 = v31;
  LOBYTE(v176) = v31;
  v190 = 0xD00000000000001CLL;
  v191 = 0x800000021478A360;

  sub_213FDC9D0(v46, v47);
  v48 = v44(&v180, &v176, &v189);
  if (v147)
  {

    sub_213FDC6BC(a22, a23);

LABEL_6:

    sub_213FDC6BC(a12, a13);

    sub_213FB2DF4(a16, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(a15, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(a11, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v149, &qword_27C913090, &unk_2146E9DB0);
    v58 = *(v152 + 16);
    v59 = *(v152 + 24);

    sub_213FDC6D0(v58, v59);
    *v152 = v44;
    *(v152 + 8) = v45;
    *(v152 + 16) = v46;
    *(v152 + 24) = v47;
    *(v152 + 32) = v145;
    v60 = v152;
LABEL_7:
    sub_21432887C(v60, type metadata accessor for IDSHomeKitInvitation);
    return result;
  }

  v137 = v39;
  v139 = v38;
  v133 = v41;
  v135 = v40;
  v131 = v42;
  if ((v48 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v57 = 0xD00000000000001DLL;
    v57[1] = 0x800000021478E850;
    v57[2] = 0xD00000000000001CLL;
    v57[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FDC6BC(a22, a23);

    goto LABEL_6;
  }

  sub_213FDC6D0(v46, v47);

  v49 = *(v152 + 16);
  v50 = *(v152 + 24);

  sub_213FDC6D0(v49, v50);
  *v152 = v44;
  *(v152 + 8) = v45;
  v51 = v193;
  *(v152 + 16) = a1;
  *(v152 + 24) = v51;
  *(v152 + 32) = v145;
  v52 = v35;
  v53 = *v35;
  v54 = *(v52 + 8);
  v156 = *(v52 + 16);
  v148 = *(v52 + 24);
  v146 = *(v52 + 25);
  v55 = *(v52 + 26);
  *&v180 = a6;
  BYTE8(v180) = a7 & 1;
  LODWORD(v193) = v55;
  LOBYTE(v176) = v55;
  *&v189 = 0xD000000000000025;
  *(&v189 + 1) = 0x800000021478E870;
  v190 = 0xD00000000000001CLL;
  v191 = 0x800000021478A360;

  v56 = v53(&v180, &v176, &v189);
  if ((v56 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v66 = 0xD000000000000025;
    v66[1] = 0x800000021478E870;
    v66[2] = 0xD00000000000001CLL;
    v66[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a22, a23);
    sub_213FDC6BC(a12, a13);

    sub_213FB2DF4(a16, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(a15, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(a11, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v149, &qword_27C913090, &unk_2146E9DB0);

    *v52 = v53;
    *(v52 + 8) = v54;
    *(v52 + 16) = v156;
    *(v52 + 24) = v148;
    *(v52 + 25) = v146;
    *(v52 + 26) = v193;
    v60 = v152;
    goto LABEL_7;
  }

  *v52 = v53;
  *(v52 + 8) = v54;
  *(v52 + 16) = a6;
  *(v52 + 24) = a7 & 1;
  *(v52 + 25) = 0;
  *(v52 + 26) = v193;
  v62 = *(v121 + 8);
  v64 = *(v121 + 16);
  v63 = *(v121 + 24);
  v65 = *(v121 + 32);
  *&v189 = *v121;
  *(&v189 + 1) = v62;
  v190 = v64;
  v191 = v63;
  v192 = v65;

  sub_21404F7E0(v64, v63);
  sub_214032118(a12, a13, 2, 0xD000000000000028, 0x800000021478E8A0, 0xD00000000000001CLL, 0x800000021478A360);

  v67 = v190;
  v68 = v191;
  v69 = v192;
  v70 = *(v121 + 16);
  v71 = *(v121 + 24);

  sub_214032564(v70, v71);
  *v121 = v189;
  *(v121 + 16) = v67;
  *(v121 + 24) = v68;
  *(v121 + 32) = v69;
  v73 = *v139;
  v72 = *(v139 + 8);
  v74 = *(v139 + 16);
  v75 = *(v139 + 24);
  v76 = *(v139 + 32);
  v180 = a14;
  LODWORD(v193) = v76;
  LOBYTE(v176) = v76;
  *&v189 = 0xD00000000000002ALL;
  *(&v189 + 1) = 0x800000021478E8D0;
  v190 = 0xD00000000000001CLL;
  v191 = 0x800000021478A360;

  sub_213FDC9D0(v74, v75);
  v77 = v73(&v180, &v176, &v189);
  if ((v77 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v86 = 0xD00000000000002ALL;
    v86[1] = 0x800000021478E8D0;
    v86[2] = 0xD00000000000001CLL;
    v86[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FDC6BC(a22, a23);

    sub_213FDC6BC(a12, a13);
    sub_213FB2DF4(a16, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(a15, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(a11, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v149, &qword_27C913090, &unk_2146E9DB0);
    v87 = *(v139 + 16);
    v88 = *(v139 + 24);

    sub_213FDC6D0(v87, v88);
    *v139 = v73;
    *(v139 + 8) = v72;
    *(v139 + 16) = v74;
    *(v139 + 24) = v75;
    *(v139 + 32) = v193;
LABEL_14:
    v60 = v152;
    goto LABEL_7;
  }

  sub_213FDC6D0(v74, v75);

  v78 = *(v139 + 16);
  v79 = *(v139 + 24);

  sub_213FDC6D0(v78, v79);
  *v139 = v73;
  *(v139 + 8) = v72;
  *(v139 + 16) = a14;
  *(v139 + 32) = v193;
  v81 = *v137;
  v80 = *(v137 + 8);
  v82 = *(v137 + 16);
  v83 = *(v137 + 24);
  v84 = *(v137 + 32);
  v180 = a17;
  LODWORD(v193) = v84;
  LOBYTE(v176) = v84;
  *&v189 = 0xD00000000000001BLL;
  *(&v189 + 1) = 0x800000021478E900;
  v190 = 0xD00000000000001CLL;
  v191 = 0x800000021478A360;

  sub_213FDC9D0(v82, v83);
  v157 = v81;
  v85 = v81(&v180, &v176, &v189);
  if ((v85 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v96 = 0xD00000000000001BLL;
    v96[1] = 0x800000021478E900;
    v96[2] = 0xD00000000000001CLL;
    v96[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FDC6BC(a22, a23);

    sub_213FDC6BC(a12, a13);
    sub_213FB2DF4(a16, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(a15, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(a11, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v149, &qword_27C913090, &unk_2146E9DB0);
    v97 = *(v137 + 16);
    v98 = *(v137 + 24);

    sub_213FDC6D0(v97, v98);
    *v137 = v81;
    *(v137 + 8) = v80;
    *(v137 + 16) = v82;
    *(v137 + 24) = v83;
    *(v137 + 32) = v193;
    goto LABEL_14;
  }

  sub_213FDC6D0(v82, v83);

  v89 = *(v137 + 16);
  v90 = *(v137 + 24);

  sub_213FDC6D0(v89, v90);
  *v137 = v157;
  *(v137 + 8) = v80;
  *(v137 + 16) = a17;
  *(v137 + 32) = v193;
  v91 = *v135;
  v92 = *(v135 + 8);
  v158 = *(v135 + 16);
  v153 = *(v135 + 24);
  v150 = *(v135 + 25);
  v93 = *(v135 + 26);
  *&v180 = a18;
  v94 = v91;
  BYTE8(v180) = a19 & 1;
  LODWORD(v193) = v93;
  LOBYTE(v176) = v93;
  *&v189 = 0xD000000000000024;
  *(&v189 + 1) = 0x800000021478E920;
  v190 = 0xD00000000000001CLL;
  v191 = 0x800000021478A360;

  v95 = v94(&v180, &v176, &v189);
  if ((v95 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v104 = 0xD000000000000024;
    v104[1] = 0x800000021478E920;
    v104[2] = 0xD00000000000001CLL;
    v104[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a22, a23);
    sub_213FDC6BC(a12, a13);

    sub_213FB2DF4(a16, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(a15, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(a11, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v149, &qword_27C913090, &unk_2146E9DB0);

    *v135 = v94;
    *(v135 + 8) = v92;
    *(v135 + 16) = v158;
    *(v135 + 24) = v153;
    *(v135 + 25) = v150;
    *(v135 + 26) = v193;
    goto LABEL_14;
  }

  *v135 = v94;
  *(v135 + 8) = v92;
  *(v135 + 16) = a18;
  *(v135 + 24) = a19 & 1;
  *(v135 + 25) = 0;
  *(v135 + 26) = v193;
  v100 = *v41;
  v99 = *(v41 + 8);
  v101 = *(v41 + 16);
  LODWORD(v193) = *(v41 + 24);
  v159 = *(v41 + 25);
  v102 = *(v41 + 26);
  *&v180 = a20;
  BYTE8(v180) = a21 & 1;
  LOBYTE(v176) = v102;
  *&v189 = 0xD000000000000030;
  *(&v189 + 1) = 0x800000021478E950;
  v190 = 0xD00000000000001CLL;
  v191 = 0x800000021478A360;

  v103 = v100(&v180, &v176, &v189);
  if (v103)
  {

    *v133 = v100;
    *(v133 + 8) = v99;
    *(v133 + 16) = a20;
    *(v133 + 24) = a21 & 1;
    *(v133 + 25) = 0;
    *(v133 + 26) = v102;
    v105 = *(v131 + 8);
    v107 = *(v131 + 16);
    v106 = *(v131 + 24);
    v108 = *(v131 + 32);
    *&v189 = *v131;
    *(&v189 + 1) = v105;
    v190 = v107;
    v191 = v106;
    v192 = v108;

    sub_21404F7E0(v107, v106);
    sub_214032118(a22, a23, 2, 0xD00000000000003ALL, 0x800000021478E990, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(a22, a23);
    sub_213FDC6BC(a12, a13);
    sub_213FB2DF4(a16, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(a15, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(a11, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v149, &qword_27C913090, &unk_2146E9DB0);
    v110 = v190;
    v111 = v191;
    v112 = v192;
    v113 = *(v131 + 16);
    v114 = *(v131 + 24);

    sub_214032564(v113, v114);
    result = *&v189;
    *v131 = v189;
    *(v131 + 16) = v110;
    *(v131 + 24) = v111;
    *(v131 + 32) = v112;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v109 = 0xD000000000000030;
    v109[1] = 0x800000021478E950;
    v109[2] = 0xD00000000000001CLL;
    v109[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a22, a23);
    sub_213FDC6BC(a12, a13);

    sub_213FB2DF4(a16, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(a15, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(a11, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v149, &qword_27C913090, &unk_2146E9DB0);

    *v133 = v100;
    *(v133 + 8) = v99;
    *(v133 + 16) = v101;
    *(v133 + 24) = v193;
    *(v133 + 25) = v159;
    *(v133 + 26) = v102;
    sub_21432887C(v152, type metadata accessor for IDSHomeKitInvitation);
  }

  return result;
}

unint64_t sub_214153D9C(char a1)
{
  result = 0x656D614E656D6F68;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
    case 9:
      v3 = 5;
      goto LABEL_9;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 8:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x5365657469766E69;
      break;
    case 7:
      result = 0x44495555656D6F68;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0x644972657375;
      break;
    case 13:
      result = 0x6974617469766E69;
      break;
    case 14:
      v3 = 11;
LABEL_9:
      result = v3 | 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000025;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_214153F74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214368BE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214153F9C(uint64_t a1)
{
  v2 = sub_2142F5458();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214153FD8(uint64_t a1)
{
  v2 = sub_2142F5458();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214154014@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v205 = a2;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  MEMORY[0x28223BE20](v206);
  v207 = &v162[-v3];
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v4 = MEMORY[0x28223BE20](v209);
  v208 = &v162[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v210 = &v162[-v6];
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  MEMORY[0x28223BE20](v211);
  v8 = &v162[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9076C0, &qword_2146F4AF0);
  v212 = *(v9 - 8);
  v213 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v162[-v10];
  v12 = type metadata accessor for IDSHomeKitInvitation(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v162[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F5458();
  v15 = v247;
  sub_2146DAA08();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v202 = v12;
  v203 = v14;
  v204 = v8;
  v247 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v234) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v16 = v243;
  LOBYTE(v243) = 1;
  sub_2142EC0C4();
  sub_2146DA1C8();
  v211 = *(&v16 + 1);
  v201 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9076D0, &qword_2146F4AF8);
  LOBYTE(v234) = 2;
  sub_2142F54AC();
  sub_2146DA1C8();
  v197 = v243;
  v198 = v244;
  v199 = v245;
  LODWORD(v200) = v246;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v234) = 3;
  v196 = sub_2142E1378();
  sub_2146DA1C8();
  v195 = v18;
  LODWORD(v193) = v243;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v234) = 4;
  v194 = sub_2142E11FC();
  sub_2146DA1C8();
  v192 = v19;
  v20 = v243;
  LODWORD(v19) = BYTE8(v243);
  LOBYTE(v234) = 5;
  sub_2146DA1C8();
  v191 = v19;
  v195 = v20;
  LODWORD(v196) = v243;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9076E8, &qword_2146F4B00);
  LOBYTE(v234) = 6;
  sub_2142F55C8();
  sub_2146DA1C8();
  v190 = *(&v243 + 1);
  v21 = v243;
  LOBYTE(v243) = 7;
  v189 = sub_2142EFBA8();
  sub_2146DA1C8();
  v188 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v234) = 8;
  v187 = sub_2142E1278();
  sub_2146DA1C8();
  v186 = v243;
  LOBYTE(v234) = 9;
  v22 = v11;
  sub_2146DA1C8();
  v185 = v243;
  LOBYTE(v243) = 10;
  sub_2146DA1C8();
  LOBYTE(v243) = 11;
  sub_2142E285C();
  sub_2146DA1C8();
  LOBYTE(v234) = 12;
  sub_2146DA1C8();
  v209 = *(&v243 + 1);
  v23 = v243;
  LOBYTE(v234) = 13;
  sub_2146DA1C8();
  v189 = v243;
  v184 = BYTE8(v243);
  LOBYTE(v234) = 14;
  sub_2146DA1C8();
  v194 = v243;
  LODWORD(v192) = BYTE8(v243);
  LOBYTE(v234) = 15;
  sub_2146DA1C8();
  v206 = 0;
  v187 = *(&v243 + 1);
  v183 = v243;
  v25 = v202;
  v24 = v203;
  sub_213FB2E54(v204, &v203[*(v202 + 20)], &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(v210, v24 + v25[11], &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2E54(v208, v24 + v25[14], &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2E54(v207, v24 + v25[15], &qword_27C9041D8, &qword_2146ED5C0);
  sub_2144B2AB8(&v243);
  v27 = v244;
  v26 = v245;
  LOBYTE(v21) = v246;
  sub_2144B2AEC(&v238);
  v166 = v239;
  v164 = v241;
  v165 = v240;
  v163 = v242;
  sub_2144B2C30(&v234);
  v28 = v235;
  v182 = v236;
  v181 = v237;
  sub_2144B2D98(&v230);
  v179 = v232;
  v180 = v231;
  v178 = v233;
  sub_2144B2DCC(&v226);
  v176 = v228;
  v177 = v227;
  v175 = v229;
  sub_2144B2E00(&v221);
  v174 = v222;
  v172 = v224;
  v173 = v223;
  v171 = v225;
  sub_2144B2F78(&v216);
  v170 = v217;
  v168 = v219;
  v169 = v218;
  v167 = v220;
  sub_2144B2FB4(v214);
  *(v24 + 16) = v27;
  *(v24 + 24) = v26;
  *(v24 + 32) = v21;
  *v24 = v243;
  v29 = v24 + v25[6];
  v30 = *(&v197 + 1);
  *v29 = v197;
  *(v29 + 8) = v30;
  LOBYTE(v30) = v215;
  v31 = v199;
  *(v29 + 16) = v198;
  *(v29 + 24) = v31;
  *(v29 + 32) = v200;
  *(v24 + v25[7]) = v193;
  v32 = v24 + v25[8];
  *v32 = v238;
  *(v32 + 16) = v166;
  LOBYTE(v31) = v164;
  *(v32 + 24) = v165;
  *(v32 + 25) = v31;
  v198 = v32;
  *(v32 + 26) = v163;
  *(v24 + v25[9]) = v196;
  v33 = (v24 + v25[10]);
  v34 = v190;
  *v33 = v188;
  v33[1] = v34;
  v35 = v24 + v25[12];
  *v35 = v234;
  v36 = v182;
  *(v35 + 16) = v28;
  *(v35 + 24) = v36;
  *(&v197 + 1) = v35;
  *(v35 + 32) = v181;
  v37 = v24 + v25[13];
  *v37 = v230;
  v38 = v179;
  *(v37 + 16) = v180;
  *(v37 + 24) = v38;
  *&v197 = v37;
  *(v37 + 32) = v178;
  v39 = v24 + v25[16];
  *v39 = v226;
  v40 = v176;
  *(v39 + 16) = v177;
  *(v39 + 24) = v40;
  v196 = v39;
  *(v39 + 32) = v175;
  v41 = v24 + v25[17];
  *v41 = v221;
  *(v41 + 16) = v174;
  LOBYTE(v40) = v172;
  *(v41 + 24) = v173;
  *(v41 + 25) = v40;
  v193 = v41;
  *(v41 + 26) = v171;
  v42 = v24 + v25[18];
  *v42 = v216;
  *(v42 + 16) = v170;
  LOBYTE(v40) = v168;
  *(v42 + 24) = v169;
  *(v42 + 25) = v40;
  v190 = v42;
  *(v42 + 26) = v167;
  v43 = v24 + v25[19];
  v44 = v214[1];
  *v43 = v214[0];
  *(v43 + 16) = v44;
  v188 = v43;
  *(v43 + 32) = v30;
  v46 = *v24;
  v45 = *(v24 + 8);
  v48 = *(v24 + 16);
  v47 = *(v24 + 24);
  LODWORD(v40) = *(v24 + 32);
  *&v234 = v201;
  *(&v234 + 1) = v211;
  LODWORD(v199) = v40;
  LOBYTE(v230) = v40;
  *&v243 = 0xD00000000000001DLL;
  *(&v243 + 1) = 0x800000021478E850;
  v244 = 0xD00000000000001CLL;
  v245 = 0x800000021478A360;
  v202 = 0x800000021478A360;

  sub_213FDC9D0(v48, v47);
  v49 = v206;
  v200 = v46;
  v50 = v46(&v234, &v230, &v243);
  v206 = v49;
  if (v49)
  {

LABEL_9:

    sub_213FDC6BC(v186, *(&v186 + 1));
    sub_213FDC6BC(v183, v187);
    sub_213FB2DF4(v207, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(v208, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v210, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v204, &qword_27C913090, &unk_2146E9DB0);
    (*(v212 + 8))(v22, v213);
    v65 = v203;
    v66 = *(v203 + 2);
    v67 = *(v203 + 3);

    sub_213FDC6D0(v66, v67);
    *v65 = v200;
    *(v65 + 8) = v45;
    *(v65 + 16) = v48;
    *(v65 + 24) = v47;
    *(v65 + 32) = v199;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v247);
    return sub_21432887C(v203, type metadata accessor for IDSHomeKitInvitation);
  }

  if ((v50 & 1) == 0)
  {
    sub_214031C4C();
    v62 = swift_allocError();
    *v63 = 0xD00000000000001DLL;
    v63[1] = 0x800000021478E850;
    v64 = v202;
    v63[2] = 0xD00000000000001CLL;
    v63[3] = v64;
    v206 = v62;
    swift_willThrow();
    goto LABEL_9;
  }

  sub_213FDC6D0(v48, v47);
  v51 = v202;

  v52 = v203;
  v53 = *(v203 + 2);
  v54 = *(v203 + 3);

  sub_213FDC6D0(v53, v54);
  v55 = v201;
  *v52 = v200;
  *(v52 + 8) = v45;
  v56 = v211;
  *(v52 + 16) = v55;
  *(v52 + 24) = v56;
  *(v52 + 32) = v199;
  v58 = *v198;
  v57 = *(v198 + 8);
  v200 = *(v198 + 16);
  LODWORD(v199) = *(v198 + 24);
  LODWORD(v182) = *(v198 + 25);
  v59 = *(v198 + 26);
  *&v234 = v195;
  BYTE8(v234) = v191;
  LODWORD(v211) = v59;
  LOBYTE(v230) = v59;
  *&v243 = 0xD000000000000025;
  *(&v243 + 1) = 0x800000021478E870;
  v244 = 0xD00000000000001CLL;
  v245 = v51;

  v60 = v206;
  v201 = v58;
  v61 = v58(&v234, &v230, &v243);
  v206 = v60;
  if (v60)
  {

    sub_213FDC6BC(v186, *(&v186 + 1));
    sub_213FDC6BC(v183, v187);
    sub_213FB2DF4(v207, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(v208, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v210, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v204, &qword_27C913090, &unk_2146E9DB0);
    (*(v212 + 8))(v22, v213);

LABEL_16:
    v84 = v198;

    v85 = v200;
    *v84 = v201;
    *(v84 + 8) = v57;
    *(v84 + 16) = v85;
    *(v84 + 24) = v199;
    v86 = v182;
LABEL_17:
    *(v84 + 25) = v86;
    *(v84 + 26) = v211;
    goto LABEL_10;
  }

  if ((v61 & 1) == 0)
  {

    sub_214031C4C();
    v81 = swift_allocError();
    *v82 = 0xD000000000000025;
    v82[1] = 0x800000021478E870;
    v83 = v202;
    v82[2] = 0xD00000000000001CLL;
    v82[3] = v83;
    v206 = v81;
    swift_willThrow();

    sub_213FDC6BC(v186, *(&v186 + 1));
    sub_213FDC6BC(v183, v187);

    sub_213FB2DF4(v207, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(v208, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v210, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v204, &qword_27C913090, &unk_2146E9DB0);
    (*(v212 + 8))(v22, v213);
    goto LABEL_16;
  }

  v68 = v202;

  v69 = v198;

  *v69 = v201;
  *(v69 + 8) = v57;
  *(v69 + 16) = v195;
  *(v69 + 24) = v191;
  *(v69 + 25) = 0;
  *(v69 + 26) = v211;
  v70 = *(*(&v197 + 1) + 8);
  v72 = *(*(&v197 + 1) + 16);
  v71 = *(*(&v197 + 1) + 24);
  v73 = *(*(&v197 + 1) + 32);
  *&v243 = **(&v197 + 1);
  *(&v243 + 1) = v70;
  v244 = v72;
  v245 = v71;
  v246 = v73;

  sub_21404F7E0(v72, v71);
  v74 = v206;
  sub_214032118(v186, *(&v186 + 1), 2, 0xD000000000000028, 0x800000021478E8A0, 0xD00000000000001CLL, v68);
  v206 = v74;
  if (v74)
  {

    sub_213FDC6BC(v186, *(&v186 + 1));
    sub_213FDC6BC(v183, v187);

    sub_213FB2DF4(v207, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(v208, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v210, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v204, &qword_27C913090, &unk_2146E9DB0);
    (*(v212 + 8))(v22, v213);
    v75 = v244;
    v76 = v245;
    v77 = v246;
    v78 = *(&v197 + 1);
LABEL_14:
    v79 = *(v78 + 16);
    v80 = *(v78 + 24);

    sub_214032564(v79, v80);
    *v78 = v243;
    *(v78 + 16) = v75;
    *(v78 + 24) = v76;
    *(v78 + 32) = v77;
    goto LABEL_10;
  }

  v87 = v202;

  v88 = v244;
  v89 = v245;
  LODWORD(v211) = v246;
  v90 = *(&v197 + 1);
  v91 = *(*(&v197 + 1) + 16);
  v92 = *(*(&v197 + 1) + 24);

  sub_214032564(v91, v92);
  *v90 = v243;
  *(v90 + 16) = v88;
  *(v90 + 24) = v89;
  *(v90 + 32) = v211;
  v94 = *v197;
  v93 = *(v197 + 8);
  v95 = *(v197 + 16);
  v96 = *(v197 + 24);
  v97 = *(v197 + 32);
  v234 = v185;
  LODWORD(v201) = v97;
  LOBYTE(v230) = v97;
  *&v243 = 0xD00000000000002ALL;
  *(&v243 + 1) = 0x800000021478E8D0;
  v244 = 0xD00000000000001CLL;
  v245 = v87;

  sub_213FDC9D0(v95, v96);
  v98 = v206;
  v211 = v94;
  v99 = v94(&v234, &v230, &v243);
  v206 = v98;
  if (v98)
  {
    goto LABEL_25;
  }

  if ((v99 & 1) == 0)
  {
    sub_214031C4C();
    v122 = swift_allocError();
    *v123 = 0xD00000000000002ALL;
    v123[1] = 0x800000021478E8D0;
    v124 = v202;
    v123[2] = 0xD00000000000001CLL;
    v123[3] = v124;
    v206 = v122;
    swift_willThrow();

LABEL_25:

    sub_213FDC6BC(v186, *(&v186 + 1));
    sub_213FDC6BC(v183, v187);

    sub_213FB2DF4(v207, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(v208, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v210, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v204, &qword_27C913090, &unk_2146E9DB0);
    (*(v212 + 8))(v22, v213);
    v125 = v197;
    v126 = *(v197 + 16);
    v127 = *(v197 + 24);

    sub_213FDC6D0(v126, v127);
    *v125 = v211;
    *(v125 + 8) = v93;
    *(v125 + 16) = v95;
    *(v125 + 24) = v96;
LABEL_26:
    *(v125 + 32) = v201;
    goto LABEL_10;
  }

  sub_213FDC6D0(v95, v96);
  v100 = v202;

  v101 = v197;
  v102 = *(v197 + 16);
  v103 = *(v197 + 24);

  sub_213FDC6D0(v102, v103);
  *v101 = v211;
  *(v101 + 8) = v93;
  v104 = *(&v185 + 1);
  *(v101 + 16) = v185;
  *(v101 + 24) = v104;
  *(v101 + 32) = v201;
  v106 = *v196;
  v105 = *(v196 + 8);
  v108 = *(v196 + 16);
  v107 = *(v196 + 24);
  v109 = *(v196 + 32);
  *&v234 = v23;
  *(&v234 + 1) = v209;
  LODWORD(v201) = v109;
  LOBYTE(v230) = v109;
  *&v243 = 0xD00000000000001BLL;
  *(&v243 + 1) = 0x800000021478E900;
  v244 = 0xD00000000000001CLL;
  v245 = v100;

  v200 = v107;
  sub_213FDC9D0(v108, v107);
  v110 = v206;
  v211 = v106;
  v111 = v106(&v234, &v230, &v243);
  v206 = v110;
  if (v110)
  {
LABEL_28:

    sub_213FDC6BC(v186, *(&v186 + 1));
    sub_213FDC6BC(v183, v187);

    sub_213FB2DF4(v207, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(v208, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v210, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v204, &qword_27C913090, &unk_2146E9DB0);
    (*(v212 + 8))(v22, v213);
    v125 = v196;
    v131 = *(v196 + 16);
    v132 = *(v196 + 24);

    sub_213FDC6D0(v131, v132);
    *v125 = v211;
    *(v125 + 8) = v105;
    v133 = v200;
    *(v125 + 16) = v108;
    *(v125 + 24) = v133;
    goto LABEL_26;
  }

  if ((v111 & 1) == 0)
  {
    sub_214031C4C();
    v128 = swift_allocError();
    *v129 = 0xD00000000000001BLL;
    v129[1] = 0x800000021478E900;
    v130 = v202;
    v129[2] = 0xD00000000000001CLL;
    v129[3] = v130;
    v206 = v128;
    swift_willThrow();

    goto LABEL_28;
  }

  sub_213FDC6D0(v108, v200);
  v112 = v202;

  v113 = v196;
  v114 = *(v196 + 16);
  v115 = *(v196 + 24);

  sub_213FDC6D0(v114, v115);
  *v113 = v211;
  *(v113 + 8) = v105;
  v116 = v209;
  *(v113 + 16) = v23;
  *(v113 + 24) = v116;
  *(v113 + 32) = v201;
  v118 = *v193;
  v117 = *(v193 + 8);
  v209 = *(v193 + 16);
  LODWORD(v201) = *(v193 + 24);
  LODWORD(v200) = *(v193 + 25);
  v119 = *(v193 + 26);
  *&v234 = v189;
  BYTE8(v234) = v184;
  LODWORD(v211) = v119;
  LOBYTE(v230) = v119;
  *&v243 = 0xD000000000000024;
  *(&v243 + 1) = 0x800000021478E920;
  v244 = 0xD00000000000001CLL;
  v245 = v112;

  v120 = v206;
  v121 = v118(&v234, &v230, &v243);
  v206 = v120;
  if (v120)
  {
    sub_213FDC6BC(v186, *(&v186 + 1));
    sub_213FDC6BC(v183, v187);
    sub_213FB2DF4(v207, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(v208, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v210, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v204, &qword_27C913090, &unk_2146E9DB0);
    (*(v212 + 8))(v22, v213);

LABEL_33:
    v84 = v193;

    *v84 = v118;
    *(v84 + 8) = v117;
    *(v84 + 16) = v209;
    *(v84 + 24) = v201;
    v86 = v200;
    goto LABEL_17;
  }

  if ((v121 & 1) == 0)
  {
    sub_214031C4C();
    v142 = swift_allocError();
    *v143 = 0xD000000000000024;
    v143[1] = 0x800000021478E920;
    v144 = v202;
    v143[2] = 0xD00000000000001CLL;
    v143[3] = v144;
    v206 = v142;
    swift_willThrow();

    sub_213FDC6BC(v186, *(&v186 + 1));
    sub_213FDC6BC(v183, v187);

    sub_213FB2DF4(v207, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(v208, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v210, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v204, &qword_27C913090, &unk_2146E9DB0);
    (*(v212 + 8))(v22, v213);
    goto LABEL_33;
  }

  v134 = v202;

  v135 = v193;

  *v135 = v118;
  *(v135 + 8) = v117;
  *(v135 + 16) = v189;
  *(v135 + 24) = v184;
  *(v135 + 25) = 0;
  *(v135 + 26) = v211;
  v137 = *v190;
  v136 = *(v190 + 8);
  v211 = *(v190 + 16);
  LODWORD(v209) = *(v190 + 24);
  LODWORD(v201) = *(v190 + 25);
  v138 = *(v190 + 26);
  *&v234 = v194;
  BYTE8(v234) = v192;
  v139 = v138;
  LOBYTE(v230) = v138;
  *&v243 = 0xD000000000000030;
  *(&v243 + 1) = 0x800000021478E950;
  v244 = 0xD00000000000001CLL;
  v245 = v134;

  v140 = v206;
  v141 = v137(&v234, &v230, &v243);
  v206 = v140;
  if (v140)
  {
    sub_213FDC6BC(v186, *(&v186 + 1));
    sub_213FDC6BC(v183, v187);
    sub_213FB2DF4(v207, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(v208, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v210, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v204, &qword_27C913090, &unk_2146E9DB0);
    (*(v212 + 8))(v22, v213);

LABEL_38:
    v155 = v190;

    *v155 = v137;
    *(v155 + 8) = v136;
    *(v155 + 16) = v211;
    *(v155 + 24) = v209;
    *(v155 + 25) = v201;
    *(v155 + 26) = v139;
    goto LABEL_10;
  }

  if ((v141 & 1) == 0)
  {
    sub_214031C4C();
    v152 = swift_allocError();
    *v153 = 0xD000000000000030;
    v153[1] = 0x800000021478E950;
    v154 = v202;
    v153[2] = 0xD00000000000001CLL;
    v153[3] = v154;
    v206 = v152;
    swift_willThrow();

    sub_213FDC6BC(v186, *(&v186 + 1));
    sub_213FDC6BC(v183, v187);

    sub_213FB2DF4(v207, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(v208, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v210, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v204, &qword_27C913090, &unk_2146E9DB0);
    (*(v212 + 8))(v22, v213);
    goto LABEL_38;
  }

  v145 = v202;

  v146 = v190;

  *v146 = v137;
  *(v146 + 8) = v136;
  *(v146 + 16) = v194;
  *(v146 + 24) = v192;
  *(v146 + 25) = 0;
  *(v146 + 26) = v139;
  v147 = *(v188 + 8);
  v149 = *(v188 + 16);
  v148 = *(v188 + 24);
  v150 = *(v188 + 32);
  *&v243 = *v188;
  *(&v243 + 1) = v147;
  v244 = v149;
  v245 = v148;
  v246 = v150;

  sub_21404F7E0(v149, v148);
  v151 = v206;
  sub_214032118(v183, v187, 2, 0xD00000000000003ALL, 0x800000021478E990, 0xD00000000000001CLL, v145);
  v206 = v151;
  if (v151)
  {
    sub_213FDC6BC(v186, *(&v186 + 1));
    sub_213FDC6BC(v183, v187);

    sub_213FB2DF4(v207, &qword_27C9041D8, &qword_2146ED5C0);
    sub_213FB2DF4(v208, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v210, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v204, &qword_27C913090, &unk_2146E9DB0);
    (*(v212 + 8))(v22, v213);
    v75 = v244;
    v76 = v245;
    v77 = v246;
    v78 = v188;
    goto LABEL_14;
  }

  sub_213FDC6BC(v186, *(&v186 + 1));
  sub_213FDC6BC(v183, v187);

  sub_213FB2DF4(v207, &qword_27C9041D8, &qword_2146ED5C0);
  sub_213FB2DF4(v208, &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2DF4(v210, &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2DF4(v204, &qword_27C913090, &unk_2146E9DB0);
  (*(v212 + 8))(v22, v213);
  v156 = v244;
  v157 = v245;
  v158 = v246;
  v159 = v188;
  v160 = *(v188 + 16);
  v161 = *(v188 + 24);

  sub_214032564(v160, v161);
  *v159 = v243;
  *(v159 + 16) = v156;
  *(v159 + 24) = v157;
  *(v159 + 32) = v158;
  sub_214328704(v203, v205, type metadata accessor for IDSHomeKitInvitation);
  return __swift_destroy_boxed_opaque_existential_1(v247);
}

uint64_t sub_214156008(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907700, &qword_2146F4B08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v42 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F5458();
  sub_2146DAA28();
  v9 = *(v3 + 24);
  if (v9 != 1)
  {
    v47 = *(v3 + 16);
    v48 = v9;
    v52 = 0;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    if (v2)
    {
      return (*(v6 + 8))(v8, v5);
    }

    v46 = v10;
    v11 = type metadata accessor for IDSHomeKitInvitation(0);
    LOBYTE(v47) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
    sub_2142EC30C();
    sub_2146DA388();
    v12 = v3 + v11[6];
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    v16 = *(v12 + 32);
    v47 = *v12;
    v48 = v13;
    v49 = v14;
    v50 = v15;
    v51 = v16;
    v52 = 2;
    sub_2142F56E4(v47, v13, v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9076D0, &qword_2146F4AF8);
    sub_2142F5728();
    sub_2146DA388();
    sub_2142F5584(v47, v48, v49, v50);
    LOBYTE(v47) = *(v3 + v11[7]);
    v52 = 3;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    v18 = sub_2142E1D30();
    v45 = v17;
    sub_2146DA388();
    v43 = v18;
    v44 = v11;
    v19 = v3 + v11[8];
    if ((*(v19 + 25) & 1) == 0)
    {
      v20 = *(v19 + 24);
      v47 = *(v19 + 16);
      LOBYTE(v48) = v20 & 1;
      v52 = 4;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
      v22 = sub_2142E1C30();
      sub_2146DA388();
      v42[3] = v22;
      v42[4] = v21;
      v23 = v44;
      LOBYTE(v47) = *(v3 + v44[9]);
      v52 = 5;
      sub_2146DA388();
      v24 = (v3 + v23[10]);
      v25 = v24[1];
      v47 = *v24;
      v48 = v25;
      v52 = 6;
      sub_2142F5800(v47, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9076E8, &qword_2146F4B00);
      sub_2142F5848();
      sub_2146DA388();
      sub_2142F56A0(v47, v48);
      v45 = v23[11];
      LOBYTE(v47) = 7;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
      v27 = sub_2142EFE18();
      v45 = v26;
      sub_2146DA388();
      v43 = v27;
      v28 = v3 + v23[12];
      v29 = *(v28 + 24);
      if (v29 >> 60 != 11)
      {
        v47 = *(v28 + 16);
        v48 = v29;
        v52 = 8;
        sub_213FDCA18(v47, v29);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
        v42[2] = sub_2142E1CAC();
        sub_2146DA388();
        sub_213FDC6BC(v47, v48);
        v31 = v3 + v44[13];
        v32 = *(v31 + 24);
        if (v32 != 1)
        {
          v47 = *(v31 + 16);
          v48 = v32;
          v52 = 9;
          sub_2146DA388();
          v42[1] = v30;
          LOBYTE(v47) = 10;
          sub_2146DA388();
          LOBYTE(v47) = 11;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
          sub_2142E29C4();
          sub_2146DA388();
          v33 = v3 + v44[16];
          v34 = *(v33 + 24);
          if (v34 != 1)
          {
            v47 = *(v33 + 16);
            v48 = v34;
            v52 = 12;
            sub_2146DA388();
            v35 = v3 + v44[17];
            if ((*(v35 + 25) & 1) == 0)
            {
              v36 = *(v35 + 24);
              v47 = *(v35 + 16);
              LOBYTE(v48) = v36 & 1;
              v52 = 13;
              sub_2146DA388();
              v37 = v3 + v44[18];
              if ((*(v37 + 25) & 1) == 0)
              {
                v38 = *(v37 + 24);
                v47 = *(v37 + 16);
                LOBYTE(v48) = v38 & 1;
                v52 = 14;
                sub_2146DA388();
                v40 = v3 + v44[19];
                v41 = *(v40 + 24);
                if (v41 >> 60 != 11)
                {
                  v47 = *(v40 + 16);
                  v48 = v41;
                  v52 = 15;
                  sub_213FDCA18(v47, v41);
                  sub_2146DA388();
                  sub_213FDC6BC(v47, v48);
                  return (*(v6 + 8))(v8, v5);
                }
              }
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

uint64_t sub_214156794@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_21415679C()
{
  if (*v0)
  {
    return 0x5279614472616579;
  }

  else
  {
    return 0x527961446B656577;
  }
}

uint64_t sub_2141567D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x527961446B656577 && a2 == 0xEC00000073656C75;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5279614472616579 && a2 == 0xEC00000073656C75)
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

uint64_t sub_2141568B8(uint64_t a1)
{
  v2 = sub_2142F5920();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141568F4(uint64_t a1)
{
  v2 = sub_2142F5920();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214156930@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907728, &qword_2146F4B10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F5920();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907738, &qword_2146F4B18);
    v13 = 0;
    sub_2142F5974();
    sub_2146DA1C8();
    v9 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907760, &qword_2146F4B28);
    v13 = 1;
    sub_2142F5AD0();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214156B38(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907788, &qword_2146F4B38);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F5920();

  sub_2146DAA28();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907738, &qword_2146F4B18);
  sub_2142F5C08();
  sub_2146DA388();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907760, &qword_2146F4B28);
    sub_2142F5D64();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_214156D40@<X0>(unint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, char a4@<W3>, unint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v8 = v7;
  sub_2144B37F4(&v56);
  v14 = v56;
  v13 = v57;
  v49 = v59;
  v76 = *(&v59 + 3);
  v77 = HIBYTE(v59);
  v50 = v60;
  v52 = v61;
  v37 = v58;
  v38 = v62;
  v43 = v63;
  v51 = v65;
  v75 = v67;
  v74 = v66;
  v48 = v68;
  v44 = v69;
  v42 = v70;
  v41 = v71;
  v46 = BYTE2(v59);
  v47 = v73;
  v80 = BYTE1(v59);
  v39 = v64;
  v40 = v72;
  v79 = v64;
  v78 = v72;
  v54 = a1;
  v55 = a2 & 1;
  v53 = BYTE2(v59);
  v56 = 0xD00000000000002ELL;
  v57 = 0x800000021478E9D0;
  v58 = 0xD00000000000001CLL;
  v59 = 0x800000021478A360;

  v45 = v14;
  v15 = v14(&v54, &v53, &v56);
  if (v8)
  {

LABEL_6:
    v20 = v48;
    v19 = v13;
    v21 = v44;
    v17 = v43;

    v22 = v37;
    v23 = v38;
    v24 = v47;
    v25 = v39;
LABEL_7:
    v56 = v45;
    v57 = v19;
    v58 = v22;
    LOBYTE(v59) = v49;
    BYTE1(v59) = v80;
    BYTE2(v59) = v46;
    *(&v59 + 3) = v76;
    HIBYTE(v59) = v77;
    v60 = v50;
    v61 = v52;
    v62 = v23;
    v63 = v17;
    v64 = v25;
    v65 = v51;
    v66 = v74;
    v67 = v75;
    v68 = v20;
    v69 = v21;
    v70 = v42;
    v71 = v41;
    v72 = v40;
    v73 = v24;
    return sub_21404A864(&v56);
  }

  v32 = a1;
  v33 = a3;
  if ((v15 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD00000000000002ELL;
    v18[1] = 0x800000021478E9D0;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  v49 = a2 & 1;

  v80 = 0;
  v54 = a3;
  v55 = a4 & 1;
  v53 = v51;
  v56 = 0xD00000000000002CLL;
  v57 = 0x800000021478EA00;
  v58 = 0xD00000000000001CLL;
  v59 = 0x800000021478A360;

  v16 = v50(&v54, &v53, &v56);
  v17 = v43;
  v24 = v47;
  v21 = v44;
  if ((v16 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD00000000000002CLL;
    v28[1] = 0x800000021478EA00;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = 0x800000021478A360;
    swift_willThrow();
    v20 = v48;

    v22 = a1;
    v25 = v39;
    v23 = v38;
LABEL_11:
    v19 = v13;
    goto LABEL_7;
  }

  v17 = a4 & 1;

  v79 = 0;
  v54 = a5;
  v55 = a6 & 1;
  v53 = v47;
  v56 = 0xD000000000000032;
  v57 = 0x800000021478EA30;
  v58 = 0xD00000000000001CLL;
  v59 = 0x800000021478A360;

  v27 = v48(&v54, &v53, &v56);
  v20 = v48;
  v23 = v33;
  if ((v27 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD000000000000032;
    v31[1] = 0x800000021478EA30;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();

    v25 = v79;
    v22 = v32;
    goto LABEL_11;
  }

  v78 = 0;
  v29 = v80;
  v30 = v79;
  *a7 = v45;
  *(a7 + 8) = v13;
  *(a7 + 16) = v32;
  *(a7 + 24) = v49;
  *(a7 + 25) = v29;
  *(a7 + 26) = v46;
  *(a7 + 27) = v76;
  *(a7 + 31) = v77;
  *(a7 + 32) = v50;
  *(a7 + 40) = v52;
  *(a7 + 48) = v33;
  *(a7 + 56) = v17;
  *(a7 + 57) = v30;
  *(a7 + 58) = v51;
  *(a7 + 59) = v74;
  *(a7 + 63) = v75;
  *(a7 + 64) = v48;
  *(a7 + 72) = v44;
  *(a7 + 80) = a5;
  *(a7 + 88) = a6 & 1;
  *(a7 + 90) = v47;
  return result;
}

uint64_t sub_21415728C()
{
  v1 = 0x656D6954646E65;
  if (*v0 != 1)
  {
    v1 = 0x6854664F73796164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D69547472617473;
  }
}

uint64_t sub_2141572F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143690E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214157320(uint64_t a1)
{
  v2 = sub_2142F5E9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21415735C(uint64_t a1)
{
  v2 = sub_2142F5E9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214157398@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9077C0, &qword_2146F4B40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F5E9C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v69) = 0;
  sub_2142E11FC();
  sub_2146DA1C8();
  v68 = a2;
  v103 = v76;
  v9 = v77;
  LOBYTE(v69) = 1;
  sub_2146DA1C8();
  v67 = v9;
  v65 = v76;
  v10 = v77;
  v93 = 2;
  sub_2146DA1C8();
  v49 = v10;
  v48 = v94;
  v47 = v95;
  sub_2144B37F4(&v76);
  v12 = v77;
  v66 = v76;
  v51 = v78;
  v50 = v79;
  v100 = *(&v79 + 3);
  v101 = HIBYTE(v79);
  v64 = v80;
  v52 = v81;
  v57 = v82;
  v63 = v84;
  v98 = v86;
  v97 = v85;
  v60 = v87;
  v62 = v88;
  v56 = v89;
  v55 = v90;
  v61 = v92;
  v102 = BYTE1(v79);
  v53 = v83;
  v99 = v83;
  v54 = v91;
  v96 = v91;
  *&v69 = v103;
  BYTE8(v69) = v67;
  v58 = BYTE2(v79);
  LOBYTE(v74) = BYTE2(v79);
  v76 = 0xD00000000000002ELL;
  v77 = 0x800000021478E9D0;
  v78 = 0xD00000000000001CLL;
  v79 = 0x800000021478A360;

  v59 = v12;
  v13 = v66(&v69, &v74, &v76);
  v46 = 0x800000021478A360;
  if ((v13 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD00000000000002ELL;
    v18[1] = 0x800000021478E9D0;
    v19 = v46;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = v19;
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
    v20 = v60;
    v15 = v59;
    v17 = v57;

    v21 = v51;
    v22 = v50;
LABEL_7:
    v23 = v53;
    v24 = v52;
    goto LABEL_8;
  }

  v14 = v46;

  v15 = v59;

  v102 = 0;
  *&v69 = v65;
  BYTE8(v69) = v49;
  LOBYTE(v74) = v63;
  v76 = 0xD00000000000002CLL;
  v77 = 0x800000021478EA00;
  v78 = 0xD00000000000001CLL;
  v79 = v14;

  v16 = (v64)(&v69, &v74, &v76);
  v17 = v57;
  if ((v16 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v29 = 0xD00000000000002CLL;
    v29[1] = 0x800000021478EA00;
    v30 = v46;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = v30;
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
    v20 = v60;

    v22 = v67;
    v21 = v103;
    goto LABEL_7;
  }

  v25 = v46;

  v99 = 0;
  v74 = v48;
  v26 = v47;
  v75 = v47;
  LOBYTE(v69) = v61;
  v76 = 0xD000000000000032;
  v77 = 0x800000021478EA30;
  v78 = 0xD00000000000001CLL;
  v79 = v25;

  v27 = v60;
  v28 = v60(&v74, &v69, &v76);
  v20 = v27;
  if (v28)
  {

    (*(v6 + 8))(v8, v5);
    v31 = v62;

    v96 = 0;
    *&v69 = v66;
    *(&v69 + 1) = v15;
    *&v70 = v103;
    BYTE8(v70) = v67;
    v57 = v102;
    BYTE9(v70) = v102;
    v32 = v58;
    BYTE10(v70) = v58;
    *(&v70 + 11) = v100;
    HIBYTE(v70) = v101;
    v71 = v64;
    v33 = *(&v64 + 1);
    *&v72 = v65;
    v34 = v26;
    v35 = v49;
    BYTE8(v72) = v49;
    LODWORD(v56) = v99;
    BYTE9(v72) = v99;
    v36 = v63;
    BYTE10(v72) = v63;
    *(&v72 + 11) = v97;
    HIBYTE(v72) = v98;
    *v73 = v27;
    v37 = v48;
    *&v73[8] = v31;
    *&v73[16] = v48;
    v73[24] = v34;
    v73[25] = 0;
    v38 = v61;
    v73[26] = v61;
    v39 = v70;
    v40 = v68;
    *v68 = v69;
    v40[1] = v39;
    v41 = v71;
    v42 = v72;
    v43 = *v73;
    *(v40 + 75) = *&v73[11];
    v40[3] = v42;
    v40[4] = v43;
    v40[2] = v41;
    sub_21404A808(&v69, &v76);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v76 = v66;
    v77 = v59;
    v78 = v103;
    LOBYTE(v79) = v67;
    BYTE1(v79) = v57;
    BYTE2(v79) = v32;
    *(&v79 + 3) = v100;
    HIBYTE(v79) = v101;
    *&v80 = v64;
    *(&v80 + 1) = v33;
    v81 = v65;
    v82 = v35;
    v83 = v56;
    v84 = v36;
    v85 = v97;
    v86 = v98;
    v87 = v60;
    v88 = v62;
    v89 = v37;
    v90 = v47;
    v91 = 0;
    v92 = v38;
    return sub_21404A864(&v76);
  }

  sub_214031C4C();
  swift_allocError();
  *v44 = 0xD000000000000032;
  v44[1] = 0x800000021478EA30;
  v45 = v46;
  v44[2] = 0xD00000000000001CLL;
  v44[3] = v45;
  swift_willThrow();
  (*(v6 + 8))(v8, v5);

  v23 = v99;
  v24 = v65;
  v17 = v49;
  v22 = v67;
  v21 = v103;
LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(a1);
  v76 = v66;
  v77 = v15;
  v78 = v21;
  LOBYTE(v79) = v22;
  BYTE1(v79) = v102;
  BYTE2(v79) = v58;
  *(&v79 + 3) = v100;
  HIBYTE(v79) = v101;
  v80 = v64;
  v81 = v24;
  v82 = v17;
  v83 = v23;
  v84 = v63;
  v86 = v98;
  v85 = v97;
  v87 = v20;
  v88 = v62;
  v89 = v56;
  v90 = v55;
  v91 = v54;
  v92 = v61;
  return sub_21404A864(&v76);
}

uint64_t sub_214157E4C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9077D0, &qword_2146F4B48);
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - v4;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 25);
  v16 = *(v1 + 48);
  v21 = *(v1 + 56);
  v15 = *(v1 + 57);
  v14 = *(v1 + 80);
  v9 = *(v1 + 88);
  v12 = *(v1 + 89);
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F5E9C();
  sub_2146DAA28();
  if (v8)
  {
LABEL_9:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v19 = v6;
  v20 = v7 & 1;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  sub_2142E1C30();
  v10 = v17;
  sub_2146DA388();
  if (!v10)
  {
    if ((v15 & 1) == 0)
    {
      v19 = v16;
      v20 = v21 & 1;
      v22 = 1;
      sub_2146DA388();
      if ((v12 & 1) == 0)
      {
        v19 = v14;
        v20 = v13 & 1;
        v22 = 2;
        sub_2146DA388();
        return (*(v18 + 8))(v5, v3);
      }
    }

    goto LABEL_9;
  }

  return (*(v18 + 8))(v5, v3);
}

uint64_t sub_214158124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21408AC04(a1, a3, &qword_27C913090, &unk_2146E9DB0);
  v5 = type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule(0);
  return sub_21408AC04(a2, a3 + *(v5 + 20), &qword_27C913090, &unk_2146E9DB0);
}

uint64_t sub_2141581A0()
{
  if (*v0)
  {
    return 0x65746144646E65;
  }

  else
  {
    return 0x7461447472617473;
  }
}

uint64_t sub_2141581E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
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

uint64_t sub_2141582C4(uint64_t a1)
{
  v2 = sub_2142F5EF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214158300(uint64_t a1)
{
  v2 = sub_2142F5EF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21415833C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9077D8, &qword_2146F4B50);
  v19 = *(v10 - 8);
  v20 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F5EF0();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v19;
    v22 = 0;
    sub_2142EC0C4();
    sub_2146DA1C8();
    v21 = 1;
    sub_2146DA1C8();
    (*(v13 + 8))(v12, v20);
    v15 = v18;
    sub_21408AC04(v9, v18, &qword_27C913090, &unk_2146E9DB0);
    v16 = type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule(0);
    sub_21408AC04(v7, v15 + *(v16 + 20), &qword_27C913090, &unk_2146E9DB0);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141585D4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9077E8, &qword_2146F4B58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F5EF0();
  sub_2146DAA28();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  sub_2142EC30C();
  sub_2146DA388();
  if (!v1)
  {
    type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule(0);
    v8[14] = 1;
    sub_2146DA388();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2141587A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a2;
  v8 = type metadata accessor for IDSInvitationContext(0);
  v34 = a4;
  sub_2143287C0(a4, a5 + *(v8 + 24), type metadata accessor for IDSInvitationContextType);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2140676DC;
  *(v10 + 24) = 0;
  *(inited + 32) = v10;
  sub_214042B80(inited, &v41);
  v11 = v41;
  v12 = v42;
  v13 = v43;
  v14 = v44;
  v15 = v45;
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2146EA720;
  *(v17 + 16) = sub_21438F468;
  *(v17 + 24) = v18;
  *(v16 + 32) = v17;
  sub_21404328C(v16, &v37);
  v19 = v38;
  v20 = v39;
  v21 = v40;
  *a5 = v11;
  *(a5 + 8) = v12;
  *(a5 + 16) = v13;
  *(a5 + 24) = v14;
  *(a5 + 32) = v15;
  *(a5 + 40) = v37;
  *(a5 + 56) = v19;
  *(a5 + 64) = v20;
  *(a5 + 65) = v21;
  *&v37 = a1;
  *(&v37 + 1) = v46;
  v36[0] = v15;
  v41 = 0xD00000000000001BLL;
  v42 = 0x800000021478EA70;
  v43 = 0xD00000000000001CLL;
  v44 = 0x800000021478A360;

  v22 = v11(&v37, v36, &v41);
  if (v33)
  {

LABEL_6:

    sub_21432887C(v34, type metadata accessor for IDSInvitationContextType);

    *a5 = v11;
    *(a5 + 8) = v12;
    *(a5 + 16) = v13;
    *(a5 + 24) = v14;
    *(a5 + 32) = v15;
    return sub_21432887C(a5, type metadata accessor for IDSInvitationContext);
  }

  if ((v22 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD00000000000001BLL;
    v28[1] = 0x800000021478EA70;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  *a5 = v11;
  *(a5 + 8) = v12;
  v23 = v46;
  *(a5 + 16) = a1;
  *(a5 + 24) = v23;
  *(a5 + 32) = v15;
  v25 = *(a5 + 40);
  v24 = *(a5 + 48);
  v46 = *(a5 + 56);
  v26 = *(a5 + 65);
  v36[0] = *(a5 + 64);
  *&v37 = a3;
  v35 = v26;
  v41 = 0xD000000000000020;
  v42 = 0x800000021478EA90;
  v43 = 0xD00000000000001CLL;
  v44 = 0x800000021478A360;

  v27 = v25(&v37, &v35, &v41);
  if ((v27 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD000000000000020;
    v30[1] = 0x800000021478EA90;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = 0x800000021478A360;
    swift_willThrow();
    sub_21432887C(v34, type metadata accessor for IDSInvitationContextType);
    v31 = v36[0];

    *(a5 + 40) = v25;
    *(a5 + 48) = v24;
    *(a5 + 56) = v46;
    *(a5 + 64) = v31;
    *(a5 + 65) = v26;
    return sub_21432887C(a5, type metadata accessor for IDSInvitationContext);
  }

  sub_21432887C(v34, type metadata accessor for IDSInvitationContextType);

  *(a5 + 40) = v25;
  *(a5 + 48) = v24;
  *(a5 + 56) = a3;
  *(a5 + 64) = 0;
  *(a5 + 65) = v26;
  return result;
}

uint64_t sub_214158C6C()
{
  v1 = 0x54747865746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x747865746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x616D65686373;
  }
}

uint64_t sub_214158CCC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436920C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214158CF4(uint64_t a1)
{
  v2 = sub_2142F5F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214158D30(uint64_t a1)
{
  v2 = sub_2142F5F44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214158D6C@<X0>(void *a1@<X0>, uint64_t (*a2)(__int128 *, char *, unint64_t *)@<X8>)
{
  v66 = a2;
  v3 = type metadata accessor for IDSInvitationContextType(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9077F0, &qword_2146F4B60);
  v67 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v56 - v7;
  v9 = type metadata accessor for IDSInvitationContext(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2142F5F44();
  v13 = v68;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v80);
  }

  v68 = v5;
  v14 = v67;
  v65 = v11;
  LOBYTE(v75) = 0;
  v15 = v8;
  v16 = sub_2146DA168();
  v18 = v17;
  v19 = v16;
  LOBYTE(v75) = 1;
  v63 = sub_2146DA1A8();
  LOBYTE(v75) = 2;
  sub_214328930(&qword_27C905090, type metadata accessor for IDSInvitationContextType, byte_214702BF0);
  v20 = v68;
  sub_2146DA1C8();
  v59 = v15;
  v60 = v6;
  v22 = *(v9 + 24);
  v61 = v19;
  v23 = v65;
  sub_2143287C0(v20, &v65[v22], type metadata accessor for IDSInvitationContextType);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v64 = v18;
  inited = swift_initStackObject();
  v58 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_2140676DC;
  *(v25 + 24) = 0;
  *(inited + 32) = v25;
  sub_214042B80(inited, &v75);
  v26 = v75;
  v28 = v76;
  v27 = v77;
  v29 = v78;
  v62 = v79;
  v30 = swift_initStackObject();
  *(v30 + 16) = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v31 = swift_allocObject();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_2146EA720;
  *(v31 + 16) = sub_21438F468;
  *(v31 + 24) = v32;
  *(v30 + 32) = v31;
  v33 = v30;
  LOBYTE(v30) = v62;
  sub_21404328C(v33, &v71);
  v34 = v72;
  v35 = v73;
  v36 = v74;
  *v23 = v26;
  *(v23 + 1) = v28;
  v57 = v27;
  *(v23 + 2) = v27;
  *(v23 + 3) = v29;
  v23[32] = v30;
  *(v23 + 40) = v71;
  *(v23 + 7) = v34;
  v23[64] = v35;
  v23[65] = v36;
  *&v71 = v61;
  *(&v71 + 1) = v64;
  v70[0] = v30;
  v75 = 0xD00000000000001BLL;
  v76 = 0x800000021478EA70;
  v77 = 0xD00000000000001CLL;
  v78 = 0x800000021478A360;
  v37 = v26;
  *&v58 = v29;

  v38 = v28;
  v39 = v26(&v71, v70, &v75);
  v40 = v26;
  v41 = v61;
  if (v39)
  {
    v57 = 0;

    v42 = v65;
    v47 = v64;

    *v42 = v37;
    *(v42 + 1) = v38;
    *(v42 + 2) = v41;
    *(v42 + 3) = v47;
    v42[32] = v62;
    v44 = *(v42 + 5);
    v43 = *(v42 + 6);
    v45 = *(v42 + 7);
    v46 = v42[64];
    LODWORD(v47) = v42[65];
    v70[0] = v46;
    *&v71 = v63;
    v69 = v47;
    v75 = 0xD000000000000020;
    v76 = 0x800000021478EA90;
    v77 = 0xD00000000000001CLL;
    v78 = 0x800000021478A360;

    v48 = v57;
    v64 = v44;
    v49 = v44(&v71, &v69, &v75);
    if (v48)
    {
      v66 = v45;
      sub_21432887C(v68, type metadata accessor for IDSInvitationContextType);
      (*(v14 + 8))(v59, v60);

LABEL_12:
      v52 = v65;

      *(v52 + 40) = v64;
      *(v52 + 48) = v43;
      *(v52 + 56) = v66;
      *(v52 + 64) = v46;
      *(v52 + 65) = v47;
      goto LABEL_8;
    }

    v62 = v47;
    v47 = v60;
    if ((v49 & 1) == 0)
    {
      v66 = v45;
      sub_214031C4C();
      swift_allocError();
      *v55 = 0xD000000000000020;
      v55[1] = 0x800000021478EA90;
      v55[2] = 0xD00000000000001CLL;
      v55[3] = 0x800000021478A360;
      swift_willThrow();
      sub_21432887C(v68, type metadata accessor for IDSInvitationContextType);
      (*(v14 + 8))(v59, v47);
      v46 = v70[0];
      LOBYTE(v47) = v62;
      goto LABEL_12;
    }

    sub_21432887C(v68, type metadata accessor for IDSInvitationContextType);
    (*(v14 + 8))(v59, v47);
    v54 = v65;

    *(v54 + 40) = v64;
    *(v54 + 48) = v43;
    *(v54 + 56) = v63;
    *(v54 + 64) = 0;
    *(v54 + 65) = v62;
    sub_214328704(v54, v66, type metadata accessor for IDSInvitationContext);
    return __swift_destroy_boxed_opaque_existential_1(v80);
  }

  sub_214031C4C();
  swift_allocError();
  *v50 = 0xD00000000000001BLL;
  v50[1] = 0x800000021478EA70;
  v50[2] = 0xD00000000000001CLL;
  v50[3] = 0x800000021478A360;
  swift_willThrow();

  v51 = v62;
  sub_21432887C(v68, type metadata accessor for IDSInvitationContextType);
  (*(v67 + 8))(v59, v60);
  v52 = v65;

  *v52 = v40;
  *(v52 + 8) = v38;
  v53 = v58;
  *(v52 + 16) = v57;
  *(v52 + 24) = v53;
  *(v52 + 32) = v51;
LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v80);
  return sub_21432887C(v52, type metadata accessor for IDSInvitationContext);
}

uint64_t sub_214159680(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907800, &qword_2146F4B68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F5F44();
  sub_2146DAA28();
  if (!*(v3 + 24))
  {
    goto LABEL_6;
  }

  v10[15] = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  if (*(v3 + 64))
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v10[14] = 1;
    sub_2146DA368();
    type metadata accessor for IDSInvitationContext(0);
    v10[13] = 2;
    type metadata accessor for IDSInvitationContextType(0);
    sub_214328930(&qword_27C905098, type metadata accessor for IDSInvitationContextType, byte_214702C18);
    sub_2146DA388();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t IDSInvitation.init(with:state:expiration:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_2143287C0(a1, a7, type metadata accessor for IDSInvitationContext);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2146F3C70;
  *(v9 + 16) = sub_21438F468;
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  sub_21404328C(inited, &v56);
  v11 = v57;
  v12 = v58;
  v13 = v59;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2140676DC;
  *(v15 + 24) = 0;
  *(v14 + 32) = v15;
  sub_214042B80(v14, &v52);
  v16 = v53;
  v17 = v54;
  v18 = v55;
  v19 = type metadata accessor for IDSInvitation(0);
  v20 = a7 + v19[5];
  *v20 = v56;
  *(v20 + 16) = v11;
  *(v20 + 24) = v12;
  *(v20 + 25) = v13;
  v21 = a7 + v19[6];
  *v21 = a3;
  *(v21 + 8) = a4 & 1;
  v22 = a7 + v19[7];
  *v22 = v52;
  *(v22 + 16) = v16;
  *(v22 + 24) = v17;
  *(v22 + 32) = v18;
  v24 = *v20;
  v23 = *(v20 + 8);
  v41 = *(v20 + 16);
  v25 = *(v20 + 24);
  v26 = *(v20 + 25);
  v51[0] = v25;
  *&v56 = a2;
  v44 = v26;
  v50 = v26;
  *&v52 = 0xD000000000000013;
  *(&v52 + 1) = 0x800000021478EAC0;
  v53 = 0xD00000000000001CLL;
  v54 = 0x800000021478A360;

  v27 = v60;
  v28 = v24(&v56, &v50, &v52);
  v60 = v27;
  if (v27)
  {

    sub_21432887C(a1, type metadata accessor for IDSInvitationContext);

LABEL_7:

    *v20 = v24;
    *(v20 + 8) = v23;
    *(v20 + 16) = v41;
    *(v20 + 24) = v25;
    *(v20 + 25) = v44;
    return sub_21432887C(a7, type metadata accessor for IDSInvitation);
  }

  if ((v28 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD000000000000013;
    v36[1] = 0x800000021478EAC0;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = 0x800000021478A360;
    swift_willThrow();
    sub_21432887C(a1, type metadata accessor for IDSInvitationContext);
    v25 = v51[0];
    goto LABEL_7;
  }

  *v20 = v24;
  *(v20 + 8) = v23;
  *(v20 + 16) = a2;
  *(v20 + 24) = 0;
  *(v20 + 25) = v44;
  v30 = *v22;
  v29 = *(v22 + 8);
  v31 = *(v22 + 24);
  v45 = *(v22 + 16);
  v32 = *(v22 + 32);
  *&v56 = a5;
  *(&v56 + 1) = a6;
  v47 = v32;
  v51[0] = v32;
  *&v52 = 0xD000000000000018;
  *(&v52 + 1) = 0x800000021478EAE0;
  v53 = 0xD00000000000001CLL;
  v54 = 0x800000021478A360;

  v33 = v60;
  v34 = v30(&v56, v51, &v52);
  v60 = v33;
  if (v33)
  {

    v35 = a1;
  }

  else
  {
    v35 = a1;
    if (v34)
    {

      sub_21432887C(a1, type metadata accessor for IDSInvitationContext);

      *v22 = v30;
      *(v22 + 8) = v29;
      *(v22 + 16) = a5;
      *(v22 + 24) = a6;
      *(v22 + 32) = v47;
      return result;
    }

    sub_214031C4C();
    v38 = swift_allocError();
    *v39 = 0xD000000000000018;
    v39[1] = 0x800000021478EAE0;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = 0x800000021478A360;
    v60 = v38;
    swift_willThrow();
  }

  sub_21432887C(v35, type metadata accessor for IDSInvitationContext);

  *v22 = v30;
  *(v22 + 8) = v29;
  *(v22 + 16) = v45;
  *(v22 + 24) = v31;
  *(v22 + 32) = v47;
  return sub_21432887C(a7, type metadata accessor for IDSInvitation);
}

uint64_t sub_214159E50()
{
  v1 = 0x747865746E6F63;
  v2 = 0x6974617269707865;
  if (*v0 != 2)
  {
    v2 = 0x696669746E656469;
  }

  if (*v0)
  {
    v1 = 0x6574617473;
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

uint64_t sub_214159ECC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214369324(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214159EF4(uint64_t a1)
{
  v2 = sub_2142F5F98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214159F30(uint64_t a1)
{
  v2 = sub_2142F5F98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IDSInvitation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for IDSInvitationContext(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907808, &qword_2146F4B70);
  v62 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - v7;
  v9 = type metadata accessor for IDSInvitation(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2142F5F98();
  v13 = v63;
  sub_2146DAA08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  v14 = v9;
  v63 = v11;
  LOBYTE(v66) = 0;
  sub_214328930(&qword_27C9050A0, type metadata accessor for IDSInvitationContext, byte_2146FA4F0);
  sub_2146DA1C8();
  v15 = v5;
  LOBYTE(v66) = 1;
  v16 = sub_2146DA1A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v69) = 2;
  sub_2142E35EC();
  sub_2146DA1C8();
  v17 = v66;
  v60 = BYTE8(v66);
  LOBYTE(v66) = 3;
  v53 = sub_2146DA168();
  v59 = v19;
  v58 = v6;
  v20 = v63;
  sub_2143287C0(v15, v63, type metadata accessor for IDSInvitationContext);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v57 = v17;
  v22 = inited;
  v55 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v23 = swift_allocObject();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2146F3C70;
  *(v23 + 16) = sub_21438F468;
  *(v23 + 24) = v24;
  *(v22 + 32) = v23;
  sub_21404328C(v22, &v69);
  v56 = v15;
  v25 = v70;
  LOBYTE(v22) = v71;
  LODWORD(v54) = v72;
  v26 = swift_initStackObject();
  *(v26 + 16) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_2140676DC;
  *(v27 + 24) = 0;
  *(v26 + 32) = v27;
  sub_214042B80(v26, &v66);
  v28 = v68;
  v29 = v20 + v14[5];
  *v29 = v69;
  *(v29 + 16) = v25;
  *(v29 + 24) = v22;
  *(v29 + 25) = v54;
  v30 = v20 + v14[6];
  *v30 = v57;
  *(v30 + 8) = v60;
  v31 = v20 + v14[7];
  v32 = v67;
  *v31 = v66;
  *(v31 + 16) = v32;
  *(v31 + 32) = v28;
  v34 = *v29;
  v33 = *(v29 + 8);
  v54 = *(v29 + 16);
  LODWORD(v30) = *(v29 + 25);
  v65[0] = *(v29 + 24);
  *&v69 = v16;
  v60 = v30;
  v64 = v30;
  *&v66 = 0xD000000000000013;
  *(&v66 + 1) = 0x800000021478EAC0;
  *&v55 = 0x800000021478EAC0;
  *&v67 = 0xD00000000000001CLL;
  *(&v67 + 1) = 0x800000021478A360;

  v57 = v34;
  v35 = v34(&v69, &v64, &v66);
  v36 = v55;
  v52 = v31;
  v37 = v56;
  if (v35)
  {

    *v29 = v57;
    *(v29 + 8) = v33;
    *(v29 + 16) = v16;
    *(v29 + 24) = 0;
    *(v29 + 25) = v60;
    v39 = *v52;
    v38 = *(v52 + 8);
    v40 = *(v52 + 24);
    v54 = *(v52 + 16);
    v41 = *(v52 + 32);
    *&v69 = v53;
    *(&v69 + 1) = v59;
    v60 = v41;
    v65[0] = v41;
    *&v66 = 0xD000000000000018;
    *(&v66 + 1) = 0x800000021478EAE0;
    *&v67 = 0xD00000000000001CLL;
    *(&v67 + 1) = 0x800000021478A360;
    *&v55 = v40;

    v57 = v39;
    v42 = v39(&v69, v65, &v66);
    if (v42)
    {

      sub_21432887C(v37, type metadata accessor for IDSInvitationContext);
      (*(v62 + 8))(v8, v58);
      v46 = v52;

      *v46 = v57;
      *(v46 + 8) = v38;
      v47 = v59;
      *(v46 + 16) = v53;
      *(v46 + 24) = v47;
      *(v46 + 32) = v60;
      sub_214328704(v63, v61, type metadata accessor for IDSInvitation);
      return __swift_destroy_boxed_opaque_existential_1(v73);
    }

    sub_214031C4C();
    swift_allocError();
    *v48 = 0xD000000000000018;
    v48[1] = 0x800000021478EAE0;
    v48[2] = 0xD00000000000001CLL;
    v48[3] = 0x800000021478A360;
    swift_willThrow();

    sub_21432887C(v37, type metadata accessor for IDSInvitationContext);
    (*(v62 + 8))(v8, v58);
    v49 = v52;

    *v49 = v57;
    *(v49 + 8) = v38;
    v50 = v55;
    *(v49 + 16) = v54;
    *(v49 + 24) = v50;
    *(v49 + 32) = v60;
  }

  else
  {

    sub_214031C4C();
    swift_allocError();
    *v43 = 0xD000000000000013;
    v43[1] = v36;
    v43[2] = 0xD00000000000001CLL;
    v43[3] = 0x800000021478A360;
    swift_willThrow();
    sub_21432887C(v37, type metadata accessor for IDSInvitationContext);
    (*(v62 + 8))(v8, v58);
    v44 = v65[0];

    *v29 = v57;
    *(v29 + 8) = v33;
    *(v29 + 16) = v54;
    *(v29 + 24) = v44;
    *(v29 + 25) = v60;
  }

  v45 = v63;
  __swift_destroy_boxed_opaque_existential_1(v73);
  return sub_21432887C(v45, type metadata accessor for IDSInvitation);
}

uint64_t IDSInvitation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907818, &qword_2146F4B78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F5F98();
  sub_2146DAA28();
  v18 = 0;
  type metadata accessor for IDSInvitationContext(0);
  sub_214328930(&qword_27C9050A8, type metadata accessor for IDSInvitationContext, byte_2146FA518);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = type metadata accessor for IDSInvitation(0);
  if ((*(v3 + *(v9 + 20) + 24) & 1) != 0 || (v10 = v9, v17 = 1, sub_2146DA368(), v11 = (v3 + *(v10 + 24)), v12 = *v11, LOBYTE(v11) = *(v11 + 8), v15 = v12, v16 = v11, v14[15] = 2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0), sub_2142E37F4(), sub_2146DA388(), !*(v3 + *(v10 + 28) + 24)))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v14[14] = 3;

    sub_2146DA328();
    (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_21415AC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v56 = a2;
  v14 = type metadata accessor for IDSKCSharingInvitation(0);
  v47 = a3;
  sub_2143287C0(a3, a9 + v14[5], type metadata accessor for CloudKitSharingToken);
  v46 = a6;
  sub_213FB2E54(a6, a9 + v14[7], &qword_27C913090, &unk_2146E9DB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_214059900;
  *(v16 + 24) = 0;
  *(inited + 32) = v16;
  sub_214042B80(inited, &v52);
  v17 = v53;
  v18 = v54;
  v19 = v55;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_2146E9BF0;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_2140676DC;
  *(v21 + 24) = 0;
  *(v20 + 32) = v21;
  sub_214042B80(v20, v50);
  v22 = v51;
  *a9 = v52;
  *(a9 + 16) = v17;
  *(a9 + 24) = v18;
  *(a9 + 32) = v19;
  v23 = a9 + v14[6];
  v24 = v50[1];
  *v23 = v50[0];
  *(v23 + 16) = v24;
  *(v23 + 32) = v22;
  v25 = (a9 + v14[8]);
  *v25 = a7;
  v25[1] = a8;
  v27 = *a9;
  v26 = *(a9 + 8);
  v28 = *(a9 + 24);
  v41 = *(a9 + 16);
  v29 = *(a9 + 32);
  *&v50[0] = a1;
  *(&v50[0] + 1) = v56;
  v43 = v29;
  v49 = v29;
  *&v52 = 0xD00000000000001ELL;
  *(&v52 + 1) = 0x800000021478EB00;
  v53 = 0xD00000000000001CLL;
  v54 = 0x800000021478A360;

  v30 = v27(v50, &v49, &v52);
  if (v45)
  {

LABEL_6:
    sub_213FB2DF4(v46, &qword_27C913090, &unk_2146E9DB0);
    sub_21432887C(v47, type metadata accessor for CloudKitSharingToken);

    *a9 = v27;
    *(a9 + 8) = v26;
    *(a9 + 16) = v41;
    *(a9 + 24) = v28;
    *(a9 + 32) = v43;
    return sub_21432887C(a9, type metadata accessor for IDSKCSharingInvitation);
  }

  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v37 = 0xD00000000000001ELL;
    v37[1] = 0x800000021478EB00;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  *a9 = v27;
  *(a9 + 8) = v26;
  v31 = v56;
  *(a9 + 16) = a1;
  *(a9 + 24) = v31;
  *(a9 + 32) = v43;
  v33 = *v23;
  v32 = *(v23 + 8);
  v34 = *(v23 + 24);
  v44 = *(v23 + 16);
  v35 = *(v23 + 32);
  *&v50[0] = a4;
  *(&v50[0] + 1) = a5;
  LODWORD(v56) = v35;
  v49 = v35;
  *&v52 = 0xD000000000000024;
  *(&v52 + 1) = 0x800000021478EB20;
  v53 = 0xD00000000000001CLL;
  v54 = 0x800000021478A360;

  v36 = v33(v50, &v49, &v52);
  if ((v36 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD000000000000024;
    v39[1] = 0x800000021478EB20;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v46, &qword_27C913090, &unk_2146E9DB0);
    sub_21432887C(v47, type metadata accessor for CloudKitSharingToken);

    *v23 = v33;
    *(v23 + 8) = v32;
    *(v23 + 16) = v44;
    *(v23 + 24) = v34;
    *(v23 + 32) = v56;
    return sub_21432887C(a9, type metadata accessor for IDSKCSharingInvitation);
  }

  sub_213FB2DF4(v46, &qword_27C913090, &unk_2146E9DB0);
  sub_21432887C(v47, type metadata accessor for CloudKitSharingToken);

  *v23 = v33;
  *(v23 + 8) = v32;
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  *(v23 + 32) = v56;
  return result;
}

uint64_t sub_21415B190()
{
  v1 = *v0;
  v2 = 0x444970756F7267;
  v3 = 0x4865657469766E69;
  v4 = 0x656D6954746E6573;
  if (v1 != 3)
  {
    v4 = 0x4E79616C70736964;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6974617469766E69;
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

uint64_t sub_21415B24C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214369490(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21415B274(uint64_t a1)
{
  v2 = sub_2142F5FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21415B2B0(uint64_t a1)
{
  v2 = sub_2142F5FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21415B2EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  MEMORY[0x28223BE20](v75);
  v74 = &v62 - v3;
  v4 = type metadata accessor for CloudKitSharingToken(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907820, &qword_2146F4B80);
  v76 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v62 - v8;
  v10 = type metadata accessor for IDSKCSharingInvitation(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2142F5FEC();
  v14 = v77;
  sub_2146DAA08();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v85);
  }

  v71 = v10;
  v77 = v6;
  v72 = v12;
  LOBYTE(v81) = 0;
  v15 = sub_2146DA168();
  v17 = v16;
  v18 = v15;
  LOBYTE(v81) = 1;
  sub_214328930(&qword_27C9057A0, type metadata accessor for CloudKitSharingToken, a9_29);
  v19 = v77;
  sub_2146DA1C8();
  v70 = v18;
  LOBYTE(v81) = 2;
  v20 = sub_2146DA168();
  v22 = v21;
  v68 = v20;
  v69 = v17;
  LOBYTE(v81) = 3;
  sub_2142EC0C4();
  v23 = v74;
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v79[0]) = 4;
  sub_2142E12FC();
  sub_2146DA1C8();
  v75 = v22;
  v67 = v9;
  v66 = v7;
  v65 = *(&v81 + 1);
  v25 = v81;
  v26 = v71;
  v27 = v72;
  sub_2143287C0(v19, &v72[v71[5]], type metadata accessor for CloudKitSharingToken);
  sub_213FB2E54(v23, v27 + v26[7], &qword_27C913090, &unk_2146E9DB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v64 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_214059900;
  *(v29 + 24) = 0;
  *(inited + 32) = v29;
  sub_214042B80(inited, &v81);
  v30 = v82;
  v31 = v83;
  LOBYTE(v23) = v84;
  v32 = swift_initStackObject();
  *(v32 + 16) = v64;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_2140676DC;
  *(v33 + 24) = 0;
  *(v32 + 32) = v33;
  sub_214042B80(v32, v79);
  v34 = v80;
  *v27 = v81;
  *(v27 + 16) = v30;
  *(v27 + 24) = v31;
  *(v27 + 32) = v23;
  v35 = v27 + v26[6];
  v36 = v79[1];
  *v35 = v79[0];
  *(v35 + 16) = v36;
  *(v35 + 32) = v34;
  v37 = (v27 + v26[8]);
  v38 = v65;
  *v37 = v25;
  v37[1] = v38;
  v40 = *v27;
  v39 = *(v27 + 8);
  v41 = *(v27 + 24);
  v65 = *(v27 + 16);
  LODWORD(v38) = *(v27 + 32);
  *&v79[0] = v70;
  *(&v79[0] + 1) = v69;
  LODWORD(v71) = v38;
  v78 = v38;
  *&v81 = 0xD00000000000001ELL;
  *(&v81 + 1) = 0x800000021478EB00;
  v82 = 0xD00000000000001CLL;
  v83 = 0x800000021478A360;

  v42 = v40(v79, &v78, &v81);
  *&v64 = 0x800000021478A360;
  v43 = v66;
  if (v42)
  {
    v44 = v64;
    v65 = 0;

    v45 = v72;

    *v45 = v40;
    *(v45 + 8) = v39;
    v46 = v69;
    *(v45 + 16) = v70;
    *(v45 + 24) = v46;
    *(v45 + 32) = v71;
    v47 = *v35;
    v48 = *(v35 + 8);
    v49 = *(v35 + 24);
    v63 = *(v35 + 16);
    v50 = *(v35 + 32);
    *&v79[0] = v68;
    *(&v79[0] + 1) = v75;
    LODWORD(v71) = v50;
    v78 = v50;
    *&v81 = 0xD000000000000024;
    *(&v81 + 1) = 0x800000021478EB20;
    v82 = 0xD00000000000001CLL;
    v83 = v44;
    v69 = v49;

    v51 = v65;
    v70 = v47;
    v52 = v47(v79, &v78, &v81);
    v53 = v67;
    if (v51)
    {

LABEL_12:

      sub_213FB2DF4(v74, &qword_27C913090, &unk_2146E9DB0);
      sub_21432887C(v77, type metadata accessor for CloudKitSharingToken);
      (*(v76 + 8))(v53, v43);

      *v35 = v70;
      *(v35 + 8) = v48;
      v61 = v69;
      *(v35 + 16) = v63;
      *(v35 + 24) = v61;
      *(v35 + 32) = v71;
      v57 = v72;
      goto LABEL_8;
    }

    if ((v52 & 1) == 0)
    {
      sub_214031C4C();
      swift_allocError();
      *v59 = 0xD000000000000024;
      v59[1] = 0x800000021478EB20;
      v60 = v64;
      v59[2] = 0xD00000000000001CLL;
      v59[3] = v60;
      swift_willThrow();
      goto LABEL_12;
    }

    sub_213FB2DF4(v74, &qword_27C913090, &unk_2146E9DB0);
    sub_21432887C(v77, type metadata accessor for CloudKitSharingToken);
    (*(v76 + 8))(v53, v43);

    *v35 = v70;
    *(v35 + 8) = v48;
    v58 = v75;
    *(v35 + 16) = v68;
    *(v35 + 24) = v58;
    *(v35 + 32) = v71;
    sub_214328704(v72, v73, type metadata accessor for IDSKCSharingInvitation);
    return __swift_destroy_boxed_opaque_existential_1(v85);
  }

  sub_214031C4C();
  swift_allocError();
  *v54 = 0xD00000000000001ELL;
  v54[1] = 0x800000021478EB00;
  v55 = v64;
  v54[2] = 0xD00000000000001CLL;
  v54[3] = v55;
  swift_willThrow();

  v56 = v67;
  sub_213FB2DF4(v74, &qword_27C913090, &unk_2146E9DB0);
  sub_21432887C(v77, type metadata accessor for CloudKitSharingToken);
  (*(v76 + 8))(v56, v43);
  v57 = v72;

  *v57 = v40;
  *(v57 + 8) = v39;
  *(v57 + 16) = v65;
  *(v57 + 24) = v41;
  *(v57 + 32) = v71;
LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v85);
  return sub_21432887C(v57, type metadata accessor for IDSKCSharingInvitation);
}

uint64_t sub_21415BE0C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907830, &qword_2146F4B88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F5FEC();
  sub_2146DAA28();
  if (!*(v3 + 24))
  {
    goto LABEL_6;
  }

  LOBYTE(v12) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  v10 = type metadata accessor for IDSKCSharingInvitation(0);
  LOBYTE(v12) = 1;
  type metadata accessor for CloudKitSharingToken(0);
  sub_214328930(&qword_27C9057C0, type metadata accessor for CloudKitSharingToken, byte_2146F88F8);
  sub_2146DA388();
  if (*(v3 + *(v10 + 24) + 24))
  {
    LOBYTE(v12) = 2;

    sub_2146DA328();

    LOBYTE(v12) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
    sub_2142EC30C();
    sub_2146DA388();
    v12 = *(v3 + *(v10 + 32));
    v11[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21415C19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21415C228(uint64_t a1)
{
  v2 = sub_2142F6040();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21415C264(uint64_t a1)
{
  v2 = sub_2142F6040();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21415C2A0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907838, &qword_2146F4B90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F6040();
  sub_2146DAA08();
  if (!v2)
  {
    sub_2140526D4();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21415C40C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907848, &qword_2146F4B98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F6040();
  sub_2146DAA28();
  v10 = v7;
  sub_214052728();
  sub_2146DA388();
  return (*(v4 + 8))(v6, v3);
}

uint64_t IDSProtobuf.init(with:type:isResponse:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_21408AC04(a1, a4, &qword_27C9041E8, &qword_2146F4BA0);
  result = type metadata accessor for IDSProtobuf(0);
  v8 = a4 + *(result + 20);
  *v8 = a2;
  *(v8 + 2) = BYTE2(a2) & 1;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_21415C5FC()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x6E6F707365527369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_21415C64C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214369654(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21415C674(uint64_t a1)
{
  v2 = sub_2142F6094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21415C6B0(uint64_t a1)
{
  v2 = sub_2142F6094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IDSProtobuf.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041E8, &qword_2146F4BA0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-v5];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907850, &qword_2146F4BA8);
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v17[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F6094();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v19;
    v26 = 0;
    sub_2142F60E8();
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907870, &qword_2146F4BB0);
    v23 = 1;
    sub_2142F619C();
    sub_2146DA1C8();
    v18 = v24;
    v13 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    v21 = 2;
    sub_2142E1378();
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v20);
    v14 = v22;
    sub_21408AC04(v6, v11, &qword_27C9041E8, &qword_2146F4BA0);
    v15 = type metadata accessor for IDSProtobuf(0);
    v16 = v11 + *(v15 + 20);
    *v16 = v18;
    *(v16 + 2) = v13;
    *(v11 + *(v15 + 24)) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t IDSProtobuf.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907880, &qword_2146F4BB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F6094();
  sub_2146DAA28();
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041E8, &qword_2146F4BA0);
  sub_2142F6218();
  sub_2146DA388();
  if (!v2)
  {
    v9 = type metadata accessor for IDSProtobuf(0);
    v10 = (v3 + *(v9 + 20));
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 2);
    v14 = v11;
    v15 = v10;
    v13[11] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907870, &qword_2146F4BB0);
    sub_2142F62CC();
    sub_2146DA388();
    v13[10] = *(v3 + *(v9 + 24));
    v13[9] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    sub_2142E1D30();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21415CC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = type metadata accessor for IDSSampleInvitation(0);
  v44 = a3;
  sub_213FB2E54(a3, a6 + *(v10 + 20), &qword_27C913090, &unk_2146E9DB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2140676DC;
  *(v12 + 24) = 0;
  *(inited + 32) = v12;
  sub_214042B80(inited, &v48);
  v13 = v49;
  v14 = v50;
  v15 = v51;
  sub_2144A2974(v46);
  v16 = v47;
  *a6 = v48;
  *(a6 + 16) = v13;
  *(a6 + 24) = v14;
  *(a6 + 32) = v15;
  v17 = a6 + *(v10 + 24);
  v18 = v46[1];
  *v17 = v46[0];
  *(v17 + 16) = v18;
  *(v17 + 32) = v16;
  v19 = *a6;
  v20 = *(a6 + 8);
  v39 = *(a6 + 16);
  v40 = *(a6 + 24);
  v21 = *(a6 + 32);
  v22 = a1;
  *&v46[0] = a1;
  *(&v46[0] + 1) = a2;
  v23 = v19;
  v43 = v21;
  v52 = v21;
  *&v48 = 0xD000000000000019;
  *(&v48 + 1) = 0x800000021478EB50;
  v49 = 0xD00000000000001CLL;
  v50 = 0x800000021478A360;

  v24 = v23(v46, &v52, &v48);
  if (v41)
  {

LABEL_6:
    sub_213FB2DF4(v44, &qword_27C913090, &unk_2146E9DB0);

    *a6 = v23;
    *(a6 + 8) = v20;
    *(a6 + 16) = v39;
    *(a6 + 24) = v40;
    *(a6 + 32) = v43;
    return sub_21432887C(a6, type metadata accessor for IDSSampleInvitation);
  }

  if ((v24 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD000000000000019;
    v31[1] = 0x800000021478EB50;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  *a6 = v23;
  *(a6 + 8) = v20;
  *(a6 + 16) = v22;
  *(a6 + 24) = a2;
  *(a6 + 32) = v43;
  v26 = *v17;
  v25 = *(v17 + 8);
  v27 = *(v17 + 16);
  v28 = *(v17 + 24);
  v29 = *(v17 + 32);
  *&v46[0] = a4;
  *(&v46[0] + 1) = a5;
  v42 = v29;
  v52 = v29;
  *&v48 = 0xD00000000000001ALL;
  *(&v48 + 1) = 0x800000021478EB70;
  v49 = 0xD00000000000001CLL;
  v50 = 0x800000021478A360;

  sub_213FDC9D0(v27, v28);
  v30 = v26(v46, &v52, &v48);
  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v35 = 0xD00000000000001ALL;
    v35[1] = 0x800000021478EB70;
    v35[2] = 0xD00000000000001CLL;
    v35[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v44, &qword_27C913090, &unk_2146E9DB0);
    v36 = *(v17 + 16);
    v37 = *(v17 + 24);

    sub_213FDC6D0(v36, v37);
    *v17 = v26;
    *(v17 + 8) = v25;
    *(v17 + 16) = v27;
    *(v17 + 24) = v28;
    *(v17 + 32) = v42;
    return sub_21432887C(a6, type metadata accessor for IDSSampleInvitation);
  }

  sub_213FDC6D0(v27, v28);

  sub_213FB2DF4(v44, &qword_27C913090, &unk_2146E9DB0);
  v33 = *(v17 + 16);
  v34 = *(v17 + 24);

  result = sub_213FDC6D0(v33, v34);
  *v17 = v26;
  *(v17 + 8) = v25;
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 32) = v42;
  return result;
}