uint64_t sub_22B4CF8C8()
{
  if (qword_28141F3C8 != -1)
  {
    swift_once();
  }

  v1 = sub_22B7DB2B8();
  sub_22B4CFA74(v1, qword_281422698);
  v2 = v0;
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBC78();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_22B4CFAAC(*&v2[OBJC_IVAR___IMDIncomingClientConnectionListener_machServiceName], *&v2[OBJC_IVAR___IMDIncomingClientConnectionListener_machServiceName + 8], &v9);
    _os_log_impl(&dword_22B4CC000, v3, v4, "Incoming XPC connection for %s", v5, 0xCu);
    sub_22B4CFB78(v6);
    MEMORY[0x231898D60](v6, -1, -1);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  MEMORY[0x28223BE20](v7);
  sub_22B7DACB8();
  return v10;
}

uint64_t sub_22B4CFA74(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_22B4CFAAC(void *a1, IMDScheduledMessageCoordinator *a2, uint64_t *a3)
{

  v6 = sub_22B4D1A34(&v18, 0, 0, 1, a1, a2);
  v14 = v18;
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v18 = a1;
    v19 = a2;
    v16 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = v6;
  a2, v7, v8, v9, v10, v11, v12, v13, v18, v19;
  ObjectType = swift_getObjectType();
  v18 = v15;
  v16 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_22B4D1F68(&v18, v16);
    *a3 = v16 + 32;
  }

LABEL_4:
  sub_22B4CFB78(&v18);
  return v14;
}

uint64_t sub_22B4CFB78(void *a1)
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

void sub_22B4CFBC4(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  if (sub_22B4CFDA4(a3))
  {
    sub_22B4D01E8(a3, a1);
    v8 = 1;
  }

  else
  {
    if (qword_28141F3C8 != -1)
    {
      swift_once();
    }

    v9 = sub_22B7DB2B8();
    sub_22B4CFA74(v9, qword_281422698);
    v10 = a3;
    v11 = a2;
    v12 = sub_22B7DB298();
    v13 = sub_22B7DBC98();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v28 = v15;
      *v14 = 67109378;
      *(v14 + 4) = [v10 processIdentifier];

      *(v14 + 8) = 2080;
      v16 = MEMORY[0x2318952A0](*&v11[OBJC_IVAR___IMDIncomingClientConnectionListener_allowedEntitlements], MEMORY[0x277D837D0]);
      v18 = v17;
      v19 = sub_22B4CFAAC(v16, v17, &v28);
      v18, v20, v21, v22, v23, v24, v25, v26, v27, v28;
      *(v14 + 10) = v19;
      _os_log_impl(&dword_22B4CC000, v12, v13, "Client %d does not have any of allowed entitlements %s, invalidating connection", v14, 0x12u);
      sub_22B4CFB78(v15);
      MEMORY[0x231898D60](v15, -1, -1);
      MEMORY[0x231898D60](v14, -1, -1);
    }

    else
    {
    }

    v8 = 0;
  }

  *a4 = v8;
}

uint64_t sub_22B4CFDA4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___IMDIncomingClientConnectionListener_allowedEntitlements);
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = 0;
    for (i = (v2 + 40); ; i += 2)
    {
      if (v5 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      v8 = *(i - 1);
      v7 = *i;

      v9 = sub_22B7DB678();
      v10 = [a1 valueForEntitlement_];

      if (v10)
      {
        sub_22B7DC118();
        swift_unknownObjectRelease();
      }

      else
      {
        v63 = 0u;
        v64 = 0u;
      }

      v65[0] = v63;
      v65[1] = v64;
      if (*(&v64 + 1))
      {
        sub_22B4D01A0(0, &qword_28141EFE0, 0x277CCABB0);
        if (swift_dynamicCast())
        {
          v25 = v61;
          if ([v61 BOOLValue])
          {
            if (qword_28141F3C8 != -1)
            {
              swift_once();
            }

            v31 = sub_22B7DB2B8();
            sub_22B4CFA74(v31, qword_281422698);

            v32 = a1;
            v33 = sub_22B7DB298();
            v34 = sub_22B7DBC78();
            v7, v35, v36, v37, v38, v39, v40, v41, v59, v61;
            if (os_log_type_enabled(v33, v34))
            {
              v49 = swift_slowAlloc();
              v50 = swift_slowAlloc();
              *&v65[0] = v50;
              *v49 = 67109378;
              *(v49 + 4) = [v32 processIdentifier];

              *(v49 + 8) = 2080;
              v51 = sub_22B4CFAAC(v8, v7, v65);
              v7, v52, v53, v54, v55, v56, v57, v58, v60, v62;
              *(v49 + 10) = v51;
              _os_log_impl(&dword_22B4CC000, v33, v34, "Client %d has entitlement %s", v49, 0x12u);
              sub_22B4CFB78(v50);
              MEMORY[0x231898D60](v50, -1, -1);
              MEMORY[0x231898D60](v49, -1, -1);
            }

            else
            {
              v7, v42, v43, v44, v45, v46, v47, v48, v60, v62;
            }

            return 1;
          }
        }

        v7, v18, v19, v20, v21, v22, v23, v24, v59, v61;
      }

      else
      {
        v7, v11, v12, v13, v14, v15, v16, v17, v59, v61;
        sub_22B4D0138(v65);
      }

      if (v3 == ++v5)
      {
        return 0;
      }
    }
  }

  if (qword_28141F3C8 != -1)
  {
LABEL_26:
    swift_once();
  }

  v27 = sub_22B7DB2B8();
  sub_22B4CFA74(v27, qword_281422698);
  v28 = sub_22B7DB298();
  v29 = sub_22B7DBC78();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_22B4CC000, v28, v29, "No required entitlements have been specified, allowing all clients", v30, 2u);
    MEMORY[0x231898D60](v30, -1, -1);
  }

  return 1;
}

