void *sub_2646074C8()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 64);
  v32 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 96);
  LOBYTE(v34[0]) = *(v0 + 88);
  v34[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75430, &qword_2647875B0);
  result = sub_2647852F4();
  if (v33 != 2 && (v33 & 1) != 0)
  {
    v31 = v1;
    sub_264783DE4();

    v11 = v7;
    v12 = v7;
    v13 = v32;
    sub_26460C9B0(v6, v5, v11, v32);

    v14 = sub_264783E14();
    v30 = sub_2647859F4();
    if (os_log_type_enabled(v14, v30))
    {
      v26 = v14;
      v27 = v5;
      v15 = v12;
      v28 = v8;
      v29 = v2;
      v16 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34[0] = v25;
      *v16 = 136315394;
      *(v16 + 4) = sub_2646DF234(0x61746544776F6873, 0xEE00657079546C69, v34);
      v17 = v16;
      *(v16 + 12) = 2048;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v33);

      v18 = v33;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v33);

      v19 = v33;
      if (v33)
      {
        v20 = [v33 sessionState];
      }

      else
      {
        v20 = 0;
      }

      v21 = v32;
      *(v16 + 14) = v20;

      sub_26460C9F4(v6, v27, v15, v21);

      v22 = v26;
      _os_log_impl(&dword_264605000, v26, v30, "%s: present expanded view for state: %ld", v17, 0x16u);
      v23 = v25;
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x266740650](v23, -1, -1);
      MEMORY[0x266740650](v17, -1, -1);

      return (*(v29 + 8))(v4, v31);
    }

    else
    {

      sub_26460C9F4(v6, v5, v12, v13);

      return (*(v2 + 8))(v4, v31);
    }
  }

  return result;
}

uint64_t TranscriptView.init(viewModel:edgeInsets:)@<X0>(uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75400, &qword_264787540);
  sub_2647852E4();
  *(a2 + 48) = v13;
  *(a2 + 64) = v14;
  *(a2 + 80) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75408, &qword_264787548);
  sub_2647852E4();
  *(a2 + 88) = v13;
  *(a2 + 96) = *(&v13 + 1);
  type metadata accessor for TranscriptViewModel(0);
  sub_26460B5FC(&qword_27FF75410, type metadata accessor for TranscriptViewModel, &protocol conformance descriptor for TranscriptViewModel);
  result = sub_264784174();
  *a2 = result;
  *(a2 + 8) = v12;
  *(a2 + 16) = a3;
  *(a2 + 24) = a4;
  *(a2 + 32) = a5;
  *(a2 + 40) = a6;
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

uint64_t sub_2646079D4@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = type metadata accessor for CacheNotAvailableView(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75678, &qword_264787D48);
  MEMORY[0x28223BE20](v45);
  v6 = &v38 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75470, &qword_2647875C8);
  MEMORY[0x28223BE20](v47);
  v8 = (&v38 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75680, &qword_264787D50);
  v44 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v43 = &v38 - v10;
  v11 = v1[5];
  v60 = v1[4];
  v61 = v11;
  v62 = *(v1 + 12);
  v12 = v1[1];
  v56 = *v1;
  v57 = v12;
  v13 = v1[3];
  v58 = v1[2];
  v59 = v13;
  v63[0] = v56;
  v14 = *(&v56 + 1);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783ED4(&v53);
  sub_26460CD50(v63, &qword_27FF75428, &qword_2647875A8);

  v15 = v53;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v53);

  v16 = v53;
  if (v53 && ((v17 = [v53 sessionState], v16, v17 > 9) || ((1 << v17) & 0x27D) == 0))
  {
    *v4 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
    swift_storeEnumTagMultiPayload();
    sub_26460CBD8(v4, v6, type metadata accessor for CacheNotAvailableView);
    swift_storeEnumTagMultiPayload();
    v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75478, &qword_2647875D0);
    v34 = sub_26460B908();
    v35 = sub_26460B9C0();
    v36 = sub_26460BA14();
    *&v53 = &type metadata for CriticalAlertOnboardingView;
    *(&v53 + 1) = v36;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v53 = v47;
    *(&v53 + 1) = &type metadata for CriticalAlertOnboardingView.Model;
    *&v54 = v33;
    *(&v54 + 1) = v34;
    *&v55 = v35;
    *(&v55 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_26460B5FC(&qword_27FF754A8, type metadata accessor for CacheNotAvailableView, &protocol conformance descriptor for CacheNotAvailableView);
    sub_264784874();

    return sub_26460CC40(v4, type metadata accessor for CacheNotAvailableView);
  }

  else
  {
    v18 = *(v14 + 40);
    sub_26460CCE8(v63, &v53, &qword_27FF75428, &qword_2647875A8);
    v19 = v18;
    v20 = v15;
    sub_264608110(v19, v20, v14, v8);
    v21 = swift_allocObject();
    v22 = v58;
    *(v21 + 72) = v59;
    v23 = v61;
    *(v21 + 88) = v60;
    *(v21 + 104) = v23;
    v24 = v57;
    *(v21 + 24) = v56;
    *(v21 + 16) = v20;
    *(v21 + 120) = v62;
    *(v21 + 40) = v24;
    *(v21 + 56) = v22;
    v25 = (v8 + *(v47 + 36));
    *v25 = sub_26460CBCC;
    v25[1] = v21;
    v25[2] = 0;
    v25[3] = 0;
    v50 = v59;
    v51 = v60;
    *&v52 = v61;
    v42 = v20;
    sub_26460B5BC(&v56, &v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF75690, &unk_264787D90);
    sub_264785314();
    v50 = v53;
    v51 = v54;
    v52 = v55;
    *&v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75478, &qword_2647875D0);
    *(&v39 + 1) = sub_26460B908();
    v26 = sub_26460B9C0();
    v41 = v2;
    *&v40 = v26;
    v27 = sub_26460BA14();
    v48 = &type metadata for CriticalAlertOnboardingView;
    v49 = v27;
    *(&v40 + 1) = swift_getOpaqueTypeConformance2();
    v28 = v43;
    sub_2647850C4();
    v29 = v51;
    v30 = v52;

    sub_26460C9F4(v29, *(&v29 + 1), v30, *(&v30 + 1));
    sub_26460CD50(v8, &qword_27FF75470, &qword_2647875C8);
    v31 = v44;
    (*(v44 + 16))(v6, v28, v9);
    swift_storeEnumTagMultiPayload();
    *&v53 = v47;
    *(&v53 + 1) = &type metadata for CriticalAlertOnboardingView.Model;
    v54 = v39;
    v55 = v40;
    swift_getOpaqueTypeConformance2();
    sub_26460B5FC(&qword_27FF754A8, type metadata accessor for CacheNotAvailableView, &protocol conformance descriptor for CacheNotAvailableView);
    sub_264784874();

    return (*(v31 + 8))(v28, v9);
  }
}

void sub_264608110(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v216 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  MEMORY[0x28223BE20](v7 - 8);
  v173 = v170 - v8;
  v9 = sub_264783B64();
  v174 = *(v9 - 8);
  v175 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v171 = v170 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v172 = v170 - v13;
  v170[1] = v14;
  MEMORY[0x28223BE20](v12);
  v178 = v170 - v15;
  v16 = sub_264783E24();
  v181 = *(v16 - 8);
  v182 = v16;
  MEMORY[0x28223BE20](v16);
  v201 = v170 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756A0, &qword_264787DA0);
  v211 = *(v18 - 8);
  v212 = v18;
  MEMORY[0x28223BE20](v18);
  v196 = v170 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756A8, &qword_264787DA8);
  v194 = *(v20 - 8);
  v195 = v20;
  MEMORY[0x28223BE20](v20);
  v193 = v170 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B0, &unk_264787DB0);
  v206 = *(v22 - 1);
  v207 = v22;
  MEMORY[0x28223BE20](v22);
  v192 = v170 - v23;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v24 = MEMORY[0x28223BE20](v209);
  v177 = v170 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v180 = v170 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v176 = v170 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v179 = v170 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v208 = v170 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v217 = v170 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v219 = (v170 - v37);
  MEMORY[0x28223BE20](v36);
  v218 = v170 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756C0, &unk_264787DC0);
  v197 = *(v39 - 8);
  v198 = v39;
  MEMORY[0x28223BE20](v39);
  v210 = v170 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756C8, &qword_264791F00);
  v203 = *(v41 - 8);
  v204 = v41;
  MEMORY[0x28223BE20](v41);
  v188 = v170 - v42;
  v186 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo(0);
  v43 = MEMORY[0x28223BE20](v186);
  v187 = v170 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v46 = v170 - v45;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756D0, &unk_264787DD0);
  v189 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v48 = v170 - v47;
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
  swift_storeEnumTagMultiPayload();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75490, &qword_2647875D8);
  v50 = v49[12];
  *&v235[0] = 0;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756D8, &qword_26478F7B0);
  sub_2647852E4();
  *(a4 + v50) = v236;
  v52 = v49[13];
  *&v235[0] = 0;
  v190 = v51;
  sub_2647852E4();
  *(a4 + v52) = v236;
  v53 = a4 + v49[14];
  type metadata accessor for CGSize(0);
  v235[0] = 0uLL;
  sub_2647852E4();
  v54 = v237;
  *v53 = v236;
  *(v53 + 2) = v54;
  v55 = (a4 + v49[16]);
  *&v235[0] = MEMORY[0x277D84F90];
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756E0, &qword_264787DE0);
  sub_2647852E4();
  v56 = *(&v236 + 1);
  *v55 = v236;
  v55[1] = v56;
  v57 = a4 + v49[17];
  LOBYTE(v235[0]) = 1;
  sub_2647852E4();
  v58 = *(&v236 + 1);
  *v57 = v236;
  *(v57 + 1) = v58;
  *(a4 + v49[10]) = a1;
  v59 = (a4 + v49[9]);
  v60 = type metadata accessor for SafetyCacheViewModel(0);
  sub_26460B5FC(&qword_27FF756E8, type metadata accessor for SafetyCacheViewModel, &protocol conformance descriptor for SafetyCacheViewModel);
  v185 = a1;
  v216 = v216;
  v199 = v60;
  *v59 = sub_264784174();
  v59[1] = v61;
  v200 = v61;
  v213 = v49;
  v214 = a4;
  v62 = (a4 + v49[11]);
  type metadata accessor for TranscriptViewModel(0);
  sub_26460B5FC(&qword_27FF75410, type metadata accessor for TranscriptViewModel, &protocol conformance descriptor for TranscriptViewModel);

  v202 = a3;
  *v62 = sub_264784174();
  v62[1] = v63;
  if (qword_27FF75008 != -1)
  {
    swift_once();
  }

  v184 = qword_27FF807E8;
  v205 = type metadata accessor for SafetyCacheMapViewModel(0);
  v64 = objc_allocWithZone(v205);
  *&v64[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_locationDegreeBuffer] = 0x3F847AE147AE147BLL;
  v65 = OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel__annotations;
  *&v236 = MEMORY[0x277D84F90];
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756F0, &qword_264787DE8);
  sub_264783E94();
  v66 = v189;
  (v189)[4](&v64[v65], v48, v215);
  v67 = OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel__annotationInfo;
  v68 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  v69 = *(*(v68 - 8) + 56);
  v70 = v46;
  v69(v46, 1, 1, v68);
  v71 = v186;
  v69((v70 + *(v186 + 20)), 1, 1, v68);
  v69((v70 + *(v71 + 24)), 1, 1, v68);
  v69((v70 + *(v71 + 28)), 1, 1, v68);
  sub_26460CBD8(v70, v187, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
  v72 = v188;
  sub_264783E94();
  sub_26460CC40(v70, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
  (*(v203 + 32))(&v64[v67], v72, v204);
  v73 = &v64[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_destinationLocation];
  *v73 = 0;
  *(v73 + 1) = 0;
  v73[16] = 1;
  v74 = &v64[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache];
  memset(v235, 0, sizeof(v235));
  *v74 = 0u;
  *(v74 + 1) = 0u;
  *(v74 + 2) = 0u;
  *(v74 + 3) = 0u;
  *(v74 + 4) = 0u;
  *(v74 + 5) = 0u;
  sub_26460CD50(v235, &qword_27FF756F8, &qword_264787DF0);
  swift_beginAccess();
  (v66[1])(&v64[v65], v215);
  *&v228 = MEMORY[0x277D84F90];
  sub_264783E94();
  swift_endAccess();
  v75 = v184;
  *&v64[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_contact] = v185;
  v76 = &v64[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_handle];
  *v76 = 0;
  *(v76 + 1) = 0;
  *&v64[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_geocoder] = v75;
  v234.receiver = v64;
  v234.super_class = v205;

  v77 = objc_msgSendSuper2(&v234, sel_init);
  v78 = swift_allocObject();
  *(v78 + 16) = v77;
  v79 = v214 + v213[15];
  *v79 = sub_26460CCD8;
  *(v79 + 1) = v78;
  v79[16] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  v80 = v77;
  sub_264783ED4(&v228);

  v238 = v230;
  v239 = v231;
  v240 = v232;
  v241 = v233;
  v236 = v228;
  v237 = v229;
  swift_beginAccess();
  v81 = v207;
  sub_264783EA4();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v222);

  v82 = v222;
  v83 = v81;
  if (v222)
  {
    v188 = [v222 sessionType];
  }

  else
  {
    v188 = 0;
  }

  v84 = sub_264783AF4();
  v215 = v84;
  v85 = *(v84 - 8);
  v86 = *(v85 + 56);
  v87 = v85 + 56;
  v86(v218, 1, 1, v84);
  v86(v219, 1, 1, v84);
  v203 = v87;
  v204 = v86;
  v88 = v86;
  v189 = type metadata accessor for SafetyCacheDetailViewModel(0);
  v89 = objc_allocWithZone(v189);
  v90 = &v89[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__safetyCache];
  v226 = 0u;
  v227 = 0u;
  v224 = 0u;
  v225 = 0u;
  v222 = 0u;
  v223 = 0u;
  v187 = v80;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756F8, &qword_264787DF0);
  v92 = v192;
  v185 = v91;
  sub_264783E94();
  v93 = *(v206 + 32);
  v186 = v90;
  v93(v90, v92, v83);
  v94 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__startLocationInfoViewModel;
  *&v222 = 0;
  v95 = v193;
  sub_264783E94();
  v96 = v195;
  v97 = *(v194 + 4);
  v97(&v89[v94], v95, v195);
  v98 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__destinationInfoViewModel;
  *&v222 = 0;
  sub_264783E94();
  v97(&v89[v98], v95, v96);
  v99 = &v89[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__sessionStartTime];
  v100 = v217;
  v88(v217, 1, 1, v215);
  v101 = v208;
  sub_26460CCE8(v100, v208, &qword_27FF756B8, &qword_26478AC90);
  v102 = v196;
  sub_264783E94();
  sub_26460CD50(v100, &qword_27FF756B8, &qword_26478AC90);
  v103 = *(v211 + 32);
  v195 = v99;
  v104 = v99;
  v105 = v212;
  v103(v104, v102, v212);
  v106 = &v89[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__sessionEndTime];
  v204(v100, 1, 1, v215);
  sub_26460CCE8(v100, v101, &qword_27FF756B8, &qword_26478AC90);
  sub_264783E94();
  sub_26460CD50(v100, &qword_27FF756B8, &qword_26478AC90);
  v194 = v106;
  v103(v106, v102, v105);
  v107 = &v89[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_routeIconSize];
  *v107 = 0;
  v107[1] = 0;
  v108 = &v89[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_callFunctionProvider];
  *v108 = 0u;
  *(v108 + 1) = 0u;
  *(v108 + 4) = 0;
  *&v89[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_contact] = 0;
  v109 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_264785C14())
    {
      v110 = sub_26476D298(MEMORY[0x277D84F90]);
    }

    else
    {
      v110 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v110 = MEMORY[0x277D84FA0];
  }

  v111 = v207;
  *&v89[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_sinkSet] = v110;
  v112 = v186;
  swift_beginAccess();
  (*(v206 + 8))(v112, v111);
  v224 = v238;
  v225 = v239;
  v226 = v240;
  v227 = v241;
  v222 = v236;
  v223 = v237;
  sub_264783E94();
  swift_endAccess();
  v113 = &v89[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__cacheMapViewModel];
  swift_beginAccess();
  sub_26460B5FC(&qword_27FF75700, type metadata accessor for SafetyCacheMapViewModel, &unk_26478D5D0);
  v207 = v187;
  *v113 = sub_264784174();
  v113[1] = v114;
  swift_endAccess();
  swift_beginAccess();
  v221 = v109;
  sub_264783E94();
  swift_endAccess();
  v89[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_isTransparencyMode] = 0;
  *&v89[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_sessionType] = v188;
  v115 = v217;
  sub_26460CCE8(v218, v217, &qword_27FF756B8, &qword_26478AC90);
  v116 = v195;
  swift_beginAccess();
  v117 = v212;
  v118 = *(v211 + 8);
  v118(v116, v212);
  v119 = v208;
  sub_26460CCE8(v115, v208, &qword_27FF756B8, &qword_26478AC90);
  sub_264783E94();
  sub_26460CD50(v115, &qword_27FF756B8, &qword_26478AC90);
  swift_endAccess();
  sub_26460CCE8(v219, v115, &qword_27FF756B8, &qword_26478AC90);
  v120 = v194;
  swift_beginAccess();
  v118(v120, v117);
  v121 = v207;
  sub_26460CCE8(v115, v119, &qword_27FF756B8, &qword_26478AC90);
  sub_264783E94();
  sub_26460CD50(v115, &qword_27FF756B8, &qword_26478AC90);
  swift_endAccess();
  v220.receiver = v89;
  v220.super_class = v189;
  v122 = objc_msgSendSuper2(&v220, sel_init);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26460CDF0(&qword_27FF75708, &qword_27FF756C0, &unk_264787DC0, MEMORY[0x277CBCEC8]);
  v123 = v122;
  v124 = v198;
  v125 = v210;
  sub_264783F14();

  swift_beginAccess();
  sub_264783E34();
  swift_endAccess();

  sub_26460CD50(v219, &qword_27FF756B8, &qword_26478AC90);
  sub_26460CD50(v218, &qword_27FF756B8, &qword_26478AC90);
  (*(v197 + 8))(v125, v124);
  swift_getKeyPath();
  swift_getKeyPath();
  v126 = v216;
  sub_264783ED4(&v228);

  v127 = v228;
  if (v228)
  {
    v128 = [v228 sessionType];

    if (v128 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v228);

      v129 = v228;
      if (v228)
      {
        v130 = [v228 sessionStartDate];

        v131 = v180;
        if (v130)
        {
          v132 = v176;
          sub_264783AC4();

          v133 = 0;
          v134 = v179;
        }

        else
        {
          v133 = 1;
          v134 = v179;
          v132 = v176;
        }

        v204(v132, v133, 1, v215);
        sub_26460CF84(v132, v134);
      }

      else
      {
        v134 = v179;
        v204(v179, 1, 1, v215);
        v131 = v180;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_26460CCE8(v134, v217, &qword_27FF756B8, &qword_26478AC90);
      v135 = v123;
      sub_264783EE4();
      sub_26460CD50(v134, &qword_27FF756B8, &qword_26478AC90);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v228);

      v136 = v228;
      if (v228)
      {
        v137 = [v228 estimatedEndDate];

        if (v137)
        {
          v138 = v177;
          sub_264783AC4();

          v139 = 0;
        }

        else
        {
          v139 = 1;
          v138 = v177;
        }

        v204(v138, v139, 1, v215);
        sub_26460CF84(v138, v131);
      }

      else
      {
        v204(v131, 1, 1, v215);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_26460CCE8(v131, v217, &qword_27FF756B8, &qword_26478AC90);
      v140 = v135;
      sub_264783EE4();
      sub_26460CD50(v131, &qword_27FF756B8, &qword_26478AC90);
      v126 = v216;
      v121 = v207;
    }
  }

  *&v230 = &protocol witness table for SafetyCacheViewModel;
  *(&v229 + 1) = v199;
  *&v228 = v126;
  v141 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_callFunctionProvider;
  swift_beginAccess();
  v142 = v126;
  sub_26460CE38(&v228, v123 + v141);
  swift_endAccess();
  v143 = swift_allocObject();
  *(v143 + 16) = v123;
  v144 = v214 + v213[18];
  *v144 = sub_26460CCD8;
  *(v144 + 1) = v143;
  v144[16] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  v145 = v123;
  v146 = v200;
  sub_264783ED4(&v228);

  v147 = v228;
  v148 = v201;
  if (v228)
  {
    v149 = [v228 sessionType];

    if (v149 > 2)
    {
      if (v149 == 3 || v149 == 4)
      {
        goto LABEL_30;
      }
    }

    else if (v149 == 1 || v149 == 2)
    {
      goto LABEL_30;
    }
  }

  sub_264783DE4();
  v150 = sub_264783E14();
  v151 = sub_2647859D4();
  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    *&v228 = v153;
    *v152 = 136315138;
    *(v152 + 4) = sub_2646DF234(0xD000000000000031, 0x80000002647931C0, &v228);
    _os_log_impl(&dword_264605000, v150, v151, "%s: Received invalid session type - go straight to safety cache view", v152, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v153);
    MEMORY[0x266740650](v153, -1, -1);
    MEMORY[0x266740650](v152, -1, -1);
  }

  (*(v181 + 8))(v148, v182);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v228);

  v154 = v228;
  if (!v228)
  {
    goto LABEL_40;
  }

  v155 = [v228 sessionState];

  if (v155 == 3)
  {
    goto LABEL_42;
  }

  if (v155 != 9)
  {
LABEL_40:

    goto LABEL_41;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v228);

  v156 = v228;
  if (v228 || (swift_getKeyPath(), swift_getKeyPath(), sub_264783ED4(&v228), , , (v156 = v228) != 0))
  {

    v121 = v156;
LABEL_41:

    return;
  }

