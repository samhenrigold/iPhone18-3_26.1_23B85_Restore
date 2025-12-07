uint64_t sub_1CF80B204(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, char *a5, unint64_t a6, int a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11, char *a12)
{
  v105 = a8;
  v103 = a7;
  v104 = a6;
  v107 = a5;
  v111 = a3;
  v108 = a2;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v106);
  v15 = (&v98 - v14);
  v16 = type metadata accessor for VFSItem(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v98 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v98 - v23;
  v110 = sub_1CF9E6118();
  v109 = *(v110 - 1);
  MEMORY[0x1EEE9AC00](v110);
  v26 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v98 - v28;
  v112 = a4;
  if (a1)
  {
    v30 = a1;
    v31 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFDA34C(v108, v24, type metadata accessor for VFSItem);
    v32 = a1;
    v33 = sub_1CF9E6108();
    v34 = sub_1CF9E72A8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v113[0] = v37;
      *v35 = 136315394;
      v38 = v24[8];
      *&v114 = *v24;
      BYTE8(v114) = v38;
      v39 = sub_1CEFD5338(v24, type metadata accessor for VFSItem);
      v40 = VFSItemID.description.getter(v39);
      v42 = v41;
      v43 = sub_1CEFD0DF0(v40, v41, v113);
      v42, v44, v45, v46, v47, v48, v49, v50;
      *(v35 + 4) = v43;
      *(v35 + 12) = 2112;
      v51 = sub_1CF9E57E8();
      v52 = [v51 fp_prettyDescription];

      *(v35 + 14) = v52;
      *v36 = v52;
      _os_log_impl(&dword_1CEFC7000, v33, v34, "requestMaterialization(%s) failed for vfsItemID: %@", v35, 0x16u);
      sub_1CEFCCC44(v36, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v36, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1D386CDC0](v37, -1, -1);
      MEMORY[0x1D386CDC0](v35, -1, -1);
    }

    else
    {
      sub_1CEFD5338(v24, type metadata accessor for VFSItem);
    }

    (v109)[1](v29, v110);
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v72 = a1;
    v111(v15);

    v73 = &unk_1EC4BF300;
    v74 = &unk_1CFA006B0;
    v75 = v15;
  }

  else
  {
    v102 = v17;
    v106 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v53 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v54 = v108;
    sub_1CEFDA34C(v108, v21, type metadata accessor for VFSItem);
    v55 = sub_1CF9E6108();
    v56 = sub_1CF9E7298();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v113[0] = v58;
      *v57 = 136315138;
      v59 = v21[8];
      *&v114 = *v21;
      BYTE8(v114) = v59;
      v60 = sub_1CEFD5338(v21, type metadata accessor for VFSItem);
      v61 = VFSItemID.description.getter(v60);
      v63 = v62;
      v64 = sub_1CEFD0DF0(v61, v62, v113);
      v63, v65, v66, v67, v68, v69, v70, v71;
      *(v57 + 4) = v64;
      _os_log_impl(&dword_1CEFC7000, v55, v56, "requestMaterialization completed for vfsItemID %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x1D386CDC0](v58, -1, -1);
      MEMORY[0x1D386CDC0](v57, -1, -1);
    }

    else
    {
      sub_1CEFD5338(v21, type metadata accessor for VFSItem);
    }

    (v109)[1](v26, v110);
    v76 = v106;
    v77 = v107;
    v78 = *(*(v107 + 4) + 16);
    v79 = *(v54 + 8);
    v120 = *v54;
    v121 = v79;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;

    v80 = objc_sync_enter(v77);
    v81 = v102;
    if (v80)
    {
      MEMORY[0x1EEE9AC00](v80);
      *(&v98 - 2) = v77;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v98 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v109 = *&v77[qword_1EDEADB30];
    v110 = v109;
    v82 = objc_sync_exit(v77);
    if (v82)
    {
      MEMORY[0x1EEE9AC00](v82);
      *(&v98 - 2) = v107;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v98 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    v106 = a12;
    v101 = a11;
    v100 = a10;
    v99 = a9;
    sub_1CEFDA34C(v54, v76, type metadata accessor for VFSItem);
    v83 = (*(v81 + 80) + 16) & ~*(v81 + 80);
    v84 = (v18 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
    v85 = (v84 + 23) & 0xFFFFFFFFFFFFFFF8;
    v86 = (v85 + 31) & 0xFFFFFFFFFFFFFFF8;
    v87 = (v86 + 17) & 0xFFFFFFFFFFFFFFF8;
    v88 = swift_allocObject();
    sub_1CEFDA0C4(v76, v88 + v83, type metadata accessor for VFSItem);
    v89 = (v88 + v84);
    v90 = v112;
    *v89 = v111;
    v89[1] = v90;
    v91 = v104;
    *(v88 + v85) = v104;
    v92 = v88 + ((v85 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v92 = v107;
    *(v92 + 8) = v103 & 1;
    v93 = v88 + v86;
    *v93 = v105;
    *(v93 + 8) = v99 & 1;
    *(v93 + 9) = v100 & 1;
    *(v88 + v87) = v101;
    v94 = v106;
    *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = v106;
    v95 = *(*v78 + 136);

    sub_1CEFD09A0(v91);

    v96 = v94;
    v95(&v120, &v114, v109, 0, sub_1CF8FBDD0, v88);

    v113[2] = v116;
    v113[3] = v117;
    v113[4] = v118;
    v113[5] = v119;
    v113[0] = v114;
    v113[1] = v115;
    v73 = &unk_1EC4BECD0;
    v74 = &unk_1CF9FEF80;
    v75 = v113;
  }

  return sub_1CEFCCC44(v75, v73, v74);
}

void sub_1CF80BB68(uint64_t a1, uint64_t a2, void (*a3)(void *), void *a4, unint64_t a5, uint64_t a6, int a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11, void *a12)
{
  v269 = a8;
  v268 = a7;
  v286 = a6;
  v284 = a5;
  v292 = a3;
  v293 = a4;
  v294 = a1;
  v295 = a2;
  v264 = sub_1CF9E63D8();
  v263 = *(v264 - 8);
  MEMORY[0x1EEE9AC00](v264);
  v262 = &v261 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v279 = &v261 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v287 = &v261 - v16;
  v277 = sub_1CF9E6068();
  v276 = *(v277 - 8);
  MEMORY[0x1EEE9AC00](v277);
  v272 = &v261 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v270 = &v261 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v282 = &v261 - v21;
  v271 = type metadata accessor for Signpost(0);
  v273 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271);
  v278 = &v261 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v275 = &v261 - v24;
  v274 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v283 = &v261 - v27;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v291);
  v285 = (&v261 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v290 = (&v261 - v30);
  v31 = type metadata accessor for VFSItem(0);
  v289 = *(v31 - 8);
  v32 = *(v289 + 8);
  MEMORY[0x1EEE9AC00](v31);
  v280 = &v261 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v267 = &v261 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v265 = &v261 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v288 = &v261 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v261 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v261 - v43;
  v45 = sub_1CF9E6118();
  v46 = *(v45 - 8);
  v296 = v45;
  v297 = v46;
  MEMORY[0x1EEE9AC00](v45);
  v281 = &v261 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v266 = &v261 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v261 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v261 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v56);
  v58 = (&v261 - v57);
  sub_1CEFCCBDC(v294, &v261 - v57, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v59 = *v58;
    v60 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFDA34C(v295, v44, type metadata accessor for VFSItem);
    v61 = v59;
    v62 = sub_1CF9E6108();
    v63 = sub_1CF9E7298();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v300 = v66;
      *v64 = 136315394;
      v67 = v44[8];
      *&aBlock = *v44;
      BYTE8(aBlock) = v67;
      v68 = sub_1CEFD5338(v44, type metadata accessor for VFSItem);
      v69 = VFSItemID.description.getter(v68);
      v71 = v70;
      v72 = sub_1CEFD0DF0(v69, v70, &v300);
      v71, v73, v74, v75, v76, v77, v78, v79;
      *(v64 + 4) = v72;
      *(v64 + 12) = 2112;
      swift_getErrorValue();
      v80 = Error.prettyDescription.getter(v298, v299);
      *(v64 + 14) = v80;
      *v65 = v80;
      _os_log_impl(&dword_1CEFC7000, v62, v63, "requestMaterialization(%s) post-materialization lookup returned an error %@", v64, 0x16u);
      sub_1CEFCCC44(v65, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v65, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x1D386CDC0](v66, -1, -1);
      MEMORY[0x1D386CDC0](v64, -1, -1);
    }

    else
    {
      sub_1CEFD5338(v44, type metadata accessor for VFSItem);
    }

    (*(v297 + 8))(v55, v296);
    v101 = v290;
    *v290 = v59;
    swift_storeEnumTagMultiPayload();
    v102 = v59;
    v292(v101);

    v103 = v101;
    goto LABEL_32;
  }

  v81 = v295;
  v82 = v289;
  if ((*(v289 + 6))(v58, 1, v31) != 1)
  {
    v104 = v288;
    sub_1CEFDA0C4(v58, v288, type metadata accessor for VFSItem);
    v105 = v104 + *(v31 + 28);
    v106 = type metadata accessor for ItemMetadata(0);
    if (((*(v105 + v106[28]) & 1) != 0 || (v107 = sub_1CF90C94C(v284)) == 0 || (v108 = v107, v109 = [v107 requestedExtent], v111 = v110, v108, v111 == -1) || v109 <= 0 && v111 >= *(v105 + v106[26])) && *(v105 + v106[20]) == 1)
    {
      v295 = a11;
      LODWORD(v294) = a10;
      LODWORD(v291) = a9;
      v112 = fpfs_current_or_default_log();
      v113 = v266;
      sub_1CF9E6128();
      v114 = v265;
      sub_1CEFDA34C(v104, v265, type metadata accessor for VFSItem);
      v115 = sub_1CF9E6108();
      v116 = sub_1CF9E7298();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v300 = v118;
        *v117 = 136315138;
        v119 = *(v114 + 8);
        *&aBlock = *v114;
        BYTE8(aBlock) = v119;
        v120 = sub_1CEFD5338(v114, type metadata accessor for VFSItem);
        v121 = VFSItemID.description.getter(v120);
        v123 = v122;
        v124 = sub_1CEFD0DF0(v121, v122, &v300);
        v123, v125, v126, v127, v128, v129, v130, v131;
        *(v117 + 4) = v124;
        _os_log_impl(&dword_1CEFC7000, v115, v116, "requestMaterialization(%s) post-materialization lookup returned a dataless item - force ingestion", v117, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v118);
        v132 = v118;
        v104 = v288;
        MEMORY[0x1D386CDC0](v132, -1, -1);
        MEMORY[0x1D386CDC0](v117, -1, -1);
      }

      else
      {
        sub_1CEFD5338(v114, type metadata accessor for VFSItem);
      }

      (*(v297 + 8))(v113, v296);
      v179 = *v104;
      v180 = *(v104 + 8);
      v181 = v267;
      sub_1CEFDA34C(v104, v267, type metadata accessor for VFSItem);
      v182 = (*(v82 + 80) + 88) & ~*(v82 + 80);
      v183 = swift_allocObject();
      v184 = v293;
      *(v183 + 16) = v292;
      *(v183 + 24) = v184;
      *(v183 + 32) = v268 & 1;
      v185 = v286;
      v186 = v269;
      *(v183 + 40) = v286;
      *(v183 + 48) = v186;
      *(v183 + 56) = v291 & 1;
      *(v183 + 57) = v294 & 1;
      v187 = v284;
      v188 = v295;
      *(v183 + 64) = v284;
      *(v183 + 72) = v188;
      *(v183 + 80) = a12;
      sub_1CEFDA0C4(v181, v183 + v182, type metadata accessor for VFSItem);
      v189 = swift_allocObject();
      *(v189 + 16) = v179;
      *(v189 + 24) = v180;
      *(v189 + 32) = v187;
      *(v189 + 40) = v185;
      *(v189 + 48) = sub_1CF8FBEC8;
      *(v189 + 56) = v183;
      v296 = v189;
      v190 = swift_allocObject();
      *(v190 + 16) = sub_1CF8FBEC8;
      *(v190 + 24) = v183;
      v297 = v190;

      sub_1CEFD09A0(v187);

      sub_1CEFD09A0(v187);

      v295 = v183;

      v191 = a12;
      v294 = fpfs_adopt_log();
      if (qword_1EDEAE980 != -1)
      {
        swift_once();
      }

      v192 = qword_1EDEBBE40;
      v193 = v276;
      v194 = v282;
      v195 = v277;
      (*(v276 + 56))(v282, 1, 1, v277);
      strcpy(&aBlock, "async batch ");
      BYTE13(aBlock) = 0;
      HIWORD(aBlock) = -5120;
      v196 = sub_1CF9E7988();
      v198 = v197;
      MEMORY[0x1D3868CC0](v196);
      v198, v199, v200, v201, v202, v203, v204, v205;
      v206 = aBlock;
      v207 = v194;
      v208 = v270;
      sub_1CEFCCBDC(v207, v270, &unk_1EC4BED20, &unk_1CFA00700);
      v209 = *(v193 + 48);
      v210 = v209(v208, 1, v195);
      v211 = v272;
      if (v210 == 1)
      {
        v212 = v192;
        sub_1CF9E6048();
        if (v209(v208, 1, v195) != 1)
        {
          sub_1CEFCCC44(v208, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        (*(v193 + 32))(v272, v208, v195);
      }

      v213 = v283;
      (*(v193 + 16))(v283, v211, v195);
      v214 = v271;
      *(v213 + *(v271 + 20)) = v192;
      v215 = v213 + *(v214 + 24);
      *v215 = "DB queue wait";
      *(v215 + 8) = 13;
      *(v215 + 16) = 2;
      v216 = v192;
      v217 = sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v218 = swift_allocObject();
      *(v218 + 16) = xmmword_1CF9FA450;
      *(v218 + 56) = MEMORY[0x1E69E6158];
      *(v218 + 64) = sub_1CEFD51C4();
      *(v218 + 32) = v206;
      sub_1CF9E6028(v217, &dword_1CEFC7000, v216, "DB queue wait", 13, 2, v213, "%s", 2);
      v218, v219, v220, v221, v222, v223, v224, v225;
      (*(v193 + 8))(v211, v195);
      sub_1CEFCCC44(v282, &unk_1EC4BED20, &unk_1CFA00700);
      v226 = *(v286 + 64);
      v292 = *(v286 + 168);
      v293 = v226;
      v290 = sub_1CF9E6448();
      v291 = *(v290 - 1);
      (*(v291 + 56))(v287, 1, 1, v290);
      v227 = v275;
      sub_1CEFDA34C(v213, v275, type metadata accessor for Signpost);
      v228 = (*(v273 + 80) + 16) & ~*(v273 + 80);
      v229 = (v274 + v228 + 7) & 0xFFFFFFFFFFFFFFF8;
      v230 = swift_allocObject();
      sub_1CEFDA0C4(v227, v230 + v228, type metadata accessor for Signpost);
      v231 = (v230 + v229);
      v289 = sub_1CF552D94;
      v232 = v297;
      *v231 = sub_1CF552D94;
      v231[1] = v232;
      v233 = v278;
      sub_1CEFDA34C(v213, v278, type metadata accessor for Signpost);
      v234 = (v229 + 23) & 0xFFFFFFFFFFFFFFF8;
      v235 = (v234 + 15) & 0xFFFFFFFFFFFFFFF8;
      v236 = (v235 + 25) & 0xFFFFFFFFFFFFFFF8;
      v237 = (v236 + 23) & 0xFFFFFFFFFFFFFFF8;
      v238 = swift_allocObject();
      v239 = v238 + v228;
      v240 = v290;
      sub_1CEFDA0C4(v233, v239, type metadata accessor for Signpost);
      v241 = (v238 + v229);
      *v241 = sub_1CF045408;
      v241[1] = 0;
      *(v238 + v234) = v286;
      v242 = v238 + v235;
      *v242 = "propagateToFP(itemID:request:completion:)";
      *(v242 + 8) = 41;
      *(v242 + 16) = 2;
      v243 = (v238 + v236);
      v244 = v291;
      v245 = v297;
      *v243 = v289;
      v243[1] = v245;
      v246 = (v238 + v237);
      v247 = v296;
      *v246 = sub_1CF8FBF6C;
      v246[1] = v247;
      v248 = swift_allocObject();
      v248[2] = sub_1CF903308;
      v248[3] = v230;
      v249 = v292;
      v248[4] = v292;
      swift_retain_n();

      v250 = v249;

      v251 = fpfs_current_log();
      v292 = *(v250 + 2);
      v252 = v279;
      sub_1CEFCCBDC(v287, v279, &unk_1EC4BE370, qword_1CFA01B30);
      if ((*(v244 + 48))(v252, 1, v240) == 1)
      {
        sub_1CEFCCC44(v252, &unk_1EC4BE370, qword_1CFA01B30);
        v253 = QOS_CLASS_UNSPECIFIED;
      }

      else
      {
        v254 = v262;
        sub_1CF9E6438();
        (*(v244 + 8))(v252, v240);
        v253 = sub_1CF9E63C8();
        (*(v263 + 8))(v254, v264);
      }

      v255 = swift_allocObject();
      v255[2] = v251;
      v255[3] = sub_1CF4858EC;
      v255[4] = v238;
      v305 = sub_1CF2BA17C;
      v306 = v255;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v303 = sub_1CEFCA444;
      v304 = &block_descriptor_2959;
      v256 = _Block_copy(&aBlock);
      v257 = v251;

      v305 = sub_1CF2BA180;
      v306 = v248;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v303 = sub_1CEFCA444;
      v304 = &block_descriptor_2962;
      v258 = _Block_copy(&aBlock);

      fp_task_tracker_async_and_qos(v292, v293, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v253, v256, v258);
      _Block_release(v258);
      _Block_release(v256);

      sub_1CEFCCC44(v287, &unk_1EC4BE370, qword_1CFA01B30);
      sub_1CEFD5338(v283, type metadata accessor for Signpost);
      v259 = v294;
      v260 = fpfs_adopt_log();

      sub_1CEFD5338(v288, type metadata accessor for VFSItem);
    }

    else
    {
      v133 = fpfs_current_or_default_log();
      v134 = v281;
      sub_1CF9E6128();
      v135 = v280;
      sub_1CEFDA34C(v104, v280, type metadata accessor for VFSItem);
      v136 = sub_1CF9E6108();
      v137 = sub_1CF9E7298();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v300 = v139;
        *v138 = 136315138;
        v140 = *(v135 + 8);
        *&aBlock = *v135;
        BYTE8(aBlock) = v140;
        v141 = sub_1CEFD5338(v135, type metadata accessor for VFSItem);
        v142 = VFSItemID.description.getter(v141);
        v144 = v143;
        v145 = sub_1CEFD0DF0(v142, v143, &v300);
        v144, v146, v147, v148, v149, v150, v151, v152;
        *(v138 + 4) = v145;
        _os_log_impl(&dword_1CEFC7000, v136, v137, "requestMaterialization(%s) post-materialization lookup succeeded", v138, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v139);
        MEMORY[0x1D386CDC0](v139, -1, -1);
        MEMORY[0x1D386CDC0](v138, -1, -1);
      }

      else
      {
        sub_1CEFD5338(v135, type metadata accessor for VFSItem);
      }

      (*(v297 + 8))(v134, v296);
      v158 = v290;
      sub_1CEFDA34C(v81, v290, type metadata accessor for VFSItem);
      swift_storeEnumTagMultiPayload();
      v292(v158);
      sub_1CEFCCC44(v158, &unk_1EC4BF300, &unk_1CFA006B0);
      sub_1CEFD5338(v104, type metadata accessor for VFSItem);
    }

    return;
  }

  v83 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFDA34C(v81, v41, type metadata accessor for VFSItem);
  v84 = sub_1CF9E6108();
  v85 = sub_1CF9E7298();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v300 = v87;
    *v86 = 136315138;
    v88 = v41[8];
    *&aBlock = *v41;
    BYTE8(aBlock) = v88;
    v89 = sub_1CEFD5338(v41, type metadata accessor for VFSItem);
    v90 = VFSItemID.description.getter(v89);
    v92 = v91;
    v93 = sub_1CEFD0DF0(v90, v91, &v300);
    v92, v94, v95, v96, v97, v98, v99, v100;
    *(v86 + 4) = v93;
    _os_log_impl(&dword_1CEFC7000, v84, v85, "requestMaterialization(%s) post-materialization lookup returned no item", v86, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v87);
    MEMORY[0x1D386CDC0](v87, -1, -1);
    MEMORY[0x1D386CDC0](v86, -1, -1);
  }

  else
  {
    sub_1CEFD5338(v41, type metadata accessor for VFSItem);
  }

  v153 = (*(v297 + 8))(v52, v296);
  v154 = *v81;
  v155 = *(v81 + 8);
  if (v155 != 2 || v154)
  {
    if (v155 != 2 || v154 != 1)
    {
      *&aBlock = 0x2F73662F70665F5FLL;
      *(&aBlock + 1) = 0xE800000000000000;
      v300 = v154;
      v301 = v155;
      v159 = VFSItemID.description.getter(v153);
      v161 = v160;
      MEMORY[0x1D3868CC0](v159);
      v161, v162, v163, v164, v165, v166, v167, v168;
      v169 = *(&aBlock + 1);
      v157 = sub_1CF9E6888();
      v169, v170, v171, v172, v173, v174, v175, v176;
      goto LABEL_30;
    }

    v156 = MEMORY[0x1E6967280];
  }

  else
  {
    v156 = MEMORY[0x1E6967258];
  }

  v157 = *v156;
LABEL_30:
  v177 = FPItemNotFoundError();

  if (v177)
  {
    v178 = v285;
    *v285 = v177;
    swift_storeEnumTagMultiPayload();
    v292(v178);
    v103 = v178;
LABEL_32:
    sub_1CEFCCC44(v103, &unk_1EC4BF300, &unk_1CFA006B0);
    return;
  }

  __break(1u);
}

