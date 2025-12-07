void sub_1CF83F5AC(NSObject *a1, _TtC18FileProviderDaemon8FSTester *a2)
{
  v4 = v3;
  v194 = a1;
  v195 = a2;
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v182 = &v180 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v188 = &v180 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v183 = &v180 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v196 = &v180 - v13;
  v14 = sub_1CF9E64A8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v180 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *&v2[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startupQueue];
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14, v16);
  v20 = v19;
  v21 = sub_1CF9E64D8();
  (*(v15 + 8))(v18, v14);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v22 = &v2[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_backingStoreIdentity];
  swift_beginAccess();
  v23 = *v22;
  v24 = v22[1];
  v181 = v22;
  v192 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus;
  v193 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs;
  v189 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID;
  v184 = v23;
  v185 = v24;
  sub_1CEFF05F4(v23, v24);
  v25 = 0;
  v201 = 0;
  v26 = (v6 + 8);
  *&v27 = 136446466;
  v187 = v27;
  *&v27 = 136446210;
  v186 = v27;
  v190 = (v6 + 8);
  v191 = v5;
  v28 = v2;
  v29 = v196;
  v202 = v2;
  do
  {
    v198 = v25;
    v205 = 0;
    v37 = v28;
    sub_1CF517174(v37, &v205, v37);
    v203 = v205;
    if (!v205)
    {
      goto LABEL_54;
    }

    v38 = *v203->tree;
    if (v38)
    {
      v39 = v203 + 1;
      do
      {
        sub_1CEFF6FC0(v39, v204);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong invalidate];
          swift_unknownObjectRelease();
        }

        sub_1CEFF70F4(v204);
        v39 = (v39 + 16);
        --v38;
      }

      while (v38);
    }

    v41 = *&v28[v193];
    if (v41)
    {
      v42 = *(v41 + 56);

      sub_1CF7A69C4();
      v43 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer;
      if (*(v42 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1CF9E7448();
        swift_unknownObjectRelease();
        if (*(v42 + v43))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          sub_1CF9E7418();
          swift_unknownObjectRelease();
        }
      }

      sub_1CF01001C(0, "deactivate()", 12, 2, sub_1CF8F8A0C, v42);

      v44 = *(v41 + 64);
      sub_1CF7A69C4();
      v45 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer;
      if (*(v44 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1CF9E7448();
        swift_unknownObjectRelease();
        if (*(v44 + v45))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          sub_1CF9E7418();
          swift_unknownObjectRelease();
        }
      }

      sub_1CF01001C(0, "deactivate()", 12, 2, sub_1CF902D84, v44);

      *(v41 + 24) = 1;
      sub_1CF6C0474();
      sub_1CF8E976C(0);
    }

    v46 = v202;
    v47 = *&v202[v192];
    *&v202[v192] = 0xF000000000000007;
    sub_1CF8F89F4(v47);
    v48 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v49 = v37;
    v50 = v29;
    v51 = v195;

    v52 = sub_1CF9E6108();
    v53 = sub_1CF9E72C8();
    v51, v54, v55, v56, v57, v58, v59, v60;
    v200 = v49;

    v61 = os_log_type_enabled(v52, v53);
    v199 = v4;
    if (v61)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v204[0] = v63;
      *v62 = v187;
      v64 = [*&v46[v189] fp_obfuscatedProviderDomainID];
      v65 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v67 = v66;

      v26 = v190;
      v68 = sub_1CEFD0DF0(v65, v67, v204);
      v69 = v67;
      v5 = v191;
      v69, v70, v71, v72, v73, v74, v75, v76;
      *(v62 + 4) = v68;
      *(v62 + 12) = 2082;
      v77 = v194;
      *(v62 + 14) = sub_1CEFD0DF0(v194, v51, v204);
      _os_log_impl(&dword_1CEFC7000, v52, v53, "starting FPFS for domain %{public}s for %{public}s", v62, 0x16u);
      swift_arrayDestroy();
      v78 = v63;
      v4 = v199;
      MEMORY[0x1D386CDC0](v78, -1, -1);
      MEMORY[0x1D386CDC0](v62, -1, -1);

      v79 = *v26;
      (*v26)(v50, v5);
      v80 = v51;
    }

    else
    {

      v79 = *v26;
      (*v26)(v50, v5);
      v80 = v51;
      v77 = v194;
    }

    v81 = v200;
    v82 = sub_1CF8380AC(v77, v80);
    if (v82 >> 62 != 1)
    {
      if (!(v82 >> 62))
      {
        v106 = v79;
        v107 = fpfs_current_or_default_log();
        v108 = v183;
        sub_1CF9E6128();
        v109 = v81;
        v110 = sub_1CF9E6108();
        v111 = sub_1CF9E72B8();

        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v200 = v109;
          v114 = v113;
          v204[0] = v113;
          *v112 = v186;
          v115 = [*&v202[v189] fp_obfuscatedProviderDomainID];
          v116 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v118 = v117;

          v119 = sub_1CEFD0DF0(v116, v118, v204);
          v118, v120, v121, v122, v123, v124, v125, v126;
          *(v112 + 4) = v119;
          _os_log_impl(&dword_1CEFC7000, v110, v111, "failed to start FPFS for domain %{public}s", v112, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v114);
          MEMORY[0x1D386CDC0](v114, -1, -1);
          MEMORY[0x1D386CDC0](v112, -1, -1);

          v106(v183, v191);
        }

        else
        {

          v106(v108, v5);
        }

        v150 = v184;
        v151 = swift_unknownObjectWeakLoadStrong();
        if (v151)
        {
          v152 = v151;
          v153 = sub_1CF9E57E8();
          [v152 setStartupError_];
        }

        swift_willThrow();
        sub_1CEFE48D8(v150, v185);

        v203, v154, v155, v156, v157, v158, v159, v160;
        return;
      }

      v127 = v185;
      if (v185 >> 60 != 15)
      {
        v128 = *v181;
        v129 = v181[1];
        if (v129 >> 60 == 15)
        {
          v130 = v184;
          sub_1CEFF05F4(v184, v185);
          sub_1CEFF05F4(v128, v129);
          sub_1CEFE48D8(v128, v129);
          sub_1CEFE48D8(v130, v127);
        }

        else
        {
          sub_1CEFF05F4(v128, v129);
          v130 = v184;
          sub_1CEFF05F4(v184, v127);
          sub_1CEFF05F4(v128, v129);
          v165 = sub_1CF328660(v128, v129, v130, v127);
          sub_1CEFE48D8(v128, v129);
          sub_1CEFE48D8(v130, v127);
          sub_1CEFE48D8(v128, v129);
          if (v165)
          {

            sub_1CEFE48D8(v130, v127);
LABEL_45:
            v203, v166, v167, v168, v169, v170, v171, v172;
            return;
          }
        }

        v173 = swift_unknownObjectWeakLoadStrong();
        v174 = [v173 provider];

        v175 = [v174 manager];
        v176 = [v175 server];

        [v176 signalProviderChanges];
        sub_1CEFE48D8(v130, v127);
      }

      goto LABEL_45;
    }

    v197 = v79;
    v83 = fpfs_current_or_default_log();
    v84 = v188;
    sub_1CF9E6128();
    v85 = v81;
    v86 = sub_1CF9E6108();
    v87 = sub_1CF9E72A8();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v200 = v85;
      v90 = v89;
      v204[0] = v89;
      *v88 = v186;
      v91 = [*&v202[v189] fp_obfuscatedProviderDomainID];
      v92 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v94 = v93;

      v95 = v92;
      v5 = v191;
      v96 = sub_1CEFD0DF0(v95, v94, v204);
      v94, v97, v98, v99, v100, v101, v102, v103;
      *(v88 + 4) = v96;
      v26 = v190;
      _os_log_impl(&dword_1CEFC7000, v86, v87, "should reattempt starting FPFS for domain %{public}s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v90);
      v104 = v90;
      v85 = v200;
      MEMORY[0x1D386CDC0](v104, -1, -1);
      v105 = v88;
      v4 = v199;
      MEMORY[0x1D386CDC0](v105, -1, -1);
    }

    else
    {
    }

    v197(v84, v5);
    v203, v30, v31, v32, v33, v34, v35, v36;
    v29 = v196;
    v25 = v198 + 1;
    v201 = (v82 & 0x3FFFFFFFFFFFFFFFLL);
    v28 = v202;
  }

  while (v198 != 1);
  v131 = fpfs_current_or_default_log();
  v132 = v182;
  sub_1CF9E6128();
  v133 = v85;
  v134 = sub_1CF9E6108();
  v135 = sub_1CF9E72B8();

  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v204[0] = v137;
    *v136 = v186;
    v138 = [*&v28[v189] fp_obfuscatedProviderDomainID];
    v139 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v141 = v140;

    v142 = sub_1CEFD0DF0(v139, v141, v204);
    v141, v143, v144, v145, v146, v147, v148, v149;
    *(v136 + 4) = v142;
    _os_log_impl(&dword_1CEFC7000, v134, v135, "failed to start FPFS for domain %{public}s after several attempts", v136, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v137);
    MEMORY[0x1D386CDC0](v137, -1, -1);
    MEMORY[0x1D386CDC0](v136, -1, -1);

    v197(v132, v191);
  }

  else
  {

    v197(v132, v5);
  }

  v161 = swift_unknownObjectWeakLoadStrong();
  v162 = v184;
  if (v161)
  {
    v163 = v161;
    if (v201)
    {
      v164 = sub_1CF9E57E8();
    }

    else
    {
      v164 = 0;
    }

    [v163 setStartupError_];
  }

  v177 = swift_unknownObjectWeakLoadStrong();
  if (v177)
  {
    v178 = v177;
    v179 = [v177 volume];

    [v179 monitorLowDiskSpaceRecovery];
  }

  if (v201 || FPDomainUnavailableError())
  {
    swift_willThrow();
    sub_1CEFE48D8(v162, v185);
    return;
  }

LABEL_55:
  __break(1u);
}

id sub_1CF8403B4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong indexer];

    if (v2)
    {
      if ([v2 needsAuthentication])
      {
        type metadata accessor for NSFileProviderError(0);
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CEFCCCA4(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
        sub_1CF9E57D8();

        return v7;
      }
    }
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 startupError];

    if (v6)
    {
      return v6;
    }
  }

  result = FPDomainUnavailableError();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF8404FC(uint64_t a1, void (*a2)(uint64_t *, char *, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  v10 = 0;
  v7 = sub_1CF9E5A58();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  a2(&v10, v6, a1);
  return sub_1CEFCCC44(v6, &unk_1EC4BE310, qword_1CF9FCBE0);
}

uint64_t sub_1CF8405F8(uint64_t a1, uint64_t (*a2)(uint64_t *, uint64_t *, uint64_t))
{
  v3 = 0;
  v4 = 0;
  return a2(&v4, &v3, a1);
}

void sub_1CF84063C(void *a1, void (*a2)(void *))
{
  v5[0] = a1;
  memset(&v5[1], 0, 24);
  v6 = 1;
  v4 = a1;
  a2(v5);
}

void sub_1CF8406A8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1CF4E40EC(MEMORY[0x1E69E7CC0]);
  if (a1 >> 62)
  {
LABEL_26:
    v5 = sub_1CF9E7818();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1D3869C30](v6, a1);
        }

        else
        {
          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v16 = *(a1 + 8 * v6 + 32);
        }

        v17 = v16;
        v18 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = sub_1CF7BF8D8(v17);
        v22 = v4[2];
        v23 = (v20 & 1) == 0;
        v24 = v22 + v23;
        if (__OFADD__(v22, v23))
        {
          goto LABEL_23;
        }

        v25 = v20;
        if (v4[3] >= v24)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v20)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1CF7D338C();
            if (v25)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1CF7CBBA8(v24, isUniquelyReferenced_nonNull_native);
          v26 = sub_1CF7BF8D8(v17);
          if ((v25 & 1) != (v27 & 1))
          {
            sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
            sub_1CF9E8108();
            __break(1u);
            return;
          }

          v21 = v26;
          if (v25)
          {
LABEL_4:
            v7 = v4[7];
            v8 = *(v7 + 8 * v21);
            *(v7 + 8 * v21) = MEMORY[0x1E69E7CC0];

            v8, v9, v10, v11, v12, v13, v14, v15;
            goto LABEL_5;
          }
        }

        v4[(v21 >> 6) + 8] |= 1 << v21;
        *(v4[6] + 8 * v21) = v17;
        *(v4[7] + 8 * v21) = MEMORY[0x1E69E7CC0];
        v28 = v4[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_24;
        }

        v4[2] = v30;
LABEL_5:
        ++v6;
      }

      while (v18 != v5);
    }
  }

  v31 = swift_allocObject();
  *(v31 + 16) = a2;
  *(v31 + 24) = a3;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1CF8F89DC;
  *(v32 + 24) = v31;
  v33 = swift_allocObject();
  v33[2] = v4;
  v33[3] = sub_1CF8F89DC;
  v33[4] = v31;
  v33[5] = v38;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1CF903444;
  *(v34 + 24) = v32;
  swift_retain_n();

  v35 = v38;

  sub_1CEFD4024("withFPItemIdentifier(forDictionary:cb:)", 39, 2, sub_1CF8F89F0, v34, sub_1CF8F89E4, v33);
}

void sub_1CF8409F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!a1)
  {
    (a4)(0, a2, a3);
    return;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v7 = a3;
    v8 = a2;
    v6 = sub_1CF1FDB18();
    v9 = sub_1CF1FDA94();

    sub_1CEFCB59C(v10);
    if (v9 != v5)
    {
      __break(1u);
      return;
    }

    a3 = v7;
    a2 = v8;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  (a4)(v6, a2, a3);
}

void sub_1CF840B10(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _TtC18FileProviderDaemon8FSTester *, void), uint64_t a4, void *a5)
{
  v100 = swift_allocObject();
  *(v100 + 16) = sub_1CF4E41F0(MEMORY[0x1E69E7CC0]);
  v6 = v100 + 16;
  v7 = a2 + 64;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v101 = v11;
  v102 = a2 + 64;
  while (v10)
  {
LABEL_12:
    v24 = (v12 << 9) | (8 * __clz(__rbit64(v10)));
    v25 = *(*(a2 + 56) + v24);
    v26 = *(*(a2 + 48) + v24);
    v103 = v25;

    v27 = [v26 identifier];
    v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v30 = v29;
    LOBYTE(v25) = sub_1CF4C4044(0x2F73662F70665F5FLL, 0xE800000000000000, v28, v29);
    v30, v31, v32, v33, v34, v35, v36, v37;
    v104 = v26;
    if ((v25 & 1) == 0)
    {

LABEL_5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
      v13 = swift_allocObject();
      *(v13 + 42) = 0;
      *(v13 + 32) = v27;
      *(v13 + 40) = 256;
      *(v13 + 16) = v27;
      *(v13 + 24) = 256;
      v14 = v27;
      goto LABEL_6;
    }

    v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v40 = v39;
    v41 = sub_1CF025150(0x80007uLL, v38, v39);
    v42 = a2;
    v44 = v43;
    v45 = v6;
    v47 = v46;
    v49 = v48;
    v40, v43, v46, v48, v50, v51, v52, v53;
    v54 = v44;
    a2 = v42;
    v55 = v47;
    v6 = v45;
    v7 = v102;
    v56 = MEMORY[0x1D3868C10](v41, v54, v55, v49);
    v58 = v57;
    v59 = v49;
    v11 = v101;
    v59, v57, v60, v61, v62, v63, v64, v65;
    VFSItemID.init(parsing:)(v56, v58, &v105, v66, v67, v68, v69, v70, v71);

    v72 = v106;
    if (v106 == 255)
    {
      goto LABEL_5;
    }

    v73 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
    v13 = swift_allocObject();
    *(v13 + 32) = v73;
    *(v13 + 40) = v72;
    *(v13 + 41) = 0;
    *(v13 + 16) = v73;
    *(v13 + 24) = v72;
    *(v13 + 25) = 0;
LABEL_6:
    v10 &= v10 - 1;
    v15 = sub_1CF8E34A4(v103, v13);

    v15, v16, v17, v18, v19, v20, v21, v22;
  }

  while (1)
  {
    v23 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v23 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v23);
    ++v12;
    if (v10)
    {
      v12 = v23;
      goto LABEL_12;
    }
  }

  v74 = 0;
  v75 = *v6;
  v76 = *v6 + 64;
  v77 = 1 << *(*v6 + 32);
  v78 = -1;
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  v79 = v78 & *(*v6 + 64);
  v80 = (v77 + 63) >> 6;
  while (v79)
  {
    v81 = v74;
LABEL_24:
    v82 = __clz(__rbit64(v79));
    v79 &= v79 - 1;
    v83 = *(*(v75 + 48) + ((v81 << 9) | (8 * v82)));
    swift_beginAccess();
    if ((*(v83 + 41) & 1) == 0)
    {
      v84 = swift_allocObject();
      *(v84 + 16) = a3;
      *(v84 + 24) = a4;
      v85 = swift_allocObject();
      v85[2] = v100;
      v85[3] = a1;
      v85[4] = a5;
      v85[5] = a3;
      v85[6] = a4;
      v86 = swift_allocObject();
      *(v86 + 16) = sub_1CF8F6DE0;
      *(v86 + 24) = v84;
      swift_retain_n();

      v87 = a5;

      sub_1CF7AAF88("withFPItemIdentifier(forDictionary:cb:)", 39, 2, 2, sub_1CF903284, v86, sub_1CF8F6DE8, v85);

      return;
    }
  }

  while (1)
  {
    v81 = v74 + 1;
    if (__OFADD__(v74, 1))
    {
      break;
    }

    if (v81 >= v80)
    {
      v88 = sub_1CF4E42E8(MEMORY[0x1E69E7CC0]);
      a3(a2, v88, 0);

      v88, v89, v90, v91, v92, v93, v94, v95;
      return;
    }

    v79 = *(v76 + 8 * v81);
    ++v74;
    if (v79)
    {
      v74 = v81;
      goto LABEL_24;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1CF840FDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _TtC18FileProviderDaemon8FSTester *, void))
{
  v6 = MEMORY[0x1E69E7CC0];
  v164 = sub_1CF4E40EC(MEMORY[0x1E69E7CC0]);
  v152 = sub_1CF4E42E8(v6);
  swift_beginAccess();
  v7 = *(a2 + 16);
  v153 = v6;
  v163 = v6;
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v149 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID;
  v12 = (v9 + 63) >> 6;
  v147 = *MEMORY[0x1E6967280];
  v148 = *MEMORY[0x1E6967258];
  v13 = swift_bridgeObjectRetain_n();
  v14 = 0;
  v156 = v7;
  if (v11)
  {
    while (1)
    {
LABEL_11:
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v160 = *(*(v7 + 48) + ((v14 << 9) | (8 * v16)));
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
      sub_1CEFCCCEC(&unk_1EC4C4BF8, &qword_1EC4C4BF0, &unk_1CFA189D0, &unk_1CFA0A4F0);
      sub_1CF9E7898();
      sub_1CF0272BC(v162, &v160);
      if (!swift_dynamicCast())
      {
        goto LABEL_6;
      }

      v17 = v158;
      v18 = a1[3];
      v19 = a1[4];
      v20 = __swift_project_boxed_opaque_existential_1(a1, v18);
      sub_1CF554B9C(*(a3 + 16), v20, v18, v19, &v160);
      v21 = v160;
      if (v160)
      {
        v22 = *(v158 + 16);
        if ((*(v158 + 25) & 1) == 0)
        {
          v23 = *(v158 + 24);
          if (v23 != 2 || v22)
          {
            if (v23 != 2 || v22 != 1)
            {
              v160 = 0x2F73662F70665F5FLL;
              v161 = 0xE800000000000000;
              if (v23)
              {
                if (v23 == 1)
                {
                  v158 = 0x284449656C6966;
                  v159 = 0xE700000000000000;
                  goto LABEL_36;
                }

                if (v22)
                {
                  v80 = 0x6873617274;
                }

                else
                {
                  v80 = 1953460082;
                }

                if (v22)
                {
                  v81 = 0xE500000000000000;
                }

                else
                {
                  v81 = 0xE400000000000000;
                }
              }

              else
              {
                v158 = 0x284449636F64;
                v159 = 0xE600000000000000;
LABEL_36:
                v70 = sub_1CF9E7F98();
                v72 = v71;
                MEMORY[0x1D3868CC0](v70);
                v72, v73, v74, v75, v76, v77, v78, v79;
                MEMORY[0x1D3868CC0](41, 0xE100000000000000);
                v80 = v158;
                v81 = v159;
              }

              MEMORY[0x1D3868CC0](v80, v81);
              v81, v82, v83, v84, v85, v86, v87, v88;
              v89 = v161;
              v154 = sub_1CF9E6888();
              v89, v90, v91, v92, v93, v94, v95, v96;
              goto LABEL_21;
            }

            v22 = v147;
          }

          else
          {
            v22 = v148;
          }
        }

        v154 = v22;
LABEL_21:
        v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v26 = v25;
        v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v34 = v24;
        v35 = v27;
        if (v34 == v28 && v26 == v27)
        {
          v26, v27, v28, v29, v30, v31, v32, v33;
          v35, v36, v37, v38, v39, v40, v41, v42;
        }

        else
        {
          v144 = sub_1CF9E8048();
          v26, v43, v44, v45, v46, v47, v48, v49;
          v35, v50, v51, v52, v53, v54, v55, v56;
          if ((v144 & 1) == 0)
          {
            v57 = v21;
            v145 = v154;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v160 = v152;
            sub_1CF1D3AB0(v145, v57, isUniquelyReferenced_nonNull_native);

            v152 = v160;
          }
        }

        v146 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(a4 + v149) itemIdentifier:v21];
        swift_beginAccess();
        if (!*(*(a2 + 16) + 16) || (sub_1CF7BFED0(v17), (v59 & 1) == 0))
        {
          swift_endAccess();
          __break(1u);
          return;
        }

        swift_endAccess();

        v61 = sub_1CF8E35C8(v60, v146);

        v61, v62, v63, v64, v65, v66, v67, v68;
        sub_1CF027318(v162);

        MEMORY[0x1D3868FA0](v69);
        if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1CF9E6D88();
        }

        v13 = sub_1CF9E6DE8();
        v153 = v163;
        v7 = v156;
        if (!v11)
        {
          goto LABEL_7;
        }
      }

      else
      {

        v7 = v156;
LABEL_6:
        sub_1CF027318(v162);

        if (!v11)
        {
          goto LABEL_7;
        }
      }
    }
  }

  while (1)
  {
LABEL_7:
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_48:
      v128 = v13;
      v129 = sub_1CF9E7818();
      v128, v130, v131, v132, v133, v134, v135, v136;
      if (v129)
      {
        goto LABEL_46;
      }

      goto LABEL_49;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_11;
    }
  }

  v7, v97, v98, v99, v100, v101, v102, v103;
  v13 = v153;
  if (v153 >> 62)
  {
    goto LABEL_48;
  }

  v111 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v153, v104, v105, v106, v107, v108, v109, v110;
  if (v111)
  {
LABEL_46:
    v112 = v164;
    a5(v164, v152, 0);
    v112, v113, v114, v115, v116, v117, v118, v119;
    v127 = v152;
    goto LABEL_50;
  }

LABEL_49:
  a5(0, 0, 0);
  v152, v137, v138, v139, v140, v141, v142, v143;
  v127 = v164;
LABEL_50:
  v127, v120, v121, v122, v123, v124, v125, v126;
}

uint64_t sub_1CF841908()
{
  v0 = sub_1CF9E6118();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong session];

    v7 = [v6 newFileProviderProxyWithTimeout:0 pid:180.0];
    swift_unknownObjectRelease();
    if (v7)
    {
      v8 = [v7 synchronousRemoteObjectProxy];
      sub_1CF9E7728();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4CA0, &unk_1CFA17E90);
      if (swift_dynamicCast())
      {
        v9 = v74;
        v72 = nullsub_1;
        v73 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v69 = 1107296256;
        v70 = sub_1CF00A468;
        v71 = &block_descriptor_1780;
        v10 = _Block_copy(&aBlock);
        [v9 signalEnumeratorForMaterializedItemsWithCompletionHandler_];
        _Block_release(v10);
      }
    }
  }

  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v67 = v1;
    aBlock = 0;
    v69 = 0xE000000000000000;
    sub_1CF9E7948();
    v13 = v69;
    v14 = [v12 providerDomainID];
    v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v17 = v16;
    v13, v16, v18, v19, v20, v21, v22, v23;

    aBlock = v15;
    v69 = v17;
    MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA5D170);
    v24 = v69;
    v25 = sub_1CF9E6888();
    v24, v26, v27, v28, v29, v30, v31, v32;
    v33 = [v25 fp_libnotifyPerUserNotificationName];

    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v35 = v34;

    v36 = sub_1CF9E6978();
    v35, v37, v38, v39, v40, v41, v42, v43;
    notify_post((v36 + 32));

    v44 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v45 = v12;
    v46 = sub_1CF9E6108();
    v47 = sub_1CF9E7298();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      aBlock = v49;
      *v48 = 136315138;
      v50 = [v45 providerDomainID];
      v66 = v0;
      v51 = v50;
      v52 = [v50 fp_obfuscatedProviderDomainID];

      v53 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v65 = v3;
      v55 = v54;

      v56 = sub_1CEFD0DF0(v53, v55, &aBlock);
      v55, v57, v58, v59, v60, v61, v62, v63;
      *(v48 + 4) = v56;
      _os_log_impl(&dword_1CEFC7000, v46, v47, "sent notification %s.materializedSetChanged.fp_libnotifyPerUserNotificationName())", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x1D386CDC0](v49, -1, -1);
      MEMORY[0x1D386CDC0](v48, -1, -1);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return (*(v67 + 8))(v65, v66);
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return (*(v67 + 8))(v3, v0);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }
}

double sub_1CF841DB8(uint64_t a1, id a2, char *a3)
{
  v6 = *(a1 + 16);
  if ([a2 isIndexingEnabled])
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a3;
    *(v7 + 24) = v6;
    v8 = *(v6 + qword_1EDEBBD08);
    v9 = swift_allocObject();
    v9[2] = v6;
    v9[3] = a2;
    v9[4] = sub_1CF8F94E8;
    v9[5] = v7;
    swift_retain_n();
    v10 = a3;
    v11 = v8;
    v12 = a2;

    sub_1CF01001C(0, "forceIndexAnchorFetch()", 23, 2, sub_1CF8F94F0, v9);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = [Strong isHidden];

      if (v15)
      {
        v16 = 3;
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v16 = 3;
    }

    v17 = *(v6 + qword_1EDEBBD08);
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = v16;
    *(v18 + 32) = 1;
    v11 = v17;

    sub_1CF01001C(0, "updateIndexBarrier(anchor:)", 27, 2, sub_1CF902D90, v18);
  }

  return result;
}

void sub_1CF841F90(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46A0, &unk_1CFA16780);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v16 - v9;
  if ((*(a2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_invalidated) & 1) == 0)
  {
    v11 = *(a3 + qword_1EDEBBD08);
    sub_1CEFCCBDC(a1, v10, &qword_1EC4C46A0, &unk_1CFA16780);
    v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    sub_1CEFE55D0(v10, v13 + v12, &qword_1EC4C46A0, &unk_1CFA16780);
    *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
    v14 = v11;

    v15 = a2;
    sub_1CF01001C(0, "forceIndexAnchorFetch()", 23, 2, sub_1CF8F94FC, v13);
  }
}

void sub_1CF84213C(uint64_t a1, uint64_t a2, char *a3)
{
  v68 = a3;
  v76 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AE0, qword_1CFA17B10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v66 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v69 = v65 - v7;
  v8 = sub_1CF9E6118();
  v70 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v65[1] = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v67 = v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46A0, &unk_1CFA16780);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v65 - v13);
  v15 = sub_1CF9E64A8();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(a1 + qword_1EDEBBC50) = 0;
  v20 = *(a1 + 64);
  *v19 = v20;
  v21 = *(v16 + 104);
  v72 = *MEMORY[0x1E69E8020];
  v71 = v21;
  v21(v19, v17);
  v22 = v20;
  LOBYTE(v20) = sub_1CF9E64D8();
  v73 = *(v16 + 8);
  v73(v19, v15);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v75 = v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  v23 = *(*(swift_dynamicCastClassUnconditional() + 32) + qword_1EDEBBB18);
  if (!v23)
  {
    goto LABEL_4;
  }

  v24 = v8;
  v25 = v23 + *(*v23 + 136);
  swift_beginAccess();
  v26 = *(v25 + 57);
  v8 = v24;
  if (v26)
  {
    goto LABEL_4;
  }

  *v19 = v22;
  v71(v19, v72, v15);
  v53 = v22;
  v54 = sub_1CF9E64D8();
  v73(v19, v15);
  if ((v54 & 1) == 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v55 = *(*(swift_dynamicCastClassUnconditional() + 32) + qword_1EDEBBB18);
  if (!v55)
  {
    return;
  }

  v56 = v55 + *(*v55 + 136);
  swift_beginAccess();
  if ((*(v56 + 57) & 1) != 0 || (*(v56 + 56) & 1) == 0 || *(v56 + 48))
  {
    return;
  }

LABEL_4:
  v27 = v75;
  sub_1CEFCCBDC(v76, v75, &qword_1EC4C46A0, &unk_1CFA16780);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v48 = *(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C46A8, &qword_1CFA18050) + 48));
    v49 = v69;
    sub_1CEFE55D0(v27, v69, &unk_1EC4C4AE0, qword_1CFA17B10);
    if (v48 == 1)
    {
      v50 = v66;
      sub_1CEFCCBDC(v49, v66, &unk_1EC4C4AE0, qword_1CFA17B10);
      v51 = type metadata accessor for ChangeEnumeratorAnchor(0);
      if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
      {
        sub_1CEFCCC44(v50, &unk_1EC4C4AE0, qword_1CFA17B10);
        v52 = 0;
      }

      else
      {
        v52 = *(v50 + *(v51 + 20));
        sub_1CEFD5338(v50, type metadata accessor for ChangeEnumeratorAnchor);
      }

      v58 = v52;
      v57 = a1;
      sub_1CF80378C(v58, 0);
    }

    else
    {
      v57 = a1;
      sub_1CF80378C(0x7FFFFFFFFFFFFFFFLL, 0);
    }

    v59 = *(*(swift_dynamicCastClassUnconditional() + 32) + qword_1EDEBBB18);
    if (!v59)
    {
LABEL_29:
      sub_1CEFCCC44(v49, &unk_1EC4C4AE0, qword_1CFA17B10);
      return;
    }

    v60 = *(v57 + qword_1EDEBBDB0);
    v61 = *(*&v59[qword_1EDEBB780] + 64);
    *v19 = v61;
    v71(v19, v72, v15);

    v62 = v60;
    v63 = v61;
    LOBYTE(v60) = sub_1CF9E64D8();
    v73(v19, v15);
    if (v60)
    {
      v64 = *(*v59 + 136);
      swift_beginAccess();
      if (v59[v64] != 1)
      {
        v59[v64] = 1;
        v59[72] = 1;
        sub_1CF802820(v62, 2u);
      }

      goto LABEL_29;
    }

