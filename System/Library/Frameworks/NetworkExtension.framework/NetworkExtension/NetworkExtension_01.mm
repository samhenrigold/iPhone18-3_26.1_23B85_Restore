uint64_t sub_1BA856014()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1BA857574;
  }

  else
  {

    v2 = sub_1BA856130;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BA856130(uint64_t a1)
{
  v111 = v1;
  v2 = v1;
  v3 = sub_1BAA398AC();
  v4 = sub_1BAA39F9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BA83C000, v3, v4, "NEExtensionBaseProviderHost - created new appExtensionMonitor", v5, 2u);
    MEMORY[0x1BFAFC150](v5, -1, -1);
  }

  v6 = v1[23];

  v7 = v6;
  v8 = sub_1BAA398AC();
  v9 = sub_1BAA39F9C();

  v104 = v1;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[23];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v110 = v12;
    *v11 = 136315138;
    v13 = [v10 extensionPointName];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1BAA39D9C();
      v17 = v16;

      v2 = v1;
    }

    else
    {
      v15 = 0;
      v17 = 0xE000000000000000;
    }

    v18 = sub_1BA85AE0C(v15, v17, &v110);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_1BA83C000, v8, v9, "NEExtensionBaseProviderHost - added extension point %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1BFAFC150](v12, -1, -1);
    MEMORY[0x1BFAFC150](v11, -1, -1);
  }

  if (*(v2[23] + v2[35]))
  {
    v19 = sub_1BAA397BC();
    v20 = *(v19 - 8);
    v21 = swift_task_alloc();

    sub_1BAA397CC();
    v22 = sub_1BAA397AC();

    (*(v20 + 8))(v21, v19);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v23 = sub_1BAA398AC();
  v24 = sub_1BAA39F9C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = v2[31];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v110 = v27;
    *v26 = 136315138;
    v28 = MEMORY[0x1BFAF8B50](v22, v25);
    v30 = sub_1BA85AE0C(v28, v29, &v110);

    *(v26 + 4) = v30;
    v2 = v104;
    _os_log_impl(&dword_1BA83C000, v23, v24, "NEExtensionBaseProviderHost - identities %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1BFAFC150](v27, -1, -1);
    MEMORY[0x1BFAFC150](v26, -1, -1);
  }

  v108 = *(v22 + 16);
  if (!v108)
  {
LABEL_25:

    v50 = sub_1BAA398AC();
    v51 = sub_1BAA39F9C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1BA83C000, v50, v51, "NEExtensionBaseProviderHost - no matching extension found", v52, 2u);
      MEMORY[0x1BFAFC150](v52, -1, -1);
    }

    v53 = v2[30];
    v55 = v2[27];
    v54 = v2[28];
    v56 = v2[26];

    (*(v55 + 8))(v54, v56);
    sub_1BA84BC58(v53, &qword_1EBC0ECA8, &qword_1BAA4D0A0);

    v57 = v2[1];

    return v57(0);
  }

  v33 = 0;
  v34 = v2[32];
  v106 = v22 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v35 = (v34 + 8);
  v103 = (v34 + 8);
  while (1)
  {
    if (v33 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_42;
    }

    v36 = v2[31];
    v37 = v2[23];
    v38 = v106 + *(v34 + 72) * v33;
    v39 = swift_task_alloc();
    (*(v34 + 16))(v39, v38, v36);
    v40 = sub_1BAA3987C();
    v42 = v41;
    v43 = [v37 extensionBundleIdentifier];
    if (!v43)
    {

      goto LABEL_16;
    }

    v44 = v43;
    v45 = sub_1BAA39D9C();
    v47 = v46;

    if (v40 == v45 && v42 == v47)
    {
      break;
    }

    v49 = sub_1BAA3A15C();

    v35 = (v34 + 8);
    v2 = v104;
    if (v49)
    {
      goto LABEL_31;
    }

LABEL_16:
    ++v33;
    (*v35)(v39, v2[31]);

    if (v108 == v33)
    {
      goto LABEL_25;
    }
  }

  v2 = v104;
LABEL_31:

  v59 = v2[33];
  v60 = v2[31];
  v61 = v2[32];
  v62 = v2[30];
  sub_1BA84BC58(v62, &qword_1EBC0ECA8, &qword_1BAA4D0A0);
  (*(v61 + 32))(v62, v39, v60);
  v59(v62, 0, 1, v60);

  v63 = sub_1BAA398AC();
  v64 = sub_1BAA39F9C();
  if (os_log_type_enabled(v63, v64))
  {
    log = v63;
    v66 = v2[31];
    v65 = v2[32];
    v67 = v2;
    v68 = v2[30];
    v69 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v110 = v102;
    *v69 = 136315650;
    swift_beginAccess();
    v70 = swift_task_alloc();
    sub_1BA84985C(v68, v70, &qword_1EBC0ECA8, &qword_1BAA4D0A0);
    v109 = *(v65 + 48);
    v31 = v109(v70, 1, v66);
    if (v31 != 1)
    {
      v72 = v67[30];
      v71 = v67[31];
      v73 = sub_1BAA3988C();
      v75 = v74;
      v107 = *v103;
      (*v103)(v70, v71);

      v76 = sub_1BA85AE0C(v73, v75, &v110);

      *(v69 + 4) = v76;
      *(v69 + 12) = 2080;
      v77 = swift_task_alloc();
      sub_1BA84985C(v72, v77, &qword_1EBC0ECA8, &qword_1BAA4D0A0);
      v31 = v109(v77, 1, v71);
      if (v31 != 1)
      {
        v79 = v67[30];
        v78 = v67[31];
        v80 = sub_1BAA3987C();
        v82 = v81;
        v107(v77, v78);

        v83 = sub_1BA85AE0C(v80, v82, &v110);

        *(v69 + 14) = v83;
        *(v69 + 22) = 2080;
        v84 = swift_task_alloc();
        sub_1BA84985C(v79, v84, &qword_1EBC0ECA8, &qword_1BAA4D0A0);
        v31 = v109(v84, 1, v78);
        if (v31 != 1)
        {
          v85 = v67[31];
          v86 = sub_1BAA3986C();
          v88 = v87;
          v107(v84, v85);

          v89 = sub_1BA85AE0C(v86, v88, &v110);

          *(v69 + 24) = v89;
          _os_log_impl(&dword_1BA83C000, log, v64, "NEExtensionBaseProviderHost - found extension - <%s> <%s> <%s>", v69, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1BFAFC150](v102, -1, -1);
          MEMORY[0x1BFAFC150](v69, -1, -1);

          v2 = v67;
          goto LABEL_37;
        }

LABEL_45:
        __break(1u);
        return MEMORY[0x1EEDC0880](v31, v32);
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_37:
  v90 = v2;
  v91 = v2[32];
  v93 = v90[30];
  v92 = v90[31];
  v94 = sub_1BAA3982C();
  v90[39] = v94;
  v95 = *(v94 - 8);
  v90[40] = v95;
  v90[41] = swift_task_alloc();
  swift_beginAccess();
  v96 = swift_task_alloc();
  sub_1BA84985C(v93, v96, &qword_1EBC0ECA8, &qword_1BAA4D0A0);
  v31 = (*(v91 + 48))(v96, 1, v92);
  if (v31 == 1)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  sub_1BAA3981C();

  v97 = sub_1BAA3985C();
  v90[42] = v97;
  v98 = *(v97 - 8);
  v90[43] = v98;
  v90[44] = *(v98 + 64);
  v99 = swift_task_alloc();
  v90[45] = v99;
  v100 = swift_task_alloc();
  v90[46] = v100;
  (*(v95 + 16))();
  v101 = swift_task_alloc();
  v90[47] = v101;
  *v101 = v90;
  v101[1] = sub_1BA856C98;
  v31 = v99;
  v32 = v100;

  return MEMORY[0x1EEDC0880](v31, v32);
}

uint64_t sub_1BA856C98()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_1BA857728;
  }

  else
  {

    v2 = sub_1BA856DB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

id sub_1BA856DB4()
{
  v1 = v0[48];
  v2 = sub_1BAA3984C();
  if (v1)
  {
    (*(v0[43] + 8))(v0[45], v0[42]);

    v3 = v1;
    v4 = sub_1BAA398AC();
    v5 = sub_1BAA39F9C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = v1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_1BA83C000, v4, v5, "failed to create xpc connection with the extension, error:%@", v6, 0xCu);
      sub_1BA84BC58(v7, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
      MEMORY[0x1BFAFC150](v7, -1, -1);
      MEMORY[0x1BFAFC150](v6, -1, -1);
    }

    v11 = v0[40];
    v10 = v0[41];
    v12 = v0[39];
    v13 = v0[30];
    v15 = v0[27];
    v14 = v0[28];
    v16 = v0[26];

    (*(v11 + 8))(v10, v12);
    (*(v15 + 8))(v14, v16);
    goto LABEL_5;
  }

  v18 = v0[45];
  v19 = v0[42];
  v20 = v0[43];
  v21 = v0[23];
  v90 = v0[24];
  v22 = *(v21 + v90);
  *(v21 + v90) = v2;

  v23 = swift_task_alloc();
  v89 = *(v20 + 32);
  v24 = v23;
  v89(v23, v18, v19);
  _s21NEAppExtensionProcessCMa(0);
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtCE16NetworkExtensionCSo27NEExtensionBaseProviderHost21NEAppExtensionProcess_extensionProcess;
  v27 = *(v20 + 56);
  v27(v25 + OBJC_IVAR____TtCE16NetworkExtensionCSo27NEExtensionBaseProviderHost21NEAppExtensionProcess_extensionProcess, 1, 1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ECB8, &qword_1BAA4D0B8);
  v28 = swift_task_alloc();
  v89(v28, v24, v19);
  v27(v28, 0, 1, v19);
  swift_beginAccess();
  sub_1BA85B3B4(v28, v25 + v26);
  swift_endAccess();

  *(v21 + OBJC_IVAR___NEExtensionBaseProviderHost_appExtensionProcess) = v25;

  v29 = *(v21 + v90);
  if (v29)
  {
    v30 = v0[23];
    v31 = v29;
    result = [v30 extensionXPCProtocol];
    if (result)
    {
      v33 = result;
      v34 = v0[23];
      v35 = objc_opt_self();
      v36 = [v35 interfaceWithProtocol_];

      [v31 setRemoteObjectInterface_];
      v37 = [v34 extensionQueue];
      if (v37)
      {
        v39 = v0[23];
        v38 = v0[24];

        v40 = *(v39 + v38);
        if (!v40)
        {
          goto LABEL_20;
        }

        v41 = v0[23];
        v42 = v40;
        result = [v41 extensionQueue];
        if (!result)
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v43 = result;
        [v42 _setQueue_];
      }

      v44 = v0[23];
      v45 = *&v44[v0[24]];
      if (!v45)
      {
        goto LABEL_20;
      }

      v46 = v45;
      result = [v44 extensionExportedObject];
      if (result)
      {
        v47 = result;
        v49 = v0[23];
        v48 = v0[24];
        [v46 setExportedObject_];

        v50 = *(v49 + v48);
        if (v50)
        {
          v51 = v0[23];
          v52 = v50;
          result = [v51 extensionHostXPCProtocol];
          if (result)
          {
            v53 = result;
            v55 = v0[23];
            v54 = v0[24];
            v56 = [v35 interfaceWithProtocol_];

            [v52 setExportedInterface_];
            v57 = *(v55 + v54);
            if (v57)
            {
              v59 = v0[23];
              v58 = v0[24];
              v60 = swift_allocObject();
              *(v60 + 16) = v59;
              v0[6] = sub_1BA85B424;
              v0[7] = v60;
              v0[2] = MEMORY[0x1E69E9820];
              v0[3] = 1107296256;
              v0[4] = sub_1BA854C18;
              v0[5] = &block_descriptor_4;
              v61 = _Block_copy(v0 + 2);
              v62 = v59;
              v63 = v57;

              [v63 setInvalidationHandler_];
              _Block_release(v61);

              v64 = *&v59[v58];
              if (v64)
              {
                v66 = v0[23];
                v65 = v0[24];
                v67 = swift_allocObject();
                *(v67 + 16) = v66;
                v0[12] = sub_1BA85B47C;
                v0[13] = v67;
                v0[8] = MEMORY[0x1E69E9820];
                v0[9] = 1107296256;
                v0[10] = sub_1BA854C18;
                v0[11] = &block_descriptor_25;
                v68 = _Block_copy(v0 + 8);
                v69 = v66;
                v70 = v64;

                [v70 setInterruptionHandler_];
                _Block_release(v68);

                v71 = *&v66[v65];
                if (v71)
                {
                  [v71 resume];
                }
              }
            }

            goto LABEL_20;
          }

LABEL_30:
          __break(1u);
          return result;
        }

LABEL_20:
        v72 = sub_1BAA398AC();
        v73 = sub_1BAA39F9C();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&dword_1BA83C000, v72, v73, "NEExtensionBaseProviderHost - getExtensionXPCConnection DONE", v74, 2u);
          MEMORY[0x1BFAFC150](v74, -1, -1);
        }

        v76 = v0[40];
        v75 = v0[41];
        v77 = v0[39];
        v13 = v0[30];
        v79 = v0[27];
        v78 = v0[28];
        v80 = v0[26];
        v81 = v72;
        v82 = v0[23];
        v83 = v0[24];

        (*(v76 + 8))(v75, v77);
        (*(v79 + 8))(v78, v80);
        v17 = *(v82 + v83);
        v84 = v17;
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  v13 = v0[30];
  v87 = v0[27];
  v86 = v0[28];
  v88 = v0[26];
  (*(v0[40] + 8))(v0[41], v0[39]);
  (*(v87 + 8))(v86, v88);
LABEL_5:
  v17 = 0;
LABEL_23:
  sub_1BA84BC58(v13, &qword_1EBC0ECA8, &qword_1BAA4D0A0);

  v85 = v0[1];

  return v85(v17);
}

uint64_t sub_1BA857574()
{
  v1 = v0[38];

  v2 = v1;
  v3 = sub_1BAA398AC();
  v4 = sub_1BAA39F9C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[38];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BA83C000, v3, v4, "NEExtensionBaseProviderHost - error querying extensions %@", v7, 0xCu);
    sub_1BA84BC58(v8, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
    MEMORY[0x1BFAFC150](v8, -1, -1);
    MEMORY[0x1BFAFC150](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[30];
  (*(v0[27] + 8))(v0[28], v0[26]);
  sub_1BA84BC58(v11, &qword_1EBC0ECA8, &qword_1BAA4D0A0);

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_1BA857728()
{

  v1 = v0[48];

  v2 = v1;
  v3 = sub_1BAA398AC();
  v4 = sub_1BAA39F9C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1BA83C000, v3, v4, "failed to create xpc connection with the extension, error:%@", v5, 0xCu);
    sub_1BA84BC58(v6, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
    MEMORY[0x1BFAFC150](v6, -1, -1);
    MEMORY[0x1BFAFC150](v5, -1, -1);
  }

  v10 = v0[40];
  v9 = v0[41];
  v11 = v0[39];
  v12 = v0[30];
  v14 = v0[27];
  v13 = v0[28];
  v15 = v0[26];

  (*(v10 + 8))(v9, v11);
  (*(v14 + 8))(v13, v15);
  sub_1BA84BC58(v12, &qword_1EBC0ECA8, &qword_1BAA4D0A0);

  v16 = v0[1];

  return v16(0);
}

id sub_1BA85790C()
{
  v1 = v0;
  v2 = OBJC_IVAR___NEExtensionBaseProviderHost_xpcConnection;
  v3 = *(v0 + OBJC_IVAR___NEExtensionBaseProviderHost_xpcConnection);
  if (v3)
  {
    v4 = [v3 processIdentifier];
  }

  else
  {
    v4 = 0;
  }

  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v5 = sub_1BAA398CC();
  __swift_project_value_buffer(v5, qword_1EBC11B98);
  v6 = sub_1BAA398AC();
  v7 = sub_1BAA39F9C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v4;
    _os_log_impl(&dword_1BA83C000, v6, v7, "NEExtensionBaseProviderHost - invalidateExtensionProcess pid:%d", v8, 8u);
    MEMORY[0x1BFAFC150](v8, -1, -1);
  }

  result = *(v1 + v2);
  if (result)
  {
    result = [result invalidate];
  }

  if (*(v1 + OBJC_IVAR___NEExtensionBaseProviderHost_appExtensionProcess))
  {

    sub_1BA857EF8();
  }

  return result;
}

id sub_1BA857AF8(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_1BAA39D8C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1BA857B70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1BAA39D9C();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (a1 + *a4);
  *v8 = v6;
  v8[1] = v7;
}

id sub_1BA857D54()
{
  v1 = v0;
  *&v0[OBJC_IVAR___NEExtensionBaseProviderHost_extensionQueue] = 0;
  v2 = &v0[OBJC_IVAR___NEExtensionBaseProviderHost_extensionPointName];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR___NEExtensionBaseProviderHost_extensionBundleIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v0[OBJC_IVAR___NEExtensionBaseProviderHost_extensionXPCProtocol] = 0;
  *&v0[OBJC_IVAR___NEExtensionBaseProviderHost_extensionHostXPCProtocol] = 0;
  *&v0[OBJC_IVAR___NEExtensionBaseProviderHost_extensionDelegate] = 0;
  *&v0[OBJC_IVAR___NEExtensionBaseProviderHost_extensionExportedObject] = 0;
  *&v0[OBJC_IVAR___NEExtensionBaseProviderHost_appExtensionProcess] = 0;
  *&v0[OBJC_IVAR___NEExtensionBaseProviderHost_appExtensionMonitor] = 0;
  *&v0[OBJC_IVAR___NEExtensionBaseProviderHost_xpcConnection] = 0;
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v4 = sub_1BAA398CC();
  __swift_project_value_buffer(v4, qword_1EBC11B98);
  v5 = sub_1BAA398AC();
  v6 = sub_1BAA39F9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BA83C000, v5, v6, "NEExtensionBaseProviderHost - init", v7, 2u);
    MEMORY[0x1BFAFC150](v7, -1, -1);
  }

  v9.receiver = v1;
  v9.super_class = NEExtensionBaseProviderHost;
  return objc_msgSendSuper2(&v9, sel_init);
}

void sub_1BA857EF8()
{
  v1 = OBJC_IVAR____TtCE16NetworkExtensionCSo27NEExtensionBaseProviderHost21NEAppExtensionProcess_extensionProcess;
  swift_beginAccess();
  v2 = sub_1BAA3985C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v0 + v1, 1, v2);
  if (!v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v3 + 16))(v6, v0 + v1, v2);
    sub_1BAA3980C();
    (*(v3 + 8))(v6, v2);
  }

  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v7 = sub_1BAA398CC();
  __swift_project_value_buffer(v7, qword_1EBC11B98);
  v8 = sub_1BAA398AC();
  v9 = sub_1BAA39F9C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1BA83C000, v8, v9, "NEAppExtensionProcess: invalidated app extension process", v10, 2u);
    MEMORY[0x1BFAFC150](v10, -1, -1);
  }
}

