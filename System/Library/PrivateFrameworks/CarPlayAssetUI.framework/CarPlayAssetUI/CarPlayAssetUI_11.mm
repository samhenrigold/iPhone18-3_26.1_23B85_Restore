uint64_t sub_242D279B4(uint64_t a1, uint64_t a2, const char *a3, void *a4)
{
  if (qword_27ECEF4D0 != -1)
  {
    swift_once();
  }

  v8 = sub_242F039D0();
  __swift_project_value_buffer(v8, qword_27ED5D310);
  v9 = sub_242F039B0();
  v10 = sub_242F05720();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_242C53000, v9, v10, a3, v11, 2u);
    MEMORY[0x245D287D0](v11, -1, -1);
  }

  v12 = a1 + *a4;
  result = swift_beginAccess();
  v14 = *v12;
  if (*v12)
  {
    v15 = *(v12 + 8);
    memset(v16, 0, sizeof(v16));
    v17 = 2;

    v14(a2, v16);
    return sub_242C655DC(v14, v15);
  }

  return result;
}

uint64_t sub_242D27B14(uint64_t a1, int a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v99 = a5;
  v103 = a4;
  v106 = a3;
  v8 = 0x32656E6F7ALL;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  MEMORY[0x28223BE20](v9 - 8);
  v100 = &v87 - v10;
  v11 = sub_242F03960();
  v96 = *(v11 - 8);
  v97 = v11;
  MEMORY[0x28223BE20](v11);
  v105 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Zone(0);
  MEMORY[0x28223BE20](v13 - 8);
  v107 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC8, &qword_242F175C0);
  MEMORY[0x28223BE20](v15 - 8);
  v98 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v89 = &v87 - v18;
  MEMORY[0x28223BE20](v19);
  v90 = &v87 - v20;
  MEMORY[0x28223BE20](v21);
  v102 = &v87 - v22;
  MEMORY[0x28223BE20](v23);
  v95 = &v87 - v24;
  v108 = type metadata accessor for RequestContentModel(0);
  v104 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v88 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v91 = &v87 - v27;
  KeyPath = swift_getKeyPath();
  v29 = swift_getKeyPath();
  v110 = a1;
  v94 = KeyPath;
  v93 = v29;
  v92 = sub_242F03A70();
  v109 = v30;
  v31 = *v30;
  v33 = *v30 + 16;
  v32 = *v33;
  v101 = a2;
  if (a2)
  {
    v34 = 0x32656E6F7ALL;
  }

  else
  {
    v34 = 0x31656E6F7ALL;
  }

  if (v32)
  {
    v5 = 0x32656E6F7ALL;
    v35 = 0;
    while (1)
    {
      v36 = v31[v35 + 32] ? 0x32656E6F7ALL : 0x31656E6F7ALL;
      if (v36 == v34)
      {
        break;
      }

      v37 = sub_242F06110();
      swift_bridgeObjectRelease_n();
      if (v37)
      {
        goto LABEL_14;
      }

      if (v32 == ++v35)
      {
        goto LABEL_12;
      }
    }

    swift_bridgeObjectRelease_n();
LABEL_14:
    if (__OFADD__(v35, 1))
    {
      goto LABEL_68;
    }

    v38 = *v33;
    if (v35 + 1 != *v33)
    {
      v32 = (v35 + 33);
      do
      {
        v8 = (v32 - 32);
        if ((v32 - 32) >= v38)
        {
          __break(1u);
          goto LABEL_63;
        }

        if (v32[v31])
        {
          v69 = 0x32656E6F7ALL;
        }

        else
        {
          v69 = 0x31656E6F7ALL;
        }

        if (v69 == v34)
        {
          swift_bridgeObjectRelease_n();
        }

        else
        {
          v70 = sub_242F06110();
          swift_bridgeObjectRelease_n();
          if ((v70 & 1) == 0)
          {
            if (v8 != v35)
            {
              if (v35 < 0)
              {
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
LABEL_69:
                v33 = sub_242C83A00(0, *(v33 + 2) + 1, 1, v33);
                *v35 = v33;
LABEL_21:
                v49 = *(v33 + 2);
                v48 = *(v33 + 3);
                if (v49 >= v48 >> 1)
                {
                  v33 = sub_242C83A00((v48 > 1), v49 + 1, 1, v33);
                  *v35 = v33;
                }

                v35 = v103;
                *(v33 + 2) = v49 + 1;
                v33[v49 + 32] = v101 & 1;
                (v32)(v111, 0);

                sub_242D39AFC(v91, type metadata accessor for RequestContentModel);
                v5 = v105;
                v32 = v106;
                goto LABEL_25;
              }

              if (v35 >= *v33)
              {
                goto LABEL_66;
              }

              if (v8 >= *v33)
              {
                goto LABEL_67;
              }

              v71 = v31[v35 + 32];
              v8 = v32[v31];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v109 = v31;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v31 = sub_242D37E80(v31);
              }

              v31[v35 + 32] = v8;
              v32[v31] = v71;
              *v109 = v31;
            }

            ++v35;
          }
        }

        v33 = v31 + 16;
        v38 = *(v31 + 2);
        v68 = v32 - 31;
        ++v32;
      }

      while (v68 != v38);
    }
  }

  else
  {
LABEL_12:
    v35 = *v33;
  }

  v39 = *(*v109 + 2);
  if (v39 < v35)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
    goto LABEL_26;
  }

  sub_242D3A188(v35, v39, sub_242C83A00, sub_242D3A0E4);
  v92(v111, 0);

  v32 = v106;
  v40 = v95;
  sub_242CA321C(v106, v95, &qword_27ECF2EC8, &qword_242F175C0);
  v41 = *(v104 + 48);
  v42 = (v41)(v40, 1, v108);
  v109 = v41;
  if (v42 == 1)
  {
    sub_242C6D138(v40, &qword_27ECF2EC8, &qword_242F175C0);
    v35 = v103;
    v5 = v105;
  }

  else
  {
    v43 = v40;
    v44 = v91;
    sub_242D39C68(v43, v91, type metadata accessor for RequestContentModel);
    v45 = RequestContentModel.isFocusable.getter();
    v5 = v105;
    if (v45)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v32 = sub_242F03A70();
      v35 = v46;
      v33 = *v46;
      v47 = swift_isUniquelyReferenced_nonNull_native();
      *v35 = v33;
      if ((v47 & 1) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_21;
    }

    sub_242D39AFC(v44, type metadata accessor for RequestContentModel);
    v35 = v103;
  }

LABEL_25:
  v33 = v107;
  v8 = v102;
  if (qword_27ECEF0A8 != -1)
  {
    goto LABEL_64;
  }

LABEL_26:
  v50 = sub_242F039A0();
  __swift_project_value_buffer(v50, qword_27ED5D270);
  sub_242CA321C(v32, v8, &qword_27ECF2EC8, &qword_242F175C0);
  sub_242D39B5C(v35, v33, type metadata accessor for Zone);

  sub_242F03950();
  v51 = sub_242F03980();
  LODWORD(v95) = sub_242F05780();

  if ((sub_242F05840() & 1) == 0)
  {

    (*(v96 + 8))(v5, v97);
    sub_242D39AFC(v33, type metadata accessor for Zone);
    sub_242C6D138(v8, &qword_27ECF2EC8, &qword_242F175C0);
    goto LABEL_59;
  }

  v94 = v51;
  v52 = swift_slowAlloc();
  v53 = swift_slowAlloc();
  v111[0] = v53;
  *v52 = 136315650;
  v54 = v90;
  sub_242CA321C(v8, v90, &qword_27ECF2EC8, &qword_242F175C0);
  v55 = v109;
  if ((v109)(v54, 1, v108) == 1)
  {
    sub_242C6D138(v54, &qword_27ECF2EC8, &qword_242F175C0);
    v56 = v89;
LABEL_31:

    v59 = 0x8000000242F5A1F0;
    v57 = 0xD000000000000015;
    goto LABEL_32;
  }

  v57 = RequestContentModel.displayName.getter();
  v59 = v58;
  sub_242D39AFC(v54, type metadata accessor for RequestContentModel);
  v56 = v89;
  if (!v59)
  {
    goto LABEL_31;
  }

LABEL_32:
  sub_242C6D138(v102, &qword_27ECF2EC8, &qword_242F175C0);
  v60 = sub_242C8FD38(v57, v59, v111);

  *(v52 + 4) = v60;
  *(v52 + 12) = 2080;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  v61 = v112;
  if (*(v112 + 16) && (v62 = sub_242CE5568(v107), (v63 & 1) != 0))
  {
    sub_242D39B5C(*(v61 + 56) + *(v104 + 72) * v62, v56, type metadata accessor for RequestContentModel);
    v64 = 0;
  }

  else
  {
    v64 = 1;
  }

  v65 = v108;
  (*(v104 + 56))(v56, v64, 1, v108);
  if ((v55)(v56, 1, v65))
  {
    sub_242C6D138(v56, &qword_27ECF2EC8, &qword_242F175C0);
  }

  else
  {
    v73 = v88;
    sub_242D39B5C(v56, v88, type metadata accessor for RequestContentModel);
    sub_242C6D138(v56, &qword_27ECF2EC8, &qword_242F175C0);
    v67 = RequestContentModel.displayName.getter();
    v66 = v74;
    sub_242D39AFC(v73, type metadata accessor for RequestContentModel);
    if (v66)
    {
      v35 = v103;
      goto LABEL_58;
    }
  }

  v66 = 0x8000000242F5A1F0;
  v35 = v103;
  v67 = 0xD000000000000015;
LABEL_58:
  sub_242D39AFC(v107, type metadata accessor for Zone);
  v75 = sub_242C8FD38(v67, v66, v111);

  *(v52 + 14) = v75;
  *(v52 + 22) = 2080;
  v76 = sub_242C8FD38(v34, 0xE500000000000000, v111);

  *(v52 + 24) = v76;
  v77 = v105;
  v78 = sub_242F03940();
  v79 = v94;
  _os_signpost_emit_with_name_impl(&dword_242C53000, v94, v95, v78, "RequestContent transition started: ", "newContent: %s activeContent: %s, ZoneRegion: %s", v52, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x245D287D0](v53, -1, -1);
  MEMORY[0x245D287D0](v52, -1, -1);

  (*(v96 + 8))(v77, v97);
  v32 = v106;
LABEL_59:
  v80 = *v99;
  if (*v99)
  {
    v81 = *(v99 + 8);

    v80(v82);
    sub_242C655DC(v80, v81);
  }

  v83 = v100;
  sub_242CA321C(v35, v100, &qword_27ECFC780, &qword_242F17930);
  v84 = v98;
  sub_242CA321C(v32, v98, &qword_27ECF2EC8, &qword_242F175C0);
  swift_getKeyPath();
  swift_getKeyPath();
  v85 = sub_242F03A70();
  sub_242E080E0(v84, v83);
  v85(v111, 0);

  LOBYTE(v111[0]) = v101 & 1;
  return sub_242D28F38(v111, 0);
}

uint64_t sub_242D2883C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v49 = a6;
  v54 = a4;
  v52 = a3;
  v9 = type metadata accessor for RequestContentModel(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v48 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC8, &qword_242F175C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v45 - v13;
  v15 = sub_242F03960();
  v50 = *(v15 - 8);
  v51 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Zone(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27ECEF0A8 != -1)
  {
    swift_once();
  }

  v21 = sub_242F039A0();
  __swift_project_value_buffer(v21, qword_27ED5D270);
  sub_242D39B5C(a2, v20, type metadata accessor for Zone);

  sub_242F03950();
  v22 = sub_242F03980();
  v23 = sub_242F05780();

  v24 = sub_242F05840();
  v53 = a1;
  if ((v24 & 1) == 0)
  {

    (*(v50 + 8))(v17, v51);
    sub_242D39AFC(v20, type metadata accessor for Zone);
    v30 = v52;
    goto LABEL_17;
  }

  v46 = v23;
  v47 = a5;
  v25 = swift_slowAlloc();
  v45 = swift_slowAlloc();
  v56[0] = v45;
  *v25 = 136315394;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  v26 = v55;
  if (*(v55 + 16) && (v27 = sub_242CE5568(v20), (v28 & 1) != 0))
  {
    sub_242D39B5C(*(v26 + 56) + *(v10 + 72) * v27, v14, type metadata accessor for RequestContentModel);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  (*(v10 + 56))(v14, v29, 1, v9);
  if ((*(v10 + 48))(v14, 1, v9))
  {
    sub_242C6D138(v14, &qword_27ECF2EC8, &qword_242F175C0);
    a5 = v47;
  }

  else
  {
    v33 = v48;
    sub_242D39B5C(v14, v48, type metadata accessor for RequestContentModel);
    sub_242C6D138(v14, &qword_27ECF2EC8, &qword_242F175C0);
    v32 = RequestContentModel.displayName.getter();
    v31 = v34;
    sub_242D39AFC(v33, type metadata accessor for RequestContentModel);
    a5 = v47;
    if (v31)
    {
      goto LABEL_13;
    }
  }

  v31 = 0x8000000242F5A1F0;
  v32 = 0xD000000000000015;
LABEL_13:
  sub_242D39AFC(v20, type metadata accessor for Zone);
  v35 = sub_242C8FD38(v32, v31, v56);

  *(v25 + 4) = v35;
  *(v25 + 12) = 2080;
  v30 = v52;
  if (v52)
  {
    v36 = 0x32656E6F7ALL;
  }

  else
  {
    v36 = 0x31656E6F7ALL;
  }

  v37 = sub_242C8FD38(v36, 0xE500000000000000, v56);

  *(v25 + 14) = v37;
  v38 = sub_242F03940();
  _os_signpost_emit_with_name_impl(&dword_242C53000, v22, v46, v38, "RequestContent transition ended: ", "activeContent: %s, ZoneRegion: %s", v25, 0x16u);
  v39 = v45;
  swift_arrayDestroy();
  MEMORY[0x245D287D0](v39, -1, -1);
  MEMORY[0x245D287D0](v25, -1, -1);

  (*(v50 + 8))(v17, v51);
LABEL_17:
  LOBYTE(v56[0]) = v30 & 1;
  sub_242D28F38(v56, 1);
  v40 = v54;
  result = swift_beginAccess();
  v42 = *(v40 + 16);
  if (v42)
  {
    v43 = *(v40 + 24);

    v42(v44);
    result = sub_242C655DC(v42, v43);
  }

  if (a5)
  {
    return a5(result);
  }

  return result;
}

uint64_t sub_242D28E70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillAppear;
    swift_beginAccess();
    v6 = *v4;
    v5 = *(v4 + 8);
    sub_242C5573C(v6, v5);

    if (v6)
    {
      memset(v7, 0, sizeof(v7));
      v8 = 2;
      v6(a1, v7);
      return sub_242C655DC(v6, v5);
    }
  }

  return result;
}

uint64_t sub_242D28F38(char *a1, char a2)
{
  v3 = *a1;
  if (qword_27ECEF4D0 != -1)
  {
    swift_once();
  }

  v4 = sub_242F039D0();
  __swift_project_value_buffer(v4, qword_27ED5D310);
  v5 = sub_242F039B0();
  v6 = sub_242F05720();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315394;
    if (a2)
    {
      v9 = 0x64656C74746573;
    }

    else
    {
      v9 = 0x64657472617473;
    }

    v10 = sub_242C8FD38(v9, 0xE700000000000000, &v26);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_242F04F90();
    v13 = sub_242C8FD38(v11, v12, &v26);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_242C53000, v5, v6, "RequestContent - %s transition on zone: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D287D0](v8, -1, -1);
    MEMORY[0x245D287D0](v7, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  v14 = v26;
  if (!*(v26 + 16))
  {
    goto LABEL_14;
  }

  v15 = sub_242CE561C(v3);
  if ((v16 & 1) == 0)
  {
    goto LABEL_14;
  }

  v17 = *(*(v14 + 56) + 8 * v15);

  if (a2)
  {
    v19 = v17 - 1;
    if (!__OFSUB__(v17, 1))
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_14:

    swift_getKeyPath();
    swift_getKeyPath();
    sub_242F03A80();

    v20 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v20;
    sub_242CDF440(1, v3, isUniquelyReferenced_nonNull_native);
    v22 = v26;
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = v22;
    goto LABEL_18;
  }

  v19 = v17 + 1;
  if (!__OFADD__(v17, 1))
  {
LABEL_16:
    if (v19 <= 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_242F03A80();

      sub_242D37DC0(v3);
      swift_getKeyPath();
      swift_getKeyPath();

      goto LABEL_19;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_242F03A80();

    v23 = v26;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v23;
    sub_242CDF440(v19, v3, v24);
    v25 = v26;
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = v25;
LABEL_18:

LABEL_19:
    sub_242F03A90();
    return sub_242D14B80();
  }

  __break(1u);
  return result;
}

uint64_t ClusterTransitionCoordinator.startAppearanceTransition(to:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F88, &qword_242F17950);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v35 = &v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F80, &qword_242F17948);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = sub_242F03BB0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  if (qword_27ECEF4D0 != -1)
  {
    swift_once();
  }

  v16 = sub_242F039D0();
  __swift_project_value_buffer(v16, qword_27ED5D310);
  v37 = *(v10 + 16);
  v37(v15, a1, v9);
  v17 = sub_242F039B0();
  v18 = sub_242F05720();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34 = a1;
    v21 = v20;
    v38 = v20;
    *v19 = 136315138;
    v37(v12, v15, v9);
    v22 = sub_242F04F90();
    v33 = v8;
    v23 = v10;
    v25 = v24;
    (*(v23 + 8))(v15, v9);
    v26 = sub_242C8FD38(v22, v25, &v38);
    v10 = v23;
    v8 = v33;

    *(v19 + 4) = v26;
    _os_log_impl(&dword_242C53000, v17, v18, "AppearanceTransition Start - to: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v21);
    v27 = v21;
    a1 = v34;
    MEMORY[0x245D287D0](v27, -1, -1);
    MEMORY[0x245D287D0](v19, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v15, v9);
  }

  v28 = type metadata accessor for ClusterTransitionCoordinator.AppearanceTransition(0);
  v29 = v37;
  v37(&v8[*(v28 + 20)], a1, v9);
  sub_242F03710();
  (*(*(v28 - 8) + 56))(v8, 0, 1, v28);
  sub_242D16D54(v8);
  v30 = v35;
  v29(v35, a1, v9);
  (*(v10 + 56))(v30, 0, 1, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242CA321C(v30, v36, &qword_27ECF2F88, &qword_242F17950);

  sub_242F03A90();
  return sub_242C6D138(v30, &qword_27ECF2F88, &qword_242F17950);
}

uint64_t ClusterTransitionCoordinator.endAppearanceTransition(to:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F80, &qword_242F17948);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_242F03BB0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  if (qword_27ECEF4D0 != -1)
  {
    swift_once();
  }

  v14 = sub_242F039D0();
  __swift_project_value_buffer(v14, qword_27ED5D310);
  v15 = *(v8 + 16);
  v15(v13, a1, v7);
  v16 = sub_242F039B0();
  v17 = sub_242F05720();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31 = v2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v30 = v6;
    v21 = v20;
    v32 = v20;
    *v19 = 136315138;
    v15(v10, v13, v7);
    v22 = sub_242F04F90();
    v24 = v23;
    (*(v8 + 8))(v13, v7);
    v25 = sub_242C8FD38(v22, v24, &v32);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_242C53000, v16, v17, "AppearanceTransition End - to: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v21);
    v26 = v21;
    v6 = v30;
    MEMORY[0x245D287D0](v26, -1, -1);
    MEMORY[0x245D287D0](v19, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v27 = type metadata accessor for ClusterTransitionCoordinator.AppearanceTransition(0);
  (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
  return sub_242D16D54(v6);
}

uint64_t sub_242D29B10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = *(a1 + *(type metadata accessor for Component(0) + 36));
  if (*(v7 + 16))
  {
    v8 = type metadata accessor for Slot(0);
    sub_242CA321C(v7 + *(v8 + 36) + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), v6, &qword_27ECF0B08, &unk_242F17EB0);
    v9 = type metadata accessor for Instrument(0);
    if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
    {
      sub_242C6D138(v6, &qword_27ECF0B08, &unk_242F17EB0);
    }

    else
    {
      memcpy(v19, &v6[*(v9 + 20)], sizeof(v19));
      sub_242CF6BA4(v19, &v18);
      sub_242D39AFC(v6, type metadata accessor for Instrument);
      memcpy(v20, v19, sizeof(v20));
      if (sub_242C9E788(v20) == 6)
      {
        v10 = sub_242C556B4(v20);
        v12 = *(v10 + 16);
        v11 = *(v10 + 24);

        sub_242CF6C60(v19);
        if (v11)
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2748, &unk_242F15360);
          v14 = *(v13 + 48);
          *a2 = v12;
          a2[1] = v11;
          sub_242D39B5C(a1, a2 + v14, type metadata accessor for Component);
          return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
        }
      }

      else
      {
        sub_242CF6C60(v19);
      }
    }
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2748, &unk_242F15360);
  return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
}

uint64_t ClusterTransitionCoordinator.LayoutTransition.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_242F03720();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ClusterTransitionCoordinator.LayoutTransition.description.getter()
{
  v1 = sub_242F03720();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3028, &qword_242F17A20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98, &qword_242F17960);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3030, &qword_242F17A28);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  v26 = 0x203A74756F79614CLL;
  v27 = 0xE800000000000000;
  v17 = type metadata accessor for ClusterTransitionCoordinator.LayoutTransition(0);
  sub_242CA321C(v0 + *(v17 + 24), v10, &qword_27ECF2F98, &qword_242F17960);
  v18 = type metadata accessor for Layout(0);
  if ((*(*(v18 - 8) + 48))(v10, 1, v18) == 1)
  {
    sub_242C6D138(v10, &qword_27ECF2F98, &qword_242F17960);
    v19 = 1;
  }

  else
  {
    sub_242CA321C(v10, v16, &qword_27ECF3028, &qword_242F17A20);
    sub_242D39AFC(v10, type metadata accessor for Layout);
    v19 = 0;
  }

  (*(v5 + 56))(v16, v19, 1, v4);
  sub_242CA321C(v16, v13, &qword_27ECF3030, &qword_242F17A28);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    v20 = 0x8000000242F5A210;
    v21 = 0xD000000000000028;
  }

  else
  {
    sub_242CF6B3C(v13, v7, &qword_27ECF3028, &qword_242F17A20);
    (*(v24 + 16))(v3, v7, v25);
    v21 = sub_242F04F90();
    v20 = v22;
    sub_242C6D138(v7, &qword_27ECF3028, &qword_242F17A20);
  }

  sub_242C6D138(v16, &qword_27ECF3030, &qword_242F17A28);
  MEMORY[0x245D26660](v21, v20);

  return v26;
}

