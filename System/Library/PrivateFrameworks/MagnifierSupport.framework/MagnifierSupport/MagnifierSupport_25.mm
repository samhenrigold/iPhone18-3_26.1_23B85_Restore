double sub_257E11128()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0, &unk_257ED8210);
  MEMORY[0x28223BE20](v1 - 8, v2, v3, v4, v5);
  v78 = &v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D98, &unk_257EEBAF0);
  v66 = *(v7 - 8);
  v67 = v7;
  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  v13 = &v62 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DA0, &unk_257EECA60);
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v14, v15, v16, v17);
  v65 = &v62 - v18;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DA8, &qword_257EEBB00);
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v19, v20, v21, v22);
  v64 = &v62 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9DB0, &qword_257EEBB08);
  v76 = *(v24 - 8);
  v77 = v24;
  MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
  v75 = &v62 - v29;
  v30 = objc_allocWithZone(MEMORY[0x277D757F8]);
  v31 = v0;
  v32 = [v30 initWithTarget:v31 action:sel_didPanPreviewView_];
  [v32 setDelegate_];
  v33 = sub_257DFF59C();
  [v33 addGestureRecognizer_];

  v34 = *&v31[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPanGesture];
  *&v31[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPanGesture] = v32;
  v74 = v32;

  v35 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v31 action:sel_didLongPressToFocus_];
  [v35 setNumberOfTouchesRequired_];
  [v35 setMinimumPressDuration_];
  [v35 setDelegate_];
  v36 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView;
  [*&v31[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView] addGestureRecognizer_];
  v37 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v31 action:sel_didTapToChangeFocus_];
  [v37 setNumberOfTouchesRequired_];
  [v37 setNumberOfTapsRequired_];
  [v37 setDelegate_];
  v73 = v35;
  [v37 requireGestureRecognizerToFail_];
  [*&v31[v36] addGestureRecognizer_];
  v38 = *&v31[v36];
  v39 = sub_257DFF620();
  [v38 addGestureRecognizer_];

  v40 = [objc_allocWithZone(MEMORY[0x277D75848]) initWithTarget:v31 action:sel_didPinchToZoom_];
  [*&v31[v36] addGestureRecognizer_];
  v41 = *&v31[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPinchGesture];
  *&v31[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPinchGesture] = v40;
  v63 = v40;

  v42 = *&v31[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___doubleTapGesture];
  v72 = v37;
  [v37 requireGestureRecognizerToFail_];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A08, &unk_257EE6E40);
  sub_257ECDD30();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DC0, &unk_257EE6B60);
  sub_257BD2D4C(&qword_281544128, &qword_27F8F9D98, &unk_257EEBAF0, MEMORY[0x277CBCEC8]);
  v43 = v65;
  v44 = v67;
  sub_257ECDDA0();
  (*(v66 + 8))(v13, v44);
  v45 = sub_257BD2D4C(&qword_281544470, &qword_27F8F9DA0, &unk_257EECA60, MEMORY[0x277CBCB10]);
  v46 = sub_257BD2D4C(&qword_281543DA8, &qword_27F8F9DC0, &unk_257EE6B60, MEMORY[0x277CC9E08]);
  v47 = v64;
  v48 = v71;
  MEMORY[0x259C70960](v71, v45, v46);
  (*(v69 + 8))(v43, v48);
  sub_257BD2D4C(&qword_2815443F0, &qword_27F8F9DA8, &qword_257EEBB00, MEMORY[0x277CBCBB0]);
  v49 = v70;
  v50 = sub_257ECDD90();
  (*(v68 + 8))(v47, v49);
  v80 = v50;
  v51 = [objc_opt_self() mainRunLoop];
  v79 = v51;
  v52 = sub_257ED0080();
  v53 = v78;
  (*(*(v52 - 8) + 56))(v78, 1, 1, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9DC8, &unk_257EEBB10);
  sub_257BD2C2C(0, &unk_281543D40, 0x277CBEB88);
  sub_257BD2D4C(&qword_2815441D0, &unk_27F8F9DC8, &unk_257EEBB10, MEMORY[0x277CBCD90]);
  sub_257CA64A0(&qword_281543D50, &unk_281543D40, 0x277CBEB88, MEMORY[0x277CC9E80]);
  v54 = v75;
  sub_257ECDDF0();
  sub_257BE4084(v53, &unk_27F8F4DB0, &unk_257ED8210);

  v55 = swift_allocObject();
  v56 = v74;
  swift_unknownObjectWeakInit();

  v57 = swift_allocObject();
  v58 = v72;
  swift_unknownObjectWeakInit();
  v59 = swift_allocObject();
  *(v59 + 16) = v55;
  *(v59 + 24) = v57;
  sub_257BD2D4C(&unk_281544268, &unk_27F8F9DB0, &qword_257EEBB08, MEMORY[0x277CBCD60]);
  v60 = v77;
  sub_257ECDE50();

  (*(v76 + 8))(v54, v60);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  return result;
}

void sub_257E11A90(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong setEnabled_];
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    [v6 setEnabled_];
  }
}

double sub_257E11B34()
{
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9CD0, &qword_257EEB890);
  v285 = *(v287 - 8);
  MEMORY[0x28223BE20](v287, v0, v1, v2, v3);
  v283 = &v255 - v4;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9CD8, &qword_257EEB898);
  v286 = *(v288 - 8);
  MEMORY[0x28223BE20](v288, v5, v6, v7, v8);
  v284 = &v255 - v9;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9CE0, &unk_257EEB8A0);
  v290 = *(v291 - 8);
  MEMORY[0x28223BE20](v291, v10, v11, v12, v13);
  v289 = &v255 - v14;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0, &unk_257ED8220);
  v281 = *(v282 - 8);
  MEMORY[0x28223BE20](v282, v15, v16, v17, v18);
  v280 = &v255 - v19;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9CF0, &qword_257EEB8B0);
  v278 = *(v279 - 8);
  MEMORY[0x28223BE20](v279, v20, v21, v22, v23);
  v277 = &v255 - v24;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9598, &unk_257EE9B90);
  v275 = *(v276 - 8);
  MEMORY[0x28223BE20](v276, v25, v26, v27, v28);
  v274 = &v255 - v29;
  v295 = sub_257ECF130();
  v298 = *(v295 - 8);
  MEMORY[0x28223BE20](v295, v30, v31, v32, v33);
  v293 = &v255 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = sub_257ECFD10();
  v299 = *(v296 - 8);
  MEMORY[0x28223BE20](v296, v35, v36, v37, v38);
  v294 = &v255 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54D0, &unk_257ED9EA0);
  v272 = *(v273 - 8);
  MEMORY[0x28223BE20](v273, v40, v41, v42, v43);
  v271 = &v255 - v44;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9CF8, &qword_257EEB8B8);
  v261 = *(v267 - 8);
  MEMORY[0x28223BE20](v267, v45, v46, v47, v48);
  v259 = &v255 - v49;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D00, &qword_257EEB8C0);
  v262 = *(v263 - 8);
  MEMORY[0x28223BE20](v263, v50, v51, v52, v53);
  v260 = &v255 - v54;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D08, &qword_257EEB8C8);
  v265 = *(v297 - 8);
  MEMORY[0x28223BE20](v297, v55, v56, v57, v58);
  v264 = &v255 - v59;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D10, &qword_257EEB8D0);
  v258 = *(v268 - 1);
  MEMORY[0x28223BE20](v268, v60, v61, v62, v63);
  v257 = &v255 - v64;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9D18, &unk_257EEB8D8);
  v269 = *(v270 - 1);
  MEMORY[0x28223BE20](v270, v65, v66, v67, v68);
  v266 = &v255 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0, &unk_257ED9E90);
  v318 = *(v70 - 8);
  v319 = v70;
  MEMORY[0x28223BE20](v70, v71, v72, v73, v74);
  v313 = &v255 - v75;
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D28, &qword_257EEB8E8);
  v320 = *(v314 - 8);
  MEMORY[0x28223BE20](v314, v76, v77, v78, v79);
  v304 = &v255 - v80;
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9D30, &unk_257EEB8F0);
  v325 = *(v321 - 8);
  MEMORY[0x28223BE20](v321, v81, v82, v83, v84);
  v309 = &v255 - v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0, &unk_257ED8210);
  MEMORY[0x28223BE20](v86 - 8, v87, v88, v89, v90);
  v92 = &v255 - v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9D40, &qword_257EDF9A0);
  v94 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v95, v96, v97, v98);
  v100 = &v255 - v99;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8FD0, &qword_257EE8680);
  v312 = *(v322 - 8);
  MEMORY[0x28223BE20](v322, v101, v102, v103, v104);
  v106 = &v255 - v105;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v303 = qword_281548340;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60, &qword_257EDF9D0);
  sub_257ECDD30();
  swift_endAccess();
  v323 = objc_opt_self();
  v107 = [v323 mainRunLoop];
  v327 = v107;
  v315 = sub_257ED0080();
  v108 = *(v315 - 8);
  v316 = *(v108 + 56);
  v326 = v108 + 56;
  v316(v92, 1, 1, v315);
  v317 = sub_257BD2C2C(0, &unk_281543D40, 0x277CBEB88);
  v302 = MEMORY[0x277CBCEC8];
  sub_257BD2D4C(&unk_281544160, &unk_27F8F9D40, &qword_257EDF9A0, MEMORY[0x277CBCEC8]);
  v324 = sub_257CA64A0(&qword_281543D50, &unk_281543D40, 0x277CBEB88, MEMORY[0x277CC9E80]);
  sub_257ECDDF0();
  v109 = v92;
  sub_257BE4084(v92, &unk_27F8F4DB0, &unk_257ED8210);

  (*(v94 + 8))(v100, v93);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v292 = MEMORY[0x277CBCD60];
  sub_257BD2D4C(&qword_281544250, &qword_27F8F8FD0, &qword_257EE8680, MEMORY[0x277CBCD60]);
  v110 = v322;
  sub_257ECDE50();

  (*(v312 + 8))(v106, v110);
  v322 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cancellables;
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  v111 = v313;
  sub_257ECDD30();
  swift_endAccess();
  v306 = sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, v302);
  v112 = v304;
  v113 = v319;
  sub_257ECDE30();
  v301 = *(v318 + 8);
  v318 += 8;
  v301(v111, v113);
  v114 = [v323 mainRunLoop];
  v327 = v114;
  v115 = v109;
  v116 = v316;
  v316(v109, 1, 1, v315);
  v256 = MEMORY[0x277CBCBE0];
  v300 = sub_257BD2D4C(&unk_2815443D8, &qword_27F8F9D28, &qword_257EEB8E8, MEMORY[0x277CBCBE0]);
  v117 = v309;
  v118 = v314;
  sub_257ECDDF0();
  sub_257BE4084(v115, &unk_27F8F4DB0, &unk_257ED8210);

  v119 = *(v320 + 8);
  v320 += 8;
  v307 = v119;
  v119(v112, v118);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v120 = v292;
  v312 = sub_257BD2D4C(&unk_281544200, &unk_27F8F9D30, &unk_257EEB8F0, v292);
  v121 = v321;
  sub_257ECDE50();

  v122 = *(v325 + 8);
  v325 += 8;
  v305 = v122;
  v122(v117, v121);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89F0, &qword_257EE9BA0);
  v123 = v257;
  sub_257ECDD30();
  swift_endAccess();
  v124 = [v323 mainRunLoop];
  v327 = v124;
  v125 = v115;
  v310 = v115;
  v116(v115, 1, 1, v315);
  sub_257BD2D4C(&qword_27F8F9D50, &qword_27F8F9D10, &qword_257EEB8D0, v302);
  v126 = v266;
  v127 = v268;
  sub_257ECDDF0();
  sub_257BE4084(v125, &unk_27F8F4DB0, &unk_257ED8210);

  (*(v258 + 8))(v123, v127);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&qword_27F8F9D58, &unk_27F8F9D18, &unk_257EEB8D8, v120);
  v128 = v270;
  sub_257ECDE50();

  (*(v269 + 8))(v126, v128);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350, &unk_257EE6DF0);
  v129 = v271;
  sub_257ECDD30();
  swift_endAccess();

  sub_257BD2D4C(&unk_281544190, &unk_27F8F54D0, &unk_257ED9EA0, v302);
  sub_257E2BD50();
  v130 = v259;
  v131 = v273;
  sub_257ECDE30();
  v272[1](v129, v131);
  v132 = v294;
  sub_257ECFD00();
  v133 = sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  LODWORD(v273) = *MEMORY[0x277D851C0];
  v134 = v298;
  v135 = *(v298 + 104);
  v271 = (v298 + 104);
  v272 = v135;
  v136 = v293;
  v137 = v295;
  (v135)(v293);
  v266 = v133;
  v138 = sub_257ECFD90();
  v139 = *(v134 + 8);
  v298 = v134 + 8;
  v270 = v139;
  (v139)(v136, v137);
  v327 = v138;
  sub_257BD2D4C(&qword_2815443E8, &qword_27F8F9CF8, &qword_257EEB8B8, v256);
  v269 = sub_257CA64A0(&qword_281543F20, &qword_281543F10, 0x277D85C78, MEMORY[0x277D85228]);
  v140 = v260;
  v141 = v267;
  sub_257ECDE00();

  v142 = *(v299 + 8);
  v299 += 8;
  v268 = v142;
  (v142)(v132, v296);
  (*(v261 + 8))(v130, v141);
  v267 = MEMORY[0x277CBCD20];
  sub_257BD2D4C(&unk_281544298, &qword_27F8F9D00, &qword_257EEB8C0, MEMORY[0x277CBCD20]);
  v143 = v264;
  v144 = v263;
  sub_257ECDDE0();
  (*(v262 + 8))(v140, v144);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&qword_281544300, &qword_27F8F9D08, &qword_257EEB8C8, MEMORY[0x277CBCC90]);
  v145 = v297;
  sub_257ECDE50();

  (*(v265 + 8))(v143, v145);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  v146 = qword_281548348;
  swift_beginAccess();
  v147 = v313;
  sub_257ECDD30();
  swift_endAccess();
  v148 = v304;
  v149 = v319;
  sub_257ECDE30();
  v301(v147, v149);
  v150 = [v323 mainRunLoop];
  v327 = v150;
  v151 = v310;
  v316(v310, 1, 1, v315);
  v152 = v309;
  v153 = v314;
  sub_257ECDDF0();
  sub_257BE4084(v151, &unk_27F8F4DB0, &unk_257ED8210);

  v154 = v148;
  v307(v148, v153);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v155 = v321;
  sub_257ECDE50();

  v305(v152, v155);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  v297 = xmmword_281548330;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A10, &qword_257EEB900);
  v156 = v274;
  sub_257ECDD30();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_27F8F9D60, &qword_27F8F9598, &unk_257EE9B90, v302);
  v157 = v276;
  sub_257ECDE50();

  (*(v275 + 8))(v156, v157);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  v303 = v146;
  swift_beginAccess();
  sub_257ECDD30();
  swift_endAccess();
  v158 = v319;
  sub_257ECDE30();
  v301(v147, v158);
  v159 = [v323 mainRunLoop];
  v327 = v159;
  v160 = v310;
  v161 = v316;
  v316(v310, 1, 1, v315);
  v162 = v309;
  v163 = v314;
  sub_257ECDDF0();
  sub_257BE4084(v160, &unk_27F8F4DB0, &unk_257ED8210);

  v307(v154, v163);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v164 = v321;
  sub_257ECDE50();

  v165 = v162;
  v305(v162, v164);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  v166 = v313;
  sub_257ECDD30();
  swift_endAccess();
  v167 = v304;
  v168 = v319;
  sub_257ECDE30();
  v169 = v301;
  v301(v166, v168);
  v170 = [v323 mainRunLoop];
  v327 = v170;
  v171 = v310;
  v161(v310, 1, 1, v315);
  v172 = v165;
  v173 = v171;
  v174 = v314;
  sub_257ECDDF0();
  sub_257BE4084(v173, &unk_27F8F4DB0, &unk_257ED8210);

  v175 = v167;
  v176 = v167;
  v177 = v174;
  v307(v175, v174);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v178 = v321;
  sub_257ECDE50();

  v305(v172, v178);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  v179 = v313;
  sub_257ECDD30();
  swift_endAccess();
  v180 = v319;
  sub_257ECDE30();
  v169(v179, v180);
  v181 = [v323 mainRunLoop];
  v327 = v181;
  v182 = v310;
  v183 = v315;
  v316(v310, 1, 1, v315);
  v184 = v309;
  sub_257ECDDF0();
  sub_257BE4084(v182, &unk_27F8F4DB0, &unk_257ED8210);

  v185 = v307;
  v307(v176, v177);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v186 = v321;
  sub_257ECDE50();

  v187 = v184;
  v188 = v305;
  v305(v187, v186);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  v189 = v313;
  sub_257ECDD30();
  swift_endAccess();
  v190 = v304;
  v191 = v319;
  sub_257ECDE30();
  v169(v189, v191);
  v192 = [v323 mainRunLoop];
  v327 = v192;
  v193 = v310;
  v316(v310, 1, 1, v183);
  v194 = v309;
  v195 = v314;
  sub_257ECDDF0();
  sub_257BE4084(v193, &unk_27F8F4DB0, &unk_257ED8210);

  v196 = v190;
  v185(v190, v195);
  v197 = v277;
  v198 = v321;
  sub_257ECDE10();
  v199 = v194;
  v188(v194, v198);
  swift_allocObject();
  v200 = v308;
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544338, &qword_27F8F9CF0, &qword_257EEB8B0, MEMORY[0x277CBCC18]);
  v201 = v279;
  sub_257ECDE50();

  (*(v278 + 8))(v197, v201);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  v202 = v313;
  sub_257ECDD30();
  swift_endAccess();
  v203 = v196;
  v204 = v319;
  sub_257ECDE30();
  v301(v202, v204);
  v205 = v323;
  v206 = [v323 mainRunLoop];
  v327 = v206;
  v207 = v310;
  v208 = v315;
  v316(v310, 1, 1, v315);
  v209 = v199;
  v210 = v314;
  sub_257ECDDF0();
  sub_257BE4084(v207, &unk_27F8F4DB0, &unk_257ED8210);

  v307(v203, v210);
  swift_allocObject();
  v211 = v200;
  swift_unknownObjectWeakInit();
  v212 = v321;
  sub_257ECDE50();

  v305(v209, v212);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  v213 = v313;
  sub_257ECDD30();
  swift_endAccess();
  v214 = [v205 mainRunLoop];
  v327 = v214;
  v316(v207, 1, 1, v208);
  v215 = v280;
  v216 = v319;
  sub_257ECDDF0();
  sub_257BE4084(v207, &unk_27F8F4DB0, &unk_257ED8210);

  v217 = v301;
  v301(v213, v216);
  swift_allocObject();
  v218 = v211;
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0, &unk_257ED8220, v292);
  v219 = v282;
  sub_257ECDE50();

  (*(v281 + 8))(v215, v219);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  sub_257ECDD30();
  swift_endAccess();
  v220 = v304;
  sub_257ECDE30();
  v217(v213, v216);
  v221 = [v323 mainRunLoop];
  v327 = v221;
  v222 = v310;
  v316(v310, 1, 1, v315);
  v223 = v309;
  v224 = v314;
  sub_257ECDDF0();
  sub_257BE4084(v222, &unk_27F8F4DB0, &unk_257ED8210);

  v307(v220, v224);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v225 = v321;
  sub_257ECDE50();

  v305(v223, v225);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A00, &qword_257EE6E38);
  v226 = v283;
  sub_257ECDD30();
  swift_endAccess();
  v227 = v294;
  sub_257ECFD00();
  v228 = v293;
  v229 = v295;
  (v272)(v293, v273, v295);
  v230 = sub_257ECFD90();
  (v270)(v228, v229);
  v327 = v230;
  sub_257BD2D4C(&qword_27F8F9D70, &qword_27F8F9CD0, &qword_257EEB890, v302);
  v231 = v284;
  v232 = v227;
  v233 = v287;
  sub_257ECDE00();

  (v268)(v232, v296);
  (*(v285 + 8))(v226, v233);
  sub_257BD2D4C(&qword_27F8F9D78, &qword_27F8F9CD8, &qword_257EEB898, v267);
  v234 = v289;
  v235 = v288;
  sub_257ECDDD0();
  (*(v286 + 8))(v231, v235);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_27F8F9D80, &unk_27F8F9CE0, &unk_257EEB8A0, MEMORY[0x277CBCC08]);
  v236 = v291;
  sub_257ECDE50();

  (*(v290 + 8))(v234, v236);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  v237 = sub_257DFF054();
  v238 = sub_257EB1B80();

  v239 = sub_257CA9F5C();
  [v238 setFont_];

  v240 = sub_257E001D8();
  v241 = sub_257CA9DF0();
  [v240 setFont_];

  v242 = *(v218 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController);
  v243 = sub_257EB1BE0();

  if (v243)
  {
    v244 = sub_257CA9F5C();
    [v243 setFont_];
  }

  v245 = sub_257E002B8();
  if (v245)
  {
    v246 = v245;
    v247 = sub_257CA9DF0();
    [v246 setFont_];
  }

  v248 = sub_257E003E8();
  v249 = sub_257CA9F5C();
  [v248 setFont_];

  v250 = sub_257E00504();
  if (v250)
  {
    v251 = v250;
    v252 = sub_257CA9F5C();
    [v251 setFont_];
  }

  v327 = *(v303 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_contentSizeCategoryPublisher);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9090, &unk_257EE8F10);
  sub_257BD2D4C(&qword_2815441C0, &qword_27F8F9090, &unk_257EE8F10, MEMORY[0x277CBCD90]);
  v253 = sub_257ECDE50();

  *(v218 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_contentSizeCategorySubscription) = v253;

  return result;
}