uint64_t sub_1BA8580C8()
{
  sub_1BA84BC58(v0 + OBJC_IVAR____TtCE16NetworkExtensionCSo27NEExtensionBaseProviderHost21NEAppExtensionProcess_extensionProcess, &qword_1EBC0ECB8, &qword_1BAA4D0B8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1BA858164(uint64_t a1)
{
  sub_1BA8581F4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BA8581F4(uint64_t a1)
{
  if (!qword_1EBC0E7D0)
  {
    sub_1BAA3985C();
    v1 = sub_1BAA3A03C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBC0E7D0);
    }
  }
}

uint64_t sub_1BA85826C()
{
  v1 = sub_1BAA397FC();
  v0[3] = v1;
  v2 = *(v1 - 8);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  (*(v2 + 16))();
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1BA8583A4;

  return MEMORY[0x1EEDC07C8](v3);
}

uint64_t sub_1BA8583A4()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 56) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1BA85863C;
  }

  else
  {

    v5 = sub_1BA858524;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BA858524()
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v1 = sub_1BAA398CC();
  __swift_project_value_buffer(v1, qword_1EBC11B98);
  v2 = sub_1BAA398AC();
  v3 = sub_1BAA39F9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BA83C000, v2, v3, "NEAppExtensionMonitor: added app extension point", v4, 2u);
    MEMORY[0x1BFAFC150](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1BA85863C()
{

  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_1BAA398CC();
  __swift_project_value_buffer(v2, qword_1EBC11B98);
  v3 = v1;
  v4 = sub_1BAA398AC();
  v5 = sub_1BAA39F9C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BA83C000, v4, v5, "Error adding app extension point: %@", v8, 0xCu);
    sub_1BA84BC58(v9, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
    MEMORY[0x1BFAFC150](v9, -1, -1);
    MEMORY[0x1BFAFC150](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1BA85880C()
{
  v1 = sub_1BAA397FC();
  v0[3] = v1;
  v2 = *(v1 - 8);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  (*(v2 + 16))();
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1BA858944;

  return MEMORY[0x1EEDC07D8](v3);
}

uint64_t sub_1BA858944()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 56) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1BA858BDC;
  }

  else
  {

    v5 = sub_1BA858AC4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BA858AC4()
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v1 = sub_1BAA398CC();
  __swift_project_value_buffer(v1, qword_1EBC11B98);
  v2 = sub_1BAA398AC();
  v3 = sub_1BAA39F9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BA83C000, v2, v3, "NEAppExtensionMonitor: removed app extension point", v4, 2u);
    MEMORY[0x1BFAFC150](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1BA858BDC()
{

  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_1BAA398CC();
  __swift_project_value_buffer(v2, qword_1EBC11B98);
  v3 = v1;
  v4 = sub_1BAA398AC();
  v5 = sub_1BAA39F9C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BA83C000, v4, v5, "Error removing app extension point: %@", v8, 0xCu);
    sub_1BA84BC58(v9, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
    MEMORY[0x1BFAFC150](v9, -1, -1);
    MEMORY[0x1BFAFC150](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1BA858D8C()
{

  v1 = OBJC_IVAR____TtCE16NetworkExtensionCSo27NEExtensionBaseProviderHost21NEAppExtensionMonitor_state;
  v2 = sub_1BAA397BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCE16NetworkExtensionCSo27NEExtensionBaseProviderHost21NEAppExtensionMonitor_appExtensionPoint;
  v4 = sub_1BAA397FC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t sub_1BA858E98(uint64_t a1)
{
  result = sub_1BAA397BC();
  if (v2 <= 0x3F)
  {
    result = sub_1BAA397FC();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1BA858F74(uint64_t a1)
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v2 = sub_1BAA398CC();
  __swift_project_value_buffer(v2, qword_1EBC11B98);
  v3 = sub_1BAA398AC();
  v4 = sub_1BAA39F9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BA83C000, v3, v4, "NEExtensionBaseProviderHost - cancelWithError", v5, 2u);
    MEMORY[0x1BFAFC150](v5, -1, -1);
  }

  v6 = [v1 extensionDelegate];
  if (v6)
  {
    v7 = v6;
    oslog = sub_1BAA395FC();
    [v7 cancelWithError_];
    swift_unknownObjectRelease();
  }

  else
  {
    oslog = sub_1BAA398AC();
    v8 = sub_1BAA39F9C();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BA83C000, oslog, v8, "NEExtensionBaseProviderHost - cancelWithError failed - nil extensionDelegate", v9, 2u);
      MEMORY[0x1BFAFC150](v9, -1, -1);
    }
  }
}

void sub_1BA85912C(char *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v10 = sub_1BAA398CC();
  __swift_project_value_buffer(v10, qword_1EBC11B98);
  v11 = sub_1BAA398AC();
  v12 = sub_1BAA39F9C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1BA83C000, v11, v12, a2, v13, 2u);
    MEMORY[0x1BFAFC150](v13, -1, -1);
  }

  if (*&a1[OBJC_IVAR___NEExtensionBaseProviderHost_xpcConnection])
  {
    v14 = [a1 extensionDelegate];
    if (v14)
    {
      [v14 handleXPCError];
      swift_unknownObjectRelease();
    }

    if (*&a1[OBJC_IVAR___NEExtensionBaseProviderHost_appExtensionMonitor])
    {
      v15 = sub_1BAA39EFC();
      (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = a1;
      v17 = a1;
      sub_1BA8598CC(0, 0, v9, a4, v16);
    }

    else
    {
      sub_1BA85934C();
    }
  }
}

void *sub_1BA85934C()
{
  v1 = OBJC_IVAR___NEExtensionBaseProviderHost_xpcConnection;
  result = *&v0[OBJC_IVAR___NEExtensionBaseProviderHost_xpcConnection];
  if (result)
  {
    [result setExportedObject_];
    v3 = *&v0[v1];
    *&v0[v1] = 0;

    [v0 setExtensionDelegate_];
    [v0 setExtensionBundleIdentifier_];
    [v0 setExtensionPointName_];
    [v0 setExtensionHostXPCProtocol_];
    [v0 setExtensionExportedObject_];
    [v0 setExtensionQueue_];
    [v0 setExtensionExportedObject_];
    *&v0[OBJC_IVAR___NEExtensionBaseProviderHost_appExtensionProcess] = 0;
  }

  return result;
}

uint64_t sub_1BA859468()
{
  v1 = v0[2];
  v2 = OBJC_IVAR___NEExtensionBaseProviderHost_appExtensionMonitor;
  v0[3] = OBJC_IVAR___NEExtensionBaseProviderHost_appExtensionMonitor;
  v3 = *(v1 + v2);
  v0[4] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_1BA85961C;

    return sub_1BA8587EC();
  }

  else
  {
    *(v1 + v2) = 0;
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v6 = sub_1BAA398CC();
    __swift_project_value_buffer(v6, qword_1EBC11B98);
    v7 = sub_1BAA398AC();
    v8 = sub_1BAA39F9C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BA83C000, v7, v8, "NEExtensionBaseProviderHost - cleanup appExtensionMonitor removed", v9, 2u);
      MEMORY[0x1BFAFC150](v9, -1, -1);
    }

    sub_1BA85934C();
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1BA85961C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1BA859868;
  }

  else
  {

    v2 = sub_1BA859738;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BA859738()
{
  *(v0[2] + v0[3]) = 0;

  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v1 = sub_1BAA398CC();
  __swift_project_value_buffer(v1, qword_1EBC11B98);
  v2 = sub_1BAA398AC();
  v3 = sub_1BAA39F9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BA83C000, v2, v3, "NEExtensionBaseProviderHost - cleanup appExtensionMonitor removed", v4, 2u);
    MEMORY[0x1BFAFC150](v4, -1, -1);
  }

  sub_1BA85934C();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1BA859868()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BA8598CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1BA84985C(a3, v22 - v9, &qword_1EBC0EAC0, &qword_1BAA4CD50);
  v11 = sub_1BAA39EFC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1BA84BC58(v10, &qword_1EBC0EAC0, &qword_1BAA4CD50);
  }

  else
  {
    sub_1BAA39EEC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1BAA39E8C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1BAA39DDC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1BA84BC58(a3, &qword_1EBC0EAC0, &qword_1BAA4CD50);

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

  sub_1BA84BC58(a3, &qword_1EBC0EAC0, &qword_1BAA4CD50);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1BA859B78()
{
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = 0;
  v3 = *(v0 + OBJC_IVAR___NEExtensionBaseProviderHost_xpcConnection);
  if (v3)
  {
    aBlock[4] = sub_1BA85BB28;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA871994;
    aBlock[3] = &block_descriptor_93;
    v4 = _Block_copy(aBlock);
    v5 = v3;

    v6 = [v5 remoteObjectProxyWithErrorHandler_];
    _Block_release(v4);
    sub_1BAA3A04C();

    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ECC8, &qword_1BAA4D168);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      v7 = *(v2 + 16);

      return v10;
    }

    else
    {
      swift_beginAccess();
      v9 = *(v2 + 16);

      return 0;
    }
  }

  else
  {

    return 0;
  }
}

id sub_1BA859D4C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

uint64_t sub_1BA859DE8()
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v1 = sub_1BAA398CC();
  __swift_project_value_buffer(v1, qword_1EBC11B98);
  v2 = sub_1BAA398AC();
  v3 = sub_1BAA39F9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BA83C000, v2, v3, "NEExtensionBaseProviderHost - SETUP", v4, 2u);
    MEMORY[0x1BFAFC150](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1BA859F34;

  return sub_1BA854E8C();
}

uint64_t sub_1BA859F34(void *a1)
{

  return MEMORY[0x1EEE6DFA0](sub_1BA85A038, 0, 0);
}

uint64_t sub_1BA85A038()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1BA85A124;
  v4 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 6, 0, 0, 0x29287075746573, 0xE700000000000000, sub_1BA85BAA4, v2, v4);
}

uint64_t sub_1BA85A124()
{

  if (v0)
  {

    v1 = sub_1BA85A284;
  }

  else
  {

    v1 = sub_1BA85A26C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

void sub_1BA85A29C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - v4;
  v6 = sub_1BA859B78();
  v8 = v7;
  if (v6)
  {
    v9 = v6;
    (*(v3 + 16))(v5, a1, v2);
    v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v11 = swift_allocObject();
    (*(v3 + 32))(v11 + v10, v5, v2);
    aBlock[4] = sub_1BA85BAAC;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA8719FC;
    aBlock[3] = &block_descriptor_87;
    v12 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v9 setupWithReply_];
    _Block_release(v12);
    swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v13 = sub_1BAA398CC();
    __swift_project_value_buffer(v13, qword_1EBC11B98);
    v14 = sub_1BAA398AC();
    v15 = sub_1BAA39F9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1BA83C000, v14, v15, "NEExtensionBaseProviderHost - setup - proxy not good", v16, 2u);
      MEMORY[0x1BFAFC150](v16, -1, -1);
    }

    v17 = v8;
    if (!v8)
    {
      sub_1BA84E364();
      v17 = swift_allocError();
      *v18 = 1;
    }

    aBlock[0] = v17;
    v19 = v8;
    sub_1BAA39E9C();
  }
}

uint64_t sub_1BA85A57C(char a1)
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v2 = sub_1BAA398CC();
  __swift_project_value_buffer(v2, qword_1EBC11B98);
  v3 = sub_1BAA398AC();
  v4 = sub_1BAA39F9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&dword_1BA83C000, v3, v4, "NEExtensionBaseProviderHost - proxy.setup - done %{BOOL}d", v5, 8u);
    MEMORY[0x1BFAFC150](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  return sub_1BAA39EAC();
}

uint64_t sub_1BA85A81C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1BA84DE80;

  return sub_1BA859DC8();
}

unint64_t type metadata accessor for NEExtensionBaseProviderHost()
{
  result = qword_1EBC0EC90;
  if (!qword_1EBC0EC90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC0EC90);
  }

  return result;
}

id sub_1BA85ADA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NEExtensionBaseProviderHostExportedObject();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BA85AE0C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BA85AED8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1BA85B4BC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1BA85AED8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1BA85AFE4(a5, a6);
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
    result = sub_1BAA3A09C();
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

void *sub_1BA85AFE4(uint64_t a1, unint64_t a2)
{
  v3 = sub_1BA85B030(a1, a2);
  sub_1BA85B160(&unk_1F387C248);
  return v3;
}

void *sub_1BA85B030(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1BA85B24C(v5, 0);
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

  result = sub_1BAA3A09C();
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
        v10 = sub_1BAA39E1C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1BA85B24C(v10, 0);
        result = sub_1BAA3A06C();
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

uint64_t sub_1BA85B160(uint64_t result)
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

  result = sub_1BA85B2C0(result, v11, 1, v3);
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

void *sub_1BA85B24C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ECC0, &unk_1BAA4D0C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1BA85B2C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ECC0, &unk_1BAA4D0C0);
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

uint64_t sub_1BA85B3B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ECB8, &qword_1BAA4D0B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BA85B4BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BA85B518(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BA84E9A0;

  return sub_1BA859448(a1, v4, v5, v6);
}

uint64_t objectdestroy_27Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BA85B60C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BA84E6FC;

  return sub_1BA859448(a1, v4, v5, v6);
}

uint64_t sub_1BA85B6C0(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v6 = sub_1BAA398CC();
  __swift_project_value_buffer(v6, qword_1EBC11B98);
  v7 = a1;
  v8 = sub_1BAA398AC();
  v9 = sub_1BAA39F9C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = a1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1BA83C000, v8, v9, "NEExtensionBaseProviderHostExportedObject - cancelWithError called with %@", v10, 0xCu);
    sub_1BA84BC58(v11, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
    MEMORY[0x1BFAFC150](v11, -1, -1);
    MEMORY[0x1BFAFC150](v10, -1, -1);
  }

  v14 = *(a2 + OBJC_IVAR____TtC16NetworkExtension41NEExtensionBaseProviderHostExportedObject_delegate);
  if (v14)
  {
    v15 = v14;
    sub_1BA858F74(a1);
  }

  v16 = *(a3 + 16);

  return v16(a3, 1);
}

uint64_t sub_1BA85B860()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BA84E9A0;

  return sub_1BA85BCF4(v2);
}

uint64_t sub_1BA85B90C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BA84E9A0;

  return sub_1BA85BCF0(v2);
}

uint64_t objectdestroy_40Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BA85B9F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BA84E9A0;

  return sub_1BA85A81C(v2, v3);
}

uint64_t sub_1BA85BAAC(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);

  return sub_1BA85A57C(a1);
}

uint64_t getEnumTagSinglePayload for NEExtensionBaseProviderError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NEExtensionBaseProviderError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BA85BC84()
{
  result = qword_1EBC0ECD0;
  if (!qword_1EBC0ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC0ECD0);
  }

  return result;
}

uint64_t sub_1BA85BCF8()
{
  v0 = sub_1BAA398CC();
  __swift_allocate_value_buffer(v0, qword_1EBC11B98);
  __swift_project_value_buffer(v0, qword_1EBC11B98);
  return sub_1BAA398BC();
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

uint64_t static NEURLFilter.verdict(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BA85BE00, 0, 0);
}

uint64_t sub_1BA85BE00()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  type metadata accessor for Verdict(0);
  *v2 = v0;
  v2[1] = sub_1BA85BF00;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0x2874636964726576, 0xED0000293A726F66, sub_1BA85C248, v1, v3);
}

uint64_t sub_1BA85BF00()
{

  if (v0)
  {

    v1 = sub_1BA85C060;
  }

  else
  {

    v1 = sub_1BA85C048;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

void sub_1BA85C078(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ECD8, &unk_1BAA4D240);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - v4;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_1BAA3961C();
  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_1BA85C250;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA85C2F4;
  aBlock[3] = &block_descriptor_5;
  v10 = _Block_copy(aBlock);

  [ObjCClassFromMetadata verdictForURL:v7 completionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_1BA85C250(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ECD8, &unk_1BAA4D240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ECD8, &unk_1BAA4D240);
  return sub_1BAA39EAC();
}

uint64_t sub_1BA85C2F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t NEURLFilterPrefilter.tag.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NEURLFilterPrefilter.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NEURLFilterPrefilter(0) + 20);

  return sub_1BA85C3F4(v3, a1);
}

uint64_t sub_1BA85C3F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NEURLFilterPrefilter.PrefilterData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NEURLFilterPrefilter.init(data:tag:bitCount:hashCount:murmurSeed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  *a7 = a2;
  a7[1] = a3;
  v12 = type metadata accessor for NEURLFilterPrefilter(0);
  result = sub_1BA85C55C(a1, a7 + v12[5]);
  *(a7 + v12[6]) = a4;
  *(a7 + v12[7]) = a5;
  *(a7 + v12[8]) = a6;
  return result;
}

uint64_t sub_1BA85C55C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NEURLFilterPrefilter.PrefilterData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *NEURLFilterControlProvider.configuration.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NEURLFilterControlProviderConfiguration();
  (*(v5 + 16))(v7, v2, a1);
  return sub_1BA85C748(v7, v8, a1, a2);
}

uint64_t NEURLFilterControlProviderConfiguration.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t NEURLFilterControlProviderConfiguration.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

void *sub_1BA85C748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v6 + 32))(&v15 - v10);
  type metadata accessor for NEURLFilterControlProviderConfiguration();
  v12 = swift_allocObject();
  (*(v6 + 16))(v9, v11, a3);
  v13 = sub_1BA85CDA0(v9, v12, a3, a4);
  (*(v6 + 8))(v11, a3);
  return v13;
}

uint64_t sub_1BA85C8B8(uint64_t a1)
{
  result = type metadata accessor for NEURLFilterPrefilter.PrefilterData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BA85C998(uint64_t a1)
{
  result = sub_1BAA3964C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of NEURLFilterControlProvider.start()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BA84E9A0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of NEURLFilterControlProvider.stop(reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BA84E9A0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of NEURLFilterControlProvider.fetchPrefilter(existingPrefilterTag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BA84E6FC;

  return v13(a1, a2, a3, a4, a5);
}

void *sub_1BA85CDA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  (*(v7 + 32))(&v19 - v11);
  (*(v7 + 16))(v10, v12, a3);
  v13 = sub_1BA854D58(v10, a2, a3, *(a4 + 8));
  v14 = v13[8];
  v13[8] = &unk_1F38BC8D0;

  v15 = &unk_1F38BC8D0;

  v16 = v13[9];
  v13[9] = &unk_1F38BC960;
  v17 = &unk_1F38BC960;

  (*(v7 + 8))(v12, a3);
  return v13;
}

uint64_t sub_1BA85CF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  sub_1BAA39EDC();
  v6[15] = sub_1BAA39ECC();
  v8 = sub_1BAA39E8C();
  v6[16] = v8;
  v6[17] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BA85CFB0, v8, v7);
}