uint64_t sub_1CF80D454(uint64_t a1, void (**a2)(const char *, uint64_t, uint64_t, uint64_t, uint64_t (*)(uint64_t a1), uint64_t, void (*)(void *a1), uint64_t), void (*a3)(char *), uint64_t a4, int a5, void *a6, uint64_t a7, int a8, unsigned __int8 a9, unint64_t a10, uint64_t a11, char *a12, uint64_t a13)
{
  v266 = a8;
  LODWORD(v267) = a5;
  v268 = a6;
  v269 = a7;
  v272 = a3;
  v273 = a4;
  v271 = a2;
  v13 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v261 = v250 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = sub_1CF9E5268();
  v262 = *(v263 - 1);
  MEMORY[0x1EEE9AC00](v263);
  v260 = v250 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for VFSItem(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v259 = v250 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v264 = v250 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v265 = *(v20 - 8);
  v21 = *(v265 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v250 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v250 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v250 - v29;
  v31 = sub_1CF9E6118();
  v270 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v250 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = v250 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v250 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v40);
  if (v271)
  {
    v43 = v271;
    *(v250 - v42) = v271;
    v44 = v250 - v42;
    swift_storeEnumTagMultiPayload();
    v45 = v43;
    v272(v44);
    v46 = &unk_1EC4BF300;
    v47 = &unk_1CFA006B0;
    v48 = v44;
    return sub_1CEFCCC44(v48, v46, v47);
  }

  v250[0] = v250 - v42;
  v250[1] = v41;
  v255 = v39;
  v251 = v28;
  v252 = v30;
  v253 = v24;
  v254 = v21;
  v257 = v250 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = v36;
  v271 = v31;
  v258 = v27;
  v49 = fpfs_current_or_default_log();
  if (v267)
  {
    v50 = a10;
    v51 = v255;
    sub_1CF9E6128();
    sub_1CEFD09A0(a10);
    sub_1CEFD09A0(a10);
    v52 = v269;

    v53 = sub_1CF9E6108();
    v54 = sub_1CF9E7298();
    v55 = os_log_type_enabled(v53, v54);
    v267 = a10;
    if (v55)
    {
      LODWORD(v263) = v54;
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v274[0] = v57;
      *v56 = 136315394;
      v58 = swift_beginAccess();
      v59 = *(v52 + 32);
      v60 = *(v52 + 40);
      v61 = v264;
      v62 = v252;
      if (*(v52 + 41))
      {
        v63 = NSFileProviderItemIdentifier.description.getter(v59);
        v65 = v64;
        sub_1CEFD0994(v59, v60, 1);
      }

      else
      {
        v276 = *(v52 + 32);
        v277 = v60;
        v63 = VFSItemID.description.getter(v58);
        v65 = v93;
      }

      v94 = sub_1CEFD0DF0(v63, v65, v274);
      v65, v95, v96, v97, v98, v99, v100, v101;
      *(v56 + 4) = v94;
      *(v56 + 12) = 2080;
      v50 = v267;
      v102 = sub_1CEFD11AC(v267);
      v104 = v103;
      sub_1CEFD0A98(v50);
      sub_1CEFD0A98(v50);
      v105 = sub_1CEFD0DF0(v102, v104, v274);
      v104, v106, v107, v108, v109, v110, v111, v112;
      *(v56 + 14) = v105;
      _os_log_impl(&dword_1CEFC7000, v53, v263, "Request to materialize content of itemID %s reason %s", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v57, -1, -1);
      MEMORY[0x1D386CDC0](v56, -1, -1);

      v263 = *(v270 + 8);
      (v263)(v255, v271);
      v85 = v258;
      v86 = v254;
    }

    else
    {
      sub_1CEFD0A98(a10);
      sub_1CEFD0A98(a10);

      v263 = *(v270 + 8);
      (v263)(v51, v271);
      v85 = v258;
      v86 = v254;
      v61 = v264;
      v62 = v252;
    }

    LODWORD(v259) = (v50 >> 58) & 0x3C | (v50 >> 1) & 3;
    v113 = v257;
    v114 = v265;
    v115 = v251;
    if (v259 == 2)
    {
      v116 = swift_projectBox();
      sub_1CEFCCBDC(v116, v62, &unk_1EC4C4F40, qword_1CFA0F4C0);
      *(v62 + 8), v117, v118, v119, v120, v121, v122, v123;
      v124 = v115[12];

      v126 = *(v62 + v115[20]);
      v125 = sub_1CF9E5A58();
      (*(*(v125 - 8) + 8))(v62 + v124, v125);
    }

    else
    {
      v126 = 0;
    }

    v264 = a12;
    v262 = a11;
    LODWORD(v261) = a9;
    sub_1CEFCCBDC(v268 + qword_1EDEBBC18, v61, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v127 = type metadata accessor for TelemetrySignposter(0);
    if ((*(*(v127 - 8) + 48))(v61, 1, v127) == 1)
    {
      sub_1CEFCCC44(v61, &qword_1EC4BFB10, &unk_1CFA12AD0);
      v128 = 1;
    }

    else
    {
      sub_1CF519DE8(v126, v85);
      sub_1CEFD5338(v61, type metadata accessor for TelemetrySignposter);
      v128 = 0;
    }

    v129 = v253;
    v130 = type metadata accessor for TelemetrySignpost(0);
    (*(*(v130 - 8) + 56))(v85, v128, 1, v130);
    sub_1CEFCCBDC(v85, v129, qword_1EC4C1588, &unk_1CFA0A260);
    v131 = *(v114 + 80);
    v132 = (v131 + 16) & ~v131;
    v133 = swift_allocObject();
    sub_1CEFE55D0(v129, v133 + v132, qword_1EC4C1588, &unk_1CFA0A260);
    v134 = (v133 + ((v86 + v132 + 7) & 0xFFFFFFFFFFFFFFF8));
    v135 = v272;
    v136 = v273;
    *v134 = v272;
    v134[1] = v136;
    sub_1CEFCCBDC(v85, v113, qword_1EC4C1588, &unk_1CFA0A260);
    v137 = (v131 + 24) & ~v131;
    v260 = ((v137 + v86 + 7) & 0xFFFFFFFFFFFFFFF8);
    v138 = (v137 + v86 + 31) & 0xFFFFFFFFFFFFFFF8;
    v265 = (v138 + 15) & 0xFFFFFFFFFFFFFFF8;
    v139 = (v138 + 31) & 0xFFFFFFFFFFFFFFF8;
    v140 = (v139 + 15) & 0xFFFFFFFFFFFFFFF8;
    v141 = (v140 + 15) & 0xFFFFFFFFFFFFFFF8;
    v142 = swift_allocObject();
    v143 = v267;
    *(v142 + 16) = v267;
    sub_1CEFE55D0(v257, v142 + v137, qword_1EC4C1588, &unk_1CFA0A260);
    v144 = &v260[v142];
    *v144 = v135;
    *(v144 + 1) = v136;
    v145 = (v266 & 1) == 0;
    v144[16] = v266 & 1;
    v146 = v268;
    v147 = v269;
    *(v142 + v138) = v268;
    v148 = v142 + v265;
    *v148 = v147;
    *(v148 + 8) = v261 & 1;
    *(v142 + v139) = v262;
    v149 = v264;
    *(v142 + v140) = v264;
    v150 = v147;
    v151 = v142 + v141;
    v152 = v146;
    *v151 = sub_1CF903314;
    *(v151 + 8) = v133;
    *(v151 + 16) = 0;
    if (v145)
    {
      v153 = 1;
    }

    else
    {
      v153 = 2;
    }

    LODWORD(v262) = v153;
    v154 = objc_allocWithZone(MEMORY[0x1E696AE38]);

    sub_1CEFD09A0(v143);

    v155 = v152;

    v156 = v149;
    v273 = v133;

    v157 = [v154 init];
    v158 = swift_allocObject();
    v158[2] = sub_1CF903318;
    v158[3] = v142;
    v265 = v158;
    v158[4] = v143;
    sub_1CEFD09A0(v143);

    sub_1CEFD09A0(v143);
    v272 = v142;

    v159 = fpfs_current_or_default_log();
    v160 = v256;
    sub_1CF9E6128();
    sub_1CEFD09A0(v143);
    sub_1CEFD09A0(v143);

    v161 = sub_1CF9E6108();
    v162 = sub_1CF9E7298();
    if (os_log_type_enabled(v161, v162))
    {
      v264 = v157;
      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v275 = v164;
      *v163 = 136315906;
      v165 = swift_beginAccess();
      v166 = *(v150 + 32);
      v167 = *(v150 + 40);
      if (*(v150 + 41))
      {
        v168 = NSFileProviderItemIdentifier.description.getter(v166);
        v170 = v169;
        sub_1CEFD0994(v166, v167, 1);
      }

      else
      {
        v276 = *(v150 + 32);
        v277 = v167;
        v168 = VFSItemID.description.getter(v165);
        v170 = v171;
      }

      v172 = sub_1CEFD0DF0(v168, v170, &v275);
      v170, v173, v174, v175, v176, v177, v178, v179;
      *(v163 + 4) = v172;
      *(v163 + 12) = 2080;
      if (v266)
      {
        v180 = 0xD000000000000010;
      }

      else
      {
        v180 = 0x74616761706F7270;
      }

      if (v266)
      {
        v181 = 0x80000001CFA2C3C0;
      }

      else
      {
        v181 = 0xED000053466F5465;
      }

      v182 = sub_1CEFD0DF0(v180, v181, &v275);
      v181, v183, v184, v185, v186, v187, v188, v189;
      *(v163 + 14) = v182;
      *(v163 + 22) = 2080;
      v143 = v267;
      v190 = sub_1CEFD11AC(v267);
      v192 = v191;
      sub_1CEFD0A98(v143);
      sub_1CEFD0A98(v143);
      v193 = sub_1CEFD0DF0(v190, v192, &v275);
      v192, v194, v195, v196, v197, v198, v199, v200;
      *(v163 + 24) = v193;
      *(v163 + 32) = 2048;
      *(v163 + 34) = 0;
      _os_log_impl(&dword_1CEFC7000, v161, v162, "Lookup itemID %s with behavior %s request %s iteration %ld", v163, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v164, -1, -1);
      MEMORY[0x1D386CDC0](v163, -1, -1);

      (v263)(v256, v271);
      v150 = v269;
      v157 = v264;
    }

    else
    {
      sub_1CEFD0A98(v143);
      sub_1CEFD0A98(v143);

      (v263)(v160, v271);
    }

    swift_beginAccess();
    v201 = *(v150 + 32);
    v202 = *(v150 + 40);
    if (*(v150 + 41))
    {
      v203 = qword_1EDEA34B0;
      v204 = v201;
      if (v203 != -1)
      {
        swift_once();
      }

      v205 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v207 = v206;
      v209 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v215 = v208;
      if (v205 == v209 && v207 == v208)
      {
        v207, v208, v209, v210, v211, v212, v213, v214;
        v215, v216, v217, v218, v219, v220, v221, v222;
        sub_1CEFD0994(v201, v202, 1);
LABEL_43:
        sub_1CF90CAC8(v143, sub_1CF796A0C, v265);
LABEL_49:

        sub_1CEFD0A98(v143);

        v46 = qword_1EC4C1588;
        v47 = &unk_1CFA0A260;
        v48 = v258;
        return sub_1CEFCCC44(v48, v46, v47);
      }

      v223 = sub_1CF9E8048();
      v207, v224, v225, v226, v227, v228, v229, v230;
      v215, v231, v232, v233, v234, v235, v236, v237;
      sub_1CEFD0994(v201, v202, 1);
      if (v223)
      {
        goto LABEL_43;
      }
    }

    else if (!v201 && v202 == 2)
    {
      goto LABEL_43;
    }

    if (v259 == 30)
    {
      v238 = *((v143 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v239 = v238;
    }

    else
    {
      v240 = swift_allocObject();
      *(v240 + 16) = v143;
      v239 = v240 | 0x7000000000000004;
      v238 = v143;
    }

    sub_1CEFD09A0(v238);
    v241 = swift_allocObject();
    v242 = v265;
    *(v241 + 16) = sub_1CF796A0C;
    *(v241 + 24) = v242;
    v243 = v155;
    *(v241 + 32) = v155;
    *(v241 + 40) = v262;
    *(v241 + 48) = v143;
    *(v241 + 56) = v150;
    *(v241 + 64) = 0;
    *(v241 + 72) = v157;
    *(v241 + 80) = 0;
    v244 = swift_allocObject();
    *(v244 + 16) = v150;
    *(v244 + 24) = v155;
    *(v244 + 32) = 0;
    *(v244 + 40) = sub_1CF796A90;
    *(v244 + 48) = v241;
    *(v244 + 56) = v239;
    v245 = v239;
    v246 = swift_allocObject();
    *(v246 + 16) = sub_1CF796A90;
    *(v246 + 24) = v241;
    v271 = (*v243 + 472);
    v247 = *v271;

    sub_1CEFD09A0(v143);

    v248 = v157;
    sub_1CEFD09A0(v245);
    v247("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v246, sub_1CF796A9C, v244);

    sub_1CEFD0A98(v245);
    goto LABEL_49;
  }

  v66 = v33;
  sub_1CF9E6128();
  v67 = v259;
  sub_1CEFDA34C(a13, v259, type metadata accessor for VFSItem);
  v68 = sub_1CF9E6108();
  v69 = sub_1CF9E7298();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v274[0] = v71;
    *v70 = 136315138;
    v72 = *(v67 + 8);
    v276 = *v67;
    v277 = v72;
    v73 = sub_1CEFD5338(v67, type metadata accessor for VFSItem);
    v74 = VFSItemID.description.getter(v73);
    v76 = v75;
    v77 = sub_1CEFD0DF0(v74, v75, v274);
    v76, v78, v79, v80, v81, v82, v83, v84;
    *(v70 + 4) = v77;
    _os_log_impl(&dword_1CEFC7000, v68, v69, "requestMaterialization(%s) post-materialization retry failed", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v71);
    MEMORY[0x1D386CDC0](v71, -1, -1);
    MEMORY[0x1D386CDC0](v70, -1, -1);
  }

  else
  {
    sub_1CEFD5338(v67, type metadata accessor for VFSItem);
  }

  (*(v270 + 8))(v66, v271);
  v87 = v272;
  v88 = v263;
  v89 = v262;
  v90 = v260;
  sub_1CF9E5198();
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
  sub_1CF9E57D8();
  v91 = sub_1CF9E50D8();
  (*(v89 + 8))(v90, v88);
  v92 = v250[0];
  *v250[0] = v91;
  swift_storeEnumTagMultiPayload();
  v87(v92);
  v46 = &unk_1EC4BF300;
  v47 = &unk_1CFA006B0;
  v48 = v92;
  return sub_1CEFCCC44(v48, v46, v47);
}

uint64_t sub_1CF80E7B0(void *a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t, void), uint64_t a5, unint64_t a6)
{
  v31 = a4;
  v11 = a1[3];
  v10 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = *a3;
  v14 = *(a3 + 8);
  v28 = *a3;
  v29 = v14;
  sub_1CF68DDB0(&v28, v12, v11, v10, __dst);
  if (v6)
  {

    sub_1CF095754(__src);
    memcpy(__dst, __src, 0x208uLL);
LABEL_4:
    memcpy(__src, __dst, 0x208uLL);
    v15 = __src;
    goto LABEL_5;
  }

  memcpy(__src, __dst, 0x208uLL);
  if (sub_1CF08B99C(__src) == 1)
  {
    goto LABEL_4;
  }

  memcpy(v26, __dst, sizeof(v26));
  if ((v26[2] & 0x10) != 0)
  {
    v31(1, 0);
    v22 = &unk_1EC4BFC20;
    v23 = &unk_1CFA0A290;
    v24 = v26;
    return sub_1CEFCCC44(v24, v22, v23);
  }

  v15 = v26;
LABEL_5:
  sub_1CEFCCC44(v15, &unk_1EC4BFC20, &unk_1CFA0A290);
  v16 = a3[2];
  v17 = *(a3 + 24);
  if (!*(a3 + 24))
  {
    if (v14 || v16 != v13)
    {
      goto LABEL_22;
    }

    return (v31)(0, 0);
  }

  if (v17 != 1)
  {
    if (v16)
    {
      if (v14 != 2 || v13 != 1)
      {
        goto LABEL_22;
      }
    }

    else if (v14 != 2 || v13)
    {
      goto LABEL_22;
    }

    return (v31)(0, 0);
  }

  if (v14 == 1 && v16 == v13)
  {
    return (v31)(0, 0);
  }

LABEL_22:
  v19 = *(*(a2 + 32) + 16);
  v26[0] = a3[2];
  LOBYTE(v26[1]) = v17;
  memset(__src, 0, 96);
  v20 = swift_allocObject();
  v20[2] = v31;
  v20[3] = a5;
  v20[4] = a2;
  v20[5] = a6;
  v21 = *(*v19 + 136);

  sub_1CEFD09A0(a6);
  v21(v26, __src, 0, 2, sub_1CF8FF654, v20);

  __dst[2] = __src[2];
  __dst[3] = __src[3];
  __dst[4] = __src[4];
  __dst[5] = __src[5];
  __dst[0] = __src[0];
  __dst[1] = __src[1];
  v22 = &unk_1EC4BECD0;
  v23 = &unk_1CF9FEF80;
  v24 = __dst;
  return sub_1CEFCCC44(v24, v22, v23);
}

void sub_1CF80EA90(uint64_t a1, void (*a2)(id, uint64_t), void (*a3)(id, uint64_t), uint64_t a4, unint64_t a5)
{
  v34 = a5;
  v35 = a4;
  v8 = type metadata accessor for VFSItem(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v33 - v14);
  sub_1CEFCCBDC(a1, &v33 - v14, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    v17 = *v15;
    a2(v16, 1);
  }

  else if ((*(v9 + 48))(v15, 1, v8) == 1)
  {
    a2(0, 0);
  }

  else
  {
    v18 = v9;
    v19 = v15;
    v20 = v36;
    sub_1CEFDA0C4(v19, v36, type metadata accessor for VFSItem);
    v21 = v20 + *(v8 + 28);
    v22 = type metadata accessor for ItemMetadata(0);
    if (*(v21 + *(v22 + 64)) & 1) != 0 || (v23 = *(v21 + *(v22 + 68)), v23 != 2) && (v23)
    {
      a2(1, 0);
    }

    else
    {
      v24 = v33;
      sub_1CEFDA34C(v20, v33, type metadata accessor for VFSItem);
      v25 = (*(v18 + 80) + 24) & ~*(v18 + 80);
      v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
      v28 = swift_allocObject();
      v29 = v35;
      *(v28 + 16) = v35;
      sub_1CEFDA0C4(v24, v28 + v25, type metadata accessor for VFSItem);
      v30 = (v28 + v26);
      *v30 = a2;
      v30[1] = a3;
      v31 = v34;
      *(v28 + v27) = v34;
      v32 = *(*v29 + 472);

      sub_1CEFD09A0(v31);
      v32("checkIsInIgnoredHierarchy(_:request:completion:)", 48, 2, 2, nullsub_1, 0, sub_1CF90340C, v28);
    }

    sub_1CEFD5338(v20, type metadata accessor for VFSItem);
  }
}

uint64_t sub_1CF80EE3C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v191 = &v187[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v192 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v197 = &v187[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v194 = &v187[-v15];
  v196 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v187[-v18];
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
  MEMORY[0x1EEE9AC00](v189);
  v190 = &v187[-v20];
  v21 = sub_1CF9E6118();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v200 = &v187[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v187[-v25];
  v195 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  v27 = swift_allocObject();
  *(v27 + 2) = a3;
  *(v27 + 3) = a4;
  *(v27 + 4) = a2;
  *(v27 + 5) = v5;
  v204 = v27;

  sub_1CEFD09A0(a2);
  v205 = v5;

  v28 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a2);
  sub_1CEFD09A0(a2);

  v29 = sub_1CF9E6108();
  v30 = sub_1CF9E7298();
  v31 = os_log_type_enabled(v29, v30);
  v201 = v22;
  v202 = v21;
  v203 = v19;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v193 = swift_slowAlloc();
    v206[0] = v193;
    *v32 = 136315394;
    v33 = swift_beginAccess();
    v34 = *(a1 + 32);
    v35 = *(a1 + 40);
    if (*(a1 + 41))
    {
      v36 = NSFileProviderItemIdentifier.description.getter(v34);
      v38 = v37;
      sub_1CEFD0994(v34, v35, 1);
    }

    else
    {
      v208 = *(a1 + 32);
      v209 = v35;
      v36 = VFSItemID.description.getter(v33);
      v38 = v39;
    }

    v40 = sub_1CEFD0DF0(v36, v38, v206);
    v38, v41, v42, v43, v44, v45, v46, v47;
    *(v32 + 4) = v40;
    *(v32 + 12) = 2080;
    v48 = sub_1CEFD11AC(a2);
    v50 = v49;
    sub_1CEFD0A98(a2);
    sub_1CEFD0A98(a2);
    v51 = sub_1CEFD0DF0(v48, v50, v206);
    v50, v52, v53, v54, v55, v56, v57, v58;
    *(v32 + 14) = v51;
    _os_log_impl(&dword_1CEFC7000, v29, v30, "Request to materialize content of itemID %s reason %s", v32, 0x16u);
    v59 = v193;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v59, -1, -1);
    MEMORY[0x1D386CDC0](v32, -1, -1);

    v193 = *(v201 + 8);
    v193(v26, v202);
    v19 = v203;
  }

  else
  {
    sub_1CEFD0A98(a2);
    sub_1CEFD0A98(a2);

    v193 = *(v22 + 8);
    v193(v26, v21);
  }

  v188 = (a2 >> 58) & 0x3C | (a2 >> 1) & 3;
  if (v188 == 2)
  {
    v60 = swift_projectBox();
    v61 = v190;
    sub_1CEFCCBDC(v60, v190, &unk_1EC4C4F40, qword_1CFA0F4C0);
    v61[1], v62, v63, v64, v65, v66, v67, v68;
    v69 = v189;
    v70 = *(v189 + 48);

    v71 = *(v61 + *(v69 + 80));
    v72 = sub_1CF9E5A58();
    (*(*(v72 - 8) + 8))(v61 + v70, v72);
  }

  else
  {
    v71 = 0;
  }

  v73 = v191;
  sub_1CEFCCBDC(v205 + qword_1EDEBBC18, v191, &qword_1EC4BFB10, &unk_1CFA12AD0);
  v74 = type metadata accessor for TelemetrySignposter(0);
  v75 = (*(*(v74 - 8) + 48))(v73, 1, v74);
  v198 = a1;
  v199 = a2;
  if (v75 == 1)
  {
    sub_1CEFCCC44(v73, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v76 = 1;
  }

  else
  {
    sub_1CF519DE8(v71, v19);
    sub_1CEFD5338(v73, type metadata accessor for TelemetrySignposter);
    v76 = 0;
  }

  v77 = type metadata accessor for TelemetrySignpost(0);
  (*(*(v77 - 8) + 56))(v19, v76, 1, v77);
  v78 = v194;
  sub_1CEFCCBDC(v19, v194, qword_1EC4C1588, &unk_1CFA0A260);
  v79 = *(v192 + 80);
  v80 = (v79 + 16) & ~v79;
  v81 = v196;
  v82 = (v196 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  sub_1CEFE55D0(v78, &v83[v80], qword_1EC4C1588, &unk_1CFA0A260);
  v84 = &v83[v82];
  v194 = sub_1CF8FE1FC;
  v85 = v204;
  *v84 = sub_1CF8FE1FC;
  v84[1] = v85;
  v86 = v197;
  sub_1CEFCCBDC(v19, v197, qword_1EC4C1588, &unk_1CFA0A260);
  v87 = (v79 + 24) & ~v79;
  v192 = (v87 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = (v87 + v81 + 31) & 0xFFFFFFFFFFFFFFF8;
  v196 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
  v89 = (v88 + 31) & 0xFFFFFFFFFFFFFFF8;
  v90 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  v92 = v199;
  *(v91 + 16) = v199;
  sub_1CEFE55D0(v86, v91 + v87, qword_1EC4C1588, &unk_1CFA0A260);
  v93 = v91 + v192;
  *v93 = v194;
  *(v93 + 8) = v85;
  *(v93 + 16) = 0;
  *(v91 + v88) = v205;
  v94 = v91 + v196;
  v95 = v198;
  *v94 = v198;
  *(v94 + 8) = 0;
  *(v91 + v89) = 0;
  v96 = v195;
  *(v91 + v90) = v195;
  v97 = v91 + ((v90 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v97 = sub_1CF903314;
  *(v97 + 8) = v83;
  *(v97 + 16) = 1;
  v98 = objc_allocWithZone(MEMORY[0x1E696AE38]);

  sub_1CEFD09A0(v92);

  v195 = v96;
  v197 = v83;
  v99 = v92;

  v194 = [v98 init];
  v100 = swift_allocObject();
  v100[2] = sub_1CF903318;
  v100[3] = v91;
  v192 = v100;
  v100[4] = v92;
  sub_1CEFD09A0(v92);

  sub_1CEFD09A0(v92);
  v196 = v91;

  v101 = fpfs_current_or_default_log();
  v102 = v200;
  sub_1CF9E6128();
  sub_1CEFD09A0(v92);
  sub_1CEFD09A0(v92);

  v103 = sub_1CF9E6108();
  v104 = sub_1CF9E7298();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = v92;
    v106 = swift_slowAlloc();
    v191 = swift_slowAlloc();
    v207 = v191;
    *v106 = 136315906;
    v107 = swift_beginAccess();
    v108 = *(v95 + 32);
    v109 = *(v95 + 40);
    if (*(v95 + 41))
    {
      v110 = NSFileProviderItemIdentifier.description.getter(v108);
      v112 = v111;
      sub_1CEFD0994(v108, v109, 1);
    }

    else
    {
      v208 = *(v95 + 32);
      v209 = v109;
      v110 = VFSItemID.description.getter(v107);
      v112 = v114;
    }

    v115 = sub_1CEFD0DF0(v110, v112, &v207);
    v112, v116, v117, v118, v119, v120, v121, v122;
    *(v106 + 4) = v115;
    *(v106 + 12) = 2080;
    *(v106 + 14) = sub_1CEFD0DF0(0x74616761706F7270, 0xED000053466F5465, &v207);
    *(v106 + 22) = 2080;
    v99 = v105;
    v123 = sub_1CEFD11AC(v105);
    v125 = v124;
    sub_1CEFD0A98(v105);
    sub_1CEFD0A98(v105);
    v126 = sub_1CEFD0DF0(v123, v125, &v207);
    v125, v127, v128, v129, v130, v131, v132, v133;
    *(v106 + 24) = v126;
    *(v106 + 32) = 2048;
    *(v106 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v103, v104, "Lookup itemID %s with behavior %s request %s iteration %ld", v106, 0x2Au);
    v134 = v191;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v134, -1, -1);
    MEMORY[0x1D386CDC0](v106, -1, -1);

    v113 = v200;
  }

  else
  {
    sub_1CEFD0A98(v92);
    sub_1CEFD0A98(v92);

    v113 = v102;
  }

  v193(v113, v202);
  swift_beginAccess();
  v135 = *(v95 + 32);
  v136 = *(v95 + 40);
  v137 = v203;
  if (*(v95 + 41))
  {
    v138 = qword_1EDEA34B0;
    v139 = v135;
    if (v138 != -1)
    {
      swift_once();
    }

    v140 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v142 = v141;
    v144 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v150 = v143;
    if (v140 == v144 && v142 == v143)
    {
      v142, v143, v144, v145, v146, v147, v148, v149;
      v150, v151, v152, v153, v154, v155, v156, v157;
      sub_1CEFD0994(v135, v136, 1);
LABEL_27:
      sub_1CF90CAC8(v99, sub_1CF796A0C, v192);
      v158 = v194;
      goto LABEL_33;
    }

    v159 = sub_1CF9E8048();
    v142, v160, v161, v162, v163, v164, v165, v166;
    v150, v167, v168, v169, v170, v171, v172, v173;
    sub_1CEFD0994(v135, v136, 1);
    if (v159)
    {
      goto LABEL_27;
    }
  }

  else if (!v135 && v136 == 2)
  {
    goto LABEL_27;
  }

  if (v188 == 30)
  {
    v174 = *((v99 & 0xFFFFFFFFFFFFFF9) + 0x10);
    v175 = v174;
  }

  else
  {
    v176 = swift_allocObject();
    *(v176 + 16) = v99;
    v175 = v176 | 0x7000000000000004;
    v174 = v99;
  }

  sub_1CEFD09A0(v174);
  v177 = swift_allocObject();
  v178 = v192;
  *(v177 + 16) = sub_1CF796A0C;
  *(v177 + 24) = v178;
  v179 = v205;
  *(v177 + 32) = v205;
  *(v177 + 40) = 1;
  *(v177 + 48) = v99;
  *(v177 + 56) = v95;
  *(v177 + 64) = 0;
  v180 = v194;
  *(v177 + 72) = v194;
  *(v177 + 80) = 0;
  v181 = swift_allocObject();
  *(v181 + 16) = v95;
  *(v181 + 24) = v179;
  *(v181 + 32) = 0;
  *(v181 + 40) = sub_1CF796A90;
  *(v181 + 48) = v177;
  *(v181 + 56) = v175;
  v182 = swift_allocObject();
  *(v182 + 16) = sub_1CF796A90;
  *(v182 + 24) = v177;
  v202 = (*v179 + 472);
  v158 = v180;
  v183 = v99;
  v184 = *v202;

  sub_1CEFD09A0(v183);

  v185 = v158;
  sub_1CEFD09A0(v175);
  v184("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v182, sub_1CF796A9C, v181);
  v99 = v183;

  sub_1CEFD0A98(v175);
  v137 = v203;
LABEL_33:

  sub_1CEFD0A98(v99);

  return sub_1CEFCCC44(v137, qword_1EC4C1588, &unk_1CFA0A260);
}

uint64_t sub_1CF80FD34(uint64_t a1, void (*a2)(void **), uint64_t a3, unint64_t a4, uint64_t a5)
{
  v109 = a5;
  v110 = a4;
  v113 = a2;
  v7 = sub_1CF9E6118();
  v111 = *(v7 - 8);
  v112 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v108 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v105 - v10;
  v11 = type metadata accessor for VFSItem(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v105 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v105 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v105 - v24);
  v27 = v26;
  sub_1CEFCCBDC(a1, &v105 - v24, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v25;
    *v22 = *v25;
    swift_storeEnumTagMultiPayload();
    v29 = v28;
    v113(v22);

    return sub_1CEFCCC44(v22, &unk_1EC4BF300, &unk_1CFA006B0);
  }

  else
  {
    v106 = a3;
    v31 = v113;
    sub_1CEFDA0C4(v25, v19, type metadata accessor for VFSItem);
    v32 = &v19[*(v11 + 28)];
    LOBYTE(v32) = v32[*(type metadata accessor for ItemMetadata(0) + 72)];
    v33 = fpfs_current_or_default_log();
    v34 = v19;
    if (v32)
    {
      v35 = v107;
      sub_1CF9E6128();
      sub_1CEFDA34C(v19, v16, type metadata accessor for VFSItem);
      v36 = v110;
      sub_1CEFD09A0(v110);
      sub_1CEFD09A0(v36);
      v37 = sub_1CF9E6108();
      v38 = sub_1CF9E7298();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v109 = v27;
        v40 = v39;
        v41 = swift_slowAlloc();
        v108 = v41;
        *v40 = 136315394;
        v42 = *v16;
        v43 = v16[8];
        v114 = v41;
        v115 = v42;
        v116 = v43;
        v44 = sub_1CEFD5338(v16, type metadata accessor for VFSItem);
        v45 = VFSItemID.description.getter(v44);
        v47 = v46;
        v48 = v35;
        v49 = sub_1CEFD0DF0(v45, v46, &v114);
        v47, v50, v51, v52, v53, v54, v55, v56;
        *(v40 + 4) = v49;
        *(v40 + 12) = 2080;
        v57 = sub_1CEFD11AC(v36);
        v59 = v58;
        sub_1CEFD0A98(v36);
        sub_1CEFD0A98(v36);
        v60 = sub_1CEFD0DF0(v57, v59, &v114);
        v59, v61, v62, v63, v64, v65, v66, v67;
        *(v40 + 14) = v60;
        _os_log_impl(&dword_1CEFC7000, v37, v38, "not detaching already detached root %s for %s", v40, 0x16u);
        v68 = v108;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v68, -1, -1);
        MEMORY[0x1D386CDC0](v40, -1, -1);

        (*(v111 + 8))(v48, v112);
      }

      else
      {
        sub_1CEFD0A98(v36);
        sub_1CEFD5338(v16, type metadata accessor for VFSItem);
        sub_1CEFD0A98(v36);

        (*(v111 + 8))(v35, v112);
      }

      sub_1CEFDA34C(v34, v22, type metadata accessor for VFSItem);
      swift_storeEnumTagMultiPayload();
      v31(v22);
      sub_1CEFCCC44(v22, &unk_1EC4BF300, &unk_1CFA006B0);
    }

    else
    {
      v69 = v108;
      sub_1CF9E6128();
      sub_1CEFDA34C(v19, v13, type metadata accessor for VFSItem);
      v70 = v110;
      sub_1CEFD09A0(v110);
      sub_1CEFD09A0(v70);
      v71 = sub_1CF9E6108();
      v72 = sub_1CF9E7298();
      v73 = v31;
      if (os_log_type_enabled(v71, v72))
      {
        v74 = swift_slowAlloc();
        v75 = v69;
        v76 = swift_slowAlloc();
        *v74 = 136315394;
        v77 = *v13;
        v78 = v13[8];
        v114 = v76;
        v115 = v77;
        v116 = v78;
        v79 = sub_1CEFD5338(v13, type metadata accessor for VFSItem);
        v80 = VFSItemID.description.getter(v79);
        v82 = v81;
        v83 = sub_1CEFD0DF0(v80, v81, &v114);
        v82, v84, v85, v86, v87, v88, v89, v90;
        *(v74 + 4) = v83;
        *(v74 + 12) = 2080;
        v91 = sub_1CEFD11AC(v70);
        v93 = v92;
        sub_1CEFD0A98(v70);
        sub_1CEFD0A98(v70);
        v94 = sub_1CEFD0DF0(v91, v93, &v114);
        v93, v95, v96, v97, v98, v99, v100, v101;
        *(v74 + 14) = v94;
        _os_log_impl(&dword_1CEFC7000, v71, v72, "detaching %s for %s", v74, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v76, -1, -1);
        MEMORY[0x1D386CDC0](v74, -1, -1);

        (*(v111 + 8))(v75, v112);
      }

      else
      {
        sub_1CEFD0A98(v70);
        sub_1CEFD5338(v13, type metadata accessor for VFSItem);
        sub_1CEFD0A98(v70);

        (*(v111 + 8))(v69, v112);
      }

      v102 = *(*(v109 + 32) + 16);
      v103 = *(v34 + 8);
      v115 = *v34;
      v116 = v103;
      v104 = *(*v102 + 872);

      v104(&v115, v73, v106);
    }

    return sub_1CEFD5338(v34, type metadata accessor for VFSItem);
  }
}

uint64_t sub_1CF8104CC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, unint64_t a4, uint64_t a5)
{
  v106 = a5;
  v109 = a4;
  v115 = a2;
  v116 = a3;
  v114 = a1;
  v5 = sub_1CF9E6118();
  v110 = *(v5 - 8);
  v111 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v107 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v105 = &v102 - v8;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v9 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v104 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v103 = &v102 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v112 = &v102 - v14;
  v15 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1CF9E5268();
  v108 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v102 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v102 - v23);
  sub_1CEFCCBDC(v114, &v102 - v23, &qword_1EC4C5020, &qword_1CFA0A278);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    *v21 = *v24;
    swift_storeEnumTagMultiPayload();
    v26 = v25;
    v115(v21);

LABEL_5:
    v28 = &unk_1EC4BF300;
    v29 = &unk_1CFA006B0;
    v30 = v21;
    return sub_1CEFCCC44(v30, v28, v29);
  }

  if ((*(v9 + 48))(v24, 1, v113) == 1)
  {
    sub_1CF9E50F8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    v27 = sub_1CF9E50D8();
    (*(v108 + 8))(v18, v16);
    *v21 = v27;
    swift_storeEnumTagMultiPayload();
    v115(v21);
    goto LABEL_5;
  }

  v31 = v112;
  sub_1CEFE55D0(v24, v112, &qword_1EC4C5220, &qword_1CFA0A270);
  v32 = v31 + *(type metadata accessor for VFSItem(0) + 28);
  LODWORD(v32) = *(v32 + *(type metadata accessor for ItemMetadata(0) + 72));
  v33 = fpfs_current_or_default_log();
  if (v32 == 1)
  {
    v34 = v105;
    sub_1CF9E6128();
    v35 = v103;
    sub_1CEFCCBDC(v31, v103, &qword_1EC4C5220, &qword_1CFA0A270);
    v36 = v109;
    sub_1CEFD09A0(v109);
    sub_1CEFD09A0(v36);
    v37 = sub_1CF9E6108();
    v38 = sub_1CF9E7298();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v119 = v40;
      *v39 = 136315394;
      v41 = *(v35 + 8);
      v117 = *v35;
      v118 = v41;
      v42 = sub_1CEFCCC44(v35, &qword_1EC4C5220, &qword_1CFA0A270);
      v43 = VFSItemID.description.getter(v42);
      v45 = v44;
      v46 = sub_1CEFD0DF0(v43, v44, &v119);
      v45, v47, v48, v49, v50, v51, v52, v53;
      *(v39 + 4) = v46;
      *(v39 + 12) = 2080;
      v54 = sub_1CEFD11AC(v36);
      v56 = v55;
      sub_1CEFD0A98(v36);
      sub_1CEFD0A98(v36);
      v57 = sub_1CEFD0DF0(v54, v56, &v119);
      v56, v58, v59, v60, v61, v62, v63, v64;
      *(v39 + 14) = v57;
      _os_log_impl(&dword_1CEFC7000, v37, v38, "attaching %s for %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v40, -1, -1);
      MEMORY[0x1D386CDC0](v39, -1, -1);
    }

    else
    {
      sub_1CEFD0A98(v36);
      sub_1CEFCCC44(v35, &qword_1EC4C5220, &qword_1CFA0A270);
      sub_1CEFD0A98(v36);
    }

    (*(v110 + 8))(v34, v111);
    v97 = *(*(v106 + 32) + 16);
    v98 = *(v31 + 8);
    v117 = *v31;
    v118 = v98;
    v99 = *(*v97 + 880);

    v99(&v117, v115, v116);
  }

  else
  {
    v65 = v107;
    sub_1CF9E6128();
    v66 = v104;
    sub_1CEFCCBDC(v31, v104, &qword_1EC4C5220, &qword_1CFA0A270);
    v67 = v109;
    sub_1CEFD09A0(v109);
    sub_1CEFD09A0(v67);
    v68 = sub_1CF9E6108();
    v69 = sub_1CF9E7298();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = v66;
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v119 = v72;
      *v71 = 136315394;
      v73 = *(v70 + 8);
      v117 = *v70;
      v118 = v73;
      v74 = sub_1CEFCCC44(v70, &qword_1EC4C5220, &qword_1CFA0A270);
      v75 = VFSItemID.description.getter(v74);
      v77 = v76;
      v78 = sub_1CEFD0DF0(v75, v76, &v119);
      v77, v79, v80, v81, v82, v83, v84, v85;
      *(v71 + 4) = v78;
      *(v71 + 12) = 2080;
      v86 = sub_1CEFD11AC(v67);
      v88 = v87;
      sub_1CEFD0A98(v67);
      sub_1CEFD0A98(v67);
      v89 = sub_1CEFD0DF0(v86, v88, &v119);
      v88, v90, v91, v92, v93, v94, v95, v96;
      *(v71 + 14) = v89;
      _os_log_impl(&dword_1CEFC7000, v68, v69, "not reattaching already attached item %s for %s", v71, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v72, -1, -1);
      MEMORY[0x1D386CDC0](v71, -1, -1);

      (*(v110 + 8))(v107, v111);
    }

    else
    {
      sub_1CEFD0A98(v67);
      sub_1CEFCCC44(v66, &qword_1EC4C5220, &qword_1CFA0A270);
      sub_1CEFD0A98(v67);

      (*(v110 + 8))(v65, v111);
    }

    v100 = v115;
    sub_1CEFDA34C(v31, v21, type metadata accessor for VFSItem);
    swift_storeEnumTagMultiPayload();
    v100(v21);
    sub_1CEFCCC44(v21, &unk_1EC4BF300, &unk_1CFA006B0);
  }

  v28 = &qword_1EC4C5220;
  v29 = &qword_1CFA0A270;
  v30 = v31;
  return sub_1CEFCCC44(v30, v28, v29);
}

uint64_t sub_1CF810E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v4[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C06F0, &qword_1CFA05B00);
  v4[4] = sub_1CEFCCCEC(qword_1EDEA5AE0, &qword_1EC4C06F0, &qword_1CFA05B00, &unk_1CFA0A6F0);
  v6 = sub_1CF9E6EC8();

  return MEMORY[0x1EEE6DFA0](sub_1CF810F3C, v6, v5);
}

uint64_t sub_1CF810F3C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_1CF9E6F08();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v3;
  swift_retain_n();
  *(v3 + 64) = sub_1CF81241C(0, 0, v1, &unk_1CFA17EE8, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1CF811050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_1CF9E5CF8();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = sub_1CF9E7AD8();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v7 = sub_1CF9E7AF8();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v8 = sub_1CF9E6118();
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C06F0, &qword_1CFA05B00);
  sub_1CEFCCCEC(qword_1EDEA5AE0, &qword_1EC4C06F0, &qword_1CFA05B00, &unk_1CFA0A6F0);
  v10 = sub_1CF9E6EC8();
  v4[25] = v10;
  v4[26] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1CF8112C8, v10, v9);
}

uint64_t sub_1CF8112C8()
{
  if (sub_1CF9E6F28())
  {
    v1 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v2 = sub_1CF9E6108();
    v3 = sub_1CF9E7288();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 152);
    if (v4)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1CEFC7000, v2, v3, "💂🏼‍♀️  StuckDeletionMonitor cancelled", v6, 2u);
      MEMORY[0x1D386CDC0](v6, -1, -1);
    }

    (*(v5 + 8))(*(v0 + 192), *(v0 + 144));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(*(v0 + 56) + 48);
    v10 = 1000000000000000000 * v9;
    v11 = ((v9 >> 63) & 0xF21F494C589C0000) + ((v9 * 0xDE0B6B3A7640000uLL) >> 64);
    sub_1CF9E7AE8();
    *(v0 + 40) = v10;
    *(v0 + 48) = v11;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x1EEE6DFA0](sub_1CF8114DC, 0, 0);
  }
}

