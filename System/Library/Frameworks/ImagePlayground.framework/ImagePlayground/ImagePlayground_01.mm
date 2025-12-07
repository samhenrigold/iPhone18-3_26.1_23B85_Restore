uint64_t sub_1D2A34B88(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_isLoadingRecipe;
  swift_beginAccess();
  *(v3 + v4) = v2;
  *(*(v3 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager) + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_isLoadingRecipe) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  sub_1D2A5B93C(sub_1D2A57618, 0, sub_1D2A47D44, v5);
}

uint64_t (*sub_1D2A34C50(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_isLoadingRecipe;
  *(v3 + 112) = v1;
  *(v3 + 120) = v4;
  swift_beginAccess();
  return sub_1D2A34CD8;
}

void sub_1D2A34CD8(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[14];
    v5 = *(v4 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
    v6 = *(v4 + v3[15]);
    *(v5 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_isLoadingRecipe) = v6;
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = sub_1D2A57618;
    v9[4] = 0;
    v9[5] = sub_1D2A47D44;
    v9[6] = v7;
    swift_getKeyPath();
    *v3 = v5;
    sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);

    sub_1D2AC6094();

    v10 = *(v5 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v10)
    {
      v3[4] = sub_1D2A57618;
      v3[5] = 0;
      *v3 = MEMORY[0x1E69E9820];
      v3[1] = 1107296256;
      v3[2] = sub_1D2A44320;
      v3[3] = &block_descriptor_57;
      v11 = _Block_copy(v3);
      v12 = v10;

      v13 = [v12 remoteObjectProxyWithErrorHandler_];
      _Block_release(v11);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(v3 + 5, v3 + 3);
      sub_1D2A206F8(v3 + 3, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v14 = v3[10];
      if (v14)
      {
        [v3[10] setIsLoadingRecipe_];

LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v15 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v16 = sub_1D2AC63B4();
      __swift_project_value_buffer(v16, qword_1EC7040C0);
      v17 = v15;
      v18 = sub_1D2AC6394();
      v19 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        v22 = v15;
        v23 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 4) = v23;
        *v21 = v23;
        _os_log_impl(&dword_1D2A17000, v18, v19, "Could not send isLoadingRecipe to remote view: %@. May not be an error if the connection is not established yet, will retry.", v20, 0xCu);
        sub_1D2A2E61C(v21, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v21, -1, -1);
        MEMORY[0x1D38A8460](v20, -1, -1);
      }
    }

    v24 = swift_allocObject();
    *(v24 + 16) = sub_1D2A2E6B4;
    *(v24 + 24) = v9;
    swift_getKeyPath();
    *v3 = v5;

    sub_1D2AC6094();

    *v3 = v5;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v25 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v26 = *(v5 + v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + v25) = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_1D2A4486C(0, v26[2] + 1, 1, v26);
      *(v5 + v25) = v26;
    }

    v29 = v26[2];
    v28 = v26[3];
    if (v29 >= v28 >> 1)
    {
      v26 = sub_1D2A4486C((v28 > 1), v29 + 1, 1, v26);
    }

    v26[2] = v29 + 1;
    v30 = &v26[2 * v29];
    v30[4] = sub_1D2A47D3C;
    v30[5] = v24;
    *(v5 + v25) = v26;
    swift_endAccess();
    *v3 = v5;
    swift_getKeyPath();
    sub_1D2AC60A4();

    goto LABEL_15;
  }

LABEL_16:

  free(v3);
}

void *sub_1D2A352D8()
{
  v1 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_recipe;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D2A35344(char *a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(void))
{
  v8 = *a4;
  swift_beginAccess();
  v9 = *&a1[v8];
  *&a1[v8] = a3;
  v10 = a3;
  v11 = a1;

  a5();
}

void sub_1D2A353EC()
{
  v1 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_recipe;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    v21 = *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
    v22 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements;
    *(v21 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements) = MEMORY[0x1E69E7CC0];

    v23 = *(v21 + v22);
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = sub_1D2A575AC;
    v26[4] = 0;
    v26[5] = sub_1D2A47D50;
    v26[6] = v24;
    swift_getKeyPath();
    *&aBlock = v21;
    sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
    swift_bridgeObjectRetain_n();

    sub_1D2AC6094();

    v139 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection;
    v27 = *(v21 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v27)
    {
      v143 = sub_1D2A575AC;
      v144 = 0;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v141 = sub_1D2A44320;
      v142 = &block_descriptor_397;
      v28 = _Block_copy(&aBlock);
      v29 = v27;

      v30 = [v29 remoteObjectProxyWithErrorHandler_];
      _Block_release(v28);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(v145, v146);
      sub_1D2A206F8(v146, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v31 = v145[0];
      if (v145[0])
      {
        sub_1D2A20764(0, &qword_1EC703B30, &off_1E84033C0);
        v32 = sub_1D2AC6D24();
        [v31 setPromptElements_];

        goto LABEL_36;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v72 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v73 = sub_1D2AC63B4();
      __swift_project_value_buffer(v73, qword_1EC7040C0);
      v74 = v72;
      v75 = sub_1D2AC6394();
      v76 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *v77 = 138412290;
        v79 = v72;
        v80 = _swift_stdlib_bridgeErrorToNSError();
        *(v77 + 4) = v80;
        *v78 = v80;
        _os_log_impl(&dword_1D2A17000, v75, v76, "Could not send prompt elements to remote view: %@. May not be an error if the connection is not established yet, will retry.", v77, 0xCu);
        sub_1D2A2E61C(v78, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v78, -1, -1);
        MEMORY[0x1D38A8460](v77, -1, -1);
      }
    }

    v81 = swift_allocObject();
    *(v81 + 16) = sub_1D2A2E6B4;
    *(v81 + 24) = v26;
    swift_getKeyPath();
    *&aBlock = v21;

    sub_1D2AC6094();

    *&aBlock = v21;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v82 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v83 = *(v21 + v82);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v21 + v82) = v83;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v83 = sub_1D2A4486C(0, v83[2] + 1, 1, v83);
      *(v21 + v82) = v83;
    }

    v86 = v83[2];
    v85 = v83[3];
    if (v86 >= v85 >> 1)
    {
      v83 = sub_1D2A4486C((v85 > 1), v86 + 1, 1, v83);
    }

    v83[2] = v86 + 1;
    v87 = &v83[2 * v86];
    v87[4] = sub_1D2A47D3C;
    v87[5] = v81;
    *(v21 + v82) = v83;
    swift_endAccess();
    *&aBlock = v21;
    swift_getKeyPath();
    sub_1D2AC60A4();

LABEL_36:
    v88 = (v21 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData);
    v89 = *(v21 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData);
    v90 = *(v21 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData + 8);
    *(v21 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData) = xmmword_1D2AC9FC0;
    sub_1D2A47930(v89, v90);
    v91 = *v88;
    v92 = v88[1];
    v93 = swift_allocObject();
    *(v93 + 16) = v91;
    *(v93 + 24) = v92;
    v94 = swift_allocObject();
    swift_weakInit();
    v95 = swift_allocObject();
    v95[2] = v94;
    v95[3] = sub_1D2A5764C;
    v95[4] = 0;
    v95[5] = sub_1D2A47998;
    v95[6] = v93;
    swift_getKeyPath();
    *&aBlock = v21;
    sub_1D2A479A0(v91, v92);
    sub_1D2A479A0(v91, v92);
    sub_1D2A479A0(v91, v92);

    sub_1D2AC6094();

    v96 = *(v21 + v139);
    if (v96)
    {
      v143 = sub_1D2A5764C;
      v144 = 0;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v141 = sub_1D2A44320;
      v142 = &block_descriptor_412;
      v97 = _Block_copy(&aBlock);
      v98 = v96;

      v99 = [v98 remoteObjectProxyWithErrorHandler_];
      _Block_release(v97);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(v145, v146);
      sub_1D2A206F8(v146, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v100 = v145[0];
      if (v145[0])
      {
        if (v92 >> 60 == 15)
        {
          v101 = 0;
        }

        else
        {
          v101 = sub_1D2AC5F14();
        }

        [v100 setRecipeData_];

LABEL_53:
        sub_1D2A47930(v91, v92);
        sub_1D2A47930(v91, v92);
        return;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v102 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v103 = sub_1D2AC63B4();
      __swift_project_value_buffer(v103, qword_1EC7040C0);
      v104 = v102;
      v105 = sub_1D2AC6394();
      v106 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        *v107 = 138412290;
        v109 = v102;
        v110 = _swift_stdlib_bridgeErrorToNSError();
        *(v107 + 4) = v110;
        *v108 = v110;
        _os_log_impl(&dword_1D2A17000, v105, v106, "Could not send recipe data to remote view: %@. May not be an error if the connection is not established yet, will retry.", v107, 0xCu);
        sub_1D2A2E61C(v108, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v108, -1, -1);
        MEMORY[0x1D38A8460](v107, -1, -1);
      }
    }

    v111 = swift_allocObject();
    *(v111 + 16) = sub_1D2A2E6B4;
    *(v111 + 24) = v95;
    swift_getKeyPath();
    *&aBlock = v21;

    sub_1D2AC6094();

    *&aBlock = v21;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v112 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v113 = *(v21 + v112);
    v114 = swift_isUniquelyReferenced_nonNull_native();
    *(v21 + v112) = v113;
    if ((v114 & 1) == 0)
    {
      v113 = sub_1D2A4486C(0, v113[2] + 1, 1, v113);
      *(v21 + v112) = v113;
    }

    v116 = v113[2];
    v115 = v113[3];
    if (v116 >= v115 >> 1)
    {
      v113 = sub_1D2A4486C((v115 > 1), v116 + 1, 1, v113);
    }

    v113[2] = v116 + 1;
    v117 = &v113[2 * v116];
    v117[4] = sub_1D2A47D3C;
    v117[5] = v111;
    *(v21 + v112) = v113;
    swift_endAccess();
    *&aBlock = v21;
    swift_getKeyPath();
    sub_1D2AC60A4();

    goto LABEL_53;
  }

  v3 = v2;
  v4 = [v3 promptElements];
  sub_1D2A20764(0, &qword_1EC703B30, &off_1E84033C0);
  v5 = sub_1D2AC6D34();

  if (v5 >> 62)
  {
    v6 = sub_1D2AC7024();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 < 1)
  {
    v33 = [v3 additionalMetadata];
    if (!v33)
    {

      return;
    }

    v34 = v33;
    v35 = sub_1D2AC5F24();
    v37 = v36;

    v38 = *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
    v39 = (v38 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData);
    v40 = *(v38 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData);
    v41 = *(v38 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData + 8);
    *v39 = v35;
    v39[1] = v37;
    sub_1D2A479B4(v35, v37);
    v137 = v35;
    v138 = v37;
    sub_1D2A479B4(v35, v37);
    sub_1D2A47930(v40, v41);
    v42 = *v39;
    v43 = v39[1];
    v44 = swift_allocObject();
    *(v44 + 16) = v42;
    *(v44 + 24) = v43;
    v45 = swift_allocObject();
    swift_weakInit();
    v46 = swift_allocObject();
    v46[2] = v45;
    v46[3] = sub_1D2A5764C;
    v46[4] = 0;
    v46[5] = sub_1D2A47D40;
    v46[6] = v44;
    swift_getKeyPath();
    *&aBlock = v38;
    sub_1D2A479A0(v42, v43);
    sub_1D2A479A0(v42, v43);
    sub_1D2A479A0(v42, v43);
    sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);

    sub_1D2AC6094();

    v47 = *(v38 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    v136 = v3;
    if (v47)
    {
      v143 = sub_1D2A5764C;
      v144 = 0;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v141 = sub_1D2A44320;
      v142 = &block_descriptor_428;
      v48 = _Block_copy(&aBlock);
      v49 = v47;

      v50 = [v49 remoteObjectProxyWithErrorHandler_];
      _Block_release(v48);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(v145, v146);
      sub_1D2A206F8(v146, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v51 = v145[0];
      if (v145[0])
      {
        if (v43 >> 60 == 15)
        {
          v52 = 0;
        }

        else
        {
          v52 = sub_1D2AC5F14();
        }

        [v51 setRecipeData_];

        sub_1D2A47930(v42, v43);
        sub_1D2A47930(v42, v43);
        v135 = v137;
        v134 = v37;
        sub_1D2A47944(v137, v37);

LABEL_66:
        sub_1D2A47944(v135, v134);
        return;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v118 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v119 = sub_1D2AC63B4();
      __swift_project_value_buffer(v119, qword_1EC7040C0);
      v120 = v118;
      v121 = sub_1D2AC6394();
      v122 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        *v123 = 138412290;
        v125 = v118;
        v126 = _swift_stdlib_bridgeErrorToNSError();
        *(v123 + 4) = v126;
        *v124 = v126;
        _os_log_impl(&dword_1D2A17000, v121, v122, "Could not send recipe data to remote view: %@. May not be an error if the connection is not established yet, will retry.", v123, 0xCu);
        sub_1D2A2E61C(v124, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v124, -1, -1);
        MEMORY[0x1D38A8460](v123, -1, -1);
      }
    }

    v127 = swift_allocObject();
    *(v127 + 16) = sub_1D2A2E6B4;
    *(v127 + 24) = v46;
    swift_getKeyPath();
    *&aBlock = v38;

    sub_1D2AC6094();

    *&aBlock = v38;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v128 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v129 = *(v38 + v128);
    v130 = swift_isUniquelyReferenced_nonNull_native();
    *(v38 + v128) = v129;
    if ((v130 & 1) == 0)
    {
      v129 = sub_1D2A4486C(0, v129[2] + 1, 1, v129);
      *(v38 + v128) = v129;
    }

    v132 = v129[2];
    v131 = v129[3];
    if (v132 >= v131 >> 1)
    {
      v129 = sub_1D2A4486C((v131 > 1), v132 + 1, 1, v129);
    }

    v129[2] = v132 + 1;
    v133 = &v129[2 * v132];
    v133[4] = sub_1D2A47D3C;
    v133[5] = v127;
    *(v38 + v128) = v129;
    swift_endAccess();
    *&aBlock = v38;
    swift_getKeyPath();
    sub_1D2AC60A4();

    sub_1D2A47930(v42, v43);
    sub_1D2A47930(v42, v43);
    v135 = v137;
    v134 = v138;
    sub_1D2A47944(v137, v138);

    goto LABEL_66;
  }

  v7 = *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  v8 = [v3 promptElements];
  v9 = sub_1D2AC6D34();

  v10 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements;
  *(v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements) = v9;

  v11 = *(v7 + v10);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = sub_1D2A575AC;
  v14[4] = 0;
  v14[5] = sub_1D2A47D50;
  v14[6] = v12;
  swift_getKeyPath();
  *&aBlock = v7;
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  swift_bridgeObjectRetain_n();

  sub_1D2AC6094();

  v15 = *(v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v15)
  {
    v143 = sub_1D2A575AC;
    v144 = 0;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v141 = sub_1D2A44320;
    v142 = &block_descriptor_444;
    v16 = _Block_copy(&aBlock);
    v17 = v15;

    v18 = [v17 remoteObjectProxyWithErrorHandler_];
    _Block_release(v16);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(v145, v146);
    sub_1D2A206F8(v146, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v19 = v145[0];
    if (v145[0])
    {
      v20 = sub_1D2AC6D24();
      [v19 setPromptElements_];

      return;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v53 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v54 = sub_1D2AC63B4();
    __swift_project_value_buffer(v54, qword_1EC7040C0);
    v55 = v53;
    v56 = sub_1D2AC6394();
    v57 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = v3;
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138412290;
      v61 = v53;
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v59 + 4) = v62;
      *v60 = v62;
      _os_log_impl(&dword_1D2A17000, v56, v57, "Could not send prompt elements to remote view: %@. May not be an error if the connection is not established yet, will retry.", v59, 0xCu);
      sub_1D2A2E61C(v60, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v60, -1, -1);
      v63 = v59;
      v3 = v58;
      MEMORY[0x1D38A8460](v63, -1, -1);
    }
  }

  v64 = swift_allocObject();
  *(v64 + 16) = sub_1D2A2E6B4;
  *(v64 + 24) = v14;
  swift_getKeyPath();
  *&aBlock = v7;

  sub_1D2AC6094();

  *&aBlock = v7;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v65 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v66 = *(v7 + v65);
  v67 = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + v65) = v66;
  v68 = v3;
  if ((v67 & 1) == 0)
  {
    v66 = sub_1D2A4486C(0, v66[2] + 1, 1, v66);
    *(v7 + v65) = v66;
  }

  v70 = v66[2];
  v69 = v66[3];
  if (v70 >= v69 >> 1)
  {
    v66 = sub_1D2A4486C((v69 > 1), v70 + 1, 1, v66);
  }

  v66[2] = v70 + 1;
  v71 = &v66[2 * v70];
  v71[4] = sub_1D2A47D3C;
  v71[5] = v64;
  *(v7 + v65) = v66;
  swift_endAccess();
  *&aBlock = v7;
  swift_getKeyPath();
  sub_1D2AC60A4();
}

uint64_t (*sub_1D2A36BF4(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D2A36C58;
}

__n128 sub_1D2A36C70@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_previewAspectRatio;
  swift_beginAccess();
  *a1 = *v3;
  result = *(v3 + 8);
  *(a1 + 8) = result;
  return result;
}

void sub_1D2A36CC8(double *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = (v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_previewAspectRatio);
  swift_beginAccess();
  *v5 = v2;
  v5[1] = v3;
  v5[2] = v4;
  v6 = *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  v7 = v6 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_previewAspectRatio;
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = v3;
  v8[4] = v4;
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = sub_1D2A576E0;
  v10[4] = 0;
  v10[5] = sub_1D2A2DFB8;
  v10[6] = v8;
  swift_getKeyPath();
  *&v33 = v6;
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);

  sub_1D2AC6094();

  v11 = *(v6 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v11)
  {
    v36 = sub_1D2A576E0;
    v37 = 0;
    *&v33 = MEMORY[0x1E69E9820];
    *(&v33 + 1) = 1107296256;
    v34 = sub_1D2A44320;
    v35 = &block_descriptor_72;
    v12 = _Block_copy(&v33);
    v13 = v11;

    v14 = [v13 remoteObjectProxyWithErrorHandler_];
    _Block_release(v12);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(&v38, v39);
    sub_1D2A206F8(v39, &v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v15 = v38;
    if (v38)
    {
      sub_1D2A20764(0, &qword_1EC7037F8, 0x1E696AD98);
      v16 = sub_1D2AC6F84();
      [v15 setPreviewAspectRatio_];

      return;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v17 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v18 = sub_1D2AC63B4();
    __swift_project_value_buffer(v18, qword_1EC7040C0);
    v19 = v17;
    v20 = sub_1D2AC6394();
    v21 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v17;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1D2A17000, v20, v21, "Could not send display aspect ratio to remote view: %@. May not be an error if the connection is not established yet, will retry.", v22, 0xCu);
      sub_1D2A2E61C(v23, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v23, -1, -1);
      MEMORY[0x1D38A8460](v22, -1, -1);
    }
  }

  v26 = swift_allocObject();
  *(v26 + 16) = sub_1D2A2E6B4;
  *(v26 + 24) = v10;
  swift_getKeyPath();
  *&v33 = v6;

  sub_1D2AC6094();

  *&v33 = v6;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v27 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v28 = *(v6 + v27);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + v27) = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = sub_1D2A4486C(0, v28[2] + 1, 1, v28);
    *(v6 + v27) = v28;
  }

  v31 = v28[2];
  v30 = v28[3];
  if (v31 >= v30 >> 1)
  {
    v28 = sub_1D2A4486C((v30 > 1), v31 + 1, 1, v28);
  }

  v28[2] = v31 + 1;
  v32 = &v28[2 * v31];
  v32[4] = sub_1D2A47D3C;
  v32[5] = v26;
  *(v6 + v27) = v28;
  swift_endAccess();
  *&v33 = v6;
  swift_getKeyPath();
  sub_1D2AC60A4();
}

uint64_t (*sub_1D2A372A4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_previewAspectRatio;
  *(v3 + 112) = v1;
  *(v3 + 120) = v4;
  swift_beginAccess();
  return sub_1D2A3732C;
}

void sub_1D2A3732C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[14];
    v5 = *(v4 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
    v6 = (v4 + v3[15]);
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[2];
    v10 = v5 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_previewAspectRatio;
    *v10 = v8;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    v11 = swift_allocObject();
    v11[2] = v8;
    v11[3] = v7;
    v11[4] = v9;
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = sub_1D2A576E0;
    v13[4] = 0;
    v13[5] = sub_1D2A2E6C0;
    v13[6] = v11;
    swift_getKeyPath();
    *v3 = v5;
    sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);

    sub_1D2AC6094();

    v14 = *(v5 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v14)
    {
      v3[4] = sub_1D2A576E0;
      v3[5] = 0;
      *v3 = MEMORY[0x1E69E9820];
      v3[1] = 1107296256;
      v3[2] = sub_1D2A44320;
      v3[3] = &block_descriptor_88;
      v15 = _Block_copy(v3);
      v16 = v14;

      v17 = [v16 remoteObjectProxyWithErrorHandler_];
      _Block_release(v15);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(v3 + 5, v3 + 3);
      sub_1D2A206F8(v3 + 3, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v18 = v3[10];
      if (v18)
      {
        sub_1D2A20764(0, &qword_1EC7037F8, 0x1E696AD98);
        v19 = sub_1D2AC6F84();
        [v18 setPreviewAspectRatio_];

LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v20 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v21 = sub_1D2AC63B4();
      __swift_project_value_buffer(v21, qword_1EC7040C0);
      v22 = v20;
      v23 = sub_1D2AC6394();
      v24 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        v27 = v20;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_1D2A17000, v23, v24, "Could not send display aspect ratio to remote view: %@. May not be an error if the connection is not established yet, will retry.", v25, 0xCu);
        sub_1D2A2E61C(v26, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v26, -1, -1);
        MEMORY[0x1D38A8460](v25, -1, -1);
      }
    }

    v29 = swift_allocObject();
    *(v29 + 16) = sub_1D2A2E6B4;
    *(v29 + 24) = v13;
    swift_getKeyPath();
    *v3 = v5;

    sub_1D2AC6094();

    *v3 = v5;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v30 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v31 = *(v5 + v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + v30) = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = sub_1D2A4486C(0, v31[2] + 1, 1, v31);
      *(v5 + v30) = v31;
    }

    v34 = v31[2];
    v33 = v31[3];
    if (v34 >= v33 >> 1)
    {
      v31 = sub_1D2A4486C((v33 > 1), v34 + 1, 1, v31);
    }

    v31[2] = v34 + 1;
    v35 = &v31[2 * v34];
    v35[4] = sub_1D2A47D3C;
    v35[5] = v29;
    *(v5 + v30) = v31;
    swift_endAccess();
    *v3 = v5;
    swift_getKeyPath();
    sub_1D2AC60A4();

    goto LABEL_15;
  }