uint64_t sub_1BA85CFB0()
{
  sub_1BA8517C0(v0[12] + 16, (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAE8, &qword_1BAA4CE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED10, &qword_1BAA4D348);
  swift_dynamicCast();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v5 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_1BA85D128;

  return v5(v1, v2);
}

uint64_t sub_1BA85D128()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1BA85D2E0;
  }

  else
  {
    v5 = sub_1BA85D264;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BA85D264()
{
  v1 = v0[13];

  v1(1, 0);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1BA85D2E0()
{
  v1 = v0[19];
  v2 = v0[13];

  v3 = v1;
  v2(0, v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[1];

  return v4();
}

void sub_1BA85D500(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1BAA395FC();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_1BA85D570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  sub_1BAA39EDC();
  sub_1BAA39ECC();
  v9 = sub_1BAA39E8C();
  v7[16] = v9;
  v7[17] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BA85D608, v9, v8);
}

uint64_t sub_1BA85D608()
{
  sub_1BA8517C0(v0[12] + 16, (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAE8, &qword_1BAA4CE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED10, &qword_1BAA4D348);
  swift_dynamicCast();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v6 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_1BA85D788;
  v4 = v0[13];

  return v6(v4, v1, v2);
}

uint64_t sub_1BA85D788()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1BA85D908;
  }

  else
  {
    v5 = sub_1BA85D8C4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

void sub_1BA85D908()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 112);
  v3 = v1;
  v2(0, v1);

  exit(0);
}

uint64_t sub_1BA85DAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  v8[17] = type metadata accessor for NEURLFilterPrefilter.PrefilterData(0);
  v8[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED00, &qword_1BAA4D338);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED08, &qword_1BAA4D340);
  v8[22] = swift_task_alloc();
  v9 = type metadata accessor for NEURLFilterPrefilter(0);
  v8[23] = v9;
  v8[24] = *(v9 - 8);
  v8[25] = swift_task_alloc();
  sub_1BAA39EDC();
  v8[26] = sub_1BAA39ECC();
  v11 = sub_1BAA39E8C();
  v8[27] = v11;
  v8[28] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1BA85DCA8, v11, v10);
}

uint64_t sub_1BA85DCA8()
{
  sub_1BA8517C0(v0[12] + 16, (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAE8, &qword_1BAA4CE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED10, &qword_1BAA4D348);
  swift_dynamicCast();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v8 = (*(v2 + 32) + **(v2 + 32));
  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = sub_1BA85DE2C;
  v4 = v0[22];
  v5 = v0[13];
  v6 = v0[14];

  return v8(v4, v5, v6, v1, v2);
}

uint64_t sub_1BA85DE2C()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);
  if (v0)
  {
    v5 = sub_1BA85E4F4;
  }

  else
  {
    v5 = sub_1BA85DF68;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BA85DF68()
{
  v1 = v0[23];
  v2 = v0[22];
  if ((*(v0[24] + 48))(v2, 1, v1) != 1)
  {
    v6 = v0[25];
    v7 = v0[20];
    v8 = v0[18];
    sub_1BA85EB0C(v2, v6);
    v9 = sub_1BAA3964C();
    v10 = *(v9 - 8);
    v11 = v7;
    v12 = *(v10 + 56);
    v12(v11, 1, 1, v9);
    sub_1BA85C3F4(v6 + *(v1 + 20), v8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = v0[25];
      v14 = v0[23];
      v16 = v0[19];
      v15 = v0[20];
      v17 = v0[18];
      sub_1BA84BC58(v15, &qword_1EBC0ED00, &qword_1BAA4D338);
      (*(v10 + 32))(v15, v17, v9);
      v44 = v12;
      v12(v15, 0, 1, v9);
      v18 = *(v13 + v14[6]);
      v46 = v13[1];
      v48 = *v13;
      v19 = *(v13 + v14[7]);
      v20 = *(v13 + v14[8]);
      sub_1BA85EB70(v15, v16);
      result = (*(v10 + 48))(v16, 1, v9);
      if (result == 1)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v22 = v0[19];

      sub_1BAA3963C();
      (*(v10 + 8))(v22, v9);
      sub_1BAA39DDC();

      v23 = sandbox_extension_issue_file();

      if (!v23)
      {
        v39 = v0[25];
        v41 = v0[20];
        v40 = v0[21];
        v42 = v0[15];
        v44(v40, 1, 1, v9);
        v42(0, 0xF000000000000000, v40, 0, 0, 0, 0, 0, 0, 0);
        sub_1BA84BC58(v40, &qword_1EBC0ED00, &qword_1BAA4D338);
        sub_1BA84BC58(v41, &qword_1EBC0ED00, &qword_1BAA4D338);
        v27 = v39;
        goto LABEL_15;
      }

      result = sub_1BAA39E0C();
      if (v18 <= 0xFFFFFFFFLL)
      {
        if (((v19 | v18) & 0x8000000000000000) == 0)
        {
          if (v19 <= 0xFFFFFFFFLL)
          {
            v25 = v0[25];
            v26 = v0[20];
            (v0[15])(0, 0xF000000000000000, v26, result, v24, v48, v46, v18, __PAIR64__(v20, v19), 0);

            sub_1BA84BC58(v26, &qword_1EBC0ED00, &qword_1BAA4D338);
            v27 = v25;
LABEL_15:
            sub_1BA85EBE0(v27);
            goto LABEL_16;
          }

          goto LABEL_24;
        }

LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v28 = v0[25];
    v29 = v0[23];
    v30 = v0[21];
    v31 = v0[18];
    v32 = *v31;
    v49 = v31[1];

    v33 = *(v28 + v29[6]);
    v45 = v28[1];
    v47 = *v28;
    v34 = *(v28 + v29[7]);
    v35 = *(v28 + v29[8]);
    result = (v12)(v30, 1, 1, v9);
    if (v33 > 0xFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (((v34 | v33) & 0x8000000000000000) == 0)
    {
      if (v34 <= 0xFFFFFFFFLL)
      {
        v36 = v0[25];
        v38 = v0[20];
        v37 = v0[21];
        (v0[15])(v32, v49, v37, 0, 0, v47, v45, v33, __PAIR64__(v35, v34), 0);
        sub_1BA84724C(v32, v49);
        sub_1BA84BC58(v37, &qword_1EBC0ED00, &qword_1BAA4D338);
        sub_1BA84BC58(v38, &qword_1EBC0ED00, &qword_1BAA4D338);
        v27 = v36;
        goto LABEL_15;
      }

      goto LABEL_21;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v3 = v0[21];
  v4 = v0[15];

  sub_1BA84BC58(v2, &qword_1EBC0ED08, &qword_1BAA4D340);
  v5 = sub_1BAA3964C();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v4(0, 0xF000000000000000, v3, 0, 0, 0, 0, 0, 0, 0);
  sub_1BA84BC58(v3, &qword_1EBC0ED00, &qword_1BAA4D338);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v43 = v0[1];

  return v43();
}

uint64_t sub_1BA85E4F4()
{
  v1 = v0[30];
  v2 = v0[21];
  v3 = v0[15];

  v4 = sub_1BAA3964C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = v1;
  v3(0, 0xF000000000000000, v2, 0, 0, 0, 0, 0, 0, v1);

  sub_1BA84BC58(v2, &qword_1EBC0ED00, &qword_1BAA4D338);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v6 = v0[1];

  return v6();
}

void sub_1BA85E80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, unsigned int a9, unsigned int a10, uint64_t a11, uint64_t a12)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED00, &qword_1BAA4D338);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v25 - v17;
  if (v19 >> 60 == 15)
  {
    v20 = 0;
  }

  else
  {
    v20 = sub_1BAA3968C();
  }

  sub_1BA85EB70(a3, v18);
  v21 = sub_1BAA3964C();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v18, 1, v21) != 1)
  {
    v23 = sub_1BAA3961C();
    (*(v22 + 8))(v18, v21);
  }

  if (a5)
  {
    a5 = sub_1BAA39D8C();
  }

  if (a7)
  {
    a7 = sub_1BAA39D8C();
  }

  if (a11)
  {
    v24 = sub_1BAA395FC();
  }

  else
  {
    v24 = 0;
  }

  (*(a12 + 16))(a12, v20, v23, a5, a7, a8, a9, a10, v24);
}

uint64_t sub_1BA85EA30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BA84E6FC;

  return sub_1BA85DAF4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BA85EB0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NEURLFilterPrefilter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA85EB70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED00, &qword_1BAA4D338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA85EBE0(uint64_t a1)
{
  v2 = type metadata accessor for NEURLFilterPrefilter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA85EC44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BA84E9A0;

  return sub_1BA85D570(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1BA85ED18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BA84E9A0;

  return sub_1BA85CF14(a1, v4, v5, v6, v7, v8);
}

void sub_1BA85EE3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v4 = sub_1BAA398CC();
  __swift_project_value_buffer(v4, qword_1EBC11B98);
  v5 = sub_1BAA398AC();
  v6 = sub_1BAA39F9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BA83C000, v5, v6, "NEURLFilterControlProviderHost - init", v7, 2u);
    MEMORY[0x1BFAFC150](v7, -1, -1);
  }

  v8 = sub_1BAA39D8C();
  [v3 setExtensionPointName_];

  v9 = sub_1BAA39D8C();
  [v3 setExtensionBundleIdentifier_];

  [v3 setExtensionXPCProtocol_];
  [v3 setExtensionHostXPCProtocol_];
  v10 = [objc_allocWithZone(type metadata accessor for NEURLFilterControlProviderHostExportedObject()) init];
  [v3 setExportedObject_];

  v11 = [v3 exportedObject];
  if (v11)
  {
    v12 = v11;
    [v3 setExtensionExportedObject_];
    v13 = [v3 extensionExportedObject];

    if (v13)
    {
      v15 = *&v13[OBJC_IVAR____TtC16NetworkExtension41NEExtensionBaseProviderHostExportedObject_delegate];
      *&v13[OBJC_IVAR____TtC16NetworkExtension41NEExtensionBaseProviderHostExportedObject_delegate] = v3;
      v14 = v3;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA85F120()
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v1 = sub_1BAA398CC();
  __swift_project_value_buffer(v1, qword_1EBC11B98);
  v2 = sub_1BAA398AC();
  v3 = sub_1BAA39F9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BA83C000, v2, v3, "NEURLFilterControlProviderHost - start", v4, 2u);
    MEMORY[0x1BFAFC150](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1BA85F26C;

  return sub_1BA854E8C();
}

uint64_t sub_1BA85F26C(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BA85F36C, 0, 0);
}

uint64_t sub_1BA85F36C()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1BA85F464;
  v5 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 7, 0, 0, 0x29287472617473, 0xE700000000000000, sub_1BA862A08, v3, v5);
}

uint64_t sub_1BA85F464()
{

  if (v0)
  {

    v1 = sub_1BA85F614;
  }

  else
  {

    v1 = sub_1BA85F5AC;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1BA85F5AC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1BA85F614()
{
  v1 = *(v0 + 8);

  return v1(0);
}

void sub_1BA85F67C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - v7;
  v9 = sub_1BA8625D8(a3);
  v11 = v10;
  if (v9)
  {
    v12 = v9;
    (*(v6 + 16))(v8, a1, v5);
    v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v14 = swift_allocObject();
    (*(v6 + 32))(v14 + v13, v8, v5);
    aBlock[4] = sub_1BA862A94;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA85F960;
    aBlock[3] = &block_descriptor_72;
    v15 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v12 startWithReply_];
    _Block_release(v15);
    swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v16 = sub_1BAA398CC();
    __swift_project_value_buffer(v16, qword_1EBC11B98);
    v17 = sub_1BAA398AC();
    v18 = sub_1BAA39F9C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BA83C000, v17, v18, "NEURLFilterControlProviderHost - start - proxy not good", v19, 2u);
      MEMORY[0x1BFAFC150](v19, -1, -1);
    }

    v20 = v11;
    if (!v11)
    {
      sub_1BA84E364();
      v20 = swift_allocError();
      *v21 = 1;
    }

    aBlock[0] = v20;
    v22 = v11;
    sub_1BAA39E9C();
  }
}

void sub_1BA85F960(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1BA85FB4C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1BA862B34;

  return sub_1BA85F100();
}

uint64_t sub_1BA85FBF4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BA85FC14, 0, 0);
}

uint64_t sub_1BA85FC14()
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v1 = sub_1BAA398CC();
  __swift_project_value_buffer(v1, qword_1EBC11B98);
  v2 = sub_1BAA398AC();
  v3 = sub_1BAA39F9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BA83C000, v2, v3, "NEURLFilterControlProviderHost - stop", v4, 2u);
    MEMORY[0x1BFAFC150](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_1BA85FD60;

  return sub_1BA854E8C();
}

uint64_t sub_1BA85FD60(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BA85FE60, 0, 0);
}

uint64_t sub_1BA85FE60()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1BA85FF64;
  v6 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0x74697728706F7473, 0xEB00000000293A68, sub_1BA862944, v4, v6);
}

uint64_t sub_1BA85FF64()
{

  if (v0)
  {

    v1 = sub_1BA860114;
  }

  else
  {

    v1 = sub_1BA8600AC;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1BA8600AC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1BA860114()
{
  v1 = *(v0 + 8);

  return v1(0);
}

void sub_1BA86017C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - v9;
  v11 = sub_1BA8625D8(a3);
  v13 = v12;
  if (v11)
  {
    v14 = v11;
    (*(v8 + 16))(v10, a1, v7);
    v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v16 = swift_allocObject();
    (*(v8 + 32))(v16 + v15, v10, v7);
    aBlock[4] = sub_1BA862950;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA85F960;
    aBlock[3] = &block_descriptor_49_0;
    v17 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v14 stopWithStopReason:a4 reply:v17];
    _Block_release(v17);
    swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v18 = sub_1BAA398CC();
    __swift_project_value_buffer(v18, qword_1EBC11B98);
    v19 = sub_1BAA398AC();
    v20 = sub_1BAA39F9C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1BA83C000, v19, v20, "NEURLFilterControlProviderHost - stop - proxy not good", v21, 2u);
      MEMORY[0x1BFAFC150](v21, -1, -1);
    }

    v22 = v13;
    if (!v13)
    {
      sub_1BA84E364();
      v22 = swift_allocError();
      *v23 = 1;
    }

    aBlock[0] = v22;
    v24 = v13;
    sub_1BAA39E9C();
  }
}

uint64_t sub_1BA860470(char a1, void *a2, uint64_t a3, const char *a4)
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v7 = sub_1BAA398CC();
  __swift_project_value_buffer(v7, qword_1EBC11B98);
  v8 = a2;
  v9 = sub_1BAA398AC();
  v10 = sub_1BAA39F9C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 67109378;
    *(v11 + 4) = a1 & 1;
    *(v11 + 8) = 2112;
    if (a2)
    {
      v13 = a2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      v15 = v14;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    *(v11 + 10) = v14;
    *v12 = v15;
    _os_log_impl(&dword_1BA83C000, v9, v10, a4, v11, 0x12u);
    sub_1BA84BC58(v12, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
    MEMORY[0x1BFAFC150](v12, -1, -1);
    MEMORY[0x1BFAFC150](v11, -1, -1);
  }

  if (a2)
  {
    v16 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
    return sub_1BAA39E9C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
    return sub_1BAA39EAC();
  }
}

uint64_t sub_1BA8607E0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1BA86089C;

  return sub_1BA85FBF4(a1);
}

uint64_t sub_1BA86089C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v1)
  {
    if (v5)
    {
      v8 = *(v4 + 24);
      v9 = sub_1BAA395FC();

      (v8)[2](v8, 0, v9);
      _Block_release(v8);
    }

    else
    {
    }
  }

  else if (v5)
  {
    v10 = *(v4 + 24);
    v10[2](v10, a1 & 1, 0);
    _Block_release(v10);
  }

  v11 = *(v7 + 8);

  return v11();
}

uint64_t sub_1BA860A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED28, &qword_1BAA4D3E8);
  v5[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED30, &qword_1BAA4D3F0);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BA860B64, 0, 0);
}

uint64_t sub_1BA860B64()
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v1 = sub_1BAA398CC();
  __swift_project_value_buffer(v1, qword_1EBC11B98);
  v2 = sub_1BAA398AC();
  v3 = sub_1BAA39F9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BA83C000, v2, v3, "NEURLFilterControlProviderHost - fetchPrefilterData", v4, 2u);
    MEMORY[0x1BFAFC150](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_1BA860CB0;

  return sub_1BA854E8C();
}

uint64_t sub_1BA860CB0(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BA860DB0, 0, 0);
}

uint64_t sub_1BA860DB0()
{
  v1 = v0[13];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = swift_task_alloc();
  v0[14] = v5;
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_1BA860EB4;
  v7 = v0[7];
  v8 = v0[8];

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD00000000000001CLL, 0x80000001BAA51100, sub_1BA8625CC, v5, v8);
}

uint64_t sub_1BA860EB4()
{

  if (v0)
  {

    v1 = sub_1BA86118C;
  }

  else
  {

    v1 = sub_1BA860FFC;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1BA860FFC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);

  (*(v3 + 56))(v4, 0, 1, v2);
  sub_1BA84BBCC(v4, v1, &qword_1EBC0ED30, &qword_1BAA4D3F0);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  sub_1BA84BBCC(*(v0 + 88), v5, &qword_1EBC0ED30, &qword_1BAA4D3F0);
  v9 = v6[12];
  v10 = (v5 + v6[16]);
  v11 = (v5 + v6[20]);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v5 + v6[24]);
  v15 = *(v5 + v6[28]);
  LODWORD(v6) = *(v5 + v6[32]);
  v19 = *v10;
  v18 = *v5;
  sub_1BA84BBCC(v5 + v9, v7, &qword_1EBC0ED00, &qword_1BAA4D338);

  *v8 = v18;
  *(v8 + 16) = v19;
  *(v8 + 32) = v12;
  *(v8 + 40) = v13;
  *(v8 + 48) = v14;
  *(v8 + 52) = v15;
  *(v8 + 56) = v6;
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1BA86118C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);

  (*(v3 + 56))(v4, 1, 1, v2);
  v5 = v2[12];
  v6 = &v1[v2[16]];
  v7 = &v1[v2[20]];
  v8 = v2[24];
  v9 = v2[28];
  v10 = v2[32];
  *v1 = xmmword_1BAA4D380;
  v11 = sub_1BAA3964C();
  (*(*(v11 - 8) + 56))(&v1[v5], 1, 1, v11);
  *v6 = 0;
  *(v6 + 1) = 0;
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v1[v8] = 0;
  *&v1[v9] = 0;
  *&v1[v10] = 0;
  v12 = *(v0 + 80);
  v13 = *(v0 + 64);
  v15 = *(v0 + 16);
  v14 = *(v0 + 24);
  sub_1BA84BBCC(*(v0 + 88), v12, &qword_1EBC0ED30, &qword_1BAA4D3F0);
  v16 = v13[12];
  v17 = (v12 + v13[16]);
  v18 = (v12 + v13[20]);
  v19 = *v18;
  v20 = v18[1];
  v21 = *(v12 + v13[24]);
  LODWORD(v1) = *(v12 + v13[28]);
  LODWORD(v13) = *(v12 + v13[32]);
  v25 = *v17;
  v24 = *v12;
  sub_1BA84BBCC(v12 + v16, v14, &qword_1EBC0ED00, &qword_1BAA4D338);

  *v15 = v24;
  *(v15 + 16) = v25;
  *(v15 + 32) = v19;
  *(v15 + 40) = v20;
  *(v15 + 48) = v21;
  *(v15 + 52) = v1;
  *(v15 + 56) = v13;
  v22 = *(v0 + 8);

  return v22();
}

