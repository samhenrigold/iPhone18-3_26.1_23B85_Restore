uint64_t sub_1D90DE5D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(__int128 *), uint64_t a7)
{
  v65 = a7;
  v66 = a6;
  v9 = &v113;
  v67 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v10 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v12 = (v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = v63 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v64 = v63 - v17;
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = v63 - v20;
  if (a5)
  {
    if (!a1)
    {
LABEL_5:
      if (qword_1ECAB0D48 != -1)
      {
        swift_once();
      }

      v22 = sub_1D917744C();
      __swift_project_value_buffer(v22, qword_1ECAB0D50);
      v23 = a5;
      v24 = sub_1D917741C();
      v25 = sub_1D9178CFC();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        v28 = a5;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v29;
        *v27 = v29;
        _os_log_impl(&dword_1D8CEC000, v24, v25, "Received error from request controller: %@", v26, 0xCu);
        sub_1D8D08A50(v27, &unk_1ECAB6C70, &unk_1D9188C30);
        MEMORY[0x1DA72CB90](v27, -1, -1);
        MEMORY[0x1DA72CB90](v26, -1, -1);
      }

      v30 = a5;
      v31 = sub_1D917741C();
      v32 = sub_1D9178CFC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *&v113 = v34;
        *v33 = 136315138;
        *v112 = a5;
        v35 = a5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
        v36 = sub_1D917826C();
        v38 = sub_1D8CFA924(v36, v37, &v113);

        *(v33 + 4) = v38;
        _os_log_impl(&dword_1D8CEC000, v31, v32, "Received error when fetching from MAPI: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x1DA72CB90](v34, -1, -1);
        MEMORY[0x1DA72CB90](v33, -1, -1);
      }

      *v112 = a5;
      sub_1D90DD880(v112);
      v82 = *&v112[176];
      v83[0] = *&v112[192];
      *(v83 + 11) = *&v112[203];
      v78 = *&v112[112];
      v79 = *&v112[128];
      v80 = *&v112[144];
      v81 = *&v112[160];
      v73 = *&v112[32];
      v74 = *&v112[48];
      v75 = *&v112[64];
      v76 = *&v112[80];
      v77 = *&v112[96];
      v71 = *v112;
      v72 = *&v112[16];
      v39 = a5;
      v66(&v71);

      v123 = v81;
      v124 = v82;
      v125[0] = v83[0];
      *(v125 + 11) = *(v83 + 11);
      v119 = v77;
      v120 = v78;
      v121 = v79;
      v122 = v80;
      v115 = v73;
      v116 = v74;
      v117 = v75;
      v118 = v76;
      v113 = v71;
      v114 = v72;
      return sub_1D8D08A50(&v113, &qword_1ECABA698, &unk_1D91B62E0);
    }

    if (a1 >> 62)
    {
      if (sub_1D917935C() <= 0)
      {
        goto LABEL_5;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
    {
      goto LABEL_5;
    }
  }

  else if (!a1)
  {
LABEL_55:
    *&v113 = 4;
    sub_1D90DD880(&v113);
    *&v112[160] = v123;
    *&v112[176] = v124;
    *&v112[192] = v125[0];
    *&v112[203] = *(v125 + 11);
    *&v112[96] = v119;
    *&v112[112] = v120;
    *&v112[128] = v121;
    *&v112[144] = v122;
    *&v112[32] = v115;
    *&v112[48] = v116;
    *&v112[64] = v117;
    *&v112[80] = v118;
    *v112 = v113;
    *&v112[16] = v114;
    return (v66)(v112);
  }

  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

  while (2)
  {
    while (2)
    {
      v51 = sub_1D8FBECF4(a1);
      if (!v51)
      {
        goto LABEL_55;
      }

      v9 = v51;
      a1 = v51 & 0xFFFFFFFFFFFFFF8;
      if (v51 >> 62)
      {
        goto LABEL_78;
      }

      v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v52)
      {
LABEL_79:
        v40 = MEMORY[0x1E69E7CC0];
LABEL_80:

        sub_1D90DCCC4(&v98);
        v94 = v108;
        v95 = v109;
        v96 = v110;
        v97 = v111;
        v90 = v104;
        v91 = v105;
        v92 = v106;
        v93 = v107;
        v86 = v100;
        v87 = v101;
        v88 = v102;
        v89 = v103;
        v84 = v98;
        v85 = v99;
        v9 = v40[2];

        v60 = 0;
        v61 = v67;
        while (1)
        {
          a1 = v60;
          if (v9 == v60)
          {
LABEL_84:

            *&v112[168] = v94;
            *&v112[184] = v95;
            *&v112[200] = v96;
            *&v112[104] = v90;
            *&v112[120] = v91;
            *&v112[136] = v92;
            *&v112[152] = v93;
            *&v112[40] = v86;
            *&v112[56] = v87;
            *&v112[72] = v88;
            *&v112[88] = v89;
            *&v112[8] = v84;
            v112[216] = v97;
            *&v112[24] = v85;
            *v112 = v40;
            v112[217] = v9 != a1;
            sub_1D90DD88C(v112);
            v82 = *&v112[176];
            v83[0] = *&v112[192];
            *(v83 + 11) = *&v112[203];
            v78 = *&v112[112];
            v79 = *&v112[128];
            v80 = *&v112[144];
            v81 = *&v112[160];
            v73 = *&v112[32];
            v74 = *&v112[48];
            v75 = *&v112[64];
            v76 = *&v112[80];
            v77 = *&v112[96];
            v71 = *v112;
            v72 = *&v112[16];
            v66(&v71);
            goto LABEL_85;
          }

          if (v60 >= v40[2])
          {
            break;
          }

          sub_1D90D11F4(v40 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v60++, v15);
          v62 = *(v15 + *(v61 + 108));
          sub_1D90E01B8(v15, type metadata accessor for PodcastsMediaLibrary.MediaItem);
          if (v62)
          {
            goto LABEL_84;
          }
        }

        __break(1u);
        goto LABEL_88;
      }

LABEL_41:
      v53 = 0;
      v70 = v9 & 0xC000000000000001;
      v40 = MEMORY[0x1E69E7CC0];
      v68 = v52;
      v69 = a1;
      while (v70)
      {
        v54 = MEMORY[0x1DA72AA90](v53, v9);
        a1 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_67;
        }

LABEL_45:
        sub_1D90C554C(v54, 0, 0, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_1D8ECD960(0, v40[2] + 1, 1, v40);
        }

        v21 = v40[2];
        v55 = v40[3];
        if (v21 >= v55 >> 1)
        {
          v40 = sub_1D8ECD960((v55 > 1), v21 + 1, 1, v40);
        }

        v40[2] = v21 + 1;
        sub_1D90977D8(v12, v40 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v21);
        ++v53;
        v50 = a1 == v68;
        a1 = v69;
        if (v50)
        {
          goto LABEL_80;
        }
      }

      if (v53 >= *(a1 + 16))
      {
        goto LABEL_68;
      }

      v54 = *(v9 + 8 * v53 + 32);
      a1 = v53 + 1;
      if (!__OFADD__(v53, 1))
      {
        goto LABEL_45;
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      if (!sub_1D917935C())
      {
        continue;
      }

      break;
    }

LABEL_15:
    if ((a1 & 0xC000000000000001) == 0)
    {
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v40 = *(a1 + 32);
        swift_unknownObjectRetain();
        goto LABEL_18;
      }

      __break(1u);
LABEL_78:
      v52 = sub_1D917935C();
      if (!v52)
      {
        goto LABEL_79;
      }

      goto LABEL_41;
    }

    v40 = MEMORY[0x1DA72AA90](0, a1, v19);
LABEL_18:
    type metadata accessor for ServerPodcast();
    v41 = swift_dynamicCastClass();
    if (!v41)
    {
      swift_unknownObjectRelease();
      continue;
    }

    break;
  }

  v9 = v41;
  v42 = OBJC_IVAR___MTServerPodcast_episodes;
  swift_beginAccess();
  v15 = *(v9 + v42);
  if (v15)
  {
    a1 = v15 & 0xFFFFFFFFFFFFFF8;
    if (!(v15 >> 62))
    {
      v43 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_22;
    }

LABEL_88:
    v43 = sub_1D917935C();
LABEL_22:
    v63[1] = v40;

    if (v43)
    {
      v44 = 0;
      v70 = v15 & 0xC000000000000001;
      v12 = MEMORY[0x1E69E7CC0];
      v68 = v43;
      v69 = a1;
      do
      {
        if (v70)
        {
          v45 = MEMORY[0x1DA72AA90](v44, v15);
        }

        else
        {
          if (v44 >= *(a1 + 16))
          {
            goto LABEL_70;
          }

          v45 = *(v15 + 8 * v44 + 32);
        }

        v46 = v45;
        a1 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_69;
        }

        v47 = v9;
        sub_1D90C554C(v46, v9, 0, v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1D8ECD960(0, v12[2] + 1, 1, v12);
        }

        v49 = v12[2];
        v48 = v12[3];
        if (v49 >= v48 >> 1)
        {
          v12 = sub_1D8ECD960((v48 > 1), v49 + 1, 1, v12);
        }

        v12[2] = v49 + 1;
        sub_1D90977D8(v21, v12 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v49);
        ++v44;
        v50 = a1 == v68;
        a1 = v69;
      }

      while (!v50);
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  sub_1D90DCCC4(&v98);
  v57 = sub_1D90BB988();
  v94 = v108;
  v95 = v109;
  v96 = v110;
  v97 = v111;
  v90 = v104;
  v91 = v105;
  v92 = v106;
  v93 = v107;
  v86 = v100;
  v87 = v101;
  v88 = v102;
  v89 = v103;
  v84 = v98;
  v85 = v99;
  v58 = v64;
  if (v57)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    v9 = v12[2];

    a1 = 0;
    do
    {
      v15 = v9 != a1;
      if (v9 == a1)
      {
        break;
      }

      if (a1 >= v12[2])
      {
        goto LABEL_71;
      }

      sub_1D90D11F4(v12 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a1++, v58);
      v59 = *(v58 + *(v67 + 108));
      sub_1D90E01B8(v58, type metadata accessor for PodcastsMediaLibrary.MediaItem);
    }

    while ((v59 & 1) == 0);
  }

  *&v112[168] = v94;
  *&v112[184] = v95;
  *&v112[200] = v96;
  *&v112[104] = v90;
  *&v112[120] = v91;
  *&v112[136] = v92;
  *&v112[152] = v93;
  *&v112[40] = v86;
  *&v112[56] = v87;
  *&v112[72] = v88;
  *&v112[88] = v89;
  *&v112[8] = v84;
  v112[216] = v97;
  *&v112[24] = v85;
  *v112 = v12;
  v112[217] = v15;
  sub_1D90DD88C(v112);
  v82 = *&v112[176];
  v83[0] = *&v112[192];
  *(v83 + 11) = *&v112[203];
  v78 = *&v112[112];
  v79 = *&v112[128];
  v80 = *&v112[144];
  v81 = *&v112[160];
  v73 = *&v112[32];
  v74 = *&v112[48];
  v75 = *&v112[64];
  v76 = *&v112[80];
  v77 = *&v112[96];
  v71 = *v112;
  v72 = *&v112[16];
  v66(&v71);
  swift_unknownObjectRelease();
LABEL_85:
  v123 = v81;
  v124 = v82;
  v125[0] = v83[0];
  *(v125 + 11) = *(v83 + 11);
  v119 = v77;
  v120 = v78;
  v121 = v79;
  v122 = v80;
  v115 = v73;
  v116 = v74;
  v117 = v75;
  v118 = v76;
  v113 = v71;
  v114 = v72;
  return sub_1D8D08A50(&v113, &qword_1ECABA698, &unk_1D91B62E0);
}

uint64_t sub_1D90DF268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D90DF28C, 0, 0);
}

uint64_t sub_1D90DF28C()
{
  v1 = *(v0 + 24);
  if (*(v1 + 56))
  {
    if (qword_1ECAB0D48 != -1)
    {
      swift_once();
    }

    v2 = sub_1D917744C();
    __swift_project_value_buffer(v2, qword_1ECAB0D50);
    v3 = sub_1D917741C();
    v4 = sub_1D9178D1C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D8CEC000, v3, v4, "Item doesn't have an adam id. Unable to refetch from the network. Returning original.", v5, 2u);
      MEMORY[0x1DA72CB90](v5, -1, -1);
    }

    v7 = *(v0 + 16);
    v6 = *(v0 + 24);

    sub_1D90D11F4(v6, v7);
    v8 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v1 + 48);
    v12 = swift_task_alloc();
    *(v0 + 48) = v12;
    v13 = *(v0 + 32);
    *(v12 + 16) = v11;
    *(v12 + 24) = v13;
    *(v12 + 40) = v1;
    v14 = swift_task_alloc();
    *(v0 + 56) = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
    *v14 = v0;
    v14[1] = sub_1D90DF4E4;
    v16 = *(v0 + 16);

    return MEMORY[0x1EEE6DDE0](v16, 0, 0, 0xD000000000000013, 0x80000001D91D5E90, sub_1D90E00C4, v12, v15);
  }
}

uint64_t sub_1D90DF4E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D90DF5F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v19 = a1;
  v20 = a3;
  v21 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  v10 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45A0, &unk_1D91941F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D9189080;
  *(v13 + 32) = a2;
  v24[0] = v13;
  memset(&v24[1], 0, 24);
  v25[0] = 1;
  memset(&v25[8], 0, 96);
  v26 = 0;
  BYTE4(v27) = 0;
  LODWORD(v27) = 2;
  v28 = 0;
  *&v29 = 0;
  WORD4(v29) = 2;
  v30 = 0u;
  v31 = 0u;
  v32 = -1;
  v22[10] = v29;
  memset(&v22[11], 0, 32);
  v23 = -1;
  v22[6] = *&v25[64];
  v22[7] = *&v25[80];
  v22[8] = 0uLL;
  v22[9] = v27;
  v22[2] = *v25;
  v22[3] = *&v25[16];
  v22[4] = *&v25[32];
  v22[5] = *&v25[48];
  v22[0] = v13;
  v22[1] = 0u;
  sub_1D90D11F4(v18, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v9, v19, v6);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_1D90977D8(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14);
  (*(v7 + 32))(v16 + v15, v9, v6);
  sub_1D90DE05C(v22, sub_1D90E00D0, v16, v20, v21);

  return sub_1D90CF72C(v24);
}

uint64_t sub_1D90DF8BC(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v55 = &v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1E0, &qword_1D91B3658);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  v19 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v56 = *(v19 - 8);
  v57 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[11];
  v23 = a1[9];
  v82 = a1[10];
  v83 = v22;
  v24 = a1[11];
  v84[0] = a1[12];
  *(v84 + 11) = *(a1 + 203);
  v25 = a1[7];
  v26 = a1[5];
  v78 = a1[6];
  v79 = v25;
  v27 = a1[7];
  v28 = a1[9];
  v80 = a1[8];
  v81 = v28;
  v29 = a1[3];
  v30 = a1[1];
  v74 = a1[2];
  v75 = v29;
  v31 = a1[3];
  v32 = a1[5];
  v76 = a1[4];
  v77 = v32;
  v33 = a1[1];
  v72 = *a1;
  v73 = v33;
  v85[10] = v82;
  v85[11] = v24;
  v86[0] = a1[12];
  *(v86 + 11) = *(a1 + 203);
  v85[6] = v78;
  v85[7] = v27;
  v85[8] = v80;
  v85[9] = v23;
  v85[2] = v74;
  v85[3] = v31;
  v85[4] = v76;
  v85[5] = v26;
  v85[0] = v72;
  v85[1] = v30;
  if (sub_1D90E0218(v85) == 1)
  {
    v54 = a3;
    nullsub_1();
    v35 = *v34;
    if (qword_1ECAB0D48 != -1)
    {
      swift_once();
    }

    v36 = sub_1D917744C();
    __swift_project_value_buffer(v36, qword_1ECAB0D50);
    v70[12] = v82;
    v70[13] = v83;
    v71[0] = v84[0];
    *(v71 + 11) = *(v84 + 11);
    v70[8] = v78;
    v70[9] = v79;
    v70[10] = v80;
    v70[11] = v81;
    v70[4] = v74;
    v70[5] = v75;
    v70[6] = v76;
    v70[7] = v77;
    v70[2] = v72;
    v70[3] = v73;
    nullsub_1();
    sub_1D90BC378(*v37);
    v38 = sub_1D917741C();
    v39 = sub_1D9178D1C();
    sub_1D8D08A50(&v72, &qword_1ECABA698, &unk_1D91B62E0);
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      sub_1D90CC2C0();
      swift_allocError();
      *v42 = v35;
      v58 = v72;
      v59 = v73;
      v62 = v76;
      v63 = v77;
      v60 = v74;
      v61 = v75;
      v66 = v80;
      v67 = v81;
      v64 = v78;
      v65 = v79;
      *(v70 + 11) = *(v84 + 11);
      v69 = v83;
      v70[0] = v84[0];
      v68 = v82;
      nullsub_1();
      sub_1D90BC378(*v43);
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v44;
      *v41 = v44;
      _os_log_impl(&dword_1D8CEC000, v38, v39, "Received error refreshing item. Returning original shallow item. %@", v40, 0xCu);
      sub_1D8D08A50(v41, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v41, -1, -1);
      MEMORY[0x1DA72CB90](v40, -1, -1);
    }

    (*(v56 + 56))(v12, 1, 1, v57);
    swift_storeEnumTagMultiPayload();
    sub_1D90E0220(v12, v9);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650);
      sub_1D917875C();
    }

    else
    {
      sub_1D90AA150(v9, v55);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650);
      sub_1D917876C();
    }

    return sub_1D8D08A50(v12, &qword_1ECABA1E0, &qword_1D91B3658);
  }

  else
  {
    nullsub_1();
    v46 = v45;
    if (qword_1ECAB0D48 != -1)
    {
      swift_once();
    }

    v47 = sub_1D917744C();
    __swift_project_value_buffer(v47, qword_1ECAB0D50);
    v48 = sub_1D917741C();
    v49 = sub_1D9178D1C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1D8CEC000, v48, v49, "Item successfully refreshed", v50, 2u);
      MEMORY[0x1DA72CB90](v50, -1, -1);
    }

    v51 = v56;
    v52 = v54;
    if (*(*v46 + 16))
    {
      v52 = *v46 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    }

    sub_1D90D11F4(v52, v21);
    sub_1D90D11F4(v21, v18);
    (*(v51 + 56))(v18, 0, 1, v57);
    swift_storeEnumTagMultiPayload();
    sub_1D90E0220(v18, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650);
      sub_1D917875C();
    }

    else
    {
      sub_1D90AA150(v15, v55);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650);
      sub_1D917876C();
    }

    sub_1D8D08A50(v18, &qword_1ECABA1E0, &qword_1D91B3658);
    return sub_1D90E01B8(v21, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  }
}

BOOL sub_1D90DFFD4(int8x16_t *a1)
{
  v1 = a1[2].u8[0];
  result = 1;
  if (v1 >= 2)
  {
    if (v1 != 8)
    {
      return 0;
    }

    v3 = vorrq_s8(*a1, a1[1]);
    if (vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)))
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D90E0010(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = v2[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D8D58924;

  return sub_1D90DF268(a1, a2, v7, v6);
}

uint64_t sub_1D90E00D0(__int128 *a1)
{
  v3 = *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650) - 8);
  v7 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1D90DF8BC(a1, v1 + v4, v7);
}

uint64_t sub_1D90E01B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D90E0220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1E0, &qword_1D91B3658);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D90E02EC(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 1)
  {
    if (qword_1ECAB0D48 != -1)
    {
      swift_once();
    }

    v3 = sub_1D917744C();
    __swift_project_value_buffer(v3, qword_1ECAB0D50);
    v4 = sub_1D9178CFC();
    v5 = sub_1D917741C();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v10 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_1D8CFA924(0x62694C6C61636F6CLL, 0xEC00000079726172, &v10);
      _os_log_impl(&dword_1D8CEC000, v5, v4, "Asking for %{public}s in a MAPI-only configuration. This is not supported.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1DA72CB90](v7, -1, -1);
      MEMORY[0x1DA72CB90](v6, -1, -1);
    }

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v8 = [objc_allocWithZone(type metadata accessor for MediaRequestController()) init];
    v9 = [objc_allocWithZone(_s19TaskMetricsDelegateCMa()) init];
    *(a2 + 24) = &_s16MediaAPIProviderVN;
    *(a2 + 32) = &off_1F54822F8;
    *a2 = v8;
    *(a2 + 8) = v9;
  }
}

uint64_t sub_1D90E0498(char a1)
{
  if (a1)
  {
    v1 = sub_1D9179ACC();
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

id sub_1D90E0530@<X0>(unsigned __int8 a1@<W0>, void *a2@<X8>)
{
  if (a1 - 1 >= 2)
  {
    v5 = [objc_allocWithZone(type metadata accessor for MediaRequestController()) init];
    result = [objc_allocWithZone(_s19TaskMetricsDelegateCMa()) init];
    a2[1] = result;
    v6 = &off_1F54822F8;
    v3 = &_s16MediaAPIProviderVN;
  }

  else
  {
    v3 = _s20LocalLibraryProviderCMa();
    result = swift_allocObject();
    v5 = result;
    v6 = &off_1F5481DA8;
  }

  a2[3] = v3;
  a2[4] = v6;
  *a2 = v5;
  return result;
}

uint64_t sub_1D90E05EC(unsigned __int8 a1)
{
  if (a1)
  {
    v1 = sub_1D9179ACC();
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

void *PodcastsMediaLibrary.PlaybackQueueContext.accountForPlayback.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t PodcastsMediaLibrary.PlaybackQueueContext.SourceEvent.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t PodcastsMediaLibrary.PlaybackQueueContext.siriAssetInfo.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

id PodcastsMediaLibrary.PlaybackQueueContext.userContext.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v10 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 40);
  v5 = *(v1 + 56);
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v10;
  *(a1 + 48) = v3;
  v6 = v4;
  v7 = v3;
  v8 = v6;

  return v10;
}

double PodcastsMediaLibrary.PlaybackQueueContext.restorableSnapshot.getter()
{
  type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0);

  return result;
}

uint64_t PodcastsMediaLibrary.PlaybackQueueContext.featureName.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t PodcastsMediaLibrary.PlaybackQueueContext.sourceEvent.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

double PodcastsMediaLibrary.PlaybackQueueContext.mediaQueryIdentifiers.getter()
{
  type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0);

  return result;
}

uint64_t PodcastsMediaLibrary.PlaybackQueueContext.previousMediaIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0) + 68);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 32);
  *(a1 + 32) = v8;

  return sub_1D8D0B37C(v4, v5, v6, v7, v8);
}

double PodcastsMediaLibrary.PlaybackQueueContext.init(trackIdentifiers:privateListening:enqueuerDSID:sharedUserId:requesterUserId:siriAssetInfo:)@<D0>(void *a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v13 = a3;
  if (!a3)
  {
    sub_1D90E5C18(a1);
    v13 = v14;
  }

  v15 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0);
  v16 = v15[9];
  v17 = type metadata accessor for PlaybackIntent(0);
  (*(*(v17 - 8) + 56))(a9 + v16, 1, 1, v17);
  v18 = v15[11];
  v19 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  v20 = a3;
  v21 = sub_1D90E5FA4();
  LOBYTE(v18) = v22;
  v23 = v15[18];
  type metadata accessor for AccountResolver(0);
  v24 = swift_allocObject();
  v25 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  v26 = sub_1D917734C();
  (*(*(v26 - 8) + 56))(v24 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection;
  *(v24 + v27) = [objc_allocWithZone(MEMORY[0x1E698D198]) init];
  *(a9 + v23) = v24;
  v28 = sub_1D90E6070(a1);

  *a9 = a1;
  *(a9 + 8) = v28;
  *(a9 + 16) = a2 & 1;
  *(a9 + 40) = v13;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a4;
  *(a9 + 80) = 0;
  *(a9 + 88) = 0;
  *(a9 + 72) = a5;
  *(a9 + 24) = a8;
  *(a9 + 32) = a10;
  *(a9 + v15[14]) = 0;
  v29 = MEMORY[0x1E69E7CC0];
  *(a9 + v15[10]) = MEMORY[0x1E69E7CC0];
  v30 = a9 + v15[12];
  *v30 = v21;
  *(v30 + 8) = v18 & 1;
  *(a9 + v15[15]) = v29;
  v31 = a9 + v15[16];
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = a9 + v15[17];
  result = 0.0;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = -1;
  *(a9 + v15[13]) = 4;
  return result;
}

double PodcastsMediaLibrary.PlaybackQueueContext.init(trackIdentifiers:privateListening:enqueuerDSID:sharedUserId:requesterUserId:siriAssetInfo:sourceEvent:)@<D0>(void *a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v13 = a3;
  if (!a3)
  {
    sub_1D90E5C18(a1);
    v13 = v14;
  }

  v15 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0);
  v16 = v15[9];
  v17 = type metadata accessor for PlaybackIntent(0);
  (*(*(v17 - 8) + 56))(a9 + v16, 1, 1, v17);
  v18 = v15[11];
  v19 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  v20 = a3;
  v21 = sub_1D90E5FA4();
  LOBYTE(v18) = v22;
  v23 = v15[18];
  type metadata accessor for AccountResolver(0);
  v24 = swift_allocObject();
  v25 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  v26 = sub_1D917734C();
  (*(*(v26 - 8) + 56))(v24 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection;
  *(v24 + v27) = [objc_allocWithZone(MEMORY[0x1E698D198]) init];
  *(a9 + v23) = v24;
  v28 = sub_1D90E6070(a1);

  *a9 = a1;
  *(a9 + 8) = v28;
  *(a9 + 16) = a2 & 1;
  *(a9 + 40) = v13;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a4;
  *(a9 + 80) = 0;
  *(a9 + 88) = 0;
  *(a9 + 72) = a5;
  *(a9 + 24) = a8;
  *(a9 + 32) = a10;
  *(a9 + v15[14]) = 0;
  v29 = MEMORY[0x1E69E7CC0];
  *(a9 + v15[10]) = MEMORY[0x1E69E7CC0];
  v30 = a9 + v15[12];
  *v30 = v21;
  *(v30 + 8) = v18 & 1;
  *(a9 + v15[15]) = v29;
  v31 = a9 + v15[16];
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = a9 + v15[17];
  result = 0.0;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = -1;
  *(a9 + v15[13]) = 4;
  return result;
}

double PodcastsMediaLibrary.PlaybackQueueContext.init(trackIdentifiers:privateListening:enqueuerDSID:sharedUserId:requesterUserId:siriAssetInfo:sourceEvent:featureName:)@<D0>(void *a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12)
{
  v42 = *a12;
  v15 = a3;
  if (!a3)
  {
    sub_1D90E5C18(a1);
    v15 = v16;
  }

  v17 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0);
  v18 = v17[9];
  v19 = type metadata accessor for PlaybackIntent(0);
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  v20 = v17[11];
  v21 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  (*(*(v21 - 8) + 56))(a9 + v20, 1, 1, v21);
  v22 = a3;
  v23 = sub_1D90E5FA4();
  LOBYTE(v20) = v24;
  v25 = v17[18];
  type metadata accessor for AccountResolver(0);
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  v28 = sub_1D917734C();
  (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection;
  *(v26 + v29) = [objc_allocWithZone(MEMORY[0x1E698D198]) init];
  *(a9 + v25) = v26;
  v30 = sub_1D90E6070(a1);

  *a9 = a1;
  *(a9 + 8) = v30;
  *(a9 + 16) = a2 & 1;
  *(a9 + 40) = v15;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a4;
  *(a9 + 80) = 0;
  *(a9 + 88) = 0;
  *(a9 + 72) = a5;
  *(a9 + 24) = a8;
  *(a9 + 32) = a10;
  *(a9 + v17[14]) = 0;
  v31 = MEMORY[0x1E69E7CC0];
  *(a9 + v17[10]) = MEMORY[0x1E69E7CC0];
  v32 = a9 + v17[12];
  *v32 = v23;
  *(v32 + 8) = v20 & 1;
  *(a9 + v17[15]) = v31;
  v33 = a9 + v17[16];
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = a9 + v17[17];
  result = 0.0;
  *v34 = 0u;
  *(v34 + 16) = 0u;
  *(v34 + 32) = -1;
  *(a9 + v17[13]) = v42;
  return result;
}