uint64_t sub_1CF8114DC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = sub_1CEFCCCA4(&qword_1EDEA3380, MEMORY[0x1E69E8848], MEMORY[0x1E69E8850]);
  sub_1CF9E8118();
  sub_1CEFCCCA4(&qword_1EDEA3388, MEMORY[0x1E69E8838], MEMORY[0x1E69E8840]);
  sub_1CF9E7AB8();
  v5 = *(v2 + 8);
  v0[27] = v5;
  v0[28] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[29] = v6;
  *v6 = v0;
  v6[1] = sub_1CF811660;
  v8 = v0[14];
  v7 = v0[15];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v7, v4);
}

uint64_t sub_1CF811660()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    (*(v2 + 216))(*(v2 + 112), *(v2 + 88));
    v3 = sub_1CF811B04;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(v2 + 128);
    v6 = *(v2 + 136);
    v8 = *(v2 + 120);
    (*(v2 + 216))(*(v2 + 112), *(v2 + 88));
    (*(v7 + 8))(v6, v8);
    v4 = *(v2 + 200);
    v5 = *(v2 + 208);
    v3 = sub_1CF8117C0;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1CF8117C0(uint64_t a1)
{
  v2 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v3 = sub_1CF9E6108();
  v4 = sub_1CF9E7298();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1CEFC7000, v3, v4, "💂🏼‍♀️  evaluating stuck deletion", v5, 2u);
    MEMORY[0x1D386CDC0](v5, -1, -1);
  }

  v6 = v1[23];
  v7 = v1[18];
  v8 = v1[19];

  v9 = *(v8 + 8);
  v1[31] = v9;
  v9(v6, v7);
  Strong = swift_weakLoadStrong();
  v1[32] = Strong;
  if (Strong)
  {
    v11 = Strong;
    v13 = v1[9];
    v12 = v1[10];
    v14 = v1[8];
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v16 = v15;
    result = (*(v13 + 8))(v12, v14);
    v18 = v16 * 1000000000.0;
    if (COERCE__INT64(fabs(v16 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v18 > -9.22337204e18)
    {
      if (v18 < 9.22337204e18)
      {
        v19 = swift_task_alloc();
        v1[33] = v19;
        *v19 = v1;
        v19[1] = sub_1CF811D74;

        return sub_1CF8E997C(v11);
      }

LABEL_17:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_17;
  }

  v20 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v21 = sub_1CF9E6108();
  v22 = sub_1CF9E7288();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1CEFC7000, v21, v22, "💂🏼‍♀️  StuckDeletionMonitor db was nil, bailing", v23, 2u);
    MEMORY[0x1D386CDC0](v23, -1, -1);
  }

  v9(v1[20], v1[18]);

  v24 = v1[1];

  return v24();
}

uint64_t sub_1CF811B04()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[25];
  v2 = v0[26];

  return MEMORY[0x1EEE6DFA0](sub_1CF811B78, v1, v2);
}

uint64_t sub_1CF811B78(uint64_t a1)
{
  v2 = v1[30];
  v3 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v4 = v2;
  v5 = sub_1CF9E6108();
  v6 = sub_1CF9E72A8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v1[30];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1CEFC7000, v5, v6, "💂🏼‍♀️ StuckDeletionMonitor loop caught error, exiting: %@", v9, 0xCu);
    sub_1CEFCCC44(v10, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v10, -1, -1);
    MEMORY[0x1D386CDC0](v9, -1, -1);
  }

  else
  {
  }

  (*(v1[19] + 8))(v1[22], v1[18]);

  v13 = v1[1];

  return v13();
}

uint64_t sub_1CF811D74()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 208);
  v4 = *(v2 + 200);
  if (v0)
  {
    v5 = sub_1CF8120CC;
  }

  else
  {
    v5 = sub_1CF811EB0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1CF811EB0()
{

  if (sub_1CF9E6F28())
  {
    v1 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v2 = sub_1CF9E6108();
    v3 = sub_1CF9E7288();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 152);
    if (v4)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1CEFC7000, v2, v3, "💂🏼‍♀️  StuckDeletionMonitor cancelled", v6, 2u);
      MEMORY[0x1D386CDC0](v6, -1, -1);
    }

    (*(v5 + 8))(*(v0 + 192), *(v0 + 144));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(*(v0 + 56) + 48);
    v10 = 1000000000000000000 * v9;
    v11 = ((v9 >> 63) & 0xF21F494C589C0000) + ((v9 * 0xDE0B6B3A7640000uLL) >> 64);
    sub_1CF9E7AE8();
    *(v0 + 40) = v10;
    *(v0 + 48) = v11;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x1EEE6DFA0](sub_1CF8114DC, 0, 0);
  }
}

uint64_t sub_1CF8120CC(uint64_t a1)
{
  v2 = *(v1 + 272);
  v3 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v4 = v2;
  v5 = sub_1CF9E6108();
  v6 = sub_1CF9E72B8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v1 + 272);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1CEFC7000, v5, v6, "Error in checkForStuckDeletion: %@", v9, 0xCu);
    sub_1CEFCCC44(v10, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v10, -1, -1);
    MEMORY[0x1D386CDC0](v9, -1, -1);
  }

  else
  {
  }

  (*(v1 + 248))(*(v1 + 168), *(v1 + 144));
  if (sub_1CF9E6F28())
  {
    v13 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v14 = sub_1CF9E6108();
    v15 = sub_1CF9E7288();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v1 + 152);
    if (v16)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1CEFC7000, v14, v15, "💂🏼‍♀️  StuckDeletionMonitor cancelled", v18, 2u);
      MEMORY[0x1D386CDC0](v18, -1, -1);
    }

    (*(v17 + 8))(*(v1 + 192), *(v1 + 144));

    v19 = *(v1 + 8);

    return v19();
  }

  else
  {
    v21 = *(*(v1 + 56) + 48);
    v22 = 1000000000000000000 * v21;
    v23 = ((v21 >> 63) & 0xF21F494C589C0000) + ((v21 * 0xDE0B6B3A7640000uLL) >> 64);
    sub_1CF9E7AE8();
    *(v1 + 40) = v22;
    *(v1 + 48) = v23;
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    *(v1 + 32) = 1;

    return MEMORY[0x1EEE6DFA0](sub_1CF8114DC, 0, 0);
  }
}

uint64_t sub_1CF81241C(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v29 - v9;
  sub_1CEFCCBDC(a3, v29 - v9, &qword_1EC4BFBA8, &qword_1CFA12B20);
  v11 = sub_1CF9E6F08();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1CEFCCC44(v10, &qword_1EC4BFBA8, &qword_1CFA12B20);
  }

  else
  {
    sub_1CF9E6EF8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1CF9E6EC8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1CF9E6978() + 32;

      if (v17 | v15)
      {
        v30[0] = 0;
        v30[1] = 0;
        v19 = v30;
        v30[2] = v15;
        v30[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v29[1] = 7;
      v29[2] = v19;
      v29[3] = v18;
      v20 = swift_task_create();

      sub_1CEFCCC44(a3, &qword_1EC4BFBA8, &qword_1CFA12B20);
      a2, v21, v22, v23, v24, v25, v26, v27;

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1CEFCCC44(a3, &qword_1EC4BFBA8, &qword_1CFA12B20);
  if (v17 | v15)
  {
    v30[4] = 0;
    v30[5] = 0;
    v30[6] = v15;
    v30[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1CF8126C8(void *a1, uint64_t (*a2)(void))
{
  result = a2();
  if (!v2)
  {
    v5 = a1[3];
    v6 = a1[4];
    v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
    return sub_1CF5A62B4(v7, v5, v6);
  }

  return result;
}

uint64_t sub_1CF81272C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1CF9E63D8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  qos_class_self();
  sub_1CF9E63B8();
  v7 = *(v4 + 48);
  if (v7(v2, 1, v3) == 1)
  {
    (*(v4 + 104))(v6, *MEMORY[0x1E69E7FA0], v3);
    if (v7(v2, 1, v3) != 1)
    {
      sub_1CEFCCC44(v2, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
  }

  return sub_1CF9E6428();
}

double sub_1CF8128EC(void *a1, char *a2, int a3, void (*a4)(void), uint64_t a5, objc_class *a6, uint64_t a7)
{
  v160 = a6;
  v156 = a7;
  v157 = a5;
  v159 = a4;
  v10 = sub_1CF9E6118();
  v158 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v149 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v149 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v21 = __swift_project_boxed_opaque_existential_1(a1, v19);
  v22 = *(v20 + 8);
  v162 = a2;
  v23 = v161;
  v24 = sub_1CF5B901C(a3, v21, v19, v22);
  if (v23)
  {
    return result;
  }

  v26 = v12;
  LODWORD(v155) = a3;
  v154 = 0;
  if ((v24 & 1) == 0)
  {
LABEL_10:
    v46 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v47 = sub_1CF9E6108();
    v48 = sub_1CF9E72C8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1CEFC7000, v47, v48, "🚀  waiting for engine stabilization", v49, 2u);
      MEMORY[0x1D386CDC0](v49, -1, -1);
    }

    (*(v158 + 8))(v26, v10);
    if (v155)
    {
      v50 = v160;
      if (qword_1EDEAD4D8 != -1)
      {
        swift_once();
      }

      v51 = qword_1EDEBBC10;
      sub_1CEFD11AC(v50);
      v53 = v52;
      v54 = sub_1CF9E6888();
      v53, v55, v56, v57, v58, v59, v60, v61;
      v62 = [v51 forceRunningWithReason_];

      v161 = swift_allocObject();
      *(v161 + 16) = v62;
      v63 = sub_1CF903058;
    }

    else
    {
      v63 = 0;
      v161 = 0;
      v50 = v160;
    }

    v64 = objc_sync_enter(v162);
    if (v64)
    {
      MEMORY[0x1EEE9AC00](v64);
      v148 = v162;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v149 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v65 = v162;
    v66 = *&v162[qword_1EDEADB40];
    v67 = objc_sync_exit(v65);
    if (v67)
    {
      MEMORY[0x1EEE9AC00](v67);
      v148 = v162;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v149 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    sub_1CEFD11AC(v50);
    v69 = v68;
    v70 = sub_1CF9E6888();
    v69, v71, v72, v73, v74, v75, v76, v77;
    v78 = [v66 forceRunningWithReason_];

    v158 = swift_allocObject();
    *(v158 + 16) = v78;
    if (qword_1EDEAC3C8 != -1)
    {
      swift_once();
    }

    v79 = qword_1EDEBBA88;
    sub_1CEFD11AC(v50);
    v81 = v80;
    v82 = sub_1CF9E6888();
    v81, v83, v84, v85, v86, v87, v88, v89;
    v90 = [v79 forceRunningWithReason_];

    v153 = swift_allocObject();
    *(v153 + 16) = v90;
    if (qword_1EDEACC50 != -1)
    {
      swift_once();
    }

    v91 = qword_1EDEBBB28;
    sub_1CEFD11AC(v50);
    v93 = v92;
    v94 = sub_1CF9E6888();
    v93, v95, v96, v97, v98, v99, v100, v101;
    v102 = [v91 forceRunningWithReason_];

    v103 = swift_allocObject();
    *(v103 + 16) = v102;
    if (qword_1EDEA5A98 != -1)
    {
      swift_once();
    }

    v104 = qword_1EDEBB818;
    sub_1CEFD11AC(v50);
    v106 = v105;
    v107 = sub_1CF9E6888();
    v106, v108, v109, v110, v111, v112, v113, v114;
    v115 = [v104 forceRunningWithReason_];

    v116 = swift_allocObject();
    *(v116 + 16) = v115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB40, &unk_1CFA052C0);
    v117 = swift_dynamicCastClass();
    if (v117)
    {
    }

    v118 = v159;
    if ((v155 & 1) != 0 && (v119 = a1[3], v120 = a1[4], v121 = __swift_project_boxed_opaque_existential_1(a1, v119), v117) && (v122 = v121, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280), *(*(swift_dynamicCastClassUnconditional() + 32) + qword_1EDEBBB18)))
    {

      v123 = v154;
      sub_1CF35D6D8(v122, v119, v120);
      v159 = v125;
      v154 = v123;
      if (v123)
      {

        sub_1CEFF7124(v63, v161);

LABEL_38:

        return result;
      }

      v126 = v124;
      v152 = v117;
    }

    else
    {
      v152 = v117;
      v159 = 0;
      v126 = 0;
    }

    v127 = swift_allocObject();
    v128 = v158;
    v127[2] = v159;
    v127[3] = v126;
    v129 = v153;
    v127[4] = sub_1CF903058;
    v127[5] = v129;
    v127[6] = sub_1CF903058;
    v127[7] = v128;
    v150 = v63;
    v130 = v161;
    v127[8] = v63;
    v127[9] = v130;
    v127[10] = sub_1CF903058;
    v127[11] = v103;
    v127[12] = sub_1CF903058;
    v127[13] = v116;
    v131 = v157;
    v127[14] = v118;
    v127[15] = v131;
    v132 = swift_allocObject();
    *(v132 + 16) = sub_1CF8FC928;
    *(v132 + 24) = v127;
    v155 = v132;
    v133 = qword_1EDEBBC90;
    v134 = v162;
    swift_beginAccess();
    v135 = *&v134[v133];

    sub_1CEFD09A0(v160);
    v151 = v126;
    sub_1CF03C63C(v159, v126);

    v136 = v150;
    sub_1CF03C63C(v150, v161);
    v157 = v103;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v134[v133] = v135;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v135 = sub_1CF1F7FEC(0, (*v135->tree + 1), 1, v135, v138, v139, v140, v141);
      *&v162[v133] = v135;
    }

    v143 = *v135->tree;
    v142 = *v135->tester;
    v144 = v156;
    if (v143 >= v142 >> 1)
    {
      v147 = sub_1CF1F7FEC((v142 > 1), (v143 + 1), 1, v135, v138, v139, v140, v141);
      v144 = v156;
      v135 = v147;
    }

    v145 = v155;
    *v135->tree = v143 + 1;
    v146 = &v135[v143];
    v146[1].super.isa = v160;
    *v146[1]._anon_8 = v144;
    *v146[1].tree = sub_1CF2B1738;
    *v146[1].tester = v145;
    *&v162[v133] = v135;
    swift_endAccess();

    sub_1CEFF7124(v159, v151);

    sub_1CEFF7124(v136, v161);
    goto LABEL_38;
  }

  v27 = *(v162 + 10);
  v28 = fpfs_current_or_default_log();
  if ((v27 & 0x200000) != 0)
  {
    v34 = v18;
    sub_1CF9E6128();
    v35 = sub_1CF9E6108();
    v36 = sub_1CF9E72C8();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v158;
    if (v37)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1CEFC7000, v35, v36, "🚀  engine is stable, waiting for db flush", v39, 2u);
      MEMORY[0x1D386CDC0](v39, -1, -1);
    }

    (*(v38 + 8))(v34, v10);
    v40 = swift_allocObject();
    v41 = v159;
    v42 = v157;
    *(v40 + 16) = v159;
    *(v40 + 24) = v42;
    v43 = swift_allocObject();
    v44 = v162;
    *(v43 + 16) = v41;
    *(v43 + 24) = v42;
    v45 = *(*v44 + 456);
    swift_retain_n();
    v45("waitForStabilization(request:mode:_:)", 37, 2, 0, 0, 0, sub_1CF481760, v40, sub_1CF8FC974, v43);

    goto LABEL_10;
  }

  sub_1CF9E6128();
  v29 = sub_1CF9E6108();
  v30 = sub_1CF9E72C8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = v10;
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1CEFC7000, v29, v30, "🚀  engine is stable", v32, 2u);
    v33 = v32;
    v10 = v31;
    MEMORY[0x1D386CDC0](v33, -1, -1);
  }

  (*(v158 + 8))(v15, v10);
  v159(0);
  return result;
}

void sub_1CF81342C(uint64_t a1, uint64_t a2, objc_class *a3, void (*a4)(void), uint64_t a5)
{
  v9 = sub_1CF9E6118();
  v83 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v79 - v13;
  v15 = *(**(*(a2 + 32) + 16) + 448);

  LOBYTE(v15) = v15(v16);

  v17 = fpfs_current_or_default_log();
  if (v15)
  {
    sub_1CF9E6128();
    sub_1CEFD09A0(a3);
    v18 = sub_1CF9E6108();
    v19 = sub_1CF9E7298();
    v20 = os_log_type_enabled(v18, v19);
    v82 = a5;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v80 = a4;
      v23 = v22;
      v84[0] = v22;
      *v21 = 136315138;
      sub_1CEFD09A0(a3);
      v24 = sub_1CEFD11AC(a3);
      v81 = v9;
      v26 = v25;
      sub_1CEFD0A98(a3);
      sub_1CEFD0A98(a3);
      v27 = sub_1CEFD0DF0(v24, v26, v84);
      v26, v28, v29, v30, v31, v32, v33, v34;
      *(v21 + 4) = v27;
      _os_log_impl(&dword_1CEFC7000, v18, v19, "waiting for rescan to start for %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v35 = v23;
      a4 = v80;
      MEMORY[0x1D386CDC0](v35, -1, -1);
      MEMORY[0x1D386CDC0](v21, -1, -1);

      (*(v83 + 8))(v14, v81);
    }

    else
    {
      sub_1CEFD0A98(a3);

      (*(v83 + 8))(v14, v9);
    }

    if (qword_1EDEACC50 != -1)
    {
      swift_once();
    }

    v54 = qword_1EDEBBB28;
    sub_1CEFD11AC(a3);
    v56 = v55;
    v57 = sub_1CF9E6888();
    v56, v58, v59, v60, v61, v62, v63, v64;
    v65 = [v54 forceRunningWithReason_];

    v66 = swift_allocObject();
    *(v66 + 16) = v65;
    v67 = swift_allocObject();
    v67[2] = sub_1CF903058;
    v67[3] = v66;
    v67[4] = a3;
    v67[5] = a4;
    v67[6] = v82;
    v68 = swift_allocObject();
    *(v68 + 16) = sub_1CF901C38;
    *(v68 + 24) = v67;
    v69 = qword_1EDEBBC90;
    swift_beginAccess();
    v70 = *(a2 + v69);
    sub_1CEFD09A0(a3);
    sub_1CEFD09A0(a3);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + v69) = v70;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v70 = sub_1CF1F7FEC(0, (*v70->tree + 1), 1, v70, v72, v73, v74, v75);
      *(a2 + v69) = v70;
    }

    v77 = *v70->tree;
    v76 = *v70->tester;
    if (v77 >= v76 >> 1)
    {
      v70 = sub_1CF1F7FEC((v76 > 1), (v77 + 1), 1, v70, v72, v73, v74, v75);
    }

    *v70->tree = v77 + 1;
    v78 = &v70[v77];
    v78[1].super.isa = a3;
    *v78[1]._anon_8 = 0;
    *v78[1].tree = sub_1CF7969E0;
    *v78[1].tester = v68;
    *(a2 + v69) = v70;
    swift_endAccess();
  }

  else
  {
    sub_1CF9E6128();
    sub_1CEFD09A0(a3);
    v36 = sub_1CF9E6108();
    v37 = sub_1CF9E7298();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v84[0] = v39;
      *v38 = 136315138;
      sub_1CEFD09A0(a3);
      v40 = sub_1CEFD11AC(a3);
      v81 = v9;
      v82 = a5;
      v41 = v40;
      v42 = a4;
      v44 = v43;
      sub_1CEFD0A98(a3);
      sub_1CEFD0A98(a3);
      v45 = sub_1CEFD0DF0(v41, v44, v84);
      v46 = v44;
      a4 = v42;
      v46, v47, v48, v49, v50, v51, v52, v53;
      *(v38 + 4) = v45;
      _os_log_impl(&dword_1CEFC7000, v36, v37, "no rescan pending for %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1D386CDC0](v39, -1, -1);
      MEMORY[0x1D386CDC0](v38, -1, -1);

      (*(v83 + 8))(v11, v81);
    }

    else
    {
      sub_1CEFD0A98(a3);

      (*(v83 + 8))(v11, v9);
    }

    a4(0);
  }
}

uint64_t sub_1CF8139FC(uint64_t a1, uint64_t (*a2)(__n128), uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t))
{
  v9 = sub_1CF9E6118();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v11);
  v14 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a4);
  v15 = sub_1CF9E6108();
  v16 = sub_1CF9E7298();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v35 = v10;
    v19 = v18;
    v37 = v18;
    *v17 = 136315138;
    sub_1CEFD09A0(a4);
    v20 = sub_1CEFD11AC(a4);
    v36 = a5;
    v21 = v20;
    v34 = v9;
    v23 = v22;
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);
    v24 = sub_1CEFD0DF0(v21, v23, &v37);
    v23, v25, v26, v27, v28, v29, v30, v31;
    *(v17 + 4) = v24;
    v32 = v36;
    _os_log_impl(&dword_1CEFC7000, v15, v16, "rescan ended for %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1D386CDC0](v19, -1, -1);
    MEMORY[0x1D386CDC0](v17, -1, -1);

    (*(v35 + 8))(v13, v34);
    return v32(a1);
  }

  else
  {
    sub_1CEFD0A98(a4);

    (*(v10 + 8))(v13, v9);
    return a5(a1);
  }
}

uint64_t sub_1CF813C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v49 = a2;
  v50 = a3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v6 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  v17 = sub_1CF9E64A8();
  v18 = *(v17 - 1);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = (&v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v4 + 64);
  *v21 = v22;
  (*(v18 + 104))(v21, *MEMORY[0x1E69E8020], v17, v19);
  v23 = v22;
  v24 = sub_1CF9E64D8();
  (*(v18 + 8))(v21, v17);
  if ((v24 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    v6 = sub_1CF1F6A6C(0, (*v6->tree + 1), 1, v6);
    *v24 = v6;
    goto LABEL_7;
  }

  v48 = v6;
  v51 = a1;
  sub_1CF407FF8(0, v16);
  v25 = qword_1EDEBBC60;
  swift_beginAccess();
  v26 = *(v4 + v25);
  if (!*v26->tree || (, sub_1CF7BF520(v16), v28 = v27, v26, v27, v29, v30, v31, v32, v33, v34, (v28 & 1) == 0))
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54[0] = *(v4 + v25);
    *(v4 + v25) = 0x8000000000000000;
    sub_1CF1D43C4(MEMORY[0x1E69E7CC0], v16, isUniquelyReferenced_nonNull_native);
    *(v4 + v25) = v54[0];
    swift_endAccess();
  }

  sub_1CEFCCBDC(v16, v13, &unk_1EC4BF650, &unk_1CF9FCB40);
  v21 = sub_1CF807904(v55);
  v17 = sub_1CF5985C0(v54, v13);
  if (!*v36)
  {
    (v17)(v54, 0);
    sub_1CEFCCC44(v13, &unk_1EC4BF650, &unk_1CF9FCB40);
    (v21)(v55, 0);
    goto LABEL_11;
  }

  v24 = v36;
  v47 = v10;
  v10 = swift_allocObject();
  *(v10 + 2) = v49;
  *(v10 + 3) = v50;
  v6 = *v24;

  v37 = swift_isUniquelyReferenced_nonNull_native();
  *v24 = v6;
  if ((v37 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_7:
  v39 = *v6->tree;
  v38 = *v6->tester;
  if (v39 >= v38 >> 1)
  {
    v6 = sub_1CF1F6A6C((v38 > 1), (v39 + 1), 1, v6);
    *v24 = v6;
  }

  *v6->tree = v39 + 1;
  v40 = v6 + 16 * v39;
  *(v40 + 4) = sub_1CF7969E0;
  *(v40 + 5) = v10;
  (v17)(v54, 0);
  sub_1CEFCCC44(v13, &unk_1EC4BF650, &unk_1CF9FCB40);
  (v21)(v55, 0);
  v10 = v47;
LABEL_11:
  sub_1CEFCCBDC(v51, v10, &unk_1EC4BF650, &unk_1CF9FCB40);
  swift_storeEnumTagMultiPayload();
  if (*(v4 + qword_1EDEADB48) == 1)
  {
    sub_1CEFCCBDC(v10, v53, &qword_1EC4BE710, &qword_1CF9FE5A8);
    v41 = qword_1EDEBBCD8;
    swift_beginAccess();
    v42 = *(v4 + v41);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v41) = v42;
    if ((v43 & 1) == 0)
    {
      v42 = sub_1CF1F8168(0, *v42->tree + 1, 1, v42);
      *(v4 + v41) = v42;
    }

    v45 = *v42->tree;
    v44 = *v42->tester;
    if (v45 >= v44 >> 1)
    {
      v42 = sub_1CF1F8168((v44 > 1), v45 + 1, 1, v42);
    }

    *v42->tree = v45 + 1;
    sub_1CEFE55D0(v53, v42 + ((v48[2].tree[0] + 32) & ~v48[2].tree[0]) + *v48[2]._anon_8 * v45, &qword_1EC4BE710, &qword_1CF9FE5A8);
    *(v4 + v41) = v42;
    swift_endAccess();
  }

  sub_1CEFCCC44(v10, &qword_1EC4BE710, &qword_1CF9FE5A8);
  return sub_1CEFCCC44(v16, &unk_1EC4BF650, &unk_1CF9FCB40);
}

uint64_t sub_1CF814244()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v2 = v0 + v1[13];
  v3 = *(v2 + 13);
  v207 = *(v2 + 12);
  v208 = v3;
  v209 = *(v2 + 14);
  v210 = *(v2 + 30);
  v4 = *(v2 + 9);
  v203 = *(v2 + 8);
  v204 = v4;
  v5 = *(v2 + 11);
  v205 = *(v2 + 10);
  v206 = v5;
  v6 = *(v2 + 5);
  v199 = *(v2 + 4);
  v200 = v6;
  v7 = *(v2 + 7);
  v201 = *(v2 + 6);
  v202 = v7;
  v8 = *(v2 + 1);
  v195 = *v2;
  v196 = v8;
  v9 = *(v2 + 3);
  v197 = *(v2 + 2);
  v198 = v9;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v195) == 1)
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    v191[12] = v207;
    v191[13] = v208;
    v191[14] = v209;
    v192 = v210;
    v191[8] = v203;
    v191[9] = v204;
    v191[10] = v205;
    v191[11] = v206;
    v191[4] = v199;
    v191[5] = v200;
    v191[6] = v201;
    v191[7] = v202;
    v191[1] = v196;
    v191[2] = v197;
    v191[3] = v198;
    v12 = ItemNonSyncableAttributes.description.getter();
    v14 = v13;
    *&v191[0] = 0x3A72747461736E20;
    *(&v191[0] + 1) = 0xE800000000000000;
    MEMORY[0x1D3868CC0](v12);
    v14, v15, v16, v17, v18, v19, v20, v21;
    v11 = 0xE800000000000000;
    v10 = 0x3A72747461736E20;
  }

  if (*(v0 + v1[14] + 32))
  {
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  else
  {
    v24 = sub_1CF686424();
    v26 = v25;
    *&v191[0] = 0x3A63657220;
    *(&v191[0] + 1) = 0xE500000000000000;
    MEMORY[0x1D3868CC0](v24);
    v26, v27, v28, v29, v30, v31, v32, v33;
    v23 = 0xE500000000000000;
    v22 = 0x3A63657220;
  }

  if (*(v0 + v1[15] + 16))
  {
    v186 = 0;
    v34 = 0xE000000000000000;
  }

  else
  {
    v35 = sub_1CF6865D8();
    v37 = v36;
    *&v191[0] = 0x3A63657220;
    *(&v191[0] + 1) = 0xE500000000000000;
    MEMORY[0x1D3868CC0](v35);
    v37, v38, v39, v40, v41, v42, v43, v44;
    v34 = 0xE500000000000000;
    v186 = 0x3A63657220;
  }

  v45 = *(v0 + v1[16]);
  if (v45)
  {
    strcpy(v191, " unsupported:");
    HIWORD(v191[0]) = -4864;
    v46 = sub_1CF071470(v45);
    v48 = v47;
    MEMORY[0x1D3868CC0](v46);
    v48, v49, v50, v51, v52, v53, v54, v55;
    v56 = *(&v191[0] + 1);
    v184 = *&v191[0];
  }

  else
  {
    v184 = 0;
    v56 = 0xE000000000000000;
  }

  v185 = v56;
  v57 = (v0 + v1[17]);
  v58 = *v57;
  v59 = v57[1] >> 62;
  v190 = v10;
  v188 = v22;
  v189 = v23;
  v187 = v34;
  if (!v59)
  {
    v60 = 1852270888;
    goto LABEL_17;
  }

  if (v59 == 1)
  {
    v60 = 1886221352;
LABEL_17:
    *&v191[0] = v60 & 0xFFFF0000FFFFFFFFLL | 0x3A00000000;
    *(&v191[0] + 1) = 0xE500000000000000;
    v61 = fpfs_tempfile_pattern_t.description.getter(v58);
    v63 = v62;
    MEMORY[0x1D3868CC0](v61);
    v63, v64, v65, v66, v67, v68, v69, v70;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v71 = 0xE500000000000000;
    v72 = *&v191[0];
    goto LABEL_19;
  }

  v72 = 0;
  v71 = 0xE000000000000000;
LABEL_19:
  if (*(v0 + v1[12]) == 1)
  {
    v73 = 47;
  }

  else
  {
    v73 = 0;
  }

  if (*(v0 + v1[12]) == 1)
  {
    v74 = 0xE100000000000000;
  }

  else
  {
    v74 = 0xE000000000000000;
  }

  *&v191[0] = 0;
  *(&v191[0] + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  0xE000000000000000, v75, v76, v77, v78, v79, v80, v81;
  v193 = 3830588;
  v194 = 0xE300000000000000;
  v82 = NSFileProviderItemIdentifier.description.getter(*v0);
  v84 = v83;
  MEMORY[0x1D3868CC0](v82);
  v84, v85, v86, v87, v88, v89, v90, v91;
  MEMORY[0x1D3868CC0](3829792, 0xE300000000000000);
  v92 = NSFileProviderItemIdentifier.description.getter(v0[1]);
  v94 = v93;
  MEMORY[0x1D3868CC0](v92);
  v94, v95, v96, v97, v98, v99, v100, v101;
  MEMORY[0x1D3868CC0](574254624, 0xE400000000000000);
  v102 = sub_1CF9E6888();
  v103 = [v102 fp_obfuscatedFilename];

  v104 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v106 = v105;

  MEMORY[0x1D3868CC0](v104, v106);
  v106, v107, v108, v109, v110, v111, v112, v113;
  MEMORY[0x1D3868CC0](v73, v74);
  v74, v114, v115, v116, v117, v118, v119, v120;
  MEMORY[0x1D3868CC0](34, 0xE100000000000000);
  MEMORY[0x1D3868CC0](v72, v71);
  v71, v121, v122, v123, v124, v125, v126, v127;
  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  v128 = sub_1CF0720C8();
  v130 = v129;
  MEMORY[0x1D3868CC0](v128);
  v130, v131, v132, v133, v134, v135, v136, v137;
  MEMORY[0x1D3868CC0](v184, v185);
  v185, v138, v139, v140, v141, v142, v143, v144;
  MEMORY[0x1D3868CC0](3831328, 0xE300000000000000);
  v145 = sub_1CF680318();
  v147 = v146;
  MEMORY[0x1D3868CC0](v145);
  v147, v148, v149, v150, v151, v152, v153, v154;
  MEMORY[0x1D3868CC0](v188, v189);
  v189, v155, v156, v157, v158, v159, v160, v161;
  MEMORY[0x1D3868CC0](v186, v187);
  v187, v162, v163, v164, v165, v166, v167, v168;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);

  MEMORY[0x1D3868CC0](v190, v11);
  0xE300000000000000, v169, v170, v171, v172, v173, v174, v175;
  v11, v176, v177, v178, v179, v180, v181, v182;
  return 3830588;
}