LABEL_35:
    __break(1u);
    return;
  }

  v28 = *v27;
  v29 = fpfs_current_or_default_log();
  v30 = v67;
  sub_1CF9E6128();
  v31 = v28;
  v32 = sub_1CF9E6108();
  v33 = sub_1CF9E72A8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    v36 = v28;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 4) = v37;
    *v35 = v37;
    _os_log_impl(&dword_1CEFC7000, v32, v33, "Cannot fetch current anchor, retrying: %@", v34, 0xCu);
    sub_1CEFCCC44(v35, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v35, -1, -1);
    MEMORY[0x1D386CDC0](v34, -1, -1);
  }

  (*(v70 + 8))(v30, v8);
  v38 = v68;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v40 = Strong;
    v41 = [Strong indexer];
    if (v41)
    {
      v42 = v41;
      type metadata accessor for FPFSIndexer(0);
      v43 = swift_dynamicCastClass();
      if (v43)
      {
        v44 = v43;
        v45 = swift_allocObject();
        *(v45 + 16) = v44;
        *(v45 + 24) = v38;
        v46 = v42;
        v47 = v38;
        sub_1CEFD4024("forceIndexAnchorFetch()", 23, 2, nullsub_1, 0, sub_1CF9034BC, v45);

        return;
      }
    }
  }

  else
  {
  }
}

void sub_1CF842B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a2;
  v6 = sub_1CF9E64A8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 64);
  *v10 = v11;
  v12 = *MEMORY[0x1E69E8020];
  v27 = *(v7 + 104);
  v27(v10, v12, v6, v8);
  v13 = v11;
  v14 = sub_1CF9E64D8();
  v15 = *(v7 + 8);
  v15(v10, v6);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v26 = v13;
  v28 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  v16 = *(*(swift_dynamicCastClassUnconditional() + 32) + qword_1EDEBBB18);
  v17 = a1;
  if (!v16)
  {
    goto LABEL_4;
  }

  v18 = v16 + *(*v16 + 136);
  swift_beginAccess();
  v19 = *(v18 + 57);
  v17 = a1;
  if (v19)
  {
    goto LABEL_4;
  }

  v21 = v26;
  v20 = v27;
  *v10 = v26;
  v20(v10, v12, v6);
  v22 = v21;
  LOBYTE(v21) = sub_1CF9E64D8();
  v15(v10, v6);
  if ((v21 & 1) == 0)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v23 = *(*(swift_dynamicCastClassUnconditional() + 32) + qword_1EDEBBB18);
  if (v23)
  {
    v17 = a1;
    v24 = v23 + *(*v23 + 136);
    swift_beginAccess();
    if ((*(v24 + 57) & 1) == 0 && (*(v24 + 56) & 1) != 0 && !*(v24 + 48))
    {
LABEL_4:
      if ((*(v17 + qword_1EDEBBC50) & 1) == 0)
      {
        *(v17 + qword_1EDEBBC50) = 1;
        sub_1CF74921C(v29, v28);
      }
    }
  }
}

void sub_1CF842DFC(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (([a1 isHidden] & 1) == 0)
    {
      goto LABEL_7;
    }

    LOBYTE(v6) = 0;
    goto LABEL_6;
  }

  v5 = Strong;
  v6 = [Strong isHidden];

  if (v6 != [a1 isHidden])
  {
LABEL_6:
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    sub_1CEFD4024("didChangeDomainConfiguration(_:)", 32, 2, nullsub_1, 0, sub_1CF8EB7FC, v7);
  }

LABEL_7:
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
    [a1 supportsSyncingTrash];
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v8 nsDomain];

  LODWORD(v9) = [v10 supportsSyncingTrash];
  if ([a1 supportsSyncingTrash] != v9)
  {
LABEL_11:
    v11 = swift_allocObject();
    *(v11 + 16) = v2;
    v12 = v2;
    sub_1CEFD4024("didChangeDomainConfiguration(_:)", 32, 2, nullsub_1, 0, sub_1CF8EB804, v11);
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    v15 = [v13 nsDomain];

    v16 = sub_1CF827720();
    v17 = sub_1CF827720();
    if ((v16 & 0x100) != 0)
    {
      if ((v17 & 0x100) != 0)
      {
        return;
      }
    }

    else if ((v17 & 0x100) == 0 && v16 == v17)
    {
      return;
    }
  }

  else if ((sub_1CF827720() & 0x100) != 0)
  {
    return;
  }

  sub_1CF82C388();
}

double sub_1CF843064(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;

  sub_1CF7AAF88("didChangeDomainConfiguration(_:)", 32, 2, 2, nullsub_1, 0, sub_1CF9020EC, v4);

  return result;
}

double sub_1CF843114(void *a1, unsigned __int8 *obj, char a3)
{
  v6 = objc_sync_enter(obj);
  if (v6)
  {
    MEMORY[0x1EEE9AC00](v6);
    v16 = obj;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v15, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v7 = obj[qword_1EDEADAA8];
  v8 = objc_sync_exit(obj);
  if (v8)
  {
    MEMORY[0x1EEE9AC00](v8);
    v16 = obj;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v15, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if (v7)
  {
    sub_1CF807404();
  }

  if (a3)
  {
    if (qword_1EDEA5178 != -1)
    {
      swift_once();
    }

    v9 = &qword_1EDEBB778;
  }

  else
  {
    if (qword_1EDEAC5D0 != -1)
    {
      swift_once();
    }

    v9 = &qword_1EDEBBAB8;
  }

  v10 = *v9;
  sub_1CF8E9878(v10);

  if (v7)
  {
    v12 = a1[3];
    v13 = a1[4];
    v14 = __swift_project_boxed_opaque_existential_1(a1, v12);
    return sub_1CF5A1A2C(v14, v12, v13);
  }

  return result;
}

double sub_1CF8432D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FPFileTree(0);
  v6 = *(swift_dynamicCastClassUnconditional() + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
  v7 = *(v6 + 8);
  v37 = *v6;
  v8 = *(v6 + 16);
  v9 = *(v6 + 20);
  v35 = *(v6 + 24);
  v36 = v8;
  v34 = *(v6 + 25);
  LODWORD(v6) = *(v6 + 26);
  HIDWORD(v32) = v9;
  v33 = v6;
  Strong = swift_unknownObjectWeakLoadStrong();

  v13 = 1;
  if (Strong)
  {
    v11 = [Strong nsDomain];

    v12 = [v11 supportsSyncingTrash];
    if (v12)
    {
      v13 = 0;
    }
  }

  v14 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v15 = sub_1CF9E6108();
  v16 = sub_1CF9E7298();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109376;
    *(v17 + 4) = HIDWORD(v32);

    *(v17 + 8) = 1024;
    *(v17 + 10) = v13;
    _os_log_impl(&dword_1CEFC7000, v15, v16, "Updating trash syncing %u -> %u", v17, 0xEu);
    MEMORY[0x1D386CDC0](v17, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v5, v2);
  v18 = *(swift_dynamicCastClassUnconditional() + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
  *v18 = v37;
  *(v18 + 8) = v7;
  v19 = v35;
  *(v18 + 16) = v36;
  *(v18 + 20) = v13;
  *(v18 + 24) = v19;
  v20 = v33;
  *(v18 + 25) = v34;
  *(v18 + 26) = v20;

  type metadata accessor for VFSFileTree(0);
  v21 = *(swift_dynamicCastClassUnconditional() + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  v25 = *(v21 + 24);
  v26 = *(v21 + 25);
  v27 = *(v21 + 26);
  if (v26)
  {
    v28 = 256;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28 | v25;
  if (v27)
  {
    v30 = 0x10000;
  }

  else
  {
    v30 = 0;
  }

  sub_1CF36AD8C(v22, v23, v24, v29 | v30);

  return result;
}

double sub_1CF8436C0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1CF8EB80C;
  *(v6 + 24) = v4;
  swift_retain_n();

  sub_1CEFD4024("queryDiskImportSchedulerLabel(completionHandler:)", 49, 2, sub_1CF8EB848, v6, sub_1CF8EB840, v5);

  return result;
}

double sub_1CF8437D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1CF902EC4;
  *(v8 + 24) = v6;
  swift_retain_n();

  sub_1CF7AAF88("queryDiskImportSchedulerLabel(completionHandler:)", 49, 2, 2, sub_1CF9020E4, v8, sub_1CF9020C4, v7);

  return result;
}

void sub_1CF8438FC(int a1, void (*a2)(uint64_t, _TtC18FileProviderDaemon8FSTester *, void), int a3, char *obj)
{
  v6 = objc_sync_enter(obj);
  if (v6)
  {
    MEMORY[0x1EEE9AC00](v6);
    v21 = obj;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v20, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v7 = *&obj[qword_1EDEADB40];
  v8 = objc_sync_exit(obj);
  if (v8)
  {
    MEMORY[0x1EEE9AC00](v8);
    v21 = obj;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v20, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v9 = [v7 label];

  v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v11;

  a2(v10, v12, 0);
  v12, v13, v14, v15, v16, v17, v18, v19;
}

void sub_1CF843BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_1CF9E6888();
    if (a3)
    {
LABEL_3:
      v7 = sub_1CF9E57E8();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

id FPDDomainFPFSBackend.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FPDDomainFPFSBackend.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FPDDomainFPFSBackend(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1CF843FD4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E698E490]);
  v1 = sub_1CF9E6888();
  v2 = [v0 initWithIdentifier_];

  v3 = v2;
  [v3 setPriority_];
  [v3 setInterval_];
  [v3 setRequiresNetworkConnectivity_];
  [v3 setRequiresExternalPower_];
  [v3 setRequiresUserInactivity_];
  [v3 setResourceIntensive_];
  [v3 setResources_];
  v4 = [objc_allocWithZone(FPDSharedSystemScheduler) initWithTaskRequest:v3 options:1];

  qword_1EDEBB830 = v4;
}

Swift::Void __swiftcall FPDDomainFPFSBackend.sharedSchedulerCanRun(_:)(FPDSharedSystemScheduler *a1)
{
  v3 = [(FPDSharedSystemScheduler *)a1 label];
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;
  if (qword_1EDEA5DA0 != -1)
  {
    swift_once();
  }

  v7 = [qword_1EDEBB830 label];
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;

  if (v8 == v4 && v10 == v6)
  {

    v6, v27, v28, v29, v30, v31, v32, v33;
    v10, v34, v35, v36, v37, v38, v39, v40;
  }

  else
  {
    v12 = sub_1CF9E8048();
    v6, v13, v14, v15, v16, v17, v18, v19;
    v10, v20, v21, v22, v23, v24, v25, v26;
    if ((v12 & 1) == 0)
    {
      v44 = a1;
      sub_1CF515660();
    }
  }

  v41 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_periodicFPCKRunner];
  if (v41)
  {
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *(v42 + 24) = v1;
    swift_retain_n();
    v43 = v1;
    sub_1CEFD4024("sharedSchedulerCanRun(_:)", 25, 2, nullsub_1, 0, sub_1CF8F05E8, v42);
  }
}

double sub_1CF84431C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 16);
  v7 = objc_sync_enter(v6);
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v7);
    v17 = v6;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v16, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v8 = *(v6 + qword_1EDEADAA8);
  v9 = objc_sync_exit(v6);
  if (v9)
  {
    MEMORY[0x1EEE9AC00](v9);
    v17 = v6;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v16, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if ((v8 & 1) == 0 && *(a2 + 97) == 1)
  {
    v11 = sub_1CF8071DC();
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    *(v14 + 32) = v11;
    *(v14 + 40) = v13 & 1;
    *(v14 + 48) = a1;

    v15 = a3;

    sub_1CF7AAF88("sharedSchedulerCanRun(_:)", 25, 2, 2, nullsub_1, 0, sub_1CF901F24, v14);
  }

  return result;
}

void sub_1CF844504(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t isEscapingClosureAtFileLocation)
{
  LODWORD(v40) = a5;
  v39 = a4;
  v10 = sub_1CF9E63A8();
  v45 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v43 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1CF9E6448();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v41 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CEFCE64C();
  if (v6)
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v14 = v13;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = [Strong volume];

    v18 = [v17 role];
  }

  else
  {
    v18 = 0;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = isEscapingClosureAtFileLocation;
  if (*(a2 + 97) == 1)
  {
    v38 = v10;
    *(a2 + 112) = sub_1CF844B58;
    *(a2 + 120) = 0;
    v21 = a3;

    if (!*(a2 + 96))
    {
      *(a2 + 96) = 1;
      if (qword_1EDEA6A18 != -1)
      {
        swift_once();
      }

      v37[1] = qword_1EDEBB898;
      v32 = swift_allocObject();
      *(v32 + 16) = a2;
      *(v32 + 24) = v14;
      *(v32 + 32) = v18;
      *(v32 + 40) = sub_1CF844B58;
      *(v32 + 48) = 0;
      *(v32 + 56) = v39;
      *(v32 + 64) = v40 & 1;
      *(v32 + 72) = sub_1CF901F4C;
      *(v32 + 80) = v19;
      *(v32 + 88) = sub_1CF901F54;
      *(v32 + 96) = v20;
      v50 = sub_1CF901F60;
      v51 = v32;
      aBlock = MEMORY[0x1E69E9820];
      v47 = 1107296256;
      v48 = sub_1CEFCA444;
      v49 = &block_descriptor_5999;
      v40 = _Block_copy(&aBlock);

      v33 = v41;
      sub_1CF9E63F8();
      v52 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
      v34 = v43;
      v35 = v38;
      sub_1CF9E77B8();
      v36 = v40;
      MEMORY[0x1D3869630](0, v33, v34, v40);
      _Block_release(v36);

      (*(v45 + 8))(v34, v35);
      (*(v42 + 8))(v33, v44);
      goto LABEL_18;
    }

    if (*(a2 + 96) != 2)
    {
      goto LABEL_16;
    }

    v14, v22, v23, v24, v25, v26, v27, v28;
    if (qword_1EC4BCD70 != -1)
    {
      swift_once();
    }

    sub_1CF9E74B8();
    *(a2 + 96) = 1;
    a3 = *(a2 + 16);
    if (!a3)
    {
      goto LABEL_17;
    }

    v29 = a3[7];
    v14 = swift_allocObject();
    *v14->tree = sub_1CF901FA8;
    *v14->tester = a3;
    v50 = sub_1CF1C0B54;
    v51 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = sub_1CEFFD02C;
    v49 = &block_descriptor_6006;
    v30 = _Block_copy(&aBlock);
    swift_retain_n();

    dispatch_sync(v29, v30);
    _Block_release(v30);
    LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

    if ((v29 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v31 = a3;

LABEL_16:
  v14, v22, v23, v24, v25, v26, v27, v28;
LABEL_17:

LABEL_18:
}

id sub_1CF844B58()
{
  if (qword_1EDEA5DA0 != -1)
  {
    swift_once();
  }

  return [qword_1EDEBB830 shouldPause];
}

id sub_1CF844BB0(uint64_t a1)
{
  if (qword_1EDEA5DA0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDEBB830;

  return [v2 markWatcherDone_];
}

double sub_1CF844C24(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4 & 1;
  *(v11 + 48) = a6;
  sub_1CF902038(a1, a2, a3, a4 & 1);

  sub_1CF01001C(0, "sharedSchedulerCanRun(_:)", 25, 2, sub_1CF902000, v11);

  return result;
}

void sub_1CF844D70(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 iCDPackageExtensions];
  v4 = sub_1CF9E6D48();

  *a2 = v4;
}

uint64_t sub_1CF844DCC()
{
  v0 = sub_1CF9E6118();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v5 = sub_1CF9E6108();
  v6 = sub_1CF9E7298();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1CEFC7000, v5, v6, "An update of the package extension list was detected, reloading...", v7, 2u);
    MEMORY[0x1D386CDC0](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return fpfs_icd_package_extension_list_reload();
}

double FPDDomainFPFSBackend.reindexAllItems(with:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a1;
  swift_retain_n();
  v9 = v3;
  sub_1CEFD4024("reindexAllItems(with:completionHandler:)", 40, 2, sub_1CF74F980, v7, sub_1CF8F05F0, v8);

  return result;
}

void sub_1CF844FF8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v9 = Strong, v10 = [Strong indexer], v9, v10))
  {
    aBlock[4] = a3;
    aBlock[5] = a4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF00A468;
    aBlock[3] = &block_descriptor_5982;
    v11 = _Block_copy(aBlock);

    [v10 signalNeedsReindexFromScratchWithDropReason:a5 completionHandler:v11];
    _Block_release(v11);
  }

  else
  {
    v12 = FPNotSupportedError();
    a3();
  }
}

double FPDDomainFPFSBackend.reindexItems(with:identifiers:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a2;
  swift_retain_n();
  v10 = v4;

  sub_1CEFD4024("reindexItems(with:identifiers:completionHandler:)", 49, 2, sub_1CF90324C, v8, sub_1CF8F05FC, v9);

  return result;
}

void sub_1CF845378(uint64_t a1, char *a2, void (*a3)(void), void *a4, uint64_t a5)
{
  v152 = a3;
  v153 = a4;
  v140 = a1;
  v7 = sub_1CF9E63D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v131 - v15;
  v17 = sub_1CF9E6068();
  v148 = *(v17 - 8);
  v149 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v144 = &v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v142 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v151 = &v131 - v22;
  v143 = type metadata accessor for Signpost(0);
  v145 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v24 = &v131 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v146 = v27;
  v147 = &v131 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v131 - v29;
  v141 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    v33 = [Strong indexer];

    if (v33)
    {
      v136 = v13;
      v34 = [v33 state];
      v35 = *(a5 + 16);
      if (v35 >> 31)
      {
        __break(1u);
      }

      else
      {
        v36 = v34;
        v131 = v10;
        v132 = v8;
        v133 = v7;
        [v34 addToFileRedonationRequests_];

        v37 = MEMORY[0x1E69E7CC0];
        v150 = v16;
        v137 = v30;
        v135 = v24;
        if (v35)
        {
          *&aBlock = MEMORY[0x1E69E7CC0];
          sub_1CF680D2C(0, v35, 0);
          v37 = aBlock;
          v38 = objc_opt_self();
          v39 = (a5 + 40);
          do
          {
            v40 = *v39;

            v41 = sub_1CF9E6888();
            v42 = [v38 getFPIdentifierFromCoreSpotlightIdentifier_];
            v40, v43, v44, v45, v46, v47, v48, v49;

            *&aBlock = v37;
            v51 = *(v37 + 16);
            v50 = *(v37 + 24);
            if (v51 >= v50 >> 1)
            {
              sub_1CF680D2C((v50 > 1), v51 + 1, 1);
              v37 = aBlock;
            }

            *(v37 + 16) = v51 + 1;
            *(v37 + 8 * v51 + 32) = v42;
            v39 += 2;
            --v35;
          }

          while (v35);
          v30 = v137;
        }

        v53 = v140;
        v54 = *(v140 + 16);
        v55 = swift_allocObject();
        *(v55 + 2) = v37;
        *(v55 + 3) = v53;
        v56 = v141;
        *(v55 + 4) = v141;
        *(v55 + 5) = v33;
        v57 = v152;
        v139 = v55;
        v58 = v153;
        *(v55 + 6) = v152;
        *(v55 + 7) = v58;
        v59 = swift_allocObject();
        *(v59 + 16) = v57;
        *(v59 + 24) = v58;
        v152 = v59;
        v138 = v54;
        swift_retain_n();

        v60 = v56;
        v33 = v33;
        v8 = fpfs_adopt_log();
        if (qword_1EDEAE980 == -1)
        {
          goto LABEL_14;
        }
      }

      swift_once();
LABEL_14:
      v61 = qword_1EDEBBE40;
      v63 = v148;
      v62 = v149;
      v64 = v151;
      (*(v148 + 56))(v151, 1, 1, v149);
      strcpy(&aBlock, "async batch ");
      BYTE13(aBlock) = 0;
      HIWORD(aBlock) = -5120;
      v65 = sub_1CF9E7988();
      v67 = v66;
      MEMORY[0x1D3868CC0](v65);
      v67, v68, v69, v70, v71, v72, v73, v74;
      v134 = *(&aBlock + 1);
      v140 = aBlock;
      v75 = v64;
      v76 = v142;
      sub_1CEFCCBDC(v75, v142, &unk_1EC4BED20, &unk_1CFA00700);
      v77 = *(v63 + 48);
      v78 = v77(v76, 1, v62);
      v153 = v8;
      v141 = v33;
      if (v78 == 1)
      {
        v79 = v61;
        v80 = v144;
        sub_1CF9E6048();
        v81 = v77(v76, 1, v62) == 1;
        v82 = v76;
        v83 = v150;
        if (!v81)
        {
          sub_1CEFCCC44(v82, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        v80 = v144;
        (*(v63 + 32))(v144, v76, v62);
        v83 = v150;
      }

      (*(v63 + 16))(v30, v80, v62);
      v84 = v143;
      *&v30[*(v143 + 20)] = v61;
      v85 = &v30[*(v84 + 24)];
      *v85 = "DB queue wait";
      *(v85 + 1) = 13;
      v85[16] = 2;
      v86 = v61;
      v87 = sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_1CF9FA450;
      *(v88 + 56) = MEMORY[0x1E69E6158];
      *(v88 + 64) = sub_1CEFD51C4();
      v89 = v134;
      *(v88 + 32) = v140;
      *(v88 + 40) = v89;
      sub_1CF9E6028(v87, &dword_1CEFC7000, v86, "DB queue wait", 13, 2, v30, "%s", 2);
      v88, v90, v91, v92, v93, v94, v95, v96;
      (*(v63 + 8))(v80, v62);
      sub_1CEFCCC44(v151, &unk_1EC4BED20, &unk_1CFA00700);
      v148 = *(v138 + 168);
      v151 = *(v138 + 64);
      v97 = sub_1CF9E6448();
      v143 = *(v97 - 8);
      v144 = v97;
      (*(v143 + 56))(v83, 1, 1, v97);
      v98 = v147;
      sub_1CEFDA34C(v30, v147, type metadata accessor for Signpost);
      v99 = (*(v145 + 80) + 16) & ~*(v145 + 80);
      v100 = (v146 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
      v101 = swift_allocObject();
      sub_1CEFDA0C4(v98, v101 + v99, type metadata accessor for Signpost);
      v102 = (v101 + v100);
      v149 = sub_1CF5543A4;
      v103 = v152;
      *v102 = sub_1CF5543A4;
      v102[1] = v103;
      v104 = v135;
      sub_1CEFDA34C(v30, v135, type metadata accessor for Signpost);
      v105 = (v100 + 23) & 0xFFFFFFFFFFFFFFF8;
      v106 = (v105 + 15) & 0xFFFFFFFFFFFFFFF8;
      v107 = (v106 + 25) & 0xFFFFFFFFFFFFFFF8;
      v108 = swift_allocObject();
      sub_1CEFDA0C4(v104, v108 + v99, type metadata accessor for Signpost);
      v109 = (v108 + v100);
      *v109 = sub_1CF045408;
      v109[1] = 0;
      *(v108 + v105) = v138;
      v110 = v108 + v106;
      v111 = v143;
      *v110 = "reindexItems(with:identifiers:completionHandler:)";
      *(v110 + 8) = 49;
      *(v110 + 16) = 2;
      v112 = (v108 + v107);
      v113 = v152;
      *v112 = v149;
      v112[1] = v113;
      v114 = v108;
      v115 = (v108 + ((v107 + 23) & 0xFFFFFFFFFFFFFFF8));
      v116 = v139;
      *v115 = sub_1CF901E04;
      v115[1] = v116;
      v117 = swift_allocObject();
      v117[2] = sub_1CF903308;
      v117[3] = v101;
      v118 = v148;
      v117[4] = v148;
      swift_retain_n();

      v149 = v101;
      v119 = v144;

      v120 = fpfs_current_log();
      v121 = *(v118 + 16);
      v122 = v136;
      sub_1CEFCCBDC(v150, v136, &unk_1EC4BE370, qword_1CFA01B30);
      if ((*(v111 + 48))(v122, 1, v119) == 1)
      {
        sub_1CEFCCC44(v122, &unk_1EC4BE370, qword_1CFA01B30);
        v123 = QOS_CLASS_UNSPECIFIED;
      }

      else
      {
        v124 = v131;
        sub_1CF9E6438();
        (*(v111 + 8))(v122, v119);
        v123 = sub_1CF9E63C8();
        (v132)[1](v124, v133);
      }

      v125 = swift_allocObject();
      v125[2] = v120;
      v125[3] = sub_1CF4858EC;
      v125[4] = v114;
      v157 = sub_1CF2BA17C;
      v158 = v125;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v155 = sub_1CEFCA444;
      v156 = &block_descriptor_5904;
      v126 = _Block_copy(&aBlock);
      v127 = v120;

      v157 = sub_1CF2BA180;
      v158 = v117;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v155 = sub_1CEFCA444;
      v156 = &block_descriptor_5907;
      v128 = _Block_copy(&aBlock);

      fp_task_tracker_async_and_qos(v121, v151, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v123, v126, v128);
      _Block_release(v128);
      _Block_release(v126);

      sub_1CEFCCC44(v150, &unk_1EC4BE370, qword_1CFA01B30);
      sub_1CEFD5338(v137, type metadata accessor for Signpost);
      v129 = v153;
      v130 = fpfs_adopt_log();

      return;
    }
  }

  v151 = FPNotSupportedError();
  v152();
  v52 = v151;
}

void sub_1CF8460A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v287 = a5;
  v288 = a7;
  v285 = a4;
  v286 = a6;
  v302 = a1;
  v9 = sub_1CF9E63A8();
  v293 = *(v9 - 8);
  v294 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v292 = &v269 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6448();
  v290 = *(v11 - 8);
  v291 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v289 = &v269 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = sub_1CF9E6118();
  v13 = *(v300 - 8);
  MEMORY[0x1EEE9AC00](v300);
  v304 = &v269 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v281 = &v269 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v296 = &v269 - v18;
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v19 = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284);
  v283 = &v269 - v20;
  v295 = dispatch_group_create();
  v22 = *(a2 + 16);
  if (v22)
  {
    v23 = (a2 + 32);
    v282 = (v19 + 48);
    v24 = *(a3 + 16);
    v299 = (v13 + 8);
    v279 = "nFS";
    v280 = a3;
    v278 = 0x80000001CFA55BB0;
    *&v21 = 138412290;
    v298 = v21;
    *&v21 = 136315906;
    v277 = v21;
    v303 = v24;
    while (1)
    {
      v306 = v23;
      v25 = *v23;
      v26 = *(v24 + 80);
      v28 = v302[3];
      v27 = v302[4];
      v29 = __swift_project_boxed_opaque_existential_1(v302, v28);
      v305 = v25;
      if ((v26 & 0x40000) != 0)
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
      swift_dynamicCastClassUnconditional();
      v314[0] = v25;
      v30 = v25;

      v31 = v307;
      sub_1CF3761C8(v314, v29, v28, v27);
      v307 = v31;
      if (v31)
      {
        goto LABEL_8;
      }

LABEL_14:

      v24 = v303;
LABEL_5:
      v23 = v306 + 1;
      if (!--v22)
      {
        goto LABEL_63;
      }
    }

    v301 = v22;
    v33 = *(v24 + 40);
    v314[0] = v25;
    v34 = *(*v33 + 352);
    v35 = v25;
    v36 = *(v27 + 8);
    v37 = v35;

    v38 = v307;
    v39 = v34(v314, v29, v28, v36);
    v307 = v38;
    if (v38)
    {
      goto LABEL_10;
    }

    v47 = v39;
    v297 = v37;

    v48 = v303;
    if (v47 == 1003 || v47 == 502 || v47 == 501 && (fpfs_supports_indexAllRemoteItems() & 1) == 0)
    {
      v51 = v302[3];
      v50 = v302[4];
      v52 = __swift_project_boxed_opaque_existential_1(v302, v51);
      v53 = *(v48 + 40);
      v49 = v297;
      v314[0] = v297;
      v54 = *(*v53 + 240);
      v55 = *(v50 + 8);

      v56 = v296;
      v57 = v52;
      v58 = v307;
      v54(v314, 1, v57, v51, v55);
      v307 = v58;
      if (v58)
      {
LABEL_10:

        v32 = v307;
        v307 = 0;
        v22 = v301;
        goto LABEL_11;
      }

      v59 = v284;
      if ((*v282)(v56, 1, v284) == 1)
      {
        sub_1CEFCCC44(v56, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        v22 = v301;
      }

      else
      {
        v60 = v283;
        sub_1CEFE55D0(v56, v283, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v61 = *(v60 + 80);
        v275 = *(v60 + 88);
        v276 = v61;
        v62 = v60 + *(v59 + 48);
        v63 = type metadata accessor for ItemMetadata(0);
        v64 = *(v62 + *(v63 + 104));
        v65 = *(v63 + 120);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
        v66 = swift_dynamicCastClass();
        v22 = v301;
        if (v66 && *(*(v66 + 32) + qword_1EDEBBB18) && (, , v67 = sub_1CF3A8798(v276, v275, v62 + v65), , , (v67 & 1) != 0) && ((*(v303 + 82) & 8) != 0 || (v68 = swift_dynamicCastClass()) == 0 || (v69 = *(*(v68 + 32) + qword_1EDEBBB18)) == 0 || v64 >= 1 && *(v69 + qword_1EDEBB7B0) >= v64))
        {
          v70 = v49;
          v71 = v302[3];
          v72 = v302[4];
          v73 = __swift_project_boxed_opaque_existential_1(v302, v71);
          v313 = v70;
          v74 = *(v72 + 8);

          v75 = v73;
          v76 = v307;
          sub_1CF68E230(&v313, v75, v71, v74, v314);
          v307 = v76;
          if (v76)
          {
            sub_1CEFCCC44(v283, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
LABEL_8:

            v32 = v307;
            v307 = 0;
LABEL_11:
            v40 = fpfs_current_or_default_log();
            sub_1CF9E6128();
            v41 = v32;
            v42 = sub_1CF9E6108();
            v43 = sub_1CF9E72A8();

            if (os_log_type_enabled(v42, v43))
            {
              v44 = swift_slowAlloc();
              v45 = swift_slowAlloc();
              *v44 = v298;
              swift_getErrorValue();
              v46 = Error.prettyDescription.getter(v314[66], v314[67]);
              *(v44 + 4) = v46;
              *v45 = v46;
              _os_log_impl(&dword_1CEFC7000, v42, v43, "Error updating last_change for item during reindex: %@", v44, 0xCu);
              sub_1CEFCCC44(v45, &qword_1EC4BE350, &unk_1CF9FC3B0);
              MEMORY[0x1D386CDC0](v45, -1, -1);
              MEMORY[0x1D386CDC0](v44, -1, -1);
            }

            else
            {
            }

            v24 = v303;
            (*v299)(v304, v300);
            goto LABEL_5;
          }

          memcpy(v311, v314, sizeof(v311));
          memcpy(v312, v314, sizeof(v312));
          if (sub_1CF08B99C(v312) == 1)
          {
            sub_1CEFCCC44(v283, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            v49 = v297;
            goto LABEL_35;
          }

          v49 = v297;
          if ((v312[64] & 2) == 0)
          {
            v305 = swift_allocObject();
            *(v305 + 16) = v49;
            v84 = v49;
            dispatch_group_enter(v295);
            v85 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v87 = v86;
            v88 = v84;
            LOBYTE(v85) = sub_1CF4C4044(0x2F73662F70665F5FLL, 0xE800000000000000, v85, v87);
            v87, v89, v90, v91, v92, v93, v94, v95;
            if ((v85 & 1) == 0 || (v96 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0(), v98 = v97, v99 = sub_1CF025150(0x80007uLL, v96, v97), v100 = v88, v102 = v101, v104 = v103, v106 = v105, v98, v101, v103, v105, v107, v108, v109, v110, v111 = v102, v88 = v100, v112 = MEMORY[0x1D3868C10](v99, v111, v104, v106), v114 = v113, v106, v113, v115, v116, v117, v118, v119, v120, VFSItemID.init(parsing:)(v112, v114, &v308, v121, v122, v123, v124, v125, v126), v127 = v309, v309 == 255))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
              v129 = swift_allocObject();
              *(v129 + 42) = 0;
              *(v129 + 32) = v84;
              *(v129 + 40) = 256;
              *(v129 + 16) = v84;
              *(v129 + 24) = 256;
              v130 = v88;
            }

            else
            {

              v128 = v308;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
              v129 = swift_allocObject();
              *(v129 + 32) = v128;
              *(v129 + 40) = v127;
              *(v129 + 41) = 0;
              *(v129 + 16) = v128;
              *(v129 + 24) = v127;
              *(v129 + 25) = 0;
            }

            v131 = v305 | 0xA000000000000006;
            v132 = swift_allocObject();
            v133 = v295;
            v134 = v280;
            v132[2] = v295;
            v132[3] = v134;
            v132[4] = v88;
            v135 = objc_allocWithZone(MEMORY[0x1E696AE38]);
            v136 = v88;
            v137 = v131;
            v275 = v136;
            v138 = v133;

            v274 = [v135 init];
            v139 = swift_allocObject();
            v139[2] = sub_1CF901E68;
            v139[3] = v132;
            v297 = v139;
            v139[4] = v131;
            v276 = v132;
            swift_retain_n();
            swift_retain_n();
            v140 = fpfs_current_or_default_log();
            v141 = v281;
            sub_1CF9E6128();
            swift_retain_n();

            v142 = sub_1CF9E6108();
            v143 = sub_1CF9E7298();
            v144 = os_log_type_enabled(v142, v143);
            v273 = v131;
            if (v144)
            {
              v271 = v143;
              v272 = v142;
              v145 = swift_slowAlloc();
              v270 = swift_slowAlloc();
              v310[0] = v270;
              *v145 = v277;
              v146 = swift_beginAccess();
              v147 = *(v129 + 32);
              v148 = *(v129 + 40);
              if (*(v129 + 41))
              {
                v149 = NSFileProviderItemIdentifier.description.getter(v147);
                v151 = v150;
                sub_1CEFD0994(v147, v148, 1);
              }

              else
              {
                v308 = *(v129 + 32);
                LOBYTE(v309) = v148;
                v149 = VFSItemID.description.getter(v146);
                v151 = v152;
              }

              v153 = sub_1CEFD0DF0(v149, v151, v310);
              v151, v154, v155, v156, v157, v158, v159, v160;
              *(v145 + 4) = v153;
              *(v145 + 12) = 2080;
              *(v145 + 14) = sub_1CEFD0DF0(0xD000000000000010, (v279 | 0x8000000000000000), v310);
              *(v145 + 22) = 2080;
              v161 = *(v305 + 16);
              v308 = 0xD000000000000013;
              v309 = v278;
              v162 = v161;
              v163 = NSFileProviderItemIdentifier.description.getter(v162);
              v165 = v164;
              MEMORY[0x1D3868CC0](v163);
              v165, v166, v167, v168, v169, v170, v171, v172;
              MEMORY[0x1D3868CC0](41, 0xE100000000000000);

              v173 = v309;
              v174 = sub_1CEFD0DF0(v308, v309, v310);
              v173, v175, v176, v177, v178, v179, v180, v181;
              *(v145 + 24) = v174;
              *(v145 + 32) = 2048;
              *(v145 + 34) = 0;
              v182 = v272;
              _os_log_impl(&dword_1CEFC7000, v272, v271, "Lookup itemID %s with behavior %s request %s iteration %ld", v145, 0x2Au);
              v183 = v270;
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v183, -1, -1);
              MEMORY[0x1D386CDC0](v145, -1, -1);

              (*v299)(v281, v300);
              v24 = v303;
              v137 = v273;
            }

            else
            {

              (*v299)(v141, v300);
              v24 = v303;
            }

            swift_beginAccess();
            v184 = *(v129 + 32);
            v185 = *(v129 + 40);
            if (*(v129 + 41))
            {
              v186 = v129;
              v187 = qword_1EDEA34B0;
              v188 = v184;
              if (v187 != -1)
              {
                swift_once();
              }

              v189 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v191 = v190;
              v193 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v199 = v192;
              if (v189 == v193 && v191 == v192)
              {
                v191, v192, v193, v194, v195, v196, v197, v198;
                v199, v200, v201, v202, v203, v204, v205, v206;
                sub_1CEFD0994(v184, v185, 1);
                v137 = v273;
                goto LABEL_59;
              }

              v208 = sub_1CF9E8048();
              v191, v209, v210, v211, v212, v213, v214, v215;
              v199, v216, v217, v218, v219, v220, v221, v222;
              sub_1CEFD0994(v184, v185, 1);
              v137 = v273;
              if ((v208 & 1) == 0)
              {
LABEL_61:
                v223 = swift_allocObject();
                v272 = v223;
                *(v223 + 16) = v137;
                v224 = v223 | 0x7000000000000004;
                v225 = swift_allocObject();
                v226 = v297;
                *(v225 + 16) = sub_1CF796A0C;
                *(v225 + 24) = v226;
                *(v225 + 32) = v24;
                *(v225 + 40) = 2;
                *(v225 + 48) = v137;
                *(v225 + 56) = v186;
                *(v225 + 64) = 0;
                v227 = v274;
                *(v225 + 72) = v274;
                *(v225 + 80) = 0;
                v228 = swift_allocObject();
                *(v228 + 16) = v186;
                *(v228 + 24) = v24;
                *(v228 + 32) = 0;
                *(v228 + 40) = sub_1CF796A90;
                *(v228 + 48) = v225;
                *(v228 + 56) = v224;
                v229 = swift_allocObject();
                *(v229 + 16) = sub_1CF796A90;
                *(v229 + 24) = v225;
                v207 = v227;
                v230 = v229;
                swift_retain_n();
                swift_retain_n();
                swift_retain_n();
                swift_retain_n();

                v231 = v207;

                sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v230, sub_1CF796A9C, v228);

                goto LABEL_62;
              }
            }

            else
            {
              v186 = v129;
              if (v184 || v185 != 2)
              {
                goto LABEL_61;
              }
            }

LABEL_59:
            sub_1CF90CAC8(v137, sub_1CF796A0C, v297);

            v207 = v274;
LABEL_62:

            sub_1CEFCCC44(v311, &unk_1EC4BFD80, &unk_1CFA0A2A0);

            sub_1CEFCCC44(v283, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            goto LABEL_5;
          }

          sub_1CEFCCC44(v283, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          v77 = v311;
          v78 = &unk_1EC4BFD80;
          v79 = &unk_1CFA0A2A0;
        }

        else
        {
          v77 = v283;
          v78 = &unk_1EC4BFBD0;
          v79 = &unk_1CF9FCBC0;
        }

        sub_1CEFCCC44(v77, v78, v79);
      }
    }

    else
    {
      v22 = v301;
      v49 = v297;
    }

LABEL_35:
    v80 = v302[3];
    v81 = v302[4];
    v82 = __swift_project_boxed_opaque_existential_1(v302, v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
    swift_dynamicCastClassUnconditional();
    v314[0] = v49;

    v83 = v307;
    sub_1CF3761C8(v314, v82, v80, v81);
    v307 = v83;
    if (v83)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_63:
  v232 = *(v285 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue);
  v233 = swift_allocObject();
  v235 = v286;
  v234 = v287;
  *(v233 + 2) = v287;
  *(v233 + 3) = v235;
  *(v233 + 4) = v288;
  v236 = v233;
  v237 = v234;

  v238 = fpfs_current_log();
  v306 = fpfs_adopt_log();
  v239 = swift_allocObject();
  v314[0] = sub_1CF9E73C8();
  v314[1] = v240;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v241 = sub_1CF9E7988();
  v243 = v242;
  MEMORY[0x1D3868CC0](v241);
  v243, v244, v245, v246, v247, v248, v249, v250;
  v251 = v314[1];
  sub_1CF9E6978();
  v251, v252, v253, v254, v255, v256, v257, v258;
  v259 = __fp_log_fork();

  *(v239 + 16) = v259;
  v260 = swift_allocObject();
  *(v260 + 16) = v238;
  *(v260 + 24) = v239;
  v303 = v239;
  v304 = v236;
  *(v260 + 32) = v232;
  *(v260 + 40) = "reindexItems(with:identifiers:completionHandler:)";
  *(v260 + 48) = 49;
  *(v260 + 56) = 2;
  *(v260 + 64) = sub_1CF901E5C;
  *(v260 + 72) = v236;
  v314[4] = sub_1CF2B9F54;
  v314[5] = v260;
  v314[0] = MEMORY[0x1E69E9820];
  v314[1] = 1107296256;
  v314[2] = sub_1CEFCA444;
  v314[3] = &block_descriptor_5918;
  v261 = _Block_copy(v314);
  v305 = v238;

  v262 = v232;

  v263 = v289;
  sub_1CF9E63F8();
  v312[0] = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v264 = v292;
  v265 = v294;
  sub_1CF9E77B8();
  v266 = v295;
  sub_1CF9E7308();
  _Block_release(v261);
  (*(v293 + 8))(v264, v265);
  (*(v290 + 8))(v263, v291);

  v267 = v306;
  v268 = fpfs_adopt_log();
}

void sub_1CF847560(uint64_t a1, NSObject *a2, uint64_t a3, void *a4)
{
  v116 = a4;
  v115 = a3;
  v127 = a2;
  v129 = a1;
  v114 = sub_1CF9E63D8();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v126 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v131 = &v109 - v8;
  v9 = sub_1CF9E6068();
  v122 = *(v9 - 8);
  v123 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v119 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v117 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v128 = &v109 - v14;
  v118 = type metadata accessor for Signpost(0);
  v120 = *(v118 - 8);
  v15 = *(v120 + 8);
  MEMORY[0x1EEE9AC00](v118);
  MEMORY[0x1EEE9AC00](v16);
  v121 = (&v109 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v130 = &v109 - v19;
  v20 = type metadata accessor for VFSItem(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v109 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v109 - v28;
  sub_1CEFCCBDC(v129, &v109 - v28, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v29, &unk_1EC4BF300, &unk_1CFA006B0);
    dispatch_group_leave(v127);
  }

  else
  {
    v109 = v15;
    v110 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = v29;
    v31 = v26;
    v111 = v26;
    sub_1CEFDA0C4(v30, v26, type metadata accessor for VFSItem);
    v32 = v115;
    v129 = *(v115 + 16);
    v33 = swift_allocObject();
    v34 = v127;
    v33[2].isa = v127;
    sub_1CEFDA34C(v31, v23, type metadata accessor for VFSItem);
    v35 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v36 = (v22 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    sub_1CEFDA0C4(v23, v38 + v35, type metadata accessor for VFSItem);
    *(v38 + v36) = v32;
    v39 = v116;
    *(v38 + v37) = v116;
    v125 = v38;
    *(v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8)) = v34;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1CF9031FC;
    *(v40 + 24) = v33;
    v124 = v40;
    v41 = v34;

    v42 = v39;
    v127 = v33;

    v116 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v43 = qword_1EDEBBE40;
    v44 = v122;
    v45 = v123;
    v46 = v128;
    (*(v122 + 56))(v128, 1, 1, v123);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v47 = sub_1CF9E7988();
    v49 = v48;
    MEMORY[0x1D3868CC0](v47);
    v49, v50, v51, v52, v53, v54, v55, v56;
    v57 = aBlock;
    v58 = v46;
    v59 = v117;
    sub_1CEFCCBDC(v58, v117, &unk_1EC4BED20, &unk_1CFA00700);
    v60 = *(v44 + 48);
    if (v60(v59, 1, v45) == 1)
    {
      v61 = v43;
      v62 = v119;
      sub_1CF9E6048();
      if (v60(v59, 1, v45) != 1)
      {
        sub_1CEFCCC44(v59, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v62 = v119;
      (*(v44 + 32))(v119, v59, v45);
    }

    v63 = v130;
    (*(v44 + 16))(v130, v62, v45);
    v64 = v118;
    *(v63 + *(v118 + 20)) = v43;
    v65 = v63 + *(v64 + 24);
    *v65 = "DB queue wait";
    *(v65 + 8) = 13;
    *(v65 + 16) = 2;
    v66 = v43;
    v67 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v68 = v62;
    v69 = v44;
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_1CF9FA450;
    *(v70 + 56) = MEMORY[0x1E69E6158];
    *(v70 + 64) = sub_1CEFD51C4();
    *(v70 + 32) = v57;
    sub_1CF9E6028(v67, &dword_1CEFC7000, v66, "DB queue wait", 13, 2, v63, "%s", 2);
    v70, v71, v72, v73, v74, v75, v76, v77;
    (*(v69 + 8))(v68, v45);
    sub_1CEFCCC44(v128, &unk_1EC4BED20, &unk_1CFA00700);
    v123 = *(v129 + 168);
    v128 = *(v129 + 64);
    v119 = sub_1CF9E6448();
    v122 = *(v119 - 1);
    (*(v122 + 56))(v131, 1, 1, v119);
    v78 = v121;
    sub_1CEFDA34C(v63, v121, type metadata accessor for Signpost);
    v79 = (*(v120 + 80) + 16) & ~*(v120 + 80);
    v80 = (v109 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
    v81 = swift_allocObject();
    v120 = type metadata accessor for Signpost;
    sub_1CEFDA0C4(v78, v81 + v79, type metadata accessor for Signpost);
    v82 = (v81 + v80);
    v121 = sub_1CF902CDC;
    v83 = v124;
    *v82 = sub_1CF902CDC;
    v82[1] = v83;
    v84 = v110;
    sub_1CEFDA34C(v63, v110, type metadata accessor for Signpost);
    v85 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
    v86 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
    v87 = (v86 + 25) & 0xFFFFFFFFFFFFFFF8;
    v88 = swift_allocObject();
    sub_1CEFDA0C4(v84, v88 + v79, v120);
    v89 = (v88 + v80);
    *v89 = sub_1CF045408;
    v89[1] = 0;
    *(v88 + v85) = v129;
    v90 = v119;
    v91 = v88 + v86;
    *v91 = "reindexItems(with:identifiers:completionHandler:)";
    *(v91 + 8) = 49;
    *(v91 + 16) = 2;
    v92 = (v88 + v87);
    *v92 = v121;
    v92[1] = v83;
    v93 = (v88 + ((v87 + 23) & 0xFFFFFFFFFFFFFFF8));
    v94 = v122;
    v95 = v125;
    *v93 = sub_1CF901E74;
    v93[1] = v95;
    v96 = swift_allocObject();
    v96[2] = sub_1CF903308;
    v96[3] = v81;
    v97 = v123;
    v96[4] = v123;
    swift_retain_n();

    v129 = v81;

    v98 = fpfs_current_log();
    v99 = *(v97 + 16);
    v100 = v126;
    sub_1CEFCCBDC(v131, v126, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v94 + 48))(v100, 1, v90) == 1)
    {
      sub_1CEFCCC44(v100, &unk_1EC4BE370, qword_1CFA01B30);
      v101 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v102 = v112;
      sub_1CF9E6438();
      (*(v94 + 8))(v100, v90);
      v101 = sub_1CF9E63C8();
      (*(v113 + 8))(v102, v114);
    }

    v103 = swift_allocObject();
    v103[2] = v98;
    v103[3] = sub_1CF4858EC;
    v103[4] = v88;
    v135 = sub_1CF2BA17C;
    v136 = v103;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v133 = sub_1CEFCA444;
    v134 = &block_descriptor_5970;
    v104 = _Block_copy(&aBlock);
    v105 = v98;

    v135 = sub_1CF2BA180;
    v136 = v96;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v133 = sub_1CEFCA444;
    v134 = &block_descriptor_5973;
    v106 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v99, v128, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v101, v104, v106);
    _Block_release(v106);
    _Block_release(v104);

    sub_1CEFCCC44(v131, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CEFD5338(v130, type metadata accessor for Signpost);
    v107 = v116;
    v108 = fpfs_adopt_log();

    sub_1CEFD5338(v111, type metadata accessor for VFSItem);
  }
}

void sub_1CF8482C8(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v42 = a1;
  v34 = a5;
  v36 = a4;
  v41 = a3;
  v6 = sub_1CF9E5CF8();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ItemMetadata(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v14;
  v40 = a2[2];
  v16 = *(a2 + 24);
  v18 = a2[4];
  v17 = a2[5];
  v19 = *(type metadata accessor for VFSItem(0) + 28);
  v20 = *(v13 + 48);
  v37 = a2;
  sub_1CEFDA34C(a2 + v19, &v15[v20], type metadata accessor for ItemMetadata);
  *v15 = v40;
  v15[8] = v16;
  *(v15 + 2) = v18;
  *(v15 + 3) = v17;
  sub_1CEFDA34C(&v15[v20], v11, type metadata accessor for ItemMetadata);

  sub_1CEFCCC44(v15, &unk_1EC4BFD90, &unk_1CFA134F0);
  LODWORD(v20) = v11[*(v9 + 88)];
  sub_1CEFD5338(v11, type metadata accessor for ItemMetadata);
  if (v20 == 1)
  {
    v21 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
    swift_dynamicCastClassUnconditional();
    v22 = v42[3];
    v23 = v42[4];
    v24 = __swift_project_boxed_opaque_existential_1(v42, v22);
    v25 = *(v37 + 8);
    v44 = *v37;
    v45 = v25;

    v26 = v35;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v28 = v27;
    (*(v38 + 8))(v26, v39);
    v29 = v28 * 1000000000.0;
    if (COERCE__INT64(fabs(v28 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v29 > -9.22337204e18)
    {
      if (v29 < 9.22337204e18)
      {
        sub_1CF347AC0(&v44, 256, v29, v24, v22, v23);
        if (!v21)
        {
          dispatch_group_leave(v34);
        }

        return;
      }

LABEL_13:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_13;
  }

  v30 = v42[3];
  v31 = v42[4];
  v32 = __swift_project_boxed_opaque_existential_1(v42, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  swift_dynamicCastClassUnconditional();
  v44 = v36;

  v33 = v43;
  sub_1CF3761C8(&v44, v32, v30, v31);

  if (!v33)
  {
    dispatch_group_leave(v34);
  }
}

void sub_1CF8486B4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v8[4] = sub_1CF8F9E0C;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1CF0892D0;
  v8[3] = &block_descriptor_5979;
  v7 = _Block_copy(v8);

  [a1 signalChangesWithCompletionHandler_];
  _Block_release(v7);
}

void sub_1CF84895C(uint64_t a1, char a2, NSObject *a3, _TtC18FileProviderDaemon8FSTester *a4)
{
  v49[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1CF9E53C8();
  v44 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6118();
  v45 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  v46 = fpfs_adopt_log();
  if (*(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_invalidated) == 1)
  {
    if (FPDomainUnavailableError())
    {
      goto LABEL_3;
    }

    __break(1u);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v42 = v11;
      v20 = Strong;
      if ([Strong disconnectionState] == 6)
      {
        v21 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v22 = sub_1CF9E6108();
        v23 = sub_1CF9E72C8();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_1CEFC7000, v22, v23, "[diskspace] database open likely to fail, returning error", v24, 2u);
          MEMORY[0x1D386CDC0](v24, -1, -1);
        }

        (*(v45 + 8))(v16, v42);
        LODWORD(v49[0]) = 28;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        sub_1CF9E57D8();
        sub_1CF9E53A8();
        (v44)[1](v10, v8);
        swift_willThrow();

        v17 = v46;
        v18 = fpfs_adopt_log();
        goto LABEL_20;
      }

      v25 = a2 & 1;
      *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_userAllowedDBDrop) = a2 & 1;
      v44 = v20;
      v26 = [v20 extensionBackend];
      v27 = sub_1CF9E6888();
      v49[0] = 0;
      v28 = [v26 startWithReason:v27 userAllowedDBDrop:v25 error:v49];
      swift_unknownObjectRelease();

      if (v28)
      {
        v29 = v49[0];
        v30 = v43;
        sub_1CF83F5AC(a3, a4);
        v31 = v42;
        if (!v30)
        {
          sub_1CF848F28(a1);

          v17 = v46;
          v18 = fpfs_adopt_log();
          goto LABEL_20;
        }
      }

      else
      {
        v32 = v49[0];
        sub_1CF9E57F8();

        swift_willThrow();
        v31 = v42;
      }

      swift_getErrorValue();
      sub_1CF4C2DD8(v47, v48);
      if (v33)
      {
        v34 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v35 = sub_1CF9E6108();
        v36 = sub_1CF9E7288();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_1CEFC7000, v35, v36, "[diskspace] sync engine startup failed due to low disk space even though disk space is above threshold", v37, 2u);
          MEMORY[0x1D386CDC0](v37, -1, -1);
        }

        (*(v45 + 8))(v13, v31);
        v38 = [v44 volume];
        v39 = sub_1CF9E57E8();
        [v38 monitorLowDiskSpaceRecoveryForConcreteError_];
      }

      swift_willThrow();
      sub_1CF848F28(a1);

      v17 = v46;
      v18 = fpfs_adopt_log();
      goto LABEL_20;
    }

    if (FPDomainUnavailableError())
    {
LABEL_3:
      swift_willThrow();
      v17 = v46;
      v18 = fpfs_adopt_log();
LABEL_20:
      v40 = v18;

      return;
    }
  }

  __break(1u);
}

uint64_t sub_1CF848F28(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong provider];

    if (v4)
    {
      v5 = [v4 descriptor];

      v6 = [v5 wantsBundleBitOnlyPackageDetection];
      if (v6)
      {
        v7 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_observedDefaults);
        swift_getKeyPath();
        v8 = v7;
        v9 = sub_1CF9E5838();

        v10 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_observation);
        *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_observation) = v9;
      }
    }
  }

  dispatch_group_leave(*(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup));
  *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started) = 1;
  v11 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_periodicFPCKRunner);
  if (v11)
  {
    *(v11 + 96) = 256;
    v12 = qword_1EDEA5DA0;

    if (v12 != -1)
    {
      swift_once();
    }

    [qword_1EDEBB830 addWatcher_];
  }

  if (qword_1EDEA5DA0 != -1)
  {
    swift_once();
  }

  return sub_1CF06779C(nullsub_1, 0);
}

