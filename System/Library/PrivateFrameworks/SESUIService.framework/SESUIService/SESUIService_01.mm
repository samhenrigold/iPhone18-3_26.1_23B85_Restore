uint64_t sub_2628F6FBC()
{
  v1 = v0;
  v2 = sub_26294CA28();
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  MEMORY[0x28223BE20](v2);
  v27 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((v30 & 1) == 0)
  {
    v6 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
    swift_beginAccess();
    v26 = *(*&v0[v6] + 16);
    if (v26)
    {
      v7 = 0;
      v25[0] = v29 + 8;
      v25[1] = v29 + 16;
      while (1)
      {
        result = swift_beginAccess();
        v8 = *&v1[v6];
        if (v7 >= *(v8 + 16))
        {
          break;
        }

        v9 = v28;
        v10 = v29;
        v11 = v27;
        (*(v29 + 16))(v27, v8 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v7, v28);
        v12 = sub_26294C928();
        (*(v10 + 8))(v11, v9);
        swift_endAccess();
        v13 = *(v12 + 16);

        if (v13)
        {
          swift_beginAccess();
          v14 = 0;
          while (1)
          {
            v15 = *&v1[v6];
            result = swift_isUniquelyReferenced_nonNull_native();
            *&v1[v6] = v15;
            if ((result & 1) == 0)
            {
              result = sub_26291DB84(v15);
              v15 = result;
              *&v1[v6] = result;
            }

            if (v7 >= v15[2])
            {
              break;
            }

            v16 = sub_26294C918();
            v18 = v17;
            v19 = *v17;
            result = swift_isUniquelyReferenced_nonNull_native();
            *v18 = v19;
            if ((result & 1) == 0)
            {
              result = sub_26291DBD0(v19);
              v19 = result;
              *v18 = result;
            }

            if (v14 >= v19[2])
            {
              goto LABEL_22;
            }

            sub_26294C9D8();
            sub_26294C9C8();
            v16(&v30, 0);
            if (v13 == ++v14)
            {
              swift_endAccess();
              goto LABEL_4;
            }
          }

          __break(1u);
LABEL_22:
          __break(1u);
          break;
        }

LABEL_4:
        if (++v7 == v26)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_16:
      v20 = &v1[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
      v21 = *&v1[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
      if (v21)
      {
        v22 = v20[1];

        v21(0);
        sub_262905484(v21, v22);
        v23 = *v20;
      }

      else
      {
        v23 = 0;
      }

      v24 = v20[1];
      *v20 = 0;
      v20[1] = 0;
      sub_262905484(v23, v24);
      swift_getKeyPath();
      swift_getKeyPath();
      v30 = 0;
      v31 = 1;
      v1;
      sub_26294D008();
      return sub_2628E6C54();
    }
  }

  return result;
}

uint64_t sub_2628F739C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((v10 & 1) == 0)
  {
    v6 = &v2[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
    v7 = *&v2[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion];
    v8 = *&v2[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion + 8];
    *v6 = a1;
    *(v6 + 1) = a2;
    sub_262906C04(a1, a2);
    sub_262905484(v7, v8);
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v2;
    return sub_26294D008();
  }

  return result;
}

uint64_t sub_2628F74B0()
{
  v1 = (*(v0 + 64) + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_managementHandler);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_2628F75E0;

  return v6(v2, v3);
}

uint64_t sub_2628F75E0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_2628F78B8;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_2628F7708;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2628F7708()
{
  v1 = v0[8];
  v2 = *&v1[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot];
  *&v1[OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot] = v0[11];

  sub_262906E24();
  v3 = sub_26294DED8();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2629070B0;
  *(v5 + 24) = v4;
  v0[6] = sub_262907108;
  v0[7] = v5;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2628F4498;
  v0[5] = &block_descriptor_146;
  v6 = _Block_copy(v0 + 2);
  v7 = v1;

  dispatch_sync(v3, v6);

  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }

  return result;
}

uint64_t sub_2628F78B8()
{
  if (qword_27FF2E7C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_26294CE48();
  __swift_project_value_buffer(v2, qword_27FF314B0);
  v3 = v1;
  v4 = sub_26294CE28();
  v5 = sub_26294DEA8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2628DB000, v4, v5, "Error %@ encountered while offloading Muirfield", v7, 0xCu);
    sub_2628DF6F0(v8, &qword_27FF2EDF8, &qword_26294F460);
    MEMORY[0x26672DCE0](v8, -1, -1);
    MEMORY[0x26672DCE0](v7, -1, -1);
  }

  v11 = *(v0 + 64);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 96) = 0;
  v12 = v11;
  sub_26294D008();
  v13 = v12;
  v14 = sub_26294CE28();
  v15 = sub_26294DE98();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 64);
  if (v16)
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    *(v18 + 4) = *(v0 + 97);

    _os_log_impl(&dword_2628DB000, v14, v15, "Controller loading %{BOOL}d", v18, 8u);
    MEMORY[0x26672DCE0](v18, -1, -1);
  }

  else
  {
  }

  v19 = *(v0 + 64) + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion;
  v20 = *v19;
  v21 = *(v0 + 80);
  if (*v19)
  {
    v22 = *(v19 + 8);

    v20(0);

    sub_262905484(v20, v22);
  }

  else
  {
  }

  v23 = *v19;
  v24 = *(v19 + 8);
  *v19 = 0;
  *(v19 + 8) = 0;
  sub_262905484(v23, v24);
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2628F7BBC(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  sub_26294D008();
  sub_2628E6C54();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_26294D008();
  if (qword_27FF2E7C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26294CE48();
  __swift_project_value_buffer(v4, qword_27FF314B0);
  v5 = v3;
  v6 = sub_26294CE28();
  v7 = sub_26294DE98();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    *(v8 + 4) = v15;

    _os_log_impl(&dword_2628DB000, v6, v7, "Controller loading %{BOOL}d", v8, 8u);
    MEMORY[0x26672DCE0](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  v9 = (v5 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion);
  v10 = *(&v5->isa + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion);
  if (v10)
  {
    v11 = v9[1];

    v10(1);
    sub_262905484(v10, v11);
    v12 = *v9;
  }

  else
  {
    v12 = 0;
  }

  v13 = v9[1];
  *v9 = 0;
  v9[1] = 0;
  return sub_262905484(v12, v13);
}

uint64_t sub_2628F7DF4()
{
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE60, &qword_26294F4D0);
  v1 = MEMORY[0x28223BE20](v88);
  v87 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v86 = &v76 - v3;
  v85 = sub_26294CBA8();
  v89 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_26294DC58();
  v5 = *(v103 - 8);
  v6 = MEMORY[0x28223BE20](v103);
  v83 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v82 = &v76 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v76 - v10;
  v102 = sub_26294CB98();
  v12 = *(v102 - 8);
  v13 = MEMORY[0x28223BE20](v102);
  v101 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v76 - v15;
  v17 = sub_262905730(MEMORY[0x277D84F90]);
  v18 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_passes;
  swift_beginAccess();
  v77 = v0;
  v19 = *(v0 + v18);
  v20 = *(v19 + 16);
  v99 = v5;
  v97 = v20;
  if (v20)
  {
    v93 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v96 = v19 + v93;
    v100 = v12 + 16;
    v98 = v5 + 16;
    v81 = v5 + 32;
    v80 = *MEMORY[0x277D49140];
    v79 = *MEMORY[0x277D49240];
    v78 = (v5 + 104);
    v91 = (v12 + 8);
    v92 = (v5 + 8);
    v90 = (v12 + 32);

    v22 = 0;
    v94 = v21;
    v95 = v12;
    while (1)
    {
      if (v22 >= *(v21 + 16))
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
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
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = sub_26294E078();
        __break(1u);
        return result;
      }

      v23 = *(v12 + 72);
      v24 = *(v12 + 16);
      v24(v16, v96 + v23 * v22, v102);
      v25 = sub_26294CAD8();
      if (*(v25 + 16))
      {
        v26 = v82;
        v27 = v103;
        (*(v5 + 16))(v82, v25 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v103);

        (*(v5 + 32))(v11, v26, v27);
      }

      else
      {

        v28 = sub_26294DB58();
        (*(*(v28 - 8) + 104))(v11, v80, v28);
        (*v78)(v11, v79, v103);
      }

      v24(v101, v16, v102);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v104[0] = v17;
      v31 = sub_262902240(v11);
      v32 = *(v17 + 16);
      v33 = (v30 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_45;
      }

      v35 = v30;
      if (*(v17 + 24) >= v34)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v30 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          sub_262904044(MEMORY[0x277D49298], &qword_27FF2EE68, &qword_26294F4D8);
          v17 = v104[0];
          if ((v35 & 1) == 0)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        sub_2629029E4(v34, isUniquelyReferenced_nonNull_native);
        v17 = v104[0];
        v36 = sub_262902240(v11);
        if ((v35 & 1) != (v37 & 1))
        {
          goto LABEL_53;
        }

        v31 = v36;
        if ((v35 & 1) == 0)
        {
LABEL_14:
          *(v17 + 8 * (v31 >> 6) + 64) |= 1 << v31;
          (*(v5 + 16))(*(v17 + 48) + *(v5 + 72) * v31, v11, v103);
          *(*(v17 + 56) + 8 * v31) = MEMORY[0x277D84F90];
          v38 = *(v17 + 16);
          v39 = __OFADD__(v38, 1);
          v40 = v38 + 1;
          if (v39)
          {
            goto LABEL_52;
          }

          *(v17 + 16) = v40;
        }
      }

      v41 = *(v17 + 56);
      v42 = *(v41 + 8 * v31);
      v43 = swift_isUniquelyReferenced_nonNull_native();
      *(v41 + 8 * v31) = v42;
      if ((v43 & 1) == 0)
      {
        v42 = sub_26291D74C(0, v42[2] + 1, 1, v42);
        *(v41 + 8 * v31) = v42;
      }

      v45 = v42[2];
      v44 = v42[3];
      if (v45 >= v44 >> 1)
      {
        *(v41 + 8 * v31) = sub_26291D74C((v44 > 1), v45 + 1, 1, v42);
      }

      ++v22;
      (*v92)(v11, v103);
      v46 = v102;
      (*v91)(v16, v102);
      v47 = *(v41 + 8 * v31);
      *(v47 + 16) = v45 + 1;
      (*v90)(v47 + v93 + v45 * v23, v101, v46);
      v5 = v99;
      v21 = v94;
      v12 = v95;
      if (v97 == v22)
      {

        break;
      }
    }
  }

  v48 = *(v17 + 16);
  v49 = MEMORY[0x277D84F90];
  if (v48)
  {
    v104[0] = MEMORY[0x277D84F90];
    sub_2628FBF74(0, v48, 0);
    v49 = v104[0];
    v50 = v17 + 64;
    v51 = sub_26294DF18();
    v52 = 0;
    v53 = *(v17 + 36);
    v100 = v5 + 16;
    v97 = v89 + 32;
    v98 = v5 + 32;
    v92 = (v17 + 72);
    v93 = v48;
    v94 = v53;
    v95 = v17 + 64;
    v96 = v17;
    while ((v51 & 0x8000000000000000) == 0 && v51 < 1 << *(v17 + 32))
    {
      v55 = v51 >> 6;
      if ((*(v50 + 8 * (v51 >> 6)) & (1 << v51)) == 0)
      {
        goto LABEL_47;
      }

      if (v53 != *(v17 + 36))
      {
        goto LABEL_48;
      }

      v101 = v52;
      v102 = 1 << v51;
      v56 = *(v5 + 16);
      v57 = v86;
      v58 = v103;
      v56(v86, *(v17 + 48) + *(v5 + 72) * v51, v103);
      v59 = *(*(v17 + 56) + 8 * v51);
      v60 = *(v5 + 32);
      v61 = v87;
      v62 = v57;
      v63 = v84;
      v60(v87, v62, v58);
      *(v61 + *(v88 + 48)) = v59;
      v56(v83, v61, v58);
      swift_bridgeObjectRetain_n();
      sub_26294CA58();
      sub_2628DF6F0(v61, &qword_27FF2EE60, &qword_26294F4D0);
      v104[0] = v49;
      v65 = *(v49 + 16);
      v64 = *(v49 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_2628FBF74((v64 > 1), v65 + 1, 1);
        v49 = v104[0];
      }

      *(v49 + 16) = v65 + 1;
      (*(v89 + 32))(v49 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v65, v63, v85);
      v17 = v96;
      v54 = 1 << *(v96 + 32);
      if (v51 >= v54)
      {
        goto LABEL_49;
      }

      v50 = v95;
      v66 = *(v95 + 8 * v55);
      if ((v66 & v102) == 0)
      {
        goto LABEL_50;
      }

      LODWORD(v53) = v94;
      if (v94 != *(v96 + 36))
      {
        goto LABEL_51;
      }

      v67 = v66 & (-2 << (v51 & 0x3F));
      if (v67)
      {
        v54 = __clz(__rbit64(v67)) | v51 & 0x7FFFFFFFFFFFFFC0;
        v5 = v99;
      }

      else
      {
        v68 = v55 << 6;
        v69 = v55 + 1;
        v70 = &v92[v55];
        v5 = v99;
        while (v69 < (v54 + 63) >> 6)
        {
          v72 = *v70++;
          v71 = v72;
          v68 += 64;
          ++v69;
          if (v72)
          {
            sub_26290571C(v51, v94, 0);
            v54 = __clz(__rbit64(v71)) + v68;
            goto LABEL_27;
          }
        }

        sub_26290571C(v51, v94, 0);
      }

LABEL_27:
      v52 = v101 + 1;
      v51 = v54;
      if (v101 + 1 == v93)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_46;
  }

LABEL_43:
  v73 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups;
  v74 = v77;
  swift_beginAccess();
  *(v74 + v73) = v49;
}

uint64_t sub_2628F8828()
{
  v152 = sub_26294C5F8();
  v143 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v151 = &v130 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_26294DC28();
  v140 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v149 = &v130 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECF8, &qword_26294F260);
  MEMORY[0x28223BE20](v3 - 8);
  v168 = &v130 - v4;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE10, &qword_26294F490);
  v170 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v180 = &v130 - v5;
  v162 = sub_26294CA28();
  v165 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v161 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_26294C9D8();
  v164 = *(v178 - 8);
  v7 = MEMORY[0x28223BE20](v178);
  v177 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v176 = &v130 - v9;
  v182 = sub_26294C538();
  v153 = *(v182 - 8);
  v10 = MEMORY[0x28223BE20](v182);
  v179 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v183 = &v130 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE18, &qword_26294F498);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v135 = &v130 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE20, &qword_26294F4A0);
  MEMORY[0x28223BE20](v18 - 8);
  v166 = &v130 - v19;
  v20 = sub_26294C7F8();
  v154 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v171 = &v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v169 = &v130 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v147 = &v130 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v158 = &v130 - v28;
  MEMORY[0x28223BE20](v27);
  v173 = (&v130 - v29);
  v181 = 0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECC0, &qword_26294F230);
  sub_26294DC78();
  v30 = LOBYTE(v184[0]);
  swift_endAccess();
  v31 = *(v0 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshot);
  if (v30 == 1)
  {
    swift_beginAccess();
    swift_beginAccess();
    v186 = sub_26294C5D8();
    v187 = MEMORY[0x277D48DE8];
    __swift_allocate_boxed_opaque_existential_1(&v185);
    v32 = v31;

    sub_26294C5C8();
  }

  else
  {
    v186 = sub_26294DBE8();
    v187 = MEMORY[0x277D49078];
    v185 = v31;
    v33 = v31;
  }

  v167 = v0;
  v34 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v134 = v34;
  *(v0 + v34) = MEMORY[0x277D84F90];

  v35 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_secureElementCredentials;
  swift_beginAccess();
  v36 = *(v0 + v35);
  isUniquelyReferenced_nonNull_native = v166;
  if (v36 >> 62)
  {
    goto LABEL_128;
  }

  v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v39 = v16;
  v141 = v16;
  v175 = v20;
  if (v38)
  {
    v157 = v36 & 0xC000000000000001;
    v145 = v36 & 0xFFFFFFFFFFFFFF8;
    v144 = (v36 + 32);
    v172 = (v154 + 48);
    v174 = (v154 + 32);
    v155 = v154 + 16;
    v146 = (v154 + 8);
    v148 = v36;

    v136 = 0;
    v40 = 0;
    v16 = MEMORY[0x277D84F98];
    v156 = v38;
    do
    {
      if (v157)
      {
        v36 = MEMORY[0x26672D5B0](v40, v148);
        v41 = __OFADD__(v40, 1);
        v42 = (v40 + 1);
        if (v41)
        {
          goto LABEL_122;
        }
      }

      else
      {
        if (v40 >= *(v145 + 16))
        {
          goto LABEL_126;
        }

        v36 = v144[v40];
        v41 = __OFADD__(v40, 1);
        v42 = (v40 + 1);
        if (v41)
        {
          goto LABEL_122;
        }
      }

      v159 = v36;
      v36 = sub_26294DCB8();
      v43 = v36;
      if (v36 >> 62)
      {
        v36 = sub_26294E008();
        v44 = v36;
      }

      else
      {
        v44 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v160 = v42;
      v142 = v16;
      if (v44)
      {
        v16 = 0;
        v45 = MEMORY[0x277D84F90];
        while (1)
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            v36 = MEMORY[0x26672D5B0](v16, v43);
            v46 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_114;
            }
          }

          else
          {
            if (v16 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_115;
            }

            v36 = *(v43 + 8 * v16 + 32);
            v46 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
LABEL_114:
              __break(1u);
LABEL_115:
              __break(1u);
LABEL_116:
              __break(1u);
LABEL_117:
              __break(1u);
LABEL_118:
              __break(1u);
LABEL_119:
              __break(1u);
LABEL_120:
              __break(1u);
LABEL_121:
              __break(1u);
LABEL_122:
              __break(1u);
LABEL_123:
              __break(1u);
LABEL_124:
              __break(1u);
LABEL_125:
              __break(1u);
LABEL_126:
              __break(1u);
LABEL_127:
              __break(1u);
LABEL_128:
              v129 = v36;
              v38 = sub_26294E008();
              v36 = v129;
              goto LABEL_6;
            }
          }

          sub_26294C7B8();
          if ((*v172)(isUniquelyReferenced_nonNull_native, 1, v20) == 1)
          {
            v36 = sub_2628DF6F0(isUniquelyReferenced_nonNull_native, &qword_27FF2EE20, &qword_26294F4A0);
          }

          else
          {
            v47 = *v174;
            (*v174)(v173, isUniquelyReferenced_nonNull_native, v20);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v45 = sub_26291D774(0, *(v45 + 2) + 1, 1, v45);
            }

            v49 = *(v45 + 2);
            v48 = *(v45 + 3);
            if (v49 >= v48 >> 1)
            {
              v45 = sub_26291D774((v48 > 1), v49 + 1, 1, v45);
            }

            *(v45 + 2) = v49 + 1;
            v50 = &v45[((*(v154 + 80) + 32) & ~*(v154 + 80)) + *(v154 + 72) * v49];
            v20 = v175;
            v36 = v47(v50, v173, v175);
            isUniquelyReferenced_nonNull_native = v166;
          }

          ++v16;
          if (v46 == v44)
          {
            goto LABEL_35;
          }
        }
      }

      v45 = MEMORY[0x277D84F90];