uint64_t sub_242D2A2D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_242F03720();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void ClusterTransitionCoordinator.startLayoutTransition(to:fadeInNewLayout:fadeOutOldLayout:)(uint64_t a1, int a2, int a3)
{
  v4 = v3;
  v166 = a2;
  v167 = a3;
  v6 = sub_242F03960();
  v162 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v161 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for Layout(0);
  v178 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v159 = &v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v160 = &v153 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F90, &qword_242F17958);
  MEMORY[0x28223BE20](v11 - 8);
  v164 = &v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v165 = &v153 - v14;
  v170 = type metadata accessor for PopoverModel(0);
  MEMORY[0x28223BE20](v170);
  v169 = &v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC8, &qword_242F175C0);
  MEMORY[0x28223BE20](v16 - 8);
  v171 = &v153 - v17;
  v177 = type metadata accessor for RequestContentModel(0);
  v180 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v183 = (&v153 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v179 = &v153 - v20;
  v173 = type metadata accessor for Zone(0);
  v21 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v182 = &v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98, &qword_242F17960);
  MEMORY[0x28223BE20](v23);
  v168 = &v153 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v163 = (&v153 - v26);
  MEMORY[0x28223BE20](v27);
  v29 = &v153 - v28;
  MEMORY[0x28223BE20](v30);
  v181 = &v153 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v153 - v33;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  if ((v188 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_242F03A80();

    if ((v188 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_242F03A80();

      if (v188 != 1)
      {
        v154 = v6;
        v156 = a1;
        sub_242CA321C(a1, v29, &qword_27ECF2F98, &qword_242F17960);
        v44 = *(v178 + 48);
        v45 = v172;
        v178 += 48;
        v155 = v44;
        v46 = v44(v29, 1, v172);
        v157 = v4;
        if (v46 == 1)
        {
          sub_242C6D138(v29, &qword_27ECF2F98, &qword_242F17960);
LABEL_50:
          v112 = MEMORY[0x277D84F90];
LABEL_51:
          v184[0] = v112;
          KeyPath = swift_getKeyPath();
          swift_getKeyPath();
          sub_242F03A80();

          v114 = v188;
          v115 = *(v188 + 16);
          if (v115)
          {
            v116 = v188 + 31;
            while (v115 <= *(v114 + 16))
            {
              v117 = *(v116 + v115);
              v118 = sub_242D3861C(v184, v117);
              v119 = *(v184[0] + 16);
              if (v119 < v118)
              {
                goto LABEL_63;
              }

              --v115;
              sub_242D3A188(v118, v119, sub_242C83A00, sub_242D3A0E4);
              KeyPath = v184;
              sub_242D37FCC(0, 0, v117);
              if (!v115)
              {
                goto LABEL_56;
              }
            }

            __break(1u);
LABEL_63:
            __break(1u);
          }

          else
          {
LABEL_56:

            if (qword_27ECEF4D0 != -1)
            {
              swift_once();
            }

            v120 = sub_242F039D0();
            __swift_project_value_buffer(v120, qword_27ED5D310);
            v121 = sub_242F05700();

            v122 = sub_242F039B0();

            if (os_log_type_enabled(v122, v121))
            {
              v123 = swift_slowAlloc();
              v124 = swift_slowAlloc();
              *&v188 = v124;
              *v123 = 136315394;
              swift_getKeyPath();
              swift_getKeyPath();
              sub_242F03A80();

              v125 = MEMORY[0x245D26920](*&v198[0], &type metadata for Zone.ZoneRegion);
              v127 = v126;

              v128 = sub_242C8FD38(v125, v127, &v188);

              *(v123 + 4) = v128;
              *(v123 + 12) = 2080;
              swift_beginAccess();

              v130 = MEMORY[0x245D26920](v129, &type metadata for Zone.ZoneRegion);
              v132 = v131;

              v133 = sub_242C8FD38(v130, v132, &v188);

              *(v123 + 14) = v133;
              _os_log_impl(&dword_242C53000, v122, v121, "Original focusable zones %s. New focusable zones: %s", v123, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x245D287D0](v124, -1, -1);
              MEMORY[0x245D287D0](v123, -1, -1);
            }

            swift_beginAccess();
            v134 = v184[0];
            swift_getKeyPath();
            swift_getKeyPath();
            v185[0] = v134;

            v183 = v134;

            sub_242F03A90();
            swift_getKeyPath();
            swift_getKeyPath();
            v135 = type metadata accessor for ClusterTransitionCoordinator.LayoutTransition(0);
            v136 = v165;
            sub_242F03A80();

            v137 = v156;
            sub_242CA321C(v156, v136 + v135[6], &qword_27ECF2F98, &qword_242F17960);
            sub_242F03710();
            *(v136 + v135[7]) = v166 & 1;
            *(v136 + v135[8]) = v167 & 1;
            (*(*(v135 - 1) + 56))(v136, 0, 1, v135);
            swift_getKeyPath();
            swift_getKeyPath();
            sub_242CA321C(v136, v164, &qword_27ECF2F90, &qword_242F17958);

            sub_242F03A90();
            sub_242D16044();
            sub_242C6D138(v136, &qword_27ECF2F90, &qword_242F17958);
            KeyPath = v163;
            sub_242CA321C(v137, v163, &qword_27ECF2F98, &qword_242F17960);
            if (v155(KeyPath, 1, v172) == 1)
            {
              sub_242C6D138(KeyPath, &qword_27ECF2F98, &qword_242F17960);
LABEL_70:
              v151 = v181;
              v152 = v168;
              sub_242CA321C(v156, v181, &qword_27ECF2F98, &qword_242F17960);
              swift_getKeyPath();
              swift_getKeyPath();
              sub_242CA321C(v151, v152, &qword_27ECF2F98, &qword_242F17960);

              sub_242F03A90();
              sub_242C6D138(v151, &qword_27ECF2F98, &qword_242F17960);

              return;
            }
          }

          v138 = v160;
          sub_242D39C68(KeyPath, v160, type metadata accessor for Layout);
          if (qword_27ECEF0A8 != -1)
          {
            swift_once();
          }

          v139 = sub_242F039A0();
          __swift_project_value_buffer(v139, qword_27ED5D270);
          v140 = v159;
          sub_242D39B5C(v138, v159, type metadata accessor for Layout);
          v141 = v161;
          sub_242F03950();
          v142 = sub_242F03980();
          v143 = sub_242F05780();
          if (sub_242F05840())
          {
            v144 = swift_slowAlloc();
            v145 = swift_slowAlloc();
            v185[0] = v145;
            *v144 = 136315138;
            v146 = sub_242F036F0();
            v148 = v147;
            sub_242D39AFC(v140, type metadata accessor for Layout);
            v149 = sub_242C8FD38(v146, v148, v185);

            *(v144 + 4) = v149;
            v150 = sub_242F03940();
            _os_signpost_emit_with_name_impl(&dword_242C53000, v142, v143, v150, "Layout transition started.", "Target Layout: %s", v144, 0xCu);
            __swift_destroy_boxed_opaque_existential_2Tm(v145);
            MEMORY[0x245D287D0](v145, -1, -1);
            MEMORY[0x245D287D0](v144, -1, -1);

            (*(v162 + 8))(v141, v154);
          }

          else
          {

            (*(v162 + 8))(v141, v154);
            sub_242D39AFC(v140, type metadata accessor for Layout);
          }

          sub_242D39AFC(v138, type metadata accessor for Layout);
          goto LABEL_70;
        }

        v47 = *&v29[*(v45 + 24)];

        sub_242D39AFC(v29, type metadata accessor for Layout);
        v48 = *(v47 + 16);
        if (!v48)
        {

          goto LABEL_50;
        }

        v49 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v153 = v47;
        v50 = v47 + v49;
        v51 = v179;
        v175 = *(v21 + 72);
        v176 = (v180 + 56);
        v174 = (v180 + 48);
        v158 = MEMORY[0x277D84F90];
        v52 = v171;
        v53 = v177;
        v54 = v182;
        while (1)
        {
          sub_242D39B5C(v50, v54, type metadata accessor for Zone);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_242F03A80();

          v55 = v188;
          if (*(v188 + 16))
          {
            v56 = sub_242CE5568(v54);
            if (v57)
            {
              sub_242D39B5C(*(v55 + 56) + *(v180 + 72) * v56, v52, type metadata accessor for RequestContentModel);
              v58 = 0;
            }

            else
            {
              v58 = 1;
            }
          }

          else
          {
            v58 = 1;
          }

          (*v176)(v52, v58, 1, v53);

          if ((*v174)(v52, 1, v53) != 1)
          {
            break;
          }

          sub_242D39AFC(v54, type metadata accessor for Zone);
          sub_242C6D138(v52, &qword_27ECF2EC8, &qword_242F175C0);
LABEL_14:
          v50 += v175;
          if (!--v48)
          {

            v112 = v158;
            goto LABEL_51;
          }
        }

        sub_242D39C68(v52, v51, type metadata accessor for RequestContentModel);
        sub_242D39B5C(v51, v183, type metadata accessor for RequestContentModel);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            v86 = v169;
            sub_242D39C68(v183, v169, type metadata accessor for PopoverModel);
            v87 = *(v86 + *(v170 + 20));
            v88 = v86;
            v53 = v177;
            sub_242D39AFC(v88, type metadata accessor for PopoverModel);
            sub_242D39AFC(v51, type metadata accessor for RequestContentModel);
            if (v87)
            {
              goto LABEL_40;
            }

            goto LABEL_28;
          }

          sub_242D39AFC(v183, type metadata accessor for RequestContentModel);
LABEL_27:
          sub_242D39AFC(v51, type metadata accessor for RequestContentModel);
LABEL_28:
          sub_242D39AFC(v54, type metadata accessor for Zone);
          goto LABEL_14;
        }

        if (EnumCaseMultiPayload != 2)
        {
          if (EnumCaseMultiPayload == 3)
          {
            v60 = *(v183 + 5);
            v61 = *(v183 + 6);

            v62 = v60;
            v54 = v182;
            v63 = v61;
            v51 = v179;
            sub_242C655DC(v62, v63);
            sub_242D39AFC(v51, type metadata accessor for RequestContentModel);
LABEL_40:
            v107 = v54;
            v108 = *(v54 + *(v173 + 40));
            sub_242D39AFC(v107, type metadata accessor for Zone);
            if (v108 != 2)
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v109 = v158;
              }

              else
              {
                v109 = sub_242C83A00(0, *(v158 + 2) + 1, 1, v158);
              }

              v111 = *(v109 + 2);
              v110 = *(v109 + 3);
              if (v111 >= v110 >> 1)
              {
                v109 = sub_242C83A00((v110 > 1), v111 + 1, 1, v109);
              }

              *(v109 + 2) = v111 + 1;
              v158 = v109;
              v109[v111 + 32] = v108 & 1;
              v51 = v179;
            }

            v54 = v182;
            goto LABEL_14;
          }

          goto LABEL_27;
        }

        v64 = v183[7];
        v65 = v183[5];
        v194 = v183[6];
        v195 = v64;
        v66 = v183[7];
        v196 = v183[8];
        v67 = v183[3];
        v68 = v183[1];
        v190 = v183[2];
        v191 = v67;
        v69 = v183[3];
        v70 = v183[5];
        v192 = v183[4];
        v193 = v70;
        v71 = v183[1];
        v188 = *v183;
        v189 = v71;
        v72 = v183[8];
        v198[6] = v66;
        v198[7] = v72;
        v198[2] = v69;
        v198[3] = v192;
        v198[4] = v65;
        v198[5] = v194;
        v197 = *(v183 + 18);
        v199 = *(v183 + 18);
        v198[0] = v68;
        v198[1] = v190;
        v73 = sub_242D3A260(v198);
        v74 = sub_242C578A0(v198);
        v77 = v74;
        if (v73 > 1)
        {
          if (v73 == 2)
          {
            v78 = &type metadata for NotificationModel.FancyModel;
            v186 = &type metadata for NotificationModel.FancyModel;
            v79 = sub_242D3A370(v74, v75, v76);
            v187 = v79;
            v89 = swift_allocObject();
            v185[0] = v89;
            v90 = *(v77 + 112);
            v92 = *(v77 + 64);
            v91 = *(v77 + 80);
            v89[7] = *(v77 + 96);
            v89[8] = v90;
            v89[5] = v92;
            v89[6] = v91;
            v93 = *(v77 + 48);
            v95 = *v77;
            v94 = *(v77 + 16);
            v89[3] = *(v77 + 32);
            v89[4] = v93;
            v89[1] = v95;
            v89[2] = v94;
            goto LABEL_39;
          }

          v78 = &type metadata for NotificationModel.InferredNotificationModel;
          v186 = &type metadata for NotificationModel.InferredNotificationModel;
          v79 = sub_242D3A26C(v74, v75, v76);
          v187 = v79;
          v96 = swift_allocObject();
          v185[0] = v96;
          v98 = *(v77 + 96);
          v97 = *(v77 + 112);
          v99 = *(v77 + 80);
          *(v96 + 144) = *(v77 + 128);
          *(v96 + 112) = v98;
          *(v96 + 128) = v97;
          *(v96 + 96) = v99;
        }

        else
        {
          if (!v73)
          {
            v78 = &type metadata for NotificationModel.MinimalNotificationModel;
            v186 = &type metadata for NotificationModel.MinimalNotificationModel;
            v79 = sub_242D3A3C4(v74, v75, v76);
            v187 = v79;
            v80 = swift_allocObject();
            v185[0] = v80;
            v81 = *(v77 + 96);
            v83 = *(v77 + 48);
            v82 = *(v77 + 64);
            v80[6] = *(v77 + 80);
            v80[7] = v81;
            v80[4] = v83;
            v80[5] = v82;
            v85 = *(v77 + 16);
            v84 = *(v77 + 32);
            v80[1] = *v77;
            v80[2] = v85;
            v80[3] = v84;
            goto LABEL_39;
          }

          v78 = &type metadata for NotificationModel.ModalAlertModel;
          v186 = &type metadata for NotificationModel.ModalAlertModel;
          v79 = sub_242D3A418(v74, v75, v76);
          v187 = v79;
          v96 = swift_allocObject();
          v185[0] = v96;
        }

        *(v96 + 16) = *v77;
        v100 = *(v77 + 64);
        v102 = *(v77 + 16);
        v101 = *(v77 + 32);
        *(v96 + 64) = *(v77 + 48);
        *(v96 + 80) = v100;
        *(v96 + 32) = v102;
        *(v96 + 48) = v101;
LABEL_39:
        v103 = v78;
        __swift_project_boxed_opaque_existential_2Tm(v185, v78);
        v104 = *(v79 + 8);
        v105 = *(v104 + 8);
        sub_242D3A2C0(&v189, v184);
        v106 = v105(v103, v104);
        __swift_destroy_boxed_opaque_existential_2Tm(v185);
        sub_242D3A31C(&v188);
        v51 = v179;
        sub_242D39AFC(v179, type metadata accessor for RequestContentModel);
        v52 = v171;
        v53 = v177;
        v54 = v182;
        if (v106)
        {
          goto LABEL_40;
        }

        goto LABEL_28;
      }
    }
  }

  if (qword_27ECEF4D0 != -1)
  {
    swift_once();
  }

  v35 = sub_242F039D0();
  __swift_project_value_buffer(v35, qword_27ED5D310);
  sub_242CA321C(a1, v34, &qword_27ECF2F98, &qword_242F17960);
  v36 = sub_242F039B0();
  v37 = sub_242F05720();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v188 = v39;
    *v38 = 136315138;
    sub_242CA321C(v34, v181, &qword_27ECF2F98, &qword_242F17960);
    v40 = sub_242F04F90();
    v42 = v41;
    sub_242C6D138(v34, &qword_27ECF2F98, &qword_242F17960);
    v43 = sub_242C8FD38(v40, v42, &v188);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_242C53000, v36, v37, "In an active transition. Preventing layout change to: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v39);
    MEMORY[0x245D287D0](v39, -1, -1);
    MEMORY[0x245D287D0](v38, -1, -1);
  }

  else
  {

    sub_242C6D138(v34, &qword_27ECF2F98, &qword_242F17960);
  }
}

Swift::Void __swiftcall ClusterTransitionCoordinator.endLayoutTransition()()
{
  v0 = sub_242F03960();
  v48 = *(v0 - 8);
  v49 = v0;
  MEMORY[0x28223BE20](v0);
  v47 = &v42[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98, &qword_242F17960);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v42[-v3];
  v5 = type metadata accessor for Layout(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v46 = &v42[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F90, &qword_242F17958);
  MEMORY[0x28223BE20](v10 - 8);
  v50 = &v42[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v51 = &v42[-v13];
  MEMORY[0x28223BE20](v14);
  v16 = &v42[-v15];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  v17 = type metadata accessor for ClusterTransitionCoordinator.LayoutTransition(0);
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v16, 1, v17);
  sub_242C6D138(v16, &qword_27ECF2F90, &qword_242F17958);
  if (v19 == 1)
  {
    if (qword_27ECEF4D0 != -1)
    {
      swift_once();
    }

    v20 = sub_242F039D0();
    __swift_project_value_buffer(v20, qword_27ED5D310);
    v21 = sub_242F039B0();
    v22 = sub_242F05720();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_242C53000, v21, v22, "No layout transition to end.", v23, 2u);
      MEMORY[0x245D287D0](v23, -1, -1);
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_242F03A80();

    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_242C6D138(v4, &qword_27ECF2F98, &qword_242F17960);
    }

    else
    {
      v24 = v46;
      sub_242D39C68(v4, v46, type metadata accessor for Layout);
      if (qword_27ECEF0A8 != -1)
      {
        swift_once();
      }

      v25 = sub_242F039A0();
      __swift_project_value_buffer(v25, qword_27ED5D270);
      v26 = v45;
      sub_242D39B5C(v24, v45, type metadata accessor for Layout);
      v27 = v47;
      sub_242F03950();
      v28 = sub_242F03980();
      v29 = sub_242F05780();
      if (sub_242F05840())
      {
        v30 = swift_slowAlloc();
        v43 = v29;
        v31 = v30;
        v32 = swift_slowAlloc();
        v52 = v32;
        *v31 = 136315138;
        v33 = sub_242F036F0();
        v34 = v26;
        v36 = v35;
        v44 = type metadata accessor for Layout;
        sub_242D39AFC(v34, type metadata accessor for Layout);
        v37 = sub_242C8FD38(v33, v36, &v52);

        *(v31 + 4) = v37;
        v38 = sub_242F03940();
        _os_signpost_emit_with_name_impl(&dword_242C53000, v28, v43, v38, "Layout transition ended.", "Active Layout: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_2Tm(v32);
        MEMORY[0x245D287D0](v32, -1, -1);
        MEMORY[0x245D287D0](v31, -1, -1);

        (*(v48 + 8))(v27, v49);
        v39 = v24;
        v40 = v44;
      }

      else
      {

        (*(v48 + 8))(v27, v49);
        sub_242D39AFC(v26, type metadata accessor for Layout);
        v39 = v24;
        v40 = type metadata accessor for Layout;
      }

      sub_242D39AFC(v39, v40);
    }

    v41 = v51;
    (*(v18 + 56))(v51, 1, 1, v17);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_242CA321C(v41, v50, &qword_27ECF2F90, &qword_242F17958);

    sub_242F03A90();
    sub_242D16044();
    sub_242C6D138(v41, &qword_27ECF2F90, &qword_242F17958);
  }
}

uint64_t ClusterTransitionCoordinator.AppearanceTransition.description.getter()
{
  sub_242F05A80();
  MEMORY[0x245D26660](0xD00000000000001ELL, 0x8000000242F5A280);
  type metadata accessor for ClusterTransitionCoordinator.AppearanceTransition(0);
  sub_242F03BB0();
  sub_242F05C20();
  return 0;
}

uint64_t ClusterTransitionCoordinator.AppearanceTransition.targetAppearance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClusterTransitionCoordinator.AppearanceTransition(0) + 20);
  v4 = sub_242F03BB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static ClusterTransitionCoordinator.AppearanceTransition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_242F03700() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ClusterTransitionCoordinator.AppearanceTransition(0);

  return sub_242F03BA0();
}

uint64_t sub_242D2C14C(uint64_t a1)
{
  sub_242F05A80();
  MEMORY[0x245D26660](0xD00000000000001ELL, 0x8000000242F5A280);
  sub_242F03BB0();
  sub_242F05C20();
  return 0;
}

uint64_t sub_242D2C1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_242F03700() & 1) == 0)
  {
    return 0;
  }

  return sub_242F03BA0();
}

uint64_t ClusterTransitionCoordinator.ComponentTransition.description.getter()
{
  v1 = sub_242F03720();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[0] = 0x203A6D657449;
  v8[1] = 0xE600000000000000;
  v5 = type metadata accessor for ClusterTransitionCoordinator.ComponentTransition(0);
  (*(v2 + 16))(v4, v0 + *(v5 + 20), v1);
  v6 = sub_242F04F90();
  MEMORY[0x245D26660](v6);

  return v8[0];
}

uint64_t static ClusterTransitionCoordinator.ComponentTransition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_242F03700() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ClusterTransitionCoordinator.ComponentTransition(0);
  sub_242F03720();
  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  return sub_242F04EE0() & 1;
}

uint64_t sub_242D2C484(uint64_t a1)
{
  v3 = sub_242F03720();
  v4 = MEMORY[0x28223BE20](v3);
  v9[0] = 0x203A6D657449;
  v9[1] = 0xE600000000000000;
  (*(v6 + 16))(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + *(a1 + 20), v3, v4);
  v7 = sub_242F04F90();
  MEMORY[0x245D26660](v7);

  return v9[0];
}

uint64_t sub_242D2C584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_242F03700() & 1) == 0)
  {
    return 0;
  }

  sub_242F03720();
  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  return sub_242F04EE0() & 1;
}