uint64_t sub_1CF849218()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v39 - v2;
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager);
  v12 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_wharfDirectoryURL;
  swift_beginAccess();
  sub_1CEFCCBDC(v11 + v12, v3, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1CEFCCC44(v3, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    sub_1CF9E5968();
    v13 = objc_opt_self();
    v14 = [v13 defaultManager];
    sub_1CF9E5A18();
    v16 = v15;
    v17 = sub_1CF9E6888();
    v16, v18, v19, v20, v21, v22, v23, v24;
    LODWORD(v16) = [v14 fileExistsAtPath_];

    if (v16)
    {
      v25 = [v13 defaultManager];
      sub_1CF9E5A18();
      v27 = v26;
      v28 = sub_1CF9E6888();
      v27, v29, v30, v31, v32, v33, v34, v35;
      LOBYTE(v27) = [v25 fileExistsAtPath_];

      v36 = *(v5 + 8);
      v36(v7, v4);
      v36(v10, v4);
      if (v27)
      {
        return 0;
      }
    }

    else
    {
      v38 = *(v5 + 8);
      v38(v7, v4);
      v38(v10, v4);
    }
  }

  return 1;
}

uint64_t sub_1CF849530()
{
  v1 = sub_1CF9E6118();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v109 = (&v105 - v6);
  MEMORY[0x1EEE9AC00](v7);
  v108 = (&v105 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v105 - v11;
  v13 = sub_1CF9E5A58();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v107 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v106 = &v105 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v110 = &v105 - v19;
  v20 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = result;
    v111 = v1;
    v112 = v2;
    v23 = [result nsDomain];
    v24 = [v23 personaIdentifier];

    if (v24)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    MEMORY[0x1EEE9AC00](v25);
    *(&v105 - 2) = v20;
    *(&v105 - 1) = v22;
    sub_1CF825B70(v27, sub_1CF901DD0, (&v105 - 4), v12);

    v27, v28, v29, v30, v31, v32, v33, v34;
    v35 = v14;
    v36 = v13;
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_1CEFCCC44(v12, &unk_1EC4BE310, qword_1CF9FCBE0);
      v37 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v38 = sub_1CF9E6108();
      v39 = sub_1CF9E7298();
      v40 = os_log_type_enabled(v38, v39);
      v42 = v111;
      v41 = v112;
      if (v40)
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1CEFC7000, v38, v39, "must generate path for root directory", v43, 2u);
        MEMORY[0x1D386CDC0](v43, -1, -1);
      }

      (*(v41 + 8))(v4, v42);
      return 1;
    }

    v44 = *(v14 + 32);
    v45 = v110;
    v44(v110, v12, v13);
    v46 = [objc_opt_self() defaultManager];
    sub_1CF9E5A18();
    v48 = v47;
    v49 = sub_1CF9E6888();
    v48, v50, v51, v52, v53, v54, v55, v56;
    LODWORD(v48) = [v46 fileExistsAtPath_];

    v57 = fpfs_current_or_default_log();
    v58 = (v35 + 16);
    if (!v48)
    {
      v81 = v109;
      sub_1CF9E6128();
      v82 = v107;
      (*v58)(v107, v45, v13);
      v83 = sub_1CF9E6108();
      v84 = sub_1CF9E7298();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = v35;
        v108 = swift_slowAlloc();
        v113 = v108;
        *v85 = 136315138;
        v87 = sub_1CF9E5928();
        v88 = v82;
        v89 = [v87 fp_shortDescription];

        v90 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v92 = v91;

        v93 = *(v86 + 8);
        v93(v88, v36);
        v94 = sub_1CEFD0DF0(v90, v92, &v113);
        v92, v95, v96, v97, v98, v99, v100, v101;
        *(v85 + 4) = v94;
        _os_log_impl(&dword_1CEFC7000, v83, v84, "must create root directory at %s", v85, 0xCu);
        v102 = v108;
        __swift_destroy_boxed_opaque_existential_1(v108);
        MEMORY[0x1D386CDC0](v102, -1, -1);
        MEMORY[0x1D386CDC0](v85, -1, -1);

        (*(v112 + 8))(v109, v111);
        v93(v45, v36);
      }

      else
      {

        v104 = *(v35 + 8);
        v104(v82, v13);
        (*(v112 + 8))(v81, v111);
        v104(v45, v13);
      }

      return 1;
    }

    v59 = v108;
    sub_1CF9E6128();
    v60 = v106;
    (*v58)(v106, v45, v13);
    v61 = sub_1CF9E6108();
    v62 = sub_1CF9E7298();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = v35;
      v109 = swift_slowAlloc();
      v113 = v109;
      *v63 = 136315138;
      v65 = sub_1CF9E5928();
      v66 = v60;
      v67 = [v65 fp_shortDescription];

      v68 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v70 = v69;

      v71 = *(v64 + 8);
      v71(v66, v36);
      v72 = sub_1CEFD0DF0(v68, v70, &v113);
      v70, v73, v74, v75, v76, v77, v78, v79;
      *(v63 + 4) = v72;
      _os_log_impl(&dword_1CEFC7000, v61, v62, "root directory already exists at %s", v63, 0xCu);
      v80 = v109;
      __swift_destroy_boxed_opaque_existential_1(v109);
      MEMORY[0x1D386CDC0](v80, -1, -1);
      MEMORY[0x1D386CDC0](v63, -1, -1);

      (*(v112 + 8))(v108, v111);
      v71(v45, v36);
    }

    else
    {

      v103 = *(v35 + 8);
      v103(v60, v13);
      (*(v112 + 8))(v59, v111);
      v103(v45, v13);
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Bool __swiftcall FPDDomainFPFSBackend.needsRootsCreation()()
{
  if (sub_1CF849530())
  {
    return 1;
  }

  return sub_1CF849218();
}

uint64_t sub_1CF849F34()
{
  v1 = sub_1CF9E6118();
  v125 = *(v1 - 8);
  v126 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v124 = &v117 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v122 = &v117 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v117 - v6;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v123 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v117 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v117 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v117 - v18);
  v20 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager);
  v21 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_wharfDirectoryURL;
  swift_beginAccess();
  sub_1CEFCCBDC(v20 + v21, v7, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1CEFCCC44(v7, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  (*(v9 + 32))(v19, v7, v8);
  v23 = objc_opt_self();
  v24 = [v23 defaultManager];
  sub_1CF9E5A18();
  v26 = v25;
  v27 = sub_1CF9E6888();
  v26, v28, v29, v30, v31, v32, v33, v34;
  LOBYTE(v26) = [v24 fileExistsAtPath_];

  v121 = v13;
  v35 = &selRef_setDetachedRootLogicalURL_;
  if ((v26 & 1) == 0)
  {
    v36 = fpfs_current_or_default_log();
    v37 = v122;
    sub_1CF9E6128();
    (*(v9 + 16))(v16, v19, v8);
    v38 = sub_1CF9E6108();
    v39 = sub_1CF9E72C8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v118 = v40;
      v120 = swift_slowAlloc();
      v127 = v120;
      *v40 = 136315138;
      LODWORD(v119) = v39;
      v41 = sub_1CF9E5928();
      v42 = [v41 fp_shortDescription];

      v43 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v44 = v9;
      v46 = v45;

      (*(v44 + 8))(v16, v8);
      v47 = sub_1CEFD0DF0(v43, v46, &v127);
      v48 = v46;
      v9 = v44;
      v35 = &selRef_setDetachedRootLogicalURL_;
      v48, v49, v50, v51, v52, v53, v54, v55;
      v56 = v118;
      *(v118 + 1) = v47;
      v57 = v56;
      _os_log_impl(&dword_1CEFC7000, v38, v119, "creating wharf directory at %s", v56, 0xCu);
      v58 = v120;
      __swift_destroy_boxed_opaque_existential_1(v120);
      MEMORY[0x1D386CDC0](v58, -1, -1);
      MEMORY[0x1D386CDC0](v57, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v16, v8);
    }

    (*(v125 + 8))(v37, v126);
    v59 = [v23 v35[510]];
    sub_1CF9E5A18();
    v61 = v60;
    v62 = sub_1CF9E6888();
    v61, v63, v64, v65, v66, v67, v68, v69;
    [v59 fp:v62 createPathIfNeeded:?];
  }

  v70 = v121;
  sub_1CF9E5968();
  v71 = [v23 v35[510]];
  sub_1CF9E5A18();
  v73 = v72;
  v74 = sub_1CF9E6888();
  v73, v75, v76, v77, v78, v79, v80, v81;
  LODWORD(v73) = [v71 fileExistsAtPath_];

  if (v73)
  {
    v82 = *(v9 + 8);
  }

  else
  {
    v122 = v23;
    v83 = fpfs_current_or_default_log();
    v84 = v124;
    sub_1CF9E6128();
    v85 = v123;
    (*(v9 + 16))(v123, v19, v8);
    v86 = sub_1CF9E6108();
    v87 = sub_1CF9E72C8();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v120 = v19;
      v89 = v85;
      v90 = v88;
      v119 = swift_slowAlloc();
      v127 = v119;
      *v90 = 136315138;
      v91 = sub_1CF9E5928();
      v92 = [v91 fp_shortDescription];

      v93 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v94 = v9;
      v96 = v95;

      v82 = *(v94 + 8);
      v82(v89, v8);
      v97 = sub_1CEFD0DF0(v93, v96, &v127);
      v96, v98, v99, v100, v101, v102, v103, v104;
      *(v90 + 4) = v97;
      _os_log_impl(&dword_1CEFC7000, v86, v87, "creating wharf/delete directory at %s", v90, 0xCu);
      v105 = v119;
      __swift_destroy_boxed_opaque_existential_1(v119);
      MEMORY[0x1D386CDC0](v105, -1, -1);
      MEMORY[0x1D386CDC0](v90, -1, -1);

      v19 = v120;
      (*(v125 + 8))(v124, v126);
    }

    else
    {

      v82 = *(v9 + 8);
      v82(v85, v8);
      (*(v125 + 8))(v84, v126);
    }

    v106 = [v122 defaultManager];
    sub_1CF9E5A18();
    v108 = v107;
    v109 = sub_1CF9E6888();
    v108, v110, v111, v112, v113, v114, v115, v116;
    [v106 fp:v109 createPathIfNeeded:?];
  }

  v82(v70, v8);
  return (v82)(v19, v8);
}

