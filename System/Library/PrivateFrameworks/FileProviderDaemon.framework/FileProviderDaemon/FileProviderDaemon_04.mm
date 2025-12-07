uint64_t sub_1CF029E18()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

void sub_1CF029E50(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfReaderCaughtUp);
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfReaderCaughtUp) = v4;
    sub_1CF029E70(a1);
  }
}

void sub_1CF029E70(void *a1)
{
  v2 = v1;
  v4 = sub_1CF9E7318();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E6448();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E7388();
  v159 = *(v10 - 8);
  v160 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v161 = &v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v163 = &v155 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FSChangeToken(0);
  MEMORY[0x1EEE9AC00](v14);
  v162 = &v155 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E64A8();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v155 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = a1[3];
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16, v18);
  v22 = v21;
  LOBYTE(v21) = sub_1CF9E64D8();
  v24 = *(v17 + 8);
  v23 = (v17 + 8);
  v24(v20, v16);
  if (v21)
  {
    v156 = v9;
    v157 = v6;
    v158 = v4;
    sub_1CF02A97C();
    v166 = 0;
    v167 = 0xE000000000000000;
    sub_1CF9E7948();
    v167, v25, v26, v27, v28, v29, v30, v31;
    v166 = 0x646579616C706572;
    v167 = 0xE900000000000020;
    v6 = OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfChanges;
    v32 = *(v2 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfChanges);
    v164 = v2;
    v165 = v32;
    v33 = sub_1CF9E7F98();
    v35 = v34;
    MEMORY[0x1D3868CC0](v33);
    v35, v36, v37, v38, v39, v40, v41, v42;
    MEMORY[0x1D3868CC0](0x746E657665736620, 0xEF206D6F72662073);
    v43 = sub_1CF02736C();
    v45 = v44;
    MEMORY[0x1D3868CC0](v43);
    v45, v46, v47, v48, v49, v50, v51, v52;
    v9 = v166;
    v23 = v167;
    if (qword_1EDEA3408 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v53 = qword_1EDEBB5A0;
  v54 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v55 = swift_allocObject();
  v155 = xmmword_1CF9FA450;
  *(v55 + 16) = xmmword_1CF9FA450;
  *(v55 + 56) = MEMORY[0x1E69E6158];
  v56 = sub_1CEFD51C4();
  *(v55 + 64) = v56;
  *(v55 + 32) = v9;
  *(v55 + 40) = v23;
  sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v53, v54, v55);
  v55, v57, v58, v59, v60, v61, v62, v63;
  if (*(a1 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_mode))
  {
    v64 = v164;
    v65 = v164 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_currentToken;
    *(v65 + v14[7]) = 0;
    *(v65 + v14[6]) = a1[5];
    v66 = *(v64 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfReaderCaughtUp);
    if (v66 == 2)
    {
      v166 = 0;
      v167 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA526C0);
      v165 = *(v65 + v14[5]);
      v67 = sub_1CF9E7F98();
      v69 = v68;
      MEMORY[0x1D3868CC0](v67);
      v69, v70, v71, v72, v73, v74, v75, v76;
      MEMORY[0x1D3868CC0](0x65736142636F6420, 0xEA00000000003A64);
      v165 = *(v65 + v14[6]);
      v77 = sub_1CF9E7F98();
      v79 = v78;
      MEMORY[0x1D3868CC0](v77);
      v79, v80, v81, v82, v83, v84, v85, v86;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v87 = v166;
      v88 = v167;
      v89 = sub_1CF9E7298();
      v90 = swift_allocObject();
      *(v90 + 16) = v155;
      *(v90 + 56) = MEMORY[0x1E69E6158];
      *(v90 + 64) = v56;
      *(v90 + 32) = v87;
      *(v90 + 40) = v88;
      sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v53, v89, v90);
      v90, v91, v92, v93, v94, v95, v96, v97;
    }

    v98 = *(v64 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observer);
    v99 = v162;
    sub_1CF00BE78(v65, v162, type metadata accessor for FSChangeToken);
    v100 = sub_1CF018EB8();
    v102 = v101;
    v103 = sub_1CF9E5B48();
    sub_1CEFE4714(v100, v102);
    sub_1CF00F364(v99, type metadata accessor for FSChangeToken);
    [v98 finishEnumeratingChangesUpToSyncAnchor:v103 moreComing:v66 != 2];

    return;
  }

  v104 = v164;
  v105 = v164 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_currentToken;
  *(v105 + v14[5]) = a1[5];
  v106 = *(v105 + v14[8]);
  v107 = *&v6[v104];
  v108 = v107 - v106;
  if (v107 >= v106)
  {
    v109 = *(v104 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observer);
    if ([v109 respondsToSelector_])
    {
      v110 = [v109 suggestedBatchSize];
      if ((v110 & 0x8000000000000000) != 0)
      {
        __break(1u);
        return;
      }

      if (v108 < v110 >> 1)
      {
        goto LABEL_11;
      }

LABEL_17:
      *(v105 + v14[7]) = 1;
      v150 = v162;
      sub_1CF00BE78(v105, v162, type metadata accessor for FSChangeToken);
      v151 = sub_1CF018EB8();
      v153 = v152;
      v154 = sub_1CF9E5B48();
      sub_1CEFE4714(v151, v153);
      sub_1CF00F364(v150, type metadata accessor for FSChangeToken);
      [v109 finishEnumeratingChangesUpToSyncAnchor:v154 moreComing:0];

      return;
    }

    if (v108 >= 0x64)
    {
      goto LABEL_17;
    }
  }