uint64_t sub_242D2C624(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v111 = a2;
  v112 = a3;
  v106 = sub_242F03720();
  v99 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v98 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v4 - 8);
  v97 = &v94 - v5;
  v103 = sub_242F03960();
  v6 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v105 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Component(0);
  MEMORY[0x28223BE20](v100);
  v9 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v102 = &v94 - v11;
  MEMORY[0x28223BE20](v12);
  v101 = &v94 - v13;
  MEMORY[0x28223BE20](v14);
  v104 = &v94 - v15;
  v16 = type metadata accessor for ClusterTransitionCoordinator.ComponentTransition(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v107 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31C8, &qword_242F17F30);
  MEMORY[0x28223BE20](v19);
  v21 = &v94 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31D0, &qword_242F17F38);
  MEMORY[0x28223BE20](v22 - 8);
  *&v108 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v109 = &v94 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v94 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v94 - v30;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v33 = result;
  v95 = v9;
  v96 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  v110 = v33;
  sub_242F03A80();

  v34 = v118;
  if (*(v118 + 16) && (v35 = sub_242CE5568(v111), (v36 & 1) != 0))
  {
    sub_242D39B5C(*(v34 + 56) + v17[9] * v35, v31, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = v17[7];
  v38(v31, v37, 1, v16);
  sub_242D39B5C(v112, v28, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
  v38(v28, 0, 1, v16);
  v39 = *(v19 + 48);
  sub_242CA321C(v31, v21, &qword_27ECF31D0, &qword_242F17F38);
  sub_242CA321C(v28, &v21[v39], &qword_27ECF31D0, &qword_242F17F38);
  v40 = v17[6];
  if (v40(v21, 1, v16) != 1)
  {
    v83 = v109;
    sub_242CA321C(v21, v109, &qword_27ECF31D0, &qword_242F17F38);
    if (v40(&v21[v39], 1, v16) != 1)
    {
      v87 = v107;
      sub_242D39C68(&v21[v39], v107, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
      if (sub_242F03700())
      {
        sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v88 = sub_242F04EE0();
        sub_242D39AFC(v87, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
        sub_242C6D138(v28, &qword_27ECF31D0, &qword_242F17F38);
        sub_242C6D138(v31, &qword_27ECF31D0, &qword_242F17F38);
        sub_242D39AFC(v83, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
        sub_242C6D138(v21, &qword_27ECF31D0, &qword_242F17F38);
        if (v88)
        {
          goto LABEL_9;
        }
      }

      sub_242D39AFC(v87, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
      sub_242C6D138(v28, &qword_27ECF31D0, &qword_242F17F38);
      sub_242C6D138(v31, &qword_27ECF31D0, &qword_242F17F38);
      sub_242D39AFC(v83, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
      v86 = v21;
      v84 = &qword_27ECF31D0;
      v85 = &qword_242F17F38;
LABEL_19:
      sub_242C6D138(v86, v84, v85);
    }

    sub_242C6D138(v28, &qword_27ECF31D0, &qword_242F17F38);
    sub_242C6D138(v31, &qword_27ECF31D0, &qword_242F17F38);
    sub_242D39AFC(v83, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
LABEL_18:
    v84 = &qword_27ECF31C8;
    v85 = &qword_242F17F30;
    v86 = v21;
    goto LABEL_19;
  }

  sub_242C6D138(v28, &qword_27ECF31D0, &qword_242F17F38);
  sub_242C6D138(v31, &qword_27ECF31D0, &qword_242F17F38);
  if (v40(&v21[v39], 1, v16) != 1)
  {
    goto LABEL_18;
  }

  sub_242C6D138(v21, &qword_27ECF31D0, &qword_242F17F38);
LABEL_9:
  swift_getKeyPath();
  swift_getKeyPath();
  v41 = v110;
  sub_242F03A80();

  v42 = v108;
  v43 = v111;
  sub_242D37C00(v111, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition, sub_242ED0740, sub_242D02B84, v108);
  sub_242C6D138(v42, &qword_27ECF31D0, &qword_242F17F38);
  v44 = v118;
  swift_getKeyPath();
  swift_getKeyPath();
  v116 = v44;

  sub_242F03A90();
  sub_242D150A0();
  v45 = *(v41 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels);
  if (!*(v45 + 16))
  {
  }

  v46 = sub_242CE5568(v43);
  if ((v47 & 1) == 0)
  {
  }

  v48 = (*(v45 + 56) + 112 * v46);
  v50 = v48[1];
  v49 = v48[2];
  v118 = *v48;
  v119 = v50;
  v120 = v49;
  v51 = *(v48 + 89);
  v53 = v48[4];
  v52 = v48[5];
  v121 = v48[3];
  *v122 = v53;
  *&v122[16] = v52;
  *&v122[25] = v51;
  v111 = *(&v118 + 1);
  v112 = v118;
  v54 = *(&v119 + 1);
  v109 = v119;
  v55 = v120;
  v56 = v121;
  v108 = *&v122[8];
  v57 = v53;
  v58 = *&v122[24];
  v59 = v51 >> 56;
  v60 = HIBYTE(v51);
  sub_242CA321C(&v118, &v116, &qword_27ECF21A8, &qword_242F17990);
  v61 = sub_242D1162C(v111, v109, v54, v55, *(&v55 + 1), v56, *(&v56 + 1), v57, v108, *(&v108 + 1), v58, v59, v60);
  MEMORY[0x28223BE20](v61);
  sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component, &protocol conformance descriptor for Component);
  sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component, &protocol conformance descriptor for Component);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  swift_getKeyPath();
  v63 = v101;
  sub_242F03A80();

  v64 = v104;
  sub_242D39C68(v63, v104, type metadata accessor for Component);
  if (qword_27ECEF0A8 != -1)
  {
    swift_once();
  }

  v65 = sub_242F039A0();
  __swift_project_value_buffer(v65, qword_27ED5D270);
  v66 = v102;
  sub_242D39B5C(v64, v102, type metadata accessor for Component);
  v67 = v95;
  sub_242D39B5C(v64, v95, type metadata accessor for Component);
  v68 = v105;
  sub_242F03950();
  v69 = sub_242F03980();
  v70 = sub_242F05780();
  v71 = sub_242F05840();
  v72 = v96;
  if (v71)
  {
    LODWORD(v111) = v70;
    v112 = v69;
    v73 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v115 = v109;
    *v73 = 136315394;
    v74 = v97;
    sub_242CA321C(v66, v97, &qword_27ECF23E8, &unk_242F13C40);
    v75 = v66;
    (*(v99 + 16))(v98, v74, v106);
    v76 = sub_242F04F90();
    v78 = v77;
    sub_242C6D138(v74, &qword_27ECF23E8, &unk_242F13C40);
    sub_242D39AFC(v75, type metadata accessor for Component);
    v79 = sub_242C8FD38(v76, v78, &v115);

    *(v73 + 4) = v79;
    *(v73 + 12) = 2080;
    Component.stableIdentifier.getter(&v116);
    if (v117)
    {
      v113 = v116;
      v114 = v117;
      v80 = sub_242F04F90();
      v82 = v81;
      sub_242D39AFC(v67, type metadata accessor for Component);
    }

    else
    {
      v82 = 0x8000000242F5A160;
      sub_242D39AFC(v67, type metadata accessor for Component);
      v80 = 0xD00000000000002DLL;
    }

    v89 = v112;
    v90 = sub_242C8FD38(v80, v82, &v115);

    *(v73 + 14) = v90;
    v91 = v105;
    v92 = sub_242F03940();
    _os_signpost_emit_with_name_impl(&dword_242C53000, v89, v111, v92, "Dynamic Content area transition animation settled.", "Current Component: %s. Current Instrument kind: %s", v73, 0x16u);
    v93 = v109;
    swift_arrayDestroy();
    MEMORY[0x245D287D0](v93, -1, -1);
    MEMORY[0x245D287D0](v73, -1, -1);

    (*(v72 + 8))(v91, v103);
    return sub_242D39AFC(v104, type metadata accessor for Component);
  }

  else
  {

    (*(v72 + 8))(v68, v103);
    sub_242D39AFC(v67, type metadata accessor for Component);
    sub_242D39AFC(v66, type metadata accessor for Component);
    return sub_242D39AFC(v64, type metadata accessor for Component);
  }
}

uint64_t ClusterTransitionCoordinator.ListDirection.init(iterateDirection:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3008, &qword_242F179F8);
  v5 = *(*(v4 - 8) + 56);
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  return v5(a2, v6, 2, v4);
}

uint64_t sub_242D2D564(uint64_t a1)
{
  v2 = v1;
  v21 = a1;
  v4 = type metadata accessor for Component(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v28[16] = v10;
  v11 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component, &protocol conformance descriptor for Component);
  v28[17] = v11;
  v12 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component, &protocol conformance descriptor for Component);
  v28[18] = v12;
  swift_getKeyPath();
  v28[12] = v4;
  v28[13] = v11;
  v28[14] = v12;
  swift_getKeyPath();
  sub_242D39B5C(a1, v9, type metadata accessor for Component);

  sub_242F03A90();
  v28[8] = v4;
  v28[9] = v11;
  v28[10] = v12;
  swift_getKeyPath();
  v28[4] = v4;
  v28[5] = v11;
  v28[6] = v12;
  swift_getKeyPath();
  sub_242F03A80();

  v13 = *(*v2 + 144);
  swift_beginAccess();
  v14 = *(v2 + v13);
  v28[2] = v6;

  v15 = sub_242CDAC68(sub_242D3E1B8, v28, v14);
  v17 = v16;

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v15;
  }

  sub_242D39AFC(v6, type metadata accessor for Component);
  v25 = v4;
  v26 = v11;
  v27 = v12;
  swift_getKeyPath();
  v22 = v4;
  v23 = v11;
  v24 = v12;
  swift_getKeyPath();
  v28[20] = v18;

  sub_242F03A90();
  return sub_242D39AFC(v21, type metadata accessor for Component);
}

uint64_t sub_242D2D864(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v74 = a3;
  v84 = a1;
  v85 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730, &qword_242F17940);
  MEMORY[0x28223BE20](v4 - 8);
  v77 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v73 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v73 - v13;
  v83 = type metadata accessor for Component(0);
  v79 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v75 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v73 = &v73 - v17;
  MEMORY[0x28223BE20](v18);
  v76 = &v73 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v73 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2ED8, &qword_242F17610);
  v81 = *(v23 - 8);
  v82 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v73 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31C0, &unk_242F17F20);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v73 - v28;
  v30 = (v3 + *(*v3 + 112));
  *v30 = 0;
  v30[1] = 0;
  v31 = (v3 + *(*v3 + 120));
  *v31 = 0;
  v31[1] = 0;
  v32 = (v3 + *(*v3 + 128));
  *v32 = 0;
  v32[1] = 0;
  v33 = (v3 + *(*v3 + 136));
  *v33 = 0;
  v33[1] = 0;
  *(v3 + *(*v3 + 152)) = 0;
  v34 = *(*v3 + 168);
  v87 = 0;
  sub_242F03A40();
  (*(v27 + 32))(v3 + v34, v29, v26);
  v35 = *(*v3 + 184);
  LOBYTE(v87) = 0;
  sub_242F03A40();
  v36 = v82;
  v37 = *(v81 + 32);
  v37(v3 + v35, v25, v82);
  v38 = *(*v3 + 192);
  LOBYTE(v87) = 0;
  sub_242F03A40();
  v37(v3 + v38, v25, v36);
  v39 = *(*v3 + 200);
  v40 = sub_242F04A90();
  v78 = v3;
  *(v3 + v39) = v40;
  v80 = *(v84 + 16);
  if (!v80)
  {
    goto LABEL_21;
  }

  v41 = v79;
  v81 = *(v79 + 48);
  v82 = v79 + 48;
  v42 = (v81)(v85, 1, v83);
  v43 = v41;
  if (v42 != 1)
  {
    v44 = 0;
    while (1)
    {
      if (v80 == v44)
      {
        goto LABEL_19;
      }

      if (v44 >= *(v84 + 16))
      {
        break;
      }

      v45 = v43;
      sub_242D39B5C(v84 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v44, v22, type metadata accessor for Component);
      sub_242CA321C(v22, v14, &qword_27ECF23E8, &unk_242F13C40);
      sub_242CA321C(v85, v8, &qword_27ECF2730, &qword_242F17940);
      if ((v81)(v8, 1, v83) == 1)
      {
        goto LABEL_18;
      }

      ++v44;
      sub_242CA321C(v8, v11, &qword_27ECF23E8, &unk_242F13C40);
      sub_242D39AFC(v8, type metadata accessor for Component);
      sub_242F03720();
      sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v46 = sub_242F04EE0();
      sub_242C6D138(v11, &qword_27ECF23E8, &unk_242F13C40);
      sub_242C6D138(v14, &qword_27ECF23E8, &unk_242F13C40);
      sub_242D39AFC(v22, type metadata accessor for Component);
      v43 = v45;
      if (v46)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v72 = 0;
    for (i = 0; ; i = 0)
    {
      sub_242F05C60();
      __break(1u);
LABEL_21:
      v72 = 0;
    }
  }

LABEL_8:
  v47 = v43;
  v48 = v78;
  v49 = v84;
  *(v78 + *(*v78 + 144)) = v84;
  swift_beginAccess();
  v86 = v49;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2338, &qword_242F13C18);
  sub_242F03A40();
  swift_endAccess();
  v50 = v77;
  sub_242CA321C(v85, v77, &qword_27ECF2730, &qword_242F17940);
  v51 = v83;
  if ((v81)(v50, 1, v83) == 1)
  {
    v52 = v76;
    if (!*(v49 + 16))
    {
      goto LABEL_17;
    }

    sub_242D39B5C(v49 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), v76, type metadata accessor for Component);

    if ((v81)(v50, 1, v51) != 1)
    {
      sub_242C6D138(v50, &qword_27ECF2730, &qword_242F17940);
    }
  }

  else
  {

    v52 = v76;
    sub_242D39C68(v50, v76, type metadata accessor for Component);
  }

  swift_beginAccess();
  sub_242D39B5C(v52, v73, type metadata accessor for Component);
  sub_242F03A40();
  sub_242D39AFC(v52, type metadata accessor for Component);
  v53 = swift_endAccess();
  v54 = (v48 + *(*v48 + 160));
  v55 = v74;
  v56 = v74[3];
  v54[2] = v74[2];
  v54[3] = v56;
  v54[4] = v55[4];
  v57 = v55[1];
  *v54 = *v55;
  v54[1] = v57;
  MEMORY[0x28223BE20](v53);
  *(&v73 - 4) = v51;
  v58 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component, &protocol conformance descriptor for Component);
  *(&v73 - 3) = v58;
  v59 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component, &protocol conformance descriptor for Component);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v73 - 4) = v51;
  *(&v73 - 3) = v58;
  i = v59;
  swift_getKeyPath();
  v61 = v75;
  sub_242F03A80();

  v62 = *(*v48 + 144);
  v63 = swift_beginAccess();
  v64 = *(v48 + v62);
  MEMORY[0x28223BE20](v63);
  i = v61;

  v65 = sub_242CDAC68(sub_242D3E1B8, (&v73 - 4), v64);
  v67 = v66;

  if (v67)
  {
    v65 = 0;
  }

  v68 = sub_242D39AFC(v61, type metadata accessor for Component);
  MEMORY[0x28223BE20](v68);
  *(&v73 - 4) = v51;
  *(&v73 - 3) = v58;
  v69 = swift_getKeyPath();
  MEMORY[0x28223BE20](v69);
  *(&v73 - 4) = v51;
  *(&v73 - 3) = v58;
  i = v59;
  swift_getKeyPath();
  v86 = v65;

  sub_242F03A90();
  sub_242C6D138(v85, &qword_27ECF2730, &qword_242F17940);
  return v48;
}

uint64_t sub_242D2E420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v42 = a1;
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3020, &qword_242F17A18);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for Component(0);
  v39 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v13;
  v14 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component, &protocol conformance descriptor for Component);
  v55 = v14;
  v15 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component, &protocol conformance descriptor for Component);
  v56 = v15;
  swift_getKeyPath();
  v51 = v10;
  v52 = v14;
  v53 = v15;
  swift_getKeyPath();
  sub_242F03A80();

  v48 = v10;
  v49 = v14;
  v50 = v15;
  swift_getKeyPath();
  v45 = v10;
  v46 = v14;
  v47 = v15;
  swift_getKeyPath();
  v41 = v3;
  sub_242F03A80();

  v44 = v12;
  v16 = sub_242CDAC68(sub_242D3E1B8, v43, v57);
  LOBYTE(v3) = v17;

  if (v3)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  sub_242D39AFC(v12, type metadata accessor for Component);
  sub_242CA321C(v42, v9, &qword_27ECF3020, &qword_242F17A18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3008, &qword_242F179F8);
  result = (*(*(v19 - 8) + 48))(v9, 2, v19);
  if (!result)
  {
    v26 = sub_242CF6B3C(v9, v6, &qword_27ECF23E8, &unk_242F13C40);
    MEMORY[0x28223BE20](v26);
    *(&v39 - 4) = v10;
    *(&v39 - 3) = v14;
    *(&v39 - 2) = v15;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v39 - 4) = v10;
    *(&v39 - 3) = v14;
    *(&v39 - 2) = v15;
    swift_getKeyPath();
    sub_242F03A80();

    v29 = v57;
    MEMORY[0x28223BE20](v28);
    *(&v39 - 2) = v6;
    sub_242CE8B5C(sub_242D3E1D4, v29, v40);

    return sub_242C6D138(v6, &qword_27ECF23E8, &unk_242F13C40);
  }

  if (result == 1)
  {
    v21 = __OFSUB__(v18, 1);
    v22 = v18 - 1;
    if (!v21)
    {
      MEMORY[0x28223BE20](result);
      *(&v39 - 4) = v10;
      *(&v39 - 3) = v14;
      *(&v39 - 2) = v15;
      v23 = swift_getKeyPath();
      MEMORY[0x28223BE20](v23);
      *(&v39 - 4) = v10;
      *(&v39 - 3) = v14;
      *(&v39 - 2) = v15;
      swift_getKeyPath();
      if ((v22 & 0x8000000000000000) == 0)
      {
        sub_242F03A80();

        if (v22 < *(v57 + 16))
        {
          v24 = v39;
          v25 = v40;
          sub_242D39B5C(v57 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v39 + 72) * v22, v40, type metadata accessor for Component);

          return (*(v24 + 56))(v25, 0, 1, v10);
        }

        goto LABEL_24;
      }

      sub_242F03A80();

      v37 = *(v57 + 16);
      if (v37)
      {
        v35 = v39;
        v36 = v57 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v39 + 72) * (v37 - 1);
        goto LABEL_20;
      }

LABEL_21:

      return (*(v39 + 56))(v40, 1, 1, v10);
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v30 = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    goto LABEL_23;
  }

  MEMORY[0x28223BE20](result);
  *(&v39 - 4) = v10;
  *(&v39 - 3) = v14;
  *(&v39 - 2) = v15;
  v31 = swift_getKeyPath();
  MEMORY[0x28223BE20](v31);
  *(&v39 - 4) = v10;
  *(&v39 - 3) = v14;
  *(&v39 - 2) = v15;
  swift_getKeyPath();
  sub_242F03A80();

  v32 = *(v57 + 16);

  MEMORY[0x28223BE20](v33);
  *(&v39 - 4) = v10;
  *(&v39 - 3) = v14;
  *(&v39 - 2) = v15;
  v34 = swift_getKeyPath();
  MEMORY[0x28223BE20](v34);
  *(&v39 - 4) = v10;
  *(&v39 - 3) = v14;
  *(&v39 - 2) = v15;
  swift_getKeyPath();
  if (v30 >= v32)
  {
    sub_242F03A80();

    if (!*(v57 + 16))
    {
      goto LABEL_21;
    }

    v35 = v39;
    v36 = v57 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
LABEL_20:
    v38 = v40;
    sub_242D39B5C(v36, v40, type metadata accessor for Component);

    return (*(v35 + 56))(v38, 0, 1, v10);
  }

  sub_242F03A80();

  if (v30 < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v30 < *(v57 + 16))
  {
    v35 = v39;
    v36 = v57 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v39 + 72) * v30;
    goto LABEL_20;
  }

LABEL_26:
  __break(1u);
  return result;
}

void (*sub_242D2ECD4(uint64_t a1, uint64_t a2))(uint64_t *, void)
{
  v3 = v2;
  v210 = a1;
  v209 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  v226 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v211 = &v197 - v6;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31A0, &qword_242F17EE8);
  MEMORY[0x28223BE20](v221);
  v220 = &v197 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31A8, &unk_242F17EF0);
  MEMORY[0x28223BE20](v8 - 8);
  v213 = &v197 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v214 = &v197 - v11;
  MEMORY[0x28223BE20](v12);
  v225 = &v197 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3170, &qword_242F17E38);
  MEMORY[0x28223BE20](v14 - 8);
  v200 = &v197 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730, &qword_242F17940);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v197 - v17;
  v19 = type metadata accessor for Component(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v208 = &v197 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v197 - v23;
  MEMORY[0x28223BE20](v25);
  v202 = (&v197 - v26);
  MEMORY[0x28223BE20](v27);
  v199 = &v197 - v28;
  MEMORY[0x28223BE20](v29);
  v198 = &v197 - v30;
  MEMORY[0x28223BE20](v31);
  v215 = &v197 - v32;
  MEMORY[0x28223BE20](v33);
  v229 = &v197 - v34;
  MEMORY[0x28223BE20](v35);
  v207 = &v197 - v36;
  MEMORY[0x28223BE20](v37);
  v201 = &v197 - v38;
  MEMORY[0x28223BE20](v39);
  v227 = &v197 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v197 - v42;
  sub_242CA321C(a2, v18, &qword_27ECF2730, &qword_242F17940);
  v222 = v20;
  v44 = *(v20 + 48);
  v212 = v19;
  v45 = v44(v18, 1, v19);
  v206 = v3 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
  v228 = v5;
  v203 = v24;
  if (v45 == 1)
  {
    v46 = sub_242C6D138(v18, &qword_27ECF2730, &qword_242F17940);
LABEL_7:
    MEMORY[0x28223BE20](v46);
    v66 = &v197;
    v67 = v212;
    *(&v197 - 4) = v212;
    v68 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component, &protocol conformance descriptor for Component);
    *(&v197 - 3) = v68;
    v69 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component, &protocol conformance descriptor for Component);
    *(&v197 - 2) = v69;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v197 - 4) = v67;
    *(&v197 - 3) = v68;
    v205 = v68;
    v204 = v69;
    *(&v197 - 2) = v69;
    swift_getKeyPath();
    sub_242F03A80();

    v71 = v231;
    v72 = *(v231 + 16);
    v223 = *(*v3 + 144);
    v224 = v3;
    swift_beginAccess();
    v219 = v72;
    if (v72)
    {
      v73 = 0;
      v227 = (v226 + 56);
      v74 = (v226 + 48);
      v75 = v214;
      v218 = v71;
      while (1)
      {
        if (v73 >= *(v71 + 16))
        {
          __break(1u);
          goto LABEL_56;
        }

        v72 = v74;
        v78 = v5;
        v79 = (*(v222 + 80) + 32) & ~*(v222 + 80);
        v80 = *(v222 + 72);
        v226 = v73;
        v81 = v71 + v79 + v80 * v73;
        v82 = v229;
        sub_242D39B5C(v81, v229, type metadata accessor for Component);
        v83 = v225;
        sub_242CA321C(v82, v225, &qword_27ECF23E8, &unk_242F13C40);
        v84 = *v227;
        v85 = 1;
        (*v227)(v83, 0, 1, v78);
        v86 = *(v224 + v223);
        v87 = *(v86 + 16);
        v217 = v79;
        v216 = v80;
        if (v87)
        {
          v88 = v215;
          sub_242D39B5C(v86 + v79 + (v87 - 1) * v80, v215, type metadata accessor for Component);
          sub_242CA321C(v88, v75, &qword_27ECF23E8, &unk_242F13C40);
          sub_242D39AFC(v88, type metadata accessor for Component);
          v85 = 0;
        }

        v89 = v228;
        v84(v75, v85, 1, v228);
        v90 = *(v221 + 48);
        v91 = v83;
        v66 = v83;
        v92 = v220;
        sub_242CA321C(v91, v220, &qword_27ECF31A8, &unk_242F17EF0);
        sub_242CA321C(v75, v92 + v90, &qword_27ECF31A8, &unk_242F17EF0);
        v74 = v72;
        v93 = *v72;
        if ((*v72)(v92, 1, v89) == 1)
        {
          break;
        }

        v94 = v213;
        sub_242CA321C(v92, v213, &qword_27ECF31A8, &unk_242F17EF0);
        if (v93(v92 + v90, 1, v89) == 1)
        {
          v95 = v214;
          sub_242C6D138(v214, &qword_27ECF31A8, &unk_242F17EF0);
          sub_242C6D138(v225, &qword_27ECF31A8, &unk_242F17EF0);
          v96 = v94;
          v75 = v95;
          sub_242C6D138(v96, &qword_27ECF23E8, &unk_242F13C40);
          v77 = v92;
LABEL_10:
          sub_242C6D138(v77, &qword_27ECF31A0, &qword_242F17EE8);
          sub_242D39AFC(v229, type metadata accessor for Component);
          goto LABEL_11;
        }

        v97 = v211;
        v72 = &qword_27ECF31A8;
        v66 = &unk_242F17EF0;
        sub_242CF6B3C(v92 + v90, v211, &qword_27ECF23E8, &unk_242F13C40);
        sub_242F03720();
        sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v98 = sub_242F04EE0();
        sub_242C6D138(v97, &qword_27ECF23E8, &unk_242F13C40);
        v99 = v214;
        sub_242C6D138(v214, &qword_27ECF31A8, &unk_242F17EF0);
        sub_242C6D138(v225, &qword_27ECF31A8, &unk_242F17EF0);
        v100 = v94;
        v75 = v99;
        sub_242C6D138(v100, &qword_27ECF23E8, &unk_242F13C40);
        sub_242C6D138(v92, &qword_27ECF31A8, &unk_242F17EF0);
        sub_242D39AFC(v229, type metadata accessor for Component);
        if (v98)
        {
          goto LABEL_32;
        }

LABEL_11:
        v73 = v226 + 1;
        v5 = v228;
        v71 = v218;
        if (v219 == (v226 + 1))
        {
          goto LABEL_20;
        }
      }

      sub_242C6D138(v75, &qword_27ECF31A8, &unk_242F17EF0);
      sub_242C6D138(v66, &qword_27ECF31A8, &unk_242F17EF0);
      v76 = v93(v92 + v90, 1, v89) == 1;
      v77 = v92;
      if (v76)
      {
        sub_242C6D138(v92, &qword_27ECF31A8, &unk_242F17EF0);
        sub_242D39AFC(v229, type metadata accessor for Component);
LABEL_32:

        v129 = v198;
        sub_242D39B5C(v210, v198, type metadata accessor for Component);
        v130 = v223;
        v3 = v224;
        swift_beginAccess();
        v131 = *(v3 + v130);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + v130) = v131;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v131 = sub_242C83620(0, v131[2] + 1, 1, v131);
          *(v3 + v223) = v131;
        }

        v133 = v216;
        v135 = v131[2];
        v134 = v131[3];
        if (v135 >= v134 >> 1)
        {
          v131 = sub_242C83620((v134 > 1), v135 + 1, 1, v131);
        }

        v131[2] = v135 + 1;
        sub_242D39C68(v129, v131 + v217 + v135 * v133, type metadata accessor for Component);
        v136 = v223;
        *(v3 + v223) = v131;
        v137 = swift_endAccess();
        MEMORY[0x28223BE20](v137);
        v138 = v212;
        v139 = v205;
        *(&v197 - 4) = v212;
        *(&v197 - 3) = v139;
        v140 = v204;
        *(&v197 - 2) = v204;
        v141 = swift_getKeyPath();
        MEMORY[0x28223BE20](v141);
        *(&v197 - 4) = v138;
        *(&v197 - 3) = v139;
        *(&v197 - 2) = v140;
        swift_getKeyPath();
        v142 = v199;
        sub_242F03A80();

        v144 = *(v3 + v136);
        MEMORY[0x28223BE20](v143);
        *(&v197 - 2) = v142;

        v145 = sub_242CDAC68(sub_242D3E1B8, (&v197 - 4), v144);
        v147 = v146;

        if (v147)
        {
          v148 = 0;
        }

        else
        {
          v148 = v145;
        }

        v149 = sub_242D39AFC(v142, type metadata accessor for Component);
        MEMORY[0x28223BE20](v149);
        *(&v197 - 4) = v138;
        *(&v197 - 3) = v139;
        *(&v197 - 2) = v140;
        v150 = swift_getKeyPath();
        MEMORY[0x28223BE20](v150);
        *(&v197 - 4) = v138;
        *(&v197 - 3) = v139;
        *(&v197 - 2) = v140;
        swift_getKeyPath();
        v231 = v148;

        v151 = sub_242F03A90();
        MEMORY[0x28223BE20](v151);
        *(&v197 - 4) = v138;
        *(&v197 - 3) = v139;
        *(&v197 - 2) = v140;
        v152 = swift_getKeyPath();
        MEMORY[0x28223BE20](v152);
        *(&v197 - 4) = v138;
        *(&v197 - 3) = v139;
        *(&v197 - 2) = v140;
        swift_getKeyPath();
        result = sub_242F03A70();
        v155 = v226;
        if (*(*v154 + 16) > v226)
        {
          v156 = result;
          v157 = v200;
          sub_242D39B5C(v210, v200, type metadata accessor for Component);
          sub_242D37EF8(v155 + 1, v155 + 1, v157);
          v156(&v231, 0);

          goto LABEL_49;
        }

        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      goto LABEL_10;
    }