LABEL_42:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v228);

  v157 = v228;
  if (!v228)
  {

    goto LABEL_31;
  }

  v158 = [v228 sessionID];

  v159 = v172;
  sub_264783B44();

  v160 = *(v174 + 32);
  v160(v178, v159, v175);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v228);

  v161 = v228;
  if (v228)
  {
    v162 = [v228 sessionState];

    if (v162 == 9)
    {
      (*(v174 + 8))(v178, v175);
LABEL_30:

LABEL_31:

      return;
    }
  }

  v163 = sub_2647858E4();
  (*(*(v163 - 8) + 56))(v173, 1, 1, v163);
  v219 = v160;
  v165 = v174;
  v164 = v175;
  v166 = v171;
  (*(v174 + 16))(v171, v178, v175);
  v167 = (*(v165 + 80) + 40) & ~*(v165 + 80);
  v168 = swift_allocObject();
  *(v168 + 2) = 0;
  *(v168 + 3) = 0;
  *(v168 + 4) = v146;
  v219(&v168[v167], v166, v164);
  v169 = v146;
  sub_264635430(0, 0, v173, &unk_26478A8B0, v168);

  (*(v165 + 8))(v178, v164);
}

uint64_t sub_264609E20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_manager);
  v4 = sub_264783B14();
  [v3 detailsViewOpenedForSessionID_];

  v5 = *(*(a2 + 8) + 64);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v16);

  CriticalAlertOnboardingView.Model.init(for:receiverSessionStatus:)(v5, *&v16[0], v15);
  v6 = *(a2 + 64);
  v16[0] = *(a2 + 48);
  v16[1] = v6;
  v17 = *(a2 + 80);
  v7 = *(a2 + 64);
  v12 = *(a2 + 48);
  v13 = v7;
  v14 = *(a2 + 80);
  v10 = v15[0];
  v11 = v15[1];
  sub_26460CCE8(v16, v9, &unk_27FF75690, &unk_264787D90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF75690, &unk_264787D90);
  sub_264785304();
  sub_26460C9F4(v12, *(&v12 + 1), v13, *(&v13 + 1));
}

uint64_t sub_264609F84(uint64_t a1)
{
  sub_26460BA14();

  sub_264785054();
}

uint64_t TranscriptView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v48 = type metadata accessor for CheckInView(0);
  MEMORY[0x28223BE20](v48);
  v3 = v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75418, &qword_264787550);
  v5 = *(v4 - 8);
  v50 = v4;
  v51 = v5;
  MEMORY[0x28223BE20](v4);
  v47 = v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75420, &qword_264787558);
  v8 = *(v7 - 8);
  v52 = v7;
  v53 = v8;
  MEMORY[0x28223BE20](v7);
  v49 = v46 - v9;
  v10 = v1[5];
  v74 = v1[4];
  *v75 = v10;
  *&v75[16] = *(v1 + 12);
  v11 = v1[1];
  v70 = *v1;
  v71 = v11;
  v12 = v1[3];
  v72 = v1[2];
  v73 = v12;
  v76[0] = v70;
  v13 = *(&v70 + 1);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783ED4(&v65);

  sub_26460CD50(v76, &qword_27FF75428, &qword_2647875A8);
  v60 = v65;
  v61 = v66;
  v62 = v67;
  v64 = v69;
  v63 = v68;
  v14 = v71;
  v15 = v72;
  v16 = swift_allocObject();
  v17 = *v75;
  *(v16 + 80) = v74;
  *(v16 + 96) = v17;
  *(v16 + 112) = *&v75[16];
  v18 = v71;
  *(v16 + 16) = v70;
  *(v16 + 32) = v18;
  v19 = v73;
  *(v16 + 48) = v72;
  *(v16 + 64) = v19;
  sub_26460B5BC(&v70, &v55);
  CheckInView.init(state:edgeInsets:buttonAction:)(&v60, sub_26460B5B4, v16, v3, *&v14, *(&v14 + 1), *&v15, *(&v15 + 1));
  v55 = *&v75[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75430, &qword_2647875B0);
  sub_264785314();
  v60 = v65;
  LOBYTE(v61) = v66;
  v20 = swift_allocObject();
  v21 = *v75;
  *(v20 + 80) = v74;
  *(v20 + 96) = v21;
  *(v20 + 112) = *&v75[16];
  v22 = v71;
  *(v20 + 16) = v70;
  *(v20 + 32) = v22;
  v23 = v73;
  *(v20 + 48) = v72;
  *(v20 + 64) = v23;
  sub_26460B5BC(&v70, &v55);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75438, &qword_2647875B8);
  v25 = sub_26460B5FC(&qword_27FF75440, type metadata accessor for CheckInView, &protocol conformance descriptor for CheckInView);
  v44 = sub_26460B644();
  v45 = sub_26460B698();
  v26 = v48;
  sub_2647850C4();

  sub_26460CC40(v3, type metadata accessor for CheckInView);
  swift_getKeyPath();
  swift_getKeyPath();
  v46[1] = v13;

  sub_264783ED4(&v55);
  sub_26460CD50(v76, &qword_27FF75428, &qword_2647875A8);

  v27 = v55;
  *&v65 = v55;
  v28 = swift_allocObject();
  v29 = *v75;
  *(v28 + 80) = v74;
  *(v28 + 96) = v29;
  *(v28 + 112) = *&v75[16];
  v30 = v71;
  *(v28 + 16) = v70;
  *(v28 + 32) = v30;
  v31 = v73;
  *(v28 + 48) = v72;
  *(v28 + 64) = v31;
  sub_26460B5BC(&v70, &v55);
  v32 = type metadata accessor for SafetyCacheViewModel(0);
  *&v55 = v26;
  *(&v55 + 1) = &type metadata for UserType;
  v56 = v24;
  v57 = v25;
  v58 = v44;
  v59 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = sub_26460B5FC(&qword_27FF754B0, type metadata accessor for SafetyCacheViewModel, MEMORY[0x277D85380]);
  v35 = v49;
  v36 = v50;
  v37 = v47;
  sub_2647850F4();

  (*(v51 + 8))(v37, v36);

  LOBYTE(v37) = sub_2646B395C();
  sub_26460CD50(v76, &qword_27FF75428, &qword_2647875A8);
  LOBYTE(v65) = v37 & 1;
  v38 = swift_allocObject();
  v39 = *v75;
  *(v38 + 80) = v74;
  *(v38 + 96) = v39;
  *(v38 + 112) = *&v75[16];
  v40 = v71;
  *(v38 + 16) = v70;
  *(v38 + 32) = v40;
  v41 = v73;
  *(v38 + 48) = v72;
  *(v38 + 64) = v41;
  sub_26460B5BC(&v70, &v55);
  *&v55 = v36;
  *(&v55 + 1) = v32;
  v56 = OpaqueTypeConformance2;
  v57 = v34;
  swift_getOpaqueTypeConformance2();
  v42 = v52;
  sub_2647850F4();

  return (*(v53 + 8))(v35, v42);
}

void *sub_26460A6E4(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 48);
  v4 = *(a1 + 88);
  v3[23] = v1;
  sub_26460CCE8(&v4, v3, &qword_27FF75430, &qword_2647875B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75430, &qword_2647875B0);
  sub_264785304();

  return sub_2646074C8();
}

uint64_t sub_26460A7A0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75468, &qword_2647875C0);
  MEMORY[0x28223BE20](v6);
  v8 = v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75670, &qword_264787D40);
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;
  v12 = type metadata accessor for InitiatorSessionDetailsView(0);
  MEMORY[0x28223BE20](v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v15 = *(a2 + 80);
    v26[4] = *(a2 + 64);
    v26[5] = v15;
    v27 = *(a2 + 96);
    v16 = *(a2 + 16);
    v26[0] = *a2;
    v26[1] = v16;
    v17 = *(a2 + 48);
    v26[2] = *(a2 + 32);
    v26[3] = v17;
    sub_2646079D4(v8);
    sub_26460CA8C(v8, v11);
    swift_storeEnumTagMultiPayload();
    sub_26460B5FC(&qword_27FF75458, type metadata accessor for InitiatorSessionDetailsView, &protocol conformance descriptor for InitiatorSessionDetailsView);
    sub_26460B79C();
    sub_264784874();
    return sub_26460CAFC(v8);
  }

  else
  {
    v24[1] = v12;
    v24[2] = v6;
    v24[3] = a3;
    v26[0] = *a2;
    v19 = *(&v26[0] + 1);
    if (qword_27FF74FC0 != -1)
    {
      swift_once();
    }

    v20 = off_27FF75B20;
    v21 = *(v19 + 56);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26460CCE8(v26, v25, &qword_27FF75428, &qword_2647875A8);

    sub_264783ED4(v25);
    sub_26460CD50(v26, &qword_27FF75428, &qword_2647875A8);

    v22 = v25[0];

    v23 = sub_2646B4B8C();
    sub_26460CD50(v26, &qword_27FF75428, &qword_2647875A8);
    InitiatorSessionDetailsView.init(sessionViewModel:handlerManager:safetyCacheViewModel:showCachePersistence:)(v20, v21, v22, v23 & 1, v14);
    sub_26460CBD8(v14, v11, type metadata accessor for InitiatorSessionDetailsView);
    swift_storeEnumTagMultiPayload();
    sub_26460B5FC(&qword_27FF75458, type metadata accessor for InitiatorSessionDetailsView, &protocol conformance descriptor for InitiatorSessionDetailsView);
    sub_26460B79C();
    sub_264784874();
    return sub_26460CC40(v14, type metadata accessor for InitiatorSessionDetailsView);
  }
}

uint64_t sub_26460AB4C(void **a1, uint64_t *a2, __int128 *a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a3[5];
  v21 = a3[4];
  v22 = v6;
  v23 = *(a3 + 12);
  v7 = a3[1];
  v17 = *a3;
  v18 = v7;
  v8 = a3[3];
  v19 = a3[2];
  v20 = v8;
  result = sub_26460ACA4(v4, v5);
  if (result)
  {
    v24 = *(a3 + 88);
    v17 = *(a3 + 88);
    v16[23] = 2;
    sub_26460CCE8(&v24, v16, &qword_27FF75430, &qword_2647875B0);
    sub_26460CCE8(&v24, v16, &qword_27FF75430, &qword_2647875B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75430, &qword_2647875B0);
    sub_264785304();

    v10 = a3[5];
    v21 = a3[4];
    v22 = v10;
    v23 = *(a3 + 12);
    v11 = a3[1];
    v17 = *a3;
    v18 = v11;
    v12 = a3[3];
    v19 = a3[2];
    v20 = v12;
    sub_2646074C8();
    v17 = v24;
    v16[0] = 1;
    sub_264785304();

    v13 = a3[5];
    v21 = a3[4];
    v22 = v13;
    v23 = *(a3 + 12);
    v14 = a3[1];
    v17 = *a3;
    v18 = v14;
    v15 = a3[3];
    v19 = a3[2];
    v20 = v15;
    return sub_2646074C8();
  }

  return result;
}

uint64_t sub_26460ACA4(void *a1, uint64_t a2)
{
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v39 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v42);

  v13 = v42;
  if (!v42)
  {
    sub_264783DE4();
    v24 = sub_264783E14();
    v25 = sub_2647859D4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_2646DF234(0xD00000000000002CLL, 0x8000000264793190, &v42);
      _os_log_impl(&dword_264605000, v24, v25, "%s: new session state is empty! Unable to present valid expanded view!", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x266740650](v27, -1, -1);
      MEMORY[0x266740650](v26, -1, -1);
    }

    v28 = *(v4 + 8);
    v29 = v7;
    goto LABEL_16;
  }

  v14 = [v42 sessionState];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v42);

  v15 = v42;
  if (v42)
  {
    v16 = [v42 sessionState];

    if (v16 <= 9 && ((1 << v16) & 0x218) != 0)
    {
      sub_264783DE4();
      v17 = a1;
      v18 = sub_264783E14();
      v19 = sub_2647859D4();
      if (os_log_type_enabled(v18, v19))
      {
        v39 = v14;
        v40 = v3;
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v42 = v21;
        *v20 = 136315650;
        *(v20 + 4) = sub_2646DF234(0xD00000000000002CLL, 0x8000000264793190, &v42);
        *(v20 + 12) = 2048;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_264783ED4(&v41);

        v22 = v41;
        if (v41)
        {
          v23 = [v41 sessionState];
        }

        else
        {
          v23 = 0;
        }

        *(v20 + 14) = v23;

        *(v20 + 22) = 2048;
        *(v20 + 24) = v39;
        _os_log_impl(&dword_264605000, v18, v19, "%s: not relaunching expanded view because session status changed from %ld to %ld", v20, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x266740650](v21, -1, -1);
        MEMORY[0x266740650](v20, -1, -1);

        v28 = *(v4 + 8);
        v29 = v12;
        v37 = v40;
        goto LABEL_22;
      }

      v28 = *(v4 + 8);
      v29 = v12;
LABEL_16:
      v37 = v3;
LABEL_22:
      v28(v29, v37);
      return 0;
    }
  }

  sub_264783DE4();
  v30 = a1;
  v31 = sub_264783E14();
  v32 = sub_2647859D4();
  if (os_log_type_enabled(v31, v32))
  {
    v39 = v14;
    v40 = v3;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v42 = v34;
    *v33 = 136315650;
    *(v33 + 4) = sub_2646DF234(0xD00000000000002CLL, 0x8000000264793190, &v42);
    *(v33 + 12) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v41);

    v35 = v41;
    if (v41)
    {
      v36 = [v41 sessionState];
    }

    else
    {
      v36 = 0;
    }

    *(v33 + 14) = v36;

    *(v33 + 22) = 2048;
    *(v33 + 24) = v39;
    _os_log_impl(&dword_264605000, v31, v32, "%s: updating the expanded view because session status changed from %ld to %ld", v33, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x266740650](v34, -1, -1);
    MEMORY[0x266740650](v33, -1, -1);

    (*(v4 + 8))(v10, v40);
  }

  else
  {

    (*(v4 + 8))(v10, v3);
  }

  return 1;
}

uint64_t sub_26460B294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v8 = sub_264783E14();
  v9 = sub_2647859B4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_264605000, v8, v9, "shouldShowViewButton changed, requesting to resize view", v10, 2u);
    MEMORY[0x266740650](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v11 = *(*(a3 + 8) + 56);
  result = swift_beginAccess();
  v13 = *(v11 + 64);
  if (v13)
  {
    v14 = *(v11 + 72);

    v13(v15);
    return sub_26460C9A0(v13, v14);
  }

  return result;
}

double sub_26460B444@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v7);

  v3 = v9;
  v4 = v10;
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 50) = v4;
  *(a2 + 48) = v3;
  return result;
}

uint64_t sub_26460B4DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *(a1 + 50);
  v9 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26460D004(v2, v3, v4, v5, v6, v7, v9 | (v8 << 16));

  return sub_264783EE4();
}

uint64_t sub_26460B5FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26460B644()
{
  result = qword_27FF75448;
  if (!qword_27FF75448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75448);
  }

  return result;
}

unint64_t sub_26460B698()
{
  result = qword_27FF75450;
  if (!qword_27FF75450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75438, &qword_2647875B8);
    sub_26460B5FC(&qword_27FF75458, type metadata accessor for InitiatorSessionDetailsView, &protocol conformance descriptor for InitiatorSessionDetailsView);
    sub_26460B79C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75450);
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

unint64_t sub_26460B79C()
{
  result = qword_27FF75460;
  if (!qword_27FF75460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75468, &qword_2647875C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75470, &qword_2647875C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75478, &qword_2647875D0);
    sub_26460B908();
    sub_26460B9C0();
    sub_26460BA14();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26460B5FC(&qword_27FF754A8, type metadata accessor for CacheNotAvailableView, &protocol conformance descriptor for CacheNotAvailableView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75460);
  }

  return result;
}

unint64_t sub_26460B908()
{
  result = qword_27FF75480;
  if (!qword_27FF75480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75470, &qword_2647875C8);
    sub_26460CDF0(&qword_27FF75488, &qword_27FF75490, &qword_2647875D8, &unk_2647928F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75480);
  }

  return result;
}

unint64_t sub_26460B9C0()
{
  result = qword_27FF75498;
  if (!qword_27FF75498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75498);
  }

  return result;
}

unint64_t sub_26460BA14()
{
  result = qword_27FF754A0;
  if (!qword_27FF754A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF754A0);
  }

  return result;
}

uint64_t sub_26460BA68@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_26460BAE8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_264783EE4();
}

uint64_t objectdestroyTm()
{

  if (*(v0 + 72))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_26460BBCC(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_264784A54();

    return sub_264784264();
  }

  else
  {
    sub_2647842C4();
    swift_getWitnessTable();
    sub_2647849A4();
    sub_264784264();
    sub_264785B44();
    swift_getWitnessTable();
    sub_2647842C4();
    swift_getWitnessTable();
    sub_2647849A4();
    return sub_264784264();
  }
}

