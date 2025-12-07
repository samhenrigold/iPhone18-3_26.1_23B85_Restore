uint64_t sub_21BD12000()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = type metadata accessor for SharedFamilyGroceryIntroView(0);
  v0[37] = v3;
  v4 = *(v2 + *(v3 + 28));
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_21BD1213C;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA4D8, &qword_21BE43540);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BBB25CC;
  v0[13] = &block_descriptor_36;
  v0[14] = v5;
  [v4 addParticipantsToSharedGroceryList:v1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BD1213C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 304) = v2;
  v3 = *(v1 + 288);
  v4 = *(v1 + 280);
  if (v2)
  {
    v5 = sub_21BD123E0;
  }

  else
  {
    v5 = sub_21BD1226C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BD1226C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);

  sub_21BD11124(v1);
  sub_21BE26F4C();
  (*(v3 + 8))(v1, v2);
  v4 = (*(v0 + 208) + *(*(v0 + 296) + 36));
  v5 = *v4;
  v6 = *(v4 + 1);
  *(v0 + 176) = v5;
  *(v0 + 184) = v6;
  *(v0 + 313) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  v7 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4ED8 != -1)
  {
    swift_once();
  }

  [v7 postNotificationName:qword_27CDB7E88 object:0];

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_21BD123E0()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v5 = *(v0 + 224);
  v6 = *(v0 + 208);

  swift_willThrow();
  sub_21BE261BC();
  v7 = v1;
  sub_21BE295EC();
  *(v0 + 144) = 0;
  *(v0 + 152) = 0xE000000000000000;
  MEMORY[0x21CF03CA0](0xD00000000000001FLL, 0x800000021BE5E220);
  MEMORY[0x21CF03CA0](0xD000000000000049, 0x800000021BE5E260);
  *(v0 + 200) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  sub_21BE2977C();
  sub_21BC51D50(v1, *(v0 + 144), *(v0 + 152));

  (*(v4 + 8))(v3, v5);
  sub_21BD1269C();
  v8 = v6 + *(v2 + 40);
  v9 = *(v8 + 8);
  *(v0 + 160) = *v8;
  *(v0 + 168) = v9;
  *(v0 + 312) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();

  v10 = (*(v0 + 208) + *(*(v0 + 296) + 36));
  v11 = *v10;
  v12 = *(v10 + 1);
  *(v0 + 176) = v11;
  *(v0 + 184) = v12;
  *(v0 + 313) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  v13 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4ED8 != -1)
  {
    swift_once();
  }

  [v13 postNotificationName:qword_27CDB7E88 object:0];

  v14 = *(v0 + 8);

  return v14();
}

void sub_21BD1269C()
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = sub_21BE26A4C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SharedFamilyGroceryIntroView(0);
  v14 = *(v0 + *(v5 + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA400, &qword_21BE433A0);
  sub_21BE283FC();
  v6 = v13;
  if (v13)
  {
    v7 = *(v0 + *(v5 + 28));
    *&v14 = 0;
    if ([v7 deleteSharedGroceryList:v13 error:&v14])
    {
      v8 = v14;
    }

    else
    {
      v9 = v14;
      v10 = sub_21BE25A8C();

      swift_willThrow();
      sub_21BE261BC();
      *&v14 = 0;
      *(&v14 + 1) = 0xE000000000000000;
      v11 = v10;
      sub_21BE295EC();
      MEMORY[0x21CF03CA0](0x694C6574656C6564, 0xEC00000029287473);
      MEMORY[0x21CF03CA0](0xD000000000000034, 0x800000021BE5E130);
      sub_21BC51D50(v10, v14, *(&v14 + 1));

      (*(v2 + 8))(v4, v1);
    }
  }
}

double sub_21BD128C4(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v24 = a2;
  v25 = sub_21BE2870C();
  v28 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21BE2874C();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SharedFamilyGroceryIntroView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = sub_21BE2871C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BB3A2A4(0, &qword_280BD6930, 0x277D85C78);
  (*(v11 + 104))(v13, *MEMORY[0x277D851C8], v10);
  v14 = sub_21BE2928C();
  (*(v11 + 8))(v13, v10);
  sub_21BD1613C(v22, &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_21BD161A0(&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = (v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = v24;
  *v17 = v23;
  v17[1] = v18;
  aBlock[4] = sub_21BD16C00;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BB42A18;
  aBlock[3] = &block_descriptor_55;
  v19 = _Block_copy(aBlock);

  sub_21BE2872C();
  v29 = MEMORY[0x277D84F90];
  sub_21BD165E4(&qword_280BD69E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BB3B038(&qword_280BD69A0, &qword_27CDBBAF0, &unk_21BE3B600, MEMORY[0x277D83970]);
  v20 = v25;
  sub_21BE294DC();
  MEMORY[0x21CF04410](0, v6, v3, v19);
  _Block_release(v19);

  (*(v28 + 8))(v3, v20);
  (*(v26 + 8))(v6, v27);

  return result;
}

uint64_t sub_21BD12D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BE2870C();
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21BE2874C();
  v20 = *(v9 - 8);
  v21 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21BD13054(a1);
  v14 = v13;
  sub_21BB3A2A4(0, &qword_280BD6930, 0x277D85C78);
  v19 = sub_21BE2925C();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14 & 1;
  aBlock[4] = sub_21BD16CB4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BB42A18;
  aBlock[3] = &block_descriptor_61;
  v16 = _Block_copy(aBlock);

  sub_21BD16CE8(v12);

  sub_21BE2872C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21BD165E4(&qword_280BD69E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BB3B038(&qword_280BD69A0, &qword_27CDBBAF0, &unk_21BE3B600, MEMORY[0x277D83970]);
  sub_21BE294DC();
  v17 = v19;
  MEMORY[0x21CF04410](0, v11, v8, v16);
  _Block_release(v16);

  sub_21BD16CA8(v12);
  (*(v22 + 8))(v8, v6);
  return (*(v20 + 8))(v11, v21);
}

id sub_21BD13054(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + *(type metadata accessor for SharedFamilyGroceryIntroView(0) + 28));
  v7[0] = 0;
  v2 = [v1 createSharedGroceryListWithError_];
  if (v2)
  {
    v3 = v7[0];
    return v2;
  }

  else
  {
    v5 = v7[0];
    v6 = sub_21BE25A8C();

    swift_willThrow();
    return v6;
  }
}

uint64_t sub_21BD13120@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA3C0, &qword_21BE43340);
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v28 - v3;
  v33 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA3C8, &qword_21BE43348);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA3D0, &qword_21BE43350);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA3D8, &qword_21BE43358);
  v7 = sub_21BB3B038(&qword_27CDBA3E0, &qword_27CDBA3D0, &qword_21BE43350, MEMORY[0x277CE1198]);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6650, &qword_21BE34EA0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB6660, &qword_21BE33470);
  v10 = sub_21BB3B038(&qword_27CDB5C38, &unk_27CDB6660, &qword_21BE33470, MEMORY[0x277CDD7A8]);
  v38 = v9;
  v39 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v8;
  v39 = OpaqueTypeConformance2;
  v12 = swift_getOpaqueTypeConformance2();
  v38 = v5;
  v39 = v6;
  v40 = v7;
  v41 = v12;
  swift_getOpaqueTypeConformance2();
  sub_21BE271BC();
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = sub_21BE2599C();
  v17 = v16;

  v36 = v15;
  v37 = v17;
  v18 = (v2 + *(type metadata accessor for SharedFamilyGroceryIntroView(0) + 40));
  v19 = *v18;
  v20 = *(v18 + 1);
  v34 = v19;
  v35 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v32 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  sub_21BB3B038(&qword_27CDBA3E8, &qword_27CDBA3C0, &qword_21BE43340, MEMORY[0x277CDDA18]);
  sub_21BB41FA4();
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460, MEMORY[0x277CDF028]);
  v21 = v29;
  v22 = v30;
  sub_21BE280FC();

  (*(v31 + 8))(v4, v21);
  v23 = sub_21BE2829C();
  KeyPath = swift_getKeyPath();
  v38 = v23;
  v25 = sub_21BE26F3C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA3F0, &qword_21BE43390);
  v27 = (v22 + *(result + 36));
  *v27 = KeyPath;
  v27[1] = v25;
  return result;
}

uint64_t sub_21BD13594(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA3D0, &qword_21BE43350);
  MEMORY[0x28223BE20](v2);
  v4 = &v11[-v3];
  *v4 = sub_21BE2770C();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA3F8, &qword_21BE43398);
  sub_21BD13790(a1, &v4[*(v5 + 44)]);
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA3D8, &qword_21BE43358);
  sub_21BB3B038(&qword_27CDBA3E0, &qword_27CDBA3D0, &qword_21BE43350, MEMORY[0x277CE1198]);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6650, &qword_21BE34EA0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB6660, &qword_21BE33470);
  v8 = sub_21BB3B038(&qword_27CDB5C38, &unk_27CDB6660, &qword_21BE33470, MEMORY[0x277CDD7A8]);
  v13 = v7;
  v14 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = v6;
  v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21BE2817C();
  return sub_21BB52920(v4);
}

uint64_t sub_21BD13790@<X0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v168 = a2;
  v169 = a1;
  v184 = sub_21BE2837C();
  v183 = sub_21BE27BDC();
  KeyPath = swift_getKeyPath();
  v181 = sub_21BE2829C();
  if (qword_27CDB4E78 != -1)
  {
    swift_once();
  }

  v2 = qword_27CDD41E8;
  v3 = sub_21BE2826C();
  sub_21BE2869C();
  sub_21BE26F2C();
  *&v228[3] = *&v228[27];
  *&v228[11] = *&v228[35];
  *&v228[19] = v229;
  *&v235[0] = v3;
  WORD4(v235[0]) = 256;
  *(v235 + 10) = *v228;
  *(&v235[1] + 10) = *&v228[8];
  *(&v235[2] + 10) = *&v228[16];
  *(&v235[3] + 1) = *(&v229 + 1);
  *&v236 = sub_21BE2869C();
  *(&v236 + 1) = v4;
  v247 = v235[3];
  v248 = v236;
  v245 = v235[1];
  v246 = v235[2];
  v244 = v235[0];
  v237 = v3;
  v238 = 256;
  *&v241[14] = *(&v229 + 1);
  *v241 = *&v228[16];
  v240 = *&v228[8];
  v239 = *v228;
  v242 = v236;
  v243 = v4;
  sub_21BBA3854(v235, &v216, &qword_27CDBA408, &qword_21BE433D8);
  sub_21BB3A4CC(&v237, &qword_27CDBA408, &qword_21BE433D8);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  v8 = sub_21BE2599C();
  v179 = v9;
  v180 = v8;

  v10 = [v6 bundleForClass_];
  v11 = sub_21BE2599C();
  v177 = v12;
  v178 = v11;

  v13 = [v6 bundleForClass_];
  v14 = sub_21BE2599C();
  v16 = v15;

  *&v216 = v14;
  *(&v216 + 1) = v16;
  sub_21BB41FA4();
  v17 = sub_21BE27DBC();
  v19 = v18;
  LOBYTE(v16) = v20;
  *&v216 = sub_21BE2832C();
  v21 = sub_21BE27D5C();
  v23 = v22;
  v25 = v24;
  sub_21BBC7C7C(v17, v19, v16 & 1);

  sub_21BE27BFC();
  v26 = sub_21BE27D9C();
  v174 = v27;
  v175 = v26;
  LOBYTE(v19) = v28;
  v176 = v29;

  sub_21BBC7C7C(v21, v23, v25 & 1);

  v172 = swift_getKeyPath();
  v171 = v19 & 1;
  LOBYTE(v216) = v19 & 1;
  v173 = sub_21BE27B6C();
  sub_21BE26E0C();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA410, &qword_21BE43410);
  v167 = v153;
  v163 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = v153 - v39;
  v185 = type metadata accessor for SharedFamilyGroceryIntroView(0);
  v41 = v169;
  v216 = *&v169[*(v185 + 11)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA418, &qword_21BE43418);
  sub_21BE283FC();
  v42 = v186;
  v170 = v40;
  if (v186)
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA420, &qword_21BE43420);
    v44 = *(v43 - 8);
    MEMORY[0x28223BE20](v43);
    v46 = v153 - v45;
    sub_21BE2869C();
    sub_21BE26F2C();
    *&v216 = v42;
    *(&v216 + 1) = v230;
    LOBYTE(v217) = v231;
    v218 = v232;
    LOBYTE(v219[0]) = v233;
    *(v219 + 8) = v234;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA4C8, &unk_21BE43520);
    sub_21BD16708();
    sub_21BE27F5C();

    sub_21BBB7D84(v46, v40, &qword_27CDBA420, &qword_21BE43420);
    (*(v44 + 56))(v40, 0, 1, v43);
  }

  else
  {
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA420, &qword_21BE43420);
    (*(*(v47 - 8) + 56))(v40, 1, 1, v47);
  }

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA428, &qword_21BE43428);
  v166 = v153;
  v161 = *(v48 - 8);
  v162 = v48;
  v49 = MEMORY[0x28223BE20](v48);
  v169 = v153 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = v153;
  v160 = v50;
  MEMORY[0x28223BE20](v49);
  v159 = v153 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5090, &qword_21BE43430);
  v164 = v153;
  v157 = (v52 - 8);
  MEMORY[0x28223BE20](v52 - 8);
  v54 = v153 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA430, &qword_21BE43438);
  v158 = v153;
  v56 = MEMORY[0x28223BE20](v55);
  v58 = v153 - v57;
  v59 = *--v185;
  v60 = v59;
  MEMORY[0x28223BE20](v56);
  v155 = v61;
  v156 = ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = (v153 - v156);
  sub_21BD1613C(v41, v153 - v156);
  v154 = *(v60 + 80);
  v63 = (v154 + 16) & ~v154;
  v64 = swift_allocObject();
  v65 = sub_21BD161A0(v62, v64 + v63);
  MEMORY[0x28223BE20](v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA438, &qword_21BE43440);
  sub_21BD1624C();
  sub_21BE2843C();
  v66 = &v58[*(v55 + 36)];
  v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
  v68 = *MEMORY[0x277CDF420];
  v69 = sub_21BE26E7C();
  (*(*(v69 - 8) + 104))(v66 + v67, v68, v69);
  *v66 = swift_getKeyPath();
  v70 = sub_21BE27A4C();
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v73 = v153 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE27A3C();
  sub_21BD16500();
  sub_21BD165E4(&qword_27CDBA490, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  sub_21BE27ECC();
  (*(v71 + 8))(v73, v70);
  sub_21BB3A4CC(v58, &qword_27CDBA430, &qword_21BE43438);
  v74 = &v54[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA498, &unk_21BE43498) + 36)];
  v75 = *(sub_21BE2723C() + 20);
  v76 = *MEMORY[0x277CE0118];
  v77 = sub_21BE276AC();
  (*(*(v77 - 8) + 104))(&v74[v75], v76, v77);
  __asm { FMOV            V0.2D, #14.0 }

  *v74 = _Q0;
  *&v74[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9E90, &qword_21BE423F0) + 36)] = 256;
  LOBYTE(v76) = sub_21BE27B6C();
  sub_21BE26E0C();
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v91 = &v54[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA4A0, &qword_21BE434A8) + 36)];
  *v91 = v76;
  *(v91 + 1) = v84;
  *(v91 + 2) = v86;
  *(v91 + 3) = v88;
  *(v91 + 4) = v90;
  v91[40] = 0;
  LOBYTE(v76) = sub_21BE27B9C();
  sub_21BE26E0C();
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v100 = &v54[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA4A8, &qword_21BE434B0) + 36)];
  *v100 = v76;
  *(v100 + 1) = v93;
  *(v100 + 2) = v95;
  *(v100 + 3) = v97;
  *(v100 + 4) = v99;
  v100[40] = 0;
  v101 = v41 + *(v185 + 11);
  v102 = *v101;
  v103 = *(v101 + 8);
  LOBYTE(v216) = v102;
  *(&v216 + 1) = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  LOBYTE(v74) = v186;
  v104 = swift_getKeyPath();
  v105 = swift_allocObject();
  v158 = v153;
  *(v105 + 16) = v74;
  v106 = *(v157 + 11);
  v185 = v54;
  v107 = &v54[v106];
  *v107 = v104;
  v107[1] = sub_21BC0AE98;
  v107[2] = v105;
  MEMORY[0x28223BE20](v105);
  v108 = (v153 - v156);
  sub_21BD1613C(v41, v153 - v156);
  sub_21BE28D7C();
  v109 = sub_21BE28D6C();
  v110 = (v154 + 32) & ~v154;
  v111 = swift_allocObject();
  v112 = MEMORY[0x277D85700];
  *(v111 + 16) = v109;
  *(v111 + 24) = v112;
  sub_21BD161A0(v108, v111 + v110);
  v113 = sub_21BE28DAC();
  v157 = v153;
  v114 = *(v113 - 8);
  v115 = *(v114 + 64);
  MEMORY[0x28223BE20](v113);
  v116 = (v115 + 15) & 0xFFFFFFFFFFFFFFF0;
  v117 = v153 - v116;
  sub_21BE28D8C();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v155 = sub_21BE2715C();
    v156 = v153;
    v154 = *(v155 - 8);
    MEMORY[0x28223BE20](v155);
    v119 = v153 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v216 = 0;
    *(&v216 + 1) = 0xE000000000000000;
    sub_21BE295EC();

    *&v216 = 0xD00000000000003ELL;
    *(&v216 + 1) = 0x800000021BE5E1E0;
    *&v186 = 153;
    v120 = sub_21BE2992C();
    MEMORY[0x21CF03CA0](v120);

    v153[1] = v153;
    MEMORY[0x28223BE20](v121);
    (*(v114 + 16))(v153 - v116, v153 - v116, v113);
    sub_21BE2714C();
    (*(v114 + 8))(v153 - v116, v113);
    v122 = v159;
    sub_21BB52B48(v185, v159);
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5098, &qword_21BE31070);
    (*(v154 + 32))(v122 + *(v123 + 36), v119, v155);
  }

  else
  {
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50A0, &qword_21BE31078);
    v122 = v159;
    v125 = (v159 + *(v124 + 36));
    v126 = sub_21BE2701C();
    (*(v114 + 32))(&v125[*(v126 + 20)], v117, v113);
    *v125 = &unk_21BE434F0;
    *(v125 + 1) = v111;
    sub_21BB52B48(v185, v122);
  }

  v127 = v161;
  v128 = v162;
  v129 = v169;
  v130 = (*(v161 + 32))(v169, v122, v162);
  v185 = v153;
  MEMORY[0x28223BE20](v130);
  v132 = v153 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_21BBA3854(v170, v132, &qword_27CDBA410, &qword_21BE43410);
  v163 = v153;
  MEMORY[0x28223BE20](v133);
  v135 = v153 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = *(v127 + 16);
  v160(v135, v129, v128);
  *&v186 = v184;
  *(&v186 + 1) = KeyPath;
  *&v187 = v183;
  *(&v187 + 1) = v181;
  v136 = v246;
  v137 = v247;
  v190 = v246;
  v191 = v247;
  v138 = v248;
  v192 = v248;
  v140 = v244;
  v139 = v245;
  v188 = v244;
  v189 = v245;
  *&v193 = v180;
  *(&v193 + 1) = v179;
  *&v194 = v178;
  *(&v194 + 1) = v177;
  v141 = v187;
  v142 = v168;
  *v168 = v186;
  v142[1] = v141;
  v144 = v193;
  v143 = v194;
  v142[6] = v138;
  v142[7] = v144;
  v142[4] = v136;
  v142[5] = v137;
  v142[2] = v140;
  v142[3] = v139;
  *&v195 = v175;
  *(&v195 + 1) = v174;
  LOBYTE(v196) = v171;
  *(&v196 + 1) = v224[0];
  DWORD1(v196) = *(v224 + 3);
  *(&v196 + 1) = v176;
  *&v197 = v172;
  WORD4(v197) = 1;
  BYTE10(v197) = 1;
  *(&v197 + 11) = v226;
  HIBYTE(v197) = v227;
  LOBYTE(v198) = v173;
  DWORD1(v198) = *&v225[3];
  *(&v198 + 1) = *v225;
  *(&v198 + 1) = v31;
  *&v199[0] = v33;
  *(&v199[0] + 1) = v35;
  *&v199[1] = v37;
  BYTE8(v199[1]) = 0;
  v145 = v195;
  v146 = v196;
  v142[8] = v143;
  v142[9] = v145;
  v147 = v197;
  v148 = v198;
  v149 = v199[0];
  *(v142 + 217) = *(v199 + 9);
  v142[12] = v148;
  v142[13] = v149;
  v142[10] = v146;
  v142[11] = v147;
  *(v142 + 30) = 0;
  *(v142 + 248) = 1;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA4B0, &qword_21BE43500);
  sub_21BBA3854(v132, v142 + *(v150 + 80), &qword_27CDBA410, &qword_21BE43410);
  v160(v142 + *(v150 + 96), v135, v128);
  sub_21BBA3854(&v186, &v216, &qword_27CDBA4B8, &qword_21BE43508);
  sub_21BBA3854(&v195, &v216, &qword_27CDBA4C0, &unk_21BE43510);
  v151 = *(v127 + 8);
  v151(v169, v128);
  sub_21BB3A4CC(v170, &qword_27CDBA410, &qword_21BE43410);
  v151(v135, v128);
  sub_21BB3A4CC(v132, &qword_27CDBA410, &qword_21BE43410);
  v200[0] = v175;
  v200[1] = v174;
  v201 = v171;
  *v202 = v224[0];
  *&v202[3] = *(v224 + 3);
  v203 = v176;
  v204 = v172;
  v205 = 1;
  v206 = 1;
  v207 = v226;
  v208 = v227;
  v209 = v173;
  *&v210[3] = *&v225[3];
  *v210 = *v225;
  v211 = v31;
  v212 = v33;
  v213 = v35;
  v214 = v37;
  v215 = 0;
  sub_21BB3A4CC(v200, &qword_27CDBA4C0, &unk_21BE43510);
  *&v216 = v184;
  *(&v216 + 1) = KeyPath;
  v217 = v183;
  v218 = v181;
  v219[2] = v246;
  v219[3] = v247;
  v219[4] = v248;
  v219[0] = v244;
  v219[1] = v245;
  v220 = v180;
  v221 = v179;
  v222 = v178;
  v223 = v177;
  return sub_21BB3A4CC(&v216, &qword_27CDBA4B8, &qword_21BE43508);
}