double PodcastsMediaLibrary.PlaybackQueueContext.init(trackIdentifiers:privateListening:enqueuerDSID:sharedUserId:requesterUserId:siriAssetInfo:sourceEvent:initialItemPlayheadOverride:)@<D0>(void *a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v17 = a3;
  if (!a3)
  {
    sub_1D90E5C18(a1);
    v17 = v18;
  }

  v19 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0);
  v20 = v19[9];
  v21 = type metadata accessor for PlaybackIntent(0);
  (*(*(v21 - 8) + 56))(a9 + v20, 1, 1, v21);
  v22 = v19[11];
  v23 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  (*(*(v23 - 8) + 56))(a9 + v22, 1, 1, v23);
  v24 = v19[18];
  type metadata accessor for AccountResolver(0);
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  v27 = sub_1D917734C();
  (*(*(v27 - 8) + 56))(v25 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection;
  v29 = objc_allocWithZone(MEMORY[0x1E698D198]);
  v30 = a3;
  *(v25 + v28) = [v29 init];
  *(a9 + v24) = v25;
  v31 = sub_1D90E6070(a1);

  *a9 = a1;
  *(a9 + 8) = v31;
  *(a9 + 16) = a2 & 1;
  *(a9 + 40) = v17;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a4;
  *(a9 + 80) = 0;
  *(a9 + 88) = 0;
  *(a9 + 72) = a5;
  *(a9 + 24) = a8;
  *(a9 + 32) = a10;
  *(a9 + v19[14]) = 0;
  v32 = MEMORY[0x1E69E7CC0];
  *(a9 + v19[10]) = MEMORY[0x1E69E7CC0];
  v33 = a9 + v19[12];
  *v33 = a12;
  *(v33 + 8) = a13 & 1;
  *(a9 + v19[15]) = v32;
  v34 = a9 + v19[16];
  *v34 = 0;
  *(v34 + 8) = 1;
  v35 = a9 + v19[17];
  result = 0.0;
  *v35 = 0u;
  *(v35 + 16) = 0u;
  *(v35 + 32) = -1;
  *(a9 + v19[13]) = 4;
  return result;
}

double PodcastsMediaLibrary.PlaybackQueueContext.init(restorableSnapshot:privateListening:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0);
  v7 = v6[9];
  v8 = type metadata accessor for PlaybackIntent(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v9 = v6[11];
  v10 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  (*(*(v10 - 8) + 56))(a3 + v9, 1, 1, v10);
  v11 = v6[18];
  type metadata accessor for AccountResolver(0);
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  v14 = sub_1D917734C();
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection;
  *(v12 + v15) = [objc_allocWithZone(MEMORY[0x1E698D198]) init];
  *(a3 + v11) = v12;
  v16 = MEMORY[0x1E69E7CC0];
  v17 = sub_1D90E6070(MEMORY[0x1E69E7CC0]);
  *a3 = v16;
  *(a3 + 8) = v17;
  *(a3 + 16) = a2;
  result = 0.0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0;
  *(a3 + v6[14]) = 2;
  *(a3 + v6[10]) = a1;
  v19 = a3 + v6[12];
  *v19 = 0;
  *(v19 + 8) = 1;
  *(a3 + v6[15]) = v16;
  v20 = a3 + v6[16];
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = a3 + v6[17];
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = -1;
  *(a3 + v6[13]) = 4;
  return result;
}

uint64_t PodcastsMediaLibrary.PlaybackQueueContext.init(intent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlaybackIntent(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D90E6430(a1, v6, type metadata accessor for PlaybackIntent);
  v9 = 4;
  PodcastsMediaLibrary.PlaybackQueueContext.init(intent:privateListening:featureName:)(v6, 0, &v9, a2);
  return sub_1D90E6538(a1, type metadata accessor for PlaybackIntent);
}

double PodcastsMediaLibrary.PlaybackQueueContext.init(intent:privateListening:featureName:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v36 = *a3;
  sub_1D90E1A6C();
  v7 = v6;
  if (!v6)
  {
    v9 = [objc_opt_self() sharedAccountStore];
    v37[0] = 0;
    v8 = [v9 activeStoreAccountWithError_];

    v10 = v37[0];
    if (v8)
    {
      goto LABEL_4;
    }

    v30 = v10;
    v31 = sub_1D9176A6C();

    swift_willThrow();
  }

  v8 = 0;
LABEL_4:
  v32 = v8;
  v11 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0);
  v12 = v11[9];
  sub_1D90E6430(a1, a4 + v12, type metadata accessor for PlaybackIntent);
  v13 = type metadata accessor for PlaybackIntent(0);
  (*(*(v13 - 8) + 56))(a4 + v12, 0, 1, v13);
  sub_1D8D088B4(a1 + *(v13 + 20), a4 + v11[11], &qword_1ECAB9F70, qword_1D91B1680);
  v14 = v8;
  v15 = v7;
  PlaybackIntent.initialItemPlayheadOverride.getter();
  v34 = v16;
  v33 = v17;
  v18 = v7;
  v19 = v11[18];
  type metadata accessor for AccountResolver(0);
  v20 = swift_allocObject();
  v21 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  v22 = sub_1D917734C();
  (*(*(v22 - 8) + 56))(v20 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection;
  *(v20 + v23) = [objc_allocWithZone(MEMORY[0x1E698D198]) init];
  *(a4 + v19) = v20;
  v24 = MEMORY[0x1E69E7CC0];
  v25 = sub_1D90E6070(MEMORY[0x1E69E7CC0]);

  sub_1D90E6538(a1, type metadata accessor for PlaybackIntent);
  *a4 = v24;
  *(a4 + 8) = v25;
  *(a4 + 16) = a2 & 1;
  *(a4 + 32) = 0;
  *(a4 + 40) = v18;
  result = 0.0;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = v32;
  *(a4 + 88) = 0;
  *(a4 + 24) = 0;
  *(a4 + v11[14]) = 0;
  *(a4 + v11[10]) = v24;
  v27 = a4 + v11[12];
  *v27 = v34;
  *(v27 + 8) = v33 & 1;
  *(a4 + v11[15]) = v24;
  v28 = a4 + v11[16];
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = a4 + v11[17];
  *v29 = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = -1;
  *(a4 + v11[13]) = v36;
  return result;
}

uint64_t PodcastsMediaLibrary.PlaybackQueueContext.init(intent:privateListening:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PlaybackIntent(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D90E6430(a1, v8, type metadata accessor for PlaybackIntent);
  v11 = 4;
  PodcastsMediaLibrary.PlaybackQueueContext.init(intent:privateListening:featureName:)(v8, a2, &v11, a3);
  return sub_1D90E6538(a1, type metadata accessor for PlaybackIntent);
}

void sub_1D90E1A6C()
{
  v1 = *(v0 + *(type metadata accessor for PlaybackIntent(0) + 28));
  v2 = MEMORY[0x1E69E7CC0];
  v44 = MEMORY[0x1E69E7CC0];
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_10:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(v1 + 48) + 24 * (v9 | (v7 << 6));
    if (*(v10 + 16) == 1)
    {
      v12 = *v10;
      v11 = *(v10 + 8);
      v13 = HIBYTE(v11) & 0xF;
      v14 = v12 & 0xFFFFFFFFFFFFLL;
      if ((v11 & 0x2000000000000000) != 0 ? HIBYTE(v11) & 0xF : v12 & 0xFFFFFFFFFFFFLL)
      {
        if ((v11 & 0x1000000000000000) != 0)
        {
          sub_1D8D02FE4(v12, v11, 1);
          v39 = sub_1D8FF7E64();
          if ((v40 & 1) == 0)
          {
            v18 = v39;
            goto LABEL_73;
          }

LABEL_4:
          sub_1D8D02FCC(v12, v11, 1);
        }

        else
        {
          if ((v11 & 0x2000000000000000) != 0)
          {
            v42[0] = v12;
            v42[1] = v11 & 0xFFFFFFFFFFFFFFLL;
            if (v12 == 43)
            {
              if (!v13)
              {
                goto LABEL_93;
              }

              if (--v13)
              {
                v18 = 0;
                v28 = v42 + 1;
                while (1)
                {
                  v29 = *v28 - 48;
                  if (v29 > 9)
                  {
                    break;
                  }

                  v30 = 10 * v18;
                  if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                  {
                    break;
                  }

                  v18 = v30 + v29;
                  if (__OFADD__(v30, v29))
                  {
                    break;
                  }

                  ++v28;
                  if (!--v13)
                  {
                    goto LABEL_72;
                  }
                }
              }
            }

            else if (v12 == 45)
            {
              if (!v13)
              {
                goto LABEL_91;
              }

              if (--v13)
              {
                v18 = 0;
                v22 = v42 + 1;
                while (1)
                {
                  v23 = *v22 - 48;
                  if (v23 > 9)
                  {
                    break;
                  }

                  v24 = 10 * v18;
                  if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                  {
                    break;
                  }

                  v18 = v24 - v23;
                  if (__OFSUB__(v24, v23))
                  {
                    break;
                  }

                  ++v22;
                  if (!--v13)
                  {
                    goto LABEL_72;
                  }
                }
              }
            }

            else if (v13)
            {
              v18 = 0;
              v33 = v42;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  break;
                }

                v35 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  break;
                }

                v18 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  break;
                }

                ++v33;
                if (!--v13)
                {
                  goto LABEL_72;
                }
              }
            }
          }

          else
          {
            if ((v12 & 0x1000000000000000) != 0)
            {
              v16 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v16 = sub_1D917957C();
            }

            v17 = *v16;
            if (v17 == 43)
            {
              if (v14 < 1)
              {
                goto LABEL_94;
              }

              v13 = v14 - 1;
              if (v14 != 1)
              {
                v18 = 0;
                if (!v16)
                {
                  goto LABEL_63;
                }

                v25 = v16 + 1;
                while (1)
                {
                  v26 = *v25 - 48;
                  if (v26 > 9)
                  {
                    break;
                  }

                  v27 = 10 * v18;
                  if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                  {
                    break;
                  }

                  v18 = v27 + v26;
                  if (__OFADD__(v27, v26))
                  {
                    break;
                  }

                  ++v25;
                  if (!--v13)
                  {
                    goto LABEL_72;
                  }
                }
              }
            }

            else if (v17 == 45)
            {
              if (v14 < 1)
              {
                goto LABEL_92;
              }

              v13 = v14 - 1;
              if (v14 != 1)
              {
                v18 = 0;
                if (!v16)
                {
                  goto LABEL_63;
                }

                v19 = v16 + 1;
                while (1)
                {
                  v20 = *v19 - 48;
                  if (v20 > 9)
                  {
                    break;
                  }

                  v21 = 10 * v18;
                  if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                  {
                    break;
                  }

                  v18 = v21 - v20;
                  if (__OFSUB__(v21, v20))
                  {
                    break;
                  }

                  ++v19;
                  if (!--v13)
                  {
                    goto LABEL_72;
                  }
                }
              }
            }

            else if (v14)
            {
              v18 = 0;
              if (!v16)
              {
LABEL_63:
                LOBYTE(v13) = 0;
                goto LABEL_72;
              }

              while (1)
              {
                v31 = *v16 - 48;
                if (v31 > 9)
                {
                  break;
                }

                v32 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  break;
                }

                v18 = v32 + v31;
                if (__OFADD__(v32, v31))
                {
                  break;
                }

                ++v16;
                if (!--v14)
                {
                  goto LABEL_63;
                }
              }
            }
          }

          v18 = 0;
          LOBYTE(v13) = 1;
LABEL_72:
          v43 = v13;
          v36 = v13;
          sub_1D8D02FE4(v12, v11, 1);
          if (v36)
          {
            goto LABEL_4;
          }

LABEL_73:
          v37 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          v38 = sub_1D8D02FCC(v12, v11, 1);
          if (v37)
          {
            MEMORY[0x1DA729B90](v38);
            if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D917863C();
            }

            sub_1D917869C();
            v2 = v44;
          }
        }
      }
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_87;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v1 + 56 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_83;
    }

LABEL_88:

    return;
  }

LABEL_87:
  if (!sub_1D917935C())
  {
    goto LABEL_88;
  }

LABEL_83:
  if ((v2 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1DA72AA90](0, v2);
    goto LABEL_88;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v41 = *(v2 + 32);
    goto LABEL_88;
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
}

double PodcastsMediaLibrary.PlaybackQueueContext.init(intent:sourceEvent:previousMediaIdentifier:)@<D0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v104 = *MEMORY[0x1E69E9840];
  v8 = sub_1D9176EAC();
  v86 = *(v8 - 8);
  v87 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v84 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v78 - v13;
  v88 = *a2;
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = *(a3 + 16);
  v17 = *(a3 + 24);
  v18 = *(a3 + 32);
  v19 = type metadata accessor for PlaybackIntent(0);
  v20 = v19[6];
  v95 = a1;
  v21 = (a1 + v20);
  v22 = *(v21 + 3);
  v101[1] = *(v21 + 4);
  *&v103[13] = *(v21 + 125);
  v23 = *(v21 + 7);
  v24 = *(v21 + 5);
  v25 = *(v21 + 4);
  v102 = *(v21 + 6);
  *v103 = v23;
  v101[2] = v24;
  v101[0] = *(v21 + 3);
  *(&v100[2] + 7) = v24;
  *(&v100[3] + 7) = v102;
  *(&v100[4] + 7) = *(v21 + 7);
  *(v100 + 7) = v22;
  v26 = *v21;
  v27 = *v21;
  *(&v100[5] + 4) = *(v21 + 125);
  *(&v100[1] + 7) = v25;
  if (v103[16] != 2 && v27 == 3 && v23 == 6)
  {
    v30 = 0;
  }

  else
  {
    v30 = v26;
  }

  LOBYTE(v97) = v30;
  *(&v97 + 1) = v14;
  *&v98 = v15;
  *(&v98 + 1) = v16;
  *v99 = v17;
  v99[8] = v18;
  *&v99[41] = v100[2];
  *&v99[57] = v100[3];
  *&v99[73] = v100[4];
  *&v99[85] = *(&v100[4] + 12);
  *&v99[9] = v100[0];
  *&v99[25] = v100[1];
  v31 = objc_opt_self();
  sub_1D8D088B4(v101, v96, &qword_1ECAB9F78, qword_1D91B16D0);
  v92 = v15;
  v93 = v14;
  v90 = v17;
  v91 = v16;
  v89 = v18;
  sub_1D8D0B37C(v14, v15, v16, v17, v18);
  v32 = [v31 sharedAccountStore];
  v96[0] = 0;
  v33 = [v32 activeStoreAccountWithError_];

  v34 = v96[0];
  if (v33)
  {
    v83 = v33;
  }

  else
  {
    v35 = v34;
    v36 = sub_1D9176A6C();

    swift_willThrow();
    v83 = 0;
  }

  v37 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0);
  v38 = a4 + v37[9];
  v39 = *(v95 + 8);
  v81 = *v95;
  v40 = v81;
  v79 = v39;
  v41 = *(v95 + 16);
  v42 = *(v95 + 24);
  v80 = *(v95 + 32);
  v43 = v95;
  v44 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v45 = v94;
  (*(*(v44 - 8) + 56))(v94, 1, 1, v44);
  v82 = *(v43 + v19[7]);
  v46 = v84;
  sub_1D8D088B4(v45, v84, &qword_1ECAB9F70, qword_1D91B1680);
  v47 = v79;
  *v38 = v40;
  *(v38 + 8) = v47;
  *(v38 + 16) = v41;
  *(v38 + 24) = v42;
  LOBYTE(v40) = v80;
  *(v38 + 32) = v80;
  v48 = v38 + v19[6];
  v49 = *&v99[80];
  *(v48 + 96) = *&v99[64];
  *(v48 + 112) = v49;
  *(v48 + 125) = *&v99[93];
  v50 = *&v99[16];
  *(v48 + 32) = *v99;
  *(v48 + 48) = v50;
  v51 = *&v99[48];
  *(v48 + 64) = *&v99[32];
  *(v48 + 80) = v51;
  v52 = v98;
  *v48 = v97;
  *(v48 + 16) = v52;
  sub_1D8D088B4(v46, v38 + v19[5], &qword_1ECAB9F70, qword_1D91B1680);
  sub_1D8D092C0(v81, v47, v41, v42, v40);
  sub_1D8CFEB60(&v97, v96);
  v53 = v82;

  v54 = v85;
  sub_1D9176E9C();
  v55 = sub_1D9176E5C();
  v57 = v56;
  (*(v86 + 8))(v54, v87);
  sub_1D8D08A50(v46, &qword_1ECAB9F70, qword_1D91B1680);
  sub_1D8D08A50(v94, &qword_1ECAB9F70, qword_1D91B1680);
  v58 = (v38 + v19[8]);
  *v58 = v55;
  v58[1] = v57;
  *(v38 + v19[7]) = v53;
  *(v38 + v19[9]) = 0;
  (*(*(v19 - 1) + 56))(v38, 0, 1, v19);
  v59 = v95;
  sub_1D8D088B4(v95 + v19[5], a4 + v37[11], &qword_1ECAB9F70, qword_1D91B1680);
  PlaybackIntent.initialItemPlayheadOverride.getter();
  v61 = v60;
  v63 = v62;
  v64 = v37[18];
  type metadata accessor for AccountResolver(0);
  v65 = swift_allocObject();
  v66 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  v67 = sub_1D917734C();
  (*(*(v67 - 8) + 56))(v65 + v66, 1, 1, v67);
  v68 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection;
  *(v65 + v68) = [objc_allocWithZone(MEMORY[0x1E698D198]) init];
  *(a4 + v64) = v65;
  v69 = MEMORY[0x1E69E7CC0];
  v70 = sub_1D90E6070(MEMORY[0x1E69E7CC0]);
  sub_1D8D0DB70(&v97);
  sub_1D90E6538(v59, type metadata accessor for PlaybackIntent);
  *a4 = v69;
  *(a4 + 8) = v70;
  *(a4 + 16) = 0;
  result = 0.0;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  v72 = v83;
  *(a4 + 72) = 0;
  *(a4 + 80) = v72;
  *(a4 + 88) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + v37[14]) = v88;
  *(a4 + v37[10]) = v69;
  v73 = a4 + v37[12];
  *v73 = v61;
  *(v73 + 8) = v63 & 1;
  *(a4 + v37[15]) = v69;
  v74 = a4 + v37[16];
  *v74 = 0;
  *(v74 + 8) = 1;
  v75 = a4 + v37[17];
  v76 = v92;
  *v75 = v93;
  *(v75 + 8) = v76;
  v77 = v90;
  *(v75 + 16) = v91;
  *(v75 + 24) = v77;
  *(v75 + 32) = v89;
  *(a4 + v37[13]) = 4;
  return result;
}

double PodcastsMediaLibrary.PlaybackQueueContext.init(mediaQueryIdentifiers:initialIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v8 = [objc_opt_self() sharedAccountStore];
  v29[0] = 0;
  v9 = [v8 activeStoreAccountWithError_];

  v10 = v29[0];
  if (!v9)
  {
    v11 = v10;
    v12 = sub_1D9176A6C();

    swift_willThrow();
    v9 = 0;
  }

  v13 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0);
  v14 = v13[9];
  v15 = type metadata accessor for PlaybackIntent(0);
  (*(*(v15 - 8) + 56))(a4 + v14, 1, 1, v15);
  v16 = v13[11];
  v17 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  (*(*(v17 - 8) + 56))(a4 + v16, 1, 1, v17);
  v18 = v13[18];
  type metadata accessor for AccountResolver(0);
  v19 = swift_allocObject();
  v20 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  v21 = sub_1D917734C();
  (*(*(v21 - 8) + 56))(v19 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection;
  *(v19 + v22) = [objc_allocWithZone(MEMORY[0x1E698D198]) init];
  *(a4 + v18) = v19;
  v23 = MEMORY[0x1E69E7CC0];
  v24 = sub_1D90E6070(MEMORY[0x1E69E7CC0]);
  *a4 = v23;
  *(a4 + 8) = v24;
  *(a4 + 16) = 0;
  result = 0.0;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0;
  *(a4 + 80) = v9;
  *(a4 + 88) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + v13[14]) = 0;
  *(a4 + v13[10]) = v23;
  v26 = a4 + v13[12];
  *v26 = 0;
  *(v26 + 8) = 1;
  *(a4 + v13[15]) = a1;
  v27 = a4 + v13[16];
  *v27 = a2;
  *(v27 + 8) = a3 & 1;
  v28 = a4 + v13[17];
  *v28 = 0u;
  *(v28 + 16) = 0u;
  *(v28 + 32) = -1;
  *(a4 + v13[13]) = 4;
  return result;
}

uint64_t sub_1D90E28D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA6C0, &qword_1D91B64E0);
  v6[4] = swift_task_alloc();
  v7 = type metadata accessor for PlaybackIntent(0);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v8 = swift_task_alloc();
  v6[7] = v8;
  v9 = swift_task_alloc();
  v6[8] = v9;
  *v9 = v6;
  v9[1] = sub_1D90E2A08;

  return PlaybackIntent.resolvedIntent()(v8);
}

uint64_t sub_1D90E2A08()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D90E2D20;
  }

  else
  {
    v2 = sub_1D90E2B1C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D90E2B1C()
{
  sub_1D91787EC();
  *(v0 + 80) = sub_1D91787DC();
  v2 = sub_1D917874C();

  return MEMORY[0x1EEE6DFA0](sub_1D90E2BB0, v2, v1);
}

uint64_t sub_1D90E2BB0()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];

  sub_1D90E6430(v1, v4, type metadata accessor for PlaybackIntent);
  (*(v2 + 56))(v4, 0, 1, v3);
  v5(v4);
  sub_1D8D08A50(v4, &qword_1ECABA6C0, &qword_1D91B64E0);

  return MEMORY[0x1EEE6DFA0](sub_1D90E2C98, 0, 0);
}

uint64_t sub_1D90E2C98()
{
  sub_1D90E6538(*(v0 + 56), type metadata accessor for PlaybackIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D90E2D20()
{
  if (qword_1ECAB0DB8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1ECAB0DC0);
  v3 = v1;
  v4 = sub_1D917741C();
  v5 = sub_1D9178CFC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D8CEC000, v4, v5, "Unable to resolve intent: %@", v7, 0xCu);
    sub_1D8D08A50(v8, &unk_1ECAB6C70, &unk_1D9188C30);
    MEMORY[0x1DA72CB90](v8, -1, -1);
    MEMORY[0x1DA72CB90](v7, -1, -1);
  }

  sub_1D91787EC();
  *(v0 + 88) = sub_1D91787DC();
  v12 = sub_1D917874C();

  return MEMORY[0x1EEE6DFA0](sub_1D90E2EE8, v12, v11);
}

uint64_t sub_1D90E2EE8()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[2];

  (*(v2 + 56))(v3, 1, 1, v1);
  v4(v3);
  sub_1D8D08A50(v3, &qword_1ECABA6C0, &qword_1D91B64E0);

  return MEMORY[0x1EEE6DFA0](sub_1D90E2FB0, 0, 0);
}

uint64_t sub_1D90E2FB0()
{

  v1 = *(v0 + 8);

  return v1();
}