uint64_t sub_26460BD30(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_264784A54();
    sub_264784264();
  }

  else
  {
    sub_2647842C4();
    swift_getWitnessTable();
    sub_2647849A4();
    sub_264784264();
    sub_264785B44();
    swift_getWitnessTable();
    sub_2647842C4();
    swift_getWitnessTable();
    sub_2647849A4();
    sub_264784264();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_26460BF44@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26460BFA4()
{
  v1 = *v0;
  sub_264785F44();
  MEMORY[0x26673FC80](v1);
  return sub_264785F94();
}

uint64_t sub_26460BFEC(uint64_t a1)
{
  v2 = *v1;
  sub_264785F44();
  MEMORY[0x26673FC80](v2);
  return sub_264785F94();
}

uint64_t sub_26460C040(uint64_t a1)
{
  v2 = sub_26460B5FC(&qword_27FF75788, type metadata accessor for CLError, &unk_264788238);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_26460C0AC(uint64_t a1)
{
  v2 = sub_26460B5FC(&qword_27FF75788, type metadata accessor for CLError, &unk_264788238);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_26460C118(void *a1, uint64_t a2)
{
  v4 = sub_26460B5FC(&qword_27FF75788, type metadata accessor for CLError, &unk_264788238);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_26460C1CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26460B5FC(&qword_27FF75788, type metadata accessor for CLError, &unk_264788238);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_26460C248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_264785F44();
  sub_264785644();
  return sub_264785F94();
}

uint64_t sub_26460C2A8(uint64_t a1)
{
  v2 = sub_26460B5FC(&qword_27FF75750, type metadata accessor for CLError, &unk_2647881F4);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26460C314(uint64_t a1)
{
  v2 = sub_26460B5FC(&qword_27FF75750, type metadata accessor for CLError, &unk_2647881F4);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_26460C384(uint64_t a1)
{
  v2 = sub_26460B5FC(&qword_27FF75788, type metadata accessor for CLError, &unk_264788238);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_26460C3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26460B5FC(&qword_27FF75788, type metadata accessor for CLError, &unk_264788238);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_26460C474(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t get_enum_tag_for_layout_string_15SafetyMonitorUI27CriticalAlertOnboardingViewV5ModelVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_26460C4E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_26460C52C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_26460C594()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75420, &qword_264787558);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75418, &qword_264787550);
  type metadata accessor for SafetyCacheViewModel(255);
  type metadata accessor for CheckInView(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75438, &qword_2647875B8);
  sub_26460B5FC(&qword_27FF75440, type metadata accessor for CheckInView, &protocol conformance descriptor for CheckInView);
  sub_26460B644();
  sub_26460B698();
  swift_getOpaqueTypeConformance2();
  sub_26460B5FC(&qword_27FF754B0, type metadata accessor for SafetyCacheViewModel, MEMORY[0x277D85380]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26460C76C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26460C78C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26460C7EC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26460C80C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_26460C9A0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_26460C9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_26460C9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
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

uint64_t sub_26460CA8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75468, &qword_2647875C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26460CAFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75468, &qword_2647875C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26460CB68()
{

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_26460CBD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26460CC40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26460CCA0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26460CCE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26460CD50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26460CDB0()
{
  MEMORY[0x2667406F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26460CDF0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_26460CE38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75710, &qword_264787E40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26460CEB8()
{
  v1 = sub_264783B64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26460CF84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26460D004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v7 = (a7 >> 21) & 7;
  if (v7 > 1)
  {
    if (v7 - 2 >= 2)
    {
      if (v7 != 4)
      {
        return;
      }

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v7)
  {

LABEL_6:
  }

LABEL_8:
}

uint64_t sub_26460D0A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26460D0C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_26460D310(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_26460D3A8()
{
  result = qword_27FF75778;
  if (!qword_27FF75778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75778);
  }

  return result;
}

uint64_t SessionManagementError.errorDescription.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_264783904();

  return v1;
}

uint64_t SessionManagementError.hashValue.getter()
{
  sub_264785F44();
  MEMORY[0x26673FC80](0);
  return sub_264785F94();
}

uint64_t sub_26460D5F8()
{
  sub_264785F44();
  MEMORY[0x26673FC80](0);
  return sub_264785F94();
}

uint64_t sub_26460D664(uint64_t a1)
{
  sub_264785F44();
  MEMORY[0x26673FC80](0);
  return sub_264785F94();
}

unint64_t sub_26460D6A8()
{
  result = qword_27FF75920;
  if (!qword_27FF75920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75920);
  }

  return result;
}

unint64_t sub_26460D70C()
{
  result = qword_27FF75928;
  if (!qword_27FF75928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75928);
  }

  return result;
}

uint64_t sub_26460D760()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_264783904();

  return v1;
}

uint64_t getEnumTagSinglePayload for SessionManagementError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SessionManagementError(_WORD *result, int a2, int a3)
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

uint64_t sub_26460D90C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_264784574();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_26460CCE8(v2, &v14 - v9, &qword_27FF759A8, &qword_264788590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_264783F74();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_2647859E4();
    v13 = sub_264784BE4();
    sub_264783DA4();

    sub_264784564();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t CriticalAlertBlurbView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_264783F74();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75930, &qword_2647884B0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = (&v43 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75938, &qword_2647884B8);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - v14;
  *v15 = sub_2647845C4();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75940, &qword_2647884C0);
  sub_26460DEA0(&v15[*(v16 + 44)]);
  v17 = sub_264784C34();
  v18 = &v15[*(v13 + 44)];
  *v18 = v17;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  v18[40] = 1;
  sub_26460D90C(v7);
  (*(v2 + 104))(v5, *MEMORY[0x277CDF3D0], v1);
  v19 = sub_264783F64();
  v20 = *(v2 + 8);
  v20(v5, v1);
  v20(v7, v1);
  v21 = objc_opt_self();
  v22 = &selRef_quaternarySystemFillColor;
  if ((v19 & 1) == 0)
  {
    v22 = &selRef_tertiarySystemBackgroundColor;
  }

  v23 = [v21 *v22];
  v24 = sub_264785134();
  KeyPath = swift_getKeyPath();
  v26 = v11 + *(v9 + 44);
  v27 = *(sub_2647842B4() + 20);
  v28 = *MEMORY[0x277CE0118];
  v29 = sub_264784674();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  __asm { FMOV            V0.2D, #10.0 }

  *v26 = _Q0;
  *&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75948, &qword_26478B640) + 36)] = 256;
  *v11 = KeyPath;
  v11[1] = v24;
  v35 = sub_264785504();
  v37 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75950, &qword_264788500);
  v39 = v44;
  v40 = v44 + *(v38 + 36);
  sub_26460E7E4(v11, v40, &qword_27FF75930, &qword_2647884B0);
  v41 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75958, &qword_264788508) + 36));
  *v41 = v35;
  v41[1] = v37;
  return sub_26460E7E4(v15, v39, &qword_27FF75938, &qword_2647884B8);
}

uint64_t sub_26460DEA0@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759B0, &qword_264788598);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = sub_264785274();
  v9 = sub_264784CC4();
  KeyPath = swift_getKeyPath();
  v11 = sub_264785164();
  v12 = swift_getKeyPath();
  *v7 = sub_264784724();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759B8, &qword_2647885D0);
  sub_26460E088(&v7[*(v13 + 44)]);
  sub_26460CCE8(v7, v5, &qword_27FF759B0, &qword_264788598);
  *a1 = v8;
  a1[1] = KeyPath;
  a1[2] = v9;
  a1[3] = v12;
  a1[4] = v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759C0, &qword_2647885D8);
  sub_26460CCE8(v5, a1 + *(v14 + 48), &qword_27FF759B0, &qword_264788598);

  sub_26460EC10(v7);
  sub_26460EC10(v5);
}

uint64_t sub_26460E088@<X0>(uint64_t *a1@<X8>)
{
  v44 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759C8, &qword_2647885E0);
  MEMORY[0x28223BE20](v1 - 8);
  v45 = &v36[-v2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759D0, &qword_2647885E8);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v41 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v46 = &v36[-v6];
  v7 = sub_264783B94();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_264785704();
  MEMORY[0x28223BE20](v8 - 8);
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  sub_264784644();
  v12 = sub_264784E34();
  v14 = v13;
  v16 = v15;
  sub_264784D74();
  v17 = sub_264784E24();
  v38 = v18;
  v39 = v17;
  v37 = v19;
  v40 = v20;

  sub_26460ECC4(v12, v14, v16 & 1);

  sub_264785694();
  v21 = [v10 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v22 = v45;
  sub_2647839C4();

  v23 = sub_2647839D4();
  result = (*(*(v23 - 8) + 48))(v22, 1, v23);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v25 = v46;
    sub_264784D94();
    v27 = v41;
    v26 = v42;
    v28 = *(v42 + 16);
    v29 = v43;
    v28(v41, v25, v43);
    v30 = v44;
    v31 = v38;
    v32 = v39;
    *v44 = v39;
    v30[1] = v31;
    v33 = v37 & 1;
    *(v30 + 16) = v37 & 1;
    v30[3] = v40;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759D8, &qword_2647885F0);
    v28(v30 + *(v34 + 48), v27, v29);
    sub_26460C474(v32, v31, v33);
    v35 = *(v26 + 8);

    v35(v46, v29);
    v35(v27, v29);
    sub_26460ECC4(v32, v31, v33);
  }

  return result;
}

uint64_t sub_26460E538@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_264783B94();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_264785704();
  MEMORY[0x28223BE20](v3 - 8);
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  sub_264785754();
  sub_264784644();
  v6 = sub_264784E34();
  v8 = v7;
  LOBYTE(ObjCClassFromMetadata) = v9;
  sub_264784D74();
  v10 = sub_264784E24();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_26460ECC4(v6, v8, ObjCClassFromMetadata & 1);

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_26460E734@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264784404();
  *a1 = result;
  return result;
}

uint64_t sub_26460E760@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264784404();
  *a1 = result;
  return result;
}

uint64_t sub_26460E7E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_26460E87C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75960, &unk_264790C60);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26460E908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75960, &unk_264790C60);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for CriticalAlertBlurbView(uint64_t a1)
{
  result = qword_27FF75968;
  if (!qword_27FF75968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26460E9D0(uint64_t a1)
{
  sub_26460EA3C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26460EA3C(uint64_t a1)
{
  if (!qword_27FF75978)
  {
    sub_264783F74();
    v1 = sub_264783F94();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF75978);
    }
  }
}

unint64_t sub_26460EA98()
{
  result = qword_27FF75980;
  if (!qword_27FF75980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75950, &qword_264788500);
    sub_26460EB50();
    sub_26460CDF0(&qword_27FF759A0, &qword_27FF75958, &qword_264788508, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75980);
  }

  return result;
}

unint64_t sub_26460EB50()
{
  result = qword_27FF75988;
  if (!qword_27FF75988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75938, &qword_2647884B8);
    sub_26460CDF0(&qword_27FF75990, &qword_27FF75998, &qword_264788588, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75988);
  }

  return result;
}

uint64_t sub_26460EC10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759B0, &qword_264788598);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26460EC78()
{
  result = qword_27FF779F0;
  if (!qword_27FF779F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF779F0);
  }

  return result;
}

uint64_t sub_26460ECC4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26460ECD4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2646113A0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26460FA4C(v4, v5);
}

uint64_t sub_26460ED68(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_264611398;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_26460FA4C(v3, v4);
  return sub_26460C9A0(v8, v9);
}

uint64_t sub_26460EE24()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_26460FA4C(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_26460EE74(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_26460C9A0(v5, v6);
}

uint64_t sub_26460EF18@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2646113A0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26460FA4C(v4, v5);
}

uint64_t sub_26460EFAC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_264611398;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_26460FA4C(v3, v4);
  return sub_26460C9A0(v8, v9);
}

uint64_t sub_26460F068()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_26460FA4C(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_26460F0B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_26460C9A0(v5, v6);
}

uint64_t sub_26460F15C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2646113A0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26460FA4C(v4, v5);
}

uint64_t sub_26460F1F0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_264611398;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  sub_26460FA4C(v3, v4);
  return sub_26460C9A0(v8, v9);
}

uint64_t sub_26460F2AC()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  sub_26460FA4C(v1, *(v0 + 56));
  return v1;
}

uint64_t sub_26460F2FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_26460C9A0(v5, v6);
}

uint64_t sub_26460F3A0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2646113A0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26460FA4C(v4, v5);
}

uint64_t sub_26460F434(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_264611398;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 64);
  v9 = *(v7 + 72);
  *(v7 + 64) = v6;
  *(v7 + 72) = v5;
  sub_26460FA4C(v3, v4);
  return sub_26460C9A0(v8, v9);
}

uint64_t sub_26460F4F0()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  sub_26460FA4C(v1, *(v0 + 72));
  return v1;
}

uint64_t sub_26460F540(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_26460C9A0(v5, v6);
}

uint64_t sub_26460F5E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = &unk_2647886D8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26460FA4C(v4, v5);
}

uint64_t sub_26460F67C(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_26460F764;

  return v5();
}

uint64_t sub_26460F764()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26460F858(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = &unk_2647886C8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 80);
  v9 = *(v7 + 88);
  *(v7 + 80) = v6;
  *(v7 + 88) = v5;
  sub_26460FA4C(v3, v4);
  return sub_26460C9A0(v8, v9);
}

uint64_t sub_26460F914(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_264611390;

  return v4();
}

uint64_t sub_26460F9FC()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  sub_26460FA4C(v1, *(v0 + 88));
  return v1;
}

uint64_t sub_26460FA4C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26460FA5C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return sub_26460C9A0(v5, v6);
}

uint64_t sub_26460FB00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = &unk_2647886B8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26460FA4C(v4, v5);
}

uint64_t sub_26460FB94(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_26460F764;

  return v7(v4);
}

uint64_t sub_26460FC88(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = &unk_2647886A8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 96);
  v9 = *(v7 + 104);
  *(v7 + 96) = v6;
  *(v7 + 104) = v5;
  sub_26460FA4C(v3, v4);
  return sub_26460C9A0(v8, v9);
}

uint64_t sub_26460FD44(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_26460FE3C;

  return v5();
}

uint64_t sub_26460FE3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26460FF30()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  sub_26460FA4C(v1, *(v0 + 104));
  return v1;
}

uint64_t sub_26460FF80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return sub_26460C9A0(v5, v6);
}

uint64_t sub_264610024@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2646113A0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26460FA4C(v4, v5);
}

uint64_t sub_2646100B8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_264611398;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 112);
  v9 = *(v7 + 120);
  *(v7 + 112) = v6;
  *(v7 + 120) = v5;
  sub_26460FA4C(v3, v4);
  return sub_26460C9A0(v8, v9);
}

uint64_t sub_264610174()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  sub_26460FA4C(v1, *(v0 + 120));
  return v1;
}

uint64_t sub_2646101C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  v6 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return sub_26460C9A0(v5, v6);
}

uint64_t sub_264610268@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 128);
  v5 = *(v3 + 136);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2646113A0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26460FA4C(v4, v5);
}

uint64_t sub_2646102FC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_264611398;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 128);
  v9 = *(v7 + 136);
  *(v7 + 128) = v6;
  *(v7 + 136) = v5;
  sub_26460FA4C(v3, v4);
  return sub_26460C9A0(v8, v9);
}

uint64_t sub_2646103B8()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
  sub_26460FA4C(v1, *(v0 + 136));
  return v1;
}

uint64_t sub_264610408(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 128);
  v6 = *(v2 + 136);
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return sub_26460C9A0(v5, v6);
}

uint64_t sub_2646104AC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 144);
  v5 = *(v3 + 152);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2646113A0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26460FA4C(v4, v5);
}

uint64_t sub_264610540(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_264611398;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 144);
  v9 = *(v7 + 152);
  *(v7 + 144) = v6;
  *(v7 + 152) = v5;
  sub_26460FA4C(v3, v4);
  return sub_26460C9A0(v8, v9);
}

uint64_t sub_2646105FC()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
  sub_26460FA4C(v1, *(v0 + 152));
  return v1;
}

uint64_t sub_26461064C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 144);
  v6 = *(v2 + 152);
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return sub_26460C9A0(v5, v6);
}

uint64_t sub_2646106F0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 160);
  v5 = *(v3 + 168);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_26461103C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26460FA4C(v4, v5);
}

uint64_t sub_264610784(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_264611014;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 160);
  v9 = *(v7 + 168);
  *(v7 + 160) = v6;
  *(v7 + 168) = v5;
  sub_26460FA4C(v3, v4);
  return sub_26460C9A0(v8, v9);
}

uint64_t sub_264610840()
{
  swift_beginAccess();
  v1 = *(v0 + 160);
  sub_26460FA4C(v1, *(v0 + 168));
  return v1;
}

uint64_t sub_264610890(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 160);
  v6 = *(v2 + 168);
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return sub_26460C9A0(v5, v6);
}

double HandlerManager.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[7] = 0u;
  v0[8] = 0u;
  v0[9] = 0u;
  v0[10] = 0u;
  return result;
}

double HandlerManager.init()()
{
  result = 0.0;
  v0[9] = 0u;
  v0[10] = 0u;
  v0[7] = 0u;
  v0[8] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  return result;
}

uint64_t *HandlerManager.deinit()
{
  sub_26460C9A0(v0[2], v0[3]);
  sub_26460C9A0(v0[4], v0[5]);
  sub_26460C9A0(v0[6], v0[7]);
  sub_26460C9A0(v0[8], v0[9]);
  sub_26460C9A0(v0[10], v0[11]);
  sub_26460C9A0(v0[12], v0[13]);
  sub_26460C9A0(v0[14], v0[15]);
  sub_26460C9A0(v0[16], v0[17]);
  sub_26460C9A0(v0[18], v0[19]);
  sub_26460C9A0(v0[20], v0[21]);
  return v0;
}

uint64_t HandlerManager.__deallocating_deinit()
{
  HandlerManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_264610A38@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for HandlerManager();
  result = sub_264783E64();
  *a2 = result;
  return result;
}

uint64_t sub_264610FDC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264611064(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264611390;

  return sub_26460FD44(a1, v4);
}

uint64_t sub_264611118(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26460F764;

  return sub_26460FB94(a1, a2, v6);
}

uint64_t sub_2646111E0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_264611390;

  return sub_26460F914(v2);
}

uint64_t sub_26461128C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26460F764;

  return sub_26460F67C(a1, v4);
}

uint64_t sub_2646113A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_264784574();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_26460CCE8(v2, &v14 - v9, &qword_27FF759A8, &qword_264788590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_264783F74();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_2647859E4();
    v13 = sub_264784BE4();
    sub_264783DA4();

    sub_264784564();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void *DataSharingSelectionList.init(updateHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for DataSharingSelectionList(0);
  v7 = a3 + *(v6 + 20);
  result = sub_2647852E4();
  *v7 = v10;
  *(v7 + 1) = v11;
  v9 = (a3 + *(v6 + 24));
  *v9 = a1;
  v9[1] = a2;
  return result;
}

uint64_t DataSharingSelectionList.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_2647845E4();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264784954();
  v6 = *(v5 - 8);
  v42 = v5;
  v43 = v6;
  MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759E0, &qword_264788718);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759E8, &qword_264788720);
  v38 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759F0, &qword_264788728);
  v16 = *(v15 - 8);
  v40 = v15;
  v41 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759F8, &qword_264788730);
  MEMORY[0x28223BE20](v44);
  v20 = &v37 - v19;
  v49 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75A00, &qword_264788738);
  sub_26460CDF0(&qword_27FF75A08, &qword_27FF75A00, &qword_264788738, MEMORY[0x277CE14C0]);
  sub_264784DA4();
  v21 = sub_26460CDF0(&qword_27FF75A10, &qword_27FF759E0, &qword_264788718, MEMORY[0x277CDE5A0]);
  sub_264785044();
  (*(v9 + 8))(v11, v8);
  v22 = v39;
  sub_264784944();
  v50 = v8;
  v51 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = MEMORY[0x277CDE0D0];
  v25 = v42;
  sub_264785124();
  (*(v43 + 8))(v22, v25);
  (*(v38 + 8))(v14, v12);
  sub_264784C44();
  v50 = v12;
  v51 = v25;
  v52 = OpaqueTypeConformance2;
  v53 = v24;
  swift_getOpaqueTypeConformance2();
  v26 = v40;
  sub_264784EE4();
  (*(v41 + 8))(v18, v26);
  v27 = v45;
  sub_2647845D4();
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75A18, &qword_264788740) + 36);
  v29 = v46;
  v30 = v47;
  (*(v46 + 16))(&v20[v28], v27, v47);
  v31 = v29;
  v32 = *(v29 + 56);
  v32(&v20[v28], 0, 1, v30);
  KeyPath = swift_getKeyPath();
  v34 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75A20, &qword_264788778) + 36)];
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75A28, &qword_264788780) + 28);
  (*(v31 + 32))(v34 + v35, v27, v30);
  v32(v34 + v35, 0, 1, v30);
  *v34 = KeyPath;
  *&v20[*(v44 + 36)] = 256;
  sub_264613860();
  sub_264785004();
  return sub_26460CD50(v20, &qword_27FF759F8, &qword_264788730);
}