LABEL_35:

      if (*(v45 + 2))
      {
        v51 = v154;
        v52 = *(v154 + 16);
        v53 = v147;
        v52(v147, &v45[(*(v154 + 80) + 32) & ~*(v154 + 80)], v20);

        v54 = v158;
        (*(v51 + 32))(v158, v53, v20);
        sub_262905484(v136, 0);
        v55 = v142;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v184[0] = v55;
        v57 = sub_26290216C(v54);
        v58 = *(v55 + 16);
        v59 = (v56 & 1) == 0;
        v36 = v58 + v59;
        v39 = v141;
        if (__OFADD__(v58, v59))
        {
          goto LABEL_123;
        }

        v60 = v56;
        if (*(v55 + 24) >= v36)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_262904044(MEMORY[0x277D48E80], &qword_27FF2EE38, &qword_26294F4B8);
          }
        }

        else
        {
          sub_26290319C(v36, isUniquelyReferenced_nonNull_native);
          v61 = sub_26290216C(v158);
          if ((v60 & 1) != (v62 & 1))
          {
            goto LABEL_131;
          }

          v57 = v61;
        }

        isUniquelyReferenced_nonNull_native = v166;
        v16 = v184[0];
        if ((v60 & 1) == 0)
        {
          v63 = v169;
          v52(v169, v158, v20);
          sub_262903D30(v57, v63, MEMORY[0x277D84F90], v16, MEMORY[0x277D48E80]);
        }

        v64 = (*(v16 + 56) + 8 * v57);
        v65 = v159;
        MEMORY[0x26672D3D0]();
        if (*((*v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26294DDD8();
        }

        sub_26294DDF8();

        v36 = (*v146)(v158, v20);
        v136 = sub_2629070CC;
      }

      else
      {

        v39 = v141;
        v16 = v142;
      }

      v40 = v160;
    }

    while (v160 != v156);
  }

  else
  {
    v136 = 0;
    v16 = MEMORY[0x277D84F98];
  }

  v66 = v16 + 64;
  v67 = 1 << *(v16 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & *(v16 + 64);
  v159 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_credentialConfigs;
  v131 = (v67 + 63) >> 6;
  v173 = (v154 + 16);
  v137 = (v154 + 32);
  v160 = (v164 + 16);
  v174 = (v153 + 16);
  v157 = v164 + 8;
  v156 = (v153 + 8);
  v155 = v164 + 32;
  v148 = (v140 + 8);
  v147 = "storage.sheet.cancelled.count";
  LODWORD(v146) = *MEMORY[0x277D48E08];
  v145 = v143 + 104;
  v144 = (v143 + 8);
  v158 = (v165 + 32);
  v132 = (v154 + 8);

  v140 = 0;
  v70 = 0;
  v142 = v16;
  v133 = v16 + 64;
  while (1)
  {
    if (v69)
    {
      v138 = v70;
      v71 = v70;
LABEL_64:
      v139 = (v69 - 1) & v69;
      v74 = __clz(__rbit64(v69)) | (v71 << 6);
      isUniquelyReferenced_nonNull_native = v154;
      (*(v154 + 16))(v169, *(v16 + 48) + *(v154 + 72) * v74, v175);
      v75 = *(*(v16 + 56) + 8 * v74);
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE28, &qword_26294F4A8);
      v77 = *(v76 + 48);
      v39 = v141;
      (*(isUniquelyReferenced_nonNull_native + 32))();
      *(v39 + v77) = v75;
      (*(*(v76 - 8) + 56))(v39, 0, 1, v76);
    }

    else
    {
      if (v131 <= v70 + 1)
      {
        v72 = v70 + 1;
      }

      else
      {
        v72 = v131;
      }

      v73 = v72 - 1;
      while (1)
      {
        v71 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          goto LABEL_121;
        }

        if (v71 >= v131)
        {
          break;
        }

        v69 = *(v66 + 8 * v71);
        ++v70;
        if (v69)
        {
          v138 = v71;
          goto LABEL_64;
        }
      }

      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE28, &qword_26294F4A8);
      (*(*(v103 - 8) + 56))(v39, 1, 1, v103);
      v139 = 0;
      v138 = v73;
    }

    v78 = v135;
    sub_262906F00(v39, v135, &qword_27FF2EE18, &qword_26294F498);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE28, &qword_26294F4A8);
    if ((*(*(v79 - 8) + 48))(v78, 1, v79) == 1)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v185);
      sub_262905484(v136, 0);
      return sub_262905484(v140, 0);
    }

    v16 = *(v78 + *(v79 + 48));
    (*v137)(v171, v78, v175);
    v80 = v140;
    if (v16 >> 62)
    {
      v36 = sub_26294E008();
      if (!v36)
      {
        goto LABEL_93;
      }

LABEL_68:
      v81 = 0;
      v172 = (v16 & 0xC000000000000001);
      v143 = v16 & 0xFFFFFFFFFFFFFF8;
      v82 = MEMORY[0x277D84F98];
      v166 = v36;
      while (1)
      {
        if (v172)
        {
          v36 = MEMORY[0x26672D5B0](v81, v16);
        }

        else
        {
          if (v81 >= *(v143 + 16))
          {
            goto LABEL_120;
          }

          v36 = *(v16 + 8 * v81 + 32);
        }

        v83 = v36;
        v84 = (v81 + 1);
        if (__OFADD__(v81, 1))
        {
          goto LABEL_116;
        }

        isUniquelyReferenced_nonNull_native = v183;
        sub_26294DC98();
        v85 = v83;
        v86 = v176;
        sub_26294C958();
        (*v160)(v177, v86, v178);
        sub_262905484(v80, 0);
        v87 = swift_isUniquelyReferenced_nonNull_native();
        v184[0] = v82;
        v20 = sub_262902314(isUniquelyReferenced_nonNull_native);
        v89 = v82[2];
        v90 = (v88 & 1) == 0;
        v36 = v89 + v90;
        if (__OFADD__(v89, v90))
        {
          goto LABEL_118;
        }

        isUniquelyReferenced_nonNull_native = v88;
        if (v82[3] >= v36)
        {
          if (v87)
          {
            if ((v88 & 1) == 0)
            {
              goto LABEL_81;
            }
          }

          else
          {
            sub_262904044(MEMORY[0x277CC95F0], &qword_27FF2EE40, &qword_26294F4C0);
            v82 = v184[0];
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              goto LABEL_81;
            }
          }
        }

        else
        {
          sub_262902DC0(v36, v87);
          v82 = v184[0];
          v91 = sub_262902314(v183);
          if ((isUniquelyReferenced_nonNull_native & 1) != (v92 & 1))
          {
            sub_26294E078();
            __break(1u);
            goto LABEL_130;
          }

          v20 = v91;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
LABEL_81:
            v82[(v20 >> 6) + 8] |= 1 << v20;
            v36 = (*(v153 + 16))(v82[6] + *(v153 + 72) * v20, v183, v182);
            *(v82[7] + 8 * v20) = MEMORY[0x277D84F90];
            v93 = v82[2];
            v41 = __OFADD__(v93, 1);
            v94 = v93 + 1;
            if (v41)
            {
              goto LABEL_119;
            }

            v82[2] = v94;
          }
        }

        v95 = v82[7];
        v96 = *(v95 + 8 * v20);
        v97 = swift_isUniquelyReferenced_nonNull_native();
        *(v95 + 8 * v20) = v96;
        if ((v97 & 1) == 0)
        {
          v96 = sub_26291D688(0, v96[2] + 1, 1, v96);
          *(v95 + 8 * v20) = v96;
        }

        v99 = v96[2];
        v98 = v96[3];
        isUniquelyReferenced_nonNull_native = v99 + 1;
        if (v99 >= v98 >> 1)
        {
          *(v95 + 8 * v20) = sub_26291D688((v98 > 1), v99 + 1, 1, v96);
        }

        v100 = v164;
        v101 = v178;
        (*(v164 + 8))(v176, v178);
        (*v156)(v183, v182);
        v102 = *(v95 + 8 * v20);
        *(v102 + 16) = isUniquelyReferenced_nonNull_native;
        v36 = (*(v100 + 32))(v102 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v99, v177, v101);
        ++v81;
        v80 = sub_2629070CC;
        if (v84 == v166)
        {
          goto LABEL_94;
        }
      }
    }

    v36 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_68;
    }

LABEL_93:
    v82 = MEMORY[0x277D84F98];
LABEL_94:

    isUniquelyReferenced_nonNull_native = &v130;
    MEMORY[0x28223BE20](v104);
    v16 = (&v130 - 4);
    *(&v130 - 2) = &v185;
    v105 = v82[2];
    if (v105)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE30, &qword_26294F4B0);
      v106 = *(v170 + 72);
      v107 = (*(v170 + 80) + 32) & ~*(v170 + 80);
      v108 = swift_allocObject();
      v36 = _swift_stdlib_malloc_size(v108);
      if (!v106)
      {
        goto LABEL_124;
      }

      if (v36 - v107 == 0x8000000000000000 && v106 == -1)
      {
        goto LABEL_127;
      }

      v20 = v80;
      v108[2] = v105;
      v108[3] = 2 * ((v36 - v107) / v106);
      v172 = sub_262904B78(v184, v108 + v107, v105, v82);
      v109 = v184[0];
      v166 = v184[1];

      v36 = sub_262906CD8(v109);
      if (v172 != v105)
      {
        goto LABEL_125;
      }

      v80 = v20;
    }

    else
    {
      v108 = MEMORY[0x277D84F90];
    }

    v184[0] = v108;
    v84 = v181;
    sub_2628FD078(sub_262906CB8, &v130 - 32);
    if (v84)
    {
      break;
    }

    v140 = v80;
    v181 = 0;
    v110 = v184[0];
    v20 = *(v184[0] + 16);
    v111 = v168;
    if (v20)
    {
      v184[0] = MEMORY[0x277D84F90];
      v36 = sub_2628FBFB8(0, v20, 0);
      v112 = 0;
      v113 = v184[0];
      v166 = (v110 + ((*(v170 + 80) + 32) & ~*(v170 + 80)));
      v172 = v110;
      while (v112 < *(v110 + 16))
      {
        v16 = v180;
        sub_2628DF954(&v166[*(v170 + 72) * v112], v180, &qword_27FF2EE10, &qword_26294F490);
        v114 = (*v174)(v179, v16, v182);
        v115 = *&v159[v167];
        MEMORY[0x28223BE20](v114);
        *(&v130 - 2) = v16;

        v116 = v181;
        sub_2629180F8(sub_2629070E4, v115, v111);
        v181 = v116;

        v117 = sub_26294DCF8();
        v118 = *(v117 - 8);
        if ((*(v118 + 48))(v111, 1, v117) == 1)
        {
          sub_2628DF6F0(v111, &qword_27FF2ECF8, &qword_26294F260);
          v119 = v151;
          v120 = v152;
          (*v145)(v151, v146, v152);
          sub_26294C5E8();
          isUniquelyReferenced_nonNull_native = v121;
          (*v144)(v119, v120);
        }

        else
        {
          v122 = v111;
          v123 = v149;
          sub_26294DCE8();
          (*(v118 + 8))(v122, v117);
          sub_26294DC18();
          isUniquelyReferenced_nonNull_native = v124;
          (*v148)(v123, v150);
        }

        (*v173)(v169, v171, v175);

        v125 = v161;
        sub_26294C908();
        sub_2628DF6F0(v180, &qword_27FF2EE10, &qword_26294F490);
        v184[0] = v113;
        v127 = *(v113 + 16);
        v126 = *(v113 + 24);
        if (v127 >= v126 >> 1)
        {
          sub_2628FBFB8((v126 > 1), v127 + 1, 1);
          v113 = v184[0];
        }

        ++v112;
        *(v113 + 16) = v127 + 1;
        v36 = (*(v165 + 32))(v113 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v127, v125, v162);
        v111 = v168;
        v110 = v172;
        if (v20 == v112)
        {

          goto LABEL_53;
        }
      }

      goto LABEL_117;
    }

    v113 = MEMORY[0x277D84F90];
LABEL_53:
    swift_beginAccess();
    sub_2628E4224(v113);
    swift_endAccess();
    v36 = (*v132)(v171, v175);
    v39 = v141;
    v16 = v142;
    v66 = v133;
    v69 = v139;
    v70 = v138;
  }

LABEL_130:

  __break(1u);
LABEL_131:
  result = sub_26294E078();
  __break(1u);
  return result;
}

BOOL sub_2628FA328(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = a2;
  v30 = a3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE10, &qword_26294F490) - 8;
  MEMORY[0x28223BE20](v27);
  v5 = &v24 - v4;
  v33 = sub_26294DC58();
  v32 = *(v33 - 8);
  v6 = MEMORY[0x28223BE20](v33);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v24 - v9);
  sub_2628DF954(a1, v5, &qword_27FF2EE10, &qword_26294F490);

  v11 = sub_26294C508();
  v13 = v12;
  v14 = sub_26294C538();
  v15 = *(v14 - 8);
  v28 = *(v15 + 8);
  v29 = v15 + 8;
  v28(v5, v14);
  *v10 = v11;
  v10[1] = v13;
  v26 = *MEMORY[0x277D49238];
  v25 = *(v32 + 104);
  v25(v10);
  v16 = v30[3];
  v24 = v30[4];
  __swift_project_boxed_opaque_existential_1(v30, v16);
  v30 = sub_26294C628();
  sub_2628DF954(v31, v5, &qword_27FF2EE10, &qword_26294F490);

  v17 = sub_26294C508();
  v19 = v18;
  v28(v5, v14);
  *v8 = v17;
  v8[1] = v19;
  v20 = v33;
  (v25)(v8, v26, v33);
  v21 = sub_26294C628();
  v22 = *(v32 + 8);
  v22(v8, v20);
  v22(v10, v20);
  return v21 < v30;
}

void *sub_2628FA61C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_2628FA67C(void *a1, uint64_t *a2)
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

void *sub_2628FA6AC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_2628FA6D8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_2628FA7D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_262906698(a1);

  *a2 = v3;
  return result;
}

