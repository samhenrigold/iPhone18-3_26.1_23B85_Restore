double sub_1CF8771F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for VFSItem(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1CEFDA34C(a3, &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VFSItem);
  v10 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  sub_1CEFDA0C4(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for VFSItem);
  *(v11 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;

  sub_1CF7AAF88("enumerate(with:lifetimeExtender:observer:completionHandler:)", 60, 2, 2, nullsub_1, 0, sub_1CF8FFEA0, v11);

  return result;
}

void sub_1CF877384(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);
  v11 = *(*(a2 + 16) + 16);
  v12 = *(a3 + 8);
  v17 = *a3;
  v18 = v12;
  v13 = *(*v11 + 160);

  v13(&v19, &v17, v10, v8, v9);
  if (v5)
  {
  }

  else
  {

    v14 = v19;
    if (v19)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v16 = Strong;
        sub_1CF7AD294(v14);
      }
    }
  }
}

void sub_1CF877568(uint64_t a1, void *a2, void (*a3)(id, void *), uint64_t a4, uint64_t a5, uint64_t a6, char *a7, void *a8)
{
  v62 = a4;
  v63 = a3;
  v61 = sub_1CF9E6118();
  v64 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v58 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v58 - v23;
  if (a2)
  {
    v25 = a2;
    v26 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v27 = a2;
    v28 = sub_1CF9E6108();
    v29 = sub_1CF9E72A8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      swift_getErrorValue();
      v32 = Error.prettyDescription.getter(v65, v66);
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&dword_1CEFC7000, v28, v29, "Error enumerating backend for search in enumerateWithSettings: %@", v30, 0xCu);
      sub_1CEFCCC44(v31, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v31, -1, -1);
      MEMORY[0x1D386CDC0](v30, -1, -1);
    }

    (*(v64 + 8))(v24, v61);
    v33 = a2;
    v63(0, a2);
  }

  else
  {
    if (a1)
    {
      swift_unknownObjectRetain_n();
      v59 = [a8 searchContainerItemIdentifier];
      v34 = type metadata accessor for FPFSSearchEnumerator(0);
      v35 = objc_allocWithZone(v34);
      swift_unknownObjectWeakInit();
      v36 = &v35[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_keepAlive];
      *v36 = 0;
      v36[1] = 0;
      v35[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_invalidated] = 0;
      v37 = OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_changedItemsByID;
      *&v35[v37] = sub_1CF4E3884(MEMORY[0x1E69E7CC0]);
      *&v35[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_deletedItemsIDs] = MEMORY[0x1E69E7CD0];
      swift_unknownObjectWeakAssign();
      *&v35[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_extensionEnumerator] = a1;
      Strong = swift_unknownObjectWeakLoadStrong();
      v60 = a1;
      swift_unknownObjectRetain();
      if (!Strong || (v39 = [Strong log], Strong, !v39))
      {
        v40 = fp_default_log();
      }

      sub_1CF9E6128();
      v41 = v18;
      v42 = v61;
      (*(v64 + 32))(&v35[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_logger], v41, v61);
      *&v35[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_observer] = a6;
      *&v35[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_lifetimeExtender] = a5;
      *&v35[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_searchIdentifier] = v59;
      v68.receiver = v35;
      v68.super_class = v34;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v43 = objc_msgSendSuper2(&v68, sel_init);
      swift_unknownObjectRelease();
      v44 = objc_sync_enter(a7);
      if (v44)
      {
        MEMORY[0x1EEE9AC00](v44);
        *(&v58 - 2) = a7;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v58 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }

      v67[1] = &off_1F4C2ADB0;
      swift_unknownObjectWeakInit();
      swift_beginAccess();
      sub_1CF1C9EE0(v67, v43);
      swift_endAccess();
      v45 = objc_sync_exit(a7);
      if (v45)
      {
        MEMORY[0x1EEE9AC00](v45);
        *(&v58 - 2) = a7;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v58 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      v46 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v47 = v43;
      v48 = sub_1CF9E6108();
      v49 = sub_1CF9E72C8();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 138412290;
        *(v50 + 4) = v47;
        *v51 = v43;
        v52 = v47;
        _os_log_impl(&dword_1CEFC7000, v48, v49, "📖  new search enumerator %@", v50, 0xCu);
        sub_1CEFCCC44(v51, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v51, -1, -1);
        MEMORY[0x1D386CDC0](v50, -1, -1);
      }

      (*(v64 + 8))(v15, v42);
      v53 = v47;
      v63(v43, 0);
      swift_unknownObjectRelease();
    }

    else
    {
      v54 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v55 = sub_1CF9E6108();
      v56 = sub_1CF9E72A8();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_1CEFC7000, v55, v56, "Missing extensionEnumerator in enumerateWithSettings for search", v57, 2u);
        MEMORY[0x1D386CDC0](v57, -1, -1);
      }

      (*(v64 + 8))(v21, v61);
      v53 = FPNotSupportedError();
      v63(0, v53);
    }
  }
}

double FPDDomainFPFSBackend.fetchFSItems(forItemIdentifiers:materializingIfNeeded:request:completionHandler:)(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  *(v12 + 32) = a1;
  *(v12 + 40) = v5;
  *(v12 + 48) = a2;
  *(v12 + 56) = a3;
  swift_retain_n();

  v13 = v5;
  v14 = a3;
  sub_1CEFD4024("fetchFSItems(forItemIdentifiers:materializingIfNeeded:request:completionHandler:)", 81, 2, sub_1CF9032C0, v11, sub_1CF8F0DD8, v12);

  return result;
}

double sub_1CF877DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, void *a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = sub_1CF8FF29C;
  v15[3] = v13;
  v15[4] = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1CF8FF2C8;
  *(v16 + 24) = v15;
  v17 = *(a1 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1CF8FF2D8;
  *(v18 + 24) = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  *(v19 + 32) = a1;
  *(v19 + 40) = a6;
  *(v19 + 48) = a7;
  *(v19 + 56) = v17;
  *(v19 + 64) = sub_1CF8FF2D8;
  *(v19 + 72) = v16;
  swift_retain_n();

  v20 = a5;

  v21 = a7;

  sub_1CF7AAF88("fetchFSItems(forItemIdentifiers:materializingIfNeeded:request:completionHandler:)", 81, 2, 2, sub_1CF8FF310, v18, sub_1CF8FF370, v19);

  return result;
}

void sub_1CF877FA8(void *a1, uint64_t a2, char *a3, uint64_t a4, int a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v194 = a8;
  v212 = a7;
  v211 = a6;
  v222 = a5;
  v229 = a4;
  v193 = a9;
  v200 = sub_1CF9E63A8();
  v199 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v198 = &v193 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_1CF9E6448();
  v196 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v195 = &v193 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_1CF9E6118();
  v14 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v209 = &v193 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v214 = v16;
  *(v16 + 16) = MEMORY[0x1E69E7CC8];
  v203 = (v16 + 16);
  v213 = dispatch_group_create();
  v18 = *(a2 + 16);
  if (v18)
  {
    v226 = *&a3[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID];
    v19 = (a2 + 32);
    v207 = (v14 + 8);
    v225 = *MEMORY[0x1E6967258];
    v202 = "nFS";
    v224 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_domain;
    *&v17 = 136315906;
    v201 = v17;
    v227 = a3;
    v208 = a1;
    do
    {
      v231 = v19;
      v20 = *v19;
      v21 = objc_allocWithZone(MEMORY[0x1E6967388]);
      v22 = v20;
      v23 = v225;
      v24 = sub_1CF9E6888();
      v25 = [v21 initWithProviderDomainID:v226 itemIdentifier:v22 parentItemIdentifier:v23 filename:v24 isDirectory:0];

      v27 = a1[3];
      v26 = a1[4];
      v28 = __swift_project_boxed_opaque_existential_1(a1, v27);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v30 = Strong;
        v31 = [Strong indexer];

        if (v31)
        {
          v32 = [v31 needsAuthentication];

          if (v32)
          {
            v33 = 24;
          }

          else
          {
            v33 = 16;
          }
        }

        else
        {
          v33 = 16;
        }

        a3 = v227;
      }

      else
      {
        v33 = 16;
      }

      v34 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree, &unk_1CFA00618);
      v35 = v232;
      v36 = sub_1CF763B18(v25, v33, v28, v27, v34, &off_1F4BF8588, v26);
      if (v35)
      {
      }

      else if (v36)
      {
        v232 = 0;
        v37 = v203;
        swift_beginAccess();
        v25 = v25;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v238 = *v37;
        *v37 = 0x8000000000000000;
        sub_1CF1D2E08(v25, v22, isUniquelyReferenced_nonNull_native);

        *v37 = v238;
        swift_endAccess();
        goto LABEL_4;
      }

      v232 = 0;
      if (v222)
      {
        v223 = v18;
        v39 = v25;
        v40 = swift_allocObject();
        v41 = v211;
        *(v40 + 16) = v22;
        *(v40 + 24) = v41;
        v228 = v40 | 6;
        v42 = v22;
        v43 = v41;
        v44 = v213;
        dispatch_group_enter(v213);
        v45 = v229;
        v218 = *(v229 + 16);
        v46 = v42;
        v215 = sub_1CEFD4E9C(v46);
        v47 = swift_allocObject();
        v47[2] = v212;
        v47[3] = v44;
        v47[4] = v45;
        v47[5] = v39;
        v48 = v39;
        v49 = v214;
        v47[6] = a3;
        v47[7] = v49;
        v47[8] = v46;
        v221 = objc_allocWithZone(MEMORY[0x1E696AE38]);
        v220 = v46;
        v219 = v48;

        v50 = v44;

        v51 = a3;

        v52 = [v221 init];
        v53 = swift_allocObject();
        v53[2] = sub_1CF8FF3B4;
        v53[3] = v47;
        v216 = v53;
        v53[4] = v228;
        v221 = v47;
        v54 = v215;
        swift_retain_n();
        swift_retain_n();
        v55 = fpfs_current_or_default_log();
        v56 = v209;
        sub_1CF9E6128();
        swift_retain_n();

        v57 = sub_1CF9E6108();
        v58 = sub_1CF9E7298();
        v59 = os_log_type_enabled(v57, v58);
        v230 = v40;
        v217 = v52;
        if (v59)
        {
          v205 = v58;
          v206 = v57;
          v60 = swift_slowAlloc();
          v204 = swift_slowAlloc();
          v238 = v204;
          *v60 = v201;
          v61 = swift_beginAccess();
          v62 = *(v54 + 32);
          v63 = *(v54 + 40);
          if (*(v54 + 41))
          {
            v64 = NSFileProviderItemIdentifier.description.getter(v62);
            v66 = v65;
            sub_1CEFD0994(v62, v63, 1);
          }

          else
          {
            *&aBlock = *(v54 + 32);
            BYTE8(aBlock) = v63;
            v64 = VFSItemID.description.getter(v61);
            v66 = v67;
          }

          v68 = sub_1CEFD0DF0(v64, v66, &v238);
          v66, v69, v70, v71, v72, v73, v74, v75;
          *(v60 + 4) = v68;
          *(v60 + 12) = 2080;
          *(v60 + 14) = sub_1CEFD0DF0(0xD000000000000010, (v202 | 0x8000000000000000), &v238);
          *(v60 + 22) = 2080;
          v77 = v230[2];
          v76 = v230[3];
          strcpy(&aBlock, "itemID->URL(");
          BYTE13(aBlock) = 0;
          HIWORD(aBlock) = -5120;
          v78 = v76;
          v79 = v77;
          v80 = NSFileProviderItemIdentifier.description.getter(v79);
          v82 = v81;
          MEMORY[0x1D3868CC0](v80);
          v82, v83, v84, v85, v86, v87, v88, v89;
          MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
          v90 = [v78 description];
          v91 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v93 = v92;

          MEMORY[0x1D3868CC0](v91, v93);
          v93, v94, v95, v96, v97, v98, v99, v100;
          MEMORY[0x1D3868CC0](41, 0xE100000000000000);

          v101 = *(&aBlock + 1);
          v102 = sub_1CEFD0DF0(aBlock, *(&aBlock + 1), &v238);
          v101, v103, v104, v105, v106, v107, v108, v109;
          *(v60 + 24) = v102;
          *(v60 + 32) = 2048;
          *(v60 + 34) = 0;
          v110 = v206;
          _os_log_impl(&dword_1CEFC7000, v206, v205, "Lookup itemID %s with behavior %s request %s iteration %ld", v60, 0x2Au);
          v111 = v204;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v111, -1, -1);
          MEMORY[0x1D386CDC0](v60, -1, -1);
        }

        else
        {
        }

        (*v207)(v56, v210);
        swift_beginAccess();
        v112 = *(v54 + 32);
        v113 = *(v54 + 40);
        v18 = v223;
        if (*(v54 + 41))
        {
          v114 = qword_1EDEA34B0;
          v115 = v112;
          if (v114 != -1)
          {
            swift_once();
          }

          v116 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v118 = v117;
          v120 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v126 = v119;
          if (v116 == v120 && v118 == v119)
          {
            v118, v119, v120, v121, v122, v123, v124, v125;
            v126, v127, v128, v129, v130, v131, v132, v133;
            sub_1CEFD0994(v112, v113, 1);
            goto LABEL_33;
          }

          v135 = sub_1CF9E8048();
          v118, v136, v137, v138, v139, v140, v141, v142;
          v126, v143, v144, v145, v146, v147, v148, v149;
          sub_1CEFD0994(v112, v113, 1);
          if ((v135 & 1) == 0)
          {
LABEL_35:
            v150 = swift_allocObject();
            v151 = v228;
            *(v150 + 16) = v228;
            v152 = v150 | 0x7000000000000004;
            v153 = swift_allocObject();
            v154 = v216;
            *(v153 + 16) = sub_1CF796A0C;
            *(v153 + 24) = v154;
            v155 = v218;
            *(v153 + 32) = v218;
            *(v153 + 40) = 2;
            *(v153 + 48) = v151;
            *(v153 + 56) = v54;
            *(v153 + 64) = 0;
            v134 = v217;
            *(v153 + 72) = v217;
            *(v153 + 80) = 0;
            v156 = swift_allocObject();
            *(v156 + 16) = v54;
            *(v156 + 24) = v155;
            *(v156 + 32) = 0;
            *(v156 + 40) = sub_1CF796A90;
            *(v156 + 48) = v153;
            *(v156 + 56) = v152;
            v157 = swift_allocObject();
            *(v157 + 16) = sub_1CF796A90;
            *(v157 + 24) = v153;
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();

            v158 = v134;

            sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v157, sub_1CF796A9C, v156);

            v18 = v223;

            goto LABEL_36;
          }
        }

        else if (v112 || v113 != 2)
        {
          goto LABEL_35;
        }

LABEL_33:
        sub_1CF90CAC8(v228, sub_1CF796A0C, v216);

        v134 = v217;
LABEL_36:

        a3 = v227;
        a1 = v208;
        goto LABEL_5;
      }

LABEL_4:
LABEL_5:
      v19 = v231 + 1;
      --v18;
    }

    while (v18);
  }

  v159 = *&a3[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v160 = swift_allocObject();
  v161 = v193;
  v160[2] = v194;
  v160[3] = v161;
  v160[4] = v214;

  v162 = fpfs_current_log();
  v231 = fpfs_adopt_log();
  v163 = swift_allocObject();
  *&aBlock = sub_1CF9E73C8();
  *(&aBlock + 1) = v164;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v165 = sub_1CF9E7988();
  v167 = v166;
  MEMORY[0x1D3868CC0](v165);
  v167, v168, v169, v170, v171, v172, v173, v174;
  v175 = *(&aBlock + 1);
  sub_1CF9E6978();
  v175, v176, v177, v178, v179, v180, v181, v182;
  v183 = __fp_log_fork();

  *(v163 + 16) = v183;
  v184 = swift_allocObject();
  *(v184 + 16) = v162;
  *(v184 + 24) = v163;
  *(v184 + 32) = v159;
  *(v184 + 40) = "fetchFSItems(forItemIdentifiers:materializingIfNeeded:request:completionHandler:)";
  *(v184 + 48) = 81;
  *(v184 + 56) = 2;
  *(v184 + 64) = sub_1CF8FF3A8;
  *(v184 + 72) = v160;
  v236 = sub_1CF2B9F54;
  v237 = v184;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v234 = sub_1CEFCA444;
  v235 = &block_descriptor_4912;
  v185 = _Block_copy(&aBlock);
  v230 = v162;

  v186 = v159;

  v187 = v195;
  sub_1CF9E63F8();
  v238 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v188 = v198;
  v189 = v200;
  sub_1CF9E77B8();
  v190 = v213;
  sub_1CF9E7308();
  _Block_release(v185);
  (*(v199 + 8))(v188, v189);
  (*(v196 + 8))(v187, v197);

  v191 = v231;
  v192 = fpfs_adopt_log();
}

double sub_1CF878FAC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = a8;
  v15[7] = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1CF2B1874;
  *(v16 + 24) = v14;
  v17 = a3;

  v18 = a5;
  v19 = a6;

  v20 = a8;

  sub_1CF7AAF88("fetchFSItems(forItemIdentifiers:materializingIfNeeded:request:completionHandler:)", 81, 2, 2, sub_1CF9034B8, v16, sub_1CF8FF3E8, v15);

  return result;
}

void sub_1CF879108(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, NSObject *a7)
{
  v11 = a1[3];
  v10 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v14 = Strong, v15 = [Strong indexer], v14, v15) && (v16 = objc_msgSend(v15, sel_needsAuthentication), v15, v16))
  {
    v17 = 8;
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree, &unk_1CFA00618);
  sub_1CF763B18(a3, v17, v12, v11, v18, &off_1F4BF8588, v10);
  if (v7)
  {
  }

  else
  {
    swift_beginAccess();
    v19 = a6;
    v20 = a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(a5 + 16);
    *(a5 + 16) = 0x8000000000000000;
    sub_1CF1D2E08(v20, v19, isUniquelyReferenced_nonNull_native);

    *(a5 + 16) = v24;
    swift_endAccess();
  }

  dispatch_group_leave(a7);
}

void sub_1CF8792BC(void (*a1)(__n128), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);

  (a1)(v6, 0);
  v5, v7, v8, v9, v10, v11, v12, v13;
}

void sub_1CF8794B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for NSFileProviderItemIdentifier(0);
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  sub_1CEFCCCA4(&qword_1EDEAB550, type metadata accessor for NSFileProviderItemIdentifier, &unk_1CF9F76A8);
  v5 = sub_1CF9E6618();
  if (a2)
  {
    v6 = sub_1CF9E57E8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

double FPDDomainFPFSBackend.decorate(_:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_1CEFD4024("decorate(_:completionHandler:)", 30, 2, sub_1CF8F0DF0, v6, sub_1CF8F0E20, v7);

  return result;
}

double sub_1CF87969C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a2;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = 0;
  v9[5] = a3;
  v9[6] = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF902EAC;
  *(v10 + 24) = v8;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  sub_1CF7AAF88("decorate(_:options:completionHandler:)", 38, 2, 2, sub_1CF9034B8, v10, sub_1CF9033F4, v9);

  return result;
}

void sub_1CF879958(uint64_t a1, uint64_t a2)
{
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v3 = sub_1CF9E6D28();
  (*(a2 + 16))(a2, v3);
}

void sub_1CF879A28(uint64_t a1, unint64_t a2, void (*a3)(__n128), void *a4)
{
  v130 = a3;
  v131 = a4;
  v6 = sub_1CF9E63D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v129 = &v111 - v14;
  v15 = sub_1CF9E6068();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v126 = (&v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v118 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v127 = &v111 - v21;
  v22 = type metadata accessor for Signpost(0);
  v23 = *(v22 - 8);
  v119 = v22;
  v120 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v25);
  v121 = &v111 - v26;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v128 = &v111 - v29;
  v117 = v6;
  v116 = v7;
  v115 = v9;
  v124 = v30;
  v125 = v12;
  if (!(a2 >> 62))
  {
    v31 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v122 = v16;
    v123 = v15;
    if (v31)
    {
      goto LABEL_3;
    }

LABEL_25:
    v130(v28);
    return;
  }

LABEL_24:
  v31 = sub_1CF9E7818();
  v122 = v16;
  v123 = v15;
  if (!v31)
  {
    goto LABEL_25;
  }

LABEL_3:
  v15 = 0;
  v16 = a2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x1D3869C30](v15, a2, v28);
    }

    else
    {
      if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v32 = *(a2 + 8 * v15 + 32);
    }

    v33 = v32;
    v34 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v35 = [v32 inheritedUserInfo];
    if (!v35)
    {
      break;
    }

    ++v15;
    if (v34 == v31)
    {
      goto LABEL_25;
    }
  }

  v36 = *(a1 + 16);
  v37 = swift_allocObject();
  v37[2] = a1;
  v37[3] = a2;
  v38 = v130;
  v114 = v37;
  v39 = v131;
  v37[4] = v130;
  v37[5] = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = v38;
  *(v40 + 24) = v39;
  v130 = v40;
  v113 = v36;
  swift_retain_n();

  v41 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDEBBE40;
  v43 = v122;
  v44 = v123;
  v45 = v127;
  (*(v122 + 56))(v127, 1, 1, v123);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v46 = sub_1CF9E7988();
  v48 = v47;
  MEMORY[0x1D3868CC0](v46);
  v48, v49, v50, v51, v52, v53, v54, v55;
  v112 = *(&aBlock + 1);
  v56 = aBlock;
  v57 = v118;
  sub_1CEFCCBDC(v45, v118, &unk_1EC4BED20, &unk_1CFA00700);
  v58 = *(v43 + 48);
  v59 = v58(v57, 1, v44);
  v131 = v41;
  if (v59 == 1)
  {
    v60 = v42;
    v61 = v126;
    sub_1CF9E6048();
    if (v58(v57, 1, v44) != 1)
    {
      sub_1CEFCCC44(v57, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v61 = v126;
    (*(v43 + 32))(v126, v57, v44);
  }

  v62 = *(v43 + 16);
  v63 = v43;
  v64 = v128;
  v62(v128, v61, v44);
  v65 = v119;
  *(v64 + *(v119 + 20)) = v42;
  v66 = v64 + *(v65 + 24);
  *v66 = "DB queue wait";
  *(v66 + 8) = 13;
  *(v66 + 16) = 2;
  v67 = v42;
  v68 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1CF9FA450;
  *(v69 + 56) = MEMORY[0x1E69E6158];
  *(v69 + 64) = sub_1CEFD51C4();
  v70 = v112;
  *(v69 + 32) = v56;
  *(v69 + 40) = v70;
  sub_1CF9E6028(v68, &dword_1CEFC7000, v67, "DB queue wait", 13, 2, v64, "%s", 2);
  v69, v71, v72, v73, v74, v75, v76, v77;
  (*(v63 + 8))(v61, v44);
  sub_1CEFCCC44(v127, &unk_1EC4BED20, &unk_1CFA00700);
  v123 = *(v113 + 168);
  v127 = *(v113 + 64);
  v122 = sub_1CF9E6448();
  v119 = *(v122 - 8);
  (*(v119 + 56))(v129, 1, 1, v122);
  v78 = v121;
  sub_1CEFDA34C(v64, v121, type metadata accessor for Signpost);
  v79 = (*(v120 + 80) + 16) & ~*(v120 + 80);
  v80 = (v24 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  sub_1CEFDA0C4(v78, v81 + v79, type metadata accessor for Signpost);
  v82 = (v81 + v80);
  v126 = sub_1CF8F6D78;
  v83 = v130;
  *v82 = sub_1CF8F6D78;
  v82[1] = v83;
  v84 = v124;
  sub_1CEFDA34C(v64, v124, type metadata accessor for Signpost);
  v85 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
  v86 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
  v87 = (v86 + 25) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  sub_1CEFDA0C4(v84, v88 + v79, type metadata accessor for Signpost);
  v89 = (v88 + v80);
  *v89 = sub_1CF045408;
  v89[1] = 0;
  *(v88 + v85) = v113;
  v90 = v88 + v86;
  v91 = v119;
  *v90 = "attachInheritedUserInfo(_:completionHandler:)";
  *(v90 + 8) = 45;
  *(v90 + 16) = 2;
  v92 = (v88 + v87);
  v93 = v130;
  *v92 = v126;
  v92[1] = v93;
  v94 = v88;
  v95 = (v88 + ((v87 + 23) & 0xFFFFFFFFFFFFFFF8));
  v96 = v114;
  *v95 = sub_1CF8F6D58;
  v95[1] = v96;
  v97 = swift_allocObject();
  v97[2] = sub_1CF8F6D80;
  v97[3] = v81;
  v98 = v123;
  v97[4] = v123;
  swift_retain_n();

  v126 = v81;
  v99 = v122;

  v100 = fpfs_current_log();
  v101 = *(v98 + 16);
  v102 = v125;
  sub_1CEFCCBDC(v129, v125, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v91 + 48))(v102, 1, v99) == 1)
  {
    sub_1CEFCCC44(v102, &unk_1EC4BE370, qword_1CFA01B30);
    v103 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v104 = v115;
    sub_1CF9E6438();
    (*(v91 + 8))(v102, v99);
    v103 = sub_1CF9E63C8();
    (*(v116 + 8))(v104, v117);
  }

  v105 = swift_allocObject();
  v105[2] = v100;
  v105[3] = sub_1CF48100C;
  v105[4] = v94;
  v135 = sub_1CEFCA438;
  v136 = v105;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v133 = sub_1CEFCA444;
  v134 = &block_descriptor_834;
  v106 = _Block_copy(&aBlock);
  v107 = v100;

  v135 = sub_1CF2AF9E8;
  v136 = v97;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v133 = sub_1CEFCA444;
  v134 = &block_descriptor_837;
  v108 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v101, v127, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v103, v106, v108);
  _Block_release(v108);
  _Block_release(v106);

  sub_1CEFCCC44(v129, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v128, type metadata accessor for Signpost);
  v109 = v131;
  v110 = fpfs_adopt_log();
}

void sub_1CF87A62C(void *a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
  v10 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree, &unk_1CFA00618);
  sub_1CF764128(a3, v9, v7, v10, &off_1F4BF8588, *(v8 + 8));
  if (!v4)
  {
    a4();
  }
}

Swift::Int64 __swiftcall FPDDomainFPFSBackend.nonEvictableSpace()()
{
  v82 = sub_1CF9E6118();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v76 = &v75 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v77 = &v75 - v3;
  v80 = sub_1CF9E5A58();
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue);
  v93 = v0;
  v6 = fpfs_current_log();
  v7 = fpfs_adopt_log();
  v102 = 0;
  v103 = 1;
  aBlock = sub_1CF9E73C8();
  v95 = v8;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v9 = sub_1CF9E7988();
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  v19 = v95;
  sub_1CF9E6978();
  v19, v20, v21, v22, v23, v24, v25, v26;
  v27 = __fp_log_fork();

  v101 = 1;
  v102 = v27;
  v103 = 0;
  v84 = v6;
  v85 = &v102;
  v86 = v5;
  v87 = "nonEvictableSpace()";
  v88 = 19;
  v89 = 2;
  v90 = sub_1CF8F0E2C;
  v91 = &v92;
  v100 = 0;
  v28 = swift_allocObject();
  v28[2] = &v101;
  v28[3] = sub_1CF8F0E84;
  v28[4] = &v83;
  v28[5] = &v100;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1CF8F0EB0;
  *(v29 + 24) = v28;
  v98 = sub_1CF1C0B54;
  v99 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v95 = 1107296256;
  v96 = sub_1CEFFD02C;
  v97 = &block_descriptor_241;
  v30 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v5, v30);
  _Block_release(v30);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if (v30)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v100)
  {
LABEL_23:
    swift_willThrow();
    sub_1CF7447FC(v101);

    result = fpfs_adopt_log();
    __break(1u);
    return result;
  }

  v31 = v101;
  if (v101 == 1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v32 = fpfs_adopt_log();

  if (!v31)
  {
    return 0;
  }

  v33 = *(v31 + qword_1EC4EBCD0);
  if (v33)
  {
    v34 = *(v31 + qword_1EC4EBCD0 + 8);
    sub_1CF1FD6B8(*(v31 + qword_1EC4EBCD0), v34);
    v35 = v33;
    sub_1CF1FD6F8(v33, v34);
    if ((*(v31 + 82) & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v36);
      *(&v75 - 2) = sub_1CF8F0EBC;
      *(&v75 - 1) = v31;
      v50 = objc_autoreleasePoolPush();
      sub_1CF804C70(v31, 1, "executeBlockOnRO(db:roDB:_:)", 28, 2, 0, sub_1CF8F0EE0, (&v75 - 4));
    }

    else
    {
      v37 = v35;
      v38 = v78;
      sub_1CF9E5988();
      v39 = sub_1CF9E5A18();
      v41 = v40;
      v42 = sub_1CF7F1160(v39, v40);
      v41, v43, v44, v45, v46, v47, v48, v49;
      (*(v79 + 8))(v38, v80);
      v50 = *(v31 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
      v51 = swift_dynamicCastClassUnconditional();

      v71 = sub_1CF7F16AC(sub_1CF8F0ED8, v51);
      v35 = v72;

      sub_1CF7447FC(v31);

      if (v35)
      {
        v73 = 0;
      }

      else
      {
        v73 = v71;
      }

      result = v73 + v42;
      if (!__OFADD__(v42, v73))
      {
        return result;
      }

      __break(1u);
    }

    v74 = result;
    objc_autoreleasePoolPop(v50);

    sub_1CF7447FC(v31);
    return v74;
  }

  v53 = fpfs_current_or_default_log();
  v54 = v76;
  sub_1CF9E6128();
  v55 = sub_1CF9E6108();
  v56 = sub_1CF9E72B8();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_1CEFC7000, v55, v56, "no read-only connection available, skipping non-evictable resolution", v57, 2u);
    MEMORY[0x1D386CDC0](v57, -1, -1);
  }

  (*(v81 + 8))(v54, v82);
  v58 = v78;
  sub_1CF9E5988();
  v59 = sub_1CF9E5A18();
  v61 = v60;
  v62 = sub_1CF7F1160(v59, v60);
  v61, v63, v64, v65, v66, v67, v68, v69;
  v70 = sub_1CF7447FC(v31);
  (*(v79 + 8))(v58, v80, v70);
  return v62;
}