void PodcastsMediaLibrary.PlaybackQueueContext.resolvedContext(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = *(v2 + 72);
  v9 = *(v2 + 80);
  v10 = *(v2 + 88);
  v11 = *(v2 + 40);
  v21 = *(v2 + 56);
  v22 = v11;
  v23[0] = v11;
  v23[1] = v21;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  sub_1D90E6430(v2, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_1D90E6598(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
  v14 = (v13 + ((v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = a1;
  v14[1] = a2;
  v15 = v22;
  v16 = v10;

  v17 = v15;

  v18 = v9;
  sub_1D90B5D9C(v23, sub_1D90E6498, v13);

  v19 = v25;
  v20 = v26;
}

uint64_t sub_1D90E320C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = a4;
  v104 = a3;
  v108 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v102 = &v95 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA6C0, &qword_1D91B64E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v97 = (&v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v99 = &v95 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v98 = &v95 - v12;
  v13 = type metadata accessor for PlaybackIntent(0);
  v107 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v95 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v100 = v17;
  v101 = &v95 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v96 = &v95 - v19;
  v20 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v103 = (&v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v95 - v24;
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v95 - v29;
  v32 = *a1;
  v31 = *(a1 + 8);
  v33 = *(a1 + 16);
  v34 = *(a1 + 17);
  v105 = v13;
  if (v34)
  {
    v97 = v28;
    v35 = v33;
    v36 = v31;
    v103 = v20;
    if (qword_1ECAB0D48 != -1)
    {
      swift_once();
    }

    v37 = sub_1D917744C();
    __swift_project_value_buffer(v37, qword_1ECAB0D50);
    v38 = v32;
    sub_1D90B822C(v32);
    v39 = sub_1D917741C();
    v40 = sub_1D9178D1C();
    sub_1D90B823C(v38, v36, v35, 1);
    v41 = v21;
    if (os_log_type_enabled(v39, v40))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      sub_1D90E6EA0();
      swift_allocError();
      *v44 = v38;
      sub_1D90B822C(v38);
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v45;
      *v43 = v45;
      _os_log_impl(&dword_1D8CEC000, v39, v40, "Error resolving PlaybackQueueContext: %@", v42, 0xCu);
      sub_1D8D08A50(v43, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v43, -1, -1);
      MEMORY[0x1DA72CB90](v42, -1, -1);
    }

    v46 = v108;
    sub_1D90E6430(v108, v30, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    v47 = v97;
    sub_1D90E6430(v30, v97, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    v48 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v49 = swift_allocObject();
    sub_1D90E6598(v30, v49 + v48, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    v50 = (v49 + ((v22 + v48 + 7) & 0xFFFFFFFFFFFFFFF8));
    v51 = v104;
    v52 = v106;
    *v50 = v104;
    v50[1] = v52;
    v53 = v98;
    sub_1D8D088B4(v46 + *(v103 + 9), v98, &qword_1ECABA6C0, &qword_1D91B64E0);
    v54 = v107;
    v55 = v105;
    LODWORD(v48) = (*(v107 + 48))(v53, 1, v105);

    if (v48 == 1)
    {
      sub_1D8D08A50(v53, &qword_1ECABA6C0, &qword_1D91B64E0);
      v56 = v99;
      (*(v54 + 56))(v99, 1, 1, v55);
      sub_1D90E3CA0(v56, v47, v51, v52);

      sub_1D8D08A50(v56, &qword_1ECABA6C0, &qword_1D91B64E0);
      v57 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext;
      v58 = v47;
    }

    else
    {
      sub_1D90E6538(v47, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
      v77 = v96;
      sub_1D90E6598(v53, v96, type metadata accessor for PlaybackIntent);
      v78 = sub_1D917886C();
      v79 = v102;
      (*(*(v78 - 8) + 56))(v102, 1, 1, v78);
      v80 = v101;
      sub_1D90E6430(v77, v101, type metadata accessor for PlaybackIntent);
      v81 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v82 = (v100 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
      v83 = swift_allocObject();
      *(v83 + 16) = 0;
      *(v83 + 24) = 0;
      sub_1D90E6598(v80, v83 + v81, type metadata accessor for PlaybackIntent);
      v84 = (v83 + v82);
      *v84 = sub_1D90E68C0;
      v84[1] = v49;

      sub_1D8E91268(0, 0, v79, &unk_1D91B6600, v83);

      v58 = v77;
      v57 = type metadata accessor for PlaybackIntent;
    }
  }

  else
  {
    v59 = v33;
    sub_1D90E6430(v108, v25, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    sub_1D90E6430(v25, v103, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    v60 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v61 = (v60 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = (v60 + v22 + 31) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    sub_1D90E6598(v25, v63 + v60, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    v64 = v63 + v61;
    v65 = v32;
    *v64 = v32;
    *(v64 + 8) = v31;
    v66 = v59;
    v67 = v59 & 1;
    *(v64 + 16) = v59 & 1;
    v98 = v63;
    v68 = (v63 + v62);
    v70 = v104;
    v69 = v105;
    v71 = v106;
    *v68 = v104;
    v68[1] = v71;
    v72 = v108 + *(v20 + 36);
    v73 = v97;
    sub_1D8D088B4(v72, v97, &qword_1ECABA6C0, &qword_1D91B64E0);
    v74 = v107;
    if ((*(v107 + 48))(v73, 1, v69) == 1)
    {
      sub_1D90E6744(v65, v31, v66, 0);

      sub_1D8D08A50(v73, &qword_1ECABA6C0, &qword_1D91B64E0);
      v75 = v99;
      (*(v74 + 56))(v99, 1, 1, v69);
      v76 = v103;
      sub_1D90E4128(v75, v103, v65, v31, v67, v70, v71);

      sub_1D8D08A50(v75, &qword_1ECABA6C0, &qword_1D91B64E0);
      v57 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext;
      v58 = v76;
    }

    else
    {
      sub_1D90E6744(v65, v31, v66, 0);

      sub_1D90E6538(v103, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
      v85 = v95;
      sub_1D90E6598(v73, v95, type metadata accessor for PlaybackIntent);
      v86 = sub_1D917886C();
      v87 = v102;
      (*(*(v86 - 8) + 56))(v102, 1, 1, v86);
      v88 = v101;
      sub_1D90E6430(v85, v101, type metadata accessor for PlaybackIntent);
      v89 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v90 = (v100 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
      v91 = swift_allocObject();
      *(v91 + 16) = 0;
      *(v91 + 24) = 0;
      sub_1D90E6598(v88, v91 + v89, type metadata accessor for PlaybackIntent);
      v92 = (v91 + v90);
      v93 = v98;
      *v92 = sub_1D90E6690;
      v92[1] = v93;

      sub_1D8E91268(0, 0, v87, &unk_1D91B65F8, v91);

      v58 = v85;
      v57 = type metadata accessor for PlaybackIntent;
    }
  }

  return sub_1D90E6538(v58, v57);
}

uint64_t sub_1D90E3CA0(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v70 = a4;
  v71 = a3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA6D8, &qword_1D91B6610);
  MEMORY[0x1EEE9AC00](v69);
  v55 = &v44 - v6;
  v7 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *a2;
  v68 = *(a2 + 16);
  v64 = a2[11];
  sub_1D8D088B4(a1, &v10[v8[11]], &qword_1ECABA6C0, &qword_1D91B64E0);
  v67 = *(a2 + v8[16]);
  v11 = v8[13];
  v12 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v13 = *(*(v12 - 8) + 56);
  v14 = *(a2 + 3);
  v65 = *(a2 + 5);
  v66 = v14;
  v53 = v65;
  v50 = *(&v14 + 1);
  v15 = *(a2 + 7);
  v62 = *(a2 + 9);
  v63 = v15;
  v52 = v15;
  v54 = v62;
  v13(&v10[v11], 1, 1, v12);
  v16 = v8[15];
  v17 = a2 + v8[14];
  v60 = *v17;
  v47 = *(a2 + v8[12]);
  v58 = v17[8];
  v18 = v8[18];
  v48 = *(a2 + v8[17]);
  v57 = *(a2 + v18);
  v56 = *(a2 + v18 + 8);
  v19 = v8[19];
  v51 = v8[20];
  v20 = a2 + v19;
  v22 = *v20;
  v21 = *(v20 + 1);
  v59 = *(a2 + v16);
  v24 = *(v20 + 2);
  v23 = *(v20 + 3);
  v49 = v20[32];
  type metadata accessor for AccountResolver(0);
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  v27 = sub_1D917734C();
  (*(*(v27 - 8) + 56))(v25 + v26, 1, 1, v27);
  v46 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection;
  v45 = objc_allocWithZone(MEMORY[0x1E698D198]);

  v28 = v61;

  v29 = v53;

  v30 = *(&v54 + 1);
  v31 = v64;
  v32 = v64;
  v33 = v49;
  sub_1D8D0B37C(v22, v21, v24, v23, v49);
  v34 = [v45 init];
  *(v25 + v46) = v34;
  *&v10[v51] = v25;
  v35 = sub_1D90E6070(v28);
  *v10 = v28;
  *(v10 + 1) = v35;
  v36 = v67;
  v10[16] = v68;
  v37 = v63;
  *(v10 + 72) = v62;
  *(v10 + 56) = v37;
  *(v10 + 11) = v31;
  v38 = v66;
  *(v10 + 40) = v65;
  *(v10 + 24) = v38;
  v10[v8[16]] = v36;
  *&v10[v8[12]] = v47;
  v39 = &v10[v8[14]];
  *v39 = v60;
  v39[8] = v58;
  *&v10[v8[17]] = v48;
  v40 = &v10[v8[18]];
  *v40 = v57;
  v40[8] = v56;
  v41 = &v10[v8[19]];
  *v41 = v22;
  *(v41 + 1) = v21;
  *(v41 + 2) = v24;
  *(v41 + 3) = v23;
  v41[32] = v33;
  v10[v8[15]] = v59;
  v42 = v55;
  sub_1D90E6430(v10, v55, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
  swift_storeEnumTagMultiPayload();
  v71(v42);
  sub_1D8D08A50(v42, &qword_1ECABA6D8, &qword_1D91B6610);
  return sub_1D90E6538(v10, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
}

uint64_t sub_1D90E4128(uint64_t a1, uint64_t *a2, void *a3, void *a4, char a5, void (*a6)(uint64_t), uint64_t a7)
{
  v72 = a7;
  v73 = a6;
  v69 = a3;
  v70 = a4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA6D8, &qword_1D91B6610);
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v52 - v10;
  v11 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0);
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  v16 = *(a2 + 16) | a5;
  v17 = a2[7];
  v68 = a2[8];
  v59 = a2[9];
  sub_1D8D088B4(a1, &v14[v12[11]], &qword_1ECABA6C0, &qword_1D91B64E0);
  v66 = *(a2 + v12[16]);
  v18 = v12[13];
  v19 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v20 = *(*(v19 - 8) + 56);
  v65 = v16 & 1;
  v21 = *(a2 + 3);
  v76 = *(a2 + 5);
  v77 = v21;
  v20(&v14[v18], 1, 1, v19);
  v22 = v12[15];
  v23 = a2 + v12[14];
  v64 = *v23;
  v54 = *(a2 + v12[12]);
  v62 = v23[8];
  v24 = v12[18];
  v56 = *(a2 + v12[17]);
  v61 = *(a2 + v24);
  v60 = *(a2 + v24 + 8);
  v25 = v12[19];
  v58 = v12[20];
  v26 = a2 + v25;
  v27 = *(v26 + 1);
  v57 = *v26;
  v63 = *(a2 + v22);
  v28 = *(v26 + 2);
  v75 = *(v26 + 3);
  v74 = v26[32];
  type metadata accessor for AccountResolver(0);
  v29 = swift_allocObject();
  v55 = v29;
  v30 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  v31 = sub_1D917734C();
  (*(*(v31 - 8) + 56))(v29 + v30, 1, 1, v31);
  v53 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection;
  v52 = objc_allocWithZone(MEMORY[0x1E698D198]);
  v32 = v76;

  v33 = v32;

  v34 = v59;

  v35 = v69;
  v36 = v69;
  v37 = v70;
  v38 = v70;
  v39 = v57;
  sub_1D8D0B37C(v57, v27, v28, v75, v74);
  v40 = [v52 init];
  v41 = v55;
  *(v55 + v53) = v40;
  *&v14[v58] = v41;
  v42 = sub_1D90E6070(v15);
  *v14 = v15;
  *(v14 + 1) = v42;
  v43 = v66;
  v14[16] = v65;
  v44 = v68;
  *(v14 + 7) = v17;
  *(v14 + 8) = v44;
  *(v14 + 9) = v34;
  *(v14 + 10) = v35;
  *(v14 + 11) = v37;
  v45 = v77;
  *(v14 + 40) = v76;
  *(v14 + 24) = v45;
  v14[v12[16]] = v43;
  *&v14[v12[12]] = v54;
  v46 = &v14[v12[14]];
  *v46 = v64;
  v46[8] = v62;
  *&v14[v12[17]] = v56;
  v47 = &v14[v12[18]];
  *v47 = v61;
  v47[8] = v60;
  v48 = &v14[v12[19]];
  *v48 = v39;
  *(v48 + 1) = v27;
  v49 = v75;
  *(v48 + 2) = v28;
  *(v48 + 3) = v49;
  v48[32] = v74;
  v14[v12[15]] = v63;
  v50 = v67;
  sub_1D90E6430(v14, v67, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
  swift_storeEnumTagMultiPayload();
  v73(v50);
  sub_1D8D08A50(v50, &qword_1ECABA6D8, &qword_1D91B6610);
  return sub_1D90E6538(v14, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
}

uint64_t static PodcastsMediaLibrary.PlaybackQueueContext.supportsTrackIdentifier(trackIdentifier:)(uint64_t a1, void *a2)
{

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  URLTrackIdentifier.init(string:)(v4);
  if (!v5)
  {
    LOBYTE(a2) = v7 != 0;
    if (v7)
    {
    }
  }

  return a2 & 1;
}

double PodcastsMediaLibrary.PlaybackQueueContext.request.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v221 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA6C0, &qword_1D91B64E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v213 - v4;
  v220 = type metadata accessor for PlaybackIntent(0);
  v6 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v218 = &v213 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v217 = &v213 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v216 = &v213 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v215 = &v213 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v214 = &v213 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v223 = &v213 - v17;
  v219 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0);
  MEMORY[0x1EEE9AC00](v219);
  v213 = &v213 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v213 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v213 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v213 - v26);
  if (qword_1ECAB0D48 != -1)
  {
    swift_once();
  }

  v28 = sub_1D917744C();
  __swift_project_value_buffer(v28, qword_1ECAB0D50);
  v29 = sub_1D917741C();
  v30 = sub_1D9178D1C();
  v31 = os_log_type_enabled(v29, v30);
  v222 = v1;
  if (v31)
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1D8CEC000, v29, v30, "􀒖 Creating request from context", v32, 2u);
    v33 = v32;
    v2 = v222;
    MEMORY[0x1DA72CB90](v33, -1, -1);
  }

  if (*(*v2 + 16))
  {
    v34 = sub_1D917741C();
    v35 = sub_1D9178D1C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1D8CEC000, v34, v35, " ╲╭ Using track identifiers", v36, 2u);
      MEMORY[0x1DA72CB90](v36, -1, -1);
    }

    sub_1D90E6430(v2, v27, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    v37 = sub_1D917741C();
    v38 = sub_1D9178D1C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v233 = v40;
      *v39 = 141558275;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      v41 = MEMORY[0x1DA729BD0](*v27, MEMORY[0x1E69E6158]);
      v43 = v42;
      sub_1D90E6538(v27, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
      v44 = v41;
      v2 = v222;
      v45 = sub_1D8CFA924(v44, v43, &v233);

      *(v39 + 14) = v45;
      _os_log_impl(&dword_1D8CEC000, v37, v38, "  ╰ ID: %{private,mask.hash}s", v39, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x1DA72CB90](v40, -1, -1);
      MEMORY[0x1DA72CB90](v39, -1, -1);
    }

    else
    {

      sub_1D90E6538(v27, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    }

    v55 = v221;
    sub_1D90E6430(v2, v24, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    *&v56 = PodcastsMediaLibrary.Request.init(playbackQueueContext:)(v24, v55);
    return *&v56;
  }

  v46 = v219;
  sub_1D8D088B4(v2 + v219[9], v5, &qword_1ECABA6C0, &qword_1D91B64E0);
  if ((*(v6 + 48))(v5, 1, v220) != 1)
  {
    sub_1D90E6598(v5, v223, type metadata accessor for PlaybackIntent);
    v57 = sub_1D917741C();
    v58 = sub_1D9178D1C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_1D8CEC000, v57, v58, " ╲╭ 􀐚 Using intent", v59, 2u);
      MEMORY[0x1DA72CB90](v59, -1, -1);
    }

    v60 = v214;
    sub_1D90E6430(v223, v214, type metadata accessor for PlaybackIntent);
    v61 = sub_1D917741C();
    v62 = sub_1D9178D1C();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *&v233 = v64;
      *v63 = 136315138;
      v65 = 0xE700000000000000;
      v66 = 0x7972617262696CLL;
      v67 = *(v60 + 32);
      if (v67 == 7)
      {
        v66 = 0xD00000000000001BLL;
        v65 = 0x80000001D91D59C0;
      }

      if (v67 == 6)
      {
        v66 = 0x657551616964656DLL;
        v65 = 0xEA00000000007972;
      }

      v68 = 0xE700000000000000;
      v69 = 0x6E6F6974617473;
      if (v67 != 4)
      {
        v69 = 0x746F687370616E73;
        v68 = 0xE800000000000000;
      }

      if (*(v60 + 32) <= 5u)
      {
        v66 = v69;
        v65 = v68;
      }

      v70 = 0xED00007365646F73;
      v71 = 0x6970456C61636F6CLL;
      if (v67 != 2)
      {
        v71 = 0x646F506C61636F6CLL;
        v70 = 0xEC00000074736163;
      }

      v72 = 0xE700000000000000;
      v73 = 0x74736163646F70;
      if (*(v60 + 32))
      {
        v73 = 0x7365646F73697065;
        v72 = 0xE800000000000000;
      }

      if (*(v60 + 32) <= 1u)
      {
        v71 = v73;
        v70 = v72;
      }

      if (*(v60 + 32) <= 3u)
      {
        v74 = v71;
      }

      else
      {
        v74 = v66;
      }

      if (*(v60 + 32) <= 3u)
      {
        v75 = v70;
      }

      else
      {
        v75 = v65;
      }

      v76 = v64;
      sub_1D90E6538(v60, type metadata accessor for PlaybackIntent);
      v77 = sub_1D8CFA924(v74, v75, &v233);

      *(v63 + 4) = v77;
      _os_log_impl(&dword_1D8CEC000, v61, v62, "  |  \\╭ identifier type: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      MEMORY[0x1DA72CB90](v76, -1, -1);
      MEMORY[0x1DA72CB90](v63, -1, -1);
    }

    else
    {

      sub_1D90E6538(v60, type metadata accessor for PlaybackIntent);
    }

    v78 = v215;
    sub_1D90E6430(v223, v215, type metadata accessor for PlaybackIntent);
    v79 = sub_1D917741C();
    v80 = sub_1D9178D1C();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *&v228 = v82;
      *v81 = 136315138;
      v83 = *(v78 + 8);
      v84 = *(v78 + 16);
      v85 = *(v78 + 24);
      v86 = *(v78 + 32);
      *&v233 = *v78;
      *(&v233 + 1) = v83;
      *&v234 = v84;
      *(&v234 + 1) = v85;
      LOBYTE(v235[0]) = v86;
      sub_1D8D092C0(v233, v83, v84, v85, v86);
      v87 = sub_1D917826C();
      v89 = v88;
      sub_1D90E6538(v78, type metadata accessor for PlaybackIntent);
      v90 = sub_1D8CFA924(v87, v89, &v228);

      *(v81 + 4) = v90;
      _os_log_impl(&dword_1D8CEC000, v79, v80, "  |   ╰ identifiers: %s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      MEMORY[0x1DA72CB90](v82, -1, -1);
      MEMORY[0x1DA72CB90](v81, -1, -1);
    }

    else
    {

      sub_1D90E6538(v78, type metadata accessor for PlaybackIntent);
    }

    v91 = v216;
    sub_1D90E6430(v223, v216, type metadata accessor for PlaybackIntent);
    v92 = sub_1D917741C();
    v93 = sub_1D9178D1C();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *&v233 = v95;
      *v94 = 136446210;
      LOBYTE(v228) = *(v91 + *(v220 + 24));
      v96 = sub_1D917826C();
      v97 = v91;
      v98 = v96;
      v100 = v99;
      sub_1D90E6538(v97, type metadata accessor for PlaybackIntent);
      v101 = sub_1D8CFA924(v98, v100, &v233);

      *(v94 + 4) = v101;
      _os_log_impl(&dword_1D8CEC000, v92, v93, "  │ Origin: %{public}s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v95);
      MEMORY[0x1DA72CB90](v95, -1, -1);
      MEMORY[0x1DA72CB90](v94, -1, -1);
    }

    else
    {

      sub_1D90E6538(v91, type metadata accessor for PlaybackIntent);
    }

    v102 = v217;
    sub_1D90E6430(v223, v217, type metadata accessor for PlaybackIntent);
    v103 = sub_1D917741C();
    v104 = sub_1D9178D1C();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *v105 = 136315138;
      v107 = v102 + *(v220 + 24);
      *(&v235[2] + 13) = *(v107 + 125);
      v108 = *(v107 + 112);
      v109 = *(v107 + 80);
      v110 = *(v107 + 64);
      v235[1] = *(v107 + 96);
      v235[2] = v108;
      v111 = *(v107 + 48);
      v234 = *(v107 + 64);
      v235[0] = v109;
      v233 = v111;
      v230 = v109;
      v231 = v235[1];
      v232[0] = *(v107 + 112);
      v224 = v106;
      *(v232 + 13) = *(v107 + 125);
      v228 = v111;
      v229 = v110;
      v112 = v102;
      sub_1D8D088B4(&v233, v225, &qword_1ECAB9F78, qword_1D91B16D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F78, qword_1D91B16D0);
      v113 = sub_1D917826C();
      v115 = v114;
      sub_1D90E6538(v112, type metadata accessor for PlaybackIntent);
      v116 = sub_1D8CFA924(v113, v115, &v224);

      *(v105 + 4) = v116;
      _os_log_impl(&dword_1D8CEC000, v103, v104, "  │ Settings: %s", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v106);
      MEMORY[0x1DA72CB90](v106, -1, -1);
      MEMORY[0x1DA72CB90](v105, -1, -1);
    }

    else
    {

      sub_1D90E6538(v102, type metadata accessor for PlaybackIntent);
    }

    v117 = v222;
    v118 = v218;
    sub_1D90E6430(v223, v218, type metadata accessor for PlaybackIntent);
    v119 = sub_1D917741C();
    v120 = sub_1D9178D1C();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      *&v233 = v122;
      *v121 = 136446210;
      v123 = v220;
      sub_1D8CF1E88();
      v124 = sub_1D9178AAC();
      v126 = v125;
      sub_1D90E6538(v118, type metadata accessor for PlaybackIntent);
      v127 = sub_1D8CFA924(v124, v126, &v233);

      *(v121 + 4) = v127;
      _os_log_impl(&dword_1D8CEC000, v119, v120, "  ╰ Options: %{public}s", v121, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v122);
      MEMORY[0x1DA72CB90](v122, -1, -1);
      MEMORY[0x1DA72CB90](v121, -1, -1);
    }

    else
    {

      sub_1D90E6538(v118, type metadata accessor for PlaybackIntent);
      v123 = v220;
    }

    v129 = *v223;
    v128 = *(v223 + 8);
    v130 = *(v223 + 16);
    v131 = *(v223 + 24);
    v132 = *(v223 + 32);
    v133 = *(v223 + *(v123 + 28));
    v134 = *(v133 + 16);
    v217 = v128;
    v220 = v130;
    LODWORD(v218) = v132;
    if (v134)
    {
      v216 = v131;
      sub_1D9179DBC();
      MEMORY[0x1DA72B390](2);
      v135 = sub_1D9179E1C();
      v136 = -1 << *(v133 + 32);
      v137 = v135 & ~v136;
      if ((*(v133 + 56 + ((v137 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v137))
      {
        v138 = v128;
        v139 = ~v136;
        v215 = v129;
        sub_1D8D092C0(v129, v138, v220, v216, v218);
        do
        {
          v140 = *(v133 + 48) + 24 * v137;
          v141 = *v140;
          v142 = *(v140 + 8);
          v143 = *(v140 + 16);
          if (v143 > 1)
          {
            if (v143 != 2 && !(v141 ^ 1 | v142))
            {
              v147 = v117;
              sub_1D8D02FCC(v141, v142, 3);
              v222 = 1;
              sub_1D8D02FCC(1, 0, 3);
              goto LABEL_74;
            }
          }

          else if (*(v140 + 16))
          {
            v144 = *v140;
            v145 = *(v140 + 8);
            v146 = *(v140 + 16);

            LOBYTE(v143) = v146;
            v117 = v222;
            v142 = v145;
            v141 = v144;
          }

          sub_1D8D02FCC(v141, v142, v143);
          sub_1D8D02FCC(1, 0, 3);
          v137 = (v137 + 1) & v139;
        }

        while (((*(v133 + 56 + ((v137 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v137) & 1) != 0);
        v147 = v117;
        v222 = 0;
LABEL_74:
        v176 = v215;
        v166 = v216;
        goto LABEL_77;
      }

      v147 = v117;
      v163 = v129;
      v164 = v128;
      v165 = v220;
      v166 = v216;
      v167 = v216;
      v168 = v218;
    }

    else
    {
      v147 = v117;
      v163 = v129;
      v164 = v128;
      v165 = v130;
      v166 = v131;
      v167 = v131;
      v168 = v132;
    }

    sub_1D8D092C0(v163, v164, v165, v167, v168);
    v222 = 0;
    v176 = v129;
LABEL_77:
    v177 = *(v123 + 24);
    v178 = v223;
    v179 = v223 + v177;
    v180 = *(v179 + 112);
    v181 = *(v179 + 64);
    v182 = *(v179 + 80);
    v226 = *(v179 + 96);
    v227[0] = v180;
    v183 = *(v179 + 64);
    v225[0] = *(v179 + 48);
    v225[1] = v183;
    v225[2] = v182;
    *(v227 + 13) = *(v179 + 125);
    v184 = v147 + v219[17];
    v185 = *v184;
    v186 = *(v184 + 8);
    v187 = *(v184 + 16);
    v188 = *(v184 + 24);
    v189 = *(v184 + 32);
    v228 = v225[0];
    v229 = v181;
    v190 = *(v179 + 112);
    *(v232 + 13) = *(v179 + 125);
    v231 = v226;
    v232[0] = v190;
    v230 = v182;
    sub_1D8D088B4(v225, &v233, &qword_1ECAB9F78, qword_1D91B16D0);
    sub_1D8D0B37C(v185, v186, v187, v188, v189);
    sub_1D90E6538(v178, type metadata accessor for PlaybackIntent);
    *&v233 = v176;
    *(&v233 + 1) = v217;
    *&v234 = v220;
    *(&v234 + 1) = v166;
    LOBYTE(v235[0]) = v218;
    *(&v235[0] + 1) = 0;
    v235[1] = 0uLL;
    v235[4] = v230;
    v235[5] = v231;
    v235[6] = v232[0];
    *(&v235[6] + 13) = *(v232 + 13);
    v235[2] = v228;
    v235[3] = v229;
    *(&v235[7] + 1) = v222;
    *&v236 = 0;
    WORD4(v236) = 2;
    *&v237 = v185;
    *(&v237 + 1) = v186;
    *&v238 = v187;
    *(&v238 + 1) = v188;
    v239 = v189;
    nullsub_1();
    v191 = v237;
    v192 = v221;
    *(v221 + 160) = v236;
    *(v192 + 176) = v191;
    *(v192 + 192) = v238;
    *(v192 + 208) = v239;
    v193 = v235[5];
    *(v192 + 96) = v235[4];
    *(v192 + 112) = v193;
    v194 = v235[7];
    *(v192 + 128) = v235[6];
    *(v192 + 144) = v194;
    v195 = v235[1];
    *(v192 + 32) = v235[0];
    *(v192 + 48) = v195;
    v196 = v235[3];
    *(v192 + 64) = v235[2];
    *(v192 + 80) = v196;
    v56 = v233;
    v197 = v234;
LABEL_78:
    *v192 = v56;
    *(v192 + 16) = v197;
    return *&v56;
  }

  sub_1D8D08A50(v5, &qword_1ECABA6C0, &qword_1D91B64E0);
  v47 = *(v2 + v46[10]);
  if (*(v47 + 16))
  {
    v48 = sub_1D917741C();
    v49 = sub_1D9178D1C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1D8CEC000, v48, v49, " ╲╭ Using restorable snapshot", v50, 2u);
      MEMORY[0x1DA72CB90](v50, -1, -1);
    }

    sub_1D90E6430(v2, v21, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    v51 = sub_1D917741C();
    v52 = sub_1D9178D1C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 134349056;
      v54 = *(*&v21[v219[10]] + 16);
      sub_1D90E6538(v21, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
      *(v53 + 4) = v54;
      _os_log_impl(&dword_1D8CEC000, v51, v52, "  ╰ Items in snapshot: %{public}ld", v53, 0xCu);
      MEMORY[0x1DA72CB90](v53, -1, -1);
    }

    else
    {
      sub_1D90E6538(v21, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    }

    v233 = v47;
    v234 = 0uLL;
    LOBYTE(v235[0]) = 5;
    *(v235 + 8) = 0u;
    *(&v235[1] + 8) = 0u;
    *(&v235[2] + 8) = 0u;
    *(&v235[3] + 8) = 0u;
    *(&v235[4] + 8) = 0u;
    *(&v235[5] + 8) = 0u;
    *(&v235[6] + 1) = 0;
    BYTE4(v235[7]) = 0;
    LODWORD(v235[7]) = 2;
    *(&v235[7] + 1) = 0;
    *&v236 = 0;
    WORD4(v236) = 2;
    v237 = 0u;
    v238 = 0u;
    v239 = -1;
    nullsub_1();
    v169 = v237;
    v170 = v221;
    *(v221 + 160) = v236;
    *(v170 + 176) = v169;
    *(v170 + 192) = v238;
    *(v170 + 208) = v239;
    v171 = v235[5];
    *(v170 + 96) = v235[4];
    *(v170 + 112) = v171;
    v172 = v235[7];
    *(v170 + 128) = v235[6];
    *(v170 + 144) = v172;
    v173 = v235[1];
    *(v170 + 32) = v235[0];
    *(v170 + 48) = v173;
    v174 = v235[3];
    *(v170 + 64) = v235[2];
    *(v170 + 80) = v174;
    v175 = v234;
    *v170 = v233;
    *(v170 + 16) = v175;

    return *&v56;
  }

  v148 = *(v2 + v46[15]);
  if (!*(v148 + 16))
  {
    sub_1D90DCCC4(&v233);
    v198 = v237;
    v192 = v221;
    *(v221 + 160) = v236;
    *(v192 + 176) = v198;
    *(v192 + 192) = v238;
    *(v192 + 208) = v239;
    v199 = v235[5];
    *(v192 + 96) = v235[4];
    *(v192 + 112) = v199;
    v200 = v235[7];
    *(v192 + 128) = v235[6];
    *(v192 + 144) = v200;
    v201 = v235[1];
    *(v192 + 32) = v235[0];
    *(v192 + 48) = v201;
    v202 = v235[3];
    *(v192 + 64) = v235[2];
    *(v192 + 80) = v202;
    v56 = v233;
    v197 = v234;
    goto LABEL_78;
  }

  v149 = sub_1D917741C();
  v150 = sub_1D9178D1C();
  if (os_log_type_enabled(v149, v150))
  {
    v151 = swift_slowAlloc();
    *v151 = 0;
    _os_log_impl(&dword_1D8CEC000, v149, v150, " ╲╭ Using identifiers from media query", v151, 2u);
    MEMORY[0x1DA72CB90](v151, -1, -1);
  }

  v152 = v213;
  sub_1D90E6430(v2, v213, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
  v153 = sub_1D917741C();
  v154 = sub_1D9178D1C();
  if (os_log_type_enabled(v153, v154))
  {
    v155 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    *&v233 = v156;
    *v155 = 141558275;
    *(v155 + 4) = 1752392040;
    *(v155 + 12) = 2081;
    v157 = v219;
    v158 = MEMORY[0x1DA729BD0](*(v152 + v219[15]), MEMORY[0x1E69E76D8]);
    v160 = v159;
    sub_1D90E6538(v152, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    v161 = sub_1D8CFA924(v158, v160, &v233);
    v2 = v222;

    *(v155 + 14) = v161;
    _os_log_impl(&dword_1D8CEC000, v153, v154, "  ╰ Identifiers: %{private,mask.hash}s", v155, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v156);
    MEMORY[0x1DA72CB90](v156, -1, -1);
    MEMORY[0x1DA72CB90](v155, -1, -1);

    v162 = v221;
  }

  else
  {

    sub_1D90E6538(v152, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    v162 = v221;
    v157 = v219;
  }

  v203 = v2 + v157[16];
  v204 = *v203;
  v205 = *(v203 + 8);
  *&v233 = v148;
  *(&v233 + 1) = v204;
  v234 = v205;
  LOBYTE(v235[0]) = 6;
  *(v235 + 8) = 0u;
  *(&v235[1] + 8) = 0u;
  *(&v235[2] + 8) = 0u;
  *(&v235[3] + 8) = 0u;
  *(&v235[4] + 8) = 0u;
  *(&v235[5] + 8) = 0u;
  *(&v235[6] + 1) = 0;
  BYTE4(v235[7]) = 0;
  LODWORD(v235[7]) = 2;
  *(&v235[7] + 1) = 0;
  *&v236 = 0;
  WORD4(v236) = 2;
  v237 = 0u;
  v238 = 0u;
  v239 = -1;
  nullsub_1();
  v206 = v237;
  *(v162 + 160) = v236;
  *(v162 + 176) = v206;
  *(v162 + 192) = v238;
  *(v162 + 208) = v239;
  v207 = v235[5];
  *(v162 + 96) = v235[4];
  *(v162 + 112) = v207;
  v208 = v235[7];
  *(v162 + 128) = v235[6];
  *(v162 + 144) = v208;
  v209 = v235[1];
  *(v162 + 32) = v235[0];
  *(v162 + 48) = v209;
  v210 = v235[3];
  *(v162 + 64) = v235[2];
  *(v162 + 80) = v210;
  v211 = v234;
  *v162 = v233;
  *(v162 + 16) = v211;

  return *&v56;
}

void sub_1D90E5C18(void *a1)
{
  if (a1[2])
  {
    v1 = a1[4];
    v2 = a1[5];

    v3._countAndFlagsBits = v1;
    v3._object = v2;
    URLTrackIdentifier.init(string:)(v3);
    if (v4)
    {

      return;
    }

    if (v35[0])
    {
      if (!*(v35[0] + 16))
      {
        goto LABEL_27;
      }

      v5 = sub_1D8F06F8C(16);
      if ((v6 & 1) == 0)
      {
        goto LABEL_27;
      }

      v7 = (*(v35[0] + 56) + 16 * v5);
      v9 = *v7;
      v8 = v7[1];

      if (!v8)
      {
        return;
      }

      v10 = HIBYTE(v8) & 0xF;
      v11 = v9 & 0xFFFFFFFFFFFFLL;
      if (!((v8 & 0x2000000000000000) != 0 ? HIBYTE(v8) & 0xF : v9 & 0xFFFFFFFFFFFFLL))
      {
LABEL_27:

        return;
      }

      if ((v8 & 0x1000000000000000) != 0)
      {
        v15 = sub_1D8FF7E64();
        v33 = v34;
LABEL_72:

        if ((v33 & 1) == 0)
        {
          [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
        }

        return;
      }

      if ((v8 & 0x2000000000000000) != 0)
      {
        v35[0] = v9;
        v35[1] = v8 & 0xFFFFFFFFFFFFFFLL;
        if (v9 == 43)
        {
          if (v10)
          {
            if (--v10)
            {
              v15 = 0;
              v25 = v35 + 1;
              while (1)
              {
                v26 = *v25 - 48;
                if (v26 > 9)
                {
                  break;
                }

                v27 = 10 * v15;
                if ((v15 * 10) >> 64 != (10 * v15) >> 63)
                {
                  break;
                }

                v15 = v27 + v26;
                if (__OFADD__(v27, v26))
                {
                  break;
                }

                ++v25;
                if (!--v10)
                {
                  goto LABEL_71;
                }
              }
            }

            goto LABEL_70;
          }

LABEL_80:
          __break(1u);
          return;
        }

        if (v9 != 45)
        {
          if (v10)
          {
            v15 = 0;
            v30 = v35;
            while (1)
            {
              v31 = *v30 - 48;
              if (v31 > 9)
              {
                break;
              }

              v32 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                break;
              }

              v15 = v32 + v31;
              if (__OFADD__(v32, v31))
              {
                break;
              }

              ++v30;
              if (!--v10)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }

        if (v10)
        {
          if (--v10)
          {
            v15 = 0;
            v19 = v35 + 1;
            while (1)
            {
              v20 = *v19 - 48;
              if (v20 > 9)
              {
                break;
              }

              v21 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                break;
              }

              v15 = v21 - v20;
              if (__OFSUB__(v21, v20))
              {
                break;
              }

              ++v19;
              if (!--v10)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }
      }

      else
      {
        if ((v9 & 0x1000000000000000) != 0)
        {
          v13 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v13 = sub_1D917957C();
        }

        v14 = *v13;
        if (v14 == 43)
        {
          if (v11 >= 1)
          {
            v10 = v11 - 1;
            if (v11 != 1)
            {
              v15 = 0;
              if (v13)
              {
                v22 = v13 + 1;
                while (1)
                {
                  v23 = *v22 - 48;
                  if (v23 > 9)
                  {
                    goto LABEL_70;
                  }

                  v24 = 10 * v15;
                  if ((v15 * 10) >> 64 != (10 * v15) >> 63)
                  {
                    goto LABEL_70;
                  }

                  v15 = v24 + v23;
                  if (__OFADD__(v24, v23))
                  {
                    goto LABEL_70;
                  }

                  ++v22;
                  if (!--v10)
                  {
                    goto LABEL_71;
                  }
                }
              }

              goto LABEL_62;
            }

            goto LABEL_70;
          }

          goto LABEL_79;
        }

        if (v14 != 45)
        {
          if (v11)
          {
            v15 = 0;
            if (v13)
            {
              while (1)
              {
                v28 = *v13 - 48;
                if (v28 > 9)
                {
                  goto LABEL_70;
                }

                v29 = 10 * v15;
                if ((v15 * 10) >> 64 != (10 * v15) >> 63)
                {
                  goto LABEL_70;
                }

                v15 = v29 + v28;
                if (__OFADD__(v29, v28))
                {
                  goto LABEL_70;
                }

                ++v13;
                if (!--v11)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_62;
          }

LABEL_70:
          v15 = 0;
          LOBYTE(v10) = 1;
          goto LABEL_71;
        }

        if (v11 >= 1)
        {
          v10 = v11 - 1;
          if (v11 != 1)
          {
            v15 = 0;
            if (v13)
            {
              v16 = v13 + 1;
              while (1)
              {
                v17 = *v16 - 48;
                if (v17 > 9)
                {
                  goto LABEL_70;
                }

                v18 = 10 * v15;
                if ((v15 * 10) >> 64 != (10 * v15) >> 63)
                {
                  goto LABEL_70;
                }

                v15 = v18 - v17;
                if (__OFSUB__(v18, v17))
                {
                  goto LABEL_70;
                }

                ++v16;
                if (!--v10)
                {
                  goto LABEL_71;
                }
              }
            }

LABEL_62:
            LOBYTE(v10) = 0;
LABEL_71:
            v36 = v10;
            v33 = v10;
            goto LABEL_72;
          }

          goto LABEL_70;
        }

        __break(1u);
      }

      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }
  }
}

uint64_t sub_1D90E5FA4()
{
  if ([objc_opt_self() isRunningOnInternalOS])
  {
    v0 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
    v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v2 = [v0 stringForKey_];

    if (v2)
    {
    }
  }

  return 0;
}

void *sub_1D90E6070(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v2 = 0;
  v3 = a1 + 40;
  v4 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v5 = (v3 + 16 * v2);
    v6 = v2;
    while (1)
    {
      if (v6 >= v1)
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        result = sub_1D9179CFC();
        __break(1u);
        return result;
      }

      v2 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_47;
      }

      v8 = *(v5 - 1);
      v7 = *v5;

      v9._countAndFlagsBits = v8;
      v9._object = v7;
      URLTrackIdentifier.init(string:)(v9);
      if (!v10)
      {
        break;
      }

LABEL_5:

      ++v6;
      v5 += 2;
      if (v2 == v1)
      {
        goto LABEL_17;
      }
    }

    if (!v54)
    {
      goto LABEL_5;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1D8ECDAD0(0, *(v4 + 2) + 1, 1, v4);
    }

    v12 = *(v4 + 2);
    v11 = *(v4 + 3);
    if (v12 >= v11 >> 1)
    {
      v4 = sub_1D8ECDAD0((v11 > 1), v12 + 1, 1, v4);
    }

    *(v4 + 2) = v12 + 1;
    v13 = &v4[16 * v12];
    *(v13 + 4) = v54;
    v13[40] = v56;
    if (v2 != v1)
    {
      continue;
    }

    break;
  }

LABEL_17:
  v14 = *(v4 + 2);
  if (v14)
  {
    v15 = 0;
    v16 = v4 + 32;
    v17 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v15 >= *(v4 + 2))
      {
        goto LABEL_48;
      }

      v18 = *v16;
      if (*(*v16 + 16))
      {

        v19 = sub_1D8F06F8C(3);
        if ((v20 & 1) == 0)
        {
          goto LABEL_20;
        }

        v21 = (*(v18 + 56) + 16 * v19);
        v22 = v21[1];
        if (!v22 || !*(v18 + 16))
        {
          goto LABEL_20;
        }

        v23 = *v21;

        v24 = sub_1D8F06F8C(7);
        if ((v25 & 1) == 0)
        {
          goto LABEL_19;
        }

        v26 = (*(v18 + 56) + 16 * v24);
        v27 = v26[1];
        if (!v27)
        {
          goto LABEL_19;
        }

        v53 = *v26;
        v28 = v17[2];

        if (v28)
        {
          sub_1D8D33C70(v23, v22);
          if (v29)
          {

LABEL_19:

LABEL_20:

            goto LABEL_21;
          }
        }

        v52 = v27;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v23;
        v32 = isUniquelyReferenced_nonNull_native;
        v55 = v17;
        v33 = v17;
        v34 = v31;
        v35 = sub_1D8D33C70(v31, v22);
        v37 = v33[2];
        v38 = (v36 & 1) == 0;
        v39 = __OFADD__(v37, v38);
        v40 = v37 + v38;
        if (v39)
        {
          goto LABEL_49;
        }

        v41 = v36;
        if (v33[3] >= v40)
        {
          if (v32)
          {
            v42 = v34;
            if (v36)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v50 = v35;
            sub_1D8F83318();
            v35 = v50;
            v42 = v34;
            if (v41)
            {
              goto LABEL_37;
            }
          }
        }

        else
        {
          sub_1D9005FD0(v40, v32);
          v42 = v34;
          v35 = sub_1D8D33C70(v34, v22);
          if ((v41 & 1) != (v43 & 1))
          {
            goto LABEL_51;
          }

          if (v41)
          {
LABEL_37:
            v44 = v35;

            v17 = v55;
            v45 = (v55[7] + 16 * v44);
            *v45 = v53;
            v45[1] = v52;

            goto LABEL_20;
          }
        }

        v17 = v55;
        v55[(v35 >> 6) + 8] |= 1 << v35;
        v46 = (v55[6] + 16 * v35);
        *v46 = v42;
        v46[1] = v22;
        v47 = (v55[7] + 16 * v35);
        *v47 = v53;
        v47[1] = v52;

        v48 = v55[2];
        v39 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v39)
        {
          goto LABEL_50;
        }

        v55[2] = v49;
      }

LABEL_21:
      ++v15;
      v16 += 16;
      if (v14 == v15)
      {
        goto LABEL_45;
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC8];
LABEL_45:

  return v17;
}

uint64_t sub_1D90E6430(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D90E6498(uint64_t a1)
{
  v3 = *(type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_1D90E320C(a1, v1 + v4, v6, v7);
}

uint64_t sub_1D90E6538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D90E6598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D90E6604()
{
  result = qword_1ECABA6C8;
  if (!qword_1ECABA6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA6C8);
  }

  return result;
}

uint64_t sub_1D90E6690(uint64_t a1)
{
  v3 = *(type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = v1 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_1D90E4128(a1, (v1 + v4), v7, v8, v9, v11, v12);
}

id sub_1D90E6744(void *a1, void *a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return sub_1D90B822C(a1);
  }

  else
  {
    v6 = a2;

    return a1;
  }
}

uint64_t sub_1D90E6790(uint64_t a1)
{
  v4 = *(type metadata accessor for PlaybackIntent(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D8D5FF18;

  return sub_1D90E28D0(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_1D90E68C0(uint64_t a1)
{
  v3 = *(type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1D90E3CA0(a1, (v1 + v4), v6, v7);
}

uint64_t objectdestroy_10Tm_0()
{
  v1 = type metadata accessor for PlaybackIntent(0);
  v2 = *(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + ((v2 + 32) & ~v2);
  sub_1D8CFEACC(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32));
  v4 = v3 + *(v1 + 20);
  v5 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  if (!(*(*(v5 - 1) + 48))(v4, 1, v5))
  {

    v6 = v5[12];
    v7 = sub_1D9176C2C();
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);
    if (!v9(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }

    v10 = v5[18];
    if (!v9(v4 + v10, 1, v7))
    {
      (*(v8 + 8))(v4 + v10, v7);
    }

    v18 = v8;

    v11 = v5[22];
    v12 = sub_1D9176E3C();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v4 + v11, 1, v12))
    {
      (*(v13 + 8))(v4 + v11, v12);
    }

    v14 = v5[38];
    if (!v9(v4 + v14, 1, v7))
    {
      (*(v18 + 8))(v4 + v14, v7);
    }
  }

  v15 = v3 + *(v1 + 24);
  v16 = *(v15 + 40);
  if (v16 != 255)
  {
    sub_1D8CFEACC(*(v15 + 8), *(v15 + 16), *(v15 + 24), *(v15 + 32), v16);
  }

  if (*(v15 + 128) != 2)
  {
    sub_1D90AB0F8(*(v15 + 48), *(v15 + 56), *(v15 + 64), *(v15 + 72), *(v15 + 80), *(v15 + 88), *(v15 + 96), *(v15 + 104), *(v15 + 112));
  }

  return swift_deallocObject();
}

uint64_t sub_1D90E6D70(uint64_t a1)
{
  v4 = *(type metadata accessor for PlaybackIntent(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D8D58924;

  return sub_1D90E28D0(a1, v6, v7, v1 + v5, v9, v10);
}

unint64_t sub_1D90E6EA0()
{
  result = qword_1ECABA6D0;
  if (!qword_1ECABA6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA6D0);
  }

  return result;
}

void PodcastsMediaLibrary.PlaybackQueueContext.FeatureName.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_1D917980C();

  v5 = 4;
  if (v4 < 4)
  {
    v5 = v4;
  }

  *a3 = v5;
}

unint64_t PodcastsMediaLibrary.PlaybackQueueContext.FeatureName.rawValue.getter()
{
  v1 = 7368801;
  v2 = 0x746567646977;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 1769105779;
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

unint64_t sub_1D90E6FD0()
{
  result = qword_1ECABA6E0;
  if (!qword_1ECABA6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA6E0);
  }

  return result;
}

uint64_t sub_1D90E7024()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D90E70D8(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D90E7178(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D90E7234(unint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7368801;
  v4 = 0xE600000000000000;
  v5 = 0x746567646977;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001D91C7E50;
  }

  if (*v1)
  {
    v3 = 1769105779;
    v2 = 0xE400000000000000;
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

double PodcastsMediaLibrary.Request.init(playbackQueueContext:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D90E73D0(*a1, v19);
  v4 = v20;
  if (v20 == 255)
  {
    sub_1D90E7934(a1);
    sub_1D90DCCC4(v17);
    v11 = v17[11];
    *(a2 + 160) = v17[10];
    *(a2 + 176) = v11;
    *(a2 + 192) = v17[12];
    *(a2 + 208) = v18;
    v12 = v17[7];
    *(a2 + 96) = v17[6];
    *(a2 + 112) = v12;
    v13 = v17[9];
    *(a2 + 128) = v17[8];
    *(a2 + 144) = v13;
    v14 = v17[3];
    *(a2 + 32) = v17[2];
    *(a2 + 48) = v14;
    v15 = v17[5];
    *(a2 + 64) = v17[4];
    *(a2 + 80) = v15;
    result = *v17;
    v16 = v17[1];
    *a2 = v17[0];
    *(a2 + 16) = v16;
  }

  else
  {
    v5 = a1[10];
    v7 = a1[3];
    v6 = a1[4];

    v8 = v5;
    sub_1D90E7934(a1);
    v9 = v19[1];
    *a2 = v19[0];
    *(a2 + 16) = v9;
    *(a2 + 32) = v4;
    *(a2 + 40) = v5;
    *(a2 + 48) = v7;
    *(a2 + 56) = v6;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 148) = 0;
    *(a2 + 144) = 2;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 168) = 2;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = -1;
    nullsub_1();
  }

  return result;
}

void sub_1D90E73D0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  if (v3 < 2)
  {
    if (v3)
    {
      v18 = a1[4];
      v19 = a1[5];

      v20._countAndFlagsBits = v18;
      v20._object = v19;
      URLTrackIdentifier.init(string:)(v20);
      if (v21)
      {
      }

      else if (v69)
      {
        sub_1D90E7990(&v69, a2);

        return;
      }
    }

LABEL_61:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v64 = -1;
    goto LABEL_62;
  }

  v4 = 0;
  v5 = a1 + 5;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = &v5[2 * v4];
    v8 = v4;
    while (1)
    {
      if (v8 >= v3)
      {
        __break(1u);
LABEL_70:
        __break(1u);
        return;
      }

      v4 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_70;
      }

      v10 = *(v7 - 1);
      v9 = *v7;

      v11._countAndFlagsBits = v10;
      v11._object = v9;
      URLTrackIdentifier.init(string:)(v11);
      if (!v12)
      {
        break;
      }

LABEL_5:

      ++v8;
      v7 += 2;
      if (v4 == v3)
      {
        goto LABEL_19;
      }
    }

    v13 = v69;
    if (!v69)
    {
      goto LABEL_5;
    }

    v14 = v70;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D8ECDAD0(0, *(v6 + 2) + 1, 1, v6);
    }

    v16 = *(v6 + 2);
    v15 = *(v6 + 3);
    if (v16 >= v15 >> 1)
    {
      v6 = sub_1D8ECDAD0((v15 > 1), v16 + 1, 1, v6);
    }

    *(v6 + 2) = v16 + 1;
    v17 = &v6[16 * v16];
    *(v17 + 4) = v13;
    v17[40] = v14;
  }

  while (v4 != v3);
LABEL_19:
  KeyPath = swift_getKeyPath();
  v69 = MEMORY[0x1E69E7CD0];

  sub_1D90E7DB0(v23, KeyPath);
  v25 = v24;

  if (*(v25 + 16) != 1)
  {

    goto LABEL_60;
  }

  v26 = *(v25 + 40);

  if (v26 != 4)
  {
LABEL_60:

    goto LABEL_61;
  }

  v27 = *(v6 + 2);
  if (v27)
  {
    v28 = v6 + 32;
    v29 = MEMORY[0x1E69E7CC0];
    v68 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v30 = *v28;
      v31 = *(*v28 + 16);

      if (v31)
      {
        v32 = sub_1D8F06F8C(3);
        if ((v33 & 1) != 0 && (v34 = (*(v30 + 56) + 16 * v32), (v35 = v34[1]) != 0))
        {
          v36 = *v34;

          v42 = sub_1D8FE6808(v36, v35);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_1D8ECC958(0, *(v29 + 2) + 1, 1, v29);
          }

          v44 = *(v29 + 2);
          v43 = *(v29 + 3);
          if (v44 >= v43 >> 1)
          {
            v29 = sub_1D8ECC958((v43 > 1), v44 + 1, 1, v29);
          }

          *(v29 + 2) = v44 + 1;
          *&v29[8 * v44 + 32] = v42;
          if (!*(v30 + 16))
          {
            goto LABEL_49;
          }
        }

        else if (!*(v30 + 16))
        {
          goto LABEL_49;
        }

        v37 = sub_1D8F06F8C(3);
        if (v38)
        {
          v39 = (*(v30 + 56) + 16 * v37);
          v40 = v39[1];
          if (v40)
          {
            v41 = *v39;

            v45 = sub_1D8FE6808(v41, v40);

            if (v45 && v45 != 1000000000000)
            {

              v57 = 0;
              v67 = 0u;
              v65 = v45;
LABEL_54:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v68 = sub_1D8ECDBF8(0, *(v68 + 2) + 1, 1, v68);
              }

              v58 = v68;
              v60 = *(v68 + 2);
              v59 = *(v68 + 3);
              v61 = v67;
              if (v60 >= v59 >> 1)
              {
                v63 = sub_1D8ECDBF8((v59 > 1), v60 + 1, 1, v68);
                v61 = v67;
                v58 = v63;
              }

              *(v58 + 2) = v60 + 1;
              v68 = v58;
              v62 = &v58[40 * v60];
              *(v62 + 3) = v61;
              *(v62 + 2) = v65;
              v62[64] = v57;
              goto LABEL_50;
            }
          }
        }

        if (*(v30 + 16))
        {
          v47 = sub_1D8F06F8C(8);
          if (v48)
          {
            v49 = (*(v30 + 56) + 16 * v47);
            v50 = v49[1];
            if (v50)
            {
              if (*(v30 + 16))
              {
                v51 = *v49;

                v52 = sub_1D8F06F8C(5);
                if (v53)
                {
                  v54 = (*(v30 + 56) + 16 * v52);
                  v55 = v54[1];
                  v66 = *v54;

                  if (v55)
                  {
                    *&v56 = v66;
                    *(&v56 + 1) = v55;
                    v67 = v56;
                    *&v56 = v51;
                    *(&v56 + 1) = v50;
                    v65 = v56;
                    v57 = 1;
                    goto LABEL_54;
                  }
                }

                else
                {
                }
              }
            }
          }
        }
      }

LABEL_49:

LABEL_50:
      v28 += 16;
      if (!--v27)
      {
        goto LABEL_66;
      }
    }
  }

  v29 = MEMORY[0x1E69E7CC0];
  v68 = MEMORY[0x1E69E7CC0];
LABEL_66:

  if (*(v29 + 2) >= *(v68 + 2))
  {

    *a2 = v29;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v64 = 1;
  }

  else
  {

    *a2 = v68;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v64 = 7;
  }

LABEL_62:
  *(a2 + 32) = v64;
}

uint64_t sub_1D90E7934(uint64_t a1)
{
  v2 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D90E7990(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4 <= 1)
  {
    if (!*(a1 + 8))
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
      v40 = 8;
      goto LABEL_41;
    }

    if (!*(v3 + 16))
    {
      goto LABEL_40;
    }

    v22 = sub_1D8F06F8C(2);
    if (v23)
    {
      v24 = (*(v3 + 56) + 16 * v22);
      v25 = v24[1];
      if (v25)
      {
        v26 = *v24;

        v41 = sub_1D8FE6808(v26, v25);

        *a2 = v41;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        return;
      }
    }

    if (!*(v3 + 16))
    {
      goto LABEL_40;
    }

    v27 = sub_1D8F06F8C(3);
    if (v28)
    {
      v7 = (*(v3 + 56) + 16 * v27);
      v8 = v7[1];
      if (v8)
      {
        goto LABEL_7;
      }
    }

    if (!*(v3 + 16) || (v29 = sub_1D8F06F8C(0), (v30 & 1) == 0) || (v31 = (*(v3 + 56) + 16 * v29), (v32 = v31[1]) == 0))
    {
LABEL_40:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      v40 = -1;
      goto LABEL_41;
    }

    *a2 = *v31;
    *(a2 + 8) = v32;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v21 = 3;
LABEL_29:
    *(a2 + 32) = v21;
    goto LABEL_30;
  }

  if (v4 == 2)
  {
    if (!*(v3 + 16) || (v17 = sub_1D8F06F8C(0), (v18 & 1) == 0) || (v19 = (*(v3 + 56) + 16 * v17), (v20 = v19[1]) == 0))
    {
      if (qword_1ECAB0D48 != -1)
      {
        swift_once();
      }

      v35 = sub_1D917744C();
      __swift_project_value_buffer(v35, qword_1ECAB0D50);
      v36 = sub_1D917741C();
      v37 = sub_1D9178D1C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1D8CEC000, v36, v37, "Unable to find station UUID in track identifier", v38, 2u);
        MEMORY[0x1DA72CB90](v38, -1, -1);
      }

      goto LABEL_40;
    }

    *a2 = *v19;
    *(a2 + 8) = v20;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v21 = 4;
    goto LABEL_29;
  }

  if (v4 == 3)
  {
    goto LABEL_40;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_33;
  }

  v5 = sub_1D8F06F8C(3);
  if (v6)
  {
    v7 = (*(v3 + 56) + 16 * v5);
    v8 = v7[1];
    if (v8)
    {
LABEL_7:
      v9 = *v7;

      v10 = sub_1D8FE6808(v9, v8);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45A0, &unk_1D91941F0);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1D9189080;
      *(v39 + 32) = v10;
      *a2 = v39;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      v40 = 1;
LABEL_41:
      *(a2 + 32) = v40;
      return;
    }
  }

  if (!*(v3 + 16) || (v11 = sub_1D8F06F8C(1), (v12 & 1) == 0) || (v13 = (*(v3 + 56) + 16 * v11), (v14 = v13[1]) == 0))
  {
LABEL_33:
    v44 = v3;
    v45 = 4;

    sub_1D90D266C(&v44, v46);
    v33 = v47;
    if (v47 != 255)
    {
      v42 = v46[1];
      v43 = v46[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6060, &unk_1D9192040);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1D9189080;
      *(v34 + 32) = v43;
      *(v34 + 48) = v42;
      *(v34 + 64) = v33 & 1;
      *a2 = v34;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 7;
      return;
    }

    goto LABEL_40;
  }

  v15 = *v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D9189080;
  *(v16 + 32) = v15;
  *(v16 + 40) = v14;
  *a2 = v16;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 2;
LABEL_30:
}

void sub_1D90E7DB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = a1 + 40;
    v5 = MEMORY[0x1E69E7CC0];
    v14 = a1 + 40;
    do
    {
      v15 = v5;
      v6 = (v4 + 16 * v3);
      for (i = v3; ; ++i)
      {
        if (i >= v2)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }

        v3 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        v8 = *(v6 - 1);
        v9 = *v6;
        v17 = v8;
        v18 = v9;

        swift_getAtKeyPath();
        if (sub_1D8EFB7F4(v16, v16[1]))
        {
          break;
        }

        v6 += 16;
        if (v3 == v2)
        {
          return;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5 = v15;
      v19 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D8E3185C(0, *(v15 + 16) + 1, 1);
        v5 = v19;
      }

      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1D8E3185C((v11 > 1), v12 + 1, 1);
        v5 = v19;
      }

      *(v5 + 16) = v12 + 1;
      v13 = v5 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v9;
      v4 = v14;
    }

    while (v3 != v2);
  }
}

PodcastsFoundation::URLTrackIdentifier __swiftcall URLTrackIdentifier.init(command:arguments:)(PodcastsFoundation::URLTrackIdentifier::Command command, Swift::OpaquePointer arguments)
{
  *(v2 + 8) = *command;
  *v2 = arguments;
  result.command = arguments._rawValue;
  LOBYTE(result.arguments._rawValue) = command;
  return result;
}

void URLTrackIdentifier.stringValue.getter()
{
  v1 = v0;
  v2 = sub_1D91766EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v28 - v6;
  v7 = sub_1D91767FC();
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *(v1 + 8);
  sub_1D91767EC();
  sub_1D91767AC();
  v12 = *&aPlaypodcplaypo_0[8 * v11];
  v13 = *&aPlaypodcplaypo_0[8 * v11 + 40];
  v29 = v9;
  MEMORY[0x1DA727D30](v12, v13);
  v14 = v10 + 64;
  v15 = 1 << *(v10 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v10 + 64);
  v18 = (v15 + 63) >> 6;
  v28 = 0x80000001D91C8520;
  v34 = v3;
  v35 = v10;
  v36 = (v3 + 32);

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v33 = v2;
  if (v17)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      v27 = v29;
      sub_1D917671C();
      sub_1D91767CC();
      (*(v30 + 8))(v27, v31);
      return;
    }

    v17 = *(v14 + 8 * v21);
    ++v19;
    if (v17)
    {
      v19 = v21;
      do
      {
LABEL_8:
        v17 &= v17 - 1;

        v22 = v32;
        sub_1D91766BC();

        v23 = *v36;
        v24 = v33;
        (*v36)(v37, v22, v33);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1D8D8EDF4(0, *(v20 + 2) + 1, 1, v20);
        }

        v26 = *(v20 + 2);
        v25 = *(v20 + 3);
        if (v26 >= v25 >> 1)
        {
          v20 = sub_1D8D8EDF4((v25 > 1), v26 + 1, 1, v20);
        }

        *(v20 + 2) = v26 + 1;
        v23(&v20[((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v26], v37, v24);
      }

      while (v17);
    }
  }

  __break(1u);
}

Swift::String_optional __swiftcall URLTrackIdentifier.valueForArgument(_:)(PodcastsFoundation::URLTrackIdentifier::ArgumentKey a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = sub_1D8F06F8C(*a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 16 * v3);

    v7 = v5;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result.value._object = v6;
  result.value._countAndFlagsBits = v7;
  return result;
}

PodcastsFoundation::URLTrackIdentifier_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> URLTrackIdentifier.init(string:)(Swift::String string)
{
  v69 = v1;
  v3 = sub_1D91766EC();
  v70 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76F0, &qword_1D91B6700);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v63 - v7;
  v9 = sub_1D91767FC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D91767BC();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D90E9C54(v8);
LABEL_12:
    sub_1D90E9CBC();
    swift_allocError();
    *v19 = xmmword_1D918F800;
    result.value.arguments._rawValue = swift_willThrow();
    goto LABEL_53;
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_1D917675C();
  if (!v13)
  {
    (*(v10 + 8))(v12, v9);
    goto LABEL_12;
  }

  v66 = v10;
  v71 = v12;
  v14 = sub_1D917679C();
  if (!v15)
  {
    goto LABEL_10;
  }

  if (v14 == 0x7374736163646F70 && v15 == 0xE800000000000000)
  {
  }

  else
  {
    v17 = sub_1D9179ACC();

    if ((v17 & 1) == 0)
    {
LABEL_10:

      sub_1D90E9CBC();
      swift_allocError();
      *v18 = xmmword_1D918F800;
LABEL_16:
      swift_willThrow();
      result.value.arguments._rawValue = (*(v66 + 8))(v71, v9);
      goto LABEL_53;
    }
  }

  sub_1D90E94F8(&v76);
  v22 = v76;
  if (v76 == 5)
  {
    sub_1D90E9CBC();
    swift_allocError();
    *v23 = 0;
    v23[1] = 0;
    goto LABEL_16;
  }

  v24 = v71;
  v25 = sub_1D917670C();
  if (!v25)
  {
    v39 = sub_1D8E27754(MEMORY[0x1E69E7CC0]);
    result.value.arguments._rawValue = (*(v66 + 8))(v24, v9);
    v40 = v69;
LABEL_48:
    *v40 = v39;
    *(v40 + 8) = v22;
    goto LABEL_53;
  }

  v74 = v22;
  v68 = v9;
  v63[0] = v2;
  v63[1] = v25;
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = *(v70 + 16);
    v28 = v25 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    v67 = *(v70 + 72);
    v29 = (v70 + 8);
    v72 = MEMORY[0x1E69E7CC0];
    v70 += 16;
    v64 = v3;
    v65 = v27;
    v27(v5, v28, v3);
    while (1)
    {
      sub_1D91766CC();
      sub_1D90E9998(&v75);
      v30 = v75;
      if (v75 == 17)
      {
        (*v29)(v5, v3);
      }

      else
      {
        v31 = sub_1D91766DC();
        v33 = v32;
        (*v29)(v5, v3);
        v34 = v33;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v35 = v72;
        }

        else
        {
          v35 = sub_1D8ECD988(0, v72[2] + 1, 1, v72);
        }

        v37 = v35[2];
        v36 = v35[3];
        if (v37 >= v36 >> 1)
        {
          v35 = sub_1D8ECD988((v36 > 1), v37 + 1, 1, v35);
        }

        v35[2] = v37 + 1;
        v72 = v35;
        v38 = &v35[3 * v37];
        *(v38 + 32) = v30;
        v38[5] = v31;
        v38[6] = v34;
        v3 = v64;
        v27 = v65;
      }

      v28 += v67;
      if (!--v26)
      {
        break;
      }

      v27(v5, v28, v3);
    }
  }

  else
  {
    v72 = MEMORY[0x1E69E7CC0];
  }

  v39 = sub_1D8E27754(MEMORY[0x1E69E7CC0]);
  v41 = v72;
  v42 = v68;
  v70 = v72[2];
  if (!v70)
  {
    v46 = v71;
LABEL_47:
    (*(v66 + 8))(v46, v42);

    v40 = v69;
    LOBYTE(v22) = v74;
    goto LABEL_48;
  }

  v43 = 0;
  v44 = v72 + 6;
  while (v43 < v41[2])
  {
    v47 = *(v44 - 16);
    v49 = *(v44 - 1);
    v48 = *v44;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v39;
    v51 = sub_1D8F06F8C(v47);
    v53 = v39[2];
    v54 = (v52 & 1) == 0;
    v55 = __OFADD__(v53, v54);
    v56 = v53 + v54;
    if (v55)
    {
      goto LABEL_50;
    }

    v57 = v52;
    if (v39[3] >= v56)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v62 = v51;
        sub_1D8F850E4();
        v51 = v62;
      }
    }

    else
    {
      sub_1D900912C(v56, isUniquelyReferenced_nonNull_native);
      v51 = sub_1D8F06F8C(v47);
      if ((v57 & 1) != (v58 & 1))
      {
        goto LABEL_52;
      }
    }

    v42 = v68;
    v39 = v73;
    if (v57)
    {
      v45 = (v73[7] + 16 * v51);
      *v45 = v49;
      v45[1] = v48;
    }

    else
    {
      v73[(v51 >> 6) + 8] |= 1 << v51;
      *(v39[6] + v51) = v47;
      v59 = (v39[7] + 16 * v51);
      *v59 = v49;
      v59[1] = v48;

      v60 = v39[2];
      v55 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v55)
      {
        goto LABEL_51;
      }

      v39[2] = v61;
    }

    ++v43;
    v44 += 3;
    v46 = v71;
    v41 = v72;
    if (v70 == v43)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result.value.arguments._rawValue = sub_1D9179CFC();
  __break(1u);
LABEL_53:
  result.is_nil = v21;
  result.value.command = v20;
  return result;
}

PodcastsFoundation::URLTrackIdentifier::Command_optional __swiftcall URLTrackIdentifier.Command.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t URLTrackIdentifier.Command.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7461745379616C70;
  v3 = 0x6269726373627573;
  if (v1 != 3)
  {
    v3 = 0x6D65744979616C70;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (*v0 <= 1u)
  {
    return 0x63646F5079616C70;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D90E8CE4()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D90E8DD0(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D90E8EA8(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D90E8F9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000073747361;
  v4 = 0xEB000000006E6F69;
  v5 = 0x7461745379616C70;
  v6 = 0xE900000000000065;
  v7 = 0x6269726373627573;
  if (v2 != 3)
  {
    v7 = 0x6D65744979616C70;
    v6 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v3 = 0xEB00000000747361;
  }

  if (*v1 <= 1u)
  {
    v8 = 0x63646F5079616C70;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v4;
  }

  *a1 = v8;
  a1[1] = v3;
}

PodcastsFoundation::URLTrackIdentifier::ArgumentKey_optional __swiftcall URLTrackIdentifier.ArgumentKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D9179C6C();

  v5 = 17;
  if (v3 < 0x11)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t URLTrackIdentifier.ArgumentKey.rawValue.getter()
{
  result = 1684632949;
  switch(*v0)
  {
    case 1:
      result = 0x5565646F73697065;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x61725465726F7473;
      break;
    case 4:
      result = 0x6B63616279616C70;
      break;
    case 5:
      result = 0x4674736163646F70;
      break;
    case 6:
      result = 1684632420;
      break;
    case 7:
      result = 0x49746E65746E6F63;
      break;
    case 8:
      result = 0x4765646F73697065;
      break;
    case 9:
      result = 0x5465646F73697065;
      break;
    case 0xA:
      result = 0x5474736163646F70;
      break;
    case 0xB:
      result = 0x72556D6165727473;
      break;
    case 0xC:
      result = 0x6461656879616C70;
      break;
    case 0xD:
      result = 0x7361655279616C70;
      break;
    case 0xE:
      result = 0x747865746E6F63;
      break;
    case 0xF:
      result = 0x53747865746E6F63;
      break;
    case 0x10:
      result = 0x7265756575716E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D90E92D4()
{
  v0 = URLTrackIdentifier.ArgumentKey.rawValue.getter();
  v2 = v1;
  if (v0 == URLTrackIdentifier.ArgumentKey.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D9179ACC();
  }

  return v5 & 1;
}

unint64_t sub_1D90E937C@<X0>(unint64_t *a1@<X8>)
{
  result = URLTrackIdentifier.ArgumentKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D90E93A4()
{
  sub_1D9179DBC();
  URLTrackIdentifier.ArgumentKey.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D90E940C(uint64_t a1)
{
  URLTrackIdentifier.ArgumentKey.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D90E9470(uint64_t a1)
{
  sub_1D9179DBC();
  URLTrackIdentifier.ArgumentKey.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D90E94F8(char *a3@<X8>)
{
  v4 = byte_1F5462268;
  sub_1D8D447DC();
  v5 = sub_1D917923C();

  if (v5)
  {
    v4 = byte_1F5462269;
    v6 = sub_1D917923C();

    if (v6)
    {
      v4 = byte_1F546226A;
      v7 = sub_1D917923C();

      if (v7)
      {
        v4 = byte_1F546226B;
        v8 = sub_1D917923C();

        if (v8)
        {
          v4 = byte_1F546226C;
          v9 = sub_1D917923C();

          if (v9)
          {
            v4 = 5;
          }
        }
      }
    }
  }

  *a3 = v4;
}

void sub_1D90E9998(char *a3@<X8>)
{
  v3 = 0;
  while (v3 != 17)
  {
    v5 = byte_1F545DE50[v3 + 32];
    sub_1D8D447DC();
    v4 = sub_1D917923C();

    ++v3;
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  v5 = 17;
LABEL_6:

  *a3 = v5;
}

uint64_t sub_1D90E9C54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76F0, &qword_1D91B6700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D90E9CBC()
{
  result = qword_1ECABA6E8;
  if (!qword_1ECABA6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA6E8);
  }

  return result;
}

unint64_t sub_1D90E9D14()
{
  result = qword_1ECABA6F0;
  if (!qword_1ECABA6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA6F0);
  }

  return result;
}

unint64_t sub_1D90E9D9C()
{
  result = qword_1ECAB1ED8;
  if (!qword_1ECAB1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1ED8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation18URLTrackIdentifierV0cD5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D90E9E48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D90E9EA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

double sub_1D90E9F24(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = mach_absolute_time();
  v3 = v2 >= a1;
  v4 = v2 - a1;
  if (!v3)
  {
    __break(1u);
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  v6[0] = 0;
  mach_timebase_info(v6);
  if (!is_mul_ok(v4, v6[0].numer))
  {
    goto LABEL_6;
  }

  if (!v6[0].denom)
  {
    goto LABEL_7;
  }

  return (v4 * v6[0].numer / v6[0].denom) / 1000000000.0;
}

uint64_t sub_1D90E9FD0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE0, &qword_1D9195250);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC18PodcastsFoundation20PodcastsMediaLibrary____lazy_storage___signpostID;
  swift_beginAccess();
  sub_1D8D088B4(v1 + v9, v8, &qword_1ECAB6DE0, &qword_1D9195250);
  v10 = sub_1D917734C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1D8D08A50(v8, &qword_1ECAB6DE0, &qword_1D9195250);
  if (qword_1ECAAFC08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = qword_1ECAAFC10;

  sub_1D917730C();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1D9071830(v5, v1 + v9, &qword_1ECAB6DE0, &qword_1D9195250);
  return swift_endAccess();
}

uint64_t PodcastsMediaLibrary.__allocating_init(config:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC18PodcastsFoundation20PodcastsMediaLibrary____lazy_storage___signpostID;
  v4 = sub_1D917734C();
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  v5 = *(a1 + 80);
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = v5;
  *(v2 + 112) = *(a1 + 96);
  v6 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  v7 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v7;
  return v2;
}

uint64_t PodcastsMediaLibrary.init(config:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation20PodcastsMediaLibrary____lazy_storage___signpostID;
  v4 = sub_1D917734C();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v5;
  *(v1 + 112) = *(a1 + 96);
  v6 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v6;
  v7 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v7;
  return v1;
}

uint64_t sub_1D90EA370(uint64_t a1, void *a2, uint64_t a3)
{
  v95 = a2;
  v98 = sub_1D917734C();
  v5 = *(v98 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v97 = v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v90 = v88 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v89 = v88 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v88 - v12;
  v14 = swift_allocObject();
  v88[1] = a3;
  *(v14 + 16) = a3;
  v15 = *(a1 + 176);
  v141 = *(a1 + 160);
  v142 = v15;
  v143 = *(a1 + 192);
  v144 = *(a1 + 208);
  v16 = *(a1 + 112);
  v137 = *(a1 + 96);
  v138 = v16;
  v17 = *(a1 + 144);
  v139 = *(a1 + 128);
  v140 = v17;
  v18 = *(a1 + 48);
  v133 = *(a1 + 32);
  v134 = v18;
  v19 = *(a1 + 80);
  v135 = *(a1 + 64);
  v136 = v19;
  v20 = *(a1 + 16);
  v131 = *a1;
  v132 = v20;
  v96 = mach_absolute_time();
  if (qword_1ECAB0D48 != -1)
  {
    swift_once();
  }

  v21 = sub_1D917744C();
  v22 = __swift_project_value_buffer(v21, qword_1ECAB0D50);
  sub_1D90D09E0(&v131, &v117);
  v23 = sub_1D917741C();
  v24 = sub_1D9178D1C();
  sub_1D90CF72C(&v131);
  v25 = os_log_type_enabled(v23, v24);
  v93 = v22;
  v94 = v14;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *&v103 = v92;
    *v26 = 136315138;
    v127 = v141;
    v128 = v142;
    v129 = v143;
    v130 = v144;
    v123 = v137;
    v124 = v138;
    v125 = v139;
    v126 = v140;
    v119 = v133;
    v120 = v134;
    v121 = v135;
    v122 = v136;
    v117 = v131;
    v118 = v132;
    sub_1D90CF75C();
    v27 = MEMORY[0x1DA729BD0]();
    v29 = v28;

    v30 = sub_1D8CFA924(v27, v29, &v103);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1D8CEC000, v23, v24, "Calling media collection with request: %s", v26, 0xCu);
    v31 = v92;
    __swift_destroy_boxed_opaque_existential_1Tm(v92);
    MEMORY[0x1DA72CB90](v31, -1, -1);
    MEMORY[0x1DA72CB90](v26, -1, -1);
  }

  sub_1D9178F5C();
  if (qword_1ECAAFC08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v32 = qword_1ECAAFC10;
  v33 = v95;
  sub_1D90E9FD0(v13);
  sub_1D91772FC();

  v34 = *(v5 + 8);
  v35 = v98;
  v91 = v5 + 8;
  v92 = v34;
  (v34)(v13, v98);
  v36 = v89;
  sub_1D90E9FD0(v89);
  v37 = *(v5 + 32);
  v38 = v90;
  v37(v90, v36, v35);
  (*(v5 + 16))(v97, v38, v35);
  v39 = (*(v5 + 80) + 57) & ~*(v5 + 80);
  v40 = swift_allocObject();
  v41 = v94;
  *(v40 + 16) = sub_1D90EF544;
  *(v40 + 24) = v41;
  *(v40 + 32) = v96;
  *(v40 + 40) = "mediaCollection(for:completion:)";
  *(v40 + 48) = 32;
  *(v40 + 56) = 2;
  v42 = v35;
  v43 = v41;
  v37((v40 + v39), v38, v42);
  v113 = v141;
  v114 = v142;
  v115 = v143;
  v116 = v144;
  v109 = v137;
  v110 = v138;
  v111 = v139;
  v112 = v140;
  v105 = v133;
  v106 = v134;
  v107 = v135;
  v108 = v136;
  v103 = v131;
  v104 = v132;

  sub_1D90CF0E4(v33 + 2, &v117);
  v44 = v33[5];
  v45 = v33[6];
  __swift_project_boxed_opaque_existential_1(v33 + 2, v44);
  v46 = BYTE8(v127);
  (*(v45 + 8))(&v103, BYTE8(v127), v44, v45);
  if (*(&v104 + 1))
  {
    sub_1D8D6BCE0(&v103, v100);
    v47 = v101;
    v48 = v102;
    __swift_project_boxed_opaque_existential_1(v100, v101);
    v113 = v127;
    v114 = v128;
    v115 = v129;
    v116 = v130;
    v109 = v123;
    v110 = v124;
    v111 = v125;
    v112 = v126;
    v105 = v119;
    v106 = v120;
    v107 = v121;
    v108 = v122;
    v103 = v117;
    v104 = v118;
    if ((*(v48 + 16))(&v103, v47, v48))
    {
      (v92)(v97, v98);
      v49 = v101;
      v50 = v102;
      __swift_project_boxed_opaque_existential_1(v100, v101);
      v113 = v127;
      v114 = v128;
      v115 = v129;
      v116 = v130;
      v109 = v123;
      v110 = v124;
      v111 = v125;
      v112 = v126;
      v105 = v119;
      v106 = v120;
      v107 = v121;
      v108 = v122;
      v103 = v117;
      v104 = v118;
      v51 = swift_allocObject();
      v52 = v128;
      *(v51 + 184) = v127;
      *(v51 + 200) = v52;
      *(v51 + 216) = v129;
      v53 = v124;
      *(v51 + 120) = v123;
      *(v51 + 136) = v53;
      v54 = v126;
      *(v51 + 152) = v125;
      *(v51 + 168) = v54;
      v55 = v120;
      *(v51 + 56) = v119;
      *(v51 + 72) = v55;
      v56 = v122;
      *(v51 + 88) = v121;
      *(v51 + 104) = v56;
      v57 = v118;
      *(v51 + 24) = v117;
      *(v51 + 16) = v95;
      *(v51 + 232) = v130;
      *(v51 + 40) = v57;
      *(v51 + 240) = sub_1D90EF5E0;
      *(v51 + 248) = v40;
      *(v51 + 256) = sub_1D90EF544;
      *(v51 + 264) = v43;
      v58 = *(v50 + 8);

      sub_1D90D09E0(&v117, &v99);

      v58(&v103, sub_1D90EF5E4, v51, v49, v50);

      sub_1D90CF72C(&v117);
      __swift_destroy_boxed_opaque_existential_1Tm(v100);
    }

    else
    {
      v68 = sub_1D917741C();
      v69 = sub_1D9178CFC();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_1D8CEC000, v68, v69, "No provider for request found", v70, 2u);
        MEMORY[0x1DA72CB90](v70, -1, -1);
      }

      sub_1D90CC2C0();
      v71 = swift_allocError();
      *v72 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
      swift_allocError();
      *v73 = v71;
      swift_continuation_throwingResumeWithError();
      v74 = sub_1D917741C();
      v75 = sub_1D9178D1C();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 134217984;
        *(v76 + 4) = sub_1D90E9F24(v96);
        _os_log_impl(&dword_1D8CEC000, v74, v75, "PML Total request duration: %fs", v76, 0xCu);
        MEMORY[0x1DA72CB90](v76, -1, -1);
      }

      sub_1D9178F4C();
      v77 = qword_1ECAAFC10;
      v78 = v97;
      sub_1D91772FC();

      sub_1D90CF72C(&v117);
      (v92)(v78, v98);
      __swift_destroy_boxed_opaque_existential_1Tm(v100);
    }
  }

  else
  {
    sub_1D8D08A50(&v103, &qword_1ECABA5A8, &unk_1D91B6AB0);
    sub_1D90D09E0(&v117, &v103);
    v59 = sub_1D917741C();
    v60 = sub_1D9178CFC();
    sub_1D90CF72C(&v117);
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v103 = v62;
      *v61 = 136446210;
      v63 = 0xEC00000079726172;
      v64 = 0x62694C6C61636F6CLL;
      if (v46 != 1)
      {
        v64 = 0x7265666E69;
        v63 = 0xE500000000000000;
      }

      if (v46)
      {
        v65 = v64;
      }

      else
      {
        v65 = 0x495041616964656DLL;
      }

      if (v46)
      {
        v66 = v63;
      }

      else
      {
        v66 = 0xE800000000000000;
      }

      v67 = sub_1D8CFA924(v65, v66, &v103);

      *(v61 + 4) = v67;
      _os_log_impl(&dword_1D8CEC000, v59, v60, "No provider for %{public}s found", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x1DA72CB90](v62, -1, -1);
      MEMORY[0x1DA72CB90](v61, -1, -1);
    }

    else
    {
    }

    sub_1D90CC2C0();
    v79 = swift_allocError();
    *v80 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    swift_allocError();
    *v81 = v79;
    swift_continuation_throwingResumeWithError();
    v82 = sub_1D917741C();
    v83 = sub_1D9178D1C();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 134217984;
      *(v84 + 4) = sub_1D90E9F24(v96);
      _os_log_impl(&dword_1D8CEC000, v82, v83, "PML Total request duration: %fs", v84, 0xCu);
      MEMORY[0x1DA72CB90](v84, -1, -1);
    }

    sub_1D9178F4C();
    v85 = qword_1ECAAFC10;
    v86 = v97;
    sub_1D91772FC();

    sub_1D90CF72C(&v117);
    (v92)(v86, v98);
  }
}

uint64_t sub_1D90EAF44(uint64_t a1, uint64_t (*a2)(__int128 *), uint64_t a3)
{
  v86 = a2;
  v87 = a3;
  v89 = sub_1D917734C();
  v4 = *(v89 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v80 = &v78 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v78 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v78 - v11;
  v13 = *(a1 + 176);
  v143 = *(a1 + 160);
  v144 = v13;
  v145 = *(a1 + 192);
  v146 = *(a1 + 208);
  v14 = *(a1 + 112);
  v139 = *(a1 + 96);
  v140 = v14;
  v15 = *(a1 + 144);
  v141 = *(a1 + 128);
  v142 = v15;
  v16 = *(a1 + 48);
  v135 = *(a1 + 32);
  v136 = v16;
  v17 = *(a1 + 80);
  v137 = *(a1 + 64);
  v138 = v17;
  v18 = *(a1 + 16);
  v133 = *a1;
  v134 = v18;
  v85 = mach_absolute_time();
  if (qword_1ECAB0D48 != -1)
  {
    swift_once();
  }

  v19 = sub_1D917744C();
  v20 = __swift_project_value_buffer(v19, qword_1ECAB0D50);
  sub_1D90D09E0(&v133, &v103);
  v83 = v20;
  v21 = sub_1D917741C();
  v22 = sub_1D9178D1C();
  sub_1D90CF72C(&v133);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v82 = v12;
    v25 = v24;
    *&v90 = v24;
    *v23 = 136315138;
    v113 = v143;
    v114 = v144;
    v115[0] = v145;
    LOBYTE(v115[1]) = v146;
    v109 = v139;
    v110 = v140;
    v111 = v141;
    v112 = v142;
    v105 = v135;
    v106 = v136;
    v107 = v137;
    v108 = v138;
    v103 = v133;
    v104 = v134;
    sub_1D90CF75C();
    v26 = MEMORY[0x1DA729BD0]();
    v28 = v27;

    v29 = sub_1D8CFA924(v26, v28, &v90);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_1D8CEC000, v21, v22, "Calling media collection with request: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v30 = v25;
    v12 = v82;
    MEMORY[0x1DA72CB90](v30, -1, -1);
    MEMORY[0x1DA72CB90](v23, -1, -1);
  }

  sub_1D9178F5C();
  if (qword_1ECAAFC08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v31 = qword_1ECAAFC10;
  v32 = v84;
  sub_1D90E9FD0(v12);
  sub_1D91772FC();

  v33 = v89;
  v81 = *(v4 + 8);
  v82 = (v4 + 8);
  v81(v12, v89);
  v34 = v79;
  sub_1D90E9FD0(v79);
  v35 = *(v4 + 32);
  v36 = v80;
  v35(v80, v34, v33);
  (*(v4 + 16))(v88, v36, v33);
  v37 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v38 = swift_allocObject();
  v39 = v87;
  *(v38 + 16) = v86;
  *(v38 + 24) = v39;
  *(v38 + 32) = v85;
  *(v38 + 40) = "mediaCollection(for:completion:)";
  *(v38 + 48) = 32;
  *(v38 + 56) = 2;
  v35((v38 + v37), v36, v33);
  v113 = v143;
  v114 = v144;
  v115[0] = v145;
  LOBYTE(v115[1]) = v146;
  v109 = v139;
  v110 = v140;
  v111 = v141;
  v112 = v142;
  v105 = v135;
  v106 = v136;
  v107 = v137;
  v108 = v138;
  v103 = v133;
  v104 = v134;

  sub_1D90CF0E4(v32 + 2, &v119);
  v40 = v32[5];
  v41 = v32[6];
  __swift_project_boxed_opaque_existential_1(v32 + 2, v40);
  v42 = BYTE8(v129);
  (*(v41 + 8))(&v103, BYTE8(v129), v40, v41);
  if (*(&v104 + 1))
  {
    sub_1D8D6BCE0(&v103, v116);
    v43 = v117;
    v44 = v118;
    __swift_project_boxed_opaque_existential_1(v116, v117);
    v113 = v129;
    v114 = v130;
    v115[0] = v131;
    LOBYTE(v115[1]) = v132;
    v109 = v125;
    v110 = v126;
    v111 = v127;
    v112 = v128;
    v105 = v121;
    v106 = v122;
    v107 = v123;
    v108 = v124;
    v103 = v119;
    v104 = v120;
    if ((*(v44 + 16))(&v103, v43, v44))
    {
      v81(v88, v89);
      v45 = v117;
      v46 = v118;
      __swift_project_boxed_opaque_existential_1(v116, v117);
      v113 = v129;
      v114 = v130;
      v115[0] = v131;
      LOBYTE(v115[1]) = v132;
      v109 = v125;
      v110 = v126;
      v111 = v127;
      v112 = v128;
      v105 = v121;
      v106 = v122;
      v107 = v123;
      v108 = v124;
      v103 = v119;
      v104 = v120;
      v47 = swift_allocObject();
      v48 = v130;
      *(v47 + 184) = v129;
      *(v47 + 200) = v48;
      *(v47 + 216) = v131;
      v49 = v126;
      *(v47 + 120) = v125;
      *(v47 + 136) = v49;
      v50 = v128;
      *(v47 + 152) = v127;
      *(v47 + 168) = v50;
      v51 = v122;
      *(v47 + 56) = v121;
      *(v47 + 72) = v51;
      v52 = v124;
      *(v47 + 88) = v123;
      *(v47 + 104) = v52;
      v53 = v120;
      *(v47 + 24) = v119;
      *(v47 + 16) = v84;
      *(v47 + 232) = v132;
      *(v47 + 40) = v53;
      *(v47 + 240) = sub_1D90EF048;
      *(v47 + 248) = v38;
      *(v47 + 256) = v86;
      *(v47 + 264) = v87;
      v54 = *(v46 + 8);

      sub_1D90D09E0(&v119, &v90);

      v54(&v103, sub_1D90EF04C, v47, v45, v46);

      sub_1D90CF72C(&v119);
    }

    else
    {
      v70 = sub_1D917741C();
      v71 = sub_1D9178CFC();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_1D8CEC000, v70, v71, "No provider for request found", v72, 2u);
        MEMORY[0x1DA72CB90](v72, -1, -1);
      }

      *&v103 = 1;
      sub_1D90DD880(&v103);
      v100 = v113;
      v101 = v114;
      v102[0] = v115[0];
      *(v102 + 11) = *(v115 + 11);
      v96 = v109;
      v97 = v110;
      v98 = v111;
      v99 = v112;
      v92 = v105;
      v93 = v106;
      v94 = v107;
      v95 = v108;
      v90 = v103;
      v91 = v104;
      v86(&v90);
      v73 = sub_1D917741C();
      v74 = sub_1D9178D1C();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 134217984;
        *(v75 + 4) = sub_1D90E9F24(v85);
        _os_log_impl(&dword_1D8CEC000, v73, v74, "PML Total request duration: %fs", v75, 0xCu);
        MEMORY[0x1DA72CB90](v75, -1, -1);
      }

      sub_1D9178F4C();
      v76 = qword_1ECAAFC10;
      v77 = v88;
      sub_1D91772FC();

      sub_1D90CF72C(&v119);
      v81(v77, v89);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v116);
  }

  else
  {
    sub_1D8D08A50(&v103, &qword_1ECABA5A8, &unk_1D91B6AB0);
    sub_1D90D09E0(&v119, &v103);
    v55 = sub_1D917741C();
    v56 = sub_1D9178CFC();
    sub_1D90CF72C(&v119);
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v103 = v58;
      *v57 = 136446210;
      v59 = 0xEC00000079726172;
      v60 = 0x62694C6C61636F6CLL;
      if (v42 != 1)
      {
        v60 = 0x7265666E69;
        v59 = 0xE500000000000000;
      }

      if (v42)
      {
        v61 = v60;
      }

      else
      {
        v61 = 0x495041616964656DLL;
      }

      if (v42)
      {
        v62 = v59;
      }

      else
      {
        v62 = 0xE800000000000000;
      }

      v63 = sub_1D8CFA924(v61, v62, &v103);

      *(v57 + 4) = v63;
      _os_log_impl(&dword_1D8CEC000, v55, v56, "No provider for %{public}s found", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x1DA72CB90](v58, -1, -1);
      MEMORY[0x1DA72CB90](v57, -1, -1);
    }

    *&v103 = 0;
    sub_1D90DD880(&v103);
    v100 = v113;
    v101 = v114;
    v102[0] = v115[0];
    *(v102 + 11) = *(v115 + 11);
    v96 = v109;
    v97 = v110;
    v98 = v111;
    v99 = v112;
    v92 = v105;
    v93 = v106;
    v94 = v107;
    v95 = v108;
    v90 = v103;
    v91 = v104;
    v86(&v90);
    v64 = sub_1D917741C();
    v65 = sub_1D9178D1C();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 134217984;
      *(v66 + 4) = sub_1D90E9F24(v85);
      _os_log_impl(&dword_1D8CEC000, v64, v65, "PML Total request duration: %fs", v66, 0xCu);
      MEMORY[0x1DA72CB90](v66, -1, -1);
    }

    sub_1D9178F4C();
    v67 = qword_1ECAAFC10;
    v68 = v88;
    sub_1D91772FC();

    sub_1D90CF72C(&v119);
    return (v81)(v68, v89);
  }
}

void sub_1D90EBAE0(_OWORD *a1, void (*a2)(_OWORD *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[11];
  v20[10] = a1[10];
  v20[11] = v9;
  v21[0] = a1[12];
  *(v21 + 11) = *(a1 + 203);
  v10 = a1[7];
  v20[6] = a1[6];
  v20[7] = v10;
  v11 = a1[9];
  v20[8] = a1[8];
  v20[9] = v11;
  v12 = a1[3];
  v20[2] = a1[2];
  v20[3] = v12;
  v13 = a1[5];
  v20[4] = a1[4];
  v20[5] = v13;
  v14 = a1[1];
  v20[0] = *a1;
  v20[1] = v14;
  a2(v20);
  if (qword_1ECAB0D48 != -1)
  {
    swift_once();
  }

  v15 = sub_1D917744C();
  __swift_project_value_buffer(v15, qword_1ECAB0D50);
  v16 = sub_1D917741C();
  v17 = sub_1D9178D1C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = sub_1D90E9F24(a4);
    _os_log_impl(&dword_1D8CEC000, v16, v17, "PML Total request duration: %fs", v18, 0xCu);
    MEMORY[0x1DA72CB90](v18, -1, -1);
  }

  sub_1D9178F4C();
  if (qword_1ECAAFC08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = qword_1ECAAFC10;
  sub_1D91772FC();
}

uint64_t sub_1D90EBCD8(__int128 *a1, void *a2, unint64_t a3, void (*a4)(__int128 *), uint64_t a5, uint64_t (*a6)(__int128 *), uint64_t a7)
{
  v122 = a6;
  v123 = a7;
  v124 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v12 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v14 = v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v120 - v16;
  v18 = a1[11];
  v19 = a1[9];
  v195 = a1[10];
  v196 = v18;
  v20 = a1[11];
  v197[0] = a1[12];
  *(v197 + 11) = *(a1 + 203);
  v21 = a1[7];
  v22 = a1[5];
  v191 = a1[6];
  v192 = v21;
  v23 = a1[7];
  v24 = a1[9];
  v193 = a1[8];
  v194 = v24;
  v25 = a1[3];
  v26 = a1[1];
  v187 = a1[2];
  v188 = v25;
  v27 = a1[3];
  v28 = a1[5];
  v189 = a1[4];
  v190 = v28;
  v29 = a1[1];
  v185 = *a1;
  v186 = v29;
  v198[10] = v195;
  v198[11] = v20;
  v199[0] = a1[12];
  *(v199 + 11) = *(a1 + 203);
  v198[6] = v191;
  v198[7] = v23;
  v198[8] = v193;
  v198[9] = v19;
  v198[2] = v187;
  v198[3] = v27;
  v198[4] = v189;
  v198[5] = v22;
  v198[0] = v185;
  v198[1] = v26;
  if (sub_1D90E0218(v198) == 1)
  {
    v30 = a4;
    v14 = v171;
    nullsub_1();
    v32 = *v31;
    if (qword_1ECAB0D48 == -1)
    {
LABEL_3:
      v33 = sub_1D917744C();
      __swift_project_value_buffer(v33, qword_1ECAB0D50);
      v179 = v195;
      v180 = v196;
      v181[0] = v197[0];
      *(v14 + 203) = *(v197 + 11);
      v175 = v191;
      v176 = v192;
      v177 = v193;
      v178 = v194;
      v171[2] = v187;
      v172 = v188;
      v173 = v189;
      v174 = v190;
      v171[0] = v185;
      v171[1] = v186;
      nullsub_1();
      sub_1D90BC378(*v34);
      v35 = sub_1D917741C();
      v36 = sub_1D9178CFC();
      sub_1D8D08A50(&v185, &qword_1ECABA698, &unk_1D91B62E0);
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412290;
        sub_1D90CC2C0();
        swift_allocError();
        *v39 = v32;
        *&v170[16] = v186;
        *v170 = v185;
        *&v170[80] = v190;
        *&v170[64] = v189;
        *&v170[48] = v188;
        *&v170[32] = v187;
        *&v170[144] = v194;
        *&v170[128] = v193;
        *&v170[112] = v192;
        *&v170[96] = v191;
        *&v170[203] = *(v197 + 11);
        *&v170[192] = v197[0];
        *&v170[176] = v196;
        *&v170[160] = v195;
        nullsub_1();
        sub_1D90BC378(*v40);
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 4) = v41;
        *v38 = v41;
        _os_log_impl(&dword_1D8CEC000, v35, v36, "Received error from provider: %@", v37, 0xCu);
        sub_1D8D08A50(v38, &unk_1ECAB6C70, &unk_1D9188C30);
        MEMORY[0x1DA72CB90](v38, -1, -1);
        MEMORY[0x1DA72CB90](v37, -1, -1);
      }

      *v160 = v32;
      sub_1D90DD880(v160);
      v157 = *&v160[160];
      v158 = *&v160[176];
      v159[0] = *&v160[192];
      *(v159 + 11) = *&v160[203];
      v155[4] = *&v160[96];
      v155[5] = *&v160[112];
      v155[6] = *&v160[128];
      v156 = *&v160[144];
      v155[0] = *&v160[32];
      v155[1] = *&v160[48];
      v155[2] = *&v160[64];
      v155[3] = *&v160[80];
      v153 = *v160;
      v154 = *&v160[16];
      v169[2] = v195;
      v169[3] = v196;
      v169[4] = v197[0];
      *(&v169[4] + 11) = *(v197 + 11);
      v167 = v191;
      v168 = v192;
      v169[0] = v193;
      v169[1] = v194;
      v163 = v187;
      v164 = v188;
      v165 = v189;
      v166 = v190;
      v161 = v185;
      v162 = v186;
      nullsub_1();
      sub_1D90BC378(*v71);
      v30(&v153);
      *&v170[160] = v157;
      *&v170[176] = v158;
      *&v170[192] = v159[0];
      *&v170[203] = *(v159 + 11);
      *&v170[96] = v155[4];
      *&v170[112] = v155[5];
      *&v170[128] = v155[6];
      *&v170[144] = v156;
      *&v170[32] = v155[0];
      *&v170[48] = v155[1];
      *&v170[64] = v155[2];
      *&v170[80] = v155[3];
      *v170 = v153;
      *&v170[16] = v154;
      v72 = v170;
      return sub_1D8D08A50(v72, &qword_1ECABA698, &unk_1D91B62E0);
    }

LABEL_45:
    swift_once();
    goto LABEL_3;
  }

  v120[1] = a5;
  v121 = a4;
  nullsub_1();
  v43 = v42;
  v179 = v42[10];
  v180 = v42[11];
  v181[0] = v42[12];
  *(v181 + 10) = *(v42 + 202);
  v175 = v42[6];
  v176 = v42[7];
  v177 = v42[8];
  v178 = v42[9];
  v171[2] = v42[2];
  v172 = v42[3];
  v173 = v42[4];
  v174 = v42[5];
  v171[0] = *v42;
  v171[1] = v42[1];
  v44 = a2;
  sub_1D90ED080(a3, v171);
  v46 = v45;
  if ((v47 & 1) == 0)
  {
    v73 = a2;
    v74 = a2[5];
    v75 = a2[6];
    __swift_project_boxed_opaque_existential_1(v73 + 2, v74);
    v76 = (*(v75 + 16))(*(a3 + 168), v74, v75);
    v77 = *(a3 + 16);
    v183[0] = *a3;
    v183[1] = v77;
    v184 = *(a3 + 32);
    v78 = *(a3 + 152);
    v153 = v183[0];
    v154 = v77;
    LOBYTE(v155[0]) = v184;
    *(v155 + 8) = 0u;
    *(&v155[1] + 8) = 0u;
    *(&v155[2] + 8) = 0u;
    *(&v155[3] + 8) = 0u;
    *(&v155[4] + 8) = 0u;
    *(&v155[5] + 8) = 0u;
    *(&v155[6] + 1) = 0;
    BYTE4(v156) = 0;
    LODWORD(v156) = 2;
    *(&v156 + 1) = v78;
    *&v157 = v46;
    WORD4(v157) = v76;
    v158 = 0u;
    v159[0] = 0u;
    LOBYTE(v159[1]) = -1;
    v179 = v157;
    v180 = 0u;
    v181[0] = 0u;
    LOBYTE(v181[1]) = -1;
    v175 = v155[4];
    v176 = v155[5];
    v177 = 0uLL;
    v178 = v156;
    v171[2] = v155[0];
    v172 = v155[1];
    v173 = v155[2];
    v174 = v155[3];
    v171[0] = v183[0];
    v171[1] = v77;
    v79 = *(a3 + 176);
    *&v170[160] = *(a3 + 160);
    *&v170[176] = v79;
    *&v170[192] = *(a3 + 192);
    v170[208] = *(a3 + 208);
    v80 = *(a3 + 112);
    *&v170[96] = *(a3 + 96);
    *&v170[112] = v80;
    v81 = *(a3 + 144);
    *&v170[128] = *(a3 + 128);
    *&v170[144] = v81;
    v82 = *(a3 + 48);
    *&v170[32] = *(a3 + 32);
    *&v170[48] = v82;
    v83 = *(a3 + 80);
    *&v170[64] = *(a3 + 64);
    *&v170[80] = v83;
    v84 = *(a3 + 16);
    *v170 = v183[0];
    *&v170[16] = v84;
    sub_1D8E3ACE0(v183, &v161);
    v85 = sub_1D90CF4C0(v170);
    v48 = v124;
    if (v85)
    {
      *&v171[0] = 2;
      sub_1D90DD880(v171);
      *&v170[160] = v179;
      *&v170[176] = v180;
      *&v170[192] = v181[0];
      *&v170[203] = *(v181 + 11);
      *&v170[96] = v175;
      *&v170[112] = v176;
      *&v170[128] = v177;
      *&v170[144] = v178;
      *&v170[32] = v171[2];
      *&v170[48] = v172;
      *&v170[64] = v173;
      *&v170[80] = v174;
      *v170 = v171[0];
      *&v170[16] = v171[1];
      v121(v170);
      return sub_1D90CF72C(&v153);
    }

    v87 = *v43;
    if (v46 >= *(v87 + 16))
    {
      v88 = *(v87 + 16);
    }

    else
    {
      v88 = v46;
    }

    v46 = sub_1D8F4D2A4(v88, v87);
    v44 = v89;
    v14 = v90;
    a3 = v91;
    if ((v91 & 1) == 0)
    {

LABEL_18:
      sub_1D90D0468(v46, v44, v14, a3);
      v93 = v92;
      v30 = v121;
      goto LABEL_32;
    }

    sub_1D9179C5C();
    swift_unknownObjectRetain_n();

    v116 = swift_dynamicCastClass();
    if (!v116)
    {
      swift_unknownObjectRelease();
      v116 = MEMORY[0x1E69E7CC0];
    }

    v117 = *(v116 + 16);

    if (!__OFSUB__(a3 >> 1, v14))
    {
      if (v117 == (a3 >> 1) - v14)
      {
        v93 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v30 = v121;
        if (v93)
        {
          goto LABEL_33;
        }

        v93 = MEMORY[0x1E69E7CC0];
LABEL_32:
        swift_unknownObjectRelease();
LABEL_33:
        v149 = v157;
        v150 = v158;
        v151 = v159[0];
        v152 = v159[1];
        v145 = v155[4];
        v146 = v155[5];
        v147 = v155[6];
        v148 = v156;
        v141 = v155[0];
        v142 = v155[1];
        v143 = v155[2];
        v144 = v155[3];
        v139 = v153;
        v140 = v154;
        nullsub_1();
        v135 = v149;
        v136 = v150;
        v137 = v151;
        v138 = v152;
        v131 = v145;
        v132 = v146;
        v133 = v147;
        v134 = v148;
        v127 = v141;
        v128 = v142;
        v129 = v143;
        v130 = v144;
        v125 = v139;
        v126 = v140;
        v118 = *(v93 + 16);
        sub_1D90D09E0(&v153, v171);

        v32 = 0;
        while (1)
        {
          v14 = v32;
          if (v118 == v32)
          {
LABEL_37:

            *v160 = v93;
            *&v160[168] = v135;
            *&v160[184] = v136;
            *&v160[200] = v137;
            v160[216] = v138;
            *&v160[104] = v131;
            *&v160[120] = v132;
            *&v160[136] = v133;
            *&v160[152] = v134;
            *&v160[40] = v127;
            *&v160[56] = v128;
            *&v160[72] = v129;
            *&v160[88] = v130;
            *&v160[8] = v125;
            *&v160[24] = v126;
            v160[217] = v118 != v14;
            *&v170[160] = *&v160[160];
            *&v170[176] = *&v160[176];
            *&v170[192] = *&v160[192];
            *&v170[96] = *&v160[96];
            *&v170[112] = *&v160[112];
            *&v170[128] = *&v160[128];
            *&v170[144] = *&v160[144];
            *&v170[32] = *&v160[32];
            *&v170[48] = *&v160[48];
            *&v170[64] = *&v160[64];
            *&v170[80] = *&v160[80];
            *v170 = *v160;
            *&v170[16] = *&v160[16];
            *&v170[202] = *&v160[202];
            sub_1D90DD88C(v170);
            v169[2] = *&v170[160];
            v169[3] = *&v170[176];
            v169[4] = *&v170[192];
            *(&v169[4] + 11) = *&v170[203];
            v167 = *&v170[96];
            v168 = *&v170[112];
            v169[0] = *&v170[128];
            v169[1] = *&v170[144];
            v163 = *&v170[32];
            v164 = *&v170[48];
            v165 = *&v170[64];
            v166 = *&v170[80];
            v161 = *v170;
            v162 = *&v170[16];
            sub_1D90DDE88(v160, v171);
            v30(&v161);
            sub_1D90DDD68(v160);
            goto LABEL_38;
          }

          if (v32 >= *(v93 + 16))
          {
            break;
          }

          sub_1D90EF0AC(v93 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v32++, v17, type metadata accessor for PodcastsMediaLibrary.MediaItem);
          v119 = v17[*(v48 + 108)];
          sub_1D9096E98(v17);
          if (v119)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      goto LABEL_48;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v48 = v124;
  if (!v45)
  {
    v94 = v43[1];
    v161 = *v43;
    v162 = v94;
    v95 = v43[2];
    v96 = v43[3];
    v97 = v43[5];
    v165 = v43[4];
    v166 = v97;
    v163 = v95;
    v164 = v96;
    v98 = v43[6];
    v99 = v43[7];
    v100 = v43[8];
    v169[1] = v43[9];
    v169[0] = v100;
    v168 = v99;
    v167 = v98;
    v101 = v43[10];
    v102 = v43[11];
    v103 = v43[12];
    *(&v169[4] + 10) = *(v43 + 202);
    v169[4] = v103;
    v169[3] = v102;
    v169[2] = v101;
    sub_1D90DD88C(&v161);
    *&v160[160] = v169[2];
    *&v160[176] = v169[3];
    *&v160[192] = v169[4];
    *&v160[203] = *(&v169[4] + 11);
    *&v160[96] = v167;
    *&v160[112] = v168;
    *&v160[128] = v169[0];
    *&v160[144] = v169[1];
    *&v160[32] = v163;
    *&v160[48] = v164;
    *&v160[64] = v165;
    *&v160[80] = v166;
    *v160 = v161;
    *&v160[16] = v162;
    *&v170[160] = v195;
    *&v170[176] = v196;
    *&v170[192] = v197[0];
    *&v170[203] = *(v197 + 11);
    *&v170[96] = v191;
    *&v170[112] = v192;
    *&v170[128] = v193;
    *&v170[144] = v194;
    *&v170[32] = v187;
    *&v170[48] = v188;
    *&v170[64] = v189;
    *&v170[80] = v190;
    *v170 = v185;
    *&v170[16] = v186;
    nullsub_1();
    sub_1D90DDE88(v104, v171);
    v121(v160);
    v179 = *&v160[160];
    v180 = *&v160[176];
    v181[0] = *&v160[192];
    *(v181 + 11) = *&v160[203];
    v175 = *&v160[96];
    v176 = *&v160[112];
    v177 = *&v160[128];
    v178 = *&v160[144];
    v171[2] = *&v160[32];
    v172 = *&v160[48];
    v173 = *&v160[64];
    v174 = *&v160[80];
    v105 = *v160;
    v106 = *&v160[16];
LABEL_39:
    v171[0] = v105;
    v171[1] = v106;
    v72 = v171;
    return sub_1D8D08A50(v72, &qword_1ECABA698, &unk_1D91B62E0);
  }

  v17 = v170;
  if (v45 != 1)
  {
    v107 = *(a3 + 152);
    v108 = *(a3 + 160);
    v109 = __OFADD__(v108, v107);
    v110 = v108 + v107;
    if (!v109)
    {
      v111 = *(a3 + 16);
      v125 = *a3;
      v126 = v111;
      LOBYTE(v127) = *(a3 + 32);
      v153 = v125;
      v154 = v111;
      LOBYTE(v155[0]) = v127;
      *(v155 + 8) = 0u;
      *(&v155[1] + 8) = 0u;
      *(&v155[2] + 8) = 0u;
      *(&v155[3] + 8) = 0u;
      *(&v155[4] + 8) = 0u;
      *(&v155[5] + 8) = 0u;
      *(&v155[6] + 1) = 0;
      BYTE4(v156) = 0;
      LODWORD(v156) = 2;
      *(&v156 + 1) = v107;
      *&v157 = v110;
      WORD4(v157) = 2;
      v158 = 0u;
      v159[0] = 0u;
      LOBYTE(v159[1]) = -1;
      v112 = *v43;
      *v160 = v125;
      *&v160[16] = v111;
      *&v160[64] = v155[2];
      *&v160[80] = v155[3];
      *&v160[32] = v155[0];
      *&v160[48] = v155[1];
      *&v160[128] = 0uLL;
      *&v160[144] = v156;
      *&v160[96] = v155[4];
      *&v160[112] = v155[5];
      v160[208] = -1;
      memset(&v160[176], 0, 32);
      *&v160[160] = v157;
      nullsub_1();
      v149 = *&v160[160];
      v150 = *&v160[176];
      v151 = *&v160[192];
      v152 = v160[208];
      v145 = *&v160[96];
      v146 = *&v160[112];
      v147 = *&v160[128];
      v148 = *&v160[144];
      v141 = *&v160[32];
      v142 = *&v160[48];
      v143 = *&v160[64];
      v144 = *&v160[80];
      v139 = *v160;
      v140 = *&v160[16];
      v113 = *(v112 + 16);
      sub_1D8E3ACE0(&v125, v171);
      sub_1D90D09E0(&v153, v171);

      v114 = 0;
      v30 = v121;
      do
      {
        v32 = v114;
        if (v113 == v114)
        {
          break;
        }

        if (v114 >= *(v112 + 16))
        {
          goto LABEL_44;
        }

        sub_1D90EF0AC(v112 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v114++, v14, type metadata accessor for PodcastsMediaLibrary.MediaItem);
        v115 = v14[*(v48 + 108)];
        sub_1D9096E98(v14);
      }

      while ((v115 & 1) == 0);
      *&v170[168] = v149;
      *&v170[184] = v150;
      *&v170[200] = v151;
      *&v170[104] = v145;
      *&v170[120] = v146;
      *&v170[136] = v147;
      *&v170[152] = v148;
      *&v170[40] = v141;
      *&v170[56] = v142;
      *&v170[72] = v143;
      *&v170[88] = v144;
      *&v170[8] = v139;
      v170[216] = v152;
      *&v170[24] = v140;
      *v170 = v112;
      v170[217] = v113 != v32;
      sub_1D90DD88C(v170);
      v169[2] = *&v170[160];
      v169[3] = *&v170[176];
      v169[4] = *&v170[192];
      *(&v169[4] + 11) = *&v170[203];
      v167 = *&v170[96];
      v168 = *&v170[112];
      v169[0] = *&v170[128];
      v169[1] = *&v170[144];
      v163 = *&v170[32];
      v164 = *&v170[48];
      v165 = *&v170[64];
      v166 = *&v170[80];
      v161 = *v170;
      v162 = *&v170[16];
      v30(&v161);
LABEL_38:
      sub_1D90CF72C(&v153);
      v179 = v169[2];
      v180 = v169[3];
      v181[0] = v169[4];
      *(v181 + 11) = *(&v169[4] + 11);
      v175 = v167;
      v176 = v168;
      v177 = v169[0];
      v178 = v169[1];
      v171[2] = v163;
      v172 = v164;
      v173 = v165;
      v174 = v166;
      v105 = v161;
      v106 = v162;
      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_47;
  }

  v49 = a2[5];
  v50 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v49);
  v51 = (*(v50 + 16))(*(a3 + 168), v49, v50);
  v52 = *(a3 + 16);
  v139 = *a3;
  v140 = v52;
  v53 = *(a3 + 40);
  v54 = *(a3 + 64);
  v183[0] = *(a3 + 48);
  v55 = *(a3 + 112);
  v56 = *(a3 + 80);
  *&v160[32] = *(a3 + 96);
  *&v160[48] = v55;
  v57 = *(a3 + 112);
  *&v160[64] = *(a3 + 128);
  v59 = *(a3 + 48);
  v58 = *(a3 + 64);
  v60 = *(a3 + 80);
  *v160 = v54;
  *&v160[16] = v60;
  v61 = *(a3 + 160);
  v62 = *(a3 + 192);
  v125 = *(a3 + 176);
  v126 = v62;
  v63 = *(a3 + 16);
  v161 = *a3;
  v162 = v63;
  LOBYTE(v163) = *(a3 + 32);
  v164 = *(a3 + 48);
  v165 = v58;
  v64 = *(a3 + 112);
  v65 = *(a3 + 128);
  *(v169 + 13) = *(a3 + 141);
  v169[0] = v65;
  v168 = v64;
  v66 = *(a3 + 96);
  v166 = *(a3 + 80);
  v167 = v66;
  v67 = *(a3 + 176);
  v68 = *(a3 + 192);
  BYTE6(v171[2]) = *(a3 + 208);
  *(&v171[1] + 6) = v68;
  *(v171 + 6) = v67;
  *(&v163 + 1) = v53;
  *(&v169[1] + 8) = *(a3 + 152);
  WORD4(v169[2]) = v51;
  *(&v169[4] + 9) = *(&v171[1] + 15);
  *(&v169[3] + 10) = v171[1];
  *(&v169[2] + 10) = v171[0];
  v179 = v169[2];
  v180 = v169[3];
  v181[0] = v169[4];
  v175 = v167;
  v176 = v168;
  v178 = v169[1];
  v177 = v65;
  v171[2] = v163;
  v172 = v164;
  v173 = v58;
  v174 = v166;
  v171[0] = v161;
  v171[1] = v162;
  *&v170[160] = v61;
  *&v170[176] = v125;
  *&v170[192] = *(a3 + 192);
  *&v170[96] = *&v160[32];
  *&v170[112] = v57;
  v69 = *(a3 + 144);
  *&v170[128] = *(a3 + 128);
  *&v170[144] = v69;
  *&v170[32] = *(a3 + 32);
  *&v170[48] = v59;
  LOBYTE(v141) = *(a3 + 32);
  v182 = v53;
  *&v160[77] = *(a3 + 141);
  LOBYTE(v127) = *(a3 + 208);
  LOBYTE(v181[1]) = v169[5];
  v170[208] = *(a3 + 208);
  *&v170[64] = v58;
  *&v170[80] = v56;
  v70 = *(a3 + 16);
  *v170 = v139;
  *&v170[16] = v70;
  sub_1D8E3ACE0(&v139, &v153);
  sub_1D8D088B4(&v182, &v153, &qword_1ECABA718, &qword_1D91B6B78);
  sub_1D8D088B4(v183, &v153, &qword_1ECAB5900, &unk_1D9191B80);
  sub_1D8D088B4(v160, &v153, &qword_1ECAB9F78, qword_1D91B16D0);
  sub_1D8D088B4(&v125, &v153, &qword_1ECABA6B8, &unk_1D91B6B80);
  if (sub_1D90CF4C0(v170))
  {
    *&v171[0] = 3;
    sub_1D90DD880(v171);
    *&v170[160] = v179;
    *&v170[176] = v180;
    *&v170[192] = v181[0];
    *&v170[203] = *(v181 + 11);
    *&v170[96] = v175;
    *&v170[112] = v176;
    *&v170[128] = v177;
    *&v170[144] = v178;
    *&v170[32] = v171[2];
    *&v170[48] = v172;
    *&v170[64] = v173;
    *&v170[80] = v174;
    *v170 = v171[0];
    *&v170[16] = v171[1];
    v121(v170);
  }

  else
  {
    v179 = v169[2];
    v180 = v169[3];
    v181[0] = v169[4];
    LOBYTE(v181[1]) = v169[5];
    v175 = v167;
    v176 = v168;
    v177 = v169[0];
    v178 = v169[1];
    v171[2] = v163;
    v172 = v164;
    v173 = v165;
    v174 = v166;
    v171[0] = v161;
    v171[1] = v162;
    sub_1D90EAF44(v171, v122, v123);
  }

  return sub_1D90CF72C(&v161);
}

void sub_1D90ED080(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1D917734C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v72 = *(a1 + 1);
  v73 = a1[3];
  v10 = *(a1 + 32);
  v11 = *(a1 + 113);
  v69 = *(a1 + 97);
  v70 = v11;
  v71[0] = *(a1 + 129);
  v12 = a1[18];
  v36 = a1[19];
  v37 = v9;
  *(v71 + 15) = v12;
  v13 = *(a1 + 49);
  v65 = *(a1 + 33);
  v66 = v13;
  v14 = *(a1 + 81);
  v67 = *(a1 + 65);
  v68 = v14;
  v35 = a1[20];
  v15 = *(a1 + 168);
  v16 = *(a1 + 185);
  v62 = *(a1 + 169);
  v63 = v16;
  v64 = *(a1 + 201);
  v17 = *a2;
  v18 = *(a2 + 23);
  v85 = *(a2 + 21);
  v86 = v18;
  v87 = *(a2 + 25);
  v88 = *(a2 + 216);
  v19 = *(a2 + 15);
  v81 = *(a2 + 13);
  v82 = v19;
  v20 = *(a2 + 19);
  v83 = *(a2 + 17);
  v84 = v20;
  v21 = *(a2 + 7);
  v77 = *(a2 + 5);
  v78 = v21;
  v22 = *(a2 + 11);
  v79 = *(a2 + 9);
  v80 = v22;
  v23 = *(a2 + 3);
  v75 = *(a2 + 1);
  v76 = v23;
  v74 = *(a2 + 217);
  sub_1D9178F6C();
  if (qword_1ECAAFC08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v24 = qword_1ECAAFC10;
  sub_1D917733C();
  sub_1D91772FC();

  (*(v6 + 8))(v8, v5);
  if ((*(v17 + 16) || v74 == 1) && v10 == 1)
  {
    v25 = *(v2 + 40);
    v26 = *(v2 + 48);
    __swift_project_boxed_opaque_existential_1((v2 + 16), v25);
    if (((*(v26 + 24))(v15, v25, v26) & 1) == 0 || *(v2 + 64) != 1)
    {
      v59[0] = v85;
      v59[1] = v86;
      v59[2] = v87;
      v57[5] = v81;
      v57[6] = v82;
      v57[7] = v83;
      v58 = v84;
      v57[1] = v77;
      v57[2] = v78;
      v57[3] = v79;
      v57[4] = v80;
      v56 = v75;
      v57[0] = v76;
      v39 = v72;
      v46 = v69;
      v47 = v70;
      *v48 = v71[0];
      v42 = v65;
      v43 = v66;
      v44 = v67;
      v45 = v68;
      v52 = v62;
      v55 = v17;
      v60 = v88;
      v61 = v74;
      v27 = v36;
      v28 = v37;
      v38 = v37;
      v40 = v73;
      v41 = 1;
      *&v48[15] = *(v71 + 15);
      v49 = v36;
      v29 = v35;
      v50 = v35;
      v51 = v15;
      v53 = v63;
      v54 = v64;
      v30 = sub_1D90D0FB0(&v38);
      if (v30 < 1)
      {
        return;
      }

      v31 = v30;
      v56 = v72;
      *(&v57[4] + 9) = v69;
      *(&v57[5] + 9) = v70;
      *(&v57[6] + 9) = v71[0];
      *(v57 + 9) = v65;
      *(&v57[1] + 9) = v66;
      *(&v57[2] + 9) = v67;
      *(&v57[3] + 9) = v68;
      *(v59 + 1) = v62;
      v32 = *(v17 + 16);
      v55 = v28;
      *&v57[0] = v73;
      BYTE8(v57[0]) = 1;
      *(&v57[7] + 1) = *(v71 + 15);
      *&v58 = v27;
      *(&v58 + 1) = v29;
      LOBYTE(v59[0]) = v15;
      *(&v59[1] + 1) = v63;
      *(&v59[2] + 1) = v64;
      v33 = *(sub_1D90CF75C() + 2);

      if (v32 >= v33)
      {
        if (!__OFADD__(v27, v29))
        {
          return;
        }
      }

      else
      {
        if (!__OFADD__(v31, v29))
        {
          return;
        }

        __break(1u);
      }

      __break(1u);
      return;
    }

    if (__OFADD__(v36, v35))
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D90ED51C(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v4 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D90ED63C, 0, 0);
}

uint64_t sub_1D90ED63C()
{
  v56 = v0;
  if (qword_1ECAB0D48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = *(v0 + 112);
  v3 = sub_1D917744C();
  *(v0 + 184) = __swift_project_value_buffer(v3, qword_1ECAB0D50);
  sub_1D90EF0AC(v2, v1, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  v4 = sub_1D917741C();
  v5 = sub_1D9178D1C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 176);
  if (v6)
  {
    v8 = *(v0 + 160);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v55 = v10;
    *v9 = 136315138;
    v11 = *(v7 + *(v8 + 180)) == 0;
    if (*(v7 + *(v8 + 180)))
    {
      v12 = 0x776F6C6C616873;
    }

    else
    {
      v12 = 0x656C617473;
    }

    if (v11)
    {
      v13 = 0xE500000000000000;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    sub_1D9096E98(v7);
    v14 = sub_1D8CFA924(v12, v13, &v55);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1D8CEC000, v4, v5, "Reloading item [%s]", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1DA72CB90](v10, -1, -1);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  else
  {

    sub_1D9096E98(v7);
  }

  v15 = *(v0 + 120);
  (*(*(v0 + 168) + 56))(*(v0 + 152), 1, 1, *(v0 + 160));
  v16 = v15[5];
  v17 = v15[6];
  __swift_project_boxed_opaque_existential_1(v15 + 2, v16);
  if ((*(v17 + 24))(2, v16, v17))
  {
    goto LABEL_19;
  }

  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v20 = *(v0 + 144);
  sub_1D8D088B4(*(v0 + 152), v20, &qword_1ECAB9F70, qword_1D91B1680);
  if ((*(v19 + 48))(v20, 1, v18) != 1)
  {
    sub_1D8D08A50(*(v0 + 144), &qword_1ECAB9F70, qword_1D91B1680);
LABEL_19:
    v31 = *(v0 + 160);
    v32 = *(v0 + 168);
    v33 = *(v0 + 128);
    sub_1D90AA150(*(v0 + 152), v33);
    v34 = *(v32 + 48);
    if (v34(v33, 1, v31) == 1)
    {
      v35 = *(v0 + 160);
      v36 = *(v0 + 128);
      sub_1D90EF0AC(*(v0 + 112), *(v0 + 104), type metadata accessor for PodcastsMediaLibrary.MediaItem);
      if (v34(v36, 1, v35) != 1)
      {
        sub_1D8D08A50(*(v0 + 128), &qword_1ECAB9F70, qword_1D91B1680);
      }
    }

    else
    {
      sub_1D90EF114(*(v0 + 128), *(v0 + 104), type metadata accessor for PodcastsMediaLibrary.MediaItem);
    }

    goto LABEL_23;
  }

  v21 = *(v0 + 120);
  sub_1D8D08A50(*(v0 + 144), &qword_1ECAB9F70, qword_1D91B1680);
  v22 = v21[5];
  v23 = v21[6];
  __swift_project_boxed_opaque_existential_1(v21 + 2, v22);
  v24 = (*(v23 + 16))(2, v22, v23);
  *(v0 + 200) = v24;
  v25 = sub_1D917741C();
  v26 = sub_1D9178D1C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *(v0 + 96) = v28;
    *v27 = 136315138;
    if (v24)
    {
      if (v24 == 1)
      {
        v29 = 0xEC00000079726172;
        v30 = 0x62694C6C61636F6CLL;
      }

      else
      {
        v29 = 0xE500000000000000;
        v30 = 0x7265666E69;
      }
    }

    else
    {
      v29 = 0xE800000000000000;
      v30 = 0x495041616964656DLL;
    }

    v39 = sub_1D8CFA924(v30, v29, (v0 + 96));

    *(v27 + 4) = v39;
    _os_log_impl(&dword_1D8CEC000, v25, v26, "Asking for item at source: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1DA72CB90](v28, -1, -1);
    MEMORY[0x1DA72CB90](v27, -1, -1);
  }

  v40 = *(v0 + 120);
  v41 = v40[5];
  v42 = v40[6];
  __swift_project_boxed_opaque_existential_1(v40 + 2, v41);
  (*(v42 + 8))(v24, v41, v42);
  if (*(v0 + 80))
  {
    sub_1D8D6BCE0((v0 + 56), v0 + 16);
    v43 = *(v0 + 40);
    v44 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v43);
    v54 = (*(v44 + 24) + **(v44 + 24));
    v45 = swift_task_alloc();
    *(v0 + 192) = v45;
    *v45 = v0;
    v45[1] = sub_1D90EDD78;
    v46 = *(v0 + 136);
    v47 = *(v0 + 112);

    return v54(v46, v47, v43, v44);
  }

  sub_1D8D08A50(v0 + 56, &qword_1ECABA5A8, &unk_1D91B6AB0);
  v48 = sub_1D917741C();
  v49 = sub_1D9178D1C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_1D8CEC000, v48, v49, "No provider for source found. returning original.", v50, 2u);
    MEMORY[0x1DA72CB90](v50, -1, -1);
  }

  v51 = *(v0 + 152);
  v53 = *(v0 + 104);
  v52 = *(v0 + 112);

  sub_1D8D08A50(v51, &qword_1ECAB9F70, qword_1D91B1680);
  sub_1D90EF0AC(v52, v53, type metadata accessor for PodcastsMediaLibrary.MediaItem);
LABEL_23:

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1D90EDD78()
{

  return MEMORY[0x1EEE6DFA0](sub_1D90EDE74, 0, 0);
}

uint64_t sub_1D90EDE74()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 200);
  sub_1D9071830(*(v0 + 136), *(v0 + 152), &qword_1ECAB9F70, qword_1D91B1680);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  if ((*(v4 + 24))(v2, v3, v4))
  {
LABEL_8:
    v19 = *(v0 + 160);
    v20 = *(v0 + 168);
    v21 = *(v0 + 128);
    sub_1D90AA150(*(v0 + 152), v21);
    v22 = *(v20 + 48);
    if (v22(v21, 1, v19) == 1)
    {
      v23 = *(v0 + 160);
      v24 = *(v0 + 128);
      sub_1D90EF0AC(*(v0 + 112), *(v0 + 104), type metadata accessor for PodcastsMediaLibrary.MediaItem);
      if (v22(v24, 1, v23) != 1)
      {
        sub_1D8D08A50(*(v0 + 128), &qword_1ECAB9F70, qword_1D91B1680);
      }
    }

    else
    {
      sub_1D90EF114(*(v0 + 128), *(v0 + 104), type metadata accessor for PodcastsMediaLibrary.MediaItem);
    }

    goto LABEL_12;
  }

  v5 = *(v0 + 200);
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);
  v8 = *(v0 + 144);
  sub_1D8D088B4(*(v0 + 152), v8, &qword_1ECAB9F70, qword_1D91B1680);
  if ((*(v7 + 48))(v8, 1, v6) != 1)
  {
    sub_1D8D08A50(*(v0 + 144), &qword_1ECAB9F70, qword_1D91B1680);
    goto LABEL_8;
  }

  v9 = *(v0 + 120);
  sub_1D8D08A50(*(v0 + 144), &qword_1ECAB9F70, qword_1D91B1680);
  v10 = v9[5];
  v11 = v9[6];
  __swift_project_boxed_opaque_existential_1(v9 + 2, v10);
  v12 = (*(v11 + 16))(v5, v10, v11);
  *(v0 + 200) = v12;
  v13 = sub_1D917741C();
  v14 = sub_1D9178D1C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *(v0 + 96) = v16;
    *v15 = 136315138;
    if (v12)
    {
      if (v12 == 1)
      {
        v17 = 0xEC00000079726172;
        v18 = 0x62694C6C61636F6CLL;
      }

      else
      {
        v17 = 0xE500000000000000;
        v18 = 0x7265666E69;
      }
    }

    else
    {
      v17 = 0xE800000000000000;
      v18 = 0x495041616964656DLL;
    }

    v27 = sub_1D8CFA924(v18, v17, (v0 + 96));

    *(v15 + 4) = v27;
    _os_log_impl(&dword_1D8CEC000, v13, v14, "Asking for item at source: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1DA72CB90](v16, -1, -1);
    MEMORY[0x1DA72CB90](v15, -1, -1);
  }

  v28 = *(v0 + 120);
  v29 = v28[5];
  v30 = v28[6];
  __swift_project_boxed_opaque_existential_1(v28 + 2, v29);
  (*(v30 + 8))(v12, v29, v30);
  if (*(v0 + 80))
  {
    sub_1D8D6BCE0((v0 + 56), v0 + 16);
    v31 = *(v0 + 40);
    v32 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v31);
    v42 = (*(v32 + 24) + **(v32 + 24));
    v33 = swift_task_alloc();
    *(v0 + 192) = v33;
    *v33 = v0;
    v33[1] = sub_1D90EDD78;
    v34 = *(v0 + 136);
    v35 = *(v0 + 112);

    return v42(v34, v35, v31, v32);
  }

  sub_1D8D08A50(v0 + 56, &qword_1ECABA5A8, &unk_1D91B6AB0);
  v36 = sub_1D917741C();
  v37 = sub_1D9178D1C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1D8CEC000, v36, v37, "No provider for source found. returning original.", v38, 2u);
    MEMORY[0x1DA72CB90](v38, -1, -1);
  }

  v39 = *(v0 + 152);
  v41 = *(v0 + 104);
  v40 = *(v0 + 112);

  sub_1D8D08A50(v39, &qword_1ECAB9F70, qword_1D91B1680);
  sub_1D90EF0AC(v40, v41, type metadata accessor for PodcastsMediaLibrary.MediaItem);
LABEL_12:

  v25 = *(v0 + 8);

  return v25();
}

uint64_t PodcastsMediaLibrary.deinit()
{
  sub_1D90EF050(v0 + 16);
  sub_1D8D08A50(v0 + OBJC_IVAR____TtC18PodcastsFoundation20PodcastsMediaLibrary____lazy_storage___signpostID, &qword_1ECAB6DE0, &qword_1D9195250);
  return v0;
}

uint64_t PodcastsMediaLibrary.__deallocating_deinit()
{
  sub_1D90EF050(v0 + 16);
  sub_1D8D08A50(v0 + OBJC_IVAR____TtC18PodcastsFoundation20PodcastsMediaLibrary____lazy_storage___signpostID, &qword_1ECAB6DE0, &qword_1D9195250);

  return swift_deallocClassInstance();
}

uint64_t PodcastsMediaLibrary.mediaCollection(for:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 528) = v2;
  *(v3 + 520) = a1;
  v4 = *(a2 + 176);
  *(v3 + 464) = *(a2 + 160);
  *(v3 + 480) = v4;
  *(v3 + 496) = *(a2 + 192);
  *(v3 + 512) = *(a2 + 208);
  v5 = *(a2 + 112);
  *(v3 + 400) = *(a2 + 96);
  *(v3 + 416) = v5;
  v6 = *(a2 + 144);
  *(v3 + 432) = *(a2 + 128);
  *(v3 + 448) = v6;
  v7 = *(a2 + 48);
  *(v3 + 336) = *(a2 + 32);
  *(v3 + 352) = v7;
  v8 = *(a2 + 80);
  *(v3 + 368) = *(a2 + 64);
  *(v3 + 384) = v8;
  v9 = *(a2 + 16);
  *(v3 + 304) = *a2;
  *(v3 + 320) = v9;
  return MEMORY[0x1EEE6DFA0](sub_1D90EE554, 0, 0);
}

uint64_t sub_1D90EE554()
{
  v1 = v0[66];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1D90EE5FC;
  v2 = swift_continuation_init();
  sub_1D90EA370((v0 + 38), v1, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D90EE5FC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  if (*(*v2 + 48))
  {
    swift_willThrow();
  }

  else
  {
    v5 = (v3 + 80);
    v6 = *(v3 + 520);
    v7 = v5[1];
    *v6 = *v5;
    v6[1] = v7;
    v8 = v5[2];
    v9 = v5[3];
    v10 = v5[5];
    v6[4] = v5[4];
    v6[5] = v10;
    v6[2] = v8;
    v6[3] = v9;
    v11 = v5[6];
    v12 = v5[7];
    v13 = v5[9];
    v6[8] = v5[8];
    v6[9] = v13;
    v6[6] = v11;
    v6[7] = v12;
    v14 = v5[10];
    v15 = v5[11];
    v16 = v5[12];
    *(v6 + 202) = *(v5 + 202);
    v6[11] = v15;
    v6[12] = v16;
    v6[10] = v14;
  }

  v17 = *(v4 + 8);

  return v17();
}

uint64_t sub_1D90EE74C(__int128 *a1, uint64_t a2)
{
  v4 = a1[11];
  v5 = a1[9];
  v106 = a1[10];
  v107 = v4;
  v6 = a1[11];
  v108[0] = a1[12];
  *(v108 + 11) = *(a1 + 203);
  v7 = a1[7];
  v8 = a1[5];
  v102 = a1[6];
  v103 = v7;
  v9 = a1[7];
  v10 = a1[9];
  v104 = a1[8];
  v105 = v10;
  v11 = a1[3];
  v12 = a1[1];
  v98 = a1[2];
  v99 = v11;
  v13 = a1[3];
  v14 = a1[5];
  v100 = a1[4];
  v101 = v14;
  v15 = a1[1];
  v96 = *a1;
  v97 = v15;
  v109[10] = v106;
  v109[11] = v6;
  v110[0] = a1[12];
  *(v110 + 11) = *(a1 + 203);
  v109[6] = v102;
  v109[7] = v9;
  v109[8] = v104;
  v109[9] = v5;
  v109[2] = v98;
  v109[3] = v13;
  v109[4] = v100;
  v109[5] = v8;
  v109[0] = v96;
  v109[1] = v12;
  if (sub_1D90E0218(v109) == 1)
  {
    nullsub_1();
    v16 = a1[11];
    v80 = a1[10];
    v81 = v16;
    v82[0] = a1[12];
    *(v82 + 11) = *(a1 + 203);
    v17 = a1[7];
    v76 = a1[6];
    v77 = v17;
    v18 = a1[9];
    v78 = a1[8];
    v79 = v18;
    v19 = a1[3];
    v72 = a1[2];
    v73 = v19;
    v20 = a1[5];
    v74 = a1[4];
    v75 = v20;
    v21 = a1[1];
    v70 = *a1;
    v71 = v21;
    nullsub_1();
    v23 = *v22;
    sub_1D90CC2C0();
    v24 = swift_allocError();
    *v25 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    swift_allocError();
    *v26 = v24;
    v83 = v96;
    v84 = v97;
    v85 = v98;
    v86 = v99;
    v87 = v100;
    v88 = v101;
    v89 = v102;
    v90 = v103;
    v91 = v104;
    v92 = v105;
    v93 = v106;
    v94 = v107;
    v95[0] = v108[0];
    *(v95 + 11) = *(v108 + 11);
    nullsub_1();
    sub_1D90BC378(*v27);
    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    nullsub_1();
    v29 = a1[11];
    v80 = a1[10];
    v81 = v29;
    v82[0] = a1[12];
    *(v82 + 11) = *(a1 + 203);
    v30 = a1[7];
    v76 = a1[6];
    v77 = v30;
    v31 = a1[9];
    v78 = a1[8];
    v79 = v31;
    v32 = a1[3];
    v72 = a1[2];
    v73 = v32;
    v33 = a1[5];
    v74 = a1[4];
    v75 = v33;
    v34 = a1[1];
    v70 = *a1;
    v71 = v34;
    nullsub_1();
    v36 = v35[11];
    v67 = v35[10];
    v68 = v36;
    v69[0] = v35[12];
    *(v69 + 10) = *(v35 + 202);
    v37 = v35[7];
    v63 = v35[6];
    v64 = v37;
    v38 = v35[9];
    v65 = v35[8];
    v66 = v38;
    v39 = v35[3];
    v59 = v35[2];
    v60 = v39;
    v40 = v35[5];
    v61 = v35[4];
    v62 = v40;
    v41 = v35[1];
    v57 = *v35;
    v58 = v41;
    v42 = a1[1];
    v83 = *a1;
    v84 = v42;
    v43 = a1[5];
    v87 = a1[4];
    v88 = v43;
    v44 = a1[3];
    v85 = a1[2];
    v86 = v44;
    v45 = a1[9];
    v91 = a1[8];
    v92 = v45;
    v46 = a1[7];
    v89 = a1[6];
    v90 = v46;
    *(v95 + 11) = *(a1 + 203);
    v47 = a1[12];
    v94 = a1[11];
    v95[0] = v47;
    v93 = a1[10];
    nullsub_1();
    sub_1D90DDE88(v48, &v56);
    v49 = *(*(a2 + 64) + 40);
    v50 = v68;
    v49[10] = v67;
    v49[11] = v50;
    v49[12] = v69[0];
    *(v49 + 202) = *(v69 + 10);
    v51 = v64;
    v49[6] = v63;
    v49[7] = v51;
    v52 = v66;
    v49[8] = v65;
    v49[9] = v52;
    v53 = v60;
    v49[2] = v59;
    v49[3] = v53;
    v54 = v62;
    v49[4] = v61;
    v49[5] = v54;
    v55 = v58;
    *v49 = v57;
    v49[1] = v55;
    return swift_continuation_throwingResume();
  }
}

uint64_t PodcastsMediaLibrary.PlaybackQueueContext.resolvedContext()(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0);
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v2[14] = *(v4 + 64);
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D90EEB6C, 0, 0);
}

uint64_t sub_1D90EEB6C()
{
  v27 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v22 = v0 + 2;
  v0[2] = v0;
  v0[7] = v4;
  v0[3] = sub_1D90EED80;
  v6 = swift_continuation_init();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *(v5 + 72);
  v9 = *(v5 + 80);
  v10 = *(v5 + 88);
  v20 = *(v5 + 56);
  v23[0] = *(v5 + 40);
  v21 = *&v23[0];
  v23[1] = v20;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  sub_1D90EF0AC(v5, v1, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_1D90EF114(v1, v12 + v11, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
  v13 = (v12 + ((v2 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = sub_1D90EF0A4;
  v13[1] = v7;
  v14 = v10;

  v15 = v21;

  v16 = v9;
  sub_1D90B5D9C(v23, sub_1D90E6498, v12);

  v17 = v25;
  v18 = v26;

  return MEMORY[0x1EEE6DEC8](v22);
}

uint64_t sub_1D90EED80(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*(*v2 + 48))
  {
    swift_willThrow();
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_1D90EEEAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA6D8, &qword_1D91B6610);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v13 - v8);
  sub_1D8D088B4(a1, &v13 - v8, &qword_1ECABA6D8, &qword_1D91B6610);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    swift_allocError();
    *v11 = v10;
    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_1D90EF114(v9, v6, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    sub_1D90EF114(v6, *(*(a2 + 64) + 40), type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1D90EF0AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D90EF114(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D90EF1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D8D5FF18;

  return v11(a1, a2, a3, a4);
}

uint64_t type metadata accessor for PodcastsMediaLibrary(uint64_t a1)
{
  result = qword_1ECAB2B78;
  if (!qword_1ECAB2B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D90EF32C(uint64_t a1)
{
  sub_1D8CF1DB0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of PodcastsMediaLibrary.reloadMediaItem(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D8D58924;

  return v8(a1, a2);
}

void sub_1D90EF54C(_OWORD *a1)
{
  v3 = *(sub_1D917734C() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = v1 + ((*(v3 + 80) + 57) & ~*(v3 + 80));

  sub_1D90EBAE0(a1, v4, v5, v6, v7, v8, v9, v10);
}

void *PushRestrictions.__allocating_init(bag:userDefaults:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[2] = 0xD00000000000002BLL;
  result[3] = 0x80000001D91D5F40;
  result[4] = 0x3FF0000000000000;
  result[5] = a1;
  result[6] = a2;
  return result;
}

void *PushRestrictions.init(bag:userDefaults:)(uint64_t a1, uint64_t a2)
{
  v2[2] = 0xD00000000000002BLL;
  v2[3] = 0x80000001D91D5F40;
  v2[4] = 0x3FF0000000000000;
  v2[5] = a1;
  v2[6] = a2;
  return v2;
}

uint64_t PushRestrictions.deinit()
{

  return v0;
}

uint64_t PushRestrictions.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PushRestrictions.shouldProcessUPPPush(forPersonaWithUniqueIdentifier:receivedAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v4[10] = swift_task_alloc();
  v5 = sub_1D9176E3C();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D90EF7F0, 0, 0);
}

uint64_t sub_1D90EF7F0()
{
  v29 = v0;
  v1 = *(*(v0 + 72) + 48);
  *(v0 + 112) = v1;
  if (v1)
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v4 = v1;
    sub_1D917946C();

    *&v27 = 0xD00000000000002CLL;
    *(&v27 + 1) = 0x80000001D91D5F70;
    MEMORY[0x1DA7298F0](v3, v2);
    *(v0 + 120) = 0xD00000000000002CLL;
    *(v0 + 128) = 0x80000001D91D5F70;
    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v6 = [v4 objectForKey_];

    if (v6)
    {
      sub_1D917928C();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v11 = v28;
    *(v0 + 16) = v27;
    *(v0 + 32) = v11;
    v12 = *(v0 + 88);
    v13 = *(v0 + 96);
    v14 = *(v0 + 80);
    if (*(v0 + 40))
    {
      v15 = swift_dynamicCast();
      (*(v13 + 56))(v14, v15 ^ 1u, 1, v12);
      if ((*(v13 + 48))(v14, 1, v12) != 1)
      {
        (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 80), *(v0 + 88));
        v16 = swift_task_alloc();
        *(v0 + 136) = v16;
        *v16 = v0;
        v16[1] = sub_1D90EFCB4;

        return sub_1D90F019C();
      }
    }

    else
    {
      sub_1D8D08A50(v0 + 16, &qword_1ECAB57F0, &unk_1D9190AA0);
      (*(v13 + 56))(v14, 1, 1, v12);
    }

    sub_1D8D08A50(*(v0 + 80), &qword_1ECAB75C0, &unk_1D9188A50);
    if (qword_1EDCD5E40 != -1)
    {
      swift_once();
    }

    v18 = sub_1D917744C();
    __swift_project_value_buffer(v18, qword_1EDCD5E48);

    v19 = sub_1D917741C();
    v20 = sub_1D9178D1C();

    if (os_log_type_enabled(v19, v20))
    {
      v22 = *(v0 + 48);
      v21 = *(v0 + 56);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v27 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1D8CFA924(v22, v21, &v27);
      _os_log_impl(&dword_1D8CEC000, v19, v20, "Never processed a push before for personaUniqueIdentifier %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1DA72CB90](v24, -1, -1);
      MEMORY[0x1DA72CB90](v23, -1, -1);
    }

    v8 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    v25 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    [v4 setObject:v8 forKey:v25];
  }

  else
  {
    if (qword_1EDCD5E40 != -1)
    {
      swift_once();
    }

    v7 = sub_1D917744C();
    __swift_project_value_buffer(v7, qword_1EDCD5E48);
    v8 = sub_1D917741C();
    v9 = sub_1D9178D0C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D8CEC000, v8, v9, "Not valid UserDefaults provided, we can't filter UPP pushes, this might be a problem if servers get overloaded", v10, 2u);
      MEMORY[0x1DA72CB90](v10, -1, -1);
    }
  }

  v26 = *(v0 + 8);

  return v26(1);
}

uint64_t sub_1D90EFCB4(double a1)
{
  *(*v1 + 144) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D90EFDB4, 0, 0);
}

uint64_t sub_1D90EFDB4()
{
  v37 = v0;
  v1 = *(v0 + 144);
  sub_1D9176D0C();
  v3 = v2;
  if (v1 > v2)
  {

    if (qword_1EDCD5E40 != -1)
    {
      swift_once();
    }

    v18 = sub_1D917744C();
    __swift_project_value_buffer(v18, qword_1EDCD5E48);

    v19 = sub_1D917741C();
    v20 = sub_1D9178D1C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 144);
      v22 = *(v0 + 112);
      v35 = *(v0 + 104);
      v23 = *(v0 + 88);
      v24 = *(v0 + 96);
      v26 = *(v0 + 48);
      v25 = *(v0 + 56);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36 = v28;
      *v27 = 136315650;
      *(v27 + 4) = sub_1D8CFA924(v26, v25, &v36);
      *(v27 + 12) = 2048;
      *(v27 + 14) = v3;
      *(v27 + 22) = 2048;
      *(v27 + 24) = v21;
      _os_log_impl(&dword_1D8CEC000, v19, v20, "Time elapsed since last processed UPP push for personaID %s is %f; Grace period is %f => Skipping Push", v27, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1DA72CB90](v28, -1, -1);
      MEMORY[0x1DA72CB90](v27, -1, -1);

      (*(v24 + 8))(v35, v23);
    }

    else
    {
      v29 = *(v0 + 104);
      v30 = *(v0 + 112);
      v31 = *(v0 + 88);
      v32 = *(v0 + 96);

      (*(v32 + 8))(v29, v31);
    }
  }

  else
  {
    if (qword_1EDCD5E40 != -1)
    {
      swift_once();
    }

    v4 = sub_1D917744C();
    __swift_project_value_buffer(v4, qword_1EDCD5E48);

    v5 = sub_1D917741C();
    v6 = sub_1D9178D1C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 144);
      v9 = *(v0 + 48);
      v8 = *(v0 + 56);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v36 = v11;
      *v10 = 136315650;
      *(v10 + 4) = sub_1D8CFA924(v9, v8, &v36);
      *(v10 + 12) = 2048;
      *(v10 + 14) = v3;
      *(v10 + 22) = 2048;
      *(v10 + 24) = v7;
      _os_log_impl(&dword_1D8CEC000, v5, v6, "Time elapsed since last processed UPP push for personaID %s is %f; Grace period is %f => Processing Push", v10, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1DA72CB90](v11, -1, -1);
      MEMORY[0x1DA72CB90](v10, -1, -1);
    }

    v13 = *(v0 + 104);
    v12 = *(v0 + 112);
    v14 = *(v0 + 88);
    v15 = *(v0 + 96);
    v16 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    v17 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    [v12 setObject:v16 forKey:v17];

    (*(v15 + 8))(v13, v14);
  }

  v33 = *(v0 + 8);

  return v33(v1 <= v3);
}

uint64_t sub_1D90F01BC()
{
  v19 = v0;
  v1 = v0[20];
  v2 = v1[5];
  v3 = v1[2];
  v0[21] = v3;
  v4 = v1[3];
  v0[22] = v4;
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v6 = [v2 doubleForKey_];
  v0[23] = v6;

  if ([v6 isLoaded] && (objc_msgSend(v2, sel_isExpired) & 1) == 0)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1D90F04C4;
    v17 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41B8, qword_1D91BEDB0);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D8D5F354;
    v0[13] = &block_descriptor_82;
    v0[14] = v17;
    [v6 valueWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    if (qword_1EDCD5E40 != -1)
    {
      swift_once();
    }

    v7 = sub_1D917744C();
    __swift_project_value_buffer(v7, qword_1EDCD5E48);

    v8 = sub_1D917741C();
    v9 = sub_1D9178D1C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1D8CFA924(v3, v4, &v18);
      _os_log_impl(&dword_1D8CEC000, v8, v9, "Bag key %s not loaded yet, falling back", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1DA72CB90](v11, -1, -1);
      MEMORY[0x1DA72CB90](v10, -1, -1);
    }

    sub_1D90F0BBC();
    v13 = v12;

    v14 = v0[1];
    v15.n128_u64[0] = v13;

    return v14(v15);
  }
}

uint64_t sub_1D90F04C4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1D90F0990;
  }

  else
  {
    v2 = sub_1D90F05D4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D90F05D4()
{
  v33 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v31 = 0.0;
  v32 = 1;
  MEMORY[0x1DA72A000](v1, &v31);
  if (v32)
  {
    if (qword_1EDCD5E40 != -1)
    {
      swift_once();
    }

    v3 = sub_1D917744C();
    __swift_project_value_buffer(v3, qword_1EDCD5E48);

    v1 = v1;
    v4 = sub_1D917741C();
    v5 = sub_1D9178D1C();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 168);
      v6 = *(v0 + 176);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v31 = *&v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_1D8CFA924(v7, v6, &v31);
      *(v8 + 12) = 2080;
      v10 = v1;
      v11 = [v10 description];
      v12 = sub_1D917820C();
      v14 = v13;

      v15 = sub_1D8CFA924(v12, v14, &v31);

      *(v8 + 14) = v15;
      _os_log_impl(&dword_1D8CEC000, v4, v5, "Bag value for key %s is not a TimeInterval, actually found value: %s, falling back", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    v16 = *(v0 + 184);
    sub_1D90F0BBC();
    v18 = v17;
  }

  else
  {
    v18 = v31;
    if (qword_1EDCD5E40 != -1)
    {
      swift_once();
    }

    v19 = sub_1D917744C();
    __swift_project_value_buffer(v19, qword_1EDCD5E48);

    v20 = sub_1D917741C();
    v21 = sub_1D9178D1C();

    if (os_log_type_enabled(v20, v21))
    {
      v23 = *(v0 + 168);
      v22 = *(v0 + 176);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = *&v25;
      *v24 = 136315650;
      *(v24 + 4) = sub_1D8CFA924(v23, v22, &v31);
      *(v24 + 12) = 2048;
      *(v24 + 14) = v18;
      *(v24 + 22) = 1024;
      *(v24 + 24) = v2;
      _os_log_impl(&dword_1D8CEC000, v20, v21, "Bag value for key %s found: %f (isDefault: %{BOOL}d), caching for future use", v24, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1DA72CB90](v25, -1, -1);
      MEMORY[0x1DA72CB90](v24, -1, -1);
    }

    v26 = *(*(v0 + 160) + 48);
    v16 = *(v0 + 184);
    if (v26)
    {
      v27 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      [v26 setDouble:v27 forKey:v18];

      v1 = v16;
      v16 = v27;
    }
  }

  v28 = *(v0 + 8);
  v29.n128_f64[0] = v18;

  return v28(v29);
}

uint64_t sub_1D90F0990(uint64_t a1, uint64_t a2)
{
  v25 = v2;
  swift_willThrow();
  if (qword_1EDCD5E40 != -1)
  {
    swift_once();
  }

  v3 = v2[24];
  v4 = sub_1D917744C();
  __swift_project_value_buffer(v4, qword_1EDCD5E48);

  v5 = v3;
  v6 = sub_1D917741C();
  v7 = sub_1D9178D1C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v2[24];
    v10 = v2[21];
    v9 = v2[22];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1D8CFA924(v10, v9, v24);
    *(v11 + 12) = 2080;
    v2[10] = v8;
    v13 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    v14 = sub_1D917826C();
    v16 = sub_1D8CFA924(v14, v15, v24);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_1D8CEC000, v6, v7, "Error fetching bag value for key %s: %s, falling back", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v12, -1, -1);
    MEMORY[0x1DA72CB90](v11, -1, -1);
  }

  v18 = v2[23];
  v17 = v2[24];
  sub_1D90F0BBC();
  v20 = v19;

  v21 = v2[1];
  v22.n128_u64[0] = v20;

  return v21(v22);
}

