uint64_t sub_242CDBA20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (v6 < 0)
  {
    *a3 = v5;
  }

  else
  {
    v7 = *(a2 + 24);
    v59 = *(a2 + 8);
    v8 = *(a2 + 40);
    v60 = v7;
    v9 = *(a2 + 56);
    v61 = v8;
    v10 = *(a2 + 72);
    v62 = v9;
    v11 = *(a2 + 88);
    v63 = v10;
    v12 = *(a2 + 104);
    v64 = v11;
    v13 = *(a2 + 120);
    v65 = v12;
    v14 = *(a2 + 136);
    v66 = v13;
    v15 = *(a2 + 152);
    v67 = v14;
    v16 = *(a2 + 168);
    v68 = v15;
    v17 = *(a2 + 184);
    v69 = v16;
    v18 = *(a2 + 200);
    v70 = v17;
    v19 = *(a2 + 216);
    v71 = v18;
    v20 = *(a2 + 232);
    v72 = v19;
    v21 = *(a2 + 248);
    v73 = v20;
    v74 = v21;
    v22 = *(a2 + 288);
    v76 = *(a2 + 272);
    v77 = v22;
    v23 = *(a2 + 320);
    v78 = *(a2 + 304);
    v79 = v23;
    v24 = *(a2 + 352);
    v80 = *(a2 + 336);
    v81 = v24;
    v25 = *(a2 + 384);
    v82 = *(a2 + 368);
    v83 = v25;
    v26 = *(a2 + 416);
    v84 = *(a2 + 400);
    v85 = v26;
    v27 = *(a2 + 448);
    v86 = *(a2 + 432);
    v87 = v27;
    v28 = *(a2 + 480);
    v88 = *(a2 + 464);
    v89 = v28;
    v29 = *(a2 + 512);
    v90 = *(a2 + 496);
    v91 = v29;
    v30 = *(a2 + 544);
    v92 = *(a2 + 528);
    v93 = v30;
    v31 = *(a2 + 576);
    v94 = *(a2 + 560);
    v95 = v31;
    v32 = *(a2 + 608);
    v96 = *(a2 + 592);
    v97 = v32;
    v33 = *(a2 + 640);
    v98 = *(a2 + 624);
    v99 = v33;
    v34 = *(a2 + 672);
    v100 = *(a2 + 656);
    v101 = v34;
    v35 = *(a2 + 704);
    v102 = *(a2 + 688);
    v103 = v35;
    v36 = *(a2 + 736);
    v104 = *(a2 + 720);
    v105 = v36;
    v37 = *(a2 + 768);
    v106 = *(a2 + 752);
    v107 = v37;
    v38 = *(a2 + 800);
    v108 = *(a2 + 784);
    v109 = v38;
    v39 = *(a2 + 832);
    v110 = *(a2 + 816);
    v111 = v39;
    v40 = *(a2 + 864);
    v112 = *(a2 + 848);
    v113 = v40;
    v114 = *(a2 + 880);
    v118 = *(a2 + 912);
    v41 = *a2;
    v42 = *(a2 + 264);
    v43 = *(a2 + 896);
    v44 = *(a2 + 904);
    v45 = *(a2 + 928);
    v46 = *(a2 + 936);
    v47 = a1[2];
    v58 = v41;
    v75 = v42;
    v115 = v43;
    *v116 = *v123;
    *&v116[3] = *&v123[3];
    v117 = v44;
    v119 = v45;
    *v120 = *v122;
    *&v120[3] = *&v122[3];
    v121 = v46;
    v56 = v5;
    v57 = v6 & 1;
    v48 = sub_242D0B004(&v56, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_242F09510;
    *(v49 + 32) = 0;
    v50 = v49 + 32;
    *(v49 + 40) = v48;
    v51 = sub_242CE6C84(v49);
    swift_setDeallocating();
    swift_retain_n();
    sub_242C6D138(v50, &qword_27ECEFE58, &unk_242F09520);
    swift_deallocClassInstance();
    v52 = sub_242E1E384(v51);

    if (*(v52 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
      v53 = sub_242F05CB0();
    }

    else
    {
      v53 = MEMORY[0x277D84F98];
    }

    v58 = v53;

    sub_242E21B3C(v55, 1, &v58);

    *a3 = v58;
  }

  return result;
}

unint64_t sub_242CDBD6C()
{
  v1 = 0x73657474656C6170;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x745374756F79616CLL;
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

uint64_t sub_242CDBDF4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242CE2F40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242CDBE1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CE226C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CDBE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CE226C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t ResolvedTheme.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1FE8, &qword_242F13820);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - v7;
  v28 = xmmword_242F137E0;
  v32 = MEMORY[0x277D84F98];
  v33 = 2;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CE226C(v9, v10, v11);
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    v12 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1FF8, &qword_242F13828);
    v27 = 0;
    sub_242CE22C0();
    sub_242F05E00();
    v25[11] = v34;
    v29 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2010, &qword_242F13830);
    v27 = 1;
    sub_242CE23CC();
    sub_242F05E00();
    v14 = a1;
    v26 = v34;
    v30 = v34;
    v15 = a2;
    v16 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2088, &qword_242F13878);
    v27 = 2;
    sub_242CE2754();
    sub_242F05E00();
    v31 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2098, &qword_242F13880);
    v27 = 3;
    sub_242CE2834();
    sub_242F05E00();
    v32 = v34;
    v17 = v26;

    v18 = sub_242CDA378(MEMORY[0x277D84F98], v17, &v28);

    (*(v16 + 8))(v8, v5);
    v19 = *(&v28 + 1);
    v20 = v29;
    v21 = v30;
    v22 = v31;
    v24 = v32;
    v23 = v33;
    *v15 = v18;
    v15[1] = v19;
    v15[2] = v20;
    v15[3] = v21;
    v15[4] = v22;
    v15[5] = v24;
    v15[6] = v23;

    __swift_destroy_boxed_opaque_existential_2Tm(v14);
  }
}

uint64_t ResolvedTheme.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF20A8, &qword_242F13888);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v9 = v1[2];
  v8 = v1[3];
  v10 = v1[5];
  v21 = v1[4];
  v22 = v8;
  v19 = v1[6];
  v20 = v10;
  v11 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CE226C(v11, v12, v13);

  sub_242F064C0();
  v24 = v9;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1FF8, &qword_242F13828);
  sub_242CE2914();
  sub_242F05F20();

  if (!v2)
  {
    v14 = v20;
    v15 = v21;
    v16 = v19;
    v24 = v22;
    v23 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2010, &qword_242F13830);
    sub_242CE2A20();
    sub_242F05F20();
    v24 = v15;
    v23 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2088, &qword_242F13878);
    sub_242CE2C88();
    sub_242F05F20();
    sub_242CDCEDC(v14, v16, 3);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_242CDCA60(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v11 = a3;
  v9 = result;
  v10 = a2;
  v12 = a4;
  if ((qword_242F13AC0[byte_27ECF3A00] | a3) != 0xFFFFFFFFFFFFFFFFLL)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2118, &qword_242F13A70);
    if (swift_dynamicCast())
    {
      v4 = *(&v7 + 1);
      v5 = v8;
      __swift_project_boxed_opaque_existential_2Tm(&v6, *(&v7 + 1));
      LOBYTE(v4) = (*(v5 + 8))(v4, v5);
      result = __swift_destroy_boxed_opaque_existential_2Tm(&v6);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
      sub_242C6D138(&v6, &qword_27ECF2120, &qword_242F13A78);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2128, &qword_242F13A80);
    return sub_242F05F20();
  }

  return result;
}

uint64_t sub_242CDCBAC(uint64_t result, uint64_t a2, char a3)
{
  v9 = a2;
  v8 = result;
  v10 = a3;
  if ((qword_242F13AC0[byte_27ECF3A00] | a2) != 0xFFFFFFFFFFFFFFFFLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2118, &qword_242F13A70);
    if (swift_dynamicCast())
    {
      v3 = *(&v6 + 1);
      v4 = v7;
      __swift_project_boxed_opaque_existential_2Tm(&v5, *(&v6 + 1));
      LOBYTE(v3) = (*(v4 + 8))(v3, v4);
      result = __swift_destroy_boxed_opaque_existential_2Tm(&v5);
      if (v3)
      {
        return result;
      }
    }

    else
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
      sub_242C6D138(&v5, &qword_27ECF2120, &qword_242F13A78);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2128, &qword_242F13A80);
    return sub_242F05F20();
  }

  return result;
}

uint64_t sub_242CDCCF0(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2168, &unk_242F17EA0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v13 = a2;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2170, &qword_242F13A98);
  if ((qword_242F13AC0[byte_27ECF3A00] | *(a1 + *(result + 52))) != -1)
  {
    sub_242CA321C(a1, v6, &qword_27ECF2168, &unk_242F17EA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2118, &qword_242F13A70);
    if (swift_dynamicCast())
    {
      v8 = *(&v11 + 1);
      v9 = v12;
      __swift_project_boxed_opaque_existential_2Tm(&v10, *(&v11 + 1));
      LOBYTE(v8) = (*(v9 + 8))(v8, v9);
      result = __swift_destroy_boxed_opaque_existential_2Tm(&v10);
      if (v8)
      {
        return result;
      }
    }

    else
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
      sub_242C6D138(&v10, &qword_27ECF2120, &qword_242F13A78);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2178, &qword_242F27C40);
    sub_242CE30B4(&qword_27ECF2180, &qword_27ECF2168, &unk_242F17EA0);
    return sub_242F05F20();
  }

  return result;
}

uint64_t sub_242CDCEDC(uint64_t result, uint64_t a2, char a3)
{
  v9 = result;
  v10 = a2;
  v8 = a3;
  if ((qword_242F13AC0[byte_27ECF3A00] | a2) != 0xFFFFFFFFFFFFFFFFLL)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2098, &qword_242F13880);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2118, &qword_242F13A70);
    if (swift_dynamicCast())
    {
      v3 = *(&v6 + 1);
      v4 = v7;
      __swift_project_boxed_opaque_existential_2Tm(&v5, *(&v6 + 1));
      LOBYTE(v3) = (*(v4 + 8))(v3, v4);
      result = __swift_destroy_boxed_opaque_existential_2Tm(&v5);
      if (v3)
      {
        return result;
      }
    }

    else
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
      sub_242C6D138(&v5, &qword_27ECF2120, &qword_242F13A78);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF20A8, &qword_242F13888);
    sub_242CE3368();
    return sub_242F05F20();
  }

  return result;
}

uint64_t sub_242CDD038(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2138, &qword_242F2DFB0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v13 = a2;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140, &qword_242F13A90);
  if ((qword_242F13AC0[byte_27ECF3A00] | *(a1 + *(result + 52))) != -1)
  {
    sub_242CA321C(a1, v6, &qword_27ECF2138, &qword_242F2DFB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2118, &qword_242F13A70);
    if (swift_dynamicCast())
    {
      v8 = *(&v11 + 1);
      v9 = v12;
      __swift_project_boxed_opaque_existential_2Tm(&v10, *(&v11 + 1));
      LOBYTE(v8) = (*(v9 + 8))(v8, v9);
      result = __swift_destroy_boxed_opaque_existential_2Tm(&v10);
      if (v8)
      {
        return result;
      }
    }

    else
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
      sub_242C6D138(&v10, &qword_27ECF2120, &qword_242F13A78);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2148, &qword_242F2E000);
    sub_242CE30B4(&qword_27ECF2150, &qword_27ECF2138, &qword_242F2DFB0);
    return sub_242F05F20();
  }

  return result;
}

uint64_t sub_242CDD224(uint64_t result, uint64_t a2, char a3)
{
  v9 = result;
  v10 = a2;
  v8 = a3;
  if ((qword_242F13AC0[byte_27ECF3A00] | a2) != 0xFFFFFFFFFFFFFFFFLL)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2190, &qword_242F13AA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2118, &qword_242F13A70);
    if (swift_dynamicCast())
    {
      v3 = *(&v6 + 1);
      v4 = v7;
      __swift_project_boxed_opaque_existential_2Tm(&v5, *(&v6 + 1));
      LOBYTE(v3) = (*(v4 + 8))(v3, v4);
      result = __swift_destroy_boxed_opaque_existential_2Tm(&v5);
      if (v3)
      {
        return result;
      }
    }

    else
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
      sub_242C6D138(&v5, &qword_27ECF2120, &qword_242F13A78);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2188, &qword_242F13AA0);
    sub_242CE3228();
    return sub_242F05F20();
  }

  return result;
}

uint64_t sub_242CDD380(uint64_t result, uint64_t a2, char a3)
{
  v9 = result;
  v10 = a2;
  v8 = a3;
  if ((qword_242F13AC0[byte_27ECF3A00] | a2) != 0xFFFFFFFFFFFFFFFFLL)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0160, &qword_242F0A500);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2118, &qword_242F13A70);
    if (swift_dynamicCast())
    {
      v3 = *(&v6 + 1);
      v4 = v7;
      __swift_project_boxed_opaque_existential_2Tm(&v5, *(&v6 + 1));
      LOBYTE(v3) = (*(v4 + 8))(v3, v4);
      result = __swift_destroy_boxed_opaque_existential_2Tm(&v5);
      if (v3)
      {
        return result;
      }
    }

    else
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
      sub_242C6D138(&v5, &qword_27ECF2120, &qword_242F13A78);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2188, &qword_242F13AA0);
    sub_242CE31AC();
    return sub_242F05F20();
  }

  return result;
}

void ResolvedTheme.defaultWallpaperID(for:)(void *a1@<X8>)
{
  v3 = *(v1 + 40);
  if (!*(v3 + 16))
  {
    goto LABEL_7;
  }

  v4 = sub_242CE8370();
  if ((v5 & 1) == 0)
  {

LABEL_7:
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v6 = (*(v3 + 56) + 16 * v4);
  v7 = v6[1];
  *a1 = *v6;
  a1[1] = v7;
}

void ResolvedTheme.defaultPalette(for:)(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = v2[2];
  v6 = *(v2 + 4);
  if (!*(v6 + 16))
  {
    goto LABEL_7;
  }

  v7 = *a1;
  v8 = a1[1];
  v9 = *v3;
  v31 = v3[1];
  v32 = v9;
  v10 = *(v3 + 6);
  v33 = v5;
  v11 = sub_242CE8370();
  if ((v12 & 1) == 0)
  {
    goto LABEL_7;
  }

  v13 = (*(v6 + 56) + 16 * v11);
  v15 = *v13;
  v14 = v13[1];
  v36 = v32;
  v37 = v31;
  v38 = v33;
  *&v39 = v10;
  v34[0] = v7;
  v34[1] = v8;

  ResolvedTheme.palettes(for:)();
  if (!v16)
  {
LABEL_6:

LABEL_7:
    sub_242CE2D68(&v36);
    v20 = v41;
    a2[4] = v40;
    a2[5] = v20;
    a2[6] = v42[0];
    *(a2 + 105) = *(v42 + 9);
    v21 = v37;
    *a2 = v36;
    a2[1] = v21;
    v22 = v39;
    a2[2] = v38;
    a2[3] = v22;
    return;
  }

  v17 = v16;
  v35[0] = v15;
  v35[1] = v14;
  MEMORY[0x28223BE20](v16);
  v30[2] = v35;
  v18 = sub_242CDAAFC(sub_242C9B7C0, v30, v17);
  if (v19)
  {

    goto LABEL_6;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v18 < *(v17 + 16))
  {
    v23 = (v17 + (v18 << 7));
    v24 = v23[2];
    v25 = v23[3];
    v26 = v23[5];
    v38 = v23[4];
    v39 = v26;
    v36 = v24;
    v37 = v25;
    v27 = v23[6];
    v28 = v23[7];
    v29 = v23[8];
    *(v42 + 9) = *(v23 + 137);
    v41 = v28;
    v42[0] = v29;
    v40 = v27;
    memmove(a2, v23 + 2, 0x79uLL);
    sub_242C7DAC0(&v36, v34);

    nullsub_2();

    return;
  }

  __break(1u);
}

void *sub_242CDD790(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF02B8, &qword_242F0A790);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_242CDD828(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF21C0, &qword_242F13AB8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_242CDD8C0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF21B8, &qword_242F13AB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 952);
  return result;
}

void *sub_242CDD95C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2100, &qword_242F13A58);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_242CDD9F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x6666666666666667) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 4) + (v9 >> 63));
  return result;
}

void *sub_242CDDA7C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2130, &qword_242F13A88);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0xE38E38E38E38E39) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_242CDDB14(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2110, &qword_242F13A68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 + 95;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 7);
  return result;
}