uint64_t sub_22B4D0138(uint64_t a1)
{
  v2 = sub_22B6F0AD4(&unk_27D8CCDC0, &qword_22B7F9580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B4D01A0(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_22B4D01E8(void *a1, uint64_t a2)
{
  if (qword_28141F3C8 != -1)
  {
    swift_once();
  }

  v5 = sub_22B7DB2B8();
  v6 = sub_22B4CFA74(v5, qword_281422698);
  v7 = v2;
  v8 = a1;
  v43 = v6;
  v9 = sub_22B7DB298();
  v10 = sub_22B7DBC78();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_22B4CFAAC(*&v7[OBJC_IVAR___IMDIncomingClientConnectionListener_machServiceName], *&v7[OBJC_IVAR___IMDIncomingClientConnectionListener_machServiceName + 8], &aBlock);
    *(v11 + 12) = 1024;
    *(v11 + 14) = [v8 processIdentifier];

    _os_log_impl(&dword_22B4CC000, v9, v10, "Configuring XPC connection for %s from PID %d", v11, 0x12u);
    sub_22B4CFB78(v12);
    MEMORY[0x231898D60](v12, -1, -1);
    MEMORY[0x231898D60](v11, -1, -1);
  }

  else
  {
  }

  type metadata accessor for XPCClientConnectionRouteProvider();
  swift_allocObject();
  v13 = v8;
  v14 = sub_22B4D084C(v13);

  v15 = *&v7[OBJC_IVAR___IMDIncomingClientConnectionListener_requestHandlers];
  v16 = *(a2 + 16);

  v17 = sub_22B4D0D08(v14, 0, v15, v16);
  v15, v18, v19, v20, v21, v22, v23, v24, v43, v44;
  [v13 _setQueue_];
  sub_22B4D01A0(0, &qword_28141F278, 0x277CCAE90);
  v25 = sub_22B7DBCD8();
  [v13 setExportedInterface_];

  v26 = IMGetDaemonProtocol();
  v27 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  v49 = sub_22B4D1588;
  v50 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_22B4D1BA8;
  v48 = &unk_283F1CC38;
  v28 = _Block_copy(&aBlock);

  v29 = [v27 initWithProtocol:v26 forwardingHandler:v28];

  _Block_release(v28);

  [v13 setExportedObject_];

  v30 = sub_22B7DBCE8();
  [v13 setRemoteObjectInterface_];

  v31 = swift_allocObject();
  *(v31 + 16) = v13;
  v49 = sub_22B720E6C;
  v50 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_22B4D22C0;
  v48 = &unk_283F1CC88;
  v32 = _Block_copy(&aBlock);
  v33 = v13;

  [v33 setInterruptionHandler_];
  _Block_release(v32);
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v17;
  v34[4] = v7;
  v49 = sub_22B720E74;
  v50 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_22B4D22C0;
  v48 = &unk_283F1CCD8;
  v35 = _Block_copy(&aBlock);
  v36 = v7;
  v37 = v33;

  [v37 setInvalidationHandler_];
  _Block_release(v35);

  MEMORY[0x231895260](v38);
  if (*((*(a2 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22B7DB938();
  }

  sub_22B7DB968();
  [v37 resume];
  v39 = v37;
  v40 = sub_22B7DB298();
  v41 = sub_22B7DBC78();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 67109120;
    *(v42 + 4) = [v39 processIdentifier];

    _os_log_impl(&dword_22B4CC000, v40, v41, "Resumed connection for PID %d", v42, 8u);
    MEMORY[0x231898D60](v42, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_22B4D07CC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4D0804()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4D084C(void *a1)
{
  v3 = sub_22B7DBD48();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_22B7DBD38();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_22B7DB398();
  MEMORY[0x28223BE20](v5 - 8);
  sub_22B6F0AD4(&qword_27D8CD8A8, qword_22B7F9DA8);
  v6 = a1;
  sub_22B7DACD8();
  sub_22B7DACE8();
  MEMORY[0x231894670](&type metadata for XPCClientConnectionRouteProvider.State);
  *(v1 + 16) = sub_22B7DACC8();
  return v1;
}

uint64_t sub_22B4D0A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v24 = a4;
  v25 = a3;
  v11 = sub_22B7DBD48();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_22B7DBD38();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_22B7DB398();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_22B7DA9A8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[3] = a5(0);
  v36[4] = a6;
  v36[0] = a1;
  type metadata accessor for ClientConnection();
  v18 = swift_allocObject();
  sub_22B4D0DE8(v36, v30);
  sub_22B7DA998();
  v19 = sub_22B7DA978();
  v21 = v20;
  (*(v15 + 8))(v17, v14);
  v31 = a2;
  v32 = v19;
  v33 = v21;
  v34 = v24;
  v35 = MEMORY[0x277D84F90];
  sub_22B6F0AD4(&qword_27D8CEC08, &qword_22B7FB430);
  sub_22B4D0E4C(v30, v29);
  sub_22B7DACD8();
  sub_22B7DACE8();
  MEMORY[0x231894670](&type metadata for ClientConnection.State);
  *(v18 + 16) = sub_22B7DACC8();
  v27 = v25;
  v28 = v18;
  sub_22B7DACB8();
  sub_22B4D1FC4(v30);
  sub_22B4CFB78(v36);
  return v18;
}

void *sub_22B4D0D3C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B4D0FD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22B4D0D64(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_22B6F0AD4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22B4D0DE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 sub_22B4D0EA8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

void sub_22B4D0EC4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = *(a2 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v24 = MEMORY[0x277D84F90];
    sub_22B4D0D3C(0, v9, 0);
    v10 = v24;
    v12 = (a2 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v15 = *(*v12 + 40);

      v17 = v15(v16, v13, v14);
      v23 = v10;
      v19 = v10[2];
      v18 = v10[3];
      if (v19 >= v18 >> 1)
      {
        v21 = v17;
        sub_22B4D0D3C((v18 > 1), v19 + 1, 1);
        v17 = v21;
        v10 = v23;
      }

      v10[2] = v19 + 1;
      v20 = &v10[2 * v19];
      v20[4] = v17;
      v20[5] = v14;
      v12 += 2;
      --v9;
    }

    while (v9);
  }

  *(a1 + 72), a2, a3, a4, a5, a6, a7, a8, v22, v23;
  *(a1 + 72) = v10;
}

void *sub_22B4D0FD8(void *result, int64_t a2, char a3, void *a4)
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
    sub_22B6F0AD4(&qword_27D8CF930, &qword_22B7FD668);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    sub_22B6F0AD4(&qword_27D8CF938, &qword_22B7FD670);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22B4D1110(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22B6FB8C4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22B4D1164(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B4D11AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void IMDSynchronouslyPerformBlockOnMainQueueWithDependency(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x277D85CD0];
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  v7[0] = 0;
  v7[1] = 0;
  pthread_main_thread_np();
  pthread_dependency_init_np();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22B4D2278;
  v4[3] = &unk_278707398;
  v5 = v1;
  v6 = v7;
  v3 = v1;
  dispatch_async(v2, v4);

  pthread_dependency_wait_np();
}

uint64_t sub_22B4D1660(id *a1)
{
  v2 = [*a1 remoteObjectProxy];
  sub_22B7DC118();
  swift_unknownObjectRelease();
  sub_22B6F0AD4(&qword_27D8CD8A0, &unk_22B7F9D98);
  return swift_dynamicCast();
}

void sub_22B4D1700(void *a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v11 = a3[2](a2, a3);
  membershipObserver = v11->membershipObserver;
  v13 = -*v11->messageStore;
  v14 = -1;
  while (v13 + v14 != -1)
  {
    if (++v14 >= *v11->messageStore)
    {
      __break(1u);
      return;
    }

    v15 = membershipObserver + 2;
    v16 = *membershipObserver;
    v17 = a3[4];

    v18 = v17(a2, a3);
    MEMORY[0x28223BE20](v18);
    sub_22B7DACB8();

    v16, v19, v20, v21, v22, v23, v24, v25, v27, v28;
    membershipObserver = v15;
    if ((v33 & 1) == 0)
    {
      v11, v4, v5, v6, v7, v8, v9, v10, v29, a1;
      return;
    }
  }

  v11, v4, v5, v6, v7, v8, v9, v10, v29, a1;
  v26 = a3[1];
  if ((v26(a2, a3) & ~v31) != 0)
  {
    v26(a2, a3);
  }
}

void *sub_22B4D18B8(uint64_t a1, unint64_t a2)
{
  v3 = sub_22B4D1904(a1, a2);
  sub_22B4D1E7C(&unk_283F1B5A8);
  return v3;
}

void *sub_22B4D1904(uint64_t a1, unint64_t a2)
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

  v6 = sub_22B4D1E08(v5, 0);
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

  result = sub_22B7DC328();
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
        v10 = sub_22B7DB7E8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22B4D1E08(v10, 0);
        result = sub_22B7DC2A8();
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

unint64_t sub_22B4D1A34(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22B4D18B8(a5, a6);
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
    result = sub_22B7DC328();
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

uint64_t sub_22B4D1B40()
{
  sub_22B6F0AD4(&qword_27D8CD8A0, &unk_22B7F9D98);
  sub_22B7DACB8();
  return v1;
}

uint64_t sub_22B4D1BA8(uint64_t a1, uint64_t a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  v4(a2, sub_22B4D30EC, v6);
}

uint64_t sub_22B4D1C4C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_22B4D1C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_opt_self() currentConnection];
  if (v7)
  {
    v8 = v7;
    [v7 auditToken];
    v11 = v14;
    v12 = aBlock;
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = a1;
  *(v9 + 32) = v12;
  *(v9 + 48) = v11;
  *(v9 + 64) = a2;
  *(v9 + 72) = a3;
  v15 = sub_22B4D2304;
  v16 = v9;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v14 = sub_22B4D22C0;
  *(&v14 + 1) = &unk_283F20A60;
  v10 = _Block_copy(&aBlock);

  IMDSynchronouslyPerformBlockOnMainQueueWithDependency(v10);
  _Block_release(v10);
}

uint64_t sub_22B4D1DC8()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

void *sub_22B4D1E08(uint64_t a1, uint64_t a2)
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

  sub_22B6F0AD4(&qword_27D8CD680, &unk_22B7F9780);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_22B4D1E7C(IMDScheduledMessageCoordinator *result)
{
  v2 = *result->messageStore;
  v3 = *v1;
  v4 = *(*v1)->messageStore;
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *v3->chatRegistry >> 1)
  {
    if (*result->messageStore)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v26 = v4 + v2;
  }

  else
  {
    v26 = v4;
  }

  v3 = sub_22B7024C0(isUniquelyReferenced_nonNull_native, v26, 1, v3, v11, v12, v13, v14);
  if (!*result->messageStore)
  {
LABEL_13:
    result, v8, v9, v10, v11, v12, v13, v14, v27, v28;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v15 = *v3->messageStore;
  if ((*v3->chatRegistry >> 1) - v15 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3->queue[v15], result->queue, v2);
  result, v16, v17, v18, v19, v20, v21, v22, v27, v28;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v23 = *v3->messageStore;
  v24 = __OFADD__(v23, v2);
  v25 = v23 + v2;
  if (!v24)
  {
    *v3->messageStore = v25;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_22B4D1F68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22B4D2018(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2028(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2038(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2048(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2058(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2068(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2098(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D20A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D20B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D20C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D20D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D20F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2148(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2198(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D21A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D21B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D21C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D21D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D21F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2208(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2218(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2228(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2238(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2248(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2258(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2278(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  return MEMORY[0x282204D30](v2, 0);
}

uint64_t sub_22B4D22C0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_22B4D2318(uint64_t a1, const char *a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, void (*a7)(unint64_t *))
{
  sub_22B7DACB8();
  v12 = v112;
  v11 = v113;
  v118 = 0;
  v119 = MEMORY[0x277D84F90];
  v117 = 0;
  v13 = swift_allocObject();
  strcpy((v13 + 16), "uninitialized");
  *(v13 + 30) = -4864;
  v110 = v12;
  v111 = a2;
  sub_22B7DACB8();
  v14 = v119;
  v15 = *v119->messageStore;
  if (v15)
  {
    v106 = a4;
    v107 = a5;
    v103 = HIDWORD(a4);
    v104 = HIDWORD(a3);
    v102 = HIDWORD(a5);
    swift_beginAccess();
    v90 = v119;
    membershipObserver = v119->membershipObserver;
    v17 = &off_278709000;
    v105 = a3;
    v18 = a2;
    v94 = v11;
    do
    {
      v19 = *(membershipObserver - 1);
      v20 = *membershipObserver;
      ObjectType = swift_getObjectType();
      if ([swift_unknownObjectRetain() v17[438]])
      {
        v22 = v118;
        if ((*(v20 + 24))(v118, v18, ObjectType, v20))
        {
          v23 = v117;
          v24 = objc_allocWithZone(IMDClientRequestContext);
          v25 = sub_22B7DB678();
          v112 = __PAIR64__(v104, v105);
          v113 = __PAIR64__(v103, v106);
          v114 = v107;
          v115 = v102;
          v116 = a6;
          v26 = [v24 initWithListenerID:v25 auditToken:&v112 capabilities:v22 replyProxy:v23];

          v27 = objc_opt_self();
          [v27 setCurrentContext_];
          v116 = ObjectType;
          v112 = v19;
          swift_unknownObjectRetain();
          a7(&v112);
          sub_22B4CFB78(&v112);
          [v27 setCurrentContext_];
          swift_unknownObjectRelease();

          v18 = v111;
        }

        else
        {
          if (qword_28141F3C8 != -1)
          {
            swift_once();
          }

          v28 = sub_22B7DB2B8();
          sub_22B4CFA74(v28, qword_281422698);
          swift_unknownObjectRetain();

          v29 = sub_22B7DB298();
          v30 = sub_22B7DBCB8();
          swift_unknownObjectRelease();
          v11, v31, v32, v33, v34, v35, v36, v37, v90, v94;
          if (os_log_type_enabled(v29, v30))
          {
            v100 = v30;
            v38 = swift_slowAlloc();
            v101 = swift_slowAlloc();
            v112 = v101;
            *v38 = 136315906;
            log = v29;
            v39 = NSStringFromSelector(v18);
            v98 = ObjectType;
            v40 = sub_22B7DB6A8();
            v42 = v41;

            v18 = v111;
            v43 = sub_22B4CFAAC(v40, v42, &v112);
            v42, v44, v45, v46, v47, v48, v49, v50, v90, v94;
            *(v38 + 4) = v43;
            *(v38 + 12) = 2080;
            *(v38 + 14) = sub_22B4CFAAC(v110, v11, &v112);
            *(v38 + 22) = 2080;
            v51 = IMStringFromClientCapabilities();
            v52 = sub_22B7DB6A8();
            v54 = v53;

            v55 = sub_22B4CFAAC(v52, v54, &v112);
            v54, v56, v57, v58, v59, v60, v61, v62, v91, v95;
            *(v38 + 24) = v55;
            *(v38 + 32) = 2080;
            (*(v20 + 8))(v98, v20);
            v63 = IMStringFromClientCapabilities();
            v64 = sub_22B7DB6A8();
            v66 = v65;

            v67 = sub_22B4CFAAC(v64, v66, &v112);
            v66, v68, v69, v70, v71, v72, v73, v74, v92, v96;
            *(v38 + 34) = v67;
            _os_log_impl(&dword_22B4CC000, log, v100, "Rejecting %s for client %s as it has insufficient capabilities %s, needs %s", v38, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x231898D60](v101, -1, -1);
            MEMORY[0x231898D60](v38, -1, -1);
            swift_unknownObjectRelease();

            v11 = v94;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        v17 = &off_278709000;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      membershipObserver += 16;
      --v15;
    }

    while (v15);

    v14 = v90;
  }

  else
  {
  }

  v11, v75, v76, v77, v78, v79, v80, v81, v90, v94;
  v14, v82, v83, v84, v85, v86, v87, v88, v93, v97;
  return swift_unknownObjectRelease();
}

uint64_t sub_22B4D288C(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8, vars0, vars8;

  return MEMORY[0x2821FE8E8](v8, 32, 7);
}

uint64_t sub_22B4D28C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_22B4D28D0(void *a1, uint64_t a2, void *a3, IMDScheduledMessageCoordinator *a4, const char *a5, IMDScheduledMessageCoordinator **a6, void *a7, uint64_t *a8)
{
  v14 = a1[3];
  v15 = a1[4];
  sub_22B4D2BCC(a1, v14);
  v16 = (*(v15 + 8))(v14, v15);
  v18 = v17;
  swift_beginAccess();
  v19 = *(a2 + 24);
  *(a2 + 16) = v16;
  *(a2 + 24) = v18;
  v19, v20, v21, v22, v23, v24, v25, v26, v75, a3;
  if (qword_28141F3C8 != -1)
  {
    swift_once();
  }

  v27 = sub_22B7DB2B8();
  sub_22B4CFA74(v27, qword_281422698);

  v28 = sub_22B7DB298();
  v29 = sub_22B7DBC78();
  a4, v30, v31, v32, v33, v34, v35, v36, v76, v81;

  if (os_log_type_enabled(v28, v29))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v85 = v38;
    *v37 = 136315650;
    swift_beginAccess();
    v78 = a6;
    v39 = a8;
    v40 = a7;
    v41 = *(a2 + 16);
    v42 = *(a2 + 24);

    v43 = sub_22B4CFAAC(v41, v42, &v85);
    v42, v44, v45, v46, v47, v48, v49, v50, v78, v82;
    *(v37 + 4) = v43;
    *(v37 + 12) = 2080;
    *(v37 + 14) = sub_22B4CFAAC(v83, a4, &v85);
    *(v37 + 22) = 2080;
    v51 = NSStringFromSelector(a5);
    v52 = sub_22B7DB6A8();
    v54 = v53;

    v55 = v52;
    a7 = v40;
    a8 = v39;
    a6 = v79;
    v56 = sub_22B4CFAAC(v55, v54, &v85);
    v54, v57, v58, v59, v60, v61, v62, v63, v79, v83;
    *(v37 + 24) = v56;
    _os_log_impl(&dword_22B4CC000, v28, v29, "Receiving message from client with route: %s id: %s selector: %s", v37, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v38, -1, -1);
    MEMORY[0x231898D60](v37, -1, -1);
  }

  v64 = *a6;
  *a6 = a1[9];

  v64, v65, v66, v67, v68, v69, v70, v71, v77, v82;
  *a7 = a1[5];
  v72 = a1[3];
  v73 = a1[4];
  sub_22B4D2BCC(a1, v72);
  *a8 = (*(v73 + 24))(v72, v73);
  return swift_unknownObjectRelease();
}

void *sub_22B4D2BCC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22B4D2C10()
{
  sub_22B7DACB8();
  v0 = sub_22B7DC4E8();
  v2 = v1;
  MEMORY[0x231895140](v0);
  v2, v3, v4, v5, v6, v7, v8, v9, v11, v12;
  return 0x203A444950;
}

id sub_22B4D2CA8@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 processIdentifier];
  *a2 = result;
  return result;
}

void sub_22B4D2DD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[7];

  v10, v11, v12, v13, v14, v15, v16, v17, v27, v29;
  a1[6] = a2;
  a1[7] = a3;
  a1[5] = a4;
  v18 = a1[8];
  if (a5)
  {
    v19 = a5;
  }

  else
  {

    v19 = v18;
  }

  v18, v20, v21, v22, v23, v24, v25, v26, v28, v30;
  a1[8] = v19;
}

uint64_t sub_22B4D308C(void *a1, uint64_t a2)
{
  sub_22B4D2BCC(a1, a1[3]);
  v3 = sub_22B7DC508();
  (*(a2 + 16))(a2, v3);

  return swift_unknownObjectRelease();
}

void sub_22B4D3F24(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) serializedRepresentation];
  v3 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = v2;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "broadcasting sync state changed event: %@", &v13, 0xCu);
  }

  v4 = *MEMORY[0x277D19C58];
  v5 = [v2 objectForKey:*MEMORY[0x277D19C58]];

  v6 = [*(a1 + 32) logHandle];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v8 = [v2 objectForKey:v4];
      [v8 unsignedIntValue];
      v9 = IMStringFromIMCloudKitSyncJobState();
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "broadcasting sync job state: %@", &v13, 0xCu);
    }
  }

  else if (v7)
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "broadcasting sync job state: nil", &v13, 2u);
  }

  v10 = +[IMDBroadcastController sharedProvider];
  v11 = [v10 broadcasterForCloudSyncListeners];
  [v11 updateCloudKitStateWithDictionary:v2];

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 __mainThreadPostNotificationName:@"com.apple.IMCore.IMCloudKitHooks.ValuesChanged" object:0];
}

void sub_22B4D44F0(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "fetchCloudKitAccountStatusAndCheckForAccountNeedsRepairWithCompletion failed with error: %@", &v8, 0xCu);
    }
  }

  v6 = [*(a1 + 32) syncState];
  [v6 _startBatchChange];
  [*(a1 + 32) syncStateWillUpdate:v6];
  [v6 _finishBatchChange];
  v7 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_22B7CF80C(v6);
  }

  [v6 broadcastSyncState];
}

uint64_t sub_22B4D5B98(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = IMGetDaemonListenerProtocol();
  v8 = swift_allocObject();
  v8[1].n128_u64[0] = 0;
  v8[1].n128_u64[1] = v4;
  v8[2] = a4;
  v9 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  aBlock[4] = a2;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D1BA8;
  aBlock[3] = a3;
  v10 = _Block_copy(aBlock);
  v11 = v4;
  [v9 initWithProtocol:v7 forwardingHandler:v10];

  _Block_release(v10);

  return swift_dynamicCastObjCProtocolUnconditional();
}

uint64_t sub_22B4D5CC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22B4D5CE8(char **a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, NSObject *a7, uint64_t a8, void *a9, void *a10)
{
  v96 = a6;
  v97 = a7;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v98 = v14;
  if (!a4)
  {

    v95 = 0;
    v99 = 0;
    goto LABEL_10;
  }

  v15 = [a4 internalName];
  v95 = sub_22B7DB6A8();
  v99 = v16;

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    goto LABEL_10;
  }

  v18 = v17;
  v19 = a4;
  if (![v18 isSubService])
  {

    goto LABEL_10;
  }

  v20 = [v18 demandsBroadcasting];

  if (v20)
  {
LABEL_10:
    sub_22B4D6328();
    v36 = v28;
    v100 = MEMORY[0x277D84F90];
    if (v28 >> 62)
    {
      goto LABEL_43;
    }

    v37 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
    v38 = MEMORY[0x277D84F90];
    if (v37)
    {
      v94 = a1;
      v39 = 0;
      while (1)
      {
        if ((v36 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x231895C80](v39, v36);
          v41 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            v43 = v100;
            a1 = v94;
            v38 = MEMORY[0x277D84F90];
            goto LABEL_26;
          }
        }

        else
        {
          if (v39 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_43:
            v37 = sub_22B7DC1C8();
            goto LABEL_12;
          }

          v41 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_23;
          }
        }

        a1 = &v94;
        v42 = MEMORY[0x28223BE20](v40);
        MEMORY[0x28223BE20](v42);
        sub_22B7DACB8();
        if (v103)
        {
          sub_22B7DC358();
          a1 = *(v100 + 16);
          sub_22B7DC398();
          sub_22B7DC3A8();
          sub_22B7DC368();
        }

        else
        {
        }

        ++v39;
        if (v41 == v37)
        {
          goto LABEL_24;
        }
      }
    }

    v43 = MEMORY[0x277D84F90];
LABEL_26:
    v36, v29, v30, v31, v32, v33, v34, v35, v94, v95;
    v99, v44, v45, v46, v47, v48, v49, v50, v94, v95;
    if (qword_28141F3C8 != -1)
    {
      swift_once();
    }

    v51 = sub_22B7DB2B8();
    sub_22B4CFA74(v51, qword_281422698);

    v52 = sub_22B7DB298();
    v53 = sub_22B7DBC88();

    if (!os_log_type_enabled(v52, v53))
    {

LABEL_47:

      return;
    }

    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v103 = v55;
    *v54 = 136315394;
    v56 = NSStringFromSelector(a1);
    v57 = sub_22B7DB6A8();
    v59 = v58;

    v60 = sub_22B4CFAAC(v57, v59, &v103);
    v59, v61, v62, v63, v64, v65, v66, v67, v94, v95;
    *(v54 + 4) = v60;
    *(v54 + 12) = 2080;
    if (v43 < 0 || (v43 & 0x4000000000000000) != 0)
    {
      v68 = sub_22B7DC1C8();
      v99 = v55;
      if (v68)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v68 = *(v43 + 16);
      v99 = v55;
      if (v68)
      {
LABEL_32:
        v102 = v38;
        sub_22B7AB6B4(0, v68 & ~(v68 >> 63), 0);
        if (v68 < 0)
        {
          __break(1u);
          return;
        }

        LODWORD(v95) = v53;
        v96 = v54;
        v97 = v52;
        v69 = 0;
        v70 = v102;
        do
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            MEMORY[0x231895C80](v69, v43);
          }

          else
          {
          }

          sub_22B7DACB8();

          v71 = v100;
          v72 = v101;
          v102 = v70;
          v74 = *v70->messageStore;
          v73 = *v70->chatRegistry;
          if (v74 >= v73 >> 1)
          {
            sub_22B7AB6B4((v73 > 1), v74 + 1, 1);
            v70 = v102;
          }

          ++v69;
          *v70->messageStore = v74 + 1;
          v75 = v70 + 16 * v74;
          *(v75 + 4) = v71;
          *(v75 + 5) = v72;
        }

        while (v68 != v69);

        v54 = v96;
        v52 = v97;
        LOBYTE(v53) = v95;
        goto LABEL_46;
      }
    }

    v70 = MEMORY[0x277D84F90];
LABEL_46:
    v76 = MEMORY[0x2318952A0](v70, MEMORY[0x277D837D0]);
    v78 = v77;
    v70, v77, v79, v80, v81, v82, v83, v84, v94, v95;
    v85 = sub_22B4CFAAC(v76, v78, &v103);
    v78, v86, v87, v88, v89, v90, v91, v92, v94, v95;
    *(v54 + 14) = v85;
    _os_log_impl(&dword_22B4CC000, v52, v53, "Broadcasting %s to: %s", v54, 0x16u);
    v93 = v99;
    swift_arrayDestroy();
    MEMORY[0x231898D60](v93, -1, -1);
    MEMORY[0x231898D60](v54, -1, -1);
    goto LABEL_47;
  }

  v99, v21, v22, v23, v24, v25, v26, v27, a9, a10;
}

uint64_t sub_22B4D62EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_22B4D6328()
{
  v1 = *(v0 + OBJC_IVAR___IMDClientConnectionManager_connectionListeners);
  v2 = v1[2];
  if (!v2)
  {
    return;
  }

  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  v55 = (v1 + 4);
  v53 = v1[2];
  v54 = *(v0 + OBJC_IVAR___IMDClientConnectionManager_connectionListeners);
  while (v3 < v1[2])
  {
    v5 = *&v55[16 * v3 + 8];
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 8);
    swift_unknownObjectRetain();
    v8 = v7(ObjectType, v5);
    v9 = v8;
    v10 = v8 >> 62;
    if (v8 >> 62)
    {
      v11 = sub_22B7DC1C8();
    }

    else
    {
      v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v4 >> 62;
    if (v4 >> 62)
    {
      v52 = sub_22B7DC1C8();
      v14 = v52 + v11;
      if (__OFADD__(v52, v11))
      {
LABEL_35:
        __break(1u);
        return;
      }
    }

    else
    {
      v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v13 + v11;
      if (__OFADD__(v13, v11))
      {
        goto LABEL_35;
      }
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v12)
      {
        goto LABEL_17;
      }

LABEL_16:
      sub_22B7DC1C8();
      goto LABEL_17;
    }

    if (v12)
    {
      goto LABEL_16;
    }

    v22 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v14 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v23 = v11;
      v57 = v4;
      goto LABEL_18;
    }

LABEL_17:
    v23 = v11;
    v57 = sub_22B7DC318();
    v22 = v57 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v24 = *(v22 + 16);
    v25 = *(v22 + 24);
    if (v10)
    {
      v27 = v22;
      v28 = sub_22B7DC1C8();
      v22 = v27;
      v26 = v28;
      if (!v28)
      {
LABEL_3:
        v9, v15, v16, v17, v18, v19, v20, v21, v53, v54;
        swift_unknownObjectRelease();
        v4 = v57;
        if (v23 > 0)
        {
          goto LABEL_38;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v26 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        goto LABEL_3;
      }
    }

    if (((v25 >> 1) - v24) < v23)
    {
      goto LABEL_39;
    }

    v56 = v22;
    v29 = v22 + 8 * v24 + 32;
    if (v10)
    {
      if (v26 < 1)
      {
        goto LABEL_41;
      }

      sub_22B7B6B8C();
      for (i = 0; i != v26; ++i)
      {
        sub_22B6F0AD4(&unk_27D8CDC20, &unk_22B7FA438);
        v39 = sub_22B7B6B04(v58, i, v9);
        v41 = *v40;

        (v39)(v58, 0);
        *(v29 + 8 * i) = v41;
      }

      swift_unknownObjectRelease();
      v9, v42, v43, v44, v45, v46, v47, v48, v53, v54;
      v2 = v53;
      v1 = v54;
      v30 = v23;
    }

    else
    {
      type metadata accessor for ClientConnection();
      v30 = v23;
      swift_arrayInitWithCopy();
      v9, v31, v32, v33, v34, v35, v36, v37, v53, v54;
      swift_unknownObjectRelease();
    }

    v4 = v57;
    if (v30 > 0)
    {
      v49 = *(v56 + 16);
      v50 = __OFADD__(v49, v30);
      v51 = v49 + v30;
      if (v50)
      {
        goto LABEL_40;
      }

      *(v56 + 16) = v51;
    }

LABEL_4:
    if (++v3 == v2)
    {
      return;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t sub_22B4D6650(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  sub_22B6F0AD4(a3, a4);
  sub_22B7DACB8();
  return v6;
}

uint64_t sub_22B4D672C()
{
  v1 = v0;
  sub_22B7DAFF8();
  if ((sub_22B7DAFE8() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22B6F0AD4(&unk_27D8CD970, &qword_22B7FB330);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22B7F9620;
  *(v2 + 32) = *(v1 + 128);

  return v2;
}

uint64_t sub_22B4D67C0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void (*a6)(void *)@<X6>, char *a7@<X8>)
{
  v10 = result;
  if (!a3 || (result = sub_22B4D90D4(a2, a3, *(result + 64)), (result)) && ((v12 = v10[5], v13 = a4 & ~v12, v14 = v12 & a5, !v13) ? (v15 = v14 == 0) : (v15 = 0), v15))
  {
    v17 = v10[3];
    v18 = v10[4];
    sub_22B4D2BCC(v10, v17);
    v19 = (*(v18 + 24))(v17, v18);
    v20[3] = swift_getObjectType();
    v20[0] = v19;
    a6(v20);
    result = sub_22B4CFB78(v20);
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  *a7 = v16;
  return result;
}

uint64_t sub_22B4D693C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_22B4D7610(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7620(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7630(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7640(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7650(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7660(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7670(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7680(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7690(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D76B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D76C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D76D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D76E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D76F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7700(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7710(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7720(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7730(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7740(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7770(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7780(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7790(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D77A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D77B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D77C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D77D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D77F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7800(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7810(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7820(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7830(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7840(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7850(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7BA0()
{
  v1 = *(v0 + OBJC_IVAR___IMDKeyTransparencyController_state);
  swift_getKeyPath();

  os_unfair_lock_lock((v1 + 20));
  sub_22B4D7CC4((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 20));

  v2 = v4;

  return v2;
}

uint64_t sub_22B4D7C50@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  result = (*(v2 + 16))(v4 | *a1);
  *a2 = result & 1;
  return result;
}

unint64_t sub_22B4D7D1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B6F0AD4(&unk_27D8CDBE0, &qword_22B7FD3E0);
    v3 = sub_22B7DC488();
    v4 = a1 + 32;

    while (1)
    {
      sub_22B4D7E58(v4, v13, &unk_27D8CD7D0, &qword_22B7FA3F0);
      result = sub_22B4D7EC0(v13);
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
      result = sub_22B4D7F04(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22B4D7E58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22B6F0AD4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_22B4D7EC0(uint64_t a1)
{
  v2 = sub_22B7DC228();

  return sub_22B4D7F14(a1, v2);
}

_OWORD *sub_22B4D7F04(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_22B4D7F14(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22B4DA0DC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x231895BB0](v9, a1);
      sub_22B4DA138(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_22B4D8130(uint64_t a1, void *a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Clear failure badge notification", v5, 2u);
    }
  }

  [a2 clearFailureBadge];
  return [a2 checkIfUnexpectedlyLoggedOut];
}

uint64_t ClientConnectionManager.broadcasterForAllListeners.getter()
{
  v1 = IMGetDaemonListenerProtocol();
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = v0;
  v2[4] = 0;
  v2[5] = 0;
  v3 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  aBlock[4] = sub_22B4D5CD8;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D1BA8;
  aBlock[3] = &unk_283F1FD58;
  v4 = _Block_copy(aBlock);
  v5 = v0;
  [v3 initWithProtocol:v1 forwardingHandler:v4];

  _Block_release(v4);

  return swift_dynamicCastObjCProtocolUnconditional();
}

uint64_t sub_22B4D8E24()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B4D90D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22B7DC668();
  sub_22B7DB758();
  v6 = sub_22B7DC6B8();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22B7DC518() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_22B4D9894(uint64_t a1, unint64_t a2, void *a3, int *a4, uint64_t *a5)
{
  if (qword_28141F430 != -1)
  {
    swift_once();
  }

  v6 = sub_22B7DB2B8();
  sub_22B4CFA74(v6, qword_281422710);
  v7 = sub_22B7DB298();
  v8 = sub_22B7DBCB8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22B4CC000, v7, v8, "FSEventStreamCallback invoked", v9, 2u);
    MEMORY[0x231898D60](v9, -1, -1);
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v10 = a3;
    sub_22B7DB908();
  }
}

void sub_22B4D9B9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v4 = [objc_opt_self() defaultCenter];
    if (qword_28141F1E8 != -1)
    {
      swift_once();
    }

    v5 = qword_281422600;
    sub_22B6F0AD4(&unk_27D8CE9F0, &qword_22B7F98C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22B7F93B0;
    sub_22B7DC248();
    *(inited + 96) = sub_22B6F0AD4(&qword_27D8CE540, &qword_22B7FA518);
    *(inited + 72) = a1;

    v7 = sub_22B4D7D1C(inited);
    swift_setDeallocating();
    sub_22B4D9D48(inited + 32);
    v8 = sub_22B7DB568();
    v7, v9, v10, v11, v12, v13, v14, v15, 0x6E657645656C6966, 0xEA00000000007374;
    [v4 postNotificationName:v5 object:0 userInfo:v8];
  }
}

uint64_t sub_22B4D9D48(uint64_t a1)
{
  v2 = sub_22B6F0AD4(&unk_27D8CD7D0, &qword_22B7FA3F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22B4D9E98()
{
  if (qword_28141F3D0 != -1)
  {
    swift_once();
  }

  v0 = sub_22B7DB2B8();
  sub_22B4CFA74(v0, qword_2814226B0);
  v1 = sub_22B7DB298();
  v2 = sub_22B7DBCB8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22B4CC000, v1, v2, "Received notification", v3, 2u);
    MEMORY[0x231898D60](v3, -1, -1);
  }

  v4 = sub_22B7DA678();
  if (v4)
  {
    v5 = v4;
    sub_22B7DC248();
    if (*(v5 + 16) && (v13 = sub_22B4D7EC0(v34), (v6 & 1) != 0))
    {
      sub_22B4D1F68(*(v5 + 56) + 32 * v13, v35);
      sub_22B4DA138(v34);
      v5, v14, v15, v16, v17, v18, v19, v20, v31, 0x6E657645656C6966;
      sub_22B6F0AD4(&qword_27D8CE540, &qword_22B7FA518);
      if (swift_dynamicCast())
      {
        sub_22B4DA18C(v33);
        v33, v21, v22, v23, v24, v25, v26, v27, v32, v33;
        return;
      }
    }

    else
    {
      v5, v6, v7, v8, v9, v10, v11, v12, v31, 0x6E657645656C6966;
      sub_22B4DA138(v34);
    }
  }

  v28 = sub_22B7DB298();
  v29 = sub_22B7DBCB8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_22B4CC000, v28, v29, "Received notification but no file events present", v30, 2u);
    MEMORY[0x231898D60](v30, -1, -1);
  }
}

uint64_t sub_22B4DA18C(uint64_t a1)
{
  v2 = sub_22B7DB398();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22B7DB348();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B7DB338();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  aBlock[4] = sub_22B4DA46C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1CE08;
  v12 = _Block_copy(aBlock);

  sub_22B7DACD8();
  MEMORY[0x2318956F0](0, v5, v9, v12);
  _Block_release(v12);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_22B4DA3F4()
{
  MEMORY[0x231898E50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DA42C(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8, vars0, vars8;

  return MEMORY[0x2821FE8E8](v8, 32, 7);
}

void sub_22B4DA474(IMDScheduledMessageCoordinator *a1, uint64_t a2)
{
  if (qword_28141F3D0 != -1)
  {
    swift_once();
  }

  v3 = sub_22B7DB2B8();
  sub_22B4CFA74(v3, qword_2814226B0);

  v4 = sub_22B7DB298();
  v5 = sub_22B7DBCB8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *a1->messageStore;
    a1, v7, v8, v9, v10, v11, v12, v13, v331, v354;
    _os_log_impl(&dword_22B4CC000, v4, v5, "Processing %ld file events", v6, 0xCu);
    MEMORY[0x231898D60](v6, -1, -1);
  }

  else
  {

    a1, v14, v15, v16, v17, v18, v19, v20, v331, v354;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v22 = *a1->messageStore;
  if (!v22)
  {

    return;
  }

  v377 = Strong;
  isFirstFire = a1->isFirstFire;
  while (1)
  {
    v38 = *(isFirstFire - 4);
    if ((v38 & 0x20000) != 0)
    {
      goto LABEL_11;
    }

    v40 = *(isFirstFire - 1);
    v39 = *isFirstFire;
    v41 = qword_28141F0F8;

    if (v41 != -1)
    {
      swift_once();
    }

    v387 = dword_28141F100 & v38;
    if ((~(dword_28141F100 & v38) & 0x300) == 0 || (dword_28141F100 & v38 & 0x401000) == 0)
    {

      v39, v148, v149, v150, v151, v152, v153, v154, v332, v355;
      return;
    }

    if ((dword_28141F100 & v38 & 0x200) != 0)
    {
      v39, v42, v43, v44, v45, v46, v47, v48, v332, v355;
      goto LABEL_54;
    }

    LODWORD(v385[0]) = dword_28141F100 & v38;
    v50 = sub_22B723C5C(v385);
    v52 = v51;
    v53 = sub_22B723D3C(v40, v39);
    v54 = sub_22B7CEBB0(v40, v39);
    if (!v55)
    {
      v155 = v53;

      v156 = sub_22B7DB298();
      v157 = sub_22B7DBC98();
      v39, v158, v159, v160, v161, v162, v163, v164, v332, v355;
      v52, v165, v166, v167, v168, v169, v170, v171, v339, v362;
      if (os_log_type_enabled(v156, v157))
      {
        v179 = swift_slowAlloc();
        v180 = swift_slowAlloc();
        v385[0] = v180;
        *v179 = 136315650;
        v181 = sub_22B4CFAAC(v50, v52, v385);
        v52, v182, v183, v184, v185, v186, v187, v188, v340, v363;
        *(v179 + 4) = v181;
        *(v179 + 12) = 1024;
        *(v179 + 14) = v155 & 1;
        *(v179 + 18) = 2080;
        v189 = sub_22B4CFAAC(v40, v39, v385);
        v39, v190, v191, v192, v193, v194, v195, v196, v341, v364;
        *(v179 + 20) = v189;
        _os_log_impl(&dword_22B4CC000, v156, v157, "File [%s], isPurgeableOnDisk? %{BOOL}d. Could not find attachment guid for filePath: %s", v179, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x231898D60](v180, -1, -1);
        MEMORY[0x231898D60](v179, -1, -1);
      }

      else
      {
        v39, v172, v173, v174, v175, v176, v177, v178, v340, v363;
        v52, v324, v325, v326, v327, v328, v329, v330, v353, v376;
      }

      goto LABEL_54;
    }

    v56 = v54;
    v57 = v55;
    v379 = v53;
    v383 = v52;
    v58 = objc_opt_self();
    v59 = [v58 sharedInstance];
    if (!v59)
    {
      break;
    }

    v60 = v59;
    v61 = sub_22B7DB678();
    v62 = [v60 attachmentWithGUID_];

    if (!v62)
    {
      v383, v63, v64, v65, v66, v67, v68, v69, v332, v355;
      v57, v197, v198, v199, v200, v201, v202, v203, v342, v365;

      v204 = v377;
      v205 = sub_22B7DB298();
      v206 = sub_22B7DBC98();
      v39, v207, v208, v209, v210, v211, v212, v213, v343, v366;

      if (os_log_type_enabled(v205, v206))
      {
        v221 = swift_slowAlloc();
        v222 = swift_slowAlloc();
        v386 = v222;
        *v221 = 136315394;
        swift_beginAccess();
        v384 = v387;
        v223 = sub_22B723C5C(&v384);
        v225 = v224;
        v226 = sub_22B4CFAAC(v223, v224, &v386);
        v225, v227, v228, v229, v230, v231, v232, v233, v344, v367;
        *(v221 + 4) = v226;
        *(v221 + 12) = 2080;
        v234 = sub_22B4CFAAC(v40, v39, &v386);
        v39, v235, v236, v237, v238, v239, v240, v241, v345, v368;
        *(v221 + 14) = v234;
        _os_log_impl(&dword_22B4CC000, v205, v206, "FSEvents indicates we %s for filePath %s but we didn't find attachment in attachment store!", v221, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x231898D60](v222, -1, -1);
        MEMORY[0x231898D60](v221, -1, -1);
      }

      else
      {
        v39, v214, v215, v216, v217, v218, v219, v220, v344, v367;
      }

      return;
    }

    v70 = sub_22B7DB678();
    v71 = IMDAttachmentRecordCopyMessageForAttachmentGUID();

    if (!v71)
    {
      v383, v72, v73, v74, v75, v76, v77, v78, v332, v355;
      v39, v242, v243, v244, v245, v246, v247, v248, v346, v369;

      v249 = sub_22B7DB298();
      v250 = sub_22B7DBC98();
      v57, v251, v252, v253, v254, v255, v256, v257, v347, v370;
      if (os_log_type_enabled(v249, v250))
      {
        v265 = swift_slowAlloc();
        v266 = swift_slowAlloc();
        v267 = v56;
        v268 = v266;
        v385[0] = v266;
        *v265 = 136315138;
        v269 = sub_22B4CFAAC(v267, v57, v385);
        v270 = v57;
        v271 = v269;
        v270, v272, v273, v274, v275, v276, v277, v278, v348, v371;
        *(v265 + 4) = v271;
        _os_log_impl(&dword_22B4CC000, v249, v250, "Could not get IMDMessageRecordRef for attachment guid %s", v265, 0xCu);
        sub_22B4CFB78(v268);
        MEMORY[0x231898D60](v268, -1, -1);
        MEMORY[0x231898D60](v265, -1, -1);
      }

      else
      {
        v57, v258, v259, v260, v261, v262, v263, v264, v348, v371;
      }

      goto LABEL_54;
    }

    v79 = IMDCreateIMMessageItemFromIMDMessageRecordRef(v71, 0, 1);
    if (!v79)
    {
      v279 = v71;
      v383, v80, v81, v82, v83, v84, v85, v86, v332, v355;
      v39, v280, v281, v282, v283, v284, v285, v286, v349, v372;
      goto LABEL_46;
    }

    v87 = v79;
    objc_opt_self();
    v88 = swift_dynamicCastObjCClass();
    if (!v88)
    {
      v279 = v71;
      v383, v89, v90, v91, v92, v93, v94, v95, v332, v355;
      v39, v287, v288, v289, v290, v291, v292, v293, v351, v374;

LABEL_46:

      v294 = sub_22B7DB298();
      v295 = sub_22B7DBC98();
      v57, v296, v297, v298, v299, v300, v301, v302, v350, v373;
      if (os_log_type_enabled(v294, v295))
      {
        v310 = swift_slowAlloc();
        v311 = swift_slowAlloc();
        v312 = v56;
        v313 = v311;
        v385[0] = v311;
        *v310 = 136315138;
        v314 = sub_22B4CFAAC(v312, v57, v385);
        v315 = v57;
        v316 = v314;
        v315, v317, v318, v319, v320, v321, v322, v323, v352, v375;
        *(v310 + 4) = v316;
        _os_log_impl(&dword_22B4CC000, v294, v295, "Could not create IMMessageItem from IMDMessageRecordRef for attachment guid %s", v310, 0xCu);
        sub_22B4CFB78(v313);
        MEMORY[0x231898D60](v313, -1, -1);
        MEMORY[0x231898D60](v310, -1, -1);
      }

      else
      {
        v57, v303, v304, v305, v306, v307, v308, v309, v352, v375;
      }

LABEL_54:
      return;
    }

    v378 = v56;
    v380 = v71;
    v382 = v57;
    v96 = sub_22B72435C(v40, v39, v62, v88);
    v381 = v39;
    LOBYTE(v332) = BYTE1(v96) & 1;
    if ([objc_opt_self() canMarkPurgeableWithCKSyncState:objc_msgSend(v62 transferState:sel_cloudKitSyncState) isAudio:objc_msgSend(v62 isSticker:sel_transferState) isGroupPhoto:(v96 >> 24) & 1 isPluginPayload:v96 & 1 isRichLink:{HIDWORD(v96) & 1, (v96 >> 16) & 1}])
    {
      if (v379)
      {
        v383, v97, v98, v99, v100, v101, v102, v103, v332, v355;
        v39, v104, v105, v106, v107, v108, v109, v110, v335, v358;
        v118 = v57;
      }

      else
      {

        v119 = sub_22B7DB298();
        v120 = sub_22B7DBCB8();
        v381, v121, v122, v123, v124, v125, v126, v127, v332, v355;
        if (os_log_type_enabled(v119, v120))
        {
          v128 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          v385[0] = v129;
          *v128 = 67109634;
          *(v128 + 4) = 1;
          *(v128 + 8) = 1024;
          *(v128 + 10) = 0;
          *(v128 + 14) = 2080;
          *(v128 + 16) = sub_22B4CFAAC(v40, v381, v385);
          _os_log_impl(&dword_22B4CC000, v119, v120, "Purgeability mismatch detected!\n    isPurgeableOnDatabase: %{BOOL}d\n    isPurgeableOnDisk: %{BOOL}d\n    filePath: %s", v128, 0x18u);
          sub_22B4CFB78(v129);
          v130 = v129;
          v57 = v382;
          MEMORY[0x231898D60](v130, -1, -1);
          MEMORY[0x231898D60](v128, -1, -1);
        }

        v131 = [v58 sharedInstance];
        if (!v131)
        {
          goto LABEL_57;
        }

        v139 = v131;
        v383, v132, v133, v134, v135, v136, v137, v138, v337, v360;
        v140 = sub_22B7DB678();
        [v139 markAttachmentPurgeable_];

        sub_22B7212B8(v40, v381);
        sub_22B72487C(v378, v57);
        v57, v141, v142, v143, v144, v145, v146, v147, v338, v361;
        v118 = v381;
      }

      v118, v111, v112, v113, v114, v115, v116, v117, v336, v359;
    }

    else
    {
      v383, v97, v98, v99, v100, v101, v102, v103, v332, v355;
      v39, v24, v25, v26, v27, v28, v29, v30, v333, v356;
      v57, v31, v32, v33, v34, v35, v36, v37, v334, v357;
    }

LABEL_11:
    isFirstFire += 4;
    if (!--v22)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
}

IMDChat *sub_22B4DAEE8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v67 = 0;
    *buf = 0;
    v65 = 0;
    v66 = 0;
    v63 = 0;
    v64 = 0;
    v61 = 0;
    v62 = 0;
    v59 = 0;
    v60 = 0;
    v57 = 0;
    v58 = 0;
    v55 = 0;
    v56 = 0;
    v53 = 0;
    v54 = 0;
    v51 = 0;
    v52 = 0;
    v49 = 0;
    v50 = 0;
    v47 = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 0;
    v44 = 0;
    v42 = 0;
    _IMDChatRecordBulkCopy();
    v2 = [IMDAccountController sharedInstance:&v62];
    v3 = [(IMDAccountController *)v2 accountForAccountID:*buf];
    if (v3)
    {
      v4 = v3;

      *buf = [v4 accountID];
      v66 = [v4 loginID];
    }

    v5 = IMDChatRecordCopyHandles();
    v6 = [v5 count];
    v41 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v6];
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = v6 & 0x7FFFFFFF;
      do
      {
        if ([v5 objectAtIndex:v7])
        {
          v9 = IMDHandleRecordCopyID();
          v10 = IMDHandleRecordCopyCountry();
          v11 = IMDHandleRecordCopyUncanonicalizedID();
          v12 = IMDHandleRecordCopyPersonCentricID();
          v13 = [[IMDHandle alloc] initWithID:v9 unformattedID:v11 countryCode:v10 personCentricID:v12];
          [v41 addObject:v13];
        }

        ++v7;
      }

      while (v8 != v7);
    }

    MessageTimeStampOnLoad = IMDChatRecordLastMessageTimeStampOnLoad();
    if (v44)
    {
      v15 = [MEMORY[0x277CBEAA8] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:v44];
    }

    else
    {
      v15 = 0;
    }

    v40 = 0;
    v38 = v15;
    v39 = MessageTimeStampOnLoad;
    if ([objc_msgSend(MEMORY[0x277D1A9B8] "sharedFeatureFlags")] && v57 == 43)
    {
      v40 = IMDChatRecordCopyChatLookupRecords();
    }

    v18 = [IMDChat alloc];
    v20 = v67;
    v19 = *buf;
    v21 = v64;
    v22 = [v61 uppercaseString];
    v23 = v65;
    v24 = [v62 lowercaseString];
    v25 = v59;
    v26 = v63;
    v27 = v46;
    v28 = JWDecodeDictionary();
    BYTE1(v37) = v42 != 0;
    LOBYTE(v37) = v43 != 0;
    LOBYTE(v36) = v54 != 0;
    LOBYTE(v35) = v53 != 0;
    LOBYTE(v34) = v57;
    v17 = [(IMDChat *)v18 initWithAccountID:v19 service:v20 guid:v21 groupID:v22 chatIdentifier:v23 participants:v41 roomName:v24 displayName:v25 lastAddressedLocalHandle:v26 lastAddressedSIMID:v27 properties:v28 state:v58 style:v34 isFiltered:v55 hasHadSuccessfulQuery:v35 engramID:v60 serverChangeToken:v51 cloudKitSyncState:v50 originalGroupID:v49 lastReadMessageTimeStamp:v48 lastMessageTimeStampOnLoad:v39 cloudKitRecordID:v47 isBlackholed:v36 autoDonationBehavior:v45 autoDonationBehaviorLastModificationDate:v38 isRecovered:v37 isDeletingIncomingMessages:v40 domainIdentifiers:?];
    [(IMDChat *)v17 _setRowID:IMDChatRecordGetIdentifier()];
    v29 = IMDChatRecordCachedUnreadCount();
    if ((v29 & 0x8000000000000000) == 0)
    {
      [(IMDChat *)v17 _setUnreadCount:v29];
    }

    Message = IMDChatRecordCopyCachedLastMessage();
    if (Message)
    {
      v31 = Message;
      v32 = IMDCreateIMMessageItemFromIMDMessageRecordRef(Message, 0, 1);
      if (![v32 type])
      {
        [(IMDChat *)v17 setLastMessage:v32];
      }

      CFRelease(v31);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "You passed me a NULL chat record ref. No IMDSavedChat for you!", buf, 2u);
      }
    }

    return 0;
  }

  return v17;
}

uint64_t sub_22B4DB7D4(void *a1, uint64_t a2)
{
  v146 = a2;
  v199 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = [a1 style];
    v130 = [a1 state];
    v137 = [objc_msgSend(a1 "accountID")];
    v144 = [objc_msgSend(a1 "properties")];
    v143 = [objc_msgSend(a1 "chatIdentifier")];
    v179 = [objc_msgSend(a1 "serviceName")];
    v139 = [objc_msgSend(a1 "displayName")];
    v141 = [objc_msgSend(a1 "guid")];
    v140 = [objc_msgSend(a1 "groupID")];
    v135 = [objc_msgSend(a1 "engramID")];
    v4 = [objc_msgSend(a1 "account")];
    v138 = [objc_msgSend(v4 objectForKey:{*MEMORY[0x277D19420]), "copy"}];
    obj = [objc_msgSend(a1 "participants")];
    v136 = [objc_msgSend(a1 "lastAddressedLocalHandle")];
    v126 = [objc_msgSend(a1 "lastAddressedSIMID")];
    v5 = [a1 isArchived];
    v124 = [a1 isFiltered];
    v6 = [a1 isBlackholed];
    v7 = [a1 hasHadSuccessfulQuery];
    v134 = [objc_msgSend(a1 "roomName")];
    v133 = [objc_msgSend(a1 "serverChangeToken")];
    v123 = [a1 cloudKitSyncState];
    v147 = [a1 originalGroupID];
    v122 = [a1 lastReadMessageTimeStamp];
    v8 = [a1 autoDonationBehavior];
    v9 = [a1 isRecovered];
    v10 = [a1 isDeletingIncomingMessages];
    v145 = a1;
    if ([a1 autoDonationBehaviorLastModificationDate])
    {
      v121 = [objc_msgSend(a1 "autoDonationBehaviorLastModificationDate")];
      if (!v8)
      {
LABEL_13:
        v132 = [objc_msgSend(v145 "cloudKitRecordID")];
        if ([v144 count])
        {
          v127 = [JWEncodeDictionary() copy];
        }

        else
        {
          v127 = objc_alloc_init(MEMORY[0x277CBEA90]);
        }

        v14 = IMDChatRecordCopyChatForGUID();
        v142 = v3;
        v128 = v5;
        v119 = v6;
        v120 = v7;
        v117 = v10;
        v118 = v9;
        if (!v14)
        {
          if ([v145 rowID] == -1)
          {
            goto LABEL_35;
          }

          [v145 rowID];
          v21 = IMDChatRecordCopyChatRecord();
          v22 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            *&buf[4] = [v145 guid];
            v191 = 2048;
            v192 = [v145 rowID];
            v193 = 1024;
            LODWORD(v194) = v21 != 0;
            _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_DEFAULT, "Failed to find chat by guid %@, tried rowid %lld instead, found? %{BOOL}d", buf, 0x1Cu);
          }

          v14 = v21;
          if (!v21)
          {
LABEL_35:
            v23 = IMDChatRecordCopyNewestChatForGroupIDOnService();
            if (v23)
            {
              v24 = IMDChatRecordCopyDisplayName();
              if (IMOSLoggingEnabled())
              {
                v25 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  Identifier = IMDChatRecordGetIdentifier();
                  *buf = 138413314;
                  *&buf[4] = v140;
                  v191 = 2112;
                  v192 = v179;
                  v193 = 2048;
                  v194 = Identifier;
                  v195 = 2112;
                  v196 = v24;
                  v197 = 2112;
                  v198 = v139;
                  _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Found chat fork with same groupID (%@) and service (%@) at rowID: %lld, existing display name is (%@) and new display name is (%@)", buf, 0x34u);
                }
              }

              CFRelease(v23);
            }

            if (![v179 length])
            {
              v27 = MEMORY[0x277CCA9B8];
              v188 = *MEMORY[0x277CCA068];
              v189 = @"[IMCreateIMDChat] Chat was missing a service when being inserted into the database.";
              v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v189 forKeys:&v188 count:1];
              v29 = [v27 errorWithDomain:*MEMORY[0x277D190E0] code:0 userInfo:v28];
              [objc_msgSend(MEMORY[0x277D1AAA8] "sharedInstance")];
              IMComponentsFromChatGUID();
            }

            v115 = v118;
            v116 = v117;
            v113 = v8;
            v114 = v121;
            v111 = v126;
            v112 = v6;
            v109 = v122;
            v110 = v132;
            v107 = v123;
            v108 = v147;
            v105 = v135;
            v106 = v133;
            v103 = v124;
            v104 = v7;
            v101 = v140;
            v102 = v128;
            v99 = v136;
            v100 = v138;
            v97 = v134;
            v98 = v139;
            v149 = IMDChatRecordCreate();
            if (!v149)
            {
              v149 = 0;
LABEL_231:

              return v149;
            }

LABEL_165:
            v62 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *&buf[4] = v143;
              v191 = 2112;
              v192 = obj;
              _os_log_impl(&dword_22B4CC000, v62, OS_LOG_TYPE_DEFAULT, "Updating chat %@ with participants: %@", buf, 0x16u);
            }

            if (v142 == 45 && [obj count] != 1)
            {
              v63 = MEMORY[0x277CCA9B8];
              v186 = *MEMORY[0x277CCA068];
              v187 = @"1-1 chat has wrong number of participants while storing";
              v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v187 forKeys:&v186 count:1];
              v65 = [v63 errorWithDomain:*MEMORY[0x277D190E0] code:0 userInfo:v64];
              [objc_msgSend(MEMORY[0x277D1AAA8] "sharedInstance")];
            }

            v129 = IMDChatRecordCopyGUID();
            v66 = *MEMORY[0x277D19918];
            v67 = [objc_msgSend(v144 objectForKeyedSubscript:{*MEMORY[0x277D19918]), "integerValue"}];
            if (v129)
            {
              v68 = [v141 isEqualToString:?];
            }

            else
            {
              v68 = 0;
            }

            v125 = IMCopyAnyServiceGUIDForChat();
            if (([v145 style] == 45 || objc_msgSend(v145, "style") == 43) && objc_msgSend(v143, "length", v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116) && objc_msgSend(v179, "length") && !((objc_msgSend(v141, "isEqualToString:", v125) | v68) & 1 | v67 & 1))
            {
              v69 = MEMORY[0x277CCA9B8];
              v184 = *MEMORY[0x277CCA068];
              v185 = @"[IMCreateIMDChat] Chat GUID did not match chat properties";
              v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v185 forKeys:&v184 count:1];
              v71 = [v69 errorWithDomain:*MEMORY[0x277D190E0] code:0 userInfo:v70];
              [objc_msgSend(MEMORY[0x277D1AAA8] "sharedInstance")];
            }

            v131 = IMDChatRecordCopyHandles();
            v72 = [v131 mutableCopy];
            v73 = [v145 isStewieChat];
            v74 = [objc_msgSend(v144 objectForKeyedSubscript:{v66), "integerValue"}];
            if (!([v145 isBusinessChat] & 1 | (v142 != 45) | v73 & 1u) && objc_msgSend(obj, "count") == 1 && !(+[IMDChat identifier:equalsIdentifier:](IMDChat, "identifier:equalsIdentifier:", v143, objc_msgSend(objc_msgSend(obj, "firstObject"), "ID")) | (v74 >> 1) & 1) && !+[IMDChat identifier:equalsIdentifier:](IMDChat, "identifier:equalsIdentifier:", objc_msgSend(objc_msgSend(obj, "firstObject"), "ID"), objc_msgSend(objc_msgSend(v131, "firstObject"), "canonicalizedURIString")))
            {
              v75 = MEMORY[0x277CCA9B8];
              v182 = *MEMORY[0x277CCA068];
              v183 = @"[IMCreateIMDChat] [v2] Chat identifier for 1-1 chat did not match the participant's handle ID.";
              v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v183 forKeys:&v182 count:1];
              v77 = [v75 errorWithDomain:*MEMORY[0x277D190E0] code:0 userInfo:v76];
              [objc_msgSend(MEMORY[0x277D1AAA8] "sharedInstance")];
            }

            v152 = 0u;
            v153 = 0u;
            v150 = 0u;
            v151 = 0u;
            v78 = [obj countByEnumeratingWithState:&v150 objects:v181 count:{16, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116}];
            if (v78)
            {
              v79 = *v151;
              do
              {
                for (i = 0; i != v78; ++i)
                {
                  if (*v151 != v79)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v81 = *(*(&v150 + 1) + 8 * i);
                  [v81 ID];
                  v82 = IMDHandleRecordCopyHandleForIDOnService();
                  [v81 ID];
                  if (v82)
                  {
                    [v81 countryCode];
                    [v81 unformattedID];
                    IMDHandleRecordBulkUpdate();
                  }

                  else
                  {
                    IMCountryCodeForIncomingTextMessage();
                    [v81 unformattedID];
                    [v81 personCentricID];
                    v82 = IMDHandleRecordCreate();
                  }

                  v83 = IMDHandleRecordGetIdentifier();
                  v84 = [v72 count];
                  if (v84 - 1 < 0)
                  {
LABEL_196:
                    v85 = IMDatabaseLogHandle();
                    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      *&buf[4] = v82;
                      v191 = 2112;
                      v192 = v81;
                      _os_log_impl(&dword_22B4CC000, v85, OS_LOG_TYPE_DEFAULT, " Adding handle: %@   (%@)", buf, 0x16u);
                    }

                    IMDChatRecordAddHandle();
                  }

                  else
                  {
                    while (1)
                    {
                      if ([v72 objectAtIndex:--v84])
                      {
                        if (IMDHandleRecordGetIdentifier() == v83)
                        {
                          break;
                        }
                      }

                      if (v84 <= 0)
                      {
                        goto LABEL_196;
                      }
                    }

                    [v72 removeObjectAtIndex:v84];
                  }

                  if (v82)
                  {
                    CFRelease(v82);
                  }
                }

                v78 = [obj countByEnumeratingWithState:&v150 objects:v181 count:16];
              }

              while (v78);
            }

            v86 = [objc_msgSend(MEMORY[0x277D1A9B8] "sharedFeatureFlags")];
            if (v142 == 43)
            {
              v87 = v86;
            }

            else
            {
              v87 = 0;
            }

            if (v87 == 1)
            {
              if ([v145 domainIdentifiers])
              {
                v88 = IMDChatRecordCopyChatLookupRecords();
                if (v88)
                {
                  if ([objc_msgSend(objc_msgSend(v145 "domainIdentifiers")])
                  {
                    [objc_msgSend(MEMORY[0x277D18EB0] "synchronousDatabase")];
                  }
                }
              }
            }

            if (v179)
            {
              if (([v179 isEqualToString:*MEMORY[0x277D1A5F8]] & 1) == 0)
              {
                v89 = IMDChatRecordCopyChatServiceRecords();
                v90 = v89;
                if (v89)
                {
                  if (([v89 containsObject:v179] & 1) == 0)
                  {
                    v91 = [MEMORY[0x277D18EB0] synchronousDatabase];
                    v180 = v179;
                    [MEMORY[0x277CBEA60] arrayWithObjects:&v180 count:1];
                    [v91 updateServicesForChatWithGUID:? services:? completionHandler:?];
                  }

                  CFRelease(v90);
                }
              }
            }

            v92 = [v72 count];
            if (v72 && v92 >= 1)
            {
              v93 = v92 & 0x7FFFFFFF;
              if ((v92 & 0x7FFFFFFF) == 0)
              {
                goto LABEL_229;
              }

              v94 = 0;
              do
              {
                v95 = [v72 objectAtIndex:v94];
                if (v95)
                {
                  v96 = IMDatabaseLogHandle();
                  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *&buf[4] = v95;
                    _os_log_impl(&dword_22B4CC000, v96, OS_LOG_TYPE_DEFAULT, " Removing handle: %@", buf, 0xCu);
                  }

                  IMDChatRecordRemoveHandle();
                }

                ++v94;
              }

              while (v93 != v94);
            }

            if (!v72)
            {
LABEL_230:

              goto LABEL_231;
            }

LABEL_229:
            CFRelease(v72);
            goto LABEL_230;
          }
        }

        *buf = 0;
        v178 = 0;
        v177 = 0;
        v176 = 0;
        v175 = 0;
        v174 = 0;
        cf = 0;
        v172 = 0;
        v171 = 0;
        v170 = 0;
        v169 = 0;
        v168 = 0;
        v167 = 0;
        v166 = 0;
        v165 = 0;
        v164 = 0;
        v163 = 0;
        v162 = 0;
        v161 = 0;
        v160 = 0;
        v159 = 0;
        v158 = 0;
        v157 = 0;
        v156 = 0;
        v155 = 0;
        v154 = 0;
        v149 = v14;
        _IMDChatRecordBulkCopy();
        v15 = [JWDecodeDictionary() copy];
        v18 = *buf != v3 || v178 != v130 || v177 != v5;
        v19 = cf;
        if (cf == v137)
        {
          goto LABEL_30;
        }

        if (![cf length])
        {
          v20 = 1;
          goto LABEL_45;
        }

        if (![v137 length])
        {
LABEL_30:
          v20 = 0;
        }

        else
        {
          v20 = [v19 isEqualToString:v137] ^ 1;
        }

LABEL_45:
        IsLogicallyAnUpdate = _ChatPropertiesIsLogicallyAnUpdate(v15, v144);
        v31 = v171;
        if (v171 == v138)
        {
          goto LABEL_49;
        }

        if (![v171 length])
        {
          v32 = 1;
          goto LABEL_51;
        }

        if (![v138 length])
        {
LABEL_49:
          v32 = 0;
        }

        else
        {
          v32 = [v31 isEqualToString:v138] ^ 1;
        }

LABEL_51:
        v33 = v167;
        if (v167 == v136)
        {
          goto LABEL_55;
        }

        if (![v167 length])
        {
          v34 = 1;
          goto LABEL_57;
        }

        if (![v136 length])
        {
LABEL_55:
          v34 = 0;
        }

        else
        {
          v34 = [v33 isEqualToString:v136] ^ 1;
        }

LABEL_57:
        v35 = v170;
        if (v170 == v139)
        {
          goto LABEL_61;
        }

        if (![v170 length])
        {
          v36 = 1;
          goto LABEL_63;
        }

        if (![v139 length])
        {
LABEL_61:
          v36 = 0;
        }

        else
        {
          v36 = [v35 isEqualToString:v139] ^ 1;
        }

LABEL_63:
        v37 = v166;
        if (v166 == v143)
        {
          goto LABEL_67;
        }

        if (![v166 length])
        {
          v38 = 1;
          goto LABEL_69;
        }

        if (![v143 length])
        {
LABEL_67:
          v38 = 0;
        }

        else
        {
          v38 = [v37 isEqualToString:v143] ^ 1;
        }

LABEL_69:
        v39 = v164;
        if (v164 == v134)
        {
          goto LABEL_73;
        }

        if (![v164 length])
        {
          v40 = 1;
          goto LABEL_75;
        }

        if (![v134 length])
        {
LABEL_73:
          v40 = 0;
        }

        else
        {
          v40 = [v39 isEqualToString:v134] ^ 1;
        }

LABEL_75:
        v41 = v18 | v20 | IsLogicallyAnUpdate | v32 | v34 | v36 | v38 | v40;
        if (v176 != v124)
        {
          v41 = 1;
        }

        if (v174 == v120)
        {
          v42 = v41;
        }

        else
        {
          v42 = 1;
        }

        v43 = v169;
        if (v169 == v140)
        {
          goto LABEL_84;
        }

        if (![v169 length])
        {
          v44 = 1;
          goto LABEL_86;
        }

        if (![v140 length])
        {
LABEL_84:
          v44 = 0;
        }

        else
        {
          v44 = [v43 isEqualToString:v140] ^ 1;
        }

LABEL_86:
        v45 = v168;
        if (v168 == v135)
        {
          goto LABEL_90;
        }

        if (![v168 length])
        {
          v46 = 1;
          goto LABEL_92;
        }

        if (![v135 length])
        {
LABEL_90:
          v46 = 0;
        }

        else
        {
          v46 = [v45 isEqualToString:v135] ^ 1;
        }

LABEL_92:
        v47 = v163;
        if (v163 == v133)
        {
          goto LABEL_96;
        }

        if (![v163 length])
        {
          v48 = 1;
          goto LABEL_98;
        }

        if (![v133 length])
        {
LABEL_96:
          v48 = 0;
        }

        else
        {
          v48 = [v47 isEqualToString:v133] ^ 1;
        }

LABEL_98:
        v49 = v42 | v44 | v46 | v48;
        if (v162 == v123)
        {
          v50 = v49;
        }

        else
        {
          v50 = 1;
        }

        v51 = v161;
        if (v161 == v147)
        {
          goto LABEL_105;
        }

        if (![v161 length])
        {
          v52 = 1;
          goto LABEL_107;
        }

        if (![v147 length])
        {
LABEL_105:
          v52 = 0;
        }

        else
        {
          v52 = [v51 isEqualToString:v147] ^ 1;
        }

LABEL_107:
        v53 = v50 | v52;
        if (v160 == v122)
        {
          v54 = v53;
        }

        else
        {
          v54 = 1;
        }

        v55 = v159;
        if (v159 == v132)
        {
          goto LABEL_114;
        }

        if (![v159 length])
        {
          v56 = 1;
          goto LABEL_116;
        }

        if (![v132 length])
        {
LABEL_114:
          v56 = 0;
        }

        else
        {
          v56 = [v55 isEqualToString:v132] ^ 1;
        }

LABEL_116:
        v57 = v54 | v56;
        if (v175 != v119)
        {
          v57 = 1;
        }

        if (v156 != v121)
        {
          v57 = 1;
        }

        if (v157 != v8)
        {
          v57 = 1;
        }

        if (v155 != v118)
        {
          v57 = 1;
        }

        if (v154 == v117)
        {
          v58 = v57;
        }

        else
        {
          v58 = 1;
        }

        if (!v146)
        {
          if ((v58 & 1) == 0)
          {
            goto LABEL_137;
          }

          goto LABEL_136;
        }

        v59 = v165;
        v60 = v179;
        if (v165 == v179)
        {
          goto LABEL_134;
        }

        if (![v165 length])
        {
          goto LABEL_136;
        }

        if (![v60 length])
        {
LABEL_134:
          v61 = 0;
        }

        else
        {
          v61 = [v59 isEqualToString:v60] ^ 1;
        }

        if (((v58 | v61) & 1) == 0)
        {
LABEL_137:
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v15)
          {
            CFRelease(v15);
          }

          if (v172)
          {
            CFRelease(v172);
            v172 = 0;
          }

          if (v171)
          {
            CFRelease(v171);
            v171 = 0;
          }

          if (v167)
          {
            CFRelease(v167);
            v167 = 0;
          }

          if (v170)
          {
            CFRelease(v170);
            v170 = 0;
          }

          if (v169)
          {
            CFRelease(v169);
            v169 = 0;
          }

          if (v168)
          {
            CFRelease(v168);
            v168 = 0;
          }

          if (v166)
          {
            CFRelease(v166);
            v166 = 0;
          }

          if (v164)
          {
            CFRelease(v164);
            v164 = 0;
          }

          if (v163)
          {
            CFRelease(v163);
            v163 = 0;
          }

          if (v161)
          {
            CFRelease(v161);
            v161 = 0;
          }

          if (v159)
          {
            CFRelease(v159);
            v159 = 0;
          }

          if (v158)
          {
            CFRelease(v158);
          }

          goto LABEL_165;
        }

LABEL_136:
        v115 = v118;
        v116 = v117;
        v113 = v8;
        v114 = v121;
        v111 = v126;
        v112 = v119;
        v109 = v122;
        v110 = v132;
        v107 = v123;
        v108 = v147;
        v105 = v135;
        v106 = v133;
        v103 = v124;
        v104 = v120;
        v101 = v140;
        v102 = v128;
        v99 = v136;
        v100 = v138;
        v97 = v134;
        v98 = v139;
        IMDChatRecordBulkUpdate();
        goto LABEL_137;
      }
    }

    else
    {
      v121 = 0;
      if (!v8)
      {
        goto LABEL_13;
      }
    }

    if (![a1 autoDonationBehaviorLastModificationDate])
    {
      v13 = IMLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D65C0(v13);
      }
    }

    goto LABEL_13;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Attempted to create IMDChatRecordRef from NIL IMDChat.", buf, 2u);
    }
  }

  return 0;
}

uint64_t ClientConnectionManager.broadcasterForChatListeners(usingBlackholeRegistry:)(char a1)
{
  v3 = IMGetDaemonListenerProtocol();
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = v1;
    *(v4 + 32) = xmmword_22B7FDFB0;
    v5 = objc_allocWithZone(MEMORY[0x277D1AA20]);
    v14 = sub_22B4D5CD8;
    v15 = v4;
    aBlock = MEMORY[0x277D85DD0];
    v11 = 1107296256;
    v12 = sub_22B4D1BA8;
    v13 = &unk_283F20168;
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = v1;
    *(v8 + 32) = xmmword_22B7F87F0;
    v5 = objc_allocWithZone(MEMORY[0x277D1AA20]);
    v14 = sub_22B4D5CD8;
    v15 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v11 = 1107296256;
    v12 = sub_22B4D1BA8;
    v13 = &unk_283F20118;
  }

  v6 = _Block_copy(&aBlock);
  v7 = v1;
  [v5 initWithProtocol:v3 forwardingHandler:v6];

  _Block_release(v6);

  return swift_dynamicCastObjCProtocolUnconditional();
}

uint64_t _ChatPropertiesIsLogicallyAnUpdate(void *a1, void *a2)
{
  v4 = *MEMORY[0x277D198C8];
  v5 = [a1 objectForKey:*MEMORY[0x277D198C8]];
  v6 = [a2 objectForKey:v4];
  v7 = v6;
  if (v5 | v6)
  {
    if (v5 && v6 == 0)
    {
      return 1;
    }

    if (v5 || v6 == 0)
    {
      v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v5];
      v14 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v7];
      v15 = [v13 isSubsetOfSet:v14];

      if (!v15)
      {
        return 1;
      }
    }
  }

  v8 = [a1 mutableCopy];
  v9 = [a2 mutableCopy];
  if (v5)
  {
    [v8 removeObjectForKey:v4];
  }

  if (v7)
  {
    [v9 removeObjectForKey:v4];
  }

  if (v8 != v9 && ([v8 count] || objc_msgSend(v9, "count")))
  {
    v10 = [v8 isEqualToDictionary:v9] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void *sub_22B4DD814@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_22B4DD840(void *a1, uint64_t *a2)
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

uint64_t sub_22B4DD934@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22B7DB6A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22B4DD960()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4DD9A8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4DD9F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22B4DDAA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B4DDB48(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22B6F0AD4(&qword_27D8CD5D0, &qword_22B7F9518);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22B4DDC04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22B6F0AD4(&qword_27D8CD5D0, &qword_22B7F9518);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B4DDCB4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DDCEC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4DDD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_22B7DA968();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_22B4DDDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_22B7DA968();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_22B4DDE24()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DDE5C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22B4DDE6C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22B4DDE8C()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7, vars0, vars8;

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B4DDED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22B7DABE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_22B7DAB98();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_22B4DDFC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22B7DABE8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_22B7DAB98();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_22B4DE0C0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DE0F8()
{
  MEMORY[0x231898E50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DE140(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8, vars0, vars8;

  return MEMORY[0x2821FE8E8](v8, 24, 7);
}

uint64_t sub_22B4DE178()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4DE1CC()
{
  v1 = sub_22B6F0AD4(&unk_27D8CD790, &unk_22B7FD0B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B4DE260()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DE298()
{
  MEMORY[0x231898E50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DE2D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4DE314@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>, unint64_t a3@<X1>)
{
  result = sub_22B715158(*a1, a3);
  *a2 = result;
  return result;
}

unint64_t sub_22B4DE340@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_22B71518C(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

unint64_t sub_22B4DE3B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_22B714034(*a2, *a1, a1[1]);
  *a3 = result;
  return result;
}

uint64_t sub_22B4DE3F0(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a1;
  sub_22B713BE0(*a1);
  return sub_22B71411C(v4, v3, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22B4DE44C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_22B4DE494@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

uint64_t sub_22B4DE54C()
{
  swift_unknownObjectRelease();

  *(v0 + 48), v1, v2, v3, v4, v5, v6, v7, vars0, vars8;

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B4DE5A8()
{

  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7, vars0, vars8;
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B4DE5F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4DE630()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4DE670()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DE6A8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4DE6F0()
{
  swift_unknownObjectRelease();
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7, vars0, vars8;
  *(v0 + 48), v8, v9, v10, v11, v12, v13, v14, vars0a, vars8a;

  *(v0 + 72), v15, v16, v17, v18, v19, v20, v21, vars0b, vars8b;

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22B4DE748(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&qword_27D8CE628, &unk_22B7FA700);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B4DE7C0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22B6F0AD4(&qword_27D8CE628, &unk_22B7FA700);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22B4DE850()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4DE898()
{
  v1 = sub_22B6F0AD4(&qword_27D8CE650, qword_22B7FA7B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B4DE938()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DE97C()
{

  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7, vars0, vars8;

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4DE9CC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DEA08()
{
  MEMORY[0x231898E50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DEA44()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4DEA84()
{

  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7, vars0, vars8;

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4DEAC4()
{

  sub_22B4CFB78((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22B4DEB08()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DEB40()
{
  MEMORY[0x231898E50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DEB78()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B4DEBC4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4DEC10()
{
  v1 = sub_22B7DA828();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_22B6F0AD4(&qword_27D8CEB50, qword_22B7FB100);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  *(v0 + 32), v12, v13, v14, v15, v16, v17, v18, v20, v21;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_22B4DED74()
{
  MEMORY[0x231898E50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DEDAC()
{
  swift_unknownObjectRelease();
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7, vars0, vars8;

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B4DEDF4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *sub_22B4DEE3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22B75A780();
  *a1 = result;
  return result;
}

uint64_t sub_22B4DEE68()
{
  swift_unknownObjectRelease();

  *(v0 + 48), v1, v2, v3, v4, v5, v6, v7, vars0, vars8;

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B4DEEB0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  *(v0 + 56), v1, v2, v3, v4, v5, v6, v7, vars0, vars8;

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22B4DEF1C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DEF54()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22B4DEF9C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DEFD8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_22B4DF018@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 runResult];
  *a2 = result;
  return result;
}

id sub_22B4DF060@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 status];
  *a2 = result;
  return result;
}

uint64_t sub_22B4DF0C4(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 24);
  if (v9)
  {
    v9, a2, a3, a4, a5, a6, a7, a8, vars0, vars8;
  }

  return MEMORY[0x2821FE8E8](v8, 56, 7);
}

uint64_t sub_22B4DF108()
{

  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7, vars0, vars8;

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B4DF160(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8, vars0, vars8;

  return MEMORY[0x2821FE8E8](v8, 56, 7);
}

uint64_t sub_22B4DF1A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B4DF1E8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DF230()
{
  v1 = sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22B4DF2E0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4DF320()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DF358()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4DF390()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4DF3D8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4DF418()
{
  _Block_release(*(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22B4DF484()
{
  v1 = sub_22B7DAD98();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  *(v0 + 40), v6, v7, v8, v9, v10, v11, v12, v14, v15;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22B4DF564()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4DF5AC(uint64_t *a1)
{
  type metadata accessor for MultimapValues(255, *a1, a1[1], a1[2]);

  return swift_getWitnessTable();
}

uint64_t sub_22B4DF5F8(void *a1)
{
  sub_22B7DB998();

  return swift_getWitnessTable();
}

uint64_t sub_22B4DF640(uint64_t a1)
{
  sub_22B7DB998();

  return swift_getWitnessTable();
}

uint64_t sub_22B4DF6DC()
{
  swift_unknownObjectRelease();
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7, vars0, vars8;

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B4DF72C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4DF774()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4DF7AC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DF7FC()
{
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DF834(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8, vars0, vars8;

  return MEMORY[0x2821FE8E8](v8, 24, 7);
}

uint64_t sub_22B4DF86C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DF8A4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B4DF8F4(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8, vars0, vars8;

  return MEMORY[0x2821FE8E8](v8, 32, 7);
}

uint64_t sub_22B4DF92C()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7, vars0, vars8;

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B4DFB0C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22B4DFB24()
{
  swift_unknownObjectRelease();
  sub_22B4CFB78((v0 + 32));
  sub_22B4CFB78((v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

id sub_22B4DFB74@<X0>(void *a2@<X8>)
{
  result = [swift_getObjCClassFromMetadata() pTaskQueryProvider];
  *a2 = result;
  return result;
}

uint64_t sub_22B4DFBB4(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8, vars0, vars8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15, vars0a, vars8a;

  return MEMORY[0x2821FE8E8](v8, 32, 7);
}

uint64_t sub_22B4DFC30()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DFC74()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DFCAC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DFCE4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4DFD24()
{
  MEMORY[0x231898E50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DFD5C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B4DFDA4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4DFDF8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22B7DA968();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22B4DFEA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22B7DA968();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B4DFF48()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DFF80(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8, vars0, vars8;

  return MEMORY[0x2821FE8E8](v8, 56, 7);
}

uint64_t sub_22B4DFFC8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4E0008()
{

  *(v0 + 48), v1, v2, v3, v4, v5, v6, v7, vars0, vars8;
  *(v0 + 64), v8, v9, v10, v11, v12, v13, v14, vars0a, vars8a;
  *(v0 + 80), v15, v16, v17, v18, v19, v20, v21, vars0b, vars8b;
  *(v0 + 96), v22, v23, v24, v25, v26, v27, v28, vars0c, vars8c;

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_22B4E0068(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8, vars0, vars8;

  return MEMORY[0x2821FE8E8](v8, 24, 7);
}

uint64_t sub_22B4E013C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22B7DA5C8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22B4E01E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22B7DA5C8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B4E02D0()
{
  swift_unknownObjectRelease();
  sub_22B4CFB78((v0 + 32));
  sub_22B4CFB78((v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_22B4E0318()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4E0350()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4E03F4()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_22B4E042C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4E0488()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *sub_22B4E04CC@<X0>(void *a1@<X8>)
{
  sub_22B6F0AD4(&qword_27D8CEF00, &qword_22B7FBAD0);
  result = sub_22B7DACB8();
  *a1 = v3;
  return result;
}

uint64_t sub_22B4E0598()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B4E05E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4E061C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4E0664()
{
  v1 = sub_22B6F0AD4(&qword_27D8CFB68, &qword_22B7FE2E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B4E073C()
{
  MEMORY[0x231898E50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4E0774()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_22B4E08F4@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 version];
  *a2 = result;
  return result;
}

void sub_22B4E14A4(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_22B4E1538;
  v3[3] = &unk_2787028B0;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void sub_22B4E1538(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) group];

  if (v2)
  {
    v3 = [*(a1 + 32) group];
    dispatch_group_leave(v3);
  }
}

__CFString *sub_22B4E3C10(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid Ingestion State: %ld", a1];
  }

  else
  {
    v2 = off_278702900[a1];
  }

  return v2;
}

void sub_22B4E6010(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B4E5F84);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22B4E6638(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_22B4E67C8()
{
  v0 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v1 = [v0 objectForKey:@"read-receipt-tracking"];
  v2 = [v1 BOOLValue];

  if (v2)
  {
    return 0;
  }

  v4 = [MEMORY[0x277D19268] sharedInstance];
  v5 = [v4 isInternalInstall];

  return v5;
}

uint64_t sub_22B4E7574()
{
  qword_281420EC8 = objc_alloc_init(IMDSpamCheckRequeryTracker);

  return MEMORY[0x2821F96F8]();
}

void sub_22B4E7E40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTracker];
}

void sub_22B4E83C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B4E8490;
  v7[3] = &unk_2787029C8;
  v11 = a2;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void sub_22B4E8490(uint64_t a1)
{
  if (*(a1 + 56) == 2)
  {
    v2 = +[IMDSpamFilteringHelper sharedHelper];
    [v2 presentDebugUI];

    v3 = +[IMDSpamFilteringHelper sharedHelper];
    v4 = [*(a1 + 32) serviceName];
    [v3 recordJunkMetricsForSpamDetectionSource:1 service:v4];

    [*(a1 + 32) setSpamDetectionSource:1];
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) guid];
    [v5 setSpamDetectedMessage:v6];

    [*(a1 + 32) updateIsFiltered:2];
  }

  if (*(a1 + 48))
  {
    [*(a1 + 40) setSpamModelMetadata:?];
    v8 = +[IMDMessageStore sharedInstance];
    v7 = [v8 storeMessage:*(a1 + 40) forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0];
  }
}

uint64_t sub_22B4E9008()
{
  qword_281420F58 = objc_alloc_init(IMDAccountController);

  return MEMORY[0x2821F96F8]();
}

BOOL sub_22B4EBF10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 service];
  if (v4 == *(a1 + 32))
  {
    v6 = [v3 loginID];
    v5 = [v6 caseInsensitiveCompare:*(a1 + 40)] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL sub_22B4EC2C4(uint64_t a1, void *a2)
{
  v3 = [a2 service];
  v4 = v3 == *(a1 + 32);

  return v4;
}

BOOL sub_22B4EC3D4(uint64_t a1, void *a2)
{
  v3 = [a2 service];
  v4 = v3 == *(a1 + 32);

  return v4;
}

uint64_t sub_22B4EC4E4(uint64_t a1, void *a2)
{
  v3 = [a2 service];
  v4 = [v3 supportsCapability:*(a1 + 32)];

  return v4;
}

BOOL sub_22B4EC9EC(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = 0;
  if ([v2 isActive])
  {
    [v2 createSessionIfNecessary];
    v3 = [v2 session];

    if (v3)
    {
      v4 = 1;
    }
  }

  return v4;
}

uint64_t sub_22B4EEF6C()
{
  qword_281421290 = os_log_create("com.apple.Messages", "IMDCKUtilities");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B4EF168(uint64_t a1)
{
  qword_281420F60 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

void sub_22B4EF4E0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v9 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"NO";
      if (v2)
      {
        v5 = @"YES";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "key roll pending check returned: %@", &v7, 0xCu);
    }
  }

  if (v2)
  {
    [*(a1 + 32) setErrorToKeyRollingError];
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v7) = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Added key roll pending error to sync state", &v7, 2u);
      }
    }
  }
}

uint64_t sub_22B4EFA48(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 ^ 1u);
  }

  return result;
}

void sub_22B4F0108(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (a2)
      {
        v7 = @"YES";
      }

      *buf = 138412546;
      v20 = v7;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "isFirstSyncWithCompletion for checking account storage: %@, error: %@", buf, 0x16u);
    }
  }

  v8 = *(a1 + 32);
  if (v5)
  {
    if (v8)
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = [v5 domain];
      v11 = [v5 code];
      v17 = *MEMORY[0x277CCA450];
      v18 = @"Is first sync check failed";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v13 = [v9 errorWithDomain:v10 code:v11 userInfo:v12];
      (*(v8 + 16))(v8, 0, 0, v13);
    }
  }

  else if (a2)
  {
    if (v8)
    {
      v14 = +[IMDCKUtilities sharedInstance];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = sub_22B4F0370;
      v15[3] = &unk_278702B70;
      v16 = *(a1 + 32);
      [v14 checkiCloudQuota:v15];
    }
  }

  else if (v8)
  {
    (*(v8 + 16))(*(a1 + 32), 0, 0, 0);
  }
}

void sub_22B4F04F0(uint64_t a1, unint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = 134218242;
      v12 = a2;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "User quota completion block return with available Quota %llu, and Error: %@", &v11, 0x16u);
    }
  }

  if (v5)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, 0, v5);
    }
  }

  else
  {
    v8 = [*(a1 + 32) currentStorageOnDevice];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = 134218240;
        v12 = a2;
        v13 = 2048;
        v14 = v8;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Available Quota in bytes:  and message database size: %llu, %llu", &v11, 0x16u);
      }
    }

    v10 = *(a1 + 40);
    if (v8 <= a2)
    {
      if (v10)
      {
        (*(v10 + 16))(v10, 0, 0, 0);
      }
    }

    else if (v10)
    {
      (*(v10 + 16))(v10, v8 - a2, 0, 0);
    }
  }
}

void sub_22B4F09CC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B4F091CLL);
  }

  _Unwind_Resume(a1);
}

void sub_22B4F0CF4(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Setting cloudkit enabled, exit record state: %@, error (%@)", buf, 0x16u);
    }
  }

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v16 = v6;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Unable to request exit record when trying to change iCloud enabled state.  Error: %@", buf, 0xCu);
      }
    }

    v9 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v9 autoBugCaptureWithSubType:@"setCloudKitEnabled" errorPayload:v6];

    [*(a1 + 32) _didAttemptToUpdateCloudKitEnablementTo:*(a1 + 40) result:0];
  }

  else if (v5)
  {
    v10 = +[IMDCKExitManager sharedInstance];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22B4F0F40;
    v13[3] = &unk_278702BC0;
    v13[4] = *(a1 + 32);
    v14 = *(a1 + 40);
    [v10 deleteExitRecordWithCompletion:v13];
  }

  else
  {
    v12 = *(a1 + 32);
    v11 = a1 + 32;
    [v12 setCloudKitSyncingEnabled:*(v11 + 8)];
    [*v11 _didAttemptToUpdateCloudKitEnablementTo:*(v11 + 8) result:1];
  }
}

void sub_22B4F0F40(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) setCloudKitSyncingEnabled:*(a1 + 40)];
    [*(a1 + 32) _didAttemptToUpdateCloudKitEnablementTo:*(a1 + 40) result:1];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Unable to delete exit record when trying to change iCloud enabled state.  Error: %@", &v8, 0xCu);
      }
    }

    v7 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v7 autoBugCaptureWithSubType:@"setCloudKitEnabled" errorPayload:v5];

    [*(a1 + 32) _didAttemptToUpdateCloudKitEnablementTo:*(a1 + 40) result:0];
  }
}

uint64_t sub_22B4F258C()
{
  qword_281421300 = dispatch_queue_create("com.apple.private.IMDCKUtilitiesInternal", 0);

  return MEMORY[0x2821F96F8]();
}

void sub_22B4F2904(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22B4F299C;
  v4[3] = &unk_278702C28;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 fetchCloudKitAccountStatusWithCompletion:v4];
}

void sub_22B4F299C(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Return account validForCD with error: %@ accountStatus: %@", &v8, 0x16u);
    }
  }

  if (!v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2 == 4;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

objc_class *sub_22B4F2B1C()
{
  result = MEMORY[0x231897B40](@"AKAppleIDAuthenticationController", @"AuthKit");
  if (result)
  {
    qword_2814213D8 = objc_alloc_init(result);

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

void sub_22B4F2F4C(uint64_t a1, unint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (a2 > 4)
      {
        v8 = 0;
      }

      else
      {
        v8 = off_278702EC0[a2];
      }

      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Fetched cloud kit account status: %@, error: %@", &v11, 0x16u);
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (a2 > 4)
      {
        v9 = 0;
      }

      else
      {
        v9 = off_278702EC0[a2];
      }

      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Fetched cloud kit account status: %@", &v11, 0xCu);
    }
  }

LABEL_16:
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v5);
  }
}

__CFString *NSStringFromIMDCKAccountStatus(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_278702EC0[a1];
  }
}

void sub_22B4F3118(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v34 = v5;
      v35 = 2112;
      v36 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "accountInfoWithCompletionHandler called with accountInfo %@, error %@", buf, 0x16u);
    }
  }

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v34 = v6;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Checking for cloudkit account info failed with error: %@ ", buf, 0xCu);
      }
    }

    goto LABEL_10;
  }

  v9 = [MEMORY[0x277D1A990] sharedInstance];
  v10 = [v9 getBoolFromDomain:*MEMORY[0x277D19A08] forKey:@"ForceInvalidCredentials"];

  v11 = [MEMORY[0x277D19268] sharedInstance];
  v12 = [v11 isInternalInstall];

  if ((v12 & v10) != 0)
  {
    v13 = [*(a1 + 32) syncState];
    [v13 removeObjectFromAnalyticSyncDatesDictionaryForKey:*MEMORY[0x277D19B00]];

    (*(*(a1 + 40) + 16))();
    goto LABEL_13;
  }

  v14 = [v5 accountStatus];
  if (v14 > 2)
  {
    if (v14 == 3)
    {
LABEL_10:
      (*(*(a1 + 40) + 16))();
      goto LABEL_13;
    }

    if (v14 != 4)
    {
      goto LABEL_39;
    }
  }

  else if ((v14 - 1) >= 2)
  {
    if (!v14)
    {
      v15 = [*(a1 + 32) _createAccountError:@"failed fetching account status"];
      (*(*(a1 + 40) + 16))();

      goto LABEL_13;
    }

LABEL_39:
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = [v5 accountStatus];
        *buf = 134217984;
        v34 = v29;
        _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Unrecognized account status %ld", buf, 0xCu);
      }
    }

    v30 = *(a1 + 32);
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unrecognized account status %ld", objc_msgSend(v5, "accountStatus")];
    v32 = [v30 _createAccountError:v31];

    (*(*(a1 + 40) + 16))();
    goto LABEL_13;
  }

  v16 = [*(a1 + 32) _checkEligibilityWithAccountInfo:v5];
  v17 = [v5 accountPartition];
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = @"NO";
      if (v16)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      if (v17 == 2)
      {
        v19 = @"YES";
      }

      *buf = 138412546;
      v34 = v20;
      v35 = 2112;
      v36 = v19;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Checking for cloudkit eligibility returned: %@ inCarry: %@", buf, 0x16u);
    }
  }

  v21 = v17 == 2;
  v22 = [MEMORY[0x277D1AAA8] sharedInstance];
  v23 = v22;
  if (v21)
  {
    v24 = &unk_283F4E450;
  }

  else
  {
    v24 = &unk_283F4E420;
  }

  [v22 trackEvent:*MEMORY[0x277D1A0C8] withCount:v24];

  v25 = [v5 hasValidCredentials];
  v26 = *(a1 + 40);
  if (v25)
  {
    if (v16)
    {
      v27 = 4;
    }

    else
    {
      v27 = 3;
    }

    (*(v26 + 16))(v26, v27, 0);
  }

  else
  {
    (*(v26 + 16))(v26, 2, 0);
  }

