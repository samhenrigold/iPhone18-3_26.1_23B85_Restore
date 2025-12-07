uint64_t sub_21D045BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE53EE8, &qword_21D095930);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21D045CB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE53EE8, &qword_21D095930);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21D045D78()
{
  v1 = *(type metadata accessor for PrivateMLClientAlertService(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_21D094230();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_21D045E88()
{
  v1 = *(type metadata accessor for PrivateMLClientAlertService(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_21D094230();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21D045F54()
{
  v1 = *(type metadata accessor for PrivateMLClientAlertService(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_21D094230();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21D046030()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21D046068(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D094230();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21D0460D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D094230();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21D046150(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21D094230();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_21D092FC0();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_21D093470();
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v17 = sub_21D094730();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[8];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_21D046310(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_21D094230();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_21D092FC0();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v16 = sub_21D093470();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = sub_21D094730();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[8];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_21D0464D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21D094230();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_21D092FC0();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_21D094730();
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v17 = sub_21D0942C0();
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54240, &qword_21D095C90);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v8 = v18;
      v12 = *(v18 - 8);
      v13 = a3[9];
      goto LABEL_5;
    }

    v19 = sub_21D093440();
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + a3[10];

    return v20(v21, a2, v19);
  }
}

uint64_t sub_21D04672C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_21D094230();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_21D092FC0();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v16 = sub_21D094730();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = sub_21D0942C0();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54240, &qword_21D095C90);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[9];
    goto LABEL_5;
  }

  v19 = sub_21D093440();
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[10];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_21D046988()
{
  v1 = *(v0 + 8);
  if (v1 <= 1)
  {
    if (*(v0 + 8))
    {
      return 6;
    }

    else
    {
      return 1;
    }
  }

  else if (v1 == 2)
  {
    return 10;
  }

  else if (v1 == 3)
  {
    return 15;
  }

  else
  {
    return qword_21D096598[*v0];
  }
}

uint64_t sub_21D0469E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_21D094070();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  sub_21D04FE3C(*(v0 + v11), *(v0 + v11 + 8));

  return MEMORY[0x2821FE8E8](v0, ((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v10 | 7);
}

uint64_t sub_21D046B74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v17 = (v3 + 48) & ~v3;
  v18 = v1;
  v4 = *(v2 + 64);
  v5 = sub_21D094070();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v17 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = sub_21D093EB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = v3 | v7 | v12;
  v15 = (*(v11 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v17, v18);
  (*(v6 + 8))(v0 + v8, v5);
  (*(v11 + 8))(v0 + v13, v10);

  return MEMORY[0x2821FE8E8](v0, v15 + 8, v14 | 7);
}

uint64_t sub_21D046D78(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21D046D90()
{
  result = os_variant_has_internal_content();
  byte_281221490 = result;
  return result;
}

uint64_t (*static OSVariant.isInternalBuild.modify(uint64_t a1))()
{
  if (qword_281221488 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_21D046E88()
{
  if (qword_281221488 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_27CE53EA8 = (byte_281221490 & 1) == 0;
  return result;
}

uint64_t sub_21D046F30(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return *a2;
}

uint64_t sub_21D046FAC(char a1, void *a2, _BYTE *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a3 = a1 & 1;
  return result;
}

uint64_t (*static OSVariant.isCustomerBuild.modify(uint64_t a1))()
{
  if (qword_27CE53E90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_21D04709C@<X0>(void *a1@<X3>, _BYTE *a2@<X4>, _BYTE *a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a4 = *a2;
  return result;
}

uint64_t sub_21D047100(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6, uint64_t a7)
{
  v8 = *a1;
  if (*a5 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a6 = v8;
  return result;
}

uint64_t getEnumTagSinglePayload for OSVariant(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for OSVariant(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_21D047268@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE53EB0, &qword_21D094F80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_21D092EA0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D092E90();
  sub_21D092E80();
  MEMORY[0x223D3AF40](7824750, 0xE300000000000000);
  sub_21D0474B8();
  sub_21D092E50();
  sub_21D092E60();
  v9 = sub_21D092F50();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_21D04D27C(v4, &qword_27CE53EB0, &qword_21D094F80);
    sub_21D04D0C0();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    return (*(v10 + 32))(a1, v4, v9);
  }
}

char *sub_21D0474B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE53EC0, &qword_21D094F88);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v331 = &v295 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v330 = &v295 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v329 = &v295 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v326 = &v295 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v323 = &v295 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v320 = &v295 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v319 = &v295 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v295 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v295 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v295 - v23;
  v25 = sub_21D092E20();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v298 = &v295 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v297 = &v295 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v314 = &v295 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v313 = &v295 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v350 = &v295 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v312 = &v295 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v349 = &v295 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v348 = &v295 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v311 = &v295 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v347 = &v295 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v328 = &v295 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v327 = &v295 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v346 = &v295 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v310 = &v295 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v345 = &v295 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v344 = &v295 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v309 = &v295 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v343 = &v295 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v342 = &v295 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v308 = &v295 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v341 = &v295 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v340 = &v295 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v307 = &v295 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v339 = &v295 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v325 = &v295 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v324 = &v295 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v351 = &v295 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v306 = &v295 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v338 = &v295 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v337 = &v295 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v305 = &v295 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v336 = &v295 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v335 = &v295 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v304 = &v295 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v334 = &v295 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v322 = &v295 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v321 = &v295 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v333 = &v295 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v303 = &v295 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v332 = &v295 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v302 = &v295 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v301 = &v295 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v300 = &v295 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v299 = &v295 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v318 = &v295 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v317 = &v295 - v118;
  v119 = MEMORY[0x28223BE20](v117);
  v316 = &v295 - v120;
  v121 = MEMORY[0x28223BE20](v119);
  v315 = &v295 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v125 = &v295 - v124;
  MEMORY[0x28223BE20](v123);
  v127 = &v295 - v126;
  v355 = v26;
  v356 = MEMORY[0x277D84F90];
  v128 = *(v1 + 24);
  v352 = v1;
  if (!v128)
  {
    v353 = *(v26 + 56);
    v353(v24, 1, 1, v25);
LABEL_5:
    sub_21D04D27C(v24, &qword_27CE53EC0, &qword_21D094F88);
    v129 = *(v1 + 48);
    if (!v129)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v26 = v355;
  sub_21D092E10();
  v353 = *(v26 + 56);
  v353(v24, 0, 1, v25);

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v1 = v352;
    goto LABEL_5;
  }

  v354 = *(v26 + 32);
  v354(v127, v24, v25);
  (*(v26 + 16))(v125, v127, v25);
  v152 = sub_21D0550DC(0, 1, 1, MEMORY[0x277D84F90]);
  v154 = *(v152 + 2);
  v153 = *(v152 + 3);
  v296 = v19;
  if (v154 >= v153 >> 1)
  {
    v152 = sub_21D0550DC((v153 > 1), v154 + 1, 1, v152);
  }

  v155 = v355;
  v156 = v355 + 8;
  (*(v355 + 8))(v127, v25);
  *(v152 + 2) = v154 + 1;
  v157 = &v152[((*(v156 + 72) + 32) & ~*(v156 + 72)) + *(v156 + 64) * v154];
  v26 = v155;
  v354(v157, v125, v25);
  v356 = v152;
  v1 = v352;
  v19 = v296;
  v129 = *(v352 + 48);
  if (v129)
  {
LABEL_6:
    v131 = *(v1 + 56);
    v130 = *(v1 + 64);
    v357 = *(v1 + 32);
    v358 = v129;
    v359 = v131;
    v360 = v130;
    v132 = sub_21D04A0EC();
    sub_21D04C8A0(v132);
  }

LABEL_7:
  v133 = *(v1 + 88);

  sub_21D04C298(v133, v22);

  v354 = *(v26 + 48);
  if (v354(v22, 1, v25) == 1)
  {
    sub_21D04D27C(v22, &qword_27CE53EC0, &qword_21D094F88);
  }

  else
  {
    v134 = *(v26 + 32);
    v135 = v315;
    v134(v315, v22, v25);
    (*(v26 + 16))(v316, v135, v25);
    v136 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v136 = sub_21D0550DC(0, *(v136 + 2) + 1, 1, v136);
    }

    v138 = *(v136 + 2);
    v137 = *(v136 + 3);
    if (v138 >= v137 >> 1)
    {
      v136 = sub_21D0550DC((v137 > 1), v138 + 1, 1, v136);
    }

    (*(v26 + 8))(v315, v25);
    *(v136 + 2) = v138 + 1;
    v134(&v136[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v138], v316, v25);
    v356 = v136;
    v1 = v352;
  }

  v139 = *(v1 + 112);

  sub_21D04C48C(v139, v19);

  if (v354(v19, 1, v25) == 1)
  {
    sub_21D04D27C(v19, &qword_27CE53EC0, &qword_21D094F88);
    if (*(v1 + 144))
    {
      goto LABEL_16;
    }

LABEL_28:
    v140 = v319;
    v353(v319, 1, 1, v25);
    goto LABEL_29;
  }

  v147 = *(v26 + 32);
  v148 = v317;
  v147(v317, v19, v25);
  (*(v26 + 16))(v318, v148, v25);
  v149 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v149 = sub_21D0550DC(0, *(v149 + 2) + 1, 1, v149);
  }

  v151 = *(v149 + 2);
  v150 = *(v149 + 3);
  if (v151 >= v150 >> 1)
  {
    v149 = sub_21D0550DC((v150 > 1), v151 + 1, 1, v149);
  }

  (*(v26 + 8))(v317, v25);
  *(v149 + 2) = v151 + 1;
  v147(&v149[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v151], v318, v25);
  v356 = v149;
  if (!*(v1 + 144))
  {
    goto LABEL_28;
  }

LABEL_16:

  v140 = v319;
  sub_21D092E10();
  v353(v140, 0, 1, v25);

  if (v354(v140, 1, v25) != 1)
  {
    v141 = *(v26 + 32);
    v142 = v299;
    v141(v299, v140, v25);
    (*(v26 + 16))(v300, v142, v25);
    v143 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = sub_21D0550DC(0, *(v143 + 2) + 1, 1, v143);
    }

    v145 = *(v143 + 2);
    v144 = *(v143 + 3);
    if (v145 >= v144 >> 1)
    {
      v143 = sub_21D0550DC((v144 > 1), v145 + 1, 1, v143);
    }

    (*(v26 + 8))(v299, v25);
    *(v143 + 2) = v145 + 1;
    v141(&v143[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v145], v300, v25);
    v356 = v143;
    if (!*(v1 + 176))
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_21D04D27C(v140, &qword_27CE53EC0, &qword_21D094F88);
  if (!*(v1 + 176))
  {
LABEL_22:
    v146 = v320;
    v353(v320, 1, 1, v25);
LABEL_31:
    sub_21D04D27C(v146, &qword_27CE53EC0, &qword_21D094F88);
    goto LABEL_41;
  }

LABEL_30:

  v146 = v320;
  sub_21D092E10();
  v353(v146, 0, 1, v25);

  if (v354(v146, 1, v25) == 1)
  {
    goto LABEL_31;
  }

  v158 = *(v26 + 32);
  v159 = v301;
  v158(v301, v146, v25);
  (*(v26 + 16))(v302, v159, v25);
  v160 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v160 = sub_21D0550DC(0, *(v160 + 2) + 1, 1, v160);
  }

  v162 = *(v160 + 2);
  v161 = *(v160 + 3);
  if (v162 >= v161 >> 1)
  {
    v160 = sub_21D0550DC((v161 > 1), v162 + 1, 1, v160);
  }

  (*(v26 + 8))(v301, v25);
  *(v160 + 2) = v162 + 1;
  v158(&v160[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v162], v302, v25);
  v356 = v160;
LABEL_41:

  sub_21D04CEE8(v163);
  if (v164)
  {
    v165 = v303;
    sub_21D092E10();

    v166 = *(v26 + 32);
    v167 = v332;
    v166(v332, v165, v25);
    (*(v26 + 16))(v333, v167, v25);
    v168 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v168 = sub_21D0550DC(0, *(v168 + 2) + 1, 1, v168);
    }

    v170 = *(v168 + 2);
    v169 = *(v168 + 3);
    if (v170 >= v169 >> 1)
    {
      v168 = sub_21D0550DC((v169 > 1), v170 + 1, 1, v168);
    }

    (*(v26 + 8))(v332, v25);
    *(v168 + 2) = v170 + 1;
    v166(&v168[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v170], v333, v25);
    v356 = v168;
  }

  else
  {
  }

  v171 = type metadata accessor for TapToRadarDraft(0);
  v172 = v323;
  sub_21D04C5E4(v323);
  if (v354(v172, 1, v25) == 1)
  {
    sub_21D04D27C(v172, &qword_27CE53EC0, &qword_21D094F88);
  }

  else
  {
    v173 = *(v26 + 32);
    v174 = v321;
    v173(v321, v172, v25);
    (*(v26 + 16))(v322, v174, v25);
    v175 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v175 = sub_21D0550DC(0, *(v175 + 2) + 1, 1, v175);
    }

    v177 = *(v175 + 2);
    v176 = *(v175 + 3);
    if (v177 >= v176 >> 1)
    {
      v175 = sub_21D0550DC((v176 > 1), v177 + 1, 1, v175);
    }

    (*(v26 + 8))(v321, v25);
    *(v175 + 2) = v177 + 1;
    v173(&v175[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v177], v322, v25);
    v356 = v175;
    v1 = v352;
  }

  sub_21D04CCD4(v178);
  if (v179)
  {
    v180 = v304;
    sub_21D092E10();

    v181 = *(v26 + 32);
    v182 = v334;
    v181(v334, v180, v25);
    (*(v26 + 16))(v335, v182, v25);
    v183 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v183 = sub_21D0550DC(0, *(v183 + 2) + 1, 1, v183);
    }

    v185 = *(v183 + 2);
    v184 = *(v183 + 3);
    if (v185 >= v184 >> 1)
    {
      v183 = sub_21D0550DC((v184 > 1), v185 + 1, 1, v183);
    }

    (*(v26 + 8))(v334, v25);
    *(v183 + 2) = v185 + 1;
    v181(&v183[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v185], v335, v25);
    v356 = v183;
    v1 = v352;
  }

  else
  {
  }

  sub_21D04CCD4(v186);
  if (v187)
  {
    v188 = v305;
    sub_21D092E10();

    v189 = *(v26 + 32);
    v190 = v336;
    v189(v336, v188, v25);
    (*(v26 + 16))(v337, v190, v25);
    v191 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v191 = sub_21D0550DC(0, *(v191 + 2) + 1, 1, v191);
    }

    v193 = *(v191 + 2);
    v192 = *(v191 + 3);
    if (v193 >= v192 >> 1)
    {
      v191 = sub_21D0550DC((v192 > 1), v193 + 1, 1, v191);
    }

    (*(v26 + 8))(v336, v25);
    *(v191 + 2) = v193 + 1;
    v189(&v191[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v193], v337, v25);
    v356 = v191;
    v1 = v352;
  }

  else
  {
  }

  sub_21D04CBA4(v194);
  if (v195)
  {
    v196 = v306;
    sub_21D092E10();

    v197 = *(v26 + 32);
    v198 = v338;
    v197(v338, v196, v25);
    (*(v26 + 16))(v351, v198, v25);
    v199 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v199 = sub_21D0550DC(0, *(v199 + 2) + 1, 1, v199);
    }

    v201 = *(v199 + 2);
    v200 = *(v199 + 3);
    if (v201 >= v200 >> 1)
    {
      v199 = sub_21D0550DC((v200 > 1), v201 + 1, 1, v199);
    }

    (*(v26 + 8))(v338, v25);
    *(v199 + 2) = v201 + 1;
    v197(&v199[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v201], v351, v25);
    v356 = v199;
    v1 = v352;
  }

  else
  {
  }

  v202 = v326;
  sub_21D092E10();

  v351 = (v26 + 56);
  v353(v202, 0, 1, v25);

  if (v354(v202, 1, v25) == 1)
  {
    sub_21D04D27C(v202, &qword_27CE53EC0, &qword_21D094F88);
  }

  else
  {
    v203 = *(v26 + 32);
    v204 = v324;
    v203(v324, v202, v25);
    (*(v26 + 16))(v325, v204, v25);
    v205 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v205 = sub_21D0550DC(0, *(v205 + 2) + 1, 1, v205);
    }

    v207 = *(v205 + 2);
    v206 = *(v205 + 3);
    if (v207 >= v206 >> 1)
    {
      v205 = sub_21D0550DC((v206 > 1), v207 + 1, 1, v205);
    }

    v208 = v355 + 8;
    (*(v355 + 8))(v324, v25);
    *(v205 + 2) = v207 + 1;
    v203(&v205[((*(v208 + 72) + 32) & ~*(v208 + 72)) + *(v208 + 64) * v207], v325, v25);
    v356 = v205;
  }

  sub_21D04CBA4(v209);
  if (v210)
  {
    v211 = v307;
    sub_21D092E10();

    v212 = v355;
    v213 = *(v355 + 32);
    v214 = v339;
    v213(v339, v211, v25);
    (*(v212 + 16))(v340, v214, v25);
    v215 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v215 = sub_21D0550DC(0, *(v215 + 2) + 1, 1, v215);
    }

    v217 = *(v215 + 2);
    v216 = *(v215 + 3);
    if (v217 >= v216 >> 1)
    {
      v215 = sub_21D0550DC((v216 > 1), v217 + 1, 1, v215);
    }

    v218 = v355 + 8;
    (*(v355 + 8))(v339, v25);
    *(v215 + 2) = v217 + 1;
    v213(&v215[((*(v218 + 72) + 32) & ~*(v218 + 72)) + *(v218 + 64) * v217], v340, v25);
    v356 = v215;
  }

  else
  {
  }

  sub_21D04C9CC(v219);
  if (v220)
  {
    v221 = v308;
    sub_21D092E10();

    v222 = v355;
    v223 = *(v355 + 32);
    v224 = v341;
    v223(v341, v221, v25);
    (*(v222 + 16))(v342, v224, v25);
    v225 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v225 = sub_21D0550DC(0, *(v225 + 2) + 1, 1, v225);
    }

    v227 = *(v225 + 2);
    v226 = *(v225 + 3);
    if (v227 >= v226 >> 1)
    {
      v225 = sub_21D0550DC((v226 > 1), v227 + 1, 1, v225);
    }

    v228 = v355 + 8;
    (*(v355 + 8))(v341, v25);
    *(v225 + 2) = v227 + 1;
    v223(&v225[((*(v228 + 72) + 32) & ~*(v228 + 72)) + *(v228 + 64) * v227], v342, v25);
    v356 = v225;
  }

  else
  {
  }

  sub_21D04CBA4(v229);
  if (v230)
  {
    v231 = v309;
    sub_21D092E10();

    v232 = v355;
    v233 = *(v355 + 32);
    v234 = v343;
    v233(v343, v231, v25);
    (*(v232 + 16))(v344, v234, v25);
    v235 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v235 = sub_21D0550DC(0, *(v235 + 2) + 1, 1, v235);
    }

    v237 = *(v235 + 2);
    v236 = *(v235 + 3);
    if (v237 >= v236 >> 1)
    {
      v235 = sub_21D0550DC((v236 > 1), v237 + 1, 1, v235);
    }

    v238 = v355 + 8;
    (*(v355 + 8))(v343, v25);
    *(v235 + 2) = v237 + 1;
    v233(&v235[((*(v238 + 72) + 32) & ~*(v238 + 72)) + *(v238 + 64) * v237], v344, v25);
    v356 = v235;
  }

  else
  {
  }

  v239 = *(v1 + v171[19] + 16);

  sub_21D04B614(v239);
  if (v240)
  {
    v241 = v310;
    sub_21D092E10();

    v242 = v355;
    v243 = *(v355 + 32);
    v244 = v345;
    v243(v345, v241, v25);
    (*(v242 + 16))(v346, v244, v25);
    v245 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v245 = sub_21D0550DC(0, *(v245 + 2) + 1, 1, v245);
    }

    v247 = *(v245 + 2);
    v246 = *(v245 + 3);
    if (v247 >= v246 >> 1)
    {
      v245 = sub_21D0550DC((v246 > 1), v247 + 1, 1, v245);
    }

    v248 = v355 + 8;
    (*(v355 + 8))(v345, v25);
    *(v245 + 2) = v247 + 1;
    v243(&v245[((*(v248 + 72) + 32) & ~*(v248 + 72)) + *(v248 + 64) * v247], v346, v25);
    v356 = v245;
  }

  else
  {
  }

  v249 = v329;
  sub_21D092E10();

  v353(v249, 0, 1, v25);
  v250 = v249;

  if (v354(v249, 1, v25) == 1)
  {
    sub_21D04D27C(v249, &qword_27CE53EC0, &qword_21D094F88);
  }

  else
  {
    v251 = v355;
    v252 = *(v355 + 32);
    v253 = v327;
    v252(v327, v250, v25);
    (*(v251 + 16))(v328, v253, v25);
    v254 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v254 = sub_21D0550DC(0, *(v254 + 2) + 1, 1, v254);
    }

    v256 = *(v254 + 2);
    v255 = *(v254 + 3);
    if (v256 >= v255 >> 1)
    {
      v254 = sub_21D0550DC((v255 > 1), v256 + 1, 1, v254);
    }

    v257 = v355 + 8;
    (*(v355 + 8))(v327, v25);
    *(v254 + 2) = v256 + 1;
    v252(&v254[((*(v257 + 72) + 32) & ~*(v257 + 72)) + *(v257 + 64) * v256], v328, v25);
    v356 = v254;
  }

  v258 = *(v1 + v171[21] + 16);

  sub_21D04BD84(v258);
  if (v259)
  {
    v260 = v311;
    sub_21D092E10();

    v261 = v355;
    v262 = *(v355 + 32);
    v263 = v347;
    v262(v347, v260, v25);
    (*(v261 + 16))(v348, v263, v25);
    v264 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v264 = sub_21D0550DC(0, *(v264 + 2) + 1, 1, v264);
    }

    v266 = *(v264 + 2);
    v265 = *(v264 + 3);
    if (v266 >= v265 >> 1)
    {
      v264 = sub_21D0550DC((v265 > 1), v266 + 1, 1, v264);
    }

    v267 = v355 + 8;
    (*(v355 + 8))(v347, v25);
    *(v264 + 2) = v266 + 1;
    v262(&v264[((*(v267 + 72) + 32) & ~*(v267 + 72)) + *(v267 + 64) * v266], v348, v25);
    v356 = v264;
  }

  else
  {
  }

  sub_21D04CBA4(v268);
  if (v269)
  {
    v270 = v312;
    sub_21D092E10();

    v271 = v355;
    v272 = *(v355 + 32);
    v273 = v349;
    v272(v349, v270, v25);
    (*(v271 + 16))(v350, v273, v25);
    v274 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v274 = sub_21D0550DC(0, *(v274 + 2) + 1, 1, v274);
    }

    v276 = *(v274 + 2);
    v275 = *(v274 + 3);
    if (v276 >= v275 >> 1)
    {
      v274 = sub_21D0550DC((v275 > 1), v276 + 1, 1, v274);
    }

    v277 = v355 + 8;
    (*(v355 + 8))(v349, v25);
    *(v274 + 2) = v276 + 1;
    v272(&v274[((*(v277 + 72) + 32) & ~*(v277 + 72)) + *(v277 + 64) * v276], v350, v25);
    v356 = v274;
  }

  else
  {
  }

  if (!*(v1 + v171[23] + 24))
  {
    v278 = v330;
    v353(v330, 1, 1, v25);
    v280 = v355;
    goto LABEL_140;
  }

  v278 = v330;
  sub_21D092E10();
  v353(v278, 0, 1, v25);

  v279 = v354(v278, 1, v25);
  v280 = v355;
  if (v279 == 1)
  {
LABEL_140:
    sub_21D04D27C(v278, &qword_27CE53EC0, &qword_21D094F88);
    goto LABEL_141;
  }

  v281 = *(v355 + 32);
  v282 = v313;
  v281(v313, v278, v25);
  (*(v280 + 16))(v314, v282, v25);
  v283 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v283 = sub_21D0550DC(0, *(v283 + 2) + 1, 1, v283);
  }

  v285 = *(v283 + 2);
  v284 = *(v283 + 3);
  if (v285 >= v284 >> 1)
  {
    v283 = sub_21D0550DC((v284 > 1), v285 + 1, 1, v283);
  }

  v280 = v355;
  v286 = v355 + 8;
  (*(v355 + 8))(v313, v25);
  *(v283 + 2) = v285 + 1;
  v281(&v283[((*(v286 + 72) + 32) & ~*(v286 + 72)) + *(v286 + 64) * v285], v314, v25);
  v356 = v283;