void sub_242CDDB98(void *a1, char a2, void *a3, void (*a4)(void), void (*a5)(uint64_t, uint64_t))
{
  v48 = a1[2];
  if (!v48)
  {
    goto LABEL_24;
  }

  v8 = a1[6];
  v9 = a1[7];
  v11 = a1[4];
  v10 = a1[5];

  if (!v10)
  {
    goto LABEL_24;
  }

  v12 = *a3;
  v14 = sub_242CE8370();
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  if (__OFADD__(v15, v16))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = v13;
  if (v12[3] >= v15 + v16)
  {
    if (a2)
    {
      if ((v13 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      a4();
      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_10:
    v20 = swift_allocError();
    swift_willThrow();

    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ECF1F50, &qword_242F304D0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_30;
  }

  (a5)();
  v18 = sub_242CE8370();
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_29:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF09F0, &qword_242F0C340);
    sub_242F06320();
    __break(1u);
LABEL_30:
    sub_242F05A80();
    MEMORY[0x245D26660](0xD00000000000001BLL, 0x8000000242F59E10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF09F0, &qword_242F0C340);
    sub_242F05C20();
    MEMORY[0x245D26660](39, 0xE100000000000000);
    sub_242F05C60();
    __break(1u);
    return;
  }

  v14 = v18;
  if (v17)
  {
    goto LABEL_10;
  }

LABEL_13:
  v22 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  v23 = (v22[6] + 16 * v14);
  *v23 = v11;
  v23[1] = v10;
  v24 = (v22[7] + 16 * v14);
  *v24 = v8;
  v24[1] = v9;
  v25 = v22[2];
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v22[2] = v27;
  if (v48 != 1)
  {
    v28 = a1 + 11;
    v29 = 1;
    while (v29 < a1[2])
    {
      v31 = *(v28 - 1);
      v30 = *v28;
      v33 = *(v28 - 3);
      v32 = *(v28 - 2);

      if (!v32)
      {
        goto LABEL_24;
      }

      v34 = *a3;
      v35 = sub_242CE8370();
      v37 = v34[2];
      v38 = (v36 & 1) == 0;
      v26 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v26)
      {
        goto LABEL_26;
      }

      v40 = v36;
      if (v34[3] < v39)
      {
        a5(v39, 1);
        v35 = sub_242CE8370();
        if ((v40 & 1) != (v41 & 1))
        {
          goto LABEL_29;
        }
      }

      if (v40)
      {
        goto LABEL_10;
      }

      v42 = *a3;
      *(*a3 + 8 * (v35 >> 6) + 64) |= 1 << v35;
      v43 = (v42[6] + 16 * v35);
      *v43 = v33;
      v43[1] = v32;
      v44 = (v42[7] + 16 * v35);
      *v44 = v31;
      v44[1] = v30;
      v45 = v42[2];
      v26 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v26)
      {
        goto LABEL_27;
      }

      ++v29;
      v42[2] = v46;
      v28 += 4;
      if (v48 == v29)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_28;
  }

LABEL_24:
}

uint64_t sub_242CDDF94(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_242CE519C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_242D01220();
      v11 = v19;
      goto LABEL_8;
    }

    sub_242D041E4(v16, a4 & 1);
    v11 = sub_242CE519C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_242F06320();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_2Tm(v22);

    return sub_242C65564(a1, v22);
  }

  else
  {
    sub_242D09938(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_242CDE0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v13 = a3;
  v16 = *v7;
  v17 = sub_242CE519C(a5, a6);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = v16[3];
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 >= v22 && (a7 & 1) == 0)
    {
      v25 = v17;
      sub_242D013C8();
      v17 = v25;
      goto LABEL_8;
    }

    sub_242D044A8(v22, a7 & 1);
    v17 = sub_242CE519C(a5, a6);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_242F06320();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v8;
  if (v23)
  {
    v28 = v27[7] + 32 * v17;
    *v28 = a1;
    *(v28 + 8) = a2;
    *(v28 + 16) = v13;
    *(v28 + 24) = a4;
  }

  else
  {
    sub_242D099A8(v17, a5, a6, a1, a2, v13, a4, v27);
  }
}

unint64_t sub_242CDE25C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_242CE519C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_242D01568();
      result = v19;
      goto LABEL_8;
    }

    sub_242D04794(v16, a4 & 1);
    result = sub_242CE519C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_242F06320();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 88 * result;
    v23 = *(a1 + 48);
    *(v22 + 32) = *(a1 + 32);
    *(v22 + 48) = v23;
    *(v22 + 64) = *(a1 + 64);
    *(v22 + 80) = *(a1 + 80);
    v24 = *(a1 + 16);
    *v22 = *a1;
    *(v22 + 16) = v24;
  }

  else
  {
    sub_242D099FC(result, a2, a3, a1, v21);
  }

  return result;
}

uint64_t sub_242CDE3B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_242CE50F4(a4, a5, a6);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = v16[3];
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 >= v22 && (a7 & 1) == 0)
    {
      v25 = v17;
      sub_242D01A20();
      v17 = v25;
      goto LABEL_8;
    }

    sub_242D0500C(v22, a7 & 1);
    v17 = sub_242CE50F4(a4, a5, a6);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_242F06320();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v8;
  if (v23)
  {
    v28 = v27[7] + 24 * v17;
    v29 = *v28;
    v30 = *(v28 + 8);
    v31 = *(v28 + 16);
    *v28 = a1;
    *(v28 + 8) = a2;
    *(v28 + 16) = a3 & 1;

    return sub_242C7FB88(v29, v30, v31);
  }

  else
  {
    sub_242D09A68(v17, a4, a5, a6, a1, a2, a3 & 1, v27);

    return sub_242C7CE5C(a4, a5, a6);
  }
}

uint64_t sub_242CDE53C(uint64_t a1, void *__src, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_242CE5238(__src);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_242D01BD0();
      v9 = v17;
      goto LABEL_8;
    }

    sub_242D05338(v14, a3 & 1);
    v9 = sub_242CE5238(__src);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_242F06320();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {
    sub_242D09AC8(v9, __src, a1, v19);
    return sub_242C7F7E0(__src, &v21);
  }
}

uint64_t sub_242CDE678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v12 = a4;
  v16 = *v7;
  v17 = sub_242CE8370();
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = v16[3];
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 >= v22 && (a7 & 1) == 0)
    {
      v25 = v17;
      sub_242D01D84();
      v17 = v25;
      goto LABEL_8;
    }

    sub_242D057B8(v22, a7 & 1);
    v17 = sub_242CE8370();
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0808, &qword_242F0B928);
      result = sub_242F06320();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v8;
  if (v23)
  {
    v28 = v27[7] + 32 * v17;
    v29 = *(v28 + 16);
    *v28 = a1;
    *(v28 + 8) = a2;
    *(v28 + 16) = a3;
    *(v28 + 24) = v12;
  }

  else
  {
    sub_242D09B44(v17, a5, a6, a1, a2, a3, v12, v27);
  }
}

uint64_t sub_242CDE800(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_242CE8370();
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_242D01F30();
      v11 = v19;
      goto LABEL_8;
    }

    sub_242D05AA4(v16, a4 & 1);
    v11 = sub_242CE8370();
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF38, &qword_242F095B0);
      result = sub_242F06320();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + (v11 << 7);

    return sub_242CE3448(a1, v22);
  }

  else
  {
    sub_242D09B98(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_242CDE950(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_242CE8370();
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_242CE8370();
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF09F0, &qword_242F0C340);
      result = sub_242F06320();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

uint64_t sub_242CDEAC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v8 = *v4;
  v9 = sub_242CE8370();
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a4 & 1) == 0)
  {
    if (v16 >= v14 && (a4 & 1) == 0)
    {
      v17 = v9;
      sub_242D02120();
      v9 = v17;
      goto LABEL_8;
    }

    sub_242D05E84(v14, a4 & 1);
    v9 = sub_242CE8370();
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF38, &qword_242F095B0);
      result = sub_242F06320();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v15)
  {
    *(*(*v5 + 56) + 8 * v9) = a1;
  }

  else
  {
    sub_242D0BFDC();
  }
}

uint64_t sub_242CDEC1C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = *v3;
  v13 = sub_242CE5568(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      v20 = v19[7];
      v21 = type metadata accessor for RequestContentModel(0);
      return sub_242CE3300(a1, v20 + *(*(v21 - 8) + 72) * v13, type metadata accessor for RequestContentModel);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_242D02670();
    goto LABEL_7;
  }

  sub_242D068C8(v16, a3 & 1);
  v23 = sub_242CE5568(a2);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_242F06320();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_242CA321C(a2, v10, &qword_27ECFC780, &qword_242F17930);
  return sub_242D09C50(v13, v10, a1, v19);
}

uint64_t sub_242CDEDCC(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = *v3;
  v13 = sub_242CE5568(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  result = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      *(v19[7] + v13) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v18 >= result && (a3 & 1) == 0)
  {
    result = sub_242D026AC();
    goto LABEL_7;
  }

  sub_242D06904(result, a3 & 1);
  result = sub_242CE5568(a2);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_14:
    result = sub_242F06320();
    __break(1u);
    return result;
  }

  v13 = result;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_242CA321C(a2, v10, &qword_27ECFC780, &qword_242F17930);
  return sub_242D09C7C(v13, v10, a1 & 1, v19);
}

uint64_t sub_242CDEF48(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = a1[1];
  v42 = *a1;
  v43 = v7;
  v8 = a1[3];
  v44 = a1[2];
  v45 = v8;
  v9 = a1[5];
  v46 = a1[4];
  v47 = v9;
  v10 = a1[7];
  v48 = a1[6];
  v49 = v10;
  v11 = a1[9];
  v50 = a1[8];
  v51 = v11;
  v12 = a1[11];
  v52 = a1[10];
  v53 = v12;
  v13 = a1[12];
  v14 = *(a1 + 104);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  v18 = *v3;
  v20 = sub_242CE5568(a2);
  v21 = *(v18 + 16);
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
    goto LABEL_14;
  }

  v24 = v19;
  v25 = *(v18 + 24);
  if (v25 >= v23 && (a3 & 1) != 0)
  {
    goto LABEL_9;
  }

  if (v25 >= v23 && (a3 & 1) == 0)
  {
    sub_242D028D4();
    goto LABEL_9;
  }

  sub_242D06C70(v23, a3 & 1);
  v26 = sub_242CE5568(a2);
  if ((v24 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_242F06320();
    __break(1u);
    return result;
  }

  v20 = v26;
LABEL_9:
  v28 = v53;
  if (v24)
  {
    v29 = *(*v4 + 56) + 112 * v20;
    v31 = *(v29 + 16);
    v30 = *(v29 + 32);
    v54[0] = *v29;
    v54[1] = v31;
    v54[2] = v30;
    v33 = *(v29 + 64);
    v32 = *(v29 + 80);
    v34 = *(v29 + 48);
    *&v55[9] = *(v29 + 89);
    v54[4] = v33;
    *v55 = v32;
    v54[3] = v34;
    v35 = v43;
    *v29 = v42;
    *(v29 + 8) = v35;
    v36 = v45;
    *(v29 + 16) = v44;
    *(v29 + 24) = v36;
    v37 = v47;
    *(v29 + 32) = v46;
    *(v29 + 40) = v37;
    v38 = v49;
    *(v29 + 48) = v48;
    *(v29 + 56) = v38;
    v39 = v51;
    *(v29 + 64) = v50;
    *(v29 + 72) = v39;
    *(v29 + 80) = v52;
    *(v29 + 88) = v28;
    *(v29 + 96) = v13;
    *(v29 + 104) = v14;
    return sub_242C6D138(v54, &qword_27ECF21A8, &qword_242F17990);
  }

  else
  {
    v41 = *v4;
    sub_242CA321C(a2, v17, &qword_27ECFC780, &qword_242F17930);
    v56[0] = v42;
    v56[1] = v43;
    v56[2] = v44;
    v56[3] = v45;
    v56[4] = v46;
    v56[5] = v47;
    v56[6] = v48;
    v56[7] = v49;
    v56[8] = v50;
    v56[9] = v51;
    v56[10] = v52;
    v56[11] = v28;
    v56[12] = v13;
    v57 = v14;
    return sub_242D09D28(v20, v17, v56, v41);
  }
}