double sub_21BD14B84(uint64_t a1)
{
  v2 = type metadata accessor for SharedFamilyGroceryIntroView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (a1 + *(MEMORY[0x28223BE20](v2 - 8) + 44));
  v6 = *v5;
  v7 = *(v5 + 1);
  v11[16] = v6;
  v12 = v7;
  v11[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  sub_21BD1613C(a1, &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_21BD161A0(&v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  sub_21BD128C4(sub_21BD16B80, v9);

  return result;
}

void *sub_21BD14CD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v49 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA4E0, &qword_21BE43548);
  MEMORY[0x28223BE20](v48);
  v4 = &v48 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA460, &qword_21BE43450);
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA450, &qword_21BE43448);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v48 - v12;
  v14 = (a1 + *(type metadata accessor for SharedFamilyGroceryIntroView(0) + 36));
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v51) = v15;
  *(&v51 + 1) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  if (v50 == 1)
  {
    sub_21BE26EEC();
    v17 = sub_21BE2833C();
    KeyPath = swift_getKeyPath();
    v19 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA470, &qword_21BE43458) + 36)];
    *v19 = KeyPath;
    v19[1] = v17;
    v20 = &v7[*(v5 + 36)];
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
    v22 = *MEMORY[0x277CDF440];
    v23 = sub_21BE26E7C();
    (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
    *v20 = swift_getKeyPath();
    sub_21BE2869C();
    sub_21BE2725C();
    sub_21BBB7D84(v7, v11, &qword_27CDBA460, &qword_21BE43450);
    v24 = &v11[*(v8 + 36)];
    v25 = v56;
    *(v24 + 4) = v55;
    *(v24 + 5) = v25;
    *(v24 + 6) = v57;
    v26 = v52;
    *v24 = v51;
    *(v24 + 1) = v26;
    v27 = v54;
    *(v24 + 2) = v53;
    *(v24 + 3) = v27;
    sub_21BBB7D84(v11, v13, &qword_27CDBA450, &qword_21BE43448);
    sub_21BBA3854(v13, v4, &qword_27CDBA450, &qword_21BE43448);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C98, &unk_21BE3DAC8);
    sub_21BD162D8();
    sub_21BCA16C0();
    sub_21BE2784C();
    return sub_21BB3A4CC(v13, &qword_27CDBA450, &qword_21BE43448);
  }

  else
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v30 = [objc_opt_self() bundleForClass_];
    v31 = sub_21BE2599C();
    v33 = v32;

    *&v51 = v31;
    *(&v51 + 1) = v33;
    sub_21BB41FA4();
    v34 = sub_21BE27DBC();
    v36 = v35;
    LOBYTE(v33) = v37;
    v38 = sub_21BE27D8C();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    sub_21BBC7C7C(v34, v36, v33 & 1);

    sub_21BE2869C();
    sub_21BE2725C();
    LOBYTE(v50) = v42 & 1;
    *v4 = v38;
    *(v4 + 1) = v40;
    v4[16] = v42 & 1;
    *(v4 + 3) = v44;
    v45 = v56;
    *(v4 + 6) = v55;
    *(v4 + 7) = v45;
    *(v4 + 8) = v57;
    v46 = v52;
    *(v4 + 2) = v51;
    *(v4 + 3) = v46;
    v47 = v54;
    *(v4 + 4) = v53;
    *(v4 + 5) = v47;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C98, &unk_21BE3DAC8);
    sub_21BD162D8();
    sub_21BCA16C0();
    return sub_21BE2784C();
  }
}

uint64_t sub_21BD15224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a3;
  v4 = type metadata accessor for SharedFamilyGroceryIntroView(0);
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v3[10] = *(v5 + 64);
  v3[11] = swift_task_alloc();
  sub_21BE28D7C();
  v3[12] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD15320, v7, v6);
}

uint64_t sub_21BD15320()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);

  sub_21BD1613C(v3, v1);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_21BD161A0(v1, v6 + v5);
  sub_21BD1613C(v3, v1);
  v7 = swift_allocObject();
  sub_21BD161A0(v1, v7 + v5);
  v8 = type metadata accessor for MessageComposeViewController();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC14FamilyCircleUI28MessageComposeViewController_finalRecipients] = MEMORY[0x277D84F90];
  v10 = &v9[OBJC_IVAR____TtC14FamilyCircleUI28MessageComposeViewController_onDoneSharing];
  *v10 = sub_21BD167E8;
  v10[1] = v6;
  v11 = &v9[OBJC_IVAR____TtC14FamilyCircleUI28MessageComposeViewController_onCancel];
  *v11 = sub_21BD1684C;
  v11[1] = v7;
  *(v0 + 16) = v9;
  *(v0 + 24) = v8;
  v12 = objc_msgSendSuper2((v0 + 16), sel_initWithNibName_bundle_, 0, 0);
  *(v0 + 32) = *(v3 + *(v4 + 44));
  *(v0 + 48) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA418, &qword_21BE43418);
  sub_21BE2840C();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_21BD154D4()
{
  v0 = sub_21BE26F5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BD1269C();
  sub_21BD11124(v3);
  sub_21BE26F4C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21BD155A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v3 = sub_21BE278CC();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB6660, &qword_21BE33470);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6650, &qword_21BE34EA0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - v10;
  sub_21BE2789C();
  v15[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460, MEMORY[0x277CDF028]);
  sub_21BE26EDC();
  v12 = sub_21BB3B038(&qword_27CDB5C38, &unk_27CDB6660, &qword_21BE33470, MEMORY[0x277CDD7A8]);
  MEMORY[0x21CF02AD0](v7, v4, v12);
  (*(v5 + 8))(v7, v4);
  v15[6] = v4;
  v15[7] = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF02AD0](v11, v8, OpaqueTypeConformance2);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21BD15864(uint64_t a1)
{
  v2 = type metadata accessor for SharedFamilyGroceryIntroView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_21BE2599C();
  v9 = v8;

  v13[0] = v7;
  v13[1] = v9;
  sub_21BD1613C(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_21BD161A0(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_21BB41FA4();
  return sub_21BE2845C();
}

uint64_t sub_21BD15A00(uint64_t a1)
{
  v15 = sub_21BE2754C();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_21BE26F5C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BBA3854(a1, v7, &unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_21BE28FEC();
    v12 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_21BE26F4C();
  return (*(v9 + 8))(v11, v8);
}

double sub_21BD15C7C@<D0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for SharedFamilyGroceryIntroView(0);
  *(a1 + v2[5]) = 0x4043000000000000;
  v3 = v2[6];
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v4 = (a1 + v3);
  type metadata accessor for FamilyCircleStore(0);
  sub_21BD165E4(&qword_27CDB5C40, type metadata accessor for FamilyCircleStore, protocol conformance descriptor for AsyncStore<A>);

  *v4 = sub_21BE270CC();
  v4[1] = v5;
  v6 = v2[7];
  *(a1 + v6) = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  v7 = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA388, &qword_21BE432A8);
  sub_21BE283EC();
  *(a1 + v7) = v12;
  v8 = a1 + v2[9];
  sub_21BE283EC();
  *v8 = v12;
  *(v8 + 1) = *(&v12 + 1);
  v9 = a1 + v2[10];
  sub_21BE283EC();
  *v9 = v12;
  *(v9 + 1) = *(&v12 + 1);
  v10 = v2[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA390, qword_21BE432B0);
  sub_21BE283EC();
  result = *&v12;
  *(a1 + v10) = v12;
  return result;
}

uint64_t type metadata accessor for SharedFamilyGroceryIntroView(uint64_t a1)
{
  result = qword_27CDBA398;
  if (!qword_27CDBA398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD15EFC(uint64_t a1)
{
  sub_21BB40410(319);
  if (v1 <= 0x3F)
  {
    sub_21BD16028(319);
    if (v2 <= 0x3F)
    {
      sub_21BB3A2A4(319, &qword_27CDBA3A8, 0x277D44850);
      if (v3 <= 0x3F)
      {
        sub_21BD160BC(319, &qword_27CDBA3B0, &qword_27CDBA388, &qword_21BE432A8);
        if (v4 <= 0x3F)
        {
          sub_21BB403C0();
          if (v5 <= 0x3F)
          {
            sub_21BD160BC(319, &qword_27CDBA3B8, &qword_27CDBA390, qword_21BE432B0);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21BD16028(uint64_t a1)
{
  if (!qword_27CDB9970)
  {
    type metadata accessor for FamilyCircleStore(255);
    sub_21BD165E4(&qword_27CDB5C40, type metadata accessor for FamilyCircleStore, protocol conformance descriptor for AsyncStore<A>);
    v1 = sub_21BE270DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB9970);
    }
  }
}

void sub_21BD160BC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_21BE2842C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_21BD1613C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedFamilyGroceryIntroView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD161A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedFamilyGroceryIntroView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BD1624C()
{
  result = qword_27CDBA440;
  if (!qword_27CDBA440)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA438, &qword_21BE43440);
    v4[0] = sub_21BD162D8();
    v4[1] = sub_21BCA16C0();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBA440);
  }

  return result;
}

unint64_t sub_21BD162D8()
{
  result = qword_27CDBA448;
  if (!qword_27CDBA448)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA450, &qword_21BE43448);
    v4[0] = sub_21BD16364();
    v4[1] = MEMORY[0x277CDFC60];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA448);
  }

  return result;
}

unint64_t sub_21BD16364()
{
  result = qword_27CDBA458;
  if (!qword_27CDBA458)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA460, &qword_21BE43450);
    v4[0] = sub_21BD1641C();
    v4[1] = sub_21BB3B038(&unk_27CDBC4F0, &unk_27CDB55B0, &qword_21BE3FF90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA458);
  }

  return result;
}

unint64_t sub_21BD1641C()
{
  result = qword_27CDBA468;
  if (!qword_27CDBA468)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA470, &qword_21BE43458);
    v4[0] = sub_21BB3B038(&qword_27CDBC4E0, &qword_27CDB7020, &qword_21BE39520, MEMORY[0x277CDD7F8]);
    v4[1] = sub_21BB3B038(&qword_27CDB7970, &qword_27CDBC520, &qword_21BE38BA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA468);
  }

  return result;
}

unint64_t sub_21BD16500()
{
  result = qword_27CDBA478;
  if (!qword_27CDBA478)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA430, &qword_21BE43438);
    v4[0] = sub_21BB3B038(&qword_27CDBA480, &qword_27CDBA488, &qword_21BE43490, MEMORY[0x277CDF028]);
    v4[1] = sub_21BB3B038(&unk_27CDBC4F0, &unk_27CDB55B0, &qword_21BE3FF90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA478);
  }

  return result;
}

uint64_t sub_21BD165E4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21BD1662C()
{
  v2 = *(type metadata accessor for SharedFamilyGroceryIntroView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21BBB7EB8;

  return sub_21BD15224(v4, v5, v0 + v3);
}

unint64_t sub_21BD16708()
{
  result = qword_27CDBA4D0;
  if (!qword_27CDBA4D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA4C8, &unk_21BE43520);
    v4[0] = sub_21BD16794();
    v4[1] = MEMORY[0x277CDF678];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA4D0);
  }

  return result;
}

unint64_t sub_21BD16794()
{
  result = qword_27CDBC980;
  if (!qword_27CDBC980)
  {
    result = swift_getWitnessTable(byte_21BE4B604, &type metadata for ShareGroceryListMessageComposeView, v0, v1);
    atomic_store(result, &qword_27CDBC980);
  }

  return result;
}

uint64_t sub_21BD16864(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SharedFamilyGroceryIntroView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21BD168D8(uint64_t a1)
{
  v4 = *(type metadata accessor for SharedFamilyGroceryIntroView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBA6A64;

  return sub_21BD11EB0(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroyTm_17()
{
  v1 = type metadata accessor for SharedFamilyGroceryIntroView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21BE26F5C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

void *sub_21BD16B80(void *a1, char a2)
{
  v5 = *(type metadata accessor for SharedFamilyGroceryIntroView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21BD5EDB8(a1, a2 & 1, v6);
}

uint64_t sub_21BD16C00()
{
  v1 = *(type metadata accessor for SharedFamilyGroceryIntroView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_21BD12D24(v0 + v2, v4, v5);
}

unint64_t sub_21BD16CF4()
{
  result = qword_27CDBA4E8;
  if (!qword_27CDBA4E8)
  {
    v9[16] = v0;
    v9[17] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA3F0, &qword_21BE43390);
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA3C0, &qword_21BE43340);
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB55A0, &unk_21BE32460);
    v6 = sub_21BB3B038(&qword_27CDBA3E8, &qword_27CDBA3C0, &qword_21BE43340, MEMORY[0x277CDDA18]);
    v7 = sub_21BB41FA4();
    v8 = sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460, MEMORY[0x277CDF028]);
    v9[2] = v4;
    v9[3] = MEMORY[0x277D837D0];
    v9[4] = v5;
    v9[5] = v6;
    v9[6] = v7;
    v9[7] = v8;
    v9[0] = swift_getOpaqueTypeConformance2();
    v9[1] = sub_21BB3B038(&qword_27CDB8CF8, &qword_27CDB8D00, &qword_21BE3DC30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v9);
    atomic_store(result, &qword_27CDBA4E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MemberDetailsSiwaCell(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for MemberDetailsSiwaCell(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21BD17018@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA500, &unk_21BE436A8);
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = (&v38 - v5);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E00, &unk_21BE33820);
  v6 = MEMORY[0x28223BE20](v39);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA508, &unk_21BE436B8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v46 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - v13;
  v45 = sub_21BE2771C();
  v15 = 1;
  v60 = 1;
  sub_21BD17750(a1 & 1, &v49);
  v64 = *&v50[16];
  v65 = *&v50[32];
  v66 = *&v50[48];
  v67 = v50[64];
  v62 = v49;
  v63 = *v50;
  v69 = v50[64];
  v68[2] = *&v50[16];
  v68[3] = *&v50[32];
  v68[4] = *&v50[48];
  v68[0] = v49;
  v68[1] = *v50;
  sub_21BBA3854(&v62, v47, &qword_27CDB9FB8, &qword_21BE425A0);
  sub_21BB3A4CC(v68, &qword_27CDB9FB8, &qword_21BE425A0);
  *&v59[39] = v64;
  *&v59[55] = v65;
  *&v59[71] = v66;
  v59[87] = v67;
  *&v59[7] = v62;
  *&v59[23] = v63;
  v42 = v60;
  sub_21BE286AC();
  sub_21BE2725C();
  *(&v61[6] + 7) = *&v61[21];
  *(&v61[8] + 7) = *&v61[23];
  *(&v61[10] + 7) = *&v61[25];
  *(&v61[12] + 7) = *&v61[27];
  *(v61 + 7) = *&v61[15];
  *(&v61[2] + 7) = *&v61[17];
  *(&v61[4] + 7) = *&v61[19];
  if ((a1 & 0x100) != 0)
  {
    sub_21BE26EEC();
    *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF8, &unk_21BE38C60) + 36)] = 257;
    v16 = &v9[*(v39 + 36)];
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
    v18 = *MEMORY[0x277CDF438];
    v19 = sub_21BE26E7C();
    (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
    *v16 = swift_getKeyPath();
    v20 = v41;
    sub_21BBA3854(v9, v41, &qword_27CDB5E00, &unk_21BE33820);
    v21 = v40;
    *v40 = 0;
    *(v21 + 8) = 1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA520, &qword_21BE43708);
    sub_21BBA3854(v20, v21 + *(v22 + 48), &qword_27CDB5E00, &unk_21BE33820);
    sub_21BB3A4CC(v9, &qword_27CDB5E00, &unk_21BE33820);
    sub_21BB3A4CC(v20, &qword_27CDB5E00, &unk_21BE33820);
    sub_21BD17B58(v21, v14);
    v15 = 0;
  }

  (*(v43 + 56))(v14, v15, 1, v44);
  v23 = v46;
  sub_21BBA3854(v14, v46, &qword_27CDBA508, &unk_21BE436B8);
  *a2 = 5;
  *(a2 + 8) = 0;
  *(a2 + 16) = &unk_282D86A18;
  *(a2 + 24) = &unk_282D86A48;
  *(a2 + 32) = 0;
  v24 = v45;
  v47[0] = v45;
  v47[1] = 0;
  v25 = v42;
  LOBYTE(v48[0]) = v42;
  *(&v48[2] + 1) = *&v59[32];
  *(&v48[3] + 1) = *&v59[48];
  *(&v48[4] + 1) = *&v59[64];
  *(&v48[5] + 1) = *&v59[80];
  *(v48 + 1) = *v59;
  *(&v48[1] + 1) = *&v59[16];
  *(&v48[8] + 9) = *&v61[6];
  *(&v48[7] + 9) = *&v61[4];
  *(&v48[6] + 9) = *&v61[2];
  *(&v48[5] + 9) = *v61;
  *(&v48[12] + 1) = *(&v61[13] + 7);
  *(&v48[11] + 9) = *&v61[12];
  *(&v48[10] + 9) = *&v61[10];
  *(&v48[9] + 9) = *&v61[8];
  v26 = v45;
  *(a2 + 56) = v48[0];
  *(a2 + 40) = v26;
  v27 = v48[1];
  v28 = v48[2];
  v29 = v48[3];
  *(a2 + 120) = v48[4];
  *(a2 + 104) = v29;
  *(a2 + 88) = v28;
  *(a2 + 72) = v27;
  v30 = v48[5];
  v31 = v48[6];
  v32 = v48[7];
  *(a2 + 184) = v48[8];
  *(a2 + 168) = v32;
  *(a2 + 152) = v31;
  *(a2 + 136) = v30;
  v33 = v48[9];
  v34 = v48[10];
  v35 = v48[11];
  *(a2 + 248) = v48[12];
  *(a2 + 232) = v35;
  *(a2 + 216) = v34;
  *(a2 + 200) = v33;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA510, &qword_21BE436C8);
  sub_21BBA3854(v23, a2 + *(v36 + 64), &qword_27CDBA508, &unk_21BE436B8);

  sub_21BBA3854(v47, &v49, &qword_27CDBA518, &qword_21BE436D0);
  sub_21BB3A4CC(v14, &qword_27CDBA508, &unk_21BE436B8);
  sub_21BB3A4CC(v23, &qword_27CDBA508, &unk_21BE436B8);
  v49 = v24;
  v50[0] = v25;
  *&v50[33] = *&v59[32];
  *&v50[49] = *&v59[48];
  *&v50[65] = *&v59[64];
  v51 = *&v59[80];
  *&v50[1] = *v59;
  *&v50[17] = *&v59[16];
  v55 = *&v61[6];
  v54 = *&v61[4];
  v53 = *&v61[2];
  v52 = *v61;
  *&v58[15] = *(&v61[13] + 7);
  *v58 = *&v61[12];
  v57 = *&v61[10];
  v56 = *&v61[8];
  sub_21BB3A4CC(&v49, &qword_27CDBA518, &qword_21BE436D0);
}

uint64_t sub_21BD17750@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  if (a1)
  {
    v35 = 0x800000021BE5E2F0;
  }

  else
  {
    v35 = 0x800000021BE5E2D0;
  }

  sub_21BE2599C();

  v6 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  v7 = sub_21BE27DBC();
  v9 = v8;
  v11 = v10;
  sub_21BE2832C();
  v12 = sub_21BE27D4C();
  v37 = v13;
  v38 = v12;
  v36 = v14;
  v39 = v15;

  sub_21BBC7C7C(v7, v9, v11 & 1);

  v16 = sub_21BE27DBC();
  v18 = v17;
  v20 = v19;
  sub_21BE27BEC();
  v21 = sub_21BE27D9C();
  v23 = v22;
  v25 = v24;

  sub_21BBC7C7C(v16, v18, v20 & 1);

  sub_21BE2833C();
  v26 = sub_21BE27D4C();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_21BBC7C7C(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  *a2 = v38;
  *(a2 + 8) = v37;
  *(a2 + 16) = v36 & 1;
  *(a2 + 24) = v39;
  *(a2 + 32) = v26;
  *(a2 + 40) = v28;
  *(a2 + 48) = v30 & 1;
  *(a2 + 56) = v32;
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = 1;
  *(a2 + 80) = 0;
  sub_21BBA4A38(v38, v37, v36 & 1);

  sub_21BBA4A38(v26, v28, v30 & 1);

  sub_21BBC7C7C(v26, v28, v30 & 1);

  sub_21BBC7C7C(v38, v37, v36 & 1);
}

uint64_t sub_21BD17AB0@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  *a2 = sub_21BE275DC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA4F0, &qword_21BE43668);
  if (v5)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  sub_21BD17018(v7 | v4, a2 + *(v6 + 44));
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA4F8, &qword_21BE436A0);
  v10 = a2 + *(result + 36);
  *v10 = v5 ^ 1;
  *(v10 + 8) = KeyPath;
  *(v10 + 16) = 0;
  return result;
}

uint64_t sub_21BD17B58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA500, &unk_21BE436A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BD17BC8()
{
  result = qword_27CDBA528;
  if (!qword_27CDBA528)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA4F8, &qword_21BE436A0);
    v4[0] = sub_21BD17C54();
    v4[1] = sub_21BBDD1A8();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA528);
  }

  return result;
}

unint64_t sub_21BD17C54()
{
  result = qword_27CDBA530;
  if (!qword_27CDBA530)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA538, &qword_21BE43740);
    v4[0] = sub_21BD17CE0();
    v4[1] = sub_21BBDD54C();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA530);
  }

  return result;
}

unint64_t sub_21BD17CE0()
{
  result = qword_27CDBA540;
  if (!qword_27CDBA540)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA548, &qword_21BE43748);
    result = swift_getWitnessTable(MEMORY[0x277CE1138], v3, v0, v1);
    atomic_store(result, &qword_27CDBA540);
  }

  return result;
}

uint64_t sub_21BD17D44()
{
  type metadata accessor for FamilyConfigLogger();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = -1;
  *(v0 + 120) = -1;
  qword_280BDCBF8 = v0;
  return result;
}

uint64_t sub_21BD17D88(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_21BE26A4C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD17E60, v1, 0);
}

uint64_t sub_21BD17E60()
{
  v39 = v0;
  v1 = [*(v0 + 16) members];
  sub_21BBE66D8();
  v2 = sub_21BE28C3C();

  if (v2 >> 62)
  {
    v3 = sub_21BE2951C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
    sub_21BE2615C();
    v13 = sub_21BE26A2C();
    v14 = sub_21BE28FCC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21BB35000, v13, v14, "No family, no logging", v15, 2u);
      MEMORY[0x21CF05C50](v15, -1, -1);
    }

    v17 = *(v0 + 40);
    v16 = *(v0 + 48);
    v19 = *(v0 + 24);
    v18 = *(v0 + 32);

    (*(v17 + 8))(v16, v18);
    *(v19 + 112) = -1;
    goto LABEL_14;
  }

  v4 = [*(v0 + 16) members];
  v5 = sub_21BE28C3C();

  if (v5 >> 62)
  {
    v6 = sub_21BE2951C();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 72) = v6;
  v7 = *(v0 + 16);

  v8 = [v7 members];
  v9 = sub_21BE28C3C();
  *(v0 + 80) = v9;

  if (v9 >> 62)
  {
    v10 = sub_21BE2951C();
    *(v0 + 88) = v10;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 88) = v10;
    if (v10)
    {
LABEL_8:
      if (v10 >= 1)
      {
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        v11 = *(v0 + 80);
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x21CF047C0](0);
        }

        else
        {
          v12 = *(v11 + 32);
        }

        *(v0 + 112) = v12;
        v22 = swift_task_alloc();
        *(v0 + 120) = v22;
        *v22 = v0;
        v22[1] = sub_21BD18364;

        return MEMORY[0x28215E5F0](0);
      }

      __break(1u);
      goto LABEL_35;
    }
  }

  if (!*(v0 + 72))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_27;
  }

  v23 = *(v0 + 24);
  if (!*(v23 + 112))
  {
    sub_21BE2615C();
    v24 = sub_21BE26A2C();
    v25 = sub_21BE28FCC();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 56);
    v28 = *(v0 + 32);
    v29 = *(v0 + 40);
    if (v26)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_21BB35000, v24, v25, "No Change in messages configured for Family, not sending event to Core Anlaytics", v30, 2u);
      MEMORY[0x21CF05C50](v30, -1, -1);
    }

    (*(v29 + 8))(v27, v28);
    goto LABEL_14;
  }

  *(v23 + 112) = 0;
  if (qword_27CDB4F68 != -1)
  {
    goto LABEL_36;
  }