LABEL_20:

    v66 = v202;
    sub_242D39B5C(v210, v202, type metadata accessor for Component);
    v101 = v223;
    v71 = v224;
    swift_beginAccess();
    v72 = *(v71 + v101);
    v102 = swift_isUniquelyReferenced_nonNull_native();
    *(v71 + v101) = v72;
    if ((v102 & 1) == 0)
    {
LABEL_56:
      v72 = sub_242C83620(0, v72[2] + 1, 1, v72);
      *(v71 + v223) = v72;
    }

    v104 = v72[2];
    v103 = v72[3];
    if (v104 >= v103 >> 1)
    {
      v72 = sub_242C83620((v103 > 1), v104 + 1, 1, v72);
    }

    v72[2] = v104 + 1;
    v229 = (*(v222 + 80) + 32) & ~*(v222 + 80);
    v228 = *(v222 + 72);
    sub_242D39C68(v66, v72 + v229 + v228 * v104, type metadata accessor for Component);
    v105 = v223;
    v106 = v224;
    *(v224 + v223) = v72;
    v107 = swift_endAccess();
    MEMORY[0x28223BE20](v107);
    v108 = v212;
    v109 = v205;
    *(&v197 - 4) = v212;
    *(&v197 - 3) = v109;
    v110 = v204;
    *(&v197 - 2) = v204;
    v111 = swift_getKeyPath();
    MEMORY[0x28223BE20](v111);
    *(&v197 - 4) = v108;
    *(&v197 - 3) = v109;
    *(&v197 - 2) = v110;
    swift_getKeyPath();
    v112 = v203;
    sub_242F03A80();

    v114 = *(v106 + v105);
    MEMORY[0x28223BE20](v113);
    *(&v197 - 2) = v112;

    v115 = sub_242CDAC68(sub_242D3E1B8, (&v197 - 4), v114);
    LOBYTE(v105) = v116;

    if (v105)
    {
      v117 = 0;
    }

    else
    {
      v117 = v115;
    }

    v118 = sub_242D39AFC(v112, type metadata accessor for Component);
    MEMORY[0x28223BE20](v118);
    *(&v197 - 4) = v108;
    *(&v197 - 3) = v109;
    *(&v197 - 2) = v110;
    v119 = swift_getKeyPath();
    MEMORY[0x28223BE20](v119);
    *(&v197 - 4) = v108;
    *(&v197 - 3) = v109;
    *(&v197 - 2) = v110;
    swift_getKeyPath();
    v231 = v117;

    sub_242F03A90();
    v120 = sub_242D39B5C(v210, v208, type metadata accessor for Component);
    MEMORY[0x28223BE20](v120);
    *(&v197 - 4) = v108;
    *(&v197 - 3) = v109;
    *(&v197 - 2) = v110;
    v121 = swift_getKeyPath();
    MEMORY[0x28223BE20](v121);
    *(&v197 - 4) = v108;
    *(&v197 - 3) = v109;
    *(&v197 - 2) = v110;
    swift_getKeyPath();
    v122 = sub_242F03A70();
    v124 = v123;
    v125 = *v123;
    v126 = swift_isUniquelyReferenced_nonNull_native();
    *v124 = v125;
    if ((v126 & 1) == 0)
    {
      v125 = sub_242C83620(0, v125[2] + 1, 1, v125);
      *v124 = v125;
    }

    v128 = v125[2];
    v127 = v125[3];
    if (v128 >= v127 >> 1)
    {
      v125 = sub_242C83620((v127 > 1), v128 + 1, 1, v125);
      *v124 = v125;
    }

    v125[2] = v128 + 1;
    sub_242D39C68(v208, v125 + v229 + v128 * v228, type metadata accessor for Component);
    v122(&v231, 0);

    v3 = v224;
    goto LABEL_49;
  }

  sub_242D39C68(v18, v43, type metadata accessor for Component);
  v47 = *(*v3 + 144);
  v48 = swift_beginAccess();
  v49 = *(v3 + v47);
  MEMORY[0x28223BE20](v48);
  *(&v197 - 2) = v43;

  v50 = v209;
  v51 = sub_242CDAC68(sub_242D3E1B8, (&v197 - 4), v49);
  v53 = v52;
  v54 = v50;

  if (v53)
  {
    v209 = v50;
    v46 = sub_242D39AFC(v43, type metadata accessor for Component);
    goto LABEL_7;
  }

  v223 = v51;
  MEMORY[0x28223BE20](v55);
  v56 = v212;
  *(&v197 - 4) = v212;
  v57 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component, &protocol conformance descriptor for Component);
  *(&v197 - 3) = v57;
  v58 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component, &protocol conformance descriptor for Component);
  *(&v197 - 2) = v58;
  v59 = swift_getKeyPath();
  MEMORY[0x28223BE20](v59);
  *(&v197 - 4) = v56;
  *(&v197 - 3) = v57;
  v224 = v58;
  *(&v197 - 2) = v58;
  swift_getKeyPath();
  sub_242F03A80();

  v61 = v231;
  MEMORY[0x28223BE20](v60);
  *(&v197 - 2) = v43;
  v62 = v54;
  v63 = sub_242CDAC68(sub_242D3DE28, (&v197 - 4), v61);
  v65 = v64;

  if (v65)
  {
    v209 = v62;
    v46 = sub_242D39AFC(v43, type metadata accessor for Component);
    v5 = v228;
    goto LABEL_7;
  }

  result = swift_beginAccess();
  v158 = v223;
  if (*(*(v3 + v47) + 16) < v223)
  {
    goto LABEL_58;
  }

  v228 = v43;
  v229 = v63;
  if (v223 < 0)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v159 = v200;
  sub_242D39B5C(v210, v200, type metadata accessor for Component);
  sub_242D37EF8(v158, v158, v159);
  v160 = swift_endAccess();
  MEMORY[0x28223BE20](v160);
  v161 = v212;
  *(&v197 - 4) = v212;
  *(&v197 - 3) = v57;
  v162 = v224;
  *(&v197 - 2) = v224;
  v163 = v162;
  v164 = swift_getKeyPath();
  MEMORY[0x28223BE20](v164);
  *(&v197 - 4) = v161;
  *(&v197 - 3) = v57;
  *(&v197 - 2) = v163;
  swift_getKeyPath();
  v165 = v227;
  sub_242F03A80();

  v167 = *(v3 + v47);
  MEMORY[0x28223BE20](v166);
  *(&v197 - 2) = v165;

  v168 = sub_242CDAC68(sub_242D3E1B8, (&v197 - 4), v167);
  v170 = v169;

  if (v170)
  {
    v171 = 0;
  }

  else
  {
    v171 = v168;
  }

  v172 = sub_242D39AFC(v165, type metadata accessor for Component);
  MEMORY[0x28223BE20](v172);
  *(&v197 - 4) = v161;
  *(&v197 - 3) = v57;
  v173 = v224;
  *(&v197 - 2) = v224;
  v174 = swift_getKeyPath();
  MEMORY[0x28223BE20](v174);
  *(&v197 - 4) = v161;
  *(&v197 - 3) = v57;
  *(&v197 - 2) = v173;
  swift_getKeyPath();
  v231 = v171;

  v175 = sub_242F03A90();
  MEMORY[0x28223BE20](v175);
  *(&v197 - 4) = v161;
  *(&v197 - 3) = v57;
  *(&v197 - 2) = v173;
  v176 = swift_getKeyPath();
  MEMORY[0x28223BE20](v176);
  *(&v197 - 4) = v161;
  *(&v197 - 3) = v57;
  *(&v197 - 2) = v173;
  swift_getKeyPath();
  result = sub_242F03A70();
  v178 = v229;
  if (*(*v177 + 16) < v229)
  {
    goto LABEL_60;
  }

  if (v229 < 0)
  {
LABEL_61:
    __break(1u);
    return result;
  }

  v179 = result;
  v180 = v200;
  sub_242D39B5C(v210, v200, type metadata accessor for Component);
  sub_242D37EF8(v178, v178, v180);
  v179(&v231, 0);

  sub_242D39AFC(v228, type metadata accessor for Component);
LABEL_49:
  v181 = *(*v3 + 144);
  v182 = swift_beginAccess();
  if (*(*(v3 + v181) + 16) == 1)
  {
    v183 = v201;
    sub_242D39B5C(v210, v201, type metadata accessor for Component);
    v182 = sub_242D2D564(v183);
  }

  MEMORY[0x28223BE20](v182);
  v184 = v212;
  *(&v197 - 4) = v212;
  v185 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component, &protocol conformance descriptor for Component);
  *(&v197 - 3) = v185;
  v186 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component, &protocol conformance descriptor for Component);
  *(&v197 - 2) = v186;
  v187 = swift_getKeyPath();
  MEMORY[0x28223BE20](v187);
  *(&v197 - 4) = v184;
  *(&v197 - 3) = v185;
  *(&v197 - 2) = v186;
  swift_getKeyPath();
  v188 = v207;
  sub_242F03A80();

  v190 = *(v3 + v181);
  MEMORY[0x28223BE20](v189);
  *(&v197 - 2) = v188;

  v191 = sub_242CDAC68(sub_242D3E1B8, (&v197 - 4), v190);
  v193 = v192;

  if (v193)
  {
    v194 = 0;
  }

  else
  {
    v194 = v191;
  }

  v195 = sub_242D39AFC(v188, type metadata accessor for Component);
  MEMORY[0x28223BE20](v195);
  *(&v197 - 4) = v184;
  *(&v197 - 3) = v185;
  *(&v197 - 2) = v186;
  v196 = swift_getKeyPath();
  MEMORY[0x28223BE20](v196);
  *(&v197 - 4) = v184;
  *(&v197 - 3) = v185;
  *(&v197 - 2) = v186;
  swift_getKeyPath();
  v230 = v194;

  return sub_242F03A90();
}

uint64_t sub_242D30948(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  sub_242CA321C(a1, v11 - v8, &qword_27ECF23E8, &unk_242F13C40);
  sub_242CA321C(a2, v6, &qword_27ECF23E8, &unk_242F13C40);
  sub_242F03720();
  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  LOBYTE(a2) = sub_242F04EE0();
  sub_242C6D138(v6, &qword_27ECF23E8, &unk_242F13C40);
  sub_242C6D138(v9, &qword_27ECF23E8, &unk_242F13C40);
  return a2 & 1;
}

uint64_t sub_242D30AAC(uint64_t a1, uint64_t a2, int a3)
{
  v70 = a3;
  v82 = a2;
  v85 = a1;
  v73 = sub_242F042C0();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730, &qword_242F17940);
  MEMORY[0x28223BE20](v5 - 8);
  v76 = &v69 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3020, &qword_242F17A18);
  v80 = *(v7 - 8);
  v81 = v7;
  MEMORY[0x28223BE20](v7);
  v77 = &v69 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3188, &qword_242F17ED0);
  MEMORY[0x28223BE20](v9 - 8);
  v79 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v84 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v69 - v17;
  v78 = type metadata accessor for Component(0);
  v19 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v74 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v69 = &v69 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v69 - v24;
  v26 = *(*v3 + 144);
  swift_beginAccess();
  v83 = v3;
  v75 = v26;
  v27 = *(v3 + v26);
  v28 = *(v27 + 16);

  v30 = 0;
  do
  {
    if (v28 == v30)
    {
    }

    if (v30 >= *(v27 + 16))
    {
      __break(1u);
      goto LABEL_22;
    }

    sub_242D39B5C(v27 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v30++, v25, type metadata accessor for Component);
    sub_242CA321C(v25, v18, &qword_27ECF23E8, &unk_242F13C40);
    sub_242CA321C(v85, v15, &qword_27ECF23E8, &unk_242F13C40);
    sub_242F03720();
    sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v31 = sub_242F04EE0();
    sub_242C6D138(v15, &qword_27ECF23E8, &unk_242F13C40);
    sub_242C6D138(v18, &qword_27ECF23E8, &unk_242F13C40);
    result = sub_242D39AFC(v25, type metadata accessor for Component);
  }

  while ((v31 & 1) == 0);

  v33 = v83;
  v32 = v84;
  v34 = v85;
  sub_242D316E0(v82, v83, v85, v84);
  v35 = v79;
  sub_242CA321C(v32, v79, &qword_27ECF3188, &qword_242F17ED0);
  if ((*(v80 + 48))(v35, 1, v81) == 1)
  {
    v36 = sub_242C6D138(v35, &qword_27ECF3188, &qword_242F17ED0);
    MEMORY[0x28223BE20](v36);
    *(&v69 - 2) = v34;
    v37 = v75;
    swift_beginAccess();
    result = sub_242D382EC(sub_242D3E1B8, (&v69 - 4));
    v38 = *(*(v33 + v37) + 16);
    if (v38 >= result)
    {
      sub_242D3A188(result, v38, sub_242C83620, sub_242D39EC4);
      v39 = swift_endAccess();
      MEMORY[0x28223BE20](v39);
      v40 = v78;
      *(&v69 - 4) = v78;
      v41 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component, &protocol conformance descriptor for Component);
      *(&v69 - 3) = v41;
      v42 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component, &protocol conformance descriptor for Component);
      *(&v69 - 2) = v42;
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v69 - 4) = v40;
      *(&v69 - 3) = v41;
      *(&v69 - 2) = v42;
      swift_getKeyPath();
      v44 = v74;
      sub_242F03A80();

      v46 = *(v33 + v37);
      MEMORY[0x28223BE20](v45);
      *(&v69 - 2) = v44;

      v47 = sub_242CDAC68(sub_242D3E1B8, (&v69 - 4), v46);
      v49 = v48;

      if (v49)
      {
        v50 = 0;
      }

      else
      {
        v50 = v47;
      }

      v51 = sub_242D39AFC(v44, type metadata accessor for Component);
      MEMORY[0x28223BE20](v51);
      *(&v69 - 4) = v40;
      *(&v69 - 3) = v41;
      *(&v69 - 2) = v42;
      v52 = swift_getKeyPath();
      MEMORY[0x28223BE20](v52);
      *(&v69 - 4) = v40;
      *(&v69 - 3) = v41;
      *(&v69 - 2) = v42;
      swift_getKeyPath();
      v86[0] = v50;

      v53 = sub_242F03A90();
      MEMORY[0x28223BE20](v53);
      *(&v69 - 2) = v85;
      MEMORY[0x28223BE20](v54);
      *(&v69 - 4) = v40;
      *(&v69 - 3) = v41;
      *(&v69 - 2) = v42;
      v55 = swift_getKeyPath();
      MEMORY[0x28223BE20](v55);
      *(&v69 - 4) = v40;
      *(&v69 - 3) = v41;
      *(&v69 - 2) = v42;
      swift_getKeyPath();
      v56 = sub_242F03A70();
      v58 = v57;
      result = sub_242D382EC(sub_242D3E1B8, (&v69 - 4));
      v59 = *(*v58 + 16);
      if (v59 >= result)
      {
        sub_242D3A188(result, v59, sub_242C83620, sub_242D39EC4);
        v56(v86, 0);

        return sub_242C6D138(v84, &qword_27ECF3188, &qword_242F17ED0);
      }

      goto LABEL_23;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v60 = v77;
  sub_242CF6B3C(v35, v77, &qword_27ECF3020, &qword_242F17A18);
  v61 = v76;
  sub_242D3554C(v60, v76);
  if ((*(v19 + 48))(v61, 1, v78) == 1)
  {
    sub_242C6D138(v60, &qword_27ECF3020, &qword_242F17A18);
    sub_242C6D138(v32, &qword_27ECF3188, &qword_242F17ED0);
    return sub_242C6D138(v61, &qword_27ECF2730, &qword_242F17940);
  }

  else
  {
    v62 = v69;
    v63 = sub_242D39C68(v61, v69, type metadata accessor for Component);
    if (*(v33 + *(*v33 + 152)))
    {

      sub_242F04BD0();
    }

    v64 = v70;
    if (v70)
    {
    }

    MEMORY[0x28223BE20](v63);
    *(&v69 - 4) = v34;
    v65 = v64 & 1;
    *(&v69 - 24) = v64 & 1;
    *(&v69 - 2) = v33;
    *(&v69 - 1) = v62;
    v66 = swift_allocObject();
    swift_weakInit();
    v67 = swift_allocObject();
    *(v67 + 16) = v66;
    *(v67 + 24) = v65;

    v68 = v71;
    sub_242F042A0();
    sub_242F03D40();

    (*(v72 + 8))(v68, v73);
    sub_242C6D138(v60, &qword_27ECF3020, &qword_242F17A18);
    sub_242C6D138(v32, &qword_27ECF3188, &qword_242F17ED0);

    return sub_242D39AFC(v62, type metadata accessor for Component);
  }
}

uint64_t sub_242D316E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a3;
  v50 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730, &qword_242F17940);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v47 - v14;
  v16 = type metadata accessor for Component(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v47 - v21;
  sub_242CA321C(a1, v15, &qword_27ECF2730, &qword_242F17940);
  v23 = *(v17 + 48);
  v24 = v23(v15, 1, v16);
  v47[1] = a2;
  if (v24 == 1)
  {
    sub_242C6D138(v15, &qword_27ECF2730, &qword_242F17940);
LABEL_5:
    v28 = v48;
    v29 = v49;
    goto LABEL_6;
  }

  sub_242D39C68(v15, v22, type metadata accessor for Component);
  v25 = *(*a2 + 144);
  v26 = swift_beginAccess();
  v27 = *(a2 + v25);
  MEMORY[0x28223BE20](v26);
  v47[-2] = v22;

  sub_242CE8B5C(sub_242D3E1B8, v27, v12);

  LODWORD(v27) = v23(v12, 1, v16);
  sub_242C6D138(v12, &qword_27ECF2730, &qword_242F17940);
  if (v27 == 1)
  {
    sub_242D39AFC(v22, type metadata accessor for Component);
    goto LABEL_5;
  }

  v29 = v49;
  sub_242CA321C(v22, v49, &qword_27ECF23E8, &unk_242F13C40);
  v41 = v48;
  v42 = v51;
  sub_242CA321C(v48, v51, &qword_27ECF23E8, &unk_242F13C40);
  sub_242F03720();
  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v43 = sub_242F04EE0();
  sub_242C6D138(v42, &qword_27ECF23E8, &unk_242F13C40);
  sub_242C6D138(v29, &qword_27ECF23E8, &unk_242F13C40);
  if ((v43 & 1) == 0)
  {
    v44 = v50;
    sub_242CA321C(v22, v50, &qword_27ECF23E8, &unk_242F13C40);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3008, &qword_242F179F8);
    (*(*(v45 - 8) + 56))(v44, 0, 2, v45);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3020, &qword_242F17A18);
    (*(*(v46 - 8) + 56))(v44, 0, 1, v46);
    return sub_242D39AFC(v22, type metadata accessor for Component);
  }

  sub_242D39AFC(v22, type metadata accessor for Component);
  v28 = v41;
LABEL_6:
  v30 = sub_242CA321C(v28, v29, &qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v30);
  v47[-4] = v16;
  v31 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component, &protocol conformance descriptor for Component);
  v47[-3] = v31;
  v32 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component, &protocol conformance descriptor for Component);
  v47[-2] = v32;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v47[-4] = v16;
  v47[-3] = v31;
  v47[-2] = v32;
  swift_getKeyPath();
  sub_242F03A80();

  v34 = v51;
  sub_242CA321C(v19, v51, &qword_27ECF23E8, &unk_242F13C40);
  sub_242D39AFC(v19, type metadata accessor for Component);
  sub_242F03720();
  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v35 = sub_242F04EE0();
  sub_242C6D138(v34, &qword_27ECF23E8, &unk_242F13C40);
  sub_242C6D138(v29, &qword_27ECF23E8, &unk_242F13C40);
  if (v35)
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3008, &qword_242F179F8);
    v37 = v50;
    (*(*(v36 - 8) + 56))(v50, 2, 2, v36);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3020, &qword_242F17A18);
    return (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  }

  else
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3020, &qword_242F17A18);
    return (*(*(v40 - 8) + 56))(v50, 1, 1, v40);
  }
}

uint64_t sub_242D31E98(uint64_t a1, int a2, uint64_t a3, _BYTE *a4)
{
  v76 = a4;
  v7 = sub_242F03720();
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v69[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Component(0);
  MEMORY[0x28223BE20](v10);
  v74 = &v69[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v75 = &v69[-v13];
  MEMORY[0x28223BE20](v14);
  v16 = &v69[-v15];
  MEMORY[0x28223BE20](v17);
  v19 = &v69[-v18];
  if (qword_27ECEF4C0 != -1)
  {
    swift_once();
  }

  v20 = sub_242F039D0();
  __swift_project_value_buffer(v20, qword_27ED5D2E0);
  sub_242D39B5C(a1, v19, type metadata accessor for Component);
  v21 = sub_242F039B0();
  v22 = sub_242F056E0();
  v23 = os_log_type_enabled(v21, v22);
  v78 = a2;
  v79 = a1;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v82 = v71;
    *v24 = 136446466;
    sub_242D39B5C(v19, v16, type metadata accessor for Component);
    sub_242D39AFC(v19, type metadata accessor for Component);
    v80 = 0;
    v81 = 0xE000000000000000;
    v70 = v22;
    sub_242F05A80();

    v80 = 0x6E656E6F706D6F43;
    v81 = 0xEA00000000002874;
    (*(v72 + 16))(v9, v16, v73);
    v25 = sub_242F04F90();
    MEMORY[0x245D26660](v25);

    MEMORY[0x245D26660](0x3D656D616E203A29, 0xE800000000000000);
    MEMORY[0x245D26660](*&v16[*(v10 + 24)], *&v16[*(v10 + 24) + 8]);
    v26 = v80;
    v27 = v81;
    sub_242D39AFC(v16, type metadata accessor for Component);
    v28 = sub_242C8FD38(v26, v27, &v82);

    *(v24 + 4) = v28;
    *(v24 + 12) = 1026;
    *(v24 + 14) = v78 & 1;
    _os_log_impl(&dword_242C53000, v21, v70, "Removing carousel item with id %{public}s. Animated: %{BOOL,public}d", v24, 0x12u);
    v29 = v71;
    __swift_destroy_boxed_opaque_existential_2Tm(v71);
    MEMORY[0x245D287D0](v29, -1, -1);
    v30 = v24;
    a1 = v79;
    MEMORY[0x245D287D0](v30, -1, -1);
  }

  else
  {
    sub_242D39AFC(v19, type metadata accessor for Component);
  }

  sub_242D39B5C(v76, v16, type metadata accessor for Component);
  v31 = sub_242D2D564(v16);
  MEMORY[0x28223BE20](v31);
  *&v69[-16] = a1;
  v32 = *(*a3 + 144);
  swift_beginAccess();
  v33 = v77;
  result = sub_242D382EC(sub_242D3E1B8, &v69[-32]);
  v35 = *(*(a3 + v32) + 16);
  if (v35 < result)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v77 = v33;
  sub_242D3A188(result, v35, sub_242C83620, sub_242D39EC4);
  v36 = swift_endAccess();
  MEMORY[0x28223BE20](v36);
  *&v69[-32] = v10;
  v37 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component, &protocol conformance descriptor for Component);
  *&v69[-24] = v37;
  v38 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component, &protocol conformance descriptor for Component);
  *&v69[-16] = v38;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *&v69[-32] = v10;
  *&v69[-24] = v37;
  *&v69[-16] = v38;
  swift_getKeyPath();
  v40 = v75;
  sub_242F03A80();

  v42 = *(a3 + v32);
  MEMORY[0x28223BE20](v41);
  *&v69[-16] = v40;

  v43 = v77;
  v44 = sub_242CDAC68(sub_242D3E1B8, &v69[-32], v42);
  v46 = v45;
  v77 = v43;

  if (v46)
  {
    v47 = 0;
  }

  else
  {
    v47 = v44;
  }

  v48 = sub_242D39AFC(v40, type metadata accessor for Component);
  MEMORY[0x28223BE20](v48);
  *&v69[-32] = v10;
  *&v69[-24] = v37;
  *&v69[-16] = v38;
  v49 = swift_getKeyPath();
  MEMORY[0x28223BE20](v49);
  *&v69[-32] = v10;
  *&v69[-24] = v37;
  *&v69[-16] = v38;
  swift_getKeyPath();
  v80 = v47;

  v50 = sub_242F03A90();
  v76 = v69;
  MEMORY[0x28223BE20](v50);
  *&v69[-16] = v79;
  MEMORY[0x28223BE20](v51);
  *&v69[-32] = v10;
  *&v69[-24] = v37;
  *&v69[-16] = v38;
  v52 = swift_getKeyPath();
  MEMORY[0x28223BE20](v52);
  *&v69[-32] = v10;
  *&v69[-24] = v37;
  *&v69[-16] = v38;
  swift_getKeyPath();
  v53 = sub_242F03A70();
  v55 = v54;
  result = sub_242D382EC(sub_242D3E1B8, &v69[-32]);
  v56 = *(*v55 + 16);
  if (v56 < result)
  {
    goto LABEL_17;
  }

  sub_242D3A188(result, v56, sub_242C83620, sub_242D39EC4);
  v53(&v80, 0);

  v58 = 0;
  v59 = v78;
  if (v78)
  {
    v58 = *(a3 + *(*a3 + 160) + 48) ^ 1;
  }

  MEMORY[0x28223BE20](v57);
  *&v69[-32] = v10;
  *&v69[-24] = v37;
  *&v69[-16] = v38;
  v60 = swift_getKeyPath();
  MEMORY[0x28223BE20](v60);
  *&v69[-32] = v10;
  *&v69[-24] = v37;
  *&v69[-16] = v38;
  swift_getKeyPath();
  LOBYTE(v80) = v58 & 1;

  v61 = sub_242F03A90();
  MEMORY[0x28223BE20](v61);
  *&v69[-32] = v10;
  *&v69[-24] = v37;
  *&v69[-16] = v38;
  v62 = swift_getKeyPath();
  MEMORY[0x28223BE20](v62);
  *&v69[-32] = v10;
  *&v69[-24] = v37;
  *&v69[-16] = v38;
  swift_getKeyPath();
  LOBYTE(v80) = v59 & 1;

  v63 = sub_242F03A90();
  MEMORY[0x28223BE20](v63);
  *&v69[-32] = v10;
  *&v69[-24] = v37;
  *&v69[-16] = v38;
  v64 = swift_getKeyPath();
  MEMORY[0x28223BE20](v64);
  *&v69[-32] = v10;
  *&v69[-24] = v37;
  *&v69[-16] = v38;
  swift_getKeyPath();
  v65 = v74;
  sub_242F03A80();

  v66 = a3 + *(*a3 + 112);
  v67 = *v66;
  if (*v66)
  {
    v68 = *(v66 + 8);

    v67(v65);
    sub_242C655DC(v67, v68);
  }

  return sub_242D39AFC(v65, type metadata accessor for Component);
}