uint64_t sub_1CF814758()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v2 = (v0 + v1[13]);
  v3 = v2[13];
  v207 = v2[12];
  v208 = v3;
  v209 = v2[14];
  v210 = *(v2 + 30);
  v4 = v2[9];
  v203 = v2[8];
  v204 = v4;
  v5 = v2[11];
  v205 = v2[10];
  v206 = v5;
  v6 = v2[5];
  v199 = v2[4];
  v200 = v6;
  v7 = v2[7];
  v201 = v2[6];
  v202 = v7;
  v8 = v2[1];
  v195 = *v2;
  v196 = v8;
  v9 = v2[3];
  v197 = v2[2];
  v198 = v9;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v195) == 1)
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    v193[12] = v207;
    v193[13] = v208;
    v193[14] = v209;
    v194 = v210;
    v193[8] = v203;
    v193[9] = v204;
    v193[10] = v205;
    v193[11] = v206;
    v193[4] = v199;
    v193[5] = v200;
    v193[6] = v201;
    v193[7] = v202;
    v193[1] = v196;
    v193[2] = v197;
    v193[3] = v198;
    v12 = ItemNonSyncableAttributes.description.getter();
    v14 = v13;
    *&v193[0] = 0x3A72747461736E20;
    *(&v193[0] + 1) = 0xE800000000000000;
    MEMORY[0x1D3868CC0](v12);
    v14, v15, v16, v17, v18, v19, v20, v21;
    v11 = 0xE800000000000000;
    v10 = 0x3A72747461736E20;
  }

  if (*(v0 + v1[14] + 32))
  {
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  else
  {
    v24 = sub_1CF686424();
    v26 = v25;
    *&v193[0] = 0x3A63657220;
    *(&v193[0] + 1) = 0xE500000000000000;
    MEMORY[0x1D3868CC0](v24);
    v26, v27, v28, v29, v30, v31, v32, v33;
    v23 = 0xE500000000000000;
    v22 = 0x3A63657220;
  }

  if (*(v0 + v1[15] + 16))
  {
    v188 = 0;
    v34 = 0xE000000000000000;
  }

  else
  {
    v35 = sub_1CF6865D8();
    v37 = v36;
    *&v193[0] = 0x3A63657220;
    *(&v193[0] + 1) = 0xE500000000000000;
    MEMORY[0x1D3868CC0](v35);
    v37, v38, v39, v40, v41, v42, v43, v44;
    v34 = 0xE500000000000000;
    v188 = 0x3A63657220;
  }

  v45 = *(v0 + v1[16]);
  if (v45)
  {
    strcpy(v193, " unsupported:");
    HIWORD(v193[0]) = -4864;
    v46 = sub_1CF071470(v45);
    v48 = v47;
    MEMORY[0x1D3868CC0](v46);
    v48, v49, v50, v51, v52, v53, v54, v55;
    v56 = *(&v193[0] + 1);
    v186 = *&v193[0];
  }

  else
  {
    v186 = 0;
    v56 = 0xE000000000000000;
  }

  v187 = v56;
  v57 = (v0 + v1[17]);
  v58 = *v57;
  v59 = v57[1] >> 62;
  v192 = v10;
  v190 = v22;
  v191 = v23;
  v189 = v34;
  if (!v59)
  {
    v60 = 1852270888;
    goto LABEL_17;
  }

  if (v59 == 1)
  {
    v60 = 1886221352;
LABEL_17:
    *&v193[0] = v60 & 0xFFFF0000FFFFFFFFLL | 0x3A00000000;
    *(&v193[0] + 1) = 0xE500000000000000;
    v61 = fpfs_tempfile_pattern_t.description.getter(v58);
    v63 = v62;
    MEMORY[0x1D3868CC0](v61);
    v63, v64, v65, v66, v67, v68, v69, v70;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v71 = 0xE500000000000000;
    v72 = *&v193[0];
    goto LABEL_19;
  }

  v72 = 0;
  v71 = 0xE000000000000000;
LABEL_19:
  if (*(v0 + v1[12]) == 1)
  {
    v73 = 47;
  }

  else
  {
    v73 = 0;
  }

  if (*(v0 + v1[12]) == 1)
  {
    v74 = 0xE100000000000000;
  }

  else
  {
    v74 = 0xE000000000000000;
  }

  sub_1CF9E7948();
  0xE000000000000000, v75, v76, v77, v78, v79, v80, v81;
  v83 = VFSItemID.description.getter(v82);
  v85 = v84;
  MEMORY[0x1D3868CC0](v83);
  v85, v86, v87, v88, v89, v90, v91, v92;
  v93 = MEMORY[0x1D3868CC0](3829792, 0xE300000000000000);
  v94 = VFSItemID.description.getter(v93);
  v96 = v95;
  MEMORY[0x1D3868CC0](v94);
  v96, v97, v98, v99, v100, v101, v102, v103;
  MEMORY[0x1D3868CC0](574254624, 0xE400000000000000);
  v104 = sub_1CF9E6888();
  v105 = [v104 fp_obfuscatedFilename];

  v106 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v108 = v107;

  MEMORY[0x1D3868CC0](v106, v108);
  v108, v109, v110, v111, v112, v113, v114, v115;
  MEMORY[0x1D3868CC0](v73, v74);
  v74, v116, v117, v118, v119, v120, v121, v122;
  MEMORY[0x1D3868CC0](34, 0xE100000000000000);
  MEMORY[0x1D3868CC0](v72, v71);
  v71, v123, v124, v125, v126, v127, v128, v129;
  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  v130 = sub_1CF0720C8();
  v132 = v131;
  MEMORY[0x1D3868CC0](v130);
  v132, v133, v134, v135, v136, v137, v138, v139;
  MEMORY[0x1D3868CC0](v186, v187);
  v187, v140, v141, v142, v143, v144, v145, v146;
  MEMORY[0x1D3868CC0](3831328, 0xE300000000000000);
  v147 = sub_1CF680064();
  v149 = v148;
  MEMORY[0x1D3868CC0](v147);
  v149, v150, v151, v152, v153, v154, v155, v156;
  MEMORY[0x1D3868CC0](v190, v191);
  v191, v157, v158, v159, v160, v161, v162, v163;
  MEMORY[0x1D3868CC0](v188, v189);
  v189, v164, v165, v166, v167, v168, v169, v170;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);

  MEMORY[0x1D3868CC0](v192, v11);
  0xE300000000000000, v171, v172, v173, v174, v175, v176, v177;
  v11, v178, v179, v180, v181, v182, v183, v184;
  return 3830588;
}

uint64_t sub_1CF814C94(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v55 = a3;
  v5 = sub_1CF9E6388();
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v67 = (v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v65 = v52 - v8;
  v66 = sub_1CF9E6498();
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v59 = v52 - v11;
  v12 = sub_1CF9E63D8();
  v56 = *(v12 - 8);
  v57 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v58 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E6448();
  v61 = *(v14 - 8);
  v62 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v60 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E73D8();
  v53 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CF9E64A8();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = (v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v3 + 16);
  v25 = v24[8];
  *v23 = v25;
  (*(v20 + 104))(v23, *MEMORY[0x1E69E8020], v19, v21);
  v26 = v25;
  LOBYTE(v25) = sub_1CF9E64D8();
  v27 = (*(v20 + 8))(v23, v19);
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    MEMORY[0x1EEE9AC00](v27);
    v52[-2] = v24;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v52[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  swift_beginAccess();
  sub_1CEFD09A0(a1);
  sub_1CF6EAAF0(&v71, a1);
  swift_endAccess();
  sub_1CEFD0A98(v71);
  v28 = *(v24[4] + 16);
  type metadata accessor for VFSFileTree(0);
  v29 = swift_dynamicCastClassUnconditional();

  v27 = objc_sync_enter(v24);
  if (v27)
  {
    goto LABEL_10;
  }

  v52[1] = v28;
  v30 = *(v24 + qword_1EDEADB30);
  v31 = objc_sync_exit(v24);
  if (v31)
  {
    MEMORY[0x1EEE9AC00](v31);
    v52[-2] = v24;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v52[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v32 = swift_allocObject();
  v32[2] = v3;
  v32[3] = a1;
  v33 = v55;
  v32[4] = v54;
  v32[5] = v33;
  sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v54 = v29;
  v34 = *(v29 + 216);
  v70 = MEMORY[0x1E69E7CC0];
  sub_1CEFD09A0(a1);
  sub_1CEFCCCA4(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
  sub_1CF9E77B8();
  v36 = sub_1CF9E73E8();

  (*(v53 + 8))(v18, v16);
  qos_class_self();
  v37 = v59;
  sub_1CF9E63B8();
  v39 = v56;
  v38 = v57;
  v40 = *(v56 + 48);
  if (v40(v37, 1, v57) == 1)
  {
    (*(v39 + 104))(v58, *MEMORY[0x1E69E7FA0], v38);
    v41 = v40(v37, 1, v38);
    v43 = v68;
    v42 = v69;
    if (v41 != 1)
    {
      sub_1CEFCCC44(v37, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v39 + 32))(v58, v37, v38);
    v43 = v68;
    v42 = v69;
  }

  ObjectType = swift_getObjectType();
  v45 = v60;
  sub_1CF9E6428();
  v46 = swift_allocObject();
  *(v46 + 16) = v54;
  *(v46 + 24) = 0;
  *(v46 + 32) = 2;
  *(v46 + 40) = 0u;
  *(v46 + 56) = 0u;
  *(v46 + 72) = 0u;
  *(v46 + 88) = 0u;
  *(v46 + 104) = 0u;
  *(v46 + 120) = 0u;
  *(v46 + 136) = 0u;
  *(v46 + 152) = v36;
  *(v46 + 160) = sub_1CF8FC9D4;
  *(v46 + 168) = v32;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v45, sub_1CEFD5D08, v46, ObjectType);

  (*(v61 + 8))(v45, v62);
  v47 = v63;
  sub_1CF9E6478();
  v48 = v65;
  sub_1CEFD5B64(v65);
  v49 = v67;
  sub_1CEFD5BD8(v67);
  MEMORY[0x1D3869770](v47, v48, v49, ObjectType);
  v50 = *(v43 + 8);
  v50(v49, v42);
  v50(v48, v42);
  (*(v64 + 8))(v47, v66);
  sub_1CF9E7448();

  return swift_unknownObjectRelease();
}

uint64_t sub_1CF815590(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5)
{
  v44 = a4;
  v45 = a5;
  v43 = a1;
  v7 = type metadata accessor for VFSItem(0);
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v34 - v9;
  v10 = sub_1CF9E63A8();
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1CF9E6448();
  v13 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a2 + 16);
  v16 = *(v34 + 64);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  aBlock[4] = sub_1CF8FCA20;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_3389;
  v18 = _Block_copy(aBlock);
  v19 = v16;
  v35 = a2;

  sub_1CEFD09A0(a3);
  sub_1CF9E63F8();
  v46 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v15, v12, v18);
  v20 = v41;
  _Block_release(v18);

  (*(v40 + 8))(v12, v10);
  (*(v13 + 8))(v15, v39);

  sub_1CEFCCBDC(v43, v20, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_1CEFCCC44(v20, &unk_1EC4BF310, &unk_1CF9FDB30);
    return (v44)(v21);
  }

  v22 = v38;
  v21 = (*(v37 + 48))(v20, 1, v38);
  if (v21 == 1)
  {
    return (v44)(v21);
  }

  v24 = v36;
  sub_1CEFDA0C4(v20, v36, type metadata accessor for VFSItem);
  v25 = v24 + *(v22 + 28);
  if (*(v25 + *(type metadata accessor for ItemMetadata(0) + 80)))
  {
    v44();
  }

  else
  {
    type metadata accessor for VFSFileTree(0);
    v26 = swift_dynamicCastClassUnconditional();
    v27 = swift_allocObject();
    v28 = v44;
    v29 = v45;
    v27[2] = v35;
    v27[3] = v28;
    v27[4] = v29;
    v30 = swift_allocObject();
    v30[2] = v26;
    v30[3] = sub_1CF8FCA44;
    v30[4] = v27;
    v31 = *(v26 + 216);
    v32 = swift_allocObject();
    v32[2] = v26;
    v32[3] = sub_1CF8FCA50;
    v32[4] = v30;
    swift_retain_n();

    v33 = v31;

    sub_1CF01001C(0, "eventBarrier(_:)", 16, 2, sub_1CF2AFA24, v32);
  }

  return sub_1CEFD5338(v24, type metadata accessor for VFSItem);
}

uint64_t sub_1CF815B94(uint64_t a1, uint64_t (*a2)(void))
{
  if ((*(*(a1 + 16) + 80) & 0x40) != 0)
  {
    type metadata accessor for VFSFileTree(0);
    v3 = swift_dynamicCastClassUnconditional();
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = *(v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F70, &unk_1CF9FE710);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1CF9FA440;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();

      v4(v6, MEMORY[0x1E69E7CC0], 0, 0);
      sub_1CEFF7124(v4, v5);
      v6, v7, v8, v9, v10, v11, v12, v13;
    }
  }

  return a2();
}

void sub_1CF815D18(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1CF9E64A8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(*(v4 + 16) + 64);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8, v10);
  v14 = v13;
  LOBYTE(v13) = sub_1CF9E64D8();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    swift_beginAccess();
    sub_1CEFD09A0(a1);
    sub_1CF6EAAF0(&v19, a1);
    swift_endAccess();
    sub_1CEFD0A98(v19);
    type metadata accessor for FPFileTree(0);
    v15 = swift_dynamicCastClassUnconditional();
    v16 = swift_allocObject();
    v16[2] = v4;
    v16[3] = a1;
    v16[4] = a2;
    v16[5] = a3;
    v17 = swift_allocObject();
    v17[2] = v15;
    v17[3] = sub_1CF8FC990;
    v17[4] = v16;

    sub_1CEFD09A0(a1);

    sub_1CF01001C(0, "eventBarrier(_:)", 16, 2, sub_1CF2F46C4, v17);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CF815F88(uint64_t a1, unint64_t a2, uint64_t (*a3)(__n128), uint64_t a4)
{
  v21 = a4;
  v22 = a3;
  v6 = sub_1CF9E63A8();
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CF9E6448();
  v9 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(a1 + 16) + 64);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  aBlock[4] = sub_1CF8FC99C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_3375;
  v14 = _Block_copy(aBlock);
  v15 = v12;

  sub_1CEFD09A0(a2);
  sub_1CF9E63F8();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v11, v8, v14);
  _Block_release(v14);

  (*(v20 + 8))(v8, v6);
  (*(v9 + 8))(v11, v19);

  return (v22)(v16);
}

unint64_t sub_1CF816284(uint64_t a1, unint64_t a2, void *a3)
{
  swift_beginAccess();
  v4 = sub_1CF8DD744(a2);
  swift_endAccess();
  return sub_1CF8FC9C0(v4);
}

void sub_1CF8162F0(unint64_t a1, id a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v81 = a3;
  v9 = sub_1CF9E63A8();
  v86 = *(v9 - 8);
  v87 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6448();
  v83 = *(v11 - 8);
  v84 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E6118();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = dispatch_group_create();
  v18 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a1);
  v19 = sub_1CF9E6108();
  v20 = sub_1CF9E72C8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v78 = v17;
    v22 = v21;
    v23 = swift_slowAlloc();
    v79 = a2;
    v24 = v23;
    aBlock = v23;
    *v22 = 136315138;
    v25 = sub_1CEFD11AC(a1);
    v80 = v5;
    v26 = a4;
    v27 = v25;
    v77 = v13;
    v29 = v28;
    sub_1CEFD0A98(a1);
    v30 = sub_1CEFD0DF0(v27, v29, &aBlock);
    v29, v31, v32, v33, v34, v35, v36, v37;
    *(v22 + 4) = v30;
    a4 = v26;
    v5 = v80;
    _os_log_impl(&dword_1CEFC7000, v19, v20, "🚀  waiting for stabilization of FS and FP trees for %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v38 = v24;
    a2 = v79;
    MEMORY[0x1D386CDC0](v38, -1, -1);
    v39 = v22;
    v17 = v78;
    MEMORY[0x1D386CDC0](v39, -1, -1);

    (*(v14 + 8))(v16, v77);
  }

  else
  {
    sub_1CEFD0A98(a1);

    (*(v14 + 8))(v16, v13);
  }

  dispatch_group_enter(v17);
  v40 = swift_allocObject();
  *(v40 + 16) = a1;
  *(v40 + 24) = v17;
  sub_1CEFD09A0(a1);
  v41 = v17;
  sub_1CF814C94(a1, sub_1CF8FC818, v40);

  dispatch_group_enter(v41);
  v42 = swift_allocObject();
  *(v42 + 16) = a1;
  *(v42 + 24) = v41;
  sub_1CEFD09A0(a1);
  v80 = v41;
  sub_1CF815D18(a1, sub_1CF8FC87C, v42);

  v43 = *(v5[2].isa + 8);
  v44 = swift_allocObject();
  v44[2] = a1;
  v44[3] = v5;
  v44[4] = v81;
  v44[5] = a4;
  v44[6] = a2;
  sub_1CEFD09A0(a1);
  v45 = v43;

  v46 = fpfs_current_log();
  v81 = fpfs_adopt_log();
  v47 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v90 = v48;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v49 = sub_1CF9E7988();
  v51 = v50;
  MEMORY[0x1D3868CC0](v49);
  v51, v52, v53, v54, v55, v56, v57, v58;
  v59 = v90;
  sub_1CF9E6978();
  v59, v60, v61, v62, v63, v64, v65, v66;
  v67 = __fp_log_fork();

  *(v47 + 16) = v67;
  v68 = swift_allocObject();
  *(v68 + 16) = v46;
  *(v68 + 24) = v47;
  *(v68 + 32) = v45;
  *(v68 + 40) = "waitForSyncEngineStabilization(request:mode:_:)";
  *(v68 + 48) = 47;
  *(v68 + 56) = 2;
  *(v68 + 64) = sub_1CF8FC8A0;
  *(v68 + 72) = v44;
  v93 = sub_1CF2B9F54;
  v94 = v68;
  aBlock = MEMORY[0x1E69E9820];
  v90 = 1107296256;
  v91 = sub_1CEFCA444;
  v92 = &block_descriptor_3300;
  v69 = _Block_copy(&aBlock);
  v70 = v45;
  v79 = v46;

  v71 = v82;
  sub_1CF9E63F8();
  v88 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v72 = v85;
  v73 = v87;
  sub_1CF9E77B8();
  v74 = v80;
  sub_1CF9E7308();
  _Block_release(v69);
  (*(v86 + 8))(v72, v73);
  (*(v83 + 8))(v71, v84);

  v75 = v81;
  v76 = fpfs_adopt_log();
}

void sub_1CF8169E0(unint64_t a1, NSObject *a2, const char *a3)
{
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a1);
  v11 = sub_1CF9E6108();
  v12 = sub_1CF9E72C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v30 = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136315138;
    sub_1CEFD09A0(a1);
    v16 = sub_1CEFD11AC(a1);
    v31 = v6;
    v17 = a2;
    v19 = v18;
    sub_1CEFD0A98(a1);
    sub_1CEFD0A98(a1);
    v20 = sub_1CEFD0DF0(v16, v19, &v32);
    v21 = v19;
    a2 = v17;
    v21, v22, v23, v24, v25, v26, v27, v28;
    *(v14 + 4) = v20;
    _os_log_impl(&dword_1CEFC7000, v11, v12, v30, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1D386CDC0](v15, -1, -1);
    MEMORY[0x1D386CDC0](v14, -1, -1);

    (*(v7 + 8))(v9, v31);
  }

  else
  {
    sub_1CEFD0A98(a1);

    (*(v7 + 8))(v9, v6);
  }

  dispatch_group_leave(a2);
}

void sub_1CF816BF4(unint64_t a1, uint64_t a2, uint64_t a3, id a4, uint64_t (*a5)(uint64_t a1, uint64_t a2))
{
  v165 = a5;
  v169 = a2;
  v152 = sub_1CF9E63D8();
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v150 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v170 = &v149 - v13;
  v14 = sub_1CF9E6068();
  v160 = *(v14 - 8);
  v161 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v149 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v154 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v167 = &v149 - v20;
  v155 = type metadata accessor for Signpost(0);
  v157 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v162 = &v149 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v159 = &v149 - v23;
  v158 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v168 = &v149 - v26;
  v27 = sub_1CF9E6118();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v164 = &v149 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v149 - v31;
  v33 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a1);
  v34 = sub_1CF9E6108();
  v35 = sub_1CF9E72C8();
  v36 = os_log_type_enabled(v34, v35);
  v163 = v11;
  v156 = v16;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v153 = a3;
    v166 = a4;
    v38 = v37;
    v39 = v27;
    v40 = swift_slowAlloc();
    *&aBlock = v40;
    *v38 = 136315138;
    v41 = sub_1CEFD11AC(a1);
    v43 = v42;
    sub_1CEFD0A98(a1);
    v44 = sub_1CEFD0DF0(v41, v43, &aBlock);
    v43, v45, v46, v47, v48, v49, v50, v51;
    *(v38 + 4) = v44;
    _os_log_impl(&dword_1CEFC7000, v34, v35, "🚀  processing pending ingestions for %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    v52 = v40;
    v27 = v39;
    MEMORY[0x1D386CDC0](v52, -1, -1);
    v53 = v38;
    a4 = v166;
    a3 = v153;
    MEMORY[0x1D386CDC0](v53, -1, -1);
  }

  else
  {
    sub_1CEFD0A98(a1);
  }

  v54 = *(v28 + 8);
  v54(v32, v27);
  v55 = *(v169 + 16);
  sub_1CF7FC814("waitForSyncEngineStabilization(request:mode:_:)", 0x2FuLL, 2, sub_1CF8FC8B8, v169);
  v166 = a4;
  v56 = fpfs_current_or_default_log();
  v57 = v164;
  sub_1CF9E6128();
  sub_1CEFD09A0(a1);
  v58 = sub_1CF9E6108();
  v59 = sub_1CF9E72C8();
  v60 = os_log_type_enabled(v58, v59);
  v153 = v55;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&aBlock = v62;
    *v61 = 136315394;
    v63 = sub_1CEFD11AC(a1);
    v169 = v27;
    v65 = v64;
    sub_1CEFD0A98(a1);
    v66 = sub_1CEFD0DF0(v63, v65, &aBlock);
    v65, v67, v68, v69, v70, v71, v72, v73;
    *(v61 + 4) = v66;
    *(v61 + 12) = 2048;
    *(v61 + 14) = v165;
    _os_log_impl(&dword_1CEFC7000, v58, v59, "🚀  waiting for db stabilization for %s - mode %lu", v61, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v62);
    v74 = v62;
    v55 = v153;
    MEMORY[0x1D386CDC0](v74, -1, -1);
    MEMORY[0x1D386CDC0](v61, -1, -1);

    v75 = v164;
    v76 = v169;
  }

  else
  {
    sub_1CEFD0A98(a1);

    v75 = v57;
    v76 = v27;
  }

  v54(v75, v76);
  v77 = v161;
  v78 = v156;
  v79 = v165;
  v80 = v165 != 1;
  v81 = swift_allocObject();
  *(v81 + 16) = v55;
  *(v81 + 24) = v80;
  v82 = v166;
  *(v81 + 32) = a3;
  *(v81 + 40) = v82;
  *(v81 + 48) = a1;
  *(v81 + 56) = v79;
  v164 = v81;
  v83 = swift_allocObject();
  *(v83 + 16) = a3;
  *(v83 + 24) = v82;
  v169 = v83;

  sub_1CEFD09A0(a1);

  v166 = fpfs_adopt_log();
  v84 = v160;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v85 = qword_1EDEBBE40;
  v86 = v167;
  (*(v84 + 56))(v167, 1, 1, v77);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v87 = sub_1CF9E7988();
  v89 = v88;
  MEMORY[0x1D3868CC0](v87);
  v89, v90, v91, v92, v93, v94, v95, v96;
  v97 = aBlock;
  v98 = v86;
  v99 = v154;
  sub_1CEFCCBDC(v98, v154, &unk_1EC4BED20, &unk_1CFA00700);
  v100 = *(v84 + 48);
  if (v100(v99, 1, v77) == 1)
  {
    v101 = v85;
    sub_1CF9E6048();
    if (v100(v99, 1, v77) != 1)
    {
      sub_1CEFCCC44(v99, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v84 + 32))(v78, v99, v77);
  }

  v102 = v168;
  (*(v84 + 16))(v168, v78, v77);
  v103 = v155;
  *(v102 + *(v155 + 20)) = v85;
  v104 = v102 + *(v103 + 24);
  *v104 = "DB queue wait";
  *(v104 + 8) = 13;
  *(v104 + 16) = 2;
  v105 = v85;
  v106 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_1CF9FA450;
  *(v107 + 56) = MEMORY[0x1E69E6158];
  *(v107 + 64) = sub_1CEFD51C4();
  *(v107 + 32) = v97;
  sub_1CF9E6028(v106, &dword_1CEFC7000, v105, "DB queue wait", 13, 2, v102, "%s", 2);
  v107, v108, v109, v110, v111, v112, v113, v114;
  (*(v84 + 8))(v78, v77);
  sub_1CEFCCC44(v167, &unk_1EC4BED20, &unk_1CFA00700);
  v161 = *(v153 + 168);
  v167 = *(v153 + 64);
  v156 = sub_1CF9E6448();
  v160 = *(v156 - 8);
  (*(v160 + 56))(v170, 1, 1, v156);
  v115 = v159;
  sub_1CEFDA34C(v102, v159, type metadata accessor for Signpost);
  v116 = (*(v157 + 80) + 16) & ~*(v157 + 80);
  v117 = (v158 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
  v118 = swift_allocObject();
  sub_1CEFDA0C4(v115, v118 + v116, type metadata accessor for Signpost);
  v119 = (v118 + v117);
  v165 = sub_1CF5543A4;
  v120 = v169;
  *v119 = sub_1CF5543A4;
  v119[1] = v120;
  v121 = v162;
  sub_1CEFDA34C(v102, v162, type metadata accessor for Signpost);
  v122 = (v117 + 23) & 0xFFFFFFFFFFFFFFF8;
  v123 = (v122 + 15) & 0xFFFFFFFFFFFFFFF8;
  v124 = (v123 + 25) & 0xFFFFFFFFFFFFFFF8;
  v125 = (v124 + 23) & 0xFFFFFFFFFFFFFFF8;
  v126 = swift_allocObject();
  v127 = v126 + v116;
  v128 = v156;
  sub_1CEFDA0C4(v121, v127, type metadata accessor for Signpost);
  v129 = (v126 + v117);
  *v129 = sub_1CF045408;
  v129[1] = 0;
  *(v126 + v122) = v153;
  v130 = v160;
  v131 = v126 + v123;
  *v131 = "waitForStabilization(request:mode:_:)";
  *(v131 + 8) = 37;
  *(v131 + 16) = 2;
  v132 = (v126 + v124);
  v133 = v164;
  v134 = v169;
  *v132 = v165;
  v132[1] = v134;
  v135 = (v126 + v125);
  *v135 = sub_1CF8FC900;
  v135[1] = v133;
  v136 = swift_allocObject();
  v136[2] = sub_1CF903308;
  v136[3] = v118;
  v137 = v161;
  v136[4] = v161;
  swift_retain_n();

  v165 = v118;

  v138 = fpfs_current_log();
  v139 = *(v137 + 16);
  v140 = v163;
  sub_1CEFCCBDC(v170, v163, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v130 + 48))(v140, 1, v128) == 1)
  {
    sub_1CEFCCC44(v140, &unk_1EC4BE370, qword_1CFA01B30);
    v141 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v142 = v150;
    sub_1CF9E6438();
    (*(v130 + 8))(v140, v128);
    v141 = sub_1CF9E63C8();
    (*(v151 + 8))(v142, v152);
  }

  v143 = swift_allocObject();
  v143[2] = v138;
  v143[3] = sub_1CF4858EC;
  v143[4] = v126;
  v174 = sub_1CF2BA17C;
  v175 = v143;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v172 = sub_1CEFCA444;
  v173 = &block_descriptor_3326;
  v144 = _Block_copy(&aBlock);
  v145 = v138;

  v174 = sub_1CF2BA180;
  v175 = v136;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v172 = sub_1CEFCA444;
  v173 = &block_descriptor_3329;
  v146 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v139, v167, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v141, v144, v146);
  _Block_release(v146);
  _Block_release(v144);

  sub_1CEFCCC44(v170, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v168, type metadata accessor for Signpost);
  v147 = v166;
  v148 = fpfs_adopt_log();
}

void sub_1CF817AD0(uint64_t a1, void (*a2)(__n128), uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  v14 = sub_1CF9E64A8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = (&v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v19)
  {
    a2(v16);
    return;
  }

  v38 = a2;
  v34 = a6;
  v35 = a7;
  v36 = a4;
  v20 = *(a4 + 16);
  v21 = *(v20 + 64);
  *v18 = v21;
  v22 = *MEMORY[0x1E69E8020];
  v37 = *(v15 + 104);
  v37(v18, v22, v14, v16);
  v23 = v21;
  v24 = sub_1CF9E64D8();
  v25 = *(v15 + 8);
  v25(v18, v14);
  if ((v24 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v26 = *(v20 + qword_1EDEBBCB0);
  if (v26 == a5)
  {
    (v38)(0);
    return;
  }

  v27 = *(v20 + 64);
  *v18 = v27;
  (v37)(v18, v22, v14);
  v28 = v27;
  v29 = sub_1CF9E64D8();
  v25(v18, v14);
  if ((v29 & 1) == 0)
  {
    goto LABEL_10;
  }

  v30 = swift_allocObject();
  v30[2] = v38;
  v30[3] = a3;
  v31 = v35;
  v30[4] = v36;
  v30[5] = v26;
  v32 = v34;
  v30[6] = v34;
  v30[7] = v31;

  sub_1CEFD09A0(v32);
  sub_1CF8162F0(v32, v31, sub_1CF902E3C, v30);
}

void sub_1CF817D2C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v21 = a5;
  v10 = sub_1CF9E64A8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a2 + 16);
  v16 = *(v15 + qword_1EDEBBCB0);
  v17 = *(v15 + 64);
  *v14 = v17;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10, v12);
  v18 = v17;
  LOBYTE(v17) = sub_1CF9E64D8();
  (*(v11 + 8))(v14, v10);
  if (v17)
  {
    v19 = swift_allocObject();
    v19[2] = v21;
    v19[3] = a6;
    v19[4] = a2;
    v19[5] = v16;
    v19[6] = a3;
    v19[7] = a4;

    sub_1CEFD09A0(a3);
    sub_1CF8162F0(a3, a4, sub_1CF8FC800, v19);
  }

  else
  {
    __break(1u);
  }
}

double sub_1CF817EE4(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF901AB8;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = v4;
  v11[4] = a1;
  v11[5] = a3;
  v11[6] = a4;
  v11[7] = sub_1CF901AB8;
  v11[8] = v9;
  swift_retain_n();
  swift_retain_n();
  sub_1CEFD09A0(a2);

  v12 = a1;
  sub_1CF7AAF88("waitForSyncEngineChanges(below:request:completionHandler:)", 58, 2, 2, sub_1CF90324C, v10, sub_1CF901AC0, v11);

  return result;
}