void FPDDomainFPFSBackend.createRoot(byImporting:knownFolders:)(_DWORD *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a1;
  v98 = a2;
  v6 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v93 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E5268();
  v94 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v92 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6118();
  v95 = *(v10 - 8);
  v96 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1CF9E5A58();
  v102 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v103 = &v86 - v16;
  v17 = *(v3 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_22;
  }

  v19 = Strong;
  v91 = v8;
  v99 = a3;
  v101 = v3;
  v20 = [Strong nsDomain];
  v21 = [v20 personaIdentifier];

  if (v21)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  MEMORY[0x1EEE9AC00](v22);
  *(&v86 - 2) = v17;
  *(&v86 - 1) = v19;
  sub_1CF825834(v24, sub_1CF902CB4, (&v86 - 4), v103);

  v24, v25, v26, v27, v28, v29, v30, v31;
  if (!v4)
  {
    v8 = v101;
    if ((sub_1CF849530() & 1) == 0)
    {
      sub_1CF849F34();
      (*(v102 + 32))(v99, v103, v100);
      return;
    }

    v106 = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    v32 = v102;
    v90 = Strong;
    if (Strong)
    {
      v33 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v34 = v100;
      (*(v32 + 16))(v14, v103, v100);
      v35 = sub_1CF9E6108();
      v36 = sub_1CF9E72C8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v86 = v37;
        v88 = swift_slowAlloc();
        v104 = v88;
        *v37 = 136446210;
        v105 = v36;
        v38 = sub_1CF9E5928();
        v87 = v35;
        v39 = v38;
        v40 = [v38 fp_shortDescription];

        v41 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v43 = v42;

        v89 = *(v32 + 8);
        v89(v14, v34);
        v44 = sub_1CEFD0DF0(v41, v43, &v104);
        v45 = v43;
        v8 = v101;
        v45, v46, v47, v48, v49, v50, v51, v52;
        v53 = v86;
        v54 = v87;
        *(v86 + 1) = v44;
        v55 = v53;
        _os_log_impl(&dword_1CEFC7000, v54, v105, "creating root at %{public}s", v53, 0xCu);
        v56 = v88;
        __swift_destroy_boxed_opaque_existential_1(v88);
        MEMORY[0x1D386CDC0](v56, -1, -1);
        MEMORY[0x1D386CDC0](v55, -1, -1);
      }

      else
      {

        v89 = *(v32 + 8);
        v89(v14, v34);
      }

      (*(v95 + 8))(v12, v96);
      v57 = v34;
      v58 = v90;
      v59 = [v90 nsDomain];
      v60 = [v59 personaIdentifier];

      v62 = v103;
      if (v60)
      {
        v63 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v65 = v64;
      }

      else
      {
        v63 = 0;
        v65 = 0;
      }

      MEMORY[0x1EEE9AC00](v61);
      *(&v86 - 6) = v17;
      *(&v86 - 5) = v58;
      v66 = v98;
      *(&v86 - 4) = v97;
      *(&v86 - 3) = v66;
      *(&v86 - 2) = v62;
      *(&v86 - 1) = &v106;
      sub_1CF8255E8(v63, v65, sub_1CF8F062C, (&v86 - 8));

      v65, v67, v68, v69, v70, v71, v72, v73;
      if ((v106 & 1) == 0)
      {
        sub_1CF9E5128();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
        v84 = v92;
        v85 = v91;
        sub_1CF9E57D8();
        sub_1CF9E50D8();
        (*(v94 + 8))(v84, v85);
        swift_willThrow();
        v89(v62, v57);
        return;
      }

      sub_1CF832910();
      sub_1CF849F34();
      Strong = objc_sync_enter(v8);
      if (!Strong)
      {
        v80 = v8 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs;
        v81 = *(v8 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs);
        *v80 = 0;
        v82 = v80[8];
        v80[8] = -1;
        sub_1CF8F0650(v81, v82, v74, v75, v76, v77, v78, v79);
        v83 = objc_sync_exit(v8);
        if (v83)
        {
          MEMORY[0x1EEE9AC00](v83);
          *(&v86 - 2) = v8;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v86 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
        }

        (*(v102 + 32))(v99, v62, v57);
        return;
      }

LABEL_23:
      MEMORY[0x1EEE9AC00](Strong);
      *(&v86 - 2) = v8;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v86 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }
}

Swift::Void __swiftcall FPDDomainFPFSBackend.invalidate()()
{
  v1 = sub_1CF9E6118();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v116 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v117 = &v116 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v116 - v7;
  v118 = fpfs_adopt_log();
  v9 = [objc_allocWithZone(FPLoggerScope) init];
  v10 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v11 = v9;
  v12 = v0;
  v13 = sub_1CF9E6108();
  v14 = sub_1CF9E72C8();

  v15 = os_log_type_enabled(v13, v14);
  v122 = v2;
  v123 = v1;
  v119 = v11;
  if (v15)
  {
    v16 = v11;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock = v19;
    *v17 = 138412546;
    v20 = [v16 enter];
    *(v17 + 4) = v20;
    *v18 = v20;
    *(v17 + 12) = 2080;
    v21 = [*&v12[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID] fp_obfuscatedProviderDomainID];
    v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v24 = v23;

    v25 = sub_1CEFD0DF0(v22, v24, &aBlock);
    v24, v26, v27, v28, v29, v30, v31, v32;
    *(v17 + 14) = v25;
    _os_log_impl(&dword_1CEFC7000, v13, v14, "%@ ♻️  invalidating fpfs for %s", v17, 0x16u);
    sub_1CEFCCC44(v18, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1D386CDC0](v19, -1, -1);
    MEMORY[0x1D386CDC0](v17, -1, -1);

    v33 = (*(v122 + 8))(v8, v123);
  }

  else
  {

    v33 = (*(v2 + 8))(v8, v1);
  }

  v120 = &v116;
  v34 = *&v12[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startupQueue];
  MEMORY[0x1EEE9AC00](v33);
  v121 = v12;
  *(&v116 - 2) = v12;
  v35 = fpfs_current_log();
  v36 = fpfs_adopt_log();
  v132 = 0;
  v133 = 1;
  aBlock = sub_1CF9E73C8();
  v125 = v37;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v38 = sub_1CF9E7988();
  v40 = v39;
  MEMORY[0x1D3868CC0](v38);
  v40, v41, v42, v43, v44, v45, v46, v47;
  v48 = v125;
  sub_1CF9E6978();
  v48, v49, v50, v51, v52, v53, v54, v55;
  v56 = __fp_log_fork();

  v132 = v56;
  v133 = 0;
  MEMORY[0x1EEE9AC00](v57);
  *(&v116 - 8) = v35;
  *(&v116 - 7) = &v132;
  *(&v116 - 6) = v34;
  *(&v116 - 5) = "invalidate()";
  *(&v116 - 4) = 12;
  *(&v116 - 24) = 2;
  *(&v116 - 2) = sub_1CF8F067C;
  *(&v116 - 1) = (&v116 - 4);
  v131 = 2;
  v130 = 0;
  v58 = swift_allocObject();
  v58[2] = &v131;
  v58[3] = sub_1CF8F06EC;
  v58[4] = &v116 - 10;
  v58[5] = &v130;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_1CF8F0704;
  *(v59 + 24) = v58;
  v128 = sub_1CEFFD054;
  v129 = v59;
  aBlock = MEMORY[0x1E69E9820];
  v125 = 1107296256;
  v126 = sub_1CEFFD02C;
  v127 = &block_descriptor_48;
  v60 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v34, v60);
  _Block_release(v60);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v130)
  {
LABEL_25:
    swift_willThrow();

    v114 = fpfs_adopt_log();
    __break(1u);
    goto LABEL_26;
  }

  v61 = v131;
  v62 = v121;
  if (v131 == 2)
  {
    goto LABEL_22;
  }

  v63 = fpfs_adopt_log();

  if (v61)
  {
    v64 = fpfs_current_or_default_log();
    v65 = v117;
    sub_1CF9E6128();
    v66 = v119;
    v67 = v119;
    v68 = sub_1CF9E6108();
    v69 = sub_1CF9E72C8();

    v70 = os_log_type_enabled(v68, v69);
    v72 = v122;
    v71 = v123;
    if (!v70)
    {
LABEL_19:
      v112 = v118;

      (*(v72 + 8))(v65, v71);
      v113 = fpfs_adopt_log();

      return;
    }

    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v73 = 138412290;
    v75 = [v67 leave];
    *(v73 + 4) = v75;
    *v74 = v75;
    _os_log_impl(&dword_1CEFC7000, v68, v69, "%@", v73, 0xCu);
LABEL_17:
    sub_1CEFCCC44(v74, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v74, -1, -1);
    MEMORY[0x1D386CDC0](v73, -1, -1);
    goto LABEL_19;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_23;
  }

  v77 = Strong;
  v78 = [Strong extensionBackend];

  if (!v78)
  {
    goto LABEL_23;
  }

  [v78 invalidate];
  v79 = swift_unknownObjectRelease();
  v120 = &v116;
  v80 = *&v62[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  MEMORY[0x1EEE9AC00](v79);
  *(&v116 - 2) = v62;
  v81 = fpfs_current_log();
  v82 = fpfs_adopt_log();
  v132 = 0;
  v133 = 1;
  aBlock = sub_1CF9E73C8();
  v125 = v83;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v84 = sub_1CF9E7988();
  v86 = v85;
  MEMORY[0x1D3868CC0](v84);
  v86, v87, v88, v89, v90, v91, v92, v93;
  v94 = v125;
  sub_1CF9E6978();
  v94, v95, v96, v97, v98, v99, v100, v101;
  v102 = __fp_log_fork();

  v121 = &v116;
  v132 = v102;
  v133 = 0;
  MEMORY[0x1EEE9AC00](v103);
  *(&v116 - 8) = v81;
  *(&v116 - 7) = &v132;
  *(&v116 - 6) = v80;
  *(&v116 - 5) = "invalidate()";
  *(&v116 - 4) = 12;
  *(&v116 - 24) = 2;
  *(&v116 - 2) = sub_1CF8F0710;
  *(&v116 - 1) = (&v116 - 4);
  v131 = 1;
  v130 = 0;
  v104 = swift_allocObject();
  v104[2] = &v131;
  v104[3] = sub_1CF2B1698;
  v104[4] = &v116 - 10;
  v104[5] = &v130;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_1CF2B16B0;
  *(v105 + 24) = v104;
  v128 = sub_1CF1C0B54;
  v129 = v105;
  aBlock = MEMORY[0x1E69E9820];
  v125 = 1107296256;
  v126 = sub_1CEFFD02C;
  v127 = &block_descriptor_61_0;
  v106 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v80, v106);
  _Block_release(v106);
  LOBYTE(v80) = swift_isEscapingClosureAtFileLocation();

  if (v80)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v130)
  {
    v65 = v116;
    if ((v131 & 1) == 0)
    {

      v107 = fpfs_adopt_log();

      v108 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v66 = v119;
      v109 = v119;
      v68 = sub_1CF9E6108();
      v110 = sub_1CF9E72C8();

      if (!os_log_type_enabled(v68, v110))
      {
        v72 = v122;
        v71 = v123;
        goto LABEL_19;
      }

      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v73 = 138412290;
      v111 = [v109 leave];
      *(v73 + 4) = v111;
      *v74 = v111;
      _os_log_impl(&dword_1CEFC7000, v68, v110, "%@", v73, 0xCu);
      v72 = v122;
      v71 = v123;
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_26:
  swift_willThrow();

  v115 = fpfs_adopt_log();
  __break(1u);
}

void sub_1CF84BC84(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_periodicFPCKRunner];
  if (v2)
  {
    *(v2 + 97) = 0;
  }

  if (qword_1EDEA5DA0 != -1)
  {
    swift_once();
  }

  [qword_1EDEBB830 removeWatcher_];
  if (*&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_enumerationAnchorChangedSource])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
  }

  if (*&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_itemsChangedSource])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
  }

  if (*&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_onActivatePendingSetNotification])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
  }

  if (*&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetSource])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
  }

  v32 = 0;
  v3 = a1;
  sub_1CF517174(v3, &v32, v3);
  v5 = v32;
  if (!v32)
  {
    __break(1u);
    goto LABEL_32;
  }

  v6 = *v32->tree;
  if (v6)
  {
    v7 = &v32[1];
    do
    {
      sub_1CEFF6FC0(v7, v31);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong invalidate];
        swift_unknownObjectRelease();
      }

      sub_1CEFF70F4(v31);
      v7 += 16;
      --v6;
    }

    while (v6);
  }

  v4 = objc_sync_enter(v3);
  if (v4)
  {
LABEL_32:
    MEMORY[0x1EEE9AC00](v4);
    v30 = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v29, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v9 = *&v3[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs];

  v10 = objc_sync_exit(v3);
  if (v10)
  {
    MEMORY[0x1EEE9AC00](v10);
    v30 = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v29, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if (v9 || (MEMORY[0x1EEE9AC00](v10), v30 = v3, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4C28, &qword_1CFA17E60), sub_1CF9E7398(), (v9 = v31[0]) != 0))
  {
    v18 = *(v9 + 56);
    sub_1CF7A69C4();
    v19 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer;
    if (*(v18 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1CF9E7448();
      swift_unknownObjectRelease();
      if (*(v18 + v19))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1CF9E7418();
        swift_unknownObjectRelease();
      }
    }

    sub_1CF01001C(0, "deactivate()", 12, 2, sub_1CF902D84, v18);

    v20 = *(v9 + 64);
    sub_1CF7A69C4();
    v21 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer;
    if (*(v20 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1CF9E7448();
      swift_unknownObjectRelease();
      if (*(v20 + v21))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1CF9E7418();
        swift_unknownObjectRelease();
      }
    }

    sub_1CF01001C(0, "deactivate()", 12, 2, sub_1CF902D84, v20);

    *(v9 + 24) = 1;
    sub_1CF6C0474();
    sub_1CF8E976C(0);
    v5, v22, v23, v24, v25, v26, v27, v28;
  }

  else
  {
    v5, v11, v12, v13, v14, v15, v16, v17;
  }
}

void sub_1CF84C174(_TtC18FileProviderDaemon8FSTester **a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_runningEnumerator;
  swift_beginAccess();
  v12 = *(a2 + v4);
  v13 = *(v12 + 16);
  if (!v13)
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v16 = *a1;
    *a1 = v14;
    v16, v5, v6, v7, v8, v9, v10, v11;
    v17 = sub_1CF4E3E68(MEMORY[0x1E69E7CC0]);
    v18 = *(a2 + v4);
    *(a2 + v4) = v17;
    v18, v19, v20, v21, v22, v23, v24, v25;
    return;
  }

  v14 = sub_1CF1F8D84(v13, 0);
  v27 = sub_1CF1FA5F4(&v26, &v14[1], v13, v12);
  v15 = v26;

  sub_1CEFCB59C(v15);
  if (v27 == v13)
  {
    goto LABEL_5;
  }

  __break(1u);
}

void FPDDomainFPFSBackend.isProvider(forRealPathURL:)(uint64_t a1)
{
  v20 = a1;
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CEFCE64C();
  v13 = 0;
  v14 = *v12->tree;
  v18 = v2 + 8;
  v19 = v2 + 16;
  while (1)
  {
    if (v14 == v13)
    {
LABEL_5:
      v12, v5, v6, v7, v8, v9, v10, v11;
      return;
    }

    if (v13 >= *v12->tree)
    {
      break;
    }

    (*(v2 + 16))(v4, v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v13++, v1);
    v15 = sub_1CF9E5928();
    (*(v2 + 8))(v4, v1);
    v16 = sub_1CF9E5928();
    v17 = [v15 fp:v16 realPathRelationshipToItemAtRealPathURL:{v18, v19, v20}];

    if (v17 <= 1)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

double FPDDomainFPFSBackend.registerFPCKProgress(_:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = a1;
  sub_1CEFD4024("registerFPCKProgress(_:)", 24, 2, nullsub_1, 0, sub_1CF8F072C, v2);

  return result;
}

double FPDDomainFPFSBackend.dumpState(to:options:request:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a4;
  v11[6] = a5;
  swift_retain_n();
  v12 = v5;
  v13 = a1;
  sub_1CEFD4024("dumpState(to:options:request:completionHandler:)", 48, 2, sub_1CF90324C, v10, sub_1CF8F0758, v11);

  return result;
}

double sub_1CF84C7F0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a1;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = a6;
  v13 = a2;
  v14 = a3;

  sub_1CF01001C(0, "dumpState(to:options:request:completionHandler:)", 48, 2, sub_1CF901D70, v12);

  return result;
}

uint64_t sub_1CF84C8C8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v30 = a4;
  v8 = sub_1CF0878B4();
  v16 = v8;
  if (*v8->tree)
  {
    v17 = sub_1CF9E6888();
    [a2 put_];

    v37 = &type metadata for SubFPCTLTermDumper;
    v38 = &off_1F4C03038;
    v34 = a2;
    v35 = 538976288;
    v36 = 0xE400000000000000;
    v18 = a2;
    sub_1CF84CAA8(&v34, v16);
    v16, v19, v20, v21, v22, v23, v24, v25;
    __swift_destroy_boxed_opaque_existential_1(&v34);
  }

  else
  {
    v8, v9, v10, v11, v12, v13, v14, v15;
  }

  v26 = sub_1CF9E6888();
  [a2 put_];

  v37 = &type metadata for SubFPCTLTermDumper;
  v38 = &off_1F4C03038;
  v34 = a2;
  v35 = 538976288;
  v36 = 0xE400000000000000;
  MEMORY[0x1EEE9AC00](v27);
  v28 = a2;
  sub_1CF052DA4(a1, sub_1CF901D80);
  sub_1CF76385C(&v34, v30 & 1, 0);
  __swift_destroy_boxed_opaque_existential_1(&v34);
  return a5(0);
}

void sub_1CF84CAA8(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a2 + 32;
    do
    {
      v5 = a1[3];
      v6 = a1[4];
      v4 += 16;
      __swift_project_boxed_opaque_existential_1(a1, v5);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE690, &qword_1CF9FE4E8);
      sub_1CF9E7B58();
      sub_1CF4FB2BC(0, 0xE000000000000000, v5, v6);
      swift_unknownObjectRelease();
      0xE000000000000000, v7, v8, v9, v10, v11, v12, v13;
      --v2;
    }

    while (v2);
  }
}

void sub_1CF84CB9C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetState;
  swift_beginAccess();
  sub_1CEFCCBDC(a1 + v7, v6, &qword_1EC4C49F8, &qword_1CFA17AF8);
  v8 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  LODWORD(a1) = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_1CEFCCC44(v6, &qword_1EC4C49F8, &qword_1CFA17AF8);
  if (a1 != 1)
  {
    v9 = a2[3];
    v10 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v9);
    sub_1CF4FB2BC(0xD000000000000015, 0x80000001CFA5F080, v9, v10);
  }
}

double FPDDomainFPFSBackend.waitForChanges(below:request:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  swift_retain_n();
  v10 = a1;
  v11 = a2;
  sub_1CEFD4024("waitForChanges(below:request:completionHandler:)", 48, 2, sub_1CF90324C, v8, sub_1CF8F0770, v9);

  return result;
}

double sub_1CF84CF58(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = v10 | 0x5000000000000004;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = v12;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v11;
  v14[5] = sub_1CF902EC0;
  v14[6] = v13;
  v15 = a2;
  v16 = a3;

  sub_1CF817EE4(v15, v11, sub_1CF901AB4, v14);

  return result;
}

double FPDDomainFPFSBackend.waitForStabilization(for:mode:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  swift_retain_n();
  v10 = a1;
  sub_1CEFD4024("waitForStabilization(for:mode:completionHandler:)", 49, 2, sub_1CF90324C, v8, sub_1CF8F077C, v9);

  return result;
}

double sub_1CF84D324(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v10 = v9 | 0x5000000000000006;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1CF902EC0;
  *(v13 + 24) = v12;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = v10;
  v14[4] = a3;
  v14[5] = sub_1CF902EC0;
  v14[6] = v12;
  swift_retain_n();
  v15 = a2;

  sub_1CF7AAF88("waitForStabilization(request:mode:_:)", 37, 2, 2, sub_1CF90324C, v13, sub_1CF90338C, v14);

  return result;
}