void sub_1BA861380(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED38, qword_1BAA4D3F8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - v10;
  v12 = sub_1BA8625D8(a3);
  v14 = v13;
  if (v12)
  {
    v15 = v12;
    swift_unknownObjectRetain();
    if (a5)
    {
      a5 = sub_1BAA39D8C();
    }

    (*(v9 + 16))(v11, a1, v8);
    v23 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v24 = swift_allocObject();
    (*(v9 + 32))(v24 + v23, v11, v8);
    aBlock[4] = sub_1BA862798;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA861A24;
    aBlock[3] = &block_descriptor_6;
    v25 = _Block_copy(aBlock);

    [v15 fetchPrefilterDataWithTag:a5 reply:v25];
    _Block_release(v25);
    swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v16 = sub_1BAA398CC();
    __swift_project_value_buffer(v16, qword_1EBC11B98);
    v17 = sub_1BAA398AC();
    v18 = sub_1BAA39F9C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BA83C000, v17, v18, "NEURLFilterControlProviderHost - fetchPrefilterData - proxy not good", v19, 2u);
      MEMORY[0x1BFAFC150](v19, -1, -1);
    }

    v20 = v14;
    if (!v14)
    {
      sub_1BA84E364();
      v20 = swift_allocError();
      *v21 = 1;
    }

    aBlock[0] = v20;
    v22 = v14;
    sub_1BAA39E9C();
  }
}

uint64_t sub_1BA861690(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, int a10, void *a11, uint64_t a12)
{
  v53 = a8;
  v54 = a7;
  v55 = a5;
  v51 = a4;
  v52 = a6;
  v50 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED30, &qword_1BAA4D3F0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v46 - v15);
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v17 = a12;
  v18 = sub_1BAA398CC();
  __swift_project_value_buffer(v18, qword_1EBC11B98);
  sub_1BA84BC34(a1, a2);
  v19 = a11;
  v20 = sub_1BAA398AC();
  v21 = sub_1BAA39F9C();
  sub_1BA84BCDC(a1, a2);

  if (os_log_type_enabled(v20, v21))
  {
    v48 = v14;
    v56 = a12;
    v22 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v57 = v47;
    *v22 = 136315394;
    if (a2 >> 60 == 15)
    {
      v23 = 0;
    }

    else
    {
      v23 = a1;
    }

    if (a2 >> 60 == 15)
    {
      v24 = 0xC000000000000000;
    }

    else
    {
      v24 = a2;
    }

    v49 = a1;
    sub_1BA84BC34(a1, a2);
    v25 = sub_1BAA3965C();
    v27 = v26;
    sub_1BA84724C(v23, v24);
    v28 = sub_1BA85AE0C(v25, v27, &v57);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2112;
    if (a11)
    {
      v29 = a11;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      v31 = v30;
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    *(v22 + 14) = v30;
    v34 = v46;
    *v46 = v31;
    _os_log_impl(&dword_1BA83C000, v20, v21, "NEURLFilterControlProviderHost - proxy.fetchPrefilterData - done %s %@", v22, 0x16u);
    sub_1BA84BC58(v34, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
    MEMORY[0x1BFAFC150](v34, -1, -1);
    v35 = v47;
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x1BFAFC150](v35, -1, -1);
    MEMORY[0x1BFAFC150](v22, -1, -1);

    v17 = v56;
    v14 = v48;
    a1 = v49;
    if (!a11)
    {
      goto LABEL_16;
    }

LABEL_13:
    v57 = a11;
    v32 = a11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED38, qword_1BAA4D3F8);
    return sub_1BAA39E9C();
  }

  if (a11)
  {
    goto LABEL_13;
  }

LABEL_16:
  LODWORD(v49) = a10;
  v36 = v14[12];
  v37 = v14[16];
  v56 = v17;
  v38 = (v16 + v37);
  v39 = (v16 + v14[20]);
  v40 = v14[24];
  v41 = v14[28];
  v42 = v14[32];
  *v16 = a1;
  v16[1] = a2;
  sub_1BA85EB70(v50, v16 + v36);
  v43 = v52;
  v44 = v55;
  *v38 = v51;
  v38[1] = v44;
  v45 = v54;
  *v39 = v43;
  v39[1] = v45;
  *(v16 + v40) = v53;
  *(v16 + v41) = a9;
  *(v16 + v42) = v49;
  sub_1BA84BC34(a1, a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED38, qword_1BAA4D3F8);
  return sub_1BAA39EAC();
}

uint64_t sub_1BA861A24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, unsigned int a8, void *a9)
{
  v31 = a8;
  v32 = a7;
  v33 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED00, &qword_1BAA4D338);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v29 - v15;
  v30 = *(a1 + 32);
  if (a2)
  {

    v17 = a2;
    a2 = sub_1BAA3969C();
    v19 = v18;

    if (a3)
    {
LABEL_3:
      sub_1BAA3962C();
      v20 = sub_1BAA3964C();
      (*(*(v20 - 8) + 56))(v16, 0, 1, v20);
      goto LABEL_6;
    }
  }

  else
  {

    v19 = 0xF000000000000000;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v21 = sub_1BAA3964C();
  (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
LABEL_6:
  if (!a4)
  {
    v22 = 0;
    v24 = a9;
    if (a5)
    {
      goto LABEL_8;
    }

LABEL_10:
    v25 = 0;
    goto LABEL_11;
  }

  v22 = sub_1BAA39D9C();
  a4 = v23;
  v24 = a9;
  if (!a5)
  {
    goto LABEL_10;
  }

LABEL_8:
  v25 = sub_1BAA39D9C();
  a5 = v26;
LABEL_11:
  v27 = v24;
  v30(a2, v19, v16, v22, a4, v25, a5, v33, __PAIR64__(v31, v32), v24);

  sub_1BA84BCDC(a2, v19);

  return sub_1BA84BC58(v16, &qword_1EBC0ED00, &qword_1BAA4D338);
}

uint64_t sub_1BA861DEC(uint64_t a1, const void *a2, void *a3)
{
  v3[10] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED00, &qword_1BAA4D338);
  v3[11] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[12] = v7;
  v3[13] = _Block_copy(a2);
  if (a1)
  {
    v8 = sub_1BAA39D9C();
    a1 = v9;
  }

  else
  {
    v8 = 0;
  }

  v3[14] = a1;
  a3;
  v10 = swift_task_alloc();
  v3[15] = v10;
  *v10 = v3;
  v10[1] = sub_1BA861F2C;

  return sub_1BA860A4C((v3 + 2), v7, v8, a1);
}

uint64_t sub_1BA861F2C()
{
  v29 = *(*v0 + 104);
  v1 = *(*v0 + 80);
  v31 = *v0;
  v28 = *(*v0 + 16);
  v27 = *(*v0 + 24);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 68);
  v6 = *v0;
  v7 = *(*v0 + 72);

  if (v30)
  {
    if (v29)
    {
      v8 = v6[13];
      v9 = sub_1BAA395FC();

      (v8)[2](v8, 0, 0, 0, 0, 0, 0, 0, v9);
      _Block_release(v8);
    }

    else
    {
    }
  }

  else
  {
    v26 = v7;
    if (v29)
    {
      v10 = v2;
      v11 = v6;
      v25 = v5;
      v12 = v3;
      if (v27 >> 60 == 15)
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_1BAA3968C();
      }

      v14 = v11[11];
      sub_1BA84BBCC(v11[12], v14, &qword_1EBC0ED00, &qword_1BAA4D338);
      v15 = sub_1BAA3964C();
      v16 = *(v15 - 8);
      v17 = (*(v16 + 48))(v14, 1, v15);
      v18 = 0;
      if (v17 != 1)
      {
        v19 = v11[11];
        v18 = sub_1BAA3961C();
        (*(v16 + 8))(v19, v15);
      }

      if (v10)
      {
        v20 = sub_1BAA39D8C();
      }

      else
      {
        v20 = 0;
      }

      if (v12)
      {
        v21 = sub_1BAA39D8C();
      }

      else
      {
        v21 = 0;
      }

      v22 = v11[13];
      (v22)[2](v22, v13, v18, v20, v21, v4, v25, v26, 0);

      _Block_release(v22);
      sub_1BA84BCDC(v28, v27);
    }

    else
    {
      sub_1BA84BCDC(v28, v27);
    }
  }

  v23 = *(v31 + 8);

  return v23();
}

void __swiftcall NEURLFilterControlProviderHost.init()(NEURLFilterControlProviderHost *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id NEURLFilterControlProviderHost.init()()
{
  *(v0 + OBJC_IVAR___NEURLFilterControlProviderHost_exportedObject) = 0;
  v2.super_class = NEURLFilterControlProviderHost;
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t type metadata accessor for NEURLFilterControlProviderHost()
{
  result = qword_1EBC0ED20;
  if (!qword_1EBC0ED20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC0ED20);
  }

  return result;
}

id sub_1BA8624C0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NEURLFilterControlProviderHostExportedObject();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA862518()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1BA84E9A0;

  return sub_1BA861DEC(v2, v3, v4);
}

uint64_t sub_1BA8625D8(void *a1)
{
  v2 = swift_allocObject();
  v3 = v2;
  *(v2 + 16) = 0;
  if (a1)
  {
    v10[4] = sub_1BA85BB28;
    v10[5] = v2;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1BA871994;
    v10[3] = &block_descriptor_26_0;
    v4 = _Block_copy(v10);

    v5 = [a1 remoteObjectProxyWithErrorHandler_];
    _Block_release(v4);
    sub_1BAA3A04C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED40, &qword_1BAA4D410);
    if (swift_dynamicCast())
    {
      v6 = v10[0];
      swift_beginAccess();
      v7 = *(v3 + 16);

      return v6;
    }

    else
    {
      swift_beginAccess();
      v9 = *(v3 + 16);

      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BA862890()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1BA84E9A0;

  return sub_1BA8607E0(v2, v3, v4);
}

uint64_t sub_1BA86295C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BA84E9A0;

  return sub_1BA85FB4C(v2, v3);
}

uint64_t objectdestroy_19Tm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1BA862B44()
{
  result = sub_1BAA39D8C();
  qword_1EBC0ED48 = result;
  return result;
}

uint64_t sub_1BA862BA0()
{
  result = sub_1BAA39D8C();
  qword_1EBC0ED50 = result;
  return result;
}

id sub_1BA862BFC(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

NetworkExtension::NEURLFilterManager::Status_optional __swiftcall NEURLFilterManager.Status.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

NetworkExtension::NEURLFilterManager::Error_optional __swiftcall NEURLFilterManager.Error.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 1;
  if ((rawValue - 1) >= 0xE)
  {
    v2 = 14;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1BA862CB0()
{
  v1 = *v0;
  sub_1BAA3A1DC();
  MEMORY[0x1BFAF8EE0](v1 + 1);
  return sub_1BAA3A1FC();
}

uint64_t sub_1BA862D28(uint64_t a1)
{
  v2 = *v1;
  sub_1BAA3A1DC();
  MEMORY[0x1BFAF8EE0](v2 + 1);
  return sub_1BAA3A1FC();
}

uint64_t sub_1BA862D94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA86DFC4();
  v5 = sub_1BA86E018();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t static NEURLFilterManager.shared.getter()
{
  if (qword_1EBC0E928 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1BA862E48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_1BAA39E4C();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

id sub_1BA862EC8()
{
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v1 = result;
    type metadata accessor for NEURLFilterManager(0);
    swift_allocObject();
    result = sub_1BA8630C4(v1);
    qword_1EBC0ED58 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA862F38(uint64_t a1, uint64_t *a2)
{
  sub_1BA84985C(a1, v5, &qword_1EBC0ED60, &qword_1BAA4D460);
  v3 = *a2;
  swift_beginAccess();
  sub_1BA8651E8(v5, v3 + 64, &qword_1EBC0ED60, &qword_1BAA4D460);
  return swift_endAccess();
}

uint64_t sub_1BA863014(uint64_t a1)
{
  swift_beginAccess();
  sub_1BA8651E8(a1, v1 + 64, &qword_1EBC0ED60, &qword_1BAA4D460);
  return swift_endAccess();
}

uint64_t sub_1BA8630C4(void *a1)
{
  v2 = v1;
  v20 = a1;
  v3 = sub_1BAA39FBC();
  v18 = *(v3 - 8);
  v19 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BAA39FAC();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1BAA3995C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1BA8474EC(0, &qword_1EBC0EB00, 0x1E69E9610);
  v17 = &OBJC_IVAR____TtC16NetworkExtension18NEURLFilterManager_statusObserver;
  sub_1BAA3994C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BA86E658(&qword_1EBC0EE50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE58, &qword_1BAA4D8C0);
  sub_1BA86E6A0(&qword_1EBC0EE60, &qword_1EBC0EE58, &qword_1BAA4D8C0, MEMORY[0x1E69E6328]);
  sub_1BAA3A05C();
  (*(v18 + 104))(v5, *MEMORY[0x1E69E8090], v19);
  *(v1 + 16) = sub_1BAA39FEC();
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  v8 = OBJC_IVAR____TtC16NetworkExtension18NEURLFilterManager_localizedDescription;
  v9 = sub_1BAA3960C();
  (*(*(v9 - 8) + 56))(v2 + v8, 1, 1, v9);
  v10 = v20;
  *(v2 + 32) = v20;
  v11 = v10;
  sub_1BA863658();
  v12 = *(v2 + 32);
  if (v12)
  {
    v13 = v12;
    v14 = sub_1BAA39FCC();
    aBlock[4] = sub_1BA86ECF8;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA862E48;
    aBlock[3] = &block_descriptor_286;
    v15 = _Block_copy(aBlock);
    [v13 setChangedQueue:v14 andHandler:v15];

    _Block_release(v15);
    v11 = v14;
  }

  return v2;
}

void sub_1BA863470()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_1EBC0E918 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_1EBC0ED48 object:0];
}

id *NEURLFilterManager.deinit()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 defaultCenter];
    [v4 removeObserver_];

    v5 = v0[6];
  }

  else
  {
    v5 = 0;
  }

  v0[6] = 0;

  sub_1BA84BC58((v0 + 8), &qword_1EBC0ED60, &qword_1BAA4D460);
  sub_1BA84BC58(v0 + OBJC_IVAR____TtC16NetworkExtension18NEURLFilterManager_localizedDescription, &qword_1EBC0ED68, &qword_1BAA4D468);
  return v0;
}

uint64_t NEURLFilterManager.__deallocating_deinit()
{
  NEURLFilterManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1BA863658()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = [objc_opt_self() mainQueue];
  v7[4] = sub_1BA86DFBC;
  v8 = v0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1BA863908;
  v7[3] = &block_descriptor_194;
  v3 = _Block_copy(v7);

  v4 = [v1 addObserverForName:@"com.apple.networkextension.statuschanged" object:0 queue:v2 usingBlock:v3];
  _Block_release(v3);

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    swift_unknownObjectRelease();
    v5 = 0;
  }

  v6 = *(v0 + 48);
  *(v0 + 48) = v5;
}

uint64_t sub_1BA8637C8(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultCenter];
  if (qword_1EBC0E920 != -1)
  {
    swift_once();
  }

  [v3 postNotificationName:qword_1EBC0ED50 object:0];

  swift_beginAccess();
  sub_1BA84985C(a2 + 64, &v7, &qword_1EBC0ED60, &qword_1BAA4D460);
  if (!v8)
  {
    return sub_1BA84BC58(&v7, &qword_1EBC0ED60, &qword_1BAA4D460);
  }

  sub_1BA8549AC(&v7, v9);
  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v5 + 8))(a2, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1BA863908(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BAA3957C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1BAA3956C();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1BA8639FC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BA86ECFC;
  *(v6 + 24) = v5;
  v9[4] = sub_1BA86ED00;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BA863DB0;
  v9[3] = &block_descriptor_229;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA863BDC(char a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BA863D38;
  *(v6 + 24) = v5;
  v9[4] = sub_1BA863D88;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BA863DB0;
  v9[3] = &block_descriptor_7;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*sub_1BA863DF0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = *(v1 + 16);
  sub_1BAA39FDC();
  v4[64] = *v4;
  return sub_1BA863EA8;
}

void sub_1BA863EA8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v5 = *(*a1 + 48);
  isEscapingClosureAtFileLocation = *(*a1 + 56);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    v7 = swift_allocObject();
    v3 = v7;
    *(v7 + 16) = sub_1BA86ECFC;
    *(v7 + 24) = v6;
    v2[4] = sub_1BA86ED00;
    v2[5] = v7;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_1BA863DB0;
    v2[3] = &block_descriptor_15;
    v8 = _Block_copy(v2);

    dispatch_sync(isEscapingClosureAtFileLocation, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1BA86ECFC;
  *(v10 + 24) = v9;
  v2[4] = sub_1BA86ED00;
  v2[5] = v10;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1BA863DB0;
  v2[3] = &block_descriptor_26_1;
  v11 = _Block_copy(v2);

  dispatch_sync(isEscapingClosureAtFileLocation, v11);
  _Block_release(v11);
  v12 = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_1BA86412C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BA86ED04;
  *(v6 + 24) = v5;
  v9[4] = sub_1BA86ED00;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BA863DB0;
  v9[3] = &block_descriptor_217;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void sub_1BA8642E8(uint64_t a1@<X0>, SEL *a2@<X1>, unsigned __int8 *a3@<X8>)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v6 = [v4 urlFilter];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 *a2];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
}

uint64_t sub_1BA864388(char a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BA864554;
  *(v6 + 24) = v5;
  v9[4] = sub_1BA86ED00;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BA863DB0;
  v9[3] = &block_descriptor_36;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void sub_1BA8644E4(uint64_t a1, char a2, SEL *a3)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v6 = [v3 urlFilter];
    [v6 *a3];
  }
}