void *sub_1CF87AFA8@<X0>(void *a1@<X0>, void *a3@<X8>)
{
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5988();
  v10 = sub_1CF9E5A18();
  v12 = v11;
  v13 = sub_1CF7F1160(v10, v11);
  v12, v14, v15, v16, v17, v18, v19, v20;
  (*(v7 + 8))(v9, v6);
  v21 = a1[3];
  v22 = a1[4];
  v23 = __swift_project_boxed_opaque_existential_1(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
  swift_dynamicCastClassUnconditional();
  result = sub_1CF4BCA94(v23, v21, v22);
  if (!v3)
  {
    if (__OFADD__(v13, result))
    {
      __break(1u);
    }

    else
    {
      *a3 = result + v13;
    }
  }

  return result;
}

Swift::Int64 __swiftcall FPDDomainFPFSBackend.accumulatedSizeOfPinnedItems()()
{
  v1 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v66[1] = v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1CF9E5268();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66[0] = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1CF9E6118();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v72 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v69 = v66 - v6;
  v7 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue);
  v83 = v0;
  v8 = fpfs_current_log();
  v9 = fpfs_adopt_log();
  v94 = 0;
  v95 = 1;
  aBlock = sub_1CF9E73C8();
  v87 = v10;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v11 = sub_1CF9E7988();
  v13 = v12;
  MEMORY[0x1D3868CC0](v11);
  v13, v14, v15, v16, v17, v18, v19, v20;
  v21 = v87;
  sub_1CF9E6978();
  v21, v22, v23, v24, v25, v26, v27, v28;
  v29 = __fp_log_fork();

  v93 = 1;
  v94 = v29;
  v95 = 0;
  v74 = v8;
  v75 = &v94;
  v76 = v7;
  v77 = "accumulatedSizeOfPinnedItems()";
  v78 = 30;
  v79 = 2;
  v80 = sub_1CF8F0E2C;
  v81 = &v82;
  v92 = 0;
  v30 = swift_allocObject();
  v30[2] = &v93;
  v30[3] = sub_1CF903344;
  v30[4] = &v73;
  v30[5] = &v92;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1CF903478;
  *(v31 + 24) = v30;
  v90 = sub_1CF1C0B54;
  v91 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v87 = 1107296256;
  v88 = sub_1CEFFD02C;
  v89 = &block_descriptor_253;
  v32 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v7, v32);
  _Block_release(v32);
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v92)
  {
LABEL_23:
    swift_willThrow();
    sub_1CF7447FC(v93);

    result = fpfs_adopt_log();
    __break(1u);
    return result;
  }

  v33 = v93;
  if (v93 == 1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v34 = fpfs_adopt_log();

  if (!v33)
  {
    return 0;
  }

  v35 = *(v33 + qword_1EC4EBCD0);
  if (!v35)
  {
    v41 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v42 = sub_1CF9E6108();
    v43 = sub_1CF9E72B8();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v71;
    v46 = v70;
    if (v44)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1CEFC7000, v42, v43, "[Pin] no read-only connection available, skipping pinned disk space resolution", v47, 2u);
      MEMORY[0x1D386CDC0](v47, -1, -1);
    }

    (*(v46 + 8))(v69, v45);
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v48 = v66[0];
    v49 = v68;
    sub_1CF9E57D8();
    v50 = sub_1CF9E50D8();
    (*(v67 + 8))(v48, v49);
    swift_willThrow();
    v52 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v53 = v50;
    v54 = sub_1CF9E6108();
    v55 = sub_1CF9E72A8();

    if (os_log_type_enabled(v54, v55))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138412290;
      swift_getErrorValue();
      v59 = Error.prettyDescription.getter(v84, v85);
      *(v57 + 4) = v59;
      *v58 = v59;
      _os_log_impl(&dword_1CEFC7000, v54, v55, "[Pin] Unable to compute accumulated pinned items disk space: %@", v57, 0xCu);
      sub_1CEFCCC44(v58, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v58, -1, -1);
      MEMORY[0x1D386CDC0](v57, -1, -1);

      sub_1CF7447FC(v33);
    }

    else
    {
      sub_1CF7447FC(v33);
    }

    (*(v46 + 8))(v72, v45);
    return 0;
  }

  v36 = *(v33 + qword_1EC4EBCD0 + 8);
  sub_1CF1FD6B8(*(v33 + qword_1EC4EBCD0), v36);
  v37 = v35;
  sub_1CF1FD6F8(v35, v36);
  if ((*(v33 + 82) & 0x20) != 0)
  {
    MEMORY[0x1EEE9AC00](v38);
    v66[-2] = sub_1CF8F0EF8;
    v66[-1] = v33;
    v51 = objc_autoreleasePoolPush();
    sub_1CF804C70(v33, 1, "executeBlockOnRO(db:roDB:_:)", 28, 2, 0, sub_1CF902D14, &v66[-4]);
    v64 = v63;
    objc_autoreleasePoolPop(v51);

    sub_1CF7447FC(v33);
    return v64;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
    v39 = swift_dynamicCastClassUnconditional();
    v40 = v37;

    v60 = sub_1CF7F16AC(sub_1CF8F0F14, v39);
    v62 = v61;

    sub_1CF7447FC(v33);

    if (v62)
    {
      return 0;
    }

    else
    {
      return v60;
    }
  }
}

void *sub_1CF87BA44@<X0>(void *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
  swift_dynamicCastClassUnconditional();
  result = sub_1CF4BCBC0(v7, v5, v6);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall FPDDomainFPFSBackend.accumulatedSizeOfItems()()
{
  v1 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v64[1] = v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1CF9E5268();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64[0] = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1CF9E6118();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v70 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v67 = v64 - v6;
  v7 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue);
  v81 = v0;
  v8 = fpfs_current_log();
  v9 = fpfs_adopt_log();
  v92 = 0;
  v93 = 1;
  aBlock = sub_1CF9E73C8();
  v85 = v10;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v11 = sub_1CF9E7988();
  v13 = v12;
  MEMORY[0x1D3868CC0](v11);
  v13, v14, v15, v16, v17, v18, v19, v20;
  v21 = v85;
  sub_1CF9E6978();
  v21, v22, v23, v24, v25, v26, v27, v28;
  v29 = __fp_log_fork();

  v91 = 1;
  v92 = v29;
  v93 = 0;
  v72 = v8;
  v73 = &v92;
  v74 = v7;
  v75 = "accumulatedSizeOfItems()";
  v76 = 24;
  v77 = 2;
  v78 = sub_1CF8F0E2C;
  v79 = &v80;
  v90 = 0;
  v30 = swift_allocObject();
  v30[2] = &v91;
  v30[3] = sub_1CF903344;
  v30[4] = &v71;
  v30[5] = &v90;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1CF903478;
  *(v31 + 24) = v30;
  v88 = sub_1CF1C0B54;
  v89 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v85 = 1107296256;
  v86 = sub_1CEFFD02C;
  v87 = &block_descriptor_266;
  v32 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v7, v32);
  _Block_release(v32);
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v90)
  {
LABEL_20:
    swift_willThrow();
    sub_1CF7447FC(v91);

    v61 = fpfs_adopt_log();
    __break(1u);
    goto LABEL_21;
  }

  v33 = v91;
  if (v91 == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v34 = fpfs_adopt_log();

  if (!v33)
  {
LABEL_16:
    v61 = 0;
    goto LABEL_21;
  }

  v36 = *(v33 + qword_1EC4EBCD0);
  if (!v36)
  {
    v41 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v42 = sub_1CF9E6108();
    v43 = sub_1CF9E72B8();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v69;
    v46 = v68;
    if (v44)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1CEFC7000, v42, v43, "No db read-only connection available", v47, 2u);
      MEMORY[0x1D386CDC0](v47, -1, -1);
    }

    (*(v46 + 8))(v67, v45);
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v48 = v64[0];
    v49 = v66;
    sub_1CF9E57D8();
    v50 = sub_1CF9E50D8();
    (*(v65 + 8))(v48, v49);
    swift_willThrow();
    v52 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v53 = v50;
    v54 = sub_1CF9E6108();
    v55 = sub_1CF9E72A8();

    if (os_log_type_enabled(v54, v55))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138412290;
      swift_getErrorValue();
      v59 = Error.prettyDescription.getter(v82, v83);
      *(v57 + 4) = v59;
      *v58 = v59;
      _os_log_impl(&dword_1CEFC7000, v54, v55, "Unable to compute accumulated items disk space: %@", v57, 0xCu);
      sub_1CEFCCC44(v58, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v58, -1, -1);
      MEMORY[0x1D386CDC0](v57, -1, -1);

      sub_1CF7447FC(v33);
    }

    else
    {
      sub_1CF7447FC(v33);
    }

    (*(v46 + 8))(v70, v45);
    goto LABEL_16;
  }

  v37 = *(v33 + qword_1EC4EBCD0 + 8);
  sub_1CF1FD6B8(*(v33 + qword_1EC4EBCD0), v37);
  v38 = v36;
  sub_1CF1FD6F8(v36, v37);
  if ((*(v33 + 82) & 0x20) != 0)
  {
    MEMORY[0x1EEE9AC00](v39);
    v64[-2] = sub_1CF8F0F60;
    v64[-1] = v33;
    v51 = objc_autoreleasePoolPush();
    sub_1CF805594(v33, 1, "executeBlockOnRO(db:roDB:_:)", 28, 2, 0, sub_1CF8F0F1C, &v64[-4]);
    v63 = v62;
    objc_autoreleasePoolPop(v51);

    sub_1CF7447FC(v33);
    v61 = v63;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
    swift_dynamicCastClassUnconditional();
    v40 = v38;

    v60 = sub_1CF807B1C(v40, 2);

    sub_1CF7447FC(v33);

    v61 = v60;
  }

LABEL_21:
  result.value._rawValue = v61;
  result.is_nil = v35;
  return result;
}

void sub_1CF87C3D4(char *a1@<X0>, uint64_t (*a2)(__n128)@<X1>, uint64_t (*a3)(__n128)@<X2>, void *a5@<X8>)
{
  v9 = objc_sync_enter(a1);
  if (v9)
  {
    MEMORY[0x1EEE9AC00](v9);
    v14 = a1;
    fp_preconditionFailure(_:file:line:)(a2, v13, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v10 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs];

  v11 = objc_sync_exit(a1);
  if (v11)
  {
    MEMORY[0x1EEE9AC00](v11);
    v14 = a1;
    fp_preconditionFailure(_:file:line:)(a3, v13, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if (v10 || (MEMORY[0x1EEE9AC00](v11), v14 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4C28, &qword_1CFA17E60), sub_1CF9E7398(), (v10 = v15) != 0))
  {
    v12 = *(v10 + 16);
  }

  else
  {
    v12 = 0;
  }

  *a5 = v12;
}

uint64_t sub_1CF87C56C@<X0>(void *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
  swift_dynamicCastClassUnconditional();
  result = sub_1CF4BCD28(v7, v5, v6);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

BOOL sub_1CF87C694(uint64_t a1)
{
  if (a1 < 0)
  {
    goto LABEL_22;
  }

  if (a1 > 0x64)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/fpfs/FPDDomainFPFSBackend.swift", 94, 2, 4228);
  }

  v3 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID);
  v4 = [v3 pathComponents];
  v5 = sub_1CF9E6D48();

  v6 = *v5->tree;
  v5, v7, v8, v9, v10, v11, v12, v13;
  if (v6 >= 2)
  {
    v14 = [v3 stringByDeletingLastPathComponent];
    if (!v14)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v16 = v15;
      v14 = sub_1CF9E6888();
      v16, v17, v18, v19, v20, v21, v22, v23;
    }

    v3 = v14;
  }

  v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v26 = v25;

  v33 = 0x80000001CFA30030;
  v34 = v24 == 0xD00000000000002BLL && 0x80000001CFA30030 == v26;
  if (v34 || (sub_1CF9E8048() & 1) != 0 || ((v33 = 0x80000001CFA30060, v28 = 0xD000000000000032, v24 == 0xD000000000000032) ? (v35 = 0x80000001CFA30060 == v26) : (v35 = 0), v35))
  {
    v26, v27, v28, v33, v29, v30, v31, v32;
    goto LABEL_19;
  }

  v36 = sub_1CF9E8048();
  v26, v37, v38, v39, v40, v41, v42, v43;
  result = 0;
  if (v36)
  {
LABEL_19:
    v45 = sub_1CF518B08(0x64uLL);
    if (!__OFADD__(v45, 1))
    {
      return (v45 + 1) <= a1;
    }

    __break(1u);
LABEL_22:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/fpfs/FPDDomainFPFSBackend.swift", 94, 2, 4227);
  }

  return result;
}

double FPDDomainFPFSBackend.fetchTelemetryReport(withAlwaysFetchExpandedUsageStats:completionHandler:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = v3;
  *(v8 + 40) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF903260;
  *(v9 + 24) = v7;
  swift_retain_n();
  v10 = v3;

  sub_1CEFD4024("fetchTelemetryReport(withAlwaysFetchExpandedUsageStats:completionHandler:)", 74, 2, sub_1CF903280, v9, sub_1CF8F0F7C, v8);

  return result;
}

void sub_1CF87C984(uint64_t a1, void (*a2)(void, id), uint64_t a3, void *a4, char a5)
{
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = *(v14 + qword_1EC4EBCD0);
  if (v15)
  {
    v16 = *(v14 + qword_1EC4EBCD0 + 8);
    sub_1CF1FD6B8(*(v14 + qword_1EC4EBCD0), v16);
    v17 = v15;
    sub_1CF1FD6F8(v15, v16);
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    v19 = swift_allocObject();
    *(v19 + 16) = v14;
    *(v19 + 24) = a4;
    *(v19 + 32) = a2;
    *(v19 + 40) = a3;
    *(v19 + 48) = v17;
    *(v19 + 56) = a5 & 1;
    *(v19 + 64) = a1;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1CF903260;
    *(v20 + 24) = v18;
    swift_retain_n();
    v21 = v17;

    v22 = a4;

    sub_1CF7AAF88("fetchTelemetryReport(withAlwaysFetchExpandedUsageStats:completionHandler:)", 74, 2, 2, sub_1CF7BA950, v20, sub_1CF8FEE18, v19);
  }

  else
  {
    v23 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v24 = sub_1CF9E6108();
    v25 = sub_1CF9E72A8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1CEFC7000, v24, v25, "No read-only connection available to generate telemetry report", v26, 2u);
      MEMORY[0x1D386CDC0](v26, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    v27 = FPNotSupportedError();
    a2(0, v27);
  }
}