uint64_t sub_242CDF290(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = *v3;
  v13 = sub_242CE5568(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      v20 = v19[7];
      v21 = type metadata accessor for ClusterTransitionCoordinator.ComponentTransition(0);
      return sub_242CE3300(a1, v20 + *(*(v21 - 8) + 72) * v13, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_242D02B84();
    goto LABEL_7;
  }

  sub_242D070EC(v16, a3 & 1);
  v23 = sub_242CE5568(a2);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_242F06320();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_242CA321C(a2, v10, &qword_27ECFC780, &qword_242F17930);
  return sub_242D09E20(v13, v10, a1, v19);
}

uint64_t sub_242CDF440(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_242CE561C(a2 & 1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_242D0301C();
      result = v17;
      goto LABEL_8;
    }

    sub_242D0781C(v14, a3 & 1);
    result = sub_242CE561C(a2 & 1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_242F06320();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
  }

  else
  {

    return sub_242D09F34(result, a2 & 1, a1, v19);
  }

  return result;
}

uint64_t sub_242CDF54C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_242CE519C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_242D0332C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_242D07E08(v16, a4 & 1);
    v11 = sub_242CE519C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_242F06320();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_242D09C08(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_242CDF694(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_242CE519C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_242D037D0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_242D08698(v16, a4 & 1);
    v11 = sub_242CE519C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_242F06320();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_242D09C08(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_242CDF7DC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_242CE52B8(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_242D03AB4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_242D08BE0(v14, a3 & 1);
    v9 = sub_242CE52B8(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_242F06320();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 48 * v9;

    return sub_242CE34A4(a1, v20);
  }

  else
  {

    return sub_242D09FDC(v9, a2, a1, v19);
  }
}

uint64_t sub_242CDF900(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_242CE8370();
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_242D04078();
      v11 = v19;
      goto LABEL_8;
    }

    sub_242D09694(v16, a4 & 1);
    v11 = sub_242CE8370();
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2108, &qword_242F13A60);
      sub_242F06320();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  sub_242D09C08(v11, a2, a3, a1, v21);
}

uint64_t sub_242CDFA50(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    v12 = v3[3];
    *(result + 32) = v3[2];
    *(result + 48) = v12;
    *(result + 64) = v3[4];
    v13 = v3[1];
    *result = *v3;
    *(result + 16) = v13;
    *(result + 80) = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = *(v3 + 2);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      while (v7 < *(v4 + 16))
      {
        v8 = a2 + v6;
        v9 = *(v4 + v6 + 40);
        v10 = *(v4 + v6 + 64);
        v11 = *(v4 + v6 + 48);
        *v8 = *(v4 + v6 + 32);
        *(v8 + 8) = v9;
        *(v8 + 16) = v11;
        *(v8 + 32) = v10;
        if (a3 - 1 == v7)
        {
          goto LABEL_11;
        }

        ++v7;
        v6 += 40;
        if (v5 == v7)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_9:
    a3 = v5;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_242CDFAF8(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v9 = 0;
    a3 = 0;
LABEL_24:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v25 = result;
    v26 = a3;
    result = 0;
    v9 = 0;
    v24 = -1 << *(a4 + 32);
    v10 = (63 - v5) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_14:
      v14 = a4;
      v15 = (*(a4 + 48) + 56 * (__clz(__rbit64(v7)) | (v9 << 6)));
      v16 = v15[1];
      v7 &= v7 - 1;
      v18 = v15[2];
      v17 = v15[3];
      v20 = v15[4];
      v19 = v15[5];
      v21 = v15[6];
      *v8 = *v15;
      v8[1] = v16;
      v8[2] = v18;
      v8[3] = v17;
      v8[4] = v20;
      v8[5] = v19;
      v8[6] = v21;
      if (v11 == v26)
      {

        a4 = v14;
        v5 = v24;
        result = v25;
        a3 = v26;
        goto LABEL_24;
      }

      v8 += 7;

      result = v11;
      v22 = __OFADD__(v11++, 1);
      a4 = v14;
      if (v22)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v10 <= v9 + 1)
    {
      v23 = v9 + 1;
    }

    else
    {
      v23 = v10;
    }

    v9 = v23 - 1;
    a3 = result;
    v5 = v24;
    result = v25;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_242CDFCB8(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    v8 = 0;
LABEL_25:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v10;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v21 = result;
    v22 = -1 << *(a4 + 32);
    result = 0;
    v10 = 0;
    v11 = (63 - v5) >> 6;
    v12 = 1;
    while (v7)
    {
LABEL_14:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v10 << 6);
      v17 = (*(a4 + 48) + 944 * v16);
      memcpy(__dst, v17, 0x3B0uLL);
      v18 = *(*(a4 + 56) + 8 * v16);
      memmove(v9, v17, 0x3B0uLL);
      v9[118] = v18;
      if (v12 == v8)
      {
        sub_242C7F7E0(__dst, v24);

        goto LABEL_23;
      }

      v9 += 119;
      sub_242C7F7E0(__dst, v24);

      result = v12;
      if (__OFADD__(v12++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v14 >= v11)
      {
        break;
      }

      v7 = *(v4 + 8 * v14);
      ++v13;
      if (v7)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v11 <= v10 + 1)
    {
      v20 = v10 + 1;
    }

    else
    {
      v20 = v11;
    }

    v10 = v20 - 1;
    v8 = result;
LABEL_23:
    result = v21;
    v5 = v22;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_242CDFE68(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + ((v12 << 11) | (32 * v17));
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      LOBYTE(v18) = *(v18 + 24);
      *v11 = v20;
      *(v11 + 8) = v19;
      *(v11 + 16) = v21;
      *(v11 + 24) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 32;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_242CDFFD0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_242C6CF00(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_242C65564(v20, v21);
      sub_242C65564(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_242CE013C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_242CE0294(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v27 = 0;
    a3 = 0;
LABEL_24:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v27;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v27 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v31 = a4;
    v32 = a3;
    v29 = -1 << *(a4 + 32);
    v30 = result;
    result = 0;
    v9 = 0;
    v10 = (63 - v5) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_14:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v33 = v9;
      v15 = v14 | (v9 << 6);
      v16 = (*(a4 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(a4 + 56) + 56 * v15;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v19 + 40);
      LOBYTE(v19) = *(v19 + 48);
      *v8 = v18;
      *(v8 + 8) = v17;
      *(v8 + 16) = v20;
      *(v8 + 24) = v21;
      *(v8 + 32) = v22;
      *(v8 + 40) = v23;
      *(v8 + 48) = v24;
      *(v8 + 56) = v25;
      *(v8 + 64) = v19;
      if (v11 == v32)
      {

        sub_242C7F6C4(v20, v21, v22, v23, v24);
        result = v30;
        a4 = v31;
        v5 = v29;
        a3 = v32;
        v27 = v33;
        goto LABEL_24;
      }

      v8 += 72;

      sub_242C7F6C4(v20, v21, v22, v23, v24);
      result = v11;
      v26 = __OFADD__(v11++, 1);
      a4 = v31;
      v9 = v33;
      if (v26)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v10 <= v9 + 1)
    {
      v28 = v9 + 1;
    }

    else
    {
      v28 = v10;
    }

    v27 = v28 - 1;
    a3 = result;
    v5 = v29;
    result = v30;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_242CE046C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_242CE05C4(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + ((v12 << 13) | (v17 << 7)));
      v19 = v18[3];
      v21 = *v18;
      v20 = v18[1];
      v28[2] = v18[2];
      v28[3] = v19;
      v28[0] = v21;
      v28[1] = v20;
      v23 = v18[5];
      v22 = v18[6];
      v24 = v18[4];
      *&v29[9] = *(v18 + 105);
      v28[5] = v23;
      *v29 = v22;
      v28[4] = v24;
      memmove(v11, v18, 0x79uLL);
      if (v14 == v10)
      {
        sub_242C7DAC0(v28, v27);
        goto LABEL_24;
      }

      v11 += 128;
      sub_242C7DAC0(v28, v27);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = (63 - v7) >> 6;
    }

    v12 = v26 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_242CE0760(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_242F06110() & 1;
  }
}

uint64_t sub_242CE07B8(char *__src, char *__dst, unint64_t a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src;
  v9 = __dst - __src;
  v10 = (__dst - __src) / 56;
  v11 = a3 - __dst;
  v12 = (a3 - __dst) / 56;
  if (v10 >= v12)
  {
    if (a4 != __dst || &__dst[56 * v12] <= a4)
    {
      memmove(a4, __dst, 56 * v12);
    }

    v13 = &v5[56 * v12];
    if (v11 < 56 || v7 <= v8)
    {
LABEL_41:
      v19 = v7;
    }

    else
    {
      v38 = v8;
      v44 = v5;
      do
      {
        v20 = 0;
        v21 = v13;
        v33 = v7 - 56;
        v34 = v13;
        while (1)
        {
          v22 = &v21[v20];
          v35 = &v21[v20 - 56];

          swift_getAtKeyPath();
          swift_getAtKeyPath();
          if (v41 == v39 && v42 == v40)
          {
            v23 = 0;
          }

          else
          {
            v23 = sub_242F06110();
          }

          v24 = (v6 + v20 - 56);

          if (v23)
          {
            break;
          }

          v21 = v34;
          if ((v6 + v20) != v22)
          {
            v25 = *v35;
            v26 = *(v35 + 16);
            v27 = *(v35 + 32);
            *(v6 + v20 - 8) = *(v35 + 48);
            *(v6 + v20 - 40) = v26;
            *(v6 + v20 - 24) = v27;
            *v24 = v25;
          }

          v20 -= 56;
          v13 = &v34[v20];
          v5 = v44;
          if (&v34[v20] <= v44)
          {
            goto LABEL_41;
          }
        }

        v19 = v7 - 56;
        if ((v6 + v20) != v7)
        {
          v28 = *v33;
          v29 = *(v7 - 40);
          v30 = *(v7 - 24);
          *(v6 + v20 - 8) = *(v7 - 1);
          *(v6 + v20 - 40) = v29;
          *(v6 + v20 - 24) = v30;
          *v24 = v28;
        }

        v13 = &v34[v20];
        v5 = v44;
        if (&v34[v20] <= v44)
        {
          break;
        }

        v6 = v6 + v20 - 56;
        v7 -= 56;
      }

      while (v33 > v38);
      v13 = &v34[v20];
    }
  }

  else
  {
    if (a4 != __src || &__src[56 * v10] <= a4)
    {
      memmove(a4, __src, 56 * v10);
    }

    v13 = &v5[56 * v10];
    if (v9 >= 56 && v7 < v6)
    {
      v36 = &v5[56 * v10];
      while (1)
      {

        swift_getAtKeyPath();
        swift_getAtKeyPath();
        v43 = v5;
        if (v41 == v39 && v42 == v40)
        {
          v37 = 0;
        }

        else
        {
          v37 = sub_242F06110();
        }

        if ((v37 & 1) == 0)
        {
          break;
        }

        v14 = v7;
        v15 = v8 == v7;
        v7 += 56;
        if (!v15)
        {
          goto LABEL_17;
        }

LABEL_18:
        v8 += 56;
        v13 = v36;
        if (v5 >= v36 || v7 >= v6)
        {
          goto LABEL_20;
        }
      }

      v14 = v5;
      v5 += 56;
      if (v8 == v43)
      {
        goto LABEL_18;
      }

LABEL_17:
      v16 = *v14;
      v17 = *(v14 + 1);
      v18 = *(v14 + 2);
      *(v8 + 6) = *(v14 + 6);
      *(v8 + 1) = v17;
      *(v8 + 2) = v18;
      *v8 = v16;
      goto LABEL_18;
    }

LABEL_20:
    v19 = v8;
  }

  v31 = (v13 - v5) / 56;
  if (v19 != v5 || v19 >= &v5[56 * v31])
  {
    memmove(v19, v5, 56 * v31);
  }

  return 1;
}

uint64_t sub_242CE0CF8(uint64_t *a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_242D9D130(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v6 = &v24[16 * v9];
      v12 = *v6;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 56 * *v6);
      v15 = (v10 + 56 * *v13);
      v16 = v10 + 56 * v14;

      sub_242CE07B8(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v12)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v6 = v12;
      v6[1] = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_242CE0EA4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = a3[1];
  v144 = MEMORY[0x277D84F90];
  if (v6 >= 1)
  {
    swift_retain_n();
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v128 = a5;
    while (1)
    {
      v121 = v8;
      if (v7 + 1 >= v6)
      {
        v6 = v7 + 1;
      }

      else
      {
        v9 = *a3;
        v10 = *a3 + 56 * (v7 + 1);
        v12 = *(v10 + 16);
        v11 = *(v10 + 32);
        v13 = *v10;
        v146 = *(v10 + 48);
        v145[1] = v12;
        v145[2] = v11;
        v145[0] = v13;
        v14 = v9 + 56 * v7;
        v16 = *(v14 + 16);
        v15 = *(v14 + 32);
        v17 = *v14;
        v148 = *(v14 + 48);
        v147[1] = v16;
        v147[2] = v15;
        v147[0] = v17;
        sub_242C8745C(v145, &v137);
        sub_242C8745C(v147, &v137);
        v126 = sub_242DB6684(v145, v147, a5);
        if (v125)
        {
          sub_242CC50B0(v147);
          sub_242CC50B0(v145);
          goto LABEL_101;
        }

        sub_242CC50B0(v147);
        sub_242CC50B0(v145);
        v18 = v7 + 2;
        v19 = (v9 + 56 * v7 + 80);
        v123 = v6;
        while (v6 != v18)
        {
          v20 = v19[5];
          v21 = v19[6];
          v22 = v19[7];
          v23 = v19[8];
          v24 = v19[9];
          v25 = v19[10];
          v26 = *(v19 - 2);
          v137 = v19[4];
          v138 = v20;
          v139 = v21;
          v140 = v22;
          v141 = v23;
          v142 = v24;
          v143 = v25;

          v149 = v26;

          swift_getAtKeyPath();
          swift_getAtKeyPath();
          if (v135 == v133 && v136 == v134)
          {
            v129 = 0;
          }

          else
          {
            v129 = sub_242F06110();
          }

          ++v18;
          v19 += 7;
          v8 = v121;
          v6 = v123;
          if ((v126 ^ v129))
          {
            v6 = v18 - 1;
            break;
          }
        }

        if (v126)
        {
          if (v6 < v7)
          {
            goto LABEL_124;
          }

          if (v7 < v6)
          {
            v27 = 56 * v6 - 24;
            v28 = 56 * v7 + 48;
            v29 = v6;
            v30 = v7;
            do
            {
              if (v30 != --v29)
              {
                v31 = *a3;
                if (!*a3)
                {
                  goto LABEL_127;
                }

                v32 = (v31 + v28);
                v33 = *(v31 + v28 - 48);
                v34 = v31 + v27;
                v35 = *(v32 - 3);
                v36 = *(v32 - 1);
                v37 = *v32;
                v38 = *(v32 - 5);
                v40 = *(v34 - 16);
                v39 = *v34;
                v41 = *(v34 - 32);
                *v32 = *(v34 + 16);
                *(v32 - 2) = v40;
                *(v32 - 1) = v39;
                *(v32 - 3) = v41;
                *(v34 - 32) = v33;
                *(v34 - 24) = v38;
                *(v34 - 8) = v35;
                *(v34 + 8) = v36;
                *(v34 + 16) = v37;
              }

              ++v30;
              v27 -= 56;
              v28 += 56;
            }

            while (v30 < v29);
          }
        }
      }

      v42 = a3[1];
      if (v6 >= v42)
      {
        goto LABEL_33;
      }

      if (__OFSUB__(v6, v7))
      {
        goto LABEL_121;
      }

      if (v6 - v7 >= a4)
      {
        goto LABEL_33;
      }

      if (__OFADD__(v7, a4))
      {
        goto LABEL_122;
      }

      if (v7 + a4 >= v42)
      {
        v43 = a3[1];
      }

      else
      {
        v43 = v7 + a4;
      }

      if (v43 < v7)
      {
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:

        __break(1u);
LABEL_126:

        __break(1u);
LABEL_127:

        __break(1u);
LABEL_128:

        __break(1u);
LABEL_129:

        __break(1u);
        return result;
      }

      if (v6 == v43)
      {
LABEL_33:
        v44 = v6;
        if (v6 < v7)
        {
          goto LABEL_120;
        }
      }

      else
      {
        v127 = *a3;
        v99 = *a3 + 56 * v6 - 56;
        v100 = v7 - v6;
        v118 = v43;
        do
        {
          v101 = v100;
          v124 = v6;
          v102 = (v127 + 56 * v6);
          v103 = *v102;
          v104 = v102[1];
          v106 = v102[2];
          v105 = v102[3];
          v108 = v102[4];
          v107 = v102[5];
          v109 = v102[6];
          v119 = v101;
          v120 = v99;
          do
          {
            v130 = v101;
            v110 = *(v99 + 8);
            v137 = v103;
            v138 = v104;
            v139 = v106;
            v140 = v105;
            v141 = v108;
            v142 = v107;
            v143 = v109;

            v149 = v110;

            swift_getAtKeyPath();
            swift_getAtKeyPath();
            if (v135 == v133 && v136 == v134)
            {
              v132 = 0;
            }

            else
            {
              v132 = sub_242F06110();
            }

            if ((v132 & 1) == 0)
            {
              break;
            }

            if (!v127)
            {
              goto LABEL_125;
            }

            v104 = *(v99 + 64);
            v106 = *(v99 + 72);
            v111 = *(v99 + 16);
            v112 = *(v99 + 48);
            v103 = *(v99 + 56);
            *(v99 + 56) = *v99;
            v105 = *(v99 + 80);
            v108 = *(v99 + 88);
            v107 = *(v99 + 96);
            v109 = *(v99 + 104);
            *(v99 + 72) = v111;
            *(v99 + 88) = *(v99 + 32);
            *(v99 + 104) = v112;
            *v99 = v103;
            *(v99 + 8) = v104;
            *(v99 + 16) = v106;
            *(v99 + 24) = v105;
            *(v99 + 32) = v108;
            *(v99 + 40) = v107;
            *(v99 + 48) = v109;
            v99 -= 56;
            v101 = v130 + 1;
          }

          while (v130 != -1);
          ++v6;
          v99 = v120 + 56;
          v100 = v119 - 1;
          v44 = v118;
        }

        while (v124 + 1 != v118);
        v8 = v121;
        if (v118 < v7)
        {
          goto LABEL_120;
        }
      }

      v117 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_242C829CC(0, *(v8 + 2) + 1, 1, v8);
      }

      v46 = *(v8 + 2);
      v45 = *(v8 + 3);
      v47 = v46 + 1;
      if (v46 >= v45 >> 1)
      {
        v8 = sub_242C829CC((v45 > 1), v46 + 1, 1, v8);
      }

      *(v8 + 2) = v47;
      v48 = v8 + 32;
      v49 = &v8[16 * v46 + 32];
      *v49 = v7;
      *(v49 + 1) = v117;
      v144 = v8;
      v149 = *a1;
      if (!v149)
      {
        goto LABEL_128;
      }

      if (v46)
      {
        v131 = v8 + 32;
        while (1)
        {
          v50 = v47 - 1;
          if (v47 >= 4)
          {
            break;
          }

          if (v47 == 3)
          {
            v51 = *(v8 + 4);
            v52 = *(v8 + 5);
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_54:
            if (v54)
            {
              goto LABEL_111;
            }

            v67 = &v8[16 * v47];
            v69 = *v67;
            v68 = *(v67 + 1);
            v70 = __OFSUB__(v68, v69);
            v71 = v68 - v69;
            v72 = v70;
            if (v70)
            {
              goto LABEL_114;
            }

            v73 = &v48[16 * v50];
            v75 = *v73;
            v74 = *(v73 + 1);
            v61 = __OFSUB__(v74, v75);
            v76 = v74 - v75;
            if (v61)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v71, v76))
            {
              goto LABEL_118;
            }

            if (v71 + v76 >= v53)
            {
              if (v53 < v76)
              {
                v50 = v47 - 2;
              }

              goto LABEL_75;
            }

            goto LABEL_68;
          }

          v77 = &v8[16 * v47];
          v79 = *v77;
          v78 = *(v77 + 1);
          v61 = __OFSUB__(v78, v79);
          v71 = v78 - v79;
          v72 = v61;
LABEL_68:
          if (v72)
          {
            goto LABEL_113;
          }

          v80 = &v48[16 * v50];
          v82 = *v80;
          v81 = *(v80 + 1);
          v61 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v61)
          {
            goto LABEL_116;
          }

          if (v83 < v71)
          {
            goto LABEL_3;
          }

LABEL_75:
          if (v50 - 1 >= v47)
          {
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          v88 = *a3;
          if (!*a3)
          {
            goto LABEL_126;
          }

          v89 = v8;
          v90 = &v48[16 * v50 - 16];
          v91 = *v90;
          v92 = v50;
          v93 = &v48[16 * v50];
          v94 = *(v93 + 1);
          v95 = (v88 + 56 * *v90);
          v96 = (v88 + 56 * *v93);
          v97 = v88 + 56 * v94;

          sub_242CE07B8(v95, v96, v97, v149, v128);
          if (v125)
          {

            v144 = v89;
            goto LABEL_101;
          }

          if (v94 < v91)
          {
            goto LABEL_106;
          }

          v8 = v89;
          v98 = *(v89 + 16);
          if (v92 > v98)
          {
            goto LABEL_107;
          }

          *v90 = v91;
          *(v90 + 1) = v94;
          if (v92 >= v98)
          {
            goto LABEL_108;
          }

          v47 = v98 - 1;
          memmove(v93, v93 + 16, 16 * (v98 - 1 - v92));
          *(v89 + 16) = v98 - 1;
          v48 = v131;
          if (v98 <= 2)
          {
LABEL_3:
            v144 = v8;
            goto LABEL_4;
          }
        }

        v55 = &v48[16 * v47];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_109;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_110;
        }

        v62 = &v8[16 * v47];
        v64 = *v62;
        v63 = *(v62 + 1);
        v61 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v61)
        {
          goto LABEL_112;
        }

        v61 = __OFADD__(v53, v65);
        v66 = v53 + v65;
        if (v61)
        {
          goto LABEL_115;
        }

        if (v66 >= v58)
        {
          v84 = &v48[16 * v50];
          v86 = *v84;
          v85 = *(v84 + 1);
          v61 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v53 < v87)
          {
            v50 = v47 - 2;
          }

          goto LABEL_75;
        }

        goto LABEL_54;
      }

LABEL_4:
      v6 = a3[1];
      v7 = v117;
      a5 = v128;
      if (v117 >= v6)
      {
        goto LABEL_98;
      }
    }
  }

  swift_retain_n();
LABEL_98:
  v113 = *a1;
  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_242CE0CF8(&v144, v113, a3, a5);
  if (v125)
  {

LABEL_101:
  }

  else
  {
  }
}

uint64_t sub_242CE17FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v21 = *a4;
    v5 = *a4 + 56 * a3 - 56;
    v6 = result - a3;
LABEL_5:
    v19 = v5;
    v20 = a3;
    v7 = v6;
    v18 = v6;
    while (1)
    {
      v27 = v7;

      swift_getAtKeyPath();
      swift_getAtKeyPath();
      if (v25 == v23 && v26 == v24)
      {
        v22 = 0;
      }

      else
      {
        v22 = sub_242F06110();
      }

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v20 + 1;
        v5 = v19 + 56;
        v6 = v18 - 1;
        if (v20 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v21)
      {
        break;
      }

      v8 = *(v5 + 64);
      v9 = *(v5 + 72);
      v10 = *(v5 + 16);
      v12 = *(v5 + 48);
      v11 = *(v5 + 56);
      *(v5 + 56) = *v5;
      v13 = *(v5 + 80);
      v14 = *(v5 + 88);
      v15 = *(v5 + 96);
      v16 = *(v5 + 104);
      *(v5 + 72) = v10;
      *(v5 + 88) = *(v5 + 32);
      *(v5 + 104) = v12;
      *v5 = v11;
      *(v5 + 8) = v8;
      *(v5 + 16) = v9;
      *(v5 + 24) = v13;
      *(v5 + 32) = v14;
      *(v5 + 40) = v15;
      *(v5 + 48) = v16;
      v5 -= 56;
      v7 = v27 + 1;
      if (v27 == -1)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_242CE1A34(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_242F05F50();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_242F05360();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_242CE0EA4(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_242CE17FC(0, v4, 1, a1, a2);
  }
}

uint64_t sub_242CE1B7C(char **a1, void *a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_242D9D158(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_242CE1A34(v7, a2);

  *a1 = v4;
}

void *sub_242CE1C20(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2080, &qword_242F13870);
  result = sub_242F05C90();
  v4 = result;
  v5 = 0;
  v44 = result;
  v45 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v39 = v7;
  v40 = (v9 + 63) >> 6;
  v43 = result + 8;
  if (v11)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v11));
      v13 = (v11 - 1) & v11;
LABEL_10:
      v16 = v12 | (v5 << 6);
      v17 = *(v45 + 48) + 24 * v16;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v45 + 56) + 56 * v16;
      v22 = *v21;
      v23 = *(v21 + 8);
      v25 = *(v21 + 16);
      v24 = *(v21 + 24);
      v26 = *(v21 + 32);
      v51 = *(v21 + 40);
      v47 = v13;
      v50 = 24 * v16;
      v49 = v16;
      v48 = *(v21 + 48);
      if (v48)
      {
        v42 = v19;
        if (v23 >> 1 == 0xFFFFFFFF)
        {
          sub_242C7CE5C(v18, v19, v20);
          v27 = v22;
          v28 = v22;
          v29 = v25;
          sub_242C7F844(v28, v23, v25, v24, v26, v51, 1, sub_242C7F7A0, sub_242C7F7AC);
          v30 = 0;
        }

        else
        {
          v52 = *v21;
          v53 = v23;
          v54 = v25;
          sub_242C7CE5C(v18, v19, v20);
          v27 = v22;
          v33 = v22;
          v29 = v25;
          sub_242C7F844(v33, v23, v25, v24, v26, v51, 1, sub_242C7F7A0, sub_242C7F7AC);
          a2(&v55, &v52);
          v30 = v55;
        }

        if (v26 >> 1 == 0xFFFFFFFF)
        {
          result = sub_242C7F844(v27, v23, v29, v24, v26, v51, 1, sub_242C7F7D4, sub_242C7F7C0);
          v32 = 0;
        }

        else
        {
          v52 = v24;
          v53 = v26;
          v54 = v51;
          a2(&v55, &v52);
          result = sub_242C7F844(v27, v23, v29, v24, v26, v51, 1, sub_242C7F7D4, sub_242C7F7C0);
          v32 = v55;
        }

        v4 = v44;
        v19 = v42;
      }

      else
      {
        v52 = *v21;
        v53 = v23;
        v54 = v25;
        sub_242C7CE5C(v18, v19, v20);
        sub_242C7F844(v22, v23, v25, v24, v26, v51, 0, sub_242C7F7A0, sub_242C7F7AC);
        v41 = v26;
        v31 = v24;
        a2(&v55, &v52);
        v4 = v44;
        result = sub_242C7F844(v22, v23, v25, v31, v41, v51, 0, sub_242C7F7D4, sub_242C7F7C0);
        v32 = 0;
        v30 = v55;
      }

      *(v43 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v34 = v4[6] + v50;
      *v34 = v18;
      *(v34 + 8) = v19;
      *(v34 + 16) = v20;
      v35 = v4[7] + v50;
      *v35 = v30;
      *(v35 + 8) = v32;
      *(v35 + 16) = v48;
      v36 = v4[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        break;
      }

      v4[2] = v38;
      v11 = v47;
      if (!v47)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v40)
      {
        return v4;
      }

      v15 = *(v39 + 8 * v5);
      ++v14;
      if (v15)
      {
        v12 = __clz(__rbit64(v15));
        v13 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_242CE20AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v24 = a1;
  v8 = a2 + 64;
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 64);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      v16 = __clz(__rbit64(v11)) | (v15 << 6);
      v17 = (*(a2 + 48) + 944 * v16);
      memcpy(__dst, v17, 0x3B0uLL);
      v18 = *(*(a2 + 56) + 8 * v16);
      memcpy(__src, v17, 0x3B0uLL);
      __src[118] = v18;
      sub_242C7F7E0(__dst, v21);

      sub_242CDAF08(&v24, __src, a3, a4, a5);
      if (v5)
      {
        break;
      }

      v11 &= v11 - 1;
      memcpy(v21, __src, sizeof(v21));
      result = sub_242C6D138(v21, &qword_27ECF0A70, &qword_242F0C398);
      v14 = v15;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    memcpy(v21, __src, sizeof(v21));
    sub_242C6D138(v21, &qword_27ECF0A70, &qword_242F0C398);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v12)
      {

        return v24;
      }

      v11 = *(v8 + 8 * v15);
      ++v14;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_242CE226C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1FF0;
  if (!qword_27ECF1FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1FF0);
  }

  return result;
}