void sub_257E147C0(unsigned __int8 *a1, uint64_t a2)
{
  v41 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v41, v3, v4, v5, v6);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v42, v9, v10, v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v15 - 8, v16, v17, v18, v19);
  v21 = &v41 - v20;
  v22 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v24 = Strong;
  if (v22)
  {
    v25 = sub_257ED0640();

    if ((v25 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  v26 = sub_257DFF3FC();
  v27 = &v26[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___successfulMultiShotCaptureCount];
  *v27 = 0;
  v27[8] = 0;

  [*&v24[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton] setAlpha_];
  v28 = *&v24[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton];
  if (v28)
  {
    [v28 setAlpha_];
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v43 = 0u;
  v44 = 0u;
  sub_257ECC3F0();
  sub_257ECDD70();
  if (!v22)
  {
LABEL_12:
    v29 = sub_257ED0640();

    if ((v29 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

LABEL_4:
  if (v22 != 1)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v43 = 0u;
  v44 = 0u;
  sub_257ECC3F0();
  sub_257ECDD70();
LABEL_16:
  if (v22 > 1)
  {

    goto LABEL_20;
  }

  v30 = sub_257ED0640();

  if (v30)
  {
LABEL_20:
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v43) = 0;
    sub_257ECC3F0();
    sub_257ECDD70();
    sub_257C77614();
    v31 = sub_257ECF930();
    (*(*(v31 - 8) + 56))(v21, 1, 1, v31);
    sub_257ECF900();
    v32 = v24;
    v33 = sub_257ECF8F0();
    v34 = swift_allocObject();
    v35 = MEMORY[0x277D85700];
    v34[2] = v33;
    v34[3] = v35;
    v34[4] = v32;
    sub_257E81524(0, 0, v21, &unk_257EEBAD8, v34);
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v36 = *(&v43 + 1);
  if (*(&v43 + 1))
  {
    v37 = v44;
    v38 = v43;

    sub_257D98414(v38, v36, v37, *(&v37 + 1));
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v43) = 0;
    sub_257ECC3F0();
    sub_257ECDD70();
    [*&v24[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDetectionModePerspectiveFramingLayer] removeFromSuperlayer];
    *v8 = 0;
    v8[1] = 0xE000000000000000;
    swift_storeEnumTagMultiPayload();
    sub_257ECCCE0();
    v39 = v42;
    sub_257C15EC0(v8, &v14[*(v42 + 20)]);
    v14[v39[6]] = 0;
    v14[v39[7]] = 0;
    v40 = qword_281548348;
    sub_257ECC3F0();
    sub_257C15F24(v8, type metadata accessor for MAGOutputEvent.EventType);
    *&v14[v39[8]] = v40;
    sub_257CBBC80(v14);
    sub_257C15F24(v14, type metadata accessor for MAGOutputEvent);
  }
}

uint64_t sub_257E14EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  v4[11] = swift_task_alloc();
  v5 = sub_257ED03D0();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = sub_257ECF900();
  v4[16] = sub_257ECF8F0();
  v7 = sub_257ECF8B0();
  v4[17] = v7;
  v4[18] = v6;

  return MEMORY[0x2822009F8](sub_257E14FD8, v7, v6);
}

uint64_t sub_257E14FD8()
{
  v1 = sub_257ED0860();
  v3 = v2;
  sub_257ED06F0();
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *v4 = v0;
  v4[1] = sub_257E150B4;

  return sub_257C5CFB8(v1, v3, 0, 0, 1);
}

uint64_t sub_257E150B4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 144);
  v7 = *(v2 + 136);
  if (v0)
  {
    v8 = sub_257E15460;
  }

  else
  {
    v8 = sub_257E1524C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_257E1524C()
{
  if (qword_27F8F46F8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_257E15324;

  return sub_257C59A40(v0 + 16, 5, 0, 1);
}

uint64_t sub_257E15324()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_257E1570C;
  }

  else
  {
    v5 = sub_257E154D8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_257E15460()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257E154D8()
{

  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 48) = v2;
    *(v0 + 56) = v1;
    *(v0 + 64) = v3;
    *(v0 + 72) = v4;
    sub_257E2BF60(v2, v1, v3, v4);
    sub_257ECC3F0();
    sub_257ECDD70();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 184) = 1;
    sub_257ECC3F0();
    sub_257ECDD70();
    sub_257D98414(v2, v1, v3, v4);
  }

  else
  {
    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    v7 = sub_257ECF930();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = v6;
    v9 = sub_257ECF8F0();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;
    sub_257C3FBD4(0, 0, v5, &unk_257EEBAE8, v10);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_257E1570C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257E15784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MAGOutputEvent.EventType(0);
  v4[4] = swift_task_alloc();
  v4[5] = type metadata accessor for MAGOutputEvent(0);
  v4[6] = swift_task_alloc();
  sub_257ECF900();
  v4[7] = sub_257ECF8F0();
  v6 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257E1587C, v6, v5);
}

uint64_t sub_257E1587C()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];

  [*(v4 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDetectionModePerspectiveFramingLayer) removeFromSuperlayer];
  [*(v4 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentModeOutlineLayer) removeFromSuperlayer];
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  swift_storeEnumTagMultiPayload();
  sub_257ECCCE0();
  sub_257C15EC0(v2, v1 + v3[5]);
  *(v1 + v3[6]) = 0;
  *(v1 + v3[7]) = 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = qword_281548348;
  sub_257ECC3F0();
  sub_257C15F24(v7, type metadata accessor for MAGOutputEvent.EventType);
  *(v5 + *(v6 + 32)) = v8;
  sub_257CBBC80(v5);
  sub_257C15F24(v5, type metadata accessor for MAGOutputEvent);

  v9 = v0[1];

  return v9();
}

void sub_257E15A0C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v18[0])
    {

      if (v2)
      {
        sub_257E15D90();
      }

      else
      {
        sub_257E15EB0();
      }
    }

    v6 = sub_257DFF59C();
    v7 = [v6 layer];
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {

      sub_257ED0410();
      __break(1u);
      return;
    }

    v9 = v8;
    [v8 setAutomaticallyDimsOverCaptureRegion_];

    v10 = [v9 connection];
    if (v10)
    {
      [v10 setEnabled_];
    }

    v11 = *&v4[v5];
    if (v2)
    {
      if (![*&v11[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession] isRunning])
      {
        goto LABEL_14;
      }

      v12 = *&v4[v5];
      sub_257DB1748();
    }

    else
    {
      v12 = v11;
      sub_257DB16AC();
    }

LABEL_14:
    v18[3] = type metadata accessor for AppViewController(0);
    v18[0] = v4;
    v13 = v4;
    sub_257E2B2C0(v2);
    sub_257BE4084(v18, &unk_27F8F62F0, &unk_257ED9D30);
    v15 = *&v13[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController];
    if (v15)
    {
      v16 = v15;
      sub_257BDB830();
    }

    if (v2)
    {
      goto LABEL_24;
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (LOBYTE(v18[0]))
    {
      v17 = sub_257ED0640();

      if ((v17 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    v14 = sub_257C77614();
LABEL_24:
    [*&v13[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentModeOutlineLayer] removeFromSuperlayer];
  }
}

void sub_257E15D90()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  sub_257D6B520();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v0)
  {
    sub_257ECC3F0();
    sub_257D33238();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD70();
  }
}

void sub_257E15EB0()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  sub_257D6B520();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v7)
  {
    swift_beginAccess();
    v0 = qword_2815447E0;

    if (v0 != -1)
    {
      v1 = swift_once();
    }

    MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
    sub_257ECFD50();

    sub_257D337D8(0, v6);
  }
}

void sub_257E16060(uint64_t a1, uint64_t a2)
{
  v3 = sub_257ECDA30();
  v50 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v8 - 8, v9, v10, v11, v12);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  v21 = v42 - v20;
  v22 = *a1;
  v23 = *(a1 + 8);
  v25 = *(a1 + 16);
  v24 = *(a1 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v27 = Strong;
  [*(Strong + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentModeOutlineLayer) removeFromSuperlayer];
  if (!v23)
  {
LABEL_10:

    return;
  }

  if ((v25 & 1) == 0)
  {
    v36 = swift_unknownObjectWeakLoadStrong();
    if (v36)
    {
      v37 = v36;
      v38 = v22;
      v39 = *&v27[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDetectionModePerspectiveFramingLayer];
      sub_257E2BF60(v38, v23, v25, v24);
      v40 = v39;
      [v37 insertSublayer:v40 atIndex:1];

      sub_257D98414(v38, v23, v25, v24);
      return;
    }

    goto LABEL_10;
  }

  v47 = v3;
  v28 = v24;
  v48 = v22;
  v29 = v23;
  v30 = sub_257DFF59C();
  [v30 setIsAccessibilityElement_];

  v49 = v22;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v31 = qword_281548340;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v51[0]) = 0;
  sub_257ECC3F0();
  v42[1] = v31;
  sub_257ECDD70();
  v51[3] = type metadata accessor for AppViewController(0);
  v51[0] = v27;
  v32 = v27;
  sub_257E2B2C0(1);
  sub_257BE4084(v51, &unk_27F8F62F0, &unk_257ED9D30);
  if (v49)
  {
    v44 = v23;
    v45 = v25;
    v46 = v24;
    v43 = v32;
    v33 = *&v32[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_stillImageStore + 32];
    __swift_project_boxed_opaque_existential_1(&v32[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_stillImageStore], *&v32[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_stillImageStore + 24]);
    v34 = *(v33 + 16);
    v35 = v48;
    v34();
    v41 = sub_257ECCB70();
    (*(*(v41 - 8) + 56))(v21, 0, 1, v41);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257C1C614(v21, v14);
    sub_257ECC3F0();
    sub_257ECDD70();

    sub_257D98414(v49, v44, v45, v46);
    sub_257BE4084(v21, &qword_27F8F5F30, &qword_257EDA9E0);
  }

  else
  {

    sub_257D98414(0, v23, v25, v24);
  }
}

uint64_t sub_257E165F0()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  if (*(xmmword_281548330 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens_isInCapture))
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return v1;
}

void sub_257E166C0(double *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v6)
    {
      sub_257D337D8(0, v2);
    }
  }
}

double sub_257E16798(uint64_t a1, uint64_t a2)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v58 == 1)
  {
    swift_beginAccess();
    v3 = qword_2815447E0;

    if (v3 != -1)
    {
      v4 = swift_once();
    }

    MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
    sub_257ECFD50();

    if (v57 && v57 != 1)
    {
    }

    else
    {
      v9 = sub_257ED0640();

      if ((v9 & 1) == 0)
      {
        MEMORY[0x28223BE20](v10, v11, v12, v13, v14);

        sub_257ECFD50();

        if (v57 && v57 == 1)
        {
        }

        else
        {
          v31 = sub_257ED0640();

          if ((v31 & 1) == 0)
          {
            swift_beginAccess();
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v36 = Strong;
              sub_257E1F078(2);
            }

            swift_beginAccess();
            v34 = swift_unknownObjectWeakLoadStrong();
            if (!v34)
            {
              goto LABEL_27;
            }

LABEL_25:
            v37 = v34;
            v38 = sub_257DFF054();

            v39 = *&v38[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer];
            v56 = *&v39[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_grabberView];

            type metadata accessor for MAGUtilities();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v41 = objc_opt_self();
            v42 = [v41 bundleForClass_];
            v43 = sub_257ECF4C0();
            v44 = sub_257ECF4C0();
            v45 = [v42 localizedStringForKey:v43 value:0 table:v44];

            sub_257ECF500();

            MEMORY[0x259C72150](8236, 0xE200000000000000);

            v27 = [v41 bundleForClass_];
            v28 = sub_257ECF4C0();
            v29 = sub_257ECF4C0();
            v30 = [v27 localizedStringForKey:v28 value:0 table:v29];
LABEL_26:
            v46 = v30;

            v47 = sub_257ECF500();
            v49 = v48;

            MEMORY[0x259C72150](v47, v49);

            v50 = sub_257ECF4C0();

            [v56 setAccessibilityLabel_];

LABEL_27:
            swift_beginAccess();
            v51 = swift_unknownObjectWeakLoadStrong();
            if (v51)
            {
              v52 = v51;
              v53 = sub_257DFF054();

              v54 = *&v53[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer];
              v55 = *&v54[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_grabberView];

              sub_257C8105C();
            }

            swift_getKeyPath();
            swift_getKeyPath();
            sub_257ECC3F0();
            sub_257ECDD70();
            return result;
          }
        }

        swift_beginAccess();
        v32 = swift_unknownObjectWeakLoadStrong();
        if (v32)
        {
          v33 = v32;
          sub_257E1F078(0);
        }

        swift_beginAccess();
        v34 = swift_unknownObjectWeakLoadStrong();
        if (!v34)
        {
          goto LABEL_27;
        }

        goto LABEL_25;
      }
    }

    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      sub_257E1F078(1);
    }

    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (!v17)
    {
      goto LABEL_27;
    }

    v18 = v17;
    v19 = sub_257DFF054();

    v20 = *&v19[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer];
    v56 = *&v20[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_grabberView];

    type metadata accessor for MAGUtilities();
    v21 = swift_getObjCClassFromMetadata();
    v22 = objc_opt_self();
    v23 = [v22 bundleForClass_];
    v24 = sub_257ECF4C0();
    v25 = sub_257ECF4C0();
    v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

    sub_257ECF500();

    MEMORY[0x259C72150](8236, 0xE200000000000000);

    v27 = [v22 bundleForClass_];
    v28 = sub_257ECF4C0();
    v29 = sub_257ECF4C0();
    v30 = [v27 localizedStringForKey:v28 value:0 table:v29];
    goto LABEL_26;
  }

  return result;
}

void sub_257E171DC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel);
    if (v2 == 1)
    {
      v6 = v5;
      [v6 removeFromSuperview];
    }

    else
    {
      v7 = [v5 superview];
      if (v7)
      {
        v8 = v7;

        v4 = v8;
      }

      else
      {
        sub_257E1F554();
      }
    }
  }
}

void sub_257E17294(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_257DFF3FC();
    sub_257C7C61C();
  }
}

void sub_257E172F8(unsigned __int8 *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v9 = &v18[-v8];
  v10 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (v10)
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if ((v18[7] & 1) == 0)
      {
        v13 = sub_257ECF930();
        (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
        sub_257ECF900();
        v14 = v12;
        v15 = sub_257ECF8F0();
        v16 = swift_allocObject();
        v17 = MEMORY[0x277D85700];
        v16[2] = v15;
        v16[3] = v17;
        v16[4] = v14;
        sub_257C3FBD4(0, 0, v9, &unk_257EEB9A0, v16);
      }
    }
  }
}

uint64_t sub_257E174E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[34] = a4;
  v5 = sub_257ECDA30();
  v4[35] = v5;
  v4[36] = *(v5 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = type metadata accessor for MAGOutputEvent.EventType(0);
  v4[39] = swift_task_alloc();
  v4[40] = type metadata accessor for MAGOutputEvent(0);
  v4[41] = swift_task_alloc();
  v6 = sub_257ECF120();
  v4[42] = v6;
  v4[43] = *(v6 - 8);
  v4[44] = swift_task_alloc();
  v7 = sub_257ECF190();
  v4[45] = v7;
  v4[46] = *(v7 - 8);
  v4[47] = swift_task_alloc();
  v8 = sub_257ECF1B0();
  v4[48] = v8;
  v4[49] = *(v8 - 8);
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  sub_257ECF900();
  v4[52] = sub_257ECF8F0();
  v10 = sub_257ECF8B0();
  v4[53] = v10;
  v4[54] = v9;

  return MEMORY[0x2822009F8](sub_257E17754, v10, v9);
}

uint64_t sub_257E17754()
{
  v1 = *(v0[34] + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService);
  v2 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 && (v4 = [v3 currentFrame]) != 0 && (v5 = v4, v6 = objc_msgSend(v4, sel_capturedImage), v0[55] = v6, v5, v6))
  {
    type metadata accessor for MAGCVPixelBufferWrapper();
    v7 = swift_allocObject();
    v0[56] = v7;
    *(v7 + 16) = v6;
    v8 = v6;
    v9 = swift_task_alloc();
    v0[57] = v9;
    *v9 = v0;
    v9[1] = sub_257E17B54;

    return MAGImageCaptionService.generateImageCaption(for:)(v7);
  }

  else
  {
    v18 = v0[51];
    v11 = v0[49];
    v12 = v0[50];
    v14 = v0[47];
    v13 = v0[48];
    v23 = v0[46];
    v24 = v0[45];
    v15 = v0[44];
    v22 = v0[43];
    v20 = v0[42];

    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v19 = sub_257ECFD30();
    sub_257ECF1A0();
    sub_257ECF220();
    v21 = *(v11 + 8);
    v21(v12, v13);
    v0[6] = sub_257E18628;
    v0[7] = 0;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_257D231C0;
    v0[5] = &block_descriptor_722;
    v16 = _Block_copy(v0 + 2);
    sub_257ECF150();
    v0[29] = MEMORY[0x277D84F90];
    sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    MEMORY[0x259C727E0](v18, v14, v15, v16);
    _Block_release(v16);

    (*(v22 + 8))(v15, v20);
    (*(v23 + 8))(v14, v24);
    v21(v18, v13);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_257E17B54(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[58] = a1;
  v4[59] = a2;
  v4[60] = v2;

  if (v2)
  {
    v5 = v4[53];
    v6 = v4[54];
    v7 = sub_257E18494;
  }

  else
  {

    v5 = v4[53];
    v6 = v4[54];
    v7 = sub_257E17C74;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_257E17C74()
{

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 488) = 0;
  sub_257ECC3F0();
  sub_257ECDD70();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v51 = objc_opt_self();
  v53 = ObjCClassFromMetadata;
  v5 = [v51 bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  v9 = sub_257ECF500();
  v11 = v10;

  *v3 = v9;
  v3[1] = v11;
  swift_storeEnumTagMultiPayload();
  sub_257ECCCE0();
  sub_257C15EC0(v3, v1 + v2[5]);
  *(v1 + v2[6]) = 1;
  *(v1 + v2[7]) = 0;
  v12 = qword_281548348;
  sub_257ECC3F0();
  sub_257C15F24(v3, type metadata accessor for MAGOutputEvent.EventType);
  *(v1 + v2[8]) = v12;
  sub_257CBBC80(v1);
  sub_257C15F24(v1, type metadata accessor for MAGOutputEvent);
  v13 = (v12 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedImageCaptionFeedbacks);
  swift_beginAccess();
  v14 = v13[1];
  v15 = v13[2];
  *(v0 + 160) = *v13;
  *(v0 + 168) = v14;
  *(v0 + 176) = v15;
  v16 = qword_2815447E0;

  if (v16 != -1)
  {
    swift_once();
  }

  *(swift_task_alloc() + 16) = v0 + 160;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8470, &unk_257EDEFB0);
  sub_257ECFD50();

  v17 = sub_257C592E8(1, *(v0 + 240));

  if (!v17)
  {
    v18 = *(v0 + 400);
    v45 = *(v0 + 408);
    v19 = *(v0 + 384);
    v20 = *(v0 + 392);
    v21 = *(v0 + 376);
    v50 = *(v0 + 368);
    v55 = *(v0 + 360);
    v47 = *(v0 + 352);
    v22 = *(v0 + 336);
    v48 = v19;
    v49 = *(v0 + 344);
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v46 = sub_257ECFD30();
    sub_257ECF1A0();
    sub_257ECF220();
    v23 = *(v20 + 8);
    v23(v18, v19);
    *(v0 + 96) = sub_257E18718;
    *(v0 + 104) = 0;
    *(v0 + 64) = MEMORY[0x277D85DD0];
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_257D231C0;
    *(v0 + 88) = &block_descriptor_732;
    v24 = _Block_copy((v0 + 64));
    sub_257ECF150();
    *(v0 + 248) = MEMORY[0x277D84F90];
    sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    MEMORY[0x259C727E0](v45, v21, v47, v24);
    _Block_release(v24);

    (*(v49 + 8))(v47, v22);
    (*(v50 + 8))(v21, v55);
    v23(v45, v48);
  }

  if (_s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0())
  {
    v25 = qword_281548358;
    v26 = [v51 bundleForClass_];
    v27 = sub_257ECF4C0();

    v28 = sub_257ECF4C0();
    v29 = [v26 localizedStringForKey:v27 value:0 table:v28];

    v30 = sub_257ECF500();
    v52 = v31;
    v54 = v30;

    v32 = v25 + 48;
    swift_beginAccess();
    v33 = *(v25 + 56);
    *(v0 + 208) = *(v25 + 48);
    *(v0 + 216) = v33;
    *(swift_task_alloc() + 16) = v0 + 208;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90, &qword_257EDEFD0);
    sub_257ECFD50();

    v34 = *(v0 + 256);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_257BFCB3C(0, *(v34 + 2) + 1, 1, v34);
    }

    v36 = *(v34 + 2);
    v35 = *(v34 + 3);
    if (v36 >= v35 >> 1)
    {
      v34 = sub_257BFCB3C((v35 > 1), v36 + 1, 1, v34);
    }

    v37 = *(v0 + 440);
    v39 = *(v0 + 344);
    v38 = *(v0 + 352);
    v40 = *(v0 + 336);
    *(v34 + 2) = v36 + 1;
    v41 = &v34[16 * v36];
    *(v41 + 4) = v54;
    *(v41 + 5) = v52;
    *(v0 + 264) = v34;
    sub_257ECF110();
    v42 = swift_task_alloc();
    *(v42 + 16) = v0 + 264;
    *(v42 + 24) = v32;
    sub_257ECFD40();

    (*(v39 + 8))(v38, v40);

    swift_endAccess();
  }

  else
  {
  }

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_257E18494()
{

  sub_257ECD440();
  v1 = sub_257ECDA20();
  v2 = sub_257ECFBD0();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[60];
  v5 = v0[55];
  v7 = v0[36];
  v6 = v0[37];
  v8 = v0[35];
  if (v3)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_257BAC000, v1, v2, "Could not generate image caption", v9, 2u);
    MEMORY[0x259C74820](v9, -1, -1);

    v1 = v5;
  }

  else
  {
  }

  (*(v7 + 8))(v6, v8);

  v10 = v0[1];

  return v10();
}

double sub_257E18628()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
  return result;
}

double sub_257E18718()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
  return result;
}

void sub_257E187C0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_eventInteraction);
    if (!v5)
    {
LABEL_9:

      return;
    }

    v6 = v5;
    v7 = [v4 view];
    v8 = v7;
    if (v2)
    {
      if (v7)
      {
        v9 = &selRef_removeInteraction_;
LABEL_8:
        [v7 *v9];

        goto LABEL_9;
      }

      __break(1u);
    }

    else if (v7)
    {
      v9 = &selRef_addInteraction_;
      goto LABEL_8;
    }

    __break(1u);
  }
}

void sub_257E18890(unsigned __int8 *a1, uint64_t a2)
{
  v58 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v58, v3, v4, v5, v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_257ECF120();
  v57 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_257ECF190();
  v56 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    v55 = v30;
    v53 = v8;
    v54 = v9;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v33 = qword_281548348;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (aBlock[0])
    {
      v52 = v33;
      sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
      v50 = sub_257ECFD30();
      v34 = swift_allocObject();
      *(v34 + 16) = v55;
      *(v34 + 24) = v32;
      aBlock[4] = sub_257E2BE68;
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257D231C0;
      aBlock[3] = &block_descriptor_709;
      v35 = _Block_copy(aBlock);
      v51 = v32;

      sub_257ECF150();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
      sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
      sub_257ED0180();
      v36 = v50;
      MEMORY[0x259C72880](0, v29, v22, v35);
      _Block_release(v35);

      (*(v57 + 8))(v22, v16);
      (*(v56 + 8))(v29, v23);
      if (v55)
      {
        v37 = v51;
        v38 = *&v51[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor];
        v39 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_toneGenerator;
        swift_beginAccess();
        [*(v38 + v39) stopPulse];
        v40 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_doorToneGenerator;
        swift_beginAccess();
        [*(v38 + v40) stopPulse];
        v41 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_objectUnderstandingToneGenerator;
        swift_beginAccess();
        [*(v38 + v41) stopPulse];
        v42 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakDistanceToneGenerator;
        swift_beginAccess();
        [*(v38 + v42) stopPulse];
        sub_257ECC3F0();
        sub_257CC0214();

        v43 = v53;
        swift_storeEnumTagMultiPayload();
        sub_257ECCCE0();
        v44 = v54;
        sub_257C15EC0(v43, &v15[v54[5]]);
        v15[v44[6]] = 1;
        v15[v44[7]] = 0;
        v45 = v52;
        sub_257ECC3F0();
        sub_257C15F24(v43, type metadata accessor for MAGOutputEvent.EventType);
        *&v15[v44[8]] = v45;
        sub_257CBBC80(v15);
        sub_257C15F24(v15, type metadata accessor for MAGOutputEvent);
        swift_getKeyPath();
        swift_getKeyPath();
        v59 = 1;
        sub_257ECC3F0();
        sub_257ECDD70();

        return;
      }

      v32 = v51;
      v46 = v53;
      swift_storeEnumTagMultiPayload();
      sub_257ECCCE0();
      v47 = v54;
      sub_257C15EC0(v46, &v15[v54[5]]);
      v15[v47[6]] = 1;
      v15[v47[7]] = 0;
      v48 = v52;
      sub_257ECC3F0();
      sub_257C15F24(v46, type metadata accessor for MAGOutputEvent.EventType);
      *&v15[v47[8]] = v48;
      sub_257CBBC80(v15);
      sub_257C15F24(v15, type metadata accessor for MAGOutputEvent);
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock[0]) = 0;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }
}

void sub_257E18FF4(char a1)
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  sub_257ECF500();
  sub_257BDAB08();
  v6 = sub_257ED0100();
  v8 = v7;

  v9 = sub_257E003E8();
  v10 = sub_257E00504();
  sub_257DFD370(v6, v8, v9, v10);
}