LABEL_141:
  if (!*(v352 + v171[24] + 24))
  {
    v287 = v331;
    v353(v331, 1, 1, v25);
    goto LABEL_149;
  }

  v287 = v331;
  sub_21D092E10();
  v353(v287, 0, 1, v25);

  if (v354(v287, 1, v25) == 1)
  {
LABEL_149:
    sub_21D04D27C(v287, &qword_27CE53EC0, &qword_21D094F88);
    return v356;
  }

  v288 = *(v280 + 32);
  v289 = v297;
  v288(v297, v287, v25);
  v290 = v298;
  (*(v280 + 16))(v298, v289, v25);
  v291 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v291 = sub_21D0550DC(0, *(v291 + 2) + 1, 1, v291);
  }

  v293 = *(v291 + 2);
  v292 = *(v291 + 3);
  if (v293 >= v292 >> 1)
  {
    v291 = sub_21D0550DC((v292 > 1), v293 + 1, 1, v291);
  }

  (*(v280 + 8))(v289, v25);
  *(v291 + 2) = v293 + 1;
  v288(&v291[((*(v280 + 80) + 32) & ~*(v280 + 80)) + *(v280 + 72) * v293], v290, v25);
  return v291;
}

uint64_t sub_21D049ED4()
{
  v1[2] = v0;
  v2 = sub_21D092F50();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D049F94, 0, 0);
}

uint64_t sub_21D049F94()
{
  sub_21D047268(v0[5]);
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = v1;
    v3 = sub_21D092F30();
    sub_21D08FD64(MEMORY[0x277D84F90]);
    v4 = sub_21D0943B0();

    [v2 openSensitiveURL:v3 withOptions:v4];
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_21D04A0EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE53EC8, &qword_21D094F90);
  sub_21D092E20();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21D094E80;
  sub_21D094790();
  sub_21D092E10();

  sub_21D092E10();
  sub_21D092E10();
  return v0;
}

uint64_t sub_21D04A268()
{
  v1 = *v0;
  sub_21D094850();
  MEMORY[0x223D3C930](v1);
  sub_21D094450();
  sub_21D094450();
  return sub_21D094870();
}

uint64_t sub_21D04A2E8(uint64_t a1)
{
  MEMORY[0x223D3C930](*v1);
  sub_21D094450();

  return sub_21D094450();
}

uint64_t sub_21D04A358(uint64_t a1)
{
  v2 = *v1;
  sub_21D094850();
  MEMORY[0x223D3C930](v2);
  sub_21D094450();
  sub_21D094450();
  return sub_21D094870();
}

uint64_t sub_21D04A3D4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_21D0947D0() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_21D0947D0();
}