void (*sub_1BA86457C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = *(v1 + 16);
  sub_1BAA39FDC();
  v4[64] = *v4;
  return sub_1BA864634;
}

void sub_1BA864634(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v5 = *(*a1 + 48);
  isEscapingClosureAtFileLocation = *(*a1 + 56);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    v7 = swift_allocObject();
    v3 = v7;
    *(v7 + 16) = sub_1BA86ED04;
    *(v7 + 24) = v6;
    v2[4] = sub_1BA86ED00;
    v2[5] = v7;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_1BA863DB0;
    v2[3] = &block_descriptor_49_1;
    v8 = _Block_copy(v2);

    dispatch_sync(isEscapingClosureAtFileLocation, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1BA86ED04;
  *(v10 + 24) = v9;
  v2[4] = sub_1BA86ED00;
  v2[5] = v10;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1BA863DB0;
  v2[3] = &block_descriptor_60;
  v11 = _Block_copy(v2);

  dispatch_sync(isEscapingClosureAtFileLocation, v11);
  _Block_release(v11);
  v12 = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_1BA8648B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BA86ED08;
  *(v6 + 24) = v5;
  v9[4] = sub_1BA86ED00;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BA863DB0;
  v9[3] = &block_descriptor_205;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void sub_1BA864A7C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = 0;
  if (v3)
  {
    v5 = [v3 urlFilter];
    if (v5)
    {
      v6 = v5;
      [v5 prefilterFetchInterval];
      v4 = v7;
    }
  }

  *a2 = v4;
}

uint64_t sub_1BA864B10(double a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1BA864CE4;
  *(v5 + 24) = v4;
  v8[4] = sub_1BA86ED00;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1BA863DB0;
  v8[3] = &block_descriptor_70;
  v6 = _Block_copy(v8);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void sub_1BA864C74(uint64_t a1, double a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v4 = [v2 urlFilter];
    [v4 setPrefilterFetchInterval_];
  }
}

void (*sub_1BA864CF0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 64) = *(v1 + 16);
  sub_1BAA39FDC();
  return sub_1BA864DA0;
}

void sub_1BA864DA0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 56);
  isEscapingClosureAtFileLocation = *(*a1 + 64);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1BA86ED08;
    *(v7 + 24) = v6;
    v2[4] = sub_1BA86ED00;
    v2[5] = v7;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_1BA863DB0;
    v2[3] = &block_descriptor_82;
    v8 = _Block_copy(v2);

    dispatch_sync(isEscapingClosureAtFileLocation, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1BA86ED08;
  *(v10 + 24) = v9;
  v2[4] = sub_1BA86ED00;
  v2[5] = v10;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1BA863DB0;
  v2[3] = &block_descriptor_93_0;
  v11 = _Block_copy(v2);

  dispatch_sync(isEscapingClosureAtFileLocation, v11);
  _Block_release(v11);
  v12 = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_1BA865030(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED68, &qword_1BAA4D468);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1BA84985C(a1, &v10 - v5, &qword_1EBC0ED68, &qword_1BAA4D468);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC16NetworkExtension18NEURLFilterManager_localizedDescription;
  swift_beginAccess();
  sub_1BA8651E8(v6, v7 + v8, &qword_1EBC0ED68, &qword_1BAA4D468);
  return swift_endAccess();
}

uint64_t sub_1BA865110@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16NetworkExtension18NEURLFilterManager_localizedDescription;
  swift_beginAccess();
  return sub_1BA84985C(v1 + v3, a1, &qword_1EBC0ED68, &qword_1BAA4D468);
}

uint64_t sub_1BA865178(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16NetworkExtension18NEURLFilterManager_localizedDescription;
  swift_beginAccess();
  sub_1BA8651E8(a1, v1 + v3, &qword_1EBC0ED68, &qword_1BAA4D468);
  return swift_endAccess();
}

uint64_t sub_1BA8651E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA8653E8@<X0>(uint64_t a1@<X0>, SEL *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED00, &qword_1BAA4D338);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = *(a1 + 24);
  if (v9 && (v10 = [v9 urlFilter]) != 0)
  {
    v11 = v10;
    v12 = [v10 *a2];
    if (v12)
    {
      v13 = v12;
      sub_1BAA3962C();

      v14 = sub_1BAA3964C();
      (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
    }

    else
    {

      v17 = sub_1BAA3964C();
      (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
    }

    return sub_1BA84BBCC(v8, a3, &qword_1EBC0ED00, &qword_1BAA4D338);
  }

  else
  {
    v15 = sub_1BAA3964C();
    return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }
}

uint64_t sub_1BA8655D8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED70, &qword_1BAA4D470);
  sub_1BAA39FDC();
  return v2;
}

void sub_1BA865640(uint64_t a1@<X0>, SEL *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 24);
  if (v4 && (v6 = [v4 urlFilter]) != 0)
  {
    v7 = v6;
    v8 = [v6 *a2];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1BAA39D9C();
      v12 = v11;
    }

    else
    {

      v10 = 0;
      v12 = 0;
    }

    *a3 = v10;
    a3[1] = v12;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

id sub_1BA865734@<X0>(void *a1@<X8>)
{
  result = *(v1 + 24);
  if (result)
  {
    result = [result payloadInfo];
  }

  *a1 = result;
  return result;
}

uint64_t sub_1BA8657A4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_1BAA39FDC();
  return v4;
}

uint64_t sub_1BA8657FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE40, &qword_1BAA4D8B8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v5);
  v10 = v18 - v9;
  v11 = *(a1 + 24);
  if (v11)
  {
    v12 = v11;
    v13 = [v12 identifier];
    if (v13)
    {
      v14 = v13;
      sub_1BAA396CC();

      v15 = sub_1BAA396DC();
      (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
    }

    else
    {
      v15 = sub_1BAA396DC();
      (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    }

    sub_1BA84BBCC(v7, v10, &qword_1EBC0EE40, &qword_1BAA4D8B8);
    sub_1BAA396DC();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v10, 1, v15) == 1)
    {

      result = sub_1BA84BC58(v10, &qword_1EBC0EE40, &qword_1BAA4D8B8);
      *a2 = 0;
    }

    else
    {
      v17 = sub_1BAA396BC();

      result = (*(v16 + 8))(v10, v15);
      *a2 = v17;
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_1BA865AA8(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = [v3 payloadInfo];
    v5 = v4;
    if (v4)
    {
    }

    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_1BA865B90(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = [v3 payloadInfo];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 profileSource];

      v7 = v6 == 2;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
}

void sub_1BA865C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37[2] = a6;
  v37[3] = a4;
  v37[5] = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED00, &qword_1BAA4D338);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v37 - v12;
  v14 = *(a1 + 24);
  if (v14 && (v15 = v14, (v16 = [v15 urlFilter]) != 0))
  {
    v37[0] = a7;
  }

  else
  {
    v17 = sub_1BA86E894();
    if (!v17)
    {
      sub_1BA866BEC();
      swift_allocError();
      *v36 = 6;
      swift_willThrow();

      return;
    }

    v15 = v17;
    v37[0] = a7;

    v14 = v15;
  }

  v18 = [v15 urlFilter];
  if (!v18)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v18;
  v37[1] = v7;
  v20 = sub_1BAA3961C();
  [v19 setPirServerURL_];

  v21 = [v15 urlFilter];
  if (!v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v21;
  sub_1BA84985C(a3, v13, &qword_1EBC0ED00, &qword_1BAA4D338);
  v23 = sub_1BAA3964C();
  v24 = *(v23 - 8);
  v25 = 0;
  if ((*(v24 + 48))(v13, 1, v23) != 1)
  {
    v25 = sub_1BAA3961C();
    (*(v24 + 8))(v13, v23);
  }

  [v22 setPirPrivacyPassIssuerURL_];

  v26 = [v15 urlFilter];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1BAA39D8C();
    [v27 setPirAuthenticationToken_];

    v29 = [v15 urlFilter];
    if (v29)
    {
      v30 = v29;
      v31 = sub_1BAA39D8C();
      [v30 setControlProviderBundleIdentifier_];

      v32 = *(a1 + 24);
      *(a1 + 24) = v14;
      v33 = v15;

      v34 = [objc_opt_self() createConnectionForURLFilter];
      v35 = *(a1 + 40);
      *(a1 + 40) = v34;

      return;
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_1BA866018()
{
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  v2 = sub_1BA8474EC(0, &qword_1EBC0ED80, off_1E7F046A0);
  *v1 = v0;
  v1[1] = sub_1BA866104;
  v3 = *(v0 + 144);

  return MEMORY[0x1EEE6DE38](v0 + 128, 0, 0, 0xD000000000000015, 0x80000001BAA511C0, sub_1BA866840, v3, v2);
}

uint64_t sub_1BA866104()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1BA8663BC;
  }

  else
  {
    v2 = sub_1BA866218;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BA866218()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1BA86CA40;
  *(v5 + 24) = v4;
  v0[12] = sub_1BA86ED00;
  v0[13] = v5;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1BA863DB0;
  v0[11] = &block_descriptor_111;
  v6 = _Block_copy(v0 + 8);

  v7 = v2;

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

uint64_t sub_1BA8663BC()
{
  v1 = v0[20];
  v2 = v0[18];
  sub_1BAA3A07C();
  v0[14] = 0;
  v0[15] = 0xE000000000000000;
  MEMORY[0x1BFAF8AF0](0xD00000000000002ALL, 0x80000001BAA511E0);
  v0[17] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB90, &qword_1BAA4DBF0);
  sub_1BAA3A0FC();
  sub_1BAA396EC();

  v3 = *(v2 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1BA866B90;
  *(v4 + 24) = v2;
  v0[6] = sub_1BA86ED00;
  v0[7] = v4;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1BA863DB0;
  v0[5] = &block_descriptor_100;
  v5 = _Block_copy(v0 + 2);

  dispatch_sync(v3, v5);
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v0[20];
    type metadata accessor for NEURLFilterManager(0);
    v9 = sub_1BAA395FC();
    sub_1BA866BEC();
    swift_allocError();
    sub_1BA86C600(v9, v10);

    swift_willThrow();

    v11 = v0[1];

    return v11();
  }

  return result;
}

void sub_1BA86662C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE78, &qword_1BAA4D8D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 32);
  if (v9)
  {
    sub_1BA8474EC(0, &qword_1EBC0EB00, 0x1E69E9610);
    v10 = v9;
    v11 = sub_1BAA39FCC();
    (*(v5 + 16))(v8, a1, v4);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    (*(v5 + 32))(v13 + v12, v8, v4);
    *(v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
    aBlock[4] = sub_1BA86E7A8;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA874700;
    aBlock[3] = &block_descriptor_309;
    v14 = _Block_copy(aBlock);

    [v10 loadConfigurationsWithCompletionQueue:v11 handler:v14];
    _Block_release(v14);
  }
}

id sub_1BA866848(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    sub_1BAA3A07C();
    MEMORY[0x1BFAF8AF0](0xD00000000000002ALL, 0x80000001BAA511E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB90, &qword_1BAA4DBF0);
    sub_1BAA3A0FC();
    sub_1BAA396EC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE78, &qword_1BAA4D8D0);
    return sub_1BAA39E9C();
  }

  else
  {
    if (a1)
    {
      v4 = sub_1BA8745F4(a1);
      if (v4)
      {
        v5 = v4;
        v6 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v4 >> 62)
        {
          goto LABEL_19;
        }

        for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BAA3A10C())
        {
          v8 = 0;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v9 = MEMORY[0x1BFAF8D80](v8, v5);
            }

            else
            {
              if (v8 >= *(v6 + 16))
              {
                goto LABEL_18;
              }

              v9 = *(v5 + 8 * v8 + 32);
            }

            v10 = v9;
            v11 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              break;
            }

            v12 = [v9 urlFilter];
            if (v12)
            {
              v13 = v12;

              sub_1BAA3A07C();

              v14 = [v10 description];
              v15 = sub_1BAA39D9C();
              v17 = v16;

              MEMORY[0x1BFAF8AF0](v15, v17);

              sub_1BAA396EC();

              goto LABEL_22;
            }

            ++v8;
            if (v11 == i)
            {
              goto LABEL_20;
            }
          }

          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          ;
        }

LABEL_20:

        sub_1BAA396EC();
      }
    }

    result = sub_1BA86E894();
    if (result)
    {
LABEL_22:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE78, &qword_1BAA4D8D0);
      return sub_1BAA39EAC();
    }
  }

  return result;
}

uint64_t sub_1BA866B20(uint64_t a1, void *a2)
{
  *(a1 + 56) = 1;
  v3 = *(a1 + 24);
  *(a1 + 24) = a2;
  v4 = a2;

  v5 = [objc_opt_self() createConnectionForURLFilter];
  v6 = *(a1 + 40);
  *(a1 + 40) = v5;

  return MEMORY[0x1EEE66BB8](v5, v6);
}

void sub_1BA866B90()
{
  *(v0 + 56) = 0;
  v1 = *(v0 + 24);
  *(v0 + 24) = 0;
}

uint64_t type metadata accessor for NEURLFilterManager(uint64_t a1)
{
  result = qword_1EBC0E8E0;
  if (!qword_1EBC0E8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BA866BEC()
{
  result = qword_1EBC0ED88;
  if (!qword_1EBC0ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC0ED88);
  }

  return result;
}

uint64_t sub_1BA866C60()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED90, &qword_1BAA4D498);
  *v3 = v0;
  v3[1] = sub_1BA866D68;

  return MEMORY[0x1EEE6DE38](v0 + 4, 0, 0, 0xD000000000000018, 0x80000001BAA51210, sub_1BA86CA48, v2, v4);
}

uint64_t sub_1BA866D68()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1BA866EA0;
  }

  else
  {

    v2 = sub_1BA866E84;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BA866EA0()
{
  v1 = v0[9];

  sub_1BAA3A07C();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1BFAF8AF0](0xD000000000000023, 0x80000001BAA51230);
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB90, &qword_1BAA4DBF0);
  sub_1BAA3A0FC();
  sub_1BAA396EC();

  type metadata accessor for NEURLFilterManager(0);
  v2 = sub_1BAA395FC();
  sub_1BA866BEC();
  swift_allocError();
  sub_1BA86C600(v2, v3);

  swift_willThrow();
  v4 = v0[1];

  return v4();
}

void sub_1BA867008(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE68, &qword_1BAA4D8C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = sub_1BA86E488();
  sub_1BA8474EC(0, &qword_1EBC0EB00, 0x1E69E9610);
  v10 = sub_1BAA39FCC();
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1BA86E6E8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA874700;
  aBlock[3] = &block_descriptor_295;
  v13 = _Block_copy(aBlock);

  [v9 loadConfigurationsWithCompletionQueue:v10 handler:v13];
  _Block_release(v13);
}

id sub_1BA867208(uint64_t a1, id a2)
{
  if (a2)
  {
    v33 = 0xE000000000000000;
    v3 = a2;
    sub_1BAA3A07C();
    MEMORY[0x1BFAF8AF0](0xD000000000000023, 0x80000001BAA51230);
    v38 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB90, &qword_1BAA4DBF0);
    sub_1BAA3A0FC();
    sub_1BAA396EC();

    aBlock = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE68, &qword_1BAA4D8C8);
    return sub_1BAA39E9C();
  }

  if (!a1 || (v5 = sub_1BA8745F4(a1)) == 0)
  {
    aBlock = MEMORY[0x1E69E7CC0];
LABEL_29:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE68, &qword_1BAA4D8C8);
    return sub_1BAA39EAC();
  }

  v6 = v5;
  v38 = MEMORY[0x1E69E7CC0];
  v7 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
LABEL_26:
    v8 = sub_1BAA3A10C();
    if (v8)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

  v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_27:

    v7 = MEMORY[0x1E69E7CC0];
LABEL_28:
    aBlock = v7;
    goto LABEL_29;
  }

LABEL_7:
  v31 = v7;
  v9 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1BFAF8D80](v9, v6);
    }

    else
    {
      if (v9 >= *(v31 + 16))
      {
        goto LABEL_25;
      }

      v10 = *(v6 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v13 = [v10 urlFilter];
    if (v13)
    {
      break;
    }

LABEL_9:
    ++v9;
    if (v12 == v8)
    {

      goto LABEL_28;
    }
  }

  v14 = v8;

  result = [objc_opt_self() sharedManagerForAllUsers];
  if (result)
  {
    v15 = result;
    sub_1BA8474EC(0, &qword_1EBC0EB00, 0x1E69E9610);
    v16 = v15;
    v17 = sub_1BAA39FCC();
    v36 = sub_1BA86ECF8;
    v37 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = sub_1BA862E48;
    v35 = &block_descriptor_298;
    v18 = _Block_copy(&aBlock);
    [v16 setChangedQueue:v17 andHandler:v18];
    _Block_release(v18);

    type metadata accessor for NEURLFilterManager(0);
    swift_allocObject();
    v19 = sub_1BA8630C4(v16);
    v20 = *(v19 + 24);
    *(v19 + 24) = v11;
    v21 = v11;

    *(v19 + 56) = 1;
    v22 = [objc_opt_self() createConnectionForURLFilter];
    v23 = *(v19 + 40);
    *(v19 + 40) = v22;

    v24 = [objc_opt_self() defaultCenter];
    v25 = [objc_opt_self() mainQueue];
    v36 = sub_1BA86ED94;
    v37 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = sub_1BA863908;
    v35 = &block_descriptor_302;
    v26 = _Block_copy(&aBlock);

    v27 = [v24 addObserverForName:@"com.apple.networkextension.statuschanged" object:0 queue:v25 usingBlock:v26];
    _Block_release(v26);

    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (!v28)
    {
      swift_unknownObjectRelease();
      v28 = 0;
    }

    v8 = v14;
    v29 = *(v19 + 48);
    *(v19 + 48) = v28;

    MEMORY[0x1BFAF8B20](v30);
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BAA39E6C();
    }

    sub_1BAA39E7C();

    v7 = v38;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA867758(char a1, uint64_t a2)
{
  *(v3 + 96) = a2;
  *(v3 + 104) = v2;
  *(v3 + 168) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BA86777C, 0, 0);
}

uint64_t sub_1BA86777C()
{
  v1 = swift_task_alloc();
  v0[7].i64[0] = v1;
  v1[1] = vextq_s8(v0[6], v0[6], 8uLL);
  v2 = swift_task_alloc();
  v0[7].i64[1] = v2;
  v3 = type metadata accessor for NEURLFilterManager(0);
  v0[8].i64[0] = v3;
  *v2 = v0;
  v2[1] = sub_1BA867880;

  return MEMORY[0x1EEE6DE38](&v0[5], 0, 0, 0xD00000000000001FLL, 0x80000001BAA51260, sub_1BA86CA50, v1, v3);
}

