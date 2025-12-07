void sub_1B044AFB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = type metadata accessor for Engine.Logger(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 32);
  *(swift_allocObject() + 16) = v6;
  v11 = v10();

  v12 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingCredentialsRequests;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v3 + v12);
  *(v3 + v12) = 0x8000000000000000;
  sub_1B044B2A0(v6, a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *(v3 + v12) = v23;
  swift_endAccess();
  v14 = v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  sub_1B03903A8(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v9, type metadata accessor for Engine.Logger);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v15 = sub_1B0E43988();
  v16 = sub_1B0E439A8();
  (*(*(v16 - 8) + 8))(v9, v16);
  v17 = sub_1B0E458D8();
  if (os_log_type_enabled(v15, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24[0] = v19;
    *v18 = 68158466;
    *(v18 + 4) = 2;
    *(v18 + 8) = 256;
    *(v18 + 10) = *(v14 + *(v7 + 20));

    *(v18 + 11) = 2080;
    LODWORD(v23) = v11;
    sub_1B07467B8();
    v20 = sub_1B0E44E98();
    v22 = sub_1B0399D64(v20, v21, v24);

    *(v18 + 13) = v22;
    *(v18 + 21) = 1024;
    *(v18 + 23) = v6;
    _os_log_impl(&dword_1B0389000, v15, v17, "[%.*hhx] Sending action %s: request %u for credentials.", v18, 0x1Bu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x1B272C230](v19, -1, -1);
    MEMORY[0x1B272C230](v18, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_1B044B2A0(int a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1B03A2724();
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1B0C4A9AC(v18, a5 & 1);
      result = sub_1B03A2724();
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_1B0E46BA8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_1B0C4B380();
      result = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + 4 * result) = a4;
    v25 = v23[7] + 24 * result;
    *v25 = a1;
    *(v25 + 8) = a2;
    *(v25 + 16) = a3;
    v26 = v23[2];
    v17 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v17)
    {
      v23[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v24 = v23[7] + 24 * result;
  *v24 = a1;
  *(v24 + 8) = a2;
  *(v24 + 16) = a3;
}

unint64_t sub_1B044B414(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result <= 0xFFFFFFFEFFFFFFFFLL)
  {
    return sub_1B044B428(result, a2, a3, a4);
  }

  return result;
}

unint64_t sub_1B044B428(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result >> 62 == 1)
  {
  }

  return result;
}

uint64_t sub_1B044B474(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

BOOL _s15IMAP2Connection29UnauthenticatedStateWithTasksV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  if ((sub_1B044B6EC((a1 + *(v4 + 24)), (a2 + *(v4 + 24))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = *(a1 + v5);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1B0BFE554(0, v7, 0);
    v8 = v29;
    v9 = v6 + 32;
    do
    {
      sub_1B0C3C2E4(v9, &v25);
      *(&v22 + 1) = v26;
      v23 = v27;
      v24 = v28;
      v10 = v25;
      __swift_destroy_boxed_opaque_existential_0Tm(&v22 + 8);
      v29 = v8;
      v12 = v8[2];
      v11 = v8[3];
      if (v12 >= v11 >> 1)
      {
        sub_1B0BFE554((v11 > 1), v12 + 1, 1);
        v8 = v29;
      }

      v8[2] = (v12 + 1);
      v8[v12 + 4] = v10;
      v9 += 48;
      --v7;
    }

    while (v7);
    v5 = *(v4 + 28);
  }

  v13 = *(a2 + v5);
  v14 = *(v13 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1B0BFE554(0, v14, 0);
    v15 = v29;
    v16 = v13 + 32;
    do
    {
      sub_1B0C3C2E4(v16, &v25);
      *(&v22 + 1) = v26;
      v23 = v27;
      v24 = v28;
      v17 = v25;
      __swift_destroy_boxed_opaque_existential_0Tm(&v22 + 8);
      v29 = v15;
      v19 = v15[2];
      v18 = v15[3];
      if (v19 >= v18 >> 1)
      {
        sub_1B0BFE554((v18 > 1), v19 + 1, 1);
        v15 = v29;
      }

      v15[2] = (v19 + 1);
      v15[v19 + 4] = v17;
      v16 += 48;
      --v14;
    }

    while (v14);
  }

  v20 = sub_1B044DB64(v8, v15);

  return (v20 & 1) != 0;
}

uint64_t sub_1B044B6EC(char *a1, uint64_t *a2)
{
  v129 = a1;
  v130 = a2;
  v2 = type metadata accessor for Authenticator(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v122 = &v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UnauthenticatedState(0);
  MEMORY[0x1EEE9AC00](v4);
  v126 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v127 = &v121 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v128 = &v121 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v125 = &v121 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v124 = &v121 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v121 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v121 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v121 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v123 = &v121 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v121 - v26);
  MEMORY[0x1EEE9AC00](v28);
  v30 = (&v121 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E59E0, &unk_1B0EDA800);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = &v121 - v32;
  v35 = (&v121 + *(v34 + 56) - v32);
  sub_1B0433BE8(v129, &v121 - v32, type metadata accessor for UnauthenticatedState);
  v36 = v130;
  v130 = v35;
  sub_1B0433BE8(v36, v35, type metadata accessor for UnauthenticatedState);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B0433BE8(v33, v27, type metadata accessor for UnauthenticatedState);
      v65 = *v27;
      v66 = v130;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_32;
    case 2u:
      v62 = v123;
      sub_1B0433BE8(v33, v123, type metadata accessor for UnauthenticatedState);
      v63 = v130;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v64 = v122;
        sub_1B0C3A6F0(v63, v122, type metadata accessor for Authenticator);
        v55 = sub_1B0BD61C4(v62, v64);
        sub_1B04479C4(v64, type metadata accessor for Authenticator);
        sub_1B04479C4(v62, type metadata accessor for Authenticator);
        goto LABEL_33;
      }

      sub_1B04479C4(v62, type metadata accessor for Authenticator);
      goto LABEL_20;
    case 3u:
      sub_1B0433BE8(v33, v22, type metadata accessor for UnauthenticatedState);
      v65 = *v22;
      v66 = v130;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_19;
      }

LABEL_32:
      v55 = sub_1B044DA4C(v65, *v66);

      goto LABEL_33;
    case 4u:
      sub_1B0433BE8(v33, v19, type metadata accessor for UnauthenticatedState);
      v41 = *v19;
      v42 = *(v19 + 120);
      v43 = *(v19 + 152);
      v141 = *(v19 + 136);
      v142 = v43;
      v143 = *(v19 + 168);
      v44 = *(v19 + 56);
      v45 = *(v19 + 88);
      v137 = *(v19 + 72);
      v138 = v45;
      v139 = *(v19 + 104);
      v140 = v42;
      v46 = *(v19 + 24);
      v133 = *(v19 + 8);
      v134 = v46;
      v135 = *(v19 + 40);
      v136 = v44;
      v47 = v130;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    case 5u:
      sub_1B0433BE8(v33, v16, type metadata accessor for UnauthenticatedState);
      v41 = *v16;
      v82 = *(v16 + 120);
      v83 = *(v16 + 152);
      v141 = *(v16 + 136);
      v142 = v83;
      v143 = *(v16 + 168);
      v84 = *(v16 + 56);
      v85 = *(v16 + 88);
      v137 = *(v16 + 72);
      v138 = v85;
      v139 = *(v16 + 104);
      v140 = v82;
      v86 = *(v16 + 24);
      v133 = *(v16 + 8);
      v134 = v86;
      v135 = *(v16 + 40);
      v136 = v84;
      v47 = v130;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    case 6u:
      v88 = v124;
      sub_1B0433BE8(v33, v124, type metadata accessor for UnauthenticatedState);
      v41 = *v88;
      v89 = *(v88 + 120);
      v90 = *(v88 + 152);
      v141 = *(v88 + 136);
      v142 = v90;
      v143 = *(v88 + 168);
      v91 = *(v88 + 56);
      v92 = *(v88 + 88);
      v137 = *(v88 + 72);
      v138 = v92;
      v139 = *(v88 + 104);
      v140 = v89;
      v93 = *(v88 + 24);
      v133 = *(v88 + 8);
      v134 = v93;
      v135 = *(v88 + 40);
      v136 = v91;
      v47 = v130;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    case 7u:
      v67 = v125;
      sub_1B0433BE8(v33, v125, type metadata accessor for UnauthenticatedState);
      v68 = *v67;
      v69 = *(v67 + 120);
      v70 = *(v67 + 152);
      v141 = *(v67 + 136);
      v142 = v70;
      v143 = *(v67 + 168);
      v71 = *(v67 + 56);
      v72 = *(v67 + 88);
      v137 = *(v67 + 72);
      v138 = v72;
      v139 = *(v67 + 104);
      v140 = v69;
      v73 = *(v67 + 24);
      v133 = *(v67 + 8);
      v134 = v73;
      v135 = *(v67 + 40);
      v136 = v71;
      v74 = v130;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_18;
      }

      v75 = *v74;
      v76 = *(v74 + 15);
      v77 = *(v74 + 19);
      v152 = *(v74 + 17);
      v153 = v77;
      v154 = *(v74 + 21);
      v78 = *(v74 + 7);
      v79 = *(v74 + 11);
      v148 = *(v74 + 9);
      v149 = v79;
      v150 = *(v74 + 13);
      v151 = v76;
      v80 = *(v74 + 3);
      v144 = *(v74 + 1);
      v145 = v80;
      v146 = *(v74 + 5);
      v147 = v78;
      v81 = sub_1B044DA4C(v68, v75);

      if ((v81 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_14;
    case 8u:
      v104 = v128;
      sub_1B0433BE8(v33, v128, type metadata accessor for UnauthenticatedState);
      v105 = *(v104 + 16);
      v131[0] = *v104;
      v131[1] = v105;
      v106 = *(v104 + 48);
      v131[2] = *(v104 + 32);
      v131[3] = v106;
      v41 = *(v104 + 64);
      v107 = *(v104 + 184);
      v108 = *(v104 + 216);
      v141 = *(v104 + 200);
      v142 = v108;
      v143 = *(v104 + 232);
      v109 = *(v104 + 120);
      v110 = *(v104 + 152);
      v137 = *(v104 + 136);
      v138 = v110;
      v139 = *(v104 + 168);
      v140 = v107;
      v111 = *(v104 + 88);
      v133 = *(v104 + 72);
      v134 = v111;
      v135 = *(v104 + 104);
      v136 = v109;
      v112 = v130;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        sub_1B039FF14(&v133);

        sub_1B0A1C37C();
        goto LABEL_20;
      }

      v113 = *(v112 + 1);
      v132[0] = *v112;
      v132[1] = v113;
      v114 = *(v112 + 3);
      v132[2] = *(v112 + 2);
      v132[3] = v114;
      v48 = v112[8];
      v115 = *(v112 + 23);
      v116 = *(v112 + 27);
      v152 = *(v112 + 25);
      v153 = v116;
      v154 = *(v112 + 29);
      v117 = *(v112 + 15);
      v118 = *(v112 + 19);
      v148 = *(v112 + 17);
      v149 = v118;
      v150 = *(v112 + 21);
      v151 = v115;
      v119 = *(v112 + 11);
      v144 = *(v112 + 9);
      v145 = v119;
      v146 = *(v112 + 13);
      v147 = v117;
      v120 = static PushRegistrationInfo.__derived_struct_equals(_:_:)(v131, v132);
      sub_1B0A1C37C();
      sub_1B0A1C37C();
      if (v120)
      {
        goto LABEL_13;
      }

      sub_1B039FF14(&v144);

      sub_1B039FF14(&v133);
      goto LABEL_51;
    case 9u:
      v56 = v127;
      sub_1B0433BE8(v33, v127, type metadata accessor for UnauthenticatedState);
      v41 = *v56;
      v57 = *(v56 + 120);
      v58 = *(v56 + 152);
      v141 = *(v56 + 136);
      v142 = v58;
      v143 = *(v56 + 168);
      v59 = *(v56 + 56);
      v60 = *(v56 + 88);
      v137 = *(v56 + 72);
      v138 = v60;
      v139 = *(v56 + 104);
      v140 = v57;
      v61 = *(v56 + 24);
      v133 = *(v56 + 8);
      v134 = v61;
      v135 = *(v56 + 40);
      v136 = v59;
      v47 = v130;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
LABEL_18:
        sub_1B039FF14(&v133);
LABEL_19:

        goto LABEL_20;
      }

LABEL_12:
      v48 = *v47;
      v49 = *(v47 + 15);
      v50 = *(v47 + 19);
      v152 = *(v47 + 17);
      v153 = v50;
      v154 = *(v47 + 21);
      v51 = *(v47 + 7);
      v52 = *(v47 + 11);
      v148 = *(v47 + 9);
      v149 = v52;
      v150 = *(v47 + 13);
      v151 = v49;
      v53 = *(v47 + 3);
      v144 = *(v47 + 1);
      v145 = v53;
      v146 = *(v47 + 5);
      v147 = v51;
LABEL_13:
      v54 = sub_1B044DA4C(v41, v48);

      if ((v54 & 1) == 0)
      {
LABEL_30:
        sub_1B039FF14(&v144);
        sub_1B039FF14(&v133);
        goto LABEL_52;
      }

LABEL_14:
      v55 = static ServerID.__derived_struct_equals(_:_:)(&v133, &v144);
      sub_1B039FF14(&v133);
      sub_1B039FF14(&v144);
LABEL_33:
      sub_1B04479C4(v33, type metadata accessor for UnauthenticatedState);
      return v55 & 1;
    case 0xAu:
      v94 = v126;
      sub_1B0433BE8(v33, v126, type metadata accessor for UnauthenticatedState);
      v95 = *v94;
      v96 = *(v94 + 8);
      v97 = *(v94 + 16);
      v98 = *(v94 + 24);
      v99 = v130;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v129 = v33;
        v100 = *v99;
        v101 = v99[1];
        v102 = v99[2];
        v103 = *(v99 + 24);
        v55 = sub_1B0C373C8(v95, v96, v97, v98, *v99, v101, v102, v103);
        sub_1B0BD1458(v100, v101, v102, v103);
        sub_1B0BD1458(v95, v96, v97, v98);
        sub_1B04479C4(v129, type metadata accessor for UnauthenticatedState);
        return v55 & 1;
      }

      sub_1B0BD1458(v95, v96, v97, v98);
LABEL_20:
      sub_1B0398EFC(v33, &qword_1EB6E59E0, &unk_1B0EDA800);
      goto LABEL_21;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    default:
      sub_1B0433BE8(v33, v30, type metadata accessor for UnauthenticatedState);
      v37 = *v30;
      v38 = v130;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_19;
      }

      v39 = *v38;
      if (!v37)
      {
        if (!v39)
        {
          goto LABEL_37;
        }

LABEL_51:

        goto LABEL_52;
      }

      if (!v39)
      {
        goto LABEL_51;
      }

      v40 = sub_1B044DA4C(v37, v39);

      if (v40)
      {
LABEL_37:
        sub_1B04479C4(v33, type metadata accessor for UnauthenticatedState);
        v55 = 1;
        return v55 & 1;
      }

LABEL_52:
      sub_1B04479C4(v33, type metadata accessor for UnauthenticatedState);
LABEL_21:
      v55 = 0;
      return v55 & 1;
  }
}

uint64_t sub_1B044C2EC()
{
  v1 = v0;
  v21 = sub_1B0E43828();
  v2 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B0E43868();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v1 + v12, v11, type metadata accessor for ConnectionState);
  v13 = sub_1B044C5EC();
  sub_1B038D690(v11, type metadata accessor for ConnectionState);
  result = sub_1B044C5EC();
  v15 = v13;
  if (v13 != result)
  {
    v16 = tracingSignposter.unsafeMutableAddressor();
    (*(v6 + 16))(v8, v16, v5);
    sub_1B0E43838();
    v17 = sub_1B0E43858();
    v18 = sub_1B0E45AE8();
    if (sub_1B0E45D38())
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = v15;
      v20 = sub_1B0E43818();
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v17, v18, v20, "Connection.imapStateUpdate", "%u", v19, 8u);
      MEMORY[0x1B272C230](v19, -1, -1);
    }

    (*(v2 + 8))(v4, v21);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_1B044C5EC()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1B044C754(v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1B044C7B8(v4);
      return 7;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B044C7B8(v4);
      return 1;
    }

    else
    {
      memcpy(v14, v4, 0x162uLL);
      v7 = *(v4 + 21);
      v15[8] = *(v4 + 20);
      v15[9] = v7;
      v16 = *(v4 + 176);
      v8 = *(v4 + 17);
      v15[4] = *(v4 + 16);
      v15[5] = v8;
      v9 = *(v4 + 19);
      v15[6] = *(v4 + 18);
      v15[7] = v9;
      v10 = *(v4 + 13);
      v15[0] = *(v4 + 12);
      v15[1] = v10;
      v11 = *(v4 + 15);
      v15[2] = *(v4 + 14);
      v15[3] = v11;
      v12 = sub_1B0BE2780(v15);
      sub_1B03DB9A4(v15);
      sub_1B0BE278C(v14);
      return (v12 + 2);
    }
  }

  else
  {
    sub_1B044C7B8(v4);
    return 0;
  }
}

uint64_t sub_1B044C754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B044C7B8(uint64_t a1)
{
  v2 = type metadata accessor for ConnectionState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConnectionState.mailboxSelectionPayload(old:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30[-v8];
  sub_1B038CA0C(a1, &v30[-v8], type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v42, v9, sizeof(v42));
    v10 = *(v9 + 21);
    v51 = *(v9 + 20);
    v52 = v10;
    v53 = *(v9 + 176);
    v11 = *(v9 + 17);
    v47 = *(v9 + 16);
    v48 = v11;
    v12 = *(v9 + 19);
    v49 = *(v9 + 18);
    v50 = v12;
    v13 = *(v9 + 13);
    v43 = *(v9 + 12);
    v44 = v13;
    v14 = *(v9 + 15);
    v45 = *(v9 + 14);
    v46 = v14;
    if (sub_1B0BE2780(&v43) == 2)
    {
      v15 = sub_1B03DB9A4(&v43);
      v39 = *&v42[320];
      v40 = *&v42[336];
      v41 = *&v42[352];
      v35 = *&v42[256];
      v36 = *&v42[272];
      v37 = *&v42[288];
      v38 = *&v42[304];
      v31 = *&v42[192];
      v32 = *&v42[208];
      v33 = *&v42[224];
      v34 = *&v42[240];
      v16 = sub_1B03DB9A4(&v31);
      sub_1B0B37A20(v16, __dst);
      sub_1B0BE278C(v42);
      memmove(__dst, v15, 0x4BuLL);
      goto LABEL_7;
    }

    sub_1B0BE278C(v42);
  }

  else
  {
    sub_1B038C704(v9, type metadata accessor for ConnectionState);
  }

  memset(__dst, 0, 75);
LABEL_7:
  sub_1B038CA0C(v2, v6, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B038C704(v6, type metadata accessor for ConnectionState);
    if (!*&__dst[0])
    {
      return 0xF000000000000007;
    }

LABEL_14:
    sub_1B0398EFC(__dst, &qword_1EB6E4580, &qword_1B0EC5720);
    return 0x8000000000000000;
  }

  memcpy(v42, v6, sizeof(v42));
  v17 = *(v6 + 21);
  v51 = *(v6 + 20);
  v52 = v17;
  v53 = *(v6 + 176);
  v18 = *(v6 + 17);
  v47 = *(v6 + 16);
  v48 = v18;
  v19 = *(v6 + 19);
  v49 = *(v6 + 18);
  v50 = v19;
  v20 = *(v6 + 13);
  v43 = *(v6 + 12);
  v44 = v20;
  v21 = *(v6 + 15);
  v45 = *(v6 + 14);
  v46 = v21;
  if (sub_1B0BE2780(&v43) != 2)
  {
    sub_1B0BE278C(v42);
    if (!*&__dst[0])
    {
      return 0xF000000000000007;
    }

    goto LABEL_14;
  }

  v22 = sub_1B03DB9A4(&v43);
  v39 = *&v42[320];
  v40 = *&v42[336];
  v41 = *&v42[352];
  v35 = *&v42[256];
  v36 = *&v42[272];
  v37 = *&v42[288];
  v38 = *&v42[304];
  v31 = *&v42[192];
  v32 = *&v42[208];
  v33 = *&v42[224];
  v34 = *&v42[240];
  v23 = sub_1B03DB9A4(&v31);
  sub_1B0B37A20(v23, v30);
  sub_1B0BE278C(v42);
  if (*&__dst[0])
  {
    if ((DWORD2(__dst[0]) | (DWORD2(__dst[0]) << 32)) == (*(v22 + 8) | (*(v22 + 8) << 32)))
    {
      v24 = sub_1B04520BC(*&__dst[0], *v22);
      sub_1B0398EFC(__dst, &qword_1EB6E4580, &qword_1B0EC5720);
      if (v24)
      {
        sub_1B0BE27E0(&v42[192]);
        return 0xF000000000000007;
      }
    }

    else
    {
      sub_1B0398EFC(__dst, &qword_1EB6E4580, &qword_1B0EC5720);
    }
  }

  v26 = swift_allocObject();
  *(v26 + 16) = *v22;
  v28 = *(v22 + 32);
  v27 = *(v22 + 48);
  v29 = *(v22 + 16);
  *(v26 + 75) = *(v22 + 59);
  *(v26 + 48) = v28;
  *(v26 + 64) = v27;
  *(v26 + 32) = v29;
  return v26 | 0x2000000000000000;
}