LABEL_16:

  free(v3);
}

uint64_t sub_1D2A3791C(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  swift_beginAccess();
  v10 = *(v8 + v9);
  *(v8 + v9) = v7;
  v11 = v7;

  return a6();
}

void sub_1D2A3798C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044B0, &qword_1D2ACA040);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  v4 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_pregeneratedImage;
  swift_beginAccess();
  v5 = *&v0[v4];
  if (v5)
  {
    v6 = sub_1D2AC6DD4();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_1D2AC6DA4();
    v7 = v5;
    v8 = v0;
    v9 = sub_1D2AC6D94();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;
    v10[5] = v7;
    sub_1D2A2F088(0, 0, v3, &unk_1D2ACA5A8, v10);
  }

  else
  {
    v12 = *&v0[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager];
    v7 = *(v12 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_pregeneratedImage);
    *(v12 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_pregeneratedImage) = 0;
  }
}

uint64_t sub_1D2A37B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[28] = a4;
  v5[29] = sub_1D2AC6DA4();
  v5[30] = sub_1D2AC6D94();
  v7 = swift_task_alloc();
  v5[31] = v7;
  *v7 = v5;
  v7[1] = sub_1D2A37BC4;

  return sub_1D2A470E4(a5);
}

uint64_t sub_1D2A37BC4(uint64_t a1)
{
  *(*v1 + 256) = a1;

  v3 = sub_1D2AC6D44();

  return MEMORY[0x1EEE6DFA0](sub_1D2A37D08, v3, v2);
}

uint64_t sub_1D2A37D08()
{
  v1 = v0[32];
  v2 = v0[28];

  v3 = *(v2 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  v4 = *(v3 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_pregeneratedImage);
  if (v1)
  {
    v5 = v0[32];
    *(v3 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_pregeneratedImage) = v5;
    v6 = v5;

    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = sub_1D2A57784;
    v9[4] = 0;
    v9[5] = sub_1D2A2E354;
    v9[6] = v7;
    swift_getKeyPath();
    v0[23] = v3;
    sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
    v10 = v6;

    sub_1D2AC6094();

    v11 = *(v3 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v11)
    {
      v0[6] = sub_1D2A57784;
      v0[7] = 0;
      v0[2] = MEMORY[0x1E69E9820];
      v0[3] = 1107296256;
      v0[4] = sub_1D2A44320;
      v0[5] = &block_descriptor_375;
      v12 = _Block_copy(v0 + 2);
      v13 = v11;

      v14 = [v13 remoteObjectProxyWithErrorHandler_];
      _Block_release(v12);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(v0 + 6, v0 + 4);
      sub_1D2A206F8(v0 + 4, v0 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v15 = v0[24];
      if (v15)
      {
        [v0[24] setPreGeneratedImage_];

        goto LABEL_16;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v16 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v17 = sub_1D2AC63B4();
      __swift_project_value_buffer(v17, qword_1EC7040C0);
      v18 = v16;
      v19 = sub_1D2AC6394();
      v20 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = v10;
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        v24 = v16;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 4) = v25;
        *v23 = v25;
        _os_log_impl(&dword_1D2A17000, v19, v20, "Could not send pregenerated image to remote view: %@. May not be an error if the connection is not established yet, will retry.", v22, 0xCu);
        sub_1D2A2E61C(v23, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v23, -1, -1);
        v26 = v22;
        v10 = v21;
        MEMORY[0x1D38A8460](v26, -1, -1);
      }
    }

    v36 = v10;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1D2A2E6B4;
    *(v27 + 24) = v9;
    swift_getKeyPath();
    v0[25] = v3;

    sub_1D2AC6094();

    v0[26] = v3;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v28 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v29 = *(v3 + v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v28) = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_1D2A4486C(0, v29[2] + 1, 1, v29);
      *(v3 + v28) = v29;
    }

    v32 = v29[2];
    v31 = v29[3];
    if (v32 >= v31 >> 1)
    {
      v29 = sub_1D2A4486C((v31 > 1), v32 + 1, 1, v29);
    }

    v29[2] = v32 + 1;
    v33 = &v29[2 * v32];
    v33[4] = sub_1D2A47D3C;
    v33[5] = v27;
    *(v3 + v28) = v29;
    swift_endAccess();
    v0[27] = v3;
    swift_getKeyPath();
    sub_1D2AC60A4();
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_pregeneratedImage) = 0;
  }

LABEL_16:
  v34 = v0[1];

  return v34();
}

void *sub_1D2A38324()
{
  v1 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_pregeneratedImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D2A38390(void *a1, uint64_t *a2, void (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  v8 = a1;

  a3();
}

uint64_t (*sub_1D2A38404(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044B0, &qword_1D2ACA040) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_pregeneratedImage;
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  swift_beginAccess();
  return sub_1D2A384D0;
}

void sub_1D2A384D0(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *&v4[v3[5]];
    if (v5)
    {
      v6 = v3[4];
      v7 = sub_1D2AC6DD4();
      (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
      sub_1D2AC6DA4();
      v8 = v5;
      v9 = v4;
      v10 = sub_1D2AC6D94();
      v11 = swift_allocObject();
      v12 = MEMORY[0x1E69E85E0];
      v11[2] = v10;
      v11[3] = v12;
      v11[4] = v9;
      v11[5] = v8;
      sub_1D2A2F088(0, 0, v6, &unk_1D2ACA050, v11);
    }

    else
    {
      v13 = *&v4[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager];
      v14 = *(v13 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_pregeneratedImage);
      *(v13 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_pregeneratedImage) = 0;
    }
  }

  free(v3[4]);

  free(v3);
}

uint64_t sub_1D2A3862C@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageImportPolicy;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void sub_1D2A38680(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageImportPolicy;
  swift_beginAccess();
  *(v1 + v3) = v2;
  v4 = *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_imageImportPolicy) = v2;
  if (v2 != 3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = sub_1D2A577B4;
    v7[4] = 0;
    v7[5] = sub_1D2A2DF40;
    v7[6] = v5;
    swift_getKeyPath();
    *&aBlock = v4;
    sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);

    sub_1D2AC6094();

    v8 = *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v8)
    {
      v33 = sub_1D2A577B4;
      v34 = 0;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v31 = sub_1D2A44320;
      v32 = &block_descriptor_108;
      v9 = _Block_copy(&aBlock);
      v10 = v8;

      v11 = [v10 remoteObjectProxyWithErrorHandler_];
      _Block_release(v9);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(&v35, v36);
      sub_1D2A206F8(v36, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v12 = v35;
      if (v35)
      {
        v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        [v12 setImageImportPolicy_];

        return;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v14 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v15 = sub_1D2AC63B4();
      __swift_project_value_buffer(v15, qword_1EC7040C0);
      v16 = v14;
      v17 = sub_1D2AC6394();
      v18 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        v21 = v14;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 4) = v22;
        *v20 = v22;
        _os_log_impl(&dword_1D2A17000, v17, v18, "Could not send image import policy to remote view: %@. May not be an error if the connection is not established yet, will retry.", v19, 0xCu);
        sub_1D2A2E61C(v20, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v20, -1, -1);
        MEMORY[0x1D38A8460](v19, -1, -1);
      }
    }

    v23 = swift_allocObject();
    *(v23 + 16) = sub_1D2A2E6B4;
    *(v23 + 24) = v7;
    swift_getKeyPath();
    *&aBlock = v4;

    sub_1D2AC6094();

    *&aBlock = v4;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v24 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v25 = *(v4 + v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v24) = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1D2A4486C(0, v25[2] + 1, 1, v25);
      *(v4 + v24) = v25;
    }

    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = sub_1D2A4486C((v27 > 1), v28 + 1, 1, v25);
    }

    v25[2] = v28 + 1;
    v29 = &v25[2 * v28];
    v29[4] = sub_1D2A47D3C;
    v29[5] = v23;
    *(v4 + v24) = v25;
    swift_endAccess();
    *&aBlock = v4;
    swift_getKeyPath();
    sub_1D2AC60A4();
  }
}

uint64_t (*sub_1D2A38C38(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageImportPolicy;
  *(v3 + 112) = v1;
  *(v3 + 120) = v4;
  swift_beginAccess();
  return sub_1D2A38CC0;
}

void sub_1D2A38CC0(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[14];
    v5 = *(v4 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
    v6 = *(v4 + v3[15]);
    *(v5 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_imageImportPolicy) = v6;
    if (v6 != 3)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = swift_allocObject();
      v9[2] = v8;
      v9[3] = sub_1D2A577B4;
      v9[4] = 0;
      v9[5] = sub_1D2A2E728;
      v9[6] = v7;
      swift_getKeyPath();
      *v3 = v5;
      sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);

      sub_1D2AC6094();

      v10 = *(v5 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
      if (v10)
      {
        v3[4] = sub_1D2A577B4;
        v3[5] = 0;
        *v3 = MEMORY[0x1E69E9820];
        v3[1] = 1107296256;
        v3[2] = sub_1D2A44320;
        v3[3] = &block_descriptor_124;
        v11 = _Block_copy(v3);
        v12 = v10;

        v13 = [v12 remoteObjectProxyWithErrorHandler_];
        _Block_release(v11);

        sub_1D2AC6FF4();
        swift_unknownObjectRelease();
        sub_1D2A206F8(v3 + 5, v3 + 3);
        sub_1D2A206F8(v3 + 3, v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
        swift_dynamicCast();
        v14 = v3[10];
        if (v14)
        {
          v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          [v14 setImageImportPolicy_];

LABEL_16:

          goto LABEL_17;
        }
      }

      else
      {
        sub_1D2A2DF64();
        v16 = swift_allocError();
        if (qword_1EC7035A0 != -1)
        {
          swift_once();
        }

        v17 = sub_1D2AC63B4();
        __swift_project_value_buffer(v17, qword_1EC7040C0);
        v18 = v16;
        v19 = sub_1D2AC6394();
        v20 = sub_1D2AC6EB4();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 138412290;
          v23 = v16;
          v24 = _swift_stdlib_bridgeErrorToNSError();
          *(v21 + 4) = v24;
          *v22 = v24;
          _os_log_impl(&dword_1D2A17000, v19, v20, "Could not send image import policy to remote view: %@. May not be an error if the connection is not established yet, will retry.", v21, 0xCu);
          sub_1D2A2E61C(v22, &unk_1EC704400, &unk_1D2ADA9A0);
          MEMORY[0x1D38A8460](v22, -1, -1);
          MEMORY[0x1D38A8460](v21, -1, -1);
        }
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_1D2A2E6B4;
      *(v25 + 24) = v9;
      swift_getKeyPath();
      *v3 = v5;

      sub_1D2AC6094();

      *v3 = v5;
      swift_getKeyPath();
      sub_1D2AC60B4();

      v26 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
      swift_beginAccess();
      v27 = *(v5 + v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + v26) = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_1D2A4486C(0, v27[2] + 1, 1, v27);
        *(v5 + v26) = v27;
      }

      v30 = v27[2];
      v29 = v27[3];
      if (v30 >= v29 >> 1)
      {
        v27 = sub_1D2A4486C((v29 > 1), v30 + 1, 1, v27);
      }

      v27[2] = v30 + 1;
      v31 = &v27[2 * v30];
      v31[4] = sub_1D2A47D3C;
      v31[5] = v25;
      *(v5 + v26) = v27;
      swift_endAccess();
      *v3 = v5;
      swift_getKeyPath();
      sub_1D2AC60A4();

      goto LABEL_16;
    }
  }

LABEL_17:

  free(v3);
}

uint64_t sub_1D2A392A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *a2 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_responsibleAuditToken;
  result = swift_beginAccess();
  *v8 = v2;
  *(v8 + 8) = v3;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 32) = v6;
  v10 = *(v7 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager) + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_responsibleAuditToken;
  *v10 = v2;
  *(v10 + 8) = v3;
  *(v10 + 16) = v4;
  *(v10 + 24) = v5;
  *(v10 + 32) = v6;
  return result;
}

__n128 sub_1D2A39340@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_responsibleAuditToken;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 sub_1D2A39398(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_responsibleAuditToken;
  swift_beginAccess();
  *(v3 + 32) = *(a1 + 32);
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  v5 = *(v3 + 32);
  v6 = *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager) + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_responsibleAuditToken;
  result = *v3;
  v8 = *(v3 + 16);
  *v6 = *v3;
  *(v6 + 16) = v8;
  *(v6 + 32) = v5;
  return result;
}

uint64_t (*sub_1D2A39424(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_responsibleAuditToken;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1D2A394AC;
}

void sub_1D2A394AC(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v4 + v3[4];
    v6 = *(v5 + 32);
    v7 = *(v4 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager) + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_responsibleAuditToken;
    v8 = *(v5 + 16);
    *v7 = *v5;
    *(v7 + 16) = v8;
    *(v7 + 32) = v6;
  }

  free(v3);
}

uint64_t sub_1D2A39524(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  swift_beginAccess();
  *(v8 + v9) = v7;

  return a6(v10);
}

void sub_1D2A3959C()
{
  v1 = type metadata accessor for ImagePlaygroundConcept(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  v6 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_concepts;
  swift_beginAccess();
  v7 = *(v0 + v6);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    *&aBlock = MEMORY[0x1E69E7CC0];

    sub_1D2AC7104();
    v10 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_1D2A47698(v10, v4, type metadata accessor for ImagePlaygroundConcept);
      sub_1D2A49C68(0);
      sub_1D2A46794(v4, type metadata accessor for ImagePlaygroundConcept);
      sub_1D2AC70E4();
      sub_1D2AC7114();
      sub_1D2AC7124();
      sub_1D2AC70F4();
      v10 += v11;
      --v8;
    }

    while (v8);

    v9 = aBlock;
  }

  v12 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements;
  *(v5 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements) = v9;

  v13 = *(v5 + v12);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = sub_1D2A575AC;
  v16[4] = 0;
  v16[5] = sub_1D2A2E0A4;
  v16[6] = v14;
  swift_getKeyPath();
  *&aBlock = v5;
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  swift_bridgeObjectRetain_n();

  sub_1D2AC6094();

  v17 = *(v5 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v17)
  {
    v44 = sub_1D2A575AC;
    v45 = 0;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v42 = sub_1D2A44320;
    v43 = &block_descriptor_349;
    v18 = _Block_copy(&aBlock);
    v19 = v17;

    v20 = [v19 remoteObjectProxyWithErrorHandler_];
    _Block_release(v18);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(&v46, v47);
    sub_1D2A206F8(v47, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v21 = v46;
    if (v46)
    {
      sub_1D2A20764(0, &qword_1EC703B30, &off_1E84033C0);
      v22 = sub_1D2AC6D24();
      [v21 setPromptElements_];

      return;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v23 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v24 = sub_1D2AC63B4();
    __swift_project_value_buffer(v24, qword_1EC7040C0);
    v25 = v23;
    v26 = sub_1D2AC6394();
    v27 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40 = v14;
      v30 = v29;
      *v28 = 138412290;
      v31 = v23;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_1D2A17000, v26, v27, "Could not send prompt elements to remote view: %@. May not be an error if the connection is not established yet, will retry.", v28, 0xCu);
      sub_1D2A2E61C(v30, &unk_1EC704400, &unk_1D2ADA9A0);
      v14 = v40;
      MEMORY[0x1D38A8460](v30, -1, -1);
      MEMORY[0x1D38A8460](v28, -1, -1);
    }
  }

  v40 = v14;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1D2A2E6B4;
  *(v33 + 24) = v16;
  swift_getKeyPath();
  *&aBlock = v5;

  sub_1D2AC6094();

  *&aBlock = v5;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v34 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v35 = *(v5 + v34);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v34) = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_1D2A4486C(0, v35[2] + 1, 1, v35);
    *(v5 + v34) = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_1D2A4486C((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1D2A47D3C;
  v39[5] = v33;
  *(v5 + v34) = v35;
  swift_endAccess();
  *&aBlock = v5;
  swift_getKeyPath();
  sub_1D2AC60A4();
}

uint64_t sub_1D2A39D50(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  *(v3 + v6) = a1;

  return a3(v7);
}

uint64_t (*sub_1D2A39DB0(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D2A39E14;
}

uint64_t sub_1D2A39E2C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1D2A39E70()
{
  v1 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sceneIdentifier;
  swift_beginAccess();
  if (*(v0 + v1) <= 1u && *(v0 + v1))
  {
    goto LABEL_7;
  }

  v2 = sub_1D2AC7354();

  if ((v2 & 1) == 0)
  {
    v4 = *(v0 + v1);
    if (v4 != 2)
    {
      v3 = sub_1D2AC7354();
LABEL_8:

      return v3 & 1;
    }

LABEL_7:
    v3 = 1;
    goto LABEL_8;
  }

  v3 = 1;
  return v3 & 1;
}

id ImagePlaygroundViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *ImagePlaygroundViewController.init()()
{
  v0 = objc_allocWithZone(type metadata accessor for ImagePlaygroundViewController(0));
  v1 = sub_1D2A3A180(1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v1;
}

char *sub_1D2A3A180(int a1)
{
  v2 = v1;
  v28 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BD8, &qword_1D2ACA0A8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - v4;
  v6 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController___promptElements] = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_allowedGenerationStyles;
  *&v2[v7] = _s15ImagePlayground0aB5StyleV3allSayACGvgZ_0();
  v8 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_selectedGenerationStyle;
  if (qword_1EE089358 != -1)
  {
    swift_once();
  }

  v31[2] = xmmword_1EE089380;
  v31[3] = unk_1EE089390;
  v31[4] = xmmword_1EE0893A0;
  v31[5] = unk_1EE0893B0;
  v31[0] = xmmword_1EE089360;
  v31[1] = xmmword_1EE089370;
  memmove(&v2[v8], &xmmword_1EE089360, 0x60uLL);
  v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_personalizationPolicy] = 0;
  *&v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sourceImage] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sceneIdentifier] = 0;
  *&v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_privateDelegate] = 0;
  *&v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_resultingAssets] = v6;
  v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sourceImageIsSketch] = 0;
  v9 = &v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_localizedCreateButtonTitle];
  *v9 = 0;
  v9[1] = 0;
  v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_isLoadingRecipe] = 0;
  *&v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_recipe] = 0;
  v10 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_previewAspectRatio;
  sub_1D2A2D244(v31, v30);
  if (qword_1EE089688 != -1)
  {
    swift_once();
  }

  v11 = &v2[v10];
  v12 = *dbl_1EE089698;
  *v11 = qword_1EE089690;
  *(v11 + 8) = v12;
  *&v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_pregeneratedImage] = 0;
  v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageImportPolicy] = 0;
  v13 = &v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_responsibleAuditToken];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v13[32] = 1;
  v14 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageEditionView;
  v15 = type metadata accessor for GPImageEditionView(0);
  v16 = *(*(v15 - 8) + 56);
  v16(&v2[v14], 1, 1, v15);
  v17 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageEditionViewController;
  *&v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageEditionViewController] = 0;
  *&v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_concepts] = v6;
  v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_delayingPresentation] = 0;
  *&v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_delayPresentationDuration] = 0x4008000000000000;
  type metadata accessor for GPHostSideConnectionManager(0);
  swift_allocObject();
  v18 = sub_1D2A5FB60(0, 0, 0, 0);
  *&v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager] = v18;
  type metadata accessor for GPImageEditionView.ViewModel(0);
  v19 = swift_allocObject();
  *(v19 + 16) = 1;
  *(v19 + 32) = 0;
  *(v19 + 24) = 0;

  sub_1D2AC60C4();

  *(v19 + 32) = v18;
  *(v19 + 40) = v28 & 1;
  *&v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_viewModel] = v19;
  v16(v5, 1, 1, v15);
  swift_beginAccess();
  sub_1D2A44E34(v5, &v2[v14]);
  swift_endAccess();
  v20 = *&v2[v17];
  *&v2[v17] = 0;

  v21 = type metadata accessor for ImagePlaygroundViewController(0);
  v29.receiver = v2;
  v29.super_class = v21;
  v22 = objc_msgSendSuper2(&v29, sel_initWithNibName_bundle_, 0, 0);
  v23 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager;
  *(*(*&v22[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager] + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_exportedObject) + 40) = &off_1F4DFB4F0;
  swift_unknownObjectWeakAssign();
  *(*(*&v22[v23] + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_exportedObject) + 24) = &off_1F4DFB520;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v24 = v22;

  sub_1D2A56C24(v25);

  return v24;
}

void sub_1D2A3A634()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_viewModel);
  if (*(v1 + 40) == 1)
  {
    *(v1 + 40) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);

    sub_1D2AC6084();
  }
}

uint64_t sub_1D2A3A764(uint64_t result)
{
  if (*(v1 + 40) == (result & 1))
  {
    *(v1 + 40) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
    sub_1D2AC6084();
  }

  return result;
}

uint64_t sub_1D2A3A8A8()
{
  v1 = objc_opt_self();
  v2 = [v1 currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 6)
  {
    return 2;
  }

  v4 = [v1 currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (!v5)
  {
    return 2;
  }

  v6 = type metadata accessor for ImagePlaygroundViewController(0);
  v10.receiver = v0;
  v10.super_class = v6;
  if (!objc_msgSendSuper2(&v10, sel_modalPresentationStyle))
  {
    return 1;
  }

  v9.receiver = v0;
  v9.super_class = v6;
  if (objc_msgSendSuper2(&v9, sel_modalPresentationStyle) == 5)
  {
    return 1;
  }

  v8.receiver = v0;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_modalPresentationStyle);
}

uint64_t sub_1D2A3AC14()
{
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
  sub_1D2AC6094();

  return *(v0 + 26);
}

