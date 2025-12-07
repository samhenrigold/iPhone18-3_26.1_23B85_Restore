double sub_243FECE60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  a4(a3);

  return result;
}

uint64_t sub_243FECEB8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243FECF10()
{
  MEMORY[0x245D58620](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_243FECF48()
{

  return swift_deallocObject();
}

void sub_243FECF88()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_2440D2F80();
    [v3 reportGuidanceUpdateWithVisible:v1 trigger:v4];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_243FED020(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243FED068(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243FED0BC()
{

  return swift_deallocObject();
}

void *sub_243FED0F4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 28);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result reportProxEventInRange:v1 inRangeTime:v2];
    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_243FED1CC@<Q0>(uint64_t a1@<X8>)
{
  sub_243FF4D64(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_243FED228@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a3;
  v81 = sub_2440D1B10();
  v5 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v78 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2AD0, &qword_2440DDFB8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = (&v78 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2AD8, &qword_2440DDFC0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v78 - v16;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2AE0, &qword_2440DDFC8);
  MEMORY[0x28223BE20](v79);
  v19 = &v78 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2AE8, &qword_2440DDFD0);
  MEMORY[0x28223BE20](v20 - 8);
  v83 = &v78 - v21;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2AF0, &qword_2440DDFD8);
  MEMORY[0x28223BE20](v82);
  v85 = &v78 - v22;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2AF8, &qword_2440DDFE0);
  MEMORY[0x28223BE20](v84);
  v87 = &v78 - v23;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2B00, &qword_2440DDFE8);
  MEMORY[0x28223BE20](v86);
  v88 = &v78 - v24;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2B08, &qword_2440DDFF0);
  MEMORY[0x28223BE20](v89);
  v90 = &v78 - v25;
  sub_2440D1650();
  v27 = v26 / 22.0;
  sub_2440D1650();
  sub_244070B60();
  v28 = v27 * 15.0;
  v29 = sub_244070B54();
  if (*v29 < v27 * 15.0)
  {
    v28 = *v29;
  }

  v30 = v27 + v27;
  if (v30 > 40.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = 40.0;
  }

  *v13 = sub_2440D2AE0();
  v13[1] = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2B10, &qword_2440DDFF8);
  sub_243FEDB8C(a2, a1, v13 + *(v33 + 44), v31, v28);
  v34 = sub_2440D1860();
  v35 = sub_2440D20D0();
  v36 = v13 + *(v11 + 44);
  *v36 = v34;
  v36[8] = v35;
  sub_2440D2B00();
  sub_2440D18E0();
  sub_243F681C8(v13, v17, &qword_27EDC2AD0, &qword_2440DDFB8);
  v37 = &v17[*(v15 + 44)];
  v38 = v98;
  *(v37 + 4) = v97;
  *(v37 + 5) = v38;
  *(v37 + 6) = v99;
  v39 = v94;
  *v37 = *&v93[104];
  *(v37 + 1) = v39;
  v40 = v96;
  *(v37 + 2) = v95;
  *(v37 + 3) = v40;
  sub_2440D1B00();
  v41 = v81;
  (*(v5 + 16))(v80, v9, v81);
  sub_243FF713C(&qword_27EDC0148, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
  v42 = v41;
  v43 = sub_2440D1610();
  (*(v5 + 8))(v9, v42);
  v44 = v79;
  v45 = sub_243F681C8(v17, v19, &qword_27EDC2AD8, &qword_2440DDFC0);
  *&v19[*(v44 + 36)] = v43;
  v46 = *(a2 + 72);
  v47 = (*(*v46 + 552))(v45);
  if (sub_2440B446C(v47 & 1))
  {
    (*(*v46 + 456))(v100);
    if (v100[5])
    {
      sub_243F5EED4(v100, &qword_27EDBFF68, &qword_2440DDE10);
    }
  }

  sub_243FF5358();
  v48 = v83;
  sub_2440D2480();
  sub_243F5EED4(v19, &qword_27EDC2AE0, &qword_2440DDFC8);
  v49 = sub_2440D2690();
  v50 = sub_2440D20B0();
  v51 = v85;
  sub_243F681C8(v48, v85, &qword_27EDC2AE8, &qword_2440DDFD0);
  v52 = v51 + *(v82 + 36);
  *v52 = v49;
  *(v52 + 8) = v50;
  v101 = *(a2 + 24);
  v53 = *(&v101 + 1);
  type metadata accessor for PINViewModel(0);
  sub_243FF713C(&qword_27EDC0B80, type metadata accessor for PINViewModel, &unk_2440D6120);
  v54 = sub_2440D12E0();
  v55 = v51;
  v56 = v87;
  sub_243F681C8(v55, v87, &qword_27EDC2AF0, &qword_2440DDFD8);
  v57 = (v56 + *(v84 + 36));
  *v57 = v54;
  v57[1] = v53;
  v58 = swift_allocObject();
  v59 = *(a2 + 80);
  *(v58 + 80) = *(a2 + 64);
  *(v58 + 96) = v59;
  *(v58 + 112) = *(a2 + 96);
  v60 = *(a2 + 16);
  *(v58 + 16) = *a2;
  *(v58 + 32) = v60;
  v61 = *(a2 + 48);
  *(v58 + 48) = *(a2 + 32);
  *(v58 + 64) = v61;
  v62 = v56;
  v63 = v88;
  sub_243F681C8(v62, v88, &qword_27EDC2AF8, &qword_2440DDFE0);
  v64 = (v63 + *(v86 + 36));
  *v64 = sub_243FF5554;
  v64[1] = v58;
  v64[2] = 0;
  v64[3] = 0;
  v65 = swift_allocObject();
  v66 = *(a2 + 80);
  *(v65 + 80) = *(a2 + 64);
  *(v65 + 96) = v66;
  *(v65 + 112) = *(a2 + 96);
  v67 = *(a2 + 16);
  *(v65 + 16) = *a2;
  *(v65 + 32) = v67;
  v68 = *(a2 + 48);
  *(v65 + 48) = *(a2 + 32);
  *(v65 + 64) = v68;
  v69 = v90;
  sub_243F681C8(v63, v90, &qword_27EDC2B00, &qword_2440DDFE8);
  v70 = (v69 + *(v89 + 36));
  *v70 = 0;
  v70[1] = 0;
  v70[2] = sub_243FF5664;
  v70[3] = v65;
  v71 = *(*v53 + 352);
  sub_243FF4EFC(a2, v93);
  sub_243FF4EFC(a2, v93);
  v72 = sub_243F5F574(&v101, v93, &qword_27EDC2B40, &unk_2440DE010);
  v92 = v71(v72) & 1;
  v73 = swift_allocObject();
  v74 = *(a2 + 80);
  *(v73 + 80) = *(a2 + 64);
  *(v73 + 96) = v74;
  *(v73 + 112) = *(a2 + 96);
  v75 = *(a2 + 16);
  *(v73 + 16) = *a2;
  *(v73 + 32) = v75;
  v76 = *(a2 + 48);
  *(v73 + 48) = *(a2 + 32);
  *(v73 + 64) = v76;
  sub_243FF4EFC(a2, v93);
  sub_243FF579C();
  sub_2440D25E0();

  return sub_243F5EED4(v69, &qword_27EDC2B08, &qword_2440DDFF0);
}

uint64_t sub_243FEDB8C@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a5@<D1>, double a7@<D3>)
{
  v235 = a2;
  v274 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2B80, &qword_2440DE028);
  v230 = *(v10 - 8);
  v231 = v10;
  MEMORY[0x28223BE20](v10);
  v228 = &v224 - v11;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2B88, &qword_2440DE030);
  MEMORY[0x28223BE20](v225);
  v227 = &v224 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v226 = (&v224 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2B90, &qword_2440DE038);
  v268 = *(v15 - 8);
  v269 = v15;
  MEMORY[0x28223BE20](v15);
  v229 = &v224 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2B98, &qword_2440DE040);
  MEMORY[0x28223BE20](v17 - 8);
  v273 = &v224 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v281 = &v224 - v20;
  v21 = sub_2440D1F60();
  v266 = *(v21 - 8);
  v267 = v21;
  MEMORY[0x28223BE20](v21);
  v265 = &v224 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2440D1B10();
  v263 = *(v23 - 8);
  v264 = v23;
  MEMORY[0x28223BE20](v23);
  v261 = &v224 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v262 = &v224 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2BA0, &qword_2440DE048);
  MEMORY[0x28223BE20](v27 - 8);
  v233 = (&v224 - v28);
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2BA8, &qword_2440DE050);
  MEMORY[0x28223BE20](v248);
  v232 = &v224 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v234 = &v224 - v31;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2BB0, &qword_2440DE058);
  MEMORY[0x28223BE20](v245);
  v247 = &v224 - v32;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2BB8, &qword_2440DE060);
  MEMORY[0x28223BE20](v246);
  v224 = (&v224 - v33);
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2BC0, &qword_2440DE068);
  v251 = *(v253 - 8);
  MEMORY[0x28223BE20](v253);
  v275 = &v224 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2BC8, &qword_2440DE070);
  MEMORY[0x28223BE20](v35 - 8);
  v276 = &v224 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2BD0, &qword_2440DE078);
  MEMORY[0x28223BE20](v37 - 8);
  v252 = &v224 - v38;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2BD8, &qword_2440DE080);
  MEMORY[0x28223BE20](v250);
  v256 = &v224 - v39;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2BE0, &qword_2440DE088);
  MEMORY[0x28223BE20](v255);
  v254 = &v224 - v40;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2BE8, &qword_2440DE090);
  MEMORY[0x28223BE20](v258);
  v257 = &v224 - v41;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2BF0, &qword_2440DE098);
  MEMORY[0x28223BE20](v259);
  v260 = &v224 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2BF8, &qword_2440DE0A0);
  v271 = *(v43 - 8);
  v272 = v43;
  MEMORY[0x28223BE20](v43);
  v270 = &v224 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v283 = &v224 - v46;
  v239 = sub_2440D2AC0();
  v47 = *(v239 - 8);
  MEMORY[0x28223BE20](v239);
  v49 = &v224 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2C00, &qword_2440DE0A8);
  MEMORY[0x28223BE20](v237);
  v51 = &v224 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v54 = &v224 - v53;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2C08, &qword_2440DE0B0);
  MEMORY[0x28223BE20](v236);
  v56 = &v224 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2C10, &qword_2440DE0B8);
  MEMORY[0x28223BE20](v57 - 8);
  v59 = &v224 - v58;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2C18, &qword_2440DE0C0);
  MEMORY[0x28223BE20](v241);
  v240 = &v224 - v60;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2C20, &qword_2440DE0C8);
  MEMORY[0x28223BE20](v238);
  v244 = (&v224 - v61);
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2C28, &qword_2440DE0D0);
  v249 = *(v277 - 1);
  MEMORY[0x28223BE20](v277);
  v243 = &v224 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v242 = &v224 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2C30, &qword_2440DE0D8);
  MEMORY[0x28223BE20](v65 - 8);
  v279 = &v224 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v69 = &v224 - v68;
  v334 = *(a1 + 5);
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
  sub_2440D2820();
  v280 = a1;
  v282 = v69;
  if (v317 == 1)
  {
    v70 = sub_2440D2AA0();
    if ((*(*a1[9] + 352))(v70))
    {
      v71 = 1.0;
    }

    else
    {
      v71 = 0.0;
    }

    (*(v47 + 32))(v54, v49, v239);
    v72 = v237;
    *&v54[*(v237 + 36)] = v71;
    sub_243F681C8(v54, v56, &qword_27EDC2C00, &qword_2440DE0A8);
    v73 = v236;
    *&v56[*(v236 + 56)] = 256;
    sub_2440D2AA0();
    *&v51[*(v72 + 36)] = 1060320051;
    sub_243F5F574(v51, v59, &qword_27EDC2C00, &qword_2440DE0A8);
    *&v59[*(v73 + 56)] = 256;
    v74 = &v59[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2CD0, &qword_2440DE1A8) + 36)];
    sub_243F5F574(v56, v74, &qword_27EDC2C08, &qword_2440DE0B0);
    v75 = sub_2440D2B00();
    v77 = v76;
    sub_243F5EED4(v51, &qword_27EDC2C00, &qword_2440DE0A8);
    a1 = v280;
    sub_243F5EED4(v56, &qword_27EDC2C08, &qword_2440DE0B0);
    v78 = (v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2CD8, &unk_2440DE1B0) + 36));
    *v78 = v75;
    v78[1] = v77;
    v79 = v282;
    v80 = sub_2440D1860();
    v81 = sub_2440D20B0();
    v82 = v59;
    v83 = v240;
    sub_243F681C8(v82, v240, &qword_27EDC2C10, &qword_2440DE0B8);
    v84 = v83 + *(v241 + 36);
    *v84 = v80;
    *(v84 + 8) = v81;
    v85 = v83;
    v86 = v244;
    sub_243F681C8(v85, v244, &qword_27EDC2C18, &qword_2440DE0C0);
    *(v86 + *(v238 + 36)) = 0x3FF0000000000000;
    v87 = swift_allocObject();
    v88 = *(a1 + 5);
    *(v87 + 80) = *(a1 + 4);
    *(v87 + 96) = v88;
    *(v87 + 112) = *(a1 + 96);
    v89 = *(a1 + 1);
    *(v87 + 16) = *a1;
    *(v87 + 32) = v89;
    v90 = *(a1 + 3);
    *(v87 + 48) = *(a1 + 2);
    *(v87 + 64) = v90;
    v91 = v243;
    sub_243F681C8(v86, v243, &qword_27EDC2C20, &qword_2440DE0C8);
    v92 = v277;
    v93 = (v91 + v277[9]);
    *v93 = 0;
    v93[1] = 0;
    v93[2] = sub_243FF6184;
    v93[3] = v87;
    v94 = v91;
    v95 = v242;
    sub_243F681C8(v94, v242, &qword_27EDC2C28, &qword_2440DE0D0);
    sub_243F681C8(v95, v79, &qword_27EDC2C28, &qword_2440DE0D0);
    (*(v249 + 56))(v79, 0, 1, v92);
    v96 = sub_243FF4EFC(a1, &v334);
  }

  else
  {
    v96 = (*(v249 + 56))(v69, 1, 1, v277);
  }

  v97 = *(*a1[4] + 544);
  v277 = a1[4];
  v98 = v97(v96);
  v99 = v252;
  v100 = v275;
  if ((v98 & 1) != 0 && (v334 = *(a1 + 7), v101 = sub_2440D2820(), v317 == 1) && ((*(*v277 + 496))(v101) & 1) == 0)
  {
    v121 = *(a1 + 96);
    v122 = swift_allocObject();
    v123 = *(a1 + 5);
    *(v122 + 80) = *(a1 + 4);
    *(v122 + 96) = v123;
    *(v122 + 112) = *(a1 + 96);
    v124 = *(a1 + 1);
    *(v122 + 16) = *a1;
    *(v122 + 32) = v124;
    v125 = *(a1 + 3);
    *(v122 + 48) = *(a1 + 2);
    *(v122 + 64) = v125;
    sub_243FF4EFC(a1, &v334);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2CC0, &unk_2440DE190);
    sub_243FF5DB4(&qword_27EDC2CC8, &qword_27EDC2CC0, &unk_2440DE190, sub_243F993A0);
    sub_2440C8F08(v121, sub_243FF617C, v122, v284);
    sub_2440D2B00();
    sub_2440D18E0();
    v126 = sub_2440D1860();
    v127 = sub_2440D20B0();
    type metadata accessor for CoarseRotationManager(0);
    sub_243FF713C(&qword_27EDC2A90, type metadata accessor for CoarseRotationManager, &unk_2440D77A8);
    v128 = sub_2440D1490();
    v129 = (*((*MEMORY[0x277D85000] & *v128) + 0xA0))();

    v130 = 1.0;
    if (v129)
    {
      v130 = 0.0;
    }

    v342 = v284[8];
    v343 = v284[9];
    v344 = v284[10];
    v338 = v284[4];
    v339 = v284[5];
    v341 = v284[7];
    v340 = v284[6];
    v334 = v284[0];
    v335 = v284[1];
    v337 = v284[3];
    v336 = v284[2];
    *&v345 = v126;
    BYTE8(v345) = v127;
    *&v346 = v130;
    *(&v346 + 1) = 0x4000000000000000;
    nullsub_1();
    v360 = v344;
    v361 = v345;
    v362 = v346;
    v356 = v340;
    v357 = v341;
    v359 = v343;
    v358 = v342;
    v352 = v336;
    v353 = v337;
    v355 = v339;
    v354 = v338;
    v351 = v335;
    v350 = v334;
  }

  else
  {
    sub_243FF5B40(&v350);
  }

  v102 = a1[9];
  v103 = *(*v102 + 552);
  v104 = *v102 + 552;

  v249 = v104;
  v106 = v103(v105);
  if ((sub_2440B446C(v106 & 1) & 1) != 0 && ((*(*v102 + 648))() & 1) == 0)
  {
    v107 = swift_allocObject();
    v108 = *(a1 + 5);
    *(v107 + 80) = *(a1 + 4);
    *(v107 + 96) = v108;
    *(v107 + 112) = *(a1 + 96);
    v109 = *(a1 + 1);
    *(v107 + 16) = *a1;
    *(v107 + 32) = v109;
    v110 = *(a1 + 3);
    *(v107 + 48) = *(a1 + 2);
    *(v107 + 64) = v110;
    sub_243FF4EFC(a1, &v334);
    sub_243FE10A0(v102, sub_243FF60D8, v107, v285);
    sub_2440D2B00();
    sub_2440D18E0();
    type metadata accessor for CoarseRotationManager(0);
    sub_243FF713C(&qword_27EDC2A90, type metadata accessor for CoarseRotationManager, &unk_2440D77A8);
    v111 = sub_2440D1490();
    v112 = (*((*MEMORY[0x277D85000] & *v111) + 0xA0))();

    if (v112)
    {
      v113 = -3.14159265;
    }

    else
    {
      v113 = 0.0;
    }

    v114 = sub_2440D2C40();
    v116 = v115;
    v118 = v117;
    v119 = (*(*v102 + 456))(v363, v114);
    if (v363[5])
    {
      sub_243F5EED4(v363, &qword_27EDBFF68, &qword_2440DDE10);
      v120 = 1;
    }

    else
    {
      LOBYTE(v334) = (*(*v102 + 504))(v119);
      LOBYTE(v317) = 1;
      sub_243F5D720();
      v120 = sub_2440D2F50() ^ 1;
    }

    KeyPath = swift_getKeyPath();
    v132 = swift_allocObject();
    *(v132 + 16) = v120 & 1;
    v325 = v285[8];
    v326 = v285[9];
    v327 = v285[10];
    v328 = v285[11];
    v321 = v285[4];
    v322 = v285[5];
    v323 = v285[6];
    v324 = v285[7];
    v317 = v285[0];
    v318 = v285[1];
    v319 = v285[2];
    v320 = v285[3];
    v329 = xmmword_2440DDE00;
    *&v330 = v113;
    *(&v330 + 1) = v116;
    *&v331 = v118;
    *(&v331 + 1) = KeyPath;
    *&v332 = sub_243FF6164;
    *(&v332 + 1) = v132;
    nullsub_1();
    v346 = v329;
    v347 = v330;
    v348 = v331;
    v349 = v332;
    v342 = v325;
    v343 = v326;
    v344 = v327;
    v345 = v328;
    v338 = v321;
    v339 = v322;
    v340 = v323;
    v341 = v324;
    v334 = v317;
    v335 = v318;
    v336 = v319;
    v337 = v320;
  }

  else
  {

    sub_243FF5B64(&v334);
  }

  *v99 = sub_2440D1C20();
  *(v99 + 1) = 0;
  v99[16] = 1;
  v384 = *(v280 + 7);
  v317 = *(v280 + 7);
  v133 = sub_2440D2820();
  v134 = 1;
  if (LOBYTE(v316[0]) == 1)
  {
    v244 = v103;
    if (((*(*v277 + 496))(v133, 1) & 1) != 0 && (*(*v277 + 880))())
    {

      v135 = v224;
      sub_243F83294(v224);
      v136 = sub_2440D1860();
      v137 = sub_2440D20B0();
      v138 = v247;
      v139 = v135 + *(v246 + 36);
      *v139 = v136;
      v139[8] = v137;
      sub_243F5F574(v135, v138, &qword_27EDC2BB8, &qword_2440DE060);
      swift_storeEnumTagMultiPayload();
      sub_243FF5F64();
      sub_243FF6020();
      v140 = v275;
      sub_2440D1D20();

      sub_243F5EED4(v135, &qword_27EDC2BB8, &qword_2440DE060);
    }

    else
    {
      v141 = sub_2440D1C20();
      v142 = v233;
      *v233 = v141;
      *(v142 + 8) = 0;
      *(v142 + 16) = 1;
      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2CA0, &qword_2440DE158);
      sub_243FF052C(v280, v235, v142 + *(v143 + 44), a5, a7);
      type metadata accessor for CoarseRotationManager(0);
      sub_243FF713C(&qword_27EDC2A90, type metadata accessor for CoarseRotationManager, &unk_2440D77A8);
      v144 = sub_2440D1490();
      v145 = (*((*MEMORY[0x277D85000] & *v144) + 0xA0))();

      if (v145)
      {
        v146 = -3.14159265;
      }

      else
      {
        v146 = 0.0;
      }

      sub_2440D2C40();
      v148 = v147;
      v150 = v149;
      v151 = v232;
      sub_243F681C8(v142, v232, &qword_27EDC2BA0, &qword_2440DE048);
      v152 = v151 + *(v248 + 36);
      *v152 = v146;
      *(v152 + 8) = v148;
      *(v152 + 16) = v150;
      v140 = v100;
      v153 = v234;
      sub_243F681C8(v151, v234, &qword_27EDC2BA8, &qword_2440DE050);
      sub_243F5F574(v153, v247, &qword_27EDC2BA8, &qword_2440DE050);
      swift_storeEnumTagMultiPayload();
      sub_243FF5F64();
      sub_243FF6020();
      sub_2440D1D20();
      sub_243F5EED4(v153, &qword_27EDC2BA8, &qword_2440DE050);
    }

    sub_243F681C8(v140, v276, &qword_27EDC2BC0, &qword_2440DE068);
    v134 = 0;
    v103 = v244;
  }

  v154 = v276;
  (*(v251 + 56))(v276, v134, 1, v253);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2C38, &unk_2440DE0E0);
  sub_243F681C8(v154, &v99[*(v155 + 44)], &qword_27EDC2BC8, &qword_2440DE070);
  sub_2440D2B00();
  sub_2440D18E0();
  v156 = v99;
  v157 = v256;
  sub_243F681C8(v156, v256, &qword_27EDC2BD0, &qword_2440DE078);
  v158 = (v157 + *(v250 + 36));
  v159 = v369;
  v158[4] = v368;
  v158[5] = v159;
  v158[6] = v370;
  v160 = v365;
  *v158 = v364;
  v158[1] = v160;
  v161 = v367;
  v158[2] = v366;
  v158[3] = v161;
  v162 = v262;
  sub_2440D1B00();
  v164 = v263;
  v163 = v264;
  (*(v263 + 16))(v261, v162, v264);
  sub_243FF713C(&qword_27EDC0148, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
  v165 = sub_2440D1610();
  (*(v164 + 8))(v162, v163);
  v166 = v254;
  sub_243F681C8(v157, v254, &qword_27EDC2BD8, &qword_2440DE080);
  *(v166 + *(v255 + 36)) = v165;
  v167 = v257;
  v168 = sub_243F681C8(v166, v257, &qword_27EDC2BE0, &qword_2440DE088);
  *(v167 + *(v258 + 36)) = 0x4010000000000000;
  v169 = *(*v102 + 456);
  v170 = v169(v371, v168);
  if (v371[5])
  {
    sub_243F5EED4(v371, &qword_27EDBFF68, &qword_2440DDE10);
  }

  else
  {
    v171 = v103(v170);
    sub_2440B446C(v171 & 1);
  }

  v172 = v282;
  sub_243FF5B8C();
  v173 = v260;
  sub_2440D2480();
  sub_243F5EED4(v167, &qword_27EDC2BE8, &qword_2440DE090);
  v174 = v265;
  sub_2440D1F50();
  sub_243FF5DB4(&qword_27EDC2C60, &qword_27EDC2BF0, &qword_2440DE098, sub_243FF5B8C);
  sub_2440D2490();
  (*(v266 + 8))(v174, v267);
  v175 = sub_243F5EED4(v173, &qword_27EDC2BF0, &qword_2440DE098);
  v176 = v169(v372, v175);
  if (v374)
  {
    v378[0] = v372[0];
    v378[1] = v372[1];
    v379 = v373;
    v380 = v374;
    v381 = v375;
    v382 = v376;
    v383 = v377;
    v177 = (*(*v277 + 400))(v176);
    v178 = v281;
    if (v177)
    {
      sub_243F5EED4(v372, &qword_27EDBFF68, &qword_2440DDE10);
      v179 = 1;
    }

    else
    {
      v317 = v384;
      sub_2440D2820();
      if (LOBYTE(v316[0]) == 1)
      {
        LODWORD(v278) = sub_2440D20B0();
        sub_2440D2680();
        sub_2440D26B0();

        swift_getKeyPath();
        v180 = sub_2440D1C20();
        v181 = v226;
        *v226 = v180;
        v181[1] = 0;
        *(v181 + 16) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2C80, &unk_2440E3CB0);
        sub_243FF4638(v378);
      }

      sub_243F5EED4(v372, &qword_27EDBFF68, &qword_2440DDE10);
      v182 = v229;
      (*(v230 + 56))(v229, 1, 1, v231);
      sub_243F681C8(v182, v178, &qword_27EDC2B90, &qword_2440DE038);
      v179 = 0;
    }
  }

  else
  {
    v179 = 1;
    v178 = v281;
  }

  (*(v268 + 56))(v178, v179, 1, v269);
  v183 = v279;
  sub_243F5F574(v172, v279, &qword_27EDC2C30, &qword_2440DE0D8);
  v312 = v360;
  v313 = v361;
  v314 = v362;
  v308 = v356;
  v309 = v357;
  v311 = v359;
  v310 = v358;
  v304 = v352;
  v305 = v353;
  v307 = v355;
  v306 = v354;
  v303 = v351;
  v302 = v350;
  v298 = v346;
  v299 = v347;
  v300 = v348;
  v301 = v349;
  v294 = v342;
  v295 = v343;
  v296 = v344;
  v297 = v345;
  v290 = v338;
  v291 = v339;
  v292 = v340;
  v293 = v341;
  v286 = v334;
  v287 = v335;
  v288 = v336;
  v289 = v337;
  v185 = v270;
  v184 = v271;
  v186 = *(v271 + 16);
  v187 = v272;
  v186(v270, v283, v272);
  v188 = v273;
  sub_243F5F574(v178, v273, &qword_27EDC2B98, &qword_2440DE040);
  v189 = v183;
  v190 = v274;
  sub_243F5F574(v189, v274, &qword_27EDC2C30, &qword_2440DE0D8);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2C68, &qword_2440DE0F0);
  v192 = (v190 + v191[12]);
  v193 = v313;
  v194 = v312;
  v315[10] = v312;
  v315[11] = v313;
  v195 = v314;
  v315[12] = v314;
  v196 = v309;
  v197 = v308;
  v315[6] = v308;
  v315[7] = v309;
  v198 = v310;
  v199 = v311;
  v315[9] = v311;
  v315[8] = v310;
  v200 = v306;
  v201 = v307;
  v315[5] = v307;
  v315[4] = v306;
  v202 = v305;
  v315[3] = v305;
  v315[2] = v304;
  v203 = v303;
  v204 = v302;
  v315[1] = v303;
  v315[0] = v302;
  v192[2] = v304;
  v192[3] = v202;
  v192[6] = v197;
  v192[7] = v196;
  v192[4] = v200;
  v192[5] = v201;
  v192[11] = v193;
  v192[12] = v195;
  v192[9] = v199;
  v192[10] = v194;
  v192[8] = v198;
  *v192 = v204;
  v192[1] = v203;
  v205 = v191[16];
  v206 = v299;
  v316[12] = v298;
  v316[13] = v299;
  v207 = v300;
  v208 = v301;
  v316[14] = v300;
  v316[15] = v301;
  v209 = v294;
  v210 = v295;
  v316[8] = v294;
  v316[9] = v295;
  v211 = v296;
  v212 = v297;
  v316[10] = v296;
  v316[11] = v297;
  v213 = v290;
  v214 = v291;
  v316[4] = v290;
  v316[5] = v291;
  v215 = v292;
  v216 = v293;
  v316[6] = v292;
  v316[7] = v293;
  v217 = v286;
  v218 = v287;
  v316[0] = v286;
  v316[1] = v287;
  v219 = v288;
  v220 = v289;
  v316[2] = v288;
  v316[3] = v289;
  v221 = (v190 + v205);
  v221[12] = v298;
  v221[13] = v206;
  v221[14] = v207;
  v221[15] = v208;
  v221[8] = v209;
  v221[9] = v210;
  v221[10] = v211;
  v221[11] = v212;
  v221[4] = v213;
  v221[5] = v214;
  v221[6] = v215;
  v221[7] = v216;
  *v221 = v217;
  v221[1] = v218;
  v221[2] = v219;
  v221[3] = v220;
  v186((v190 + v191[20]), v185, v187);
  sub_243F5F574(v188, v190 + v191[24], &qword_27EDC2B98, &qword_2440DE040);
  sub_243F5F574(v315, &v317, &qword_27EDC2C70, &qword_2440DE0F8);
  sub_243F5F574(v316, &v317, &qword_27EDC2C78, &qword_2440DE100);
  sub_243F5EED4(v281, &qword_27EDC2B98, &qword_2440DE040);
  v222 = *(v184 + 8);
  v222(v283, v187);
  sub_243F5EED4(v282, &qword_27EDC2C30, &qword_2440DE0D8);
  sub_243F5EED4(v188, &qword_27EDC2B98, &qword_2440DE040);
  v222(v185, v187);
  v329 = v298;
  v330 = v299;
  v331 = v300;
  v332 = v301;
  v325 = v294;
  v326 = v295;
  v327 = v296;
  v328 = v297;
  v321 = v290;
  v322 = v291;
  v323 = v292;
  v324 = v293;
  v317 = v286;
  v318 = v287;
  v319 = v288;
  v320 = v289;
  sub_243F5EED4(&v317, &qword_27EDC2C78, &qword_2440DE100);
  v333[10] = v312;
  v333[11] = v313;
  v333[12] = v314;
  v333[6] = v308;
  v333[7] = v309;
  v333[9] = v311;
  v333[8] = v310;
  v333[2] = v304;
  v333[3] = v305;
  v333[5] = v307;
  v333[4] = v306;
  v333[1] = v303;
  v333[0] = v302;
  sub_243F5EED4(v333, &qword_27EDC2C70, &qword_2440DE0F8);
  return sub_243F5EED4(v279, &qword_27EDC2C30, &qword_2440DE0D8);
}