uint64_t sub_264611C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v128 = sub_2647846B4();
  v133 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v125 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_264784AA4();
  v132 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v123 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DataSharingSelectionList(0);
  v109 = *(v5 - 8);
  v126 = *(v109 + 8);
  MEMORY[0x28223BE20](v5 - 8);
  v122 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264783F74();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v92 - v12;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75AB0, &qword_264788900);
  v129 = *(v119 - 8);
  v14 = MEMORY[0x28223BE20](v119);
  v110 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v92 - v16;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75AB8, &qword_264788908);
  v18 = MEMORY[0x28223BE20](v118);
  v115 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v92 - v20;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75AC0, &qword_264788910);
  v130 = *(v120 - 8);
  v22 = MEMORY[0x28223BE20](v120);
  v114 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v92 - v24;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75AC8, &qword_264788918);
  v131 = *(v121 - 8);
  v26 = MEMORY[0x28223BE20](v121);
  v112 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v102 = &v92 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75AD0, &qword_264788920);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v116 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v113 = &v92 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v111 = &v92 - v35;
  MEMORY[0x28223BE20](v34);
  v124 = &v92 - v36;
  v135 = a1;
  v108 = sub_264614020();
  sub_264785464();
  v37 = a1;
  sub_2646113A4(v13);
  v107 = *MEMORY[0x277CDF3D0];
  v38 = *(v8 + 104);
  v105 = v8 + 104;
  v106 = v38;
  v39 = v11;
  v40 = v11;
  v41 = v7;
  v99 = v7;
  v38(v40);
  v98 = v13;
  v42 = v39;
  v101 = v39;
  LOBYTE(v39) = sub_264783F64();
  v43 = *(v8 + 8);
  v100 = v8 + 8;
  v104 = v43;
  v43(v42, v41);
  v43(v13, v41);
  v44 = objc_opt_self();
  v45 = &selRef_tertiarySystemBackgroundColor;
  if (v39)
  {
    v45 = &selRef_systemGroupedBackgroundColor;
  }

  v46 = [v44 *v45];
  v136 = sub_264785134();
  v47 = sub_2647853C4();
  v48 = *(v129 + 32);
  v129 += 32;
  v103 = v48;
  v48(v21, v17, v119);
  v49 = v118;
  *&v21[*(v118 + 36)] = v47;
  v50 = v37;
  v51 = v122;
  sub_264614074(v37, v122);
  v52 = (*(v109 + 80) + 16) & ~*(v109 + 80);
  v53 = swift_allocObject();
  sub_2646140DC(v51, v53 + v52);
  v54 = sub_26461414C();
  v96 = v54;
  sub_264784F14();

  sub_26460CD50(v21, &qword_27FF75AB8, &qword_264788908);
  v55 = v123;
  sub_264784A94();
  v136 = v49;
  v137 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = v102;
  v58 = v120;
  sub_264784FF4();
  v59 = *(v132 + 8);
  v132 += 8;
  v109 = v59;
  v59(v55, v127);
  v60 = *(v130 + 8);
  v130 += 8;
  v97 = v60;
  v60(v25, v58);
  v61 = v125;
  sub_2647846A4();
  v136 = v58;
  v137 = OpaqueTypeConformance2;
  v95 = swift_getOpaqueTypeConformance2();
  v62 = v121;
  sub_264785024();
  v63 = *(v133 + 8);
  v133 += 8;
  v94 = v63;
  v63(v61, v128);
  v64 = *(v131 + 8);
  v131 += 8;
  v93 = v64;
  v64(v57, v62);
  v134 = v50;
  v65 = v110;
  sub_264785464();
  v66 = v98;
  v67 = v50;
  sub_2646113A4(v98);
  v68 = v101;
  v69 = v99;
  v106(v101, v107, v99);
  LOBYTE(v62) = sub_264783F64();
  v70 = v68;
  v71 = v104;
  v104(v70, v69);
  v71(v66, v69);
  v72 = objc_opt_self();
  v73 = &selRef_tertiarySystemBackgroundColor;
  if (v62)
  {
    v73 = &selRef_systemGroupedBackgroundColor;
  }

  v74 = [v72 *v73];
  v136 = sub_264785134();
  v75 = sub_2647853C4();
  v76 = v115;
  v103(v115, v65, v119);
  *(v76 + *(v118 + 36)) = v75;
  v77 = v122;
  sub_264614074(v67, v122);
  v78 = swift_allocObject();
  sub_2646140DC(v77, v78 + v52);
  v79 = v114;
  sub_264784F14();

  sub_26460CD50(v76, &qword_27FF75AB8, &qword_264788908);
  v80 = v123;
  sub_264784A94();
  v81 = v112;
  v82 = v120;
  sub_264784FF4();
  v109(v80, v127);
  v97(v79, v82);
  v83 = v125;
  sub_2647846A4();
  v84 = v111;
  v85 = v121;
  sub_264785024();
  v94(v83, v128);
  v93(v81, v85);
  v86 = v124;
  v87 = v113;
  sub_264614450(v124, v113);
  v88 = v116;
  sub_264614450(v84, v116);
  v89 = v117;
  sub_264614450(v87, v117);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B00, &unk_264788930);
  sub_264614450(v88, v89 + *(v90 + 48));
  sub_26460CD50(v84, &qword_27FF75AD0, &qword_264788920);
  sub_26460CD50(v86, &qword_27FF75AD0, &qword_264788920);
  sub_26460CD50(v88, &qword_27FF75AD0, &qword_264788920);
  return sub_26460CD50(v87, &qword_27FF75AD0, &qword_264788920);
}

void *sub_264612978@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_264783B94();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_264785704();
  MEMORY[0x28223BE20](v4 - 8);
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  sub_264783B84();
  v8 = sub_264785754();
  v10 = v9;
  sub_264785694();
  v11 = [v6 bundleForClass_];
  sub_264783B84();
  v12 = sub_264785754();
  v14 = v13;
  type metadata accessor for DataSharingSelectionList(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B08, &qword_264791CA0);
  result = sub_2647852F4();
  strcpy(a2, "location.fill");
  *(a2 + 14) = -4864;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  *(a2 + 48) = v16 == 2;
  return result;
}

void *sub_264612BC4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_264783B94();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_264785704();
  MEMORY[0x28223BE20](v4 - 8);
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  sub_264783B84();
  v8 = sub_264785754();
  v10 = v9;
  sub_264785694();
  v11 = [v6 bundleForClass_];
  sub_264783B84();
  v12 = sub_264785754();
  v14 = v13;
  type metadata accessor for DataSharingSelectionList(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B08, &qword_264791CA0);
  result = sub_2647852F4();
  *a2 = 0x6574756F72;
  *(a2 + 8) = 0xE500000000000000;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  *(a2 + 48) = v16 == 1;
  return result;
}

uint64_t sub_264612DF8(uint64_t a1, char a2, char a3)
{
  v5 = type metadata accessor for DataSharingSelectionList(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B08, &qword_264791CA0);
  sub_264785304();
  v6 = [objc_opt_self() setShareAllLocations_];
  return (*(a1 + *(v5 + 24)))(v6);
}

uint64_t sub_264612EB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{

  v15 = sub_264785294();
  v14 = sub_264784CD4();
  KeyPath = swift_getKeyPath();
  v13 = sub_264785174();
  v16 = sub_264784714();
  v20 = 1;
  sub_264613108(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v22, __src, 0x120uLL);
  sub_26460CCE8(__dst, v17, &qword_27FF75A88, &qword_2647888E0);
  sub_26460CD50(v22, &qword_27FF75A88, &qword_2647888E0);
  memcpy(&v19[7], __dst, 0x120uLL);
  v5 = v20;
  v6 = *(a1 + 48);
  v12 = sub_264785274();
  v7 = sub_264784D34();
  v8 = swift_getKeyPath();
  if (v6)
  {
    v9 = sub_264785174();
  }

  else
  {
    v9 = sub_264785184();
  }

  v10 = v9;
  v17[0] = v16;
  v17[1] = 0;
  LOBYTE(v17[2]) = v5;
  memcpy(&v17[2] + 1, v19, 0x127uLL);
  *a2 = v15;
  a2[1] = KeyPath;
  a2[2] = v14;
  a2[3] = v13;
  memcpy(a2 + 4, v17, 0x138uLL);
  a2[43] = v12;
  a2[44] = v8;
  a2[45] = v7;
  a2[46] = v10;

  sub_26460CCE8(v17, __src, &qword_27FF75A90, &qword_2647888E8);
  *__src = v16;
  *&__src[8] = 0;
  __src[16] = v5;
  memcpy(&__src[17], v19, 0x127uLL);
  sub_26460CD50(__src, &qword_27FF75A90, &qword_2647888E8);
}

uint64_t sub_264613108@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v3 = *(a1 + 24);
  v72 = *(a1 + 16);
  v73 = v3;
  sub_264613FC4();

  v4 = sub_264784E44();
  v6 = v5;
  v8 = v7;
  v9 = sub_264784E14();
  v31 = v10;
  v32 = v9;
  LOBYTE(v3) = v11;
  v33 = v12;
  sub_26460ECC4(v4, v6, v8 & 1);

  sub_264785514();
  sub_264784314();
  v30 = v3 & 1;
  v94 = v3 & 1;
  v13 = *(v2 + 40);
  v72 = *(v2 + 32);
  v73 = v13;

  v14 = sub_264784E44();
  v16 = v15;
  LOBYTE(v2) = v17;
  LODWORD(v72) = sub_2647849C4();
  v18 = sub_264784DF4();
  v20 = v19;
  v22 = v21;
  sub_26460ECC4(v14, v16, v2 & 1);

  sub_264784D74();
  v23 = sub_264784E24();
  v25 = v24;
  LOBYTE(v16) = v26;
  v29 = v27;

  sub_26460ECC4(v18, v20, v22 & 1);

  sub_264785514();
  sub_264784314();
  *&v43 = v32;
  *(&v43 + 1) = v31;
  LOBYTE(v44) = v30;
  *(&v44 + 1) = *v93;
  DWORD1(v44) = *&v93[3];
  *(&v44 + 1) = v33;
  v49 = v90;
  v50 = v91;
  v51 = v92;
  v45 = v86;
  v46 = v87;
  v47 = v88;
  v48 = v89;
  __src[6] = v90;
  __src[7] = v91;
  __src[2] = v86;
  __src[3] = v87;
  __src[4] = v88;
  __src[5] = v89;
  __src[0] = v43;
  __src[1] = v44;
  *&v52 = v23;
  *(&v52 + 1) = v25;
  LOBYTE(v53) = v16 & 1;
  *(&v53 + 1) = *v84;
  DWORD1(v53) = *&v84[3];
  *(&v53 + 1) = v29;
  v58 = v40;
  v59 = v41;
  v60 = v42;
  v54 = v36;
  v55 = v37;
  v56 = v38;
  v57 = v39;
  __src[12] = v37;
  __src[13] = v38;
  __src[10] = v53;
  __src[11] = v36;
  __src[14] = v39;
  __src[15] = v40;
  __src[16] = v41;
  __src[17] = v42;
  v85 = v16 & 1;
  __src[8] = v92;
  __src[9] = v52;
  memcpy(a2, __src, 0x120uLL);
  v61[0] = v23;
  v61[1] = v25;
  v62 = v16 & 1;
  *v63 = *v84;
  *&v63[3] = *&v84[3];
  v64 = v29;
  v69 = v40;
  v70 = v41;
  v71 = v42;
  v65 = v36;
  v66 = v37;
  v67 = v38;
  v68 = v39;
  sub_26460CCE8(&v43, &v72, &qword_27FF75AA0, &qword_2647888F0);
  sub_26460CCE8(&v52, &v72, &qword_27FF75AA0, &qword_2647888F0);
  sub_26460CD50(v61, &qword_27FF75AA0, &qword_2647888F0);
  v72 = v32;
  v73 = v31;
  v74 = v30;
  *v75 = *v93;
  *&v75[3] = *&v93[3];
  v76 = v33;
  v81 = v90;
  v82 = v91;
  v83 = v92;
  v77 = v86;
  v78 = v87;
  v79 = v88;
  v80 = v89;
  return sub_26460CD50(&v72, &qword_27FF75AA0, &qword_2647888F0);
}

void *sub_264613510@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v12[0] = *v2;
  v12[1] = v4;
  v12[2] = *(v2 + 32);
  v13 = *(v2 + 48);
  v5 = sub_2647845C4();
  v11 = 1;
  sub_264612EB0(v12, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v15, __src, sizeof(v15));
  sub_26460CCE8(__dst, v8, &qword_27FF75A80, &qword_2647888A8);
  sub_26460CD50(v15, &qword_27FF75A80, &qword_2647888A8);
  memcpy(&v10[7], __dst, 0x178uLL);
  v6 = v11;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  return memcpy((a2 + 17), v10, 0x17FuLL);
}

uint64_t sub_26461364C(uint64_t a1)
{
  v2 = sub_264783F74();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2647843B4();
}

uint64_t type metadata accessor for DataSharingSelectionList(uint64_t a1)
{
  result = qword_27FF75A60;
  if (!qword_27FF75A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2646137B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75AA8, &qword_2647888F8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_26460CCE8(a1, &v6 - v3, &qword_27FF75AA8, &qword_2647888F8);
  return MEMORY[0x26673E1A0](v4);
}

unint64_t sub_264613860()
{
  result = qword_27FF75A30;
  if (!qword_27FF75A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF759F8, &qword_264788730);
    sub_2646138EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75A30);
  }

  return result;
}

unint64_t sub_2646138EC()
{
  result = qword_27FF75A38;
  if (!qword_27FF75A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75A20, &qword_264788778);
    sub_2646139A4();
    sub_26460CDF0(&qword_27FF75A58, &qword_27FF75A28, &qword_264788780, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75A38);
  }

  return result;
}

unint64_t sub_2646139A4()
{
  result = qword_27FF75A40;
  if (!qword_27FF75A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75A18, &qword_264788740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF759F0, &qword_264788728);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF759E8, &qword_264788720);
    sub_264784954();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF759E0, &qword_264788718);
    sub_26460CDF0(&qword_27FF75A10, &qword_27FF759E0, &qword_264788718, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26460CDF0(&qword_27FF75A48, &qword_27FF75A50, &qword_264788788, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75A40);
  }

  return result;
}

uint64_t sub_264613B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75960, &unk_264790C60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_264613C78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75960, &unk_264790C60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_264613D3C(uint64_t a1)
{
  sub_26460EA3C(319);
  if (v1 <= 0x3F)
  {
    sub_264613DD8();
    if (v2 <= 0x3F)
    {
      sub_264613E28();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_264613DD8()
{
  if (!qword_27FF75A70)
  {
    v0 = sub_264785324();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF75A70);
    }
  }
}

unint64_t sub_264613E28()
{
  result = qword_27FF75A78;
  if (!qword_27FF75A78)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27FF75A78);
  }

  return result;
}

uint64_t sub_264613E78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF759F8, &qword_264788730);
  sub_264613860();
  return swift_getOpaqueTypeConformance2();
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_264613EF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_264613F40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_264613FC4()
{
  result = qword_27FF75A98;
  if (!qword_27FF75A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75A98);
  }

  return result;
}

unint64_t sub_264614020()
{
  result = qword_27FF75AD8;
  if (!qword_27FF75AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75AD8);
  }

  return result;
}

uint64_t sub_264614074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSharingSelectionList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2646140DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSharingSelectionList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26461414C()
{
  result = qword_27FF75AE0;
  if (!qword_27FF75AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75AB8, &qword_264788908);
    sub_264614204();
    sub_26460CDF0(&qword_27FF75AF0, &qword_27FF75AF8, &qword_264788928, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75AE0);
  }

  return result;
}

unint64_t sub_264614204()
{
  result = qword_27FF75AE8;
  if (!qword_27FF75AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75AB0, &qword_264788900);
    sub_264614020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75AE8);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(type metadata accessor for DataSharingSelectionList(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_264783F74();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_264614450(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75AD0, &qword_264788920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_264614574(void *a1, uint64_t *a2)
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

void *sub_2646145A4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_2646145D0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_2646146C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void *sub_264614718()
{
  v0 = [objc_opt_self() defaultManager];
  type metadata accessor for SessionViewModel(0);
  v1 = swift_allocObject();
  result = SessionViewModel.init(sessionManager:)(v0);
  off_27FF75B20 = v1;
  return result;
}

uint64_t static SessionViewModel.shared.getter()
{
  if (qword_27FF74FC0 != -1)
  {
    swift_once();
  }
}

void sub_2646147DC()
{
  MKDefaultCoordinateRegion();
  *&xmmword_27FF80718 = v0;
  *(&xmmword_27FF80718 + 1) = v1;
  qword_27FF80728 = v2;
  unk_27FF80730 = v3;
}

void *SessionViewModel.selfContact.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void SessionViewModel.selfContact.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t SessionViewModel.mostLikelySessionDestinationSource.getter()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_mostLikelySessionDestinationSource;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SessionViewModel.mostLikelySessionDestinationSource.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_mostLikelySessionDestinationSource;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SessionViewModel.sessionStartEntryType.getter()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SessionViewModel.sessionStartEntryType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_264614A6C();
}

uint64_t sub_264614A6C()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  swift_retain_n();
  v6 = sub_264783E14();
  v7 = sub_2647859F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315650;
    v16 = v1;

    v10 = sub_264785764();
    v12 = sub_2646DF234(v10, v11, &v17);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264793F40, &v17);
    *(v8 + 22) = 2048;
    v13 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType;
    swift_beginAccess();
    v14 = *(v1 + v13);

    *(v8 + 24) = v14;

    _os_log_impl(&dword_264605000, v6, v7, "%s,%s: Session start entry type changed to %lu", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v9, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t (*SessionViewModel.sessionStartEntryType.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_264614D44;
}

uint64_t sub_264614D5C()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v5 = sub_264783E14();
  v6 = sub_2647859F4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v0;
    v17 = v8;
    *v7 = 136315650;

    v9 = sub_264785764();
    v11 = sub_2646DF234(v9, v10, &v17);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_2646DF234(0xD000000000000013, 0x8000000264793F60, &v17);
    *(v7 + 22) = 2080;
    LOBYTE(v16) = *(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCellularActivated);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EC8, &qword_264789870);
    v12 = sub_264785B34();
    v14 = sub_2646DF234(v12, v13, &v17);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_264605000, v5, v6, "%s,%s: Cellular enabled changed to %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v8, -1, -1);
    MEMORY[0x266740650](v7, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t SessionViewModel.__allocating_init(sessionManager:)(void *a1)
{
  v2 = swift_allocObject();
  SessionViewModel.init(sessionManager:)(a1);
  return v2;
}

void *SessionViewModel.init(sessionManager:)(void *a1)
{
  v2 = v1;
  v143 = a1;
  v114[1] = *v1;
  v3 = sub_264785594();
  v155 = *(v3 - 8);
  v156 = v3;
  MEMORY[0x28223BE20](v3);
  v153 = v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_2647855C4();
  v152 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v151 = v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2647855A4();
  v149 = *(v6 - 8);
  v150 = v6;
  MEMORY[0x28223BE20](v6);
  v148 = v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264783AF4();
  v160 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v147 = v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = v10;
  MEMORY[0x28223BE20](v9);
  v159 = v114 - v11;
  v145 = sub_264783E24();
  v144 = *(v145 - 8);
  v12 = MEMORY[0x28223BE20](v145);
  v157 = v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v114 - v14;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B28, &unk_264788A00);
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = v114 - v16;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v137 = v114 - v17;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B38, &qword_264788A10);
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = v114 - v18;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B40, &qword_264788A18);
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v131 = v114 - v19;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = v114 - v20;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  v21 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v23 = v114 - v22;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B58, &unk_264788A30);
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v124 = v114 - v24;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v121 = v114 - v25;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B68, &qword_264788A40);
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v118 = v114 - v26;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B70, &qword_264788A48);
  v27 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v29 = v114 - v28;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B78, &qword_264788A50);
  v30 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v32 = v114 - v31;
  v2[3] = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  v2[4] = [objc_allocWithZone(MEMORY[0x277D4AA90]) init];
  v33 = MEMORY[0x277D84FA0];
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_264785C14())
    {
      v33 = sub_26476D298(MEMORY[0x277D84F90]);
    }

    else
    {
      v33 = MEMORY[0x277D84FA0];
    }
  }

  v127 = v15;
  v2[5] = v33;
  v2[6] = 0;
  v34 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsID;
  v35 = sub_264783B64();
  (*(*(v35 - 8) + 56))(v2 + v34, 1, 1, v35);
  *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_mostLikelySessionDestinationSource) = 0;
  v36 = v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchInitiatorEligibilityLatency;
  *v36 = 0;
  v36[8] = 1;
  v37 = v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchReceiverEligibilityLatency;
  *v37 = 0;
  v37[8] = 1;
  v38 = v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesLatency;
  *v38 = 0;
  v38[8] = 1;
  *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesStatus) = 0;
  v39 = v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesLatency;
  *v39 = 0;
  v39[8] = 1;
  *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesStatus) = 0;
  v40 = v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsLatency;
  *v40 = 0;
  v40[8] = 1;
  *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsStatus) = 0;
  v41 = *(v160 + 56);
  v41(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchInitiatorEligibilityStartTime, 1, 1, v8);
  v41(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchReceiverEligibilityStartTime, 1, 1, v8);
  v41(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesStartTime, 1, 1, v8);
  v41(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesStartTime, 1, 1, v8);
  v41(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsStartTime, 1, 1, v8);
  v158 = v8;
  v41(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_lastSuggestionConversionEventTime, 1, 1, v8);
  *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType) = 0;
  *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCellularActivated) = 2;
  *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isPairedDeviceNearby) = 2;
  *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_suggestedSessionConfiguration) = 0;
  *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_workoutSessionConfiguration) = 0;
  v42 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__localSessionState;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C10, &qword_264788A58);
  sub_264783E94();
  (*(v30 + 32))(v2 + v42, v32, v115);
  v43 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__sessionState;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C20, &qword_264788A60);
  sub_264783E94();
  (*(v27 + 32))(v2 + v43, v29, v117);
  v44 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__recipientHandles;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C30, &qword_264788A68);
  v45 = v118;
  sub_264783E94();
  (*(v119 + 32))(v2 + v44, v45, v120);
  v46 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__groupID;
  aBlock = 0;
  v162 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C40, &qword_264788A70);
  v47 = v121;
  sub_264783E94();
  (*(v122 + 32))(v2 + v46, v47, v123);
  v48 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__sessionInitializationInfo;
  aBlock = 0;
  v162 = 0;
  v163 = 0;
  v49 = v124;
  sub_264783E94();
  (*(v125 + 32))(v2 + v48, v49, v126);
  v50 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__isInitializing;
  LOBYTE(aBlock) = 0;
  sub_264783E94();
  v51 = *(v21 + 32);
  v52 = v116;
  v51(v2 + v50, v23, v116);
  v53 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__refreshingEligibility;
  LOBYTE(aBlock) = 0;
  sub_264783E94();
  v51(v2 + v53, v23, v52);
  v54 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__refreshingInitiatorEligibility;
  LOBYTE(aBlock) = 0;
  sub_264783E94();
  v51(v2 + v54, v23, v52);
  v55 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__refreshingReceiverEligibility;
  LOBYTE(aBlock) = 0;
  sub_264783E94();
  v51(v2 + v55, v23, v52);
  v56 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__showContactPicker;
  LOBYTE(aBlock) = 0;
  sub_264783E94();
  v51(v2 + v56, v23, v52);
  *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCancelling) = 0;
  v57 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__endLocation;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C80, &qword_264788A78);
  v58 = v128;
  sub_264783E94();
  (*(v129 + 32))(v2 + v57, v58, v130);
  v59 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__candidateSessionDestinations;
  aBlock = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C90, &qword_264788A80);
  v60 = v131;
  sub_264783E94();
  (*(v132 + 32))(v2 + v59, v60, v133);
  v61 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__mostLikelyReceiverHandles;
  aBlock = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CA0, &qword_264788A88);
  v62 = v134;
  sub_264783E94();
  (*(v135 + 32))(v2 + v61, v62, v136);
  v63 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__expectedTravelTime;
  aBlock = 0xBFF0000000000000;
  v64 = v137;
  sub_264783E94();
  (*(v138 + 32))(v2 + v63, v64, v139);
  v65 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__isActiveDevice;
  LOBYTE(aBlock) = 0;
  sub_264783E94();
  v51(v2 + v65, v23, v52);
  v66 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__isProcessingRemoteCommand;
  LOBYTE(aBlock) = 0;
  sub_264783E94();
  v51(v2 + v66, v23, v52);
  v67 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__userSessionConfiguration;
  aBlock = sub_26471B978();
  type metadata accessor for UserSessionConfiguration(0);
  v68 = v140;
  sub_264783E94();
  (*(v141 + 32))(v2 + v67, v68, v142);
  v69 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__fetchedMostLikelySessionDestinations;
  LOBYTE(aBlock) = 0;
  sub_264783E94();
  v51(v2 + v69, v23, v52);
  v70 = v127;
  sub_264783DF4();
  v71 = sub_264783E14();
  v72 = sub_2647859F4();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_264605000, v71, v72, "Initiating SessionViewModel", v73, 2u);
    MEMORY[0x266740650](v73, -1, -1);
  }

  v74 = v144[1];
  v75 = v145;
  v74(v70, v145);
  v76 = v143;
  v2[2] = v143;
  v77 = objc_opt_self();
  v78 = v76;
  v79 = [v77 currentDevice];
  v80 = [v79 userInterfaceIdiom];

  swift_beginAccess();
  v167 = v80;
  type metadata accessor for UIUserInterfaceIdiom(0);
  sub_264783E94();
  swift_endAccess();
  v81 = swift_allocObject();
  swift_weakInit();
  v165 = sub_264654F08;
  v166 = v81;
  aBlock = MEMORY[0x277D85DD0];
  v162 = 1107296256;
  v163 = sub_26461910C;
  v164 = &block_descriptor;
  v82 = _Block_copy(&aBlock);

  v144 = v78;
  [v78 startMonitoringSessionStateWithHandler_];
  _Block_release(v82);
  v83 = [objc_opt_self() now];
  sub_264783AC4();

  v84 = v157;
  sub_264783DF4();

  v85 = sub_264783E14();
  v86 = sub_2647859F4();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    aBlock = v88;
    *v87 = 136315394;
    v167 = v2;

    v89 = sub_264785764();
    v91 = sub_2646DF234(v89, v90, &aBlock);

    *(v87 + 4) = v91;
    *(v87 + 12) = 2080;
    *(v87 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264793790, &aBlock);
    _os_log_impl(&dword_264605000, v85, v86, "%s, %s: Calling fetchCurrentSessionState", v87, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v88, -1, -1);
    MEMORY[0x266740650](v87, -1, -1);

    v92 = v157;
  }

  else
  {

    v92 = v84;
  }

  v74(v92, v75);
  v93 = v158;
  v94 = v160;
  v95 = swift_allocObject();
  swift_weakInit();
  v96 = v147;
  (*(v94 + 16))(v147, v159, v93);
  v97 = (*(v94 + 80) + 24) & ~*(v94 + 80);
  v98 = swift_allocObject();
  *(v98 + 16) = v95;
  (*(v94 + 32))(v98 + v97, v96, v93);
  v165 = sub_264654FEC;
  v166 = v98;
  aBlock = MEMORY[0x277D85DD0];
  v162 = 1107296256;
  v163 = sub_26461910C;
  v164 = &block_descriptor_7;
  v99 = _Block_copy(&aBlock);

  v100 = v144;
  [v144 fetchCurrentSessionStateWithHandler_];
  _Block_release(v99);
  v101 = swift_allocObject();
  swift_weakInit();
  v165 = sub_264655078;
  v166 = v101;
  aBlock = MEMORY[0x277D85DD0];
  v162 = 1107296256;
  v163 = sub_26465A0C0;
  v164 = &block_descriptor_11;
  v102 = _Block_copy(&aBlock);

  [v100 startMonitoringLocalSessionStateWithHandler_];
  _Block_release(v102);
  v103 = swift_allocObject();
  swift_weakInit();

  v165 = sub_2646550C0;
  v166 = v103;
  aBlock = MEMORY[0x277D85DD0];
  v162 = 1107296256;
  v163 = sub_26465A0C0;
  v164 = &block_descriptor_15;
  v104 = _Block_copy(&aBlock);

  [v100 fetchCurrentLocalSessionStateWithHandler_];
  _Block_release(v104);
  [v2[3] setAllowedUnits_];
  [v2[3] setUnitsStyle_];
  [v2[3] setZeroFormattingBehavior_];
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v106 = v149;
  v105 = v150;
  v107 = v148;
  (*(v149 + 104))(v148, *MEMORY[0x277D851C0], v150);
  v108 = sub_264785A64();
  (*(v106 + 8))(v107, v105);
  v165 = sub_264655108;
  v166 = v2;
  aBlock = MEMORY[0x277D85DD0];
  v162 = 1107296256;
  v163 = sub_264659F60;
  v164 = &block_descriptor_18;
  v109 = _Block_copy(&aBlock);

  v110 = v151;
  sub_2647855B4();
  v167 = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
  v111 = v153;
  v112 = v156;
  sub_264785BD4();
  MEMORY[0x26673F780](0, v110, v111, v109);
  _Block_release(v109);

  (*(v155 + 8))(v111, v112);
  (*(v152 + 8))(v110, v154);
  (*(v160 + 8))(v159, v158);

  return v2;
}