void sub_1CF87CC90(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, void *a6, int a7, uint64_t a8)
{
  v9 = v8;
  v92 = a7;
  v97 = a5;
  v98 = a6;
  v93 = a4;
  v94 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v89 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v90 = v13;
  v91 = &v73[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v73[-v15];
  v17 = sub_1CF9E64A8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v73[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v99 = v21;
  *(v21 + 24) = 1;
  if ((*(a2 + 82) & 4) != 0)
  {
    v22 = a2;
    v23 = *(a2 + 64);
    *v20 = v23;
    (*(v18 + 104))(v20, *MEMORY[0x1E69E8020], v17);
    v24 = v23;
    a2 = sub_1CF9E64D8();
    v25 = (*(v18 + 8))(v20, v17);
    if ((a2 & 1) == 0)
    {
      __break(1u);
      goto LABEL_29;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
    v26 = *(*(swift_dynamicCastClassUnconditional() + 32) + qword_1EDEBBB18);
    a2 = v22;
    if (v26)
    {
      v27 = v26 + *(*v26 + 136);
      swift_beginAccess();
      if ((*(v27 + 57) & 1) == 0)
      {
        v28 = *(v27 + 48);
        if (*(v27 + 56))
        {
          if (v28 > 1)
          {
            v28 = 0;
          }

          else
          {
            if (!v28)
            {
              goto LABEL_11;
            }

            v28 = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        v29 = v99;
        *(v99 + 16) = v28;
        *(v29 + 24) = 0;
      }
    }
  }

LABEL_11:
  v95 = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  v30 = *(*(swift_dynamicCastClassUnconditional() + 32) + qword_1EDEBBB18);
  if (v30)
  {
    v31 = a2;
    v32 = v30 + *(*v30 + 136);
    swift_beginAccess();
    v33 = type metadata accessor for BackgroundDownloaderPacerState(0);
    sub_1CEFCCBDC(v32 + *(v33 + 44), v16, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v34 = v30 + *(*v30 + 136);
    swift_beginAccess();
    v35 = *(v34 + *(v33 + 48));
    if (v35)
    {

      v36 = [v35 dailyValue];
      v37 = 0;
      a2 = v31;
      goto LABEL_17;
    }

    a2 = v31;
  }

  else
  {
    v38 = sub_1CF9E5CF8();
    (*(*(v38 - 8) + 56))(v16, 1, 1, v38);
  }

  v36 = 0;
  v37 = 1;
LABEL_17:
  v25 = objc_sync_enter(a2);
  if (v25)
  {
LABEL_29:
    MEMORY[0x1EEE9AC00](v25);
    v71 = &v73[-32];
    *&v73[-16] = a2;
    goto LABEL_32;
  }

  v39 = *(a2 + qword_1EDEADAA8);
  v40 = objc_sync_exit(a2);
  if (v40)
  {
    MEMORY[0x1EEE9AC00](v40);
    v72 = &v73[-32];
    *&v73[-16] = a2;
    goto LABEL_34;
  }

  v85 = v36;
  v96 = a2;
  v84 = v37;
  if (v30)
  {

    v82 = sub_1CF802EB8();
    v81 = v41;
  }

  else
  {
    v82 = 0;
    v81 = 1;
  }

  v42 = *(swift_dynamicCastClassUnconditional() + 32);
  v43 = *(v42 + qword_1EDEBBAF0);
  v44 = *(v42 + qword_1EDEBBAD0);
  v87 = v30;
  v88 = v9;
  v83 = v39;
  v80 = v42;
  if (!v44)
  {

    v86 = 0;
    v76 = 0;
    v77 = 1;
    goto LABEL_27;
  }

  swift_retain_n();

  v45 = objc_sync_enter(v44);
  if (v45)
  {
    MEMORY[0x1EEE9AC00](v45);
    v71 = &v73[-32];
    *&v73[-16] = v44;
LABEL_32:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v71, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF385874();
  v47 = v46;
  v48 = objc_sync_exit(v44);
  if (v48)
  {
    MEMORY[0x1EEE9AC00](v48);
    v72 = &v73[-32];
    *&v73[-16] = v44;
LABEL_34:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v72, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v77 = v47 ^ 1;

  v76 = sub_1CF38773C();
  v86 = v44;

LABEL_27:
  v74 = v43 ^ 1;
  v49 = v94;
  v78 = *&v94[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_dumpQueue];
  v50 = swift_allocObject();
  v75 = v50;
  v51 = v93;
  v52 = v97;
  *(v50 + 16) = v93;
  *(v50 + 24) = v52;
  v79 = v16;
  v53 = v16;
  v54 = v91;
  sub_1CEFCCBDC(v53, v91, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v55 = (*(v89 + 80) + 64) & ~*(v89 + 80);
  v56 = (v55 + v90 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v57 = (v55 + v90 + 15) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  v59 = v96;
  *(v58 + 16) = v49;
  *(v58 + 24) = v59;
  *(v58 + 32) = v98;
  *(v58 + 40) = v92 & 1;
  v60 = v99;
  *(v58 + 48) = v95;
  *(v58 + 56) = v60;
  sub_1CEFE55D0(v54, v58 + v55, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v61 = v58 + v56;
  *v61 = v85;
  *(v61 + 4) = v84;
  v62 = v58 + v57;
  *v62 = v82;
  *(v62 + 8) = v81 & 1;
  *(v62 + 9) = v74;
  v63 = v58 + ((v57 + 17) & 0xFFFFFFFFFFFFFFF8);
  *v63 = v80;
  *(v63 + 8) = v77 & 1;
  *(v63 + 9) = v76 & 1;
  *(v63 + 10) = v83;
  v64 = (v58 + ((v57 + 35) & 0xFFFFFFFFFFFFFFF8));
  v65 = v97;
  *v64 = v51;
  v64[1] = v65;
  v66 = swift_allocObject();
  v67 = v75;
  *(v66 + 16) = sub_1CF903260;
  *(v66 + 24) = v67;
  v68 = swift_allocObject();
  v68[2] = sub_1CF8FEE44;
  v68[3] = v58;
  v68[4] = sub_1CF903280;
  v68[5] = v66;
  swift_retain_n();

  v69 = v49;

  v70 = v98;

  sub_1CF01001C(0, "fetchTelemetryReport(withAlwaysFetchExpandedUsageStats:completionHandler:)", 74, 2, sub_1CF8FEFD4, v68);

  sub_1CEFCCC44(v79, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
}

void sub_1CF87D638(unint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, __int16 a10, _TtC18FileProviderDaemon8FSTester *a11, char a12, unsigned __int8 a13, unsigned __int8 a14, uint64_t a15, uint64_t a16)
{
  v16 = a8;
  v26[16] = a4;
  v27 = a1;
  v28 = a5;
  v29 = a2;
  v30 = a6 + 16;
  v31 = a7;
  v32 = a8;
  v18 = HIDWORD(a8) & 1;
  v33 = BYTE4(a8) & 1;
  v34 = a9;
  v35 = a10 & 0xFF01;
  v36 = a11;
  v37 = a12;
  v38 = a13;
  v39 = a14;
  v40 = a15;
  v41 = a16;
  if ((*(a2 + 82) & 0x20) != 0)
  {
    MEMORY[0x1EEE9AC00](a1);
    v21[2] = sub_1CF8FEFE0;
    v21[3] = v26;
    v20 = objc_autoreleasePoolPush();
    sub_1CF804374(a2, 1, "executeBlockOnRO(db:roDB:_:)", 28, 2, 0, sub_1CF8FF064, v21);
    objc_autoreleasePoolPop(v20);
  }

  else
  {
    v44 = &type metadata for SQLDatabaseReadOnlyAccessor;
    v45 = &off_1F4C179D8;
    v42 = a3;
    v43 = 2;
    v25 = a7;
    v23 = a5;
    v22 = a1;
    v46 = a4;
    v24 = (a6 + 16);
    v19 = a3;
    sub_1CF87D894(&v42, v46 & 1, v22, v23, a2, v24, v25, v16 | (v18 << 32), a9, a10 & 1, HIBYTE(a10) & 1, a11, a12 & 1, a13 & 1, a14 & 1, a15, a16);
    __swift_destroy_boxed_opaque_existential_1(&v42);
  }
}

void sub_1CF87D894(void *a1, char a2, unint64_t a3, uint64_t a4, uint64_t a5, void **a6, uint64_t a7, uint64_t a8, unint64_t a9, char a10, char a11, _TtC18FileProviderDaemon8FSTester *a12, char a13, char a14, unsigned __int8 a15, uint64_t a16, uint64_t a17)
{
  v478 = a8;
  v476 = a7;
  v490 = a6;
  v498 = sub_1CF9E5A58();
  v496 = *(v498 - 8);
  MEMORY[0x1EEE9AC00](v498);
  v489 = &v464[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v494 = &v464[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v495 = &v464[-v25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v464[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v480 = &v464[-v30];
  v31 = sub_1CF9E5CF8();
  v32 = *(v31 - 8);
  v481 = v31;
  v482 = v32;
  MEMORY[0x1EEE9AC00](v31);
  v477 = &v464[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v34);
  v474 = &v464[-v35];
  MEMORY[0x1EEE9AC00](v36);
  v479 = &v464[-v37];
  MEMORY[0x1EEE9AC00](v38);
  v473 = &v464[-v39];
  v488 = a3;
  v475 = v28;
  if ((a2 & 1) != 0 || sub_1CF87C694(10))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v41 = Strong;
      v42 = [Strong volume];

      sub_1CF51CA74(v503);
      v483 = v503[0];
      v484 = v503[1];
      v485 = v503[2];
      v486 = v503[3];
      v487 = v503[4];
      LODWORD(v492) = v504;
    }

    else
    {
      v483 = 0;
      v484 = 0;
      v485 = 0;
      v486 = 0;
      v487 = 0;
      LODWORD(v492) = 1;
    }

    v491 = 1;
  }

  else
  {
    v483 = 0;
    v484 = 0;
    v485 = 0;
    v486 = 0;
    v487 = 0;
    v491 = 0;
    LODWORD(v492) = 1;
  }

  v43 = sub_1CF7469D8();
  v44 = a1[3];
  v45 = a1[4];
  v46 = __swift_project_boxed_opaque_existential_1(a1, v44);
  v47 = *(a5 + 32);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
  swift_dynamicCastClassUnconditional();
  v49 = v497;
  sub_1CF4BA5A8(v46, v44, v45, &v505);
  v57 = v49;
  if (v49)
  {
    v43, v50, v51, v52, v53, v54, v55, v56;
    return;
  }

  v472 = a1;
  v468 = v48;
  v469 = v47;
  v493 = a5;
  v58 = swift_allocObject();
  v471 = v58;
  *(v58 + 16) = v43;
  v59 = (v58 + 16);
  v60 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1CF5174A4(2);
  v62 = v61;

  if (v62)
  {
    v63 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v63 = 0;
    *(&v500 + 1) = 0;
    v501 = 0;
  }

  v64 = v472;
  isUniquelyReferenced_nonNull_native = 0xD000000000000010;
  *&v500 = v62;
  v502 = v63;
  sub_1CF1C8750(&v500, 0xD000000000000010, 0x80000001CFA5E5C0);
  v66 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1CF5174A4(2);
  v68 = v67;

  if (v68)
  {
    v69 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v69 = 0;
    *(&v500 + 1) = 0;
    v501 = 0;
  }

  *&v500 = v68;
  v502 = v69;
  sub_1CF1C8750(&v500, 0xD000000000000010, 0x80000001CFA5E5E0);
  v70 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1CF5174A4(2);
  v72 = v71;

  if (v72)
  {
    v73 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v73 = 0;
    *(&v500 + 1) = 0;
    v501 = 0;
  }

  *&v500 = v72;
  v502 = v73;
  sub_1CF1C8750(&v500, 0xD000000000000010, 0x80000001CFA5E600);
  v74 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1CF5174A4(2);
  v76 = v75;

  if (v76)
  {
    v77 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v77 = 0;
    *(&v500 + 1) = 0;
    v501 = 0;
  }

  *&v500 = v76;
  v502 = v77;
  sub_1CF1C8750(&v500, 0xD000000000000010, 0x80000001CFA5E620);
  v78 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1CF5174A4(2);
  v80 = v79;

  if (v80)
  {
    v81 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v81 = 0;
    *(&v500 + 1) = 0;
    v501 = 0;
  }

  *&v500 = v80;
  v502 = v81;
  sub_1CF1C8750(&v500, 0xD000000000000010, 0x80000001CFA5E640);
  v82 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1CF5174A4(2);
  v84 = v83;

  if (v84)
  {
    v85 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v85 = 0;
    *(&v500 + 1) = 0;
    v501 = 0;
  }

  *&v500 = v84;
  v502 = v85;
  sub_1CF1C8750(&v500, 0x7373656C61746164, 0xEC0000006765725FLL);
  v86 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1CF5174A4(2);
  v88 = v87;

  if (v88)
  {
    v89 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v89 = 0;
    *(&v500 + 1) = 0;
    v501 = 0;
  }

  *&v500 = v88;
  v502 = v89;
  sub_1CF1C8750(&v500, 0x7373656C61746164, 0xEC000000676B705FLL);
  v90 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1CF5174A4(2);
  v92 = v91;

  if (v92)
  {
    v93 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v93 = 0;
    *(&v500 + 1) = 0;
    v501 = 0;
  }

  *&v500 = v92;
  v502 = v93;
  sub_1CF1C8750(&v500, 0x7373656C61746164, 0xEC0000007269645FLL);
  v94 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1CF5174A4(2);
  v96 = v95;

  if (v96)
  {
    v97 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v97 = 0;
    *(&v500 + 1) = 0;
    v501 = 0;
  }

  *&v500 = v96;
  v502 = v97;
  sub_1CF1C8750(&v500, 0x6F765F6C61746F74, 0xED00006765725F6CLL);
  v98 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1CF5174A4(2);
  v100 = v99;

  if (v100)
  {
    v101 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v101 = 0;
    *(&v500 + 1) = 0;
    v501 = 0;
  }

  *&v500 = v100;
  v502 = v101;
  sub_1CF1C8750(&v500, 0x6F765F6C61746F74, 0xED0000676B705F6CLL);
  v102 = v514;
  v103 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1CF5174A4(2);
  v105 = v104;

  if (v105)
  {
    v106 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v106 = 0;
    *(&v500 + 1) = 0;
    v501 = 0;
  }

  *&v500 = v105;
  v502 = v106;
  sub_1CF1C8750(&v500, 0xD000000000000015, 0x80000001CFA5E660);
  if (v102)
  {
    v107 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    sub_1CF5174A4(2);
    v109 = v108;

    if (v109)
    {
      v110 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      v110 = 0;
      *(&v500 + 1) = 0;
      v501 = 0;
    }

    *&v500 = v109;
    v502 = v110;
  }

  else
  {
    v502 = MEMORY[0x1E69E6530];
    *&v500 = 0;
  }

  sub_1CF1C8750(&v500, 0xD000000000000013, 0x80000001CFA5E680);
  v470 = a15;
  v497 = v59;
  if (!v491)
  {
    goto LABEL_158;
  }

  v111 = *(v64 + 24);
  v112 = *(v64 + 32);
  v113 = __swift_project_boxed_opaque_existential_1(v64, v111);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5060, &qword_1CFA052D0);
  swift_dynamicCastClassUnconditional();
  v114 = v64;
  v115 = v490;
  swift_beginAccess();
  sub_1CF4BB0F0(*v115, *(v115 + 8), v113, v111, v112, v516);
  v116 = 0x1E696A000uLL;
  v117 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  sub_1CF5174A4(2);
  v119 = v118;

  if (v119)
  {
    v120 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v120 = 0;
    *(&v500 + 1) = 0;
    v501 = 0;
  }

  v64 = v114;
  isUniquelyReferenced_nonNull_native = 0xD000000000000010;
  *&v500 = v119;
  v502 = v120;
  sub_1CF1C8750(&v500, 0xD00000000000001DLL, 0x80000001CFA5E8D0);
  v121 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  sub_1CF5174A4(2);
  v123 = v122;

  if (v123)
  {
    v124 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v124 = 0;
    *(&v500 + 1) = 0;
    v501 = 0;
  }

  *&v500 = v123;
  v502 = v124;
  sub_1CF1C8750(&v500, 0xD00000000000001DLL, 0x80000001CFA5E8F0);
  v125 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  sub_1CF5174A4(2);
  v127 = v126;

  if (v127)
  {
    v128 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v128 = 0;
    *(&v500 + 1) = 0;
    v501 = 0;
  }

  *&v500 = v127;
  v502 = v128;
  sub_1CF1C8750(&v500, 0xD00000000000001DLL, 0x80000001CFA5E910);
  v502 = MEMORY[0x1E69E6370];
  LOBYTE(v500) = v517;
  sub_1CF1C8750(&v500, 0xD000000000000010, 0x80000001CFA5E930);
  v129 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  sub_1CF5174A4(2);
  v131 = v130;

  if (v131)
  {
    v132 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  }

  else
  {
    v132 = 0;
    *(&v500 + 1) = 0;
    v501 = 0;
  }

  *&v500 = v131;
  v502 = v132;
  sub_1CF1C8750(&v500, 0xD000000000000012, 0x80000001CFA5E950);
  if ((*(v493 + 82) & 4) != 0)
  {
    v133 = v519;
    v134 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v490 = v133;
    v135 = [v134 initWithUnsignedLongLong_];
    sub_1CF5174A4(2);
    v137 = v136;

    if (v137)
    {
      v138 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      v138 = 0;
      *(&v500 + 1) = 0;
      v501 = 0;
    }

    *&v500 = v137;
    v502 = v138;
    sub_1CF1C8750(&v500, 0xD000000000000012, 0x80000001CFA5E970);
    v139 = v520;
    v140 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    sub_1CF5174A4(2);
    v142 = v141;

    if (v142)
    {
      v143 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      v143 = 0;
      *(&v500 + 1) = 0;
      v501 = 0;
    }

    *&v500 = v142;
    v502 = v143;
    sub_1CF1C8750(&v500, 0xD00000000000001ALL, 0x80000001CFA5E990);
    v144 = v521;
    v145 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v467 = v144;
    v146 = [v145 initWithUnsignedLongLong_];
    sub_1CF5174A4(2);
    v148 = v147;

    if (v148)
    {
      v149 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      v149 = 0;
      *(&v500 + 1) = 0;
      v501 = 0;
    }

    *&v500 = v148;
    v502 = v149;
    sub_1CF1C8750(&v500, 0xD000000000000022, 0x80000001CFA5E9B0);
    v150 = v490;
    if (v490)
    {
      v151 = v490;
      v152 = 0x1E696A000uLL;
      v153 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      sub_1CF5174A4(2);
      v155 = v154;

      if (v155)
      {
        v156 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v156 = 0;
        *(&v500 + 1) = 0;
        v501 = 0;
      }

      v158 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
      *&v500 = v155;
      v502 = v156;
      sub_1CF1C8750(&v500, 0xD000000000000025, 0x80000001CFA5E9E0);
      v159 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      sub_1CF5174A4(2);
      v161 = v160;

      if (v161)
      {
        v162 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v162 = 0;
        *(&v500 + 1) = 0;
        v501 = 0;
      }

      *&v500 = v161;
      v502 = v162;
      sub_1CF1C8750(&v500, 0xD00000000000002DLL, 0x80000001CFA5EA10);
    }

    else
    {
      v157 = MEMORY[0x1E69E6530];
      v502 = MEMORY[0x1E69E6530];
      *&v500 = -1;
      sub_1CF1C8750(&v500, 0xD000000000000025, 0x80000001CFA5E9E0);
      v502 = v157;
      *&v500 = -1;
      sub_1CF1C8750(&v500, 0xD00000000000002DLL, 0x80000001CFA5EA10);
      v152 = 0x1E696A000;
      v158 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
    }

    v163 = v522;
    v164 = objc_allocWithZone(*(v152 + 3480));
    v165 = *(v158 + 488);
    v466 = v163;
    v166 = [v164 v165];
    sub_1CF5174A4(2);
    v168 = v167;

    if (v168)
    {
      v169 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      v169 = 0;
      *(&v500 + 1) = 0;
      v501 = 0;
    }

    *&v500 = v168;
    v502 = v169;
    sub_1CF1C8750(&v500, 0xD00000000000002ALL, 0x80000001CFA5EA40);
    v170 = v523;
    v490 = [objc_allocWithZone(*(v152 + 3480)) *(v158 + 488)];
    sub_1CF5174A4(2);
    v172 = v171;
    if (v171)
    {
      v171 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      *(&v500 + 1) = 0;
      v501 = 0;
    }

    *&v500 = v172;
    v502 = v171;
    sub_1CF1C8750(&v500, 0xD000000000000032, 0x80000001CFA5EA70);
    v173 = v524;
    v467 = [objc_allocWithZone(*(v152 + 3480)) *(v158 + 488)];
    sub_1CF5174A4(2);
    v175 = v174;
    if (v174)
    {
      v174 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      *(&v500 + 1) = 0;
      v501 = 0;
    }

    *&v500 = v175;
    v502 = v174;
    sub_1CF1C8750(&v500, 0xD00000000000003ALL, 0x80000001CFA5EAB0);
    v176 = v466;
    if (v466)
    {
      v177 = v466;
      v116 = 0x1E696A000uLL;
      v178 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      sub_1CF5174A4(2);
      v180 = v179;

      if (v180)
      {
        v181 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v181 = 0;
        *(&v500 + 1) = 0;
        v501 = 0;
      }

      *&v500 = v180;
      v502 = v181;
      isUniquelyReferenced_nonNull_native = 0xD000000000000010;
      sub_1CF1C8750(&v500, 0xD00000000000003DLL, 0x80000001CFA5EAF0);
      v184 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      sub_1CF5174A4(2);
      v186 = v185;

      if (v186)
      {
        v187 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v187 = 0;
        *(&v500 + 1) = 0;
        v501 = 0;
      }

      v183 = v480;
      *&v500 = v186;
      v502 = v187;
      sub_1CF1C8750(&v500, 0xD000000000000045, 0x80000001CFA5EB30);
    }

    else
    {
      v182 = MEMORY[0x1E69E6530];
      v502 = MEMORY[0x1E69E6530];
      *&v500 = -1;
      sub_1CF1C8750(&v500, 0xD00000000000003DLL, 0x80000001CFA5EAF0);
      v502 = v182;
      *&v500 = -1;
      sub_1CF1C8750(&v500, 0xD000000000000045, 0x80000001CFA5EB30);
      isUniquelyReferenced_nonNull_native = 0xD000000000000010;
      v116 = 0x1E696A000;
      v183 = v480;
    }

    v466 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_domain;
    v188 = swift_unknownObjectWeakLoadStrong();
    if (v188)
    {
      v189 = v188;
      v190 = [v188 indexer];

      if (v190)
      {
        v465 = [v190 isIndexingEnabled];
        v191 = [v190 state];
        v192 = [v191 lastDropDate];

        if (v192)
        {
          sub_1CF9E5CB8();

          v193 = v479;
          sub_1CF9E5CE8();
          sub_1CF9E5C28();
          v195 = v194;
          v196 = *v482->_anon_8;
          v196(v193, v481);
          v197 = [objc_allocWithZone(*(v116 + 3480)) initWithDouble_];
          sub_1CF5174A4(2);
          v199 = v198;

          if (v199)
          {
            v200 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
          }

          else
          {
            v200 = 0;
            *(&v500 + 1) = 0;
            v501 = 0;
          }

          *&v500 = v199;
          v502 = v200;
          sub_1CF1C8750(&v500, 0xD000000000000013, 0x80000001CFA5EC30);
          v196(v473, v481);
          isUniquelyReferenced_nonNull_native = 0xD000000000000010;
          v116 = 0x1E696A000uLL;
        }

        v201 = [v190 state];
        v202 = [v201 getFileRedonationRequests];

        if (v202)
        {
          sub_1CF5174A4(2);
          v204 = v203;
          if (v203)
          {
            v203 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
          }

          else
          {
            *(&v500 + 1) = 0;
            v501 = 0;
          }

          *&v500 = v204;
          v502 = v203;
          sub_1CF1C8750(&v500, 0xD000000000000016, 0x80000001CFA5EC10);
        }

        else
        {
        }
      }

      else
      {
        v465 = 0;
      }

      v183 = v480;
    }

    else
    {
      v465 = 0;
    }

    v206 = v472[3];
    v205 = v472[4];
    v207 = __swift_project_boxed_opaque_existential_1(v472, v206);
    sub_1CF2504D0(v207, v206, v205, v183);
    v208 = v481;
    v209 = v482;
    tree = v482[1].tree;
    v480 = *v482[1].tree;
    if (v480(v183, 1, v481) == 1)
    {
      sub_1CEFCCC44(v183, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }

    else
    {
      v473 = tree;
      (v209[1].super.isa)(v474, v183, v208);
      v211 = v479;
      sub_1CF9E5CE8();
      sub_1CF9E5C28();
      v213 = v212;
      v214 = *v209->_anon_8;
      v214(v211, v208);
      v215 = [objc_allocWithZone(*(v116 + 3480)) initWithDouble_];
      sub_1CF5174A4(2);
      v217 = v216;

      if (v217)
      {
        v218 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v218 = 0;
        *(&v500 + 1) = 0;
        v501 = 0;
      }

      *&v500 = v217;
      v502 = v218;
      sub_1CF1C8750(&v500, 0xD000000000000013, 0x80000001CFA5EBF0);
      v208 = v481;
      v214(v474, v481);
      v209 = v482;
    }

    v219 = v475;
    sub_1CEFCCBDC(v476, v475, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    if (v480(v219, 1, v208) == 1)
    {
      v220 = sub_1CEFCCC44(v219, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }

    else
    {
      (v209[1].super.isa)(v477, v219, v208);
      v221 = v479;
      sub_1CF9E5CE8();
      v116 = 0x1E696A000uLL;
      sub_1CF9E5C28();
      v223 = v222;
      anon_8 = v209->_anon_8;
      v224 = *v209->_anon_8;
      v482 = anon_8;
      v224(v221, v208);
      v226 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      sub_1CF5174A4(2);
      v228 = v227;

      if (v228)
      {
        v229 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v229 = 0;
        *(&v500 + 1) = 0;
        v501 = 0;
      }

      *&v500 = v228;
      v502 = v229;
      sub_1CF1C8750(&v500, 0xD00000000000001ELL, 0x80000001CFA5EBD0);
      v220 = (v224)(v477, v481);
    }

    if ((v478 & 0x100000000) == 0)
    {
      v230 = [objc_allocWithZone(*(v116 + 3480)) initWithInt_];
      sub_1CF5174A4(2);
      v232 = v231;

      if (v232)
      {
        v233 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v233 = 0;
        *(&v500 + 1) = 0;
        v501 = 0;
      }

      *&v500 = v232;
      v502 = v233;
      sub_1CF1C8750(&v500, 0xD000000000000026, 0x80000001CFA5EBA0);
    }

    if ((a10 & 1) == 0)
    {
      LOBYTE(v234) = a14;
      LOBYTE(v64) = a13;
      if (a11)
      {
        isUniquelyReferenced_nonNull_native = a9 | 4;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = a9;
      }

      LOBYTE(v499[0]) = 0;
      if (qword_1EDEAD4D8 == -1)
      {
        goto LABEL_138;
      }

      goto LABEL_263;
    }

    v64 = v472;
  }

  while (1)
  {
    if ((v492 & 1) == 0)
    {
      v242 = objc_allocWithZone(*(v116 + 3480));
      v243 = [v242 initWithUnsignedLongLong_];
      sub_1CF5174A4(2);
      v245 = v244;

      if (v245)
      {
        v246 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v246 = 0;
        *(&v500 + 1) = 0;
        v501 = 0;
      }

      *&v500 = v245;
      v502 = v246;
      sub_1CF1C8750(&v500, 0x69645F6C61746F74, 0xEF657A69735F6B73);
      v247 = objc_allocWithZone(*(v116 + 3480));
      v248 = [v247 initWithUnsignedLongLong_];
      sub_1CF5174A4(2);
      v250 = v249;

      if (v250)
      {
        v251 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v251 = 0;
        *(&v500 + 1) = 0;
        v501 = 0;
      }

      *&v500 = v250;
      v502 = v251;
      sub_1CF1C8750(&v500, 0xD000000000000013, 0x80000001CFA5E850);
      v252 = objc_allocWithZone(*(v116 + 3480));
      v253 = [v252 initWithUnsignedLongLong_];
      sub_1CF5174A4(2);
      v255 = v254;

      if (v255)
      {
        v256 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v256 = 0;
        *(&v500 + 1) = 0;
        v501 = 0;
      }

      *&v500 = v255;
      v502 = v256;
      sub_1CF1C8750(&v500, 0xD000000000000012, 0x80000001CFA5E870);
      v257 = objc_allocWithZone(*(v116 + 3480));
      v258 = [v257 initWithUnsignedLongLong_];
      sub_1CF5174A4(2);
      v260 = v259;

      if (v260)
      {
        v261 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v261 = 0;
        *(&v500 + 1) = 0;
        v501 = 0;
      }

      *&v500 = v260;
      v502 = v261;
      sub_1CF1C8750(&v500, 0xD000000000000015, 0x80000001CFA5E890);
      v262 = objc_allocWithZone(*(v116 + 3480));
      v263 = [v262 initWithUnsignedLongLong_];
      sub_1CF5174A4(2);
      v265 = v264;

      if (v265)
      {
        v266 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v266 = 0;
        *(&v500 + 1) = 0;
        v501 = 0;
      }

      *&v500 = v265;
      v502 = v266;
      sub_1CF1C8750(&v500, 0xD000000000000013, 0x80000001CFA5E8B0);
    }

    v267 = *(v64 + 24);
    v268 = *(v64 + 32);
    v269 = __swift_project_boxed_opaque_existential_1(v64, v267);
    sub_1CF250D80(v269, v267, v268);
    if (v57)
    {
      goto LABEL_238;
    }

    if (v271 != 1)
    {
      v273 = v271;
      v274 = v270;
      if (v470)
      {
        v275 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        sub_1CF5174A4(2);
        v277 = v276;

        if (v277)
        {
          v278 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
        }

        else
        {
          v278 = 0;
          *(&v500 + 1) = 0;
          v501 = 0;
        }

        *&v500 = v277;
        v502 = v278;
      }

      else
      {
        v502 = MEMORY[0x1E69E6530];
        *&v500 = 0;
      }

      sub_1CF1C8750(&v500, 0xD000000000000019, 0x80000001CFA5E810);
      v64 = v472;
      if (v273)
      {
        v502 = MEMORY[0x1E69E6158];
        *&v500 = v274;
        *(&v500 + 1) = v273;
        sub_1CF1C8750(&v500, 0xD000000000000018, 0x80000001CFA5E830);
      }
    }

    v279 = sub_1CEFCE64C();
    v234 = v493;
    v483 = 0;
    v287 = *v279->tree;
    if (v287 < 2 || (v482 = v279, v502 = MEMORY[0x1E69E6530], *&v500 = v287 - 1, sub_1CF1C8750(&v500, 0xD000000000000013, 0x80000001CFA5E7B0), v279 = v482, v288 = *v482->tree, v288 == 1))
    {
      v279, v280, v281, v282, v283, v284, v285, v286;
LABEL_227:
      v414 = *(v64 + 24);
      v415 = *(v64 + 32);
      v416 = __swift_project_boxed_opaque_existential_1(v64, v414);
      v417 = v483;
      v418 = sub_1CF8F2468(v234, v416, v414, v415);
      if (!v417)
      {
        v422 = v421;
        v423 = v420;
        if (v419)
        {
          v424 = MEMORY[0x1E69E6158];
        }

        else
        {
          v418 = 0;
          v424 = 0;
          v501 = 0;
        }

        *&v500 = v418;
        *(&v500 + 1) = v419;
        v502 = v424;
        sub_1CF1C8750(&v500, 0xD00000000000001CLL, 0x80000001CFA5E6A0);
        if (v422)
        {
          v425 = MEMORY[0x1E69E6158];
        }

        else
        {
          v423 = 0;
          v425 = 0;
          v501 = 0;
        }

        *&v500 = v423;
        *(&v500 + 1) = v422;
        v502 = v425;
        sub_1CF1C8750(&v500, 0xD000000000000026, 0x80000001CFA5E6C0);
        v426 = *(v64 + 24);
        v427 = *(v64 + 32);
        v428 = __swift_project_boxed_opaque_existential_1(v64, v426);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5060, &qword_1CFA052D0);
        swift_dynamicCastClassUnconditional();
        v429 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        sub_1CF5174A4(2);
        v431 = v430;

        if (v431)
        {
          v432 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
        }

        else
        {
          v432 = 0;
          *(&v500 + 1) = 0;
          v501 = 0;
        }

        *&v500 = v431;
        v502 = v432;
        sub_1CF1C8750(&v500, 0xD00000000000002CLL, 0x80000001CFA5E6F0);
        v433 = *(v64 + 24);
        v498 = *(v64 + 32);
        v434 = __swift_project_boxed_opaque_existential_1(v64, v433);
        v435 = type metadata accessor for VFSItem(0);
        v436 = sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
        v437 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem, &unk_1CF9FFB08);
        v438 = sub_1CF2B1654(&qword_1EDEA3460, &qword_1EDEAB520, 0x1E6967388, &unk_1CFA018B0);
        v439 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        sub_1CF5174A4(2);
        v441 = v440;

        if (v441)
        {
          v442 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
        }

        else
        {
          v442 = 0;
          *(&v500 + 1) = 0;
          v501 = 0;
        }

        *&v500 = v441;
        v502 = v442;
        sub_1CF1C8750(&v500, 0xD000000000000015, 0x80000001CFA5E720);
        v443 = swift_unknownObjectWeakLoadStrong();
        if (v443)
        {
          v444 = v443;
          v445 = [v443 disconnectionState];
          v502 = MEMORY[0x1E69E6810];
          *&v500 = v445;
          sub_1CF1C8750(&v500, 0xD000000000000013, 0x80000001CFA5E790);
          v446 = [v444 userEnabled];
          v502 = MEMORY[0x1E69E6370];
          LOBYTE(v500) = v446;
          sub_1CF1C8750(&v500, 0x64656C62616E65, 0xE700000000000000);
          v447 = [v444 nsDomain];
          v448 = sub_1CF827720();

          if ((v448 & 0x100) == 0)
          {
            v502 = MEMORY[0x1E69E7508];
            LOBYTE(v500) = v448;
            sub_1CF1C8750(&v500, 0x656D697265707865, 0xED000064695F746ELL);
          }
        }

        v449 = [objc_opt_self() defaultStore];
        v450 = [v449 getTrialConfigurationState];

        v451 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v453 = v452;

        v502 = MEMORY[0x1E69E6158];
        *&v500 = v451;
        *(&v500 + 1) = v453;
        sub_1CF1C8750(&v500, 0xD000000000000013, 0x80000001CFA5E740);
        if (v491)
        {
          v454 = (*(v493 + 82) >> 2) & 1;
        }

        else
        {
          LOBYTE(v454) = 0;
        }

        v455 = swift_unknownObjectWeakLoadStrong();
        if (v455)
        {
          v456 = v455;
          v457 = [v455 indexer];

          v458 = v471;
          if (v457)
          {
            type metadata accessor for FPFSIndexer(0);
            v459 = swift_dynamicCastClass();
            if (!v459)
            {
            }
          }

          else
          {
            v459 = 0;
          }
        }

        else
        {
          v459 = 0;
          v458 = v471;
        }

        v460 = *(*(swift_dynamicCastClassUnconditional() + 16) + 136);
        v461 = swift_allocObject();
        *(v461 + 16) = v458;
        *(v461 + 24) = v454;
        *(v461 + 32) = v459;
        *(v461 + 40) = a16;
        *(v461 + 48) = a17;
        v462 = swift_allocObject();
        v462[2] = v460;
        v462[3] = sub_1CF8FF08C;
        v462[4] = v461;
        v463 = v459;

        swift_retain_n();

        sub_1CF01001C(0, "estimateSize(completionHandler:)", 32, 2, sub_1CF8FF0A4, v462);
      }

LABEL_238:

      return;
    }

    if (v288)
    {
      break;
    }

LABEL_262:
    __break(1u);
LABEL_263:
    v220 = swift_once();
LABEL_138:
    MEMORY[0x1EEE9AC00](v220);
    *&v464[-16] = v499;
    sub_1CF06779C(sub_1CF8FF0B0, &v464[-32]);
    if (isUniquelyReferenced_nonNull_native)
    {
      v235 = 0;
    }

    else
    {
      v235 = LOBYTE(v499[0]);
    }

    v236 = isUniquelyReferenced_nonNull_native | v235;
    if ((v64 & ((isUniquelyReferenced_nonNull_native & 0x80) == 0)) != 0)
    {
      v236 |= 0x80uLL;
    }

    if (v234)
    {
      v236 |= 0x100uLL;
    }

    if (v470)
    {
      v237 = v236 | 2;
    }

    else
    {
      v237 = v236;
    }

    v238 = swift_unknownObjectWeakLoadStrong();
    if (v238)
    {
      v239 = v238;

      v240 = [v239 isHidden];

      isUniquelyReferenced_nonNull_native = 0xD000000000000010;
      if (v465 & 1 | ((v240 & 1) == 0))
      {
        v64 = v472;
        goto LABEL_157;
      }

      v64 = v472;
      if ((v237 & 0x40) != 0)
      {
        goto LABEL_157;
      }

LABEL_155:
      v237 |= 0x40uLL;
      goto LABEL_157;
    }

    v64 = v472;
    isUniquelyReferenced_nonNull_native = 0xD000000000000010;
    if (v465)
    {
    }

    else
    {

      if ((v237 & 0x40) == 0)
      {
        goto LABEL_155;
      }
    }

LABEL_157:
    v241 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v502 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    *&v500 = v241;
    sub_1CF1C8750(&v500, 0xD00000000000001CLL, 0x80000001CFA5EB80);

LABEL_158:
    v116 = 0x1E696A000uLL;
  }

  v487 = v482 + ((*(v496 + 80) + 32) & ~*(v496 + 80));
  v485 = v288;
  v486 = v496 + 16;
  v492 = v496 + 8;
  v484 = 0x80000001CFA5E7D0;
  v490 = 0x80000001CFA5E7F0;
  v64 = 1;
  v289 = v495;
  while (1)
  {
    if (v288 == v64)
    {
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
      goto LABEL_262;
    }

    v306 = v496;
    v307 = v498;
    (*(v496 + 16))(v289, &v487[*(v496 + 72) * v64], v498);
    v234 = sub_1CF9E5A18();
    v309 = v308;
    v310 = v494;
    sub_1CF9E58D8();
    v311 = sub_1CF9E5A18();
    v313 = v312;
    v57 = *(v306 + 8);
    (v57)(v310, v307);
    if (v234 == v311 && v309 == v313)
    {
      v313, v314, v315, v316, v317, v318, v319, v320;
      v309, v321, v322, v323, v324, v325, v326, v327;
LABEL_199:
      v502 = MEMORY[0x1E69E6370];
      LOBYTE(v500) = 1;
      sub_1CEFE9EB8(&v500, v499);
      v342 = v497;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v525 = *v342;
      v343 = v525;
      *v342 = 0x8000000000000000;
      v344 = sub_1CEFE4328(0xD000000000000010, v490);
      v346 = *(v343 + 16);
      v347 = (v345 & 1) == 0;
      v348 = __OFADD__(v346, v347);
      v349 = v346 + v347;
      v289 = v495;
      if (v348)
      {
        goto LABEL_258;
      }

      v350 = v345;
      if (*(v343 + 24) >= v349)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v412 = v344;
          sub_1CF7CF1E0();
          v344 = v412;
        }
      }

      else
      {
        sub_1CF7C3178(v349, isUniquelyReferenced_nonNull_native);
        v344 = sub_1CEFE4328(0xD000000000000010, v490);
        if ((v350 & 1) != (v351 & 1))
        {
          goto LABEL_264;
        }
      }

      isUniquelyReferenced_nonNull_native = 0xD000000000000010;
      v234 = v525;
      if (v350)
      {
        v352 = (*(v525 + 56) + 32 * v344);
        __swift_destroy_boxed_opaque_existential_1(v352);
        sub_1CEFE9EB8(v499, v352);
        (v57)(v289, v498);
      }

      else
      {
        *(v525 + 8 * (v344 >> 6) + 64) |= 1 << v344;
        v360 = (*(v234 + 48) + 16 * v344);
        v361 = v490;
        *v360 = 0xD000000000000010;
        v360[1] = v361;
        sub_1CEFE9EB8(v499, (*(v234 + 56) + 32 * v344));
        (v57)(v289, v498);
        v362 = *(v234 + 16);
        v348 = __OFADD__(v362, 1);
        v363 = v362 + 1;
        if (v348)
        {
          goto LABEL_259;
        }

        *(v234 + 16) = v363;
      }

      v364 = *v497;
      *v497 = v234;
      v364, v353, v354, v355, v356, v357, v358, v359;
LABEL_210:
      v288 = v485;
      goto LABEL_193;
    }

    LOBYTE(v234) = sub_1CF9E8048();
    v313, v328, v329, v330, v331, v332, v333, v334;
    v309, v335, v336, v337, v338, v339, v340, v341;
    if (v234)
    {
      goto LABEL_199;
    }

    v289 = v495;
    v234 = sub_1CF9E5A18();
    v366 = v365;
    v367 = v489;
    sub_1CF9E5918();
    v368 = sub_1CF9E5A18();
    v370 = v369;
    (v57)(v367, v498);
    if (v234 == v368 && v366 == v370)
    {
      v370, v371, v372, v373, v374, v375, v376, v377;
      v366, v378, v379, v380, v381, v382, v383, v384;
    }

    else
    {
      LOBYTE(v234) = sub_1CF9E8048();
      v370, v385, v386, v387, v388, v389, v390, v391;
      v366, v392, v393, v394, v395, v396, v397, v398;
      if ((v234 & 1) == 0)
      {
        (v57)(v289, v498);
        isUniquelyReferenced_nonNull_native = 0xD000000000000010;
        goto LABEL_210;
      }
    }

    v502 = MEMORY[0x1E69E6370];
    LOBYTE(v500) = 1;
    sub_1CEFE9EB8(&v500, v499);
    v399 = v497;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v525 = *v399;
    v400 = v525;
    *v399 = 0x8000000000000000;
    v401 = sub_1CEFE4328(0xD000000000000012, v484);
    v403 = *(v400 + 16);
    v404 = (v402 & 1) == 0;
    v348 = __OFADD__(v403, v404);
    v405 = v403 + v404;
    if (v348)
    {
      goto LABEL_260;
    }

    v406 = v402;
    if (*(v400 + 24) < v405)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v413 = v401;
      sub_1CF7CF1E0();
      v401 = v413;
    }

    isUniquelyReferenced_nonNull_native = 0xD000000000000010;
    v234 = v525;
    if ((v406 & 1) == 0)
    {
LABEL_223:
      *(v234 + 8 * (v401 >> 6) + 64) |= 1 << v401;
      v408 = (*(v234 + 48) + 16 * v401);
      v409 = v484;
      *v408 = 0xD000000000000012;
      v408[1] = v409;
      sub_1CEFE9EB8(v499, (*(v234 + 56) + 32 * v401));
      (v57)(v289, v498);
      v410 = *(v234 + 16);
      v348 = __OFADD__(v410, 1);
      v411 = v410 + 1;
      if (v348)
      {
        goto LABEL_261;
      }

      *(v234 + 16) = v411;
      goto LABEL_192;
    }

LABEL_191:
    v290 = (*(v234 + 56) + 32 * v401);
    __swift_destroy_boxed_opaque_existential_1(v290);
    sub_1CEFE9EB8(v499, v290);
    (v57)(v289, v498);
LABEL_192:
    v288 = v485;
    v298 = *v497;
    *v497 = v234;
    v298, v291, v292, v293, v294, v295, v296, v297;
LABEL_193:
    ++v64;
    v234 = v493;
    if (v288 == v64)
    {
      v482, v299, v300, v301, v302, v303, v304, v305;
      v64 = v472;
      goto LABEL_227;
    }
  }

  sub_1CF7C3178(v405, isUniquelyReferenced_nonNull_native);
  isUniquelyReferenced_nonNull_native = 0xD000000000000010;
  v401 = sub_1CEFE4328(0xD000000000000012, v484);
  if ((v406 & 1) == (v407 & 1))
  {
    v234 = v525;
    if ((v406 & 1) == 0)
    {
      goto LABEL_223;
    }

    goto LABEL_191;
  }

LABEL_264:
  sub_1CF9E8108();
  __break(1u);
}

void sub_1CF880408(void *a1, uint64_t a2, char a3, uint64_t a4, int a5, void *a6, void (*a7)(__n128), uint64_t a8)
{
  v50 = a6;
  v51 = a7;
  v49 = a5;
  v13 = sub_1CF9E6118();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v17 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v18 = a1;
    v19 = sub_1CF9E6108();
    v20 = sub_1CF9E72A8();
    sub_1CF8FDA2C(a1, a2, 1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v48 = a8;
      v23 = v22;
      *v21 = 138412290;
      swift_getErrorValue();
      v24 = Error.prettyDescription.getter(v52, v53);
      *(v21 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&dword_1CEFC7000, v19, v20, "Unable to get dirstats on wharf: %@", v21, 0xCu);
      sub_1CEFCCC44(v23, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v25 = v23;
      a8 = v48;
      MEMORY[0x1D386CDC0](v25, -1, -1);
      MEMORY[0x1D386CDC0](v21, -1, -1);
    }

    (*(v14 + 8))(v16, v13);
  }

  else
  {
    v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    sub_1CF5174A4(2);
    v28 = v27;

    if (v28)
    {
      v29 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      v29 = 0;
      v55 = 0;
      v56 = 0;
    }

    v54 = v28;
    v57 = v29;
    swift_beginAccess();
    sub_1CF1C8750(&v54, 0xD000000000000011, 0x80000001CFA5EC50);
    swift_endAccess();
    v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    sub_1CF5174A4(2);
    v32 = v31;

    if (v32)
    {
      v33 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      v33 = 0;
      v55 = 0;
      v56 = 0;
    }

    v54 = v32;
    v57 = v33;
    swift_beginAccess();
    sub_1CF1C8750(&v54, 0xD000000000000012, 0x80000001CFA5EC70);
    swift_endAccess();
  }

  v34 = v50;
  if ((v49 & 1) != 0 && v50)
  {
    v35 = swift_allocObject();
    v36 = v51;
    v35[2] = a4;
    v35[3] = v36;
    v35[4] = a8;
    v37 = v34;

    sub_1CF74F584(sub_1CF8FF0C0, v35);
  }

  else
  {
    swift_beginAccess();
    v38 = *(a4 + 16);

    (v51)(v39, 0);
    v38, v40, v41, v42, v43, v44, v45, v46;
  }
}

void sub_1CF880808(uint64_t a1, uint64_t a2, void (*a3)(__n128), uint64_t a4)
{
  v78 = a4;
  v79 = a3;
  v6 = *a1;
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 72))
  {
    v11 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v12 = v6;
    v13 = sub_1CF9E6108();
    v14 = sub_1CF9E72A8();
    sub_1CEFCCC44(a1, &qword_1EC4C5068, &qword_1CFA18200);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_getErrorValue();
      v17 = Error.prettyDescription.getter(v80, v81);
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&dword_1CEFC7000, v13, v14, "Unable to get spotlight data: %@", v15, 0xCu);
      sub_1CEFCCC44(v16, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v16, -1, -1);
      MEMORY[0x1D386CDC0](v15, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v19 = *(a1 + 24);
    v18 = *(a1 + 32);
    v20 = *(a1 + 48);
    v74 = *(a1 + 40);
    v75 = v20;
    v21 = *(a1 + 64);
    v76 = *(a1 + 56);
    v77 = v21;
    v22 = *(a1 + 16);
    v23 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    sub_1CF5174A4(2);
    v25 = v24;

    if (v25)
    {
      v26 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      v26 = 0;
      v83 = 0;
      v84 = 0;
    }

    v82 = v25;
    v85 = v26;
    swift_beginAccess();
    sub_1CF1C8750(&v82, 0xD00000000000001BLL, 0x80000001CFA5EC90);
    swift_endAccess();
    v27 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    sub_1CF5174A4(2);
    v29 = v28;

    if (v29)
    {
      v30 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      v30 = 0;
      v83 = 0;
      v84 = 0;
    }

    v82 = v29;
    v85 = v30;
    swift_beginAccess();
    v31 = v29;
    sub_1CF1C8750(&v82, 0xD000000000000025, 0x80000001CFA5ECB0);
    swift_endAccess();
    v32 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    sub_1CF5174A4(2);
    v34 = v33;

    if (v34)
    {
      v35 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      v35 = 0;
      v83 = 0;
      v84 = 0;
    }

    v82 = v34;
    v85 = v35;
    swift_beginAccess();
    sub_1CF1C8750(&v82, 0xD000000000000023, 0x80000001CFA5ECE0);
    swift_endAccess();
    v36 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    sub_1CF5174A4(2);
    v38 = v37;
    if (v37)
    {
      v37 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    }

    else
    {
      v83 = 0;
      v84 = 0;
    }

    v82 = v38;
    v85 = v37;
    swift_beginAccess();
    sub_1CF1C8750(&v82, 0xD00000000000002DLL, 0x80000001CFA5ED10);
    swift_endAccess();
    if (v6)
    {
      v39 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v40 = [v39 initWithLongLong_];
      sub_1CF5174A4(2);
      v42 = v41;

      if (v42)
      {
        v43 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v43 = 0;
        v83 = 0;
        v84 = 0;
      }

      v82 = v42;
      v85 = v43;
      swift_beginAccess();
      sub_1CF1C8750(&v82, 0xD000000000000021, 0x80000001CFA5ED40);
      swift_endAccess();
      v49 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v50 = [v49 initWithLongLong_];
      sub_1CF5174A4(2);
      v52 = v51;

      if (v52)
      {
        v53 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v53 = 0;
        v83 = 0;
        v84 = 0;
      }

      v82 = v52;
      v85 = v53;
      swift_beginAccess();
      v54 = v52;
      sub_1CF1C8750(&v82, 0xD00000000000002BLL, 0x80000001CFA5ED70);
      swift_endAccess();
      v55 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v56 = [v55 initWithLongLong_];
      sub_1CF5174A4(2);
      v58 = v57;

      if (v58)
      {
        v59 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v59 = 0;
        v83 = 0;
        v84 = 0;
      }

      v82 = v58;
      v85 = v59;
      swift_beginAccess();
      sub_1CF1C8750(&v82, 0xD000000000000022, 0x80000001CFA5EDA0);
      swift_endAccess();
      v60 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v61 = [v60 initWithLongLong_];
      sub_1CF5174A4(2);
      v63 = v62;
      if (v62)
      {
        v62 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      }

      else
      {
        v83 = 0;
        v84 = 0;
      }

      v82 = v63;
      v85 = v62;
      swift_beginAccess();
      sub_1CF1C8750(&v82, 0xD00000000000002CLL, 0x80000001CFA5EDD0);
      swift_endAccess();
    }

    else
    {
      v44 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v45 = sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      v85 = v45;
      v82 = v44;
      swift_beginAccess();
      sub_1CF1C8750(&v82, 0xD000000000000021, 0x80000001CFA5ED40);
      swift_endAccess();
      v46 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v85 = v45;
      v82 = v46;
      swift_beginAccess();
      sub_1CF1C8750(&v82, 0xD00000000000002BLL, 0x80000001CFA5ED70);
      swift_endAccess();
      v47 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v85 = v45;
      v82 = v47;
      swift_beginAccess();
      sub_1CF1C8750(&v82, 0xD000000000000022, 0x80000001CFA5EDA0);
      swift_endAccess();
      v48 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v85 = v45;
      v82 = v48;
      swift_beginAccess();
      sub_1CF1C8750(&v82, 0xD00000000000002CLL, 0x80000001CFA5EDD0);
      swift_endAccess();
    }
  }

  swift_beginAccess();
  v64 = *(a2 + 16);

  (v79)(v65, 0);
  v64, v66, v67, v68, v69, v70, v71, v72;
}

void sub_1CF881254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_1CF9E6618();
    if (a2)
    {
LABEL_3:
      v6 = sub_1CF9E57E8();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

Swift::String_optional __swiftcall FPDDomainFPFSBackend.providerVersion()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v1 = Strong;
  v2 = [Strong provider];

  if (!v2)
  {
    Strong = 0;
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v3 = [v2 bundleVersion];

  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;

  v7 = v6;
  Strong = v4;
LABEL_6:
  result.value._object = v7;
  result.value._countAndFlagsBits = Strong;
  return result;
}

void FPDDomainFPFSBackend.hierarchy(for:request:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_1CF9E5928();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v4;
  v10[5] = a2;
  v14[4] = sub_1CF8F0F8C;
  v14[5] = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1CEFF9A6C;
  v14[3] = &block_descriptor_281;
  v11 = _Block_copy(v14);

  v12 = v5;
  v13 = a2;

  [v12 itemForURL:v9 options:0 request:v13 completionHandler:v11];

  _Block_release(v11);
}

void sub_1CF88153C(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5, void *a6)
{
  if (!a1 || a2)
  {
    (a3)(MEMORY[0x1E69E7CC0], a2, a3, a4, a5, a6);
  }

  else
  {
    type metadata accessor for FPFSOperationServicer();
    swift_allocObject();
    v11 = a1;
    v12 = sub_1CEFD3B18(a5, a6);
    v13 = [v11 itemID];
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1CF8FEDF0;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1CF8FEDF0;
    *(v16 + 24) = v14;
    *(v16 + 32) = v13;
    *(v16 + 40) = 1;
    *(v16 + 48) = v12;
    *(v16 + 56) = 1;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1CF8FEDF8;
    *(v17 + 24) = v15;
    swift_retain_n();

    v18 = v13;

    sub_1CEFD4024("fetchHierarchy(for:recursively:ignoreAlternateContentURL:reply:)", 64, 2, sub_1CF903280, v17, sub_1CF8FEE00, v16);
  }
}

void sub_1CF881778(unint64_t a1, uint64_t a2, void (*a3)(_TtC18FileProviderDaemon8FSTester *, uint64_t))
{
  sub_1CF7D9384(a1);
  if (v5)
  {
    v6 = sub_1CF8817E8(v5);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  a3(v6, a2);

  v6, v7, v8, v9, v10, v11, v12, v13;
}

unint64_t sub_1CF8817E8(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v1 = a1;
    v19 = sub_1CF9E7818();
    if (v19)
    {
      v27 = v19;
      v2 = sub_1CF1FDB18();
      v28 = sub_1CF1FB0F4(v2 + 32, v27, v1);
      v1 = v29;
      v28, v30, v29, v31, v32, v33, v34, v35;
      if (v1 != v27)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {
      v1, v20, v21, v22, v23, v24, v25, v26;
      v2 = MEMORY[0x1E69E7CC0];
LABEL_3:
      if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
      {
        v3 = *(v2 + 16);
        v4 = v3 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_1CF9E7818();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v3 = a1;
    v4 = a1 / 2;
LABEL_6:
    if (v3 + 1 < 3)
    {
      return v2;
    }

    v6 = -v4;
    v7 = 4;
    while (1)
    {
      v8 = v3 - (v7 - 3);
      if (__OFSUB__(v3, v7 - 3))
      {
        break;
      }

      a1 = v7 - 4;
      if (v7 - 4 != v8)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1D3869C30]();
          v12 = MEMORY[0x1D3869C30](v3 - (v7 - 3), v2);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v9)
          {
            goto LABEL_32;
          }

          if (v8 >= v9)
          {
            goto LABEL_33;
          }

          v10 = *(v2 + 8 * v8 + 32);
          v11 = *(v2 + 8 * v7);
          v12 = v10;
        }

        v13 = v12;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
        {
          v2 = sub_1CF067780();
          v14 = (v2 >> 62) & 1;
        }

        else
        {
          LODWORD(v14) = 0;
        }

        v15 = v2 & 0xFFFFFFFFFFFFFF8;
        v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v7);
        *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v7) = v13;

        if ((v2 & 0x8000000000000000) != 0 || v14)
        {
          a1 = sub_1CF067780();
          v2 = a1;
          v15 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v8 >= *(v15 + 16))
        {
          goto LABEL_34;
        }

        v17 = v15 + 8 * v8;
        v18 = *(v17 + 32);
        *(v17 + 32) = v11;
      }

      ++v7;
      if (v6 + v7 == 4)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

void sub_1CF881C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v5 = sub_1CF9E6D28();
  if (a2)
  {
    v6 = sub_1CF9E57E8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_1CF881CC0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, char a6)
{
  v10 = [objc_opt_self() defaultStore];
  v11 = [v10 dynamicErrorSampleRatePerProvider];

  v12 = sub_1CF9E6D48();
  sub_1CF51810C(a4, v12);
  v14 = v13;
  LOBYTE(v11) = v15;
  v12, v15, v16, v17, v18, v19, v20, v21;
  if (v11)
  {
    goto LABEL_7;
  }

  v22 = sub_1CF518B08(0x64uLL);
  if (__OFADD__(v22, 1))
  {
    __break(1u);
    return;
  }

  if (v14 >= (v22 + 1))
  {
LABEL_7:
    v23 = sub_1CF9E6888();
    [a3 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    if (a2)
    {
      v24 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      if (swift_dynamicCast())
      {
        v25 = [v28 fp_protectionClassBehindError];
        if (v25)
        {
          v26 = v25;
          [a3 __swift_setObject_forKeyedSubscript_];
          swift_unknownObjectRelease();
        }

        if ((a6 & 1) == 0)
        {
          v27 = sub_1CF9E7628();
          [a3 __swift_setObject_forKeyedSubscript_];

          swift_unknownObjectRelease();
        }
      }
    }
  }

  else
  {

    [a3 removeAllObjects];
  }
}

uint64_t sub_1CF881F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 152) = a1;
  *(v4 + 160) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1CF881FAC, 0, 0);
}

uint64_t sub_1CF881FAC()
{
  v1 = [*(v0 + 160) provider];
  *(v0 + 168) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 160);
    v4 = [v3 nsDomain];
    *(v0 + 176) = v4;
    v5 = [v3 startupError];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1CF9E57E8();
    }

    else
    {
      v7 = 0;
    }

    *(v0 + 184) = v7;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1CF882194;
    v10 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4ED8, &qword_1CFA18078);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1CF836290;
    *(v0 + 104) = &block_descriptor_2080;
    *(v0 + 112) = v10;
    [v2 reloadDomain:v4 unableToStartup:1 startupError:v7 completionHandler:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    **(v0 + 152) = 0;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1CF882194()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1CF882318;
  }

  else
  {
    v2 = sub_1CF8822A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1CF8822A4()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  **(v0 + 152) = *(v0 + 144);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1CF882318(uint64_t a1)
{
  v2 = v1[23];
  v3 = v1[24];
  v5 = v1[21];
  v4 = v1[22];
  v6 = v1[19];
  swift_willThrow();

  *v6 = 0;
  v7 = v1[1];

  return v7();
}

void sub_1CF8823B4(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v90 = a6;
  v91 = a5;
  v6 = a4;
  v10 = *&a2[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startupQueue];
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1CF8FED0C;
  *(v12 + 24) = v11;
  v89 = v11;
  v100 = sub_1CF1C0B54;
  v101 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v97 = 1107296256;
  v98 = sub_1CEFFD02C;
  v99 = &block_descriptor_4742;
  v13 = _Block_copy(&aBlock);

  v14 = a2;
  sub_1CF8F99A0(a3);

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v6 & 1) == 0)
  {
LABEL_7:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v46 = Strong;
      v47 = [Strong log];

      v88 = v80;
      MEMORY[0x1EEE9AC00](v48);
      v49 = &v80[-4];
      v80[-2] = v14;
      v80[-1] = a3;
      v50 = v47;
      if (v47)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v88 = v80;
      MEMORY[0x1EEE9AC00](0);
      v49 = &v80[-4];
      v80[-2] = v14;
      v80[-1] = a3;
    }

    v50 = fpfs_current_log();
    v47 = 0;
LABEL_12:
    v86 = v47;
    v87 = fpfs_adopt_log();
    v94 = 0;
    v95 = 1;
    aBlock = sub_1CF9E73C8();
    v97 = v51;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v52 = sub_1CF9E7988();
    v54 = v53;
    MEMORY[0x1D3868CC0](v52);
    v54, v55, v56, v57, v58, v59, v60, v61;
    v62 = v97;
    sub_1CF9E6978();
    v62, v63, v64, v65, v66, v67, v68, v69;
    v70 = __fp_log_fork();

    v94 = v70;
    v95 = 0;
    MEMORY[0x1EEE9AC00](v71);
    v80[-8] = v50;
    v80[-7] = &v94;
    v80[-6] = v10;
    v80[-5] = "reimportEverything(markItemDataless:reason:completionHandler:)";
    v80[-4] = 62;
    LOBYTE(v80[-3]) = 2;
    v80[-2] = sub_1CF8FED54;
    v80[-1] = v49;
    v93 = 1;
    v92 = 0;
    v72 = swift_allocObject();
    v72[2] = &v93;
    v72[3] = sub_1CF2BA13C;
    v72[4] = &v80[-10];
    v72[5] = &v92;
    v73 = swift_allocObject();
    *(v73 + 16) = sub_1CF2BA170;
    *(v73 + 24) = v72;
    v100 = sub_1CF1C0B54;
    v101 = v73;
    aBlock = MEMORY[0x1E69E9820];
    v97 = 1107296256;
    v98 = sub_1CEFFD02C;
    v99 = &block_descriptor_4754;
    v74 = _Block_copy(&aBlock);

    FPDispatchAsyncAndWait(v10, v74);
    _Block_release(v74);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      if (v92)
      {
LABEL_21:
        swift_willThrow();

        v78 = fpfs_adopt_log();
        __break(1u);
        goto LABEL_22;
      }

      if ((v93 & 1) == 0)
      {

        v76 = v87;
        v77 = fpfs_adopt_log();

        v91(0);

        return;
      }

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v88 = v10;
  type metadata accessor for VFSFileTree(0);
  v15 = swift_dynamicCastClassUnconditional();
  v87 = v85;
  MEMORY[0x1EEE9AC00](v15);
  v84[2] = a1;
  v84[3] = v14;
  v17 = v16;
  v18 = fpfs_current_log();
  v86 = fpfs_adopt_log();
  v94 = 0;
  v95 = 1;
  aBlock = sub_1CF9E73C8();
  v97 = v19;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v20 = sub_1CF9E7988();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  v30 = v97;
  sub_1CF9E6978();
  v30, v31, v32, v33, v34, v35, v36, v37;
  v38 = __fp_log_fork();

  v85[1] = v84;
  v94 = v38;
  v95 = 0;
  MEMORY[0x1EEE9AC00](v39);
  v80[2] = v18;
  v80[3] = &v94;
  v80[4] = v17;
  v80[5] = "reimportEverything(markItemDataless:reason:completionHandler:)";
  v80[6] = 62;
  v81 = 2;
  v82 = sub_1CF8FED70;
  v83 = v84;
  v93 = 1;
  v92 = 0;
  v40 = swift_allocObject();
  v40[2] = &v93;
  v40[3] = sub_1CF2BA13C;
  v40[4] = v80;
  v40[5] = &v92;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1CF2BA170;
  *(v41 + 24) = v40;
  v100 = sub_1CF1C0B54;
  v101 = v41;
  aBlock = MEMORY[0x1E69E9820];
  v97 = 1107296256;
  v98 = sub_1CEFFD02C;
  v99 = &block_descriptor_4766;
  v42 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v17, v42);
  _Block_release(v42);
  LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

  if (v42)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v92)
  {
    if (v93)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v43 = v86;
    v44 = fpfs_adopt_log();

    v10 = v88;
    goto LABEL_7;
  }

LABEL_22:
  swift_willThrow();

  v79 = fpfs_adopt_log();
  __break(1u);
}

void sub_1CF882B9C(uint64_t a1, uint64_t a2)
{
  v273 = a2;
  v289 = a1;
  v304[1] = *MEMORY[0x1E69E9840];
  v267 = sub_1CF9E53C8();
  v266 = *(v267 - 8);
  MEMORY[0x1EEE9AC00](v267);
  v265 = &v262 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_1CF9E6118();
  v270 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271);
  v268 = &v262 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v263 = &v262 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v269 = &v262 - v7;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v293 = v8;
  v294 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v264 = &v262 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v272 = &v262 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v292 = &v262 - v14;
  v15 = sub_1CF9E5CF8();
  v295 = *(v15 - 8);
  v16 = v295;
  MEMORY[0x1EEE9AC00](v15);
  v288 = &v262 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v276 = &v262 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v287 = &v262 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v275 = &v262 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v291 = &v262 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v274 = &v262 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v262 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v262 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v262 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v262 - v38;
  v40 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v262 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v43);
  v296 = (&v262 - v45);
  v46 = *v16[1].tester;
  v290 = v15;
  v46(v39, 1, 1, v15, v44);
  (v46)(v36, 1, 1, v15);
  (v46)(v33, 1, 1, v15);
  v281 = v39;
  sub_1CEFCCBDC(v39, v30, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v280 = v36;
  v47 = v36;
  v48 = v274;
  sub_1CEFCCBDC(v47, v274, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v278 = v33;
  v49 = v33;
  v50 = v290;
  sub_1CEFCCBDC(v49, v291, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v51 = &v42[v40[14]];
  *v51 = 0;
  *(v51 + 1) = 0;
  v284 = v51;
  v42[v40[17]] = 2;
  v285 = v40[23];
  v42[v285] = 6;
  v52 = v40[30];
  (v46)(&v42[v52], 1, 1, v50);
  v283 = &v42[v40[34]];
  v282 = xmmword_1CF9F4E20;
  *v283 = xmmword_1CF9F4E20;
  v53 = &v42[v40[37]];
  v54 = &v42[v40[38]];
  *v54 = 0;
  *(v54 + 1) = 0;
  fpfs_supports_vfs_ignore_permissions_iopolicy();
  *v42 = 1;
  v42[v40[20]] = 0;
  v42[v40[28]] = 0;
  v42[v40[29]] = 0;
  *&v42[v40[26]] = 0;
  *&v42[v40[27]] = 0;
  *(v42 + 1) = 0;
  v42[8] = 1;
  *v53 = 0;
  v53[4] = 1;
  v55 = v295;
  *(v42 + 5) = 493;
  v277 = v30;
  v56 = v30;
  v57 = v275;
  sub_1CEFCCBDC(v56, v275, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v58 = *v55[1].tree;
  v59 = v58(v57, 1, v50);
  v279 = v52;
  if (v59 == 1)
  {
    v60 = v276;
    sub_1CF9E5C88();
    if (v58(v57, 1, v50) != 1)
    {
      sub_1CEFCCC44(v57, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    v60 = v276;
    (v55[1].super.isa)(v276, v57, v50);
  }

  isa = v55[1].super.isa;
  (isa)(&v42[v40[7]], v60, v50);
  v62 = v287;
  sub_1CEFCCBDC(v48, v287, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v63 = v58(v62, 1, v50);
  v295 = v55 + 1;
  if (v63 == 1)
  {
    v64 = v288;
    sub_1CF9E5C88();
    v276 = isa;
    sub_1CEFCCC44(v48, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v277, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v278, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v280, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    isa = v276;
    sub_1CEFCCC44(v281, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v65 = v290;
    v66 = v58(v62, 1, v290);
    v67 = v65;
    if (v66 == 1)
    {
      goto LABEL_10;
    }

    v68 = v62;
    v69 = v65;
    sub_1CEFCCC44(v68, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  }

  else
  {
    sub_1CEFCCC44(v48, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v277, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v278, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v280, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v281, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v64 = v288;
    v70 = v62;
    v69 = v290;
    (isa)(v288, v70, v290);
  }

  v67 = v69;
LABEL_10:
  v71 = v40[31];
  v72 = &v42[v40[32]];
  v73 = v40[33];
  v74 = &v42[v40[35]];
  (isa)(&v42[v40[8]], v64, v67);
  v42[v40[9]] = 0;
  v42[v40[10]] = 0;
  v42[v40[13]] = 0;
  *&v42[v40[19]] = 0;
  v42[v40[21]] = 0;
  v42[v40[15]] = 0;
  v42[v40[16]] = 0;
  v42[v40[11]] = 0;
  v42[v40[12]] = 0;
  v42[v40[18]] = 0;
  sub_1CEFDA9E0(v291, &v42[v279], &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  *&v42[v71] = 0;
  *v72 = 0;
  v72[8] = 1;
  *&v42[v73] = 0;
  v75 = v284;
  *(v284 + 1), v76, v77, v78, v79, v80, v81, v82;
  *v75 = 0;
  *(v75 + 1) = 0;
  v83 = v283;
  sub_1CEFE48D8(*v283, *(v283 + 1));
  *v83 = v282;
  *v74 = 0;
  v74[8] = 1;
  v42[v40[36]] = 0;
  v42[v40[24]] = 0;
  v42[v40[25]] = 0;
  v42[v40[22]] = 0;
  v42[v285] = 6;
  v84 = v296;
  sub_1CEFDA0C4(v42, v296, type metadata accessor for ItemMetadata);
  *(v84 + v40[20]) = 1;
  type metadata accessor for VFSFileTree(0);
  v85 = swift_dynamicCastClassUnconditional();

  v86 = objc_sync_enter(v85);
  if (v86)
  {
    MEMORY[0x1EEE9AC00](v86);
    v260 = v85;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v262 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v87 = v85[20];

  v88 = objc_sync_exit(v85);
  if (v88)
  {
    MEMORY[0x1EEE9AC00](v88);
    v260 = v85;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v262 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v89 = *(v87 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs);

  v295 = v89;
  v287 = *v89->tree;
  if (v287)
  {
    v97 = 0;
    v291 = v295 + ((*(v294 + 80) + 32) & ~*(v294 + 80));
    v290 = v294 + 16;
    v289 = v294 + 8;
    v288 = v303;
    while (1)
    {
      if (v97 >= *v295->tree)
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
      }

      v98 = v293;
      v99 = v294;
      v100 = v292;
      (*(v294 + 16))(v292, v291 + *(v294 + 72) * v97, v293);
      sub_1CF9E5A18();
      v102 = v101;
      v103 = (*(v99 + 8))(v100, v98);
      MEMORY[0x1EEE9AC00](v103);
      v260 = v296;
      v300 = 1;
      v304[0] = 0;
      v104 = swift_allocObject();
      v104[2] = &v300;
      v104[3] = sub_1CF8FED8C;
      v104[4] = &v262 - 4;
      v104[5] = v304;
      v105 = swift_allocObject();
      *(v105 + 16) = sub_1CF50E0C0;
      *(v105 + 24) = v104;
      v303[2] = sub_1CF50EB9C;
      v303[3] = v105;
      aBlock = MEMORY[0x1E69E9820];
      v302 = 1107296256;
      v303[0] = sub_1CF005DF8;
      v303[1] = &block_descriptor_4778;
      v106 = _Block_copy(&aBlock);

      sub_1CF9E6978();
      v107 = fpfs_openat();

      _Block_release(v106);

      LOBYTE(v106) = swift_isEscapingClosureAtFileLocation();

      if (v106)
      {
        goto LABEL_53;
      }

      v116 = v304[0];
      if (v304[0])
      {
        v117 = v304[0];
        v295, v118, v119, v120, v121, v122, v123, v124;
        goto LABEL_25;
      }

      if (v107 < 0)
      {
        break;
      }

      if (v300)
      {
        goto LABEL_54;
      }

      ++v97;
      v102, v109, v110, v111, v112, v113, v114, v115;
      if (v287 == v97)
      {
        goto LABEL_20;
      }
    }

    if (MEMORY[0x1D38683F0](v108))
    {
      v295, v125, v126, v127, v128, v129, v130, v131;
      if (MEMORY[0x1D38683F0]() == 9939394)
      {
        v116 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
LABEL_25:
        swift_willThrow();
        v286 = 0;
        v139 = v269;
      }

      else
      {
        MEMORY[0x1D38683F0]();
        v140 = sub_1CF9E6138();
        v139 = v269;
        if ((v140 & 0x100000000) != 0)
        {
          LODWORD(aBlock) = 22;
        }

        else
        {
          LODWORD(aBlock) = v140;
        }

        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v141 = v265;
        v142 = v267;
        sub_1CF9E57D8();
        v116 = sub_1CF9E53A8();
        (*(v266 + 8))(v141, v142);
        swift_willThrow();
        v286 = 0;
      }

      v102, v132, v133, v134, v135, v136, v137, v138;

      sub_1CEFD5338(v296, type metadata accessor for ItemMetadata);
      v143 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v144 = v116;
      v145 = sub_1CF9E6108();
      v146 = sub_1CF9E72A8();

      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        *v147 = 138412290;
        swift_getErrorValue();
        v149 = Error.prettyDescription.getter(v298, v299);
        *(v147 + 4) = v149;
        *v148 = v149;
        _os_log_impl(&dword_1CEFC7000, v145, v146, "can't mark the root dataless: %@", v147, 0xCu);
        sub_1CEFCCC44(v148, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v148, -1, -1);
        MEMORY[0x1D386CDC0](v147, -1, -1);
      }

      else
      {
      }

      (*(v270 + 8))(v139, v271);
      goto LABEL_34;
    }

    aBlock = 0;
    v302 = 0xE000000000000000;
    sub_1CF9E7948();
    v302, v218, v219, v220, v221, v222, v223, v224;
    aBlock = 0xD00000000000001ALL;
    v302 = 0x80000001CFA2DF30;
    v297 = v107;
    v225 = sub_1CF9E7F98();
    v227 = v226;
    MEMORY[0x1D3868CC0](v225);
    v227, v228, v229, v230, v231, v232, v233, v234;
    MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
    v235 = aBlock;
    v236 = v302;
    v237 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v238 = sub_1CF9E6108();
    v239 = sub_1CF9E72B8();
    v236, v240, v241, v242, v243, v244, v245, v246;
    if (os_log_type_enabled(v238, v239))
    {
      v247 = swift_slowAlloc();
      v248 = swift_slowAlloc();
      aBlock = v248;
      *v247 = 136315650;
      v249 = sub_1CF9E7988();
      v251 = v250;
      v252 = sub_1CEFD0DF0(v249, v250, &aBlock);
      v251, v253, v254, v255, v256, v257, v258, v259;
      *(v247 + 4) = v252;
      *(v247 + 12) = 2048;
      *(v247 + 14) = 315;
      *(v247 + 22) = 2080;
      *(v247 + 24) = sub_1CEFD0DF0(v235, v236, &aBlock);
      _os_log_impl(&dword_1CEFC7000, v238, v239, "[ASSERT] ‼️  %s:%lu: %s", v247, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v248, -1, -1);
      MEMORY[0x1D386CDC0](v247, -1, -1);
    }

    (*(v270 + 8))(v263, v271);
    v261 = 0;
    v260 = 315;
    sub_1CF9E7B68();
    __break(1u);
  }

  else
  {
LABEL_20:
    v295, v90, v91, v92, v93, v94, v95, v96;
    sub_1CEFD5338(v296, type metadata accessor for ItemMetadata);
LABEL_34:
    v150 = v286;
    v151 = sub_1CEFCE64C();
    if (v150)
    {
    }

    else if (*v151->tree)
    {
      v159 = *(v294 + 16);
      v160 = v151;
      v159(v272, v151 + ((*(v294 + 80) + 32) & ~*(v294 + 80)), v293);
      v160, v161, v162, v163, v164, v165, v166, v167;
      v168 = sub_1CF9E5928();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v170 = Strong, v171 = [Strong provider], v170, v171))
      {
        v172 = [v171 descriptor];

        v173 = [v172 localizedName];
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v175 = v174;
      }

      else
      {
        v175 = 0xE000000000000000;
      }

      v176 = sub_1CF9E6888();
      v175, v177, v178, v179, v180, v181, v182, v183;
      aBlock = 0;
      v184 = FPWriteImportCookieForDomainURL();

      if (v184)
      {
        v185 = *(v294 + 8);
        v186 = aBlock;
        v185(v272, v293);
      }

      else
      {
        v187 = v293;
        if (aBlock)
        {
          v188 = aBlock;
          v189 = fpfs_current_or_default_log();
          v190 = v268;
          sub_1CF9E6128();
          v191 = v264;
          v192 = v272;
          v159(v264, v272, v187);
          v193 = v188;
          v194 = sub_1CF9E6108();
          v195 = sub_1CF9E72A8();

          if (os_log_type_enabled(v194, v195))
          {
            v196 = swift_slowAlloc();
            v295 = swift_slowAlloc();
            v296 = swift_slowAlloc();
            aBlock = v296;
            *v196 = 136315394;
            sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
            v197 = sub_1CF9E7F98();
            v199 = v198;
            v200 = *(v294 + 8);
            v294 += 8;
            v292 = v200;
            (v200)(v191, v187);
            v201 = sub_1CEFD0DF0(v197, v199, &aBlock);
            v199, v202, v203, v204, v205, v206, v207, v208;
            *(v196 + 4) = v201;
            *(v196 + 12) = 2112;
            v304[0] = v193;
            sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
            sub_1CF2B1654(&qword_1EC4BE010, &qword_1EDEA3440, 0x1E696ABC0, MEMORY[0x1E6969F58]);
            v209 = v193;
            v210 = sub_1CF9E7FB8();
            if (v210)
            {
              v211 = v210;
            }

            else
            {
              v211 = swift_allocError();
              *v213 = v209;
            }

            v214 = sub_1CF9E57E8();

            v215 = [v214 fp_prettyDescription];
            *(v196 + 14) = v215;
            v216 = v295;
            v295->super.isa = v215;
            _os_log_impl(&dword_1CEFC7000, v194, v195, "failed to write import cookie for domain url %s: %@", v196, 0x16u);
            sub_1CEFCCC44(v216, &qword_1EC4BE350, &unk_1CF9FC3B0);
            MEMORY[0x1D386CDC0](v216, -1, -1);
            v217 = v296;
            __swift_destroy_boxed_opaque_existential_1(v296);
            MEMORY[0x1D386CDC0](v217, -1, -1);
            MEMORY[0x1D386CDC0](v196, -1, -1);

            (*(v270 + 8))(v268, v271);
            (v292)(v272, v293);
          }

          else
          {

            v212 = *(v294 + 8);
            v212(v191, v187);
            (*(v270 + 8))(v190, v271);
            v212(v192, v187);
          }
        }

        else
        {
          (*(v294 + 8))(v272, v293);
        }
      }
    }

    else
    {
      v151, v152, v153, v154, v155, v156, v157, v158;
    }
  }
}

uint64_t sub_1CF884450@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, _DWORD *a3@<X8>)
{
  v6 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFDA34C(a1, v8, type metadata accessor for ItemMetadata);
  sub_1CEFE528C(v12);
  v10[12] = v12[12];
  v10[13] = v12[13];
  v10[14] = v12[14];
  v11 = v13;
  v10[8] = v12[8];
  v10[9] = v12[9];
  v10[10] = v12[10];
  v10[11] = v12[11];
  v10[4] = v12[4];
  v10[5] = v12[5];
  v10[6] = v12[6];
  v10[7] = v12[7];
  v10[0] = v12[0];
  v10[1] = v12[1];
  v10[2] = v12[2];
  v10[3] = v12[3];
  *a3 = sub_1CF1AC258(v10, v8, a2);
  return sub_1CEFD5338(v8, type metadata accessor for ItemMetadata);
}

void sub_1CF884594(uint64_t a1, unint64_t a2)
{
  v2 = sub_1CF96AA40(a2);
  v4 = v3;
  sub_1CF8367C8(v2, v3, 0xD000000000000012, 0x80000001CFA5E550);
  v4, v5, v6, v7, v8, v9, v10, v11;
}

void sub_1CF8845F4(char *a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v175 = a8;
  v176 = a7;
  v171 = a5;
  v172 = a6;
  v165 = a2;
  v11 = sub_1CF9E6118();
  v169 = *(v11 - 8);
  v170 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v167 = &v161 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v164 = &v161 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v163 = &v161 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v162 = &v161 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v161 - v20;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v22 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v168 = &v161 - v23;
  v24 = sub_1CF9E64A8();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = (&v161 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(a3 + 16);
  v30 = *(v29 + 64);
  *v28 = v30;
  (*(v25 + 104))(v28, *MEMORY[0x1E69E8020], v24, v26);
  v31 = v30;
  LOBYTE(v30) = sub_1CF9E64D8();
  (*(v25 + 8))(v28, v24);
  if ((v30 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v32 = *(v29 + 40);
  v177 = a1;
  v33 = *(*v32 + 240);
  v34 = *(v175 + 8);

  v35 = v174;
  v33(&v177, 1, a4, v176, v34);

  if (!v35)
  {
    v174 = a4;
    v36 = v176;
    v161 = v29;
    if ((*(v22 + 48))(v21, 1, v173) == 1)
    {
      sub_1CEFCCC44(v21, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v37 = fpfs_current_or_default_log();
      v38 = v167;
      sub_1CF9E6128();
      v39 = sub_1CF9E6108();
      v40 = sub_1CF9E7298();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1CEFC7000, v39, v40, "item is not in our database", v41, 2u);
        MEMORY[0x1D386CDC0](v41, -1, -1);
      }

      (*(v169 + 8))(v38, v170);
      v42 = FPItemNotFoundError();
      v171();

      return;
    }

    v43 = v168;
    sub_1CEFE55D0(v21, v168, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v44 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v46 = v45;
    v48 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v54 = v44;
    v55 = v47;
    if (v54 == v48 && v46 == v47)
    {
      v46, v47, v48, v49, v50, v51, v52, v53;
      v55, v56, v57, v58, v59, v60, v61, v62;
LABEL_11:
      v78 = fpfs_current_or_default_log();
      v79 = v164;
      sub_1CF9E6128();
      v80 = sub_1CF9E6108();
      v81 = sub_1CF9E72A8();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_1CEFC7000, v80, v81, "🚚  reimporting the root item, dropping the database", v82, 2u);
        MEMORY[0x1D386CDC0](v82, -1, -1);
      }

      (*(v169 + 8))(v79, v170);
      v83 = swift_allocObject();
      v85 = v171;
      v84 = v172;
      *(v83 + 16) = v171;
      *(v83 + 24) = v84;
      v86 = swift_allocObject();
      v87 = v166;
      *(v86 + 16) = v166;
      *(v86 + 24) = 0x8000000000000000;
      *(v86 + 32) = v165 & 1;
      *(v86 + 40) = v85;
      *(v86 + 48) = v84;
      swift_retain_n();
      v88 = v87;
      v89 = sub_1CF90332C;
LABEL_14:
      sub_1CEFD4024("reimportEverything(markItemDataless:reason:completionHandler:)", 62, 2, sub_1CF90324C, v83, v89, v86);

      v90 = v43;
LABEL_15:
      sub_1CEFCCC44(v90, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      return;
    }

    v63 = sub_1CF9E8048();
    v46, v64, v65, v66, v67, v68, v69, v70;
    v55, v71, v72, v73, v74, v75, v76, v77;
    if (v63)
    {
      goto LABEL_11;
    }

    v91 = v161;
    v92 = *(v161 + 16);
    v179 = a1;
    v93 = *(*v92 + 152);

    v93(&v177, &v179, v174, v36, v34);

    if (v178 == 255)
    {
      v101 = fpfs_current_or_default_log();
      v102 = v163;
      sub_1CF9E6128();
      v103 = sub_1CF9E6108();
      v104 = sub_1CF9E7298();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_1CEFC7000, v103, v104, "item is not in our database", v105, 2u);
        MEMORY[0x1D386CDC0](v105, -1, -1);
      }

      (*(v169 + 8))(v102, v170);
      v106 = FPItemNotFoundError();
      v171();

      v90 = v168;
      goto LABEL_15;
    }

    LODWORD(v163) = v178;
    v164 = v177;
    v94 = [objc_opt_self() defaultStore];
    v95 = [v94 partialReimportHierarchyLimit];

    v96 = *(v91 + 40);
    v177 = a1;
    v97 = v95;
    v98 = *(*v96 + 304);

    v99 = v36;
    v100 = v98(&v177, v97, v174, v36, v34);
    v167 = 0;
    v107 = v100;
    v108 = v164;

    v43 = v168;
    if ((v107 & 1) == 0)
    {
      v116 = fpfs_current_or_default_log();
      v117 = v162;
      sub_1CF9E6128();
      v118 = a1;
      v119 = sub_1CF9E6108();
      v120 = sub_1CF9E72A8();

      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v177 = v122;
        *v121 = 136315138;
        v123 = NSFileProviderItemIdentifier.description.getter(v118);
        v125 = v124;
        v126 = sub_1CEFD0DF0(v123, v124, &v177);
        v125, v127, v128, v129, v130, v131, v132, v133;
        *(v121 + 4) = v126;
        _os_log_impl(&dword_1CEFC7000, v119, v120, "🚚  hierarchy of %s is too big, falling back on reimporting the root item", v121, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v122);
        MEMORY[0x1D386CDC0](v122, -1, -1);
        MEMORY[0x1D386CDC0](v121, -1, -1);
      }

      (*(v169 + 8))(v117, v170);
      v134 = v172;
      v135 = (v43 + *(v173 + 48));
      v136 = *v135;
      v137 = type metadata accessor for ItemMetadata(0);
      if (v136 > 1)
      {
        if (v136 == 2)
        {
          v139 = 0xE700000000000000;
          v138 = 0x6B6E696C6D7973;
        }

        else
        {
          v139 = 0xE500000000000000;
          v138 = 0x7361696C61;
        }
      }

      else if (v136)
      {
        v139 = 0xE300000000000000;
        v138 = 7498084;
      }

      else
      {
        if (v135[*(v137 + 112)])
        {
          v138 = 6777712;
        }

        else
        {
          v138 = 6516580;
        }

        v139 = 0xE300000000000000;
      }

      v151 = v166;
      sub_1CF82ED30(0x8000000000000028, v138, v139, *(v161 + qword_1EDEBBDE0));
      v139, v152, v153, v154, v155, v156, v157, v158;
      v83 = swift_allocObject();
      v159 = v171;
      *(v83 + 16) = v171;
      *(v83 + 24) = v134;
      v86 = swift_allocObject();
      *(v86 + 16) = v151;
      *(v86 + 24) = 0x8000000000000000;
      *(v86 + 32) = v165 & 1;
      *(v86 + 40) = v159;
      *(v86 + 48) = v134;
      swift_retain_n();
      v160 = v151;
      v89 = sub_1CF8FEC7C;
      goto LABEL_14;
    }

    v109 = (v168 + *(v173 + 48));
    v110 = *v109;
    v111 = type metadata accessor for ItemMetadata(0);
    if (v110 > 1)
    {
      v112 = v172;
      v113 = v175;
      if (v110 == 2)
      {
        v115 = 0xE700000000000000;
        v114 = 0x6B6E696C6D7973;
      }

      else
      {
        v115 = 0xE500000000000000;
        v114 = 0x7361696C61;
      }
    }

    else
    {
      v112 = v172;
      v113 = v175;
      if (v110)
      {
        v115 = 0xE300000000000000;
        v114 = 7498084;
      }

      else
      {
        if (v109[*(v111 + 112)])
        {
          v114 = 6777712;
        }

        else
        {
          v114 = 6516580;
        }

        v115 = 0xE300000000000000;
      }
    }

    v140 = v161;
    v141 = v166;
    sub_1CF82ED30(0x8000000000000020, v114, v115, *(v161 + qword_1EDEBBDE0));
    v115, v142, v143, v144, v145, v146, v147, v148;
    v177 = v108;
    v178 = v163;
    v149 = swift_allocObject();
    v149[2] = v171;
    v149[3] = v112;
    v149[4] = v141;

    v150 = v141;
    sub_1CF96AF30(&v177, v140, v174, sub_1CF8FEC80, v149, v99, v113);

    sub_1CEFCCC44(v43, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  }
}

double sub_1CF885294(void *a1, void (*a2)(void *), uint64_t a3, char *a4)
{
  v8 = sub_1CF9E63A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6448();
  MEMORY[0x1EEE9AC00](v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v16 = a1;
    a2(a1);
  }

  else
  {
    v21[1] = *&a4[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
    v22 = v13;
    v18 = swift_allocObject();
    v18[2] = a4;
    v18[3] = a2;
    v18[4] = a3;
    aBlock[4] = sub_1CF8FECE4;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CEFCA444;
    aBlock[3] = &block_descriptor_4720;
    v19 = _Block_copy(aBlock);
    v20 = a4;

    sub_1CF9E63F8();
    v23 = MEMORY[0x1E69E7CC0];
    sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
    sub_1CF9E77B8();
    MEMORY[0x1D3869630](0, v15, v11, v19);
    _Block_release(v19);
    (*(v9 + 8))(v11, v8);
    (*(v22 + 8))(v15, v12);
  }

  return result;
}

id sub_1CF8855D0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v46 = a3;
  v47 = a2;
  v4 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startupQueue);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong log];

    v45 = &v43;
    MEMORY[0x1EEE9AC00](v8);
    v42 = a1;
    v9 = v7;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v45 = &v43;
    MEMORY[0x1EEE9AC00](0);
    v42 = a1;
  }

  v9 = fpfs_current_log();
  v7 = 0;
LABEL_6:
  v43 = v7;
  v44 = fpfs_adopt_log();
  v56 = 0;
  v57 = 1;
  aBlock = sub_1CF9E73C8();
  v49 = v10;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v11 = sub_1CF9E7988();
  v13 = v12;
  MEMORY[0x1D3868CC0](v11);
  v13, v14, v15, v16, v17, v18, v19, v20;
  v21 = v49;
  sub_1CF9E6978();
  v21, v22, v23, v24, v25, v26, v27, v28;
  v29 = __fp_log_fork();

  v56 = v29;
  v57 = 0;
  MEMORY[0x1EEE9AC00](v30);
  v37[2] = v9;
  v37[3] = &v56;
  v37[4] = v4;
  v37[5] = "reimportItems(below:markItemDataless:fpfs:with:completionHandler:)";
  v37[6] = 66;
  v38 = 2;
  v39 = sub_1CF8FECF0;
  v40 = &v41;
  v55 = 1;
  v54 = 0;
  v31 = swift_allocObject();
  v31[2] = &v55;
  v31[3] = sub_1CF2BA13C;
  v31[4] = v37;
  v31[5] = &v54;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1CF2BA170;
  *(v32 + 24) = v31;
  v52 = sub_1CF1C0B54;
  v53 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1CEFFD02C;
  v51 = &block_descriptor_4732;
  v33 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v4, v33);
  _Block_release(v33);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if (v33)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v54)
  {
    if ((v55 & 1) == 0)
    {

      v34 = v44;
      v35 = fpfs_adopt_log();

      return v47(0);
    }

    goto LABEL_11;
  }

LABEL_12:
  swift_willThrow();

  result = fpfs_adopt_log();
  __break(1u);
  return result;
}

void sub_1CF88597C()
{
  v0 = sub_1CF96AA40(0x8000000000000020);
  v2 = v1;
  sub_1CF8367C8(v0, v1, 0x74726F706D696572, 0xED0000736D657449);
  v2, v3, v4, v5, v6, v7, v8, v9;
}

double FPDDomainFPFSBackend.reimportItems(below:markItemDataless:completionHandler:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  *(v10 + 32) = a1;
  *(v10 + 40) = v4;
  *(v10 + 48) = a2;
  swift_retain_n();
  v11 = a1;
  v12 = v4;
  sub_1CEFD4024("reimportItems(below:markItemDataless:completionHandler:)", 56, 2, sub_1CF90324C, v9, sub_1CF8F0F98, v10);

  return result;
}

double sub_1CF885AE4(uint64_t a1, void (*a2)(id), uint64_t a3, void *a4, void *a5, int a6)
{
  LODWORD(v175) = a6;
  v163 = sub_1CF9E63D8();
  v162 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v161 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v172 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v179 = &v159 - v15;
  v16 = sub_1CF9E6068();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v167 = &v159 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v165 = &v159 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v176 = &v159 - v22;
  v166 = type metadata accessor for Signpost(0);
  v168 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v171 = &v159 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v169 = v26;
  v170 = (&v159 - v25);
  MEMORY[0x1EEE9AC00](v27);
  v177 = &v159 - v28;
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  v30[2] = a2;
  v30[3] = a3;
  v30[4] = v29;
  v178 = v29;

  v174 = a3;

  v173 = a4;
  v31 = [a4 identifier];
  v32 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v34 = v33;
  v35 = sub_1CF4C4044(0x2F73662F70665F5FLL, 0xE800000000000000, v32, v33);
  v34, v36, v37, v38, v39, v40, v41, v42;
  if (v35)
  {
    v160 = a2;
    v43 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v45 = v44;
    v46 = sub_1CF025150(0x80007uLL, v43, v44);
    v48 = v47;
    v49 = a1;
    v50 = a5;
    v52 = v51;
    v164 = v17;
    v53 = v16;
    v54 = v30;
    v56 = v55;
    v45, v47, v51, v55, v57, v58, v59, v60;
    v61 = v52;
    a5 = v50;
    a1 = v49;
    v62 = MEMORY[0x1D3868C10](v46, v48, v61, v56);
    v64 = v63;
    v65 = v56;
    v30 = v54;
    v16 = v53;
    v17 = v164;
    v65, v63, v66, v67, v68, v69, v70, v71;
    VFSItemID.init(parsing:)(v62, v64, &aBlock, v72, v73, v74, v75, v76, v77);

    if (BYTE8(aBlock) != 255)
    {
      v78 = [v173 identifier];
      v79 = FPItemNotFoundError();

      if (v79)
      {
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        v81 = v160;
        if (Strong)
        {
          v82 = Strong;
          v83 = v174;

          v84 = v79;
          sub_1CF77A9C8(v84, 0, v82, v81, v83);
        }

        else
        {
          v157 = v79;
          v158 = FPDomainUnavailableError();
          (v81)();
        }
      }

      else
      {
        v160(0);
      }

      return result;
    }
  }

  else
  {
  }

  v86 = *(a1 + 16);
  v87 = swift_allocObject();
  v88 = v173;
  *(v87 + 16) = v173;
  *(v87 + 24) = a5;
  *(v87 + 32) = v175 & 1;
  *(v87 + 40) = a1;
  *(v87 + 48) = sub_1CF902EC0;
  v175 = v87;
  *(v87 + 56) = v30;
  v89 = swift_allocObject();
  *(v89 + 16) = sub_1CF902EC0;
  *(v89 + 24) = v30;
  v178 = v89;
  v174 = v86;
  v164 = v30;
  swift_retain_n();
  v90 = v88;
  v91 = a5;

  v173 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v92 = qword_1EDEBBE40;
  v93 = v176;
  (v17[7])(v176, 1, 1, v16);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v94 = sub_1CF9E7988();
  v96 = v95;
  MEMORY[0x1D3868CC0](v94);
  v96, v97, v98, v99, v100, v101, v102, v103;
  v104 = aBlock;
  v105 = v165;
  sub_1CEFCCBDC(v93, v165, &unk_1EC4BED20, &unk_1CFA00700);
  v106 = v17[6];
  v107 = v106(v105, 1, v16);
  v108 = v167;
  if (v107 == 1)
  {
    v109 = v92;
    sub_1CF9E6048();
    if (v106(v105, 1, v16) != 1)
    {
      sub_1CEFCCC44(v105, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (v17[4])(v167, v105, v16);
  }

  v110 = v17[2];
  v111 = v17;
  v112 = v177;
  v110(v177, v108, v16);
  v113 = v166;
  *(v112 + *(v166 + 20)) = v92;
  v114 = v112 + *(v113 + 24);
  *v114 = "DB queue wait";
  *(v114 + 8) = 13;
  *(v114 + 16) = 2;
  v115 = v92;
  v116 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_1CF9FA450;
  *(v117 + 56) = MEMORY[0x1E69E6158];
  *(v117 + 64) = sub_1CEFD51C4();
  *(v117 + 32) = v104;
  sub_1CF9E6028(v116, &dword_1CEFC7000, v115, "DB queue wait", 13, 2, v112, "%s", 2);
  v117, v118, v119, v120, v121, v122, v123, v124;
  (v111[1])(v108, v16);
  sub_1CEFCCC44(v176, &unk_1EC4BED20, &unk_1CFA00700);
  v167 = *(v174 + 168);
  v176 = *(v174 + 64);
  v165 = sub_1CF9E6448();
  v166 = *(v165 - 8);
  (*(v166 + 56))(v179, 1, 1, v165);
  v125 = v170;
  sub_1CEFDA34C(v112, v170, type metadata accessor for Signpost);
  v126 = (*(v168 + 80) + 16) & ~*(v168 + 80);
  v127 = (v169 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
  v128 = swift_allocObject();
  sub_1CEFDA0C4(v125, v128 + v126, type metadata accessor for Signpost);
  v129 = (v128 + v127);
  v170 = sub_1CF5543A4;
  v130 = v178;
  *v129 = sub_1CF5543A4;
  v129[1] = v130;
  v131 = v171;
  sub_1CEFDA34C(v112, v171, type metadata accessor for Signpost);
  v132 = (v127 + 23) & 0xFFFFFFFFFFFFFFF8;
  v133 = (v132 + 15) & 0xFFFFFFFFFFFFFFF8;
  v134 = (v133 + 25) & 0xFFFFFFFFFFFFFFF8;
  v135 = swift_allocObject();
  sub_1CEFDA0C4(v131, v135 + v126, type metadata accessor for Signpost);
  v136 = (v135 + v127);
  *v136 = sub_1CF045408;
  v136[1] = 0;
  *(v135 + v132) = v174;
  v137 = v165;
  v138 = v135 + v133;
  v139 = v166;
  *v138 = "reimportItems(below:markItemDataless:completionHandler:)";
  *(v138 + 8) = 56;
  *(v138 + 16) = 2;
  v140 = (v135 + v134);
  v141 = v178;
  *v140 = v170;
  v140[1] = v141;
  v142 = (v135 + ((v134 + 23) & 0xFFFFFFFFFFFFFFF8));
  v143 = v175;
  *v142 = sub_1CF8FEC54;
  v142[1] = v143;
  v144 = swift_allocObject();
  v144[2] = sub_1CF903308;
  v144[3] = v128;
  v145 = v167;
  v144[4] = v167;
  swift_retain_n();

  v174 = v128;

  v146 = fpfs_current_log();
  v147 = *(v145 + 2);
  v148 = v172;
  sub_1CEFCCBDC(v179, v172, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v139 + 48))(v148, 1, v137) == 1)
  {
    sub_1CEFCCC44(v148, &unk_1EC4BE370, qword_1CFA01B30);
    v149 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v150 = v161;
    sub_1CF9E6438();
    (*(v139 + 8))(v148, v137);
    v149 = sub_1CF9E63C8();
    (*(v162 + 8))(v150, v163);
  }

  v151 = swift_allocObject();
  v151[2] = v146;
  v151[3] = sub_1CF4858EC;
  v151[4] = v135;
  v183 = sub_1CF2BA17C;
  v184 = v151;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v181 = sub_1CEFCA444;
  v182 = &block_descriptor_4693;
  v152 = _Block_copy(&aBlock);
  v153 = v146;

  v183 = sub_1CF2BA180;
  v184 = v144;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v181 = sub_1CEFCA444;
  v182 = &block_descriptor_4696;
  v154 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v147, v176, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v149, v152, v154);
  _Block_release(v154);
  _Block_release(v152);

  sub_1CEFCCC44(v179, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v177, type metadata accessor for Signpost);
  v155 = v173;
  v156 = fpfs_adopt_log();

  return result;
}

void sub_1CF88690C(void *a1, void *a2, uint64_t a3, int a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v8 = v7;
  v79 = a3;
  v80 = a7;
  v77 = a5;
  v78 = a6;
  v76 = a4;
  v74 = a1;
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v82 = v10;
  v83 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v70 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v70 - v17;
  v19 = [objc_allocWithZone(FPLoggerScope) init];
  v20 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v21 = v19;
  v22 = a2;
  v23 = sub_1CF9E6108();
  LODWORD(v19) = sub_1CF9E72A8();

  v73 = v19;
  v24 = os_log_type_enabled(v23, v19);
  v75 = v21;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v72 = v7;
    v26 = v25;
    v27 = swift_slowAlloc();
    v70 = v27;
    v71 = swift_slowAlloc();
    v84 = v71;
    *v26 = 138412546;
    v28 = [v21 enter];
    *(v26 + 4) = v28;
    *v27 = v28;
    *(v26 + 12) = 2080;
    v29 = v23;
    v30 = [v22 identifier];
    v31 = NSFileProviderItemIdentifier.description.getter(v30);
    v32 = v22;
    v33 = v15;
    v35 = v34;

    v36 = v31;
    v37 = v82;
    v38 = sub_1CEFD0DF0(v36, v35, &v84);
    v39 = v35;
    v15 = v33;
    v22 = v32;
    v40 = v83;
    v39, v41, v42, v43, v44, v45, v46, v47;
    *(v26 + 14) = v38;
    _os_log_impl(&dword_1CEFC7000, v29, v73, "%@ 🚚  reimporting below %s", v26, 0x16u);
    v48 = v70;
    sub_1CEFCCC44(v70, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v48, -1, -1);
    v49 = v71;
    __swift_destroy_boxed_opaque_existential_1(v71);
    MEMORY[0x1D386CDC0](v49, -1, -1);
    v50 = v26;
    v8 = v72;
    MEMORY[0x1D386CDC0](v50, -1, -1);

    v51 = *(v40 + 8);
    v51(v18, v37);
  }

  else
  {

    v51 = *(v83 + 8);
    v51(v18, v82);
  }

  v52 = v74[3];
  v53 = v74[4];
  v54 = __swift_project_boxed_opaque_existential_1(v74, v52);
  v55 = [v22 identifier];
  sub_1CF8845F4(v55, v76 & 1, v77, v54, v78, v80, v52, v53);
  if (v8)
  {

    v56 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v57 = v75;
    v58 = sub_1CF9E6108();
    v59 = sub_1CF9E72A8();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v60 = 138412290;
      v62 = [v57 leave];
      *(v60 + 4) = v62;
      *v61 = v62;
      _os_log_impl(&dword_1CEFC7000, v58, v59, "%@", v60, 0xCu);
      sub_1CEFCCC44(v61, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v61, -1, -1);
      MEMORY[0x1D386CDC0](v60, -1, -1);
    }

    v63 = v81;
  }

  else
  {

    v64 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v57 = v75;
    v65 = sub_1CF9E6108();
    v66 = sub_1CF9E72A8();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v67 = 138412290;
      v69 = [v57 leave];
      *(v67 + 4) = v69;
      *v68 = v69;
      _os_log_impl(&dword_1CEFC7000, v65, v66, "%@", v67, 0xCu);
      sub_1CEFCCC44(v68, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v68, -1, -1);
      MEMORY[0x1D386CDC0](v67, -1, -1);
    }

    v63 = v15;
  }

  v51(v63, v82);
}

double FPDDomainFPFSBackend.importProgress(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v11 = sub_1CF9E6108();
  v12 = sub_1CF9E7298();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1CEFC7000, v11, v12, "gathering import progress", v13, 2u);
    MEMORY[0x1D386CDC0](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v14 = dispatch_group_create();
  v15 = [objc_allocWithZone(MEMORY[0x1E6967378]) init];
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = v14;
  v17[6] = v3;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1CF90325C;
  *(v18 + 24) = v16;
  swift_retain_n();
  v19 = v15;
  v20 = v14;
  v21 = v3;

  sub_1CEFD4024("importProgress(completionHandler:)", 34, 2, sub_1CF903280, v18, sub_1CF8F0F9C, v17);

  return result;
}

double sub_1CF887288(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = *(a1 + 16);
  v12 = objc_sync_enter(v11);
  if (v12)
  {
    MEMORY[0x1EEE9AC00](v12);
    v24 = v11;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v23, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v13 = *&v11[qword_1EDEADB40];
  v14 = objc_sync_exit(v11);
  if (v14)
  {
    MEMORY[0x1EEE9AC00](v14);
    v24 = v11;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v23, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v15 = [v13 dasContext];

  [a2 setXpcActivityDasdContext_];
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v17 = swift_allocObject();
  v17[2] = v11;
  v17[3] = a2;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a3;
  v17[7] = a4;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1CF90325C;
  *(v18 + 24) = v16;
  swift_retain_n();

  v19 = a2;
  v20 = a5;
  v21 = a6;

  sub_1CF7AAF88("importProgress(completionHandler:)", 34, 2, 2, sub_1CF9034C4, v18, sub_1CF8FEB48, v17);

  return result;
}

void sub_1CF8874D8(void *a1, char *a2, void *a3, void *a4, char *a5, uint64_t a6, uint64_t a7)
{
  v257 = a7;
  v256 = a6;
  v268 = a5;
  v265 = a4;
  v276 = a3;
  v275 = a1;
  v9 = sub_1CF9E63A8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v251 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E6448();
  v259 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v258 = v251 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = sub_1CF9E5CF8();
  v270 = *(v264 - 8);
  MEMORY[0x1EEE9AC00](v264);
  v263 = v251 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v266 = v251 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v269 = v251 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v267 = v251 - v21;
  v22 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v251 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1CF9E5268();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v272 = v251 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = objc_sync_enter(a2);
  if (v28)
  {
    goto LABEL_131;
  }

  v29 = a2;
  v30 = a2[qword_1EDEADAA8];
  v274 = v29;
  v31 = objc_sync_exit(v29);
  if (v31)
  {
    goto LABEL_144;
  }

  v262 = v10;
  v261 = v13;
  v260 = v12;
  v271 = v26;
  if (v30)
  {
    a2 = v274;
    v28 = objc_sync_enter(v274);
    if (v28)
    {
LABEL_131:
      MEMORY[0x1EEE9AC00](v28);
      v249 = &v251[-4];
      v251[-2] = a2;
      goto LABEL_132;
    }

    v32 = *&a2[qword_1EDEADB40];
    v33 = objc_sync_exit(a2);
    if (v33)
    {
      MEMORY[0x1EEE9AC00](v33);
      v250 = &v251[-4];
      v251[-2] = a2;
      goto LABEL_134;
    }

    sub_1CF961730(sub_1CF889268, 0);
    v35 = v34;
    v37 = v36;

    if (v37)
    {
      v38 = 1;
    }

    else
    {
      v38 = v35;
    }
  }

  else
  {
    v38 = 0;
  }

  v39 = v276;
  [v276 setStatus_];
  v40 = v275;
  v41 = v275[3];
  v42 = v275[4];
  __swift_project_boxed_opaque_existential_1(v275, v41);
  v43 = (*(v42 + 24))(sub_1CF889274, 0, v41, v42);
  if (v7)
  {
    return;
  }

  v254 = v24;
  v255 = v25;
  v253 = v9;
  v44 = v43;
  [v44 next];
  v45 = [v44 longAtIndex_];

  [v39 setNumberOfItemsReconciled_];
  v46 = v40[3];
  v47 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v46);
  v48 = (*(v47 + 24))(sub_1CF889290, 0, v46, v47);
  v273 = 0;
  v49 = v48;

  [v49 next];
  v50 = [v49 longAtIndex_];

  [v39 setNumberOfItemsInError_];
  if ([v39 numberOfItemsInError] < 1)
  {
    [v39 setErrorDetails_];
    v55 = v275;
    goto LABEL_59;
  }

  v51 = v275[3];
  v52 = v275[4];
  __swift_project_boxed_opaque_existential_1(v275, v51);
  v53 = v273;
  v54 = (*(v52 + 24))(sub_1CF8894BC, 0, v51, v52);
  v273 = v53;
  if (v53)
  {
LABEL_15:

    return;
  }

  v56 = v54;
  v251[0] = v49;
  v57 = MEMORY[0x1E69E7CC0];
  v280 = MEMORY[0x1E69E7CC0];
  if (![v54 next])
  {
LABEL_58:
    sub_1CEFD57E0(0, &qword_1EC4C5050, 0x1E6967358);
    v108 = v39;
    v109 = sub_1CF9E6D28();
    v57, v110, v111, v112, v113, v114, v115, v116;
    [v108 setErrorDetails_];

    v55 = v275;
    v49 = v251[0];
LABEL_59:
    v117 = v55[3];
    v118 = v55[4];
    __swift_project_boxed_opaque_existential_1(v55, v117);
    v119 = v273;
    sub_1CF2509E4(v117, v118, v284);
    if (v119)
    {
      goto LABEL_15;
    }

    if (v284[2])
    {
      v120 = v284[0];
      sub_1CEFCCC44(v284, &qword_1EC4BEA68, &qword_1CF9FF910);
    }

    else
    {
      v120 = -1;
    }

    v121 = v276;
    [v276 setDbCreationTimestamp_];
    v122 = *&v274[qword_1EDEBBCD0];
    v123 = *(v274 + 5);
    if (v122 == *(*(*(v123 + 16) + 88) + 24))
    {
      [v121 setStateOfUploadJobs_];
    }

    else
    {
      [v276 setStateOfUploadJobs_];
    }

    v124 = *&v274[qword_1EDEBBCA8];
    if (v124 == *(*(*(v123 + 16) + 104) + 24))
    {
      [v276 setStateOfDownloadJobs_];
    }

    else
    {
      [v276 setStateOfDownloadJobs_];
    }

    v125 = v55[3];
    v126 = v55[4];
    __swift_project_boxed_opaque_existential_1(v55, v125);
    v127 = (*(v126 + 24))(sub_1CF8896E8, 0, v125, v126);

    v128 = [v127 longAtIndex_];
    v129 = v276;
    [v276 setLatestFolderSelectedForImport_];
    [v129 setLatestFolderSelectedForImportTimestamp_];
    [v129 setLatestFolderSelectedForImportState_];
    [v129 setLatestFolderSelectedForImportWasModifiedOnDisk_];
    [v129 setLatestFolderSelectedForImportWasModifiedRemotely_];
    v130 = sub_1CEFEBAE8(5);

    [v129 setLatestFolderSelectedForImportIsMonitored_];
    v131 = v55[3];
    v132 = v55[4];
    __swift_project_boxed_opaque_existential_1(v55, v131);
    v133 = (*(v132 + 24))(sub_1CF889804, 0, v131, v132);
    v273 = 0;
    v134 = v133;

    v135 = &selRef_initWithTarget_;
    if ([v134 next])
    {
      do
      {
        v136 = objc_autoreleasePoolPush();
        v137 = [v134 integerAtIndex_];
        if (v137 <= 4 && ((0x1Du >> v137) & 1) != 0)
        {
          v138 = off_1E83C22E8[v137];
          v139 = [v134 integerAtIndex_];
          v140 = *v138;
          v135 = &selRef_initWithTarget_;
          [v276 v140];
        }

        objc_autoreleasePoolPop(v136);
      }

      while (([v134 v135[219]] & 1) != 0);
    }

    v275 = v134;

    v141 = v274;
    v142 = objc_sync_enter(v274);
    if (v142)
    {
      goto LABEL_139;
    }

    v143 = qword_1EDEADB40;
    v144 = *&v141[qword_1EDEADB40];
    v145 = objc_sync_exit(v141);
    v146 = v265;
    v147 = v264;
    if (!v145)
    {
      v148 = [v144 isRunning];

      [v276 setXpcActivityIsActive_];
      v142 = objc_sync_enter(v141);
      if (v142)
      {
        goto LABEL_139;
      }

      v149 = *&v141[v143];
      v145 = objc_sync_exit(v141);
      if (!v145)
      {
        v150 = [v149 isRegistered];

        [v276 setXpcActivityRegisteredWithDuet_];
        v142 = objc_sync_enter(v141);
        if (!v142)
        {
          v151 = *&v141[v143];
          v31 = objc_sync_exit(v141);
          if (v31)
          {
            goto LABEL_144;
          }

          v152 = [v151 lastRegistrationDate];

          if (v152)
          {
            sub_1CF9E5CB8();

            v153 = v269;
            sub_1CF9E5CC8();
            sub_1CF9E5C28();
            v155 = v154;
            v156 = v154;
            a2 = (v270 + 8);
            v157 = *(v270 + 8);
            v28 = v157(v153, v147);
            if ((*&v156 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              __break(1u);
            }

            else if (v155 > -9.22337204e18)
            {
              if (v155 >= 9.22337204e18)
              {
LABEL_123:
                __break(1u);
                goto LABEL_124;
              }

              [v276 setXpcActivityTimeSinceLastRegistration_];
              v157(v267, v147);
              goto LABEL_88;
            }

            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

LABEL_88:
          a2 = v274;
          v28 = objc_sync_enter(v274);
          if (v28)
          {
            goto LABEL_131;
          }

          v158 = *&a2[v143];
          v159 = a2;
          v160 = v158;
          v31 = objc_sync_exit(v159);
          if (!v31)
          {
            v161 = [v160 lastTriggerDate];

            if (!v161)
            {
              goto LABEL_95;
            }

            sub_1CF9E5CB8();

            v162 = v269;
            sub_1CF9E5CC8();
            sub_1CF9E5C28();
            v164 = v163;
            v165 = v163;
            a2 = (v270 + 8);
            v166 = *(v270 + 8);
            v28 = v166(v162, v147);
            if ((*&v165 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v164 > -9.22337204e18)
              {
                if (v164 < 9.22337204e18)
                {
                  [v276 setXpcActivityTimeSinceLastActivation_];
                  v166(v266, v147);
LABEL_95:
                  v167 = v276;
                  if ([v276 xpcActivityIsActive])
                  {
                    [v167 setXpcActivityTimeSinceLastAbleToRun_];
                    goto LABEL_106;
                  }

                  a2 = v274;
                  v28 = objc_sync_enter(v274);
                  if (v28)
                  {
                    goto LABEL_131;
                  }

                  v178 = *&a2[v143];
                  v179 = a2;
                  v180 = v178;
                  v31 = objc_sync_exit(v179);
                  if (!v31)
                  {
                    v181 = [v180 lastDeferralDate];

                    v167 = v276;
                    if (!v181)
                    {
                      goto LABEL_106;
                    }

                    sub_1CF9E5CB8();

                    v182 = v269;
                    sub_1CF9E5CC8();
                    sub_1CF9E5C28();
                    v184 = v183;
                    a2 = *(v270 + 8);
                    v28 = (a2)(v182, v147);
                    v185 = v184 / 60.0;
                    if (COERCE__INT64(fabs(v184 / 60.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                    {
                      if (v185 > -9.22337204e18)
                      {
                        if (v185 < 9.22337204e18)
                        {
                          v186 = v276;
                          [v276 setXpcActivityTimeSinceLastAbleToRun_];
                          (a2)(v263, v147);
                          v167 = v186;
LABEL_106:
                          if ([v167 numberOfItemsPendingReconciliation] < 1)
                          {
                            [v167 setItemsPendingReconciliation_];
                          }

                          else
                          {
                            v187 = v55[3];
                            v188 = v55[4];
                            v189 = __swift_project_boxed_opaque_existential_1(v55, v187);
                            v190 = v167;
                            v191 = swift_allocObject();
                            v192 = v268;
                            *(v191 + 16) = v146;
                            *(v191 + 24) = v192;
                            v193 = v146;
                            v194 = v192;
                            v195 = v273;
                            sub_1CF256970(v190, v189, sub_1CF8FEBF0, v191, v187, v188);
                            v273 = v195;
                            if (v195)
                            {
                              goto LABEL_116;
                            }

                            v167 = v190;
                          }

                          if ([v167 numberOfItemsPendingScanningDisk] < 1)
                          {
                            [v167 setItemsPendingScanningDisk_];
LABEL_114:
                            if ([v167 numberOfItemsPendingScanningProvider] < 1)
                            {
                              [v167 setItemsPendingScanningProvider_];
                              v215 = v167;
                              v212 = v268;
                            }

                            else
                            {
                              v205 = v55[3];
                              v206 = v55[4];
                              v207 = __swift_project_boxed_opaque_existential_1(v55, v205);
                              v208 = v167;
                              v209 = swift_allocObject();
                              v210 = v268;
                              *(v209 + 16) = v146;
                              *(v209 + 24) = v210;
                              v211 = v146;
                              v212 = v210;
                              v213 = v210;
                              v214 = v273;
                              sub_1CF258EE8(v208, v207, sub_1CF8FEB80, v209, v205, v206);
                              v273 = v214;
                              if (v214)
                              {
                                goto LABEL_116;
                              }

                              v215 = v276;
                            }

                            v216 = *&v212[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
                            v217 = swift_allocObject();
                            v217[2] = v256;
                            v217[3] = v257;
                            v217[4] = v215;

                            v218 = v215;
                            v219 = fpfs_current_log();
                            v276 = fpfs_adopt_log();
                            v220 = swift_allocObject();
                            aBlock = sub_1CF9E73C8();
                            v282 = v221;
                            MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
                            v222 = sub_1CF9E7988();
                            v224 = v223;
                            MEMORY[0x1D3868CC0](v222);
                            v224, v225, v226, v227, v228, v229, v230, v231;
                            v232 = v282;
                            sub_1CF9E6978();
                            v232, v233, v234, v235, v236, v237, v238, v239;
                            v240 = __fp_log_fork();

                            *(v220 + 16) = v240;
                            v241 = swift_allocObject();
                            *(v241 + 16) = v219;
                            *(v241 + 24) = v220;
                            *(v241 + 32) = v216;
                            *(v241 + 40) = "importProgress(completionHandler:)";
                            *(v241 + 48) = 34;
                            *(v241 + 56) = 2;
                            *(v241 + 64) = sub_1CF8FEB74;
                            *(v241 + 72) = v217;
                            v283[2] = sub_1CF2B9F54;
                            v283[3] = v241;
                            aBlock = MEMORY[0x1E69E9820];
                            v282 = 1107296256;
                            v283[0] = sub_1CEFCA444;
                            v283[1] = &block_descriptor_4642;
                            v242 = _Block_copy(&aBlock);
                            v274 = v219;

                            v243 = v216;

                            v244 = v258;
                            sub_1CF9E63F8();
                            v278 = MEMORY[0x1E69E7CC0];
                            sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
                            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
                            sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
                            v245 = v260;
                            v246 = v253;
                            sub_1CF9E77B8();
                            sub_1CF9E7308();
                            _Block_release(v242);
                            (*(v262 + 8))(v245, v246);
                            (*(v259 + 8))(v244, v261);

                            v247 = v276;
                            v248 = fpfs_adopt_log();

                            return;
                          }

                          v196 = v55[3];
                          v197 = v55[4];
                          v198 = __swift_project_boxed_opaque_existential_1(v55, v196);
                          v199 = v167;
                          v200 = swift_allocObject();
                          v201 = v268;
                          *(v200 + 16) = v146;
                          *(v200 + 24) = v201;
                          v202 = v146;
                          v203 = v201;
                          v204 = v273;
                          sub_1CF25797C(v199, v198, sub_1CF8FEBB8, v200, v196, v197);
                          v273 = v204;
                          if (!v204)
                          {

                            v167 = v199;
                            goto LABEL_114;
                          }

LABEL_116:

                          return;
                        }

                        goto LABEL_128;
                      }

LABEL_127:
                      __break(1u);
LABEL_128:
                      __break(1u);
                      goto LABEL_131;
                    }

LABEL_126:
                    __break(1u);
                    goto LABEL_127;
                  }

                  goto LABEL_144;
                }

LABEL_125:
                __break(1u);
                goto LABEL_126;
              }

LABEL_124:
              __break(1u);
              goto LABEL_125;
            }

            goto LABEL_122;
          }

LABEL_144:
          MEMORY[0x1EEE9AC00](v31);
          v250 = &v251[-4];
          v251[-2] = v274;
LABEL_134:
          fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v250, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
        }

LABEL_139:
        MEMORY[0x1EEE9AC00](v142);
        v249 = &v251[-4];
        v251[-2] = v141;
LABEL_132:
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v249, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }
    }

    MEMORY[0x1EEE9AC00](v145);
    v250 = &v251[-4];
    v251[-2] = v141;
    goto LABEL_134;
  }

  v252 = (v271 + 8);
  v251[1] = *MEMORY[0x1E6967280];
  v251[2] = *MEMORY[0x1E6967258];
  v271 = v56;
  while (1)
  {
    v58 = objc_autoreleasePoolPush();
    v59 = v56;
    v60 = [v59 longAtIndex_];
    if (v60 == 0x8000000000000000)
    {
      v62 = 2;
      v61 = 1;
      goto LABEL_23;
    }

    v61 = v60;
    if (v60)
    {
      break;
    }

    v62 = 2;
LABEL_23:
    v63 = 1;
LABEL_28:

    if ([v59 isNullAtIndex_])
    {
      goto LABEL_31;
    }

    v64 = [v59 dataAtIndex_];
    v65 = sub_1CF9E5B88();
    v67 = v66;

    v68 = v273;
    sub_1CF4C2898(v65, v67);
    v273 = v68;
    if (v68)
    {
      sub_1CEFE4714(v65, v67);
      goto LABEL_98;
    }

    v70 = v69;
    sub_1CEFE4714(v65, v67);
    if (!v70)
    {
LABEL_31:
      sub_1CF9E5198();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      v71 = v272;
      v72 = v255;
      sub_1CF9E57D8();
      v70 = sub_1CF9E50D8();
      (*v252)(v71, v72);
    }

    v73 = [v59 integerAtIndex_];
    if (v61)
    {
      v74 = 0;
    }

    else
    {
      v74 = v63;
    }

    if (v74)
    {
      v75 = v283;
    }

    else
    {
      if (v61 == 1)
      {
        v76 = v63;
      }

      else
      {
        v76 = 0;
      }

      if ((v76 & 1) == 0)
      {
        aBlock = 0x2F73662F70665F5FLL;
        v282 = 0xE800000000000000;
        if (v62)
        {
          if (v62 == 1)
          {
            v277 = v61;
            v278 = 0x284449656C6966;
            v279 = 0xE700000000000000;
            goto LABEL_47;
          }

          if (v61)
          {
            v88 = 0x6873617274;
          }

          else
          {
            v88 = 1953460082;
          }

          if (v61)
          {
            v89 = 0xE500000000000000;
          }

          else
          {
            v89 = 0xE400000000000000;
          }
        }

        else
        {
          v278 = 0x284449636F64;
          v279 = 0xE600000000000000;
          LODWORD(v277) = v61;
LABEL_47:
          v78 = sub_1CF9E7F98();
          v80 = v79;
          MEMORY[0x1D3868CC0](v78);
          v80, v81, v82, v83, v84, v85, v86, v87;
          MEMORY[0x1D3868CC0](41, 0xE100000000000000);
          v88 = v278;
          v89 = v279;
        }

        MEMORY[0x1D3868CC0](v88, v89);
        v89, v90, v91, v92, v93, v94, v95, v96;
        v97 = v282;
        v77 = sub_1CF9E6888();
        v97, v98, v99, v100, v101, v102, v103, v104;
        goto LABEL_55;
      }

      v75 = &v282;
    }

    v77 = *(v75 - 32);
LABEL_55:
    v105 = objc_allocWithZone(MEMORY[0x1E6967358]);
    v106 = sub_1CF9E57E8();
    [v105 initWithItemIdentifier:v77 error:v106 retryCount:v73];

    MEMORY[0x1D3868FA0]();
    if (*((v280 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v280 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CF9E6D88();
    }

    sub_1CF9E6DE8();
    v57 = v280;
    objc_autoreleasePoolPop(v58);
    v107 = [v59 next];
    v39 = v276;
    v56 = v271;
    if ((v107 & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  if ((v60 & 0x8000000000000000) == 0)
  {
    v63 = 0;
    v62 = 1;
    goto LABEL_28;
  }

  v61 = -v60;
  if (!(-v60 >> 32))
  {
    v63 = 0;
    v62 = 0;
    goto LABEL_28;
  }

  sub_1CF9E51B8();
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
  v168 = v272;
  v169 = v255;
  sub_1CF9E57D8();
  v170 = sub_1CF9E50D8();
  (*v252)(v168, v169);
  v273 = v170;
  swift_willThrow();

LABEL_98:
  objc_autoreleasePoolPop(v58);
  v57, v171, v172, v173, v174, v175, v176, v177;
}

uint64_t sub_1CF889290()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000AELL, 0x80000001CFA5E350);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA5E400);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA5E110);
  v20 = sub_1CF9E7F98();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA3D070);
  v30 = sub_1CF9E7F98();
  v32 = v31;
  MEMORY[0x1D3868CC0](v30);
  v32, v33, v34, v35, v36, v37, v38, v39;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA3D070);
  v40 = sub_1CF9E7F98();
  v42 = v41;
  MEMORY[0x1D3868CC0](v40);
  v42, v43, v44, v45, v46, v47, v48, v49;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA3D070);
  v50 = sub_1CF9E7F98();
  v52 = v51;
  MEMORY[0x1D3868CC0](v50);
  v52, v53, v54, v55, v56, v57, v58, v59;
  MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA5E430);
  return 0;
}

uint64_t sub_1CF8894BC()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000C8, 0x80000001CFA5E010);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA5E0E0);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA5E110);
  v20 = sub_1CF9E7F98();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA3D070);
  v30 = sub_1CF9E7F98();
  v32 = v31;
  MEMORY[0x1D3868CC0](v30);
  v32, v33, v34, v35, v36, v37, v38, v39;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA3D070);
  v40 = sub_1CF9E7F98();
  v42 = v41;
  MEMORY[0x1D3868CC0](v40);
  v42, v43, v44, v45, v46, v47, v48, v49;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA3D070);
  v50 = sub_1CF9E7F98();
  v52 = v51;
  MEMORY[0x1D3868CC0](v50);
  v52, v53, v54, v55, v56, v57, v58, v59;
  MEMORY[0x1D3868CC0](0xD000000000000047, 0x80000001CFA5E130);
  return 0;
}