uint64_t sub_243FF00E0@<X0>(uint64_t a2@<X8>)
{
  v18[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1B60, &qword_2440E2B80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v18 - v3;
  v5 = sub_2440D2770();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2CC0, &unk_2440DE190);
  MEMORY[0x28223BE20](v9);
  v11 = v18 - v10;
  sub_2440D2760();
  (*(v6 + 104))(v8, *MEMORY[0x277CE0FE0], v5);
  v12 = sub_2440D2790();

  (*(v6 + 8))(v8, v5);
  sub_244070BB0();
  sub_2440D2B00();
  sub_2440D1560();
  LOBYTE(v23[0]) = 1;
  *&v22[3] = *&v22[27];
  *&v22[11] = *&v22[35];
  *&v22[19] = *&v22[43];
  v13 = sub_2440D2170();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  sub_2440D21C0();
  sub_243F5EED4(v4, &qword_27EDC1B60, &qword_2440E2B80);
  sub_2440D21B0();
  v14 = sub_2440D21F0();

  KeyPath = swift_getKeyPath();
  *(v20 + 2) = *v22;
  v19 = v12;
  LOWORD(v20[0]) = 1;
  *(&v20[1] + 2) = *&v22[8];
  *(&v20[2] + 2) = *&v22[16];
  *&v20[3] = *&v22[23];
  *(&v20[3] + 1) = KeyPath;
  v21 = v14;
  type metadata accessor for CoarseRotationManager(0);
  sub_243FF713C(&qword_27EDC2A90, type metadata accessor for CoarseRotationManager, &unk_2440D77A8);
  v16 = sub_2440D1490();
  (*((*MEMORY[0x277D85000] & *v16) + 0xA0))();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC15F8, &unk_2440D9160);
  sub_243F993A0();
  sub_2440D2480();
  v23[2] = v20[1];
  v23[3] = v20[2];
  v23[4] = v20[3];
  v24 = v21;
  v23[0] = v19;
  v23[1] = v20[0];
  sub_243F5EED4(v23, &qword_27EDC15F8, &unk_2440D9160);
  sub_2440D1800();
  return sub_243F5EED4(v11, &qword_27EDC2CC0, &unk_2440DE190);
}

uint64_t sub_243FF052C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a5@<D1>, double a7@<D3>)
{
  v145 = a2;
  v144 = a3;
  v143 = sub_2440D1720();
  v141 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v138 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_2440D1B10();
  v137 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v134 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2CE0, &qword_2440DE1F0);
  v139 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v135 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v136 = &v114 - v14;
  v121 = sub_2440D2640();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v119 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_2440D1C00();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2CE8, &qword_2440DE1F8);
  MEMORY[0x28223BE20](v114);
  v18 = &v114 - v17;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2CF0, &qword_2440DE200);
  MEMORY[0x28223BE20](v122);
  v20 = &v114 - v19;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2CF8, &qword_2440DE208);
  MEMORY[0x28223BE20](v123);
  v125 = &v114 - v21;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D00, &qword_2440DE210);
  MEMORY[0x28223BE20](v124);
  v127 = &v114 - v22;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D08, &qword_2440DE218);
  MEMORY[0x28223BE20](v129);
  v130 = &v114 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D10, &qword_2440DE220);
  MEMORY[0x28223BE20](v24 - 8);
  v133 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v131 = &v114 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D18, &qword_2440DE228);
  MEMORY[0x28223BE20](v28);
  v132 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v114 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D20, &qword_2440DE230);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v114 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D28, &qword_2440DE238);
  MEMORY[0x28223BE20](v36);
  v128 = &v114 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v114 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v114 - v42;
  *v35 = sub_2440D1C20();
  *(v35 + 1) = 0;
  v35[16] = 0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D30, &qword_2440DE240);
  sub_243FF1784(a1, &v35[*(v44 + 44)], a5);
  sub_2440D2AE0();
  v146 = v32;
  v45 = 1;
  sub_2440D18E0();
  sub_243F681C8(v35, v40, &qword_27EDC2D20, &qword_2440DE230);
  v46 = &v40[*(v36 + 36)];
  v47 = v154;
  *(v46 + 4) = v153;
  *(v46 + 5) = v47;
  *(v46 + 6) = v155;
  v48 = v150;
  *v46 = v149;
  *(v46 + 1) = v48;
  v49 = v152;
  *(v46 + 2) = v151;
  *(v46 + 3) = v49;
  v126 = v43;
  sub_243F681C8(v40, v43, &qword_27EDC2D28, &qword_2440DE238);
  *v32 = sub_2440D1C20();
  *(v32 + 1) = 0;
  v32[16] = 1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D38, &qword_2440DE248);
  sub_243FF28E0(a1, v145, &v32[*(v50 + 44)], a7);
  v51 = sub_2440D2BC0();
  v52 = *(a1 + 72);
  v53 = *(*v52 + 552);
  v145 = (*v52 + 552);
  v118 = v53;
  v54 = v53();
  v55 = &v32[*(v28 + 36)];
  *v55 = v51;
  v55[8] = v54 & 1;
  v56 = swift_allocObject();
  *(v56 + 112) = *(a1 + 96);
  v57 = *(a1 + 80);
  *(v56 + 80) = *(a1 + 64);
  *(v56 + 96) = v57;
  v58 = *(a1 + 16);
  *(v56 + 16) = *a1;
  *(v56 + 32) = v58;
  v59 = *(a1 + 48);
  *(v56 + 48) = *(a1 + 32);
  *(v56 + 64) = v59;
  MEMORY[0x28223BE20](v56);
  sub_243FF4EFC(a1, v148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D40, &qword_2440DE250);
  sub_243FF627C();
  sub_2440D2870();
  v60 = &v18[*(v114 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D60, &qword_2440DE260);
  sub_2440D18F0();
  *v60 = swift_getKeyPath();
  v61 = v115;
  sub_2440D1BF0();
  sub_243FF6364();
  sub_243FF713C(&qword_27EDC2D88, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  v62 = v117;
  sub_2440D2380();
  (*(v116 + 8))(v61, v62);
  sub_243F5EED4(v18, &qword_27EDC2CE8, &qword_2440DE1F8);
  (*(v120 + 104))(v119, *MEMORY[0x277CE0EE0], v121);
  v63 = sub_2440D26E0();
  KeyPath = swift_getKeyPath();
  v148[0] = v63;
  v65 = sub_2440D1570();
  v66 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D90, &qword_2440DE2D0) + 36)];
  *v66 = KeyPath;
  v66[1] = v65;
  LOBYTE(v65) = sub_2440D20A0();
  sub_244071480();
  sub_2440D13D0();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v75 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D98, &qword_2440DE2D8) + 36)];
  *v75 = v65;
  *(v75 + 1) = v68;
  *(v75 + 2) = v70;
  *(v75 + 3) = v72;
  *(v75 + 4) = v74;
  v75[40] = 0;
  LOBYTE(v65) = sub_2440D20D0();
  sub_244071480();
  v76 = sub_2440D13D0();
  v77 = &v20[*(v122 + 36)];
  *v77 = v65;
  *(v77 + 1) = v78;
  *(v77 + 2) = v79;
  *(v77 + 3) = v80;
  *(v77 + 4) = v81;
  v77[40] = 0;
  v82 = *(*v52 + 600);
  if (v82(v76))
  {
    v83 = v125;
  }

  else
  {
    LOBYTE(v148[0]) = (*(*v52 + 504))();
    v147 = 1;
    sub_243F5D720();
    v84 = sub_2440D2F50();
    v83 = v125;
    if (v84)
    {
      v45 = (*(*v52 + 648))();
    }
  }

  v85 = swift_getKeyPath();
  v86 = swift_allocObject();
  *(v86 + 16) = v45 & 1;
  v87 = sub_243F681C8(v20, v83, &qword_27EDC2CF0, &qword_2440DE200);
  v88 = (v83 + *(v123 + 36));
  *v88 = v85;
  v88[1] = sub_243FF7220;
  v88[2] = v86;
  v89 = 0.25;
  if ((v82(v87) & 1) == 0)
  {
    LOBYTE(v148[0]) = (*(*v52 + 504))();
    v147 = 1;
    sub_243F5D720();
    if (sub_2440D2F50())
    {
      if ((*(*v52 + 648))())
      {
        v89 = 0.25;
      }

      else
      {
        v89 = 1.0;
      }
    }
  }

  v90 = v83;
  v91 = v127;
  sub_243F681C8(v90, v127, &qword_27EDC2CF8, &qword_2440DE208);
  *(v91 + *(v124 + 36)) = v89;
  v92 = v134;
  sub_2440D1B00();
  v93 = v138;
  sub_2440D1710();
  v94 = sub_243FF713C(&qword_27EDC0148, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
  v95 = sub_243FF713C(&qword_27EDC0C08, MEMORY[0x277CDF858], MEMORY[0x277CDF850]);
  v96 = v136;
  v97 = v140;
  v98 = v143;
  sub_2440D13F0();
  (*(v141 + 8))(v93, v98);
  (*(v137 + 8))(v92, v97);
  v99 = v139;
  v100 = v142;
  (*(v139 + 16))(v135, v96, v142);
  v148[0] = v97;
  v148[1] = v98;
  v148[2] = v94;
  v148[3] = v95;
  swift_getOpaqueTypeConformance2();
  v101 = sub_2440D1610();
  (*(v99 + 8))(v96, v100);
  v102 = v130;
  v103 = sub_243F681C8(v91, v130, &qword_27EDC2D00, &qword_2440DE210);
  *(v102 + *(v129 + 36)) = v101;
  v104 = (v118)(v103);
  sub_2440B446C(v104 & 1);
  sub_243FF6448();
  v105 = v131;
  sub_2440D24E0();

  sub_243F5EED4(v102, &qword_27EDC2D08, &qword_2440DE218);
  v106 = v126;
  v107 = v128;
  sub_243F5F574(v126, v128, &qword_27EDC2D28, &qword_2440DE238);
  v108 = v146;
  v109 = v132;
  sub_243F5F574(v146, v132, &qword_27EDC2D18, &qword_2440DE228);
  v110 = v133;
  sub_243F5F574(v105, v133, &qword_27EDC2D10, &qword_2440DE220);
  v111 = v144;
  sub_243F5F574(v107, v144, &qword_27EDC2D28, &qword_2440DE238);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2DE0, &qword_2440DE2F0);
  sub_243F5F574(v109, v111 + *(v112 + 48), &qword_27EDC2D18, &qword_2440DE228);
  sub_243F5F574(v110, v111 + *(v112 + 64), &qword_27EDC2D10, &qword_2440DE220);
  sub_243F5EED4(v105, &qword_27EDC2D10, &qword_2440DE220);
  sub_243F5EED4(v108, &qword_27EDC2D18, &qword_2440DE228);
  sub_243F5EED4(v106, &qword_27EDC2D28, &qword_2440DE238);
  sub_243F5EED4(v110, &qword_27EDC2D10, &qword_2440DE220);
  sub_243F5EED4(v109, &qword_27EDC2D18, &qword_2440DE228);
  return sub_243F5EED4(v107, &qword_27EDC2D28, &qword_2440DE238);
}

uint64_t sub_243FF1784@<X0>(uint64_t *a1@<X0>, void *a2@<X8>, double a4@<D1>)
{
  v155 = sub_2440D1B10();
  v7 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v144 = &v121[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v151 = sub_2440D1720();
  v148 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v134 = &v121[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0C38, &qword_2440D7E18);
  v146 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v145 = &v121[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v139 = &v121[-v12];
  v13 = type metadata accessor for PINPromptView(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v121[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F08, &qword_2440DE4B0);
  MEMORY[0x28223BE20](v16);
  v18 = &v121[-v17];
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F10, &qword_2440DE4B8);
  MEMORY[0x28223BE20](v135);
  v141 = &v121[-v19];
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F18, &qword_2440DE4C0);
  MEMORY[0x28223BE20](v137);
  v143 = &v121[-v20];
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F20, &qword_2440DE4C8);
  MEMORY[0x28223BE20](v138);
  v136 = &v121[-v21];
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F28, &qword_2440DE4D0);
  MEMORY[0x28223BE20](v142);
  v140 = &v121[-v22];
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F30, &qword_2440DE4D8);
  MEMORY[0x28223BE20](v147);
  v149 = &v121[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v153 = &v121[-v25];
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F38, &qword_2440DE4E0);
  MEMORY[0x28223BE20](v152);
  v27 = &v121[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v150 = &v121[-v29];
  v31 = MEMORY[0x28223BE20](v30);
  v156 = &v121[-v32];
  (*(*a1[4] + 640))(v175, v31);
  v157 = v27;
  v158 = a2;
  if (*(&v175[0] + 1))
  {
    v130 = v16;
    v33 = v15;
    v133 = v7;
    v186[0] = v175[0];
    v186[1] = v175[1];
    v186[2] = v175[2];
    v186[3] = v175[3];

    sub_243FD912C();
    sub_2440C72B8(v186, v176);
    sub_2440D2AE0();
    sub_2440D18E0();
    v161 = v176[2];
    v162 = v176[3];
    v163 = v176[4];
    v164 = v176[5];
    v159 = v176[0];
    v160 = v176[1];
    v129 = sub_2440D20A0();
    sub_2440D13D0();
    v127 = v35;
    v128 = v34;
    v125 = v37;
    v126 = v36;
    LOBYTE(v179) = 0;
    v124 = sub_2440D20C0();
    type metadata accessor for CoarseRotationManager(0);
    sub_243FF713C(&qword_27EDC2A90, type metadata accessor for CoarseRotationManager, &unk_2440D77A8);
    v38 = sub_2440D1490();
    v39 = (*((*MEMORY[0x277D85000] & *v38) + 0xA0))();

    v131 = a4;
    if (v39)
    {
      sub_244070CC8();
    }

    else
    {
      sub_244070C64();
    }

    sub_2440D13D0();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v123 = v46;
    v172[0] = 0;
    v122 = sub_2440D20D0();
    sub_244070D2C();
    v47 = sub_2440D13D0();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v173[0] = 0;
    v56 = a1[9];
    v57 = *(*v56 + 456);
    v58 = (v57)(v177, v47);
    if (v177[5])
    {
      sub_243F5EED4(v177, &qword_27EDBFF68, &qword_2440DDE10);
      v59 = 1;
    }

    else
    {
      LOBYTE(v187[0]) = (*(*v56 + 504))(v58);
      LOBYTE(v174[0]) = 1;
      sub_243F5D720();
      v59 = sub_2440D2F50() ^ 1;
    }

    KeyPath = swift_getKeyPath();
    v61 = swift_allocObject();
    *(v61 + 16) = v59 & 1;
    v62 = v57(v178);
    if (v178[5])
    {
      sub_243F5EED4(v175, &qword_27EDBFF08, &qword_2440D5EC0);
      sub_243F5EED4(v178, &qword_27EDBFF68, &qword_2440DDE10);
      v63 = 0.25;
    }

    else
    {
      LOBYTE(v187[0]) = (*(*v56 + 504))(v62);
      LOBYTE(v174[0]) = 1;
      sub_243F5D720();
      v64 = sub_2440D2F50();
      sub_243F5EED4(v175, &qword_27EDBFF08, &qword_2440D5EC0);
      if (v64)
      {
        v63 = 1.0;
      }

      else
      {
        v63 = 0.25;
      }
    }

    v7 = v133;
    v65 = swift_allocObject();
    v66 = *(a1 + 5);
    *(v65 + 80) = *(a1 + 4);
    *(v65 + 96) = v66;
    *(v65 + 112) = *(a1 + 96);
    v67 = *(a1 + 1);
    *(v65 + 16) = *a1;
    *(v65 + 32) = v67;
    v68 = *(a1 + 3);
    *(v65 + 48) = *(a1 + 2);
    *(v65 + 64) = v68;
    v174[3] = v162;
    v174[2] = v161;
    v174[0] = v159;
    v174[1] = v160;
    v174[7] = v166;
    v174[6] = v165;
    v174[4] = v163;
    v174[5] = v164;
    v174[12] = v171;
    v174[11] = v170;
    v174[10] = v169;
    v174[8] = v167;
    v174[9] = v168;
    LOBYTE(v174[13]) = v129;
    *(&v174[13] + 1) = v128;
    *&v174[14] = v127;
    *(&v174[14] + 1) = v126;
    *&v174[15] = v125;
    BYTE8(v174[15]) = 0;
    LOBYTE(v174[16]) = v124;
    *(&v174[16] + 1) = v41;
    *&v174[17] = v43;
    *(&v174[17] + 1) = v45;
    *&v174[18] = v123;
    BYTE8(v174[18]) = 0;
    LOBYTE(v174[19]) = v122;
    *(&v174[19] + 1) = v49;
    *&v174[20] = v51;
    *(&v174[20] + 1) = v53;
    *&v174[21] = v55;
    BYTE8(v174[21]) = 0;
    *&v174[22] = KeyPath;
    *(&v174[22] + 1) = sub_243FF7220;
    *&v174[23] = v61;
    *(&v174[23] + 1) = v63;
    *&v174[24] = sub_243FF70BC;
    *(&v174[24] + 1) = v65;
    v174[25] = 0uLL;
    nullsub_1();
    sub_243FF4EFC(a1, v187);
    memcpy(v187, v174, sizeof(v187));
    v15 = v33;
    v16 = v130;
  }

  else
  {
    sub_243FF6CD0(v187);
  }

  v69 = a1[9];

  sub_243F676A0();
  sub_243F4E2F4();
  v133 = v69;
  sub_243F8AB48(v15);
  sub_2440D2B00();
  sub_2440D18E0();
  v132 = v18;
  sub_243F8AA08(v15, v18);
  v70 = &v18[*(v16 + 36)];
  v71 = v184;
  v70[4] = v183;
  v70[5] = v71;
  v70[6] = v185;
  v72 = v180;
  *v70 = v179;
  v70[1] = v72;
  v73 = v182;
  v70[2] = v181;
  v70[3] = v73;
  v74 = v134;
  sub_2440D1710();
  v75 = v144;
  sub_2440D1B00();
  v76 = sub_243FF713C(&qword_27EDC0C08, MEMORY[0x277CDF858], MEMORY[0x277CDF850]);
  v77 = sub_243FF713C(&qword_27EDC0148, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
  v78 = v139;
  v79 = v151;
  v80 = v155;
  sub_2440D13F0();
  (*(v7 + 8))(v75, v80);
  (*(v148 + 8))(v74, v79);
  v81 = v146;
  v82 = v154;
  (*(v146 + 16))(v145, v78, v154);
  *&v174[0] = v79;
  *(&v174[0] + 1) = v80;
  *&v174[1] = v76;
  *(&v174[1] + 1) = v77;
  swift_getOpaqueTypeConformance2();
  v83 = sub_2440D1610();
  (*(v81 + 8))(v78, v82);
  v84 = v141;
  sub_243F681C8(v132, v141, &qword_27EDC2F08, &qword_2440DE4B0);
  *&v84[*(v135 + 36)] = v83;
  LOBYTE(v83) = sub_2440D20A0();
  sub_2440D13D0();
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v93 = v84;
  v94 = v143;
  sub_243F681C8(v93, v143, &qword_27EDC2F10, &qword_2440DE4B8);
  v95 = &v94[*(v137 + 36)];
  *v95 = v83;
  *(v95 + 1) = v86;
  *(v95 + 2) = v88;
  *(v95 + 3) = v90;
  *(v95 + 4) = v92;
  v95[40] = 0;
  v96 = swift_getKeyPath();
  v97 = v94;
  v98 = v136;
  sub_243F681C8(v97, v136, &qword_27EDC2F18, &qword_2440DE4C0);
  v99 = &v98[*(v138 + 36)];
  *v99 = v96;
  v99[1] = 0x3FD3333333333333;
  v100 = v98;
  v101 = v140;
  sub_243F681C8(v100, v140, &qword_27EDC2F20, &qword_2440DE4C8);
  v101[*(v142 + 36)] = 0;
  sub_243FF6D0C();
  v102 = v149;
  sub_2440D2510();
  v103 = sub_243F5EED4(v101, &qword_27EDC2F28, &qword_2440DE4D0);
  v104 = v133;
  v105 = (*(*v133 + 504))(v103);
  v106 = sub_2440B4474(v105);
  v108 = sub_2440579C8(0, v106, v107);
  v110 = v109;

  *&v174[0] = v108;
  *(&v174[0] + 1) = v110;
  sub_243F4EF64();
  v111 = v153;
  sub_2440D17C0();

  sub_243F5EED4(v102, &qword_27EDC2F30, &qword_2440DE4D8);
  v112 = sub_2440D2BC0();
  LOBYTE(v96) = (*(*v104 + 552))();
  v113 = v111;
  v114 = v150;
  sub_243F681C8(v113, v150, &qword_27EDC2F30, &qword_2440DE4D8);
  v115 = &v114[*(v152 + 36)];
  *v115 = v112;
  v115[8] = v96 & 1;
  v116 = v156;
  sub_243F681C8(v114, v156, &qword_27EDC2F38, &qword_2440DE4E0);
  memcpy(v172, v187, sizeof(v172));
  v117 = v157;
  sub_243F5F574(v116, v157, &qword_27EDC2F38, &qword_2440DE4E0);
  memcpy(v173, v172, sizeof(v173));
  v118 = v158;
  memcpy(v158, v172, 0x1A0uLL);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F70, &qword_2440DE4E8);
  sub_243F5F574(v117, v118 + *(v119 + 48), &qword_27EDC2F38, &qword_2440DE4E0);
  sub_243F5F574(v173, v174, &qword_27EDC2F78, &unk_2440DE4F0);
  sub_243F5EED4(v116, &qword_27EDC2F38, &qword_2440DE4E0);
  sub_243F5EED4(v117, &qword_27EDC2F38, &qword_2440DE4E0);
  memcpy(v174, v172, sizeof(v174));
  return sub_243F5EED4(v174, &qword_27EDC2F78, &unk_2440DE4F0);
}