uint64_t sub_1CF84D640(uint64_t a1, int a2, unint64_t a3, void (*a4)(void, id), uint64_t a5)
{
  v79 = a5;
  v80 = a3;
  v81 = a4;
  v77 = a2;
  v78 = a1;
  v6 = sub_1CF9E6118();
  v75 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v73 - v13;
  v15 = *&v5[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID];
  v82 = v5;
  v16 = sub_1CEFCE64C();
  v24 = v16;
  v73 = v6;
  v74 = v14;
  if (!*v16->tree)
  {
    v25 = v10;
    v37 = v79;
    v39 = v15;
    v16, v17, v18, v19, v20, v21, v22, v23;
    v40 = v78;
LABEL_9:
    v41 = v76;
    (*(v25 + 16))(v76, v40, v9);
    v42 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v43 = swift_allocObject();
    v44 = v81;
    *(v43 + 16) = v81;
    *(v43 + 24) = v37;
    (*(v25 + 32))(v43 + v42, v41, v9);
    v45 = v43 + ((v42 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    v46 = v80;
    *v45 = v80;
    *(v45 + 8) = v77 & 1;
    *(v43 + ((v42 + v11 + 23) & 0xFFFFFFFFFFFFFFF8)) = v39;
    swift_retain_n();
    sub_1CEFD09A0(v46);

    v47 = v39;
    sub_1CF8EBFCC("itemID(for:requireProviderItemID:userRequest:completionHandler:)", 64, 2, sub_1CF903310, v43, v82, v44, v37);
  }

  v25 = v10;
  v26 = v74;
  (*(v10 + 16))(v74, v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);
  v24, v27, v28, v29, v30, v31, v32, v33;
  v34 = v78;
  if ((sub_1CF9E59A8() & 1) == 0)
  {
    v36 = v10;
    v37 = v79;
    v38 = v9;
    v39 = v15;
    goto LABEL_8;
  }

  v35 = v15;
  if (*&v82[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs] || (v82[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_invalidated] & 1) != 0)
  {
    v36 = v25;
    v37 = v79;
    v38 = v9;
    v39 = v15;
LABEL_8:
    (*(v36 + 8))(v26, v38);
    v40 = v34;
    goto LABEL_9;
  }

  v49 = fpfs_current_or_default_log();
  v50 = v8;
  sub_1CF9E6128();
  v51 = v80;
  sub_1CEFD09A0(v80);
  v52 = sub_1CF9E6108();
  v53 = sub_1CF9E7298();
  sub_1CEFD0A98(v51);
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v83 = v55;
    *v54 = 136446210;
    v56 = sub_1CEFD11AC(v51);
    v57 = v25;
    v58 = v35;
    v60 = v59;
    v61 = sub_1CEFD0DF0(v56, v59, &v83);
    v62 = v60;
    v35 = v58;
    v25 = v57;
    v62, v63, v64, v65, v66, v67, v68, v69;
    *(v54 + 4) = v61;
    _os_log_impl(&dword_1CEFC7000, v52, v53, "Going through fast-path for the rootItem at startup for %{public}s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x1D386CDC0](v55, -1, -1);
    MEMORY[0x1D386CDC0](v54, -1, -1);
  }

  (*(v75 + 8))(v50, v73);
  v70 = sub_1CF75C4E8(*MEMORY[0x1E6967258], 1);
  v71 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:v35 itemIdentifier:v70];

  v72 = v71;
  v81(v71, 0);

  return (*(v25 + 8))(v74, v9);
}

void sub_1CF84DB6C(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, unint64_t a5, int a6, void *a7)
{
  v136 = a7;
  v132 = a6;
  v140 = a4;
  v141 = a5;
  v135 = sub_1CF9E5A58();
  v130 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v129 = v10;
  v134 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6118();
  v137 = *(v11 - 8);
  v138 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v131 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v133 = &v126 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v126 - v16;
  v18 = type metadata accessor for VFSItem(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v128 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v127 = &v126 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v126 - v24;
  v26 = swift_allocObject();
  v139 = a2;
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  v28[2] = sub_1CF90325C;
  v28[3] = v26;
  v28[4] = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1CF8F9F30;
  *(v29 + 24) = v28;
  v143 = v29;
  v144 = a3;
  swift_retain_n();

  v142 = v27;

  v30 = v140;
  sub_1CF010CE0(v140, 0, 2, 1, v17);
  v31 = v19;
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    sub_1CEFDA0C4(v17, v25, type metadata accessor for VFSItem);
    if (v132)
    {

      v126 = a1;
      v144 = *(a1 + 16);
      v50 = swift_allocObject();
      v138 = sub_1CF903440;
      v139 = v50;
      v51 = v143;
      *(v50 + 16) = sub_1CF903440;
      *(v50 + 24) = v51;
      v52 = v127;
      sub_1CEFDA34C(v25, v127, type metadata accessor for VFSItem);
      v53 = v130;
      (*(v130 + 16))(v134, v30, v135);
      v54 = *(v31 + 80);
      v142 = v25;
      v55 = (v54 + 24) & ~v54;
      v56 = (v20 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
      v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
      v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
      v59 = (*(v53 + 80) + v58 + 16) & ~*(v53 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = v126;
      sub_1CEFDA0C4(v52, v60 + v55, type metadata accessor for VFSItem);
      v61 = v141;
      *(v60 + v56) = v141;
      v62 = v135;
      v63 = v136;
      *(v60 + v57) = v136;
      v64 = (v60 + v58);
      *v64 = v138;
      v64[1] = v51;
      (*(v53 + 32))(v60 + v59, v134, v62);
      v65 = swift_allocObject();
      v66 = v139;
      *(v65 + 16) = sub_1CF90325C;
      *(v65 + 24) = v66;

      sub_1CEFD09A0(v61);

      v67 = v63;

      sub_1CF7AAF88("itemID(for:requireProviderItemID:userRequest:completionHandler:)", 64, 2, 2, sub_1CF7BA950, v65, sub_1CF8F9F40, v60);

      v68 = v142;
LABEL_19:
      sub_1CEFD5338(v68, type metadata accessor for VFSItem);
      return;
    }

    v69 = fpfs_current_or_default_log();
    v70 = v131;
    sub_1CF9E6128();
    v71 = v128;
    sub_1CEFDA34C(v25, v128, type metadata accessor for VFSItem);
    v72 = v141;
    sub_1CEFD09A0(v141);
    v73 = sub_1CF9E6108();
    v74 = sub_1CF9E7298();
    sub_1CEFD0A98(v72);
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v145 = v76;
      *v75 = 136315394;
      v77 = *(v71 + 8);
      v147 = *v71;
      LOBYTE(v148) = v77;
      v78 = VFSItemID.description.getter(v76);
      v80 = v79;
      sub_1CEFD5338(v71, type metadata accessor for VFSItem);
      v81 = sub_1CEFD0DF0(v78, v80, &v145);
      v80, v82, v83, v84, v85, v86, v87, v88;
      *(v75 + 4) = v81;
      *(v75 + 12) = 2082;
      v89 = sub_1CEFD11AC(v72);
      v91 = v90;
      v92 = sub_1CEFD0DF0(v89, v90, &v145);
      v91, v93, v94, v95, v96, v97, v98, v99;
      *(v75 + 14) = v92;
      _os_log_impl(&dword_1CEFC7000, v73, v74, "found vfs item %s for %{public}s", v75, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v76, -1, -1);
      MEMORY[0x1D386CDC0](v75, -1, -1);

      v100 = (*(v137 + 8))(v131, v138);
    }

    else
    {

      sub_1CEFD5338(v71, type metadata accessor for VFSItem);
      v100 = (*(v137 + 8))(v70, v138);
    }

    v101 = *v25;
    v102 = v25[8];
    if (v102 != 2 || v101)
    {
      if (v102 != 2 || v101 != 1)
      {
        v147 = 0x2F73662F70665F5FLL;
        v148 = 0xE800000000000000;
        v145 = v101;
        v146 = v102;
        v105 = VFSItemID.description.getter(v100);
        v107 = v106;
        MEMORY[0x1D3868CC0](v105);
        v107, v108, v109, v110, v111, v112, v113, v114;
        v115 = v148;
        v104 = sub_1CF9E6888();
        v115, v116, v117, v118, v119, v120, v121, v122;
        goto LABEL_18;
      }

      v103 = MEMORY[0x1E6967280];
    }

    else
    {
      v103 = MEMORY[0x1E6967258];
    }

    v104 = *v103;
LABEL_18:
    v123 = objc_allocWithZone(MEMORY[0x1E69673A0]);
    v124 = [v123 initWithProviderDomainID:v136 itemIdentifier:v104];

    v125 = v124;
    v139(v124, 0);

    v68 = v25;
    goto LABEL_19;
  }

  sub_1CEFCCC44(v17, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v32 = fpfs_current_or_default_log();
  v33 = v133;
  sub_1CF9E6128();
  v34 = v141;
  sub_1CEFD09A0(v141);
  v35 = sub_1CF9E6108();
  v36 = sub_1CF9E7298();
  sub_1CEFD0A98(v34);
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v147 = v38;
    *v37 = 136446210;
    v39 = sub_1CEFD11AC(v34);
    v41 = v40;
    v42 = sub_1CEFD0DF0(v39, v40, &v147);
    v41, v43, v44, v45, v46, v47, v48, v49;
    *(v37 + 4) = v42;
    _os_log_impl(&dword_1CEFC7000, v35, v36, "no vfs item for %{public}s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1D386CDC0](v38, -1, -1);
    MEMORY[0x1D386CDC0](v37, -1, -1);
  }

  (*(v137 + 8))(v33, v138);
  v139(0, 0);
}

void sub_1CF84E5CC(void *a1, uint64_t a2, uint64_t *a3, unint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v187 = a8;
  v196 = a5;
  v197 = a7;
  v195 = a6;
  v201 = a4;
  v11 = sub_1CF9E6118();
  v198 = *(v11 - 8);
  v199 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v200 = &v181 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v189 = &v181 - v14;
  v191 = sub_1CF9E5A58();
  v193 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v186 = v15;
  v190 = &v181 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for VFSItem(0);
  v185 = *(v16 - 8);
  v17 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v192 = &v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v202 = &v181 - v19;
  v20 = a1[3];
  v21 = a1[4];
  v22 = __swift_project_boxed_opaque_existential_1(a1, v20);
  v188 = a2;
  v23 = *(a2 + 16);
  v24 = *(v23 + 16);
  v25 = *a3;
  v194 = a3;
  v26 = *(a3 + 8);
  v205 = v25;
  v206 = v26;
  v27 = *(*v24 + 160);

  v28 = v22;
  v29 = v203;
  v27(v204, &v205, v28, v20, v21);

  if (v29)
  {
    return;
  }

  v184 = 0;
  v30 = v26;
  v31 = v25;
  v182 = v17;
  v32 = v202;
  v33 = v192;
  v34 = v193;
  v35 = v194;
  v36 = v200;
  v183 = v23;
  v37 = v204[0];
  if (!v204[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
    v82 = swift_allocObject();
    v203 = v82;
    *(v82 + 32) = v31;
    v200 = (v82 + 32);
    *(v82 + 40) = v30;
    *(v82 + 41) = 0;
    *(v82 + 16) = v31;
    *(v82 + 24) = v30;
    *(v82 + 25) = 0;
    sub_1CEFDA34C(v35, v32, type metadata accessor for VFSItem);
    (*(v34 + 16))(v190, v187, v191);
    v83 = (*(v185 + 80) + 16) & ~*(v185 + 80);
    v84 = (v182 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
    v85 = (v84 + 15) & 0xFFFFFFFFFFFFFFF8;
    v86 = (v85 + 23) & 0xFFFFFFFFFFFFFFF8;
    v87 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
    v88 = (*(v34 + 80) + v87 + 8) & ~*(v34 + 80);
    v89 = swift_allocObject();
    sub_1CEFDA0C4(v202, v89 + v83, type metadata accessor for VFSItem);
    v90 = v201;
    *(v89 + v84) = v201;
    v91 = (v89 + v85);
    v92 = v196;
    v93 = v197;
    *v91 = v195;
    v91[1] = v93;
    *(v89 + v86) = v188;
    *(v89 + v87) = v92;
    v94 = v89 + v88;
    v95 = v90;
    (*(v34 + 32))(v94, v190, v191);
    v96 = objc_allocWithZone(MEMORY[0x1E696AE38]);
    sub_1CEFD09A0(v95);

    v97 = v92;
    v202 = [v96 init];
    v98 = swift_allocObject();
    v98[2] = sub_1CF8F9F6C;
    v98[3] = v89;
    v197 = v98;
    v98[4] = v95;
    sub_1CEFD09A0(v95);

    sub_1CEFD09A0(v95);
    v196 = v89;

    v99 = fpfs_current_or_default_log();
    v100 = v189;
    sub_1CF9E6128();
    sub_1CEFD09A0(v95);
    sub_1CEFD09A0(v95);

    v101 = sub_1CF9E6108();
    v102 = sub_1CF9E7298();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v195 = swift_slowAlloc();
      v207 = v195;
      *v103 = 136315906;
      v104 = swift_beginAccess();
      v105 = *(v203 + 32);
      v106 = *(v203 + 40);
      if (*(v203 + 41))
      {
        v107 = NSFileProviderItemIdentifier.description.getter(v105);
        v109 = v108;
        sub_1CEFD0994(v105, v106, 1);
      }

      else
      {
        v205 = *(v203 + 32);
        v206 = v106;
        v107 = VFSItemID.description.getter(v104);
        v109 = v111;
      }

      v112 = sub_1CEFD0DF0(v107, v109, &v207);
      v109, v113, v114, v115, v116, v117, v118, v119;
      *(v103 + 4) = v112;
      *(v103 + 12) = 2080;
      *(v103 + 14) = sub_1CEFD0DF0(0xD000000000000010, 0x80000001CFA2C3C0, &v207);
      *(v103 + 22) = 2080;
      v120 = sub_1CEFD11AC(v95);
      v122 = v121;
      sub_1CEFD0A98(v95);
      sub_1CEFD0A98(v95);
      v123 = sub_1CEFD0DF0(v120, v122, &v207);
      v122, v124, v125, v126, v127, v128, v129, v130;
      *(v103 + 24) = v123;
      *(v103 + 32) = 2048;
      *(v103 + 34) = 0;
      _os_log_impl(&dword_1CEFC7000, v101, v102, "Lookup itemID %s with behavior %s request %s iteration %ld", v103, 0x2Au);
      v131 = v195;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v131, -1, -1);
      MEMORY[0x1D386CDC0](v103, -1, -1);

      (*(v198 + 8))(v189, v199);
    }

    else
    {
      sub_1CEFD0A98(v95);
      sub_1CEFD0A98(v95);

      (*(v198 + 8))(v100, v199);
    }

    v132 = v183;
    swift_beginAccess();
    v133 = *(v203 + 32);
    v134 = *(v203 + 40);
    if (*(v203 + 41))
    {
      v135 = qword_1EDEA34B0;
      v136 = v133;
      if (v135 != -1)
      {
        swift_once();
      }

      v137 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v139 = v138;
      v141 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v147 = v140;
      if (v137 == v141 && v139 == v140)
      {
        v139, v140, v141, v142, v143, v144, v145, v146;
        v147, v148, v149, v150, v151, v152, v153, v154;
        sub_1CEFD0994(v133, v134, 1);
LABEL_21:
        sub_1CF90CAC8(v95, sub_1CF795FDC, v197);
        v155 = v202;
LABEL_27:

        sub_1CEFD0A98(v95);

        return;
      }

      v156 = sub_1CF9E8048();
      v139, v157, v158, v159, v160, v161, v162, v163;
      v147, v164, v165, v166, v167, v168, v169, v170;
      sub_1CEFD0994(v133, v134, 1);
      if (v156)
      {
        goto LABEL_21;
      }
    }

    else if (!v133 && v134 == 2)
    {
      goto LABEL_21;
    }

    if (((v95 >> 58) & 0x3C | (v95 >> 1) & 3) == 0x1E)
    {
      v171 = *((v95 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v172 = v171;
    }

    else
    {
      v173 = swift_allocObject();
      *(v173 + 16) = v95;
      v172 = v173 | 0x7000000000000004;
      v171 = v95;
    }

    v174 = v202;
    sub_1CEFD09A0(v171);
    v175 = swift_allocObject();
    v176 = v197;
    *(v175 + 16) = sub_1CF795FDC;
    *(v175 + 24) = v176;
    *(v175 + 32) = v132;
    *(v175 + 40) = 2;
    v177 = v203;
    *(v175 + 48) = v95;
    *(v175 + 56) = v177;
    *(v175 + 64) = 0;
    *(v175 + 72) = v174;
    *(v175 + 80) = 0;
    v178 = swift_allocObject();
    *(v178 + 16) = v177;
    *(v178 + 24) = v132;
    *(v178 + 32) = 0;
    *(v178 + 40) = sub_1CF795FE8;
    *(v178 + 48) = v175;
    *(v178 + 56) = v172;
    v179 = swift_allocObject();
    *(v179 + 16) = sub_1CF795FE8;
    *(v179 + 24) = v175;
    v155 = v202;

    sub_1CEFD09A0(v95);

    v180 = v155;
    sub_1CEFD09A0(v172);
    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF552448, v179, sub_1CF795FEC, v178);

    sub_1CEFD0A98(v172);
    goto LABEL_27;
  }

  v38 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v39 = v33;
  sub_1CEFDA34C(v35, v33, type metadata accessor for VFSItem);
  v40 = v201;
  sub_1CEFD09A0(v201);
  v41 = v37;
  v42 = sub_1CF9E6108();
  v43 = sub_1CF9E7298();

  sub_1CEFD0A98(v40);
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v204[0] = v45;
    *v44 = 136315650;
    v46 = *(v39 + 8);
    v205 = *v39;
    v206 = v46;
    v47 = VFSItemID.description.getter(v45);
    v49 = v48;
    sub_1CEFD5338(v39, type metadata accessor for VFSItem);
    v50 = sub_1CEFD0DF0(v47, v49, v204);
    v49, v51, v52, v53, v54, v55, v56, v57;
    *(v44 + 4) = v50;
    *(v44 + 12) = 2082;
    v58 = v41;
    v59 = NSFileProviderItemIdentifier.description.getter(v58);
    v61 = v60;

    v62 = sub_1CEFD0DF0(v59, v61, v204);
    v61, v63, v64, v65, v66, v67, v68, v69;
    *(v44 + 14) = v62;
    *(v44 + 22) = 2082;
    v70 = sub_1CEFD11AC(v201);
    v72 = v71;
    v73 = sub_1CEFD0DF0(v70, v71, v204);
    v72, v74, v75, v76, v77, v78, v79, v80;
    *(v44 + 24) = v73;
    _os_log_impl(&dword_1CEFC7000, v42, v43, "found item %s already reconciled with %{public}s for %{public}s", v44, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v45, -1, -1);
    MEMORY[0x1D386CDC0](v44, -1, -1);

    (*(v198 + 8))(v200, v199);
  }

  else
  {

    sub_1CEFD5338(v33, type metadata accessor for VFSItem);
    (*(v198 + 8))(v36, v199);
  }

  v81 = v195;
  v110 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:v196 itemIdentifier:v41];
  v81(v110, 0);
}

void sub_1CF84F278(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void, void *), uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v84 = a8;
  v90 = a7;
  v87 = a6;
  v93 = a5;
  v94 = a4;
  v92 = a3;
  v82 = a2;
  v9 = sub_1CF9E5A58();
  v86 = *(v9 - 8);
  v10 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VFSItem(0);
  v81 = *(v11 - 8);
  v12 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v83 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v79 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v79 - v17;
  v19 = sub_1CF9E6118();
  v88 = *(v19 - 8);
  v89 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v91 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v79 - v22);
  sub_1CEFCCBDC(a1, &v79 - v22, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v23;
    v25 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFDA34C(v82, v18, type metadata accessor for VFSItem);
    v26 = v24;
    v27 = v92;
    sub_1CEFD09A0(v92);
    v28 = sub_1CF9E6108();
    v29 = sub_1CF9E7298();

    sub_1CEFD0A98(v27);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v99[0] = v32;
      *v30 = 136315650;
      v33 = v18[8];
      v97 = *v18;
      v98 = v33;
      v34 = VFSItemID.description.getter(v32);
      v36 = v35;
      sub_1CEFD5338(v18, type metadata accessor for VFSItem);
      v37 = sub_1CEFD0DF0(v34, v36, v99);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v30 + 4) = v37;
      *(v30 + 12) = 2112;
      swift_getErrorValue();
      v45 = Error.prettyDescription.getter(v95, v96);
      *(v30 + 14) = v45;
      *v31 = v45;
      *(v30 + 22) = 2082;
      v46 = sub_1CEFD11AC(v92);
      v48 = v47;
      v49 = sub_1CEFD0DF0(v46, v47, v99);
      v48, v50, v51, v52, v53, v54, v55, v56;
      *(v30 + 24) = v49;
      _os_log_impl(&dword_1CEFC7000, v28, v29, "item %s could not be reconciled with error %@ for %{public}s", v30, 0x20u);
      sub_1CEFCCC44(v31, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v31, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v32, -1, -1);
      MEMORY[0x1D386CDC0](v30, -1, -1);
    }

    else
    {

      sub_1CEFD5338(v18, type metadata accessor for VFSItem);
    }

    (*(v88 + 1))(v91, v89);
    v77 = v94;
    v78 = v24;
    v77(0, v24);
  }

  else
  {
    v88 = type metadata accessor for VFSItem;
    v80 = v15;
    sub_1CEFDA0C4(v23, v15, type metadata accessor for VFSItem);
    v57 = v87;
    v91 = *(v87 + 16);
    v58 = swift_allocObject();
    v89 = v58;
    v59 = v9;
    v79 = v9;
    v60 = v93;
    *(v58 + 16) = v94;
    *(v58 + 24) = v60;
    v61 = v83;
    sub_1CEFDA34C(v15, v83, type metadata accessor for VFSItem);
    v62 = v85;
    v63 = v86;
    (*(v86 + 16))(v85, v84, v59);
    v64 = (*(v81 + 80) + 24) & ~*(v81 + 80);
    v65 = (v12 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
    v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
    v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
    v68 = (*(v63 + 80) + v67 + 16) & ~*(v63 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = v57;
    sub_1CEFDA0C4(v61, v69 + v64, v88);
    v70 = v92;
    *(v69 + v65) = v92;
    v71 = v90;
    *(v69 + v66) = v90;
    v72 = (v69 + v67);
    v73 = v93;
    *v72 = v94;
    v72[1] = v73;
    (*(v63 + 32))(v69 + v68, v62, v79);
    v74 = swift_allocObject();
    v75 = v89;
    *(v74 + 16) = sub_1CF90325C;
    *(v74 + 24) = v75;

    sub_1CEFD09A0(v70);

    v76 = v71;

    sub_1CF7AAF88("itemID(for:requireProviderItemID:userRequest:completionHandler:)", 64, 2, 2, sub_1CF9034C4, v74, sub_1CF8FA45C, v69);

    sub_1CEFD5338(v80, type metadata accessor for VFSItem);
  }
}

void sub_1CF84F9B0(void *a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, void (*a6)(id, void), uint64_t a7, uint64_t a8)
{
  v123 = a6;
  v116[1] = a8;
  v117 = a5;
  v122 = a7;
  v120 = a4;
  v11 = type metadata accessor for VFSItem(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v119 = v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v118 = v116 - v14;
  v15 = sub_1CF9E6118();
  v121 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v116 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v23 = __swift_project_boxed_opaque_existential_1(a1, v21);
  v24 = *(*(a2 + 16) + 16);
  v25 = *(a3 + 8);
  v125 = *a3;
  v126 = v25;
  v26 = *(*v24 + 160);

  v27 = v23;
  v28 = v124;
  v26(&v127, &v125, v27, v21, v22);

  if (!v28)
  {
    v30 = v118;
    v29 = v119;
    v31 = v120;
    v116[0] = v15;
    v32 = v127;
    if (v127)
    {
      v33 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v34 = v30;
      sub_1CEFDA34C(a3, v30, type metadata accessor for VFSItem);
      v35 = v32;
      sub_1CEFD09A0(v31);
      v36 = sub_1CF9E6108();
      v37 = sub_1CF9E7298();

      sub_1CEFD0A98(v31);
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v124 = v39;
        v127 = v39;
        *v38 = 136315650;
        v40 = *(v30 + 8);
        v125 = *v30;
        v126 = v40;
        LODWORD(v119) = v37;
        v41 = VFSItemID.description.getter(v39);
        v43 = v42;
        sub_1CEFD5338(v34, type metadata accessor for VFSItem);
        v44 = sub_1CEFD0DF0(v41, v43, &v127);
        v43, v45, v46, v47, v48, v49, v50, v51;
        *(v38 + 4) = v44;
        *(v38 + 12) = 2082;
        v52 = v35;
        v53 = NSFileProviderItemIdentifier.description.getter(v52);
        v118 = v20;
        v54 = v53;
        v56 = v55;

        v57 = sub_1CEFD0DF0(v54, v56, &v127);
        v56, v58, v59, v60, v61, v62, v63, v64;
        *(v38 + 14) = v57;
        *(v38 + 22) = 2082;
        v65 = sub_1CEFD11AC(v31);
        v67 = v66;
        v68 = sub_1CEFD0DF0(v65, v66, &v127);
        v67, v69, v70, v71, v72, v73, v74, v75;
        *(v38 + 24) = v68;
        _os_log_impl(&dword_1CEFC7000, v36, v119, "item %s reconciled with %{public}s for %{public}s", v38, 0x20u);
        v76 = v124;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v76, -1, -1);
        MEMORY[0x1D386CDC0](v38, -1, -1);

        (*(v121 + 8))(v118, v116[0]);
      }

      else
      {

        sub_1CEFD5338(v30, type metadata accessor for VFSItem);
        (*(v121 + 8))(v20, v116[0]);
      }

      v112 = v123;
      v113 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:v117 itemIdentifier:v35];
      v112(v113, 0);
    }

    else
    {
      v77 = fpfs_current_or_default_log();
      v78 = v17;
      sub_1CF9E6128();
      v79 = v29;
      sub_1CEFDA34C(a3, v29, type metadata accessor for VFSItem);
      v80 = v31;
      sub_1CEFD09A0(v31);
      v81 = sub_1CF9E6108();
      v82 = sub_1CF9E7298();
      sub_1CEFD0A98(v80);
      v83 = os_log_type_enabled(v81, v82);
      v84 = v116[0];
      v85 = v121;
      if (v83)
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v118 = v87;
        v127 = v87;
        *v86 = 136315394;
        v88 = *(v79 + 8);
        v125 = *v79;
        v126 = v88;
        v89 = VFSItemID.description.getter(v87);
        v124 = v78;
        v91 = v90;
        sub_1CEFD5338(v79, type metadata accessor for VFSItem);
        v92 = sub_1CEFD0DF0(v89, v91, &v127);
        v91, v93, v94, v95, v96, v97, v98, v99;
        *(v86 + 4) = v92;
        *(v86 + 12) = 2082;
        v100 = sub_1CEFD11AC(v80);
        v102 = v101;
        v103 = sub_1CEFD0DF0(v100, v101, &v127);
        v102, v104, v105, v106, v107, v108, v109, v110;
        *(v86 + 14) = v103;
        _os_log_impl(&dword_1CEFC7000, v81, v82, "item %s not reconciled after propagation attempt %{public}s", v86, 0x16u);
        v111 = v118;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v111, -1, -1);
        MEMORY[0x1D386CDC0](v86, -1, -1);

        (*(v85 + 8))(v124, v116[0]);
      }

      else
      {

        sub_1CEFD5338(v79, type metadata accessor for VFSItem);
        (*(v85 + 8))(v78, v84);
      }

      v114 = v123;
      v115 = sub_1CF9E5928();
      v113 = FPItemNotFoundErrorAtURL();

      v114(0, v113);
    }
  }
}

void FPDDomainFPFSBackend.itemID(for:requireProviderItemID:request:completionHandler:)(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v29 = a3;
  v30 = a5;
  v28 = a4;
  v26 = a2;
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *&v5[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v25 = [Strong log];
  }

  else
  {
    v25 = 0;
  }

  (*(v8 + 16))(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = v13 + v9;
  v15 = (v13 + v9) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v13, v10, v7);
  *(v17 + v14) = v26 & 1;
  v19 = v28;
  v18 = v29;
  *(v17 + v15 + 8) = v29;
  *(v17 + v16) = v5;
  v20 = (v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  v21 = v30;
  *v20 = v19;
  v20[1] = v21;
  v22 = v18;
  v23 = v5;

  v24 = v25;
  sub_1CF01001C(v25, "itemID(for:requireProviderItemID:request:completionHandler:)", 60, 2, sub_1CF8F0788, v17);
}

double sub_1CF850240(uint64_t a1, int a2, void *a3, uint64_t a4, void (*a5)(void, id), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5210, &unk_1CFA0F4B0);
  v12 = swift_allocBox();
  v14 = v13;
  v15 = *(v11 + 48);
  v16 = *(v11 + 64);
  v17 = sub_1CF9E5A58();
  (*(*(v17 - 8) + 16))(v14, a1, v17);
  *(v14 + v15) = a2;
  *(v14 + v16) = a3;
  v18 = a3;
  sub_1CF84D640(a1, a2, v12 | 0x8000000000000000, a5, a6);

  return result;
}

double FPDDomainFPFSBackend.item(for:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:request:completionHandler:)(void *a1, int a2, int a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1CEFD4E9C([a1 identifier]);
  v13 = swift_allocObject();
  *(v13 + 16) = [a1 identifier];
  *(v13 + 24) = a4;
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;
  v15 = a4;

  sub_1CEFD0300(v12, a2, a3, v13 | 0x9000000000000000, sub_1CF903268, v14);

  return result;
}