LABEL_11:
  *&v6[v104] = 0;
  v111 = a1[6];
  v112 = *(v105 + v14[6]);
  sub_1CF00BE78(v104 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_domain, v163, type metadata accessor for LocalDomain);
  v166 = 0;
  v167 = 0xE000000000000000;

  sub_1CF9E7948();
  v167, v113, v114, v115, v116, v117, v118, v119;
  v166 = 0xD000000000000014;
  v167 = 0x80000001CFA51100;
  v120 = NSFileProviderItemIdentifier.description.getter(*(v104 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observedID));
  v122 = v121;
  MEMORY[0x1D3868CC0](v120);
  v122, v123, v124, v125, v126, v127, v128, v129;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  v130 = v166;
  v131 = v167;
  v132 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v133 = sub_1CF9E6888();
  v134 = [v132 initWithSuiteName_];

  v162 = v112;
  *&v155 = v111;
  if (v134 && (v135 = sub_1CF9E6888(), v136 = [v134 BOOLForKey_], v134, v135, v136))
  {
    v137 = 0.1;
  }

  else
  {
    v137 = 0.5;
  }

  v139 = v159;
  v138 = v160;
  type metadata accessor for FSEventReader(0);
  v140 = swift_allocObject();
  v140[2] = 0;
  *(v140 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v160 = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  v166 = 0;
  v167 = 0xE000000000000000;
  sub_1CF9E7948();
  v167, v141, v142, v143, v144, v145, v146, v147;
  v166 = 0xD00000000000001ELL;
  v167 = 0x80000001CFA51120;
  MEMORY[0x1D3868CC0](v130, v131);
  v159 = v130;
  (*(v139 + 104))(v161, *MEMORY[0x1E69E8098], v138);
  sub_1CF9E63F8();
  v166 = MEMORY[0x1E69E7CC0];
  sub_1CF01C474(&qword_1EDEAED80, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CF00FED0(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CF9E77B8();
  v140[3] = sub_1CF9E73B8();
  v140[6] = v155;
  sub_1CEFFC4F4(v163, v140 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_domain, type metadata accessor for LocalDomain);
  v148 = v162;
  v140[4] = v162;
  v140[5] = v148;
  *(v140 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_mode) = 1;
  *(v140 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_latency) = v137;
  *(v140 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) = 1;
  v149 = (v140 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_ownerDescription);
  *v149 = v159;
  v149[1] = v131;
  *(v164 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_reader) = v140;

  sub_1CF01BA64();
}

uint64_t sub_1CF02A97C()
{
  objc_sync_enter(v0);
  v1 = OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_source;
  if (*&v0[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_source])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7448();
    swift_unknownObjectRelease();
    if (*&v0[v1])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1CF9E7418();
      swift_unknownObjectRelease();
    }
  }

  *&v0[v1] = 0;
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_reader;

  sub_1CF02AA74();

  *(*&v0[v2] + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();

  return objc_sync_exit(v0);
}

void sub_1CF02AB00(uint64_t a1)
{
  v2 = sub_1CF9E63A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CF9E6448();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    aBlock = 0x676E6970706F7473;
    v39 = 0xE900000000000020;
    v11 = sub_1CF02736C();
    v13 = v12;
    MEMORY[0x1D3868CC0](v11);
    v13, v14, v15, v16, v17, v18, v19, v20;
    v28 = v39;
    if (*(a1 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) == 1)
    {
      v35 = aBlock;
      v36 = v6;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v34 = qword_1EDEBB5A0;
      v29 = sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1CF9FA450;
      *(v30 + 56) = MEMORY[0x1E69E6158];
      *(v30 + 64) = sub_1CEFD51C4();
      v31 = v34;
      *(v30 + 32) = v35;
      *(v30 + 40) = v28;
      sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v31, v29, v30);
      v28 = v30;
      v6 = v36;
    }

    v28, v21, v22, v23, v24, v25, v26, v27;
    FSEventStreamStop(v10);
    *(a1 + 16) = 0;
    *(a1 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = 0;
    swift_unknownObjectWeakAssign();
    v32 = swift_allocObject();
    *(v32 + 16) = v10;
    *(v32 + 24) = a1;
    v42 = sub_1CF02AF00;
    v43 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1CEFCA444;
    v41 = &block_descriptor_14;
    v33 = _Block_copy(&aBlock);

    sub_1CF9E63F8();
    v37 = MEMORY[0x1E69E7CC0];
    sub_1CF01C38C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF01049C();
    sub_1CF9E77B8();
    MEMORY[0x1D3869630](0, v9, v5, v33);
    _Block_release(v33);
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1CF02AEB8()
{

  return swift_deallocObject();
}

void sub_1CF02AF08(__FSEventStream *a1, uint64_t a2)
{
  FSEventStreamInvalidate(a1);
  FSEventStreamRelease(a1);

  v4 = sub_1CF02736C();
  v6 = v5;
  MEMORY[0x1D3868CC0](v4);
  v6, v7, v8, v9, v10, v11, v12, v13;
  v21 = 0xE800000000000000;
  if (*(a2 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) == 1)
  {
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v22 = qword_1EDEBB5A0;
    v23 = sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1CF9FA450;
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = sub_1CEFD51C4();
    *(v24 + 32) = 0x20646570706F7473;
    *(v24 + 40) = 0xE800000000000000;
    sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v22, v23, v24);
    v21 = v24;
  }

  v21, v14, v15, v16, v17, v18, v19, v20;
}

__n128 sub_1CF02B08C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  v17 = a1;
  v18 = &v8;
  sub_1CEFE1894(sub_1CF02B148);
  if (!v2)
  {
    v5 = v15;
    *(a2 + 96) = v14;
    *(a2 + 112) = v5;
    *(a2 + 128) = v16;
    v6 = v11;
    *(a2 + 32) = v10;
    *(a2 + 48) = v6;
    v7 = v13;
    *(a2 + 64) = v12;
    *(a2 + 80) = v7;
    result = v9;
    *a2 = v8;
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1CF02B148@<X0>(_DWORD *a1@<X8>)
{
  result = lstat(*(v1 + 16), *(v1 + 24));
  *a1 = result;
  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

void *sub_1CF02B218(uint64_t a1, char a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = [*(v2 + OBJC_IVAR____TtC18FileProviderDaemon27LocalChangesObserverContext_observer) finishEnumeratingChangesUpToSyncAnchor:a1 moreComing:a2 & 1];
    MEMORY[0x1EEE9AC00](v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1278, qword_1CFA08838);
    sub_1CF9E7398();

    return swift_unknownObjectWeakAssign();
  }

  return result;
}

uint64_t sub_1CF02B360@<X0>(void *a2@<X1>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  *a3 = sub_1CF02B3DC(a2);
  return swift_endAccess();
}

uint64_t sub_1CF02B3DC(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_1CF9E7848();

    if (v6)
    {
      v14 = sub_1CF8DDE34(v4, v5, v8, v9, v10, v11, v12, v13);
      v3, v15, v16, v17, v18, v19, v20, v21;
      return v14;
    }

    v3, v7, v8, v9, v10, v11, v12, v13;
    return 0;
  }

  v23 = v1;
  type metadata accessor for FSChangesEnumerator(0);
  v24 = sub_1CF9E7558();
  v25 = -1 << *(v3 + 32);
  v26 = v24 & ~v25;
  if (((*(v3 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
    return 0;
  }

  v27 = ~v25;
  while (1)
  {
    v28 = *(*(v3 + 48) + 8 * v26);
    v29 = sub_1CF9E7568();

    if (v29)
    {
      break;
    }

    v26 = (v26 + 1) & v27;
    if (((*(v3 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  v33 = *v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1CF6EF4E8();
    v31 = v33;
  }

  v32 = *(*(v31 + 48) + 8 * v26);
  sub_1CF02B564(v26);
  result = v32;
  *v23 = v33;
  return result;
}

unint64_t sub_1CF02B564(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1CF9E77D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1CF9E7558();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

id sub_1CF02B72C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_source;
  if (*&v0[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_source])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
  }

  *&v0[v2] = 0;
  swift_unknownObjectRelease();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1CF02B8DC(uint64_t result)
{
  if (result)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CF02B8E8()
{
  *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;
  sub_1CF000690(v0 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_domain, type metadata accessor for LocalDomain);
  *(v0 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_ownerDescription + 8), v8, v9, v10, v11, v12, v13, v14;
  sub_1CF02B994(v0 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF02BA84(void *a1, char a2, int a3, int a4, void *a5, uint64_t a6, void (**a7)(void, void, void, void))
{
  v102 = a4;
  v103 = a3;
  v12 = sub_1CF9E5A58();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v101 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v95 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v95 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  _Block_copy(a7);
  if (a2)
  {
    v97 = v20;
    v98 = v13;
    v99 = a1;
    v22 = sub_1CEFD4E9C([a1 identifier]);
    swift_beginAccess();
    v23 = *(v22 + 32);
    v24 = *(v22 + 40);
    v25 = *(v22 + 41);
    v96 = v12;
    v100 = a5;
    if (v25)
    {
      v95 = a6;
      v26 = qword_1EDEA34B0;
      v27 = v23;
      if (v26 != -1)
      {
        swift_once();
      }

      v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v30 = v29;
      v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v39 = v32;
      if (v28 == v31 && v30 == v32)
      {
        v30, v32, v33, v34, v35, v36, v37, v38;
        v39, v58, v59, v60, v61, v62, v63, v64;
        sub_1CEFD0994(v23, v24, 1);
      }

      else
      {
        v41 = sub_1CF9E8048();
        v30, v42, v43, v44, v45, v46, v47, v48;
        v39, v49, v50, v51, v52, v53, v54, v55;
        sub_1CEFD0994(v23, v24, 1);
        if ((v41 & 1) == 0)
        {
LABEL_21:
          v73 = swift_allocObject();
          *(v73 + 16) = sub_1CF8F8400;
          *(v73 + 24) = v21;
          v74 = swift_allocObject();
          v76 = v99;
          v75 = v100;
          *(v74 + 16) = v99;
          *(v74 + 24) = v75;
          *(v74 + 32) = sub_1CF8F8400;
          *(v74 + 40) = v21;
          *(v74 + 48) = v102 & 1;
          *(v74 + 49) = v103 & 1;
          v77 = swift_allocObject();
          *(v77 + 16) = sub_1CF902ED0;
          *(v77 + 24) = v73;
          swift_retain_n();
          v78 = v76;
          v79 = v75;

          sub_1CEFD4024("url(for:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:forBookmarkResolution:request:completionHandler:)", 113, 2, sub_1CF9032D4, v77, sub_1CF9032D0, v74);
        }
      }
    }

    else
    {
      if (v23)
      {
        v57 = 0;
      }

      else
      {
        v57 = v24 == 2;
      }

      if (!v57)
      {
        goto LABEL_21;
      }
    }

    v65 = sub_1CEFCE64C();
    if (*v65->tree)
    {
      v80 = v98;
      v81 = *(v98 + 16);
      v82 = v65;
      v83 = v96;
      v81(v17, v65 + ((*(v98 + 80) + 32) & ~*(v98 + 80)), v96);
      v82, v84, v85, v86, v87, v88, v89, v90;
      v91 = *(v80 + 32);
      v92 = v97;
      v91(v97, v17, v83);
      sub_1CEFD57E0(0, &unk_1EDEA35A0, 0x1E6967408);
      v93 = v101;
      v81(v101, v92, v83);
      v94 = sub_1CF02BFF8(v93, 0);
      (a7)[2](a7, 0, v94, 0);

      (*(v98 + 8))(v97, v83);
    }

    v65, v66, v67, v68, v69, v70, v71, v72;
    goto LABEL_21;
  }

  a7[2](a7, 0, 0, 0);
}

id sub_1CF02BFF8(uint64_t a1, char a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1CF9E5928();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() wrapperWithURL:v4 readonly:a2 & 1 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_1CF9E5A58();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_1CF9E57F8();

    swift_willThrow();
    v11 = sub_1CF9E5A58();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

void sub_1CF02C160(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1CF02C1C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v45 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  sub_1CEFCCBDC(v2, &v45 - v11, &qword_1EC4BE710, &qword_1CF9FE5A8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 45)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 1;
    v28 = 512;
LABEL_21:
    *(a1 + 24) = v28;
    return sub_1CEFCCC44(v12, &qword_1EC4BE710, &qword_1CF9FE5A8);
  }

  if (EnumCaseMultiPayload != 28)
  {
    if (EnumCaseMultiPayload == 14)
    {
      sub_1CEFCCBDC(v12, v9, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v14 = *(v9 + 10);
      if (v14 < 3)
      {
        sub_1CEFD0994(*v9, *(v9 + 8), *(v9 + 9));
        result = sub_1CEFCCC44(v12, &qword_1EC4BE710, &qword_1CF9FE5A8);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        *(a1 + 24) = -256;
        return result;
      }

      v39 = *(v9 + 9);
      v40 = *v9;
      v41 = *(v9 + 8);
      sub_1CF19F384(v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF30, &unk_1CFA05600);
      v42 = swift_dynamicCastMetatype();
      if (v39)
      {
        if (!v42)
        {
          *a1 = 262400;
          *(a1 + 8) = v14;
          *(a1 + 16) = v40;
          *(a1 + 25) = 1;
          return sub_1CEFCCC44(v12, &qword_1EC4BE710, &qword_1CF9FE5A8);
        }

        sub_1CEFD0994(v40, v41, 1);
      }

      else if (!v42)
      {
        *a1 = 262400;
        *(a1 + 8) = v14;
        *(a1 + 16) = v40;
        *(a1 + 24) = v41;
        *(a1 + 25) = 0;
        return sub_1CEFCCC44(v12, &qword_1EC4BE710, &qword_1CF9FE5A8);
      }
    }

    goto LABEL_20;
  }

  sub_1CEFCCBDC(v12, v6, &qword_1EC4BE710, &qword_1CF9FE5A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FA0, &unk_1CFA19770);
      v17 = *(v29 + 48);
      *&v6[*(v29 + 64) + 8], v30, v31, v32, v33, v34, v35, v36;
      v37 = *v6;
      v38 = v6[8];
      *a1 = 0x2000;
      *(a1 + 8) = 10;
      *(a1 + 16) = v37;
      *(a1 + 24) = v38;
      v26 = &qword_1EC4C1B40;
      v27 = &unk_1CF9FCB70;
      goto LABEL_12;
    }

    v43 = &unk_1EC4BFCC0;
    v44 = &unk_1CF9FCB50;
LABEL_18:
    sub_1CEFCCC44(v6, v43, v44);
LABEL_20:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v28 = -256;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v43 = &unk_1EC4BFD70;
    v44 = &qword_1CFA12AC0;
    goto LABEL_18;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1D0, &unk_1CFA18150);
  v17 = *(v16 + 48);
  *&v6[*(v16 + 64) + 8], v18, v19, v20, v21, v22, v23, v24;
  v25 = *v6;
  *a1 = 0x2000;
  *(a1 + 8) = 10;
  *(a1 + 16) = v25;
  *(a1 + 25) = 1;
  v26 = &unk_1EC4BFBB0;
  v27 = &qword_1CF9FCB90;
LABEL_12:
  sub_1CEFCCC44(&v6[v17], v26, v27);
  return sub_1CEFCCC44(v12, &qword_1EC4BE710, &qword_1CF9FE5A8);
}

uint64_t type metadata accessor for SyncState(uint64_t a1)
{
  result = qword_1EDEAB808;
  if (!qword_1EDEAB808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t errorInjectionPointEnabled(uint64_t a1, uint64_t a2)
{
  result = os_variant_has_internal_content();
  if (result)
  {
    if (a1 < 0)
    {
      errorInjectionPointEnabled_cold_4();
    }

    if (a1)
    {
      errorInjectionPointEnabled_cold_1();
    }

    if (a2 < 0)
    {
      errorInjectionPointEnabled_cold_3();
    }

    v5 = atomic_load(&errorInjectionPoints);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.fileproviderd"];
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error-injection.%@", @"base"];
      v8 = [v6 integerForKey:v7];

      v9 = v5;
      atomic_compare_exchange_strong(&errorInjectionPoints, &v9, v8 | 0x8000000000000000);
      if (v9 == v5)
      {
        v5 = v8 | 0x8000000000000000;
      }

      else
      {
        v5 = v9;
      }
    }

    if ((a2 & ~v5) != 0)
    {
      return 0;
    }

    else
    {
      v10 = fp_current_or_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        errorInjectionPointEnabled_cold_2(a2, v10);
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_1CF02C710(uint64_t a1)
{
  v2 = sub_1CF9E6378();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v13 = *(v3 + 16);
  v13(v7, a1, v2);
  v14 = sub_1CF9E6108();
  v15 = sub_1CF9E7288();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v8;
    v17 = v16;
    v32 = swift_slowAlloc();
    v33 = v9;
    v36 = v32;
    *v17 = 136315138;
    v13(v35, v7, v2);
    v18 = sub_1CF9E6968();
    v20 = v19;
    (*(v3 + 8))(v7, v2);
    v21 = sub_1CEFD0DF0(v18, v20, &v36);
    v20, v22, v23, v24, v25, v26, v27, v28;
    *(v17 + 4) = v21;
    _os_log_impl(&dword_1CEFC7000, v14, v15, "Network path update %s", v17, 0xCu);
    v29 = v32;
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1D386CDC0](v29, -1, -1);
    MEMORY[0x1D386CDC0](v17, -1, -1);

    return (*(v33 + 8))(v11, v34);
  }

  else
  {

    (*(v3 + 8))(v7, v2);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1CF02CA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v189 = a4;
  v194 = a3;
  v195 = a2;
  v7 = type metadata accessor for VFSItem(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v187 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v193 = &v187 - v12;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C8, &qword_1CFA058F0);
  v205 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v192 = &v187 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0510, &unk_1CFA16940);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v201 = &v187 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v187 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v204 = &v187 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v200 = &v187 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v187 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v191 = &v187 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v213 = &v187 - v29;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720);
  v30 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v214 = (&v187 - v31);
  v215 = type metadata accessor for SyncState(0);
  v190 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v221 = &v187 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v220 = &v187 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v219 = &v187 - v36;
  if (!*(v5 + 88))
  {
    *(v5 + 88) = os_transaction_create();
  }

  v37 = *(a1 + 16);
  v218 = v5;
  if (!v37)
  {
    v196 = 0;
    v198 = 0;
    v197 = 0;
    v39 = v219;
LABEL_103:
    v164 = *(v195 + 16);
    if (v164)
    {
      v82 = v195 + ((*(v190 + 80) + 32) & ~*(v190 + 80));
      v165 = *(v190 + 72);
      while (1)
      {
        sub_1CEFE505C(v82, v39, type metadata accessor for SyncState);
        LODWORD(v81) = v220;
        sub_1CEFE505C(v39, v220, type metadata accessor for SyncState);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 3)
        {
          if (EnumCaseMultiPayload > 1)
          {
            if (EnumCaseMultiPayload == 2)
            {
              sub_1CF007CB8(v220, type metadata accessor for SyncState);
              v168 = 2;
            }

            else
            {
              v168 = 3;
            }
          }

          else if (EnumCaseMultiPayload)
          {
            v168 = 1;
          }

          else
          {
            sub_1CF007CB8(v220, type metadata accessor for SyncState);
            v168 = 0;
          }
        }

        else if (EnumCaseMultiPayload <= 5)
        {
          if (EnumCaseMultiPayload == 4)
          {
            sub_1CF007CB8(v220, type metadata accessor for SyncState);
            v168 = 4;
          }

          else
          {
            sub_1CF007CB8(v220, type metadata accessor for SyncState);
            v168 = 5;
          }
        }

        else
        {
          v167 = EnumCaseMultiPayload == 7 ? 7 : 8;
          v168 = EnumCaseMultiPayload == 6 ? 6 : v167;
        }

        sub_1CEFE505C(v39, v221, type metadata accessor for SyncState);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v170 = v5;
        v5 = isUniquelyReferenced_nonNull_native;
        v222 = *(v170 + 24);
        v40 = v222;
        v171 = sub_1CF7BF4F4(v168);
        v173 = *v40->tree;
        v174 = (v172 & 1) == 0;
        v99 = __OFADD__(v173, v174);
        v175 = v173 + v174;
        if (v99)
        {
          break;
        }

        v176 = v172;
        if (*v40->tester >= v175)
        {
          if ((v5 & 1) == 0)
          {
            v40 = &v222;
            v181 = v171;
            sub_1CF7CFBE4();
            v171 = v181;
          }
        }

        else
        {
          sub_1CF7C4B2C(v175, v5);
          v40 = v222;
          v171 = sub_1CF7BF4F4(v168);
          if ((v176 & 1) != (v177 & 1))
          {
            goto LABEL_149;
          }
        }

        v5 = v218;
        v178 = v222;
        if (v176)
        {
          sub_1CF1D5818(v221, *v222[1].tester + v171 * v165);
          v39 = v219;
          sub_1CF007CB8(v219, type metadata accessor for SyncState);
        }

        else
        {
          *(&v222[2].super.isa + (v171 >> 6)) |= 1 << v171;
          *(*v178[1].tree + v171) = v168;
          sub_1CEFE4E00(v221, *v178[1].tester + v171 * v165, type metadata accessor for SyncState);
          v39 = v219;
          sub_1CF007CB8(v219, type metadata accessor for SyncState);
          v179 = *v178->tree;
          v99 = __OFADD__(v179, 1);
          v180 = v179 + 1;
          if (v99)
          {
            goto LABEL_141;
          }

          *v178->tree = v180;
        }

        *(v5 + 24) = v178;
        v82 += v165;
        if (!--v164)
        {
          goto LABEL_134;
        }
      }

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
    }

    else
    {
LABEL_134:
      v182 = v194;
      if (!v194)
      {
        sub_1CEFF7124(v196, 0);
        return sub_1CEFF7124(v198, v197);
      }

      v82 = swift_allocObject();
      *(v82 + 16) = v182;
      *(v82 + 24) = v189;
      v40 = *(v5 + 72);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_136;
      }
    }

    v40 = sub_1CF1F6A6C(0, (*v40->tree + 1), 1, v40);
LABEL_136:
    v184 = *v40->tree;
    v183 = *v40->tester;
    if (v184 >= v183 >> 1)
    {
      v40 = sub_1CF1F6A6C((v183 > 1), (v184 + 1), 1, v40);
    }

    *v40->tree = v184 + 1;
    v185 = v40 + 16 * v184;
    *(v185 + 4) = sub_1CF7969E0;
    *(v185 + 5) = v82;
    sub_1CEFF7124(v196, 0);
    result = sub_1CEFF7124(v198, v197);
    *(v5 + 72) = v40;
    return result;
  }

  v199 = v25;
  v203 = v18;
  v188 = v10;
  v196 = 0;
  v198 = 0;
  v197 = 0;
  v38 = a1 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
  v212 = (v205 + 56);
  v202 = (v205 + 48);
  v206 = (v8 + 48);
  v216 = *(v30 + 72);
  v39 = v219;
  v41 = v213;
  v40 = v214;
  v209 = v7;
  while (1)
  {
    sub_1CEFCCBDC(v38, v40, &unk_1EC4BED40, &unk_1CFA00720);
    v42 = swift_getEnumCaseMultiPayload();
    if (v42 > 3)
    {
      if (v42 > 5)
      {
        if (v42 == 6)
        {
          *(v5 + 64) = 1;
        }

        else if (v42 == 7)
        {
          *(v5 + 65) = 1;
        }

        else
        {
          *(v5 + 66) = 1;
        }

        goto LABEL_6;
      }

      if (v42 == 4)
      {
        isa = v40->super.isa;
        v66 = *(v5 + 80);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_1CF1F6AB4(0, *v66->tree + 1, 1, v66, v67, v68, v69, v70);
        }

        v72 = *v66->tree;
        v71 = *v66->tester;
        if (v72 >= v71 >> 1)
        {
          v66 = sub_1CF1F6AB4((v71 > 1), v72 + 1, 1, v66, v67, v68, v69, v70);
        }

        *v66->tree = v72 + 1;
        *(&v66[1].super.isa + v72) = isa;
        *(v5 + 80) = v66;
        goto LABEL_90;
      }

      LODWORD(v81) = v40->_anon_8[1];
      v82 = v40->super.isa;
      v92 = v40->_anon_8[0];
      v93 = swift_isUniquelyReferenced_nonNull_native();
      v94 = v5;
      v5 = v93;
      v222 = *(v94 + 8);
      v40 = v222;
      v95 = sub_1CF7BF2C0(v82, v92);
      v97 = *v40->tree;
      v98 = (v96 & 1) == 0;
      v99 = __OFADD__(v97, v98);
      v100 = v97 + v98;
      if (v99)
      {
        goto LABEL_142;
      }

      v101 = v96;
      if (*v40->tester >= v100)
      {
        v40 = v214;
        if ((v5 & 1) == 0)
        {
          v162 = v95;
          sub_1CF7D23B4();
          v40 = v214;
          v95 = v162;
        }

        v5 = v218;
        v103 = v222;
        if ((v101 & 1) == 0)
        {
LABEL_50:
          *(&v103[2].super.isa + (v95 >> 6)) |= 1 << v95;
          v104 = *v103[1].tree + 16 * v95;
          *v104 = v82;
          *(v104 + 8) = v92;
          *(*v103[1].tester + v95) = v81;
          v105 = *v103->tree;
          v99 = __OFADD__(v105, 1);
          v106 = v105 + 1;
          if (v99)
          {
            goto LABEL_145;
          }

          *v103->tree = v106;
          goto LABEL_67;
        }
      }

      else
      {
        sub_1CF7CA248(v100, v5);
        v95 = sub_1CF7BF2C0(v82, v92);
        if ((v101 & 1) != (v102 & 1))
        {
          goto LABEL_150;
        }

        v5 = v218;
        v40 = v214;
        v103 = v222;
        if ((v101 & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      *(*v103[1].tester + v95) = v81;
LABEL_67:
      *(v5 + 8) = v103;
LABEL_68:
      v39 = v219;
      v41 = v213;
      goto LABEL_6;
    }

    if (v42 > 1)
    {
      if (v42 == 2)
      {
        v58 = v40->super.isa;
        anon_8 = v40->_anon_8;
        v60 = v40->tree[0];
        v61 = *(v5 + 32);
        if (v61 != 2)
        {
          anon_8 = (v5 + 40);
        }

        v62 = *anon_8;
        if (v61 != 2)
        {
          v60 = *(v5 + 48);
          v58 = v61;
        }

        *(v5 + 32) = v58 & 1;
        *(v5 + 40) = v62;
        *(v5 + 48) = v60 & 1;
        v63 = *(v5 + 65);
        if (v63 == 1)
        {
          LOBYTE(v63) = 2;
        }

        *(v5 + 65) = v63;
        v64 = *(v5 + 64);
        if (v64 == 1)
        {
          LOBYTE(v64) = 2;
        }

        *(v5 + 64) = v64;
        goto LABEL_6;
      }

      v80 = v7;
      v81 = *v40->tree;
      LODWORD(v210) = v40->tester[0];
      v82 = v40->super.isa;
      v83 = v40->_anon_8[0];
      v84 = swift_isUniquelyReferenced_nonNull_native();
      v222 = *(v5 + 56);
      v40 = v222;
      v5 = sub_1CF7BF2C0(v82, v83);
      v86 = *v40->tree;
      v87 = (v85 & 1) == 0;
      v88 = v86 + v87;
      if (__OFADD__(v86, v87))
      {
        goto LABEL_143;
      }

      v89 = v85;
      if (*v40->tester >= v88)
      {
        v40 = v214;
        if ((v84 & 1) == 0)
        {
          sub_1CF7D2514();
          v40 = v214;
        }

        v7 = v80;
      }

      else
      {
        sub_1CF7CA528(v88, v84);
        v90 = sub_1CF7BF2C0(v82, v83);
        if ((v89 & 1) != (v91 & 1))
        {
          goto LABEL_150;
        }

        v5 = v90;
        v7 = v80;
        v40 = v214;
      }

      v107 = v222;
      if (v89)
      {
        v108 = *v222[1].tester + 16 * v5;
        *v108 = v81;
        *(v108 + 8) = v210;
      }

      else
      {
        *(&v222[2].super.isa + (v5 >> 6)) |= 1 << v5;
        v109 = *v107[1].tree + 16 * v5;
        *v109 = v82;
        *(v109 + 8) = v83;
        v110 = *v107[1].tester + 16 * v5;
        *v110 = v81;
        *(v110 + 8) = v210;
        v111 = *v107->tree;
        v99 = __OFADD__(v111, 1);
        v112 = v111 + 1;
        if (v99)
        {
          goto LABEL_144;
        }

        *v107->tree = v112;
      }

      v5 = v218;
      v218[7] = v107;
      goto LABEL_68;
    }

    if (v42)
    {
      v73 = sub_1CF7BF2C0(v40->super.isa, v40->_anon_8[0]);
      if (v74)
      {
        v75 = v73;
        v76 = swift_isUniquelyReferenced_nonNull_native();
        v77 = *(v5 + 16);
        v222 = v77;
        if (!v76)
        {
          sub_1CF7D2684();
          v77 = v222;
        }

        v78 = v203;
        sub_1CEFE55D0(*(v77 + 56) + *(v205 + 72) * v75, v203, &qword_1EC4BE1C8, &qword_1CFA058F0);
        sub_1CF1D02FC(v75, v77);
        v79 = 0;
        *(v5 + 16) = v77;
      }

      else
      {
        v79 = 1;
        v78 = v203;
      }

      (*v212)(v78, v79, 1, v211);
      sub_1CEFCCC44(v78, &unk_1EC4C0510, &unk_1CFA16940);
      goto LABEL_54;
    }

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820);
    v44 = *(v43 + 48);
    v210 = *(&v40->super.isa + *(v43 + 64));
    v45 = v40->super.isa;
    v46 = v40->_anon_8[0];
    sub_1CEFE55D0(v40 + v44, v41, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v47 = *(v5 + 65);
    if (v47 == 1)
    {
      LOBYTE(v47) = 2;
    }

    *(v5 + 65) = v47;
    v48 = *(v5 + 64);
    if (v48 == 1)
    {
      LOBYTE(v48) = 2;
    }

    *(v5 + 64) = v48;
    v49 = *(v5 + 16);
    v50 = *(v49 + 16);
    v208 = v46;
    if (v50)
    {
      v51 = sub_1CF7BF2C0(v45, v46);
      v52 = v206;
      v53 = v211;
      if (v54)
      {
        v55 = *(v49 + 56);
        v56 = v204;
        sub_1CEFCCBDC(v55 + *(v205 + 72) * v51, v204, &qword_1EC4BE1C8, &qword_1CFA058F0);
        v57 = 0;
      }

      else
      {
        v57 = 1;
        v56 = v204;
      }
    }

    else
    {
      v57 = 1;
      v56 = v204;
      v52 = v206;
      v53 = v211;
    }

    v207 = v45;
    v113 = *v212;
    (*v212)(v56, v57, 1, v53);
    if ((*v202)(v56, 1, v53))
    {
      break;
    }

    v114 = v56;
    v115 = v56;
    v116 = v192;
    sub_1CEFCCBDC(v114, v192, &qword_1EC4BE1C8, &qword_1CFA058F0);
    sub_1CEFCCC44(v115, &unk_1EC4C0510, &unk_1CFA16940);
    v117 = v191;
    sub_1CEFCCBDC(v116 + *(v53 + 36), v191, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFCCC44(v116, &qword_1EC4BE1C8, &qword_1CFA058F0);
    LODWORD(v116) = (*v52)(v117, 1, v209);
    v53 = v211;
    sub_1CEFCCC44(v117, &unk_1EC4BEC00, &unk_1CF9FCB60);
    if (v116 != 1)
    {
      goto LABEL_78;
    }

    v118 = sub_1CF7BF2C0(v207, v208);
    if (v119)
    {
      v120 = v118;
      v121 = swift_isUniquelyReferenced_nonNull_native();
      v122 = *(v5 + 56);
      v222 = v122;
      v39 = v219;
      v41 = v213;
      v7 = v209;
      if (!v121)
      {
        sub_1CF7D2514();
        v122 = v222;
      }

      sub_1CF1D0104(v120, v122);

      sub_1CEFCCC44(v41, &unk_1EC4BEC00, &unk_1CF9FCB60);
      *(v5 + 56) = v122;
      goto LABEL_54;
    }

    v41 = v213;
    sub_1CEFCCC44(v213, &unk_1EC4BEC00, &unk_1CF9FCB60);

LABEL_101:
    v39 = v219;
    v7 = v209;
LABEL_54:
    v40 = v214;
LABEL_6:
    v38 += v216;
    if (!--v37)
    {
      goto LABEL_103;
    }
  }

  sub_1CEFCCC44(v56, &unk_1EC4C0510, &unk_1CFA16940);
LABEL_78:
  v123 = v201;
  v124 = v52;
  v41 = v213;
  v125 = v53;
  sub_1CEFCCBDC(v213, &v201[*(v53 + 36)], &unk_1EC4BEC00, &unk_1CF9FCB60);
  v126 = v113;
  v127 = v207;
  *v123 = v207;
  v128 = v208;
  *(v123 + 8) = v208;
  *(v123 + *(v125 + 40)) = v210;
  v126(v123, 0, 1, v125);

  sub_1CF1C959C(v123, v127, v128);
  v129 = v199;
  sub_1CEFCCBDC(v41, v199, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v81 = *v124;
  v130 = v209;
  if ((*v124)(v129, 1, v209) == 1)
  {
    sub_1CEFCCC44(v41, &unk_1EC4BEC00, &unk_1CF9FCB60);

    sub_1CEFCCC44(v129, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v39 = v219;
    v7 = v130;
    goto LABEL_90;
  }

  v131 = v129;
  v132 = v193;
  sub_1CEFE4E00(v131, v193, type metadata accessor for VFSItem);
  v133 = *(v132 + *(v130 + 36));
  sub_1CF007CB8(v132, type metadata accessor for VFSItem);
  v134 = v200;
  sub_1CEFCCBDC(v41, v200, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if (v81(v134, 1, v130) == 1)
  {
    sub_1CEFCCC44(v41, &unk_1EC4BEC00, &unk_1CF9FCB60);

    sub_1CEFCCC44(v134, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v39 = v219;
    v7 = v209;
    goto LABEL_90;
  }

  if (*(v134 + 8))
  {
    LODWORD(v81) = *(v134 + *(v209 + 40));
    type metadata accessor for fpfs_tempfile_pattern_t(0);
    if (v81 > 0xB)
    {
      goto LABEL_151;
    }

    if (((1 << v81) & 0xC8E) != 0)
    {
      sub_1CEFCCC44(v213, &unk_1EC4BEC00, &unk_1CF9FCB60);

      v135 = v200;
      goto LABEL_89;
    }

    v134 = v200;
    if (((1 << v81) & 0x370) != 0)
    {
      sub_1CEFCCC44(v213, &unk_1EC4BEC00, &unk_1CF9FCB60);

      v135 = v134;
LABEL_89:
      v136 = v188;
      sub_1CEFE505C(v135, v188, type metadata accessor for VFSItem);
      type metadata accessor for VFSTrackingContinuation(0);
      v137 = swift_allocObject();
      v7 = v209;
      v138 = v136 + *(v209 + 28);
      v139 = *(type metadata accessor for ItemMetadata(0) + 32);
      v140 = OBJC_IVAR____TtC18FileProviderDaemon23VFSTrackingContinuation_contentModificationDate;
      v141 = sub_1CF9E5CF8();
      v142 = *(v141 - 8);
      (*(v142 + 16))(v137 + v140, v138 + v139, v141);
      v143 = v136;
      v41 = v213;
      sub_1CF007CB8(v143, type metadata accessor for VFSItem);
      swift_setDeallocating();
      (*(v142 + 8))(v137 + OBJC_IVAR____TtC18FileProviderDaemon23VFSTrackingContinuation_contentModificationDate, v141);
      v5 = v218;
      swift_deallocClassInstance();
      sub_1CF007CB8(v200, type metadata accessor for VFSItem);
      v39 = v219;
LABEL_90:
      v40 = v214;
      goto LABEL_6;
    }
  }

  sub_1CF007CB8(v134, type metadata accessor for VFSItem);
  sub_1CEFF7124(v196, 0);
  v144 = swift_allocObject();
  *(v144 + 16) = sub_1CF75D960;
  *(v144 + 24) = 0;
  sub_1CEFF7124(v198, v197);
  v145 = swift_isUniquelyReferenced_nonNull_native();
  v146 = v5;
  v147 = v145;
  v222 = *v146;
  v148 = v222;
  v149 = v133;
  v151 = sub_1CF7BF380(v133);
  v152 = *v148->tree;
  v153 = (v150 & 1) == 0;
  v154 = v152 + v153;
  if (!__OFADD__(v152, v153))
  {
    LODWORD(v81) = v210;
    if (*v148->tester >= v154)
    {
      if ((v147 & 1) == 0)
      {
        v163 = v150;
        sub_1CF7D2258();
        v150 = v163;
        v148 = v222;
      }
    }

    else
    {
      v155 = v150;
      sub_1CF7C9FD8(v154, v147);
      v148 = v222;
      v156 = sub_1CF7BF380(v149);
      v158 = v157 & 1;
      v150 = v155;
      if ((v155 & 1) != v158)
      {
        goto LABEL_152;
      }

      v151 = v156;
    }

    v5 = v218;
    *v218 = v148;
    if ((v150 & 1) == 0)
    {
      v159 = (*(v144 + 16))();
      *(&v148[2].super.isa + (v151 >> 6)) |= 1 << v151;
      *(*v148[1].tree + 8 * v151) = v149;
      *(*v148[1].tester + 8 * v151) = v159;
      v160 = *v148->tree;
      v99 = __OFADD__(v160, 1);
      v161 = v160 + 1;
      if (v99)
      {
        goto LABEL_148;
      }

      *v148->tree = v161;
    }

    sub_1CF6E9500(&v222, v207, v208);

    v41 = v213;
    sub_1CEFCCC44(v213, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v198 = sub_1CF796548;
    v196 = sub_1CF75D960;
    v197 = v144;
    goto LABEL_101;
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  sub_1CF9E8108();
  __break(1u);
LABEL_150:
  sub_1CF9E8108();
  __break(1u);
LABEL_151:
  LODWORD(v222) = v81;
  sub_1CF9E80C8();
  __break(1u);
LABEL_152:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

uint64_t sub_1CF02E094(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CF7FC814("init(reconciliationTable:jobRegistry:snapshotA:snapshotB:syncState:telemetry:options:)", 0x56uLL, 2, sub_1CF482D9C, result);
  }

  return result;
}

void sub_1CF02E220(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v175 = a4;
  v172 = a2;
  v178 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720);
  v185 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v180 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v155 - v9;
  v11 = sub_1CF9E63D8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v155 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v171 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v177 = &v155 - v18;
  v169 = sub_1CF9E6068();
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v164 = &v155 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v174 = &v155 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v173 = &v155 - v23;
  v163 = type metadata accessor for Signpost(0);
  v165 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v170 = &v155 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v167 = &v155 - v26;
  v166 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v155 - v29;
  v187 = sub_1CF9E6118();
  v182 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v181 = &v155 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v162 = &v155 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v155 - v35;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v38 = Strong;
    v160 = a3;
    v39 = *(Strong + 80);
    v176 = Strong;
    v161 = v30;
    v159 = v11;
    v158 = v12;
    v157 = v14;
    if ((v39 & 0x40) != 0)
    {
      v40 = [objc_allocWithZone(FPLoggerScope) init];
      v41 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v42 = v40;
      v43 = sub_1CF9E6108();
      v44 = sub_1CF9E7298();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = [v42 enter];
        *(v45 + 4) = v47;
        *v46 = v47;
        _os_log_impl(&dword_1CEFC7000, v43, v44, "%@ 👁  aggregate incoming FS tree changes", v45, 0xCu);
        sub_1CEFCCC44(v46, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v46, -1, -1);
        MEMORY[0x1D386CDC0](v45, -1, -1);
      }

      v156 = v42;

      v48 = v182 + 8;
      v186 = *(v182 + 8);
      v186(v36, v187);
      v50 = *(v178 + 16);
      v51 = v181;
      if (v50)
      {
        v52 = v178 + ((*(v185 + 80) + 32) & ~*(v185 + 80));
        v185 = *(v185 + 72);
        *&v49 = 136315138;
        v179 = v49;
        v182 = v48;
        do
        {
          v71 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          sub_1CEFCCBDC(v52, v10, &unk_1EC4BED40, &unk_1CFA00720);
          v72 = sub_1CF9E6108();
          v73 = sub_1CF9E7298();
          if (os_log_type_enabled(v72, v73))
          {
            v53 = swift_slowAlloc();
            v183 = v53;
            v184 = swift_slowAlloc();
            *&aBlock = v184;
            *v53 = v179;
            v54 = v180;
            sub_1CEFCCBDC(v10, v180, &unk_1EC4BED40, &unk_1CFA00720);
            sub_1CEFCCC44(v10, &unk_1EC4BED40, &unk_1CFA00720);
            v55 = v10;
            v56 = sub_1CF042768();
            v58 = v57;
            sub_1CEFCCC44(v54, &unk_1EC4BED40, &unk_1CFA00720);
            v59 = v56;
            v10 = v55;
            v51 = v181;
            v60 = sub_1CEFD0DF0(v59, v58, &aBlock);
            v58, v61, v62, v63, v64, v65, v66, v67;
            v68 = v183;
            *(v183 + 1) = v60;
            v69 = v68;
            _os_log_impl(&dword_1CEFC7000, v72, v73, "%s", v68, 0xCu);
            v70 = v184;
            __swift_destroy_boxed_opaque_existential_1(v184);
            MEMORY[0x1D386CDC0](v70, -1, -1);
            MEMORY[0x1D386CDC0](v69, -1, -1);
          }

          else
          {
            sub_1CEFCCC44(v10, &unk_1EC4BED40, &unk_1CFA00720);
          }

          v186(v51, v187);
          v52 += v185;
          --v50;
        }

        while (v50);
      }

      v75 = fpfs_current_or_default_log();
      v76 = v162;
      sub_1CF9E6128();
      v77 = v156;
      v78 = sub_1CF9E6108();
      v79 = sub_1CF9E7298();

      v80 = os_log_type_enabled(v78, v79);
      v30 = v161;
      if (v80)
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *v81 = 138412290;
        v83 = [v77 leave];
        *(v81 + 4) = v83;
        *v82 = v83;
        _os_log_impl(&dword_1CEFC7000, v78, v79, "%@", v81, 0xCu);
        sub_1CEFCCC44(v82, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v82, -1, -1);
        MEMORY[0x1D386CDC0](v81, -1, -1);
      }

      v186(v76, v187);
      v38 = v176;
    }

    v84 = (v38 + qword_1EDEBBC20);
    os_unfair_lock_lock((v38 + qword_1EDEBBC20));
    sub_1CF02CA00(v178, v172, v160, v175);
    os_unfair_lock_unlock(v84);
    if ((*(v38 + 80) & 0x40) == 0)
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);

      swift_unknownObjectRelease();
      return;
    }

    v86 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v87 = qword_1EDEBBE40;
    v88 = v168;
    v89 = v173;
    v90 = v169;
    (*(v168 + 56))(v173, 1, 1, v169);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v91 = sub_1CF9E7988();
    v93 = v92;
    MEMORY[0x1D3868CC0](v91);
    v93, v94, v95, v96, v97, v98, v99, v100;
    v101 = aBlock;
    v102 = v89;
    v103 = v174;
    sub_1CEFCCBDC(v102, v174, &unk_1EC4BED20, &unk_1CFA00700);
    v104 = *(v88 + 48);
    v105 = v104(v103, 1, v90);
    v186 = *(&v101 + 1);
    v187 = v86;
    if (v105 == 1)
    {
      v106 = v87;
      v107 = v164;
      sub_1CF9E6048();
      if (v104(v174, 1, v90) != 1)
      {
        sub_1CEFCCC44(v174, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v107 = v164;
      (*(v88 + 32))(v164, v174, v90);
    }

    (*(v88 + 16))(v30, v107, v90);
    v108 = v163;
    *&v30[*(v163 + 20)] = v87;
    v109 = &v30[*(v108 + 24)];
    *v109 = "DB queue wait";
    *(v109 + 1) = 13;
    v109[16] = 2;
    v110 = v87;
    v111 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v112 = v88;
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_1CF9FA450;
    *(v113 + 56) = MEMORY[0x1E69E6158];
    *(v113 + 64) = sub_1CEFD51C4();
    v114 = v186;
    *(v113 + 32) = v101;
    *(v113 + 40) = v114;
    sub_1CF9E6028(v111, &dword_1CEFC7000, v110, "DB queue wait", 13, 2, v30, "%s", 2);
    v113, v115, v116, v117, v118, v119, v120, v121;
    (*(v112 + 8))(v107, v90);
    sub_1CEFCCC44(v173, &unk_1EC4BED20, &unk_1CFA00700);
    v184 = *(v176 + 168);
    v186 = *(v176 + 64);
    v122 = sub_1CF9E6448();
    v123 = *(v122 - 8);
    v182 = v122;
    v183 = v123;
    (*(v123 + 56))(v177, 1, 1, v122);
    v124 = v167;
    sub_1CEFE505C(v30, v167, type metadata accessor for Signpost);
    v125 = (*(v165 + 80) + 16) & ~*(v165 + 80);
    v126 = (v166 + v125 + 7) & 0xFFFFFFFFFFFFFFF8;
    v127 = v30;
    v128 = swift_allocObject();
    sub_1CEFE4E00(v124, v128 + v125, type metadata accessor for Signpost);
    v129 = (v128 + v126);
    v185 = nullsub_1;
    *v129 = nullsub_1;
    v129[1] = 0;
    v130 = v170;
    sub_1CEFE505C(v127, v170, type metadata accessor for Signpost);
    v131 = (v126 + 23) & 0xFFFFFFFFFFFFFFF8;
    v132 = (v131 + 15) & 0xFFFFFFFFFFFFFFF8;
    v133 = (v132 + 25) & 0xFFFFFFFFFFFFFFF8;
    v134 = (v133 + 23) & 0xFFFFFFFFFFFFFFF8;
    v135 = swift_allocObject();
    sub_1CEFE4E00(v130, v135 + v125, type metadata accessor for Signpost);
    v136 = (v135 + v126);
    *v136 = sub_1CF045408;
    v136[1] = 0;
    v137 = v176;
    *(v135 + v131) = v176;
    v138 = v135 + v132;
    *v138 = "processPendingStreamResetOrIdle()";
    *(v138 + 8) = 33;
    *(v138 + 16) = 2;
    v139 = (v135 + v133);
    v140 = v182;
    v141 = v183;
    *v139 = v185;
    v139[1] = 0;
    v142 = (v135 + v134);
    *v142 = sub_1CF796AB4;
    v142[1] = v137;
    v143 = swift_allocObject();
    v143[2] = sub_1CF75C120;
    v143[3] = v128;
    v144 = v184;
    v143[4] = v184;
    swift_retain_n();
    v185 = v128;

    v145 = fpfs_current_log();
    v146 = v144[2];
    v147 = v171;
    sub_1CEFCCBDC(v177, v171, &unk_1EC4BE370, qword_1CFA01B30);
    if ((v141[6])(v147, 1, v140) == 1)
    {
      sub_1CEFCCC44(v147, &unk_1EC4BE370, qword_1CFA01B30);
      v148 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v149 = v157;
      sub_1CF9E6438();
      v141[1](v147, v140);
      v148 = sub_1CF9E63C8();
      (*(v158 + 8))(v149, v159);
    }

    v150 = swift_allocObject();
    v150[2] = v145;
    v150[3] = sub_1CF4858EC;
    v150[4] = v135;
    v191 = sub_1CF2BA17C;
    v192 = v150;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v189 = sub_1CEFCA444;
    v190 = &block_descriptor_766;
    v151 = _Block_copy(&aBlock);
    v152 = v145;

    v191 = sub_1CF2BA180;
    v192 = v143;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v189 = sub_1CEFCA444;
    v190 = &block_descriptor_769;
    v153 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v146, v186, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v148, v151, v153);
    _Block_release(v153);
    _Block_release(v151);

    sub_1CEFCCC44(v177, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CF007CB8(v161, type metadata accessor for Signpost);
    v154 = v187;
    v74 = fpfs_adopt_log();
  }

  else
  {
    if (!a3)
    {
      return;
    }

    v74 = FPDomainUnavailableError();
    a3();
  }
}

uint64_t sub_1CF02F42C(uint64_t a1, int a2)
{
  v164 = a2;
  v163 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v160 = *(v2 - 8);
  v161 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v148 = &v147 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  MEMORY[0x1EEE9AC00](v4);
  v157 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v155 = (&v147 - v7);
  MEMORY[0x1EEE9AC00](v8);
  v156 = &v147 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v154 = (&v147 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v153 = &v147 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v152 = &v147 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v151 = &v147 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v158 = &v147 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v150 = &v147 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v149 = (&v147 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v147 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v147 - v28);
  MEMORY[0x1EEE9AC00](v30);
  v162 = (&v147 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v159 = &v147 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = (&v147 - v35);
  MEMORY[0x1EEE9AC00](v37);
  v39 = (&v147 - v38);
  MEMORY[0x1EEE9AC00](v40);
  v42 = (&v147 - v41);
  MEMORY[0x1EEE9AC00](v43);
  v45 = (&v147 - v44);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v147 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v147 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v147 - v53;
  sub_1CEFCCBDC(v165, &v147 - v53, &qword_1EC4BE710, &qword_1CF9FE5A8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v55 = v149;
      sub_1CEFCCBDC(v54, v149, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if ((*v55 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF30, &unk_1CFA05600);
      v56 = swift_dynamicCastClass();
      if (!v56)
      {
        goto LABEL_28;
      }

      v57 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v58 = swift_allocObject();
      v165 = xmmword_1CF9FA450;
      *(v58 + 16) = xmmword_1CF9FA450;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
      v59 = swift_allocObject();
      *(v59 + 16) = v165;
      *(v59 + 32) = sub_1CF388E8C();
      v60 = *(v57 + 144);
      v61 = *(v57 + 152);
      *(v58 + 40) = v59;
      *(v58 + 48) = v60;
      *(v58 + 56) = v61;
      *(v58 + 32) = 0x200000;

      sub_1CEFCCC44(v54, &qword_1EC4BE710, &qword_1CF9FE5A8);
      return v58;
    case 2u:
      sub_1CEFCCBDC(v54, v26, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v94 = *v26;
      v95 = v26[8];
      if (v26[9])
      {
        v64 = *v26;
        v65 = v26[8];
        goto LABEL_75;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v117 = swift_allocObject();
      *(v117 + 16) = xmmword_1CF9FA450;
      *(v117 + 56) = v95;
      *(v117 + 32) = 8;
      *(v117 + 40) = &unk_1F4BEE3F0;
      *(v117 + 48) = v94;
      goto LABEL_60;
    case 3u:
      sub_1CEFCCBDC(v54, v48, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v78 = *v48;
      v79 = v48[8];
      if ((v48[9] & 1) == 0)
      {
        goto LABEL_62;
      }

      v64 = *v48;
      v65 = v48[8];
      goto LABEL_75;
    case 5u:
      sub_1CEFCCBDC(v54, v36, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if (*(v36 + 9))
      {
        sub_1CEFD0994(v36[2], *(v36 + 24), *(v36 + 25));
        v64 = *v36;
        v93 = *(v36 + 9);
        v65 = *(v36 + 8);
        goto LABEL_76;
      }

      v115 = *v36;
      v116 = *(v36 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1CF9FA450;
      *(v67 + 56) = v116;
      *(v67 + 32) = 64;
      *(v67 + 40) = &unk_1F4BEE2B0;
      *(v67 + 48) = v115;
      sub_1CEFD0994(v36[2], *(v36 + 24), *(v36 + 25));
      goto LABEL_54;
    case 6u:
      v80 = v159;
      sub_1CEFCCBDC(v54, v159, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320) + 48);
      v82 = v161;
      v83 = *(v160 + 48);
      if (v83(v80 + v81, 1, v161) == 1)
      {
        if (v83(v80, 1, v82) == 1)
        {
          sub_1CEFCCC44(v80, &qword_1EC4C1B40, &unk_1CF9FCB70);
          goto LABEL_77;
        }

        v127 = v148;
        sub_1CEFE55D0(v80, v148, &unk_1EC4BE360, &qword_1CF9FE650);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_1CF9FA450;
        v128 = *v127;
        *(v76 + 56) = *(v127 + 8);
        *(v76 + 32) = 96;
        *(v76 + 40) = &unk_1F4BEE300;
        *(v76 + 48) = v128;
        v114 = v127;
        v112 = &unk_1EC4BE360;
        v113 = &qword_1CF9FE650;
      }

      else
      {
        v110 = v148;
        sub_1CEFE55D0(v80 + v81, v148, &unk_1EC4BE360, &qword_1CF9FE650);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_1CF9FA450;
        v111 = *(v110 + 16);
        *(v76 + 56) = *(v110 + 24);
        *(v76 + 32) = 8;
        *(v76 + 40) = &unk_1F4BEE2D8;
        *(v76 + 48) = v111;
        sub_1CEFCCC44(v110, &unk_1EC4BE360, &qword_1CF9FE650);
        v112 = &qword_1EC4C1B40;
        v113 = &unk_1CF9FCB70;
        v114 = v80;
      }

      sub_1CEFCCC44(v114, v112, v113);
      goto LABEL_82;
    case 0xBu:
      v45 = v162;
      sub_1CEFCCBDC(v54, v162, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if ((*(v45 + 9) & 1) == 0)
      {
        goto LABEL_34;
      }

      v88 = *(v45 + 12);
      if (v88 >> 8 > 0xFE)
      {
        sub_1CEFD0994(*v45, *(v45 + 8), 1);
        sub_1CF47FDFC(v45[2], *(v45 + 12));
        goto LABEL_77;
      }

      if ((v88 & 0x100) != 0)
      {
        v96 = v45[2];
        v97 = *(v45 + 12);
        goto LABEL_35;
      }

      v129 = *(v45 + 27);
      if (!*(v45 + 27))
      {
        v146 = v45[2];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
        v117 = swift_allocObject();
        *(v117 + 16) = xmmword_1CF9FA450;
        *(v117 + 56) = v88;
        *(v117 + 32) = 64;
        *(v117 + 40) = &unk_1F4BEE328;
        *(v117 + 48) = v146;
        goto LABEL_104;
      }

      if (v129 == 2)
      {
        v145 = v45[2];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
        v131 = swift_allocObject();
        v117 = v131;
        *(v131 + 16) = xmmword_1CF9FA450;
        *(v131 + 48) = v145;
        *(v131 + 56) = v88;
        v132 = &unk_1F4BEE350;
        goto LABEL_102;
      }

      if (v129 == 4)
      {
        v130 = v45[2];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
        v131 = swift_allocObject();
        v117 = v131;
        *(v131 + 16) = xmmword_1CF9FA450;
        *(v131 + 48) = v130;
        *(v131 + 56) = v88;
        v132 = &unk_1F4BEE378;
LABEL_102:
        *(v131 + 32) = 32;
        *(v131 + 40) = v132;
LABEL_104:
        sub_1CEFD0994(*v45, *(v45 + 8), 1);
        goto LABEL_60;
      }

      v64 = *v45;
      v65 = *(v45 + 8);
LABEL_75:
      v93 = 1;
LABEL_76:
      sub_1CEFD0994(v64, v65, v93);
      goto LABEL_77;
    case 0xCu:
      sub_1CEFCCBDC(v54, v45, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if ((*(v45 + 9) & 1) == 0)
      {
        v78 = *v45;
        v79 = *(v45 + 8);
        sub_1CF47FDFC(v45[2], *(v45 + 12));
LABEL_62:
        sub_1CEFCCC44(v54, &qword_1EC4BE710, &qword_1CF9FE5A8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
        result = swift_allocObject();
        *(result + 16) = xmmword_1CF9FA440;
        *(result + 56) = v79;
        *(result + 32) = 32;
        *(result + 40) = &unk_1F4BEE210;
        *(result + 48) = v78;
        *(result + 88) = 2;
        *(result + 64) = 128;
        *(result + 72) = &unk_1F4BEE238;
        *(result + 80) = 0;
        return result;
      }

LABEL_34:
      v96 = v45[2];
      v97 = *(v45 + 12);
LABEL_35:
      sub_1CF47FDFC(v96, v97);
      v64 = *v45;
      v93 = *(v45 + 9);
      v65 = *(v45 + 8);
      goto LABEL_76;
    case 0xEu:
      sub_1CEFCCBDC(v54, v51, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if (v51[9])
      {
        v64 = *v51;
        v65 = v51[8];
        goto LABEL_75;
      }

      v118 = v51[10];
      v119 = *v51;
      v120 = v51[8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v67 = swift_allocObject();
      v165 = xmmword_1CF9FA450;
      *(v67 + 16) = xmmword_1CF9FA450;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
      v108 = swift_allocObject();
      *(v108 + 16) = v165;
      *(v108 + 32) = v118;
      *(v67 + 48) = v119;
      *(v67 + 56) = v120;
      v109 = 393472;
      goto LABEL_64;
    case 0xFu:
      sub_1CEFCCBDC(v54, v42, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if (*(v42 + 9))
      {

        v64 = *v42;
        v93 = *(v42 + 9);
        v65 = *(v42 + 8);
        goto LABEL_76;
      }

      v167 = v42[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      if (swift_dynamicCast() && v166 == 3)
      {
        v124 = *v42;
        v125 = *(v42 + 8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
        v67 = swift_allocObject();
        *(v67 + 16) = xmmword_1CF9FA450;
        *(v67 + 56) = v125;
        *(v67 + 32) = 64;
        *(v67 + 40) = &unk_1F4BEE260;
        *(v67 + 48) = v124;

        goto LABEL_54;
      }

      goto LABEL_90;
    case 0x10u:
      sub_1CEFCCBDC(v54, v39, &qword_1EC4BE710, &qword_1CF9FE5A8);

      if (*(v39 + 9))
      {
        v64 = *v39;
        v65 = *(v39 + 8);
        goto LABEL_75;
      }

      v42 = v39;
LABEL_90:
      v133 = *(v42 + 8);
      v134 = *v42;
      sub_1CEFCCC44(v54, &qword_1EC4BE710, &qword_1CF9FE5A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      result = swift_allocObject();
      *(result + 16) = xmmword_1CF9FA450;
      *(result + 48) = v134;
      *(result + 56) = v133;
      v135 = 96;
      v136 = &unk_1F4BEE288;
      goto LABEL_95;
    case 0x14u:
      v71 = v150;
      sub_1CEFCCBDC(v54, v150, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v72 = *v71;

      v73 = *(v71 + 17);
      v74 = *(v71 + 8);
      v75 = *(v71 + 16);
      if (v73)
      {
        goto LABEL_41;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v76 = swift_allocObject();
      v165 = xmmword_1CF9FA450;
      *(v76 + 16) = xmmword_1CF9FA450;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
      v77 = swift_allocObject();
      *(v77 + 16) = v165;
      *(v77 + 32) = v72;
      *(v76 + 40) = v77;
      *(v76 + 48) = v74;
      *(v76 + 56) = v75;
      *(v76 + 32) = 2048;
      goto LABEL_82;
    case 0x16u:
      v89 = v154;
      sub_1CEFCCBDC(v54, v154, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if ((*v89 & 0x8000000000000000) != 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF40, &unk_1CF9FB410);
        v126 = swift_dynamicCastClass();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
        v90 = swift_dynamicCastClass();
        if (v90)
        {
          if (v90[112] != 3 || (v91 = &v90[*(*v90 + 664)], swift_beginAccess(), v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0), (*(*(v92 - 8) + 48))(v91, 1, v92)))
          {
LABEL_28:

            goto LABEL_77;
          }

          v143 = *v91;
          v144 = v91[8];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
          v117 = swift_allocObject();
          *(v117 + 16) = xmmword_1CF9FA450;
          *(v117 + 56) = v144;
          *(v117 + 32) = 32;
          *(v117 + 40) = &unk_1F4BEE4E0;
          *(v117 + 48) = v143;

LABEL_60:
          sub_1CEFCCC44(v54, &qword_1EC4BE710, &qword_1CF9FE5A8);
          return v117;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFB0, &unk_1CF9FAE10);
        v126 = swift_dynamicCastClass();
      }

      if (!v126)
      {
        goto LABEL_77;
      }

      sub_1CEFCCC44(v54, &qword_1EC4BE710, &qword_1CF9FE5A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      result = swift_allocObject();
      *(result + 16) = xmmword_1CF9FA450;
      *(result + 48) = 0;
      *(result + 56) = -1;
      v135 = 0x400000;
      v136 = &unk_1F4BEE508;
LABEL_95:
      *(result + 32) = v135;
      *(result + 40) = v136;
      return result;
    case 0x17u:
      v84 = v157;
      sub_1CEFCCBDC(v54, v157, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if (*v84)
      {
        goto LABEL_77;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v66 = swift_allocObject();
      v67 = v66;
      *(v66 + 16) = xmmword_1CF9FA450;
      *(v66 + 48) = 0;
      *(v66 + 56) = -1;
      v68 = 0x2000000;
      v69 = &unk_1F4BEE530;
      goto LABEL_53;
    case 0x18u:
      v70 = v152;
      sub_1CEFCCBDC(v54, v152, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if (*v70)
      {
        goto LABEL_77;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v66 = swift_allocObject();
      v67 = v66;
      *(v66 + 16) = xmmword_1CF9FA450;
      *(v66 + 48) = v163;
      *(v66 + 56) = v164;
      v68 = 0x20000;
      v69 = &unk_1F4BEE490;
      goto LABEL_53;
    case 0x1Cu:
      v98 = v158;
      sub_1CEFCCBDC(v54, v158, &qword_1EC4BE710, &qword_1CF9FE5A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 5)
        {
          v141 = *v98;
          v142 = *(v98 + 8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
          v66 = swift_allocObject();
          v67 = v66;
          *(v66 + 16) = xmmword_1CF9FA450;
          *(v66 + 48) = v141;
          *(v66 + 56) = v142;
          v68 = 0x2000;
          v69 = &unk_1F4BEE418;
        }

        else
        {
          if (EnumCaseMultiPayload != 7)
          {
            v99 = &unk_1EC4BFCC0;
            v100 = &unk_1CF9FCB50;
            goto LABEL_98;
          }

          v122 = *v98;
          v123 = *(v98 + 8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
          v66 = swift_allocObject();
          v67 = v66;
          *(v66 + 16) = xmmword_1CF9FA450;
          *(v66 + 48) = v122;
          *(v66 + 56) = v123;
          v68 = 0x2000;
          v69 = &unk_1F4BEE440;
        }

LABEL_53:
        *(v66 + 32) = v68;
        *(v66 + 40) = v69;
        goto LABEL_54;
      }

      v99 = &unk_1EC4BF650;
      v100 = &unk_1CF9FCB40;
LABEL_98:
      sub_1CEFCCC44(v98, v99, v100);
LABEL_77:
      sub_1CEFCCC44(v54, &qword_1EC4BE710, &qword_1CF9FE5A8);
      return MEMORY[0x1E69E7CC0];
    case 0x1Eu:
      v101 = v151;
      sub_1CEFCCBDC(v54, v151, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v102 = *(v101 + 9);
      v74 = *v101;
      v75 = *(v101 + 8);
      if (v102)
      {
LABEL_41:
        v64 = v74;
        v65 = v75;
        goto LABEL_75;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_1CF9FA450;
      *(v76 + 56) = v75;
      *(v76 + 32) = 0x10000;
      *(v76 + 40) = &unk_1F4BEE468;
      *(v76 + 48) = v74;
LABEL_82:
      v87 = v54;
LABEL_83:
      sub_1CEFCCC44(v87, &qword_1EC4BE710, &qword_1CF9FE5A8);
      return v76;
    case 0x20u:
      sub_1CEFCCBDC(v54, v29, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if (*(v29 + 9))
      {
        sub_1CEFD0994(v29[2], *(v29 + 24), *(v29 + 25));
        v64 = *v29;
        v93 = *(v29 + 9);
        v65 = *(v29 + 8);
        goto LABEL_76;
      }

      if (*(v29 + 25))
      {
        v64 = v29[2];
        v65 = *(v29 + 24);
        goto LABEL_75;
      }

      v137 = *v29;
      v138 = *(v29 + 8);
      v139 = v29[2];
      v140 = *(v29 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1CF9FA440;
      *(v67 + 56) = v138;
      *(v67 + 32) = 96;
      *(v67 + 40) = &unk_1F4BEE3A0;
      *(v67 + 48) = v137;
      *(v67 + 88) = v140;
      *(v67 + 64) = 8;
      *(v67 + 72) = &unk_1F4BEE3C8;
      *(v67 + 80) = v139;
      v104 = v54;
      goto LABEL_55;
    case 0x23u:
      v103 = v153;
      sub_1CEFCCBDC(v54, v153, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v64 = *v103;
      v65 = *(v103 + 8);
      if (*(v103 + 9))
      {
        goto LABEL_75;
      }

      if (v65 != 2 || v64)
      {
        goto LABEL_77;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v66 = swift_allocObject();
      v67 = v66;
      *(v66 + 16) = xmmword_1CF9FA450;
      *(v66 + 48) = 0;
      *(v66 + 56) = 2;
      v68 = 0x80000;
      v69 = &unk_1F4BEE4B8;
      goto LABEL_53;
    case 0x26u:
      v63 = v156;
      sub_1CEFCCBDC(v54, v156, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if (*(v63 + 9))
      {
        v64 = *v63;
        v65 = *(v63 + 8);
        goto LABEL_75;
      }

      v105 = *(v63 + 10);
      v106 = *v63;
      v107 = *(v63 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v67 = swift_allocObject();
      v165 = xmmword_1CF9FA450;
      *(v67 + 16) = xmmword_1CF9FA450;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
      v108 = swift_allocObject();
      *(v108 + 16) = v165;
      *(v108 + 32) = v105;
      *(v67 + 48) = v106;
      *(v67 + 56) = v107;
      v109 = 0x800000;
LABEL_64:
      *(v67 + 32) = v109;
      *(v67 + 40) = v108;
LABEL_54:
      v104 = v54;
LABEL_55:
      sub_1CEFCCC44(v104, &qword_1EC4BE710, &qword_1CF9FE5A8);
      return v67;
    case 0x27u:
      v85 = v155;
      sub_1CEFCCBDC(v54, v155, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v86 = *v85;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_1CF9FA450;
      *(v76 + 40) = v86;
      *(v76 + 48) = 0;
      *(v76 + 56) = -1;
      *(v76 + 32) = 0x1000000;
      v87 = v54;
      goto LABEL_83;
    case 0x2Eu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v66 = swift_allocObject();
      v67 = v66;
      *(v66 + 16) = xmmword_1CF9FA450;
      *(v66 + 48) = v163;
      *(v66 + 56) = v164;
      v68 = 128;
      v69 = &unk_1F4BEE198;
      goto LABEL_53;
    case 0x2Fu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v66 = swift_allocObject();
      v67 = v66;
      *(v66 + 16) = xmmword_1CF9FA450;
      *(v66 + 48) = 0;
      *(v66 + 56) = -1;
      v68 = 0x200000;
      v69 = &unk_1F4BEE1C0;
      goto LABEL_53;
    case 0x30u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v66 = swift_allocObject();
      v67 = v66;
      *(v66 + 16) = xmmword_1CF9FA450;
      *(v66 + 48) = 0;
      *(v66 + 56) = -1;
      v68 = 2048;
      v69 = &unk_1F4BEE1E8;
      goto LABEL_53;
    default:
      goto LABEL_77;
  }
}

uint64_t sub_1CF030B88@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  v106 = a1;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v105 = &v103 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v103 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v103 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v103 - v19;
  sub_1CEFCCBDC(v2, &v103 - v19, &qword_1EC4BE710, &qword_1CF9FE5A8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 0x13u:
      v52 = *v20;
      v53 = v20[8];
      v54 = *(v20 + 2);
      v55 = v106;
      *v106 = v54;
      v55[1] = v52;
      *(v55 + 16) = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 2u:
      v23 = *v20;
      v24 = v20[9];
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = v20[8];
      }

      goto LABEL_124;
    case 3u:
      v23 = *v20;
      v24 = v20[9];
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = v20[8];
      }

      goto LABEL_124;
    case 4u:
      v33 = v20[10];
      v31 = *v20;
      v32 = v20[9];
      if (v32)
      {
        v34 = 0;
      }

      else
      {
        v34 = v20[8];
      }

      goto LABEL_122;
    case 5u:
      v66 = *v20;
      v67 = v20[9];
      v68 = *(v20 + 2);
      v69 = v20[24];
      v70 = v20[25];
      if (v67)
      {
        v71 = 0;
      }

      else
      {
        v71 = v20[8];
      }

      v98 = v106;
      *v106 = v66;
      *(v98 + 8) = v71;
      *(v98 + 9) = v67 ^ 1;
      if (v70)
      {
        v69 = 0;
      }

      goto LABEL_107;
    case 6u:
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320);
      v78 = *(v77 + 48);
      v79 = *&v20[*(v77 + 64)];
      sub_1CEFE55D0(v20, v17, &qword_1EC4C1B40, &unk_1CF9FCB70);
      sub_1CEFE55D0(&v20[v78], v14, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v80 = *(v77 + 48);
      v81 = *(v77 + 64);
      v82 = v17;
      v83 = v106;
      sub_1CEFE55D0(v82, v106, &qword_1EC4C1B40, &unk_1CF9FCB70);
      sub_1CEFE55D0(v14, v83 + v80, &qword_1EC4C1B40, &unk_1CF9FCB70);
      *(v83 + v81) = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 7u:
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC8, &qword_1CFA05308);
      v47 = *(v46 + 48);
      v48 = *&v20[*(v46 + 64)];
      sub_1CEFE55D0(v20, v11, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      sub_1CEFE55D0(&v20[v47], v8, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v49 = *(v46 + 48);
      v50 = *(v46 + 64);
      v51 = v106;
      sub_1CEFE55D0(v11, v106, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      sub_1CEFE55D0(v8, v51 + v49, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      *(v51 + v50) = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 8u:
      sub_1CEFE55D0(v20, v106, &unk_1EC4BE360, &qword_1CF9FE650);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 9u:
      sub_1CEFE55D0(v20, v106, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0xAu:
      v23 = *v20;
      v24 = v20[9];
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = v20[8];
      }

      goto LABEL_124;
    case 0xBu:
      v35 = *v20;
      v36 = v20[9];
      v37 = *(v20 + 12);
      if (v36)
      {
        v38 = 0;
      }

      else
      {
        v38 = v20[8];
      }

      v93 = v106;
      v94 = v20[26];
      v95 = v20[27];
      v96 = *(v20 + 2);
      *v106 = v35;
      *(v93 + 8) = v38;
      *(v93 + 9) = v36 ^ 1;
      if (v37 >> 8 > 0xFE)
      {
        v93[2] = 0;
        *(v93 + 12) = -256;
        break;
      }

      if ((v37 & 0x100) == 0)
      {
        goto LABEL_96;
      }

      v93[2] = v96;
      *(v93 + 12) = 0;
      break;
    case 0xCu:
      v39 = *v20;
      v40 = v20[9];
      v37 = *(v20 + 12);
      if (v40)
      {
        v41 = 0;
      }

      else
      {
        v41 = v20[8];
      }

      v93 = v106;
      v94 = v20[26];
      v95 = v20[27];
      v96 = *(v20 + 2);
      *v106 = v39;
      *(v93 + 8) = v41;
      *(v93 + 9) = v40 ^ 1;
      if (v37 >> 8 <= 0xFE)
      {
        if ((v37 & 0x100) != 0)
        {
          v93[2] = v96;
          *(v93 + 12) = 0;
        }

        else
        {
LABEL_96:
          sub_1CF47FDFC(v96, v37);
          v93[2] = v96;
          *(v93 + 24) = v37;
          *(v93 + 25) = 1;
        }
      }

      else
      {
        v93[2] = 0;
        *(v93 + 12) = -256;
      }

      break;
    case 0xDu:
      v72 = *(v20 + 2);
      v73 = *v20;
      v74 = v20[9];
      v75 = v20[10];
      if (v74)
      {
        v76 = 0;
      }

      else
      {
        v76 = v20[8];
      }

      v99 = v106;
      *v106 = v73;
      *(v99 + 8) = v76;
      *(v99 + 9) = v74 ^ 1;
      *(v99 + 10) = v75;
      v99[2] = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0xEu:
      v31 = *v20;
      v32 = v20[9];
      v33 = v20[10];
      if (v32)
      {
        v34 = 0;
      }

      else
      {
        v34 = v20[8];
      }

      goto LABEL_122;
    case 0xFu:
      v42 = *(v20 + 2);
      v43 = *v20;
      v44 = v20[9];
      if (v44)
      {
        v45 = 0;
      }

      else
      {
        v45 = v20[8];
      }

      v97 = v106;
      *v106 = v43;
      *(v97 + 8) = v45;
      *(v97 + 9) = v44 ^ 1;
      v97[2] = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0x10u:
      v26 = *(v20 + 2);
      v27 = v20[24];
      v28 = *v20;
      v29 = v20[9];
      if (v29)
      {
        v30 = 0;
      }

      else
      {
        v30 = v20[8];
      }

      v92 = v106;
      *v106 = v28;
      *(v92 + 8) = v30;
      *(v92 + 9) = v29 ^ 1;
      v92[2] = v26;
      *(v92 + 24) = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0x11u:
      v56 = *(v20 + 1);
      v57 = v106;
      *v106 = *v20;
      *(v57 + 1) = v56;
      v58 = *(v20 + 3);
      *(v57 + 2) = *(v20 + 2);
      *(v57 + 3) = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0x12u:
      v23 = *v20;
      v24 = v20[9];
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = v20[8];
      }

      goto LABEL_124;
    case 0x14u:
      v59 = *v20;
      v60 = *(v20 + 3);
      v61 = *(v20 + 1);
      v62 = v20[16];
      v63 = v20[17];
      v64 = v106;
      *v106 = v59;
      if (v63)
      {
        v65 = 0;
      }

      else
      {
        v65 = v62;
      }

      v64[1] = v61;
      *(v64 + 16) = v65;
      *(v64 + 17) = v63 ^ 1;
      v64[3] = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0x17u:
    case 0x18u:
      *v106 = (*v20 & 1) == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0x19u:
      v23 = *v20;
      v24 = v20[9];
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = v20[8];
      }

      goto LABEL_124;
    case 0x1Au:
      v23 = *v20;
      v24 = v20[9];
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = v20[8];
      }

      goto LABEL_124;
    case 0x1Bu:
      v23 = *v20;
      v24 = v20[9];
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = v20[8];
      }

      goto LABEL_124;
    case 0x1Cu:
      v87 = v105;
      sub_1CEFE55D0(v20, v105, &unk_1EC4BF650, &unk_1CF9FCB40);
      v88 = v104;
      sub_1CEFCCBDC(v87, v104, &unk_1EC4BF650, &unk_1CF9FCB40);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1CEFE55D0(v88, v106, &unk_1EC4BFD70, &qword_1CFA12AC0);
      }

      else
      {
        sub_1CEFE55D0(v88, v106, &unk_1EC4BFCC0, &unk_1CF9FCB50);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD38, &unk_1CFA05450);
      swift_storeEnumTagMultiPayload();
      sub_1CEFCCC44(v87, &unk_1EC4BF650, &unk_1CF9FCB40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0x1Du:
      v33 = v20[10];
      v31 = *v20;
      v32 = v20[9];
      if (v32)
      {
        v34 = 0;
      }

      else
      {
        v34 = v20[8];
      }

      goto LABEL_122;
    case 0x1Eu:
      v23 = *v20;
      v24 = v20[9];
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = v20[8];
      }

      goto LABEL_124;
    case 0x1Fu:
      v23 = *v20;
      v24 = v20[9];
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = v20[8];
      }

      goto LABEL_124;
    case 0x20u:
      v84 = *v20;
      v85 = v20[9];
      v68 = *(v20 + 2);
      v69 = v20[24];
      v70 = v20[25];
      if (v85)
      {
        v86 = 0;
      }

      else
      {
        v86 = v20[8];
      }

      v98 = v106;
      *v106 = v84;
      *(v98 + 8) = v86;
      *(v98 + 9) = v85 ^ 1;
      if (v70)
      {
        v69 = 0;
      }

LABEL_107:
      v98[2] = v68;
      *(v98 + 24) = v69;
      *(v98 + 25) = v70 ^ 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0x21u:
      v23 = *v20;
      v24 = v20[9];
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = v20[8];
      }

      goto LABEL_124;
    case 0x22u:
      v23 = *v20;
      v24 = v20[9];
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = v20[8];
      }

      goto LABEL_124;
    case 0x23u:
      v23 = *v20;
      v24 = v20[9];
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = v20[8];
      }

      goto LABEL_124;
    case 0x24u:
      v23 = *v20;
      v24 = v20[9];
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = v20[8];
      }

      goto LABEL_124;
    case 0x25u:
      memcpy(v107, v20, 0x208uLL);
      sub_1CF7F62D0(v106);
      sub_1CEFCCC44(v107, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0x26u:
      v33 = v20[10];
      v31 = *v20;
      v32 = v20[9];
      if (v32)
      {
        v34 = 0;
      }

      else
      {
        v34 = v20[8];
      }

LABEL_122:
      v100 = v106;
      *v106 = v31;
      *(v100 + 8) = v34;
      *(v100 + 9) = v32 ^ 1;
      *(v100 + 10) = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0x27u:
      *v106 = *v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0x28u:
      v23 = *v20;
      v24 = v20[9];
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = v20[8];
      }

      goto LABEL_124;
    case 0x29u:
      v23 = *v20;
      v24 = v20[9];
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = v20[8];
      }

      goto LABEL_124;
    case 0x2Au:
      v23 = *v20;
      v24 = v20[9];
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = v20[8];
      }

LABEL_124:
      v101 = v106;
      *v106 = v23;
      *(v101 + 8) = v25;
      *(v101 + 9) = v24 ^ 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0x2Bu:
      v21 = v20[9];
      if (v21)
      {
        v22 = 0;
      }

      else
      {
        v22 = v20[8];
      }

      v89 = v106;
      *v106 = *v20;
      *(v89 + 8) = v22;
      *(v89 + 9) = v21 ^ 1;
      v90 = *(v20 + 2);
      *(v89 + 1) = *(v20 + 1);
      *(v89 + 2) = v90;
      v91 = *(v20 + 4);
      *(v89 + 3) = *(v20 + 3);
      *(v89 + 4) = v91;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0x2Cu:
    case 0x2Du:
    case 0x2Eu:
    case 0x2Fu:
    case 0x30u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    default:
      *v106 = *v20 ^ 0x8000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
  }

  *(v93 + 26) = v94;
  *(v93 + 27) = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
  return swift_storeEnumTagMultiPayload();
}

_OWORD *sub_1CF031F0C(void *a1)
{
  v190 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v187 = *(v1 - 8);
  v188 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v175 = (&v175 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
  MEMORY[0x1EEE9AC00](v3);
  v184 = &v175 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v182 = (&v175 - v6);
  MEMORY[0x1EEE9AC00](v7);
  v183 = (&v175 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v181 = (&v175 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v180 = &v175 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v179 = &v175 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v178 = &v175 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v185 = (&v175 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v176 = &v175 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v175 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v175 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v177 = &v175 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v189 = (&v175 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v186 = &v175 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = (&v175 - v34);
  MEMORY[0x1EEE9AC00](v36);
  v38 = (&v175 - v37);
  MEMORY[0x1EEE9AC00](v39);
  v41 = (&v175 - v40);
  MEMORY[0x1EEE9AC00](v42);
  v44 = (&v175 - v43);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v175 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v175 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v175 - v52;
  sub_1CEFCCBDC(v191, &v175 - v52, &unk_1EC4C4E20, &unk_1CFA05350);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_1CEFCCBDC(v53, v23, &unk_1EC4C4E20, &unk_1CFA05350);
      if ((*v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0230, &unk_1CFA05740);
      v54 = swift_dynamicCastClass();
      if (!v54)
      {
        goto LABEL_28;
      }

      v55 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      v56 = swift_allocObject();
      v191 = xmmword_1CF9FA450;
      *(v56 + 16) = xmmword_1CF9FA450;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
      v57 = v53;
      v58 = swift_allocObject();
      *(v58 + 16) = v191;
      *(v58 + 32) = sub_1CF387EDC();
      v59 = *(v55 + 144);
      *(v56 + 32) = 0x200000;
      *(v56 + 40) = v58;
      *(v56 + 48) = v59;
      v60 = v59;

      sub_1CEFCCC44(v57, &unk_1EC4C4E20, &unk_1CFA05350);
      return v56;
    case 2u:
      sub_1CEFCCBDC(v53, v26, &unk_1EC4C4E20, &unk_1CFA05350);
      v73 = *v26;
      if (v26[9])
      {
        goto LABEL_40;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      v92 = swift_allocObject();
      v93 = v92;
      *(v92 + 16) = xmmword_1CF9FA450;
      v94 = 8;
      v95 = &unk_1F4BEE7B0;
      goto LABEL_67;
    case 3u:
      sub_1CEFCCBDC(v53, v47, &unk_1EC4C4E20, &unk_1CFA05350);
      v73 = *v47;
      if ((v47[9] & 1) == 0)
      {
        goto LABEL_58;
      }

      v74 = v47[8];
      goto LABEL_41;
    case 5u:
      sub_1CEFCCBDC(v53, v35, &unk_1EC4C4E20, &unk_1CFA05350);
      if (*(v35 + 9))
      {
        sub_1CF1E53F8(v35[2], *(v35 + 24), *(v35 + 25));
        v90 = *v35;
        v91 = *(v35 + 9);
        v74 = *(v35 + 8);
        goto LABEL_107;
      }

      v114 = *v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1CF9FA450;
      *(v64 + 32) = 64;
      *(v64 + 40) = &unk_1F4BEE670;
      *(v64 + 48) = v114;
      sub_1CF1E53F8(v35[2], *(v35 + 24), *(v35 + 25));
      goto LABEL_101;
    case 6u:
      v75 = v186;
      sub_1CEFCCBDC(v53, v186, &unk_1EC4C4E20, &unk_1CFA05350);
      v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC8, &qword_1CFA05308) + 48);
      v77 = v188;
      v78 = *(v187 + 48);
      if (v78(v75 + v76, 1, v188) == 1)
      {
        if (v78(v75, 1, v77) == 1)
        {
          sub_1CEFCCC44(v75, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          goto LABEL_108;
        }

        v147 = v175;
        sub_1CEFE55D0(v75, v175, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_1CF9FA450;
        v148 = *v147;
        *(v82 + 32) = 96;
        *(v82 + 40) = &unk_1F4BEE6C0;
        *(v82 + 48) = v148;
        v149 = v148;
        v112 = v147;
        v110 = &unk_1EC4BFBD0;
        v111 = &unk_1CF9FCBC0;
      }

      else
      {
        v107 = v175;
        sub_1CEFE55D0(v75 + v76, v175, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_1CF9FA450;
        v108 = *(v107 + 8);
        *(v82 + 32) = 8;
        *(v82 + 40) = &unk_1F4BEE698;
        *(v82 + 48) = v108;
        v109 = v108;
        sub_1CEFCCC44(v107, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v110 = &unk_1EC4BFBB0;
        v111 = &qword_1CF9FCB90;
        v112 = v75;
      }

      sub_1CEFCCC44(v112, v110, v111);
      v83 = v53;
LABEL_85:
      sub_1CEFCCC44(v83, &unk_1EC4C4E20, &unk_1CFA05350);
      return v82;
    case 0xBu:
      v41 = v189;
      sub_1CEFCCBDC(v53, v189, &unk_1EC4C4E20, &unk_1CFA05350);
      if ((*(v41 + 9) & 1) == 0)
      {
        v113 = v41[2];
        v84 = *(v41 + 12);
LABEL_105:
        sub_1CF4804C0(v113, v84);
        goto LABEL_106;
      }

      v84 = *(v41 + 12);
      if (v84 >> 8 > 0xFE)
      {
        sub_1CF1E53F8(*v41, *(v41 + 8), 1);
        sub_1CF4804C0(v41[2], *(v41 + 12));
        goto LABEL_108;
      }

      v150 = v41[2];
      if ((v84 & 0x100) != 0)
      {
        goto LABEL_104;
      }

      v151 = *(v41 + 27);
      if (!*(v41 + 27))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
        v152 = swift_allocObject();
        v93 = v152;
        *(v152 + 16) = xmmword_1CF9FA450;
        v153 = &unk_1F4BEE6E8;
        v173 = 64;
        goto LABEL_115;
      }

      if (v151 == 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
        v152 = swift_allocObject();
        v93 = v152;
        *(v152 + 16) = xmmword_1CF9FA450;
        v153 = &unk_1F4BEE710;
        goto LABEL_113;
      }

      if (v151 != 4)
      {
LABEL_104:
        v113 = v41[2];
        goto LABEL_105;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      v152 = swift_allocObject();
      v93 = v152;
      *(v152 + 16) = xmmword_1CF9FA450;
      v153 = &unk_1F4BEE738;
LABEL_113:
      v173 = 32;
LABEL_115:
      *(v152 + 32) = v173;
      *(v152 + 40) = v153;
      *(v152 + 48) = v150;
      sub_1CF1E53F8(*v41, *(v41 + 8), 1);
LABEL_68:
      v124 = v53;
LABEL_69:
      sub_1CEFCCC44(v124, &unk_1EC4C4E20, &unk_1CFA05350);
      return v93;
    case 0xCu:
      sub_1CEFCCBDC(v53, v44, &unk_1EC4C4E20, &unk_1CFA05350);
      if (*(v44 + 9))
      {
        sub_1CF4804C0(v44[2], *(v44 + 12));
        v90 = *v44;
        v91 = *(v44 + 9);
        v74 = *(v44 + 8);
        goto LABEL_107;
      }

      v73 = *v44;
      sub_1CF4804C0(v44[2], *(v44 + 12));
LABEL_58:
      sub_1CEFCCC44(v53, &unk_1EC4C4E20, &unk_1CFA05350);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      v115 = swift_allocObject();
      *(v115 + 16) = xmmword_1CF9FA440;
      *(v115 + 32) = 32;
      *(v115 + 40) = &unk_1F4BEE5D0;
      *(v115 + 48) = v73;
      if (qword_1EDEA34B0 != -1)
      {
        v174 = v115;
        swift_once();
        v115 = v174;
      }

      v116 = qword_1EDEA34B8;
      *(v115 + 56) = 128;
      *(v115 + 64) = &unk_1F4BEE5F8;
      *(v115 + 72) = v116;
      v117 = v115;
      v118 = v116;
      return v117;
    case 0xEu:
      sub_1CEFCCBDC(v53, v50, &unk_1EC4C4E20, &unk_1CFA05350);
      if (v50[9])
      {
        v90 = *v50;
        v74 = v50[8];
        goto LABEL_48;
      }

      v119 = v50[10];
      v63 = *v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      v64 = swift_allocObject();
      v191 = xmmword_1CF9FA450;
      *(v64 + 16) = xmmword_1CF9FA450;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
      v65 = swift_allocObject();
      *(v65 + 16) = v191;
      *(v65 + 32) = v119;
      v66 = 393472;
      goto LABEL_62;
    case 0xFu:
      sub_1CEFCCBDC(v53, v41, &unk_1EC4C4E20, &unk_1CFA05350);
      if (*(v41 + 9))
      {

LABEL_106:
        v90 = *v41;
        v91 = *(v41 + 9);
        v74 = *(v41 + 8);
        goto LABEL_107;
      }

      v193 = v41[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      if (swift_dynamicCast() && v192 == 3)
      {
        v125 = *v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_1CF9FA450;
        *(v64 + 32) = 64;
        *(v64 + 40) = &unk_1F4BEE620;
        *(v64 + 48) = v125;

        goto LABEL_101;
      }

LABEL_92:
      v154 = *v41;
      sub_1CEFCCC44(v53, &unk_1EC4C4E20, &unk_1CFA05350);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      result = swift_allocObject();
      result[1] = xmmword_1CF9FA450;
      *(result + 4) = 96;
      *(result + 5) = &unk_1F4BEE648;
      *(result + 6) = v154;
      return result;
    case 0x10u:
      sub_1CEFCCBDC(v53, v38, &unk_1EC4C4E20, &unk_1CFA05350);

      if (*(v38 + 9))
      {
        goto LABEL_43;
      }

      v41 = v38;
      goto LABEL_92;
    case 0x14u:
      v71 = v176;
      sub_1CEFCCBDC(v53, v176, &unk_1EC4C4E20, &unk_1CFA05350);
      v72 = *v71;

      v73 = *(v71 + 8);
      if (*(v71 + 17))
      {
        v74 = *(v71 + 16);
        goto LABEL_41;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      v93 = swift_allocObject();
      v191 = xmmword_1CF9FA450;
      *(v93 + 16) = xmmword_1CF9FA450;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
      v106 = swift_allocObject();
      *(v106 + 16) = v191;
      *(v106 + 32) = v72;
      *(v93 + 32) = 2048;
      *(v93 + 40) = v106;
      *(v93 + 48) = v73;
      goto LABEL_68;
    case 0x16u:
      v85 = v181;
      sub_1CEFCCBDC(v53, v181, &unk_1EC4C4E20, &unk_1CFA05350);
      if ((*v85 & 0x8000000000000000) != 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFB0, &unk_1CF9FAE10);
        v146 = swift_dynamicCastClass();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
        v86 = swift_dynamicCastClass();
        if (v86)
        {
          v87 = v86;
          if (v86[112] != 3 || (v88 = *(*v86 + 664), swift_beginAccess(), v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0), (*(*(v89 - 8) + 48))(&v87[v88], 1, v89)))
          {
LABEL_28:

            goto LABEL_108;
          }

          v171 = *&v87[v88];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
          v93 = swift_allocObject();
          *(v93 + 16) = xmmword_1CF9FA450;
          *(v93 + 32) = 32;
          *(v93 + 40) = &unk_1F4BEE8A0;
          *(v93 + 48) = v171;
          v172 = v171;

          goto LABEL_68;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF40, &unk_1CF9FB410);
        v146 = swift_dynamicCastClass();
      }

      if (!v146)
      {
        goto LABEL_108;
      }

      sub_1CEFCCC44(v53, &unk_1EC4C4E20, &unk_1CFA05350);
      return &unk_1F4BEE988;
    case 0x17u:
      v79 = v184;
      sub_1CEFCCBDC(v53, v184, &unk_1EC4C4E20, &unk_1CFA05350);
      if (*v79)
      {
        goto LABEL_108;
      }

      sub_1CEFCCC44(v53, &unk_1EC4C4E20, &unk_1CFA05350);
      return &unk_1F4BEE9C0;
    case 0x18u:
      v67 = v179;
      sub_1CEFCCBDC(v53, v179, &unk_1EC4C4E20, &unk_1CFA05350);
      if (*v67)
      {
        goto LABEL_108;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      v68 = swift_allocObject();
      v64 = v68;
      *(v68 + 16) = xmmword_1CF9FA450;
      v69 = 0x20000;
      v70 = &unk_1F4BEE850;
      goto LABEL_52;
    case 0x1Cu:
      v96 = v185;
      sub_1CEFCCBDC(v53, v185, &unk_1EC4C4E20, &unk_1CFA05350);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD38, &unk_1CFA05450);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v97 = &qword_1EC4BFD38;
        v98 = &unk_1CFA05450;
LABEL_103:
        sub_1CEFCCC44(v96, v97, v98);
LABEL_108:
        sub_1CEFCCC44(v53, &unk_1EC4C4E20, &unk_1CFA05350);
        return MEMORY[0x1E69E7CC0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 5)
      {
        v121 = *v96;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
        v122 = swift_allocObject();
        v64 = v122;
        *(v122 + 16) = xmmword_1CF9FA450;
        v123 = &unk_1F4BEE7D8;
      }

      else
      {
        if (EnumCaseMultiPayload != 7)
        {
          v97 = &unk_1EC4BFD70;
          v98 = &qword_1CFA12AC0;
          goto LABEL_103;
        }

        v121 = *v96;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
        v122 = swift_allocObject();
        v64 = v122;
        *(v122 + 16) = xmmword_1CF9FA450;
        v123 = &unk_1F4BEE800;
      }

      *(v122 + 32) = 0x2000;
      *(v122 + 40) = v123;
      *(v122 + 48) = v121;
      goto LABEL_101;
    case 0x1Eu:
      v26 = v178;
      sub_1CEFCCBDC(v53, v178, &unk_1EC4C4E20, &unk_1CFA05350);
      v73 = *v26;
      if ((v26[9] & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
        v92 = swift_allocObject();
        v93 = v92;
        *(v92 + 16) = xmmword_1CF9FA450;
        v94 = 0x10000;
        v95 = &unk_1F4BEE828;
LABEL_67:
        *(v92 + 32) = v94;
        *(v92 + 40) = v95;
        *(v92 + 48) = v73;
        goto LABEL_68;
      }

LABEL_40:
      v74 = v26[8];
LABEL_41:
      v90 = v73;
      goto LABEL_48;
    case 0x20u:
      v103 = v177;
      sub_1CEFCCBDC(v53, v177, &unk_1EC4C4E20, &unk_1CFA05350);
      if (*(v103 + 9))
      {
        sub_1CF1E53F8(*(v103 + 16), *(v103 + 24), *(v103 + 25));
        v90 = *v103;
        v91 = *(v103 + 9);
        v74 = *(v103 + 8);
        goto LABEL_107;
      }

      v145 = *v103;
      if (*(v103 + 25))
      {
        sub_1CF1E53F8(*v103, *(v103 + 8), 0);
        v90 = *(v103 + 16);
        v91 = *(v103 + 25);
        v74 = *(v103 + 24);
        goto LABEL_107;
      }

      v170 = *(v103 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      v93 = swift_allocObject();
      *(v93 + 16) = xmmword_1CF9FA440;
      *(v93 + 32) = 96;
      *(v93 + 40) = &unk_1F4BEE760;
      *(v93 + 48) = v145;
      *(v93 + 56) = 8;
      *(v93 + 64) = &unk_1F4BEE788;
      *(v93 + 72) = v170;
      goto LABEL_68;
    case 0x23u:
      v99 = v180;
      sub_1CEFCCBDC(v53, v180, &unk_1EC4C4E20, &unk_1CFA05350);
      v100 = *(v99 + 9);
      v101 = *v99;
      v102 = *(v99 + 8);
      if (v100)
      {
        v90 = v101;
        v74 = v102;
        goto LABEL_48;
      }

      v126 = v53;
      if (qword_1EDEA34B0 != -1)
      {
        swift_once();
      }

      v127 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v129 = v128;
      v131 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v137 = v130;
      if (v127 == v131 && v129 == v130)
      {
        v129, v130, v131, v132, v133, v134, v135, v136;
        v137, v138, v139, v140, v141, v142, v143, v144;
      }

      else
      {
        v155 = sub_1CF9E8048();
        v129, v156, v157, v158, v159, v160, v161, v162;
        v137, v163, v164, v165, v166, v167, v168, v169;
        if ((v155 & 1) == 0)
        {
          sub_1CF1E53F8(v101, v102, 0);
          v53 = v126;
          goto LABEL_108;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      v93 = swift_allocObject();
      *(v93 + 16) = xmmword_1CF9FA450;
      *(v93 + 32) = 0x80000;
      *(v93 + 40) = &unk_1F4BEE878;
      *(v93 + 48) = v101;
      v124 = v126;
      goto LABEL_69;
    case 0x26u:
      v38 = v183;
      sub_1CEFCCBDC(v53, v183, &unk_1EC4C4E20, &unk_1CFA05350);
      if ((*(v38 + 9) & 1) == 0)
      {
        v62 = *(v38 + 10);
        v63 = *v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
        v64 = swift_allocObject();
        v191 = xmmword_1CF9FA450;
        *(v64 + 16) = xmmword_1CF9FA450;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
        v65 = swift_allocObject();
        *(v65 + 16) = v191;
        *(v65 + 32) = v62;
        v66 = 0x800000;
LABEL_62:
        *(v64 + 32) = v66;
        *(v64 + 40) = v65;
        *(v64 + 48) = v63;
LABEL_101:
        sub_1CEFCCC44(v53, &unk_1EC4C4E20, &unk_1CFA05350);
        return v64;
      }

LABEL_43:
      v90 = *v38;
      v74 = *(v38 + 8);
LABEL_48:
      v91 = 1;
LABEL_107:
      sub_1CF1E53F8(v90, v74, v91);
      goto LABEL_108;
    case 0x27u:
      v80 = v182;
      sub_1CEFCCBDC(v53, v182, &unk_1EC4C4E20, &unk_1CFA05350);
      v81 = *v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_1CF9FA450;
      *(v82 + 32) = 0x1000000;
      *(v82 + 40) = v81;
      *(v82 + 48) = 0;
      v83 = v53;
      goto LABEL_85;
    case 0x2Eu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      v68 = swift_allocObject();
      v64 = v68;
      *(v68 + 16) = xmmword_1CF9FA450;
      v69 = 128;
      v70 = &unk_1F4BEE558;
LABEL_52:
      *(v68 + 32) = v69;
      *(v68 + 40) = v70;
      v104 = v190;
      *(v68 + 48) = v190;
      v105 = v104;
      goto LABEL_101;
    case 0x2Fu:
      sub_1CEFCCC44(v53, &unk_1EC4C4E20, &unk_1CFA05350);
      return &unk_1F4BEE918;
    case 0x30u:
      sub_1CEFCCC44(v53, &unk_1EC4C4E20, &unk_1CFA05350);
      return &unk_1F4BEE950;
    default:
      goto LABEL_108;
  }
}

void sub_1CF0335E0()
{
  v1 = v0;
  v2 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v2);
  v3 = type metadata accessor for BackgroundDownloaderPacerState(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[72] == 1)
  {
    v0[72] = 0;
    sub_1CF9E56C8();
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    v6 = *(*v0 + 136);
    swift_beginAccess();
    sub_1CEFDA34C(v1 + v6, v5, type metadata accessor for BackgroundDownloaderPacerState);
    sub_1CEFCCCA4(&qword_1EDEA4F38, type metadata accessor for BackgroundDownloaderPacerState, &unk_1CFA03C20);
    v7 = sub_1CF9E56A8();
    v9 = v8;
    v12 = v2;
    sub_1CEFD5338(v5, type metadata accessor for BackgroundDownloaderPacerState);
    v10 = v1[5];
    v11 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v10);
    (*(v11 + 8))(v1[7], v1[8], v7, v9, v10, v11);
    sub_1CEFE4714(v7, v9);
  }
}

uint64_t type metadata accessor for BackgroundDownloaderPacerState(uint64_t a1)
{
  result = qword_1EDEA4F10;
  if (!qword_1EDEA4F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1CF033A60@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6967258];
  *a1 = *MEMORY[0x1E6967258];
  return v1;
}

uint64_t sub_1CF033A74()
{
  if (*(v0 + 224))
  {
    v1 = *(v0 + 224);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5240, &qword_1CFA189F0);
    swift_allocObject();

    v1 = sub_1CF915C14(v2);
    *(v0 + 224) = v1;
  }

  return v1;
}

uint64_t sub_1CF033B10(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

void *sub_1CF033B90(int a1, uint64_t a2)
{
  v431 = a2;
  v463 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF10, &unk_1CFA055E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v423 = &v415 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v428 = &v415 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v429 = *(v6 - 8);
  v430 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v424 = &v415 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v425 = &v415 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFF08, &qword_1CFA055D8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v420 = &v415 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v418 = *(v12 - 8);
  v419 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v417 = &v415 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v15 = *(v14 - 8);
  v461 = v14;
  v462 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v422 = &v415 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v427 = &v415 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v426 = &v415 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v434 = &v415 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v438 = &v415 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v436 = &v415 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v457 = (&v415 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v453 = *(v29 - 8);
  v454 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v437 = &v415 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v455 = &v415 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v421 = &v415 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v433 = &v415 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v439 = &v415 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v432 = &v415 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v459 = &v415 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v435 = &v415 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v464 = &v415 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v458 = &v415 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  MEMORY[0x1EEE9AC00](v49);
  v451 = &v415 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v450 = &v415 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v449 = &v415 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v448 = &v415 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v456 = &v415 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v447 = &v415 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v446 = &v415 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v445 = &v415 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v442 = (&v415 - v66);
  MEMORY[0x1EEE9AC00](v67);
  v443 = &v415 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v452 = &v415 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v440 = (&v415 - v72);
  MEMORY[0x1EEE9AC00](v73);
  v441 = &v415 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v415 - v76;
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v415 - v79;
  MEMORY[0x1EEE9AC00](v81);
  v444 = &v415 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v415 - v84;
  MEMORY[0x1EEE9AC00](v86);
  v88 = (&v415 - v87);
  MEMORY[0x1EEE9AC00](v89);
  v460 = &v415 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v415 - v92;
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v415 - v95;
  MEMORY[0x1EEE9AC00](v97);
  v99 = (&v415 - v98);
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v415 - v101;
  sub_1CEFCCBDC(v465, &v415 - v101, &qword_1EC4BE710, &qword_1CF9FE5A8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1CEFCCBDC(v102, v99, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v103 = v102;
      v104 = *v99;
      v105 = *(v99 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_1CF9FA450;
      *(v106 + 32) = 2;
      *(v106 + 40) = v104;
      *(v106 + 48) = v105;
      *(v106 + 49) = 0;
      *(v106 + 56) = 0;
      *(v106 + 64) = 0;
      *(v106 + 72) = 1;

      goto LABEL_25;
    case 3u:
      sub_1CEFCCBDC(v102, v96, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v141 = v102;
      v142 = *v96;
      v143 = v96[8];
      if ((v96[9] & 1) == 0)
      {
        sub_1CEFD0994(*v96, v96[8], 0);
        v102 = v141;
        goto LABEL_62;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_1CF9FA450;
      *(v106 + 32) = 2;
      *(v106 + 40) = v142;
      *(v106 + 48) = v143;
      *(v106 + 49) = 1;
      *(v106 + 56) = 0;
      *(v106 + 64) = 0;
      *(v106 + 72) = 2;
LABEL_99:
      v149 = &qword_1EC4BE710;
      v150 = &qword_1CF9FE5A8;
      v133 = v141;
      goto LABEL_199;
    case 5u:
      v126 = v444;
      sub_1CEFCCBDC(v102, v444, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v127 = *(v126 + 16);
      v128 = *(v126 + 24);
      if (*(v126 + 25))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_1CF9FA450;
        *(v106 + 32) = 16;
        *(v106 + 40) = v127;
        *(v106 + 56) = 0;
        *(v106 + 64) = 0;
        *(v106 + 48) = v128 | 0x100;
        *(v106 + 72) = 0;
        sub_1CEFD0994(*v126, *(v126 + 8), *(v126 + 9));
        goto LABEL_198;
      }

      sub_1CEFD0994(*(v126 + 16), *(v126 + 24), 0);
      v119 = *v126;
      v173 = *(v126 + 9);
      v120 = *(v126 + 8);
      goto LABEL_61;
    case 6u:
      v157 = v460;
      sub_1CEFCCBDC(v102, v460, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320);
      v159 = *(v158 + 48);
      v160 = *(v157 + *(v158 + 64));
      if ((*(v453 + 48))(v157, 1, v454) == 1)
      {
        sub_1CEFCCC44(v157 + v159, &qword_1EC4C1B40, &unk_1CF9FCB70);
        sub_1CEFCCC44(v157, &qword_1EC4C1B40, &unk_1CF9FCB70);
        goto LABEL_62;
      }

      v184 = v437;
      sub_1CEFE55D0(v157, v437, &unk_1EC4BE360, &qword_1CF9FE650);
      v416 = v102;
      if ((v160 & 2) != 0)
      {
        v216 = *(v184 + 16);
        v217 = *(v184 + 24);
        v106 = sub_1CF1F81B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v219 = *(v106 + 16);
        v218 = *(v106 + 24);
        if (v219 >= v218 >> 1)
        {
          v106 = sub_1CF1F81B0((v218 > 1), (v219 + 1), 1, v106);
        }

        *(v106 + 16) = v219 + 1;
        v220 = v106 + 48 * v219;
        *(v220 + 32) = 4;
        *(v220 + 40) = v216;
        *(v220 + 56) = 0;
        *(v220 + 64) = 0;
        *(v220 + 48) = v217;
        *(v220 + 72) = 0;
      }

      else
      {
        v106 = MEMORY[0x1E69E7CC0];
      }

      if ((v160 & 3) != 0)
      {
        v221 = *v184;
        v222 = *(v184 + 8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_1CF1F81B0(0, (*(v106 + 16) + 1), 1, v106);
        }

        v224 = *(v106 + 16);
        v223 = *(v106 + 24);
        v225 = v224 + 1;
        v465 = v159;
        if (v224 >= v223 >> 1)
        {
          v106 = sub_1CF1F81B0((v223 > 1), (v224 + 1), 1, v106);
        }

        *(v106 + 16) = v225;
        v226 = v106 + 48 * v224;
        *(v226 + 32) = 1024;
        *(v226 + 40) = v221;
        *(v226 + 56) = 0;
        *(v226 + 64) = 0;
        *(v226 + 48) = v222;
        *(v226 + 72) = 5;
        v227 = *(v184 + 16);
        v228 = *(v184 + 24);
        v230 = *(v184 + 128);
        v229 = *(v184 + 136);
        v231 = *(v106 + 24);

        if (v225 >= v231 >> 1)
        {
          v106 = sub_1CF1F81B0((v231 > 1), (v224 + 2), 1, v106);
        }

        *(v106 + 16) = v224 + 2;
        v232 = v106 + 48 * v225;
        *(v232 + 32) = 1024;
        *(v232 + 40) = v227;
        *(v232 + 48) = v228;
        *(v232 + 56) = v230;
        *(v232 + 64) = v229;
        *(v232 + 72) = 1;
        v184 = v437;
        v157 = v460;
        v159 = v465;
      }

      sub_1CEFCCC44(v184, &unk_1EC4BE360, &qword_1CF9FE650);
      sub_1CEFCCC44(v157 + v159, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v149 = &qword_1EC4BE710;
      v150 = &qword_1CF9FE5A8;
      v133 = v416;
      goto LABEL_199;
    case 7u:
      sub_1CEFCCBDC(v102, v93, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC8, &qword_1CFA05308);
      v162 = *(v161 + 48);
      v163 = *&v93[*(v161 + 64)];
      v164 = v458;
      sub_1CEFE55D0(v93, v458, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v165 = &v93[v162];
      v166 = v464;
      sub_1CEFE55D0(v165, v464, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      if ((v163 & 3) != 0)
      {
        v167 = v435;
        sub_1CEFCCBDC(v164, v435, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        v169 = v461;
        v168 = v462;
        if ((*(v462 + 48))(v167, 1, v461) == 1)
        {
          sub_1CEFCCC44(v167, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          v106 = MEMORY[0x1E69E7CC0];
          goto LABEL_146;
        }

        v203 = v102;
        v204 = v436;
        sub_1CEFE55D0(v167, v436, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        if (*(v204 + *(v169 + 48)) == 1)
        {
          v205 = *v204;
          v206 = *v204;
          v106 = sub_1CF1F81B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v208 = *(v106 + 16);
          v207 = *(v106 + 24);
          v209 = v208 + 1;
          if (v208 >= v207 >> 1)
          {
            v106 = sub_1CF1F81B0((v207 > 1), (v208 + 1), 1, v106);
          }

          *(v106 + 16) = v209;
          v210 = v106 + 48 * v208;
          *(v210 + 32) = 2;
          *(v210 + 40) = v205;
          *(v210 + 56) = 0;
          *(v210 + 64) = 0;
          *(v210 + 48) = 256;
          *(v210 + 72) = 2;
          if (v463)
          {
            v211 = *(v204 + 8);
            v212 = *(v106 + 24);
            v213 = v211;
            if (v209 >= v212 >> 1)
            {
              v106 = sub_1CF1F81B0((v212 > 1), (v208 + 2), 1, v106);
            }

            *(v106 + 16) = v208 + 2;
            v214 = v106 + 48 * v209;
            *(v214 + 32) = 2;
            *(v214 + 40) = v211;
            *(v214 + 48) = 256;
            *(v214 + 56) = 0;
            *(v214 + 64) = 0;
            *(v214 + 72) = 6;
            v204 = v436;
          }
        }

        else
        {
          v106 = MEMORY[0x1E69E7CC0];
        }

        v249 = *(v204 + 8);
        v251 = *(v204 + 80);
        v250 = *(v204 + 88);
        v252 = v249;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_1CF1F81B0(0, (*(v106 + 16) + 1), 1, v106);
        }

        v254 = *(v106 + 16);
        v253 = *(v106 + 24);
        if (v254 >= v253 >> 1)
        {
          v106 = sub_1CF1F81B0((v253 > 1), (v254 + 1), 1, v106);
        }

        *(v106 + 16) = v254 + 1;
        v255 = v106 + 48 * v254;
        *(v255 + 32) = 1024;
        *(v255 + 40) = v249;
        *(v255 + 48) = 256;
        *(v255 + 56) = v251;
        *(v255 + 64) = v250;
        *(v255 + 72) = 2;
        sub_1CEFCCC44(v436, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v102 = v203;
        v166 = v464;
      }

      else
      {
        v106 = MEMORY[0x1E69E7CC0];
      }

      v169 = v461;
      v168 = v462;
LABEL_146:
      v256 = v459;
      sub_1CEFCCBDC(v166, v459, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v258 = *(v168 + 48);
      v257 = v168 + 48;
      v259 = v258;
      if (v258(v256, 1, v169) == 1)
      {
        sub_1CEFCCC44(v256, &unk_1EC4BFBB0, &qword_1CF9FCB90);
LABEL_166:
        v283 = v259;
        v284 = v464;
        goto LABEL_167;
      }

      v260 = v256;
      v261 = v163;
      v262 = v164;
      v263 = v438;
      sub_1CEFE55D0(v260, v438, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      if (v463)
      {
        if ((v261 & 0x12) != 0)
        {
          v462 = v257;
          v264 = (v438 + *(v169 + 48));
          v164 = v262;
          if (*v264 == 2)
          {
            sub_1CEFCCC44(v438, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
LABEL_165:
            v163 = v261;
            goto LABEL_166;
          }

          v163 = v261;
          if (v264[*(type metadata accessor for ItemMetadata(0) + 80)] == 1)
          {
            sub_1CEFCCC44(v438, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            goto LABEL_166;
          }

          v340 = *(v438 + 8);
          v341 = v340;
          v283 = v259;
          v342 = v102;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v106 = sub_1CF1F81B0(0, (*(v106 + 16) + 1), 1, v106);
          }

          v344 = *(v106 + 16);
          v343 = *(v106 + 24);
          if (v344 >= v343 >> 1)
          {
            v106 = sub_1CF1F81B0((v343 > 1), (v344 + 1), 1, v106);
          }

          *(v106 + 16) = v344 + 1;
          v345 = v106 + 48 * v344;
          *(v345 + 32) = 16;
          *(v345 + 40) = v340;
          *(v345 + 56) = 0;
          *(v345 + 64) = 0;
          *(v345 + 48) = 256;
          *(v345 + 72) = 0;
          v346 = v421;
          sub_1CEFCCBDC(v164, v421, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          if (v283(v346, 1, v169) == 1)
          {
            sub_1CEFCCC44(v438, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            v347 = &unk_1EC4BFBB0;
            v348 = &qword_1CF9FCB90;
            v349 = v346;
LABEL_232:
            sub_1CEFCCC44(v349, v347, v348);
            v102 = v342;
            v284 = v464;
            goto LABEL_167;
          }

          v366 = v346;
          v367 = v422;
          sub_1CEFE55D0(v366, v422, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          v368 = *(v367 + 8);
          v369 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v371 = v370;
          v373 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v379 = v372;
          if (v369 == v373 && v371 == v372)
          {
            v371, v372, v373, v374, v375, v376, v377, v378;
            v379, v380, v381, v382, v383, v384, v385, v386;
          }

          else
          {
            v393 = sub_1CF9E8048();
            v371, v394, v395, v396, v397, v398, v399, v400;
            v379, v401, v402, v403, v404, v405, v406, v407;
            if ((v393 & 1) == 0)
            {
              v410 = *(v106 + 16);
              v411 = *(v106 + 24);
              v412 = v368;
              if (v410 >= v411 >> 1)
              {
                v106 = sub_1CF1F81B0((v411 > 1), (v410 + 1), 1, v106);
              }

              v169 = v461;
              *(v106 + 16) = v410 + 1;
              v413 = v106 + 48 * v410;
              *(v413 + 32) = 16;
              *(v413 + 40) = v368;
              *(v413 + 56) = 0;
              *(v413 + 64) = 0;
              *(v413 + 48) = 256;
              *(v413 + 72) = 0;
              sub_1CEFCCC44(v422, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
              v349 = v438;
              v347 = &unk_1EC4BFBD0;
              v348 = &unk_1CF9FCBC0;
              goto LABEL_232;
            }
          }

          sub_1CEFCCC44(v422, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          sub_1CEFCCC44(v438, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          v102 = v342;
          v284 = v464;
          v169 = v461;
LABEL_167:
          v285 = v439;
          if ((v163 & 2) != 0)
          {
            v296 = v432;
            sub_1CEFCCBDC(v284, v432, &unk_1EC4BFBB0, &qword_1CF9FCB90);
            if (v283(v296, 1, v169) == 1)
            {
              sub_1CEFCCC44(v296, &unk_1EC4BFBB0, &qword_1CF9FCB90);
            }

            else
            {
              v297 = v296;
              v298 = v434;
              sub_1CEFE55D0(v297, v434, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
              v299 = *(v298 + 8);
              v300 = v299;
              v301 = v102;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v106 = sub_1CF1F81B0(0, (*(v106 + 16) + 1), 1, v106);
              }

              v303 = *(v106 + 16);
              v302 = *(v106 + 24);
              if (v303 >= v302 >> 1)
              {
                v106 = sub_1CF1F81B0((v302 > 1), (v303 + 1), 1, v106);
              }

              *(v106 + 16) = v303 + 1;
              v304 = v106 + 48 * v303;
              *(v304 + 32) = 12;
              *(v304 + 40) = v299;
              *(v304 + 56) = 0;
              *(v304 + 64) = 0;
              *(v304 + 48) = 256;
              *(v304 + 72) = 0;
              sub_1CEFCCC44(v434, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
              v102 = v301;
              v169 = v461;
            }

            v285 = v433;
            sub_1CEFCCBDC(v164, v433, &unk_1EC4BFBB0, &qword_1CF9FCB90);
            if (v283(v285, 1, v169) != 1)
            {
              v305 = v427;
              sub_1CEFE55D0(v285, v427, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
              v306 = *(v305 + 8);
              v307 = v306;
              v291 = v102;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v106 = sub_1CF1F81B0(0, (*(v106 + 16) + 1), 1, v106);
              }

              v309 = *(v106 + 16);
              v308 = *(v106 + 24);
              if (v309 >= v308 >> 1)
              {
                v106 = sub_1CF1F81B0((v308 > 1), (v309 + 1), 1, v106);
              }

              *(v106 + 16) = v309 + 1;
              v310 = v106 + 48 * v309;
              *(v310 + 32) = 8;
              *(v310 + 40) = v306;
              *(v310 + 56) = 0;
              *(v310 + 64) = 0;
              *(v310 + 48) = 256;
              *(v310 + 72) = 0;
              v295 = v305;
              goto LABEL_196;
            }
          }

          else
          {
            sub_1CEFCCBDC(v284, v439, &unk_1EC4BFBB0, &qword_1CF9FCB90);
            if (v283(v285, 1, v169) != 1)
            {
              v286 = v426;
              sub_1CEFE55D0(v285, v426, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
              v287 = (v163 & 0x4000) != 0 && *(v286 + *(v169 + 48)) == 1;
              v288 = v163 & 0xFFFFFFFFFFFFBFFDLL;
              if (!v287)
              {
                v288 = v163;
              }

              if ((v288 & 0x10800) != 0)
              {
                v288 &= 0xFFFFFFFFFFFEF7FDLL;
              }

              if (!v288)
              {
                sub_1CEFCCC44(v286, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
LABEL_197:
                sub_1CEFCCC44(v284, &unk_1EC4BFBB0, &qword_1CF9FCB90);
                sub_1CEFCCC44(v164, &unk_1EC4BFBB0, &qword_1CF9FCB90);
LABEL_198:
                v149 = &qword_1EC4BE710;
                v150 = &qword_1CF9FE5A8;
                v133 = v102;
                goto LABEL_199;
              }

              v289 = *(v286 + 8);
              v290 = v289;
              v291 = v102;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v106 = sub_1CF1F81B0(0, (*(v106 + 16) + 1), 1, v106);
              }

              v293 = *(v106 + 16);
              v292 = *(v106 + 24);
              if (v293 >= v292 >> 1)
              {
                v106 = sub_1CF1F81B0((v292 > 1), (v293 + 1), 1, v106);
              }

              *(v106 + 16) = v293 + 1;
              v294 = v106 + 48 * v293;
              *(v294 + 32) = 8;
              *(v294 + 40) = v289;
              *(v294 + 56) = 0;
              *(v294 + 64) = 0;
              *(v294 + 48) = 256;
              *(v294 + 72) = 0;
              v295 = v286;
LABEL_196:
              sub_1CEFCCC44(v295, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
              v102 = v291;
              goto LABEL_197;
            }
          }

          sub_1CEFCCC44(v284, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          v284 = v164;
          v164 = v285;
          goto LABEL_197;
        }

        v265 = v438;
      }

      else
      {
        v265 = v263;
      }

      sub_1CEFCCC44(v265, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v164 = v262;
      goto LABEL_165;
    case 8u:
      sub_1CEFCCBDC(v102, v99, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v103 = v102;
      v129 = v99;
      v130 = v455;
      sub_1CEFE55D0(v129, v455, &unk_1EC4BE360, &qword_1CF9FE650);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_1CF9FA450;
      v131 = *v130;
      v132 = *(v130 + 8);
      *(v106 + 32) = 2;
      *(v106 + 40) = v131;
      *(v106 + 48) = v132;
      *(v106 + 56) = 0;
      *(v106 + 64) = 0;
      *(v106 + 72) = 1;
      sub_1CEFCCC44(v130, &unk_1EC4BE360, &qword_1CF9FE650);
LABEL_25:
      v133 = v103;
      goto LABEL_33;
    case 9u:
      sub_1CEFCCBDC(v102, v99, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v144 = v99;
      v145 = v457;
      sub_1CEFE55D0(v144, v457, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_1CF9FA440;
      v146 = v145[1];
      *(v106 + 32) = 1024;
      *(v106 + 40) = v146;
      *(v106 + 48) = 256;
      v147 = v145[11];
      *(v106 + 56) = v145[10];
      *(v106 + 64) = v147;
      *(v106 + 72) = 2;
      *(v106 + 80) = 8;
      *(v106 + 88) = v146;
      *(v106 + 104) = 0;
      *(v106 + 112) = 0;
      *(v106 + 96) = 256;
      *(v106 + 120) = 0;
      v148 = v146;

      sub_1CEFCCC44(v145, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v133 = v102;
LABEL_33:
      v149 = &qword_1EC4BE710;
      v150 = &qword_1CF9FE5A8;
      goto LABEL_199;
    case 0xBu:
      v151 = v456;
      sub_1CEFCCBDC(v102, v456, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v152 = *(v151 + 26);
      if ((*(v151 + 9) & 1) == 0)
      {
        v175 = v102;
        v176 = *v151;
        v177 = *(v151 + 8);
        v106 = MEMORY[0x1E69E7CC0];
        if ((v463 & 1) != 0 && *(v151 + 27) == 2)
        {
          v106 = sub_1CF1F81B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v179 = *(v106 + 16);
          v178 = *(v106 + 24);
          if (v179 >= v178 >> 1)
          {
            v106 = sub_1CF1F81B0((v178 > 1), (v179 + 1), 1, v106);
          }

          *(v106 + 16) = v179 + 1;
          v180 = v106 + 48 * v179;
          *(v180 + 32) = 2;
          *(v180 + 40) = v176;
          *(v180 + 56) = 0;
          *(v180 + 64) = 0;
          *(v180 + 48) = v177;
          *(v180 + 72) = 1;
        }

        if (v152 == 1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v106 = sub_1CF1F81B0(0, (*(v106 + 16) + 1), 1, v106);
          }

          v182 = *(v106 + 16);
          v181 = *(v106 + 24);
          if (v182 >= v181 >> 1)
          {
            v106 = sub_1CF1F81B0((v181 > 1), (v182 + 1), 1, v106);
          }

          *(v106 + 16) = v182 + 1;
          v183 = v106 + 48 * v182;
          *(v183 + 32) = 0x100000;
          *(v183 + 40) = v176;
          *(v183 + 56) = 0;
          *(v183 + 64) = 0;
          *(v183 + 48) = v177;
          *(v183 + 72) = 1;
        }

        sub_1CF47FDFC(*(v151 + 16), *(v151 + 24));
        v149 = &qword_1EC4BE710;
        v150 = &qword_1CF9FE5A8;
        v133 = v175;
        goto LABEL_199;
      }

      v153 = *(v151 + 24);
      if (v153 >> 8 > 0xFE)
      {
        sub_1CEFD0994(*v151, *(v151 + 8), 1);
        sub_1CF47FDFC(*(v151 + 16), *(v151 + 24));
        goto LABEL_62;
      }

      if ((v153 & 0x100) != 0)
      {
        sub_1CF47FDFC(*(v151 + 16), *(v151 + 24));
        v119 = *v151;
        v173 = *(v151 + 9);
        v120 = *(v151 + 8);
        goto LABEL_61;
      }

      if (v152 == 1)
      {
        v215 = *(v151 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_1CF9FA450;
        *(v106 + 32) = 0x100000;
        *(v106 + 40) = v215;
        *(v106 + 48) = v153;
        *(v106 + 49) = 0;
        *(v106 + 56) = 0;
        *(v106 + 64) = 0;
        *(v106 + 72) = 1;
        sub_1CEFD0994(*v151, *(v151 + 8), 1);
        goto LABEL_198;
      }

      v119 = *v151;
      v120 = *(v151 + 8);
      goto LABEL_60;
    case 0xDu:
      sub_1CEFCCBDC(v102, v88, &qword_1EC4BE710, &qword_1CF9FE5A8);

      if (*(v88 + 9))
      {
        v119 = *v88;
        v120 = *(v88 + 8);
        goto LABEL_60;
      }

      v189 = *(v88 + 10);
      if ((v189 - 1) < 2)
      {
        v247 = *(v88 + 8);
        v248 = *v88;
        sub_1CEFCCC44(v102, &qword_1EC4BE710, &qword_1CF9FE5A8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_1CF9FA450;
        *(v106 + 32) = 1024;
        *(v106 + 40) = v248;
        *(v106 + 56) = 0;
        *(v106 + 64) = 0;
        *(v106 + 48) = v247;
        *(v106 + 72) = 7;
        return v106;
      }

      if (!*(v88 + 10) || v189 == 23)
      {
        v190 = *(v88 + 8);
        v191 = *v88;
        sub_1CEFCCC44(v102, &qword_1EC4BE710, &qword_1CF9FE5A8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_1CF9FA450;
        *(v106 + 32) = 4;
        *(v106 + 40) = v191;
        *(v106 + 56) = 0;
        *(v106 + 64) = 0;
        *(v106 + 48) = v190;
        *(v106 + 72) = 3;
        return v106;
      }

      goto LABEL_62;
    case 0xEu:
      sub_1CEFCCBDC(v102, v80, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if (v80[9])
      {
        v119 = *v80;
        v120 = v80[8];
        goto LABEL_60;
      }

      v185 = v80[10];
      if (v185 > 0x17)
      {
        goto LABEL_62;
      }

      if (((1 << v185) & 0x80104B) != 0)
      {
        v186 = v80[8];
        v187 = *v80;
        sub_1CEFCCC44(v102, &qword_1EC4BE710, &qword_1CF9FE5A8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
        v188 = swift_allocObject();
        v106 = v188;
        *(v188 + 16) = xmmword_1CF9FA450;
        *(v188 + 32) = 262400;
        *(v188 + 40) = v187;
        *(v188 + 64) = 0;
        *(v188 + 48) = v186;
        goto LABEL_212;
      }

      if (v185 != 2)
      {
        goto LABEL_62;
      }

      v281 = *v80;
      v282 = v80[8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v115 = swift_allocObject();
      v106 = v115;
      *(v115 + 16) = xmmword_1CF9FA450;
      *(v115 + 32) = 262912;
      *(v115 + 40) = v281;
      *(v115 + 64) = 0;
      *(v115 + 48) = v282;
      goto LABEL_43;
    case 0x15u:
      v121 = v442;
      sub_1CEFCCBDC(v102, v442, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if ((*v121 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
      v197 = swift_dynamicCastClass();
      if (v197)
      {
        v198 = v197;
        goto LABEL_157;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
      v266 = swift_dynamicCastClass();
      if (!v266)
      {
        goto LABEL_12;
      }

      v267 = v266;
      goto LABEL_220;
    case 0x16u:
      v134 = v440;
      sub_1CEFCCBDC(v102, v440, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if ((*v134 & 0x8000000000000000) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA00, &qword_1CF9FADC8);
        v135 = swift_dynamicCastClass();
        if (v135)
        {
          v136 = v135;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
          v137 = swift_allocObject();
          v106 = v137;
          *(v137 + 16) = xmmword_1CF9FA450;
          v138 = 0x4000;
LABEL_29:
          v139 = *(v136 + 144);
          v140 = *(v136 + 152);
          *(v137 + 32) = v138;
          *(v137 + 40) = v139;
          *(v137 + 56) = 0;
          *(v137 + 64) = 0;
          *(v137 + 48) = v140;
          *(v137 + 72) = 0;
LABEL_105:

LABEL_106:
          v149 = &qword_1EC4BE710;
          v150 = &qword_1CF9FE5A8;
          v133 = v102;
LABEL_199:
          sub_1CEFCCC44(v133, v149, v150);
          return v106;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
        v233 = swift_dynamicCastClass();
        if (v233)
        {
          if ((v463 & 1) == 0 || v233[112] != 3)
          {
            goto LABEL_248;
          }

          v234 = *(*v233 + 664);
          v235 = v233;
          swift_beginAccess();
          v236 = &v235[v234];
          v237 = v420;
          sub_1CEFCCBDC(v236, v420, &qword_1EC4BFF08, &qword_1CFA055D8);
          if ((*(v418 + 48))(v237, 1, v419) == 1)
          {
            v238 = &qword_1EC4BFF08;
            v239 = &qword_1CFA055D8;
            v240 = v237;
LABEL_247:
            sub_1CEFCCC44(v240, v238, v239);
            goto LABEL_248;
          }

          v387 = v417;
          sub_1CEFE55D0(v237, v417, &unk_1EC4BFD90, &unk_1CFA134F0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
          v106 = swift_allocObject();
          *(v106 + 16) = xmmword_1CF9FA440;
          v388 = *v387;
          v389 = *(v387 + 8);
          *(v106 + 32) = 8;
          *(v106 + 40) = v388;
          *(v106 + 56) = 0;
          *(v106 + 64) = 0;
          *(v106 + 48) = v389;
          *(v106 + 72) = 0;
          v390 = *(v235 + 18);
          *(v106 + 80) = 8;
          *(v106 + 88) = v390;
          *(v106 + 104) = 0;
          *(v106 + 112) = 0;
          *(v106 + 96) = 256;
          *(v106 + 120) = 3;
          v391 = v390;

          v329 = v387;
          v327 = &unk_1EC4BFD90;
          v328 = &unk_1CFA134F0;
LABEL_245:
          sub_1CEFCCC44(v329, v327, v328);
          goto LABEL_106;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA60, &unk_1CF9FCAF0);
        v312 = swift_dynamicCastClass();
        if (v312)
        {
          if (*(v312 + 112) != 3)
          {
LABEL_248:

            goto LABEL_249;
          }

          v313 = v312;
          v514[0] = *(v312 + 96);
          v314 = v514[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
          if ((swift_dynamicCast() & 1) == 0)
          {
            sub_1CF480600(&v487);
            v511 = v493;
            v512 = v494;
            v507 = v489;
            v508 = v490;
            v509 = v491;
            v510 = v492;
            v505 = v487;
            v506 = v488;
            v502 = v493;
            v503 = v494;
            v498 = v489;
            v499 = v490;
            v500 = v491;
            v501 = v492;
            v513 = v495;
            v504 = v495;
            v496 = v487;
            v497 = v488;
            v238 = &unk_1EC4BFE40;
            v239 = &unk_1CFA05530;
            v240 = &v496;
            goto LABEL_247;
          }

          nullsub_1();
          v502 = v511;
          v503 = v512;
          v504 = v513;
          v498 = v507;
          v499 = v508;
          v500 = v509;
          v501 = v510;
          v496 = v505;
          v497 = v506;
          if ((*(v313 + 168) & 3) != 0)
          {
            v484 = v511;
            v485 = v512;
            v480 = v507;
            v481 = v508;
            v482 = v509;
            v483 = v510;
            v478 = v505;
            v479 = v506;
            v493 = v511;
            v494 = v512;
            v489 = v507;
            v490 = v508;
            v491 = v509;
            v492 = v510;
            v486 = v513;
            v495 = v513;
            v487 = v505;
            v488 = v506;
            if (sub_1CF2B971C(&v487) == 1)
            {
              nullsub_1();
              v316 = v315;
              v317 = v315[3];
              v471 = v498;
              v472 = v499;
              v477 = v504;
              v475 = v502;
              v476 = v503;
              v473 = v500;
              v474 = v501;
              v469 = v496;
              v470 = v497;
              sub_1CEFCCBDC(&v469, v467, &unk_1EC4BE320, &unk_1CFA08B50);
              v317, v318, v319, v320, v321, v322, v323, v324;
              sub_1CF480620(v316[6], v316[7]);

              v325 = *v316;
              v326 = *(v316 + 8);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
              v106 = swift_allocObject();
              *(v106 + 16) = xmmword_1CF9FA450;
              *(v106 + 32) = 1024;
              *(v106 + 40) = v325;
              *(v106 + 56) = 0;
              *(v106 + 64) = 0;
              *(v106 + 48) = v326;
              *(v106 + 72) = 0;

              v327 = &unk_1EC4BFE40;
              v328 = &unk_1CFA05530;
              v329 = &v496;
              goto LABEL_245;
            }

            v467[6] = v484;
            v467[7] = v485;
            v468 = v486;
            v467[2] = v480;
            v467[3] = v481;
            v467[4] = v482;
            v467[5] = v483;
            v467[0] = v478;
            v467[1] = v479;
            v475 = v502;
            v476 = v503;
            v477 = v504;
            v471 = v498;
            v472 = v499;
            v473 = v500;
            v474 = v501;
            v469 = v496;
            v470 = v497;
            sub_1CEFCCBDC(&v469, &v466, &unk_1EC4BE320, &unk_1CFA08B50);
            sub_1CEFCCC44(v467, &unk_1EC4BE320, &unk_1CFA08B50);
          }

          sub_1CEFCCC44(&v496, &unk_1EC4BFE40, &unk_1CFA05530);
LABEL_249:
          v174 = v102;
LABEL_63:
          sub_1CEFCCC44(v174, &qword_1EC4BE710, &qword_1CF9FE5A8);
          return MEMORY[0x1E69E7CC0];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF80, &unk_1CF9FAE70);
        v358 = swift_dynamicCastClass();
        if (v358)
        {
          v359 = v358;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
          v106 = swift_allocObject();
          *(v106 + 16) = xmmword_1CF9FA450;
          v360 = *(v359 + 144);
          v361 = *(v359 + 152);
          *(v106 + 32) = 1024;
          *(v106 + 40) = v360;
          *(v106 + 56) = 0;
          *(v106 + 64) = 0;
          *(v106 + 48) = v361;
          *(v106 + 72) = 7;
          goto LABEL_105;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE60, &qword_1CF9FAE20);
        v392 = swift_dynamicCastClass();
        if (v392)
        {
          v136 = v392;
          goto LABEL_252;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
        v414 = swift_dynamicCastClass();
        if (v414)
        {
          v136 = v414;
          if ((*(v414 + 136) & 0x2140) == 0)
          {
            goto LABEL_248;
          }

LABEL_252:
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
          v137 = swift_allocObject();
          v106 = v137;
          *(v137 + 16) = xmmword_1CF9FA450;
          v138 = 256;
          goto LABEL_29;
        }

LABEL_12:

        goto LABEL_62;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF58, &qword_1CF9FB448);
      v199 = swift_dynamicCastClass();
      if (v199)
      {
        v200 = v199;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_1CF9FA450;
        v201 = *(v200 + 144);
        *(v106 + 32) = 16;
        *(v106 + 40) = v201;
        *(v106 + 56) = 0;
        *(v106 + 64) = 0;
        *(v106 + 48) = 256;
        *(v106 + 72) = 0;
        goto LABEL_104;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
      v268 = swift_dynamicCastClass();
      if (!v268)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
        v331 = swift_dynamicCastClass();
        if (v331)
        {
          v267 = v331;
LABEL_220:
          sub_1CEFCCC44(v102, &qword_1EC4BE710, &qword_1CF9FE5A8);
          v332 = *(v267 + 144);
          v333 = *(v267 + 152);
          v106 = sub_1CF1F81B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v335 = *(v106 + 16);
          v334 = *(v106 + 24);
          if (v335 >= v334 >> 1)
          {
            v106 = sub_1CF1F81B0((v334 > 1), (v335 + 1), 1, v106);
          }

          *(v106 + 16) = v335 + 1;
          v336 = v106 + 48 * v335;
          *(v336 + 32) = 8;
          *(v336 + 40) = v332;
          *(v336 + 56) = 0;
          *(v336 + 64) = 0;
          *(v336 + 48) = v333;
          *(v336 + 72) = 4;
          if ((*(v267 + 176) & 3) == 0)
          {

            return v106;
          }

          v337 = *(*v267 + 672);
          swift_beginAccess();
          v338 = v267 + v337;
          v339 = v423;
          sub_1CEFCCBDC(v338, v423, &unk_1EC4BFF10, &unk_1CFA055E0);

          if ((*(v429 + 48))(v339, 1, v430) == 1)
          {
            v149 = &unk_1EC4BFF10;
            v150 = &unk_1CFA055E0;
            v133 = v339;
          }

          else
          {
            v350 = v424;
            sub_1CEFE55D0(v339, v424, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
            v352 = *v350;
            v351 = *(v350 + 8);
            v353 = *(v350 + 16);
            v354 = *(v106 + 16);
            v355 = *(v106 + 24);
            v356 = v352;

            if (v354 >= v355 >> 1)
            {
              v106 = sub_1CF1F81B0((v355 > 1), (v354 + 1), 1, v106);
            }

            *(v106 + 16) = v354 + 1;
            v357 = v106 + 48 * v354;
            *(v357 + 32) = 1024;
            *(v357 + 40) = v352;
            *(v357 + 48) = 256;
            *(v357 + 56) = v351;
            *(v357 + 64) = v353;
            *(v357 + 72) = 2;
            v149 = &qword_1EC4BE9F8;
            v150 = &unk_1CF9FEFE0;
            v133 = v424;
          }

          goto LABEL_199;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF80, &qword_1CF9FB478);
        v362 = swift_dynamicCastClass();
        if (v362)
        {
          v363 = v362;
          if ((*(v362 + 136) & 0x2140) != 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
            v106 = swift_allocObject();
            *(v106 + 16) = xmmword_1CF9FA440;
            v364 = *(v363 + 144);
            *(v106 + 32) = 2;
            *(v106 + 40) = v364;
            *(v106 + 48) = 256;
            *(v106 + 56) = 0;
            *(v106 + 64) = 0;
            *(v106 + 72) = 2;
            *(v106 + 80) = 256;
            *(v106 + 88) = v364;
            *(v106 + 104) = 0;
            *(v106 + 112) = 0;
            *(v106 + 96) = 256;
            *(v106 + 120) = 0;
            v365 = v364;
            goto LABEL_105;
          }

          goto LABEL_248;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE28, &qword_1CF9FB1F8);
        v408 = swift_dynamicCastClass();
        if (!v408)
        {
          goto LABEL_12;
        }

        v409 = v408;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_1CF9FA450;
        v201 = *(v409 + 144);
        *(v106 + 32) = 8;
        *(v106 + 40) = v201;
        *(v106 + 56) = 0;
        *(v106 + 64) = 0;
        *(v106 + 48) = 256;
        *(v106 + 72) = 3;
LABEL_104:
        v202 = v201;
        goto LABEL_105;
      }

      v198 = v268;
LABEL_157:
      sub_1CEFCCC44(v102, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v269 = *(*v198 + 664);
      swift_beginAccess();
      v270 = v198 + v269;
      v271 = v428;
      sub_1CEFCCBDC(v270, v428, &unk_1EC4BFF10, &unk_1CFA055E0);
      if ((*(v429 + 48))(v271, 1, v430) != 1)
      {
        v274 = v425;
        sub_1CEFE55D0(v271, v425, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_1CF9FC3C0;
        v275 = *v274;
        v276 = *(v274 + 8);
        *(v106 + 32) = 1024;
        *(v106 + 40) = v275;
        *(v106 + 48) = 256;
        v277 = *(v274 + 16);
        *(v106 + 56) = v276;
        *(v106 + 64) = v277;
        *(v106 + 72) = 2;
        *(v106 + 80) = 8;
        *(v106 + 88) = v275;
        *(v106 + 104) = 0;
        *(v106 + 112) = 0;
        *(v106 + 96) = 256;
        *(v106 + 120) = 0;
        v278 = *(v198 + 144);
        v279 = *(v198 + 152);
        *(v106 + 128) = 8;
        *(v106 + 136) = v278;
        *(v106 + 144) = v279;
        v280 = v275;

        *(v106 + 145) = 0;
        *(v106 + 168) = 3;
        v133 = v274;
        v149 = &qword_1EC4BE9F8;
        v150 = &unk_1CF9FEFE0;
        goto LABEL_199;
      }

      sub_1CEFCCC44(v271, &unk_1EC4BFF10, &unk_1CFA055E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_1CF9FA450;
      *(v106 + 32) = 8;
      v272 = *(v198 + 144);
      v273 = *(v198 + 152);

      *(v106 + 40) = v272;
      *(v106 + 48) = v273;
      *(v106 + 49) = 0;
      *(v106 + 72) = 3;
      return v106;
    case 0x17u:
      v123 = v446;
      sub_1CEFCCBDC(v102, v446, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if ((*v123 & 1) == 0)
      {
        goto LABEL_19;
      }

      sub_1CEFCCC44(v102, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if ((v431 & 0x4000) != 0)
      {
        return &unk_1F4BED3D0;
      }

      else
      {
        return MEMORY[0x1E69E7CC0];
      }

    case 0x18u:
      v117 = v447;
      sub_1CEFCCBDC(v102, v447, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if (*v117)
      {
        goto LABEL_62;
      }

LABEL_19:
      sub_1CEFCCC44(v102, &qword_1EC4BE710, &qword_1CF9FE5A8);
      return &unk_1F4BED380;
    case 0x19u:
      v154 = v443;
      sub_1CEFCCBDC(v102, v443, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if (*(v154 + 9))
      {
        goto LABEL_57;
      }

      if (v463)
      {
        goto LABEL_62;
      }

      v114 = *(v154 + 8);
      v113 = *v154;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v115 = swift_allocObject();
      v106 = v115;
      *(v115 + 16) = xmmword_1CF9FA450;
      v116 = 0x4000;
      goto LABEL_40;
    case 0x1Au:
      sub_1CEFCCBDC(v102, v77, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v155 = *v77;
      v156 = v77[8];
      if (v77[9])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
        v115 = swift_allocObject();
        v106 = v115;
        *(v115 + 16) = xmmword_1CF9FA450;
        *(v115 + 32) = 4096;
        *(v115 + 40) = v155;
        *(v115 + 64) = 0;
        *(v115 + 48) = v156 | 0x100;
        goto LABEL_43;
      }

      v119 = *v77;
      v120 = v77[8];
      v173 = 0;
      goto LABEL_61;
    case 0x1Bu:
      v154 = v441;
      sub_1CEFCCBDC(v102, v441, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if (*(v154 + 9))
      {
LABEL_57:
        v119 = *v154;
        v120 = *(v154 + 8);
        goto LABEL_60;
      }

      if (v463)
      {
        goto LABEL_62;
      }

      v195 = *(v154 + 8);
      v196 = *v154;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v110 = swift_allocObject();
      v106 = v110;
      *(v110 + 16) = xmmword_1CF9FA450;
      *(v110 + 32) = 2;
      *(v110 + 40) = v196;
      *(v110 + 56) = 0;
      *(v110 + 64) = 0;
      *(v110 + 48) = v195;
      v125 = 5;
      goto LABEL_66;
    case 0x1Cu:
      v170 = v452;
      sub_1CEFCCBDC(v102, v452, &qword_1EC4BE710, &qword_1CF9FE5A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v171 = &unk_1EC4BF650;
        v172 = &unk_1CF9FCB40;
LABEL_55:
        sub_1CEFCCC44(v170, v171, v172);
        goto LABEL_62;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload != 1)
          {
            goto LABEL_213;
          }

          v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCE0, &unk_1CFA05400);
          v242 = v241[12];
          v243 = v102;
          v244 = v241[16];
          v245 = v170 + v241[20];

          v193 = *v170;
          v194 = *(v170 + 8);
          sub_1CF1D56D0(*v245, *(v245 + 8), *(v245 + 16), *(v245 + 24), *(v245 + 32), *(v245 + 40), *(v245 + 48), *(v245 + 56));
          v246 = *(v170 + v244);
          v102 = v243;
        }

        else
        {
          v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F90, &unk_1CF9FCB80);
          v242 = *(v330 + 48);

          v193 = *v170;
          v194 = *(v170 + 8);
        }

        sub_1CEFCCC44(v170 + v242, &qword_1EC4C1B40, &unk_1CF9FCB70);
      }

      else
      {
        if (EnumCaseMultiPayload != 2)
        {
          if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
          {
            v193 = *v170;
            v194 = *(v170 + 8);
            goto LABEL_211;
          }

LABEL_213:
          v171 = &unk_1EC4BFCC0;
          v172 = &unk_1CF9FCB50;
          goto LABEL_55;
        }

        v193 = *v170;
        v194 = *(v170 + 8);
        sub_1CF1D56D0(*(v170 + 24), *(v170 + 32), *(v170 + 40), *(v170 + 48), *(v170 + 56), *(v170 + 64), *(v170 + 72), *(v170 + 80));
      }

LABEL_211:
      sub_1CEFCCC44(v102, &qword_1EC4BE710, &qword_1CF9FE5A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v188 = swift_allocObject();
      v106 = v188;
      *(v188 + 16) = xmmword_1CF9FA450;
      *(v188 + 32) = 0x2000;
      *(v188 + 40) = v193;
      *(v188 + 64) = 0;
      *(v188 + 48) = v194;
LABEL_212:
      *(v188 + 56) = 0;
      *(v188 + 72) = 0;
      return v106;
    case 0x1Fu:
      v107 = v449;
      sub_1CEFCCBDC(v102, v449, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v108 = *v107;
      v109 = *(v107 + 8);
      if (*(v107 + 9))
      {
        goto LABEL_10;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v110 = swift_allocObject();
      v106 = v110;
      *(v110 + 16) = xmmword_1CF9FA450;
      v111 = 0x4000;
      goto LABEL_65;
    case 0x21u:
      v124 = v445;
      sub_1CEFCCBDC(v102, v445, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v113 = *v124;
      v114 = *(v124 + 8);
      if (*(v124 + 9))
      {
        goto LABEL_59;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v110 = swift_allocObject();
      v106 = v110;
      *(v110 + 16) = xmmword_1CF9FA450;
      *(v110 + 32) = 8;
      *(v110 + 40) = v113;
      *(v110 + 56) = 0;
      *(v110 + 64) = 0;
      *(v110 + 48) = v114;
      v125 = 3;
      goto LABEL_66;
    case 0x22u:
      sub_1CEFCCBDC(v102, v85, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v113 = *v85;
      v114 = v85[8];
      if (v85[9])
      {
        goto LABEL_59;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v141 = v102;
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_1CF9FA450;
      *(v106 + 32) = 1024;
      *(v106 + 40) = v113;
      *(v106 + 56) = 0;
      *(v106 + 64) = 0;
      *(v106 + 48) = v114;
      *(v106 + 72) = 7;
      goto LABEL_99;
    case 0x23u:
      v112 = v448;
      sub_1CEFCCBDC(v102, v448, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v113 = *v112;
      v114 = *(v112 + 8);
      if (*(v112 + 9))
      {
        goto LABEL_59;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v115 = swift_allocObject();
      v106 = v115;
      *(v115 + 16) = xmmword_1CF9FA450;
      v116 = 0x80000;
      goto LABEL_40;
    case 0x28u:
      v122 = v450;
      sub_1CEFCCBDC(v102, v450, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v113 = *v122;
      v114 = *(v122 + 8);
      if (*(v122 + 9))
      {
LABEL_59:
        v119 = v113;
        v120 = v114;
        goto LABEL_60;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v115 = swift_allocObject();
      v106 = v115;
      *(v115 + 16) = xmmword_1CF9FA450;
      v116 = 1024;
LABEL_40:
      *(v115 + 32) = v116;
      *(v115 + 40) = v113;
      *(v115 + 64) = 0;
      *(v115 + 48) = v114;
LABEL_43:
      *(v115 + 56) = 0;
      *(v115 + 72) = 0;
      goto LABEL_198;
    case 0x2Au:
      v118 = v451;
      sub_1CEFCCBDC(v102, v451, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v108 = *v118;
      v109 = *(v118 + 8);
      if ((*(v118 + 9) & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
        v110 = swift_allocObject();
        v106 = v110;
        *(v110 + 16) = xmmword_1CF9FA450;
        v111 = 512;
LABEL_65:
        *(v110 + 32) = v111;
        *(v110 + 40) = v108;
        *(v110 + 48) = v109;
        *(v110 + 49) = 0;
        *(v110 + 56) = 0;
        *(v110 + 64) = 0;
        v125 = 1;
LABEL_66:
        *(v110 + 72) = v125;
        goto LABEL_198;
      }

LABEL_10:
      v119 = v108;
      v120 = v109;
LABEL_60:
      v173 = 1;
LABEL_61:
      sub_1CEFD0994(v119, v120, v173);
LABEL_62:
      v174 = v102;
      goto LABEL_63;
    default:
      goto LABEL_62;
  }
}

void *sub_1CF036ED4(int a1, uint64_t a2)
{
  v385 = a2;
  v418 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFF08, &qword_1CFA055D8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v378 = &v371 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v382 = &v371 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v383 = *(v6 - 8);
  v384 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v379 = &v371 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v380 = &v371 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF10, &unk_1CFA055E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v375 = &v371 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v373 = *(v12 - 8);
  v374 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v372 = (&v371 - v13);
  v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v414 = *(v417 - 8);
  MEMORY[0x1EEE9AC00](v417);
  v377 = &v371 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v389 = &v371 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v381 = &v371 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v388 = &v371 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v393 = &v371 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v391 = &v371 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v409 = &v371 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v406 = *(v27 - 8);
  v407 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v392 = &v371 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v408 = &v371 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v376 = &v371 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v387 = &v371 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v411 = &v371 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v386 = &v371 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v413 = &v371 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v390 = &v371 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v415 = &v371 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v416 = &v371 - v46;
  v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
  MEMORY[0x1EEE9AC00](v419);
  v404 = &v371 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v403 = &v371 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v402 = &v371 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v401 = &v371 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v410 = &v371 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v400 = &v371 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v399 = &v371 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v398 = &v371 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v396 = (&v371 - v63);
  MEMORY[0x1EEE9AC00](v64);
  v395 = &v371 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v405 = &v371 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v394 = (&v371 - v69);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v371 - v71;
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v371 - v74;
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v371 - v77;
  MEMORY[0x1EEE9AC00](v79);
  v397 = &v371 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v371 - v82;
  MEMORY[0x1EEE9AC00](v84);
  v86 = (&v371 - v85);
  MEMORY[0x1EEE9AC00](v87);
  v412 = &v371 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v371 - v90;
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v371 - v93;
  MEMORY[0x1EEE9AC00](v95);
  v97 = (&v371 - v96);
  MEMORY[0x1EEE9AC00](v98);
  v100 = &v371 - v99;
  sub_1CEFCCBDC(v420, &v371 - v99, &unk_1EC4C4E20, &unk_1CFA05350);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1CEFCCBDC(v100, v97, &unk_1EC4C4E20, &unk_1CFA05350);
      v101 = v100;
      v102 = *v97;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_1CF9FA450;
      *(v103 + 32) = 2;
      *(v103 + 40) = v102;
      *(v103 + 48) = 0;
      *(v103 + 56) = 0;
      *(v103 + 64) = 0;
      *(v103 + 72) = 1;
      v104 = v101;
      goto LABEL_34;
    case 3u:
      sub_1CEFCCBDC(v100, v94, &unk_1EC4C4E20, &unk_1CFA05350);
      v141 = *v94;
      v142 = v94[8];
      if (v94[9])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_1CF9FA450;
        *(v103 + 32) = 2;
        *(v103 + 40) = v141;
        *(v103 + 48) = v142;
        *(v103 + 49) = 1;
        *(v103 + 56) = 0;
        *(v103 + 64) = 0;
        *(v103 + 72) = 2;
        goto LABEL_201;
      }

      v117 = *v94;
      v118 = v94[8];
      goto LABEL_86;
    case 5u:
      v125 = v397;
      sub_1CEFCCBDC(v100, v397, &unk_1EC4C4E20, &unk_1CFA05350);
      v126 = *(v125 + 16);
      v127 = *(v125 + 24);
      if (*(v125 + 25))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_1CF9FA450;
        *(v103 + 32) = 16;
        *(v103 + 40) = v126;
        *(v103 + 56) = 0;
        *(v103 + 64) = 0;
        *(v103 + 48) = v127 | 0x100;
        *(v103 + 72) = 0;
        sub_1CF1E53F8(*v125, *(v125 + 8), *(v125 + 9));
        goto LABEL_201;
      }

      sub_1CF1E53F8(*(v125 + 16), *(v125 + 24), 0);
      v117 = *v125;
      v119 = *(v125 + 9);
      v118 = *(v125 + 8);
      goto LABEL_87;
    case 6u:
      v154 = v412;
      sub_1CEFCCBDC(v100, v412, &unk_1EC4C4E20, &unk_1CFA05350);
      v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC8, &qword_1CFA05308);
      v156 = *(v155 + 48);
      v157 = *(v154 + *(v155 + 64));
      if ((*(v406 + 48))(v154, 1, v407) == 1)
      {
        sub_1CEFCCC44(v154 + v156, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        sub_1CEFCCC44(v154, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        goto LABEL_88;
      }

      v182 = v392;
      sub_1CEFE55D0(v154, v392, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      if ((v157 & 2) != 0)
      {
        v210 = v100;
        v211 = *(v182 + 8);
        v212 = v211;
        v103 = sub_1CF1F818C(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v214 = *(v103 + 16);
        v213 = *(v103 + 24);
        if (v214 >= v213 >> 1)
        {
          v103 = sub_1CF1F818C((v213 > 1), (v214 + 1), 1, v103);
        }

        *(v103 + 16) = v214 + 1;
        v215 = v103 + 48 * v214;
        *(v215 + 32) = 4;
        *(v215 + 40) = v211;
        *(v215 + 56) = 0;
        *(v215 + 64) = 0;
        *(v215 + 48) = 0;
        *(v215 + 72) = 0;
        v100 = v210;
      }

      else
      {
        v103 = MEMORY[0x1E69E7CC0];
      }

      if ((v157 & 3) != 0)
      {
        v216 = *v182;
        v217 = *v182;
        v218 = v100;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1CF1F818C(0, (*(v103 + 16) + 1), 1, v103);
        }

        v220 = *(v103 + 16);
        v219 = *(v103 + 24);
        v221 = v220 + 1;
        if (v220 >= v219 >> 1)
        {
          v103 = sub_1CF1F818C((v219 > 1), (v220 + 1), 1, v103);
        }

        *(v103 + 16) = v221;
        v222 = v103 + 48 * v220;
        *(v222 + 32) = 1024;
        *(v222 + 40) = v216;
        *(v222 + 56) = 0;
        *(v222 + 64) = 0;
        *(v222 + 48) = 0;
        *(v222 + 72) = 5;
        v223 = *(v182 + 8);
        v225 = *(v182 + 80);
        v224 = *(v182 + 88);
        v226 = *(v103 + 24);
        v227 = (v220 + 2);
        v228 = v223;

        if (v221 >= v226 >> 1)
        {
          v103 = sub_1CF1F818C((v226 > 1), v227, 1, v103);
        }

        *(v103 + 16) = v227;
        v229 = v103 + 48 * v221;
        *(v229 + 32) = 1024;
        *(v229 + 40) = v223;
        *(v229 + 48) = 0;
        *(v229 + 56) = v225;
        *(v229 + 64) = v224;
        *(v229 + 72) = 1;
        v100 = v218;
        v182 = v392;
        v154 = v412;
      }

      sub_1CEFCCC44(v182, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v230 = &unk_1EC4BFBB0;
      v231 = &qword_1CF9FCB90;
      v232 = v154 + v156;
      goto LABEL_200;
    case 7u:
      v420 = v100;
      sub_1CEFCCBDC(v100, v91, &unk_1EC4C4E20, &unk_1CFA05350);
      v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320);
      v159 = *(v158 + 48);
      v160 = *&v91[*(v158 + 64)];
      v161 = v416;
      sub_1CEFE55D0(v91, v416, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v162 = &v91[v159];
      v163 = v415;
      sub_1CEFE55D0(v162, v415, &qword_1EC4C1B40, &unk_1CF9FCB70);
      if ((v160 & 3) != 0)
      {
        v164 = v390;
        sub_1CEFCCBDC(v161, v390, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v165 = v414;
        v166 = v417;
        v167 = (*(v414 + 48))(v164, 1, v417);
        v168 = v411;
        v169 = v413;
        if (v167 == 1)
        {
          sub_1CEFCCC44(v164, &qword_1EC4C1B40, &unk_1CF9FCB70);
          v103 = MEMORY[0x1E69E7CC0];
          goto LABEL_147;
        }

        v197 = v391;
        sub_1CEFE55D0(v164, v391, &unk_1EC4BE360, &qword_1CF9FE650);
        if (*(v197 + *(v166 + 48)) == 1)
        {
          v198 = *v197;
          v199 = *(v197 + 8) | 0x100;
          v103 = sub_1CF1F818C(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v201 = *(v103 + 16);
          v200 = *(v103 + 24);
          v202 = v201 + 1;
          if (v201 >= v200 >> 1)
          {
            v103 = sub_1CF1F818C((v200 > 1), (v201 + 1), 1, v103);
          }

          *(v103 + 16) = v202;
          v203 = v103 + 48 * v201;
          *(v203 + 32) = 2;
          *(v203 + 40) = v198;
          *(v203 + 56) = 0;
          *(v203 + 64) = 0;
          *(v203 + 48) = v199;
          *(v203 + 72) = 2;
          if (v418)
          {
            v204 = *(v197 + 16);
            v205 = *(v197 + 24) | 0x100;
            v206 = *(v103 + 24);
            if (v202 >= v206 >> 1)
            {
              v103 = sub_1CF1F818C((v206 > 1), (v201 + 2), 1, v103);
            }

            *(v103 + 16) = v201 + 2;
            v207 = v103 + 48 * v202;
            *(v207 + 32) = 2;
            *(v207 + 40) = v204;
            *(v207 + 48) = v205;
            *(v207 + 56) = 0;
            *(v207 + 64) = 0;
            *(v207 + 72) = 6;
          }
        }

        else
        {
          v103 = MEMORY[0x1E69E7CC0];
        }

        v245 = *(v197 + 16);
        v247 = *(v197 + 128);
        v246 = *(v197 + 136);
        v248 = *(v197 + 24) | 0x100;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1CF1F818C(0, (*(v103 + 16) + 1), 1, v103);
        }

        v250 = *(v103 + 16);
        v249 = *(v103 + 24);
        if (v250 >= v249 >> 1)
        {
          v103 = sub_1CF1F818C((v249 > 1), (v250 + 1), 1, v103);
        }

        *(v103 + 16) = v250 + 1;
        v251 = v103 + 48 * v250;
        *(v251 + 32) = 1024;
        *(v251 + 40) = v245;
        *(v251 + 48) = v248;
        *(v251 + 56) = v247;
        *(v251 + 64) = v246;
        *(v251 + 72) = 2;
        sub_1CEFCCC44(v391, &unk_1EC4BE360, &qword_1CF9FE650);
        v163 = v415;
        v161 = v416;
        v166 = v417;
        v165 = v414;
      }

      else
      {
        v103 = MEMORY[0x1E69E7CC0];
        v166 = v417;
        v165 = v414;
        v168 = v411;
      }

      v169 = v413;
LABEL_147:
      sub_1CEFCCBDC(v163, v169, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v252 = *(v165 + 48);
      if (v252(v169, 1, v166) == 1)
      {
        v253 = &qword_1EC4C1B40;
        v254 = &unk_1CF9FCB70;
        v255 = v169;
LABEL_166:
        sub_1CEFCCC44(v255, v253, v254);
        goto LABEL_167;
      }

      v256 = v169;
      v257 = v393;
      sub_1CEFE55D0(v256, v393, &unk_1EC4BE360, &qword_1CF9FE650);
      if ((v418 & 1) == 0)
      {
        v253 = &unk_1EC4BE360;
        v254 = &qword_1CF9FE650;
        v255 = v257;
        goto LABEL_166;
      }

      if ((v160 & 0x12) == 0)
      {
        v253 = &unk_1EC4BE360;
        v254 = &qword_1CF9FE650;
        v255 = v393;
        goto LABEL_166;
      }

      v258 = v393;
      v259 = (v393 + *(v166 + 48));
      if (*v259 == 2)
      {
        goto LABEL_218;
      }

      if (v259[*(type metadata accessor for ItemMetadata(0) + 80)] == 1)
      {
        v258 = v393;
LABEL_218:
        sub_1CEFCCC44(v258, &unk_1EC4BE360, &qword_1CF9FE650);
        goto LABEL_167;
      }

      v328 = *(v393 + 16);
      v329 = *(v393 + 24) | 0x100;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = sub_1CF1F818C(0, (*(v103 + 16) + 1), 1, v103);
      }

      v331 = *(v103 + 16);
      v330 = *(v103 + 24);
      if (v331 >= v330 >> 1)
      {
        v103 = sub_1CF1F818C((v330 > 1), (v331 + 1), 1, v103);
      }

      *(v103 + 16) = v331 + 1;
      v332 = v103 + 48 * v331;
      *(v332 + 32) = 16;
      *(v332 + 40) = v328;
      *(v332 + 56) = 0;
      *(v332 + 64) = 0;
      *(v332 + 48) = v329;
      *(v332 + 72) = 0;
      v161 = v416;
      v333 = v376;
      sub_1CEFCCBDC(v416, v376, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v166 = v417;
      if (v252(v333, 1, v417) == 1)
      {
        sub_1CEFCCC44(v393, &unk_1EC4BE360, &qword_1CF9FE650);
        sub_1CEFCCC44(v333, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v168 = v411;
        goto LABEL_167;
      }

      v349 = v333;
      v350 = v377;
      sub_1CEFE55D0(v349, v377, &unk_1EC4BE360, &qword_1CF9FE650);
      v351 = *(v350 + 16);
      v352 = *(v350 + 24);
      v353 = *(v393 + 16);
      v354 = *(v393 + 24);
      if (*(v350 + 24))
      {
        v168 = v411;
        if (v352 == 1)
        {
          if (v354 != 1 || v351 != v353)
          {
LABEL_278:
            v367 = v352 | 0x100;
            v369 = *(v103 + 16);
            v368 = *(v103 + 24);
            if (v369 >= v368 >> 1)
            {
              v103 = sub_1CF1F818C((v368 > 1), (v369 + 1), 1, v103);
            }

            *(v103 + 16) = v369 + 1;
            v370 = v103 + 48 * v369;
            *(v370 + 32) = 16;
            *(v370 + 40) = v351;
            *(v370 + 56) = 0;
            *(v370 + 64) = 0;
            *(v370 + 48) = v367;
            *(v370 + 72) = 0;
            sub_1CEFCCC44(v377, &unk_1EC4BE360, &qword_1CF9FE650);
            sub_1CEFCCC44(v393, &unk_1EC4BE360, &qword_1CF9FE650);
            v161 = v416;
            v166 = v417;
            v168 = v411;
LABEL_167:
            if ((v160 & 2) != 0)
            {
              v276 = v386;
              sub_1CEFCCBDC(v163, v386, &qword_1EC4C1B40, &unk_1CF9FCB70);
              if (v252(v276, 1, v166) == 1)
              {
                sub_1CEFCCC44(v276, &qword_1EC4C1B40, &unk_1CF9FCB70);
              }

              else
              {
                v286 = v276;
                v287 = v388;
                sub_1CEFE55D0(v286, v388, &unk_1EC4BE360, &qword_1CF9FE650);
                v288 = *(v287 + 16);
                v289 = *(v287 + 24) | 0x100;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v103 = sub_1CF1F818C(0, (*(v103 + 16) + 1), 1, v103);
                }

                v291 = *(v103 + 16);
                v290 = *(v103 + 24);
                if (v291 >= v290 >> 1)
                {
                  v103 = sub_1CF1F818C((v290 > 1), (v291 + 1), 1, v103);
                }

                *(v103 + 16) = v291 + 1;
                v292 = v103 + 48 * v291;
                *(v292 + 32) = 12;
                *(v292 + 40) = v288;
                *(v292 + 56) = 0;
                *(v292 + 64) = 0;
                *(v292 + 48) = v289;
                *(v292 + 72) = 0;
                sub_1CEFCCC44(v388, &unk_1EC4BE360, &qword_1CF9FE650);
                v166 = v417;
              }

              v293 = v387;
              sub_1CEFCCBDC(v161, v387, &qword_1EC4C1B40, &unk_1CF9FCB70);
              if (v252(v293, 1, v166) == 1)
              {
                sub_1CEFCCC44(v163, &qword_1EC4C1B40, &unk_1CF9FCB70);
                v163 = v161;
                v161 = v293;
                goto LABEL_199;
              }

              v294 = v389;
              sub_1CEFE55D0(v293, v389, &unk_1EC4BE360, &qword_1CF9FE650);
              v295 = *(v294 + 16);
              v296 = *(v294 + 24) | 0x100;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v103 = sub_1CF1F818C(0, (*(v103 + 16) + 1), 1, v103);
              }

              v298 = *(v103 + 16);
              v297 = *(v103 + 24);
              if (v298 >= v297 >> 1)
              {
                v103 = sub_1CF1F818C((v297 > 1), (v298 + 1), 1, v103);
              }

              *(v103 + 16) = v298 + 1;
              v299 = v103 + 48 * v298;
              *(v299 + 32) = 8;
              *(v299 + 40) = v295;
              *(v299 + 56) = 0;
              *(v299 + 64) = 0;
              *(v299 + 48) = v296;
              *(v299 + 72) = 0;
              v285 = v389;
            }

            else
            {
              sub_1CEFCCBDC(v163, v168, &qword_1EC4C1B40, &unk_1CF9FCB70);
              if (v252(v168, 1, v166) == 1)
              {
                sub_1CEFCCC44(v163, &qword_1EC4C1B40, &unk_1CF9FCB70);
                v163 = v161;
                v161 = v168;
LABEL_199:
                v100 = v420;
                sub_1CEFCCC44(v163, &qword_1EC4C1B40, &unk_1CF9FCB70);
                v232 = v161;
                v230 = &qword_1EC4C1B40;
                v231 = &unk_1CF9FCB70;
LABEL_200:
                sub_1CEFCCC44(v232, v230, v231);
LABEL_201:
                v146 = &unk_1EC4C4E20;
                v147 = &unk_1CFA05350;
                v104 = v100;
                goto LABEL_202;
              }

              v277 = v381;
              sub_1CEFE55D0(v168, v381, &unk_1EC4BE360, &qword_1CF9FE650);
              v278 = (v160 & 0x4000) != 0 && *(v277 + *(v166 + 48)) == 1;
              v279 = v160 & 0xFFFFFFFFFFFFBFFDLL;
              if (!v278)
              {
                v279 = v160;
              }

              if ((v279 & 0x10800) != 0)
              {
                v279 &= 0xFFFFFFFFFFFEF7FDLL;
              }

              if (v279)
              {
                v280 = *(v277 + 16);
                v281 = *(v277 + 24) | 0x100;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v103 = sub_1CF1F818C(0, (*(v103 + 16) + 1), 1, v103);
                }

                v283 = *(v103 + 16);
                v282 = *(v103 + 24);
                if (v283 >= v282 >> 1)
                {
                  v103 = sub_1CF1F818C((v282 > 1), (v283 + 1), 1, v103);
                }

                *(v103 + 16) = v283 + 1;
                v284 = v103 + 48 * v283;
                *(v284 + 32) = 8;
                *(v284 + 40) = v280;
                *(v284 + 56) = 0;
                *(v284 + 64) = 0;
                *(v284 + 48) = v281;
                *(v284 + 72) = 0;
              }

              v285 = v277;
            }

            sub_1CEFCCC44(v285, &unk_1EC4BE360, &qword_1CF9FE650);
            goto LABEL_199;
          }
        }

        else if (v351)
        {
          if (v354 != 2 || v353 != 1)
          {
            goto LABEL_278;
          }
        }

        else if (v354 != 2 || v353)
        {
          goto LABEL_278;
        }
      }

      else
      {
        v168 = v411;
        if (*(v393 + 24) || v351 != v353)
        {
          goto LABEL_278;
        }
      }

      v366 = v393;
      sub_1CEFCCC44(v377, &unk_1EC4BE360, &qword_1CF9FE650);
      v258 = v366;
      goto LABEL_218;
    case 8u:
      sub_1CEFCCBDC(v100, v97, &unk_1EC4C4E20, &unk_1CFA05350);
      v128 = v100;
      v129 = &unk_1EC4BFBD0;
      v130 = &unk_1CF9FCBC0;
      v131 = v408;
      sub_1CEFE55D0(v97, v408, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_1CF9FA450;
      v132 = *v131;
      *(v103 + 32) = 2;
      *(v103 + 40) = v132;
      *(v103 + 48) = 0;
      *(v103 + 56) = 0;
      *(v103 + 64) = 0;
      *(v103 + 72) = 1;
      v133 = v132;
      goto LABEL_33;
    case 9u:
      sub_1CEFCCBDC(v100, v97, &unk_1EC4C4E20, &unk_1CFA05350);
      v128 = v100;
      v129 = &unk_1EC4BE360;
      v130 = &qword_1CF9FE650;
      v131 = v409;
      sub_1CEFE55D0(v97, v409, &unk_1EC4BE360, &qword_1CF9FE650);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_1CF9FA440;
      v143 = *(v131 + 16);
      v144 = *(v131 + 24);
      *(v103 + 32) = 1024;
      *(v103 + 40) = v143;
      *(v103 + 48) = v144;
      *(v103 + 49) = 1;
      v145 = *(v131 + 136);
      *(v103 + 56) = *(v131 + 128);
      *(v103 + 64) = v145;
      *(v103 + 72) = 2;
      *(v103 + 80) = 8;
      *(v103 + 88) = v143;
      *(v103 + 104) = 0;
      *(v103 + 112) = 0;
      *(v103 + 96) = v144 | 0x100;
      *(v103 + 120) = 0;

LABEL_33:
      sub_1CEFCCC44(v131, v129, v130);
      v104 = v128;
LABEL_34:
      v146 = &unk_1EC4C4E20;
      v147 = &unk_1CFA05350;
      goto LABEL_202;
    case 0xBu:
      v148 = v410;
      sub_1CEFCCBDC(v100, v410, &unk_1EC4C4E20, &unk_1CFA05350);
      v149 = *(v148 + 26);
      if ((*(v148 + 9) & 1) == 0)
      {
        v174 = *v148;
        v175 = *(v148 + 8);
        v103 = MEMORY[0x1E69E7CC0];
        if ((v418 & 1) != 0 && *(v148 + 27) == 2)
        {
          sub_1CF48034C(*v148, *(v148 + 8), 0);
          v103 = sub_1CF1F818C(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v177 = *(v103 + 16);
          v176 = *(v103 + 24);
          if (v177 >= v176 >> 1)
          {
            v103 = sub_1CF1F818C((v176 > 1), (v177 + 1), 1, v103);
          }

          *(v103 + 16) = v177 + 1;
          v178 = v103 + 48 * v177;
          *(v178 + 32) = 2;
          *(v178 + 40) = v174;
          *(v178 + 56) = 0;
          *(v178 + 64) = 0;
          *(v178 + 48) = v175;
          *(v178 + 72) = 1;
        }

        if (v149 == 1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v103 = sub_1CF1F818C(0, (*(v103 + 16) + 1), 1, v103);
          }

          v180 = *(v103 + 16);
          v179 = *(v103 + 24);
          if (v180 >= v179 >> 1)
          {
            v103 = sub_1CF1F818C((v179 > 1), (v180 + 1), 1, v103);
          }

          *(v103 + 16) = v180 + 1;
          v181 = v103 + 48 * v180;
          *(v181 + 32) = 0x100000;
          *(v181 + 40) = v174;
          *(v181 + 56) = 0;
          *(v181 + 64) = 0;
          *(v181 + 48) = v175;
          *(v181 + 72) = 1;
        }

        else
        {
          sub_1CF1E53F8(v174, v175, 0);
        }

        sub_1CF4804C0(*(v148 + 16), *(v148 + 24));
        goto LABEL_201;
      }

      v150 = *(v148 + 24);
      if (v150 >> 8 > 0xFE)
      {
        sub_1CF1E53F8(*v148, *(v148 + 8), 1);
        sub_1CF4804C0(*(v148 + 16), *(v148 + 24));
        goto LABEL_88;
      }

      if ((v150 & 0x100) != 0)
      {
        v273 = *(v148 + 16);
      }

      else
      {
        v208 = *(v148 + 16);
        if (v149 == 1)
        {
          v209 = *(v148 + 24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
          v103 = swift_allocObject();
          *(v103 + 16) = xmmword_1CF9FA450;
          *(v103 + 32) = 0x100000;
          *(v103 + 40) = v208;
          *(v103 + 48) = v209;
          *(v103 + 49) = 0;
          *(v103 + 56) = 0;
          *(v103 + 64) = 0;
          *(v103 + 72) = 1;
          sub_1CF1E53F8(*v148, *(v148 + 8), 1);
          goto LABEL_201;
        }

        v273 = *(v148 + 16);
      }

      sub_1CF4804C0(v273, v150);
      v117 = *v148;
      v119 = *(v148 + 9);
      v118 = *(v148 + 8);
      goto LABEL_87;
    case 0xDu:
      sub_1CEFCCBDC(v100, v86, &unk_1EC4C4E20, &unk_1CFA05350);

      if (*(v86 + 9))
      {
        v117 = *v86;
        v118 = *(v86 + 8);
        v119 = 1;
        goto LABEL_87;
      }

      v188 = *(v86 + 10);
      if ((v188 - 1) < 2)
      {
        v244 = *v86;
        sub_1CEFCCC44(v100, &unk_1EC4C4E20, &unk_1CFA05350);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_1CF9FA450;
        *(v103 + 32) = 1024;
        *(v103 + 40) = v244;
        *(v103 + 56) = 0;
        *(v103 + 64) = 0;
        *(v103 + 48) = 0;
        *(v103 + 72) = 7;
        return v103;
      }

      if (!*(v86 + 10) || v188 == 23)
      {
        v189 = *v86;
        sub_1CEFCCC44(v100, &unk_1EC4C4E20, &unk_1CFA05350);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_1CF9FA450;
        *(v103 + 32) = 4;
        *(v103 + 40) = v189;
        *(v103 + 56) = 0;
        *(v103 + 64) = 0;
        *(v103 + 48) = 0;
        *(v103 + 72) = 3;
        return v103;
      }

      v117 = *v86;
      v118 = *(v86 + 8);
      goto LABEL_86;
    case 0xEu:
      sub_1CEFCCBDC(v100, v78, &unk_1EC4C4E20, &unk_1CFA05350);
      if (v78[9])
      {
        v117 = *v78;
        v118 = v78[8];
        v119 = 1;
        goto LABEL_87;
      }

      v183 = v78[10];
      if (v183 > 0x17)
      {
        goto LABEL_221;
      }

      if (((1 << v183) & 0x80104B) != 0)
      {
        v184 = *v78;
        sub_1CEFCCC44(v100, &unk_1EC4C4E20, &unk_1CFA05350);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
        v185 = swift_allocObject();
        v103 = v185;
        *(v185 + 16) = xmmword_1CF9FA450;
        v186 = 262400;
        goto LABEL_214;
      }

      if (v183 == 2)
      {
        v274 = *v78;
        v275 = v78[8];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
        v113 = swift_allocObject();
        v103 = v113;
        *(v113 + 16) = xmmword_1CF9FA450;
        *(v113 + 32) = 262912;
        *(v113 + 40) = v274;
        *(v113 + 64) = 0;
        *(v113 + 48) = v275;
        goto LABEL_44;
      }

LABEL_221:
      v117 = *v78;
      v118 = v78[8];
      goto LABEL_86;
    case 0x15u:
      v120 = v396;
      sub_1CEFCCBDC(v100, v396, &unk_1EC4C4E20, &unk_1CFA05350);
      if ((*v120 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
      v191 = swift_dynamicCastClass();
      if (v191)
      {
        v192 = v191;
        goto LABEL_158;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA60, &unk_1CF9FCAF0);
      v260 = swift_dynamicCastClass();
      if (!v260)
      {
        goto LABEL_12;
      }

      v261 = v260;
      goto LABEL_225;
    case 0x16u:
      v134 = v394;
      sub_1CEFCCBDC(v100, v394, &unk_1EC4C4E20, &unk_1CFA05350);
      if ((*v134 & 0x8000000000000000) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF18, &qword_1CF9FB3C8);
        v135 = swift_dynamicCastClass();
        if (v135)
        {
          v136 = v135;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
          v137 = swift_allocObject();
          v103 = v137;
          *(v137 + 16) = xmmword_1CF9FA450;
          v138 = 0x4000;
LABEL_28:
          v139 = *(v136 + 144);
          *(v137 + 32) = v138;
          *(v137 + 40) = v139;
          *(v137 + 56) = 0;
          *(v137 + 64) = 0;
          *(v137 + 48) = 0;
          *(v137 + 72) = 0;
LABEL_29:
          v140 = v139;
LABEL_104:

LABEL_105:
          v146 = &unk_1EC4C4E20;
          v147 = &unk_1CFA05350;
          v104 = v100;
LABEL_202:
          sub_1CEFCCC44(v104, v146, v147);
          return v103;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
        v233 = swift_dynamicCastClass();
        if (v233)
        {
          if ((v418 & 1) == 0 || v233[112] != 3)
          {
            goto LABEL_254;
          }

          v234 = *(*v233 + 664);
          v235 = v233;
          swift_beginAccess();
          v236 = &v235[v234];
          v237 = v375;
          sub_1CEFCCBDC(v236, v375, &unk_1EC4BFF10, &unk_1CFA055E0);
          if ((*(v373 + 48))(v237, 1, v374) == 1)
          {
            v238 = &unk_1EC4BFF10;
            v239 = &unk_1CFA055E0;
            v240 = v237;
LABEL_253:
            sub_1CEFCCC44(v240, v238, v239);
            goto LABEL_254;
          }

          v355 = v372;
          sub_1CEFE55D0(v237, v372, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
          v103 = swift_allocObject();
          *(v103 + 16) = xmmword_1CF9FA440;
          v356 = *v355;
          *(v103 + 32) = 8;
          *(v103 + 40) = v356;
          *(v103 + 56) = 0;
          *(v103 + 64) = 0;
          *(v103 + 48) = 0;
          *(v103 + 72) = 0;
          v357 = *(v235 + 18);
          v358 = v235[152] | 0x100;
          *(v103 + 80) = 8;
          *(v103 + 88) = v357;
          *(v103 + 104) = 0;
          *(v103 + 112) = 0;
          *(v103 + 96) = v358;
          *(v103 + 120) = 3;
          v359 = v356;

          v317 = v355;
          v315 = &qword_1EC4BE9F8;
          v316 = &unk_1CF9FEFE0;
LABEL_251:
          sub_1CEFCCC44(v317, v315, v316);
          goto LABEL_105;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
        v301 = swift_dynamicCastClass();
        if (v301)
        {
          if (*(v301 + 112) != 3)
          {
LABEL_254:

            goto LABEL_255;
          }

          v302 = v301;
          v441[0] = *(v301 + 96);
          v303 = v441[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v439 = 0u;
            memset(v440, 0, 40);
            v437 = 0u;
            v438 = 0u;
            v440[40] = -1;
            v434 = 0u;
            v435 = 0u;
            v436[0] = 0u;
            *(v436 + 9) = *&v440[25];
            v432 = 0u;
            v433 = 0u;
            v238 = &qword_1EC4BFE78;
            v239 = &qword_1CFA05558;
            v240 = &v432;
            goto LABEL_253;
          }

          v432 = v437;
          v433 = v438;
          v434 = v439;
          v435 = *v440;
          *(v436 + 9) = *&v440[25];
          v436[0] = *&v440[16];
          if ((*(v302 + 176) & 3) != 0)
          {
            v304 = v433;
            v305 = v434;
            v306 = v435;
            if (BYTE8(v436[1]) == 1)
            {
              v429 = v439;
              v430 = *v440;
              v431[0] = *&v440[16];
              *(v431 + 9) = *&v440[25];
              v427 = v437;
              v428 = v438;
              v307 = v432;
              sub_1CEFCCBDC(&v427, v422, &qword_1EC4BF270, &qword_1CFA01B70);
              v304, v308, v309, v310, v311, v312, v313, v314;
              sub_1CF480620(v305, *(&v305 + 1));

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
              v103 = swift_allocObject();
              *(v103 + 16) = xmmword_1CF9FA450;
              *(v103 + 32) = 1024;
              *(v103 + 40) = v307;
              *(v103 + 56) = 0;
              *(v103 + 64) = 0;
              *(v103 + 48) = 0;
              *(v103 + 72) = 0;

              v315 = &qword_1EC4BFE78;
              v316 = &qword_1CFA05558;
              v317 = &v432;
              goto LABEL_251;
            }

            v422[0] = v432;
            v422[1] = v433;
            v422[2] = v434;
            v423 = v435;
            v424 = *&v440[8];
            v425 = *&v440[24];
            v426 = BYTE8(v436[1]);
            v429 = v439;
            v430 = *v440;
            v431[0] = *&v440[16];
            *(v431 + 9) = *&v440[25];
            v427 = v437;
            v428 = v438;
            sub_1CEFCCBDC(&v427, &v421, &qword_1EC4BF270, &qword_1CFA01B70);
            sub_1CEFCCC44(v422, &qword_1EC4BF270, &qword_1CFA01B70);
          }

          sub_1CEFCCC44(&v432, &qword_1EC4BFE78, &qword_1CFA05558);
LABEL_255:
          v187 = v100;
LABEL_89:
          sub_1CEFCCC44(v187, &unk_1EC4C4E20, &unk_1CFA05350);
          return MEMORY[0x1E69E7CC0];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF78, &qword_1CF9FB470);
        v343 = swift_dynamicCastClass();
        if (v343)
        {
          v344 = v343;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
          v103 = swift_allocObject();
          *(v103 + 16) = xmmword_1CF9FA450;
          v139 = *(v344 + 144);
          *(v103 + 32) = 1024;
          *(v103 + 40) = v139;
          *(v103 + 56) = 0;
          *(v103 + 64) = 0;
          *(v103 + 48) = 0;
          *(v103 + 72) = 7;
          goto LABEL_29;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE80, &qword_1CF9FB420);
        v360 = swift_dynamicCastClass();
        if (v360)
        {
          v136 = v360;
          goto LABEL_258;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF80, &qword_1CF9FB478);
        v365 = swift_dynamicCastClass();
        if (v365)
        {
          v136 = v365;
          if ((*(v365 + 136) & 0x2140) == 0)
          {
            goto LABEL_254;
          }

LABEL_258:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
          v137 = swift_allocObject();
          v103 = v137;
          *(v137 + 16) = xmmword_1CF9FA450;
          v138 = 256;
          goto LABEL_28;
        }

LABEL_12:

        goto LABEL_88;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA48, &qword_1CF9FAE48);
      v193 = swift_dynamicCastClass();
      if (v193)
      {
        v194 = v193;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_1CF9FA450;
        v195 = *(v194 + 144);
        v196 = *(v194 + 152) | 0x100;
        *(v103 + 32) = 16;
        *(v103 + 40) = v195;
        *(v103 + 56) = 0;
        *(v103 + 64) = 0;
        *(v103 + 48) = v196;
        *(v103 + 72) = 0;
        goto LABEL_104;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
      v262 = swift_dynamicCastClass();
      if (!v262)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA60, &unk_1CF9FCAF0);
        v319 = swift_dynamicCastClass();
        if (v319)
        {
          v261 = v319;
LABEL_225:
          sub_1CEFCCC44(v100, &unk_1EC4C4E20, &unk_1CFA05350);
          v320 = *(v261 + 144);
          v321 = v320;
          v103 = sub_1CF1F818C(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v323 = *(v103 + 16);
          v322 = *(v103 + 24);
          if (v323 >= v322 >> 1)
          {
            v103 = sub_1CF1F818C((v322 > 1), (v323 + 1), 1, v103);
          }

          *(v103 + 16) = v323 + 1;
          v324 = v103 + 48 * v323;
          *(v324 + 32) = 8;
          *(v324 + 40) = v320;
          *(v324 + 56) = 0;
          *(v324 + 64) = 0;
          *(v324 + 48) = 0;
          *(v324 + 72) = 4;
          if ((*(v261 + 168) & 3) == 0)
          {

            return v103;
          }

          v325 = *(*v261 + 672);
          swift_beginAccess();
          v326 = v261 + v325;
          v327 = v378;
          sub_1CEFCCBDC(v326, v378, &qword_1EC4BFF08, &qword_1CFA055D8);

          if ((*(v383 + 48))(v327, 1, v384) == 1)
          {
            v146 = &qword_1EC4BFF08;
            v147 = &qword_1CFA055D8;
            v104 = v327;
          }

          else
          {
            v334 = v379;
            sub_1CEFE55D0(v327, v379, &unk_1EC4BFD90, &unk_1CFA134F0);
            v335 = *v334;
            v336 = *(v334 + 8);
            v338 = *(v334 + 16);
            v337 = *(v334 + 24);
            v339 = v336 | 0x100;
            v340 = *(v103 + 16);
            v341 = *(v103 + 24);

            if (v340 >= v341 >> 1)
            {
              v103 = sub_1CF1F818C((v341 > 1), (v340 + 1), 1, v103);
            }

            *(v103 + 16) = v340 + 1;
            v342 = v103 + 48 * v340;
            *(v342 + 32) = 1024;
            *(v342 + 40) = v335;
            *(v342 + 48) = v339;
            *(v342 + 56) = v338;
            *(v342 + 64) = v337;
            *(v342 + 72) = 2;
            v146 = &unk_1EC4BFD90;
            v147 = &unk_1CFA134F0;
            v104 = v379;
          }

          goto LABEL_202;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
        v345 = swift_dynamicCastClass();
        if (v345)
        {
          v346 = v345;
          if ((*(v345 + 136) & 0x2140) != 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
            v103 = swift_allocObject();
            *(v103 + 16) = xmmword_1CF9FA440;
            v347 = *(v346 + 144);
            v348 = *(v346 + 152);
            *(v103 + 32) = 2;
            *(v103 + 40) = v347;
            *(v103 + 48) = v348;
            *(v103 + 49) = 1;
            *(v103 + 56) = 0;
            *(v103 + 64) = 0;
            *(v103 + 72) = 2;
            *(v103 + 80) = 256;
            *(v103 + 88) = v347;
            *(v103 + 104) = 0;
            *(v103 + 112) = 0;
            *(v103 + 96) = v348 | 0x100;
            *(v103 + 120) = 0;
            goto LABEL_104;
          }

          goto LABEL_254;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF20, &unk_1CFA055F0);
        v361 = swift_dynamicCastClass();
        if (v361)
        {
          v362 = v361;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
          v103 = swift_allocObject();
          *(v103 + 16) = xmmword_1CF9FA450;
          v363 = *(v362 + 144);
          v364 = *(v362 + 152) | 0x100;
          *(v103 + 32) = 8;
          *(v103 + 40) = v363;
          *(v103 + 56) = 0;
          *(v103 + 64) = 0;
          *(v103 + 48) = v364;
          *(v103 + 72) = 3;
          goto LABEL_104;
        }

        goto LABEL_12;
      }

      v192 = v262;
LABEL_158:
      sub_1CEFCCC44(v100, &unk_1EC4C4E20, &unk_1CFA05350);
      v263 = *(*v192 + 83);
      swift_beginAccess();
      v264 = v192 + v263;
      v265 = v382;
      sub_1CEFCCBDC(v264, v382, &qword_1EC4BFF08, &qword_1CFA055D8);
      if ((*(v383 + 48))(v265, 1, v384) != 1)
      {
        v267 = v380;
        sub_1CEFE55D0(v265, v380, &unk_1EC4BFD90, &unk_1CFA134F0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_1CF9FC3C0;
        v268 = *v267;
        v269 = *(v267 + 8);
        *(v103 + 32) = 1024;
        *(v103 + 40) = v268;
        *(v103 + 48) = v269;
        *(v103 + 49) = 1;
        v270 = *(v267 + 24);
        *(v103 + 56) = *(v267 + 16);
        *(v103 + 64) = v270;
        *(v103 + 72) = 2;
        *(v103 + 80) = 8;
        *(v103 + 88) = v268;
        *(v103 + 104) = 0;
        *(v103 + 112) = 0;
        *(v103 + 96) = v269 | 0x100;
        *(v103 + 120) = 0;
        v271 = v192[18];
        *(v103 + 128) = 8;
        *(v103 + 136) = v271;
        v272 = v271;

        *(v103 + 145) = 0;
        *(v103 + 168) = 3;
        v104 = v267;
        v146 = &unk_1EC4BFD90;
        v147 = &unk_1CFA134F0;
        goto LABEL_202;
      }

      sub_1CEFCCC44(v265, &qword_1EC4BFF08, &qword_1CFA055D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_1CF9FA450;
      *(v103 + 32) = 8;
      v266 = v192[18];

      *(v103 + 40) = v266;
      *(v103 + 49) = 0;
      *(v103 + 72) = 3;
      return v103;
    case 0x17u:
      v122 = v399;
      sub_1CEFCCBDC(v100, v399, &unk_1EC4C4E20, &unk_1CFA05350);
      if ((*v122 & 1) == 0)
      {
        goto LABEL_19;
      }

      sub_1CEFCCC44(v100, &unk_1EC4C4E20, &unk_1CFA05350);
      if ((v385 & 0x4000) != 0)
      {
        return &unk_1F4BED470;
      }

      else
      {
        return MEMORY[0x1E69E7CC0];
      }

    case 0x18u:
      v115 = v400;
      sub_1CEFCCBDC(v100, v400, &unk_1EC4C4E20, &unk_1CFA05350);
      if (*v115)
      {
        goto LABEL_88;
      }

LABEL_19:
      sub_1CEFCCC44(v100, &unk_1EC4C4E20, &unk_1CFA05350);
      return &unk_1F4BED420;
    case 0x19u:
      v151 = v395;
      sub_1CEFCCBDC(v100, v395, &unk_1EC4C4E20, &unk_1CFA05350);
      v117 = *v151;
      v112 = *(v151 + 8);
      if (*(v151 + 9))
      {
        goto LABEL_62;
      }

      if (v418)
      {
        goto LABEL_85;
      }

      v111 = *v151;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
      v113 = swift_allocObject();
      v103 = v113;
      *(v113 + 16) = xmmword_1CF9FA450;
      v114 = 0x4000;
      goto LABEL_41;
    case 0x1Au:
      sub_1CEFCCBDC(v100, v75, &unk_1EC4C4E20, &unk_1CFA05350);
      v152 = *v75;
      v153 = v75[8];
      if (v75[9])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
        v113 = swift_allocObject();
        v103 = v113;
        *(v113 + 16) = xmmword_1CF9FA450;
        *(v113 + 32) = 4096;
        *(v113 + 40) = v152;
        *(v113 + 64) = 0;
        *(v113 + 48) = v153 | 0x100;
        goto LABEL_44;
      }

      v117 = *v75;
      v118 = v75[8];
      goto LABEL_86;
    case 0x1Bu:
      sub_1CEFCCBDC(v100, v72, &unk_1EC4C4E20, &unk_1CFA05350);
      v117 = *v72;
      v112 = v72[8];
      if (v72[9])
      {
        goto LABEL_62;
      }

      if ((v418 & 1) == 0)
      {
        v173 = *v72;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
        v108 = swift_allocObject();
        v103 = v108;
        *(v108 + 16) = xmmword_1CF9FA450;
        *(v108 + 32) = 2;
        *(v108 + 40) = v173;
        *(v108 + 56) = 0;
        *(v108 + 64) = 0;
        *(v108 + 48) = v112;
        v124 = 5;
        goto LABEL_65;
      }

LABEL_85:
      v118 = v112;
LABEL_86:
      v119 = 0;
      goto LABEL_87;
    case 0x1Cu:
      v170 = v405;
      sub_1CEFCCBDC(v100, v405, &unk_1EC4C4E20, &unk_1CFA05350);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD38, &unk_1CFA05450);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v171 = &qword_1EC4BFD38;
        v172 = &unk_1CFA05450;
LABEL_56:
        sub_1CEFCCC44(v170, v171, v172);
        goto LABEL_88;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload != 1)
          {
            goto LABEL_215;
          }

          v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDA0, &qword_1CF9FCB98);
          v242 = v241[12];
          v243 = v170 + v241[20];

          v184 = *v170;
          sub_1CF1D5750(*v243, *(v243 + 8), *(v243 + 16), *(v243 + 24), *(v243 + 32), *(v243 + 40), *(v243 + 48), *(v243 + 56), *(v243 + 64), *(v243 + 72), *(v243 + 80), *(v243 + 88));
        }

        else
        {
          v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDC0, &qword_1CF9FCBA0);
          v242 = *(v318 + 48);

          v184 = *v170;
        }

        sub_1CEFCCC44(v170 + v242, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      }

      else
      {
        if (EnumCaseMultiPayload != 2)
        {
          if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
          {
            v184 = *v170;
            goto LABEL_213;
          }

LABEL_215:
          v171 = &unk_1EC4BFD70;
          v172 = &qword_1CFA12AC0;
          goto LABEL_56;
        }

        v184 = *v170;
        sub_1CF1D5750(*(v170 + 24), *(v170 + 32), *(v170 + 40), *(v170 + 48), *(v170 + 56), *(v170 + 64), *(v170 + 72), *(v170 + 80), *(v170 + 88), *(v170 + 96), *(v170 + 104), *(v170 + 112));
      }

LABEL_213:
      sub_1CEFCCC44(v100, &unk_1EC4C4E20, &unk_1CFA05350);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
      v185 = swift_allocObject();
      v103 = v185;
      *(v185 + 16) = xmmword_1CF9FA450;
      v186 = 0x2000;
LABEL_214:
      *(v185 + 32) = v186;
      *(v185 + 40) = v184;
      *(v185 + 56) = 0;
      *(v185 + 64) = 0;
      *(v185 + 48) = 0;
      *(v185 + 72) = 0;
      return v103;
    case 0x1Fu:
      v105 = v402;
      sub_1CEFCCBDC(v100, v402, &unk_1EC4C4E20, &unk_1CFA05350);
      v106 = *v105;
      v107 = *(v105 + 8);
      if (*(v105 + 9))
      {
        goto LABEL_10;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
      v108 = swift_allocObject();
      v103 = v108;
      *(v108 + 16) = xmmword_1CF9FA450;
      v109 = 0x4000;
      goto LABEL_64;
    case 0x21u:
      v123 = v398;
      sub_1CEFCCBDC(v100, v398, &unk_1EC4C4E20, &unk_1CFA05350);
      v111 = *v123;
      v112 = *(v123 + 8);
      if (*(v123 + 9))
      {
        goto LABEL_61;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
      v108 = swift_allocObject();
      v103 = v108;
      *(v108 + 16) = xmmword_1CF9FA450;
      *(v108 + 32) = 8;
      *(v108 + 40) = v111;
      *(v108 + 56) = 0;
      *(v108 + 64) = 0;
      *(v108 + 48) = v112;
      v124 = 3;
      goto LABEL_65;
    case 0x22u:
      sub_1CEFCCBDC(v100, v83, &unk_1EC4C4E20, &unk_1CFA05350);
      v111 = *v83;
      v112 = v83[8];
      if (v83[9])
      {
        goto LABEL_61;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_1CF9FA450;
      *(v103 + 32) = 1024;
      *(v103 + 40) = v111;
      *(v103 + 56) = 0;
      *(v103 + 64) = 0;
      *(v103 + 48) = v112;
      *(v103 + 72) = 7;
      v146 = &unk_1EC4C4E20;
      v147 = &unk_1CFA05350;
      v104 = v100;
      goto LABEL_202;
    case 0x23u:
      v110 = v401;
      sub_1CEFCCBDC(v100, v401, &unk_1EC4C4E20, &unk_1CFA05350);
      v111 = *v110;
      v112 = *(v110 + 8);
      if (*(v110 + 9))
      {
        goto LABEL_61;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
      v113 = swift_allocObject();
      v103 = v113;
      *(v113 + 16) = xmmword_1CF9FA450;
      v114 = 0x80000;
      goto LABEL_41;
    case 0x28u:
      v121 = v403;
      sub_1CEFCCBDC(v100, v403, &unk_1EC4C4E20, &unk_1CFA05350);
      v111 = *v121;
      v112 = *(v121 + 8);
      if (*(v121 + 9))
      {
LABEL_61:
        v117 = v111;
LABEL_62:
        v118 = v112;
        v119 = 1;
        goto LABEL_87;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
      v113 = swift_allocObject();
      v103 = v113;
      *(v113 + 16) = xmmword_1CF9FA450;
      v114 = 1024;
LABEL_41:
      *(v113 + 32) = v114;
      *(v113 + 40) = v111;
      *(v113 + 64) = 0;
      *(v113 + 48) = v112;
LABEL_44:
      *(v113 + 56) = 0;
      *(v113 + 72) = 0;
      goto LABEL_201;
    case 0x2Au:
      v116 = v404;
      sub_1CEFCCBDC(v100, v404, &unk_1EC4C4E20, &unk_1CFA05350);
      v106 = *v116;
      v107 = *(v116 + 8);
      if ((*(v116 + 9) & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
        v108 = swift_allocObject();
        v103 = v108;
        *(v108 + 16) = xmmword_1CF9FA450;
        v109 = 512;
LABEL_64:
        *(v108 + 32) = v109;
        *(v108 + 40) = v106;
        *(v108 + 48) = v107;
        *(v108 + 49) = 0;
        *(v108 + 56) = 0;
        *(v108 + 64) = 0;
        v124 = 1;
LABEL_65:
        *(v108 + 72) = v124;
        goto LABEL_201;
      }

LABEL_10:
      v117 = v106;
      v118 = v107;
      v119 = 1;
LABEL_87:
      sub_1CF1E53F8(v117, v118, v119);
LABEL_88:
      v187 = v100;
      goto LABEL_89;
    default:
      goto LABEL_88;
  }
}

uint64_t sub_1CF03A134()
{

  sub_1CF03A198();

  sub_1CF03A198();
}

void sub_1CF03A198()
{
  if (*(v0 + 161) == 1 && *(v0 + 112) == 1)
  {
    *(v0 + 161) = 0;
    if (qword_1EDEAC3C8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDEBBA88;

    [v1 removeWatcher_];
  }
}

void sub_1CF03A224()
{
  v1 = v0;
  v2 = sub_1CF9E6118();
  v104 = *(v2 - 8);
  v105 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v100 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v100 - v9;
  v11 = sub_1CF9E6068();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v100 - v19;
  v21 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v21);
  if ((*(v1 + qword_1EDEBBCF0) & 1) == 0)
  {
    v100[1] = v10;
    v102 = v7;
    v103 = v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v101 = v4;
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v23 = qword_1EDEBBE40;
    (*(v12 + 56))(v20, 1, 1, v11);
    sub_1CEFCCBDC(v20, v17, &unk_1EC4BED20, &unk_1CFA00700);
    v24 = *(v12 + 48);
    if (v24(v17, 1, v11) == 1)
    {
      v25 = v23;
      sub_1CF9E6048();
      if (v24(v17, 1, v11) != 1)
      {
        sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v12 + 32))(v14, v17, v11);
    }

    v26 = v103;
    (*(v12 + 16))(v103, v14, v11);
    *(v26 + *(v21 + 20)) = v23;
    v27 = v26 + *(v21 + 24);
    *v27 = "DB queue";
    *(v27 + 8) = 8;
    *(v27 + 16) = 2;
    v28 = v23;
    v29 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1CF9FA450;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1CEFD51C4();
    *(v30 + 32) = 0x73756C6620646964;
    *(v30 + 40) = 0xE900000000000068;
    v98 = v30;
    v97 = 2;
    v100[2] = v28;
    sub_1CF9E6028(v29, &dword_1CEFC7000, v28, "DB queue", 8, 2, v26, "%s", 2);
    v30, v31, v32, v33, v34, v35, v36, v37;
    (*(v12 + 8))(v14, v11);
    v38 = sub_1CEFCCC44(v20, &unk_1EC4BED20, &unk_1CFA00700);
    if ((*(v1 + 82) & 0x20) != 0)
    {
      v40 = v104;
      v39 = v105;
      v41 = v102;
      if (*(v1 + qword_1EC4EBD88) == 1)
      {
        *(v1 + qword_1EC4EBD88) = 0;
        sub_1CF3BCB4C(v38);
      }
    }

    else
    {
      v40 = v104;
      v39 = v105;
      v41 = v102;
    }

    if (*(*(*(*(v1 + 32) + 16) + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentSource))
    {
      ObjectType = swift_getObjectType();

      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);

      swift_unknownObjectRelease();
    }

    sub_1CF3BCCF0();
    v43 = qword_1EDEBBC30;
    swift_beginAccess();
    v44 = *(v1 + v43);
    v45 = __CFADD__(v44, 1);
    v46 = v44 + 1;
    if (v45)
    {
      __break(1u);
    }

    else
    {
      *(v1 + v43) = v46;
      v47 = [objc_allocWithZone(FPLoggerScope) init];
      v48 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v49 = v47;
      v50 = sub_1CF9E6108();
      v51 = sub_1CF9E7298();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138412290;
        v54 = [v49 enter];
        *(v52 + 4) = v54;
        *v53 = v54;
        _os_log_impl(&dword_1CEFC7000, v50, v51, "%@ db was flushed (commit)", v52, 0xCu);
        sub_1CEFCCC44(v53, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v53, -1, -1);
        MEMORY[0x1D386CDC0](v52, -1, -1);
      }

      v55 = *(v40 + 8);
      v55(v41, v39);
      v56 = qword_1EDEAE678;
      if (*(v1 + qword_1EDEAE678))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1CF9E7418();
        swift_unknownObjectRelease();
      }

      *(v1 + v56) = 0;
      swift_unknownObjectRelease();
      v57 = qword_1EC4BFAF0;
      swift_beginAccess();
      v58 = *(v1 + v57);
      v59 = MEMORY[0x1E69E7CC0];
      *(v1 + v57) = MEMORY[0x1E69E7CC0];
      v60 = *(v1 + 160);
      *(v60 + 32) = 0;
      *(v60 + 40) = 0;
      *(v60 + 48) = 0;
      v61 = v1 + qword_1EDEBBC20;
      os_unfair_lock_lock((v1 + qword_1EDEBBC20));
      v62 = sub_1CF4E0DEC(v59);
      v63 = *(v61 + 104);
      *(v61 + 104) = v62;
      v63, v64, v65, v66, v67, v68, v69, v70;
      os_unfair_lock_unlock(v61);
      if (*(v60 + 16) > 0 || (v71 = qword_1EDEBBD00, v72 = swift_beginAccess(), *(*(v1 + v71) + 16)))
      {
        *(v60 + 16) = 0;
        sub_1CF3C6498(sub_1CF47FD28, v1);
      }

      if (*v58->tree)
      {
        MEMORY[0x1EEE9AC00](v72);
        v98 = v58;
        v99 = v1;
        sub_1CF3C6498(sub_1CF47FD44, &v96);
        v58, v89, v90, v91, v92, v93, v94, v95;
      }

      else
      {
        v58, v73, v74, v75, v76, v77, v78, v79;
      }

      v80 = fpfs_current_or_default_log();
      v81 = v101;
      sub_1CF9E6128();
      v82 = v49;
      v83 = sub_1CF9E6108();
      v84 = sub_1CF9E7298();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *v85 = 138412290;
        v87 = [v82 leave];
        *(v85 + 4) = v87;
        *v86 = v87;
        _os_log_impl(&dword_1CEFC7000, v83, v84, "%@", v85, 0xCu);
        sub_1CEFCCC44(v86, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v86, -1, -1);
        MEMORY[0x1D386CDC0](v85, -1, -1);
      }

      v55(v81, v39);
      sub_1CF9E7458();
      v88 = v103;
      sub_1CF9E6038();
      sub_1CEFD5278(v88, type metadata accessor for Signpost);
    }
  }
}

unint64_t sub_1CF03AD00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BD8, &qword_1CFA07A80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BE0, &qword_1CFA07A88);
    v7 = sub_1CF9E7BE8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1CEFCCBDC(v9, v5, &qword_1EC4C0BD8, &qword_1CFA07A80);
      v11 = *v5;
      result = sub_1CF7BF4F4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for SyncState(0);
      result = sub_1CF04DC10(&v5[v8], v15 + *(*(v16 - 8) + 72) * v14);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF03AED0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BF8, &unk_1CFA07AA0);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      v9 = v5;
      v10 = v6;
      v11 = v8;
      result = sub_1CEFE863C(v9);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v9;
      v14 = (v3[7] + 24 * result);
      *v14 = v10;
      v14[1] = v8;
      v14[2] = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1CF03B104(void (*a1)(uint64_t *__return_ptr, void *), uint64_t (*a2)(__n128), uint64_t a3, uint64_t (*a4)(__n128))
{
  v8 = objc_sync_enter(v4);
  if (v8)
  {
    MEMORY[0x1EEE9AC00](v8);
    v12 = v4;
    fp_preconditionFailure(_:file:line:)(a2, v11, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  a1(&v13, v4);
  v9 = objc_sync_exit(v4);
  if (v9)
  {
    MEMORY[0x1EEE9AC00](v9);
    v12 = v4;
    fp_preconditionFailure(_:file:line:)(a4, v11, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v13;
}

void sub_1CF03B248(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = a1[2];
  v7 = type metadata accessor for JobLockRule(0, *(v4 + 80), *(v4 + 88), v6);

  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x1D3868960](v5, v7, &type metadata for JobLockRuleAssociatedJobs, WitnessTable);
  v5, v10, v11, v12, v13, v14, v15, v16;
  if (v9)
  {
    swift_beginAccess();
    v17 = a1[4];
    sub_1CF9E6E58();

    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v19 = MEMORY[0x1D3868960](v17, MEMORY[0x1E69E6158], TupleTypeMetadata2, MEMORY[0x1E69E6168]);
    v17, v20, v21, v22, v23, v24, v25, v26;
  }

  else
  {
    v19 = 0;
  }

  *a2 = v19 & 1;
}

BOOL sub_1CF03B3A8(uint64_t (*a1)(__n128), uint64_t (*a2)(__n128))
{
  v5 = objc_sync_enter(v2);
  if (v5)
  {
    MEMORY[0x1EEE9AC00](v5);
    v10 = v2;
    fp_preconditionFailure(_:file:line:)(a1, v9, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  swift_beginAccess();
  if (*(v2[2] + 16))
  {
    v6 = 0;
  }

  else
  {
    swift_beginAccess();
    v6 = *(v2[4] + 16) == 0;
  }

  v7 = objc_sync_exit(v2);
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v7);
    v10 = v2;
    fp_preconditionFailure(_:file:line:)(a2, v9, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v6;
}

void sub_1CF03B4D0()
{
  v1 = sub_1CF9E6068();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() defaultStore];
  if (*(v0 + qword_1EDEBBE38) == 1)
  {
  }

  else
  {
    v34 = v14;
    if ((sub_1CF03B9D0() & 1) != 0 || (v15 = qword_1EC4BFAF0, swift_beginAccess(), v16 = *(*(v0 + v15) + 16), v16 >= [v34 sqlDatabaseOnNextDurableFlushTriggerThreshold]))
    {
      v33 = v0;
      if (qword_1EDEAE980 != -1)
      {
        swift_once();
      }

      v17 = qword_1EDEBBE40;
      (*(v2 + 56))(v10, 1, 1, v1);
      sub_1CEFCCBDC(v10, v7, &unk_1EC4BED20, &unk_1CFA00700);
      v18 = *(v2 + 48);
      if (v18(v7, 1, v1) == 1)
      {
        v19 = v17;
        sub_1CF9E6048();
        if (v18(v7, 1, v1) != 1)
        {
          sub_1CEFCCC44(v7, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        (*(v2 + 32))(v4, v7, v1);
      }

      v32 = 0x80000001CFA45480;
      (*(v2 + 16))(v13, v4, v1);
      *&v13[*(v11 + 20)] = v17;
      v20 = &v13[*(v11 + 24)];
      *v20 = "SQLDB: Force flush of database";
      *(v20 + 1) = 30;
      v20[16] = 2;
      v21 = v17;
      v22 = sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1CF9FA450;
      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = sub_1CEFD51C4();
      *(v23 + 32) = 0xD00000000000001CLL;
      *(v23 + 40) = v32;
      sub_1CF9E6028(v22, &dword_1CEFC7000, v21, "SQLDB: Force flush of database", 30, 2, v13, "%s", 2);
      v23, v24, v25, v26, v27, v28, v29, v30;
      (*(v2 + 8))(v4, v1);
      sub_1CEFCCC44(v10, &unk_1EC4BED20, &unk_1CFA00700);
      v31 = *(v33 + qword_1EDEBBDB0);
      [v31 forceBatchStart];
      [v31 flush];
      sub_1CF9E7458();
      sub_1CF9E6038();

      sub_1CEFD5278(v13, type metadata accessor for Signpost);
    }

    else
    {
    }
  }
}

uint64_t sub_1CF03B9D0()
{
  v1 = *(v0 + 24);
  if (v1 < 1)
  {
    if (*(v0 + 16) < 1)
    {
      return 0;
    }

    else
    {
      return *(v0 + 50);
    }
  }

  else
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    v4 = __OFADD__(v2, v3);
    v5 = v2 + v3;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      return v5 >= v1;
    }
  }

  return result;
}

uint64_t sub_1CF03BA44()
{
  if (fp_task_tracker_is_cancelled(*(*(v0 + 168) + 16)))
  {
    return 1;
  }

  else
  {
    return *(v0 + 152);
  }
}

uint64_t sub_1CF03BA78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1CF03BB04()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v5 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v4, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF03BC50(v0, &v6);
  v2 = objc_sync_exit(v0);
  if (v2)
  {
    MEMORY[0x1EEE9AC00](v2);
    v5 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v4, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v6;
}

void sub_1CF03BC50(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = a1[24];

  v6 = *(v4 + 632);
  v15[0] = *(v4 + 616);
  v15[1] = v6;
  v7 = type metadata accessor for FSOrFPJob(0, v15);
  LOBYTE(v4) = MEMORY[0x1D3868960](v5, MEMORY[0x1E69E6158], v7, MEMORY[0x1E69E6168]);
  v5, v8, v9, v10, v11, v12, v13, v14;
  *a2 = (v4 & 1) == 0;
}

void sub_1CF03BDD4(uint64_t a1)
{
  v79 = sub_1CF9E53C8();
  v1 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1CF9E6118();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v73 = v6;
    v74 = v4;
    v75 = v3;
    ObjectType = Strong + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentPendingCollection;
    os_unfair_lock_lock((Strong + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentPendingCollection));
    v10 = *(ObjectType + 8);
    *(ObjectType + 8) = MEMORY[0x1E69E7CC0];
    os_unfair_lock_unlock(ObjectType);
    v11 = *v10->tree;
    if (v11)
    {
      v12 = 0;
      v13 = OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy;
      v14 = OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource;
      v15 = OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
      v80 = 9939394;
      v76 = (v1 + 8);
      v77 = OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource;
      while (v12 < *v10->tree)
      {
        v17 = *(&v10[1].super.isa + v12);
        swift_beginAccess();
        LODWORD(ObjectType) = fpfs_wharf_delete_wharfed_item(v8 + v15, 0, v17);
        v18 = swift_endAccess();
        if ((ObjectType & 0x80000000) != 0)
        {
          if (!MEMORY[0x1D38683F0](v18))
          {
            goto LABEL_19;
          }

          if (MEMORY[0x1D38683F0]() == v80)
          {
            v16 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
            LODWORD(ObjectType) = v16;
            swift_willThrow();
          }

          else
          {
            v19 = v13;
            MEMORY[0x1D38683F0]();
            v20 = sub_1CF9E6138();
            if ((v20 & 0x100000000) != 0)
            {
              LODWORD(v82) = 22;
            }

            else
            {
              LODWORD(v82) = v20;
            }

            sub_1CF00BDB8(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
            v21 = v78;
            ObjectType = v79;
            sub_1CF9E57D8();
            v22 = sub_1CF9E53A8();
            (*v76)(v21, ObjectType);
            LODWORD(ObjectType) = v22;
            swift_willThrow();

            v13 = v19;
            v14 = v77;
          }
        }

        else
        {
          *(v8 + v13) = 0;
          if (*(v8 + v14))
          {
            ObjectType = swift_getObjectType();
            swift_unknownObjectRetain();
            MEMORY[0x1D3869790](1, ObjectType);
            swift_unknownObjectRelease();
          }
        }

        if (v11 == ++v12)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_19:
      v82 = 0;
      v83 = 0xE000000000000000;
      sub_1CF9E7948();
      v83, v30, v31, v32, v33, v34, v35, v36;
      v82 = 0xD00000000000001ALL;
      v83 = 0x80000001CFA2DF30;
      v81 = ObjectType;
      v37 = sub_1CF9E7F98();
      v39 = v38;
      MEMORY[0x1D3868CC0](v37);
      v39, v40, v41, v42, v43, v44, v45, v46;
      MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
      v47 = v82;
      v48 = v83;
      v49 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v50 = sub_1CF9E6108();
      v51 = sub_1CF9E72B8();
      v48, v52, v53, v54, v55, v56, v57, v58;
      if (os_log_type_enabled(v50, v51))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v82 = v60;
        *v59 = 136315650;
        v61 = sub_1CF9E7988();
        v63 = v62;
        v64 = sub_1CEFD0DF0(v61, v62, &v82);
        v63, v65, v66, v67, v68, v69, v70, v71;
        *(v59 + 4) = v64;
        *(v59 + 12) = 2048;
        *(v59 + 14) = 315;
        *(v59 + 22) = 2080;
        *(v59 + 24) = sub_1CEFD0DF0(v47, v48, &v82);
        _os_log_impl(&dword_1CEFC7000, v50, v51, "[ASSERT] ‼️  %s:%lu: %s", v59, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v60, -1, -1);
        MEMORY[0x1D386CDC0](v59, -1, -1);
      }

      (*(v74 + 8))(v73, v75);
      sub_1CF9E7B68();
      __break(1u);
    }

    else
    {
LABEL_16:

      v10, v23, v24, v25, v26, v27, v28, v29;
    }
  }
}

uint64_t sub_1CF03C368()
{
  v13 = (*(*v0 + 176))();
  v1 = MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  v2 = (*(*v0 + 456))(v1);
  v4 = v3;
  MEMORY[0x1D3868CC0](v2);
  v4, v5, v6, v7, v8, v9, v10, v11;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return v13;
}

uint64_t sub_1CF03C458()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7FE8();
  return 0;
}

id sub_1CF03C530(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3 >= 2u)
    {
      return result;
    }
  }

  if (a3 == 2)
  {
  }

  if (a3 == 3)
  {
    return result;
  }

  return result;
}

uint64_t sub_1CF03C578(uint64_t a1, uint64_t (*a2)(void))
{
  type metadata accessor for FPFileTree(0);
  v3 = swift_dynamicCastClassUnconditional();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v3 + 24);

    sub_1CF03C63C(v4, v5);
    v4(&unk_1F4BEF3A0, MEMORY[0x1E69E7CC0], 0, 0);

    sub_1CEFF7124(v4, v5);
  }

  return a2(0);
}

uint64_t sub_1CF03C63C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_1CF03C64C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v166 = a2;
  v169 = a1;
  v7 = sub_1CF9E63D8();
  v153 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v165 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v168 = &v146 - v13;
  v163 = sub_1CF9E6068();
  v14 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v159 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v167 = &v146 - v20;
  v158 = type metadata accessor for Signpost(0);
  v160 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v164 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v162 = &v146 - v23;
  v161 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v146 - v26;
  v175 = sub_1CF9E6118();
  v171 = *(v175 - 1);
  MEMORY[0x1EEE9AC00](v175);
  v176 = (&v146 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v157 = &v146 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v146 - v32;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    v154 = a3;
    v36 = *(Strong + 80);
    v152 = v18;
    v156 = v27;
    v155 = Strong;
    v151 = v7;
    v150 = v9;
    if ((v36 & 0x40) != 0)
    {
      v148 = a4;
      v149 = v14;
      v37 = [objc_allocWithZone(FPLoggerScope) init];
      v38 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v39 = v37;
      v40 = sub_1CF9E6108();
      v41 = sub_1CF9E7298();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        v44 = [v39 enter];
        *(v42 + 4) = v44;
        *v43 = v44;
        _os_log_impl(&dword_1CEFC7000, v40, v41, "%@ 👁  aggregate incoming FP tree changes", v42, 0xCu);
        sub_1CEFCCC44(v43, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v43, -1, -1);
        MEMORY[0x1D386CDC0](v42, -1, -1);
      }

      v147 = v39;

      v45 = v171 + 8;
      v174 = *(v171 + 8);
      (v174)(v33, v175);
      v47 = *(v169 + 16);
      v48 = v176;
      if (v47)
      {
        v49 = (v169 + 56);
        *&v46 = 136315138;
        v170 = v46;
        v171 = v45;
        do
        {
          v64 = *(v49 - 3);
          v65 = *(v49 - 2);
          v66 = *(v49 - 1);
          v67 = *v49;
          sub_1CF796430(v64, v65, v66, *v49);
          v68 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          sub_1CF796430(v64, v65, v66, v67);
          v69 = sub_1CF9E6108();
          v70 = sub_1CF9E7298();
          v176 = v69;
          if (os_log_type_enabled(v69, v70))
          {
            v50 = swift_slowAlloc();
            v173 = swift_slowAlloc();
            *&aBlock = v173;
            *v50 = v170;
            v172 = sub_1CF771D28(v64, v65, v66, v67);
            v52 = v51;
            sub_1CF7964BC(v64, v65, v66, v67);
            sub_1CF7964BC(v64, v65, v66, v67);
            v53 = sub_1CEFD0DF0(v172, v52, &aBlock);
            v52, v54, v55, v56, v57, v58, v59, v60;
            *(v50 + 4) = v53;
            v61 = v70;
            v62 = v176;
            _os_log_impl(&dword_1CEFC7000, v176, v61, "%s", v50, 0xCu);
            v63 = v173;
            __swift_destroy_boxed_opaque_existential_1(v173);
            MEMORY[0x1D386CDC0](v63, -1, -1);
            MEMORY[0x1D386CDC0](v50, -1, -1);
          }

          else
          {
            sub_1CF7964BC(v64, v65, v66, v67);
            sub_1CF7964BC(v64, v65, v66, v67);
          }

          (v174)(v48, v175);
          v49 += 32;
          --v47;
        }

        while (v47);
      }

      v72 = fpfs_current_or_default_log();
      v73 = v157;
      sub_1CF9E6128();
      v74 = v147;
      v75 = sub_1CF9E6108();
      v76 = sub_1CF9E7298();

      v77 = os_log_type_enabled(v75, v76);
      v14 = v149;
      if (v77)
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *v78 = 138412290;
        v80 = [v74 leave];
        *(v78 + 4) = v80;
        *v79 = v80;
        _os_log_impl(&dword_1CEFC7000, v75, v76, "%@", v78, 0xCu);
        sub_1CEFCCC44(v79, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v79, -1, -1);
        MEMORY[0x1D386CDC0](v78, -1, -1);
      }

      (v174)(v73, v175);
      v27 = v156;
      v35 = v155;
      a4 = v148;
    }

    v81 = (v35 + qword_1EDEBBC28);
    os_unfair_lock_lock((v35 + qword_1EDEBBC28));
    sub_1CF066960(v169, v166, v154, a4);
    os_unfair_lock_unlock(v81);
    if ((*(v35 + 80) & 0x40) == 0)
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);

      swift_unknownObjectRelease();
      return;
    }

    v176 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v83 = qword_1EDEBBE40;
    v84 = *(v14 + 56);
    v85 = v167;
    v86 = v14;
    v87 = v163;
    v84(v167, 1, 1, v163);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v88 = sub_1CF9E7988();
    v90 = v89;
    MEMORY[0x1D3868CC0](v88);
    v90, v91, v92, v93, v94, v95, v96, v97;
    v174 = *(&aBlock + 1);
    v175 = aBlock;
    v98 = v152;
    sub_1CEFCCBDC(v85, v152, &unk_1EC4BED20, &unk_1CFA00700);
    v99 = *(v86 + 48);
    if (v99(v98, 1, v87) == 1)
    {
      v100 = v86;
      v101 = v83;
      v102 = v159;
      sub_1CF9E6048();
      if (v99(v98, 1, v87) != 1)
      {
        sub_1CEFCCC44(v98, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v100 = v86;
      v102 = v159;
      (*(v86 + 32))(v159, v98, v87);
    }

    (*(v100 + 16))(v27, v102, v87);
    v103 = v158;
    *&v27[*(v158 + 20)] = v83;
    v104 = &v27[*(v103 + 24)];
    *v104 = "DB queue wait";
    *(v104 + 1) = 13;
    v104[16] = 2;
    v105 = v83;
    v106 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v107 = v102;
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_1CF9FA450;
    *(v108 + 56) = MEMORY[0x1E69E6158];
    *(v108 + 64) = sub_1CEFD51C4();
    v109 = v174;
    *(v108 + 32) = v175;
    *(v108 + 40) = v109;
    sub_1CF9E6028(v106, &dword_1CEFC7000, v105, "DB queue wait", 13, 2, v27, "%s", 2);
    v108, v110, v111, v112, v113, v114, v115, v116;
    (*(v100 + 8))(v107, v87);
    sub_1CEFCCC44(v167, &unk_1EC4BED20, &unk_1CFA00700);
    v173 = *(v35 + 168);
    v175 = *(v35 + 64);
    v117 = sub_1CF9E6448();
    v171 = *(v117 - 8);
    v172 = v117;
    (*(v171 + 56))(v168, 1, 1, v117);
    v118 = v162;
    sub_1CEFE505C(v27, v162, type metadata accessor for Signpost);
    v119 = (*(v160 + 80) + 16) & ~*(v160 + 80);
    v120 = (v161 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
    v121 = swift_allocObject();
    *&v170 = type metadata accessor for Signpost;
    sub_1CEFE4E00(v118, v121 + v119, type metadata accessor for Signpost);
    v122 = (v121 + v120);
    v174 = nullsub_1;
    *v122 = nullsub_1;
    v122[1] = 0;
    v123 = v164;
    sub_1CEFE505C(v27, v164, type metadata accessor for Signpost);
    v124 = (v120 + 23) & 0xFFFFFFFFFFFFFFF8;
    v125 = (v124 + 15) & 0xFFFFFFFFFFFFFFF8;
    v126 = (v125 + 25) & 0xFFFFFFFFFFFFFFF8;
    v127 = swift_allocObject();
    sub_1CEFE4E00(v123, v127 + v119, v170);
    v128 = (v127 + v120);
    *v128 = sub_1CF045408;
    v128[1] = 0;
    *(v127 + v124) = v35;
    v129 = v127 + v125;
    v130 = v171;
    *v129 = "processPendingStreamResetOrIdle()";
    *(v129 + 8) = 33;
    *(v129 + 16) = 2;
    v131 = (v127 + v126);
    *v131 = v174;
    v131[1] = 0;
    v132 = (v127 + ((v126 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v132 = sub_1CF796414;
    v132[1] = v35;
    v133 = swift_allocObject();
    v133[2] = sub_1CF75C120;
    v133[3] = v121;
    v134 = v173;
    v133[4] = v173;
    swift_retain_n();
    v174 = v121;
    v135 = v172;

    v136 = fpfs_current_log();
    v137 = v134[2];
    v138 = v165;
    sub_1CEFCCBDC(v168, v165, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v130 + 48))(v138, 1, v135) == 1)
    {
      sub_1CEFCCC44(v138, &unk_1EC4BE370, qword_1CFA01B30);
      v139 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v140 = v150;
      sub_1CF9E6438();
      (*(v130 + 8))(v138, v135);
      v139 = sub_1CF9E63C8();
      (*(v153 + 8))(v140, v151);
    }

    v141 = swift_allocObject();
    v141[2] = v136;
    v141[3] = sub_1CF4858EC;
    v141[4] = v127;
    v180 = sub_1CF2BA17C;
    v181 = v141;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v178 = sub_1CEFCA444;
    v179 = &block_descriptor_735;
    v142 = _Block_copy(&aBlock);
    v143 = v136;

    v180 = sub_1CF2BA180;
    v181 = v133;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v178 = sub_1CEFCA444;
    v179 = &block_descriptor_738;
    v144 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v137, v175, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v139, v142, v144);
    _Block_release(v144);
    _Block_release(v142);

    sub_1CEFCCC44(v168, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CF007CB8(v156, type metadata accessor for Signpost);
    v145 = v176;
    v71 = fpfs_adopt_log();
  }

  else
  {
    if (!a3)
    {
      return;
    }

    v71 = FPDomainUnavailableError();
    a3();
  }
}

void sub_1CF03D7A8(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3 >= 2u)
    {
      return;
    }

LABEL_7:

    return;
  }

  if (a3 == 2)
  {
    goto LABEL_7;
  }

  if (a3 == 3)
  {
  }
}

void *sub_1CF03D7E8()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = off_1EDEADD38;
  if (*(off_1EDEADD38 + 2) && (v1 = sub_1CEFE4328(0xD000000000000012, 0x80000001CFA2EC60), (v2 & 1) != 0))
  {
    sub_1CEFD1104(v0[7] + 32 * v1, v5);
    sub_1CEFE9EB8(v5, &v7);
    swift_endAccess();
    sub_1CEFE9EB8(&v7, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE170, qword_1CFA03A20);
    swift_dynamicCast();
    v3 = v6;
  }

  else
  {
    swift_endAccess();
    v3 = &unk_1F4BEB150;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE170, qword_1CFA03A20);
    *&v7 = &unk_1F4BEB150;
    swift_beginAccess();
    sub_1CF1C8750(&v7, 0xD000000000000012, 0x80000001CFA2EC60);
    swift_endAccess();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v3;
}

uint64_t sub_1CF03D9EC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 16))
  {
    v5 = v4;
    v6 = a4;
    v9 = (a1 + 32);
    if (a2 | a3)
    {
      v10 = 4;
    }

    else
    {
      v10 = 5;
    }

    v51 = a4;
    v52 = v10;
    v11 = *(a1 + 16);
    while (1)
    {
      if (v6 == 0xFF)
      {
        goto LABEL_6;
      }

      if (!*v9)
      {
        v13 = v52;
        if (v6 == 3)
        {
          v13 = 3;
        }

        if (v6 == 2)
        {
          v13 = 2;
        }

        v14 = v51;
        if (v6)
        {
          v14 = 1;
        }

        if (v6 <= 1u)
        {
          v15 = v14;
        }

        else
        {
          v15 = v13;
        }

        v12 = [v5 bindLongParameter_];
        goto LABEL_7;
      }

      if (*v9 != 1)
      {
        break;
      }

      if (v6)
      {
        v12 = [v5 bindLongParameter_];
        goto LABEL_7;
      }

      v54 = MEMORY[0x1E69E6530];
      v53[0] = a2;
      sub_1CEFF8EA0(v53);
      v27 = v26;
      sub_1CEFCCC44(v53, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      if (!v27)
      {
        result = sub_1CF9E7B68();
        __break(1u);
        return result;
      }

      v27, v28, v29, v30, v31, v32, v33, v34;
LABEL_8:
      ++v9;
      if (!--v11)
      {
        goto LABEL_35;
      }
    }

    if (v6)
    {
      if (v6 == 1 || v6 == 2)
      {
        v16 = a2;
        if (a2)
        {
LABEL_28:
          v55 = v16;
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
          v53[0] = v16;
          sub_1CF03C530(a2, a3, v6);
          sub_1CF03C530(a2, a3, v6);
          sub_1CF03C530(a2, a3, v6);
          sub_1CEFF8EA0(v53);
          v18 = v17;
          sub_1CEFCCC44(v53, &unk_1EC4BEC50, &qword_1CF9FB4B0);
          if (v18)
          {
            v18, v19, v20, v21, v22, v23, v24, v25;
            sub_1CF201778(a2, a3, v6);
            sub_1CF201778(a2, a3, v6);
          }

          else
          {
            sub_1CF9E56C8();
            swift_allocObject();
            sub_1CF9E56B8();
            sub_1CF9E5698();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE508, &qword_1CF9FDDC0);
            sub_1CF1E0FC0();
            v35 = sub_1CF9E56A8();
            v50 = v36;
            v37 = v35;
            sub_1CF04E5D8(v35, v36);
            v39 = v38;
            sub_1CF201778(a2, a3, v6);
            sub_1CF201778(a2, a3, v6);

            sub_1CEFE4714(v37, v50);
            v39, v40, v41, v42, v43, v44, v45, v46;
          }

          goto LABEL_8;
        }
      }
    }

    else
    {
      v16 = a3;
      if (a3)
      {
        goto LABEL_28;
      }
    }

LABEL_6:
    v12 = [v5 bindObjectParameter_];
LABEL_7:

    goto LABEL_8;
  }

LABEL_35:
  result = sub_1CF9E6B18();
  v53[0] = result;
  v53[1] = v48;
  v49 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v49 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v49)
  {
    sub_1CF03DE28(2);
    return v53[0];
  }

  return result;
}

uint64_t sub_1CF03DE28(uint64_t result)
{
  if (result)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v2 = v1[1];
      if ((v2 & 0x2000000000000000) != 0)
      {
        v3 = HIBYTE(v2) & 0xF;
      }

      else
      {
        v3 = *v1 & 0xFFFFFFFFFFFFLL;
      }

      v4 = sub_1CF9E6A08();
      if (v5)
      {
        goto LABEL_14;
      }

      if (4 * v3 >= v4 >> 14)
      {

        return MEMORY[0x1EEE68E00]();
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x1EEE68E00]();
  }

  return result;
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void OUTLINED_FUNCTION_1_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_15(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_1_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_1_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

uint64_t OUTLINED_FUNCTION_1_8(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = result;
  return result;
}

void OUTLINED_FUNCTION_1_10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

unint64_t sub_1CF03E084()
{
  result = qword_1EDEA8558;
  if (!qword_1EDEA8558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8558);
  }

  return result;
}

uint64_t sub_1CF03E0D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1BE0, &unk_1CF9FD400);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF03E148(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v30 = a7;
  v31 = a8;
  v28 = a5;
  v29 = a6;
  v32 = a4;
  v14 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v27 - v17;
  v33 = a9;
  v34 = a10;
  v35 = a11;
  v36 = a12;
  type metadata accessor for Job(0, &v33);
  sub_1CF05194C(v14);
  v33 = a9;
  v34 = a10;
  v35 = a11;
  v36 = a12;
  type metadata accessor for ItemJob(0, &v33);
  v19 = swift_dynamicCastMetatype();
  if (v19)
  {
    v20 = v19;
    (*(v16 + 16))(v18, v28, AssociatedTypeWitness);
    v21 = (*(v20 + 592))(v18, v29, v30, v31);
    v22 = *(v21 + 96);
    v23 = *(v21 + 104);
    *(v21 + 96) = a2;
    *(v21 + 104) = a3;
    v24 = *(v21 + 112);
    v25 = v32;
    *(v21 + 112) = v32;

    sub_1CF03C530(a2, a3, v25);
    sub_1CF03D7A8(v22, v23, v24);

    return v21;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF03E368(uint64_t a1)
{
  v2 = v1;
  sub_1CF0451E0(a1, v21);
  if (!v22)
  {
    return sub_1CEFCCC44(v21, &unk_1EC4C1BE0, &unk_1CF9FD400);
  }

  __swift_project_boxed_opaque_existential_1(v21, v22);
  v4 = sub_1CF9E7F98();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(v21);
  result = objc_sync_enter(v2);
  if (result)
  {
    goto LABEL_10;
  }

  sub_1CF056468(v2, v4, v6, a1);
  v8 = objc_sync_exit(v2);
  if (v8)
  {
    MEMORY[0x1EEE9AC00](v8);
    v20 = v2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v19, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v6, v9, v10, v11, v12, v13, v14, v15;
  result = sub_1CF0452A4(a1);
  if ((result & 0x8000) != 0)
  {
    v16 = *&v2[qword_1EDEADA98];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (!v17)
    {
      *&v2[qword_1EDEADA98] = v18;
      return result;
    }

    __break(1u);
LABEL_10:
    MEMORY[0x1EEE9AC00](result);
    v20 = v2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v19, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  return result;
}

id sub_1CF03E5D8@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>, uint64_t a3@<X3>)
{
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  type metadata accessor for JobLockAggregator(0, v4, v5, a3);
  swift_beginAccess();
  *&v28 = *(a1 + 16);
  type metadata accessor for JobLockRule(255, v4, v5, v6);
  swift_getWitnessTable();
  v7 = sub_1CF9E6708();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1D3868E50](&v26, v7, WitnessTable);
  v29 = v26;
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  sub_1CF9E7978();
  swift_getWitnessTable();
  sub_1CF9E7C48();

  v26 = v24;
  v27 = v25;
  swift_getKeyPath();
  sub_1CF9E7B98();
  swift_getWitnessTable();
  sub_1CF9E7C38();

  v24, v10, v11, v12, v13, v14, v15, v16;

  swift_getWitnessTable();
  sub_1CF9E7AC8();
  swift_getWitnessTable();
  v17 = sub_1CF9E6E88();
  swift_beginAccess();
  nullsub_1();
  sub_1CF9E6688();

  swift_getWitnessTable();
  v18 = sub_1CF9E6E88();
  v19 = swift_allocObject();
  v21 = sub_1CF056D94(v17, v18, v19, v20);
  result = [*(a1 + 40) addObject_];
  *a2 = v21;
  return result;
}

uint64_t sub_1CF03E990(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D3869250](v2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1CF6E9C40(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void sub_1CF03EA08(void *a1, void (*a2)(id *, void), void *a3)
{
  v4 = v3;
  v59 = a1;
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E63D8();
  v56 = *(v11 - 8);
  v57 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v50 - v18;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    if ([Strong invalidated])
    {
      v22 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v23 = sub_1CF9E6108();
      v24 = sub_1CF9E72A8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1CEFC7000, v23, v24, "Tried to fetch event stream on an invalidated domain.", v25, 2u);
        MEMORY[0x1D386CDC0](v25, -1, -1);
      }

      (*(v8 + 8))(v10, v7);
      v26 = FPDomainUnavailableError();
      if (v26)
      {
        v27 = v26;
        aBlock = v26;
        v61 = 0;
        v62 = 0;
        v63 = 0;
        LOBYTE(v64) = 1;
        a2(&aBlock, MEMORY[0x1E69E7CC0]);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v29 = [v21 indexer];
      v58 = v19;
      v51 = v13;
      if (v29)
      {
        v30 = v29;
        v31 = [v29 needsAuthentication];
      }

      else
      {
        v31 = 0;
      }

      v32 = swift_allocObject();
      *(v32 + 16) = v21;
      *(v32 + 24) = v31;
      *(v32 + 32) = a2;
      *(v32 + 40) = a3;
      v33 = *(v4 + 168);
      v55 = *(v4 + 160);
      v34 = sub_1CF9E6448();
      v52 = a3;
      v35 = v34;
      v36 = *(v34 - 8);
      (*(v36 + 56))(v58, 1, 1, v34);
      v37 = swift_allocObject();
      *(v37 + 16) = sub_1CF042FD0;
      *(v37 + 24) = v32;
      v38 = swift_allocObject();
      v38[2] = v4;
      v38[3] = sub_1CF042FD0;
      v38[4] = v32;
      v38[5] = v21;
      v39 = v59;
      v38[6] = v59;
      v40 = swift_allocObject();
      v40[2] = sub_1CF2F42E0;
      v40[3] = v37;
      v54 = v40;
      v40[4] = v33;
      v41 = v39;
      v59 = v37;

      v42 = v21;
      swift_retain_n();
      v53 = v42;

      v43 = fpfs_current_log();
      v52 = *(v33 + 16);
      sub_1CEFCCBDC(v58, v16, &unk_1EC4BE370, qword_1CFA01B30);
      if ((*(v36 + 48))(v16, 1, v35) == 1)
      {
        sub_1CEFCCC44(v16, &unk_1EC4BE370, qword_1CFA01B30);
        v44 = QOS_CLASS_UNSPECIFIED;
      }

      else
      {
        v45 = v51;
        sub_1CF9E6438();
        (*(v36 + 8))(v16, v35);
        v44 = sub_1CF9E63C8();
        (*(v56 + 8))(v45, v57);
      }

      v46 = swift_allocObject();
      v46[2] = v43;
      v46[3] = sub_1CF089400;
      v46[4] = v38;
      v64 = sub_1CF2BA17C;
      v65 = v46;
      aBlock = MEMORY[0x1E69E9820];
      v61 = 1107296256;
      v62 = sub_1CEFCA444;
      v63 = &block_descriptor_132;
      v47 = _Block_copy(&aBlock);
      v48 = v43;

      v64 = sub_1CF2F432C;
      v65 = v54;
      aBlock = MEMORY[0x1E69E9820];
      v61 = 1107296256;
      v62 = sub_1CEFCA444;
      v63 = &block_descriptor_135;
      v49 = _Block_copy(&aBlock);

      fp_task_tracker_async_and_qos(v52, v55, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v44, v47, v49);
      _Block_release(v49);
      _Block_release(v47);

      sub_1CEFCCC44(v58, &unk_1EC4BE370, qword_1CFA01B30);
    }
  }

  else
  {
    sub_1CF2CA194();
    v28 = swift_allocError();
    aBlock = v28;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    LOBYTE(v64) = 1;
    a2(&aBlock, MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_1CF03F130()
{

  return swift_deallocObject();
}

uint64_t sub_1CF03F170()
{

  return swift_deallocObject();
}