uint64_t sub_1B044CBD0()
{

  return swift_deallocObject();
}

uint64_t sub_1B044CC18(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7CD0];
  v11 = MEMORY[0x1E69E7CD0];
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = a2 + 32;
    v6 = (a2 + 36);
    v7 = *(a2 + 16);
    do
    {
      if (*(v6 - 1) == a1)
      {
        sub_1B0C1FA20(&v10, *v6);
      }

      v6 += 10;
      --v7;
    }

    while (v7);
    v11 = v3;
    do
    {
      if (*v5 == a1 && *(v5 + 24) != 0)
      {
        sub_1B0C1FA20(&v10, *(v5 + 4));
      }

      v5 += 40;
      --v4;
    }

    while (v4);
  }

  return a1;
}

unint64_t sub_1B044CD04(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) > 3)
  {
    if (v1 > 5)
    {
      if (v1 == 6 || v1 == 7)
      {
      }
    }

    else if (v1 == 4 || v1 == 5)
    {
    }
  }

  else
  {
    if (v1 <= 1)
    {
      if (v1 >= 2)
      {
        return result;
      }
    }

    if (v1 == 2 || v1 == 3)
    {
    }
  }

  return result;
}

char *sub_1B044CDD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5460, "x(\t");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1B044CEF8(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) > 3)
  {
    if (v1 > 5)
    {
      if (v1 == 6 || v1 == 7)
      {
      }
    }

    else if (v1 == 4 || v1 == 5)
    {
    }
  }

  else
  {
    if (v1 <= 1)
    {
      if (v1 >= 2)
      {
        return result;
      }
    }

    if (v1 == 2 || v1 == 3)
    {
    }
  }

  return result;
}

uint64_t sub_1B044CF68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnauthenticatedState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1B044CFCC(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 184) = -1;
  return result;
}

uint64_t sub_1B044CFF8(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_1B044D00C(uint64_t a1, uint64_t (*a2)(_OWORD *), uint64_t a3)
{
  v4 = v3;
  v72 = a2;
  v73 = a3;
  v6 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v67 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v67 - v15;
  sub_1B044D768(a1, &v67 - v15, _s6LoggerVMa_0);
  sub_1B044D768(a1, v13, _s6LoggerVMa_0);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v68 = a1;
  v17 = sub_1B0E43988();
  v18 = sub_1B0E458D8();
  v19 = os_log_type_enabled(v17, v18);
  v70 = v8;
  v77 = v4;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v89[0] = v21;
    *v20 = 68158210;
    *(v20 + 4) = 2;
    *(v20 + 8) = 256;
    v22 = v13[*(v6 + 20)];
    sub_1B044D830(v13, _s6LoggerVMa_0);
    *(v20 + 10) = v22;
    v8 = v70;
    *(v20 + 11) = 2082;
    v23 = *&v16[*(v6 + 20) + 4];
    sub_1B044D830(v16, _s6LoggerVMa_0);
    v24 = ConnectionID.debugDescription.getter(v23);
    v26 = sub_1B0399D64(v24, v25, v89);

    *(v20 + 13) = v26;
    _os_log_impl(&dword_1B0389000, v17, v18, "[%.*hhx-%{public}s] Checking for new actions.", v20, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    v27 = v21;
    v4 = v77;
    MEMORY[0x1B272C230](v27, -1, -1);
    MEMORY[0x1B272C230](v20, -1, -1);
  }

  else
  {
    sub_1B044D830(v13, _s6LoggerVMa_0);

    sub_1B044D830(v16, _s6LoggerVMa_0);
  }

  v28 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  v29 = *(v28 + 24);
  v30 = *(v28 + 28);
  v74 = *v4;
  v75 = v29;
  v76 = v6;
  v71 = v30;
  while (1)
  {
    v31 = *(v4 + v30);
    v32 = v31[2];
    v78 = v31;
    if (v32)
    {
      v81 = MEMORY[0x1E69E7CC0];
      sub_1B0BFE594(0, v32, 0);
      v33 = v81;
      v34 = (v31 + 4);
      do
      {
        sub_1B0C3C2E4(v34, v79);
        v36 = *(&v80 + 1);
        v35 = v80;
        __swift_project_boxed_opaque_existential_0(v79 + 1, v80);
        v37 = (*(v36 + 8))(v35, v36);
        sub_1B0398EFC(v79, &qword_1EB6E5708, ",w\b");
        v81 = v33;
        v39 = *(v33 + 16);
        v38 = *(v33 + 24);
        v40 = v39 + 1;
        if (v39 >= v38 >> 1)
        {
          sub_1B0BFE594((v38 > 1), v39 + 1, 1);
          v33 = v81;
        }

        *(v33 + 16) = v40;
        *(v33 + v39 + 32) = v37;
        v34 += 48;
        --v32;
      }

      while (v32);
      v8 = v70;
    }

    else
    {
      v33 = MEMORY[0x1E69E7CC0];
      v40 = *(MEMORY[0x1E69E7CC0] + 16);
    }

    v41 = sub_1B044D890();
    *&v79[0] = MEMORY[0x1B2727570](v40, &type metadata for TaskID, v41);
    v42 = *(v33 + 16);
    v4 = v77;
    if (v42)
    {
      v43 = (v33 + 32);
      do
      {
        v44 = *v43++;
        sub_1B0C1FD08(&v81, v44);
        --v42;
      }

      while (v42);
    }

    sub_1B043336C(*&v79[0], v74, &v82);

    v45 = v76;
    if (!v83)
    {
      sub_1B0398EFC(&v82, &qword_1EB6E5A20, &qword_1B0EDBD70);
      return;
    }

    sub_1B0450C74(&v82, v84);
    v46 = v85;
    v47 = v86;
    __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
    (*(v47 + 16))(v87, v46, v47);
    if (v88 == 255)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v84);
      return;
    }

    v89[0] = v87[0];
    v89[1] = v87[1];
    v89[2] = v87[2];
    v89[3] = v87[3];
    v90 = v88;
    v48 = v72(v89);
    if (v49)
    {
      break;
    }

    *&v79[0] = v48;
    sub_1B03D2CA8(v84, v79 + 8);
    v50 = v78;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_1B0C0C434(0, v50[2] + 1, 1, v50);
    }

    v52 = v50[2];
    v51 = v50[3];
    if (v52 >= v51 >> 1)
    {
      v50 = sub_1B0C0C434((v51 > 1), v52 + 1, 1, v50);
    }

    v50[2] = v52 + 1;
    v53 = &v50[6 * v52];
    v54 = v79[0];
    v55 = v80;
    v53[3] = v79[1];
    v53[4] = v55;
    v53[2] = v54;
    v30 = v71;
    *(v4 + v71) = v50;
    __swift_destroy_boxed_opaque_existential_0Tm(v84);
    sub_1B0398EFC(v87, &qword_1EB6E5A28, &qword_1B0EDBD78);
  }

  sub_1B0398EFC(v87, &qword_1EB6E5A28, &qword_1B0EDBD78);
  __swift_destroy_boxed_opaque_existential_0Tm(v84);
  v56 = v68;
  v57 = v69;
  sub_1B044D768(v68, v69, _s6LoggerVMa_0);
  sub_1B044D768(v56, v8, _s6LoggerVMa_0);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v58 = sub_1B0E43988();
  v59 = sub_1B0E458C8();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *&v79[0] = v61;
    *v60 = 68158210;
    *(v60 + 4) = 2;
    *(v60 + 8) = 256;
    v62 = v8[*(v45 + 20)];
    sub_1B044D830(v8, _s6LoggerVMa_0);
    *(v60 + 10) = v62;
    *(v60 + 11) = 2082;
    v63 = *(v57 + *(v45 + 20) + 4);
    sub_1B044D830(v57, _s6LoggerVMa_0);
    v64 = ConnectionID.debugDescription.getter(v63);
    v66 = sub_1B0399D64(v64, v65, v79);

    *(v60 + 13) = v66;
    _os_log_impl(&dword_1B0389000, v58, v59, "[%.*hhx-%{public}s] No connection available to send command.", v60, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v61);
    MEMORY[0x1B272C230](v61, -1, -1);
    MEMORY[0x1B272C230](v60, -1, -1);
  }

  else
  {
    sub_1B044D830(v8, _s6LoggerVMa_0);

    sub_1B044D830(v57, _s6LoggerVMa_0);
  }
}

uint64_t sub_1B044D768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B044D7D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B044D830(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B044D890()
{
  result = qword_1EB6DCD78;
  if (!qword_1EB6DCD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCD78);
  }

  return result;
}