LABEL_27:
  v38[0] = 44;
  sub_21BCA5BA8(v38, 0);
  sub_21BE2615C();
  v31 = sub_21BE26A2C();
  v32 = sub_21BE28FCC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = *(v0 + 72);
    v34 = swift_slowAlloc();
    *v34 = 134218496;
    *(v34 + 4) = 0;
    *(v34 + 12) = 2048;
    *(v34 + 14) = v33;
    *(v34 + 22) = 2048;
    *(v34 + 24) = 0;
    _os_log_impl(&dword_21BB35000, v31, v32, "Logged %ld out of %ld [%ld%%] members with iMessage config", v34, 0x20u);
    MEMORY[0x21CF05C50](v34, -1, -1);
  }

  v35 = *(v0 + 64);
  v36 = *(v0 + 32);
  v37 = *(v0 + 40);

  (*(v37 + 8))(v35, v36);
LABEL_14:

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_21BD18364()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_21BD18474, v1, 0);
}

uint64_t sub_21BD18474(uint64_t a1)
{
  v31 = v1;
  v2 = v1[14];
  v3 = v1[12];
  v4 = sub_21BE291BC();

  v5 = v3 + (v4 & 1);
  if (__OFADD__(v3, v4 & 1))
  {
    __break(1u);
    goto LABEL_28;
  }

  v6 = v1[13] + 1;
  if (v6 == v1[11])
  {

    v7 = 100 * v5;
    if ((v5 * 100) >> 64 == (100 * v5) >> 63)
    {
      v8 = v1[9];
      if (v8)
      {
        if (v7 != 0x8000000000000000 || v8 != -1)
        {
          v10 = v1[3];
          v4 = v7 / v8;
          if (v7 / v8 == *(v10 + 112))
          {
            sub_21BE2615C();
            v11 = sub_21BE26A2C();
            v12 = sub_21BE28FCC();
            v13 = os_log_type_enabled(v11, v12);
            v14 = v1[7];
            v15 = v1[4];
            v16 = v1[5];
            if (v13)
            {
              v17 = swift_slowAlloc();
              *v17 = 0;
              _os_log_impl(&dword_21BB35000, v11, v12, "No Change in messages configured for Family, not sending event to Core Anlaytics", v17, 2u);
              MEMORY[0x21CF05C50](v17, -1, -1);
            }

            (*(v16 + 8))(v14, v15);
LABEL_24:

            v28 = v1[1];

            return v28();
          }

          *(v10 + 112) = v4;
          if (qword_27CDB4F68 == -1)
          {
LABEL_16:
            v30[0] = 44;
            sub_21BCA5BA8(v30, v4);
            sub_21BE2615C();
            v21 = sub_21BE26A2C();
            v22 = sub_21BE28FCC();
            if (os_log_type_enabled(v21, v22))
            {
              v23 = v1[9];
              v24 = swift_slowAlloc();
              *v24 = 134218496;
              *(v24 + 4) = v5;
              *(v24 + 12) = 2048;
              *(v24 + 14) = v23;
              *(v24 + 22) = 2048;
              *(v24 + 24) = v4;
              _os_log_impl(&dword_21BB35000, v21, v22, "Logged %ld out of %ld [%ld%%] members with iMessage config", v24, 0x20u);
              MEMORY[0x21CF05C50](v24, -1, -1);
            }

            v25 = v1[8];
            v26 = v1[4];
            v27 = v1[5];

            (*(v27 + 8))(v25, v26);
            goto LABEL_24;
          }

LABEL_31:
          swift_once();
          goto LABEL_16;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v1[12] = v5;
  v1[13] = v6;
  v18 = v1[10];
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x21CF047C0]();
  }

  else
  {
    v19 = *(v18 + 8 * v6 + 32);
  }

  v1[14] = v19;
  v20 = swift_task_alloc();
  v1[15] = v20;
  *v20 = v1;
  v20[1] = sub_21BD18364;

  return MEMORY[0x28215E5F0](0);
}

uint64_t sub_21BD18808(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_21BE26A4C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD188E0, v1, 0);
}

uint64_t sub_21BD188E0()
{
  v44 = v0;
  v2 = &selRef_fa_URLByAddingAirdropInviteParams;
  v3 = [v0[2] members];
  sub_21BBE66D8();
  v4 = sub_21BE28C3C();

  if (v4 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21BE2951C())
  {

    if (!i)
    {
      break;
    }

    v6 = [v0[2] v2[329]];
    v7 = sub_21BE28C3C();

    if (v7 >> 62)
    {
      v8 = sub_21BE2951C();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v0[2];

    v10 = [v9 v2[329]];
    v11 = sub_21BE28C3C();

    *v43 = MEMORY[0x277D84F90];
    if (v11 >> 62)
    {
      v2 = sub_21BE2951C();
      v42 = v0;
      if (!v2)
      {
LABEL_27:
        v16 = MEMORY[0x277D84F90];
LABEL_28:

        if (v16 < 0 || (v16 & 0x4000000000000000) != 0)
        {
          goto LABEL_47;
        }

        for (j = *(v16 + 16); ; j = sub_21BE2951C())
        {
          v0 = v42;

          v25 = 100 * j;
          if ((j * 100) >> 64 == (100 * j) >> 63)
          {
            break;
          }

          __break(1u);
LABEL_47:
          ;
        }

        if (v8)
        {
          if (v25 != 0x8000000000000000 || v8 != -1)
          {
            v26 = v42[3];
            v1 = v25 / v8;
            if (v25 / v8 == *(v26 + 15))
            {
              sub_21BE2615C();
              v27 = sub_21BE26A2C();
              v28 = sub_21BE28FCC();
              v29 = os_log_type_enabled(v27, v28);
              v30 = v42[7];
              v31 = v42[4];
              v32 = v42[5];
              if (v29)
              {
                v33 = swift_slowAlloc();
                *v33 = 0;
                _os_log_impl(&dword_21BB35000, v27, v28, "No Change in contacts configured for Family, not sending event to Core Anlaytics", v33, 2u);
                MEMORY[0x21CF05C50](v33, -1, -1);
              }

              (*(v32 + 1))(v30, v31);
              goto LABEL_43;
            }

            *(v26 + 15) = v1;
            if (qword_27CDB4F68 == -1)
            {
              goto LABEL_40;
            }

            goto LABEL_50;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_50:
        swift_once();
LABEL_40:
        v43[0] = 43;
        sub_21BCA5BA8(v43, v1);
        sub_21BE2615C();
        v34 = sub_21BE26A2C();
        v35 = sub_21BE28FCC();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 134218496;
          *(v36 + 4) = j;
          *(v36 + 12) = 2048;
          *(v36 + 14) = v8;
          *(v36 + 22) = 2048;
          *(v36 + 24) = v1;
          _os_log_impl(&dword_21BB35000, v34, v35, "Logged %ld out of %ld [%ld%%] members with local contacts", v36, 0x20u);
          MEMORY[0x21CF05C50](v36, -1, -1);
        }

        v37 = v42[8];
        v38 = v42[4];
        v39 = v42[5];

        (*(v39 + 1))(v37, v38);
        goto LABEL_43;
      }
    }

    else
    {
      v2 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v42 = v0;
      if (!v2)
      {
        goto LABEL_27;
      }
    }

    v1 = 0;
    v0 = &selRef_bundleURL;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x21CF047C0](v1, v11);
      }

      else
      {
        if (v1 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v12 = *(v11 + 8 * v1 + 32);
      }

      v13 = v12;
      v14 = (v1 + 1);
      if (__OFADD__(v1, 1))
      {
        break;
      }

      v15 = [v12 contact];
      if (v15)
      {

        sub_21BE296BC();
        sub_21BE296EC();
        sub_21BE296FC();
        sub_21BE296CC();
      }

      else
      {
      }

      ++v1;
      if (v14 == v2)
      {
        v16 = *v43;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  sub_21BE2615C();
  v17 = sub_21BE26A2C();
  v18 = sub_21BE28FCC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_21BB35000, v17, v18, "No family, no logging", v19, 2u);
    MEMORY[0x21CF05C50](v19, -1, -1);
  }

  v21 = v0[5];
  v20 = v0[6];
  v23 = v0[3];
  v22 = v0[4];

  (*(v21 + 1))(v20, v22);
  *(v23 + 15) = -1;
LABEL_43:

  v40 = v0[1];

  return v40();
}

uint64_t sub_21BD18E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_21BBA6A64;

  return sub_21BD18F14(a5);
}

uint64_t sub_21BD18F14(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_21BE26A4C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD18FD4, v1, 0);
}

uint64_t sub_21BD18FD4()
{
  if (qword_280BD84E8 != -1)
  {
    swift_once();
  }

  v0[7] = qword_280BDCBF8;
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_21BD190A4;
  v2 = v0[2];

  return sub_21BD17D88(v2);
}

uint64_t sub_21BD190A4()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x2822009F8](sub_21BD19354, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[10] = v4;
    *v4 = v2;
    v4[1] = sub_21BD19218;
    v5 = v2[2];

    return sub_21BD18808(v5);
  }
}

uint64_t sub_21BD19218()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x2822009F8](sub_21BD19460, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_21BD19354(uint64_t a1)
{
  v2 = v1[9];
  v4 = v1[5];
  v3 = v1[6];
  v5 = v1[4];
  sub_21BE2615C();
  v6 = v2;
  sub_21BC51D50(v2, 0xD000000000000029, 0x800000021BE5E390);

  (*(v4 + 8))(v3, v5);
  v7 = swift_task_alloc();
  v1[10] = v7;
  *v7 = v1;
  v7[1] = sub_21BD19218;
  v8 = v1[2];

  return sub_21BD18808(v8);
}

uint64_t sub_21BD19460(uint64_t a1)
{
  v2 = v1[11];
  v4 = v1[5];
  v3 = v1[6];
  v5 = v1[4];
  sub_21BE2615C();
  v6 = v2;
  sub_21BC51D50(v2, 0xD000000000000029, 0x800000021BE5E3C0);

  (*(v4 + 8))(v3, v5);

  v7 = v1[1];

  return v7();
}

uint64_t sub_21BD19534()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_21BD19594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21BD22228;

  return v9(a1, a2, a3);
}

uint64_t sub_21BD196BC(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BCCB0A8;

  return v7(a1, a2);
}

void sub_21BD197D4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_21BD1984C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9808, &qword_21BE40588);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = [a2 dsid];
  v9 = [objc_allocWithZone(MEMORY[0x277D082E0]) initWithFamilyMemberDSID_];

  if (v9)
  {
    (*(v5 + 16))(v7, a1, v4);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    (*(v5 + 32))(v11 + v10, v7, v4);
    aBlock[4] = sub_21BD22230;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21BD197D4;
    aBlock[3] = &block_descriptor_37;
    v12 = _Block_copy(aBlock);

    [v9 startRequestWithCompletionHandler_];
    _Block_release(v12);
  }
}

void sub_21BD19A44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9808, &qword_21BE40588);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277D08238]) init];
  if (v10)
  {
    v11 = v10;
    (*(v3 + 16))(v5, a1, v2);
    v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v13 = swift_allocObject();
    (*(v3 + 32))(v13 + v12, v5, v2);
    aBlock[4] = sub_21BD21FB8;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21BD197D4;
    aBlock[3] = &block_descriptor_70_0;
    v14 = _Block_copy(aBlock);

    [v11 startRequestWithCompletionHandler_];
    _Block_release(v14);
  }

  else
  {
    sub_21BE2614C();
    v15 = sub_21BE26A2C();
    v16 = sub_21BE28FDC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21BB35000, v15, v16, "Unable to delete family because request does not exist", v17, 2u);
      MEMORY[0x21CF05C50](v17, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_21BD19D24(char a1, id a2)
{
  if (a2)
  {
    v2 = a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9808, &qword_21BE40588);
  return sub_21BE28D2C();
}

uint64_t type metadata accessor for DeleteMemberButtonView(uint64_t a1)
{
  result = qword_27CDBA550;
  if (!qword_27CDBA550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD19E2C(uint64_t a1)
{
  sub_21BB403C0();
  if (v1 <= 0x3F)
  {
    sub_21BBE66D8();
    if (v2 <= 0x3F)
    {
      sub_21BD19F70(319, &qword_27CDB8B80, MEMORY[0x277D4D7B0]);
      if (v3 <= 0x3F)
      {
        sub_21BD19F70(319, &qword_27CDB6118, MEMORY[0x277CDE530]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for RemoveMemberDeleteFamilyDataController();
          sub_21BD19F70(319, &qword_280BD6A40, MEMORY[0x277CDD848]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21BD19F70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21BE26E8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21BD19FE0()
{
  v1 = sub_21BE25FCC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  if (sub_21BE291EC() & 1) != 0 && ((*(v2 + 104))(v4, *MEMORY[0x277D07F40], v1), v6 = MEMORY[0x21CF01150](v4), (*(v2 + 8))(v4, v1), (v6))
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    sub_21BE2599C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_21BE32770;
    v10 = [v5 shortName];
    if (v10 || (v10 = [v5 fullName]) != 0)
    {
      v11 = v10;
      v12 = sub_21BE28A0C();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xE000000000000000;
    }

    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_21BBBEFE8();
    *(v9 + 32) = v12;
    *(v9 + 40) = v14;
    v15 = sub_21BE28A2C();
  }

  else
  {
    [v5 isOrganizer];
    type metadata accessor for ConfirmChildAgeViewModel();
    v16 = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass_];
    v15 = sub_21BE2599C();
  }

  return v15;
}

uint64_t sub_21BD1A308()
{
  v1 = sub_21BE25FCC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v0 + 16) isOrganizer])
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    v7 = sub_21BE2599C();

    return v7;
  }

  else
  {
    if (sub_21BE291EC())
    {
      (*(v2 + 104))(v4, *MEMORY[0x277D07F40], v1);
      MEMORY[0x21CF01150](v4);
      (*(v2 + 8))(v4, v1);
    }

    type metadata accessor for ConfirmChildAgeViewModel();
    v9 = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v11 = sub_21BE2599C();

    return v11;
  }
}

uint64_t sub_21BD1A5B4()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong stopFamilySharing];

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_21BE260FC();
    v6 = sub_21BE26A2C();
    v7 = sub_21BE28FDC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE5E680, &v11);
      _os_log_impl(&dword_21BB35000, v6, v7, "%s No delegate trying to stop sharing", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x21CF05C50](v9, -1, -1);
      MEMORY[0x21CF05C50](v8, -1, -1);
    }

    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_21BD1A79C()
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21BE32770;
  v4 = *(v0 + 16);
  v5 = [v4 shortName];
  if (v5 || (v5 = [v4 fullName]) != 0)
  {
    v6 = v5;
    v7 = sub_21BE28A0C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_21BBBEFE8();
  *(v3 + 32) = v7;
  *(v3 + 40) = v9;
  v10 = sub_21BE28A2C();

  return v10;
}

double sub_21BD1A920@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_21BE2599C();
  v6 = v5;

  *&v46 = v4;
  *(&v46 + 1) = v6;
  sub_21BB41FA4();
  v7 = sub_21BE27DBC();
  v9 = v8;
  v11 = v10;
  v23 = v12;
  sub_21BE2869C();
  sub_21BE2725C();
  LOBYTE(v4) = v11 & 1;
  v57 = v11 & 1;
  v13 = sub_21BE282AC();
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = 1;
  v31[0] = v7;
  v31[1] = v9;
  v32 = v4;
  v38 = v28;
  v39 = v29;
  v40 = v30;
  v34 = v24;
  v35 = v25;
  v36 = v26;
  v37 = v27;
  v33 = v23;
  v41 = KeyPath;
  v42 = v13;
  v43 = v15;
  v44 = sub_21BC0C5A0;
  v45 = v16;
  sub_21BD214A4(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA668, &qword_21BE439D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA678, &qword_21BE439E0);
  sub_21BD20CAC();
  sub_21BD20D64();
  sub_21BE2784C();
  v17 = v55;
  a1[8] = v54;
  a1[9] = v17;
  a1[10] = v56[0];
  *(a1 + 169) = *(v56 + 9);
  v18 = v51;
  a1[4] = v50;
  a1[5] = v18;
  v19 = v53;
  a1[6] = v52;
  a1[7] = v19;
  v20 = v47;
  *a1 = v46;
  a1[1] = v20;
  result = *&v48;
  v22 = v49;
  a1[2] = v48;
  a1[3] = v22;
  return result;
}

uint64_t sub_21BD1ABE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v3 = type metadata accessor for DeleteMemberButtonView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA640, &qword_21BE439C8);
  v7 = *(v6 - 8);
  v21 = v6;
  v22 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  sub_21BD20154(v1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_21BD201B8(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA688, &unk_21BE439E8);
  sub_21BD20E1C();
  sub_21BE2843C();
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_21BE2599C();
  v16 = v15;

  v28 = v14;
  v29 = v16;
  v17 = *(v2 + 8);
  v26 = *v2;
  v27 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v25 = v2;
  v24 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93D0, &qword_21BE439B0);
  sub_21BB3B038(&qword_27CDBA648, &qword_27CDBA640, &qword_21BE439C8, MEMORY[0x277CDF028]);
  sub_21BB41FA4();
  sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0, MEMORY[0x277CE14C0]);
  v18 = v21;
  sub_21BE27FDC();

  return (*(v22 + 8))(v9, v18);
}

__n128 sub_21BD1AFC4@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_21BE2599C();
  v6 = v5;

  *&v17 = v4;
  *(&v17 + 1) = v6;
  sub_21BB41FA4();
  v7 = sub_21BE27DBC();
  v9 = v8;
  LOBYTE(v6) = v10;
  v12 = v11;
  sub_21BE2869C();
  sub_21BE2725C();
  v13 = v6 & 1;
  v14 = sub_21BE2828C();
  KeyPath = swift_getKeyPath();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v13;
  *(a1 + 24) = v12;
  *(a1 + 96) = v21;
  *(a1 + 112) = v22;
  *(a1 + 128) = v23;
  *(a1 + 32) = v17;
  *(a1 + 48) = v18;
  result = v20;
  *(a1 + 64) = v19;
  *(a1 + 80) = v20;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v14;
  return result;
}

uint64_t sub_21BD1B148@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a1;
  v46 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8158, &unk_21BE3AE50);
  MEMORY[0x28223BE20](v2 - 8);
  v45 = &v39 - v3;
  v4 = type metadata accessor for DeleteMemberButtonView(0);
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v44 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v43 = &v39 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v42 = &v39 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();
  v18 = [v17 bundleForClass_];
  v19 = sub_21BE2599C();
  v21 = v20;

  v47 = v19;
  v48 = v21;
  sub_21BD20154(v41, &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v23 = swift_allocObject();
  sub_21BD201B8(&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  sub_21BB41FA4();
  sub_21BE2845C();
  v24 = [v17 bundleForClass_];
  v25 = sub_21BE2599C();
  v27 = v26;

  v47 = v25;
  v48 = v27;
  v28 = v45;
  sub_21BE26DEC();
  v29 = sub_21BE26DFC();
  (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  v30 = v42;
  sub_21BE2844C();
  v31 = *(v7 + 16);
  v32 = v43;
  v31(v43, v15, v6);
  v33 = v44;
  v34 = v30;
  v31(v44, v30, v6);
  v35 = v46;
  v31(v46, v32, v6);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93E0, &qword_21BE3F4A0);
  v31(&v35[*(v36 + 48)], v33, v6);
  v37 = *(v7 + 8);
  v37(v34, v6);
  v37(v15, v6);
  v37(v33, v6);
  return (v37)(v32, v6);
}

uint64_t sub_21BD1B61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_21BE26A4C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_21BE28D7C();
  v4[9] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x2822009F8](sub_21BD1B710, v7, v6);
}

uint64_t sub_21BD1B710()
{
  v1 = *(*(v0 + 40) + 16);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_21BD1B7BC;

  return sub_21BD210A0(v1);
}

uint64_t sub_21BD1B7BC(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 32) = a2;
  *(v4 + 16) = v2;
  *(v4 + 24) = a1;
  *(v4 + 104) = a2;

  v5 = *(v3 + 88);
  v6 = *(v3 + 80);

  return MEMORY[0x2822009F8](sub_21BD1B8E4, v6, v5);
}