double sub_257E19170(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v6)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v6 != 1)
      {
        sub_257ECC3F0();
        if (!v2)
        {
          sub_257CC1C64();

          return result;
        }

        sub_257CC1870();
      }
    }
  }

  return result;
}

void sub_257E192E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v4 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__longPressHintShouldDisplay;
    swift_beginAccess();
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    aBlock = *v4;
    v43 = v5;
    LOBYTE(v44) = v6;
    v7 = qword_2815447E0;

    if (v7 != -1)
    {
      v8 = swift_once();
    }

    MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
    sub_257ECFD50();

    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    v15 = sub_257ECF4C0();
    v16 = sub_257ECF4C0();
    v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

    v18 = sub_257ECF500();
    v20 = v19;

    aBlock = v18;
    v43 = v20;
    sub_257BDAB08();
    v21 = sub_257ED0100();
    v23 = v22;

    if ((v48 & 1) != 0 || (v24 = sub_257DFF054(), v25 = sub_257EB1B80(), v24, v26 = [v25 text], v25, !v26))
    {
    }

    else
    {
      v27 = sub_257ECF500();
      v29 = v28;

      if (v27 == v21 && v29 == v23)
      {

LABEL_13:
        v31 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController;
        v32 = *&v3[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController];
        v33 = sub_257EB1B80();

        v34 = *&v3[v31];
        v35 = sub_257EB1BE0();

        v3[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isInformationLabelVisible] = 0;
        v36 = objc_opt_self();
        v37 = swift_allocObject();
        *(v37 + 16) = v33;
        *(v37 + 24) = v35;
        v46 = sub_257E2D050;
        v47 = v37;
        aBlock = MEMORY[0x277D85DD0];
        v43 = 1107296256;
        v44 = sub_257D231C0;
        v45 = &block_descriptor_697;
        v38 = _Block_copy(&aBlock);
        v39 = v33;
        v40 = v35;

        v41 = [v36 runningPropertyAnimatorWithDuration:0x20000 delay:v38 options:0 animations:0.2 completion:0.0];
        _Block_release(v38);

        v3 = v41;
        goto LABEL_14;
      }

      v30 = sub_257ED0640();

      if (v30)
      {
        goto LABEL_13;
      }
    }

LABEL_14:
  }
}

void sub_257E19730(uint64_t a1, uint64_t a2)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECF190();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12, v13, v14, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v27 = v11;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (LOBYTE(aBlock[0]) == 1)
    {
      sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
      v26 = sub_257ECFD30();
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      aBlock[4] = sub_257E2BE04;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257D231C0;
      aBlock[3] = &block_descriptor_690;
      v21 = _Block_copy(aBlock);
      v22 = v19;

      sub_257ECF150();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      v25 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
      sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
      sub_257ED0180();
      v23 = v26;
      MEMORY[0x259C72880](0, v17, v9, v21);
      _Block_release(v21);

      (*(v3 + 8))(v9, v2);
      (*(v27 + 8))(v17, v25);
    }

    v24 = sub_257DFF3FC();
    sub_257D8FB78();
  }
}

uint64_t sub_257E19AF0(uint64_t a1)
{
  v2 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v18 = sub_257ECF4C0();
  v19 = sub_257ECF4C0();
  v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

  v21 = sub_257ECF500();
  v23 = v22;

  v33[0] = v21;
  v33[1] = v23;
  sub_257BDAB08();
  v24 = sub_257ED0100();
  v26 = v25;

  v27 = sub_257DFF054();
  v28 = sub_257EB1B80();

  v29 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController);
  v30 = sub_257EB1BE0();

  sub_257DFD370(v24, v26, v28, v30);

  *v8 = 15;
  swift_storeEnumTagMultiPayload();
  sub_257ECCCE0();
  sub_257C15EC0(v8, &v15[v9[5]]);
  v15[v9[6]] = 0;
  v15[v9[7]] = 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v31 = qword_281548348;
  sub_257ECC3F0();
  sub_257C15F24(v8, type metadata accessor for MAGOutputEvent.EventType);
  *&v15[v9[8]] = v31;
  sub_257CBBC80(v15);
  return sub_257C15F24(v15, type metadata accessor for MAGOutputEvent);
}

float sub_257E19DF4@<S0>(float *a1@<X0>, _DWORD *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void sub_257E19E00(float *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2 == 0.0)
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v5 == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if ((v4[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakToggledDetectionModeFlashlightOn] & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , v5 == 1) && v4[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionToggledDetectionModeFlashlightOn] == 1)
        {
          v4[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_toggledDetectionModeFlashlightOff] = 1;
        }
      }
    }
  }
}

void sub_257E19FC8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_257DFF054();
    v5 = sub_257EB1B80();

    v6 = sub_257CA9F5C();
    [v5 setFont_];

    v7 = sub_257E001D8();
    v8 = sub_257CA9DF0();
    [v7 setFont_];

    v9 = *&v3[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController];
    v10 = sub_257EB1BE0();

    if (v10)
    {
      v11 = sub_257CA9F5C();
      [v10 setFont_];
    }

    v12 = sub_257E002B8();
    if (v12)
    {
      v13 = v12;
      v14 = sub_257CA9DF0();
      [v13 setFont_];
    }

    v15 = sub_257E003E8();
    v16 = sub_257CA9F5C();
    [v15 setFont_];

    v17 = sub_257E00504();
    if (v17)
    {
      v18 = v17;
      v19 = sub_257CA9F5C();
      [v18 setFont_];
    }
  }
}

void sub_257E1A15C()
{
  v0 = sub_257E001D8();
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.5;
  }

  v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:v1];
  [v0 setBackgroundColor_];

  v3 = sub_257E002B8();
  if (v3)
  {
    v4 = v3;
    if (UIAccessibilityIsReduceTransparencyEnabled())
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.5;
    }

    v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:v5];
    [v4 setBackgroundColor_];
  }
}

void sub_257E1A3A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v7)
  {
    sub_257D34520();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v7)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v0 = qword_2815447E0;

    if (v0 != -1)
    {
      v1 = swift_once();
    }

    MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
    sub_257ECFD50();

    sub_257D337D8(0, v6);
  }
}

void sub_257E1A59C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_actionButtonInteraction;
  if (!*&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_actionButtonInteraction] && AXDeviceHasStaccato())
  {
    v2 = [objc_opt_self() behaviorOptions];
    v3 = [objc_opt_self() _configurationWithPhysicalButton_behavior_behaviorOptions_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257ED9BF0;
    *(inited + 32) = v3;
    v5 = v3;
    sub_257BF379C(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v6 = objc_allocWithZone(MEMORY[0x277D76170]);
    sub_257BD2C2C(0, &qword_27F8F9CC0, 0x277D76168);
    sub_257CA64A0(&qword_27F8F9CC8, &qword_27F8F9CC0, 0x277D76168, MEMORY[0x277D85378]);
    v7 = sub_257ECFA60();

    v8 = [v6 initWithConfigurations:v7 delegate:v0];

    v9 = [v0 view];
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      [v10 addInteraction_];

      v12 = *&v0[v1];
      *&v0[v1] = v11;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_257E1A7A4()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v11[15] & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (v11[14]) || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (v11[13]) || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (v11[12]) || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , v11[11] == 1))
  {
    sub_257ECD440();
    v8 = sub_257ECDA20();
    v9 = sub_257ECFBD0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = 1;
      _os_log_impl(&dword_257BAC000, v8, v9, "Setting detectionModeOn to %{BOOL}d", v10, 8u);
      MEMORY[0x259C74820](v10, -1, -1);
    }

    (*(v1 + 8))(v7, v0);
    swift_getKeyPath();
    swift_getKeyPath();
    v11[10] = 1;
    sub_257ECC3F0();
    sub_257ECDD70();
    sub_257D36B68();
  }
}

void sub_257E1AAFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  *&v6 = MEMORY[0x28223BE20](v1 - 8, v2, v3, v4, v5).n128_u64[0];
  v8 = &v29 - v7;
  v9 = [v0 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9;
  v11 = sub_257DFF054();
  v12 = [v11 view];

  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v10 bringSubviewToFront_];

  v13 = [v0 view];
  if (!v13)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v13;
  v15 = sub_257E001D8();
  [v14 bringSubviewToFront_];

  v16 = sub_257E002B8();
  if (v16)
  {
    v17 = v16;
    v18 = [v0 view];
    if (!v18)
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v19 = v18;
    [v18 bringSubviewToFront_];
  }

  v20 = [v0 view];
  if (!v20)
  {
    goto LABEL_18;
  }

  v21 = v20;
  [v20 bringSubviewToFront_];

  v22 = [v0 view];
  if (!v22)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v23 = v22;
  [v22 bringSubviewToFront_];

  if ((_s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0() & 1) != 0 || os_variant_has_internal_ui() && (static MAGAutomationSupport.freezeFrameAutomationURL.getter(v8), v27 = sub_257ECCB70(), v28 = (*(*(v27 - 8) + 48))(v8, 1, v27), sub_257BE4084(v8, &qword_27F8F5F30, &qword_257EDA9E0), v28 != 1))
  {
    v24 = [v0 view];
    if (v24)
    {
      v25 = v24;
      v26 = sub_257E01668();
      [v25 bringSubviewToFront_];

      return;
    }

    goto LABEL_21;
  }
}

id sub_257E1AD94(uint64_t a1, double a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController);
  if (v3)
  {
    result = [v3 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    [result setAlpha_];
  }

  result = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameScrubberTray);
  if (result)
  {

    return [result setAlpha_];
  }

  return result;
}

void sub_257E1AE48(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameScrubberTray;
  v4 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameScrubberTray);
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *(a2 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(a2 + v3) = 0;

  sub_257E1B914();
}

void sub_257E1AE9C()
{
  v1 = v0;
  v2 = sub_257ECCB70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v10 - 8, v11, v12, v13, v14);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  v23 = &v92 - v22;
  MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
  v30 = &v92 - v29;
  MEMORY[0x28223BE20](v31, v32, v33, v34, v35);
  v37 = &v92 - v36;
  has_internal_ui = os_variant_has_internal_ui();
  v39 = &qword_281544000;
  if (has_internal_ui)
  {
    v40 = static MAGAutomationSupport.freezeFrameAutomationURL.getter(v37);
    v41 = *(v3 + 48);
    v42 = v41(v37, 1, v2, v40);
    v93 = v3;
    v43 = v42;
    sub_257BE4084(v37, &qword_27F8F5F30, &qword_257EDA9E0);
    v39 = &qword_281544000;
    v44 = v93;
    if (v43 != 1)
    {
      v45 = static MAGAutomationSupport.freezeFrameAutomationURL.getter(v30);
      if (v41(v30, 1, v2, v45) == 1)
      {
        sub_257BE4084(v30, &qword_27F8F5F30, &qword_257EDA9E0);
      }

      else
      {
        (*(v44 + 32))(v9, v30, v2);
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if (*(&v94 + 1))
        {
          sub_257D98414(v94, *(&v94 + 1), v95, *(&v95 + 1));
          (*(v93 + 8))(v9, v2);
        }

        else
        {
          v46 = v93;
          (*(v93 + 16))(v23, v9, v2);
          (*(v46 + 56))(v23, 0, 1, v2);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_257C1C614(v23, v16);
          sub_257ECC3F0();
          sub_257ECDD70();
          sub_257BE4084(v23, &qword_27F8F5F30, &qword_257EDA9E0);
          (*(v46 + 8))(v9, v2);
        }
      }

      v39 = &qword_281544000;
    }
  }

  if (v39[508] != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v94)
  {
    v47 = sub_257ED0640();

    if ((v47 & 1) == 0)
    {
      v48 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionService];
      v49 = [objc_allocWithZone(type metadata accessor for FreezeFramePageFlippingController(0)) init];
      sub_257BDBD68(v48);
      goto LABEL_28;
    }
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v50 = *(&v94 + 1);
  if (!*(&v94 + 1))
  {
LABEL_21:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v60 = v94;
    if (v94)
    {
      v61 = sub_257D45484(v94);
      if (v61)
      {
        v62 = v61;
        v63 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionService];
        v64 = [objc_allocWithZone(type metadata accessor for FreezeFramePageFlippingController(0)) init];
        sub_257BDC14C(v62, v63);

        v59 = v64;
        goto LABEL_27;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v65 = v94;
    if (!v94)
    {
      return;
    }

    v66 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionService];
    v67 = objc_allocWithZone(type metadata accessor for FreezeFramePageFlippingController(0));
    v68 = v65;
    v69 = [v67 init];
    sub_257BDC14C(v65, v66);

    v59 = v69;
    goto LABEL_27;
  }

  v51 = v94;
  v52 = v95;
  if (!v94)
  {
    sub_257D98414(0, *(&v94 + 1), v95, *(&v95 + 1));
    goto LABEL_21;
  }

  v53 = objc_allocWithZone(MEMORY[0x277CBF758]);
  v54 = v51;
  v55 = [v53 initWithCVPixelBuffer_];
  v56 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCIImage_];

  v57 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionService];
  v58 = [objc_allocWithZone(type metadata accessor for FreezeFramePageFlippingController(0)) init];
  sub_257BDC378(v56, v57, 1);

  sub_257D98414(v51, v50, v52, *(&v52 + 1));
  v59 = v58;
LABEL_27:
  v49 = v59;
LABEL_28:
  v70 = v49;
  v71 = [v70 view];
  if (!v71)
  {
    __break(1u);
    goto LABEL_45;
  }

  v72 = v71;
  [v71 setAlpha_];

  [v1 addChildViewController_];
  v73 = [v1 view];
  if (!v73)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v74 = v73;
  v75 = [v70 view];
  if (!v75)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v76 = v75;
  [v74 addSubview_];

  [v70 didMoveToParentViewController_];
  v77 = [v70 view];
  if (!v77)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v78 = v77;
  [v77 setTranslatesAutoresizingMaskIntoConstraints_];

  v79 = [v70 view];
  if (!v79)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v80 = [v1 view];
  if (!v80)
  {
LABEL_49:
    __break(1u);
    return;
  }

  v81 = v80;
  sub_257EB6FD8(v80, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

  v82 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController;
  v83 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController] = v70;
  v84 = v70;

  *&v84[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_textOverlayDelegate + 8] = &off_286912068;
  swift_unknownObjectWeakAssign();

  v85 = *&v1[v82];
  if (v85)
  {
    *(v85 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControlPositionDelegate + 8) = &off_286911FF0;
    swift_unknownObjectWeakAssign();
  }

  v86 = qword_281548348;
  v87 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_launchedWithShareActionFromExtension;
  if (*(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_launchedWithShareActionFromExtension) == 1)
  {
    v88 = *&v1[v82];
    if (v88)
    {
      v89 = v88;
      v90 = sub_257DFF3FC();
      v91 = sub_257D84EE0();

      *(&v95 + 1) = type metadata accessor for CameraTrayUIButton();
      *&v94 = v91;
      sub_257BDF9F4(&v94);

      sub_257BE4084(&v94, &unk_27F8F62F0, &unk_257ED9D30);
    }

    *(v86 + v87) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (*(&v94 + 1))
  {
    sub_257D98414(v94, *(&v94 + 1), v95, *(&v95 + 1));
    swift_getKeyPath();
    swift_getKeyPath();
    v94 = 0u;
    v95 = 0u;
    sub_257ECC3F0();
    sub_257ECDD70();
  }
}

void sub_257E1B914()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController;
  v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController);
  if (v3)
  {
    v4 = v3;
    sub_257BDDC34(0);

    v5 = *(v1 + v2);
    if (!v5)
    {
      goto LABEL_6;
    }

    v6 = [v5 view];
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    [v6 removeFromSuperview];

    v8 = *(v1 + v2);
    if (v8)
    {
      [v8 removeFromParentViewController];
      v3 = *(v1 + v2);
    }

    else
    {
LABEL_6:
      v3 = 0;
    }
  }

  *(v1 + v2) = 0;

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
}

uint64_t sub_257E1BA40()
{
  v1 = sub_257ECF120();
  v21 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_257ECF190();
  v8 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v9, v10, v11, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v15 = sub_257ECFD30();
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  aBlock[4] = sub_257E2BD14;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_651;
  v17 = _Block_copy(aBlock);
  v18 = v0;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v14, v7, v17);
  _Block_release(v17);

  (*(v21 + 8))(v7, v1);
  return (*(v8 + 8))(v14, v20);
}

uint64_t sub_257E1BD34(uint64_t a1)
{
  v2 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v18 = sub_257ECF4C0();
  v19 = sub_257ECF4C0();
  v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

  v21 = sub_257ECF500();
  v23 = v22;

  v33[0] = v21;
  v33[1] = v23;
  sub_257BDAB08();
  v24 = sub_257ED0100();
  v26 = v25;

  v27 = sub_257DFF054();
  v28 = sub_257EB1B80();

  v29 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController);
  v30 = sub_257EB1BE0();

  sub_257DFD370(v24, v26, v28, v30);

  *v8 = 0;
  swift_storeEnumTagMultiPayload();
  sub_257ECCCE0();
  sub_257C15EC0(v8, &v15[v9[5]]);
  v15[v9[6]] = 0;
  v15[v9[7]] = 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v31 = qword_281548348;
  sub_257ECC3F0();
  sub_257C15F24(v8, type metadata accessor for MAGOutputEvent.EventType);
  *&v15[v9[8]] = v31;
  sub_257CBBC80(v15);
  return sub_257C15F24(v15, type metadata accessor for MAGOutputEvent);
}

void sub_257E1C034(_BYTE *a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_257ECF120();
  v54 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_257ECF190();
  v15 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v16, v17, v18, v19);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v20) = *a1;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_brightness] = a2;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_contrast] = a3;
  v4[OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_colorFilter] = v20;
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v22 = sub_257ECFD30();
  v23 = swift_allocObject();
  *(v23 + 16) = v4;
  v63 = sub_257E2BBB8;
  v64 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v60 = 1107296256;
  v61 = sub_257D231C0;
  v62 = &block_descriptor_552;
  v24 = _Block_copy(&aBlock);
  v25 = v4;

  sub_257ECF150();
  aBlock = MEMORY[0x277D84F90];
  sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v21, v14, v24);
  _Block_release(v24);

  (*(v54 + 8))(v14, v8);
  (*(v15 + 8))(v21, v53);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v26 = qword_281548348;
  swift_beginAccess();
  v27 = *(v26 + 128);
  v28 = *(v26 + 136);
  v29 = *(v26 + 144);
  aBlock = *(v26 + 120);
  v60 = v27;
  v61 = v28;
  v62 = v29;
  v30 = qword_2815447E0;

  if (v30 != -1)
  {
    v31 = swift_once();
  }

  MEMORY[0x28223BE20](v31, v32, v33, v34, v35);
  *(&v53 - 2) = &aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
  sub_257ECFD50();

  v36 = v56;
  if (v56)
  {
    v37 = *&v55;
    v38 = swift_beginAccess();
    v39 = *(v26 + 96);
    v40 = *(v26 + 104);
    v55 = *(v26 + 88);
    v56 = v39;
    v57 = v40;
    MEMORY[0x28223BE20](v38, v41, v42, v43, v44);
    *(&v53 - 2) = &v55;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
    sub_257ECFD50();

    v45 = v58;
    if (*(v58 + 16))
    {
      v46 = sub_257C03F6C(v37, v36);
      v48 = v47;

      if (v48)
      {
        v49 = *(v45 + 56) + 296 * v46;
        v50 = *(v49 + 16);
        v51 = *(v49 + 24);
        v52 = *(v49 + 32);

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECC3F0();
        sub_257ECDD60();

        if (v51 != v55 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECC3F0(), sub_257ECDD60(), , , , v50 != v55) || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , v52 != LOBYTE(v55)))
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v55) = 1;
          sub_257ECC3F0();
          sub_257ECDD70();
        }

        return;
      }
    }

    else
    {
    }
  }
}

double sub_257E1C6FC(uint64_t a1)
{
  v2 = sub_257D27C8C();
  v3 = sub_257DFF59C();
  v4 = [v3 layer];
  sub_257D18590(v2);
  v6 = v5;

  sub_257EB7394(v6);

  v7 = sub_257ECF7F0();

  [v4 setFilters_];

  v8 = sub_257D27C8C();
  v9 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
  if (v9)
  {
    v10 = v8;
    v16 = v9;
    v11 = [v16 layer];
    sub_257D18590(v10);
    v13 = v12;

    sub_257EB7394(v13);

    v14 = sub_257ECF7F0();

    [v11 setFilters_];
  }

  else
  {
  }

  return result;
}

void sub_257E1C89C(double a1, double a2)
{
  v3 = v2;
  v6 = sub_257E00134();
  [v6 setCenter_];

  v7 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___focusIndicator;
  v8 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___focusIndicator);
  v9 = sub_257E7CFB8();
  v10 = [v9 isAnimating];

  v11 = *&v8[OBJC_IVAR____TtC16MagnifierSupport18FocusIndicatorView____lazy_storage___reticle];
  v12 = v11;
  v13 = &selRef_stopAnimating;
  if (!v10)
  {
    v13 = &selRef_startAnimating;
  }

  [v11 *v13];

  v14 = *(v3 + v7);
  sub_257E7D294();

  v15 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_focusIndicatorFadeTime;
  [*(v3 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_focusIndicatorFadeTime) invalidate];
  v16 = objc_opt_self();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21[4] = sub_257E2BD04;
  v21[5] = v17;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_257E2D168;
  v21[3] = &block_descriptor_639;
  v18 = _Block_copy(v21);

  v19 = [v16 scheduledTimerWithTimeInterval:0 repeats:v18 block:1.0];
  _Block_release(v18);
  v20 = *(v3 + v15);
  *(v3 + v15) = v19;
}

void sub_257E1CA78(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_257E00134();
    v5 = sub_257E7CFB8();
    v6 = [v5 isAnimating];

    v7 = *&v4[OBJC_IVAR____TtC16MagnifierSupport18FocusIndicatorView____lazy_storage___reticle];
    v8 = v7;
    v9 = &selRef_stopAnimating;
    if (!v6)
    {
      v9 = &selRef_startAnimating;
    }

    [v7 *v9];

    v10 = *&v3[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___focusIndicator];
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_257E2BD0C;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_645;
    v13 = _Block_copy(aBlock);
    v14 = v10;

    [v11 animateWithDuration:v13 animations:0.2];
    _Block_release(v13);
  }
}