uint64_t sub_1D2A3ADB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BD8, &qword_1D2ACA0A8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v35 = &v30 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043C0, &qword_1D2ACA0B0);
  v3 = MEMORY[0x1EEE9AC00](v32);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - v6;
  v8 = type metadata accessor for GPImageEditionView(0);
  v34 = *(v8 - 1);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v33 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  v13 = *&v0[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager];
  v14 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sceneIdentifier;
  swift_beginAccess();
  v15 = v0[v14];
  v30 = v0;
  v31 = v15;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  sub_1D2A2E5B4(v7, v5, &unk_1EC7043C0, &qword_1D2ACA0B0);

  sub_1D2AC6A14();
  sub_1D2A2E61C(v7, &unk_1EC7043C0, &qword_1D2ACA0B0);
  v18 = &v12[v8[9]];
  v19 = &v12[v8[10]];
  *&v12[v8[6]] = v13;
  type metadata accessor for GPImageEditionView.ViewModel(0);
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);

  sub_1D2AC6AD4();
  v12[v8[8]] = v31;
  *v12 = 0;
  *v18 = sub_1D2A44E2C;
  v18[1] = v16;
  sub_1D2A20764(0, &qword_1EC703B48, 0x1E69DCF38);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 0;
  v21 = [ObjCClassFromMetadata appearance];
  [v21 _setUseGlass_];

  sub_1D2A47698(v12, v33, type metadata accessor for GPImageEditionView);
  v22 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BE0, &qword_1D2ACA0B8));
  v23 = sub_1D2AC6704();
  v24 = v35;
  sub_1D2A47698(v12, v35, type metadata accessor for GPImageEditionView);
  (*(v34 + 56))(v24, 0, 1, v8);
  v25 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageEditionView;
  v26 = v30;
  swift_beginAccess();
  sub_1D2A44E34(v24, &v26[v25]);
  swift_endAccess();
  v27 = *&v26[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageEditionViewController];
  *&v26[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageEditionViewController] = v23;
  v28 = v23;

  [v26 gp:v28 addChildViewController:?];
  return sub_1D2A46794(v12, type metadata accessor for GPImageEditionView);
}

void sub_1D2A3B260(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong _endDelayingPresentation];
    v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_delayingPresentation] = 0;
  }
}

id sub_1D2A3B310()
{
  v1 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_delayingPresentation;
  if ((v0[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_delayingPresentation] & 1) == 0)
  {
    aBlock[4] = sub_1D2A3B454;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D2A3B45C;
    aBlock[3] = &block_descriptor_309;
    v2 = _Block_copy(aBlock);
    [v0 _beginDelayingPresentation_cancellationHandler_];
    _Block_release(v2);
    v0[v1] = 1;
    [v0 loadViewIfNeeded];
    v3 = *&v0[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageEditionViewController];
    if (v3)
    {
      v4 = v3;
      v5 = [v4 view];
      [v5 setNeedsLayout];
      [v5 layoutIfNeeded];
    }
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for ImagePlaygroundViewController(0);
  return objc_msgSendSuper2(&v7, sel_loadViewIfNeeded);
}

uint64_t sub_1D2A3B45C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

id sub_1D2A3B4F4(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BD8, &qword_1D2ACA0A8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for ImagePlaygroundViewController(0);
  v15.receiver = v1;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, sel_viewDidDisappear_, a1 & 1);
  v7 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageEditionViewController;
  v8 = *&v1[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageEditionViewController];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  [v9 willMoveToParentViewController_];
  result = [v9 view];
  if (result)
  {
    v11 = result;
    [result removeFromSuperview];

    [v9 removeFromParentViewController];
    [v1 removeChildViewController_];

    v8 = *&v1[v7];
LABEL_4:
    *&v1[v7] = 0;

    v12 = type metadata accessor for GPImageEditionView(0);
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    v13 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageEditionView;
    swift_beginAccess();
    sub_1D2A44E34(v5, &v1[v13]);
    swift_endAccess();
    return [v1 setView_];
  }

  __break(1u);
  return result;
}

id ImagePlaygroundViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D2AC6BF4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id ImagePlaygroundViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImagePlaygroundViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *ImagePlaygroundViewController.__allocating_init(sceneIdentifier:ready:)(char *a1, int a2)
{
  v3 = *a1;
  v4 = objc_allocWithZone(type metadata accessor for ImagePlaygroundViewController(0));
  v5 = sub_1D2A3A180(a2);
  v6 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sceneIdentifier;
  swift_beginAccess();
  v5[v6] = v3;
  return v5;
}

Swift::Void __swiftcall ImagePlaygroundViewController.didStageAssetWithIdentifier(_:)(Swift::String a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  v3 = sub_1D2AC6BF4();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = sub_1D2A5788C;
  v6[4] = 0;
  v6[5] = sub_1D2A44EA4;
  v6[6] = v4;
  swift_getKeyPath();
  *&aBlock = v2;
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  v7 = v3;

  sub_1D2AC6094();

  v8 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v8)
  {
    v35 = sub_1D2A5788C;
    v36 = 0;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v33 = sub_1D2A44320;
    v34 = &block_descriptor_150;
    v9 = _Block_copy(&aBlock);
    v10 = v8;

    v11 = [v10 remoteObjectProxyWithErrorHandler_];
    _Block_release(v9);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(&v37, v38);
    sub_1D2A206F8(v38, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v12 = v37;
    if (v37)
    {
      [v37 didStageAssetWithIdentifier_];

      return;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v13 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v14 = sub_1D2AC63B4();
    __swift_project_value_buffer(v14, qword_1EC7040C0);
    v15 = v13;
    v16 = sub_1D2AC6394();
    v17 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = v7;
      v20 = swift_slowAlloc();
      *v18 = 138412290;
      v21 = v13;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1D2A17000, v16, v17, "Could not send staged asset identifier to remote view: %@. May not be an error if the connection is not established yet, will retry.", v18, 0xCu);
      sub_1D2A2E61C(v20, &unk_1EC704400, &unk_1D2ADA9A0);
      v23 = v20;
      v7 = v19;
      MEMORY[0x1D38A8460](v23, -1, -1);
      MEMORY[0x1D38A8460](v18, -1, -1);
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = sub_1D2A2E6B4;
  *(v24 + 24) = v6;
  swift_getKeyPath();
  *&aBlock = v2;

  sub_1D2AC6094();

  *&aBlock = v2;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v25 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v26 = *(v2 + v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v25) = v26;
  v28 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = sub_1D2A4486C(0, v26[2] + 1, 1, v26);
    *(v2 + v25) = v26;
  }

  v30 = v26[2];
  v29 = v26[3];
  if (v30 >= v29 >> 1)
  {
    v26 = sub_1D2A4486C((v29 > 1), v30 + 1, 1, v26);
  }

  v26[2] = v30 + 1;
  v31 = &v26[2 * v30];
  v31[4] = sub_1D2A47D3C;
  v31[5] = v24;
  *(v2 + v25) = v26;
  swift_endAccess();
  *&aBlock = v2;
  swift_getKeyPath();
  sub_1D2AC60A4();
}

Swift::Void __swiftcall ImagePlaygroundViewController.didUnstageAssetWithIdentifier(_:)(Swift::String a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  v3 = sub_1D2AC6BF4();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = sub_1D2A57974;
  v6[4] = 0;
  v6[5] = sub_1D2A44EAC;
  v6[6] = v4;
  swift_getKeyPath();
  *&aBlock = v2;
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  v7 = v3;

  sub_1D2AC6094();

  v8 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v8)
  {
    v35 = sub_1D2A57974;
    v36 = 0;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v33 = sub_1D2A44320;
    v34 = &block_descriptor_165;
    v9 = _Block_copy(&aBlock);
    v10 = v8;

    v11 = [v10 remoteObjectProxyWithErrorHandler_];
    _Block_release(v9);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(&v37, v38);
    sub_1D2A206F8(v38, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v12 = v37;
    if (v37)
    {
      [v37 didUnstageAssetWithIdentifier_];

      return;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v13 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v14 = sub_1D2AC63B4();
    __swift_project_value_buffer(v14, qword_1EC7040C0);
    v15 = v13;
    v16 = sub_1D2AC6394();
    v17 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = v7;
      v20 = swift_slowAlloc();
      *v18 = 138412290;
      v21 = v13;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1D2A17000, v16, v17, "Could not send unstaged asset identifier to remote view: %@. May not be an error if the connection is not established yet, will retry.", v18, 0xCu);
      sub_1D2A2E61C(v20, &unk_1EC704400, &unk_1D2ADA9A0);
      v23 = v20;
      v7 = v19;
      MEMORY[0x1D38A8460](v23, -1, -1);
      MEMORY[0x1D38A8460](v18, -1, -1);
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = sub_1D2A2E6B4;
  *(v24 + 24) = v6;
  swift_getKeyPath();
  *&aBlock = v2;

  sub_1D2AC6094();

  *&aBlock = v2;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v25 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v26 = *(v2 + v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v25) = v26;
  v28 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = sub_1D2A4486C(0, v26[2] + 1, 1, v26);
    *(v2 + v25) = v26;
  }

  v30 = v26[2];
  v29 = v26[3];
  if (v30 >= v29 >> 1)
  {
    v26 = sub_1D2A4486C((v29 > 1), v30 + 1, 1, v26);
  }

  v26[2] = v30 + 1;
  v31 = &v26[2 * v30];
  v31[4] = sub_1D2A47D3C;
  v31[5] = v24;
  *(v2 + v25) = v26;
  swift_endAccess();
  *&aBlock = v2;
  swift_getKeyPath();
  sub_1D2AC60A4();
}

Swift::Void __swiftcall ImagePlaygroundViewController.didDismissPickerWithStagedAssets(_:)(Swift::OpaquePointer a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  v3 = sub_1D2A3CBB4(a1._rawValue);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = sub_1D2A578BC;
  v6[4] = 0;
  v6[5] = sub_1D2A44EB4;
  v6[6] = v4;
  swift_getKeyPath();
  *&aBlock = v2;
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);

  sub_1D2AC6094();

  v7 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v7)
  {
    v32 = sub_1D2A578BC;
    v33 = 0;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v30 = sub_1D2A44320;
    v31 = &block_descriptor_180;
    v8 = _Block_copy(&aBlock);
    v9 = v7;

    v10 = [v9 remoteObjectProxyWithErrorHandler_];
    _Block_release(v8);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(&v34, v35);
    sub_1D2A206F8(v35, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v11 = v34;
    if (v34)
    {
      sub_1D2A20764(0, &qword_1EC704410, 0x1E696AEC0);
      v12 = sub_1D2AC6D24();
      [v11 didDismissPickerWithStagedAssets_];

      return;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v13 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v14 = sub_1D2AC63B4();
    __swift_project_value_buffer(v14, qword_1EC7040C0);
    v15 = v13;
    v16 = sub_1D2AC6394();
    v17 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v13;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1D2A17000, v16, v17, "Could not send dismissal of picker with staged asset identifiers to remote view: %@. May not be an error if the connection is not established yet, will retry.", v18, 0xCu);
      sub_1D2A2E61C(v19, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v19, -1, -1);
      MEMORY[0x1D38A8460](v18, -1, -1);
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = sub_1D2A2E6B4;
  *(v22 + 24) = v6;
  swift_getKeyPath();
  *&aBlock = v2;

  sub_1D2AC6094();

  *&aBlock = v2;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v23 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v24 = *(v2 + v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v23) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_1D2A4486C(0, v24[2] + 1, 1, v24);
    *(v2 + v23) = v24;
  }

  v27 = v24[2];
  v26 = v24[3];
  if (v27 >= v26 >> 1)
  {
    v24 = sub_1D2A4486C((v26 > 1), v27 + 1, 1, v24);
  }

  v24[2] = v27 + 1;
  v28 = &v24[2 * v27];
  v28[4] = sub_1D2A47D3C;
  v28[5] = v22;
  *(v2 + v23) = v24;
  swift_endAccess();
  *&aBlock = v2;
  swift_getKeyPath();
  sub_1D2AC60A4();
}

uint64_t sub_1D2A3CBB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    sub_1D2AC7104();
    v4 = a1 + 40;
    do
    {

      sub_1D2AC6BF4();

      sub_1D2AC70E4();
      sub_1D2AC7114();
      sub_1D2AC7124();
      sub_1D2AC70F4();
      v4 += 16;
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t sub_1D2A3CC78()
{
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](0);
  return sub_1D2AC7484();
}

uint64_t sub_1D2A3CCBC(uint64_t a1)
{
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](0);
  return sub_1D2AC7484();
}

uint64_t sub_1D2A3CD0C@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1D2AC6494();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - v12;
  isStackAllocationSafe = strlen(a1);
  v15 = isStackAllocationSafe + 1;
  if (__OFADD__(isStackAllocationSafe, 1))
  {
    __break(1u);
  }

  else
  {
    if (v15 < 0)
    {
      __break(1u);
    }

    if (v15 <= 1024)
    {
      goto LABEL_4;
    }
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (!isStackAllocationSafe)
  {
    v19 = swift_slowAlloc();
    sub_1D2A3CF40(v19, a1, v15, a2, a3);
    return MEMORY[0x1D38A8460](v19, -1, -1);
  }

LABEL_4:
  v20[0] = a3;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  sub_1D2A3CF40(v20 - v16, a1, v15, a2, v11);
  if (v3)
  {
    return swift_willThrow();
  }

  v18 = *(v8 + 32);
  v18(v13, v11, v7);
  return (v18)(v20[0], v13, v7);
}

uint64_t sub_1D2A3CF40@<X0>(char *a1@<X0>, const char *a2@<X2>, size_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v50 = a2;
  v51 = a3;
  v49 = a5;
  v52[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1D2AC5E74();
  v44 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2AC6494();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v42 - v14;
  v16 = sub_1D2AC5EF4();
  v45 = *(v16 - 8);
  v46 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v43 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D2AC5D04();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (qword_1EC7035A0 == -1)
    {
LABEL_9:
      v28 = sub_1D2AC63B4();
      __swift_project_value_buffer(v28, qword_1EC7040C0);
      v29 = sub_1D2AC6394();
      v30 = sub_1D2AC6E94();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1D2A17000, v29, v30, "Could not get template", v31, 2u);
        MEMORY[0x1D38A8460](v31, -1, -1);
      }

      sub_1D2A46178();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_21:
    swift_once();
    goto LABEL_9;
  }

  strlcpy(a1, v50, v51);
  if (a4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (mkstemps(a1, a4) < 0)
  {
    MEMORY[0x1D38A6810]();
    result = sub_1D2AC63C4();
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v52[0]) = result;
      sub_1D2A48A1C(MEMORY[0x1E69E7CC0]);
      sub_1D2A44DA4(&qword_1EC703C20, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      sub_1D2AC5E54();
      sub_1D2AC5CF4();
      (*(v19 + 8))(v21, v18);
      return swift_willThrow();
    }
  }

  else
  {
    v22 = sub_1D2AC63F4();
    if ((v22 & 0x100000000) != 0)
    {
      LODWORD(v52[0]) = v22;
      v33 = v22;
      sub_1D2A461E8();
      swift_willThrowTypedImpl();
      result = swift_allocError();
      *v34 = v33;
      return result;
    }

    v23 = v49;
    MEMORY[0x1D38A6880](a1);
    v25 = v47;
    v24 = v48;
    (*(v47 + 16))(v12, v23, v48);
    (*(v44 + 104))(v9, *MEMORY[0x1E6968F68], v7);
    sub_1D2A3D5DC(v12, v9, v15);
    v26 = v45;
    v27 = v46;
    if ((*(v45 + 48))(v15, 1, v46) == 1)
    {
      sub_1D2A2E61C(v15, &qword_1EC7039C8, &unk_1D2AC9900);
      sub_1D2A46178();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      v35 = v43;
      (*(v26 + 32))();
      v36 = [objc_opt_self() defaultManager];
      v37 = sub_1D2AC5EA4();
      v52[0] = 0;
      v38 = [v36 removeItemAtURL:v37 error:v52];

      if (v38)
      {
        v39 = *(v26 + 8);
        v40 = v52[0];
        return v39(v35, v27);
      }

      v41 = v52[0];
      sub_1D2AC5E64();

      swift_willThrow();
      (*(v26 + 8))(v35, v27);
    }

    return (*(v25 + 8))(v23, v24);
  }

  return result;
}

uint64_t sub_1D2A3D5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v26 = v23 - v6;
  v7 = sub_1D2AC5E74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2AC6494();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  (*(v12 + 16))(v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = sub_1D2AC6CB4();
  if (v15)
  {
    v16 = *(v8 + 16);
    v23[1] = v14;
    v25 = v7;
    v16(v10, a2, v7);
    v17 = sub_1D2AC5EF4();
    v23[0] = a2;
    v18 = v17;
    v19 = *(*(v17 - 8) + 56);
    v24 = a1;
    v20 = v27;
    v19(v26, 1, 1, v17);
    sub_1D2AC5EE4();
    (*(v8 + 8))(v23[0], v25);
    (*(v12 + 8))(v24, v11);
    return (v19)(v20, 0, 1, v18);
  }

  else
  {
    (*(v8 + 8))(a2, v7);
    (*(v12 + 8))(a1, v11);
    v22 = sub_1D2AC5EF4();
    return (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
  }
}

Swift::Void __swiftcall ImagePlaygroundViewController.editorDidGenerateAssets(_:)(Swift::OpaquePointer a1)
{
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_resultingAssets;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_1D2A3D958();
}

void sub_1D2A3D958()
{
  v2 = sub_1D2AC5EF4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v56 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v56 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v56 - v13;
  v15 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_resultingAssets;
  swift_beginAccess();
  v16 = *(v0 + v15);
  if (!(v16 >> 62))
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_3:
    if ((v16 & 0xC000000000000001) != 0)
    {

      v1 = MEMORY[0x1D38A74D0](0, v16);
    }

    else
    {
      if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        swift_once();
        v20 = sub_1D2AC63B4();
        __swift_project_value_buffer(v20, qword_1EC7040C0);
        (*(v3 + 16))(v6, v14, v2);
        v21 = v16;
        v22 = sub_1D2AC6394();
        v23 = sub_1D2AC6E94();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v63[0] = v59;
          *v24 = 136315394;
          sub_1D2A44DA4(&qword_1EC703AA0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
          LODWORD(v57) = v23;
          v25 = sub_1D2AC7324();
          v56 = v22;
          v27 = v26;
          v28 = *(v3 + 8);
          v28(v6, v2);
          v29 = sub_1D2ABAFCC(v25, v27, v63);

          *(v24 + 4) = v29;
          *(v24 + 12) = 2112;
          v30 = v16;
          v31 = _swift_stdlib_bridgeErrorToNSError();
          *(v24 + 14) = v31;
          v32 = v58;
          *v58 = v31;
          v33 = v56;
          _os_log_impl(&dword_1D2A17000, v56, v57, "Could not create temporary copy of %s: %@", v24, 0x16u);
          sub_1D2A2E61C(v32, &unk_1EC704400, &unk_1D2ADA9A0);
          MEMORY[0x1D38A8460](v32, -1, -1);
          v34 = v59;
          __swift_destroy_boxed_opaque_existential_0(v59);
          MEMORY[0x1D38A8460](v34, -1, -1);
          v35 = v24;
          v36 = v28;
          MEMORY[0x1D38A8460](v35, -1, -1);
        }

        else
        {

          v36 = *(v3 + 8);
          v36(v6, v2);
        }

        v48 = v61;
        v49 = [Strong respondsToSelector_];
        v50 = v60;
        if (v49)
        {
          [swift_unknownObjectRetain() imagePlaygroundViewControllerDidCancel_];

          swift_unknownObjectRelease();
          if (v50)
          {
            goto LABEL_29;
          }
        }

        else
        {

          if (v50)
          {
            goto LABEL_29;
          }
        }

        goto LABEL_24;
      }

      v1 = *(v16 + 32);
    }

    v17 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_privateDelegate;
    swift_beginAccess();
    if (*(v0 + v17))
    {
      [swift_unknownObjectRetain() imageEditionViewController:v0 didCreate:v1];
LABEL_8:
      swift_unknownObjectRelease();
LABEL_9:

      return;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_9;
    }

    v61 = v0;
    v18 = [v1 imageURLWrapper];
    v19 = [v18 url];

    sub_1D2AC5EC4();
    v60 = sub_1D2AC5ED4();
    sub_1D2A2F3B0(v12);
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v37 = sub_1D2AC63B4();
    __swift_project_value_buffer(v37, qword_1EC7040C0);
    (*(v3 + 16))(v9, v12, v2);
    v38 = sub_1D2AC6394();
    v39 = sub_1D2AC6E74();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v57 = v40;
      v58 = swift_slowAlloc();
      v63[0] = v58;
      *v40 = 136315138;
      sub_1D2A44DA4(&qword_1EC703AA0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      LODWORD(v56) = v39;
      v41 = sub_1D2AC7324();
      v43 = v42;
      v59 = *(v3 + 8);
      (v59)(v9, v2);
      v44 = sub_1D2ABAFCC(v41, v43, v63);

      v45 = v57;
      *(v57 + 1) = v44;
      v46 = v45;
      _os_log_impl(&dword_1D2A17000, v38, v56, "Copied generated image to app sandbox at %s", v45, 0xCu);
      v47 = v58;
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x1D38A8460](v47, -1, -1);
      MEMORY[0x1D38A8460](v46, -1, -1);
    }

    else
    {

      v59 = *(v3 + 8);
      (v59)(v9, v2);
    }

    v51 = Strong;
    v52 = sub_1D2AC5EA4();
    v53 = v61;
    [v51 imagePlaygroundViewController:v61 didCreateImageAt:v52];

    if ([v51 respondsToSelector_])
    {
      type metadata accessor for GPExportablePhotoAsset(0);

      v54 = sub_1D2AC6D24();

      [v51 imagePlaygroundViewController:v53 didSelectAssets:v54];
    }

    v55 = v12;
    v36 = v59;
    (v59)(v55, v2);
    if (v60)
    {
LABEL_29:
      sub_1D2AC5EB4();
      swift_unknownObjectRelease();

      v36(v14, v2);
      return;
    }

LABEL_24:
    v36(v14, v2);
    goto LABEL_8;
  }

  if (sub_1D2AC7024())
  {
    goto LABEL_3;
  }
}