uint64_t sub_1BA867880()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1BA867E50;
  }

  else
  {

    v2 = sub_1BA86799C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BA86799C()
{
  v1 = v0[10];
  v0[18] = v1;
  if (*(v1 + 56) == 1)
  {
    v2 = *(v0 + 168);
    v3 = *(v1 + 16);
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1BA86ECFC;
    *(v5 + 24) = v4;
    v0[6] = sub_1BA86ED00;
    v0[7] = v5;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1BA863DB0;
    v0[5] = &block_descriptor_126;
    v6 = _Block_copy(v0 + 2);

    dispatch_sync(v3, v6);
    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }

    else
    {
      v8 = swift_task_alloc();
      v0[19] = v8;
      *v8 = v0;
      v8[1] = sub_1BA867CD8;

      return sub_1BA868B50();
    }
  }

  else
  {
    sub_1BA866BEC();
    v9 = swift_allocError();
    *v10 = 1;
    swift_willThrow();

    sub_1BAA3A07C();
    v0[8] = 0;
    v0[9] = 0xE000000000000000;
    MEMORY[0x1BFAF8AF0](0xD000000000000015, 0x80000001BAA51280);
    v0[11] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB90, &qword_1BAA4DBF0);
    sub_1BAA3A0FC();
    sub_1BAA396EC();

    v11 = sub_1BAA395FC();
    swift_allocError();
    sub_1BA86C600(v11, v12);

    swift_willThrow();
    v13 = v0[1];

    return v13();
  }

  return result;
}

uint64_t sub_1BA867CD8()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1BA867FB0;
  }

  else
  {
    v2 = sub_1BA867DEC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BA867DEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BA867E50()
{

  v1 = v0[17];
  sub_1BAA3A07C();
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  MEMORY[0x1BFAF8AF0](0xD000000000000015, 0x80000001BAA51280);
  v0[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB90, &qword_1BAA4DBF0);
  sub_1BAA3A0FC();
  sub_1BAA396EC();

  v2 = sub_1BAA395FC();
  sub_1BA866BEC();
  swift_allocError();
  sub_1BA86C600(v2, v3);

  swift_willThrow();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1BA867FB0()
{

  v1 = v0[20];
  sub_1BAA3A07C();
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  MEMORY[0x1BFAF8AF0](0xD000000000000015, 0x80000001BAA51280);
  v0[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB90, &qword_1BAA4DBF0);
  sub_1BAA3A0FC();
  sub_1BAA396EC();

  v2 = sub_1BAA395FC();
  sub_1BA866BEC();
  swift_allocError();
  sub_1BA86C600(v2, v3);

  swift_willThrow();
  v4 = v0[1];

  return v4();
}

void sub_1BA868110(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE30, &qword_1BAA4D8A8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  v11 = sub_1BA86E488();
  sub_1BA8474EC(0, &qword_1EBC0EB00, 0x1E69E9610);
  v12 = sub_1BAA39FCC();
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  (*(v7 + 32))(v14 + v13, v10, v6);
  *(v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_1BA86E59C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA874700;
  aBlock[3] = &block_descriptor_279;
  v15 = _Block_copy(aBlock);
  v16 = a3;

  [v11 loadConfigurationsWithCompletionQueue:v12 handler:v15];
  _Block_release(v15);
}

unint64_t sub_1BA868320(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a5;
  v8 = sub_1BAA396DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE38, &qword_1BAA4D8B0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v60 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE40, &qword_1BAA4D8B8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v78 = v60 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v79 = v60 - v21;
  v22 = sub_1BA86E488();
  type metadata accessor for NEURLFilterManager(0);
  swift_allocObject();
  v77 = sub_1BA8630C4(v22);
  if (a2)
  {
    aBlock[0] = a2;
    v23 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE30, &qword_1BAA4D8A8);
    sub_1BAA39E9C();
LABEL_3:
    aBlock[0] = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE30, &qword_1BAA4D8A8);
    return sub_1BAA39EAC();
  }

  v71 = v14;
  v72 = v8;
  v67 = v18;
  v73 = v12;
  v64 = v11;
  if (!a1)
  {
    goto LABEL_3;
  }

  result = sub_1BA8745F4(a1);
  if (!result)
  {
    goto LABEL_3;
  }

  v25 = result;
  v26 = v9;
  if (!(result >> 62))
  {
    v27 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v28 = v73;
    if (v27)
    {
      goto LABEL_8;
    }

LABEL_31:

    goto LABEL_3;
  }

  result = sub_1BAA3A10C();
  v27 = result;
  v28 = v73;
  if (!result)
  {
    goto LABEL_31;
  }

LABEL_8:
  v60[1] = a4;
  if (v27 >= 1)
  {
    v29 = 0;
    v76 = v25 & 0xC000000000000001;
    v68 = (v26 + 48);
    v69 = (v26 + 56);
    v61 = (v26 + 32);
    v66 = (v26 + 8);
    v63 = @"com.apple.networkextension.statuschanged";
    v62 = v81;
    v30 = &qword_1EBC0EE40;
    v74 = v25;
    v70 = v27;
    while (1)
    {
      if (v76)
      {
        v32 = MEMORY[0x1BFAF8D80](v29, v25);
      }

      else
      {
        v32 = *(v25 + 8 * v29 + 32);
      }

      v31 = v32;
      v33 = [v32 urlFilter];
      if (!v33)
      {
        goto LABEL_11;
      }

      v34 = [v31 identifier];
      if (v34)
      {
        v35 = v34;
        sub_1BAA396CC();

        v36 = 0;
      }

      else
      {
        v36 = 1;
      }

      v37 = *v69;
      v38 = v79;
      v39 = v72;
      (*v69)(v79, v36, 1, v72);
      v40 = v78;
      sub_1BAA396CC();
      v37(v40, 0, 1, v39);
      v41 = *(v28 + 48);
      v42 = v71;
      sub_1BA84985C(v38, v71, v30, &qword_1BAA4D8B8);
      sub_1BA84985C(v40, v42 + v41, v30, &qword_1BAA4D8B8);
      v43 = v30;
      v44 = *v68;
      if ((*v68)(v42, 1, v39) == 1)
      {
        break;
      }

      v46 = v67;
      sub_1BA84985C(v42, v67, v30, &qword_1BAA4D8B8);
      if (v44(v42 + v41, 1, v39) == 1)
      {
        sub_1BA84BC58(v78, v30, &qword_1BAA4D8B8);
        sub_1BA84BC58(v79, v30, &qword_1BAA4D8B8);
        (*v66)(v46, v39);
        v25 = v74;
LABEL_24:
        sub_1BA84BC58(v42, &qword_1EBC0EE38, &qword_1BAA4D8B0);
        v27 = v70;
        v28 = v73;
        goto LABEL_11;
      }

      v47 = v64;
      (*v61)(v64, v42 + v41, v39);
      sub_1BA86E658(&qword_1EBC0EE48, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v65 = sub_1BAA39D7C();
      v48 = *v66;
      (*v66)(v47, v39);
      sub_1BA84BC58(v78, v43, &qword_1BAA4D8B8);
      sub_1BA84BC58(v79, v43, &qword_1BAA4D8B8);
      v48(v46, v39);
      sub_1BA84BC58(v42, v43, &qword_1BAA4D8B8);
      v30 = v43;
      if (v65)
      {
        goto LABEL_26;
      }

      v28 = v73;
      v25 = v74;
      v27 = v70;
LABEL_11:
      ++v29;

      if (v27 == v29)
      {
        goto LABEL_31;
      }
    }

    sub_1BA84BC58(v78, v30, &qword_1BAA4D8B8);
    sub_1BA84BC58(v79, v30, &qword_1BAA4D8B8);
    v45 = v44(v42 + v41, 1, v39);
    v25 = v74;
    if (v45 == 1)
    {
      sub_1BA84BC58(v42, v30, &qword_1BAA4D8B8);
LABEL_26:
      v49 = v30;
      v50 = v77;
      v51 = *(v77 + 24);
      *(v77 + 24) = v31;
      v52 = v31;

      *(v50 + 56) = 1;
      v53 = [objc_opt_self() createConnectionForURLFilter];
      v54 = *(v50 + 40);
      *(v50 + 40) = v53;

      v55 = [objc_opt_self() defaultCenter];
      v56 = [objc_opt_self() mainQueue];
      v81[2] = sub_1BA86ED94;
      v81[3] = v50;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v81[0] = sub_1BA863908;
      v81[1] = &block_descriptor_283;
      v57 = _Block_copy(aBlock);

      v58 = [v55 addObserverForName:v63 object:0 queue:v56 usingBlock:v57];

      _Block_release(v57);
      objc_opt_self();
      v59 = swift_dynamicCastObjCClass();
      if (!v59)
      {
        swift_unknownObjectRelease();
        v59 = 0;
      }

      v28 = v73;
      v25 = v74;
      v27 = v70;
      v31 = *(v77 + 48);
      *(v77 + 48) = v59;
      v30 = v49;
      goto LABEL_11;
    }

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA868B70()
{
  sub_1BAA39FDC();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1BA868CBC;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 40, 0, 0, 0xD000000000000013, 0x80000001BAA512A0, sub_1BA86CA74, v2, v3);
}

uint64_t sub_1BA868CBC()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1BA868FFC;
  }

  else
  {
    v2 = sub_1BA868DD0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BA868DD0()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 8);
  }

  else
  {
    sub_1BA866BEC();
    v2 = swift_allocError();
    *v3 = 1;
    swift_willThrow();
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v4 = sub_1BAA398CC();
    __swift_project_value_buffer(v4, qword_1EBC11B98);
    v5 = v2;
    v6 = sub_1BAA398AC();
    v7 = sub_1BAA39F8C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1BA83C000, v6, v7, "failed to save the URL Filter configurations: %@", v8, 0xCu);
      sub_1BA84BC58(v9, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
      MEMORY[0x1BFAFC150](v9, -1, -1);
      MEMORY[0x1BFAFC150](v8, -1, -1);
    }

    type metadata accessor for NEURLFilterManager(0);
    v12 = sub_1BAA395FC();
    swift_allocError();
    sub_1BA86C600(v12, v13);

    swift_willThrow();
    v1 = *(v0 + 8);
  }

  return v1();
}

uint64_t sub_1BA868FFC()
{
  v1 = *(v0 + 32);
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v2 = sub_1BAA398CC();
  __swift_project_value_buffer(v2, qword_1EBC11B98);
  v3 = v1;
  v4 = sub_1BAA398AC();
  v5 = sub_1BAA39F8C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1BA83C000, v4, v5, "failed to save the URL Filter configurations: %@", v6, 0xCu);
    sub_1BA84BC58(v7, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
    MEMORY[0x1BFAFC150](v7, -1, -1);
    MEMORY[0x1BFAFC150](v6, -1, -1);
  }

  type metadata accessor for NEURLFilterManager(0);
  v10 = sub_1BAA395FC();
  sub_1BA866BEC();
  swift_allocError();
  sub_1BA86C600(v10, v11);

  swift_willThrow();
  v12 = *(v0 + 8);

  return v12();
}

void sub_1BA8691DC(uint64_t a1)
{
  if (*(a1 + 56) != 1)
  {
    sub_1BA866BEC();
    swift_allocError();
    v7 = 7;
LABEL_9:
    *v6 = v7;
    swift_willThrow();
    return;
  }

  v2 = *(a1 + 24);
  if (!v2 || (v3 = [v2 urlFilter]) == 0)
  {
    sub_1BA866BEC();
    swift_allocError();
    v7 = 3;
    goto LABEL_9;
  }

  sub_1BA8474EC(0, &qword_1EBC0EE28, 0x1E695DF70);
  v4 = MEMORY[0x1BFAF8D20](MEMORY[0x1E69E7CC0]);
  v5 = *(a1 + 24);
  if (v5 && ([v5 checkValidityAndCollectErrors_] & 1) == 0)
  {
    sub_1BA866BEC();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
  }

  else
  {
  }
}

void sub_1BA86931C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  v8 = *(a2 + 32);
  if (v8)
  {
    v9 = *(a2 + 24);
    sub_1BA8474EC(0, &qword_1EBC0EB00, 0x1E69E9610);
    v10 = v9;
    v11 = v8;
    v12 = sub_1BAA39FCC();
    (*(v5 + 16))(v7, a1, v4);
    v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v14 = swift_allocObject();
    (*(v5 + 32))(v14 + v13, v7, v4);
    aBlock[4] = sub_1BA86E3D8;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA8538E4;
    aBlock[3] = &block_descriptor_273;
    v15 = _Block_copy(aBlock);

    [v11 saveConfiguration:v10 withCompletionQueue:v12 handler:v15];
    _Block_release(v15);
  }
}

uint64_t sub_1BA869528(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v3 = sub_1BAA398CC();
    __swift_project_value_buffer(v3, qword_1EBC11B98);
    v4 = a1;
    v5 = sub_1BAA398AC();
    v6 = sub_1BAA39F8C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = a1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_1BA83C000, v5, v6, "failed to save the URL Filter configuration: %@", v7, 0xCu);
      sub_1BA84BC58(v8, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
      MEMORY[0x1BFAFC150](v8, -1, -1);
      MEMORY[0x1BFAFC150](v7, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
    return sub_1BAA39E9C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
    return sub_1BAA39EAC();
  }
}

uint64_t sub_1BA869700()
{
  sub_1BAA39FDC();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1BA86984C;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 40, 0, 0, 0xD000000000000017, 0x80000001BAA512C0, sub_1BA86CA98, v2, v3);
}

uint64_t sub_1BA86984C()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1BA869B8C;
  }

  else
  {
    v2 = sub_1BA869960;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BA869960()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 8);
  }

  else
  {
    sub_1BA866BEC();
    v2 = swift_allocError();
    *v3 = 1;
    swift_willThrow();
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v4 = sub_1BAA398CC();
    __swift_project_value_buffer(v4, qword_1EBC11B98);
    v5 = v2;
    v6 = sub_1BAA398AC();
    v7 = sub_1BAA39F8C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1BA83C000, v6, v7, "failed to remove the URL Filter configuration: %@", v8, 0xCu);
      sub_1BA84BC58(v9, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
      MEMORY[0x1BFAFC150](v9, -1, -1);
      MEMORY[0x1BFAFC150](v8, -1, -1);
    }

    type metadata accessor for NEURLFilterManager(0);
    v12 = sub_1BAA395FC();
    swift_allocError();
    sub_1BA86C600(v12, v13);

    swift_willThrow();
    v1 = *(v0 + 8);
  }

  return v1();
}

uint64_t sub_1BA869B8C()
{
  v1 = *(v0 + 32);
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v2 = sub_1BAA398CC();
  __swift_project_value_buffer(v2, qword_1EBC11B98);
  v3 = v1;
  v4 = sub_1BAA398AC();
  v5 = sub_1BAA39F8C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1BA83C000, v4, v5, "failed to remove the URL Filter configuration: %@", v6, 0xCu);
    sub_1BA84BC58(v7, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
    MEMORY[0x1BFAFC150](v7, -1, -1);
    MEMORY[0x1BFAFC150](v6, -1, -1);
  }

  type metadata accessor for NEURLFilterManager(0);
  v10 = sub_1BAA395FC();
  sub_1BA866BEC();
  swift_allocError();
  sub_1BA86C600(v10, v11);

  swift_willThrow();
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1BA869D6C(uint64_t result)
{
  if (*(result + 24))
  {
    if (*(result + 56) == 1)
    {
      return result;
    }

    v1 = 7;
  }

  else
  {
    v1 = 1;
  }

  sub_1BA866BEC();
  swift_allocError();
  *v2 = v1;
  return swift_willThrow();
}

void sub_1BA869DD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 32);
  if (v9)
  {
    v10 = *(a2 + 24);
    sub_1BA8474EC(0, &qword_1EBC0EB00, 0x1E69E9610);
    v11 = v10;
    v12 = v9;
    v13 = sub_1BAA39FCC();
    (*(v5 + 16))(v8, a1, v4);
    v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v15 = swift_allocObject();
    (*(v5 + 32))(v15 + v14, v8, v4);
    *(v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
    aBlock[4] = sub_1BA86E330;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA8538E4;
    aBlock[3] = &block_descriptor_267;
    v16 = _Block_copy(aBlock);

    [v12 removeConfiguration:v11 withCompletionQueue:v13 handler:v16];
    _Block_release(v16);
  }
}

uint64_t sub_1BA86A000(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a1;
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v5 = sub_1BAA398CC();
    __swift_project_value_buffer(v5, qword_1EBC11B98);
    v6 = a1;
    v7 = sub_1BAA398AC();
    v8 = sub_1BAA39F8C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1BA83C000, v7, v8, "failed to remove the URL Filter configuration: %@", v9, 0xCu);
      sub_1BA84BC58(v10, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
      MEMORY[0x1BFAFC150](v10, -1, -1);
      MEMORY[0x1BFAFC150](v9, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
    return sub_1BAA39E9C();
  }

  else
  {
    v14 = *(a3 + 24);
    *(a3 + 24) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
    return sub_1BAA39EAC();
  }
}

uint64_t sub_1BA86A1E4()
{
  sub_1BAA39FDC();
  [*(*(v0 + 16) + 40) resetCache];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BA86A2C0()
{
  sub_1BAA39FDC();
  [*(*(v0 + 16) + 40) fetchServerParameters];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BA86A37C(uint64_t result)
{
  if (*(result + 40))
  {
    if (*(result + 56) == 1)
    {
      return result;
    }

    v1 = 7;
  }

  else
  {
    v1 = 9;
  }

  sub_1BA866BEC();
  swift_allocError();
  *v2 = v1;
  return swift_willThrow();
}

uint64_t sub_1BA86A3E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *))
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v5 = [v4 status];
    v6 = 0x40203020100uLL >> (8 * v5);
    if (v5 > 5)
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v8 = v6;
  return a3(&v8);
}

uint64_t sub_1BA86A45C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_1BAA39D6C();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t sub_1BA86A4EC(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BA86A50C, 0, 0);
}

uint64_t sub_1BA86A50C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0[17];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1BA86A6F0;
  v4 = swift_continuation_init();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(v3 + 40);
  if (v6)
  {
    v7 = v1[17];
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = sub_1BA86CABC;
    v8[4] = v5;
    v1[14] = sub_1BA86CAC0;
    v1[15] = v8;
    v1[10] = MEMORY[0x1E69E9820];
    v1[11] = 1107296256;
    v1[12] = sub_1BA86A45C;
    v1[13] = &block_descriptor_143;
    v9 = _Block_copy(v1 + 10);
    v10 = v6;

    [v10 fetchExtendedStatusWithCompletionHandler_];

    _Block_release(v9);
  }

  else
  {
    **(*(v4 + 64) + 40) = 0;
    swift_continuation_resume();
  }

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1BA86A6F0()
{
  v3 = *v0;
  **(*v0 + 128) = *(*v0 + 144);
  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BA86A7E4@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED98, &qword_1BAA4D4D0);
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 104))(&v6 - v3, *MEMORY[0x1E69E8650]);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EDA0, &qword_1BAA4D4D8);
  a1[4] = sub_1BA86E6A0(&qword_1EBC0EDA8, &qword_1EBC0EDA0, &qword_1BAA4D4D8, MEMORY[0x1E69E86A0]);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1BAA39F2C();
}