void sub_257E1CC7C(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x28223BE20](v12, v13, v14, v15, v16).n128_u64[0];
  v19 = &v82 - v18;
  v20 = [a1 view];
  v21 = sub_257DFF054();
  v22 = [v21 view];

  if (v20)
  {
    if (v22)
    {
      sub_257BD2C2C(0, &unk_281543E00, 0x277D75D18);
      v23 = sub_257ECFF50();

      if ((v23 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_6;
    }

    v22 = v20;
LABEL_12:

    goto LABEL_13;
  }

  if (v22)
  {
    goto LABEL_12;
  }

LABEL_6:
  v24 = [*&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController] view];
  if (!v24)
  {
    __break(1u);
    return;
  }

  v25 = v24;
  [v24 alpha];
  v27 = v26;

  if (v27 != 0.0)
  {
    [a1 setState_];

    [a1 reset];
    return;
  }

LABEL_13:
  v28 = [a1 state];
  if ((v28 - 3) < 2)
  {
    v34 = &v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_panStartZoomFactor];
    *v34 = 0;
    v34[8] = 1;
    return;
  }

  if (v28 != 2)
  {
    if (v28 != 1)
    {
      return;
    }

    if (qword_27F8F4668 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D88 == 1)
    {
      v29 = [v2 view];
      [a1 velocityInView_];
      x = v30;
      y = v32;

      goto LABEL_44;
    }

    v40 = sub_257DFF59C();
    [a1 velocityInView_];
    v42 = v41;
    v44 = v43;

    v45 = [objc_opt_self() currentDevice];
    v46 = [v45 orientation];

    if (v46 == 2)
    {
      v47 = 3.14159265;
    }

    else if (v46 == 4)
    {
      v47 = -1.57079633;
    }

    else
    {
      if (v46 != 3)
      {
        v60 = xmmword_257EEAFE0;
        v59 = xmmword_257EEAFF0;
        v61 = 0uLL;
        goto LABEL_43;
      }

      v47 = 1.57079633;
    }

    CGAffineTransformMakeRotation(&v83, v47);
    v59 = *&v83.a;
    v60 = *&v83.c;
    v61 = *&v83.tx;
LABEL_43:
    *&v83.a = v59;
    *&v83.c = v60;
    *&v83.tx = v61;
    CGAffineTransformInvert(&v82, &v83);
    v83 = v82;
    v85.x = v42;
    v85.y = v44;
    v62 = CGPointApplyAffineTransform(v85, &v83);
    x = v62.x;
    y = v62.y;
LABEL_44:
    if (fabs(x) < fabs(y))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      a = v83.a;
      if (*&v83.a)
      {
        [*&v83.a videoZoomFactor];
        v64 = &v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_panStartZoomFactor];
        *v64 = v65;
        v64[8] = 0;
        [*&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomGestureFeedbackGenerator] prepare];

        v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_didRestartZoomGestureAfterLastHaptic] = 1;
      }

      else
      {
        sub_257ECD430();
        v66 = sub_257ECDA20();
        v67 = sub_257ECFBD0();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 0;
          _os_log_impl(&dword_257BAC000, v66, v67, "No capture device", v68, 2u);
          MEMORY[0x259C74820](v68, -1, -1);
        }

        (*(v5 + 8))(v19, v4);
      }
    }

    return;
  }

  if (v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_panStartZoomFactor + 8])
  {
    return;
  }

  v35 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_panStartZoomFactor];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v36 = v83.a;
  if (*&v83.a)
  {
    if (qword_27F8F4668 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D88 == 1)
    {
      v37 = [v2 view];
      [a1 translationInView_];
      v39 = v38;

LABEL_55:
      v72 = [objc_opt_self() mainScreen];
      [v72 _referenceBounds];
      v74 = v73;

      LOBYTE(v83.a) = 0;
      v75 = v39 / v74;
      sub_257D15BB4();
      v77 = v76;
      v78 = [*&v36 activeFormat];
      [v78 videoMaxZoomFactor];
      v80 = v79;

      if (v80 < v77)
      {
        v77 = v80;
      }

      LOBYTE(v83.a) = 0;
      sub_257D15BB4();
      sub_257D334B0(0, v35 - v75 * (v77 - v81));
      sub_257E1E524(a1);

      return;
    }

    v51 = sub_257DFF59C();
    [a1 translationInView_];
    v53 = v52;
    v55 = v54;

    v56 = [objc_opt_self() currentDevice];
    v57 = [v56 orientation];

    if (v57 == 2)
    {
      v58 = 3.14159265;
    }

    else if (v57 == 4)
    {
      v58 = -1.57079633;
    }

    else
    {
      if (v57 != 3)
      {
        v70 = xmmword_257EEAFE0;
        v69 = xmmword_257EEAFF0;
        v71 = 0uLL;
        goto LABEL_54;
      }

      v58 = 1.57079633;
    }

    CGAffineTransformMakeRotation(&v83, v58);
    v69 = *&v83.a;
    v70 = *&v83.c;
    v71 = *&v83.tx;
LABEL_54:
    *&v83.a = v69;
    *&v83.c = v70;
    *&v83.tx = v71;
    CGAffineTransformInvert(&v82, &v83);
    v83 = v82;
    v86.x = v53;
    v86.y = v55;
    v39 = CGPointApplyAffineTransform(v86, &v83).y;
    goto LABEL_55;
  }

  sub_257ECD430();
  v48 = sub_257ECDA20();
  v49 = sub_257ECFBD0();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_257BAC000, v48, v49, "No capture device", v50, 2u);
    MEMORY[0x259C74820](v50, -1, -1);
  }

  (*(v5 + 8))(v11, v4);
}

void sub_257E1D534(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v79 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v17 = &v77 - v16;
  *&v23 = MEMORY[0x28223BE20](v18, v19, v20, v21, v22).n128_u64[0];
  v25 = &v77 - v24;
  v26 = [a1 view];
  if (v26)
  {
    v78 = v4;
    v27 = v26;
    v28 = sub_257DFF054();
    v29 = [v28 view];

    if (v29)
    {
      sub_257BD2C2C(0, &unk_281543E00, 0x277D75D18);
      v30 = sub_257ECFF50();

      if (v30)
      {
        [v27 alpha];
        if (v31 > 0.0)
        {
          v32 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController;
          [a1 locationInView_];
          v34 = v33;
          v36 = v35;
          [*(*(*&v2[v32] + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card) bounds];
          v81.x = v34;
          v81.y = v36;
          if (CGRectContainsPoint(v82, v81))
          {
            sub_257ECD350();
            v37 = sub_257ECDA20();
            v38 = sub_257ECFBD0();
            if (os_log_type_enabled(v37, v38))
            {
              v39 = swift_slowAlloc();
              *v39 = 0;
              _os_log_impl(&dword_257BAC000, v37, v38, "Ignoring tap on card because alpha > 0.", v39, 2u);
              MEMORY[0x259C74820](v39, -1, -1);
            }

            (*(v79 + 8))(v25, v78);
            [a1 setState_];
            [a1 reset];

            return;
          }
        }
      }
    }

    else
    {
    }

    v4 = v78;
  }

  v40 = sub_257DFF59C();
  [a1 locationInView_];
  v42 = v41;
  v44 = v43;

  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  v45 = v42;
  v46 = v44;
  if (byte_27F8F8D88 == 1)
  {
    v47 = [v2 view];
    [a1 locationInView_];
    v45 = v48;
    v46 = v49;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v80 == 1)
  {
    sub_257ECD350();
    v50 = sub_257ECDA20();
    v51 = sub_257ECFBD0();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_257BAC000, v50, v51, "Tapped, Removing Focus Lock", v52, 2u);
      MEMORY[0x259C74820](v52, -1, -1);
    }

    (*(v79 + 8))(v17, v4);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v53 = v80;
    if (v80)
    {
      sub_257D34520();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v80) = 0;
    sub_257ECC3F0();
    sub_257ECDD70();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v80) = 0;
    sub_257ECC3F0();
    sub_257ECDD70();
  }

  else
  {
    sub_257E1C89C(v45, v46);
    v54 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView];
    v55 = [v54 layer];
    objc_opt_self();
    v56 = swift_dynamicCastObjCClass();
    if (v56)
    {
      v57 = v56;
      [v56 setAutomaticallyDimsOverCaptureRegion_];

      [v57 captureDevicePointOfInterestForPoint_];
      v59 = v58;
      v61 = v60;

      sub_257ECD350();
      v62 = sub_257ECDA20();
      v63 = sub_257ECFBD0();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v80 = v65;
        *v64 = 136315650;
        v66 = sub_257ECFEC0();
        v68 = v4;
        v69 = sub_257BF1FC8(v66, v67, &v80);

        *(v64 + 4) = v69;
        *(v64 + 12) = 2080;
        v70 = sub_257ECFEC0();
        v72 = sub_257BF1FC8(v70, v71, &v80);

        *(v64 + 14) = v72;
        *(v64 + 22) = 2080;
        v73 = sub_257ECFEC0();
        v75 = sub_257BF1FC8(v73, v74, &v80);

        *(v64 + 24) = v75;
        _os_log_impl(&dword_257BAC000, v62, v63, "Tapped: %s, layer point: %s, will foucs at captureDevicePoint: %s", v64, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x259C74820](v65, -1, -1);
        MEMORY[0x259C74820](v64, -1, -1);

        (*(v79 + 8))(v10, v68);
      }

      else
      {

        (*(v79 + 8))(v10, v4);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v76 = v80;
      if (v80)
      {
        sub_257D33EF0(v59, v61);
      }
    }

    else
    {

      sub_257ED0410();
      __break(1u);
    }
  }
}

void sub_257E1DE0C(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v17 = MEMORY[0x28223BE20](v12, v13, v14, v15, v16).n128_u64[0];
  v19 = &v38[-v18];
  if ([a1 state] != 1)
  {
    return;
  }

  v20 = [a1 view];
  if (v20)
  {
    v21 = v20;
    v22 = sub_257DFF054();
    v23 = [v22 view];

    if (v23)
    {
      sub_257BD2C2C(0, &unk_281543E00, 0x277D75D18);
      v24 = sub_257ECFF50();

      if (v24)
      {
        [v21 alpha];
        if (v25 > 0.0)
        {
          v26 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController;
          [a1 locationInView_];
          v28 = v27;
          v30 = v29;
          [*(*(*(v2 + v26) + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card) bounds];
          v40.x = v28;
          v40.y = v30;
          if (CGRectContainsPoint(v41, v40))
          {
            sub_257ECD350();
            v31 = sub_257ECDA20();
            v32 = sub_257ECFBD0();
            if (os_log_type_enabled(v31, v32))
            {
              v33 = swift_slowAlloc();
              *v33 = 0;
              _os_log_impl(&dword_257BAC000, v31, v32, "Ignoring tap on card because alpha > 0.", v33, 2u);
              MEMORY[0x259C74820](v33, -1, -1);
            }

            (*(v5 + 8))(v19, v4);
            [a1 setState_];
            [a1 reset];

            return;
          }
        }
      }
    }

    else
    {
    }
  }

  sub_257ECD350();
  v34 = sub_257ECDA20();
  v35 = sub_257ECFBD0();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_257BAC000, v34, v35, "Long Pressed, will lock focus", v36, 2u);
    MEMORY[0x259C74820](v36, -1, -1);
  }

  (*(v5 + 8))(v11, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v37 = v39;
  if (v39)
  {
    sub_257D34228();
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v38[7] = 1;
  sub_257ECC3F0();
  sub_257ECDD70();
  swift_getKeyPath();
  swift_getKeyPath();
  v38[6] = 1;
  sub_257ECC3F0();
  sub_257ECDD70();
}

void sub_257E1E2F8(void *a1)
{
  v3 = [a1 state];
  if (v3 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v8)
    {
      v6 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pinchStartZoomFactor);
      [a1 scale];
      sub_257D334B0(0, v6 * v7);
      sub_257E1E524(a1);
    }
  }

  else if (v3 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v8)
    {
      [v8 videoZoomFactor];
      v5 = v4;

      *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pinchStartZoomFactor) = v5;
    }

    else
    {
      [a1 setState_];
      [a1 reset];
    }

    [*(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomGestureFeedbackGenerator) prepare];
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_didRestartZoomGestureAfterLastHaptic) = 1;
  }
}

void sub_257E1E524(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (!v39)
  {
    return;
  }

  [v39 videoZoomFactor];
  v5 = v4;
  if (v4 == *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_previousGestureZoomFactor) && *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_didRestartZoomGestureAfterLastHaptic) != 1)
  {
    goto LABEL_28;
  }

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_previousGestureZoomFactor) = v4;
  sub_257D15BB4();
  v7 = v6;
  sub_257D15BB4();
  v9 = v8;
  v10 = [v39 activeFormat];
  [v10 videoMaxZoomFactor];
  v12 = v11;

  if (v12 < v9)
  {
    v9 = v12;
  }

  if (v5 > v7 && v9 > v5)
  {
    [*(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomGestureFeedbackGenerator) prepare];
LABEL_28:

    return;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPanGesture);
  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = v13;
  sub_257BD2C2C(0, &unk_27F8FB2C0, 0x277D757F8);
  v16 = a1;
  v17 = v14;
  v18 = sub_257ECFF50();

  if ((v18 & 1) == 0)
  {

LABEL_14:
    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();
    if (!v29)
    {
      goto LABEL_28;
    }

    v30 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPinchGesture);
    if (!v30)
    {
      goto LABEL_28;
    }

    v31 = v29;
    sub_257BD2C2C(0, &unk_27F8F9CB0, 0x277D75848);
    v32 = a1;
    v33 = v30;
    v34 = sub_257ECFF50();

    if ((v34 & 1) == 0 || (([v31 velocity], v5 > v7) || v35 >= 0.0) && ((objc_msgSend(v31, sel_velocity), v38 <= 0.0) || v9 > v5))
    {

      goto LABEL_28;
    }

    [v31 velocity];
    v37 = v36;

    v28 = fabs(v37) * 0.125;
    goto LABEL_20;
  }

  v19 = [v15 view];
  [v15 velocityInView_];
  v21 = v20;
  v23 = v22;

  v24 = sqrt(v21 * v21 + v23 * v23);
  v25 = [objc_opt_self() mainScreen];
  [v25 _referenceBounds];
  v27 = v26;

  v28 = v24 / v27;
LABEL_20:
  if (v28 > 1.0)
  {
    v28 = 1.0;
  }

  if (v28 <= 0.7)
  {
    v28 = 0.7;
  }

  [*(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomGestureFeedbackGenerator) impactOccurredWithIntensity_];

  *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_didRestartZoomGestureAfterLastHaptic) = 0;
}

void sub_257E1E8C0()
{
  v1 = v0;
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD350();
  v10 = sub_257ECDA20();
  v11 = sub_257ECFBD0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_257BAC000, v10, v11, "didActivateCardVisibilityGesture", v12, 2u);
    MEMORY[0x259C74820](v12, -1, -1);
  }

  (*(v3 + 8))(v9, v2);
  v13 = sub_257DFF054();
  v14 = [v13 view];
  if (v14)
  {
    v15 = v14;
    [v14 alpha];
    v17 = v16;

    v18 = sub_257E08680() && v17 == 0.0;
    v19 = objc_opt_self();
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    *(v20 + 24) = v17 != 0.0;
    *(v20 + 25) = v18;
    aBlock[4] = sub_257E2BCF4;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_617;
    v21 = _Block_copy(aBlock);
    v22 = v1;

    [v19 animateWithDuration:v21 animations:0 completion:0.2];
    _Block_release(v21);
  }

  else
  {
    __break(1u);
  }
}

id sub_257E1EB34(uint64_t a1, char a2, char a3)
{
  v6 = sub_257DFF054();
  result = [v6 view];
  if (result)
  {
    v8 = result;
    v9 = 1.0;
    if (a2)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = 1.0;
    }

    [result setAlpha_];

    v11 = [v6 view];
    if (v11)
    {
      type metadata accessor for MFPassthroughView();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        *(v12 + OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_enabled) = (a2 & 1) == 0;
      }
    }

    v13 = *(*(*(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController) + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_grabberView);
    sub_257C8105C();

    sub_257DFD6C4();
    if ((a3 & 1) == 0)
    {
      v9 = 0.0;
    }

    [*(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton) setAlpha_];
    result = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton);
    if (result)
    {

      return [result setAlpha_];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_257E1ECDC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_257ED0160();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_257BE4084(v9, &unk_27F8F62F0, &unk_257ED9D30);
}

void sub_257E1ED68()
{
  v1 = v0;
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD350();
  v10 = sub_257ECDA20();
  v11 = sub_257ECFBD0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_257BAC000, v10, v11, "didActivateCardHidingGesture", v12, 2u);
    MEMORY[0x259C74820](v12, -1, -1);
  }

  (*(v3 + 8))(v9, v2);
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  aBlock[4] = sub_257E2BCEC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_611;
  v15 = _Block_copy(aBlock);
  v16 = v1;

  [v13 animateWithDuration:v15 animations:0 completion:0.2];
  _Block_release(v15);
}

void sub_257E1EF70(uint64_t a1)
{
  v2 = sub_257DFF054();
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 setAlpha_];

    v5 = [v2 view];
    if (v5)
    {
      type metadata accessor for MFPassthroughView();
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        *(v6 + OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_enabled) = 0;
      }
    }

    v7 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController);
    if (v7)
    {
      v8 = v7;
      sub_257BDB830();
    }

    v9 = *MEMORY[0x277D76488];

    UIAccessibilityPostNotification(v9, 0);
  }

  else
  {
    __break(1u);
  }
}

void sub_257E1F078(char a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD350();
  v12 = sub_257ECDA20();
  v13 = sub_257ECFBD0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_257BAC000, v12, v13, "didUpdateCardVisibilityLevel", v14, 2u);
    MEMORY[0x259C74820](v14, -1, -1);
  }

  (*(v5 + 8))(v11, v4);
  v15 = objc_opt_self();
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = a1;
  aBlock[4] = sub_257E2BC74;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_587;
  v17 = _Block_copy(aBlock);
  v18 = v2;

  [v15 animateWithDuration:v17 animations:0 completion:0.2];
  _Block_release(v17);
}

void sub_257E1F288(uint64_t a1, char a2)
{
  v4 = sub_257ECF120();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_257DFF054();
  v13 = [v12 view];
  if (v13)
  {
    v14 = v13;
    [v13 setAlpha_];

    v15 = [v12 view];
    if (v15)
    {
      type metadata accessor for MFPassthroughView();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        *(v16 + OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_enabled) = 1;
      }
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v17 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cardPosition;
    swift_beginAccess();
    v27 = a2;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v18 = sub_257ECF110();
    MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
    *&v26[-16] = &v27;
    *&v26[-8] = v17;
    sub_257ECFD40();
    (*(v5 + 8))(v11, v4);
    swift_endAccess();
    v23 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController;
    v24 = *(*(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController) + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardController);
    sub_257E79340();

    v25 = *(*(*(a1 + v23) + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_grabberView);
    sub_257C8105C();

    sub_257DFD6C4();
  }

  else
  {
    __break(1u);
  }
}

void sub_257E1F554()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v8 = &v35 - v7;
  v9 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_outputEventsTask;
  if (!*&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_outputEventsTask])
  {
    v10 = sub_257ECF930();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    sub_257ECF900();
    v11 = v0;
    v12 = sub_257ECF8F0();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v11;
    *&v1[v9] = sub_257C3FBD4(0, 0, v8, &unk_257EEB6D8, v13);
  }

  if (qword_27F8F4670 != -1)
  {
    swift_once();
  }

  v15 = byte_27F8F8D89;
  v16 = objc_opt_self();
  if (v15 == 1)
  {
    v17 = v16;
    v18 = [v16 preferredFontForTextStyle_];
    v19 = [v18 fontDescriptor];
    v20 = [v19 fontDescriptorWithSymbolicTraits_];

    if (v20)
    {
      v21 = [v17 fontWithDescriptor:v20 size:0.0];

      v18 = v21;
    }
  }

  else
  {
    v18 = [v16 boldSystemFontOfSize_];
  }

  v22 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel;
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel] setTextAlignment_];
  [*&v1[v22] setFont_];
  v23 = *&v1[v22];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 whiteColor];
  [v25 setTextColor_];

  [*&v1[v22] setAlpha_];
  v27 = [*&v1[v22] textContainer];
  [v27 setMaximumNumberOfLines_];

  [*&v1[v22] setAdjustsFontForContentSizeCategory_];
  v28 = [*&v1[v22] textContainer];
  [v28 setLineBreakMode_];

  v29 = *&v1[v22];
  v30 = sub_257ECF4C0();
  [v29 setText_];

  v31 = *&v1[v22];
  v32 = [v24 clearColor];
  [v31 setBackgroundColor_];

  [*&v1[v22] setEditable_];
  [*&v1[v22] setTranslatesAutoresizingMaskIntoConstraints_];
  v33 = *&v1[v22];
  v34 = sub_257ECF4C0();
  [v33 setAccessibilityIdentifier_];
}

uint64_t sub_257E1F998()
{
  v0[2] = sub_257ECF900();
  v0[3] = sub_257ECF8F0();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_257CBFF28;

  return sub_257BD5F90();
}

id sub_257E1FA44()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel;
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel);
    v4 = v1;
    [v4 addSubview_];
    [v4 bringSubviewToFront_];
    v5 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_257EDBE40;
    v7 = [*(v0 + v2) leadingAnchor];
    v8 = [v4 leadingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 constant:0.0];

    *(v6 + 32) = v9;
    v10 = [*(v0 + v2) trailingAnchor];
    v11 = [v4 trailingAnchor];

    v12 = [v10 constraintEqualToAnchor:v11 constant:0.0];
    *(v6 + 40) = v12;
    v13 = [*(v0 + v2) topAnchor];
    v14 = [v4 topAnchor];

    v15 = [v13 constraintEqualToAnchor:v14 constant:60.0];
    *(v6 + 48) = v15;
    v16 = [*(v0 + v2) heightAnchor];
    if (qword_27F8F45F0 != -1)
    {
      swift_once();
    }

    v17 = [v16 constraintLessThanOrEqualToConstant_];

    *(v6 + 56) = v17;
    sub_257BD2C2C(0, &qword_281543EF0, 0x277CCAAD0);
    v18 = sub_257ECF7F0();

    [v5 activateConstraints_];
  }

  v19 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel);

  return [v19 setHidden_];
}