uint64_t sub_1CF8896E8()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000B8, 0x80000001CFA5E230);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA5E2F0);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD00000000000002BLL, 0x80000001CFA5E320);
  return 0;
}

uint64_t sub_1CF889804()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000071, 0x80000001CFA5E180);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA3B140);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA3B140);
  v20 = sub_1CF9E7F98();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA3B140);
  v30 = sub_1CF9E7F98();
  v32 = v31;
  MEMORY[0x1D3868CC0](v30);
  v32, v33, v34, v35, v36, v37, v38, v39;
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA5E200);
  return 0;
}

void sub_1CF88999C(unint64_t a1, int a2, id a3, NSObject *a4)
{
  v6 = a1;
  if (!a1)
  {
    goto LABEL_10;
  }

  if (a1 >> 62)
  {
    if (sub_1CF9E7818())
    {
      goto LABEL_4;
    }

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1D3869C30](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v7 = *(v6 + 32);
  }

  v6 = v7;
LABEL_10:
  [a3 setDiagnosticAttributes_];

  dispatch_group_leave(a4);
}

void sub_1CF889A58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      v7 = [objc_allocWithZone(MEMORY[0x1E69674D0]) initWithFileID_];
    }

    else
    {
      if (v6)
      {
        if (qword_1EDEA3498 != -1)
        {
          swift_once();
        }

        v8 = qword_1EDEA34A0;
      }

      else
      {
        if (qword_1EDEA34B0 != -1)
        {
          swift_once();
        }

        v8 = qword_1EDEA34B8;
      }

      v7 = [objc_allocWithZone(MEMORY[0x1E69674D0]) initWithItemID_];
    }
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E69674D0]) initWithDocID_];
  }

  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1CFA00250;
  *(v10 + 32) = v9;
  sub_1CEFD57E0(0, &qword_1EC4C4C10, 0x1E69674D0);
  v11 = v9;
  v12 = sub_1CF9E6D28();
  v10, v13, v14, v15, v16, v17, v18, v19;
  v21[4] = a2;
  v21[5] = a3;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_1CF8BE8C4;
  v21[3] = &block_descriptor_3205;
  v20 = _Block_copy(v21);

  [v3 getDiagnosticAttributesForItems:v12 completionHandler:v20];

  _Block_release(v20);
}