unint64_t sub_242CE22C0()
{
  result = qword_27ECF2000;
  if (!qword_27ECF2000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF1FF8, &qword_242F13828);
    v3 = sub_242C9BB60(&qword_27ECEFF60, &qword_27ECEFF38, &qword_242F095B0, &protocol conformance descriptor for <> TaggedValue<A, B>);
    sub_242CE2378(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2000);
  }

  return result;
}

unint64_t sub_242CE2378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF2008;
  if (!qword_27ECF2008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2008);
  }

  return result;
}

unint64_t sub_242CE23CC()
{
  result = qword_27ECF2018;
  if (!qword_27ECF2018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2010, &qword_242F13830);
    sub_242C9BB60(&qword_27ECF09F8, &qword_27ECF09F0, &qword_242F0C340, &protocol conformance descriptor for <> TaggedValue<A, B>);
    sub_242CE2484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2018);
  }

  return result;
}

unint64_t sub_242CE2484()
{
  result = qword_27ECF2020;
  if (!qword_27ECF2020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2028, &qword_242F13838);
    sub_242C9BB60(&qword_27ECEFF60, &qword_27ECEFF38, &qword_242F095B0, &protocol conformance descriptor for <> TaggedValue<A, B>);
    sub_242CE253C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2020);
  }

  return result;
}

unint64_t sub_242CE253C()
{
  result = qword_27ECF2030;
  if (!qword_27ECF2030)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2038, &qword_242F13840);
    sub_242C7DFAC(v1, v2, v3);
    sub_242CE2C38(&qword_27ECF2040, &protocol conformance descriptor for Dynamic<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2030);
  }

  return result;
}

unint64_t sub_242CE25E4()
{
  result = qword_27ECF2058;
  if (!qword_27ECF2058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2050, &qword_242F13850);
    sub_242C9BB60(&qword_27ECF09F8, &qword_27ECF09F0, &qword_242F0C340, &protocol conformance descriptor for <> TaggedValue<A, B>);
    sub_242CE269C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2058);
  }

  return result;
}

unint64_t sub_242CE269C()
{
  result = qword_27ECF2060;
  if (!qword_27ECF2060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2068, &qword_242F13858);
    sub_242C9BB60(&qword_27ECEFF60, &qword_27ECEFF38, &qword_242F095B0, &protocol conformance descriptor for <> TaggedValue<A, B>);
    sub_242C7E048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2060);
  }

  return result;
}

unint64_t sub_242CE2754()
{
  result = qword_27ECF2090;
  if (!qword_27ECF2090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2088, &qword_242F13878);
    sub_242C9BB60(&qword_27ECF09F8, &qword_27ECF09F0, &qword_242F0C340, &protocol conformance descriptor for <> TaggedValue<A, B>);
    sub_242C9BB60(&qword_27ECEFF60, &qword_27ECEFF38, &qword_242F095B0, &protocol conformance descriptor for <> TaggedValue<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2090);
  }

  return result;
}

unint64_t sub_242CE2834()
{
  result = qword_27ECF20A0;
  if (!qword_27ECF20A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2098, &qword_242F13880);
    sub_242C9BB60(&qword_27ECF09F8, &qword_27ECF09F0, &qword_242F0C340, &protocol conformance descriptor for <> TaggedValue<A, B>);
    sub_242C9BB60(&qword_27ECF0A08, &qword_27ECF0A00, &qword_242F0C348, &protocol conformance descriptor for <> TaggedValue<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF20A0);
  }

  return result;
}

unint64_t sub_242CE2914()
{
  result = qword_27ECF20B0;
  if (!qword_27ECF20B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF1FF8, &qword_242F13828);
    v3 = sub_242C9BB60(&qword_27ECEFF40, &qword_27ECEFF38, &qword_242F095B0, &protocol conformance descriptor for <> TaggedValue<A, B>);
    sub_242CE29CC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF20B0);
  }

  return result;
}

unint64_t sub_242CE29CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF20B8;
  if (!qword_27ECF20B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF20B8);
  }

  return result;
}

unint64_t sub_242CE2A20()
{
  result = qword_27ECF20C0;
  if (!qword_27ECF20C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2010, &qword_242F13830);
    sub_242C9BB60(&qword_27ECF0A60, &qword_27ECF09F0, &qword_242F0C340, &protocol conformance descriptor for <> TaggedValue<A, B>);
    sub_242CE2AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF20C0);
  }

  return result;
}

unint64_t sub_242CE2AD8()
{
  result = qword_27ECF20C8;
  if (!qword_27ECF20C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2028, &qword_242F13838);
    sub_242C9BB60(&qword_27ECEFF40, &qword_27ECEFF38, &qword_242F095B0, &protocol conformance descriptor for <> TaggedValue<A, B>);
    sub_242CE2B90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF20C8);
  }

  return result;
}

unint64_t sub_242CE2B90()
{
  result = qword_27ECF20D0;
  if (!qword_27ECF20D0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2038, &qword_242F13840);
    sub_242C7DEA0(v1, v2, v3);
    sub_242CE2C38(&qword_27ECF20D8, &protocol conformance descriptor for Dynamic<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF20D0);
  }

  return result;
}

uint64_t sub_242CE2C38(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2048, &qword_242F13848);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242CE2C88()
{
  result = qword_27ECF20E0;
  if (!qword_27ECF20E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2088, &qword_242F13878);
    sub_242C9BB60(&qword_27ECF0A60, &qword_27ECF09F0, &qword_242F0C340, &protocol conformance descriptor for <> TaggedValue<A, B>);
    sub_242C9BB60(&qword_27ECEFF40, &qword_27ECEFF38, &qword_242F095B0, &protocol conformance descriptor for <> TaggedValue<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF20E0);
  }

  return result;
}

double sub_242CE2D68(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_242CE2D84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242CE2DCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_242CE2E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF20E8;
  if (!qword_27ECF20E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF20E8);
  }

  return result;
}

unint64_t sub_242CE2E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF20F0;
  if (!qword_27ECF20F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF20F0);
  }

  return result;
}

unint64_t sub_242CE2EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF20F8;
  if (!qword_27ECF20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF20F8);
  }

  return result;
}

uint64_t sub_242CE2F40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73657474656C6170 && a2 == 0xE800000000000000;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x745374756F79616CLL && a2 == 0xEC00000073656C79 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F59DB0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000242F59DD0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_242CE30B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_242CE3168(&qword_27ECF2158, MEMORY[0x277CC9618]);
    sub_242CE3168(&qword_27ECF2160, MEMORY[0x277CC95F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242CE3168(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_242F03720();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242CE31AC()
{
  result = qword_27ECF01B8;
  if (!qword_27ECF01B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0160, &qword_242F0A500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF01B8);
  }

  return result;
}

unint64_t sub_242CE3228()
{
  result = qword_27ECF2198;
  if (!qword_27ECF2198)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2190, &qword_242F13AA8);
    sub_242CE32AC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2198);
  }

  return result;
}

unint64_t sub_242CE32AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF21A0;
  if (!qword_27ECF21A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF21A0);
  }

  return result;
}

uint64_t sub_242CE3300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_242CE3368()
{
  result = qword_27ECF21B0;
  if (!qword_27ECF21B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2098, &qword_242F13880);
    sub_242C9BB60(&qword_27ECF0A60, &qword_27ECF09F0, &qword_242F0C340, &protocol conformance descriptor for <> TaggedValue<A, B>);
    sub_242C9BB60(&qword_27ECF0A68, &qword_27ECF0A00, &qword_242F0C348, &protocol conformance descriptor for <> TaggedValue<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF21B0);
  }

  return result;
}