void sub_1CF818044(void *a1, unint64_t a2, uint64_t a3, void *a4, void (*a5)(void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v73 = a1;
  v69 = a8;
  v70 = a5;
  v66 = a7;
  v71 = a6;
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - v15;
  v68 = a4;
  v78 = a4;
  v17 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a2);
  v18 = sub_1CF9E6108();
  v19 = sub_1CF9E72C8();
  v20 = os_log_type_enabled(v18, v19);
  v67 = a2;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v64 = v12;
    v22 = v21;
    v23 = swift_slowAlloc();
    v65 = a3;
    v24 = v23;
    v77[0] = v23;
    *v22 = 136315138;
    v25 = sub_1CEFD11AC(a2);
    v26 = a2;
    v28 = v27;
    sub_1CEFD0A98(v26);
    v29 = sub_1CEFD0DF0(v25, v28, v77);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v22 + 4) = v29;
    _os_log_impl(&dword_1CEFC7000, v18, v19, "🚧  processing barrier request %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v37 = v24;
    a3 = v65;
    MEMORY[0x1D386CDC0](v37, -1, -1);
    MEMORY[0x1D386CDC0](v22, -1, -1);

    v38 = v64;
  }

  else
  {
    sub_1CEFD0A98(a2);

    v38 = v12;
  }

  v39 = *(v38 + 8);
  v39(v16, v11);
  v40 = v11;
  v41 = v73[3];
  v42 = v73[4];
  v43 = __swift_project_boxed_opaque_existential_1(v73, v41);
  v44 = a3;
  v45 = *(a3 + 16);

  v46 = v43;
  v47 = v74;
  sub_1CF68E230(&v78, v46, v41, v42, v77);
  if (v47)
  {
    goto LABEL_5;
  }

  memcpy(v76, v77, sizeof(v76));
  if (sub_1CF08B99C(v76) == 1)
  {
    memcpy(v75, v77, sizeof(v75));
  }

  else
  {
    memcpy(v75, v77, sizeof(v75));
    if (LOBYTE(v75[57]) <= 1u)
    {
      if (LOBYTE(v75[57]))
      {
        v48 = v75[27];
        if (LOBYTE(v75[27]) != 255)
        {
          v49 = v75[26];
          v73 = *(*(v45 + 32) + 16);
          type metadata accessor for VFSFileTree(0);
          v50 = swift_dynamicCastClassUnconditional();
          v51 = swift_allocObject();
          v52 = v67;
          *(v51 + 16) = v67;
          *(v51 + 24) = v44;
          v53 = v71;
          *(v51 + 32) = v70;
          *(v51 + 40) = v53;
          *(v51 + 48) = v49;
          *(v51 + 56) = v48;
          v54 = v68;
          v55 = v66;
          *(v51 + 64) = v68;
          *(v51 + 72) = v55;
          *(v51 + 80) = v69;
          v74 = *(v50 + 216);
          v56 = swift_allocObject();
          v56[2] = v50;
          v56[3] = sub_1CF901AE8;
          v56[4] = v51;

          sub_1CEFD09A0(v52);

          v57 = v54;

          v58 = v74;

          sub_1CF01001C(0, "eventBarrier(_:)", 16, 2, sub_1CF9034D4, v56);

          sub_1CEFCCC44(v75, &unk_1EC4BFD80, &unk_1CFA0A2A0);

LABEL_5:

          return;
        }
      }
    }
  }

  sub_1CEFCCC44(v75, &unk_1EC4BFD80, &unk_1CFA0A2A0);
  v59 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v60 = sub_1CF9E6108();
  v61 = sub_1CF9E72C8();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_1CEFC7000, v60, v61, "🚧  item is not a live directory", v62, 2u);
    MEMORY[0x1D386CDC0](v62, -1, -1);
  }

  v39(v72, v40);
  v70(0, 0);
}

void sub_1CF818588(unint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, int a6, void *a7, uint64_t a8, uint64_t a9)
{
  v141 = a7;
  LODWORD(v10) = a6;
  v161 = a5;
  v154 = a4;
  v148 = a2;
  v140 = a9;
  v139 = sub_1CF9E63D8();
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v137 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v162 = &v136 - v18;
  v19 = sub_1CF9E6068();
  v159 = *(v19 - 1);
  v160 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v144 = (&v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v142 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v156 = &v136 - v24;
  v143 = type metadata accessor for Signpost(0);
  v145 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v149 = &v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v147 = (&v136 - v27);
  v146 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v158 = &v136 - v30;
  v31 = sub_1CF9E6118();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v136 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a1);
  v36 = sub_1CF9E6108();
  v37 = sub_1CF9E72C8();
  v38 = os_log_type_enabled(v36, v37);
  v152 = a1;
  v153 = v16;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v155 = a3;
    v40 = v39;
    v41 = swift_slowAlloc();
    *&aBlock = v41;
    *v40 = 136315138;
    sub_1CEFD09A0(a1);
    v42 = sub_1CEFD11AC(a1);
    LODWORD(v157) = v10;
    v10 = a8;
    v43 = v42;
    v151 = v31;
    v45 = v44;
    sub_1CEFD0A98(a1);
    sub_1CEFD0A98(a1);
    v46 = sub_1CEFD0DF0(v43, v45, &aBlock);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v40 + 4) = v46;
    a8 = v10;
    LOBYTE(v10) = v157;
    _os_log_impl(&dword_1CEFC7000, v36, v37, "🚧  FS barrier observed for %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1D386CDC0](v41, -1, -1);
    v54 = v40;
    a3 = v155;
    MEMORY[0x1D386CDC0](v54, -1, -1);

    (*(v32 + 8))(v34, v151);
  }

  else
  {
    sub_1CEFD0A98(a1);

    (*(v32 + 8))(v34, v31);
  }

  v55 = v148;
  v56 = v148[2];
  v57 = *(*(*(v56 + 40) + 16) + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = 0;
  v59 = swift_allocObject();
  v60 = v154;
  v59[2] = a3;
  v59[3] = v60;
  v59[4] = v58;
  v59[5] = v57;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_1CF901B7C;
  *(v61 + 24) = v59;
  *(v61 + 32) = v55;
  *(v61 + 40) = v57;
  v62 = v152;
  *(v61 + 48) = v58;
  *(v61 + 56) = v62;
  *(v61 + 64) = v161;
  *(v61 + 72) = v10;
  v63 = v141;
  *(v61 + 80) = v141;
  *(v61 + 88) = a8;
  *(v61 + 96) = v140;
  v64 = swift_allocObject();
  *(v64 + 2) = v56;
  *(v64 + 3) = v62;
  *(v64 + 4) = sub_1CF901B88;
  *(v64 + 5) = v61;
  v157 = v64;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_1CF901B88;
  *(v65 + 24) = v61;
  v161 = v65;

  sub_1CEFD09A0(v62);

  sub_1CEFD09A0(v62);
  v152 = v57;

  v151 = v58;

  v150 = v61;

  v154 = v59;

  v66 = v63;

  v155 = v56;

  v148 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v67 = qword_1EDEBBE40;
  v68 = v159;
  v69 = v160;
  v70 = v156;
  (v159)[7](v156, 1, 1, v160);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v71 = sub_1CF9E7988();
  v73 = v72;
  MEMORY[0x1D3868CC0](v71);
  v73, v74, v75, v76, v77, v78, v79, v80;
  v81 = aBlock;
  v82 = v70;
  v83 = v142;
  sub_1CEFCCBDC(v82, v142, &unk_1EC4BED20, &unk_1CFA00700);
  v84 = v68[6];
  v85 = v84(v83, 1, v69);
  v86 = v144;
  if (v85 == 1)
  {
    v87 = v67;
    sub_1CF9E6048();
    if (v84(v83, 1, v160) != 1)
    {
      sub_1CEFCCC44(v83, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (v159[4])(v144, v83, v160);
  }

  v88 = v158;
  v89 = v159;
  v90 = v160;
  (v159[2])(v158, v86, v160);
  v91 = v143;
  *(v88 + *(v143 + 20)) = v67;
  v92 = v88 + *(v91 + 24);
  *v92 = "DB queue wait";
  *(v92 + 8) = 13;
  *(v92 + 16) = 2;
  v93 = v67;
  v94 = v86;
  v95 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_1CF9FA450;
  *(v96 + 56) = MEMORY[0x1E69E6158];
  *(v96 + 64) = sub_1CEFD51C4();
  *(v96 + 32) = v81;
  sub_1CF9E6028(v95, &dword_1CEFC7000, v93, "DB queue wait", 13, 2, v88, "%s", 2);
  v96, v97, v98, v99, v100, v101, v102, v103;
  (v89[1])(v94, v90);
  sub_1CEFCCC44(v156, &unk_1EC4BED20, &unk_1CFA00700);
  v104 = *(v155 + 64);
  v159 = *(v155 + 168);
  v160 = v104;
  v156 = sub_1CF9E6448();
  v144 = *(v156 - 8);
  v144[7](v162, 1, 1, v156);
  v105 = v147;
  sub_1CEFDA34C(v88, v147, type metadata accessor for Signpost);
  v106 = (*(v145 + 80) + 16) & ~*(v145 + 80);
  v107 = (v146 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
  v108 = swift_allocObject();
  sub_1CEFDA0C4(v105, v108 + v106, type metadata accessor for Signpost);
  v109 = (v108 + v107);
  v147 = sub_1CF5543A4;
  v110 = v161;
  *v109 = sub_1CF5543A4;
  v109[1] = v110;
  v111 = v149;
  sub_1CEFDA34C(v88, v149, type metadata accessor for Signpost);
  v112 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
  v113 = (v112 + 15) & 0xFFFFFFFFFFFFFFF8;
  v114 = (v113 + 25) & 0xFFFFFFFFFFFFFFF8;
  v115 = swift_allocObject();
  sub_1CEFDA0C4(v111, v115 + v106, type metadata accessor for Signpost);
  v116 = (v115 + v107);
  v117 = v144;
  *v116 = sub_1CF045408;
  v116[1] = 0;
  *(v115 + v112) = v155;
  v118 = v115 + v113;
  *v118 = "waitForRescan(request:_:)";
  *(v118 + 8) = 25;
  *(v118 + 16) = 2;
  v119 = (v115 + v114);
  v120 = v161;
  *v119 = v147;
  v119[1] = v120;
  v121 = (v115 + ((v114 + 23) & 0xFFFFFFFFFFFFFFF8));
  v123 = v156;
  v122 = v157;
  *v121 = sub_1CF901C18;
  v121[1] = v122;
  v124 = swift_allocObject();
  v124[2] = sub_1CF903308;
  v124[3] = v108;
  v125 = v159;
  v124[4] = v159;
  swift_retain_n();

  v126 = fpfs_current_log();
  v159 = v125[2];
  v127 = v153;
  sub_1CEFCCBDC(v162, v153, &unk_1EC4BE370, qword_1CFA01B30);
  if ((v117[6])(v127, 1, v123) == 1)
  {
    sub_1CEFCCC44(v127, &unk_1EC4BE370, qword_1CFA01B30);
    v128 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v129 = v137;
    sub_1CF9E6438();
    (v117[1])(v127, v123);
    v128 = sub_1CF9E63C8();
    (*(v138 + 8))(v129, v139);
  }

  v130 = swift_allocObject();
  v130[2] = v126;
  v130[3] = sub_1CF4858EC;
  v130[4] = v115;
  v166 = sub_1CF2BA17C;
  v167 = v130;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v164 = sub_1CEFCA444;
  v165 = &block_descriptor_5793;
  v131 = _Block_copy(&aBlock);
  v132 = v126;

  v166 = sub_1CF2BA180;
  v167 = v124;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v164 = sub_1CEFCA444;
  v165 = &block_descriptor_5796;
  v133 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v159, v160, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v128, v131, v133);
  _Block_release(v133);
  _Block_release(v131);

  sub_1CEFCCC44(v162, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v158, type metadata accessor for Signpost);
  v134 = v148;
  v135 = fpfs_adopt_log();
}

void sub_1CF819400(void *a1, void (*a2)(void, void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, unsigned __int8 a9, void *a10, uint64_t (*a11)(uint64_t a1, uint64_t a2), void *a12)
{
  v140 = a8;
  v141 = a4;
  v142 = a5;
  v143 = a6;
  v148 = a2;
  v149 = a3;
  v145 = a7;
  v146 = a12;
  v139 = a11;
  v144 = a10;
  v138 = a9;
  v13 = sub_1CF9E63D8();
  v137 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v121 - v20;
  v22 = sub_1CF9E6068();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v121 - v30;
  v32 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v32);
  MEMORY[0x1EEE9AC00](v33);
  MEMORY[0x1EEE9AC00](v34);
  if (a1)
  {
    v41 = a1;
    v148(0, a1);
  }

  else
  {
    v125 = v36;
    v126 = v28;
    v127 = v35;
    v135 = v31;
    v128 = v25;
    v129 = v40;
    v130 = v39;
    v131 = v23;
    v124 = v22;
    v132 = v38;
    v133 = v18;
    v122 = v15;
    v123 = v13;
    v136 = &v121 - v37;
    v147 = v21;
    v42 = swift_allocObject();
    v43 = v148;
    v44 = v149;
    *(v42 + 16) = v148;
    *(v42 + 24) = v44;
    v45 = v141;
    v46 = *(v141 + 16);
    v47 = swift_allocObject();
    v49 = v142;
    v48 = v143;
    *(v47 + 16) = v45;
    *(v47 + 24) = v49;
    v51 = v144;
    v50 = v145;
    *(v47 + 32) = v48;
    *(v47 + 40) = v50;
    *(v47 + 48) = v140;
    *(v47 + 56) = v138;
    v52 = v139;
    *(v47 + 64) = v51;
    *(v47 + 72) = v52;
    *(v47 + 80) = v146;
    *(v47 + 88) = v43;
    v148 = v47;
    *(v47 + 96) = v44;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_1CF901AB8;
    *(v53 + 24) = v42;
    v140 = v53;
    v134 = v46;
    swift_retain_n();

    sub_1CEFD09A0(v50);
    v54 = v51;

    v149 = v42;

    v146 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v55 = qword_1EDEBBE40;
    v56 = v131;
    v57 = v135;
    v58 = v124;
    (*(v131 + 56))(v135, 1, 1, v124);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v59 = sub_1CF9E7988();
    v61 = v60;
    MEMORY[0x1D3868CC0](v59);
    v61, v62, v63, v64, v65, v66, v67, v68;
    v69 = aBlock;
    v70 = v57;
    v71 = v126;
    sub_1CEFCCBDC(v70, v126, &unk_1EC4BED20, &unk_1CFA00700);
    v72 = *(v56 + 48);
    if (v72(v71, 1, v58) == 1)
    {
      v73 = v55;
      v74 = v128;
      sub_1CF9E6048();
      if (v72(v71, 1, v58) != 1)
      {
        sub_1CEFCCC44(v71, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v74 = v128;
      (*(v56 + 32))(v128, v71, v58);
    }

    v75 = v136;
    (*(v56 + 16))(v136, v74, v58);
    v76 = v127;
    *(v75 + *(v127 + 20)) = v55;
    v77 = v75 + *(v76 + 24);
    *v77 = "DB queue wait";
    *(v77 + 8) = 13;
    *(v77 + 16) = 2;
    v78 = v55;
    v79 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_1CF9FA450;
    *(v80 + 56) = MEMORY[0x1E69E6158];
    *(v80 + 64) = sub_1CEFD51C4();
    *(v80 + 32) = v69;
    sub_1CF9E6028(v79, &dword_1CEFC7000, v78, "DB queue wait", 13, 2, v75, "%s", 2);
    v80, v81, v82, v83, v84, v85, v86, v87;
    (*(v56 + 8))(v74, v58);
    sub_1CEFCCC44(v135, &unk_1EC4BED20, &unk_1CFA00700);
    v88 = *(v134 + 64);
    v144 = *(v134 + 168);
    v145 = v88;
    v89 = sub_1CF9E6448();
    v142 = *(v89 - 8);
    v143 = v89;
    (*(v142 + 56))(v147, 1, 1, v89);
    v90 = v130;
    sub_1CEFDA34C(v75, v130, type metadata accessor for Signpost);
    v91 = (*(v129 + 80) + 16) & ~*(v129 + 80);
    v92 = (v125 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
    v93 = swift_allocObject();
    v141 = v93;
    sub_1CEFDA0C4(v90, v93 + v91, type metadata accessor for Signpost);
    v94 = (v93 + v92);
    v139 = sub_1CF5543A4;
    v95 = v140;
    *v94 = sub_1CF5543A4;
    v94[1] = v95;
    v96 = v132;
    sub_1CEFDA34C(v75, v132, type metadata accessor for Signpost);
    v97 = (v92 + 23) & 0xFFFFFFFFFFFFFFF8;
    v98 = (v97 + 15) & 0xFFFFFFFFFFFFFFF8;
    v99 = (v98 + 25) & 0xFFFFFFFFFFFFFFF8;
    v100 = swift_allocObject();
    v101 = v142;
    sub_1CEFDA0C4(v96, v100 + v91, type metadata accessor for Signpost);
    v102 = (v100 + v92);
    *v102 = sub_1CF045408;
    v102[1] = 0;
    *(v100 + v97) = v134;
    v103 = v100 + v98;
    *v103 = "waitForSyncEngineChanges(below:request:completionHandler:)";
    *(v103 + 8) = 58;
    *(v103 + 16) = 2;
    v104 = (v100 + v99);
    *v104 = v139;
    v104[1] = v95;
    v105 = (v100 + ((v99 + 23) & 0xFFFFFFFFFFFFFFF8));
    v106 = v148;
    *v105 = sub_1CF901C68;
    v105[1] = v106;
    v107 = swift_allocObject();
    v108 = v141;
    v107[2] = sub_1CF903308;
    v107[3] = v108;
    v109 = v144;
    v107[4] = v144;
    swift_retain_n();

    v110 = fpfs_current_log();
    v144 = v109[2];
    v111 = v143;
    v112 = v133;
    sub_1CEFCCBDC(v147, v133, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v101 + 48))(v112, 1, v111) == 1)
    {
      sub_1CEFCCC44(v112, &unk_1EC4BE370, qword_1CFA01B30);
      v113 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v114 = v122;
      sub_1CF9E6438();
      (*(v101 + 8))(v112, v111);
      v113 = sub_1CF9E63C8();
      (*(v137 + 8))(v114, v123);
    }

    v115 = swift_allocObject();
    v115[2] = v110;
    v115[3] = sub_1CF4858EC;
    v115[4] = v100;
    v153 = sub_1CF2BA17C;
    v154 = v115;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v151 = sub_1CEFCA444;
    v152 = &block_descriptor_5836;
    v116 = _Block_copy(&aBlock);
    v117 = v110;

    v153 = sub_1CF2BA180;
    v154 = v107;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v151 = sub_1CEFCA444;
    v152 = &block_descriptor_5839;
    v118 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v144, v145, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v113, v116, v118);
    _Block_release(v118);
    _Block_release(v116);

    sub_1CEFCCC44(v147, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CEFD5338(v136, type metadata accessor for Signpost);
    v119 = v146;
    v120 = fpfs_adopt_log();
  }
}

void sub_1CF81A080(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v37 = a4;
  v38 = a5;
  v39 = a3;
  v18 = sub_1CF9E5CF8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a8;
  v41 = a6;
  v42 = a7;
  v22 = a1[3];
  v23 = a1[4];
  v24 = __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1CF5AD9F8(v24, v22, v23);
  if (v12)
  {
    return;
  }

  v25 = v39;
  v36[1] = a2;
  v36[2] = 0;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v27 = v26;
  (*(v19 + 8))(v21, v18);
  v28 = v27 * 1000000000.0;
  if (COERCE__INT64(fabs(v27 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v36[0] = a11;
  v29 = v28;
  v30 = v25[3];
  if (v30 < v25[5] && v25[2] >= 1)
  {
    v25[3] = v30 + 1;
    v31 = v37;
    swift_beginAccess();
    *(v31 + 16) = 1;
    sub_1CF7FC438();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C50D0, &qword_1CFA18270);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  v34 = a1[3];
  v33 = a1[4];
  v35 = __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_1CF65A300(v38, v29, &v41, &v40, a9, a10, v32, v35, v36[0], a12, v34, *(v33 + 8));
}

double sub_1CF81A30C(void *a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = a1;
    a2(a1, 1);
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;
    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = a3;
    v11[4] = a4;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1CEFF9D98;
    *(v12 + 24) = v10;
    swift_retain_n();

    sub_1CF7AAF88("testingOperations(request:completionHandler:)", 45, 2, 2, sub_1CF8FC294, v12, sub_1CF8FCABC, v11);
  }

  return result;
}

void sub_1CF81A480(void *a1, void (*a2)(void *, BOOL))
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);
  sub_1CF5D8544(v6, v4, v5);
  if (v2)
  {
    v8 = v2;
  }

  else
  {
    v9 = v7;
    v8 = sub_1CF8E49EC(v7);
    v9, v10, v11, v12, v13, v14, v15, v16;
  }

  a2(v8, v2 != 0);
  sub_1CF481340(v8, (v2 != 0), v17, v18, v19, v20, v21, v22);
}

double sub_1CF81A534(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v5;
  v10[5] = a1;
  v11 = swift_allocObject();
  v11[2] = sub_1CF8FC798;
  v11[3] = v10;
  v11[4] = v5;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1CF8FC7C8;
  *(v12 + 24) = v11;
  v13 = swift_allocObject();
  v13[2] = v5;
  v13[3] = a2;
  v13[4] = 0;
  v13[5] = sub_1CF8FC7C8;
  v13[6] = v11;
  swift_retain_n();
  swift_retain_n();

  sub_1CEFD09A0(a2);
  sub_1CF7AAF88("waitForStabilization(request:mode:_:)", 37, 2, 2, sub_1CF90324C, v12, sub_1CF8FC7D4, v13);

  return result;
}

void sub_1CF81A6D8(void *a1, char a2, void (*a3)(void *, uint64_t, __n128), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v114 = a6;
  v11 = sub_1CF9E63D8();
  v112 = *(v11 - 8);
  v113 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v117 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v122 = &v104 - v16;
  v17 = sub_1CF9E6068();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v119 = &v104 - v24;
  v25 = type metadata accessor for Signpost(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v27);
  v33 = MEMORY[0x1EEE9AC00](v28);
  v121 = &v104 - v34;
  if (a2)
  {
    a3(a1, 1, v33);
  }

  else
  {
    v105 = v29;
    v106 = v32;
    v107 = v31;
    v108 = v18;
    v109 = v30;
    v35 = *(a5 + 16);
    v36 = swift_allocObject();
    *(v36 + 16) = a3;
    *(v36 + 24) = a4;
    v37 = swift_allocObject();
    v38 = v114;
    *(v37 + 2) = a1;
    *(v37 + 3) = v38;
    *(v37 + 4) = a5;
    *(v37 + 5) = a3;
    v118 = v37;
    *(v37 + 6) = a4;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1CF2B1400;
    *(v39 + 24) = v36;
    v120 = v39;
    v116 = v35;
    swift_retain_n();
    sub_1CEFCF530(a1, 0);

    v114 = v36;

    v110 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v40 = qword_1EDEBBE40;
    v41 = v108;
    v42 = v119;
    (*(v108 + 56))(v119, 1, 1, v17);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v43 = sub_1CF9E7988();
    v45 = v44;
    MEMORY[0x1D3868CC0](v43);
    v45, v46, v47, v48, v49, v50, v51, v52;
    v53 = *(&aBlock + 1);
    v104 = aBlock;
    sub_1CEFCCBDC(v42, v22, &unk_1EC4BED20, &unk_1CFA00700);
    v54 = *(v41 + 48);
    if (v54(v22, 1, v17) == 1)
    {
      v55 = v40;
      v56 = v115;
      sub_1CF9E6048();
      if (v54(v22, 1, v17) != 1)
      {
        sub_1CEFCCC44(v22, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v56 = v115;
      (*(v41 + 32))(v115, v22, v17);
    }

    v57 = v121;
    (*(v41 + 16))(v121, v56, v17);
    v58 = v105;
    *(v57 + *(v105 + 20)) = v40;
    v59 = v57 + *(v58 + 24);
    *v59 = "DB queue wait";
    *(v59 + 8) = 13;
    *(v59 + 16) = 2;
    v60 = v40;
    v61 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1CF9FA450;
    *(v62 + 56) = MEMORY[0x1E69E6158];
    *(v62 + 64) = sub_1CEFD51C4();
    *(v62 + 32) = v104;
    *(v62 + 40) = v53;
    sub_1CF9E6028(v61, &dword_1CEFC7000, v60, "DB queue wait", 13, 2, v57, "%s", 2);
    v62, v63, v64, v65, v66, v67, v68, v69;
    (*(v41 + 8))(v56, v17);
    sub_1CEFCCC44(v119, &unk_1EC4BED20, &unk_1CFA00700);
    v115 = *(v116 + 168);
    v119 = *(v116 + 64);
    v108 = sub_1CF9E6448();
    v105 = *(v108 - 8);
    (*(v105 + 56))(v122, 1, 1, v108);
    v70 = v107;
    sub_1CEFDA34C(v57, v107, type metadata accessor for Signpost);
    v71 = (*(v106 + 80) + 16) & ~*(v106 + 80);
    v72 = (v26 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    sub_1CEFDA0C4(v70, v73 + v71, type metadata accessor for Signpost);
    v74 = (v73 + v72);
    v107 = sub_1CF8FCB08;
    v75 = v120;
    *v74 = sub_1CF8FCB08;
    v74[1] = v75;
    v76 = v109;
    sub_1CEFDA34C(v57, v109, type metadata accessor for Signpost);
    v77 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
    v78 = (v77 + 15) & 0xFFFFFFFFFFFFFFF8;
    v79 = (v78 + 25) & 0xFFFFFFFFFFFFFFF8;
    v80 = (v79 + 23) & 0xFFFFFFFFFFFFFFF8;
    v81 = swift_allocObject();
    sub_1CEFDA0C4(v76, v81 + v71, type metadata accessor for Signpost);
    v82 = (v81 + v72);
    v83 = v105;
    *v82 = sub_1CF045408;
    v82[1] = 0;
    *(v81 + v77) = v116;
    v84 = v81 + v78;
    *v84 = "runTestingOperations(_:request:completionHandler:)";
    *(v84 + 8) = 50;
    *(v84 + 16) = 2;
    v85 = (v81 + v79);
    v86 = v120;
    *v85 = v107;
    v85[1] = v86;
    v87 = v81;
    v88 = (v81 + v80);
    v89 = v118;
    *v88 = sub_1CF8FCADC;
    v88[1] = v89;
    v90 = swift_allocObject();
    v90[2] = sub_1CF903308;
    v90[3] = v73;
    v91 = v115;
    v90[4] = v115;
    swift_retain_n();

    v116 = v73;
    v92 = v108;

    v93 = fpfs_current_log();
    v94 = *(v91 + 2);
    v95 = v117;
    sub_1CEFCCBDC(v122, v117, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v83 + 48))(v95, 1, v92) == 1)
    {
      sub_1CEFCCC44(v95, &unk_1EC4BE370, qword_1CFA01B30);
      v96 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v97 = v111;
      sub_1CF9E6438();
      (*(v83 + 8))(v95, v92);
      v96 = sub_1CF9E63C8();
      (*(v112 + 8))(v97, v113);
    }

    v98 = swift_allocObject();
    v98[2] = v93;
    v98[3] = sub_1CF4858EC;
    v98[4] = v87;
    v126 = sub_1CF2BA17C;
    v127 = v98;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v124 = sub_1CEFCA444;
    v125 = &block_descriptor_3439;
    v99 = _Block_copy(&aBlock);
    v100 = v93;

    v126 = sub_1CF2BA180;
    v127 = v90;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v124 = sub_1CEFCA444;
    v125 = &block_descriptor_3442;
    v101 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v94, v119, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v96, v99, v101);
    _Block_release(v101);
    _Block_release(v99);

    sub_1CEFCCC44(v122, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CEFD5338(v121, type metadata accessor for Signpost);
    v102 = v110;
    v103 = fpfs_adopt_log();
  }
}

void sub_1CF81B278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v100 = a6;
  v99 = a5;
  v116 = a4;
  v120 = a2;
  v8 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v115 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1CF9E5268();
  v119 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v11 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v122 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v111 = &v96 - v14;
  v112 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v96 - v17;
  v19 = sub_1CF9E63A8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1CF9E6448();
  v102 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v101 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = dispatch_group_create();
  v25 = swift_allocObject();
  v26 = sub_1CF4E4724(MEMORY[0x1E69E7CC0]);
  v118 = v25;
  *(v25 + 16) = v26;
  v27 = (v25 + 16);
  aBlock = a3;

  sub_1CF8DF904(&aBlock);
  if (v6)
  {
    goto LABEL_23;
  }

  v103 = v22;
  v104 = 0;
  v105 = v23;
  v106 = v20;
  v107 = v19;
  v28 = *(aBlock + 16);
  if (!v28)
  {
LABEL_19:

    v61 = *(*(v116 + 16) + 64);
    v62 = swift_allocObject();
    v63 = v100;
    v62[2] = v99;
    v62[3] = v63;
    v62[4] = v118;
    v64 = v61;

    v65 = fpfs_current_log();
    v122 = fpfs_adopt_log();
    v66 = swift_allocObject();
    aBlock = sub_1CF9E73C8();
    v124 = v67;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v68 = sub_1CF9E7988();
    v70 = v69;
    MEMORY[0x1D3868CC0](v68);
    v70, v71, v72, v73, v74, v75, v76, v77;
    v78 = v124;
    sub_1CF9E6978();
    v78, v79, v80, v81, v82, v83, v84, v85;
    v86 = __fp_log_fork();

    *(v66 + 16) = v86;
    v87 = swift_allocObject();
    *(v87 + 16) = v65;
    *(v87 + 24) = v66;
    *(v87 + 32) = v64;
    *(v87 + 40) = "runTestingOperations(_:request:completionHandler:)";
    *(v87 + 48) = 50;
    *(v87 + 56) = 2;
    *(v87 + 64) = sub_1CF8FCB10;
    *(v87 + 72) = v62;
    v127 = sub_1CF2B9F54;
    v128 = v87;
    aBlock = MEMORY[0x1E69E9820];
    v124 = 1107296256;
    v125 = sub_1CEFCA444;
    v126 = &block_descriptor_3456;
    v88 = _Block_copy(&aBlock);
    v89 = v64;
    v121 = v65;

    v90 = v101;
    sub_1CF9E63F8();
    v129 = MEMORY[0x1E69E7CC0];
    sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
    v91 = v103;
    v92 = v107;
    sub_1CF9E77B8();
    v93 = v117;
    sub_1CF9E7308();
    _Block_release(v88);
    (*(v106 + 8))(v91, v92);
    (*(v102 + 8))(v90, v105);

    v94 = v122;
    v95 = fpfs_adopt_log();

    return;
  }

  v110 = *(v11 + 80);
  v98 = aBlock;
  v109 = (v110 + 32) & ~v110;
  v29 = aBlock + v109;
  v121 = *(v11 + 72);
  v108 = (v119 + 8);
  while (1)
  {
    sub_1CEFCCBDC(v29, v18, &unk_1EC4BF650, &unk_1CF9FCB40);
    if ((sub_1CF7DC800(v18, v120) & 1) == 0)
    {
      break;
    }

    v30 = v117;
    dispatch_group_enter(v117);
    v119 = *(v116 + 16);
    v31 = v111;
    sub_1CEFCCBDC(v18, v111, &unk_1EC4BF650, &unk_1CF9FCB40);
    v32 = v29;
    v33 = v28;
    v34 = v18;
    v35 = v27;
    v36 = v109;
    v37 = swift_allocObject();
    v38 = v118;
    *(v37 + 16) = v30;
    *(v37 + 24) = v38;
    v39 = v37 + v36;
    v27 = v35;
    v18 = v34;
    v28 = v33;
    v29 = v32;
    sub_1CEFE55D0(v31, v39, &unk_1EC4BF650, &unk_1CF9FCB40);

    v40 = v30;
    sub_1CF813C50(v18, sub_1CF8FCB1C, v37);

LABEL_5:
    sub_1CEFCCC44(v18, &unk_1EC4BF650, &unk_1CF9FCB40);
    v29 += v121;
    if (!--v28)
    {
      goto LABEL_19;
    }
  }

  v41 = v122;
  sub_1CEFCCBDC(v18, v122, &unk_1EC4BF650, &unk_1CF9FCB40);
  sub_1CF9E50F8();
  sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
  v43 = v113;
  v42 = v114;
  sub_1CF9E57D8();
  v44 = sub_1CF9E50D8();
  (*v108)(v43, v42);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v129 = *v27;
  v46 = v129;
  *v27 = 0x8000000000000000;
  v48 = sub_1CF7BF520(v41);
  v49 = v46[2];
  v50 = (v47 & 1) == 0;
  v51 = v49 + v50;
  if (!__OFADD__(v49, v50))
  {
    v52 = v47;
    if (v46[3] < v51)
    {
      sub_1CF7CD440(v51, isUniquelyReferenced_nonNull_native);
      v53 = sub_1CF7BF520(v122);
      if ((v52 & 1) != (v54 & 1))
      {
        goto LABEL_22;
      }

      v48 = v53;
      v55 = v129;
      if ((v52 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_14:
      v56 = v55[7];
      v57 = *(v56 + 8 * v48);
      *(v56 + 8 * v48) = v44;

LABEL_18:
      sub_1CEFCCC44(v122, &unk_1EC4BF650, &unk_1CF9FCB40);
      *v27 = v55;
      swift_endAccess();
      goto LABEL_5;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v55 = v129;
      if (v47)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1CF7D3FDC();
      v55 = v129;
      if (v52)
      {
        goto LABEL_14;
      }
    }

LABEL_16:
    v55[(v48 >> 6) + 8] |= 1 << v48;
    sub_1CEFCCBDC(v122, v55[6] + v48 * v121, &unk_1EC4BF650, &unk_1CF9FCB40);
    *(v55[7] + 8 * v48) = v44;
    v58 = v55[2];
    v59 = __OFADD__(v58, 1);
    v60 = v58 + 1;
    if (v59)
    {
      goto LABEL_21;
    }

    v55[2] = v60;
    goto LABEL_18;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_1CF9E8108();
  __break(1u);
LABEL_23:

  __break(1u);
}

uint64_t sub_1CF81BCDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  MEMORY[0x1EEE9AC00](v4);
  v73 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v72 = (&v71 - v7);
  MEMORY[0x1EEE9AC00](v8);
  v74 = (&v71 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v71 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v71 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v71 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4FB0, &unk_1CFA17180);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v71 - v20;
  v23 = *(v22 + 56);
  v24 = a1;
  v25 = v23;
  sub_1CEFCCBDC(v24, v21, &unk_1EC4BF650, &unk_1CF9FCB40);
  sub_1CEFCCBDC(a2, &v21[v25], &unk_1EC4BF650, &unk_1CF9FCB40);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1CEFCCBDC(v21, v18, &unk_1EC4BF650, &unk_1CF9FCB40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      v36 = &unk_1EC4BFCC0;
      v37 = &unk_1CF9FCB50;
      v38 = v18;
      goto LABEL_37;
    }

    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFEC0, &unk_1CFA05590) + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = v74;
      sub_1CEFCCBDC(&v21[v25], v74, &unk_1EC4BF650, &unk_1CF9FCB40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDC0, &qword_1CF9FCBA0);
        v34 = *(v62 + 48);

        goto LABEL_23;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDA0, &qword_1CF9FCB98);
        v34 = v33[12];
        v35 = v12 + v33[20];

        sub_1CF1D5750(*v35, *(v35 + 1), *(v35 + 2), *(v35 + 3), *(v35 + 4), *(v35 + 5), *(v35 + 6), *(v35 + 7), *(v35 + 8), *(v35 + 9), *(v35 + 10), *(v35 + 11));
LABEL_23:
        sub_1CEFCCC44(v12 + v34, &unk_1EC4BFBB0, &qword_1CF9FCB90);

LABEL_29:
        sub_1CEFCCC44(&v18[v31], &unk_1EC4BEC00, &unk_1CF9FCB60);
        goto LABEL_30;
      }

      v69 = &unk_1EC4BFD70;
      v70 = &qword_1CFA12AC0;
LABEL_36:
      sub_1CEFCCC44(v12, v69, v70);
      v36 = &unk_1EC4BEC00;
      v37 = &unk_1CF9FCB60;
      v38 = &v18[v31];
      goto LABEL_37;
    }

    sub_1CEFCCBDC(&v21[v25], v12, &unk_1EC4BF650, &unk_1CF9FCB40);
    v46 = swift_getEnumCaseMultiPayload();
    if (v46)
    {
      if (v46 != 1)
      {
        v69 = &unk_1EC4BFCC0;
        v70 = &unk_1CF9FCB50;
        goto LABEL_36;
      }

      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCE0, &unk_1CFA05400);
      v48 = v47[12];
      v49 = v47[16];
      v50 = v25;
      v51 = (v12 + v47[20]);

      v52 = *v51;
      v53 = v51[1];
      v54 = v51[2];
      v55 = v51[3];
      v56 = v51[4];
      v57 = v51[5];
      v58 = v51[6];
      v59 = v51[7];
      v25 = v50;
      sub_1CF1D56D0(v52, v53, v54, v55, v56, v57, v58, v59);
      v60 = *(v12 + v49);
    }

    else
    {
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F90, &unk_1CF9FCB80);
      v48 = *(v64 + 48);
      v60 = *(v12 + *(v64 + 80));
    }

    sub_1CEFCCC44(v12 + v48, &qword_1EC4C1B40, &unk_1CF9FCB70);
    goto LABEL_29;
  }

  sub_1CEFCCBDC(v21, v15, &unk_1EC4BF650, &unk_1CF9FCB40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    v36 = &unk_1EC4BFD70;
    v37 = &qword_1CFA12AC0;
    v38 = v15;
LABEL_37:
    sub_1CEFCCC44(v38, v36, v37);
    goto LABEL_38;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = v72;
    sub_1CEFCCBDC(&v21[v25], v72, &unk_1EC4BF650, &unk_1CF9FCB40);
    v27 = swift_getEnumCaseMultiPayload();
    if (!v27)
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDC0, &qword_1CF9FCBA0);
      v29 = *(v61 + 48);

      goto LABEL_21;
    }

    if (v27 == 1)
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDA0, &qword_1CF9FCB98);
      v29 = v28[12];
      v30 = v26 + v28[20];

      sub_1CF1D5750(*v30, *(v30 + 1), *(v30 + 2), *(v30 + 3), *(v30 + 4), *(v30 + 5), *(v30 + 6), *(v30 + 7), *(v30 + 8), *(v30 + 9), *(v30 + 10), *(v30 + 11));