LABEL_13:
}

void sub_22B4F3600(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B4F36D8;
  block[3] = &unk_278702CC8;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_22B4F36F0()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 objectForKey:@"ck-account-repair-override"];

  if (v1 && [v1 BOOLValue])
  {
    byte_27D8CFD00 = 1;
  }

  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      if (byte_27D8CFD00)
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "account needs repair override is: %@", &v4, 0xCu);
    }
  }
}

void sub_22B4F3C10(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Not checking account for needed repair because fetching account status returned an error: %@", &v10, 0xCu);
      }
    }
  }

  else
  {
    v7 = [*(a1 + 32) syncState];
    [v7 _startBatchChange];
    [v7 setAccountStatus:a2];
    [v7 setEligibleForTruthZone:a2 == 4];
    [*(a1 + 32) _setEligibleToToggleMiCSwitch:a2 == 4];
    if ([*(a1 + 32) shouldRepairAccountWithAccountStatus:a2 securityLevel:*(a1 + 48)])
    {
      v8 = [*(a1 + 32) syncState];
      [v8 setErrorToAccountNeedsRepair];
    }

    [v7 _finishBatchChange];
    [v7 broadcastSyncState];
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }
}

uint64_t sub_22B4F44A8()
{
  result = MEMORY[0x231897B40](@"LSApplicationWorkspace", @"CoreServices");
  qword_27D8CFD08 = result;
  return result;
}