uint64_t sub_242D32994(unint64_t a1, int a2)
{
  v3 = v2;
  v61 = sub_242F042C0();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v7 - 8);
  v64 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730, &qword_242F17940);
  MEMORY[0x28223BE20](v11 - 8);
  v67 = &v56 - v12;
  v13 = type metadata accessor for Component(0);
  v66 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v62 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3020, &qword_242F17A18);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - v22;
  if (qword_27ECEF4C0 != -1)
  {
    swift_once();
  }

  v24 = sub_242F039D0();
  __swift_project_value_buffer(v24, qword_27ED5D2E0);
  sub_242CA321C(a1, v23, &qword_27ECF3020, &qword_242F17A18);
  v25 = sub_242F039B0();
  v26 = sub_242F056E0();
  v27 = os_log_type_enabled(v25, v26);
  v65 = a2;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v56 = v13;
    v29 = v28;
    v30 = swift_slowAlloc();
    v58 = v2;
    v31 = v30;
    v68 = v30;
    *v29 = 136446466;
    v57 = v17;
    sub_242CA321C(v23, v20, &qword_27ECF3020, &qword_242F17A18);
    sub_242C6D138(v23, &qword_27ECF3020, &qword_242F17A18);
    v32 = sub_242D36B28();
    v34 = v33;
    v17 = v57;
    v35 = v65;
    sub_242C6D138(v20, &qword_27ECF3020, &qword_242F17A18);
    v36 = sub_242C8FD38(v32, v34, &v68);

    *(v29 + 4) = v36;
    *(v29 + 12) = 1026;
    *(v29 + 14) = v35 & 1;
    _os_log_impl(&dword_242C53000, v25, v26, "Rotating carousel item with direction %{public}s. Animated: %{BOOL,public}d", v29, 0x12u);
    __swift_destroy_boxed_opaque_existential_2Tm(v31);
    v37 = v31;
    v3 = v58;
    MEMORY[0x245D287D0](v37, -1, -1);
    v38 = v29;
    v13 = v56;
    MEMORY[0x245D287D0](v38, -1, -1);
  }

  else
  {
    sub_242C6D138(v23, &qword_27ECF3020, &qword_242F17A18);
  }

  v39 = v67;
  sub_242D3554C(a1, v67);
  if ((*(v66 + 48))(v39, 1, v13) == 1)
  {
    return sub_242C6D138(v39, &qword_27ECF2730, &qword_242F17940);
  }

  sub_242D39C68(v39, v17, type metadata accessor for Component);
  v41 = v63;
  v42 = sub_242CA321C(v17, v63, &qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v42);
  *(&v56 - 4) = v13;
  v43 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component, &protocol conformance descriptor for Component);
  *(&v56 - 3) = v43;
  v44 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component, &protocol conformance descriptor for Component);
  *(&v56 - 2) = v44;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v56 - 4) = v13;
  *(&v56 - 3) = v43;
  *(&v56 - 2) = v44;
  swift_getKeyPath();
  v46 = v62;
  sub_242F03A80();

  v47 = v64;
  sub_242CA321C(v46, v64, &qword_27ECF23E8, &unk_242F13C40);
  sub_242D39AFC(v46, type metadata accessor for Component);
  sub_242F03720();
  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v48 = sub_242F04EE0();
  sub_242C6D138(v47, &qword_27ECF23E8, &unk_242F13C40);
  sub_242C6D138(v41, &qword_27ECF23E8, &unk_242F13C40);
  if (v48)
  {
    v49 = v17;
  }

  else
  {
    if (*(v3 + *(*v3 + 152)))
    {

      sub_242F04BD0();
    }

    v50 = v65;
    if (v65)
    {
    }

    v51 = v60;
    v52 = sub_242F042B0();
    MEMORY[0x28223BE20](v52);
    *(&v56 - 4) = v17;
    v53 = v50 & 1;
    *(&v56 - 24) = v53;
    *(&v56 - 2) = v3;
    v54 = swift_allocObject();
    swift_weakInit();
    v55 = swift_allocObject();
    *(v55 + 16) = v54;
    *(v55 + 24) = v53;

    sub_242F03D40();
    (*(v59 + 8))(v51, v61);

    v49 = v17;
  }

  return sub_242D39AFC(v49, type metadata accessor for Component);
}

uint64_t sub_242D3321C(uint64_t a1, int a2, uint64_t a3)
{
  v48 = a2;
  v5 = sub_242F03720();
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Component(0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v42[-v11];
  MEMORY[0x28223BE20](v13);
  v15 = &v42[-v14];
  if (qword_27ECEF4C0 != -1)
  {
    swift_once();
  }

  v16 = sub_242F039D0();
  __swift_project_value_buffer(v16, qword_27ED5D2E0);
  sub_242D39B5C(a1, v15, type metadata accessor for Component);
  v17 = sub_242F039B0();
  v18 = sub_242F056E0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v45 = a1;
    v20 = v19;
    v44 = swift_slowAlloc();
    v51 = v44;
    *v20 = 136446466;
    sub_242D39B5C(v15, v12, type metadata accessor for Component);
    sub_242D39AFC(v15, type metadata accessor for Component);
    v49 = 0;
    v50 = 0xE000000000000000;
    v43 = v18;
    sub_242F05A80();

    v49 = 0x6E656E6F706D6F43;
    v50 = 0xEA00000000002874;
    (*(v46 + 16))(v7, v12, v5);
    v21 = sub_242F04F90();
    MEMORY[0x245D26660](v21);

    MEMORY[0x245D26660](0x3D656D616E203A29, 0xE800000000000000);
    MEMORY[0x245D26660](*&v12[*(v8 + 24)], *&v12[*(v8 + 24) + 8]);
    v22 = v49;
    v23 = v50;
    sub_242D39AFC(v12, type metadata accessor for Component);
    v24 = sub_242C8FD38(v22, v23, &v51);

    *(v20 + 4) = v24;
    *(v20 + 12) = 1026;
    v25 = v48;
    *(v20 + 14) = v48 & 1;
    _os_log_impl(&dword_242C53000, v17, v43, "Starting carousel rotation to %{public}s. Animated: %{BOOL,public}d", v20, 0x12u);
    v26 = v44;
    __swift_destroy_boxed_opaque_existential_2Tm(v44);
    MEMORY[0x245D287D0](v26, -1, -1);
    v27 = v20;
    a1 = v45;
    MEMORY[0x245D287D0](v27, -1, -1);
  }

  else
  {
    sub_242D39AFC(v15, type metadata accessor for Component);

    v25 = v48;
  }

  sub_242D39B5C(a1, v12, type metadata accessor for Component);
  v28 = sub_242D2D564(v12);
  v29 = v25;
  if (v25)
  {
    v30 = *(a3 + *(*a3 + 160) + 48) ^ 1;
  }

  else
  {
    v30 = 0;
  }

  MEMORY[0x28223BE20](v28);
  *&v42[-32] = v8;
  v31 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component, &protocol conformance descriptor for Component);
  *&v42[-24] = v31;
  v32 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component, &protocol conformance descriptor for Component);
  *&v42[-16] = v32;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *&v42[-32] = v8;
  *&v42[-24] = v31;
  *&v42[-16] = v32;
  swift_getKeyPath();
  LOBYTE(v49) = v30 & 1;

  v34 = sub_242F03A90();
  MEMORY[0x28223BE20](v34);
  *&v42[-32] = v8;
  *&v42[-24] = v31;
  *&v42[-16] = v32;
  v35 = swift_getKeyPath();
  MEMORY[0x28223BE20](v35);
  *&v42[-32] = v8;
  *&v42[-24] = v31;
  *&v42[-16] = v32;
  swift_getKeyPath();
  LOBYTE(v49) = v29 & 1;

  result = sub_242F03A90();
  if (*(a3 + *(*a3 + 160) + 64) == 1)
  {
    MEMORY[0x28223BE20](result);
    *&v42[-32] = v8;
    *&v42[-24] = v31;
    *&v42[-16] = v32;
    v37 = swift_getKeyPath();
    MEMORY[0x28223BE20](v37);
    *&v42[-32] = v8;
    *&v42[-24] = v31;
    *&v42[-16] = v32;
    swift_getKeyPath();
    v38 = v47;
    sub_242F03A80();

    v39 = a3 + *(*a3 + 112);
    v40 = *v39;
    if (*v39)
    {
      v41 = *(v39 + 8);

      v40(v38);
      sub_242C655DC(v40, v41);
    }

    return sub_242D39AFC(v38, type metadata accessor for Component);
  }

  return result;
}

uint64_t sub_242D3391C(uint64_t a1, char a2)
{
  v3 = type metadata accessor for Component(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    MEMORY[0x28223BE20](result);
    *(&v12 - 4) = v3;
    v8 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component, &protocol conformance descriptor for Component);
    *(&v12 - 3) = v8;
    v9 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component, &protocol conformance descriptor for Component);
    *(&v12 - 2) = v9;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v12 - 4) = v3;
    *(&v12 - 3) = v8;
    *(&v12 - 2) = v9;
    swift_getKeyPath();
    sub_242F03A80();

    v11 = 0.0;
    if (a2)
    {
      v11 = *(v7 + *(*v7 + 160) + 72);
    }

    sub_242D36974(v5, v11);

    return sub_242D39AFC(v5, type metadata accessor for Component);
  }

  return result;
}

void *sub_242D33B3C(char a1)
{
  v2 = v1;
  v4 = sub_242F04B60();
  MEMORY[0x28223BE20](v4);
  if (qword_27ECEF4C0 != -1)
  {
    swift_once();
  }

  v5 = sub_242F039D0();
  __swift_project_value_buffer(v5, qword_27ED5D2E0);
  v6 = sub_242F039B0();
  v7 = sub_242F056E0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67240192;
    *(v8 + 4) = a1 & 1;
    _os_log_impl(&dword_242C53000, v6, v7, "Showing carousel decorations. Animated: %{BOOL,public}d", v8, 8u);
    MEMORY[0x245D287D0](v8, -1, -1);
  }

  v9 = *(*v2 + 152);
  if (*(v2 + v9))
  {

    sub_242F04BD0();
  }

  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1 & 1;
  *(v12 + 32) = v10;
  aBlock[4] = sub_242D3DD44;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_242DEA248;
  aBlock[3] = &block_descriptor_319;
  _Block_copy(aBlock);
  sub_242D3DC24(&qword_27ECFC050, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECFC610, &qword_242F48C80);
  sub_242D3DC6C();
  sub_242F05930();
  sub_242F04BE0();
  swift_allocObject();
  v13 = sub_242F04BC0();

  swift_beginAccess();
  *(v10 + 16) = v13;

  *(v2 + v9) = v13;

  sub_242D3DCD0();
  result = sub_242F05750();
  if (*(v2 + v9))
  {
    v15 = result;

    sub_242F05770();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_242D33ED8(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_242F042C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = v5;
    if (a2)
    {
      v17 = *(result + *(*result + 200));
    }

    else
    {
      v17 = 0;
    }

    v10 = swift_allocObject();
    v11 = swift_weakInit();
    v16 = &v16;
    MEMORY[0x28223BE20](v11);
    *(&v16 - 2) = v10;
    v12 = a2 & 1;
    *(&v16 - 8) = a2 & 1;
    v13 = swift_allocObject();
    swift_weakInit();
    swift_beginAccess();
    v14 = *(a3 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = v14;
    *(v15 + 32) = v12;
    swift_retain_n();

    sub_242F042A0();
    sub_242F03D40();
    (*(v6 + 8))(v8, v18);
  }

  return result;
}

uint64_t sub_242D34164(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Component(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v22 = v6;
    v23 = v2;
    if (a2)
    {
      v9 = *(result + *(*result + 160) + 48) ^ 1;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x28223BE20](result);
    *(&v21 - 4) = v4;
    v10 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component, &protocol conformance descriptor for Component);
    *(&v21 - 3) = v10;
    v11 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component, &protocol conformance descriptor for Component);
    *(&v21 - 2) = v11;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v21 - 4) = v4;
    *(&v21 - 3) = v10;
    *(&v21 - 2) = v11;
    swift_getKeyPath();
    v24 = v9 & 1;

    v13 = sub_242F03A90();
    MEMORY[0x28223BE20](v13);
    *(&v21 - 4) = v4;
    *(&v21 - 3) = v10;
    *(&v21 - 2) = v11;
    v14 = swift_getKeyPath();
    MEMORY[0x28223BE20](v14);
    *(&v21 - 4) = v4;
    *(&v21 - 3) = v10;
    *(&v21 - 2) = v11;
    swift_getKeyPath();
    v24 = a2 & 1;

    v15 = sub_242F03A90();
    if (*(v8 + *(*v8 + 160) + 64))
    {
    }

    v16 = v8 + *(*v8 + 112);
    v17 = *v16;
    if (!*v16)
    {
    }

    else
    {
      v18 = *(v16 + 8);
      MEMORY[0x28223BE20](v15);
      *(&v21 - 4) = v4;
      *(&v21 - 3) = v10;
      *(&v21 - 2) = v11;
      v19 = swift_getKeyPath();
      MEMORY[0x28223BE20](v19);
      *(&v21 - 4) = v4;
      *(&v21 - 3) = v10;
      *(&v21 - 2) = v11;
      swift_getKeyPath();

      v20 = v22;
      sub_242F03A80();

      v17(v20);
      sub_242C655DC(v17, v18);

      return sub_242D39AFC(v20, type metadata accessor for Component);
    }
  }

  return result;
}

uint64_t sub_242D3456C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v6 = result;

      if (sub_242F04BB0())
      {
        if (qword_27ECEF4C0 != -1)
        {
          swift_once();
        }

        v7 = sub_242F039D0();
        __swift_project_value_buffer(v7, qword_27ED5D2E0);
        v8 = sub_242F039B0();
        v9 = sub_242F056E0();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 67240192;
          *(v10 + 4) = a3 & 1;
          _os_log_impl(&dword_242C53000, v8, v9, "Previous carousel decorations showing was cancelled. Animated: %{BOOL,public}d", v10, 8u);
          MEMORY[0x245D287D0](v10, -1, -1);
        }
      }

      else
      {
        if (qword_27ECEF4C0 != -1)
        {
          swift_once();
        }

        v11 = sub_242F039D0();
        __swift_project_value_buffer(v11, qword_27ED5D2E0);
        v12 = sub_242F039B0();
        v13 = sub_242F056E0();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 67240192;
          *(v14 + 4) = a3 & 1;
          _os_log_impl(&dword_242C53000, v12, v13, "Finished showing carousel decorations. Animated: %{BOOL,public}d", v14, 8u);
          MEMORY[0x245D287D0](v14, -1, -1);
        }

        v15 = *(*v6 + 144);
        swift_beginAccess();
        if (*(*(v6 + v15) + 16))
        {
          v16 = *(v6 + *(*v6 + 160) + 72);
        }

        else
        {
          v16 = 0.0;
        }

        sub_242D347D8(v16);
      }
    }
  }

  return result;
}

uint64_t sub_242D347D8(double a1)
{
  v2 = v1;
  v4 = sub_242F04BA0();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = sub_242F04B60();
  MEMORY[0x28223BE20](v9);
  if (qword_27ECEF4C0 != -1)
  {
    swift_once();
  }

  v10 = sub_242F039D0();
  __swift_project_value_buffer(v10, qword_27ED5D2E0);
  v11 = sub_242F039B0();
  v12 = sub_242F056E0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134349056;
    *(v13 + 4) = a1;
    _os_log_impl(&dword_242C53000, v11, v12, "Hiding carousel decorations. Delay: %{public}f", v13, 0xCu);
    MEMORY[0x245D287D0](v13, -1, -1);
  }

  v27 = v8;

  v14 = *(*v2 + 152);
  if (*(v2 + v14))
  {

    sub_242F04BD0();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  *(v17 + 32) = a1;
  aBlock[4] = sub_242D3DC00;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_242DEA248;
  aBlock[3] = &block_descriptor;
  _Block_copy(aBlock);
  v30 = MEMORY[0x277D84F90];
  sub_242D3DC24(&qword_27ECFC050, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECFC610, &qword_242F48C80);
  sub_242D3DC6C();
  sub_242F05930();
  sub_242F04BE0();
  swift_allocObject();
  v18 = sub_242F04BC0();

  swift_beginAccess();
  *(v15 + 16) = v18;

  *(v2 + v14) = v18;

  sub_242D3DCD0();
  v19 = sub_242F05750();
  v20 = v26;
  sub_242F04B90();
  v21 = v27;
  sub_242F04BF0();
  v22 = v29;
  v23 = *(v28 + 8);
  result = v23(v20, v29);
  if (*(v2 + v14))
  {

    sub_242F05740();

    v23(v21, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_242D34C64(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_242F042C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    swift_weakInit();
    swift_beginAccess();
    v11 = *(a2 + 16);
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    *(v12 + 32) = a3;
    swift_retain_n();

    sub_242F042A0();
    sub_242F03D40();
    (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_242D34EA8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    MEMORY[0x28223BE20](result);
    type metadata accessor for Component(0);
    sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component, &protocol conformance descriptor for Component);
    sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component, &protocol conformance descriptor for Component);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    swift_getKeyPath();

    v3 = sub_242F03A90();
    MEMORY[0x28223BE20](v3);
    v4 = swift_getKeyPath();
    MEMORY[0x28223BE20](v4);
    swift_getKeyPath();
    return sub_242F03A90();
  }

  return result;
}

uint64_t sub_242D350C0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for Component(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v9 = result;

      if (sub_242F04BB0())
      {
        if (qword_27ECEF4C0 != -1)
        {
          swift_once();
        }

        v10 = sub_242F039D0();
        __swift_project_value_buffer(v10, qword_27ED5D2E0);
        v11 = sub_242F039B0();
        v12 = sub_242F056E0();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_242C53000, v11, v12, "Previous carousel decorations hiding was cancelled", v13, 2u);
          MEMORY[0x245D287D0](v13, -1, -1);
        }
      }

      else
      {
        if (qword_27ECEF4C0 != -1)
        {
          swift_once();
        }

        v14 = sub_242F039D0();
        __swift_project_value_buffer(v14, qword_27ED5D2E0);
        v15 = sub_242F039B0();
        v16 = sub_242F056E0();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 134349056;
          *(v17 + 4) = a3;
          _os_log_impl(&dword_242C53000, v15, v16, "Finished hiding carousel decorations. Delay: %{public}f", v17, 0xCu);
          MEMORY[0x245D287D0](v17, -1, -1);
        }

        if ((*(v9 + *(*v9 + 160) + 64) & 1) == 0)
        {
          v18 = sub_242F039B0();
          v19 = sub_242F056E0();
          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            *v20 = 134349056;
            *(v20 + 4) = a3;
            _os_log_impl(&dword_242C53000, v18, v19, "Animation settled after %{public}f.", v20, 0xCu);
            MEMORY[0x245D287D0](v20, -1, -1);
          }

          v22 = v9 + *(*v9 + 120);
          v23 = *v22;
          if (*v22)
          {
            v28 = &v28;
            v24 = *(v22 + 8);
            MEMORY[0x28223BE20](v21);
            *(&v28 - 4) = v5;
            v25 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component, &protocol conformance descriptor for Component);
            *(&v28 - 3) = v25;
            v26 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component, &protocol conformance descriptor for Component);
            *(&v28 - 2) = v26;
            KeyPath = swift_getKeyPath();
            MEMORY[0x28223BE20](KeyPath);
            *(&v28 - 4) = v5;
            *(&v28 - 3) = v25;
            *(&v28 - 2) = v26;
            swift_getKeyPath();

            sub_242F03A80();

            v23(v7);

            sub_242C655DC(v23, v24);

            return sub_242D39AFC(v7, type metadata accessor for Component);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_242D3554C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v137 = a1;
  v127 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3170, &qword_242F17E38);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v125 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v7 - 8);
  v136 = &v125 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3020, &qword_242F17A18);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v125 - v10;
  v12 = type metadata accessor for Component(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v133 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v135 = &v125 - v16;
  MEMORY[0x28223BE20](v17);
  v128 = &v125 - v18;
  MEMORY[0x28223BE20](v19);
  v130 = &v125 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v125 - v22;
  v144 = v24;
  v25 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component, &protocol conformance descriptor for Component);
  v145 = v25;
  v26 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component, &protocol conformance descriptor for Component);
  v146 = v26;
  swift_getKeyPath();
  v141 = v12;
  v142 = v25;
  v143 = v26;
  swift_getKeyPath();
  sub_242F03A80();

  v27 = *(v147[0] + 16);

  if (v27 < 2)
  {
    return (*(v13 + 56))(v127, 1, 1, v12);
  }

  v129 = v6;
  v131 = v13;
  MEMORY[0x28223BE20](v28);
  *(&v125 - 4) = v12;
  *(&v125 - 3) = v25;
  *(&v125 - 2) = v26;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v125 - 4) = v12;
  *(&v125 - 3) = v25;
  *(&v125 - 2) = v26;
  swift_getKeyPath();
  sub_242F03A80();

  MEMORY[0x28223BE20](v30);
  *(&v125 - 4) = v12;
  *(&v125 - 3) = v25;
  *(&v125 - 2) = v26;
  v31 = swift_getKeyPath();
  MEMORY[0x28223BE20](v31);
  v139 = v25;
  v140 = v12;
  *(&v125 - 4) = v12;
  *(&v125 - 3) = v25;
  v138 = v26;
  *(&v125 - 2) = v26;
  swift_getKeyPath();
  sub_242F03A80();

  v33 = v147[0];
  MEMORY[0x28223BE20](v32);
  *(&v125 - 2) = v23;
  v34 = sub_242CDAC68(sub_242D3E1B8, (&v125 - 4), v33);
  v36 = v35;

  if (v36)
  {
    v37 = 0;
  }

  else
  {
    v37 = v34;
  }

  sub_242D39AFC(v23, type metadata accessor for Component);
  sub_242CA321C(v137, v11, &qword_27ECF3020, &qword_242F17A18);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3008, &qword_242F179F8);
  result = (*(*(v38 - 8) + 48))(v11, 2, v38);
  if (result)
  {
    if (result == 1)
    {
      v40 = -1;
    }

    else
    {
      v40 = 1;
    }

    v44 = v139;
    v43 = v140;
    v45 = v138;
    goto LABEL_13;
  }

  v41 = v136;
  v42 = sub_242CF6B3C(v11, v136, &qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v42);
  v44 = v139;
  v43 = v140;
  *(&v125 - 4) = v140;
  *(&v125 - 3) = v44;
  v45 = v138;
  *(&v125 - 2) = v138;
  v46 = swift_getKeyPath();
  MEMORY[0x28223BE20](v46);
  *(&v125 - 4) = v43;
  *(&v125 - 3) = v44;
  *(&v125 - 2) = v45;
  swift_getKeyPath();
  sub_242F03A80();

  v48 = v147[0];
  MEMORY[0x28223BE20](v47);
  *(&v125 - 2) = v41;
  v49 = sub_242CDAC68(sub_242D3B610, (&v125 - 4), v48);
  v51 = v50;

  if (v51)
  {
    result = sub_242C6D138(v41, &qword_27ECF23E8, &unk_242F13C40);
    v40 = 0;
    goto LABEL_13;
  }

  v113 = v37;
  v114 = __OFSUB__(v49, v37);
  v115 = v49 - v37;
  v116 = v114;
  if (v115 < 0 != v114)
  {
    if (v116)
    {
      goto LABEL_99;
    }

    MEMORY[0x28223BE20](result);
    *(&v125 - 4) = v43;
    *(&v125 - 3) = v44;
    *(&v125 - 2) = v45;
    v117 = swift_getKeyPath();
    MEMORY[0x28223BE20](v117);
    *(&v125 - 4) = v43;
    *(&v125 - 3) = v44;
    *(&v125 - 2) = v45;
    swift_getKeyPath();
    sub_242F03A80();

    v118 = *(v147[0] + 16);

    v119 = v49 + v118;
    if (__OFADD__(v49, v118))
    {
      goto LABEL_101;
    }

    v114 = __OFSUB__(v119, v113);
    v120 = v119 - v113;
    if (v114)
    {
      goto LABEL_103;
    }

    v121 = v115;
    if (v115 < 0)
    {
LABEL_83:
      v121 = -v115;
      if (__OFSUB__(0, v115))
      {
        goto LABEL_104;
      }
    }
  }

  else
  {
    if (v116)
    {
      goto LABEL_100;
    }

    MEMORY[0x28223BE20](result);
    *(&v125 - 4) = v43;
    *(&v125 - 3) = v44;
    *(&v125 - 2) = v45;
    v122 = swift_getKeyPath();
    MEMORY[0x28223BE20](v122);
    *(&v125 - 4) = v43;
    *(&v125 - 3) = v44;
    *(&v125 - 2) = v45;
    swift_getKeyPath();
    sub_242F03A80();

    v123 = *(v147[0] + 16);

    v121 = v115 - v123;
    if (__OFSUB__(v115, v123))
    {
      goto LABEL_102;
    }

    v120 = v115;
    v115 -= v123;
    if (v121 < 0)
    {
      goto LABEL_83;
    }
  }

  v124 = v120;
  if (v120 < 0)
  {
    v124 = -v120;
    if (__OFSUB__(0, v120))
    {
      goto LABEL_105;
    }
  }

  if (v121 >= v124)
  {
    v40 = v120;
  }

  else
  {
    v40 = v115;
  }

  result = sub_242C6D138(v136, &qword_27ECF23E8, &unk_242F13C40);
  v37 = v113;