void sub_1CF889C80(unint64_t a1, void *a2, void *a3, NSObject *a4, const char *a5)
{
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v29 = a3;
    v15 = a2;
    v16 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v17 = a2;
    v18 = sub_1CF9E6108();
    v19 = sub_1CF9E72A8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v28 = a4;
      v21 = v20;
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = a2;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_1CEFC7000, v18, v19, a5, v21, 0xCu);
      sub_1CEFCCC44(v22, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v22, -1, -1);
      v25 = v21;
      a4 = v28;
      MEMORY[0x1D386CDC0](v25, -1, -1);
    }

    else
    {
    }

    (*(v11 + 8))(v14, v10);
    a3 = v29;
  }

  if (!a1)
  {
    goto LABEL_14;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_14:
    v27 = 0;
    goto LABEL_15;
  }

  if (!sub_1CF9E7818())
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1D3869C30](0, a1, v12);
    goto LABEL_12;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(a1 + 32);
LABEL_12:
    v27 = v26;
LABEL_15:
    [a3 setDiagnosticAttributes_];

    dispatch_group_leave(a4);
    return;
  }

  __break(1u);
}

uint64_t sub_1CF889F00(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v10 = sub_1CF9E6108();
  v11 = sub_1CF9E7298();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1CEFC7000, v10, v11, "finished gathering import progress", v12, 2u);
    MEMORY[0x1D386CDC0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return a1(a3, 0);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FPDDomainFPFSBackend.createIndexer(with:enabled:)(FPDDomainIndexer *__return_ptr retstr, FPDExtension *with, Swift::Bool enabled)
{
  v4 = fpfs_supports_indexAllRemoteItems();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = type metadata accessor for FPFSIndexer(0);
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_enumerator] = 0;
    v9 = OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_lastIndexedAnchor;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
    (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
    *&v8[OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_spotlightIndexer] = 0;
    v11 = [v6 provider];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 asAppExtensionBackedProvider];

      v14.receiver = v8;
      v14.super_class = v7;
      [(FPDDomainIndexer *)&v14 initWithExtension:v13 domain:v6 enabled:enabled supportingIndexAll:v4];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void FPDDomainFPFSBackend.values(forAttributes:for:request:completionHandler:)(unint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v30 = a1;
  v31 = a5;
  v37 = a4;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
  v36 = swift_allocBox();
  v13 = v12;
  v14 = *(v11 + 48);
  v15 = *(v9 + 16);
  v33 = a2;
  v34 = v8;
  v15(v12, a2, v8);
  *(v13 + v14) = a3;
  v16 = swift_allocObject();
  v17 = v30;
  v18 = v31;
  v16[2] = v37;
  v16[3] = v18;
  v16[4] = v17;
  v32 = *&v5[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v37 = v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  v20 = a3;

  if (Strong)
  {
    v31 = [Strong log];
  }

  else
  {
    v31 = 0;
  }

  v21 = v35;
  v30 = v36 | 0x9000000000000002;
  v22 = v34;
  v15(v35, v33, v34);
  v23 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v24 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v37;
  *(v25 + 16) = v37;
  (*(v9 + 32))(v25 + v23, v21, v22);
  *(v25 + v24) = v30;
  v27 = v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v27 = sub_1CF8F0FB4;
  *(v27 + 8) = v16;
  *(v27 + 16) = 1;
  v28 = v26;

  v29 = v31;
  sub_1CF01001C(v31, "item(for:userRequest:hideIgnoredDescendents:tryOptimizeResponsiveness:completionHandler:)", 89, 2, sub_1CF902D80, v25);
}

void sub_1CF88A568(void *a1, char a2, void (*a3)(void, void *, __n128), uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ItemMetadata(0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = a1;
LABEL_7:
    a3(0, v13, v10);
    return;
  }

  if (!a1)
  {
    v13 = 0;
    goto LABEL_7;
  }

  if ([a1 isExcludedFromSync])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5038, &qword_1CFA181D8);
    inited = swift_initStackObject();
    v15 = *MEMORY[0x1E695DBD8];
    *(inited + 32) = *MEMORY[0x1E695DBD8];
    *(inited + 16) = xmmword_1CF9FA440;
    v16 = MEMORY[0x1E69E6370];
    *(inited + 40) = 0;
    v17 = *MEMORY[0x1E695DCC0];
    *(inited + 64) = v16;
    *(inited + 72) = v17;
    *(inited + 104) = v16;
    *(inited + 80) = 1;
    v18 = v15;
    v19 = v17;
    v20 = sub_1CF4E45D8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5040, &unk_1CFA181E0);
    swift_arrayDestroy();
    (a3)(v20, 0);
    v28 = v20;
  }

  else
  {
    type metadata accessor for URLResourceKey(0);
    v29 = sub_1CF9E6D28();
    v30 = FPDictFromVendorItem();

    if (v30)
    {
      sub_1CEFCCCA4(&qword_1EDEA3660, type metadata accessor for URLResourceKey, &unk_1CF9F5F44);
      v32 = sub_1CF9E6638();
    }

    else
    {
      v32 = 0;
    }

    v33 = *MEMORY[0x1E695DBD8];
    *&v54 = *MEMORY[0x1E695DBD8];
    MEMORY[0x1EEE9AC00](v31);
    *(&v51 - 2) = &v54;
    v34 = sub_1CF7F75A8(sub_1CF0185BC, (&v51 - 4), a5);
    if ((v34 & 1) != 0 && v32)
    {
      v55 = MEMORY[0x1E69E6370];
      LOBYTE(v54) = 1;
      sub_1CEFE9EB8(&v54, v53);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v32;
      v34 = sub_1CF1D3E8C(v53, v33, isUniquelyReferenced_nonNull_native);
      v32 = v52;
    }

    v36 = *MEMORY[0x1E695DCA8];
    *&v54 = *MEMORY[0x1E695DCA8];
    MEMORY[0x1EEE9AC00](v34);
    *(&v51 - 2) = &v54;
    if (sub_1CF7F75A8(sub_1CF902E18, (&v51 - 4), a5))
    {
      sub_1CEFF54BC(v12);
      v37 = *v12;
      sub_1CEFD5338(v12, type metadata accessor for ItemMetadata);
      if ((v37 - 1) >= 2)
      {
        if (v32)
        {
          v38 = [a1 conflictingVersions];
          if (v38)
          {
            v39 = v38;
            sub_1CEFD57E0(0, &unk_1EDEAB5A0, 0x1E69674E8);
            v40 = sub_1CF9E6D48();

            if (v40 >> 62)
            {
              v48 = sub_1CF9E7818();
            }

            else
            {
              v48 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v40, v41, v42, v43, v44, v45, v46, v47;
            v49 = v48 != 0;
          }

          else
          {
            v49 = 0;
          }

          v55 = MEMORY[0x1E69E6370];
          LOBYTE(v54) = v49;
          sub_1CEFE9EB8(&v54, v53);
          v50 = swift_isUniquelyReferenced_nonNull_native();
          v52 = v32;
          sub_1CF1D3E8C(v53, v36, v50);
          v32 = v52;
        }
      }
    }

    (a3)(v32, 0);
    v28 = v32;
  }

  v28, v21, v22, v23, v24, v25, v26, v27;
}