Swift::Void __swiftcall ImagePlaygroundViewController.editorDidCancel(requiresShowingGrid:)(Swift::Bool requiresShowingGrid)
{
  v2 = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (requiresShowingGrid && [Strong respondsToSelector_])
    {
      if ([v5 respondsToSelector_])
      {
        [v5 imageGenerationViewControllerWantsToShowGrid_];
      }

      goto LABEL_28;
    }

    v6 = sub_1D2AC6064();
    if ([v5 respondsToSelector_] && (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0) && (v8 = objc_msgSend(v7, sel_methodForSelector_, v6)) != 0)
    {
      v9 = v8;
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v10 = sub_1D2AC63B4();
      __swift_project_value_buffer(v10, qword_1EC7040C0);
      v11 = sub_1D2AC6394();
      v12 = sub_1D2AC6E84();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_21;
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "calling imageEditionViewControllerDidCancel";
    }

    else
    {
      v6 = sub_1D2AC6064();
      if (![v5 respondsToSelector_] || (objc_opt_self(), (v15 = swift_dynamicCastObjCClass()) == 0) || (v16 = objc_msgSend(v15, sel_methodForSelector_, v6)) == 0)
      {
        if (qword_1EC7035A0 != -1)
        {
          swift_once();
        }

        v18 = sub_1D2AC63B4();
        __swift_project_value_buffer(v18, qword_1EC7040C0);
        v19 = sub_1D2AC6394();
        v20 = sub_1D2AC6E84();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_1D2A17000, v19, v20, "calling imagePlaygroundViewControllerDidCancel ", v21, 2u);
          MEMORY[0x1D38A8460](v21, -1, -1);
        }

        if ([v5 respondsToSelector_])
        {
          [v5 imagePlaygroundViewControllerDidCancel_];
        }

        goto LABEL_28;
      }

      v9 = v16;
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v17 = sub_1D2AC63B4();
      __swift_project_value_buffer(v17, qword_1EC7040C0);
      v11 = sub_1D2AC6394();
      v12 = sub_1D2AC6E84();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_21;
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "calling imageGenerationViewControllerDidCancel ";
    }

    _os_log_impl(&dword_1D2A17000, v11, v12, v14, v13, 2u);
    MEMORY[0x1D38A8460](v13, -1, -1);
LABEL_21:

    v9(v5, v6, v2);
LABEL_28:
    swift_unknownObjectRelease();
  }

  v22 = (v2 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_resultingAssets);
  swift_beginAccess();
  *v22 = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D2A3E618(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_viewModel);
  if (*(v2 + 24) == (result & 1))
  {
    *(v2 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);

    sub_1D2AC6084();
  }

  return result;
}

uint64_t sub_1D2A3E748(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_viewModel);
  if (*(v2 + 26) == (result & 1))
  {
    *(v2 + 26) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);

    sub_1D2AC6084();
  }

  return result;
}

uint64_t sub_1D2A3E878(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_viewModel);
  if (*(v2 + 27) == (result & 1))
  {
    *(v2 + 27) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);

    sub_1D2AC6084();
  }

  return result;
}

void sub_1D2A3E9A8(uint64_t a1)
{
  type metadata accessor for GPExportablePhotoAsset(0);
  v2 = sub_1D2AC6D24();
  [v1 editorDidGenerateAssets_];
}

uint64_t sub_1D2A3EA28(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_resultingAssets;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_viewModel);
  if (a1 >> 62)
  {
    result = sub_1D2AC7024();
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((*(v4 + 25) ^ (result != 0)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);

    sub_1D2AC6084();
  }

  else
  {
    *(v4 + 25) = result != 0;
  }

  return result;
}

uint64_t sub_1D2A3EBC4()
{
  v3 = v0;
  v4 = *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_viewModel);
  swift_getKeyPath();
  *&aBlock = v4;
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);

  sub_1D2AC6094();

  v5 = *(v4 + 25);

  if (v5 == 1)
  {
    v6 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_resultingAssets;
    swift_beginAccess();
    v7 = *(v0 + v6);
    if (v7 >> 62)
    {
      v8 = sub_1D2AC7024();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      *&aBlock = MEMORY[0x1E69E7CC0];

      p_aBlock = &aBlock;
      sub_1D2A2C9A8(0, v8 & ~(v8 >> 63), 0);
      if (v8 < 0)
      {
        __break(1u);
        goto LABEL_34;
      }

      v11 = 0;
      v9 = aBlock;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1D38A74D0](v11, v7);
        }

        else
        {
          v12 = *(v7 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = [v12 identifier];
        v15 = sub_1D2AC6C24();
        v17 = v16;

        *&aBlock = v9;
        v19 = *(v9 + 16);
        v18 = *(v9 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1D2A2C9A8((v18 > 1), v19 + 1, 1);
          v9 = aBlock;
        }

        ++v11;
        *(v9 + 16) = v19 + 1;
        v20 = v9 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
      }

      while (v8 != v11);
    }

    v1 = *(v3 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
    v23 = sub_1D2A3CBB4(v9);

    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = sub_1D2A578BC;
    v26[4] = 0;
    v26[5] = sub_1D2A47D4C;
    v26[6] = v24;
    swift_getKeyPath();
    *&aBlock = v1;
    sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);

    sub_1D2AC6094();

    v27 = *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v27)
    {
      v54 = sub_1D2A578BC;
      v55 = 0;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v52 = sub_1D2A44320;
      v53 = &block_descriptor_331;
      v28 = _Block_copy(&aBlock);
      v29 = v27;

      v30 = [v29 remoteObjectProxyWithErrorHandler_];
      _Block_release(v28);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(&v56, v57);
      sub_1D2A206F8(v57, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v31 = v56;
      if (v56)
      {
        sub_1D2A20764(0, &qword_1EC704410, 0x1E696AEC0);
        v32 = sub_1D2AC6D24();
        [v31 didDismissPickerWithStagedAssets_];

LABEL_30:
        sub_1D2A3D958();
        goto LABEL_31;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v33 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v34 = sub_1D2AC63B4();
      __swift_project_value_buffer(v34, qword_1EC7040C0);
      v35 = v33;
      v36 = sub_1D2AC6394();
      v37 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = v3;
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = v33;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_1D2A17000, v36, v37, "Could not send dismissal of picker with staged asset identifiers to remote view: %@. May not be an error if the connection is not established yet, will retry.", v39, 0xCu);
        sub_1D2A2E61C(v40, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v40, -1, -1);
        v43 = v39;
        v3 = v38;
        MEMORY[0x1D38A8460](v43, -1, -1);
      }
    }

    v2 = swift_allocObject();
    *(v2 + 16) = sub_1D2A2E6B4;
    *(v2 + 24) = v26;
    swift_getKeyPath();
    *&aBlock = v1;

    sub_1D2AC6094();

    *&aBlock = v1;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v6 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    p_aBlock = *(v1 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v6) = p_aBlock;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_27:
      v46 = *(p_aBlock + 2);
      v45 = *(p_aBlock + 3);
      if (v46 >= v45 >> 1)
      {
        p_aBlock = sub_1D2A4486C((v45 > 1), v46 + 1, 1, p_aBlock);
      }

      *(p_aBlock + 2) = v46 + 1;
      v47 = &p_aBlock[v46];
      *(v47 + 4) = sub_1D2A47D3C;
      *(v47 + 5) = v2;
      *(v1 + v6) = p_aBlock;
      swift_endAccess();
      *&aBlock = v1;
      swift_getKeyPath();
      sub_1D2AC60A4();

      goto LABEL_30;
    }

LABEL_34:
    p_aBlock = sub_1D2A4486C(0, *(p_aBlock + 2) + 1, 1, p_aBlock);
    *(v1 + v6) = p_aBlock;
    goto LABEL_27;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v22 imagePlaygroundViewControllerDidCancel_];
    }

    swift_unknownObjectRelease();
  }

LABEL_31:
  v48 = MEMORY[0x1E69E7CC0];
  v49 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_resultingAssets;
  swift_beginAccess();
  *(v3 + v49) = v48;
}

uint64_t sub_1D2A3F3FC()
{
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
  sub_1D2AC6094();

  return *(v0 + 25);
}

uint64_t sub_1D2A3F4A4()
{
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
  sub_1D2AC6094();

  return *(v0 + 16);
}

uint64_t sub_1D2A3F544@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
  sub_1D2AC6094();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1D2A3F5EC(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
    sub_1D2AC6084();
  }

  return result;
}

uint64_t sub_1D2A3F6F0()
{
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
  sub_1D2AC6094();

  return *(v0 + 24);
}

uint64_t sub_1D2A3F7A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
  sub_1D2AC6094();

  *a2 = *(v3 + 26);
  return result;
}

uint64_t sub_1D2A3F878()
{
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
  sub_1D2AC6094();

  return *(v0 + 27);
}

uint64_t sub_1D2A3F920()
{
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
  sub_1D2AC6094();
}

uint64_t sub_1D2A3F9C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
  sub_1D2AC6094();

  *a2 = *(v3 + 32);
}

uint64_t sub_1D2A3FA70(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
  sub_1D2AC6084();
}

uint64_t sub_1D2A3FB3C()
{
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
  sub_1D2AC6094();

  return *(v0 + 40);
}

uint64_t sub_1D2A3FBDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
  sub_1D2AC6094();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1D2A3FC84(uint64_t a1, char a2)
{
  *(v2 + 16) = 1;
  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  sub_1D2AC60C4();

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return v2;
}

uint64_t sub_1D2A3FCE4()
{
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
  sub_1D2AC6094();

  if (*(v0 + 16) == 1)
  {
    swift_getKeyPath();
    sub_1D2AC6094();

    v1 = 24;
  }

  else
  {
    swift_getKeyPath();
    sub_1D2AC6094();

    v1 = 25;
  }

  return *(v0 + v1);
}

uint64_t sub_1D2A3FE08()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
  sub_1D2AC6094();

  v2 = *(v0 + 16);
  swift_getKeyPath();
  if (v2 == 1)
  {
    sub_1D2AC6094();

    if (!*(v1 + 32))
    {
      return result;
    }

    sub_1D2A5CE70(1);
  }

  else
  {
    sub_1D2AC6094();

    if (!*(v1 + 32))
    {
      return result;
    }

    sub_1D2A5C340();
  }
}

uint64_t sub_1D2A3FF5C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
  sub_1D2AC6094();

  v2 = *(v0 + 16);
  swift_getKeyPath();
  if (v2 == 1)
  {
    sub_1D2AC6094();

    if (!*(v1 + 32))
    {
      return result;
    }

    sub_1D2A57EF0();
  }

  else
  {
    sub_1D2AC6094();

    if (!*(v1 + 32))
    {
      return result;
    }

    sub_1D2A5C340();
  }
}

uint64_t sub_1D2A400A4()
{

  v1 = OBJC_IVAR____TtCV15ImagePlayground18GPImageEditionView9ViewModel___observationRegistrar;
  v2 = sub_1D2AC60D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D2A40148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = sub_1D2AC6564();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v36 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D2AC66C4();
  v5 = *(v4 - 8);
  v34 = v4;
  v35 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GPImageEditionView(0);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2AC64D4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D58, &qword_1D2ACA480);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D50, &qword_1D2ACA478);
  v18 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v20 = &v32 - v19;
  sub_1D2AC64B4();
  sub_1D2A47698(a1, v10, type metadata accessor for GPImageEditionView);
  v21 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v22 = swift_allocObject();
  sub_1D2A467FC(v10, v22 + v21);
  MEMORY[0x1D38A6E90](v13, sub_1D2A470AC, v22);
  sub_1D2AC66B4();
  v23 = sub_1D2A2DB64(&qword_1EC703D60, &qword_1EC703D58, &qword_1D2ACA480, MEMORY[0x1E697D680]);
  v24 = sub_1D2A44DA4(&qword_1EC703D68, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  v25 = v34;
  sub_1D2AC6924();
  (*(v35 + 8))(v7, v25);
  (*(v15 + 8))(v17, v14);
  v26 = v36;
  sub_1D2AC6554();
  sub_1D2AC6594();
  v40 = v14;
  v41 = v25;
  v42 = v23;
  v43 = v24;
  swift_getOpaqueTypeConformance2();
  v27 = v38;
  v28 = v33;
  sub_1D2AC6964();
  (*(v37 + 8))(v26, v39);
  (*(v18 + 8))(v20, v28);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D40, &qword_1D2ACA470);
  v31 = (v27 + *(result + 36));
  *v31 = KeyPath;
  v31[1] = 0;
  return result;
}

uint64_t sub_1D2A4064C()
{
  v0 = sub_1D2AC6354();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE089308 != -1)
  {
    swift_once();
  }

  v4 = sub_1D2AC6384();
  __swift_project_value_buffer(v4, qword_1EE089310);
  sub_1D2AC6344();
  v5 = sub_1D2AC6364();
  v6 = sub_1D2AC6EF4();
  if (sub_1D2AC6FA4())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_1D2AC6334();
    _os_signpost_emit_with_name_impl(&dword_1D2A17000, v5, v6, v8, "GenerationDismissed", "", v7, 2u);
    MEMORY[0x1D38A8460](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  type metadata accessor for GPImageEditionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BF0, &qword_1D2ACA268);
  sub_1D2AC6AB4();
  sub_1D2A3FE08();
}

uint64_t sub_1D2A40824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703CD0, &qword_1D2ACA3E8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v30 - v6;
  v7 = sub_1D2AC5DB4();
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E00, &qword_1D2ACA558);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_1D2AC6BE4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v39 = sub_1D2AC5DD4();
  v31 = *(v39 - 8);
  v12 = MEMORY[0x1EEE9AC00](v39);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v33 = &v30 - v15;
  static DeviceClass.current.getter(&v42);
  v37 = v5;
  v38 = v4;
  v35 = a1;
  v36 = a2;
  if (v42 <= 1u && !v42)
  {
    sub_1D2AC6BD4();
    if (qword_1EC703630 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  sub_1D2AC6BD4();
  if (qword_1EC703630 != -1)
  {
LABEL_7:
    swift_once();
  }

LABEL_6:
  v16 = qword_1EC728B78;
  v17 = sub_1D2AC6034();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v40 = MEMORY[0x1E69E7CC0];
  sub_1D2A44DA4(&qword_1EC703E08, MEMORY[0x1E69686B0], MEMORY[0x1E69686B8]);
  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E10, &unk_1D2ACA560);
  sub_1D2A2DB64(&qword_1EC703E18, &qword_1EC703E10, &unk_1D2ACA560, MEMORY[0x1E69E6328]);
  sub_1D2AC7004();
  sub_1D2AC5DC4();
  v19 = v31;
  v20 = v33;
  v21 = (*(v31 + 32))(v33, v14, v39);
  MEMORY[0x1EEE9AC00](v21);
  v22 = v34;
  v23 = sub_1D2AC67B4();
  v32 = &v30;
  MEMORY[0x1EEE9AC00](v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703CD8, &qword_1D2ACA3F0);
  sub_1D2A2DB64(&qword_1EC703CE0, &qword_1EC703CD0, &qword_1D2ACA3E8, MEMORY[0x1E697C7C8]);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703CE8, &qword_1D2ACA3F8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703CF0, &qword_1D2ACA400);
  v26 = sub_1D2A2DB64(&qword_1EC703CF8, &qword_1EC703CF0, &qword_1D2ACA400, MEMORY[0x1E697BEF0]);
  v40 = v25;
  v41 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v24;
  v41 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v28 = v38;
  sub_1D2AC69D4();
  (*(v37 + 8))(v22, v28);
  return (*(v19 + 8))(v20, v39);
}

uint64_t sub_1D2A41004@<X0>(uint64_t a1@<X8>)
{
  sub_1D2AC66D4();
  if (qword_1EC703630 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC728B78;
  v3 = sub_1D2AC68E4();
  v5 = v4;
  v7 = v6;
  sub_1D2AC68C4();
  v8 = sub_1D2AC68D4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1D2A470D4(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_1D2A41154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D2AC5DD4();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  result = sub_1D2AC68F4();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_1D2A4122C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v3 = sub_1D2AC6774();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703CF0, &qword_1D2ACA400);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703CE8, &qword_1D2ACA3F8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - v10;
  sub_1D2AC6744();
  v15[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D40, &qword_1D2ACA470);
  sub_1D2A4689C();
  sub_1D2AC64E4();
  v12 = sub_1D2A2DB64(&qword_1EC703CF8, &qword_1EC703CF0, &qword_1D2ACA400, MEMORY[0x1E697BEF0]);
  MEMORY[0x1D38A6BC0](v7, v4, v12);
  (*(v5 + 8))(v7, v4);
  v15[6] = v4;
  v15[7] = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1D38A6BC0](v11, v8, OpaqueTypeConformance2);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1D2A414C0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GPImageEditionView(0);
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = sub_1D2AC67D4();
  v95 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v111 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043C0, &qword_1D2ACA0B0);
  v8 = MEMORY[0x1EEE9AC00](v93);
  v92 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v90 = &v78 - v10;
  v91 = type metadata accessor for GenerativePlaygroundRemoteView(0);
  MEMORY[0x1EEE9AC00](v91);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703C90, &qword_1D2ACA3C0);
  v13 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v94 = &v78 - v14;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703C88, &qword_1D2ACA3B8);
  v98 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v96 = &v78 - v15;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703C80, &qword_1D2ACA3B0);
  v100 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v99 = &v78 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703C78, &qword_1D2ACA3A8);
  v105 = *(v17 - 8);
  v106 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v102 = &v78 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D00, &qword_1D2ACA408);
  v107 = *(v19 - 8);
  v108 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v103 = &v78 - v20;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703C68, &qword_1D2ACA3A0);
  MEMORY[0x1EEE9AC00](v109);
  v110 = &v78 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D08, &qword_1D2ACA410);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v78 - v25;
  v27 = *(v1 + v3[6]);
  if (v27)
  {
    v82 = v13;
    v28 = v3[8];
    v116 = v3[7];
    v80 = *(v1 + v28);
    v29 = (v1 + v3[9]);
    v85 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v79 = *v29;
    v30 = v79;
    v86 = v4;
    v78 = v29[1];
    v31 = v78;
    v114 = v27;
    v87 = v26;
    v89 = v23;
    v115 = v24;
    swift_retain_n();
    sub_1D2A2E6B8(v30, v31);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BF0, &qword_1D2ACA268);
    v112 = v1;
    v113 = v32;
    sub_1D2AC6AB4();
    v88 = a1;
    v33 = v117;
    swift_getKeyPath();
    v117 = v33;
    v81 = sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
    sub_1D2AC6094();

    v84 = v6;
    LOBYTE(v30) = *(v33 + 40);

    v34 = v1 + v3[10];
    v35 = *v34;
    v36 = *(v34 + 8);
    LOBYTE(v33) = *(v34 + 16);
    v37 = type metadata accessor for _AppExtensionHostView.Configuration(0);
    v38 = v90;
    (*(*(v37 - 8) + 56))(v90, 1, 1, v37);
    v83 = v5;
    sub_1D2A2E5B4(v38, v92, &unk_1EC7043C0, &qword_1D2ACA0B0);
    sub_1D2A46754(v35, v36);
    sub_1D2AC6A14();
    sub_1D2A2E61C(v38, &unk_1EC7043C0, &qword_1D2ACA0B0);
    v39 = v91;
    *&v12[*(v91 + 20)] = v114;
    v12[v39[6]] = v80;
    v40 = &v12[v39[7]];
    v41 = v78;
    *v40 = v79;
    *(v40 + 1) = v41;
    v12[v39[9]] = v30;
    v42 = &v12[v39[8]];
    *v42 = v35;
    *(v42 + 1) = v36;
    v42[16] = v33;
    v43 = v112;
    sub_1D2AC6AB4();
    v44 = v117;
    swift_getKeyPath();
    v117 = v44;
    sub_1D2AC6094();

    v45 = sub_1D2A44DA4(&qword_1EC703CA0, type metadata accessor for GenerativePlaygroundRemoteView, &unk_1D2ACB850);
    v46 = v94;
    sub_1D2AC69A4();
    v47 = sub_1D2A46794(v12, type metadata accessor for GenerativePlaygroundRemoteView);
    MEMORY[0x1EEE9AC00](v47);
    *(&v78 - 2) = v43;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703C98, &qword_1D2ACA3C8);
    v117 = v39;
    v118 = v45;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v50 = sub_1D2A2DB64(&qword_1EC703CA8, &qword_1EC703C98, &qword_1D2ACA3C8, MEMORY[0x1E697C5E0]);
    v51 = v96;
    v52 = v97;
    sub_1D2AC69D4();
    (*(v82 + 8))(v46, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D10, &qword_1D2ACA418);
    sub_1D2AC6614();
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1D2AC95B0;
    sub_1D2AC6604();
    v117 = v52;
    v118 = v48;
    v119 = OpaqueTypeConformance2;
    v120 = v50;
    v54 = swift_getOpaqueTypeConformance2();
    v55 = v99;
    v56 = v101;
    MEMORY[0x1D38A6DF0](2, v53, v101, v54);

    (*(v98 + 8))(v51, v56);
    v57 = v112;
    sub_1D2AC6AB4();
    v58 = v117;
    swift_getKeyPath();
    v117 = v58;
    sub_1D2AC6094();

    LODWORD(v35) = *(v58 + 27);

    v117 = v56;
    v118 = v54;
    v59 = swift_getOpaqueTypeConformance2();
    if (v35)
    {
      v60 = 2;
    }

    else
    {
      v60 = 1;
    }

    v61 = v102;
    v62 = v104;
    MEMORY[0x1D38A6DB0](v60, MEMORY[0x1E69E7CC0], v104, v59);
    (*(v100 + 8))(v55, v62);
    v63 = v111;
    sub_1D2AC67C4();
    v117 = v62;
    v118 = v59;
    swift_getOpaqueTypeConformance2();
    v64 = v103;
    v65 = v106;
    sub_1D2AC6994();
    (*(v95 + 8))(v63, v84);
    (*(v105 + 8))(v61, v65);
    v66 = v85;
    sub_1D2A47698(v57, v85, type metadata accessor for GPImageEditionView);
    v67 = (*(v86 + 80) + 16) & ~*(v86 + 80);
    v68 = swift_allocObject();
    sub_1D2A467FC(v66, v68 + v67);
    v69 = v110;
    (*(v107 + 32))(v110, v64, v108);
    v70 = (v69 + *(v109 + 36));
    *v70 = sub_1D2A46860;
    v70[1] = v68;
    v70[2] = 0;
    v70[3] = 0;
    sub_1D2AC6AB4();
    v71 = v117;
    swift_getKeyPath();
    v117 = v71;
    sub_1D2AC6094();

    v72 = *(v71 + 2);

    v117 = v72;
    sub_1D2A46500();
    sub_1D2A2EA10();

    v73 = v87;
    sub_1D2AC69F4();

    sub_1D2A2E61C(v69, &qword_1EC703C68, &qword_1D2ACA3A0);
    v74 = v88;
    v75 = v89;
    (*(v115 + 32))(v88, v73, v89);
    return (*(v115 + 56))(v74, 0, 1, v75);
  }

  else
  {
    v77 = *(v24 + 56);

    return v77(a1, 1, 1);
  }
}