uint64_t sub_1BA86A93C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE18, &qword_1BAA4D880);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_1BAA39EFC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v5 + 32))(&v13[v12], v7, v4);

  sub_1BA86F78C(0, 0, v10, &unk_1BAA4D890, v13);
  return sub_1BAA39F0C();
}

uint64_t sub_1BA86AB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE20, &unk_1BAA4D898);
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE08, &qword_1BAA4D878);
  v5[22] = swift_task_alloc();
  v7 = sub_1BAA3A00C();
  v5[23] = v7;
  v5[24] = *(v7 - 8);
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BA86ACA4, 0, 0);
}

uint64_t sub_1BA86ACA4()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1EBC0E920 != -1)
  {
    swift_once();
  }

  sub_1BAA3A01C();

  sub_1BAA39FFC();
  v2 = sub_1BA86E658(&qword_1EBC0EE10, MEMORY[0x1E6969EF8], MEMORY[0x1E6969F00]);
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_1BA86AE00;
  v4 = v0[22];
  v5 = v0[23];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

uint64_t sub_1BA86AE00()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1BA86B084;
  }

  else
  {
    v2 = sub_1BA86AF14;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BA86AF30()
{
  v1 = v0[22];
  v2 = sub_1BAA3957C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[24] + 8))(v0[25], v0[23]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[28] = v5;
    *v5 = v0;
    v5[1] = sub_1BA86B110;

    return MEMORY[0x1EEE6DA60](500000000);
  }
}

uint64_t sub_1BA86B084()
{
  *(v0 + 128) = *(v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB90, &qword_1BAA4DBF0);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1BA86B110()
{

  if (v0)
  {
  }

  return MEMORY[0x1EEE6DFA0](sub_1BA86B218, 0, 0);
}

uint64_t sub_1BA86B218()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0[17];
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_1BA86B3FC;
  v4 = swift_continuation_init();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(v3 + 40);
  if (v6)
  {
    v7 = v1[17];
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = sub_1BA86ED90;
    v8[4] = v5;
    v1[14] = sub_1BA86ED10;
    v1[15] = v8;
    v1[10] = MEMORY[0x1E69E9820];
    v1[11] = 1107296256;
    v1[12] = sub_1BA86A45C;
    v1[13] = &block_descriptor_261;
    v9 = _Block_copy(v1 + 10);
    v10 = v6;

    [v10 fetchExtendedStatusWithCompletionHandler_];

    _Block_release(v9);
  }

  else
  {
    **(*(v4 + 64) + 40) = 0;
    swift_continuation_resume();
  }

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1BA86B3FC()
{
  *(*v0 + 234) = *(*v0 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1BA86B4E0, 0, 0);
}

uint64_t sub_1BA86B4E0()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  *(v0 + 233) = *(v0 + 234);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE18, &qword_1BAA4D880);
  sub_1BAA39F1C();
  (*(v4 + 8))(v2, v3);
  sub_1BA84BC58(v1, &qword_1EBC0EE08, &qword_1BAA4D878);
  v5 = sub_1BA86E658(&qword_1EBC0EE10, MEMORY[0x1E6969EF8], MEMORY[0x1E6969F00]);
  v6 = swift_task_alloc();
  *(v0 + 208) = v6;
  *v6 = v0;
  v6[1] = sub_1BA86AE00;
  v7 = *(v0 + 176);
  v8 = *(v0 + 184);

  return MEMORY[0x1EEE6D8C8](v7, v8, v5);
}

uint64_t sub_1BA86B634@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EDB0, &qword_1BAA4D4E0);
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 104))(&v6 - v3, *MEMORY[0x1E69E8650]);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EDB8, &unk_1BAA4D4E8);
  a1[4] = sub_1BA86E6A0(&qword_1EBC0EDC0, &qword_1EBC0EDB8, &unk_1BAA4D4E8, MEMORY[0x1E69E86A0]);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1BAA39F2C();
}

uint64_t sub_1BA86B784(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EDF8, &unk_1BAA4D850);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_1BAA39EFC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 16))(v5, a1, v2);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v3 + 32))(v11 + v10, v5, v2);
  sub_1BA86F78C(0, 0, v8, &unk_1BAA4D868, v11);
  return sub_1BAA39F0C();
}

uint64_t sub_1BA86B97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE00, &qword_1BAA4D870);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE08, &qword_1BAA4D878);
  v4[7] = swift_task_alloc();
  v6 = sub_1BAA3A00C();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BA86BADC, 0, 0);
}

uint64_t sub_1BA86BADC()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1EBC0E918 != -1)
  {
    swift_once();
  }

  sub_1BAA3A01C();

  sub_1BAA39FFC();
  v2 = sub_1BA86E658(&qword_1EBC0EE10, MEMORY[0x1E6969EF8], MEMORY[0x1E6969F00]);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1BA86BC38;
  v4 = v0[7];
  v5 = v0[8];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

uint64_t sub_1BA86BC38()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1BA86BF7C;
  }

  else
  {
    v2 = sub_1BA86BD4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BA86BD68()
{
  v1 = *(v0 + 56);
  v2 = sub_1BAA3957C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v7 = *(v0 + 32);
    *(v0 + 104) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EDF8, &unk_1BAA4D850);
    sub_1BAA39F1C();
    (*(v6 + 8))(v5, v7);
    sub_1BA84BC58(v1, &qword_1EBC0EE08, &qword_1BAA4D878);
    v8 = sub_1BA86E658(&qword_1EBC0EE10, MEMORY[0x1E6969EF8], MEMORY[0x1E6969F00]);
    v9 = swift_task_alloc();
    *(v0 + 88) = v9;
    *v9 = v0;
    v9[1] = sub_1BA86BC38;
    v10 = *(v0 + 56);
    v11 = *(v0 + 64);

    return MEMORY[0x1EEE6D8C8](v10, v11, v8);
  }
}

uint64_t sub_1BA86BF7C()
{
  *(v0 + 16) = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB90, &qword_1BAA4DBF0);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

void sub_1BA86C008(uint64_t a1, void (*a2)(id), uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 40);
  if (v5)
  {
    v6 = [v5 lastDisconnectError];
  }

  else
  {
    v6 = 0;
  }

  a2(v6);
}

uint64_t sub_1BA86C07C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BA86C09C, 0, 0);
}

uint64_t sub_1BA86C09C()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EDC8, &qword_1BAA4D4F8);
  *v1 = v0;
  v1[1] = sub_1BA86C180;
  v3 = v0[2];
  v4 = v0[3];

  return MEMORY[0x1EEE6DDE0](v3, 0, 0, 0xD000000000000013, 0x80000001BAA51300, sub_1BA86CB1C, v4, v2);
}

uint64_t sub_1BA86C180()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BA86C274(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EDF0, &qword_1BAA4D848);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - v9;
  v11 = *(v5 + 16);
  v11(aBlock - v9, a1, v4);
  v11(v8, v10, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v10, v4);
  v14 = *(a2 + 40);
  if (v14)
  {
    v15 = swift_allocObject();
    v15[2] = sub_1BA86E06C;
    v15[3] = v13;
    v15[4] = a2;
    aBlock[4] = sub_1BA86E094;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA86A45C;
    aBlock[3] = &block_descriptor_239;
    v16 = _Block_copy(aBlock);
    v17 = v14;

    [v17 fetchExtendedStatusWithCompletionHandler_];

    _Block_release(v16);
  }

  else
  {
    LOBYTE(aBlock[0]) = 14;
    sub_1BAA39EAC();
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_1BA86C4FC(void *a1)
{
  if (a1)
  {
    type metadata accessor for NEURLFilterManager(0);
    v2 = a1;
    v3 = sub_1BAA395FC();
    sub_1BA86C600(v3, &v4);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EDF0, &qword_1BAA4D848);
    sub_1BAA39EAC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EDF0, &qword_1BAA4D848);
    sub_1BAA39EAC();
  }
}

unint64_t sub_1BA86C5B0()
{
  result = sub_1BA851440(&unk_1F387C270);
  qword_1EBC11BB0 = result;
  return result;
}

unint64_t sub_1BA86C5D8()
{
  result = sub_1BA851454(&unk_1F387C370);
  qword_1EBC11BB8 = result;
  return result;
}

void sub_1BA86C600(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [a1 domain];
  v5 = sub_1BAA39D9C();
  v7 = v6;

  if (v5 == 0xD00000000000001ALL && 0x80000001BAA51420 == v7)
  {

LABEL_15:
    [a1 code];
    if (qword_1EBC0E930 != -1)
    {
      swift_once();
    }

    v20 = qword_1EBC11BB0;
    if (!*(qword_1EBC11BB0 + 16))
    {
      goto LABEL_28;
    }

    v21 = sub_1BA851AE4();
    if ((v22 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  v9 = sub_1BAA3A15C();

  if (v9)
  {
    goto LABEL_15;
  }

  v10 = [a1 domain];
  v11 = sub_1BAA39D9C();
  v13 = v12;

  if (v11 == 0xD00000000000001BLL && 0x80000001BAA51440 == v13)
  {
  }

  else
  {
    v15 = sub_1BAA3A15C();

    if ((v15 & 1) == 0)
    {
      v16 = [a1 domain];
      v17 = sub_1BAA39D9C();
      v19 = v18;

      if (v17 == 0xD000000000000029 && 0x80000001BAA51460 == v19)
      {

LABEL_27:
        v39 = a1;
        sub_1BA8474EC(0, &qword_1EBC0EE70, 0x1E696ABC0);
        v26 = a1;
        swift_dynamicCast();
        return;
      }

      v25 = sub_1BAA3A15C();

      if (v25)
      {
        goto LABEL_27;
      }

      goto LABEL_28;
    }
  }

  [a1 code];
  if (qword_1EBC0E938 != -1)
  {
    swift_once();
  }

  v20 = qword_1EBC11BB8;
  if (!*(qword_1EBC11BB8 + 16) || (v21 = sub_1BA851AE4(), (v24 & 1) == 0))
  {
LABEL_28:
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v27 = sub_1BAA398CC();
    __swift_project_value_buffer(v27, qword_1EBC11B98);
    v28 = a1;
    v29 = sub_1BAA398AC();
    v30 = sub_1BAA39F8C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = v32;
      *v31 = 136315394;
      v33 = [v28 domain];
      v34 = sub_1BAA39D9C();
      v36 = v35;

      v37 = sub_1BA85AE0C(v34, v36, &v39);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2048;
      v38 = [v28 code];

      *(v31 + 14) = v38;
      _os_log_impl(&dword_1BA83C000, v29, v30, "mapError unexpected error domain %s code %ld", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1BFAFC150](v32, -1, -1);
      MEMORY[0x1BFAFC150](v31, -1, -1);
    }

    else
    {
    }

    v23 = 13;
    goto LABEL_34;
  }

LABEL_19:
  v23 = *(*(v20 + 56) + v21);
LABEL_34:
  *a2 = v23;
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

unint64_t sub_1BA86CB28()
{
  result = qword_1EBC0EDD0;
  if (!qword_1EBC0EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC0EDD0);
  }

  return result;
}

unint64_t sub_1BA86CB80()
{
  result = qword_1EBC0EDD8;
  if (!qword_1EBC0EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC0EDD8);
  }

  return result;
}

void *keypath_get_145Tm@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1BAA39FDC();
  *a2 = v4;
  return result;
}

void sub_1BA86CC4C(uint64_t a1)
{
  sub_1BA86DCC4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of NEURLFilterManager.loadFromPreferences()()
{
  v4 = (*(*v0 + 488) + **(*v0 + 488));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BA84E9A0;

  return v4();
}

uint64_t dispatch thunk of static NEURLFilterManager.loadAllFromPreferences()()
{
  v4 = (*(v0 + 496) + **(v0 + 496));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BA86D3A0;

  return v4();
}

uint64_t sub_1BA86D3A0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of static NEURLFilterManager.enableConfig(enable:serviceID:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 504) + **(v2 + 504));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1BA84E6FC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of NEURLFilterManager.saveToPreferences()()
{
  v4 = (*(*v0 + 512) + **(*v0 + 512));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BA84E9A0;

  return v4();
}

uint64_t dispatch thunk of NEURLFilterManager.removeFromPreferences()()
{
  v4 = (*(*v0 + 520) + **(*v0 + 520));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BA84E9A0;

  return v4();
}

uint64_t dispatch thunk of NEURLFilterManager.resetPIRCache()()
{
  v4 = (*(*v0 + 528) + **(*v0 + 528));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BA84E9A0;

  return v4();
}

uint64_t dispatch thunk of NEURLFilterManager.refreshPIRParameters()()
{
  v4 = (*(*v0 + 536) + **(*v0 + 536));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BA84E9A0;

  return v4();
}

uint64_t dispatch thunk of NEURLFilterManager.status.getter(uint64_t a1)
{
  v6 = (*(*v1 + 552) + **(*v1 + 552));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BA84E9A0;

  return v6(a1);
}

uint64_t dispatch thunk of NEURLFilterManager.lastDisconnectError.getter(uint64_t a1)
{
  v6 = (*(*v1 + 584) + **(*v1 + 584));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BA84E9A0;

  return v6(a1);
}

void sub_1BA86DCC4(uint64_t a1)
{
  if (!qword_1EBC0E8F0)
  {
    sub_1BAA3960C();
    v1 = sub_1BAA3A03C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBC0E8F0);
    }
  }
}

uint64_t getEnumTagSinglePayload for NEURLFilterManager.Status(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NEURLFilterManager.Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NEURLFilterManager.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NEURLFilterManager.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BA86DFC4()
{
  result = qword_1EBC0EDE0;
  if (!qword_1EBC0EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC0EDE0);
  }

  return result;
}

unint64_t sub_1BA86E018()
{
  result = qword_1EBC0EDE8;
  if (!qword_1EBC0EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC0EDE8);
  }

  return result;
}

uint64_t sub_1BA86E0A0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EDF8, &unk_1BAA4D850) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BA84E6FC;

  return sub_1BA86B97C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1BA86E1C0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE18, &qword_1BAA4D880) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BA84E9A0;

  return sub_1BA86AB44(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_139Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BA86E330(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BA86A000(a1, v1 + v4, v5);
}

uint64_t sub_1BA86E400(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

id sub_1BA86E488()
{
  result = [objc_opt_self() sharedManagerForAllUsers];
  if (result)
  {
    v1 = result;
    sub_1BA8474EC(0, &qword_1EBC0EB00, 0x1E69E9610);
    v2 = v1;
    v3 = sub_1BAA39FCC();
    v5[4] = sub_1BA86ECF8;
    v5[5] = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1BA862E48;
    v5[3] = &block_descriptor_289;
    v4 = _Block_copy(v5);
    [v2 setChangedQueue:v3 andHandler:v4];
    _Block_release(v4);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BA86E59C(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE30, &qword_1BAA4D8A8) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_1BA868320(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_1BA86E658(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BA86E6A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t objectdestroy_263Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v7 + 8, v5 | 7);
}

uint64_t sub_1BA86E7D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a5(a1, a2, v5 + v9, v10);
}

id sub_1BA86E894()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = [v1 infoDictionary];

  if (v2)
  {
    v3 = sub_1BAA39D6C();

    if (*(v3 + 16) && (v4 = sub_1BA850978(0xD000000000000013, 0x80000001BAA51500), (v5 & 1) != 0))
    {
      sub_1BA85B4BC(*(v3 + 56) + 32 * v4, v24);

      if (swift_dynamicCast())
      {
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  v6 = [v0 mainBundle];
  v7 = [v6 infoDictionary];

  if (v7)
  {
    v8 = sub_1BAA39D6C();

    if (*(v8 + 16) && (v9 = sub_1BA850978(0x656C646E75424643, 0xEC000000656D614ELL), (v10 & 1) != 0))
    {
      sub_1BA85B4BC(*(v8 + 56) + 32 * v9, v24);

      swift_dynamicCast();
    }

    else
    {
    }
  }

LABEL_12:
  v11 = objc_allocWithZone(NEConfiguration);

  v12 = sub_1BAA39D8C();

  v13 = [v11 initWithName:v12 grade:2];

  if (!v13)
  {

    return v13;
  }

  v14 = [v0 mainBundle];
  v15 = [v14 bundleIdentifier];

  if (v15)
  {
    sub_1BAA39D9C();
  }

  v16 = sub_1BAA39D8C();

  [v13 setApplication_];

  v17 = sub_1BAA39D8C();

  [v13 setApplicationName_];

  v18 = [objc_allocWithZone(NEURLFilterConfiguration) init];
  [v13 setUrlFilter_];

  result = [v13 urlFilter];
  if (result)
  {
    v20 = result;
    v21 = [v0 mainBundle];
    v22 = [v21 bundleIdentifier];

    if (v22)
    {
      sub_1BAA39D9C();
    }

    v23 = sub_1BAA39D8C();

    [v20 setAppBundleIdentifier_];

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA86EF88(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = sub_1BAA396DC();
  v3[2] = v6;
  v3[3] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[4] = v7;
  v3[5] = _Block_copy(a3);
  sub_1BAA396CC();
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_1BA86F0C0;

  return sub_1BA86F464(a1, v7);
}

uint64_t sub_1BA86F0C0()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  (*(v6 + 8))(v5, v7);
  if (v2)
  {
    if (v4)
    {
      v9 = *(v3 + 40);
      v10 = sub_1BAA395FC();

      (v9)[2](v9, v10);
      _Block_release(v9);
    }

    else
    {
    }
  }

  else if (v4)
  {
    v11 = *(v3 + 40);
    v11[2](v11, 0);
    _Block_release(v11);
  }

  v12 = *(v8 + 8);

  return v12();
}

NEURLFilterManagerPrivate __swiftcall NEURLFilterManagerPrivate.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for NEURLFilterManagerPrivate()
{
  result = qword_1EBC0EE80;
  if (!qword_1EBC0EE80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC0EE80);
  }

  return result;
}

uint64_t sub_1BA86F3A0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1BA84E9A0;

  return sub_1BA86EF88(v2, v3, v4);
}

uint64_t sub_1BA86F464(char a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  *(v2 + 72) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BA86F488, 0, 0);
}

uint64_t sub_1BA86F488()
{
  type metadata accessor for NEURLFilterManager(0);
  v1 = sub_1BAA396BC();
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1BA86F540;
  v3 = *(v0 + 72);

  return sub_1BA867758(v3, v1);
}

uint64_t sub_1BA86F540()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BA86F67C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1BA86F67C()
{
  v1 = *(v0 + 64);

  sub_1BAA3A07C();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  MEMORY[0x1BFAF8AF0](0xD000000000000031, 0x80000001BAA515C0);
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB90, &qword_1BAA4DBF0);
  sub_1BAA3A0FC();
  sub_1BAA396EC();

  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BA86F78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1BA871480(a3, v25 - v10);
  v12 = sub_1BAA39EFC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1BA8714F0(v11);
  }

  else
  {
    sub_1BAA39EEC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BAA39E8C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1BAA39DDC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1BA8714F0(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BA8714F0(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_1BA86FA64(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1BA86FACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v6[15] = sub_1BAA39EDC();
  v6[16] = sub_1BAA39ECC();
  v6[17] = sub_1BAA39ECC();
  v8 = sub_1BAA39E8C();
  v6[18] = v8;
  v6[19] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BA86FB78, v8, v7);
}

uint64_t sub_1BA86FB78()
{
  sub_1BA8517C0(v0[12] + 16, (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAE8, &qword_1BAA4CE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE90, &qword_1BAA4D918);
  swift_dynamicCast();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v5 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_1BA86FCF0;

  return v5(v1, v2);
}

uint64_t sub_1BA86FCF0(char a1)
{
  v2 = *v1;
  *(*v1 + 168) = a1;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1BA86FE18, v4, v3);
}

uint64_t sub_1BA86FE18()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v2 = sub_1BAA39E8C();

  return MEMORY[0x1EEE6DFA0](sub_1BA86FEA4, v2, v1);
}

uint64_t sub_1BA86FEA4()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 104);

  byte_1EBC0EE89 = v1;
  v2(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1BA86FF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[25] = sub_1BAA39EDC();
  v7[26] = sub_1BAA39ECC();
  v7[27] = sub_1BAA39ECC();
  v9 = sub_1BAA39E8C();

  return MEMORY[0x1EEE6DFA0](sub_1BA86FFD4, v9, v8);
}

uint64_t sub_1BA86FFD4()
{
  v1 = v0[22];

  v2 = objc_opt_self();
  sub_1BA871864();
  v3 = sub_1BAA39FCC();
  v0[6] = sub_1BA8718B0;
  v0[7] = v1;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1BA86FA64;
  v0[5] = &block_descriptor_8;
  v4 = _Block_copy(v0 + 2);

  LOBYTE(v1) = [v2 registerWithOptions:0 queue:v3 handler:v4];
  *(v0 + 272) = v1;
  _Block_release(v4);

  byte_1EBC0EE88 = v1;
  v6 = sub_1BAA39E8C();
  v0[28] = v6;
  v0[29] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BA87014C, v6, v5);
}

uint64_t sub_1BA87014C()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 168);
  swift_beginAccess();
  *(v2 + 16) = v1;
  if (v1)
  {
    *(v0 + 240) = sub_1BAA39ECC();
    v4 = sub_1BAA39E8C();
    *(v0 + 248) = v4;
    *(v0 + 256) = v3;

    return MEMORY[0x1EEE6DFA0](sub_1BA870244, v4, v3);
  }

  else
  {

    (*(v0 + 184))(0);
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1BA870244()
{
  sub_1BA8517C0(v0[22] + 16, (v0 + 13));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAE8, &qword_1BAA4CE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE90, &qword_1BAA4D918);
  swift_dynamicCast();
  v1 = v0[11];
  v2 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v1);
  v5 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[33] = v3;
  *v3 = v0;
  v3[1] = sub_1BA8703BC;

  return v5(v1, v2);
}