uint64_t SessionViewModel.deviceClass.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  return sub_2646278E8();
}

uint64_t sub_2646169EC(void *a1, int a2, void *a3, uint64_t a4)
{
  v81 = a2;
  v83 = a1;
  v80 = sub_264785594();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v77 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_2647855C4();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264783E24();
  v84 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v69 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v69 - v14;
  sub_264783DF4();

  v16 = sub_264783E14();
  v17 = sub_2647859F4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v82 = v13;
    v19 = v18;
    v74 = swift_slowAlloc();
    aBlock[0] = v74;
    *v19 = 136315394;
    swift_beginAccess();
    aBlock[6] = swift_weakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED0, &qword_264789878);
    v20 = sub_264785764();
    v22 = sub_2646DF234(v20, v21, aBlock);
    v23 = v84;

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264793790, aBlock);
    _os_log_impl(&dword_264605000, v16, v17, "%s,%s: startMonitoringSessionState starting", v19, 0x16u);
    v24 = v74;
    swift_arrayDestroy();
    MEMORY[0x266740650](v24, -1, -1);
    v25 = v19;
    v13 = v82;
    MEMORY[0x266740650](v25, -1, -1);

    v26 = v23;
  }

  else
  {

    v26 = v84;
  }

  v27 = *(v26 + 8);
  v27(v15, v7);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v29 = result;
    sub_264783DF4();

    v30 = v83;
    v31 = v83;
    v32 = a3;
    v33 = v13;
    v34 = sub_264783E14();
    v35 = sub_2647859F4();

    v36 = os_log_type_enabled(v34, v35);
    v72 = v31;
    if (v36)
    {
      v82 = v33;
      v74 = v27;
      v70 = v10;
      v71 = v7;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v85 = v29;
      aBlock[0] = v69;
      *v37 = 136316163;
      type metadata accessor for SessionViewModel(0);

      v39 = sub_264785764();
      v41 = sub_2646DF234(v39, v40, aBlock);

      *(v37 + 4) = v41;
      v30 = v83;
      v73 = a3;
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264793790, aBlock);
      *(v37 + 22) = 2117;
      *(v37 + 24) = v31;
      *v38 = v30;
      *(v37 + 32) = 1024;
      *(v37 + 34) = v81 & 1;
      *(v37 + 38) = 2080;
      if (v73)
      {
        swift_getErrorValue();
        v42 = v31;
        v30 = v83;
        v43 = sub_264785EF4();
        v45 = v44;
      }

      else
      {
        v59 = v31;
        v45 = 0xE300000000000000;
        v43 = 7104878;
      }

      v60 = sub_2646DF234(v43, v45, aBlock);

      *(v37 + 40) = v60;
      _os_log_impl(&dword_264605000, v34, v35, "%s,%s: startMonitoringSessionState update, state, %{sensitive}@, isActiveDevice, %{BOOL}d, error, %s", v37, 0x30u);
      sub_26460CD50(v38, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v38, -1, -1);
      v61 = v69;
      swift_arrayDestroy();
      MEMORY[0x266740650](v61, -1, -1);
      MEMORY[0x266740650](v37, -1, -1);

      v7 = v71;
      v27 = v74;
      v74(v82, v71);
      a3 = v73;
      v10 = v70;
      if (!v73)
      {
        goto LABEL_14;
      }
    }

    else
    {

      v27(v33, v7);
      if (!a3)
      {
LABEL_14:
        sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
        v62 = sub_264785A44();
        v63 = swift_allocObject();
        *(v63 + 16) = v29;
        *(v63 + 24) = v30;
        *(v63 + 32) = v81 & 1;
        aBlock[4] = sub_264659E14;
        aBlock[5] = v63;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_264659F60;
        aBlock[3] = &block_descriptor_651;
        v64 = _Block_copy(aBlock);

        v65 = v72;

        v66 = v75;
        sub_2647855B4();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
        sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
        v67 = v77;
        v68 = v80;
        sub_264785BD4();
        MEMORY[0x26673F780](0, v66, v67, v64);
        _Block_release(v64);

        (*(v79 + 8))(v67, v68);
        return (*(v76 + 8))(v66, v78);
      }
    }

    v46 = a3;
    sub_264783DF4();

    v47 = a3;
    v48 = sub_264783E14();
    v49 = sub_2647859D4();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v74 = v27;
      v52 = v51;
      v85 = v29;
      aBlock[0] = v51;
      *v50 = 136315650;
      type metadata accessor for SessionViewModel(0);

      v53 = sub_264785764();
      v55 = sub_2646DF234(v53, v54, aBlock);

      *(v50 + 4) = v55;
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264793790, aBlock);
      *(v50 + 22) = 2080;
      swift_getErrorValue();
      v56 = sub_264785EF4();
      v58 = sub_2646DF234(v56, v57, aBlock);

      *(v50 + 24) = v58;
      _os_log_impl(&dword_264605000, v48, v49, "%s, %s: startMonitoringSessionState, error, %s", v50, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v52, -1, -1);
      MEMORY[0x266740650](v50, -1, -1);

      return (v74)(v10, v7);
    }

    else
    {

      return (v27)(v10, v7);
    }
  }

  return result;
}

uint64_t sub_2646174E8(uint64_t a1, char *a2, uint64_t a3)
{
  sub_264617568(a2, a3);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  return sub_264628950();
}

void sub_264617568(char *a1, int a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  MEMORY[0x28223BE20](v7 - 8);
  v215 = &v212 - v8;
  v233 = sub_264783B64();
  v226 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v216 = &v212 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED8, &qword_264789880);
  MEMORY[0x28223BE20](v223);
  v227 = &v212 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v220 = &v212 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v225 = &v212 - v15;
  MEMORY[0x28223BE20](v14);
  v224 = &v212 - v16;
  v17 = sub_264783E24();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v230 = &v212 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v218 = &v212 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v217 = &v212 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v219 = &v212 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v221 = &v212 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v222 = &v212 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v228 = &v212 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v212 - v33;
  sub_264783DF4();
  v35 = a1;

  v36 = sub_264783E14();
  v37 = sub_2647859F4();

  v38 = os_log_type_enabled(v36, v37);
  v232 = a2;
  v235 = v18;
  v231 = v6;
  if (v38)
  {
    LODWORD(v214) = v37;
    v229 = v17;
    v234 = a1;
    v39 = swift_slowAlloc();
    v213 = swift_slowAlloc();
    v239[0] = v213;
    *v39 = 136316675;
    v237 = v3;

    v40 = sub_264785764();
    v42 = sub_2646DF234(v40, v41, v239);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_2646DF234(0xD000000000000029, 0x8000000264794620, v239);
    *(v39 + 22) = 1024;
    *(v39 + 24) = a2 & 1;
    *(v39 + 28) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    v43 = v3;
    sub_264783ED4(&v237);

    v44 = v237;
    if (v237)
    {
      v45 = [v237 sessionState];
    }

    else
    {
      v45 = 0;
    }

    v237 = v45;
    v238 = v44 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D90, &qword_264789368);
    v47 = sub_264785764();
    v49 = sub_2646DF234(v47, v48, v239);

    *(v39 + 30) = v49;
    *(v39 + 38) = 2080;
    v50 = v234;
    if (v234)
    {
      v51 = [v35 sessionState];
    }

    else
    {
      v51 = 0;
    }

    v237 = v51;
    v238 = v50 == 0;
    v52 = sub_264785764();
    v54 = sub_2646DF234(v52, v53, v239);

    *(v39 + 40) = v54;
    *(v39 + 48) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v237);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C20, &qword_264788A60);
    v55 = sub_264785764();
    v57 = sub_2646DF234(v55, v56, v239);

    *(v39 + 50) = v57;
    *(v39 + 58) = 2085;
    a1 = v234;
    v237 = v234;
    v58 = v35;
    v59 = sub_264785764();
    v61 = sub_2646DF234(v59, v60, v239);

    *(v39 + 60) = v61;
    _os_log_impl(&dword_264605000, v36, v214, "%s, %s: isActiveDevice, %{BOOL}d, (previous) state.sessionState, %s, --> (current/incoming) state.sessionState, %s, \n (previous) state, %{sensitive}s, (current/incoming) state, %{sensitive}s", v39, 0x44u);
    v62 = v213;
    swift_arrayDestroy();
    MEMORY[0x266740650](v62, -1, -1);
    MEMORY[0x266740650](v39, -1, -1);

    v46 = *(v235 + 8);
    v17 = v229;
    v46(v34, v229);
  }

  else
  {
    v43 = v3;

    v46 = *(v18 + 8);
    v46(v34, v17);
  }

  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v63 = v35;
    v64 = v43;
    sub_264783ED4(&v237);

    v65 = v237;
    if (v237)
    {
      sub_264659B70(0, &qword_27FF75F18, 0x277D4ABB0);
      v66 = v63;
      v67 = sub_264785AE4();

      v68 = v233;
      if (v67)
      {

        v69 = v228;
        sub_264783DF4();

        v70 = v66;
        v71 = sub_264783E14();
        v72 = sub_2647859F4();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = a1;
          v75 = v64;
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v229 = v17;
          v78 = v77;
          v237 = v77;
          *v73 = 136315651;
          v239[0] = v75;

          v79 = sub_264785764();
          v81 = v46;
          v82 = sub_2646DF234(v79, v80, &v237);

          *(v73 + 4) = v82;
          *(v73 + 12) = 2080;
          *(v73 + 14) = sub_2646DF234(0xD000000000000029, 0x8000000264794620, &v237);
          *(v73 + 22) = 2117;
          *(v73 + 24) = v70;
          *v76 = v74;
          v83 = v70;
          _os_log_impl(&dword_264605000, v71, v72, "%s,%s: sessionState update ignored, %{sensitive}@", v73, 0x20u);
          sub_26460CD50(v76, &qword_27FF779D0, &qword_26478A9A0);
          MEMORY[0x266740650](v76, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x266740650](v78, -1, -1);
          MEMORY[0x266740650](v73, -1, -1);

          v81(v228, v229);
        }

        else
        {

          v46(v69, v17);
        }

        return;
      }
    }

    else
    {
      v95 = v63;
      v68 = v233;
    }

    v96 = [v63 sessionState];
    if (v96 <= 0xE)
    {
      if (((1 << v96) & 0x5203) != 0)
      {
        goto LABEL_64;
      }

      if (((1 << v96) & 0x194) != 0)
      {
        v234 = a1;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_264783ED4(&v237);

        v97 = v237;
        v98 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
        swift_beginAccess();
        v99 = v224;
        sub_26460CCE8(&v97[v98], v224, &qword_27FF75CE8, &unk_264788B70);

        v100 = [v63 configuration];
        v214 = v46;
        v230 = v63;
        if (v100)
        {
          v101 = v100;
          v102 = [v100 sessionID];

          v103 = v225;
          sub_264783B44();

          v104 = 0;
        }

        else
        {
          v104 = 1;
          v103 = v225;
        }

        v105 = v226;
        (*(v226 + 56))(v103, v104, 1, v68);
        v106 = *(v223 + 48);
        v107 = v227;
        sub_26460CCE8(v99, v227, &qword_27FF75CE8, &unk_264788B70);
        v108 = v107;
        sub_26460CCE8(v103, v107 + v106, &qword_27FF75CE8, &unk_264788B70);
        v109 = v105;
        v110 = v103;
        v111 = *(v109 + 48);
        if (v111(v108, 1, v68) == 1)
        {
          sub_26460CD50(v110, &qword_27FF75CE8, &unk_264788B70);
          v112 = v227;
          sub_26460CD50(v99, &qword_27FF75CE8, &unk_264788B70);
          v113 = v111(v112 + v106, 1, v68);
          v114 = v230;
          if (v113 == 1)
          {
            sub_26460CD50(v112, &qword_27FF75CE8, &unk_264788B70);
            v115 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
            goto LABEL_37;
          }
        }

        else
        {
          v116 = v220;
          sub_26460CCE8(v108, v220, &qword_27FF75CE8, &unk_264788B70);
          if (v111(v108 + v106, 1, v68) != 1)
          {
            v117 = v116;
            v118 = v226;
            v119 = v216;
            (*(v226 + 32))(v216, v108 + v106, v68);
            sub_264655E3C(&qword_27FF78040, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
            v120 = v108;
            v121 = sub_264785684();
            v122 = *(v118 + 8);
            v122(v119, v68);
            sub_26460CD50(v225, &qword_27FF75CE8, &unk_264788B70);
            sub_26460CD50(v224, &qword_27FF75CE8, &unk_264788B70);
            v122(v117, v68);
            sub_26460CD50(v120, &qword_27FF75CE8, &unk_264788B70);
            v114 = v230;
            v115 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
            if (v121)
            {
LABEL_37:
              swift_getKeyPath();
              swift_getKeyPath();
              sub_264783ED4(v239);

              swift_getKeyPath();
              swift_getKeyPath();
              sub_264783ED4(v239);

              v123 = v239[0];
              if (v239[0])
              {
                if (SessionViewModel.sessionType.getter() == 2)
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  v239[0] = v123;

                  v124 = v123;
                  sub_264783EE4();
                  sub_26462513C();
                }

                else
                {
                }
              }
            }

LABEL_46:
            v152 = [v114 v115[91]];
            if (!v152)
            {
              v170 = v219;
              sub_264783DF4();

              v171 = v114;
              v172 = v114;
              v173 = sub_264783E14();
              v174 = sub_2647859D4();

              if (os_log_type_enabled(v173, v174))
              {
                v175 = swift_slowAlloc();
                v176 = swift_slowAlloc();
                v239[0] = v176;
                *v175 = 136315651;
                v236 = v64;

                v177 = sub_264785764();
                v229 = v17;
                v179 = sub_2646DF234(v177, v178, v239);

                *(v175 + 4) = v179;
                *(v175 + 12) = 2080;
                *(v175 + 14) = sub_2646DF234(0xD000000000000029, 0x8000000264794620, v239);
                *(v175 + 22) = 2085;
                v180 = [v172 debugDescription];
                v181 = sub_264785724();
                v183 = v182;

                v184 = sub_2646DF234(v181, v183, v239);

                *(v175 + 24) = v184;
                _os_log_impl(&dword_264605000, v173, v174, "%s, %s: Unable to resolve map item - found nil configuration in sessionState: %{sensitive}s", v175, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x266740650](v176, -1, -1);
                MEMORY[0x266740650](v175, -1, -1);

                v185 = v170;
                v186 = v229;
              }

              else
              {

                v185 = v170;
                v186 = v17;
              }

              v214(v185, v186);
              a1 = v234;
              v63 = v171;
              goto LABEL_64;
            }

            v153 = v152;
            v154 = v222;
            sub_264783DF4();

            v155 = v153;
            v156 = sub_264783E14();
            v157 = sub_2647859F4();

            if (os_log_type_enabled(v156, v157))
            {
              v158 = swift_slowAlloc();
              v159 = v64;
              v160 = swift_slowAlloc();
              v161 = swift_slowAlloc();
              v229 = v17;
              v162 = v161;
              v239[0] = v161;
              *v158 = 136315651;
              v236 = v159;

              v163 = sub_264785764();
              v165 = sub_2646DF234(v163, v164, v239);

              *(v158 + 4) = v165;
              *(v158 + 12) = 2080;
              *(v158 + 14) = sub_2646DF234(0xD000000000000029, 0x8000000264794620, v239);
              *(v158 + 22) = 2117;
              *(v158 + 24) = v155;
              *v160 = v153;
              v166 = v155;
              _os_log_impl(&dword_264605000, v156, v157, "%s,%s: configuration, %{sensitive}@", v158, 0x20u);
              sub_26460CD50(v160, &qword_27FF779D0, &qword_26478A9A0);
              v167 = v160;
              v64 = v159;
              MEMORY[0x266740650](v167, -1, -1);
              swift_arrayDestroy();
              v168 = v162;
              v17 = v229;
              MEMORY[0x266740650](v168, -1, -1);
              MEMORY[0x266740650](v158, -1, -1);

              v169 = v222;
            }

            else
            {

              v169 = v154;
            }

            v187 = v214;
            v214(v169, v17);
            a1 = v234;
            v188 = v221;
            v189 = [v155 sessionType];
            v63 = v230;
            if (v189 != 2)
            {

              goto LABEL_64;
            }

            v190 = [v155 destination];
            if (v190)
            {
              v191 = v190;
              v192 = [v190 destinationMapItem];

              v193 = sub_264783A14();
              v195 = v194;

              sub_26462BC54(v193, v195);
              v196 = v195;
              v63 = v230;
              sub_264655264(v193, v196);
              goto LABEL_64;
            }

            sub_264783DF4();

            v197 = sub_264783E14();
            v198 = sub_2647859E4();

            if (!os_log_type_enabled(v197, v198))
            {

              v187(v188, v17);
              goto LABEL_64;
            }

            v199 = v188;
            v200 = swift_slowAlloc();
            v201 = swift_slowAlloc();
            v239[0] = v201;
            *v200 = 136315394;
            v236 = v64;

            v202 = sub_264785764();
            v204 = sub_2646DF234(v202, v203, v239);

            *(v200 + 4) = v204;
            a1 = v234;
            *(v200 + 12) = 2080;
            *(v200 + 14) = sub_2646DF234(0xD000000000000029, 0x8000000264794620, v239);
            _os_log_impl(&dword_264605000, v197, v198, "%s, %s: Invalid map item handle", v200, 0x16u);
            swift_arrayDestroy();
            v205 = v201;
            v63 = v230;
            MEMORY[0x266740650](v205, -1, -1);
            MEMORY[0x266740650](v200, -1, -1);

            v139 = v199;
            v140 = v17;
LABEL_60:
            v214(v139, v140);
            goto LABEL_64;
          }

          sub_26460CD50(v225, &qword_27FF75CE8, &unk_264788B70);
          v112 = v227;
          sub_26460CD50(v99, &qword_27FF75CE8, &unk_264788B70);
          (*(v226 + 8))(v116, v68);
          v114 = v230;
        }

        sub_26460CD50(v112, &qword_27FF75ED8, &qword_264789880);
        v115 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
        goto LABEL_46;
      }

      if (((1 << v96) & 0xC00) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_264783ED4(&v237);

        if (v237)
        {
        }

        else
        {
          v214 = v46;
          v141 = v217;
          sub_264783DF4();

          v142 = sub_264783E14();
          v143 = sub_2647859F4();

          if (os_log_type_enabled(v142, v143))
          {
            v144 = swift_slowAlloc();
            v145 = swift_slowAlloc();
            v237 = v145;
            *v144 = 136315394;
            v239[0] = v64;

            v146 = sub_264785764();
            v148 = v17;
            v149 = sub_2646DF234(v146, v147, &v237);

            *(v144 + 4) = v149;
            *(v144 + 12) = 2080;
            *(v144 + 14) = sub_2646DF234(0xD000000000000029, 0x8000000264794620, &v237);
            _os_log_impl(&dword_264605000, v142, v143, "%s, %s: Previous state is nil and we transition to initializing/ready, calling cancelInitialization", v144, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266740650](v145, -1, -1);
            MEMORY[0x266740650](v144, -1, -1);

            v150 = v217;
            v151 = v148;
          }

          else
          {

            v150 = v141;
            v151 = v17;
          }

          v214(v150, v151);
          v206 = v215;
          v207 = sub_2647858E4();
          (*(*(v207 - 8) + 56))(v206, 1, 1, v207);
          sub_2647858B4();

          v208 = sub_2647858A4();
          v209 = swift_allocObject();
          v210 = MEMORY[0x277D85700];
          v209[2] = v208;
          v209[3] = v210;
          v209[4] = v64;
          sub_264635730(0, 0, v206, &unk_2647898A0, v209);
        }

        goto LABEL_64;
      }
    }

    v125 = v218;
    sub_264783DF4();
    v126 = v63;

    v127 = v126;
    v128 = sub_264783E14();
    v129 = sub_2647859D4();

    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v214 = v46;
      v131 = v130;
      v132 = swift_slowAlloc();
      v230 = v63;
      v133 = v132;
      v237 = v132;
      *v131 = 136315650;
      v239[0] = v64;

      v134 = sub_264785764();
      v229 = v17;
      v136 = sub_2646DF234(v134, v135, &v237);

      *(v131 + 4) = v136;
      *(v131 + 12) = 2080;
      *(v131 + 14) = sub_2646DF234(0xD000000000000029, 0x8000000264794620, &v237);
      *(v131 + 22) = 2048;
      v137 = [v127 sessionState];

      *(v131 + 24) = v137;
      _os_log_impl(&dword_264605000, v128, v129, "%s, %s: Unknown state received %lu", v131, 0x20u);
      swift_arrayDestroy();
      v138 = v133;
      v63 = v230;
      MEMORY[0x266740650](v138, -1, -1);
      MEMORY[0x266740650](v131, -1, -1);

      v139 = v218;
      v140 = v229;
      goto LABEL_60;
    }

    v46(v125, v17);