__n128 sub_1D2A42338@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703C40, &qword_1D2ACA388);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-v5];
  sub_1D2A424C8(&v17[-v5]);
  v7 = a1 + *(type metadata accessor for GPImageEditionView(0) + 40);
  v8 = *(v7 + 8);
  if (v8)
  {
    v9 = *(v7 + 16);
    *&v19 = *v7;
    v10 = v19;
    *(&v19 + 1) = v8;
    v11 = v9 & 1;
    LOBYTE(v20) = v9 & 1;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043E0, &qword_1D2AC9CC0);
    MEMORY[0x1D38A6EC0](&v18);
    *&v19 = v10;
    *(&v19 + 1) = v8;
    LOBYTE(v20) = v11;
    MEMORY[0x1D38A6EC0](&v18, v12);
  }

  sub_1D2AC6AF4();
  sub_1D2AC6624();
  sub_1D2A1AC00(v6, a2);
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703C28, &qword_1D2ACA380) + 36);
  v14 = v24;
  *(v13 + 64) = v23;
  *(v13 + 80) = v14;
  *(v13 + 96) = v25;
  v15 = v20;
  *v13 = v19;
  *(v13 + 16) = v15;
  result = v22;
  *(v13 + 32) = v21;
  *(v13 + 48) = result;
  return result;
}

uint64_t sub_1D2A424C8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703CB8, &qword_1D2ACA3D0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703CC0, &qword_1D2ACA3D8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703C50, &qword_1D2ACA390);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  type metadata accessor for DeviceSupport();
  v13 = static DeviceSupport.isGenerativePlaygroundSupported.getter();
  if (v13)
  {
    sub_1D2A414C0(v12);
    v14 = sub_1D2AC65E4();
    v15 = sub_1D2AC68A4();
    v16 = &v12[*(v10 + 36)];
    *v16 = v14;
    v16[8] = v15;
    sub_1D2A2E5B4(v12, v9, &qword_1EC703C50, &qword_1D2ACA390);
    swift_storeEnumTagMultiPayload();
    sub_1D2A46398();
    sub_1D2A2DB64(&qword_1EC703CB0, &qword_1EC703CB8, &qword_1D2ACA3D0, MEMORY[0x1E697C1A8]);
    sub_1D2AC6714();
    return sub_1D2A2E61C(v12, &qword_1EC703C50, &qword_1D2ACA390);
  }

  else
  {
    v32 = &v26;
    MEMORY[0x1EEE9AC00](v13);
    v31 = &v26 - 4;
    *(&v26 - 2) = v1;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703CC8, &qword_1D2ACA3E0);
    v33 = a1;
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703CD0, &qword_1D2ACA3E8);
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703CD8, &qword_1D2ACA3F0);
    v18 = sub_1D2A2DB64(&qword_1EC703CE0, &qword_1EC703CD0, &qword_1D2ACA3E8, MEMORY[0x1E697C7C8]);
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703CE8, &qword_1D2ACA3F8);
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703CF0, &qword_1D2ACA400);
    v29 = v7;
    v21 = v3;
    v22 = v20;
    v23 = sub_1D2A2DB64(&qword_1EC703CF8, &qword_1EC703CF0, &qword_1D2ACA400, MEMORY[0x1E697BEF0]);
    v34 = v22;
    v35 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v34 = v19;
    v35 = OpaqueTypeConformance2;
    v25 = swift_getOpaqueTypeConformance2();
    v34 = v28;
    v35 = v27;
    v36 = v18;
    v37 = v25;
    swift_getOpaqueTypeConformance2();
    sub_1D2AC65D4();
    (*(v4 + 16))(v9, v6, v21);
    swift_storeEnumTagMultiPayload();
    sub_1D2A46398();
    sub_1D2A2DB64(&qword_1EC703CB0, &qword_1EC703CB8, &qword_1D2ACA3D0, MEMORY[0x1E697C1A8]);
    sub_1D2AC6714();
    return (*(v4 + 8))(v6, v21);
  }
}

uint64_t sub_1D2A4295C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D18, &qword_1D2ACA448);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v46 - v3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D20, &qword_1D2ACA450);
  v53 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v49 = &v46 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D28, &qword_1D2ACA458);
  v48 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v47 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D30, &qword_1D2ACA460);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D38, &qword_1D2ACA468);
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  v14 = sub_1D2AC6774();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703CF0, &qword_1D2ACA400);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703CE8, &qword_1D2ACA3F8);
  v51 = *(v19 - 8);
  v52 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  sub_1D2AC6744();
  v63 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D40, &qword_1D2ACA470);
  sub_1D2A4689C();
  sub_1D2AC64E4();
  v22 = sub_1D2A2DB64(&qword_1EC703CF8, &qword_1EC703CF0, &qword_1D2ACA400, MEMORY[0x1E697BEF0]);
  v50 = v21;
  MEMORY[0x1D38A6BC0](v18, v15, v22);
  (*(v16 + 8))(v18, v15);
  sub_1D2AC6754();
  v62 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D80, &qword_1D2ACA490);
  sub_1D2A46A58();
  v23 = v13;
  sub_1D2AC64E4();
  if (*(a1 + *(type metadata accessor for GPImageEditionView(0) + 32)) - 3 >= 0xFFFFFFFE)
  {
    v27 = sub_1D2AC6764();
    MEMORY[0x1EEE9AC00](v27);
    *(&v46 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703DB8, &qword_1D2ACA4A8);
    sub_1D2A46BFC();
    v28 = v47;
    sub_1D2AC64E4();
    v29 = sub_1D2A2DB64(&qword_1EC703DB0, &qword_1EC703D28, &qword_1D2ACA458, MEMORY[0x1E697BEF0]);
    v30 = v49;
    v31 = v54;
    MEMORY[0x1D38A6BC0](v28, v54, v29);
    v32 = v53;
    v33 = v57;
    (*(v53 + 16))(v9, v30, v57);
    (*(v32 + 56))(v9, 0, 1, v33);
    v64 = v31;
    v65 = v29;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D38A6BD0](v9, v33, OpaqueTypeConformance2);
    sub_1D2A2E61C(v9, &qword_1EC703D30, &qword_1D2ACA460);
    (*(v32 + 8))(v30, v33);
    (*(v48 + 8))(v28, v31);
  }

  else
  {
    v24 = v57;
    (*(v53 + 56))(v9, 1, 1, v57);
    v25 = sub_1D2A2DB64(&qword_1EC703DB0, &qword_1EC703D28, &qword_1D2ACA458, MEMORY[0x1E697BEF0]);
    v64 = v54;
    v65 = v25;
    v26 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D38A6BD0](v9, v24, v26);
    sub_1D2A2E61C(v9, &qword_1EC703D30, &qword_1D2ACA460);
  }

  v35 = v58;
  v36 = *(v59 + 48);
  v37 = *(v59 + 64);
  v39 = v50;
  v38 = v51;
  v40 = v52;
  (*(v51 + 16))(v58, v50, v52);
  v42 = v55;
  v41 = v56;
  (*(v55 + 16))(&v35[v36], v23, v56);
  v43 = &v35[v37];
  v44 = v61;
  sub_1D2A2E5B4(v61, v43, &qword_1EC703D30, &qword_1D2ACA460);
  sub_1D2AC66F4();
  sub_1D2A2E61C(v44, &qword_1EC703D30, &qword_1D2ACA460);
  (*(v42 + 8))(v23, v41);
  return (*(v38 + 8))(v39, v40);
}

uint64_t sub_1D2A43198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GPImageEditionView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2AC64D4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D98, &qword_1D2ACA498);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  sub_1D2AC64C4();
  sub_1D2A47698(a1, v7, type metadata accessor for GPImageEditionView);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1D2A467FC(v7, v16 + v15);
  MEMORY[0x1D38A6E90](v10, sub_1D2A46F5C, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BF0, &qword_1D2ACA268);
  sub_1D2AC6AB4();
  LOBYTE(v16) = sub_1D2A3FCE4();

  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = (v16 & 1) == 0;
  v19 = &v14[*(v12 + 44)];
  *v19 = KeyPath;
  v19[1] = sub_1D2A46FE8;
  v19[2] = v18;
  sub_1D2AC6AB4();
  LOBYTE(a1) = sub_1D2A3FCE4();

  v20 = 0;
  if ((a1 & 1) == 0)
  {
    v20 = sub_1D2AC6A04();
  }

  v21 = swift_getKeyPath();
  sub_1D2A47000(v14, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D80, &qword_1D2ACA490);
  v23 = (a2 + *(result + 36));
  *v23 = v21;
  v23[1] = v20;
  return result;
}

uint64_t sub_1D2A43464()
{
  type metadata accessor for GPImageEditionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BF0, &qword_1D2ACA268);
  sub_1D2AC6AB4();
  sub_1D2A3FF5C();
}

uint64_t sub_1D2A434C8@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_1D2AC6734();
  v2 = *(v1 - 8);
  v20 = v1;
  v21 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BF0, &qword_1D2ACA268);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703DC8, &qword_1D2ACA4B0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - v11;
  v13 = sub_1D2AC66D4();
  v19[1] = v14;
  v19[2] = v13;
  v19[0] = v15;
  type metadata accessor for GPImageEditionView(0);
  sub_1D2AC6AC4();
  swift_getKeyPath();
  sub_1D2AC6AE4();

  (*(v6 + 8))(v8, v5);
  v23 = v25;
  v24 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703DD8, &qword_1D2ACA4B8);
  sub_1D2A46D18();
  sub_1D2A2DB64(&qword_1EC703DE8, &qword_1EC703DD8, &qword_1D2ACA4B8, MEMORY[0x1E6981F48]);
  sub_1D2AC6A74();
  sub_1D2AC6724();
  sub_1D2A2DB64(&qword_1EC703DD0, &qword_1EC703DC8, &qword_1D2ACA4B0, MEMORY[0x1E697D690]);
  v16 = v22;
  v17 = v20;
  sub_1D2AC6944();
  (*(v21 + 8))(v4, v17);
  (*(v10 + 8))(v12, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703DB8, &qword_1D2ACA4A8);
  *(v16 + *(result + 36)) = 257;
  return result;
}

uint64_t sub_1D2A43864@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703DF0, &qword_1D2ACA4C0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v25[-v8];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v25[-v11];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25[-v13];
  sub_1D2AC66D4();
  *v14 = sub_1D2AC68E4();
  *(v14 + 1) = v15;
  v14[16] = v16 & 1;
  *(v14 + 3) = v17;
  *(v14 + 4) = 0;
  v14[40] = 1;
  sub_1D2AC66D4();
  *v12 = sub_1D2AC68E4();
  *(v12 + 1) = v18;
  v12[16] = v19 & 1;
  *(v12 + 3) = v20;
  *(v12 + 4) = 1;
  v12[40] = 1;
  v21 = *(v3 + 16);
  v21(v9, v14, v2);
  v21(v6, v12, v2);
  v21(a1, v9, v2);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703DF8, &qword_1D2ACA4C8);
  v21(&a1[*(v22 + 48)], v6, v2);
  v23 = *(v3 + 8);
  v23(v12, v2);
  v23(v14, v2);
  v23(v6, v2);
  return (v23)(v9, v2);
}

uint64_t sub_1D2A43B10(uint64_t a1)
{
  v2 = type metadata accessor for GPImageEditionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BF0, &qword_1D2ACA268);
  sub_1D2AC6AB4();
  if (*(v5 + 16) != *(a1 + *(v2 + 32)) < 3u)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel, &unk_1D2ACA2D8);
    sub_1D2AC6084();
  }
}

void sub_1D2A43C6C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = sub_1D2A5785C;
  v7[4] = 0;
  v7[5] = sub_1D2A46880;
  v7[6] = v5;
  swift_getKeyPath();
  *&v29 = a3;
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);

  sub_1D2AC6094();

  v8 = *(a3 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v8)
  {
    v32 = sub_1D2A5785C;
    v33 = 0;
    *&v29 = MEMORY[0x1E69E9820];
    *(&v29 + 1) = 1107296256;
    v30 = sub_1D2A44320;
    v31 = &block_descriptor_276;
    v9 = _Block_copy(&v29);
    v10 = v8;

    v11 = [v10 remoteObjectProxyWithErrorHandler_];
    _Block_release(v9);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(&v34, v35);
    sub_1D2A206F8(v35, &v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v12 = v34;
    if (v34)
    {
      [v34 routeTo_];

      return;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v13 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v14 = sub_1D2AC63B4();
    __swift_project_value_buffer(v14, qword_1EC7040C0);
    v15 = v13;
    v16 = sub_1D2AC6394();
    v17 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v13;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1D2A17000, v16, v17, "Could not send route to remote view: %@. May not be an error if the connection is not established yet, will retry.", v18, 0xCu);
      sub_1D2A2E61C(v19, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v19, -1, -1);
      MEMORY[0x1D38A8460](v18, -1, -1);
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = sub_1D2A2E6B4;
  *(v22 + 24) = v7;
  swift_getKeyPath();
  *&v29 = a3;

  sub_1D2AC6094();

  *&v29 = a3;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v23 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v24 = *(a3 + v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + v23) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_1D2A4486C(0, v24[2] + 1, 1, v24);
    *(a3 + v23) = v24;
  }

  v27 = v24[2];
  v26 = v24[3];
  if (v27 >= v26 >> 1)
  {
    v24 = sub_1D2A4486C((v26 > 1), v27 + 1, 1, v24);
  }

  v24[2] = v27 + 1;
  v28 = &v24[2 * v27];
  v28[4] = sub_1D2A47D3C;
  v28[5] = v22;
  *(a3 + v23) = v24;
  swift_endAccess();
  *&v29 = a3;
  swift_getKeyPath();
  sub_1D2AC60A4();
}

uint64_t sub_1D2A441C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703C28, &qword_1D2ACA380);
  sub_1D2A46254();
  return sub_1D2AC65D4();
}

id sub_1D2A44230@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  sub_1D2AC6094();

  v4 = *(v3 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  *a2 = v4;

  return v4;
}

void sub_1D2A442F0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D2A55158(v1);
}

void sub_1D2A44320(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1D2A44388@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  sub_1D2AC6094();

  v4 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D2A44450(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager, &unk_1D2ACB69C);
  sub_1D2AC6084();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D2A4455C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D2A44654;

  return v6(a1);
}

uint64_t sub_1D2A44654()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_1D2A4474C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B58, &qword_1D2AC9D98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D2A4486C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E30, &unk_1D2ACA5C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043D0, &unk_1D2ACB460);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D2A449A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E28, &qword_1D2ACA580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D2A44A94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E20, &unk_1D2ACA570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D2A44BA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B50, &qword_1D2AC9D90);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D2A44CB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D2A47C5C;

  return sub_1D2A37B14(a1, v4, v5, v7, v6);
}

uint64_t sub_1D2A44DA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D2A44E34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BD8, &qword_1D2ACA0A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t keypath_get_201Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

id keypath_get_191Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t keypath_get_185Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void sub_1D2A44FD4(uint64_t a1)
{
  sub_1D2A46064(319, qword_1EE089128, type metadata accessor for GPImageEditionView, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ImagePlaygroundViewController.responsibleAuditToken.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x298);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t sub_1D2A45DB8(uint64_t a1)
{
  result = sub_1D2AC60D4();
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

void sub_1D2A45E9C(uint64_t a1)
{
  sub_1D2A460C8(319, &unk_1EE0888A0, &unk_1EC7043C0, &qword_1D2ACA0B0, MEMORY[0x1E6981790]);
  if (v1 <= 0x3F)
  {
    sub_1D2A46064(319, qword_1EE088A88, type metadata accessor for GPHostSideConnectionManager, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D2A46064(319, &qword_1EE088890, type metadata accessor for GPImageEditionView.ViewModel, MEMORY[0x1E6981AA0]);
      if (v3 <= 0x3F)
      {
        sub_1D2A460C8(319, &unk_1EE088848, &unk_1EC7043D0, &unk_1D2ACB460, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1D2A460C8(319, &qword_1EE088898, &unk_1EC7043E0, &qword_1D2AC9CC0, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D2A46064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D2A460C8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D2A46178()
{
  result = qword_1EC703C00;
  if (!qword_1EC703C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703C00);
  }

  return result;
}

unint64_t sub_1D2A461E8()
{
  result = qword_1EC703C18;
  if (!qword_1EC703C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703C18);
  }

  return result;
}

unint64_t sub_1D2A46254()
{
  result = qword_1EC703C30;
  if (!qword_1EC703C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703C28, &qword_1D2ACA380);
    sub_1D2A462E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703C30);
  }

  return result;
}

unint64_t sub_1D2A462E0()
{
  result = qword_1EC703C38;
  if (!qword_1EC703C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703C40, &qword_1D2ACA388);
    sub_1D2A46398();
    sub_1D2A2DB64(&qword_1EC703CB0, &qword_1EC703CB8, &qword_1D2ACA3D0, MEMORY[0x1E697C1A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703C38);
  }

  return result;
}

unint64_t sub_1D2A46398()
{
  result = qword_1EC703C48;
  if (!qword_1EC703C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703C50, &qword_1D2ACA390);
    sub_1D2A46424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703C48);
  }

  return result;
}

unint64_t sub_1D2A46424()
{
  result = qword_1EC703C58;
  if (!qword_1EC703C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703C60, &qword_1D2ACA398);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703C68, &qword_1D2ACA3A0);
    sub_1D2A46500();
    sub_1D2A2EA10();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703C58);
  }

  return result;
}

unint64_t sub_1D2A46500()
{
  result = qword_1EC703C70;
  if (!qword_1EC703C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703C68, &qword_1D2ACA3A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703C78, &qword_1D2ACA3A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703C80, &qword_1D2ACA3B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703C88, &qword_1D2ACA3B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703C90, &qword_1D2ACA3C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703C98, &qword_1D2ACA3C8);
    type metadata accessor for GenerativePlaygroundRemoteView(255);
    sub_1D2A44DA4(&qword_1EC703CA0, type metadata accessor for GenerativePlaygroundRemoteView, &unk_1D2ACB850);
    swift_getOpaqueTypeConformance2();
    sub_1D2A2DB64(&qword_1EC703CA8, &qword_1EC703C98, &qword_1D2ACA3C8, MEMORY[0x1E697C5E0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703C70);
  }

  return result;
}

uint64_t sub_1D2A46754(uint64_t result, uint64_t a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_1D2A46794(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2A467FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GPImageEditionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D2A4689C()
{
  result = qword_1EC703D48;
  if (!qword_1EC703D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703D40, &qword_1D2ACA470);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703D50, &qword_1D2ACA478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703D58, &qword_1D2ACA480);
    sub_1D2AC66C4();
    sub_1D2A2DB64(&qword_1EC703D60, &qword_1EC703D58, &qword_1D2ACA480, MEMORY[0x1E697D680]);
    sub_1D2A44DA4(&qword_1EC703D68, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D2A2DB64(&qword_1EC703D70, &qword_1EC703D78, &qword_1D2ACA488, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703D48);
  }

  return result;
}

unint64_t sub_1D2A46A58()
{
  result = qword_1EC703D88;
  if (!qword_1EC703D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703D80, &qword_1D2ACA490);
    sub_1D2A46B10();
    sub_1D2A2DB64(&qword_1EC703D70, &qword_1EC703D78, &qword_1D2ACA488, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703D88);
  }

  return result;
}

unint64_t sub_1D2A46B10()
{
  result = qword_1EC703D90;
  if (!qword_1EC703D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703D98, &qword_1D2ACA498);
    sub_1D2A2DB64(&qword_1EC703D60, &qword_1EC703D58, &qword_1D2ACA480, MEMORY[0x1E697D680]);
    sub_1D2A2DB64(&qword_1EC703DA0, &qword_1EC703DA8, &qword_1D2ACA4A0, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703D90);
  }

  return result;
}

unint64_t sub_1D2A46BFC()
{
  result = qword_1EC703DC0;
  if (!qword_1EC703DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703DB8, &qword_1D2ACA4A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703DC8, &qword_1D2ACA4B0);
    sub_1D2AC6734();
    sub_1D2A2DB64(&qword_1EC703DD0, &qword_1EC703DC8, &qword_1D2ACA4B0, MEMORY[0x1E697D690]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703DC0);
  }

  return result;
}

unint64_t sub_1D2A46D18()
{
  result = qword_1EC703DE0;
  if (!qword_1EC703DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703DE0);
  }

  return result;
}

uint64_t objectdestroy_260Tm()
{
  v1 = type metadata accessor for GPImageEditionView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  v6 = v0 + v4 + v1[5];
  v7 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = sub_1D2AC62D4();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704510, &qword_1D2ACA260);

  v9 = v1[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BF0, &qword_1D2ACA268);
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  if (*(v5 + v1[9]))
  {
  }

  if (*(v5 + v1[10] + 8))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_1D2A46F74(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for GPImageEditionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1D2A47000(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D98, &qword_1D2ACA498);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2A47070()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t sub_1D2A470D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1D2A470E4(void *a1)
{
  v1[2] = sub_1D2AC6DA4();
  v1[3] = sub_1D2AC6D94();
  v3 = a1;
  v4 = swift_task_alloc();
  v1[4] = v4;
  *v4 = v1;
  v4[1] = sub_1D2A471B4;

  return sub_1D2A1FD8C(v3);
}

uint64_t sub_1D2A471B4(uint64_t a1)
{
  *(*v1 + 40) = a1;

  v3 = sub_1D2AC6D44();

  return MEMORY[0x1EEE6DFA0](sub_1D2A472F8, v3, v2);
}

uint64_t sub_1D2A472F8()
{
  v1 = *(v0 + 40);

  if (!v1)
  {
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v2 = sub_1D2AC63B4();
    __swift_project_value_buffer(v2, qword_1EC7040C0);
    v3 = sub_1D2AC6394();
    v4 = sub_1D2AC6E94();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D2A17000, v3, v4, "Cannot resize native image into image xpc wrapper.", v5, 2u);
      MEMORY[0x1D38A8460](v5, -1, -1);
    }
  }

  v6 = *(v0 + 8);
  v7 = *(v0 + 40);

  return v6(v7);
}