uint64_t sub_243FF28E0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v94 = a2;
  v102 = a3;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2E00, &qword_2440DE348);
  MEMORY[0x28223BE20](v101);
  v7 = &v91 - v6;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2E08, &qword_2440DE350);
  MEMORY[0x28223BE20](v96);
  v95 = &v91 - v8;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2E10, &qword_2440DE358);
  MEMORY[0x28223BE20](v97);
  v98 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v99 = &v91 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2E18, &qword_2440DE360);
  MEMORY[0x28223BE20](v12);
  v14 = &v91 - v13;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2E20, &qword_2440DE368);
  MEMORY[0x28223BE20](v100);
  v16 = &v91 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2E28, &qword_2440DE370);
  MEMORY[0x28223BE20](v17);
  v19 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = (&v91 - v22);
  v24 = (*(**(a1 + 72) + 552))(v21);
  if (sub_2440B446C(v24 & 1))
  {
    v25 = sub_243F68750();
    *&v115[0] = sub_2440579C8(v25 & 1, 0xD000000000000012, 0x80000002440EBD00);
    *(&v115[0] + 1) = v26;
    sub_243F4EF64();
    v27 = sub_2440D2310();
    v29 = v28;
    v31 = v30;
    v94 = v14;
    sub_2440D2150();
    v92 = v7;
    v32 = sub_2440D22E0();
    v34 = v33;
    v93 = v12;
    v36 = v35;
    v38 = v37;

    sub_243F62C68(v27, v29, v31 & 1);

    KeyPath = swift_getKeyPath();
    v40 = sub_2440D2690();
    v41 = swift_getKeyPath();
    v42 = v36 & 1;
    LOBYTE(v115[0]) = v36 & 1;
    v43 = sub_2440D20A0();
    sub_2440D13D0();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    LOBYTE(v103) = 0;
    v52 = sub_2440D2110();
    sub_2440D13D0();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    LOBYTE(v115[0]) = 0;
    v61 = swift_getKeyPath();
    *&v103 = v32;
    *(&v103 + 1) = v34;
    LOBYTE(v104) = v42;
    *(&v104 + 1) = v38;
    *&v105 = KeyPath;
    BYTE8(v105) = 1;
    *&v106 = v41;
    *(&v106 + 1) = v40;
    LOBYTE(v107) = v43;
    *(&v107 + 1) = v45;
    *&v108 = v47;
    *(&v108 + 1) = v49;
    *&v109 = v51;
    BYTE8(v109) = 0;
    LOBYTE(v110) = v52;
    *(&v110 + 1) = v54;
    *&v111 = v56;
    *(&v111 + 1) = v58;
    *&v112 = v60;
    BYTE8(v112) = 0;
    *&v113 = v61;
    *(&v113 + 1) = 0x3FD3333333333333;
    v114 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2E50, &qword_2440DE3B8);
    sub_243FF68A0();
    v62 = v95;
    sub_2440D2510();
    v115[8] = v111;
    v115[9] = v112;
    v115[10] = v113;
    v116 = v114;
    v115[4] = v107;
    v115[5] = v108;
    v115[6] = v109;
    v115[7] = v110;
    v115[0] = v103;
    v115[1] = v104;
    v115[2] = v105;
    v115[3] = v106;
    sub_243F5EED4(v115, &qword_27EDC2E50, &qword_2440DE3B8);
    v63 = v99;
    sub_2440D1800();
    sub_243F5EED4(v62, &qword_27EDC2E08, &qword_2440DE350);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2E90, &qword_2440DE3E0);
    *(v63 + *(v64 + 36)) = 0x4000000000000000;
    v72 = sub_243F9A09C(v64, v65, v66, v67, v68, v69, v70, v71);
    v73 = v98;
    *(v63 + *(v97 + 36)) = v72;
    sub_243F5F574(v63, v73, &qword_27EDC2E10, &qword_2440DE358);
    v74 = v92;
    *v92 = 0;
    *(v74 + 8) = 1;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2E98, &qword_2440DE3E8);
    sub_243F5F574(v73, v74 + *(v75 + 48), &qword_27EDC2E10, &qword_2440DE358);
    sub_243F5EED4(v73, &qword_27EDC2E10, &qword_2440DE358);
    sub_243F5F574(v74, v94, &qword_27EDC2E00, &qword_2440DE348);
    swift_storeEnumTagMultiPayload();
    v76 = MEMORY[0x277CE14C0];
    sub_243F5DD50(&qword_27EDC2E40, &qword_27EDC2E20, &qword_2440DE368, MEMORY[0x277CE14C0]);
    sub_243F5DD50(&qword_27EDC2E48, &qword_27EDC2E00, &qword_2440DE348, v76);
    sub_2440D1D20();
    sub_243F5EED4(v74, &qword_27EDC2E00, &qword_2440DE348);
    v77 = v63;
    v78 = &qword_27EDC2E10;
    v79 = &qword_2440DE358;
  }

  else
  {
    sub_244071480();
    sub_244070B04();
    sub_2440D1650();
    *v23 = sub_2440D2B00();
    v23[1] = v80;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2E30, &qword_2440DE378);
    sub_243FF3148(a1, v23 + *(v81 + 44), a4);
    v82 = sub_2440D20A0();
    sub_2440D13D0();
    v83 = v23 + *(v17 + 36);
    *v83 = v82;
    *(v83 + 1) = v84;
    *(v83 + 2) = v85;
    *(v83 + 3) = v86;
    *(v83 + 4) = v87;
    v83[40] = 0;
    sub_243F5F574(v23, v19, &qword_27EDC2E28, &qword_2440DE370);
    sub_243F5F574(v19, v16, &qword_27EDC2E28, &qword_2440DE370);
    v88 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2E38, &qword_2440DE380) + 48)];
    *v88 = 0;
    v88[8] = 1;
    sub_243F5EED4(v19, &qword_27EDC2E28, &qword_2440DE370);
    sub_243F5F574(v16, v14, &qword_27EDC2E20, &qword_2440DE368);
    swift_storeEnumTagMultiPayload();
    v89 = MEMORY[0x277CE14C0];
    sub_243F5DD50(&qword_27EDC2E40, &qword_27EDC2E20, &qword_2440DE368, MEMORY[0x277CE14C0]);
    sub_243F5DD50(&qword_27EDC2E48, &qword_27EDC2E00, &qword_2440DE348, v89);
    sub_2440D1D20();
    sub_243F5EED4(v16, &qword_27EDC2E20, &qword_2440DE368);
    v77 = v23;
    v78 = &qword_27EDC2E28;
    v79 = &qword_2440DE370;
  }

  return sub_243F5EED4(v77, v78, v79);
}

uint64_t sub_243FF3148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v127 = a2;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2EA0, &qword_2440DE3F0);
  MEMORY[0x28223BE20](v116);
  v115 = v101 - v5;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2EA8, &qword_2440DE3F8);
  MEMORY[0x28223BE20](v120);
  v124 = v101 - v6;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2EB0, &qword_2440DE400);
  MEMORY[0x28223BE20](v122);
  v121 = v101 - v7;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2EB8, &qword_2440DE408);
  MEMORY[0x28223BE20](v119);
  v123 = v101 - v8;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2EC0, &qword_2440DE410);
  MEMORY[0x28223BE20](v117);
  v126 = v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v118 = v101 - v11;
  MEMORY[0x28223BE20](v12);
  v125 = v101 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2EC8, &qword_2440DE418);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = v101 - v16;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2ED0, &qword_2440DE420);
  MEMORY[0x28223BE20](v107);
  v111 = v101 - v18;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2ED8, &qword_2440DE428);
  MEMORY[0x28223BE20](v110);
  v20 = v101 - v19;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2EE0, &qword_2440DE430);
  MEMORY[0x28223BE20](v105);
  v112 = v101 - v21;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2EE8, &qword_2440DE438);
  MEMORY[0x28223BE20](v102);
  v114 = v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v108 = v101 - v24;
  MEMORY[0x28223BE20](v25);
  v113 = v101 - v26;
  nullsub_1();
  v27 = **(a1 + 32);
  v28 = *(v27 + 304);
  v106 = v27 + 304;
  v104 = v28;
  v29 = v28();
  v30 = (*(*v29 + 120))(v29);

  *&v129 = v30;
  swift_getKeyPath();
  v31 = swift_allocObject();
  v32 = *(a1 + 80);
  *(v31 + 80) = *(a1 + 64);
  *(v31 + 96) = v32;
  *(v31 + 112) = *(a1 + 96);
  v33 = *(a1 + 16);
  *(v31 + 16) = *a1;
  *(v31 + 32) = v33;
  v34 = *(a1 + 48);
  *(v31 + 48) = *(a1 + 32);
  *(v31 + 64) = v34;
  sub_243FF4EFC(a1, v136);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC19D8, &qword_2440DA160);
  v36 = sub_243F5DD50(&qword_27EDC19E0, &qword_27EDC19D8, &qword_2440DA160, MEMORY[0x277D83980]);
  v37 = sub_243FF713C(&qword_27EDC19E8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_243FA94D4();
  v109 = v35;
  v103 = v36;
  v101[1] = v37;
  sub_2440D29B0();
  sub_2440D15D0();
  sub_2440D15A0();
  sub_2440D15E0();

  sub_243F9A09C(v38, v39, v40, v41, v42, v43, v44, v45);
  v46 = sub_2440D1580();

  *&v17[*(v15 + 44)] = v46;
  sub_2440D2B00();
  *v101 = a3;
  sub_2440D18E0();
  v47 = v111;
  sub_243F681C8(v17, v111, &qword_27EDC2EC8, &qword_2440DE418);
  v48 = (v47 + *(v107 + 36));
  v49 = v134;
  v48[4] = v133;
  v48[5] = v49;
  v48[6] = v135;
  v50 = v130;
  *v48 = v129;
  v48[1] = v50;
  v51 = v132;
  v48[2] = v131;
  v48[3] = v51;
  sub_243F681C8(v47, v20, &qword_27EDC2ED0, &qword_2440DE420);
  *&v20[*(v110 + 36)] = 0x3FF0000000000000;
  v52 = v20;
  v53 = v112;
  sub_243F681C8(v52, v112, &qword_27EDC2ED8, &qword_2440DE428);
  *(v53 + *(v105 + 36)) = 0x3FF0000000000000;
  KeyPath = swift_getKeyPath();
  v55 = v108;
  v56 = &v108[*(v102 + 36)];
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2EF0, &qword_2440DE498);
  v57 = *(v111 + 28);
  v58 = *MEMORY[0x277CDFA88];
  v59 = sub_2440D17B0();
  v60 = *(*(v59 - 8) + 104);
  LODWORD(v110) = v58;
  v61 = v58;
  v62 = v60;
  v60(v56 + v57, v61, v59);
  *v56 = KeyPath;
  sub_243F681C8(v53, v55, &qword_27EDC2EE0, &qword_2440DE430);
  v63 = v55;
  v64 = v113;
  sub_243F681C8(v63, v113, &qword_27EDC2EE8, &qword_2440DE438);
  nullsub_1();
  v65 = v104();
  v66 = (*(*v65 + 120))(v65);

  v128 = v66;
  swift_getKeyPath();
  v67 = swift_allocObject();
  v68 = *(a1 + 80);
  *(v67 + 80) = *(a1 + 64);
  *(v67 + 96) = v68;
  *(v67 + 112) = *(a1 + 96);
  v69 = *(a1 + 16);
  *(v67 + 16) = *a1;
  *(v67 + 32) = v69;
  v70 = *(a1 + 48);
  *(v67 + 48) = *(a1 + 32);
  *(v67 + 64) = v70;
  sub_243FF4EFC(a1, v136);
  sub_243FF6C7C();
  v71 = v115;
  sub_2440D29B0();
  sub_2440D15D0();
  sub_2440D15A0();
  sub_2440D15E0();

  sub_243F9A09C(v72, v73, v74, v75, v76, v77, v78, v79);
  v80 = sub_2440D1580();

  *(v71 + *(v116 + 36)) = v80;
  sub_2440D2B00();
  sub_2440D18E0();
  v81 = v124;
  sub_243F681C8(v71, v124, &qword_27EDC2EA0, &qword_2440DE3F0);
  v82 = (v81 + *(v120 + 36));
  v83 = v136[3];
  v84 = v136[5];
  v85 = v136[6];
  v82[4] = v136[4];
  v82[5] = v84;
  v82[6] = v85;
  v86 = v136[1];
  v87 = v136[2];
  *v82 = v136[0];
  v82[1] = v86;
  v82[2] = v87;
  v82[3] = v83;
  v88 = v81;
  v89 = v121;
  sub_243F681C8(v88, v121, &qword_27EDC2EA8, &qword_2440DE3F8);
  *(v89 + *(v122 + 36)) = 0x3FF0000000000000;
  v90 = v123;
  sub_243F681C8(v89, v123, &qword_27EDC2EB0, &qword_2440DE400);
  *(v90 + *(v119 + 36)) = 0x4000000000000000;
  v91 = swift_getKeyPath();
  v92 = v118;
  v93 = &v118[*(v117 + 36)];
  v62(v93 + *(v111 + 28), v110, v59);
  *v93 = v91;
  sub_243F681C8(v90, v92, &qword_27EDC2EB8, &qword_2440DE408);
  v94 = v125;
  sub_243F681C8(v92, v125, &qword_27EDC2EC0, &qword_2440DE410);
  v95 = v114;
  sub_243F5F574(v64, v114, &qword_27EDC2EE8, &qword_2440DE438);
  v96 = v64;
  v97 = v126;
  sub_243F5F574(v94, v126, &qword_27EDC2EC0, &qword_2440DE410);
  v98 = v127;
  sub_243F5F574(v95, v127, &qword_27EDC2EE8, &qword_2440DE438);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F00, &unk_2440DE4A0);
  sub_243F5F574(v97, v98 + *(v99 + 48), &qword_27EDC2EC0, &qword_2440DE410);
  sub_243F5EED4(v94, &qword_27EDC2EC0, &qword_2440DE410);
  sub_243F5EED4(v96, &qword_27EDC2EE8, &qword_2440DE438);
  sub_243F5EED4(v97, &qword_27EDC2EC0, &qword_2440DE410);
  return sub_243F5EED4(v95, &qword_27EDC2EE8, &qword_2440DE438);
}

uint64_t sub_243FF3EE8()
{
  v1 = *(v0 + 72);
  v2 = (*(*v1 + 456))(v5);
  if (v5[5])
  {
    sub_243F5EED4(v5, &qword_27EDBFF68, &qword_2440DDE10);
    v3 = 1;
  }

  else
  {
    (*(*v1 + 504))(v2);
    v3 = 1;
    sub_243F5D720();
    if ((sub_2440D2F50() & 1) != 0 && ((*(*v1 + 696))() & 1) == 0)
    {
      v3 = (*(*v1 + 648))();
    }
  }

  return v3 & 1;
}

void sub_243FF4090(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2DE8, &qword_2440DE2F8);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v36[3] = v36 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2DF0, &qword_2440DE300) - 8;
  MEMORY[0x28223BE20](v39);
  v36[7] = v36 - v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2DF8, &qword_2440DE308) - 8;
  MEMORY[0x28223BE20](v38);
  v36[6] = v36 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D58, &qword_2440DE258);
  v7 = MEMORY[0x28223BE20](v37);
  v36[5] = v36 - v8;
  v9 = (*(**(a1 + 72) + 552))(v7);
  v10 = sub_2440B446C(v9 & 1);
  if (v10)
  {
    v11 = 0xD000000000000017;
  }

  else
  {
    v11 = 0xD00000000000001BLL;
  }

  if (v10)
  {
    v12 = "LABEL_ACCESSIBILITY_OPTIONS";
  }

  else
  {
    v12 = "pinax_button_ax_off";
  }

  v13 = v12 | 0x8000000000000000;
  v36[1] = v12 | 0x8000000000000000;
  v36[2] = v11;
  v14 = sub_243F68750();
  v47 = sub_2440579C8(v14 & 1, v11, v13);
  v48 = v15;
  v36[4] = sub_243F4EF64();
  v16 = sub_2440D2310();
  v18 = v17;
  v20 = v19;
  sub_243FFADA0();

  v21 = sub_2440D22C0();
  v23 = v22;
  v25 = v24;

  sub_243F62C68(v16, v18, v20 & 1);

  sub_2440D2150();
  v26 = sub_2440D22E0();
  v28 = v27;
  LOBYTE(v18) = v29;

  sub_243F62C68(v21, v23, v25 & 1);

  sub_2440D21B0();
  v30 = sub_2440D22A0();
  v32 = v31;
  LOBYTE(v23) = v33;
  v35 = v34;
  sub_243F62C68(v26, v28, v18 & 1);

  sub_2440D2B00();
  sub_2440D18E0();
  v49 = v23 & 1;
  v43 = v30;
  v44 = v32;
  v45 = v23 & 1;
  v46 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0DD0, &qword_2440DE310);
  sub_243F9140C();
  sub_24408F1D8();
}

uint64_t sub_243FF448C()
{
  v4 = *(v0 + 224);
  *(v0 + 352) = *(v0 + 208);
  *(v0 + 368) = v4;
  *(v0 + 384) = *(v0 + 240);
  v5 = *(v0 + 160);
  *(v0 + 288) = *(v0 + 144);
  *(v0 + 304) = v5;
  v6 = *(v0 + 192);
  *(v0 + 320) = *(v0 + 176);
  *(v0 + 336) = v6;
  v7 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v7;
  sub_243F5EED4(v0 + 256, v1, v2);
  KeyPath = swift_getKeyPath();
  v9 = *(v0 + 56);
  v10 = (*(*(v0 + 88) + 32))(v9, v3, *(v0 + 96));
  v11 = (v9 + *(*(v0 + 80) + 44));
  *v11 = KeyPath;
  v11[1] = 0x3FD999999999999ALL;
  v19 = sub_243F9A09C(v10, v12, v13, v14, v15, v16, v17, v18);
  v20 = v9;
  v21 = *(v0 + 48);
  sub_243F681C8(v20, v21, &qword_27EDC2DF0, &qword_2440DE300);
  *(v21 + *(*(v0 + 72) + 44)) = v19;
  v22 = *(v0 + 40);
  sub_243F681C8(v21, v22, &qword_27EDC2DF8, &qword_2440DE308);
  v23 = (v22 + *(*(v0 + 64) + 52));
  v25 = *(v0 + 8);
  v24 = *(v0 + 16);
  *v23 = v24;
  v23[1] = v25;

  v26 = sub_2440579C8(0, v24, v25);
  v28 = v27;

  *(v0 + 112) = v26;
  *(v0 + 120) = v28;
  sub_243F5DD50(&qword_27EDC2D50, &qword_27EDC2D58, &qword_2440DE258, MEMORY[0x277CE1148]);
  sub_2440D2440();

  return sub_243F5EED4(v22, &qword_27EDC2D58, &qword_2440DE258);
}

void sub_243FF4638(uint64_t a1)
{
  v2 = type metadata accessor for BottomErrorView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F80, &unk_2440DE500);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  sub_243FF70E0(a1, v10);
  v7 = sub_244030640();
  sub_24403067C(a1, v7, v9, v8 & 1, v4);
  sub_243FF713C(&qword_27EDC2F88, type metadata accessor for BottomErrorView, &unk_2440E1350);
  sub_24408F1D8();
}

uint64_t sub_243FF47AC()
{
  sub_243FF7184(v6);
  v7 = sub_2440D20D0();
  sub_2440707B4();
  sub_2440D13D0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F90, &unk_2440E0520) + 36);
  *v16 = v7;
  *(v16 + 8) = v9;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  v17 = sub_2440D20A0();
  sub_2440D13D0();
  v18 = v4 + *(v5 + 44);
  *v18 = v17;
  *(v18 + 8) = v19;
  *(v18 + 16) = v20;
  *(v18 + 24) = v21;
  *(v18 + 32) = v22;
  *(v18 + 40) = 0;
  sub_243F5F574(v4, v3, v1, v2);
  *v0 = 0;
  *(v0 + 8) = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F98, &qword_2440DE510);
  sub_243F5F574(v3, v0 + *(v23 + 48), v1, v2);
  sub_243F5EED4(v4, v1, v2);
  return sub_243F5EED4(v3, v1, v2);
}