LABEL_21:
      sub_1CEFCCC44(v26 + v29, &unk_1EC4BFBB0, &qword_1CF9FCB90);

LABEL_26:
LABEL_30:
      sub_1CEFCCC44(&v21[v25], &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CEFCCC44(v21, &unk_1EC4BF650, &unk_1CF9FCB40);
      return 1;
    }

    v66 = &unk_1EC4BFD70;
    v67 = &qword_1CFA12AC0;
    v68 = v26;
    goto LABEL_34;
  }

  v39 = v73;
  sub_1CEFCCBDC(&v21[v25], v73, &unk_1EC4BF650, &unk_1CF9FCB40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  v40 = swift_getEnumCaseMultiPayload();
  if (!v40)
  {
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F90, &unk_1CF9FCB80);
    v42 = *(v63 + 48);
    v45 = *(v39 + *(v63 + 80));
    goto LABEL_25;
  }

  if (v40 == 1)
  {
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCE0, &unk_1CFA05400);
    v42 = v41[12];
    v43 = v41[16];
    v44 = v39 + v41[20];

    sub_1CF1D56D0(*v44, *(v44 + 8), *(v44 + 16), *(v44 + 24), *(v44 + 32), *(v44 + 40), *(v44 + 48), *(v44 + 56));
    v45 = *(v39 + v43);
LABEL_25:

    sub_1CEFCCC44(v39 + v42, &qword_1EC4C1B40, &unk_1CF9FCB70);
    goto LABEL_26;
  }

  v66 = &unk_1EC4BFCC0;
  v67 = &unk_1CF9FCB50;
  v68 = v39;
LABEL_34:
  sub_1CEFCCC44(v68, v66, v67);

LABEL_38:
  sub_1CEFCCC44(v21, &qword_1EC4C4FB0, &unk_1CFA17180);
  return 0;
}

void sub_1CF81C408(uint64_t a1, dispatch_group_t group)
{
  if (a1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v4 = v3;
    v5 = v3;
    sub_1CF052DA4(group, sub_1CF8FCB9C);
  }

  dispatch_group_leave(group);
}

uint64_t sub_1CF81C4B4(uint64_t *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v6 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a1;
  *a1 = 0x8000000000000000;
  sub_1CF1D421C(a3, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v9;
  return swift_endAccess();
}

void sub_1CF81C550(void (*a1)(__n128), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);

  (a1)(v6, 0);
  v5, v7, v8, v9, v10, v11, v12, v13;
}