unint64_t sub_21D04A488(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x2065727574616546;
    v6 = 0x6D65636E61686E45;
    if (a1 != 8)
    {
      v6 = 1802723668;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x2073756F69726553;
    if (a1 != 5)
    {
      v7 = 0x754220726568744FLL;
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
    v1 = 0x7974697275636553;
    v2 = 0x7265776F50;
    v3 = 0x616D726F66726550;
    if (a1 != 3)
    {
      v3 = 0x69626173552F4955;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
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

uint64_t sub_21D04A5EC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_21D04A488(*a1);
  v5 = v4;
  if (v3 == sub_21D04A488(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21D0947D0();
  }

  return v8 & 1;
}

uint64_t sub_21D04A674(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E55;
  v6 = 0x74276E6469442049;
  v7 = 0xEC00000079725420;
  if (a1 != 4)
  {
    v6 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656D6974656D6F53;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
LABEL_34:
        v13 = sub_21D0947D0();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_21D04A878(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0xE100000000000000;
    v9 = 48;
    if (a1 != 1)
    {
      v9 = 12589;
      v8 = 0xE200000000000000;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 7105633;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0x800000021D096820;
    v4 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x800000021D096840;
    }

    v5 = 0x800000021D0967E0;
    if (a1 != 3)
    {
      v5 = 0x800000021D096800;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE100000000000000;
        if (v6 != 48)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        if (v6 != 12589)
        {
LABEL_45:
          v12 = sub_21D0947D0();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 0xE300000000000000;
      if (v6 != 7105633)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v10 = 0x800000021D096820;
    }

    else
    {
      v10 = 0x800000021D096840;
    }

    if (v6 != v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v10 = 0x800000021D0967E0;
    }

    else
    {
      v10 = 0x800000021D096800;
    }

    if (v6 != 0xD000000000000010)
    {
      goto LABEL_45;
    }
  }

  if (v7 != v10)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_21D04AA50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE300000000000000;
  v5 = 6512973;
  if (a1 != 5)
  {
    v5 = 0x6E6F69736956;
    v4 = 0xE600000000000000;
  }

  v6 = 0x5654656C707041;
  if (a1 != 3)
  {
    v6 = 0x646F50656D6F48;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684099177;
  if (a1 != 1)
  {
    v8 = 0x6863746157;
    v7 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x656E6F685069;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE400000000000000;
        if (v9 != 1684099177)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 0xE500000000000000;
        if (v9 != 0x6863746157)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x656E6F685069)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE300000000000000;
      if (v9 != 6512973)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x6E6F69736956)
      {
LABEL_39:
        v12 = sub_21D0947D0();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (a2 == 3)
    {
      if (v9 != 0x5654656C707041)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 0x646F50656D6F48)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_21D04AC48()
{
  v1 = *v0;
  sub_21D094850();
  sub_21D04A488(v1);
  sub_21D094450();

  return sub_21D094870();
}

uint64_t sub_21D04ACAC(unsigned __int8 a1)
{
  sub_21D094850();
  sub_21D094450();

  return sub_21D094870();
}

uint64_t sub_21D04ADC0(uint64_t a1)
{
  sub_21D04A488(*v1);
  sub_21D094450();
}

uint64_t sub_21D04AE14(uint64_t a1)
{
  v2 = *v1;
  sub_21D094850();
  sub_21D04A488(v2);
  sub_21D094450();

  return sub_21D094870();
}

uint64_t sub_21D04AE74(uint64_t a1, unsigned __int8 a2)
{
  sub_21D094850();
  sub_21D094450();

  return sub_21D094870();
}

uint64_t sub_21D04AF7C(uint64_t a1, unsigned __int8 a2)
{
  sub_21D094850();
  sub_21D094450();

  return sub_21D094870();
}

uint64_t sub_21D04B08C(uint64_t a1, unsigned __int8 a2)
{
  sub_21D094850();
  sub_21D094450();

  return sub_21D094870();
}

unint64_t sub_21D04B19C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21D04E950(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_21D04B1CC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21D04A488(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21D04B20C(uint64_t a1)
{
  sub_21D094450();
}

unint64_t sub_21D04B310@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21D04E99C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21D04B340(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_21D04B424(uint64_t a1)
{
  sub_21D094450();
}

unint64_t sub_21D04B520@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21D04E9E8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21D04B550(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE300000000000000;
  v6 = 6512973;
  if (v2 != 5)
  {
    v6 = 0x6E6F69736956;
    v5 = 0xE600000000000000;
  }

  v7 = 0x5654656C707041;
  if (v2 != 3)
  {
    v7 = 0x646F50656D6F48;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (v2 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_21D04B614(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1)
    {
      v2 = sub_21D054FD0(0, 1, 1, MEMORY[0x277D84F90]);
      v4 = *(v2 + 2);
      v3 = *(v2 + 3);
      if (v4 >= v3 >> 1)
      {
        v2 = sub_21D054FD0((v3 > 1), v4 + 1, 1, v2);
      }

      *(v2 + 2) = v4 + 1;
      v5 = &v2[16 * v4];
      *(v5 + 4) = 0x79616C50726941;
      *(v5 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_21D054FD0(0, *(v2 + 2) + 1, 1, v2);
          }

          v10 = *(v2 + 2);
          v9 = *(v2 + 3);
          if (v10 >= v9 >> 1)
          {
            v2 = sub_21D054FD0((v9 > 1), v10 + 1, 1, v2);
          }

          *(v2 + 2) = v10 + 1;
          v11 = &v2[16 * v10];
          strcpy(v11 + 32, "MediaSystems");
          v11[45] = 0;
          *(v11 + 23) = -5120;
        }

        if ((v1 & 8) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_21D054FD0(0, *(v2 + 2) + 1, 1, v2);
          }

          v13 = *(v2 + 2);
          v12 = *(v2 + 3);
          if (v13 >= v12 >> 1)
          {
            v2 = sub_21D054FD0((v12 > 1), v13 + 1, 1, v2);
          }

          *(v2 + 2) = v13 + 1;
          v14 = &v2[16 * v13];
          *(v14 + 4) = 0x616C506572616853;
          *(v14 + 5) = 0xE900000000000079;
          if ((v1 & 0x10) == 0)
          {
LABEL_22:
            if ((v1 & 0x20) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }
        }

        else if ((v1 & 0x10) == 0)
        {
          goto LABEL_22;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_21D054FD0(0, *(v2 + 2) + 1, 1, v2);
        }

        v16 = *(v2 + 2);
        v15 = *(v2 + 3);
        if (v16 >= v15 >> 1)
        {
          v2 = sub_21D054FD0((v15 > 1), v16 + 1, 1, v2);
        }

        *(v2 + 2) = v16 + 1;
        v17 = &v2[16 * v16];
        *(v17 + 4) = 0x79627261654ELL;
        *(v17 + 5) = 0xE600000000000000;
        if ((v1 & 0x20) == 0)
        {
LABEL_23:
          if ((v1 & 0x40) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_41;
        }

LABEL_36:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_21D054FD0(0, *(v2 + 2) + 1, 1, v2);
        }

        v19 = *(v2 + 2);
        v18 = *(v2 + 3);
        if (v19 >= v18 >> 1)
        {
          v2 = sub_21D054FD0((v18 > 1), v19 + 1, 1, v2);
        }

        *(v2 + 2) = v19 + 1;
        v20 = &v2[16 * v19];
        *(v20 + 4) = 0x657463656E6E6F43;
        *(v20 + 5) = 0xE900000000000064;
        if ((v1 & 0x40) == 0)
        {
LABEL_24:
          if ((v1 & 0x80) == 0)
          {
LABEL_51:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE53ED0, &qword_21D094F98);
            sub_21D04D160();
            v1 = sub_21D0943C0();

            return v1;
          }

LABEL_46:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_21D054FD0(0, *(v2 + 2) + 1, 1, v2);
          }

          v25 = *(v2 + 2);
          v24 = *(v2 + 3);
          if (v25 >= v24 >> 1)
          {
            v2 = sub_21D054FD0((v24 > 1), v25 + 1, 1, v2);
          }

          *(v2 + 2) = v25 + 1;
          v26 = &v2[16 * v25];
          *(v26 + 4) = 0xD000000000000016;
          *(v26 + 5) = 0x800000021D096950;
          goto LABEL_51;
        }

LABEL_41:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_21D054FD0(0, *(v2 + 2) + 1, 1, v2);
        }

        v22 = *(v2 + 2);
        v21 = *(v2 + 3);
        if (v22 >= v21 >> 1)
        {
          v2 = sub_21D054FD0((v21 > 1), v22 + 1, 1, v2);
        }

        *(v2 + 2) = v22 + 1;
        v23 = &v2[16 * v22];
        *(v23 + 4) = 0x61656854656D6F48;
        *(v23 + 5) = 0xEB00000000726574;
        if ((v1 & 0x80) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
      if ((a1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_21D054FD0(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_21D054FD0((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x4874694B656D6F48;
    *(v8 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return v1;
}

uint64_t sub_21D04BAE4()
{
  v1 = *v0;
  sub_21D094850();
  MEMORY[0x223D3C930](v1);
  return sub_21D094870();
}

uint64_t sub_21D04BB58(uint64_t a1)
{
  v2 = *v1;
  sub_21D094850();
  MEMORY[0x223D3C930](v2);
  return sub_21D094870();
}

BOOL sub_21D04BBE0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_21D04BC10@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_21D04BC3C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_21D04BD14@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21D04BD44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_21D04D040(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_21D04BD84(unsigned __int8 a1)
{
  if (!a1)
  {

    return 0;
  }

  v2 = sub_21D0947D0();

  if (v2)
  {
    return 0;
  }

  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (a1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (a1 == 1)
  {
    return 48;
  }

  else if (a1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_21D04BF54(uint64_t a1)
{
  sub_21D094450();
}

unint64_t sub_21D04C058@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21D04EA34(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21D04C088(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000021D096820;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x800000021D096840;
    }

    v5 = 0x800000021D0967E0;
    if (v2 != 3)
    {
      v5 = 0x800000021D096800;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

uint64_t sub_21D04C16C()
{
  v1 = *v0;
  sub_21D094850();
  MEMORY[0x223D3C930](v1);
  return sub_21D094870();
}

uint64_t sub_21D04C1E0(uint64_t a1)
{
  v2 = *v1;
  sub_21D094850();
  MEMORY[0x223D3C930](v2);
  return sub_21D094870();
}

unint64_t sub_21D04C224()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t sub_21D04C298@<X0>(unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 9u)
  {
    v5 = 1;
  }

  else
  {
    sub_21D092E10();

    v5 = 0;
  }

  v6 = sub_21D092E20();
  v7 = *(*(v6 - 8) + 56);

  return v7(a4, v5, 1, v6);
}

uint64_t sub_21D04C48C@<X0>(unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 5u)
  {
    v5 = 1;
  }

  else
  {
    sub_21D092E10();

    v5 = 0;
  }

  v6 = sub_21D092E20();
  v7 = *(*(v6 - 8) + 56);

  return v7(a4, v5, 1, v6);
}

uint64_t sub_21D04C5E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE53EE0, &unk_21D094FA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_21D092F90();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE53EE8, &qword_21D095930);
  sub_21D04D20C(v2 + *(v11 + 36), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21D04D27C(v6, &qword_27CE53EE0, &unk_21D094FA0);
    v12 = 1;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v14 = sub_21D0943E0();
    [v13 setDateFormat_];

    [v13 setDoesRelativeDateFormatting_];
    v15 = sub_21D092F70();
    v16 = [v13 stringFromDate_];

    sub_21D0943F0();
    (*(v8 + 8))(v10, v7);
    sub_21D092E10();

    v12 = 0;
  }

  v17 = sub_21D092E20();
  return (*(*(v17 - 8) + 56))(a1, v12, 1, v17);
}

uint64_t sub_21D04C8A0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_21D0550DC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_21D092E20();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21D04C9CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *v2++;
    v4 = v5;
    v6 = v5 == 5;
    v7 = 6512973;
    if (v5 != 5)
    {
      v7 = 0x6E6F69736956;
    }

    v8 = 0xE300000000000000;
    if (!v6)
    {
      v8 = 0xE600000000000000;
    }

    v9 = 0x5654656C707041;
    if (v4 != 3)
    {
      v9 = 0x646F50656D6F48;
    }

    if (v4 <= 4)
    {
      v7 = v9;
      v8 = 0xE700000000000000;
    }

    v10 = 1684099177;
    if (v4 != 1)
    {
      v10 = 0x6863746157;
    }

    v11 = 0xE400000000000000;
    if (v4 != 1)
    {
      v11 = 0xE500000000000000;
    }

    if (!v4)
    {
      v10 = 0x656E6F685069;
      v11 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    if (v4 <= 2)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_21D054FD0(0, *(v3 + 2) + 1, 1, v3);
    }

    v15 = *(v3 + 2);
    v14 = *(v3 + 3);
    if (v15 >= v14 >> 1)
    {
      v3 = sub_21D054FD0((v14 > 1), v15 + 1, 1, v3);
    }

    *(v3 + 2) = v15 + 1;
    v16 = &v3[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v13;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE53ED0, &qword_21D094F98);
  sub_21D04D160();
  v17 = sub_21D0943C0();

  return v17;
}

uint64_t sub_21D04CBA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_21D054FD0(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_21D054FD0((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE53ED0, &qword_21D094F98);
  sub_21D04D160();
  v9 = sub_21D0943C0();

  return v9;
}

uint64_t sub_21D04CCD4(uint64_t a1)
{
  v23 = sub_21D092F50();
  MEMORY[0x28223BE20](v23);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v7 = *(v2 + 16);
  v6 = v2 + 16;
  v8 = a1 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
  v21 = *(v6 + 56);
  v22 = v7;
  v9 = (v6 - 8);
  v10 = MEMORY[0x277D84F90];
  do
  {
    v11 = v23;
    v12 = v6;
    v22(v4, v8, v23);
    v13 = sub_21D092F40();
    v15 = v14;
    (*v9)(v4, v11);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_21D054FD0(0, *(v10 + 2) + 1, 1, v10);
    }

    v17 = *(v10 + 2);
    v16 = *(v10 + 3);
    if (v17 >= v16 >> 1)
    {
      v10 = sub_21D054FD0((v16 > 1), v17 + 1, 1, v10);
    }

    *(v10 + 2) = v17 + 1;
    v18 = &v10[16 * v17];
    *(v18 + 4) = v13;
    *(v18 + 5) = v15;
    v8 += v21;
    --v5;
    v6 = v12;
  }

  while (v5);
  v24 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE53ED0, &qword_21D094F98);
  sub_21D04D160();
  v19 = sub_21D0943C0();

  return v19;
}

uint64_t sub_21D04CEE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x277D84F90];
  do
  {
    v2 += 8;
    v4 = sub_21D094790();
    v6 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_21D054FD0(0, *(v3 + 2) + 1, 1, v3);
    }

    v8 = *(v3 + 2);
    v7 = *(v3 + 3);
    if (v8 >= v7 >> 1)
    {
      v3 = sub_21D054FD0((v7 > 1), v8 + 1, 1, v3);
    }

    *(v3 + 2) = v8 + 1;
    v9 = &v3[16 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v6;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE53ED0, &qword_21D094F98);
  sub_21D04D160();
  v10 = sub_21D0943C0();

  return v10;
}

uint64_t sub_21D04D040(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_21D04D0C0()
{
  result = qword_27CE53EB8;
  if (!qword_27CE53EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE53EB8);
  }

  return result;
}

uint64_t type metadata accessor for TapToRadarDraft(uint64_t a1)
{
  result = qword_27CE53F70;
  if (!qword_27CE53F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21D04D160()
{
  result = qword_27CE53ED8;
  if (!qword_27CE53ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE53ED0, &qword_21D094F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE53ED8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21D04D20C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE53EE0, &unk_21D094FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D04D27C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.TapToRadarError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.TapToRadarError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21D04D440(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21D04D4C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_21D04D644(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void sub_21D04D8D4(uint64_t a1)
{
  sub_21D04DCF8(319, &qword_27CE53F80, &qword_27CE53F88, &qword_21D094FF0, sub_21D04DC2C);
  if (v1 <= 0x3F)
  {
    sub_21D04DCA8();
    if (v2 <= 0x3F)
    {
      sub_21D04DCF8(319, &qword_27CE53FA0, &qword_27CE53FA8, &qword_21D094FF8, sub_21D04DD68);
      if (v3 <= 0x3F)
      {
        sub_21D04DCF8(319, &qword_27CE53FB8, &qword_27CE53FC0, &qword_21D095000, sub_21D04DDE4);
        if (v4 <= 0x3F)
        {
          sub_21D04DCF8(319, &qword_27CE53FD0, &qword_27CE53FD8, &qword_21D095008, sub_21D04DE60);
          if (v5 <= 0x3F)
          {
            sub_21D04DCF8(319, &qword_27CE53FE8, &qword_27CE53EE0, &unk_21D094FA0, sub_21D04DEDC);
            if (v6 <= 0x3F)
            {
              sub_21D04DCF8(319, &qword_27CE53FF8, &qword_27CE54000, &qword_21D095010, sub_21D04DF58);
              if (v7 <= 0x3F)
              {
                sub_21D04DCF8(319, &qword_27CE54010, &qword_27CE53ED0, &qword_21D094F98, sub_21D04DFD4);
                if (v8 <= 0x3F)
                {
                  sub_21D04E0CC(319, &qword_27CE54020, MEMORY[0x277D839B0], &off_282E96A60);
                  if (v9 <= 0x3F)
                  {
                    sub_21D04DCF8(319, &qword_27CE54028, &qword_27CE54030, &qword_21D095018, sub_21D04E050);
                    if (v10 <= 0x3F)
                    {
                      sub_21D04E0CC(319, &qword_27CE54040, &type metadata for TapToRadarDraft.RemoteDeviceSelections, &off_282E96E98);
                      if (v11 <= 0x3F)
                      {
                        sub_21D04E0CC(319, &qword_27CE54048, &type metadata for TapToRadarDraft.AutoDiagnostics, &off_282E96E88);
                        if (v12 <= 0x3F)
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
    }
  }
}

unint64_t sub_21D04DC2C()
{
  result = qword_27CE53F90;
  if (!qword_27CE53F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE53F88, &qword_21D094FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE53F90);
  }

  return result;
}

void sub_21D04DCA8()
{
  if (!qword_27CE53F98)
  {
    v0 = sub_21D094690();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE53F98);
    }
  }
}

void sub_21D04DCF8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5();
    v11 = type metadata accessor for URLParameter(a1, v8, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_21D04DD68()
{
  result = qword_27CE53FB0;
  if (!qword_27CE53FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE53FA8, &qword_21D094FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE53FB0);
  }

  return result;
}

unint64_t sub_21D04DDE4()
{
  result = qword_27CE53FC8;
  if (!qword_27CE53FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE53FC0, &qword_21D095000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE53FC8);
  }

  return result;
}

unint64_t sub_21D04DE60()
{
  result = qword_27CE53FE0;
  if (!qword_27CE53FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE53FD8, &qword_21D095008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE53FE0);
  }

  return result;
}

unint64_t sub_21D04DEDC()
{
  result = qword_27CE53FF0;
  if (!qword_27CE53FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE53EE0, &unk_21D094FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE53FF0);
  }

  return result;
}

unint64_t sub_21D04DF58()
{
  result = qword_27CE54008;
  if (!qword_27CE54008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE54000, &qword_21D095010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54008);
  }

  return result;
}

unint64_t sub_21D04DFD4()
{
  result = qword_27CE54018;
  if (!qword_27CE54018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE53ED0, &qword_21D094F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54018);
  }

  return result;
}

unint64_t sub_21D04E050()
{
  result = qword_27CE54038;
  if (!qword_27CE54038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE54030, &qword_21D095018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54038);
  }

  return result;
}

void sub_21D04E0CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for URLParameter(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ErrorCodeDifferentiator(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ErrorCodeDifferentiator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Reproducibility(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Reproducibility(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Classification(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Classification(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21D04E540(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_21D04E588(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21D04E5E4()
{
  result = qword_27CE54050;
  if (!qword_27CE54050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54050);
  }

  return result;
}

unint64_t sub_21D04E63C()
{
  result = qword_27CE54058;
  if (!qword_27CE54058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54058);
  }

  return result;
}

unint64_t sub_21D04E694()
{
  result = qword_27CE54060;
  if (!qword_27CE54060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54060);
  }

  return result;
}

unint64_t sub_21D04E6EC()
{
  result = qword_27CE54068;
  if (!qword_27CE54068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54068);
  }

  return result;
}

unint64_t sub_21D04E740()
{
  result = qword_27CE54070;
  if (!qword_27CE54070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54070);
  }

  return result;
}

unint64_t sub_21D04E798()
{
  result = qword_27CE54078;
  if (!qword_27CE54078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54078);
  }

  return result;
}

unint64_t sub_21D04E7F0()
{
  result = qword_27CE54080;
  if (!qword_27CE54080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54080);
  }

  return result;
}

unint64_t sub_21D04E848()
{
  result = qword_27CE54088;
  if (!qword_27CE54088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54088);
  }

  return result;
}

unint64_t sub_21D04E8A0()
{
  result = qword_27CE54090;
  if (!qword_27CE54090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54090);
  }

  return result;
}

unint64_t sub_21D04E8FC()
{
  result = qword_27CE54098;
  if (!qword_27CE54098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54098);
  }

  return result;
}

unint64_t sub_21D04E950(uint64_t a1, uint64_t a2)
{
  v2 = sub_21D094780();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21D04E99C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21D094780();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21D04E9E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_21D094780();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21D04EA34(uint64_t a1, uint64_t a2)
{
  v2 = sub_21D094780();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21D04EAD4(uint64_t a1)
{
  v2 = sub_21D04FFB4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21D04EB10(uint64_t a1)
{
  v2 = sub_21D04FFB4();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_21D04EB9C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEDED0];
  v3 = sub_21D094080();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_21D04EC38(uint64_t a1)
{
  v2 = sub_21D0500BC();

  return MEMORY[0x2821401D0](a1, v2);
}

void sub_21D04EC74()
{
  sub_21D0500BC();

  JUMPOUT(0x223D3C1B0);
}

void sub_21D04ECB4()
{
  sub_21D0500BC();

  JUMPOUT(0x223D3C1E0);
}

uint64_t Constraints.toTMLConstraints(logger:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a1;
  v137 = a2;
  v115 = sub_21D0934F0();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = (&v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v121 = sub_21D093500();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v119 = (&v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_21D0934E0();
  v124 = *(v4 - 8);
  v125 = v4;
  MEMORY[0x28223BE20](v4);
  v123 = (&v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v118 = sub_21D093510();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = (&v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_21D094420();
  MEMORY[0x28223BE20](v7 - 8);
  v122 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21D093E40();
  v132 = *(v9 - 8);
  v133 = v9;
  MEMORY[0x28223BE20](v9);
  v130 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_21D094140();
  v129 = *(v131 - 8);
  v11 = MEMORY[0x28223BE20](v131);
  v127 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v128 = &v112 - v13;
  v14 = sub_21D094120();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v126 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v112 - v18;
  v20 = sub_21D0934C0();
  v135 = *(v20 - 8);
  v136 = v20;
  MEMORY[0x28223BE20](v20);
  v134 = (&v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_21D0937A0();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = (&v112 - v27);
  v29 = *(v23 + 16);
  v29(&v112 - v27, v140, v22);
  v30 = (*(v23 + 88))(v28, v22);
  if (v30 == *MEMORY[0x277D71B30])
  {
    (*(v23 + 96))(v28, v22);
    v31 = v15;
    (*(v15 + 32))(v19, v28, v14);
    v32 = sub_21D094210();
    v33 = sub_21D094580();
    v34 = os_log_type_enabled(v32, v33);
    v140 = v14;
    v35 = v31;
    if (v34)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_21D044000, v32, v33, "toTMLConstraints schema", v36, 2u);
      MEMORY[0x223D3CDF0](v36, -1, -1);
    }

    sub_21D04FDF0();
    v37 = sub_21D094640();
    v38 = v137;
    if (v37)
    {
      if (qword_281221778 != -1)
      {
        swift_once();
      }

      v39 = sub_21D094230();
      __swift_project_value_buffer(v39, qword_2812217C8);
      v40 = sub_21D094210();
      v41 = sub_21D094550();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_21D044000, v40, v41, "Converting schema into grammar", v42, 2u);
        MEMORY[0x223D3CDF0](v42, -1, -1);
      }

      (*(v31 + 16))(v126, v19, v140);
      v43 = v128;
      sub_21D094130();
      v139 = v19;
      v44 = v129;
      v45 = v131;
      (*(v129 + 16))(v127, v43, v131);
      v46 = v130;
      sub_21D093E30();
      sub_21D04FEC8(&qword_27CE540B0, MEMORY[0x277D71F00], MEMORY[0x277D71F08]);
      v47 = v133;
      v48 = sub_21D094790();
      v50 = v49;
      (*(v132 + 8))(v46, v47);
      (*(v44 + 8))(v43, v45);
      (*(v35 + 8))(v139, v140);
      v51 = v134;
      *v134 = v48;
      v51[1] = v50;
      v53 = v135;
      v52 = v136;
      (*(v135 + 104))(v51, *MEMORY[0x277D41520], v136);
      (*(v53 + 32))(v38, v51, v52);
LABEL_14:
      v62 = MEMORY[0x277D41528];
LABEL_15:
      v63 = *v62;
      v64 = sub_21D0934D0();
      v65 = *(v64 - 8);
      (*(v65 + 104))(v38, v63, v64);
      return (*(v65 + 56))(v38, 0, 1, v64);
    }

    sub_21D092E00();
    swift_allocObject();
    sub_21D092DF0();
    sub_21D04FEC8(&qword_281221780, MEMORY[0x277D0DC78], MEMORY[0x277D0DC80]);
    v67 = v138;
    v68 = sub_21D092DE0();
    if (v67)
    {

      v70 = v67;
    }

    else
    {
      v90 = v68;
      v91 = v69;

      sub_21D094410();
      v92 = sub_21D094400();
      if (v93)
      {
        v94 = v92;
        v95 = v93;
        (*(v35 + 8))(v19, v140);
        sub_21D04FE3C(v90, v91);
        v96 = v116;
        *v116 = v94;
        v96[1] = v95;
        v97 = v117;
        v98 = v118;
        (*(v117 + 104))(v96, *MEMORY[0x277D41568], v118);
        (*(v97 + 32))(v38, v96, v98);
        v62 = MEMORY[0x277D41548];
        goto LABEL_15;
      }

      sub_21D04FD50();
      v70 = swift_allocError();
      *v107 = 0xD00000000000002BLL;
      v107[1] = 0x800000021D096A70;
      swift_willThrow();
      sub_21D04FE3C(v90, v91);
    }

    v141 = 0;
    v142 = 0xE000000000000000;
    sub_21D0946E0();
    MEMORY[0x223D3C530](0xD00000000000002ELL, 0x800000021D096A40);
    v143 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540A8, &qword_21D0956D0);
    sub_21D094740();
    v71 = v141;
    v72 = v142;
    sub_21D04FD50();
    swift_allocError();
    *v73 = v71;
    v73[1] = v72;
    swift_willThrow();

    return (*(v35 + 8))(v19, v140);
  }

  else
  {
    if (v30 == *MEMORY[0x277D71B38])
    {
      (*(v23 + 96))(v28, v22);
      v54 = *v28;
      v55 = v28[1];
      v56 = sub_21D094210();
      v57 = sub_21D094580();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_21D044000, v56, v57, "toTMLConstraints grammar", v58, 2u);
        MEMORY[0x223D3CDF0](v58, -1, -1);
      }

      v60 = v134;
      v59 = v135;
      *v134 = v54;
      v60[1] = v55;
      v61 = v136;
      (*(v59 + 104))(v60, *MEMORY[0x277D41520], v136);
      v38 = v137;
      (*(v59 + 32))(v137, v60, v61);
      goto LABEL_14;
    }

    if (v30 == *MEMORY[0x277D71B18])
    {
      (*(v23 + 96))(v28, v22);
      v74 = *v28;
      v75 = v28[1];
      v76 = sub_21D094210();
      v77 = sub_21D094580();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_21D044000, v76, v77, "toTMLConstraints partialGrammar", v78, 2u);
        MEMORY[0x223D3CDF0](v78, -1, -1);
      }

      v80 = v123;
      v79 = v124;
      *v123 = v74;
      v80[1] = v75;
      v81 = v125;
      (*(v79 + 104))(v80, *MEMORY[0x277D41550], v125);
      v38 = v137;
      (*(v79 + 32))(v137, v80, v81);
      v62 = MEMORY[0x277D41530];
      goto LABEL_15;
    }

    if (v30 == *MEMORY[0x277D71B28])
    {
      (*(v23 + 96))(v28, v22);
      v82 = *v28;
      v83 = v28[1];
      v84 = sub_21D094210();
      v85 = sub_21D094580();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_21D044000, v84, v85, "toTMLConstraints grammarIdentifier", v86, 2u);
        MEMORY[0x223D3CDF0](v86, -1, -1);
      }

      v87 = v119;
      *v119 = v82;
      v87[1] = v83;
      v88 = v120;
      v89 = v121;
      (*(v120 + 104))(v87, *MEMORY[0x277D41560], v121);
      v38 = v137;
      (*(v88 + 32))(v137, v87, v89);
      v62 = MEMORY[0x277D41540];
      goto LABEL_15;
    }

    if (v30 == *MEMORY[0x277D71B20])
    {
      (*(v23 + 96))(v28, v22);
      v99 = *v28;
      v100 = v28[1];
      v101 = sub_21D094210();
      v102 = sub_21D094580();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        *v103 = 0;
        _os_log_impl(&dword_21D044000, v101, v102, "toTMLConstraints schemaIdentifier", v103, 2u);
        MEMORY[0x223D3CDF0](v103, -1, -1);
      }

      v104 = v113;
      *v113 = v99;
      v104[1] = v100;
      v105 = v114;
      v106 = v115;
      (*(v114 + 104))(v104, *MEMORY[0x277D41558], v115);
      v38 = v137;
      (*(v105 + 32))(v137, v104, v106);
      v62 = MEMORY[0x277D41538];
      goto LABEL_15;
    }

    v141 = 0;
    v142 = 0xE000000000000000;
    sub_21D0946E0();

    v141 = 0xD00000000000002FLL;
    v142 = 0x800000021D096A10;
    v29(v26, v140, v22);
    v108 = sub_21D094430();
    MEMORY[0x223D3C530](v108);

    MEMORY[0x223D3C530](46, 0xE100000000000000);
    v109 = v141;
    v110 = v142;
    sub_21D04FD50();
    swift_allocError();
    *v111 = v109;
    v111[1] = v110;
    swift_willThrow();
    return (*(v23 + 8))(v28, v22);
  }
}

unint64_t sub_21D04FD50()
{
  result = qword_27CE540A0;
  if (!qword_27CE540A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE540A0);
  }

  return result;
}

uint64_t sub_21D04FDA4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_21D04FDF0()
{
  result = qword_281221468;
  if (!qword_281221468)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281221468);
  }

  return result;
}

uint64_t sub_21D04FE3C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21D04FEC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21D04FF1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21D04FF64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21D04FFB4()
{
  result = qword_27CE540B8;
  if (!qword_27CE540B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE540B8);
  }

  return result;
}

unint64_t sub_21D05000C()
{
  result = qword_27CE540C0;
  if (!qword_27CE540C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE540C0);
  }

  return result;
}

unint64_t sub_21D050064()
{
  result = qword_27CE540C8;
  if (!qword_27CE540C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE540C8);
  }

  return result;
}

unint64_t sub_21D0500BC()
{
  result = qword_27CE540D0;
  if (!qword_27CE540D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE540D0);
  }

  return result;
}

unint64_t sub_21D050110()
{
  result = qword_27CE540D8;
  if (!qword_27CE540D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE540D8);
  }

  return result;
}

void sub_21D050168(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v62 = a5;
  v11 = type metadata accessor for PrivateMLClientAlertService(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  if (qword_281221488 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_281221490 == 1)
  {
    v61 = a1;

    v14 = sub_21D094210();
    v15 = sub_21D094560();

    v59 = v12;
    v60 = a2;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v63 = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_21D05550C(v61, a2, &v63);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_21D05550C(a3, a4, &v63);
      _os_log_impl(&dword_21D044000, v14, v15, "displayPrivateMLClientFailedDialogIfInternal: %s RequestID:%s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v17, -1, -1);
      MEMORY[0x223D3CDF0](v16, -1, -1);
    }

    v18 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v19 = sub_21D0943E0();
    v20 = [v18 initWithSuiteName_];

    if (v20)
    {
      v21 = sub_21D0943E0();
      v22 = sub_21D0943E0();
      [v20 setObject:v21 forKey:v22];

      sub_21D04FDF0();
      if (sub_21D0945B0())
      {
        v23 = sub_21D094210();
        v24 = sub_21D094550();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_21D044000, v23, v24, "Ignore tap to radar per user default settings", v25, 2u);
          MEMORY[0x223D3CDF0](v25, -1, -1);
        }
      }

      else
      {
        v58 = v20;
        type metadata accessor for PrivateMLClientAlert(0);
        v57 = a3;
        v29 = swift_allocObject();
        sub_21D094220();
        *(v29 + 16) = 0xD00000000000001DLL;
        *(v29 + 24) = 0x800000021D096AF0;
        *(v29 + 32) = 0xD00000000000002DLL;
        *(v29 + 40) = 0x800000021D096B10;
        strcpy((v29 + 48), "File a Radar");
        *(v29 + 61) = 0;
        *(v29 + 62) = -5120;
        *(v29 + 64) = 0x7373696D736944;
        *(v29 + 72) = 0xE700000000000000;
        v56 = type metadata accessor for PrivateMLClientAlertService;
        sub_21D052140(v6, &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrivateMLClientAlertService);
        v30 = (*(v59 + 80) + 16) & ~*(v59 + 80);
        v59 = v6;
        v31 = (v30 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
        v32 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
        v33 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
        v34 = swift_allocObject();
        sub_21D0518D0(v32, v34 + v30);
        v35 = (v34 + v31);
        v36 = v59;
        v37 = v60;
        *v35 = v61;
        v35[1] = v37;
        v38 = (v34 + v33);
        v39 = v56;
        *v38 = v57;
        v38[1] = a4;
        *(v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8)) = v62;
        sub_21D052140(v36, v32, v39);
        v40 = swift_allocObject();
        sub_21D0518D0(v32, v40 + v30);

        v41 = sub_21D094210();
        v42 = sub_21D094560();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = v34;
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_21D044000, v41, v42, "Display Alert Box started", v44, 2u);
          v45 = v44;
          v34 = v43;
          MEMORY[0x223D3CDF0](v45, -1, -1);
        }

        sub_21D058308(sub_21D051934, v34, sub_21D0519F0, v40);

        v46 = sub_21D094210();
        v47 = sub_21D094560();
        v48 = os_log_type_enabled(v46, v47);
        v49 = v58;
        if (v48)
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_21D044000, v46, v47, "Display Alert Box finished", v50, 2u);
          MEMORY[0x223D3CDF0](v50, -1, -1);

          swift_setDeallocating();
          v51 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20PrivateMLClientAlert_logger;
          v52 = sub_21D094230();
          (*(*(v52 - 8) + 8))(v29 + v51, v52);
          swift_deallocClassInstance();
        }

        else
        {

          swift_setDeallocating();
          v53 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20PrivateMLClientAlert_logger;
          v54 = sub_21D094230();
          (*(*(v54 - 8) + 8))(v29 + v53, v54);
          swift_deallocClassInstance();
        }
      }
    }

    else
    {
      v26 = sub_21D094210();
      v27 = sub_21D094570();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_21D044000, v26, v27, "Failed to write requestID to userdefaults", v28, 2u);
        MEMORY[0x223D3CDF0](v28, -1, -1);
      }
    }
  }
}