LABEL_64:
    swift_getKeyPath();
    swift_getKeyPath();
    v239[0] = a1;

    v211 = v63;
    sub_264783EE4();
    sub_26461E5B0();

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v239[0]) = v232 & 1;

    sub_264783EE4();
    sub_26462815C();

    return;
  }

  v84 = v46;
  v85 = v230;
  sub_264783DF4();

  v86 = sub_264783E14();
  v87 = sub_2647859D4();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v237 = v89;
    *v88 = 136315394;
    v239[0] = v43;

    v90 = sub_264785764();
    v92 = v85;
    v93 = sub_2646DF234(v90, v91, &v237);

    *(v88 + 4) = v93;
    *(v88 + 12) = 2080;
    *(v88 + 14) = sub_2646DF234(0xD000000000000029, 0x8000000264794620, &v237);
    _os_log_impl(&dword_264605000, v86, v87, "%s, %s: drop nil state update", v88, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v89, -1, -1);
    MEMORY[0x266740650](v88, -1, -1);

    v94 = v92;
  }

  else
  {

    v94 = v85;
  }

  v84(v94, v17);
}

void sub_26461910C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_2646191A0(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v97 = a5;
  v109 = a2;
  v111 = a1;
  v107 = sub_264785594();
  v108 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_2647855C4();
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v103 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_264783AF4();
  v8 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v10 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264783E24();
  v113 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v102 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v110 = &v92 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v112 = &v92 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v92 - v18;
  sub_264783DF4();

  v20 = sub_264783E14();
  v21 = sub_2647859F4();

  v22 = os_log_type_enabled(v20, v21);
  v99 = v8;
  v98 = v10;
  if (v22)
  {
    v23 = a3;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136315394;
    swift_beginAccess();
    aBlock[6] = swift_weakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED0, &qword_264789878);
    v26 = sub_264785764();
    v28 = v11;
    v29 = sub_2646DF234(v26, v27, aBlock);

    *(v24 + 4) = v29;
    v11 = v28;
    v30 = v113;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264793790, aBlock);
    _os_log_impl(&dword_264605000, v20, v21, "%s,%s: fetchCurrentSessionState starting", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v25, -1, -1);
    v31 = v24;
    a3 = v23;
    MEMORY[0x266740650](v31, -1, -1);

    v32 = v30;
  }

  else
  {

    v32 = v113;
  }

  v33 = *(v32 + 8);
  v33(v19, v11);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v35 = v112;
  if (result)
  {
    v36 = result;
    sub_264783DF4();

    v37 = v111;
    v38 = v111;
    v39 = a3;
    v40 = sub_264783E14();
    v41 = sub_2647859F4();

    v42 = os_log_type_enabled(v40, v41);
    v100 = v11;
    v96 = v38;
    if (v42)
    {
      v94 = v33;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v114 = v36;
      aBlock[0] = v93;
      *v43 = 136316163;
      type metadata accessor for SessionViewModel(0);

      v45 = sub_264785764();
      v47 = sub_2646DF234(v45, v46, aBlock);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264793790, aBlock);
      *(v43 + 22) = 2117;
      *(v43 + 24) = v38;
      *v44 = v37;
      *(v43 + 32) = 1024;
      *(v43 + 34) = v109 & 1;
      *(v43 + 38) = 2080;
      v95 = a3;
      if (a3)
      {
        swift_getErrorValue();
        v48 = v38;
        v37 = v111;
        v49 = sub_264785EF4();
        v51 = v50;
      }

      else
      {
        v52 = v38;
        v51 = 0xE300000000000000;
        v49 = 7104878;
      }

      v53 = sub_2646DF234(v49, v51, aBlock);

      *(v43 + 40) = v53;
      _os_log_impl(&dword_264605000, v40, v41, "%s, %s: fetchCurrentSessionState, state, %{sensitive}@, isActiveDevice, %{BOOL}d, error, %s", v43, 0x30u);
      sub_26460CD50(v44, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v44, -1, -1);
      v54 = v93;
      swift_arrayDestroy();
      MEMORY[0x266740650](v54, -1, -1);
      MEMORY[0x266740650](v43, -1, -1);

      v11 = v100;
      v33 = v94;
      v94(v112, v100);
      a3 = v95;
    }

    else
    {

      v33(v35, v11);
    }

    v55 = v110;
    if (a3)
    {
      v56 = v33;
      v57 = a3;
      sub_264783DF4();

      v58 = a3;
      v59 = sub_264783E14();
      v60 = a3;
      v61 = sub_2647859D4();

      if (os_log_type_enabled(v59, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v114 = v36;
        aBlock[0] = v63;
        *v62 = 136315650;
        type metadata accessor for SessionViewModel(0);

        v64 = sub_264785764();
        v66 = sub_2646DF234(v64, v65, aBlock);

        *(v62 + 4) = v66;
        *(v62 + 12) = 2080;
        *(v62 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264793790, aBlock);
        *(v62 + 22) = 2080;
        swift_getErrorValue();
        v67 = sub_264785EF4();
        v69 = sub_2646DF234(v67, v68, aBlock);

        *(v62 + 24) = v69;
        _os_log_impl(&dword_264605000, v59, v61, "%s, %s: fetchCurrentSessionState, error, %s", v62, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v63, -1, -1);
        MEMORY[0x266740650](v62, -1, -1);

        return v56(v55, v100);
      }

      else
      {

        return v56(v55, v11);
      }
    }

    else
    {
      if (v37)
      {
        v70 = v102;
        sub_264783DF4();
        v71 = v99;
        v72 = v98;
        v73 = v101;
        (*(v99 + 16))(v98, v97, v101);

        v74 = sub_264783E14();
        v75 = sub_2647859F4();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v114 = v36;
          aBlock[0] = v77;
          *v76 = 136315650;
          type metadata accessor for SessionViewModel(0);

          v78 = sub_264785764();
          v80 = sub_2646DF234(v78, v79, aBlock);

          *(v76 + 4) = v80;
          *(v76 + 12) = 2080;
          *(v76 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264793790, aBlock);
          *(v76 + 22) = 2048;
          sub_264783AA4();
          v82 = v81;
          (*(v71 + 8))(v72, v101);
          *(v76 + 24) = -v82;
          _os_log_impl(&dword_264605000, v74, v75, "%s, %s: Completion fetchCurrentSessionState, UI latency: %f seconds", v76, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v77, -1, -1);
          MEMORY[0x266740650](v76, -1, -1);

          v83 = v102;
          v84 = v100;
          v37 = v111;
        }

        else
        {

          (*(v71 + 8))(v72, v73);
          v83 = v70;
          v84 = v11;
        }

        v33(v83, v84);
      }

      sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
      v85 = sub_264785A44();
      v86 = swift_allocObject();
      *(v86 + 16) = v36;
      *(v86 + 24) = v37;
      *(v86 + 32) = v109 & 1;
      aBlock[4] = sub_264659D9C;
      aBlock[5] = v86;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_264659F60;
      aBlock[3] = &block_descriptor_645;
      v87 = _Block_copy(aBlock);

      v88 = v96;

      v89 = v103;
      sub_2647855B4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
      sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
      v90 = v105;
      v91 = v107;
      sub_264785BD4();
      MEMORY[0x26673F780](0, v89, v90, v87);
      _Block_release(v87);

      (*(v108 + 8))(v90, v91);
      return (*(v104 + 8))(v89, v106);
    }
  }

  return result;
}

uint64_t sub_264619F68(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v37 = a7;
  v38 = a5;
  v39 = a6;
  v9 = sub_264783E24();
  v42 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_264785594();
  v41 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2647855C4();
  v40 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    if (a2)
    {
      v20 = a2;
      sub_264783DF4();

      v21 = a2;
      v22 = sub_264783E14();
      v23 = sub_2647859D4();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v43 = v19;
        aBlock[0] = v25;
        *v24 = 136315650;
        type metadata accessor for SessionViewModel(0);

        v26 = sub_264785764();
        v28 = sub_2646DF234(v26, v27, aBlock);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264793790, aBlock);
        *(v24 + 22) = 2080;
        swift_getErrorValue();
        v29 = sub_264785EF4();
        v31 = sub_2646DF234(v29, v30, aBlock);

        *(v24 + 24) = v31;
        _os_log_impl(&dword_264605000, v22, v23, v37, v24, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v25, -1, -1);
        MEMORY[0x266740650](v24, -1, -1);
      }

      else
      {
      }

      return (*(v42 + 8))(v11, v9);
    }

    else
    {
      sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
      v42 = sub_264785A44();
      v32 = swift_allocObject();
      *(v32 + 16) = v19;
      *(v32 + 24) = a1;
      aBlock[4] = v38;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_264659F60;
      aBlock[3] = v39;
      v33 = _Block_copy(aBlock);
      v34 = a1;

      sub_2647855B4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
      sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
      sub_264785BD4();
      v35 = v42;
      MEMORY[0x26673F780](0, v17, v14, v33);
      _Block_release(v33);

      (*(v41 + 8))(v14, v12);
      return (*(v40 + 8))(v17, v15);
    }
  }

  return result;
}

void sub_26461A4D4(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchSelfContact];
  swift_beginAccess();
  v3 = *(a1 + 48);
  *(a1 + 48) = v2;
}

uint64_t sub_26461A538(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_26461A57C()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = SessionViewModel.initializeSessionConfiguration()();
  sub_264783DF4();
  v6 = v5;

  v7 = sub_264783E14();
  v8 = sub_2647859F4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v1;
    v21 = v0;
    v11 = v10;
    v22 = v10;
    *v9 = 136315651;

    v12 = sub_264785764();
    v14 = sub_2646DF234(v12, v13, &v22);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2646DF234(0xD000000000000014, 0x8000000264794830, &v22);
    *(v9 + 22) = 2085;
    v21 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F20, &qword_2647898A8);
    v15 = sub_264785B34();
    v17 = sub_2646DF234(v15, v16, &v22);

    *(v9 + 24) = v17;
    _os_log_impl(&dword_264605000, v7, v8, "%s, %s: sessionConfiguration is: %{sensitive}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);

    (*(v2 + 8))(v4, v20);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  return v5;
}