void sub_2628FA818()
{
  v1 = sub_26294CB98();
  v25 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = sub_26294CBA8();
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (v37 == 1)
  {
    v10 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups;
    swift_beginAccess();
    v11 = *(v0 + v10);
    v29 = *(v11 + 16);
    if (v29)
    {
      v28 = v11 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
      v35 = v25 + 16;
      v36 = v4;
      v12 = (v25 + 8);
      v33 = (v25 + 32);
      v26 = (v30 + 8);
      v27 = v30 + 16;

      v13 = 0;
      v14 = MEMORY[0x277D84F90];
      v23 = v9;
      v24 = v7;
      v22 = v11;
      while (v13 < *(v11 + 16))
      {
        (*(v30 + 16))(v9, v28 + *(v30 + 72) * v13, v7);
        v15 = sub_26294CAB8();
        v16 = *(v15 + 16);
        if (v16)
        {
          v31 = v15;
          v32 = v13;
          v34 = (*(v25 + 80) + 32) & ~*(v25 + 80);
          v17 = v15 + v34;
          v18 = *(v25 + 72);
          v19 = *(v25 + 16);
          do
          {
            v19(v6, v17, v1);
            if (sub_26294CB78())
            {
              v19(v36, v6, v1);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v14 = sub_26291D74C(0, *(v14 + 2) + 1, 1, v14);
              }

              v21 = *(v14 + 2);
              v20 = *(v14 + 3);
              if (v21 >= v20 >> 1)
              {
                v14 = sub_26291D74C((v20 > 1), v21 + 1, 1, v14);
              }

              (*v12)(v6, v1);
              *(v14 + 2) = v21 + 1;
              (*v33)(&v14[v34 + v21 * v18], v36, v1);
            }

            else
            {
              (*v12)(v6, v1);
            }

            v17 += v18;
            --v16;
          }

          while (v16);

          v9 = v23;
          v7 = v24;
          v11 = v22;
          v13 = v32;
        }

        else
        {
        }

        ++v13;
        (*v26)(v9, v7);
        if (v13 == v29)
        {

          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_20:
    }
  }
}

uint64_t sub_2628FAC30()
{
  v1 = sub_26294C9D8();
  v22 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26294CA28();
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (v33 == 1)
  {
    v7 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
    swift_beginAccess();
    v8 = *(v0 + v7);
    v9 = MEMORY[0x277D84F90];
    v31 = MEMORY[0x277D84F90];
    v26 = *(v8 + 16);
    if (v26)
    {
      v25 = v8 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
      v30 = v22 + 16;
      v10 = (v22 + 8);
      v23 = (v27 + 8);
      v24 = v27 + 16;

      v11 = 0;
      v20 = v6;
      v21 = v4;
      v19 = v8;
      while (v11 < *(v8 + 16))
      {
        (*(v27 + 16))(v6, v25 + *(v27 + 72) * v11, v4);
        v12 = sub_26294C928();
        v13 = *(v12 + 16);
        if (v13)
        {
          v28 = v11;
          v29 = v12;
          v14 = v12 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
          v15 = *(v22 + 72);
          v16 = *(v22 + 16);
          v16(v3, v14, v1);
          while (1)
          {
            if (sub_26294C9B8())
            {
              sub_26294C948();
              MEMORY[0x26672D3D0]();
              if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_26294DDD8();
              }

              sub_26294DDF8();
              (*v10)(v3, v1);
              v9 = v31;
            }

            else
            {
              (*v10)(v3, v1);
            }

            v14 += v15;
            if (!--v13)
            {
              break;
            }

            v16(v3, v14, v1);
          }

          v6 = v20;
          v4 = v21;
          v8 = v19;
          v11 = v28;
        }

        else
        {
        }

        ++v11;
        (*v23)(v6, v4);
        if (v11 == v26)
        {

          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_19:
      if (!(v9 >> 62))
      {
        v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_21:

        return v17;
      }
    }

    v17 = sub_26294E008();
    goto LABEL_21;
  }

  return v32;
}

uint64_t sub_2628FAFEC(uint64_t a1, uint64_t a2)
{
  v2 = sub_26294C538();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26294DCD8();
  v6 = sub_26294C518();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

BOOL sub_2628FB0D8(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = sub_26294C678();
  if (!v2)
  {
    return (v3 - 131) < 0xFFFFFFFFFFFFFFFELL;
  }

  return 0;
}

uint64_t sub_2628FB160@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  *a2 = v4;
  return result;
}

uint64_t sub_2628FB1E0(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_26294D008();
}

uint64_t sub_2628FB250@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  *a2 = v4;
  return result;
}

uint64_t sub_2628FB2D0(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_26294D008();
}

uint64_t sub_2628FB340@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_2628FB3C8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_26294D008();
}

__n128 sub_2628FB448@<Q0>(__n128 *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  result = v5;
  *a2 = v4;
  a2[1] = v5;
  a2[2].n128_u8[0] = v6;
  return result;
}

uint64_t sub_2628FB4D8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;

  return sub_26294D008();
}

uint64_t sub_2628FB57C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2628FB674;

  return v6(a1);
}

uint64_t sub_2628FB674()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2628FB76C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2628FB838(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2629056C0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2628FB838(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2628FB944(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26294DFA8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2628FB944(uint64_t a1, unint64_t a2)
{
  v3 = sub_2628FB990(a1, a2);
  sub_2628FBAC0(&unk_28752E290);
  return v3;
}

void *sub_2628FB990(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2628FBBAC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26294DFA8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26294DD98();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2628FBBAC(v10, 0);
        result = sub_26294DF78();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2628FBAC0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2628FBC20(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2628FBBAC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED18, &unk_26294F270);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2628FBC20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED18, &unk_26294F270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_2628FBD14(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EC90, &qword_26294F220);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EC98, &qword_26294F228);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_2628FBE10(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_26294E008();
LABEL_9:
  result = sub_26294DF98();
  *v2 = result;
  return result;
}

void *sub_2628FBEB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2628FCCB8(a1, a2, a3, *v3, &qword_27FF2ED40, &qword_26294F290, MEMORY[0x277D49038]);
  *v3 = result;
  return result;
}

void *sub_2628FBEF4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2628FC980(a1, a2, a3, *v3, &qword_27FF2EC90, &qword_26294F220, &qword_27FF2EC98, &qword_26294F228);
  *v3 = result;
  return result;
}

void *sub_2628FBF34(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2628FC980(a1, a2, a3, *v3, &qword_27FF2ED90, &qword_26294F348, &qword_27FF2ED98, &qword_26294F350);
  *v3 = result;
  return result;
}

void *sub_2628FBF74(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2628FCCB8(a1, a2, a3, *v3, &qword_27FF2EE78, &qword_26294F4E0, MEMORY[0x277D48F58]);
  *v3 = result;
  return result;
}

void *sub_2628FBFB8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2628FCCB8(a1, a2, a3, *v3, &qword_27FF2EE50, &qword_26294F4C8, MEMORY[0x277D48F20]);
  *v3 = result;
  return result;
}

void *sub_2628FBFFC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2628FCCB8(a1, a2, a3, *v3, &qword_27FF2EE90, &qword_26294F4F0, MEMORY[0x277D48F80]);
  *v3 = result;
  return result;
}