uint64_t sub_242CE3500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Layout(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242CE3564(uint64_t a1)
{
  v2 = type metadata accessor for Layout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242CE35C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Layout(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_242CE3624(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, unint64_t a22, unint64_t a23, unint64_t a24, unint64_t a25, unint64_t a26, unint64_t a27, unint64_t a28, unint64_t a29, unint64_t a30, unint64_t a31, unint64_t a32, unint64_t a33, unint64_t a34, unint64_t a35, unint64_t a36, unint64_t a37, unint64_t a38, unint64_t a39, unint64_t a40, unint64_t a41, unint64_t a42, unint64_t a43, unint64_t a44, unint64_t a45, unint64_t a46, unint64_t a47, unint64_t a48, unint64_t a49, unint64_t a50, unint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v63 = STACK[0x668] >> 62;
  if (v63 >= 2)
  {
    if (v63 == 3)
    {
      return v64;
    }
  }
}

uint64_t sub_242CE3D4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 280);
  v4 = *(v2 + 912);
  v5 = *(v2 + 920);
  v6 = *(v2 + 944);
  v7 = *(v2 + 952);
  v8 = *(v2 + 960);
  v33 = *(v2 + 16);
  v9 = *(v2 + 40);
  v34 = *(v2 + 24);
  v35 = v9;
  v10 = *(v2 + 72);
  v36 = *(v2 + 56);
  v37 = v10;
  v11 = *(v2 + 104);
  v38 = *(v2 + 88);
  v39 = v11;
  v12 = *(v2 + 136);
  v40 = *(v2 + 120);
  v41 = v12;
  v42 = *(v2 + 152);
  v43 = *(v2 + 168);
  v44 = *(v2 + 184);
  v45 = *(v2 + 200);
  v46 = *(v2 + 216);
  v47 = *(v2 + 232);
  v48 = *(v2 + 248);
  v49 = *(v2 + 264);
  v50 = v3;
  v13 = *(v2 + 304);
  v51 = *(v2 + 288);
  v52 = v13;
  v14 = *(v2 + 336);
  v53 = *(v2 + 320);
  v54 = v14;
  v15 = *(v2 + 368);
  v55 = *(v2 + 352);
  v56 = v15;
  v16 = *(v2 + 400);
  v57 = *(v2 + 384);
  v58 = v16;
  v17 = *(v2 + 432);
  v59 = *(v2 + 416);
  v60 = v17;
  v18 = *(v2 + 464);
  v61 = *(v2 + 448);
  v62 = v18;
  v19 = *(v2 + 496);
  v63 = *(v2 + 480);
  v64 = v19;
  v20 = *(v2 + 528);
  v65 = *(v2 + 512);
  v66 = v20;
  v21 = *(v2 + 560);
  v67 = *(v2 + 544);
  v68 = v21;
  v22 = *(v2 + 592);
  v69 = *(v2 + 576);
  v70 = v22;
  v23 = *(v2 + 624);
  v71 = *(v2 + 608);
  v72 = v23;
  v24 = *(v2 + 656);
  v73 = *(v2 + 640);
  v74 = v24;
  v25 = *(v2 + 688);
  v75 = *(v2 + 672);
  v76 = v25;
  v26 = *(v2 + 720);
  v77 = *(v2 + 704);
  v78 = v26;
  v27 = *(v2 + 752);
  v79 = *(v2 + 736);
  v80 = v27;
  v28 = *(v2 + 784);
  v81 = *(v2 + 768);
  v82 = v28;
  v29 = *(v2 + 816);
  v83 = *(v2 + 800);
  v84 = v29;
  v30 = *(v2 + 848);
  v85 = *(v2 + 832);
  v86 = v30;
  v31 = *(v2 + 880);
  v87 = *(v2 + 864);
  v88 = v31;
  v89 = *(v2 + 896);
  v90 = v4;
  v91 = v5;
  v92 = *(v2 + 928);
  v93 = v6;
  v94 = v7;
  v95 = v8;
  return sub_242CDBA20(a1, &v33, a2);
}

NSFileWrapper_optional __swiftcall NSFileWrapper.directory(at:creatingIntermediateDirectories:)(Swift::String at, Swift::Bool creatingIntermediateDirectories)
{
  v3 = sub_242F04F00();
  v4 = [v3 pathComponents];

  v5 = sub_242F05310();
  v6 = *(v5 + 16);
  v7 = v2;
  v9 = v7;
  if (v6)
  {
    v10 = 0;
    v11 = (v5 + 40);
    v12 = v7;
    do
    {
      if (v10 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v15 = *(v11 - 1);
      v14 = *v11;

      if (![(objc_class *)v12 isDirectory])
      {
        goto LABEL_16;
      }

      v16 = [(objc_class *)v12 fileWrappers];
      if (v16)
      {
        v17 = v16;
        sub_242C6CBCC();
        v18 = sub_242F04CF0();

        if (*(v18 + 16))
        {
          v19 = sub_242CE51B4(v15, v14, sub_242CE5A04);
          if (v20)
          {
            v13 = v19;

            v9 = *(*(v18 + 56) + 8 * v13);

            goto LABEL_4;
          }
        }
      }

      if (!creatingIntermediateDirectories)
      {
LABEL_16:

        goto LABEL_18;
      }

      v21 = objc_allocWithZone(MEMORY[0x277CCAA20]);
      sub_242C6CBCC();
      v22 = sub_242F04CC0();
      v9 = [v21 initDirectoryWithFileWrappers_];

      v23 = sub_242F04F00();

      [(objc_class *)v9 setPreferredFilename:v23];

      v24 = [(objc_class *)v12 addFileWrapper:v9];
      v12 = v24;
LABEL_4:
      ++v10;

      v11 += 2;
      v12 = v9;
    }

    while (v6 != v10);
  }

  if ([(objc_class *)v9 isDirectory])
  {
    sub_242C6CBCC();
    v25 = v9;
    v26 = sub_242F05810();

    if ((v26 & 1) == 0)
    {
      v7 = v25;
      goto LABEL_21;
    }
  }

  else
  {
  }

LABEL_18:
  v7 = 0;
LABEL_21:
  result.value.super.isa = v7;
  result.is_nil = v8;
  return result;
}

Swift::Void __swiftcall NSFileWrapper.remove(named:)(Swift::String named)
{
  v2 = v1;
  object = named._object;
  countAndFlagsBits = named._countAndFlagsBits;
  v5 = [v2 fileWrappers];
  if (v5)
  {
    v6 = v5;
    sub_242C6CBCC();
    v7 = sub_242F04CF0();

    if (*(v7 + 16) && (v8 = sub_242CE51B4(countAndFlagsBits, object, sub_242CE5A04), (v9 & 1) != 0))
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      [v2 removeFileWrapper_];
    }

    else
    {
    }
  }
}

NSFileWrapper_optional __swiftcall NSFileWrapper.child(at:)(Swift::String at)
{
  v2 = sub_242F04F00();
  v3 = [v2 pathComponents];

  v4 = sub_242F05310();
  v5 = *(v4 + 16);
  v6 = v1;
  v8 = v6;
  if (v5)
  {
    v9 = 0;
    v10 = (v4 + 40);
    v11 = v6;
    while (v9 < *(v4 + 16))
    {
      v12 = *(v10 - 1);
      v13 = *v10;

      if (![(objc_class *)v11 isDirectory]|| (v14 = [(objc_class *)v11 fileWrappers]) == 0)
      {

        goto LABEL_15;
      }

      v15 = v14;
      sub_242C6CBCC();
      v16 = sub_242F04CF0();

      if (!*(v16 + 16))
      {

LABEL_14:

LABEL_15:

        goto LABEL_16;
      }

      v17 = sub_242CE51B4(v12, v13, sub_242CE5A04);
      v19 = v18;

      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }

      ++v9;
      v8 = *(*(v16 + 56) + 8 * v17);

      v10 += 2;
      v11 = v8;
      if (v5 == v9)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    sub_242C6CBCC();
    v20 = v8;
    v21 = sub_242F05810();

    if (v21)
    {

LABEL_16:
      v6 = 0;
    }

    else
    {
      v6 = v20;
    }
  }

  result.value.super.isa = v6;
  result.is_nil = v7;
  return result;
}

uint64_t NSFileWrapper.addRegularFile(withContents:fileName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_242F03390();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_242F033A0();
  v26 = *(v11 - 8);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v4 fileWrappers];
  if (v15)
  {
    v16 = v15;
    v25 = v10;
    sub_242C6CBCC();
    v17 = sub_242F04CF0();

    if (*(v17 + 16))
    {
      sub_242CE51B4(a3, a4, sub_242CE5A04);
      v19 = v18;

      if (v19)
      {
        sub_242F03370();
        sub_242CE678C(MEMORY[0x277D84F90]);
        sub_242CE8250(&qword_27ECEFA98, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
        sub_242F035C0();
        sub_242F03310();
        (*(v26 + 8))(v14, v11);
        return swift_willThrow();
      }
    }

    else
    {
    }
  }

  v21 = sub_242F036A0();
  v22 = sub_242F04F00();
  v23 = [v5 addRegularFileWithContents:v21 preferredFilename:v22];

  v24 = sub_242F04F30();
  return v24;
}

NSFileWrapper_optional __swiftcall NSFileWrapper.fileWrapper(named:)(Swift::String named)
{
  v2 = v1;
  object = named._object;
  countAndFlagsBits = named._countAndFlagsBits;
  v5 = [v2 fileWrappers];
  if (v5)
  {
    v7 = v5;
    sub_242C6CBCC();
    v8 = sub_242F04CF0();

    if (*(v8 + 16) && (v9 = sub_242CE51B4(countAndFlagsBits, object, sub_242CE5A04), (v10 & 1) != 0))
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      v5 = v11;
    }

    else
    {

      v5 = 0;
    }
  }

  result.value.super.isa = v5;
  result.is_nil = v6;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSFileWrapper.checkedAddFileWrapper(_:)(NSFileWrapper a1)
{
  v3 = v1;
  v5 = sub_242F03390();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_242F033A0();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [(objc_class *)a1.super.isa preferredFilename];
  if (!v11)
  {
    sub_242F03380();
    sub_242CE678C(MEMORY[0x277D84F90]);
    goto LABEL_7;
  }

  v36 = v2;
  v33 = v7;
  v12 = v11;
  v13 = sub_242F04F30();
  v15 = v14;

  v16 = [v3 fileWrappers];
  if (!v16)
  {
LABEL_9:

    v27 = [v3 addFileWrapper_];
    v28 = sub_242F04F30();
    v30 = v29;

    v25 = v28;
    v26 = v30;
    goto LABEL_10;
  }

  v17 = v16;
  sub_242C6CBCC();
  v18 = sub_242F04CF0();

  if (!*(v18 + 16) || (v19 = v13, sub_242CE51B4(v13, v15, sub_242CE5A04), (v20 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_242F03370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF21C8, &unk_242F2F4F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F09510;
  *(inited + 32) = sub_242F04F30();
  *(inited + 40) = v22;
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_242F05A80();

  v34 = 0x2220656C6946;
  v35 = 0xE600000000000000;
  MEMORY[0x245D26660](v19, v15);

  MEMORY[0x245D26660](0xD000000000000010, 0x8000000242F59E30);
  v23 = v34;
  v24 = v35;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v23;
  *(inited + 56) = v24;
  sub_242CE678C(inited);
  swift_setDeallocating();
  sub_242C6D138(inited + 32, &qword_27ECF21D0, &qword_242F13AD8);
  v7 = v33;
LABEL_7:
  sub_242CE8250(&qword_27ECEFA98, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
  sub_242F035C0();
  sub_242F03310();
  (*(v7 + 8))(v10, v6);
  v25 = swift_willThrow();
LABEL_10:
  result._object = v26;
  result._countAndFlagsBits = v25;
  return result;
}

void NSFileWrapper.data(contentsOf:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_242F03390();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_242F033A0();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v3 fileWrappers];
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = v12;
  sub_242C6CBCC();
  v14 = sub_242F04CF0();

  if (!*(v14 + 16) || (v15 = sub_242CE51B4(a1, a2, sub_242CE5A04), (v16 & 1) == 0))
  {

LABEL_8:
    sub_242F03320();
    sub_242CE678C(MEMORY[0x277D84F90]);
    sub_242CE8250(&qword_27ECEFA98, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    sub_242F035C0();
    sub_242F03310();
    (*(v8 + 8))(v11, v7);
    swift_willThrow();
    return;
  }

  v17 = *(*(v14 + 56) + 8 * v15);

  v18 = [v17 regularFileContents];
  if (v18)
  {
    v19 = v18;
    sub_242F036B0();
  }

  else
  {
    sub_242F03360();
    sub_242CE678C(MEMORY[0x277D84F90]);
    sub_242CE8250(&qword_27ECEFA98, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    sub_242F035C0();
    sub_242F03310();
    (*(v8 + 8))(v11, v7);
    swift_willThrow();
  }
}

unint64_t sub_242CE503C(uint64_t a1, char a2, uint64_t a3)
{
  sub_242F06390();
  ColorSet.ColorID.rawValue.getter();
  sub_242F04DD0();

  MEMORY[0x245D279A0](a3);
  v6 = sub_242F063E0();

  return sub_242CE56B0(a1, a2 & 1, a3, v6);
}

unint64_t sub_242CE50F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_242F06390();
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  v6 = sub_242F063E0();

  return sub_242CE5ABC(a1, a2, a3, v6);
}

uint64_t sub_242CE51B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_242F06390();
  sub_242F04DD0();
  v5 = sub_242F063E0();

  return a3(a1, a2, v5);
}

unint64_t sub_242CE5238(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_242F06390();
  ColorSet.hash(into:)(v3);
  sub_242F063E0();

  return sub_242CE5C34(__src);
}

unint64_t sub_242CE52B8(uint64_t a1)
{
  v2 = sub_242F06380();

  return sub_242CE5D54(a1, v2);
}

unint64_t sub_242CE52FC(uint64_t a1, uint64_t a2)
{
  sub_242F06390();
  sub_242F04DD0();
  v4 = sub_242F063E0();
  return sub_242CE5A04(a1, a2, v4);
}

unint64_t sub_242CE5370(uint64_t a1)
{
  sub_242F05C40();
  v2 = sub_242F04D80();

  return sub_242CE5DC0(a1, v2);
}

unint64_t sub_242CE53D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_242F06390();
  sub_242F063B0();
  if ((a4 & 1) == 0)
  {
    MEMORY[0x245D279A0](a3);
  }

  sub_242F04DD0();
  v8 = sub_242F063E0();

  return sub_242CE5F58(a1, a2, a3, a4 & 1, v8);
}

unint64_t sub_242CE548C(uint64_t a1)
{
  sub_242F04F30();
  sub_242F06390();
  sub_242F04DD0();
  v2 = sub_242F063E0();

  return sub_242CE6048(a1, v2);
}

unint64_t sub_242CE551C(double a1)
{
  v2 = sub_242F06380();

  return sub_242CE614C(v2, a1);
}

unint64_t sub_242CE5568(uint64_t a1)
{
  sub_242F06390();
  sub_242F03720();
  sub_242CE8250(&qword_27ECF2258, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_242F04D90();
  v2 = sub_242F063E0();

  return sub_242CE61B4(a1, v2);
}

unint64_t sub_242CE561C(char a1)
{
  sub_242F06390();
  sub_242F04DD0();

  v2 = sub_242F063E0();

  return sub_242CE6368(a1 & 1, v2);
}

unint64_t sub_242CE56B0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = v4;
    v11 = ~v6;
    while (1)
    {
      v12 = *(v8 + 48) + 24 * v7;
      v13 = *v12;
      v14 = *(v12 + 16);
      if (*(v12 + 8) == 1)
      {
        if (v13 <= 2)
        {
          if (v13)
          {
            v16 = 0x7373416465657073;
            v15 = 0xEB00000000747369;
            if (v13 != 1)
            {
              v16 = 0xD000000000000015;
              v15 = 0x8000000242F58D00;
            }
          }

          else
          {
            v16 = 0xD000000000000013;
            v15 = 0x8000000242F58D20;
          }
        }

        else if (v13 > 4)
        {
          if (v13 == 5)
          {
            v15 = 0xE700000000000000;
            v16 = 0x656E696C646572;
          }

          else
          {
            v16 = 0xD000000000000019;
            v15 = 0x8000000242F58CE0;
          }
        }

        else if (v13 == 3)
        {
          v15 = 0xE800000000000000;
          v16 = 0x6574617453776F6CLL;
        }

        else
        {
          v16 = 0x6C61636974697263;
          v15 = 0xED00006574617453;
        }
      }

      else
      {
        v16 = sub_242F05F60();
        v15 = v17;
      }

      if (a2)
      {
        if (a1 <= 2)
        {
          if (a1)
          {
            v19 = 0x7373416465657073;
            v18 = 0xEB00000000747369;
            if (a1 != 1)
            {
              v19 = 0xD000000000000015;
              v18 = 0x8000000242F58D00;
            }
          }

          else
          {
            v19 = 0xD000000000000013;
            v18 = 0x8000000242F58D20;
          }
        }

        else if (a1 > 4)
        {
          if (a1 == 5)
          {
            v18 = 0xE700000000000000;
            v19 = 0x656E696C646572;
          }

          else
          {
            v19 = 0xD000000000000019;
            v18 = 0x8000000242F58CE0;
          }
        }

        else if (a1 == 3)
        {
          v18 = 0xE800000000000000;
          v19 = 0x6574617453776F6CLL;
        }

        else
        {
          v19 = 0x6C61636974697263;
          v18 = 0xED00006574617453;
        }
      }

      else
      {
        v19 = sub_242F05F60();
        v18 = v20;
      }

      if (v16 == v19 && v15 == v18)
      {
        break;
      }

      v22 = sub_242F06110();

      if (v22)
      {
        goto LABEL_4;
      }

LABEL_5:
      v7 = (v7 + 1) & v11;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        return v7;
      }
    }

LABEL_4:
    if (v14 == a3)
    {
      return v7;
    }

    goto LABEL_5;
  }

  return v7;
}

unint64_t sub_242CE5A04(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_242F06110())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_242CE5ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(v4 + 48) + 24 * v6;
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      sub_242C7CE5C(*v8, v10, v11);
      v12 = Theme.ColorID.rawValue.getter();
      v14 = v13;
      if (v12 == Theme.ColorID.rawValue.getter() && v14 == v15)
      {
        break;
      }

      v16 = sub_242F06110();
      sub_242C7CEB0(v9, v10, v11);

      if ((v16 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v6;
    }

    sub_242C7CEB0(v9, v10, v11);
  }

  return v6;
}