uint64_t type metadata accessor for PrivateMLClientAlertService(uint64_t a1)
{
  result = qword_281221518;
  if (!qword_281221518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D050998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v60 = a6;
  v61 = a7;
  v58 = a4;
  v59 = a5;
  v57 = a3;
  v66 = a2;
  v7 = type metadata accessor for PrivateMLClientAlertService(0);
  v8 = v7 - 8;
  v63 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v64 = v9;
  v65 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540E0, &unk_21D095920);
  MEMORY[0x28223BE20](v10 - 8);
  v62 = v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE53EE0, &unk_21D094FA0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v55 - v13;
  v15 = type metadata accessor for TapToRadarDraft(0);
  v67 = swift_allocBox();
  v17 = v16;
  *v16 = 0x4449656C646E7542;
  *(v16 + 8) = 0xE800000000000000;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  strcpy((v16 + 72), "Classification");
  *(v16 + 87) = -18;
  *(v16 + 88) = 10;
  *(v16 + 96) = 0x6375646F72706552;
  *(v16 + 104) = 0xEF7974696C696269;
  *(v16 + 112) = 6;
  *(v16 + 120) = 0x656C746954;
  *(v16 + 128) = 0xE500000000000000;
  *(v16 + 136) = 0;
  *(v16 + 144) = 0;
  *(v16 + 152) = 0x7470697263736544;
  *(v16 + 160) = 0xEB000000006E6F69;
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v16 + 184) = 0x7364726F7779654BLL;
  *(v16 + 192) = 0xE800000000000000;
  v18 = MEMORY[0x277D84F90];
  *(v16 + 200) = MEMORY[0x277D84F90];
  v19 = (v16 + v15[11]);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE53EE8, &qword_21D095930) + 36);
  v56 = v20;
  v21 = sub_21D092F90();
  v22 = *(v21 - 8);
  v55[0] = *(v22 + 56);
  v55[1] = v22 + 56;
  (v55[0])(v19 + v20, 1, 1, v21);
  *v19 = 0x7349664F656D6954;
  v19[1] = 0xEB00000000657573;
  v23 = (v17 + v15[12]);
  *v23 = 0x656D686361747441;
  v23[1] = 0xEB0000000073746ELL;
  v23[2] = v18;
  v24 = (v17 + v15[13]);
  *v24 = 0xD000000000000011;
  v24[1] = 0x800000021D096B40;
  v24[2] = v18;
  v25 = (v17 + v15[14]);
  *v25 = 0xD000000000000014;
  v25[1] = 0x800000021D096B60;
  v25[2] = v18;
  v26 = (v17 + v15[15]);
  strcpy(v26, "DeleteOnAttach");
  v26[15] = -18;
  v26[16] = 0;
  v27 = (v17 + v15[16]);
  *v27 = 0x4449656369766544;
  v27[1] = 0xE900000000000073;
  v27[2] = v18;
  v28 = v17 + v15[17];
  strcpy(v28, "DeviceClasses");
  *(v28 + 14) = -4864;
  *(v28 + 16) = v18;
  v29 = v17 + v15[18];
  strcpy(v29, "DeviceModels");
  *(v29 + 13) = 0;
  *(v29 + 14) = -5120;
  *(v29 + 16) = v18;
  v30 = (v17 + v15[19]);
  *v30 = 0xD000000000000016;
  v30[1] = 0x800000021D096B80;
  v30[2] = 0;
  v31 = v17 + v15[20];
  *v31 = 0xD00000000000001ALL;
  *(v31 + 8) = 0x800000021D096BA0;
  *(v31 + 16) = 0;
  v32 = v17 + v15[21];
  *v32 = 0x676169446F747541;
  *(v32 + 8) = 0xEF73636974736F6ELL;
  *(v32 + 16) = 0;
  v33 = (v17 + v15[22]);
  *v33 = 0xD00000000000001BLL;
  v33[1] = 0x800000021D096BC0;
  v33[2] = v18;
  v34 = (v17 + v15[23]);
  *v34 = 0xD000000000000018;
  v34[1] = 0x800000021D096BE0;
  v34[2] = 0;
  v34[3] = 0;
  v35 = (v17 + v15[24]);
  *v35 = 0xD000000000000012;
  v35[1] = 0x800000021D096C00;
  v35[2] = 0;
  v35[3] = 0;
  *(v17 + 32) = *(v66 + *(v8 + 28));
  *(v17 + 40) = xmmword_21D095900;
  *(v17 + 56) = xmmword_21D095910;
  *(v17 + 88) = 6;
  *(v17 + 112) = 5;
  v37 = v57;
  v36 = v58;
  *(v17 + 136) = v57;
  *(v17 + 144) = v36;
  v68 = 0;
  v69 = 0xE000000000000000;

  sub_21D0946E0();
  MEMORY[0x223D3C530](0xD000000000000084, 0x800000021D096C20);
  MEMORY[0x223D3C530](v59, v60);
  MEMORY[0x223D3C530](0xD000000000000020, 0x800000021D096CB0);
  MEMORY[0x223D3C530](v37, v36);
  MEMORY[0x223D3C530](10, 0xE100000000000000);
  v38 = v69;
  *(v17 + 168) = v68;
  *(v17 + 176) = v38;

  sub_21D092F80();
  (v55[0])(v14, 0, 1, v21);
  sub_21D051C50(v14, v19 + v56);
  if (*(v61 + 16))
  {
    v25[2] = v61;
  }

  else
  {
    v25[2] = &unk_282E96880;
  }

  v39 = v66;
  v40 = sub_21D094210();
  v41 = sub_21D094560();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v70 = v43;
    *v42 = 136315138;
    swift_beginAccess();

    v45 = MEMORY[0x223D3C570](v44, MEMORY[0x277D837D0]);
    v47 = v46;

    v48 = sub_21D05550C(v45, v47, &v70);

    *(v42 + 4) = v48;
    _os_log_impl(&dword_21D044000, v40, v41, "Using DiagnosticExtension: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x223D3CDF0](v43, -1, -1);
    MEMORY[0x223D3CDF0](v42, -1, -1);
  }

  v49 = sub_21D0944D0();
  v50 = v62;
  (*(*(v49 - 8) + 56))(v62, 1, 1, v49);
  v51 = v65;
  sub_21D052140(v39, v65, type metadata accessor for PrivateMLClientAlertService);
  v52 = (*(v63 + 80) + 40) & ~*(v63 + 80);
  v53 = swift_allocObject();
  v53[2] = 0;
  v53[3] = 0;
  v53[4] = v67;
  sub_21D0518D0(v51, v53 + v52);

  sub_21D05156C(0, 0, v50, &unk_21D095940, v53);
}