uint64_t type metadata accessor for SEStorageManagementController(uint64_t a1)
{
  result = qword_27FF2EBE0;
  if (!qword_27FF2EBE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2628FC0A0(uint64_t a1)
{
  sub_2628FC63C(319, &qword_27FF2EBF0, MEMORY[0x277D49070]);
  if (v1 <= 0x3F)
  {
    sub_2628FC690(319, &qword_27FF2EBF8, &qword_27FF2EA58, &unk_26294EC20);
    if (v2 <= 0x3F)
    {
      sub_2628FC63C(319, &qword_27FF2EC00, MEMORY[0x277D49318]);
      if (v3 <= 0x3F)
      {
        sub_2628FC6E4(319, &qword_27FF2EC08, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
        if (v4 <= 0x3F)
        {
          sub_2628FC690(319, &qword_27FF2EC10, &qword_27FF2EB10, &qword_26294ECE8);
          if (v5 <= 0x3F)
          {
            sub_2628FC6E4(319, &qword_27FF2EC18, &type metadata for SEStorageManagementController.DeletionState, MEMORY[0x277CBCED0]);
            if (v6 <= 0x3F)
            {
              sub_26294C538();
              if (v7 <= 0x3F)
              {
                sub_2628FC6E4(319, &qword_27FF2EC20, &type metadata for SEStorageManagementController.PrimaryCategoryPresence, MEMORY[0x277CBCED0]);
                if (v8 <= 0x3F)
                {
                  sub_2628FC690(319, &qword_27FF2EC28, &qword_27FF2EB58, &qword_26294ECF0);
                  if (v9 <= 0x3F)
                  {
                    sub_2628FC690(319, &qword_27FF2EC30, &qword_27FF2E908, &qword_26294E928);
                    if (v10 <= 0x3F)
                    {
                      sub_2628FC690(319, &qword_27FF2EC38, &qword_27FF2EBB8, &qword_26294ECF8);
                      if (v11 <= 0x3F)
                      {
                        sub_2628FC690(319, &qword_27FF2EC40, &qword_27FF2EBC8, &qword_26294ED00);
                        if (v12 <= 0x3F)
                        {
                          sub_2628FC690(319, &qword_27FF2EC48, &qword_27FF2E9A0, &qword_26294E9A8);
                          if (v13 <= 0x3F)
                          {
                            sub_2628FC6E4(319, &qword_27FF2EC50, MEMORY[0x277D839B0], MEMORY[0x277D492C8]);
                            if (v14 <= 0x3F)
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
    }
  }
}

void sub_2628FC63C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26294D018();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2628FC690(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_26294D018();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2628FC6E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SEStorageManagementController.DeletionState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SEStorageManagementController.DeletionState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2628FC7A8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2628FC7C8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_2628FC7FC()
{
  result = qword_27FF2EC58;
  if (!qword_27FF2EC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EC58);
  }

  return result;
}

unint64_t sub_2628FC854()
{
  result = qword_27FF2EC60;
  if (!qword_27FF2EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EC60);
  }

  return result;
}

unint64_t sub_2628FC8AC()
{
  result = qword_27FF2EC68;
  if (!qword_27FF2EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EC68);
  }

  return result;
}

unint64_t sub_2628FC904()
{
  result = qword_27FF2EC70;
  if (!qword_27FF2EC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EC70);
  }

  return result;
}

char *sub_2628FC960(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2628FCE94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2628FC980(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_2628FCAC8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE30, &qword_26294F4B0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE10, &qword_26294F490) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE10, &qword_26294F490) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2628FCCB8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2628FCE94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED70, &qword_26294F2F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2628FCFA0(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), double (*a5)(void))
{
  v9 = *(a2(0) - 8);
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a3(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v13[1] = v11;
  result = sub_2628FD1B0(v13, a4, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_2628FD078(uint64_t (*a1)(char *, char *), char *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE10, &qword_26294F490);
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_262904B1C(v5);
  }

  result = sub_2628FD318(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_2628FD144(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_262904B30(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + 4;
  v5[1] = v3;
  result = sub_2628FD46C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2628FD1B0(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void), double (*a4)(void))
{
  v8 = a1[1];
  result = sub_26294E048();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_26294DDE8();
        *(v12 + 16) = v11;
      }

      v13 = *(a2(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      sub_2628FE09C(v14, v15, a1, v10, a3, a4, a3, a4);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return sub_2628FD574(0, v8, 1, a1, a3, a4);
  }

  return result;
}

uint64_t sub_2628FD318(uint64_t (*a1)(char *, char *), char *a2)
{
  v5 = v2[1];
  result = sub_26294E048();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE10, &qword_26294F490);
        v9 = sub_26294DDE8();
        *(v9 + 16) = v8;
      }

      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE10, &qword_26294F490) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_2628FEB2C(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_2628FD824(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_2628FD46C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_26294E048();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EC98, &qword_26294F228);
        v5 = sub_26294DDE8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_2628FF660(v7, v8, a1, v4);
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
    return sub_2628FDAD4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2628FD574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void), double (*a6)(void))
{
  v51 = a6;
  v10 = a5(0);
  v11 = MEMORY[0x28223BE20](v10);
  v46 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v50 = &v36 - v14;
  result = MEMORY[0x28223BE20](v13);
  v49 = &v36 - v17;
  v38 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v47 = *(v16 + 16);
    v48 = v16 + 16;
    v19 = *(v16 + 72);
    v20 = (v16 + 8);
    v21 = v18 + v19 * (a3 - 1);
    v43 = -v19;
    v44 = (v16 + 32);
    v22 = a1 - a3;
    v45 = v18;
    v37 = v19;
    v23 = v18 + v19 * a3;
    v24 = v50;
LABEL_5:
    v41 = v21;
    v42 = a3;
    v39 = v23;
    v40 = v22;
    v25 = v22;
    while (1)
    {
      v26 = v49;
      v27 = v47;
      v47(v49, v23, v10);
      v28 = v27(v24, v21, v10);
      v29 = v51;
      v30 = (v51)(v28);
      v31 = v29();
      v32 = *v20;
      (*v20)(v24, v10);
      result = v32(v26, v10);
      if (v31 >= v30)
      {
LABEL_4:
        a3 = v42 + 1;
        v21 = v41 + v37;
        v22 = v40 - 1;
        v23 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v45)
      {
        break;
      }

      v33 = *v44;
      v34 = v46;
      (*v44)(v46, v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      result = (v33)(v21, v34, v10);
      v21 += v43;
      v23 += v43;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2628FD824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = v5;
  v49 = a4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE10, &qword_26294F490);
  v10 = MEMORY[0x28223BE20](v46);
  v45 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v48 = &v36 - v13;
  result = MEMORY[0x28223BE20](v12);
  v47 = &v36 - v16;
  v38 = a2;
  if (a3 != a2)
  {
    v17 = *v4;
    v18 = *(v15 + 72);
    v19 = *v4 + v18 * (a3 - 1);
    v43 = -v18;
    v44 = v17;
    v20 = a1 - a3;
    v37 = v18;
    v21 = v17 + v18 * a3;
    v22 = &qword_27FF2EE10;
    v23 = &qword_26294F490;
LABEL_3:
    v41 = v19;
    v42 = a3;
    v39 = v21;
    v40 = v20;
    v24 = v20;
    v25 = v19;
    while (1)
    {
      v50 = v24;
      v26 = v47;
      sub_2628DF954(v21, v47, v22, v23);
      v27 = v23;
      v28 = v22;
      v29 = v48;
      sub_2628DF954(v25, v48, v28, v27);
      v30 = v6;
      v31 = v49(v26, v29);
      v32 = v29;
      v22 = v28;
      v23 = v27;
      sub_2628DF6F0(v32, v22, v27);
      result = sub_2628DF6F0(v26, v22, v27);
      if (v30)
      {
        break;
      }

      if ((v31 & 1) == 0)
      {
        v6 = 0;
LABEL_11:
        a3 = v42 + 1;
        v19 = v41 + v37;
        v20 = v40 - 1;
        v21 = v39 + v37;
        if (v42 + 1 != v38)
        {
          goto LABEL_3;
        }

        return result;
      }

      v33 = v50;
      if (!v44)
      {
        __break(1u);
        return result;
      }

      v34 = v45;
      sub_262906F00(v21, v45, v22, v27);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_262906F00(v34, v25, v22, v27);
      v25 += v43;
      v21 += v43;
      v35 = __CFADD__(v33, 1);
      v24 = v33 + 1;
      v6 = 0;
      if (v35)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t sub_2628FDAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v57 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v63 = &v50[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v65 = &v50[-v14];
  MEMORY[0x28223BE20](v13);
  v66 = &v50[-v15];
  v16 = sub_26294C4F8();
  v17 = MEMORY[0x28223BE20](v16);
  v55 = &v50[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v17);
  v22 = &v50[-v21];
  v51 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v68 = (v20 + 48);
    v56 = (v20 + 8);
    v64 = v23;
    v24 = v23 + 40 * a3;
    v25 = a1 - a3;
    v67 = v16;
    v61 = (v20 + 32);
    v62 = &v50[-v21];
LABEL_6:
    v54 = a3;
    v52 = v25;
    v26 = v25;
    v53 = v24;
    while (1)
    {
      v71 = v26;
      sub_262906C54(v24, &v74);
      v69 = (v24 - 40);
      v70 = v24;
      sub_262906C54(v24 - 40, v72);
      v27 = v76;
      v28 = __swift_project_boxed_opaque_existential_1(&v74, v75);
      v29 = v66;
      sub_26294C608();
      v30 = *v68;
      v31 = (*v68)(v29, 1, v16);
      v32 = v29;
      if (v31 != 1)
      {
        v60 = v28;
        v59 = v27;
        v58 = *v61;
        v58(v22, v29, v16);
        v33 = v22;
        v34 = v65;
        __swift_project_boxed_opaque_existential_1(v72, v73);
        v16 = v67;
        sub_26294C608();
        if (v30(v34, 1, v16) != 1)
        {
          v46 = v55;
          v58(v55, v65, v16);
          v22 = v33;
          v43 = sub_26294C4D8();
          v47 = *v56;
          (*v56)(v46, v16);
          v47(v33, v16);
          goto LABEL_15;
        }

        (*v56)(v33, v16);
        v32 = v65;
      }

      sub_2628DF6F0(v32, &qword_27FF2E978, &qword_26294EC40);
      v35 = v16;
      v36 = v63;
      sub_26294C608();
      v37 = v30(v36, 1, v35);
      sub_2628DF6F0(v36, &qword_27FF2E978, &qword_26294EC40);
      if (v37 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v74);
        v16 = v35;
        v22 = v62;
LABEL_5:
        a3 = v54 + 1;
        v24 = v53 + 40;
        v25 = v52 - 1;
        if (v54 + 1 == v51)
        {
          return result;
        }

        goto LABEL_6;
      }

      __swift_project_boxed_opaque_existential_1(v72, v73);
      v38 = v57;
      sub_26294C608();
      v39 = v30(v38, 1, v35);
      sub_2628DF6F0(v38, &qword_27FF2E978, &qword_26294EC40);
      if (v39 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v74);
        v16 = v67;
        v22 = v62;
        v45 = v70;
        v44 = v71;
        goto LABEL_16;
      }

      __swift_project_boxed_opaque_existential_1(&v74, v75);
      sub_26294C618();
      v41 = v40;
      __swift_project_boxed_opaque_existential_1(v72, v73);
      sub_26294C618();
      v43 = v42 < v41;
      v16 = v67;
      v22 = v62;
LABEL_15:
      v45 = v70;
      v44 = v71;
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v74);
      if ((v43 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_16:
      if (!v64)
      {
        __break(1u);
        return result;
      }

      sub_262905600(v45, &v74);
      v24 = v69;
      v48 = v69[1];
      *v45 = *v69;
      *(v45 + 16) = v48;
      *(v45 + 32) = *(v24 + 32);
      result = sub_262905600(&v74, v24);
      v49 = __CFADD__(v44, 1);
      v26 = v44 + 1;
      if (v49)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_2628FE09C(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(void), double (*a6)(void), uint64_t (*a7)(void), double (*a8)(void))
{
  v140 = a7;
  v141 = a8;
  v151 = a6;
  v9 = v8;
  v131 = a1;
  v12 = (a5)(0, a2);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v134 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v145 = &v128 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v150 = &v128 - v19;
  result = MEMORY[0x28223BE20](v18);
  v149 = &v128 - v21;
  v142 = a3;
  v22 = *(a3 + 8);
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_97:
    a4 = *v131;
    if (!*v131)
    {
      goto LABEL_136;
    }

    a3 = v24;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_130:
      result = sub_262901E7C(a3);
    }

    v153 = result;
    v123 = *(result + 16);
    if (v123 >= 2)
    {
      while (*v142)
      {
        a3 = v123 - 1;
        v124 = *(result + 16 * v123);
        v125 = result;
        v126 = *(result + 16 * (v123 - 1) + 40);
        sub_262900660(*v142 + v13[9] * v124, *v142 + v13[9] * *(result + 16 * (v123 - 1) + 32), *v142 + v13[9] * v126, a4, v140, v141, v140);
        if (v9)
        {
        }

        if (v126 < v124)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v125 = sub_262901E7C(v125);
        }

        if (v123 - 2 >= *(v125 + 2))
        {
          goto LABEL_124;
        }

        v127 = &v125[16 * v123];
        *v127 = v124;
        *(v127 + 1) = v126;
        v153 = v125;
        sub_262901DF0(a3);
        result = v153;
        v123 = *(v153 + 16);
        if (v123 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v23 = 0;
  v147 = (v13 + 1);
  v148 = v13 + 2;
  v146 = (v13 + 4);
  v24 = MEMORY[0x277D84F90];
  v139 = v13;
  v152 = v12;
  v130 = a4;
  while (1)
  {
    v25 = v23;
    v135 = v24;
    if (v23 + 1 >= v22)
    {
      v40 = v23 + 1;
    }

    else
    {
      v143 = v22;
      v129 = v9;
      v26 = *v142;
      v136 = v26;
      v27 = v13[9];
      v28 = v23;
      v29 = v26 + v27 * (v23 + 1);
      v30 = v13[2];
      v31 = v149;
      v30(v149, v29, v12);
      v32 = v26 + v27 * v28;
      v33 = v150;
      v138 = v30;
      v34 = (v30)(v150, v32, v12);
      v35 = v151;
      v36 = (v151)(v34);
      v37 = v35();
      v38 = v13[1];
      v38(v33, v12);
      v137 = v38;
      result = (v38)(v31, v12);
      v128 = v28;
      v39 = v28 + 2;
      v144 = v27;
      a3 = v136 + v27 * (v28 + 2);
      while (1)
      {
        v40 = v143;
        if (v143 == v39)
        {
          break;
        }

        v41 = v149;
        v42 = v152;
        v43 = v138;
        v138(v149, a3, v152);
        v44 = v150;
        v45 = v43(v150, v29, v42);
        v46 = v151;
        v47 = (v151)(v45);
        v48 = v46();
        v49 = v137;
        (v137)(v44, v42);
        result = v49(v41, v42);
        v13 = v139;
        ++v39;
        a3 += v144;
        v29 += v144;
        if (v37 < v36 == v48 >= v47)
        {
          v40 = v39 - 1;
          break;
        }
      }

      v9 = v129;
      v50 = v135;
      v12 = v152;
      a4 = v130;
      v25 = v128;
      if (v37 < v36)
      {
        if (v40 < v128)
        {
          goto LABEL_127;
        }

        if (v128 < v40)
        {
          v51 = v144 * (v40 - 1);
          v52 = v40 * v144;
          v143 = v40;
          v53 = v40;
          v54 = v128;
          v55 = v128 * v144;
          do
          {
            if (v54 != --v53)
            {
              v57 = *v142;
              if (!*v142)
              {
                goto LABEL_133;
              }

              a3 = v57 + v55;
              v58 = *v146;
              (*v146)(v134, v57 + v55, v152, v50);
              if (v55 < v51 || a3 >= v57 + v52)
              {
                v56 = v152;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v56 = v152;
                if (v55 != v51)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v58)(v57 + v51, v134, v56);
              v50 = v135;
            }

            ++v54;
            v51 -= v144;
            v52 -= v144;
            v55 += v144;
          }

          while (v54 < v53);
          v9 = v129;
          v13 = v139;
          v12 = v152;
          a4 = v130;
          v25 = v128;
          v40 = v143;
        }
      }
    }

    v59 = v142[1];
    if (v40 < v59)
    {
      if (__OFSUB__(v40, v25))
      {
        goto LABEL_126;
      }

      if (v40 - v25 < a4)
      {
        if (__OFADD__(v25, a4))
        {
          goto LABEL_128;
        }

        if (v25 + a4 >= v59)
        {
          v60 = v142[1];
        }

        else
        {
          v60 = v25 + a4;
        }

        if (v60 < v25)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v40 != v60)
        {
          break;
        }
      }
    }

    v23 = v40;
    if (v40 < v25)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v24 = v135;
    }

    else
    {
      result = sub_262902068(0, *(v135 + 2) + 1, 1, v135);
      v24 = result;
    }

    a3 = *(v24 + 2);
    v61 = *(v24 + 3);
    v62 = a3 + 1;
    if (a3 >= v61 >> 1)
    {
      result = sub_262902068((v61 > 1), a3 + 1, 1, v24);
      v24 = result;
    }

    *(v24 + 2) = v62;
    v63 = &v24[16 * a3];
    *(v63 + 4) = v25;
    *(v63 + 5) = v23;
    if (!*v131)
    {
      goto LABEL_135;
    }

    if (a3)
    {
      v64 = *v131;
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v24 + 4);
          v67 = *(v24 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_53:
          if (v69)
          {
            goto LABEL_114;
          }

          v82 = &v24[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_117;
          }

          v88 = &v24[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_121;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v92 = &v24[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_67:
        if (v87)
        {
          goto LABEL_116;
        }

        v95 = &v24[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_119;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_74:
        a3 = v65 - 1;
        if (v65 - 1 >= v62)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*v142)
        {
          goto LABEL_132;
        }

        v103 = v24;
        v104 = *&v24[16 * a3 + 32];
        a4 = *&v24[16 * v65 + 40];
        sub_262900660(*v142 + v13[9] * v104, *v142 + v13[9] * *&v24[16 * v65 + 32], *v142 + v13[9] * a4, v64, v140, v141, v140);
        if (v9)
        {
        }

        if (a4 < v104)
        {
          goto LABEL_110;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v105 = v103;
        }

        else
        {
          v105 = sub_262901E7C(v103);
        }

        v12 = v152;
        if (a3 >= *(v105 + 2))
        {
          goto LABEL_111;
        }

        v106 = &v105[16 * a3];
        *(v106 + 4) = v104;
        *(v106 + 5) = a4;
        v153 = v105;
        result = sub_262901DF0(v65);
        v24 = v153;
        v62 = *(v153 + 16);
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v24[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_112;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_113;
      }

      v77 = &v24[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_115;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_118;
      }

      if (v81 >= v73)
      {
        v99 = &v24[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_122;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v22 = v142[1];
    a4 = v130;
    if (v23 >= v22)
    {
      goto LABEL_97;
    }
  }

  v129 = v9;
  v107 = *v142;
  v108 = v13[9];
  v109 = v13[2];
  a3 = *v142 + v108 * (v40 - 1);
  a4 = -v108;
  v128 = v25;
  v110 = (v25 - v40);
  v144 = v107;
  v132 = v108;
  v111 = v107 + v40 * v108;
  v133 = v60;
LABEL_87:
  v143 = v40;
  v136 = v111;
  v137 = v110;
  v138 = a3;
  while (1)
  {
    v112 = v149;
    v109(v149, v111, v12);
    v113 = v150;
    v114 = (v109)(v150, a3, v152);
    v115 = v151;
    v116 = (v151)(v114);
    v117 = v115();
    v118 = *v147;
    v119 = v113;
    v12 = v152;
    (*v147)(v119, v152);
    result = v118(v112, v12);
    if (v117 >= v116)
    {
LABEL_86:
      v40 = v143 + 1;
      a3 = v138 + v132;
      v110 = v137 - 1;
      v111 = v136 + v132;
      v23 = v133;
      if (v143 + 1 != v133)
      {
        goto LABEL_87;
      }

      v9 = v129;
      v13 = v139;
      v25 = v128;
      if (v133 < v128)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v144)
    {
      break;
    }

    v120 = v145;
    v121 = *v146;
    (*v146)(v145, v111, v12);
    swift_arrayInitWithTakeFrontToBack();
    v121(a3, v120, v12);
    a3 += a4;
    v111 += a4;
    if (__CFADD__(v110++, 1))
    {
      goto LABEL_86;
    }
  }

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
  return result;
}

uint64_t sub_2628FEB2C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, char *), char *a5, uint64_t a6)
{
  v7 = v6;
  v134 = a4;
  v135 = a5;
  v123 = a1;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE10, &qword_26294F490);
  v131 = *(v127 - 8);
  v10 = MEMORY[0x28223BE20](v127);
  v124 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v126 = &v111 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v111 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v19 = MEMORY[0x28223BE20](v18);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v111 - v21;
  result = MEMORY[0x28223BE20](v20);
  v133 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_100:
    a6 = *v123;
    if (*v123)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v29 = v134;
      v17 = v135;
      if ((result & 1) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_102;
    }

    goto LABEL_140;
  }

  v120 = &v111 - v24;
  v121 = v22;
  v128 = v26;
  v125 = v25;
  v116 = a6;
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  v119 = v27;
  while (1)
  {
    v31 = v29;
    if (v29 + 1 >= v28)
    {
      v42 = v29 + 1;
    }

    else
    {
      v122 = v28;
      v132 = v7;
      v32 = *v133;
      v33 = *(v131 + 72);
      a6 = *v133 + v33 * (v29 + 1);
      v34 = v120;
      sub_2628DF954(a6, v120, &qword_27FF2EE10, &qword_26294F490);
      v130 = v33;
      v35 = v121;
      sub_2628DF954(v32 + v33 * v29, v121, &qword_27FF2EE10, &qword_26294F490);
      v36 = v132;
      LODWORD(v132) = v134(v34, v35);
      if (v36)
      {
        sub_2628DF6F0(v35, &qword_27FF2EE10, &qword_26294F490);
        sub_2628DF6F0(v34, &qword_27FF2EE10, &qword_26294F490);
      }

      v118 = v30;
      v115 = v17;
      sub_2628DF6F0(v35, &qword_27FF2EE10, &qword_26294F490);
      result = sub_2628DF6F0(v34, &qword_27FF2EE10, &qword_26294F490);
      v114 = v122 - 1;
      v129 = v122 - 2;
      v37 = v130;
      v38 = v32 + v130 * (v29 + 2);
      v117 = v29;
      v39 = v119;
      while (v129 != v29)
      {
        sub_2628DF954(v38, v39, &qword_27FF2EE10, &qword_26294F490);
        v40 = v128;
        sub_2628DF954(a6, v128, &qword_27FF2EE10, &qword_26294F490);
        v41 = v134(v39, v40);
        sub_2628DF6F0(v40, &qword_27FF2EE10, &qword_26294F490);
        result = sub_2628DF6F0(v39, &qword_27FF2EE10, &qword_26294F490);
        ++v29;
        v37 = v130;
        v38 += v130;
        a6 += v130;
        if ((v132 ^ v41))
        {
          v42 = v29 + 1;
          goto LABEL_11;
        }
      }

      v29 = v114;
      v42 = v122;
LABEL_11:
      v17 = v115;
      v7 = 0;
      v31 = v117;
      if (v132)
      {
        v30 = v118;
        if (v42 < v117)
        {
          goto LABEL_134;
        }

        if (v117 <= v29)
        {
          a6 = v37 * (v42 - 1);
          v43 = v42 * v37;
          v122 = v42;
          v44 = v117;
          v29 = v117 * v37;
          do
          {
            if (v44 != --v42)
            {
              v132 = v7;
              v45 = *v133;
              if (!*v133)
              {
                goto LABEL_138;
              }

              sub_262906F00(v45 + v29, v124, &qword_27FF2EE10, &qword_26294F490);
              if (v29 < a6 || v45 + v29 >= (v45 + v43))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v29 != a6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_262906F00(v124, v45 + a6, &qword_27FF2EE10, &qword_26294F490);
              v7 = v132;
              v37 = v130;
            }

            ++v44;
            a6 -= v37;
            v43 -= v37;
            v29 += v37;
          }

          while (v44 < v42);
          v17 = v115;
          v42 = v122;
        }
      }

      else
      {
        v30 = v118;
      }
    }

    v46 = v133[1];
    if (v42 >= v46)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v42, v31))
    {
      goto LABEL_130;
    }

    if (v42 - v31 >= v116)
    {
      goto LABEL_35;
    }

    if (__OFADD__(v31, v116))
    {
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    if (v31 + v116 >= v46)
    {
      v47 = v133[1];
    }

    else
    {
      v47 = v31 + v116;
    }

    if (v47 < v31)
    {
      goto LABEL_133;
    }

    if (v42 == v47)
    {
LABEL_35:
      a6 = v42;
      if (v42 < v31)
      {
        goto LABEL_129;
      }
    }

    else
    {
      v132 = v7;
      v95 = *v133;
      v96 = *(v131 + 72);
      v97 = *v133 + v96 * (v42 - 1);
      v129 = -v96;
      v130 = v95;
      v117 = v31;
      v98 = (v31 - v42);
      v112 = v96;
      v99 = v95 + v42 * v96;
      v113 = v47;
      do
      {
        v122 = v42;
        v114 = v99;
        v100 = v99;
        v115 = v98;
        v118 = v97;
        do
        {
          sub_2628DF954(v100, v17, &qword_27FF2EE10, &qword_26294F490);
          v29 = v17;
          v101 = v125;
          sub_2628DF954(v97, v125, &qword_27FF2EE10, &qword_26294F490);
          v102 = v132;
          v103 = v134(v29, v101);
          v132 = v102;
          if (v102)
          {
            sub_2628DF6F0(v101, &qword_27FF2EE10, &qword_26294F490);
            sub_2628DF6F0(v29, &qword_27FF2EE10, &qword_26294F490);
          }

          v104 = v103;
          sub_2628DF6F0(v101, &qword_27FF2EE10, &qword_26294F490);
          result = sub_2628DF6F0(v29, &qword_27FF2EE10, &qword_26294F490);
          v17 = v29;
          if ((v104 & 1) == 0)
          {
            break;
          }

          if (!v130)
          {
            goto LABEL_136;
          }

          v105 = v126;
          sub_262906F00(v100, v126, &qword_27FF2EE10, &qword_26294F490);
          swift_arrayInitWithTakeFrontToBack();
          sub_262906F00(v105, v97, &qword_27FF2EE10, &qword_26294F490);
          v97 += v129;
          v100 += v129;
        }

        while (!__CFADD__(v98++, 1));
        v42 = v122 + 1;
        v97 = &v118[v112];
        v98 = v115 - 1;
        v99 = v114 + v112;
        a6 = v113;
      }

      while (v122 + 1 != v113);
      v7 = v132;
      v31 = v117;
      if (v113 < v117)
      {
        goto LABEL_129;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v48 = v7;
    if ((result & 1) == 0)
    {
      result = sub_262902068(0, *(v30 + 2) + 1, 1, v30);
      v30 = result;
    }

    v50 = *(v30 + 2);
    v49 = *(v30 + 3);
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      result = sub_262902068((v49 > 1), v50 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v51;
    v52 = &v30[16 * v50];
    *(v52 + 4) = v31;
    *(v52 + 5) = a6;
    v29 = a6;
    a6 = *v123;
    if (!*v123)
    {
      goto LABEL_139;
    }

    if (v50)
    {
      break;
    }

    v7 = v48;
LABEL_87:
    v28 = v133[1];
    if (v29 >= v28)
    {
      goto LABEL_100;
    }
  }

  v7 = v48;
  while (1)
  {
    v53 = v51 - 1;
    if (v51 >= 4)
    {
      v58 = &v30[16 * v51 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_116;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_117;
      }

      v65 = &v30[16 * v51];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_119;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_122;
      }

      if (v69 >= v61)
      {
        v87 = &v30[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_128;
        }

        if (v56 < v90)
        {
          v53 = v51 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    if (v51 == 3)
    {
      v54 = *(v30 + 4);
      v55 = *(v30 + 5);
      v64 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      v57 = v64;
LABEL_56:
      if (v57)
      {
        goto LABEL_118;
      }

      v70 = &v30[16 * v51];
      v72 = *v70;
      v71 = *(v70 + 1);
      v73 = __OFSUB__(v71, v72);
      v74 = v71 - v72;
      v75 = v73;
      if (v73)
      {
        goto LABEL_121;
      }

      v76 = &v30[16 * v53 + 32];
      v78 = *v76;
      v77 = *(v76 + 1);
      v64 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v64)
      {
        goto LABEL_124;
      }

      if (__OFADD__(v74, v79))
      {
        goto LABEL_125;
      }

      if (v74 + v79 >= v56)
      {
        if (v56 < v79)
        {
          v53 = v51 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v80 = &v30[16 * v51];
    v82 = *v80;
    v81 = *(v80 + 1);
    v64 = __OFSUB__(v81, v82);
    v74 = v81 - v82;
    v75 = v64;
LABEL_70:
    if (v75)
    {
      goto LABEL_120;
    }

    v83 = &v30[16 * v53];
    v85 = *(v83 + 4);
    v84 = *(v83 + 5);
    v64 = __OFSUB__(v84, v85);
    v86 = v84 - v85;
    if (v64)
    {
      goto LABEL_123;
    }

    if (v86 < v74)
    {
      goto LABEL_87;
    }

LABEL_77:
    v91 = v53 - 1;
    if (v53 - 1 >= v51)
    {
      break;
    }

    if (!*v133)
    {
      goto LABEL_135;
    }

    v92 = *&v30[16 * v91 + 32];
    v93 = *&v30[16 * v53 + 40];
    sub_262900C48(*v133 + *(v131 + 72) * v92, *v133 + *(v131 + 72) * *&v30[16 * v53 + 32], *v133 + *(v131 + 72) * v93, a6, v134, v135);
    if (v7)
    {
    }

    if (v93 < v92)
    {
      goto LABEL_114;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_262901E7C(v30);
    }

    if (v91 >= *(v30 + 2))
    {
      goto LABEL_115;
    }

    v94 = &v30[16 * v91];
    *(v94 + 4) = v92;
    *(v94 + 5) = v93;
    v136 = v30;
    result = sub_262901DF0(v53);
    v30 = v136;
    v51 = *(v136 + 2);
    if (v51 <= 1)
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  result = sub_262901E7C(v30);
  v30 = result;
LABEL_102:
  v136 = v30;
  v107 = *(v30 + 2);
  if (v107 < 2)
  {
  }

  while (*v133)
  {
    v108 = *&v30[16 * v107];
    v109 = *&v30[16 * v107 + 24];
    sub_262900C48(*v133 + *(v131 + 72) * v108, *v133 + *(v131 + 72) * *&v30[16 * v107 + 16], *v133 + *(v131 + 72) * v109, a6, v29, v17);
    if (v7)
    {
    }

    if (v109 < v108)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_262901E7C(v30);
    }

    if (v107 - 2 >= *(v30 + 2))
    {
      goto LABEL_127;
    }

    v110 = &v30[16 * v107];
    *v110 = v108;
    *(v110 + 1) = v109;
    v136 = v30;
    result = sub_262901DF0(v107 - 1);
    v30 = v136;
    v107 = *(v136 + 2);
    if (v107 <= 1)
    {
    }
  }

LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
  return result;
}

uint64_t sub_2628FF660(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v145 = a4;
  v142 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v163 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v166 = &v142 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v142 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v142 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v144 = &v142 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v151 = &v142 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v149 = &v142 - v21;
  MEMORY[0x28223BE20](v20);
  v154 = &v142 - v22;
  v23 = sub_26294C4F8();
  v24 = MEMORY[0x28223BE20](v23);
  v156 = (&v142 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x28223BE20](v24);
  v27 = MEMORY[0x28223BE20](v26);
  v143 = &v142 - v28;
  result = MEMORY[0x28223BE20](v27);
  v155 = a3;
  v33 = *(a3 + 1);
  if (v33 < 1)
  {
    v36 = MEMORY[0x277D84F90];
LABEL_114:
    a3 = *v142;
    if (!*v142)
    {
      goto LABEL_156;
    }

    v12 = v36;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v12;
      goto LABEL_117;
    }

LABEL_150:
    result = sub_262901E7C(v12);
LABEL_117:
    v179 = result;
    v12 = *(result + 16);
    if (v12 >= 2)
    {
      while (*v155)
      {
        v137 = *(result + 16 * v12);
        v138 = result;
        v139 = *(result + 16 * (v12 - 1) + 40);
        v140 = v158;
        sub_2629012B8((*v155 + 40 * v137), (*v155 + 40 * *(result + 16 * (v12 - 1) + 32)), *v155 + 40 * v139, a3);
        v158 = v140;
        if (v140)
        {
        }

        if (v139 < v137)
        {
          goto LABEL_143;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v138 = sub_262901E7C(v138);
        }

        if (v12 - 2 >= *(v138 + 2))
        {
          goto LABEL_144;
        }

        v141 = &v138[16 * v12];
        *v141 = v137;
        *(v141 + 1) = v139;
        v179 = v138;
        sub_262901DF0(v12 - 1);
        result = v179;
        v12 = *(v179 + 16);
        if (v12 <= 1)
        {
        }
      }

      goto LABEL_154;
    }
  }

  v148 = &v142 - v31;
  v159 = v32;
  v34 = 0;
  v35 = (v30 + 48);
  v161 = (v30 + 32);
  v36 = MEMORY[0x277D84F90];
  v160 = (v30 + 8);
  v168 = v12;
  v169 = v23;
  v170 = v15;
  v162 = (v30 + 48);
  while (1)
  {
    v150 = v36;
    v146 = v34;
    if (v34 + 1 >= v33)
    {
      v43 = v34 + 1;
      v58 = v145;
      goto LABEL_31;
    }

    v157 = v33;
    v37 = *v155;
    v12 = 40;
    sub_262906C54(*v155 + 40 * (v34 + 1), &v176);
    sub_262906C54(&v37[5 * v34], v174);
    v38 = v158;
    LODWORD(v171) = sub_2628F0E04(&v176, v174);
    v158 = v38;
    if (v38)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v174);
      __swift_destroy_boxed_opaque_existential_1Tm(&v176);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v174);
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v176);
    v39 = (v34 + 2);
    v153 = 40 * v34;
    v40 = &v37[5 * v34 + 10];
    while (1)
    {
      v43 = v157;
      if (v157 == v39)
      {
        break;
      }

      v173 = v39;
      sub_262906C54(v40, &v176);
      v172 = v40;
      sub_262906C54(v40 - 40, v174);
      v44 = v178;
      v45 = __swift_project_boxed_opaque_existential_1(&v176, v177);
      v46 = v154;
      sub_26294C608();
      v47 = *v35;
      if ((*v35)(v46, 1, v23) != 1)
      {
        v167 = v45;
        v165 = v44;
        v48 = v148;
        v164 = *v161;
        v164();
        __swift_project_boxed_opaque_existential_1(v174, v175);
        v46 = v149;
        sub_26294C608();
        if (v47(v46, 1, v23) != 1)
        {
          v56 = v143;
          (v164)(v143, v46, v23);
          v12 = sub_26294C4D8();
          v57 = *v160;
          (*v160)(v56, v23);
          v57(v48, v23);
          v15 = v170;
          v35 = v162;
          goto LABEL_8;
        }

        (*v160)(v48, v23);
        v35 = v162;
      }

      sub_2628DF6F0(v46, &qword_27FF2E978, &qword_26294EC40);
      v49 = v151;
      sub_26294C608();
      v50 = v47(v49, 1, v23);
      sub_2628DF6F0(v49, &qword_27FF2E978, &qword_26294EC40);
      if (v50 == 1)
      {
        __swift_project_boxed_opaque_existential_1(v174, v175);
        v51 = v144;
        sub_26294C608();
        v12 = 1;
        v52 = v47(v51, 1, v23);
        sub_2628DF6F0(v51, &qword_27FF2E978, &qword_26294EC40);
        v15 = v170;
        v41 = v172;
        v42 = v173;
        if (v52 == 1)
        {
          __swift_project_boxed_opaque_existential_1(&v176, v177);
          sub_26294C618();
          v54 = v53;
          __swift_project_boxed_opaque_existential_1(v174, v175);
          sub_26294C618();
          v12 = v55 < v54;
        }

        goto LABEL_9;
      }

      v12 = 0;
      v15 = v170;
LABEL_8:
      v41 = v172;
      v42 = v173;
LABEL_9:
      __swift_destroy_boxed_opaque_existential_1Tm(v174);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v176);
      v39 = v42 + 1;
      v40 = v41 + 40;
      if ((v171 ^ v12))
      {
        v43 = (v39 - 1);
        break;
      }
    }

    v58 = v145;
    a3 = v153;
    if ((v171 & 1) == 0)
    {
      goto LABEL_31;
    }

    if (v43 < v146)
    {
      goto LABEL_149;
    }

    v59 = v43;
    if (v146 < v43)
    {
      v60 = 40 * v43 - 40;
      v61 = v146;
      do
      {
        if (v61 != --v59)
        {
          v66 = *v155;
          if (!*v155)
          {
            goto LABEL_153;
          }

          v62 = a3;
          v63 = &a3[v66];
          v12 = v66 + v60;
          sub_262905600(v63, &v176);
          v64 = *(v12 + 32);
          v65 = *(v12 + 16);
          *v63 = *v12;
          v63[1] = v65;
          *(v63 + 4) = v64;
          a3 = v62;
          result = sub_262905600(&v176, v12);
          v58 = v145;
        }

        ++v61;
        v60 -= 40;
        a3 += 40;
      }

      while (v61 < v59);
      v23 = v169;
    }

LABEL_31:
    v67 = *(v155 + 1);
    if (v43 < v67)
    {
      if (__OFSUB__(v43, v146))
      {
        goto LABEL_146;
      }

      if (v43 - v146 < v58)
      {
        break;
      }
    }

    v34 = v43;
LABEL_42:
    v69 = v146;
LABEL_43:
    if (v34 < v69)
    {
      goto LABEL_145;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v36 = v150;
    }

    else
    {
      result = sub_262902068(0, *(v150 + 2) + 1, 1, v150);
      v36 = result;
    }

    v72 = *(v36 + 2);
    v71 = *(v36 + 3);
    v12 = v72 + 1;
    if (v72 >= v71 >> 1)
    {
      result = sub_262902068((v71 > 1), v72 + 1, 1, v36);
      v36 = result;
    }

    *(v36 + 2) = v12;
    v73 = &v36[16 * v72];
    *(v73 + 4) = v146;
    *(v73 + 5) = v34;
    a3 = *v142;
    if (!*v142)
    {
      goto LABEL_155;
    }

    if (v72)
    {
      while (1)
      {
        v74 = v12 - 1;
        if (v12 >= 4)
        {
          break;
        }

        if (v12 == 3)
        {
          v75 = *(v36 + 4);
          v76 = *(v36 + 5);
          v85 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          v78 = v85;
LABEL_63:
          if (v78)
          {
            goto LABEL_134;
          }

          v91 = &v36[16 * v12];
          v93 = *v91;
          v92 = *(v91 + 1);
          v94 = __OFSUB__(v92, v93);
          v95 = v92 - v93;
          v96 = v94;
          if (v94)
          {
            goto LABEL_137;
          }

          v97 = &v36[16 * v74 + 32];
          v99 = *v97;
          v98 = *(v97 + 1);
          v85 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v85)
          {
            goto LABEL_140;
          }

          if (__OFADD__(v95, v100))
          {
            goto LABEL_141;
          }

          if (v95 + v100 >= v77)
          {
            if (v77 < v100)
            {
              v74 = v12 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v101 = &v36[16 * v12];
        v103 = *v101;
        v102 = *(v101 + 1);
        v85 = __OFSUB__(v102, v103);
        v95 = v102 - v103;
        v96 = v85;
LABEL_77:
        if (v96)
        {
          goto LABEL_136;
        }

        v104 = &v36[16 * v74];
        v106 = *(v104 + 4);
        v105 = *(v104 + 5);
        v85 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v85)
        {
          goto LABEL_139;
        }

        if (v107 < v95)
        {
          goto LABEL_3;
        }

LABEL_84:
        v112 = v74 - 1;
        if (v74 - 1 >= v12)
        {
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

        if (!*v155)
        {
          goto LABEL_152;
        }

        v113 = v36;
        v12 = *&v36[16 * v112 + 32];
        v114 = *&v36[16 * v74 + 40];
        v115 = v158;
        sub_2629012B8((*v155 + 40 * v12), (*v155 + 40 * *&v36[16 * v74 + 32]), *v155 + 40 * v114, a3);
        v158 = v115;
        if (v115)
        {
        }

        if (v114 < v12)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_262901E7C(v113);
        }

        if (v112 >= *(v113 + 2))
        {
          goto LABEL_131;
        }

        v116 = &v113[16 * v112];
        *(v116 + 4) = v12;
        *(v116 + 5) = v114;
        v179 = v113;
        result = sub_262901DF0(v74);
        v36 = v179;
        v12 = *(v179 + 16);
        v23 = v169;
        if (v12 <= 1)
        {
          goto LABEL_3;
        }
      }

      v79 = &v36[16 * v12 + 32];
      v80 = *(v79 - 64);
      v81 = *(v79 - 56);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_132;
      }

      v84 = *(v79 - 48);
      v83 = *(v79 - 40);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      if (v85)
      {
        goto LABEL_133;
      }

      v86 = &v36[16 * v12];
      v88 = *v86;
      v87 = *(v86 + 1);
      v85 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v85)
      {
        goto LABEL_135;
      }

      v85 = __OFADD__(v77, v89);
      v90 = v77 + v89;
      if (v85)
      {
        goto LABEL_138;
      }

      if (v90 >= v82)
      {
        v108 = &v36[16 * v74 + 32];
        v110 = *v108;
        v109 = *(v108 + 1);
        v85 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v85)
        {
          goto LABEL_142;
        }

        if (v77 < v111)
        {
          v74 = v12 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v33 = *(v155 + 1);
    if (v34 >= v33)
    {
      goto LABEL_114;
    }
  }

  if (__OFADD__(v146, v58))
  {
    goto LABEL_147;
  }

  if (v146 + v58 >= v67)
  {
    v68 = *(v155 + 1);
  }

  else
  {
    v68 = v146 + v58;
  }

  if (v68 < v146)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  v69 = v146;
  v70 = v43;
  if (v43 == v68)
  {
    v34 = v43;
    goto LABEL_43;
  }

  v167 = *v155;
  v117 = &v167[5 * v43];
  v118 = (v146 - v43);
  v147 = v68;
  while (2)
  {
    v157 = v70;
    v152 = v118;
    a3 = v118;
    v153 = v117;
LABEL_97:
    v173 = a3;
    sub_262906C54(v117, &v176);
    v172 = (v117 - 40);
    sub_262906C54(v117 - 40, v174);
    v119 = v178;
    v120 = __swift_project_boxed_opaque_existential_1(&v176, v177);
    sub_26294C608();
    v121 = *v35;
    v122 = (*v35)(v15, 1, v23);
    v123 = v15;
    if (v122 == 1)
    {
LABEL_100:
      v171 = v117;
      sub_2628DF6F0(v123, &qword_27FF2E978, &qword_26294EC40);
      v126 = v23;
      v127 = v166;
      a3 = &qword_27FF2E978;
      sub_26294C608();
      v12 = (v121)(v127, 1, v126);
      sub_2628DF6F0(v127, &qword_27FF2E978, &qword_26294EC40);
      if (v12 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v174);
        __swift_destroy_boxed_opaque_existential_1Tm(&v176);
        v23 = v126;
        v15 = v170;
LABEL_95:
        v70 = v157 + 1;
        v117 = v153 + 40;
        v118 = (v152 - 1);
        v34 = v147;
        if (v157 + 1 == v147)
        {
          goto LABEL_42;
        }

        continue;
      }

      __swift_project_boxed_opaque_existential_1(v174, v175);
      v128 = v163;
      sub_26294C608();
      v129 = v121(v128, 1, v126);
      sub_2628DF6F0(v128, &qword_27FF2E978, &qword_26294EC40);
      if (v129 == 1)
      {
        __swift_project_boxed_opaque_existential_1(&v176, v177);
        sub_26294C618();
        v131 = v130;
        __swift_project_boxed_opaque_existential_1(v174, v175);
        v23 = v169;
        sub_26294C618();
        v12 = v132 < v131;
        v15 = v170;
        v117 = v171;
        goto LABEL_105;
      }

      v23 = v126;
      __swift_destroy_boxed_opaque_existential_1Tm(v174);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v176);
      v15 = v170;
      v117 = v171;
    }

    else
    {
      v171 = v120;
      v165 = v119;
      v124 = v159;
      v164 = *v161;
      v164();
      __swift_project_boxed_opaque_existential_1(v174, v175);
      v125 = v168;
      v23 = v169;
      sub_26294C608();
      if (v121(v125, 1, v23) == 1)
      {
        (*v160)(v124, v23);
        v123 = v125;
        v35 = v162;
        goto LABEL_100;
      }

      a3 = v156;
      (v164)(v156, v125, v23);
      v12 = sub_26294C4D8();
      v133 = *v160;
      (*v160)(a3, v23);
      v133(v124, v23);
      v15 = v170;
      v35 = v162;
LABEL_105:
      __swift_destroy_boxed_opaque_existential_1Tm(v174);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v176);
      if ((v12 & 1) == 0)
      {
        goto LABEL_95;
      }
    }

    break;
  }

  v134 = v173;
  if (v167)
  {
    sub_262905600(v117, &v176);
    v12 = v172;
    v135 = v172[1];
    *v117 = *v172;
    *(v117 + 16) = v135;
    *(v117 + 32) = *(v12 + 32);
    sub_262905600(&v176, v12);
    v117 = v12;
    v136 = __CFADD__(v134, 1);
    a3 = v134 + 1;
    if (v136)
    {
      goto LABEL_95;
    }

    goto LABEL_97;
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
  return result;
}

uint64_t sub_262900660(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(void), double (*a6)(void), uint64_t (*a7)(void))
{
  v68 = a6;
  v12 = a5(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v67 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v66 = &v54 - v17;
  v65 = *(v18 + 72);
  if (!v65)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v65 == -1)
  {
    goto LABEL_61;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v65 == -1)
  {
    goto LABEL_62;
  }

  v56 = a7;
  v20 = (a2 - a1) / v65;
  v71 = a1;
  v70 = a4;
  if (v20 >= v19 / v65)
  {
    v23 = v19 / v65 * v65;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v23;
    if (v23 >= 1)
    {
      v37 = -v65;
      v60 = a4;
      v61 = (v13 + 16);
      v58 = (v13 + 8);
      v59 = a1;
      v38 = a4 + v23;
      v62 = -v65;
      do
      {
        v55 = v36;
        v39 = a2;
        v40 = a2 + v37;
        v63 = v39;
        v64 = v40;
        while (1)
        {
          if (v39 <= a1)
          {
            v71 = v39;
            v69 = v55;
            goto LABEL_59;
          }

          v42 = a3;
          v57 = v36;
          v65 = a3 + v37;
          v43 = v38 + v37;
          v44 = *v61;
          v45 = v66;
          (*v61)(v66, v43, v12);
          v46 = v12;
          v47 = v67;
          v48 = (v44)(v67, v40, v46);
          v49 = v68;
          v50 = (v68)(v48);
          v51 = v49();
          v52 = *v58;
          v53 = v47;
          v12 = v46;
          (*v58)(v53, v46);
          v52(v45, v46);
          if (v51 < v50)
          {
            break;
          }

          v36 = v43;
          a3 = v65;
          if (v42 < v38 || v65 >= v38)
          {
            swift_arrayInitWithTakeFrontToBack();
            v40 = v64;
            a1 = v59;
          }

          else
          {
            v40 = v64;
            a1 = v59;
            if (v42 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v38 = v43;
          v41 = v43 > v60;
          v37 = v62;
          v39 = v63;
          if (!v41)
          {
            a2 = v63;
            goto LABEL_58;
          }
        }

        a3 = v65;
        if (v42 < v63 || v65 >= v63)
        {
          a2 = v64;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v59;
          v36 = v57;
          v37 = v62;
        }

        else
        {
          a2 = v64;
          a1 = v59;
          v36 = v57;
          v37 = v62;
          if (v42 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v38 > v60);
    }

LABEL_58:
    v71 = a2;
    v69 = v36;
  }

  else
  {
    v21 = v20 * v65;
    v22 = a4;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v64 = a4 + v21;
    v69 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      v62 = *(v13 + 16);
      v63 = v13 + 16;
      v61 = (v13 + 8);
      do
      {
        v25 = a3;
        v26 = v66;
        v27 = v62;
        (v62)(v66, a2, v12);
        v28 = v67;
        v29 = v27(v67, v22, v12);
        v30 = v22;
        v31 = v68;
        v32 = (v68)(v29);
        v33 = v31();
        v34 = *v61;
        (*v61)(v28, v12);
        v34(v26, v12);
        if (v33 >= v32)
        {
          v35 = v65;
          v22 += v65;
          if (a1 < v30 || a1 >= v22)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v25;
          }

          else
          {
            a3 = v25;
            if (a1 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v70 = v22;
        }

        else
        {
          v35 = v65;
          if (a1 < a2 || a1 >= a2 + v65)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v35;
            a3 = v25;
          }

          else
          {
            a3 = v25;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v35;
          }
        }

        a1 += v35;
        v71 = a1;
      }

      while (v22 < v64 && a2 < a3);
    }
  }

LABEL_59:
  sub_262901E90(&v71, &v70, &v69, v56);
  return 1;
}

unint64_t sub_262900C48(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v64 = a6;
  v65 = a5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE10, &qword_26294F490);
  v12 = MEMORY[0x28223BE20](v63);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v60 = &v53 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v53 - v18;
  result = MEMORY[0x28223BE20](v17);
  v22 = &v53 - v21;
  v62 = *(v23 + 72);
  if (!v62)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  result = a2;
  if (a2 - a1 == 0x8000000000000000 && v62 == -1)
  {
    goto LABEL_67;
  }

  v24 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v62 != -1)
  {
    v61 = a3;
    v25 = (a2 - a1) / v62;
    v69 = a1;
    v68 = a4;
    if (v25 < v24 / v62)
    {
      v26 = v25 * v62;
      if (a4 < a1 || a1 + v26 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      result = a2;
LABEL_17:
      v60 = a4 + v26;
      v66 = v6;
      v67 = a4 + v26;
      if (v26 >= 1 && result < v61)
      {
        v29 = &qword_27FF2EE10;
        v59 = v19;
        while (1)
        {
          v30 = result;
          sub_2628DF954(result, v22, v29, &qword_26294F490);
          sub_2628DF954(a4, v19, v29, &qword_26294F490);
          v31 = v29;
          v32 = v66;
          v33 = v65(v22, v19);
          v66 = v32;
          if (v32)
          {
            break;
          }

          v34 = v33;
          sub_2628DF6F0(v19, v29, &qword_26294F490);
          sub_2628DF6F0(v22, v29, &qword_26294F490);
          if (v34)
          {
            v35 = v62;
            if (a1 < v30 || a1 >= v30 + v62)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = v30 + v35;
          }

          else
          {
            v35 = v62;
            v36 = a4 + v62;
            if (a1 < a4 || a1 >= v36)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v68 = v36;
            a4 += v35;
            result = v30;
          }

          a1 += v35;
          v69 = a1;
          if (a4 < v60)
          {
            v29 = v31;
            v19 = v59;
            if (result < v61)
            {
              continue;
            }
          }

          goto LABEL_65;
        }

        sub_2628DF6F0(v19, &qword_27FF2EE10, &qword_26294F490);
        sub_2628DF6F0(v22, &qword_27FF2EE10, &qword_26294F490);
      }

LABEL_65:
      sub_262901F78(&v69, &v68, &v67);
      return 1;
    }

    v27 = v24 / v62 * v62;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_41:
        v37 = a4 + v27;
        if (v27 >= 1)
        {
          v38 = v61;
          v39 = -v62;
          v40 = v37;
          v56 = v14;
          v57 = a1;
          do
          {
            v54 = v37;
            v58 = result;
            v59 = (result + v39);
            while (1)
            {
              if (result <= a1)
              {
                v66 = v7;
                v69 = result;
                v37 = v54;
                goto LABEL_62;
              }

              v62 = v38;
              v42 = v7;
              v43 = a4;
              v55 = v37;
              v66 = v40;
              v61 = v40 + v39;
              v44 = v60;
              sub_2628DF954(v40 + v39, v60, &qword_27FF2EE10, &qword_26294F490);
              sub_2628DF954(v59, v14, &qword_27FF2EE10, &qword_26294F490);
              v45 = v65(v44, v14);
              if (v42)
              {
                sub_2628DF6F0(v14, &qword_27FF2EE10, &qword_26294F490);
                sub_2628DF6F0(v44, &qword_27FF2EE10, &qword_26294F490);
                v69 = v58;
                v67 = v55;
                goto LABEL_65;
              }

              v46 = v45;
              v47 = v62;
              v48 = v62 + v39;
              sub_2628DF6F0(v14, &qword_27FF2EE10, &qword_26294F490);
              sub_2628DF6F0(v44, &qword_27FF2EE10, &qword_26294F490);
              if (v46)
              {
                break;
              }

              v49 = v61;
              v37 = v61;
              v38 = v48;
              if (v47 < v66 || v48 >= v66)
              {
                v41 = v61;
                swift_arrayInitWithTakeFrontToBack();
                v37 = v41;
                a4 = v43;
              }

              else
              {
                a4 = v43;
                if (v47 != v66)
                {
                  v50 = v61;
                  swift_arrayInitWithTakeBackToFront();
                  v37 = v50;
                }
              }

              v40 = v37;
              v7 = 0;
              v14 = v56;
              a1 = v57;
              result = v58;
              if (v49 <= a4)
              {
                goto LABEL_59;
              }
            }

            v38 = v48;
            if (v47 < v58 || v48 >= v58)
            {
              v52 = v59;
              swift_arrayInitWithTakeFrontToBack();
              result = v52;
              a4 = v43;
            }

            else
            {
              result = v59;
              a4 = v43;
              if (v47 != v58)
              {
                v51 = v59;
                swift_arrayInitWithTakeBackToFront();
                result = v51;
              }
            }

            v40 = v66;
            v7 = 0;
            v14 = v56;
            a1 = v57;
            v37 = v55;
          }

          while (v66 > a4);
        }

LABEL_59:
        v66 = v7;
        v69 = result;
LABEL_62:
        v67 = v37;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    result = a2;
    goto LABEL_41;
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_2629012B8(char *a1, char *a2, unint64_t a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v90 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v96 = (&v88 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v93 = &v88 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v101 = &v88 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v92 = &v88 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v98 = &v88 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v95 = &v88 - v22;
  MEMORY[0x28223BE20](v21);
  v100 = &v88 - v23;
  v106 = sub_26294C4F8();
  v24 = *(v106 - 8);
  v25 = MEMORY[0x28223BE20](v106);
  v89 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v28 = MEMORY[0x28223BE20](v27);
  v91 = &v88 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = (a2 - a1) / 40;
  v104 = a3;
  v33 = a3 - a2;
  v34 = v33 / 40;
  if (v32 < v33 / 40)
  {
    v35 = a4;
    v101 = &v88 - v30;
    if (a4 != a1 || &a1[40 * v32] <= a4)
    {
      memmove(a4, a1, 40 * v32);
    }

    v99 = &a4[40 * v32];
    if (a2 - a1 < 40 || a2 >= v104)
    {
LABEL_51:
      v85 = a1;
      goto LABEL_53;
    }

    v36 = (v24 + 48);
    v93 = (v24 + 8);
    v94 = (v24 + 48);
    v97 = (v24 + 32);
    while (1)
    {
      v102 = a1;
      sub_262906C54(a2, v109);
      v105 = v35;
      sub_262906C54(v35, v107);
      v37 = v106;
      __swift_project_boxed_opaque_existential_1(v109, v110);
      v38 = v100;
      sub_26294C608();
      v39 = *v36;
      v40 = (*v36)(v38, 1, v37);
      v103 = a2;
      if (v40 != 1)
      {
        v96 = *v97;
        v96(v101, v100, v37);
        __swift_project_boxed_opaque_existential_1(v107, v108);
        v38 = v95;
        sub_26294C608();
        if (v39(v38, 1, v37) != 1)
        {
          v51 = v91;
          v96(v91, v38, v37);
          v52 = v101;
          v49 = sub_26294C4D8();
          v53 = *v93;
          (*v93)(v51, v37);
          v53(v52, v37);
          v45 = v102;
          a2 = v103;
          v50 = v104;
          v35 = v105;
          v36 = v94;
          goto LABEL_16;
        }

        (*v93)(v101, v37);
        v36 = v94;
      }

      sub_2628DF6F0(v38, &qword_27FF2E978, &qword_26294EC40);
      v41 = v98;
      sub_26294C608();
      v42 = v39(v41, 1, v37);
      sub_2628DF6F0(v41, &qword_27FF2E978, &qword_26294EC40);
      if (v42 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v107);
        __swift_destroy_boxed_opaque_existential_1Tm(v109);
        v50 = v104;
        v35 = v105;
        v45 = v102;
        a2 = v103;
LABEL_17:
        v54 = v35;
        v55 = v45 == v35;
        v35 += 40;
        if (v55)
        {
          goto LABEL_19;
        }

LABEL_18:
        v56 = *v54;
        v57 = *(v54 + 1);
        *(v45 + 4) = *(v54 + 4);
        *v45 = v56;
        *(v45 + 1) = v57;
        goto LABEL_19;
      }

      __swift_project_boxed_opaque_existential_1(v107, v108);
      v43 = v92;
      sub_26294C608();
      v44 = v39(v43, 1, v106);
      sub_2628DF6F0(v43, &qword_27FF2E978, &qword_26294EC40);
      v35 = v105;
      v45 = v102;
      if (v44 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v107);
        __swift_destroy_boxed_opaque_existential_1Tm(v109);
        a2 = v103;
        v50 = v104;
        goto LABEL_23;
      }

      __swift_project_boxed_opaque_existential_1(v109, v110);
      sub_26294C618();
      v47 = v46;
      __swift_project_boxed_opaque_existential_1(v107, v108);
      sub_26294C618();
      v49 = v48 < v47;
      a2 = v103;
      v50 = v104;
LABEL_16:
      __swift_destroy_boxed_opaque_existential_1Tm(v107);
      __swift_destroy_boxed_opaque_existential_1Tm(v109);
      if ((v49 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_23:
      v54 = a2;
      v55 = v45 == a2;
      a2 += 40;
      if (!v55)
      {
        goto LABEL_18;
      }

LABEL_19:
      a1 = v45 + 40;
      if (v35 >= v99 || a2 >= v50)
      {
        goto LABEL_51;
      }
    }
  }

  v98 = v31;
  if (a4 != a2 || &a2[40 * v34] <= a4)
  {
    memmove(a4, a2, 40 * v34);
  }

  v99 = &a4[40 * v34];
  v35 = a4;
  if (v33 < 40 || a2 <= a1)
  {
    v85 = a2;
    goto LABEL_53;
  }

  v102 = a1;
  v91 = (v24 + 8);
  v58 = v104;
  v59 = a2;
  v105 = a4;
  v100 = (v24 + 48);
  v92 = (v24 + 32);
  do
  {
    v103 = v59;
    v60 = (v59 - 40);
    v61 = (v99 - 40);
    v58 -= 40;
    v97 = v59 - 40;
    while (1)
    {
      sub_262906C54(v61, v109);
      sub_262906C54(v60, v107);
      v64 = v111;
      v65 = __swift_project_boxed_opaque_existential_1(v109, v110);
      v66 = v101;
      sub_26294C608();
      v67 = *v100;
      if ((*v100)(v66, 1, v106) != 1)
      {
        v95 = v65;
        v99 = v64;
        v104 = v58;
        v68 = v106;
        v94 = *v92;
        (v94)(v98, v101, v106);
        __swift_project_boxed_opaque_existential_1(v107, v108);
        v66 = v93;
        sub_26294C608();
        if ((v67)(v66, 1, v68) != 1)
        {
          v77 = v89;
          v78 = v106;
          (v94)(v89, v66, v106);
          v79 = v98;
          v72 = sub_26294C4D8();
          v80 = *v91;
          (*v91)(v77, v78);
          v80(v79, v78);
          v58 = v104;
          v35 = v105;
          goto LABEL_43;
        }

        (*v91)(v98, v106);
        v58 = v104;
      }

      v104 = v61;
      sub_2628DF6F0(v66, &qword_27FF2E978, &qword_26294EC40);
      v69 = v96;
      sub_26294C608();
      v99 = v67;
      v70 = (v67)(v69, 1, v106);
      sub_2628DF6F0(v69, &qword_27FF2E978, &qword_26294EC40);
      if (v70 == 1)
      {
        __swift_project_boxed_opaque_existential_1(v107, v108);
        v71 = v90;
        sub_26294C608();
        v72 = 1;
        v73 = (v99)(v71, 1, v106);
        sub_2628DF6F0(v71, &qword_27FF2E978, &qword_26294EC40);
        v61 = v104;
        v35 = v105;
        if (v73 == 1)
        {
          __swift_project_boxed_opaque_existential_1(v109, v110);
          sub_26294C618();
          v75 = v74;
          __swift_project_boxed_opaque_existential_1(v107, v108);
          sub_26294C618();
          v72 = v76 < v75;
        }
      }

      else
      {
        v72 = 0;
        v61 = v104;
        v35 = v105;
      }

LABEL_43:
      __swift_destroy_boxed_opaque_existential_1Tm(v107);
      __swift_destroy_boxed_opaque_existential_1Tm(v109);
      if (v72)
      {
        break;
      }

      if (v58 + 40 != v61 + 40)
      {
        v81 = *v61;
        v82 = *(v61 + 16);
        *(v58 + 32) = *(v61 + 32);
        *v58 = v81;
        *(v58 + 16) = v82;
      }

      v62 = v61 - 40;
      v58 -= 40;
      v63 = v61 > v35;
      v61 -= 40;
      v60 = v97;
      if (!v63)
      {
        v99 = (v62 + 40);
        v85 = v103;
        goto LABEL_53;
      }
    }

    v85 = v97;
    if ((v58 + 40) != v103)
    {
      v83 = *v97;
      v84 = *(v97 + 1);
      *(v58 + 32) = *(v97 + 4);
      *v58 = v83;
      *(v58 + 16) = v84;
    }

    v99 = (v61 + 40);
    if (v61 + 40 <= v35)
    {
      break;
    }

    v59 = v85;
  }

  while (v85 > v102);
  v99 = (v61 + 40);
LABEL_53:
  v86 = (v99 - v35) / 40;
  if (v85 != v35 || v85 >= &v35[40 * v86])
  {
    memmove(v85, v35, 40 * v86);
  }

  return 1;
}

uint64_t sub_262901DF0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_262901E7C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_262901E90(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_262901F78(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE10, &qword_26294F490);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_262902068(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED20, &unk_262950040);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_26290216C(uint64_t a1)
{
  sub_26294C7F8();
  v2 = MEMORY[0x277D48E80];
  sub_262906CE0(&qword_27FF2ECF0, MEMORY[0x277D48E80], MEMORY[0x277D48E88]);
  v3 = sub_26294DD38();
  return sub_262903DEC(a1, v3, MEMORY[0x277D48E80], &qword_27FF2ED30, v2, MEMORY[0x277D48E90]);
}

unint64_t sub_262902240(uint64_t a1)
{
  sub_26294DC58();
  v2 = MEMORY[0x277D49298];
  sub_262906CE0(&qword_27FF2EE70, MEMORY[0x277D49298], MEMORY[0x277D492A8]);
  v3 = sub_26294DD38();
  return sub_262903DEC(a1, v3, MEMORY[0x277D49298], &qword_27FF2EE80, v2, MEMORY[0x277D492B0]);
}

unint64_t sub_262902314(uint64_t a1)
{
  sub_26294C538();
  v2 = MEMORY[0x277CC95F0];
  sub_262906CE0(&qword_27FF2EE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_26294DD38();
  return sub_262903DEC(a1, v3, MEMORY[0x277CC95F0], &qword_27FF2EE58, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_2629023E8(uint64_t a1)
{
  sub_26294CCE8();
  v2 = MEMORY[0x277D49008];
  sub_262906CE0(&qword_27FF2ED50, MEMORY[0x277D49008], MEMORY[0x277D49010]);
  v3 = sub_26294DD38();
  return sub_262903DEC(a1, v3, MEMORY[0x277D49008], &qword_27FF2ED58, v2, MEMORY[0x277D49018]);
}

unint64_t sub_2629024BC(uint64_t a1)
{
  sub_26294CC38();
  v2 = MEMORY[0x277D48FA8];
  sub_262906CE0(&qword_27FF2ED08, MEMORY[0x277D48FA8], MEMORY[0x277D48FB0]);
  v3 = sub_26294DD38();
  return sub_262903DEC(a1, v3, MEMORY[0x277D48FA8], &qword_27FF2ED10, v2, MEMORY[0x277D48FB8]);
}

unint64_t sub_262902590(uint64_t a1, uint64_t a2)
{
  sub_26294E098();
  sub_26294DD88();
  v4 = sub_26294E0B8();

  return sub_262903F8C(a1, a2, v4);
}

uint64_t sub_262902608(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_26294C7F8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ECE8, &qword_26294F258);
  v39 = v4;
  result = sub_26294E028();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_262906CE0(&qword_27FF2ECF0, MEMORY[0x277D48E80], MEMORY[0x277D48E88]);
      result = sub_26294DD38();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2629029E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_26294DC58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE68, &qword_26294F4D8);
  v39 = v4;
  result = sub_26294E028();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_262906CE0(&qword_27FF2EE70, MEMORY[0x277D49298], MEMORY[0x277D492A8]);
      result = sub_26294DD38();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_262902DC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_26294C538();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE40, &qword_26294F4C0);
  v39 = v4;
  result = sub_26294E028();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_262906CE0(&qword_27FF2EE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_26294DD38();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_26290319C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_26294C7F8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE38, &qword_26294F4B8);
  v39 = v4;
  result = sub_26294E028();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_262906CE0(&qword_27FF2ECF0, MEMORY[0x277D48E80], MEMORY[0x277D48E88]);
      result = sub_26294DD38();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_262903578(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_26294CCE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED48, &qword_26294F298);
  v39 = v4;
  result = sub_26294E028();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_262906CE0(&qword_27FF2ED50, MEMORY[0x277D49008], MEMORY[0x277D49010]);
      result = sub_26294DD38();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_262903954(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_26294CC38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED00, &qword_26294F268);
  v39 = v4;
  result = sub_26294E028();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_262906CE0(&qword_27FF2ED08, MEMORY[0x277D48FA8], MEMORY[0x277D48FB0]);
      result = sub_26294DD38();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_262903D30(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

unint64_t sub_262903DEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_262906CE0(v23, v24, v25);
      v19 = sub_26294DD48();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_262903F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26294E058())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_262904044(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v36 = a1(0);
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = sub_26294E018();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v6;
    v32 = (v8 + 64);
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v12)
    {
      memmove(v11, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }
}

uint64_t sub_2629042C0(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_26294CB98();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v41 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - v13;
  v15 = *a1;
  result = sub_26290489C(*a1, a2);
  if (!v2)
  {
    v18 = v15;
    v55 = 0;
    if (v17)
    {
      return *(v15 + 16);
    }

    v49 = v14;
    v44 = v12;
    v45 = v9;
    v53 = v5;
    v54 = result;
    v43 = a1;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v20 = v18;
      v22 = v18 + 2;
      v21 = v18[2];
      if (v19 == v21)
      {
        return v54;
      }

      v47 = v6;
      v48 = (v6 + 8);
      v42 = (v6 + 40);
      v46 = a2;
      v52 = v6 + 16;
      while (v19 < v21)
      {
        v23 = v20;
        v50 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v24 = v20 + v50;
        v25 = *(v6 + 72);
        v26 = *(v6 + 16);
        v51 = v25 * v19;
        v27 = v20 + v50 + v25 * v19;
        v28 = v49;
        v29 = v53;
        v26(v49, v27, v53);
        v30 = v55;
        sub_2628F4274(v28, a2);
        v55 = v30;
        if (v30)
        {
          return (*v48)(v28, v29);
        }

        v32 = v31;
        result = (*v48)(v28, v29);
        if (v32)
        {
          a2 = v46;
          v6 = v47;
          v20 = v23;
        }

        else
        {
          v33 = v54;
          v20 = v23;
          if (v19 == v54)
          {
            a2 = v46;
            v6 = v47;
          }

          else
          {
            if ((v54 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v34 = *v22;
            if (v54 >= *v22)
            {
              goto LABEL_27;
            }

            v35 = v25 * v54;
            v36 = v53;
            result = (v26)(v44, &v24[v25 * v54], v53);
            if (v19 >= v34)
            {
              goto LABEL_28;
            }

            v37 = v51;
            v26(v45, &v24[v51], v36);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_26291DD00(v20);
            }

            a2 = v46;
            v6 = v47;
            v38 = v20 + v50;
            v39 = *v42;
            v40 = v53;
            result = (*v42)(v20 + v50 + v35, v45, v53);
            if (v19 >= v20[2])
            {
              goto LABEL_29;
            }

            result = v39(&v38[v37], v44, v40);
            *v43 = v20;
            v33 = v54;
          }

          v54 = v33 + 1;
        }

        ++v19;
        v22 = v20 + 2;
        v21 = v20[2];
        if (v19 == v21)
        {
          return v54;
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

uint64_t sub_26290463C(unint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  sub_26290497C(*a1, a2);
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_26294E008();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v26 = a1;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_26294E008())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x26672D5B0](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v13 = v12;
    v27 = v12;
    sub_2628F6CF4(&v27, a2);
    v15 = v14;

    if ((v15 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x26672D5B0](v2, v6);
    v17 = MEMORY[0x26672D5B0](v10, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v18 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v18)
    {
      goto LABEL_46;
    }

    if (v10 >= v18)
    {
      goto LABEL_47;
    }

    v19 = *(v6 + 32 + 8 * v10);
    v16 = *(v6 + 32 + 8 * v2);
    v17 = v19;
  }

  v20 = v17;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_26291DD4C(v6);
    v21 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v21) = 0;
  }

  v22 = v6 & 0xFFFFFFFFFFFFFF8;
  v23 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v20;

  if ((v6 & 0x8000000000000000) == 0 && !v21)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_26291DD4C(v6);
  v22 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v22 + 16))
    {
      goto LABEL_44;
    }

    v24 = v22 + 8 * v10;
    v25 = *(v24 + 32);
    *(v24 + 32) = v16;

    *v26 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_26294E008();
}

uint64_t sub_26290489C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(sub_26294CB98() - 8);
  v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v7 + 72);
  while (1)
  {
    sub_2628F4274(v8, a2);
    if (v2 || (v10 & 1) != 0)
    {
      break;
    }

    ++v6;
    v8 += v9;
    if (v3 == v6)
    {
      return 0;
    }
  }

  return v6;
}

void sub_26290497C(unint64_t a1, uint64_t *a2)
{
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_19:
    v6 = sub_26294E008();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26672D5B0](v7, a1);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a1 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    sub_2628F6CF4(&v13, a2);
    v11 = v10;

    if (v2 || (v11 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_262904B78(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE10, &qword_26294F490);
  v38 = *(v41 - 8);
  v8 = MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = (&v35 - v11);
  v42 = a4;
  v14 = *(a4 + 64);
  v13 = a4 + 64;
  v12 = v14;
  v15 = -1 << *(v13 - 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  if (!a2)
  {
LABEL_18:
    v24 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v42;
    a1[1] = v13;
    a1[2] = ~v15;
    a1[3] = v24;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v24 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(v13 - 32);
    v36 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    v37 = a3;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v18;
      v25 = v23 | (v18 << 6);
      v26 = v42;
      v27 = *(v42 + 48);
      v28 = sub_26294C538();
      v29 = *(v28 - 8);
      v30 = v27 + *(v29 + 72) * v25;
      v31 = v40;
      (*(v29 + 16))(v40, v30, v28);
      *&v31[*(v41 + 48)] = *(*(v26 + 56) + 8 * v25);
      v32 = v31;
      a1 = v39;
      sub_262906F00(v32, v39, &qword_27FF2EE10, &qword_26294F490);
      sub_262906F00(a1, a2, &qword_27FF2EE10, &qword_26294F490);
      a3 = v37;
      if (v20 == v37)
      {

        goto LABEL_23;
      }

      a2 += *(v38 + 72);

      result = v20;
      v33 = __OFADD__(v20++, 1);
      v18 = v24;
      if (v33)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v13 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v24 = v34 - 1;
    a3 = result;
LABEL_23:
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_262904E38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_262905600(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_262904ED0(char *a1, unint64_t a2, uint64_t a3, void (**a4)(char *, uint64_t))
{
  v52 = a3;
  v53 = a4;
  v51 = a2;
  v5 = sub_26294C9D8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_26294C5F8();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26294CA28();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v50 = a1;
  v15 = *&a1[v14];
  v16 = MEMORY[0x277D84F90];
  v65 = MEMORY[0x277D84F90];
  v17 = *(v15 + 16);

  v61 = v17;
  if (v17)
  {
    v19 = 0;
    v64 = v6 + 16;
    v20 = (v6 + 8);
    v57 = (v11 + 8);
    v58 = v11 + 16;
    v55 = v10;
    v56 = v6;
    v54 = v11;
    v59 = v18;
    v60 = v13;
    while (v19 < *(v18 + 16))
    {
      v21 = v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v22 = *(v11 + 72);
      v63 = v19;
      (*(v11 + 16))(v13, v21 + v22 * v19, v10);
      v23 = sub_26294C928();
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = *(v6 + 80);
        v62 = v23;
        v26 = v23 + ((v25 + 32) & ~v25);
        v27 = *(v6 + 72);
        v28 = *(v6 + 16);
        v28(v8, v26, v5);
        while (1)
        {
          if (sub_26294C9B8())
          {
            sub_26294C948();
            MEMORY[0x26672D3D0]();
            if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_26294DDD8();
            }

            sub_26294DDF8();
            (*v20)(v8, v5);
            v16 = v65;
          }

          else
          {
            (*v20)(v8, v5);
          }

          v26 += v27;
          if (!--v24)
          {
            break;
          }

          v28(v8, v26, v5);
        }

        v10 = v55;
        v6 = v56;
        v11 = v54;
      }

      else
      {
      }

      v19 = v63 + 1;
      v13 = v60;
      (*v57)(v60, v10);
      v18 = v59;
      if (v19 == v61)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_16:

  if (v16 >> 62)
  {
LABEL_20:
    v29 = sub_26294E008();
    goto LABEL_18;
  }

  v29 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:

  v30 = *MEMORY[0x277D48E08];
  v31 = v48;
  v32 = *(v48 + 104);
  v33 = v47;
  v34 = v49;
  v32(v47, v30, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v35 = swift_allocObject();
  v36 = MEMORY[0x277D83B88];
  *(v35 + 16) = xmmword_26294ECB0;
  v37 = MEMORY[0x277D83C10];
  *(v35 + 56) = v36;
  *(v35 + 64) = v37;
  *(v35 + 32) = v29;
  v38 = sub_26294C6B8();
  v64 = v39;

  v40 = *(v31 + 8);
  v40(v33, v34);
  v32(v33, v30, v34);
  v41 = sub_26294C5E8();
  v43 = v42;
  v40(v33, v34);
  swift_getKeyPath();
  swift_getKeyPath();
  v65 = v38;
  v66 = v64;
  v67 = v41;
  v68 = v43;
  v69 = 1;
  v44 = v50;
  sub_26294D008();
  return sub_2628F5228(v51, v52, v53);
}

uint64_t sub_262905484(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_262905600(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_2629056C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26290571C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_262905730(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE88, &qword_26294F4E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EE68, &qword_26294F4D8);
    v7 = sub_26294E038();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2628DF954(v9, v5, &qword_27FF2EE88, &qword_26294F4E8);
      result = sub_262902240(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_26294DC58();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_262905918(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v83 = a4;
  v82 = a3;
  v81 = a2;
  v5 = sub_26294CB98();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v77 - v11;
  MEMORY[0x28223BE20](v10);
  v84 = &v77 - v13;
  v79 = sub_26294C5F8();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26294CBA8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v95 = (&v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups;
  swift_beginAccess();
  v80 = a1;
  v19 = *&a1[v18];
  v20 = *(v19 + 16);
  v21 = MEMORY[0x277D84F90];
  v97 = v5;
  v85 = v6;
  v92 = v20;
  if (v20)
  {
    v88 = v19 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v87 = v16 + 16;
    v99 = v6 + 16;
    v21 = (v6 + 8);
    v96 = (v6 + 32);
    v86 = (v16 + 8);

    v23 = 0;
    v100 = v9;
    v24 = MEMORY[0x277D84F90];
    v90 = v16;
    v91 = v15;
    v89 = v22;
    while (v23 < *(v22 + 16))
    {
      v25 = *(v16 + 72);
      v94 = v23;
      (*(v16 + 16))(v95, v88 + v25 * v23, v15);
      v26 = sub_26294CAB8();
      v27 = *(v26 + 16);
      v93 = v26;
      if (v27)
      {
        v98 = (*(v85 + 80) + 32) & ~*(v85 + 80);
        v28 = v26 + v98;
        v29 = *(v85 + 72);
        v30 = *(v85 + 16);
        do
        {
          v30(v12, v28, v5);
          if (sub_26294CB78())
          {
            v30(v100, v12, v5);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = sub_26291D74C(0, *(v24 + 2) + 1, 1, v24);
            }

            v32 = *(v24 + 2);
            v31 = *(v24 + 3);
            if (v32 >= v31 >> 1)
            {
              v24 = sub_26291D74C((v31 > 1), v32 + 1, 1, v24);
            }

            v33 = v97;
            (*v21)(v12, v97);
            *(v24 + 2) = v32 + 1;
            v34 = &v24[v98 + v32 * v29];
            v5 = v33;
            (*v96)(v34, v100, v33);
          }

          else
          {
            (*v21)(v12, v5);
          }

          v28 += v29;
          --v27;
        }

        while (v27);
      }

      v23 = v94 + 1;
      v15 = v91;
      (*v86)(v95, v91);

      v22 = v89;
      v16 = v90;
      if (v23 == v92)
      {

        v21 = MEMORY[0x277D84F90];
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_18;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_17:
  v23 = *(v24 + 2);
  if (qword_27FF2E7C0 != -1)
  {
    goto LABEL_30;
  }

LABEL_18:
  v35 = sub_26294CE48();
  __swift_project_value_buffer(v35, qword_27FF314B0);

  v36 = sub_26294CE28();
  v37 = sub_26294DE98();

  v38 = os_log_type_enabled(v36, v37);
  v98 = v23;
  if (v38)
  {
    v96 = v24;
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v102[0] = v40;
    *v39 = 136315394;
    *(v39 + 4) = sub_2628FB76C(0xD00000000000002FLL, 0x800000026295E6B0, v102);
    *(v39 + 12) = 2080;
    if (v23)
    {
      v92 = v40;
      LODWORD(v93) = v37;
      v94 = v39;
      v95 = v36;
      v101 = v21;
      sub_2628FC960(0, v23, 0);
      v41 = v101;
      v42 = v85 + 16;
      v43 = *(v85 + 16);
      v44 = &v96[(*(v85 + 80) + 32) & ~*(v85 + 80)];
      v99 = *(v85 + 72);
      v100 = v43;
      v45 = (v85 + 8);
      v46 = v23;
      do
      {
        v47 = v84;
        v48 = v5;
        v49 = v5;
        v50 = v42;
        v100(v84, v44, v48);
        v51 = sub_26294CB18();
        v53 = v52;
        (*v45)(v47, v49);
        v101 = v41;
        v55 = v41[2];
        v54 = v41[3];
        if (v55 >= v54 >> 1)
        {
          sub_2628FC960((v54 > 1), v55 + 1, 1);
          v41 = v101;
        }

        v41[2] = (v55 + 1);
        v56 = &v41[2 * v55];
        v56[4] = v51;
        v56[5] = v53;
        v44 += v99;
        --v46;
        v42 = v50;
        v5 = v97;
      }

      while (v46);

      v39 = v94;
      v36 = v95;
      LOBYTE(v37) = v93;
      v40 = v92;
    }

    else
    {

      v41 = MEMORY[0x277D84F90];
    }

    v57 = MEMORY[0x26672D3F0](v41, MEMORY[0x277D837D0]);
    v59 = v58;

    v60 = sub_2628FB76C(v57, v59, v102);

    *(v39 + 14) = v60;
    _os_log_impl(&dword_2628DB000, v36, v37, "%s -- selectedPasses %s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26672DCE0](v40, -1, -1);
    MEMORY[0x26672DCE0](v39, -1, -1);
  }

  else
  {
  }

  v61 = *MEMORY[0x277D48E08];
  v62 = v78;
  v63 = *(v78 + 104);
  v64 = v77;
  v65 = v79;
  v63(v77, v61, v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v66 = swift_allocObject();
  v67 = MEMORY[0x277D83B88];
  *(v66 + 16) = xmmword_26294ECB0;
  v68 = MEMORY[0x277D83C10];
  *(v66 + 56) = v67;
  *(v66 + 64) = v68;
  *(v66 + 32) = v98;
  v69 = sub_26294C6B8();
  v100 = v70;

  v71 = *(v62 + 8);
  v71(v64, v65);
  v63(v64, v61, v65);
  v72 = sub_26294C5E8();
  v74 = v73;
  v71(v64, v65);
  swift_getKeyPath();
  swift_getKeyPath();
  v102[0] = v69;
  v102[1] = v100;
  v102[2] = v72;
  v102[3] = v74;
  v103 = 1;
  v75 = v80;
  sub_26294D008();
  return sub_2628F1ED8(v81, v82, v83);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_2629062B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_26294CB98();
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

unint64_t sub_262906400(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_26291D74C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_2629062B8(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_2629064C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_26294DCC8();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_26294E008();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_26294E008();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2629065C0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_26294E008();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_26294E008();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_2628FBE10(result, 1);

  return sub_2629064C0(v5, v3, 0);
}

uint64_t sub_262906698(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_2629066DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2629070E0;

  return sub_2628EB6B0(a1, v4, v5, v6);
}

uint64_t sub_26290679C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2629067D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2629070E0;

  return sub_2628FB57C(a1, v4);
}

uint64_t sub_26290688C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_262906944;

  return sub_2628FB57C(a1, v4);
}

uint64_t sub_262906944()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

uint64_t sub_262906AE0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_262906B30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2629070E0;

  return sub_2628EAD64(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_262906C04(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_262906C54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_262906CE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_262906D28()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_262906D64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2629070E0;

  return sub_2628F60F8(a1, v4, v5, v7, v6);
}

unint64_t sub_262906E24()
{
  result = qword_27FF2EEB0;
  if (!qword_27FF2EEB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF2EEB0);
  }

  return result;
}

uint64_t sub_262906E70()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_262906F00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_108Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_262906FB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_262906944;

  return sub_2628F3670(a1, v4, v5, v7, v6);
}

uint64_t sub_262907078()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26290712C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26294C8A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2629071FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26294C8A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ESimView(uint64_t a1)
{
  result = qword_27FF2EEC8;
  if (!qword_27FF2EEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_262907300(uint64_t a1)
{
  result = sub_26294C8A8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SEStorageManagementController(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2629073A0(uint64_t a1)
{
  v2 = sub_26294C5F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = a1;
  (*(v3 + 104))(v5, *MEMORY[0x277D48E08], v2);
  v6 = sub_26294C5E8();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v27 = v6;
  v28 = v8;
  sub_2628DF230();
  v9 = sub_26294D648();
  v11 = v10;
  LOBYTE(v5) = v12;
  sub_26294D5B8();
  v13 = sub_26294D638();
  v15 = v14;
  v17 = v16;

  sub_2628DF758(v9, v11, v5 & 1);

  LODWORD(v27) = sub_26294D4C8();
  v18 = sub_26294D618();
  v20 = v19;
  LOBYTE(v5) = v21;
  v23 = v22;
  sub_2628DF758(v13, v15, v17 & 1);

  v27 = v18;
  v28 = v20;
  v29 = v5 & 1;
  v30 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF10, &qword_26294F5C8);
  sub_262907D54();
  return sub_26294DAA8();
}

uint64_t sub_262907608(uint64_t a1)
{
  type metadata accessor for ESimView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EBC8, &qword_26294ED00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF20, &qword_26294F5D0);
  sub_2628DFD0C(&qword_27FF2EF38, &qword_27FF2EBC8, &qword_26294ED00, MEMORY[0x277D83980]);
  sub_2628DFD0C(&qword_27FF2EF18, &qword_27FF2EF20, &qword_26294F5D0, &unk_262950BA8);
  sub_262907E7C();
  return sub_26294DA68();
}

uint64_t sub_262907784@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_26294C6E8();
  v7 = v6;
  v8 = sub_26294C4F8();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  *a1 = v5;
  a1[1] = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF20, &qword_26294F5D0);
  sub_2628E1FD8(v4, a1 + v9[9]);
  *(a1 + v9[15]) = 1;
  *(a1 + v9[10]) = 1;
  v10 = (a1 + v9[11]);
  *v10 = 0;
  v10[1] = 0;
  *(a1 + v9[12]) = 2;
  *(a1 + v9[13]) = 0;
  return sub_262907ED4(v4);
}

uint64_t sub_2629078BC@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_26294D468();
  v23 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EED8, &qword_26294F5A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EEE0, &qword_26294F5A8);
  v10 = *(v9 - 8);
  v21 = v9;
  v22 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = v20 - v11;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EEE8, &qword_26294F5B0);
  MEMORY[0x28223BE20](v24);
  v14 = v20 - v13;
  *v14 = sub_26294D3C8();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v20[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EEF0, &qword_26294F5B8) + 44);
  v26 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EEF8, &qword_26294F5C0);
  sub_262907CBC();
  sub_26294D5E8();
  sub_26294D458();
  v15 = sub_2628DFD0C(&qword_27FF2EF28, &qword_27FF2EED8, &qword_26294F5A0, MEMORY[0x277CDE5A0]);
  v16 = MEMORY[0x277CDE0D0];
  sub_26294D828();
  (*(v23 + 8))(v4, v2);
  (*(v6 + 8))(v8, v5);
  v27 = v5;
  v28 = v2;
  v29 = v15;
  v30 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v21;
  sub_26294D7A8();
  (*(v22 + 8))(v12, v17);
  v27 = sub_26294C868();
  v28 = v18;
  sub_2628DFD0C(&qword_27FF2EF30, &qword_27FF2EEE8, &qword_26294F5B0, MEMORY[0x277CE1198]);
  sub_2628DF230();
  sub_26294D708();
  sub_262907E04(v14);
}

unint64_t sub_262907CBC()
{
  result = qword_27FF2EF00;
  if (!qword_27FF2EF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EEF8, &qword_26294F5C0);
    sub_262907D54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EF00);
  }

  return result;
}

unint64_t sub_262907D54()
{
  result = qword_27FF2EF08;
  if (!qword_27FF2EF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EF10, &qword_26294F5C8);
    sub_2628DFD0C(&qword_27FF2EF18, &qword_27FF2EF20, &qword_26294F5D0, &unk_262950BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EF08);
  }

  return result;
}

uint64_t sub_262907E04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EEE8, &qword_26294F5B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_262907E7C()
{
  result = qword_27FF2EF40;
  if (!qword_27FF2EF40)
  {
    sub_26294C728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2EF40);
  }

  return result;
}

uint64_t sub_262907ED4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_262907F3C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EEE8, &qword_26294F5B0);
  sub_2628DFD0C(&qword_27FF2EF30, &qword_27FF2EEE8, &qword_26294F5B0, MEMORY[0x277CE1198]);
  sub_2628DF230();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_262907FFC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_26294C8A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7E0, &unk_26294F980);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2629081A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_26294C8A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7E0, &unk_26294F980);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for RecommendedForDeleteView(uint64_t a1)
{
  result = qword_27FF2EF48;
  if (!qword_27FF2EF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_262908398()
{
  v0 = sub_26294C8A8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9A0, &qword_26294E9A8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  type metadata accessor for RecommendedForDeleteView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((*(v1 + 48))(v6, 1, v0))
  {
    sub_2628DF6F0(v6, &qword_27FF2E9A0, &qword_26294E9A8);
    return MEMORY[0x277D84F90];
  }

  else
  {
    (*(v1 + 16))(v3, v6, v0);
    sub_2628DF6F0(v6, &qword_27FF2E9A0, &qword_26294E9A8);
    v8 = sub_26294C898();
    (*(v1 + 8))(v3, v0);
    return v8;
  }
}

uint64_t sub_262908594@<X0>(void *a1@<X8>)
{
  v115 = a1;
  v91 = sub_26294C828();
  v2 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v92 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for MuirfieldView(0);
  MEMORY[0x28223BE20](v114);
  v93 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF58, &qword_26294F690);
  MEMORY[0x28223BE20](v94);
  v6 = &v91 - v5;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF60, &qword_26294F698);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v91 - v7;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF68, &qword_26294F6A0);
  MEMORY[0x28223BE20](v108);
  v98 = &v91 - v8;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF70, &qword_26294F6A8);
  MEMORY[0x28223BE20](v111);
  v113 = &v91 - v9;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF78, &qword_26294F6B0);
  MEMORY[0x28223BE20](v106);
  v107 = &v91 - v10;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF80, &qword_26294F6B8);
  MEMORY[0x28223BE20](v112);
  v109 = &v91 - v11;
  v110 = type metadata accessor for RecommendedForDeleteView(0);
  v102 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v103 = v12;
  v104 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF88, &qword_26294F6C0);
  MEMORY[0x28223BE20](v13);
  v15 = &v91 - v14;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF90, &qword_26294F6C8);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v116 = &v91 - v16;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF98, &qword_26294F6D0);
  MEMORY[0x28223BE20](v105);
  v101 = &v91 - v17;
  v18 = v1;
  v19 = sub_26294C898();
  result = v19 + 32;
  v21 = -*(v19 + 16);
  v22 = -1;
  while (1)
  {
    if (v21 + v22 == -1)
    {

      *v15 = sub_26294D3C8();
      *(v15 + 1) = 0;
      v15[16] = 1;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F030, &unk_262950DB0);
      v42 = &v15[*(v41 + 44)];
      MEMORY[0x28223BE20](v41);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F038, &unk_26294F7A0);
      sub_26290CE58();
      sub_26294D5E8();
      v43 = [objc_opt_self() secondarySystemBackgroundColor];
      v117 = sub_26294D838();
      v44 = sub_26294D9D8();
      *&v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F078, &qword_262950DE0) + 36)] = v44;
      v117 = sub_26294C868();
      v118 = v45;
      v46 = sub_2628DFD0C(&qword_27FF2EFB8, &qword_27FF2EF88, &qword_26294F6C0, MEMORY[0x277CE1198]);
      v47 = sub_2628DF230();
      v48 = MEMORY[0x277D837D0];
      sub_26294D708();

      sub_2628DF6F0(v15, &qword_27FF2EF88, &qword_26294F6C0);
      sub_26294CD78();
      v49 = v104;
      sub_26290CD68(v18, v104, type metadata accessor for RecommendedForDeleteView);
      v50 = (*(v102 + 80) + 16) & ~*(v102 + 80);
      v51 = swift_allocObject();
      sub_26290CDD4(v49, v51 + v50);
      type metadata accessor for PassbookCategoryView(0);
      v117 = v13;
      v118 = v48;
      v119 = v46;
      v120 = v47;
      swift_getOpaqueTypeConformance2();
      sub_26290D8E8(&qword_27FF2EFC0, MEMORY[0x277D49038], MEMORY[0x277D49048]);
      sub_26290D8E8(&qword_27FF2EFC8, type metadata accessor for PassbookCategoryView, &unk_262951808);
      v52 = v101;
      v53 = v100;
      v54 = v116;
      sub_26294D778();

      (*(v99 + 8))(v54, v53);
      v55 = *(v18 + *(v110 + 20) + 8);
      type metadata accessor for SEStorageManagementController(0);
      sub_26290D8E8(&qword_27FF2E800, type metadata accessor for SEStorageManagementController, &protocol conformance descriptor for SEStorageManagementController);
      v56 = v55;
      v57 = sub_26294D178();
      v58 = (v52 + *(v105 + 36));
      *v58 = v57;
      v58[1] = v59;
      v60 = &qword_27FF2EF98;
      v61 = &qword_26294F6D0;
      sub_2628DF954(v52, v107, &qword_27FF2EF98, &qword_26294F6D0);
      swift_storeEnumTagMultiPayload();
      sub_26290C790();
      sub_26290C9D0();
      v62 = v109;
      sub_26294D3F8();
      sub_2628DF954(v62, v113, &qword_27FF2EF80, &qword_26294F6B8);
      swift_storeEnumTagMultiPayload();
      sub_26290C704();
      sub_26290D8E8(&qword_27FF2EFE8, type metadata accessor for MuirfieldView, &unk_2629512B4);
      v36 = v115;
      sub_26294D3F8();
      sub_2628DF6F0(v62, &qword_27FF2EF80, &qword_26294F6B8);
      v63 = v52;
LABEL_16:
      sub_2628DF6F0(v63, v60, v61);
LABEL_17:
      v40 = 0;
LABEL_18:
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EFA0, &qword_26294F6D8);
      return (*(*(v85 - 8) + 56))(v36, v40, 1, v85);
    }

    if (++v22 >= *(v19 + 16))
    {
      break;
    }

    v23 = result + 40;
    sub_262906C54(result, &v117);
    __swift_project_boxed_opaque_existential_1(&v117, v120);
    DynamicType = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1Tm(&v117);
    v25 = sub_26294CD78();
    result = v23;
    if (DynamicType != v25)
    {

      v26 = v18;
      v27 = sub_26294C898();
      result = v27 + 32;
      v28 = -*(v27 + 16);
      v29 = -1;
      do
      {
        if (v28 + v29 == -1)
        {

          *v6 = sub_26294D3C8();
          *(v6 + 1) = 0;
          v6[16] = 1;
          v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EFF0, &qword_26294F760);
          v65 = &v6[*(v64 + 44)];
          MEMORY[0x28223BE20](v64);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EFF8, &qword_26294F768);
          sub_26290CC20();
          sub_26294D5E8();
          v66 = [objc_opt_self() secondarySystemBackgroundColor];
          v117 = sub_26294D838();
          v67 = sub_26294D9D8();
          *&v65[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F028, &unk_26294F790) + 36)] = v67;
          v117 = sub_26294C868();
          v118 = v68;
          v69 = sub_2628DFD0C(&qword_27FF2EFE0, &qword_27FF2EF58, &qword_26294F690, MEMORY[0x277CE1198]);
          v70 = sub_2628DF230();
          v71 = v95;
          v72 = v94;
          sub_26294D708();

          sub_2628DF6F0(v6, &qword_27FF2EF58, &qword_26294F690);
          sub_26294C7A8();
          v73 = v104;
          sub_26290CD68(v26, v104, type metadata accessor for RecommendedForDeleteView);
          v74 = (*(v102 + 80) + 16) & ~*(v102 + 80);
          v75 = swift_allocObject();
          sub_26290CDD4(v73, v75 + v74);
          type metadata accessor for ViennaAppCategoryView(0);
          v117 = v72;
          v118 = MEMORY[0x277D837D0];
          v119 = v69;
          v120 = v70;
          swift_getOpaqueTypeConformance2();
          sub_26290D8E8(&qword_27FF2E848, MEMORY[0x277D48E58], MEMORY[0x277D48E68]);
          sub_26290D8E8(&qword_27FF2E850, type metadata accessor for ViennaAppCategoryView, &unk_26294FE18);
          v76 = v98;
          v77 = v97;
          sub_26294D778();

          (*(v96 + 8))(v71, v77);
          v78 = *(v26 + *(v110 + 20) + 8);
          type metadata accessor for SEStorageManagementController(0);
          sub_26290D8E8(&qword_27FF2E800, type metadata accessor for SEStorageManagementController, &protocol conformance descriptor for SEStorageManagementController);
          v79 = v78;
          v80 = sub_26294D178();
          v81 = v107;
          v82 = (v76 + *(v108 + 36));
          *v82 = v80;
          v82[1] = v83;
          v60 = &qword_27FF2EF68;
          v61 = &qword_26294F6A0;
          sub_2628DF954(v76, v81, &qword_27FF2EF68, &qword_26294F6A0);
          swift_storeEnumTagMultiPayload();
          sub_26290C790();
          sub_26290C9D0();
          v84 = v109;
          sub_26294D3F8();
          sub_2628DF954(v84, v113, &qword_27FF2EF80, &qword_26294F6B8);
          swift_storeEnumTagMultiPayload();
          sub_26290C704();
          sub_26290D8E8(&qword_27FF2EFE8, type metadata accessor for MuirfieldView, &unk_2629512B4);
          v36 = v115;
          sub_26294D3F8();
          sub_2628DF6F0(v84, &qword_27FF2EF80, &qword_26294F6B8);
          v63 = v76;
          goto LABEL_16;
        }

        if (++v29 >= *(v27 + 16))
        {
          goto LABEL_21;
        }

        v30 = result + 40;
        sub_262906C54(result, &v117);
        __swift_project_boxed_opaque_existential_1(&v117, v120);
        v31 = swift_getDynamicType();
        __swift_destroy_boxed_opaque_existential_1Tm(&v117);
        v32 = sub_26294C7A8();
        result = v30;
      }

      while (v31 == v32);

      v33 = sub_26294C898();
      result = v33 + 32;
      v34 = -*(v33 + 16);
      v35 = -1;
      v36 = v115;
      while (v34 + v35 != -1)
      {
        if (++v35 >= *(v33 + 16))
        {
          goto LABEL_22;
        }

        v37 = result + 40;
        sub_262906C54(result, &v117);
        __swift_project_boxed_opaque_existential_1(&v117, v120);
        v38 = swift_getDynamicType();
        __swift_destroy_boxed_opaque_existential_1Tm(&v117);
        v39 = sub_26294CD98();
        result = v37;
        if (v38 != v39)
        {

          v40 = 1;
          goto LABEL_18;
        }
      }

      (*(v2 + 104))(v92, *MEMORY[0x277D48EC8], v91);
      v86 = *(v18 + *(v110 + 20) + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_26294CFF8();

      sub_2628E3A44(v117);

      v87 = v93;
      sub_26294C838();
      v88 = v114;
      *(v87 + *(v114 + 20)) = v86;
      v89 = *(v88 + 24);
      *(v87 + v89) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
      swift_storeEnumTagMultiPayload();
      sub_26290CD68(v87, v113, type metadata accessor for MuirfieldView);
      swift_storeEnumTagMultiPayload();
      sub_26290C704();
      sub_26290D8E8(&qword_27FF2EFE8, type metadata accessor for MuirfieldView, &unk_2629512B4);
      v90 = v86;
      sub_26294D3F8();
      sub_26290CBBC(v87);
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}