LABEL_13:
  v52 = v37 + v40;
  v53 = __OFADD__(v37, v40);
  if (__OFADD__(v37, v40))
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v126 = v40;
  if ((v52 & 0x8000000000000000) == 0)
  {
    MEMORY[0x28223BE20](result);
    *(&v125 - 4) = v43;
    *(&v125 - 3) = v44;
    *(&v125 - 2) = v45;
    v54 = swift_getKeyPath();
    MEMORY[0x28223BE20](v54);
    *(&v125 - 4) = v43;
    *(&v125 - 3) = v44;
    *(&v125 - 2) = v45;
    swift_getKeyPath();
    sub_242F03A80();

    v55 = *(v147[0] + 16);

    if (v52 < v55)
    {
      goto LABEL_66;
    }

    v137 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      goto LABEL_98;
    }

    MEMORY[0x28223BE20](result);
    *(&v125 - 4) = v43;
    *(&v125 - 3) = v44;
    *(&v125 - 2) = v45;
    v56 = swift_getKeyPath();
    MEMORY[0x28223BE20](v56);
    *(&v125 - 4) = v43;
    *(&v125 - 3) = v44;
    *(&v125 - 2) = v45;
    swift_getKeyPath();
    sub_242F03A80();

    v57 = *(v147[0] + 16);

    if (v137 == v57)
    {
      goto LABEL_66;
    }

    v52 = v137 - v57;
  }

  v134 = v3;
  v58 = v131;
  while (1)
  {
    MEMORY[0x28223BE20](result);
    *(&v125 - 4) = v43;
    *(&v125 - 3) = v44;
    *(&v125 - 2) = v45;
    v59 = swift_getKeyPath();
    MEMORY[0x28223BE20](v59);
    *(&v125 - 4) = v43;
    *(&v125 - 3) = v44;
    *(&v125 - 2) = v45;
    swift_getKeyPath();
    v136 = v52;
    v137 = v37;
    if ((v52 & 0x8000000000000000) != 0)
    {
      break;
    }

    result = sub_242F03A70();
    v61 = *v60;
    v62 = *(*v60 + 16);
    if (!v62)
    {
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v63 = result;
    v64 = v60;
    v65 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    sub_242D39B5C(v61 + v65, v135, type metadata accessor for Component);
    v66 = v62 - 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v64 = v61;
    if (!isUniquelyReferenced_nonNull_native || v66 > v61[3] >> 1)
    {
      if (v61[2] <= v66)
      {
        v68 = v66;
      }

      else
      {
        v68 = v61[2];
      }

      v61 = sub_242C83620(isUniquelyReferenced_nonNull_native, v68, 1, v61);
      *v64 = v61;
    }

    sub_242D39AFC(v61 + v65, type metadata accessor for Component);
    v69 = *(v58 + 72);
    if (v69 > 0 || v61 + v65 >= v61 + v65 + v69 + (v61[2] - 1) * v69)
    {
      v70 = v140;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v70 = v140;
      if (v69)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v132 = v65;
    --v61[2];
    *v64 = v61;
    v63(v147, 0);

    v95 = sub_242D39B5C(v135, v133, type metadata accessor for Component);
    MEMORY[0x28223BE20](v95);
    v97 = v138;
    v96 = v139;
    *(&v125 - 4) = v70;
    *(&v125 - 3) = v96;
    *(&v125 - 2) = v97;
    v98 = swift_getKeyPath();
    MEMORY[0x28223BE20](v98);
    *(&v125 - 4) = v70;
    *(&v125 - 3) = v96;
    *(&v125 - 2) = v97;
    swift_getKeyPath();
    v99 = sub_242F03A70();
    v101 = v100;
    v102 = *v100;
    v103 = swift_isUniquelyReferenced_nonNull_native();
    *v101 = v102;
    if ((v103 & 1) == 0)
    {
      v102 = sub_242C83620(0, v102[2] + 1, 1, v102);
      *v101 = v102;
    }

    v104 = v131;
    v105 = v137;
    v107 = v102[2];
    v106 = v102[3];
    if (v107 >= v106 >> 1)
    {
      v102 = sub_242C83620((v106 > 1), v107 + 1, 1, v102);
      *v101 = v102;
    }

    v44 = v139;
    v102[2] = v107 + 1;
    sub_242D39C68(v133, v102 + v132 + v107 * v69, type metadata accessor for Component);
    v99(v147, 0);

    result = sub_242D39AFC(v135, type metadata accessor for Component);
    v114 = __OFSUB__(v105, 1);
    v37 = v105 - 1;
    if (v114)
    {
      goto LABEL_91;
    }

    v108 = -1;
    v58 = v104;
LABEL_23:
    v52 = v136 + v108;
    v43 = v140;
    v45 = v138;
    if (!(v136 + v108))
    {
      goto LABEL_63;
    }
  }

  result = sub_242F03A70();
  v44 = *v71;
  if (!*(*v71 + 16))
  {
    goto LABEL_92;
  }

  v72 = result;
  v43 = v71;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v43 = v44;
  if (result)
  {
    v73 = v44[2];
    if (!v73)
    {
      goto LABEL_62;
    }

LABEL_39:
    v74 = v73 - 1;
    v132 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v75 = *(v58 + 72);
    v76 = v128;
    sub_242D39C68(v44 + v132 + v75 * (v73 - 1), v128, type metadata accessor for Component);
    v44[2] = v74;
    *v43 = v44;
    v77 = v76;
    v78 = v130;
    v79 = v138;
    sub_242D39C68(v77, v130, type metadata accessor for Component);
    v72(v147, 0);

    MEMORY[0x28223BE20](v80);
    v82 = v139;
    v81 = v140;
    *(&v125 - 4) = v140;
    *(&v125 - 3) = v82;
    *(&v125 - 2) = v79;
    v83 = swift_getKeyPath();
    MEMORY[0x28223BE20](v83);
    *(&v125 - 4) = v81;
    *(&v125 - 3) = v82;
    *(&v125 - 2) = v79;
    swift_getKeyPath();
    v84 = sub_242F03A70();
    v86 = v85;
    sub_242D39B5C(v78, v129, type metadata accessor for Component);
    v87 = *v86;
    v88 = *(*v86 + 16);
    v89 = swift_isUniquelyReferenced_nonNull_native();
    *v86 = v87;
    if (!v89 || v88 >= v87[3] >> 1)
    {
      if (v87[2] <= v88 + 1)
      {
        v90 = v88 + 1;
      }

      else
      {
        v90 = v87[2];
      }

      v87 = sub_242C83620(v89, v90, 1, v87);
      *v86 = v87;
    }

    v91 = v137;
    v92 = v87 + v132;
    swift_arrayDestroy();
    v93 = v87[2];
    if (v75 < 0 || v75 >= v93 * v75)
    {
      swift_arrayInitWithTakeFrontToBack();
      ++v87[2];
      v94 = v129;
      if (v75 <= 0)
      {
LABEL_59:
        sub_242C6D138(v94, &qword_27ECF3170, &qword_242F17E38);
        *v86 = v87;
        v84(v147, 0);

        result = sub_242D39AFC(v130, type metadata accessor for Component);
        v114 = __OFADD__(v91, 1);
        v37 = v91 + 1;
        v58 = v131;
        if (v114)
        {
          goto LABEL_93;
        }

        v108 = 1;
        v44 = v139;
        goto LABEL_23;
      }
    }

    else
    {
      if (!v75)
      {
        v87[2] = v93 + 1;
        v94 = v129;
        goto LABEL_59;
      }

      swift_arrayInitWithTakeBackToFront();
      ++v87[2];
      v94 = v129;
    }

    sub_242D39B5C(v94, v92, type metadata accessor for Component);
    goto LABEL_59;
  }

  result = sub_242D37E58(v44);
  v44 = result;
  *v43 = result;
  v73 = *(result + 16);
  if (v73)
  {
    goto LABEL_39;
  }

LABEL_62:
  __break(1u);
LABEL_63:
  v52 = v37 + v126;
  v53 = __OFADD__(v37, v126);
LABEL_66:
  if (v53)
  {
    goto LABEL_95;
  }

  MEMORY[0x28223BE20](result);
  *(&v125 - 4) = v43;
  *(&v125 - 3) = v44;
  *(&v125 - 2) = v45;
  v109 = swift_getKeyPath();
  MEMORY[0x28223BE20](v109);
  *(&v125 - 4) = v43;
  *(&v125 - 3) = v44;
  *(&v125 - 2) = v45;
  swift_getKeyPath();
  v110 = v52;
  sub_242F03A80();

  if ((v52 & 0x8000000000000000) != 0)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (v52 < *(v147[0] + 16))
  {
    v111 = v131;
    v112 = v127;
    sub_242D39B5C(v147[0] + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v131 + 72) * v110, v127, type metadata accessor for Component);

    return (*(v111 + 56))(v112, 0, 1, v43);
  }

LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}

uint64_t sub_242D3685C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  sub_242CA321C(a1, &v8 - v4, &qword_27ECF23E8, &unk_242F13C40);
  sub_242F03720();
  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v6 = sub_242F04EE0();
  sub_242C6D138(v5, &qword_27ECF23E8, &unk_242F13C40);
  return v6 & 1;
}

uint64_t sub_242D36974(uint64_t a1, double a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(v2 + *(*v2 + 160) + 64) == 1)
  {
    if (qword_27ECEF4C0 != -1)
    {
      swift_once();
    }

    v7 = sub_242F039D0();
    __swift_project_value_buffer(v7, qword_27ED5D2E0);
    v8 = sub_242F039B0();
    v9 = sub_242F056E0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_242C53000, v8, v9, "Animation settled immidiately.", v10, 2u);
      MEMORY[0x245D287D0](v10, -1, -1);
    }

    v5 = *v3;
    v11 = v3 + *(*v3 + 120);
    v12 = *v11;
    if (*v11)
    {
      v13 = *(v11 + 8);

      v12(a1);
      sub_242C655DC(v12, v13);
      v5 = *v3;
    }
  }

  v14 = *(v5 + 144);
  swift_beginAccess();
  v15 = 0.0;
  if (*(*(v3 + v14) + 16))
  {
    v15 = a2;
  }

  return sub_242D347D8(v15);
}

uint64_t sub_242D36B28()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v2);
  v4 = v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3020, &qword_242F17A18);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  sub_242CA321C(v1, v12 - v6, &qword_27ECF3020, &qword_242F17A18);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3008, &qword_242F179F8);
  v9 = (*(*(v8 - 8) + 48))(v7, 2, v8);
  if (v9)
  {
    if (v9 == 1)
    {
      return 28789;
    }

    else
    {
      return 1853321060;
    }
  }

  else
  {
    sub_242CF6B3C(v7, v4, &qword_27ECF23E8, &unk_242F13C40);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    MEMORY[0x245D26660](0x2874736574736166, 0xE800000000000000);
    sub_242F05C20();
    MEMORY[0x245D26660](41, 0xE100000000000000);
    v11 = v12[0];
    sub_242C6D138(v4, &qword_27ECF23E8, &unk_242F13C40);
    return v11;
  }
}

void sub_242D36D1C(uint64_t (*a1)(char *, __int128 *), uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v11 = swift_slowAlloc();
      sub_242D36E9C(v11, v8, a3, v6, a2);
      MEMORY[0x245D287D0](v11, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v10 = v12 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v10, v9);
  sub_242D36F2C(v10, v8, a3, v6, a2);
  if (v3)
  {
    swift_willThrow();
  }
}

void *sub_242D36E9C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, __int128 *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_242D36F2C(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

void sub_242D36F2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, __int128 *), uint64_t a5)
{
  v42 = a5;
  v44 = a4;
  v36 = a2;
  v37 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  v43 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v38 = 0;
  v9 = 0;
  v45 = a3;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  v40 = a3 + 64;
  v41 = v14;
  if (v13)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v46 = (v13 - 1) & v13;
LABEL_10:
      v18 = v15 | (v9 << 6);
      v19 = v45;
      sub_242CA321C(v45[6] + *(v43 + 72) * v18, v8, &qword_27ECFC780, &qword_242F17930);
      v20 = v19[7];
      v39 = v18;
      v21 = (v20 + 112 * v18);
      v22 = *v21;
      v23 = v21[2];
      v59[1] = v21[1];
      v59[2] = v23;
      v59[0] = v22;
      v24 = v21[3];
      v25 = v21[4];
      v26 = v21[5];
      *(v60 + 9) = *(v21 + 89);
      v59[4] = v25;
      v60[0] = v26;
      v59[3] = v24;
      v27 = v21[1];
      v53 = *v21;
      v54 = v27;
      v28 = v21[2];
      v29 = v21[3];
      *(v58 + 9) = *(v21 + 89);
      v30 = v21[5];
      v57 = v21[4];
      v58[0] = v30;
      v55 = v28;
      v56 = v29;
      sub_242CA321C(v59, &v47, &qword_27ECF21A8, &qword_242F17990);
      v31 = v61;
      v32 = v44(v8, &v53);
      v61 = v31;
      if (v31)
      {
        v51 = v57;
        v52[0] = v58[0];
        *(v52 + 9) = *(v58 + 9);
        v47 = v53;
        v48 = v54;
        v49 = v55;
        v50 = v56;
        sub_242C6D138(&v47, &qword_27ECF21A8, &qword_242F17990);
        sub_242C6D138(v8, &qword_27ECFC780, &qword_242F17930);
        return;
      }

      v33 = v32;
      v51 = v57;
      v52[0] = v58[0];
      *(v52 + 9) = *(v58 + 9);
      v47 = v53;
      v48 = v54;
      v49 = v55;
      v50 = v56;
      sub_242C6D138(&v47, &qword_27ECF21A8, &qword_242F17990);
      sub_242C6D138(v8, &qword_27ECFC780, &qword_242F17930);
      if (v33)
      {
        *(v37 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
        if (__OFADD__(v38++, 1))
        {
          break;
        }
      }

      v10 = v40;
      v14 = v41;
      v13 = v46;
      if (!v46)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_17:
    sub_242D377A4(v37, v36, v38, v45);
  }

  else
  {
LABEL_5:
    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_17;
      }

      v17 = *(v10 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v46 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_242D37270(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF21F8, &qword_242F17F50);
  result = sub_242F05CB0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v34 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 32 * v16);
    v22 = v21[1];
    v37 = *v21;
    v36 = *(v21 + 16);
    v35 = v21[3];
    sub_242F06390();

    sub_242F04DD0();
    result = sub_242F063E0();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    v32 = *(v9 + 56) + 32 * v26;
    *v32 = v37;
    *(v32 + 8) = v22;
    *(v32 + 16) = v36;
    *(v32 + 24) = v35;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v34;
    if (!v5)
    {
      return v9;
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
      return v9;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_242D374E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0050, &qword_242F09608);
  result = sub_242F05CB0();
  v8 = a2;
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v39 = a2;
  v40 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v41 = (v10 - 1) & v10;
LABEL_16:
    v16 = 24 * (v13 | (v11 << 6));
    v17 = *(v4 + 48) + v16;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v4 + 56) + v16;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    v25 = v9;
    sub_242F06390();
    sub_242C7CE5C(v18, v19, v20);
    sub_242C7CE74(v22, v23, v24);
    Theme.ColorID.rawValue.getter();
    sub_242F04DD0();

    result = sub_242F063E0();
    v9 = v25;
    v26 = -1 << *(v25 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v12 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = 24 * v29;
    v35 = *(v25 + 48) + v34;
    *v35 = v18;
    *(v35 + 8) = v19;
    *(v35 + 16) = v20;
    v36 = *(v25 + 56) + v34;
    *v36 = v22;
    *(v36 + 8) = v23;
    *(v36 + 16) = v24;
    ++*(v25 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v40;
    v10 = v41;
    v8 = v39;
    if (!v5)
    {
      return v9;
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

    if (v11 >= v8)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v41 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_242D377A4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  v49 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v44 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2B48, &qword_242F16EC0);
  result = sub_242F05CB0();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v45 = a1;
  v46 = result;
  v44 = a2;
  v47 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v50 = (v14 - 1) & v14;
LABEL_16:
    v20 = v17 | (v15 << 6);
    v21 = a4[6];
    v22 = v48;
    v51 = *(v49 + 72);
    sub_242CA321C(v21 + v51 * v20, v48, &qword_27ECFC780, &qword_242F17930);
    v23 = (a4[7] + 112 * v20);
    v25 = v23[1];
    v24 = v23[2];
    v54 = *v23;
    v55 = v25;
    v56 = v24;
    v27 = v23[4];
    v26 = v23[5];
    v28 = v23[3];
    *(v59 + 9) = *(v23 + 89);
    v58 = v27;
    v59[0] = v26;
    v57 = v28;
    sub_242CF6B3C(v22, v52, &qword_27ECFC780, &qword_242F17930);
    v13 = v46;
    sub_242F06390();
    sub_242CA321C(&v54, &v53, &qword_27ECF21A8, &qword_242F17990);
    sub_242F03720();
    sub_242D3DC24(&qword_27ECF2258, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_242F04D90();
    result = sub_242F063E0();
    v29 = -1 << *(v13 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      a4 = v47;
      a2 = v44;
      a1 = v45;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v16 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    a4 = v47;
    a2 = v44;
    a1 = v45;
LABEL_26:
    *(v16 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    result = sub_242CF6B3C(v52, *(v13 + 48) + v32 * v51, &qword_27ECFC780, &qword_242F17930);
    v37 = (*(v13 + 56) + 112 * v32);
    v38 = *(v59 + 9);
    v40 = v58;
    v39 = v59[0];
    v37[3] = v57;
    v37[4] = v40;
    v37[5] = v39;
    *(v37 + 89) = v38;
    v42 = v55;
    v41 = v56;
    *v37 = v54;
    v37[1] = v42;
    v37[2] = v41;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v14 = v50;
    if (!a3)
    {
      return v13;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v50 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_242D37C00@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = sub_242CE5568(a1);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v29 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v17 = v29;
    }

    v18 = *(v17 + 48);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
    sub_242C6D138(v18 + *(*(v19 - 8) + 72) * v15, &qword_27ECFC780, &qword_242F17930);
    v20 = *(v17 + 56);
    v21 = a2(0);
    v28 = *(v21 - 8);
    sub_242D39C68(v20 + *(v28 + 72) * v15, a6, a3);
    a4(v15, v17);
    *v11 = v17;
    v22 = *(v28 + 56);
    v23 = a6;
    v24 = 0;
    v25 = v21;
  }

  else
  {
    v26 = a2(0);
    v22 = *(*(v26 - 8) + 56);
    v25 = v26;
    v23 = a6;
    v24 = 1;
  }

  return v22(v23, v24, 1, v25);
}

uint64_t sub_242D37DC0(char a1)
{
  v2 = v1;
  v3 = sub_242CE561C(a1 & 1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_242D0301C();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_242ED0A70(v8, v7);
  *v2 = v7;
  return v9;
}

unint64_t sub_242D37EF8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_242C83620(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_242D380A0(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

char *sub_242D37FCC(char *result, int64_t a2, char a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_242C83A00(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_242D3822C(v7, a2, 1, a3 & 1);
  *v3 = v5;
  return result;
}

unint64_t sub_242D380A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for Component(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_242C6D138(a4, &qword_27ECF3170, &qword_242F17E38);
  }

  if (v17 < 1)
  {
    return sub_242C6D138(a4, &qword_27ECF3170, &qword_242F17E38);
  }

  result = sub_242D39B5C(a4, v15, type metadata accessor for Component);
  if (v12 >= v17)
  {
    return sub_242C6D138(a4, &qword_27ECF3170, &qword_242F17E38);
  }

LABEL_23:
  __break(1u);
  return result;
}

char *sub_242D3822C(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = &result[v7 + 32];
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + a2);
      if (&v8[a3] != v12 || result >= &v12[v11])
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4 & 1;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_242D382EC(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for Component(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  v16 = *v2;
  result = sub_242CDAC68(a1, a2, *v2);
  if (!v3)
  {
    v44 = 0;
    if (v18)
    {
      return *(v16 + 16);
    }

    v39 = v15;
    v40 = a1;
    v36 = v12;
    v37 = v9;
    v35 = v2;
    v43 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return v43;
      }

      v38 = v7;
      while (v19 < v20)
      {
        v22 = v16;
        v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v23 = v16 + v41;
        v24 = *(v7 + 72);
        v42 = v24 * v19;
        v25 = v39;
        sub_242D39B5C(v23 + v24 * v19, v39, type metadata accessor for Component);
        v26 = a2;
        v27 = v44;
        v28 = v40(v25);
        result = sub_242D39AFC(v25, type metadata accessor for Component);
        v44 = v27;
        if (v27)
        {
          return result;
        }

        if (v28)
        {
          a2 = v26;
          v7 = v38;
          v16 = v22;
        }

        else
        {
          v29 = v43;
          if (v19 == v43)
          {
            a2 = v26;
            v7 = v38;
            v16 = v22;
          }

          else
          {
            if ((v43 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v30 = *v21;
            if (v43 >= *v21)
            {
              goto LABEL_27;
            }

            v31 = v24 * v43;
            result = sub_242D39B5C(v23 + v24 * v43, v36, type metadata accessor for Component);
            if (v19 >= v30)
            {
              goto LABEL_28;
            }

            v32 = v42;
            sub_242D39B5C(v23 + v42, v37, type metadata accessor for Component);
            v16 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_242D37E58(v22);
            }

            a2 = v26;
            v33 = v16 + v41;
            result = sub_242D3A00C(v37, v16 + v41 + v31);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_29;
            }

            result = sub_242D3A00C(v36, v33 + v32);
            *v35 = v16;
            v7 = v38;
            v29 = v43;
          }

          v43 = v29 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return v43;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_242D3861C(uint64_t *a1, char a2)
{
  v4 = *a1;
  result = sub_242D12740(*a1, a2 & 1);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    return *(v4 + 16);
  }

  if (!__OFADD__(result, 1))
  {
    v9 = (v4 + 16);
    v8 = *(v4 + 16);
    if (result + 1 == v8)
    {
      return v7;
    }

    if (a2)
    {
      v10 = 0x32656E6F7ALL;
    }

    else
    {
      v10 = 0x31656E6F7ALL;
    }

    for (i = result + 33; ; ++i)
    {
      v13 = i - 32;
      if (i - 32 >= v8)
      {
        break;
      }

      if (*(v4 + i))
      {
        v14 = 0x32656E6F7ALL;
      }

      else
      {
        v14 = 0x31656E6F7ALL;
      }

      if (v14 == v10)
      {
        result = swift_bridgeObjectRelease_n();
      }

      else
      {
        v15 = sub_242F06110();
        result = swift_bridgeObjectRelease_n();
        if ((v15 & 1) == 0)
        {
          if (v13 != v7)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_28;
            }

            if (v7 >= *v9)
            {
              goto LABEL_29;
            }

            if (v13 >= *v9)
            {
              goto LABEL_30;
            }

            v16 = *(v4 + 32 + v7);
            v17 = *(v4 + i);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_242D37E80(v4);
              v4 = result;
            }

            *(v4 + v7 + 32) = v17;
            *(v4 + i) = v16;
            *a1 = v4;
          }

          ++v7;
        }
      }

      v9 = (v4 + 16);
      v8 = *(v4 + 16);
      v12 = i - 31;
      if (v12 == v8)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s14CarPlayAssetUI28ClusterTransitionCoordinatorC13ListDirectionO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for ClusterTransitionCoordinator.ListDirection(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3160, &qword_242F17D20);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v14 = *(v13 + 56);
  sub_242D39B5C(a1, &v20 - v11, type metadata accessor for ClusterTransitionCoordinator.ListDirection);
  sub_242D39B5C(a2, &v12[v14], type metadata accessor for ClusterTransitionCoordinator.ListDirection);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3008, &qword_242F179F8);
  v16 = *(*(v15 - 8) + 48);
  v17 = v16(v12, 2, v15);
  if (!v17)
  {
    sub_242D39B5C(v12, v9, type metadata accessor for ClusterTransitionCoordinator.ListDirection);
    if (!v16(&v12[v14], 2, v15))
    {
      sub_242CF6B3C(&v12[v14], v6, &qword_27ECF23E8, &unk_242F13C40);
      sub_242F03720();
      sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v18 = sub_242F04EE0();
      sub_242C6D138(v6, &qword_27ECF23E8, &unk_242F13C40);
      sub_242C6D138(v9, &qword_27ECF23E8, &unk_242F13C40);
      sub_242D39AFC(v12, type metadata accessor for ClusterTransitionCoordinator.ListDirection);
      return v18 & 1;
    }

    sub_242C6D138(v9, &qword_27ECF23E8, &unk_242F13C40);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v12[v14], 2, v15) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v12[v14], 2, v15) != 2)
  {
LABEL_9:
    sub_242C6D138(v12, &qword_27ECF3160, &qword_242F17D20);
    v18 = 0;
    return v18 & 1;
  }

  sub_242D39AFC(v12, type metadata accessor for ClusterTransitionCoordinator.ListDirection);
  v18 = 1;
  return v18 & 1;
}

uint64_t _s14CarPlayAssetUI28ClusterTransitionCoordinatorC06LayoutF0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Layout(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98, &qword_242F17960);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3168, &qword_242F17D28);
  MEMORY[0x28223BE20](v14);
  v42 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  if ((sub_242F03700() & 1) == 0)
  {
    goto LABEL_16;
  }

  v37 = v10;
  v38 = v7;
  v19 = type metadata accessor for ClusterTransitionCoordinator.LayoutTransition(0);
  v20 = *(v19 + 20);
  v21 = *(v14 + 48);
  v39 = v19;
  v40 = a1;
  sub_242CA321C(a1 + v20, v18, &qword_27ECF2F98, &qword_242F17960);
  v41 = a2;
  sub_242CA321C(a2 + v20, &v18[v21], &qword_27ECF2F98, &qword_242F17960);
  v22 = *(v5 + 48);
  if (v22(v18, 1, v4) == 1)
  {
    if (v22(&v18[v21], 1, v4) == 1)
    {
      sub_242C6D138(v18, &qword_27ECF2F98, &qword_242F17960);
      goto LABEL_9;
    }

LABEL_7:
    v23 = v18;
LABEL_15:
    sub_242C6D138(v23, &qword_27ECF3168, &qword_242F17D28);
    goto LABEL_16;
  }

  sub_242CA321C(v18, v13, &qword_27ECF2F98, &qword_242F17960);
  if (v22(&v18[v21], 1, v4) == 1)
  {
    sub_242D39AFC(v13, type metadata accessor for Layout);
    goto LABEL_7;
  }

  v24 = &v18[v21];
  v25 = v38;
  sub_242D39C68(v24, v38, type metadata accessor for Layout);
  sub_242F03720();
  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v26 = sub_242F04EE0();
  sub_242D39AFC(v25, type metadata accessor for Layout);
  sub_242D39AFC(v13, type metadata accessor for Layout);
  sub_242C6D138(v18, &qword_27ECF2F98, &qword_242F17960);
  if ((v26 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v28 = v39;
  v27 = v40;
  v29 = *(v39 + 24);
  v30 = *(v14 + 48);
  v31 = v42;
  sub_242CA321C(v40 + v29, v42, &qword_27ECF2F98, &qword_242F17960);
  sub_242CA321C(v41 + v29, v31 + v30, &qword_27ECF2F98, &qword_242F17960);
  if (v22(v31, 1, v4) != 1)
  {
    v32 = v37;
    sub_242CA321C(v31, v37, &qword_27ECF2F98, &qword_242F17960);
    if (v22((v31 + v30), 1, v4) != 1)
    {
      v35 = v38;
      sub_242D39C68(v31 + v30, v38, type metadata accessor for Layout);
      sub_242F03720();
      sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v36 = sub_242F04EE0();
      sub_242D39AFC(v35, type metadata accessor for Layout);
      sub_242D39AFC(v32, type metadata accessor for Layout);
      sub_242C6D138(v31, &qword_27ECF2F98, &qword_242F17960);
      if ((v36 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    sub_242D39AFC(v32, type metadata accessor for Layout);
    goto LABEL_14;
  }

  if (v22((v31 + v30), 1, v4) != 1)
  {
LABEL_14:
    v23 = v31;
    goto LABEL_15;
  }

  sub_242C6D138(v31, &qword_27ECF2F98, &qword_242F17960);
LABEL_19:
  if (*(v27 + *(v28 + 28)) == *(v41 + *(v28 + 28)))
  {
    v33 = *(v27 + *(v28 + 32)) ^ *(v41 + *(v28 + 32)) ^ 1;
    return v33 & 1;
  }

LABEL_16:
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_242D39100(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_242D1CB90(a1, v5, v1 + v4, v6);
}

uint64_t sub_242D391AC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_242D1DB74(a1, v4, v5);
}

void sub_242D3922C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = (a1 + 64);
    do
    {
      v5 = v3;
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *(v4 - 3);
      v9 = *v4;
      v10 = *(v4 - 4);
      v11 = v8;
      v12 = v6;
      v13 = v7;
      v14 = v9;
      sub_242CF6A84(v10, v8, v6, v7, v9);
      sub_242D20B28(&v10);
      sub_242CF6AD8(v10, v11, v12, v13, v14);
      if (v1)
      {
        break;
      }

      v3 = v5 - 1;
      v4 += 40;
    }

    while (v5);
  }
}

void sub_242D392D8(uint64_t *a1, unint64_t a2, int a3)
{
  v56 = a3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3008, &qword_242F179F8);
  v5 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3020, &qword_242F17A18);
  MEMORY[0x28223BE20](v7 - 8);
  v53 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v49 - v10;
  v66 = type metadata accessor for Component(0);
  v68 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v52 = &v49 - v15;
  MEMORY[0x28223BE20](v16);
  v51 = &v49 - v17;
  v18 = a1[1];
  v65 = *a1;
  if (qword_27ECEF4D0 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v19 = sub_242F039D0();
    __swift_project_value_buffer(v19, qword_27ED5D310);

    v20 = sub_242F039B0();
    v21 = sub_242F05720();

    v22 = os_log_type_enabled(v20, v21);
    v58 = a2;
    v64 = v11;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v69[0] = v24;
      *v23 = 136315138;
      if (v18)
      {
        v70[0] = v65;
        v70[1] = v18;

        v25 = sub_242F04F90();
        v27 = v26;
      }

      else
      {
        v27 = 0x8000000242F5A160;
        v25 = 0xD00000000000002DLL;
      }

      v28 = sub_242C8FD38(v25, v27, v69);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_242C53000, v20, v21, "Updating carousels active item to %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v24);
      MEMORY[0x245D287D0](v24, -1, -1);
      MEMORY[0x245D287D0](v23, -1, -1);

      a2 = v58;
    }

    else
    {
    }

    if (!(a2 >> 62))
    {
      v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        return;
      }

      goto LABEL_10;
    }

    v11 = sub_242F059B0();
    if (!v11)
    {
      break;
    }

LABEL_10:
    v29 = 0;
    v60 = a2 & 0xFFFFFFFFFFFFFF8;
    v61 = a2 & 0xC000000000000001;
    v59 = a2 + 32;
    v50 = (v5 + 56);
    v57 = v11;
    while (v61)
    {
      v30 = MEMORY[0x245D270D0](v29, a2);
      v31 = __OFADD__(v29, 1);
      v32 = v29 + 1;
      if (v31)
      {
        goto LABEL_40;
      }

LABEL_16:
      v63 = v32;
      v33 = *(*v30 + 144);
      swift_beginAccess();
      v34 = v30;
      v35 = *(v30 + v33);
      v36 = *(v35 + 16);
      if (v36)
      {
        v62 = v34;
        v67 = v35 + ((*(v68 + 80) + 32) & ~*(v68 + 80));

        a2 = 0;
        while (1)
        {
          if (a2 >= *(v35 + 16))
          {
            goto LABEL_41;
          }

          sub_242D39B5C(v67 + *(v68 + 72) * a2, v13, type metadata accessor for Component);
          v37 = *&v13[*(v66 + 36)];
          if (!*(v37 + 16))
          {
            break;
          }

          v5 = v13;
          v11 = v18;
          v38 = type metadata accessor for Slot(0);
          v39 = v64;
          sub_242CA321C(v37 + *(v38 + 36) + ((*(*(v38 - 8) + 80) + 32) & ~*(*(v38 - 8) + 80)), v64, &qword_27ECF0B08, &unk_242F17EB0);
          v40 = type metadata accessor for Instrument(0);
          if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
          {
            sub_242C6D138(v39, &qword_27ECF0B08, &unk_242F17EB0);
            v41 = 0xEB00000000746567;
            v42 = 0x6469577974706D45;
          }

          else
          {
            memcpy(v70, (v39 + *(v40 + 20)), sizeof(v70));
            sub_242CF6BA4(v70, v69);
            sub_242D39AFC(v39, type metadata accessor for Instrument);
            memcpy(v69, v70, sizeof(v69));
            v42 = Instrument.Kind.name.getter();
            v41 = v43;
            sub_242CF6C60(v70);
            v13 = v5;
            if (!v41)
            {
              break;
            }
          }

          if (v18)
          {
            v13 = v5;
            if (v42 == v65 && v41 == v18)
            {
              goto LABEL_35;
            }

            v44 = sub_242F06110();

            if (v44)
            {
              goto LABEL_36;
            }

            goto LABEL_20;
          }

          v13 = v5;
LABEL_19:

LABEL_20:
          ++a2;
          sub_242D39AFC(v13, type metadata accessor for Component);
          if (v36 == a2)
          {

            goto LABEL_37;
          }
        }

        if (!v18)
        {

LABEL_35:

LABEL_36:

          v45 = v52;
          sub_242D39C68(v13, v52, type metadata accessor for Component);
          v46 = v51;
          sub_242D39C68(v45, v51, type metadata accessor for Component);
          v47 = v54;
          sub_242CA321C(v46, v54, &qword_27ECF23E8, &unk_242F13C40);
          v48 = v53;
          sub_242CF6B3C(v47, v53, &qword_27ECF23E8, &unk_242F13C40);
          (*v50)(v48, 0, 2, v55);
          sub_242D32994(v48, v56 & 1);

          sub_242C6D138(v48, &qword_27ECF3020, &qword_242F17A18);
          sub_242D39AFC(v46, type metadata accessor for Component);
LABEL_37:
          v11 = v57;
          a2 = v58;
          goto LABEL_12;
        }

        goto LABEL_19;
      }

LABEL_12:
      v29 = v63;
      if (v63 == v11)
      {
        return;
      }
    }

    if (v29 >= *(v60 + 16))
    {
      goto LABEL_42;
    }

    v30 = *(v59 + 8 * v29);

    v31 = __OFADD__(v29, 1);
    v32 = v29 + 1;
    if (!v31)
    {
      goto LABEL_16;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }
}

uint64_t sub_242D39AFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_242D39B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242D39C68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_242D39CD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Zone(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_242D39D34(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = [objc_opt_self() standardUserDefaults];
  if (v2)
  {
    v6[0] = v1;
    v6[1] = v2;
    v4 = sub_242F06100();
    sub_242D3E0BC(v6);
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_242F04F00();
  [v3 setObject:v4 forKey:v5];

  swift_unknownObjectRelease();
}

void sub_242D39DFC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = [objc_opt_self() standardUserDefaults];
  if (v2)
  {
    v6[0] = v1;
    v6[1] = v2;
    v4 = sub_242F06100();
    sub_242D3E0BC(v6);
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_242F04F00();
  [v3 setObject:v4 forKey:v5];

  swift_unknownObjectRelease();
}

unint64_t sub_242D39EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for Component(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_242D3A00C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Component(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_242D3A0E4(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_242D3A188(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

unint64_t sub_242D3A26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3038;
  if (!qword_27ECF3038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3038);
  }

  return result;
}

unint64_t sub_242D3A370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3040;
  if (!qword_27ECF3040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3040);
  }

  return result;
}

unint64_t sub_242D3A3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3048;
  if (!qword_27ECF3048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3048);
  }

  return result;
}

unint64_t sub_242D3A418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3050;
  if (!qword_27ECF3050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3050);
  }

  return result;
}

uint64_t keypath_get_104Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_242CA321C(v4 + v5, a3, &qword_27ECF2EC8, &qword_242F175C0);
}