void sub_1CF8505B0(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7, int a8, char a9)
{
  LODWORD(v277) = a8;
  v284 = a7;
  v283 = a6;
  v280 = a5;
  v285 = a4;
  v287 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v260 = &v255 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v261 = &v255 - v14;
  v274 = sub_1CF9E6388();
  v273 = *(v274 - 8);
  MEMORY[0x1EEE9AC00](v274);
  v272 = &v255 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v270 = &v255 - v17;
  v271 = sub_1CF9E6498();
  v269 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271);
  v268 = &v255 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v266 = &v255 - v20;
  v276 = sub_1CF9E63D8();
  v275 = *(v276 - 8);
  MEMORY[0x1EEE9AC00](v276);
  v259 = &v255 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v265 = &v255 - v23;
  v279 = sub_1CF9E6448();
  v278 = *(v279 - 8);
  MEMORY[0x1EEE9AC00](v279);
  v267 = &v255 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = sub_1CF9E73D8();
  v263 = *(v264 - 8);
  MEMORY[0x1EEE9AC00](v264);
  v262 = &v255 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = sub_1CF9E6118();
  v281 = *(v282 - 1);
  MEMORY[0x1EEE9AC00](v282);
  v27 = &v255 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v255 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v255 - v32;
  v35 = a1[3];
  v34 = a1[4];
  v36 = __swift_project_boxed_opaque_existential_1(a1, v35);
  swift_beginAccess();
  v37 = a2;
  v38 = v287[2];

  v39 = v286;
  sub_1CF554678(v38, 0, v36, v35, v34, &v297);

  if (v39)
  {
    return;
  }

  v255 = v30;
  v257 = v38;
  v40 = v297;
  v41 = v298;
  v286 = v297;
  v258 = v298;
  if (v299 != 1)
  {
    v64 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v65 = v285;
    sub_1CEFD09A0(v285);
    v66 = sub_1CF9E6108();
    v67 = sub_1CF9E7298();
    sub_1CEFD0A98(v65);
    v68 = os_log_type_enabled(v66, v67);
    v69 = v282;
    v256 = 0;
    if (v68)
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v289 = v71;
      *v70 = 136315394;
      aBlock = v286;
      LOBYTE(v292) = v41;
      v72 = VFSItemID.description.getter(v71);
      v74 = v73;
      v75 = sub_1CEFD0DF0(v72, v73, &v289);
      v74, v76, v77, v78, v79, v80, v81, v82;
      *(v70 + 4) = v75;
      *(v70 + 12) = 2082;
      v83 = sub_1CEFD11AC(v285);
      v85 = v84;
      v86 = sub_1CEFD0DF0(v83, v84, &v289);
      v85, v87, v88, v89, v90, v91, v92, v93;
      *(v70 + 14) = v86;
      _os_log_impl(&dword_1CEFC7000, v66, v67, "lookup %s on disk (request: %{public}s)", v70, 0x16u);
      swift_arrayDestroy();
      v94 = v71;
      v65 = v285;
      MEMORY[0x1D386CDC0](v94, -1, -1);
      MEMORY[0x1D386CDC0](v70, -1, -1);
    }

    (v281)[1](v33, v69);
    v95 = v284;
    v96 = v283;
    v97 = v287;
    v98 = v277;
    v99 = *(v257[4] + 16);
    type metadata accessor for VFSFileTree(0);
    v100 = swift_dynamicCastClassUnconditional();
    v101 = swift_allocObject();
    *(v101 + 16) = v280;
    *(v101 + 24) = v96;
    *(v101 + 32) = v65;
    *(v101 + 40) = v97;
    *(v101 + 48) = v95;
    *(v101 + 56) = v98 & 1;
    sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
    v284 = v100;
    v102 = v100[27];
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1CEFD09A0(v65);
    sub_1CEFCCCA4(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
    v287 = v99;

    v103 = v95;
    v104 = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
    sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
    v105 = v262;
    v106 = v264;
    sub_1CF9E77B8();
    v107 = sub_1CF9E73E8();

    (*(v263 + 8))(v105, v106);
    qos_class_self();
    v108 = v266;
    sub_1CF9E63B8();
    v109 = v275;
    v110 = *(v275 + 48);
    v111 = v276;
    if (v110(v108, 1, v276) == 1)
    {
      (*(v109 + 104))(v265, *MEMORY[0x1E69E7FA0], v111);
      v112 = v110(v108, 1, v111) == 1;
      v113 = v273;
      v114 = v108;
      v115 = v272;
      v116 = v268;
      v117 = v267;
      if (!v112)
      {
        sub_1CEFCCC44(v114, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v109 + 32))(v265, v108, v111);
      v113 = v273;
      v115 = v272;
      v116 = v268;
      v117 = v267;
    }

    ObjectType = swift_getObjectType();
    sub_1CF9E6428();
    v151 = swift_allocObject();
    v152 = v286;
    *(v151 + 16) = v284;
    *(v151 + 24) = v152;
    *(v151 + 32) = v258;
    *(v151 + 40) = 0u;
    *(v151 + 56) = 0u;
    *(v151 + 72) = 0u;
    *(v151 + 88) = 0u;
    *(v151 + 104) = 0u;
    *(v151 + 120) = 0u;
    *(v151 + 136) = 0u;
    *(v151 + 152) = v107;
    *(v151 + 160) = sub_1CF9014F4;
    *(v151 + 168) = v101;

    swift_unknownObjectRetain();

    sub_1CEFD5828(0, v117, sub_1CF72A328, v151, ObjectType);

    (*(v278 + 8))(v117, v279);
    sub_1CF9E6478();
    v153 = v116;
    v154 = v270;
    sub_1CEFD5B64(v270);
    sub_1CEFD5BD8(v115);
    MEMORY[0x1D3869770](v153, v154, v115, ObjectType);
    v155 = *(v113 + 8);
    v156 = v115;
    v157 = v274;
    v155(v156, v274);
    v155(v154, v157);
    (*(v269 + 8))(v153, v271);
    sub_1CF9E7448();

    swift_unknownObjectRelease();
    return;
  }

  v42 = v285;
  if (a9)
  {
    swift_beginAccess();
    v43 = *(v37 + 16);
    v44 = swift_allocObject();
    v45 = v283;
    *(v44 + 16) = v280;
    *(v44 + 24) = v45;
    v46 = v287;
    *(v44 + 32) = v42;
    *(v44 + 40) = v46;
    v47 = v284;
    *(v44 + 48) = v284;
    *(v44 + 56) = v277 & 1;
    v48 = objc_allocWithZone(MEMORY[0x1E696AE38]);
    sub_1CEFD09A0(v42);

    v49 = v47;

    v284 = [v48 init];
    v50 = swift_allocObject();
    v50[2] = sub_1CF90148C;
    v50[3] = v44;
    v50[4] = v42;
    sub_1CEFD09A0(v42);

    sub_1CEFD09A0(v42);

    v51 = fpfs_current_or_default_log();
    v52 = v255;
    sub_1CF9E6128();
    sub_1CEFD09A0(v42);
    sub_1CEFD09A0(v42);

    v53 = sub_1CF9E6108();
    v54 = sub_1CF9E7298();
    v55 = os_log_type_enabled(v53, v54);
    v287 = v50;
    if (v55)
    {
      LODWORD(v283) = v54;
      v256 = 0;
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v288 = v57;
      *v56 = 136315906;
      v58 = swift_beginAccess();
      v59 = *(v43 + 32);
      v60 = *(v43 + 40);
      if (*(v43 + 41))
      {
        v61 = NSFileProviderItemIdentifier.description.getter(v59);
        v63 = v62;
        sub_1CEFD0994(v59, v60, 1);
      }

      else
      {
        v289 = *(v43 + 32);
        v290 = v60;
        v61 = VFSItemID.description.getter(v58);
        v63 = v187;
      }

      v188 = sub_1CEFD0DF0(v61, v63, &v288);
      v63, v189, v190, v191, v192, v193, v194, v195;
      *(v56 + 4) = v188;
      *(v56 + 12) = 2080;
      *(v56 + 14) = sub_1CEFD0DF0(0xD000000000000010, 0x80000001CFA2C3C0, &v288);
      *(v56 + 22) = 2080;
      v196 = v285;
      v197 = sub_1CEFD11AC(v285);
      v199 = v198;
      sub_1CEFD0A98(v196);
      sub_1CEFD0A98(v196);
      v200 = sub_1CEFD0DF0(v197, v199, &v288);
      v199, v201, v202, v203, v204, v205, v206, v207;
      *(v56 + 24) = v200;
      *(v56 + 32) = 2048;
      *(v56 + 34) = 0;
      _os_log_impl(&dword_1CEFC7000, v53, v283, "Lookup itemID %s with behavior %s request %s iteration %ld", v56, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v57, -1, -1);
      v208 = v56;
      v42 = v196;
      MEMORY[0x1D386CDC0](v208, -1, -1);

      (v281)[1](v255, v282);
      v50 = v287;
    }

    else
    {
      sub_1CEFD0A98(v42);
      sub_1CEFD0A98(v42);

      (v281)[1](v52, v282);
    }

    swift_beginAccess();
    v209 = *(v43 + 32);
    v210 = *(v43 + 40);
    if (*(v43 + 41))
    {
      v211 = qword_1EDEA34B0;
      v212 = v209;
      if (v211 != -1)
      {
        swift_once();
      }

      v213 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v215 = v214;
      v217 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v223 = v216;
      if (v213 == v217 && v215 == v216)
      {
        v215, v216, v217, v218, v219, v220, v221, v222;
        v223, v224, v225, v226, v227, v228, v229, v230;
        sub_1CEFD0994(v209, v210, 1);
        v50 = v287;
LABEL_35:
        sub_1CF90CAC8(v42, sub_1CF796A0C, v50);
        v231 = v284;
LABEL_41:

        sub_1CEFD0A98(v42);

        sub_1CEFD0994(v286, v258, 1);

        return;
      }

      v232 = sub_1CF9E8048();
      v215, v233, v234, v235, v236, v237, v238, v239;
      v223, v240, v241, v242, v243, v244, v245, v246;
      sub_1CEFD0994(v209, v210, 1);
      v50 = v287;
      if (v232)
      {
        goto LABEL_35;
      }
    }

    else if (!v209 && v210 == 2)
    {
      goto LABEL_35;
    }

    v279 = v44;
    if (((v42 >> 58) & 0x3C | (v42 >> 1) & 3) == 0x1E)
    {
      v248 = *((v42 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v283 = v248;
    }

    else
    {
      v247 = swift_allocObject();
      *(v247 + 16) = v42;
      v283 = v247 | 0x7000000000000004;
      v248 = v42;
    }

    v231 = v284;
    sub_1CEFD09A0(v248);
    v249 = swift_allocObject();
    *(v249 + 16) = sub_1CF796A0C;
    *(v249 + 24) = v50;
    v250 = v257;
    *(v249 + 32) = v257;
    *(v249 + 40) = 2;
    *(v249 + 48) = v42;
    *(v249 + 56) = v43;
    *(v249 + 64) = 0;
    *(v249 + 72) = v231;
    *(v249 + 80) = 0;
    v251 = swift_allocObject();
    *(v251 + 16) = v43;
    *(v251 + 24) = v250;
    *(v251 + 32) = 0;
    *(v251 + 40) = sub_1CF796A90;
    *(v251 + 48) = v249;
    v252 = v283;
    *(v251 + 56) = v283;
    v253 = swift_allocObject();
    *(v253 + 16) = sub_1CF796A90;
    *(v253 + 24) = v249;

    sub_1CEFD09A0(v285);

    v254 = v231;
    sub_1CEFD09A0(v252);
    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v253, sub_1CF796A9C, v251);

    v42 = v285;

    sub_1CEFD0A98(v252);
    goto LABEL_41;
  }

  v118 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(v42);
  sub_1CEFD0988(v40, v41, 1);
  v119 = sub_1CF9E6108();
  v120 = sub_1CF9E7298();
  sub_1CEFD0994(v40, v41, 1);
  sub_1CEFD0A98(v42);
  v121 = os_log_type_enabled(v119, v120);
  v122 = v281;
  if (v121)
  {
    v123 = v41;
    v124 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v287 = v27;
    v126 = v125;
    aBlock = v125;
    *v124 = 136315394;
    v127 = NSFileProviderItemIdentifier.description.getter(v40);
    v128 = v40;
    v130 = v129;
    sub_1CEFD0994(v128, v123, 1);
    v131 = sub_1CEFD0DF0(v127, v130, &aBlock);
    v130, v132, v133, v134, v135, v136, v137, v138;
    *(v124 + 4) = v131;
    *(v124 + 12) = 2082;
    v139 = sub_1CEFD11AC(v285);
    v141 = v140;
    v142 = sub_1CEFD0DF0(v139, v140, &aBlock);
    v141, v143, v144, v145, v146, v147, v148, v149;
    *(v124 + 14) = v142;
    _os_log_impl(&dword_1CEFC7000, v119, v120, "lookup %s on provider (request: %{public}s)", v124, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v126, -1, -1);
    MEMORY[0x1D386CDC0](v124, -1, -1);

    (v122)[1](v287, v282);
  }

  else
  {

    (v122)[1](v27, v282);
  }

  v158 = v257;
  v159 = *(v257[5] + 16);
  type metadata accessor for FPFileTree(0);
  v160 = swift_dynamicCastClassUnconditional();
  v287 = v159;

  v161 = objc_sync_enter(v158);
  v162 = v280;
  if (v161)
  {
    MEMORY[0x1EEE9AC00](v161);
    *(&v255 - 2) = v158;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v255 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v256 = 0;
  v282 = *&v158[qword_1EDEADB30];
  v277 = v282;
  v163 = objc_sync_exit(v158);
  if (v163)
  {
    MEMORY[0x1EEE9AC00](v163);
    *(&v255 - 2) = v158;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v255 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v164 = swift_allocObject();
  v165 = v284;
  v164[2] = v285;
  v164[3] = v165;
  v166 = v283;
  v164[4] = v162;
  v164[5] = v166;
  v167 = swift_allocObject();
  v167[2] = sub_1CF90145C;
  v167[3] = v164;
  v168 = *(v160 + 160);
  v274 = *(v160 + 168);
  v281 = v168;
  v169 = v278;
  v170 = v261;
  v171 = v279;
  (*(v278 + 56))(v261, 1, 1, v279);
  v172 = swift_allocObject();
  *(v172 + 16) = sub_1CF90326C;
  *(v172 + 24) = v167;
  v173 = swift_allocObject();
  v174 = v286;
  v173[2] = v160;
  v173[3] = v174;
  v173[4] = v282;
  v173[5] = sub_1CF90326C;
  v282 = v173;
  v173[6] = v167;
  v175 = swift_allocObject();
  v175[2] = sub_1CF2BA178;
  v175[3] = v172;
  v176 = v274;
  v175[4] = v274;

  sub_1CEFD09A0(v285);

  v177 = v284;
  sub_1CEFD0988(v174, v258, 1);

  v280 = v277;
  v284 = v167;

  v285 = v164;

  v283 = v172;

  v178 = v176;

  v179 = fpfs_current_log();
  v180 = *(v178 + 16);
  v181 = v260;
  sub_1CEFCCBDC(v170, v260, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v169 + 48))(v181, 1, v171) == 1)
  {
    sub_1CEFCCC44(v181, &unk_1EC4BE370, qword_1CFA01B30);
    LODWORD(v279) = 0;
  }

  else
  {
    v182 = v259;
    sub_1CF9E6438();
    (*(v169 + 8))(v181, v171);
    LODWORD(v279) = sub_1CF9E63C8();
    (*(v275 + 8))(v182, v276);
  }

  v183 = swift_allocObject();
  v183[2] = v179;
  v183[3] = sub_1CF901468;
  v183[4] = v282;
  v295 = sub_1CF2BA17C;
  v296 = v183;
  aBlock = MEMORY[0x1E69E9820];
  v292 = 1107296256;
  v293 = sub_1CEFCA444;
  v294 = &block_descriptor_5651;
  v184 = _Block_copy(&aBlock);
  v185 = v179;

  v295 = sub_1CF901480;
  v296 = v175;
  aBlock = MEMORY[0x1E69E9820];
  v292 = 1107296256;
  v293 = sub_1CEFCA444;
  v294 = &block_descriptor_5654;
  v186 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v180, v281, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v279, v184, v186);

  sub_1CEFD0994(v286, v258, 1);
  _Block_release(v186);
  _Block_release(v184);

  sub_1CEFCCC44(v170, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF851FB4(uint64_t a1, void (*a2)(id, uint64_t), void (*a3)(id, uint64_t), unint64_t a4, uint64_t a5, void *a6, int a7)
{
  v81 = a7;
  v82 = a6;
  v83 = a4;
  v84 = a5;
  v10 = sub_1CF9E6118();
  v78 = *(v10 - 8);
  v79 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VFSItem(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v73 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v85 = &v73 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v73 - v20);
  sub_1CEFCCBDC(a1, &v73 - v20, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    v23 = *v21;
    a2(v22, 1);
  }

  else if ((*(v13 + 48))(v21, 1, v12) == 1)
  {
    a2(0, 0);
  }

  else
  {
    v24 = v85;
    sub_1CEFDA0C4(v21, v85, type metadata accessor for VFSItem);
    v25 = fpfs_current_or_default_log();
    v26 = v77;
    sub_1CF9E6128();
    v27 = v24;
    v28 = v76;
    sub_1CEFDA34C(v27, v76, type metadata accessor for VFSItem);
    v29 = v83;
    sub_1CEFD09A0(v83);
    v30 = sub_1CF9E6108();
    v31 = sub_1CF9E7298();
    sub_1CEFD0A98(v29);
    v32 = os_log_type_enabled(v30, v31);
    v75 = a3;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v86 = v34;
      *v33 = 136315394;
      v74 = v13;
      v35 = v31;
      v36 = sub_1CF255338();
      v37 = v28;
      v38 = v36;
      v40 = v39;
      sub_1CEFD5338(v37, type metadata accessor for VFSItem);
      v41 = sub_1CEFD0DF0(v38, v40, &v86);
      v40, v42, v43, v44, v45, v46, v47, v48;
      *(v33 + 4) = v41;
      *(v33 + 12) = 2082;
      v49 = sub_1CEFD11AC(v29);
      v51 = v50;
      v52 = sub_1CEFD0DF0(v49, v50, &v86);
      v51, v53, v54, v55, v56, v57, v58, v59;
      *(v33 + 14) = v52;
      v60 = v35;
      v13 = v74;
      _os_log_impl(&dword_1CEFC7000, v30, v60, "resolved %s on disk (request: %{public}s)", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v34, -1, -1);
      MEMORY[0x1D386CDC0](v33, -1, -1);
    }

    else
    {

      sub_1CEFD5338(v28, type metadata accessor for VFSItem);
    }

    (*(v78 + 8))(v26, v79);
    v61 = a2;
    v79 = *(v84 + 16);
    v62 = swift_allocObject();
    v63 = v75;
    *(v62 + 16) = v61;
    *(v62 + 24) = v63;
    v64 = v80;
    sub_1CEFDA34C(v85, v80, type metadata accessor for VFSItem);
    v65 = (*(v13 + 80) + 40) & ~*(v13 + 80);
    v66 = (v14 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    v68 = v82;
    *(v67 + 16) = v82;
    *(v67 + 24) = v81 & 1;
    *(v67 + 32) = v84;
    sub_1CEFDA0C4(v64, v67 + v65, type metadata accessor for VFSItem);
    v69 = v83;
    *(v67 + v66) = v83;
    v70 = (v67 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v70 = v61;
    v70[1] = v63;
    v71 = swift_allocObject();
    *(v71 + 16) = sub_1CF2BA178;
    *(v71 + 24) = v62;

    sub_1CEFD09A0(v69);

    v72 = v68;

    sub_1CF7AAF88("item(for:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:userRequest:completionHandler:)", 96, 2, 2, sub_1CF9034C8, v71, sub_1CF901528, v67);

    sub_1CEFD5338(v85, type metadata accessor for VFSItem);
  }
}

void sub_1CF8525E4(uint64_t a1, void (*a2)(id, uint64_t), void (*a3)(id, uint64_t), unint64_t a4, uint64_t a5, void *a6, int a7)
{
  v74 = a7;
  v75 = a6;
  v76 = a5;
  v77 = a4;
  v10 = sub_1CF9E6118();
  v70 = *(v10 - 8);
  v71 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VFSItem(0);
  v72 = *(v12 - 8);
  v13 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v73 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v68 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v68 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v68 - v21);
  sub_1CEFCCBDC(a1, &v68 - v21, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    v24 = *v22;
    a2(v23, 1);
  }

  else
  {
    v68 = a2;
    v69 = a3;
    sub_1CEFDA0C4(v22, v19, type metadata accessor for VFSItem);
    v25 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFDA34C(v19, v16, type metadata accessor for VFSItem);
    v26 = v77;
    sub_1CEFD09A0(v77);
    v27 = sub_1CF9E6108();
    v28 = sub_1CF9E7298();
    sub_1CEFD0A98(v26);
    v29 = v19;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v79 = v31;
      *v30 = 136315394;
      v32 = sub_1CF255338();
      v34 = v33;
      sub_1CEFD5338(v16, type metadata accessor for VFSItem);
      v35 = sub_1CEFD0DF0(v32, v34, &v79);
      v34, v36, v37, v38, v39, v40, v41, v42;
      *(v30 + 4) = v35;
      *(v30 + 12) = 2082;
      v43 = sub_1CEFD11AC(v26);
      v45 = v44;
      v46 = sub_1CEFD0DF0(v43, v44, &v79);
      v45, v47, v48, v49, v50, v51, v52, v53;
      *(v30 + 14) = v46;
      _os_log_impl(&dword_1CEFC7000, v27, v28, "resolved %s on disk (request: %{public}s)", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v31, -1, -1);
      MEMORY[0x1D386CDC0](v30, -1, -1);
    }

    else
    {

      sub_1CEFD5338(v16, type metadata accessor for VFSItem);
    }

    (*(v70 + 8))(v78, v71);
    v54 = v68;
    v55 = v69;
    v56 = v76;
    v78 = *(v76 + 16);
    v57 = swift_allocObject();
    *(v57 + 16) = v54;
    *(v57 + 24) = v55;
    v58 = v73;
    sub_1CEFDA34C(v29, v73, type metadata accessor for VFSItem);
    v59 = (*(v72 + 80) + 40) & ~*(v72 + 80);
    v60 = (v13 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = swift_allocObject();
    v72 = v29;
    v62 = v61;
    v63 = v75;
    *(v61 + 16) = v75;
    *(v61 + 24) = v74 & 1;
    *(v61 + 32) = v56;
    sub_1CEFDA0C4(v58, v61 + v59, type metadata accessor for VFSItem);
    v64 = v77;
    *(v62 + v60) = v77;
    v65 = (v62 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v65 = v54;
    v65[1] = v55;
    v66 = swift_allocObject();
    *(v66 + 16) = sub_1CF2BA178;
    *(v66 + 24) = v57;

    sub_1CEFD09A0(v64);

    v67 = v63;

    sub_1CF7AAF88("item(for:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:userRequest:completionHandler:)", 96, 2, 2, sub_1CF9034C8, v66, sub_1CF9018E4, v62);

    sub_1CEFD5338(v72, type metadata accessor for VFSItem);
  }
}

void sub_1CF852BAC(void *a1, char *a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(void, void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v48 = a7;
  v49 = a8;
  v45 = a6;
  v46 = a5;
  v47 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v44 - v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v17 = Strong, v18 = [Strong indexer], v17, v18))
  {
    v19 = [v18 needsAuthentication];

    v20 = 22;
    if (v19)
    {
      v20 = 30;
    }
  }

  else
  {
    v20 = 22;
  }

  if (a3)
  {
    v21 = v20 | 0x40;
  }

  else
  {
    v21 = v20;
  }

  v22 = a1[3];
  v23 = a1[4];
  v24 = __swift_project_boxed_opaque_existential_1(a1, v22);
  v25 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
  v26 = type metadata accessor for VFSItem(0);
  v27 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree, &unk_1CFA00618);
  v28 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem, &unk_1CF9FFB08);
  v29 = sub_1CF76BB00(v46, v21, 0, v25, v24, v26, v22, v27, &off_1F4BF8588, v28, v23);
  v25, v30, v31, v32, v33, v34, v35, v36;
  v37 = v29;
  if (sub_1CEFF96D0(v37))
  {
    v38 = sub_1CF9E6F08();
    (*(*(v38 - 8) + 56))(v15, 1, 1, v38);
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = v37;
    v39[5] = a2;
    v40 = v45;
    v41 = v48;
    v42 = v49;
    v39[6] = v45;
    v39[7] = v41;
    v39[8] = v42;
    v43 = a2;
    sub_1CEFD09A0(v40);

    sub_1CF6FCFEC(0, 0, v15, a10, v39);
  }

  else
  {

    v48(v37, 0);
  }
}

void sub_1CF852E9C(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v64 = &v56 - v11;
  v12 = sub_1CF9E6118();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    v62 = a3;
    v63 = v16;
    v20 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CF0BA8A4(v16);
    sub_1CEFD09A0(a2);
    v21 = sub_1CF9E6108();
    v22 = a2;
    v23 = sub_1CF9E7298();
    sub_1CF2F6594(v16);
    v61 = v22;
    sub_1CEFD0A98(v22);
    if (os_log_type_enabled(v21, v23))
    {
      v58 = v17;
      v59 = a4;
      v60 = a5;
      v24 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v65 = v57;
      *v24 = 136315394;
      if (v16)
      {
        v25 = [v63 description];
        v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v28 = v27;
      }

      else
      {
        v28 = 0xE500000000000000;
        v26 = 0x3E6C696E3CLL;
      }

      v31 = sub_1CEFD0DF0(v26, v28, &v65);
      v28, v32, v33, v34, v35, v36, v37, v38;
      *(v24 + 4) = v31;
      *(v24 + 12) = 2082;
      v39 = sub_1CEFD11AC(v61);
      v41 = v40;
      v42 = sub_1CEFD0DF0(v39, v40, &v65);
      v41, v43, v44, v45, v46, v47, v48, v49;
      *(v24 + 14) = v42;
      _os_log_impl(&dword_1CEFC7000, v21, v23, "resolved %s on provider (request: %{public}s)", v24, 0x16u);
      v50 = v57;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v50, -1, -1);
      MEMORY[0x1D386CDC0](v24, -1, -1);

      (*(v13 + 8))(v15, v12);
      a4 = v59;
      a5 = v60;
      v29 = v62;
      v30 = v63;
      if (!v16)
      {
        goto LABEL_13;
      }
    }

    else
    {

      (*(v13 + 8))(v15, v12);
      v29 = v62;
      v30 = v63;
      if (!v16)
      {
        goto LABEL_13;
      }
    }

    sub_1CF0BA8A4(v16);
    if (sub_1CEFF96D0(v30))
    {
      v51 = sub_1CF9E6F08();
      v52 = v64;
      (*(*(v51 - 8) + 56))(v64, 1, 1, v51);
      v53 = swift_allocObject();
      v53[2] = 0;
      v53[3] = 0;
      v53[4] = v30;
      v53[5] = v29;
      v54 = v61;
      v53[6] = v61;
      v53[7] = a4;
      v53[8] = a5;
      sub_1CEFD09A0(v54);
      v55 = v29;

      sub_1CF6FCFEC(0, 0, v52, &unk_1CFA18268, v53);

      goto LABEL_14;
    }

    sub_1CF2F6594(v16);
LABEL_13:
    a4(v16, 0);
    goto LABEL_14;
  }

  v65 = *a1;
  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();
  v19 = v16;
  a4(v16, 1);
  sub_1CF2F6594(v16);
LABEL_14:
  sub_1CF2F6594(v16);
}

void FPDDomainFPFSBackend.item(for:options:request:completionHandler:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v31 = a3;
  v32 = a5;
  v38 = a4;
  v33 = a2;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5200, "hx\t");
  v37 = swift_allocBox();
  v13 = v12;
  v14 = *(v11 + 48);
  v15 = *(v11 + 64);
  v16 = *(v9 + 16);
  v34 = a1;
  v35 = v8;
  v16(v12, a1, v8);
  *(v13 + v14) = v33;
  v17 = v31;
  *(v13 + v15) = v31;
  v18 = swift_allocObject();
  v19 = v32;
  *(v18 + 16) = v38;
  *(v18 + 24) = v19;
  v33 = *&v6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v38 = v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  v21 = v17;

  if (Strong)
  {
    v32 = [Strong log];
  }

  else
  {
    v32 = 0;
  }

  v22 = v36;
  v31 = v37 | 0x8000000000000006;
  v23 = v35;
  v16(v36, v34, v35);
  v24 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v25 = (v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v38;
  *(v26 + 16) = v38;
  (*(v9 + 32))(v26 + v24, v22, v23);
  *(v26 + v25) = v31;
  v28 = v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v28 = sub_1CF903268;
  *(v28 + 8) = v18;
  *(v28 + 16) = 257;
  v29 = v27;

  v30 = v32;
  sub_1CF01001C(v32, "item(for:userRequest:hideIgnoredDescendents:tryOptimizeResponsiveness:completionHandler:)", 89, 2, sub_1CF8F0834, v26);
}