unint64_t sub_242CE5C34(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = v2;
  memcpy(__dst, v4, 0x3B0uLL);
  v5 = -1 << *(v1 + 32);
  v6 = v3 & ~v5;
  if ((*(v1 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v1 + 48) + 944 * v6;
      memcpy(v12, v8, sizeof(v12));
      memcpy(__src, v8, sizeof(__src));
      sub_242C7F7E0(v12, v10);
      LOBYTE(v8) = _s14CarPlayAssetUI8ColorSetV2eeoiySbAC_ACtFZ_0(__src, __dst);
      memcpy(v13, __src, sizeof(v13));
      sub_242C7C7BC(v13);
      if (v8)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v1 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_242CE5D54(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_242CE5DC0(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_242F05C40();
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4, v6);
      v18 = sub_242F04EE0();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_242CE5F58(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = v14 + 32 * v8;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      v18 = *v15 == a1 && *(v15 + 8) == a2;
      if (v18 || (sub_242F06110() & 1) != 0)
      {
        if (v17)
        {
          if (a4)
          {
            return v8;
          }
        }

        else if ((a4 & 1) == 0 && v16 == a3)
        {
          return v8;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_242CE6048(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_242F04F30();
      v8 = v7;
      if (v6 == sub_242F04F30() && v8 == v9)
      {
        break;
      }

      v11 = sub_242F06110();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_242CE614C(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_242CE61B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930) - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = -1 << *(v3 + 32);
  v10 = a2 & ~v9;
  if ((*(v3 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_242CA321C(*(v3 + 48) + v12 * v10, v8, &qword_27ECFC780, &qword_242F17930);
      sub_242F03720();
      sub_242CE8250(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v13 = sub_242F04EE0();
      sub_242C6D138(v8, &qword_27ECFC780, &qword_242F17930);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v3 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_242CE6368(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x32656E6F7ALL;
    }

    else
    {
      v6 = 0x31656E6F7ALL;
    }

    while (1)
    {
      v7 = *(*(v2 + 48) + v4) ? 0x32656E6F7ALL : 0x31656E6F7ALL;
      if (v7 == v6)
      {
        break;
      }

      v8 = sub_242F06110();
      swift_bridgeObjectRelease_n();
      if ((v8 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_242CE6468(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2208, &qword_242F13B08);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2210, &qword_242F13B10);
    v7 = sub_242F05CB0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_242CA321C(v9, v5, &qword_27ECF2208, &qword_242F13B08);
      result = sub_242CE5370(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_242F05C40();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_242CD9C00(&v5[v8], (v7[7] + 32 * v13));
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242CE6654(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF21D8, &qword_242F13AE0);
    v3 = sub_242F05CB0();

    for (i = (a1 + 64); ; i += 3)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 8);
      v15 = *i;

      swift_unknownObjectRetain();
      result = sub_242CE53D4(v5, v6, v7, v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 32 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v11 + 24) = v8;
      *(v3[7] + 16 * result) = v15;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242CE678C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF22B0, &qword_242F13B98);
    v3 = sub_242F05CB0();
    v4 = a1 + 32;

    while (1)
    {
      sub_242CA321C(v4, &v13, &qword_27ECF21D0, &qword_242F13AD8);
      v5 = v13;
      v6 = v14;
      result = sub_242CE51B4(v13, v14, sub_242CE5A04);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_242CD9C00(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242CE68D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF22C0, &qword_242F13BA8);
    v3 = sub_242F05CB0();
    v4 = a1 + 32;

    while (1)
    {
      sub_242CA321C(v4, &v13, &qword_27ECF22C8, &unk_242F13BB0);
      v5 = v13;
      v6 = v14;
      result = sub_242CE51B4(v13, v14, sub_242CE5A04);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_242C65564(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242CE6A18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2238, &qword_242F13B38);
    v3 = sub_242F05CB0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_242CE548C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242CE6B58(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_242F05CB0();
    v10 = a1 + 32;

    while (1)
    {
      sub_242CA321C(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_242CE548C(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_242CD9C00(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_242CE6C84(double *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF22A8, &qword_242F13B90);
  v3 = sub_242F05CB0();
  v4 = a1[4];
  v5 = *(a1 + 5);
  v6 = sub_242CE551C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_242CE551C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_242CE6D94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0270, &qword_242F0A750);
  v3 = sub_242F05CB0();
  v4 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 56);
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  result = sub_242CE52B8(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v9 = (a1 + 136);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v10 = v3[7] + 48 * result;
    *v10 = v15;
    *(v10 + 16) = v16;
    *(v10 + 32) = v5;
    *(v10 + 40) = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_242C7F6C4(v15, *(&v15 + 1), v16, *(&v16 + 1), v5);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v9 - 6);
    v15 = *(v9 - 5);
    v16 = *(v9 - 3);
    v5 = *(v9 - 8);
    v6 = *v9;
    result = sub_242CE52B8(v4);
    v9 += 7;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_242CE6EE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF21E0, &qword_242F13AE8);
    v3 = sub_242F05CB0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;
      sub_242C7CE5C(v5, v6, *(i - 8));

      result = sub_242CE50F4(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242CE7008(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2248, &qword_242F30000);
  v3 = sub_242F05CB0();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  result = sub_242CE52B8(v5);
  if (v9)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v10 = (a1 + 88);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v5;
    v11 = v3[7] + 24 * result;
    *v11 = v4;
    *(v11 + 8) = v6;
    *(v11 + 16) = v7;
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v3[2] = v14;
    sub_242C7CE5C(v4, v6, v7);
    if (!--v1)
    {
      return v3;
    }

    v5 = *(v10 - 3);
    v4 = *(v10 - 2);
    v6 = *(v10 - 1);
    v7 = *v10;
    result = sub_242CE52B8(v5);
    v10 += 32;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_242CE7128(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF22A0, &qword_242F13B88);
  v3 = sub_242F05CB0();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_242CE52B8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_242CE52B8(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_242CE7230(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2290, &qword_242F13B78);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2298, &qword_242F13B80);
    v7 = sub_242F05CB0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_242CA321C(v9, v5, &qword_27ECF2290, &qword_242F13B78);
      result = sub_242CE5568(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
      sub_242CE8298(v5, v14 + *(*(v15 - 8) + 72) * v13);
      v16 = v7[7];
      v17 = type metadata accessor for RequestContentModel(0);
      result = sub_242CE8308(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for RequestContentModel);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242CE7440(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2288, &qword_242F13B70);
    v3 = sub_242F05CB0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_242CE561C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242CE752C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2278, &qword_242F13B60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2280, &qword_242F13B68);
    v7 = sub_242F05CB0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_242CA321C(v9, v5, &qword_27ECF2278, &qword_242F13B60);
      result = sub_242CE5568(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
      sub_242CE8298(v5, v14 + *(*(v15 - 8) + 72) * v13);
      v16 = v7[7];
      v17 = type metadata accessor for ClusterTransitionCoordinator.ComponentTransition(0);
      result = sub_242CE8308(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242CE773C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2268, &qword_242F13B50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2270, &qword_242F13B58);
    v7 = sub_242F05CB0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_242CA321C(v9, v5, &qword_27ECF2268, &qword_242F13B50);
      result = sub_242CE5568(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
      result = sub_242CE8298(v5, v14 + *(*(v15 - 8) + 72) * v13);
      *(v7[7] + v13) = v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242CE7918(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2250, &qword_242F13B48);
    v3 = sub_242F05CB0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_242CE51B4(v5, v6, sub_242CE5A04);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242CE7A40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2200, &qword_242F13B00);
    v3 = sub_242F05CB0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_242CE51B4(v5, v6, sub_242CE5A04);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_242CE7B58(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2240, &qword_242F13B40);
  v3 = sub_242F05CB0();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_242CE52B8(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_242CE52B8(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_242CE7C6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF21F8, &qword_242F17F50);
    v3 = sub_242F05CB0();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 8);
      v10 = *i;

      result = sub_242CE51B4(v5, v6, sub_242CE5A04);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = v3[7] + 32 * result;
      *v14 = v8;
      *(v14 + 8) = v7;
      *(v14 + 16) = v9;
      *(v14 + 24) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242CE7DA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF02A0, &qword_242F0A778);
    v3 = sub_242F05CB0();

    for (i = a1 + 48; ; i += 72)
    {
      v20 = v1;
      v5 = *(i - 16);
      v6 = *(i - 8);
      v7 = *i;
      v8 = *(i + 8);
      v9 = *(i + 16);
      v10 = *(i + 24);
      v11 = *(i + 32);
      v12 = *(i + 40);
      v21 = *(i + 48);

      sub_242C7F6C4(v7, v8, v9, v10, v11);
      result = sub_242CE51B4(v5, v6, sub_242CE5A04);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = v3[7] + 56 * result;
      *v16 = v7;
      *(v16 + 8) = v8;
      *(v16 + 16) = v9;
      *(v16 + 24) = v10;
      *(v16 + 32) = v11;
      *(v16 + 40) = v12;
      *(v16 + 48) = v21;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242CE7F18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF21F0, &qword_242F13AF8);
    v3 = sub_242F05CB0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_242CE52FC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242CE8030(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_242F05CB0();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_242CE51B4(v7, v8, sub_242CE5A04);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242CE8140(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF21E8, &qword_242F13AF0);
    v3 = sub_242F05CB0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_242CE51B4(v5, v6, sub_242CE5A04);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_242CE8250(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_242CE8298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_242CE8308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_242CE8374(void (*a1)(void *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v43 = MEMORY[0x277D84F90];
    sub_242E3BDF0(0, v5, 0);
    v6 = v43;
    v8 = (a3 + 80);
    while (1)
    {
      v9 = *(v8 - 5);
      v10 = *(v8 - 4);
      v11 = *(v8 - 3);
      v12 = *(v8 - 4);
      v13 = *(v8 - 1);
      v14 = *v8;
      v34[0] = *(v8 - 6);
      v34[1] = v9;
      v34[2] = v10;
      v34[3] = v11;
      v35 = v12;
      v36 = v13;
      v37 = v14;
      v15 = v14;

      a1(v38, v34, &v33);
      if (v4)
      {
        break;
      }

      v16 = v37;

      v18 = v38[0];
      v17 = v38[1];
      v20 = v38[2];
      v19 = v39;
      v21 = v40;
      v22 = v41;
      v23 = v42;
      v43 = v6;
      v25 = *(v6 + 16);
      v24 = *(v6 + 24);
      if (v25 >= v24 >> 1)
      {
        v30 = v42;
        v31 = v39;
        v27 = v40;
        sub_242E3BDF0((v24 > 1), v25 + 1, 1);
        v23 = v30;
        v19 = v31;
        v21 = v27;
        v6 = v43;
      }

      v8 += 7;
      *(v6 + 16) = v25 + 1;
      v26 = v6 + 56 * v25;
      *(v26 + 32) = v18;
      *(v26 + 40) = v17;
      *(v26 + 48) = v20;
      *(v26 + 56) = v19;
      *(v26 + 64) = v21;
      *(v26 + 72) = v22;
      *(v26 + 80) = v23;
      --v5;
      v4 = 0;
      if (!v5)
      {
        return v6;
      }
    }

    v28 = v37;
  }

  return v6;
}

uint64_t sub_242CE8538(uint64_t a1, uint64_t a2)
{
  v25 = type metadata accessor for Component(0);
  v5 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v23[1] = v2;
    v26 = MEMORY[0x277D84F90];
    sub_242E3BE90(0, v8, 0);
    v9 = v26;
    v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v11 = a1 + v10;
    v12 = a2 + *(type metadata accessor for Zone(0) + 24);
    v13 = *(v5 + 72);
    v24 = v10;
    do
    {
      sub_242CF4224(v11, v7, type metadata accessor for Component);
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      v16 = &v7[*(v25 + 28)];
      v17 = *v16;
      v18 = v16[1];
      *v16 = v14;
      v16[1] = v15;
      if (v14 != v17 || v15 != v18)
      {
        sub_242DD3D14(v14 / v17, v15 / v18);
        v10 = v24;
      }

      v26 = v9;
      v21 = *(v9 + 16);
      v20 = *(v9 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_242E3BE90((v20 > 1), v21 + 1, 1);
        v10 = v24;
        v9 = v26;
      }

      *(v9 + 16) = v21 + 1;
      sub_242CF6A1C(v7, v9 + v10 + v21 * v13, type metadata accessor for Component);
      v11 += v13;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_242CE8780(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v25 = a6;
  v26 = a1;
  v8 = v6;
  v27 = a2;
  v10 = a4(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v22 - v13;
  v15 = *(a3 + 16);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
    return v16;
  }

  v28 = MEMORY[0x277D84F90];
  v23 = a5;
  (a5)(0, v15, 0, v12);
  v16 = v28;
  v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = a3 + v24;
  v18 = *(v11 + 72);
  while (1)
  {
    v26(v17);
    if (v8)
    {
      break;
    }

    v8 = 0;
    v28 = v16;
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    if (v20 >= v19 >> 1)
    {
      v23(v19 > 1, v20 + 1, 1);
      v16 = v28;
    }

    *(v16 + 16) = v20 + 1;
    sub_242CF6A1C(v14, v16 + v24 + v20 * v18, v25);
    v17 += v18;
    if (!--v15)
    {
      return v16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242CE892C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v6 = type metadata accessor for Component(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v28 = MEMORY[0x277D84F90];
  sub_242E3BE90(0, v10, 0);
  v11 = v28;
  v12 = (a3 + 64);
  while (1)
  {
    v13 = *(v12 - 3);
    v14 = *(v12 - 2);
    v15 = *(v12 - 1);
    v16 = *v12;
    v23 = *(v12 - 4);
    v24 = v13;
    v25 = v14;
    v26 = v15;
    v27 = v16;
    sub_242CF6A84(v23, v13, v14, v15, v16);
    v21(&v23);
    if (v4)
    {
      break;
    }

    v4 = 0;
    sub_242CF6AD8(v23, v24, v25, v26, v27);
    v28 = v11;
    v18 = *(v11 + 16);
    v17 = *(v11 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_242E3BE90((v17 > 1), v18 + 1, 1);
      v11 = v28;
    }

    v12 += 40;
    *(v11 + 16) = v18 + 1;
    sub_242CF6A1C(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, type metadata accessor for Component);
    if (!--v10)
    {
      return v11;
    }
  }

  sub_242CF6AD8(v23, v24, v25, v26, v27);

  __break(1u);
  return result;
}

uint64_t sub_242CE8C2C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t a7@<X8>)
{
  v29 = a6;
  v13 = a3(0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v25 - v17;
  v19 = *(a2 + 16);
  if (v19)
  {
    v27 = v14;
    v28 = a7;
    v20 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v26 = v15;
    v21 = *(v15 + 72);
    while (1)
    {
      sub_242CF4224(v20, v18, a4);
      v22 = a1(v18);
      if (v7)
      {
        return sub_242CF6C00(v18, a5);
      }

      if (v22)
      {
        break;
      }

      sub_242CF6C00(v18, a5);
      v20 += v21;
      if (!--v19)
      {
        v23 = 1;
        a7 = v28;
        goto LABEL_10;
      }
    }

    a7 = v28;
    sub_242CF6A1C(v18, v28, v29);
    v23 = 0;
LABEL_10:
    v15 = v26;
    v14 = v27;
  }

  else
  {
    v23 = 1;
  }

  return (*(v15 + 56))(a7, v23, 1, v14, v16);
}

double static Zone.ZoneType.Single.default.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 2;
  return result;
}

double sub_242CE8DE8@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 2;
  return result;
}

uint64_t Zone.ZoneType.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 80);
  if (*(v1 + 96))
  {
    if (*(v1 + 96) != 1)
    {
      return MEMORY[0x245D279A0](0);
    }

    v30 = *(v1 + 71);
    v28 = *(v1 + 69);
    v26 = *(v1 + 65);
    MEMORY[0x245D279A0](2);
    sub_242F063B0();
    if (v3)
    {
      sub_242C7B010(a1, v3);
    }

    if (v6 == 0xFF)
    {
      MEMORY[0x245D279A0](0);
    }

    else
    {
      MEMORY[0x245D279A0](1);
      if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v13 = v4;
      }

      else
      {
        v13 = 0;
      }

      MEMORY[0x245D279D0](v13);
      CarouselConfiguration.PageControlPosition.hash(into:)();
    }

    v14 = 0.0;
    if (v7 != 0.0)
    {
      v14 = v7;
    }

    MEMORY[0x245D279D0](*&v14);
    sub_242F063B0();
    if ((v10 & 1) == 0)
    {
      v15 = v28 | (v30 << 16);
      v16 = v26;
LABEL_32:
      v20 = v16 | (v15 << 32);
      v21 = v20 & 0xFFFFFFFFFFFFFFLL;
      v22 = v9 | (v20 << 8);
      MEMORY[0x245D279A0](0);
      if (v21 & 0x7FF00000000000 | v22 & 0xFFFFFFFFFFFFFLL)
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      MEMORY[0x245D279D0](v23);
      goto LABEL_36;
    }
  }

  else
  {
    v25 = *(v1 + 77);
    v27 = *(v1 + 79);
    v29 = *(v1 + 73);
    v31 = *(v1 + 80);
    v11 = *(v1 + 88);
    MEMORY[0x245D279A0](1);
    v9 = v10;
    sub_242F063B0();
    if (v3)
    {
      sub_242C7B010(a1, v3);
    }

    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v17 = v4;
    }

    else
    {
      v17 = 0;
    }

    MEMORY[0x245D279D0](v17);
    if (LOBYTE(v7) == 0xFF)
    {
      MEMORY[0x245D279A0](0);
    }

    else
    {
      MEMORY[0x245D279A0](1);
      if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v18 = v5;
      }

      else
      {
        v18 = 0;
      }

      MEMORY[0x245D279D0](v18);
      CarouselConfiguration.PageControlPosition.hash(into:)();
    }

    v19 = 0.0;
    if (v8 != 0.0)
    {
      v19 = v8;
    }

    MEMORY[0x245D279D0](*&v19);
    sub_242F063B0();
    if ((v31 & 1) == 0)
    {
      v15 = v25 | (v27 << 16);
      v16 = v29;
      goto LABEL_32;
    }
  }

  MEMORY[0x245D279A0](1);
LABEL_36:
  v24 = 0.0;
  if (v11 != 0.0)
  {
    v24 = v11;
  }

  return MEMORY[0x245D279D0](*&v24);
}

uint64_t Zone.ZoneType.hashValue.getter()
{
  sub_242F06390();
  Zone.ZoneType.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242CE910C()
{
  sub_242F06390();
  Zone.ZoneType.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242CE9150(uint64_t a1)
{
  sub_242F06390();
  Zone.ZoneType.hash(into:)(v2);
  return sub_242F063E0();
}

double Zone.ZoneShape.cornerRadius.getter()
{
  result = *v0;
  if (*(v0 + 8))
  {
    return 0.0;
  }

  return result;
}

BOOL static Zone.ZoneShape.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_242CE91EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CF3A1C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CE9228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CF3A1C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242CE9264()
{
  if (*v0)
  {
    return 0x75676E6174636572;
  }

  else
  {
    return 0x72616C7563726963;
  }
}

uint64_t sub_242CE92A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72616C7563726963 && a2 == 0xE800000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x75676E6174636572 && a2 == 0xEB0000000072616CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242CE9388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CF3974(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CE93C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CF3974(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242CE9420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242CE94AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CF39C8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CE94E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CF39C8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Zone.ZoneShape.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF22D0, &qword_242F13BD0);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v29 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF22D8, &qword_242F13BD8);
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF22E0, &qword_242F13BE0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = *v1;
  v13 = *(v1 + 8);
  v14 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CF3974(v14, v15, v16);
  v17 = sub_242F064C0();
  if (v13)
  {
    v32 = 0;
    sub_242CF3A1C(v17, v18, v19);
    sub_242F05E40();
    (*(v27 + 8))(v7, v28);
  }

  else
  {
    v34 = 1;
    sub_242CF39C8(v17, v18, v19);
    v21 = v29;
    v22 = sub_242F05E40();
    v33 = v12;
    sub_242C7DB7C(v22, v23, v24);
    v25 = v31;
    sub_242F05F20();
    (*(v30 + 8))(v21, v25);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t Zone.ZoneShape.hash(into:)()
{
  if (v0[1])
  {
    return MEMORY[0x245D279A0](0);
  }

  v2 = *v0;
  MEMORY[0x245D279A0](1);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x245D279D0](v3);
}

uint64_t Zone.ZoneShape.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_242F06390();
  if (v2)
  {
    MEMORY[0x245D279A0](0);
  }

  else
  {
    MEMORY[0x245D279A0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x245D279D0](v3);
  }

  return sub_242F063E0();
}

uint64_t Zone.ZoneShape.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2300, &qword_242F13BE8);
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v37[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2308, &qword_242F13BF0);
  v41 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v37[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2310, &qword_242F13BF8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37[-v12];
  v14 = a1[3];
  v44 = a1;
  v15 = __swift_project_boxed_opaque_existential_2Tm(a1, v14);
  sub_242CF3974(v15, v16, v17);
  v18 = v43;
  sub_242F06480();
  if (!v18)
  {
    v43 = v11;
    v20 = v41;
    v19 = v42;
    v21 = sub_242F05E10();
    v22 = (2 * *(v21 + 16)) | 1;
    v45 = v21;
    v46 = v21 + 32;
    v47 = 0;
    v48 = v22;
    v23 = sub_242C7FBE4();
    v26 = v13;
    if (v23 == 2 || v47 != v48 >> 1)
    {
      v33 = sub_242F05B10();
      swift_allocError();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10, &qword_242F095A0);
      *v35 = &type metadata for Zone.ZoneShape;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
      swift_willThrow();
      (*(v43 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = v23;
      if (v23)
      {
        LOBYTE(v49) = 1;
        sub_242CF39C8(v23, v24, v25);
        v28 = v19;
        v27 = sub_242F05D10();
        sub_242C7DBD0(v27, v29, v30);
        v31 = v39;
        sub_242F05E00();
        (*(v40 + 8))(v6, v31);
        (*(v43 + 8))(v26, v10);
        swift_unknownObjectRelease();
        v32 = v49;
      }

      else
      {
        LOBYTE(v49) = 0;
        sub_242CF3A1C(v23, v24, v25);
        sub_242F05D10();
        v28 = v19;
        (*(v20 + 8))(v9, v7);
        (*(v43 + 8))(v26, v10);
        swift_unknownObjectRelease();
        v32 = 0;
      }

      *v28 = v32;
      *(v28 + 8) = (v38 & 1) == 0;
    }
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v44);
}

BOOL sub_242CE9DCC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_242CE9E0C()
{
  if (v0[1])
  {
    return MEMORY[0x245D279A0](0);
  }

  v2 = *v0;
  MEMORY[0x245D279A0](1);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x245D279D0](v3);
}

uint64_t sub_242CE9E5C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_242F06390();
  if (v3)
  {
    MEMORY[0x245D279A0](0);
  }

  else
  {
    MEMORY[0x245D279A0](1);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x245D279D0](v4);
  }

  return sub_242F063E0();
}

CarPlayAssetUI::Zone::ZoneRegion_optional __swiftcall Zone.ZoneRegion.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242F05CD0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t Zone.ZoneRegion.rawValue.getter()
{
  if (*v0)
  {
    return 0x32656E6F7ALL;
  }

  else
  {
    return 0x31656E6F7ALL;
  }
}

uint64_t sub_242CE9F58(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x32656E6F7ALL;
  }

  else
  {
    v2 = 0x31656E6F7ALL;
  }

  if (*a2)
  {
    v3 = 0x32656E6F7ALL;
  }

  else
  {
    v3 = 0x31656E6F7ALL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_242F06110();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

void sub_242CE9FE4(uint64_t *a1@<X8>)
{
  v2 = 0x31656E6F7ALL;
  if (*v1)
  {
    v2 = 0x32656E6F7ALL;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t sub_242CEA0C4()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242CEA134(uint64_t a1)
{
  sub_242F04DD0();
}

uint64_t sub_242CEA188(uint64_t a1)
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t Zone.displayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for Zone(0) + 20));

  return v1;
}

uint64_t Zone.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Zone(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_242CEA320(float64x2_t *a1, uint64_t a2)
{
  result = type metadata accessor for Zone(0);
  v5 = (a2 + *(result + 24));
  v6 = a1[1];
  v7 = v5[1];
  *v5 = *a1;
  v5[1] = v6;
  *&v6.f64[0] = vmovn_s64(vceqq_f64(v6, v7));
  if ((LODWORD(v6.f64[0]) & HIDWORD(v6.f64[0]) & 1) == 0)
  {
    v8 = *(result + 28);

    v10 = sub_242CE8538(v9, a2);
    result = swift_bridgeObjectRelease_n();
    *(a2 + v8) = v10;
  }

  return result;
}

uint64_t Zone.frame.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for Zone(0);
  v10 = (v4 + *(result + 24));
  v11 = v10[2];
  v12 = v10[3];
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  if (v11 != a3 || v12 != a4)
  {
    v14 = *(result + 28);

    v16 = sub_242CE8538(v15, v4);
    result = swift_bridgeObjectRelease_n();
    *(v4 + v14) = v16;
  }

  return result;
}

void (*Zone.frame.modify(uint64_t *a1))(double **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = type metadata accessor for Zone(0);
  *(v4 + 40) = v5;
  v6 = *(v5 + 24);
  *(v4 + 64) = v6;
  v7 = (v1 + v6);
  v8 = *(v7 + 2);
  v9 = *v7;
  *(v4 + 48) = v8;
  v10 = *(v7 + 3);
  *(v4 + 56) = v10;
  *v4 = v9;
  *(v4 + 16) = v8;
  *(v4 + 24) = v10;
  return sub_242CEA500;
}

void sub_242CEA500(double **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[6];
  v3 = (*a1)[7];
  v5 = *(*a1 + 4) + *(*a1 + 16);
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  *v5 = **a1;
  *(v5 + 16) = v6;
  *(v5 + 24) = v7;
  v8 = v6 == v4;
  if (v7 != v3)
  {
    v8 = 0;
  }

  if ((a2 & 1) == 0)
  {
    if (v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!v8)
  {
LABEL_7:
    v9 = *(v2 + 4);
    v10 = *(*(v2 + 5) + 28);

    v12 = sub_242CE8538(v11, v9);
    swift_bridgeObjectRelease_n();
    *(v9 + v10) = v12;
  }

LABEL_8:

  free(v2);
}

uint64_t Zone.components.getter()
{
  type metadata accessor for Zone(0);
}

uint64_t Zone.components.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Zone(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Zone.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Zone(0) + 32);
  v5 = *(v3 + 80);
  v15 = *(v3 + 64);
  v4 = v15;
  v16 = v5;
  v17 = *(v3 + 96);
  v6 = v17;
  v7 = *(v3 + 48);
  v13 = *(v3 + 32);
  v8 = v13;
  v14 = v7;
  v9 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v9;
  *a1 = v12[0];
  *(a1 + 16) = v9;
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  *(a1 + 32) = v8;
  *(a1 + 48) = v7;
  *(a1 + 96) = v6;
  return sub_242CF3ABC(v12, v11);
}

__n128 Zone.type.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Zone(0) + 32);
  v4 = *(v3 + 80);
  v10[4] = *(v3 + 64);
  v10[5] = v4;
  v11 = *(v3 + 96);
  v5 = *(v3 + 48);
  v10[2] = *(v3 + 32);
  v10[3] = v5;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v10[1] = v6;
  sub_242CF3AF4(v10);
  v7 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v7;
  *(v3 + 96) = *(a1 + 96);
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  result = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = result;
  return result;
}

uint64_t Zone.zoneShape.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for Zone(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 9) = v4;
  return result;
}

uint64_t Zone.zoneShape.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for Zone(0);
  v6 = v1 + *(result + 36);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t Zone.zoneRegion.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Zone(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t Zone.zoneRegion.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Zone(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

__n128 Zone.platterConfiguration.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for Zone(0) + 44));
  *a1 = result;
  return result;
}

uint64_t Zone.platterConfiguration.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = type metadata accessor for Zone(0);
  v5 = (v1 + *(result + 44));
  *v5 = v2;
  v5[1] = v3;
  return result;
}

uint64_t Zone.verifierIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for Zone(0) + 48));

  return v1;
}

uint64_t Zone.verifierIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Zone(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Zone.overrides.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for Zone(0) + 52));
}

uint64_t Zone.overrides.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for Zone(0) + 52);

  *(v1 + v3) = v2;
  return result;
}

uint64_t Zone.init(id:displayName:frame:components:zoneType:zoneRegion:zoneShape:platterConfiguration:verifierIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, uint64_t a15)
{
  v97 = a3;
  v96 = a2;
  v95 = a1;
  v25 = type metadata accessor for Component(0);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a5[5];
  v105 = a5[4];
  v106 = v29;
  v107 = *(a5 + 96);
  v30 = a5[1];
  v101 = *a5;
  v102 = v30;
  v31 = a5[3];
  v103 = a5[2];
  v104 = v31;
  v32 = *a6;
  v94 = *a7;
  v93 = *(a7 + 8);
  v33 = *(a7 + 9);
  v34 = a8[1];
  v92 = *a8;
  v91 = v34;
  v35 = type metadata accessor for Zone(0);
  v36 = a9 + v35[9];
  *v36 = 0;
  v90 = v36;
  *(v36 + 8) = 256;
  v88 = v35[10];
  *(a9 + v88) = 2;
  v37 = (a9 + v35[11]);
  *v37 = xmmword_242F13BC0;
  v89 = v37;
  v37[2] = 2;
  v38 = (a9 + v35[12]);
  *v38 = 0;
  v38[1] = 0;
  v87 = v38;
  v86 = v35;
  *(a9 + v35[13]) = 0;
  v39 = *(a4 + 16);
  v40 = MEMORY[0x277D84F90];
  v81 = v39;
  v80 = v26;
  if (v39)
  {
    v82 = v33;
    v83 = v32;
    v84 = a9;
    v99 = MEMORY[0x277D84F90];
    sub_242E3BC70(0, v39, 0);
    v40 = v99;
    v41 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v85 = a4;
    v42 = a4 + v41;
    v43 = *(v26 + 72);
    do
    {
      sub_242CF4224(v42, v28, type metadata accessor for Component);
      v44 = &v28[*(v25 + 24)];
      v45 = *v44;
      v46 = *(v44 + 1);

      sub_242CF6C00(v28, type metadata accessor for Component);
      v99 = v40;
      v48 = *(v40 + 16);
      v47 = *(v40 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_242E3BC70((v47 > 1), v48 + 1, 1);
        v40 = v99;
      }

      *(v40 + 16) = v48 + 1;
      v49 = v40 + 16 * v48;
      *(v49 + 32) = v45;
      *(v49 + 40) = v46;
      v42 += v43;
      --v39;
    }

    while (v39);
    a4 = v85;
    a9 = v84;
    LOBYTE(v32) = v83;
    LOBYTE(v33) = v82;
  }

  v51 = sub_242C86440(v50);

  v52 = *(v51 + 16);

  v53 = *(v40 + 16);

  if (v52 == v53)
  {
    result = sub_242CF6B3C(v95, a9, &qword_27ECFC780, &qword_242F17930);
    v55 = v86;
    v56 = (a9 + v86[5]);
    v57 = v97;
    *v56 = v96;
    v56[1] = v57;
    v58 = (a9 + v55[6]);
    *v58 = a10;
    v58[1] = a11;
    v58[2] = a12;
    v58[3] = a13;
    *(a9 + v55[7]) = a4;
    v59 = a9 + v55[8];
    v60 = v106;
    *(v59 + 64) = v105;
    *(v59 + 80) = v60;
    *(v59 + 96) = v107;
    v61 = v102;
    *v59 = v101;
    *(v59 + 16) = v61;
    v62 = v104;
    *(v59 + 32) = v103;
    *(v59 + 48) = v62;
    *(a9 + v88) = v32;
    v63 = v90;
    *v90 = v94;
    *(v63 + 8) = v93;
    *(v63 + 9) = v33;
    v64 = v89;
    v65 = v91;
    *v89 = v92;
    v64[1] = v65;
    v66 = v87;
    *v87 = a14;
    v66[1] = a15;
  }

  else
  {
    v99 = 0;
    v100 = 0xE000000000000000;
    sub_242F05A80();

    v99 = 0xD000000000000022;
    v100 = 0x8000000242F59E50;
    v67 = MEMORY[0x277D84F90];
    if (v81)
    {
      v98 = MEMORY[0x277D84F90];
      v68 = v81;
      sub_242E3BC70(0, v81, 0);
      v67 = v98;
      v69 = a4 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
      v70 = *(v80 + 72);
      do
      {
        sub_242CF4224(v69, v28, type metadata accessor for Component);
        v72 = &v28[*(v25 + 24)];
        v74 = *v72;
        v73 = *(v72 + 1);

        sub_242CF6C00(v28, type metadata accessor for Component);
        v98 = v67;
        v76 = *(v67 + 16);
        v75 = *(v67 + 24);
        if (v76 >= v75 >> 1)
        {
          sub_242E3BC70((v75 > 1), v76 + 1, 1);
          v67 = v98;
        }

        *(v67 + 16) = v76 + 1;
        v71 = v67 + 16 * v76;
        *(v71 + 32) = v74;
        *(v71 + 40) = v73;
        v69 += v70;
        --v68;
      }

      while (v68);
    }

    v77 = MEMORY[0x245D26920](v67, MEMORY[0x277D837D0]);
    v79 = v78;

    MEMORY[0x245D26660](v77, v79);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

uint64_t Zone.updating(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v101 = type metadata accessor for Component(0);
  v85 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v78 - v9;
  v11 = type metadata accessor for Zone(0);
  v12 = *(a1 + v11[7]);
  v102[2] = v3;
  v13 = sub_242CE8780(sub_242CF3C2C, v102, v12, type metadata accessor for Component, sub_242E3BE90, type metadata accessor for Component);
  v99 = v10;
  sub_242CA321C(v3, v10, &qword_27ECFC780, &qword_242F17930);
  v14 = (v3 + v11[5]);
  v15 = *v14;
  v16 = v14[1];
  v17 = (a1 + v11[6]);
  v18 = *v17;
  v97 = v17[1];
  v98 = v18;
  v19 = (a1 + v11[8]);
  v112 = *(v19 + 96);
  v20 = v19[5];
  v110 = v19[4];
  v111 = v20;
  v21 = v19[3];
  v108 = v19[2];
  v109 = v21;
  v22 = v19[1];
  v106 = *v19;
  v107 = v22;
  v23 = v11[9];
  v24 = *(a1 + v11[10]);
  v96 = *(a1 + v23);
  v25 = *(a1 + v23 + 8);
  v94 = *(a1 + v23 + 9);
  v95 = v25;
  v26 = v11[12];
  v27 = (a1 + v11[11]);
  v28 = *v27;
  v92 = v27[1];
  v93 = v28;
  v29 = a1 + v26;
  v30 = *(a1 + v26);
  v31 = *(v29 + 8);
  v91 = v30;
  v32 = a2 + v23;
  *v32 = 0;
  v89 = v32;
  *(v32 + 8) = 256;
  v87 = v11[10];
  *(a2 + v87) = 2;
  v33 = (a2 + v11[11]);
  *v33 = xmmword_242F13BC0;
  v88 = v33;
  v33[2] = 2;
  v34 = (a2 + v11[12]);
  *v34 = 0;
  v34[1] = 0;
  v86 = v34;
  v100 = v11;
  *(a2 + v11[13]) = 0;
  v35 = *(v13 + 16);
  v79 = v35;
  v90 = v31;
  if (v35)
  {
    v80 = v24;
    v81 = v16;
    v82 = v15;
    v84 = a2;

    sub_242CF3ABC(&v106, &v104);
    v104 = MEMORY[0x277D84F90];

    sub_242E3BC70(0, v35, 0);
    v36 = v104;
    v37 = *(v85 + 80);
    v83 = v13;
    v38 = v13 + ((v37 + 32) & ~v37);
    v39 = *(v85 + 72);
    v40 = v35;
    do
    {
      sub_242CF4224(v38, v7, type metadata accessor for Component);
      v41 = &v7[*(v101 + 24)];
      v42 = *v41;
      v43 = *(v41 + 1);

      sub_242CF6C00(v7, type metadata accessor for Component);
      v104 = v36;
      v45 = *(v36 + 16);
      v44 = *(v36 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_242E3BC70((v44 > 1), v45 + 1, 1);
        v36 = v104;
      }

      *(v36 + 16) = v45 + 1;
      v46 = v36 + 16 * v45;
      *(v46 + 32) = v42;
      *(v46 + 40) = v43;
      v38 += v39;
      --v40;
    }

    while (v40);
    v13 = v83;
    a2 = v84;
    v16 = v81;
    v15 = v82;
    LOBYTE(v24) = v80;
  }

  else
  {

    sub_242CF3ABC(&v106, &v104);

    v36 = MEMORY[0x277D84F90];
  }

  v48 = sub_242C86440(v47);

  v49 = *(v48 + 16);

  v50 = *(v36 + 16);

  if (v49 == v50)
  {
    result = sub_242CF6B3C(v99, a2, &qword_27ECFC780, &qword_242F17930);
    v52 = v100;
    v53 = (a2 + v100[5]);
    *v53 = v15;
    v53[1] = v16;
    v54 = (a2 + v52[6]);
    v55 = v97;
    *v54 = v98;
    v54[1] = v55;
    *(a2 + v52[7]) = v13;
    v56 = a2 + v52[8];
    v57 = v111;
    *(v56 + 64) = v110;
    *(v56 + 80) = v57;
    *(v56 + 96) = v112;
    v58 = v107;
    *v56 = v106;
    *(v56 + 16) = v58;
    v59 = v109;
    *(v56 + 32) = v108;
    *(v56 + 48) = v59;
    *(a2 + v87) = v24;
    v60 = v88;
    v61 = v89;
    *v89 = v96;
    LOBYTE(v56) = v94;
    *(v61 + 8) = v95;
    *(v61 + 9) = v56;
    v62 = v92;
    *v60 = v93;
    v60[1] = v62;
    v63 = v90;
    v64 = v86;
    *v86 = v91;
    v64[1] = v63;
  }

  else
  {
    v104 = 0;
    v105 = 0xE000000000000000;
    sub_242F05A80();

    v104 = 0xD000000000000022;
    v105 = 0x8000000242F59E50;
    v65 = MEMORY[0x277D84F90];
    if (v79)
    {
      v103 = MEMORY[0x277D84F90];
      v66 = v79;
      sub_242E3BC70(0, v79, 0);
      v65 = v103;
      v67 = v13 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
      v68 = *(v85 + 72);
      do
      {
        sub_242CF4224(v67, v7, type metadata accessor for Component);
        v70 = &v7[*(v101 + 24)];
        v71 = *v70;
        v72 = *(v70 + 1);

        sub_242CF6C00(v7, type metadata accessor for Component);
        v103 = v65;
        v74 = *(v65 + 16);
        v73 = *(v65 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_242E3BC70((v73 > 1), v74 + 1, 1);
          v65 = v103;
        }

        *(v65 + 16) = v74 + 1;
        v69 = v65 + 16 * v74;
        *(v69 + 32) = v71;
        *(v69 + 40) = v72;
        v67 += v68;
        --v66;
      }

      while (v66);
    }

    v75 = MEMORY[0x245D26920](v65, MEMORY[0x277D837D0]);
    v77 = v76;

    MEMORY[0x245D26660](v75, v77);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

uint64_t sub_242CEB7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v5 = type metadata accessor for Component(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730, &qword_242F17940);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v17[-v13];
  v15 = *(a2 + *(type metadata accessor for Zone(0) + 28));
  v18 = a1;
  sub_242CE8C2C(sub_242CF6CFC, v15, type metadata accessor for Component, type metadata accessor for Component, type metadata accessor for Component, type metadata accessor for Component, v14);
  sub_242CA321C(v14, v11, &qword_27ECF2730, &qword_242F17940);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_242C6D138(v14, &qword_27ECF2730, &qword_242F17940);
    sub_242C6D138(v11, &qword_27ECF2730, &qword_242F17940);
    return sub_242CF4224(a1, v19, type metadata accessor for Component);
  }

  else
  {
    Component.updatingWithTemplate(_:)(a1, v8);
    sub_242C6D138(v14, &qword_27ECF2730, &qword_242F17940);
    sub_242CF6C00(v11, type metadata accessor for Component);
    return sub_242CF6A1C(v8, v19, type metadata accessor for Component);
  }
}

unint64_t sub_242CEBA6C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000014;
    v6 = 0xD000000000000012;
    if (a1 != 8)
    {
      v6 = 0x656469727265766FLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x70616853656E6F7ALL;
    if (a1 != 5)
    {
      v7 = 0x69676552656E6F7ALL;
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
    v1 = 25705;
    v2 = 0x656D617266;
    v3 = 0x6E656E6F706D6F63;
    if (a1 != 3)
    {
      v3 = 1701869940;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x4E79616C70736964;
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

uint64_t sub_242CEBBC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242CF64E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242CEBBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CF3C4C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CEBC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CF3C4C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Zone.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2318, &qword_242F13C10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CF3C4C(v9, v10, v11);
  sub_242F064C0();
  LOBYTE(v54) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  sub_242CF3E68(&qword_27ECF2328, &protocol conformance descriptor for <> TaggedValue<A, B>);
  sub_242F05F20();
  if (!v2)
  {
    v12 = type metadata accessor for Zone(0);
    LOBYTE(v54) = 1;
    sub_242F05EC0();
    v13 = (v3 + v12[6]);
    v14 = v13[1];
    v54 = *v13;
    v55 = v14;
    LOBYTE(v47) = 2;
    type metadata accessor for CGRect(0);
    sub_242CF6CB4(&qword_27ECF2330, type metadata accessor for CGRect, MEMORY[0x277CBF268]);
    sub_242F05F20();
    v62 = *(v3 + v12[7]);
    v61 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2338, &qword_242F13C18);
    sub_242CF3F3C(&qword_27ECF2340, &qword_27ECF2348, &protocol conformance descriptor for Component, MEMORY[0x277D83948]);
    sub_242F05F20();
    v15 = (v3 + v12[8]);
    v16 = v15[3];
    v17 = v15[5];
    v58 = v15[4];
    v59 = v17;
    v18 = v15[1];
    v54 = *v15;
    v55 = v18;
    v19 = v15[3];
    v21 = *v15;
    v20 = v15[1];
    v56 = v15[2];
    v57 = v19;
    v22 = v15[5];
    v51 = v58;
    v52 = v22;
    v47 = v21;
    v48 = v20;
    v60 = *(v15 + 96);
    v53 = *(v15 + 96);
    v49 = v56;
    v50 = v16;
    v46 = 4;
    v23 = sub_242CF3ABC(&v54, v44);
    sub_242CF3CA0(v23, v24, v25);
    sub_242F05F20();
    v44[4] = v51;
    v44[5] = v52;
    v45 = v53;
    v44[0] = v47;
    v44[1] = v48;
    v44[2] = v49;
    v44[3] = v50;
    v26 = sub_242CF3AF4(v44);
    v27 = (v3 + v12[9]);
    v28 = *v27;
    v29 = *(v27 + 8);
    LOBYTE(v27) = *(v27 + 9);
    v40 = v28;
    LOBYTE(v41) = v29;
    BYTE1(v41) = v27;
    v43 = 5;
    sub_242CF3CF4(v26, v30, v31);
    v32 = sub_242F05EB0();
    LOBYTE(v40) = *(v3 + v12[10]);
    v43 = 6;
    sub_242CF3D48(v32, v33, v34);
    sub_242F05EB0();
    v35 = (v3 + v12[11]);
    v37 = *v35;
    v36 = v35[1];
    v38 = v35[2];
    v40 = v37;
    v41 = v36;
    v42 = v38;
    v43 = 7;
    if ((qword_242F15390[byte_27ECF3A00] | v38) != 0xFFFFFFFFFFFFFFFFLL && v36 != 255)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2368, &qword_242F13C20);
      sub_242CF3D9C(&qword_27ECF2370, sub_242CF3E14, MEMORY[0x277D84F40]);
      sub_242F05F20();
    }

    LOBYTE(v40) = 8;
    sub_242F05E50();
    v40 = *(v3 + v12[13]);
    v43 = 9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2380, &qword_242F13C28);
    sub_242CF4128(&qword_27ECF2388, &protocol conformance descriptor for Overrides<A>);
    sub_242F05EB0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Zone.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  MEMORY[0x28223BE20](v58);
  v59 = (&v54 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2390, &unk_242F13C30);
  v57 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v54 - v5;
  v7 = type metadata accessor for Zone(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v9[v10[9]];
  *v11 = 0;
  *(v11 + 4) = 256;
  v12 = v10[10];
  v9[v12] = 2;
  v13 = &v9[v10[11]];
  *v13 = xmmword_242F13BC0;
  *(v13 + 2) = 2;
  v62 = v10[13];
  v63 = v9;
  *&v9[v62] = 0;
  v14 = a1[3];
  v60 = a1;
  v15 = __swift_project_boxed_opaque_existential_2Tm(a1, v14);
  sub_242CF3C4C(v15, v16, v17);
  v18 = v61;
  sub_242F06480();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v60);
  }

  else
  {
    v61 = v11;
    v55 = v12;
    v54 = v13;
    v19 = v57;
    LOBYTE(v66) = 0;
    sub_242CF3E68(&qword_27ECF2398, &protocol conformance descriptor for <> TaggedValue<A, B>);
    v20 = v59;
    sub_242F05E00();
    v22 = v63;
    sub_242CF6B3C(v20, v63, &qword_27ECFC780, &qword_242F17930);
    LOBYTE(v66) = 1;
    v23 = sub_242F05DA0();
    v24 = (v22 + v7[5]);
    *v24 = v23;
    v24[1] = v25;
    type metadata accessor for CGRect(0);
    LOBYTE(v64) = 2;
    sub_242CF6CB4(&qword_27ECF23A0, type metadata accessor for CGRect, MEMORY[0x277CBF280]);
    sub_242F05E00();
    v26 = (v22 + v7[6]);
    v27 = v67;
    *v26 = v66;
    v26[1] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2338, &qword_242F13C18);
    LOBYTE(v64) = 3;
    sub_242CF3F3C(&qword_27ECF23A8, &qword_27ECF23B0, &protocol conformance descriptor for Component, MEMORY[0x277D83978]);
    v28 = sub_242F05E00();
    v59 = v7;
    *(v22 + v7[7]) = v66;
    v74 = 4;
    sub_242CF3FD8(v28, v29, v30);
    v58 = 0;
    v31 = sub_242F05E00();
    v32 = v59;
    v33 = v22 + v59[8];
    v34 = v71;
    *(v33 + 64) = v70;
    *(v33 + 80) = v34;
    *(v33 + 96) = v72;
    v35 = v67;
    *v33 = v66;
    *(v33 + 16) = v35;
    v36 = v69;
    *(v33 + 32) = v68;
    *(v33 + 48) = v36;
    v73 = 5;
    sub_242CF402C(v31, v37, v38);
    v39 = sub_242F05D90();
    v40 = v65;
    v41 = BYTE1(v65);
    v42 = v61;
    *v61 = v64;
    *(v42 + 8) = v40;
    *(v42 + 9) = v41;
    v73 = 6;
    sub_242CF4080(v39, v43, v44);
    sub_242F05D90();
    *(v22 + v55) = v64;
    v73 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2368, &qword_242F13C20);
    sub_242CF3D9C(&qword_27ECF23D0, sub_242CF40D4, MEMORY[0x277D84F58]);
    sub_242F05D90();
    v61 = v4;
    v45 = v65;
    if (v65 == 254)
    {
      v46 = 0;
      v45 = 255;
    }

    else
    {
      v46 = v64;
    }

    v47 = v54;
    *v54 = v46;
    *(v47 + 1) = v45;
    *(v47 + 2) = 7;
    LOBYTE(v64) = 8;
    v48 = sub_242F05D30();
    v49 = (v22 + *(v32 + 12));
    *v49 = v48;
    v49[1] = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2380, &qword_242F13C28);
    v73 = 9;
    sub_242CF4128(&qword_27ECF23E0, &protocol conformance descriptor for Overrides<A>);
    sub_242F05D90();
    (*(v19 + 8))(v6, v61);
    v51 = v63;
    v52 = v64;
    v53 = v62;

    *(v51 + v53) = v52;
    sub_242CF4224(v51, v56, type metadata accessor for Zone);
    __swift_destroy_boxed_opaque_existential_2Tm(v60);
    return sub_242CF6C00(v51, type metadata accessor for Zone);
  }
}

uint64_t sub_242CECBD4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 52);

  *(v2 + v4) = v3;
  return result;
}