uint64_t sub_21D0511C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a5;
  type metadata accessor for TapToRadarDraft(0);
  v5[6] = swift_task_alloc();
  v5[7] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_21D051260, 0, 0);
}

uint64_t sub_21D051260()
{
  v1 = v0[6];
  v2 = v0[7];
  swift_beginAccess();
  sub_21D052140(v2, v1, type metadata accessor for TapToRadarDraft);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_21D051328;

  return sub_21D049ED4();
}

uint64_t sub_21D051328()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 72) = v0;

  sub_21D0521A8(v2);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21D05148C, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_21D05148C(uint64_t a1)
{
  v2 = sub_21D094210();
  v3 = sub_21D094560();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21D044000, v2, v3, "PrivateMLClient failure -- failed to open Tap To Radar3", v4, 2u);
    MEMORY[0x223D3CDF0](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_21D05156C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540E0, &unk_21D095920);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21D051EF8(a3, v25 - v10);
  v12 = sub_21D0944D0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21D051F68(v11);
  }

  else
  {
    sub_21D0944C0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21D0944B0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21D094440() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_21D051F68(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21D051F68(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_21D05182C(uint64_t a1)
{
  oslog = sub_21D094210();
  v1 = sub_21D094560();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_21D044000, oslog, v1, "Dismiss user notification for Tap-To-Radar", v2, 2u);
    MEMORY[0x223D3CDF0](v2, -1, -1);
  }
}

uint64_t sub_21D0518D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateMLClientAlertService(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D051934(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateMLClientAlertService(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_21D050998(a1, v1 + v4, v8, v9, v10, v11, v12);
}

void sub_21D0519F0(uint64_t a1)
{
  type metadata accessor for PrivateMLClientAlertService(0);

  sub_21D05182C(a1);
}

uint64_t sub_21D051A60(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21D051B58;

  return v6(a1);
}

uint64_t sub_21D051B58()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21D051C50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE53EE0, &unk_21D094FA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D051CC0(uint64_t a1)
{
  v4 = *(type metadata accessor for PrivateMLClientAlertService(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21D051DB8;

  return sub_21D0511C0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_21D051DB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_21D051EF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540E0, &unk_21D095920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D051F68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540E0, &unk_21D095920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D051FD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D0522A0;

  return sub_21D051A60(a1, v4);
}

uint64_t sub_21D052088(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D051DB8;

  return sub_21D051A60(a1, v4);
}

uint64_t sub_21D052140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D0521A8(uint64_t a1)
{
  v2 = type metadata accessor for TapToRadarDraft(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D05222C(uint64_t a1)
{
  result = sub_21D094230();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21D0522A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541F8, &qword_21D095B48);
  v0 = sub_21D093130();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21D0959B0;
  result = (*(v1 + 104))(v3 + v2, *MEMORY[0x277D41458], v0);
  qword_27CE540E8 = v3;
  return result;
}

uint64_t sub_21D052388()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541F0, &qword_21D095B40);
  v0 = sub_21D093150();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D094E80;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D41468], v0);
  v6(v5 + v2, *MEMORY[0x277D41478], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x277D41470], v0);
  qword_27CE540F0 = v4;
  return result;
}

uint64_t sub_21D0524C8()
{

  v1 = OBJC_IVAR____TtCC32PrivateMLClientInferenceProvider14MediaProcessorP33_6FBF4AEB487F9A1DD1BA1F88191891F111MediaStream_metadata;
  v2 = sub_21D093230();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21D05256C(char *a1)
{
  if (*(v1 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_isStreaming) == 1)
  {
    type metadata accessor for MediaProcessor.InternalError(0);
    sub_21D054028();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    result = sub_21D0525F4(a1);
    if (!v2)
    {
    }
  }

  return result;
}

uint64_t sub_21D0525F4(char *a1)
{
  v197 = a1;
  v181 = sub_21D0937B0();
  v179 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v180 = &v174 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_21D093B20();
  v182 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v191 = &v174 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_21D093750();
  v189 = *(v190 - 1);
  v3 = MEMORY[0x28223BE20](v190);
  v188 = &v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v178 = &v174 - v5;
  v187 = sub_21D093730();
  v186 = *(v187 - 1);
  v6 = MEMORY[0x28223BE20](v187);
  v185 = &v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v176 = &v174 - v8;
  v183 = type metadata accessor for MediaProcessor.TokenGenerationPromptCompletionEventCandidate(0);
  v9 = MEMORY[0x28223BE20](v183);
  v184 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v192 = &v174 - v11;
  v204 = sub_21D093150();
  v206 = *(v204 - 8);
  v12 = MEMORY[0x28223BE20](v204);
  v203 = (&v174 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v202 = &v174 - v14;
  v196 = sub_21D093220();
  v195 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v208 = (&v174 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v201 = sub_21D093130();
  v16 = *(v201 - 8);
  v17 = MEMORY[0x28223BE20](v201);
  v200 = &v174 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v199 = &v174 - v19;
  v20 = sub_21D093200();
  v194 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v207 = &v174 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21D093230();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v205 = &v174 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v193 = &v174 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v174 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v174 - v31;
  v33 = sub_21D0933E0();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v174 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v36, v197, v33);
  v37 = (*(v34 + 88))(v36, v33);
  if (v37 != *MEMORY[0x277D414D8])
  {
    if (v37 == *MEMORY[0x277D414D0])
    {
      (*(v34 + 96))(v36, v33);
      v54 = *v36;
      v53 = *(v36 + 1);
      v55 = *(v36 + 2);
      v46 = *(v36 + 3);
      v56 = *(v36 + 8);
      v38 = v36[36];
      v57 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_streamsMetadata;
      v58 = v198;
      swift_beginAccess();
      v41 = *(v58 + v57);
      if (*(v41 + 16))
      {

        v59 = sub_21D055BA8(v54, v53);
        if (v60)
        {
          v208 = v54;
          v61 = *(*(v41 + 56) + 8 * v59);

          v48 = OBJC_IVAR____TtCC32PrivateMLClientInferenceProvider14MediaProcessorP33_6FBF4AEB487F9A1DD1BA1F88191891F111MediaStream_chunkIndex;
          v62 = *(v61 + OBJC_IVAR____TtCC32PrivateMLClientInferenceProvider14MediaProcessorP33_6FBF4AEB487F9A1DD1BA1F88191891F111MediaStream_chunkIndex);
          v63 = __OFADD__(v62, 1);
          v64 = v62 + 1;
          if (v63)
          {
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          *(v61 + OBJC_IVAR____TtCC32PrivateMLClientInferenceProvider14MediaProcessorP33_6FBF4AEB487F9A1DD1BA1F88191891F111MediaStream_chunkIndex) = v64;
          v206 = v61;
          v207 = v55;
          v204 = v46;
          if (v38)
          {
            LODWORD(v203) = v56;

            v65 = v198;

            v66 = sub_21D094210();
            v67 = sub_21D094550();

            if (os_log_type_enabled(v66, v67))
            {
              v68 = swift_slowAlloc();
              v69 = swift_slowAlloc();
              *&v209 = v69;
              *v68 = 136380931;
              *(v68 + 4) = sub_21D05550C(v208, v53, &v209);
              *(v68 + 12) = 1026;
              *(v68 + 14) = *(v65 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_isStreaming);

              _os_log_impl(&dword_21D044000, v66, v67, "Received last media chunk, returning media. media_id=%{private}s isStreaming=%{BOOL,public}d", v68, 0x12u);
              __swift_destroy_boxed_opaque_existential_0(v69);
              v70 = v69;
              v55 = v207;
              MEMORY[0x223D3CDF0](v70, -1, -1);
              v71 = v68;
              v61 = v206;
              MEMORY[0x223D3CDF0](v71, -1, -1);
            }

            else
            {
            }

            *(v61 + OBJC_IVAR____TtCC32PrivateMLClientInferenceProvider14MediaProcessorP33_6FBF4AEB487F9A1DD1BA1F88191891F111MediaStream_complete) = 1;
            v46 = v204;
            v56 = v203;
          }

          v114 = v198;

          sub_21D055C20(v55, v46);
          v115 = sub_21D094210();
          v116 = sub_21D094560();

          v117 = os_log_type_enabled(v115, v116);
          v205 = v53;
          if (!v117)
          {

            sub_21D04FE3C(v55, v46);

            v122 = &qword_27CE54000;
            goto LABEL_48;
          }

          v118 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          *&v209 = v119;
          *v118 = 134284291;
          v120 = v46 >> 62;
          if ((v46 >> 62) > 1)
          {
            if (v120 != 2)
            {
              v121 = 0;
              goto LABEL_47;
            }

            v124 = *(v207 + 16);
            v123 = *(v207 + 24);
            v63 = __OFSUB__(v123, v124);
            v121 = v123 - v124;
            if (!v63)
            {
              goto LABEL_47;
            }

            __break(1u);
          }

          else if (!v120)
          {
            v121 = BYTE6(v46);
LABEL_47:
            *(v118 + 4) = v121;
            v55 = v207;
            sub_21D04FE3C(v207, v46);
            *(v118 + 12) = 1026;
            *(v118 + 14) = v56;
            *(v118 + 18) = 2081;
            *(v118 + 20) = sub_21D05550C(v208, v205, &v209);
            *(v118 + 28) = 1026;
            v122 = &qword_27CE54000;
            v114 = v198;
            *(v118 + 30) = *(v198 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_isStreaming);

            _os_log_impl(&dword_21D044000, v115, v116, "Received media chunk. bytes=%{private}ld index=%{public}d media_id=%{private}s isStreaming=%{BOOL,public}d", v118, 0x22u);
            __swift_destroy_boxed_opaque_existential_0(v119);
            MEMORY[0x223D3CDF0](v119, -1, -1);
            MEMORY[0x223D3CDF0](v118, -1, -1);

            v61 = v206;
LABEL_48:
            if (*(v114 + v122[31]) == 1)
            {
              v125 = v192;
              sub_21D054A00(v61, v55, v46);
              v126 = v125;
              v127 = v184;
              sub_21D057BFC(v126, v184);
              if (swift_getEnumCaseMultiPayload() != 1)
              {
                v156 = v186;
                v157 = v176;
                v158 = v127;
                v159 = v187;
                (*(v186 + 32))(v176, v158, v187);
                v160 = *(v156 + 16);
                (v160)(v185, v157, v159);
                v38 = sub_21D055104(0, 1, 1, MEMORY[0x277D84F90]);
                v46 = *(v38 + 16);
                v161 = *(v38 + 24);
                v202 = (v46 + 1);
                v203 = v160;
                if (v46 >= v161 >> 1)
                {
                  v38 = sub_21D055104((v161 > 1), v46 + 1, 1, v38);
                }

                v132 = *(v186 + 8);
                v162 = v157;
                v134 = v187;
                v132(v162, v187);
                v210 = v134;
                v211 = MEMORY[0x277D719D0];
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v209);
                v136 = v214;
                goto LABEL_58;
              }

              v128 = v189;
              v41 = v178;
              v129 = v127;
              v130 = v190;
              (*(v189 + 32))(v178, v129, v190);
              v131 = *(v128 + 16);
              (v131)(v188, v41, v130);
              v38 = sub_21D055104(0, 1, 1, MEMORY[0x277D84F90]);
              v46 = *(v38 + 16);
              v48 = *(v38 + 24);
              v45 = v46 + 1;
              v202 = (v46 + 1);
              v203 = v131;
              if (v46 < v48 >> 1)
              {
LABEL_51:
                v132 = *(v189 + 8);
                v133 = v41;
                v134 = v190;
                v132(v133, v190);
                v210 = v134;
                v211 = MEMORY[0x277D719D8];
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v209);
                v136 = &v215;
LABEL_58:
                v163 = *(v136 - 32);
                (v203)(boxed_opaque_existential_1, v163, v134);
                *(v38 + 16) = v202;
                sub_21D046D78(&v209, v38 + 40 * v46 + 32);
                v132(v163, v134);
                v164 = v207;
                v165 = v204;
                v166 = v205;
                if (*(v206 + OBJC_IVAR____TtCC32PrivateMLClientInferenceProvider14MediaProcessorP33_6FBF4AEB487F9A1DD1BA1F88191891F111MediaStream_complete) == 1)
                {
                  (*(v179 + 104))(v180, *MEMORY[0x277D71B50], v181);

                  sub_21D093B10();
                  v168 = *(v38 + 16);
                  v167 = *(v38 + 24);
                  if (v168 >= v167 >> 1)
                  {
                    v38 = sub_21D055104((v167 > 1), v168 + 1, 1, v38);
                  }

                  v169 = v177;
                  v210 = v177;
                  v211 = MEMORY[0x277D71D68];
                  v170 = __swift_allocate_boxed_opaque_existential_1(&v209);
                  v171 = v182;
                  v172 = v191;
                  (*(v182 + 16))(v170, v191, v169);
                  *(v38 + 16) = v168 + 1;
                  sub_21D046D78(&v209, v38 + 40 * v168 + 32);
                  (*(v171 + 8))(v172, v169);
                  sub_21D054868(v208, v166);

                  sub_21D04FE3C(v207, v204);
                  sub_21D057CC4(v192);
                }

                else
                {
                  sub_21D057CC4(v192);

                  sub_21D04FE3C(v164, v165);
                }

                return v38;
              }

LABEL_69:
              v38 = sub_21D055104((v48 > 1), v45, 1, v38);
              goto LABEL_51;
            }

            v137 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_chunks;
            swift_beginAccess();
            v138 = *(v114 + v137);
            if (*(v138 + 16))
            {

              v139 = v205;
              v140 = sub_21D055BA8(v208, v205);
              if (v141)
              {
                v142 = *(v138 + 56) + 16 * v140;
                v143 = *(v142 + 8);
                v203 = *v142;
                v144 = v203;
                v145 = v143;
                sub_21D055C20(v203, v143);

                v212 = v144;
                v213 = v145;
                v146 = v145;
                v210 = MEMORY[0x277CC9318];
                v211 = MEMORY[0x277CC9300];
                *&v209 = v55;
                *(&v209 + 1) = v46;
                v147 = __swift_project_boxed_opaque_existential_1(&v209, MEMORY[0x277CC9318]);
                v148 = *v147;
                v149 = v147[1];
                sub_21D055C20(v207, v46);
                v150 = v203;
                sub_21D055C20(v203, v146);
                sub_21D057AC4(v148, v149, &v212);
                __swift_destroy_boxed_opaque_existential_0(&v209);
                v151 = v212;
                v152 = v213;
                swift_beginAccess();
                sub_21D055C20(v151, v152);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v216 = *(v114 + v137);
                *(v114 + v137) = 0x8000000000000000;
                sub_21D056DBC(v151, v152, v208, v139, isUniquelyReferenced_nonNull_native);

                *(v114 + v137) = v216;
                swift_endAccess();
                sub_21D04FE3C(v150, v146);
                v154 = v151;
                v55 = v207;
                v155 = v152;
                v46 = v204;
                sub_21D04FE3C(v154, v155);
LABEL_65:

                sub_21D04FE3C(v55, v46);
                return MEMORY[0x277D84F90];
              }
            }

            swift_beginAccess();
            sub_21D055C20(v55, v46);
            v173 = swift_isUniquelyReferenced_nonNull_native();
            v212 = *(v114 + v137);
            *(v114 + v137) = 0x8000000000000000;
            sub_21D056DBC(v55, v46, v208, v205, v173);

            *(v114 + v137) = v212;
            swift_endAccess();
            goto LABEL_65;
          }

          LODWORD(v121) = HIDWORD(v207) - v207;
          if (__OFSUB__(HIDWORD(v207), v207))
          {
            __break(1u);
            goto LABEL_71;
          }

          v121 = v121;
          goto LABEL_47;
        }
      }

      v38 = type metadata accessor for MediaProcessor.InternalError(0);
      sub_21D054028();
      swift_allocError();
      *v112 = v54;
      v112[1] = v53;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_21D04FE3C(v55, v46);
    }

    else
    {
      type metadata accessor for MediaProcessor.InternalError(0);
      sub_21D054028();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v98 = *(v34 + 8);
      v38 = v34 + 8;
      v98(v36, v33);
    }

    return v38;
  }

  (*(v34 + 96))(v36, v33);
  v38 = *v36;
  v192 = *(v36 + 1);
  v39 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54138, &qword_21D0959E0) + 80)];
  v187 = *(v23 + 32);
  (v187)(v32, v39, v22);
  v41 = v23 + 16;
  v40 = *(v23 + 16);
  v197 = v32;
  v190 = v40;
  (v40)(v30, v32, v22);
  v42 = (*(v23 + 88))(v30, v22);
  v43 = v42 == *MEMORY[0x277D414A8];
  v175 = v22;
  v189 = v38;
  v174 = v23;
  v188 = (v23 + 32);
  v191 = (v23 + 16);
  if (v43)
  {
    (*(v23 + 96))(v30, v22);
    v44 = *(v194 + 32);
    v204 = v20;
    v44(v207, v30, v20);
    v46 = 0;
    v47 = *(v198 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_supportedAudioFormats);
    v208 = *(v47 + 16);
    v206 = v16 + 16;
    do
    {
      if (v208 == v46)
      {
        v38 = type metadata accessor for MediaProcessor.InternalError(0);
        sub_21D054028();
        swift_allocError();
        v100 = v99;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54160, &qword_21D0959F0);
        v101 = v192;
        *v100 = v189;
        v100[1] = v101;
        v102 = v207;
        sub_21D0931F0();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v194 + 8))(v102, v204);
        goto LABEL_27;
      }

      v48 = *(v47 + 16);
      if (v46 >= v48)
      {
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v49 = v199;
      v50 = v201;
      (*(v16 + 16))(v199, v47 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v46++, v201);
      v51 = v200;
      sub_21D0931F0();
      v38 = sub_21D093120();
      v41 = *(v16 + 8);
      (v41)(v51, v50);
      (v41)(v49, v50);
    }

    while ((v38 & 1) == 0);
    (*(v194 + 8))(v207, v204);
    v52 = v205;