double sub_243FF48C4(uint64_t a1)
{
  v1 = a1;
  v2 = sub_2440D2BA0();
  if (v1)
  {
    MEMORY[0x28223BE20](v2);
    sub_2440D16E0();

    sub_2440D2BA0();
    sub_2440D2B60();
  }

  else
  {
    sub_2440D2B60();

    MEMORY[0x28223BE20](v4);
    sub_2440D16E0();

    v3 = sub_2440D2BA0();
  }

  MEMORY[0x28223BE20](v3);
  sub_2440D16E0();

  return result;
}

uint64_t sub_243FF4A94@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13[4] = *(v1 + 64);
  v13[5] = v3;
  v14 = *(v1 + 96);
  v4 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v4;
  v5 = *(v1 + 48);
  v13[2] = *(v1 + 32);
  v13[3] = v5;
  v6 = swift_allocObject();
  v7 = *(v1 + 80);
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = v7;
  *(v6 + 112) = *(v1 + 96);
  v8 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v8;
  v9 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v9;
  sub_243FF4EFC(v13, v12);
  v10 = sub_2440D20D0();
  result = sub_2440D1860();
  *a1 = sub_243FF721C;
  *(a1 + 8) = v6;
  *(a1 + 16) = result;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_243FF4B54(uint64_t a1)
{
  v2 = sub_243FF5304();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_243FF4BA0(uint64_t a1)
{
  v2 = sub_243FF5304();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_243FF4BEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2440D1AA0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_243FF4C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_243FF4D64@<X0>(uint64_t a1@<X8>)
{
  sub_2440D2810();
  sub_2440D2810();
  type metadata accessor for PINViewContext();
  v2 = sub_2440B38F0();
  type metadata accessor for CommandExecutor(0);

  v3 = sub_243F9CAA8();
  type metadata accessor for PINViewState(0);

  v4 = sub_2440B3D68(v2);
  type metadata accessor for PINViewModel(0);

  sub_243F51980(v5, v3);
  sub_243FF713C(&qword_27EDC0B80, type metadata accessor for PINViewModel, &unk_2440D6120);
  result = sub_2440D1730();
  *a1 = sub_243FED1A0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = result;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  *(a1 + 72) = v4;
  *(a1 + 80) = v2;
  *(a1 + 88) = v3;
  *(a1 + 96) = 1;
  return result;
}

void sub_243FF4EE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    MEMORY[0x2821F96F8](a1, a2);
  }

  else
  {
  }
}

unint64_t sub_243FF5084()
{
  result = qword_27EDC2A98;
  if (!qword_27EDC2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2A98);
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_243FF512C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_243FF5174(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_243FF51F4()
{
  result = qword_27EDC2AA0;
  if (!qword_27EDC2AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2AA8, &qword_2440DDFA8);
    sub_243F5DD50(&qword_27EDC2AB0, &qword_27EDC2AB8, &qword_2440DDFB0, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2AA0);
  }

  return result;
}

unint64_t sub_243FF52B0()
{
  result = qword_27EDC2AC0;
  if (!qword_27EDC2AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2AC0);
  }

  return result;
}

unint64_t sub_243FF5304()
{
  result = qword_27EDC2AC8;
  if (!qword_27EDC2AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2AC8);
  }

  return result;
}

unint64_t sub_243FF5358()
{
  result = qword_27EDC2B18;
  if (!qword_27EDC2B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2AE0, &qword_2440DDFC8);
    sub_243FF5410();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0, &unk_2440D65B0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2B18);
  }

  return result;
}

unint64_t sub_243FF5410()
{
  result = qword_27EDC2B20;
  if (!qword_27EDC2B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2AD8, &qword_2440DDFC0);
    sub_243FF549C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2B20);
  }

  return result;
}

unint64_t sub_243FF549C()
{
  result = qword_27EDC2B28;
  if (!qword_27EDC2B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2AD0, &qword_2440DDFB8);
    sub_243F5DD50(&qword_27EDC2B30, &qword_27EDC2B38, &unk_2440DE000, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2B28);
  }

  return result;
}

uint64_t sub_243FF5554()
{
  v1 = *(v0 + 48);
  v2 = swift_allocObject();
  v3 = *(v0 + 96);
  *(v2 + 80) = *(v0 + 80);
  *(v2 + 96) = v3;
  *(v2 + 112) = *(v0 + 112);
  v4 = *(v0 + 32);
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v4;
  v5 = *(v0 + 64);
  *(v2 + 48) = *(v0 + 48);
  *(v2 + 64) = v5;
  v6 = *(*v1 + 1016);
  sub_243FF4EFC(v0 + 16, v9);
  v6(sub_243FF5A50, v2);

  return (*(*v1 + 992))(v7);
}

void sub_243FF5664()
{
  type metadata accessor for CoarseRotationManager(0);
  sub_243FF713C(&qword_27EDC2A90, type metadata accessor for CoarseRotationManager, &unk_2440D77A8);
  v0 = sub_2440D1490();
  (*((*MEMORY[0x277D85000] & *v0) + 0xC8))();
}

unint64_t sub_243FF579C()
{
  result = qword_27EDC2B48;
  if (!qword_27EDC2B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2B08, &qword_2440DDFF0);
    sub_243FF5828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2B48);
  }

  return result;
}

unint64_t sub_243FF5828()
{
  result = qword_27EDC2B50;
  if (!qword_27EDC2B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2B00, &qword_2440DDFE8);
    sub_243FF58B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2B50);
  }

  return result;
}

unint64_t sub_243FF58B4()
{
  result = qword_27EDC2B58;
  if (!qword_27EDC2B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2AF8, &qword_2440DDFE0);
    sub_243FF596C();
    sub_243F5DD50(&qword_27EDC2B70, &qword_27EDC2B78, &qword_2440DE020, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2B58);
  }

  return result;
}

unint64_t sub_243FF596C()
{
  result = qword_27EDC2B60;
  if (!qword_27EDC2B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2AF0, &qword_2440DDFD8);
    sub_243FF5DB4(&qword_27EDC2B68, &qword_27EDC2AE8, &qword_2440DDFD0, sub_243FF5358);
    sub_243F5DD50(&qword_27EDC0720, &qword_27EDC0728, &qword_2440D73F0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2B60);
  }

  return result;
}

void sub_243FF5A50(char a1)
{
  type metadata accessor for CoarseRotationManager(0);
  sub_243FF713C(&qword_27EDC2A90, type metadata accessor for CoarseRotationManager, &unk_2440D77A8);
  v2 = sub_2440D1490();
  (*((*MEMORY[0x277D85000] & *v2) + 0xC0))(a1 & 1);
}

double sub_243FF5B40(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_243FF5B64(_OWORD *a1)
{
  result = 0.0;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_243FF5B8C()
{
  result = qword_27EDC2C40;
  if (!qword_27EDC2C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2BE8, &qword_2440DE090);
    sub_243FF5C44();
    sub_243F5DD50(&qword_27EDC1600, &qword_27EDC1608, &qword_2440E03B0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2C40);
  }

  return result;
}

unint64_t sub_243FF5C44()
{
  result = qword_27EDC2C48;
  if (!qword_27EDC2C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2BE0, &qword_2440DE088);
    sub_243FF5CFC();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0, &unk_2440D65B0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2C48);
  }

  return result;
}

unint64_t sub_243FF5CFC()
{
  result = qword_27EDC2C50;
  if (!qword_27EDC2C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2BD8, &qword_2440DE080);
    sub_243F5DD50(&qword_27EDC2C58, &qword_27EDC2BD0, &qword_2440DE078, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2C50);
  }

  return result;
}

uint64_t sub_243FF5DB4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_243FF713C(&qword_27EDC0048, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243FF5E68()
{
  v1 = v0;
  type metadata accessor for CoarseRotationManager(0);
  sub_243FF713C(&qword_27EDC2A90, type metadata accessor for CoarseRotationManager, &unk_2440D77A8);
  v2 = sub_2440D1490();
  (*((*MEMORY[0x277D85000] & *v2) + 0xC8))();

  return (*(**(*(v1 + 48) + 64) + 160))();
}

unint64_t sub_243FF5F64()
{
  result = qword_27EDC2CA8;
  if (!qword_27EDC2CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2BB8, &qword_2440DE060);
    sub_243FF713C(&qword_27EDC0BC0, type metadata accessor for PINPrivacyLockView, &unk_2440D7C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2CA8);
  }

  return result;
}

unint64_t sub_243FF6020()
{
  result = qword_27EDC2CB0;
  if (!qword_27EDC2CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2BA8, &qword_2440DE050);
    sub_243F5DD50(&qword_27EDC2CB8, &qword_27EDC2BA0, &qword_2440DE048, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2CB0);
  }

  return result;
}

uint64_t sub_243FF60D8(unsigned int a1)
{
  result = (*(**(v1 + 88) + 648))();
  if ((result & 1) == 0)
  {
    return sub_243F543B0(a1 | (((a1 >> 8) & 1) << 8));
  }

  return result;
}

uint64_t sub_243FF6184()
{
  v1 = *(v0 + 48);
  if ((*(*v1 + 352))())
  {
    (*(*v1 + 360))(0);
  }

  return sub_243F58A2C();
}

uint64_t sub_243FF6208()
{
  v1 = (*(**(v0 + 88) + 552))();
  if (sub_2440B446C(v1 & 1))
  {
    return sub_243F552A4();
  }

  else
  {
    return sub_243F5C708();
  }
}

unint64_t sub_243FF627C()
{
  result = qword_27EDC2D48;
  if (!qword_27EDC2D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2D40, &qword_2440DE250);
    sub_243F5DD50(&qword_27EDC2D50, &qword_27EDC2D58, &qword_2440DE258, MEMORY[0x277CE1148]);
    sub_243FF713C(&qword_27EDC0048, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2D48);
  }

  return result;
}

unint64_t sub_243FF6364()
{
  result = qword_27EDC2D68;
  if (!qword_27EDC2D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2CE8, &qword_2440DE1F8);
    sub_243F5DD50(&qword_27EDC2D70, &qword_27EDC2D78, &qword_2440DE298, MEMORY[0x277CDF028]);
    sub_243F5DD50(&qword_27EDC2D80, &qword_27EDC2D60, &qword_2440DE260, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2D68);
  }

  return result;
}

unint64_t sub_243FF6448()
{
  result = qword_27EDC2DA0;
  if (!qword_27EDC2DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2D08, &qword_2440DE218);
    sub_243FF6500();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0, &unk_2440D65B0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2DA0);
  }

  return result;
}

unint64_t sub_243FF6500()
{
  result = qword_27EDC2DA8;
  if (!qword_27EDC2DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2D00, &qword_2440DE210);
    sub_243FF658C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2DA8);
  }

  return result;
}

unint64_t sub_243FF658C()
{
  result = qword_27EDC2DB0;
  if (!qword_27EDC2DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2CF8, &qword_2440DE208);
    sub_243FF6644();
    sub_243F5DD50(&qword_27EDC2DD0, &qword_27EDC2DD8, &qword_2440DE2E8, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2DB0);
  }

  return result;
}

unint64_t sub_243FF6644()
{
  result = qword_27EDC2DB8;
  if (!qword_27EDC2DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2CF0, &qword_2440DE200);
    sub_243FF66D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2DB8);
  }

  return result;
}

unint64_t sub_243FF66D0()
{
  result = qword_27EDC2DC0;
  if (!qword_27EDC2DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2D98, &qword_2440DE2D8);
    sub_243FF675C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2DC0);
  }

  return result;
}

unint64_t sub_243FF675C()
{
  result = qword_27EDC2DC8;
  if (!qword_27EDC2DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2D90, &qword_2440DE2D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2CE8, &qword_2440DE1F8);
    sub_2440D1C00();
    sub_243FF6364();
    sub_243FF713C(&qword_27EDC2D88, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC1D70, &qword_27EDC1D78, &qword_2440DE2E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2DC8);
  }

  return result;
}

unint64_t sub_243FF68A0()
{
  result = qword_27EDC2E58;
  if (!qword_27EDC2E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2E50, &qword_2440DE3B8);
    sub_243FF692C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2E58);
  }

  return result;
}

unint64_t sub_243FF692C()
{
  result = qword_27EDC2E60;
  if (!qword_27EDC2E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2E68, &qword_2440DE3C0);
    sub_243FF69E4();
    sub_243F5DD50(&qword_27EDC0928, &qword_27EDC0930, &unk_2440D7F60, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2E60);
  }

  return result;
}

unint64_t sub_243FF69E4()
{
  result = qword_27EDC2E70;
  if (!qword_27EDC2E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2E78, &qword_2440DE3C8);
    sub_243FF6A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2E70);
  }

  return result;
}

unint64_t sub_243FF6A70()
{
  result = qword_27EDC2E80;
  if (!qword_27EDC2E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2E88, &unk_2440DE3D0);
    sub_243FCE0F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2E80);
  }

  return result;
}

void sub_243FF6AFC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;

  v5 = sub_243FF3EE8();
  (*(**(v2 + 88) + 456))(v8);
  v6 = v9;
  if (v9)
  {
    v7 = sub_243F5EED4(v8, &qword_27EDBFF68, &qword_2440DDE10);
    v6 = (*(**(v2 + 48) + 400))(v7) ^ 1;
  }

  sub_2440112E4(v4, v5 & 1, v6 & 1, a2);
}

uint64_t sub_243FF6C04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;

  v4 = sub_243FF3EE8();

  return sub_244012DEC(v3, v4 & 1, &off_285773298, a2);
}

unint64_t sub_243FF6C7C()
{
  result = qword_27EDC2EF8;
  if (!qword_27EDC2EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2EF8);
  }

  return result;
}

double sub_243FF6CD0(_OWORD *a1)
{
  result = 0.0;
  a1[24] = 0u;
  a1[25] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_243FF6D0C()
{
  result = qword_27EDC2F40;
  if (!qword_27EDC2F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2F28, &qword_2440DE4D0);
    sub_243FF6D98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2F40);
  }

  return result;
}

unint64_t sub_243FF6D98()
{
  result = qword_27EDC2F48;
  if (!qword_27EDC2F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2F20, &qword_2440DE4C8);
    sub_243FF6E50();
    sub_243F5DD50(&qword_27EDC0928, &qword_27EDC0930, &unk_2440D7F60, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2F48);
  }

  return result;
}

unint64_t sub_243FF6E50()
{
  result = qword_27EDC2F50;
  if (!qword_27EDC2F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2F18, &qword_2440DE4C0);
    sub_243FF6EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2F50);
  }

  return result;
}

unint64_t sub_243FF6EDC()
{
  result = qword_27EDC2F58;
  if (!qword_27EDC2F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2F10, &qword_2440DE4B8);
    sub_243FF6F94();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0, &unk_2440D65B0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2F58);
  }

  return result;
}

unint64_t sub_243FF6F94()
{
  result = qword_27EDC2F60;
  if (!qword_27EDC2F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2F08, &qword_2440DE4B0);
    sub_243FF713C(&qword_27EDC2F68, type metadata accessor for PINPromptView, &unk_2440D8038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2F60);
  }

  return result;
}

uint64_t objectdestroyTm_17()
{
  sub_243FF4EE4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_243FF713C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243FF7184(uint64_t a1)
{
  v2 = type metadata accessor for BottomErrorView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243FF7224@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_2440D10F0();
  v6 = v5();

  if (v6 & 1) != 0 && ((sub_243FF9A44(), (sub_243FD667C()) || (sub_243FD6570() & 1) != 0 || (sub_243FD6738()))
  {
    v7 = sub_243F4DF68();
    sub_243F4DE64(v7, v4);
    v8 = sub_2440D11E0();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v4, 1, v8) == 1)
    {
      sub_243F5FAB0(v4);
    }

    else
    {
      v13 = sub_2440D11C0();
      v14 = sub_2440D3490();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_243F48000, v13, v14, "using mocked controller", v15, 2u);
        MEMORY[0x245D58570](v15, -1, -1);
      }

      (*(v9 + 8))(v4, v8);
    }

    v10 = type metadata accessor for MockPINController();
    result = sub_244051798();
    v12 = &off_28577AAE8;
  }

  else
  {
    v10 = type metadata accessor for SPRPINController();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = 0;
    v12 = &off_285777F50;
  }

  a1[3] = v10;
  a1[4] = v12;
  *a1 = result;
  return result;
}

uint64_t sub_243FF7434()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

id sub_243FF7484()
{
  v58[1] = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v53 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v53 - v8;
  v10 = *(v0 + 16);
  if (v10)
  {
    v11 = v10;
    return v10;
  }

  v12 = sub_243F4DF68();
  sub_243F4DE64(v12, v9);
  v13 = sub_2440D11E0();
  v14 = *(v13 - 8);
  v55 = *(v14 + 48);
  v15 = v55(v9, 1, v13);
  v56 = v13;
  if (v15 == 1)
  {
    sub_243F5FAB0(v9);
  }

  else
  {
    v54 = v12;
    v16 = v14;
    v17 = v0;
    v18 = sub_2440D11C0();
    v19 = sub_2440D3490();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_243F48000, v18, v19, "creating controller", v20, 2u);
      MEMORY[0x245D58570](v20, -1, -1);
    }

    v14 = v16;
    (*(v16 + 8))(v9, v13);
    v0 = v17;
    v12 = v54;
  }

  v21 = objc_opt_self();
  v22 = [v21 shared];
  v58[0] = 0;
  v10 = [v22 makePINControllerAndReturnError_];

  v23 = v58[0];
  if (v10)
  {
    v24 = *(v0 + 16);
    *(v0 + 16) = v10;
    v25 = v23;
LABEL_10:
    v26 = v10;

    return v10;
  }

  v54 = v14;
  v27 = v58[0];
  v28 = sub_2440D0550();

  swift_willThrow();
  v29 = *(v0 + 16);
  *(v0 + 16) = 0;

  v58[0] = v28;
  v30 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38F0, &qword_2440D6070);
  type metadata accessor for SPRXPCError(0);
  if (swift_dynamicCast())
  {
    v31 = v0;
    v32 = v57;
    _s3__C4CodeOMa_0(0);
    v58[0] = 14001;
    sub_243FFA61C(&qword_27EDC2FB8, _s3__C4CodeOMa_0, &unk_2440DEB1C);
    v33 = v32;
    v34 = sub_2440D04B0();

    if (v34)
    {
      sub_243F4DE64(v12, v6);
      if (v55(v6, 1, v56) == 1)
      {
        sub_243F5FAB0(v6);
      }

      else
      {
        v45 = sub_2440D11C0();
        v46 = sub_2440D3470();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_243F48000, v45, v46, "service disconnected, trying again", v47, 2u);
          MEMORY[0x245D58570](v47, -1, -1);
        }

        (*(v54 + 8))(v6, v56);
      }

      v48 = v31;
      v49 = [v21 shared];
      v58[0] = 0;
      v10 = [v49 makePINControllerAndReturnError_];

      v50 = v58[0];
      if (v10)
      {
      }

      else
      {
        v51 = v50;
        v52 = sub_2440D0550();

        swift_willThrow();
      }

      v24 = *(v48 + 16);
      *(v48 + 16) = v10;
      goto LABEL_10;
    }
  }

  sub_243F4DE64(v12, v3);
  v35 = v56;
  if (v55(v3, 1, v56) == 1)
  {

    sub_243F5FAB0(v3);
  }

  else
  {
    v36 = v28;
    v37 = sub_2440D11C0();
    v38 = sub_2440D3470();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v58[0] = v40;
      *v39 = 136315138;
      swift_getErrorValue();
      v41 = sub_2440D3AB0();
      v43 = sub_243F4E6F8(v41, v42, v58);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_243F48000, v37, v38, "creation failed: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x245D58570](v40, -1, -1);
      MEMORY[0x245D58570](v39, -1, -1);
    }

    else
    {
    }

    (*(v54 + 8))(v3, v35);
  }

  return 0;
}

uint64_t sub_243FF7AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - v10;
  MEMORY[0x28223BE20](v12);
  v57 = &v57 - v13;
  v59 = sub_2440D0AC0();
  v14 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_243FF7484();
  if (v17)
  {
    v60 = v17;
    v18 = sub_2440D0620();
    if (v19 >> 60 != 15)
    {
      a2 = v18;
      v20 = v19;
      sub_2440D10D0();
      v22 = v21;
      v23 = sub_2440D0670();
      v24 = a4 ? sub_2440D2F80() : 0;
      v31 = [objc_allocWithZone(MEMORY[0x277D64020]) initWithDigest:v23 pinToken:v24 transactionDataLifetime:v22];

      sub_243F5FF20(a2, v20);
      if (v31)
      {
        sub_2440D09A0();
        sub_2440D0AA0();
        v34 = *(v14 + 8);
        v32 = (v14 + 8);
        v33 = v34;
        v35 = v59;
        v34(v16, v59);
        v36 = v60;
        v37 = v58;
        v38 = sub_2440D34B0();
        v39 = v37;
        if (!v37)
        {
          a2 = v38;
          v58 = v32;
          if (*(v38 + 16) == 10)
          {
            sub_2440D09A0();
            sub_2440D0A90();

            v33(v16, v35);
            return a2;
          }

          v46 = sub_243F4DF68();
          v47 = v57;
          sub_243F4DE64(v46, v57);
          v48 = sub_2440D11E0();
          v49 = *(v48 - 8);
          if ((*(v49 + 48))(v47, 1, v48) == 1)
          {
            sub_243F5FAB0(v47);
          }

          else
          {
            v50 = sub_2440D11C0();
            v51 = sub_2440D3470();
            if (os_log_type_enabled(v50, v51))
            {
              v52 = swift_slowAlloc();
              *v52 = 0;
              _os_log_impl(&dword_243F48000, v50, v51, "bad mapping", v52, 2u);
              MEMORY[0x245D58570](v52, -1, -1);
            }

            (*(v49 + 8))(v47, v48);
          }

          sub_243FFA514();
          v39 = swift_allocError();
          *v53 = 1;
          swift_willThrow();
          v35 = v59;
          v36 = v60;
        }

        sub_2440D09A0();
        sub_2440D0A90();
        v33(v16, v35);
        v54 = v39;
        a2 = sub_243FFA420(v39);
        sub_243FFA514();
        swift_allocError();
        *v55 = a2 & 1;
        swift_willThrow();

        return a2;
      }
    }

    v40 = sub_243F4DF68();
    sub_243F4DE64(v40, v11);
    v41 = sub_2440D11E0();
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v11, 1, v41) == 1)
    {
      sub_243F5FAB0(v11);
    }

    else
    {
      a2 = sub_2440D11C0();
      v43 = sub_2440D3470();
      if (os_log_type_enabled(a2, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_243F48000, a2, v43, "could not build parameters", v44, 2u);
        MEMORY[0x245D58570](v44, -1, -1);
      }

      (*(v42 + 8))(v11, v41);
    }

    sub_243FFA514();
    swift_allocError();
    *v45 = 1;
    swift_willThrow();
  }

  else
  {
    v25 = sub_243F4DF68();
    sub_243F4DE64(v25, v8);
    a2 = sub_2440D11E0();
    v26 = *(a2 - 8);
    if ((*(v26 + 48))(v8, 1, a2) == 1)
    {
      sub_243F5FAB0(v8);
    }

    else
    {
      v27 = sub_2440D11C0();
      v28 = sub_2440D3470();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_243F48000, v27, v28, "undefined controller", v29, 2u);
        MEMORY[0x245D58570](v29, -1, -1);
      }

      (*(v26 + 8))(v8, a2);
    }

    sub_243FFA514();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();
  }

  return a2;
}

void sub_243FF81BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = v27 - v4;
  v6 = sub_243FF7484();
  if (v6)
  {
    v7 = v6;
    v8 = sub_2440D34A0();
    if (v8)
    {
      if (*(v8 + 16) == 10)
      {

        return;
      }
    }

    v12 = sub_243F4DF68();
    sub_243F4DE64(v12, v5);
    v13 = sub_2440D11E0();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v5, 1, v13) == 1)
    {
      sub_243F5FAB0(v5);
    }

    else
    {
      v15 = sub_2440D11C0();
      v16 = sub_2440D3470();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_243F48000, v15, v16, "bad mapping", v17, 2u);
        MEMORY[0x245D58570](v17, -1, -1);
      }

      (*(v14 + 8))(v5, v13);
    }

    sub_243FFA514();
    v18 = swift_allocError();
    *v19 = 1;
    swift_willThrow();
    v20 = v18;
    v21 = sub_243FFA420(v18);
    swift_allocError();
    *v22 = v21;
    swift_willThrow();
  }

  else
  {
    v9 = sub_243F4DF68();
    sub_243F4DE64(v9, v2);
    v10 = sub_2440D11E0();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v2, 1, v10) == 1)
    {
      sub_243F5FAB0(v2);
    }

    else
    {
      v23 = sub_2440D11C0();
      v24 = sub_2440D3470();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_243F48000, v23, v24, "undefined controller", v25, 2u);
        MEMORY[0x245D58570](v25, -1, -1);
      }

      (*(v11 + 8))(v2, v10);
    }

    sub_243FFA514();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
  }
}