uint64_t Zone.componentIndex(with:)(uint64_t a1)
{
  v3 = *(v1 + *(type metadata accessor for Zone(0) + 28));
  v5[2] = a1;
  return sub_242CDAC68(sub_242CF4178, v5, v3);
}

uint64_t sub_242CECD54(uint64_t a1, uint64_t a2)
{
  sub_242F03720();
  sub_242CF6CB4(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  return sub_242F04EE0() & 1;
}

uint64_t Zone.primaryComponents.getter()
{
  v19 = type metadata accessor for Component(0);
  v1 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  result = type metadata accessor for Zone(0);
  v8 = *(v0 + *(result + 28));
  v18 = *(v8 + 16);
  if (v18)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v9 >= *(v8 + 16))
      {
        __break(1u);
        return result;
      }

      v11 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v12 = *(v1 + 72);
      sub_242CF4224(v8 + v11 + v12 * v9, v6, type metadata accessor for Component);
      if ((v6[*(v19 + 20)] & 1) == 0)
      {
        break;
      }

      v13 = sub_242F06110();

      if (v13)
      {
        goto LABEL_10;
      }

      result = sub_242CF6C00(v6, type metadata accessor for Component);
LABEL_4:
      if (v18 == ++v9)
      {
        return v10;
      }
    }