id sub_1CF853730(uint64_t a1, uint64_t a2)
{
  v286 = 0;
  v303 = *MEMORY[0x1E69E9840];
  v4 = sub_1CF9E53C8();
  v259 = *(v4 - 8);
  v260 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v258 = &v252 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VFSItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v281 = (&v252 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1CF9E6118();
  v282 = *(v9 - 8);
  v283 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v276 = &v252 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v275 = &v252 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v257 = &v252 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v252 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v262 = &v252 - v19;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  MEMORY[0x1EEE9AC00](v270);
  v263 = (&v252 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v261 = (&v252 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v264 = (&v252 - v24);
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  MEMORY[0x1EEE9AC00](v271);
  v267 = &v252 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v272 = (&v252 - v27);
  v28 = sub_1CF9E5A58();
  v268 = *(v28 - 8);
  v269 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v274 = &v252 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v273 = &v252 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v279 = &v252 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v265 = &v252 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v252 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v252 - v40;
  sub_1CEFCCBDC(a2, &v252 - v40, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v285 = v41;
  sub_1CEFCCBDC(v41, v38, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v266 = v7;
  v42 = v7 + 48;
  v43 = *(v7 + 48);
  v280 = v6;
  LODWORD(v7) = (v43)(v38, 1, v6);
  sub_1CEFCCC44(v38, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v277 = a1;
  if (v7 != 1)
  {
    v276 = v43;
    v278 = v42;
    v61 = v284;
    v55 = v285;
    v63 = v280;
    v62 = v281;
    goto LABEL_7;
  }

  memset(&v302, 0, sizeof(v302));
  sub_1CF9E5A18();
  v45 = v44;
  v46 = sub_1CF9E6978();
  v45, v47, v48, v49, v50, v51, v52, v53;
  LODWORD(v45) = lstat((v46 + 32), &v302);

  if ((v45 & 0x80000000) != 0)
  {
    v95 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v96 = sub_1CF9E6108();
    v97 = sub_1CF9E72A8();
    v98 = os_log_type_enabled(v96, v97);
    v99 = v285;
    if (v98)
    {
      v100 = swift_slowAlloc();
      *v100 = 67109120;
      *(v100 + 4) = MEMORY[0x1D38683F0]();
      _os_log_impl(&dword_1CEFC7000, v96, v97, "Error running lstat for root URL fast path: %d", v100, 8u);
      MEMORY[0x1D386CDC0](v100, -1, -1);
    }

    (*(v282 + 8))(v17, v283);
    v101 = v99;
    goto LABEL_30;
  }

  v278 = v42;
  Strong = swift_unknownObjectWeakLoadStrong();
  v55 = v285;
  if (Strong)
  {
    v56 = v43;
    v57 = Strong;
    v58 = [Strong provider];

    v59 = v286;
    if (v58)
    {
      v60 = [v58 descriptor];

      LODWORD(v256) = [v60 wantsBundleBitOnlyPackageDetection];
    }

    else
    {
      LODWORD(v256) = 0;
    }

    v43 = v56;
    v102 = sub_1CEFCE64C();
    if (v59)
    {
      goto LABEL_26;
    }
  }

  else
  {
    LODWORD(v256) = 0;
    v59 = v286;
    v102 = sub_1CEFCE64C();
    if (v59)
    {
LABEL_26:
      v123 = fpfs_current_or_default_log();
      v124 = v276;
      sub_1CF9E6128();
      v125 = v59;
      v126 = sub_1CF9E6108();
      v127 = sub_1CF9E72A8();

      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        *v128 = 138412290;
        swift_getErrorValue();
        v130 = Error.prettyDescription.getter(v290, v291);
        *(v128 + 4) = v130;
        *v129 = v130;
        _os_log_impl(&dword_1CEFC7000, v126, v127, "Error constructing VFSLookupScope for root URL fast path: %@", v128, 0xCu);
        sub_1CEFCCC44(v129, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v129, -1, -1);
        MEMORY[0x1D386CDC0](v128, -1, -1);
      }

      (*(v282 + 8))(v124, v283);
LABEL_29:
      v101 = v55;
LABEL_30:
      sub_1CEFCCC44(v101, &unk_1EC4BEC00, &unk_1CF9FCB60);
      return 0;
    }
  }

  v103 = v102;
  v286 = v59;
  st_dev = v302.st_dev;
  type metadata accessor for VFSLookupScope(0);
  v105 = swift_allocObject();
  *(v105 + 40) = 0;
  *(v105 + 48) = 1;
  v106 = sub_1CF001108(MEMORY[0x1E69E7CC0]);
  *(v105 + 56) = 0;
  *(v105 + 96) = v106;
  *(v105 + 64) = sub_1CF36581C;
  *(v105 + 72) = 0;
  *(v105 + 80) = v256;
  *(v105 + 84) = 2;
  *(v105 + 88) = 0;
  *(v105 + 90) = 0;
  v107 = v274;
  v108 = st_dev;
  v59 = v286;
  sub_1CF3658E0(v274, v103, v108, 0, &v298);
  if (v59)
  {
    v103, v109, v110, v111, v112, v113, v114, v115;
    sub_1CF2B9AAC(v105 + 64);
    *(v105 + 96), v116, v117, v118, v119, v120, v121, v122;
    swift_deallocPartialClassInstance();
    v55 = v285;
    goto LABEL_26;
  }

  v286 = 0;
  v253 = (v105 + 56);
  v132 = v298;
  LODWORD(v276) = v299;
  v256 = *(&v299 + 1);
  LODWORD(v255) = v300;
  v103, v109, v110, v111, v112, v113, v114, v115;
  v133 = v268;
  v134 = v107;
  v135 = v269;
  v136 = *(v268 + 32);
  v136(v273, v134, v269);
  *(v105 + 16) = v276;
  *(v105 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs) = v132;
  if (!*(v132 + 16))
  {
    goto LABEL_66;
  }

  v276 = v43;
  (*(v133 + 16))(v105 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v132 + ((*(v133 + 80) + 32) & ~*(v133 + 80)), v135);
  *(v105 + 32) = *(&v132 + 1);
  if (!*(*(&v132 + 1) + 16))
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
  }

  *(v105 + 24) = *(*(&v132 + 1) + 32);
  v136((v105 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL), v273, v135);
  *(v105 + 40) = v256;
  *(v105 + 48) = v255;
  *(v105 + 49) = 0;
  v137 = type metadata accessor for VFSFileTree(0);

  sub_1CF9E5A18();
  v139 = v138;
  fpfs_openflags_0(0x208000u);
  sub_1CF9E6978();
  v140 = openat_s();

  v149 = v272;
  v254 = v105;
  if (v140 < 0)
  {
    v177 = MEMORY[0x1D38683F0](v141);
    v300 = 0;
    v298 = 0u;
    v299 = 0u;
    LOBYTE(v301) = 19;
    v172 = sub_1CF19BBE4(v177, &v298);
    sub_1CF1969CC(&v298);
    swift_willThrow();
    v139, v178, v179, v180, v181, v182, v183, v184;
    v61 = v284;
    v55 = v285;
    v63 = v280;
LABEL_53:
    v187 = v172;
    LODWORD(v298) = sub_1CF9E5328();
    sub_1CF196978();
    v188 = sub_1CF9E5658();

    if ((v188 & 1) == 0)
    {
      v192 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v193 = v172;
      v194 = sub_1CF9E6108();
      v195 = sub_1CF9E72A8();

      if (os_log_type_enabled(v194, v195))
      {
        v196 = swift_slowAlloc();
        v197 = swift_slowAlloc();
        *v196 = 138412290;
        swift_getErrorValue();
        v198 = Error.prettyDescription.getter(v288, v289);
        *(v196 + 4) = v198;
        *v197 = v198;
        _os_log_impl(&dword_1CEFC7000, v194, v195, "Error looking up root item for root URL fast path: %@", v196, 0xCu);
        sub_1CEFCCC44(v197, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v197, -1, -1);
        MEMORY[0x1D386CDC0](v196, -1, -1);
      }

      (*(v282 + 8))(v262, v283);
      goto LABEL_29;
    }

    sub_1CEFCCC44(v55, &unk_1EC4BEC00, &unk_1CF9FCB60);

    *v149 = xmmword_1CF9FD930;
    *(v149 + 16) = 2;
    swift_storeEnumTagMultiPayload();
    v62 = v281;
    v185 = v266;
    v175 = v267;
    goto LABEL_55;
  }

  v139, v142, v143, v144, v145, v146, v147, v148;
  v273 = *(v105 + 24);
  v150 = v253;
  os_unfair_lock_lock(v253);
  v152 = *(v105 + 64);
  v151 = *(v105 + 72);
  v153 = *(v105 + 88);
  LODWORD(v274) = v140;
  LODWORD(v269) = *(v105 + 89);
  LODWORD(v268) = *(v105 + 90);

  v154 = *(v105 + 80);
  os_unfair_lock_unlock(v150);
  v255 = &v252;
  MEMORY[0x1EEE9AC00](v155);
  *(&v252 - 10) = v137;
  *(&v252 - 18) = v140;
  *(&v252 - 7) = 0;
  *(&v252 - 6) = 0;
  *(&v252 - 8) = v105;
  *(&v252 - 40) = 2;
  *(&v252 - 4) = 0;
  *(&v252 - 3) = 0;
  LOBYTE(v250) = -1;
  v251 = 0;
  v300 = v152;
  v301 = v151;
  *&v298 = MEMORY[0x1E69E9820];
  *(&v298 + 1) = 1107296256;
  *&v299 = sub_1CEFDB088;
  *(&v299 + 1) = &block_descriptor_5518;
  v156 = _Block_copy(&v298);
  v256 = v151;

  v253 = v156;
  v293 = v156;
  v294 = v154;
  v295 = v153;
  v296 = v269;
  v297 = v268;
  sub_1CEFDB034();
  v157 = swift_allocError();
  *v158 = 6;
  *(v158 + 8) = 0u;
  *(v158 + 24) = 0u;
  *(v158 + 40) = 19;
  v159 = v264;
  *v264 = v157;
  swift_storeEnumTagMultiPayload();
  v160 = swift_allocObject();
  v160[2] = v159;
  v160[3] = sub_1CEFDB7A0;
  v160[4] = &v252 - 12;
  v161 = swift_allocObject();
  *(v161 + 16) = sub_1CEFDB37C;
  *(v161 + 24) = v160;
  v300 = sub_1CEFDB240;
  v301 = v161;
  *&v298 = MEMORY[0x1E69E9820];
  *(&v298 + 1) = 1107296256;
  *&v299 = sub_1CEFDB270;
  *(&v299 + 1) = &block_descriptor_5527;
  v162 = _Block_copy(&v298);

  v163 = fpfs_fgetfileattrs_detailed();
  _Block_release(v162);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_68;
  }

  if (v163)
  {
    swift_getErrorValue();
    v165 = v287;
    v166 = swift_allocError();
    *v167 = 6;
    *(v167 + 8) = 0u;
    *(v167 + 24) = 0u;
    *(v167 + 40) = 19;
    v168 = v163;
    v169 = sub_1CF199074(v166, v165);

    v170 = v261;
    *v261 = v169;
    swift_storeEnumTagMultiPayload();
    sub_1CEFDA9E0(v170, v159, &qword_1EC4BE000, &unk_1CFA006A0);
  }

  v171 = v263;
  sub_1CEFCCBDC(v159, v263, &qword_1EC4BE000, &unk_1CFA006A0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    v149 = v272;
    sub_1CEFE55D0(v171, v272, &unk_1EC4BE2F0, qword_1CFA04220);
    sub_1CEFCCC44(v159, &qword_1EC4BE000, &unk_1CFA006A0);

    _Block_release(v253);

    v61 = v284;
    v55 = v285;
    v63 = v280;
    v175 = v267;
    goto LABEL_49;
  }

  *&v298 = *v171;
  v172 = v298;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();

  sub_1CEFCCC44(v159, &qword_1EC4BE000, &unk_1CFA006A0);

  _Block_release(v253);

  v173 = v172;
  LODWORD(v298) = sub_1CF9E52A8();
  sub_1CF196978();
  v174 = sub_1CF9E5658();

  v61 = v284;
  v55 = v285;
  v175 = v267;
  if ((v174 & 1) == 0)
  {
    close(v274);
    v63 = v280;
    v149 = v272;
    goto LABEL_53;
  }

  v149 = v272;
  *v272 = xmmword_1CF9FD940;
  *(v149 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  v63 = v280;
LABEL_49:
  close(v274);

  sub_1CEFCCC44(v55, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v62 = v281;
  v185 = v266;
LABEL_55:
  sub_1CEFE55D0(v149, v175, &unk_1EC4BE2F0, qword_1CFA04220);
  v189 = (v185 + 56);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v175, &unk_1EC4BE2F0, qword_1CFA04220);
    v190 = 1;
    v191 = v265;
  }

  else
  {
    v191 = v265;
    sub_1CEFDA0C4(v175, v265, type metadata accessor for VFSItem);
    v190 = 0;
  }

  (*v189)(v191, v190, 1, v63);
  sub_1CEFE55D0(v191, v55, &unk_1EC4BEC00, &unk_1CF9FCB60);
LABEL_7:
  v64 = v279;
  sub_1CEFCCBDC(v55, v279, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((v276)(v64, 1, v63) == 1)
  {
    sub_1CEFCCC44(v64, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v65 = fpfs_current_or_default_log();
    v66 = v275;
    sub_1CF9E6128();
    v67 = sub_1CF9E6108();
    v68 = sub_1CF9E72A8();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_1CEFC7000, v67, v68, "Nil item for root URL fast path", v69, 2u);
      MEMORY[0x1D386CDC0](v69, -1, -1);
    }

    (*(v282 + 8))(v66, v283);
    goto LABEL_29;
  }

  sub_1CEFDA0C4(v64, v62, type metadata accessor for VFSItem);
  v70 = *(v61 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID);
  v71 = swift_unknownObjectWeakLoadStrong();
  if (!v71)
  {
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v72 = v71;
  v73 = sub_1CF2CD4D0(v62, v70, v71, 1);

  v74 = sub_1CF9E5928();
  v75 = v73;
  [v73 setFileURL_];

  v76 = v62 + *(v63 + 28);
  if (v76[*(type metadata accessor for ItemMetadata(0) + 72)] != 1)
  {
    goto LABEL_34;
  }

  v77 = sub_1CF9E5A18();
  v79 = v78;
  MEMORY[0x1EEE9AC00](v77);
  MEMORY[0x1EEE9AC00](v80);
  v250 = sub_1CF9011FC;
  v251 = v81;
  v292 = 256;
  *&v298 = 0;
  v82 = swift_allocObject();
  v82[2] = &v292;
  v82[3] = sub_1CF901218;
  v82[4] = &v252 - 4;
  v82[5] = &v298;
  v83 = swift_allocObject();
  *(v83 + 16) = sub_1CF902C7C;
  *(v83 + 24) = v82;
  v302.st_atimespec.tv_sec = sub_1CF50EB9C;
  v302.st_atimespec.tv_nsec = v83;
  *&v302.st_dev = MEMORY[0x1E69E9820];
  v302.st_ino = 1107296256;
  *&v302.st_uid = sub_1CF005DF8;
  *&v302.st_rdev = &block_descriptor_5538;
  v84 = _Block_copy(&v302);

  sub_1CF9E6978();
  LODWORD(v61) = fpfs_openat();

  _Block_release(v84);

  v85 = swift_isEscapingClosureAtFileLocation();

  if (v85)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v94 = v298;
  v62 = v281;
  if (v298)
  {
    swift_willThrow();

LABEL_33:
    v79, v87, v88, v89, v90, v91, v92, v93;
LABEL_34:
    sub_1CEFD5338(v62, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v55, &unk_1EC4BEC00, &unk_1CF9FCB60);
    return v75;
  }

  if ((v61 & 0x80000000) == 0)
  {
    if ((v292 & 0x100) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_70;
  }

  if (MEMORY[0x1D38683F0](v86))
  {
    if (MEMORY[0x1D38683F0]() == 9939394)
    {
      v176 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
    }

    else
    {
      MEMORY[0x1D38683F0]();
      v186 = sub_1CF9E6138();
      if ((v186 & 0x100000000) != 0)
      {
        v302.st_dev = 22;
      }

      else
      {
        v302.st_dev = v186;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v199 = v258;
      v200 = v260;
      sub_1CF9E57D8();
      v176 = sub_1CF9E53A8();
      (*(v259 + 8))(v199, v200);
    }

    swift_willThrow();
    v79, v201, v202, v203, v204, v205, v206, v207;

    goto LABEL_34;
  }

LABEL_71:
  *&v302.st_dev = 0;
  v302.st_ino = 0xE000000000000000;
  sub_1CF9E7948();
  v302.st_ino, v208, v209, v210, v211, v212, v213, v214;
  *&v302.st_dev = 0xD00000000000001ALL;
  v302.st_ino = 0x80000001CFA2DF30;
  LODWORD(v293) = v61;
  v215 = sub_1CF9E7F98();
  v217 = v216;
  MEMORY[0x1D3868CC0](v215);
  v217, v218, v219, v220, v221, v222, v223, v224;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v225 = *&v302.st_dev;
  st_ino = v302.st_ino;
  v227 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v228 = sub_1CF9E6108();
  v229 = sub_1CF9E72B8();
  st_ino, v230, v231, v232, v233, v234, v235, v236;
  if (os_log_type_enabled(v228, v229))
  {
    v237 = swift_slowAlloc();
    v238 = swift_slowAlloc();
    *&v302.st_dev = v238;
    *v237 = 136315650;
    v239 = sub_1CF9E7988();
    v241 = v240;
    v242 = sub_1CEFD0DF0(v239, v240, &v302.st_dev);
    v241, v243, v244, v245, v246, v247, v248, v249;
    *(v237 + 4) = v242;
    *(v237 + 12) = 2048;
    *(v237 + 14) = 315;
    *(v237 + 22) = 2080;
    *(v237 + 24) = sub_1CEFD0DF0(v225, st_ino, &v302.st_dev);
    _os_log_impl(&dword_1CEFC7000, v228, v229, "[ASSERT] ‼️  %s:%lu: %s", v237, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v238, -1, -1);
    MEMORY[0x1D386CDC0](v237, -1, -1);
  }

  (*(v282 + 8))(v257, v283);
  LODWORD(v251) = 0;
  v250 = 315;
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF85517C(int a1, uint64_t a2, void *a3)
{
  v59 = a3;
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v49[-v10];
  v12 = type metadata accessor for VFSDetachedRootBookmark(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_1CEFCE64C();
  if (!v3)
  {
    v51 = 0;
    v52 = v6;
    v50 = a1;
    v23 = v59;
    if (*result->tree)
    {
      v24 = v52;
      v25 = result;
      (*(v52 + 16))(v11, result + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v5);
      v25, v26, v27, v28, v29, v30, v31, v32;
      (*(v24 + 56))(v11, 0, 1, v5);
    }

    else
    {
      result, v16, v17, v18, v19, v20, v21, v22;
      (*(v52 + 56))(v11, 1, 1, v5);
    }

    v33 = v23;
    v34 = v51;
    result = sub_1CF36C8E0(v50, v11, v14);
    if (!v34)
    {
      v35 = &v14[*(v12 + 20)];
      v37 = *v35;
      v36 = v35[1];
      v57 = v37;
      v58 = v36;
      v55 = 47;
      v56 = 0xE100000000000000;
      v53 = 58;
      v54 = 0xE100000000000000;
      sub_1CEFE4E68();
      v38 = v5;
      sub_1CF9E7668();
      v40 = v39;
      sub_1CF9E5958();
      v40, v41, v42, v43, v44, v45, v46, v47;
      v48 = sub_1CF9E5928();
      (*(v52 + 8))(v8, v38);
      [v33 setDetachedRootLogicalURL_];

      return sub_1CEFD5338(v14, type metadata accessor for VFSDetachedRootBookmark);
    }
  }

  return result;
}

void sub_1CF85547C(_BYTE *a1, void *a2, unint64_t a3, void (*a4)(void, void), uint64_t a5, char a6, int a7)
{
  v72 = a7;
  v73 = a4;
  v74 = a3;
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v71 = &v63[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v63[-v15];
  v17 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v63[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs])
  {
    goto LABEL_8;
  }

  if (a1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_invalidated])
  {
    goto LABEL_8;
  }

  v67 = v19;
  v68 = v16;
  v69 = v18;
  v70 = a2;
  v22 = sub_1CEFCE64C();
  a2 = v70;
  v23 = sub_1CF38431C(v70, v22);
  v22, v24, v25, v26, v27, v28, v29, v30;
  if (!v23)
  {
    goto LABEL_8;
  }

  v31 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v32 = v74;
  sub_1CEFD09A0(v74);
  v33 = sub_1CF9E6108();
  v34 = sub_1CF9E7298();
  sub_1CEFD0A98(v32);
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v65 = v33;
    v36 = v35;
    v66 = swift_slowAlloc();
    v75 = v66;
    *v36 = 136446210;
    v37 = sub_1CEFD11AC(v32);
    v64 = v34;
    v39 = v38;
    v40 = sub_1CEFD0DF0(v37, v38, &v75);
    v39, v41, v42, v43, v44, v45, v46, v47;
    v48 = v36;
    *(v36 + 4) = v40;
    v33 = v65;
    _os_log_impl(&dword_1CEFC7000, v65, v64, "Going through fast-path for the rootItem at startup (request: %{public}s)", v48, 0xCu);
    v49 = v66;
    __swift_destroy_boxed_opaque_existential_1(v66);
    MEMORY[0x1D386CDC0](v49, -1, -1);
    MEMORY[0x1D386CDC0](v48, -1, -1);
  }

  (*(v67 + 8))(v21, v69);
  a2 = v70;
  v50 = type metadata accessor for VFSItem(0);
  v51 = v68;
  (*(*(v50 - 8) + 56))(v68, 1, 1, v50);
  v52 = sub_1CF853730(a2, v51);
  sub_1CEFCCC44(v51, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if (!v52)
  {
LABEL_8:
    v54 = swift_allocObject();
    v70 = a1;
    v55 = a6;
    v56 = v73;
    *(v54 + 16) = v73;
    *(v54 + 24) = a5;
    v57 = v71;
    (*(v12 + 16))(v71, a2, v11);
    v58 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = v55 & 1;
    *(v59 + 24) = v56;
    *(v59 + 32) = a5;
    v60 = v74;
    *(v59 + 40) = v74;
    (*(v12 + 32))(v59 + v58, v57, v11);
    v61 = v59 + ((v13 + v58 + 7) & 0xFFFFFFFFFFFFFFF8);
    v62 = v70;
    *v61 = v70;
    *(v61 + 8) = v72 & 1;

    sub_1CEFD09A0(v60);

    sub_1CF01052C("item(for:userRequest:hideIgnoredDescendents:tryOptimizeResponsiveness:completionHandler:)", 89, 2, sub_1CF90114C, v59, v62, sub_1CEFF9D90, v54);
  }

  else
  {
    v53 = v52;
    v73(v52, 0);
  }
}

void sub_1CF855990(uint64_t a1, char a2, void (*a3)(id, void), uint64_t a4, unint64_t a5, uint64_t a6, char *a7, int a8)
{
  v225 = a8;
  v228 = a7;
  v234 = a6;
  v243 = a5;
  v230 = sub_1CF9E5A58();
  v227 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v13 = &v220 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E6118();
  v232 = *(v14 - 8);
  v233 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v226 = &v220 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v231 = &v220 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v220 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v220 - v22;
  v24 = type metadata accessor for VFSItem(0);
  v237 = *(v24 - 8);
  v238 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v223 = &v220 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v220 - v27;
  v222 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v235 = &v220 - v31;
  v32 = 2;
  if (a2)
  {
    v32 = ~(*(*(a1 + 16) + 80) >> 20) & 2;
  }

  v224 = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = a3;
  *(v33 + 24) = a4;
  v242 = a4;
  v34 = swift_allocObject();
  v239 = a1;
  swift_weakInit();
  v35 = swift_allocObject();
  v35[2] = sub_1CF2BA178;
  v35[3] = v33;
  v240 = v34;
  v241 = v33;
  v35[4] = v34;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_1CEFF99D0;
  *(v36 + 24) = v35;
  v37 = (v243 >> 58) & 0x3C | (v243 >> 1) & 3;
  v236 = v36;
  if (v37 == 35)
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5200, "hx\t");
    if (*(swift_projectBox() + *(v38 + 48)))
    {
      v39 = 8195;
    }

    else
    {
      v39 = 3;
    }
  }

  else
  {
    v39 = 3;
  }

  swift_retain_n();

  v40 = v234;
  sub_1CF010CE0(v234, 0, 2, v39, v23);
  v41 = (*(v237 + 48))(v23, 1, v238);
  v229 = a3;
  if (v41 == 1)
  {

    sub_1CEFCCC44(v23, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v42 = fpfs_current_or_default_log();
    v43 = v226;
    sub_1CF9E6128();
    v44 = v227;
    v45 = v230;
    (*(v227 + 16))(v13, v40, v230);
    v46 = v243;
    sub_1CEFD09A0(v243);
    v47 = sub_1CF9E6108();
    v48 = sub_1CF9E7298();
    sub_1CEFD0A98(v46);
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v239 = swift_slowAlloc();
      *&v244 = v239;
      *v49 = 136315394;
      v50 = sub_1CF9E5928();
      v51 = [v50 fp_shortDescription];

      v52 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v54 = v53;

      (*(v44 + 8))(v13, v230);
      v55 = sub_1CEFD0DF0(v52, v54, &v244);
      v54, v56, v57, v58, v59, v60, v61, v62;
      *(v49 + 4) = v55;
      *(v49 + 12) = 2082;
      v63 = sub_1CEFD11AC(v243);
      v65 = v64;
      v66 = sub_1CEFD0DF0(v63, v64, &v244);
      v65, v67, v68, v69, v70, v71, v72, v73;
      *(v49 + 14) = v66;
      _os_log_impl(&dword_1CEFC7000, v47, v48, "no vfs item for %s (request: %{public}s)", v49, 0x16u);
      v74 = v239;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v74, -1, -1);
      MEMORY[0x1D386CDC0](v49, -1, -1);
    }

    else
    {

      (*(v44 + 8))(v13, v45);
    }

    (*(v232 + 8))(v43, v233);
    v229(0, 0);

    return;
  }

  v226 = v20;
  v75 = v235;
  sub_1CEFDA0C4(v23, v235, type metadata accessor for VFSItem);
  v76 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v77 = v75;
  sub_1CEFDA34C(v75, v28, type metadata accessor for VFSItem);
  v78 = v243;
  sub_1CEFD09A0(v243);
  v79 = sub_1CF9E6108();
  v80 = sub_1CF9E7298();
  sub_1CEFD0A98(v78);
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v221 = swift_slowAlloc();
    *&v244 = v221;
    *v81 = 136446466;
    v82 = sub_1CF255338();
    v84 = v83;
    sub_1CEFD5338(v28, type metadata accessor for VFSItem);
    v85 = sub_1CEFD0DF0(v82, v84, &v244);
    v84, v86, v87, v88, v89, v90, v91, v92;
    *(v81 + 4) = v85;
    *(v81 + 12) = 2082;
    v93 = sub_1CEFD11AC(v78);
    v95 = v94;
    v96 = sub_1CEFD0DF0(v93, v94, &v244);
    v95, v97, v98, v99, v100, v101, v102, v103;
    *(v81 + 14) = v96;
    _os_log_impl(&dword_1CEFC7000, v79, v80, "Resolved item %{public}s (request: %{public}s)", v81, 0x16u);
    v104 = v221;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v104, -1, -1);
    v105 = v81;
    v77 = v235;
    MEMORY[0x1D386CDC0](v105, -1, -1);
  }

  else
  {

    sub_1CEFD5338(v28, type metadata accessor for VFSItem);
  }

  (*(v232 + 8))(v231, v233);
  if (v37 != 35)
  {
    goto LABEL_28;
  }

  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5200, "hx\t");
  if ((*(swift_projectBox() + *(v106 + 48)) & 1) == 0)
  {
    goto LABEL_28;
  }

  v107 = v77 + v238[8];
  v108 = *(v107 + 192);
  v109 = *(v107 + 224);
  v257 = *(v107 + 208);
  v258 = v109;
  v110 = *(v107 + 128);
  v111 = *(v107 + 160);
  v112 = *(v107 + 176);
  v253 = *(v107 + 144);
  v254 = v111;
  v255 = v112;
  v256 = v108;
  v113 = *(v107 + 64);
  v114 = *(v107 + 96);
  v115 = *(v107 + 112);
  v249 = *(v107 + 80);
  v250 = v114;
  v251 = v115;
  v252 = v110;
  v116 = *(v107 + 16);
  v244 = *v107;
  v245 = v116;
  v117 = *(v107 + 48);
  v246 = *(v107 + 32);
  v259 = *(v107 + 240);
  v247 = v117;
  v248 = v113;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v244) == 1)
  {
    goto LABEL_28;
  }

  v118 = v245;
  if (!v245)
  {
    goto LABEL_28;
  }

  v119 = v245;
  v120 = sub_1CF9E57E8();

  v121 = [v120 domain];
  v122 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v124 = v123;

  v125 = *MEMORY[0x1E6967210];
  v127 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v133 = v126;
  if (v122 == v127 && v124 == v126)
  {
    v124, v126, v127, v128, v129, v130, v131, v132;
    v133, v134, v135, v136, v137, v138, v139, v140;
    goto LABEL_24;
  }

  v141 = sub_1CF9E8048();
  v124, v142, v143, v144, v145, v146, v147, v148;
  v133, v149, v150, v151, v152, v153, v154, v155;
  if (v141)
  {
LABEL_24:
    if ([v120 code] == 28)
    {
      v156 = *&v228[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v158 = Strong;

        v159 = sub_1CF2CD7C8(v77, v156, v158, 1);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1CF9FA450;
        *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        *(inited + 40) = v161;
        v162 = v230;
        *(inited + 72) = v230;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
        (*(v227 + 16))(boxed_opaque_existential_0, v234, v162);
        v164 = v125;
        v165 = sub_1CF4E04E8(inited);
        swift_setDeallocating();
        sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
        v166 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v167 = sub_1CF9E6618();
        v165, v168, v169, v170, v171, v172, v173, v174;
        v175 = [v166 initWithDomain:v164 code:28 userInfo:v167];

        v176 = sub_1CF9E57E8();
        [v159 setUploadingError_];

        v177 = sub_1CF9E5928();
        [v159 setFileURL_];

        v178 = v159;
        v229(v159, 0);

        v179 = v77;
        goto LABEL_42;
      }

      __break(1u);
LABEL_45:

      MEMORY[0x1EEE9AC00](v218);
      *(&v220 - 2) = v156;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v220 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }
  }

LABEL_28:
  v233 = *(v239 + 16);
  type metadata accessor for VFSFileTree(0);
  v156 = swift_dynamicCastClassUnconditional();

  if (objc_sync_enter(v156))
  {
    goto LABEL_45;
  }

  v180 = v156[20];

  if (objc_sync_exit(v156))
  {

    MEMORY[0x1EEE9AC00](v219);
    *(&v220 - 2) = v156;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v220 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v181 = *(v180 + 32);

  v182 = *(v77 + v238[9]);
  swift_bridgeObjectRelease_n();
  v190 = *v181->tree;
  v191 = 32;
  do
  {
    if (!v190)
    {

      v181, v198, v199, v200, v201, v202, v203, v204;
LABEL_40:
      v194 = v237;
      goto LABEL_41;
    }

    v192 = *(&v181->super.isa + v191);
    v191 += 8;
    --v190;
  }

  while (v192 != v182);
  v181, v183, v184, v185, v186, v187, v188, v189;
  v193 = v77 + v238[7];
  if (*(v193 + *(type metadata accessor for ItemMetadata(0) + 80)) != 1)
  {

    goto LABEL_40;
  }

  v194 = v237;
  if (*(v77 + 8) != 2 || *v77)
  {
    v195 = v226;
    sub_1CEFDA34C(v77, v226, type metadata accessor for VFSItem);
    (*(v194 + 56))(v195, 0, 1, v238);
    v196 = sub_1CF853730(v234, v195);
    sub_1CEFCCC44(v195, &unk_1EC4BEC00, &unk_1CF9FCB60);
    if (v196)
    {
      v197 = v196;
      v229(v196, 0);

      v179 = v77;
      goto LABEL_42;
    }
  }

LABEL_41:

  v205 = swift_allocObject();
  v206 = v236;
  *(v205 + 16) = sub_1CEFF9984;
  *(v205 + 24) = v206;
  v207 = v223;
  sub_1CEFDA34C(v77, v223, type metadata accessor for VFSItem);
  v208 = (*(v194 + 80) + 24) & ~*(v194 + 80);
  v209 = (v222 + v208 + 7) & 0xFFFFFFFFFFFFFFF8;
  v210 = (v209 + 15) & 0xFFFFFFFFFFFFFFF8;
  v211 = swift_allocObject();
  *(v211 + 16) = v239;
  sub_1CEFDA0C4(v207, v211 + v208, type metadata accessor for VFSItem);
  v212 = v228;
  *(v211 + v209) = v228;
  v213 = v243;
  *(v211 + v210) = v243;
  v214 = v211 + ((v210 + 15) & 0xFFFFFFFFFFFFFFF8);
  v215 = v236;
  *v214 = sub_1CEFF9984;
  *(v214 + 8) = v215;
  *(v214 + 16) = v225 & 1;
  v216 = swift_allocObject();
  *(v216 + 16) = sub_1CF2BA178;
  *(v216 + 24) = v205;

  sub_1CEFD09A0(v213);

  v217 = v212;

  sub_1CF7AAF88("item(for:userRequest:hideIgnoredDescendents:tryOptimizeResponsiveness:completionHandler:)", 89, 2, v224, sub_1CF8FC294, v216, sub_1CF90124C, v211);

  v179 = v235;
LABEL_42:
  sub_1CEFD5338(v179, type metadata accessor for VFSItem);
}

void sub_1CF856A90(void *a1, uint64_t a2, uint64_t *a3, char *a4, unint64_t a5, void (*a6)(id, void), uint64_t a7, int a8)
{
  v114 = a8;
  v132 = a7;
  v120 = a5;
  v121 = a6;
  v119 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v112 = &v111 - v12;
  v13 = sub_1CF9E6118();
  v117 = *(v13 - 8);
  v118 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v116 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v111 = &v111 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v111 - v18;
  v20 = a1[3];
  v19 = a1[4];
  v123 = __swift_project_boxed_opaque_existential_1(a1, v20);
  v113 = a4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v22 = Strong, v23 = [Strong indexer], v22, v23))
  {
    v24 = [v23 needsAuthentication];

    if (v24)
    {
      v25 = 30;
    }

    else
    {
      v25 = 22;
    }
  }

  else
  {
    v25 = 22;
  }

  v26 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
  v27 = type metadata accessor for VFSItem(0);
  v28 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree, &unk_1CFA00618);
  v29 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem, &unk_1CF9FFB08);
  v123 = sub_1CF76BB00(a3, v25, 0, v26, v123, v27, v20, v28, &off_1F4BF8588, v29, v19);
  v26, v30, v31, v32, v33, v34, v35, v36;
  v37 = a3 + *(v27 + 28);
  if (*(v37 + *(type metadata accessor for ItemMetadata(0) + 64)) == 1)
  {
    v38 = fpfs_current_or_default_log();
    v39 = v115;
    sub_1CF9E6128();
    v40 = v120;
    sub_1CEFD09A0(v120);
    v41 = sub_1CF9E6108();
    v42 = sub_1CF9E7298();
    sub_1CEFD0A98(v40);
    v43 = os_log_type_enabled(v41, v42);
    v44 = v121;
    if (v43)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v131[0] = v46;
      *v45 = 136446210;
      v47 = sub_1CEFD11AC(v40);
      v49 = v48;
      v50 = sub_1CEFD0DF0(v47, v48, v131);
      v49, v51, v52, v53, v54, v55, v56, v57;
      *(v45 + 4) = v50;
      _os_log_impl(&dword_1CEFC7000, v41, v42, "Returning ignore root (request: %{public}s)", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1D386CDC0](v46, -1, -1);
      MEMORY[0x1D386CDC0](v45, -1, -1);
    }

    (*(v117 + 8))(v39, v118);
    v58 = v123;
    v59 = v123;
    v44(v58, 0);

LABEL_29:
    return;
  }

  v60 = a1[3];
  v61 = a1[4];
  v62 = __swift_project_boxed_opaque_existential_1(a1, v60);
  v63 = *(a3 + 8);
  v128 = *a3;
  v129 = v63;

  v64 = v62;
  v65 = v122;
  sub_1CF68DDB0(&v128, v64, v60, v61, v130);
  v66 = v120;
  v67 = v121;
  if (v65)
  {

    sub_1CF095754(v131);
    v68 = v132;
    v69 = v123;
    v70 = v116;
    if ((v114 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {

    memcpy(v126, v130, sizeof(v126));
    memcpy(v127, v130, sizeof(v127));
    v71 = sub_1CF08B99C(v127);
    v68 = v132;
    v69 = v123;
    v70 = v116;
    if (v71 != 1 && (v127[16] & 0x10) != 0)
    {
      memcpy(v125, v126, sizeof(v125));
      sub_1CEFCCBDC(v125, v124, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v94 = fpfs_current_or_default_log();
      v95 = v111;
      sub_1CF9E6128();
      sub_1CEFD09A0(v66);
      v96 = sub_1CF9E6108();
      v97 = sub_1CF9E7298();
      sub_1CEFD0A98(v66);
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v124[0] = v99;
        *v98 = 136446210;
        v100 = sub_1CEFD11AC(v66);
        v102 = v101;
        v103 = sub_1CEFD0DF0(v100, v101, v124);
        v102, v104, v105, v106, v107, v108, v109, v110;
        *(v98 + 4) = v103;
        v69 = v123;
        _os_log_impl(&dword_1CEFC7000, v96, v97, "Returning ignored item (request: %{public}s)", v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v99);
        MEMORY[0x1D386CDC0](v99, -1, -1);
        MEMORY[0x1D386CDC0](v98, -1, -1);

        (*(v117 + 8))(v111, v118);
      }

      else
      {

        (*(v117 + 8))(v95, v118);
      }

      v59 = v69;
      v67(v69, 0);

      sub_1CEFCCC44(v126, &unk_1EC4BFC20, &unk_1CFA0A290);
      sub_1CEFCCC44(v126, &unk_1EC4BFC20, &unk_1CFA0A290);
      goto LABEL_29;
    }

    memcpy(v131, v126, 0x208uLL);
    if ((v114 & 1) == 0)
    {
LABEL_20:
      v88 = swift_allocObject();
      *(v88 + 16) = v67;
      *(v88 + 24) = v68;
      v59 = v69;

      if ((sub_1CEFF96D0(v59) & 1) == 0)
      {

        v67(v59, 0);

        sub_1CEFCCC44(v131, &unk_1EC4BFC20, &unk_1CFA0A290);
        return;
      }

      v89 = sub_1CF9E6F08();
      v90 = v112;
      (*(*(v89 - 8) + 56))(v112, 1, 1, v89);
      v91 = swift_allocObject();
      v91[2] = 0;
      v91[3] = 0;
      v92 = v113;
      v91[4] = v59;
      v91[5] = v92;
      v91[6] = v66;
      v91[7] = sub_1CF901308;
      v91[8] = v88;
      sub_1CEFD09A0(v66);
      v93 = v92;
      sub_1CF6FCFEC(0, 0, v90, &unk_1CFA18250, v91);

      sub_1CEFCCC44(v131, &unk_1EC4BFC20, &unk_1CFA0A290);

      goto LABEL_29;
    }
  }

  if (![v69 isExcludedFromSync])
  {
    goto LABEL_20;
  }

  v72 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(v66);
  v73 = sub_1CF9E6108();
  v74 = sub_1CF9E7298();
  sub_1CEFD0A98(v66);
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v130[0] = v76;
    *v75 = 136446210;
    v77 = sub_1CEFD11AC(v66);
    v79 = v78;
    v80 = sub_1CEFD0DF0(v77, v78, v130);
    v79, v81, v82, v83, v84, v85, v86, v87;
    *(v75 + 4) = v80;
    v69 = v123;
    _os_log_impl(&dword_1CEFC7000, v73, v74, "Item is in ignored (request: %{public}s)", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v76);
    MEMORY[0x1D386CDC0](v76, -1, -1);
    MEMORY[0x1D386CDC0](v75, -1, -1);

    (*(v117 + 8))(v116, v118);
  }

  else
  {

    (*(v117 + 8))(v70, v118);
  }

  v67(0, 0);
  sub_1CEFCCC44(v131, &unk_1EC4BFC20, &unk_1CFA0A290);
}

uint64_t FPDDomainFPFSBackend.putBackURLForTrashedItem(at:request:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v11);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 2) = v4;
  (*(v9 + 32))(&v15[v13], v12, v8);
  v16 = &v15[v14];
  v17 = v22;
  *v16 = v22;
  v16[1] = a4;
  *&v15[(v14 + 23) & 0xFFFFFFFFFFFFFFF8] = a2;
  swift_retain_n();
  v18 = v4;
  v19 = a2;
  sub_1CF8EC6D8("putBackURLForTrashedItem(at:request:completionHandler:)", 55, 2, sub_1CF8F0838, v15, v18, v17, a4);
}