void sub_1D90F0BBC()
{
  v1 = v0;
  v2 = *(v0 + 48);
  if (!v2)
  {
    v18 = 0u;
    v19 = 0u;
LABEL_13:
    sub_1D8D08A50(&v18, &qword_1ECAB57F0, &unk_1D9190AA0);
    goto LABEL_14;
  }

  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v6 = [v2 objectForKey_];

  if (v6)
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (!*(&v17 + 1))
  {
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    if (qword_1EDCD5E40 != -1)
    {
      swift_once();
    }

    v7 = sub_1D917744C();
    __swift_project_value_buffer(v7, qword_1EDCD5E48);

    v8 = sub_1D917741C();
    v9 = sub_1D9178D1C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v18 = v11;
      *v10 = 134218242;
      *(v10 + 4) = v16;
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_1D8CFA924(v3, v4, &v18);
      _os_log_impl(&dword_1D8CEC000, v8, v9, "Returning last cached value %f for key %s", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1DA72CB90](v11, -1, -1);
      MEMORY[0x1DA72CB90](v10, -1, -1);
    }

    goto LABEL_18;
  }

LABEL_14:
  if (qword_1EDCD5E40 != -1)
  {
    swift_once();
  }

  v12 = sub_1D917744C();
  __swift_project_value_buffer(v12, qword_1EDCD5E48);

  v8 = sub_1D917741C();
  v13 = sub_1D9178D1C();

  if (os_log_type_enabled(v8, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v18 = v15;
    *v14 = 134218242;
    *(v14 + 4) = 0x3FF0000000000000;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1D8CFA924(*(v1 + 16), *(v1 + 24), &v18);
    _os_log_impl(&dword_1D8CEC000, v8, v13, "Returning default value %f for key %s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1DA72CB90](v15, -1, -1);
    MEMORY[0x1DA72CB90](v14, -1, -1);
  }

LABEL_18:
}

id PushSubscriptionRequest.__allocating_init(endpointURL:action:apnsToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_endpointURL;
  v13 = sub_1D9176C2C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v11[v12], a1, v13);
  v15 = &v11[OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_action];
  *v15 = a2;
  *(v15 + 1) = a3;
  v16 = &v11[OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_apnsToken];
  *v16 = a4;
  *(v16 + 1) = a5;
  v19.receiver = v11;
  v19.super_class = v5;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v14 + 8))(a1, v13);
  return v17;
}