uint64_t sub_21BD1B8E4()
{
  v1 = *(v0 + 104);

  if (v1)
  {
    v2 = *(v0 + 24);
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 48);
    sub_21BE2614C();
    sub_21BC51D50(v2, 0xD000000000000028, 0x800000021BE5E650);
    sub_21BCD70BC(v2, 1);
    (*(v4 + 8))(v3, v5);
  }

  else
  {
    sub_21BD1A5B4();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_21BD1B9C0()
{
  v1 = sub_21BE25FCC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  if (sub_21BE291EC())
  {
    (*(v2 + 104))(v4, *MEMORY[0x277D07F40], v1);
    v6 = MEMORY[0x21CF01150](v4);
    (*(v2 + 8))(v4, v1);
    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_21BE32770;
      v8 = [v5 shortName];
      if (!v8)
      {
        v8 = [v5 fullName];
        if (!v8)
        {
          v20 = 0;
          v22 = 0xE000000000000000;
          goto LABEL_18;
        }
      }

LABEL_17:
      v19 = v8;
      v20 = sub_21BE28A0C();
      v22 = v21;

LABEL_18:
      *(v7 + 56) = MEMORY[0x277D837D0];
      *(v7 + 64) = sub_21BBBEFE8();
      *(v7 + 32) = v20;
      *(v7 + 40) = v22;
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v24 = objc_opt_self();

      v25 = [v24 bundleForClass_];
      sub_21BE2599C();

      v17 = sub_21BE289DC();

      goto LABEL_19;
    }
  }

  if (![v5 isGuardian])
  {
    (*(v2 + 104))(v4, *MEMORY[0x277D07F40], v1);
    v18 = MEMORY[0x21CF01150](v4);
    (*(v2 + 8))(v4, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_21BE32770;
    v8 = [v5 shortName];
    if (v18)
    {
      if (!v8)
      {
        v8 = [v5 fullName];
        if (!v8)
        {
          v20 = 0;
          v22 = 0xE000000000000000;
          goto LABEL_18;
        }
      }
    }

    else if (!v8)
    {
      v8 = [v5 fullName];
      if (!v8)
      {
        v20 = 0;
        v22 = 0xE000000000000000;
        goto LABEL_18;
      }
    }

    goto LABEL_17;
  }

  type metadata accessor for ConfirmChildAgeViewModel();
  v9 = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21BE32770;
  v12 = [v5 shortName];
  if (v12 || (v12 = [v5 fullName]) != 0)
  {
    v13 = v12;
    v14 = sub_21BE28A0C();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_21BBBEFE8();
  *(v11 + 32) = v14;
  *(v11 + 40) = v16;
  v17 = sub_21BE28A2C();
LABEL_19:

  return v17;
}

uint64_t sub_21BD1BFE8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v165 = a1;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA560, &qword_21BE438E8);
  MEMORY[0x28223BE20](v164);
  v142 = &v133 - v3;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA568, &qword_21BE438F0);
  v4 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v137 = &v133 - v5;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA570, &qword_21BE438F8);
  v139 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v138 = &v133 - v6;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA578, &qword_21BE43900);
  MEMORY[0x28223BE20](v143);
  v144 = &v133 - v7;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA580, &qword_21BE43908);
  MEMORY[0x28223BE20](v158);
  v145 = &v133 - v8;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA588, &qword_21BE43910);
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v152 = &v133 - v9;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA590, &qword_21BE43918);
  v135 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v140 = &v133 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA598, &qword_21BE43920);
  v136 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v141 = &v133 - v12;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA5A0, &qword_21BE43928);
  MEMORY[0x28223BE20](v160);
  v162 = &v133 - v13;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA5A8, &qword_21BE43930);
  MEMORY[0x28223BE20](v155);
  v157 = &v133 - v14;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA5B0, &qword_21BE43938);
  MEMORY[0x28223BE20](v147);
  v149 = &v133 - v15;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA5B8, &qword_21BE43940);
  MEMORY[0x28223BE20](v156);
  v150 = &v133 - v16;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA5C0, &qword_21BE43948);
  MEMORY[0x28223BE20](v161);
  v159 = &v133 - v17;
  v18 = type metadata accessor for DeleteMemberButtonView(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA5C8, &qword_21BE43950);
  MEMORY[0x28223BE20](v148);
  v23 = &v133 - v22;
  v24 = *(v1 + 16);
  if ([v24 isChildAccount] && objc_msgSend(*(v2 + 24), sel_isOrganizer))
  {
    sub_21BD20154(v2, &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v26 = swift_allocObject();
    v27 = sub_21BD201B8(&v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
    MEMORY[0x28223BE20](v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C98, &unk_21BE3DAC8);
    sub_21BCA16C0();
    sub_21BE2843C();
    KeyPath = swift_getKeyPath();
    v29 = swift_allocObject();
    *(v29 + 16) = 1;
    v30 = &v23[*(v148 + 36)];
    *v30 = KeyPath;
    v30[1] = sub_21BC0C5A0;
    v30[2] = v29;
    sub_21BBA3854(v23, v149, &qword_27CDBA5C8, &qword_21BE43950);
    swift_storeEnumTagMultiPayload();
    sub_21BD20934();
    v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93D0, &qword_21BE439B0);
    v154 = v31;
    v32 = sub_21BB3B038(&qword_27CDBA628, &qword_27CDBA590, &qword_21BE43918, MEMORY[0x277CDF028]);
    v33 = sub_21BB41FA4();
    v34 = sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0, MEMORY[0x277CE14C0]);
    v166 = v151;
    v167 = MEMORY[0x277D837D0];
    v168 = v31;
    v169 = MEMORY[0x277CE0BD8];
    v170 = v32;
    v171 = v33;
    v172 = v34;
    v173 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    v35 = v150;
    sub_21BE2784C();
    sub_21BBA3854(v35, v157, &qword_27CDBA5B8, &qword_21BE43940);
    swift_storeEnumTagMultiPayload();
    sub_21BD207B0();
    sub_21BD20A18();
    v36 = v159;
    sub_21BE2784C();
    sub_21BB3A4CC(v35, &qword_27CDBA5B8, &qword_21BE43940);
    sub_21BBA3854(v36, v162, &qword_27CDBA5C0, &qword_21BE43948);
    swift_storeEnumTagMultiPayload();
    sub_21BD20724();
    v37 = sub_21BD20640();
    v166 = v164;
    v167 = MEMORY[0x277D837D0];
    v168 = v154;
    v169 = MEMORY[0x277CE0BD8];
    v170 = v37;
    v171 = v33;
    v172 = v34;
    v173 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    v38 = v165;
    sub_21BE2784C();
    sub_21BB3A4CC(v36, &qword_27CDBA5C0, &qword_21BE43948);
    sub_21BB3A4CC(v23, &qword_27CDBA5C8, &qword_21BE43950);
LABEL_29:
    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA5D0, &qword_21BE43958);
    return (*(*(v130 - 8) + 56))(v38, 0, 1, v130);
  }

  v134 = v4;
  v39 = *(v2 + 24);
  if (![v39 isOrganizer] || (objc_msgSend(v24, sel_isChildAccount) & 1) != 0 || (objc_msgSend(v24, sel_isMe) & 1) != 0)
  {
    if ([v24 isMe] && ((objc_msgSend(v24, sel_canRemoveSelf) & 1) == 0 && (sub_21BE291EC() & 1) != 0 || objc_msgSend(v24, sel_isChildAccount)))
    {
      sub_21BD20154(v2, &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      v40 = (*(v19 + 80) + 16) & ~*(v19 + 80);
      v41 = swift_allocObject();
      v42 = sub_21BD201B8(&v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v41 + v40);
      MEMORY[0x28223BE20](v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA650, &qword_21BE439D0);
      sub_21BD20C20();
      v43 = v152;
      sub_21BE2843C();
      (*(v153 + 16))(v144, v43, v154);
      swift_storeEnumTagMultiPayload();
      v44 = MEMORY[0x277CDF028];
      sub_21BB3B038(&qword_27CDBA638, &qword_27CDBA588, &qword_21BE43910, MEMORY[0x277CDF028]);
      v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA640, &qword_21BE439C8);
      v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93D0, &qword_21BE439B0);
      v47 = sub_21BB3B038(&qword_27CDBA648, &qword_27CDBA640, &qword_21BE439C8, v44);
      v48 = sub_21BB41FA4();
      v49 = sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0, MEMORY[0x277CE14C0]);
      v166 = v45;
      v167 = MEMORY[0x277D837D0];
      v168 = v46;
      v169 = MEMORY[0x277CE0BD8];
      v170 = v47;
      v171 = v48;
      v172 = v49;
      v173 = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      v50 = v145;
      sub_21BE2784C();
      sub_21BBA3854(v50, v157, &qword_27CDBA580, &qword_21BE43908);
      swift_storeEnumTagMultiPayload();
      sub_21BD207B0();
      sub_21BD20A18();
      v51 = v159;
      sub_21BE2784C();
      sub_21BB3A4CC(v50, &qword_27CDBA580, &qword_21BE43908);
      sub_21BBA3854(v51, v162, &qword_27CDBA5C0, &qword_21BE43948);
      swift_storeEnumTagMultiPayload();
      sub_21BD20724();
      v52 = sub_21BD20640();
      v166 = v164;
      v167 = MEMORY[0x277D837D0];
      v168 = v46;
      v169 = MEMORY[0x277CE0BD8];
      v170 = v52;
      v171 = v48;
      v172 = v49;
      v173 = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      v38 = v165;
      sub_21BE2784C();
      sub_21BB3A4CC(v51, &qword_27CDBA5C0, &qword_21BE43948);
      (*(v153 + 8))(v152, v154);
      goto LABEL_29;
    }

    if ([v24 canRemoveSelf] && objc_msgSend(v24, sel_isMe) && (objc_msgSend(v39, sel_isOrganizer) & 1) == 0)
    {
      v120 = v138;
      sub_21BD1ABE8(v138);
      (*(v139 + 16))(v144, v120, v146);
      swift_storeEnumTagMultiPayload();
      v121 = MEMORY[0x277CDF028];
      sub_21BB3B038(&qword_27CDBA638, &qword_27CDBA588, &qword_21BE43910, MEMORY[0x277CDF028]);
      v122 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA640, &qword_21BE439C8);
      v123 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93D0, &qword_21BE439B0);
      v153 = v123;
      v124 = sub_21BB3B038(&qword_27CDBA648, &qword_27CDBA640, &qword_21BE439C8, v121);
      v125 = sub_21BB41FA4();
      v126 = sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0, MEMORY[0x277CE14C0]);
      v166 = v122;
      v167 = MEMORY[0x277D837D0];
      v168 = v123;
      v169 = MEMORY[0x277CE0BD8];
      v170 = v124;
      v171 = v125;
      v172 = v126;
      v173 = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      v127 = v145;
      sub_21BE2784C();
      sub_21BBA3854(v127, v157, &qword_27CDBA580, &qword_21BE43908);
      swift_storeEnumTagMultiPayload();
      sub_21BD207B0();
      sub_21BD20A18();
      v128 = v159;
      sub_21BE2784C();
      sub_21BB3A4CC(v127, &qword_27CDBA580, &qword_21BE43908);
      sub_21BBA3854(v128, v162, &qword_27CDBA5C0, &qword_21BE43948);
      swift_storeEnumTagMultiPayload();
      sub_21BD20724();
      v129 = sub_21BD20640();
      v166 = v164;
      v167 = MEMORY[0x277D837D0];
      v168 = v153;
      v169 = MEMORY[0x277CE0BD8];
      v170 = v129;
      v171 = v125;
      v172 = v126;
      v173 = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      v38 = v165;
      sub_21BE2784C();
      sub_21BB3A4CC(v128, &qword_27CDBA5C0, &qword_21BE43948);
      (*(v139 + 8))(v138, v146);
      goto LABEL_29;
    }

    if ([v24 isOrganizer] && objc_msgSend(v24, sel_isMe))
    {
      sub_21BD20154(v2, &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      v53 = (*(v19 + 80) + 16) & ~*(v19 + 80);
      v54 = swift_allocObject();
      v55 = sub_21BD201B8(v21, v54 + v53);
      MEMORY[0x28223BE20](v55);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA5D8, &qword_21BE43968);
      sub_21BD20224();
      v56 = v142;
      sub_21BE2843C();
      v57 = *(v2 + 40);
      v58 = swift_getKeyPath();
      v59 = swift_allocObject();
      *(v59 + 16) = v57;
      v60 = &v56[*(v164 + 36)];
      *v60 = v58;
      v60[1] = sub_21BC0AE98;
      v60[2] = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_21BE32770;
      v62 = [v24 shortName];
      if (v62 || (v62 = [v24 fullName]) != 0)
      {
        v63 = v62;
        v64 = sub_21BE28A0C();
        v66 = v65;
      }

      else
      {
        v64 = 0;
        v66 = 0xE000000000000000;
      }

      *(v61 + 56) = MEMORY[0x277D837D0];
      *(v61 + 64) = sub_21BBBEFE8();
      *(v61 + 32) = v64;
      *(v61 + 40) = v66;
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v68 = objc_opt_self();

      v69 = [v68 bundleForClass_];
      sub_21BE2599C();

      v70 = sub_21BE289DC();
      v72 = v71;

      v176 = v70;
      v177 = v72;
      v73 = *(v2 + 8);
      v174 = *v2;
      v175 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
      v74 = sub_21BE2841C();
      v159 = &v133;
      LODWORD(v158) = v168;
      v75 = MEMORY[0x28223BE20](v74);
      MEMORY[0x28223BE20](v75);
      v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93D0, &qword_21BE439B0);
      v76 = sub_21BD20640();
      v77 = sub_21BB41FA4();
      v131 = sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0, MEMORY[0x277CE14C0]);
      v78 = v164;
      v79 = v137;
      v80 = v142;
      sub_21BE27FDC();

      sub_21BB3A4CC(v80, &qword_27CDBA560, &qword_21BE438E8);
      v81 = v134;
      v82 = v163;
      (*(v134 + 16))(v162, v79, v163);
      swift_storeEnumTagMultiPayload();
      sub_21BD20724();
      v166 = v78;
      v167 = MEMORY[0x277D837D0];
      v168 = v157;
      v169 = MEMORY[0x277CE0BD8];
      v170 = v76;
      v171 = v77;
      v172 = v131;
      v173 = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      v38 = v165;
      sub_21BE2784C();
      (*(v81 + 8))(v79, v82);
      goto LABEL_29;
    }

    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA5D0, &qword_21BE43958);
    v84 = *(*(v83 - 8) + 56);
    v85 = v83;
    v86 = v165;

    return v84(v86, 1, 1, v85);
  }

  else
  {
    v154 = v11;
    sub_21BD20154(v2, &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    v88 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v89 = swift_allocObject();
    v90 = sub_21BD201B8(v21, v89 + v88);
    MEMORY[0x28223BE20](v90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C98, &unk_21BE3DAC8);
    sub_21BCA16C0();
    sub_21BE2843C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_21BE32770;
    v92 = [v24 shortName];
    if (v92 || (v92 = [v24 fullName]) != 0)
    {
      v93 = v92;
      v94 = sub_21BE28A0C();
      v96 = v95;
    }

    else
    {
      v94 = 0;
      v96 = 0xE000000000000000;
    }

    *(v91 + 56) = MEMORY[0x277D837D0];
    *(v91 + 64) = sub_21BBBEFE8();
    *(v91 + 32) = v94;
    *(v91 + 40) = v96;
    type metadata accessor for ConfirmChildAgeViewModel();
    v97 = swift_getObjCClassFromMetadata();
    v98 = objc_opt_self();

    v99 = [v98 bundleForClass_];
    sub_21BE2599C();

    v100 = sub_21BE289DC();
    v102 = v101;
    v153 = v101;

    v176 = v100;
    v177 = v102;
    v103 = *(v2 + 8);
    v174 = *v2;
    v175 = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    v104 = sub_21BE2841C();
    v152 = &v133;
    v144 = v166;
    LODWORD(v143) = v168;
    v105 = MEMORY[0x28223BE20](v104);
    MEMORY[0x28223BE20](v105);
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93D0, &qword_21BE439B0);
    v142 = sub_21BB3B038(&qword_27CDBA628, &qword_27CDBA590, &qword_21BE43918, MEMORY[0x277CDF028]);
    v107 = sub_21BB41FA4();
    v132 = sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0, MEMORY[0x277CE14C0]);
    v146 = v132;
    v108 = v106;
    v145 = v106;
    v109 = v151;
    v110 = v141;
    v111 = v140;
    sub_21BE27FDC();

    (*(v135 + 8))(v111, v109);
    v112 = v136;
    v113 = v154;
    (*(v136 + 16))(v149, v110, v154);
    swift_storeEnumTagMultiPayload();
    sub_21BD20934();
    v166 = v109;
    v167 = MEMORY[0x277D837D0];
    v168 = v108;
    v169 = MEMORY[0x277CE0BD8];
    v170 = v142;
    v171 = v107;
    v172 = v132;
    v114 = v107;
    v173 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    v115 = v150;
    sub_21BE2784C();
    sub_21BBA3854(v115, v157, &qword_27CDBA5B8, &qword_21BE43940);
    swift_storeEnumTagMultiPayload();
    sub_21BD207B0();
    sub_21BD20A18();
    v116 = v159;
    sub_21BE2784C();
    sub_21BB3A4CC(v115, &qword_27CDBA5B8, &qword_21BE43940);
    sub_21BBA3854(v116, v162, &qword_27CDBA5C0, &qword_21BE43948);
    swift_storeEnumTagMultiPayload();
    sub_21BD20724();
    v117 = sub_21BD20640();
    v166 = v164;
    v167 = MEMORY[0x277D837D0];
    v168 = v145;
    v169 = MEMORY[0x277CE0BD8];
    v170 = v117;
    v171 = v114;
    v172 = v146;
    v173 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    v118 = v165;
    sub_21BE2784C();
    sub_21BB3A4CC(v116, &qword_27CDBA5C0, &qword_21BE43948);
    (*(v112 + 8))(v141, v113);
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA5D0, &qword_21BE43958);
    return (*(*(v119 - 8) + 56))(v118, 0, 1, v119);
  }
}

__n128 sub_21BD1DEA4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21BE32770;
  v7 = *(a1 + 16);
  v8 = [v7 shortName];
  if (v8 || (v8 = [v7 fullName]) != 0)
  {
    v9 = v8;
    v10 = sub_21BE28A0C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_21BBBEFE8();
  *(v6 + 32) = v10;
  *(v6 + 40) = v12;
  v13 = sub_21BE28A2C();
  v15 = v14;

  *&v28 = v13;
  *(&v28 + 1) = v15;
  sub_21BB41FA4();
  v16 = sub_21BE27DBC();
  v18 = v17;
  LOBYTE(v15) = v19;
  sub_21BE282AC();
  v20 = sub_21BE27D4C();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_21BBC7C7C(v16, v18, v15 & 1);

  sub_21BE2869C();
  sub_21BE2725C();
  *a2 = v20;
  *(a2 + 8) = v22;
  *(a2 + 16) = v24 & 1;
  *(a2 + 24) = v26;
  *(a2 + 96) = v32;
  *(a2 + 112) = v33;
  *(a2 + 128) = v34;
  *(a2 + 32) = v28;
  *(a2 + 48) = v29;
  result = v31;
  *(a2 + 64) = v30;
  *(a2 + 80) = v31;
  return result;
}

__n128 sub_21BD1E130@<Q0>(uint64_t a1@<X8>)
{
  *&v16 = sub_21BD1A79C();
  *(&v16 + 1) = v2;
  sub_21BB41FA4();
  v3 = sub_21BE27DBC();
  v5 = v4;
  v7 = v6;
  sub_21BE2828C();
  v8 = sub_21BE27D4C();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_21BBC7C7C(v3, v5, v7 & 1);

  sub_21BE2869C();
  sub_21BE2725C();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 96) = v20;
  *(a1 + 112) = v21;
  *(a1 + 128) = v22;
  *(a1 + 32) = v16;
  *(a1 + 48) = v17;
  result = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v19;
  return result;
}

uint64_t sub_21BD1E27C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v58 = a2;
  v3 = type metadata accessor for DeleteMemberButtonView(0);
  v50[0] = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v50[1] = v4;
  v51 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8158, &unk_21BE3AE50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v50 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v57 = *(v53 - 8);
  v8 = MEMORY[0x28223BE20](v53);
  v56 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v55 = v50 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v54 = v50 - v13;
  MEMORY[0x28223BE20](v12);
  v52 = v50 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21BE32770;
  v16 = a1;
  v17 = *(a1 + 16);
  v18 = [v17 shortName];
  if (v18 || (v18 = [v17 fullName]) != 0)
  {
    v19 = v18;
    v20 = sub_21BE28A0C();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_21BBBEFE8();
  *(v15 + 32) = v20;
  *(v15 + 40) = v22;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = objc_opt_self();

  v25 = [v24 &selRef:ObjCClassFromMetadata :? launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
  sub_21BE2599C();

  v26 = sub_21BE289DC();
  v28 = v27;

  v59 = v26;
  v60 = v28;
  sub_21BE26DDC();
  v29 = sub_21BE26DFC();
  v30 = *(*(v29 - 8) + 56);
  v30(v7, 0, 1, v29);
  v31 = v16;
  v32 = v51;
  sub_21BD20154(v31, v51);
  v33 = (*(v50[0] + 80) + 16) & ~*(v50[0] + 80);
  v34 = swift_allocObject();
  sub_21BD201B8(v32, v34 + v33);
  sub_21BB41FA4();
  v35 = v52;
  sub_21BE2844C();
  v36 = [v24 bundleForClass_];
  v37 = sub_21BE2599C();
  v39 = v38;

  v59 = v37;
  v60 = v39;
  sub_21BE26DEC();
  v30(v7, 0, 1, v29);
  v40 = v54;
  sub_21BE2844C();
  v41 = v57;
  v42 = *(v57 + 16);
  v43 = v55;
  v44 = v53;
  v42(v55, v35, v53);
  v45 = v56;
  v42(v56, v40, v44);
  v46 = v58;
  v42(v58, v43, v44);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93E0, &qword_21BE3F4A0);
  v42(&v46[*(v47 + 48)], v45, v44);
  v48 = *(v41 + 8);
  v48(v40, v44);
  v48(v35, v44);
  v48(v45, v44);
  return (v48)(v43, v44);
}

uint64_t sub_21BD1E87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  v5 = sub_21BE26A4C();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v6 = sub_21BE27B0C();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v7 = sub_21BE288BC();
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();
  sub_21BE28D7C();
  v4[27] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v4[28] = v9;
  v4[29] = v8;

  return MEMORY[0x2822009F8](sub_21BD1EA28, v9, v8);
}

uint64_t sub_21BD1EA28()
{
  v1 = *(*(v0 + 136) + 16);
  v2 = swift_task_alloc();
  *(v0 + 240) = v2;
  *v2 = v0;
  v2[1] = sub_21BD1EAD4;

  return sub_21BD210A0(v1);
}

uint64_t sub_21BD1EAD4(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 248) = a1;
  *(v4 + 256) = a2;

  v5 = *(v3 + 232);
  v6 = *(v3 + 224);

  return MEMORY[0x2822009F8](sub_21BD1EC00, v6, v5);
}

uint64_t sub_21BD1EC00()
{
  v32 = v0;
  v1 = *(v0 + 256);

  if (v1)
  {
    v2 = *(v0 + 248);
    sub_21BE2614C();
    v3 = v2;
    v4 = sub_21BE26A2C();
    v5 = sub_21BE28FDC();
    sub_21BCD70BC(v2, 1);
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 248);
    v9 = *(v0 + 152);
    v8 = *(v0 + 160);
    v10 = *(v0 + 144);
    if (v6)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v30 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_21BE29A5C();
      v15 = sub_21BB3D81C(v13, v14, &v30);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_21BB35000, v4, v5, "Unable to remove family member %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x21CF05C50](v12, -1, -1);
      MEMORY[0x21CF05C50](v11, -1, -1);

      sub_21BCD70BC(v7, 1);
      (*(v9 + 8))(v8, v10);
    }

    else
    {

      sub_21BCD70BC(v7, 1);
      (*(v9 + 8))(v8, v10);
    }
  }

  else
  {
    v17 = *(v0 + 200);
    v16 = *(v0 + 208);
    v18 = *(v0 + 192);
    type metadata accessor for DeleteMemberButtonView(0);
    sub_21BD203B8(&qword_27CDB8B90, &qword_21BE43960, MEMORY[0x277D4D7B0], v16);
    v19 = sub_21BE2887C();
    v20 = *(v17 + 8);
    v20(v16, v18);
    if (v19)
    {
      v21 = *(v0 + 208);
      v22 = *(v0 + 192);
      sub_21BD203B8(&qword_27CDB8B90, &qword_21BE43960, MEMORY[0x277D4D7B0], v21);
      sub_21BE288AC();
      v20(v21, v22);
    }

    else
    {
      v24 = *(v0 + 176);
      v23 = *(v0 + 184);
      v25 = *(v0 + 168);
      sub_21BD203B8(&qword_27CDB6138, &qword_21BE33F20, MEMORY[0x277CDE530], v23);
      sub_21BE27AFC();
      (*(v24 + 8))(v23, v25);
    }

    if (qword_27CDB4F68 != -1)
    {
      swift_once();
    }

    v31 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21BE32770;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x800000021BE5AE40;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 80) = &protocol witness table for Bool;
    *(inited + 48) = 1;

    v27 = sub_21BBB5E60(inited);
    swift_setDeallocating();
    sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
    sub_21BCA55DC(&v31, v27);
  }

  v28 = *(v0 + 8);

  return v28();
}