LABEL_10:
    sub_242CF6A1C(v6, v3, type metadata accessor for Component);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_242E3BE90(0, *(v10 + 16) + 1, 1);
      v10 = v20;
    }

    v16 = *(v10 + 16);
    v15 = *(v10 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_242E3BE90((v15 > 1), v16 + 1, 1);
      v10 = v20;
    }

    *(v10 + 16) = v16 + 1;
    result = sub_242CF6A1C(v3, v10 + v11 + v16 * v12, type metadata accessor for Component);
    goto LABEL_4;
  }

  return MEMORY[0x277D84F90];
}

uint64_t Zone.componentsByCarplayIdentifier.getter()
{
  v3[0] = *(v0 + *(type metadata accessor for Zone(0) + 28));
  v3[1] = sub_242CED12C;
  v3[2] = 0;
  v3[3] = sub_242CF33D8;
  v3[4] = 0;
  v3[5] = sub_242CF3448;
  v3[6] = 0;
  v2 = MEMORY[0x277D84F98];

  sub_242CF2908(v3, 1, &v2);
  return v2;
}

uint64_t sub_242CED12C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = *(a1 + *(type metadata accessor for Component(0) + 36));
  if (*(v7 + 16))
  {
    v8 = type metadata accessor for Slot(0);
    sub_242CA321C(v7 + *(v8 + 36) + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), v6, &qword_27ECF0B08, &unk_242F17EB0);
    v9 = type metadata accessor for Instrument(0);
    if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
    {
      sub_242C6D138(v6, &qword_27ECF0B08, &unk_242F17EB0);
    }

    else
    {
      memcpy(v19, &v6[*(v9 + 20)], sizeof(v19));
      sub_242CF6BA4(v19, &v18);
      sub_242CF6C00(v6, type metadata accessor for Instrument);
      memcpy(v20, v19, sizeof(v20));
      if (sub_242C9E788(v20) == 6)
      {
        v10 = sub_242C556B4(v20);
        v12 = *(v10 + 16);
        v11 = *(v10 + 24);

        sub_242CF6C60(v19);
        if (v11)
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2748, &unk_242F15360);
          v14 = *(v13 + 48);
          *a2 = v12;
          a2[1] = v11;
          sub_242CF4224(a1, a2 + v14, type metadata accessor for Component);
          return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
        }
      }

      else
      {
        sub_242CF6C60(v19);
      }
    }
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2748, &unk_242F15360);
  return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
}

uint64_t Zone.overlayComponents.getter()
{
  v19 = type metadata accessor for Component(0);
  v1 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  result = type metadata accessor for Zone(0);
  v8 = *(v0 + *(result + 28));
  v18 = *(v8 + 16);
  if (v18)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v9 >= *(v8 + 16))
      {
        __break(1u);
        return result;
      }

      v11 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v12 = *(v1 + 72);
      sub_242CF4224(v8 + v11 + v12 * v9, v6, type metadata accessor for Component);
      if (v6[*(v19 + 20)] == 1)
      {
        break;
      }

      v13 = sub_242F06110();

      if (v13)
      {
        goto LABEL_9;
      }

      result = sub_242CF6C00(v6, type metadata accessor for Component);
LABEL_4:
      if (v18 == ++v9)
      {
        return v10;
      }
    }

LABEL_9:
    sub_242CF6A1C(v6, v3, type metadata accessor for Component);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_242E3BE90(0, *(v10 + 16) + 1, 1);
      v10 = v20;
    }

    v16 = *(v10 + 16);
    v15 = *(v10 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_242E3BE90((v15 > 1), v16 + 1, 1);
      v10 = v20;
    }

    *(v10 + 16) = v16 + 1;
    result = sub_242CF6A1C(v3, v10 + v11 + v16 * v12, type metadata accessor for Component);
    goto LABEL_4;
  }

  return MEMORY[0x277D84F90];
}