void sub_22B4F44D8(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![v3 response])
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277D07DB0] sharedInstance];
    v6 = [v5 productBuildVersion];
    v7 = [v4 stringWithFormat:@"TTR:%@ MoIC Sync Fail %@", v6, *(a1 + 32)];

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"tap-to-radar://new?Title=%@&ComponentID=644010&ComponentName=Messages Frameworks&ComponentVersion=iOS&Classification=Serious Bug&Description=%@&Reproducibility=I Didn't Try", v7, v7];
    v9 = [v8 stringByAddingURLEscapes];

    v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v14 = v10;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "User tapped file a radar. Opening URL %@", buf, 0xCu);
      }
    }

    v12 = [qword_27D8CFD08 defaultWorkspace];
    [v12 openURL:v10 configuration:0 completionHandler:0];
  }
}

objc_class *sub_22B4F4AF0()
{
  result = MEMORY[0x231897B40](@"ACAccountStore", @"AppleAccount");
  if (result)
  {
    qword_2814213E8 = objc_alloc_init(result);

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

void sub_22B4F4F0C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v9 = 0;
        v6 = "Error saving enabling for kAccountDataclassMessages.";
        v7 = &v9;
LABEL_8:
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, v6, v7, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (v4)
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 0;
      v6 = "Success saving enabling for kAccountDataclassMessages.";
      v7 = &v8;
      goto LABEL_8;
    }

LABEL_9:
  }
}