void sub_257E1FD28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v1 - 8, v2, v3, v4, v5);
  v7 = &v34 - v6;
  v8 = sub_257E01668();
  [v8 removeFromSuperview];

  if ((_s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0() & 1) != 0 || os_variant_has_internal_ui() && (static MAGAutomationSupport.freezeFrameAutomationURL.getter(v7), v32 = sub_257ECCB70(), v33 = (*(*(v32 - 8) + 48))(v7, 1, v32), sub_257BE4084(v7, &qword_27F8F5F30, &qword_257EDA9E0), v33 != 1))
  {
    v9 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___freezeFrameDebugView;
    [*&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___freezeFrameDebugView] setHidden_];
    v10 = [v0 view];
    if (v10)
    {
      v11 = v10;
      [v10 addSubview_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_257EDBE40;
      v13 = [*&v0[v9] topAnchor];
      v14 = [v0 view];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 safeAreaLayoutGuide];

        v17 = [v16 topAnchor];
        v18 = [v13 constraintEqualToAnchor:v17 constant:10.0];

        *(v12 + 32) = v18;
        v19 = [*&v0[v9] trailingAnchor];
        v20 = [v0 view];
        if (v20)
        {
          v21 = v20;
          v22 = objc_opt_self();
          v23 = [v21 trailingAnchor];

          v24 = [v19 constraintEqualToAnchor:v23 constant:-10.0];
          *(v12 + 40) = v24;
          v25 = [*&v0[v9] widthAnchor];
          v26 = [v25 constraintGreaterThanOrEqualToConstant_];

          *(v12 + 48) = v26;
          v27 = [*&v0[v9] heightAnchor];
          v28 = [v27 constraintEqualToConstant_];

          *(v12 + 56) = v28;
          sub_257BD2C2C(0, &qword_281543EF0, 0x277CCAAD0);
          v29 = sub_257ECF7F0();

          [v22 activateConstraints_];

          v30 = [v0 view];
          if (v30)
          {
            v31 = v30;
            [v30 bringSubviewToFront_];

            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_257E2010C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogView;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogView] setHidden_];
  v2 = [*&v0[v1] layer];
  [v2 setCornerRadius_];

  v3 = sub_257ECF030();
  v4 = *&v0[v1];
  if (v3)
  {
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 clearColor];
    [v6 setBackgroundColor_];

    [*&v0[v1] ax:1 setWantsGlassAppearance:?];
  }

  else
  {
    v8 = [*&v0[v1] layer];
    if (UIAccessibilityIsReduceTransparencyEnabled())
    {
      v9 = 1.0;
    }

    else
    {
      v9 = 0.95;
    }

    v10 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.15 alpha:v9];
    v11 = [v10 CGColor];

    [v8 setBackgroundColor_];
  }

  v12 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentResponseLabel;
  v13 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentResponseLabel];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 whiteColor];
  [v15 setTextColor_];

  [*&v0[v12] setNumberOfLines_];
  v17 = *&v0[v12];
  v18 = objc_opt_self();
  v19 = *MEMORY[0x277D76918];
  v20 = v17;
  v21 = [v18 preferredFontForTextStyle_];
  [v20 setFont_];

  v22 = *&v0[v12];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = objc_opt_self();
  v25 = v22;
  v26 = [v24 bundleForClass_];
  v27 = sub_257ECF4C0();
  v28 = sub_257ECF4C0();
  v29 = [v26 localizedStringForKey:v27 value:0 table:v28];

  if (!v29)
  {
    sub_257ECF500();
    v29 = sub_257ECF4C0();
  }

  [v25 setAccessibilityValue_];

  [*&v0[v1] addSubview_];
  [*&v0[v12] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v0[v1] setTranslatesAutoresizingMaskIntoConstraints_];
  v30 = [v0 view];
  if (!v30)
  {
    __break(1u);
    goto LABEL_18;
  }

  v31 = v30;
  [v30 addSubview_];

  v32 = [v0 view];
  if (!v32)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v33 = v32;
  [v32 bringSubviewToFront_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_257EE8EA0;
  v35 = [*&v0[v12] leadingAnchor];
  v36 = [*&v0[v1] leadingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:20.0];

  *(v34 + 32) = v37;
  v38 = [*&v0[v12] trailingAnchor];
  v39 = [*&v0[v1] trailingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:-20.0];

  *(v34 + 40) = v40;
  v41 = [*&v0[v12] topAnchor];
  v42 = [*&v0[v1] topAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:20.0];

  *(v34 + 48) = v43;
  v44 = [*&v0[v12] bottomAnchor];
  v45 = [*&v0[v1] bottomAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:-20.0];

  *(v34 + 56) = v46;
  v47 = [*&v0[v1] leadingAnchor];
  v48 = [v0 view];
  if (!v48)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v49 = v48;
  v50 = [v48 leadingAnchor];

  v51 = [v47 constraintEqualToAnchor:v50 constant:10.0];
  *(v34 + 64) = v51;
  v52 = [*&v0[v1] trailingAnchor];
  v53 = [v0 view];
  if (!v53)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v54 = v53;
  v55 = [v53 trailingAnchor];

  v56 = [v52 constraintEqualToAnchor:v55 constant:-10.0];
  *(v34 + 72) = v56;
  v57 = [*&v0[v1] topAnchor];
  v58 = [v0 view];
  if (!v58)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v59 = v58;
  v60 = objc_opt_self();
  v61 = [v59 topAnchor];

  v62 = [v57 constraintEqualToAnchor:v61 constant:60.0];
  *(v34 + 80) = v62;
  sub_257BD2C2C(0, &qword_281543EF0, 0x277CCAAD0);
  v63 = sub_257ECF7F0();

  [v60 activateConstraints_];
}

void sub_257E208FC()
{

  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController__capturedPhoto;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9CA0, &unk_257EEB5A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController__capturedImage;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F20, &qword_257EE6E50);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_257CC8CC0(*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeCoachingLabel));
  sub_257CC8CC0(*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeDetectionInformationLabel));

  sub_257BE4084(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastSpeechDate, &qword_27F8F7838, &qword_257EE35C0);
  v5 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_tooFastLastDate;
  v6 = sub_257ECCC80();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);

  v7(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastImageDescriptionTextTime, v6);

  v7(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastTextDetectionTextDisplayTime, v6);
  v7(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastHandPoseTime, v6);

  v7(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_sessionTimerStartTime, v6);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_stillImageStore));

  v8 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameScrubberTray);
}

id sub_257E21300()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AppViewController(uint64_t a1)
{
  result = qword_281544838;
  if (!qword_281544838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257E21D94(uint64_t a1)
{
  sub_257D7085C(319, &qword_2815440B8, &unk_27F8F9BA0, &unk_257EEC1C0);
  if (v1 <= 0x3F)
  {
    sub_257D7085C(319, &qword_281544098, &unk_27F8F9BB0, &qword_257EE59E0);
    if (v2 <= 0x3F)
    {
      sub_257E221B0(319);
      if (v3 <= 0x3F)
      {
        sub_257ECCC80();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_257E221B0(uint64_t a1)
{
  if (!qword_281545C38)
  {
    sub_257ECCC80();
    v1 = sub_257ED00C0();
    if (!v2)
    {
      atomic_store(v1, &qword_281545C38);
    }
  }
}

BOOL sub_257E22208(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPanGesture];
  if (!v2)
  {
    return 1;
  }

  v3 = v1;
  sub_257BD2C2C(0, &qword_27F8F9C98, 0x277D75548);
  v5 = a1;
  v6 = v2;
  v7 = sub_257ECFF50();

  if ((v7 & 1) == 0)
  {
    return 1;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  v10 = qword_27F8F4668;
  v11 = v5;
  if (v10 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D88 == 1)
  {
    v12 = [v3 view];
    [v9 velocityInView_];
    x = v13;
    y = v15;

    return fabs(x) < fabs(y);
  }

  v17 = sub_257DFF59C();
  [v9 velocityInView_];
  v19 = v18;
  v21 = v20;

  v22 = [objc_opt_self() currentDevice];
  v23 = [v22 orientation];

  if (v23 == 2)
  {
    v24 = 3.14159265;
  }

  else if (v23 == 4)
  {
    v24 = -1.57079633;
  }

  else
  {
    if (v23 != 3)
    {
      v26 = xmmword_257EEAFE0;
      v25 = xmmword_257EEAFF0;
      v27 = 0uLL;
      goto LABEL_16;
    }

    v24 = 1.57079633;
  }

  CGAffineTransformMakeRotation(&v31, v24);
  v25 = *&v31.a;
  v26 = *&v31.c;
  v27 = *&v31.tx;
LABEL_16:
  *&v31.a = v25;
  *&v31.c = v26;
  *&v31.tx = v27;
  CGAffineTransformInvert(&v30, &v31);
  v31 = v30;
  v32.x = v19;
  v32.y = v21;
  v28 = CGPointApplyAffineTransform(v32, &v31);
  x = v28.x;
  y = v28.y;

  return fabs(x) < fabs(y);
}

BOOL sub_257E224B8(void *a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPanGesture);
  result = 1;
  if (v3)
  {
    sub_257BD2C2C(0, &qword_27F8F9C98, 0x277D75548);
    v6 = a1;
    v7 = v3;
    v8 = sub_257ECFF50();

    if (v8)
    {
      v9 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPinchGesture);
      if (v9)
      {
        v10 = a2;
        v11 = v9;
        v12 = sub_257ECFF50();

        if (v12)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_257E225F4(void *a1, uint64_t a2)
{
  if ([a1 phase] == 1)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v2 = qword_281548348;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((v86 & 1) == 0)
    {
      v3 = v2 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__mode;
      swift_beginAccess();
      v4 = *(v3 + 8);
      v5 = *(v3 + 16);
      *&v86 = *v3;
      *(&v86 + 1) = v4;
      LOBYTE(v87) = v5;
      v6 = qword_2815447E0;

      if (v6 != -1)
      {
        v7 = swift_once();
      }

      MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
      sub_257ECFD50();

      if (v90 && v90 != 1)
      {
      }

      else
      {
        v12 = sub_257ED0640();

        if ((v12 & 1) == 0)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECDD60();

          if (v86 == 1)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(v86) = 0;
            sub_257ECC3F0();
            sub_257ECDD70();
            swift_beginAccess();
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v14 = Strong;
              v15 = sub_257DFF3FC();

              v16 = *&v15[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotButtonContextMenuInteraction];
              v17 = v16;

              if (v16)
              {
                swift_beginAccess();
                v18 = swift_unknownObjectWeakLoadStrong();
                if (v18)
                {
                  v19 = v18;
                  v20 = sub_257DFF3FC();

                  v21 = sub_257D832B0();
                  [v21 addInteraction_];
                }
              }
            }

            swift_beginAccess();
            v22 = swift_unknownObjectWeakLoadStrong();
            if (v22)
            {
              v23 = v22;
              v24 = sub_257DFF3FC();

              v25 = sub_257D832B0();
              swift_beginAccess();
              v26 = swift_unknownObjectWeakLoadStrong();
              if (!v26)
              {
                goto LABEL_53;
              }

              v27 = v26;
              v28 = sub_257DFF3FC();

              swift_beginAccess();
              v29 = swift_unknownObjectWeakLoadStrong();
              if (v29)
              {
                v30 = v29;
                v31 = sub_257DFF3FC();

                v32 = sub_257D832B0();
              }

              else
              {
                v32 = 0;
              }

              v84 = sub_257D84490(v32);

              if (v84)
              {
                sub_257BD2C2C(0, &qword_281543E70, 0x277D75088);
                v85 = sub_257ECF7F0();
              }

              else
              {
LABEL_53:
                v85 = 0;
              }

              [v25 setAccessibilityCustomActions_];
            }
          }

          else
          {
            swift_beginAccess();
            v33 = swift_unknownObjectWeakLoadStrong();
            if (v33)
            {
              v34 = v33;
              v86 = 0u;
              v87 = 0u;
              sub_257D465A4();

              sub_257BE4084(&v86, &unk_27F8F62F0, &unk_257ED9D30);
            }

            swift_beginAccess();
            v35 = swift_unknownObjectWeakLoadStrong();
            if (v35)
            {
              v36 = v35;
              v37 = sub_257DFF3FC();

              v38 = sub_257D83270();
              v39 = [v38 contextMenuInteraction];

              [v39 dismissMenu];
            }

            swift_beginAccess();
            v40 = swift_unknownObjectWeakLoadStrong();
            if (v40)
            {
              v41 = v40;
              v42 = sub_257DFF3FC();

              v43 = sub_257D83290();
              v44 = [v43 contextMenuInteraction];

              [v44 dismissMenu];
            }

            swift_getKeyPath();
            swift_getKeyPath();
            sub_257ECDD60();

            if (v86 && v86 == 1)
            {
            }

            else
            {
              v45 = sub_257ED0640();

              if ((v45 & 1) == 0)
              {
                swift_beginAccess();
                v46 = swift_unknownObjectWeakLoadStrong();
                if (v46)
                {
                  v47 = v46;
                  v48 = sub_257DFF3FC();

                  v49 = *&v48[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotButtonContextMenuInteraction];
                  v50 = v49;

                  if (v49)
                  {
                    swift_beginAccess();
                    v51 = swift_unknownObjectWeakLoadStrong();
                    if (v51)
                    {
                      v52 = v51;
                      v53 = sub_257DFF3FC();

                      v54 = sub_257D832B0();
                      [v54 removeInteraction_];
                    }

                    swift_beginAccess();
                    v55 = swift_unknownObjectWeakLoadStrong();
                    if (v55)
                    {
                      v56 = v55;
                      v57 = sub_257DFF3FC();

                      v58 = sub_257D832B0();
                      [v58 setAccessibilityCustomActions_];
                    }
                  }
                }
              }
            }

            swift_beginAccess();
            v59 = swift_unknownObjectWeakLoadStrong();
            if (v59)
            {
              v60 = v59;
              v61 = objc_opt_self();
              v62 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v88 = sub_257D9FEEC;
              v89 = v62;
              *&v86 = MEMORY[0x277D85DD0];
              *(&v86 + 1) = 1107296256;
              *&v87 = sub_257D231C0;
              *(&v87 + 1) = &block_descriptor_1058;
              v63 = _Block_copy(&v86);

              [v61 animateWithDuration:v63 animations:0 completion:0.25];
              _Block_release(v63);
            }

            swift_beginAccess();
            v64 = swift_unknownObjectWeakLoadStrong();
            if (v64)
            {
              v65 = v64;
              v66 = sub_257DFF3FC();

              v67 = *&v66[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryView];
              [v67 removeFromSuperview];
            }

            swift_beginAccess();
            v68 = swift_unknownObjectWeakLoadStrong();
            if (v68)
            {
              v69 = v68;
              v70 = sub_257DFF3FC();

              v71 = *&v70[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryView];
              [v71 setHidden_];
            }

            swift_beginAccess();
            v72 = swift_unknownObjectWeakLoadStrong();
            if (v72)
            {
              v73 = v72;
              v74 = sub_257DFF3FC();

              v75 = *&v74[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryView];
              [v75 resignFirstResponder];
            }

            swift_beginAccess();
            v76 = swift_unknownObjectWeakLoadStrong();
            if (v76)
            {
              v77 = v76;
              v78 = sub_257DFF3FC();

              v79 = *&v78[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryBackButton];
              [v79 removeFromSuperview];
            }

            swift_beginAccess();
            v80 = swift_unknownObjectWeakLoadStrong();
            if (v80)
            {
              v81 = v80;
              v82 = sub_257DFF3FC();

              v83 = *&v82[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryBackButton];
              [v83 setHidden_];
            }
          }
        }
      }
    }
  }
}

void sub_257E23034(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_257DFF054();
    v4 = [v3 view];
    if (v4)
    {
      v5 = v4;
      [v4 setAlpha_];

      v6 = [v3 view];
      if (v6)
      {
        type metadata accessor for MFPassthroughView();
        v7 = swift_dynamicCastClass();
        if (v7)
        {
          *(v7 + OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_enabled) = 1;
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_257E23118(void *a1)
{
  v2 = v1;
  v115 = *MEMORY[0x277D85DE8];
  v4 = sub_257ECDA30();
  v107 = *(v4 - 8);
  v108 = v4;
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v10 = v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v17 = v102 - v16;
  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  v106 = v102 - v23;
  v24 = sub_257ECF120();
  v109 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
  v30 = v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AXDeviceSupportsBackTap())
  {
    v31 = [objc_opt_self() defaultCenter];

    v32 = sub_257ECF4C0();

    [v31 postNotificationName:v32 object:0];

    v33 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_backTapEventProcessor];
    if (v33)
    {
      v34 = v33;
      v35 = sub_257ECF4C0();
      [v34 endHandlingHIDEventsForReason_];
    }
  }

  v36 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService];
  v37 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  if (*(v36 + v37))
  {
    v105 = 1;
  }

  else
  {
    v105 = [*(*&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService] + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession) isRunning];
  }

  if ([*(*&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService] + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession) isInterrupted])
  {
    v38 = 1;
  }

  else if (*(v36 + v37))
  {
    v38 = *(v36 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSessionIsInterrupted);
  }

  else
  {
    v38 = 0;
  }

  v39 = [a1 userInfo];
  if (!v39)
  {
    goto LABEL_29;
  }

  v104 = v38;
  v40 = v39;
  v41 = sub_257ECF3D0();

  v110 = sub_257ECF500();
  v111 = v42;
  sub_257ED0280();
  if (!*(v41 + 16) || (v43 = sub_257C03F28(v112), (v44 & 1) == 0))
  {

    sub_257C09D10(v112);
LABEL_29:
    v113 = 0u;
    v114 = 0u;
    goto LABEL_30;
  }

  sub_257BE41F4(*(v41 + 56) + 32 * v43, &v113);
  sub_257C09D10(v112);

  if (!*(&v114 + 1))
  {
LABEL_30:
    sub_257BE4084(&v113, &unk_27F8F62F0, &unk_257ED9D30);
    goto LABEL_31;
  }

  if (swift_dynamicCast())
  {
    v45 = LODWORD(v112[0]);
    swift_beginAccess();
    sub_257C4D488(&v113, v45);
    swift_endAccess();
    if ((v45 - 1) >= 3)
    {
      if (v45 == 11)
      {
        sub_257ECD460();
        v96 = sub_257ECDA20();
        v97 = sub_257ECFBD0();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          *v98 = 67109376;
          *(v98 + 4) = v105;
          *(v98 + 8) = 1024;
          *(v98 + 10) = v104;
          _os_log_impl(&dword_257BAC000, v96, v97, "[reason: suspension] session running: %{BOOL}d, inter: %{BOOL}d", v98, 0xEu);
          MEMORY[0x259C74820](v98, -1, -1);
        }

        (*(v107 + 8))(v17, v108);
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v112[0] = 0;
        sub_257ECC3F0();
        sub_257ECDD70();
        swift_getKeyPath();
        swift_getKeyPath();
        v112[0] = 0;
        sub_257ECC3F0();
        sub_257ECDD70();
        if (*(v36 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_isARSessionStarted) == 1)
        {
          sub_257CC00C4();
          sub_257CC1318();
        }

        sub_257E10E20();
      }

      else
      {
        sub_257ECD460();
        v99 = sub_257ECDA20();
        v100 = sub_257ECFBD0();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          *v101 = 67109632;
          *(v101 + 4) = v45;
          *(v101 + 8) = 1024;
          *(v101 + 10) = v105;
          *(v101 + 14) = 1024;
          *(v101 + 16) = v104;
          _os_log_impl(&dword_257BAC000, v99, v100, "[reason: other (%d)] session running: %{BOOL}d, inter: %{BOOL}d", v101, 0x14u);
          MEMORY[0x259C74820](v101, -1, -1);
        }

        (*(v107 + 8))(v10, v108);
      }
    }

    else
    {
      sub_257E10374(0, 0, 0);
      if (*(v36 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_isARSessionStarted) == 1)
      {
        sub_257CC00C4();
        sub_257DFE168();
        [*(v36 + v37) pause];
      }

      v46 = sub_257DFF59C();
      v47 = [v46 layer];
      objc_opt_self();
      v48 = swift_dynamicCastObjCClass();
      if (!v48)
      {

        sub_257ED0410();
        __break(1u);
        return;
      }

      v49 = v48;
      [v48 setAutomaticallyDimsOverCaptureRegion_];

      v50 = [v49 connection];
      [v50 setEnabled_];

      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v51 = qword_281548348;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v52 = v112[0];
      swift_beginAccess();
      LOBYTE(v113) = v52;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v53 = sub_257ECF110();
      MEMORY[0x28223BE20](v53, v54, v55, v56, v57);
      sub_257ECFD40();
      v103 = *(v109 + 8);
      v109 += 8;
      v103(v30, v24);
      swift_endAccess();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v58 = v112[0];
      swift_beginAccess();
      LOBYTE(v113) = v58;
      v59 = sub_257ECF110();
      MEMORY[0x28223BE20](v59, v60, v61, v62, v63);
      sub_257ECFD40();
      v64 = v51;
      v65 = v103;
      v103(v30, v24);
      swift_endAccess();
      swift_getKeyPath();
      swift_getKeyPath();
      v102[1] = v64;
      sub_257ECDD60();

      v66 = v112[0];
      swift_beginAccess();
      LOBYTE(v113) = v66;
      v67 = sub_257ECF110();
      MEMORY[0x28223BE20](v67, v68, v69, v70, v71);
      sub_257ECFD40();
      v65(v30, v24);
      swift_endAccess();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      LOBYTE(v64) = v112[0];
      swift_beginAccess();
      LOBYTE(v113) = v64;
      v72 = sub_257ECF110();
      MEMORY[0x28223BE20](v72, v73, v74, v75, v76);
      sub_257ECFD40();
      v65(v30, v24);
      swift_endAccess();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      LOBYTE(v64) = v112[0];
      swift_beginAccess();
      LOBYTE(v113) = v64;
      v77 = sub_257ECF110();
      MEMORY[0x28223BE20](v77, v78, v79, v80, v81);
      sub_257ECFD40();
      v103(v30, v24);
      swift_endAccess();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      LOBYTE(v64) = v112[0];
      swift_beginAccess();
      LOBYTE(v113) = v64;
      v82 = sub_257ECF110();
      MEMORY[0x28223BE20](v82, v83, v84, v85, v86);
      sub_257ECFD40();
      v103(v30, v24);
      swift_endAccess();
      v87 = v106;
      sub_257ECD460();
      v88 = sub_257ECDA20();
      v89 = sub_257ECFBD0();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 67109376;
        *(v90 + 4) = v105;
        *(v90 + 8) = 1024;
        *(v90 + 10) = v104;
        _os_log_impl(&dword_257BAC000, v88, v89, "[reason: switcher/CC/NC] session running: %{BOOL}d, inter: %{BOOL}d", v90, 0xEu);
        MEMORY[0x259C74820](v90, -1, -1);
      }

      (*(v107 + 8))(v87, v108);
    }
  }

LABEL_31:
  v91 = [objc_opt_self() defaultDeviceWithMediaType_];
  if (v91)
  {
    v92 = v91;
    v112[0] = 0;
    if ([v91 lockForConfiguration_])
    {
      v93 = v112[0];
      if ([v92 torchMode] == 1)
      {
        [v2 toggleAVTorchForApplicationDeactivation_];
      }
    }

    else
    {
      v94 = v112[0];
      v95 = sub_257ECC9F0();

      swift_willThrow();
    }
  }
}

void sub_257E24164(void *a1)
{
  v3 = sub_257ECCB70();
  v157 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v144 = &v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v156 = &v143 - v14;
  v155 = sub_257ECCDC0();
  v153 = *(v155 - 8);
  MEMORY[0x28223BE20](v155, v15, v16, v17, v18);
  v150 = &v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_257ECCDD0();
  v149 = *(v151 - 8);
  MEMORY[0x28223BE20](v151, v20, v21, v22, v23);
  v147 = &v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7838, &qword_257EE35C0);
  MEMORY[0x28223BE20](v25 - 8, v26, v27, v28, v29);
  v31 = &v143 - v30;
  v154 = sub_257ECCC80();
  v146 = *(v154 - 8);
  MEMORY[0x28223BE20](v154, v32, v33, v34, v35);
  v145 = &v143 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v38, v39, v40, v41);
  v148 = &v143 - v42;
  v43 = sub_257ECDA30();
  v159 = *(v43 - 8);
  v160 = v43;
  MEMORY[0x28223BE20](v43, v44, v45, v46, v47);
  v49 = &v143 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50, v51, v52, v53, v54);
  v56 = &v143 - v55;
  *&v62 = MEMORY[0x28223BE20](v57, v58, v59, v60, v61).n128_u64[0];
  v64 = &v143 - v63;
  v65 = v1;
  v66 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService);
  v67 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession;
  v68 = [*(v66 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession) isRunning];
  v158 = v3;
  v152 = v31;
  if (v68)
  {
    goto LABEL_2;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v163[0] == 1)
  {
    v70 = *(v65 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService);
    v71 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
    swift_beginAccess();
    if (!*(v70 + v71))
    {
LABEL_2:
      v69 = 1;
      goto LABEL_9;
    }

    v69 = *(v70 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSessionIsInterrupted) ^ 1;
  }

  else
  {
    v69 = 0;
  }