void sub_242D3A544(uint64_t a1)
{
  sub_242D3B1E4(319, &qword_27ECF3068, &qword_27ECF2FA0, &qword_242F17968);
  if (v1 <= 0x3F)
  {
    sub_242D3B1E4(319, &qword_27ECF3070, &qword_27ECF2FA8, &qword_242F17970);
    if (v2 <= 0x3F)
    {
      sub_242D3B30C(319, &qword_27ECF3078, type metadata accessor for RequestContentModel);
      if (v3 <= 0x3F)
      {
        sub_242D3B194();
        if (v4 <= 0x3F)
        {
          sub_242D3B1E4(319, &qword_27ECF3088, &qword_27ECF2FD0, &qword_242F17978);
          if (v5 <= 0x3F)
          {
            sub_242D3B1E4(319, &qword_27ECF3090, &qword_27ECF2FD8, &qword_242F17980);
            if (v6 <= 0x3F)
            {
              sub_242D3B1E4(319, &qword_27ECF3098, &qword_27ECF2F98, &qword_242F17960);
              if (v7 <= 0x3F)
              {
                sub_242D3B1E4(319, &qword_27ECF30A0, &qword_27ECF2F90, &qword_242F17958);
                if (v8 <= 0x3F)
                {
                  sub_242D3B1E4(319, &qword_27ECF30A8, &qword_27ECF2F88, &qword_242F17950);
                  if (v9 <= 0x3F)
                  {
                    sub_242D3B1E4(319, &qword_27ECF30B0, &qword_27ECF2F80, &qword_242F17948);
                    if (v10 <= 0x3F)
                    {
                      sub_242D3B1E4(319, &qword_27ECF30B8, &qword_27ECF2FE0, &qword_242F17988);
                      if (v11 <= 0x3F)
                      {
                        swift_updateClassMetadata2();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_242D3B194()
{
  if (!qword_27ECF3080)
  {
    v0 = sub_242F03AB0();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF3080);
    }
  }
}

void sub_242D3B1E4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_242F03AB0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_242D3B260(uint64_t a1)
{
  sub_242F03720();
  if (v1 <= 0x3F)
  {
    sub_242D3B30C(319, &qword_27ECF30D0, type metadata accessor for Layout);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_242D3B30C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_242F05860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_242D3B3C8(uint64_t a1)
{
  sub_242D3B420();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_242D3B420()
{
  if (!qword_27ECF30F8)
  {
    sub_242D3B468(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF30F8);
    }
  }
}

void sub_242D3B468(uint64_t a1)
{
  if (!qword_27ECF3100)
  {
    v2 = type metadata accessor for Component(255);
    v3 = sub_242F03720();
    v5 = type metadata accessor for TaggedValue(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27ECF3100);
    }
  }
}

uint64_t sub_242D3B510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_242F03720();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_242D3B630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC8, &qword_242F175C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_242D3B6A0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, unint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, void *a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, unint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  v65 = a65 >> 60;
  if ((a65 >> 60) > 3)
  {
    switch(v65)
    {
      case 4:
        goto LABEL_19;
      case 6:
        goto LABEL_18;
      case 7:

        sub_242D3D334(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
        break;
    }
  }

  else
  {
    if (v65 == 1)
    {
      sub_242D3BB2C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
LABEL_19:

      return;
    }

    if (v65 != 2)
    {
      if (v65 != 3)
      {
        return;
      }

LABEL_18:

      goto LABEL_19;
    }

    sub_242D3CF80(a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59);
  }
}

void sub_242D3BB2C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, void *a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, unint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, unint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  v65 = (a65 >> 57) & 7;
  if (((a65 >> 57) & 7) <= 2)
  {
    if (!v65)
    {

LABEL_20:

      return;
    }

    if (v65 != 1)
    {
      if (v65 == 2)
      {
      }

      return;
    }

LABEL_19:

    goto LABEL_20;
  }

  switch(v65)
  {
    case 3:

      sub_242D3C034(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
      break;
    case 4:
      goto LABEL_19;
    case 5:

      sub_242D3C664(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
      break;
  }
}

void sub_242D3C034(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  switch(a68 >> 60)
  {
    case 0uLL:
    case 1uLL:
    case 3uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:

      sub_242C7CEB0(a13, a14, a15);
      sub_242C7CEB0(a16, a17, a18);
      sub_242C7CEB0(a19, a20, a21);

      sub_242C94844(a31, a32, a33, a34, a35, a36, a37);

      goto LABEL_3;
    case 2uLL:

      sub_242C7CEB0(a9, a10, a11);
      sub_242C7CEB0(a12, a13, a14);

      sub_242D3C4A8(a15, a16, a17, a18, a19, a20);
      break;
    case 4uLL:
      sub_242D3C4F8(a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
      sub_242C7CEB0(a45, a46, a47);
      sub_242C7CEB0(a48, a49, a50);
      sub_242C7CEB0(a51, a52, a53);
      sub_242C7CEB0(a54, a55, a56);
      sub_242C7CEB0(a57, a58, a59);
      sub_242C7CEB0(a60, a61, a62);
      sub_242C7CEB0(a63, a64, a65);
      sub_242C7CEB0(a66, a67, a68);
LABEL_3:

      break;
    case 5uLL:

      sub_242C55484(a14, a15, a16);
      break;
    default:
      return;
  }
}

void sub_242D3C4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

void sub_242D3C4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  if (a5)
  {

    sub_242C7CEB0(a13, a14, a15);
    sub_242C7CEB0(a16, a17, a18);
    sub_242C7CEB0(a19, a20, a21);

    sub_242C94844(a31, a32, a33, a34, a35, a36, a37);
  }
}

uint64_t sub_242D3C664(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, unint64_t a7, uint64_t a8, uint64_t a9, void *a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, unint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33, unint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int64_t a43, unint64_t a44)
{
  switch((a44 >> 52) & 8 | (a34 >> 62) | (a44 >> 45) & 4)
  {
    case 0uLL:

      sub_242C6CEC0(a2, a3);
      sub_242D3CBB8(a5, a6, a7, a8, a9, a10, a11);
      sub_242D3CBFC(a13, a14, a15, a16, a17, a18, a19, a20, a21);

      sub_242C6CEC0(a24, a25);
      sub_242D3CBB8(a27, a28, a29, a30, a31, a32, a33);
      v63 = a43;
      v48 = a35;
      v49 = a36;
      v50 = a37;
      v51 = a38;
      v52 = a39;
      v53 = a40;
      v54 = a41;
      v55 = a42;
      goto LABEL_3;
    case 1uLL:
      sub_242D3CBDC(a8, a9, a10, a11);
      goto LABEL_13;
    case 2uLL:
      sub_242D3CBB8(result, a2, a3, a4, a5, a6, a7);

      return sub_242D3CC90(a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    case 3uLL:
    case 5uLL:
    case 0xCuLL:
    case 0xDuLL:

      sub_242C6CEC0(a2, a3);
      sub_242D3CBB8(a5, a6, a7, a8, a9, a10, a11);
      v63 = a21;
      v48 = a13;
      v49 = a14;
      v50 = a15;
      v51 = a16;
      v52 = a17;
      v53 = a18;
      v54 = a19;
      v55 = a20;
LABEL_3:

      return sub_242D3CBFC(v48, v49, v50, v51, v52, v53, v54, v55, v63);
    case 4uLL:

      return sub_242D3CBB8(result, a2, a3, a4, a5, a6, a7);
    case 6uLL:
      v65 = a44 & 0xFF7F7FFFFFFFFFFFLL;
      v64 = a34 & 0x3FFFFFFFFFFFFFFFLL;

      return sub_242D3CD20(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v64, a35, a36, a37, a38, a39, a40, a41, a42, a43, v65);
    case 7uLL:

      return sub_242C7CEB0(a6, a7, a8);
    case 8uLL:
    case 9uLL:
    case 0xAuLL:

      return sub_242D3CF38(a18, a19, a20, a21, a22, a23, a24, a25);
    case 0xBuLL:
LABEL_13:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_242D3CBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (((a7 >> 38) & 3) == 2)
  {
    return sub_242D3CBDC(a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_242D3CBDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_242C7CEB0(a2, a3, a4);
  }

  return result;
}

uint64_t sub_242D3CBFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  if (result)
  {

    return sub_242D3CBB8(a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

uint64_t sub_242D3CC90(uint64_t result, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a5 >> 62) <= 1)
  {
  }

  if (a5 >> 62 == 2)
  {
  }

  return v11;
}

uint64_t sub_242D3CD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, unint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, unint64_t a44)
{
  if ((a44 & 0x8000000000000000) != 0)
  {

    sub_242C6CEC0(a3, a4);
    sub_242D3CBB8(a6, a7, a8, a9, a10, a11, a12);
    sub_242D3CBFC(a14, a15, a16, a17, a18, a19, a20, a21, a22);

    sub_242C6CEC0(a25, a26);
    sub_242D3CBB8(a28, a29, a30, a31, a32, a33, a34);
    v61 = a44;
    a13 = a36;
    v50 = a37;
    v51 = a38;
    v52 = a39;
    v53 = a40;
    v48 = a41;
    v54 = a42;
    v55 = a43;
  }

  else
  {

    sub_242C6CEC0(a2, a3);
    sub_242D3CBB8(a5, a6, a7, a8, a9, a10, a11);
    v48 = a18;
    v61 = a21;
    v50 = a14;
    v51 = a15;
    v52 = a16;
    v53 = a17;
    v54 = a19;
    v55 = a20;
  }

  return sub_242D3CBFC(a13, v50, v51, v52, v53, v48, v54, v55, v61);
}

uint64_t sub_242D3CF38(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
  }

  return result;
}

void sub_242D3CF80(void *result, uint64_t a2, void *a3, uint64_t a4, char a5, uint64_t a6, void *a7, uint64_t a8, void *a9, uint64_t a10, char a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  if (a26 != 1)
  {
    sub_242C7F724(result, a2, a3, a4, a5);
    sub_242C7F724(a7, a8, a9, a10, a11);
    sub_242C7F724(a13, a14, a15, a16, a17);
    sub_242C7F724(a19, a20, a21, a22, a23);

    sub_242D3D21C(a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
  }
}

void sub_242D3D21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a2)
  {

    sub_242C7CEB0(a25, a26, a27);
    sub_242C7CEB0(a28, a29, a30);

    sub_242C7CEB0(a31, a32, a33);
  }
}

void sub_242D3D334(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, char a7, uint64_t a8, void *a9, uint64_t a10, void *a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (a2)
  {

    sub_242C7F724(a3, a4, a5, a6, a7);
    sub_242C7F724(a9, a10, a11, a12, a13);

    sub_242D3D47C(a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
  }
}

void sub_242D3D47C(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5, uint64_t a6, void *a7, uint64_t a8, void *a9, uint64_t a10, char a11)
{
  if ((~a5 & 0xFE) != 0)
  {
    sub_242C7F724(a1, a2, a3, a4, a5);

    sub_242C7F724(a7, a8, a9, a10, a11);
  }
}

uint64_t sub_242D3D4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v19 != 2)
    {
      sub_242CD5324(a1, a2, a3, a4, a5);
      sub_242CD53F8(a6, a7, a8, a9, a10);
      sub_242CD54A4(a11, a12, a13);
      goto LABEL_11;
    }

    sub_242CD5324(a1, a2, a3, a4, a5);
    sub_242CD54A4(a6, a7, a8);
    sub_242D3D654(a9, a10, a11, a12);
  }

  else
  {
    if (!v19)
    {
      sub_242CD5324(a1, a2, a3, a4, a5);
      sub_242CD54A4(a6, a7, a8);
      sub_242D3D654(a9, a10, a11, a12);
LABEL_11:
    }

    sub_242CD5324(a1, a2, a3, a4, a5);
    sub_242CD54A4(a6, a7, a8);
  }
}

void sub_242D3D654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_242D3D698()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC8, &qword_242F175C0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Zone(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for Component(0) - 8);
  v8 = *(v0 + v6);
  v9 = v0 + ((v6 + *(v7 + 80) + 8) & ~*(v7 + 80));
  v10 = *(v9 + *(v7 + 64));

  return sub_242D23D2C(v0 + v2, v0 + v5, v8, v9, v10);
}

uint64_t sub_242D3D804()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_242D3D8B8()
{
  v1 = *(type metadata accessor for Zone(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + v3);
  v5 = *(v0 + 16);
  v6 = *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8);
  v7 = v0 + (((v3 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_242D2883C(v5, v0 + v2, v4, v6, v8, v9);
}

uint64_t objectdestroy_295Tm()
{
  v1 = *(type metadata accessor for PopoverModel(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_242F03720();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v0 + v3 + *(type metadata accessor for Instrument(0) + 20);
  v22 = *(v6 + 464);
  v23 = *(v6 + 480);
  v20 = *(v6 + 432);
  v21 = *(v6 + 448);
  v18 = *(v6 + 400);
  v19 = *(v6 + 416);
  v16 = *(v6 + 368);
  v17 = *(v6 + 384);
  v14 = *(v6 + 336);
  v15 = *(v6 + 352);
  v12 = *(v6 + 304);
  v13 = *(v6 + 320);
  v10 = *(v6 + 272);
  v11 = *(v6 + 288);
  v8 = *(v6 + 240);
  v9 = *(v6 + 256);
  sub_242D3B6A0(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72), *(v6 + 80), *(v6 + 88), *(v6 + 96), *(v6 + 104), *(v6 + 112), *(v6 + 120), *(v6 + 128), *(v6 + 136), *(v6 + 144), *(v6 + 152), *(v6 + 160), *(v6 + 168), *(v6 + 176), *(v6 + 184), *(v6 + 192), *(v6 + 200), *(v6 + 208), *(v6 + 216), *(v6 + 224), *(v6 + 232), v8, *(&v8 + 1), v9, *(&v9 + 1), v10, *(&v10 + 1), v11, *(&v11 + 1), v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, *(&v16 + 1), v17, *(&v17 + 1), v18, *(&v18 + 1), v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, SBYTE8(v23), *(v6 + 496));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_242D3DC24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_242D3DC6C()
{
  result = qword_27ECFC060;
  if (!qword_27ECFC060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ECFC610, &qword_242F48C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC060);
  }

  return result;
}

unint64_t sub_242D3DCD0()
{
  result = qword_27ECFC600;
  if (!qword_27ECFC600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECFC600);
  }

  return result;
}

uint64_t objectdestroy_305Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_242D3DE10(uint64_t a1)
{
  if ((*(a1 + 512) >> 3) > 0x80000000)
  {
    return -(*(a1 + 512) >> 3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242D3DE48(uint64_t a1)
{
  if (((*(a1 + 536) >> 57) & 7u) <= 5)
  {
    return (*(a1 + 536) >> 57) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_242D3DE8C(uint64_t a1)
{
  sub_242F03720();
  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  return sub_242F04EE0() & 1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_242D3DFC0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for ClusterTransitionCoordinator.ComponentTransition(0) - 8);
  v5 = *(v0 + 16);
  v6 = (v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));

  return sub_242D2C624(v5, v0 + v2, v6);
}

uint64_t objectdestroy_345Tm()
{

  sub_242D1162C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));

  return MEMORY[0x2821FE8E8](v0, 121, 7);
}

uint64_t String.capitalizedFirstLetter.getter(uint64_t a1, unint64_t a2)
{

  sub_242CD5FD0(1, a1, a2);

  sub_242D3E450(v4, v5, v6);
  v7 = sub_242F058A0();

  sub_242D3E4A4(1uLL, a1, a2);

  sub_242D3E554(v8, v9, v10);
  sub_242F05040();

  return v7;
}

uint64_t String.sha256.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_242F04F80();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242F04F70();
  v6 = sub_242F04F40();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    return 0;
  }

  countAndFlagsBits = Data.sha256()()._countAndFlagsBits;
  sub_242C6D208(v6, v8);
  return countAndFlagsBits;
}

unint64_t sub_242D3E450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF31E0;
  if (!qword_27ECF31E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF31E0);
  }

  return result;
}

unint64_t sub_242D3E4A4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_242F05020();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_242F05140();
}

unint64_t sub_242D3E554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF31E8;
  if (!qword_27ECF31E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF31E8);
  }

  return result;
}

BOOL Array<A>.hasDuplicates.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_242F053E0();

  swift_getWitnessTable();
  sub_242F05530();
  v3 = sub_242F05500();

  return v3 != sub_242F05380();
}

uint64_t IterateDirection.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

uint64_t Array.nextElementByLooping(from:direction:where:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a7;
  v13 = sub_242F05860();
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = *a2;
  if (sub_242F05380() <= a1)
  {
    goto LABEL_9;
  }

  LOBYTE(v42) = v16;
  v17 = sub_242D3EA70(a1, &v42, a5, a6);
  v19 = v18;
  v44 = v17;
  *&v40 = v18;
  sub_242F053E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31F0, &qword_242F17F70);
  swift_getWitnessTable();
  sub_242D3EB9C();
  sub_242F04EB0();
  v39 = v42;
  v40 = v42;
  v41 = v43;
  sub_242F05900();
  WitnessTable = swift_getWitnessTable();
  v36 = a3;
  v37 = a4;
  sub_242F05180();
  swift_unknownObjectRelease();
  v21 = *(a6 - 8);
  v22 = *(v21 + 48);
  if (v22(v15, 1, a6) != 1)
  {

    v32 = v38;
    (*(v21 + 32))(v38, v15, a6);
    return (*(v21 + 56))(v32, 0, 1, a6);
  }

  if (v19 < 0)
  {
    __break(1u);
LABEL_9:
    result = sub_242F05C60();
    __break(1u);
    return result;
  }

  *&v39 = WitnessTable;
  v23 = sub_242F053F0();
  v25 = v24;
  v27 = v26;
  v33 = 0;
  v28 = v15;
  v30 = v29;

  *&v42 = v23;
  *(&v42 + 1) = v25;
  *&v43 = v27;
  *(&v43 + 1) = v30;
  sub_242F05180();
  swift_unknownObjectRelease();
  result = (v22)(v28, 1, a6);
  if (result != 1)
  {
    return (*(v34 + 8))(v28, v35);
  }

  return result;
}

uint64_t sub_242D3EA70(uint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (*a2)
  {
    sub_242F053E0();

    swift_getWitnessTable();
    v6 = sub_242F051D0();
    result = sub_242F05380();
    if (!__OFSUB__(result, v5))
    {
      if (result)
      {
        if (result != -1 || v5 != 0x7FFFFFFFFFFFFFFFLL)
        {
          return v6;
        }

        goto LABEL_17;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (__OFADD__(result, 1))
  {
    goto LABEL_14;
  }

  result = sub_242F05380();
  if (!result)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 != 0x7FFFFFFFFFFFFFFFLL || result != -1)
  {

    return a3;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_242D3EB9C()
{
  result = qword_27ECF31F8;
  if (!qword_27ECF31F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF31F0, &qword_242F17F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF31F8);
  }

  return result;
}

uint64_t Array.nextElementByLooping(from:direction:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  if (sub_242F05380() <= a1)
  {
    result = sub_242F05C60();
    __break(1u);
  }

  else
  {
    v9 = v7;
    sub_242D3EA70(a1, &v9, a3, a4);
    sub_242F05400();
  }

  return result;
}

unint64_t sub_242D3ECEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF3200;
  if (!qword_27ECF3200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF3200);
  }

  return result;
}

uint64_t Instrument.RemainingRangeTextConfiguration.restoreAssets(from:)(uint64_t a1)
{
  v4 = *(v1 + 296);
  v5 = sub_242CE6D94(MEMORY[0x277D84F90]);
  v9[2] = a1;
  v6 = sub_242C8A810(v5, sub_242C8B824, v9, v4);
  if (v2)
  {
  }

  v8 = v6;

  *(v1 + 296) = v8;
  return result;
}

uint64_t Instrument.GaugeConfiguration.style.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x228uLL);
  memcpy(a1, v1, 0x228uLL);
  return sub_242D48070(__dst, v4);
}

void *Instrument.GaugeConfiguration.style.setter(const void *a1)
{
  memcpy(v4, v1, 0x228uLL);
  sub_242D480A8(v4);
  return memcpy(v1, a1, 0x228uLL);
}

uint64_t Instrument.GaugeConfiguration.visibilityConfiguration.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 560) = v2;
  return result;
}

void *Instrument.GaugeConfiguration.init(style:rendersLocally:visibilityConfiguration:)@<X0>(void *__src@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  result = memcpy(a4, __src, 0x228uLL);
  *(a4 + 552) = a2;
  *(a4 + 560) = v6;
  return result;
}

unint64_t sub_242D3EFC8()
{
  v1 = 0x4C737265646E6572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C797473;
  }
}