void sub_1CF8575D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5, void *a6)
{
  v143 = a6;
  v144 = a1;
  v150 = a4;
  v151 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v147 = &v138 - v8;
  v149 = sub_1CF9E5A58();
  v9 = *(v149 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v11 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v138 - v13;
  v142 = sub_1CF9E53C8();
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E6118();
  v145 = *(v16 - 8);
  v146 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v152 = &v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v139 = &v138 - v19;
  v148 = a3;
  sub_1CF9E5A18();
  v21 = v20;
  v160 = 0;
  v161 = 1;
  v22 = swift_allocObject();
  *(v22 + 16) = &v161;
  *(v22 + 24) = sub_1CF8A2598;
  *(v22 + 32) = 0;
  *(v22 + 40) = &v160;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1CF902C78;
  *(v23 + 24) = v22;
  v158 = sub_1CF50EB9C;
  v159 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v155 = 1107296256;
  v156 = sub_1CF005DF8;
  v157 = &block_descriptor_5506;
  v24 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  LODWORD(v25) = fpfs_openat();

  _Block_release(v24);

  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v34 = v160;
  if (v160)
  {
    swift_willThrow();
    v21, v35, v36, v37, v38, v39, v40, v41;

    goto LABEL_4;
  }

  if ((v25 & 0x80000000) == 0)
  {
    v21, v27, v28, v29, v30, v31, v32, v33;
    v25 = v161;
    if (v161 != 1)
    {
      v21, v27, v28, v29, v30, v31, v32, v33;
      if (v25)
      {
        v152 = sub_1CEFD4E9C(v25);
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
        v147 = swift_allocBox();
        v72 = v71;
        v73 = *(v70 + 48);
        v74 = *(v9 + 16);
        v76 = v148;
        v75 = v149;
        v74(v71, v148, v149);
        v77 = v143;
        *(v72 + v73) = v143;
        v78 = v77;
        v74(v14, v76, v75);
        v79 = (*(v9 + 80) + 16) & ~*(v9 + 80);
        v80 = swift_allocObject();
        (*(v9 + 32))(&v80[v79], v14, v75);
        v81 = &v80[(v10 + v79 + 7) & 0xFFFFFFFFFFFFFFF8];
        v82 = v151;
        *v81 = v150;
        *(v81 + 1) = v82;
        v83 = v78;

        sub_1CF76CEF8(v152, 0, v147 | 0x8000000000000002, sub_1CF9010AC, v80);
        sub_1CF00D644(v25);

        return;
      }

      goto LABEL_6;
    }

    goto LABEL_23;
  }

  if (MEMORY[0x1D38683F0](v26))
  {
    if (MEMORY[0x1D38683F0]() == 9939394)
    {
      v84 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
      swift_willThrow();

      swift_bridgeObjectRelease_n();
      goto LABEL_5;
    }

    MEMORY[0x1D38683F0]();
    v85 = sub_1CF9E6138();
    if ((v85 & 0x100000000) != 0)
    {
      LODWORD(aBlock) = 22;
    }

    else
    {
      LODWORD(aBlock) = v85;
    }

    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    v86 = v140;
    v87 = v142;
    sub_1CF9E57D8();
    v88 = sub_1CF9E53A8();
    (*(v141 + 8))(v86, v87);
    swift_willThrow();

    v21, v89, v90, v91, v92, v93, v94, v95;
LABEL_4:
    v21, v42, v43, v44, v45, v46, v47, v48;
LABEL_5:
    sub_1CF00D644(v161);
LABEL_6:
    v49 = fpfs_current_or_default_log();
    v50 = v152;
    sub_1CF9E6128();
    v51 = v149;
    (*(v9 + 16))(v11, v148, v149);
    v52 = sub_1CF9E6108();
    v53 = sub_1CF9E72A8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      aBlock = v55;
      *v54 = 136315138;
      v56 = sub_1CF9E5928();
      v57 = [v56 fp_shortDescription];

      v58 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v60 = v59;

      (*(v9 + 8))(v11, v51);
      v61 = sub_1CEFD0DF0(v58, v60, &aBlock);
      v60, v62, v63, v64, v65, v66, v67, v68;
      *(v54 + 4) = v61;
      _os_log_impl(&dword_1CEFC7000, v52, v53, "Read put-back xattr for %s returned nothing", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x1D386CDC0](v55, -1, -1);
      MEMORY[0x1D386CDC0](v54, -1, -1);

      (*(v145 + 8))(v152, v146);
    }

    else
    {

      (*(v9 + 8))(v11, v51);
      (*(v145 + 8))(v50, v146);
    }

    v69 = v147;
    (*(v9 + 56))(v147, 1, 1, v51);
    v150(v69, 0);
    sub_1CEFCCC44(v69, &unk_1EC4BE310, qword_1CF9FCBE0);
    return;
  }

LABEL_24:
  v21, v27, v28, v29, v30, v31, v32, v33;
  aBlock = 0;
  v155 = 0xE000000000000000;
  sub_1CF9E7948();
  v155, v96, v97, v98, v99, v100, v101, v102;
  aBlock = 0xD00000000000001ALL;
  v155 = 0x80000001CFA2DF30;
  v153 = v25;
  v103 = sub_1CF9E7F98();
  v105 = v104;
  MEMORY[0x1D3868CC0](v103);
  v105, v106, v107, v108, v109, v110, v111, v112;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v113 = aBlock;
  v114 = v155;
  v115 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v116 = sub_1CF9E6108();
  v117 = sub_1CF9E72B8();
  v114, v118, v119, v120, v121, v122, v123, v124;
  if (os_log_type_enabled(v116, v117))
  {
    v125 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    aBlock = v126;
    *v125 = 136315650;
    v127 = sub_1CF9E7988();
    v129 = v128;
    v130 = sub_1CEFD0DF0(v127, v128, &aBlock);
    v129, v131, v132, v133, v134, v135, v136, v137;
    *(v125 + 4) = v130;
    *(v125 + 12) = 2048;
    *(v125 + 14) = 315;
    *(v125 + 22) = 2080;
    *(v125 + 24) = sub_1CEFD0DF0(v113, v114, &aBlock);
    _os_log_impl(&dword_1CEFC7000, v116, v117, "[ASSERT] ‼️  %s:%lu: %s", v125, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v126, -1, -1);
    MEMORY[0x1D386CDC0](v125, -1, -1);
  }

  (*(v145 + 8))(v139, v146);
  sub_1CF9E7B68();
  __break(1u);
}

uint64_t sub_1CF85808C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void *), uint64_t a4)
{
  v101 = a4;
  v102 = a3;
  v95 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v100 = &v91 - v6;
  v7 = sub_1CF9E6118();
  v98 = *(v7 - 8);
  v99 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v96 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v97 = (&v91 - v10);
  v11 = sub_1CF9E5A58();
  v103 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v91 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v91 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v91 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5270, &unk_1CFA01BC0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v91 - v24);
  sub_1CEFCCBDC(a1, &v91 - v24, &unk_1EC4C5270, &unk_1CFA01BC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v25;
    v27 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    (*(v103 + 16))(v13, v95, v11);
    v28 = v26;
    v29 = sub_1CF9E6108();
    v30 = sub_1CF9E72A8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v106 = v97;
      *v31 = 136315394;
      v33 = sub_1CF9E5928();
      v34 = [v33 fp_shortDescription];

      v35 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v37 = v36;

      (*(v103 + 8))(v13, v11);
      v38 = sub_1CEFD0DF0(v35, v37, &v106);
      v37, v39, v40, v41, v42, v43, v44, v45;
      *(v31 + 4) = v38;
      *(v31 + 12) = 2112;
      swift_getErrorValue();
      v46 = Error.prettyDescription.getter(v104, v105);
      *(v31 + 14) = v46;
      *v32 = v46;
      _os_log_impl(&dword_1CEFC7000, v29, v30, "put-back location URL resolve for %s failed: %@", v31, 0x16u);
      sub_1CEFCCC44(v32, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v32, -1, -1);
      v47 = v97;
      __swift_destroy_boxed_opaque_existential_1(v97);
      MEMORY[0x1D386CDC0](v47, -1, -1);
      MEMORY[0x1D386CDC0](v31, -1, -1);
    }

    else
    {

      (*(v103 + 8))(v13, v11);
    }

    (*(v98 + 8))(v96, v99);
    v87 = v100;
    (*(v103 + 56))(v100, 1, 1, v11);
    v88 = v26;
    v102(v87, v26);

    return sub_1CEFCCC44(v87, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  else
  {
    v48 = v103;
    (*(v103 + 32))(v22, v25, v11);
    v49 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v50 = *(v48 + 16);
    (v50)(v19, v95, v11);
    (v50)(v16, v22, v11);
    v51 = sub_1CF9E6108();
    v52 = sub_1CF9E7298();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v106 = v95;
      *v53 = 136315394;
      v94 = v52;
      v54 = sub_1CF9E5928();
      v55 = [v54 fp_shortDescription];
      v96 = v50;
      v56 = v55;

      v57 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v59 = v58;

      v92 = v51;
      v60 = *(v103 + 8);
      v93 = (v103 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v60(v19, v11);
      v61 = sub_1CEFD0DF0(v57, v59, &v106);
      v62 = v59;
      v63 = v60;
      v62, v64, v65, v66, v67, v68, v69, v70;
      *(v53 + 4) = v61;
      *(v53 + 12) = 2080;
      v71 = sub_1CF9E5928();
      v72 = [v71 fp_shortDescription];

      v73 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v75 = v74;

      v63(v16, v11);
      v76 = sub_1CEFD0DF0(v73, v75, &v106);
      v77 = v75;
      v50 = v96;
      v77, v78, v79, v80, v81, v82, v83, v84;
      *(v53 + 14) = v76;
      v85 = v92;
      _os_log_impl(&dword_1CEFC7000, v92, v94, "put-back location for URL success %s location: %s", v53, 0x16u);
      v86 = v95;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v86, -1, -1);
      MEMORY[0x1D386CDC0](v53, -1, -1);
    }

    else
    {

      v63 = *(v103 + 8);
      v63(v16, v11);
      v63(v19, v11);
    }

    (*(v98 + 8))(v97, v99);
    v90 = v100;
    (v50)(v100, v22, v11);
    (*(v103 + 56))(v90, 0, 1, v11);
    v102(v90, 0);
    sub_1CEFCCC44(v90, &unk_1EC4BE310, qword_1CF9FCBE0);
    return (v63)(v22, v11);
  }
}

double sub_1CF858B28(uint64_t a1, void (*a2)(void), void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v21 = a7;
  v12 = sub_1CF9E5A58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  (*(v13 + 16))(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12, v15);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  (*(v13 + 32))(v17 + v16, &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v18 = (v17 + ((v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a2;
  v18[1] = a3;

  sub_1CF8EB0F8(a5, a6, 2, v21, v17, v20, a2, a3);

  return result;
}

void sub_1CF858CA0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v153 = a4;
  v154 = a3;
  v4 = sub_1CF9E53C8();
  v5 = *(v4 - 8);
  v145 = v4;
  v146 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v144 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1CF9E6118();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v141 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E6938();
  v149 = *(v8 - 8);
  v150 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v147 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VFSItem(0);
  v151 = *(v10 - 8);
  v152 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v148 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E5A58();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v141 - v20;
  type metadata accessor for VFSFileTree(0);
  swift_dynamicCastClassUnconditional();

  sub_1CF9E5988();
  sub_1CF264F9C(2, 0, 2129920, v21);
  v24 = v149;
  v23 = v150;
  v25 = v148;
  (*(v13 + 8))(v15, v12);

  sub_1CEFCCBDC(v21, v18, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v151 + 48))(v18, 1, v152) == 1)
  {
    sub_1CEFCCC44(v18, &unk_1EC4BEC00, &unk_1CF9FCB60);
    type metadata accessor for NSFileProviderError(0);
    v163 = -1005;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v26 = aBlock;
    v154(aBlock);

    sub_1CEFCCC44(v21, &unk_1EC4BEC00, &unk_1CF9FCB60);
    return;
  }

  v27 = v18;
  v28 = v25;
  v29 = sub_1CEFDA0C4(v27, v25, type metadata accessor for VFSItem);
  v30 = *v25;
  v31 = *(v25 + 8);
  if (v31 != 2 || v30)
  {
    v33 = v23;
    v34 = v147;
    if (v31 == 2 && v30 == 1)
    {
      v32 = *MEMORY[0x1E6967280];
    }

    else
    {
      aBlock = 0x2F73662F70665F5FLL;
      v157 = 0xE800000000000000;
      v163 = v30;
      v164 = v31;
      v35 = VFSItemID.description.getter(v29);
      v37 = v36;
      MEMORY[0x1D3868CC0](v35);
      v37, v38, v39, v40, v41, v42, v43, v44;
      v45 = v157;
      v32 = sub_1CF9E6888();
      v45, v46, v47, v48, v49, v50, v51, v52;
    }
  }

  else
  {
    v32 = *MEMORY[0x1E6967258];
    v33 = v23;
    v34 = v147;
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v54 = v53;
  sub_1CF9E6918();
  v55 = sub_1CF9E68C8();
  v56 = v34;
  v58 = v57;
  v54, v57, v59, v60, v61, v62, v63, v64;
  (*(v24 + 8))(v56, v33);
  if (v58 >> 60 == 15)
  {
    goto LABEL_26;
  }

  v65 = sub_1CF9E5A18();
  v67 = v66;
  v152 = &v141;
  MEMORY[0x1EEE9AC00](v65);
  v68 = v55;
  v139 = v55;
  v140 = v58;
  v151 = v58;
  v162 = 1;
  v163 = 0;
  v69 = swift_allocObject();
  v69[2] = &v162;
  v69[3] = sub_1CF90102C;
  v69[4] = &v141 - 4;
  v69[5] = &v163;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_1CF50EB60;
  *(v70 + 24) = v69;
  v160 = sub_1CF50EB9C;
  v161 = v70;
  aBlock = MEMORY[0x1E69E9820];
  v157 = 1107296256;
  v158 = sub_1CF005DF8;
  v159 = &block_descriptor_5477;
  v71 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  LODWORD(v58) = fpfs_openat();

  _Block_release(v71);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v81 = v163;
  v82 = v146;
  if (v163)
  {
    swift_willThrow();
    v90 = v154;
LABEL_14:
    v67, v83, v84, v85, v86, v87, v88, v89;
    sub_1CEFE48D8(v68, v151);
    sub_1CEFD5338(v28, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v21, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v22 = v81;
    v90(v81);

    return;
  }

  if ((v58 & 0x80000000) != 0)
  {
    if (MEMORY[0x1D38683F0](v73))
    {
      v91 = MEMORY[0x1D38683F0]();
      v90 = v154;
      v92 = v145;
      v93 = v144;
      if (v91 == 9939394)
      {
        v81 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
        swift_willThrow();
      }

      else
      {
        MEMORY[0x1D38683F0]();
        v94 = sub_1CF9E6138();
        if ((v94 & 0x100000000) != 0)
        {
          LODWORD(aBlock) = 22;
        }

        else
        {
          LODWORD(aBlock) = v94;
        }

        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        sub_1CF9E57D8();
        v95 = sub_1CF9E53A8();
        v96 = v93;
        v81 = v95;
        (*(v82 + 8))(v96, v92);
        swift_willThrow();
      }

      goto LABEL_14;
    }

    goto LABEL_28;
  }

  if ((v162 & 1) == 0)
  {
    v67, v74, v75, v76, v77, v78, v79, v80;
    v154(0);
    sub_1CEFE48D8(v68, v151);
    sub_1CEFD5338(v25, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v21, &unk_1EC4BEC00, &unk_1CF9FCB60);
    return;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  aBlock = 0;
  v157 = 0xE000000000000000;
  sub_1CF9E7948();
  v157, v97, v98, v99, v100, v101, v102, v103;
  aBlock = 0xD00000000000001ALL;
  v157 = 0x80000001CFA2DF30;
  v155 = v58;
  v104 = sub_1CF9E7F98();
  v106 = v105;
  MEMORY[0x1D3868CC0](v104);
  v106, v107, v108, v109, v110, v111, v112, v113;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v114 = aBlock;
  v115 = v157;
  v116 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v117 = sub_1CF9E6108();
  v118 = sub_1CF9E72B8();
  v115, v119, v120, v121, v122, v123, v124, v125;
  if (os_log_type_enabled(v117, v118))
  {
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    aBlock = v127;
    *v126 = 136315650;
    v128 = sub_1CF9E7988();
    v130 = v129;
    v131 = sub_1CEFD0DF0(v128, v129, &aBlock);
    v130, v132, v133, v134, v135, v136, v137, v138;
    *(v126 + 4) = v131;
    *(v126 + 12) = 2048;
    *(v126 + 14) = 315;
    *(v126 + 22) = 2080;
    *(v126 + 24) = sub_1CEFD0DF0(v114, v115, &aBlock);
    _os_log_impl(&dword_1CEFC7000, v117, v118, "[ASSERT] ‼️  %s:%lu: %s", v126, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v127, -1, -1);
    MEMORY[0x1D386CDC0](v126, -1, -1);
  }

  (*(v142 + 8))(v141, v143);
  LODWORD(v140) = 0;
  v139 = 315;
  sub_1CF9E7B68();
  __break(1u);
}

id FPDDomainFPFSBackend.startProvidingItem(at:readerID:readingOptions:request:completionHandler:)(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4, char *a5, uint64_t a6)
{
  v78 = a6;
  v69 = a5;
  v75 = a3;
  v76 = a4;
  v72 = a2;
  v7 = sub_1CF9E5A58();
  v73 = *(v7 - 8);
  v74 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v70 = v8;
  v79 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E6068();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v63 - v17;
  v19 = type metadata accessor for Signpost(0);
  v66 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v67 = v20;
  v68 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v63 - v22;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDEBBE40;
  (*(v10 + 56))(v18, 1, 1, v9);
  v71 = a1;
  v25 = sub_1CF9E5A18();
  v64 = v26;
  v65 = v25;
  sub_1CEFCCBDC(v18, v15, &unk_1EC4BED20, &unk_1CFA00700);
  v27 = *(v10 + 48);
  if (v27(v15, 1, v9) == 1)
  {
    v28 = v24;
    sub_1CF9E6048();
    if (v27(v15, 1, v9) != 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
  }

  (*(v10 + 16))(v23, v12, v9);
  *&v23[*(v19 + 20)] = v24;
  v29 = &v23[*(v19 + 24)];
  *v29 = "Materialization";
  *(v29 + 1) = 15;
  v29[16] = 2;
  v30 = v24;
  v31 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1CF9FA450;
  *(v32 + 56) = MEMORY[0x1E69E6158];
  *(v32 + 64) = sub_1CEFD51C4();
  v33 = v64;
  *(v32 + 32) = v65;
  *(v32 + 40) = v33;
  sub_1CF9E6028(v31, &dword_1CEFC7000, v30, "Materialization", 15, 2, v23, "%s", 2);
  v32, v34, v35, v36, v37, v38, v39, v40;
  (*(v10 + 8))(v12, v9);
  sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
  v65 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
  [v65 setCancellable_];
  v41 = v68;
  sub_1CEFDA34C(v23, v68, type metadata accessor for Signpost);
  v42 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v43 = (v67 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  sub_1CEFDA0C4(v41, v44 + v42, type metadata accessor for Signpost);
  v45 = (v44 + v43);
  v46 = v69;
  v69 = v23;
  v48 = v78;
  v47 = v79;
  *v45 = v46;
  v45[1] = v48;
  v49 = v73;
  v50 = v74;
  (*(v73 + 16))(v47, v71, v74);
  sub_1CEFD1104(v72, v80);
  v51 = (*(v49 + 80) + 40) & ~*(v49 + 80);
  v52 = (v70 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + 39) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v72 = sub_1CF8F0868;
  *(v55 + 2) = sub_1CF8F0868;
  *(v55 + 3) = v44;
  v56 = v76;
  *(v55 + 4) = v76;
  (*(v49 + 32))(&v55[v51], v79, v50);
  sub_1CEFE9EB8(v80, &v55[v52]);
  *&v55[v53] = v75;
  v57 = v65;
  *&v55[v54] = v65;
  v58 = v77;
  *&v55[(v54 + 15) & 0xFFFFFFFFFFFFFFF8] = v77;
  swift_retain_n();

  v59 = v56;
  v60 = v57;
  v61 = v58;
  sub_1CF8EB0F8("startProvidingItem(at:readerID:readingOptions:request:completionHandler:)", 73, 2, sub_1CF8F0894, v55, v61, v72, v44);

  sub_1CEFD5338(v69, type metadata accessor for Signpost);
  return v60;
}

uint64_t sub_1CF85A1A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1CF9E7458();
  type metadata accessor for Signpost(0);
  sub_1CF9E6038();
  return a3(a1);
}

double sub_1CF85A228(uint64_t a1, void (*a2)(id), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t), void *a9)
{
  v93 = a7;
  v89 = a6;
  v99 = a5;
  v97 = a4;
  v94 = a9;
  v95 = a8;
  v13 = sub_1CF9E5A58();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v90 = v15;
  v91 = v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v83 = v82 - v17;
  v18 = sub_1CF9E6118();
  v84 = *(v18 - 8);
  v85 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v88 = v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v86 = a2;
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = a4;
  v20[5] = a1;
  v98 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v21 = *(v14 + 80);
  v22 = (v21 + 32) & ~v21;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1CF9FA450;
  v82[2] = *(a1 + 16);
  v82[1] = type metadata accessor for VFSFileTree(0);
  v24 = swift_dynamicCastClassUnconditional();
  v25 = *(v14 + 16);
  v25(v23 + v22, *(v24 + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_root, v13);
  v96 = a1;

  v97 = v97;
  v87 = a3;

  LOBYTE(a2) = sub_1CF517830(v23);
  swift_setDeallocating();
  v92 = v14;
  v26 = *(v14 + 8);
  v26((v23 + v22), v13);
  swift_deallocClassInstance();
  if (a2)
  {
    v27 = v25;
    v28 = v13;
    v29 = v99;
    v30 = v97;
    if ([v97 allowsResurrection])
    {
      swift_dynamicCastClassUnconditional();
      v31 = swift_allocObject();
      v32 = v98;
      *(v31 + 16) = sub_1CF900628;
      *(v31 + 24) = v32;

      sub_1CF2888D4(v29, sub_1CF74F980, v31);
    }

    else
    {
      v95 = v26;
      v56 = fpfs_current_or_default_log();
      v57 = v88;
      sub_1CF9E6128();
      v58 = v83;
      v27(v83, v29, v28);
      v59 = sub_1CF9E6108();
      v60 = sub_1CF9E72C8();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v99 = v28;
        v63 = v62;
        v101[0] = v62;
        *v61 = 136315138;
        v64 = sub_1CF9E5928();
        v65 = [v64 fp_shortDescription];

        v66 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v67 = v30;
        v69 = v68;

        v95(v58, v99);
        v70 = sub_1CEFD0DF0(v66, v69, v101);
        v71 = v69;
        v30 = v67;
        v71, v72, v73, v74, v75, v76, v77, v78;
        *(v61 + 4) = v70;
        _os_log_impl(&dword_1CEFC7000, v59, v60, "request for file %s doesn't allow resurrection", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v63);
        MEMORY[0x1D386CDC0](v63, -1, -1);
        MEMORY[0x1D386CDC0](v61, -1, -1);

        (*(v84 + 8))(v88, v85);
      }

      else
      {

        v95(v58, v28);
        (*(v84 + 8))(v57, v85);
      }

      v79 = v96;
      type metadata accessor for NSFileProviderError(0);
      v100 = -1005;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
      sub_1CF9E57D8();
      v80 = v101[0];
      sub_1CF85AA08(v101[0], v86, v87, v30, v79);
    }
  }

  else
  {
    v87 = ~v21;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
    v34 = swift_allocBox();
    v88 = v34;
    v36 = v35;
    v37 = v33[12];
    v86 = v33[16];
    v38 = v33[20];
    sub_1CEFD1104(v89, v101);
    *v36 = sub_1CF9E6948();
    v36[1] = v39;
    v40 = v36 + v37;
    v41 = v99;
    v25(v40, v99, v13);
    v42 = v97;
    *(v86 + v36) = v97;
    v43 = v93;
    *(v36 + v38) = v93;
    v89 = v34 | 4;
    v44 = v91;
    v25(v91, v41, v13);
    v45 = (v21 + 64) & v87;
    v46 = (v90 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    v48 = v98;
    *(v47 + 2) = sub_1CF900628;
    *(v47 + 3) = v48;
    v49 = v94;
    *(v47 + 4) = v94;
    *(v47 + 5) = v42;
    *(v47 + 6) = v43;
    *(v47 + 7) = v96;
    (*(v92 + 32))(&v47[v45], v44, v13);
    v50 = v89;
    *&v47[v46] = v89;
    v51 = v95;
    *&v47[(v46 + 15) & 0xFFFFFFFFFFFFFFF8] = v95;
    v52 = v42;

    v53 = v52;

    v54 = v49;

    v55 = v51;
    sub_1CF76E058(v99, v55, v50, sub_1CF900634, v47);
  }

  return result;
}

void sub_1CF85AA08(void *a1, void (*a2)(id), uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1CF9E5268();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    (a2)(0, v13);
    return;
  }

  v62 = a3;
  v63 = a2;
  *&v64[0] = a1;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v70 + 9) = *&v77[9];
    v68 = v75;
    v69 = v76;
    v70[0] = *v77;
    v66 = v73;
    v67 = v74;
    if (v77[24] == 5)
    {
      v18 = *&v64[0];
LABEL_11:

      sub_1CF9E50E8();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      sub_1CF9E57D8();
      v20 = sub_1CF9E50D8();
      (*(v12 + 8))(v15, v11);
      v63(v20);

      return;
    }

    sub_1CEFCCC44(&v66, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&v73 = a1;
  v19 = a1;
  if (swift_dynamicCast())
  {
    if (v66 == 1)
    {
      v42 = v73;
      goto LABEL_24;
    }

    if (!v66)
    {
      v18 = v73;
      goto LABEL_11;
    }
  }

  v81 = a1;
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v64[6] = v78;
    v64[7] = v79;
    v64[2] = v75;
    v64[3] = v76;
    v64[4] = *v77;
    v64[5] = *&v77[16];
    v64[0] = v73;
    v64[1] = v74;
    v70[2] = v78;
    v70[3] = v79;
    v68 = v75;
    v69 = v76;
    v70[0] = *v77;
    v70[1] = *&v77[16];
    v65 = v80;
    v71 = v80;
    v66 = v73;
    v67 = v74;
    if (sub_1CF2B971C(&v66))
    {
      sub_1CEFCCC44(v64, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_15;
    }

    nullsub_1();
    sub_1CEFCCC44(v64, &unk_1EC4BE320, &unk_1CFA08B50);
    v42 = v81;
LABEL_24:

    v63(0);
    return;
  }

LABEL_15:

  *&v73 = a1;
  v22 = a1;
  if (swift_dynamicCast())
  {
    v23 = v66;
    v24 = *MEMORY[0x1E696A250];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1CF9FA450;
    *(v25 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v25 + 40) = v26;
    *(v25 + 72) = &type metadata for MaterializationError;
    *(v25 + 48) = v23;
    v27 = v24;
    v28 = sub_1CF4E04E8(v25);
    swift_setDeallocating();
    sub_1CEFCCC44(v25 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v30 = sub_1CF9E6618();
    v28, v31, v32, v33, v34, v35, v36, v37;
    v38 = [v29 initWithDomain:v27 code:256 userInfo:v30];

    v63(v38);
    v39 = v73;
  }

  else
  {

    v81 = a1;
    v40 = a1;
    if (!swift_dynamicCast())
    {

      v43 = v62;

      sub_1CF77A9C8(a1, 0, a5, v63, v43);

      return;
    }

    *(v70 + 9) = *&v77[9];
    v68 = v75;
    v69 = v76;
    v70[0] = *v77;
    v66 = v73;
    v67 = v74;
    if (v77[24] || ![a4 isFromPOSIX])
    {
      v44 = *MEMORY[0x1E696A250];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1CF9FA450;
      *(v45 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(v45 + 40) = v46;
      *(v45 + 72) = v17;
      v47 = swift_allocObject();
      *(v45 + 48) = v47;
      v48 = v69;
      v47[3] = v68;
      v47[4] = v48;
      v47[5] = v70[0];
      *(v47 + 89) = *(v70 + 9);
      v49 = v67;
      v47[1] = v66;
      v47[2] = v49;
      v50 = v44;
      sub_1CEFCCBDC(&v66, v64, &qword_1EC4BF270, &qword_1CFA01B70);
      v51 = sub_1CF4E04E8(v45);
      swift_setDeallocating();
      sub_1CEFCCC44(v45 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
      swift_deallocClassInstance();
      v52 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v53 = sub_1CF9E6618();
      v51, v54, v55, v56, v57, v58, v59, v60;
      v61 = [v52 initWithDomain:v50 code:256 userInfo:v53];

      v63(v61);
      sub_1CEFCCC44(&v66, &qword_1EC4BF270, &qword_1CFA01B70);
    }

    else
    {
      type metadata accessor for NSFileProviderError(0);
      v72 = -1005;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
      sub_1CF9E57D8();
      v41 = *&v64[0];
      v63(*&v64[0]);
      sub_1CEFCCC44(&v66, &qword_1EC4BF270, &qword_1CFA01B70);
    }

    v39 = v81;
  }
}