unint64_t sub_1CF81C5BC(unint64_t a1, unint64_t a2)
{
  v415 = a2;
  v3 = sub_1CF9E5A58();
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v414 = &v406 - v10;
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v413 = &v406 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v412 = &v406 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v409 = &v406 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v411 = &v406 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v410 = &v406 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v408 = &v406 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v406 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v407 = &v406 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v406 = &v406 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v406 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v406 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v406 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v406 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v406 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v406 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v406 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v406 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v69 = a1;
  v71 = &v406 - v70;
  switch((v69 >> 58) & 0x3C | (v69 >> 1) & 3)
  {
    case 1uLL:
      v140 = v415;
      if (((v140 >> 58) & 0x3C | (v140 >> 1) & 3) == 1)
      {
        goto LABEL_105;
      }

      goto LABEL_170;
    case 2uLL:
      v413 = v66;
      v414 = v58;
      v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
      v165 = swift_projectBox();
      if (((v415 >> 58) & 0x3C | (v415 >> 1) & 3) != 2)
      {
        goto LABEL_170;
      }

      v166 = *v165;
      v167 = v165[1];
      v168 = v164[16];
      v409 = *(v165 + v168);
      v169 = v164[20];
      v411 = *(v165 + v169);
      v412 = v166;
      v170 = v164[12];
      v171 = v165;
      v172 = swift_projectBox();
      v415 = *(v172 + v168);
      v173 = *v172;
      v174 = v172[1];
      v410 = *(v172 + v169);
      v175 = *(v413 + 2);
      v176 = v171 + v170;
      v177 = v414;
      v175(v71, v176, v414);
      v175(v56, v172 + v170, v177);
      if ((v412 != v173 || v167 != v174) && (sub_1CF9E8048() & 1) == 0)
      {
        goto LABEL_167;
      }

      v178 = v415;
      if (sub_1CF9E59A8())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v179 = sub_1CF9E7568();

        v180 = v414;
        v181 = *(v413 + 1);
        v181(v56, v414);
        v181(v71, v180);
        v157 = v179 & (v411 == v410);
        return v157 & 1;
      }

LABEL_167:
      v389 = v414;
      v390 = *(v413 + 1);
      v390(v56, v414);
      v390(v71, v389);
      goto LABEL_170;
    case 3uLL:
      v140 = v415;
      if (((v140 >> 58) & 0x3C | (v140 >> 1) & 3) != 3)
      {
        goto LABEL_170;
      }

      goto LABEL_105;
    case 4uLL:
      v159 = v415;
      if (((v159 >> 58) & 0x3C | (v159 >> 1) & 3) == 4)
      {
        goto LABEL_75;
      }

      goto LABEL_170;
    case 5uLL:
      v159 = v415;
      if (((v159 >> 58) & 0x3C | (v159 >> 1) & 3) != 5)
      {
        goto LABEL_170;
      }

LABEL_75:
      v211 = *((v159 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v210 = *((v159 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if (!*((v69 & 0xFFFFFFFFFFFFFF9) + 0x10))
      {
        if (v211)
        {
          goto LABEL_170;
        }

        v364 = v210;
        goto LABEL_165;
      }

      if (!v211)
      {
        goto LABEL_170;
      }

      v212 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v214 = v213;
      v216 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v217 = v212;
      v218 = v215;
      if (v217 == v216 && v214 == v215)
      {
        v219 = v210;

        v214, v220, v221, v222, v223, v224, v225, v226;
        v218, v227, v228, v229, v230, v231, v232, v233;
LABEL_165:
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v157 = sub_1CF9E7568();

        return v157 & 1;
      }

      v373 = sub_1CF9E8048();
      v374 = v210;

      v214, v375, v376, v377, v378, v379, v380, v381;
      v218, v382, v383, v384, v385, v386, v387, v388;
      if (v373)
      {
        goto LABEL_165;
      }

      goto LABEL_170;
    case 6uLL:
      v198 = v58;
      v243 = v66;
      v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v245 = swift_projectBox();
      if (((v415 >> 58) & 0x3C | (v415 >> 1) & 3) != 6)
      {
        goto LABEL_170;
      }

      v246 = *(v244 + 48);
      v247 = v245;
      v248 = swift_projectBox();
      v249 = *(v248 + v246);
      v250 = *(v243 + 2);
      v250(v53, v247, v198);
      v250(v50, v248, v198);
      v251 = v249;
      if (sub_1CF9E59A8())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v157 = sub_1CF9E7568();

        v208 = *(v243 + 1);
        v208(v50, v198);
        v209 = v53;
        goto LABEL_88;
      }

      v369 = *(v243 + 1);
      v369(v50, v198);
      v370 = v53;
      goto LABEL_162;
    case 7uLL:
      v182 = v58;
      v183 = v66;
      v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v185 = swift_projectBox();
      if (((v415 >> 58) & 0x3C | (v415 >> 1) & 3) != 7)
      {
        goto LABEL_170;
      }

      v186 = *(v184 + 48);
      v187 = v185;
      v188 = swift_projectBox();
      v189 = *(v188 + v186);
      v190 = *(v183 + 2);
      v190(v47, v187, v182);
      v190(v44, v188, v182);
      v191 = v189;
      if (sub_1CF9E59A8())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v157 = sub_1CF9E7568();

        v192 = *(v183 + 1);
        v192(v44, v182);
        v192(v47, v182);
        return v157 & 1;
      }

      v368 = *(v183 + 1);
      v368(v44, v182);
      v368(v47, v182);
      goto LABEL_170;
    case 8uLL:
      v140 = v415;
      if (((v140 >> 58) & 0x3C | (v140 >> 1) & 3) != 8)
      {
        goto LABEL_170;
      }

      goto LABEL_105;
    case 9uLL:
      v140 = v415;
      if (((v140 >> 58) & 0x3C | (v140 >> 1) & 3) != 9)
      {
        goto LABEL_170;
      }

      goto LABEL_105;
    case 0xAuLL:
      v140 = v415;
      if (((v140 >> 58) & 0x3C | (v140 >> 1) & 3) != 0xA)
      {
        goto LABEL_170;
      }

      goto LABEL_105;
    case 0xBuLL:
      v141 = v415;
      if (((v141 >> 58) & 0x3C | (v141 >> 1) & 3) != 0xB)
      {
        goto LABEL_170;
      }

      goto LABEL_123;
    case 0xCuLL:
      v140 = v415;
      if (((v140 >> 58) & 0x3C | (v140 >> 1) & 3) != 0xC)
      {
        goto LABEL_170;
      }

      goto LABEL_105;
    case 0xDuLL:
      v140 = v415;
      if (((v140 >> 58) & 0x3C | (v140 >> 1) & 3) != 0xD)
      {
        goto LABEL_170;
      }

      goto LABEL_105;
    case 0xEuLL:
      if (((v415 >> 58) & 0x3C | (v415 >> 1) & 3) != 0xE || (sub_1CF6BEDC4(*((v69 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v415 & 0xFFFFFFFFFFFFFF9) + 0x10)) & 1) == 0)
      {
        goto LABEL_170;
      }

      goto LABEL_121;
    case 0xFuLL:
      if (((v415 >> 58) & 0x3C | (v415 >> 1) & 3) != 0xF || (sub_1CF6BF014(*((v69 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v415 & 0xFFFFFFFFFFFFFF9) + 0x10)) & 1) == 0)
      {
        goto LABEL_170;
      }

      goto LABEL_121;
    case 0x10uLL:
      v143 = v415;
      if (((v143 >> 58) & 0x3C | (v143 >> 1) & 3) != 0x10)
      {
        goto LABEL_170;
      }

      goto LABEL_113;
    case 0x11uLL:
      v143 = v415;
      if (((v143 >> 58) & 0x3C | (v143 >> 1) & 3) != 0x11)
      {
        goto LABEL_170;
      }

      goto LABEL_113;
    case 0x12uLL:
      v143 = v415;
      if (((v143 >> 58) & 0x3C | (v143 >> 1) & 3) != 0x12)
      {
        goto LABEL_170;
      }

      goto LABEL_113;
    case 0x13uLL:
      v143 = v415;
      if (((v143 >> 58) & 0x3C | (v143 >> 1) & 3) != 0x13)
      {
        goto LABEL_170;
      }

LABEL_113:
      v312 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v313 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v314 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v315 = *((v143 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v316 = *((v143 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v317 = *((v143 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v318 = *((v143 & 0xFFFFFFFFFFFFFF9) + 0x20);
      sub_1CEFD0988(v312, v313, v314);
      sub_1CEFD0988(v315, v316, v317);
      if (sub_1CF7BC790(v312, v313 | (v314 << 8), v315, v316 | (v317 << 8)))
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v157 = sub_1CF9E7568();

        sub_1CEFD0994(v315, v316, v317);
        sub_1CEFD0994(v312, v313, v314);
        return v157 & 1;
      }

      sub_1CEFD0994(v315, v316, v317);
      sub_1CEFD0994(v312, v313, v314);
      goto LABEL_170;
    case 0x14uLL:
      v198 = v58;
      v199 = v66;
      v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v201 = swift_projectBox();
      if (((v415 >> 58) & 0x3C | (v415 >> 1) & 3) != 0x14)
      {
        goto LABEL_170;
      }

      v202 = *(v200 + 48);
      v203 = v201;
      v204 = swift_projectBox();
      v205 = *(v204 + v202);
      v206 = *(v199 + 2);
      v206(v41, v203, v198);
      v206(v38, v204, v198);
      v207 = v205;
      if (sub_1CF9E59A8())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v157 = sub_1CF9E7568();

        v208 = *(v199 + 1);
        v208(v38, v198);
        v209 = v41;
LABEL_88:
        v208(v209, v198);
        return v157 & 1;
      }

      v369 = *(v199 + 1);
      v369(v38, v198);
      v370 = v41;
LABEL_162:
      v369(v370, v198);
      goto LABEL_170;
    case 0x15uLL:
      v142 = v415;
      if (((v142 >> 58) & 0x3C | (v142 >> 1) & 3) == 0x15)
      {
        goto LABEL_81;
      }

      goto LABEL_170;
    case 0x16uLL:
      v140 = v415;
      if (((v140 >> 58) & 0x3C | (v140 >> 1) & 3) == 0x16)
      {
        goto LABEL_105;
      }

      goto LABEL_170;
    case 0x17uLL:
      if (((v415 >> 58) & 0x3C | (v415 >> 1) & 3) == 0x17)
      {
        goto LABEL_121;
      }

      goto LABEL_170;
    case 0x18uLL:
      if (((v415 >> 58) & 0x3C | (v415 >> 1) & 3) != 0x18)
      {
        goto LABEL_170;
      }

      goto LABEL_121;
    case 0x19uLL:
      if (((v415 >> 58) & 0x3C | (v415 >> 1) & 3) != 0x19)
      {
        goto LABEL_170;
      }

LABEL_121:
      sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
      return sub_1CF9E7568() & 1;
    case 0x1AuLL:
      if (((v415 >> 58) & 0x3C | (v415 >> 1) & 3) != 0x1A)
      {
        goto LABEL_170;
      }

      v347 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v348 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v349 = *((v415 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v350 = *((v415 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if (!v347)
      {
        if (v349)
        {
          goto LABEL_170;
        }

        goto LABEL_173;
      }

      if (v349)
      {
        sub_1CEFD57E0(0, &qword_1EDEA3730, off_1E83BC670);
        v351 = v349;
        v352 = v347;
        v353 = sub_1CF9E7568();

        if (v353)
        {
LABEL_173:
          v157 = v348 == v350;
          return v157 & 1;
        }
      }

      goto LABEL_170;
    case 0x1BuLL:
      v141 = v415;
      if (((v141 >> 58) & 0x3C | (v141 >> 1) & 3) != 0x1B)
      {
        goto LABEL_170;
      }

      goto LABEL_123;
    case 0x1CuLL:
      v141 = v415;
      if (((v141 >> 58) & 0x3C | (v141 >> 1) & 3) == 0x1C)
      {
        goto LABEL_123;
      }

      goto LABEL_170;
    case 0x1DuLL:
      if (((v415 >> 58) & 0x3C | (v415 >> 1) & 3) != 0x1D)
      {
        goto LABEL_170;
      }

      v333 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v101 = v334;
      v103 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v335 = v333;
      v110 = v102;
      if (v335 == v103 && v101 == v102)
      {
        goto LABEL_127;
      }

      goto LABEL_138;
    case 0x1EuLL:
      if (((v415 >> 58) & 0x3C | (v415 >> 1) & 3) != 0x1E)
      {
        goto LABEL_170;
      }

      v252 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v253 = *((v415 & 0xFFFFFFFFFFFFFF9) + 0x10);
      sub_1CEFD09A0(v253);
      LOBYTE(v252) = sub_1CF81E3B8(v252, v253);
      sub_1CEFD0A98(v253);
      return v252 & 1;
    case 0x1FuLL:
      v141 = v415;
      if (((v141 >> 58) & 0x3C | (v141 >> 1) & 3) != 0x1F)
      {
        goto LABEL_170;
      }

LABEL_123:
      v157 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x10) == *((v141 & 0xFFFFFFFFFFFFFF9) + 0x10);
      return v157 & 1;
    case 0x20uLL:
      v122 = v58;
      v123 = v66;
      v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5210, &unk_1CFA0F4B0);
      v256 = swift_projectBox();
      if (((v415 >> 58) & 0x3C | (v415 >> 1) & 3) != 0x20)
      {
        goto LABEL_170;
      }

      v257 = *(v255 + 48);
      LODWORD(v414) = *(v256 + v257);
      v258 = *(v255 + 64);
      v413 = *(v256 + v258);
      v259 = v256;
      v260 = swift_projectBox();
      LODWORD(v415) = *(v260 + v257);
      v261 = *(v260 + v258);
      v132 = v123;
      v262 = *(v123 + 2);
      v134 = v35;
      v263 = v35;
      v135 = v122;
      v262(v263, v259, v122);
      v264 = v406;
      v262(v406, v260, v122);
      v265 = v261;
      v138 = v264;
      v139 = v265;
      if ((sub_1CF9E59A8() & 1) == 0)
      {
        goto LABEL_137;
      }

      if (v414 == v415)
      {
        goto LABEL_131;
      }

      goto LABEL_142;
    case 0x21uLL:
      v146 = v58;
      v147 = v66;
      v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v149 = swift_projectBox();
      if (((v415 >> 58) & 0x3C | (v415 >> 1) & 3) != 0x21)
      {
        goto LABEL_170;
      }

      v150 = *(v148 + 48);
      v151 = v149;
      v152 = swift_projectBox();
      v153 = *(v152 + v150);
      v154 = *(v147 + 2);
      v155 = v407;
      v154(v407, v151, v146);
      v154(v28, v152, v146);
      v156 = v153;
      if (sub_1CF9E59A8())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v157 = sub_1CF9E7568();

        v158 = *(v147 + 1);
        v158(v28, v146);
        v158(v155, v146);
        return v157 & 1;
      }

      v367 = *(v147 + 1);
      v367(v28, v146);
      v367(v155, v146);
      goto LABEL_170;
    case 0x22uLL:
      v142 = v415;
      if (((v142 >> 58) & 0x3C | (v142 >> 1) & 3) != 0x22)
      {
        goto LABEL_170;
      }

LABEL_81:
      v234 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v235 = *((v142 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v236 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v237 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v238 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v239 = *((v142 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v240 = *((v142 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v241 = *((v142 & 0xFFFFFFFFFFFFFF9) + 0x19);
      sub_1CEFD0988(v236, v237, *((v69 & 0xFFFFFFFFFFFFFF9) + 0x19));
      sub_1CEFD0988(v239, v240, v241);
      v242 = sub_1CF7BC790(v236, v237 | (v238 << 8), v239, v240 | (v241 << 8));
      sub_1CEFD0994(v239, v240, v241);
      sub_1CEFD0994(v236, v237, v238);
      if ((v242 & 1) == 0)
      {
        goto LABEL_170;
      }

      v157 = v234 == v235;
      return v157 & 1;
    case 0x23uLL:
      v122 = v58;
      v123 = v66;
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5200, "hx\t");
      v125 = swift_projectBox();
      if (((v415 >> 58) & 0x3C | (v415 >> 1) & 3) != 0x23)
      {
        goto LABEL_170;
      }

      v126 = *(v124 + 48);
      v127 = *(v125 + v126);
      v128 = *(v124 + 64);
      v413 = *(v125 + v128);
      v414 = v127;
      v129 = v125;
      v130 = swift_projectBox();
      v415 = *(v130 + v126);
      v131 = *(v130 + v128);
      v132 = v123;
      v133 = *(v123 + 2);
      v134 = v408;
      v135 = v122;
      v133(v408, v129, v122);
      v136 = v410;
      v133(v410, v130, v122);
      v137 = v131;
      v138 = v136;
      v139 = v137;
      if ((sub_1CF9E59A8() & 1) == 0)
      {
        goto LABEL_137;
      }

      if (v414 != v415)
      {
        goto LABEL_142;
      }

      goto LABEL_131;
    case 0x24uLL:
      v140 = v415;
      if (((v140 >> 58) & 0x3C | (v140 >> 1) & 3) != 0x24)
      {
        goto LABEL_170;
      }

LABEL_105:
      v72 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v74 = *((v140 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v73 = *((v140 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v267 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v269 = v268;
      v271 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v272 = v267;
      v273 = v270;
      if (v272 == v271 && v269 == v270)
      {
        v274 = v73;
        v275 = v72;
        v276 = v74;
        v269, v277, v278, v279, v280, v281, v282, v283;
        v273, v284, v285, v286, v287, v288, v289, v290;
        goto LABEL_109;
      }

      v291 = sub_1CF9E8048();
      v292 = v73;
      v293 = v72;
      v294 = v74;
      v269, v295, v296, v297, v298, v299, v300, v301;
      v273, v302, v303, v304, v305, v306, v307, v308;
      if (v291)
      {
        goto LABEL_109;
      }

      goto LABEL_169;
    case 0x25uLL:
      v111 = v58;
      v112 = v66;
      v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v114 = swift_projectBox();
      if (((v415 >> 58) & 0x3C | (v415 >> 1) & 3) != 0x25)
      {
        goto LABEL_170;
      }

      v115 = *(v113 + 48);
      v116 = v114;
      v117 = swift_projectBox();
      v118 = *(v117 + v115);
      v119 = *(v112 + 2);
      v120 = v411;
      v119(v411, v116, v111);
      v121 = v409;
      goto LABEL_68;
    case 0x26uLL:
      v122 = v58;
      v123 = v66;
      v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20F0, &unk_1CFA0F4A0);
      v337 = swift_projectBox();
      if (((v415 >> 58) & 0x3C | (v415 >> 1) & 3) != 0x26)
      {
        goto LABEL_170;
      }

      v338 = *(v336 + 48);
      v414 = *(v337 + v338);
      v339 = *(v336 + 64);
      v411 = *(v337 + v339);
      v340 = v337;
      v341 = swift_projectBox();
      v415 = *(v341 + v338);
      v342 = *(v341 + v339);
      v132 = v123;
      v343 = *(v123 + 2);
      v134 = v412;
      v135 = v122;
      v343(v412, v340, v122);
      v344 = v413;
      v343(v413, v341, v122);
      v345 = v342;
      v138 = v344;
      v139 = v345;
      if ((sub_1CF9E59A8() & 1) == 0)
      {
LABEL_137:

        v354 = *(v132 + 1);
        v354(v138, v135);
        v355 = v134;
        goto LABEL_141;
      }

      if (v414 == v415)
      {
LABEL_131:
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v157 = sub_1CF9E7568();

        v346 = *(v123 + 1);
        v346(v138, v122);
        v346(v134, v122);
        return v157 & 1;
      }

LABEL_142:

      v363 = *(v123 + 1);
      v363(v138, v122);
      v363(v134, v122);
      goto LABEL_170;
    case 0x27uLL:
      v412 = v65;
      v413 = v63;
      v414 = v58;
      v309 = v66;
      v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AF0, "pN\t");
      v311 = swift_projectBox();
      if (((v415 >> 58) & 0x3C | (v415 >> 1) & 3) != 0x27)
      {
        goto LABEL_170;
      }

      goto LABEL_117;
    case 0x28uLL:
      v120 = v64;
      v111 = v58;
      v112 = v66;
      v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v161 = swift_projectBox();
      if (((v415 >> 58) & 0x3C | (v415 >> 1) & 3) != 0x28)
      {
        goto LABEL_170;
      }

      v162 = *(v160 + 48);
      v163 = v161;
      v117 = swift_projectBox();
      v118 = *(v117 + v162);
      v119 = *(v112 + 2);
      v119(v120, v163, v111);
      v121 = v414;
      goto LABEL_68;
    case 0x29uLL:
      v121 = v62;
      v120 = v61;
      v111 = v58;
      v112 = v66;
      v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v145 = swift_projectBox();
      if (((v415 >> 58) & 0x3C | (v415 >> 1) & 3) == 0x29)
      {
        goto LABEL_67;
      }

      goto LABEL_170;
    case 0x2AuLL:
      v412 = v59;
      v413 = v67;
      v414 = v58;
      v309 = v66;
      v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4B00, &unk_1CFA0F490);
      v311 = swift_projectBox();
      if (((v415 >> 58) & 0x3C | (v415 >> 1) & 3) != 0x2A)
      {
        goto LABEL_170;
      }

LABEL_117:
      v319 = *(v310 + 48);
      v320 = *(v311 + v319);
      v321 = *(v310 + 64);
      v410 = *(v311 + v321);
      v411 = v320;
      v322 = v311;
      v323 = swift_projectBox();
      v324 = *(v323 + v319);
      v325 = *(v323 + v321);
      v326 = *(v309 + 2);
      v327 = v413;
      v328 = v322;
      v135 = v414;
      v326(v413, v328, v414);
      v329 = v412;
      v326(v412, v323, v135);
      v330 = v325;
      if (sub_1CF9E59A8())
      {
        if (v411 == v324)
        {
          sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
          v157 = sub_1CF9E7568();

          v331 = *(v309 + 1);
          v332 = v414;
          v331(v412, v414);
          v331(v413, v332);
          return v157 & 1;
        }

        v371 = *(v309 + 1);
        v372 = v414;
        v371(v412, v414);
        v371(v413, v372);
      }

      else
      {

        v354 = *(v309 + 1);
        v354(v329, v135);
        v355 = v327;
LABEL_141:
        v354(v355, v135);
      }

      goto LABEL_170;
    case 0x2BuLL:
      if (((v415 >> 58) & 0x3C | (v415 >> 1) & 3) != 0x2B)
      {
        goto LABEL_170;
      }

      v99 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v101 = v100;
      v103 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v109 = v99;
      v110 = v102;
      if (v109 == v103 && v101 == v102)
      {
LABEL_127:
        v157 = 1;
      }

      else
      {
LABEL_138:
        v157 = sub_1CF9E8048();
      }

      v101, v102, v103, v104, v105, v106, v107, v108;
      v110, v356, v357, v358, v359, v360, v361, v362;
      return v157 & 1;
    case 0x2CuLL:
      v121 = v60;
      v120 = v68;
      v111 = v58;
      v112 = v66;
      v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v145 = swift_projectBox();
      if (((v415 >> 58) & 0x3C | (v415 >> 1) & 3) != 0x2C)
      {
        goto LABEL_170;
      }

LABEL_67:
      v193 = *(v144 + 48);
      v194 = v145;
      v117 = swift_projectBox();
      v118 = *(v117 + v193);
      v119 = *(v112 + 2);
      v119(v120, v194, v111);
LABEL_68:
      v119(v121, v117, v111);
      v195 = v118;
      if (sub_1CF9E59A8())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v157 = sub_1CF9E7568();

        v196 = *(v112 + 1);
        v196(v121, v111);
        v196(v120, v111);
        return v157 & 1;
      }

      v197 = *(v112 + 1);
      v197(v121, v111);
      v197(v120, v111);
      goto LABEL_170;
    case 0x2DuLL:
      if (v69 == 0xB000000000000002)
      {
        v157 = ((v415 >> 58) & 0x3C | (v415 >> 1) & 3) == 0x2D && v415 == 0xB000000000000002;
      }

      else
      {
        if (v69 == 0xB00000000000000ALL)
        {
          v266 = 0xB00000000000000ALL;
        }

        else
        {
          v266 = 0xB000000000000012;
        }

        v157 = ((v415 >> 58) & 0x3C | (v415 >> 1) & 3) == 0x2D && v415 == v266;
      }

      return v157 & 1;
    default:
      if ((v415 >> 58) & 0x3C | (v415 >> 1) & 3)
      {
        goto LABEL_170;
      }

      v72 = *(v69 + 16);
      v74 = *(v415 + 16);
      v73 = *(v415 + 24);
      v75 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v77 = v76;
      v79 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v80 = v75;
      v81 = v78;
      if (v80 == v79 && v77 == v78)
      {
        v82 = v73;
        v83 = v72;
        v84 = v74;
        v77, v85, v86, v87, v88, v89, v90, v91;
        v81, v92, v93, v94, v95, v96, v97, v98;
LABEL_109:
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v157 = sub_1CF9E7568();

        return v157 & 1;
      }

      v391 = sub_1CF9E8048();
      v292 = v73;
      v293 = v72;
      v294 = v74;
      v77, v392, v393, v394, v395, v396, v397, v398;
      v81, v399, v400, v401, v402, v403, v404, v405;
      if (v391)
      {
        goto LABEL_109;
      }

LABEL_169:

LABEL_170:
      v157 = 0;
      return v157 & 1;
  }
}

BOOL sub_1CF81E3B8(unint64_t a1, unint64_t a2)
{
  v293 = a2;
  v3 = sub_1CF9E5A58();
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v292 = &v284 - v10;
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v291 = &v284 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v290 = &v284 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v287 = &v284 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v289 = &v284 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v288 = &v284 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v286 = &v284 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v284 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v285 = &v284 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v284 = &v284 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v284 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v284 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v284 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v284 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v284 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v284 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v284 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v284 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v69 = a1;
  v71 = &v284 - v70;
  switch((v69 >> 58) & 0x3C | (v69 >> 1) & 3)
  {
    case 1uLL:
      v111 = v293;
      if (((v111 >> 58) & 0x3C | (v111 >> 1) & 3) != 1)
      {
        return 0;
      }

      goto LABEL_112;
    case 2uLL:
      v291 = v66;
      v292 = v58;
      v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
      v140 = swift_projectBox();
      if (((v293 >> 58) & 0x3C | (v293 >> 1) & 3) != 2)
      {
        return 0;
      }

      v141 = *v140;
      v142 = v140[1];
      v143 = v139[16];
      v287 = *(v140 + v143);
      v144 = v139[20];
      v289 = *(v140 + v144);
      v290 = v141;
      v145 = v139[12];
      v146 = v140;
      v147 = swift_projectBox();
      v293 = *(v147 + v143);
      v148 = *v147;
      v149 = v147[1];
      v288 = *(v147 + v144);
      v150 = *(v291 + 2);
      v151 = v146 + v145;
      v152 = v292;
      v150(v71, v151, v292);
      v150(v56, v147 + v145, v152);
      if ((v290 != v148 || v142 != v149) && (sub_1CF9E8048() & 1) == 0)
      {
        goto LABEL_186;
      }

      v153 = v293;
      if (sub_1CF9E59A8())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v154 = sub_1CF9E7568();

        v155 = v292;
        v156 = *(v291 + 1);
        v156(v56, v292);
        v156(v71, v155);
        return v154 & (v289 == v288);
      }

      else
      {

LABEL_186:
        v281 = v292;
        v282 = *(v291 + 1);
        v282(v56, v292);
        v282(v71, v281);
        return 0;
      }

    case 3uLL:
      v111 = v293;
      if (((v111 >> 58) & 0x3C | (v111 >> 1) & 3) == 3)
      {
        goto LABEL_112;
      }

      return 0;
    case 4uLL:
      if (((v293 >> 58) & 0x3C | (v293 >> 1) & 3) != 4)
      {
        return 0;
      }

      v131 = v69 & 0xFFFFFFFFFFFFFF9;
      v72 = *((v293 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v132 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v133 = *((v293 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if (v132 == 255)
      {
        goto LABEL_85;
      }

      if (v133 == 255)
      {
        return 0;
      }

      v134 = *(v131 + 16);
      v75 = *((v293 & 0xFFFFFFFFFFFFFF9) + 0x10);
      if (!v132)
      {
        goto LABEL_197;
      }

      if (v132 == 1)
      {
        goto LABEL_42;
      }

      goto LABEL_175;
    case 5uLL:
      if (((v293 >> 58) & 0x3C | (v293 >> 1) & 3) != 5)
      {
        return 0;
      }

      v188 = v69 & 0xFFFFFFFFFFFFFF9;
      v72 = *((v293 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v189 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v133 = *((v293 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if (v189 == 255)
      {
LABEL_85:
        if (v133 != 255)
        {
          return 0;
        }

        goto LABEL_179;
      }

      if (v133 == 255)
      {
        return 0;
      }

      v134 = *(v188 + 16);
      v75 = *((v293 & 0xFFFFFFFFFFFFFF9) + 0x10);
      if (v189)
      {
        if (v189 != 1)
        {
LABEL_175:
          v77 = 0;
          v225 = v133 == 2;
          if (v134)
          {
            goto LABEL_118;
          }

          goto LABEL_176;
        }

LABEL_42:
        v77 = 0;
        if (v133 == 1 && v134 == v75)
        {
          goto LABEL_179;
        }
      }

      else
      {
LABEL_197:
        v77 = 0;
        if (!v133 && v134 == v75)
        {
          goto LABEL_179;
        }
      }

      return v77;
    case 6uLL:
      v175 = v58;
      v200 = v66;
      v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v202 = swift_projectBox();
      if (((v293 >> 58) & 0x3C | (v293 >> 1) & 3) != 6)
      {
        return 0;
      }

      v203 = *(v201 + 48);
      v204 = v202;
      v205 = swift_projectBox();
      v206 = *(v205 + v203);
      v207 = *(v200 + 2);
      v207(v53, v204, v175);
      v207(v50, v205, v175);
      v208 = v206;
      if (sub_1CF9E59A8())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v185 = sub_1CF9E7568();

        v186 = *(v200 + 1);
        v186(v50, v175);
        v187 = v53;
        goto LABEL_95;
      }

      v273 = *(v200 + 1);
      v273(v50, v175);
      v274 = v53;
      goto LABEL_182;
    case 7uLL:
      v157 = v58;
      v158 = v66;
      v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v160 = swift_projectBox();
      if (((v293 >> 58) & 0x3C | (v293 >> 1) & 3) != 7)
      {
        return 0;
      }

      v161 = *(v159 + 48);
      v162 = v160;
      v163 = swift_projectBox();
      v164 = *(v163 + v161);
      v165 = *(v158 + 2);
      v165(v47, v162, v157);
      v165(v44, v163, v157);
      v166 = v164;
      if (sub_1CF9E59A8())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v167 = sub_1CF9E7568();

        v168 = *(v158 + 1);
        v168(v44, v157);
        v168(v47, v157);
        return v167 & 1;
      }

      else
      {

        v278 = *(v158 + 1);
        v278(v44, v157);
        v278(v47, v157);
        return 0;
      }

    case 8uLL:
      v111 = v293;
      if (((v111 >> 58) & 0x3C | (v111 >> 1) & 3) == 8)
      {
        goto LABEL_112;
      }

      return 0;
    case 9uLL:
      v111 = v293;
      if (((v111 >> 58) & 0x3C | (v111 >> 1) & 3) == 9)
      {
        goto LABEL_112;
      }

      return 0;
    case 0xAuLL:
      v111 = v293;
      if (((v111 >> 58) & 0x3C | (v111 >> 1) & 3) == 0xA)
      {
        goto LABEL_112;
      }

      return 0;
    case 0xBuLL:
      v112 = v293;
      if (((v112 >> 58) & 0x3C | (v112 >> 1) & 3) == 0xB)
      {
        goto LABEL_135;
      }

      return 0;
    case 0xCuLL:
      v111 = v293;
      if (((v111 >> 58) & 0x3C | (v111 >> 1) & 3) == 0xC)
      {
        goto LABEL_112;
      }

      return 0;
    case 0xDuLL:
      v111 = v293;
      if (((v111 >> 58) & 0x3C | (v111 >> 1) & 3) == 0xD)
      {
        goto LABEL_112;
      }

      return 0;
    case 0xEuLL:
      if ((v293 >> 58) & 0x3C | (v293 >> 1) & 3) == 0xE && (sub_1CF6BEDC4(*((v69 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v293 & 0xFFFFFFFFFFFFFF9) + 0x10)))
      {
        goto LABEL_133;
      }

      return 0;
    case 0xFuLL:
      if ((v293 >> 58) & 0x3C | (v293 >> 1) & 3) == 0xF && (sub_1CF6BF014(*((v69 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v293 & 0xFFFFFFFFFFFFFF9) + 0x10)))
      {
        goto LABEL_133;
      }

      return 0;
    case 0x10uLL:
      v114 = v293;
      if (((v114 >> 58) & 0x3C | (v114 >> 1) & 3) == 0x10)
      {
        goto LABEL_125;
      }

      return 0;
    case 0x11uLL:
      v114 = v293;
      if (((v114 >> 58) & 0x3C | (v114 >> 1) & 3) == 0x11)
      {
        goto LABEL_125;
      }

      return 0;
    case 0x12uLL:
      v114 = v293;
      if (((v114 >> 58) & 0x3C | (v114 >> 1) & 3) == 0x12)
      {
        goto LABEL_125;
      }

      return 0;
    case 0x13uLL:
      v114 = v293;
      if (((v114 >> 58) & 0x3C | (v114 >> 1) & 3) != 0x13)
      {
        return 0;
      }

LABEL_125:
      v229 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v230 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v231 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v232 = *((v114 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v233 = *((v114 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v234 = *((v114 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v235 = *((v114 & 0xFFFFFFFFFFFFFF9) + 0x20);
      sub_1CF48034C(v229, v230, v231);
      sub_1CF48034C(v232, v233, v234);
      if (sub_1CF7BC9E4(v229, v230 | (v231 << 8), v232, v233 | (v234 << 8)))
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v236 = sub_1CF9E7568();

        sub_1CF1E53F8(v232, v233, v234);
        sub_1CF1E53F8(v229, v230, v231);
        return v236 & 1;
      }

      else
      {

        sub_1CF1E53F8(v232, v233, v234);
        sub_1CF1E53F8(v229, v230, v231);
        return 0;
      }

    case 0x14uLL:
      v175 = v58;
      v176 = v66;
      v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v178 = swift_projectBox();
      if (((v293 >> 58) & 0x3C | (v293 >> 1) & 3) != 0x14)
      {
        return 0;
      }

      v179 = *(v177 + 48);
      v180 = v178;
      v181 = swift_projectBox();
      v182 = *(v181 + v179);
      v183 = *(v176 + 2);
      v183(v41, v180, v175);
      v183(v38, v181, v175);
      v184 = v182;
      if (sub_1CF9E59A8())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v185 = sub_1CF9E7568();

        v186 = *(v176 + 1);
        v186(v38, v175);
        v187 = v41;
LABEL_95:
        v186(v187, v175);
        return v185 & 1;
      }

      v273 = *(v176 + 1);
      v273(v38, v175);
      v274 = v41;
LABEL_182:
      v275 = v175;
      goto LABEL_184;
    case 0x15uLL:
      v113 = v293;
      if (((v113 >> 58) & 0x3C | (v113 >> 1) & 3) == 0x15)
      {
        goto LABEL_88;
      }

      return 0;
    case 0x16uLL:
      v111 = v293;
      if (((v111 >> 58) & 0x3C | (v111 >> 1) & 3) == 0x16)
      {
        goto LABEL_112;
      }

      return 0;
    case 0x17uLL:
      if (((v293 >> 58) & 0x3C | (v293 >> 1) & 3) == 0x17)
      {
        goto LABEL_133;
      }

      return 0;
    case 0x18uLL:
      if (((v293 >> 58) & 0x3C | (v293 >> 1) & 3) == 0x18)
      {
        goto LABEL_133;
      }

      return 0;
    case 0x19uLL:
      if (((v293 >> 58) & 0x3C | (v293 >> 1) & 3) != 0x19)
      {
        return 0;
      }

LABEL_133:
      sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
      return sub_1CF9E7568() & 1;
    case 0x1AuLL:
      if (((v293 >> 58) & 0x3C | (v293 >> 1) & 3) != 0x1A)
      {
        return 0;
      }

      v266 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v267 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v268 = *((v293 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v269 = *((v293 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if (!v266)
      {
        if (v268)
        {
          return 0;
        }

        goto LABEL_188;
      }

      if (v268)
      {
        sub_1CEFD57E0(0, &qword_1EDEA3730, off_1E83BC670);
        v270 = v268;
        v271 = v266;
        v272 = sub_1CF9E7568();

        if (v272)
        {
LABEL_188:
          v199 = v267 == v269;
          goto LABEL_189;
        }
      }

      return 0;
    case 0x1BuLL:
      v112 = v293;
      if (((v112 >> 58) & 0x3C | (v112 >> 1) & 3) == 0x1B)
      {
        goto LABEL_135;
      }

      return 0;
    case 0x1CuLL:
      v112 = v293;
      if (((v112 >> 58) & 0x3C | (v112 >> 1) & 3) == 0x1C)
      {
        goto LABEL_135;
      }

      return 0;
    case 0x1DuLL:
      if (((v293 >> 58) & 0x3C | (v293 >> 1) & 3) != 0x1D)
      {
        return 0;
      }

      v78 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v255 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v80 = *((v293 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v81 = *((v293 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if (!v255)
      {
        goto LABEL_156;
      }

      if (v255 != 1)
      {
        goto LABEL_139;
      }

      goto LABEL_10;
    case 0x1EuLL:
      if (((v293 >> 58) & 0x3C | (v293 >> 1) & 3) != 0x1E)
      {
        return 0;
      }

      v209 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v210 = *((v293 & 0xFFFFFFFFFFFFFF9) + 0x10);
      sub_1CEFD09A0(v210);
      v211 = sub_1CF81C5BC(v209, v210);
      sub_1CEFD0A98(v210);
      return v211 & 1;
    case 0x1FuLL:
      v112 = v293;
      if (((v112 >> 58) & 0x3C | (v112 >> 1) & 3) != 0x1F)
      {
        return 0;
      }

LABEL_135:
      v199 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x10) == *((v112 & 0xFFFFFFFFFFFFFF9) + 0x10);
      goto LABEL_189;
    case 0x20uLL:
      v93 = v58;
      v94 = v66;
      v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5210, &unk_1CFA0F4B0);
      v213 = swift_projectBox();
      if (((v293 >> 58) & 0x3C | (v293 >> 1) & 3) != 0x20)
      {
        return 0;
      }

      v214 = *(v212 + 48);
      LODWORD(v292) = *(v213 + v214);
      v215 = *(v212 + 64);
      v291 = *(v213 + v215);
      v216 = v213;
      v217 = swift_projectBox();
      LODWORD(v293) = *(v217 + v214);
      v218 = *(v217 + v215);
      v103 = v94;
      v219 = *(v94 + 2);
      v105 = v35;
      v220 = v35;
      v106 = v93;
      v219(v220, v216, v93);
      v221 = v284;
      v219(v284, v217, v93);
      v222 = v218;
      v109 = v221;
      v110 = v222;
      if ((sub_1CF9E59A8() & 1) == 0)
      {
        goto LABEL_153;
      }

      if (v292 == v293)
      {
        goto LABEL_146;
      }

      goto LABEL_155;
    case 0x21uLL:
      v117 = v58;
      v118 = v66;
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v120 = swift_projectBox();
      if (((v293 >> 58) & 0x3C | (v293 >> 1) & 3) != 0x21)
      {
        return 0;
      }

      v121 = *(v119 + 48);
      v122 = v120;
      v123 = swift_projectBox();
      v124 = *(v123 + v121);
      v125 = *(v118 + 2);
      v126 = v285;
      v125(v285, v122, v117);
      v125(v28, v123, v117);
      v127 = v124;
      if (sub_1CF9E59A8())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v128 = sub_1CF9E7568();

        v129 = *(v118 + 1);
        v129(v28, v117);
        v129(v126, v117);
        return v128 & 1;
      }

      else
      {

        v277 = *(v118 + 1);
        v277(v28, v117);
        v277(v126, v117);
        return 0;
      }

    case 0x22uLL:
      v113 = v293;
      if (((v113 >> 58) & 0x3C | (v113 >> 1) & 3) != 0x22)
      {
        return 0;
      }

LABEL_88:
      v190 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v191 = *((v113 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v192 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v193 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v194 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v195 = *((v113 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v196 = *((v113 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v197 = *((v113 & 0xFFFFFFFFFFFFFF9) + 0x19);
      sub_1CF48034C(v192, v193, *((v69 & 0xFFFFFFFFFFFFFF9) + 0x19));
      sub_1CF48034C(v195, v196, v197);
      v198 = sub_1CF7BC9E4(v192, v193 | (v194 << 8), v195, v196 | (v197 << 8));
      sub_1CF1E53F8(v195, v196, v197);
      sub_1CF1E53F8(v192, v193, v194);
      if ((v198 & 1) == 0)
      {
        return 0;
      }

      v199 = v190 == v191;
      goto LABEL_189;
    case 0x23uLL:
      v93 = v58;
      v94 = v66;
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5200, "hx\t");
      v96 = swift_projectBox();
      if (((v293 >> 58) & 0x3C | (v293 >> 1) & 3) != 0x23)
      {
        return 0;
      }

      v97 = *(v95 + 48);
      v98 = *(v96 + v97);
      v99 = *(v95 + 64);
      v291 = *(v96 + v99);
      v292 = v98;
      v100 = v96;
      v101 = swift_projectBox();
      v293 = *(v101 + v97);
      v102 = *(v101 + v99);
      v103 = v94;
      v104 = *(v94 + 2);
      v105 = v286;
      v106 = v93;
      v104(v286, v100, v93);
      v107 = v288;
      v104(v288, v101, v93);
      v108 = v102;
      v109 = v107;
      v110 = v108;
      if ((sub_1CF9E59A8() & 1) == 0)
      {
        goto LABEL_153;
      }

      if (v292 != v293)
      {
        goto LABEL_155;
      }

      goto LABEL_146;
    case 0x24uLL:
      v111 = v293;
      if (((v111 >> 58) & 0x3C | (v111 >> 1) & 3) != 0x24)
      {
        return 0;
      }

LABEL_112:
      v224 = v111 & 0xFFFFFFFFFFFFFF9;
      v72 = *((v111 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v73 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v74 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v75 = *(v224 + 16);
      v76 = *(v224 + 24);
      if (v74)
      {
        goto LABEL_113;
      }

      goto LABEL_4;
    case 0x25uLL:
      v82 = v58;
      v83 = v66;
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v85 = swift_projectBox();
      if (((v293 >> 58) & 0x3C | (v293 >> 1) & 3) != 0x25)
      {
        return 0;
      }

      v86 = *(v84 + 48);
      v87 = v85;
      v88 = swift_projectBox();
      v89 = *(v88 + v86);
      v90 = *(v83 + 2);
      v91 = v289;
      v90(v289, v87, v82);
      v92 = v287;
      goto LABEL_77;
    case 0x26uLL:
      v93 = v58;
      v94 = v66;
      v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20F0, &unk_1CFA0F4A0);
      v257 = swift_projectBox();
      if (((v293 >> 58) & 0x3C | (v293 >> 1) & 3) != 0x26)
      {
        return 0;
      }

      v258 = *(v256 + 48);
      v292 = *(v257 + v258);
      v259 = *(v256 + 64);
      v289 = *(v257 + v259);
      v260 = v257;
      v261 = swift_projectBox();
      v293 = *(v261 + v258);
      v262 = *(v261 + v259);
      v103 = v94;
      v263 = *(v94 + 2);
      v105 = v290;
      v106 = v93;
      v263(v290, v260, v93);
      v264 = v291;
      v263(v291, v261, v93);
      v265 = v262;
      v109 = v264;
      v110 = v265;
      if (sub_1CF9E59A8())
      {
        if (v292 == v293)
        {
LABEL_146:
          sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
          v250 = sub_1CF9E7568();

          v251 = *(v94 + 1);
          v251(v109, v93);
          v253 = v105;
          v254 = v93;
          goto LABEL_147;
        }

LABEL_155:

        v273 = *(v94 + 1);
        v273(v109, v93);
        v274 = v105;
        v275 = v93;
      }

      else
      {
LABEL_153:

        v273 = *(v103 + 1);
        v273(v109, v106);
        v274 = v105;
        v275 = v106;
      }

      goto LABEL_184;
    case 0x27uLL:
      v290 = v65;
      v291 = v63;
      v292 = v58;
      v226 = v66;
      v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AF0, "pN\t");
      v228 = swift_projectBox();
      if (((v293 >> 58) & 0x3C | (v293 >> 1) & 3) == 0x27)
      {
        goto LABEL_129;
      }

      return 0;
    case 0x28uLL:
      v91 = v64;
      v82 = v58;
      v83 = v66;
      v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v136 = swift_projectBox();
      if (((v293 >> 58) & 0x3C | (v293 >> 1) & 3) != 0x28)
      {
        return 0;
      }

      v137 = *(v135 + 48);
      v138 = v136;
      v88 = swift_projectBox();
      v89 = *(v88 + v137);
      v90 = *(v83 + 2);
      v90(v91, v138, v82);
      v92 = v292;
      goto LABEL_77;
    case 0x29uLL:
      v92 = v62;
      v91 = v61;
      v82 = v58;
      v83 = v66;
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v116 = swift_projectBox();
      if (((v293 >> 58) & 0x3C | (v293 >> 1) & 3) == 0x29)
      {
        goto LABEL_76;
      }

      return 0;
    case 0x2AuLL:
      v290 = v59;
      v291 = v67;
      v292 = v58;
      v226 = v66;
      v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4B00, &unk_1CFA0F490);
      v228 = swift_projectBox();
      if (((v293 >> 58) & 0x3C | (v293 >> 1) & 3) != 0x2A)
      {
        return 0;
      }

LABEL_129:
      v237 = *(v227 + 48);
      v238 = *(v228 + v237);
      v239 = *(v227 + 64);
      v288 = *(v228 + v239);
      v289 = v238;
      v240 = v228;
      v241 = swift_projectBox();
      v242 = *(v241 + v237);
      v243 = *(v241 + v239);
      v244 = *(v226 + 2);
      v245 = v291;
      v246 = v240;
      v247 = v292;
      v244(v291, v246, v292);
      v248 = v290;
      v244(v290, v241, v247);
      v249 = v243;
      if ((sub_1CF9E59A8() & 1) == 0)
      {

        v273 = *(v226 + 1);
        v273(v248, v247);
        v274 = v245;
        v275 = v247;
LABEL_184:
        v273(v274, v275);
        return 0;
      }

      if (v289 != v242)
      {

        v273 = *(v226 + 1);
        v280 = v292;
        v273(v290, v292);
        v274 = v291;
        v275 = v280;
        goto LABEL_184;
      }

      sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
      v250 = sub_1CF9E7568();

      v251 = *(v226 + 1);
      v252 = v292;
      v251(v290, v292);
      v253 = v291;
      v254 = v252;
LABEL_147:
      v251(v253, v254);
      return v250 & 1;
    case 0x2BuLL:
      if (((v293 >> 58) & 0x3C | (v293 >> 1) & 3) != 0x2B)
      {
        return 0;
      }

      v78 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v79 = *((v69 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v80 = *((v293 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v81 = *((v293 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if (v79)
      {
        if (v79 != 1)
        {
LABEL_139:
          if (v78)
          {
            if (v81 == 2 && v80 == 1)
            {
              return 1;
            }
          }

          else if (v81 == 2 && !v80)
          {
            return 1;
          }

          return 0;
        }

LABEL_10:
        if (v81 != 1 || v78 != v80)
        {
          return 0;
        }
      }

      else
      {
LABEL_156:
        if (v81 || v78 != v80)
        {
          return 0;
        }
      }

      return 1;
    case 0x2CuLL:
      v92 = v60;
      v91 = v68;
      v82 = v58;
      v83 = v66;
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v116 = swift_projectBox();
      if (((v293 >> 58) & 0x3C | (v293 >> 1) & 3) != 0x2C)
      {
        return 0;
      }

LABEL_76:
      v169 = *(v115 + 48);
      v170 = v116;
      v88 = swift_projectBox();
      v89 = *(v88 + v169);
      v90 = *(v83 + 2);
      v90(v91, v170, v82);
LABEL_77:
      v90(v92, v88, v82);
      v171 = v89;
      if (sub_1CF9E59A8())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v172 = sub_1CF9E7568();

        v173 = *(v83 + 1);
        v173(v92, v82);
        v173(v91, v82);
        return v172 & 1;
      }

      else
      {

        v174 = *(v83 + 1);
        v174(v92, v82);
        v174(v91, v82);
        return 0;
      }

    case 0x2DuLL:
      if (v69 == 0xB000000000000002)
      {
        return ((v293 >> 58) & 0x3C | (v293 >> 1) & 3) == 0x2D && v293 == 0xB000000000000002;
      }

      if (v69 == 0xB00000000000000ALL)
      {
        v223 = 0xB00000000000000ALL;
      }

      else
      {
        v223 = 0xB000000000000012;
      }

      v199 = ((v293 >> 58) & 0x3C | (v293 >> 1) & 3) == 0x2D && v293 == v223;
LABEL_189:
      v283 = v199;
      return v283 & 1;
    default:
      if ((v293 >> 58) & 0x3C | (v293 >> 1) & 3)
      {
        return 0;
      }

      v72 = *(v293 + 32);
      v73 = *(v69 + 16);
      v74 = *(v69 + 24);
      v75 = *(v293 + 16);
      v76 = *(v293 + 24);
      if (!v74)
      {
LABEL_4:
        v77 = 0;
        if (v76 || v73 != v75)
        {
          return v77;
        }

LABEL_179:
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v279 = v72;
        v211 = sub_1CF9E7568();

        return v211 & 1;
      }

LABEL_113:
      if (v74 == 1)
      {
        v77 = 0;
        if (v76 == 1 && v73 == v75)
        {
          goto LABEL_179;
        }
      }

      else
      {
        v77 = 0;
        v225 = v76 == 2;
        if (v73)
        {
LABEL_118:
          if (v225 && v75 == 1)
          {
            goto LABEL_179;
          }
        }

        else
        {
LABEL_176:
          if (v225 && !v75)
          {
            goto LABEL_179;
          }
        }
      }

      return v77;
  }
}

void sub_1CF82009C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v129 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v129 - v13;
  switch((a2 >> 58) & 0x3C | (a2 >> 1) & 3)
  {
    case 1uLL:
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v15 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v17 = 1;
      goto LABEL_53;
    case 2uLL:
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
      v53 = swift_projectBox();
      v54 = *(v53 + 8);
      v55 = v52[12];
      v56 = *(v53 + v52[16]);
      v57 = *(v53 + v52[20]);
      (*(v5 + 16))(v14, v53 + v55, v4);
      MEMORY[0x1D386A470](2);

      v58 = v56;
      sub_1CF9E69C8();
      v54, v59, v60, v61, v62, v63, v64, v65;
      sub_1CEFCCCA4(&qword_1EDEAB418, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1CF9E6758();
      sub_1CF9E7578();
      MEMORY[0x1D386A470](v57);

      (*(v5 + 8))(v14, v4);
      return;
    case 3uLL:
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v15 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v17 = 3;
      goto LABEL_53;
    case 4uLL:
      v47 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v46 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v48 = 4;
      goto LABEL_33;
    case 5uLL:
      v47 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v46 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v48 = 5;
LABEL_33:
      MEMORY[0x1D386A470](v48, v12);
      sub_1CF9E81F8();
      if (v47)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v80 = v79;
        v81 = v46;
        v129[0] = v47;
        sub_1CF9E69C8();
        v80, v82, v83, v84, v85, v86, v87, v88;
      }

      else
      {
        v127 = v46;
        v129[0] = 0;
      }

      sub_1CF9E7578();

      goto LABEL_74;
    case 6uLL:
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v90 = swift_projectBox();
      v22 = *(v90 + *(v89 + 48));
      (*(v5 + 16))(v14, v90, v4);
      v23 = 6;
      goto LABEL_41;
    case 7uLL:
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v74 = swift_projectBox();
      v22 = *(v74 + *(v73 + 48));
      (*(v5 + 16))(v14, v74, v4);
      v23 = 7;
      goto LABEL_41;
    case 8uLL:
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v15 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v17 = 8;
      goto LABEL_53;
    case 9uLL:
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v15 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v17 = 9;
      goto LABEL_53;
    case 0xAuLL:
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v15 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v17 = 10;
      goto LABEL_53;
    case 0xBuLL:
      v29 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v30 = 11;
      goto LABEL_61;
    case 0xCuLL:
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v15 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v17 = 12;
      goto LABEL_53;
    case 0xDuLL:
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v15 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v17 = 13;
      goto LABEL_53;
    case 0xEuLL:
      v43 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      MEMORY[0x1D386A470](14, v12);
      sub_1CF6655E8(a1, v43);
      sub_1CF9E7578();
      return;
    case 0xFuLL:
      v66 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v129[0] = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      MEMORY[0x1D386A470](15, v12);
      MEMORY[0x1D386A470](*(v66 + 16));
      v67 = *(v66 + 16);
      if (v67)
      {
        v70 = *(v5 + 16);
        v68 = v5 + 16;
        v69 = v70;
        v71 = v66 + ((*(v68 + 64) + 32) & ~*(v68 + 64));
        v72 = *(v68 + 56);
        do
        {
          v69(v10, v71, v4);
          sub_1CEFCCCA4(&qword_1EDEAB418, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
          sub_1CF9E6758();
          (*(v68 - 8))(v10, v4);
          v71 += v72;
          --v67;
        }

        while (v67);
      }

      sub_1CF9E7578();
      return;
    case 0x10uLL:
      v36 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v37 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v38 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v39 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v40 = 16;
      goto LABEL_56;
    case 0x11uLL:
      v36 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v37 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v38 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v39 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v40 = 17;
      goto LABEL_56;
    case 0x12uLL:
      v36 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v37 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v38 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v39 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v40 = 18;
      goto LABEL_56;
    case 0x13uLL:
      v36 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v37 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v38 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v39 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v40 = 19;
LABEL_56:
      MEMORY[0x1D386A470](v40, v12);
      v129[0] = v36;
      sub_1CEFD0988(v37, v38, v39);
      sub_1CEFF47E0(a1, v37, v38 | (v39 << 8));
      sub_1CF9E7578();
      sub_1CEFD0994(v37, v38, v39);
      goto LABEL_74;
    case 0x14uLL:
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v78 = swift_projectBox();
      v22 = *(v78 + *(v77 + 48));
      (*(v5 + 16))(v14, v78, v4);
      v23 = 20;
      goto LABEL_41;
    case 0x15uLL:
      v31 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v32 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v33 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v34 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v35 = 21;
      goto LABEL_36;
    case 0x16uLL:
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v15 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v17 = 22;
      goto LABEL_53;
    case 0x17uLL:
      v51 = 23;
      goto LABEL_59;
    case 0x18uLL:
      v51 = 24;
      goto LABEL_59;
    case 0x19uLL:
      v51 = 25;
LABEL_59:
      MEMORY[0x1D386A470](v51, v12);
      sub_1CF9E7578();
      return;
    case 0x1AuLL:
      v124 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v125 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      MEMORY[0x1D386A470](26, v12);
      sub_1CF9E81F8();
      if (v124)
      {
        v126 = v124;
        sub_1CF9E7578();
      }

      v97 = v125;
      goto LABEL_80;
    case 0x1BuLL:
      v29 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v30 = 27;
      goto LABEL_61;
    case 0x1CuLL:
      v29 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v30 = 28;
      goto LABEL_61;
    case 0x1DuLL:
      v18 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v19 = 30;
      goto LABEL_63;
    case 0x1EuLL:
      v92 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      MEMORY[0x1D386A470](32, v12);
      sub_1CEFD09A0(v92);
      sub_1CF820F68(a1, v92);

      sub_1CEFD0A98(v92);
      return;
    case 0x1FuLL:
      v29 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v30 = 33;
LABEL_61:
      MEMORY[0x1D386A470](v30, v12);
      v97 = v29;
      goto LABEL_80;
    case 0x20uLL:
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5210, &unk_1CFA0F4B0);
      v94 = swift_projectBox();
      v95 = *(v94 + *(v93 + 64));
      (*(v5 + 16))(v7, v94, v4);
      MEMORY[0x1D386A470](35);
      sub_1CEFCCCA4(&qword_1EDEAB418, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v96 = v95;
      sub_1CF9E6758();
      sub_1CF9E81F8();
      sub_1CF9E7578();
      (*(v5 + 8))(v7, v4);
      goto LABEL_68;
    case 0x21uLL:
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v45 = swift_projectBox();
      v22 = *(v45 + *(v44 + 48));
      (*(v5 + 16))(v14, v45, v4);
      v23 = 36;
      goto LABEL_41;
    case 0x22uLL:
      v31 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v32 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v33 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v34 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v35 = 37;
LABEL_36:
      MEMORY[0x1D386A470](v35, v12);
      sub_1CEFD0988(v32, v33, v34);
      sub_1CEFF47E0(a1, v32, v33 | (v34 << 8));
      MEMORY[0x1D386A470](v31);

      sub_1CEFD0994(v32, v33, v34);
      return;
    case 0x23uLL:
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5200, "hx\t");
      v25 = swift_projectBox();
      v26 = *(v25 + *(v24 + 48));
      v27 = *(v25 + *(v24 + 64));
      (*(v5 + 16))(v14, v25, v4);
      v28 = 38;
      goto LABEL_67;
    case 0x24uLL:
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v15 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v17 = 39;
      goto LABEL_53;
    case 0x25uLL:
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v21 = swift_projectBox();
      v22 = *(v21 + *(v20 + 48));
      (*(v5 + 16))(v14, v21, v4);
      v23 = 40;
      goto LABEL_41;
    case 0x26uLL:
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20F0, &unk_1CFA0F4A0);
      v123 = swift_projectBox();
      v26 = *(v123 + *(v122 + 48));
      v27 = *(v123 + *(v122 + 64));
      (*(v5 + 16))(v14, v123, v4);
      v28 = 41;
      goto LABEL_67;
    case 0x27uLL:
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AF0, "pN\t");
      v109 = swift_projectBox();
      v26 = *(v109 + *(v108 + 48));
      v27 = *(v109 + *(v108 + 64));
      (*(v5 + 16))(v14, v109, v4);
      v28 = 42;
      goto LABEL_67;
    case 0x28uLL:
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v50 = swift_projectBox();
      v22 = *(v50 + *(v49 + 48));
      (*(v5 + 16))(v14, v50, v4);
      v23 = 43;
      goto LABEL_41;
    case 0x29uLL:
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v76 = swift_projectBox();
      v22 = *(v76 + *(v75 + 48));
      (*(v5 + 16))(v14, v76, v4);
      v23 = 44;
      goto LABEL_41;
    case 0x2AuLL:
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4B00, &unk_1CFA0F490);
      v111 = swift_projectBox();
      v26 = *(v111 + *(v110 + 48));
      v27 = *(v111 + *(v110 + 64));
      (*(v5 + 16))(v14, v111, v4);
      v28 = 45;
LABEL_67:
      MEMORY[0x1D386A470](v28);
      sub_1CEFCCCA4(&qword_1EDEAB418, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v96 = v27;
      sub_1CF9E6758();
      MEMORY[0x1D386A470](v26);
      sub_1CF9E7578();
      (*(v5 + 8))(v14, v4);
LABEL_68:

      break;
    case 0x2BuLL:
      v18 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v19 = 46;
LABEL_63:
      MEMORY[0x1D386A470](v19, v12);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v113 = v112;
      v114 = v18;
      sub_1CF9E69C8();

      v113, v115, v116, v117, v118, v119, v120, v121;
      break;
    case 0x2CuLL:
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v42 = swift_projectBox();
      v22 = *(v42 + *(v41 + 48));
      (*(v5 + 16))(v14, v42, v4);
      v23 = 47;
LABEL_41:
      MEMORY[0x1D386A470](v23);
      sub_1CEFCCCA4(&qword_1EDEAB418, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v91 = v22;
      sub_1CF9E6758();
      sub_1CF9E7578();
      (*(v5 + 8))(v14, v4);

      break;
    case 0x2DuLL:
      if (a2 == 0xB000000000000002)
      {
        v97 = 29;
      }

      else if (a2 == 0xB00000000000000ALL)
      {
        v97 = 31;
      }

      else
      {
        v97 = 34;
      }

LABEL_80:
      MEMORY[0x1D386A470](v97);
      break;
    default:
      v16 = *(a2 + 16);
      v15 = *(a2 + 24);
      v17 = 0;
LABEL_53:
      MEMORY[0x1D386A470](v17, v12);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v99 = v98;
      v100 = v15;
      v129[0] = v16;
      sub_1CF9E69C8();
      v99, v101, v102, v103, v104, v105, v106, v107;
      sub_1CF9E7578();

LABEL_74:
      v128 = v129[0];

      break;
  }
}

void sub_1CF820F68(uint64_t a1, unint64_t a2)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v99 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v99 - v13;
  switch((a2 >> 58) & 0x3C | (a2 >> 1) & 3)
  {
    case 1uLL:
      v15 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v18 = 1;
      goto LABEL_57;
    case 2uLL:
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
      v52 = swift_projectBox();
      v53 = *(v52 + 8);
      v54 = v51[12];
      v55 = *(v52 + v51[16]);
      v56 = *(v52 + v51[20]);
      (*(v5 + 16))(v14, v52 + v54, v4);
      MEMORY[0x1D386A470](2);

      v57 = v55;
      sub_1CF9E69C8();
      v53, v58, v59, v60, v61, v62, v63, v64;
      sub_1CEFCCCA4(&qword_1EDEAB418, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1CF9E6758();
      sub_1CF9E7578();
      MEMORY[0x1D386A470](v56);

      (*(v5 + 8))(v14, v4);
      return;
    case 3uLL:
      v15 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v18 = 3;
      goto LABEL_57;
    case 4uLL:
      v15 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v47 = 4;
      goto LABEL_35;
    case 5uLL:
      v15 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v47 = 5;
LABEL_35:
      MEMORY[0x1D386A470](v47, v12);
      if (v17 == 255)
      {
        sub_1CF9E81F8();
      }

      else
      {
        sub_1CF9E81F8();
        if (v17)
        {
LABEL_58:
          if (v17 == 1)
          {
            MEMORY[0x1D386A470](1);
            MEMORY[0x1D386A4A0](v16);
          }

          else
          {
            if (v16)
            {
              v87 = 3;
            }

            else
            {
              v87 = 2;
            }

            MEMORY[0x1D386A470](v87);
          }
        }

        else
        {
LABEL_38:
          MEMORY[0x1D386A470](0);
          sub_1CF9E8208();
        }
      }

      v99[0] = v15;
      sub_1CF9E7578();
LABEL_68:
      v90 = v99[0];

      break;
    case 6uLL:
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v79 = swift_projectBox();
      v23 = *(v79 + *(v78 + 48));
      (*(v5 + 16))(v14, v79, v4);
      v24 = 6;
      goto LABEL_45;
    case 7uLL:
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v73 = swift_projectBox();
      v23 = *(v73 + *(v72 + 48));
      (*(v5 + 16))(v14, v73, v4);
      v24 = 7;
      goto LABEL_45;
    case 8uLL:
      v15 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v18 = 8;
      goto LABEL_57;
    case 9uLL:
      v15 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v18 = 9;
      goto LABEL_57;
    case 0xAuLL:
      v15 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v18 = 10;
      goto LABEL_57;
    case 0xBuLL:
      v30 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v31 = 11;
      goto LABEL_75;
    case 0xCuLL:
      v15 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v18 = 12;
      goto LABEL_57;
    case 0xDuLL:
      v15 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v18 = 13;
      goto LABEL_57;
    case 0xEuLL:
      v44 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      MEMORY[0x1D386A470](14, v12);
      sub_1CF6655E8(a1, v44);
      sub_1CF9E7578();
      return;
    case 0xFuLL:
      v65 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v99[0] = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      MEMORY[0x1D386A470](15, v12);
      MEMORY[0x1D386A470](*(v65 + 16));
      v66 = *(v65 + 16);
      if (v66)
      {
        v69 = *(v5 + 16);
        v67 = v5 + 16;
        v68 = v69;
        v70 = v65 + ((*(v67 + 64) + 32) & ~*(v67 + 64));
        v71 = *(v67 + 56);
        do
        {
          v68(v10, v70, v4);
          sub_1CEFCCCA4(&qword_1EDEAB418, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
          sub_1CF9E6758();
          (*(v67 - 8))(v10, v4);
          v70 += v71;
          --v66;
        }

        while (v66);
      }

      sub_1CF9E7578();
      return;
    case 0x10uLL:
      v37 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v38 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v39 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v40 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v41 = 16;
      goto LABEL_67;
    case 0x11uLL:
      v37 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v38 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v39 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v40 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v41 = 17;
      goto LABEL_67;
    case 0x12uLL:
      v37 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v38 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v39 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v40 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v41 = 18;
      goto LABEL_67;
    case 0x13uLL:
      v37 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v38 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v39 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v40 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v41 = 19;
LABEL_67:
      MEMORY[0x1D386A470](v41, v12);
      v99[0] = v37;
      sub_1CF48034C(v38, v39, v40);
      sub_1CF7BDD8C(a1, v38, v39 | (v40 << 8));
      sub_1CF9E7578();
      sub_1CF1E53F8(v38, v39, v40);
      goto LABEL_68;
    case 0x14uLL:
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v77 = swift_projectBox();
      v23 = *(v77 + *(v76 + 48));
      (*(v5 + 16))(v14, v77, v4);
      v24 = 20;
      goto LABEL_45;
    case 0x15uLL:
      v32 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v33 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v34 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v35 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v36 = 21;
      goto LABEL_40;
    case 0x16uLL:
      v15 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v18 = 22;
      goto LABEL_57;
    case 0x17uLL:
      v50 = 23;
      goto LABEL_73;
    case 0x18uLL:
      v50 = 24;
      goto LABEL_73;
    case 0x19uLL:
      v50 = 25;
LABEL_73:
      MEMORY[0x1D386A470](v50, v12);
      sub_1CF9E7578();
      return;
    case 0x1AuLL:
      v96 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v97 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      MEMORY[0x1D386A470](26, v12);
      sub_1CF9E81F8();
      if (v96)
      {
        v98 = v96;
        sub_1CF9E7578();
      }

      v86 = v97;
      goto LABEL_91;
    case 0x1BuLL:
      v30 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v31 = 27;
      goto LABEL_75;
    case 0x1CuLL:
      v30 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v31 = 28;
      goto LABEL_75;
    case 0x1DuLL:
      v19 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v93 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      MEMORY[0x1D386A470](30, v12);
      if (!v93)
      {
        goto LABEL_86;
      }

      if (v93 != 1)
      {
        goto LABEL_78;
      }

      goto LABEL_5;
    case 0x1EuLL:
      v81 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      MEMORY[0x1D386A470](32, v12);
      sub_1CEFD09A0(v81);
      sub_1CF82009C(a1, v81);

      sub_1CEFD0A98(v81);
      return;
    case 0x1FuLL:
      v30 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v31 = 33;
LABEL_75:
      MEMORY[0x1D386A470](v31, v12);
      v86 = v30;
      goto LABEL_91;
    case 0x20uLL:
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5210, &unk_1CFA0F4B0);
      v83 = swift_projectBox();
      v84 = *(v83 + *(v82 + 64));
      (*(v5 + 16))(v7, v83, v4);
      MEMORY[0x1D386A470](35);
      sub_1CEFCCCA4(&qword_1EDEAB418, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v85 = v84;
      sub_1CF9E6758();
      sub_1CF9E81F8();
      sub_1CF9E7578();
      (*(v5 + 8))(v7, v4);
      goto LABEL_82;
    case 0x21uLL:
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v46 = swift_projectBox();
      v23 = *(v46 + *(v45 + 48));
      (*(v5 + 16))(v14, v46, v4);
      v24 = 36;
      goto LABEL_45;
    case 0x22uLL:
      v32 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v33 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v34 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v35 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v36 = 37;
LABEL_40:
      MEMORY[0x1D386A470](v36, v12);
      sub_1CF48034C(v33, v34, v35);
      sub_1CF7BDD8C(a1, v33, v34 | (v35 << 8));
      MEMORY[0x1D386A470](v32);

      sub_1CF1E53F8(v33, v34, v35);
      return;
    case 0x23uLL:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5200, "hx\t");
      v26 = swift_projectBox();
      v27 = *(v26 + *(v25 + 48));
      v28 = *(v26 + *(v25 + 64));
      (*(v5 + 16))(v14, v26, v4);
      v29 = 38;
      goto LABEL_81;
    case 0x24uLL:
      v15 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v18 = 39;
      goto LABEL_57;
    case 0x25uLL:
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v22 = swift_projectBox();
      v23 = *(v22 + *(v21 + 48));
      (*(v5 + 16))(v14, v22, v4);
      v24 = 40;
      goto LABEL_45;
    case 0x26uLL:
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20F0, &unk_1CFA0F4A0);
      v95 = swift_projectBox();
      v27 = *(v95 + *(v94 + 48));
      v28 = *(v95 + *(v94 + 64));
      (*(v5 + 16))(v14, v95, v4);
      v29 = 41;
      goto LABEL_81;
    case 0x27uLL:
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AF0, "pN\t");
      v89 = swift_projectBox();
      v27 = *(v89 + *(v88 + 48));
      v28 = *(v89 + *(v88 + 64));
      (*(v5 + 16))(v14, v89, v4);
      v29 = 42;
      goto LABEL_81;
    case 0x28uLL:
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v49 = swift_projectBox();
      v23 = *(v49 + *(v48 + 48));
      (*(v5 + 16))(v14, v49, v4);
      v24 = 43;
      goto LABEL_45;
    case 0x29uLL:
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v75 = swift_projectBox();
      v23 = *(v75 + *(v74 + 48));
      (*(v5 + 16))(v14, v75, v4);
      v24 = 44;
      goto LABEL_45;
    case 0x2AuLL:
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4B00, &unk_1CFA0F490);
      v92 = swift_projectBox();
      v27 = *(v92 + *(v91 + 48));
      v28 = *(v92 + *(v91 + 64));
      (*(v5 + 16))(v14, v92, v4);
      v29 = 45;
LABEL_81:
      MEMORY[0x1D386A470](v29);
      sub_1CEFCCCA4(&qword_1EDEAB418, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v85 = v28;
      sub_1CF9E6758();
      MEMORY[0x1D386A470](v27);
      sub_1CF9E7578();
      (*(v5 + 8))(v14, v4);
LABEL_82:

      return;
    case 0x2BuLL:
      v19 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v20 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      MEMORY[0x1D386A470](46, v12);
      if (v20)
      {
        if (v20 == 1)
        {
LABEL_5:
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v19);
        }

        else
        {
LABEL_78:
          if (v19)
          {
            v86 = 3;
          }

          else
          {
            v86 = 2;
          }

LABEL_91:
          MEMORY[0x1D386A470](v86);
        }
      }

      else
      {
LABEL_86:
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      break;
    case 0x2CuLL:
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v43 = swift_projectBox();
      v23 = *(v43 + *(v42 + 48));
      (*(v5 + 16))(v14, v43, v4);
      v24 = 47;
LABEL_45:
      MEMORY[0x1D386A470](v24);
      sub_1CEFCCCA4(&qword_1EDEAB418, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v80 = v23;
      sub_1CF9E6758();
      sub_1CF9E7578();
      (*(v5 + 8))(v14, v4);

      return;
    case 0x2DuLL:
      if (a2 == 0xB000000000000002)
      {
        v86 = 29;
      }

      else if (a2 == 0xB00000000000000ALL)
      {
        v86 = 31;
      }

      else
      {
        v86 = 34;
      }

      goto LABEL_91;
    default:
      v15 = *(a2 + 32);
      v16 = *(a2 + 16);
      v17 = *(a2 + 24);
      v18 = 0;
LABEL_57:
      MEMORY[0x1D386A470](v18, v12);
      if (v17)
      {
        goto LABEL_58;
      }

      goto LABEL_38;
  }
}

void sub_1CF821E78(uint64_t a1, uint64_t a2, char a3)
{
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  MEMORY[0x1EEE9AC00](v135);
  v136 = (&v131 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v142 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v137 = &v131 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC88, &qword_1CFA053D8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v131 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v131 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v138 = &v131 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v131 - v23;
  v25 = sub_1CF9E6118();
  v139 = *(v25 - 8);
  v140 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v147 = a2;
  v27 = &v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = a3;
  v28 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFCCBDC(a1, v24, &qword_1EC4BFC88, &qword_1CFA053D8);
  v141 = v11;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1CEFCCBDC(v24, v19, &qword_1EC4BFC88, &qword_1CFA053D8);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0530, &unk_1CFA05900);
    v39 = a1;
    v40 = v13;
    v41 = v27;
    v42 = v38[12];
    v134 = *&v19[v38[16]];
    *&v19[v38[20] + 8], v43, v44, v45, v46, v47, v48, v49;
    v50 = &v19[v42];
    v27 = v41;
    v13 = v40;
    a1 = v39;
    sub_1CEFCCC44(v50, &unk_1EC4BE360, &qword_1CF9FE650);
    sub_1CEFCCC44(v19, &unk_1EC4BE360, &qword_1CF9FE650);
    if (!v134)
    {
      goto LABEL_6;
    }

LABEL_5:
    v51 = sub_1CF9E72C8();
    sub_1CEFCCC44(v24, &qword_1EC4BFC88, &qword_1CFA053D8);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 5)
  {
    goto LABEL_5;
  }

  v30 = v138;
  sub_1CEFCCBDC(v24, v138, &qword_1EC4BFC88, &qword_1CFA053D8);
  *(v30 + 24), v31, v32, v33, v34, v35, v36, v37;
LABEL_6:
  sub_1CEFCCC44(v24, &qword_1EC4BFC88, &qword_1CFA053D8);
  v51 = sub_1CF9E7298();
LABEL_7:
  sub_1CEFCCBDC(a1, v16, &qword_1EC4BFC88, &qword_1CFA053D8);

  v52 = sub_1CF9E6108();
  if (os_log_type_enabled(v52, v51))
  {
    v53 = swift_slowAlloc();
    v133 = v51;
    v54 = v53;
    v134 = swift_slowAlloc();
    v143 = v134;
    *v54 = 136446466;
    v55 = v149[32];

    if (v55)
    {
      v56 = 20550;
    }

    else
    {
      v56 = 21318;
    }

    v57 = sub_1CEFD0DF0(v56, 0xE200000000000000, &v143);
    0xE200000000000000, v58, v59, v60, v61, v62, v63, v64;
    *(v54 + 4) = v57;
    *(v54 + 12) = 2082;
    v65 = a1;
    v66 = v13;
    v132 = v27;
    v67 = v138;
    sub_1CEFCCBDC(v16, v138, &qword_1EC4BFC88, &qword_1CFA053D8);
    sub_1CEFCCC44(v16, &qword_1EC4BFC88, &qword_1CFA053D8);
    v68 = sub_1CF8DBC58();
    v70 = v69;
    v71 = v67;
    v13 = v66;
    a1 = v65;
    sub_1CEFCCC44(v71, &qword_1EC4BFC88, &qword_1CFA053D8);
    v72 = sub_1CEFD0DF0(v68, v70, &v143);
    v70, v73, v74, v75, v76, v77, v78, v79;
    *(v54 + 14) = v72;
    _os_log_impl(&dword_1CEFC7000, v52, v133, " ✍️  %{public}s snapshot mutation: %{public}s", v54, 0x16u);
    v80 = v134;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v80, -1, -1);
    MEMORY[0x1D386CDC0](v54, -1, -1);

    (*(v139 + 8))(v132, v140);
  }

  else
  {
    sub_1CEFCCC44(v16, &qword_1EC4BFC88, &qword_1CFA053D8);

    (*(v139 + 8))(v27, v140);
  }

  v81 = v142;
  sub_1CEFCCBDC(a1, v13, &qword_1EC4BFC88, &qword_1CFA053D8);
  v82 = swift_getEnumCaseMultiPayload();
  if (v82 <= 2)
  {
    if (v82)
    {
      if (v82 != 1)
      {
        v13[3], v83, v84, v85, v86, v87, v88, v89;
        v122 = *(v13 + 8);
        v145 = *v13;
        v146 = v122;
        v123 = &v149[qword_1EDEBBA48];
        swift_beginAccess();
        v124 = *(v123 + 2);
        v102 = __CFADD__(v124, 1);
        v125 = v124 + 1;
        if (!v102)
        {
          *(v123 + 2) = v125;
          (*(*v149 + 520))(&v145, &v147, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
          return;
        }

        goto LABEL_32;
      }

      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0530, &unk_1CFA05900);
      v91 = v90[12];
      v92 = *(v13 + v90[16]);
      *(v13 + v90[20] + 8), v93, v94, v95, v96, v97, v98, v99;
      sub_1CEFE55D0(v13 + v91, v81, &unk_1EC4BE360, &qword_1CF9FE650);
      v100 = &v149[qword_1EDEBBA48];
      swift_beginAccess();
      v101 = *(v100 + 1);
      v102 = __CFADD__(v101, 1);
      v103 = v101 + 1;
      if (!v102)
      {
        *(v100 + 1) = v103;
        v145 = v92;
        (*(*v149 + 512))(v81, &v145, &v147, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
        sub_1CEFCCC44(v81, &unk_1EC4BE360, &qword_1CF9FE650);
        v104 = v13;
LABEL_23:
        sub_1CEFCCC44(v104, &unk_1EC4BE360, &qword_1CF9FE650);
        return;
      }
    }

    else
    {
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E10, &unk_1CFA05920);
      *(v13 + *(v107 + 48) + 8), v108, v109, v110, v111, v112, v113, v114;
      v115 = v137;
      sub_1CEFE55D0(v13, v137, &unk_1EC4BE360, &qword_1CF9FE650);
      v116 = qword_1EDEBBA48;
      v117 = v149;
      swift_beginAccess();
      v118 = *&v117[v116];
      v102 = __CFADD__(v118, 1);
      v119 = v118 + 1;
      if (!v102)
      {
        v120 = v149;
        *&v149[v116] = v119;
        (*(*v120 + 504))(v115, &v147, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
        v104 = v115;
        goto LABEL_23;
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  if (v82 == 3)
  {
    v13[3], v83, v84, v85, v86, v87, v88, v89;
    v121 = *(v13 + 8);
    v143 = *v13;
    v144 = v121;
    (*(*v149 + 528))(&v143, &v147, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
    return;
  }

  if (v82 == 4)
  {
    v105 = *(v13 + 9);
    v13[3], v83, v84, v85, v86, v87, v88, v89;
    v106 = *(v13 + 8);
    v143 = *v13;
    v144 = v106;
    (*(*v149 + 536))(&v143, v105, &v147, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
    return;
  }

  v13[3], v83, v84, v85, v86, v87, v88, v89;
  v126 = *v13;
  v127 = *(v13 + 8);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_33;
  }

  v129 = Strong;
  v130 = v136;
  *v136 = v126;
  *(v130 + 8) = v127;
  *(v130 + 9) = 0;
  swift_storeEnumTagMultiPayload();
  (*(*v129 + 312))(v130);

  sub_1CEFCCC44(v130, &qword_1EC4BE710, &qword_1CF9FE5A8);
}

void sub_1CF8228C8(uint64_t a1, uint64_t a2, char a3)
{
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
  MEMORY[0x1EEE9AC00](v128);
  v129 = (&v127 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v134 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v130 = &v127 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC80, &qword_1CFA053D0);
  MEMORY[0x1EEE9AC00](v11);
  v135 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v127 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v127 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v127 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v127 - v23;
  v25 = sub_1CF9E6118();
  v131 = *(v25 - 8);
  v132 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v127 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = a2;
  v141 = a3;
  v28 = fpfs_current_or_default_log();
  v136 = v27;
  sub_1CF9E6128();
  v137 = a1;
  sub_1CEFCCBDC(a1, v24, &qword_1EC4BFC80, &qword_1CFA053D0);
  v133 = v11;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1CEFCCBDC(v24, v18, &qword_1EC4BFC80, &qword_1CFA053D0);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E00, &qword_1CFA18000);
    v38 = v37[12];
    v39 = *&v18[v37[16]];
    *&v18[v37[20] + 8], v40, v41, v42, v43, v44, v45, v46;
    sub_1CEFCCC44(&v18[v38], &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    sub_1CEFCCC44(v18, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    if (!v39)
    {
      goto LABEL_6;
    }

LABEL_5:
    v47 = sub_1CF9E72C8();
    sub_1CEFCCC44(v24, &qword_1EC4BFC80, &qword_1CFA053D0);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 5)
  {
    goto LABEL_5;
  }

  sub_1CEFCCBDC(v24, v21, &qword_1EC4BFC80, &qword_1CFA053D0);
  v21[2], v30, v31, v32, v33, v34, v35, v36;

LABEL_6:
  sub_1CEFCCC44(v24, &qword_1EC4BFC80, &qword_1CFA053D0);
  v47 = sub_1CF9E7298();
LABEL_7:
  v49 = v137;
  v48 = v138;
  v50 = v136;
  sub_1CEFCCBDC(v137, v15, &qword_1EC4BFC80, &qword_1CFA053D0);

  v51 = sub_1CF9E6108();
  if (os_log_type_enabled(v51, v47))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v139[0] = v53;
    *v52 = 136446466;
    v54 = v48[32];

    if (v54)
    {
      v55 = 20550;
    }

    else
    {
      v55 = 21318;
    }

    v56 = sub_1CEFD0DF0(v55, 0xE200000000000000, v139);
    0xE200000000000000, v57, v58, v59, v60, v61, v62, v63;
    *(v52 + 4) = v56;
    *(v52 + 12) = 2082;
    sub_1CEFCCBDC(v15, v21, &qword_1EC4BFC80, &qword_1CFA053D0);
    sub_1CEFCCC44(v15, &qword_1EC4BFC80, &qword_1CFA053D0);
    v64 = sub_1CF8DB784();
    v66 = v65;
    v48 = v138;
    sub_1CEFCCC44(v21, &qword_1EC4BFC80, &qword_1CFA053D0);
    v67 = sub_1CEFD0DF0(v64, v66, v139);
    v66, v68, v69, v70, v71, v72, v73, v74;
    *(v52 + 14) = v67;
    _os_log_impl(&dword_1CEFC7000, v51, v47, " ✍️  %{public}s snapshot mutation: %{public}s", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v53, -1, -1);
    v49 = v137;
    MEMORY[0x1D386CDC0](v52, -1, -1);

    (*(v131 + 8))(v136, v132);
  }

  else
  {
    sub_1CEFCCC44(v15, &qword_1EC4BFC80, &qword_1CFA053D0);

    (*(v131 + 8))(v50, v132);
  }

  v76 = v134;
  v75 = v135;
  sub_1CEFCCBDC(v49, v135, &qword_1EC4BFC80, &qword_1CFA053D0);
  v77 = swift_getEnumCaseMultiPayload();
  if (v77 > 2)
  {
    if (v77 == 3)
    {
      *(v75 + 16), v78, v79, v80, v81, v82, v83, v84;
      v139[0] = *v75;
      v117 = v139[0];
      (*(*v48 + 528))(v139, &v140, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);

      return;
    }

    if (v77 != 4)
    {
      *(v75 + 16), v78, v79, v80, v81, v82, v83, v84;
      v121 = *v75;
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v123 = Strong;
        v124 = v129;
        *v129 = v121;
        *(v124 + 4) = 0;
        swift_storeEnumTagMultiPayload();
        v125 = *(*v123 + 312);
        v126 = v121;
        v125(v124);

        v100 = &unk_1EC4C4E20;
        v101 = &unk_1CFA05350;
        v99 = v124;
        goto LABEL_29;
      }

LABEL_34:
      __break(1u);
      return;
    }

    v102 = *(v75 + 8);
    *(v75 + 24), v78, v79, v80, v81, v82, v83, v84;
    v103 = *v75;
    v139[0] = v103;
    (*(*v48 + 536))(v139, v102, &v140, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
    goto LABEL_26;
  }

  if (!v77)
  {
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05B0, &qword_1CFA05980);
    *(v75 + *(v104 + 48) + 8), v105, v106, v107, v108, v109, v110, v111;
    v112 = v75;
    v113 = v130;
    sub_1CEFE55D0(v112, v130, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v114 = qword_1EDEBBA48;
    swift_beginAccess();
    v115 = *&v48[v114];
    v97 = __CFADD__(v115, 1);
    v116 = v115 + 1;
    if (!v97)
    {
      *&v48[v114] = v116;
      (*(*v48 + 504))(v113, &v140, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
      v100 = &unk_1EC4BFBD0;
      v101 = &unk_1CF9FCBC0;
      v99 = v113;
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_32;
  }

  if (v77 != 1)
  {
    *(v75 + 24), v78, v79, v80, v81, v82, v83, v84;
    v103 = *v75;
    v142 = v103;
    v118 = &v48[qword_1EDEBBA48];
    swift_beginAccess();
    v119 = *(v118 + 2);
    v97 = __CFADD__(v119, 1);
    v120 = v119 + 1;
    if (v97)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    *(v118 + 2) = v120;
    (*(*v48 + 520))(&v142, &v140, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
LABEL_26:

    return;
  }

  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E00, &qword_1CFA18000);
  v86 = v85[12];
  v87 = *(v75 + v85[16]);
  *(v75 + v85[20] + 8), v88, v89, v90, v91, v92, v93, v94;
  sub_1CEFE55D0(v75 + v86, v76, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v95 = &v48[qword_1EDEBBA48];
  swift_beginAccess();
  v96 = *(v95 + 1);
  v97 = __CFADD__(v96, 1);
  v98 = v96 + 1;
  if (v97)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  *(v95 + 1) = v98;
  v142 = v87;
  (*(*v48 + 512))(v76, &v142, &v140, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
  sub_1CEFCCC44(v76, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v99 = v75;
  v100 = &unk_1EC4BFBD0;
  v101 = &unk_1CF9FCBC0;
LABEL_29:
  sub_1CEFCCC44(v99, v100, v101);
}

uint64_t sub_1CF8232D0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v9);
  v12 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree, &unk_1CFA00618);
  sub_1CF769068(a3, a4, v11, v9, v12, &off_1F4BF8588, v10);
  if (v5)
  {
  }

  return a5(a3);
}

void sub_1CF8233BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, void, __n128), uint64_t a8)
{
  v33 = a8;
  v34 = a7;
  v43 = a5;
  v41 = a1;
  v42 = a4;
  v40 = sub_1CF9E5CF8();
  v13 = MEMORY[0x1EEE9AC00](v40);
  v39 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  v32 = v15;
  if (v15)
  {
    v16 = (v12 + 8);
    v17 = 270592;
    v35 = *(a3 + 16);
    if ((a6 & 0x8000) != 0)
    {
      v17 = 2367744;
    }

    v36 = v17;
    v37 = v16;
    v18 = (a2 + 40);
    v38 = a6;
    while (1)
    {
      v19 = *v18;
      v20 = *(v18 - 1);
      v21 = v41[3];
      v22 = v41[4];
      v23 = __swift_project_boxed_opaque_existential_1(v41, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
      v24 = swift_allocObject();
      *(v24 + 152) = v19;
      *(v24 + 16) = 0u;
      *(v24 + 32) = 0u;
      *(v24 + 48) = 1;
      *(v24 + 56) = 0u;
      *(v24 + 72) = 0u;
      v25 = v43;
      *(v24 + 120) = v42;
      *(v24 + 128) = v25;
      *(v24 + 144) = v20;
      v26 = v39;
      *(v24 + 136) = v38;
      v27 = v36;
      *(v24 + 88) = 0;
      *(v24 + 96) = v27;
      *(v24 + 104) = 0;
      *(v24 + 112) = 0;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v29 = v28;
      (*v37)(v26, v40);
      v30 = v29 * 1000000000.0;
      if (COERCE__INT64(fabs(v29 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v30 <= -9.22337204e18)
      {
        goto LABEL_13;
      }

      if (v30 >= 9.22337204e18)
      {
        goto LABEL_14;
      }

      sub_1CF5215C0(v24, v30, v23, v21, v22);

      if (v8)
      {
        return;
      }

      v18 += 16;
      if (!--v15)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_10:
    v34(v32, 0, v13);
  }
}