id SessionViewModel.initializeSessionConfiguration()()
{
  v1 = v0;
  v349 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  MEMORY[0x28223BE20](v2 - 8);
  v333 = (&v323 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v330 = &v323 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v328 = &v323 - v7;
  v8 = sub_264783AF4();
  v342 = *(v8 - 8);
  v343 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v341 = &v323 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v336 = &v323 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v331 = &v323 - v14;
  MEMORY[0x28223BE20](v13);
  v337 = &v323 - v15;
  v16 = sub_264783E24();
  v350 = *(v16 - 1);
  v351 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v323 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v323 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v323 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v323 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v323 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v345 = &v323 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v332 = &v323 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v325 = &v323 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v329 = &v323 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v326 = &v323 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v324 = &v323 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v327 = &v323 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v334 = &v323 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v339 = &v323 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v338 = &v323 - v51;
  MEMORY[0x28223BE20](v50);
  v53 = &v323 - v52;
  v54 = sub_264783B64();
  v346 = *(v54 - 8);
  v347 = v54;
  v55 = MEMORY[0x28223BE20](v54);
  v340 = &v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v55);
  v335 = &v323 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v61 = &v323 - v60;
  MEMORY[0x28223BE20](v59);
  v348 = &v323 - v62;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v353);

  v63 = v353[0];
  v64 = sub_26462B210();
  if (!v64)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v353);

    if (v353[0] && (v109 = *(v353[0] + 2), , v109))
    {
      sub_264783DF4();

      v110 = sub_264783E14();
      v111 = sub_2647859D4();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v352 = v1;
        v353[0] = v113;
        *v112 = 136315394;

        v114 = sub_264785764();
        v116 = sub_2646DF234(v114, v115, v353);

        *(v112 + 4) = v116;
        *(v112 + 12) = 2080;
        *(v112 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v353);
        _os_log_impl(&dword_264605000, v110, v111, "%s, %s: missing conversation", v112, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v113, -1, -1);
        MEMORY[0x266740650](v112, -1, -1);
      }

      else
      {
      }

      v146 = *(v350 + 1);
      v147 = v19;
    }

    else
    {
      sub_264783DF4();

      v117 = sub_264783E14();
      v118 = sub_2647859D4();

      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v352 = v1;
        v353[0] = v120;
        *v119 = 136315394;

        v121 = sub_264785764();
        v123 = sub_2646DF234(v121, v122, v353);

        *(v119 + 4) = v123;
        *(v119 + 12) = 2080;
        *(v119 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v353);
        _os_log_impl(&dword_264605000, v117, v118, "%s, %s: missing recipient handles", v119, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v120, -1, -1);
        MEMORY[0x266740650](v119, -1, -1);
      }

      else
      {
      }

      v146 = *(v350 + 1);
      v147 = v22;
    }

    v148 = v351;
    goto LABEL_66;
  }

  v344 = v64;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v353);

  v65 = v353[0];
  if (!v353[0] || (v66 = [v353[0] configuration], v65, !v66))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v353);

    v99 = v351;
    if (v353[0])
    {

      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(v353);

      v100 = v353[0];
      if (v353[0] && (v101 = [v353[0] configuration], v100, v101))
      {

        sub_264783DF4();

        v102 = sub_264783E14();
        v103 = sub_2647859D4();

        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v352 = v1;
          v353[0] = v105;
          *v104 = 136315394;

          v106 = sub_264785764();
          v108 = sub_2646DF234(v106, v107, v353);

          *(v104 + 4) = v108;
          *(v104 + 12) = 2080;
          *(v104 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v353);
          _os_log_impl(&dword_264605000, v102, v103, "%s, %s: missing sessionID", v104, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v105, -1, -1);
          MEMORY[0x266740650](v104, -1, -1);
        }

        else
        {
        }

        (*(v350 + 1))(v25, v99);
      }

      else
      {
        sub_264783DF4();

        v124 = sub_264783E14();
        v125 = sub_2647859D4();

        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          v127 = swift_slowAlloc();
          v352 = v1;
          v353[0] = v127;
          *v126 = 136315394;

          v128 = sub_264785764();
          v130 = sub_2646DF234(v128, v129, v353);

          *(v126 + 4) = v130;
          *(v126 + 12) = 2080;
          *(v126 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v353);
          _os_log_impl(&dword_264605000, v124, v125, "%s, %s: missing configuration", v126, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v127, -1, -1);
          MEMORY[0x266740650](v126, -1, -1);
        }

        else
        {
        }

        (*(v350 + 1))(v28, v99);
      }
    }

    else
    {
      sub_264783DF4();

      v131 = sub_264783E14();
      v132 = sub_2647859D4();

      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v352 = v1;
        v353[0] = v134;
        *v133 = 136315394;

        v135 = sub_264785764();
        v137 = sub_2646DF234(v135, v136, v353);

        *(v133 + 4) = v137;
        *(v133 + 12) = 2080;
        *(v133 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v353);
        _os_log_impl(&dword_264605000, v131, v132, "%s, %s: missing sessionState", v133, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v134, -1, -1);
        MEMORY[0x266740650](v133, -1, -1);
      }

      else
      {
      }

      (*(v350 + 1))(v31, v99);
    }

    return 0;
  }

  v67 = [v66 sessionID];

  sub_264783B44();
  (*(v346 + 32))(v348, v61, v347);
  sub_264783DF4();

  v68 = sub_264783E14();
  v69 = sub_2647859F4();

  v70 = v63;
  if (os_log_type_enabled(v68, v69))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v323 = swift_slowAlloc();
    v352 = v1;
    v353[0] = v323;
    *v71 = 136316163;

    v73 = sub_264785764();
    v75 = sub_2646DF234(v73, v74, v353);

    *(v71 + 4) = v75;
    *(v71 + 12) = 2080;
    *(v71 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v353);
    *(v71 + 22) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v352);

    *(v71 + 24) = v352;
    *(v71 + 32) = 2080;
    v76 = SessionViewModel.sessionDestinationType.getter();
    v77 = [objc_opt_self() destinationTypeToString_];
    v78 = sub_264785724();
    v80 = v79;

    v81 = sub_2646DF234(v78, v80, v353);

    *(v71 + 34) = v81;
    *(v71 + 42) = 2117;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v352);

    v82 = v352;
    *(v71 + 44) = v352;
    *v72 = v82;
    _os_log_impl(&dword_264605000, v68, v69, "%s, %s:  Sync session configuration set to stored properties self.sessionDuration, %f, self.sessionDestinationType, %s, endLocation %{sensitive}@", v71, 0x34u);
    sub_26460CD50(v72, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v72, -1, -1);
    v83 = v323;
    swift_arrayDestroy();
    MEMORY[0x266740650](v83, -1, -1);
    MEMORY[0x266740650](v71, -1, -1);
  }

  v84 = v351;
  v85 = *(v350 + 1);
  v85(v53, v351);
  swift_getKeyPath();
  swift_getKeyPath();
  v323 = v70;
  sub_264783ED4(v353);

  v86 = v353[0];
  v87 = v345;
  if (v353[0] > 2)
  {
    if (v353[0] == 3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(v353);

      v166 = v353[0];
      if (!v353[0])
      {
        v87 = v325;
        sub_264783DF4();
        v149 = sub_264783E14();
        v217 = sub_2647859E4();
        if (os_log_type_enabled(v149, v217))
        {
          v218 = swift_slowAlloc();
          *v218 = 0;
          _os_log_impl(&dword_264605000, v149, v217, "Unable to create session configuration without an end location.", v218, 2u);
          MEMORY[0x266740650](v218, -1, -1);
        }

        goto LABEL_63;
      }

      v167 = v329;
      sub_264783DF4();

      v168 = sub_264783E14();
      v169 = sub_2647859F4();

      v170 = os_log_type_enabled(v168, v169);
      v351 = v166;
      if (v170)
      {
        v171 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        v352 = v1;
        v353[0] = v172;
        *v171 = 136315394;

        v173 = sub_264785764();
        v175 = sub_2646DF234(v173, v174, v353);

        *(v171 + 4) = v175;
        *(v171 + 12) = 2080;
        *(v171 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v353);
        _os_log_impl(&dword_264605000, v168, v169, "%s, %s: session configuration in .roundTrip case", v171, 0x16u);
        swift_arrayDestroy();
        v176 = v172;
        v166 = v351;
        MEMORY[0x266740650](v176, -1, -1);
        MEMORY[0x266740650](v171, -1, -1);
      }

      v85(v167, v84);
      v220 = v330;
      v221 = v346;
      (*(v346 + 16))(v340, v348, v347);
      v222 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:0.0 longitude:0.0];
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(v353);

      v223 = dbl_264789920[SLOBYTE(v353[0])];
      result = [v166 _handle];
      if (!result)
      {
        __break(1u);
        goto LABEL_91;
      }

      v224 = result;
      v225 = sub_264783A14();
      v227 = v226;

      v228 = objc_allocWithZone(MEMORY[0x277D4AB88]);
      v229 = sub_264783A04();
      v230 = [v228 initWithCLLocation:v222 eta:0 radius:4 destinationType:v229 destinationMapItem:v223];

      sub_264655264(v225, v227);
      sub_264783AE4();
      v232 = v342;
      v231 = v343;
      (*(v342 + 56))(v220, 1, 1, v343);
      v233 = [objc_opt_self() zelkovaHandoffEnabled];
      v234 = v344;
      v235 = sub_264783B14();
      v236 = sub_264783A64();
      v237 = 0;
      if ((*(v232 + 48))(v220, 1, v231) != 1)
      {
        v237 = sub_264783A64();
        (*(v232 + 8))(v220, v231);
      }

      v238 = [objc_allocWithZone(MEMORY[0x277D4AB78]) initRoundTripSessionConfigurationWithConversation:v234 sessionID:v235 destination:v230 sessionStartDate:v236 userResponseSafeDate:v237 sessionSupportsHandoff:v233 sosReceivers:v234];

      (*(v232 + 8))(v336, v231);
      v239 = *(v221 + 8);
      v240 = v347;
      v239(v340, v347);
      v239(v348, v240);
      return v238;
    }

    else
    {
      if (v353[0] != 4)
      {
LABEL_39:
        sub_264783DF4();

        v149 = sub_264783E14();
        v150 = sub_2647859E4();

        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v352 = v1;
          v353[0] = v152;
          *v151 = 136315650;

          v153 = sub_264785764();
          v155 = sub_2646DF234(v153, v154, v353);

          *(v151 + 4) = v155;
          *(v151 + 12) = 2080;
          *(v151 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v353);
          *(v151 + 22) = 2048;
          *(v151 + 24) = v86;
          _os_log_impl(&dword_264605000, v149, v150, "%s, %s: Bad session type when initializing session: %lu", v151, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v152, -1, -1);
          MEMORY[0x266740650](v151, -1, -1);

          v156 = v345;
          goto LABEL_64;
        }

LABEL_63:

        v156 = v87;
        goto LABEL_64;
      }

      v351 = v85;
      v138 = v332;
      sub_264783DF4();

      v139 = sub_264783E14();
      v140 = sub_2647859F4();

      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v352 = v1;
        v353[0] = v142;
        *v141 = 136315394;

        v143 = sub_264785764();
        v145 = sub_2646DF234(v143, v144, v353);

        *(v141 + 4) = v145;
        *(v141 + 12) = 2080;
        *(v141 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v353);
        _os_log_impl(&dword_264605000, v139, v140, "%s, %s: session configuration in .workoutBound case", v141, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v142, -1, -1);
        MEMORY[0x266740650](v141, -1, -1);
      }

      v351(v138, v84);
      v184 = v344;
      sub_264783AE4();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(v353);

      v351 = v353[0];
      swift_getKeyPath();
      swift_getKeyPath();
      v185 = v333;
      sub_264783ED4(v333);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(v353);

      v186 = v185;

      v187 = v353[0];
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(v353);

      v188 = v353[0];
      v189 = sub_264783B14();
      v190 = sub_264783A64();
      v192 = v346;
      v191 = v347;
      if ((*(v346 + 48))(v186, 1, v347) == 1)
      {
        v193 = 0;
      }

      else
      {
        v193 = sub_264783B14();
        (*(v192 + 8))(v186, v191);
      }

      v194 = [objc_allocWithZone(MEMORY[0x277D4AB78]) initWorkoutBoundSessionConfigurationWithConversation:v184 sessionID:v189 sessionStartDate:v190 sessionSupportsHandoff:v351 == 1 sosReceivers:v184 sessionWorkoutIdentifier:v193 sessionWorkoutType:v187 sessionWorkoutMirrorType:v188];

      (*(v342 + 8))(v341, v343);
      (*(v192 + 8))(v348, v191);
      return v194;
    }
  }

  else
  {
    if (v353[0] != 1)
    {
      if (v353[0] == 2)
      {
        v88 = v339;
        sub_264783DF4();

        v89 = sub_264783E14();
        v90 = sub_2647859F4();

        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v352 = v1;
          v353[0] = v93;
          *v91 = 136315651;

          v94 = sub_264785764();
          v96 = sub_2646DF234(v94, v95, v353);

          *(v91 + 4) = v96;
          *(v91 + 12) = 2080;
          *(v91 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v353);
          *(v91 + 22) = 2117;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_264783ED4(&v352);

          v97 = v352;
          *(v91 + 24) = v352;
          *v92 = v97;
          _os_log_impl(&dword_264605000, v89, v90, "%s, %s: setting config to destination bound, endLocation, %{sensitive}@", v91, 0x20u);
          sub_26460CD50(v92, &qword_27FF779D0, &qword_26478A9A0);
          MEMORY[0x266740650](v92, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x266740650](v93, -1, -1);
          MEMORY[0x266740650](v91, -1, -1);

          v98 = v339;
        }

        else
        {

          v98 = v88;
        }

        v85(v98, v351);
        v177 = v334;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_264783ED4(v353);

        v178 = v353[0];
        if (!v353[0])
        {
          v207 = v326;
          sub_264783DF4();

          v208 = sub_264783E14();
          v209 = sub_2647859E4();

          v210 = os_log_type_enabled(v208, v209);
          v211 = v351;
          if (v210)
          {
            v212 = swift_slowAlloc();
            v213 = swift_slowAlloc();
            v352 = v1;
            v353[0] = v213;
            *v212 = 136315394;

            v214 = sub_264785764();
            v216 = sub_2646DF234(v214, v215, v353);

            *(v212 + 4) = v216;
            *(v212 + 12) = 2080;
            *(v212 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v353);
            _os_log_impl(&dword_264605000, v208, v209, "%s, %s: Unable to create session configuration without an end location.", v212, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266740650](v213, -1, -1);
            MEMORY[0x266740650](v212, -1, -1);
          }

          v156 = v207;
          v219 = v211;
          goto LABEL_65;
        }

        v179 = [v353[0] placemark];
        v180 = [v179 location];

        v84 = v351;
        if (v180)
        {
          v181 = [v180 referenceFrame];
          v182 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
          v345 = v178;
          v341 = v180;
          if (v181)
          {
            v183 = [v180 referenceFrame];
          }

          else
          {
            sub_264783DF4();

            v250 = v180;
            v251 = sub_264783E14();
            v252 = sub_2647859D4();

            if (os_log_type_enabled(v251, v252))
            {
              v253 = swift_slowAlloc();
              v340 = swift_slowAlloc();
              v352 = v1;
              v353[0] = v340;
              *v253 = 136315651;

              v254 = sub_264785764();
              v256 = sub_2646DF234(v254, v255, v353);

              *(v253 + 4) = v256;
              *(v253 + 12) = 2080;
              *(v253 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v353);
              *(v253 + 22) = 2085;
              v257 = v252;
              v258 = [v250 description];
              v259 = sub_264785724();
              v261 = v260;

              v262 = v259;
              v84 = v351;
              v263 = sub_2646DF234(v262, v261, v353);
              v180 = v341;

              *(v253 + 24) = v263;
              v264 = v257;
              v182 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
              _os_log_impl(&dword_264605000, v251, v264, "%s, %s: Non fatal unexpected unknown reference frame, location,%{sensitive}s", v253, 0x20u);
              v265 = v340;
              swift_arrayDestroy();
              MEMORY[0x266740650](v265, -1, -1);
              MEMORY[0x266740650](v253, -1, -1);
            }

            v85(v177, v84);
            v266 = objc_opt_self();
            [v250 v182[101]];
            v268 = v267;
            [v250 v182[101]];
            if ([v266 isLocationShiftRequiredForCoordinate_])
            {
              v183 = 2;
            }

            else
            {
              v183 = 1;
            }
          }

          [v180 v182[101]];
          v270 = v269;
          v272 = v271;
          [v180 altitude];
          v274 = v273;
          [v180 horizontalAccuracy];
          v276 = v275;
          [v180 verticalAccuracy];
          v278 = v277;
          v279 = [v180 timestamp];
          v280 = v337;
          sub_264783AC4();

          v281 = objc_allocWithZone(MEMORY[0x277CE41F8]);
          v282 = sub_264783A64();
          v339 = [v281 initWithCoordinate:v282 altitude:v183 horizontalAccuracy:v270 verticalAccuracy:v272 timestamp:v274 referenceFrame:{v276, v278}];

          v283 = (v342 + 8);
          v284 = *(v342 + 8);
          v284(v280, v343);
          v285 = SessionViewModel.sessionDestinationType.getter();
          v286 = v327;
          sub_264783DF4();

          v287 = sub_264783E14();
          v288 = sub_2647859F4();

          v289 = os_log_type_enabled(v287, v288);
          v350 = v284;
          v351 = v283;
          v340 = v285;
          if (v289)
          {
            v290 = swift_slowAlloc();
            v291 = swift_slowAlloc();
            v352 = v1;
            v353[0] = v291;
            *v290 = 136315394;

            v292 = sub_264785764();
            v294 = v84;
            v295 = sub_2646DF234(v292, v293, v353);

            *(v290 + 4) = v295;
            *(v290 + 12) = 2080;
            *(v290 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v353);
            _os_log_impl(&dword_264605000, v287, v288, "%s, %s: session configuration in .destinationBound case", v290, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266740650](v291, -1, -1);
            MEMORY[0x266740650](v290, -1, -1);

            v296 = v286;
            v297 = v294;
          }

          else
          {

            v296 = v286;
            v297 = v84;
          }

          v85(v296, v297);
          v298 = v345;
          (*(v346 + 16))(v335, v348, v347);
          v299 = sub_264714180();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_264783ED4(v353);

          v300 = dbl_264789920[SLOBYTE(v353[0])];
          result = [v298 _handle];
          if (result)
          {
            v301 = result;
            v302 = sub_264783A14();
            v304 = v303;

            v305 = objc_allocWithZone(MEMORY[0x277D4AB88]);
            v306 = v339;
            v307 = sub_264783A04();
            v349 = [v305 initWithCLLocation:v306 eta:v299 radius:v340 destinationType:v307 destinationMapItem:v300];

            sub_264655264(v302, v304);
            sub_264783AE4();
            v309 = v342;
            v308 = v343;
            v310 = v328;
            (*(v342 + 56))(v328, 1, 1, v343);
            v311 = [objc_opt_self() zelkovaHandoffEnabled];
            v312 = v344;
            v313 = sub_264783B14();
            v314 = sub_264783A64();
            if ((*(v309 + 48))(v310, 1, v308) == 1)
            {
              v315 = 0;
              v316 = v350;
            }

            else
            {
              v315 = sub_264783A64();
              v317 = v310;
              v316 = v350;
              v350(v317, v308);
            }

            v318 = objc_allocWithZone(MEMORY[0x277D4AB78]);
            v319 = v349;
            v320 = [v318 initDestinationBoundSessionConfigurationWithConversation:v312 sessionID:v313 destination:v349 sessionStartDate:v314 userResponseSafeDate:v315 sessionSupportsHandoff:v311 sosReceivers:v312];

            v316(v331, v308);
            v321 = v347;
            v322 = *(v346 + 8);
            v322(v335, v347);
            v322(v348, v321);
            return v320;
          }

LABEL_91:
          __break(1u);
          return result;
        }

        v241 = v324;
        sub_264783DF4();

        v242 = sub_264783E14();
        v243 = sub_2647859E4();

        if (os_log_type_enabled(v242, v243))
        {
          v244 = swift_slowAlloc();
          v245 = swift_slowAlloc();
          v345 = v178;
          v246 = v245;
          v352 = v1;
          v353[0] = v245;
          *v244 = 136315394;

          v247 = sub_264785764();
          v249 = sub_2646DF234(v247, v248, v353);

          *(v244 + 4) = v249;
          *(v244 + 12) = 2080;
          *(v244 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v353);
          _os_log_impl(&dword_264605000, v242, v243, "%s, %s: Unable to create session configuration without an end location.", v244, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v246, -1, -1);
          MEMORY[0x266740650](v244, -1, -1);
        }

        else
        {
        }

        v156 = v241;
LABEL_64:
        v219 = v84;
LABEL_65:
        v85(v156, v219);
        v148 = v347;
        v146 = *(v346 + 8);
        v147 = v348;
LABEL_66:
        v146(v147, v148);
        return 0;
      }

      goto LABEL_39;
    }

    v157 = v338;
    sub_264783DF4();

    v158 = sub_264783E14();
    v159 = sub_2647859F4();

    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v352 = v1;
      v353[0] = v161;
      *v160 = 136315394;

      v162 = sub_264785764();
      v164 = sub_2646DF234(v162, v163, v353);

      *(v160 + 4) = v164;
      *(v160 + 12) = 2080;
      *(v160 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v353);
      _os_log_impl(&dword_264605000, v158, v159, "%s, %s: setting config to time bound", v160, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v161, -1, -1);
      MEMORY[0x266740650](v160, -1, -1);

      v165 = v338;
    }

    else
    {

      v165 = v157;
    }

    v85(v165, v84);
    v196 = v343;
    v197 = v344;
    v198 = v337;
    SessionViewModel.endDate.getter();
    v199 = objc_allocWithZone(MEMORY[0x277D4AC08]);
    v200 = sub_264783A64();
    v201 = [v199 initWithTimeBound_];

    (*(v342 + 8))(v198, v196);
    v202 = [objc_opt_self() zelkovaHandoffEnabled];
    v203 = objc_allocWithZone(MEMORY[0x277D4AB78]);
    v204 = v348;
    v205 = sub_264783B14();
    v206 = [v203 initTimeBoundSessionConfigurationWithConversation:v197 sessionID:v205 time:v201 sessionSupportsHandoff:v202 sosReceivers:v197];

    (*(v346 + 8))(v204, v347);
    return v206;
  }
}

void *SessionViewModel.suggestedSessionConfiguration.getter()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_suggestedSessionConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_26461D420(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_suggestedSessionConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  return sub_26461D484();
}