double sub_21BD1F09C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_21BE2599C();
  v8 = v7;

  *&v45 = v6;
  *(&v45 + 1) = v8;
  sub_21BB41FA4();
  v9 = sub_21BE27DBC();
  v11 = v10;
  v13 = v12;
  if (*(a1 + 40) == 1)
  {
    sub_21BE282AC();
  }

  else
  {
    sub_21BE2828C();
  }

  v14 = sub_21BE27D4C();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_21BBC7C7C(v9, v11, v13 & 1);

  sub_21BE2869C();
  sub_21BE2725C();
  v54 = v18 & 1;
  v33[0] = v14;
  v33[1] = v16;
  v34 = v18 & 1;
  v35 = v20;
  v40 = v30;
  v41 = v31;
  v42 = v32;
  v36 = v26;
  v37 = v27;
  v39 = v29;
  v38 = v28;
  KeyPath = swift_getKeyPath();
  v44 = 1;
  sub_21BD2203C(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA5F0, &unk_21BE43970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D38, &qword_21BE33648);
  sub_21BD202B0();
  sub_21BBC7DA8();
  sub_21BE2784C();
  v21 = v52;
  a2[6] = v51;
  a2[7] = v21;
  a2[8] = v53[0];
  *(a2 + 138) = *(v53 + 10);
  v22 = v48;
  a2[2] = v47;
  a2[3] = v22;
  v23 = v50;
  a2[4] = v49;
  a2[5] = v23;
  result = *&v45;
  v25 = v46;
  *a2 = v45;
  a2[1] = v25;
  return result;
}

uint64_t sub_21BD1F3F8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v58 = a2;
  v3 = type metadata accessor for DeleteMemberButtonView(0);
  v50[0] = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v50[1] = v4;
  v51 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8158, &unk_21BE3AE50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v50 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v57 = *(v53 - 8);
  v8 = MEMORY[0x28223BE20](v53);
  v56 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v55 = v50 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v54 = v50 - v13;
  MEMORY[0x28223BE20](v12);
  v52 = v50 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21BE32770;
  v16 = a1;
  v17 = *(a1 + 16);
  v18 = [v17 shortName];
  if (v18 || (v18 = [v17 fullName]) != 0)
  {
    v19 = v18;
    v20 = sub_21BE28A0C();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_21BBBEFE8();
  *(v15 + 32) = v20;
  *(v15 + 40) = v22;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = objc_opt_self();

  v25 = [v24 &selRef:ObjCClassFromMetadata :? launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
  sub_21BE2599C();

  v26 = sub_21BE289DC();
  v28 = v27;

  v59 = v26;
  v60 = v28;
  sub_21BE26DDC();
  v29 = sub_21BE26DFC();
  v30 = *(*(v29 - 8) + 56);
  v30(v7, 0, 1, v29);
  v31 = v16;
  v32 = v51;
  sub_21BD20154(v31, v51);
  v33 = (*(v50[0] + 80) + 16) & ~*(v50[0] + 80);
  v34 = swift_allocObject();
  sub_21BD201B8(v32, v34 + v33);
  sub_21BB41FA4();
  v35 = v52;
  sub_21BE2844C();
  v36 = [v24 bundleForClass_];
  v37 = sub_21BE2599C();
  v39 = v38;

  v59 = v37;
  v60 = v39;
  sub_21BE26DEC();
  v30(v7, 0, 1, v29);
  v40 = v54;
  sub_21BE2844C();
  v41 = v57;
  v42 = *(v57 + 16);
  v43 = v55;
  v44 = v53;
  v42(v55, v35, v53);
  v45 = v56;
  v42(v56, v40, v44);
  v46 = v58;
  v42(v58, v43, v44);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93E0, &qword_21BE3F4A0);
  v42(&v46[*(v47 + 48)], v45, v44);
  v48 = *(v41 + 8);
  v48(v40, v44);
  v48(v35, v44);
  v48(v45, v44);
  return (v48)(v43, v44);
}

double sub_21BD1F9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DeleteMemberButtonView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_21BE28DAC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_21BD20154(a1, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21BE28D7C();
  v12 = sub_21BE28D6C();
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_21BD201B8(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_21BBA932C(0, 0, v10, a3, v14);

  return result;
}

uint64_t sub_21BD1FBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  v5 = sub_21BE26A4C();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = sub_21BE28D7C();
  v4[22] = sub_21BE28D6C();
  v6 = swift_task_alloc();
  v4[23] = v6;
  *v6 = v4;
  v6[1] = sub_21BD1FCC4;

  return sub_21BD21B6C();
}

uint64_t sub_21BD1FCC4(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = a2;

  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD1FE0C, v5, v4);
}

uint64_t sub_21BD1FE0C()
{
  v22 = v0;
  v1 = *(v0 + 200);

  if (v1)
  {
    v2 = *(v0 + 192);
    sub_21BE2614C();
    v3 = v2;
    v4 = sub_21BE26A2C();
    v5 = sub_21BE28FDC();
    sub_21BCD70BC(v2, 1);
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 192);
    v9 = *(v0 + 152);
    v8 = *(v0 + 160);
    v10 = *(v0 + 144);
    if (v6)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_21BE29A5C();
      v15 = sub_21BB3D81C(v13, v14, &v20);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_21BB35000, v4, v5, "Unable to delete family %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x21CF05C50](v12, -1, -1);
      MEMORY[0x21CF05C50](v11, -1, -1);

      sub_21BCD70BC(v7, 1);
      (*(v9 + 8))(v8, v10);
    }

    else
    {

      sub_21BCD70BC(v7, 1);
      (*(v9 + 8))(v8, v10);
    }
  }

  else
  {
    sub_21BD1A5B4();
    if (qword_27CDB4F68 != -1)
    {
      swift_once();
    }

    v21 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21BE32770;
    *(inited + 32) = 0xD00000000000001DLL;
    *(inited + 40) = 0x800000021BE5AE20;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 80) = &protocol witness table for Bool;
    *(inited + 48) = 1;

    v17 = sub_21BBB5E60(inited);
    swift_setDeallocating();
    sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
    sub_21BCA55DC(&v21, v17);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_21BD200F0@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  a1();
  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_21BD20154(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeleteMemberButtonView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD201B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeleteMemberButtonView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BD20224()
{
  result = qword_27CDBA5E0;
  if (!qword_27CDBA5E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA5D8, &qword_21BE43968);
    v4[0] = sub_21BD202B0();
    v4[1] = sub_21BBC7DA8();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBA5E0);
  }

  return result;
}

unint64_t sub_21BD202B0()
{
  result = qword_27CDBA5E8;
  if (!qword_27CDBA5E8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA5F0, &unk_21BE43970);
    v4[0] = sub_21BCA16C0();
    v4[1] = sub_21BB3B038(&qword_27CDB5D40, &qword_27CDB5D48, &unk_21BE33650, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA5E8);
  }

  return result;
}

uint64_t sub_21BD203B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_21BE2754C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  sub_21BBA3854(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_21BE28FEC();
    v19 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

unint64_t sub_21BD20640()
{
  result = qword_27CDBA5F8;
  if (!qword_27CDBA5F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA560, &qword_21BE438E8);
    v4[0] = sub_21BB3B038(&qword_27CDBA600, &qword_27CDBA608, &unk_21BE439B8, MEMORY[0x277CDF028]);
    v4[1] = sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA5F8);
  }

  return result;
}

unint64_t sub_21BD20724()
{
  result = qword_27CDBA610;
  if (!qword_27CDBA610)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA5C0, &qword_21BE43948);
    v4[0] = sub_21BD207B0();
    v4[1] = sub_21BD20A18();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBA610);
  }

  return result;
}

unint64_t sub_21BD207B0()
{
  result = qword_27CDBA618;
  if (!qword_27CDBA618)
  {
    v10[18] = v0;
    v10[19] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA5B8, &qword_21BE43940);
    v4 = sub_21BD20934();
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA590, &qword_21BE43918);
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93D0, &qword_21BE439B0);
    v7 = sub_21BB3B038(&qword_27CDBA628, &qword_27CDBA590, &qword_21BE43918, MEMORY[0x277CDF028]);
    v8 = sub_21BB41FA4();
    v9 = sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0, MEMORY[0x277CE14C0]);
    v10[2] = v5;
    v10[3] = MEMORY[0x277D837D0];
    v10[4] = v6;
    v10[5] = MEMORY[0x277CE0BD8];
    v10[6] = v7;
    v10[7] = v8;
    v10[8] = v9;
    v10[9] = MEMORY[0x277CE0BC8];
    v10[0] = v4;
    v10[1] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v10);
    atomic_store(result, &qword_27CDBA618);
  }

  return result;
}

unint64_t sub_21BD20934()
{
  result = qword_27CDBA620;
  if (!qword_27CDBA620)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA5C8, &qword_21BE43950);
    v4[0] = sub_21BB3B038(&qword_27CDBA628, &qword_27CDBA590, &qword_21BE43918, MEMORY[0x277CDF028]);
    v4[1] = sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA620);
  }

  return result;
}

unint64_t sub_21BD20A18()
{
  result = qword_27CDBA630;
  if (!qword_27CDBA630)
  {
    v11[20] = v0;
    v11[21] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA580, &qword_21BE43908);
    v4 = MEMORY[0x277CDF028];
    v5 = sub_21BB3B038(&qword_27CDBA638, &qword_27CDBA588, &qword_21BE43910, MEMORY[0x277CDF028]);
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA640, &qword_21BE439C8);
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93D0, &qword_21BE439B0);
    v8 = sub_21BB3B038(&qword_27CDBA648, &qword_27CDBA640, &qword_21BE439C8, v4);
    v9 = sub_21BB41FA4();
    v10 = sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0, MEMORY[0x277CE14C0]);
    v11[2] = v6;
    v11[3] = MEMORY[0x277D837D0];
    v11[4] = v7;
    v11[5] = MEMORY[0x277CE0BD8];
    v11[6] = v8;
    v11[7] = v9;
    v11[8] = v10;
    v11[9] = MEMORY[0x277CE0BC8];
    v11[0] = v5;
    v11[1] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v11);
    atomic_store(result, &qword_27CDBA630);
  }

  return result;
}

unint64_t sub_21BD20C20()
{
  result = qword_27CDBA658;
  if (!qword_27CDBA658)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA650, &qword_21BE439D0);
    v4[0] = sub_21BD20CAC();
    v4[1] = sub_21BD20D64();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBA658);
  }

  return result;
}

unint64_t sub_21BD20CAC()
{
  result = qword_27CDBA660;
  if (!qword_27CDBA660)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA668, &qword_21BE439D8);
    v4 = sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850, MEMORY[0x277CE08A0]);
    v5[0] = MEMORY[0x277CE0BC8];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v5);
    atomic_store(result, &qword_27CDBA660);
  }

  return result;
}

unint64_t sub_21BD20D64()
{
  result = qword_27CDBA670;
  if (!qword_27CDBA670)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA678, &qword_21BE439E0);
    v4[0] = sub_21BD20E1C();
    v4[1] = sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA670);
  }

  return result;
}

unint64_t sub_21BD20E1C()
{
  result = qword_27CDBA680;
  if (!qword_27CDBA680)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA688, &unk_21BE439E8);
    v4[0] = sub_21BCA16C0();
    v4[1] = sub_21BB3B038(&qword_27CDB7970, &qword_27CDBC520, &qword_21BE38BA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA680);
  }

  return result;
}

uint64_t sub_21BD20FB0(uint64_t a1)
{
  v4 = *(type metadata accessor for DeleteMemberButtonView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBB7EB8;

  return sub_21BD1E87C(a1, v6, v7, v1 + v5);
}

uint64_t sub_21BD210A0(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_21BE26A4C();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD21160, 0, 0);
}

uint64_t sub_21BD21160(uint64_t a1)
{
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "RemoveMemberDeleteFamilyDataController removeMember", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v6 = v1[6];
  v5 = v1[7];
  v8 = v1[4];
  v7 = v1[5];

  (*(v6 + 8))(v5, v7);
  [v8 isMe];
  v9 = swift_task_alloc();
  v1[8] = v9;
  *(v9 + 16) = v8;
  v10 = swift_task_alloc();
  v1[9] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9800, &qword_21BE40580);
  *v10 = v1;
  v10[1] = sub_21BD21314;

  return MEMORY[0x2822007B8](v1 + 2, 0, 0, 0xD000000000000015, 0x800000021BE5E590, sub_21BD2149C, v9, v11);
}

uint64_t sub_21BD21314()
{

  return MEMORY[0x2822009F8](sub_21BD2142C, 0, 0);
}

uint64_t sub_21BD2142C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_21BD2150C(uint64_t a1)
{
  v4 = *(type metadata accessor for DeleteMemberButtonView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBA6A64;

  return sub_21BD1B61C(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroyTm_18()
{
  v1 = type metadata accessor for DeleteMemberButtonView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  MEMORY[0x21CF05D90](v2 + 32);
  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21BE288BC();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21BE27B0C();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21BE26F5C();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_29Tm()
{
  v1 = type metadata accessor for DeleteMemberButtonView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  MEMORY[0x21CF05D90](v0 + v2 + 32);
  v4 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21BE288BC();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21BE27B0C();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21BE26F5C();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BD21A7C(uint64_t a1)
{
  v4 = *(type metadata accessor for DeleteMemberButtonView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBB7EB8;

  return sub_21BD1FBAC(a1, v6, v7, v1 + v5);
}

uint64_t sub_21BD21B6C()
{
  v1 = sub_21BE26A4C();
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD21C28, 0, 0);
}

uint64_t sub_21BD21C28(uint64_t a1)
{
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "RemoveMemberDeleteFamilyDataController deleteFamily", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v6 = v1[5];
  v5 = v1[6];
  v7 = v1[4];

  (*(v6 + 8))(v5, v7);
  v8 = swift_task_alloc();
  v1[7] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9800, &qword_21BE40580);
  *v8 = v1;
  v8[1] = sub_21BD21DB8;

  return MEMORY[0x2822007B8](v1 + 2, 0, 0, 0x61466574656C6564, 0xEE002928796C696DLL, sub_21BD19A44, 0, v9);
}

uint64_t sub_21BD21DB8()
{

  return MEMORY[0x2822009F8](sub_21BD21EB4, 0, 0);
}

uint64_t sub_21BD21EB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t objectdestroy_35Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9808, &qword_21BE40588);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_21BD22044()
{
  result = qword_27CDBA690;
  if (!qword_27CDBA690)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA698, &unk_21BE43AA0);
    v4[0] = sub_21BD220C8();
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27CDBA690);
  }

  return result;
}

unint64_t sub_21BD220C8()
{
  result = qword_27CDBA6A0;
  if (!qword_27CDBA6A0)
  {
    v10[18] = v0;
    v10[19] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA5D0, &qword_21BE43958);
    v4 = sub_21BD20724();
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA560, &qword_21BE438E8);
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93D0, &qword_21BE439B0);
    v7 = sub_21BD20640();
    v8 = sub_21BB41FA4();
    v9 = sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0, MEMORY[0x277CE14C0]);
    v10[2] = v5;
    v10[3] = MEMORY[0x277D837D0];
    v10[4] = v6;
    v10[5] = MEMORY[0x277CE0BD8];
    v10[6] = v7;
    v10[7] = v8;
    v10[8] = v9;
    v10[9] = MEMORY[0x277CE0BC8];
    v10[0] = v4;
    v10[1] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v10);
    atomic_store(result, &qword_27CDBA6A0);
  }

  return result;
}

FamilyCircleUI::AppleCardFlowIdentifier_optional __swiftcall AppleCardFlowIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21BE2980C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AppleCardFlowIdentifier.rawValue.getter()
{
  v1 = 0x7261436572616873;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_21BD22328()
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BD223FC(uint64_t a1)
{
  sub_21BE28ABC();
}

uint64_t sub_21BD224BC(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

void sub_21BD22598(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x7261436572616873;
  v4 = 0x800000021BE55690;
  v5 = 0xD000000000000017;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000015;
    v2 = 0x800000021BE55670;
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

FamilyCircleUI::AppleCardFlowContext_optional __swiftcall AppleCardFlowContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21BE2980C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AppleCardFlowContext.rawValue.getter()
{
  v1 = 0x6553796C696D6166;
  v2 = 0x726143656C707061;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_21BD22728()
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BD22808(uint64_t a1)
{
  sub_21BE28ABC();
}

uint64_t sub_21BD228D4(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

void sub_21BD229BC(unint64_t *a1@<X8>)
{
  v2 = 0xEE0073676E697474;
  v3 = 0x6553796C696D6166;
  v4 = 0xEF796C696D614664;
  v5 = 0x726143656C707061;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x800000021BE556C0;
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

FamilyCircleUI::AppleCashFlowIdentifier_optional __swiftcall AppleCashFlowIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21BE2980C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AppleCashFlowIdentifier.rawValue.getter()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7070417075746573;
  }
}

uint64_t sub_21BD22B20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000014;
  v4 = 0x800000021BE55700;
  v5 = 0xE700000000000000;
  if (v2 == 1)
  {
    v5 = 0x800000021BE55700;
  }

  else
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x7070417075746573;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEE0068736143656CLL;
  }

  v8 = 0xD000000000000014;
  if (*a2 != 1)
  {
    v8 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7070417075746573;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEE0068736143656CLL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21BE2995C();
  }

  return v11 & 1;
}

uint64_t sub_21BD22C24()
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BD22CD8(uint64_t a1)
{
  sub_21BE28ABC();
}

uint64_t sub_21BD22D78(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

void sub_21BD22E34(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0068736143656CLL;
  v4 = 0x800000021BE55700;
  v5 = 0xD000000000000014;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7070417075746573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

FamilyCircleUI::AppleCashFlowContext_optional __swiftcall AppleCashFlowContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21BE2980C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AppleCashFlowContext.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_21BD22F68(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000010;
  v3 = *a1;
  v4 = 0xE700000000000000;
  if (v3 == 1)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v3 == 1)
  {
    v4 = 0x800000021BE55740;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x800000021BE55720;
  }

  if (*a2 == 1)
  {
    v8 = 0x800000021BE55740;
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0x800000021BE55720;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21BE2995C();
  }

  return v11 & 1;
}

uint64_t sub_21BD23048()
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BD230F8(uint64_t a1)
{
  sub_21BE28ABC();
}

uint64_t sub_21BD23194(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

void sub_21BD2324C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  if (v2 == 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x800000021BE55740;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (v5)
  {
    v3 = 0x800000021BE55720;
  }

  *a1 = v6;
  a1[1] = v3;
}

id sub_21BD232B8()
{
  result = [objc_allocWithZone(type metadata accessor for FamilyAppleCardAndCashAnalytics()) init];
  qword_27CDBA6A8 = result;
  return result;
}

id FamilyAppleCardAndCashAnalytics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static FamilyAppleCardAndCashAnalytics.shared.getter()
{
  if (qword_27CDB4F90 != -1)
  {
    swift_once();
  }

  v1 = qword_27CDBA6A8;

  return v1;
}

id FamilyAppleCardAndCashAnalytics.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyAppleCardAndCashAnalytics();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FamilyAppleCardAndCashAnalytics.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FamilyAppleCardAndCashAnalytics();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double sub_21BD23430(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 41);
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v12 = 47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE33260;
  *(inited + 32) = 0x746E6F43776F6C46;
  *(inited + 40) = 0xEB00000000747865;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v4 = 0xEF796C696D614664;
      v5 = 0x726143656C707061;
    }

    else
    {
      v4 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
    }
  }

  else if (v2)
  {
    v4 = 0x800000021BE556C0;
    v5 = 0xD000000000000013;
  }

  else
  {
    v4 = 0xEE0073676E697474;
    v5 = 0x6553796C696D6166;
  }

  v6 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 48) = v5;
  *(inited + 56) = v4;
  strcpy((inited + 88), "FlowIdentifier");
  *(inited + 103) = -18;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v7 = 0x800000021BE55690;
      v8 = 0xD000000000000017;
    }

    else
    {
      v7 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E75;
    }
  }

  else if (v1)
  {
    v7 = 0x800000021BE55670;
    v8 = 0xD000000000000015;
  }

  else
  {
    v7 = 0xE900000000000064;
    v8 = 0x7261436572616873;
  }

  *(inited + 128) = v6;
  *(inited + 136) = &protocol witness table for String;
  *(inited + 104) = v8;
  *(inited + 112) = v7;
  v9 = inited;

  v10 = sub_21BBB5E60(v9);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  swift_arrayDestroy();
  sub_21BCA55DC(&v12, v10);

  return result;
}

double sub_21BD236A8(char *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v5 = *(a1 + 3);
  v4 = *(a1 + 4);
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v16 = 46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE374D0;
  strcpy((inited + 32), "HasAppleCard");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = v1;
  *(inited + 88) = 0x6765746143656741;
  *(inited + 96) = 0xEB0000000079726FLL;
  if (v3 > 0)
  {
    if (v3 == 2)
    {
      v7 = 0xE500000000000000;
      v8 = 0x646C696843;
      goto LABEL_11;
    }

    if (v3 == 1)
    {
      v7 = 0xE400000000000000;
      v8 = 1852138836;
      goto LABEL_11;
    }

LABEL_9:
    v7 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E55;
    goto LABEL_11;
  }

  if (v3)
  {
    goto LABEL_9;
  }

  v7 = 0xE500000000000000;
  v8 = 0x746C756441;
LABEL_11:
  v9 = MEMORY[0x277D837D0];
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = &protocol witness table for String;
  *(inited + 104) = v8;
  *(inited + 112) = v7;
  strcpy((inited + 144), "CardAccessType");
  *(inited + 159) = -18;
  switch(v2)
  {
    case 0:
      goto LABEL_15;
    case 1:
      v10 = 0xE700000000000000;
      v11 = 0x7972616D697250;
      break;
    case 2:
      v10 = 0xEB00000000746E61;
      v11 = 0x7069636974726150;
      break;
    default:
LABEL_15:
      v10 = 0xE700000000000000;
      v11 = 0x6E776F6E6B6E55;
      break;
  }

  *(inited + 184) = v9;
  *(inited + 192) = &protocol witness table for String;
  *(inited + 160) = v11;
  *(inited + 168) = v10;
  *(inited + 200) = 0xD000000000000016;
  *(inited + 208) = 0x800000021BE5E6E0;
  v12 = MEMORY[0x277D83B88];
  *(inited + 240) = MEMORY[0x277D83B88];
  *(inited + 248) = &protocol witness table for Int;
  *(inited + 216) = v5;
  *(inited + 256) = 0xD00000000000001ALL;
  *(inited + 264) = 0x800000021BE5E700;
  *(inited + 296) = v12;
  *(inited + 304) = &protocol witness table for Int;
  *(inited + 272) = v4;
  v13 = inited;

  v14 = sub_21BBB5E60(v13);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  swift_arrayDestroy();
  sub_21BCA55DC(&v16, v14);

  return result;
}

double sub_21BD23980(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v3 = 0x6E776F6E6B6E75;
  v12 = 48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE33260;
  *(inited + 32) = 0x746E6F43776F6C46;
  *(inited + 40) = 0xEB00000000747865;
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x800000021BE55740;
      v6 = 0xD000000000000010;
    }

    else
    {
      v5 = 0xE700000000000000;
      v6 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v6 = 0xD000000000000014;
    v5 = 0x800000021BE55720;
  }

  v7 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 48) = v6;
  *(inited + 56) = v5;
  strcpy((inited + 88), "FlowIdentifier");
  *(inited + 103) = -18;
  if (v1)
  {
    if (v1 == 1)
    {
      v3 = 0xD000000000000014;
      v8 = 0x800000021BE55700;
    }

    else
    {
      v8 = 0xE700000000000000;
    }
  }

  else
  {
    v8 = 0xEE0068736143656CLL;
    v3 = 0x7070417075746573;
  }

  *(inited + 128) = v7;
  *(inited + 136) = &protocol witness table for String;
  *(inited + 104) = v3;
  *(inited + 112) = v8;
  v9 = inited;

  v10 = sub_21BBB5E60(v9);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  swift_arrayDestroy();
  sub_21BCA55DC(&v12, v10);

  return result;
}