uint64_t sub_1BA8703BC(char a1)
{
  v2 = *v1;
  *(*v1 + 273) = a1;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1BA8704E4, v4, v3);
}

uint64_t sub_1BA8704E4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v1 = v0[28];
  v2 = v0[29];

  return MEMORY[0x1EEE6DFA0](sub_1BA870550, v1, v2);
}

uint64_t sub_1BA870550()
{
  v1 = *(v0 + 273);

  byte_1EBC0EE89 = v1;
  (*(v0 + 184))(*(v0 + 273));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BA870630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  sub_1BAA39EDC();
  v7[16] = sub_1BAA39ECC();
  v9 = sub_1BAA39E8C();
  v7[17] = v9;
  v7[18] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BA8706CC, v9, v8);
}

uint64_t sub_1BA8706CC()
{
  sub_1BA8517C0(v0[12] + 16, (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAE8, &qword_1BAA4CE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE90, &qword_1BAA4D918);
  swift_dynamicCast();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v6 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_1BA87084C;
  v4 = v0[13];

  return v6(v4, v1, v2);
}

uint64_t sub_1BA87084C()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1BA87096C, v3, v2);
}

uint64_t sub_1BA87096C()
{
  v1 = v0[14];

  byte_1EBC0EE89 = 0;
  v1(1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1BA870A64(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  result = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  if (byte_1EBC0EE89 == 1)
  {
    v8 = sub_1BAA39EFC();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    sub_1BAA39EDC();

    v9 = a1;
    v10 = sub_1BAA39ECC();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = a2;
    v11[5] = v9;
    sub_1BA86F78C(0, 0, v7, &unk_1BAA4D948, v11);
  }

  return result;
}

uint64_t sub_1BA870BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  sub_1BAA39EDC();
  v5[14] = sub_1BAA39ECC();
  v7 = sub_1BAA39E8C();
  v5[15] = v7;
  v5[16] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BA870C48, v7, v6);
}

uint64_t sub_1BA870C48()
{
  sub_1BA8517C0(v0[12] + 16, (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAE8, &qword_1BAA4CE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE90, &qword_1BAA4D918);
  swift_dynamicCast();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v6 = (*(v2 + 32) + **(v2 + 32));
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_1BA8507D0;
  v4 = v0[13];

  return v6(v4, v1, v2);
}

uint64_t sub_1BA870DC8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BA870EC0;

  return v6(a1);
}

uint64_t sub_1BA870EC0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BA870FB8(uint64_t a1, void (**a2)(void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = byte_1EBC0EE89;
  _Block_copy(a2);
  if (v8 == 1)
  {
    a2[2](a2, 1);
  }

  v9 = swift_allocObject();
  v10 = byte_1EBC0EE88;
  *(v9 + 16) = byte_1EBC0EE88;
  v11 = sub_1BAA39EFC();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_1BAA39EDC();

  if (v10 == 1)
  {
    v12 = sub_1BAA39ECC();
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E85E0];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = a1;
    v13[5] = sub_1BA871990;
    v13[6] = v7;
    v15 = &unk_1BAA4D938;
  }

  else
  {

    v16 = sub_1BAA39ECC();
    v13 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    v13[2] = v16;
    v13[3] = v17;
    v13[4] = v9;
    v13[5] = a1;
    v13[6] = sub_1BA871990;
    v13[7] = v7;
    v15 = &unk_1BAA4D928;
  }

  sub_1BA86F78C(0, 0, v6, v15, v13);
}

uint64_t sub_1BA8711F0(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v10 = byte_1EBC0EE89;
  _Block_copy(a3);
  if ((v10 & 1) == 0)
  {
    a3[2](a3, 1);
  }

  v11 = sub_1BAA39EFC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  sub_1BAA39EDC();

  v12 = sub_1BAA39ECC();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = sub_1BA871394;
  v13[7] = v9;
  sub_1BA86F78C(0, 0, v8, &unk_1BAA4D8F8, v13);
}

uint64_t sub_1BA8713AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BA84E9A0;

  return sub_1BA870630(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1BA871480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA8714F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA871558(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BA84E9A0;

  return sub_1BA870DC8(a1, v4);
}

uint64_t sub_1BA871610(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BA84E6FC;

  return sub_1BA870DC8(a1, v4);
}

uint64_t sub_1BA8716C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BA84E9A0;

  return sub_1BA86FF28(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1BA87179C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BA84E9A0;

  return sub_1BA86FACC(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1BA871864()
{
  result = qword_1EBC0EB00;
  if (!qword_1EBC0EB00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC0EB00);
  }

  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BA8718D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BA84E6FC;

  return sub_1BA870BB0(a1, v4, v5, v7, v6);
}

void sub_1BA871994(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1BA8719FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1BA871AA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v4 = sub_1BAA398CC();
  __swift_project_value_buffer(v4, qword_1EBC11B98);
  v5 = sub_1BAA398AC();
  v6 = sub_1BAA39F9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BA83C000, v5, v6, "NEHotspotAuthenticationProviderHost - init", v7, 2u);
    MEMORY[0x1BFAFC150](v7, -1, -1);
  }

  v8 = sub_1BAA39D8C();
  [v3 setExtensionPointName_];

  v9 = sub_1BAA39D8C();
  [v3 setExtensionBundleIdentifier_];

  [v3 setExtensionXPCProtocol_];
  [v3 setExtensionHostXPCProtocol_];
  v10 = [objc_allocWithZone(type metadata accessor for NEHotspotAuthenticationProviderHostExportedObject()) init];
  [v3 setExportedObject_];

  v11 = [v3 exportedObject];
  if (v11)
  {
    v12 = v11;
    [v3 setExtensionExportedObject_];
    v13 = [v3 extensionExportedObject];

    if (v13)
    {
      v15 = *&v13[OBJC_IVAR____TtC16NetworkExtension41NEExtensionBaseProviderHostExportedObject_delegate];
      *&v13[OBJC_IVAR____TtC16NetworkExtension41NEExtensionBaseProviderHostExportedObject_delegate] = v3;
      v14 = v3;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA871D8C()
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v1 = sub_1BAA398CC();
  __swift_project_value_buffer(v1, qword_1EBC11B98);
  v2 = sub_1BAA398AC();
  v3 = sub_1BAA39F9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BA83C000, v2, v3, "NEHotspotAuthenticationProviderHost - start", v4, 2u);
    MEMORY[0x1BFAFC150](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1BA871ED8;

  return sub_1BA854E8C();
}

uint64_t sub_1BA871ED8(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BA871FD8, 0, 0);
}

uint64_t sub_1BA871FD8()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1BA84C674;
  v4 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 7, 0, 0, 0x29287472617473, 0xE700000000000000, sub_1BA873D88, v2, v4);
}

uint64_t sub_1BA8720C4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  if (a2 && (v23 = *(v5 + 16), v23(v7, a1, v4), v24 = a1, v8 = (*(v5 + 80) + 16) & ~*(v5 + 80), v9 = swift_allocObject(), v10 = *(v5 + 32), v10(v9 + v8, v7, v4), v29 = sub_1BA873D90, v30 = v9, aBlock = MEMORY[0x1E69E9820], v26 = 1107296256, v27 = sub_1BA871994, v28 = &block_descriptor_61, v11 = _Block_copy(&aBlock), , v12 = [a2 remoteObjectProxyWithErrorHandler_], _Block_release(v11), sub_1BAA3A04C(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EEA8, &qword_1BAA4D9F0), (swift_dynamicCast() & 1) != 0))
  {
    v13 = aBlock;
    v23(v7, v24, v4);
    v14 = swift_allocObject();
    v10(v14 + v8, v7, v4);
    v29 = sub_1BA873D9C;
    v30 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_1BA8719FC;
    v28 = &block_descriptor_67;
    v15 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [v13 startWithReply_];
    _Block_release(v15);
    return swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v17 = sub_1BAA398CC();
    __swift_project_value_buffer(v17, qword_1EBC11B98);
    v18 = sub_1BAA398AC();
    v19 = sub_1BAA39F9C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1BA83C000, v18, v19, "NEHotspotAuthenticationProviderHost - start - proxy not good", v20, 2u);
      MEMORY[0x1BFAFC150](v20, -1, -1);
    }

    sub_1BA84E364();
    v21 = swift_allocError();
    *v22 = 1;
    aBlock = v21;
    return sub_1BAA39E9C();
  }
}

uint64_t sub_1BA8724C0(char a1)
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v2 = sub_1BAA398CC();
  __swift_project_value_buffer(v2, qword_1EBC11B98);
  v3 = sub_1BAA398AC();
  v4 = sub_1BAA39F9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&dword_1BA83C000, v3, v4, "NEHotspotAuthenticationProviderHost - proxy.start - done %{BOOL}d", v5, 8u);
    MEMORY[0x1BFAFC150](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  return sub_1BAA39EAC();
}

uint64_t sub_1BA872760(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1BA84E9B0;

  return sub_1BA871D6C();
}

uint64_t sub_1BA872808(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BA872828, 0, 0);
}

uint64_t sub_1BA872828()
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v1 = sub_1BAA398CC();
  __swift_project_value_buffer(v1, qword_1EBC11B98);
  v2 = sub_1BAA398AC();
  v3 = sub_1BAA39F9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BA83C000, v2, v3, "NEHotspotAuthenticationProviderHost - stop", v4, 2u);
    MEMORY[0x1BFAFC150](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_1BA872974;

  return sub_1BA854E8C();
}

uint64_t sub_1BA872974(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BA872A74, 0, 0);
}

uint64_t sub_1BA872A74()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1BA84D338;
  v6 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0x74697728706F7473, 0xEB00000000293A68, sub_1BA873C04, v4, v6);
}

uint64_t sub_1BA872B78(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  if (a2 && (v33 = a4, v34 = a3, v13 = *(v9 + 16), v13(&v32 - v11, a1, v8), v14 = (*(v9 + 80) + 16) & ~*(v9 + 80), v15 = v14 + v10, v16 = swift_allocObject(), v35 = a1, v17 = v16, v32 = *(v9 + 32), v32(v16 + v14, v12, v8), v40 = sub_1BA873C10, v41 = v17, aBlock = MEMORY[0x1E69E9820], v37 = 1107296256, v38 = sub_1BA871994, v39 = &block_descriptor_9, v18 = _Block_copy(&aBlock), , v19 = [a2 remoteObjectProxyWithErrorHandler_], _Block_release(v18), sub_1BAA3A04C(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EEA8, &qword_1BAA4D9F0), (swift_dynamicCast() & 1) != 0))
  {
    v20 = aBlock;
    v13(v12, v35, v8);
    v21 = swift_allocObject();
    v32(v21 + v14, v12, v8);
    v22 = v33;
    *(v21 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
    v40 = sub_1BA873C34;
    v41 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v38 = sub_1BA8719FC;
    v39 = &block_descriptor_38;
    v23 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v24 = v22;

    [v20 stopWithStopReason:v34 reply:v23];
    _Block_release(v23);
    return swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v26 = sub_1BAA398CC();
    __swift_project_value_buffer(v26, qword_1EBC11B98);
    v27 = sub_1BAA398AC();
    v28 = sub_1BAA39F9C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1BA83C000, v27, v28, "NEHotspotAuthenticationProviderHost - stop - proxy not good", v29, 2u);
      MEMORY[0x1BFAFC150](v29, -1, -1);
    }

    sub_1BA84E364();
    v30 = swift_allocError();
    *v31 = 1;
    aBlock = v30;
    return sub_1BAA39E9C();
  }
}

id sub_1BA872F9C(char a1)
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v2 = sub_1BAA398CC();
  __swift_project_value_buffer(v2, qword_1EBC11B98);
  v3 = sub_1BAA398AC();
  v4 = sub_1BAA39F9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&dword_1BA83C000, v3, v4, "NEHotspotAuthenticationProviderHost - proxy.stop - done %{BOOL}d", v5, 8u);
    MEMORY[0x1BFAFC150](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  sub_1BAA39EAC();
  v6 = sub_1BAA398AC();
  v7 = sub_1BAA39F9C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1BA83C000, v6, v7, "NEHotspotAuthenticationProviderHost - calling invalidateExtension", v8, 2u);
    MEMORY[0x1BFAFC150](v8, -1, -1);
  }

  return sub_1BA85790C();
}

uint64_t sub_1BA8732D4(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1BA84DE80;

  return sub_1BA872808(a1);
}

void __swiftcall NEHotspotAuthenticationProviderHost.init()(NEHotspotAuthenticationProviderHost *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id NEHotspotAuthenticationProviderHost.init()()
{
  *(v0 + OBJC_IVAR___NEHotspotAuthenticationProviderHost_exportedObject) = 0;
  v2.super_class = NEHotspotAuthenticationProviderHost;
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t type metadata accessor for NEHotspotAuthenticationProviderHost()
{
  result = qword_1EBC0EEA0;
  if (!qword_1EBC0EEA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC0EEA0);
  }

  return result;
}

id sub_1BA8734FC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NEHotspotAuthenticationProviderHostExportedObject();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA873554()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1BA84E9A0;

  return sub_1BA8732D4(v2, v3, v4);
}

uint64_t sub_1BA873608(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1BA84E9A0;

  return v6();
}

uint64_t sub_1BA8736F0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1BA84E6FC;

  return v7();
}

uint64_t sub_1BA8737D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1BA871480(a3, v23 - v10);
  v12 = sub_1BAA39EFC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BA8714F0(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1BAA39EEC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1BAA39E8C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1BAA39DDC() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1BA8714F0(a3);

    return v21;
  }

LABEL_8:
  sub_1BA8714F0(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1BA873A94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BA84E9A0;

  return sub_1BA870DC8(a1, v4);
}

uint64_t sub_1BA873B4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BA84E6FC;

  return sub_1BA870DC8(a1, v4);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1BA873C34(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);

  return sub_1BA872F9C(a1);
}

uint64_t sub_1BA873CDC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BA84E9A0;

  return sub_1BA872760(v2, v3);
}

uint64_t sub_1BA873D9C(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);

  return sub_1BA8724C0(a1);
}

void *NEHotspotAuthenticationProvider.configuration.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NEHotspotAuthenticationProviderConfiguration();
  (*(v5 + 16))(v7, v2, a1);
  return sub_1BA873FB8(v7, v8, a1, a2);
}

uint64_t NEHotspotAuthenticationProviderConfiguration.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t NEHotspotAuthenticationProviderConfiguration.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

void *sub_1BA873FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v6 + 32))(&v15 - v10);
  type metadata accessor for NEHotspotAuthenticationProviderConfiguration();
  v12 = swift_allocObject();
  (*(v6 + 16))(v9, v11, a3);
  v13 = sub_1BA874480(v9, v12, a3, a4);
  (*(v6 + 8))(v11, a3);
  return v13;
}

uint64_t dispatch thunk of NEHotspotAuthenticationProvider.start()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BA84EDFC;

  return v7(a1, a2);
}

uint64_t dispatch thunk of NEHotspotAuthenticationProvider.stop(reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BA84E6FC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of NEHotspotAuthenticationProvider.handleCommand(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BA84EDFC;

  return v9(a1, a2, a3);
}

void *sub_1BA874480(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  (*(v7 + 32))(&v19 - v11);
  (*(v7 + 16))(v10, v12, a3);
  v13 = sub_1BA854D58(v10, a2, a3, *(a4 + 8));
  v14 = v13[8];
  v13[8] = &unk_1F38BCA50;

  v15 = &unk_1F38BCA50;

  v16 = v13[9];
  v13[9] = &unk_1F38BC9F0;
  v17 = &unk_1F38BC9F0;

  (*(v7 + 8))(v12, a3);
  return v13;
}