void sub_1CF88AB48(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    type metadata accessor for URLResourceKey(0);
    sub_1CEFCCCA4(&qword_1EDEA3660, type metadata accessor for URLResourceKey, &unk_1CF9F5F44);
    v5 = sub_1CF9E6618();
  }

  if (a2)
  {
    v6 = sub_1CF9E57E8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

double sub_1CF88AC2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF8FEA24;
  *(v10 + 24) = v8;
  swift_retain_n();
  v11 = a4;

  sub_1CF7AAF88("isItemDataless(for:completion:)", 31, 2, 2, sub_1CF9034B8, v10, sub_1CF8FEA2C, v9);

  return result;
}

void sub_1CF88AD68(void (*a1)(void, id))
{
  v2 = FPUserCancelledError();
  a1(0, v2);
}

void sub_1CF88ADC8(void *a1, void *a2, uint64_t a3, void (*a4)(void, id), uint64_t a5)
{
  v37 = a5;
  v38 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v35 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = a1[3];
  v15 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, v14);
  v36 = a2;
  sub_1CEFD4E9C([a2 identifier]);
  v17 = *(a3 + 16);
  v18 = v44;
  sub_1CF554678(v17, 0, v16, v14, v15, &v41);

  if (!v18)
  {
    v44 = v11;
    v34 = v13;
    v19 = v41;
    v20 = v42;
    if (v43)
    {
      sub_1CEFD0994(v41, v42, 1);
      v21 = [v36 identifier];
      found = FPItemNotFoundError();
LABEL_4:
      v23 = found;

      v38(0, v23);
      return;
    }

    v24 = a1[3];
    v25 = a1[4];
    v26 = __swift_project_boxed_opaque_existential_1(a1, v24);
    v27 = *(v17 + 32);
    v39 = v19;
    v40 = v20;
    v28 = *(*v27 + 240);

    v28(&v39, 1, v26, v24, v25);

    v29 = v44;
    if ((*(v35 + 48))(v10, 1, v44) == 1)
    {
      sub_1CEFCCC44(v10, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v21 = [v36 identifier];
      found = FPItemNotFoundError();
      goto LABEL_4;
    }

    v30 = v34;
    sub_1CEFE55D0(v10, v34, &unk_1EC4BE360, &qword_1CF9FE650);
    v31 = v30 + *(v29 + 48);
    v32 = type metadata accessor for ItemMetadata(0);
    v38(*(v31 + *(v32 + 80)), 0);
    sub_1CEFCCC44(v30, &unk_1EC4BE360, &qword_1CF9FE650);
  }
}