id PushSubscriptionRequest.init(endpointURL:action:apnsToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_endpointURL;
  v13 = sub_1D9176C2C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v5[v12], a1, v13);
  v15 = &v5[OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_action];
  *v15 = a2;
  *(v15 + 1) = a3;
  v16 = &v5[OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_apnsToken];
  *v16 = a4;
  *(v16 + 1) = a5;
  v19.receiver = v5;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v14 + 8))(a1, v13);
  return v17;
}

unint64_t PushSubscriptionRequest.parameters.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9195F30;
  *(inited + 32) = sub_1D917820C();
  *(inited + 40) = v2;
  v3 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_action);
  v4 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_action + 8);
  v5 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 80) = sub_1D917820C();
  *(inited + 88) = v6;
  v7 = objc_opt_self();

  v8 = [v7 mainBundle];
  v9 = [v8 bundleIdentifier];

  if (!v9)
  {
    v13 = (inited + 96);
    *(inited + 120) = v5;
    goto LABEL_5;
  }

  v10 = sub_1D917820C();
  v12 = v11;

  v13 = (inited + 96);
  *(inited + 120) = v5;
  if (!v12)
  {
LABEL_5:
    *v13 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_6;
  }

  *v13 = v10;
LABEL_6:
  *(inited + 104) = v12;
  *(inited + 128) = sub_1D917820C();
  *(inited + 136) = v14;
  v15 = sub_1D917820C();
  *(inited + 168) = v5;
  *(inited + 144) = v15;
  *(inited + 152) = v16;
  *(inited + 176) = sub_1D917820C();
  *(inited + 184) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D918A530;
  *(v18 + 32) = sub_1D917820C();
  *(v18 + 40) = v19;
  *(v18 + 48) = sub_1D917820C();
  *(v18 + 56) = v20;
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  *(inited + 192) = v18;
  *(inited + 224) = sub_1D917820C();
  *(inited + 232) = v21;
  v22 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_apnsToken);
  v23 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_apnsToken + 8);
  *(inited + 264) = MEMORY[0x1E6969080];
  *(inited + 240) = v22;
  *(inited + 248) = v23;
  sub_1D8D752C4(v22, v23);
  v24 = sub_1D8E2696C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E8, &qword_1D9193650);
  swift_arrayDestroy();
  return v24;
}