void sub_22B4F509C(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v6 localizedDescription];
      v10 = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Found primary account: %@ error: %@", &v10, 0x16u);
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

void sub_22B4F5268(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 localizedDescription];
        v13 = 138412290;
        v14 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "fetchiCloudAccountPersonID returning with error: %@", &v13, 0xCu);
      }
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, v6);
    }
  }

  else
  {
    v10 = [*(a1 + 32) _personIdFromAccount:v5];
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v10;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Found DSID: %@", &v13, 0xCu);
      }
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, v10, 0);
    }
  }
}

void sub_22B4F54E0(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 isEnabledForDataclass:*MEMORY[0x277CB90C8]];
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"NO";
      if (v7)
      {
        v9 = @"YES";
      }

      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Account has backup enabled: %@", &v10, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_22B4F562C()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 objectForKey:@"ck-sync-paused"];

  if (v1 && [v1 BOOLValue])
  {
    byte_27D8CFD18 = 1;
  }

  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      if (byte_27D8CFD18)
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Is syncing paused override: %@", &v4, 0xCu);
    }
  }
}

void sub_22B4F6160(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 response];
  v5 = IMOSLoggingEnabled();
  if (v4)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "User chose to show pop up before sending logs", v9, 2u);
      }
    }
  }

  else if (v5)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "User chose to always auto send logs", buf, 2u);
    }
  }

  IMSetDomainIntForKey();
  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