unint64_t sub_21BD23BC8()
{
  result = qword_27CDBA6B0;
  if (!qword_27CDBA6B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppleCardFlowIdentifier, &type metadata for AppleCardFlowIdentifier, v0, v1);
    atomic_store(result, &qword_27CDBA6B0);
  }

  return result;
}

unint64_t sub_21BD23C20()
{
  result = qword_27CDBA6B8;
  if (!qword_27CDBA6B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppleCardFlowContext, &type metadata for AppleCardFlowContext, v0, v1);
    atomic_store(result, &qword_27CDBA6B8);
  }

  return result;
}

unint64_t sub_21BD23C78()
{
  result = qword_27CDBA6C0;
  if (!qword_27CDBA6C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppleCashFlowIdentifier, &type metadata for AppleCashFlowIdentifier, v0, v1);
    atomic_store(result, &qword_27CDBA6C0);
  }

  return result;
}

unint64_t sub_21BD23CD0()
{
  result = qword_27CDBA6C8;
  if (!qword_27CDBA6C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppleCashFlowContext, &type metadata for AppleCashFlowContext, v0, v1);
    atomic_store(result, &qword_27CDBA6C8);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21BD23D38(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[42])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_21BD23D8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleCashMetrics(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
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

_WORD *storeEnumTagSinglePayload for AppleCashMetrics(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

void sub_21BD24044(void *a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21BE25FCC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, *MEMORY[0x277D07F38], v10);
  v14 = MEMORY[0x21CF01150](v13);
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v15 = [a1 checklistRankingBucketType];
    v34 = v6;
    v35 = a3;
    v33 = v7;
    if (v15)
    {
      v16 = v15;
      v17 = sub_21BE28A0C();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0xE000000000000000;
    }

    v20 = (a2 + 64);
    v21 = *(a2 + 16) + 1;
    while (--v21)
    {
      v23 = *(v20 - 4);
      v22 = *(v20 - 3);
      v24 = *(v20 - 16);
      v26 = *(v20 - 1);
      v25 = *v20;
      if (v26 == v17 && v25 == v19)
      {
        v26 = v17;
LABEL_18:

        v37 = v23;
        v38 = v22;
        v39 = v24;
        v40 = v26;
        v41 = v25;
        v30 = sub_21BBB63EC(&unk_282D85218);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA378, &qword_21BE43268);
        swift_arrayDestroy();
        v31 = sub_21BBB62CC(&unk_282D85338);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA380, &unk_21BE43F30);
        swift_arrayDestroy();
        v36[3] = &type metadata for NewVerificationRules;
        v36[4] = &off_282D927D0;
        v36[0] = v30;
        v36[1] = v31;
        sub_21BDF5AA8(&v37, v36, v35);
        return;
      }

      v20 += 5;
      if (sub_21BE2995C())
      {
        goto LABEL_18;
      }
    }

    v37 = 0;
    v38 = 0xE000000000000000;
    sub_21BE295EC();

    v37 = 0x272074656B637542;
    v38 = 0xE800000000000000;
    MEMORY[0x21CF03CA0](v17, v19);

    MEMORY[0x21CF03CA0](0xD00000000000001ALL, 0x800000021BE5E760);
    v28 = MEMORY[0x21CF01210](v37, v38, 0xD000000000000010, 0x800000021BE573A0, 500);

    swift_willThrow();
    v29 = v35;
    sub_21BE261BC();
    v32 = v28;
    sub_21BC51D50(v28, 0xD000000000000036, 0x800000021BE5E720);

    (*(v33 + 8))(v9, v34);
    if (qword_280BD6F10 != -1)
    {
      swift_once();
    }

    sub_21BBFD750(&xmmword_280BD6F18, v29);
  }

  else
  {
    if (qword_27CDB4F98 != -1)
    {
      swift_once();
    }

    sub_21BBFD750(&xmmword_27CDBA6D0, a3);
  }
}

double sub_21BD244C8()
{
  sub_21BD10F50(v1);
  xmmword_27CDBA710 = v3;
  unk_27CDBA720 = v4;
  xmmword_27CDBA730 = v5;
  xmmword_27CDBA6D0 = v1[0];
  unk_27CDBA6E0 = v1[1];
  result = *&v2;
  xmmword_27CDBA6F0 = v1[2];
  unk_27CDBA700 = v2;
  return result;
}

double sub_21BD2459C()
{
  sub_21BD3FF04(v1);
  xmmword_280BD6F58 = v3;
  unk_280BD6F68 = v4;
  xmmword_280BD6F78 = v5;
  xmmword_280BD6F18 = v1[0];
  unk_280BD6F28 = v1[1];
  result = *&v2;
  xmmword_280BD6F38 = v1[2];
  unk_280BD6F48 = v2;
  return result;
}

uint64_t sub_21BD24670()
{
  v1 = 0x6556616D65686373;
  if (*v0 != 1)
  {
    v1 = 0x6974696E69666564;
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

uint64_t sub_21BD246E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21BD24A1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21BD24708(uint64_t a1)
{
  v2 = sub_21BD24D78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BD24744(uint64_t a1)
{
  v2 = sub_21BD24D78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BD24780@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_21BD24B40(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_21BD247B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_21BE26A4C();
  MEMORY[0x28223BE20](v2);
  sub_21BE2578C();
  swift_allocObject();
  sub_21BE2577C();
  sub_21BD24EA4();
  sub_21BE2576C();

  return v4;
}

uint64_t sub_21BD24A1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_21BE2995C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6556616D65686373 && a2 == 0xED00006E6F697372 || (sub_21BE2995C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974696E69666564 && a2 == 0xEB00000000736E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_21BE2995C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_21BD24B40(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA740, &qword_21BE43F20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BD24D78();
  sub_21BE29B4C();
  if (!v1)
  {
    v9[31] = 0;
    v7 = sub_21BE2986C();
    v9[30] = 1;
    sub_21BE2989C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA748, &qword_21BE43F28);
    v9[29] = 2;
    sub_21BD24DCC();
    sub_21BE298AC();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_21BD24D78()
{
  result = qword_280BD6F98;
  if (!qword_280BD6F98)
  {
    result = swift_getWitnessTable(aVF_0, &type metadata for ChecklistRankingConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_280BD6F98);
  }

  return result;
}

unint64_t sub_21BD24DCC()
{
  result = qword_280BD69A8;
  if (!qword_280BD69A8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA748, &qword_21BE43F28);
    v4[0] = sub_21BD24E50();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_280BD69A8);
  }

  return result;
}

unint64_t sub_21BD24E50()
{
  result = qword_280BD6FC8;
  if (!qword_280BD6FC8)
  {
    result = swift_getWitnessTable(byte_21BE4FB04, &type metadata for ChecklistDefinition, v0, v1);
    atomic_store(result, &qword_280BD6FC8);
  }

  return result;
}

unint64_t sub_21BD24EA4()
{
  result = qword_280BD6F08;
  if (!qword_280BD6F08)
  {
    result = swift_getWitnessTable(byte_21BE43EF8, &type metadata for ChecklistRankingConfig, v0, v1);
    atomic_store(result, &qword_280BD6F08);
  }

  return result;
}

uint64_t sub_21BD24EF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6878, &unk_21BE357E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BD24F74()
{
  result = qword_27CDBA750;
  if (!qword_27CDBA750)
  {
    result = swift_getWitnessTable(byte_21BE43FDC, &type metadata for ChecklistRankingConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDBA750);
  }

  return result;
}

unint64_t sub_21BD24FCC()
{
  result = qword_280BD6F88;
  if (!qword_280BD6F88)
  {
    result = swift_getWitnessTable(aUpF, &type metadata for ChecklistRankingConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_280BD6F88);
  }

  return result;
}

unint64_t sub_21BD25024()
{
  result = qword_280BD6F90;
  if (!qword_280BD6F90)
  {
    result = swift_getWitnessTable("el?f|", &type metadata for ChecklistRankingConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_280BD6F90);
  }

  return result;
}

uint64_t type metadata accessor for BeneficiaryView(uint64_t a1)
{
  result = qword_27CDBA758;
  if (!qword_27CDBA758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD250EC(uint64_t a1)
{
  type metadata accessor for BeneficiaryItemDataItem(319);
  if (v1 <= 0x3F)
  {
    sub_21BC41F08(319);
    if (v2 <= 0x3F)
    {
      sub_21BC505F8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id sub_21BD251A4()
{
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_21BE289CC();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1 withConfiguration:0];

  if (v3)
  {
    return v3;
  }

  result = sub_21BE2978C();
  __break(1u);
  return result;
}

uint64_t sub_21BD252AC()
{
  if (*(v0 + *(type metadata accessor for BeneficiaryItemDataItem(0) + 24)) >> 62)
  {
    sub_21BE2951C();
  }

  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_21BE2599C();

  return v3;
}

uint64_t sub_21BD253DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_21BE32770;
  v2 = *(v0 + *(type metadata accessor for BeneficiaryItemDataItem(0) + 24));
  if (v2 >> 62)
  {
    v3 = sub_21BE2951C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D83C10];
  *(v1 + 56) = MEMORY[0x277D83B88];
  *(v1 + 64) = v4;
  *(v1 + 32) = v3;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();

  v7 = [v6 bundleForClass_];
  sub_21BE2599C();

  v8 = sub_21BE289DC();

  return v8;
}

unint64_t sub_21BD25560()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v41 - v2;
  v4 = sub_21BE25D1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BeneficiaryItemDataItem(0);
  v9 = *(v0 + *(v8 + 24));
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!sub_21BE2951C())
  {
    return 0;
  }

  v10 = sub_21BE2951C();
  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_3:
  v11 = __OFSUB__(v10, 1);
  result = v10 - 1;
  if (v11)
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v13 = MEMORY[0x21CF047C0](result, v9);
LABEL_8:
    v14 = v13;
    v15 = [v13 firstName];

    if (v15)
    {
      v16 = sub_21BE28A0C();
      goto LABEL_13;
    }

LABEL_12:
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    v16 = sub_21BE2599C();
LABEL_13:
    v19 = v16;
    v20 = v17;

    sub_21BC1E1AC(v0 + *(v8 + 20), v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_21BC51500(v3);
      type metadata accessor for ConfirmChildAgeViewModel();
      v21 = swift_getObjCClassFromMetadata();
      v22 = [objc_opt_self() bundleForClass_];
      sub_21BE2599C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_21BE32770;
      *(v23 + 56) = MEMORY[0x277D837D0];
      *(v23 + 64) = sub_21BBBEFE8();
      *(v23 + 32) = v19;
      *(v23 + 40) = v20;
      v24 = sub_21BE28A2C();
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      v25 = *(type metadata accessor for BeneficiaryView(0) + 24);
      v42 = v20;
      v26 = v19;
      v27 = *(v0 + v25);
      v28 = sub_21BE289CC();
      [v27 setLocalizedDateFormatFromTemplate_];

      type metadata accessor for ConfirmChildAgeViewModel();
      v29 = swift_getObjCClassFromMetadata();
      v30 = v5;
      v31 = [objc_opt_self() bundleForClass_];
      v41 = sub_21BE2599C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_21BE33260;
      v33 = MEMORY[0x277D837D0];
      *(v32 + 56) = MEMORY[0x277D837D0];
      v34 = sub_21BBBEFE8();
      *(v32 + 64) = v34;
      v35 = v42;
      *(v32 + 32) = v26;
      *(v32 + 40) = v35;
      v36 = sub_21BE25CAC();
      v37 = [v27 stringFromDate_];

      v38 = sub_21BE28A0C();
      v40 = v39;

      *(v32 + 96) = v33;
      *(v32 + 104) = v34;
      *(v32 + 72) = v38;
      *(v32 + 80) = v40;
      v24 = sub_21BE28A2C();

      (*(v30 + 8))(v7, v4);
    }

    return v24;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v9 + 8 * result + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BD25AC8()
{
  if (*v1 == 1)
  {
    v2 = sub_21BD252AC();
    v4 = v3;
    v5 = sub_21BD253DC();
    v7 = v6;
    v8 = sub_21BD25560();
    v10 = v9;
    v11 = sub_21BD251A4();
    v23[3] = type metadata accessor for BeneficiaryItemDataItem(0);
    v23[4] = sub_21BD25D70(&qword_27CDBA768, type metadata accessor for BeneficiaryItemDataItem, byte_21BE3D408);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
    sub_21BC973C0(v1, boxed_opaque_existential_1);
    type metadata accessor for ChecklistStateVars(0);
    sub_21BD25D70(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
    v18 = v2;
    v19[0] = v4;
    v19[1] = v5;
    v19[2] = v7;
    v20 = v8;
    v21 = v10;
    v22 = v11;
    v23[5] = sub_21BE26E9C();
    v24 = v13 & 1;
    sub_21BD25F10(&v18, v25);
    v26 = 0;
    sub_21BD25E14();
    sub_21BD25E68();
    sub_21BE2784C();
    return sub_21BD25F6C(&v18);
  }

  else
  {
    v15 = sub_21BD251A4();
    v20 = type metadata accessor for BeneficiaryItemDataItem(0);
    v21 = sub_21BD25D70(&qword_27CDBA768, type metadata accessor for BeneficiaryItemDataItem, byte_21BE3D408);
    v16 = __swift_allocate_boxed_opaque_existential_1(v19);
    sub_21BC973C0(v1, v16);
    type metadata accessor for ChecklistStateVars(0);
    sub_21BD25D70(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
    v18 = v15;
    v22 = sub_21BE26E9C();
    LOBYTE(v23[0]) = v17 & 1;
    sub_21BD25DB8(&v18, v25);
    v26 = 1;
    sub_21BD25E14();
    sub_21BD25E68();
    sub_21BE2784C();
    return sub_21BD25EBC(&v18);
  }
}

uint64_t sub_21BD25D70(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_21BD25E14()
{
  result = qword_27CDBA770;
  if (!qword_27CDBA770)
  {
    result = swift_getWitnessTable(byte_21BE4E0C8, &type metadata for BeneficiarySetupCell, v0, v1);
    atomic_store(result, &qword_27CDBA770);
  }

  return result;
}

unint64_t sub_21BD25E68()
{
  result = qword_27CDBA778;
  if (!qword_27CDBA778)
  {
    result = swift_getWitnessTable(aA4F4, &type metadata for BeneficiaryNotSetupCell, v0, v1);
    atomic_store(result, &qword_27CDBA778);
  }

  return result;
}

unint64_t sub_21BD25FC0()
{
  result = qword_27CDBA780;
  if (!qword_27CDBA780)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA788, qword_21BE440C8);
    v4[0] = sub_21BD25E14();
    v4[1] = sub_21BD25E68();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBA780);
  }

  return result;
}

id static SubscriptionServicesDataLoader.createLoader(account:)(void *a1)
{
  if (qword_280BDCB40)
  {
    v2 = qword_280BDCB40;
    sub_21BD262F4(a1);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
    v6 = 0;
    v3 = objc_allocWithZone(type metadata accessor for SubscriptionServicesDataLoader());
    return sub_21BD263EC(a1, v5);
  }

  return v2;
}

uint64_t FASharedService.id.getter()
{
  v1 = [v0 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21BE28A0C();

  return v3;
}

void sub_21BD2614C(uint64_t *a1@<X8>)
{
  v3 = [*v1 name];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21BE28A0C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  *a1 = v5;
  a1[1] = v7;
}

unint64_t sub_21BD261B4()
{
  v1 = 0xD000000000000039;
  if (*v0 == 2)
  {
    v1 = 0xD00000000000002ELL;
  }

  v2 = 0xD00000000000003CLL;
  if (!*v0)
  {
    v2 = 0xD000000000000031;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

void *sub_21BD26234@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

void sub_21BD26240(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_account;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_21BD262A0()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_account;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t sub_21BD262F4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_account;
  swift_beginAccess();
  v5 = [*(v1 + v4) identifier];
  v6 = [a1 identifier];
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      sub_21BB3A2A4(0, &unk_280BD68E8, 0x277CCACA8);
      v8 = sub_21BE2940C();

      if ((v8 & 1) == 0)
      {
        goto LABEL_9;
      }

      return 0;
    }

    v7 = v5;
  }

  else if (!v6)
  {
    return 0;
  }

LABEL_9:
  v10 = *(v2 + v4);
  *(v2 + v4) = a1;
  v11 = a1;

  return 1;
}

id sub_21BD263EC(void *a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_locationAllowed] = 1;
  *&v2[OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_services] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_account] = a1;
  sub_21BD281F0(a2, &v12);
  if (v13)
  {
    sub_21BB3D104(&v12, &v14);
  }

  else
  {
    v15 = &type metadata for SubscriptionsDataProvider;
    v16 = &off_282D94838;
    *&v14 = a1;
    v5 = a1;
  }

  v6 = a1;
  sub_21BB3D104(&v14, &v2[OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_dataProvider]);
  v11.receiver = v2;
  v11.super_class = type metadata accessor for SubscriptionServicesDataLoader();
  v7 = objc_msgSendSuper2(&v11, sel_init);
  v8 = v7;
  if (!qword_280BDCB40)
  {
    qword_280BDCB40 = v7;
    v9 = v7;
  }

  sub_21BD28260(a2);
  return v8;
}

uint64_t sub_21BD264EC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_21BE26A4C();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  sub_21BE28D7C();
  v3[11] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v3[12] = v6;
  v3[13] = v5;

  return MEMORY[0x2822009F8](sub_21BD265FC, v6, v5);
}

uint64_t sub_21BD265FC(uint64_t a1)
{
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "SubscriptionsDataLoader load services ... ", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v5 = v1[10];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[5];

  v9 = *(v7 + 8);
  v1[14] = v9;
  v9(v5, v6);
  v10 = *__swift_project_boxed_opaque_existential_1Tm((v8 + OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_dataProvider), *(v8 + OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_dataProvider + 24));
  v11 = swift_task_alloc();
  v1[15] = v11;
  *v11 = v1;
  v11[1] = sub_21BD26754;

  return sub_21BD7FC30(v10);
}

uint64_t sub_21BD26754(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 128) = a1;
  *(v4 + 136) = v1;

  v5 = *(v3 + 104);
  v6 = *(v3 + 96);
  if (v1)
  {
    v7 = sub_21BD26B0C;
  }

  else
  {
    v7 = sub_21BD26898;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

void sub_21BD26898()
{
  v18 = v0;
  v1 = *(v0 + 128);
  v2 = [v1 locationAllowed];
  v3 = [v1 services];
  if (v3)
  {
    v4 = v3;
    sub_21BB3A2A4(0, &unk_27CDB6550, 0x277D08338);
    sub_21BE28C3C();
  }

  v5 = *(v0 + 136);

  v17 = sub_21BC2AD0C(v6);
  sub_21BD271FC(&v17);
  if (v5)
  {
  }

  else
  {

    v7 = v17;
    sub_21BE2614C();

    v8 = sub_21BE26A2C();
    v9 = sub_21BE28FFC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      if (v7 < 0 || (v7 & 0x4000000000000000) != 0)
      {
        v11 = sub_21BE2951C();
      }

      else
      {
        v11 = *(v7 + 16);
      }

      *(v10 + 4) = v11;

      _os_log_impl(&dword_21BB35000, v8, v9, "SubscriptionsDataLoader load services: %ld", v10, 0xCu);
      MEMORY[0x21CF05C50](v10, -1, -1);
    }

    else
    {
    }

    v12 = *(v0 + 112);
    v13 = *(v0 + 64);
    v15 = *(v0 + 40);
    v14 = *(v0 + 48);

    v12(v13, v14);
    *(v15 + OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_locationAllowed) = v2;
    *(v15 + OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_services) = v7;

    v16 = *(v0 + 8);

    v16();
  }
}

uint64_t sub_21BD26B0C(uint64_t a1)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 112);
  v4 = *(v1 + 72);
  v5 = *(v1 + 48);
  sub_21BE2614C();
  v6 = v2;
  sub_21BC51D50(v2, 0xD000000000000017, 0x800000021BE5E9A0);

  v3(v4, v5);
  *(v1 + 16) = v2;
  v7 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  if ((swift_dynamicCast() & 1) == 0 || *(v1 + 152))
  {
    v8 = *(v1 + 136);

LABEL_4:

    v9 = *(v1 + 8);

    return v9();
  }

  v11 = *(v1 + 24);
  if (!v11)
  {

    v8 = *(v1 + 136);
    goto LABEL_4;
  }

  v13 = (v11 + *v11);
  v12 = swift_task_alloc();
  *(v1 + 144) = v12;
  *v12 = v1;
  v12[1] = sub_21BD26D40;

  return v13();
}

uint64_t sub_21BD26D40()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_21BD26E60, v3, v2);
}

uint64_t sub_21BD26E60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BD26EEC(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 name];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21BE28A0C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = [v2 name];
  if (v8)
  {
    v9 = v8;
    v10 = sub_21BE28A0C();
    v12 = v11;

    if (v5 != v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0xE000000000000000;
    if (v5)
    {
LABEL_10:
      v13 = sub_21BE2995C();
      goto LABEL_11;
    }
  }

  if (v7 != v12)
  {
    goto LABEL_10;
  }

  v13 = 0;
LABEL_11:

  return v13 & 1;
}

id SubscriptionServicesDataLoader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SubscriptionServicesDataLoader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SubscriptionServicesDataLoader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BD2710C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SubscriptionServicesDataLoader();
  result = sub_21BE26C0C();
  *a2 = result;
  return result;
}

unint64_t sub_21BD271A8()
{
  result = qword_27CDBA7B0;
  if (!qword_27CDBA7B0)
  {
    result = swift_getWitnessTable(byte_21BE44208, &_s4NameVN, v0, v1);
    atomic_store(result, &qword_27CDBA7B0);
  }

  return result;
}

uint64_t sub_21BD271FC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_21BDFE08C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_21BD27278(v6);
  return sub_21BE296CC();
}