double PushSubscriptionRequest.buildURLRequest()@<D0>(uint64_t a1@<X8>)
{
  v4 = sub_1D9176C2C();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_endpointURL, v5);
  sub_1D91764EC();
  sub_1D90F1764();
  if (v2)
  {
    v8 = sub_1D917653C();
    (*(*(v8 - 8) + 8))(a1, v8);
  }

  else
  {
    sub_1D917651C();
    sub_1D917648C();
    sub_1D917820C();
    sub_1D917652C();
  }

  return result;
}

void *sub_1D90F1764()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  PushSubscriptionRequest.parameters.getter();
  v1 = sub_1D917802C();

  v6[0] = 0;
  v2 = [v0 dataWithPropertyList:v1 format:200 options:0 error:v6];

  v3 = v6[0];
  if (v2)
  {
    v4 = sub_1D9176C8C();
  }

  else
  {
    v4 = v3;
    sub_1D9176A6C();

    swift_willThrow();
  }

  return v4;
}

id PushSubscriptionRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PushSubscriptionRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PushSubscriptionRequest(uint64_t a1)
{
  result = qword_1ECAB1AE0;
  if (!qword_1ECAB1AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D90F1B80(uint64_t a1)
{
  result = sub_1D9176C2C();
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

uint64_t sub_1D90F1C50(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {

    v10 = v8;
    v8 = sub_1D9176C8C();
    v12 = v11;

    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = 0xF000000000000000;
  if (a3)
  {
LABEL_3:
    a3 = sub_1D917805C();
  }

LABEL_4:
  v13 = a4;
  v14 = a5;
  v9(v8, v12, a3, a4, a5);

  sub_1D8D75668(v8, v12);
}

id sub_1D90F1D60()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionService____lazy_storage___urlRequestService;
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionService____lazy_storage___urlRequestService);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionService____lazy_storage___urlRequestService);
  }

  else
  {
    v4 = [objc_allocWithZone(IMURLRequestService) initWithConcurrentOperationCount:1 requestEncodingType:0];
    [v4 setUrlSessionDelegate_];
    [v4 setPersonalizeRequests_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t PushSubscriptionService.registerPushToken(for:)(uint64_t a1)
{
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D917653C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &type metadata for Podcasts;
  v18 = sub_1D8CF0F2C();
  LOBYTE(aBlock[0]) = 32;
  v10 = sub_1D917710C();
  result = __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  if (v10)
  {
    (*(v3 + 16))(v5, a1 + OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_endpointURL, v2);
    sub_1D91764EC();
    sub_1D90F1764();
    sub_1D917651C();
    sub_1D917648C();
    sub_1D917820C();
    sub_1D917652C();

    v12 = sub_1D90F1D60();
    v13 = sub_1D91764BC();
    v18 = sub_1D90F2254;
    v19 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D90F1C50;
    v17 = &block_descriptor_83;
    v14 = _Block_copy(aBlock);
    [v12 performDataRequest:v13 callback:v14];
    _Block_release(v14);

    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

void sub_1D90F2254(int a1, int a2, int a3, int a4, NSObject *a5)
{
  if (!a5)
  {
    if (qword_1ECAB0BD0 != -1)
    {
      swift_once();
    }

    v14 = sub_1D917744C();
    __swift_project_value_buffer(v14, qword_1ECAB0BD8);
    oslog = sub_1D917741C();
    v15 = sub_1D9178D1C();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D8CEC000, oslog, v15, "[Push] Successfully registered token", v16, 2u);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }

    goto LABEL_10;
  }

  v6 = a5;
  if (qword_1ECAB0BD0 != -1)
  {
    swift_once();
  }

  v7 = sub_1D917744C();
  __swift_project_value_buffer(v7, qword_1ECAB0BD8);
  v8 = a5;
  oslog = sub_1D917741C();
  v9 = sub_1D9178CFC();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = a5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1D8CEC000, oslog, v9, "[Push] Error registering push token %@", v10, 0xCu);
    sub_1D8E262AC(v11);
    MEMORY[0x1DA72CB90](v11, -1, -1);
    MEMORY[0x1DA72CB90](v10, -1, -1);

LABEL_10:
    v17 = oslog;

    goto LABEL_12;
  }

  v17 = a5;

LABEL_12:
}

id PushSubscriptionService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PushSubscriptionService.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionService____lazy_storage___urlRequestService] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id PushSubscriptionService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D90F25C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8CFAD1C(a1, v27);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    *a2 = v23[0];
    *(a2 + 32) = 0;
  }

  else
  {
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v4 = *(&v23[0] + 1);
      *a2 = *&v23[0];
      *(a2 + 8) = v4;
      v5 = 1;
    }

    else if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *a2 = v23[0];
      v5 = 12;
    }

    else if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *a2 = *&v23[0];
      v5 = 13;
    }

    else if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *a2 = *&v23[0];
      v5 = 2;
    }

    else if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *a2 = v23[0];
      v5 = 3;
    }

    else if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *a2 = v23[0];
      v5 = 4;
    }

    else if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *a2 = v23[0];
      v5 = 5;
    }

    else if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *a2 = *&v23[0];
      v5 = 6;
    }

    else if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *a2 = *&v23[0];
      v5 = 7;
    }

    else if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *a2 = v23[0];
      v5 = 8;
    }

    else if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *a2 = v23[0];
      v5 = 9;
    }

    else if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *a2 = v23[0];
      v5 = 10;
    }

    else if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *a2 = *&v23[0];
      v5 = 11;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7A78, &unk_1D9199550);
      if (swift_dynamicCast())
      {
        v6 = *(v26 + 16);
        if (v6)
        {
          v7 = v26 + 32;
          v8 = MEMORY[0x1E69E7CC0];
          do
          {
            sub_1D8CFAD1C(v7, v25);
            sub_1D8CFAD1C(v25, v22);
            sub_1D90F25C8(v22, v23);
            __swift_destroy_boxed_opaque_existential_1Tm(v25);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_1D8ECC5D8(0, *(v8 + 2) + 1, 1, v8);
            }

            v9 = *(v8 + 2);
            v10 = *(v8 + 3);
            v11 = v9 + 1;
            if (v9 >= v10 >> 1)
            {
              v21 = v9 + 1;
              v15 = v8;
              v16 = *(v8 + 2);
              v17 = sub_1D8ECC5D8((v10 > 1), v9 + 1, 1, v15);
              v9 = v16;
              v11 = v21;
              v8 = v17;
            }

            *(v8 + 2) = v11;
            v12 = &v8[40 * v9];
            v13 = v23[0];
            v14 = v23[1];
            v12[64] = v24;
            *(v12 + 2) = v13;
            *(v12 + 3) = v14;
            v7 += 32;
            --v6;
          }

          while (v6);
        }

        else
        {

          v8 = MEMORY[0x1E69E7CC0];
        }

        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        *a2 = v8;
        v5 = 14;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4608, &qword_1D91AC8D0);
        if (swift_dynamicCast())
        {
          sub_1D8FD5948(*&v23[0]);
          v19 = v18;

          __swift_destroy_boxed_opaque_existential_1Tm(a1);
          *a2 = v19;
          v5 = 15;
        }

        else
        {
          sub_1D8CFAD1C(v27, v23);
          __swift_destroy_boxed_opaque_existential_1Tm(a1);
          sub_1D8D65618(v23, a2);
          v5 = 16;
        }
      }
    }

    *(a2 + 32) = v5;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v27);
}