uint64_t (*sub_22B4F6F80())(void, void, void, void)
{
  result = MEMORY[0x231897B50]("PLLogRegisteredEvent", @"PowerLog");
  off_27D8CFD20 = result;
  return result;
}

uint64_t (*sub_22B4F72AC())(void, void, void, void)
{
  result = MEMORY[0x231897B50]("PLLogRegisteredEvent", @"PowerLog");
  off_27D8CFD30 = result;
  return result;
}

void sub_22B4F7334()
{
  v4 = *MEMORY[0x277D85DE8];
  off_281421478 = MEMORY[0x231897B50]("PCSReportKeyRollPending", @"ProtectedCloudStorage");
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      if (off_281421478)
      {
        v1 = @"YES";
      }

      else
      {
        v1 = @"NO";
      }

      v2 = 138412290;
      v3 = v1;
      _os_log_impl(&dword_22B4CC000, v0, OS_LOG_TYPE_INFO, "Linked linkedPCSReportKeyRollPending ok: %@", &v2, 0xCu);
    }
  }
}

uint64_t sub_22B4F75E8(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    if (*(result + 32))
    {
      *(v1 + 24) = 1;
      return (*(*(result + 32) + 16))();
    }
  }

  return result;
}

void sub_22B4F7620(uint64_t a1)
{
  v2 = [*(a1 + 32) PCSKeyRollPending];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B4F76CC;
  block[3] = &unk_278702E28;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  v7 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t sub_22B4F76CC(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    if (*(result + 32))
    {
      *(v1 + 24) = 1;
      return (*(*(result + 32) + 16))(*(result + 32), *(result + 48));
    }
  }

  return result;
}

void sub_22B4F77E8()
{
  v4 = *MEMORY[0x277D85DE8];
  off_27D8CFD40 = MEMORY[0x231897B50]("PCSReportManateeStatus", @"ProtectedCloudStorage");
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      if (off_27D8CFD40)
      {
        v1 = @"YES";
      }

      else
      {
        v1 = @"NO";
      }

      v2 = 138412290;
      v3 = v1;
      _os_log_impl(&dword_22B4CC000, v0, OS_LOG_TYPE_INFO, "Linked linkedPCSReportManateeStatus ok: %@", &v2, 0xCu);
    }
  }
}

uint64_t sub_22B4F7A9C(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    if (*(result + 32))
    {
      *(v1 + 24) = 1;
      return (*(*(result + 32) + 16))();
    }
  }

  return result;
}

void sub_22B4F7AD4(uint64_t a1)
{
  v2 = [*(a1 + 32) PCSReportManateeStatus];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B4F7B80;
  block[3] = &unk_278702E78;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  v7 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t sub_22B4F7B80(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    if (*(result + 32))
    {
      *(v1 + 24) = 1;
      return (*(*(result + 32) + 16))(*(result + 32), *(result + 48));
    }
  }

  return result;
}

void *sub_22B4F7BBC()
{
  result = MEMORY[0x231897B40](@"AKAccountManager", @"AuthKit");
  if (result)
  {
    qword_281421400 = [result sharedInstance];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

void sub_22B4F8970(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 40) + 8) + 24) = a2 == 4;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Not eligible for truth zone", v7, 2u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_22B4F8A80()
{
  result = IMGetDomainBoolForKey();
  byte_27D8CFD50 = result;
  return result;
}

void sub_22B4F8C0C(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) setCloudKitSyncingEnabled:1];
    v6 = +[IMDCKBackupController sharedInstance];
    [v6 setICloudBackupsDisabled:0];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Unable to request exit record when trying to disable all devices. Error: %@", &v10, 0xCu);
      }
    }

    v8 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v8 autoBugCaptureWithSubType:@"DisableAllDevices" errorPayload:v5];
  }

  IMSetDomainBoolForKey();
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, a2);
  }
}

void sub_22B4F8DC8()
{
  if (!qword_27D8CFD60)
  {
    v1 = MEMORY[0x231897B50]("AKAuthenticationSecurityLevelKey", @"AuthKit");
    if (v1)
    {
      v2 = *v1;
    }

    else
    {
      v2 = 0;
    }

    objc_storeStrong(&qword_27D8CFD60, v2);
  }
}

uint64_t sub_22B4F8E6C()
{
  v0 = objc_alloc(MEMORY[0x277D186C8]);
  qword_2814213A8 = [v0 initWithService:*MEMORY[0x277D186B0]];

  return MEMORY[0x2821F96F8]();
}

void sub_22B4F9594(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

id sub_22B4F9B4C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v14.receiver = a1;
  v14.super_class = &off_283F92618;
  v5 = objc_msgSendSuper2(&v14, sel_init);
  if (v5)
  {
    v6 = [v4 chatIdentifier];
    [v5 setChatIdentifier:v6];

    if ([v4 chatStyle])
    {
      if ([v4 chatStyle] == 1)
      {
        v7 = 45;
      }

      else
      {
        v7 = 43;
      }

      [v5 setChatStyle:v7];
    }

    v8 = [v4 senderLastAddressedHandle];
    [v5 setSenderLastAddressedHandle:v8];

    v9 = [v4 senderLastAddressedSIMID];
    v10 = [v9 UUIDString];
    [v5 setSenderLastAddressedSIMID:v10];

    v11 = [v4 lastUsedServiceName];
    [v5 setLastUsedServiceName:v11];

    v12 = [v4 serviceOfLastMessage];
    [v5 setServiceOfLastMessage:v12];

    [v5 setConversationWasDowngraded:{objc_msgSend(v4, "conversationWasDowngraded")}];
    [v5 setHasConversationHistory:{objc_msgSend(v4, "hasConversationHistory")}];
    [v5 setShouldForceServerStatusRefresh:{objc_msgSend(v4, "shouldForceServerStatusRefresh")}];
    [v5 setForceMMS:{objc_msgSend(v4, "forceMMS")}];
    [v5 setIsForPendingConversation:{objc_msgSend(v4, "isForPendingConversation")}];
    [v5 setRequestPersistentMenu:{objc_msgSend(v4, "requestPersistentMenu")}];
    [v5 setRequestBrandInfo:{objc_msgSend(v4, "requestBrandInfo")}];
  }

  return v5;
}

id IMDMessageStoreLogHandle(uint64_t a1)
{
  if (qword_27D8CFD78 != -1)
  {
    sub_22B7CF9B0();
  }

  v2 = qword_27D8CFD70;

  return v2;
}

uint64_t sub_22B4FB0F0()
{
  qword_27D8CFD70 = os_log_create("com.apple.Messages", "IMDMessageStore");

  return MEMORY[0x2821F96F8]();
}

id IMDChatLogHandle(uint64_t a1)
{
  if (qword_27D8CFD88 != -1)
  {
    sub_22B7CF9C4();
  }

  v2 = qword_27D8CFD80;

  return v2;
}

uint64_t sub_22B4FB178()
{
  qword_27D8CFD80 = os_log_create("com.apple.Messages", "IMDChat");

  return MEMORY[0x2821F96F8]();
}

id IMDTelephonyServiceLogHandle(uint64_t a1)
{
  if (qword_27D8CFD98 != -1)
  {
    sub_22B7CF9D8();
  }

  v2 = qword_27D8CFD90;

  return v2;
}

uint64_t sub_22B4FB200()
{
  qword_27D8CFD90 = os_log_create("com.apple.Messages", "TelephonyService");

  return MEMORY[0x2821F96F8]();
}

id IMMutedChatListRebuildLogHandle(uint64_t a1)
{
  if (qword_27D8CFDA8 != -1)
  {
    sub_22B7CF9EC();
  }

  v2 = qword_27D8CFDA0;

  return v2;
}

uint64_t sub_22B4FB288()
{
  qword_27D8CFDA0 = os_log_create("com.apple.Messages", "MutedChatList+Rebuild");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B4FC188()
{
  qword_27D8CFDB0 = objc_alloc_init(IMPendingReplicatedMessageCache);

  return MEMORY[0x2821F96F8]();
}

void sub_22B4FC380(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pendingMessages];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      *buf = 138412290;
      v25 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Attempting to cache pending replicated message %@ but one is already present", buf, 0xCu);
    }
  }

  v6 = objc_alloc_init(IMPendingReplicatedMessage);
  [(IMPendingReplicatedMessage *)v6 setMessageGUID:*(a1 + 40)];
  [(IMPendingReplicatedMessage *)v6 setReplicatedFallbackGUIDs:*(a1 + 48)];
  [(IMPendingReplicatedMessage *)v6 setReleaseBlock:*(a1 + 56)];
  v7 = [MEMORY[0x277CBEAA8] now];
  [(IMPendingReplicatedMessage *)v6 setDate:v7];

  v8 = [*(a1 + 32) pendingMessages];
  [v8 setObject:v6 forKeyedSubscript:*(a1 + 40)];

  v9 = [*(a1 + 32) replicatedFallbackHistory];
  [v9 setObject:*(a1 + 40) forKey:*(a1 + 40)];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = *(a1 + 48);
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        v15 = [*(a1 + 32) pendingMessages];
        [v15 setObject:v6 forKeyedSubscript:v14];

        v16 = [*(a1 + 32) replicatedFallbackHistory];
        [v16 setObject:*(a1 + 40) forKey:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 40);
      *buf = 138412290;
      v25 = v18;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Caching pending replicated message %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) _enforceCacheLimit];
  [*(a1 + 32) _scheduleTimeout];
}

void sub_22B4FC7BC(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pendingMessages];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 40);
        *buf = 138412290;
        v18 = v6;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Releasing pending replicated message %@", buf, 0xCu);
      }
    }

    v7 = *(a1 + 32);
    v8 = [v3 messageGUID];
    [v7 _removePendingMessageWithGUID:v8];

    v9 = [v3 releaseBlock];
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_22B4FCA08;
    v15[3] = &unk_2787028D8;
    v16 = *(a1 + 64);
    (v9)[2](v9, v10, v11, v15);
  }

  else
  {
    if (v4)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 40);
        *buf = 138412290;
        v18 = v13;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Attempted to release pending replicated message %@ but no message pending", buf, 0xCu);
      }
    }

    v14 = *(a1 + 64);
    if (v14)
    {
      (*(v14 + 16))(v14, 0);
    }
  }
}

void sub_22B4FCC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B4FCC20(uint64_t a1)
{
  v5 = [*(a1 + 32) replicatedFallbackHistory];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_22B4FD044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22B4FD060(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B4FD0F4;
  block[3] = &unk_278702FF0;
  block[4] = WeakRetained;
  dispatch_async(v2, block);
}

void sub_22B4FD3E0(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v4 = [v9 date];
  [v4 timeIntervalSinceNow];
  v6 = v5;

  if (v6 < -7200.0)
  {
    v7 = *(a1 + 32);
    v8 = [v9 messageGUID];
    [v7 addObject:v8];
  }
}

void sub_22B5003B0(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _handleDeleteCommandWithMessageDictionary:*(a1 + 40)];
  v3 = v4;
  if (v4)
  {
    v4[2](v4);
    v3 = v4;
  }
}

void sub_22B500774(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) recoverChatsForCommandDictionary:*(a1 + 40)];
  v3 = v4;
  if (v4)
  {
    v4[2](v4);
    v3 = v4;
  }
}

void sub_22B500FF8(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v6 count:1];
  [v2 permanentlyDeletedRecoverableMessagesForChatsWithGUIDs:v5 deletedChatGUIDs:{v4, v6, v7}];
}

void sub_22B501BA4(void *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5016C4);
  }

  _Block_object_dispose(&v2, 8);
  JUMPOUT(0x22B501C24);
}

void sub_22B501BC4(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5015F0);
  }

  _Unwind_Resume(exc_buf);
}

void sub_22B501C2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsIndex:{objc_msgSend(v3, "messagePartIndex")}])
  {
    v4 = [v3 messagePartBody];

    if (v4)
    {
      v5 = [MEMORY[0x277D18EB0] database];
      v6 = [v3 messagePartBody];
      v7 = [*(a1 + 40) guid];
      [v5 storeRecoverableMessagePartWithBody:v6 forMessageWithGUID:v7 deleteDate:*(a1 + 48)];

      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Recently Deleted | Mardid: deleting message part: found no message-part body-text to store for recovery", v9, 2u);
      }
    }
  }
}

void sub_22B502318(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  v6 = +[IMDServiceController sharedController];
  v7 = [v6 serviceWithName:v5];

  if (v7)
  {
    v8 = [*(a1 + 32) broadcasterForChatListenersForService:v7 withBlackholeStatus:0];
    [v8 recoveredMessagesFromRecentlyDeletedForChatsWithGUIDs:v9];
  }
}

uint64_t sub_22B502BA8(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 service];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = [v2 service];
  if ([v4 groupsMergeDisplayNames])
  {

LABEL_10:
    v9 = 1;
    goto LABEL_11;
  }

  v5 = [v2 displayName];
  v6 = [v5 length];

  if (!v6)
  {
    goto LABEL_10;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v2 guid];
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Rejecting chat %@ as it has a display name and service does not merge display names", &v11, 0xCu);
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

uint64_t sub_22B503118(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 guid];
  v4 = [v2 containsObject:v3];

  return v4;
}

void sub_22B503160(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  v6 = +[IMDServiceController sharedController];
  v7 = [v6 serviceWithName:v5];

  if (v7)
  {
    v8 = [*(a1 + 32) broadcasterForChatListenersForService:v7];
    [v8 historicalMessageGUIDsDeleted:v9 chatGUIDs:0 queryID:0];
  }
}

void -[IMDRelayDeletionController _blocklistIfNeededForChatDict:](IMDRelayDeletionController *self, SEL a2, id a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"wasReportedAsJunk"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:@"groupID"];
    if (v6)
    {
      v7 = [MEMORY[0x277D1A9E8] sharedInstance];
      [v7 blocklistGroupId:v6];

      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = 138412290;
          v10 = v6;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Blocklisted GroupID: %@", &v9, 0xCu);
        }

LABEL_10:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "IMDRelayDeletionController | Expected to blocklist chat for chatDict: %@ but groupID nil", &v9, 0xCu);
      }

      goto LABEL_10;
    }
  }
}

void sub_22B50453C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5044B0);
  }

  _Unwind_Resume(a1);
}

IMDOneTimeCodeManager *sub_22B504E68()
{
  result = objc_alloc_init(IMDOneTimeCodeManager);
  qword_281420F68 = result;
  return result;
}

void sub_22B504F9C(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  if (a2)
  {
    [a2 setAutoDeletionPreference:1];
  }

  objc_autoreleasePoolPop(v3);
}

void sub_22B504FE8(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  if (a2)
  {
    [a2 setAutoDeletionPreference:0];
  }

  objc_autoreleasePoolPop(v3);
}

void sub_22B505618(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Delete Verification Codes | Onboarding completed.", v11, 2u);
    }
  }

  if (a2 != 2)
  {
    if (a2 != 1)
    {
      if (a2)
      {
        if (IMOSLoggingEnabled())
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            LOWORD(v11[0]) = 0;
            _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Delete Verification Codes | Undefined response for onboarding. No action will be taken", v11, 2u);
          }
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v5 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
          {
            LOWORD(v11[0]) = 0;
            _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Delete Verification Codes | Keeping auto-filled verification codes", v11, 2u);
          }
        }

        [*(a1 + 32) setAutoDeletionPreference:0];
      }

      return;
    }

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11[0]) = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Delete Verification Codes | Moving auto-filled verification codes to Recently Deleted", v11, 2u);
      }
    }

    [*(a1 + 32) setAutoDeletionPreference:1];
    goto LABEL_19;
  }

  v7 = [*(a1 + 32) autoDeletionPreference];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11[0] = 67109120;
      v11[1] = v7;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Delete Verification Codes | Onboarding already presented before. Reading current deletion preference: %{BOOL}d", v11, 8u);
    }
  }

  if (v7)
  {
LABEL_19:
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11[0]) = 0;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Delete Verification Codes | Delete Verification Codes is enabled", v11, 2u);
      }
    }

    [*(a1 + 32) moveOneTimeCodeToRecentlyDeleted:*(a1 + 40)];
  }
}