LABEL_22:
    v79 = v193;
    v80 = v197;
    v81 = v175;
    (v190)(v193, v197, v175);
    v82 = v192;

    v83 = v198;
    v84 = sub_21D094210();
    v85 = sub_21D094560();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      LODWORD(v206) = v85;
      v87 = v86;
      v88 = swift_slowAlloc();
      *&v209 = v88;
      *v87 = 136380931;
      (v190)(v52, v79, v81);
      v89 = sub_21D094430();
      v90 = v79;
      v91 = v89;
      v93 = v92;
      v94 = *(v174 + 8);
      v207 = (v174 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v208 = v94;
      (v94)(v90, v81);
      v95 = sub_21D05550C(v91, v93, &v209);
      v82 = v192;

      *(v87 + 4) = v95;
      v80 = v197;
      *(v87 + 12) = 2081;
      v96 = v189;
      *(v87 + 14) = sub_21D05550C(v189, v82, &v209);
      _os_log_impl(&dword_21D044000, v84, v206, "Received media header. header=%{private}s media_id=%{private}s", v87, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v88, -1, -1);
      MEMORY[0x223D3CDF0](v87, -1, -1);

      v97 = v81;
    }

    else
    {

      v107 = *(v174 + 8);
      v207 = (v174 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v208 = v107;
      (v107)(v79, v81);
      v97 = v81;
      v96 = v189;
    }

    v108 = v80;
    (v190)(v52, v80, v97);
    type metadata accessor for MediaProcessor.MediaStream(0);
    v109 = swift_allocObject();
    *(v109 + OBJC_IVAR____TtCC32PrivateMLClientInferenceProvider14MediaProcessorP33_6FBF4AEB487F9A1DD1BA1F88191891F111MediaStream_chunkIndex) = 1;
    *(v109 + OBJC_IVAR____TtCC32PrivateMLClientInferenceProvider14MediaProcessorP33_6FBF4AEB487F9A1DD1BA1F88191891F111MediaStream_complete) = 0;
    *(v109 + 16) = v96;
    *(v109 + 24) = v82;
    (v187)(v109 + OBJC_IVAR____TtCC32PrivateMLClientInferenceProvider14MediaProcessorP33_6FBF4AEB487F9A1DD1BA1F88191891F111MediaStream_metadata, v52, v97);
    v110 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_streamsMetadata;
    swift_beginAccess();

    v111 = swift_isUniquelyReferenced_nonNull_native();
    v215 = *(v83 + v110);
    *(v83 + v110) = 0x8000000000000000;
    sub_21D056C40(v109, v96, v82, v111);

    *(v83 + v110) = v215;
    swift_endAccess();
    (v208)(v108, v97);
    return MEMORY[0x277D84F90];
  }

  v41 = v198;
  if (v42 == *MEMORY[0x277D414B0])
  {
    v72 = *(v23 + 96);
    v46 = v23 + 96;
    v72(v30, v22);
    (*(v195 + 32))(v208, v30, v196);
    v38 = 0;
    v73 = *(v41 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_supportedImageFormats);
    v74 = *(v73 + 16);
    v207 = v206 + 16;
    while (v74 != v38)
    {
      v48 = *(v73 + 16);
      if (v38 >= v48)
      {
        goto LABEL_67;
      }

      v75 = v206;
      v76 = v202;
      v46 = v204;
      (*(v206 + 16))(v202, v73 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v38++, v204);
      v77 = v203;
      sub_21D093210();
      v41 = sub_21D093140();
      v78 = *(v75 + 8);
      v78(v77, v46);
      v78(v76, v46);
      v52 = v205;
      if (v41)
      {
        (*(v195 + 8))(v208, v196);
        goto LABEL_22;
      }
    }

    v38 = type metadata accessor for MediaProcessor.InternalError(0);
    sub_21D054028();
    swift_allocError();
    v104 = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54150, &qword_21D0959E8);
    v105 = v192;
    *v104 = v189;
    v104[1] = v105;
    v106 = v208;
    sub_21D093210();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v195 + 8))(v106, v196);