uint64_t sub_242D3F030@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242D4B1B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242D3F058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D480D8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D3F094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D480D8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.GaugeConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3208, &qword_242F18010);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  memcpy(v23, v1, 0x228uLL);
  v24 = *(v1 + 552);
  v19 = *(v1 + 560);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  v8 = sub_242D48070(v23, v22);
  sub_242D480D8(v8, v9, v10);
  sub_242F064C0();
  v11 = memcpy(v22, v23, sizeof(v22));
  v26 = 0;
  sub_242D4812C(v11, v12, v13);
  sub_242F05F20();
  if (v2)
  {
    memcpy(v21, v22, sizeof(v21));
    sub_242D480A8(v21);
  }

  else
  {
    v14 = v19;
    memcpy(v21, v22, sizeof(v21));
    sub_242D480A8(v21);
    LOBYTE(v20) = 1;
    v15 = sub_242F05ED0();
    v20 = v14;
    v25 = 2;
    sub_242D48180(v15, v16, v17);

    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

void Instrument.GaugeConfiguration.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 560);
  Instrument.GaugeStyle.hash(into:)(a1);
  sub_242F063B0();
  MEMORY[0x245D279A0](*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    VisibilityRule.hash(into:)(a1);
    v5 = v4 - 1;
    if (v5)
    {
      v6 = v3 + 168;
      do
      {
        VisibilityRule.hash(into:)(a1);
        v6 += 136;
        --v5;
      }

      while (v5);
    }
  }
}

uint64_t Instrument.GaugeConfiguration.hashValue.getter()
{
  v1 = *(v0 + 560);
  sub_242F06390();
  Instrument.GaugeStyle.hash(into:)(v6);
  sub_242F063B0();
  MEMORY[0x245D279A0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    VisibilityRule.hash(into:)(v6);
    v3 = v2 - 1;
    if (v3)
    {
      v4 = v1 + 168;
      do
      {
        VisibilityRule.hash(into:)(v6);
        v4 += 136;
        --v3;
      }

      while (v3);
    }
  }

  return sub_242F063E0();
}

uint64_t Instrument.GaugeConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3228, &qword_242F18018);
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v23 - v6;
  v8 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D480D8(v8, v9, v10);
  v11 = sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v14 = v5;
  v15 = a2;
  v30[575] = 0;
  sub_242D481D4(v11, v12, v13);
  v16 = v24;
  sub_242F05E00();
  memcpy(v30, v29, 0x228uLL);
  v26[0] = 1;
  v17 = sub_242F05DB0();
  v18 = v14;
  LOBYTE(v14) = v17;
  v30[574] = 2;
  sub_242D48228(v17, v19, v20);
  sub_242F05E00();
  (*(v18 + 8))(v7, v16);
  v21 = v28;
  memcpy(v25, v30, 0x228uLL);
  LOBYTE(v25[69]) = v14 & 1;
  v25[70] = v28;
  memcpy(v15, v25, 0x238uLL);
  sub_242D4827C(v25, v26);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  memcpy(v26, v30, 0x228uLL);
  v26[552] = v14 & 1;
  v27 = v21;
  return sub_242D482B4(v26);
}

uint64_t sub_242D3F7C0(uint64_t a1)
{
  v2 = *(v1 + 560);
  sub_242F06390();
  Instrument.GaugeStyle.hash(into:)(v7);
  sub_242F063B0();
  MEMORY[0x245D279A0](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    VisibilityRule.hash(into:)(v7);
    v4 = v3 - 1;
    if (v4)
    {
      v5 = v2 + 168;
      do
      {
        VisibilityRule.hash(into:)(v7);
        v5 += 136;
        --v4;
      }

      while (v4);
    }
  }

  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.name.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_242D3DE48(__dst);
  if (v1 <= 2)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        sub_242C65548(__dst);
        return 0x7247206567616D49;
      }

      else
      {
        sub_242C65548(__dst);
        return 0x6C6F626D7953;
      }
    }

    else
    {
      sub_242C65548(__dst);
      return 0x72616C7563726943;
    }
  }

  else if (v1 > 4)
  {
    if (v1 == 5)
    {
      sub_242C65548(__dst);
      return 0x73736572676F7250;
    }

    else
    {
      return 0xD000000000000017;
    }
  }

  else if (v1 == 3)
  {
    sub_242C65548(__dst);
    return 1954047316;
  }

  else
  {
    sub_242C65548(__dst);
    return 0x614C206570616853;
  }
}

uint64_t Instrument.GaugeStyle.description.getter()
{
  memcpy(__dst, v0, 0x228uLL);
  v1 = sub_242D3DE48(__dst);
  if (v1 <= 2)
  {
    if (v1)
    {
      if (v1 != 1)
      {
        sub_242C65548(__dst);
        return 0x6C6F626D7953;
      }

      v8 = *sub_242C65548(__dst);
      *v55 = 0;
      *&v55[8] = 0xE000000000000000;
      if (v8 == 86)
      {
        v9 = 0xEE006567616D6920;
        v10 = 0x746E6174736E6F43;
      }

      else
      {
        LOBYTE(v56) = v8;
        v24 = InstrumentDataIdentifier.rawValue.getter();
        v26 = sub_242EFCF00(v24, v25);
        v9 = v27;

        v10 = v26;
      }

      MEMORY[0x245D26660](v10, v9);

      v4 = *v55;
      v5 = *&v55[8];
      v6 = 0xEB0000000070756FLL;
      v7 = 0x7247206567616D49;
    }

    else
    {
      LOBYTE(v56) = *sub_242C65548(__dst);
      v13 = InstrumentDataIdentifier.rawValue.getter();
      v15 = sub_242EFCF00(v13, v14);
      v17 = v16;

      MEMORY[0x245D26660](v15, v17);

      MEMORY[0x245D26660](41, 0xE100000000000000);
      v4 = 40;
      v5 = 0xE100000000000000;
      v6 = 0xE800000000000000;
      v7 = 0x72616C7563726943;
    }
  }

  else if (v1 > 4)
  {
    if (v1 != 5)
    {
      return 0xD000000000000017;
    }

    v11 = sub_242C65548(__dst);
    memcpy(v55, v11, 0x164uLL);
    v4 = ProgressBarType.description.getter();
    v5 = v12;
    v6 = 0xEC00000072614220;
    v7 = 0x73736572676F7250;
  }

  else if (v1 == 3)
  {
    v2 = sub_242C65548(__dst);
    v56 = 40;
    v57 = 0xE100000000000000;
    memcpy(v55, v2, sizeof(v55));
    v3 = TextDataType.description.getter();
    MEMORY[0x245D26660](v3);

    MEMORY[0x245D26660](41, 0xE100000000000000);
    v4 = v56;
    v5 = v57;
    v6 = 0xE400000000000000;
    v7 = 1954047316;
  }

  else
  {
    v19 = sub_242C65548(__dst);
    v20 = *(v19 + 8);
    v21 = *(v19 + 32);
    v22 = *(v19 + 36);
    *v55 = *v19;
    v55[8] = v20;
    *&v55[16] = *(v19 + 16);
    *&v55[32] = v21;
    v55[36] = v22;
    v4 = ShapeLayerConfiguration.description.getter();
    v5 = v23;
    v6 = 0xEB00000000726579;
    v7 = 0x614C206570616853;
  }

  *v55 = v7;
  *&v55[8] = v6;

  MEMORY[0x245D26660](95, 0xE100000000000000);

  v29 = *v55;
  v28 = *&v55[8];

  v30 = sub_242CD5FD0(1, v4, v5);
  v32 = v31;
  v34 = v33;
  v36 = v35;

  *v55 = v30;
  *&v55[8] = v32;
  *&v55[16] = v34;
  *&v55[24] = v36;
  sub_242D3E450(v37, v38, v39);
  v40 = sub_242F058A0();
  v42 = v41;

  v43 = sub_242D3E4A4(1uLL, v4, v5);
  v45 = v44;
  v47 = v46;
  v49 = v48;

  v60 = v40;
  v61 = v42;
  v56 = v43;
  v57 = v45;
  v58 = v47;
  v59 = v49;
  sub_242D3E554(v50, v51, v52);
  sub_242F05040();

  v53 = v60;
  v54 = v61;
  *v55 = v29;
  *&v55[8] = v28;

  MEMORY[0x245D26660](v53, v54);

  return *v55;
}

uint64_t Instrument.GaugeStyle.rawValue.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_242D3DE48(__dst);
  if (v1 <= 2)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        sub_242C65548(__dst);
        return 0x6F72476567616D69;
      }

      else
      {
        sub_242C65548(__dst);
        return 0x6C6F626D7973;
      }
    }

    else
    {
      sub_242C65548(__dst);
      return 0x72616C7563726963;
    }
  }

  else if (v1 > 4)
  {
    if (v1 == 5)
    {
      sub_242C65548(__dst);
      return 0x73736572676F7270;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else if (v1 == 3)
  {
    sub_242C65548(__dst);
    return 0x6D656C4574786574;
  }

  else
  {
    sub_242C65548(__dst);
    return 0x79614C6570616873;
  }
}

_BYTE *Instrument.GaugeStyle.CircularConfiguration.init(dataIdentifier:range:iconName:minLabel:minLabelColor:maxLabel:maxLabelColor:tintColors:backgroundTintColors:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, __int128 a12, uint64_t a13)
{
  *a9 = *result;
  *(a9 + 8) = a10;
  *(a9 + 16) = a11;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a12;
  *(a9 + 96) = a13;
  return result;
}

uint64_t Instrument.GaugeStyle.CircularConfiguration.iconName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Instrument.GaugeStyle.CircularConfiguration.minLabel.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t Instrument.GaugeStyle.CircularConfiguration.maxLabel.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t Instrument.GaugeStyle.CircularConfiguration.backgroundTintColors.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_242D400A8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E65644961746164;
    v6 = 0x656D614E6E6F6369;
    if (a1 != 2)
    {
      v6 = 0x6C6562614C6E696DLL;
    }

    if (a1)
    {
      v5 = 0x65676E6172;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6C6562614C78616DLL;
    v2 = 0x6F6C6F43746E6974;
    if (a1 != 7)
    {
      v2 = 0xD000000000000014;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6C6562614C6E696DLL;
    if (a1 != 4)
    {
      v3 = 0x6C6562614C78616DLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_242D401F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242D4B2D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242D4021C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D482E4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D40258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D482E4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.GaugeStyle.CircularConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3240, &unk_242F18020);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = *(v1 + 2);
  v10 = *(v1 + 3);
  v34 = *(v1 + 4);
  v35 = v10;
  v11 = *(v1 + 5);
  v32 = *(v1 + 6);
  v33 = v11;
  v12 = *(v1 + 7);
  v13 = *(v1 + 8);
  v14 = *(v1 + 10);
  v30 = *(v1 + 9);
  v31 = v12;
  v28 = v14;
  v29 = v13;
  v15 = *(v1 + 12);
  v27 = *(v1 + 11);
  v16 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D482E4(v16, v17, v18);
  v19 = sub_242F064C0();
  LOBYTE(v37) = v7;
  v39 = 0;
  sub_242C8AC28(v19, v20, v21);
  v22 = v36;
  sub_242F05F20();
  if (!v22)
  {
    v36 = v15;
    v37 = v8;
    v38 = v9;
    v39 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0878, &qword_242F0BAE0);
    sub_242C953C8(&qword_27ECF0880, MEMORY[0x277D83A08], MEMORY[0x277D83640]);
    sub_242F05F20();
    LOBYTE(v37) = 2;
    sub_242F05EC0();
    LOBYTE(v37) = 3;
    v24 = sub_242F05EC0();
    v37 = v31;
    v39 = 4;
    sub_242C7C594(v24, v25, v26);
    sub_242F05F20();
    LOBYTE(v37) = 5;
    sub_242F05EC0();
    v37 = v28;
    v39 = 6;
    sub_242F05F20();
    v37 = v27;
    v39 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0830, &qword_242F18030);
    sub_242C94720(&qword_27ECF0838, sub_242C7C594, MEMORY[0x277D83948]);
    sub_242F05F20();
    v37 = v36;
    v39 = 8;
    sub_242F05F20();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Instrument.GaugeStyle.CircularConfiguration.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = *(v1 + 11);
  v5 = *(v1 + 12);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  sub_242C9457C(v2, v3);
  sub_242F04DD0();
  sub_242F04DD0();
  sub_242F04720();
  sub_242F04DD0();
  sub_242F04720();
  MEMORY[0x245D279A0](*(v4 + 16));
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = v4 + 32;
    do
    {
      v7 += 8;

      sub_242F04720();

      --v6;
    }

    while (v6);
  }

  result = MEMORY[0x245D279A0](*(v5 + 16));
  v9 = *(v5 + 16);
  if (v9)
  {
    v10 = v5 + 32;
    do
    {
      v10 += 8;

      sub_242F04720();

      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t Instrument.GaugeStyle.CircularConfiguration.hashValue.getter()
{
  sub_242F06390();
  Instrument.GaugeStyle.CircularConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

void Instrument.GaugeStyle.CircularConfiguration.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3250, &qword_242F18038);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v34 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D482E4(v9, v10, v11);
  v12 = sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    LOBYTE(v44) = 0;
    sub_242C8AC7C(v12, v13, v14);
    sub_242F05E00();
    v15 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0878, &qword_242F0BAE0);
    LOBYTE(v44) = 1;
    sub_242C953C8(&qword_27ECF08A0, MEMORY[0x277D83A30], MEMORY[0x277D83668]);
    sub_242F05E00();
    v16 = v51;
    v17 = v52;
    LOBYTE(v51) = 2;
    v41 = sub_242F05DA0();
    v43 = v18;
    LOBYTE(v51) = 3;
    v19 = sub_242F05DA0();
    v42 = v20;
    v38 = v19;
    LOBYTE(v44) = 4;
    v22 = sub_242C7C540(v19, v20, v21);
    v40 = 0;
    sub_242F05E00();
    v36 = v22;
    v37 = v51;
    LOBYTE(v51) = 5;
    v35 = sub_242F05DA0();
    v39 = v23;
    LOBYTE(v44) = 6;
    sub_242F05E00();
    v36 = v51;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0830, &qword_242F18030);
    LOBYTE(v44) = 7;
    v25 = sub_242C94720(&qword_27ECF0858, sub_242C7C540, MEMORY[0x277D83978]);
    v34[2] = v24;
    v34[1] = v25;
    sub_242F05E00();
    v26 = v51;
    v64 = 8;
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v27 = v65;
    LOBYTE(v44) = v15;
    *(&v44 + 1) = v16;
    *&v45 = v17;
    *(&v45 + 1) = v41;
    v28 = v43;
    *&v46 = v43;
    *(&v46 + 1) = v38;
    v29 = v42;
    *&v47 = v42;
    v30 = v37;
    *(&v47 + 1) = v37;
    *&v48 = v35;
    *(&v48 + 1) = v39;
    *&v49 = v36;
    *(&v49 + 1) = v26;
    v50 = v65;
    *(a2 + 96) = v65;
    v31 = v49;
    *(a2 + 64) = v48;
    *(a2 + 80) = v31;
    v32 = v45;
    *a2 = v44;
    *(a2 + 16) = v32;
    v33 = v47;
    *(a2 + 32) = v46;
    *(a2 + 48) = v33;
    sub_242D48338(&v44, &v51);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    LOBYTE(v51) = v15;
    v52 = v16;
    v53 = v17;
    v54 = v41;
    v55 = v28;
    v56 = v38;
    v57 = v29;
    v58 = v30;
    v59 = v35;
    v60 = v39;
    v61 = v36;
    v62 = v26;
    v63 = v27;
    sub_242D48370(&v51);
  }
}

uint64_t sub_242D40F60()
{
  sub_242F06390();
  Instrument.GaugeStyle.CircularConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242D40FA4(uint64_t a1)
{
  sub_242F06390();
  Instrument.GaugeStyle.CircularConfiguration.hash(into:)(v2);
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.Alignment.displayValue.getter()
{
  v1 = *v0;
  v2 = 0x676E696461654CLL;
  v3 = 0x676E696C69617254;
  v4 = 7368532;
  if (v1 != 3)
  {
    v4 = 0x6D6F74746F42;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7265746E6543;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t Instrument.GaugeStyle.Alignment.init(rawValue:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x40302010005uLL >> (8 * result);
  if (result >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *a2 = v2;
  return result;
}

void sub_242D41194(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6769666E6F63 && a2 == 0xE600000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_242D41218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D48790(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D41254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D48790(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_242D41290()
{
  v1 = *v0;
  v2 = 0x72616C7563726963;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x73736572676F7270;
  }

  v4 = 0x6D656C4574786574;
  if (v1 != 3)
  {
    v4 = 0x79614C6570616873;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6F72476567616D69;
  if (v1 != 1)
  {
    v5 = 0x6C6F626D7973;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_242D41388@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242D4B5C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242D413B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D483A0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D413EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D483A0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242D41428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D486E8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D41464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D486E8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242D414A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D4849C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D414DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D4849C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_242D41528(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_242D415B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D483F4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D415EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D483F4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242D41628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D484F0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D41664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D484F0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242D416A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D48640(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D416DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D48640(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242D41718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D48598(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242D41754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D48598(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.GaugeStyle.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3258, &qword_242F18040);
  v116 = *(v2 - 8);
  v117 = v2;
  MEMORY[0x28223BE20](v2);
  v115 = &v103 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3260, &qword_242F18048);
  v110 = *(v4 - 8);
  v111 = v4;
  MEMORY[0x28223BE20](v4);
  v107 = &v103 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3268, &qword_242F18050);
  v113 = *(v6 - 8);
  v114 = v6;
  MEMORY[0x28223BE20](v6);
  v112 = &v103 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3270, &qword_242F18058);
  v108 = *(v8 - 8);
  v109 = v8;
  MEMORY[0x28223BE20](v8);
  v106 = &v103 - v9;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3278, &qword_242F18060);
  v105 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v119 = &v103 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3280, &qword_242F18068);
  v118 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v103 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3288, &qword_242F18070);
  v104 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v103 - v15;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3290, &qword_242F18078);
  v123 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v18 = &v103 - v17;
  v19 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D483A0(v19, v20, v21);
  v122 = v18;
  sub_242F064C0();
  memcpy(v125, v121, 0x228uLL);
  v22 = sub_242D3DE48(v125);
  if (v22 <= 2)
  {
    v35 = v16;
    v36 = v11;
    v37 = v118;
    v38 = v119;
    v39 = v120;
    if (v22)
    {
      if (v22 == 1)
      {
        v40 = sub_242C65548(v125);
        LOBYTE(v124[0]) = 1;
        sub_242D486E8(v40, v41, v42);
        v43 = v13;
        v44 = v126;
        v45 = v122;
        v46 = sub_242F05E40();
        v47 = *v40;
        v48 = *(v40 + 16);
        v49 = *(v40 + 32);
        LOBYTE(v124[3]) = *(v40 + 48);
        v124[1] = v48;
        v124[2] = v49;
        v124[0] = v47;
        sub_242D4873C(v46, v50, v51);
        sub_242F05F20();
        (*(v37 + 8))(v43, v36);
        return (*(v123 + 8))(v45, v44);
      }

      else
      {
        v75 = sub_242C65548(v125);
        LOBYTE(v124[0]) = 2;
        sub_242D48640(v75, v76, v77);
        v78 = v126;
        v79 = v122;
        v80 = sub_242F05E40();
        v81 = *(v75 + 16);
        v124[0] = *v75;
        v124[1] = v81;
        v82 = *(v75 + 32);
        v83 = *(v75 + 48);
        v84 = *(v75 + 64);
        LOWORD(v124[5]) = *(v75 + 80);
        v124[3] = v83;
        v124[4] = v84;
        v124[2] = v82;
        sub_242D48694(v80, v85, v86);
        sub_242F05F20();
        (*(v105 + 8))(v38, v39);
        return (*(v123 + 8))(v79, v78);
      }
    }

    else
    {
      v62 = sub_242C65548(v125);
      LOBYTE(v124[0]) = 0;
      sub_242D48790(v62, v63, v64);
      v65 = v126;
      v66 = v122;
      v67 = sub_242F05E40();
      v68 = *v62;
      v69 = *(v62 + 32);
      v124[1] = *(v62 + 16);
      v124[2] = v69;
      v124[0] = v68;
      v70 = *(v62 + 48);
      v71 = *(v62 + 64);
      v72 = *(v62 + 80);
      *&v124[6] = *(v62 + 96);
      v124[4] = v71;
      v124[5] = v72;
      v124[3] = v70;
      sub_242D487E4(v67, v73, v74);
      sub_242F05F20();
      (*(v104 + 8))(v35, v14);
      return (*(v123 + 8))(v66, v65);
    }
  }

  else if (v22 > 4)
  {
    v52 = v126;
    v53 = v122;
    if (v22 == 5)
    {
      v54 = sub_242C65548(v125);
      LOBYTE(v124[0]) = 6;
      sub_242D483F4(v54, v55, v56);
      v57 = v115;
      sub_242F05E40();
      v58 = memcpy(v124, v54, 0x164uLL);
      sub_242D48448(v58, v59, v60);
      v61 = v117;
      sub_242F05F20();
      (*(v116 + 8))(v57, v61);
    }

    else
    {
      LOBYTE(v124[0]) = 5;
      sub_242D4849C(v22, v23, v24);
      v102 = v107;
      sub_242F05E40();
      (*(v110 + 8))(v102, v111);
    }

    return (*(v123 + 8))(v53, v52);
  }

  else
  {
    v25 = v126;
    if (v22 == 3)
    {
      v26 = sub_242C65548(v125);
      LOBYTE(v124[0]) = 3;
      sub_242D48598(v26, v27, v28);
      v29 = v106;
      v30 = v122;
      sub_242F05E40();
      v31 = memcpy(v124, v26, 0x228uLL);
      sub_242D485EC(v31, v32, v33);
      v34 = v109;
      sub_242F05F20();
      (*(v108 + 8))(v29, v34);
      return (*(v123 + 8))(v30, v25);
    }

    else
    {
      v87 = sub_242C65548(v125);
      v88 = *v87;
      LODWORD(v121) = *(v87 + 8);
      v89 = *(v87 + 16);
      v90 = *(v87 + 24);
      v91 = *(v87 + 32);
      v92 = *(v87 + 36);
      LOBYTE(v124[0]) = 4;
      sub_242D484F0(v87, v93, v94);
      v95 = v112;
      v96 = v122;
      v97 = sub_242F05E40();
      *&v124[0] = v88;
      BYTE8(v124[0]) = v121;
      *&v124[1] = v89;
      *(&v124[1] + 1) = v90;
      LODWORD(v124[2]) = v91;
      BYTE4(v124[2]) = v92;
      sub_242D48544(v97, v98, v99);
      v100 = v114;
      sub_242F05F20();
      (*(v113 + 8))(v95, v100);
      return (*(v123 + 8))(v96, v126);
    }
  }
}