void sub_22B505EAC(uint64_t a1, void *a2)
{
  [*(a1 + 32) setInteger:1 forKey:*MEMORY[0x277D1A458]];
  v4 = [a2 response];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4 == 0);
  }

  v6 = *(a1 + 32);
}

uint64_t sub_22B506B18(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Timer fired to clear code with GUID: %@", &v6, 0xCu);
    }
  }

  return [*(a1 + 40) consumeCodeWithGuid:*(a1 + 32) codeExpired:1];
}

void sub_22B507528(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5074E0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22B507848()
{
  result = [IMDSoundUtilities _installSystemSound:@"Sent Scheduled Message.caf"];
  dword_27D8CFDC8 = result;
  return result;
}

__CFString *_IMDRelayChatStyleStringFromChatStyle(int a1)
{
  switch(a1)
  {
    case '#':
      v2 = &IMDRelayMessageDictionaryChatStyleRoom;
LABEL_7:
      v3 = *v2;

      return v3;
    case '-':
      v2 = &IMDRelayMessageDictionaryChatStyleInstantMessage;
      goto LABEL_7;
    case '+':
      v2 = &IMDRelayMessageDictionaryChatStyleGroup;
      goto LABEL_7;
  }

  v3 = 0;

  return v3;
}

void sub_22B508BD4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B508B28);
  }

  _Unwind_Resume(a1);
}

void sub_22B509474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_22B5094BC()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = qword_281421330;
  v6 = qword_281421330;
  if (!qword_281421330)
  {
    sub_22B5095C0();
    v4[3] = objc_getClass("Libsysdiagnose");
    qword_281421330 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_22B5095A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22B5095C0()
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = qword_281420EB0;
  v5 = qword_281420EB0;
  if (!qword_281420EB0)
  {
    v6 = xmmword_2787031C0;
    v3[3] = _sl_dlopen();
    qword_281420EB0 = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_22B5096CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22B5096E4(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_281420EB0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_22B509774(uint64_t a1)
{
  sub_22B5095C0();
  result = objc_getClass("Libsysdiagnose");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_281421330 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_22B50A054(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v8 = 134217984;
      v9 = v4;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Setting timer to evaluate deferred message processing in: %f", &v8, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  if (v6)
  {
    [v6 invalidate];

    *(*(a1 + 32) + 16) = 0;
    v5 = *(a1 + 32);
  }

  result = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:v5 target:sel__processingTimerFired selector:0 userInfo:0 repeats:*(a1 + 40)];
  *(*(a1 + 32) + 16) = result;
  return result;
}

uint64_t sub_22B50A60C()
{
  qword_27D8CFDD0 = objc_alloc_init(IMDCollaborationNoticeTypeGenerator);

  return MEMORY[0x2821F96F8]();
}

void sub_22B50AE9C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x22B50AB48);
  }

  _Unwind_Resume(exception_object);
}

void sub_22B50AF2C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [v8 rootHash];
  v10 = [*(a1 + 32) rootHash];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v12 = [*(a1 + 40) containsObject:v7];
    v13 = IMOSLoggingEnabled();
    if (v12)
    {
      if (v13)
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v17 = 138412290;
          v18 = v7;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Found a matching handle for the mentioned identity, and it is a valid alias: %@", &v17, 0xCu);
        }
      }

      v15 = 3;
    }

    else
    {
      if (v13)
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = 138412290;
          v18 = v7;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Found a matching handle for mentioned identity, but it does not match any of the user's aliases: %@", &v17, 0xCu);
        }
      }

      v15 = -1;
    }

    *(*(*(a1 + 48) + 8) + 24) = v15;
    *a4 = 1;
  }
}

uint64_t (*sub_22B50C850())(void)
{
  result = MEMORY[0x231897B50]("PKPeerPaymentMessageTypeFromDataURL", @"PassKitCore");
  off_27D8CFDE0 = result;
  return result;
}

uint64_t (*sub_22B50C8FC())(void, void)
{
  result = MEMORY[0x231897B50]("PKPeerPaymentMessageDictionaryRepresentationFromDataURL", @"PassKitCore");
  off_27D8CFDF0 = result;
  return result;
}

void sub_22B50CB60(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B50CA74);
  }

  _Unwind_Resume(a1);
}

void sub_22B50CCF4(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v8 = 0;
    *&v7 = 138412290;
    v13 = v7;
    do
    {
      v9 = *(a1 + 32);
      if (v9 >= [v6 count] - v8)
      {
        v10 = [v6 count] - v8;
      }

      else
      {
        v10 = *(a1 + 32);
      }

      v11 = [v6 subarrayWithRange:{v8, v10}];
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = v13;
          v15 = v11;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Reporting message: %@", buf, 0xCu);
        }
      }

      IDSReportiMessageSpam();

      v8 += *(a1 + 32);
    }

    while (v8 < [v6 count]);
  }
}

void sub_22B50CFF8(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        [*(a1 + 32) reportSpamMessage:v9];
        if (IMOSLoggingEnabled())
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v19 = v9;
            _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Message Reported - %@", buf, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [v9 objectForKeyedSubscript:@"recipient-uri"];
            *buf = 138412290;
            v19 = v12;
            _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Receiver URI - %@", buf, 0xCu);
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }
}

uint64_t sub_22B50EC08()
{
  qword_281421410 = objc_alloc_init(MEMORY[0x277CBEB18]);

  return MEMORY[0x2821F96F8]();
}

void sub_22B50EC44(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 object];

  if (!v3)
  {
    [*(a1 + 32) addObject:v4];
  }
}

void sub_22B50EE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B50EE84(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 service];
  if ([v7 isEqual:*(a1 + 32)])
  {
    v8 = [v9 isReplicating];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }

  else
  {
  }
}

void sub_22B50FC68(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B50FC10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22B510A3C(uint64_t a1, uint64_t a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Forcing an invocation of networkMonitorDidUpdate 10 seconds after setting it up.", v5, 2u);
    }
  }

  return [*(a1 + 32) networkMonitorDidUpdate:*(*(a1 + 32) + 96)];
}

uint64_t sub_22B511D98(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 140) == 1)
  {
    return MEMORY[0x2821F9670](result, sel__processPotentialNetworkChange);
  }

  return result;
}

uint64_t sub_22B511E30(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 140) == 1)
  {
    return MEMORY[0x2821F9670](result, sel__processPotentialNetworkChange);
  }

  return result;
}

void -[IMDServiceSession _blocklistIfNeededForChatDict:](IMDServiceSession *self, SEL a2, id a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"wasReportedAsJunk"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:@"groupID"];
    if (v6)
    {
      v7 = [MEMORY[0x277D1A9E8] sharedInstance];
      [v7 blocklistGroupId:v6];

      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = 138412290;
          v10 = v6;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Blocklisted GroupID: %@", &v9, 0xCu);
        }

LABEL_10:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "IMDServiceSession | Expected to blocklist chat for chatDict: %@ but groupID nil", &v9, 0xCu);
      }

      goto LABEL_10;
    }
  }
}

uint64_t sub_22B5138E4(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) service];
  if ([v4 groupsMergeDisplayNames])
  {

LABEL_9:
    v9 = 1;
    goto LABEL_10;
  }

  v5 = [v3 displayName];
  v6 = [v5 length];

  if (!v6)
  {
    goto LABEL_9;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v3 guid];
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Rejecting chat %@ as it has a display name and service does not merge display names", &v11, 0xCu);
    }
  }

  v9 = 0;
LABEL_10:

  return v9;
}

void sub_22B5146F0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t sub_22B51475C()
{
  qword_281420F70 = objc_alloc_init(IMDSpamController);

  return MEMORY[0x2821F96F8]();
}

void sub_22B514A6C(uint64_t a1, uint64_t a2, int a3, void *a4, double a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      v12 = 134218754;
      v13 = a2;
      if (a3)
      {
        v11 = @"YES";
      }

      v14 = 2112;
      v15 = v11;
      v16 = 2048;
      v17 = a5;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Server request returned status: %ld, abusive: %@, delay: %f, error: %@", &v12, 0x2Au);
    }
  }

  (*(*(a1 + 32) + 16))(a5);
}

void sub_22B514EDC(uint64_t a1)
{
  IMComponentsFromChatGUID();
  v2 = 0;
  if ([v2 length])
  {
    [*(a1 + 40) detectSpam:v2 chatGUID:*(a1 + 32)];
  }
}

void sub_22B5153A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = IMOSLoggingEnabled();
  if ((a2 == 6002 || a2 == 0) && v9 == 0)
  {
    if (v10)
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 32);
        *buf = 138412290;
        v31 = v17;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "detectSpam for Chat Identifier: %@", buf, 0xCu);
      }
    }

    v18 = *(a1 + 40);
    if (v18)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithBool:{a3, @"wasAutoDetectedForSpam"}];
      v29 = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      [v18 updateProperties:v20];

      v21 = +[IMDBroadcastController sharedProvider];
      v22 = [v21 broadcasterForChatListenersUsingBlackholeRegistry:{objc_msgSend(*(a1 + 40), "isBlackholed")}];
      v23 = *(a1 + 32);
      v24 = [*(a1 + 40) properties];
      [v22 chat:v23 propertiesUpdated:v24];

      if (a3)
      {
        v25 = +[IMDMessageStore sharedInstance];
        [v25 databaseChatSpamUpdated:*(a1 + 32)];
      }
    }

    v26 = *(a1 + 48);
    if (a5 >= 0.0)
    {
      [v26 _updateSpamCheckTimerWithInterval:*(a1 + 32) forChatGUID:a5];
    }

    else
    {
      v27 = [v26 chatGUIDToCountMap];
      [v27 removeObjectForKey:*(a1 + 32)];
    }
  }

  else
  {
    if (v10)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 32);
        *buf = 138412290;
        v31 = v14;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "shouldn't retry again: %@", buf, 0xCu);
      }
    }

    v15 = [*(a1 + 48) chatGUIDToCountMap];
    [v15 removeObjectForKey:*(a1 + 32)];
  }
}

void sub_22B5165FC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 200), 8);
  _Unwind_Resume(a1);
}

void sub_22B5166B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [*(a1 + 32) attributedSubstringFromRange:{a3, a4}];
  v9 = [v8 string];
  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_22B7D03B8(v7, v10);
  }

  if ([v9 isEqualToString:*MEMORY[0x277D190A0]])
  {
    *v45 = 0uLL;
    v11 = [*(a1 + 32) attribute:*MEMORY[0x277D19100] atIndex:a3 effectiveRange:v45];
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v44 = v11;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Found GUID for attachment part: %@", buf, 0xCu);
    }

    if ([v11 length])
    {
      v13 = [*(*(*(a1 + 64) + 8) + 40) count];
      [*(*(*(a1 + 64) + 8) + 40) addObject:MEMORY[0x277CBEC10]];
      v14 = *(a1 + 40);
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
      [v14 addObject:v15];

      [*(a1 + 48) addObject:v11];
    }
  }

  else
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 72))
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      *v45 = 138412290;
      *&v45[4] = v17;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Found text part. Generate text parts? %@", v45, 0xCu);
    }

    if (*(a1 + 72) == 1)
    {
      v36 = v8;
      v35 = v9;
      if ([v8 __im_isOnlyAdaptiveImageGlyphFileTransfersAndWhitespaceUsingFileTransferProvider:*(a1 + 56)])
      {
        v18 = [v8 __im_transferGUIDsInAttributedString];
        v19 = [v18 array];
      }

      else
      {
        v20 = *(a1 + 56);
        v41 = 0;
        v18 = [v8 __im_attributedStringByReplacingAdaptiveImageGlyphFileTransfersUsingFileTransferProvider:v20 replacementTextProvider:&unk_283F19748 removedTransferGUIDsOut:&v41];
        v19 = v41;
        v21 = [v18 string];
        v22 = [v21 dataUsingEncoding:4];
        v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
        CFDictionarySetValue(v23, @"Type", @"text/plain");
        if (v22)
        {
          CFDictionarySetValue(v23, @"Data", v22);
        }

        if (@"text")
        {
          CFDictionarySetValue(v23, @"Tag", @"text");
        }

        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"text_%d.txt", objc_msgSend(*(*(*(a1 + 64) + 8) + 40), "count")];
        if (v24)
        {
          CFDictionarySetValue(v23, @"Path", v24);
        }

        [*(*(*(a1 + 64) + 8) + 40) addObject:v23];
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v25 = v19;
      v26 = [v25 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v38;
        v29 = MEMORY[0x277CBEC10];
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v38 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v31 = *(*(&v37 + 1) + 8 * i);
            v32 = [*(*(*(a1 + 64) + 8) + 40) count];
            [*(*(*(a1 + 64) + 8) + 40) addObject:v29];
            v33 = *(a1 + 40);
            v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v32];
            [v33 addObject:v34];

            [*(a1 + 48) addObject:v31];
          }

          v27 = [v25 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v27);
      }

      v8 = v36;
      v9 = v35;
    }
  }
}

void sub_22B516B9C(uint64_t a1, void *a2)
{
  v6 = [a2 guid];
  v3 = [*(*(*(a1 + 48) + 8) + 40) count];
  [*(*(*(a1 + 48) + 8) + 40) addObject:MEMORY[0x277CBEC10]];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  [v4 addObject:v5];

  [*(a1 + 40) addObject:v6];
}

void sub_22B516C54(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, int a6, uint64_t a7)
{
  v106 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = IMLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = @"NO";
    if (a6)
    {
      v16 = @"YES";
    }

    *buf = 138412290;
    v101 = v16;
    _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "   Transcode complete  (Succeeded: %@)", buf, 0xCu);
  }

  v17 = IMLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v101 = v14;
    _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "   Error: %@", buf, 0xCu);
  }

  v18 = IMLogHandleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v101 = v12;
    _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "   Output URLs: %@", buf, 0xCu);
  }

  v19 = IMLogHandleForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v101 = v13;
    _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "   Output Contexts: %@", buf, 0xCu);
  }

  if (a6)
  {
    v20 = [v12 __imFirstObject];
    v21 = [v20 path];

    v22 = [v13 __imFirstObject];
    if (!v21)
    {
      *(*(*(a1 + 112) + 8) + 24) = 1;
      v26 = IMLogHandleForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D04E0(a1, v26);
      }

      [*(a1 + 64) failTransfer:*(a1 + 72) error:v14];
      v21 = [MEMORY[0x277D1AAA8] sharedInstance];
      [v21 trackMMSTranscodeFailureWithReason:2 sourceFile:*(a1 + 32) sizeLimits:*(a1 + 40) lowQualityModeEnabled:0];
      goto LABEL_81;
    }

    v23 = [v12 firstObject];
    if ([v12 count] < 2)
    {
      v24 = 0;
    }

    else
    {
      v24 = [v12 objectAtIndex:1];
    }

    v27 = [MEMORY[0x277D1AAA8] sharedInstance];
    LOBYTE(v87) = 0;
    v92 = v23;
    [v27 trackMMSTranscodeWithReason:2 sourceFile:*(a1 + 32) highQualityFile:v23 lowQualityFile:v24 sizeLimits:*(a1 + 40) transcoded:a7 lowQualityModeEnabled:v87];

    v28 = [v21 lastPathComponent];
    v29 = [v28 stringByDeletingPathExtension];

    v94 = v14;
    v95 = v13;
    v90 = v29;
    v91 = v24;
    if ([v29 length] < 0xB)
    {
      v41 = 0;
      goto LABEL_38;
    }

    v30 = IMLogHandleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v101 = v29;
      _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Renaming file %@ as it is too long", buf, 0xCu);
    }

    v31 = [v21 stringByDeletingLastPathComponent];
    v32 = [v29 substringToIndex:9];
    v33 = [v31 stringByAppendingPathComponent:v32];
    v34 = [v21 pathExtension];
    v35 = [v33 stringByAppendingPathExtension:v34];

    v36 = [v35 length];
    v37 = IMLogHandleForCategory();
    v38 = v37;
    if (v36)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v101 = v35;
        v102 = 2112;
        v103 = v21;
        _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "New path %@ old Path %@", buf, 0x16u);
      }

      v39 = [MEMORY[0x277CCAA00] defaultManager];
      v99 = 0;
      [v39 moveItemAtPath:v21 toPath:v35 error:&v99];
      v38 = v99;

      if (!v38)
      {
        v42 = v35;

        v41 = 1;
        v21 = v42;
        goto LABEL_37;
      }

      v40 = IMLogHandleForCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v101 = v21;
        v102 = 2112;
        v103 = v35;
        v104 = 2112;
        v105 = v38;
        _os_log_error_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_ERROR, "Error moving file from path %@ to new path %@ with error %@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D049C(v38);
    }

    v41 = 0;
LABEL_37:

LABEL_38:
    v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v93 = v22;
    v44 = [v22 objectForKey:*MEMORY[0x277D1ADD0]];
    [v44 doubleValue];
    v46 = v45;

    v47 = [MEMORY[0x277D19250] defaultHFSFileManager];
    value = [v47 MIMETypeOfPath:v21];

    v48 = UTTypeConformsTo(*(a1 + 48), *MEMORY[0x277CC2018]);
    v49 = UTTypeConformsTo(*(a1 + 48), *MEMORY[0x277CC20B0]);
    v50 = UTTypeConformsTo(*(a1 + 48), *MEMORY[0x277CC2020]);
    v51 = @"ref";
    if (v48)
    {
      v52 = SMILPieceAudioTag;
    }

    else
    {
      v52 = SMILPieceVideoTag;
      if (v49)
      {
        v52 = SMILPieceImageTag;
      }

      if (!(v49 | v50))
      {
        goto LABEL_44;
      }
    }

    v53 = *v52;

    v51 = v53;