void sub_1D2A47420(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController___promptElements) = MEMORY[0x1E69E7CC0];
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_allowedGenerationStyles;
  *(v1 + v3) = _s15ImagePlayground0aB5StyleV3allSayACGvgZ_0();
  v4 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_selectedGenerationStyle;
  if (qword_1EE089358 != -1)
  {
    swift_once();
  }

  v13[2] = xmmword_1EE089380;
  v13[3] = unk_1EE089390;
  v13[4] = xmmword_1EE0893A0;
  v13[5] = unk_1EE0893B0;
  v13[0] = xmmword_1EE089360;
  v13[1] = xmmword_1EE089370;
  memmove((v1 + v4), &xmmword_1EE089360, 0x60uLL);
  *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_personalizationPolicy) = 0;
  *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sourceImage) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sceneIdentifier) = 0;
  *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_privateDelegate) = 0;
  *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_resultingAssets) = v2;
  *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sourceImageIsSketch) = 0;
  v5 = (v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_localizedCreateButtonTitle);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_isLoadingRecipe) = 0;
  *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_recipe) = 0;
  v6 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_previewAspectRatio;
  sub_1D2A2D244(v13, v12);
  if (qword_1EE089688 != -1)
  {
    swift_once();
  }

  v7 = v1 + v6;
  v8 = *dbl_1EE089698;
  *v7 = qword_1EE089690;
  *(v7 + 8) = v8;
  *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_pregeneratedImage) = 0;
  *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageImportPolicy) = 0;
  v9 = v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_responsibleAuditToken;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 1;
  v10 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageEditionView;
  v11 = type metadata accessor for GPImageEditionView(0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageEditionViewController) = 0;
  *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_concepts) = v2;
  *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_delayingPresentation) = 0;
  *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_delayPresentationDuration) = 0x4008000000000000;
  sub_1D2AC7174();
  __break(1u);
}

uint64_t sub_1D2A47698(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2A47700(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D2A47C5C;

  return sub_1D2A4455C(a1, v4);
}

uint64_t sub_1D2A477B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D2A2E260;

  return sub_1D2A4455C(a1, v4);
}

uint64_t sub_1D2A47870(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D2A2E260;

  return sub_1D2A37B14(a1, v4, v5, v7, v6);
}

uint64_t sub_1D2A47930(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D2A47944(result, a2);
  }

  return result;
}

uint64_t sub_1D2A47944(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1D2A479A0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D2A479B4(result, a2);
  }

  return result;
}

uint64_t sub_1D2A479B4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t objectdestroy_403Tm()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_1D2A47944(*(v0 + 16), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroy_95Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D2A47A98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D2A47C5C;

  return sub_1D2A32B10(a1, v4, v5, v7, v6);
}

unint64_t sub_1D2A47B88()
{
  result = qword_1EC703E48;
  if (!qword_1EC703E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703E48);
  }

  return result;
}

void sub_1D2A47D58()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D2AC6BF4();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  qword_1EE088878 = v2;
}

id static NSUserDefaults.gpUserDefaults.getter()
{
  if (qword_1EE088870 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE088878;

  return v1;
}

ImagePlayground::Workaround __swiftcall Workaround.init(for:workaroundRemovalRadar:)(Swift::Int a1, Swift::Int workaroundRemovalRadar)
{
  v3 = v2;
  v4 = [objc_opt_self() standardUserDefaults];
  sub_1D2AC7084();

  v5 = sub_1D2AC7324();
  MEMORY[0x1D38A7100](v5);

  v6 = sub_1D2AC6BF4();

  v7 = [v4 BOOLForKey_];

  *v3 = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for Workaround(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Workaround(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

CVBufferRef_optional __swiftcall CVBufferRef.invertLuminosity()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVImageBuffer_];
  v3 = objc_opt_self();
  v4 = [v3 colorInvertFilter];
  [v4 setInputImage_];
  v5 = [v4 outputImage];
  if (v5)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E50, &qword_1D2ACA6C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D2AC95B0;
    *(inited + 32) = sub_1D2AC6C24();
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 40) = v8;
    *(inited + 48) = 0;
    sub_1D2A48A1C(inited);
    swift_setDeallocating();
    sub_1D2A2E61C(inited + 32, &qword_1EC703E58, &qword_1D2ACA6D0);
    v9 = sub_1D2AC6BF4();
    v10 = sub_1D2AC6B94();

    v11 = [v3 filterWithName:v9 withInputParameters:v10];

    if (v11)
    {
      [v11 setValue:v2 forKey:*MEMORY[0x1E695FA48]];
      [v11 setValue:v6 forKey:*MEMORY[0x1E695FAB0]];
      v12 = [v11 outputImage];
      if (v12)
      {
        v13 = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E60, &qword_1D2ACA6D8);
        v14 = swift_initStackObject();
        *(v14 + 16) = xmmword_1D2AC95B0;
        v15 = *MEMORY[0x1E695F868];
        *(v14 + 32) = *MEMORY[0x1E695F868];
        v16 = *MEMORY[0x1E695E738];
        *(v14 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E68, &qword_1D2ACA6E0);
        *(v14 + 40) = v16;
        v17 = v16;
        v18 = v15;
        sub_1D2A48D24(v14);
        swift_setDeallocating();
        sub_1D2A2E61C(v14 + 32, &qword_1EC703E70, &qword_1D2ACA6E8);
        v19 = objc_allocWithZone(MEMORY[0x1E695F620]);
        type metadata accessor for CIContextOption(0);
        sub_1D2A490B4(&qword_1EC703800, type metadata accessor for CIContextOption, &unk_1D2AC94D4);
        v20 = sub_1D2AC6B94();

        v21 = [v19 initWithOptions_];

        Width = CVPixelBufferGetWidth(v1);
        Height = CVPixelBufferGetHeight(v1);
        v24 = sub_1D2A48E4C(Width, Height, 0x42475241u);
        if (v24)
        {
          v25.value = v24;
          [v21 render:v13 toCVPixelBuffer:v24];

          return v25;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
  }

  return 0;
}

unint64_t sub_1D2A484B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E88, &qword_1D2ACA750);
    v3 = sub_1D2AC71B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D2A2E5B4(v4, v13, &qword_1EC703E90, &qword_1D2ACA758);
      result = sub_1D2AAF814(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1D2A206F8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_1D2A485EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E78, &qword_1D2ACA740);
    v3 = sub_1D2AC71B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D2A2E5B4(v4, &v11, &qword_1EC7037F0, &qword_1D2AC9528);
      v5 = v11;
      result = sub_1D2AAF790(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D2A206F8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

CVPixelBufferRef sub_1D2A48714(size_t a1, size_t a2)
{
  pixelBufferOut[20] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7037E8, &qword_1D2AC9520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2AC9060;
  v5 = *MEMORY[0x1E69660E8];
  *(inited + 32) = *MEMORY[0x1E69660E8];
  v6 = MEMORY[0x1E69E6370];
  *(inited + 40) = 1;
  v7 = *MEMORY[0x1E69660D8];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = v5;
  v9 = v7;
  v10 = sub_1D2A484B0(MEMORY[0x1E69E7CC0]);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703EA8, &qword_1D2ACA770);
  v12 = MEMORY[0x1E6966028];
  *(inited + 80) = v10;
  v13 = *v12;
  *(inited + 104) = v11;
  *(inited + 112) = v13;
  *(inited + 144) = v6;
  *(inited + 120) = 1;
  v14 = v13;
  sub_1D2A485EC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7037F0, &qword_1D2AC9528);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_1D2A490B4(&qword_1EC7037D0, type metadata accessor for CFString, &unk_1D2AC9490);
  v15 = sub_1D2AC6B94();

  pixelBufferOut[0] = 0;
  result = CVPixelBufferCreate(0, a1, a2, 0x42475241u, v15, pixelBufferOut);
  v17 = pixelBufferOut[0];
  if (result)
  {
    v18 = result;
    if (qword_1EC703598 != -1)
    {
      swift_once();
    }

    v19 = sub_1D2AC63B4();
    __swift_project_value_buffer(v19, qword_1EC7040A8);
    v20 = sub_1D2AC6394();
    v21 = sub_1D2AC6E94();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67109120;
      *(v22 + 4) = v18;
      _os_log_impl(&dword_1D2A17000, v20, v21, "Can't create pixel buffer %d", v22, 8u);
      MEMORY[0x1D38A8460](v22, -1, -1);
    }

    sub_1D2A490FC();
    swift_allocError();
    *v23 = v18;
    *(v23 + 4) = 1;
    swift_willThrow();
    goto LABEL_9;
  }

  if (pixelBufferOut[0])
  {
    v24 = pixelBufferOut[0];
LABEL_9:

    return v17;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D2A48A1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703EB8, &qword_1D2ACA780);
    v3 = sub_1D2AC71B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D2A2E5B4(v4, &v13, &qword_1EC703E58, &qword_1D2ACA6D0);
      v5 = v13;
      v6 = v14;
      result = sub_1D2AAF858(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D2A206F8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_1D2A48B4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703EC0, &qword_1D2ACA788);
    v3 = sub_1D2AC71B4();
    for (i = (a1 + 36); ; i += 8)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1D2AAF8D0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1D2A48C2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E80, &qword_1D2ACA748);
    v3 = sub_1D2AC71B4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1D2AAF790(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1D2A48D24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703EB0, &qword_1D2ACA778);
    v3 = sub_1D2AC71B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D2A2E5B4(v4, &v11, &qword_1EC703E70, &qword_1D2ACA6E8);
      v5 = v11;
      result = sub_1D2AAF9D8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D2A206F8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

id sub_1D2A48E4C(size_t a1, size_t a2, OSType a3)
{
  v12[7] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E98, &qword_1D2ACA760);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2AC95B0;
  v7 = *MEMORY[0x1E69660D8];
  *(inited + 32) = *MEMORY[0x1E69660D8];
  v8 = v7;
  *(inited + 40) = sub_1D2A484B0(MEMORY[0x1E69E7CC0]);
  sub_1D2A48C2C(inited);
  swift_setDeallocating();
  sub_1D2A2E61C(inited + 32, &qword_1EC703EA0, &qword_1D2ACA768);
  type metadata accessor for CFString(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703EA8, &qword_1D2ACA770);
  sub_1D2A490B4(&qword_1EC7037D0, type metadata accessor for CFString, &unk_1D2AC9490);
  v9 = sub_1D2AC6B94();

  v12[0] = 0;
  v10 = CVPixelBufferCreate(*MEMORY[0x1E695E480], a1, a2, a3, v9, v12);

  result = v12[0];
  if (v10)
  {

    return 0;
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s14CoreVideoErrorOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s14CoreVideoErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D2A490B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D2A490FC()
{
  result = qword_1EC703EC8;
  if (!qword_1EC703EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703EC8);
  }

  return result;
}

uint64_t sub_1D2A49150()
{
  v0 = sub_1D2AC6034();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2AC6BE4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1D2AC6BD4();
  if (qword_1EC703630 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC728B78;
  sub_1D2AC5FF4();
  return sub_1D2AC6C34();
}

void sub_1D2A493A4(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [a1 domain];
  v5 = sub_1D2AC6C24();
  v7 = v6;

  if (v5 == 0xD000000000000011 && 0x80000001D2ADE770 == v7)
  {
  }

  else
  {
    v9 = sub_1D2AC7354();

    if ((v9 & 1) == 0)
    {

LABEL_14:
      v13 = 9;
LABEL_15:
      *a2 = v13;
      return;
    }
  }

  v10 = _s15ImagePlayground0A7CreatorC5ErrorO8allCasesSayAEGvgZ_0();
  v11 = 0;
  v12 = *(v10 + 2);
  while (1)
  {
    if (v12 == v11)
    {

      goto LABEL_14;
    }

    if (v11 >= *(v10 + 2))
    {
      break;
    }

    v13 = v10[v11++ + 32];
    sub_1D2A49BE8();
    v14 = sub_1D2AC5D14();
    if (v14 == [a1 code])
    {

      goto LABEL_15;
    }
  }

  __break(1u);
}

unint64_t ImageCreator.Error.errorUserInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E50, &qword_1D2ACA6C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2AC95B0;
  *(inited + 32) = sub_1D2AC6C24();
  *(inited + 40) = v1;
  v2 = sub_1D2A49150();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  v4 = sub_1D2A48A1C(inited);
  swift_setDeallocating();
  sub_1D2A4991C(inited + 32);
  return v4;
}

uint64_t ImageCreator.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](v1);
  return sub_1D2AC7484();
}

uint64_t sub_1D2A49664()
{
  v1 = *v0;
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](v1);
  return sub_1D2AC7484();
}

uint64_t sub_1D2A496AC(uint64_t a1)
{
  v2 = *v1;
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](v2);
  return sub_1D2AC7484();
}

unint64_t sub_1D2A49720()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E50, &qword_1D2ACA6C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2AC95B0;
  *(inited + 32) = sub_1D2AC6C24();
  *(inited + 40) = v1;
  v2 = sub_1D2A49150();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  v4 = sub_1D2A48A1C(inited);
  swift_setDeallocating();
  sub_1D2A4991C(inited + 32);
  return v4;
}

char *sub_1D2A497D4@<X0>(char **a2@<X8>)
{
  result = _s15ImagePlayground0A7CreatorC5ErrorO8allCasesSayAEGvgZ_0();
  *a2 = result;
  return result;
}

uint64_t sub_1D2A497FC(uint64_t a1)
{
  v2 = sub_1D2A49BE8();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D2A49838(uint64_t a1)
{
  v2 = sub_1D2A49BE8();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

char *_s15ImagePlayground0A7CreatorC5ErrorO8allCasesSayAEGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E28, &qword_1D2ACA580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2ACA790;
  *(inited + 32) = 0x706050403020100;
  result = sub_1D2A449A0(1, 9, 1, inited);
  *(result + 2) = 9;
  result[40] = 8;
  return result;
}

uint64_t sub_1D2A4991C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E58, &qword_1D2ACA6D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D2A49988()
{
  result = qword_1EC703ED0;
  if (!qword_1EC703ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703ED0);
  }

  return result;
}

unint64_t sub_1D2A499DC()
{
  result = qword_1EC703ED8;
  if (!qword_1EC703ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703ED8);
  }

  return result;
}

unint64_t sub_1D2A49A34()
{
  result = qword_1EC703EE0;
  if (!qword_1EC703EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703EE8, &qword_1D2ACA898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703EE0);
  }

  return result;
}

uint64_t _s5ErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5ErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D2A49BE8()
{
  result = qword_1EC703EF0;
  if (!qword_1EC703EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703EF0);
  }

  return result;
}

id sub_1D2A49C68(int a1)
{
  v2 = v1;
  v62 = a1;
  v63 = sub_1D2AC6B84();
  v3 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703F28, &qword_1D2ACAA58);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v60 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v60 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v60 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v60 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v60 - v21;
  v23 = type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D2A4A9BC(v2, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v27 = v63;
      v28 = v3;
      if (EnumCaseMultiPayload == 2)
      {
        v44 = v25[3];
        (*(v28 + 56))(v14, 1, 1, v63);
        v45 = sub_1D2AC6BF4();

        if (v44)
        {
          v46 = sub_1D2AC6BF4();
        }

        else
        {
          v46 = 0;
        }

        if ((*(v28 + 48))(v14, 1, v27) == 1)
        {
          v30 = 0;
        }

        else
        {
          v30 = sub_1D2AC6B64();
          (*(v28 + 8))(v14, v27);
        }

        v43 = [objc_allocWithZone(GPPromptElement) initWithText:v45 title:v46 isPersonHandle:0 isSuggestableText:0 needsConceptsExtraction:0 needsSuggestableConceptsExtraction:1 drawing:v30 image:0];

        goto LABEL_48;
      }

      if (EnumCaseMultiPayload == 3)
      {
        (*(v3 + 56))(v20, 1, 1, v63);
        v29 = sub_1D2AC6BF4();

        if ((*(v3 + 48))(v20, 1, v27) == 1)
        {
          v30 = 0;
        }

        else
        {
          v30 = sub_1D2AC6B64();
          (*(v28 + 8))(v20, v27);
        }

        v53 = [objc_allocWithZone(GPPromptElement) initWithText:v29 title:0 isPersonHandle:0 isSuggestableText:1 needsConceptsExtraction:0 needsSuggestableConceptsExtraction:0 drawing:v30 image:0];
        goto LABEL_36;
      }

      v48 = *v25;
      v49 = v25[1];
      v50 = v25[2];
      v51 = v25[3];
      v64 = v48;
      v65 = v49;
      v66 = v50;
      v67 = v51;
      sub_1D2A4B448();

      (*(v3 + 56))(v8, 1, 1, v27);
      v29 = sub_1D2AC6BF4();

      if ((*(v3 + 48))(v8, 1, v27) == 1)
      {
        v30 = 0;
      }

      else
      {
        v30 = sub_1D2AC6B64();
        (*(v28 + 8))(v8, v27);
      }

      v55 = objc_allocWithZone(GPPromptElement);
      v59 = v30;
      v56 = v29;
      v57 = 1;
LABEL_35:
      v53 = [v55 initWithText:v56 title:0 isPersonHandle:v57 isSuggestableText:0 needsConceptsExtraction:0 needsSuggestableConceptsExtraction:0 drawing:v59 image:0];
LABEL_36:
      v43 = v53;

LABEL_48:
      return v43;
    }

    v35 = v63;
    v36 = v3;
    if (!EnumCaseMultiPayload)
    {
      (*(v3 + 56))(v22, 1, 1, v63);
      v29 = sub_1D2AC6BF4();

      if ((*(v3 + 48))(v22, 1, v35) == 1)
      {
        v30 = 0;
      }

      else
      {
        v30 = sub_1D2AC6B64();
        (*(v36 + 8))(v22, v35);
      }

      v55 = objc_allocWithZone(GPPromptElement);
      v59 = v30;
      v56 = v29;
      v57 = 0;
      goto LABEL_35;
    }

    v52 = v25[3];
    (*(v36 + 56))(v17, 1, 1, v63);
    v33 = sub_1D2AC6BF4();

    if (v52)
    {
      v34 = sub_1D2AC6BF4();
    }

    else
    {
      v34 = 0;
    }

    if ((*(v36 + 48))(v17, 1, v35) == 1)
    {
      v30 = 0;
    }

    else
    {
      v30 = sub_1D2AC6B64();
      (*(v36 + 8))(v17, v35);
    }

    v54 = [objc_allocWithZone(GPPromptElement) initWithText:v33 title:v34 isPersonHandle:0 isSuggestableText:0 needsConceptsExtraction:1 needsSuggestableConceptsExtraction:0 drawing:v30 image:0];
LABEL_47:
    v43 = v54;

    goto LABEL_48;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v47 = *v25;
      v43 = [objc_allocWithZone(GPPromptElement) initWithText:0 title:0 isPersonHandle:0 isSuggestableText:0 needsConceptsExtraction:0 needsSuggestableConceptsExtraction:0 drawing:0 image:*v25];
    }

    else
    {
      if (EnumCaseMultiPayload == 8)
      {
        v31 = v3;
        v32 = v63;
        (*(v3 + 56))(v11, 1, 1, v63);
        v33 = sub_1D2AC6BF4();
        v34 = sub_1D2AC6BF4();

        if ((*(v3 + 48))(v11, 1, v32) == 1)
        {
          v30 = 0;
        }

        else
        {
          v30 = sub_1D2AC6B64();
          (*(v31 + 8))(v11, v32);
        }

        v54 = [objc_allocWithZone(GPPromptElement) initWithText:v33 title:v34 isPersonHandle:0 isSuggestableText:0 needsConceptsExtraction:0 needsSuggestableConceptsExtraction:0 drawing:v30 image:0];
        goto LABEL_47;
      }

      v47 = *v25;
      v43 = [objc_allocWithZone(GPPromptElement) initWithText:0 title:0 isPersonHandle:0 isSuggestableText:0 needsConceptsExtraction:0 needsSuggestableConceptsExtraction:0 drawing:0 image:0];
      [v43 setPixelBuffer_];
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 5)
  {
    v47 = *v25;
    v43 = [objc_allocWithZone(GPPromptElement) initWithText:0 title:0 isPersonHandle:0 isSuggestableText:0 needsConceptsExtraction:0 needsSuggestableConceptsExtraction:0 drawing:0 image:0];
    [v43 setDrawingPixelBuffer_];
LABEL_26:

    return v43;
  }

  v37 = v3;
  v38 = *(v3 + 32);
  v39 = v61;
  v40 = v63;
  v38(v61, v25, v63);
  v41 = objc_allocWithZone(GPPromptElement);
  v42 = sub_1D2AC6B64();
  v43 = [v41 initWithText:0 title:0 isPersonHandle:0 isSuggestableText:0 needsConceptsExtraction:0 needsSuggestableConceptsExtraction:0 drawing:v42 image:0];

  [v43 setRenderDrawingOnHost_];
  (*(v37 + 8))(v39, v40);
  return v43;
}

uint64_t static ImagePlaygroundConcept.drawing(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D2AC6B84();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);

  return swift_storeEnumTagMultiPayload();
}

id static ImagePlaygroundConcept.image(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
  swift_storeEnumTagMultiPayload();

  return a1;
}

uint64_t static ImagePlaygroundConcept.image(_:)@<X0>(CGImageRef *a2@<X8>)
{
  v3 = sub_1D2AC5EA4();
  v4 = CGImageSourceCreateWithURL(v3, 0);

  if (v4 && (PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v4), ImageAtIndex = CGImageSourceCreateImageAtIndex(v4, PrimaryImageIndex, 0), v4, ImageAtIndex))
  {
    *a2 = ImageAtIndex;
    type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
    swift_storeEnumTagMultiPayload();
    v7 = type metadata accessor for ImagePlaygroundConcept(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v7;
    v10 = a2;
    v11 = 0;
  }

  else
  {
    v12 = type metadata accessor for ImagePlaygroundConcept(0);
    v8 = *(*(v12 - 8) + 56);
    v9 = v12;
    v10 = a2;
    v11 = 1;
  }

  return v8(v10, v11, 1, v9);
}