uint64_t sub_1B044D8E4()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(v1, v4, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v14, v4, 0x162uLL);
    v5 = v14[0];
    v6 = Capability.condStore.unsafeMutableAddressor();
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = *(v6 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v5) = sub_1B039F8EC(v7, v8, v9, v10, v5);

    if (v5)
    {
      v11 = sub_1B0BF5170(&unk_1F271B8A8);
      sub_1B0BE278C(v14);
      return v11;
    }

    sub_1B0BE278C(v14);
  }

  else
  {
    sub_1B038C704(v4, type metadata accessor for ConnectionState);
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1B044DA4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a2 + 48);
    v6 = *(a2 + 56);
    v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
    if (v7 || (v8 = a1, v9 = a2, v10 = sub_1B0E46A78(), a2 = v9, v11 = v10, a1 = v8, (v11 & 1) != 0))
    {
      v12 = (a1 + 88);
      v13 = v2 - 1;
      for (i = (a2 + 88); ; i += 32)
      {
        if (v4)
        {
          if ((v6 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v6 & 1 | (((v5 ^ v3) & 0xFFFFFFFFFFFFC000) != 0))
        {
          return 0;
        }

        if (!v13)
        {
          break;
        }

        v3 = *(v12 - 1);
        v4 = *v12;
        v5 = *(i - 1);
        v6 = *i;
        v15 = *(v12 - 3) == *(i - 3) && *(v12 - 2) == *(i - 2);
        if (!v15 && (sub_1B0E46A78() & 1) == 0)
        {
          return 0;
        }

        v12 += 32;
        --v13;
      }

      return 1;
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B044DB64(int32x2_t *a1, int32x2_t *a2)
{
  v2 = a1[2];
  if (*&v2 != *&a2[2])
  {
    return 0;
  }

  if (!*&v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 4;
  v4 = a2 + 4;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vceq_s32(v6, v7);
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --*&v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

void sub_1B044DBD8()
{
  v1 = v0;
  v2 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6)
  {
    *(v1 + v5) = 0;
    if (*(v6 + 16) && (v7 = v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate, swift_unknownObjectWeakLoadStrong()))
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(v6, ObjectType, v8);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v10 = v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1B038C9A4(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v4, _s6LoggerVMa_0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v11 = sub_1B0E43988();
    v12 = sub_1B0E439A8();
    (*(*(v12 - 8) + 8))(v4, v12);
    v13 = sub_1B0E458E8();
    if (os_log_type_enabled(v11, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 68158210;
      *(v14 + 4) = 2;
      *(v14 + 8) = 256;
      v16 = v10 + *(v2 + 20);
      *(v14 + 10) = *v16;

      *(v14 + 11) = 2082;
      v17 = ConnectionID.debugDescription.getter(*(v16 + 4));
      v19 = sub_1B0399D64(v17, v18, &v20);

      *(v14 + 13) = v19;
      _os_log_impl(&dword_1B0389000, v11, v13, "[%.*hhx-%{public}s] Trying to send nil enqueued events.", v14, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x1B272C230](v15, -1, -1);
      MEMORY[0x1B272C230](v14, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1B044DE78(uint64_t a1)
{
  v3 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 80);
  if (v6)
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      if (*(v6 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) == *(a1 + 32))
      {
        v8 = *(v1 + 88);
        v9 = (a1 + 40);
        v10 = v7 + 1;
        while (--v10)
        {
          v11 = *v9;
          v9 += 5;
          if (v11 == 0x8000000000000010)
          {
            v12 = *(*v6 + 304);

            v12(v13);
            sub_1B0C3D620(v8, v5);

            sub_1B038C7C4(v5, type metadata accessor for ConnectionState);
            return;
          }
        }
      }
    }
  }
}

uint64_t _s5StateO6ActionOMa(uint64_t a1)
{
  result = qword_1EB6DC268;
  if (!qword_1EB6DC268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B044E010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = sub_1B0E441D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  if (*(v3 + 16) == 2 && *v3 == a1)
  {
    sub_1B044C754(a2, &v29 - v15);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      sub_1B044C7B8(v16);
      *v3 = a1 + 1;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      (*(v8 + 56))(a3, 1, 1, v7);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
      return (*(*(v23 - 8) + 56))(a3, 0, 2, v23);
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        *v3 = a1 + 1;
        *(v3 + 8) = 0;
        *(v3 + 16) = 0;
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
        (*(*(v22 - 8) + 56))(a3, 2, 2, v22);
        return sub_1B044C7B8(v16);
      }
    }

    else
    {
      sub_1B044C754(v16, v13);
      v24 = sub_1B0E43DF8();
      v25 = *(v24 - 8);
      if ((*(v25 + 88))(v13, v24) == *MEMORY[0x1E6977C18])
      {
        (*(v25 + 96))(v13, v24);
        v26 = *(v8 + 32);
        v26(v10, v13, v7);
        *v3 = a1 + 1;
        *(v3 + 8) = 0;
        *(v3 + 16) = 0;
        v26(a3, v10, v7);
        (*(v8 + 56))(a3, 0, 1, v7);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
        (*(*(v27 - 8) + 56))(a3, 0, 2, v27);
        return sub_1B044C7B8(v16);
      }

      (*(v25 + 8))(v13, v24);
    }

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
    (*(*(v28 - 8) + 56))(a3, 1, 2, v28);
    return sub_1B044C7B8(v16);
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  v19 = *(*(v18 - 8) + 56);

  return v19(a3, 1, 2, v18);
}

uint64_t sub_1B044E460(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateO6ActionOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B044E4C4()
{
  v1 = v0;
  v2 = sub_1B0E44468();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 16);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2, v4);
  v8 = v7;
  v9 = sub_1B0E44488();
  (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_11;
  }

  swift_beginAccess();
  v10 = *(v1 + 72);
  if (*(v1 + 64) && *(v1 + 64) == 1)
  {
    if (v10)
    {
      return;
    }

    v11 = swift_allocObject();
    swift_weakInit();

    v12 = sub_1B0C3D0E8(v8, sub_1B0C3E1FC, v11);

    *(v1 + 72) = v12;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_getObjectType();
    sub_1B0E45AA8();
    if (qword_1EB6DC1B0 != -1)
    {
      swift_once();
    }

    v13 = sub_1B0E439A8();
    __swift_project_value_buffer(v13, qword_1EB6DC1C0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v14 = sub_1B0E43988();
    v15 = sub_1B0E45908();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 68157952;
      *(v16 + 4) = 2;
      *(v16 + 8) = 256;
      *(v16 + 10) = *(v1 + 24);

      _os_log_impl(&dword_1B0389000, v14, v15, "[%.*hhx] Did create timer.", v16, 0xBu);
      MEMORY[0x1B272C230](v16, -1, -1);
      swift_unknownObjectRelease();

      return;
    }

    goto LABEL_13;
  }

  if (!v10)
  {
    return;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1B0E45A98();
  *(v1 + 72) = 0;
  swift_unknownObjectRelease();
  if (qword_1EB6DC1B0 != -1)
  {
    goto LABEL_16;
  }

LABEL_11:
  v17 = sub_1B0E439A8();
  __swift_project_value_buffer(v17, qword_1EB6DC1C0);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v14 = sub_1B0E43988();
  v18 = sub_1B0E45908();
  if (os_log_type_enabled(v14, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 68157952;
    *(v19 + 4) = 2;
    *(v19 + 8) = 256;
    *(v19 + 10) = *(v1 + 24);
    swift_unknownObjectRelease();

    _os_log_impl(&dword_1B0389000, v14, v18, "[%.*hhx] Did cancel timer.", v19, 0xBu);
    MEMORY[0x1B272C230](v19, -1, -1);

    return;
  }

LABEL_13:
  swift_unknownObjectRelease();
}

uint64_t sub_1B044E8C4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1B044E8FC()
{
  v2 = v0;
  v3 = sub_1B0E44468();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 16);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1B0E44488();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
LABEL_6:
    v12 = sub_1B0E439A8();
    __swift_project_value_buffer(v12, qword_1EB6DC1C0);
    swift_retain_n();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    swift_retain_n();
    v13 = sub_1B0E43988();
    v14 = sub_1B0E45908();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v38 = v16;
      *v15 = 68158466;
      *(v15 + 4) = 2;
      *(v15 + 8) = 256;
      v17 = *(v2 + 24);

      *(v15 + 10) = v17;

      *(v15 + 11) = 2082;
      v18 = ConnectionID.debugDescription.getter(*(v3 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
      v20 = sub_1B0399D64(v18, v19, &v38);

      *(v15 + 13) = v20;
      *(v15 + 21) = 2048;

      *(v15 + 23) = v1;

      _os_log_impl(&dword_1B0389000, v13, v14, "[%.*hhx] Did cancel connection %{public}s, generation %ld", v15, 0x1Fu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1B272C230](v16, -1, -1);
      MEMORY[0x1B272C230](v15, -1, -1);

      return;
    }

    goto LABEL_17;
  }

  swift_beginAccess();
  v3 = *(v2 + 80);
  v1 = *(v2 + 88);
  if (!*(v2 + 64) || *(v2 + 64) == 1)
  {
    if (!v3)
    {
      return;
    }

    v10 = *(*v3 + 536);

    v10(v11);
    *(v2 + 80) = 0;
    *(v2 + 88) = 0;

    if (qword_1EB6DC1B0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  v21 = *(v2 + 48);
  if (v3)
  {
    if (v21 == v1)
    {
      return;
    }

    v22 = *(*v3 + 536);
    v23 = swift_retain_n();
    v22(v23);
  }

  v24 = (*(v2 + 96))(v2, &off_1F2721238);
  *(v2 + 80) = v24;
  *(v2 + 88) = v21;

  v25 = *(*v24 + 528);

  v25(v26);

  if (qword_1EB6DC1B0 != -1)
  {
    swift_once();
  }

  v27 = sub_1B0E439A8();
  __swift_project_value_buffer(v27, qword_1EB6DC1C0);
  swift_retain_n();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  swift_retain_n();
  v28 = sub_1B0E43988();
  v29 = sub_1B0E45908();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v38 = v31;
    *v30 = 68158722;
    *(v30 + 4) = 2;
    *(v30 + 8) = 256;
    v32 = *(v2 + 24);

    *(v30 + 10) = v32;

    *(v30 + 11) = 2082;
    v33 = ConnectionID.debugDescription.getter(*(v24 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
    v35 = sub_1B0399D64(v33, v34, &v38);

    *(v30 + 13) = v35;
    *(v30 + 21) = 2048;
    v37 = (*(*v24 + 432))(v36);

    *(v30 + 23) = v37;

    *(v30 + 31) = 2048;

    *(v30 + 33) = v21;

    _os_log_impl(&dword_1B0389000, v28, v29, "[%.*hhx] Did create connection %{public}s [C%llu], generation %ld", v30, 0x29u);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x1B272C230](v31, -1, -1);
    MEMORY[0x1B272C230](v30, -1, -1);
  }

  else
  {
  }

LABEL_17:
}

unint64_t get_enum_tag_for_layout_string_15IMAP2Connection5EventV7PayloadO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 60;
  }

  else
  {
    return (*a1 >> 3) + 8;
  }
}

uint64_t sub_1B044EF38(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1B044EF48(uint64_t a1)
{
  v3 = *(_s6LoggerVMa_0(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B0429DF4(a1, (v1 + v4), v6, v7);
}

uint64_t sub_1B044EFF4(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionStateDidChange;
  *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionStateDidChange) = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  sub_1B044F088(v5, a1, v2);

  if (*(v2 + v4) == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1B04504BC();
      result = swift_unknownObjectRelease();
    }

    *(v2 + v4) = 0;
  }

  return result;
}

uint64_t sub_1B044F088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26[-v9];
  v11 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_enqueuedEvents;
  swift_beginAccess();
  if (*(a1 + v11))
  {
    v12 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_1B03B5C80(a1 + v12, v10, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v13 = sub_1B0E439A8();
    v14 = *(v13 - 8);
    result = (*(v14 + 48))(v10, 1, v13);
    if (result != 1)
    {

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v16 = sub_1B0E43988();
      v17 = sub_1B0E458D8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 68157952;
        *(v18 + 4) = 2;
        *(v18 + 8) = 256;
        *(v18 + 10) = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        _os_log_impl(&dword_1B0389000, v16, v17, "[%.*hhx] withEnqueuedSend() called while we already have enqueued events.", v18, 0xBu);
        MEMORY[0x1B272C230](v18, -1, -1);
      }

      else
      {
      }

      (*(v14 + 8))(v10, v13);
      return sub_1B044F4CC(a2);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  *(a1 + v11) = MEMORY[0x1E69E7CC0];
  sub_1B044F4CC(a2);
  v19 = *(a1 + v11);
  if (v19)
  {
    *(a1 + v11) = 0;
    if (*(v19 + 16) && swift_unknownObjectWeakLoadStrong())
    {
      sub_1B041F3D0(v19);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v20 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_1B03B5C80(a1 + v20, v7, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v21 = sub_1B0E439A8();
    v22 = *(v21 - 8);
    result = (*(v22 + 48))(v7, 1, v21);
    if (result == 1)
    {
      goto LABEL_19;
    }

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v23 = sub_1B0E43988();
    v24 = sub_1B0E458E8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 68157952;
      *(v25 + 4) = 2;
      *(v25 + 8) = 256;
      *(v25 + 10) = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      _os_log_impl(&dword_1B0389000, v23, v24, "[%.*hhx] nil enqueued events after enqueueing.", v25, 0xBu);
      MEMORY[0x1B272C230](v25, -1, -1);
    }

    else
    {
    }

    return (*(v22 + 8))(v7, v21);
  }
}

uint64_t sub_1B044F4CC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 64);
    do
    {
      v3 = *(v2 - 3);
      v4 = *(v2 - 4);
      v5 = *(v2 - 1);
      v6 = *v2;
      v7 = *(v2 - 8);
      v8 = v3;
      v9 = v4;
      v10 = v5;
      v11 = v6;
      sub_1B044CD04(v3);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B044F574(&v7);
      sub_1B044CEF8(v3);

      v2 += 5;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_1B044F574(unsigned int *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v106 = &v104 - v4;
  v116 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v116);
  v117 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v113 = &v104 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v118 = &v104 - v9;
  v115 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  MEMORY[0x1EEE9AC00](v115);
  v120 = (&v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v119 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v123 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v122 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v104 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v104 - v16);
  v18 = sub_1B0E44468();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = (&v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v22 = v23;
  v24 = *(v19 + 104);
  v107 = *MEMORY[0x1E69E8020];
  v108 = v24;
  v109 = v19 + 104;
  v24(v22, v20);
  v25 = v23;
  v26 = sub_1B0E44488();
  v28 = *(v19 + 8);
  v27 = v19 + 8;
  v111 = v22;
  v112 = v27;
  v110 = v28;
  v28(v22, v18);
  if ((v26 & 1) == 0)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v29 = *(a1 + 1);
  v128 = v29;
  v30 = v29 >> 60;
  if (v29 >> 60 == 1)
  {
    v105 = v18;
    v121 = a1;
    v52 = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    LODWORD(v116) = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState);
    v113 = (v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState);
    v114 = v1;
    v27 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState + 8);
    v53 = *(v52 + 16);
    v118 = v52;
    if (v53)
    {
      v54 = 0;
      v55 = MEMORY[0x1E69E7CC0];
      v117 = v53;
      while (v54 < *(v52 + 16))
      {
        v56 = (*(v123 + 80) + 32) & ~*(v123 + 80);
        v57 = *(v123 + 72);
        sub_1B03C623C(v52 + v56 + v57 * v54, v17, type metadata accessor for CommandConnection.RecentErrors.Error);
        if (v27 >= *v17)
        {
          sub_1B038C824(v17, type metadata accessor for CommandConnection.RecentErrors.Error);
        }

        else
        {
          sub_1B038CBB4(v17, v122, type metadata accessor for CommandConnection.RecentErrors.Error);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v129 = v55;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B0C57BB4(0, *(v55 + 16) + 1, 1);
            v55 = v129;
          }

          v60 = *(v55 + 16);
          v59 = *(v55 + 24);
          if (v60 >= v59 >> 1)
          {
            sub_1B0C57BB4((v59 > 1), v60 + 1, 1);
            v55 = v129;
          }

          *(v55 + 16) = v60 + 1;
          sub_1B038CBB4(v122, v55 + v56 + v60 * v57, type metadata accessor for CommandConnection.RecentErrors.Error);
          v53 = v117;
          v52 = v118;
        }

        if (v53 == ++v54)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v55 = MEMORY[0x1E69E7CC0];
LABEL_43:
    *&v129 = v55;

    sub_1B0C56874(&v129);

    v67 = v129;
    v68 = *(v129 + 16);
    if (!v68)
    {
      v73 = v27;
LABEL_66:

      v76 = v113;
      v77 = *v113;
      *v113 = v116;
      *(v76 + 1) = v73;
      sub_1B0C4D17C(v77);
      if (CommandConnection.RecentErrors.containsAuthenticationFailure.getter(v118))
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v40 = Strong;
          v79 = *(Strong + 16);
          v80 = v111;
          *v111 = v79;
          v81 = v105;
          v108(v80, v107, v105);
          v82 = v79;
          LOBYTE(v79) = sub_1B0E44488();
          v110(v80, v81);
          if ((v79 & 1) == 0)
          {
            __break(1u);
LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          v40[4](0xB000000000000010);
          swift_unknownObjectRelease();
        }
      }

      sub_1B0C52BF4(v121);
      return;
    }

    v69 = 0;
    v70 = v129 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
    while (1)
    {
      if (v69 >= *(v67 + 16))
      {
        goto LABEL_82;
      }

      sub_1B03C623C(v70 + *(v123 + 72) * v69, v14, type metadata accessor for CommandConnection.RecentErrors.Error);
      v73 = *v14;
      if (v27 >= *v14)
      {
        v71 = type metadata accessor for CommandConnection.RecentErrors.Error;
        v72 = v14;
      }

      else
      {
        v74 = v120;
        sub_1B03C623C(v14 + *(v119 + 20), v120, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        if (!swift_getEnumCaseMultiPayload())
        {
          v27 = *v74;
          v122 = v74[1];
          v40 = v74[2];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5B50, &unk_1B0EDC5D8);
          if (v40)
          {
            if (v116 != 1)
            {
              if (v116 == 2)
              {
                sub_1B038C824(v14, type metadata accessor for CommandConnection.RecentErrors.Error);
                sub_1B0BD1488(v27, v122, v40);
                v75 = 2;
              }

              else if (v40 == 1)
              {
                sub_1B038C824(v14, type metadata accessor for CommandConnection.RecentErrors.Error);
                v75 = 2;
              }

              else
              {
                if (v116 && v116 != 3)
                {
                  goto LABEL_89;
                }

                sub_1B038C824(v14, type metadata accessor for CommandConnection.RecentErrors.Error);
                sub_1B0BD1488(v27, v122, v40);
                v75 = 3;
              }

              goto LABEL_59;
            }

            sub_1B038C824(v14, type metadata accessor for CommandConnection.RecentErrors.Error);
            sub_1B0BD1488(v27, v122, v40);
          }

          else
          {
            sub_1B038C824(v14, type metadata accessor for CommandConnection.RecentErrors.Error);
          }

          v75 = 1;
LABEL_59:
          LODWORD(v116) = v75;
          goto LABEL_47;
        }

        sub_1B038C824(v14, type metadata accessor for CommandConnection.RecentErrors.Error);
        v71 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind;
        v72 = v74;
      }

      sub_1B038C824(v72, v71);
      v73 = v27;
LABEL_47:
      ++v69;
      v27 = v73;
      if (v68 == v69)
      {
        goto LABEL_66;
      }
    }
  }

  if (v30 == 8 && v29 == 0x8000000000000010)
  {
    *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionStateDidChange) = 1;
    return;
  }

  v123 = v29;
  v31 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v14 = *(v1 + v31);
  v114 = v1;
  v121 = a1;
  v104 = v30;
  v105 = v18;
  if (!(v14 >> 62))
  {
    v32 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_8;
  }

LABEL_85:
  v32 = sub_1B0E46138();
LABEL_8:
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v32)
  {
    v33 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x1B2728410](v33, v14);
        v27 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v33 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_83;
        }

        v34 = *(v14 + 8 * v33 + 32);

        v27 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }
      }

      v35 = *(v34 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
      if (v35 == *v121)
      {
        break;
      }

      ++v33;
      if (v27 == v32)
      {
        goto LABEL_19;
      }
    }

    v62 = v113;
    (*(*v34 + 304))(v61);
    v63 = v117;
    sub_1B038CBB4(v62, v117, type metadata accessor for ConnectionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
LABEL_80:

        return;
      }
    }

    else if (EnumCaseMultiPayload >= 2)
    {
      sub_1B038C824(v63, type metadata accessor for ConnectionState);
      if (v104)
      {
        if (v104 != 2)
        {
          v65 = v121;
          if (v104 == 8 && v123 == 0x8000000000000000)
          {
            v131 = 0u;
            memset(v132, 0, 27);
            v129 = 0u;
            v130 = 0u;
            v66 = v121;
            sub_1B0C53354(&v129, v35);
            v65 = v66;
          }

          goto LABEL_79;
        }

        v83 = *((v123 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v84 = *((v123 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v85 = *((v123 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        *(v127 + 11) = *((v123 & 0xFFFFFFFFFFFFFFFLL) + 0x4B);
        v86 = *(v127 + 11);
        v126[2] = v84;
        v127[0] = v85;
        v126[1] = v83;
        v126[0] = *((v123 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *(v132 + 11) = v86;
        v87 = *((v123 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v130 = *((v123 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v131 = v87;
        v132[0] = *((v123 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v129 = *((v123 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        sub_1B0B37A20(v126, v125);
        sub_1B0C53354(&v129, v35);
        sub_1B0B37A7C(v126);
LABEL_78:
        v65 = v121;
LABEL_79:
        sub_1B0C52808(v65);
        goto LABEL_80;
      }

      v88 = static MonotonicTime.now()();
      v89 = v114;
      v90 = v114 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState;
      v91 = *(v114 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState);
      *v90 = 0;
      *(v90 + 8) = v88;
      sub_1B0C4D17C(v91);
      v92 = swift_unknownObjectWeakLoadStrong();
      if (!v92)
      {
LABEL_77:
        v97 = v89 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
        swift_beginAccess();
        *v97 = 0;
        *(v97 + 8) = 0;
        *(v97 + 16) = 1;
        v98 = *(**(v89 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffTimer) + 208);
        v99 = v89;

        v98(v100);

        v101 = type metadata accessor for ConnectionStatus.Error(0);
        v102 = v106;
        (*(*(v101 - 8) + 56))(v106, 1, 1, v101);
        v103 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastError;
        swift_beginAccess();
        sub_1B03DC928(v102, v99 + v103);
        swift_endAccess();
        goto LABEL_78;
      }

      v40 = v92;
      v93 = *(v92 + 16);
      v94 = v111;
      *v111 = v93;
      v95 = v105;
      v108(v94, v107, v105);
      v96 = v93;
      LOBYTE(v93) = sub_1B0E44488();
      v110(v94, v95);
      if (v93)
      {
        v40[4](0xB000000000000008);
        swift_unknownObjectRelease();
        goto LABEL_77;
      }

      goto LABEL_87;
    }

    sub_1B038C824(v63, type metadata accessor for ConnectionState);
    return;
  }

LABEL_19:

  v36 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  v37 = v114;
  swift_beginAccess();
  v38 = v37 + v36;
  v39 = v118;
  sub_1B03B5C80(v38, v118, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v40 = sub_1B0E439A8();
  v41 = *(v40 - 1);
  if ((*(v41 + 48))(v39, 1, v40) != 1)
  {

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v42 = v121;
    v43 = *(v121 + 4);
    *&v126[0] = *(v121 + 3);
    v125[0] = v43;
    sub_1B0C5A0E4(&v128, &v124);
    sub_1B03B5C80(v126, &v124, &qword_1EB6E5B48, &qword_1B0EDC5D0);
    sub_1B03B5C80(v125, &v124, &qword_1EB6E5B48, &qword_1B0EDC5D0);
    v44 = sub_1B0E43988();
    v45 = v37;
    v46 = sub_1B0E458E8();
    sub_1B0C5A140(&v128);
    sub_1B0398EFC(v126, &qword_1EB6E5B48, &qword_1B0EDC5D0);
    sub_1B0398EFC(v125, &qword_1EB6E5B48, &qword_1B0EDC5D0);
    if (os_log_type_enabled(v44, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v124 = v48;
      *v47 = 68158210;
      *(v47 + 4) = 2;
      *(v47 + 8) = 256;
      *(v47 + 10) = *(v45 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      *(v47 + 11) = 2082;
      v49 = ConnectionID.debugDescription.getter(*v42);
      v51 = sub_1B0399D64(v49, v50, &v124);

      *(v47 + 13) = v51;
      _os_log_impl(&dword_1B0389000, v44, v46, "[%.*hhx] Got callback for connection %{public}s but this connection is unknown to the pool.", v47, 0x15u);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x1B272C230](v48, -1, -1);
      MEMORY[0x1B272C230](v47, -1, -1);
    }

    else
    {
    }

    (*(v41 + 8))(v118, v40);
    return;
  }

LABEL_88:
  __break(1u);
LABEL_89:
  sub_1B0BD67B0(v27, v122, v40);
  sub_1B0E46A68();
  __break(1u);

  __break(1u);
}

uint64_t sub_1B04504CC()
{
  v17 = 0;
  v13 = sub_1B0E44468();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v14 = (&v3 - v9);
  v17 = v0;

  v10 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v10);
  v1 = v11;
  *v14 = v10;
  (*(v1 + 104))();
  v15 = sub_1B0E44488();
  (*(v11 + 8))(v14, v13);
  result = v15;
  if (v15)
  {

    v7 = v8 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownEnvironment;
    swift_beginAccess();
    if ((*v7 & 0xFF00) == 0x200)
    {
      swift_endAccess();
      v6 = 2;
    }

    else
    {
      v5 = *(v7 + 1);
      swift_endAccess();
      v6 = v5 & 1;
    }

    v16 = v6;
    if (v6 == 2)
    {
      v4 = 1;
    }

    else
    {
      v4 = v16;
    }

    return v4 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13IMAP2Behavior11RunningTaskV0D0O(uint64_t a1)
{
  if ((*(a1 + 45) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 45) & 3;
  }
}

void sub_1B045070C(unint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Task.Logger(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v41 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v41 - v12;
  v14 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      v17 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
      {
        sub_1B0450DB0(v2, v46);
        if (v47)
        {
          sub_1B0B7ABB4(v46);
        }

        else
        {
          sub_1B0450C74(v46, &v48);
          v22 = *(v2 + 48);
          v23 = *(v2 + 56);
          v24 = v49;
          v25 = v50;
          __swift_mutable_project_boxed_opaque_existential_1(&v48, v49);
          (*(v25 + 64))(v17, v22, v23, v24, v25);
          sub_1B0B7ABB4(v2);
          sub_1B0450C74(&v48, v2);
          *(v2 + 45) = 0;
        }

        v26 = type metadata accessor for RunningTask(0);
        v27 = sub_1B0390340(v2 + *(v26 + 28), v13, type metadata accessor for Task.Logger);
        MEMORY[0x1EEE9AC00](v27);
        v41[-2] = v17;
        v41[-1] = v13;
        sub_1B0B76AEC(a1, sub_1B0B7C698);
        v21 = v13;
      }

      else
      {
        v20 = type metadata accessor for RunningTask(0);
        sub_1B0390340(v2 + *(v20 + 28), v7, type metadata accessor for Task.Logger);
        sub_1B0B77560(v7, v17, a1, a2);
        v21 = v7;
      }

      sub_1B0453E78(v21, type metadata accessor for Task.Logger);
    }
  }

  else
  {
    v18 = *(a1 + 24);
    if (((1 << (v18 >> 60)) & 0x1E7) == 0)
    {
      v51 = *(a1 + 40);
      if (v18 >> 60 == 3)
      {
        v19 = swift_projectBox();
        sub_1B0390340(v19, v16, type metadata accessor for UntaggedResponse);
        sub_1B0450DB0(v2, v46);
        if (v47)
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B044CD04(v18);
          sub_1B0B7ABB4(v46);
        }

        else
        {
          sub_1B0450C74(v46, &v48);
          v34 = *(v2 + 48);
          v44 = *(v2 + 56);
          v45 = v34;
          v35 = v50;
          v43 = v49;
          v36 = __swift_mutable_project_boxed_opaque_existential_1(&v48, v49);
          v37 = *(v35 + 56);
          v41[1] = v36;
          v41[2] = v35 + 56;
          v42 = v37;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B044CD04(v18);
          v38 = v45;
          v45 = v2;
          v42(v16, v38, v44, v43, v35);
          v2 = v45;
          sub_1B0B7ABB4(v45);
          sub_1B0450C74(&v48, v2);
          *(v2 + 45) = 0;
        }

        v39 = type metadata accessor for RunningTask(0);
        v40 = sub_1B0390340(v2 + *(v39 + 28), v13, type metadata accessor for Task.Logger);
        MEMORY[0x1EEE9AC00](v40);
        v41[-4] = a2;
        v41[-3] = v16;
        v41[-2] = v13;
        sub_1B0B76AEC(a1, sub_1B0B7C720);

        sub_1B0453E78(v13, type metadata accessor for Task.Logger);
        v32 = type metadata accessor for UntaggedResponse;
        v33 = v16;
      }

      else
      {
        v28 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v29 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v30 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v44 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v45 = v28;
        v43 = v30;
        LODWORD(v42) = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v31 = type metadata accessor for RunningTask(0);
        sub_1B0390340(v2 + *(v31 + 28), v10, type metadata accessor for Task.Logger);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B044CD04(v18);
        sub_1B0B76D20(v10, v45, v29, v44, v43, v42, a1, a2);

        v32 = type metadata accessor for Task.Logger;
        v33 = v10;
      }

      sub_1B0453E78(v33, v32);
      sub_1B044CEF8(v18);
    }
  }
}

uint64_t sub_1B0450C74(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1B0450C8C()
{
  result = qword_1EB6DE008;
  if (!qword_1EB6DE008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE008);
  }

  return result;
}

uint64_t sub_1B0450CE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0450D48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1B0450DE8@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_1B0450E2C(a2, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double sub_1B0450E2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(a1 + 24) + 64))(v5, *(a1 + 16));
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_1B0450E84@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t sub_1B0450ED8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0450F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0450DB0(a1, v40);
  if (v41)
  {
    if (v41 == 1)
    {
      sub_1B0450C74(v40, v37);
      v6 = v38;
      v7 = v39;
      __swift_project_boxed_opaque_existential_0(v37, v38);
      (*(v7 + 32))(&v42, v6, v7);
      v8 = v43;
      v9 = v44;
      v45 = v42;
      sub_1B039E440(&v45);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      sub_1B04513B4();
      if (v10)
      {
      }

      else
      {
        v12 = *(a3 + 16);
        v13 = a3 + 32;
        if (a2)
        {
          sub_1B0BA7CA4(v8, v9, v13, v12, (a2 + 16), a2 + 32);
        }

        else
        {
          sub_1B03A912C(v8, v9, v13, v12);
        }

        v15 = v14;

        if (v15)
        {
          v16 = a1 + *(type metadata accessor for RunningTask(0) + 28);
          v17 = v16 + *(type metadata accessor for Task.Logger(0) + 20);
          v19 = *v17;
          v18 = *(v17 + 8);
          v20 = *(v17 + 16);
          v21 = *(v17 + 24);
          v22 = *(v17 + 32);
          v47 = *(v17 + 40);
          if (v21 < 0)
          {
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v23 = sub_1B0E43988();
            v31 = sub_1B0E458D8();
            if (!os_log_type_enabled(v23, v31))
            {

              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();
              return 1;
            }

            v25 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            v37[0] = v36;
            *v25 = 68159235;
            v46 = v31;
            *(v25 + 4) = 2;
            *(v25 + 8) = 256;
            *(v25 + 10) = v19;
            *(v25 + 11) = 2082;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v32 = sub_1B0399D64(v18, v20, v37);

            *(v25 + 13) = v32;
            *(v25 + 21) = 1040;
            *(v25 + 23) = 2;
            *(v25 + 27) = 512;

            *(v25 + 29) = v21;

            *(v25 + 31) = 2160;
            *(v25 + 33) = 0x786F626C69616DLL;
            *(v25 + 41) = 2085;

            *&v40[0] = v22;
            DWORD2(v40[0]) = v47;
            v33 = sub_1B0E44BA8();
            v35 = sub_1B0399D64(v33, v34, v37);

            *(v25 + 43) = v35;
            _os_log_impl(&dword_1B0389000, v23, v46, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Pruning. No mailbox affinity, not targeting mailboxes-to-be-selected.", v25, 0x33u);
            swift_arrayDestroy();
            v30 = v36;
          }

          else
          {
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v23 = sub_1B0E43988();
            v24 = sub_1B0E458D8();
            if (!os_log_type_enabled(v23, v24))
            {

              sub_1B0A92018(v19, v18, v20, v21);
              return 1;
            }

            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            *&v40[0] = v26;
            *v25 = 68158210;
            *(v25 + 4) = 2;
            *(v25 + 8) = 256;
            *(v25 + 10) = v19;
            *(v25 + 11) = 2082;
            v27 = sub_1B0399D64(v18, v20, v40);
            v28 = v18;
            v29 = v27;
            sub_1B0A92018(v19, v28, v20, v21);
            *(v25 + 13) = v29;
            _os_log_impl(&dword_1B0389000, v23, v24, "[%.*hhx-%{public}s] Pruning. No mailbox affinity, not targeting mailboxes-to-be-selected.", v25, 0x15u);
            __swift_destroy_boxed_opaque_existential_0Tm(v26);
            v30 = v26;
          }

          MEMORY[0x1B272C230](v30, -1, -1);
          MEMORY[0x1B272C230](v25, -1, -1);

          return 1;
        }
      }
    }
  }

  else
  {
    sub_1B0B7ABB4(v40);
  }

  return 0;
}

uint64_t sub_1B04513B4()
{
  sub_1B0450DB0(v0, v9);
  if (v12)
  {
    if (v12 == 1)
    {
      v1 = v10;
      v2 = v11;
      sub_1B0450C74(v9, v6);
      if ((v2 & 1) == 0)
      {
        v4 = v7;
        v5 = v8;
        __swift_project_boxed_opaque_existential_0(v6, v7);
        (*(v5 + 32))(&v13, v4, v5);
        v14 = v13;
        sub_1B039E440(&v14);
        __swift_destroy_boxed_opaque_existential_0Tm(v6);
        return v1;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v6);
    }
  }

  else
  {
    sub_1B0B7ABB4(v9);
  }

  return 0;
}

uint64_t sub_1B0451498(_OWORD *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1B0E46C28();
  sub_1B0E461D8();
  v6 = sub_1B0E46CB8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = *a2;
    do
    {
      sub_1B03D0A20(*(v5 + 48) + 48 * v8, &v17);
      if (v17 == v10)
      {
        v11 = MEMORY[0x1B27282E0](&v18, a2 + 1);
        sub_1B03B04BC(&v17);
        if (v11)
        {
          sub_1B03B04BC(a2);
          sub_1B03D0A20(*(v5 + 48) + 48 * v8, a1);
          return 0;
        }
      }

      else
      {
        sub_1B03B04BC(&v17);
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B03D0A20(a2, &v17);
  v16 = *v3;
  sub_1B0451674(&v17, v8, isUniquelyReferenced_nonNull_native);
  *v3 = v16;
  v14 = *(a2 + 1);
  *a1 = *a2;
  a1[1] = v14;
  a1[2] = *(a2 + 2);
  return 1;
}

uint64_t sub_1B0451674(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_1B0B054C8(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1B0B07C38();
      goto LABEL_15;
    }

    sub_1B0B09AE4(v7 + 1);
  }

  v9 = *v3;
  sub_1B0E46C28();
  sub_1B0E461D8();
  result = sub_1B0E46CB8();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = *v6;
    do
    {
      sub_1B03D0A20(*(v9 + 48) + 48 * a2, &v20);
      if (v20 == v12)
      {
        v13 = MEMORY[0x1B27282E0](&v21, v6 + 8);
        result = sub_1B03B04BC(&v20);
        if (v13)
        {
          result = sub_1B0E46B98();
          __break(1u);
          break;
        }
      }

      else
      {
        result = sub_1B03B04BC(&v20);
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = (*(v14 + 48) + 48 * a2);
  v16 = *(v6 + 16);
  *v15 = *v6;
  v15[1] = v16;
  v15[2] = *(v6 + 32);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v19;
  }

  return result;
}

double sub_1B0451868()
{
  if (qword_1EB6DDF28 != -1)
  {
    swift_once();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

_DWORD *sub_1B04518C4(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
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

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void *sub_1B0451A90(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = _s18InProgressMessagesVMa(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B0451BC0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
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

uint64_t sub_1B0451D10(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s18InProgressMessagesVMa(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B0451E64(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B0451ED8();
  result = MEMORY[0x1B2727570](v2, &type metadata for SyncStep, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1B03BDD7C(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1B0451ED8()
{
  result = qword_1EB6DD1C0;
  if (!qword_1EB6DD1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD1C0);
  }

  return result;
}

unint64_t sub_1B0451F2C()
{
  v2 = qword_1EB6DE980;
  if (!qword_1EB6DE980)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE980);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0451FA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0451FE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_1B045202C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1B0E46A78() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B04520BC(uint64_t a1, uint64_t a2)
{
  v12 = sub_1B03B1F78(a1);
  v2 = sub_1B03B1F78(a2);
  result = v12;
  if (v12 != v2)
  {
    v9 = 0;
    return v9 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v9 = 1;
    return v9 & 1;
  }

  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; (i & 0x8000000000000000) == 0; ++i)
    {
      if (i >= v12)
      {
        goto LABEL_22;
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_23;
      }

      has_malloc_size = _swift_stdlib_has_malloc_size();
      sub_1B071D0C4(i, has_malloc_size & 1, a1);
      v7 = sub_1B071D114(i, has_malloc_size & 1, a1);
      v6 = _swift_stdlib_has_malloc_size();
      sub_1B071D0C4(i, v6 & 1, a2);
      result = sub_1B071D114(i, v6 & 1, a2);
      if (v7 != result)
      {
        v9 = 0;
        return v9 & 1;
      }

      if (i + 1 == v12)
      {
        v9 = 1;
        return v9 & 1;
      }
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t static MailboxName.== infix(_:_:)(uint64_t result, int a2, uint64_t a3, int a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  v4 = *(result + 16);
  if (v4 != *(a3 + 16))
  {
    return 0;
  }

  if (!v4 || result == a3)
  {
    return 1;
  }

  v5 = (result + 32);
  v6 = (a3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B04522DC(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8) | (*(a1 + 8) << 32)) == (*(a2 + 8) | (*(a2 + 8) << 32)))
  {
    return sub_1B04520BC(*a1, *a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0452308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B0450DB0(a1, v14);
  if (!v15)
  {
    sub_1B0B7ABB4(v14);
    goto LABEL_5;
  }

  if (v15 != 1)
  {
LABEL_5:
    v6 = 0;
    v7 = 0;
    goto LABEL_6;
  }

  sub_1B0450C74(v14, v11);
  v4 = v12;
  v5 = v13;
  __swift_project_boxed_opaque_existential_0(v11, v12);
  (*(v5 + 32))(&v16, v4, v5);
  v6 = v17;
  v7 = v18;
  v19 = v16;
  sub_1B039E440(&v19);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
LABEL_6:
  result = type metadata accessor for RunningTask(0);
  v9 = (a1 + *(result + 36));
  v10 = *v9;
  LOBYTE(v9) = *(v9 + 8);
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v10;
  *(a2 + 24) = v9;
  return result;
}

char *sub_1B04523F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4380, &qword_1B0EC50C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1B04524FC(char *a1, int64_t a2, char a3)
{
  result = sub_1B04523F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B045251C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CE0, &qword_1B0EE4E80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B0452620(char *a1, int64_t a2, char a3)
{
  result = sub_1B045251C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double sub_1B0452640(unint64_t a1)
{
  if (a1 >= 2)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

unint64_t sub_1B0452650(NSObject *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void, void, void), uint64_t a5, char *a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8, __int128 a9, unsigned __int8 a10, uint64_t a11, unint64_t a12)
{
  v221 = a8;
  v220 = a7;
  v217 = a5;
  v218 = a6;
  v202 = a3;
  v223 = a2;
  v216 = a1;
  v13 = a12;
  LODWORD(v271) = a10;
  v14 = type metadata accessor for MailboxSyncState(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v196 = &v189[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v214 = type metadata accessor for Command(0);
  v16 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v18 = &v189[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v207 = &v189[-v20];
  v213 = type metadata accessor for ClientCommand(0);
  v21 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v197 = &v189[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v198 = &v189[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v201 = &v189[-v26];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC8, &qword_1B0EC92F8);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v194 = &v189[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v193 = &v189[-v30];
  MEMORY[0x1EEE9AC00](v31);
  v199 = &v189[-v32];
  MEMORY[0x1EEE9AC00](v33);
  v206 = &v189[-v34];
  MEMORY[0x1EEE9AC00](v35);
  v205 = &v189[-v36];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BD0, &qword_1B0EC9300);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v192 = &v189[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v39);
  v204 = &v189[-v40];
  v268 = a9;
  v41 = v217;
  v42 = v223;
  LOBYTE(v269) = v271;
  *(&v269 + 1) = a11;
  v270 = a12;
  v224 = a11;
  v43 = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0452640(a12);
  v203 = v18;
  v195 = v18 + 8;
  v212 = (v21 + 48);
  v208 = (v16 + 56);
  v200 = (v21 + 56);
  v215 = a12;
  v271 = a4;
  while (1)
  {
    while (1)
    {
      v45 = swift_allocObject();
      v47 = v220;
      v46 = v221;
      *(v45 + 16) = v218;
      *(v45 + 24) = v47;
      *(v45 + 32) = v46;
      v48 = v269;
      *(v45 + 40) = v268;
      *(v45 + 56) = v48;
      *(v45 + 72) = v270;
      sub_1B0450DB0(v41, v242);
      v219 = v45;
      if (v245)
      {
        break;
      }

      sub_1B0450C74(v242, &v228);
      v60 = *(type metadata accessor for RunningTask(0) + 48);
      v61 = *(v41 + v60);
      *(v41 + v60) = v61 + 1;
      v62 = *(v41 + 48);
      v209 = *(v41 + 56);
      v210 = v62;
      v63 = *(&v229 + 1);
      v64 = v230;
      __swift_mutable_project_boxed_opaque_existential_1(&v228, *(&v229 + 1));
      v65 = *(v64 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0452640(v13);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0452640(v13);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v66 = sub_1B0452640(v13);
      v211 = v61;
      v67 = v205;
      v65(v61 & 0xFFFFFF, v210, v209, v63, v64, v66);
      v68 = v206;
      sub_1B03B5C80(v67, v206, &qword_1EB6E4BC8, &qword_1B0EC92F8);
      if ((*v212)(v68, 1, v213) == 1)
      {
        sub_1B0398EFC(v67, &qword_1EB6E4BC8, &qword_1B0EC92F8);
        v69 = v204;
        (*v208)(v204, 1, 1, v214);
      }

      else
      {
        v70 = v201;
        sub_1B0423C18(v68, v201, type metadata accessor for ClientCommand);
        v69 = v204;
        sub_1B0390340(v70, v204, type metadata accessor for ClientCommand);
        v71 = v214;
        swift_storeEnumTagMultiPayload();
        (*v208)(v69, 0, 1, v71);
        sub_1B0453E78(v70, type metadata accessor for ClientCommand);
        sub_1B0398EFC(v67, &qword_1EB6E4BC8, &qword_1B0EC92F8);
      }

      v72 = v222;
      v73 = v216;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v13 = v215;
      sub_1B0452640(v215);
      v41 = v217;
      v74 = v72;
      v75 = sub_1B0B7ACA4(v69, v211 & 0xFFFFFF, v217, v73, v218, v220, v221, &v268);

      sub_1B03C81E4(v13);
      sub_1B0398EFC(v69, &qword_1EB6E4BD0, &qword_1B0EC9300);
      v43 = v271;
      v222 = v74;
      if (v74)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(&v228);

        goto LABEL_55;
      }

      if (v75 < 2u)
      {
        sub_1B0B7ABB4(v41);
        sub_1B03D2CA8(&v228, v41);
        *(v41 + 45) = 0;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v228);

      sub_1B03C81E4(v13);

      sub_1B03C81E4(v13);
      v42 = v223;
      v44 = v75;
      if (v75)
      {
LABEL_48:
        v145 = v44 == 1;
        goto LABEL_51;
      }
    }

    if (v245 != 1)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0452640(v13);

      v145 = 1;
LABEL_51:
      v58 = v216;
      goto LABEL_58;
    }

    v49 = v243;
    if (v244)
    {
      sub_1B0450C74(v242, &v228);
      v50 = *(&v229 + 1);
      v51 = v230;
      __swift_project_boxed_opaque_existential_0(&v228, *(&v229 + 1));
      v52 = *(v51 + 32);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0452640(v13);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0452640(v13);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v53 = sub_1B0452640(v13);
      v52(&v246, v50, v51, v53);
      v54 = v247;
      LODWORD(v51) = v248;
      v263 = v246;
      sub_1B039E440(&v263);
      v55 = v207;
      *v207 = v49;
      v56 = 1;
      *(v55 + 4) = 1;
      *(v55 + 1) = v54;
      v55[4] = v51;
      swift_storeEnumTagMultiPayload();
      sub_1B0390340(v55, v203, type metadata accessor for Command);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3E68, &unk_1B0EDC5C0);
        }

        v117 = v197;
        sub_1B0423C18(v203, v197, type metadata accessor for ClientCommand);
        v118 = v117;
        v59 = v199;
        sub_1B0423C18(v118, v199, type metadata accessor for ClientCommand);
        v56 = 0;
        v58 = v216;
        v41 = v217;
        v42 = v223;
        v43 = v271;
      }

      else
      {
        if ((EnumCaseMultiPayload - 2) < 2)
        {
          sub_1B0453E78(v203, type metadata accessor for Command);
        }

        v58 = v216;
        v41 = v217;
        v42 = v223;
        v43 = v271;
        v59 = v199;
      }

      v119 = v56;
      v120 = v213;
      (*v200)(v59, v119, 1, v213);
      if ((*v212)(v59, 1, v120) == 1)
      {
        sub_1B0398EFC(v59, &qword_1EB6E4BC8, &qword_1B0EC92F8);
      }

      else
      {
        v121 = v198;
        sub_1B0423C18(v59, v198, type metadata accessor for ClientCommand);
        v122 = *(v218 + 34);
        v123 = *(v218 + 70);
        v124 = v218[264];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        LOBYTE(v124) = sub_1B0B7D688(v121, v124, v122, v123);

        sub_1B0453E78(v121, type metadata accessor for ClientCommand);
        if ((v124 & 1) == 0)
        {
          sub_1B0453E78(v207, type metadata accessor for Command);
          goto LABEL_80;
        }
      }

      v125 = v207;
      v126 = v222;
      v127 = v220(v207, &v268);
      v222 = v126;
      if (v126)
      {
        sub_1B0453E78(v125, type metadata accessor for Command);
        __swift_destroy_boxed_opaque_existential_0Tm(&v228);

LABEL_54:

        v13 = v215;
LABEL_55:
        sub_1B03C81E4(v13);

        sub_1B03C81E4(v13);
        goto LABEL_63;
      }

      v129 = v127;
      v130 = v128;
      sub_1B0453E78(v125, type metadata accessor for Command);
      if ((v130 & 1) == 0)
      {
        sub_1B0B7ABB4(v41);
        sub_1B03D2CA8(&v228, v41);
        *(v41 + 40) = v129;
        *(v41 + 44) = 256;
        v131 = *(v41 + *(type metadata accessor for RunningTask(0) + 52));
        v132 = *(&v229 + 1);
        v133 = v230;
        __swift_project_boxed_opaque_existential_0(&v228, *(&v229 + 1));
        (*(v133 + 32))(&v255, v132, v133);
        v134 = v256;
        v135 = v257;
        v262 = v255;
        sub_1B039E440(&v262);
        v136 = *(&v229 + 1);
        v137 = v230;
        __swift_project_boxed_opaque_existential_0(&v228, *(&v229 + 1));
        v138 = (*(v137 + 48))(v136, v137);
        v131(v223, v134, v135, v138);
        v43 = v271;
        v42 = v223;

        v41 = v217;

        __swift_destroy_boxed_opaque_existential_0Tm(&v228);

        v13 = v215;
        sub_1B03C81E4(v215);

        sub_1B03C81E4(v13);
        continue;
      }

      v13 = v215;
LABEL_80:
      __swift_destroy_boxed_opaque_existential_0Tm(&v228);

      sub_1B03C81E4(v13);

      sub_1B03C81E4(v13);
      v145 = 0;
      goto LABEL_58;
    }

    sub_1B0450C74(v242, v239);
    v76 = v240;
    v77 = v241;
    __swift_project_boxed_opaque_existential_0(v239, v240);
    v78 = *(v77 + 32);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0452640(v13);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0452640(v13);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v79 = sub_1B0452640(v13);
    v78(&v249, v76, v77, v79);
    v266 = v250;
    v267 = v251;
    v265 = v249;
    sub_1B039E440(&v265);
    if (*(v223 + 192) != 1)
    {
      v58 = v216;
      v41 = v217;
      v43 = v271;
      goto LABEL_57;
    }

    v80 = *(v223 + 168);
    v81 = *(v80 + 16);
    v58 = v216;
    v43 = v271;
    if (!v81)
    {
      break;
    }

    v82 = 0;
    v83 = v80 + 32;
    v41 = v217;
    v84 = v49;
    while (1)
    {
      v85 = (v83 + 176 * v82);
      v86 = *v85;
      v87 = v85[2];
      v229 = v85[1];
      v230 = v87;
      v228 = v86;
      v88 = v85[3];
      v89 = v85[4];
      v90 = v85[6];
      v233 = v85[5];
      v234 = v90;
      v231 = v88;
      v232 = v89;
      v91 = v85[7];
      v92 = v85[8];
      v93 = v85[10];
      v237 = v85[9];
      v238 = v93;
      v235 = v91;
      v236 = v92;
      v94 = v234;
      if (v234)
      {
        v95 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        v84 = v49;
        v96 = *(v94 + v95);
        v43 = v271;
      }

      else
      {
        v96 = 0;
      }

      if ((DWORD2(v229) | (DWORD2(v229) << 32)) == (v267 | (v267 << 32)))
      {
        v97 = *(v229 + 16);
        if (v97 == *(v266 + 16))
        {
          if (v97 && v229 != v266)
          {
            v98 = (v229 + 32);
            v99 = (v266 + 32);
            while (*v98 == *v99)
            {
              ++v98;
              ++v99;
              if (!--v97)
              {
                goto LABEL_30;
              }
            }

            goto LABEL_19;
          }

LABEL_30:
          if (v94 && v96 == v84)
          {
            break;
          }
        }
      }

LABEL_19:
      if (++v82 == v81)
      {
        goto LABEL_57;
      }
    }

    v100 = v94 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    v101 = _s13SelectedStateV7WrappedVMa(0);
    sub_1B0390340(v100 + *(v101 + 20), v196, type metadata accessor for MailboxSyncState);
    v102 = v240;
    v103 = v241;
    __swift_project_boxed_opaque_existential_0(v239, v240);
    v104 = *(v103 + 32);
    sub_1B03A35B8(&v228, v225);

    v104(&v252, v102, v103);
    v210 = v253;
    v190 = v254;
    v264 = v252;
    sub_1B039E440(&v264);
    v105 = *(type metadata accessor for RunningTask(0) + 48);
    LODWORD(v104) = *(v41 + v105);
    *(v41 + v105) = v104 + 1;
    v106 = *(v41 + 48);
    v107 = *(v41 + 56);
    v209 = v240;
    v108 = v241;
    __swift_mutable_project_boxed_opaque_existential_1(v239, v240);
    v191 = *(v108 + 80);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v211 = v104;
    v109 = v104 & 0xFFFFFF;
    v110 = v193;
    v191(v109, v106, v107, v196, v216, v209, v108);

    v111 = v194;
    sub_1B0B7B704(v110, v194);
    if ((*v212)(v111, 1, v213) == 1)
    {

      v112 = 1;
      v113 = v222;
      v42 = v223;
      v114 = v214;
      v115 = v219;
      v116 = v192;
    }

    else
    {
      v139 = v201;
      sub_1B0423C18(v111, v201, type metadata accessor for ClientCommand);
      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3E68, &unk_1B0EDC5C0);
      v116 = v192;
      v141 = v192 + *(v140 + 48);
      sub_1B0423C18(v139, v192, type metadata accessor for ClientCommand);
      *v141 = v49;
      v141[4] = 0;
      *(v141 + 1) = v210;
      *(v141 + 4) = v190;
      v114 = v214;
      swift_storeEnumTagMultiPayload();
      v112 = 0;
      v113 = v222;
      v42 = v223;
      v115 = v219;
    }

    (*v208)(v116, v112, 1, v114);
    v142 = v113;
    v143 = sub_1B0B7B774(v116, v211 & 0xFFFFFF, sub_1B0B7B6E0, v115, v41, v216);
    v144 = v116;
    v43 = v271;
    v222 = v142;
    if (v142)
    {
      sub_1B0398EFC(v144, &qword_1EB6E4BD0, &qword_1B0EC9300);
      sub_1B0453E78(v196, type metadata accessor for MailboxSyncState);

      sub_1B03A3614(&v228);
      sub_1B039E440(&v266);
      __swift_destroy_boxed_opaque_existential_0Tm(v239);

      goto LABEL_54;
    }

    sub_1B0398EFC(v144, &qword_1EB6E4BD0, &qword_1B0EC9300);
    if (v143 < 2u)
    {
      sub_1B0B7ABB4(v41);
      sub_1B03D2CA8(v239, v41);
      *(v41 + 40) = v49;
      *(v41 + 44) = 256;
    }

    sub_1B0453E78(v196, type metadata accessor for MailboxSyncState);

    sub_1B03A3614(&v228);
    sub_1B039E440(&v266);
    __swift_destroy_boxed_opaque_existential_0Tm(v239);

    v13 = v215;
    sub_1B03C81E4(v215);

    sub_1B03C81E4(v13);
    v44 = v143;
    if (v143)
    {
      goto LABEL_48;
    }
  }

  v41 = v217;
LABEL_57:
  sub_1B039E440(&v266);
  __swift_destroy_boxed_opaque_existential_0Tm(v239);

  v13 = v215;
  sub_1B03C81E4(v215);

  sub_1B03C81E4(v13);
  v145 = 0;
  v42 = v223;
LABEL_58:
  v146 = v202;
  do
  {
    v147 = sub_1B04547FC(v58, v42, v146, v43);
  }

  while (!v147);
  if (v147 != 1 || !v145 || *(*(v41 + 48) + 16))
  {
LABEL_63:

    v148 = v13;
    return sub_1B03C81E4(v148);
  }

  v150 = v58 + *(type metadata accessor for Task.Logger(0) + 20);
  v151 = *(v150 + 1);
  v221 = *v150;
  v271 = v151;
  v152 = *(v150 + 2);
  v153 = *(v150 + 3);
  v154 = *(v150 + 4);
  v155 = *(v150 + 10);
  if (v153 < 0)
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v165 = sub_1B0E43988();
    LODWORD(v219) = sub_1B0E45908();
    if (os_log_type_enabled(v165, v219))
    {
      v166 = swift_slowAlloc();
      v216 = v165;
      v167 = v166;
      v218 = swift_slowAlloc();
      v225[0] = v218;
      *v167 = 68159235;
      *(v167 + 4) = 2;
      *(v167 + 8) = 256;
      *(v167 + 10) = v221;
      *(v167 + 11) = 2082;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v168 = sub_1B0399D64(v271, v152, v225);
      LODWORD(v220) = v155;
      v169 = v168;

      *(v167 + 13) = v169;
      *(v167 + 21) = 1040;
      *(v167 + 23) = 2;
      v41 = v217;
      *(v167 + 27) = 512;

      *(v167 + 29) = v153;

      *(v167 + 31) = 2160;
      *(v167 + 33) = 0x786F626C69616DLL;
      *(v167 + 41) = 2085;

      *&v228 = v154;
      DWORD2(v228) = v220;
      v170 = sub_1B0E44BA8();
      v172 = sub_1B0399D64(v170, v171, v225);

      *(v167 + 43) = v172;
      v173 = v216;
      _os_log_impl(&dword_1B0389000, v216, v219, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Marking task as complete.", v167, 0x33u);
      v174 = v218;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v174, -1, -1);
      MEMORY[0x1B272C230](v167, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v156 = sub_1B0E43988();
    v157 = sub_1B0E45908();
    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v219 = v154;
      LODWORD(v220) = v155;
      v160 = v159;
      *&v228 = v159;
      *v158 = 68158210;
      *(v158 + 4) = 2;
      *(v158 + 8) = 256;
      v218 = v153;
      v161 = v221;
      *(v158 + 10) = v221;
      *(v158 + 11) = 2082;
      v162 = v271;
      v163 = sub_1B0399D64(v271, v152, &v228);
      sub_1B0A92018(v161, v162, v152, v218);
      *(v158 + 13) = v163;
      v41 = v217;
      _os_log_impl(&dword_1B0389000, v156, v157, "[%.*hhx-%{public}s] Marking task as complete.", v158, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v160);
      MEMORY[0x1B272C230](v160, -1, -1);
      v164 = v158;
      v58 = v216;
      MEMORY[0x1B272C230](v164, -1, -1);
    }

    else
    {

      sub_1B0A92018(v221, v271, v152, v153);
    }

    v13 = v215;
  }

  sub_1B0450DB0(v41, &v228);
  if (!BYTE13(v230))
  {
    sub_1B0450C74(&v228, v225);
    v187 = v226;
    v188 = v227;
    __swift_project_boxed_opaque_existential_0(v225, v226);
    (*(v188 + 88))(v223, v58, v187, v188);
    sub_1B0B7ABB4(v41);
    *v41 = 0u;
    *(v41 + 16) = 0u;
    *(v41 + 29) = 0u;
    *(v41 + 45) = 2;
    __swift_destroy_boxed_opaque_existential_0Tm(v225);
    goto LABEL_63;
  }

  if (BYTE13(v230) != 1)
  {
    goto LABEL_63;
  }

  sub_1B0450C74(&v228, v225);
  v271 = *(v41 + *(type metadata accessor for RunningTask(0) + 56));
  v175 = v41;
  v176 = v226;
  v177 = v227;
  __swift_project_boxed_opaque_existential_0(v225, v226);
  (*(v177 + 32))(&v258, v176, v177);
  v178 = v259;
  v179 = v260;
  v261 = v258;
  sub_1B039E440(&v261);
  v180 = v58;
  v181 = v226;
  v182 = v227;
  __swift_project_boxed_opaque_existential_0(v225, v226);
  v183 = (*(v182 + 48))(v181, v182);
  v184 = v223;
  v271(v223, v178, v179, v183, v180);

  v185 = v226;
  v186 = v227;
  __swift_project_boxed_opaque_existential_0(v225, v226);
  (*(v186 + 128))(v184, v180, v185, v186);
  sub_1B0B7ABB4(v175);
  *v175 = 0u;
  *(v175 + 16) = 0u;
  *(v175 + 29) = 0u;
  *(v175 + 45) = 2;
  __swift_destroy_boxed_opaque_existential_0Tm(v225);

  v148 = v215;
  return sub_1B03C81E4(v148);
}

uint64_t sub_1B0453E30()
{

  if (*(v0 + 72) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B0453E78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0453ED8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ConnectionState.hasMailboxSelectedOrSelectionIsInProgress(_:)(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v29 - v10;
  sub_1B038CA0C(v3, v29 - v10, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B038C704(v11, type metadata accessor for ConnectionState);
    goto LABEL_9;
  }

  memcpy(v31, v11, sizeof(v31));
  v12 = *(v11 + 21);
  v40 = *(v11 + 20);
  v41 = v12;
  v42 = *(v11 + 176);
  v13 = *(v11 + 17);
  v36 = *(v11 + 16);
  v37 = v13;
  v14 = *(v11 + 19);
  v38 = *(v11 + 18);
  v39 = v14;
  v15 = *(v11 + 13);
  v32 = *(v11 + 12);
  v33 = v15;
  v16 = *(v11 + 15);
  v34 = *(v11 + 14);
  v35 = v16;
  if (sub_1B0BE2780(&v32) != 2)
  {
    sub_1B0BE278C(v31);
    goto LABEL_9;
  }

  v17 = sub_1B03DB9A4(&v32);
  v18 = *v17;
  v19 = *(v17 + 8);
  v29[0] = *&v31[192];
  v29[1] = *&v31[208];
  v29[4] = *&v31[256];
  v29[5] = *&v31[272];
  v29[2] = *&v31[224];
  v29[3] = *&v31[240];
  v30 = *&v31[352];
  v29[8] = *&v31[320];
  v29[9] = *&v31[336];
  v29[6] = *&v31[288];
  v29[7] = *&v31[304];
  sub_1B03DB9A4(v29);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0BE278C(v31);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0BE27E0(&v31[192]);
  if ((v19 | (v19 << 32)) != (a2 | (a2 << 32)))
  {

LABEL_9:
    sub_1B038CA0C(v3, v8, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      memcpy(v31, v8, sizeof(v31));
      v22 = *(v8 + 21);
      v40 = *(v8 + 20);
      v41 = v22;
      v42 = *(v8 + 176);
      v23 = *(v8 + 17);
      v36 = *(v8 + 16);
      v37 = v23;
      v24 = *(v8 + 19);
      v38 = *(v8 + 18);
      v39 = v24;
      v25 = *(v8 + 13);
      v32 = *(v8 + 12);
      v33 = v25;
      v26 = *(v8 + 15);
      v34 = *(v8 + 14);
      v35 = v26;
      if (sub_1B0BE2780(&v32) == 1)
      {
        v27 = sub_1B03DB9A4(&v32);
        if ((*(v27 + 8) | (*(v27 + 8) << 32)) == (a2 | (a2 << 32)))
        {
          v21 = sub_1B04520BC(*v27, a1);
          sub_1B0BE278C(v31);
          return v21 & 1;
        }
      }

      sub_1B0BE278C(v31);
    }

    else
    {
      sub_1B038C704(v8, type metadata accessor for ConnectionState);
    }

    v21 = 0;
    return v21 & 1;
  }

  v20 = sub_1B04520BC(v18, a1);

  if ((v20 & 1) == 0)
  {
    goto LABEL_9;
  }

  v21 = 1;
  return v21 & 1;
}

uint64_t ConnectionState.isReadyForCommandsWithoutMailboxSelection.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1B038CA0C(v1, v4, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v14, v4, 0x162uLL);
    v5 = *(v4 + 21);
    v15[8] = *(v4 + 20);
    v15[9] = v5;
    v16 = *(v4 + 176);
    v6 = *(v4 + 17);
    v15[4] = *(v4 + 16);
    v15[5] = v6;
    v7 = *(v4 + 19);
    v15[6] = *(v4 + 18);
    v15[7] = v7;
    v8 = *(v4 + 13);
    v15[0] = *(v4 + 12);
    v15[1] = v8;
    v9 = *(v4 + 15);
    v15[2] = *(v4 + 14);
    v15[3] = v9;
    v10 = sub_1B0BE2780(v15);
    sub_1B03DB9A4(v15);
    sub_1B0BE278C(v14);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = -1;
    }
  }

  else
  {
    sub_1B038C704(v4, type metadata accessor for ConnectionState);
    v11 = 0;
  }

  return v11 & 1;
}

char *sub_1B04543AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B04547DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B04543CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5628, &qword_1B0ED3860);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1B04544CC(char *a1, int64_t a2, char a3)
{
  result = sub_1B04543CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unsigned __int8 *sub_1B0454500(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B04544EC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B045456C(v5);
  *a1 = v2;
  return result;
}

unsigned __int8 *sub_1B045456C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B0E469A8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E56E8, &qword_1B0ED5CD8);
        v5 = sub_1B0E45278();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B0C0CAE8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_1B0454674(0, v2, 1, a1);
  }

  return result;
}

unsigned __int8 *sub_1B0454674(unsigned __int8 *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3 + 24;
    v6 = &result[-a3];
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      v9 = v8 - 24;
      v10 = *(v8 - 3);
      v11 = *(v8 - 1);
      v12 = *v8;
      result = v8 - 56;
      v13 = *(v8 - 7);
      v14 = *(v8 - 5);
      v15 = *(v8 - 32);
      if (v12 == 1)
      {
        if (v11)
        {
          if (v11 == 1)
          {
            if (v14 == 1)
            {
              v16 = *(v8 - 32);
            }

            else
            {
              v16 = 0;
            }

            if (v16)
            {
              goto LABEL_52;
            }

            v17 = 2;
            if ((v15 & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          else
          {
            if (v14 > 1)
            {
              v20 = *(v8 - 32);
            }

            else
            {
              v20 = 0;
            }

            if (v20 == 1)
            {
              goto LABEL_52;
            }

            v17 = 3;
            if ((v15 & 1) == 0)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          if (v14)
          {
            v19 = 0;
          }

          else
          {
            v19 = *(v8 - 32);
          }

          if (v19)
          {
            goto LABEL_52;
          }

          if (!*(v8 - 32))
          {
            goto LABEL_53;
          }

          v17 = 0;
        }
      }

      else
      {
        if ((v15 & 1) == 0)
        {
          if (v11 >= v14 && (v11 != v14 || v10 >= v13))
          {
            goto LABEL_4;
          }

          goto LABEL_53;
        }

        v17 = 1;
      }

      if (v17 < qword_1B0ED5D40[v14])
      {
        goto LABEL_53;
      }

      if (!*v8)
      {
        goto LABEL_4;
      }

LABEL_19:
      if (v11)
      {
        if (v11 == 1)
        {
          if (v14 != 1)
          {
            v15 = 0;
          }
        }

        else if (v14 <= 1)
        {
          v15 = 0;
        }

        if (v15 != 1)
        {
          goto LABEL_4;
        }

LABEL_52:
        if (v10 >= v13)
        {
          goto LABEL_4;
        }

        goto LABEL_53;
      }

      if (v14)
      {
        v15 = 0;
      }

      if (v15 != 1 || v10 >= v13)
      {
LABEL_4:
        ++a3;
        v5 += 32;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

LABEL_53:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v23 = *result;
      v22 = *(v8 - 40);
      *(v8 - 32) = v12;
      v8 -= 32;
      v24 = *(v8 + 4);
      *v9 = v23;
      *(v9 + 1) = v22;
      *(v8 - 3) = v10;
      *(v8 - 4) = v24;
      *(v8 - 1) = v11;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_1B04547FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  sub_1B0450DB0(v4, v79);
  if (!v82)
  {
    sub_1B0450C74(v79, v76);
    v10 = *(type metadata accessor for RunningTask(0) + 44);
    v11 = *(v4 + v10);
    *(v4 + v10) = v11 + 1;
    v12 = *(v4 + 48);
    v13 = *(v5 + 56);
    v14 = v77;
    v15 = v78;
    __swift_mutable_project_boxed_opaque_existential_1(v76, v77);
    v16 = (*(v15 + 48))(v11 & 0xFFFFFF, v12, v13, v14, v15);
    if ((~v16 & 0xF000000000000007) == 0)
    {
      sub_1B0B7ABB4(v5);
      sub_1B03D2CA8(v76, v5);
      *(v5 + 45) = 0;
      __swift_destroy_boxed_opaque_existential_0Tm(v76);
      return 1;
    }

    v25 = v16;
    v75 = v11;
    v74 = a3();
    v26 = a1 + *(type metadata accessor for Task.Logger(0) + 20);
    v28 = *v26;
    v27 = *(v26 + 8);
    v29 = *(v26 + 16);
    v30 = *(v26 + 24);
    v31 = *(v26 + 32);
    v32 = *(v26 + 40);
    if (v30 < 0)
    {
      v72 = *(v26 + 8);
      LODWORD(v73) = v32;
      swift_bridgeObjectRetain_n();
      v49 = v31;
      swift_bridgeObjectRetain_n();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03E14B4(v25);
      v50 = sub_1B0E43988();
      v51 = sub_1B0E458C8();
      sub_1B0B7C1A0(v25);
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v86[0] = v71;
        *v52 = 68159747;
        v70 = v50;
        *(v52 + 4) = 2;
        *(v52 + 8) = 256;
        *(v52 + 10) = v28;
        *(v52 + 11) = 2082;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v53 = sub_1B0399D64(v72, v29, v86);
        LODWORD(v72) = v51;
        v54 = v53;

        *(v52 + 13) = v54;
        *(v52 + 21) = 1040;
        *(v52 + 23) = 2;
        *(v52 + 27) = 512;

        *(v52 + 29) = v30;

        *(v52 + 31) = 2160;
        *(v52 + 33) = 0x786F626C69616DLL;
        *(v52 + 41) = 2085;

        *&v83 = v49;
        DWORD2(v83) = v73;
        v55 = sub_1B0E44BA8();
        v57 = sub_1B0399D64(v55, v56, v86);

        *(v52 + 43) = v57;
        *(v52 + 51) = 2082;
        v58 = Action.kind.getter(v25);
        v59 = Action.Kind.description.getter(v58);
        v61 = sub_1B0399D64(v59, v60, v86);

        *(v52 + 53) = v61;
        *(v52 + 61) = 2080;
        v45 = v74;
        LODWORD(v83) = v74;
        sub_1B07467B8();
        v62 = sub_1B0E44E98();
        v64 = sub_1B0399D64(v62, v63, v86);

        *(v52 + 63) = v64;
        _os_log_impl(&dword_1B0389000, v70, v72, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Sent '%{public}s' %s", v52, 0x47u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v71, -1, -1);
        MEMORY[0x1B272C230](v52, -1, -1);

        goto LABEL_20;
      }

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v33 = *v26;
      v34 = *(v26 + 8);
      v35 = *(v26 + 16);
      v36 = *(v26 + 24);
      v73 = *(v26 + 32);
      sub_1B0A982D8(v33, v34, v35, v36);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03E14B4(v25);
      v37 = sub_1B0E43988();
      v38 = sub_1B0E458C8();
      sub_1B0B7C1A0(v25);
      if (os_log_type_enabled(v37, v38))
      {
        LODWORD(v71) = v38;
        v39 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *&v83 = v72;
        *v39 = 68158722;
        *(v39 + 4) = 2;
        *(v39 + 8) = 256;
        *(v39 + 10) = v28;
        *(v39 + 11) = 2082;
        v70 = v37;
        v40 = sub_1B0399D64(v27, v29, &v83);
        sub_1B0A92018(v28, v27, v29, v30);
        *(v39 + 13) = v40;
        *(v39 + 21) = 2082;
        v41 = Action.kind.getter(v25);
        v42 = Action.Kind.description.getter(v41);
        v44 = sub_1B0399D64(v42, v43, &v83);

        *(v39 + 23) = v44;
        *(v39 + 31) = 2080;
        v45 = v74;
        LODWORD(v86[0]) = v74;
        sub_1B07467B8();
        v46 = sub_1B0E44E98();
        v48 = sub_1B0399D64(v46, v47, &v83);

        *(v39 + 33) = v48;
        _os_log_impl(&dword_1B0389000, v70, v71, "[%.*hhx-%{public}s] Sent '%{public}s' %s", v39, 0x29u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v72, -1, -1);
        MEMORY[0x1B272C230](v39, -1, -1);

LABEL_20:
        sub_1B0B7ABB4(v5);
        sub_1B03D2CA8(v76, v5);
        *(v5 + 45) = 0;
        sub_1B0BB0FA8(v25, v45, v75 & 0xFFFFFF, v65);
        sub_1B0B7C1A0(v25);
        __swift_destroy_boxed_opaque_existential_0Tm(v76);
        return 0;
      }

      sub_1B0A92018(v28, v27, v29, v30);
    }

    v45 = v74;
    goto LABEL_20;
  }

  if (v82 != 1)
  {
    return 1;
  }

  if (v81 == 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v79);
    return 2;
  }

  else
  {
    v17 = v80;
    sub_1B0450C74(v79, v76);
    v18 = v77;
    v19 = v78;
    __swift_project_boxed_opaque_existential_0(v76, v77);
    (*(v19 + 32))(&v83, v18, v19);
    v20 = v84;
    v21 = v85;
    *v86 = v83;
    sub_1B039E440(v86);
    MEMORY[0x1EEE9AC00](v22);
    v66[2] = v5;
    v66[3] = v76;
    v66[4] = a1;
    v67 = v17;
    v68 = a3;
    v69 = a4;
    sub_1B0B76610(v17, v20, v21, sub_1B0B7C178, v66);
    LODWORD(v5) = v23;
    v24 = v23;

    if (v24 == 3)
    {
      v5 = 2;
    }

    else
    {
      v5 = v5;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v76);
    return v5;
  }
}

void sub_1B0454F70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TaskHistory.Running(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *tracingLog.unsafeMutableAddressor();
  v11 = sub_1B0E45D38();

  if (v11)
  {
    v12 = *(v3 + 48);
    v13 = *(a2 + 48);
    v29 = MEMORY[0x1E69E7CC0];
    v30 = MEMORY[0x1E69E7CC0];
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    MEMORY[0x1EEE9AC00](v15);
    v16 = sub_1B0450C8C();
    Array.findAppendOnlyDiff<A>(from:id:added:removed:update:)(v13, KeyPath, sub_1B0B7C1EC, (&v29 - 4), sub_1B0B7C1F4, (&v29 - 4), __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1, 0, v12, v16);

    v18 = v29;
    v17 = v30;
    v19 = *(v29 + 16);
    if (v19)
    {
      v20 = *(v3 + *(type metadata accessor for RunningTask(0) + 32));
      v21 = v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v22 = *(v7 + 72);
      do
      {
        sub_1B0390340(v21, v9, type metadata accessor for TaskHistory.Running);
        sub_1B0B793EC(a1, v20);
        sub_1B0453E78(v9, type metadata accessor for TaskHistory.Running);
        v21 += v22;
        --v19;
      }

      while (v19);
    }

    v23 = *(v17 + 16);
    if (v23)
    {
      v24 = *(v3 + *(type metadata accessor for RunningTask(0) + 32));
      v26 = (v17 + 40);
      do
      {
        v27 = *(v26 - 1);
        v28 = *v26;
        v26 += 12;
        sub_1B0B7A1F4(a1, v24, v27, v28, v25);
        --v23;
      }

      while (v23);
    }
  }
}

uint64_t sub_1B0455204(uint64_t a1, unsigned __int8 *a2)
{
  sub_1B0450DB0(a1, v25);
  if (!v28)
  {
    sub_1B0B7ABB4(v25);
    return 0;
  }

  if (v28 == 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    return 0;
  }

  v6 = *a2;
  v7 = a1 + *(type metadata accessor for RunningTask(0) + 28);
  v8 = (v7 + *(type metadata accessor for Task.Logger(0) + 20));
  v10 = v8[1];
  v9 = v8[2];
  v11 = v8[3];
  if (v11 < 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    sub_1B0A982D8(*v8, v8[1], v8[2], v11);
  }

  sub_1B0450DB0(a1, v25);
  if (v28)
  {
    if (v28 == 1)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
    }

    else if (v26 | (v27 << 32) || v25[3] | v25[4] | v25[0] | v25[2] | v25[1])
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v12 = sub_1B0E43988();
      v13 = sub_1B0E458C8();
      if (os_log_type_enabled(v12, v13))
      {
        v23 = swift_slowAlloc();
        LODWORD(v29) = v6;
        v18 = v23;
        v19 = swift_slowAlloc();
        v25[0] = v19;
        *v18 = 68158210;
        *(v18 + 4) = 2;
        *(v18 + 8) = 256;
        *(v18 + 10) = v29;

        *(v18 + 11) = 2082;
        v24 = sub_1B0399D64(v10, v9, v25);

        *(v18 + 13) = v24;
        v22 = "[%.*hhx-%{public}s] Pruning failed task";
        goto LABEL_17;
      }

LABEL_20:

      swift_bridgeObjectRelease_n();
      goto LABEL_21;
    }
  }

  else
  {
    sub_1B0B7ABB4(v25);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v12 = sub_1B0E43988();
  v13 = sub_1B0E458C8();
  if (!os_log_type_enabled(v12, v13))
  {
    goto LABEL_20;
  }

  v14 = swift_slowAlloc();
  v29 = v2;
  v15 = a2;
  v16 = v10;
  v17 = v6;
  v18 = v14;
  v19 = swift_slowAlloc();
  v25[0] = v19;
  *v18 = 68158210;
  *(v18 + 4) = 2;
  *(v18 + 8) = 256;
  *(v18 + 10) = v17;

  *(v18 + 11) = 2082;
  v20 = v16;
  a2 = v15;
  v21 = sub_1B0399D64(v20, v9, v25);

  *(v18 + 13) = v21;
  v22 = "[%.*hhx-%{public}s] Pruning completed task";
LABEL_17:
  _os_log_impl(&dword_1B0389000, v12, v13, v22, v18, 0x15u);
  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  MEMORY[0x1B272C230](v19, -1, -1);
  MEMORY[0x1B272C230](v18, -1, -1);

LABEL_21:
  sub_1B0B79C14(*a2);
  return 1;
}

uint64_t sub_1B0455560(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v77 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1 << *(a1 + 32);
    v68 = ~v8;
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v6;
    v11 = (63 - v8) >> 6;
    v12 = a2 + 56;
    v71 = a1;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v14 = 0;
    do
    {
LABEL_6:
      if (!v10)
      {
        v16 = v14;
        v15 = v71;
        while (1)
        {
          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_60;
          }

          if (v17 >= v11)
          {
            goto LABEL_55;
          }

          v10 = *(v7 + 8 * v17);
          ++v16;
          if (v10)
          {
            v14 = v17;
            goto LABEL_13;
          }
        }
      }

      v15 = v71;
LABEL_13:
      v70 = v14;
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v19 = *(v15 + 48) + ((v14 << 10) | (16 * v18));
      v20 = *v19;
      v21 = *(v19 + 8);
      sub_1B0E46C28();
      v22 = v21 | (v21 << 32);
      MEMORY[0x1B2728D70](v22);
      v23 = sub_1B0E46CB8();
      v14 = v70;
      v24 = *(v5 + 32);
      v25 = -1 << v24;
      v2 = v23 & ~(-1 << v24);
      v4 = v2 >> 6;
      v3 = 1 << v2;
    }

    while (((1 << v2) & *(v12 + 8 * (v2 >> 6))) == 0);
    v26 = v24 & 0x3F;
    v27 = ~v25;
    while (1)
    {
      v28 = (*(v5 + 48) + 16 * v2);
      if ((v28[2] | (v28[2] << 32)) == v22)
      {
        v29 = *v28;
        v30 = *(*v28 + 16);
        if (v30 == *(v20 + 16))
        {
          break;
        }
      }

LABEL_15:
      v2 = (v2 + 1) & v27;
      v4 = v2 >> 6;
      v3 = 1 << v2;
      if ((*(v12 + 8 * (v2 >> 6)) & (1 << v2)) == 0)
      {
        goto LABEL_6;
      }
    }

    if (v30)
    {
      v31 = v29 == v20;
    }

    else
    {
      v31 = 1;
    }

    if (!v31)
    {
      v32 = (v29 + 32);
      v33 = (v20 + 32);
      while (v30)
      {
        if (*v32 != *v33)
        {
          goto LABEL_15;
        }

        ++v32;
        ++v33;
        if (!--v30)
        {
          goto LABEL_26;
        }
      }

LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

LABEL_26:
    v74 = v68;
    v75 = v70;
    v76 = v10;
    v73[0] = v71;
    v73[1] = v7;
    v66 = ((1 << v26) + 63) >> 6;
    v13 = 8 * v66;
    if (v26 <= 0xD)
    {
      goto LABEL_27;
    }

LABEL_61:
    v61 = v13;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v62 = swift_slowAlloc();
      memcpy(v62, (v5 + 56), v61);
      sub_1B0BAA4D0(v62, v66, v5, v2, v73);
      v64 = v63;

      MEMORY[0x1B272C230](v62, -1, -1);
      v15 = v73[0];
      v68 = v74;
      v5 = v64;
      goto LABEL_55;
    }

LABEL_27:
    v67 = &v65;
    MEMORY[0x1EEE9AC00](v23);
    v2 = &v65 - v34;
    memcpy(&v65 - v34, (v5 + 56), v35);
    v36 = *(v2 + 8 * v4) & ~v3;
    v37 = *(v5 + 16);
    v69 = v2;
    *(v2 + 8 * v4) = v36;
    v38 = v37 - 1;
    v39 = v70;
    do
    {
      v70 = v38;
      while (1)
      {
LABEL_29:
        if (!v10)
        {
          v40 = v39;
          while (1)
          {
            v41 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_58;
            }

            if (v41 >= v11)
            {
              sub_1B0455AB8(v69, v66, v70, v5);
              v5 = v59;
              goto LABEL_53;
            }

            v10 = *(v7 + 8 * v41);
            ++v40;
            if (v10)
            {
              v39 = v41;
              break;
            }
          }
        }

        v42 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v43 = *(v71 + 48) + ((v39 << 10) | (16 * v42));
        v3 = *v43;
        v44 = *(v43 + 8);
        v45 = v39;
        sub_1B0E46C28();
        v4 = v44 | (v44 << 32);
        v2 = v72;
        MEMORY[0x1B2728D70](v4);
        v46 = sub_1B0E46CB8();
        v39 = v45;
        v47 = -1 << *(v5 + 32);
        v48 = v46 & ~v47;
        v49 = v48 >> 6;
        v50 = 1 << v48;
        if (((1 << v48) & *(v12 + 8 * (v48 >> 6))) != 0)
        {
          v51 = ~v47;
          while (1)
          {
            v52 = (*(v5 + 48) + 16 * v48);
            if ((v52[2] | (v52[2] << 32)) == v4)
            {
              v53 = *v52;
              v54 = *(*v52 + 16);
              if (v54 == *(v3 + 16))
              {
                break;
              }
            }

LABEL_37:
            v48 = (v48 + 1) & v51;
            v49 = v48 >> 6;
            v50 = 1 << v48;
            if ((*(v12 + 8 * (v48 >> 6)) & (1 << v48)) == 0)
            {
              goto LABEL_29;
            }
          }

          if (v54)
          {
            v55 = v53 == v3;
          }

          else
          {
            v55 = 1;
          }

          if (!v55)
          {
            v56 = (v53 + 32);
            v57 = (v3 + 32);
            while (v54)
            {
              if (*v56 != *v57)
              {
                goto LABEL_37;
              }

              ++v56;
              ++v57;
              if (!--v54)
              {
                goto LABEL_48;
              }
            }

            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

LABEL_48:
          v58 = v69[v49];
          v69[v49] = v58 & ~v50;
          if ((v58 & v50) != 0)
          {
            break;
          }
        }
      }

      v38 = v70 - 1;
      if (__OFSUB__(v70, 1))
      {
        __break(1u);
      }
    }

    while (v70 != 1);

    v5 = MEMORY[0x1E69E7CD0];
LABEL_53:
    v15 = v71;
LABEL_55:
    sub_1B03D91F8(v15);
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v5;
}

void sub_1B0455AB8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3)
  {
    v5 = a3;
    if (*(a4 + 16) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4330, &qword_1B0EDC420);
      v8 = sub_1B0E46228();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 56;
      v30 = v4;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v16 = *(v4 + 48) + 16 * (v13 | (v11 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        sub_1B0E46C28();
        MEMORY[0x1B2728D70](v18 | (v18 << 32));
        v19 = sub_1B0E46CB8();
        v20 = -1 << *(v9 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          v24 = 0;
          v25 = (63 - v20) >> 6;
          while (++v22 != v25 || (v24 & 1) == 0)
          {
            v26 = v22 == v25;
            if (v22 == v25)
            {
              v22 = 0;
            }

            v24 |= v26;
            v27 = *(v12 + 8 * v22);
            if (v27 != -1)
            {
              v23 = __clz(__rbit64(~v27)) + (v22 << 6);
              goto LABEL_26;
            }
          }

          goto LABEL_30;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = *(v9 + 48) + 16 * v23;
        *v28 = v17;
        *(v28 + 8) = v18;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_31;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v4 = v30;
        if (!v5)
        {
          goto LABEL_5;
        }
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= a2)
        {
          goto LABEL_5;
        }

        v15 = a1[v11];
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_1B0455CE0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(v1 + 48) + ((v8 << 10) | (16 * v9));
      v11 = *v10;
      v12 = *(v10 + 8);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03AB2E0(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1B0455DE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5520, &qword_1B0ED0CE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0455E60(char a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B0BECE50((a1 & 1) == 0);
  }

  return result;
}

uint64_t sub_1B0455ECC()
{
  if (qword_1EB6DCDA8 != -1)
  {
    swift_once();
  }

  if (sub_1B0E43CA8())
  {
    sub_1B0E44008();
    if (swift_dynamicCastClass())
    {
      sub_1B0E44018();
      if (v7)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5688, &qword_1B0ED3910);
        if (swift_dynamicCast())
        {

          return v5;
        }
      }

      else
      {
        sub_1B0398EFC(v6, &qword_1EB6E29B0, &qword_1B0E9F008);
      }

      sub_1B0E44018();
      if (v7)
      {

        sub_1B0398EFC(v6, &qword_1EB6E29B0, &qword_1B0E9F008);
        return 0;
      }

      sub_1B0398EFC(v6, &qword_1EB6E29B0, &qword_1B0E9F008);
      if (qword_1EB6DCD50 != -1)
      {
        swift_once();
      }

      v1 = sub_1B0E439A8();
      __swift_project_value_buffer(v1, qword_1EB6DCD58);
      v2 = sub_1B0E43988();
      v3 = sub_1B0E458F8();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&dword_1B0389000, v2, v3, "Received invalid message.", v4, 2u);
        MEMORY[0x1B272C230](v4, -1, -1);
      }
    }
  }

  return 1;
}

uint64_t sub_1B0456C14()
{
  v1 = *(*(_s6LoggerVMa(0) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = sub_1B0E439A8();
  (*(*(v2 - 8) + 8))(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_1B04575A8()
{
  v4 = _s8ActivityVMa(0);
  v1 = *(*(v4 - 8) + 80);
  v5 = v0 + ((v1 + 16) & ~v1);

  v6 = *(v4 + 24);
  v2 = sub_1B0E43108();
  (*(*(v2 - 8) + 8))(v5 + v6);
  return swift_deallocObject();
}

uint64_t sub_1B0457BF4()
{
  v0 = *(*(_s8ActivityV4DiffV4KindOMa(0) - 8) + 80);
  v12 = (v0 + 16) & ~v0;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:
        goto LABEL_21;
      case 2:
        v6 = sub_1B0E43108();
        v7 = *(v6 - 8);
        if (!(*(v7 + 48))(v11 + v12, 1))
        {
          (*(v7 + 8))(v11 + v12, v6);
        }

        return swift_deallocObject();
      case 3:
        v4 = v11 + v12 + *(type metadata accessor for ConnectionStatus.Error(0) + 20);
        v5 = type metadata accessor for ConnectionStatus.Error.Details(0);
        if (!(*(*(v5 - 8) + 48))(v4, 1))
        {
          v3 = swift_getEnumCaseMultiPayload();
          switch(v3)
          {
            case 0:
              v1 = sub_1B0E441D8();
              (*(*(v1 - 8) + 8))(v4);
              return swift_deallocObject();
            case 1:

              return swift_deallocObject();
            case 2:
            case 3:
LABEL_21:

              break;
          }
        }

        break;
    }
  }

  else
  {
    v8 = v11 + v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8) + 48);
    v9 = sub_1B0E43108();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v8, 1))
    {
      (*(v10 + 8))(v8, v9);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1B045C960(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = _s8ActivityVMa(0);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 20)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_1B045CA78(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = _s8ActivityVMa(0);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B045CB68(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = sub_1B0E43108();
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 24)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_1B045CC80(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = sub_1B0E43108();
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 24)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B045CD70(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  return (*(*(v3 - 8) + 48))(a1 + v5, a2);
}

uint64_t sub_1B045CDEC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  return (*(*(v4 - 8) + 56))(a1 + v6, a2);
}

uint64_t sub_1B045CFC4()
{
  MEMORY[0x1E69E5920](*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B045E020()
{

  MEMORY[0x1E69E5920](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1B045F0D8()
{
  MEMORY[0x1E69E5920](*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B04612C0()
{
  MEMORY[0x1E69E5920](*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B0463C38()
{
  MEMORY[0x1E69E5920](*(v0 + 16));

  MEMORY[0x1E69E5920](*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1B0463CA0()
{

  return swift_deallocObject();
}

uint64_t sub_1B04641F8()
{
  MEMORY[0x1E69E5920](*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B046532C()
{
  v3 = *(_s6LoggerVMa(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (((v4 + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v1 = sub_1B0E439A8();
  (*(*(v1 - 8) + 8))(v0 + v4);

  MEMORY[0x1E69E5920](*(v0 + v5));
  return swift_deallocObject();
}

uint64_t sub_1B0466154()
{
  v1 = *(*(_s6LoggerVMa(0) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = sub_1B0E439A8();
  (*(*(v2 - 8) + 8))(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_1B0466658()
{
  MEMORY[0x1E69E5920](*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B0468F80()
{
  MEMORY[0x1E69E5920](*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B0468FD0()
{

  MEMORY[0x1E69E5920](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_1B0469020()
{
  v4 = sub_1B0E42A08();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_1B0469148()
{
  MEMORY[0x1E69E5920](*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B0469198()
{
  v2 = *(sub_1B0E42E68() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B046933C()
{
  v2 = *(sub_1B0E42E68() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B04695F8()
{
  v2 = *(sub_1B0E42E68() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B046979C()
{
  v2 = *(sub_1B0E42E68() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B0469BD8()
{

  return swift_deallocObject();
}

uint64_t sub_1B0469C20()
{

  return swift_deallocObject();
}

uint64_t sub_1B0469C68()
{

  return swift_deallocObject();
}

uint64_t sub_1B0469CB0(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = _s18MailboxPersistenceVMa(0);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 20)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_1B0469DC8(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = _s18MailboxPersistenceVMa(0);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B0469EB8()
{
  v2 = *(sub_1B0E42E68() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B0469F84()
{
  v2 = *(sub_1B0E42E68() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B046A8A4()
{

  return swift_deallocObject();
}

uint64_t sub_1B046A904()
{
  v5 = _s21UnfilteredFlagChangesVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v4 = *(v5 + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v6 + v4);

  return swift_deallocObject();
}

uint64_t sub_1B046B3EC()
{

  return swift_deallocObject();
}

uint64_t sub_1B046B44C()
{
  v5 = _s21UnfilteredFlagChangesVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v4 = *(v5 + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v6 + v4);

  return swift_deallocObject();
}

uint64_t sub_1B046BE30()
{
  v2 = *(sub_1B0E43108() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B046C700()
{
  v2 = *(sub_1B0E43108() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B046CFD0()
{
  v2 = *(sub_1B0E42E68() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B046D09C()
{
  v2 = *(sub_1B0E42E68() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B046D268()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B046DB94()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B046EBCC(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 20)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_1B046ECF0(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B046FF58()
{
  v1 = *(*(_s26AttachmentDecoderAndWriterC7DecoderC7DecodedVMa(0) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B04707EC()
{
  v1 = *(*(_s26AttachmentDecoderAndWriterC7DecoderC7DecodedVMa(0) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0470F80(uint64_t a1, unsigned int a2)
{
  v2 = sub_1B0E443C8();
  v3 = (*(*(v2 - 8) + 48))(a1, a2);
  if (v3 > 1)
  {
    return v3 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0470FF0(uint64_t a1, int a2, unsigned int a3)
{
  if (a2)
  {
    v3 = a2 + 1;
  }

  else
  {
    v3 = 0;
  }

  v7 = v3;
  v4 = sub_1B0E443C8();
  return (*(*(v4 - 8) + 56))(a1, v7, a3);
}

uint64_t sub_1B0475558()
{

  return swift_deallocObject();
}

uint64_t sub_1B04755A0()
{

  return swift_deallocObject();
}

uint64_t sub_1B0476030()
{

  return swift_deallocObject();
}

uint64_t sub_1B0476078()
{

  return swift_deallocObject();
}

uint64_t sub_1B04760C0()
{

  return swift_deallocObject();
}

uint64_t sub_1B04779E0()
{
  v38 = 0;
  v35 = type metadata accessor for MessageSectionData(0);
  v31 = *(v35 - 8);
  v1 = *(v31 + 80);
  v32 = (v1 + 16) & ~v1;
  v33 = v32 + *(v31 + 64);
  v34 = v1 | 7;
  v36 = v0 + v32;

  v37 = *(v35 + 28);
  v2 = *(*(sub_1B0E443C8() - 8) + 8);
  v39 = v0 + v32 + v37;
  v2();
  v40 = *(type metadata accessor for MessageSectionData.Segment(0) + 24);
  if (*(v39 + v40 + 176) != 254 && *(v30 + v32 + v37 + v40 + 176) != 255)
  {
    v28 = v30 + v32 + v37 + v40;
    v3 = *v28;
    v4 = *(v28 + 8);
    v5 = *(v28 + 16);
    v6 = *(v28 + 24);
    v7 = *(v28 + 32);
    v8 = *(v28 + 40);
    v9 = *(v28 + 48);
    v10 = *(v28 + 56);
    v11 = *(v28 + 64);
    v12 = *(v28 + 72);
    v13 = *(v28 + 80);
    v14 = *(v28 + 88);
    v15 = *(v28 + 96);
    v16 = *(v28 + 104);
    v17 = *(v28 + 112);
    v18 = *(v28 + 120);
    v19 = *(v28 + 128);
    v20 = *(v28 + 136);
    v21 = *(v28 + 144);
    v22 = *(v28 + 152);
    v23 = *(v28 + 160);
    v24 = *(v28 + 168);
    v25 = *(v28 + 176);
    v29 = &v27;
    sub_1B075E1EC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  return swift_deallocObject();
}

uint64_t sub_1B0477C78()
{
  v38 = 0;
  v35 = type metadata accessor for MessageSectionData(0);
  v31 = *(v35 - 8);
  v1 = *(v31 + 80);
  v32 = (v1 + 16) & ~v1;
  v33 = v32 + *(v31 + 64);
  v34 = v1 | 7;
  v36 = v0 + v32;

  v37 = *(v35 + 28);
  v2 = *(*(sub_1B0E443C8() - 8) + 8);
  v39 = v0 + v32 + v37;
  v2();
  v40 = *(type metadata accessor for MessageSectionData.Segment(0) + 24);
  if (*(v39 + v40 + 176) != 254 && *(v30 + v32 + v37 + v40 + 176) != 255)
  {
    v28 = v30 + v32 + v37 + v40;
    v3 = *v28;
    v4 = *(v28 + 8);
    v5 = *(v28 + 16);
    v6 = *(v28 + 24);
    v7 = *(v28 + 32);
    v8 = *(v28 + 40);
    v9 = *(v28 + 48);
    v10 = *(v28 + 56);
    v11 = *(v28 + 64);
    v12 = *(v28 + 72);
    v13 = *(v28 + 80);
    v14 = *(v28 + 88);
    v15 = *(v28 + 96);
    v16 = *(v28 + 104);
    v17 = *(v28 + 112);
    v18 = *(v28 + 120);
    v19 = *(v28 + 128);
    v20 = *(v28 + 136);
    v21 = *(v28 + 144);
    v22 = *(v28 + 152);
    v23 = *(v28 + 160);
    v24 = *(v28 + 168);
    v25 = *(v28 + 176);
    v29 = &v27;
    sub_1B075E1EC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  return swift_deallocObject();
}

uint64_t sub_1B04786BC()
{
  v38 = 0;
  v35 = type metadata accessor for MessageSectionData(0);
  v31 = *(v35 - 8);
  v1 = *(v31 + 80);
  v32 = (v1 + 16) & ~v1;
  v33 = v32 + *(v31 + 64);
  v34 = v1 | 7;
  v36 = v0 + v32;

  v37 = *(v35 + 28);
  v2 = *(*(sub_1B0E443C8() - 8) + 8);
  v39 = v0 + v32 + v37;
  v2();
  v40 = *(type metadata accessor for MessageSectionData.Segment(0) + 24);
  if (*(v39 + v40 + 176) != 254 && *(v30 + v32 + v37 + v40 + 176) != 255)
  {
    v28 = v30 + v32 + v37 + v40;
    v3 = *v28;
    v4 = *(v28 + 8);
    v5 = *(v28 + 16);
    v6 = *(v28 + 24);
    v7 = *(v28 + 32);
    v8 = *(v28 + 40);
    v9 = *(v28 + 48);
    v10 = *(v28 + 56);
    v11 = *(v28 + 64);
    v12 = *(v28 + 72);
    v13 = *(v28 + 80);
    v14 = *(v28 + 88);
    v15 = *(v28 + 96);
    v16 = *(v28 + 104);
    v17 = *(v28 + 112);
    v18 = *(v28 + 120);
    v19 = *(v28 + 128);
    v20 = *(v28 + 136);
    v21 = *(v28 + 144);
    v22 = *(v28 + 152);
    v23 = *(v28 + 160);
    v24 = *(v28 + 168);
    v25 = *(v28 + 176);
    v29 = &v27;
    sub_1B075E1EC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  return swift_deallocObject();
}

uint64_t sub_1B0478954()
{
  v38 = 0;
  v35 = type metadata accessor for MessageSectionData(0);
  v31 = *(v35 - 8);
  v1 = *(v31 + 80);
  v32 = (v1 + 16) & ~v1;
  v33 = v32 + *(v31 + 64);
  v34 = v1 | 7;
  v36 = v0 + v32;

  v37 = *(v35 + 28);
  v2 = *(*(sub_1B0E443C8() - 8) + 8);
  v39 = v0 + v32 + v37;
  v2();
  v40 = *(type metadata accessor for MessageSectionData.Segment(0) + 24);
  if (*(v39 + v40 + 176) != 254 && *(v30 + v32 + v37 + v40 + 176) != 255)
  {
    v28 = v30 + v32 + v37 + v40;
    v3 = *v28;
    v4 = *(v28 + 8);
    v5 = *(v28 + 16);
    v6 = *(v28 + 24);
    v7 = *(v28 + 32);
    v8 = *(v28 + 40);
    v9 = *(v28 + 48);
    v10 = *(v28 + 56);
    v11 = *(v28 + 64);
    v12 = *(v28 + 72);
    v13 = *(v28 + 80);
    v14 = *(v28 + 88);
    v15 = *(v28 + 96);
    v16 = *(v28 + 104);
    v17 = *(v28 + 112);
    v18 = *(v28 + 120);
    v19 = *(v28 + 128);
    v20 = *(v28 + 136);
    v21 = *(v28 + 144);
    v22 = *(v28 + 152);
    v23 = *(v28 + 160);
    v24 = *(v28 + 168);
    v25 = *(v28 + 176);
    v29 = &v27;
    sub_1B075E1EC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  return swift_deallocObject();
}

uint64_t sub_1B0479398()
{
  v38 = 0;
  v35 = type metadata accessor for MessageSectionData(0);
  v31 = *(v35 - 8);
  v1 = *(v31 + 80);
  v32 = (v1 + 16) & ~v1;
  v33 = v32 + *(v31 + 64);
  v34 = v1 | 7;
  v36 = v0 + v32;

  v37 = *(v35 + 28);
  v2 = *(*(sub_1B0E443C8() - 8) + 8);
  v39 = v0 + v32 + v37;
  v2();
  v40 = *(type metadata accessor for MessageSectionData.Segment(0) + 24);
  if (*(v39 + v40 + 176) != 254 && *(v30 + v32 + v37 + v40 + 176) != 255)
  {
    v28 = v30 + v32 + v37 + v40;
    v3 = *v28;
    v4 = *(v28 + 8);
    v5 = *(v28 + 16);
    v6 = *(v28 + 24);
    v7 = *(v28 + 32);
    v8 = *(v28 + 40);
    v9 = *(v28 + 48);
    v10 = *(v28 + 56);
    v11 = *(v28 + 64);
    v12 = *(v28 + 72);
    v13 = *(v28 + 80);
    v14 = *(v28 + 88);
    v15 = *(v28 + 96);
    v16 = *(v28 + 104);
    v17 = *(v28 + 112);
    v18 = *(v28 + 120);
    v19 = *(v28 + 128);
    v20 = *(v28 + 136);
    v21 = *(v28 + 144);
    v22 = *(v28 + 152);
    v23 = *(v28 + 160);
    v24 = *(v28 + 168);
    v25 = *(v28 + 176);
    v29 = &v27;
    sub_1B075E1EC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  return swift_deallocObject();
}

uint64_t sub_1B0479E1C()
{
  v34 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection(0);
  v35 = *(v34 - 8);
  v1 = *(v35 + 80);
  v36 = (v1 + 16) & ~v1;
  v37 = v36 + *(v35 + 64);
  v38 = v1 | 7;
  v39 = v0 + v36;

  if (*(v0 + v36 + 16))
  {
    v32 = v33 + v36;
  }

  v31 = v33 + v36;
  if (*(v33 + v36 + 216) != 255)
  {
    v2 = *(v31 + 40);
    v29 = v33 + v36;
    v3 = *(v33 + v36 + 48);
    v4 = *(v33 + v36 + 56);
    v5 = *(v33 + v36 + 64);
    v6 = *(v33 + v36 + 72);
    v7 = *(v33 + v36 + 80);
    v8 = *(v33 + v36 + 88);
    v9 = *(v33 + v36 + 96);
    v10 = *(v33 + v36 + 104);
    v11 = *(v33 + v36 + 112);
    v12 = *(v33 + v36 + 120);
    v13 = *(v33 + v36 + 128);
    v14 = *(v33 + v36 + 136);
    v15 = *(v33 + v36 + 144);
    v16 = *(v33 + v36 + 152);
    v17 = *(v33 + v36 + 160);
    v18 = *(v33 + v36 + 168);
    v19 = *(v33 + v36 + 176);
    v20 = *(v33 + v36 + 184);
    v21 = *(v33 + v36 + 192);
    v22 = *(v33 + v36 + 200);
    v23 = *(v33 + v36 + 208);
    v24 = *(v33 + v36 + 216);
    v30 = &v27;
    sub_1B075E1EC(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  v28 = v33 + v36 + *(v34 + 28);
  v25 = sub_1B0E443C8();
  (*(*(v25 - 8) + 8))(v28);
  return swift_deallocObject();
}

uint64_t sub_1B047A0DC()
{
  v34 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection(0);
  v35 = *(v34 - 8);
  v1 = *(v35 + 80);
  v36 = (v1 + 16) & ~v1;
  v37 = v36 + *(v35 + 64);
  v38 = v1 | 7;
  v39 = v0 + v36;

  if (*(v0 + v36 + 16))
  {
    v32 = v33 + v36;
  }

  v31 = v33 + v36;
  if (*(v33 + v36 + 216) != 255)
  {
    v2 = *(v31 + 40);
    v29 = v33 + v36;
    v3 = *(v33 + v36 + 48);
    v4 = *(v33 + v36 + 56);
    v5 = *(v33 + v36 + 64);
    v6 = *(v33 + v36 + 72);
    v7 = *(v33 + v36 + 80);
    v8 = *(v33 + v36 + 88);
    v9 = *(v33 + v36 + 96);
    v10 = *(v33 + v36 + 104);
    v11 = *(v33 + v36 + 112);
    v12 = *(v33 + v36 + 120);
    v13 = *(v33 + v36 + 128);
    v14 = *(v33 + v36 + 136);
    v15 = *(v33 + v36 + 144);
    v16 = *(v33 + v36 + 152);
    v17 = *(v33 + v36 + 160);
    v18 = *(v33 + v36 + 168);
    v19 = *(v33 + v36 + 176);
    v20 = *(v33 + v36 + 184);
    v21 = *(v33 + v36 + 192);
    v22 = *(v33 + v36 + 200);
    v23 = *(v33 + v36 + 208);
    v24 = *(v33 + v36 + 216);
    v30 = &v27;
    sub_1B075E1EC(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  v28 = v33 + v36 + *(v34 + 28);
  v25 = sub_1B0E443C8();
  (*(*(v25 - 8) + 8))(v28);
  return swift_deallocObject();
}

uint64_t sub_1B047ABA0()
{
  v38 = 0;
  v35 = type metadata accessor for MessageSectionData(0);
  v31 = *(v35 - 8);
  v1 = *(v31 + 80);
  v32 = (v1 + 16) & ~v1;
  v33 = v32 + *(v31 + 64);
  v34 = v1 | 7;
  v36 = v0 + v32;

  v37 = *(v35 + 28);
  v2 = *(*(sub_1B0E443C8() - 8) + 8);
  v39 = v0 + v32 + v37;
  v2();
  v40 = *(type metadata accessor for MessageSectionData.Segment(0) + 24);
  if (*(v39 + v40 + 176) != 254 && *(v30 + v32 + v37 + v40 + 176) != 255)
  {
    v28 = v30 + v32 + v37 + v40;
    v3 = *v28;
    v4 = *(v28 + 8);
    v5 = *(v28 + 16);
    v6 = *(v28 + 24);
    v7 = *(v28 + 32);
    v8 = *(v28 + 40);
    v9 = *(v28 + 48);
    v10 = *(v28 + 56);
    v11 = *(v28 + 64);
    v12 = *(v28 + 72);
    v13 = *(v28 + 80);
    v14 = *(v28 + 88);
    v15 = *(v28 + 96);
    v16 = *(v28 + 104);
    v17 = *(v28 + 112);
    v18 = *(v28 + 120);
    v19 = *(v28 + 128);
    v20 = *(v28 + 136);
    v21 = *(v28 + 144);
    v22 = *(v28 + 152);
    v23 = *(v28 + 160);
    v24 = *(v28 + 168);
    v25 = *(v28 + 176);
    v29 = &v27;
    sub_1B075E1EC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  return swift_deallocObject();
}

uint64_t sub_1B047ADF8()
{
  v38 = 0;
  v35 = type metadata accessor for MessageSectionData(0);
  v31 = *(v35 - 8);
  v1 = *(v31 + 80);
  v32 = (v1 + 16) & ~v1;
  v33 = v32 + *(v31 + 64);
  v34 = v1 | 7;
  v36 = v0 + v32;

  v37 = *(v35 + 28);
  v2 = *(*(sub_1B0E443C8() - 8) + 8);
  v39 = v0 + v32 + v37;
  v2();
  v40 = *(type metadata accessor for MessageSectionData.Segment(0) + 24);
  if (*(v39 + v40 + 176) != 254 && *(v30 + v32 + v37 + v40 + 176) != 255)
  {
    v28 = v30 + v32 + v37 + v40;
    v3 = *v28;
    v4 = *(v28 + 8);
    v5 = *(v28 + 16);
    v6 = *(v28 + 24);
    v7 = *(v28 + 32);
    v8 = *(v28 + 40);
    v9 = *(v28 + 48);
    v10 = *(v28 + 56);
    v11 = *(v28 + 64);
    v12 = *(v28 + 72);
    v13 = *(v28 + 80);
    v14 = *(v28 + 88);
    v15 = *(v28 + 96);
    v16 = *(v28 + 104);
    v17 = *(v28 + 112);
    v18 = *(v28 + 120);
    v19 = *(v28 + 128);
    v20 = *(v28 + 136);
    v21 = *(v28 + 144);
    v22 = *(v28 + 152);
    v23 = *(v28 + 160);
    v24 = *(v28 + 168);
    v25 = *(v28 + 176);
    v29 = &v27;
    sub_1B075E1EC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  return swift_deallocObject();
}

uint64_t sub_1B047B954()
{
  v38 = 0;
  v35 = type metadata accessor for MessageSectionData(0);
  v31 = *(v35 - 8);
  v1 = *(v31 + 80);
  v32 = (v1 + 16) & ~v1;
  v33 = v32 + *(v31 + 64);
  v34 = v1 | 7;
  v36 = v0 + v32;

  v37 = *(v35 + 28);
  v2 = *(*(sub_1B0E443C8() - 8) + 8);
  v39 = v0 + v32 + v37;
  v2();
  v40 = *(type metadata accessor for MessageSectionData.Segment(0) + 24);
  if (*(v39 + v40 + 176) != 254 && *(v30 + v32 + v37 + v40 + 176) != 255)
  {
    v28 = v30 + v32 + v37 + v40;
    v3 = *v28;
    v4 = *(v28 + 8);
    v5 = *(v28 + 16);
    v6 = *(v28 + 24);
    v7 = *(v28 + 32);
    v8 = *(v28 + 40);
    v9 = *(v28 + 48);
    v10 = *(v28 + 56);
    v11 = *(v28 + 64);
    v12 = *(v28 + 72);
    v13 = *(v28 + 80);
    v14 = *(v28 + 88);
    v15 = *(v28 + 96);
    v16 = *(v28 + 104);
    v17 = *(v28 + 112);
    v18 = *(v28 + 120);
    v19 = *(v28 + 128);
    v20 = *(v28 + 136);
    v21 = *(v28 + 144);
    v22 = *(v28 + 152);
    v23 = *(v28 + 160);
    v24 = *(v28 + 168);
    v25 = *(v28 + 176);
    v29 = &v27;
    sub_1B075E1EC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  return swift_deallocObject();
}

uint64_t sub_1B047C3D8()
{
  v38 = 0;
  v35 = type metadata accessor for MessageSectionData(0);
  v31 = *(v35 - 8);
  v1 = *(v31 + 80);
  v32 = (v1 + 16) & ~v1;
  v33 = v32 + *(v31 + 64);
  v34 = v1 | 7;
  v36 = v0 + v32;

  v37 = *(v35 + 28);
  v2 = *(*(sub_1B0E443C8() - 8) + 8);
  v39 = v0 + v32 + v37;
  v2();
  v40 = *(type metadata accessor for MessageSectionData.Segment(0) + 24);
  if (*(v39 + v40 + 176) != 254 && *(v30 + v32 + v37 + v40 + 176) != 255)
  {
    v28 = v30 + v32 + v37 + v40;
    v3 = *v28;
    v4 = *(v28 + 8);
    v5 = *(v28 + 16);
    v6 = *(v28 + 24);
    v7 = *(v28 + 32);
    v8 = *(v28 + 40);
    v9 = *(v28 + 48);
    v10 = *(v28 + 56);
    v11 = *(v28 + 64);
    v12 = *(v28 + 72);
    v13 = *(v28 + 80);
    v14 = *(v28 + 88);
    v15 = *(v28 + 96);
    v16 = *(v28 + 104);
    v17 = *(v28 + 112);
    v18 = *(v28 + 120);
    v19 = *(v28 + 128);
    v20 = *(v28 + 136);
    v21 = *(v28 + 144);
    v22 = *(v28 + 152);
    v23 = *(v28 + 160);
    v24 = *(v28 + 168);
    v25 = *(v28 + 176);
    v29 = &v27;
    sub_1B075E1EC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  return swift_deallocObject();
}

uint64_t sub_1B047C670()
{
  v38 = 0;
  v35 = type metadata accessor for MessageSectionData(0);
  v31 = *(v35 - 8);
  v1 = *(v31 + 80);
  v32 = (v1 + 16) & ~v1;
  v33 = v32 + *(v31 + 64);
  v34 = v1 | 7;
  v36 = v0 + v32;

  v37 = *(v35 + 28);
  v2 = *(*(sub_1B0E443C8() - 8) + 8);
  v39 = v0 + v32 + v37;
  v2();
  v40 = *(type metadata accessor for MessageSectionData.Segment(0) + 24);
  if (*(v39 + v40 + 176) != 254 && *(v30 + v32 + v37 + v40 + 176) != 255)
  {
    v28 = v30 + v32 + v37 + v40;
    v3 = *v28;
    v4 = *(v28 + 8);
    v5 = *(v28 + 16);
    v6 = *(v28 + 24);
    v7 = *(v28 + 32);
    v8 = *(v28 + 40);
    v9 = *(v28 + 48);
    v10 = *(v28 + 56);
    v11 = *(v28 + 64);
    v12 = *(v28 + 72);
    v13 = *(v28 + 80);
    v14 = *(v28 + 88);
    v15 = *(v28 + 96);
    v16 = *(v28 + 104);
    v17 = *(v28 + 112);
    v18 = *(v28 + 120);
    v19 = *(v28 + 128);
    v20 = *(v28 + 136);
    v21 = *(v28 + 144);
    v22 = *(v28 + 152);
    v23 = *(v28 + 160);
    v24 = *(v28 + 168);
    v25 = *(v28 + 176);
    v29 = &v27;
    sub_1B075E1EC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  return swift_deallocObject();
}

uint64_t sub_1B047DAA4()
{

  return swift_deallocObject();
}

uint64_t sub_1B047DAEC()
{

  return swift_deallocObject();
}

uint64_t sub_1B047E57C()
{

  return swift_deallocObject();
}

uint64_t sub_1B047E5C4()
{

  return swift_deallocObject();
}

uint64_t sub_1B047F014()
{
  v42 = type metadata accessor for InProgressMessageDownload.Completed(0);
  v43 = *(v42 - 1);
  v1 = *(v43 + 80);
  v44 = (v1 + 16) & ~v1;
  v45 = v44 + *(v43 + 64);
  v46 = v1 | 7;
  if (*(v0 + v44 + 184) != 255)
  {
    v39 = v41 + v44;
    v2 = *(v41 + v44 + 8);
    v3 = *(v41 + v44 + 16);
    v4 = *(v41 + v44 + 24);
    v5 = *(v41 + v44 + 32);
    v6 = *(v41 + v44 + 40);
    v7 = *(v41 + v44 + 48);
    v8 = *(v41 + v44 + 56);
    v9 = *(v41 + v44 + 64);
    v10 = *(v41 + v44 + 72);
    v11 = *(v41 + v44 + 80);
    v12 = *(v41 + v44 + 88);
    v13 = *(v41 + v44 + 96);
    v14 = *(v41 + v44 + 104);
    v15 = *(v41 + v44 + 112);
    v16 = *(v41 + v44 + 120);
    v17 = *(v41 + v44 + 128);
    v18 = *(v41 + v44 + 136);
    v19 = *(v41 + v44 + 144);
    v20 = *(v41 + v44 + 152);
    v21 = *(v41 + v44 + 160);
    v22 = *(v41 + v44 + 168);
    v23 = *(v41 + v44 + 176);
    v24 = *(v41 + v44 + 184);
    v40 = &v29;
    sub_1B075E1EC(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  v37 = v41 + v44 + v42[6];
  _s31PreviouslyDownloadedMessageDataV4MIMEOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    v25 = sub_1B0E443C8();
    (*(*(v25 - 8) + 8))(v37);
  }

  v35 = 0;
  _s31PreviouslyDownloadedMessageDataVMa(0);

  v36 = v41 + v44 + v42[7];
  v26 = type metadata accessor for MessageHeader(v35);
  if (!(*(*(v26 - 8) + 48))(v36, 1))
  {
    v27 = sub_1B0E443C8();
    (*(*(v27 - 8) + 8))(v36);
  }

  v30 = v41 + v44;

  v31 = v30 + v42[11];
  v32 = sub_1B0E443C8();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  if (!(*(v33 + 48))(v31, 1))
  {
    (*(v33 + 8))(v31, v32);
  }

  return swift_deallocObject();
}

uint64_t sub_1B047FBDC()
{
  v2 = *(sub_1B0E443C8() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B048037C()
{
  v42 = type metadata accessor for InProgressMessageDownload.Completed(0);
  v43 = *(v42 - 1);
  v1 = *(v43 + 80);
  v44 = (v1 + 16) & ~v1;
  v45 = v44 + *(v43 + 64);
  v46 = v1 | 7;
  if (*(v0 + v44 + 184) != 255)
  {
    v39 = v41 + v44;
    v2 = *(v41 + v44 + 8);
    v3 = *(v41 + v44 + 16);
    v4 = *(v41 + v44 + 24);
    v5 = *(v41 + v44 + 32);
    v6 = *(v41 + v44 + 40);
    v7 = *(v41 + v44 + 48);
    v8 = *(v41 + v44 + 56);
    v9 = *(v41 + v44 + 64);
    v10 = *(v41 + v44 + 72);
    v11 = *(v41 + v44 + 80);
    v12 = *(v41 + v44 + 88);
    v13 = *(v41 + v44 + 96);
    v14 = *(v41 + v44 + 104);
    v15 = *(v41 + v44 + 112);
    v16 = *(v41 + v44 + 120);
    v17 = *(v41 + v44 + 128);
    v18 = *(v41 + v44 + 136);
    v19 = *(v41 + v44 + 144);
    v20 = *(v41 + v44 + 152);
    v21 = *(v41 + v44 + 160);
    v22 = *(v41 + v44 + 168);
    v23 = *(v41 + v44 + 176);
    v24 = *(v41 + v44 + 184);
    v40 = &v29;
    sub_1B075E1EC(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  v37 = v41 + v44 + v42[6];
  _s31PreviouslyDownloadedMessageDataV4MIMEOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    v25 = sub_1B0E443C8();
    (*(*(v25 - 8) + 8))(v37);
  }

  v35 = 0;
  _s31PreviouslyDownloadedMessageDataVMa(0);

  v36 = v41 + v44 + v42[7];
  v26 = type metadata accessor for MessageHeader(v35);
  if (!(*(*(v26 - 8) + 48))(v36, 1))
  {
    v27 = sub_1B0E443C8();
    (*(*(v27 - 8) + 8))(v36);
  }

  v30 = v41 + v44;

  v31 = v30 + v42[11];
  v32 = sub_1B0E443C8();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  if (!(*(v33 + 48))(v31, 1))
  {
    (*(v33 + 8))(v31, v32);
  }

  return swift_deallocObject();
}

uint64_t sub_1B0480E6C()
{
  v42 = type metadata accessor for InProgressMessageDownload.Completed(0);
  v43 = *(v42 - 1);
  v1 = *(v43 + 80);
  v44 = (v1 + 16) & ~v1;
  v45 = v44 + *(v43 + 64);
  v46 = v1 | 7;
  if (*(v0 + v44 + 184) != 255)
  {
    v39 = v41 + v44;
    v2 = *(v41 + v44 + 8);
    v3 = *(v41 + v44 + 16);
    v4 = *(v41 + v44 + 24);
    v5 = *(v41 + v44 + 32);
    v6 = *(v41 + v44 + 40);
    v7 = *(v41 + v44 + 48);
    v8 = *(v41 + v44 + 56);
    v9 = *(v41 + v44 + 64);
    v10 = *(v41 + v44 + 72);
    v11 = *(v41 + v44 + 80);
    v12 = *(v41 + v44 + 88);
    v13 = *(v41 + v44 + 96);
    v14 = *(v41 + v44 + 104);
    v15 = *(v41 + v44 + 112);
    v16 = *(v41 + v44 + 120);
    v17 = *(v41 + v44 + 128);
    v18 = *(v41 + v44 + 136);
    v19 = *(v41 + v44 + 144);
    v20 = *(v41 + v44 + 152);
    v21 = *(v41 + v44 + 160);
    v22 = *(v41 + v44 + 168);
    v23 = *(v41 + v44 + 176);
    v24 = *(v41 + v44 + 184);
    v40 = &v29;
    sub_1B075E1EC(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  v37 = v41 + v44 + v42[6];
  _s31PreviouslyDownloadedMessageDataV4MIMEOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    v25 = sub_1B0E443C8();
    (*(*(v25 - 8) + 8))(v37);
  }

  v35 = 0;
  _s31PreviouslyDownloadedMessageDataVMa(0);

  v36 = v41 + v44 + v42[7];
  v26 = type metadata accessor for MessageHeader(v35);
  if (!(*(*(v26 - 8) + 48))(v36, 1))
  {
    v27 = sub_1B0E443C8();
    (*(*(v27 - 8) + 8))(v36);
  }

  v30 = v41 + v44;

  v31 = v30 + v42[11];
  v32 = sub_1B0E443C8();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  if (!(*(v33 + 48))(v31, 1))
  {
    (*(v33 + 8))(v31, v32);
  }

  return swift_deallocObject();
}

uint64_t sub_1B04820B4(uint64_t a1, unsigned int a2, int *a3)
{
  v11 = _s31PreviouslyDownloadedMessageDataVMa(0);
  if (a2 == *(*(v11 - 8) + 84))
  {
    return (*(*(v11 - 8) + 48))(a1 + a3[6], a2, v11);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0);
    if (a2 == *(*(v6 - 8) + 84))
    {
      return (*(*(v6 - 8) + 48))(a1 + a3[7], a2, v6);
    }

    else if (a2 == 0x7FFFFFFF)
    {
      v5 = -1;
      if (*(a1 + a3[9]) < 0x100000000uLL)
      {
        v5 = *(a1 + a3[9]);
      }

      return (v5 + 1);
    }

    else
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
      if (a2 == *(*(v4 - 8) + 84))
      {
        return (*(*(v4 - 8) + 48))(a1 + a3[11], a2, v4);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return v7;
}

uint64_t sub_1B0482320(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  v9 = _s31PreviouslyDownloadedMessageDataVMa(0);
  if (a3 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 56))(a1 + a4[6], a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + a4[7], a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9]) = a2 - 1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(a1 + a4[11], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B0482564(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_1B0E443C8();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 20));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_1B048267C(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_1B0E443C8();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B048276C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2110, &qword_1B0E9B590);
  if (a2 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 48))(a1, a2, v10);
  }

  else if (a2 == 253)
  {
    v3 = *(a1 + *(a3 + 20)) - 2;
    if (v3 < 0)
    {
      v3 = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v6;
}

uint64_t sub_1B0482878(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2110, &qword_1B0E9B590);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 253)
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0483E48(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_1B0E439A8();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20) + 8) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 20) + 8);
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_1B0483F64(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_1B0E439A8();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0484908(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_1B0E42E68();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 20));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_1B0484A20(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_1B0E42E68();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0484B10(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v3 = sub_1B0E42E68();
  return (*(*(v3 - 8) + 48))(a1 + v5, a2);
}

uint64_t sub_1B0484B80(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v4 = sub_1B0E42E68();
  return (*(*(v4 - 8) + 56))(a1 + v6, a2);
}

uint64_t sub_1B0484BF4()
{

  return swift_deallocObject();
}

uint64_t sub_1B0484C84(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = sub_1B0E42E68();
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 20)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_1B0484D9C(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = sub_1B0E42E68();
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B0484E8C(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 20)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_1B0484FB0(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B04851AC()
{
  v1 = *(*(type metadata accessor for MissingBodyDataRequest(0) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0485298()
{
  v1 = *(*(type metadata accessor for MissingBodyDataRequest(0) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0485384()
{
  v1 = *(*(type metadata accessor for MissingBodyDataRequest(0) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0485470()
{
  v1 = *(*(type metadata accessor for MissingBodyDataRequest(0) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B048559C()
{
  v1 = *(*(type metadata accessor for MissingBodyDataRequest(0) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B04860FC()
{
  v1 = *(*(type metadata accessor for MissingBodyDataRequest(0) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B04861E8()
{
  v1 = *(*(type metadata accessor for MissingBodyDataRequest(0) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B04862D4()
{
  v1 = *(*(type metadata accessor for MissingBodyDataRequest(0) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0486C84()
{
  v1 = *(*(type metadata accessor for MissingBodyDataRequest(0) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0486D70()
{
  v1 = *(*(type metadata accessor for MissingBodyDataRequest(0) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0487608()
{
  v1 = *(*(type metadata accessor for MissingBodyDataRequest(0) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B04876F4()
{
  v1 = *(*(type metadata accessor for MissingBodyDataRequest(0) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B04877E0()
{
  v1 = *(*(type metadata accessor for MissingBodyDataRequest(0) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B04878CC()
{
  v1 = *(*(type metadata accessor for MissingBodyDataRequest(0) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B04879F8()
{
  v1 = *(*(type metadata accessor for MissingBodyDataRequest(0) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0488558()
{
  v1 = *(*(type metadata accessor for MissingBodyDataRequest(0) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0488644()
{
  v1 = *(*(type metadata accessor for MissingBodyDataRequest(0) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0488730()
{
  v1 = *(*(type metadata accessor for MissingBodyDataRequest(0) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B04890E0()
{
  v1 = *(*(type metadata accessor for MissingBodyDataRequest(0) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B04891CC()
{
  v1 = *(*(type metadata accessor for MissingBodyDataRequest(0) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0489B7C()
{
  if (*(v0 + 24) > 1uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B048A698()
{
  if (*(v0 + 24) > 1uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B048B260()
{
  if (*(v0 + 24) > 1uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B048BD54(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 20)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_1B048BE78(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B048BF74(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 20)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_1B048C098(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B048C3B4()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B048C4AC()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B048FF48()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0490040()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B0490238()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0490330()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B04904E8()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B0491114()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B049120C()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B0491404()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B04914FC()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B04916B4()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B04918AC()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B04925B0()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B04926A8()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B04928A0()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0492998()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0492AD0()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B0492C88()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B049398C()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0493A84()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B0493C7C()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0493D74()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0493EAC()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B0494064()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B049425C()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B0495038()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0495130()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0495268()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B0495460()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0495558()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B0495710()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B0496414()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B049650C()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0496644()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B049683C()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0496934()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B0496AEC()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B0496CE4()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B0497AC0()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0497BB8()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0497CF0()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B0497EE8()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0497FE0()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0498118()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B04982D0()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B04990AC()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B04991A4()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B04992DC()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B04994D4()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B04995CC()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1B0499704()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B04998BC()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B0499AB4()
{
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v3 = v6 + *(v5 + 20);

  v4 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v4);
  (v8)(v6 + *(v5 + 24), v7);
  return swift_deallocObject();
}

uint64_t sub_1B049A974(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    return (v7 + 1);
  }

  else
  {
    v5 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 20)], a2, v5);
    }

    else
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      if (a2 == *(*(v4 - 8) + 84))
      {
        return (*(*(v4 - 8) + 48))(&a1[*(a3 + 24)], a2, v4);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return v6;
}

char *sub_1B049AB30(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    v4 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0);
    if (a3 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 56))(&v5[*(a4 + 20)], a2, a2, v4);
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      if (a3 == *(*(result - 1) + 84))
      {
        return (*(*(result - 1) + 56))(&v5[*(a4 + 24)], a2, a2, result);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1B049ACC4(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 24)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_1B049ADE8(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 24)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B049AEE4(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = _s19CachedMailboxValuesVMa(0);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 20)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_1B049AFFC(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = _s19CachedMailboxValuesVMa(0);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B049B104(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = _s31PreviouslyDownloadedMessageDataVMa(0);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 20)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_1B049B21C(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = _s31PreviouslyDownloadedMessageDataVMa(0);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B049B30C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa(0);
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 20));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_1B049B424(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = _s31PreviouslyDownloadedMessageDataV4MIMEOMa(0);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B049B514(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v6 = *a1;
    v7 = -1;
    if ((v6 & 0xFFFFFFFE) != 0)
    {
      v7 = v6 & 1 | ((v6 & 0xFE) - 2) & 0x7FFFFFFF;
    }

    return (v7 + 1);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 20)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

_BYTE *sub_1B049B644(_BYTE *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 254)
  {
    *result = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B049D920()
{
  v7 = type metadata accessor for MessageMetadata(0);
  v1 = *(*(v7 - 8) + 80);
  v6 = (v1 + 16) & ~v1;

  v8 = *(v7 + 32);
  v2 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  if (!(*(*(v2 - 8) + 48))(v0 + v6 + v8, 1))
  {
    v3 = sub_1B0E443C8();
    (*(*(v3 - 8) + 8))(v5 + v6 + v8);
  }

  return swift_deallocObject();
}

uint64_t sub_1B049DAC0()
{
  v7 = type metadata accessor for MessageMetadata(0);
  v1 = *(*(v7 - 8) + 80);
  v6 = (v1 + 16) & ~v1;

  v8 = *(v7 + 32);
  v2 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  if (!(*(*(v2 - 8) + 48))(v0 + v6 + v8, 1))
  {
    v3 = sub_1B0E443C8();
    (*(*(v3 - 8) + 8))(v5 + v6 + v8);
  }

  return swift_deallocObject();
}

uint64_t sub_1B049DC20()
{
  v7 = type metadata accessor for MessageMetadata(0);
  v1 = *(*(v7 - 8) + 80);
  v6 = (v1 + 16) & ~v1;

  v8 = *(v7 + 32);
  v2 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  if (!(*(*(v2 - 8) + 48))(v0 + v6 + v8, 1))
  {
    v3 = sub_1B0E443C8();
    (*(*(v3 - 8) + 8))(v5 + v6 + v8);
  }

  return swift_deallocObject();
}

uint64_t sub_1B049E504()
{
  v2 = *(sub_1B0E42E68() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B04A2968()
{
  v42 = type metadata accessor for InProgressMessageDownload.Completed(0);
  v43 = *(v42 - 1);
  v1 = *(v43 + 80);
  v44 = (v1 + 16) & ~v1;
  v45 = v44 + *(v43 + 64);
  v46 = v1 | 7;
  if (*(v0 + v44 + 184) != 255)
  {
    v39 = v41 + v44;
    v2 = *(v41 + v44 + 8);
    v3 = *(v41 + v44 + 16);
    v4 = *(v41 + v44 + 24);
    v5 = *(v41 + v44 + 32);
    v6 = *(v41 + v44 + 40);
    v7 = *(v41 + v44 + 48);
    v8 = *(v41 + v44 + 56);
    v9 = *(v41 + v44 + 64);
    v10 = *(v41 + v44 + 72);
    v11 = *(v41 + v44 + 80);
    v12 = *(v41 + v44 + 88);
    v13 = *(v41 + v44 + 96);
    v14 = *(v41 + v44 + 104);
    v15 = *(v41 + v44 + 112);
    v16 = *(v41 + v44 + 120);
    v17 = *(v41 + v44 + 128);
    v18 = *(v41 + v44 + 136);
    v19 = *(v41 + v44 + 144);
    v20 = *(v41 + v44 + 152);
    v21 = *(v41 + v44 + 160);
    v22 = *(v41 + v44 + 168);
    v23 = *(v41 + v44 + 176);
    v24 = *(v41 + v44 + 184);
    v40 = &v29;
    sub_1B075E1EC(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  v37 = v41 + v44 + v42[6];
  _s31PreviouslyDownloadedMessageDataV4MIMEOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    v25 = sub_1B0E443C8();
    (*(*(v25 - 8) + 8))(v37);
  }

  v35 = 0;
  _s31PreviouslyDownloadedMessageDataVMa(0);

  v36 = v41 + v44 + v42[7];
  v26 = type metadata accessor for MessageHeader(v35);
  if (!(*(*(v26 - 8) + 48))(v36, 1))
  {
    v27 = sub_1B0E443C8();
    (*(*(v27 - 8) + 8))(v36);
  }

  v30 = v41 + v44;

  v31 = v30 + v42[11];
  v32 = sub_1B0E443C8();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  if (!(*(v33 + 48))(v31, 1))
  {
    (*(v33 + 8))(v31, v32);
  }

  return swift_deallocObject();
}