LABEL_27:
    (*(v174 + 8))(v197, v175);
    return v38;
  }

LABEL_71:
  result = sub_21D0947C0();
  __break(1u);
  return result;
}

unint64_t sub_21D054028()
{
  result = qword_27CE54100;
  if (!qword_27CE54100)
  {
    type metadata accessor for MediaProcessor.InternalError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54100);
  }

  return result;
}

uint64_t sub_21D054080()
{
  v2 = sub_21D0937B0();
  v3 = *(v2 - 8);
  v68 = v2;
  v69 = v3;
  MEMORY[0x28223BE20](v2);
  v67 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_21D0938B0();
  v5 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_21D0938F0();
  v7 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v64 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_21D093230();
  v9 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_isStreaming))
  {
    type metadata accessor for MediaProcessor.InternalError(0);
    sub_21D054028();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return MEMORY[0x277D84F90];
  }

  else
  {
    v47[1] = v1;
    v11 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_streamsMetadata;
    swift_beginAccess();
    v12 = *(v0 + v11);
    v13 = v12 + 64;
    v14 = 1 << *(v12 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v12 + 64);
    v17 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_chunks;
    v62 = v12;

    v60 = v17;
    v61 = v0;
    swift_beginAccess();
    v18 = 0;
    v19 = (v14 + 63) >> 6;
    v58 = (v9 + 88);
    v59 = (v9 + 16);
    v57 = *MEMORY[0x277D414A8];
    v50 = *MEMORY[0x277D414B0];
    v49 = *MEMORY[0x277D71C20];
    v56 = (v5 + 104);
    v55 = *MEMORY[0x277D71B50];
    v54 = (v69 + 104);
    v53 = (v7 + 8);
    v52 = (v9 + 8);
    v48 = *MEMORY[0x277D71C18];
    v51 = xmmword_21D0959B0;
    while (v16)
    {
LABEL_14:
      v25 = __clz(__rbit64(v16)) | (v18 << 6);
      v26 = (*(v62 + 48) + 16 * v25);
      v28 = *v26;
      v27 = v26[1];
      v29 = *(*(v62 + 56) + 8 * v25);
      v30 = v70;
      v31 = v71;
      (*v59)(v70, v29 + OBJC_IVAR____TtCC32PrivateMLClientInferenceProvider14MediaProcessorP33_6FBF4AEB487F9A1DD1BA1F88191891F111MediaStream_metadata, v71);
      v32 = (*v58)(v30, v31);
      v69 = v29;
      if (v32 == v57)
      {
        v33 = *(v61 + v60);
        v34 = *(v33 + 16);

        if (v34)
        {

          v35 = sub_21D055BA8(v28, v27);
          v37 = v36;

          if (v37)
          {
            v38 = (*(v33 + 56) + 16 * v35);
            v20 = *v38;
            v21 = v38[1];
            sub_21D055C20(*v38, v21);
          }

          else
          {
            v20 = 0;
            v21 = 0xC000000000000000;
          }
        }

        else
        {
          v20 = 0;
          v21 = 0xC000000000000000;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54168, qword_21D0959F8);
        sub_21D0938D0();
        *(swift_allocObject() + 16) = v51;
        sub_21D055C20(v20, v21);
        v22 = v65;
        sub_21D093860();
        (*v56)(v22, v48, v66);
      }

      else
      {
        if (v32 != v50)
        {
          goto LABEL_31;
        }

        v39 = *(v61 + v60);
        v40 = *(v39 + 16);

        if (v40)
        {

          v41 = sub_21D055BA8(v28, v27);
          v43 = v42;

          if (v43)
          {
            v44 = (*(v39 + 56) + 16 * v41);
            v20 = *v44;
            v21 = v44[1];
            sub_21D055C20(*v44, v21);
          }

          else
          {
            v20 = 0;
            v21 = 0xC000000000000000;
          }
        }

        else
        {
          v20 = 0;
          v21 = 0xC000000000000000;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54168, qword_21D0959F8);
        sub_21D0938D0();
        *(swift_allocObject() + 16) = v51;
        sub_21D055C20(v20, v21);
        v45 = v65;
        sub_21D093860();
        (*v56)(v45, v49, v66);
      }

      sub_21D0938C0();
      (*v54)(v67, v55, v68);
      v23 = v64;
      sub_21D0938E0();

      sub_21D04FE3C(v20, v21);
      v16 &= v16 - 1;
      (*v53)(v23, v63);
      (*v52)(v70, v71);
    }

    while (1)
    {
      v24 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v24 >= v19)
      {

        return MEMORY[0x277D84F90];
      }

      v16 = *(v13 + 8 * v24);
      ++v18;
      if (v16)
      {
        v18 = v24;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_31:

    result = sub_21D0947C0();
    __break(1u);
  }

  return result;
}

void sub_21D054868(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  sub_21D08F388(a1, a2);
  swift_endAccess();

  swift_beginAccess();
  sub_21D08F2D8(a1, a2, &v9);
  v4 = v9;
  swift_endAccess();
  sub_21D058258(v4, *(&v4 + 1));

  v5 = sub_21D094210();
  v6 = sub_21D094560();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10[0] = v8;
    *v7 = 136380675;
    *(v7 + 4) = sub_21D05550C(a1, a2, v10);
    _os_log_impl(&dword_21D044000, v5, v6, "Media stream complete. media_id=%{private}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223D3CDF0](v8, -1, -1);
    MEMORY[0x223D3CDF0](v7, -1, -1);
  }
}