uint64_t sub_1CF88B118(uint64_t a1, void (*a2)(char *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_1CF9E5A58();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  a2(v5);
  return sub_1CEFCCC44(v5, &unk_1EC4BE310, qword_1CF9FCBE0);
}

double sub_1CF88B200(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF8FEA4C;
  *(v10 + 24) = v8;
  swift_retain_n();
  v11 = a4;

  sub_1CF7AAF88("materializedURL(for:completion:)", 32, 2, 2, sub_1CF9034B8, v10, sub_1CF8FEA54, v9);

  return result;
}

uint64_t sub_1CF88B33C(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  v5 = sub_1CF9E5A58();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  a1(v4);
  return sub_1CEFCCC44(v4, &unk_1EC4BE310, qword_1CF9FCBE0);
}

void sub_1CF88B424(void *a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v104 = a4;
  v105 = a5;
  v8 = sub_1CF9E6388();
  v98 = *(v8 - 8);
  v99 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v97 = (&v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v95 = &v79 - v11;
  v96 = sub_1CF9E6498();
  v94 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v93 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v89 = &v79 - v14;
  v15 = sub_1CF9E63D8();
  v86 = *(v15 - 8);
  v87 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E6448();
  v91 = *(v17 - 8);
  v92 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CF9E73D8();
  v84 = *(v19 - 8);
  v85 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v83 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v103 = &v79 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v101 = &v79 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v100 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v79 - v26;
  v28 = a1[3];
  v29 = a1[4];
  v102 = a1;
  v30 = __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1CEFD4E9C([a2 identifier]);
  v31 = *(a3 + 16);
  v32 = v121;
  sub_1CF554678(v31, 0, v30, v28, v29, &v112);

  if (!v32)
  {
    v121 = v31;
    v33 = v101;
    v80 = a3;
    v81 = v27;
    v34 = v112;
    v35 = v113;
    if (v114)
    {
      sub_1CEFD0994(v112, v113, 1);
      v36 = sub_1CF9E5A58();
      v37 = v103;
      (*(*(v36 - 8) + 56))(v103, 1, 1, v36);
      v104(v37);
LABEL_4:
      sub_1CEFCCC44(v37, &unk_1EC4BE310, qword_1CF9FCBE0);
      return;
    }

    v82 = 0;
    v38 = v102[3];
    v79 = v102[4];
    v39 = __swift_project_boxed_opaque_existential_1(v102, v38);
    v40 = *(v121 + 32);
    *&v107[0] = v34;
    BYTE8(v107[0]) = v35;
    v41 = *(*v40 + 240);

    v42 = v33;
    v43 = v39;
    v44 = v82;
    v41(v107, 1, v43, v38, v79);

    v45 = v104;
    v46 = v105;
    v37 = v103;
    if (!v44)
    {
      if ((*(v100 + 48))(v42, 1, v25) == 1)
      {
        sub_1CEFCCC44(v42, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v47 = sub_1CF9E5A58();
        (*(*(v47 - 8) + 56))(v37, 1, 1, v47);
        v45(v37);
        goto LABEL_4;
      }

      v82 = 0;
      v48 = v81;
      sub_1CEFE55D0(v42, v81, &unk_1EC4BE360, &qword_1CF9FE650);
      v49 = *(*(v121 + 32) + 16);
      type metadata accessor for VFSFileTree(0);
      v50 = swift_dynamicCastClassUnconditional();
      v102 = *v48;
      LODWORD(v101) = *(v48 + 8);
      v51 = *(v48 + 80);
      v108 = *(v48 + 64);
      v109 = v51;
      v52 = *(v48 + 112);
      v110 = *(v48 + 96);
      v111 = v52;
      v53 = *(v48 + 48);
      v107[0] = *(v48 + 32);
      v107[1] = v53;
      v115 = v107[0];
      v116 = v53;
      v119 = v110;
      v120 = v52;
      v117 = v108;
      v118 = v51;
      v54 = swift_allocObject();
      *(v54 + 2) = v45;
      *(v54 + 3) = v46;
      v104 = v54;
      *(v54 + 4) = v80;
      sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
      v103 = v50;
      v55 = *(v50 + 216);
      v106[12] = MEMORY[0x1E69E7CC0];
      v121 = v49;

      sub_1CEFCCBDC(v107, v106, &unk_1EC4BE330, &unk_1CF9FF010);
      sub_1CEFCCCA4(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

      v56 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
      sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
      v57 = v83;
      v58 = v85;
      sub_1CF9E77B8();
      v59 = sub_1CF9E73E8();

      (*(v84 + 8))(v57, v58);
      qos_class_self();
      v60 = v89;
      sub_1CF9E63B8();
      v62 = v86;
      v61 = v87;
      v63 = *(v86 + 48);
      if (v63(v60, 1, v87) == 1)
      {
        (*(v62 + 104))(v88, *MEMORY[0x1E69E7FA0], v61);
        v64 = v63(v60, 1, v61);
        v65 = v98;
        v66 = v90;
        if (v64 != 1)
        {
          sub_1CEFCCC44(v60, &unk_1EC4BE380, &qword_1CFA01BA0);
        }
      }

      else
      {
        (*(v62 + 32))(v88, v60, v61);
        v65 = v98;
        v66 = v90;
      }

      ObjectType = swift_getObjectType();
      sub_1CF9E6428();
      v68 = swift_allocObject();
      v69 = v118;
      *(v68 + 72) = v117;
      *(v68 + 88) = v69;
      v70 = v120;
      *(v68 + 104) = v119;
      *(v68 + 120) = v70;
      v71 = v116;
      *(v68 + 40) = v115;
      v72 = v102;
      *(v68 + 16) = v103;
      *(v68 + 24) = v72;
      *(v68 + 32) = v101;
      *(v68 + 56) = v71;
      *(v68 + 136) = 0;
      *(v68 + 144) = 0;
      *(v68 + 152) = v59;
      *(v68 + 160) = sub_1CF8FEA74;
      *(v68 + 168) = v104;

      sub_1CEFCCBDC(v107, v106, &unk_1EC4BE330, &unk_1CF9FF010);
      swift_unknownObjectRetain();

      sub_1CEFD5828(0, v66, sub_1CF72A328, v68, ObjectType);

      (*(v91 + 8))(v66, v92);
      v73 = v93;
      sub_1CF9E6478();
      v74 = v95;
      sub_1CEFD5B64(v95);
      v75 = v97;
      sub_1CEFD5BD8(v97);
      MEMORY[0x1D3869770](v73, v74, v75, ObjectType);
      v76 = *(v65 + 8);
      v77 = v75;
      v78 = v99;
      v76(v77, v99);
      v76(v74, v78);
      (*(v94 + 8))(v73, v96);
      sub_1CF9E7448();

      swift_unknownObjectRelease();
      sub_1CEFCCC44(v107, &unk_1EC4BE330, &unk_1CF9FF010);
      sub_1CEFCCC44(v81, &unk_1EC4BE360, &qword_1CF9FE650);
    }
  }
}

uint64_t sub_1CF88BF54(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v60 = a3;
  v61 = a2;
  v5 = sub_1CF9E6118();
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v55 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v54 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v54 - v15;
  v17 = type metadata accessor for VFSItem(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v54 - v22;
  sub_1CEFCCBDC(a1, v13, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v13;
    v62 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();

    (*(v18 + 56))(v16, 1, 1, v17);
LABEL_4:
    sub_1CEFCCC44(v16, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v25 = sub_1CF9E5A58();
    v26 = v59;
    (*(*(v25 - 8) + 56))(v59, 1, 1, v25);
    v61(v26);
    return sub_1CEFCCC44(v26, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  sub_1CEFE55D0(v13, v16, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    goto LABEL_4;
  }

  v28 = v23;
  sub_1CEFDA0C4(v16, v23, type metadata accessor for VFSItem);
  sub_1CEFDA34C(v23, v20, type metadata accessor for VFSItem);
  v29 = &v20[*(v17 + 28)];
  LODWORD(v29) = v29[*(type metadata accessor for ItemMetadata(0) + 80)];
  sub_1CEFD5338(v20, type metadata accessor for VFSItem);
  if (v29 == 1)
  {
    v30 = fpfs_current_or_default_log();
    v31 = v56;
    sub_1CF9E6128();
    v32 = sub_1CF9E6108();
    v33 = sub_1CF9E7298();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v65 = v35;
      *v34 = 136315138;
      v36 = swift_beginAccess();
      v37 = *(v28 + 8);
      v63 = *v28;
      v64 = v37;
      v38 = VFSItemID.description.getter(v36);
      v40 = v39;
      v41 = sub_1CEFD0DF0(v38, v39, &v65);
      v40, v42, v43, v44, v45, v46, v47, v48;
      *(v34 + 4) = v41;
      _os_log_impl(&dword_1CEFC7000, v32, v33, "materializedURL vfsItem with ID %s is dataless", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1D386CDC0](v35, -1, -1);
      MEMORY[0x1D386CDC0](v34, -1, -1);
    }

    (*(v57 + 8))(v31, v58);
    v49 = sub_1CF9E5A58();
    v50 = v59;
    (*(*(v49 - 8) + 56))(v59, 1, 1, v49);
  }

  else
  {
    type metadata accessor for VFSFileTree(0);
    v51 = swift_dynamicCastClassUnconditional();

    v52 = objc_sync_enter(v51);
    if (v52)
    {
      MEMORY[0x1EEE9AC00](v52);
      *(&v54 - 2) = v51;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v54 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v53 = objc_sync_exit(v51);
    if (v53)
    {
      MEMORY[0x1EEE9AC00](v53);
      *(&v54 - 2) = v51;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v54 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    v50 = v55;
    sub_1CF25116C(v55);
  }

  v61(v50);
  sub_1CEFCCC44(v50, &unk_1EC4BE310, qword_1CF9FCBE0);
  return sub_1CEFD5338(v28, type metadata accessor for VFSItem);
}

double FPDDomainFPFSBackend.materializedURL(for:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = dispatch_group_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v5 = swift_allocBox();
  v7 = v6;
  v8 = sub_1CF9E5A58();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  dispatch_group_enter(v4);
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF8F0FC4;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  v11[2] = sub_1CF8F0FC4;
  v11[3] = v9;
  v11[4] = a1;
  swift_retain_n();

  v12 = v4;
  v13 = a1;
  sub_1CEFD4024("materializedURL(for:completion:)", 32, 2, sub_1CF8F0FCC, v10, sub_1CF8F0FD4, v11);

  sub_1CF9E72F8();

  swift_beginAccess();
  sub_1CEFCCBDC(v7, a2, &unk_1EC4BE310, qword_1CF9FCBE0);

  return result;
}

void sub_1CF88C848(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = swift_projectBox();
  swift_beginAccess();
  sub_1CF8FEA80(a1, v5);
  dispatch_group_leave(a3);
}

uint64_t FPDDomainFPFSBackend.isItemDataless(_:)(void *a1)
{
  v2 = dispatch_group_create();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  dispatch_group_enter(v2);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1CF8F0FE0;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  v6[2] = sub_1CF8F0FE0;
  v6[3] = v4;
  v6[4] = a1;
  swift_retain_n();

  v7 = v2;
  v8 = a1;
  sub_1CEFD4024("isItemDataless(for:completion:)", 31, 2, sub_1CF8F1034, v5, sub_1CF8F1064, v6);

  sub_1CF9E72F8();

  swift_beginAccess();
  v9 = *(v3 + 16);

  return v9;
}

double FPDDomainFPFSBackend.createItemBased(onTemplate:fields:urlWrapper:options:bounceOnCollision:request:completionHandler:)(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5, void *a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a7;
  *(v16 + 24) = a8;
  v17 = swift_allocObject();
  *(v17 + 16) = a7;
  *(v17 + 24) = a8;
  *(v17 + 32) = a1;
  *(v17 + 40) = a5;
  *(v17 + 48) = a6;
  *(v17 + 56) = v8;
  *(v17 + 64) = a2;
  *(v17 + 72) = a3;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1CF90325C;
  *(v18 + 24) = v16;
  v19 = a3;

  swift_retain_n();
  v20 = a1;
  v21 = a6;
  v22 = v8;
  sub_1CEFD4024("createItemBased(onTemplate:fields:urlWrapper:options:bounceOnCollision:request:completionHandler:)", 98, 2, sub_1CF903280, v18, sub_1CF8F1070, v17);

  return result;
}

double sub_1CF88CD24(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, unsigned __int8 *a6, uint64_t a7, void *a8, void *a9)
{
  v220 = a8;
  v214 = a7;
  v226 = a6;
  LODWORD(v225) = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v215 = &v212 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v216 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v219 = &v212 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v217 = &v212 - v18;
  v218 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v228 = &v212 - v21;
  v22 = sub_1CF9E5FF8();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v212 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v212 - v27;
  v29 = sub_1CF9E6118();
  v30 = *(v29 - 8);
  v230 = v29;
  v231 = v30;
  MEMORY[0x1EEE9AC00](v29);
  v223 = &v212 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v222 = &v212 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v212 - v35;
  v37 = swift_allocObject();
  *(v37 + 16) = a2;
  *(v37 + 24) = a3;
  v38 = swift_allocObject();
  v213 = a1;
  swift_weakInit();
  v39 = swift_allocObject();
  v39[2] = sub_1CF90325C;
  v39[3] = v37;
  v39[4] = v38;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1CF902E50;
  *(v40 + 24) = v39;
  v227 = v40;

  v41 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v42 = a4;
  v43 = sub_1CF9E6108();
  v44 = sub_1CF9E72C8();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138412546;
    *(v45 + 4) = v42;
    *v46 = v42;
    *(v45 + 12) = 1024;
    *(v45 + 14) = v225 & 1;
    v47 = v42;
    _os_log_impl(&dword_1CEFC7000, v43, v44, "🆕  Going to create an item with template %@ bounceOnCollision %{BOOL}d", v45, 0x12u);
    sub_1CEFCCC44(v46, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v46, -1, -1);
    MEMORY[0x1D386CDC0](v45, -1, -1);
  }

  v48 = v231 + 8;
  v224 = *(v231 + 8);
  v224(v36, v230);
  v49 = [v42 contentType];
  sub_1CF9E5F48();

  sub_1CF9E5FD8();
  LOBYTE(v49) = sub_1CF9E5FB8();
  v50 = *(v23 + 8);
  v50(v25, v22);
  v50(v28, v22);
  if (v49 & 1) == 0 || (v51 = [v42 contentType], sub_1CF9E5F48(), v51, sub_1CF9E5FA8(), LOBYTE(v51) = sub_1CF9E5FB8(), v50(v25, v22), v50(v28, v22), (v51))
  {
    sub_1CF514824("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/fpfs/FPDDomainFPFSBackend.swift", 94, 2, 5101);
  }

  v52 = sub_1CF0689E4();
  v53 = swift_allocObject();
  v54 = v226;
  *(v53 + 16) = v52;
  *(v53 + 24) = v54;
  v232 = v53 | 0x1000000000000002;
  v55 = v213;
  v229 = *(v213 + 16);
  v56 = v52;
  v57 = v54;
  v58 = sub_1CEFD4E9C(v56);
  v212 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  v59 = swift_allocObject();
  v60 = v227;
  *(v59 + 16) = sub_1CF903440;
  *(v59 + 24) = v60;
  *(v59 + 32) = v55;
  *(v59 + 40) = v56;
  v61 = v214;
  *(v59 + 48) = v214;
  *(v59 + 56) = v42;
  *(v59 + 64) = v225 & 1;
  *(v59 + 72) = v220;
  *(v59 + 80) = a9;
  v225 = v59;
  *(v59 + 88) = v57;
  v62 = a9;
  v63 = v58;
  v64 = v42;
  v220 = v56;
  v65 = v57;

  v66 = v61;
  v67 = fpfs_current_or_default_log();
  v68 = v222;
  sub_1CF9E6128();
  swift_retain_n();

  v69 = sub_1CF9E6108();
  v70 = sub_1CF9E7298();
  v71 = os_log_type_enabled(v69, v70);
  v231 = v48;
  if (v71)
  {
    v72 = swift_slowAlloc();
    v214 = swift_slowAlloc();
    v233[0] = v214;
    *v72 = 136315394;
    v73 = swift_beginAccess();
    v74 = *(v58 + 32);
    v75 = v63[40];
    v76 = v228;
    if (v63[41])
    {
      v77 = NSFileProviderItemIdentifier.description.getter(v74);
      v79 = v78;
      sub_1CEFD0994(v74, v75, 1);
    }

    else
    {
      v235 = v74;
      v236 = v75;
      v77 = VFSItemID.description.getter(v73);
      v79 = v80;
    }

    v81 = sub_1CEFD0DF0(v77, v79, v233);
    v79, v82, v83, v84, v85, v86, v87, v88;
    *(v72 + 4) = v81;
    *(v72 + 12) = 2080;
    v89 = sub_1CEFD11AC(v232);
    v91 = v90;

    v92 = sub_1CEFD0DF0(v89, v91, v233);
    v91, v93, v94, v95, v96, v97, v98, v99;
    *(v72 + 14) = v92;
    _os_log_impl(&dword_1CEFC7000, v69, v70, "Request to materialize content of itemID %s reason %s", v72, 0x16u);
    v100 = v214;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v100, -1, -1);
    MEMORY[0x1D386CDC0](v72, -1, -1);

    v224(v222, v230);
  }

  else
  {

    v224(v68, v230);
    v76 = v228;
  }

  v101 = v215;
  v226 = v63;
  sub_1CEFCCBDC(v229 + qword_1EDEBBC18, v215, &qword_1EC4BFB10, &unk_1CFA12AD0);
  v102 = type metadata accessor for TelemetrySignposter(0);
  v103 = (*(*(v102 - 8) + 48))(v101, 1, v102);
  v221 = v53;
  if (v103 == 1)
  {
    sub_1CEFCCC44(v101, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v104 = 1;
  }

  else
  {
    sub_1CF519DE8(0, v76);
    sub_1CEFD5338(v101, type metadata accessor for TelemetrySignposter);
    v104 = 0;
  }

  v105 = type metadata accessor for TelemetrySignpost(0);
  (*(*(v105 - 8) + 56))(v76, v104, 1, v105);
  v106 = v217;
  sub_1CEFCCBDC(v76, v217, qword_1EC4C1588, &unk_1CFA0A260);
  v107 = *(v216 + 80);
  v108 = (v107 + 16) & ~v107;
  v109 = v218;
  v110 = (v218 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
  v111 = swift_allocObject();
  sub_1CEFE55D0(v106, v111 + v108, qword_1EC4C1588, &unk_1CFA0A260);
  v112 = (v111 + v110);
  v113 = v225;
  *v112 = sub_1CF8FE8D4;
  v112[1] = v113;
  v114 = v219;
  sub_1CEFCCBDC(v76, v219, qword_1EC4C1588, &unk_1CFA0A260);
  v115 = (v107 + 24) & ~v107;
  v218 = (v115 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
  v116 = (v115 + v109 + 31) & 0xFFFFFFFFFFFFFFF8;
  v222 = ((v116 + 15) & 0xFFFFFFFFFFFFFFF8);
  v117 = (v116 + 31) & 0xFFFFFFFFFFFFFFF8;
  v118 = (v117 + 15) & 0xFFFFFFFFFFFFFFF8;
  v119 = swift_allocObject();
  *(v119 + 16) = v232;
  sub_1CEFE55D0(v114, v119 + v115, qword_1EC4C1588, &unk_1CFA0A260);
  v120 = v119 + v218;
  *v120 = sub_1CF8FE8D4;
  *(v120 + 8) = v113;
  *(v120 + 16) = 0;
  *(v119 + v116) = v229;
  v121 = &v222[v119];
  v122 = v226;
  *v121 = v226;
  v121[8] = 0;
  *(v119 + v117) = 0;
  v123 = v212;
  *(v119 + v118) = v212;
  v124 = v119 + ((v118 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v124 = sub_1CF903314;
  *(v124 + 8) = v111;
  *(v124 + 16) = 1;
  v125 = objc_allocWithZone(MEMORY[0x1E696AE38]);
  swift_retain_n();

  v126 = v123;
  v222 = v111;

  v127 = [v125 init];
  v128 = swift_allocObject();
  v128[2] = sub_1CF903318;
  v128[3] = v119;
  v128[4] = v232;
  swift_retain_n();
  v218 = v119;
  swift_retain_n();
  v129 = fpfs_current_or_default_log();
  v130 = v223;
  sub_1CF9E6128();
  swift_retain_n();

  v131 = sub_1CF9E6108();
  v132 = sub_1CF9E7298();
  v133 = os_log_type_enabled(v131, v132);
  v219 = v127;
  if (v133)
  {
    v216 = v128;
    v217 = v126;
    v134 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v234 = v135;
    *v134 = 136315906;
    v136 = swift_beginAccess();
    v137 = v122[4];
    v138 = *(v122 + 40);
    if (*(v122 + 41))
    {
      v139 = NSFileProviderItemIdentifier.description.getter(v137);
      v141 = v140;
      sub_1CEFD0994(v137, v138, 1);
    }

    else
    {
      v235 = v122[4];
      v236 = v138;
      v139 = VFSItemID.description.getter(v136);
      v141 = v143;
    }

    v144 = v228;
    v145 = sub_1CEFD0DF0(v139, v141, &v234);
    v141, v146, v147, v148, v149, v150, v151, v152;
    *(v134 + 4) = v145;
    *(v134 + 12) = 2080;
    *(v134 + 14) = sub_1CEFD0DF0(0x74616761706F7270, 0xED000053466F5465, &v234);
    *(v134 + 22) = 2080;
    v153 = sub_1CEFD11AC(v232);
    v155 = v154;

    v156 = sub_1CEFD0DF0(v153, v155, &v234);
    v155, v157, v158, v159, v160, v161, v162, v163;
    *(v134 + 24) = v156;
    *(v134 + 32) = 2048;
    *(v134 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v131, v132, "Lookup itemID %s with behavior %s request %s iteration %ld", v134, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v135, -1, -1);
    MEMORY[0x1D386CDC0](v134, -1, -1);

    v224(v223, v230);
    v122 = v226;
    v126 = v217;
    v128 = v216;
    v142 = v144;
  }

  else
  {

    v224(v130, v230);
    v142 = v228;
  }

  swift_beginAccess();
  v164 = v122[4];
  v165 = *(v122 + 40);
  if ((*(v122 + 41) & 1) == 0)
  {
    if (!v164 && v165 == 2)
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  v166 = qword_1EDEA34B0;
  v167 = v164;
  if (v166 != -1)
  {
    swift_once();
  }

  v168 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v170 = v169;
  v172 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v178 = v168;
  v179 = v171;
  if (v178 != v172 || v170 != v171)
  {
    v188 = sub_1CF9E8048();
    v170, v189, v190, v191, v192, v193, v194, v195;
    v179, v196, v197, v198, v199, v200, v201, v202;
    sub_1CEFD0994(v164, v165, 1);
    v122 = v226;
    if (v188)
    {
      goto LABEL_28;
    }

LABEL_30:
    v203 = swift_allocObject();
    v204 = v232;
    *(v203 + 16) = v232;
    v217 = v126;
    v205 = v203 | 0x7000000000000004;
    v206 = swift_allocObject();
    *(v206 + 16) = sub_1CF796A0C;
    *(v206 + 24) = v128;
    v207 = v229;
    *(v206 + 32) = v229;
    *(v206 + 40) = 1;
    *(v206 + 48) = v204;
    *(v206 + 56) = v122;
    *(v206 + 64) = 0;
    v187 = v219;
    *(v206 + 72) = v219;
    *(v206 + 80) = 0;
    v208 = swift_allocObject();
    *(v208 + 16) = v122;
    *(v208 + 24) = v207;
    *(v208 + 32) = 0;
    *(v208 + 40) = sub_1CF796A90;
    *(v208 + 48) = v206;
    *(v208 + 56) = v205;
    v209 = swift_allocObject();
    *(v209 + 16) = sub_1CF796A90;
    *(v209 + 24) = v206;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    v210 = v187;

    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v209, sub_1CF796A9C, v208);

    v142 = v228;

    v126 = v217;

    goto LABEL_31;
  }

  v170, v171, v172, v173, v174, v175, v176, v177;
  v179, v180, v181, v182, v183, v184, v185, v186;
  sub_1CEFD0994(v164, v165, 1);
LABEL_28:
  sub_1CF90CAC8(v232, sub_1CF796A0C, v128);

  v187 = v219;
LABEL_31:

  sub_1CEFCCC44(v142, qword_1EC4C1588, &unk_1CFA0A260);

  return result;
}

double sub_1CF88DF04(uint64_t a1, void (*a2)(void, id), _TtC18FileProviderDaemon8FSTester *a3, void (*a4)(uint64_t a1, void *a2, void *a3), _TtC18FileProviderDaemon8FSTester *a5, void *a6, void *a7, int a8, char *a9, char *a10, uint64_t a11)
{
  v479 = a8;
  v502 = a7;
  v491 = a6;
  v492 = a5;
  v499 = a4;
  v516 = *MEMORY[0x1E69E9840];
  v14 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v476 = &v465 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v478 = sub_1CF9E5268();
  v477 = *(v478 - 1);
  MEMORY[0x1EEE9AC00](v478);
  v475 = &v465 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v474 = &v465 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v485 = &v465 - v20;
  v500 = sub_1CF9E5A58();
  v501 = *(v500 - 8);
  MEMORY[0x1EEE9AC00](v500);
  v493 = &v465 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v498 = sub_1CF9E6118();
  v497 = *(v498 - 1);
  MEMORY[0x1EEE9AC00](v498);
  v489 = &v465 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v483 = &v465 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v480 = &v465 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v496 = &v465 - v28;
  v495 = sub_1CF9E5CF8();
  v494 = *(v495 - 8);
  MEMORY[0x1EEE9AC00](v495);
  v490 = &v465 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v486 = &v465 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v465 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = &v465 - v36;
  v487 = type metadata accessor for VFSItem(0);
  v488 = *(v487 - 8);
  MEMORY[0x1EEE9AC00](v487);
  v473 = &v465 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v482 = &v465 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v484 = (&v465 - v42);
  v481 = v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v465 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v47);
  v49 = (&v465 - v48);
  sub_1CEFCCBDC(a1, &v465 - v48, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = *v49;
    v51 = *v49;
    a2(0, v50);

    return result;
  }

  v471 = a2;
  v472 = a3;
  sub_1CEFDA0C4(v49, v46, type metadata accessor for VFSItem);
  v53 = *(v499 + 2);
  type metadata accessor for VFSFileTree(0);
  v54 = swift_dynamicCastClassUnconditional();

  v55 = objc_sync_enter(v54);
  if (v55)
  {
    goto LABEL_73;
  }

  v56 = v46;
  v57 = objc_sync_exit(v54);
  v58 = v500;
  v59 = v501;
  if (v57)
  {
    MEMORY[0x1EEE9AC00](v57);
    v463 = v54;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v462, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v60 = swift_allocBox();
  v62 = v61;
  sub_1CF25116C(v37);
  if (v59[6](v37, 1, v58) == 1)
  {
    sub_1CEFCCC44(v37, &unk_1EC4BE310, qword_1CF9FCBE0);
    swift_deallocBox();
    v63 = FPItemNotFoundError();
    v471(0, v63);

    sub_1CEFD5338(v46, type metadata accessor for VFSItem);
    return result;
  }

  v468 = v53;
  v59[4](v62, v37, v58);
  v64 = v502;
  v65 = [v502 filename];
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v67 = v66;

  sub_1CF9E5938();
  v67, v68, v69, v70, v71, v72, v73, v74;
  v75 = [v64 contentModificationDate];
  v76 = MEMORY[0x1E69E7CC8];
  if (v75)
  {
    v77 = MEMORY[0x1E69E7CC8];
    v78 = v75;
    sub_1CF9E5CB8();

    v79 = *MEMORY[0x1E696A350];
    v80 = v495;
    v513 = v495;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    v82 = v494;
    (*(v494 + 16))(boxed_opaque_existential_0, v34, v80);
    sub_1CEFE9EB8(&aBlock, &v509);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v510 = v77;
    sub_1CF1D405C(&v509, v79, isUniquelyReferenced_nonNull_native);
    (*(v82 + 8))(v34, v80);
    v76 = v510;
  }

  v84 = v496;
  v85 = [v64 creationDate];
  if (v85)
  {
    v86 = v486;
    v87 = v76;
    v88 = v85;
    sub_1CF9E5CB8();

    v89 = *MEMORY[0x1E696A308];
    v90 = v495;
    v513 = v495;
    v91 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    v92 = v494;
    (*(v494 + 16))(v91, v86, v90);
    sub_1CEFE9EB8(&aBlock, &v509);
    v93 = swift_isUniquelyReferenced_nonNull_native();
    v510 = v87;
    sub_1CF1D405C(&v509, v89, v93);
    (*(v92 + 8))(v86, v90);
    v76 = v510;
  }

  v94 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v95 = v64;

  v96 = sub_1CF9E6108();
  v97 = sub_1CF9E7298();

  v98 = os_log_type_enabled(v96, v97);
  v486 = v60;
  v470 = v56;
  v492 = v76;
  v502 = v95;
  if (v98)
  {
    v99 = swift_slowAlloc();
    v467 = swift_slowAlloc();
    *&aBlock = v467;
    *v99 = 136315394;
    v100 = [v95 itemID];
    v101 = [v100 identifier];

    v102 = NSFileProviderItemIdentifier.description.getter(v101);
    v103 = v62;
    v105 = v104;

    v106 = sub_1CEFD0DF0(v102, v105, &aBlock);
    v105, v107, v108, v109, v110, v111, v112, v113;
    *(v99 + 4) = v106;
    *(v99 + 12) = 2080;
    swift_beginAccess();
    v114 = v501;
    v115 = v501[2];
    LODWORD(v466) = v97;
    v116 = v493;
    v117 = v500;
    v115(v493, v103, v500);
    v118 = sub_1CF9E5928();
    v119 = [v118 fp_shortDescription];

    v120 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v122 = v121;

    v123 = v117;
    (v114[1])(v116, v117);
    v124 = sub_1CEFD0DF0(v120, v122, &aBlock);
    v125 = v122;
    v62 = v103;
    v125, v126, v127, v128, v129, v130, v131, v132;
    *(v99 + 14) = v124;
    _os_log_impl(&dword_1CEFC7000, v96, v466, "🆕🔁 Making directory for itemID %s at url %s", v99, 0x16u);
    v133 = v467;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v133, -1, -1);
    MEMORY[0x1D386CDC0](v99, -1, -1);

    v134 = v496;
    v496 = *(v497 + 8);
    (v496)(v134, v498);
  }

  else
  {

    v496 = *(v497 + 8);
    (v496)(v84, v498);
    v123 = v500;
    v114 = v501;
    v116 = v493;
  }

  v135 = [objc_opt_self() defaultManager];
  swift_beginAccess();
  v137 = (v114 + 2);
  v136 = v114[2];
  v136(v116, v62, v123);
  v138 = sub_1CF9E5928();
  v141 = v114[1];
  v139 = v114 + 1;
  v140 = v141;
  (v141)(v116, v123);
  type metadata accessor for FileAttributeKey(0);
  sub_1CEFCCCA4(&unk_1EC4BF620, type metadata accessor for FileAttributeKey, &unk_1CF9F9AE0);
  v142 = sub_1CF9E6618();
  *&aBlock = 0;
  v143 = [v135 createDirectoryAtURL:v138 withIntermediateDirectories:0 attributes:v142 error:&aBlock];

  v144 = aBlock;
  v469 = v62;
  if (v143)
  {
    v145 = v500;
    v136(v116, v62, v500);
    v146 = v144;
    v147 = v485;
    v148 = v499;
    sub_1CF010CE0(v116, 0, 2, 0, v485);
    (v140)(v116, v145);
    v149 = v488;
    if ((*(v488 + 48))(v147, 1, v487) != 1)
    {
      v492, v150, v151, v152, v153, v154, v155, v156;
      v187 = v484;
      sub_1CEFDA0C4(v147, v484, type metadata accessor for VFSItem);
      v188 = swift_allocObject();
      v189 = v471;
      v190 = v472;
      *(v188 + 16) = v471;
      *(v188 + 24) = v190;
      v191 = swift_allocObject();
      *(v191 + 16) = sub_1CF8F9E94;
      *(v191 + 24) = v188;
      v192 = v482;
      sub_1CEFDA34C(v187, v482, type metadata accessor for VFSItem);
      v193 = (*(v149 + 80) + 24) & ~*(v149 + 80);
      v194 = (v481 + v193 + 7) & 0xFFFFFFFFFFFFFFF8;
      v195 = swift_allocObject();
      *(v195 + 16) = v148;
      sub_1CEFDA0C4(v192, v195 + v193, type metadata accessor for VFSItem);
      v196 = (v195 + v194);
      *v196 = v189;
      v196[1] = v190;
      swift_retain_n();

      sub_1CF7AAF88("createItemBased(onTemplate:fields:urlWrapper:options:bounceOnCollision:request:completionHandler:)", 98, 2, 2, sub_1CF90324C, v191, sub_1CF8FE948, v195);

      sub_1CEFD5338(v484, type metadata accessor for VFSItem);
      goto LABEL_69;
    }

    v466 = v136;
    v467 = v137;
    v484 = v140;
    v501 = v139;
    sub_1CEFCCC44(v147, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v157 = v475;
    v158 = v478;
    sub_1CF9E57D8();
    v54 = sub_1CF9E50D8();
    (*(v477 + 8))(v157, v158);
  }

  else
  {
    v466 = v136;
    v467 = v137;
    v484 = v140;
    v501 = v139;
    v159 = aBlock;
    v54 = sub_1CF9E57F8();
  }

  v160 = v492;
  swift_willThrow();
  v508 = v54;
  v161 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  swift_dynamicCast();
  v162 = v507;
  v163 = [v162 code];
  v164 = v486;
  v165 = v470;
  if (v163 != 516)
  {
    goto LABEL_28;
  }

  v166 = [v162 domain];
  v167 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v169 = v168;

  v170 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v172 = v171;
  if (v167 != v170 || v169 != v171)
  {
    v197 = sub_1CF9E8048();
    v169, v198, v199, v200, v201, v202, v203, v204;
    v172, v205, v206, v207, v208, v209, v210, v211;
    if (v197)
    {

      goto LABEL_25;
    }

LABEL_28:

    v160, v238, v239, v240, v241, v242, v243, v244;
    v245 = fpfs_current_or_default_log();
    v246 = v489;
    sub_1CF9E6128();

    v247 = v162;
    v248 = sub_1CF9E6108();
    v249 = sub_1CF9E7298();

    if (os_log_type_enabled(v248, v249))
    {
      v250 = swift_slowAlloc();
      v251 = swift_slowAlloc();
      v502 = swift_slowAlloc();
      *&aBlock = v502;
      *v250 = 136315394;
      v252 = v500;
      v466(v116, v469, v500);
      v253 = sub_1CF9E5928();
      v254 = [v253 fp_shortDescription];

      v255 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v257 = v256;

      (v484)(v116, v252);
      v258 = sub_1CEFD0DF0(v255, v257, &aBlock);
      v257, v259, v260, v261, v262, v263, v264, v265;
      *(v250 + 4) = v258;
      *(v250 + 12) = 2112;
      *(v250 + 14) = v247;
      *v251 = v247;
      v266 = v247;
      _os_log_impl(&dword_1CEFC7000, v248, v249, "🆕🔁 Can't make directory at URL %s, error: %@", v250, 0x16u);
      sub_1CEFCCC44(v251, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v267 = v251;
      v165 = v470;
      MEMORY[0x1D386CDC0](v267, -1, -1);
      v268 = v502;
      __swift_destroy_boxed_opaque_existential_1(v502);
      MEMORY[0x1D386CDC0](v268, -1, -1);
      v269 = v250;
      v164 = v486;
      MEMORY[0x1D386CDC0](v269, -1, -1);

      v270 = v489;
    }

    else
    {

      v270 = v246;
    }

    (v496)(v270, v498);
    v271 = v247;
    v471(0, v247);

    sub_1CF890244(v164, v491);
    v272 = v165;
    goto LABEL_32;
  }

  v169, v173, v174, v175, v176, v177, v178, v179;
  v172, v180, v181, v182, v183, v184, v185, v186;
LABEL_25:
  v212 = v500;
  v213 = v483;
  v214 = v480;
  v485 = v162;
  if (v479)
  {
    v215 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v216 = v214;
    v217 = sub_1CF9E6108();
    v218 = sub_1CF9E7298();

    v219 = os_log_type_enabled(v217, v218);
    v478 = v54;
    if (v219)
    {
      v220 = v116;
      v221 = swift_slowAlloc();
      v222 = swift_slowAlloc();
      *&aBlock = v222;
      *v221 = 136315138;
      v466(v220, v469, v212);
      v54 = v216;
      v223 = sub_1CF9E5928();
      v224 = v212;
      v225 = [v223 fp_shortDescription];

      v226 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v228 = v227;

      (v484)(v220, v224);
      v229 = sub_1CEFD0DF0(v226, v228, &aBlock);
      v228, v230, v231, v232, v233, v234, v235, v236;
      *(v221 + 4) = v229;
      _os_log_impl(&dword_1CEFC7000, v217, v218, "🆕🔁 Bouncing item %s", v221, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v222);
      MEMORY[0x1D386CDC0](v222, -1, -1);
      MEMORY[0x1D386CDC0](v221, -1, -1);

      v237 = v54;
    }

    else
    {

      v237 = v216;
    }

    (v496)(v237, v498);
    v304 = [v502 filename];
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v306 = v305;

    sub_1CF9E5CE8();
    sub_1CF51B588(&aBlock);
    v308 = *(&aBlock + 1);
    v307 = aBlock;
    v309 = v512;
    v310 = v513;
    v311 = v515;
    v501 = v514;
    v306, v312, v313, v314, v315, v316, v317, v318;
    if (v310)
    {
      v319 = 0;
    }

    else
    {
      v319 = v309;
    }

    v499 = v319;
    v320 = [objc_opt_self() fp_maximumBounceLevel];
    if ((v320 & 0x8000000000000000) != 0)
    {
LABEL_71:
      __break(1u);
    }

    v321 = v320;
    v322 = 0;
    v497 = a11;
    v496 = a10;
    v493 = a9;
    while (1)
    {
      LODWORD(v500) = v322;
      if (v322)
      {
        v323 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
        [v323 setDateStyle_];
        v498 = v323;
        [v323 setTimeStyle_];
        v324 = sub_1CF9E5C48();
        v325 = [v323 stringFromDate_];

        v326 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v328 = v327;

        *&aBlock = v326;
        *(&aBlock + 1) = v328;
        v54 = 0xE100000000000000;
        v505 = 58;
        v506 = 0xE100000000000000;
        v503 = 39;
        v504 = 0xE100000000000000;
        v329 = sub_1CEFE4E68();
        v330 = MEMORY[0x1E69E6158];
        v331 = sub_1CF9E7668();
        v333 = v332;
        v328, v332, v334, v335, v336, v337, v338, v339;
        *&aBlock = v331;
        *(&aBlock + 1) = v333;
        v505 = 47;
        v506 = 0xE100000000000000;
        v503 = 58;
        v504 = 0xE100000000000000;
        v463 = v329;
        v464 = v329;
        v462[0] = v330;
        v462[1] = v329;
        v340 = sub_1CF9E7668();
        v342 = v341;
        v333, v341, v343, v344, v345, v346, v347, v348;
        *&aBlock = v307;
        *(&aBlock + 1) = v308;
        MEMORY[0x1D3868CC0](0x209380E220, 0xA500000000000000);
        MEMORY[0x1D3868CC0](v340, v342);

        v342, v349, v350, v351, v352, v353, v354, v355;
        v308 = *(&aBlock + 1);
        v307 = aBlock;
      }

      if (v499 < v321)
      {
        break;
      }

LABEL_41:
      v322 = 1;
      if (v500)
      {
        (*(v494 + 8))(v490, v495);
        v308, v448, v449, v450, v451, v452, v453, v454;
        v311, v455, v456, v457, v458, v459, v460, v461;
        __break(1u);
LABEL_73:
        MEMORY[0x1EEE9AC00](v55);
        v463 = v54;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v462, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }
    }

    v54 = v499;
    while (1)
    {
      if (v54 == 1)
      {
        goto LABEL_58;
      }

      if (v54)
      {
        break;
      }

      v356 = v307;
      v357 = v308;
      if (v311)
      {
        goto LABEL_49;
      }

LABEL_50:
      v365 = [v502 filename];
      v366 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v368 = v367;

      if (v356 == v366 && v357 == v368)
      {
        v357, v369, v370, v371, v372, v373, v374, v375;
      }

      else
      {
        v377 = sub_1CF9E8048();
        v368, v378, v379, v380, v381, v382, v383, v384;
        if ((v377 & 1) == 0)
        {
          (*(v494 + 8))(v490, v495);
          v308, v403, v404, v405, v406, v407, v408, v409;
          v311, v410, v411, v412, v413, v414, v415, v416;

          v492, v417, v418, v419, v420, v421, v422, v423;
          v424 = sub_1CF9E6888();
          v357, v425, v426, v427, v428, v429, v430, v431;
          v432 = v502;
          [v502 setFilename_];

          v514 = v471;
          v515 = v472;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v512 = sub_1CEFF9A6C;
          v513 = &block_descriptor_4566;
          v433 = _Block_copy(&aBlock);

          v434 = v491;
          [v491 createItemBasedOnTemplate:v432 fields:v493 urlWrapper:v496 options:0 bounceOnCollision:1 request:v497 completionHandler:v433];
          _Block_release(v433);

          sub_1CF890244(v486, v434);
          sub_1CEFD5338(v470, type metadata accessor for VFSItem);
          goto LABEL_70;
        }

        v368 = v357;
      }

      v368, v385, v386, v387, v388, v389, v390, v391;
LABEL_58:
      if (v321 == v54)
      {
        goto LABEL_41;
      }

      if (__CFADD__(v54++, 1))
      {
        __break(1u);
        goto LABEL_71;
      }
    }

    *&aBlock = v307;
    *(&aBlock + 1) = v308;

    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v505 = v54;
    v393 = sub_1CF9E7F98();
    v395 = v394;
    MEMORY[0x1D3868CC0](v393);
    v395, v396, v397, v398, v399, v400, v401, v402;
    v357 = *(&aBlock + 1);
    v356 = aBlock;
    if (!v311)
    {
      goto LABEL_50;
    }

LABEL_49:
    *&aBlock = v356;
    *(&aBlock + 1) = v357;

    MEMORY[0x1D3868CC0](46, 0xE100000000000000);
    MEMORY[0x1D3868CC0](v501, v311);
    v311, v358, v359, v360, v361, v362, v363, v364;
    v357 = *(&aBlock + 1);
    v356 = aBlock;
    goto LABEL_50;
  }

  v160, v273, v274, v275, v276, v277, v278, v279;
  v280 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v281 = sub_1CF9E6108();
  v282 = sub_1CF9E7298();

  if (os_log_type_enabled(v281, v282))
  {
    v283 = swift_slowAlloc();
    v502 = swift_slowAlloc();
    *&aBlock = v502;
    *v283 = 136315138;
    v284 = v469;
    LODWORD(v495) = v282;
    v285 = v466;
    v466(v116, v469, v212);
    v286 = sub_1CF9E5928();
    v287 = [v286 fp_shortDescription];

    v288 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v290 = v289;

    v212 = v500;
    v291 = v484;
    (v484)(v493, v500);
    v292 = sub_1CEFD0DF0(v288, v290, &aBlock);
    v293 = v290;
    v116 = v493;
    v293, v294, v295, v296, v297, v298, v299, v300;
    *(v283 + 4) = v292;
    _os_log_impl(&dword_1CEFC7000, v281, v495, "🆕🔁 Can't make directory, item already exist at URL %s", v283, 0xCu);
    v301 = v502;
    __swift_destroy_boxed_opaque_existential_1(v502);
    MEMORY[0x1D386CDC0](v301, -1, -1);
    v302 = v283;
    v164 = v486;
    MEMORY[0x1D386CDC0](v302, -1, -1);

    (v496)(v483, v498);
    v303 = v499;
  }

  else
  {

    (v496)(v213, v498);
    v303 = v499;
    v284 = v469;
    v291 = v484;
    v285 = v466;
  }

  v285(v116, v284, v212);
  v435 = v474;
  sub_1CF010CE0(v116, 0, 2, 0, v474);
  v291(v116, v212);
  v436 = v488;
  if ((*(v488 + 48))(v435, 1, v487) == 1)
  {
    sub_1CEFCCC44(v435, &unk_1EC4BEC00, &unk_1CF9FCB60);
    type metadata accessor for NSFileProviderError(0);
    v505 = -1001;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v437 = aBlock;
    v471(0, aBlock);

    sub_1CF890244(v164, v491);
    v272 = v470;
LABEL_32:
    sub_1CEFD5338(v272, type metadata accessor for VFSItem);
    goto LABEL_70;
  }

  v438 = v473;
  sub_1CEFDA0C4(v435, v473, type metadata accessor for VFSItem);
  v439 = swift_allocObject();
  v440 = v471;
  v441 = v472;
  *(v439 + 16) = v471;
  *(v439 + 24) = v441;
  v442 = v482;
  sub_1CEFDA34C(v438, v482, type metadata accessor for VFSItem);
  v443 = (*(v436 + 80) + 24) & ~*(v436 + 80);
  v444 = (v481 + v443 + 7) & 0xFFFFFFFFFFFFFFF8;
  v445 = swift_allocObject();
  *(v445 + 16) = v303;
  sub_1CEFDA0C4(v442, v445 + v443, type metadata accessor for VFSItem);
  v446 = (v445 + v444);
  *v446 = v440;
  v446[1] = v441;
  v447 = swift_allocObject();
  *(v447 + 16) = sub_1CF8FE914;
  *(v447 + 24) = v439;
  swift_retain_n();

  sub_1CF7AAF88("createItemBased(onTemplate:fields:urlWrapper:options:bounceOnCollision:request:completionHandler:)", 98, 2, 2, sub_1CF9034B8, v447, sub_1CF8FE91C, v445);

  sub_1CEFD5338(v438, type metadata accessor for VFSItem);
LABEL_69:
  sub_1CF890244(v486, v491);
  sub_1CEFD5338(v470, type metadata accessor for VFSItem);
LABEL_70:

  return result;
}

void sub_1CF890244(uint64_t a1, void *a2)
{
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = swift_projectBox();
  v11 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v12 = sub_1CF9E6108();
  v13 = sub_1CF9E7298();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v40 = v8;
    v15 = v14;
    v39 = swift_slowAlloc();
    v42[0] = v39;
    *v15 = 136315138;
    v16 = v41;
    swift_beginAccess();
    (*(v4 + 16))(v6, v16, v3);
    v37 = v13;
    v17 = sub_1CF9E5928();
    v18 = [v17 fp_shortDescription];
    v38 = v7;
    v19 = v3;
    v20 = a2;
    v21 = v18;

    v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v24 = v23;

    a2 = v20;
    v3 = v19;
    (*(v4 + 8))(v6, v19);
    v25 = sub_1CEFD0DF0(v22, v24, v42);
    v24, v26, v27, v28, v29, v30, v31, v32;
    *(v15 + 4) = v25;
    _os_log_impl(&dword_1CEFC7000, v12, v37, "🆕🔁 Forcing ingestion for existing item at %s", v15, 0xCu);
    v33 = v39;
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1D386CDC0](v33, -1, -1);
    MEMORY[0x1D386CDC0](v15, -1, -1);

    (*(v40 + 8))(v10, v38);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v34 = v41;
  swift_beginAccess();
  (*(v4 + 16))(v6, v34, v3);
  v35 = sub_1CF9E5928();
  (*(v4 + 8))(v6, v3);
  [a2 forceIngestionAtURL_];
}

void sub_1CF8905D8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void))
{
  v6 = a1[3];
  v5 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
  v9 = type metadata accessor for VFSItem(0);
  v10 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree, &unk_1CFA00618);
  v11 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem, &unk_1CF9FFB08);
  v12 = sub_1CF76BB00(a3, 17, 0, v8, v7, v9, v6, v10, &off_1F4BF8588, v11, v5);
  v8, v13, v14, v15, v16, v17, v18, v19;
  v20 = v12;
  a4(v12, 0);
}

void sub_1CF89072C(void (*a1)(void, void *))
{
  type metadata accessor for NSFileProviderError(0);
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CEFCCCA4(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
  sub_1CF9E57D8();
  (a1)(0);
}

void sub_1CF8907EC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, id))
{
  v6 = a1[3];
  v5 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
  v9 = type metadata accessor for VFSItem(0);
  v10 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree, &unk_1CFA00618);
  v11 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem, &unk_1CF9FFB08);
  v12 = sub_1CF76BB00(a3, 17, 0, v8, v7, v9, v6, v10, &off_1F4BF8588, v11, v5);
  v8, v13, v14, v15, v16, v17, v18, v19;
  v20 = [objc_opt_self() fileProviderErrorForCollisionWithItem_];
  a4(0, v20);
}

double FPDDomainFPFSBackend.forceIngestion(for:request:openFD:completionHandler:)(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  *(v12 + 56) = v5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1CF90325C;
  *(v13 + 24) = v11;
  swift_retain_n();
  v14 = a1;
  v15 = a2;
  v16 = v5;

  sub_1CEFD4024("forceIngestion(for:request:openFD:completionHandler:)", 53, 2, sub_1CF903280, v13, sub_1CF8F1074, v12);

  return result;
}