LABEL_44:
    v54 = [*(a1 + 56) localPath];
    v55 = [v54 lastPathComponent];
    v56 = [v55 stringByDeletingPathExtension];

    if (v41)
    {
      v57 = [v21 lastPathComponent];
      v58 = [v57 stringByDeletingPathExtension];

      v59 = IMLogHandleForCategory();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v101 = v21;
        v102 = 2112;
        v103 = v58;
        v104 = 2112;
        v105 = v56;
        _os_log_impl(&dword_22B4CC000, v59, OS_LOG_TYPE_INFO, "content location updated to using outPutPath %@ content location %@ old content location %@", buf, 0x20u);
      }
    }

    else
    {
      v58 = v56;
    }

    v60 = [MEMORY[0x277D19250] defaultHFSFileManager];
    v98 = 0;
    v61 = [v60 attributesOfItemAtPath:v21 error:&v98];
    v89 = v98;

    v88 = v61;
    v62 = [v61 fileSize];
    v63 = [v21 pathExtension];
    if ([v63 isEqualToString:@"jpeg"])
    {
      v64 = @"jpg";
    }

    else
    {
      v64 = v63;
    }

    v65 = [v58 stringByAppendingPathExtension:v64];

    if (value)
    {
      CFDictionarySetValue(v43, @"Type", value);
    }

    if (v51)
    {
      CFDictionarySetValue(v43, @"Tag", v51);
    }

    if (v21)
    {
      CFDictionarySetValue(v43, @"Filename", v21);
    }

    v66 = [MEMORY[0x277CCABB0] numberWithDouble:v46];
    if (v66)
    {
      CFDictionarySetValue(v43, @"Duration", v66);
    }

    if (v65)
    {
      CFDictionarySetValue(v43, @"Path", v65);
    }

    v67 = IMLogHandleForCategory();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v67, OS_LOG_TYPE_INFO, "Part:", buf, 2u);
    }

    v68 = IMLogHandleForCategory();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v101 = v21;
      _os_log_impl(&dword_22B4CC000, v68, OS_LOG_TYPE_INFO, "  =>              Path: %@", buf, 0xCu);
    }

    v69 = IMLogHandleForCategory();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      v70 = *(a1 + 48);
      *buf = 138412290;
      v101 = v70;
      _os_log_impl(&dword_22B4CC000, v69, OS_LOG_TYPE_INFO, "  =>               UTI: %@", buf, 0xCu);
    }

    v71 = IMLogHandleForCategory();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v101 = v51;
      _os_log_impl(&dword_22B4CC000, v71, OS_LOG_TYPE_INFO, "  =>               Tag: %@", buf, 0xCu);
    }

    v72 = IMLogHandleForCategory();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v101 = v65;
      _os_log_impl(&dword_22B4CC000, v72, OS_LOG_TYPE_INFO, "  =>  Content Location: %@", buf, 0xCu);
    }

    v73 = IMLogHandleForCategory();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v101 = value;
      _os_log_impl(&dword_22B4CC000, v73, OS_LOG_TYPE_INFO, "  =>              MIME: %@", buf, 0xCu);
    }

    v74 = IMLogHandleForCategory();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v101 = v62;
      _os_log_impl(&dword_22B4CC000, v74, OS_LOG_TYPE_INFO, "  =>         File Size: %llu", buf, 0xCu);
    }

    v75 = IMLogHandleForCategory();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v101 = v43;
      _os_log_impl(&dword_22B4CC000, v75, OS_LOG_TYPE_INFO, "    Generated part: %@", buf, 0xCu);
    }

    v76 = IMLogHandleForCategory();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
    {
      v77 = *(a1 + 120);
      *buf = 138412546;
      v101 = v43;
      v102 = 1024;
      LODWORD(v103) = v77;
      _os_log_impl(&dword_22B4CC000, v76, OS_LOG_TYPE_INFO, "  Setting part %@ into parts at index: %d", buf, 0x12u);
    }

    [*(*(*(a1 + 104) + 8) + 40) replaceObjectAtIndex:*(a1 + 120) withObject:v43];
    v78 = [*(a1 + 64) transferForGUID:*(a1 + 72)];
    v79 = [*(a1 + 80) guid];
    [v78 setMessageGUID:v79];

    [*(a1 + 64) updateTransfer:*(a1 + 72) currentBytes:v62 totalBytes:v62];
    v80 = *(a1 + 64);
    v81 = [*(a1 + 56) guid];
    [v80 startFinalizingTransfer:v81];

    v14 = v94;
    v13 = v95;
    v22 = v93;
LABEL_81:

    goto LABEL_82;
  }

  *(*(*(a1 + 112) + 8) + 24) = 1;
  v25 = IMLogHandleForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D0430();
  }

  [*(a1 + 64) failTransfer:*(a1 + 72) error:v14];
  v22 = [MEMORY[0x277D1AAA8] sharedInstance];
  [v22 trackMMSTranscodeFailureWithReason:2 sourceFile:*(a1 + 32) sizeLimits:*(a1 + 40) lowQualityModeEnabled:0];
LABEL_82:

  if (*(a1 + 88))
  {
    v82 = [MEMORY[0x277CCAA00] defaultManager];
    v83 = *(a1 + 88);
    v97 = 0;
    v84 = [v82 removeItemAtURL:v83 error:&v97];
    v85 = v97;

    if ((v84 & 1) == 0)
    {
      v86 = IMLogHandleForCategory();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D055C();
      }
    }
  }

  else
  {
    v85 = 0;
  }

  dispatch_group_leave(*(a1 + 96));
}

uint64_t sub_22B517A14(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) fileTransferGUIDs];
    v4 = v3;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v5 = @"NO";
    }

    else
    {
      v5 = @"YES";
    }

    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "  All done part generation set for: %@   success: %@", &v7, 0x16u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), (*(*(*(a1 + 48) + 8) + 24) & 1) == 0, *(*(*(a1 + 56) + 8) + 40), 0);
  }

  return result;
}

void sub_22B517C7C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_22B51C16C()
{
  qword_2814211F8 = objc_alloc_init(IMDBackwardCompatibilityMessageIdentifier);

  return MEMORY[0x2821F96F8]();
}

void sub_22B51D380(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CF1B58] readMessageStream];
  v3 = [v2 source];

  v4 = [objc_alloc(MEMORY[0x277CF1A68]) initWithIDSHandle:*(a1 + 32)];
  [v3 sendEvent:v4];

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Donating Read Message Event to Stream for %@", &v7, 0xCu);
    }
  }
}

__CFDictionary *sub_22B51EC6C(uint64_t a1, void *a2)
{
  v2 = a2;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = [v2 accessibilityStickerName];
  if (v4)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D19DE8], v4);
  }

  if ([v2 has_adamID])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "adamID")}];
    if (v5)
    {
      v6 = v5;
      CFDictionarySetValue(Mutable, *MEMORY[0x277D19DF0], v5);
    }
  }

  v7 = [v2 bundleID];
  if (v7)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D19E08], v7);
  }

  v8 = [v2 packName];
  if (v8)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D19DF8], v8);
  }

  if (objc_opt_respondsToSelector())
  {
    if ([v2 has_previewGenerationSizeHeight])
    {
      v9 = MEMORY[0x277CCABB0];
      [v2 previewGenerationSizeHeight];
      v10 = [v9 numberWithDouble:?];
      if (v10)
      {
        v11 = v10;
        CFDictionarySetValue(Mutable, *MEMORY[0x277D19E38], v10);
      }
    }

    if ([v2 has_previewGenerationSizeWidth])
    {
      v12 = MEMORY[0x277CCABB0];
      [v2 previewGenerationSizeWidth];
      v13 = [v12 numberWithDouble:?];
      if (v13)
      {
        v14 = v13;
        CFDictionarySetValue(Mutable, *MEMORY[0x277D19E40], v13);
      }
    }
  }

  v15 = [v2 previewGenerationConstraints];
  if (v15)
  {
    v16 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (objc_opt_respondsToSelector())
    {
      if ([v15 has_maxPixelWidth])
      {
        v17 = MEMORY[0x277CCABB0];
        [v15 maxPixelWidth];
        v18 = [v17 numberWithDouble:?];
        if (v18)
        {
          v19 = v18;
          CFDictionarySetValue(v16, *MEMORY[0x277D1A4B0], v18);
        }
      }

      if ([v15 has_minThumbSizeHeight])
      {
        v20 = MEMORY[0x277CCABB0];
        [v15 minThumbSizeHeight];
        v21 = [v20 numberWithDouble:?];
        if (v21)
        {
          v22 = v21;
          CFDictionarySetValue(v16, *MEMORY[0x277D1A4B8], v21);
        }
      }

      if ([v15 has_minThumbSizeWidth])
      {
        v23 = MEMORY[0x277CCABB0];
        [v15 minThumbSizeWidth];
        v24 = [v23 numberWithDouble:?];
        if (v24)
        {
          v25 = v24;
          CFDictionarySetValue(v16, *MEMORY[0x277D1A4C0], v24);
        }
      }

      if ([v15 has_scale])
      {
        v26 = MEMORY[0x277CCABB0];
        [v15 scale];
        v27 = [v26 numberWithDouble:?];
        if (v27)
        {
          v28 = v27;
          CFDictionarySetValue(v16, *MEMORY[0x277D1A4C8], v27);
        }
      }
    }

    v29 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v15, "isSticker")}];
    if (v29)
    {
      CFDictionarySetValue(v16, *MEMORY[0x277D1A4A8], v29);
    }

    if (v16)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277D19E28], v16);
    }
  }

  return Mutable;
}

uint64_t sub_22B51FC34(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 expectedFileSize];
  if (v6 == [v5 expectedFileSize])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 expectedFileSize];
    if (v8 < [v5 expectedFileSize])
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }
  }

  return v7;
}

void sub_22B51FCBC(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a2;
  if (a3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"-%d", a3];
  }

  else
  {
    v5 = &stru_283F23018;
  }

  v6 = [@"mmcs-signature-hex" stringByAppendingString:v5];
  v7 = [@"mmcs-owner" stringByAppendingString:v5];
  v8 = [@"mmcs-url" stringByAppendingString:v5];
  v9 = [@"decryption-key" stringByAppendingString:v5];
  v10 = [@"file-size" stringByAppendingString:v5];
  v11 = [v20 encryptionKey];
  if (v11)
  {
    CFDictionarySetValue(*(a1 + 32), v9, v11);
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v20, "expectedFileSize")}];
  if (v12)
  {
    CFDictionarySetValue(*(a1 + 32), v10, v12);
  }

  v13 = [v20 ownerID];
  if (v13)
  {
    CFDictionarySetValue(*(a1 + 32), v7, v13);
  }

  v14 = [v20 signature];
  if (v14)
  {
    CFDictionarySetValue(*(a1 + 32), v6, v14);
  }

  v15 = [v20 attachmentURL];
  v16 = [v15 absoluteString];

  if (v16)
  {
    CFDictionarySetValue(*(a1 + 32), v8, v16);
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    CFDictionarySetValue(*(a1 + 32), @"name", v17);
  }

  v18 = [*(a1 + 48) mimeType];
  if (v18)
  {
    CFDictionarySetValue(*(a1 + 32), @"mime-type", v18);
  }

  v19 = [*(a1 + 48) utiType];
  if (v19)
  {
    CFDictionarySetValue(*(a1 + 32), @"uti-type", v19);
  }
}

void sub_22B520BB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v109 = *MEMORY[0x277D85DE8];
  v98 = a2;
  v5 = [v98 allKeys];
  v99 = [v5 mutableCopy];

  v6 = *MEMORY[0x277CF30D0];
  v7 = [v98 objectForKeyedSubscript:*MEMORY[0x277CF30D0]];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [v98 objectForKeyedSubscript:v6];
    v10 = [*(a1 + 64) _fileTransferMatchingAttribute:v9 inFileTransfers:*(a1 + 32)];
    if (!v10)
    {
      v10 = [*(a1 + 64) _fileTransferMatchingAttribute:v9 inFileTransfers:*(a1 + 40)];
      if (!v10)
      {
        v10 = [*(a1 + 64) fileTransferForBlastDoorFileTransferAttribute:v9 fileTransferGUIDs:*(a1 + 48) supportingStickerAttributes:*(a1 + 72)];
        if (v10)
        {
          [*(a1 + 40) addObject:v10];
        }
      }
    }

    v11 = [v10 guid];
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v13 = Mutable;
    if (v11)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277D19100], v11);
    }

    v14 = [v9 attachmentSubtype];
    v15 = [v14 audioMessage];

    if (v15)
    {
      v16 = [v15 audioTranscription];
      if (v16)
      {
        CFDictionarySetValue(v13, *MEMORY[0x277D196C8], v16);
      }
    }

    if ([v10 isAdaptiveImageGlyph])
    {
      CFDictionarySetValue(v13, *MEMORY[0x277D190F0], MEMORY[0x277CBEC38]);
    }

    [*(a1 + 56) removeAttribute:v6 range:{a3, a4}];
    [v99 removeObject:v6];
    [*(a1 + 56) addAttributes:v13 range:{a3, a4}];
    [*(a1 + 48) addObject:v11];
  }

  v17 = *MEMORY[0x277CF30D8];
  v18 = [v98 objectForKeyedSubscript:*MEMORY[0x277CF30D8]];
  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  if (v19)
  {
    v20 = [v98 objectForKeyedSubscript:v17];
    v21 = [*(a1 + 64) _fileTransferMatchingAttribute:v20 inFileTransfers:*(a1 + 32)];
    if (!v21)
    {
      v21 = [*(a1 + 64) _fileTransferMatchingAttribute:v20 inFileTransfers:*(a1 + 40)];
      if (!v21)
      {
        v21 = [*(a1 + 64) fileTransferForBlastDoorFileTransferAttribute:v20 fileTransferGUIDs:*(a1 + 48) supportingStickerAttributes:*(a1 + 72)];
        if (v21)
        {
          [*(a1 + 40) addObject:v21];
        }
      }
    }

    v22 = [v21 guid];
    [*(a1 + 56) removeAttribute:v17 range:{a3, a4}];
    [v99 removeObject:v17];
    [*(a1 + 48) addObject:v22];
  }

  v23 = *MEMORY[0x277D190B0];
  v24 = [v98 objectForKeyedSubscript:*MEMORY[0x277D190B0]];
  objc_opt_class();
  v25 = objc_opt_isKindOfClass();

  if (v25)
  {
    v26 = [v98 objectForKeyedSubscript:v23];
    v27 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v28 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v26, "direction")}];
    if (v28)
    {
      CFDictionarySetValue(v27, v23, v28);
    }

    [*(a1 + 56) removeAttribute:v23 range:{a3, a4}];
    [v99 removeObject:v23];
    [*(a1 + 56) addAttributes:v27 range:{a3, a4}];
  }

  v29 = *MEMORY[0x277D19160];
  v30 = [v98 objectForKeyedSubscript:*MEMORY[0x277D19160]];
  objc_opt_class();
  v31 = objc_opt_isKindOfClass();

  if (v31)
  {
    v32 = [v98 objectForKeyedSubscript:v29];
    v33 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v32, "partNumber")}];
    if (v34)
    {
      CFDictionarySetValue(v33, v29, v34);
    }

    [*(a1 + 56) removeAttribute:v29 range:{a3, a4}];
    [v99 removeObject:v29];
    [*(a1 + 56) addAttributes:v33 range:{a3, a4}];
  }

  v35 = *MEMORY[0x277D190D0];
  v36 = [v98 objectForKeyedSubscript:*MEMORY[0x277D190D0]];
  objc_opt_class();
  v37 = objc_opt_isKindOfClass();

  if (v37)
  {
    v38 = [v98 objectForKeyedSubscript:v35];
    v39 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v38, "optionFlags")}];
    if (v40)
    {
      CFDictionarySetValue(v39, v35, v40);
    }

    [*(a1 + 56) removeAttribute:v35 range:{a3, a4}];
    [v99 removeObject:v35];
    [*(a1 + 56) addAttributes:v39 range:{a3, a4}];
  }

  v41 = *MEMORY[0x277D190C8];
  v42 = [v98 objectForKeyedSubscript:*MEMORY[0x277D190C8]];
  objc_opt_class();
  v43 = objc_opt_isKindOfClass();

  if (v43)
  {
    v44 = [v98 objectForKeyedSubscript:v41];
    v45 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v46 = [v44 breadcrumbText];
    if (v46)
    {
      CFDictionarySetValue(v45, v41, v46);
    }

    [*(a1 + 56) removeAttribute:v41 range:{a3, a4}];
    [v99 removeObject:v41];
    [*(a1 + 56) addAttributes:v45 range:{a3, a4}];
  }

  v47 = *MEMORY[0x277D19F28];
  v48 = [v98 objectForKeyedSubscript:*MEMORY[0x277D19F28]];
  objc_opt_class();
  v49 = objc_opt_isKindOfClass();

  if (v49)
  {
    v50 = [v98 objectForKeyedSubscript:v47];
    v51 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v52 = [v50 uri];
    if (v52)
    {
      CFDictionarySetValue(v51, v47, v52);
    }

    [*(a1 + 56) removeAttribute:v47 range:{a3, a4}];
    [v99 removeObject:v47];
    [*(a1 + 56) addAttributes:v51 range:{a3, a4}];
  }

  v53 = *MEMORY[0x277D19140];
  v54 = [v98 objectForKeyedSubscript:*MEMORY[0x277D19140]];
  objc_opt_class();
  v55 = objc_opt_isKindOfClass();

  if (v55)
  {
    v56 = [v98 objectForKeyedSubscript:v53];
    v57 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v58 = [v56 link];
    if (v58)
    {
      CFDictionarySetValue(v57, v53, v58);
    }

    [*(a1 + 56) removeAttribute:v53 range:{a3, a4}];
    [v99 removeObject:v53];
    [*(a1 + 56) addAttributes:v57 range:{a3, a4}];
  }

  v59 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v60 = [v59 isExpressiveTextEnabled];

  if (v60)
  {
    v61 = *MEMORY[0x277D1A7A8];
    v62 = [v98 objectForKeyedSubscript:*MEMORY[0x277D1A7A8]];
    objc_opt_class();
    v63 = objc_opt_isKindOfClass();

    if (v63)
    {
      v64 = [v98 objectForKeyedSubscript:v61];
      v65 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v64, "type")}];
      if (v66)
      {
        CFDictionarySetValue(v65, v61, v66);
      }

      [*(a1 + 56) removeAttribute:v61 range:{a3, a4}];
      [v99 removeObject:v61];
      [*(a1 + 56) addAttributes:v65 range:{a3, a4}];
    }

    v67 = *MEMORY[0x277D1A7A0];
    v68 = [v98 objectForKeyedSubscript:*MEMORY[0x277D1A7A0]];
    objc_opt_class();
    v69 = objc_opt_isKindOfClass();

    if (v69)
    {
      v70 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(v70, v67, &unk_283F4E4B0);
      [*(a1 + 56) removeAttribute:v67 range:{a3, a4}];
      [v99 removeObject:v67];
      [*(a1 + 56) addAttributes:v70 range:{a3, a4}];
    }

    v71 = *MEMORY[0x277D1A7B0];
    v72 = [v98 objectForKeyedSubscript:*MEMORY[0x277D1A7B0]];
    objc_opt_class();
    v73 = objc_opt_isKindOfClass();

    if (v73)
    {
      v74 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(v74, v71, &unk_283F4E4B0);
      [*(a1 + 56) removeAttribute:v71 range:{a3, a4}];
      [v99 removeObject:v71];
      [*(a1 + 56) addAttributes:v74 range:{a3, a4}];
    }

    v75 = *MEMORY[0x277D1A7C0];
    v76 = [v98 objectForKeyedSubscript:*MEMORY[0x277D1A7C0]];
    objc_opt_class();
    v77 = objc_opt_isKindOfClass();

    if (v77)
    {
      v78 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(v78, v75, &unk_283F4E4B0);
      [*(a1 + 56) removeAttribute:v75 range:{a3, a4}];
      [v99 removeObject:v75];
      [*(a1 + 56) addAttributes:v78 range:{a3, a4}];
    }

    v79 = *MEMORY[0x277D1A7B8];
    v80 = [v98 objectForKeyedSubscript:*MEMORY[0x277D1A7B8]];
    objc_opt_class();
    v81 = objc_opt_isKindOfClass();

    if (v81)
    {
      v82 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(v82, v79, &unk_283F4E4B0);
      [*(a1 + 56) removeAttribute:v79 range:{a3, a4}];
      [v99 removeObject:v79];
      [*(a1 + 56) addAttributes:v82 range:{a3, a4}];
    }
  }

  v83 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v84 = [v83 isRichLinkImprovementsEnabled];

  if (v84)
  {
    v85 = *MEMORY[0x277D19F20];
    v86 = [v98 objectForKeyedSubscript:*MEMORY[0x277D19F20]];
    objc_opt_class();
    v87 = objc_opt_isKindOfClass();

    if (v87)
    {
      v88 = [v98 objectForKeyedSubscript:v85];
      v89 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v90 = [v88 isRichLink];
      v91 = [MEMORY[0x277CCABB0] numberWithBool:v90];
      if (v91)
      {
        CFDictionarySetValue(v89, v85, v91);
      }

      [*(a1 + 56) removeAttribute:v85 range:{a3, a4}];
      [v99 removeObject:v85];
      [*(a1 + 56) addAttributes:v89 range:{a3, a4}];
    }
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v92 = v99;
  v93 = [v92 countByEnumeratingWithState:&v102 objects:v108 count:16];
  if (v93)
  {
    v94 = *v103;
    do
    {
      for (i = 0; i != v93; ++i)
      {
        if (*v103 != v94)
        {
          objc_enumerationMutation(v92);
        }

        v96 = *(*(&v102 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v97 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v107 = v96;
            _os_log_impl(&dword_22B4CC000, v97, OS_LOG_TYPE_INFO, "<WARNING> Unhandled attribute, removing it: %@", buf, 0xCu);
          }
        }

        [*(a1 + 56) removeAttribute:v96 range:{a3, a4}];
      }

      v93 = [v92 countByEnumeratingWithState:&v102 objects:v108 count:16];
    }

    while (v93);
  }
}