void _s18PodcastsFoundation10AnyCodableO12arrayLiteralACypd_tcfC_0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D8CFAD1C(v4, v14);
      sub_1D8CFAD1C(v14, v11);
      sub_1D90F25C8(v11, v12);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1D8ECC5D8(0, *(v5 + 2) + 1, 1, v5);
      }

      v7 = *(v5 + 2);
      v6 = *(v5 + 3);
      if (v7 >= v6 >> 1)
      {
        v5 = sub_1D8ECC5D8((v6 > 1), v7 + 1, 1, v5);
      }

      *(v5 + 2) = v7 + 1;
      v8 = &v5[40 * v7];
      v9 = v12[0];
      v10 = v12[1];
      v8[64] = v13;
      *(v8 + 2) = v9;
      *(v8 + 3) = v10;
      v4 += 32;
      --v3;
    }

    while (v3);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v5;
  *(a2 + 32) = 14;
}

void sub_1D90F2C34(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4638, &qword_1D918A078);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4608, &qword_1D91AC8D0);
  if (swift_dynamicCast())
  {

    sub_1D8FD5948(v6);
    v4 = v3;

    *a2 = v4;
    v5 = 15;
LABEL_5:
    *(a2 + 32) = v5;

    return;
  }

  if (swift_dynamicCast())
  {

    sub_1D8D65618(&v6, a2);
    v5 = 16;
    goto LABEL_5;
  }

  sub_1D9179ABC();
  __break(1u);
}