LABEL_9:
  if ([*(v66 + v67) isInterrupted])
  {
    v72 = 1;
  }

  else
  {
    v73 = *(v65 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService);
    v74 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
    swift_beginAccess();
    if (*(v73 + v74))
    {
      v72 = *(v73 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSessionIsInterrupted);
    }

    else
    {
      v72 = 0;
    }
  }

  byte_27F912FE8 = 0;
  v75 = [a1 userInfo];
  if (!v75)
  {
    goto LABEL_36;
  }

  v76 = v75;
  v143 = v66;
  v77 = sub_257ECF3D0();

  v161 = sub_257ECF500();
  v162 = v78;
  sub_257ED0280();
  if (!*(v77 + 16) || (v79 = sub_257C03F28(v163), (v80 & 1) == 0))
  {

    sub_257C09D10(v163);
LABEL_36:
    v164 = 0u;
    v165 = 0u;
    goto LABEL_37;
  }

  sub_257BE41F4(*(v77 + 56) + 32 * v79, &v164);
  sub_257C09D10(v163);

  if (!*(&v165 + 1))
  {
LABEL_37:
    sub_257BE4084(&v164, &unk_27F8F62F0, &unk_257ED9D30);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v81 = *v163;
  v82 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_deactivationReasons;
  swift_beginAccess();
  sub_257D6E2DC(v81);
  swift_endAccess();
  if (v81 - 1 >= 3)
  {
    if (v81 == 11)
    {
      sub_257ECD460();
      v104 = sub_257ECDA20();
      v105 = sub_257ECFBD0();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 67109376;
        *(v106 + 4) = v69 & 1;
        *(v106 + 8) = 1024;
        *(v106 + 10) = v72;
        _os_log_impl(&dword_257BAC000, v104, v105, "[reason: susp] session running: %{BOOL}d, inter: %{BOOL}d", v106, 0xEu);
        MEMORY[0x259C74820](v106, -1, -1);
      }

      (*(v159 + 8))(v56, v160);
      v107 = v65;
      v108 = sub_257DFF59C();
      v92 = [v108 layer];
      objc_opt_self();
      v109 = swift_dynamicCastObjCClass();
      if (!v109)
      {
        goto LABEL_70;
      }

      v110 = v109;
      [v109 setAutomaticallyDimsOverCaptureRegion_];

      v111 = [v110 connection];
      if (v111)
      {
        [v111 setEnabled_];
      }

      sub_257E10748(1, 0, 0, 0.0);
      if (AXDeviceSupportsBackTap())
      {
        v112 = [objc_opt_self() defaultCenter];

        v113 = sub_257ECF4C0();

        [v112 postNotificationName:v113 object:0];

        sub_257D231EC();
      }

      v160 = v107;
      v114 = v147;
      sub_257ECCDB0();
      v115 = v153;
      v116 = v150;
      v117 = v155;
      (*(v153 + 104))(v150, *MEMORY[0x277CC99A0], v155);
      v118 = v145;
      sub_257ECCC70();
      v119 = v152;
      sub_257ECCDA0();
      v120 = v146;
      v121 = v118;
      v122 = v154;
      v159 = *(v146 + 8);
      (v159)(v121, v154);
      (*(v115 + 8))(v116, v117);
      (*(v149 + 8))(v114, v151);
      v123 = *(v120 + 48);
      if (v123(v119, 1, v122) == 1)
      {
        v124 = v148;
        sub_257ECCC70();
        v125 = v123(v119, 1, v122);
        v126 = v158;
        if (v125 != 1)
        {
          sub_257BE4084(v119, &qword_27F8F7838, &qword_257EE35C0);
        }
      }

      else
      {
        v124 = v148;
        (*(v120 + 32))(v148, v119, v122);
        v126 = v158;
      }

      sub_257C77984();
      (v159)(v124, v122);
      v130 = v156;
      if (qword_27F8F46D8 != -1)
      {
        swift_once();
      }

      sub_257C73204();
      v132 = *(v131 + 16);

      sub_257C73204();
      v134 = *(v133 + 16);
      v135 = v160;
      v136 = v157;
      if (v134)
      {
        v137 = v144;
        (*(v157 + 16))(v144, v133 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * (v134 - 1), v126);

        (*(v136 + 32))(v130, v137, v126);
        if (qword_27F8F46E0 != -1)
        {
          swift_once();
        }

        v138 = sub_257C76CCC(v130);
        if (v138)
        {

          sub_257E25150(v132);
        }

        (*(v136 + 8))(v130, v126);
      }

      else
      {
      }

      v139 = sub_257DFF3FC();
      v140 = &v139[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___successfulMultiShotCaptureCount];
      *v140 = v132;
      v140[8] = 0;

      v141 = *(v135 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameScrubberTray);
      if (v141)
      {
        v142 = v141;
        sub_257EB7990();
      }

      if ((v69 & 1) == 0)
      {
        goto LABEL_69;
      }

      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v163[0] == 1)
      {
LABEL_69:
        sub_257DB16AC();
      }
    }

    else
    {
      sub_257ECD460();
      v127 = sub_257ECDA20();
      v128 = sub_257ECFBD0();
      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        *v129 = 67109632;
        *(v129 + 4) = v81;
        *(v129 + 8) = 1024;
        *(v129 + 10) = v69 & 1;
        *(v129 + 14) = 1024;
        *(v129 + 16) = v72;
        _os_log_impl(&dword_257BAC000, v127, v128, "[reason: other (%d)] session running: %{BOOL}d, inter: %{BOOL}d", v129, 0x14u);
        MEMORY[0x259C74820](v129, -1, -1);
      }

      (*(v159 + 8))(v49, v160);
    }
  }

  else
  {
    v83 = *(v65 + v82);

    v87 = *(sub_257E29300(&unk_286906188, v83, v84, v85, v86) + 16);

    sub_257ECD460();
    v88 = sub_257ECDA20();
    v89 = sub_257ECFBD0();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 67109632;
      *(v90 + 4) = v69 & 1;
      *(v90 + 8) = 1024;
      *(v90 + 10) = v72;
      *(v90 + 14) = 1024;
      *(v90 + 16) = v87 == 0;
      _os_log_impl(&dword_257BAC000, v88, v89, "[reason: switcher/CC/NC] session running: %{BOOL}d, inter: %{BOOL}d, out of switcher+CC+NC: %{BOOL}d", v90, 0x14u);
      MEMORY[0x259C74820](v90, -1, -1);
    }

    (*(v159 + 8))(v64, v160);
    if (!v87)
    {
      v91 = sub_257DFF59C();
      v92 = [v91 layer];
      objc_opt_self();
      v93 = swift_dynamicCastObjCClass();
      if (v93)
      {
        v94 = v93;
        [v93 setAutomaticallyDimsOverCaptureRegion_];

        v95 = [v94 connection];
        if (v95)
        {
          [v95 setEnabled_];
        }

        v96 = *(v65 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService);
        if (*(v96 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_isARSessionStarted) == 1)
        {
          v97 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
          swift_beginAccess();
          v98 = *(v96 + v97);
          if (v98)
          {
            v99 = v98;
            v100 = [v99 configuration];
            if (v100)
            {
              v101 = v100;
              [v99 runWithConfiguration:v100 options:1];

              v99 = v101;
            }
          }
        }

        if ((v72 & 1) == 0)
        {
          sub_257E10748(1, 0, 0, 0.0);
        }

        if (AXDeviceSupportsBackTap())
        {
          v102 = [objc_opt_self() defaultCenter];

          v103 = sub_257ECF4C0();

          [v102 postNotificationName:v103 object:0];

          sub_257D231EC();
        }

        return;
      }

LABEL_70:

      sub_257ED0410();
      __break(1u);
    }
  }
}

void sub_257E25150(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v9 = &v31 - v8;
  v10 = sub_257ECCB70();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12, v13, v14, v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton;
  v19 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton);
  if (sub_257E08680())
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.0;
  }

  [v19 setAlpha_];

  v21 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton);
  if (v21)
  {
    v22 = v21;
    if (sub_257E08680())
    {
      v23 = 1.0;
    }

    else
    {
      v23 = 0.0;
    }

    [v22 setAlpha_];
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_257BE4084(v9, &qword_27F8F5F30, &qword_257EDA9E0);
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    if (qword_27F8F46E0 != -1)
    {
      swift_once();
    }

    v24 = sub_257C76CCC(v17);
    if (v24)
    {
      v25 = v24;
      v26 = *(v1 + v18);
      sub_257E572C8(v25, a1);

      (*(v11 + 8))(v17, v10);
      return;
    }

    (*(v11 + 8))(v17, v10);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v27 = v32;
  if (v32)
  {
    v28 = sub_257D45484(v32);
    if (v28)
    {
      v29 = v28;
      v30 = *(v1 + v18);
      sub_257E572C8(v29, a1);
    }

    else
    {
    }
  }
}

double sub_257E2554C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7A48, &qword_257EE2658);
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v77 = &v64 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54D0, &unk_257ED9EA0);
  v76 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v9, v10, v11, v12);
  v74 = &v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F84F0, &qword_257EE4710);
  v72 = *(v14 - 8);
  v73 = v14;
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v71 = &v64 - v19;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9EC0, &unk_257EEBD20);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v20, v21, v22, v23);
  v25 = &v64 - v24;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9330, &unk_257EE9590);
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67, v26, v27, v28, v29);
  v31 = &v64 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9ED0, qword_257EEBD30);
  v68 = *(v32 - 8);
  v69 = v32;
  MEMORY[0x28223BE20](v32, v33, v34, v35, v36);
  v38 = &v64 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9D40, &qword_257EDF9A0);
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v41, v42, v43, v44);
  v46 = &v64 - v45;
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    sub_257BF2CF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v47 = MEMORY[0x277D84FA0];
  }

  v82 = v47;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v48 = qword_281548340;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60, &qword_257EDF9D0);
  v75 = v48;
  sub_257ECDD30();
  swift_endAccess();
  sub_257BD2D4C(&unk_281544160, &unk_27F8F9D40, &qword_257EDF9A0, MEMORY[0x277CBCEC8]);
  sub_257ECDE50();
  (*(v40 + 8))(v46, v39);
  sub_257ECDCB0();

  v80 = v1;
  if (a1)
  {
    swift_getKeyPath();
    sub_257ECCA50();

    swift_allocObject();
    swift_unknownObjectUnownedInit();
    sub_257BD2D4C(&unk_281543DB0, &unk_27F8F9EC0, &unk_257EEBD20, MEMORY[0x277CC9E08]);
    v49 = v66;
    sub_257ECDDD0();

    (*(v64 + 8))(v25, v49);
    v50 = MEMORY[0x277CBCC08];
    sub_257BD2D4C(&qword_281544390, &unk_27F8F9330, &unk_257EE9590, MEMORY[0x277CBCC08]);
    v51 = v67;
    v52 = sub_257ECDD90();
    (*(v65 + 8))(v31, v51);
    v81 = v52;
    swift_allocObject();
    swift_unknownObjectUnownedInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9360, &qword_257EEC930);
    sub_257BD2D4C(&qword_2815441E8, &qword_27F8F9360, &qword_257EEC930, MEMORY[0x277CBCD90]);
    sub_257ECDDD0();

    sub_257BD2D4C(&qword_2815443B0, &unk_27F8F9ED0, qword_257EEBD30, v50);
    v53 = v69;
    v54 = sub_257ECDD90();
    (*(v68 + 8))(v38, v53);
    v81 = v54;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_257ECDE50();

    sub_257ECDCB0();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54F0, qword_257ED9EC0);
  v55 = v71;
  sub_257ECDD30();
  swift_endAccess();
  v56 = MEMORY[0x277CBCEC8];
  v69 = MEMORY[0x277CBCEC8];
  sub_257BD2D4C(&unk_281544170, &qword_27F8F84F0, &qword_257EE4710, MEMORY[0x277CBCEC8]);
  v57 = v73;
  sub_257ECDE50();
  (*(v72 + 8))(v55, v57);
  sub_257ECDCB0();

  v73 = xmmword_281548330;
  swift_beginAccess();
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350, &unk_257EE6DF0);
  v58 = v74;
  sub_257ECDD30();
  swift_endAccess();

  sub_257BD2D4C(&unk_281544190, &unk_27F8F54D0, &unk_257ED9EA0, v56);
  v59 = v70;
  sub_257ECDE50();
  v60 = *(v76 + 8);
  v60(v58, v59);
  sub_257ECDCB0();

  swift_beginAccess();
  sub_257ECC3F0();
  sub_257ECDD30();
  swift_endAccess();

  sub_257ECDE50();
  v60(v58, v59);
  sub_257ECDCB0();

  swift_beginAccess();
  sub_257ECC3F0();
  sub_257ECDD30();
  swift_endAccess();

  sub_257ECDE50();
  v60(v58, v59);
  sub_257ECDCB0();

  swift_beginAccess();
  sub_257ECC3F0();
  sub_257ECDD30();
  swift_endAccess();

  sub_257ECDE50();
  v60(v58, v59);
  sub_257ECDCB0();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9EA0, &qword_257EE6E20);
  v61 = v77;
  sub_257ECDD30();
  swift_endAccess();
  sub_257BD2D4C(&unk_281544180, &qword_27F8F7A48, &qword_257EE2658, v69);
  v62 = v79;
  sub_257ECDE50();
  (*(v78 + 8))(v61, v62);
  sub_257ECDCB0();

  *(v80 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlRestorationSubscriptions) = v82;

  return result;
}

void sub_257E261BC(uint64_t *a1, uint64_t a2)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (qword_281544FE0 != -1)
    {
      v20 = Strong;
      swift_once();
      Strong = v20;
    }

    if ((*(xmmword_281548330 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens_isInCapture) & 1) == 0)
    {
      v13 = Strong;
      v14 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__zoomPercentage;
      swift_beginAccess();
      v22 = v11;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v15 = sub_257ECF110();
      MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
      *(&v21 - 2) = &v22;
      *(&v21 - 1) = v14;
      sub_257ECFD40();
      (*(v4 + 8))(v10, v3);
      swift_endAccess();
      Strong = v13;
    }
  }
}

double sub_257E263F0(char *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *a1;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v11 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__storedColorFilter;
  swift_beginAccess();
  v19 = v10;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v12 = sub_257ECF110();
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  *&v18[-16] = &v19;
  *&v18[-8] = v11;
  sub_257ECFD40();
  (*(v3 + 8))(v9, v2);
  swift_endAccess();
  return result;
}

void sub_257E265FC(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = sub_257ECF120();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a1;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v14 = qword_281548348 + *a2;
  swift_beginAccess();
  v21 = v13;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v15 = sub_257ECF110();
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  *&v20[-16] = &v21;
  *&v20[-8] = v14;
  sub_257ECFD40();
  (*(v6 + 8))(v12, v5);
  swift_endAccess();
}

double sub_257E267EC(char *a1, void *a2, uint64_t a3)
{
  v5 = sub_257ECF120();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a1;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v14 = qword_281548348 + *a2;
  swift_beginAccess();
  v22 = v13;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v15 = sub_257ECF110();
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  *&v21[-16] = &v22;
  *&v21[-8] = v14;
  sub_257ECFD40();
  (*(v6 + 8))(v12, v5);
  swift_endAccess();
  return result;
}

void sub_257E269B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v35 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      sub_257ECDD70();
      v4 = *&v3[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService];
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      v6 = v4;
      v7 = v3;
      sub_257DB0FF4(sub_257E2CE54, v5);
    }

    v8 = qword_281548348;
    swift_beginAccess();
    v9 = qword_2815447E0;

    if (v9 != -1)
    {
      v10 = swift_once();
    }

    MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
    sub_257ECFD50();

    if (!v34)
    {
      goto LABEL_16;
    }

    v15 = swift_beginAccess();
    MEMORY[0x28223BE20](v15, v16, v17, v18, v19);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
    sub_257ECFD50();

    if (*(v30 + 16))
    {
      v20 = sub_257C03F6C(v33, v34);
      v22 = v21;

      if (v22)
      {
        v23 = *(*(v30 + 56) + 296 * v20 + 53);

        v24 = (v8 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cameraType);
        v25 = swift_beginAccess();
        v31 = *v24;
        MEMORY[0x28223BE20](v25, v26, v27, v28, v29);

        sub_257ECFD50();

        if (v23 != v32 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , v23 != v31))
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECC3F0();
          sub_257ECDD70();
        }

        goto LABEL_16;
      }
    }

    else
    {
    }

LABEL_16:
  }
}

double sub_257E26EA4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  a2;
  sub_257ECDD70();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return sub_257DB05D0(0, 0);
}

void sub_257E26F8C(double *a1, uint64_t a2)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v14 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__zoomPercentage);
    swift_beginAccess();
    v37 = v11;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v15 = sub_257ECF110();
    MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
    *(&v36 - 2) = &v37;
    *(&v36 - 1) = v14;
    sub_257ECFD40();
    (*(v4 + 8))(v10, v3);
    v20 = swift_endAccess();
    v21 = v14[1];
    v22 = v14[2];
    v38 = *v14;
    v39 = v21;
    v40 = v22;
    MEMORY[0x28223BE20](v20, v23, v24, v25, v26);
    *(&v36 - 2) = &v38;
    sub_257ECC3F0();

    sub_257ECFD50();

    v27 = v37;
    swift_getKeyPath();
    swift_getKeyPath();
    v38 = v27;
    sub_257ECDD70();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v33 = v38;
    if (v38 != 0.0)
    {
      v34 = v14[1];
      v35 = v14[2];
      v38 = *v14;
      v39 = v34;
      v40 = v35;
      MEMORY[0x28223BE20](v28, v29, v30, v31, v32);
      *(&v36 - 2) = &v38;

      sub_257ECFD50();

      sub_257D337D8(0, v37);
    }
  }
}

void sub_257E27340(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v10[4] = sub_257E2D054;
    v10[5] = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_257D231C0;
    v10[3] = &block_descriptor_1081;
    v7 = _Block_copy(v10);

    v8 = [v4 runningPropertyAnimatorWithDuration:0x20000 delay:v7 options:0 animations:0.4 completion:5.0];
    _Block_release(v7);
    v9 = *&v3[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_coachingHideAnimator];
    *&v3[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_coachingHideAnimator] = v8;
  }
}

void sub_257E274AC(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_257E001D8();

    [v5 setAlpha_];
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = sub_257E002B8();

    if (v8)
    {
      [v8 setAlpha_];
    }
  }
}

void sub_257E27578(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a4;
  v11[4] = a5;
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isInformationLabelVisible) = 1;
  v12 = a5;
  sub_257ECC3F0();
  v13 = a4;
  v14 = sub_257ECF4C0();
  [v13 setText_];

  [v13 sizeToFit];
  [v13 setNeedsLayout];
  v15 = objc_opt_self();
  v16 = swift_allocObject();
  v16[2] = v13;
  v16[3] = a5;
  v16[4] = a2;
  v16[5] = a3;
  v25 = sub_257BDAD2C;
  v26 = v16;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_257D231C0;
  v24 = &block_descriptor_458;
  v17 = _Block_copy(&v21);
  v18 = v13;
  v19 = v12;

  v25 = sub_257E28794;
  v26 = v11;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_257E106F4;
  v24 = &block_descriptor_461;
  v20 = _Block_copy(&v21);
  sub_257ECC3F0();

  _Block_release(v20);
  _Block_release(v17);
}

void sub_257E277F8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isInformationLabelVisible] = 0;
    if (!a1)
    {
      v8 = Strong;
      v9 = objc_opt_self();
      v10 = swift_allocObject();
      *(v10 + 16) = a3;
      *(v10 + 24) = a4;
      aBlock[4] = sub_257E28C60;
      aBlock[5] = v10;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257D231C0;
      aBlock[3] = &block_descriptor_467;
      v11 = _Block_copy(aBlock);
      v12 = a4;
      v13 = a3;

      v14 = [v9 runningPropertyAnimatorWithDuration:0x20000 delay:v11 options:0 animations:0.2 completion:1.5];

      _Block_release(v11);
      Strong = v14;
    }
  }
}

void sub_257E2795C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  [a1 setAlpha_];
  if (a2)
  {
    [a2 setAlpha_];
    v5 = sub_257ECF4C0();
    [a2 setText_];
  }
}

id sub_257E27A04(void *a1, void *a2)
{
  result = [a1 setAlpha_];
  if (a2)
  {

    return [a2 setAlpha_];
  }

  return result;
}

void sub_257E27A60()
{
  sub_257E0EF78(1);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v1 == 1)
  {
    sub_257D3AC80();
  }

  else
  {
    sub_257DB16AC();
  }

  v0 = sub_257DFF3FC();
  sub_257D839A4();

  sub_257E1FD28();
}

void sub_257E27B58()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v0 == 1)
  {
    sub_257D3AA58();
  }

  else
  {
    sub_257DB1748();
  }
}

BOOL sub_257E27C5C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = qword_2815447E0;

    if (v3 != -1)
    {
      v4 = swift_once();
    }

    MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
    sub_257ECFD50();

    sub_257E1F078(v10);
  }

  return Strong != 0;
}

BOOL sub_257E27DD8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5[3] = type metadata accessor for AppViewController(0);
    v5[0] = Strong;
    v3 = Strong;
    sub_257E1ED68();

    sub_257BE4084(v5, &unk_27F8F62F0, &unk_257ED9D30);
  }

  return Strong != 0;
}

BOOL sub_257E27E64(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_257E1F078(a3);
  }

  return Strong != 0;
}

uint64_t sub_257E27EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_257ECF900();
  v5[4] = sub_257ECF8F0();
  v7 = sub_257ECF8B0();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_257E27F60, v7, v6);
}

void sub_257E27F60()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_257E28000;

    sub_257DE4958(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_257E28000()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_257E2D194, v3, v2);
}

uint64_t sub_257E28120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v5 - 8, v6, v7, v8, v9);
  v11 = &v27[-v10];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v13 = Strong;
  v14 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService);
  v15 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  v16 = *(v14 + v15);
  if (v16 && (v17 = [v16 currentFrame]) != 0 && (v18 = v17, v19 = objc_msgSend(v17, sel_capturedImage), v18, v19))
  {
    v20 = sub_257ECF930();
    v21 = 1;
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
    sub_257ECF900();
    v22 = v13;
    v13 = v19;
    v23 = sub_257ECF8F0();
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = v22;
    v24[5] = v19;
    sub_257C3FBD4(0, 0, v11, a4, v24);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t sub_257E28310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_257ECF900();
  v5[4] = sub_257ECF8F0();
  v7 = sub_257ECF8B0();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_257E283A8, v7, v6);
}

void sub_257E283A8()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_257E28448;

    sub_257DE4958(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_257E28448()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_257E28568, v3, v2);
}

uint64_t sub_257E28568()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_257E285C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_257C77614();
    v3 = sub_257DFF3FC();
    v4 = &v3[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___successfulMultiShotCaptureCount];
    *v4 = 0;
    v4[8] = 0;

    [*&Strong[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton] setAlpha_];
    v5 = *&Strong[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton];
    if (v5)
    {
      v6 = v5;
      [v6 setAlpha_];
    }
  }

  return Strong != 0;
}

unint64_t sub_257E28718()
{
  result = qword_27F8F9C80;
  if (!qword_27F8F9C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9C80);
  }

  return result;
}

double block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_257ECC3F0();
  return result;
}