uint64_t sub_26461D484()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v6 = sub_264783E14();
  v7 = sub_2647859F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315651;
    v18[2] = v0;

    v10 = sub_264785764();
    v12 = sub_2646DF234(v10, v11, &v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2646DF234(0xD00000000000001DLL, 0x8000000264793FA0, &v19);
    *(v8 + 22) = 2085;
    v13 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_suggestedSessionConfiguration;
    swift_beginAccess();
    v18[1] = *(v1 + v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F20, &qword_2647898A8);
    v14 = sub_264785B34();
    v16 = sub_2646DF234(v14, v15, &v19);

    *(v8 + 24) = v16;
    _os_log_impl(&dword_264605000, v6, v7, "%s, %s: SUGGESTED SESSION CONFIG WAS CHANGED: %{sensitive}s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v9, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26461D75C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_workoutSessionConfiguration;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return sub_26461D7C8();
}

uint64_t sub_26461D7C8()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v6 = sub_264783E14();
  v7 = sub_2647859F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315650;
    v18[2] = v0;

    v10 = sub_264785764();
    v12 = sub_2646DF234(v10, v11, &v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2646DF234(0xD00000000000001BLL, 0x8000000264793FC0, &v19);
    *(v8 + 22) = 2080;
    v13 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_workoutSessionConfiguration;
    swift_beginAccess();
    v18[1] = *(v1 + v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EC0, &qword_264789868);
    v14 = sub_264785B34();
    v16 = sub_2646DF234(v14, v15, &v19);

    *(v8 + 24) = v16;
    _os_log_impl(&dword_264605000, v6, v7, "%s, %s: WORKOUT SESSION CONFIG WAS CHANGED: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v9, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t SessionViewModel.durationTimerString.getter()
{
  v0 = 0x30303A30303A3030;
  v1 = sub_264783AF4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v14);

  v8 = v14;
  if (v14)
  {
    v9 = [v14 configuration];

    if (v9)
    {
      v10 = [v9 time];

      if (v10)
      {
        v11 = [v10 timeBound];

        sub_264783AC4();
        (*(v2 + 32))(v7, v5, v1);
        v0 = sub_2646552E4(v7);
        (*(v2 + 8))(v7, v1);
      }
    }
  }

  return v0;
}

uint64_t SessionViewModel.currentSessionID.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v8);

  v2 = v8;
  if (v8 && (v3 = [v8 configuration], v2, v3))
  {
    v4 = [v3 sessionID];

    sub_264783B44();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_264783B64();
  return (*(*(v6 - 8) + 56))(a1, v5, 1, v6);
}

uint64_t sub_26461DDD4()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v6 = sub_264783E14();
  v7 = sub_2647859F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v1;
    v18 = v9;
    *v8 = 136315650;

    v10 = sub_264785764();
    v12 = sub_2646DF234(v10, v11, &v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2646DF234(0xD000000000000011, 0x8000000264794960, &v18);
    *(v8 + 22) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v17);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C10, &qword_264788A58);
    v13 = sub_264785764();
    v15 = sub_2646DF234(v13, v14, &v18);

    *(v8 + 24) = v15;
    _os_log_impl(&dword_264605000, v6, v7, "%s, %s: local was changed to %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v9, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

void (*SessionViewModel.localSessionState.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(a1 + 1);

  *a1 = a1[1];
  return sub_26461E118;
}

uint64_t sub_26461E15C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CF0, &qword_264788E58);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B78, &qword_264788A50);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t SessionViewModel.$localSessionState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CF0, &qword_264788E58);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B78, &qword_264788A50);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$localSessionState.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CF0, &qword_264788E58);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__localSessionState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B78, &qword_264788A50);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_26461E5B0()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v6 = sub_264783E14();
  v7 = sub_2647859F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v1;
    v18 = v9;
    *v8 = 136315651;

    v10 = sub_264785764();
    v12 = sub_2646DF234(v10, v11, &v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2646DF234(0x536E6F6973736573, 0xEC00000065746174, &v18);
    *(v8 + 22) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v17);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C20, &qword_264788A60);
    v13 = sub_264785764();
    v15 = sub_2646DF234(v13, v14, &v18);

    *(v8 + 24) = v15;
    _os_log_impl(&dword_264605000, v6, v7, "%s, %s: sessionState was changed to %{sensitive}s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v9, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

void (*SessionViewModel.sessionState.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(a1 + 1);

  *a1 = a1[1];
  return sub_26461E8FC;
}

uint64_t sub_26461E940(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CF8, &qword_264788E60);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B70, &qword_264788A48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t SessionViewModel.$sessionState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CF8, &qword_264788E60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B70, &qword_264788A48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$sessionState.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CF8, &qword_264788E60);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__sessionState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B70, &qword_264788A48);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

id SessionViewModel.sessionDestinationType.getter()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v6 = sub_264783E14();
  v7 = sub_2647859F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v1;
    v23 = v9;
    *v8 = 136315651;

    v10 = sub_264785764();
    v12 = sub_2646DF234(v10, v11, &v23);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2646DF234(0xD000000000000016, 0x80000002647937E0, &v23);
    *(v8 + 22) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v22);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C20, &qword_264788A60);
    v13 = sub_264785764();
    v15 = sub_2646DF234(v13, v14, &v23);

    *(v8 + 24) = v15;
    _os_log_impl(&dword_264605000, v6, v7, "%s, %s: sessionState %{sensitive}s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v9, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v23);

  v16 = v23;
  if (!v23)
  {
    goto LABEL_10;
  }

  if (![v23 isActiveState])
  {

LABEL_10:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v23);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v23);

    return v23;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v23);

  v17 = v23;
  if (v23 && (v18 = [v23 configuration], v17, v18) && (v19 = objc_msgSend(v18, sel_destination), v18, v19))
  {
    v20 = [v19 destinationType];

    return v20;
  }

  else
  {

    return 0;
  }
}

uint64_t SessionViewModel.userSessionConfiguration.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v1);

  return v1;
}

id SessionViewModel.sessionType.getter()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v6 = sub_264783E14();
  v7 = sub_2647859F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v1;
    v25 = v9;
    *v8 = 136315907;

    v10 = sub_264785764();
    v12 = sub_2646DF234(v10, v11, &v25);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2646DF234(0x546E6F6973736573, 0xEB00000000657079, &v25);
    *(v8 + 22) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C20, &qword_264788A60);
    v13 = sub_264785764();
    v15 = sub_2646DF234(v13, v14, &v25);

    *(v8 + 24) = v15;
    *(v8 + 32) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v24);

    type metadata accessor for UserSessionConfiguration(0);
    v16 = sub_264785764();
    v18 = sub_2646DF234(v16, v17, &v25);

    *(v8 + 34) = v18;
    _os_log_impl(&dword_264605000, v6, v7, "%s, %s: sessionState %{sensitive}s, userSessionConfiguration %{sensitive}s", v8, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266740650](v9, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v25);

  v19 = v25;
  if (!v25)
  {
    goto LABEL_9;
  }

  if (![v25 isActiveState])
  {

LABEL_9:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v25);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v25);

    return v25;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v25);

  v20 = v25;
  if (v25 && (v21 = [v25 configuration], v20, v21))
  {
    v22 = [v21 sessionType];

    return v22;
  }

  else
  {

    return 0;
  }
}

id sub_26461F730()
{
  v1 = v0;
  v2 = sub_264783AF4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - v6;
  v8 = sub_264783E24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v12 = sub_264783E14();
  v13 = sub_2647859F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v41 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v40 = v7;
    v17 = v16;
    v44 = v1;
    v45 = v16;
    *v15 = 136315907;

    v18 = sub_264785764();
    v20 = sub_2646DF234(v18, v19, &v45);
    v42 = v2;
    v21 = v20;

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_2646DF234(0x74616E6974736564, 0xEE004154456E6F69, &v45);
    *(v15 + 22) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v44);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C20, &qword_264788A60);
    v22 = sub_264785764();
    v24 = sub_2646DF234(v22, v23, &v45);

    *(v15 + 24) = v24;
    *(v15 + 32) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v44);

    type metadata accessor for UserSessionConfiguration(0);
    v25 = sub_264785764();
    v27 = sub_2646DF234(v25, v26, &v45);

    *(v15 + 34) = v27;
    v2 = v42;
    _os_log_impl(&dword_264605000, v12, v13, "%s, %s: sessionState %{sensitive}s, userSessionConfiguration %{sensitive}s", v15, 0x2Au);
    swift_arrayDestroy();
    v28 = v17;
    v7 = v40;
    MEMORY[0x266740650](v28, -1, -1);
    v29 = v15;
    v3 = v41;
    MEMORY[0x266740650](v29, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v45);

  v30 = v45;
  if (!v45)
  {
    goto LABEL_12;
  }

  if (![v45 isActiveState])
  {

LABEL_12:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v45);

    v32 = sub_264713490();

    return v32;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v45);

  v31 = v45;
  if (!v45)
  {
    goto LABEL_14;
  }

  v32 = [v45 configuration];

  if (!v32)
  {
LABEL_15:

    return v32;
  }

  v33 = [v32 destination];

  if (!v33)
  {
LABEL_14:

    return 0;
  }

  v32 = [v33 eta];

  if (!v32)
  {
    goto LABEL_15;
  }

  v34 = [v32 etaDate];

  v35 = v43;
  sub_264783AC4();

  (*(v3 + 32))(v7, v35, v2);
  sub_264783AA4();
  if (v36 <= 0.0)
  {
    (*(v3 + 8))(v7, v2);

    return 0;
  }

  else
  {
    sub_264783AA4();
    v38 = v37;

    (*(v3 + 8))(v7, v2);
    return v38;
  }
}

id sub_26461FD8C()
{
  v1 = v0;
  v2 = sub_264783AF4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - v6;
  v8 = sub_264783E24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v12 = sub_264783E14();
  v13 = sub_2647859F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v41 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v40 = v7;
    v17 = v16;
    v44 = v1;
    v45 = v16;
    *v15 = 136315907;

    v18 = sub_264785764();
    v20 = sub_2646DF234(v18, v19, &v45);
    v42 = v2;
    v21 = v20;

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_2646DF234(0x6E756F42656D6974, 0xEC00000041544564, &v45);
    *(v15 + 22) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v44);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C20, &qword_264788A60);
    v22 = sub_264785764();
    v24 = sub_2646DF234(v22, v23, &v45);

    *(v15 + 24) = v24;
    *(v15 + 32) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v44);

    type metadata accessor for UserSessionConfiguration(0);
    v25 = sub_264785764();
    v27 = sub_2646DF234(v25, v26, &v45);

    *(v15 + 34) = v27;
    v2 = v42;
    _os_log_impl(&dword_264605000, v12, v13, "%s, %s: sessionState %{sensitive}s, userSessionConfiguration %{sensitive}s", v15, 0x2Au);
    swift_arrayDestroy();
    v28 = v17;
    v7 = v40;
    MEMORY[0x266740650](v28, -1, -1);
    v29 = v15;
    v3 = v41;
    MEMORY[0x266740650](v29, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v45);

  v30 = v45;
  if (!v45)
  {
    goto LABEL_11;
  }

  if (![v45 isActiveState])
  {

LABEL_11:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v45);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v45);

    return v45;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v45);

  v31 = v45;
  if (v45 && (v32 = [v45 configuration], v31, v32) && (v33 = objc_msgSend(v32, sel_time), v32, v33))
  {
    v34 = [v33 timeBound];

    v35 = v43;
    sub_264783AC4();

    (*(v3 + 32))(v7, v35, v2);
    sub_264783AA4();
    if (v36 <= 0.0)
    {
      (*(v3 + 8))(v7, v2);

      return 0;
    }

    else
    {
      sub_264783AA4();
      v38 = v37;

      (*(v3 + 8))(v7, v2);
      return v38;
    }
  }

  else
  {

    return 0;
  }
}

id SessionViewModel.sessionDuration.getter()
{
  v0 = SessionViewModel.sessionType.getter();
  if (v0 == 2)
  {
    return sub_26461F730();
  }

  if (v0 == 1)
  {
    return sub_26461FD8C();
  }

  return 0;
}

uint64_t sub_264620454(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  return sub_264620548();
}

uint64_t SessionViewModel.recipientHandles.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  return sub_264620548();
}

uint64_t sub_264620548()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v5 = sub_264783E14();
  v6 = sub_2647859F4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v0;
    v18 = v8;
    *v7 = 136315650;

    v9 = sub_264785764();
    v11 = sub_2646DF234(v9, v10, &v18);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264794940, &v18);
    *(v7 + 22) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v17);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C30, &qword_264788A68);
    v12 = sub_264785B34();
    v14 = v13;

    v15 = sub_2646DF234(v12, v14, &v18);

    *(v7 + 24) = v15;
    _os_log_impl(&dword_264605000, v5, v6, "%s, %s: recipientHandles was changed to %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v8, -1, -1);
    MEMORY[0x266740650](v7, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t (*SessionViewModel.recipientHandles.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(a1 + 1);

  *a1 = a1[1];
  return sub_2646208A0;
}

uint64_t sub_2646208A0(uint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v4;
  if (a2)
  {

    sub_264783EE4();
    sub_264620548();
  }

  else
  {

    sub_264783EE4();
    return sub_264620548();
  }
}

uint64_t sub_2646209A8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D00, &qword_264788EB0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B68, &qword_264788A40);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t SessionViewModel.$recipientHandles.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D00, &qword_264788EB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B68, &qword_264788A40);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$recipientHandles.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D00, &qword_264788EB0);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__recipientHandles;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B68, &qword_264788A40);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

BOOL SessionViewModel.hasRecipientHandles.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v2);

  result = v2;
  if (v2)
  {
    v1 = *(v2 + 16);

    return v1 != 0;
  }

  return result;
}

uint64_t SessionViewModel.groupID.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v1);

  return v1;
}

double sub_264620ED0@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v4);

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_264620F50(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  return sub_264621058();
}

uint64_t SessionViewModel.groupID.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  return sub_264621058();
}

uint64_t sub_264621058()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v5 = sub_264783E14();
  v6 = sub_2647859F4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315650;
    v18 = v0;

    v9 = sub_264785764();
    v11 = sub_2646DF234(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_2646DF234(0x444970756F7267, 0xE700000000000000, &v19);
    *(v7 + 22) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v18);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C40, &qword_264788A70);
    v12 = sub_264785B34();
    v14 = v13;

    v15 = sub_2646DF234(v12, v14, &v19);

    *(v7 + 24) = v15;
    _os_log_impl(&dword_264605000, v5, v6, "%s, %s: groupID was changed to %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v8, -1, -1);
    MEMORY[0x266740650](v7, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

void (*SessionViewModel.groupID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4((v4 + 16));

  *v4 = *(v4 + 16);
  return sub_2646213E0;
}

void sub_2646213E0(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v3[2] = v4;
  v3[3] = v5;
  if (a2)
  {

    sub_264783EE4();
    sub_264621058();
  }

  else
  {

    sub_264783EE4();
    sub_264621058();
  }

  free(v3);
}

uint64_t sub_2646214E0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t SessionViewModel.$groupID.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$groupID.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__groupID;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t SessionViewModel.sessionInitializationInfo.getter@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(a1);
}

double sub_264621984@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v5);

  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_264621A0C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  return sub_264621B20();
}

uint64_t SessionViewModel.sessionInitializationInfo.setter(__int128 *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  return sub_264621B20();
}

uint64_t sub_264621B20()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  swift_retain_n();
  v6 = sub_264783E14();
  v7 = sub_2647859F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v22 = v2;
    v9 = v8;
    v21 = swift_slowAlloc();
    v25 = v21;
    *v9 = 136316162;
    v24[0] = v1;

    v10 = sub_264785764();
    v12 = sub_2646DF234(v10, v11, &v25);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2646DF234(0xD000000000000019, 0x8000000264794920, &v25);
    *(v9 + 22) = 2048;
    swift_getKeyPath();
    HIDWORD(v20) = v7;
    swift_getKeyPath();
    sub_264783ED4(v24);

    v13 = v24[0];

    *(v9 + 24) = v13;

    *(v9 + 32) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v24);

    v14 = v24[1];

    *(v9 + 34) = v14;

    *(v9 + 42) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v24);

    v23 = v24[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F68, &qword_264789900);
    v15 = sub_264785764();
    v17 = sub_2646DF234(v15, v16, &v25);

    *(v9 + 44) = v17;
    _os_log_impl(&dword_264605000, v6, BYTE4(v20), "%s, %s: sessionInitializationInfo was changed to initiatorEligibility, %ld, receiverEligibility, %ld, initiatorInvitationTokens %s", v9, 0x34u);
    v18 = v21;
    swift_arrayDestroy();
    MEMORY[0x266740650](v18, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);

    return (*(v3 + 8))(v5, v22);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

void (*SessionViewModel.sessionInitializationInfo.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v4);

  return sub_264621F90;
}

void sub_264621F90(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  swift_getKeyPath();
  swift_getKeyPath();
  v3[3] = v4;
  v3[4] = v5;
  v3[5] = v6;
  if (a2)
  {

    sub_264783EE4();
    sub_264621B20();
  }

  else
  {

    sub_264783EE4();
    sub_264621B20();
  }

  free(v3);
}

uint64_t sub_264622094(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D10, &qword_264788F50);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B58, &unk_264788A30);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t SessionViewModel.$sessionInitializationInfo.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D10, &qword_264788F50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B58, &unk_264788A30);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$sessionInitializationInfo.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D10, &qword_264788F50);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__sessionInitializationInfo;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B58, &unk_264788A30);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t SessionViewModel.initiatorEligibility.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v2);

  v0 = v2;

  return v0;
}

uint64_t SessionViewModel.receiverEligibility.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v2);

  v0 = v2[1];

  return v0;
}

uint64_t sub_264622634(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = sub_264783EE4();
  return a4(v5);
}

uint64_t sub_2646226B4()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  swift_retain_n();
  v6 = sub_264783E14();
  v7 = sub_2647859F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v1;
    v15 = v9;
    *v8 = 136315650;

    v10 = sub_264785764();
    v12 = sub_2646DF234(v10, v11, &v15);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2646DF234(0x616974696E497369, 0xEE00676E697A696CLL, &v15);
    *(v8 + 22) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v14);

    *(v8 + 24) = v14;

    _os_log_impl(&dword_264605000, v6, v7, "%s, %s: %{BOOL}d", v8, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x266740650](v9, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t (*SessionViewModel.isInitializing.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4((a1 + 9));

  *(a1 + 8) = *(a1 + 9);
  return sub_2646229E8;
}

uint64_t sub_264622A2C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t SessionViewModel.$isInitializing.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$isInitializing.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__isInitializing;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*SessionViewModel.refreshingEligibility.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_264783EC4();
  return sub_264622F4C;
}

uint64_t sub_264622F6C(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t SessionViewModel.$refreshingEligibility.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$refreshingEligibility.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__refreshingEligibility;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*SessionViewModel.refreshingInitiatorEligibility.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2646234A8(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t SessionViewModel.$refreshingInitiatorEligibility.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$refreshingInitiatorEligibility.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__refreshingInitiatorEligibility;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_264623924(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t (*SessionViewModel.refreshingReceiverEligibility.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

void sub_264623A34(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_264623AB8(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t SessionViewModel.$refreshingReceiverEligibility.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$refreshingReceiverEligibility.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__refreshingReceiverEligibility;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

BOOL SessionViewModel.isStartingAndSending.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v5);

  v0 = v5;
  if (v5)
  {
    v1 = [v5 sessionState];

    if (v1 == 10)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v5);

  v3 = v5;
  if (!v5)
  {
    return 0;
  }

  v4 = [v5 sessionState];

  return v4 == 11;
}

uint64_t sub_264624044(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();

  v8 = sub_264783EE4();
  return a7(v8);
}

uint64_t sub_2646240F4()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  swift_retain_n();
  v6 = sub_264783E14();
  v7 = sub_2647859F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v1;
    v15 = v9;
    *v8 = 136315650;

    v10 = sub_264785764();
    v12 = sub_2646DF234(v10, v11, &v15);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2646DF234(0xD000000000000011, 0x8000000264794900, &v15);
    *(v8 + 22) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v14);

    *(v8 + 24) = v14;

    _os_log_impl(&dword_264605000, v6, v7, "%s, %s: %{BOOL}d", v8, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x266740650](v9, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t (*SessionViewModel.showContactPicker.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4((a1 + 9));

  *(a1 + 8) = *(a1 + 9);
  return sub_264624420;
}

uint64_t sub_264624448(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v7;

  v8 = sub_264783EE4();
  return a5(v8);
}

uint64_t sub_2646244E8(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t SessionViewModel.$showContactPicker.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$showContactPicker.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__showContactPicker;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t SessionViewModel.isCancelling.getter()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCancelling;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SessionViewModel.isCancelling.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCancelling;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_2646249AC();
}

uint64_t sub_2646249AC()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  swift_retain_n();
  v6 = sub_264783E14();
  v7 = sub_2647859F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315650;
    v15 = v1;

    v10 = sub_264785764();
    v12 = sub_2646DF234(v10, v11, &v16);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2646DF234(0x6C65636E61437369, 0xEC000000676E696CLL, &v16);
    *(v8 + 22) = 1024;
    v13 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCancelling;
    swift_beginAccess();
    LODWORD(v13) = *(v1 + v13);

    *(v8 + 24) = v13;

    _os_log_impl(&dword_264605000, v6, v7, "%s, %s: %{BOOL}d", v8, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x266740650](v9, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t (*SessionViewModel.isCancelling.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_264624C88;
}

uint64_t sub_264624CA0(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id sub_264624CE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v6);

  v0 = v6;
  if (!v6)
  {
    goto LABEL_7;
  }

  if (![v6 isActiveState])
  {

LABEL_7:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v6);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v6);

    return v6;
  }

  v1 = [v0 configuration];
  if (v1 && (v2 = v1, v3 = [v1 destination], v2, v3))
  {
    v4 = [v3 destinationType];

    return v4;
  }

  else
  {

    return 0;
  }
}

uint64_t SessionViewModel.didDestinationChange.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4((&v1 + 1));

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v1);

  return v1;
}