void sub_243FF8550(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v22 - v3;
  v5 = sub_2440D0AC0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_243FF7484();
  if (v9)
  {
    v10 = v9;
    sub_2440D09D0();
    sub_2440D0AA0();
    v11 = *(v6 + 8);
    v11(v8, v5);
    sub_2440D34C0();
    sub_2440D09D0();
    sub_2440D0A90();
    if (v1)
    {
      v11(v8, v5);
      v12 = v1;
      v13 = sub_243FFA420(v1);
      sub_243FFA514();
      swift_allocError();
      *v14 = v13;
      swift_willThrow();
    }

    else
    {

      v11(v8, v5);
    }
  }

  else
  {
    v15 = sub_243F4DF68();
    sub_243F4DE64(v15, v4);
    v16 = sub_2440D11E0();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v4, 1, v16) == 1)
    {
      sub_243F5FAB0(v4);
    }

    else
    {
      v18 = sub_2440D11C0();
      v19 = sub_2440D3470();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_243F48000, v18, v19, "undefined controller", v20, 2u);
        MEMORY[0x245D58570](v20, -1, -1);
      }

      (*(v17 + 8))(v4, v16);
    }

    sub_243FFA514();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
  }
}

void sub_243FF8884()
{
  v23[1] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v23 - v1;
  v3 = sub_2440D0AC0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_243FF7484();
  if (v7)
  {
    v8 = v7;
    sub_2440D0A00();
    sub_2440D0AA0();
    v9 = *(v4 + 8);
    v9(v6, v3);
    v23[0] = 0;
    if ([v8 removeLastDigitAndReturnError_])
    {
      v10 = v23[0];
      sub_2440D0A00();
      sub_2440D0A90();

      v9(v6, v3);
    }

    else
    {
      v14 = v23[0];
      v15 = sub_2440D0550();

      swift_willThrow();
      sub_2440D0A00();
      sub_2440D0A90();
      v9(v6, v3);
      v16 = v15;
      v17 = sub_243FFA420(v15);
      sub_243FFA514();
      swift_allocError();
      *v18 = v17;
      swift_willThrow();
    }
  }

  else
  {
    v11 = sub_243F4DF68();
    sub_243F4DE64(v11, v2);
    v12 = sub_2440D11E0();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v2, 1, v12) == 1)
    {
      sub_243F5FAB0(v2);
    }

    else
    {
      v19 = sub_2440D11C0();
      v20 = sub_2440D3470();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_243F48000, v19, v20, "undefined controller", v21, 2u);
        MEMORY[0x245D58570](v21, -1, -1);
      }

      (*(v13 + 8))(v2, v12);
    }

    sub_243FFA514();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
  }
}

void sub_243FF8C00(uint64_t a1, uint64_t (*a2)(id))
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v28 - v5;
  v7 = sub_2440D0AC0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_243FF7484();
  if (v11)
  {
    v12 = v11;
    sub_2440D09F0();
    sub_2440D0AA0();
    v27 = *(v8 + 8);
    v27(v10, v7);
    if (a1 < 1)
    {
LABEL_8:
      sub_2440D09F0();
      sub_2440D0A90();

      v27(v10, v7);
    }

    else
    {
      v13 = a1 + 1;
      while (1)
      {
        v28[0] = 0;
        if (![v12 removeLastDigitAndReturnError_])
        {
          break;
        }

        v14 = v28[0];
        if (a2)
        {
          a2(v14);
        }

        if (--v13 <= 1)
        {
          goto LABEL_8;
        }
      }

      v18 = v28[0];
      v19 = sub_2440D0550();

      swift_willThrow();
      sub_2440D09F0();
      sub_2440D0A90();
      v27(v10, v7);
      v20 = v19;
      v21 = sub_243FFA420(v19);
      sub_243FFA514();
      swift_allocError();
      *v22 = v21;
      swift_willThrow();
    }
  }

  else
  {
    v15 = sub_243F4DF68();
    sub_243F4DE64(v15, v6);
    v16 = sub_2440D11E0();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v6, 1, v16) == 1)
    {
      sub_243F5FAB0(v6);
    }

    else
    {
      v23 = sub_2440D11C0();
      v24 = sub_2440D3470();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_243F48000, v23, v24, "undefined controller", v25, 2u);
        MEMORY[0x245D58570](v25, -1, -1);
      }

      (*(v17 + 8))(v6, v16);
    }

    sub_243FFA514();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
  }
}

void *sub_243FF8FD0()
{
  v49[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v44 - v3;
  v5 = sub_2440D0AC0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_243FF7484();
  if (v9)
  {
    v1 = v9;
    sub_2440D0A30();
    sub_2440D0AA0();
    v10 = *(v6 + 8);
    v10(v8, v5);
    v49[0] = 0;
    v11 = [v1 generatePINBlockAndReturnError_];
    if (v11)
    {
      v12 = v11;
      v13 = v49[0];
      v45 = [v12 isPinBypass];
      v14 = [v12 pinKEKHash];
      v15 = sub_2440D0680();
      v46 = v1;
      v47 = v10;
      v16 = v15;
      v48 = v0;
      v18 = v17;

      v19 = sub_24405864C();
      v21 = sub_24405865C(v19, v20, v16, v18);
      v44[4] = v22;
      v44[5] = v21;

      sub_243F5D81C(v16, v18);
      v23 = [v12 pinCipherBlob];
      v24 = sub_2440D0680();
      v44[2] = v25;
      v44[3] = v24;

      v26 = [v12 pinKeyBlob];
      v27 = sub_2440D0680();
      v44[0] = v28;
      v44[1] = v27;

      v29 = [v12 pinAppletAttestationData];
      sub_2440D0680();

      v30 = [v12 casd];
      sub_2440D0680();

      v31 = objc_allocWithZone(sub_2440D0FA0());
      v1 = sub_2440D0F90();

      sub_2440D0A30();
      sub_2440D0A90();

      v47(v8, v5);
    }

    else
    {
      v35 = v49[0];
      v36 = sub_2440D0550();

      swift_willThrow();
      sub_2440D0A30();
      sub_2440D0A90();
      v10(v8, v5);
      v37 = v36;
      LOBYTE(v35) = sub_243FFA420(v36);
      sub_243FFA514();
      swift_allocError();
      *v38 = v35 & 1;
      swift_willThrow();
    }
  }

  else
  {
    v32 = sub_243F4DF68();
    sub_243F4DE64(v32, v4);
    v33 = sub_2440D11E0();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v4, 1, v33) == 1)
    {
      sub_243F5FAB0(v4);
    }

    else
    {
      v39 = sub_2440D11C0();
      v40 = sub_2440D3470();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_243F48000, v39, v40, "undefined controller", v41, 2u);
        MEMORY[0x245D58570](v41, -1, -1);
      }

      (*(v34 + 8))(v4, v33);
    }

    sub_243FFA514();
    swift_allocError();
    *v42 = 1;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_243FF94CC()
{
  v1 = v0;
  v2 = sub_2440D0AC0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  result = sub_243FF7484();
  if (result)
  {
    if (*(v0 + 24))
    {

      return 0;
    }

    else
    {
      v19 = result;
      v10 = sub_243F4DF68();
      sub_243F4DE64(v10, v8);
      v11 = sub_2440D11E0();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v8, 1, v11) == 1)
      {
        sub_243F5FAB0(v8);
      }

      else
      {
        v13 = sub_2440D11C0();
        v14 = sub_2440D3490();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&dword_243F48000, v13, v14, "canceling capture", v15, 2u);
          MEMORY[0x245D58570](v15, -1, -1);
        }

        (*(v12 + 8))(v8, v11);
      }

      sub_2440D0A20();
      sub_2440D0AA0();
      v16 = *(v3 + 8);
      v16(v5, v2);
      *(v1 + 24) = 1;
      v17 = v19;
      [v19 cancelPINCapture];
      sub_2440D0A20();
      sub_2440D0A90();

      v16(v5, v2);
      return 1;
    }
  }

  return result;
}

void sub_243FF9760(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v21 - v2;
  v4 = sub_243FF7484();
  if (v4)
  {
    v5 = v4;
    v6 = sub_2440D2F80();
    v21[0] = 0;
    v7 = [v5 verifyWithPINToken:v6 error:v21];

    if (v7)
    {
      v8 = v21[0];
    }

    else
    {
      v12 = v21[0];
      v13 = sub_2440D0550();

      swift_willThrow();
      v14 = v13;
      v15 = sub_243FFA420(v13);
      sub_243FFA514();
      swift_allocError();
      *v16 = v15;
      swift_willThrow();
    }
  }

  else
  {
    v9 = sub_243F4DF68();
    sub_243F4DE64(v9, v3);
    v10 = sub_2440D11E0();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v3, 1, v10) == 1)
    {
      sub_243F5FAB0(v3);
    }

    else
    {
      v17 = sub_2440D11C0();
      v18 = sub_2440D3470();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_243F48000, v17, v18, "undefined controller", v19, 2u);
        MEMORY[0x245D58570](v19, -1, -1);
      }

      (*(v11 + 8))(v3, v10);
    }

    sub_243FFA514();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
  }
}

uint64_t sub_243FF9A0C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_243FF9A44()
{
  result = qword_27EDC2FA0;
  if (!qword_27EDC2FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDC2FA0);
  }

  return result;
}

uint64_t sub_243FF9CB4(uint64_t a1)
{
  v2 = sub_243FFA61C(&qword_27EDC2FF0, type metadata accessor for SPRXPCError, &unk_2440DE7C8);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_243FF9D20(uint64_t a1)
{
  v2 = sub_243FFA61C(&qword_27EDC2FF0, type metadata accessor for SPRXPCError, &unk_2440DE7C8);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_243FF9D8C(uint64_t a1)
{
  v2 = sub_243FFA61C(&qword_27EDC3058, type metadata accessor for SPRXPCError, &unk_2440DE80C);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_243FF9DF8(uint64_t a1)
{
  v2 = sub_243FFA61C(&qword_27EDC2FC0, type metadata accessor for PINControllerError, &unk_2440DEA0C);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_243FF9E64(uint64_t a1)
{
  v2 = sub_243FFA61C(&qword_27EDC2FC0, type metadata accessor for PINControllerError, &unk_2440DEA0C);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_243FF9ED0(void *a1, uint64_t a2)
{
  v4 = sub_243FFA61C(&qword_27EDC2FC0, type metadata accessor for PINControllerError, &unk_2440DEA0C);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_243FF9F60(uint64_t a1, uint64_t a2)
{
  v4 = sub_243FFA61C(&qword_27EDC2FC0, type metadata accessor for PINControllerError, &unk_2440DEA0C);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_243FF9FEC(uint64_t a1)
{
  v2 = sub_243FFA61C(&qword_27EDC3058, type metadata accessor for SPRXPCError, &unk_2440DE80C);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_243FFA058(uint64_t a1)
{
  v2 = sub_243FFA61C(&qword_27EDC3058, type metadata accessor for SPRXPCError, &unk_2440DE80C);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_243FFA0C4(void *a1, uint64_t a2)
{
  v4 = sub_243FFA61C(&qword_27EDC3058, type metadata accessor for SPRXPCError, &unk_2440DE80C);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_243FFA154(uint64_t a1, uint64_t a2)
{
  v4 = sub_243FFA61C(&qword_27EDC3058, type metadata accessor for SPRXPCError, &unk_2440DE80C);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_243FFA1D4(uint64_t a1)
{
  v2 = sub_243FFA61C(&qword_27EDC3020, type metadata accessor for PINControllerError, &unk_2440DE9C8);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_243FFA240(uint64_t a1)
{
  v2 = sub_243FFA61C(&qword_27EDC3020, type metadata accessor for PINControllerError, &unk_2440DE9C8);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_243FFA2AC(uint64_t a1)
{
  v2 = sub_243FFA61C(&qword_27EDC2FC0, type metadata accessor for PINControllerError, &unk_2440DEA0C);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_243FFA318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243FFA61C(&qword_27EDC2FC0, type metadata accessor for PINControllerError, &unk_2440DEA0C);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_243FFA39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243FFA61C(&qword_27EDC3058, type metadata accessor for SPRXPCError, &unk_2440DE80C);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

BOOL sub_243FFA420(void *a1)
{
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38F0, &qword_2440D6070);
  type metadata accessor for PINControllerError(0);
  if (swift_dynamicCast())
  {
    sub_243FFA61C(&qword_27EDC2FC0, type metadata accessor for PINControllerError, &unk_2440DEA0C);
    sub_2440D0500();

    return v4 != 11013;
  }

  else
  {

    return 1;
  }
}

unint64_t sub_243FFA514()
{
  result = qword_27EDC2FA8;
  if (!qword_27EDC2FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2FA8);
  }

  return result;
}

unint64_t sub_243FFA56C()
{
  result = qword_27EDC2FB0;
  if (!qword_27EDC2FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2FB0);
  }

  return result;
}

uint64_t sub_243FFA61C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_243FFABE4()
{
  if (qword_27EDCD740 != -1)
  {
    swift_once();
  }

  return &qword_27EDC64C0;
}

uint64_t *sub_243FFAC60()
{
  if (qword_27EDCD748 != -1)
  {
    swift_once();
  }

  return &qword_27EDC64C8;
}

uint64_t sub_243FFACB0()
{
  v0 = *sub_244056A6C();
  result = sub_2440D26F0();
  qword_27EDC64D0 = result;
  return result;
}

uint64_t *sub_243FFAD00()
{
  if (qword_27EDCD750 != -1)
  {
    swift_once();
  }

  return &qword_27EDC64D0;
}

uint64_t sub_243FFAD50()
{
  v0 = *sub_244056A6C();
  result = sub_2440D26F0();
  qword_27EDC64D8 = result;
  return result;
}

uint64_t *sub_243FFADA0()
{
  if (qword_27EDCD758 != -1)
  {
    swift_once();
  }

  return &qword_27EDC64D8;
}

uint64_t sub_243FFADF0()
{
  v0 = *sub_244056A6C();
  result = sub_2440D26F0();
  qword_27EDC64E0 = result;
  return result;
}

uint64_t *sub_243FFAE40()
{
  if (qword_27EDCD760 != -1)
  {
    swift_once();
  }

  return &qword_27EDC64E0;
}

uint64_t sub_243FFAE90()
{
  v0 = *sub_244056A6C();
  result = sub_2440D26F0();
  qword_27EDC64E8 = result;
  return result;
}

uint64_t *sub_243FFAEE0()
{
  if (qword_27EDCD768 != -1)
  {
    swift_once();
  }

  return &qword_27EDC64E8;
}

uint64_t *sub_243FFAF58()
{
  if (qword_27EDCD770 != -1)
  {
    swift_once();
  }

  return &qword_27EDC64F0;
}

uint64_t *sub_243FFAFD4()
{
  if (qword_27EDCD778 != -1)
  {
    swift_once();
  }

  return &qword_27EDC64F8;
}

uint64_t sub_243FFB024()
{
  v0 = *sub_244056A6C();
  result = sub_2440D26F0();
  qword_27EDC6500 = result;
  return result;
}

uint64_t *sub_243FFB074()
{
  if (qword_27EDCD780 != -1)
  {
    swift_once();
  }

  return &qword_27EDC6500;
}

uint64_t *sub_243FFB0DC()
{
  if (qword_27EDCD788 != -1)
  {
    swift_once();
  }

  return &qword_27EDC6508;
}

uint64_t sub_243FFB12C()
{
  v0 = *sub_244056A6C();
  result = sub_2440D26F0();
  qword_27EDC6510 = result;
  return result;
}

uint64_t *sub_243FFB17C()
{
  if (qword_27EDCD790 != -1)
  {
    swift_once();
  }

  return &qword_27EDC6510;
}

uint64_t sub_243FFB1CC()
{
  v0 = *sub_244056A6C();
  result = sub_2440D26F0();
  qword_27EDC6518 = result;
  return result;
}

uint64_t *sub_243FFB21C()
{
  if (qword_27EDCD798 != -1)
  {
    swift_once();
  }

  return &qword_27EDC6518;
}

uint64_t sub_243FFB294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *sub_244056A6C();
  result = sub_2440D26F0();
  *a4 = result;
  return result;
}

uint64_t *sub_243FFB2E4()
{
  if (qword_27EDCD7A0 != -1)
  {
    swift_once();
  }

  return &qword_27EDC6520;
}

void sub_243FFB334(uint64_t a1@<X8>)
{
  v2 = v1;
  v26[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3070, &qword_2440DEB90);
  v26[3] = *(v3 - 8);
  v26[4] = v3;
  MEMORY[0x28223BE20](v3);
  v26[1] = v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3078, &qword_2440DEB98);
  MEMORY[0x28223BE20](v5);
  v26[2] = v26 - v6;
  v26[0] = sub_2440D1C20();
  v29 = 1;
  v7 = *(v1 + 176);
  v30[10] = *(v1 + 160);
  v30[11] = v7;
  *&v30[12] = *(v1 + 192);
  v8 = *(v1 + 96);
  v30[7] = *(v1 + 112);
  v9 = *(v1 + 128);
  v30[9] = *(v1 + 144);
  v30[8] = v9;
  v10 = *(v1 + 48);
  v30[2] = *(v1 + 32);
  v30[3] = v10;
  v11 = *(v1 + 64);
  v30[5] = *(v1 + 80);
  v30[6] = v8;
  v30[4] = v11;
  v12 = *(v1 + 16);
  v30[0] = *v1;
  v30[1] = v12;
  *v27 = *(v1 + 248);
  v27[16] = *(v1 + 264);
  sub_243FB07E4(v30, v32);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3068, &qword_2440DEB88);
  MEMORY[0x245D56840](v32);
  v14 = LOBYTE(v32[0]) == 0;
  v32[0] = *(v1 + 224);
  LOBYTE(v32[1]) = *(v1 + 240);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE8, &qword_2440D6530);
  MEMORY[0x245D56840](v27);
  v16 = v27[0];
  v17 = *(v2 + 216);
  sub_243F676A0();
  sub_243F4E2F4();
  sub_243F62020();
  sub_243F676A0();
  sub_243FD4834(v30, v14, v16, v17, v31);
  v32[0] = *(v2 + 248);
  LOBYTE(v32[1]) = *(v2 + 264);
  MEMORY[0x245D56840](v27, v13);
  v18 = v27[0] == 1;
  v32[0] = *(v2 + 224);
  LOBYTE(v32[1]) = *(v2 + 240);
  MEMORY[0x245D56840](v27, v15);
  v19 = v27[0];
  sub_24407D230();
  sub_243F62020();
  sub_243F676A0();
  sub_24407D238(v18, v19, &v39);
  v20 = sub_243FFBA34();
  v32[0] = *(v2 + 224);
  LOBYTE(v32[1]) = *(v2 + 240);
  MEMORY[0x245D56840](v27, v15);
  v21 = v27[0];
  v22 = *(v2 + 200);
  v23 = *(v2 + 208);
  v32[0] = *(v2 + 248);
  LOBYTE(v32[1]) = *(v2 + 264);

  MEMORY[0x245D56840](v27, v13);
  if (v27[0] == 3)
  {
    v24 = 3;
  }

  else
  {
    v24 = 4;
  }

  if (v27[0] == 2)
  {
    v25 = 2;
  }

  else
  {
    v25 = v24;
  }

  sub_243F62020();
  sub_243F676A0();
  sub_24407E538(v20, v21, v22, v23, v25, &v34);
  memcpy(v27, v31, 0x118uLL);
  memcpy(v33, v31, 0x118uLL);
  v43[0] = v39;
  v43[1] = v40;
  v43[2] = v41;
  *(&v33[17] + 8) = v39;
  *(&v33[18] + 8) = v40;
  *(&v33[19] + 8) = v41;
  v45[4] = v38;
  v45[3] = v37;
  v45[2] = v36;
  v45[0] = v34;
  v45[1] = v35;
  v44 = v42;
  *(&v33[20] + 1) = v42;
  v33[24] = v37;
  v33[25] = v38;
  v33[22] = v35;
  v33[23] = v36;
  v33[21] = v34;
  v46[3] = v37;
  v46[4] = v38;
  v46[1] = v35;
  v46[2] = v36;
  v46[0] = v34;
  sub_243FD45A4(v27, v32);
  sub_243FFDFC0(v43, v32);
  sub_243FFE01C(v45, v32);
  sub_243FFE078(v46);
  v47[0] = v39;
  v47[1] = v40;
  v47[2] = v41;
  v48 = v42;
  sub_243FFE0CC(v47);
  memcpy(v32, v31, 0x118uLL);
  sub_243FFE120(v32);
  memcpy(v30, v33, sizeof(v30));
  memcpy(v31, v33, sizeof(v31));
  sub_243F5F574(v30, v32, &qword_27EDC3080, &qword_2440DEBA0);
  sub_243F5EED4(v31, &qword_27EDC3080, &qword_2440DEBA0);
  memcpy(&v28[7], v30, 0x1A0uLL);
  *v27 = v26[0];
  *&v27[8] = 0;
  v27[16] = v29;
  memcpy(&v27[17], v28, 0x1A7uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3088, &qword_2440DEBA8);
  sub_243F5DD50(&qword_27EDC3090, &qword_27EDC3088, &qword_2440DEBA8, MEMORY[0x277CE1198]);
  sub_24408F1C4();
}

uint64_t sub_243FFB860()
{
  memcpy((v0 + 1760), (v0 + 48), 0x1B8uLL);
  sub_243F5EED4(v0 + 1760, v1, v3);
  sub_2440D2B00();
  sub_2440D18E0();
  v6 = *(v0 + 16);
  (*(*(v0 + 24) + 32))(v6, v5, *(v0 + 32));
  v7 = (v6 + *(v4 + 44));
  v8 = *(v0 + 128);
  v7[4] = *(v0 + 112);
  v7[5] = v8;
  v7[6] = *(v0 + 144);
  v9 = *(v0 + 64);
  *v7 = *(v0 + 48);
  v7[1] = v9;
  v10 = *(v0 + 96);
  v7[2] = *(v0 + 80);
  v7[3] = v10;
  v11 = sub_2440CBE68();
  swift_beginAccess();
  v12 = *v11;
  *(v0 + 2816) = *(v2 + 248);
  *(v0 + 2832) = *(v2 + 264);

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3068, &qword_2440DEB88);
  MEMORY[0x245D56840](v13);
  LOBYTE(v11) = *(v0 + 2616);
  v14 = *(v0 + 40);
  sub_243FFB9C4(v6, v14);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3098, &unk_2440DEBB0);
  v16 = v14 + *(result + 36);
  *v16 = v12;
  *(v16 + 8) = v11;
  return result;
}

uint64_t sub_243FFB9C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3078, &qword_2440DEB98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_243FFBA34()
{
  v4 = *(v0 + 248);
  v5 = *(v0 + 264);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3068, &qword_2440DEB88);
  MEMORY[0x245D56840](&v3);
  if (v3 == 2)
  {
    return 1;
  }

  v4 = *(v0 + 248);
  v5 = *(v0 + 264);
  MEMORY[0x245D56840](&v3, v1);
  return v3 == 3;
}

void sub_243FFBAD8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  v19 = sub_244070800();
  v20 = sub_2440708D8();
  v21 = *(a1 + 176);
  *(a9 + 160) = *(a1 + 160);
  *(a9 + 176) = v21;
  v22 = *(a1 + 192);
  v23 = *(a1 + 112);
  *(a9 + 96) = *(a1 + 96);
  *(a9 + 112) = v23;
  v24 = *(a1 + 144);
  *(a9 + 128) = *(a1 + 128);
  *(a9 + 144) = v24;
  v25 = *(a1 + 48);
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = v25;
  v26 = *(a1 + 80);
  *(a9 + 64) = *(a1 + 64);
  *(a9 + 80) = v26;
  v27 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v27;
  *(a9 + 192) = v22;
  *(a9 + 200) = a2;
  *(a9 + 208) = a3;
  *(a9 + 216) = a4;
  *(a9 + 224) = a5;
  *(a9 + 232) = a6;
  *(a9 + 240) = a7;
  *(a9 + 248) = a8;
  *(a9 + 256) = a10;
  *(a9 + 264) = a11;
  *(a9 + 272) = v19;
  *(a9 + 280) = v20;
}

uint64_t sub_243FFBBB8@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_2440D1C20();
  v5 = MEMORY[0x245D56A90](0.5, 1.0, 0.0);
  v12 = *(v2 + 3);
  v10 = *(v2 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
  sub_2440D2820();
  v6 = v11;
  v11 = *v2;
  v7 = swift_allocObject();
  v8 = *(v2 + 1);
  *(v7 + 16) = *v2;
  *(v7 + 32) = v8;
  *(v7 + 48) = v2[4];
  LOBYTE(v10) = 1;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = sub_243FFBD20;
  *(a2 + 48) = v7;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  sub_243F91DD4(&v11, &v10);

  return sub_243F5F574(&v12, &v10, &qword_27EDC01B0, &unk_2440D6750);
}

uint64_t sub_243FFBCD8()
{

  return swift_deallocObject();
}

uint64_t sub_243FFBD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = sub_2440D1D90();
  v4 = *(v3 - 8);
  v80 = v3;
  v81 = v4;
  MEMORY[0x28223BE20](v3);
  v75 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3118, &qword_2440DEFA0);
  v7 = *(v6 - 8);
  v77 = v6;
  v78 = v7;
  MEMORY[0x28223BE20](v6);
  v73 = v70 - v8;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3120, &qword_2440DEFA8) - 8;
  MEMORY[0x28223BE20](v76);
  v79 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v85 = v70 - v11;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3128, &qword_2440DEFB0) - 8;
  MEMORY[0x28223BE20](v72);
  v74 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v83 = (v70 - v14);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3130, &qword_2440DEFB8) - 8;
  MEMORY[0x28223BE20](v71);
  v84 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v86 = v70 - v17;
  v18 = *(a1 + 200);
  v19 = *(a1 + 232);
  v100 = *(a1 + 216);
  v101 = v19;
  v102 = *(a1 + 248);
  v20 = *(a1 + 136);
  v21 = *(a1 + 168);
  v96 = *(a1 + 152);
  v97 = v21;
  v98 = *(a1 + 184);
  v99 = v18;
  v22 = *(a1 + 72);
  v23 = *(a1 + 104);
  v92 = *(a1 + 88);
  v93 = v23;
  v94 = *(a1 + 120);
  v95 = v20;
  v90 = *(a1 + 56);
  v91 = v22;
  v88[0] = *(a1 + 32);
  *&v88[1] = *(a1 + 48);
  sub_243FB07E4(&v90, v103);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B8, &unk_2440DCCC0);
  sub_2440D2820();
  v24 = v103[0];
  v25 = v103[1];
  v88[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
  sub_2440D2840();
  v26 = v103[0];
  v27 = v103[1];
  v28 = v103[2];
  v89 = *(a1 + 16);
  v88[0] = *(a1 + 16);
  v70[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3138, &unk_2440E3980);
  sub_2440D2840();
  v29 = v103[0];
  v30 = v103[1];
  v31 = v103[2];
  v32 = sub_244070800();
  v33 = sub_2440708D8();
  v88[10] = v100;
  v88[11] = v101;
  v88[6] = v96;
  v88[7] = v97;
  v88[8] = v98;
  v88[9] = v99;
  v88[2] = v92;
  v88[3] = v93;
  v88[4] = v94;
  v88[5] = v95;
  v88[0] = v90;
  v88[1] = v91;
  *&v88[12] = v102;
  *(&v88[12] + 1) = v24;
  *&v88[13] = v25;
  BYTE8(v88[13]) = 0;
  *&v88[14] = v26;
  *(&v88[14] + 1) = v27;
  LOBYTE(v88[15]) = v28;
  *(&v88[15] + 1) = v29;
  *&v88[16] = v30;
  BYTE8(v88[16]) = v31;
  *&v88[17] = v32;
  *(&v88[17] + 1) = v33;
  v34 = swift_allocObject();
  v35 = *(a1 + 208);
  v34[13] = *(a1 + 192);
  v34[14] = v35;
  v36 = *(a1 + 240);
  v34[15] = *(a1 + 224);
  v34[16] = v36;
  v37 = *(a1 + 144);
  v34[9] = *(a1 + 128);
  v34[10] = v37;
  v38 = *(a1 + 176);
  v34[11] = *(a1 + 160);
  v34[12] = v38;
  v39 = *(a1 + 80);
  v34[5] = *(a1 + 64);
  v34[6] = v39;
  v40 = *(a1 + 112);
  v34[7] = *(a1 + 96);
  v34[8] = v40;
  v41 = *(a1 + 16);
  v34[1] = *a1;
  v34[2] = v41;
  v42 = *(a1 + 48);
  v34[3] = *(a1 + 32);
  v34[4] = v42;
  sub_243FFDD4C(a1, v103);
  sub_243FFDD84();
  v43 = v86;
  sub_2440D23D0();

  memcpy(v103, v88, 0x120uLL);
  sub_243FFDDD8(v103);
  LOBYTE(v29) = sub_2440D20C0();
  sub_2440D13D0();
  v44 = v43 + *(v71 + 44);
  *v44 = v29;
  *(v44 + 8) = v45;
  *(v44 + 16) = v46;
  *(v44 + 24) = v47;
  *(v44 + 32) = v48;
  *(v44 + 40) = 0;
  v49 = sub_2440D1B30();
  v50 = v83;
  *v83 = v49;
  v50[1] = 0;
  *(v50 + 16) = 1;
  v51 = v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3148, &qword_2440DEFC0);
  sub_243FFC620(v51 + *(v52 + 44));
  v53 = v51 + *(v72 + 44);
  sub_2440D2A80();
  LOBYTE(v30) = sub_2440D20B0();
  v53[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3150, &qword_2440DEFC8) + 36)] = v30;
  sub_2440D1B70();
  v87 = v89;
  sub_2440D2840();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3158, &qword_2440DEFD0);
  sub_243FFDE08();
  sub_243F5DD50(&qword_27EDC3168, &qword_27EDC3158, &qword_2440DEFD0, MEMORY[0x277CE14C0]);
  v54 = v73;
  sub_2440D2900();
  v55 = v75;
  sub_2440D1D80();
  sub_243F5DD50(&qword_27EDC3170, &qword_27EDC3118, &qword_2440DEFA0, MEMORY[0x277CDF038]);
  v56 = v85;
  v57 = v77;
  v58 = v80;
  sub_2440D23A0();
  (*(v81 + 8))(v55, v58);
  (*(v78 + 8))(v54, v57);
  v59 = sub_2440D20A0();
  v60 = v56 + *(v76 + 44);
  *v60 = v59;
  *(v60 + 8) = 0u;
  *(v60 + 24) = 0u;
  *(v60 + 40) = 1;
  v61 = v84;
  sub_243F5F574(v86, v84, &qword_27EDC3130, &qword_2440DEFB8);
  v62 = v83;
  v63 = v74;
  sub_243F5F574(v83, v74, &qword_27EDC3128, &qword_2440DEFB0);
  v64 = v79;
  sub_243F5F574(v56, v79, &qword_27EDC3120, &qword_2440DEFA8);
  v65 = v61;
  v66 = v82;
  sub_243F5F574(v65, v82, &qword_27EDC3130, &qword_2440DEFB8);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3178, &qword_2440DEFD8);
  v68 = v66 + v67[12];
  *v68 = 0;
  *(v68 + 8) = 1;
  sub_243F5F574(v63, v66 + v67[16], &qword_27EDC3128, &qword_2440DEFB0);
  sub_243F5F574(v64, v66 + v67[20], &qword_27EDC3120, &qword_2440DEFA8);
  sub_243F5EED4(v85, &qword_27EDC3120, &qword_2440DEFA8);
  sub_243F5EED4(v62, &qword_27EDC3128, &qword_2440DEFB0);
  sub_243F5EED4(v86, &qword_27EDC3130, &qword_2440DEFB8);
  sub_243F5EED4(v64, &qword_27EDC3120, &qword_2440DEFA8);
  sub_243F5EED4(v63, &qword_27EDC3128, &qword_2440DEFB0);
  return sub_243F5EED4(v84, &qword_27EDC3130, &qword_2440DEFB8);
}