uint64_t sub_21BD27278(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_21BE2991C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21BB3A2A4(0, &unk_27CDB6550, 0x277D08338);
        v6 = sub_21BE28C7C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_21BD2753C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21BD2738C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21BD2738C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v28 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    v6 = &selRef_fa_URLByAddingAirdropInviteParams;
LABEL_6:
    v26 = v4;
    v27 = a3;
    v7 = *(v28 + 8 * a3);
    v25 = v5;
    while (1)
    {
      v8 = *v4;
      v9 = v7;
      v10 = v8;
      v11 = [v9 v6[339]];
      if (v11)
      {
        v12 = v11;
        v13 = sub_21BE28A0C();
        v15 = v14;
      }

      else
      {
        v13 = 0;
        v15 = 0xE000000000000000;
      }

      v16 = [v10 v6[339]];
      if (v16)
      {
        v17 = v16;
        v18 = sub_21BE28A0C();
        v20 = v19;

        if (v13 != v18)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v20 = 0xE000000000000000;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      if (v15 == v20)
      {

        v6 = &selRef_fa_URLByAddingAirdropInviteParams;
LABEL_5:
        a3 = v27 + 1;
        v4 = v26 + 8;
        v5 = v25 - 1;
        if (v27 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

LABEL_15:
      v21 = sub_21BE2995C();

      v6 = &selRef_fa_URLByAddingAirdropInviteParams;
      if ((v21 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v28)
      {
        __break(1u);
        return result;
      }

      v22 = *v4;
      v7 = *(v4 + 8);
      *v4 = v7;
      *(v4 + 8) = v22;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

void sub_21BD2753C(char **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_114:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_155;
    }

    v4 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v98 = v4;
LABEL_117:
      v121 = v98;
      v4 = *(v98 + 2);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v99 = *&v98[16 * v4];
          v100 = v98;
          v101 = *&v98[16 * v4 + 24];
          sub_21BD27D94((*a3 + 8 * v99), (*a3 + 8 * *&v98[16 * v4 + 16]), (*a3 + 8 * v101), v5);
          if (v116)
          {
            goto LABEL_125;
          }

          if (v101 < v99)
          {
            goto LABEL_142;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v100 = sub_21BDFD0AC(v100);
          }

          if (v4 - 2 >= *(v100 + 2))
          {
            goto LABEL_143;
          }

          v102 = &v100[16 * v4];
          *v102 = v99;
          *(v102 + 1) = v101;
          v121 = v100;
          sub_21BDFD020(v4 - 1);
          v98 = v121;
          v4 = *(v121 + 2);
          if (v4 <= 1)
          {
            goto LABEL_125;
          }
        }

        goto LABEL_153;
      }

LABEL_125:

      return;
    }

LABEL_149:
    v98 = sub_21BDFD0AC(v4);
    goto LABEL_117;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v9 = &selRef_fa_URLByAddingAirdropInviteParams;
LABEL_4:
  v10 = v7;
  v11 = v7 + 1;
  if (v7 + 1 >= v6)
  {
    goto LABEL_33;
  }

  v106 = v8;
  v4 = *a3;
  v120 = *(*a3 + 8 * v11);
  v119 = *(v4 + 8 * v7);
  v12 = v119;
  v13 = v120;
  v5 = v12;
  v117 = sub_21BD26EEC(&v120, &v119);
  if (v116)
  {

    return;
  }

  v11 = v7 + 2;
  if (v7 + 2 >= v6)
  {
    v8 = v106;
    if (v117)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

  v114 = v7 + 2;
  v103 = v7;
  v4 += 8 * v7 + 16;
  v111 = v6;
  while (1)
  {
    v15 = *(v4 - 8);
    v16 = *v4;
    v17 = v15;
    v18 = [v16 v9[339]];
    if (v18)
    {
      v19 = v18;
      v20 = sub_21BE28A0C();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0xE000000000000000;
    }

    v23 = [v17 name];
    if (v23)
    {
      v24 = v23;
      v25 = sub_21BE28A0C();
      v5 = v26;

      if (v20 != v25)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v5 = 0xE000000000000000;
      if (v20)
      {
        goto LABEL_8;
      }
    }

    if (v22 == v5)
    {

      if (v117)
      {
        v8 = v106;
        v9 = &selRef_fa_URLByAddingAirdropInviteParams;
        v11 = v114;
        v10 = v103;
        goto LABEL_25;
      }

      goto LABEL_9;
    }

LABEL_8:
    v14 = sub_21BE2995C();

    if ((v117 ^ v14))
    {
      break;
    }

LABEL_9:
    v4 += 8;
    ++v114;
    v9 = &selRef_fa_URLByAddingAirdropInviteParams;
    if (v111 == v114)
    {
      v11 = v111;
      v8 = v106;
      goto LABEL_24;
    }
  }

  v8 = v106;
  v9 = &selRef_fa_URLByAddingAirdropInviteParams;
  v11 = v114;
LABEL_24:
  v10 = v103;
  if (v117)
  {
LABEL_25:
    if (v11 < v10)
    {
      goto LABEL_146;
    }

    if (v10 < v11)
    {
      v27 = v11;
      v28 = 8 * v11 - 8;
      v29 = 8 * v10;
      v30 = v10;
      do
      {
        if (v30 != --v27)
        {
          v32 = *a3;
          if (!*a3)
          {
            goto LABEL_152;
          }

          v31 = *(v32 + v29);
          *(v32 + v29) = *(v32 + v28);
          *(v32 + v28) = v31;
        }

        ++v30;
        v28 -= 8;
        v29 += 8;
      }

      while (v30 < v27);
    }
  }

LABEL_33:
  v33 = a3[1];
  v7 = v11;
  if (v11 >= v33)
  {
    goto LABEL_42;
  }

  if (__OFSUB__(v11, v10))
  {
    goto LABEL_145;
  }

  if (v11 - v10 >= a4)
  {
LABEL_41:
    v7 = v11;
LABEL_42:
    if (v7 < v10)
    {
      goto LABEL_144;
    }

    goto LABEL_43;
  }

  v34 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_147;
  }

  if (v34 >= v33)
  {
    v34 = a3[1];
  }

  if (v34 < v10)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v11 == v34)
  {
    goto LABEL_41;
  }

  v107 = v8;
  v118 = *a3;
  v4 = *a3 + 8 * v11 - 8;
  v104 = v10;
  v81 = v10 - v11;
  v109 = v34;
  while (2)
  {
    v115 = v11;
    v82 = *(v118 + 8 * v11);
    v110 = v81;
    v112 = v4;
LABEL_96:
    v83 = *v4;
    v84 = v82;
    v85 = v83;
    v86 = [v84 v9[339]];
    if (v86)
    {
      v87 = v86;
      v88 = sub_21BE28A0C();
      v90 = v89;
    }

    else
    {
      v88 = 0;
      v90 = 0xE000000000000000;
    }

    v91 = [v85 v9[339]];
    if (!v91)
    {
      v5 = 0xE000000000000000;
      if (v88)
      {
        goto LABEL_104;
      }

LABEL_103:
      if (v90 != v5)
      {
        goto LABEL_104;
      }

LABEL_94:
      v11 = v115 + 1;
      v4 = v112 + 8;
      v81 = v110 - 1;
      if (v115 + 1 != v109)
      {
        continue;
      }

      v7 = v109;
      v8 = v107;
      v10 = v104;
      if (v109 < v104)
      {
        goto LABEL_144;
      }

LABEL_43:
      v35 = v8;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v8 = v35;
      }

      else
      {
        v8 = sub_21BBBCBFC(0, *(v35 + 2) + 1, 1, v35);
      }

      v4 = *(v8 + 2);
      v36 = *(v8 + 3);
      v37 = v4 + 1;
      if (v4 >= v36 >> 1)
      {
        v8 = sub_21BBBCBFC((v36 > 1), v4 + 1, 1, v8);
      }

      *(v8 + 2) = v37;
      v38 = &v8[16 * v4];
      *(v38 + 4) = v10;
      *(v38 + 5) = v7;
      v39 = *a1;
      if (!*a1)
      {
        goto LABEL_154;
      }

      if (v4)
      {
        while (2)
        {
          v40 = v37 - 1;
          if (v37 >= 4)
          {
            v45 = &v8[16 * v37 + 32];
            v46 = *(v45 - 64);
            v47 = *(v45 - 56);
            v51 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            if (v51)
            {
              goto LABEL_131;
            }

            v50 = *(v45 - 48);
            v49 = *(v45 - 40);
            v51 = __OFSUB__(v49, v50);
            v43 = v49 - v50;
            v44 = v51;
            if (v51)
            {
              goto LABEL_132;
            }

            v52 = &v8[16 * v37];
            v54 = *v52;
            v53 = *(v52 + 1);
            v51 = __OFSUB__(v53, v54);
            v55 = v53 - v54;
            if (v51)
            {
              goto LABEL_134;
            }

            v51 = __OFADD__(v43, v55);
            v56 = v43 + v55;
            if (v51)
            {
              goto LABEL_137;
            }

            if (v56 >= v48)
            {
              v74 = &v8[16 * v40 + 32];
              v76 = *v74;
              v75 = *(v74 + 1);
              v51 = __OFSUB__(v75, v76);
              v77 = v75 - v76;
              if (v51)
              {
                goto LABEL_141;
              }

              if (v43 < v77)
              {
                v40 = v37 - 2;
              }
            }

            else
            {
LABEL_62:
              if (v44)
              {
                goto LABEL_133;
              }

              v57 = &v8[16 * v37];
              v59 = *v57;
              v58 = *(v57 + 1);
              v60 = __OFSUB__(v58, v59);
              v61 = v58 - v59;
              v62 = v60;
              if (v60)
              {
                goto LABEL_136;
              }

              v63 = &v8[16 * v40 + 32];
              v65 = *v63;
              v64 = *(v63 + 1);
              v51 = __OFSUB__(v64, v65);
              v66 = v64 - v65;
              if (v51)
              {
                goto LABEL_139;
              }

              if (__OFADD__(v61, v66))
              {
                goto LABEL_140;
              }

              if (v61 + v66 < v43)
              {
                goto LABEL_76;
              }

              if (v43 < v66)
              {
                v40 = v37 - 2;
              }
            }
          }

          else
          {
            if (v37 == 3)
            {
              v41 = *(v8 + 4);
              v42 = *(v8 + 5);
              v51 = __OFSUB__(v42, v41);
              v43 = v42 - v41;
              v44 = v51;
              goto LABEL_62;
            }

            v67 = &v8[16 * v37];
            v69 = *v67;
            v68 = *(v67 + 1);
            v51 = __OFSUB__(v68, v69);
            v61 = v68 - v69;
            v62 = v51;
LABEL_76:
            if (v62)
            {
              goto LABEL_135;
            }

            v70 = &v8[16 * v40];
            v72 = *(v70 + 4);
            v71 = *(v70 + 5);
            v51 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v51)
            {
              goto LABEL_138;
            }

            if (v73 < v61)
            {
              break;
            }
          }

          v4 = v40 - 1;
          if (v40 - 1 >= v37)
          {
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
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
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          if (!*a3)
          {
            goto LABEL_151;
          }

          v5 = v8;
          v78 = *&v8[16 * v4 + 32];
          v79 = *&v8[16 * v40 + 40];
          sub_21BD27D94((*a3 + 8 * v78), (*a3 + 8 * *&v8[16 * v40 + 32]), (*a3 + 8 * v79), v39);
          if (v116)
          {
            goto LABEL_125;
          }

          if (v79 < v78)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_21BDFD0AC(v5);
          }

          if (v4 >= *(v5 + 2))
          {
            goto LABEL_130;
          }

          v80 = &v5[16 * v4];
          *(v80 + 4) = v78;
          *(v80 + 5) = v79;
          v121 = v5;
          sub_21BDFD020(v40);
          v8 = v121;
          v37 = *(v121 + 2);
          if (v37 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_114;
      }

      goto LABEL_4;
    }

    break;
  }

  v92 = v91;
  v93 = sub_21BE28A0C();
  v5 = v94;

  v9 = &selRef_fa_URLByAddingAirdropInviteParams;
  if (v88 == v93)
  {
    goto LABEL_103;
  }

LABEL_104:
  v95 = sub_21BE2995C();

  if ((v95 & 1) == 0)
  {
    goto LABEL_94;
  }

  if (v118)
  {
    v96 = *v4;
    v82 = *(v4 + 8);
    *v4 = v82;
    *(v4 + 8) = v96;
    v4 -= 8;
    if (__CFADD__(v81++, 1))
    {
      goto LABEL_94;
    }

    goto LABEL_96;
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

uint64_t sub_21BD27D94(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v62 = &v13[v9];
    if (v7 < 8 || v5 >= v4)
    {
LABEL_28:
      v5 = v6;
      goto LABEL_56;
    }

    v14 = &selRef_fa_URLByAddingAirdropInviteParams;
    v56 = v4;
    while (1)
    {
      v58 = v6;
      v60 = v5;
      v15 = *v13;
      v16 = *v5;
      v17 = v15;
      v18 = [v16 v14[339]];
      if (v18)
      {
        v19 = v18;
        v20 = sub_21BE28A0C();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0xE000000000000000;
      }

      v23 = v14;
      v24 = [v17 v14[339]];
      if (v24)
      {
        v25 = v24;
        v26 = sub_21BE28A0C();
        v28 = v27;

        if (v20 != v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v28 = 0xE000000000000000;
        if (v20)
        {
          goto LABEL_21;
        }
      }

      if (v22 == v28)
      {

LABEL_24:
        v31 = v13;
        v30 = v58;
        v5 = v60;
        v33 = v58 == v13++;
        v32 = v56;
        if (v33)
        {
          goto LABEL_26;
        }

LABEL_25:
        *v30 = *v31;
        goto LABEL_26;
      }

LABEL_21:
      v29 = sub_21BE2995C();

      if ((v29 & 1) == 0)
      {
        goto LABEL_24;
      }

      v30 = v58;
      v31 = v60;
      v5 = v60 + 1;
      v32 = v56;
      if (v58 != v60)
      {
        goto LABEL_25;
      }

LABEL_26:
      v6 = v30 + 1;
      if (v13 < v62)
      {
        v14 = v23;
        if (v5 < v32)
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  if (a4 != __src || &__src[v12] <= a4)
  {
    v34 = a4;
    memmove(a4, __src, 8 * v12);
    a4 = v34;
  }

  v62 = &a4[v12];
  v13 = a4;
  if (v10 >= 8 && v5 > v6)
  {
    v35 = &selRef_fa_URLByAddingAirdropInviteParams;
    v55 = a4;
    v59 = v6;
LABEL_36:
    v61 = v5;
    v36 = v5 - 1;
    v37 = v4;
    v38 = v62;
    v57 = v5 - 1;
    while (1)
    {
      v39 = *--v38;
      v40 = *v36;
      v41 = v39;
      v42 = v40;
      v43 = [v41 v35[339]];
      if (v43)
      {
        v44 = v43;
        v45 = sub_21BE28A0C();
        v47 = v46;
      }

      else
      {
        v45 = 0;
        v47 = 0xE000000000000000;
      }

      v48 = [v42 v35[339]];
      if (v48)
      {
        v49 = v48;
        v50 = sub_21BE28A0C();
        v52 = v51;

        if (v45 != v50)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v52 = 0xE000000000000000;
        if (v45)
        {
          goto LABEL_47;
        }
      }

      if (v47 != v52)
      {
LABEL_47:
        v53 = sub_21BE2995C();

        v4 = v37 - 1;
        if (v53)
        {
          v13 = v55;
          v35 = &selRef_fa_URLByAddingAirdropInviteParams;
          if (v37 != v61)
          {
            *v4 = *v57;
          }

          if (v62 <= v55 || (v5 = v57, v57 <= v59))
          {
            v5 = v57;
            break;
          }

          goto LABEL_36;
        }

        goto LABEL_48;
      }

      v4 = v37 - 1;
LABEL_48:
      v13 = v55;
      v36 = v57;
      v35 = &selRef_fa_URLByAddingAirdropInviteParams;
      if (v62 != v37)
      {
        *v4 = *v38;
      }

      v62 = v38;
      v37 = v4;
      if (v38 <= v55)
      {
        v62 = v38;
        v5 = v61;
        break;
      }
    }
  }

LABEL_56:
  if (v5 != v13 || v5 >= (v13 + ((v62 - v13 + (v62 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * (v62 - v13));
  }

  return 1;
}

uint64_t sub_21BD281F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA7B8, &unk_21BE44280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD28260(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA7B8, &unk_21BE44280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BD282DC()
{
  result = qword_27CDBA7C0;
  if (!qword_27CDBA7C0)
  {
    result = swift_getWitnessTable(byte_21BE442B8, &type metadata for SubscriptionsServicesDataLoaderError, v0, v1);
    atomic_store(result, &qword_27CDBA7C0);
  }

  return result;
}

unint64_t sub_21BD28334()
{
  result = qword_27CDBA7C8;
  if (!qword_27CDBA7C8)
  {
    result = swift_getWitnessTable(aIF, &type metadata for SubscriptionsServicesDataLoaderError, v0, v1);
    atomic_store(result, &qword_27CDBA7C8);
  }

  return result;
}

uint64_t type metadata accessor for MultipleInviteViewForInvitee(uint64_t a1)
{
  result = qword_27CDBA7D0;
  if (!qword_27CDBA7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD283FC(uint64_t a1)
{
  sub_21BD284C8(319);
  if (v1 <= 0x3F)
  {
    sub_21BD2855C(319);
    if (v2 <= 0x3F)
    {
      sub_21BB40410(319);
      if (v3 <= 0x3F)
      {
        sub_21BE2934C();
        if (v4 <= 0x3F)
        {
          sub_21BB403C0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21BD284C8(uint64_t a1)
{
  if (!qword_27CDBA7E0)
  {
    type metadata accessor for MultipleInviteViewModel(255);
    sub_21BD2B2C0(&qword_27CDB7D68, type metadata accessor for MultipleInviteViewModel, protocol conformance descriptor for MultipleInviteViewModel);
    v1 = sub_21BE270DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDBA7E0);
    }
  }
}

void sub_21BD2855C(uint64_t a1)
{
  if (!qword_27CDBA7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7D70, &qword_21BE39BD0);
    v1 = sub_21BE2842C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDBA7E8);
    }
  }
}

void sub_21BD285DC(BOOL *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA8A0, &unk_21BE44520);
  sub_21BE283FC();
  if (v3)
  {
  }

  *a2 = v3 != 0;
}

void sub_21BD28644()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v32 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = (v0 + *(type metadata accessor for MultipleInviteViewForInvitee(0) + 32));
  v9 = *v8;
  v10 = *(v8 + 1);
  LOBYTE(v34) = *v8;
  *(&v34 + 1) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  if (v33)
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v12 = v34 >> 62 ? sub_21BE2951C() : *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v12 != 1)
  {
    return;
  }

  v30 = v11;
  sub_21BE260FC();
  v13 = sub_21BE26A2C();
  v14 = sub_21BE28FCC();
  v15 = os_log_type_enabled(v13, v14);
  v31 = v9;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v34 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_21BB3D81C(0xD000000000000016, 0x800000021BE5EAD0, &v34);
    _os_log_impl(&dword_21BB35000, v13, v14, "%s ...", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x21CF05C50](v17, -1, -1);
    MEMORY[0x21CF05C50](v16, -1, -1);
  }

  v18 = *(v32 + 8);
  v18(v7, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v19 = v34;
  if (v34 >> 62)
  {
    v29 = sub_21BE2951C();
    v20 = v31;
    if (v29)
    {
      goto LABEL_9;
    }

LABEL_17:

    return;
  }

  v20 = v31;
  if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x21CF047C0](0, v19);
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v21 = *(v19 + 32);
  }

  v22 = v21;

  sub_21BE260FC();
  v23 = sub_21BE26A2C();
  v24 = sub_21BE28FCC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v20;
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_21BB35000, v23, v24, "invitation view setting invite", v26, 2u);
    v27 = v26;
    v20 = v25;
    MEMORY[0x21CF05C50](v27, -1, -1);
  }

  v18(v5, v2);
  v34 = *(v1 + 16);
  v33 = v22;
  v28 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA8A0, &unk_21BE44520);
  sub_21BE2840C();
  LOBYTE(v34) = v20;
  *(&v34 + 1) = v10;
  LOBYTE(v33) = 1;

  sub_21BE2840C();
}

uint64_t sub_21BD28ABC()
{
  v1[10] = v0;
  sub_21BE28D7C();
  v1[11] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[12] = v3;
  v1[13] = v2;

  return MEMORY[0x2822009F8](sub_21BD28B54, v3, v2);
}

uint64_t sub_21BD28B54()
{
  v1 = *(v0 + 80);
  v2 = (v1 + *(type metadata accessor for MultipleInviteViewForInvitee(0) + 32));
  v3 = *v2;
  *(v0 + 138) = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 112) = v4;
  *(v0 + 24) = v4;
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  if (*(v0 + 136))
  {
    goto LABEL_10;
  }

  v5 = *(*(v0 + 80) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v6 = *(v0 + 64);
  if (v6 >> 62)
  {
    v14 = sub_21BE2951C();

    if (!v14)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v7)
    {
      goto LABEL_10;
    }
  }

  v8 = *(v5 + 40);
  v9 = *(v5 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v5 + 16), v8);
  v10 = (*(v9 + 8))(v8, v9);
  v11 = [v10 me];

  if (!v11 || (v11, (*(v5 + 96) & 1) != 0))
  {

    v12 = *(v0 + 8);

    return v12();
  }

LABEL_10:
  *(v0 + 32) = *(*(v0 + 80) + 16);
  *(v0 + 72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA8A0, &unk_21BE44520);
  sub_21BE2840C();
  v15 = swift_task_alloc();
  *(v0 + 128) = v15;
  *v15 = v0;
  v15[1] = sub_21BD28DC0;

  return sub_21BD440CC();
}

uint64_t sub_21BD28DC0()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_21BD28EE0, v3, v2);
}

uint64_t sub_21BD28EE0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 138);

  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  *(v0 + 137) = 0;
  sub_21BE2840C();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21BD28F6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v3 = type metadata accessor for MultipleInviteViewForInvitee(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v60 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA7F0, &qword_21BE44438);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA7F8, &qword_21BE44440);
  MEMORY[0x28223BE20](v13);
  v15 = &v53 - v14;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA800, &unk_21BE44448);
  MEMORY[0x28223BE20](v61);
  v62 = &v53 - v16;
  v17 = v2 + *(v4 + 40);
  v18 = *v17;
  v19 = *(v17 + 8);
  LOBYTE(v63) = v18;
  v64 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  v20 = sub_21BE283FC();
  if (v66)
  {
    v21 = 1;
  }

  else
  {
    v57 = &v53;
    MEMORY[0x28223BE20](v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA808, &qword_21BE44458);
    sub_21BD2AB30();
    sub_21BE27D1C();
    (*(v10 + 32))(v15, v12, v9);
    v21 = 0;
  }

  (*(v10 + 56))(v15, v21, 1, v9);
  v22 = v60;
  sub_21BC50054(v2, v60);
  v23 = *(v5 + 80);
  v56 = ~v23;
  v24 = (v23 + 16) & ~v23;
  v25 = v6;
  v26 = swift_allocObject();
  sub_21BD2AC70(v22, v26 + v24);
  v27 = &v15[*(v13 + 36)];
  *v27 = sub_21BD2ACD4;
  v27[1] = v26;
  v27[2] = 0;
  v27[3] = 0;
  v28 = *(v2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  sub_21BC50054(v2, v22);
  v57 = v25;
  v29 = swift_allocObject();
  v54 = v24;
  sub_21BD2AC70(v22, v29 + v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB72D0, &qword_21BE36D30);
  sub_21BD2AD30();
  v55 = v2;
  sub_21BD2AEF0();
  v30 = v62;
  sub_21BE281BC();

  sub_21BB3A4CC(v15, &qword_27CDBA7F8, &qword_21BE44440);
  KeyPath = swift_getKeyPath();
  v32 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA878, &qword_21BE44508) + 36)];
  *&v32[*(type metadata accessor for HandleInviteErrorAlertViewModifier(0) + 24)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  swift_storeEnumTagMultiPayload();
  *v32 = 0;
  v66 = 0;
  sub_21BE283EC();
  v33 = v64;
  v32[8] = v63;
  *(v32 + 2) = v33;
  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  v34 = [swift_getObjCClassFromMetadata() defaultCenter];
  if (qword_27CDB4EE8 != -1)
  {
    swift_once();
  }

  sub_21BE2935C();

  sub_21BB3A35C(v28 + 56, &v63);
  __swift_project_boxed_opaque_existential_1Tm(&v63, v65);
  v35 = off_282D95F68;
  type metadata accessor for FamilyPictureStore(0);
  v36 = v35();
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0, protocol conformance descriptor for FAProfilePictureStore);
  v37 = sub_21BE26BFC();
  v38 = &v62[*(v61 + 36)];
  *v38 = v37;
  v38[1] = v36;
  __swift_destroy_boxed_opaque_existential_0Tm(&v63);
  v39 = v55;
  v40 = v60;
  sub_21BC50054(v55, v60);
  sub_21BE28D7C();
  v41 = sub_21BE28D6C();
  v42 = (v23 + 32) & v56;
  v43 = swift_allocObject();
  v44 = MEMORY[0x277D85700];
  *(v43 + 16) = v41;
  *(v43 + 24) = v44;
  sub_21BD2AC70(v40, v43 + v42);
  v45 = sub_21BE28D6C();
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  *(v46 + 24) = v44;
  sub_21BE2857C();
  sub_21BC50054(v39, v40);
  v47 = v54;
  v48 = swift_allocObject();
  sub_21BD2AC70(v40, v48 + v47);
  v49 = v58;
  sub_21BC50054(v39, v58);
  v50 = swift_allocObject();
  sub_21BD2AC70(v49, v50 + v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA880, &unk_21BE44510);
  sub_21BD2B0E4();
  sub_21BD2B308();
  v51 = v62;
  sub_21BE2812C();

  return sub_21BB537E8(v51);
}