uint64_t sub_1D2A4A7F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D2A4A868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t static ImagePlaygroundConcept.person(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D2A4A944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
  a4[2] = 0;
  a4[3] = 0;
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D2A4A9BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2A4AA28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ImagePlaygroundConcept.init(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D2AC6B84();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v55 - v9;
  if ([a1 isPersonHandle])
  {
    v11 = [a1 text];
    if (v11)
    {
      v12 = v11;
      v13 = sub_1D2AC6C24();
      v15 = v14;

      v55[2] = v13;
      v55[3] = v15;
      v55[0] = 6250335;
      v55[1] = 0xE300000000000000;
      sub_1D2A4B050();
      v16 = sub_1D2AC6FC4();

      if (v16[2] < 2uLL)
      {
        v18 = 0;
        v20 = 0;
        v17 = 0xE000000000000000;
        v19 = 0xE000000000000000;
      }

      else
      {
        v18 = v16[4];
        v17 = v16[5];
        v20 = v16[6];
        v19 = v16[7];
      }

      *a2 = v18;
      a2[1] = v17;
      a2[2] = v20;
      a2[3] = v19;
      type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  if ([a1 isTitle])
  {
    v21 = [a1 text];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1D2AC6C24();
      v25 = v24;

      *a2 = v23;
      a2[1] = v25;
      type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
      goto LABEL_28;
    }
  }

  if ([a1 isSuggestableText])
  {
    v26 = [a1 text];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1D2AC6C24();
      v30 = v29;

      *a2 = v28;
      a2[1] = v30;
      type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
      goto LABEL_28;
    }
  }

  if (![a1 needsConceptsExtraction] || (v31 = objc_msgSend(a1, sel_text)) == 0)
  {
    if (![a1 needsSuggestableConceptsExtraction] || (v37 = objc_msgSend(a1, sel_text)) == 0)
    {
      v44 = [a1 drawing];
      if (v44)
      {
        v45 = v44;
        sub_1D2AC6B74();

        v46 = *(v5 + 32);
        v46(v10, v8, v4);
        v46(a2, v10, v4);
        type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
        return swift_storeEnumTagMultiPayload();
      }

      v48 = [a1 drawingPixelBuffer];
      if (v48 || (v48 = [a1 pixelBuffer]) != 0 || (v48 = objc_msgSend(a1, sel_image)) != 0)
      {
        v49 = v48;

        *a2 = v49;
        type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
      }

      else
      {
        v50 = [a1 text];
        if (v50)
        {
          v51 = v50;
          v52 = sub_1D2AC6C24();
          v54 = v53;
        }

        else
        {

          v52 = 0;
          v54 = 0xE000000000000000;
        }

        *a2 = v52;
        a2[1] = v54;
        type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
      }

      goto LABEL_28;
    }

    v38 = v37;
    v33 = sub_1D2AC6C24();
    v35 = v39;

    v36 = [a1 title];
    if (v36)
    {
      goto LABEL_18;
    }

LABEL_26:

    v41 = 0;
    v43 = 0;
    goto LABEL_27;
  }

  v32 = v31;
  v33 = sub_1D2AC6C24();
  v35 = v34;

  v36 = [a1 title];
  if (!v36)
  {
    goto LABEL_26;
  }

LABEL_18:
  v40 = v36;
  v41 = sub_1D2AC6C24();
  v43 = v42;

LABEL_27:
  *a2 = v33;
  a2[1] = v35;
  a2[2] = v41;
  a2[3] = v43;
  type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
LABEL_28:

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1D2A4B050()
{
  result = qword_1EE088888;
  if (!qword_1EE088888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE088888);
  }

  return result;
}

uint64_t sub_1D2A4B0CC(uint64_t a1)
{
  result = type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D2A4B188(uint64_t a1)
{
  sub_1D2A4B24C(319);
  if (v1 <= 0x3F)
  {
    sub_1D2AC6B84();
    if (v2 <= 0x3F)
    {
      type metadata accessor for CVBuffer(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGImage(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1D2A4B24C(uint64_t a1)
{
  if (!qword_1EC703F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703F20, &qword_1D2ACA9D8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC703F18);
    }
  }
}

ImagePlayground::ImagePlaygroundImageImportPolicy_optional __swiftcall ImagePlaygroundImageImportPolicy.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t getEnumTagSinglePayload for ImagePlaygroundPersonalizationPolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImagePlaygroundPersonalizationPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D2A4B448()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B50, &qword_1D2AC9D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2ACAB40;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  v17 = MEMORY[0x1E69E7CC0];

  sub_1D2A2C9A8(0, 2, 0);
  v6 = v17;
  v8 = *(inited + 32);
  v7 = *(inited + 40);
  v10 = *(v17 + 16);
  v9 = *(v17 + 24);

  if (v10 >= v9 >> 1)
  {
    sub_1D2A2C9A8((v9 > 1), v10 + 1, 1);
    v6 = v17;
  }

  *(v6 + 16) = v10 + 1;
  v11 = v6 + 16 * v10;
  *(v11 + 32) = v8;
  *(v11 + 40) = v7;

  v13 = *(v6 + 16);
  v12 = *(v6 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_1D2A2C9A8((v12 > 1), v13 + 1, 1);
    v6 = v17;
  }

  *(v6 + 16) = v13 + 1;
  v14 = v6 + 16 * v13;
  *(v14 + 32) = v4;
  *(v14 + 40) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703F30, &qword_1D2ACABA0);
  sub_1D2A4B6E8();
  v15 = sub_1D2AC6BB4();

  return v15;
}

uint64_t ContactPersonHandle.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContactPersonHandle.handleString.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

ImagePlayground::ContactPersonHandle __swiftcall ContactPersonHandle.init(name:handleString:)(Swift::String name, Swift::String handleString)
{
  *v2 = name;
  v2[1] = handleString;
  result.handleString = handleString;
  result.name = name;
  return result;
}

uint64_t sub_1D2A4B650(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D2A4B698(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D2A4B6E8()
{
  result = qword_1EC703F38;
  if (!qword_1EC703F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703F30, &qword_1D2ACABA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703F38);
  }

  return result;
}

uint64_t sub_1D2A4B874()
{
  v0 = sub_1D2AC63B4();
  __swift_allocate_value_buffer(v0, qword_1EC703F88);
  __swift_project_value_buffer(v0, qword_1EC703F88);
  return sub_1D2AC63A4();
}

uint64_t sub_1D2A4B9FC()
{
  v0 = sub_1D2AC63B4();
  __swift_allocate_value_buffer(v0, qword_1EC703FB8);
  __swift_project_value_buffer(v0, qword_1EC703FB8);
  return sub_1D2AC63A4();
}

uint64_t sub_1D2A4BC90()
{
  v0 = sub_1D2AC63B4();
  __swift_allocate_value_buffer(v0, qword_1EE088990);
  __swift_project_value_buffer(v0, qword_1EE088990);
  return sub_1D2AC63A4();
}

uint64_t sub_1D2A4BD34()
{
  v0 = sub_1D2AC63B4();
  __swift_allocate_value_buffer(v0, qword_1EC704000);
  __swift_project_value_buffer(v0, qword_1EC704000);
  return sub_1D2AC63A4();
}

uint64_t sub_1D2A4BDDC()
{
  v0 = sub_1D2AC63B4();
  __swift_allocate_value_buffer(v0, qword_1EC704018);
  __swift_project_value_buffer(v0, qword_1EC704018);
  return sub_1D2AC63A4();
}

uint64_t sub_1D2A4BFE0()
{
  v0 = sub_1D2AC63B4();
  __swift_allocate_value_buffer(v0, qword_1EE0889C0);
  __swift_project_value_buffer(v0, qword_1EE0889C0);
  return sub_1D2AC63A4();
}

uint64_t sub_1D2A4C084()
{
  v0 = sub_1D2AC63B4();
  __swift_allocate_value_buffer(v0, qword_1EC704078);
  __swift_project_value_buffer(v0, qword_1EC704078);
  return sub_1D2AC63A4();
}

uint64_t sub_1D2A4C2B0()
{
  v0 = sub_1D2AC63B4();
  __swift_allocate_value_buffer(v0, qword_1EE088438);
  __swift_project_value_buffer(v0, qword_1EE088438);
  return sub_1D2AC63A4();
}

uint64_t sub_1D2A4C564(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D2AC63B4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1D2AC63A4();
}

uint64_t sub_1D2A4C600()
{
  v0 = sub_1D2AC63B4();
  __swift_allocate_value_buffer(v0, qword_1EE0889E0);
  __swift_project_value_buffer(v0, qword_1EE0889E0);
  return sub_1D2AC63A4();
}

uint64_t sub_1D2A4C6A8()
{
  v0 = sub_1D2AC63B4();
  __swift_allocate_value_buffer(v0, qword_1EC704180);
  __swift_project_value_buffer(v0, qword_1EC704180);
  return sub_1D2AC63A4();
}

uint64_t sub_1D2A4C74C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1D2AC63B4();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

void sub_1D2A4C82C(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_1D2AC63B4();
  __swift_project_value_buffer(v4, a2);
  oslog = sub_1D2AC6394();
  v5 = sub_1D2AC6E94();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D2A17000, oslog, v5, "Not implemented yet", v6, 2u);
    MEMORY[0x1D38A8460](v6, -1, -1);
  }
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

double sub_1D2A4C978()
{
  result = 0.0;
  xmmword_1EE0893A0 = 0u;
  unk_1EE0893B0 = 0u;
  xmmword_1EE089380 = 0u;
  unk_1EE089390 = 0u;
  xmmword_1EE089370 = 0u;
  *&xmmword_1EE089360 = 0x6F6974616D696E61;
  *(&xmmword_1EE089360 + 1) = 0xE90000000000006ELL;
  return result;
}

void __swiftcall ImagePlaygroundStyle.init(identifier:)(ImagePlayground::ImagePlaygroundStyle *__return_ptr retstr, Swift::String identifier)
{
  retstr->_representationInfo.value.iconFilename = 0u;
  retstr->_representationInfo.value.providerIconName = 0u;
  retstr->_representationInfo.value.familyName = 0u;
  retstr->_representationInfo.value.backingPrompt = 0u;
  retstr->_representationInfo.value.displayName = 0u;
  retstr->id = identifier;
}

void sub_1D2A4C9C8()
{
  xmmword_1EE089628 = 0u;
  unk_1EE089638 = 0u;
  xmmword_1EE089608 = 0u;
  unk_1EE089618 = 0u;
  xmmword_1EE0895F8 = 0u;
  strcpy(&xmmword_1EE0895E8, "illustration");
  BYTE13(xmmword_1EE0895E8) = 0;
  HIWORD(xmmword_1EE0895E8) = -5120;
}

uint64_t static ImagePlaygroundStyle.illustration.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EE0895E0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EE089618;
  v9[2] = xmmword_1EE089608;
  v9[3] = unk_1EE089618;
  v2 = xmmword_1EE089628;
  v3 = unk_1EE089638;
  v9[4] = xmmword_1EE089628;
  v9[5] = unk_1EE089638;
  v4 = xmmword_1EE0895E8;
  v5 = xmmword_1EE0895F8;
  v9[0] = xmmword_1EE0895E8;
  v9[1] = xmmword_1EE0895F8;
  a1[2] = xmmword_1EE089608;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
  *a1 = v4;
  a1[1] = v5;
  return sub_1D2A2D244(v9, &v8);
}

double sub_1D2A4CA98()
{
  result = 0.0;
  xmmword_1EE089410 = 0u;
  unk_1EE089420 = 0u;
  xmmword_1EE0893F0 = 0u;
  unk_1EE089400 = 0u;
  xmmword_1EE0893E0 = 0u;
  *&xmmword_1EE0893D0 = 0x686374656B73;
  *(&xmmword_1EE0893D0 + 1) = 0xE600000000000000;
  return result;
}

uint64_t static ImagePlaygroundStyle.sketch.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EE0893C8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EE089400;
  v9[2] = xmmword_1EE0893F0;
  v9[3] = unk_1EE089400;
  v2 = xmmword_1EE089410;
  v3 = unk_1EE089420;
  v9[4] = xmmword_1EE089410;
  v9[5] = unk_1EE089420;
  v4 = xmmword_1EE0893D0;
  v5 = xmmword_1EE0893E0;
  v9[0] = xmmword_1EE0893D0;
  v9[1] = xmmword_1EE0893E0;
  a1[2] = xmmword_1EE0893F0;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
  *a1 = v4;
  a1[1] = v5;
  return sub_1D2A2D244(v9, &v8);
}

double sub_1D2A4CB5C()
{
  result = 0.0;
  xmmword_1EE0895B8 = 0u;
  unk_1EE0895C8 = 0u;
  xmmword_1EE089598 = 0u;
  unk_1EE0895A8 = 0u;
  xmmword_1EE089588 = 0u;
  *&xmmword_1EE089578 = 0xD000000000000013;
  *(&xmmword_1EE089578 + 1) = 0x80000001D2ADEB90;
  return result;
}

uint64_t static ImagePlaygroundStyle.externalProvider.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EE089570 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EE0895A8;
  v9[2] = xmmword_1EE089598;
  v9[3] = unk_1EE0895A8;
  v2 = xmmword_1EE0895B8;
  v3 = unk_1EE0895C8;
  v9[4] = xmmword_1EE0895B8;
  v9[5] = unk_1EE0895C8;
  v4 = xmmword_1EE089578;
  v5 = xmmword_1EE089588;
  v9[0] = xmmword_1EE089578;
  v9[1] = xmmword_1EE089588;
  a1[2] = xmmword_1EE089598;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
  *a1 = v4;
  a1[1] = v5;
  return sub_1D2A2D244(v9, &v8);
}

double sub_1D2A4CC28()
{
  result = 0.0;
  xmmword_1EE089480 = 0u;
  unk_1EE089490 = 0u;
  xmmword_1EE089460 = 0u;
  unk_1EE089470 = 0u;
  xmmword_1EE089450 = 0u;
  *&xmmword_1EE089440 = 0x696A6F6D65;
  *(&xmmword_1EE089440 + 1) = 0xE500000000000000;
  return result;
}

uint64_t static ImagePlaygroundStyle.emoji.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EE089438 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EE089470;
  v9[2] = xmmword_1EE089460;
  v9[3] = unk_1EE089470;
  v2 = xmmword_1EE089480;
  v3 = unk_1EE089490;
  v9[4] = xmmword_1EE089480;
  v9[5] = unk_1EE089490;
  v4 = xmmword_1EE089440;
  v5 = xmmword_1EE089450;
  v9[0] = xmmword_1EE089440;
  v9[1] = xmmword_1EE089450;
  a1[2] = xmmword_1EE089460;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
  *a1 = v4;
  a1[1] = v5;
  return sub_1D2A2D244(v9, &v8);
}

double sub_1D2A4CCEC()
{
  result = 0.0;
  xmmword_1EC7041D8 = 0u;
  unk_1EC7041E8 = 0u;
  xmmword_1EC7041B8 = 0u;
  unk_1EC7041C8 = 0u;
  xmmword_1EC7041A8 = 0u;
  *&xmmword_1EC704198 = 0x696A6F6D65;
  *(&xmmword_1EC704198 + 1) = 0xE500000000000000;
  return result;
}

uint64_t static ImagePlaygroundStyle._emojiStyleDeprecated.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EC703610 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EC7041C8;
  v9[2] = xmmword_1EC7041B8;
  v9[3] = unk_1EC7041C8;
  v2 = xmmword_1EC7041D8;
  v3 = unk_1EC7041E8;
  v9[4] = xmmword_1EC7041D8;
  v9[5] = unk_1EC7041E8;
  v4 = xmmword_1EC704198;
  v5 = xmmword_1EC7041A8;
  v9[0] = xmmword_1EC704198;
  v9[1] = xmmword_1EC7041A8;
  a1[2] = xmmword_1EC7041B8;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
  *a1 = v4;
  a1[1] = v5;
  return sub_1D2A2D244(v9, &v8);
}

uint64_t sub_1D2A4CDB0()
{
  if (qword_1EE089438 != -1)
  {
    swift_once();
  }

  v2[2] = xmmword_1EE089460;
  v2[3] = unk_1EE089470;
  v2[4] = xmmword_1EE089480;
  v2[5] = unk_1EE089490;
  v2[0] = xmmword_1EE089440;
  v2[1] = xmmword_1EE089450;
  xmmword_1EC704218 = xmmword_1EE089460;
  unk_1EC704228 = unk_1EE089470;
  xmmword_1EC704238 = xmmword_1EE089480;
  unk_1EC704248 = unk_1EE089490;
  xmmword_1EC7041F8 = xmmword_1EE089440;
  unk_1EC704208 = xmmword_1EE089450;
  return sub_1D2A2D244(v2, &v1);
}

uint64_t static ImagePlaygroundStyle.emojiStyle.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EC703618 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EC704228;
  v9[2] = xmmword_1EC704218;
  v9[3] = unk_1EC704228;
  v2 = xmmword_1EC704238;
  v3 = unk_1EC704248;
  v9[4] = xmmword_1EC704238;
  v9[5] = unk_1EC704248;
  v4 = xmmword_1EC7041F8;
  v5 = unk_1EC704208;
  v9[0] = xmmword_1EC7041F8;
  v9[1] = unk_1EC704208;
  a1[2] = xmmword_1EC704218;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
  *a1 = v4;
  a1[1] = v5;
  return sub_1D2A2D244(v9, &v8);
}

double sub_1D2A4CED0()
{
  result = 0.0;
  xmmword_1EE089548 = 0u;
  unk_1EE089558 = 0u;
  xmmword_1EE089528 = 0u;
  unk_1EE089538 = 0u;
  xmmword_1EE089518 = 0u;
  *&xmmword_1EE089508 = 0xD000000000000013;
  *(&xmmword_1EE089508 + 1) = 0x80000001D2ADEB70;
  return result;
}

uint64_t static ImagePlaygroundStyle.messagesBackground.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EE089500 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EE089538;
  v9[2] = xmmword_1EE089528;
  v9[3] = unk_1EE089538;
  v2 = xmmword_1EE089548;
  v3 = unk_1EE089558;
  v9[4] = xmmword_1EE089548;
  v9[5] = unk_1EE089558;
  v4 = xmmword_1EE089508;
  v5 = xmmword_1EE089518;
  v9[0] = xmmword_1EE089508;
  v9[1] = xmmword_1EE089518;
  a1[2] = xmmword_1EE089528;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
  *a1 = v4;
  a1[1] = v5;
  return sub_1D2A2D244(v9, &v8);
}

char *static ImagePlaygroundStyle.allPlaygroundAndGenmojiStyles.getter(uint64_t a1)
{
  v1 = _s15ImagePlayground0aB5StyleV3allSayACGvgZ_0();
  *(&v13 + 1) = &type metadata for ImagePlaygroundFeatures;
  *&v14 = sub_1D2A4FF8C();
  LOBYTE(v12) = 1;
  v2 = sub_1D2AC60E4();
  __swift_destroy_boxed_opaque_existential_0(&v12);
  if (v2)
  {
    if (qword_1EE089438 != -1)
    {
      swift_once();
    }

    v14 = xmmword_1EE089460;
    v15 = unk_1EE089470;
    v16 = xmmword_1EE089480;
    v17 = unk_1EE089490;
    v12 = xmmword_1EE089440;
    v13 = xmmword_1EE089450;
    sub_1D2A2D244(&v12, &v11);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1D2A4474C(0, *(v1 + 2) + 1, 1, v1);
    }

    v4 = *(v1 + 2);
    v3 = *(v1 + 3);
    if (v4 >= v3 >> 1)
    {
      v1 = sub_1D2A4474C((v3 > 1), v4 + 1, 1, v1);
    }

    *(v1 + 2) = v4 + 1;
    v5 = &v1[96 * v4];
    v6 = v13;
    *(v5 + 2) = v12;
    *(v5 + 3) = v6;
    v7 = v14;
    v8 = v15;
    v9 = v17;
    *(v5 + 6) = v16;
    *(v5 + 7) = v9;
    *(v5 + 4) = v7;
    *(v5 + 5) = v8;
  }

  return v1;
}

uint64_t ImagePlaygroundStyle.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.displayName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.familyName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.familyName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.backingPrompt.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.backingPrompt.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.iconFilename.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.iconFilename.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.providerIconName.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.providerIconName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

void __swiftcall ImagePlaygroundStyle.RepresentationInfo.init(displayName:familyName:backingPrompt:iconFilename:providerIconName:)(ImagePlayground::ImagePlaygroundStyle::RepresentationInfo *__return_ptr retstr, Swift::String displayName, Swift::String familyName, Swift::String_optional backingPrompt, Swift::String iconFilename, Swift::String_optional providerIconName)
{
  retstr->displayName = displayName;
  retstr->familyName = familyName;
  retstr->backingPrompt = backingPrompt;
  retstr->iconFilename = iconFilename;
  retstr->providerIconName = providerIconName;
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.id.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x1D38A7100](v1, v2);
  return v4;
}

uint64_t sub_1D2A4D42C()
{
  v1 = *v0;
  v2 = 0x4E79616C70736964;
  v3 = 0x50676E696B636162;
  v4 = 0x656C69466E6F6369;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x614E796C696D6166;
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

uint64_t sub_1D2A4D4EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D2A50ADC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D2A4D52C(uint64_t a1)
{
  v2 = sub_1D2A50198();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A4D568(uint64_t a1)
{
  v2 = sub_1D2A50198();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704258, &qword_1D2ACABC0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v7 = v1[2];
  v13[7] = v1[3];
  v13[8] = v7;
  v8 = v1[4];
  v13[5] = v1[5];
  v13[6] = v8;
  v9 = v1[6];
  v13[3] = v1[7];
  v13[4] = v9;
  v10 = v1[8];
  v13[1] = v1[9];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A50198();
  sub_1D2AC74A4();
  v18 = 0;
  v11 = v13[9];
  sub_1D2AC72D4();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v17 = 1;
  sub_1D2AC72D4();
  v16 = 2;
  sub_1D2AC72A4();
  v15 = 3;
  sub_1D2AC72D4();
  v14 = 4;
  sub_1D2AC72A4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 72);
  sub_1D2AC6C74();
  sub_1D2AC6C74();
  sub_1D2AC7464();
  if (v2)
  {
    sub_1D2AC6C74();
  }

  sub_1D2AC6C74();
  if (!v3)
  {
    return sub_1D2AC7464();
  }

  sub_1D2AC7464();

  return sub_1D2AC6C74();
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.hashValue.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 72);
  sub_1D2AC7444();
  sub_1D2AC6C74();
  sub_1D2AC6C74();
  sub_1D2AC7464();
  if (v1)
  {
    sub_1D2AC6C74();
  }

  sub_1D2AC6C74();
  sub_1D2AC7464();
  if (v2)
  {
    sub_1D2AC6C74();
  }

  return sub_1D2AC7484();
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704268, &qword_1D2ACABC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A50198();
  sub_1D2AC7494();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v35[0]) = 0;
  v9 = sub_1D2AC7234();
  v29 = v10;
  LOBYTE(v35[0]) = 1;
  v11 = sub_1D2AC7234();
  v28 = v12;
  v26 = v11;
  LOBYTE(v35[0]) = 2;
  *&v25 = sub_1D2AC7204();
  *(&v25 + 1) = v13;
  LOBYTE(v35[0]) = 3;
  v24 = sub_1D2AC7234();
  v27 = v14;
  v36 = 4;
  v15 = sub_1D2AC7204();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  *&v30 = v9;
  *(&v30 + 1) = v29;
  v18 = v28;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  v19 = *(&v25 + 1);
  v32 = v25;
  v20 = v27;
  *&v33 = v24;
  *(&v33 + 1) = v27;
  *&v34 = v15;
  *(&v34 + 1) = v17;
  v21 = v33;
  a2[2] = v25;
  a2[3] = v21;
  a2[4] = v34;
  v22 = v31;
  *a2 = v30;
  a2[1] = v22;
  sub_1D2A501EC(&v30, v35);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v35[0] = v9;
  v35[1] = v29;
  v35[2] = v26;
  v35[3] = v18;
  v35[4] = v25;
  v35[5] = v19;
  v35[6] = v24;
  v35[7] = v20;
  v35[8] = v15;
  v35[9] = v17;
  return sub_1D2A50224(v35);
}