uint64_t sub_243FFC620@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2440D1B10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3190, &qword_2440DEFF0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3198, &qword_2440DEFF8);
  sub_243FFDE5C();
  sub_2440D2870();
  v16 = sub_2440D20B0();
  sub_2440D13D0();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC31B8, &qword_2440DF008) + 36)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  sub_2440D1B00();
  (*(v3 + 16))(v5, v8, v2);
  sub_243FFDF14();
  v26 = sub_2440D1610();
  (*(v3 + 8))(v8, v2);
  *&v15[*(v10 + 44)] = v26;
  sub_243F5F574(v15, v12, &qword_27EDC3190, &qword_2440DEFF0);
  *a1 = 0;
  *(a1 + 8) = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC31C0, &unk_2440DF010);
  sub_243F5F574(v12, a1 + *(v27 + 48), &qword_27EDC3190, &qword_2440DEFF0);
  v28 = a1 + *(v27 + 64);
  *v28 = 0;
  *(v28 + 8) = 1;
  sub_243F5EED4(v15, &qword_27EDC3190, &qword_2440DEFF0);
  return sub_243F5EED4(v12, &qword_27EDC3190, &qword_2440DEFF0);
}

double sub_243FFC928@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_2440D2B00();
  v5 = v4;
  v6 = sub_243FBB128(v3);
  v7 = sub_243F795D0(v6);
  v8 = sub_243FB9098();
  sub_243FB90D8(0x6B72616D78, 0xE500000000000000, v6, v7, 0xD000000000000016, 0x80000002440EAAC0, sub_243FFCA4C, 0, v15, v8);
  sub_2440707F0();
  swift_beginAccess();
  sub_2440D2B00();
  sub_2440D1560();
  v9 = v15[3];
  *(a2 + 48) = v15[2];
  *(a2 + 64) = v9;
  v10 = v15[1];
  *(a2 + 16) = v15[0];
  *(a2 + 32) = v10;
  *(a2 + 88) = v12;
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 80) = v16;
  *(a2 + 104) = v13;
  result = *&v14;
  *(a2 + 120) = v14;
  return result;
}

uint64_t sub_243FFCA60(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38C0, &qword_2440D8A50);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2440D5CF0;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = a1;
  *(v2 + 40) = 0xEB00000000646C72;
  sub_2440D3B00();
}

uint64_t sub_243FFCAF4@<X0>(char *a1@<X8>)
{
  v52 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3180, &qword_2440DEFE0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v51 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v53 = &v45 - v5;
  MEMORY[0x28223BE20](v6);
  v49 = &v45 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  sub_2440D1B70();
  *v22 = sub_2440D2300();
  *(v22 + 1) = v23;
  v22[16] = v24 & 1;
  *(v22 + 3) = v25;
  *(v22 + 16) = 256;
  v48 = v22;
  sub_2440D1B70();
  *v19 = sub_2440D2300();
  *(v19 + 1) = v26;
  v19[16] = v27 & 1;
  *(v19 + 3) = v28;
  *(v19 + 16) = 257;
  v47 = v19;
  sub_2440D1B70();
  v29 = v16;
  *v16 = sub_2440D2300();
  *(v16 + 1) = v30;
  v16[16] = v31 & 1;
  *(v16 + 3) = v32;
  *(v16 + 16) = 258;
  v46 = v16;
  sub_2440D1B70();
  *v13 = sub_2440D2300();
  *(v13 + 1) = v33;
  v13[16] = v34 & 1;
  *(v13 + 3) = v35;
  *(v13 + 16) = 259;
  v36 = *(v2 + 16);
  v37 = v10;
  v50 = v10;
  v36(v10, v22, v1);
  v38 = v49;
  v36(v49, v19, v1);
  v39 = v53;
  v36(v53, v29, v1);
  v40 = v51;
  v36(v51, v13, v1);
  v41 = v52;
  v36(v52, v37, v1);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3188, &qword_2440DEFE8);
  v36(&v41[v42[12]], v38, v1);
  v36(&v41[v42[16]], v39, v1);
  v36(&v41[v42[20]], v40, v1);
  v43 = *(v2 + 8);
  v43(v13, v1);
  v43(v46, v1);
  v43(v47, v1);
  v43(v48, v1);
  v43(v40, v1);
  v43(v53, v1);
  v43(v38, v1);
  return (v43)(v50, v1);
}

uint64_t sub_243FFCFC4@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[13];
  v14[12] = v2[12];
  v14[13] = v4;
  v5 = v2[15];
  v14[14] = v2[14];
  v14[15] = v5;
  v6 = v2[9];
  v14[8] = v2[8];
  v14[9] = v6;
  v7 = v2[11];
  v14[10] = v2[10];
  v14[11] = v7;
  v8 = v2[5];
  v14[4] = v2[4];
  v14[5] = v8;
  v9 = v2[7];
  v14[6] = v2[6];
  v14[7] = v9;
  v10 = v2[1];
  v14[0] = *v2;
  v14[1] = v10;
  v11 = v2[3];
  v14[2] = v2[2];
  v14[3] = v11;
  *a2 = sub_2440D1C20();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3110, &qword_2440DEF98);
  return sub_243FFBD7C(v14, a2 + *(v12 + 44));
}

double sub_243FFD060@<D0>(char *a1@<X8>)
{
  sub_243FFD210(v15);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC30A0, &unk_2440DEBC8) + 36);
  v3 = *MEMORY[0x277CDF3C0];
  v4 = sub_2440D1410();
  v5 = *(v4 - 8);
  (*(v5 + 104))(&a1[v2], v3, v4);
  (*(v5 + 56))(&a1[v2], 0, 1, v4);
  v6 = v27;
  *(a1 + 12) = v26;
  *(a1 + 13) = v6;
  v7 = v29;
  *(a1 + 14) = v28;
  *(a1 + 15) = v7;
  v8 = v23;
  *(a1 + 8) = v22;
  *(a1 + 9) = v8;
  v9 = v25;
  *(a1 + 10) = v24;
  *(a1 + 11) = v9;
  v10 = v19;
  *(a1 + 4) = v18;
  *(a1 + 5) = v10;
  v11 = v21;
  *(a1 + 6) = v20;
  *(a1 + 7) = v11;
  v12 = v15[1];
  *a1 = v15[0];
  *(a1 + 1) = v12;
  result = *&v16;
  v14 = v17;
  *(a1 + 2) = v16;
  *(a1 + 3) = v14;
  return result;
}

uint64_t sub_243FFD178(uint64_t a1)
{
  v2 = sub_243FFDF6C();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_243FFD1C4(uint64_t a1)
{
  v2 = sub_243FFDF6C();

  return MEMORY[0x28212D8E0](a1, v2);
}

double sub_243FFD210@<D0>(uint64_t a1@<X8>)
{
  sub_2440D2810();
  v27 = v30;
  v2 = *(&v30 + 1);
  sub_2440D2810();
  v3 = v30;
  v4 = *(&v30 + 1);
  v28 = 0x445F535554415453;
  v29 = 0xEB00000000454E4FLL;
  sub_2440D2810();
  v26 = v30;
  v5 = v31;
  sub_243FD5980();
  v6 = sub_2440D3590();
  type metadata accessor for MerchantLogo();
  v7 = sub_243F4E2E4();
  v8 = (*(*v7 + 80))(0xD00000000000001BLL, 0x80000002440EB1A0, 5814);
  v10 = v9;
  v12 = v11;

  v13 = sub_243F4E2FC();
  v25[23] = -18;
  *&v25[24] = 0x6174757246;
  *v25 = 0xE900000000000061;
  strcpy(&v25[8], "Store Location");
  *&v24 = 0xE900000000000061;
  *(&v24 + 1) = 0x747572460A796150;
  *&v23 = v14;
  *(&v23 + 1) = 0x7475724620796150;
  *&v22 = 0;
  *(&v22 + 1) = v13;
  sub_243FFECC0(3, v6, 0x34342E323124, 0xE600000000000000, 0, 0, 4477781, 0xE300000000000000, &v30, 0, 0, v22, v23, v24, *v25, *&v25[16], 0xE500000000000000, v8, v10, v12);
  *(a1 + 32) = v26;
  v15 = v38;
  *(a1 + 200) = v39;
  v16 = v41;
  *(a1 + 216) = v40;
  *(a1 + 232) = v16;
  v17 = v34;
  *(a1 + 136) = v35;
  v18 = v37;
  *(a1 + 152) = v36;
  *(a1 + 168) = v18;
  *(a1 + 184) = v15;
  v19 = v30;
  *(a1 + 72) = v31;
  result = *&v32;
  v21 = v33;
  *(a1 + 88) = v32;
  *(a1 + 104) = v21;
  *(a1 + 120) = v17;
  *a1 = v27;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 48) = v5;
  *(a1 + 248) = v42;
  *(a1 + 56) = v19;
  return result;
}

unint64_t sub_243FFD4A8()
{
  result = qword_27EDC30A8;
  if (!qword_27EDC30A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC30A8);
  }

  return result;
}

unint64_t sub_243FFD51C()
{
  result = qword_27EDC30B0;
  if (!qword_27EDC30B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC30B0);
  }

  return result;
}

uint64_t sub_243FFD594(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
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

uint64_t sub_243FFD5DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_243FFD6AC()
{
  result = qword_27EDC30B8;
  if (!qword_27EDC30B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3098, &unk_2440DEBB0);
    sub_243FFD764();
    sub_243F5DD50(&qword_27EDC30C8, &qword_27EDC30D0, &qword_2440DEE78, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC30B8);
  }

  return result;
}

unint64_t sub_243FFD764()
{
  result = qword_27EDC30C0;
  if (!qword_27EDC30C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3078, &qword_2440DEB98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3088, &qword_2440DEBA8);
    sub_243F5DD50(&qword_27EDC3090, &qword_27EDC3088, &qword_2440DEBA8, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC30C0);
  }

  return result;
}

unint64_t sub_243FFD864()
{
  result = qword_27EDC30D8;
  if (!qword_27EDC30D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC30E0, &qword_2440DEE80);
    sub_243FFD8F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC30D8);
  }

  return result;
}

unint64_t sub_243FFD8F0()
{
  result = qword_27EDC30E8;
  if (!qword_27EDC30E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC30F0, &qword_2440DEE88);
    sub_243F5DD50(&qword_27EDC30F8, &qword_27EDC3100, &qword_2440DEE90, MEMORY[0x277CE1198]);
    sub_243F5DD50(&qword_27EDC0218, &qword_27EDC0220, &qword_2440D7220, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC30E8);
  }

  return result;
}

unint64_t sub_243FFD9D8()
{
  result = qword_27EDC3108;
  if (!qword_27EDC3108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC30A0, &unk_2440DEBC8);
    sub_243FFDA90();
    sub_243F5DD50(&qword_27EDC0710, &qword_27EDC0718, &qword_2440DCAD0, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3108);
  }

  return result;
}

unint64_t sub_243FFDA90()
{
  result = qword_27EDCDAB0[0];
  if (!qword_27EDCDAB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDCDAB0);
  }

  return result;
}

uint64_t sub_243FFDAE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243FFDB2C(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243FFDBD8()
{

  return swift_deallocObject();
}

uint64_t sub_243FFDC88()
{
  v3 = *(v0 + 16);
  v2[1] = *(v0 + 16);
  v4 = *(&v3 + 1);
  sub_243F5F574(&v4, v2, &qword_27EDC1348, &qword_2440DEBC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0, &unk_2440D6750);
  sub_2440D2820();
  v2[0] = v3;
  sub_2440D2830();
  return sub_243F5EED4(&v3, &qword_27EDC01B0, &unk_2440D6750);
}

unint64_t sub_243FFDD84()
{
  result = qword_27EDC3140;
  if (!qword_27EDC3140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3140);
  }

  return result;
}

unint64_t sub_243FFDE08()
{
  result = qword_27EDC3160;
  if (!qword_27EDC3160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3160);
  }

  return result;
}

unint64_t sub_243FFDE5C()
{
  result = qword_27EDC31A0;
  if (!qword_27EDC31A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3198, &qword_2440DEFF8);
    sub_243F5DD50(&qword_27EDC31A8, &qword_27EDC31B0, &qword_2440DF000, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC31A0);
  }

  return result;
}

unint64_t sub_243FFDF14()
{
  result = qword_27EDC0148;
  if (!qword_27EDC0148)
  {
    sub_2440D1B10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0148);
  }

  return result;
}

unint64_t sub_243FFDF6C()
{
  result = qword_27EDC31C8;
  if (!qword_27EDC31C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC31C8);
  }

  return result;
}

void sub_243FFE1D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v8 = a1;
  v10 = type metadata accessor for ProxReaderDefaults(0, a4, a3, a4);
  v11 = *(v10 + 32);
  v12 = [objc_opt_self() standardUserDefaults];
  *a5 = sub_2440B1460(v8);
  *(a5 + 1) = v13;
  (*(*(a4 - 8) + 32))(&a5[*(v10 + 28)], a2, a4);

  *&a5[v11] = a3;
}

uint64_t sub_243FFE29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_2440D3630();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - v7;
  v9 = *(v2 + *(a1 + 32));
  v10 = sub_2440D2F80();
  v11 = [v9 objectForKey_];

  if (v11)
  {
    sub_2440D36C0();
    swift_unknownObjectRelease();
    sub_243F734CC(v16, v17);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0478, &qword_2440D7A20);
  v12 = swift_dynamicCast();
  v13 = *(v5 - 8);
  v14 = *(v13 + 56);
  if (v12)
  {
    v14(v8, 0, 1, v5);
    return (*(v13 + 32))(a2, v8, v5);
  }

  else
  {
    v14(v8, 1, 1, v5);
    return (*(v13 + 16))(a2, v2 + *(a1 + 28), v5);
  }
}