uint64_t AnyCodable.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, a2, v7);
  swift_getDynamicType();
  if (swift_dynamicCast())
  {
    v10 = *(v6 + 8);
    v10(a1, a2);
    *a3 = v32[0];
    *(a3 + 32) = 0;
    return (v10)(v9, a2);
  }

  if (swift_dynamicCast())
  {
    v10 = *(v6 + 8);
    v10(a1, a2);
    v11 = *(&v32[0] + 1);
    *a3 = *&v32[0];
    *(a3 + 8) = v11;
    v12 = 1;
LABEL_44:
    *(a3 + 32) = v12;
    return (v10)(v9, a2);
  }

  if (swift_dynamicCast())
  {
    v10 = *(v6 + 8);
    v10(a1, a2);
    *a3 = v32[0];
    v12 = 12;
    goto LABEL_44;
  }

  if (swift_dynamicCast())
  {
    v10 = *(v6 + 8);
    v10(a1, a2);
    *a3 = *&v32[0];
    v12 = 13;
    goto LABEL_44;
  }

  if (swift_dynamicCast())
  {
    v10 = *(v6 + 8);
    v10(a1, a2);
    *a3 = *&v32[0];
    v12 = 2;
    goto LABEL_44;
  }

  if (swift_dynamicCast())
  {
    v10 = *(v6 + 8);
    v10(a1, a2);
    *a3 = v32[0];
    v12 = 3;
    goto LABEL_44;
  }

  if (swift_dynamicCast())
  {
    v10 = *(v6 + 8);
    v10(a1, a2);
    *a3 = v32[0];
    v12 = 4;
    goto LABEL_44;
  }

  if (swift_dynamicCast())
  {
    v10 = *(v6 + 8);
    v10(a1, a2);
    *a3 = v32[0];
    v12 = 5;
    goto LABEL_44;
  }

  if (swift_dynamicCast())
  {
    v10 = *(v6 + 8);
    v10(a1, a2);
    *a3 = *&v32[0];
    v12 = 6;
    goto LABEL_44;
  }

  if (swift_dynamicCast())
  {
    v10 = *(v6 + 8);
    v10(a1, a2);
    *a3 = *&v32[0];
    v12 = 7;
    goto LABEL_44;
  }

  if (swift_dynamicCast())
  {
    v10 = *(v6 + 8);
    v10(a1, a2);
    *a3 = v32[0];
    v12 = 8;
    goto LABEL_44;
  }

  if (swift_dynamicCast())
  {
    v10 = *(v6 + 8);
    v10(a1, a2);
    *a3 = v32[0];
    v12 = 9;
    goto LABEL_44;
  }

  if (swift_dynamicCast())
  {
    v10 = *(v6 + 8);
    v10(a1, a2);
    *a3 = v32[0];
    v12 = 10;
    goto LABEL_44;
  }

  if (swift_dynamicCast())
  {
    v10 = *(v6 + 8);
    v10(a1, a2);
    *a3 = *&v32[0];
    v12 = 11;
    goto LABEL_44;
  }

  v30 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7A78, &unk_1D9199550);
  if (swift_dynamicCast())
  {
    v13 = *(v35 + 16);
    if (v13)
    {
      v14 = v35 + 32;
      v15 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1D8CFAD1C(v14, v34);
        sub_1D8CFAD1C(v34, v31);
        sub_1D90F25C8(v31, v32);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1D8ECC5D8(0, *(v15 + 2) + 1, 1, v15);
        }

        v16 = *(v15 + 2);
        v17 = *(v15 + 3);
        v18 = v16 + 1;
        if (v16 >= v17 >> 1)
        {
          v29 = v16 + 1;
          v22 = v15;
          v23 = v16;
          v24 = sub_1D8ECC5D8((v17 > 1), v16 + 1, 1, v22);
          v16 = v23;
          v18 = v29;
          v15 = v24;
        }

        *(v15 + 2) = v18;
        v19 = &v15[40 * v16];
        v20 = v32[0];
        v21 = v32[1];
        v19[64] = v33;
        *(v19 + 2) = v20;
        *(v19 + 3) = v21;
        v14 += 32;
        --v13;
      }

      while (v13);
    }

    else
    {

      v15 = MEMORY[0x1E69E7CC0];
    }

    v10 = *(v30 + 8);
    v10(a1, a2);
    *a3 = v15;
    v12 = 14;
    goto LABEL_44;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4608, &qword_1D91AC8D0);
  if (swift_dynamicCast())
  {
    sub_1D8FD5948(*&v32[0]);
    v26 = v25;

    v10 = *(v30 + 8);
    v10(a1, a2);
    *a3 = v26;
    v12 = 15;
    goto LABEL_44;
  }

  if (swift_dynamicCast())
  {
    v10 = *(v30 + 8);
    v10(a1, a2);
    sub_1D8D65618(v32, a3);
    v12 = 16;
    goto LABEL_44;
  }

  result = sub_1D9179ABC();
  __break(1u);
  return result;
}