uint64_t sub_1D2A4DDB4()
{
  sub_1D2AC7444();
  ImagePlaygroundStyle.RepresentationInfo.hash(into:)(v1);
  return sub_1D2AC7484();
}

uint64_t sub_1D2A4DDF8(uint64_t a1)
{
  sub_1D2AC7444();
  ImagePlaygroundStyle.RepresentationInfo.hash(into:)(v2);
  return sub_1D2AC7484();
}

uint64_t sub_1D2A4DE34@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = *v1;
  v7 = v1[1];

  result = MEMORY[0x1D38A7100](v3, v4);
  *a1 = v6;
  a1[1] = v7;
  return result;
}

void ImagePlaygroundStyle.representationInfo.getter(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  v21 = *(v1 + 3);
  v22 = v5;
  v23 = *(v1 + 5);
  v6 = *(v1 + 2);
  v19 = *(v1 + 1);
  v20 = v6;
  if (qword_1EE089570 != -1)
  {
    v11 = v3;
    v12 = v4;
    swift_once();
    v4 = v12;
    v3 = v11;
  }

  if (__PAIR128__(v4, v3) != xmmword_1EE089578 && (sub_1D2AC7354() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (qword_1EE0894A0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE0894A8);
  v16 = *&algn_1EE0894AC[36];
  v17 = *&algn_1EE0894AC[52];
  v18 = *&algn_1EE0894AC[68];
  v14 = *&algn_1EE0894AC[4];
  v15 = *&algn_1EE0894AC[20];
  sub_1D2A50254(&v14, &v13);
  os_unfair_lock_unlock(&dword_1EE0894A8);
  if (*(&v14 + 1))
  {
    v7 = v17;
    a1[2] = v16;
    a1[3] = v7;
    a1[4] = v18;
    v8 = v15;
    *a1 = v14;
    a1[1] = v8;
  }

  else
  {
LABEL_9:
    v9 = v22;
    a1[2] = v21;
    a1[3] = v9;
    a1[4] = v23;
    v10 = v20;
    *a1 = v19;
    a1[1] = v10;
    sub_1D2A50254(&v19, &v14);
  }
}

__n128 ImagePlaygroundStyle.representationInfo.setter(uint64_t a1)
{
  v3 = v1[4];
  v7[2] = v1[3];
  v7[3] = v3;
  v7[4] = v1[5];
  v4 = v1[2];
  v7[0] = v1[1];
  v7[1] = v4;
  sub_1D2A2E61C(v7, &qword_1EC704270, &qword_1D2ACABD0);
  v5 = *(a1 + 48);
  v1[3] = *(a1 + 32);
  v1[4] = v5;
  v1[5] = *(a1 + 64);
  result = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = result;
  return result;
}

void static ImagePlaygroundStyle.externalProviderRepresentationInfo.getter(_OWORD *a1@<X8>)
{
  if (qword_1EE0894A0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE0894A8);
  v2 = *&algn_1EE0894AC[20];
  v3 = *&algn_1EE0894AC[52];
  v7[2] = *&algn_1EE0894AC[36];
  v7[3] = *&algn_1EE0894AC[52];
  v7[4] = *&algn_1EE0894AC[68];
  v4 = *&algn_1EE0894AC[68];
  v7[0] = *&algn_1EE0894AC[4];
  v5 = *&algn_1EE0894AC[4];
  v7[1] = *&algn_1EE0894AC[20];
  a1[2] = *&algn_1EE0894AC[36];
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v2;
  sub_1D2A50254(v7, &v6);
  os_unfair_lock_unlock(&dword_1EE0894A8);
}

void (*ImagePlaygroundStyle.representationInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1E8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 480) = v1;
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v1 + 5);
  v9 = *(v1 + 2);
  v8 = *(v1 + 3);
  *(v4 + 48) = *(v1 + 4);
  *(v4 + 64) = v7;
  *(v4 + 16) = v9;
  *(v4 + 32) = v8;
  *v4 = *(v1 + 1);
  if (qword_1EE089570 != -1)
  {
    v17 = v5;
    v18 = v6;
    swift_once();
    v6 = v18;
    v5 = v17;
  }

  if (__PAIR128__(v6, v5) != xmmword_1EE089578 && (sub_1D2AC7354() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (qword_1EE0894A0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE0894A8);
  v10 = *&algn_1EE0894AC[20];
  v11 = *&algn_1EE0894AC[52];
  *(v4 + 192) = *&algn_1EE0894AC[36];
  *(v4 + 208) = v11;
  *(v4 + 224) = *&algn_1EE0894AC[68];
  *(v4 + 160) = *&algn_1EE0894AC[4];
  *(v4 + 176) = v10;
  sub_1D2A50254(v4 + 160, v4 + 240);
  os_unfair_lock_unlock(&dword_1EE0894A8);
  if (*(v4 + 168))
  {
    v12 = *(v4 + 208);
    *(v4 + 112) = *(v4 + 192);
    *(v4 + 128) = v12;
    *(v4 + 144) = *(v4 + 224);
    v13 = *(v4 + 176);
    *(v4 + 80) = *(v4 + 160);
    *(v4 + 96) = v13;
  }

  else
  {
LABEL_12:
    v14 = *(v4 + 48);
    *(v4 + 112) = *(v4 + 32);
    *(v4 + 128) = v14;
    *(v4 + 144) = *(v4 + 64);
    v15 = *(v4 + 16);
    *(v4 + 80) = *v4;
    *(v4 + 96) = v15;
    sub_1D2A50254(v4, v4 + 160);
  }

  return sub_1D2A4E2CC;
}

void sub_1D2A4E2CC(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 480);
    v4 = *(v2 + 128);
    *(v2 + 352) = *(v2 + 112);
    *(v2 + 368) = v4;
    *(v2 + 384) = *(v2 + 144);
    v5 = *(v2 + 96);
    *(v2 + 320) = *(v2 + 80);
    *(v2 + 336) = v5;
    v7 = v3[2];
    v6 = v3[3];
    v8 = v3[5];
    *(v2 + 288) = v3[4];
    *(v2 + 304) = v8;
    *(v2 + 256) = v7;
    *(v2 + 272) = v6;
    *(v2 + 240) = v3[1];
    sub_1D2A50254(v2 + 320, v2 + 400);
    sub_1D2A2E61C(v2 + 240, &qword_1EC704270, &qword_1D2ACABD0);
    v3[1] = *(v2 + 320);
    v9 = *(v2 + 384);
    v11 = *(v2 + 336);
    v10 = *(v2 + 352);
    v3[4] = *(v2 + 368);
    v3[5] = v9;
    v3[2] = v11;
    v3[3] = v10;
    v12 = *(v2 + 128);
    *(v2 + 192) = *(v2 + 112);
    *(v2 + 208) = v12;
    *(v2 + 224) = *(v2 + 144);
    v13 = *(v2 + 96);
    *(v2 + 160) = *(v2 + 80);
    *(v2 + 176) = v13;
    sub_1D2A2E61C(v2 + 160, &qword_1EC704270, &qword_1D2ACABD0);
  }

  else
  {
    v14 = *(v2 + 480);
    v20 = *(v2 + 112);
    v21 = *(v2 + 128);
    v22 = *(v2 + 144);
    v18 = *(v2 + 80);
    v19 = *(v2 + 96);
    *(v2 + 160) = v14[1];
    v15 = v14[5];
    v17 = v14[2];
    v16 = v14[3];
    *(v2 + 208) = v14[4];
    *(v2 + 224) = v15;
    *(v2 + 176) = v17;
    *(v2 + 192) = v16;
    sub_1D2A2E61C(v2 + 160, &qword_1EC704270, &qword_1D2ACABD0);
    v14[3] = v20;
    v14[4] = v21;
    v14[5] = v22;
    v14[1] = v18;
    v14[2] = v19;
  }

  free(v2);
}

uint64_t ImagePlaygroundStyle.supportsImportedImage.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_1EE089438 != -1)
  {
    v6 = *v0;
    v7 = v0[1];
    swift_once();
    v2 = v7;
    v1 = v6;
  }

  if (xmmword_1EE089440 == v1 && *(&xmmword_1EE089440 + 1) == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1D2AC7354() ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D2A4E4AC()
{
  v1 = v0[3];
  v79 = v0[2];
  v80 = v1;
  v2 = v0[5];
  v81 = v0[4];
  v82 = v2;
  v3 = v0[1];
  v77 = *v0;
  v78 = v3;
  if (qword_1EE089358 != -1)
  {
    swift_once();
  }

  v83[2] = xmmword_1EE089380;
  v83[3] = unk_1EE089390;
  v83[4] = xmmword_1EE0893A0;
  v83[5] = unk_1EE0893B0;
  v83[0] = xmmword_1EE089360;
  v83[1] = xmmword_1EE089370;
  v73 = xmmword_1EE089380;
  v74 = unk_1EE089390;
  v75 = xmmword_1EE0893A0;
  v76 = unk_1EE0893B0;
  v71 = xmmword_1EE089360;
  v72 = xmmword_1EE089370;
  v4 = v0[3];
  v67 = v0[2];
  v68 = v4;
  v5 = v0[5];
  v69 = v0[4];
  v70 = v5;
  v6 = v0[1];
  v65 = *v0;
  v66 = v6;
  sub_1D2A2D244(v83, v84);
  v7 = _s15ImagePlayground0aB5StyleV2eeoiySbAC_ACtFZ_0(&v71, &v65);
  v84[2] = v73;
  v84[3] = v74;
  v84[4] = v75;
  v84[5] = v76;
  v84[0] = v71;
  v84[1] = v72;
  sub_1D2A2DDA8(v84);
  if (v7)
  {
    return 0;
  }

  if (qword_1EE0895E0 != -1)
  {
    swift_once();
  }

  v67 = xmmword_1EE089608;
  v68 = unk_1EE089618;
  v69 = xmmword_1EE089628;
  v70 = unk_1EE089638;
  v65 = xmmword_1EE0895E8;
  v66 = xmmword_1EE0895F8;
  v61 = xmmword_1EE089608;
  v62 = unk_1EE089618;
  v63 = xmmword_1EE089628;
  v64 = unk_1EE089638;
  v59 = xmmword_1EE0895E8;
  v60 = xmmword_1EE0895F8;
  v9 = v0[3];
  v55 = v0[2];
  v56 = v9;
  v10 = v0[5];
  v57 = v0[4];
  v58 = v10;
  v11 = v0[1];
  v53 = *v0;
  v54 = v11;
  sub_1D2A2D244(&v65, &v47);
  v12 = _s15ImagePlayground0aB5StyleV2eeoiySbAC_ACtFZ_0(&v59, &v53);
  v73 = v61;
  v74 = v62;
  v75 = v63;
  v76 = v64;
  v71 = v59;
  v72 = v60;
  sub_1D2A2DDA8(&v71);
  if (v12)
  {
    return 1;
  }

  if (qword_1EE0893C8 != -1)
  {
    swift_once();
  }

  v55 = xmmword_1EE0893F0;
  v56 = unk_1EE089400;
  v57 = xmmword_1EE089410;
  v58 = unk_1EE089420;
  v53 = xmmword_1EE0893D0;
  v54 = xmmword_1EE0893E0;
  v49 = xmmword_1EE0893F0;
  v50 = unk_1EE089400;
  v51 = xmmword_1EE089410;
  v52 = unk_1EE089420;
  v47 = xmmword_1EE0893D0;
  v48 = xmmword_1EE0893E0;
  v13 = v0[3];
  v43 = v0[2];
  v44 = v13;
  v14 = v0[5];
  v45 = v0[4];
  v46 = v14;
  v15 = v0[1];
  v41 = *v0;
  v42 = v15;
  sub_1D2A2D244(&v53, &v35);
  v16 = _s15ImagePlayground0aB5StyleV2eeoiySbAC_ACtFZ_0(&v47, &v41);
  v61 = v49;
  v62 = v50;
  v63 = v51;
  v64 = v52;
  v59 = v47;
  v60 = v48;
  sub_1D2A2DDA8(&v59);
  if (v16)
  {
    return 2;
  }

  if (qword_1EE089438 != -1)
  {
    swift_once();
  }

  v43 = xmmword_1EE089460;
  v44 = unk_1EE089470;
  v45 = xmmword_1EE089480;
  v46 = unk_1EE089490;
  v41 = xmmword_1EE089440;
  v42 = xmmword_1EE089450;
  v37 = xmmword_1EE089460;
  v38 = unk_1EE089470;
  v39 = xmmword_1EE089480;
  v40 = unk_1EE089490;
  v35 = xmmword_1EE089440;
  v36 = xmmword_1EE089450;
  v17 = v0[3];
  v31 = v0[2];
  v32 = v17;
  v18 = v0[5];
  v33 = v0[4];
  v34 = v18;
  v19 = v0[1];
  v29 = *v0;
  v30 = v19;
  sub_1D2A2D244(&v41, &v23);
  v20 = _s15ImagePlayground0aB5StyleV2eeoiySbAC_ACtFZ_0(&v35, &v29);
  v49 = v37;
  v50 = v38;
  v51 = v39;
  v52 = v40;
  v47 = v35;
  v48 = v36;
  sub_1D2A2DDA8(&v47);
  if (v20)
  {
    return 3;
  }

  if (qword_1EE089570 != -1)
  {
    swift_once();
  }

  v31 = xmmword_1EE089598;
  v32 = unk_1EE0895A8;
  v33 = xmmword_1EE0895B8;
  v34 = unk_1EE0895C8;
  v29 = xmmword_1EE089578;
  v30 = xmmword_1EE089588;
  v25 = xmmword_1EE089598;
  v26 = unk_1EE0895A8;
  v27 = xmmword_1EE0895B8;
  v28 = unk_1EE0895C8;
  v23 = xmmword_1EE089578;
  v24 = xmmword_1EE089588;
  v22[2] = v79;
  v22[3] = v80;
  v22[4] = v81;
  v22[5] = v82;
  v22[0] = v77;
  v22[1] = v78;
  sub_1D2A2D244(&v29, &v35);
  v21 = _s15ImagePlayground0aB5StyleV2eeoiySbAC_ACtFZ_0(&v23, v22);
  v37 = v25;
  v38 = v26;
  v39 = v27;
  v40 = v28;
  v35 = v23;
  v36 = v24;
  sub_1D2A2DDA8(&v35);
  if (v21)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D2A4E8B4()
{
  qword_1EE088748 = &type metadata for ImagePlaygroundStyle.StyleSorter;
  result = sub_1D2A50CAC();
  qword_1EE088750 = result;
  byte_1EE088730 = 0;
  return result;
}

uint64_t static ImagePlaygroundStyle.sorter.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EE088728 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1D2A502C4(&byte_1EE088730, v2);
}

__n128 sub_1D2A4E960@<Q0>(uint64_t a1@<X8>)
{
  if (qword_1EE0894A0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE0894A8);
  v7 = *&algn_1EE0894AC[36];
  v8 = *&algn_1EE0894AC[52];
  v9 = *&algn_1EE0894AC[68];
  v5 = *&algn_1EE0894AC[4];
  v6 = *&algn_1EE0894AC[20];
  sub_1D2A50254(&v5, &v4);
  os_unfair_lock_unlock(&dword_1EE0894A8);
  v2 = v8;
  *(a1 + 32) = v7;
  *(a1 + 48) = v2;
  *(a1 + 64) = v9;
  result = v6;
  *a1 = v5;
  *(a1 + 16) = result;
  return result;
}

void sub_1D2A4EA14(__int128 *a1)
{
  v1 = a1[3];
  v5 = a1[2];
  v6 = v1;
  v7 = a1[4];
  v2 = a1[1];
  v3 = *a1;
  v4 = v2;
  sub_1D2A50254(&v3, v8);
  if (qword_1EE0894A0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE0894A8);
  v8[2] = *&algn_1EE0894AC[36];
  v8[3] = *&algn_1EE0894AC[52];
  v8[4] = *&algn_1EE0894AC[68];
  v8[0] = *&algn_1EE0894AC[4];
  v8[1] = *&algn_1EE0894AC[20];
  sub_1D2A2E61C(v8, &qword_1EC704270, &qword_1D2ACABD0);
  *&algn_1EE0894AC[20] = v4;
  *&algn_1EE0894AC[36] = v5;
  *&algn_1EE0894AC[52] = v6;
  *&algn_1EE0894AC[68] = v7;
  *&algn_1EE0894AC[4] = v3;
  os_unfair_lock_unlock(&dword_1EE0894A8);
}

void static ImagePlaygroundStyle.externalProviderRepresentationInfo.setter(__int128 *a1)
{
  if (qword_1EE0894A0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE0894A8);
  v4[2] = *&algn_1EE0894AC[36];
  v4[3] = *&algn_1EE0894AC[52];
  v4[4] = *&algn_1EE0894AC[68];
  v4[0] = *&algn_1EE0894AC[4];
  v4[1] = *&algn_1EE0894AC[20];
  sub_1D2A2E61C(v4, &qword_1EC704270, &qword_1D2ACABD0);
  v2 = *a1;
  *&algn_1EE0894AC[20] = a1[1];
  v3 = a1[3];
  *&algn_1EE0894AC[36] = a1[2];
  *&algn_1EE0894AC[52] = v3;
  *&algn_1EE0894AC[68] = a1[4];
  *&algn_1EE0894AC[4] = v2;
  os_unfair_lock_unlock(&dword_1EE0894A8);
}

uint64_t (*static ImagePlaygroundStyle.externalProviderRepresentationInfo.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x1E0uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_1EE0894A0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE0894A8);
  *v3 = *&algn_1EE0894AC[4];
  v4 = *&algn_1EE0894AC[20];
  v5 = *&algn_1EE0894AC[36];
  v6 = *&algn_1EE0894AC[68];
  v3[3] = *&algn_1EE0894AC[52];
  v3[4] = v6;
  v3[1] = v4;
  v3[2] = v5;
  v7 = *&algn_1EE0894AC[20];
  v8 = *&algn_1EE0894AC[52];
  v3[7] = *&algn_1EE0894AC[36];
  v3[8] = v8;
  v3[9] = *&algn_1EE0894AC[68];
  v3[5] = *&algn_1EE0894AC[4];
  v3[6] = v7;
  sub_1D2A50254(v3, (v3 + 10));
  os_unfair_lock_unlock(&dword_1EE0894A8);
  return sub_1D2A4ECC4;
}

void sub_1D2A4ECC4(_OWORD **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[8];
    v2[22] = v2[7];
    v2[23] = v3;
    v2[24] = v2[9];
    v4 = v2[6];
    v2[20] = v2[5];
    v2[21] = v4;
    sub_1D2A50254((v2 + 20), (v2 + 25));
    os_unfair_lock_lock(&dword_1EE0894A8);
    v5 = *&algn_1EE0894AC[20];
    v6 = *&algn_1EE0894AC[52];
    v2[17] = *&algn_1EE0894AC[36];
    v2[18] = v6;
    v2[19] = *&algn_1EE0894AC[68];
    v2[15] = *&algn_1EE0894AC[4];
    v2[16] = v5;
    sub_1D2A2E61C((v2 + 15), &qword_1EC704270, &qword_1D2ACABD0);
    v7 = v2[20];
    *&algn_1EE0894AC[20] = v2[21];
    v8 = v2[23];
    *&algn_1EE0894AC[36] = v2[22];
    *&algn_1EE0894AC[52] = v8;
    *&algn_1EE0894AC[68] = v2[24];
    *&algn_1EE0894AC[4] = v7;
    os_unfair_lock_unlock(&dword_1EE0894A8);
    v9 = v2[8];
    v2[12] = v2[7];
    v2[13] = v9;
    v2[14] = v2[9];
    v10 = v2[6];
    v2[10] = v2[5];
    v2[11] = v10;
    sub_1D2A2E61C((v2 + 10), &qword_1EC704270, &qword_1D2ACABD0);
  }

  else
  {
    v15 = v2[7];
    v16 = v2[8];
    v17 = v2[9];
    v13 = v2[5];
    v14 = v2[6];
    os_unfair_lock_lock(&dword_1EE0894A8);
    v11 = *&algn_1EE0894AC[20];
    v12 = *&algn_1EE0894AC[52];
    v2[12] = *&algn_1EE0894AC[36];
    v2[13] = v12;
    v2[14] = *&algn_1EE0894AC[68];
    v2[10] = *&algn_1EE0894AC[4];
    v2[11] = v11;
    sub_1D2A2E61C((v2 + 10), &qword_1EC704270, &qword_1D2ACABD0);
    *&algn_1EE0894AC[20] = v14;
    *&algn_1EE0894AC[36] = v15;
    *&algn_1EE0894AC[52] = v16;
    *&algn_1EE0894AC[68] = v17;
    *&algn_1EE0894AC[4] = v13;
    os_unfair_lock_unlock(&dword_1EE0894A8);
  }

  free(v2);
}

double sub_1D2A4EE5C()
{
  dword_1EE0894A8 = 0;
  result = 0.0;
  *&algn_1EE0894AC[4] = 0u;
  *&algn_1EE0894AC[20] = 0u;
  *&algn_1EE0894AC[36] = 0u;
  *&algn_1EE0894AC[52] = 0u;
  *&algn_1EE0894AC[68] = 0u;
  return result;
}

uint64_t ImagePlaygroundStyle.requiresExternalProvider.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = qword_1EE089570;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = v2 == xmmword_1EE089578 && v1 == *(&xmmword_1EE089578 + 1);
  if (v4 || (sub_1D2AC7354() & 1) != 0)
  {

    v5 = 1;
  }

  else
  {
    sub_1D2A4B050();
    v5 = sub_1D2AC6FD4();
  }

  return v5 & 1;
}

uint64_t sub_1D2A4F008()
{
  sub_1D2AC7444();
  sub_1D2AC6054();
  return sub_1D2AC7484();
}

uint64_t sub_1D2A4F058(uint64_t a1)
{
  sub_1D2AC7444();
  sub_1D2AC6054();
  return sub_1D2AC7484();
}

uint64_t sub_1D2A4F0AC()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D2A4F0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D2AC7354() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D2ADEB50 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D2AC7354();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D2A4F1BC(uint64_t a1)
{
  v2 = sub_1D2A505A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A4F1F8(uint64_t a1)
{
  v2 = sub_1D2A505A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}