unint64_t sub_243FFE488(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_243FF9A44();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_243FFE520(uint64_t a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_243FFE668(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
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
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

unint64_t sub_243FFE840(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_243FF9A44();
    if (v3 <= 0x3F)
    {
      result = sub_2440D02D0();
      if (v4 <= 0x3F)
      {
        result = sub_2440D02E0();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_243FFE908(uint64_t a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_243FFEA60(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
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
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_243FFEC70()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    v1 = v0[2];
  }

  return v1;
}

__n128 sub_243FFECC0@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __n128 a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20)
{
  result = a16;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 88) = a12;
  *(a9 + 104) = a13;
  *(a9 + 120) = a14;
  *(a9 + 136) = a15;
  *(a9 + 152) = a16;
  *(a9 + 168) = a17;
  *(a9 + 176) = a18;
  *(a9 + 184) = a19;
  *(a9 + 192) = a20;
  return result;
}

uint64_t sub_243FFED28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1F90, &unk_2440DF090);
  MEMORY[0x28223BE20](v4 - 8);
  v154 = &v138 - v5;
  v6 = sub_2440D07E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v138 - v11;
  v13 = sub_2440D0BD0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(type metadata accessor for TapContext(0) + 20);
  v156 = v16;
  v157 = v14;
  v18 = *(v14 + 16);
  v158 = v13;
  v18(v16, a1 + v17, v13);
  sub_2440D0E70();
  v19 = sub_2440D0FB0();
  v21 = v20;
  if (v19 != sub_2440D0FB0() || v21 != v22)
  {
    v23 = sub_2440D3A10();

    if (v23)
    {
      goto LABEL_5;
    }

    sub_2440D0E70();
    v62 = sub_2440D0FB0();
    v64 = v63;
    if (v62 == sub_2440D0FB0() && v64 == v65)
    {
    }

    else
    {
      v66 = sub_2440D3A10();

      if ((v66 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    sub_243FD5980();
    v67 = sub_2440D0E60();
    v68 = sub_2440D3590();
    v69 = sub_2440D35C0();

    if (v69)
    {
      v70 = 0xD000000000000017;
      v71 = sub_2440D0E70();
      v72 = sub_2440D0E60();
      v73 = sub_2440D0E00();
      v75 = v74;
      v153 = sub_2440D0E40();
      v154 = sub_2440D0E20();
      v76 = sub_2440D0E70();
      v77 = sub_2440D0E30();
      if (v76 == 2)
      {
        v78 = "DESCRIPTION_TIMEOUT_LOOK_UP";
        v152 = 0xD000000000000017;
        v31 = v156;
        goto LABEL_56;
      }

      v31 = v156;
      if (v77 <= 1)
      {
        if (!v77)
        {
          v128 = "DESCRIPTION_TIMEOUT_LOOK_UP";
          goto LABEL_54;
        }

        if (v77 != 1)
        {
LABEL_50:
          v128 = "DESCRIPTION_TIMEOUT_PAYMENT";
LABEL_54:
          v78 = v128 - 32;
          v127 = 0xD00000000000001BLL;
          goto LABEL_55;
        }

        v78 = "DESCRIPTION_TIMEOUT_TAB";
        v127 = 0xD000000000000018;
      }

      else if (v77 == 2)
      {
        v78 = "DESCRIPTION_TIMEOUT_VERIF";
        v127 = 0xD000000000000017;
      }

      else
      {
        if (v77 != 3)
        {
          goto LABEL_50;
        }

        v78 = "LABEL_VERIFICATION_LOOK_UP";
        v127 = 0xD000000000000019;
      }

LABEL_55:
      v152 = v127;
LABEL_56:
      v129 = v78 | 0x8000000000000000;
      v130 = sub_2440D0E30();
      if (v130 <= 2)
      {
        switch(v130)
        {
          case 0:
            v132 = "LABEL_VERIFICATION_LOOK_UP";
            goto LABEL_63;
          case 1:
            v131 = "LABEL_VERIFICATION_TAB";
            goto LABEL_65;
          case 2:
            v131 = "LABEL_VERIFICATION_DEFAULT";
            v70 = 0xD000000000000016;
LABEL_65:
            v144 = v71;
            v147 = v75;
            v148 = v73;
            v149 = v72;
            v133 = sub_243F68750();
            v134 = sub_2440579C8(v133 & 1, v70, v131 | 0x8000000000000000);
            v145 = v135;
            v146 = v134;

            v156 = sub_2440D0BB0();
            v143 = v136;
            *&v142 = sub_2440D0BB0();
            v141 = v137;
            v139 = 0;
            v150 = 0;
            v151 = 0;
            v155 = 0xE000000000000000;
            v140 = v129;
            goto LABEL_11;
        }
      }

      v132 = "LABEL_VERIFICATION_DEFAULT";
LABEL_63:
      v131 = v132 - 32;
      v70 = 0xD00000000000001ALL;
      goto LABEL_65;
    }

LABEL_19:
    sub_2440D0E20();
    v79 = sub_2440D0F30();
    v80 = sub_2440D0F30();
    if (v79 == v80)
    {
      v81 = 0x45525F4C4542414CLL;
    }

    else
    {
      v81 = 0x41505F4C4542414CLL;
    }

    if (v79 == v80)
    {
      v82 = 0xEC000000444E5546;
    }

    else
    {
      v82 = 0xE900000000000059;
    }

    v143 = v81;
    v161 = v81;
    v162 = v82;
    v145 = v82;

    MEMORY[0x245D57000](0x474E4F4C5FLL, 0xE500000000000000);
    v146 = v161;
    v152 = v162;
    v83 = sub_2440D0E00();
    v85 = v84;
    v86 = sub_2440D0DF0();
    v87 = sub_2440D0E40();
    v88 = sub_243FC04B4(v83, v85, v86, v87 & 1);

    v89 = sub_2440D0E60();
    v90 = [v88 stringFromNumber_];

    if (v90)
    {
      v91 = sub_2440D2FB0();
      v93 = v92;
    }

    else
    {
      v91 = 0;
      v93 = 0xE000000000000000;
    }

    v94 = sub_2440D0E00();
    v155 = v93;
    if (v94 == 5390675 && v95 == 0xE300000000000000)
    {
    }

    else
    {
      v96 = sub_2440D3A10();

      if ((v96 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    v97 = v91;
    v98 = *sub_243FD157C();

    v99 = sub_2440D0DF0();
    if (*(v98 + 16) && (v100 = sub_243F726DC(v99), (v101 & 1) != 0))
    {
      v102 = v154;
      (*(v7 + 16))(v154, *(v98 + 56) + *(v7 + 72) * v100, v6);

      (*(v7 + 56))(v102, 0, 1, v6);
      (*(v7 + 32))(v12, v102, v6);
    }

    else
    {

      v103 = v154;
      (*(v7 + 56))(v154, 1, 1, v6);
      sub_2440D07D0();
      if ((*(v7 + 48))(v103, 1, v6) != 1)
      {
        sub_243FFF92C(v103);
      }
    }

    sub_2440D07B0();
    v104 = MEMORY[0x245D546C0](v12, v9);
    v105 = *(v7 + 8);
    v105(v9, v6);
    v105(v12, v6);
    v91 = v97;
    if (v104)
    {
      v106 = sub_243FC04B0();
      v107 = sub_243FC04B4(0x52412E524153, 0xE600000000000000, v106, 0);
      v108 = sub_2440D0E60();
      v109 = [v107 stringFromNumber_];

      v31 = v156;
      if (v109)
      {
        v110 = sub_2440D2FB0();
        v150 = v111;
        v151 = v110;
      }

      else
      {
        v150 = 0xE000000000000000;
        v151 = 0;
      }

      goto LABEL_41;
    }

LABEL_40:
    v150 = 0;
    v151 = 0;
    v31 = v156;
LABEL_41:
    v139 = v91;
    v144 = sub_2440D0E70();
    v149 = sub_2440D0E60();
    v112 = sub_2440D0E00();
    v147 = v113;
    v148 = v112;
    v153 = sub_2440D0E40();
    v154 = sub_2440D0E20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38B0, &qword_2440D66E0);
    v114 = swift_allocObject();
    v142 = xmmword_2440D5CF0;
    *(v114 + 16) = xmmword_2440D5CF0;
    v115 = sub_2440D0BB0();
    v117 = v116;
    v118 = MEMORY[0x277D837D0];
    *(v114 + 56) = MEMORY[0x277D837D0];
    v119 = sub_243F644C8();
    *(v114 + 64) = v119;
    *(v114 + 32) = v115;
    *(v114 + 40) = v117;
    v120 = sub_243F68750();
    v156 = sub_244057E7C(v120 & 1, v114, v143, v145);
    v143 = v121;

    v122 = swift_allocObject();
    *(v122 + 16) = v142;
    v123 = sub_2440D0BB0();
    *(v122 + 56) = v118;
    *(v122 + 64) = v119;
    *(v122 + 32) = v123;
    *(v122 + 40) = v124;
    v125 = sub_243F68750();
    *&v142 = sub_244057E7C(v125 & 1, v122, v146, v152);
    v141 = v126;

    v152 = 0;
    v140 = 0;
    v145 = 0xE000000000000000;
    v146 = 0;
    goto LABEL_11;
  }

LABEL_5:
  v24 = sub_2440D0E10();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  v152 = 0xD000000000000017;
  if (v27)
  {
    v28 = sub_2440D0E10();
  }

  else
  {
    v30 = sub_243F68750();
    v28 = sub_2440579C8(v30 & 1, 0xD000000000000010, 0x80000002440EBFB0);
  }

  v145 = v29;
  v146 = v28;
  v31 = v156;
  v149 = sub_2440D0E60();
  v32 = sub_2440D0E00();
  v147 = v33;
  v148 = v32;
  v153 = sub_2440D0E40();
  v154 = sub_2440D0E20();
  v140 = 0x80000002440EBF90;
  v156 = sub_2440D0BB0();
  v143 = v34;
  *&v142 = sub_2440D0BB0();
  v141 = v35;
  v139 = 0;
  v150 = 0;
  v151 = 0;
  v155 = 0xE000000000000000;
  v144 = 2;
LABEL_11:
  v138 = sub_2440D0B80();
  v37 = v36;
  v38 = sub_2440D0BB0();
  v40 = v39;
  type metadata accessor for MerchantLogo();
  v41 = sub_243F4E2E4();
  v42 = sub_2440D0B90();
  v44 = v43;
  v45 = sub_2440D0BC0();
  v46 = (*(*v41 + 80))(v42, v44, v45);
  LOBYTE(v42) = v47;
  v49 = v48;

  result = (*(v157 + 8))(v31, v158);
  v51 = v153 & 1;
  *a2 = v144;
  *(a2 + 1) = v161;
  *(a2 + 4) = *(&v161 + 3);
  v52 = v139;
  *(a2 + 8) = v149;
  *(a2 + 16) = v52;
  v53 = v150;
  v54 = v151;
  *(a2 + 24) = v155;
  *(a2 + 32) = v54;
  *(a2 + 40) = v53;
  v55 = v147;
  *(a2 + 48) = v148;
  *(a2 + 56) = v55;
  *(a2 + 64) = v51;
  *(a2 + 65) = *v160;
  *(a2 + 68) = *&v160[3];
  v56 = v152;
  *(a2 + 72) = v154;
  *(a2 + 80) = v56;
  v58 = v145;
  v57 = v146;
  *(a2 + 88) = v140;
  *(a2 + 96) = v57;
  v59 = v156;
  *(a2 + 104) = v58;
  *(a2 + 112) = v59;
  v60 = v142;
  *(a2 + 120) = v143;
  *(a2 + 128) = v60;
  v61 = v138;
  *(a2 + 136) = v141;
  *(a2 + 144) = v61;
  *(a2 + 152) = v37;
  *(a2 + 160) = v38;
  *(a2 + 168) = v40;
  *(a2 + 176) = v46;
  *(a2 + 184) = v42;
  *(a2 + 188) = *&v159[3];
  *(a2 + 185) = *v159;
  *(a2 + 192) = v49;
  return result;
}

uint64_t sub_243FFF92C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1F90, &unk_2440DF090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_243FFF9D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_243FFFA20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243FFFAC4()
{
  v1 = *v0;
  sub_2440D3B20();
  v2 = 0;
  if (v1 != 2)
  {
    MEMORY[0x245D57A30](1);
    v2 = v1 & 1;
  }

  MEMORY[0x245D57A30](v2);
  return sub_2440D3B50();
}

uint64_t sub_243FFFB24()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x245D57A30](1);
    v2 = v1 & 1;
  }

  return MEMORY[0x245D57A30](v2);
}

uint64_t sub_243FFFB6C(uint64_t a1)
{
  v2 = *v1;
  sub_2440D3B20();
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    MEMORY[0x245D57A30](1);
    v3 = v2 & 1;
  }

  MEMORY[0x245D57A30](v3);
  return sub_2440D3B50();
}

BOOL sub_243FFFBCC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t sub_243FFFC20@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_243FFFCDC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_243FFFD9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00, &qword_2440D5D50);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8, &unk_2440D99F0);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243FFFED4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00, &qword_2440D5D50);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__identityUIIsPresented[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8, &unk_2440D99F0);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_244000058@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_244000114(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_2440001D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00, &qword_2440D5D50);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8, &unk_2440D99F0);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_24400030C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00, &qword_2440D5D50);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__dismissViewController;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8, &unk_2440D99F0);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_244000490@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 416))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_24400054C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_24400060C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00, &qword_2440D5D50);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8, &unk_2440D99F0);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_244000744(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00, &qword_2440D5D50);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__disableSleep[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8, &unk_2440D99F0);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t (*sub_2440008DC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_24400099C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC31F0, &qword_2440DF2B0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC31E8, &qword_2440DF2A8);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_244000AD4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC31F0, &qword_2440DF2B0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__screenState[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC31E8, &qword_2440DF2A8);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_244000C58@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 512))();
  *a2 = result;
  return result;
}

uint64_t (*sub_244000D10(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_244000DD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3200, &qword_2440DF308);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC31F8, &qword_2440DF300);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_244000F08(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3200, &qword_2440DF308);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__particlesState[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC31F8, &qword_2440DF300);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_24400108C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 560))();
  *a2 = result;
  return result;
}

uint64_t (*sub_244001144(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_244001204(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3218, &qword_2440DF368);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3210, &qword_2440DF360);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_24400133C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3218, &qword_2440DF368);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__particlesPendingState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3210, &qword_2440DF360);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

double sub_2440014AC@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

double sub_244001538@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 632))(&v5);
  v3 = v6[0];
  *a2 = v5;
  a2[1] = v3;
  result = *(v6 + 9);
  *(a2 + 25) = *(v6 + 9);
  return result;
}

uint64_t sub_2440015A4(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v6 = *a1;
  v7[0] = v2;
  *(v7 + 9) = *(a1 + 25);
  v8 = v6;
  v9 = v2;
  v10 = *(a1 + 4);
  v3 = *(**a2 + 640);
  sub_243F5F574(&v8, v5, &qword_27EDC06A0, &qword_2440DF5F0);
  sub_243F5F574(&v9, v5, &qword_27EDC3378, &unk_2440E6060);
  return v3(&v6);
}

uint64_t sub_244001668(__int128 *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t (*sub_2440016E4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F511F4;
}

uint64_t sub_2440017A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3228, &qword_2440DF3C0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3220, &qword_2440DF3B8);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2440018DC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3228, &qword_2440DF3C0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__readerStateModel[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3220, &qword_2440DF3B8);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5159C;
}

uint64_t sub_244001A4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  return v1;
}

uint64_t sub_244001B20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05B8, &qword_2440D71A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_243F5F574(a1, &v8 - v5, &qword_27EDC05B8, &qword_2440D71A0);
  return (*(**a2 + 736))(v6);
}

uint64_t (*sub_244001C24(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_244001CE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3240, &qword_2440DF428);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3238, &qword_2440DF420);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_244001E1C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3240, &qword_2440DF428);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__merchantDetails[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3238, &qword_2440DF420);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_244001FEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3248, &qword_2440DF430);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_243F5F574(a1, &v8 - v5, &qword_27EDC3248, &qword_2440DF430);
  return (*(**a2 + 784))(v6);
}

uint64_t sub_2440020F0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243F5F574(a1, v10, a2, a3);

  sub_2440D1350();
  return sub_243F5EED4(a1, a2, a3);
}

uint64_t (*sub_2440021D8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_244002298(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3258, &qword_2440DF488);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3250, &qword_2440DF480);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2440023D0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3258, &qword_2440DF488);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__requestType[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3250, &qword_2440DF480);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

double sub_244002554()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  return result;
}

__n128 sub_2440025C4@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  result = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

double sub_24400265C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 872))(v7);
  v3 = v7[3];
  a2[2] = v7[2];
  a2[3] = v3;
  v4 = v7[5];
  a2[4] = v7[4];
  a2[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  a2[1] = v6;
  return result;
}

uint64_t sub_2440026D0(_OWORD *a1, uint64_t *a2)
{
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1[3];
  v10[8] = a1[2];
  v10[9] = v6;
  v7 = a1[5];
  v10[10] = a1[4];
  v10[11] = v7;
  v8 = a1[1];
  v10[6] = *a1;
  v10[7] = v8;

  sub_243F5F574(v11, v10, &qword_27EDBFF68, &qword_2440DDE10);
  return sub_2440D1350();
}

uint64_t sub_244002794(_OWORD *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t sub_244002834(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3270, &qword_2440DF4F0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3268, &qword_2440DF4E8);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_244002994(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_244002A54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00, &qword_2440D5D50);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8, &unk_2440D99F0);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_244002B8C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00, &qword_2440D5D50);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__scanQRCodeFlag[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8, &unk_2440D99F0);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_244002D10@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 968))();
  *a2 = result;
  return result;
}

uint64_t sub_244002D64(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t sub_244002E08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3280, &qword_2440DF590);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3278, &qword_2440DF588);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

double sub_244002F40()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  return v1;
}

uint64_t sub_244003058(double a1, double a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t (*sub_2440030D4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_244003194(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3290, &qword_2440DF5E8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3288, &qword_2440DF5E0);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2440032CC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3290, &qword_2440DF5E8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__platterSize[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3288, &qword_2440DF5E0);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_24400343C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  return v1;
}

uint64_t sub_2440034B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1064))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_244003504(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 1072);

  return v4(v2, v3);
}

uint64_t sub_244003574(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t (*sub_2440035F0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_2440036B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC32A0, &unk_2440DF648);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3298, &qword_2440DF640);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2440037E8(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC32A0, &unk_2440DF648);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__requestedDocument;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3298, &qword_2440DF640);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_244003958()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v32 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3260, &unk_2440DF490);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_2440D0F60();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_243F5EED4(v5, &qword_27EDC3260, &unk_2440DF490);
    goto LABEL_7;
  }

  (*(v7 + 32))(v12, v5, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  v13 = v33;
  if (!v33)
  {
    (*(v7 + 8))(v12, v6);
LABEL_7:
    v15 = sub_243F4E22C();
    sub_243F5F574(v15, v2, &qword_27EDC0A50, &qword_2440D5CB0);
    v16 = sub_2440D11E0();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v2, 1, v16) == 1)
    {
      sub_243F5EED4(v2, &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {
      v18 = sub_2440D11C0();
      v19 = sub_2440D3470();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        MEMORY[0x245D58570](v20, -1, -1);
      }

      (*(v17 + 8))(v2, v16);
    }

    return 0;
  }

  (*(v7 + 16))(v9, v12, v6);
  v14 = (*(v7 + 88))(v9, v6);
  if (v14 == *MEMORY[0x277D43BA8])
  {
    (*(v7 + 8))(v12, v6);

    return 0;
  }

  if (v14 == *MEMORY[0x277D43BA0])
  {
    (*(v7 + 8))(v12, v6);

    return 1;
  }

  if (v14 != *MEMORY[0x277D43BB0])
  {
    v30 = *(v7 + 8);
    v30(v12, v6);

    v30(v9, v6);
    return 0;
  }

  result = sub_2440D0DC0();
  v22 = 0;
  v23 = 1 << *(result + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(result + 64);
  v26 = (v23 + 63) >> 6;
  while (v25)
  {
    v27 = v22;
LABEL_26:
    v28 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    if ((*(*(result + 56) + (v28 | (v27 << 6))) & 1) == 0)
    {
      v29 = *(v7 + 8);

      v29(v12, v6);

      return 3;
    }
  }

  while (1)
  {
    v27 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v27 >= v26)
    {
      v31 = *(v7 + 8);

      v31(v12, v6);

      return 2;
    }

    v25 = *(result + 64 + 8 * v27);
    ++v22;
    if (v25)
    {
      v22 = v27;
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_244003EE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a2;
  v5 = sub_2440D2C80();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2440D2CA0();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2440D0EE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v31 - v14;
  v16 = sub_243F4E22C();
  sub_243F5F574(v16, v15, &qword_27EDC0A50, &qword_2440D5CB0);
  v17 = sub_2440D11E0();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    sub_243F5EED4(v15, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v32 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = sub_243F4E2F4();
    v20 = sub_243F4E2FC();
    v31 = v11;
    v12 = v32;
    sub_243F4E308(v19 & 1, v3, 0xD000000000000027, 0x80000002440EC010, v20, v21);
    v11 = v31;

    (*(v18 + 8))(v15, v17);
  }

  sub_243F5DB84();
  v22 = sub_2440D3530();
  (*(v10 + 16))(v12, a1, v9);
  v23 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v3;
  (*(v10 + 32))(v24 + v23, v12, v9);
  *(v24 + ((v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
  aBlock[4] = sub_24400EAA0;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_18;
  v25 = _Block_copy(aBlock);

  v26 = v34;
  sub_2440D2C90();
  v40 = MEMORY[0x277D84F90];
  sub_244010F50(&qword_27EDC0510, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170, &unk_2440D7DE0);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170, &unk_2440D7DE0, MEMORY[0x277D83970]);
  v27 = v37;
  v28 = v39;
  sub_2440D3710();
  MEMORY[0x245D57440](0, v26, v27, v25);
  _Block_release(v25);

  (*(v38 + 8))(v27, v28);
  (*(v35 + 8))(v26, v36);

  return (*(*v3 + 1544))(v29);
}

uint64_t sub_244004450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v4 = sub_2440D0F40();
  v25 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3260, &unk_2440DF490);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3248, &qword_2440DF430);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05B8, &qword_2440D71A0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v25 - v18;
  sub_2440D0ED0();
  v20 = sub_2440D0F20();
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  (*(*a1 + 736))(v19);
  sub_2440D0EA0();
  (*(v5 + 56))(v16, 0, 1, v4);
  (*(*a1 + 784))(v16);
  sub_2440D0EB0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243F5F574(v13, v10, &qword_27EDC3260, &unk_2440DF490);

  sub_2440D1350();
  sub_243F5EED4(v13, &qword_27EDC3260, &unk_2440DF490);
  *(a1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_qrCodeScannerSleepTimeout) = v26;
  sub_2440D0EA0();
  v21 = sub_244011080(v7);
  v23 = v22;
  (*(v5 + 8))(v7, v25);
  return (*(*a1 + 1072))(v21, v23);
}

void sub_244004824(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v22 - v5;
  v7 = sub_243F4E22C();
  sub_243F5F574(v7, v6, &qword_27EDC0A50, &qword_2440D5CB0);
  v8 = sub_2440D11E0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_243F5EED4(v6, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v10 = sub_243F4E2F4();
    v11 = sub_243F4E2FC();
    sub_243F4E308(v10 & 1, v2, 0xD00000000000002CLL, 0x80000002440EA3B0, v11, v12);

    (*(v9 + 8))(v6, v8);
  }

  v13 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithListenerEndpoint_];
  [v13 setExportedObject_];
  v14 = objc_opt_self();
  v15 = [v14 interfaceWithProtocol_];
  [v13 setExportedInterface_];

  v16 = [v14 interfaceWithProtocol_];
  [v13 setRemoteObjectInterface_];

  aBlock[4] = sub_244004B70;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243FA2898;
  aBlock[3] = &block_descriptor_78;
  v17 = _Block_copy(aBlock);
  v18 = [v13 remoteObjectProxyWithErrorHandler_];
  _Block_release(v17);
  sub_2440D36C0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC32A8, &qword_2440DF6F8);
  v19 = swift_dynamicCast();
  v20 = v22[1];
  if (!v19)
  {
    v20 = 0;
  }

  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy) = v20;
  swift_unknownObjectRelease();
  [v13 resume];
  v21 = *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_connection);
  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_connection) = v13;
}

uint64_t sub_244004B70(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_243F4E22C();
  sub_243F5F574(v5, v4, &qword_27EDC0A50, &qword_2440D5CB0);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return sub_243F5EED4(v4, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  v9 = a1;
  v10 = sub_2440D11C0();
  v11 = sub_2440D3470();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_2440D3AB0();
    v16 = sub_243F4E6F8(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_243F48000, v10, v11, "IdentityUIDelegate connection invalidated with error: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x245D58570](v13, -1, -1);
    MEMORY[0x245D58570](v12, -1, -1);
  }

  return (*(v7 + 8))(v4, v6);
}

id sub_244004D9C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_243F4E22C();
  sub_243F5F574(v5, v4, &qword_27EDC0A50, &qword_2440D5CB0);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v8 = sub_243F4E2F4();
    v9 = sub_243F4E2FC();
    sub_243F4E308(v8 & 1, v1, 0xD00000000000001ALL, 0x80000002440EC040, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  result = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy);
  if (result)
  {
    return [result uiDidLoad];
  }

  return result;
}

uint64_t sub_244004F30(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v35 = sub_243F4E22C();
  sub_243F5F574(v35, v9, &qword_27EDC0A50, &qword_2440D5CB0);
  v10 = sub_2440D11E0();
  v11 = *(v10 - 8);
  v34 = *(v11 + 48);
  v12 = v34(v9, 1, v10);
  v36 = v10;
  v33 = v11;
  if (v12 == 1)
  {
    v13 = sub_243F5EED4(v9, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v14 = sub_2440D11C0();
    v15 = sub_2440D3490();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_243F48000, v14, v15, "Cancel button was clicked, canceling current read", v16, 2u);
      MEMORY[0x245D58570](v16, -1, -1);
    }

    v13 = (*(v11 + 8))(v9, v10);
  }

  v17 = (*v2 + 464);
  v18 = *v17;
  v42 = (*v17)(v13);
  v41 = 4;
  sub_243FBC5F4();
  sub_2440D31F0();
  sub_2440D31F0();
  if (v39 == v37 && v40 == v38)
  {
    goto LABEL_8;
  }

  v19 = sub_2440D3A10();

  if (v19)
  {
    goto LABEL_10;
  }

  v42 = v18(v20);
  v41 = 6;
  sub_2440D31F0();
  sub_2440D31F0();
  if (v39 == v37 && v40 == v38)
  {
LABEL_8:

LABEL_10:
    [v2 updateUIState_];
    goto LABEL_11;
  }

  v30 = sub_2440D3A10();

  if (v30)
  {
    goto LABEL_10;
  }