void sub_257E287A0()
{
  v1 = sub_257DFF054();
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    [v2 alpha];
    v5 = v4;

    if (v5 != 0.0)
    {
      v6 = *(*(*(*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController) + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardController) + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card);
      v7 = qword_281544FE0;
      v8 = v6;
      if (v7 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v9 = qword_2815447E0;

      if (v9 != -1)
      {
        v10 = swift_once();
      }

      MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
      sub_257ECFD50();

      sub_257DD1E80(v15);
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_257E289E0(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  sub_257ECC3F0();
  sub_257ECDD70();
  return result;
}

double sub_257E28A54@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  result = v4;
  *a2 = v4;
  return result;
}

void sub_257E28AD4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
}

double sub_257E28BF0(void **a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v6;
  v9 = v7;
  sub_257ECDD70();
  return result;
}

uint64_t (*sub_257E28C64(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_257E292A4(v5);
  v5[9] = sub_257E28E10(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_257E2D16C;
}

uint64_t (*sub_257E28D08(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_257E292CC(v5);
  v5[9] = sub_257E29100((v5 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_257E28DAC;
}

void sub_257E28DB0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_257E28E10(uint64_t *a1, uint64_t a2, char a3))(char **a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0xC8uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 168) = a2;
  *(v8 + 176) = v3;
  v10 = *v3;
  v11 = sub_257C040A0(a2);
  *(v9 + 192) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_257C07FD4();
      v11 = v19;
      goto LABEL_11;
    }

    sub_257EC3228(v16, a3 & 1);
    v11 = sub_257C040A0(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_257ED06C0();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 184) = v11;
  if (v17)
  {
    v21 = *(*v4 + 56) + 56 * v11;
    v22 = *v21;
    v23 = *(v21 + 16);
    v24 = *(v21 + 32);
    v25 = *(v21 + 40);
  }

  else
  {
    v24 = 0;
    v22 = 0uLL;
    v23 = 0uLL;
    v25 = 0uLL;
  }

  *(v9 + 112) = v22;
  *(v9 + 128) = v23;
  *(v9 + 144) = v24;
  *(v9 + 152) = v25;
  return sub_257E28F7C;
}

void sub_257E28F7C(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 14);
  v5 = *(*a1 + 15);
  v4 = *(*a1 + 16);
  v6 = *(*a1 + 17);
  v7 = *(*a1 + 18);
  v8 = *(*a1 + 19);
  v9 = *(*a1 + 20);
  v10 = (*a1)[192];
  if (a2)
  {
    if (v7)
    {
      v11 = v2[23];
      v12 = *v2[22];
      if ((v10 & 1) == 0)
      {
        v13 = v2[21];
        *v2 = v3;
        v2[1] = v5;
        v2[2] = v4;
        v2[3] = v6;
        v2[4] = v7;
        v2[5] = v8;
        v2[6] = v9;
        v14 = v4;
        v15 = v2;
LABEL_11:
        v17 = v3;
        v18 = v5;
        v19 = v6;
        sub_257EC7EA4(v11, v13, v15, v12);
        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  else if (v7)
  {
    v11 = v2[23];
    v12 = *v2[22];
    if ((v10 & 1) == 0)
    {
      v13 = v2[21];
      v2[7] = v3;
      v2[8] = v5;
      v2[9] = v4;
      v2[10] = v6;
      v2[11] = v7;
      v2[12] = v8;
      v2[13] = v9;
      v14 = v4;
      v15 = (v2 + 7);
      goto LABEL_11;
    }

LABEL_7:
    v16 = (v12[7] + 56 * v11);
    *v16 = v3;
    v16[1] = v5;
    v16[2] = v4;
    v16[3] = v6;
    v16[4] = v7;
    v16[5] = v8;
    v16[6] = v9;
    goto LABEL_13;
  }

  if (((*a1)[192] & 1) == 0)
  {
    goto LABEL_13;
  }

  v17 = *(*a1 + 14);
  v18 = *(*a1 + 15);
  v14 = *(*a1 + 16);
  v19 = *(*a1 + 17);
  sub_257C06A58(v2[23], *v2[22]);
LABEL_12:
  v6 = v19;
  v4 = v14;
  v5 = v18;
  v3 = v17;
LABEL_13:
  v20 = v2[14];
  v21 = v2[15];
  v22 = v2[16];
  v23 = v2[17];
  v24 = v2[18];
  sub_257E2CE6C(v3, v5, v4, v6, v7);
  sub_257E2CEC8(v20, v21, v22, v23, v24);

  free(v2);
}

double (*sub_257E29100(uint64_t a1, uint64_t a2, char a3))(uint64_t *a1, uint64_t a2)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_257C040E4(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_257C0956C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_257EC5DDC(v14, a3 & 1);
    v9 = sub_257C040E4(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_257ED06C0();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 1;
  }

  *a1 = v19;
  return sub_257E2921C;
}

double sub_257E2921C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 == 1)
  {
    if (*(a1 + 25))
    {
      sub_257C0761C(a1[2], *a1[1]);
    }
  }

  else
  {
    v3 = *a1[1];
    if (*(a1 + 25))
    {
      *(v3[7] + 8 * a1[2]) = v2;
    }

    else
    {
      sub_257EC8154(a1[2], *(a1 + 24), v2, v3);
    }
  }

  sub_257E2C328(v2, a2);

  return sub_257E2C338(v2);
}

uint64_t (*sub_257E292A4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_257E2D048;
}

uint64_t (*sub_257E292CC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_257E292F4;
}

uint64_t sub_257E29300(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = isStackAllocationSafe;
  v21[6] = *MEMORY[0x277D85DE8];
  v20 = isStackAllocationSafe;
  v7 = *(a2 + 32);
  v8 = v7 & 0x3F;
  v21[3] = &v20;
  v21[4] = a2;
  v9 = (1 << v7) + 63;
  v10 = v9 >> 6;
  v11 = 8 * (v9 >> 6);
  if (v8 <= 0xD || (v16 = 8 * (v9 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), v11 = v16, (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe, v11, a3, a4, a5);
    v13 = &v19 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    v14 = sub_257E294A0(v13, v10, v6, a2);
  }

  else
  {
    v17 = v16;
    v18 = swift_slowAlloc();
    bzero(v18, v17);
    sub_257E2BB84(v18, v10, v21);
    v14 = v21[0];

    MEMORY[0x259C74820](v18, -1, -1);
  }

  return v14;
}

uint64_t sub_257E294A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = 0;
  if (v4)
  {
    v6 = 0;
    v7 = a4 + 56;
    v8 = a3 + 32;
    v9 = *(a4 + 40);
    v10 = ~(-1 << *(a4 + 32));
    while (1)
    {
      v12 = *(v8 + 4 * v6);
      v13 = MEMORY[0x259C732B0](v9, v12, 4);
      v14 = v13 & v10;
      v15 = (v13 & v10) >> 6;
      v16 = 1 << (v13 & v10);
      if ((v16 & *(v7 + 8 * v15)) != 0)
      {
        while (*(*(a4 + 48) + 4 * v14) != v12)
        {
          v14 = (v14 + 1) & v10;
          v15 = v14 >> 6;
          v16 = 1 << v14;
          if (((1 << v14) & *(v7 + 8 * (v14 >> 6))) == 0)
          {
            goto LABEL_4;
          }
        }

        v11 = a1[v15];
        a1[v15] = v11 | v16;
        if ((v11 & v16) == 0 && __OFADD__(v5++, 1))
        {
          break;
        }
      }

LABEL_4:
      if (++v6 == v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

LABEL_12:
  sub_257ECC3F0();
  return sub_257CA6E44(a1, a2, v5, a4);
}

uint64_t sub_257E295D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_257D136FC(*a1, a1[1], a1[2]);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

__CVBuffer *sub_257E2960C(opaqueCMSampleBuffer *a1)
{
  result = CMSampleBufferGetImageBuffer(a1);
  if (!result)
  {
    return result;
  }

  v2 = result;
  CVPixelBufferLockBaseAddress(result, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(v2);
  Width = CVPixelBufferGetWidth(v2);
  Height = CVPixelBufferGetHeight(v2);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v2);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v8 = __CGBitmapContextCreate_0(BaseAddress, Width, Height, BytesPerRow, DeviceRGB);
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  Image = CGBitmapContextCreateImage(v8);
  if (!Image)
  {

    return 0;
  }

  v11 = Image;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v11 scale:4 * (v13 == 4) orientation:1.0];
  CVPixelBufferUnlockBaseAddress(v2, 1uLL);

  return v12;
}

void sub_257E297BC()
{
  v1 = v0;
  v2 = sub_257ECDE70();
  v142 = *(v2 - 8);
  v143 = v2;
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v144 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9D40, &qword_257EDF9A0);
  v132 = *(v135 - 8);
  MEMORY[0x28223BE20](v135, v8, v9, v10, v11);
  v129 = &v128 - v12;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9EE0, &unk_257EEC1B0);
  v134 = *(v137 - 8);
  MEMORY[0x28223BE20](v137, v13, v14, v15, v16);
  v131 = &v128 - v17;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9EE8, &unk_257EEBE50);
  v133 = *(v136 - 8);
  MEMORY[0x28223BE20](v136, v18, v19, v20, v21);
  v130 = &v128 - v22;
  v150 = sub_257ECFD20();
  v152 = *(v150 - 8);
  MEMORY[0x28223BE20](v150, v23, v24, v25, v26);
  v149 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v28, v29, v30, v31, v32);
  v148 = &v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_257ECF190();
  MEMORY[0x28223BE20](v34 - 8, v35, v36, v37, v38);
  v40 = &v128 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F20, &qword_257EE6E50);
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v43, v44, v45, v46);
  v48 = &v128 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9CA0, &unk_257EEB5A0);
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v51, v52, v53, v54);
  v56 = &v128 - v55;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_didSetupCardUI) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isControlContainerViewLoaded) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___controlContainer) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentLiveView) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_liveLensInterruptionBlurView) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___doubleTapGesture) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_deactivationReasons) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isDetectionModeTransitioning) = 0;
  v57 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController__capturedPhoto;
  *&v153 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9BA0, &unk_257EEC1C0);
  sub_257ECDD20();
  (*(v50 + 32))(v1 + v57, v56, v49);
  v58 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController__capturedImage;
  *&v153 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9BB0, &qword_257EE59E0);
  sub_257ECDD20();
  (*(v42 + 32))(v1 + v58, v48, v41);
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureAttemptDidSucceed) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_actionButtonInteraction) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_eventInteraction) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPanGesture) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPinchGesture) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_previousGestureZoomFactor) = 0xBFF0000000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_didRestartZoomGestureAfterLastHaptic) = 0;
  v59 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomGestureFeedbackGenerator;
  *(v1 + v59) = sub_257DFFEAC();
  v60 = v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_panStartZoomFactor;
  *v60 = 0;
  *(v60 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pinchStartZoomFactor) = 0x3FF0000000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_setupResult) = 0;
  v141 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlsQueue;
  v151 = sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  sub_257ECF150();
  *&v153 = MEMORY[0x277D84F90];
  v146 = sub_257E2C2E0(&qword_281543F30, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000, &unk_257EDC200);
  v61 = sub_257BD2D4C(&unk_281543FA0, &unk_27F8F8000, &unk_257EDC200, MEMORY[0x277D83970]);
  v147 = v28;
  sub_257ED0180();
  v62 = *MEMORY[0x277D85260];
  v63 = v152 + 104;
  v64 = *(v152 + 104);
  v65 = v149;
  v66 = v150;
  v64(v149, v62, v150);
  *(v1 + v141) = sub_257ECFD80();
  v128 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_audioQueue;
  sub_257ECF150();
  *&v153 = MEMORY[0x277D84F90];
  v140 = v61;
  sub_257ED0180();
  v139 = v62;
  v152 = v63;
  v138 = v64;
  v64(v65, v62, v66);
  v141 = v40;
  *(v1 + v128) = sub_257ECFD80();
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___focusIndicator) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_focusIndicatorFadeTime) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isInformationLabelVisible) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___coachingLabel) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeCoachingLabel) = 1;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___detectionInformationLabel) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeDetectionInformationLabel) = 1;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_kDetectionInformationLabelPadding) = 0x4034000000000000;
  v67 = (v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastAnnouncement);
  *v67 = 0;
  v67[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_coachingHideAnimator) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_sceneEventAnimator) = 0;
  v68 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameModeDescriptionPublisher;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60, &qword_257EDF9D0);
  v69 = v129;
  sub_257ECDD30();
  swift_endAccess();
  swift_getKeyPath();
  sub_257BD2D4C(&unk_281544160, &unk_27F8F9D40, &qword_257EDF9A0, MEMORY[0x277CBCEC8]);
  v70 = v131;
  v71 = v135;
  sub_257ECDDC0();

  (*(v132 + 8))(v69, v71);
  sub_257BD2D4C(&qword_281544428, &qword_27F8F9EE0, &unk_257EEC1B0, MEMORY[0x277CBCB20]);
  v72 = v130;
  v73 = v137;
  sub_257ECDE10();
  (*(v134 + 8))(v70, v73);
  sub_257BD2D4C(&qword_281544360, &qword_27F8F9EE8, &unk_257EEBE50, MEMORY[0x277CBCC18]);
  v74 = v136;
  v75 = sub_257ECDD90();
  (*(v133 + 8))(v72, v74);
  *(v1 + v68) = v75;
  v76 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activeControlDescriptionPublishers) = MEMORY[0x277D84F90];
  v77 = MEMORY[0x277D84FA0];
  v78 = v76 >> 62;
  v79 = MEMORY[0x277D84FA0];
  if (v76 >> 62)
  {
    if (sub_257ED0210())
    {
      sub_257BF2CF8(MEMORY[0x277D84F90]);
    }

    else
    {
      v79 = MEMORY[0x277D84FA0];
    }
  }

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cancellables) = v79;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_informationSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_coachingSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_dRotationSubscription) = 0;
  v80 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlSubscriptionProvider;
  type metadata accessor for ControlSubscriptionProvider(0);
  swift_allocObject();
  *(v1 + v80) = sub_257E3E3A4();
  v81 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_landscapeControlSubscriptionProvider;
  swift_allocObject();
  *(v1 + v81) = sub_257E3E3A4();
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlRestorationSubscriptions) = 0;
  v82 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlSubscriptions;
  *(v1 + v82) = sub_257E01274();
  v83 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_landscapeControlSubscriptions;
  *(v1 + v83) = sub_257E01274();
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_liveLensDisplayAppearanceSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cameraTypeSubscription) = 0;
  if (v78)
  {
    if (sub_257ED0210())
    {
      sub_257BF2CF8(MEMORY[0x277D84F90]);
    }

    else
    {
      v84 = MEMORY[0x277D84FA0];
    }

    *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_focusLockSubscriptions) = v84;
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_capturedPhotoSubscription) = 0;
    if (sub_257ED0210())
    {
      sub_257BF2CF8(MEMORY[0x277D84F90]);
      v77 = v85;
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_focusLockSubscriptions) = v77;
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_capturedPhotoSubscription) = 0;
  }

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_sessionSubscriptions) = v77;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_contentSizeCategorySubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_peopleDetectionSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDetectionSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_objectUnderstandingSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_imageCaptionSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activityZoomPercentageSubscripton) = 0;
  v86 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_springBoardServer;
  *(v1 + v86) = [objc_allocWithZone(MEMORY[0x277CE7E40]) init];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakFeedbacksSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionFeedbacksSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_keyboardVQASubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_microphoneToggleSubscription) = 0;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v88 = objc_opt_self();
  v89 = [v88 bundleForClass_];
  v90 = sub_257ECF4C0();
  v91 = sub_257ECF4C0();
  v92 = [v89 localizedStringForKey:v90 value:0 table:v91];

  if (!v92)
  {
    sub_257ECF500();
    v92 = sub_257ECF4C0();
  }

  v93 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activitiesNameController;
  type metadata accessor for ActivityNameOnBoardingController();
  v94 = [v88 bundleForClass_];
  v95 = sub_257ECF4C0();
  v96 = sub_257ECF4C0();
  v97 = [v94 localizedStringForKey:v95 value:0 table:v96];

  sub_257ECF500();
  v98 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v99 = sub_257ECF4C0();

  v100 = [v98 initWithTitle:v92 detailText:v99 icon:0];

  *(v1 + v93) = v100;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_commitActivityButton) = 0;
  v101 = (v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentQuickActivityName);
  *v101 = 0;
  v101[1] = 0;
  v102 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_backTapEventProcessor;
  v103 = objc_allocWithZone(MEMORY[0x277CE7D68]);
  v104 = sub_257ECF4C0();
  v105 = [v103 initWithHIDTapIdentifier:v104 HIDEventTapPriority:100 systemEventTapIdentifier:0 systemEventTapPriority:0];

  *(v1 + v102) = v105;
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  v106 = MEMORY[0x277D84F90];
  if (byte_27F8F8D88 == 1)
  {
    v107 = [objc_opt_self() shared];
  }

  else
  {
    v107 = 0;
  }

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_modelsManager) = v107;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerTipScene) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerTip) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_rotationRateManager) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_luminanceManager) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastARFrame) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_useSpeechFeedback) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_speechMaxFrameCount) = 5;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_speechDepthArray) = v106;
  v108 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastSpeechDate;
  v109 = sub_257ECCC80();
  (*(*(v109 - 8) + 56))(v1 + v108, 1, 1, v109);
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooDarkToDetect) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooFastToDetect) = 0;
  sub_257ECCC70();
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_useDoorSpeechFeedback) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_outputEventsTask) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___personDetectionManager) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___anstPersonDetectionManager) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_personsLabelPool) = v106;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView) = 0;
  v110 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel;
  type metadata accessor for DetectionLabel();
  *(v1 + v110) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView) = 0;
  v111 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_peopleSessionDispatchQueue;
  sub_257ECD2C0();
  *(v1 + v111) = sub_257ECD2B0();
  v112 = (v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_previousAction);
  *v112 = 0;
  v112[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDetectionDoorBoxLayers) = v106;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorAttributesCache) = v106;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDecorationsCache) = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedObjectView) = 0;
  v113 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_engine;
  *(v1 + v113) = [objc_allocWithZone(MEMORY[0x277CE6AF8]) &off_279854B78];
  v114 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_languageTranslator;
  *(v1 + v114) = [objc_allocWithZone(MEMORY[0x277CE6AC8]) &off_279854B78];
  sub_257ECCC70();
  v115 = (v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastImageDescriptionString);
  *v115 = 0;
  v115[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastDetectedTextCheckTime) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedDetectedTextDocument) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedDetectedTextGroups) = v106;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_useTextDetectionSpeechFeedback) = 0;
  v116 = (v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentTextAnnouncement);
  *v116 = 0;
  v116[1] = 0xE000000000000000;
  sub_257ECCC70();
  sub_257ECCC70();
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastAnnouncementWasUpsideDownNotification) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_toggledDetectionModeFlashlightOff) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakToggledDetectionModeFlashlightOn) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionToggledDetectionModeFlashlightOn) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_usePointSpeakSpeechFeedback) = 0;
  v117 = (v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentPointSpeakAnnouncement);
  *v117 = 0;
  v117[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_flashlightBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_globalTorchMode) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeTooDarkToDetect) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeFlashlightDispatchItem) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textBoxLayer) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerDebugLayer) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakInstructionsAlertController) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_handPoseModelNotAvailable) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_providedTextTooCloseFeedback) = 0;
  v118 = (v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_kAXSMagnifierLaunchedNotification);
  *v118 = 0xD00000000000002ALL;
  v118[1] = 0x8000000257F07DF0;
  v119 = (v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_kAXSMagnifierClosedNotification);
  *v119 = 0xD000000000000028;
  v119[1] = 0x8000000257F07E20;
  v120 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wifiMonitor;
  (*(v142 + 104))(v144, *MEMORY[0x277CD8CA8], v143);
  sub_257ECDEB0();
  swift_allocObject();
  *(v1 + v120) = sub_257ECDE90();
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wifiConnected) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedReaderTextDocument) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeLoadingProgressViewController) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController) = 0;
  v121 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerTextQueue;
  sub_257ECF170();
  *&v153 = v106;
  sub_257ED0180();
  v138(v149, v139, v150);
  *(v1 + v121) = sub_257ECFD80();
  v122 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDetectionModePerspectiveFramingLayer;
  v153 = xmmword_281548330;
  v154 = qword_281548340;
  v155 = qword_281548348;
  v156 = qword_281548350;
  v157 = qword_281548358;
  objc_allocWithZone(type metadata accessor for LiveCameraLayer(0));
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  *(v1 + v122) = sub_257DBE70C(&v153);
  v123 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentModeOutlineLayer;
  *(v1 + v123) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v124 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_settingsButton;
  type metadata accessor for SettingsButton();
  *(v1 + v124) = [swift_getObjCClassFromMetadata() buttonWithType_];
  v125 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton;
  type metadata accessor for ImageWell();
  *(v1 + v125) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton) = 0;
  v126 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogView;
  *(v1 + v126) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v127 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentResponseLabel;
  *(v1 + v127) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogWorkItem) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_sessionTimer) = 0;
  sub_257ECCC70();
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_passthroughView) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___freezeFrameDebugView) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButtonConstraints) = v106;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameScrubberTray) = 0;
  sub_257ED0410();
  __break(1u);
}

void sub_257E2AE58()
{
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D88 == 1)
  {
    v1 = [v0 view];
    if (!v1)
    {
      goto LABEL_46;
    }

    v2 = v1;
    v3 = [v1 window];
    if (v3 && (v4 = v3, v5 = [v3 windowScene], v4, v5))
    {
      v6 = [v5 interfaceOrientation];

      if (v6 == 2)
      {
        v7 = 3.14159265;
        goto LABEL_15;
      }

      if (v6 == 3)
      {
        v7 = -1.57079633;
        goto LABEL_15;
      }

      if (v6 == 4)
      {
        v7 = 1.57079633;
LABEL_15:
        CGAffineTransformMakeRotation(&v30, v7);
        v28 = *&v30.a;
        v29 = *&v30.c;
        v8 = *&v30.tx;
        goto LABEL_16;
      }
    }

    else
    {
    }

    v29 = xmmword_257EEAFE0;
    v28 = xmmword_257EEAFF0;
    v8 = 0uLL;
LABEL_16:
    v27 = v8;
    v9 = sub_257DFF59C();
    *&v30.a = v28;
    *&v30.c = v29;
    *&v30.tx = v27;
    [v9 setTransform_];
  }

  v10 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService];
  v11 = *(v10 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraPhotoOutput);
  if (v11)
  {
    v12 = *(v10 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraVideoDataOutput);
    if (v12)
    {
      v13 = qword_27F8F4670;
      v14 = v11;
      v15 = v12;
      if (v13 != -1)
      {
        swift_once();
      }

      if (byte_27F8F8D89 != 1)
      {
        goto LABEL_40;
      }

      v16 = *(v10 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator);
      if (!v16)
      {
        v26 = v14;
        v14 = v15;
LABEL_41:

        return;
      }

      [v16 videoRotationAngleForHorizonLevelPreview];
      v18 = v17;
      v19 = [v14 connections];
      v20 = sub_257BD2C2C(0, &qword_281543ED8, 0x277CE5AB0);
      v21 = sub_257ECF810();

      if (v21 >> 62)
      {
        if (sub_257ED0210())
        {
LABEL_25:
          if ((v21 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x259C72E20](0, v21);
          }

          else
          {
            if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_44;
            }

            v22 = *(v21 + 32);
          }

          v19 = v22;

          v23 = [v15 connections];
          v20 = sub_257ECF810();

          if (v20 >> 62)
          {
            if (sub_257ED0210())
            {
LABEL_30:
              if ((v20 & 0xC000000000000001) == 0)
              {
                if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v24 = *(v20 + 32);
LABEL_33:
                  v25 = v24;

                  [v19 setVideoRotationAngle_];
                  [v25 setVideoRotationAngle_];

LABEL_40:
                  v26 = v15;
                  goto LABEL_41;
                }

                __break(1u);
LABEL_46:
                __break(1u);
                return;
              }

LABEL_44:
              v24 = MEMORY[0x259C72E20](0, v20);
              goto LABEL_33;
            }
          }

          else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          goto LABEL_40;
        }
      }

      else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      goto LABEL_40;
    }
  }
}

id sub_257E2B234()
{
  sub_257C77614();
  v1 = sub_257DFF3FC();
  v2 = &v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___successfulMultiShotCaptureCount];
  *v2 = 0;
  v2[8] = 0;

  [*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton) setAlpha_];
  result = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton);
  if (result)
  {

    return [result setAlpha_];
  }

  return result;
}