uint64_t sub_21D054A00(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_21D093890();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v35 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = sub_21D093870();
  v33 = *(v12 - 8);
  v34 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = sub_21D093230();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v21, a1 + OBJC_IVAR____TtCC32PrivateMLClientInferenceProvider14MediaProcessorP33_6FBF4AEB487F9A1DD1BA1F88191891F111MediaStream_metadata, v18);
  v22 = *(v19 + 88);
  v39 = v18;
  v23 = v22(v21, v18);
  if (v23 == *MEMORY[0x277D414A8])
  {
    sub_21D055C20(a2, a3);
    sub_21D093860();
    v24 = *(v38 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_responseID);
    v37 = *(a1 + 16);
    v38 = v24;
    v26 = v33;
    v25 = v34;
    (*(v33 + 16))(v15, v17, v34);

    sub_21D093720();
    (*(v26 + 8))(v17, v25);
LABEL_5:
    type metadata accessor for MediaProcessor.TokenGenerationPromptCompletionEventCandidate(0);
    swift_storeEnumTagMultiPayload();
    return (*(v19 + 8))(v21, v39);
  }

  v27 = a3;
  v28 = v38;
  if (v23 == *MEMORY[0x277D414B0])
  {
    sub_21D055C20(a2, v27);
    sub_21D093860();
    v38 = *(v28 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_responseID);
    v34 = *(a1 + 16);
    v29 = v36;
    v30 = v37;
    (*(v36 + 16))(v35, v11, v37);

    sub_21D093720();
    (*(v29 + 8))(v11, v30);
    goto LABEL_5;
  }

  result = sub_21D0947C0();
  __break(1u);
  return result;
}

uint64_t MediaProcessor.deinit()
{
  v1 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_logger;
  v2 = sub_21D094230();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t MediaProcessor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_logger;
  v2 = sub_21D094230();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

char *sub_21D054FD0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541D0, &qword_21D095B20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21D055104(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54220, &qword_21D095B70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54228, &qword_21D095B78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21D05529C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

_BYTE **sub_21D0554A0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_21D0554B0(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_21D05550C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_21D05550C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21D0555D8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_21D0581FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_21D0555D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21D0556E4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_21D0946F0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_21D0556E4(uint64_t a1, unint64_t a2)
{
  v3 = sub_21D055730(a1, a2);
  sub_21D055860(&unk_282E96858);
  return v3;
}

void *sub_21D055730(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_21D05594C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_21D0946F0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_21D094480();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21D05594C(v10, 0);
        result = sub_21D0946D0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_21D055860(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21D0559C0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21D05594C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54210, &unk_21D095B60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21D0559C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54210, &unk_21D095B60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_21D055AB4(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_21D055AD4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_21D055B58@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_21D055BA8(uint64_t a1, uint64_t a2)
{
  sub_21D094850();
  sub_21D094450();
  v4 = sub_21D094870();

  return sub_21D0571B8(a1, a2, v4);
}

uint64_t sub_21D055C20(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_21D055C74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541C8, &unk_21D095B10);
  v37 = v4;
  result = sub_21D094760();
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

      sub_21D094850();
      sub_21D094450();
      result = sub_21D094870();
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

uint64_t sub_21D055F34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54218, &qword_21D0964D0);
  v33 = v4;
  result = sub_21D094760();
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

        sub_21D055C20(v34, *(&v34 + 1));
      }

      sub_21D094850();
      sub_21D094450();
      result = sub_21D094870();
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

uint64_t sub_21D0561F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54208, &qword_21D095B58);
  v34 = v4;
  result = sub_21D094760();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_21D094850();
      sub_21D094450();
      result = sub_21D094870();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_21D056498(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541E8, &qword_21D095B38);
  v34 = v4;
  result = sub_21D094760();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_21D094850();
      sub_21D094450();
      result = sub_21D094870();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_21D056738(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_21D0931D0();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541D8, &qword_21D095B28);
  v42 = v4;
  result = sub_21D094760();
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
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
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

      sub_21D094850();
      sub_21D094450();
      result = sub_21D094870();
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
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
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

uint64_t sub_21D056AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21D055BA8(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_21D055C74(v18, a5 & 1);
      v13 = sub_21D055BA8(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_21D0947E0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_21D057270();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_21D056C40(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21D055BA8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_21D0561F0(v16, a4 & 1);
      v11 = sub_21D055BA8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_21D0947E0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_21D05756C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_21D056DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21D055BA8(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_21D055F34(v18, a5 & 1);
      v13 = sub_21D055BA8(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_21D0947E0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_21D0573E8();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    return sub_21D04FE3C(v25, v26);
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v23[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v23[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v23[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v31;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_21D056F88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_21D055BA8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_21D057844();
      goto LABEL_7;
    }

    sub_21D056738(v15, a4 & 1);
    v26 = sub_21D055BA8(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_21D0947E0();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_21D0931D0();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_21D057108(v12, a2, a3, a1, v18);
}

uint64_t sub_21D057108(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_21D0931D0();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_21D0571B8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21D0947D0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_21D057270()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541C8, &unk_21D095B10);
  v2 = *v0;
  v3 = sub_21D094750();
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
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_21D0573E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54218, &qword_21D0964D0);
  v2 = *v0;
  v3 = sub_21D094750();
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
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_21D055C20(v22, *(&v22 + 1));
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

void *sub_21D05756C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54208, &qword_21D095B58);
  v2 = *v0;
  v3 = sub_21D094750();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_21D0576DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541E8, &qword_21D095B38);
  v2 = *v0;
  v3 = sub_21D094750();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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

char *sub_21D057844()
{
  v1 = v0;
  v35 = sub_21D0931D0();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541D8, &qword_21D095B28);
  v3 = *v0;
  v4 = sub_21D094750();
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
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
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

uint64_t sub_21D057AC4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_21D092F60();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_21D05826C(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_21D05826C(v4, v5);
  }

  return sub_21D092F60();
}

uint64_t sub_21D057BFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaProcessor.TokenGenerationPromptCompletionEventCandidate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_21D057CC4(uint64_t a1)
{
  v2 = type metadata accessor for MediaProcessor.TokenGenerationPromptCompletionEventCandidate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D057D68(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D057DA0(uint64_t a1)
{
  result = sub_21D094230();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21D057F20(uint64_t a1)
{
  result = sub_21D093230();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21D057FD4(uint64_t a1)
{
  result = sub_21D093730();
  if (v2 <= 0x3F)
  {
    result = sub_21D093750();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21D058098(uint64_t a1)
{
  sub_21D058160();
  if (v1 <= 0x3F)
  {
    sub_21D058190(319, &qword_27CE541B8, MEMORY[0x277D41460]);
    if (v2 <= 0x3F)
    {
      sub_21D058190(319, &qword_27CE541C0, MEMORY[0x277D41480]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_21D058160()
{
  result = qword_27CE541B0;
  if (!qword_27CE541B0)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27CE541B0);
  }

  return result;
}

void sub_21D058190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_21D0581FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21D058258(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21D04FE3C(result, a2);
  }

  return result;
}

uint64_t sub_21D05826C(uint64_t a1, uint64_t a2)
{
  result = sub_21D092EB0();
  if (!result || (result = sub_21D092ED0(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_21D092EC0();
      return sub_21D092F60();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_21D058308(void (*a1)(__CFUserNotification *), uint64_t a2, void (*a3)(__CFUserNotification *), uint64_t a4)
{
  v5 = v4;
  v58 = *MEMORY[0x277D85DE8];
  v9 = sub_21D094210();
  v10 = sub_21D094560();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21D044000, v9, v10, "Displaying alert", v11, 2u);
    MEMORY[0x223D3CDF0](v11, -1, -1);
  }

  error = 0;
  sub_21D04FDF0();
  sub_21D094610();
  v13 = v12;
  v14 = sub_21D094210();
  v15 = sub_21D094560();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = v13;
    _os_log_impl(&dword_21D044000, v14, v15, "Setting tap-to-radar timeout to %f seconds", v16, 0xCu);
    MEMORY[0x223D3CDF0](v16, -1, -1);
  }

  if (!*MEMORY[0x277CBF188])
  {
    __break(1u);
    goto LABEL_27;
  }

  v17 = sub_21D0943F0();
  v19 = v18;
  v20 = v5[2];
  v21 = v5[3];

  v22 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  responseFlags = v22;
  sub_21D056AB8(v20, v21, v17, v19, isUniquelyReferenced_nonNull_native);

  if (!*MEMORY[0x277CBF198])
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v24 = sub_21D0943F0();
  v26 = v25;
  v27 = v5[4];
  v28 = v5[5];

  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_21D056AB8(v27, v28, v24, v26, v29);

  if (!*MEMORY[0x277CBF1E8])
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  v30 = sub_21D0943F0();
  v32 = v31;
  v33 = v5[6];
  v34 = v5[7];

  v35 = swift_isUniquelyReferenced_nonNull_native();
  sub_21D056AB8(v33, v34, v30, v32, v35);

  if (!*MEMORY[0x277CBF1C0])
  {
    goto LABEL_29;
  }

  v36 = sub_21D0943F0();
  v38 = v37;
  v39 = v5[8];
  v40 = v5[9];

  v41 = swift_isUniquelyReferenced_nonNull_native();
  sub_21D056AB8(v39, v40, v36, v38, v41);

  v42 = *MEMORY[0x277CBECE8];
  v43 = sub_21D0943B0();

  v44 = CFUserNotificationCreate(v42, v13, 0, &error, v43);

  v45 = sub_21D094210();
  v46 = sub_21D094560();
  v47 = os_log_type_enabled(v45, v46);
  if (v44)
  {
    if (v47)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_21D044000, v45, v46, "Wait for user response", v48, 2u);
      MEMORY[0x223D3CDF0](v48, -1, -1);
    }

    responseFlags = 0;
    v49 = CFUserNotificationReceiveResponse(v44, v13, &responseFlags);
    v50 = sub_21D094210();
    v51 = sub_21D094560();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 67109120;
      *(v52 + 4) = v49;
      _os_log_impl(&dword_21D044000, v50, v51, "User response received: %d", v52, 8u);
      MEMORY[0x223D3CDF0](v52, -1, -1);
    }

    if (v49)
    {
      goto LABEL_15;
    }

    if (!responseFlags)
    {
      a3 = a1;
    }

    if (!a3)
    {
LABEL_15:
    }

    else
    {
      if (responseFlags)
      {
        v54 = a4;
      }

      else
      {
        v54 = a2;
      }

      a3(v44);

      sub_21D0589D0(a3, v54);
    }
  }

  else
  {
    if (v47)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_21D044000, v45, v46, "Failed to create User notification for PrivateMLClient", v53, 2u);
      MEMORY[0x223D3CDF0](v53, -1, -1);
    }
  }
}

uint64_t sub_21D058820()
{

  v1 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20PrivateMLClientAlert_logger;
  v2 = sub_21D094230();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrivateMLClientAlert(uint64_t a1)
{
  result = qword_27CE54230;
  if (!qword_27CE54230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D058930(uint64_t a1)
{
  result = sub_21D094230();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21D0589D0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t dispatch thunk of InferenceProviderWithPrewarm.prewarmHint(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D051DB8;

  return v9(a1, a2, a3);
}

uint64_t sub_21D058B08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54240, &qword_21D095C90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  v6 = sub_21D094730();
  v61 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v9;
  v10 = sub_21D092FC0();
  v63 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v13;
  v46 = sub_21D094230();
  v14 = MEMORY[0x28223BE20](v46);
  v54 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v62 = &v42 - v16;
  v55 = v17;
  v18 = *(v17 + 16);
  v47 = v17 + 16;
  v48 = v18;
  v18();
  v19 = _s18InstrumentedTokensVMa(0);
  v20 = v19[5];
  v56 = v11;
  v45 = *(v11 + 16);
  v45(v13, v2 + v20, v10);
  v21 = v19[6];
  v52 = v2;
  v22 = (v2 + v21);
  v23 = v22[1];
  v60 = *v22;
  v43 = v23;
  v24 = v19[8];
  v57 = v7;
  v44 = *(v7 + 16);
  v44(v9, v2 + v24, v6);
  v25 = sub_21D094290();
  v49 = *(*(v25 - 8) + 56);
  v58 = v5;
  v49(v5, 1, 1, v25);
  v26 = v19[9];
  v27 = _s18InstrumentedTokensV13AsyncIteratorVMa(0);

  v28 = v53;
  v29 = v52;
  sub_21D093450();
  sub_21D0590D0(v29 + v26, v66);
  v30 = (v29 + v19[10]);
  v52 = *v30;
  v51 = *(v30 + 4);
  v50 = v27[9];
  v49((v28 + v50), 1, 1, v25);
  v49 = v27[13];
  v31 = v46;
  v32 = v48;
  (v48)(v28, v62, v46);
  v45((v28 + v27[5]), v64, v63);
  v33 = (v28 + v27[6]);
  v34 = v59;
  v35 = v43;
  *v33 = v60;
  v33[1] = v35;
  v44((v28 + v27[7]), v34, v61);
  v36 = v31;
  sub_21D0590D0(v66, v28 + v27[11]);
  v32();
  v37 = qword_281221758;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = v51;
  v65 = v51;
  v39 = v52;
  sub_21D0942A0();
  __swift_destroy_boxed_opaque_existential_0(v66);
  (*(v57 + 8))(v59, v61);
  (*(v56 + 8))(v64, v63);
  (*(v55 + 8))(v62, v36);
  result = sub_21D05B198(v58, v28 + v50);
  *(v49 + v28) = 0;
  v41 = v28 + v27[12];
  *v41 = v39;
  *(v41 + 4) = v38;
  return result;
}

uint64_t sub_21D0590D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21D059134(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_21D094290();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54248, &unk_21D095CA0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54138, &qword_21D0959E0);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = sub_21D0933E0();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54240, &qword_21D095C90);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v5 = sub_21D094230();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54250, &unk_21D095CB0);
  v2[29] = swift_task_alloc();
  v6 = sub_21D093460();
  v2[30] = v6;
  v2[31] = *(v6 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v7 = sub_21D092FC0();
  v2[34] = v7;
  v2[35] = *(v7 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D05950C, 0, 0);
}

uint64_t sub_21D05950C()
{
  v1 = v0[40];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[3];
  v5 = _s18InstrumentedTokensV13AsyncIteratorVMa(0);
  v0[41] = v5;
  v6 = *(v5 + 20);
  v7 = *(v3 + 16);
  v0[42] = v7;
  v0[43] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4 + v6, v2);
  v8 = swift_task_alloc();
  v0[44] = v8;
  *v8 = v0;
  v8[1] = sub_21D059604;
  v9 = v0[29];

  return MEMORY[0x2821A2278](v9);
}