uint64_t sub_21BD297B8(uint64_t a1)
{
  v2 = type metadata accessor for MultipleInviteViewForInvitee(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  swift_getKeyPath();
  sub_21BC50054(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_21BD2AC70(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB72D0, &qword_21BE36D30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA820, &qword_21BE44460);
  sub_21BB3B038(&qword_27CDBA8A8, &qword_27CDB72D0, &qword_21BE36D30, MEMORY[0x277D83980]);
  sub_21BB3CC48(&qword_27CDBA8B0, &qword_27CDB75A8, 0x277D08260, MEMORY[0x277D85378]);
  sub_21BD2ABB4();
  return sub_21BE285BC();
}

id sub_21BD299E4(void **a1, uint64_t a2)
{
  v4 = sub_21BE25D1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = sub_21BE2913C();
  v11 = v10;
  result = [v8 inviteDate];
  if (result)
  {
    v13 = result;
    sub_21BE25CDC();

    v14 = sub_21BC54688();
    v16 = v15;
    v17 = (*(v5 + 8))(v7, v4);
    MEMORY[0x28223BE20](v17);
    *(&v18 - 6) = v8;
    *(&v18 - 5) = v9;
    *(&v18 - 4) = v11;
    *(&v18 - 3) = v14;
    *(&v18 - 2) = v16;
    *(&v18 - 1) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA830, &unk_21BE44468);
    sub_21BB3B038(&qword_27CDBA828, &qword_27CDBA830, &unk_21BE44468, MEMORY[0x277CE14C0]);
    sub_21BE2860C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BD29BC8@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v30 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA8B8, qword_21BE4C890);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v29 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  v28 = sub_21BE275DC();
  v34 = 1;
  sub_21BD29FA8(a4, a5, &v47);
  v39 = *&v48[48];
  v40 = *&v48[64];
  v41 = *&v48[80];
  v42 = *&v48[96];
  v35 = v47;
  v36 = *v48;
  v37 = *&v48[16];
  v38 = *&v48[32];
  v43[0] = v47;
  v43[1] = *v48;
  v43[2] = *&v48[16];
  v43[3] = *&v48[32];
  v43[4] = *&v48[48];
  v43[5] = *&v48[64];
  v43[6] = *&v48[80];
  v44 = *&v48[96];
  sub_21BBA3854(&v35, &v45, &qword_27CDBA8C0, &unk_21BE44570);
  sub_21BB3A4CC(v43, &qword_27CDBA8C0, &unk_21BE44570);
  *(&v33[4] + 7) = v39;
  *(&v33[5] + 7) = v40;
  *(&v33[6] + 7) = v41;
  *(v33 + 7) = v35;
  *(&v33[1] + 7) = v36;
  *(&v33[2] + 7) = v37;
  *(&v33[7] + 7) = v42;
  *(&v33[3] + 7) = v38;
  LOBYTE(a5) = v34;
  v31 = v30;
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460, MEMORY[0x277CDF028]);
  sub_21BE2860C();
  v17 = *(v12 + 16);
  v18 = v29;
  v17(v29, v16, v11);
  v19 = v28;
  v45 = v28;
  LOBYTE(v46[0]) = a5;
  *(v46 + 1) = v33[0];
  *(&v46[1] + 1) = v33[1];
  *(&v46[5] + 1) = v33[5];
  *(&v46[4] + 1) = v33[4];
  *(&v46[6] + 1) = v33[6];
  v46[7] = *(&v33[6] + 15);
  *(&v46[2] + 1) = v33[2];
  *(&v46[3] + 1) = v33[3];
  v20 = v46[6];
  *(a7 + 6) = v46[5];
  *(a7 + 7) = v20;
  *(a7 + 8) = v46[7];
  v21 = v46[2];
  *(a7 + 2) = v46[1];
  *(a7 + 3) = v21;
  v22 = v46[4];
  *(a7 + 4) = v46[3];
  *(a7 + 5) = v22;
  v23 = v46[0];
  *a7 = v45;
  *(a7 + 1) = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA8C8, &qword_21BE44580);
  v17(&a7[*(v24 + 48)], v18, v11);
  sub_21BBA3854(&v45, &v47, &qword_27CDBA8D0, &qword_21BE44588);
  v25 = *(v12 + 8);
  v25(v16, v11);
  v25(v18, v11);
  *&v48[65] = v33[4];
  *&v48[81] = v33[5];
  *&v48[97] = v33[6];
  *&v48[112] = *(&v33[6] + 15);
  *&v48[1] = v33[0];
  *&v48[17] = v33[1];
  *&v48[33] = v33[2];
  v47 = v19;
  v48[0] = a5;
  *&v48[49] = v33[3];
  return sub_21BB3A4CC(&v47, &qword_27CDBA8D0, &qword_21BE44588);
}

void sub_21BD29FA8(uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = sub_21BE2912C();
  if (qword_27CDB4E58 != -1)
  {
    swift_once();
  }

  if (byte_27CDD41B0)
  {
    v9 = 40.0;
  }

  else
  {
    v9 = 38.0;
  }

  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0, protocol conformance descriptor for FAProfilePictureStore);
  v10 = sub_21BE2727C();
  v12 = v11;
  v13 = sub_21BE2771C();
  LOBYTE(v30[0]) = 1;
  sub_21BD2A1FC(a3, a4, v26);
  *&v25[55] = v27;
  *&v25[39] = v26[2];
  *&v25[23] = v26[1];
  *&v25[7] = v26[0];
  v14 = v30[0];
  v28 = v13;
  v29[0] = v30[0];
  v15 = *&v25[16];
  *&v29[1] = *v25;
  *&v29[64] = *(&v27 + 1);
  *&v29[49] = *&v25[48];
  v16 = *&v25[32];
  *&v29[33] = *&v25[32];
  v17 = *v25;
  *&v29[17] = *&v25[16];
  *a5 = v9;
  *(a5 + 8) = v8;
  *(a5 + 16) = v10;
  *(a5 + 24) = v12;
  v18 = *v29;
  *(a5 + 32) = v28;
  *(a5 + 48) = v18;
  v19 = *&v29[48];
  v20 = *&v29[16];
  v21 = *&v29[32];
  *(a5 + 112) = *&v29[64];
  *(a5 + 80) = v21;
  *(a5 + 96) = v19;
  *(a5 + 64) = v20;
  v30[0] = v13;
  v30[1] = 0;
  v31 = v14;
  v32 = v17;
  *&v35[15] = *&v25[63];
  *v35 = *&v25[48];
  v34 = v16;
  v33 = v15;
  v22 = v10;
  v23 = v8;
  sub_21BBA3854(&v28, &v24, &qword_27CDB9550, &qword_21BE3FAA0);
  sub_21BB3A4CC(v30, &qword_27CDB9550, &qword_21BE3FAA0);
}

uint64_t sub_21BD2A1FC@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_21BB41FA4();

  v8 = MEMORY[0x277D837D0];
  v9 = sub_21BE27DBC();
  v11 = v10;
  v13 = v12;
  sub_21BE27BFC();
  v14 = sub_21BE27D9C();
  v34 = v15;
  v35 = v14;
  v33 = v16;
  v36 = v17;

  sub_21BBC7C7C(v9, v11, v13 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21BE32770;
  *(v18 + 56) = v8;
  *(v18 + 64) = sub_21BBBEFE8();
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = objc_opt_self();

  v21 = [v20 bundleForClass_];
  sub_21BE2599C();

  sub_21BE289DC();

  v22 = sub_21BE27DBC();
  v24 = v23;
  LOBYTE(v20) = v25;
  sub_21BE27CBC();
  v26 = sub_21BE27D9C();
  v28 = v27;
  LOBYTE(v8) = v29;
  v31 = v30;

  sub_21BBC7C7C(v22, v24, v20 & 1);

  *a5 = v35;
  *(a5 + 8) = v34;
  *(a5 + 16) = v33 & 1;
  *(a5 + 24) = v36;
  *(a5 + 32) = v26;
  *(a5 + 40) = v28;
  *(a5 + 48) = v8 & 1;
  *(a5 + 56) = v31;
  sub_21BBA4A38(v35, v34, v33 & 1);

  sub_21BBA4A38(v26, v28, v8 & 1);

  sub_21BBC7C7C(v26, v28, v8 & 1);

  sub_21BBC7C7C(v35, v34, v33 & 1);
}

uint64_t sub_21BD2A4F4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for MultipleInviteViewForInvitee(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_21BE2599C();
  v11 = v10;

  v16[0] = v9;
  v16[1] = v11;
  sub_21BC50054(a1, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_21BD2AC70(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  sub_21BB41FA4();
  v14 = a2;
  return sub_21BE2845C();
}

uint64_t sub_21BD2A6C8(uint64_t a1, void *a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA8A0, &unk_21BE44520);
  return sub_21BE2840C();
}

double sub_21BD2A720(uint64_t a1)
{
  v2 = type metadata accessor for MultipleInviteViewForInvitee(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_21BE28DAC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_21BC50054(a1, v5);
  sub_21BE28D7C();
  v10 = sub_21BE28D6C();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_21BD2AC70(v5, v12 + v11);
  sub_21BBA932C(0, 0, v8, &unk_21BE44538, v12);

  return result;
}

uint64_t sub_21BD2A8D8()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BD28ABC();
}

double sub_21BD2A984@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA8A0, &unk_21BE44520);
  sub_21BE283FC();
  if (v10 && (v3 = [v10 code], v10, v3))
  {
    sub_21BE28A0C();

    sub_21BCCAA08();
  }

  else
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_21BE2599C();
    v8 = v7;

    *&v11 = v6;
    *(&v11 + 1) = v8;
    sub_21BB41FA4();
    sub_21BE27DBC();
    sub_21BCCAA08();
  }

  sub_21BE2784C();
  result = *&v11;
  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 32) = v13;
  return result;
}

unint64_t sub_21BD2AB30()
{
  result = qword_27CDBA810;
  if (!qword_27CDBA810)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA808, &qword_21BE44458);
    v4[0] = sub_21BD2ABB4();
    result = swift_getWitnessTable(MEMORY[0x277CE1290], v3, v4);
    atomic_store(result, &qword_27CDBA810);
  }

  return result;
}

unint64_t sub_21BD2ABB4()
{
  result = qword_27CDBA818;
  if (!qword_27CDBA818)
  {
    v5[5] = v0;
    v5[6] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA820, &qword_21BE44460);
    v4 = sub_21BB3B038(&qword_27CDBA828, &qword_27CDBA830, &unk_21BE44468, MEMORY[0x277CE14C0]);
    v5[0] = MEMORY[0x277CE1410];
    v5[1] = v4;
    v5[2] = MEMORY[0x277CE1410];
    result = swift_getWitnessTable(MEMORY[0x277CDF0A8], v3, v5);
    atomic_store(result, &qword_27CDBA818);
  }

  return result;
}

uint64_t sub_21BD2AC70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipleInviteViewForInvitee(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BD2AD30()
{
  result = qword_27CDBA838;
  if (!qword_27CDBA838)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA7F8, &qword_21BE44440);
    v4[0] = sub_21BD2ADBC();
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA838);
  }

  return result;
}

unint64_t sub_21BD2ADBC()
{
  result = qword_27CDBA840;
  if (!qword_27CDBA840)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA848, &qword_21BE444C8);
    v4[0] = sub_21BD2AE40();
    result = swift_getWitnessTable(MEMORY[0x277CE0FB0], v3, v4);
    atomic_store(result, &qword_27CDBA840);
  }

  return result;
}

unint64_t sub_21BD2AE40()
{
  result = qword_27CDBA850;
  if (!qword_27CDBA850)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA858, &qword_21BE444D0);
    v4[0] = sub_21BB3B038(&qword_27CDBA860, &qword_27CDBA7F0, &qword_21BE44438, MEMORY[0x277CDE5A0]);
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27CDBA850);
  }

  return result;
}

unint64_t sub_21BD2AEF0()
{
  result = qword_27CDBA868;
  if (!qword_27CDBA868)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB72D0, &qword_21BE36D30);
    v4[0] = sub_21BB3CC48(&qword_27CDBA870, &qword_27CDB75A8, 0x277D08260, MEMORY[0x277D85380]);
    result = swift_getWitnessTable(MEMORY[0x277D83968], v3, v4);
    atomic_store(result, &qword_27CDBA868);
  }

  return result;
}

void sub_21BD2AFA0(BOOL *a1@<X8>)
{
  type metadata accessor for MultipleInviteViewForInvitee(0);

  sub_21BD285DC(a1);
}

double sub_21BD2B014()
{
  v1 = *(type metadata accessor for MultipleInviteViewForInvitee(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21BD2A720(v2);
}

double sub_21BD2B074@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MultipleInviteViewForInvitee(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21BD2A984(v4, a1);
}

unint64_t sub_21BD2B0E4()
{
  result = qword_27CDBA888;
  if (!qword_27CDBA888)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA800, &unk_21BE44448);
    v4[0] = sub_21BD2B19C();
    v4[1] = sub_21BB3B038(&qword_27CDB6B20, &qword_27CDB6B28, &qword_21BE35DB8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA888);
  }

  return result;
}

unint64_t sub_21BD2B19C()
{
  result = qword_27CDBA890;
  if (!qword_27CDBA890)
  {
    v4[10] = v0;
    v4[11] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA878, &qword_21BE44508);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA7F8, &qword_21BE44440);
    v4[3] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB72D0, &qword_21BE36D30);
    v4[4] = sub_21BD2AD30();
    v4[5] = sub_21BD2AEF0();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_21BD2B2C0(&qword_27CDB96A0, type metadata accessor for HandleInviteErrorAlertViewModifier, asc_21BE3FEF0);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA890);
  }

  return result;
}

uint64_t sub_21BD2B2C0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_21BD2B308()
{
  result = qword_27CDBA898;
  if (!qword_27CDBA898)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA880, &unk_21BE44510);
    v4[0] = sub_21BCCAA08();
    v4[1] = MEMORY[0x277CE0BC8];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBA898);
  }

  return result;
}

uint64_t objectdestroy_11Tm()
{
  v1 = type metadata accessor for MultipleInviteViewForInvitee(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21BE26F5C();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = *(v1 + 28);
  v7 = sub_21BE2934C();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_21BD2B520()
{
  type metadata accessor for MultipleInviteViewForInvitee(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBA6A64;

  return sub_21BD2A8D8();
}

uint64_t objectdestroyTm_19()
{
  v1 = type metadata accessor for MultipleInviteViewForInvitee(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21BE26F5C();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 28);
  v6 = sub_21BE2934C();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  return swift_deallocObject();
}

id sub_21BD2B794(void **a1)
{
  v3 = *(type metadata accessor for MultipleInviteViewForInvitee(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21BD299E4(a1, v4);
}

uint64_t sub_21BD2B82C()
{
  v1 = *(type metadata accessor for MultipleInviteViewForInvitee(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21BD2A6C8(v0 + v2, v3);
}

char *static AnyLinkDestination.path(fromString:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  if (a2)
  {

    sub_21BE25B7C();

    v10 = sub_21BE25B9C();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      v12 = sub_21BE25B0C();
      (*(v11 + 8))(v9, v10);
      v13 = v12;
      goto LABEL_6;
    }
  }

  else
  {
    v14 = sub_21BE25B9C();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  }

  sub_21BB3A4CC(v9, &unk_27CDB57F0, &qword_21BE328A0);
  v13 = MEMORY[0x277D84F90];
LABEL_6:
  v39._rawValue = v13;
  if (v13[2])
  {
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      AnyLinkDestination.init(pathComponents:)(&v39, &v33);
      if (!*(&v34 + 1))
      {
        break;
      }

      v37[0] = v33;
      v37[1] = v34;
      v37[2] = v35;
      v38 = v36;
      sub_21BC23F14(v37, &v33);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_21BBBD0A0(0, *(v15 + 2) + 1, 1, v15);
      }

      v17 = *(v15 + 2);
      v16 = *(v15 + 3);
      if (v17 >= v16 >> 1)
      {
        v15 = sub_21BBBD0A0((v16 > 1), v17 + 1, 1, v15);
      }

      sub_21BC17C80(v37);
      *(v15 + 2) = v17 + 1;
      v18 = &v15[56 * v17];
      v19 = v35;
      v20 = v33;
      v21 = v34;
      *(v18 + 10) = v36;
      *(v18 + 3) = v21;
      *(v18 + 4) = v19;
      *(v18 + 2) = v20;
      if (!*(v39._rawValue + 2))
      {
        goto LABEL_19;
      }
    }

    sub_21BB3A4CC(&v33, &qword_27CDB7278, &qword_21BE3A250);
    sub_21BE260FC();
    v22 = sub_21BE26A2C();
    v23 = sub_21BE28FDC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v33 = v25;
      *v24 = 136315138;
      swift_beginAccess();
      v32 = v3;

      v27 = MEMORY[0x21CF03DF0](v26, MEMORY[0x277D837D0]);
      v29 = v28;

      v30 = sub_21BB3D81C(v27, v29, &v33);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_21BB35000, v22, v23, "Failed parse destination for pathComponents: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x21CF05C50](v25, -1, -1);
      MEMORY[0x21CF05C50](v24, -1, -1);

      (*(v4 + 8))(v6, v32);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

LABEL_19:

  return v15;
}

uint64_t sub_21BD2BD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v8 + 16))(v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB62A8, &qword_21BE34240);
  if (swift_dynamicCast())
  {
    sub_21BB3D104(v18, v20);
    v10 = v21;
    v11 = v22;
    v12 = __swift_project_boxed_opaque_existential_1Tm(v20, v21);
    MEMORY[0x28223BE20](v12);
    v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v14);
    sub_21BD2C034(v14, v10, v11, a4);
    (*(v8 + 8))(a1, a2);
    return __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_21BB3A4CC(v18, &qword_27CDB62B0, &unk_21BE446C0);
    a4[3] = a2;
    a4[4] = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
    (*(v8 + 32))(boxed_opaque_existential_1, a1, a2);
    result = swift_allocObject();
    *(result + 16) = a2;
    *(result + 24) = a3;
    a4[5] = sub_21BD2DCA0;
    a4[6] = result;
  }

  return result;
}

uint64_t AnyLinkDestination.linkTypeIdentifier.getter()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return LinkDestination.linkTypeIdentifier.getter(v1);
}

uint64_t AnyLinkDestination.linkType.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_21BD2C034@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = *(v10 + 8);
  a4[3] = v12;
  a4[4] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  (*(v8 + 16))(boxed_opaque_existential_1, a1, a2);
  v14 = *(v8 + 32);
  v14(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  result = (v14)(v16 + v15, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  a4[5] = sub_21BD2DCBC;
  a4[6] = v16;
  return result;
}

uint64_t sub_21BD2C18C(void *a1, uint64_t a2)
{
  v4 = sub_21BE2966C();
  swift_allocError();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6248, &qword_21BE446D0);
  v6[3] = swift_getMetatypeMetadata();
  *v6 = a2;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BE29B5C();
  sub_21BE28A7C();
  sub_21BE2963C();
  (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D841A8], v4);
  return swift_willThrow();
}

uint64_t sub_21BD2C2C0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v17 = v11;
  v18 = *(v9 + 8);
  v19 = v10;
  v12 = type metadata accessor for AnyLinkDestination.Envelope(0, &v17);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v17 - v14;
  (*(v6 + 16))(v8, a2, a3);
  (*(v6 + 32))(v15, v8, a3);
  sub_21BD2C4B4(a1, v12);
  return (*(v13 + 8))(v15, v12);
}

void sub_21BD2C4B4(void *a1, uint64_t a2)
{
  v5 = sub_21BE2590C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE258FC();
  sub_21BE257BC();
  swift_allocObject();
  sub_21BE257AC();
  v9 = *(a2 + 16);
  v10 = sub_21BE2579C();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v23 = a1;
    v12 = v10;
    v13 = v11;

    sub_21BE25BDC();
    sub_21BBBEF94(v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5810, qword_21BE328D0);
    sub_21BE2585C();
    *(swift_allocObject() + 16) = xmmword_21BE32770;
    v21 = v9;
    swift_getMetatypeMetadata();
    sub_21BE28A7C();
    sub_21BE2582C();

    sub_21BE2587C();
    v14 = sub_21BE2588C();
    if (v15)
    {
      v21 = 63;
      v22 = 0xE100000000000000;
      MEMORY[0x21CF03CA0](v14);

      sub_21BE28B0C();
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      v16 = sub_21BE2966C();
      swift_allocError();
      v18 = v17;
      v20[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6248, &qword_21BE446D0) + 48);
      v18[3] = v5;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
      (*(v6 + 16))(boxed_opaque_existential_1, v8, v5);
      __swift_project_boxed_opaque_existential_1Tm(v23, v23[3]);
      sub_21BE29B5C();
      sub_21BE2963C();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D841A8], v16);
      swift_willThrow();
      (*(v6 + 8))(v8, v5);
    }
  }
}

uint64_t AnyLinkDestination.isEqual(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1Tm(a1, v2);

  return sub_21BD2DA94(v4, v1, v2, v3);
}

double AnyLinkDestination.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27CDB4E30 != -1)
  {
    swift_once();
  }

  sub_21BD2C9C8(a1, qword_27CDD4130);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  if (!v2)
  {
    sub_21BB3D104(&v6, a2);
    result = *&v7;
    *(a2 + 40) = v7;
  }

  return result;
}

void sub_21BD2C9C8(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = a2 + 40;
    while (1)
    {
      v6 = *(v5 - 8);

      v6(a1);
      if (!v2)
      {
        break;
      }

      v2 = 0;
      v5 += 16;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = sub_21BE2964C();
    swift_allocError();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6258, &qword_21BE34228);
    *v9 = &type metadata for AnyLinkDestination;
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_21BE29B1C();
    sub_21BE2963C();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84170], v7);
    swift_willThrow();
  }
}