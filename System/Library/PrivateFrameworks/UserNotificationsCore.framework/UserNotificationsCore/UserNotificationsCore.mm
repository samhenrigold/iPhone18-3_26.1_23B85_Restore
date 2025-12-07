unint64_t sub_1DA7AC344()
{
  result = qword_1EE115A50;
  if (!qword_1EE115A50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE115A50);
  }

  return result;
}

char *sub_1DA7AC494(void *a1, void *a2, void *a3)
{
  v75 = a2;
  v82 = a1;
  v4 = sub_1DA9407F4();
  v80 = *(v4 - 8);
  v81 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v79 = v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1DA940FC4();
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v7 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DA940854();
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_delegate;
  *(a3 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v73 = OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_queue;
  v72[1] = sub_1DA7AC344();
  v72[0] = "queue_observerTransaction";
  sub_1DA940824();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  v74[13](v7, *MEMORY[0x1E69E8090], v76);
  v76 = v11;
  *&v73[a3] = sub_1DA941004();
  *(a3 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_queue_serverConnection) = 0;
  v13 = objc_opt_self();
  v14 = v75;
  v15 = [v13 tokenFromNSXPCConnection_];
  *(v12 + 1) = &off_1F5636540;
  swift_unknownObjectWeakAssign();
  *(a3 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientConnection) = v14;
  *(a3 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientAuditToken) = v15;
  v74 = v14;
  v75 = v15;
  v16 = [v75 bundleID];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1DA940A14();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = (a3 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier);
  *v21 = v18;
  v21[1] = v20;
  v22 = type metadata accessor for NotificationServiceConnection();
  v90.receiver = a3;
  v90.super_class = v22;
  v23 = objc_msgSendSuper2(&v90, sel_init);
  v24 = qword_1EE115AA0;
  v25 = v23;
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = sub_1DA9405A4();
  __swift_project_value_buffer(v26, qword_1EE11B068);
  v27 = sub_1DA940584();
  v28 = sub_1DA940EF4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock = v30;
    *v29 = 136446210;
    v31 = &v25[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
    if (*&v25[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v32 = *v31;
      v33 = v31[1];
    }

    else
    {
      v33 = 0xE300000000000000;
      v32 = 7104878;
    }

    v34 = sub_1DA7AE6E8(v32, v33, &aBlock);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_1DA7A9000, v27, v28, "[%{public}s] Client connection accepted", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1E12739F0](v30, -1, -1);
    MEMORY[0x1E12739F0](v29, -1, -1);
  }

  v35 = OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientConnection;
  v36 = *&v25[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientConnection];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 serverInterface];
  [v38 setExportedInterface_];

  v40 = *&v25[v35];
  v41 = v25;
  [v40 setExportedObject_];
  v42 = *&v25[v35];
  v43 = [v37 clientInterface];
  [v42 setRemoteObjectInterface_];

  v44 = OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_queue;
  [*&v25[v35] _setQueue_];
  v45 = *&v25[v35];
  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v88 = sub_1DA8A5CE4;
  v89 = v46;
  aBlock = MEMORY[0x1E69E9820];
  v85 = 1107296256;
  v86 = sub_1DA7AF1D0;
  v87 = &block_descriptor_14;
  v47 = _Block_copy(&aBlock);
  v48 = v45;

  [v48 setInterruptionHandler_];
  _Block_release(v47);

  v49 = *&v25[v35];
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v88 = sub_1DA8A5CEC;
  v89 = v50;
  aBlock = MEMORY[0x1E69E9820];
  v85 = 1107296256;
  v86 = sub_1DA7AF1D0;
  v87 = &block_descriptor_23;
  v51 = _Block_copy(&aBlock);
  v52 = v49;

  [v52 setInvalidationHandler_];
  _Block_release(v51);

  [*&v25[v35] resume];
  v53 = OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientAuditToken;
  v54 = *&v41[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientAuditToken];
  v55 = sub_1DA940A04();
  v56 = [v54 hasEntitlement_];

  v57 = *&v41[v53];
  if (*&v41[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
  {
    v58 = v57;

    v59 = sub_1DA940A04();
  }

  else
  {
    v60 = v57;
    v59 = 0;
  }

  v61 = [objc_allocWithZone(MEMORY[0x1E6983280]) initWithAuditToken:v57 bundleIdentifier:v59 internalTool:v56];

  v62 = *&v41[v44];
  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v73 = v62;

  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  *(v64 + 24) = v61;
  v88 = sub_1DA7AF214;
  v89 = v64;
  aBlock = MEMORY[0x1E69E9820];
  v85 = 1107296256;
  v86 = sub_1DA7AF1D0;
  v87 = &block_descriptor_30;
  v65 = _Block_copy(&aBlock);

  v66 = v61;
  v67 = v76;
  sub_1DA940824();
  v83 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  v68 = v79;
  v69 = v81;
  sub_1DA9411D4();
  v70 = v73;
  MEMORY[0x1E12720D0](0, v67, v68, v65);
  _Block_release(v65);

  (*(v80 + 8))(v68, v69);
  (*(v77 + 8))(v67, v78);

  return v41;
}

uint64_t sub_1DA7ACF24()
{
  MEMORY[0x1E1273AD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7ACF60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DA7ACFA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DA7ACFF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DA7AD038(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DA7AD080(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DA7AD0C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1DA7AD11C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_1DA7AD164(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1DA7B6C7C(a5, a6);
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
    result = sub_1DA9413C4();
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

uint64_t sub_1DA7AD270(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DA7AD2CC(uint64_t a1, unint64_t a2)
{
  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v5 = sub_1DA9405A4();
  __swift_project_value_buffer(v5, qword_1EE11B068);
  v6 = v2;

  v7 = sub_1DA940584();
  v8 = sub_1DA940EF4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136446466;
    v11 = &v6[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
    if (*&v6[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v12 = *v11;
      v13 = v11[1];
    }

    else
    {
      v12 = 7104878;
      v13 = 0xE300000000000000;
    }

    v14 = sub_1DA7AE6E8(v12, v13, aBlock);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
    _os_log_impl(&dword_1DA7A9000, v7, v8, "[%{public}s] Starting entitlement check: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v10, -1, -1);
    MEMORY[0x1E12739F0](v9, -1, -1);
  }

  v16 = *&v6[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
  v15 = *&v6[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
  if (v15)
  {
    v17 = v16 == a1 && v15 == a2;
    if (v17 || (sub_1DA941684() & 1) != 0)
    {
      v18 = v6;
      v19 = sub_1DA940584();
      v20 = sub_1DA940EF4();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        aBlock[0] = v22;
        *v21 = 136446210;

        v23 = sub_1DA7AE6E8(v16, v15, aBlock);

        *(v21 + 4) = v23;
        v24 = "[%{public}s] Entitlement check success: matching bundle identifiers";
LABEL_52:
        _os_log_impl(&dword_1DA7A9000, v19, v20, v24, v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x1E12739F0](v22, -1, -1);
        MEMORY[0x1E12739F0](v21, -1, -1);
        goto LABEL_53;
      }

      goto LABEL_53;
    }
  }

  v25 = *&v6[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientAuditToken];
  v26 = sub_1DA940A04();
  v27 = [v25 hasEntitlement_];

  if (v27)
  {
    v28 = v6;
    v19 = sub_1DA940584();
    v20 = sub_1DA940EF4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136446210;
      if (v15)
      {
        v29 = v15;
      }

      else
      {
        v16 = 7104878;
        v29 = 0xE300000000000000;
      }

      v30 = sub_1DA7AE6E8(v16, v29, aBlock);

      *(v21 + 4) = v30;
      v24 = "[%{public}s] Entitlement check success: simulator";
      goto LABEL_52;
    }

LABEL_53:

    return 1;
  }

  v31 = sub_1DA940A04();
  v32 = [v25 hasEntitlement_];

  if (v32)
  {
    v33 = v6;
    v19 = sub_1DA940584();
    v20 = sub_1DA940EF4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136446210;
      if (v15)
      {
        v34 = v15;
      }

      else
      {
        v16 = 7104878;
        v34 = 0xE300000000000000;
      }

      v35 = sub_1DA7AE6E8(v16, v34, aBlock);

      *(v21 + 4) = v35;
      v24 = "[%{public}s] Entitlement check success: registrar proxy";
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  v36 = sub_1DA940A04();
  v37 = [v25 hasEntitlement_];

  if (v37)
  {
    v38 = v6;
    v19 = sub_1DA940584();
    v20 = sub_1DA940EF4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136446210;
      if (v15)
      {
        v39 = v15;
      }

      else
      {
        v16 = 7104878;
        v39 = 0xE300000000000000;
      }

      v40 = sub_1DA7AE6E8(v16, v39, aBlock);

      *(v21 + 4) = v40;
      v24 = "[%{public}s] Entitlement check success: scheduler proxy";
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  v41 = sub_1DA940A04();
  v42 = [v25 hasEntitlement_];

  if (v42)
  {
    v43 = v6;
    v19 = sub_1DA940584();
    v20 = sub_1DA940EF4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136446210;
      if (v15)
      {
        v44 = v15;
      }

      else
      {
        v16 = 7104878;
        v44 = 0xE300000000000000;
      }

      v45 = sub_1DA7AE6E8(v16, v44, aBlock);

      *(v21 + 4) = v45;
      v24 = "[%{public}s] Entitlement check success: scheduling proxy";
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  v46 = sub_1DA940A04();
  v47 = [v25 hasEntitlement_];

  if (v47)
  {
    v48 = v6;
    v19 = sub_1DA940584();
    v20 = sub_1DA940EF4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136446210;
      if (v15)
      {
        v49 = v15;
      }

      else
      {
        v16 = 7104878;
        v49 = 0xE300000000000000;
      }

      v50 = sub_1DA7AE6E8(v16, v49, aBlock);

      *(v21 + 4) = v50;
      v24 = "[%{public}s] Entitlement check success: user notification center proxy";
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  if (sub_1DA7B34EC(0xD000000000000036, 0x80000001DA953760, a1, a2))
  {
    v51 = v6;
    v19 = sub_1DA940584();
    v20 = sub_1DA940EF4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136446210;
      if (v15)
      {
        v52 = v15;
      }

      else
      {
        v16 = 7104878;
        v52 = 0xE300000000000000;
      }

      v53 = sub_1DA7AE6E8(v16, v52, aBlock);

      *(v21 + 4) = v53;
      v24 = "[%{public}s] Entitlement check success: bundle-identifiers";
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  v55 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v56 = sub_1DA8BF4E0(a1, a2, 1);
  v57 = [v56 managementDomain];
  sub_1DA940A14();

  v58 = sub_1DA940AC4();

  if (v58 > 0)
  {
    v59 = [v56 managementDomain];
    v60 = sub_1DA940A14();
    v62 = v61;

    LOBYTE(v59) = sub_1DA7B34EC(0xD00000000000003ALL, 0x80000001DA9537D0, v60, v62);

    if (v59)
    {
      v63 = v56;
      v64 = v6;
      v65 = sub_1DA940584();
      v66 = sub_1DA940EF4();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        aBlock[0] = v68;
        *v67 = 136446210;
        if (v15)
        {
          v69 = v15;
        }

        else
        {
          v16 = 7104878;
          v69 = 0xE300000000000000;
        }

        v70 = sub_1DA7AE6E8(v16, v69, aBlock);

        *(v67 + 4) = v70;
        _os_log_impl(&dword_1DA7A9000, v65, v66, "[%{public}s] Entitlement check success: app-management-domains", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v68);
        MEMORY[0x1E12739F0](v68, -1, -1);
        MEMORY[0x1E12739F0](v67, -1, -1);
      }

      return 1;
    }
  }

  if (v15)
  {
    v71 = objc_allocWithZone(MEMORY[0x1E69635D0]);

    v72 = sub_1DA896518(v16, v15);
    if (v72)
    {
      v122 = v72;
      v80 = [v72 containingBundleRecord];
      if (!v80)
      {

        goto LABEL_65;
      }

      v81 = v80;
      v82 = [v80 bundleIdentifier];
      if (!v82)
      {

        goto LABEL_65;
      }

      v121 = v81;
      v83 = v82;
      v84 = sub_1DA940A14();
      v86 = v85;

      if (v84 == a1 && v86 == a2)
      {
      }

      else
      {
        v87 = sub_1DA941684();

        if ((v87 & 1) == 0)
        {

          goto LABEL_65;
        }
      }

      v88 = swift_allocObject();
      *(v88 + 16) = 1;
      v89 = [v122 extensionPointRecord];
      v90 = [v89 name];

      v91 = sub_1DA940A14();
      v93 = v92;

      if (v91 == 0xD000000000000023 && 0x80000001DA9537A0 == v93)
      {
      }

      else
      {
        v94 = sub_1DA941684();

        if ((v94 & 1) == 0)
        {
          goto LABEL_95;
        }
      }

      v95 = [v122 bundleIdentifier];
      if (v95)
      {
        v120 = v95;
        v118 = sub_1DA940A14();
        v97 = v96;
        v98 = sub_1DA7AEA10();
        if (v98)
        {
          log = v98;
          if (([v98 respondsToSelector:sel_isAccessToNotificationCenterAllowedForServiceExtensionWithIdentifier_completionHandler_]& 1) != 0)
          {
            v99 = v6;
            swift_unknownObjectRetain();
            v100 = sub_1DA940584();
            v101 = sub_1DA940EF4();
            v117 = v99;

            v116 = v101;
            v102 = v101;
            v103 = v100;
            if (os_log_type_enabled(v100, v102))
            {
              v104 = swift_slowAlloc();
              v115 = swift_slowAlloc();
              aBlock[0] = v115;
              *v104 = 136446210;

              v105 = sub_1DA7AE6E8(v16, v15, aBlock);

              *(v104 + 4) = v105;
              _os_log_impl(&dword_1DA7A9000, v103, v116, "[%{public}s] Checking service extension access", v104, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v115);
              MEMORY[0x1E12739F0](v115, -1, -1);
              MEMORY[0x1E12739F0](v104, -1, -1);
            }

            else
            {
            }

            v106 = swift_allocObject();
            v106[2] = v117;
            v106[3] = v118;
            v106[4] = v97;
            v106[5] = v88;
            aBlock[4] = sub_1DA898410;
            aBlock[5] = v106;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1DA7B43C0;
            aBlock[3] = &block_descriptor_213;
            v107 = _Block_copy(aBlock);
            v108 = v117;

            [log isAccessToNotificationCenterAllowedForServiceExtensionWithIdentifier:v120 completionHandler:v107];
            swift_unknownObjectRelease_n();
            _Block_release(v107);

            goto LABEL_95;
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

LABEL_95:
      swift_beginAccess();
      if (*(v88 + 16) == 1)
      {
        v109 = v6;
        v110 = sub_1DA940584();
        v111 = sub_1DA940EF4();

        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v124[0] = v113;
          *v112 = 136446210;

          v114 = sub_1DA7AE6E8(v16, v15, v124);

          *(v112 + 4) = v114;
          _os_log_impl(&dword_1DA7A9000, v110, v111, "[%{public}s] Entitlement check success: service extension", v112, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v113);
          MEMORY[0x1E12739F0](v113, -1, -1);
          MEMORY[0x1E12739F0](v112, -1, -1);
        }

        return 1;
      }
    }
  }

LABEL_65:
  v73 = v6;
  v74 = sub_1DA940584();
  v75 = sub_1DA940F14();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v124[0] = v77;
    *v76 = 136446466;
    if (v15)
    {
      v78 = v15;
    }

    else
    {
      v16 = 7104878;
      v78 = 0xE300000000000000;
    }

    v79 = sub_1DA7AE6E8(v16, v78, v124);

    *(v76 + 4) = v79;
    *(v76 + 12) = 2082;
    *(v76 + 14) = sub_1DA7AE6E8(0xD000000000000036, 0x80000001DA953760, v124);
    _os_log_impl(&dword_1DA7A9000, v74, v75, "[%{public}s] Entitlement '%{public}s' required to request user notifications", v76, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v77, -1, -1);
    MEMORY[0x1E12739F0](v76, -1, -1);
  }

  return 0;
}

uint64_t sub_1DA7AE560()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1DA7AE6E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DA7AD164(v11, 0, 0, 1, a1, a2);
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
    sub_1DA7AD270(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DA7AEA10()
{
  v1 = OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_queue_serverConnection;
  v2 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_queue_serverConnection);
  if (!v2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithMachServiceName:*MEMORY[0x1E6983438] options:0];
    v4 = objc_opt_self();
    v5 = [v4 serverInterface];
    [v3 setRemoteObjectInterface_];

    v6 = [v4 clientInterface];
    [v3 setExportedInterface_];

    [v3 setExportedObject_];
    [v3 _setQueue_];
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = sub_1DA89841C;
    v22 = v7;
    aBlock = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = sub_1DA7AF1D0;
    v20 = &block_descriptor_219;
    v8 = _Block_copy(&aBlock);

    [v3 setInterruptionHandler_];
    _Block_release(v8);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = sub_1DA898440;
    v22 = v9;
    aBlock = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = sub_1DA7AF1D0;
    v20 = &block_descriptor_223;
    v10 = _Block_copy(&aBlock);

    [v3 setInvalidationHandler_];
    _Block_release(v10);
    v11 = *(v0 + v1);
    *(v0 + v1) = v3;
    v12 = v3;

    [v12 resume];
    v2 = *(v0 + v1);
    if (!v2)
    {
      return 0;
    }
  }

  v13 = v2;
  v14 = [v13 remoteObjectProxy];
  sub_1DA941154();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6070, &unk_1DA95DDF0);
  if (swift_dynamicCast())
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA7AED2C()
{
  MEMORY[0x1E1273AD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7AED8C@<X0>(void *a2@<X1>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  LOBYTE(a2) = sub_1DA7AEE18(a3 + 1, a2);
  result = swift_endAccess();
  *a3 = a2 & 1;
  return result;
}

uint64_t sub_1DA7AEE18(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1DA941274();

    if (v9)
    {

      type metadata accessor for NotificationServiceConnection();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1DA941264();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1DA8A9D7C(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1DA8AA8B8(v20 + 1, &qword_1ECBD56C8, &unk_1DA95F380);
    }

    v18 = v8;
    sub_1DA8AADFC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for NotificationServiceConnection();
  v11 = sub_1DA941104();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1DA7AF040(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1DA941114();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

void sub_1DA7AF040(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DA8AA8B8(v6 + 1, &qword_1ECBD56C8, &unk_1DA95F380);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1DA8ABCB0(&qword_1ECBD56C8, &unk_1DA95F380);
      goto LABEL_12;
    }

    sub_1DA8AC6A0(v6 + 1, &qword_1ECBD56C8, &unk_1DA95F380);
  }

  v8 = *v3;
  v9 = sub_1DA941104();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for NotificationServiceConnection();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1DA941114();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1DA9416D4();
  __break(1u);
}

uint64_t sub_1DA7AF1D0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1DA7AF21C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1DA7AEA10();
    if (v5)
    {
      v6 = v5;
      if ([v5 respondsToSelector_])
      {
        [v6 setConnectionDetails_];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t objectdestroy_26Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroy_26Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1DA7AF348(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = sub_1DA940A14();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  a5(v8, v10, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t sub_1DA7AF3EC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1DA7AF44C(uint64_t a1, unint64_t a2, void *a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  sub_1DA940A94();
  _Block_copy(a4);
  v9 = os_transaction_create();

  v10 = sub_1DA7AEA10();
  if (v10)
  {
    v11 = v10;
    if (sub_1DA7AD2CC(a1, a2))
    {
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v12 = sub_1DA9405A4();
      __swift_project_value_buffer(v12, qword_1EE11B068);
      v13 = a3;

      v14 = sub_1DA940584();
      v15 = sub_1DA940EF4();

      if (os_log_type_enabled(v14, v15))
      {
        v34 = v9;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        aBlock[0] = v17;
        *v16 = 136446466;
        v18 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v18)
        {
          v19 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v20 = v18;
        }

        else
        {
          v19 = 7104878;
          v20 = 0xE300000000000000;
        }

        v30 = sub_1DA7AE6E8(v19, v20, aBlock);

        *(v16 + 4) = v30;
        *(v16 + 12) = 2082;
        *(v16 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
        _os_log_impl(&dword_1DA7A9000, v14, v15, "[%{public}s] Forwarding getNotificationSettings: %{public}s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v17, -1, -1);
        MEMORY[0x1E12739F0](v16, -1, -1);

        v9 = v34;
      }

      else
      {
      }

      v31 = sub_1DA940A04();
      v32 = swift_allocObject();
      v32[2] = sub_1DA7AF9F0;
      v32[3] = v8;
      v32[4] = v9;
      aBlock[4] = sub_1DA7AF9C8;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B00D0;
      aBlock[3] = &block_descriptor_194;
      v33 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v11 getNotificationSettingsForBundleIdentifier:v31 withCompletionHandler:v33];
      _Block_release(v33);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v21 = sub_1DA9405A4();
  __swift_project_value_buffer(v21, qword_1EE11B068);
  v22 = a3;

  v23 = sub_1DA940584();
  v24 = sub_1DA940F14();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136446466;
    if (*&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v27 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v28 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v27 = 7104878;
      v28 = 0xE300000000000000;
    }

    v29 = sub_1DA7AE6E8(v27, v28, aBlock);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
    _os_log_impl(&dword_1DA7A9000, v23, v24, "[%{public}s] getNotificationSettings not allowed: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v26, -1, -1);
    MEMORY[0x1E12739F0](v25, -1, -1);
  }

  else
  {
  }

  v35 = [objc_opt_self() emptySettings];
  (a4)[2](a4, v35);

  swift_unknownObjectRelease();
}

void sub_1DA7AFA04(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void (**a5)(void, void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  sub_1DA940A94();
  _Block_copy(a5);
  v11 = os_transaction_create();

  v12 = sub_1DA7AEA10();
  if (v12)
  {
    v13 = v12;
    if (sub_1DA7AD2CC(a2, a3))
    {
      v37 = v11;
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v14 = sub_1DA9405A4();
      __swift_project_value_buffer(v14, qword_1EE11B068);
      v15 = a4;

      v16 = sub_1DA940584();
      v17 = sub_1DA940EF4();

      if (os_log_type_enabled(v16, v17))
      {
        v36 = a1;
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock[0] = v19;
        *v18 = 136446466;
        v20 = *&v15[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v20)
        {
          v21 = *&v15[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v22 = v20;
        }

        else
        {
          v21 = 7104878;
          v22 = 0xE300000000000000;
        }

        v32 = sub_1DA7AE6E8(v21, v22, aBlock);

        *(v18 + 4) = v32;
        *(v18 + 12) = 2082;
        *(v18 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
        _os_log_impl(&dword_1DA7A9000, v16, v17, "[%{public}s] Forwarding requestAuthorization: %{public}s", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v19, -1, -1);
        MEMORY[0x1E12739F0](v18, -1, -1);

        a1 = v36;
      }

      else
      {
      }

      v33 = sub_1DA940A04();
      v34 = swift_allocObject();
      v34[2] = sub_1DA7B4464;
      v34[3] = v10;
      v34[4] = v37;
      aBlock[4] = sub_1DA7B4438;
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B43C0;
      aBlock[3] = &block_descriptor_204;
      v35 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v13 requestAuthorizationWithOptions:a1 forBundleIdentifier:v33 completionHandler:v35];
      _Block_release(v35);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v23 = sub_1DA9405A4();
  __swift_project_value_buffer(v23, qword_1EE11B068);
  v24 = a4;

  v25 = sub_1DA940584();
  v26 = sub_1DA940F14();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136446466;
    if (*&v24[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v29 = *&v24[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v30 = *&v24[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v29 = 7104878;
      v30 = 0xE300000000000000;
    }

    v31 = sub_1DA7AE6E8(v29, v30, aBlock);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    *(v27 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
    _os_log_impl(&dword_1DA7A9000, v25, v26, "[%{public}s] requestAuthorization not allowed: %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v28, -1, -1);
    MEMORY[0x1E12739F0](v27, -1, -1);
  }

  else
  {
  }

  if (qword_1EE111448 != -1)
  {
    swift_once();
  }

  v38 = sub_1DA93F8B4();
  (a5)[2](a5, 0, v38);

  swift_unknownObjectRelease();
}

uint64_t objectdestroy_12Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1DA7B00D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1DA7B0298(uint64_t a1, unint64_t a2, void *a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  sub_1DA940A94();
  _Block_copy(a4);
  v9 = os_transaction_create();

  v10 = sub_1DA7AEA10();
  if (v10)
  {
    v11 = v10;
    if (sub_1DA7AD2CC(a1, a2))
    {
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v12 = sub_1DA9405A4();
      __swift_project_value_buffer(v12, qword_1EE11B068);
      v13 = a3;

      v14 = sub_1DA940584();
      v15 = sub_1DA940EF4();

      if (os_log_type_enabled(v14, v15))
      {
        v34 = v9;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        aBlock[0] = v17;
        *v16 = 136446466;
        v18 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v18)
        {
          v19 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v20 = v18;
        }

        else
        {
          v19 = 7104878;
          v20 = 0xE300000000000000;
        }

        v30 = sub_1DA7AE6E8(v19, v20, aBlock);

        *(v16 + 4) = v30;
        *(v16 + 12) = 2082;
        *(v16 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
        _os_log_impl(&dword_1DA7A9000, v14, v15, "[%{public}s] Forwarding getNotificationCategories: %{public}s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v17, -1, -1);
        MEMORY[0x1E12739F0](v16, -1, -1);

        v9 = v34;
      }

      else
      {
      }

      v31 = sub_1DA940A04();
      v32 = swift_allocObject();
      v32[2] = sub_1DA7B1E4C;
      v32[3] = v8;
      v32[4] = v9;
      aBlock[4] = sub_1DA7B1E80;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B1CD4;
      aBlock[3] = &block_descriptor_185;
      v33 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v11 getNotificationCategoriesForBundleIdentifier:v31 withCompletionHandler:v33];
      _Block_release(v33);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v21 = sub_1DA9405A4();
  __swift_project_value_buffer(v21, qword_1EE11B068);
  v22 = a3;

  v23 = sub_1DA940584();
  v24 = sub_1DA940F14();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136446466;
    if (*&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v27 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v28 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v27 = 7104878;
      v28 = 0xE300000000000000;
    }

    v29 = sub_1DA7AE6E8(v27, v28, aBlock);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
    _os_log_impl(&dword_1DA7A9000, v23, v24, "[%{public}s] getNotificationCategories not allowed: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v26, -1, -1);
    MEMORY[0x1E12739F0](v25, -1, -1);
  }

  else
  {
  }

  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1DA941264())
  {
    sub_1DA84DA40(MEMORY[0x1E69E7CC0]);
  }

  sub_1DA7AF3EC(0, &unk_1EE114DB8, 0x1E6983278);
  sub_1DA7B0D88(&qword_1EE114DB0, &unk_1EE114DB8, 0x1E6983278);
  v35 = sub_1DA940E84();
  (a4)[2](a4, v35);

  swift_unknownObjectRelease();
}

UNCNotificationActionRecord *UNNotificationActionToUNCNotificationActionRecord_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 options];
  v4 = objc_alloc_init(UNCNotificationActionRecord);
  [(UNCNotificationActionRecord *)v4 setAuthenticationRequired:v3 & 1];
  [(UNCNotificationActionRecord *)v4 setDestructive:(v3 >> 1) & 1];
  [(UNCNotificationActionRecord *)v4 setForeground:(v3 >> 2) & 1];
  [(UNCNotificationActionRecord *)v4 setShouldPreventNotificationDismiss:(v3 >> 16) & 1];
  v5 = [v2 identifier];
  [(UNCNotificationActionRecord *)v4 setIdentifier:v5];

  v6 = [v2 url];
  [(UNCNotificationActionRecord *)v4 setUrl:v6];

  v7 = [v2 icon];
  v8 = [v7 imageName];
  [(UNCNotificationActionRecord *)v4 setIconImageName:v8];

  v9 = [v2 icon];
  -[UNCNotificationActionRecord setHasSystemIcon:](v4, "setHasSystemIcon:", [v9 isSystemIcon]);

  v10 = [v2 title];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 un_localizedStringKey];
    [(UNCNotificationActionRecord *)v4 setTitleLocalizationKey:v11];

    v12 = [v10 un_localizedStringArguments];
    [(UNCNotificationActionRecord *)v4 setTitleLocalizationArguments:v12];

    v13 = [v10 un_localizedStringValue];
    [(UNCNotificationActionRecord *)v4 setTitle:v13];
  }

  else
  {
    [(UNCNotificationActionRecord *)v4 setTitle:v10];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UNCNotificationActionRecord *)v4 setActionType:@"TextInput"];
    v14 = [v2 textInputButtonTitle];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 un_localizedStringKey];
      [(UNCNotificationActionRecord *)v4 setTextInputButtonTitleLocalizationKey:v15];

      v16 = [v14 un_localizedStringArguments];
      [(UNCNotificationActionRecord *)v4 setTextInputButtonTitleLocalizationArguments:v16];

      v17 = [v14 un_localizedStringValue];
      [(UNCNotificationActionRecord *)v4 setTextInputButtonTitle:v17];
    }

    else
    {
      [(UNCNotificationActionRecord *)v4 setTextInputButtonTitle:v14];
    }

    v18 = [v2 textInputPlaceholder];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 un_localizedStringKey];
      [(UNCNotificationActionRecord *)v4 setTextInputPlaceholderLocalizationKey:v19];

      v20 = [v18 un_localizedStringArguments];
      [(UNCNotificationActionRecord *)v4 setTextInputPlaceholderLocalizationArguments:v20];

      v21 = [v18 un_localizedStringValue];
      [(UNCNotificationActionRecord *)v4 setTextInputPlaceholder:v21];
    }

    else
    {
      [(UNCNotificationActionRecord *)v4 setTextInputPlaceholder:v18];
    }
  }

  else
  {
    [(UNCNotificationActionRecord *)v4 setActionType:@"Default"];
  }

  return v4;
}

uint64_t sub_1DA7B0D88(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DA7AF3EC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DA7B0DD8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = sub_1DA7AEA10();
  if (v7)
  {
    v8 = v7;
    if (sub_1DA7AD2CC(a2, a3))
    {
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v9 = sub_1DA9405A4();
      __swift_project_value_buffer(v9, qword_1EE11B068);
      v10 = a1;

      v11 = sub_1DA940584();
      v12 = sub_1DA940EF4();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v28 = v14;
        *v13 = 136446466;
        if (*&v10[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
        {
          v15 = *&v10[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v16 = *&v10[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        }

        else
        {
          v15 = 7104878;
          v16 = 0xE300000000000000;
        }

        v26 = sub_1DA7AE6E8(v15, v16, &v28);

        *(v13 + 4) = v26;
        *(v13 + 12) = 2082;
        *(v13 + 14) = sub_1DA7AE6E8(a2, a3, &v28);
        _os_log_impl(&dword_1DA7A9000, v11, v12, "[%{public}s] Forwarding setNotificationCategories: %{public}s", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v14, -1, -1);
        MEMORY[0x1E12739F0](v13, -1, -1);
      }

      else
      {
      }

      sub_1DA7AF3EC(0, &unk_1EE114DB8, 0x1E6983278);
      sub_1DA7B0D88(&qword_1EE114DB0, &unk_1EE114DB8, 0x1E6983278);
      v27 = sub_1DA940E84();
      v19 = sub_1DA940A04();
      [v8 setNotificationCategories:v27 forBundleIdentifier:v19];
      swift_unknownObjectRelease();

      goto LABEL_20;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v17 = sub_1DA9405A4();
  __swift_project_value_buffer(v17, qword_1EE11B068);
  v18 = a1;

  v19 = sub_1DA940584();
  v20 = sub_1DA940F14();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136446466;
    if (*&v18[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v23 = *&v18[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v24 = *&v18[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v23 = 7104878;
      v24 = 0xE300000000000000;
    }

    v25 = sub_1DA7AE6E8(v23, v24, &v28);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_1DA7AE6E8(a2, a3, &v28);
    _os_log_impl(&dword_1DA7A9000, v19, v20, "[%{public}s] setNotificationCategories not allowed: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v22, -1, -1);
    MEMORY[0x1E12739F0](v21, -1, -1);
  }

LABEL_20:
}

UNCNotificationCategoryRecord *UNNotificationCategoryToUNCNotificationCategoryRecord_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 options];
  v4 = objc_alloc_init(UNCNotificationCategoryRecord);
  v5 = [v2 actions];
  v6 = [v5 bs_map:UNNotificationActionToUNCNotificationActionRecord];
  [(UNCNotificationCategoryRecord *)v4 setActions:v6];

  [(UNCNotificationCategoryRecord *)v4 setHasCustomDismissAction:v3 & 1];
  [(UNCNotificationCategoryRecord *)v4 setHasFollowActivityAction:(v3 >> 31) & 1];
  [(UNCNotificationCategoryRecord *)v4 setHasCustomSilenceAction:(v3 >> 22) & 1];
  v7 = [v2 identifier];
  [(UNCNotificationCategoryRecord *)v4 setIdentifier:v7];

  v8 = [v2 intentIdentifiers];
  [(UNCNotificationCategoryRecord *)v4 setIntentIdentifiers:v8];

  v9 = [v2 minimalActions];
  v10 = [v9 bs_map:UNNotificationActionToUNCNotificationActionRecord];
  [(UNCNotificationCategoryRecord *)v4 setMinimalActions:v10];

  [(UNCNotificationCategoryRecord *)v4 setShouldAllowInCarPlay:(v3 >> 1) & 1];
  -[UNCNotificationCategoryRecord setPrivacyOptionShowTitle:](v4, "setPrivacyOptionShowTitle:", ([v2 options] >> 2) & 1);
  -[UNCNotificationCategoryRecord setPrivacyOptionShowSubtitle:](v4, "setPrivacyOptionShowSubtitle:", ([v2 options] >> 3) & 1);
  -[UNCNotificationCategoryRecord setPreventAutomaticRemovalFromRecent:](v4, "setPreventAutomaticRemovalFromRecent:", ([v2 options] >> 17) & 1);
  -[UNCNotificationCategoryRecord setRevealAdditionalContentWhenPresented:](v4, "setRevealAdditionalContentWhenPresented:", ([v2 options] >> 18) & 1);
  -[UNCNotificationCategoryRecord setPlayMediaWhenRaised:](v4, "setPlayMediaWhenRaised:", ([v2 options] >> 25) & 1);
  -[UNCNotificationCategoryRecord setPreventAutomaticLock:](v4, "setPreventAutomaticLock:", ([v2 options] >> 20) & 1);
  -[UNCNotificationCategoryRecord setPreventDismissWhenClosed:](v4, "setPreventDismissWhenClosed:", ([v2 options] >> 19) & 1);
  -[UNCNotificationCategoryRecord setPresentFullScreenAlertOverList:](v4, "setPresentFullScreenAlertOverList:", ([v2 options] >> 21) & 1);
  -[UNCNotificationCategoryRecord setShouldAllowActionsInCarPlay:](v4, "setShouldAllowActionsInCarPlay:", ([v2 options] >> 23) & 1);
  -[UNCNotificationCategoryRecord setShouldAllowPersistentBannersInCarPlay:](v4, "setShouldAllowPersistentBannersInCarPlay:", ([v2 options] >> 24) & 1);
  -[UNCNotificationCategoryRecord setPreventClearFromList:](v4, "setPreventClearFromList:", ([v2 options] >> 27) & 1);
  -[UNCNotificationCategoryRecord setAlwaysDisplayNotificationsIndicator:](v4, "setAlwaysDisplayNotificationsIndicator:", ([v2 options] >> 28) & 1);
  -[UNCNotificationCategoryRecord setSuppressDelayForForwardedNotifications:](v4, "setSuppressDelayForForwardedNotifications:", ([v2 options] >> 29) & 1);
  -[UNCNotificationCategoryRecord setSuppressDismissActionInCarPlay:](v4, "setSuppressDismissActionInCarPlay:", ([v2 options] >> 30) & 1);
  -[UNCNotificationCategoryRecord setSuppressPresentationInAmbient:](v4, "setSuppressPresentationInAmbient:", ([v2 options] >> 32) & 1);
  v11 = [v2 hiddenPreviewsBodyPlaceholder];
  [(UNCNotificationCategoryRecord *)v4 setPrivateBody:v11];

  v12 = [v2 categorySummaryFormat];
  [(UNCNotificationCategoryRecord *)v4 setSummaryFormat:v12];

  v13 = [v2 backgroundStyle];
  if (v13 == 2)
  {
    v14 = kUNSNotificationCategoryBackgroundStyleDark;
    goto LABEL_5;
  }

  if (v13 == 1)
  {
    v14 = kUNSNotificationCategoryBackgroundStyleSystem;
LABEL_5:
    v15 = *v14;
    goto LABEL_7;
  }

  v15 = 0;
LABEL_7:
  [(UNCNotificationCategoryRecord *)v4 setBackgroundStyle:v15];
  v16 = [v2 listPriority];
  if (v16 == 1)
  {
    v17 = kUNSNotificationCategoryListPriorityHigh;
    goto LABEL_11;
  }

  if (v16 == 2)
  {
    v17 = &kUNSNotificationCategoryListPriorityTop;
LABEL_11:
    v18 = *v17;
    goto LABEL_13;
  }

  v18 = 0;
LABEL_13:
  [(UNCNotificationCategoryRecord *)v4 setListPriority:v18];

  return v4;
}

uint64_t sub_1DA7B155C(void *a1, int a2, void *a3, uint64_t a4, void *aBlock, void (*a6)(void *, uint64_t, uint64_t, id, void *))
{
  v9 = _Block_copy(aBlock);
  v10 = sub_1DA940A14();
  v12 = v11;
  _Block_copy(v9);
  v13 = a3;
  v14 = a1;
  a6(a3, v10, v12, v14, v9);
  _Block_release(v9);
  _Block_release(v9);
}

void sub_1DA7B161C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void (**a5)(void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  sub_1DA940A94();
  _Block_copy(a5);
  v11 = os_transaction_create();

  v12 = sub_1DA7AEA10();
  if (v12)
  {
    v13 = v12;
    if (sub_1DA7AD2CC(a2, a3))
    {
      v37 = v11;
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v14 = sub_1DA9405A4();
      __swift_project_value_buffer(v14, qword_1EE11B068);
      v15 = a4;

      v16 = sub_1DA940584();
      v17 = sub_1DA940EF4();

      if (os_log_type_enabled(v16, v17))
      {
        v36 = a1;
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock[0] = v19;
        *v18 = 136446466;
        v20 = *&v15[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v20)
        {
          v21 = *&v15[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v22 = v20;
        }

        else
        {
          v21 = 7104878;
          v22 = 0xE300000000000000;
        }

        v32 = sub_1DA7AE6E8(v21, v22, aBlock);

        *(v18 + 4) = v32;
        *(v18 + 12) = 2082;
        *(v18 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
        _os_log_impl(&dword_1DA7A9000, v16, v17, "[%{public}s] Forwarding setBadgeCount: %{public}s", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v19, -1, -1);
        MEMORY[0x1E12739F0](v18, -1, -1);

        a1 = v36;
      }

      else
      {
      }

      v33 = sub_1DA940A04();
      v34 = swift_allocObject();
      v34[2] = sub_1DA7B1C6C;
      v34[3] = v10;
      v34[4] = v37;
      aBlock[4] = sub_1DA7B1C68;
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B1BFC;
      aBlock[3] = &block_descriptor_69;
      v35 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v13 setBadgeCount:a1 forBundleIdentifier:v33 withCompletionHandler:v35];
      _Block_release(v35);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v23 = sub_1DA9405A4();
  __swift_project_value_buffer(v23, qword_1EE11B068);
  v24 = a4;

  v25 = sub_1DA940584();
  v26 = sub_1DA940F14();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136446466;
    if (*&v24[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v29 = *&v24[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v30 = *&v24[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v29 = 7104878;
      v30 = 0xE300000000000000;
    }

    v31 = sub_1DA7AE6E8(v29, v30, aBlock);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    *(v27 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
    _os_log_impl(&dword_1DA7A9000, v25, v26, "[%{public}s] setBadgeCount not allowed: %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v28, -1, -1);
    MEMORY[0x1E12739F0](v27, -1, -1);
  }

  else
  {
  }

  if (qword_1EE111448 != -1)
  {
    swift_once();
  }

  v38 = sub_1DA93F8B4();
  (a5)[2](a5, v38);

  swift_unknownObjectRelease();
}

void sub_1DA7B1BFC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1DA7B1C70(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1DA93F8B4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1DA7B1CF0(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v8 = *(a1 + 32);
  sub_1DA7AF3EC(0, a3, a4);
  sub_1DA7B0D88(a5, a3, a4);
  v9 = sub_1DA940E94();

  v8(v9);
}

void sub_1DA7B1DA4(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  sub_1DA7AF3EC(0, a3, a4);
  sub_1DA7B0D88(a5, a3, a4);
  v9 = sub_1DA940E84();
  (*(a2 + 16))(a2, v9);
}

UNCNotificationCategoryRecord *UNSDictionaryToNotificationCategoryRecord_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[UNCNotificationCategoryRecord alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

UNCNotificationActionRecord *UNSDictionaryToNotificationActionRecord_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[UNCNotificationActionRecord alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

void sub_1DA7B21E0(uint64_t a1, unint64_t a2, void *a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  sub_1DA940A94();
  _Block_copy(a4);
  v9 = os_transaction_create();

  v10 = sub_1DA7AEA10();
  if (v10)
  {
    v11 = v10;
    if (sub_1DA7AD2CC(a1, a2))
    {
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v12 = sub_1DA9405A4();
      __swift_project_value_buffer(v12, qword_1EE11B068);
      v13 = a3;

      v14 = sub_1DA940584();
      v15 = sub_1DA940EF4();

      if (os_log_type_enabled(v14, v15))
      {
        v34 = v9;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        aBlock[0] = v17;
        *v16 = 136446466;
        v18 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v18)
        {
          v19 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v20 = v18;
        }

        else
        {
          v19 = 7104878;
          v20 = 0xE300000000000000;
        }

        v30 = sub_1DA7AE6E8(v19, v20, aBlock);

        *(v16 + 4) = v30;
        *(v16 + 12) = 2082;
        *(v16 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
        _os_log_impl(&dword_1DA7A9000, v14, v15, "[%{public}s] Forwarding getDeliveredNotifications: %{public}s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v17, -1, -1);
        MEMORY[0x1E12739F0](v16, -1, -1);

        v9 = v34;
      }

      else
      {
      }

      v31 = sub_1DA940A04();
      v32 = swift_allocObject();
      v32[2] = sub_1DA7B2EF4;
      v32[3] = v8;
      v32[4] = v9;
      aBlock[4] = sub_1DA7B2E54;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B2E40;
      aBlock[3] = &block_descriptor_117;
      v33 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v11 getDeliveredNotificationsForBundleIdentifier:v31 withCompletionHandler:v33];
      _Block_release(v33);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v21 = sub_1DA9405A4();
  __swift_project_value_buffer(v21, qword_1EE11B068);
  v22 = a3;

  v23 = sub_1DA940584();
  v24 = sub_1DA940F14();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136446466;
    if (*&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v27 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v28 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v27 = 7104878;
      v28 = 0xE300000000000000;
    }

    v29 = sub_1DA7AE6E8(v27, v28, aBlock);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
    _os_log_impl(&dword_1DA7A9000, v23, v24, "[%{public}s] getDeliveredNotifications not allowed: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v26, -1, -1);
    MEMORY[0x1E12739F0](v25, -1, -1);
  }

  else
  {
  }

  sub_1DA7AF3EC(0, &qword_1EE114DD8, 0x1E6983240);
  v35 = sub_1DA940BD4();
  (a4)[2](a4, v35);

  swift_unknownObjectRelease();
}

uint64_t sub_1DA7B2DC4(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v4 = *(a1 + 32);
  sub_1DA7AF3EC(0, a3, a4);
  v5 = sub_1DA940BE4();

  v4(v5);
}

void sub_1DA7B2E80(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  sub_1DA7AF3EC(0, a3, a4);
  v5 = sub_1DA940BD4();
  (*(a2 + 16))(a2, v5);
}

void sub_1DA7B2F3C(uint64_t a1, unint64_t a2, void *a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  sub_1DA940A94();
  _Block_copy(a4);
  v9 = os_transaction_create();

  v10 = sub_1DA7AEA10();
  if (v10)
  {
    v11 = v10;
    if (sub_1DA7AD2CC(a1, a2))
    {
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v12 = sub_1DA9405A4();
      __swift_project_value_buffer(v12, qword_1EE11B068);
      v13 = a3;

      v14 = sub_1DA940584();
      v15 = sub_1DA940EF4();

      if (os_log_type_enabled(v14, v15))
      {
        v34 = v9;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        aBlock[0] = v17;
        *v16 = 136446466;
        v18 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v18)
        {
          v19 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v20 = v18;
        }

        else
        {
          v19 = 7104878;
          v20 = 0xE300000000000000;
        }

        v30 = sub_1DA7AE6E8(v19, v20, aBlock);

        *(v16 + 4) = v30;
        *(v16 + 12) = 2082;
        *(v16 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
        _os_log_impl(&dword_1DA7A9000, v14, v15, "[%{public}s] Forwarding getNotificationSettingsForTopics: %{public}s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v17, -1, -1);
        MEMORY[0x1E12739F0](v16, -1, -1);

        v9 = v34;
      }

      else
      {
      }

      v31 = sub_1DA940A04();
      v32 = swift_allocObject();
      v32[2] = sub_1DA7B4620;
      v32[3] = v8;
      v32[4] = v9;
      aBlock[4] = sub_1DA7B456C;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B44D8;
      aBlock[3] = &block_descriptor_31_0;
      v33 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v11 getNotificationSettingsForTopicsWithBundleIdentifier:v31 withCompletionHandler:v33];
      _Block_release(v33);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v21 = sub_1DA9405A4();
  __swift_project_value_buffer(v21, qword_1EE11B068);
  v22 = a3;

  v23 = sub_1DA940584();
  v24 = sub_1DA940F14();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136446466;
    if (*&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v27 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v28 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v27 = 7104878;
      v28 = 0xE300000000000000;
    }

    v29 = sub_1DA7AE6E8(v27, v28, aBlock);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
    _os_log_impl(&dword_1DA7A9000, v23, v24, "[%{public}s] getNotificationSettingsForTopics not allowed: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v26, -1, -1);
    MEMORY[0x1E12739F0](v25, -1, -1);
  }

  else
  {
  }

  sub_1DA849164(MEMORY[0x1E69E7CC0]);
  sub_1DA7AF3EC(0, &unk_1EE114DA0, 0x1E69832B0);
  v35 = sub_1DA940964();
  (a4)[2](a4, v35);

  swift_unknownObjectRelease();
}

uint64_t sub_1DA7B34EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientAuditToken);
  v8 = sub_1DA940A04();
  v9 = [v7 valueForEntitlement_];

  if (!v9)
  {
    v18 = 0u;
    v19 = 0u;
    sub_1DA896614(&v18);
LABEL_12:
    v11 = 0;
    return v11 & 1;
  }

  sub_1DA941154();
  swift_unknownObjectRelease();
  v17[0] = v18;
  v17[1] = v19;
  if (swift_dynamicCast())
  {
    if (v15 == a3 && v16 == a4)
    {

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v17);
      v11 = 1;
      return v11 & 1;
    }

    v12 = sub_1DA941684();

    if (v12)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  v10 = swift_dynamicCast();
  if (!v10)
  {
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v17);
    goto LABEL_12;
  }

  v15 = a3;
  v16 = a4;
  MEMORY[0x1EEE9AC00](v10);
  v14[2] = &v15;
  v11 = sub_1DA7B36C0(sub_1DA7B376C, v14, v14[5]);

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v11 & 1;
}

uint64_t sub_1DA7B36C0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1DA7B37A8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DA941684() & 1;
  }
}

void sub_1DA7B3818(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void (**a5)(void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  sub_1DA940A94();
  _Block_copy(a5);
  v11 = os_transaction_create();

  v12 = sub_1DA7AEA10();
  if (v12)
  {
    v13 = v12;
    if (sub_1DA7AD2CC(a2, a3))
    {
      v37 = v11;
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v14 = sub_1DA9405A4();
      __swift_project_value_buffer(v14, qword_1EE11B068);
      v15 = a4;

      v16 = sub_1DA940584();
      v17 = sub_1DA940EF4();

      if (os_log_type_enabled(v16, v17))
      {
        v36 = a1;
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock[0] = v19;
        *v18 = 136446466;
        v20 = *&v15[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v20)
        {
          v21 = *&v15[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v22 = v20;
        }

        else
        {
          v21 = 7104878;
          v22 = 0xE300000000000000;
        }

        v32 = sub_1DA7AE6E8(v21, v22, aBlock);

        *(v18 + 4) = v32;
        *(v18 + 12) = 2082;
        *(v18 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
        _os_log_impl(&dword_1DA7A9000, v16, v17, "[%{public}s] Forwarding setBadgeNumber: %{public}s", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v19, -1, -1);
        MEMORY[0x1E12739F0](v18, -1, -1);

        a1 = v36;
      }

      else
      {
      }

      v33 = sub_1DA940A04();
      v34 = swift_allocObject();
      v34[2] = sub_1DA7B1C6C;
      v34[3] = v10;
      v34[4] = v37;
      aBlock[4] = sub_1DA7B1C68;
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B1BFC;
      aBlock[3] = &block_descriptor_79;
      v35 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v13 setBadgeNumber:a1 forBundleIdentifier:v33 withCompletionHandler:v35];
      _Block_release(v35);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v23 = sub_1DA9405A4();
  __swift_project_value_buffer(v23, qword_1EE11B068);
  v24 = a4;

  v25 = sub_1DA940584();
  v26 = sub_1DA940F14();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136446466;
    if (*&v24[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v29 = *&v24[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v30 = *&v24[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v29 = 7104878;
      v30 = 0xE300000000000000;
    }

    v31 = sub_1DA7AE6E8(v29, v30, aBlock);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    *(v27 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
    _os_log_impl(&dword_1DA7A9000, v25, v26, "[%{public}s] setBadgeNumber not allowed: %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v28, -1, -1);
    MEMORY[0x1E12739F0](v27, -1, -1);
  }

  else
  {
  }

  if (qword_1EE111448 != -1)
  {
    swift_once();
  }

  v38 = sub_1DA93F8B4();
  (a5)[2](a5, v38);

  swift_unknownObjectRelease();
}

uint64_t sub_1DA7B3DC0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_1DA7B3DE8(uint64_t a1, unint64_t a2, void *a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  sub_1DA940A94();
  _Block_copy(a4);
  v9 = os_transaction_create();

  v10 = sub_1DA7AEA10();
  if (v10)
  {
    v11 = v10;
    if (sub_1DA7AD2CC(a1, a2))
    {
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v12 = sub_1DA9405A4();
      __swift_project_value_buffer(v12, qword_1EE11B068);
      v13 = a3;

      v14 = sub_1DA940584();
      v15 = sub_1DA940EF4();

      if (os_log_type_enabled(v14, v15))
      {
        v34 = v9;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        aBlock[0] = v17;
        *v16 = 136446466;
        v18 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v18)
        {
          v19 = *&v13[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v20 = v18;
        }

        else
        {
          v19 = 7104878;
          v20 = 0xE300000000000000;
        }

        v30 = sub_1DA7AE6E8(v19, v20, aBlock);

        *(v16 + 4) = v30;
        *(v16 + 12) = 2082;
        *(v16 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
        _os_log_impl(&dword_1DA7A9000, v14, v15, "[%{public}s] Forwarding getBadgeNumber: %{public}s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v17, -1, -1);
        MEMORY[0x1E12739F0](v16, -1, -1);

        v9 = v34;
      }

      else
      {
      }

      v31 = sub_1DA940A04();
      v32 = swift_allocObject();
      v32[2] = sub_1DA7AF9F0;
      v32[3] = v8;
      v32[4] = v9;
      aBlock[4] = sub_1DA7B43A0;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B4334;
      aBlock[3] = &block_descriptor_88;
      v33 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v11 getBadgeNumberForBundleIdentifier:v31 withCompletionHandler:v33];
      _Block_release(v33);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v21 = sub_1DA9405A4();
  __swift_project_value_buffer(v21, qword_1EE11B068);
  v22 = a3;

  v23 = sub_1DA940584();
  v24 = sub_1DA940F14();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136446466;
    if (*&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v27 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v28 = *&v22[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v27 = 7104878;
      v28 = 0xE300000000000000;
    }

    v29 = sub_1DA7AE6E8(v27, v28, aBlock);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_1DA7AE6E8(a1, a2, aBlock);
    _os_log_impl(&dword_1DA7A9000, v23, v24, "[%{public}s] getBadgeNumber not allowed: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v26, -1, -1);
    MEMORY[0x1E12739F0](v25, -1, -1);
  }

  else
  {
  }

  a4[2](a4, 0);

  swift_unknownObjectRelease();
}

void sub_1DA7B4334(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1DA7B43C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1DA7B4468(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1DA93F8B4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_1DA7B44D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1DA7AF3EC(0, &unk_1EE114DA0, 0x1E69832B0);
  v3 = sub_1DA940974();

  v2(v3);
}

void sub_1DA7B4594(uint64_t a1, uint64_t a2)
{
  sub_1DA7AF3EC(0, &unk_1EE114DA0, 0x1E69832B0);
  v3 = sub_1DA940964();
  (*(a2 + 16))(a2, v3);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_1DA7B47B0(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void (**a5)(void, void))
{
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  sub_1DA940A94();
  _Block_copy(a5);
  v10 = os_transaction_create();

  v11 = sub_1DA7AEA10();
  if (v11)
  {
    v12 = v11;
    if (sub_1DA7AD2CC(a2, a3))
    {
      v36 = v10;
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v13 = sub_1DA9405A4();
      __swift_project_value_buffer(v13, qword_1EE11B068);
      v14 = a4;

      v15 = sub_1DA940584();
      v16 = sub_1DA940EF4();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        aBlock[0] = v18;
        *v17 = 136446466;
        v19 = *&v14[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v19)
        {
          v20 = *&v14[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v21 = v19;
        }

        else
        {
          v20 = 7104878;
          v21 = 0xE300000000000000;
        }

        v31 = sub_1DA7AE6E8(v20, v21, aBlock);

        *(v17 + 4) = v31;
        *(v17 + 12) = 2082;
        *(v17 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
        _os_log_impl(&dword_1DA7A9000, v15, v16, "[%{public}s] Forwarding setNotificationTopics: %{public}s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v18, -1, -1);
        MEMORY[0x1E12739F0](v17, -1, -1);
      }

      else
      {
      }

      sub_1DA7AF3EC(0, &qword_1EE110BA8, 0x1E69832C8);
      sub_1DA7B0D88(&qword_1EE110BA0, &qword_1EE110BA8, 0x1E69832C8);
      v32 = sub_1DA940E84();
      v33 = sub_1DA940A04();
      v34 = swift_allocObject();
      v34[2] = sub_1DA7B1BCC;
      v34[3] = v9;
      v34[4] = v36;
      aBlock[4] = sub_1DA7B1BD4;
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B1BFC;
      aBlock[3] = &block_descriptor_49;
      v35 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      [v12 setNotificationTopics:v32 forBundleIdentifier:v33 withCompletionHandler:v35];
      _Block_release(v35);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v22 = sub_1DA9405A4();
  __swift_project_value_buffer(v22, qword_1EE11B068);
  v23 = a4;

  v24 = sub_1DA940584();
  v25 = sub_1DA940F14();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136446466;
    if (*&v23[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8])
    {
      v28 = *&v23[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v29 = *&v23[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    }

    else
    {
      v28 = 7104878;
      v29 = 0xE300000000000000;
    }

    v30 = sub_1DA7AE6E8(v28, v29, aBlock);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
    _os_log_impl(&dword_1DA7A9000, v24, v25, "[%{public}s] setNotificationTopics not allowed: %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v27, -1, -1);
    MEMORY[0x1E12739F0](v26, -1, -1);
  }

  else
  {
  }

  if (qword_1EE111448 != -1)
  {
    swift_once();
  }

  v37 = sub_1DA93F8B4();
  (a5)[2](a5, v37);

  swift_unknownObjectRelease();
}

UNCNotificationTopicRecord *UNNotificationTopicRequestToUNCNotificationTopicRecord_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 topic];
  v4 = objc_alloc_init(UNCNotificationTopicRecord);
  v5 = [v3 identifier];
  [(UNCNotificationTopicRecord *)v4 setIdentifier:v5];

  v6 = [v3 displayName];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = [v3 displayName];
  v9 = v8;
  if (isKindOfClass)
  {
    v10 = [v8 un_localizedStringValue];
    [(UNCNotificationTopicRecord *)v4 setDisplayName:v10];

    v9 = [v3 displayName];
    v11 = [v9 un_localizedStringKey];
    [(UNCNotificationTopicRecord *)v4 setDisplayNameLocalizationKey:v11];
  }

  else
  {
    [(UNCNotificationTopicRecord *)v4 setDisplayName:v8];
  }

  v12 = [v2 supportedOptions];
  [(UNCNotificationTopicRecord *)v4 setSupportsBadges:v12 & 1];
  [(UNCNotificationTopicRecord *)v4 setSupportsAlerts:(v12 >> 2) & 1];
  [(UNCNotificationTopicRecord *)v4 setSupportsSounds:(v12 >> 1) & 1];
  [(UNCNotificationTopicRecord *)v4 setSupportsCarPlay:(v12 >> 3) & 1];
  [(UNCNotificationTopicRecord *)v4 setSupportsSpoken:1];
  [(UNCNotificationTopicRecord *)v4 setSupportsCriticalAlerts:(v12 >> 4) & 1];
  [(UNCNotificationTopicRecord *)v4 setSupportsLockScreen:1];
  [(UNCNotificationTopicRecord *)v4 setSupportsNotificationCenter:1];
  v13 = [v2 enabledOptions];

  [(UNCNotificationTopicRecord *)v4 setEnablesBadges:v13 & 1];
  [(UNCNotificationTopicRecord *)v4 setEnablesAlerts:(v13 >> 2) & 1];
  [(UNCNotificationTopicRecord *)v4 setEnablesSounds:(v13 >> 1) & 1];
  [(UNCNotificationTopicRecord *)v4 setEnablesCarPlay:(v13 >> 3) & 1];
  [(UNCNotificationTopicRecord *)v4 setEnablesCriticalAlerts:(v13 >> 4) & 1];
  [(UNCNotificationTopicRecord *)v4 setEnablesLockScreen:(v13 >> 2) & 1];
  [(UNCNotificationTopicRecord *)v4 setEnablesNotificationCenter:(v13 >> 2) & 1];
  -[UNCNotificationTopicRecord setPriority:](v4, "setPriority:", [v3 priority]);
  v14 = [v3 sortIdentifier];
  [(UNCNotificationTopicRecord *)v4 setSortIdentifier:v14];

  return v4;
}

UNCNotificationTopicRecord *UNCDictionaryToNotificationTopicRecord_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[UNCNotificationTopicRecord alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

uint64_t sub_1DA7B5220(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DA7B5320()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1DA7B535C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  sub_1DA940A94();
  v10 = os_transaction_create();

  v11 = sub_1DA7AEA10();
  if (v11)
  {
    v12 = v11;
    if (sub_1DA7AD2CC(a2, a3))
    {
      v38 = a5;
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v13 = sub_1DA9405A4();
      __swift_project_value_buffer(v13, qword_1EE11B068);
      v14 = v5;

      v15 = sub_1DA940584();
      v16 = sub_1DA940EF4();

      if (os_log_type_enabled(v15, v16))
      {
        v39 = a4;
        v37 = v10;
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        aBlock[0] = v18;
        *v17 = 136446466;
        v19 = *&v14[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v19)
        {
          v20 = *&v14[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v21 = v19;
        }

        else
        {
          v20 = 7104878;
          v21 = 0xE300000000000000;
        }

        v32 = sub_1DA7AE6E8(v20, v21, aBlock);

        *(v17 + 4) = v32;
        *(v17 + 12) = 2082;
        *(v17 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
        _os_log_impl(&dword_1DA7A9000, v15, v16, "[%{public}s] Forwarding removePendingNotificationRequests: %{public}s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v18, -1, -1);
        MEMORY[0x1E12739F0](v17, -1, -1);

        v10 = v37;
        a4 = v39;
      }

      else
      {
      }

      v33 = sub_1DA940BD4();
      v34 = sub_1DA940A04();
      v35 = swift_allocObject();
      v35[2] = a4;
      v35[3] = v38;
      v35[4] = v10;
      aBlock[4] = sub_1DA7B58D4;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B43C0;
      aBlock[3] = &block_descriptor_147;
      v36 = _Block_copy(aBlock);
      sub_1DA7B3DC0(a4, v38);
      swift_unknownObjectRetain();

      [v12 removePendingNotificationRequestsWithIdentifiers:v33 forBundleIdentifier:v34 completionHandler:v36];
      _Block_release(v36);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v22 = sub_1DA9405A4();
  __swift_project_value_buffer(v22, qword_1EE11B068);
  v23 = v5;

  v24 = sub_1DA940584();
  v25 = sub_1DA940F14();

  if (os_log_type_enabled(v24, v25))
  {
    v40 = a4;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136446466;
    v28 = *&v23[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    if (v28)
    {
      v29 = *&v23[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v30 = v28;
    }

    else
    {
      v29 = 7104878;
      v30 = 0xE300000000000000;
    }

    v31 = sub_1DA7AE6E8(v29, v30, aBlock);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
    _os_log_impl(&dword_1DA7A9000, v24, v25, "[%{public}s] removePendingNotificationRequests not allowed: %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v27, -1, -1);
    MEMORY[0x1E12739F0](v26, -1, -1);

    a4 = v40;
    if (v40)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (a4)
    {
LABEL_19:
      if (qword_1EE111448 != -1)
      {
        swift_once();
      }

      a4(0, qword_1EE111450);
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1DA7B58D8(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result & 1);
  }

  return result;
}

Swift::Void __swiftcall ServiceManager.contentProtectionStateChanged(forFirstUnlock:)(Swift::Bool forFirstUnlock)
{
  v3 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_notificationRepository);
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  [v3 contentProtectionStateChangedForFirstUnlock_];
  v4 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepository);
  if (!v4)
  {
LABEL_8:
    __break(1u);
    return;
  }

  [v4 contentProtectionStateChangedForFirstUnlock_];
  if (forFirstUnlock)
  {
    v5 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_remoteNotificationsProperties;
    swift_beginAccess();
    if (*(v1 + v5))
    {

      sub_1DA8DDBC4();
    }
  }
}

uint64_t objectdestroy_94Tm()
{
  if (*(v0 + 16))
  {
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1DA7B5AFC(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  sub_1DA940A94();
  v10 = os_transaction_create();

  v11 = sub_1DA7AEA10();
  if (v11)
  {
    v12 = v11;
    if (sub_1DA7AD2CC(a2, a3))
    {
      v38 = a5;
      if (qword_1EE115AA0 != -1)
      {
        swift_once();
      }

      v13 = sub_1DA9405A4();
      __swift_project_value_buffer(v13, qword_1EE11B068);
      v14 = v5;

      v15 = sub_1DA940584();
      v16 = sub_1DA940EF4();

      if (os_log_type_enabled(v15, v16))
      {
        v39 = a4;
        v37 = v10;
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        aBlock[0] = v18;
        *v17 = 136446466;
        v19 = *&v14[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
        if (v19)
        {
          v20 = *&v14[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
          v21 = v19;
        }

        else
        {
          v20 = 7104878;
          v21 = 0xE300000000000000;
        }

        v32 = sub_1DA7AE6E8(v20, v21, aBlock);

        *(v17 + 4) = v32;
        *(v17 + 12) = 2082;
        *(v17 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
        _os_log_impl(&dword_1DA7A9000, v15, v16, "[%{public}s] Forwarding removeDeliveredNotifications: %{public}s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v18, -1, -1);
        MEMORY[0x1E12739F0](v17, -1, -1);

        v10 = v37;
        a4 = v39;
      }

      else
      {
      }

      v33 = sub_1DA940BD4();
      v34 = sub_1DA940A04();
      v35 = swift_allocObject();
      v35[2] = a4;
      v35[3] = v38;
      v35[4] = v10;
      aBlock[4] = sub_1DA7B6230;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B43C0;
      aBlock[3] = &block_descriptor_108;
      v36 = _Block_copy(aBlock);
      sub_1DA7B3DC0(a4, v38);
      swift_unknownObjectRetain();

      [v12 removeDeliveredNotificationsWithIdentifiers:v33 forBundleIdentifier:v34 completionHandler:v36];
      _Block_release(v36);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE115AA0 != -1)
  {
    swift_once();
  }

  v22 = sub_1DA9405A4();
  __swift_project_value_buffer(v22, qword_1EE11B068);
  v23 = v5;

  v24 = sub_1DA940584();
  v25 = sub_1DA940F14();

  if (os_log_type_enabled(v24, v25))
  {
    v40 = a4;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136446466;
    v28 = *&v23[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier + 8];
    if (v28)
    {
      v29 = *&v23[OBJC_IVAR____TtC21UserNotificationsCore29NotificationServiceConnection_clientBundleIdentifier];
      v30 = v28;
    }

    else
    {
      v29 = 7104878;
      v30 = 0xE300000000000000;
    }

    v31 = sub_1DA7AE6E8(v29, v30, aBlock);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_1DA7AE6E8(a2, a3, aBlock);
    _os_log_impl(&dword_1DA7A9000, v24, v25, "[%{public}s] removeDeliveredNotifications not allowed: %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v27, -1, -1);
    MEMORY[0x1E12739F0](v26, -1, -1);

    a4 = v40;
    if (v40)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (a4)
    {
LABEL_19:
      if (qword_1EE111448 != -1)
      {
        swift_once();
      }

      a4(0, qword_1EE111450);
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1DA7B6374(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E90, &unk_1DA95D9E0);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  return sub_1DA7B63F4(a1, v3, v4);
}

uint64_t sub_1DA7B63F4(void *a1, unint64_t a2, uint64_t a3)
{
  if (qword_1EE114E00 != -1)
  {
    swift_once();
  }

  v6 = sub_1DA9405A4();
  __swift_project_value_buffer(v6, qword_1EE11AFA0);

  v7 = a1;
  v8 = sub_1DA940584();
  v9 = sub_1DA940F34();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315906;
    v12 = MEMORY[0x1E69E7CC0];
    if (a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    v14 = sub_1DA7B673C(v13);
    v16 = v15;

    v17 = sub_1DA7AE6E8(v14, v16, &v30);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    if (a3)
    {
      v18 = a3;
    }

    else
    {
      v18 = v12;
    }

    if (*(v18 + 16) < 6uLL)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
      sub_1DA7B6A38();
      v19 = sub_1DA9409C4();
    }

    else
    {

      v19 = sub_1DA941614();
    }

    v21 = v19;
    v22 = v20;

    v23 = sub_1DA7AE6E8(v21, v22, &v30);

    *(v10 + 14) = v23;
    *(v10 + 22) = 1026;
    *(v10 + 24) = a1 == 0;
    *(v10 + 28) = 2082;
    if (a1)
    {
      swift_getErrorValue();
      v24 = sub_1DA941704();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0xE000000000000000;
    }

    v27 = sub_1DA7AE6E8(v24, v26, &v30);

    *(v10 + 30) = v27;
    _os_log_impl(&dword_1DA7A9000, v8, v9, "Finished index: added=[%s], deleted=[%s], success=%{BOOL,public}d%{public}s", v10, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v11, -1, -1);
    MEMORY[0x1E12739F0](v10, -1, -1);
  }

  if (a1)
  {
    v30 = a1;
    v28 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E90, &unk_1DA95D9E0);
    return sub_1DA940C44();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E90, &unk_1DA95D9E0);
    return sub_1DA940C54();
  }
}

unint64_t sub_1DA7B673C(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    if (sub_1DA941264() > 5)
    {
      return sub_1DA941614();
    }

    result = sub_1DA941264();
    v2 = result;
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 > 5)
    {
      return sub_1DA941614();
    }
  }

  if (!v2)
  {
    goto LABEL_17;
  }

  if (v2 >= 1)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1E1272460](v3, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = [v5 uniqueIdentifier];
      v8 = sub_1DA940A14();
      v10 = v9;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1DA7B6928(0, *(v4 + 2) + 1, 1, v4);
      }

      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      if (v12 >= v11 >> 1)
      {
        v4 = sub_1DA7B6928((v11 > 1), v12 + 1, 1, v4);
      }

      ++v3;

      *(v4 + 2) = v12 + 1;
      v13 = &v4[16 * v12];
      *(v13 + 4) = v8;
      *(v13 + 5) = v10;
    }

    while (v2 != v3);
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
    sub_1DA7B6A38();
    v14 = sub_1DA9409C4();

    return v14;
  }

  __break(1u);
  return result;
}

char *sub_1DA7B6928(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
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

unint64_t sub_1DA7B6A38()
{
  result = qword_1EE114DF0;
  if (!qword_1EE114DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6790, &qword_1DA9594C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE114DF0);
  }

  return result;
}

uint64_t sub_1DA7B6A9C(uint64_t result)
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

  result = sub_1DA7B6B88(result, v11, 1, v3);
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

char *sub_1DA7B6B88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5038, &qword_1DA9596D8);
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

void *sub_1DA7B6C7C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1DA7B6CC8(a1, a2);
  sub_1DA7B6A9C(&unk_1F5631370);
  return v3;
}

void *sub_1DA7B6CC8(uint64_t a1, unint64_t a2)
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

  v6 = sub_1DA839094(v5, 0);
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

  result = sub_1DA9413C4();
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
        v10 = sub_1DA940B14();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1DA839094(v10, 0);
        result = sub_1DA941344();
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

uint64_t sub_1DA7B6DF8@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1DA7B6E28()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1DA88E75C;
  }

  else
  {

    v2 = sub_1DA7B6F44;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DA7B6F44()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA7B6FA8()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1DA88EFC0;
  }

  else
  {

    v2 = sub_1DA7B70D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DA7B70D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA7B7144()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1DA834000;
  }

  else
  {
    v2 = sub_1DA7B7258;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DA7B7258()
{
  v1 = v0[20];
  v2 = v0[17];
  v9 = v0[19];
  v10 = v0[18];
  v3 = v0[15];
  v4 = v0[14];
  v8 = v0[16];
  v0[6] = sub_1DA7B7694;
  v0[7] = v4;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1DA7AF1D0;
  v0[5] = &block_descriptor_15;
  v5 = _Block_copy(v0 + 2);

  sub_1DA940824();
  v0[11] = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v1, v2, v5);
  _Block_release(v5);
  (*(v8 + 8))(v2, v3);
  (*(v9 + 8))(v1, v10);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DA7B7470()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DA7B7568()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DA7B769C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D30, &qword_1DA9593C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  if ((*(v0 + 56) & 1) == 0)
  {
    result = swift_beginAccess();
    v12 = *(v0 + 48);
    if (*(v12 + 16))
    {
      v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v19 = *(v5 + 16);
      v20 = v13;
      v19(v11, v12 + v13, v4);
      *(v0 + 56) = 1;
      result = swift_beginAccess();
      if (*(v12 + 16))
      {
        v14 = v0;
        sub_1DA884BFC(0, 1);
        swift_endAccess();
        v15 = sub_1DA940D34();
        (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
        v19(v8, v11, v4);
        v16 = v20;
        v17 = (v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
        v18 = swift_allocObject();
        *(v18 + 16) = 0;
        *(v18 + 24) = 0;
        (*(v5 + 32))(v18 + v16, v8, v4);
        *(v18 + v17) = v14;

        sub_1DA8DB00C(0, 0, v3, &unk_1DA9594A8, v18);

        return (*(v5 + 8))(v11, v4);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1DA7B7964()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D30, &qword_1DA9593C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DA7B7A54(const char *a1)
{
  v3 = v1;
  if (qword_1EE110E98 != -1)
  {
    swift_once();
  }

  v4 = sub_1DA9405A4();
  __swift_project_value_buffer(v4, qword_1EE110EA0);
  v5 = sub_1DA940584();
  v6 = sub_1DA940F34();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DA7A9000, v5, v6, a1, v7, 2u);
    MEMORY[0x1E12739F0](v7, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtCC21UserNotificationsCore29RemoteNotificationsProperties14DeviceObserver_delegate), *(v3 + OBJC_IVAR____TtCC21UserNotificationsCore29RemoteNotificationsProperties14DeviceObserver_delegate + 24));
  return sub_1DA7B7B98();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1DA7B7B98()
{
  v1 = *v0;
  v2 = sub_1DA7B7D60();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1DA8E56C8;
  *(v4 + 24) = v3;
  v8[4] = sub_1DA82B5F8;
  v8[5] = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1DA7B8000;
  v8[3] = &block_descriptor_21;
  v5 = _Block_copy(v8);

  dispatch_sync(v2, v5);

  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA7B7D18()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1DA7B7D60()
{
  v1 = v0;
  v2 = sub_1DA940FC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = *(v0 + 88);
  if (v8)
  {
    v9 = *(v0 + 88);
  }

  else
  {
    v10 = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
    v15[1] = "perties.ids-delegate";
    v15[2] = v10;
    sub_1DA940824();
    v15[3] = MEMORY[0x1E69E7CC0];
    v15[0] = sub_1DA8E56DC(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
    sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840, MEMORY[0x1E69E6328]);
    sub_1DA9411D4();
    (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v2);
    v11 = sub_1DA941004();
    v12 = *(v0 + 88);
    *(v1 + 88) = v11;
    v9 = v11;

    v8 = 0;
  }

  v13 = v8;
  return v9;
}

UNCContactRecord *UNCDictionaryToContactRecord_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[UNCContactRecord alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

id UNCContactRecordToUNNotificationContact_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6983328];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  v5 = [v3 handle];
  [v4 setHandle:v5];

  [v4 setHandleType:{objc_msgSend(v3, "handleType")}];
  v6 = [v3 serviceName];
  [v4 setServiceName:v6];

  v7 = [v3 displayName];
  [v4 setDisplayName:v7];

  [v4 setDisplayNameSuggested:{objc_msgSend(v3, "isDisplayNameSuggested")}];
  v8 = [v3 customIdentifier];
  [v4 setCustomIdentifier:v8];

  v9 = [v3 cnContactIdentifier];
  [v4 setCnContactIdentifier:v9];

  v10 = [v3 cnContactFullname];
  [v4 setCnContactFullname:v10];

  v11 = [v3 isCNContactIdentifierSuggested];
  [v4 setCnContactIdentifierSuggested:v11];

  return v4;
}

void sub_1DA7B8674(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a1;
  v9 = sub_1DA93FEC4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  aBlock = 0;
  v30 = 0xE000000000000000;
  sub_1DA941364();

  aBlock = 0xD000000000000029;
  v30 = 0x80000001DA957B00;
  v35 = *(a2 + 56);
  v13 = sub_1DA941614();
  MEMORY[0x1E1271BD0](v13);

  MEMORY[0x1E1271BD0](46, 0xE100000000000000);
  sub_1DA940124();
  v14 = sub_1DA93FEB4();
  v16 = v15;
  (*(v10 + 8))(v12, v9);
  MEMORY[0x1E1271BD0](v14, v16);

  v17 = objc_allocWithZone(MEMORY[0x1E69D54C8]);
  v18 = sub_1DA940A04();

  v19 = [v17 initWithIdentifier_];

  v20 = sub_1DA941844();
  sub_1DA941844();
  v22 = v21 / 1.0e18 + v20;
  sub_1DA7AC344();
  v23 = sub_1DA940FD4();
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = a4;
  v25[4] = a5;
  v33 = sub_1DA93B6FC;
  v34 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1DA7B00D0;
  v32 = &block_descriptor_31;
  v26 = _Block_copy(&aBlock);

  [v19 scheduleWithFireInterval:v23 leewayInterval:v26 queue:v22 handler:0.5];
  _Block_release(v26);

  *v28 = v19;
}

uint64_t sub_1DA7B8988()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7B89C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id UNSNotificationRecordToUNNotificationTrigger_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 triggerType];
  if ([v3 isEqualToString:@"Calendar"])
  {
    v4 = [v2 triggerDateComponents];

    if (v4)
    {
      v5 = MEMORY[0x1E69831E8];
      v6 = [v2 triggerDateComponents];
      v7 = [v5 triggerWithDateMatchingComponents:v6 repeats:{objc_msgSend(v2, "triggerRepeats")}];
LABEL_9:
      v16 = v7;

      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"Local"])
  {
    v8 = MEMORY[0x1E69831F0];
    v9 = [v2 triggerDate];
    v10 = [v2 triggerTimeZone];
    v11 = [v2 triggerRepeatInterval];
    v12 = [v2 triggerRepeatCalendarIdentifier];
    if (v12)
    {
      v13 = MEMORY[0x1E695DEE8];
      v14 = [v2 triggerRepeatCalendarIdentifier];
      v15 = [v13 calendarWithIdentifier:v14];
      v16 = [v8 triggerWithDate:v9 timeZone:v10 repeatInterval:v11 repeatCalendar:v15];
    }

    else
    {
      v16 = [v8 triggerWithDate:v9 timeZone:v10 repeatInterval:v11 repeatCalendar:0];
    }

    goto LABEL_18;
  }

  if ([v3 isEqualToString:@"Location"])
  {
    v17 = MEMORY[0x1E6983208];
    v6 = [v2 triggerRegion];
    v7 = [v17 triggerWithRegion:v6 repeats:{objc_msgSend(v2, "triggerRepeats")}];
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"TimeInterval"])
  {
    v18 = MEMORY[0x1E6983300];
    [v2 triggerTimeInterval];
    v20 = [v18 triggerWithTimeInterval:objc_msgSend(v2 repeats:{"triggerRepeats"), v19}];
LABEL_16:
    v16 = v20;
    goto LABEL_18;
  }

  if ([v3 isEqualToString:@"Push"])
  {
    v21 = [v2 contentAvailable];
    v22 = [v21 integerValue] != 0;

    v23 = [v2 mutableContent];
    v24 = [v23 integerValue] != 0;

    v20 = [MEMORY[0x1E69832E0] triggerWithContentAvailable:v22 mutableContent:v24];
    goto LABEL_16;
  }

LABEL_17:
  v16 = 0;
LABEL_18:

  return v16;
}

UNCAttachmentRecord *UNSDictionaryToAttachmentRecord_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[UNCAttachmentRecord alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

id UNCAttachmentRecordToUNNotificationAttachment_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E6983210]);
  if ([v2 thumbnailHidden])
  {
    v4 = 2;
  }

  else
  {
    if (![v2 hiddenFromDefaultExpandedView])
    {
      goto LABEL_6;
    }

    v4 = 1;
  }

  [v3 setDisplayLocation:v4];
LABEL_6:
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [v2 thumbnailClippingRect];
  [v5 bs_setSafeObject:v6 forKey:*MEMORY[0x1E69833C8]];

  v7 = [v2 thumbnailTimestamp];
  if (v7)
  {
    [v5 bs_setSafeObject:v7 forKey:*MEMORY[0x1E69833D0]];
  }

  else
  {
    v8 = [v2 thumbnailFrameNumber];
    [v5 bs_setSafeObject:v8 forKey:*MEMORY[0x1E69833D0]];
  }

  [v3 setThumbnailGeneratorUserInfo:v5];
  v9 = [v2 URL];
  v10 = [v9 path];

  v11 = [objc_alloc(MEMORY[0x1E69832E8]) initFileURLWithPath:v10 sandboxExtensionClass:@"com.apple.usernotifications.attachments.read-only"];
  v12 = objc_alloc(MEMORY[0x1E6983268]);
  v13 = [v2 identifier];
  v14 = [v2 type];
  v15 = [v12 initWithIdentifier:v13 URL:v11 type:v14 options:v3];

  return v15;
}

uint64_t sub_1DA7B8FEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1DA7B9060();
  v3 = sub_1DA940BE4();

  v2(v3);
}

unint64_t sub_1DA7B9060()
{
  result = qword_1EE114DD0;
  if (!qword_1EE114DD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE114DD0);
  }

  return result;
}

uint64_t sub_1DA7B90B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_1DA7B9114(v2);
  return swift_endAccess();
}

uint64_t sub_1DA7B912C(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1DA941264();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1DA941264();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1DA7B9224(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1DA7B9224(uint64_t a1, char a2)
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

  sub_1DA941264();
LABEL_9:
  result = sub_1DA941394();
  *v2 = result;
  return result;
}

uint64_t sub_1DA7B92C4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1DA941264();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1DA941264();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1DA7AD11C(&qword_1EE110C90, &qword_1ECBD5020, &qword_1DA9594D0, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5020, &qword_1DA9594D0);
            v9 = sub_1DA7B9478(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1DA7AF3EC(0, &qword_1EE114DD0, 0x1E6964E80);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1DA7B9478(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E1272460](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1DA7B94F8;
  }

  __break(1u);
  return result;
}

UNSNotificationRecord *UNSDictionaryToNotificationRecord_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[UNSNotificationRecord alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

double sub_1DA7B98DC(unsigned int a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v57 = a3;
  v53 = a2;
  v56 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  v12 = type metadata accessor for NotificationPipelineRequestLogger(0);
  v54 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v55 = v13;
  v52 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DA9401F4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_orderedSteps;
  swift_beginAccess();
  v19 = *(v5 + v18);
  if (*(v19 + 16))
  {
    v51 = a5;
    v50 = a4;
    swift_beginAccess();
    sub_1DA7BABAC(v19 + 32, v62);
    sub_1DA885248(0, 1);
    swift_endAccess();
    sub_1DA7BABAC(v62, &v59);
    v20 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_notification;
    swift_beginAccess();
    (*(v15 + 16))(v17, v6 + v20, v14);
    v21 = v53;
    v22 = v52;
    sub_1DA7BACD0(v53, v52, type metadata accessor for NotificationPipelineRequestLogger);
    type metadata accessor for NotificationPipelineStep(0);
    v23 = swift_allocObject();
    v24 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_timerLock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6098, &qword_1DA95DFA8);
    v25 = swift_allocObject();
    *(v25 + 24) = 0;
    *(v25 + 16) = 0;
    *(v23 + v24) = v25;
    v26 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_completionLock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60A0, &unk_1DA95DFB0);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    *(v27 + 32) = 0;
    *(v23 + v26) = v27;
    *(v23 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_work) = 0;
    sub_1DA7B9FAC(&v59, v23 + 16);
    *(v23 + 56) = v57;
    (*(v15 + 32))(v23 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_notification, v17, v14);
    sub_1DA7BAC68(v22, v23 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_logger, type metadata accessor for NotificationPipelineRequestLogger);
    *&v59 = 0;
    *(&v59 + 1) = 0xE000000000000000;
    sub_1DA941364();
    MEMORY[0x1E1271BD0](0x20676E696E6E7552, 0xEE00272070657473);
    v28 = sub_1DA7BAAB4();
    MEMORY[0x1E1271BD0](v28);

    MEMORY[0x1E1271BD0](0xD000000000000024, 0x80000001DA953980);
    v58 = *(*(v6 + v18) + 16);
    v29 = sub_1DA941614();
    MEMORY[0x1E1271BD0](v29);

    MEMORY[0x1E1271BD0](39, 0xE100000000000000);
    sub_1DA7BAA9C(v59, *(&v59 + 1));

    v30 = *(v6 + OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_analytics);
    v49 = v23;
    v48 = v30;
    if (v30)
    {
      sub_1DA7BABAC(v23 + 16, &v59);
      __swift_project_boxed_opaque_existential_1(&v59, v60);
      DynamicType = swift_getDynamicType();
      v32 = v61;
      __swift_destroy_boxed_opaque_existential_1(&v59);
      v33 = (*(v32 + 8))(DynamicType, v32);
      v34 = sub_1DA7BB3A8(v33);
      if (v34)
      {

        sub_1DA7BADA0();
      }
    }

    else
    {
      v34 = 0;
    }

    v37 = swift_allocObject();
    swift_weakInit();
    sub_1DA7BACD0(v21, v22, type metadata accessor for NotificationPipelineRequestLogger);
    sub_1DA7BABAC(v62, &v59);
    v38 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v39 = (v38 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = (v38 + v55 + 23) & 0xFFFFFFFFFFFFFFF8;
    v41 = v22;
    v42 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    *(v43 + 16) = v37;
    *(v43 + 24) = v34;
    sub_1DA7BAC68(v41, v43 + v38, type metadata accessor for NotificationPipelineRequestLogger);
    v44 = v43 + v39;
    *v44 = v49;
    v45 = v56;
    *(v44 + 8) = v56;
    *(v43 + v40) = v57;
    v46 = (v43 + v42);
    v47 = v51;
    *v46 = v50;
    v46[1] = v47;
    sub_1DA7B9FAC(&v59, v43 + ((v42 + 23) & 0xFFFFFFFFFFFFFFF8));

    sub_1DA7BA180(v45, v48, sub_1DA899A5C, v43);

    __swift_destroy_boxed_opaque_existential_1(v62);
  }

  else
  {
    v35 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_notification;
    swift_beginAccess();
    (*(v15 + 16))(v11, v5 + v35, v14);
    swift_storeEnumTagMultiPayload();
    a4(v11);
    sub_1DA7BA120(v11, &qword_1ECBD4E98, &qword_1DA95D790);
  }

  return result;
}

uint64_t sub_1DA7B9FAC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1DA7B9FC4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7B9FFC()
{
  v1 = *(type metadata accessor for NotificationPipelineRequestLogger(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (((((v3 + *(v1 + 64) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  v5 = sub_1DA9401F4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  __swift_destroy_boxed_opaque_existential_1((v0 + v4));

  return MEMORY[0x1EEE6BDD0](v0, v4 + 40, v2 | 7);
}

uint64_t sub_1DA7BA120(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_1DA7BA180(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26[-v11];
  v13 = *(v5 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_completionLock);
  v27 = a3;
  v28 = a4;
  os_unfair_lock_lock((v13 + 32));
  sub_1DA7BAC10((v13 + 16));
  os_unfair_lock_unlock((v13 + 32));
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_1DA941364();

  v29 = 0x676E697472617453;
  v30 = 0xEF27207065747320;
  v14 = sub_1DA7BAAB4();
  MEMORY[0x1E1271BD0](v14);

  MEMORY[0x1E1271BD0](39, 0xE100000000000000);
  sub_1DA7BAA9C(v29, v30);

  v15 = v5[5];
  v16 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v15);
  v17 = (*(v16 + 16))(v15, v16);
  if ((v18 & 1) == 0)
  {
    v19 = *(v5 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_timerLock);
    v20 = MEMORY[0x1EEE9AC00](v17);
    *&v26[-32] = v5;
    *&v26[-24] = v21;
    *&v26[-16] = v20;
    *&v26[-8] = v22;
    os_unfair_lock_lock((v19 + 24));
    sub_1DA7BA468((v19 + 16));
    os_unfair_lock_unlock((v19 + 24));
  }

  v23 = sub_1DA940D34();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v5;
  *(v24 + 40) = a1;
  *(v24 + 48) = a2;

  *(v5 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_work) = sub_1DA84FB24(0, 0, v12, &unk_1DA966088, v24);

  return result;
}

uint64_t sub_1DA7BA420()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_1DA7BA488()
{
  if (qword_1EE112FE8 != -1)
  {
    swift_once();
  }

  if (byte_1EE112FF0 != 1)
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DA940A04();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v9 = 0u;
    v10 = 0u;
LABEL_12:
    sub_1DA7BA120(&v9, &unk_1ECBD7730, &qword_1DA95C370);
    return 0;
  }

  v3 = sub_1DA940A04();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1DA941154();
    swift_unknownObjectRelease();
  }

  else
  {
    *v7 = 0u;
    v8 = 0u;
  }

  v9 = *v7;
  v10 = v8;
  if (!*(&v8 + 1))
  {
    goto LABEL_12;
  }

  sub_1DA898804();
  if (swift_dynamicCast())
  {
    v5 = [v7[0] integerValue];

    return v5;
  }

  return 0;
}

uint64_t sub_1DA7BA648()
{
  v0 = sub_1DA7BA488();
  v2 = 10;
  if ((v1 & 1) == 0)
  {
    v2 = v0;
  }

  return 1000000000000000000 * v2;
}

uint64_t sub_1DA7BA698()
{
  v1 = v0;
  BYTE8(v9) = 0;
  sub_1DA941364();
  v2 = type metadata accessor for NotificationPipelineRequestLogger(0);
  *&v9 = *(v0 + *(v2 + 20));
  sub_1DA941494();
  MEMORY[0x1E1271BD0](8236, 0xE200000000000000);
  sub_1DA9401F4();
  sub_1DA7BB52C();
  v3 = sub_1DA941614();
  MEMORY[0x1E1271BD0](v3);

  MEMORY[0x1E1271BD0](0x6520656D6954202CLL, 0xEF3D64657370616CLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD55D8, qword_1DA95B2F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DA9596E0;
  v5 = CFAbsoluteTimeGetCurrent() - *(v1 + *(v2 + 24));
  v6 = MEMORY[0x1E69E6438];
  *(v4 + 56) = MEMORY[0x1E69E63B0];
  *(v4 + 64) = v6;
  *(v4 + 32) = v5;
  v7 = sub_1DA940A44();
  MEMORY[0x1E1271BD0](v7);

  MEMORY[0x1E1271BD0](1667592992, 0xE400000000000000);
  return *(&v9 + 1);
}

void sub_1DA7BA824(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v7 = type metadata accessor for NotificationPipelineRequestLogger(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE114E60 != -1)
  {
    swift_once();
  }

  v10 = sub_1DA9405A4();
  __swift_project_value_buffer(v10, qword_1EE11AFB8);
  sub_1DA7BAA38(v3, v9);

  v11 = sub_1DA940584();
  v12 = a3();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136446466;
    v15 = sub_1DA7BA698();
    v17 = v16;
    sub_1DA7BB4D0(v9);
    v18 = sub_1DA7AE6E8(v15, v17, &v20);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_1DA7AE6E8(a1, a2, &v20);
    _os_log_impl(&dword_1DA7A9000, v11, v12, "[%{public}s]: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v14, -1, -1);
    MEMORY[0x1E12739F0](v13, -1, -1);
  }

  else
  {

    sub_1DA7BB4D0(v9);
  }
}

uint64_t sub_1DA7BAA38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationPipelineRequestLogger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA7BAAB4()
{
  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  sub_1DA941364();

  v5 = 0x203A70657453;
  v6 = 0xE600000000000000;
  sub_1DA7BABAC(v0 + 16, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5DE0, &unk_1DA9618D0);
  v1 = sub_1DA940A74();
  MEMORY[0x1E1271BD0](v1);

  MEMORY[0x1E1271BD0](0x3A7865646E69202CLL, 0xE900000000000020);
  v4[0] = *(v0 + 56);
  v2 = sub_1DA941614();
  MEMORY[0x1E1271BD0](v2);

  return v5;
}

uint64_t sub_1DA7BABAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DA7BAC10(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = a1[1];

  result = sub_1DA7B5220(v5, v6);
  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA7BAC68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA7BACD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA7BAD38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DA7BADA0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v40 - v3;
  v5 = sub_1DA9404F4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - v9;
  v11 = sub_1DA9405A4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DA940524();
  v41 = *(v15 - 8);
  v42 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E00, &unk_1DA958720);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v40 - v19;
  if (qword_1EE110E38 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v11, qword_1EE11AD78);
  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) == 2)
    {
      v44 = "SectionSettingsFetchPipelineStep";
      v22 = 32;
    }

    else
    {
      v44 = "OneTimeCodePipelineStep";
      v22 = 23;
    }
  }

  else if (*(v1 + 16))
  {
    v44 = "BehaviorResolutionPipelineStep";
    v22 = 30;
  }

  else
  {
    v44 = "IntelligenceServicePipelineStep";
    v22 = 31;
  }

  v40 = v22;
  (*(v12 + 16))(v14, v21, v11);
  sub_1DA940504();
  sub_1DA940514();
  sub_1DA9404C4();
  v23 = sub_1DA940514();
  v24 = sub_1DA941084();
  if (sub_1DA941124())
  {
    v25 = v10;
    v26 = v6;
    v27 = v1;
    v28 = v5;
    v29 = v4;
    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = sub_1DA9404D4();
    _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v23, v24, v31, v44, "", v30, 2u);
    v32 = v30;
    v4 = v29;
    v5 = v28;
    v1 = v27;
    v6 = v26;
    v10 = v25;
    MEMORY[0x1E12739F0](v32, -1, -1);
  }

  (*(v6 + 16))(v43, v10, v5);
  sub_1DA940564();
  swift_allocObject();
  v33 = sub_1DA940554();
  (*(v6 + 8))(v10, v5);
  v34 = v40;
  *v20 = v44;
  *(v20 + 1) = v34;
  v20[16] = 2;
  *(v20 + 3) = v33;
  v35 = type metadata accessor for LogSignpost(0);
  (*(v41 + 32))(&v20[*(v35 + 24)], v17, v42);
  (*(*(v35 - 8) + 56))(v20, 0, 1, v35);
  v36 = OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_signpost;
  swift_beginAccess();
  sub_1DA7BAD38(v20, v1 + v36, &qword_1ECBD4E00, &unk_1DA958720);
  swift_endAccess();
  sub_1DA93FAE4();
  v37 = sub_1DA93FAF4();
  (*(*(v37 - 8) + 56))(v4, 0, 1, v37);
  v38 = OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_startDate;
  swift_beginAccess();
  sub_1DA7BAD38(v4, v1 + v38, &unk_1ECBD6530, &unk_1DA958820);
  result = swift_endAccess();
  *(v1 + OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_status) = 6;
  return result;
}

unint64_t sub_1DA7BB33C(uint64_t a1)
{
  v1 = a1;
  sub_1DA941764();
  MEMORY[0x1E1272850](v1);
  v2 = sub_1DA941794();

  return sub_1DA7BB7A8(v1, v2);
}

uint64_t sub_1DA7BB3A8(uint64_t a1)
{
  if (a1 != 4)
  {
    if (*(*(v1 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_steps) + 16))
    {
      sub_1DA7BB33C(a1);
      if (v2)
      {
      }
    }

    sub_1DA941364();
    MEMORY[0x1E1271BD0](0xD000000000000064, 0x80000001DA950DC0);
    v4 = sub_1DA940A74();
    MEMORY[0x1E1271BD0](v4);

    sub_1DA84AB4C(0, 0xE000000000000000);
  }

  return 0;
}

uint64_t sub_1DA7BB4A0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4DC8, &qword_1DA958408);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1DA7BB4D0(uint64_t a1)
{
  v2 = type metadata accessor for NotificationPipelineRequestLogger(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA7BB52C()
{
  result = qword_1EE114E70;
  if (!qword_1EE114E70)
  {
    sub_1DA9401F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE114E70);
  }

  return result;
}

uint64_t type metadata accessor for NotificationPipelineRequestLogger(uint64_t a1)
{
  result = qword_1EE114ED8;
  if (!qword_1EE114ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for LogSignpost(uint64_t a1)
{
  result = qword_1EE113BB8;
  if (!qword_1EE113BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA7BB644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DA940524();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DA7BB704(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DA940524();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1DA7BB7A8(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1DA7BB824()
{
  v204 = v0;
  if (*(v0 + 348) == 3)
  {
    if (qword_1EE110E48 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 200);
    v2 = *(v0 + 112);
    v3 = *(v0 + 120);
    v4 = *(v0 + 24);
    v5 = sub_1DA9405A4();
    *(v0 + 208) = __swift_project_value_buffer(v5, qword_1EE11AD90);
    v6 = *(v3 + 16);
    *(v0 + 216) = v6;
    *(v0 + 224) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v1, v4, v2);
    v7 = sub_1DA940584();
    v8 = sub_1DA940F34();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 200);
    v12 = *(v0 + 112);
    v11 = *(v0 + 120);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v198 = swift_slowAlloc();
      v201 = v198;
      *v13 = 136446210;
      sub_1DA7BB52C();
      v14 = sub_1DA941614();
      v16 = v15;
      v17 = *(v11 + 8);
      v17(v10, v12);
      v18 = sub_1DA7AE6E8(v14, v16, &v201);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1DA7A9000, v7, v8, "%{public}s Removing index", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v198);
      MEMORY[0x1E12739F0](v198, -1, -1);
      MEMORY[0x1E12739F0](v13, -1, -1);
    }

    else
    {

      v17 = *(v11 + 8);
      v17(v10, v12);
    }

    *(v0 + 232) = v17;
    v30 = swift_task_alloc();
    *(v0 + 240) = v30;
    *v30 = v0;
    v30[1] = sub_1DA9177A4;
    v31 = *(v0 + 24);

    return sub_1DA7BED68(v31);
  }

  v19 = *(v0 + 32);
  type metadata accessor for IntelligenceServiceAnalytics(0);
  swift_allocObject();
  v20 = sub_1DA82138C();
  v21 = v20;
  *(v0 + 256) = v20;
  if (v19)
  {
    *(*(v0 + 32) + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_intelligenceServiceAnalytics) = v20;
  }

  if (qword_1EE112FE8 != -1)
  {
    swift_once();
  }

  if (byte_1EE112FF0 != 1)
  {
    goto LABEL_13;
  }

  sub_1DA90A7F8(&v201);
  v22 = v201;
  v23 = v202;
  v24 = v203;
  v25 = v202;
  if (!v202)
  {
LABEL_43:
    v59 = qword_1EE110E48;
    v199 = v25;
    v196 = v25;
    if (v59 != -1)
    {
      swift_once();
    }

    v60 = *(v0 + 184);
    v61 = *(v0 + 112);
    v62 = *(v0 + 120);
    v63 = *(v0 + 24);
    v192 = sub_1DA9405A4();
    __swift_project_value_buffer(v192, qword_1EE11AD90);
    (*(v62 + 16))(v60, v63, v61);

    v64 = sub_1DA940584();
    v65 = sub_1DA940F34();
    v66 = os_log_type_enabled(v64, v65);
    v67 = *(v0 + 184);
    v69 = *(v0 + 112);
    v68 = *(v0 + 120);
    v188 = v24;
    if (v66)
    {
      v185 = v65;
      v70 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      v201 = v183;
      *v70 = 136446722;
      sub_1DA7BB52C();
      v71 = sub_1DA941614();
      v73 = v72;
      (*(v68 + 8))(v67, v69);
      v74 = sub_1DA7AE6E8(v71, v73, &v201);

      *(v70 + 4) = v74;
      *(v70 + 12) = 2080;
      if (v199)
      {
        v75 = v196;
        v76 = [v196 string];
        v77 = sub_1DA940A14();
        v79 = v78;
      }

      else
      {
        v77 = 0;
        v79 = 0xE000000000000000;
        v75 = v196;
      }

      v106 = sub_1DA7AE6E8(v77, v79, &v201);

      *(v70 + 14) = v106;
      *(v70 + 22) = 1024;
      sub_1DA8A65A0(v22, v23);
      *(v70 + 24) = v188 & 1;
      sub_1DA8A65A0(v22, v23);
      _os_log_impl(&dword_1DA7A9000, v64, v185, "%{public}s Overwriting summary: %s,  priority: %{BOOL}d.", v70, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v183, -1, -1);
      MEMORY[0x1E12739F0](v70, -1, -1);
    }

    else
    {
      sub_1DA8A65A0(v22, v23);
      sub_1DA8A65A0(v22, v23);

      (*(v68 + 8))(v67, v69);
      v75 = v196;
    }

    if (qword_1EE110E48 != -1)
    {
      swift_once();
    }

    v107 = *(v0 + 160);
    v108 = *(v0 + 112);
    v109 = *(v0 + 120);
    v110 = *(v0 + 24);
    __swift_project_value_buffer(v192, qword_1EE11AD90);
    v193 = *(v109 + 16);
    v193(v107, v110, v108);
    v111 = v75;
    v112 = sub_1DA940584();
    v113 = sub_1DA940F34();

    v114 = os_log_type_enabled(v112, v113);
    v115 = *(v0 + 160);
    v116 = *(v0 + 112);
    v117 = *(v0 + 120);
    v186 = v111;
    if (v114)
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v201 = v119;
      *v118 = 136446466;
      sub_1DA7BB52C();
      v120 = sub_1DA941614();
      v122 = v121;
      v179 = *(v117 + 8);
      v179(v115, v116);
      v123 = sub_1DA7AE6E8(v120, v122, &v201);
      v111 = v186;

      *(v118 + 4) = v123;
      *(v118 + 12) = 2082;
      v124 = v188;
      v125 = sub_1DA93B7DC(v199, v188, 0);
      v127 = v126;

      v128 = sub_1DA7AE6E8(v125, v127, &v201);

      *(v118 + 14) = v128;
      _os_log_impl(&dword_1DA7A9000, v112, v113, "%{public}s Got inference %{public}s", v118, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v119, -1, -1);
      MEMORY[0x1E12739F0](v118, -1, -1);
    }

    else
    {

      v179 = *(v117 + 8);
      v179(v115, v116);
      v124 = v188;
    }

    v129 = sub_1DA940014();
    v131 = sub_1DA9193E8(v129, v130);

    if (v131)
    {
      v132 = v111;
      v184 = 0;
      v133 = v199;
    }

    else
    {
      v133 = 0;
      v184 = 5;
    }

    if ((v131 & 0x100) != 0)
    {
      v134 = 0;
    }

    else
    {
      v124 = 0;
      v134 = 5;
    }

    v193(*(v0 + 152), *(v0 + 24), *(v0 + 112));
    v135 = v133;
    v136 = sub_1DA940584();
    v137 = sub_1DA940F34();
    v189 = v135;

    v138 = os_log_type_enabled(v136, v137);
    v139 = *(v0 + 152);
    v140 = *(v0 + 112);
    v182 = v134;
    if (v138)
    {
      v177 = v137;
      log = v136;
      v141 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      v201 = v176;
      *v141 = 136447746;
      sub_1DA7BB52C();
      v142 = sub_1DA941614();
      v143 = v133;
      v145 = v144;
      v179(v139, v140);
      v146 = sub_1DA7AE6E8(v142, v145, &v201);
      v133 = v143;

      *(v141 + 4) = v146;
      *(v141 + 12) = 1026;
      *(v141 + 14) = v131 & 1;
      *(v141 + 18) = 1026;
      *(v141 + 20) = (v131 & 0x100) >> 8;
      *(v141 + 24) = 1026;
      *(v141 + 26) = v184;
      if (v143)
      {
        v147 = 49;
      }

      else
      {
        v147 = 48;
      }

      *(v141 + 30) = 2082;
      v148 = sub_1DA7AE6E8(v147, 0xE100000000000000, &v201);

      *(v141 + 32) = v148;
      *(v141 + 40) = 1026;
      *(v141 + 42) = v182;
      *(v141 + 46) = 1026;
      v149 = v124 != 2 && (v124 & 1) != 0;
      *(v141 + 48) = v149;
      _os_log_impl(&dword_1DA7A9000, log, v177, "%{public}s canSummarize %{BOOL,public}d, canPrioritize %{BOOL,public}d, summaryStatus: %{public}u, hasSummary: %{public}s, priorityStatus: %{public}u, priority: %{BOOL,public}d", v141, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v176, -1, -1);
      MEMORY[0x1E12739F0](v141, -1, -1);
    }

    else
    {

      v179(v139, v140);
    }

    *(*(v0 + 256) + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_isHighlight) = v124;
    v181 = v124;
    if (v133)
    {
      v150 = [v189 string];
      sub_1DA940A14();

      v151 = sub_1DA940AC4();
    }

    else
    {
      v151 = 0;
    }

    v152 = v133 == 0;
    v153 = *(v0 + 256);
    v154 = *(v0 + 144);
    v156 = *(v0 + 104);
    v155 = *(v0 + 112);
    v157 = *(v0 + 96);
    v158 = *(v0 + 80);
    v180 = *(v0 + 72);
    v159 = *(v0 + 64);
    v160 = *(v0 + 24);
    v161 = v153 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_summaryTopLineLength;
    *v161 = v151;
    *(v161 + 8) = v152;
    v162 = v153 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_summaryStatus;
    *v162 = v184;
    *(v162 + 4) = 0;
    v163 = v153 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_urgencyStatus;
    *v163 = v182;
    *(v163 + 4) = 0;
    v193(v154, v160, v155);
    LOBYTE(v201) = 0;
    sub_1DA91995C(v182, v181, v156);
    v164 = sub_1DA9402E4();
    (*(*(v164 - 8) + 56))(v156, 0, 1, v164);
    sub_1DA93FF44();
    LOBYTE(v201) = 0;
    sub_1DA919BF4(v184, v157);
    v165 = sub_1DA9402D4();
    (*(*(v165 - 8) + 56))(v157, 0, 1, v165);
    sub_1DA93FF24();
    sub_1DA940044();
    if ((*(v158 + 48))(v159, 1, v180) == 1)
    {
      v167 = *(v0 + 72);
      v166 = *(v0 + 80);
      v168 = *(v0 + 48);
      sub_1DA7BA120(*(v0 + 64), &qword_1ECBD4E08, &qword_1DA958750);
      UNCCatchMeHighlights();
      v169 = v189;
      sub_1DA93FFC4();
      (*(v166 + 56))(v168, 0, 1, v167);
      sub_1DA940054();
    }

    else
    {
      v170 = *(v0 + 80);
      v171 = *(v0 + 88);
      v194 = *(v0 + 72);
      v172 = *(v0 + 56);
      (*(v170 + 32))(v171, *(v0 + 64));
      sub_1DA93FFD4();
      sub_1DA93FFE4();
      sub_1DA93FFB4();
      UNCCatchMeHighlights();
      v190 = v189;
      sub_1DA93FFC4();
      (*(v170 + 56))(v172, 0, 1, v194);
      sub_1DA940054();

      (*(v170 + 8))(v171, v194);
    }

    (*(*(v0 + 120) + 32))(*(v0 + 16), *(v0 + 144), *(v0 + 112));
    goto LABEL_95;
  }

  if (v202 != 1)
  {
    v57 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

    v58 = sub_1DA940A04();
    sub_1DA8A65A0(v22, v23);
    v25 = [v57 initWithString_];

    goto LABEL_43;
  }

LABEL_13:
  v26 = sub_1DA919CE0();
  if (v26 == 9)
  {
    if (qword_1EE110EF8 != -1)
    {
      swift_once();
    }

    if (byte_1EE110F00 & 1) != 0 || (byte_1EE110F00 = MKBDeviceUnlockedSinceBoot() == 1, (byte_1EE110F00))
    {
      v27 = swift_task_alloc();
      *(v0 + 264) = v27;
      *v27 = v0;
      v27[1] = sub_1DA917DA0;
      v28 = *(v0 + 24);

      return sub_1DA92819C(v28, v21);
    }

    else
    {
      if (qword_1EE110E48 != -1)
      {
        swift_once();
      }

      v80 = *(v0 + 168);
      v81 = *(v0 + 112);
      v82 = *(v0 + 120);
      v83 = *(v0 + 24);
      v84 = sub_1DA9405A4();
      *(v0 + 296) = __swift_project_value_buffer(v84, qword_1EE11AD90);
      v85 = *(v82 + 16);
      *(v0 + 304) = v85;
      *(v0 + 312) = (v82 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v85(v80, v83, v81);
      v86 = sub_1DA940584();
      v87 = sub_1DA940F34();
      v88 = os_log_type_enabled(v86, v87);
      v89 = *(v0 + 168);
      v91 = *(v0 + 112);
      v90 = *(v0 + 120);
      if (v88)
      {
        v200 = v87;
        v92 = swift_slowAlloc();
        v197 = swift_slowAlloc();
        v201 = v197;
        *v92 = 136446210;
        sub_1DA7BB52C();
        v93 = sub_1DA941614();
        v95 = v94;
        v96 = *(v90 + 8);
        v96(v89, v91);
        v97 = sub_1DA7AE6E8(v93, v95, &v201);

        *(v92 + 4) = v97;
        _os_log_impl(&dword_1DA7A9000, v86, v200, "%{public}s Indexing but not waiting for result because device is class C locked", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v197);
        MEMORY[0x1E12739F0](v197, -1, -1);
        MEMORY[0x1E12739F0](v92, -1, -1);
      }

      else
      {

        v96 = *(v90 + 8);
        v96(v89, v91);
      }

      *(v0 + 320) = v96;
      *(v21 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_indexSkippingReason) = 6;
      v174 = swift_task_alloc();
      *(v0 + 328) = v174;
      *v174 = v0;
      v174[1] = sub_1DA918894;
      v175 = *(v0 + 24);

      return sub_1DA92647C(v175, v21);
    }
  }

  v32 = v26;
  if (qword_1EE110E48 != -1)
  {
    swift_once();
  }

  v33 = *(v0 + 176);
  v34 = *(v0 + 112);
  v35 = *(v0 + 120);
  v36 = *(v0 + 24);
  v37 = sub_1DA9405A4();
  __swift_project_value_buffer(v37, qword_1EE11AD90);
  v38 = *(v35 + 16);
  v38(v33, v36, v34);
  v39 = sub_1DA940584();
  v40 = sub_1DA940F34();
  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 176);
  v44 = *(v0 + 112);
  v43 = *(v0 + 120);
  if (v41)
  {
    v191 = v40;
    v195 = v38;
    v45 = swift_slowAlloc();
    v187 = swift_slowAlloc();
    v201 = v187;
    *v45 = 136446466;
    sub_1DA7BB52C();
    v46 = sub_1DA941614();
    v48 = v47;
    (*(v43 + 8))(v42, v44);
    v49 = sub_1DA7AE6E8(v46, v48, &v201);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;
    if (v32 <= 3u)
    {
      v98 = 0xEB0000000067616CLL;
      v99 = 0x46654D6863746163;
      v100 = 0xE400000000000000;
      v101 = 1935764835;
      if (v32 != 2)
      {
        v101 = 0x6C61636974697263;
        v100 = 0xE800000000000000;
      }

      if (v32)
      {
        v99 = 0xD000000000000013;
        v98 = 0x80000001DA950BD0;
      }

      if (v32 <= 1u)
      {
        v55 = v99;
      }

      else
      {
        v55 = v101;
      }

      if (v32 <= 1u)
      {
        v56 = v98;
      }

      else
      {
        v56 = v100;
      }
    }

    else
    {
      v50 = 0x80000001DA950B90;
      v51 = 0xD00000000000001CLL;
      v52 = 0x80000001DA950B70;
      if (v32 != 7)
      {
        v52 = 0x80000001DA950B50;
      }

      if (v32 != 6)
      {
        v51 = 0xD000000000000013;
        v50 = v52;
      }

      v53 = 0x80000001DA950BB0;
      v54 = 0xD000000000000012;
      if (v32 != 4)
      {
        v54 = 0x437472656C416F6ELL;
        v53 = 0xEE00746E65746E6FLL;
      }

      if (v32 <= 5u)
      {
        v55 = v54;
      }

      else
      {
        v55 = v51;
      }

      if (v32 <= 5u)
      {
        v56 = v53;
      }

      else
      {
        v56 = v50;
      }
    }

    v102 = sub_1DA7AE6E8(v55, v56, &v201);

    *(v45 + 14) = v102;
    _os_log_impl(&dword_1DA7A9000, v39, v191, "%{public}s Skip indexing, reason=%s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v187, -1, -1);
    MEMORY[0x1E12739F0](v45, -1, -1);

    v38 = v195;
  }

  else
  {

    (*(v43 + 8))(v42, v44);
  }

  v103 = *(v0 + 112);
  v104 = *(v0 + 16);
  v105 = *(v0 + 24);
  *(v21 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_notWaitingForResultBecauseImportantNotification) = 1;
  *(v21 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_indexSkippingReason) = v32;

  v38(v104, v105, v103);
LABEL_95:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  swift_storeEnumTagMultiPayload();

  v173 = *(v0 + 8);

  return v173();
}

uint64_t sub_1DA7BCE14(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 348) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E08, &qword_1DA958750);
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  v6 = sub_1DA940004();
  *(v5 + 72) = v6;
  *(v5 + 80) = *(v6 - 8);
  *(v5 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60B0, &unk_1DA95DFC0);
  *(v5 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60A8, &unk_1DA963DC0);
  *(v5 + 104) = swift_task_alloc();
  v7 = sub_1DA9401F4();
  *(v5 + 112) = v7;
  *(v5 + 120) = *(v7 - 8);
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA7BB824, v4, 0);
}

uint64_t sub_1DA7BD064(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DA7B7470;

  return sub_1DA7BCE14(a1, a2, a3, a4);
}

uint64_t sub_1DA7BD128()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 5);
  v3 = *(v1 + 6);
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_notification;
  v10 = (*(v3 + 24) + **(v3 + 24));
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1DA93B0FC;
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  v8 = *(v0 + 80);

  return v10(v6, v8, &v1[v4], v7, v2, v3);
}

uint64_t sub_1DA7BD274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 80) = a5;
  *(v6 + 40) = a4;
  *(v6 + 48) = a6;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  *(v6 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA7BD128, 0, 0);
}

uint64_t sub_1DA7BD318()
{
  v1 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_timerLock);
  os_unfair_lock_lock((v1 + 24));
  [*(v1 + 16) invalidate];
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;

  os_unfair_lock_unlock((v1 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v3 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_notification;
  v4 = sub_1DA9401F4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1DA7BB4D0(v0 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_logger);

  return v0;
}

uint64_t sub_1DA7BD3F8()
{
  sub_1DA7BD318();

  return swift_deallocClassInstance();
}

uint64_t sub_1DA7BD450()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_timerLock);
  os_unfair_lock_lock((v1 + 24));
  [*(v1 + 16) invalidate];
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;

  os_unfair_lock_unlock((v1 + 24));
  sub_1DA940E14();
  sub_1DA7BD6AC(v0[8], "run(_:_:completion:)", 20, 2);
  sub_1DA7BD644(v0[8]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DA7BD644(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA7BD6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_completionLock);
  os_unfair_lock_lock((v6 + 32));
  v7 = *(v6 + 16);
  v8 = *(v6 + 16);
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  if (v8)
  {
    v13 = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = v13;
    os_unfair_lock_unlock((v6 + 32));

    sub_1DA941364();
    MEMORY[0x1E1271BD0](0xD00000000000001FLL, 0x80000001DA957BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
    sub_1DA941494();
    MEMORY[0x1E1271BD0](0x27206D6F726620, 0xE700000000000000);
    v10 = sub_1DA941374();
    MEMORY[0x1E1271BD0](v10);

    MEMORY[0x1E1271BD0](39, 0xE100000000000000);
    sub_1DA7BAA9C(0, 0xE000000000000000);

    (*(v9 + 16))(a1);
    sub_1DA7B5220(sub_1DA8965EC, v9);
    return sub_1DA7B5220(sub_1DA8965EC, v9);
  }

  else
  {
    os_unfair_lock_unlock((v6 + 32));
    sub_1DA941364();
    MEMORY[0x1E1271BD0](0xD000000000000049, 0x80000001DA957B80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
    sub_1DA941494();
    MEMORY[0x1E1271BD0](0x20726F66202C27, 0xE700000000000000);
    v12 = sub_1DA941374();
    MEMORY[0x1E1271BD0](v12);

    sub_1DA7BAA9C(0, 0xE000000000000000);
  }
}

uint64_t sub_1DA7BD950()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7BD988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t, uint64_t), unsigned int a6, uint64_t a7, void (*a8)(char *), uint64_t a9, void *a10)
{
  v132 = a7;
  v133 = a8;
  v131 = a6;
  v134 = a5;
  v135 = a4;
  v117 = sub_1DA93FAF4();
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v115 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60A8, &unk_1DA963DC0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v120 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v122 = &v113 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v127 = &v113 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v119 = &v113 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60B0, &unk_1DA95DFC0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v123 = (&v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x1EEE9AC00](v22);
  v121 = &v113 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v126 = &v113 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v113 - v28;
  v30 = type metadata accessor for StepFailure(0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = (&v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v31);
  v130 = &v113 - v34;
  v35 = sub_1DA9401F4();
  v36 = *(v35 - 8);
  v128 = v35;
  v129 = v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v118 = &v113 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v113 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = &v113 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v113 - v45;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v48 = result;
    v125 = a3;
    v124 = a9;
    sub_1DA822F48(a1, v46, &qword_1ECBD4E98, &qword_1DA95D790);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v114 = v48;
      v49 = v130;
      sub_1DA7BAC68(v46, v130, type metadata accessor for StepFailure);
      sub_1DA7BACD0(v49, v33, type metadata accessor for StepFailure);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E88, &unk_1DA958C30);
        v99 = *(v98 + 48);
        v100 = *(v98 + 64);
        sub_1DA7B9FAC(v33, v139);
        sub_1DA84A0CC(v33 + v99, v123, &qword_1ECBD60B0, &unk_1DA95DFC0);
        v101 = v120;
        sub_1DA84A0CC(v33 + v100, v120, &qword_1ECBD60A8, &unk_1DA963DC0);
        v137 = 0;
        v138 = 0xE000000000000000;
        sub_1DA941364();
        v102 = sub_1DA7BAAB4();
        MEMORY[0x1E1271BD0](v102);

        MEMORY[0x1E1271BD0](0xD000000000000023, 0x80000001DA9539B0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60B8, &unk_1DA95DFD0);
        sub_1DA941494();
        MEMORY[0x1E1271BD0](39, 0xE100000000000000);
        sub_1DA84AB64(v137, v138);

        if (v125)
        {
          sub_1DA81E1BC(4);
        }

        v103 = v123;
        sub_1DA822F48(v123, v126, &qword_1ECBD60B0, &unk_1DA95DFC0);
        swift_beginAccess();
        sub_1DA93FF24();
        sub_1DA822F48(v101, v127, &qword_1ECBD60A8, &unk_1DA963DC0);
        sub_1DA93FF44();
        swift_endAccess();
        v104 = *(v98 + 48);
        v105 = *(v98 + 64);
        sub_1DA7BABAC(v139, v44);
        sub_1DA822F48(v103, &v44[v104], &qword_1ECBD60B0, &unk_1DA95DFC0);
        sub_1DA822F48(v101, &v44[v105], &qword_1ECBD60A8, &unk_1DA963DC0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v133(v44);

        sub_1DA7BA120(v44, &qword_1ECBD4E98, &qword_1DA95D790);
        sub_1DA7BA120(v101, &qword_1ECBD60A8, &unk_1DA963DC0);
        sub_1DA7BA120(v103, &qword_1ECBD60B0, &unk_1DA95DFC0);
        __swift_destroy_boxed_opaque_existential_1(v139);
        v106 = v130;
        return sub_1DA899B2C(v106);
      }

      if (EnumCaseMultiPayload != 1)
      {
        v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E88, &unk_1DA958C30);
        v108 = *(v107 + 48);
        v109 = *(v107 + 64);
        sub_1DA7B9FAC(v33, v139);
        sub_1DA84A0CC(v33 + v108, v29, &qword_1ECBD60B0, &unk_1DA95DFC0);
        v110 = v119;
        sub_1DA84A0CC(v33 + v109, v119, &qword_1ECBD60A8, &unk_1DA963DC0);
        v137 = 0;
        v138 = 0xE000000000000000;
        sub_1DA941364();
        v111 = sub_1DA7BAAB4();
        MEMORY[0x1E1271BD0](v111);

        MEMORY[0x1E1271BD0](0xD00000000000001BLL, 0x80000001DA953A00);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60B8, &unk_1DA95DFD0);
        sub_1DA941494();
        MEMORY[0x1E1271BD0](39, 0xE100000000000000);
        v112 = v135;
        sub_1DA7BAA9C(v137, v138);

        if (v125)
        {
          sub_1DA81E1BC(2);
        }

        sub_1DA822F48(v29, v126, &qword_1ECBD60B0, &unk_1DA95DFC0);
        swift_beginAccess();
        sub_1DA93FF24();
        sub_1DA822F48(v110, v127, &qword_1ECBD60A8, &unk_1DA963DC0);
        sub_1DA93FF44();
        result = swift_endAccess();
        if (!__OFADD__(v132, 1))
        {
          sub_1DA7B98DC(v131, v112, v132 + 1, v133, v124);

          sub_1DA7BA120(v110, &qword_1ECBD60A8, &unk_1DA963DC0);
          sub_1DA7BA120(v29, &qword_1ECBD60B0, &unk_1DA95DFC0);
          __swift_destroy_boxed_opaque_existential_1(v139);
          goto LABEL_30;
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60C0, &unk_1DA965C60);
      v52 = *(v51 + 64);
      v41 = v121;
      sub_1DA84A0CC(v33 + *(v51 + 48), v121, &qword_1ECBD60B0, &unk_1DA95DFC0);
      v53 = v122;
      sub_1DA84A0CC(v33 + v52, v122, &qword_1ECBD60A8, &unk_1DA963DC0);
      v139[0] = sub_1DA7BAAB4();
      v139[1] = v54;
      MEMORY[0x1E1271BD0](0x6564656563786520, 0xEA00000000002064);
      v55 = sub_1DA941854();
      MEMORY[0x1E1271BD0](v55);

      v56 = v135;
      sub_1DA7BAA9C(v139[0], v139[1]);

      if (v125)
      {
        sub_1DA81E1BC(3);
      }

      v48 = v114;
      if (qword_1EE112400 == -1)
      {
LABEL_8:
        swift_beginAccess();
        if (byte_1EE112408 == 1)
        {
          __swift_project_boxed_opaque_existential_1(a10, a10[3]);
          swift_getDynamicType();
          if (!(*(a10[4] + 8))())
          {
            v57 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_notification;
            swift_beginAccess();
            v58 = v57;
            v125 = v57;
            v59 = sub_1DA93FF84();
            swift_endAccess();
            v60 = [v59 request];

            v61 = [v60 content];
            [v61 mutableCopy];

            sub_1DA941154();
            swift_unknownObjectRelease();
            sub_1DA84B354();
            swift_dynamicCast();
            v62 = v136;
            v120 = v136;
            v139[0] = 0;
            v139[1] = 0xE000000000000000;
            sub_1DA941364();

            v139[0] = 0x1000000000000010;
            v139[1] = 0x80000001DA9539E0;
            v63 = v128;
            v64 = v129;
            v134 = *(v129 + 16);
            v65 = v118;
            v134(v118, v48 + v58, v128);
            v66 = sub_1DA9400A4();
            v67 = v48;
            v69 = v68;
            v123 = *(v64 + 8);
            (v123)(v65, v63);
            MEMORY[0x1E1271BD0](v66, v69);

            MEMORY[0x1E1271BD0](2112041, 0xE300000000000000);
            v71 = v139[0];
            v70 = v139[1];
            v72 = [v62 body];
            v73 = sub_1DA940A14();
            v75 = v74;

            v139[0] = v71;
            v139[1] = v70;

            MEMORY[0x1E1271BD0](v73, v75);

            v76 = sub_1DA940A04();

            v77 = v120;
            [v120 setBody_];

            v78 = v125;
            v134(v65, v67 + v125, v63);
            sub_1DA9400A4();
            (v123)(v65, v63);
            v79 = v78;
            swift_beginAccess();
            v80 = v77;
            v81 = sub_1DA93FF84();
            swift_endAccess();
            v82 = [v81 request];

            v83 = [v82 trigger];
            v84 = sub_1DA940A04();

            v85 = [objc_opt_self() requestWithIdentifier:v84 content:v80 trigger:v83];

            swift_beginAccess();
            v86 = sub_1DA93FF84();
            swift_endAccess();
            v87 = [v86 date];

            v88 = v115;
            sub_1DA93FAB4();

            swift_beginAccess();
            v89 = sub_1DA93FF84();
            swift_endAccess();
            v90 = [v89 sourceIdentifier];

            if (!v90)
            {
              sub_1DA940A14();
              v90 = sub_1DA940A04();
            }

            swift_beginAccess();
            v91 = sub_1DA93FF84();
            swift_endAccess();
            v92 = [v91 intentIdentifiers];

            if (!v92)
            {
              sub_1DA940BE4();
              v92 = sub_1DA940BD4();
            }

            v93 = sub_1DA93FA44();
            v94 = [objc_opt_self() notificationWithRequest:v85 date:v93 sourceIdentifier:v90 intentIdentifiers:v92];

            (*(v116 + 8))(v88, v117);
            swift_beginAccess();
            sub_1DA940064();
            swift_endAccess();
            v95 = v118;
            sub_1DA93FF04();

            swift_beginAccess();
            (*(v129 + 40))(v67 + v79, v95, v63);
            swift_endAccess();
            v56 = v135;
            v49 = v130;
            v53 = v122;
            v41 = v121;
          }
        }

        sub_1DA822F48(v41, v126, &qword_1ECBD60B0, &unk_1DA95DFC0);
        swift_beginAccess();
        sub_1DA93FF24();
        sub_1DA822F48(v53, v127, &qword_1ECBD60A8, &unk_1DA963DC0);
        sub_1DA93FF44();
        result = swift_endAccess();
        if (!__OFADD__(v132, 1))
        {
          sub_1DA7B98DC(v131, v56, v132 + 1, v133, v124);

          sub_1DA7BA120(v53, &qword_1ECBD60A8, &unk_1DA963DC0);
          sub_1DA7BA120(v41, &qword_1ECBD60B0, &unk_1DA95DFC0);
LABEL_30:
          v106 = v49;
          return sub_1DA899B2C(v106);
        }

        __break(1u);
        goto LABEL_36;
      }
    }

    else
    {
      v49 = v128;
      v53 = v129;
      (*(v129 + 32))(v40, v46, v128);
      v96 = OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_notification;
      swift_beginAccess();
      (*(v53 + 24))(v48 + v96, v40, v49);
      swift_endAccess();
      v139[0] = 0;
      v139[1] = 0xE000000000000000;
      sub_1DA941364();

      strcpy(v139, "Success for '");
      HIWORD(v139[1]) = -4864;
      v97 = sub_1DA7BAAB4();
      MEMORY[0x1E1271BD0](v97);

      MEMORY[0x1E1271BD0](11815, 0xE200000000000000);
      v56 = v135;
      sub_1DA7BAA9C(v139[0], v139[1]);

      if (v125)
      {
        sub_1DA81E1BC(0);
      }

      if (!__OFADD__(v132, 1))
      {
        sub_1DA7B98DC(v131, v56, v132 + 1, v133, v124);

        return (*(v53 + 8))(v40, v49);
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_8;
  }

  if (a3)
  {
    return sub_1DA81E1BC(1);
  }

  return result;
}

uint64_t sub_1DA7BEC80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DA7B7470;

  return sub_1DA7BD274(a1, v4, v5, v6, v8, v7);
}

uint64_t get_enum_tag_for_layout_string_s6ResultOy25UserNotificationsServices0B12NotificationV0bC4Core11StepFailureOGIegn_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DA7BED88()
{
  v13 = v0;
  v1 = sub_1DA9400E4();
  v3 = v2;
  if (qword_1EE114E00 != -1)
  {
    swift_once();
  }

  v4 = sub_1DA9405A4();
  __swift_project_value_buffer(v4, qword_1EE11AFA0);

  v5 = sub_1DA940584();
  v6 = sub_1DA940F34();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1DA7AE6E8(v1, v3, &v12);
    _os_log_impl(&dword_1DA7A9000, v5, v6, "Removing index: [%{public}s]", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E12739F0](v8, -1, -1);
    MEMORY[0x1E12739F0](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
  v9 = swift_allocObject();
  *(v0 + 24) = v9;
  *(v9 + 16) = xmmword_1DA9596E0;
  *(v9 + 32) = v1;
  *(v9 + 40) = v3;
  v10 = swift_task_alloc();
  *(v0 + 32) = v10;
  *v10 = v0;
  v10[1] = sub_1DA8915B8;

  return sub_1DA7BEF8C(0, v9, 0);
}

uint64_t sub_1DA7BEF8C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 64) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DA7BEFB0, 0, 0);
}

uint64_t sub_1DA7BEFB0()
{
  if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
  {
    v1 = *(v0 + 64);
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    v4 = [objc_allocWithZone(MEMORY[0x1E6964E78]) init];
    *(v0 + 32) = v4;
    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    v6 = swift_task_alloc();
    *(v0 + 48) = v6;
    *v6 = v0;
    v6[1] = sub_1DA7B6E28;
    v7 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000028, 0x80000001DA9532D0, sub_1DA7C00E4, v5, v7);
  }

  else
  {
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t _s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0()
{
  if (MEMORY[0x1E69A12D8])
  {
    v2 = MEMORY[0x1E69A12E8] == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || MEMORY[0x1E69A12F0] == 0)
  {
    return 0;
  }

  v25[12] = v0;
  v25[13] = v1;
  v5 = sub_1DA93FBD4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (qword_1EE111170 != -1)
  {
    v8 = swift_once();
  }

  v10 = *(qword_1EE11ADD8 + 24);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v25[-2] = v12;
  v25[-1] = &unk_1F5631418;
  MEMORY[0x1EEE9AC00](v11);
  v25[-2] = sub_1DA7BFA84;
  v25[-1] = v13;

  os_unfair_lock_lock(v10 + 4);
  sub_1DA7BFAB8(v14);
  os_unfair_lock_unlock(v10 + 4);

  MEMORY[0x1EEE9AC00](v15);
  (*(v6 + 16))(v25 - v9, v25 - v9, v5);
  v16 = (*(v6 + 88))(v25 - v9, v5);
  if (MEMORY[0x1E69A0EF0] && v16 == *MEMORY[0x1E69A0EF0])
  {
    if (qword_1EE110D90 != -1)
    {
      swift_once();
    }

    v17 = sub_1DA9405A4();
    __swift_project_value_buffer(v17, qword_1EE11AD60);
    v18 = sub_1DA940584();
    v19 = sub_1DA940F14();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_32;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Generative models restricted.";
    goto LABEL_31;
  }

  if (MEMORY[0x1E69A0F08] && v16 == *MEMORY[0x1E69A0F08])
  {
    if (qword_1EE110D90 != -1)
    {
      swift_once();
    }

    v22 = sub_1DA9405A4();
    __swift_project_value_buffer(v22, qword_1EE11AD60);
    v18 = sub_1DA940584();
    v19 = sub_1DA940F14();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_32;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Generative models unavailable.";
    goto LABEL_31;
  }

  if (MEMORY[0x1E69A1198] && v16 == *MEMORY[0x1E69A1198])
  {
    (*(v6 + 8))(v25 - v9, v5);
    return 1;
  }

  if (qword_1EE110D90 != -1)
  {
    swift_once();
  }

  v23 = sub_1DA9405A4();
  __swift_project_value_buffer(v23, qword_1EE11AD60);
  v18 = sub_1DA940584();
  v19 = sub_1DA940F14();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Received unknown generative models availability state";
LABEL_31:
    _os_log_impl(&dword_1DA7A9000, v18, v19, v21, v20, 2u);
    MEMORY[0x1E12739F0](v20, -1, -1);
  }

LABEL_32:

  v24 = *(v6 + 8);
  v24(v25 - v9, v5);
  v24(v25 - v9, v5);
  return 0;
}

uint64_t sub_1DA7BF5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7000, &qword_1DA95BF48);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v34 - v8;
  swift_beginAccess();
  v40 = a1;
  v41 = a2;
  v10 = *(a1 + 16);
  if (*(v10 + 16))
  {

    v11 = sub_1DA7BFAD4(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *(v10 + 56);
      v15 = sub_1DA93FBD4();
      v16 = v9;
      v17 = *(v15 - 8);
      (*(v17 + 16))(v16, v14 + *(v17 + 72) * v13, v15);

      v18 = (*(v17 + 56))(v16, 0, 1, v15);
      v9 = v16;
      goto LABEL_6;
    }
  }

  v15 = sub_1DA93FBD4();
  v18 = (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
LABEL_6:
  MEMORY[0x1EEE9AC00](v18);
  v19 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1DA7BFC94(v9, &v34 - v19);
  sub_1DA93FBD4();
  v20 = *(v15 - 8);
  if ((*(v20 + 48))(&v34 - v19, 1, v15) == 1)
  {
    sub_1DA7BFD04(&v34 - v19);
    v36 = sub_1DA93FC24();
    v37 = &v34;
    v21 = *(v36 - 8);
    v39 = v3;
    v22 = v21;
    MEMORY[0x1EEE9AC00](v36);
    v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = sub_1DA93FBF4();
    v34 = &v34;
    v35 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
    v26 = *(v25 - 8);
    MEMORY[0x1EEE9AC00](v25);
    v28 = &v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = v9;
    v29 = v41;

    sub_1DA93FBE4();
    sub_1DA93FC14();
    (*(v26 + 8))(v28, v25);
    v30 = v42;
    sub_1DA93FC04();
    v31 = (*(v22 + 8))(v24, v36);
    MEMORY[0x1EEE9AC00](v31);
    v32 = &v34 - v35;
    (*(v20 + 16))(&v34 - v35, v30, v15);
    (*(v20 + 56))(v32, 0, 1, v15);
    swift_beginAccess();

    sub_1DA8F0BBC(v32, v29);
    swift_endAccess();
    return sub_1DA7BFD04(v38);
  }

  else
  {
    sub_1DA7BFD04(v9);
    return (*(v20 + 32))(v42, &v34 - v19, v15);
  }
}

unint64_t sub_1DA7BFAD4(uint64_t a1)
{
  sub_1DA941764();
  v2 = *(a1 + 16);
  MEMORY[0x1E1272850](v2);
  if (v2)
  {
    v3 = a1 + 40;
    do
    {

      sub_1DA940AB4();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  v4 = sub_1DA941794();

  return sub_1DA7BFB84(a1, v4);
}

unint64_t sub_1DA7BFB84(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *(a1 + 16);
    v9 = *(v2 + 48);
    v10 = (a1 + 40);
    do
    {
      v11 = *(v9 + 8 * v5);
      if (*(v11 + 16) == v8)
      {
        if (!v8 || v11 == a1)
        {
          return v5;
        }

        v12 = (v11 + 40);
        v13 = v10;
        v14 = v8;
        while (1)
        {
          v15 = *(v12 - 1) == *(v13 - 1) && *v12 == *v13;
          if (!v15 && (sub_1DA941684() & 1) == 0)
          {
            break;
          }

          v12 += 2;
          v13 += 2;
          if (!--v14)
          {
            return v5;
          }
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1DA7BFC94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7000, &qword_1DA95BF48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA7BFD04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7000, &qword_1DA95BF48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DA7BFD6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v23 = a2;
  v21 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E90, &unk_1DA95D9E0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  if (a3)
  {
    sub_1DA7AF3EC(0, &qword_1EE114DD0, 0x1E6964E80);
    v22 = sub_1DA940BD4();
    if (a4)
    {
LABEL_3:
      v12 = sub_1DA940BD4();
      goto LABEL_6;
    }
  }

  else
  {
    v22 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  v13 = *MEMORY[0x1E696A388];
  v14 = sub_1DA940A04();
  v15 = 32;
  if ((a5 & 1) == 0)
  {
    v15 = 0;
  }

  v20 = v15;
  (*(v9 + 16))(v11, v21, v8);
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  (*(v9 + 32))(v17 + v16, v11, v8);
  aBlock[4] = sub_1DA7B6374;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7B1BFC;
  aBlock[3] = &block_descriptor_11;
  v18 = _Block_copy(aBlock);

  v19 = v22;
  [v23 indexSearchableItems:v22 deleteSearchableItemsWithIdentifiers:v12 clientState:0 protectionClass:v13 forBundleID:v14 options:v20 completionHandler:v18];
  _Block_release(v18);
}

uint64_t sub_1DA7C000C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E90, &unk_1DA95D9E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void *sub_1DA7C00F4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1DA7C0140(void *a1, uint64_t *a2)
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

_DWORD *sub_1DA7C01C4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1DA7C01E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DA7C0224()
{
  v1 = *(v0 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = swift_getAssociatedTypeWitness();
  v7 = *(sub_1DA941134() - 8);
  v8 = *(v7 + 80);
  v16 = *(v7 + 64);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v1 - 8);
  v11 = *(v10 + 80);
  v15 = *(v10 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);
  v12 = *(v6 - 8);
  if (!(*(v12 + 48))(v0 + v9, 1, v6))
  {
    (*(v12 + 8))(v0 + v9, v6);
  }

  v13 = (v9 + v16 + v11) & ~v11;
  (*(v10 + 8))(v0 + v13, v1);

  return MEMORY[0x1EEE6BDD0](v0, v13 + v15, v3 | v8 | v11 | 7);
}

uint64_t sub_1DA7C0488()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA7C0514(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA93FAF4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DA7C0580(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA93FAF4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DA7C05F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA9401F4();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA7C065C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1DA9401F4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1DA7C06E4()
{
  v1 = sub_1DA93FAF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA7C07B0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C07E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C0870()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA7C08B8()
{
  if (*(v0 + 16) >= 4uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C08F8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C0930()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D30, &qword_1DA9593C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA7C0A00@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1DA7C0A98()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C0AD0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C0B08()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA7C0B48()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DA7C0B94()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA7C0C60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_consumer;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DA7C0CBC(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = swift_unknownObjectRetain();
  return sub_1DA839270(v3, v2);
}

uint64_t sub_1DA7C0D0C()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1DA7C0D80()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C0DB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DA7C0E14(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1DA7C0E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DA9401F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1DA7C0F3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DA9401F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_1DA7C0FF4()
{
  v1 = sub_1DA93FAF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA7C10E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DA7C1134()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA7C117C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 48);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DA7C11CC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1DA7C122C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA7C127C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C12BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C12F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD57C0, &qword_1DA95BE48);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DA7C13C8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C140C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UserNotificationsVendorTransaction.TransactionType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E80, &qword_1DA958C00);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1DA7C1540(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UserNotificationsVendorTransaction.TransactionType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E80, &qword_1DA958C00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1DA7C1690()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C16D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C1728()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA7C17AC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C17E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C181C()
{

  sub_1DA8839C0(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1DA7C1860()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA7C18A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C18E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C1920()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C195C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA7C19B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C1A04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E68, &qword_1DA95D930);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA7C1A98()
{
  v1 = sub_1DA93FAF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DA7C1B2C()
{
  v1 = sub_1DA93FAF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA7C1BB4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA7C1C40()
{
  if (*(v0 + 16) >= 4uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C1C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DA93F964();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DA7C1D2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DA93F964();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DA7C1DD0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DA7C1E08()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA7C1E48()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C1EA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C1EF0()
{
  v1 = sub_1DA9401F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA7C1FCC()
{
  MEMORY[0x1E1273AD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C2004()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA7C204C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C2084()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C20BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C20F4()
{
  v1 = sub_1DA9401F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

void sub_1DA7C2254(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1DA8C1CC8(v1);
}

id sub_1DA7C228C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA8C12E8();
  *a1 = result;
  return result;
}

uint64_t sub_1DA7C22BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6678, &qword_1DA95FC48);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DA7C2334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6678, &qword_1DA95FC48);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DA7C23B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66D8, &unk_1DA95FE60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA7C2480()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66D8, &unk_1DA95FE60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DA7C256C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C25A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66D8, &unk_1DA95FE60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA7C2638()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C2670()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1DA7C26D8()
{
  v1 = type metadata accessor for DismissalSyncBulletin(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 32);
  v6 = sub_1DA93FAF4();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DA7C285C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1DA93FAF4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1DA7C298C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1DA93FAF4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1DA7C2ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DA93FAF4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DA7C2B68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DA93FAF4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DA7C2C0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C2C44()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DA7C2CA4()
{
  v1 = sub_1DA93FAF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1DA7C2D90()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DA7C2DE8()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DA7C2E38()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DA7C2E90@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1DA7C2F48()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C2F88()
{
  MEMORY[0x1E1273AD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C2FD0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C3008()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C3084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DA93FAF4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DA7C3130(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DA93FAF4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DA7C31D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CloudAction(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DA7C3280(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CloudAction(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DA7C33B4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1DA7C33F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

uint64_t sub_1DA7C344C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA8E4CB8(1);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DA7C34A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA7C3518()
{
  MEMORY[0x1E1273AD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C3558()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C35A8()
{

  return swift_deallocClassInstance();
}

id sub_1DA7C35E0@<X0>(uint64_t *a1@<X8>)
{
  result = XPCSettingsProvider.systemSettings.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DA7C363C()
{
  v1 = sub_1DA9407A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 40);
  if (v5 != 255)
  {
    sub_1DA8EE83C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v5);
  }

  v6 = (v3 + 56) & ~v3;

  (*(v2 + 8))(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1DA7C372C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C3768()
{
  MEMORY[0x1E1273AD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C37A0()
{
  v1 = type metadata accessor for DismissalSyncBulletin(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 32);
  v6 = sub_1DA93FAF4();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1DA7C3930()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA7C3978@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DA7C39D4(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1DA7C3A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DA7C3AF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DA7C3BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DA7C3C60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DA7C3D10()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA7C3D50()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA7C3D88()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DA7C3DD0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DA7C3E30()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C3E68()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA7C3EB0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DA7C3F04()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA7C3F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1DA93FB24();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1DA7C4034(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1DA93FB24();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1DA7C4130()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C4168()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C41A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C41F0()
{
  MEMORY[0x1E1273AD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C4234()
{
  v1 = sub_1DA9407A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DA7C430C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DA93FAF4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DA7C43B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DA93FAF4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DA7C445C()
{
  v1 = sub_1DA93FAF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1DA9407A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1DA7C45C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C4624()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA7C465C()
{
  sub_1DA92A328(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1DA7C46A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA7C46F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA7C4730()
{
  v1 = sub_1DA9401F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA7C47F4()
{
  v1 = sub_1DA9401F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for NotificationPipelineRequestLogger(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 9) & ~v7;
  v12 = v3 | v7;
  v9 = (((((*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + 8);
  v10(v0 + v4, v1);

  v10(v0 + v8, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v12 | 7);
}

uint64_t sub_1DA7C49A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C49E0()
{
  v1 = *(type metadata accessor for NotificationPipelineRequestLogger(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for StepFailure(0) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_1DA9401F4();
  (*(*(v9 - 8) + 8))(v0 + v3, v9);

  v10 = v0 + v7;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = &qword_1ECBD60C0;
      v13 = &unk_1DA965C60;
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_10;
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + v7));
  v12 = &qword_1ECBD4E88;
  v13 = &unk_1DA958C30;
LABEL_6:
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  v15 = *(v14 + 48);
  v16 = sub_1DA9402D4();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v10 + v15, 1, v16))
  {
    (*(v17 + 8))(v10 + v15, v16);
  }

  v18 = *(v14 + 64);
  v19 = sub_1DA9402E4();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v10 + v18, 1, v19))
  {
    (*(v20 + 8))(v10 + v18, v19);
  }

LABEL_10:

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v2 | v6 | 7);
}

uint64_t sub_1DA7C4C94()
{
  v1 = *(type metadata accessor for NotificationPipelineRequestLogger(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1DA9401F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v8 = *(v6 + 80);
  v9 = (v4 + v8 + 8) & ~v8;
  v10 = *(v6 + 64);
  v11 = v2 | v8;
  v7(v0 + v3, v5);

  v7(v0 + v9, v5);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1DA7C4DC0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C4DF8()
{
  v1 = *(type metadata accessor for NotificationPipelineRequestLogger(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1DA9401F4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1DA7C4EF0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(type metadata accessor for NotificationPipelineRequestLogger(0) - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);

  v8 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v16 = sub_1DA9401F4();
    (*(*(v16 - 8) + 8))(v0 + v3, v16);
    goto LABEL_14;
  }

  type metadata accessor for StepFailure(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v30 = v7;
      __swift_destroy_boxed_opaque_existential_1((v0 + v3));
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E88, &unk_1DA958C30);
      v24 = *(v23 + 48);
      v25 = sub_1DA9402D4();
      v26 = *(v25 - 8);
      if (!(*(v26 + 48))(v8 + v24, 1, v25))
      {
        (*(v26 + 8))(v8 + v24, v25);
      }

      v13 = *(v23 + 64);
      v14 = sub_1DA9402E4();
      v15 = *(v14 - 8);
      v7 = v30;
      if (!(*(v15 + 48))(v8 + v13, 1, v14))
      {
        goto LABEL_13;
      }

      break;
    case 1:
      v29 = v4;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60C0, &unk_1DA965C60);
      v18 = *(v17 + 48);
      v19 = sub_1DA9402D4();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v8 + v18, 1, v19))
      {
        (*(v20 + 8))(v8 + v18, v19);
      }

      v13 = *(v17 + 64);
      v14 = sub_1DA9402E4();
      v15 = *(v14 - 8);
      v4 = v29;
      if (!(*(v15 + 48))(v8 + v13, 1, v14))
      {
        goto LABEL_13;
      }

      break;
    case 0:
      __swift_destroy_boxed_opaque_existential_1((v0 + v3));
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E88, &unk_1DA958C30);
      v10 = *(v28 + 48);
      v11 = sub_1DA9402D4();
      v12 = *(v11 - 8);
      if (!(*(v12 + 48))(v8 + v10, 1, v11))
      {
        (*(v12 + 8))(v8 + v10, v11);
      }

      v13 = *(v28 + 64);
      v14 = sub_1DA9402E4();
      v15 = *(v14 - 8);
      if (!(*(v15 + 48))(v8 + v13, 1, v14))
      {
LABEL_13:
        (*(v15 + 8))(v8 + v13, v14);
      }

      break;
  }

LABEL_14:
  v21 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6;

  v22 = sub_1DA9401F4();
  (*(*(v22 - 8) + 8))(v0 + v21, v22);

  return MEMORY[0x1EEE6BDD0](v0, v21 + v7, v2 | v6 | 7);
}

uint64_t sub_1DA7C544C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C549C()
{
  MEMORY[0x1E1273AD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C54D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C5510()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA7C556C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C55A4()
{
  v1 = sub_1DA9407A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  sub_1DA92A328(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA7C5684()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C56BC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

UNCPushRegistration *UNCDictionaryToUNCPushRegistration_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[UNCPushRegistration alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

void sub_1DA7C7C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCRPairedVehicleManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCRPairedVehicleManagerClass_softClass;
  v7 = getCRPairedVehicleManagerClass_softClass;
  if (!getCRPairedVehicleManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCRPairedVehicleManagerClass_block_invoke;
    v3[3] = &unk_1E85D6DE8;
    v3[4] = &v4;
    __getCRPairedVehicleManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DA7C7D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getCRPairedVehicleManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CarKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E85D6E08;
    v6 = 0;
    CarKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CarKitLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CRPairedVehicleManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCRPairedVehicleManagerClass_block_invoke_cold_1();
  }

  getCRPairedVehicleManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CarKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1DA7CD774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void UNCPowerLogUserNotificationRequestEvent(__CFString *a1, unsigned int a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = &stru_1F563BF08;
  if (a1)
  {
    v2 = a1;
  }

  v8[1] = @"PostType";
  v9[0] = v2;
  v8[0] = @"BundleIdentifier";
  v3 = MEMORY[0x1E696AD98];
  v4 = a2;
  v5 = a1;
  v6 = [v3 numberWithInteger:v4];
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  PLLogRegisteredEvent();
}

void UNCPowerLogUserNotificationDefaultTriggerEvent(__CFString *a1, unsigned int a2, uint64_t a3)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v4 = &stru_1F563BF08;
  if (a1)
  {
    v4 = a1;
  }

  v12[0] = v4;
  v11[0] = @"BundleIdentifier";
  v11[1] = @"TriggerType";
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  v7 = a1;
  v8 = [v5 numberWithInteger:v6];
  v12[1] = v8;
  v11[2] = @"UIShown";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v12[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  PLLogRegisteredEvent();
}

void UNCPowerLogUserNotificationTriggerEvent(__CFString *a1, unsigned int a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = &stru_1F563BF08;
  if (a1)
  {
    v2 = a1;
  }

  v8[1] = @"TriggerType";
  v9[0] = v2;
  v8[0] = @"BundleIdentifier";
  v3 = MEMORY[0x1E696AD98];
  v4 = a2;
  v5 = a1;
  v6 = [v3 numberWithInteger:v4];
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  PLLogRegisteredEvent();
}

void UNCPowerLogUserNotificationExtendedTriggerEvent(void *a1, unsigned int a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a4;
  v13 = a5;
  v14 = MEMORY[0x1E695DF90];
  v15 = &stru_1F563BF08;
  if (v11)
  {
    v15 = v11;
  }

  v27[0] = v15;
  v26[0] = @"BundleIdentifier";
  v26[1] = @"TriggerType";
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v27[1] = v16;
  v26[2] = @"Waking";
  v17 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v27[2] = v17;
  v26[3] = @"UIShown";
  v18 = [MEMORY[0x1E696AD98] numberWithBool:a6];
  v27[3] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];
  v20 = [v14 dictionaryWithDictionary:v19];

  if (v12 && v13)
  {
    v21 = MEMORY[0x1E696AD98];
    [v12 timeIntervalSinceReferenceDate];
    v22 = [v21 numberWithDouble:?];
    [v20 setObject:v22 forKey:@"NSEStartTime"];

    v23 = MEMORY[0x1E696AD98];
    [v13 timeIntervalSinceReferenceDate];
    v24 = [v23 numberWithDouble:?];
    [v20 setObject:v24 forKey:@"NSEEndTime"];
  }

  v25 = [v20 copy];
  PLLogRegisteredEvent();
}

void *__getSpotlightDaemonClientRegisterSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!SpotlightReceiverLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SpotlightReceiverLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E85D6F00;
    v7 = 0;
    SpotlightReceiverLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = SpotlightReceiverLibraryCore_frameworkLibrary;
    if (SpotlightReceiverLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = SpotlightReceiverLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "SpotlightDaemonClientRegister");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSpotlightDaemonClientRegisterSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}