LABEL_11:
  v21 = *&v2[OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy];
  if (v21)
  {
    v21 = [v21 requestCancelReadWithIsEngagementTransition_];
  }

  v42 = v18(v21);
  v41 = 12;
  sub_2440D31F0();
  sub_2440D31F0();
  if (v39 != v37 || v40 != v38)
  {
    v22 = sub_2440D3A10();

    if (v22)
    {
      goto LABEL_17;
    }

    v42 = v18(v23);
    v41 = 13;
    sub_2440D31F0();
    sub_2440D31F0();
    if (v39 != v37 || v40 != v38)
    {
      v31 = sub_2440D3A10();

      if ((v31 & 1) == 0)
      {
        return result;
      }

      goto LABEL_17;
    }
  }

LABEL_17:
  sub_243F5F574(v35, v6, &qword_27EDC0A50, &qword_2440D5CB0);
  v24 = v36;
  if (v34(v6, 1, v36) == 1)
  {
    sub_243F5EED4(v6, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v25 = sub_2440D11C0();
    v26 = sub_2440D3490();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_243F48000, v25, v26, "Cancelling read restart and closing UI", v27, 2u);
      MEMORY[0x245D58570](v27, -1, -1);
    }

    (*(v33 + 8))(v6, v24);
  }

  v28 = sub_244008D30();
  return (*(*v2 + 1472))(v28);
}

void sub_2440054F4(uint64_t a1, uint64_t a2)
{
  v100 = a2;
  v101 = a1;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC32B0, &qword_2440DF700);
  v97 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v3 = &v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v90 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC32B8, &qword_2440DF708);
  MEMORY[0x28223BE20](v7 - 8);
  v96 = &v90 - v8;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC32C0, &qword_2440DF710);
  v9 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v93 = &v90 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v91 = &v90 - v15;
  MEMORY[0x28223BE20](v16);
  v94 = &v90 - v17;
  MEMORY[0x28223BE20](v18);
  v104 = &v90 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v90 - v21;
  v23 = sub_243F4E22C();
  sub_243F5F574(v23, v22, &qword_27EDC0A50, &qword_2440D5CB0);
  v24 = sub_2440D11E0();
  v25 = *(v24 - 8);
  v27 = v25 + 48;
  v26 = *(v25 + 48);
  v28 = v26(v22, 1, v24);
  v99 = v9;
  v92 = v13;
  v95 = v3;
  if (v28 == 1)
  {
    sub_243F5EED4(v22, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v29 = sub_243F4E2F4();
    v30 = sub_243F4E2FC();
    v31 = v29 & 1;
    v27 = v25 + 48;
    sub_243F4E308(v31, v105, 0xD000000000000011, 0x80000002440EC090, v30, v32);

    (*(v25 + 8))(v22, v24);
  }

  v33 = v104;
  sub_243F5F574(v23, v104, &qword_27EDC0A50, &qword_2440D5CB0);
  v34 = v26(v33, 1, v24);
  v35 = v102;
  v36 = v100;
  if (v34 == 1)
  {
    sub_243F5EED4(v33, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v37 = v27;

    v38 = sub_2440D11C0();
    v39 = sub_2440D3490();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v98 = v25;
      v41 = v40;
      v42 = swift_slowAlloc();
      v106[0] = v42;
      *v41 = 136380675;
      *(v41 + 4) = sub_243F4E6F8(v101, v36, v106);
      _os_log_impl(&dword_243F48000, v38, v39, "Scanned payload: [ %{private}s ]", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      v43 = v42;
      v35 = v102;
      MEMORY[0x245D58570](v43, -1, -1);
      v44 = v41;
      v25 = v98;
      MEMORY[0x245D58570](v44, -1, -1);
    }

    (*(v25 + 8))(v104, v24);
    v27 = v37;
  }

  if (*(v105 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_processingQRRequest) == 1)
  {
    v45 = v94;
    sub_243F5F574(v23, v94, &qword_27EDC0A50, &qword_2440D5CB0);
    if (v26(v45, 1, v24) == 1)
    {
      sub_243F5EED4(v45, &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {
      v49 = sub_2440D11C0();
      v50 = sub_2440D3490();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_243F48000, v49, v50, "Processing a previous payload, skipping...", v51, 2u);
        MEMORY[0x245D58570](v51, -1, -1);
      }

      (*(v25 + 8))(v45, v24);
    }

    return;
  }

  v102 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_processingQRRequest;
  v46 = (v105 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_lastScannedQRCode);
  v47 = *(v105 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_lastScannedQRCode + 8);
  v98 = v25;
  v90 = v26;
  if (v47)
  {
    if (*v46 == v101 && v47 == v36)
    {
      v48 = 0;
    }

    else
    {
      v48 = sub_2440D3A10() ^ 1;
    }
  }

  else
  {
    v48 = 1;
  }

  v52 = v105;
  v104 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_isDifferentQRCode;
  *(v105 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_isDifferentQRCode) = v48 & 1;
  *v46 = v101;
  v46[1] = v36;

  (*(*v52 + 1448))(v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC32C8, &qword_2440DF718);
  sub_2440D0960();
  sub_243F5DD50(&qword_27EDC32D0, &qword_27EDC32B0, &qword_2440DF700, MEMORY[0x277D85AC0]);
  v54 = v95;
  sub_2440D0950();
  sub_2440D31C0();
  v55 = v6;
  v56 = v96;
  sub_2440D0970();

  v57 = *(v97 + 8);
  v57(v54, v35);
  v57(v55, v35);
  v58 = v99;
  v59 = v23;
  v60 = (*(v99 + 48))(v56, 1, v103);
  v61 = v98;
  if (v60 == 1)
  {
    sub_243F5EED4(v56, &qword_27EDC32B8, &qword_2440DF708);
LABEL_25:
    v68 = v90;
    v69 = *(v105 + v104);
    v70 = v92;
    if (v69 != 2 && (v69 & 1) != 0)
    {
      sub_243F5F574(v59, v92, &qword_27EDC0A50, &qword_2440D5CB0);
      if (v68(v70, 1, v24) == 1)
      {
        sub_243F5EED4(v70, &qword_27EDC0A50, &qword_2440D5CB0);
      }

      else
      {
        v83 = sub_2440D11C0();
        v84 = sub_2440D3490();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          *v85 = 0;
          _os_log_impl(&dword_243F48000, v83, v84, "Invalid format payload", v85, 2u);
          MEMORY[0x245D58570](v85, -1, -1);
        }

        (*(v61 + 8))(v70, v24);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v106[0]) = 0;
      v86 = v105;

      sub_2440D1350();
      v87 = *(**(v86 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_audioManager) + 272);

      v87(8, 0);

      v88 = *(v86 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy);
      if (v88)
      {
        swift_unknownObjectRetain();
        sub_2440D10A0();
        v89 = sub_2440D2F80();

        [v88 qrCodeScanErrorWithError_];

        swift_unknownObjectRelease();
      }
    }

    return;
  }

  v101 = v27;
  v62 = v93;
  (*(v58 + 32))(v93, v56, v103);
  swift_getKeyPath();
  sub_2440D0980();

  v63 = MEMORY[0x245D56F70](v106[0], v106[1], v106[2], v106[3]);
  v65 = v64;

  v66 = sub_244058490(v63, v65);
  if (v67 >> 60 == 15)
  {
    (*(v58 + 8))(v62, v103);
    goto LABEL_25;
  }

  v71 = v66;
  v72 = v67;
  v73 = v91;
  sub_243F5F574(v59, v91, &qword_27EDC0A50, &qword_2440D5CB0);
  if (v90(v73, 1, v24) == 1)
  {
    sub_243F5EED4(v73, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v74 = v61;
    v75 = sub_2440D11C0();
    v76 = sub_2440D3490();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_243F48000, v75, v76, "QR Code is mDL", v77, 2u);
      v78 = v77;
      v73 = v91;
      MEMORY[0x245D58570](v78, -1, -1);
    }

    (*(v74 + 8))(v73, v24);
  }

  v79 = v105;
  *(v105 + v102) = 1;
  v80 = *(v79 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy);
  v81 = v93;
  if (v80)
  {
    swift_unknownObjectRetain();
    v82 = sub_2440D0670();
    [v80 readDocumentFromScannedQRCodeWithPayload_];
    sub_243F5FF20(v71, v72);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_243F5FF20(v71, v72);
  }

  (*(v99 + 8))(v81, v103);
}

uint64_t sub_2440061FC()
{
  v1 = (v0 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_lastScannedQRCode);
  *v1 = 0;
  v1[1] = 0;

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t sub_244006284()
{
  result = (*(*v0 + 920))();
  if ((result & 1) == 0)
  {
    v2 = (*(*v0 + 928))(1);
    (*(*v0 + 1432))(v2);
    result = *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy);
    if (result)
    {

      return [result qrCodeScanInitiated];
    }
  }

  return result;
}

uint64_t sub_244006354()
{
  result = (*(*v0 + 920))();
  if (result)
  {
    (*(*v0 + 928))(0);
    v2 = *(*v0 + 1440);

    return v2();
  }

  return result;
}

uint64_t sub_244006408()
{
  v1 = (*v0 + 464);
  v2 = *v1;
  (*v1)();
  sub_243FBC5F4();
  sub_2440D31F0();
  sub_2440D31F0();
  if (v10 == v8 && v11 == v9)
  {

    goto LABEL_9;
  }

  v4 = sub_2440D3A10();

  if (v4)
  {
LABEL_9:
    v7 = 19;
    return [v0 updateUIState_];
  }

  (v2)(v5);
  sub_243F67588();
  result = sub_2440D2F50();
  if (result)
  {
    return result;
  }

  v7 = 18;
  return [v0 updateUIState_];
}

void sub_244006558()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = aBlock - v3;
  v5 = sub_243F4E22C();
  sub_243F5F574(v5, v4, &qword_27EDC0A50, &qword_2440D5CB0);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {

    v8 = sub_2440D11C0();
    v9 = sub_2440D3490();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_qrCodeScannerSleepTimeout);

      _os_log_impl(&dword_243F48000, v8, v9, "Start QR code scanner timer [ %lds ]", v10, 0xCu);
      MEMORY[0x245D58570](v10, -1, -1);
    }

    else
    {
    }

    (*(v7 + 8))(v4, v6);
  }

  v11 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_qrCodeScannerSleepTimeout);
  v12 = objc_opt_self();
  v13 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_24400EC9C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F81670;
  aBlock[3] = &block_descriptor_86;
  v14 = _Block_copy(aBlock);

  v15 = [v12 scheduledTimerWithTimeInterval:0 repeats:v14 block:v11];
  _Block_release(v14);
  v16 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_qrCodeScannerSleepTimer);
  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_qrCodeScannerSleepTimer) = v15;
}

double sub_24400682C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0, &qword_2440D5FE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_2440D3390();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    sub_2440D3360();

    v8 = sub_2440D3350();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v6;
    sub_243F54830(0, 0, v3, &unk_2440DFA40, v9);
  }

  return result;
}

uint64_t sub_244006980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_2440D3360();
  *(v4 + 24) = sub_2440D3350();
  v6 = sub_2440D3320();

  return MEMORY[0x2822009F8](sub_244006A18, v6, v5);
}

uint64_t sub_244006A18()
{
  v1 = *(v0 + 16);

  v2 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_qrCodeScannerSleepTimer);
  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_qrCodeScannerSleepTimer) = 0;

  (*(*v1 + 424))(0);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_244006AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0, &qword_2440D5FE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_243F5F574(a3, v25 - v10, &unk_27EDC03E0, &qword_2440D5FE0);
  v12 = sub_2440D3390();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_243F5EED4(v11, &unk_27EDC03E0, &qword_2440D5FE0);
  }

  else
  {
    sub_2440D3380();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2440D3320();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2440D3060() + 32;
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

      sub_243F5EED4(a3, &unk_27EDC03E0, &qword_2440D5FE0);

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

  sub_243F5EED4(a3, &unk_27EDC03E0, &qword_2440D5FE0);
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

void sub_244006DC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_qrCodeScannerSleepTimer;
  v5 = *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_qrCodeScannerSleepTimer);
  if (v5)
  {
    v6 = v5;
    v7 = sub_243F4E22C();
    sub_243F5F574(v7, v3, &qword_27EDC0A50, &qword_2440D5CB0);
    v8 = sub_2440D11E0();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v3, 1, v8) == 1)
    {
      sub_243F5EED4(v3, &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {
      v10 = v0;
      v11 = sub_2440D11C0();
      v12 = sub_2440D3490();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_243F48000, v11, v12, "Stop QR code scanner timer", v13, 2u);
        MEMORY[0x245D58570](v13, -1, -1);
      }

      (*(v9 + 8))(v3, v8);
      v0 = v10;
    }

    v14 = *(v0 + v4);
    *(v0 + v4) = 0;

    [v6 invalidate];
  }
}

uint64_t sub_244006FA8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_243F4E22C();
  sub_243F5F574(v5, v4, &qword_27EDC0A50, &qword_2440D5CB0);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    v8 = sub_243F5EED4(v4, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v9 = sub_2440D11C0();
    v10 = sub_2440D3490();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_243F48000, v9, v10, "Restart QR code scanner timer", v11, 2u);
      MEMORY[0x245D58570](v11, -1, -1);
    }

    v8 = (*(v7 + 8))(v4, v6);
  }

  v12 = (*(*v1 + 1440))(v8);
  return (*(*v1 + 1432))(v12);
}

void sub_2440071A4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0, &qword_2440D5FE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - v5;
  v17 = a1;
  v16 = 4;
  sub_24400ECA4();
  sub_2440D31F0();
  sub_2440D31F0();
  if (v15[2] == v15[1])
  {
    (*(*v1 + 568))(5);
    (*(*v1 + 520))(a1);
    *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_delayParticlesSet) = 0;
    return;
  }

  v7 = *v1;
  if (*(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_delayParticlesSet) == 1)
  {
    (*(v7 + 568))(a1);
    return;
  }

  v8 = (*(v7 + 520))(a1);
  v9 = (*(*v1 + 512))(v8);
  if (v9 == 2)
  {
    v10 = 1.0;
  }

  else
  {
    if (v9 != 3)
    {
      return;
    }

    v10 = 3.0;
  }

  v11 = sub_2440D3390();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_2440D3360();

  v12 = sub_2440D3350();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 2) = v12;
  *(v13 + 3) = v14;
  *(v13 + 4) = v2;
  v13[5] = v10;
  sub_243F54830(0, 0, v6, &unk_2440DF750, v13);
}

uint64_t sub_244007468(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 16) = a5;
  v6 = sub_2440D38A0();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();
  sub_2440D3360();
  *(v5 + 56) = sub_2440D3350();
  v8 = sub_2440D3320();
  *(v5 + 64) = v8;
  *(v5 + 72) = v7;

  return MEMORY[0x2822009F8](sub_244007560, v8, v7);
}

uint64_t sub_244007560(uint64_t a1)
{
  v2 = v1[2];
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_delayParticlesSet;
  v1[10] = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_delayParticlesSet;
  *(v2 + v3) = 1;
  v4 = sub_2440D3B80();
  v6 = v5;
  sub_2440D3A80();
  v7 = swift_task_alloc();
  v1[11] = v7;
  *v7 = v1;
  v7[1] = sub_244007654;

  return sub_243F720D4(v4, v6, 0, 0, 1);
}

uint64_t sub_244007654()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[6];
  v5 = v2[5];
  v6 = v2[4];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_2440112C8;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_2440077E8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2440077E8()
{
  v1 = v0[2];

  if ((*(*v1 + 560))(v2) != 5)
  {
    (*(*v0[2] + 520))();
  }

  *(v0[2] + v0[10]) = 0;

  v3 = v0[1];

  return v3();
}

double sub_2440078CC(uint64_t a1)
{
  v23 = a1;
  v1 = sub_2440D2C80();
  v24 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2440D2CA0();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_243F4E22C();
  sub_243F5F574(v10, v9, &qword_27EDC0A50, &qword_2440D5CB0);
  v11 = sub_2440D11E0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_243F5EED4(v9, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v13 = sub_2440D11C0();
    v14 = sub_2440D3490();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_243F48000, v13, v14, "close ui after delay", v15, 2u);
      MEMORY[0x245D58570](v15, -1, -1);
    }

    (*(v12 + 8))(v9, v11);
  }

  sub_243F5DB84();
  v16 = sub_2440D3530();
  v17 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_24400ED9C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_94;
  v18 = _Block_copy(aBlock);

  sub_2440D2C90();
  v25 = MEMORY[0x277D84F90];
  sub_244010F50(&qword_27EDC0510, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170, &unk_2440D7DE0);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170, &unk_2440D7DE0, MEMORY[0x277D83970]);
  sub_2440D3710();
  MEMORY[0x245D57400](v23, v6, v3, v18);
  _Block_release(v18);

  (*(v24 + 8))(v3, v1);
  (*(v21 + 8))(v6, v22);

  return result;
}

double sub_244007D2C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v28[0] = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v28 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = v28 - v8;
  v10 = sub_243F4E22C();
  sub_243F5F574(v10, v9, &qword_27EDC0A50, &qword_2440D5CB0);
  v11 = sub_2440D11E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) == 1)
  {
    v14 = sub_243F5EED4(v9, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v15 = sub_243F4E2F4();
    v16 = sub_243F4E2FC();
    sub_243F4E308(v15 & 1, v1, 0x557373696D736964, 0xEB00000000292849, v16, v17);

    v14 = (*(v12 + 8))(v9, v11);
  }

  v30 = (*(*v1 + 464))(v14);
  v29 = 4;
  sub_243FBC5F4();
  sub_2440D31F0();
  sub_2440D31F0();
  if (v28[3] == v28[1] && v28[4] == v28[2])
  {

LABEL_8:
    (*(*v1 + 1416))(v18);
    (*(*v1 + 1384))(0);
    goto LABEL_9;
  }

  v19 = sub_2440D3A10();

  if (v19)
  {
    goto LABEL_8;
  }

  if ((*(*v1 + 320))(v18))
  {
    sub_243F5F574(v10, v6, &qword_27EDC0A50, &qword_2440D5CB0);
    if (v13(v6, 1, v11) == 1)
    {
      sub_243F5EED4(v6, &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {
      v22 = sub_2440D11C0();
      v23 = sub_2440D3490();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_243F48000, v22, v23, "Closing Identity UI", v24, 2u);
        MEMORY[0x245D58570](v24, -1, -1);
      }

      (*(v12 + 8))(v6, v11);
    }

    (*(*v1 + 328))(0);
  }

  else
  {
    v21 = v28[0];
    sub_243F5F574(v10, v28[0], &qword_27EDC0A50, &qword_2440D5CB0);
    if (v13(v21, 1, v11) == 1)
    {
      sub_243F5EED4(v21, &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {
      v25 = sub_2440D11C0();
      v26 = sub_2440D3490();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_243F48000, v25, v26, "Received dismissUI before UI finished presenting - forcing close.", v27, 2u);
        MEMORY[0x245D58570](v27, -1, -1);
      }

      (*(v12 + 8))(v21, v11);
    }

    (*(*v1 + 376))(1);
  }

LABEL_9:
  (*(*v1 + 424))(0);
  sub_244008D30();
  sub_243FAFFB0();

  BrightnessManager.resetBrightnessToSystemDefault()();

  return result;
}

uint64_t sub_2440082D8()
{
  (*(*v0 + 1440))();
  v1 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_connection;
  v2 = *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_connection);
  if (v2)
  {
    [v2 setExportedObject_];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy) = 0;

  return swift_unknownObjectRelease();
}

id sub_244008374()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_243F4E22C();
  sub_243F5F574(v5, v4, &qword_27EDC0A50, &qword_2440D5CB0);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v8 = sub_243F4E2F4();
    v9 = sub_243F4E2FC();
    sub_243F4E308(v8 & 1, v1, 0xD000000000000020, 0x80000002440EC0B0, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  result = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy);
  if (result)
  {
    return [result uiFinishedWithExpected_];
  }

  return result;
}

uint64_t sub_24400850C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_243F4E22C();
  sub_243F5F574(v5, v4, &qword_27EDC0A50, &qword_2440D5CB0);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    v8 = sub_243F5EED4(v4, &qword_27EDC0A50, &qword_2440D5CB0);
  }

  else
  {
    v9 = sub_243F4E2F4();
    v10 = sub_243F4E2FC();
    sub_243F4E308(v9 & 1, v1, 0x6465736F6C436975, 0xEA00000000002928, v10, v11);

    v8 = (*(v7 + 8))(v4, v6);
  }

  result = (*(*v1 + 368))(v8);
  if ((result & 1) == 0)
  {
    return (*(*v1 + 376))(1);
  }

  return result;
}

double sub_2440086E4(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = &v36 - v8;
  v9 = sub_2440D2C80();
  MEMORY[0x28223BE20](v9);
  v10 = sub_2440D2CD0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_244008D30();
  v38 = v2;
  v14 = *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy);
  if (v14)
  {
    swift_unknownObjectRetain();
    sub_2440D2CC0();
    v15 = sub_2440D2CB0();
    (*(v11 + 8))(v13, v10);
    if (v15)
    {
      [v14 requestRestartReadWithTriggeredByMultipleCheck_];
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = swift_allocObject();
      v22 = v38;
      swift_weakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v21;
      *(v23 + 24) = v14;
      *(v23 + 32) = a2 & 1;
      aBlock[4] = sub_244010B80;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_243F5F604;
      aBlock[3] = &block_descriptor_211;
      v36 = _Block_copy(aBlock);
      v39 = MEMORY[0x277D84F90];
      sub_244010F50(&qword_27EDC0510, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      swift_unknownObjectRetain();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170, &unk_2440D7DE0);
      sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170, &unk_2440D7DE0, MEMORY[0x277D83970]);
      sub_2440D3710();
      sub_2440D2D00();
      swift_allocObject();
      v24 = sub_2440D2CE0();

      v25 = sub_243F4E22C();
      v26 = v37;
      sub_243F5F574(v25, v37, &qword_27EDC0A50, &qword_2440D5CB0);
      v27 = sub_2440D11E0();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v26, 1, v27) == 1)
      {
        sub_243F5EED4(v26, &qword_27EDC0A50, &qword_2440D5CB0);
      }

      else
      {
        v32 = sub_2440D11C0();
        v33 = sub_2440D3490();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_243F48000, v32, v33, "Scheduling identity read restart", v34, 2u);
          MEMORY[0x245D58570](v34, -1, -1);
        }

        (*(v28 + 8))(v26, v27);
      }

      sub_243F5DB84();
      v35 = sub_2440D3530();
      sub_2440D3510();

      swift_unknownObjectRelease();
      *(v22 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_requestRestartOperation) = v24;
    }
  }

  else
  {
    v17 = sub_243F4E22C();
    sub_243F5F574(v17, v6, &qword_27EDC0A50, &qword_2440D5CB0);
    v18 = sub_2440D11E0();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v6, 1, v18) == 1)
    {
      v20 = sub_243F5EED4(v6, &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {
      v29 = sub_2440D11C0();
      v30 = sub_2440D3470();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_243F48000, v29, v30, "Unable to retrieve remote proxy and restart reader, closing", v31, 2u);
        MEMORY[0x245D58570](v31, -1, -1);
      }

      v20 = (*(v19 + 8))(v6, v18);
    }

    (*(*v38 + 1472))(v20);
  }

  return result;
}

double sub_244008D30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50, &qword_2440D5CB0);
  *&result = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v11 - v3;
  if (*(v0 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_requestRestartOperation))
  {
    *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_requestRestartOperation) = 0;
    v5 = sub_243F4E22C();
    sub_243F5F574(v5, v4, &qword_27EDC0A50, &qword_2440D5CB0);
    v6 = sub_2440D11E0();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_243F5EED4(v4, &qword_27EDC0A50, &qword_2440D5CB0);
    }

    else
    {
      v8 = sub_2440D11C0();
      v9 = sub_2440D3490();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_243F48000, v8, v9, "Cancelling restart read operation", v10, 2u);
        MEMORY[0x245D58570](v10, -1, -1);
      }

      (*(v7 + 8))(v4, v6);
    }

    sub_2440D2CF0();
  }

  return result;
}