void sub_257E2B2C0(char a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController];
  if (a1)
  {
    if (v3)
    {
      v4 = v3;
      v5 = [v2 childViewControllers];
      sub_257BD2C2C(0, &unk_281543F40, 0x277D75D28);
      v6 = sub_257ECF810();

      aBlock = v4;
      MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
      p_aBlock = &aBlock;
      LOBYTE(v5) = sub_257DFC4AC(sub_257E2D178, v43, v6);

      if (v5)
      {
        v12 = [v4 view];
        if (!v12)
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v13 = v12;
        [v12 alpha];
        v15 = v14;

        if (v15 == 1.0)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }
    }

    if (qword_27F8F46D8 != -1)
    {
      swift_once();
    }

    sub_257C73204();
    v35 = *(v34 + 16);

    if (!v35)
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (aBlock)
      {
        v40 = sub_257ED0640();

        if ((v40 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }
    }

    sub_257E1AE9C();
    sub_257E1AAFC();
    v36 = objc_opt_self();
    v37 = swift_allocObject();
    *(v37 + 16) = v2;
    v49 = sub_257E2BFF4;
    v50 = v37;
    aBlock = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_257D231C0;
    v48 = &block_descriptor_758;
    v38 = _Block_copy(&aBlock);
    v39 = v2;

    [v36 animateWithDuration:v38 animations:0 completion:0.2];
    _Block_release(v38);
LABEL_22:
    v41 = [v2 view];
    if (v41)
    {
      v42 = v41;
      [v41 bringSubviewToFront_];

      return;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (!v3)
  {
    goto LABEL_22;
  }

  v16 = v3;
  v17 = [v2 childViewControllers];
  sub_257BD2C2C(0, &unk_281543F40, 0x277D75D28);
  v18 = sub_257ECF810();

  aBlock = v16;
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  p_aBlock = &aBlock;
  LOBYTE(v17) = sub_257DFC4AC(sub_257E2BFB0, v43, v18);

  if ((v17 & 1) == 0)
  {

    goto LABEL_22;
  }

  v24 = [v16 view];
  if (v24)
  {
    v25 = v24;
    [v24 alpha];
    v27 = v26;

    if (v27 == 1.0)
    {
      v28 = objc_opt_self();
      v29 = swift_allocObject();
      *(v29 + 16) = v2;
      v49 = sub_257E2BFCC;
      v50 = v29;
      aBlock = MEMORY[0x277D85DD0];
      v46 = 1107296256;
      v47 = sub_257D231C0;
      v48 = &block_descriptor_746;
      v30 = _Block_copy(&aBlock);
      v31 = v2;

      v32 = swift_allocObject();
      *(v32 + 16) = v31;
      v49 = sub_257E2BFEC;
      v50 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v46 = 1107296256;
      v47 = sub_257DFE438;
      v48 = &block_descriptor_752;
      v33 = _Block_copy(&aBlock);
      v31;

      [v28 animateWithDuration:v30 animations:v33 completion:0.2];
      _Block_release(v33);
      _Block_release(v30);
      sub_257E1A3A0();
    }

    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
}

void sub_257E2B8D8(void *a1)
{
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if ((v13[0] & 1) == 0)
  {
    sub_257ECD410();
    v10 = sub_257ECDA20();
    v11 = sub_257ECFBD0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_257BAC000, v10, v11, "_physicalButtonInteraction", v12, 2u);
      MEMORY[0x259C74820](v12, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
    if ([a1 _state] == 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (LOBYTE(v13[0]) == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v13[0]) = 0;
        sub_257ECC3F0();
        sub_257ECDD70();
      }

      else
      {
        memset(v13, 0, sizeof(v13));
        sub_257D465A4();
        sub_257BE4084(v13, &unk_27F8F62F0, &unk_257ED9D30);
      }
    }
  }
}

uint64_t sub_257E2BB84@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_257E294A0(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_257E2BBC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257C167C4;

  return sub_257E1F998();
}

unint64_t sub_257E2BD50()
{
  result = qword_281545C20;
  if (!qword_281545C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281545C20);
  }

  return result;
}

id sub_257E2BE0C()
{
  v1 = *(v0 + 24);
  result = [*(v0 + 16) setAlpha_];
  if (v1)
  {

    return [v1 setAlpha_];
  }

  return result;
}

uint64_t sub_257E2BE74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257E174E0(a1, v4, v5, v6);
}

uint64_t sub_257E2BF28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257D136FC(**(v1 + 16), *(*(v1 + 16) + 8), *(*(v1 + 16) + 16));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id sub_257E2BF60(id result, void *a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = result;
    v5 = a4;
    v6 = v4;

    return a2;
  }

  return result;
}

uint64_t sub_257E2C07C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257E14EA8(a1, v4, v5, v6);
}

uint64_t sub_257E2C130(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257E15784(a1, v4, v5, v6);
}

uint64_t objectdestroy_798Tm()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257E2C24C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

id sub_257E2C27C()
{
  v1 = *(v0 + 16);
  [v1 setEffect_];

  return [v1 setAlpha_];
}

uint64_t sub_257E2C2E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_257E2C328(uint64_t a1, uint64_t a2)
{
  if (a1 != 1)
  {
  }

  return result;
}

double sub_257E2C338(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_257E2C628(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t (*)(void)))
{
  if (*(v2 + 16) == 1)
  {
    return a1();
  }

  else
  {
    return a2(a1);
  }
}

uint64_t sub_257E2C668(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257D34C30(a1, v4, v5, v6);
}

uint64_t sub_257E2C71C(_OWORD *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257C167C4;

  return sub_257BEBF50(a1, v1);
}

uint64_t sub_257E2C7B4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257C167C4;

  return sub_257C6E814(a1, v1);
}

uint64_t sub_257E2C84C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257C167C4;

  return sub_257E7CAE8(a1, v1);
}

uint64_t sub_257E2C8E4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257C167C4;

  return sub_257BD3DB0(a1, v1);
}

uint64_t sub_257E2C97C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_257C167C4;

  return sub_257C0334C(a1, a2, v6);
}

uint64_t sub_257E2CA44(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257C167C4;

  return sub_257DBCE70(a1, v1);
}

uint64_t sub_257E2CB54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257E28310(a1, v4, v5, v7, v6);
}

uint64_t sub_257E2CC14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257E27EC8(a1, v4, v5, v7, v6);
}

uint64_t sub_257E2CCE8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_257BE3DE0;

  return sub_257E03AC0(v2);
}

void sub_257E2CE6C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (a5)
  {
    v6 = a4;

    v7 = a2;

    v8 = a3;
  }
}

void sub_257E2CEC8(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (a5)
  {
  }
}

double sub_257E2D198()
{
  v1 = type metadata accessor for SpatialTextBlock(0);
  v2 = *(v0 + *(v1 + 20));
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  *&result = vsubq_f32(vsubq_f32(*(v0 + *(v1 + 36) + 48), vmulq_n_f32(vmulq_f32(*(v0 + *(v1 + 36)), v3), *&v2)), vmulq_lane_f32(vmulq_f32(*(v0 + *(v1 + 36) + 16), v3), *&v2, 1)).u64[0];
  return result;
}

float sub_257E2D218(uint64_t a1, char a2, float a3, float a4, float a5)
{
  v6 = v5;
  v12 = type metadata accessor for SpatialTextBlock(0);
  v67 = *(v5 + v12[7]);
  v73 = *(v5 + v12[8]);
  type metadata accessor for LineSegment();
  inited = swift_initStackObject();
  *(inited + 16) = v67;
  *(inited + 32) = v73;
  v71 = *(a1 + v12[6]);
  *&v14 = sub_257E2D198();
  v63 = v14;
  v15 = swift_initStackObject();
  *(v15 + 16) = v71;
  *(v15 + 32) = v63;
  v16 = sub_257D743BC(v15);
  v61 = *(v5 + v12[6]);
  *&v17 = sub_257E2D198();
  v64 = v17;
  v18 = swift_initStackObject();
  *(v18 + 16) = v61;
  *(v18 + 32) = v64;
  v65 = *(a1 + v12[7]);
  v59 = *(a1 + v12[8]);
  v19 = swift_initStackObject();
  *(v19 + 16) = v65;
  *(v19 + 32) = v59;
  v20 = sub_257D743BC(v19);
  v21 = swift_initStackObject();
  *(v21 + 16) = v61;
  *(v21 + 32) = v67;
  *&v22 = sub_257E2D198();
  v68 = v22;
  v23 = swift_initStackObject();
  *(v23 + 16) = v68;
  *(v23 + 32) = v59;
  v24 = sub_257D743BC(v23);
  *&v25 = sub_257E2D198();
  v69 = v25;
  v26 = swift_initStackObject();
  *(v26 + 16) = v69;
  *(v26 + 32) = v73;
  v27 = swift_initStackObject();
  *(v27 + 16) = v71;
  *(v27 + 32) = v65;
  v28 = sub_257D743BC(v27);
  if ((a2 & 1) == 0)
  {
    if (v16 >= v20)
    {
      if (v24 >= v20)
      {
        if (v28 >= v20)
        {
          v28 = v20;
        }

        goto LABEL_21;
      }
    }

    else if (v24 >= v16)
    {
      if (v28 >= v16)
      {
        v28 = v16;
      }

LABEL_21:
      v29 = 1.0;
      goto LABEL_22;
    }

    if (v28 >= v24)
    {
      v28 = v24;
    }

    goto LABEL_21;
  }

  v29 = a5 / ((*(v5 + v12[10]) + *(a1 + v12[10])) * 0.5);
  if (v16 >= v20)
  {
    v30 = v20;
  }

  else
  {
    v30 = v16;
  }

  if (v24 < v30)
  {
    v30 = v24;
  }

  if (v28 >= v30)
  {
    v28 = v30;
  }

LABEL_22:
  v31 = v28 * v29;
  v32 = v12[9];
  v75 = *(v6 + v32);
  v66 = v75.columns[0];
  v70 = v75.columns[1];
  v74 = v75.columns[3];
  *v33.i64 = simd_quaternion(v75);
  v34 = vmulq_f32(v33, v33);
  *v34.i8 = vadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
  v34.i32[0] = vadd_f32(*v34.i8, vdup_lane_s32(*v34.i8, 1)).u32[0];
  v35 = vrecpe_f32(v34.u32[0]);
  v36 = vmul_f32(v35, vrecps_f32(v34.u32[0], v35));
  v37 = vmulq_n_f32(vmulq_f32(v33, xmmword_257EEBEA0), vmul_f32(v36, vrecps_f32(v34.u32[0], v36)).f32[0]);
  v76.columns[0] = *(a1 + v32);
  v76.columns[1] = *(a1 + v32 + 16);
  v58 = v37;
  v60 = v76.columns[0];
  v62 = v76.columns[1];
  v76.columns[2] = *(a1 + v32 + 32);
  v76.columns[3] = *(a1 + v32 + 48);
  v72 = v76.columns[3];
  *v38.i64 = simd_quaternion(v76);
  v39 = vnegq_f32(v38);
  v40 = vtrn2q_s32(v38, vtrn1q_s32(v38, v39));
  v41 = vrev64q_s32(v38);
  v41.i32[0] = v39.i32[1];
  v41.i32[3] = v39.i32[2];
  v42 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v38, v58, 3), v41, v58, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v38, v39, 8uLL), *v58.f32, 1), vextq_s8(v40, v40, 8uLL), v58.f32[0]));
  v43 = vmulq_f32(v42, v42);
  v44 = atan2f(sqrtf(v43.f32[2] + vaddv_f32(*v43.f32)), v42.f32[3]);
  v45 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v70, v70), v70, 0xCuLL), vnegq_f32(v66)), v70, vextq_s8(vuzp1q_s32(v66, v66), v66, 0xCuLL));
  v46 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
  v47 = vmulq_f32(v45, v45);
  *&v48 = v47.f32[1] + (v47.f32[2] + v47.f32[0]);
  v49 = vrsqrte_f32(v48);
  v50 = vmul_f32(v49, vrsqrts_f32(v48, vmul_f32(v49, v49)));
  v51 = vmulq_n_f32(v46, vmul_f32(v50, vrsqrts_f32(v48, vmul_f32(v50, v50))).f32[0]);
  v52 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v62, v62), v62, 0xCuLL), vnegq_f32(v60)), v62, vextq_s8(vuzp1q_s32(v60, v60), v60, 0xCuLL));
  v53 = vmulq_f32(v52, v52);
  v47.f32[0] = v53.f32[1] + (v53.f32[2] + v53.f32[0]);
  v54 = vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL);
  *v52.f32 = vrsqrte_f32(v47.u32[0]);
  *v52.f32 = vmul_f32(*v52.f32, vrsqrts_f32(v47.u32[0], vmul_f32(*v52.f32, *v52.f32)));
  v55 = vmulq_n_f32(v54, vmul_f32(*v52.f32, vrsqrts_f32(v47.u32[0], vmul_f32(*v52.f32, *v52.f32))).f32[0]);
  v53.i64[0] = vextq_s8(v74, v74, 8uLL).u64[0];
  v56 = vextq_s8(v72, v72, 8uLL).u64[0];
  return (v31 + (((v44 + v44) * (v44 + v44)) * a3)) + ((vaddv_f32(vabs_f32(vadd_f32(vmul_f32(vsub_f32(vzip1_s32(v56, *v53.f32), vzip1_s32(*v53.f32, v56)), *&vzip2q_s32(v51, v55)), vadd_f32(vmul_f32(vsub_f32(vzip1_s32(*v72.i8, *v74.i8), vzip1_s32(*v74.i8, *v72.i8)), vzip1_s32(*v51.i8, *v55.i8)), vmul_f32(vsub_f32(vzip2_s32(*v72.i8, *v74.i8), vzip2_s32(*v74.i8, *v72.i8)), vzip2_s32(*v51.i8, *v55.i8)))))) * a4) * 0.5);
}

double simd_quaternion(simd_float4x4 a1)
{
  v1 = a1.columns[2].f32[2] + (a1.columns[0].f32[0] + a1.columns[1].f32[1]);
  if (v1 >= 0.0)
  {
    a1.columns[3].f32[0] = sqrtf(v1 + 1.0);
    v6 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
    v7 = vmul_f32(v6, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v6));
    *a1.columns[3].f32 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(a1.columns[1], a1.columns[1], 8uLL), *a1.columns[2].f32), vext_s8(*a1.columns[2].f32, *&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), 4uLL)), vmul_f32(v7, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v7)).f32[0]);
  }

  else if (a1.columns[0].f32[0] < a1.columns[1].f32[1] || a1.columns[0].f32[0] < a1.columns[2].f32[2])
  {
    v3 = 1.0 - a1.columns[0].f32[0];
    if (a1.columns[1].f32[1] >= a1.columns[2].f32[2])
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[1].f32[1] + (v3 - a1.columns[2].f32[2]));
      a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
      v15 = vrecpe_f32(a1.columns[3].u32[0]);
      v16 = vmul_f32(v15, vrecps_f32(a1.columns[3].u32[0], v15));
      v17.i32[0] = vmul_f32(v16, vrecps_f32(a1.columns[3].u32[0], v16)).u32[0];
      v16.f32[0] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
      v16.i32[1] = a1.columns[3].i32[0];
      v17.i32[1] = 0.25;
      *a1.columns[3].f32 = vmul_f32(v16, v17);
    }

    else
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[2].f32[2] + (v3 - a1.columns[1].f32[1]));
      v4 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
      v5 = vmul_f32(v4, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v4));
      *a1.columns[3].f32 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), *&vextq_s8(a1.columns[1], a1.columns[1], 8uLL)), *a1.columns[2].f32), vmul_f32(v5, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v5)).f32[0]);
      __asm { FMOV            V0.2S, #0.25 }
    }
  }

  else
  {
    a1.columns[3].f32[0] = sqrtf(a1.columns[0].f32[0] + ((1.0 - a1.columns[1].f32[1]) - a1.columns[2].f32[2]));
    a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
    v8 = vrecpe_f32(a1.columns[3].u32[0]);
    v9 = vmul_f32(v8, vrecps_f32(a1.columns[3].u32[0], v8));
    v10 = vmul_f32(v9, vrecps_f32(a1.columns[3].u32[0], v9)).u32[0];
    a1.columns[3].f32[1] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
    __asm { FMOV            V5.2S, #0.25 }

    _D5.i32[1] = v10;
    *a1.columns[3].f32 = vmul_f32(*a1.columns[3].f32, _D5);
  }

  return *a1.columns[3].i64;
}

void sub_257E2D98C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED9BE0;
  v3 = objc_opt_self();
  *(inited + 32) = [v3 systemYellowColor];
  v4 = [v3 systemYellowColor];
  v5 = sub_257C1C70C();

  *(inited + 40) = v5;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v8 = sub_257ECF4C0();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:v7];

  v21 = v1;
  [v1 setAnimationDuration_];
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v12 = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
  do
  {
    v13 = v10;
    while ((inited & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x259C72E20](v13, inited);
      if (v9)
      {
        goto LABEL_8;
      }

LABEL_3:

LABEL_4:
      if (++v13 == 2)
      {
        goto LABEL_15;
      }
    }

    if (v13 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_24;
    }

    v14 = *(inited + 32 + 8 * v13);
    if (!v9)
    {
      goto LABEL_3;
    }

LABEL_8:
    v15 = [v9 _flatImageWithColor_];

    if (!v15)
    {
      goto LABEL_4;
    }

    MEMORY[0x259C72300]();
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    v10 = v13 + 1;
    sub_257ECF860();
    v11 = v22;
  }

  while (v13 != 1);
LABEL_15:
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_257E2DDD8();
  v16 = sub_257ECF7F0();

  v12 = v21;
  [v21 setAnimationImages_];

  v17 = [v21 animationImages];
  if (!v17)
  {
    v20 = 0;
    goto LABEL_27;
  }

  v18 = v17;
  v11 = sub_257ECF810();

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_25:
    v20 = 0;
LABEL_26:

LABEL_27:
    [v12 setImage_];

    return;
  }

LABEL_24:
  if (!sub_257ED0210())
  {
    goto LABEL_25;
  }

LABEL_18:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x259C72E20](0, v11);
    goto LABEL_21;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v11 + 32);
LABEL_21:
    v20 = v19;
    goto LABEL_26;
  }

  __break(1u);
}

id sub_257E2DD80(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FocusReticleImage();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_257E2DDD8()
{
  result = qword_281543DF0;
  if (!qword_281543DF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281543DF0);
  }

  return result;
}

uint64_t sub_257E2DE24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_257E2DE6C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_257E2DEC8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_257E2DF24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 sub_257E2DFA4@<Q0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a9@<X8>)
{
  v12 = sub_257ECE5B0();
  sub_257E2E028(a1, a3, v16);
  v13 = v17;
  result = v16[0];
  v15 = v16[1];
  *a9 = v12;
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  *(a9 + 24) = result;
  *(a9 + 40) = v15;
  *(a9 + 56) = v13;
  return result;
}

double sub_257E2E028@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a3)
  {
    sub_257BDAB08();
    swift_retain_n();

    v6 = sub_257ECEAF0();
    v8 = v7;
    v10 = v9;
    v12 = v11 & 1;
    sub_257BD1B90(v6, v7, v11 & 1);
  }

  else
  {
    swift_retain_n();
    v6 = 0;
    v8 = 0;
    v12 = 0;
    v10 = 0;
  }

  sub_257ECC3F0();
  sub_257E2F054(v6, v8, v12, v10);

  sub_257E2F098(v6, v8, v12, v10);
  *a4 = a1;
  a4[1] = v6;
  a4[2] = v8;
  a4[3] = v12;
  a4[4] = v10;
  sub_257E2F098(v6, v8, v12, v10);

  return result;
}

uint64_t sub_257E2E140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v25 = a2;
  v3 = sub_257ECE1D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9F78, &qword_257EEC160);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = &v23 - v17;
  v23 = *v2;
  v19 = *(v2 + 2);
  (*(v4 + 104))(v10, *MEMORY[0x277CDF988], v3);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9F80, &qword_257EEC168);
  v21 = sub_257BD2D4C(&qword_27F8F9F88, &qword_27F8F9F80, &qword_257EEC168, MEMORY[0x277CE04B0]);
  sub_257ECEBA0();
  (*(v4 + 8))(v10, v3);
  v26 = v23;
  v27 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9F90, &unk_257EEC170);
  v28 = v20;
  v29 = v21;
  swift_getOpaqueTypeConformance2();
  sub_257BD2D4C(&qword_27F8F9F98, &qword_27F8F9F90, &unk_257EEC170, MEMORY[0x277CE1198]);
  sub_257ECECA0();
  return (*(v12 + 8))(v18, v11);
}

uint64_t sub_257E2E3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9EF8, &qword_257EEC010);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v14 = v24 - v13;
  if (a3)
  {
    sub_257ECE9A0();
  }

  else
  {
    sub_257ECEA30();
  }

  sub_257ECE9F0();
  v15 = sub_257ECEA50();

  KeyPath = swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9F00, &qword_257EEC048);
  (*(*(v17 - 8) + 16))(v14, a1, v17);
  v18 = &v14[*(v8 + 36)];
  *v18 = KeyPath;
  v18[1] = v15;
  if (a2)
  {
    sub_257C0DACC();
    sub_257ECC3F0();
    v19 = sub_257ECFEF0();
    v24[0] = 0.0;
    [v19 getWhite:v24 alpha:0];

    if (v24[0] <= 0.5)
    {
      v20 = sub_257ECED90();
    }

    else
    {
      v20 = sub_257ECED70();
    }

    a2 = v20;
  }

  v21 = swift_getKeyPath();
  sub_257E2E98C(v14, a4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9F08, &qword_257EEC080);
  v23 = (a4 + *(result + 36));
  *v23 = v21;
  v23[1] = a2;
  return result;
}

uint64_t sub_257E2E5FC@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_257ECE750();
  v3 = *(v2 - 8);
  v32 = v2;
  v33 = v3;
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9F10, &qword_257EEC088);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = &v31 - v15;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9F18, &unk_257EEC090);
  MEMORY[0x28223BE20](v31, v17, v18, v19, v20);
  v22 = &v31 - v21;
  v24 = *v1;
  v23 = v1[1];
  v25 = v1[2];
  v37 = v1[3];
  v26 = swift_allocObject();
  v27 = *(v1 + 1);
  *(v26 + 16) = *v1;
  *(v26 + 32) = v27;
  *(v26 + 48) = *(v1 + 2);
  *(v26 + 64) = v1[6];
  v35 = v1;
  sub_257ECC3F0();

  sub_257E2EA70(&v37, v36);
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9F20, &qword_257EEC0A0);
  sub_257E2EAE0();
  sub_257ECEEA0();
  v28 = &v16[*(v10 + 36)];
  *v28 = v24;
  *(v28 + 1) = v23;
  *(v28 + 2) = v25;
  v36[0] = v23;
  v36[1] = v25;
  sub_257E2EBC0();
  sub_257BDAB08();
  sub_257ECC3F0();

  sub_257ECEBF0();
  sub_257BE4084(v16, &qword_27F8F9F10, &qword_257EEC088);
  sub_257ECE740();
  sub_257E2ECCC();
  sub_257E2ED88(&qword_27F8F77F8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v29 = v32;
  sub_257ECEB60();
  (*(v33 + 8))(v9, v29);
  return sub_257BE4084(v22, &qword_27F8F9F18, &unk_257EEC090);
}

uint64_t sub_257E2E98C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9EF8, &qword_257EEC010);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_257E2EA24@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = v2[3];
  LOBYTE(v2) = *(v2 + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v2;
  sub_257ECC3F0();

  sub_257ECC3F0();
  return result;
}

uint64_t sub_257E2EA70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6760, &qword_257EDD120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_257E2EAE0()
{
  result = qword_27F8F9F28;
  if (!qword_27F8F9F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F9F20, &qword_257EEC0A0);
    sub_257E2EB6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9F28);
  }

  return result;
}

unint64_t sub_257E2EB6C()
{
  result = qword_27F8F9F30;
  if (!qword_27F8F9F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9F30);
  }

  return result;
}

unint64_t sub_257E2EBC0()
{
  result = qword_27F8F9F38;
  if (!qword_27F8F9F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F9F10, &qword_257EEC088);
    sub_257BD2D4C(&qword_27F8F9F40, &qword_27F8F9F48, &qword_257EEC0A8, MEMORY[0x277CDF028]);
    sub_257E2EC78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9F38);
  }

  return result;
}

unint64_t sub_257E2EC78()
{
  result = qword_27F8F9F50;
  if (!qword_27F8F9F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9F50);
  }

  return result;
}