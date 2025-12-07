uint64_t sub_25C497730(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25C4C8470();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_25C4C8490();
  v12 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v17 = (*(a2 + 16))(ObjectType, a2);
  v18 = v16;
  if (a3)
  {
    sub_25C497A88(a1, v17, v16);
  }

  else
  {
    v23[1] = *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue];
    v20 = swift_allocObject();
    v20[2] = v4;
    v20[3] = a1;
    v20[4] = v17;
    v20[5] = v18;
    aBlock[4] = sub_25C4B8AF8;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25C4676B4;
    aBlock[3] = &block_descriptor_5;
    v21 = _Block_copy(aBlock);
    v22 = v4;
    sub_25C4C8480();
    v25 = MEMORY[0x277D84F90];
    sub_25C4B8B3C(&unk_27FC0A180, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A7B0, &qword_25C4C9AE0);
    sub_25C4BC1E8(&qword_27FC0A190, &unk_27FC0A7B0, &qword_25C4C9AE0, MEMORY[0x277D83970]);
    sub_25C4C8800();
    MEMORY[0x25F887C10](0, v14, v11, v21);
    _Block_release(v21);
    (*(v9 + 8))(v11, v8);
    (*(v12 + 8))(v14, v24);
  }
}

void sub_25C497A88(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_25C4C84C0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *&v3[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue];
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v12 = v11;
  LOBYTE(v11) = sub_25C4C84E0();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    if (qword_27FC0B970 == -1)
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
  v13 = sub_25C4C7BD0();
  __swift_project_value_buffer(v13, qword_27FC0B978);
  v14 = v3;

  v15 = sub_25C4C7BB0();
  v16 = sub_25C4C8720();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26[0] = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_25C458990(a2, a3, v26);
    *(v17 + 12) = 2080;
    sub_25C4C7C50();
    sub_25C4B8B3C(&qword_27FC0A480, MEMORY[0x277D35630], MEMORY[0x277D35648]);
    v19 = sub_25C4C89A0();
    v21 = sub_25C458990(v19, v20, v26);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2048;
    v22 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__clients;
    swift_beginAccess();
    v23 = *(*&v14[v22] + 16);

    *(v17 + 24) = v23;
    _os_log_impl(&dword_25C452000, v15, v16, "Invalidate for client: client=%s, endpoint=%s, clients=%ld", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v18, -1, -1);
    MEMORY[0x25F888630](v17, -1, -1);
  }

  else
  {
  }

  v27 = xmmword_25C4CA7C0;
  v24 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__clients;
  swift_beginAccess();
  sub_25C495730(&v27, a1);
  swift_endAccess();
  if (!*(*&v14[v24] + 16))
  {
    sub_25C497DF8();
  }
}

void sub_25C497DF8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__invalidateCoreCalled;
  if (*(v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__invalidateCoreCalled))
  {

    sub_25C4984E4();
  }

  else
  {
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v3 = sub_25C4C7BD0();
    __swift_project_value_buffer(v3, qword_27FC0B978);
    v4 = sub_25C4C7BB0();
    v5 = sub_25C4C8720();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_25C452000, v4, v5, "Invalidate core", v6, 2u);
      MEMORY[0x25F888630](v6, -1, -1);
    }

    *(v1 + v2) = 1;
    v7 = (v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_connectionEndedHandler);
    swift_beginAccess();
    v8 = *v7;
    v9 = v7[1];
    *v7 = 0;
    v7[1] = 0;
    sub_25C45A2C8(v8, v9);
    sub_25C489BA8(v1);
    v10 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsAccount;
    swift_beginAccess();
    v11 = *(v1 + v10);
    *(v1 + v10) = 0;

    v12 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsInvitationState;
    swift_beginAccess();
    *(v1 + v12) = 2;
    v13 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession;
    swift_beginAccess();
    v14 = *(v1 + v13);
    if (v14)
    {
      [v14 endSession];
      v15 = *(v1 + v13);
    }

    else
    {
      v15 = 0;
    }

    *(v1 + v13) = 0;

    v16 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSessionStarted;
    swift_beginAccess();
    *(v1 + v16) = 0;
    v17 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsService;
    swift_beginAccess();
    v18 = *(v1 + v17);
    *(v1 + v17) = 0;

    v19 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSession;
    v20 = *(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSession);
    if (v20)
    {
      [v20 invalidate];
      v21 = *(v1 + v19);
    }

    else
    {
      v21 = 0;
    }

    *(v1 + v19) = 0;

    v22 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSessionTimer;
    if (*(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSessionTimer))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_25C4C8790();
      swift_unknownObjectRelease();
    }

    *(v1 + v22) = 0;
    swift_unknownObjectRelease();
    v23 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDiscoverTimer;
    if (*(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDiscoverTimer))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_25C4C8790();
      swift_unknownObjectRelease();
    }

    *(v1 + v23) = 0;
    swift_unknownObjectRelease();
    v24 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanSubscriber;
    v25 = *(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanSubscriber);
    if (v25)
    {
      [v25 invalidate];
      v26 = *(v1 + v24);
    }

    else
    {
      v26 = 0;
    }

    *(v1 + v24) = 0;

    v27 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__needsNexusBluetoothAdvertiser;
    v28 = *(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__needsNexusBluetoothAdvertiser);
    if (v28)
    {
      [v28 invalidate];
      v29 = *(v1 + v27);
    }

    else
    {
      v29 = 0;
    }

    *(v1 + v27) = 0;

    if (*(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection))
    {

      sub_25C4C82F0();
    }

    v30 = sub_25C4C7B80();
    v31 = objc_allocWithZone(v30);
    v32 = sub_25C4C7B90();
    sub_25C4986EC(v32);
    sub_25C4B9614();
    sub_25C498FAC(v32);
    v33 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession;
    v34 = *(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession);
    if (v34)
    {
      [v34 invalidate];
      v35 = *(v1 + v33);
    }

    else
    {
      v35 = 0;
    }

    *(v1 + v33) = 0;

    v36 = *(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityStream);
    *(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityStream) = 0;

    if (*(v1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingReported) == 1)
    {
      v37 = objc_allocWithZone(v30);
      v38 = sub_25C4C7B90();
      sub_25C4B3E60(0, v38);
    }

    sub_25C4984E4();
  }
}

uint64_t sub_25C498294(const char *a1, uint64_t (*a2)(void), ...)
{
  v5 = sub_25C4C84C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v2[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue];
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v10 = v9;
  LOBYTE(v9) = sub_25C4C84E0();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    if (qword_27FC0B970 == -1)
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
  v11 = sub_25C4C7BD0();
  __swift_project_value_buffer(v11, qword_27FC0B978);
  v12 = v2;
  v13 = sub_25C4C7BB0();
  v14 = sub_25C4C8720();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;
    v17 = sub_25C494B98();
    v19 = sub_25C458990(v17, v18, &v22);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_25C452000, v13, v14, a1, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x25F888630](v16, -1, -1);
    MEMORY[0x25F888630](v15, -1, -1);
  }

  return a2();
}

void sub_25C4984E4()
{
  if (*(v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__invalidateCoreCalled) == 1)
  {
    v1 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession;
    swift_beginAccess();
    if (!*(v0 + v1))
    {
      v2 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__operations;
      swift_beginAccess();
      if (!*(*(v0 + v2) + 16) && !*(v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection))
      {
        v3 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
        swift_beginAccess();
        if (!*(*(v0 + v3) + 16))
        {
          v4 = v0;
          v5 = (v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_serverEventHandler);
          swift_beginAccess();
          v6 = *v5;
          v7 = v5[1];
          *v5 = 0;
          v5[1] = 0;
          sub_25C45A2C8(v6, v7);
          if (qword_27FC0B970 != -1)
          {
            swift_once();
          }

          v8 = sub_25C4C7BD0();
          __swift_project_value_buffer(v8, qword_27FC0B978);
          v9 = sub_25C4C7BB0();
          v10 = sub_25C4C8720();
          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            *v11 = 0;
            _os_log_impl(&dword_25C452000, v9, v10, "Invalidated", v11, 2u);
            MEMORY[0x25F888630](v11, -1, -1);
          }

          v12 = (v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_invalidationHandler);
          swift_beginAccess();
          v13 = *v12;
          if (*v12)
          {
            v14 = v12[1];

            v13(v15);
            sub_25C45A2C8(v13, v14);
            v16 = *v12;
          }

          else
          {
            v16 = 0;
          }

          v17 = v12[1];
          *v12 = 0;
          v12[1] = 0;
          sub_25C45A2C8(v16, v17);
        }
      }
    }
  }
}

void sub_25C4986EC(uint64_t a1)
{
  v83 = a1;
  v75 = type metadata accessor for NXSessionDaemon.OperationItem(0);
  v71 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v70 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A9A0, &qword_25C4CACF0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v72 = &v66 - v7;
  v85 = sub_25C4C7B20();
  v8 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v78 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A9A8, &qword_25C4CACF8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v66 - v14;
  v16 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingRequests;
  swift_beginAccess();
  v67 = v1;
  v66 = v16;
  v17 = *(v1 + v16);
  v18 = *(v17 + 64);
  v69 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v68 = (v19 + 63) >> 6;
  v76 = v8 + 32;
  v77 = v8 + 16;
  v79 = v8;
  v82 = (v8 + 8);
  v74 = v17;

  v22 = 0;
  v80 = v6;
  v73 = v15;
  if (!v21)
  {
LABEL_5:
    if (v68 <= v22 + 1)
    {
      v24 = v22 + 1;
    }

    else
    {
      v24 = v68;
    }

    v25 = v24 - 1;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v68)
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A9B0, &qword_25C4CAD00);
        (*(*(v39 - 8) + 56))(v13, 1, 1, v39);
        v21 = 0;
        goto LABEL_13;
      }

      v21 = *(v69 + 8 * v23);
      ++v22;
      if (v21)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

  while (1)
  {
    v23 = v22;
LABEL_12:
    v26 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v27 = v26 | (v23 << 6);
    v28 = v74;
    v30 = v78;
    v29 = v79;
    v31 = v85;
    (*(v79 + 16))(v78, *(v74 + 48) + *(v79 + 72) * v27, v85);
    v32 = *(v28 + 56) + 32 * v27;
    v81 = *v32;
    v33 = *(v32 + 24);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A9B0, &qword_25C4CAD00);
    v35 = v13;
    v36 = &v13[*(v34 + 48)];
    v37 = *(v29 + 32);
    v84 = *(v32 + 8);
    v37(v35, v30, v31);
    *v36 = v81;
    *(v36 + 8) = v84;
    *(v36 + 3) = v33;
    v13 = v35;
    (*(*(v34 - 8) + 56))(v35, 0, 1, v34);

    v25 = v23;
    v6 = v80;
    v15 = v73;
LABEL_13:
    sub_25C465DA4(v13, v15, &qword_27FC0A9A8, &qword_25C4CACF8);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A9B0, &qword_25C4CAD00);
    if ((*(*(v38 - 8) + 48))(v15, 1, v38) == 1)
    {
      break;
    }

    (*&v15[*(v38 + 48) + 16])(v83, 0, 1);

    (*v82)(v15, v85);
    v22 = v25;
    if (!v21)
    {
      goto LABEL_5;
    }
  }

  v40 = v67;
  *(v67 + v66) = MEMORY[0x277D84F98];

  v41 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingOperationItems;
  swift_beginAccess();
  v42 = *(v40 + v41);
  v43 = *(v42 + 64);
  v81 = v42 + 64;
  v44 = 1 << *(v42 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & v43;
  v73 = v41;
  v74 = (v44 + 63) >> 6;
  *&v84 = v42;

  v47 = 0;
  v48 = v72;
  if (!v46)
  {
LABEL_21:
    if (v74 <= v47 + 1)
    {
      v50 = v47 + 1;
    }

    else
    {
      v50 = v74;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        goto LABEL_35;
      }

      if (v49 >= v74)
      {
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A9B8, &qword_25C4CAD08);
        (*(*(v65 - 8) + 56))(v6, 1, 1, v65);
        v46 = 0;
        goto LABEL_29;
      }

      v46 = *(v81 + 8 * v49);
      ++v47;
      if (v46)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v49 = v47;
LABEL_28:
    v52 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v53 = v52 | (v49 << 6);
    v54 = v84;
    v55 = v78;
    v56 = v79;
    v57 = v85;
    (*(v79 + 16))(v78, *(v84 + 48) + *(v79 + 72) * v53, v85);
    v58 = v70;
    sub_25C4BACD0(*(v54 + 56) + *(v71 + 72) * v53, v70, type metadata accessor for NXSessionDaemon.OperationItem);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A9B8, &qword_25C4CAD08);
    v60 = *(v59 + 48);
    v61 = *(v56 + 32);
    v6 = v80;
    v61(v80, v55, v57);
    sub_25C4BB0E8(v58, &v6[v60], type metadata accessor for NXSessionDaemon.OperationItem);
    (*(*(v59 - 8) + 56))(v6, 0, 1, v59);
    v51 = v49;
    v48 = v72;
LABEL_29:
    sub_25C465DA4(v6, v48, &qword_27FC0A9A0, &qword_25C4CACF0);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A9B8, &qword_25C4CAD08);
    if ((*(*(v62 - 8) + 48))(v48, 1, v62) == 1)
    {
      break;
    }

    v63 = v48 + *(v62 + 48);
    v64 = *(v63 + *(v75 + 28));

    sub_25C4BAF14(v63, type metadata accessor for NXSessionDaemon.OperationItem);
    v64(v83);

    (*v82)(v48, v85);
    v47 = v51;
    if (!v46)
    {
      goto LABEL_21;
    }
  }

  *&v73[v67] = MEMORY[0x277D84F98];
}

uint64_t sub_25C498FAC(void *a1)
{
  v152 = a1;
  v2 = sub_25C4C7B20();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v132 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v132 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v144 = v132 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v150 = v132 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v143 = v132 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v151 = v132 - v20;
  MEMORY[0x28223BE20](v19);
  v142 = v132 - v21;
  v154 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v22 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v24 = v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
  swift_beginAccess();
  v136 = v25;
  v26 = *(v1 + v25);
  v27 = *(v26 + 16);
  if (!v27)
  {
    v130 = v136;
    goto LABEL_58;
  }

  v139 = v6;
  v133 = v1;
  v28 = v26 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v153 = *(v22 + 72);
  v148 = (v3 + 32);
  v147 = (v3 + 16);
  v155 = (v3 + 8);
  v132[1] = v26;

  *&v29 = 136315650;
  v138 = v29;
  *&v29 = 136315394;
  v137 = v29;
  v145 = v2;
  v149 = v9;
  v146 = v12;
  v30 = v150;
  v31 = v151;
  do
  {
    sub_25C4BACD0(v28, v24, type metadata accessor for NXSessionDaemon.SendItem);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 6)
      {
        if (EnumCaseMultiPayload != 5)
        {
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A7D8, &qword_25C4CA850);
          v33 = v32[12];
          v34 = v32[16];
          (*&v24[v32[20]])(v152);

          v35 = sub_25C4C7E50();
          v36 = &v24[v34];
          v30 = v150;
          (*(*(v35 - 8) + 8))(v36, v35);
          (*v155)(&v24[v33], v2);
          goto LABEL_4;
        }

        v58 = *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8F0, &qword_25C4CAC80) + 48)];
        v59 = v144;
        (*v148)(v144, v24, v2);
        if (qword_27FC0B970 != -1)
        {
          swift_once();
        }

        v60 = sub_25C4C7BD0();
        __swift_project_value_buffer(v60, qword_27FC0B978);
        (*v147)(v12, v59, v2);
        v61 = v58;
        v62 = sub_25C4C7BB0();
        v63 = sub_25C4C8720();

        if (!os_log_type_enabled(v62, v63))
        {

          v117 = *v155;
          (*v155)(v12, v2);
          (v117)(v59, v2);
          v9 = v149;
          goto LABEL_55;
        }

        LODWORD(v141) = v63;
        v64 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v157 = v140;
        *v64 = v137;
        sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v65 = sub_25C4C89A0();
        v67 = v66;
        v135 = *v155;
        (v135)(v12, v2);
        v68 = sub_25C458990(v65, v67, &v157);

        *(v64 + 4) = v68;
        *(v64 + 12) = 2080;
        if (v58)
        {
          swift_getErrorValue();
          v69 = sub_25C4C8A30();
          v71 = v70;
        }

        else
        {
          v71 = 0xE300000000000000;
          v69 = 7104878;
        }

        v121 = v144;
        v122 = sub_25C458990(v69, v71, &v157);

        *(v64 + 14) = v122;
        _os_log_impl(&dword_25C452000, v62, v141, "Abort operation cancel response: itemUUID=%s, error=%s", v64, 0x16u);
        v123 = v140;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v123, -1, -1);
        MEMORY[0x25F888630](v64, -1, -1);

        v124 = v121;
        v2 = v145;
        v125 = v145;
        v126 = &v156;
LABEL_52:
        (*(v126 - 32))(v124, v125);
LABEL_53:
        v9 = v149;
        goto LABEL_54;
      }

      if (EnumCaseMultiPayload == 7)
      {
        v72 = &qword_27FC0A7E0;
        v73 = &qword_25C4CA858;
        goto LABEL_29;
      }

      if (EnumCaseMultiPayload != 8)
      {
        v76 = *(v24 + 1);
        v141 = *v24;
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8E8, &qword_25C4CAC78);
        v78 = *(v77 + 48);
        sub_25C4BACC4(*&v24[*(v77 + 64)], *&v24[*(v77 + 64) + 8], v24[*(v77 + 64) + 16]);
        (*v148)(v9, &v24[v78], v2);
        if (qword_27FC0B970 != -1)
        {
          swift_once();
        }

        v79 = sub_25C4C7BD0();
        __swift_project_value_buffer(v79, qword_27FC0B978);
        v80 = v139;
        (*v147)(v139, v9, v2);

        v81 = v152;
        v82 = v152;
        v83 = sub_25C4C7BB0();
        v84 = sub_25C4C8720();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          v157 = v140;
          *v85 = v138;
          v86 = sub_25C458990(v141, v76, &v157);
          LODWORD(v141) = v84;
          v87 = v86;

          *(v85 + 4) = v87;
          *(v85 + 12) = 2080;
          sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v88 = sub_25C4C89A0();
          v90 = v89;
          v91 = *v155;
          (*v155)(v80, v145);
          v92 = sub_25C458990(v88, v90, &v157);

          *(v85 + 14) = v92;
          *(v85 + 22) = 2080;
          swift_getErrorValue();
          v93 = sub_25C4C8A30();
          v95 = sub_25C458990(v93, v94, &v157);

          *(v85 + 24) = v95;
          _os_log_impl(&dword_25C452000, v83, v141, "Abort response: requestName=%s, requestUUID=%s, error=%s", v85, 0x20u);
          v96 = v140;
          swift_arrayDestroy();
          MEMORY[0x25F888630](v96, -1, -1);
          v97 = v85;
          v2 = v145;
          MEMORY[0x25F888630](v97, -1, -1);

          v9 = v149;
          (v91)(v149, v2);
        }

        else
        {

          v116 = *v155;
          (*v155)(v80, v2);
          v9 = v149;
          (v116)(v149, v2);
        }

LABEL_54:
        v12 = v146;
LABEL_55:
        v30 = v150;
LABEL_4:
        v31 = v151;
        goto LABEL_5;
      }

      v54 = *(v24 + 4);
      sub_25C45A004(*(v24 + 2), *(v24 + 3));

      v54(v152, 0, 1);
      v31 = v151;
    }

    else
    {
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          if (EnumCaseMultiPayload == 3)
          {
            v38 = *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8F0, &qword_25C4CAC80) + 48)];
            v39 = v143;
            (*v148)(v143, v24, v2);
            if (qword_27FC0B970 != -1)
            {
              swift_once();
            }

            v40 = sub_25C4C7BD0();
            __swift_project_value_buffer(v40, qword_27FC0B978);
            (*v147)(v30, v39, v2);
            v41 = v38;
            v42 = sub_25C4C7BB0();
            v43 = sub_25C4C8720();

            if (!os_log_type_enabled(v42, v43))
            {

              v115 = *v155;
              (*v155)(v30, v2);
              (v115)(v39, v2);
              v9 = v149;
              v12 = v146;
              goto LABEL_4;
            }

            LODWORD(v141) = v43;
            v44 = swift_slowAlloc();
            v140 = swift_slowAlloc();
            v157 = v140;
            *v44 = v137;
            sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v45 = sub_25C4C89A0();
            v47 = v46;
            v48 = v30;
            v49 = *v155;
            (*v155)(v48, v2);
            v50 = sub_25C458990(v45, v47, &v157);

            *(v44 + 4) = v50;
            *(v44 + 12) = 2080;
            if (v38)
            {
              swift_getErrorValue();
              v51 = sub_25C4C8A30();
              v53 = v52;
            }

            else
            {
              v53 = 0xE300000000000000;
              v51 = 7104878;
            }

            v119 = sub_25C458990(v51, v53, &v157);

            *(v44 + 14) = v119;
            _os_log_impl(&dword_25C452000, v42, v141, "Abort operation update response: itemUUID=%s, error=%s", v44, 0x16u);
            v120 = v140;
            swift_arrayDestroy();
            MEMORY[0x25F888630](v120, -1, -1);
            MEMORY[0x25F888630](v44, -1, -1);

            v2 = v145;
            (v49)(v143, v145);
            goto LABEL_53;
          }

          v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A7D0, &qword_25C4CA848) + 48);
          goto LABEL_31;
        }

        v72 = &qword_27FC0A7C8;
        v73 = &qword_25C4CA840;
LABEL_29:
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(v72, v73);
        sub_25C45A004(*&v24[*(v74 + 48)], *&v24[*(v74 + 48) + 8]);
        v75 = *(v74 + 64);
LABEL_31:
        (*&v24[v75])(v152);

        (*v155)(v24, v2);
        goto LABEL_5;
      }

      if (!EnumCaseMultiPayload)
      {

        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A7C0, &qword_25C4CA838);
        v56 = v55[12];
        sub_25C45A004(*&v24[v55[16]], *&v24[v55[16] + 8]);
        (*&v24[v55[20]])(v152);

        v57 = &v24[v56];
        v31 = v151;
        (*v155)(v57, v2);
        goto LABEL_5;
      }

      v98 = *(v24 + 1);
      v140 = *v24;
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8F8, &qword_25C4CAC88);
      v100 = *&v24[*(v99 + 64)];
      v101 = v142;
      (*v148)(v142, &v24[*(v99 + 48)], v2);
      if (qword_27FC0B970 != -1)
      {
        swift_once();
      }

      v102 = sub_25C4C7BD0();
      __swift_project_value_buffer(v102, qword_27FC0B978);
      (*v147)(v31, v101, v2);

      v103 = v100;
      v104 = sub_25C4C7BB0();
      v105 = sub_25C4C8720();

      LODWORD(v141) = v105;
      if (os_log_type_enabled(v104, v105))
      {
        v135 = v104;
        v106 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v157 = v134;
        *v106 = v138;
        v107 = sub_25C458990(v140, v98, &v157);

        *(v106 + 4) = v107;
        *(v106 + 12) = 2080;
        sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v108 = sub_25C4C89A0();
        v110 = v109;
        v140 = *v155;
        (v140)(v31, v2);
        v111 = sub_25C458990(v108, v110, &v157);

        *(v106 + 14) = v111;
        *(v106 + 22) = 2080;
        if (v100)
        {
          swift_getErrorValue();
          v112 = sub_25C4C8A30();
          v114 = v113;
        }

        else
        {
          v114 = 0xE300000000000000;
          v112 = 7104878;
        }

        v127 = sub_25C458990(v112, v114, &v157);

        *(v106 + 24) = v127;
        v128 = v135;
        _os_log_impl(&dword_25C452000, v135, v141, "Abort operation start response: operationName=%s, itemUUID=%s, error=%s", v106, 0x20u);
        v129 = v134;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v129, -1, -1);
        MEMORY[0x25F888630](v106, -1, -1);

        v124 = v142;
        v2 = v145;
        v125 = v145;
        v126 = &v157;
        goto LABEL_52;
      }

      v118 = *v155;
      (*v155)(v31, v2);
      (v118)(v101, v2);
      v9 = v149;
      v12 = v146;
    }

    v30 = v150;
LABEL_5:
    v28 += v153;
    --v27;
  }

  while (v27);

  v1 = v133;
  v130 = v136;
LABEL_58:
  *(v1 + v130) = MEMORY[0x277D84F90];
}

void sub_25C49A214(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__clients;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_14:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = v13 | (v10 << 6);
    v15 = *(*(v4 + 48) + 8 * v14);
    sub_25C4B8A80(*(v4 + 56) + 16 * v14, v18);
    v19 = v15;
    sub_25C4BBBA8(v18, v20);
    v12 = v10;
LABEL_15:
    sub_25C465DA4(&v19, v21, &qword_27FC0A998, &qword_25C4CACD8);
    if (!v22[0] && v22[1] == 1)
    {

      return;
    }

    sub_25C4BBBA8(v22, &v19);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = v20[0];
      ObjectType = swift_getObjectType();
      (*(v16 + 8))(a1, ObjectType, v16);
      swift_unknownObjectRelease();
    }

    sub_25C4BBBE0(&v19);
    v9 = v12;
  }

  if (v8 <= v9 + 1)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11 - 1;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      v7 = 0;
      v19 = 0;
      v20[0] = 0;
      v20[1] = 1;
      goto LABEL_15;
    }

    v7 = *(v4 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

unint64_t sub_25C49A3EC(char a1)
{
  result = 0x696C616974696E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6F637369446E616ELL;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
    case 10:
      result = 0xD000000000000012;
      break;
    case 5:
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x6973736553736469;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x537463656E6E6F63;
      break;
    case 12:
      result = 0x577463656E6E6F63;
      break;
    case 13:
      result = 0x6972655672696170;
      break;
    case 14:
      result = 0x6972655672696170;
      break;
    case 15:
    case 16:
      result = 0x7574655372696170;
      break;
    case 17:
      result = 0x7964616572;
      break;
    case 18:
      result = 0x726F727265;
      break;
    case 19:
      result = 0x696157726F727265;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25C49A694(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_25C49A3EC(*a1);
  v5 = v4;
  if (v3 == sub_25C49A3EC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25C4C89E0();
  }

  return v8 & 1;
}

uint64_t sub_25C49A71C()
{
  v1 = *v0;
  sub_25C4C8A60();
  sub_25C49A3EC(v1);
  sub_25C4C8580();

  return sub_25C4C8A90();
}

uint64_t sub_25C49A780(uint64_t a1)
{
  sub_25C49A3EC(*v1);
  sub_25C4C8580();
}

uint64_t sub_25C49A7D4(uint64_t a1)
{
  v2 = *v1;
  sub_25C4C8A60();
  sub_25C49A3EC(v2);
  sub_25C4C8580();

  return sub_25C4C8A90();
}

unint64_t sub_25C49A834@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25C4B9B18(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_25C49A864@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25C49A3EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25C49A890()
{
  v2 = v0;
  v3 = sub_25C4C8460();
  v81 = *(v3 - 8);
  v82 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v80 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v79 = &v65 - v6;
  v83 = sub_25C4C84B0();
  v78 = *(v83 - 8);
  v7 = MEMORY[0x28223BE20](v83);
  v76 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = &v65 - v9;
  v10 = sub_25C4C8470();
  v74 = *(v10 - 8);
  v75 = v10;
  MEMORY[0x28223BE20](v10);
  v72 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_25C4C8490();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25C4C8760();
  v69 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25C4C7C50();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_endpoint, v16);
  v20 = (*(v17 + 88))(v19, v16);
  v21 = *MEMORY[0x277D35610];
  (*(v17 + 8))(v19, v16);
  if (v20 == v21)
  {
    v68 = v1;
    v22 = [objc_allocWithZone(MEMORY[0x277CBDFF0]) init];
    v23 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__needsNexusBluetoothAdvertiser;
    v24 = *(v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__needsNexusBluetoothAdvertiser);
    if (v24)
    {
      [v24 invalidate];
      v25 = *(v2 + v23);
    }

    else
    {
      v25 = 0;
    }

    *(v2 + v23) = v22;
    v28 = v22;

    v29 = *(v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
    [v28 setDispatchQueue_];
    [v28 setNearbyActionType_];
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *(v32 + 24) = v31;
    v88 = sub_25C4BBD40;
    v89 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v85 = 1107296256;
    v86 = sub_25C45BE80;
    v87 = &block_descriptor_106;
    v33 = _Block_copy(&aBlock);

    v67 = v28;
    [v28 activateWithCompletion_];
    _Block_release(v33);
    v34 = [objc_allocWithZone(MEMORY[0x277D028A8]) init];
    v35 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanSubscriber;
    v36 = *(v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanSubscriber);
    if (v36)
    {
      [v36 0x2799AAE78];
      v37 = *(v2 + v35);
    }

    else
    {
      v37 = 0;
    }

    *(v2 + v35) = v34;
    v38 = v34;

    [v38 setDispatchQueue_];
    [v38 setControlFlags_];
    sub_25C4C7CC0();
    v39 = sub_25C4C8540();

    [v38 setServiceType_];

    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    *(v42 + 16) = v40;
    *(v42 + 24) = v41;
    v88 = sub_25C4BBD8C;
    v89 = v42;
    aBlock = MEMORY[0x277D85DD0];
    v85 = 1107296256;
    v86 = sub_25C45B97C;
    v87 = &block_descriptor_116;
    v43 = _Block_copy(&aBlock);

    [v38 setEndpointFoundHandler_];
    _Block_release(v43);
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v46 = swift_allocObject();
    *(v46 + 16) = v44;
    *(v46 + 24) = v45;
    v88 = sub_25C4BBFB0;
    v89 = v46;
    aBlock = MEMORY[0x277D85DD0];
    v85 = 1107296256;
    v86 = sub_25C45BE80;
    v87 = &block_descriptor_124;
    v47 = _Block_copy(&aBlock);

    v66 = v38;
    [v38 activateWithCompletion_];
    _Block_release(v47);
    sub_25C4BC77C(0, &qword_27FC0A1C0, 0x277D85CA0);
    aBlock = MEMORY[0x277D84F90];
    sub_25C4B8B3C(&unk_27FC0A9C0, MEMORY[0x277D85278], MEMORY[0x277D85280]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A1D0, &qword_25C4C9B10);
    sub_25C4BC1E8(&qword_27FC0A9D0, &unk_27FC0A1D0, &qword_25C4C9B10, MEMORY[0x277D83970]);
    sub_25C4C8800();
    v48 = sub_25C4C8770();
    (*(v69 + 8))(v15, v13);
    v49 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDiscoverTimer;
    if (*(v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDiscoverTimer))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_25C4C8790();
      swift_unknownObjectRelease();
    }

    *(v2 + v49) = v48;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    v51 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v53 = swift_allocObject();
    *(v53 + 16) = v51;
    *(v53 + 24) = v52;
    v88 = sub_25C4BC230;
    v89 = v53;
    aBlock = MEMORY[0x277D85DD0];
    v85 = 1107296256;
    v86 = sub_25C45B768;
    v87 = &block_descriptor_134;
    v54 = _Block_copy(&aBlock);

    v55 = v70;
    sub_25C4C8480();
    v65 = v48;
    v56 = v72;
    sub_25C45F518();
    sub_25C4C8780();
    _Block_release(v54);
    (*(v74 + 8))(v56, v75);
    (*(v71 + 8))(v55, v73);

    v57 = v76;
    sub_25C4C84A0();
    v58 = v77;
    sub_25C4C84D0();
    v78 = *(v78 + 8);
    (v78)(v57, v83);
    v60 = v81;
    v59 = v82;
    v61 = *(v81 + 104);
    v62 = v79;
    v61(v79, *MEMORY[0x277D85180], v82);
    v63 = v80;
    *v80 = 0;
    v61(v63, *MEMORY[0x277D85168], v59);
    MEMORY[0x25F887C70](v58, v62, v63, ObjectType);
    v64 = *(v60 + 8);
    v64(v63, v59);
    v64(v62, v59);
    (v78)(v58, v83);
    sub_25C4C87A0();

    return swift_unknownObjectRelease();
  }

  else
  {
    v26 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }
}

uint64_t sub_25C49B4B4()
{
  v2 = v0;
  v3 = sub_25C4C8460();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v67 = &v50 - v8;
  v68 = sub_25C4C84B0();
  v66 = *(v68 - 8);
  v9 = MEMORY[0x28223BE20](v68);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v50 - v12;
  v13 = sub_25C4C8470();
  v63 = *(v13 - 8);
  v64 = v13;
  MEMORY[0x28223BE20](v13);
  v61 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_25C4C8490();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25C4C8760();
  MEMORY[0x28223BE20](v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanEndpointFound);
  if (v20)
  {
    v54 = v11;
    v55 = v7;
    v56 = v4;
    v57 = v3;
    v58 = v1;
    v51 = v17;
    v21 = objc_allocWithZone(MEMORY[0x277D02890]);
    v22 = v20;
    v23 = [v21 init];
    v24 = *(v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSession);
    *(v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSession) = v23;
    v25 = v23;

    [v25 setControlFlags_];
    v50 = *(v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
    [v25 setDispatchQueue_];
    v53 = v22;
    [v25 setPeerEndpoint_];
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = v27;
    v73 = sub_25C4BC34C;
    v74 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v70 = 1107296256;
    v71 = sub_25C45BE80;
    v72 = &block_descriptor_144;
    v29 = _Block_copy(&aBlock);

    v52 = v25;
    [v25 activateWithCompletion_];
    _Block_release(v29);
    sub_25C4BC77C(0, &qword_27FC0A1C0, 0x277D85CA0);
    aBlock = MEMORY[0x277D84F90];
    sub_25C4B8B3C(&unk_27FC0A9C0, MEMORY[0x277D85278], MEMORY[0x277D85280]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A1D0, &qword_25C4C9B10);
    sub_25C4BC1E8(&qword_27FC0A9D0, &unk_27FC0A1D0, &qword_25C4C9B10, MEMORY[0x277D83970]);
    sub_25C4C8800();
    v30 = sub_25C4C8770();
    (*(v51 + 8))(v19, v16);
    v31 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSessionTimer;
    if (*(v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSessionTimer))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_25C4C8790();
      swift_unknownObjectRelease();
    }

    v34 = v54;
    *(v2 + v31) = v30;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v38 = swift_allocObject();
    *(v38 + 16) = v36;
    *(v38 + 24) = v37;
    v73 = sub_25C4BC660;
    v74 = v38;
    aBlock = MEMORY[0x277D85DD0];
    v70 = 1107296256;
    v71 = sub_25C45B768;
    v72 = &block_descriptor_152;
    v39 = _Block_copy(&aBlock);
    v50 = v30;
    v40 = v39;

    v41 = v59;
    sub_25C4C8480();
    v42 = v61;
    v54 = ObjectType;
    sub_25C45F518();
    sub_25C4C8780();
    _Block_release(v40);
    (*(v63 + 8))(v42, v64);
    (*(v60 + 8))(v41, v62);

    sub_25C4C84A0();
    v43 = v65;
    sub_25C4C84D0();
    v66 = *(v66 + 8);
    (v66)(v34, v68);
    v45 = v56;
    v44 = v57;
    v46 = *(v56 + 104);
    v47 = v67;
    v46(v67, *MEMORY[0x277D85180], v57);
    v48 = v55;
    *v55 = 0;
    v46(v48, *MEMORY[0x277D85168], v44);
    MEMORY[0x25F887C70](v43, v47, v48, v54);
    v49 = *(v45 + 8);
    v49(v48, v44);
    v49(v47, v44);
    (v66)(v43, v68);
    sub_25C4C87A0();

    return swift_unknownObjectRelease();
  }

  else
  {
    v32 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }
}

void sub_25C49BDA0()
{
  v2 = v1;
  v3 = sub_25C4C7C50();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsService;
  swift_beginAccess();
  v8 = *(v0 + v7);
  if (!v8)
  {
    if (!*(v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsServiceID + 8))
    {
      goto LABEL_25;
    }

    v18 = objc_allocWithZone(MEMORY[0x277D18778]);
    v19 = sub_25C4C8540();
    v20 = [v18 initWithService_];

    v21 = *(v0 + v7);
    *(v0 + v7) = v20;

    v8 = *(v0 + v7);
    if (!v8)
    {
      goto LABEL_25;
    }
  }

  v9 = [v8 accounts];
  if (!v9)
  {
    __break(1u);
    goto LABEL_40;
  }

  v10 = v9;
  v58 = v3;
  v59 = v0;
  v55 = v1;
  v11 = sub_25C4BC77C(0, &qword_27FC0A9E0, 0x277D186C0);
  sub_25C4BC7C4();
  v12 = sub_25C4C8610();

  v57 = v4;
  v56 = v6;
  v61 = v11;
  if ((v12 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_25C4C8830();
    sub_25C4C8640();
    v13 = v63;
    v14 = v64;
    v15 = v65;
    v16 = v66;
    v17 = v67;
  }

  else
  {
    v22 = -1 << *(v12 + 32);
    v14 = v12 + 56;
    v15 = ~v22;
    v23 = -v22;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v17 = v24 & *(v12 + 56);

    v16 = 0;
    v13 = v12;
  }

  v60 = v15;
  if (v13 < 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  v25 = v16;
  v26 = v17;
  v27 = v16;
  if (!v17)
  {
    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= ((v15 + 64) >> 6))
      {
        goto LABEL_24;
      }

      v26 = *(v14 + 8 * v27);
      ++v25;
      if (v26)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_38:
    swift_once();
    goto LABEL_29;
  }

LABEL_17:
  v11 = (v26 - 1) & v26;
  v2 = *(*(v13 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));
  if (!v2)
  {
LABEL_24:
    sub_25C48B0D8(v13);

LABEL_25:
    v29 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return;
  }

  while (([v2 isActive] & 1) == 0)
  {

    v16 = v27;
    v17 = v11;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    v28 = sub_25C4C8860();
    if (v28)
    {
      v68 = v28;
      swift_dynamicCast();
      v2 = v62[0];
      v27 = v16;
      v11 = v17;
      if (v62[0])
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  sub_25C48B0D8(v13);

  v30 = v57;
  v14 = v59;
  v31 = v56;
  v32 = v58;
  (*(v57 + 16))(v56, v59 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_endpoint, v58);
  if ((*(v30 + 88))(v31, v32) != *MEMORY[0x277D35608])
  {
    (*(v30 + 8))(v31, v32);
    v44 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();

    return;
  }

  (*(v30 + 96))(v31, v32);
  v11 = *v31;
  v16 = v31[1];
  if (qword_27FC0B970 != -1)
  {
    goto LABEL_38;
  }

LABEL_29:
  v33 = sub_25C4C7BD0();
  __swift_project_value_buffer(v33, qword_27FC0B978);
  v34 = v2;

  v35 = sub_25C4C7BB0();
  v36 = sub_25C4C8720();
  if (!os_log_type_enabled(v35, v36))
  {

    goto LABEL_34;
  }

  v61 = v11;
  v37 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v62[0] = v38;
  *v37 = 136315394;
  v39 = [v34 uniqueID];

  if (!v39)
  {
LABEL_40:
    __break(1u);
    return;
  }

  v40 = sub_25C4C8550();
  v42 = v41;

  v43 = sub_25C458990(v40, v42, v62);

  *(v37 + 4) = v43;
  *(v37 + 12) = 2080;
  v11 = v61;
  *(v37 + 14) = sub_25C458990(v61, v16, v62);
  _os_log_impl(&dword_25C452000, v35, v36, "IDS client session start: account=%s, destination=%s", v37, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x25F888630](v38, -1, -1);
  MEMORY[0x25F888630](v37, -1, -1);

  v14 = v59;
LABEL_34:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A9F0, &qword_25C4CAD18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25C4CA320;
  v62[0] = v11;
  v62[1] = v16;
  v46 = v34;
  sub_25C4C88A0();
  sub_25C4B8B84(inited);
  swift_setDeallocating();
  sub_25C4BC82C(inited + 32);
  v47 = objc_allocWithZone(MEMORY[0x277D18788]);
  v48 = sub_25C4C8600();

  v49 = [v47 initWithAccount:v46 destinations:v48 transportType:1];

  v50 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession;
  swift_beginAccess();
  v51 = *(v14 + v50);
  *(v14 + v50) = v49;
  v52 = v49;

  if (v52)
  {
    v53 = *(v14 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
    v54 = v52;
    [v54 setDelegate:v14 queue:v53];
  }
}

uint64_t sub_25C49C57C()
{
  v1 = sub_25C4C8170();
  v81 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v73 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v73 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v73 - v11;
  v13 = sub_25C4C7C50();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v19 = &v73 - v16;
  if (*&v0[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection])
  {
    v20 = v0;
    v21 = &v0[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_endpoint];
    v22 = v17;
    (*(v14 + 16))(&v73 - v16, v21, v17);
    v23 = (*(v14 + 88))(v19, v22);
    v24 = *MEMORY[0x277D35608];
    v25 = *(v14 + 8);
    swift_retain_n();
    v25(v19, v22);
    if (v23 == v24)
    {
      if (qword_27FC0B970 != -1)
      {
        swift_once();
      }

      v26 = sub_25C4C7BD0();
      __swift_project_value_buffer(v26, qword_27FC0B978);
      v27 = v20;
      v28 = sub_25C4C7BB0();
      v29 = sub_25C4C8720();

      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_19;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v83 = v31;
      *v30 = 136315138;
      v32 = sub_25C494B98();
      v34 = sub_25C458990(v32, v33, &v83);

      *(v30 + 4) = v34;
      v35 = "Connection start: client, peer=%s";
    }

    else
    {
      if (qword_27FC0B970 != -1)
      {
        swift_once();
      }

      v59 = sub_25C4C7BD0();
      __swift_project_value_buffer(v59, qword_27FC0B978);
      v60 = v20;
      v28 = sub_25C4C7BB0();
      v29 = sub_25C4C8720();

      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_19;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v83 = v31;
      *v30 = 136315138;
      v61 = sub_25C494B98();
      v63 = sub_25C458990(v61, v62, &v83);

      *(v30 + 4) = v63;
      v35 = "Connection start: server, peer=%s";
    }

    _os_log_impl(&dword_25C452000, v28, v29, v35, v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x25F888630](v31, -1, -1);
    MEMORY[0x25F888630](v30, -1, -1);
LABEL_19:

LABEL_20:
    v64 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v65 = swift_allocObject();
    swift_weakInit();
    v66 = swift_allocObject();
    *(v66 + 16) = v64;
    *(v66 + 24) = v65;

    sub_25C4C8290();

    sub_25C4C82D0();
  }

  v76 = v7;
  v77 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection;
  v36 = v81;
  v78 = v4;
  v79 = v12;
  v80 = v1;
  v37 = v0;
  v38 = &v0[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_endpoint];
  v39 = v18;
  v40 = v17;
  (*(v14 + 16))(v18, v38, v17);
  result = (*(v14 + 88))(v39, v40);
  if (result == *MEMORY[0x277D35620])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x277D355F0] || result == *MEMORY[0x277D35628] || result == *MEMORY[0x277D35608])
  {
    return (*(v14 + 8))(v39, v40);
  }

  if (result == *MEMORY[0x277D355F8])
  {
LABEL_8:
    (*(v14 + 8))(v39, v40);
    sub_25C4C7CE0();
    v42 = v82;
    result = sub_25C4C7C30();
    if (v42)
    {
      return result;
    }

    v82 = 0;
    v44 = v79;
    v43 = v80;
    (v36[4])(v79, v10, v80);
    goto LABEL_10;
  }

  if (result == *MEMORY[0x277D35610])
  {
    (*(v14 + 8))(v39, v40);
    v43 = v80;
    if (!*&v37[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanPeerAddressString + 8])
    {
      v72 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      return swift_willThrow();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA00, &qword_25C4CA340);

    v44 = v79;
    sub_25C4C8130();
    sub_25C4C7CE0();
    sub_25C4C8140();
    (v36[13])(v44, *MEMORY[0x277CD8B08], v43);
LABEL_10:
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v45 = sub_25C4C7BD0();
    __swift_project_value_buffer(v45, qword_27FC0B978);
    v46 = v36;
    v47 = v36[2];
    v48 = v76;
    v47(v76, v44, v43);
    v49 = sub_25C4C7BB0();
    v50 = sub_25C4C8720();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v83 = v81;
      *v51 = 136315138;
      v75 = v50;
      v74 = sub_25C4C8110();
      v53 = v52;
      v54 = v46[1];
      v54(v48, v80);
      v55 = v47;
      v56 = sub_25C458990(v74, v53, &v83);

      *(v51 + 4) = v56;
      v47 = v55;
      _os_log_impl(&dword_25C452000, v49, v75, "Connection start: client, peer=%s", v51, 0xCu);
      v57 = v81;
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x25F888630](v57, -1, -1);
      v58 = v51;
      v43 = v80;
      MEMORY[0x25F888630](v58, -1, -1);
    }

    else
    {

      v54 = v46[1];
      v54(v48, v43);
    }

    v67 = v79;
    v47(v78, v79, v43);
    sub_25C4C8350();
    sub_25C4C8340();
    sub_25C4C8320();
    swift_allocObject();
    v68 = sub_25C4C82A0();
    v69 = v43;
    v70 = v68;
    v54(v67, v69);
    *&v37[v77] = v70;
    swift_retain_n();

    goto LABEL_20;
  }

  v71 = v80;
  if (result == *MEMORY[0x277D35600])
  {
    (*(v14 + 96))(v39, v40);
    return (v36[1])(v39, v71);
  }

  if (result != *MEMORY[0x277D35618])
  {
    return (*(v14 + 8))(v39, v40);
  }

  return result;
}

void sub_25C49CF5C()
{
  v75 = sub_25C4C7E50();
  v1 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_25C4C7B20();
  v3 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v77 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v5 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v7 = (v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionState) != 17)
  {
    return;
  }

  v8 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
  swift_beginAccess();
  v9 = *(v0 + v8);
  v10 = *(v9 + 16);
  if (!v10)
  {
    goto LABEL_29;
  }

  v11 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v12 = *(v5 + 72);
  v79 = (v3 + 32);
  v80 = v12;
  v78 = (v3 + 8);
  v73 = (v1 + 32);
  v71 = v8;
  v72 = (v1 + 8);
  v70[1] = v9;

  v14 = v76;
  v13 = v77;
  do
  {
    sub_25C4BACD0(v11, v7, type metadata accessor for NXSessionDaemon.SendItem);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          if (EnumCaseMultiPayload != 3)
          {
            v47 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A7D0, &qword_25C4CA848) + 48));
            v48 = *v47;
            v49 = v47[1];
            (*v79)(v13, v7, v14);
            sub_25C4ADDDC(v13, v48, v49);

            goto LABEL_6;
          }

          v23 = *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8F0, &qword_25C4CAC80) + 48));
          (*v79)(v13, v7, v14);
          v24 = sub_25C4BB254;
          v25 = v13;
          v26 = v23;
          v27 = 7;
          v28 = "Send operation update response: itemUUID=%s";
          v29 = &unk_286E23D60;
          goto LABEL_21;
        }

        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A7C8, &qword_25C4CA840);
        v16 = v7 + *(v15 + 48);
        v17 = *v16;
        v18 = *(v16 + 1);
        v19 = (v7 + *(v15 + 64));
        v20 = *v19;
        v21 = v19[1];
        (*v79)(v13, v7, v14);
        sub_25C4AD580(v13, v17, v18, v20, v21);
LABEL_5:

        sub_25C45A004(v17, v18);
LABEL_6:
        (*v78)(v13, v14);
        goto LABEL_7;
      }

      if (EnumCaseMultiPayload)
      {
        v58 = *v7;
        v59 = v7[1];
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8F8, &qword_25C4CAC88);
        v61 = *(v7 + *(v60 + 64));
        (*v79)(v13, (v7 + *(v60 + 48)), v14);
        sub_25C4AD104(v58, v59, v13, v61);
      }

      else
      {
        v32 = *v7;
        v33 = v7[1];
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A7C0, &qword_25C4CA838);
        v35 = (v7 + v34[16]);
        v37 = *v35;
        v36 = v35[1];
        v38 = (v7 + v34[20]);
        v40 = *v38;
        v39 = v38[1];
        (*v79)(v77, (v7 + v34[12]), v76);
        sub_25C4AC804(v32, v33, v77, v37, v36, v40, v39);

        v41 = v37;
        v14 = v76;
        sub_25C45A004(v41, v36);
        v13 = v77;
      }

LABEL_26:

      goto LABEL_6;
    }

    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A7D8, &qword_25C4CA850);
        v63 = v62[16];
        v64 = (v7 + v62[20]);
        v65 = *v64;
        v66 = v64[1];
        (*v79)(v13, (v7 + v62[12]), v14);
        v67 = v74;
        v68 = v7 + v63;
        v69 = v75;
        (*v73)(v74, v68, v75);
        sub_25C4B8C10(v13, v67, v65, v66);

        (*v72)(v67, v69);
        goto LABEL_6;
      }

      v23 = *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8F0, &qword_25C4CAC80) + 48));
      (*v79)(v13, v7, v14);
      v24 = sub_25C4BB498;
      v25 = v13;
      v26 = v23;
      v27 = 9;
      v28 = "Send operation cancel response: itemUUID=%s";
      v29 = &unk_286E23DB0;
LABEL_21:
      sub_25C4AE604(v25, v26, v27, v28, v29, v24);

      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A7E0, &qword_25C4CA858);
      v43 = v7 + *(v42 + 48);
      v17 = *v43;
      v18 = *(v43 + 1);
      v44 = (v7 + *(v42 + 64));
      v45 = *v44;
      v46 = v44[1];
      (*v79)(v13, v7, v14);
      sub_25C4AEA24(v13, v17, v18, v45, v46);
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload != 8)
    {
      v50 = *v7;
      v51 = v7[1];
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8E8, &qword_25C4CAC78);
      v53 = v7 + *(v52 + 64);
      v54 = *v53;
      v55 = *(v53 + 1);
      v56 = v53[16];
      (*v79)(v77, (v7 + *(v52 + 48)), v14);
      sub_25C4AF490(v50, v51, v77, v54, v55, v56);
      v57 = v56;
      v13 = v77;
      sub_25C4BACC4(v54, v55, v57);
      goto LABEL_26;
    }

    v30 = v7[2];
    v31 = v7[3];
    sub_25C4AEE60(*v7, v7[1], v30, v31, v7[4], v7[5]);

    sub_25C45A004(v30, v31);

LABEL_7:
    v11 += v80;
    --v10;
  }

  while (v10);

  v8 = v71;
LABEL_29:
  *(v0 + v8) = MEMORY[0x277D84F90];

  sub_25C4984E4();
}

void sub_25C49D6E0(void *a1)
{
  v2 = v1;
  v4 = sub_25C4C84C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v9 = v8;
  LOBYTE(v8) = sub_25C4C84E0();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (qword_27FC0B970 == -1)
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
  v10 = sub_25C4C7BD0();
  __swift_project_value_buffer(v10, qword_27FC0B978);
  v11 = a1;
  v12 = sub_25C4C7BB0();
  v13 = sub_25C4C8720();
  if (!os_log_type_enabled(v12, v13))
  {

    goto LABEL_7;
  }

  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v23[0] = v15;
  *v14 = 136315138;
  v16 = [v11 sessionID];

  if (v16)
  {
    v17 = sub_25C4C8550();
    v19 = v18;

    v20 = sub_25C458990(v17, v19, v23);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_25C452000, v12, v13, "IDS session started: sessionID=%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x25F888630](v15, -1, -1);
    MEMORY[0x25F888630](v14, -1, -1);
LABEL_7:

    v21 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSessionStarted;
    swift_beginAccess();
    *(v2 + v21) = 1;
    sub_25C495A00();
    return;
  }

  __break(1u);
}

void sub_25C49D9F0(void *a1, int a2, void *a3)
{
  v4 = v3;
  v8 = sub_25C4C84C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  LOBYTE(v12) = sub_25C4C84E0();
  v15 = *(v9 + 8);
  v14 = v9 + 8;
  v15(v11, v8);
  if (v12)
  {
    v14 = 0x2799AA000uLL;
    v16 = [a1 sessionID];
    if (v16)
    {
      v17 = v16;
      v18 = sub_25C4C8550();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    v21 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession;
    swift_beginAccess();
    v22 = *(v4 + v21);
    v49 = a2;
    if (v22 && (v23 = [v22 sessionID]) != 0)
    {
      v24 = v23;
      v25 = sub_25C4C8550();
      v27 = v26;

      if (!v20)
      {
LABEL_8:
        if (!v27)
        {
          LOBYTE(v8) = 1;
LABEL_18:
          if (qword_27FC0B970 == -1)
          {
            goto LABEL_19;
          }

          goto LABEL_37;
        }

        LOBYTE(v8) = 0;
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      v25 = 0;
      v27 = 0;
      if (!v20)
      {
        goto LABEL_8;
      }
    }

    if (v27)
    {
      if (v18 == v25 && v20 == v27)
      {

        LOBYTE(v8) = 1;
      }

      else
      {
        LOBYTE(v8) = sub_25C4C89E0();
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_37:
  swift_once();
LABEL_19:
  v28 = sub_25C4C7BD0();
  __swift_project_value_buffer(v28, qword_27FC0B978);
  v29 = a1;
  v30 = a3;
  v31 = sub_25C4C7BB0();
  v32 = sub_25C4C8720();
  if (!os_log_type_enabled(v31, v32))
  {

    if ((v8 & 1) == 0)
    {
      return;
    }

    goto LABEL_30;
  }

  v33 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v50 = v34;
  *v33 = 136315906;
  v35 = [v29 *(v14 + 2336)];
  if (!v35)
  {

    __break(1u);
    return;
  }

  v36 = v35;

  v37 = sub_25C4C8550();
  v39 = v38;

  v40 = sub_25C458990(v37, v39, &v50);

  *(v33 + 4) = v40;
  *(v33 + 12) = 2080;
  if (v8)
  {
    v41 = 0x297372756F28;
  }

  else
  {
    v41 = 0x72756F20746F6E28;
  }

  if (v8)
  {
    v42 = 0xE600000000000000;
  }

  else
  {
    v42 = 0xEA00000000002973;
  }

  v43 = sub_25C458990(v41, v42, &v50);

  *(v33 + 14) = v43;
  *(v33 + 22) = 1024;
  *(v33 + 24) = v49;
  *(v33 + 28) = 2080;
  if (a3)
  {
    swift_getErrorValue();
    v44 = sub_25C4C8A30();
    v46 = v45;
  }

  else
  {
    v46 = 0xE300000000000000;
    v44 = 7104878;
  }

  v47 = sub_25C458990(v44, v46, &v50);

  *(v33 + 30) = v47;
  _os_log_impl(&dword_25C452000, v31, v32, "IDS session ended: sessionID=%s %s, reason=%u, error=%s", v33, 0x26u);
  swift_arrayDestroy();
  MEMORY[0x25F888630](v34, -1, -1);
  MEMORY[0x25F888630](v33, -1, -1);

  if (v8)
  {
LABEL_30:
    sub_25C497DF8();
    sub_25C495A00();
  }
}

uint64_t sub_25C49DF2C(void *a1, uint64_t a2, void *a3, uint64_t a4, const char *a5, uint64_t a6)
{
  v6 = a6;
  v10 = sub_25C4C8550();
  v12 = v11;
  v13 = a3;
  v14 = a1;
  sub_25C49DFC4(v13, v10, v12, a5, v6);
}

void sub_25C49DFC4(void *a1, uint64_t a2, unint64_t a3, const char *a4, int a5)
{
  LODWORD(v6) = a5;
  v8 = v5;
  v12 = sub_25C4C84C0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v8 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  v17 = v16;
  LOBYTE(v16) = sub_25C4C84E0();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v31 = a2;
    if (qword_27FC0B970 == -1)
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
  v18 = sub_25C4C7BD0();
  __swift_project_value_buffer(v18, qword_27FC0B978);
  v19 = a1;

  v20 = sub_25C4C7BB0();
  v21 = sub_25C4C8720();
  if (!os_log_type_enabled(v20, v21))
  {

    goto LABEL_7;
  }

  v30 = v6;
  v22 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  v32[0] = v6;
  *v22 = 136315394;
  v23 = [v19 sessionID];

  if (v23)
  {
    v24 = sub_25C4C8550();
    v26 = v25;

    v27 = sub_25C458990(v24, v26, v32);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_25C458990(v31, a3, v32);
    _os_log_impl(&dword_25C452000, v20, v21, a4, v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v6, -1, -1);
    MEMORY[0x25F888630](v22, -1, -1);

    LOBYTE(v6) = v30;
LABEL_7:
    v28 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsInvitationState;
    swift_beginAccess();
    *(v8 + v28) = v6;
    sub_25C495A00();
    return;
  }

  __break(1u);
}

uint64_t sub_25C49E2E0()
{
  sub_25C4C8A60();
  sub_25C4C8A80();
  return sub_25C4C8A90();
}

uint64_t sub_25C49E354(uint64_t a1)
{
  sub_25C4C8A60();
  sub_25C4C8A80();
  return sub_25C4C8A90();
}

uint64_t sub_25C49E398@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25C4B9B6C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25C49E3D0()
{
  v1 = *v0;
  sub_25C4C8A60();
  MEMORY[0x25F887F30](v1 + 1);
  return sub_25C4C8A90();
}

uint64_t sub_25C49E448(uint64_t a1)
{
  v2 = *v1;
  sub_25C4C8A60();
  MEMORY[0x25F887F30](v2 + 1);
  return sub_25C4C8A90();
}

uint64_t sub_25C49E48C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25C4B9B80(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25C49E4DC()
{
  v1 = *v0;
  sub_25C4C8A60();
  MEMORY[0x25F887F30](v1 + 2);
  return sub_25C4C8A90();
}

uint64_t sub_25C49E554(uint64_t a1)
{
  v2 = *v1;
  sub_25C4C8A60();
  MEMORY[0x25F887F30](v2 + 2);
  return sub_25C4C8A90();
}

uint64_t sub_25C49E598@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25C4B9BA8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25C49E5D4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char *a7, uint64_t a8)
{
  v9 = v8;
  v46 = a6;
  v47 = a8;
  v44 = a3;
  v45 = a5;
  v42 = a2;
  v43 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v48 = *(v43 - 8);
  v13 = MEMORY[0x28223BE20](v43);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v41 - v16);
  v18 = sub_25C4C84C0();
  v19 = *(v18 - 1);
  MEMORY[0x28223BE20](v18);
  v21 = (&v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v9 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v21 = v22;
  (*(v19 + 104))(v21, *MEMORY[0x277D85200], v18);
  v23 = v22;
  LOBYTE(v22) = sub_25C4C84E0();
  (*(v19 + 8))(v21, v18);
  if (v22)
  {
    v24 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__operations;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(v9 + v24);
    *(v9 + v24) = 0x8000000000000000;
    sub_25C4B6AAC(a1, a4, isUniquelyReferenced_nonNull_native);
    *(v9 + v24) = v49;
    swift_endAccess();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A7C0, &qword_25C4CA838);
    v27 = v26[12];
    v28 = (v17 + v26[16]);
    v29 = (v17 + v26[20]);
    v30 = v42;
    v42 = v15;
    v31 = v44;
    *v17 = v30;
    v17[1] = v31;
    v32 = sub_25C4C7B20();
    (*(*(v32 - 8) + 16))(v17 + v27, a4, v32);
    v34 = v45;
    v33 = v46;
    *v28 = v45;
    v28[1] = v33;
    v35 = v47;
    *v29 = a7;
    v29[1] = v35;
    swift_storeEnumTagMultiPayload();
    a7 = v42;
    sub_25C4BACD0(v17, v42, type metadata accessor for NXSessionDaemon.SendItem);
    a1 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
    swift_beginAccess();
    v18 = *(v9 + a1);

    sub_25C459FB0(v34, v33);

    v36 = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + a1) = v18;
    if (v36)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v18 = sub_25C4B480C(0, v18[2] + 1, 1, v18);
  *(v9 + a1) = v18;
LABEL_3:
  v37 = v48;
  v39 = v18[2];
  v38 = v18[3];
  if (v39 >= v38 >> 1)
  {
    v18 = sub_25C4B480C((v38 > 1), v39 + 1, 1, v18);
  }

  v18[2] = v39 + 1;
  sub_25C4BB0E8(a7, v18 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v39, type metadata accessor for NXSessionDaemon.SendItem);
  *(v9 + a1) = v18;
  swift_endAccess();
  sub_25C49CF5C();
  return sub_25C4BAF14(v17, type metadata accessor for NXSessionDaemon.SendItem);
}

uint64_t sub_25C49E9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a2;
  v32 = a3;
  v29 = a1;
  v30 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v33 = *(v30 - 8);
  v5 = MEMORY[0x28223BE20](v30);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = sub_25C4C7B20();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25C4C84C0();
  v15 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v17 = (&v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v19 = v18;
  LOBYTE(v18) = sub_25C4C84E0();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    v20 = *(v11 + 16);
    v21 = v29;
    v20(v13, v29, v10);
    swift_beginAccess();
    sub_25C495840(0, v13);
    swift_endAccess();
    v22 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A7D0, &qword_25C4CA848) + 48)];
    v20(v9, v21, v10);
    v23 = v32;
    *v22 = v31;
    v22[1] = v23;
    swift_storeEnumTagMultiPayload();
    sub_25C4BACD0(v9, v7, type metadata accessor for NXSessionDaemon.SendItem);
    v11 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
    swift_beginAccess();
    v14 = *(v4 + v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v11) = v14;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v14 = sub_25C4B480C(0, v14[2] + 1, 1, v14);
  *(v4 + v11) = v14;
LABEL_3:
  v25 = v33;
  v27 = v14[2];
  v26 = v14[3];
  if (v27 >= v26 >> 1)
  {
    v14 = sub_25C4B480C((v26 > 1), v27 + 1, 1, v14);
  }

  v14[2] = v27 + 1;
  sub_25C4BB0E8(v7, v14 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v27, type metadata accessor for NXSessionDaemon.SendItem);
  *(v4 + v11) = v14;
  swift_endAccess();
  sub_25C49CF5C();
  return sub_25C4BAF14(v9, type metadata accessor for NXSessionDaemon.SendItem);
}

uint64_t sub_25C49EDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v8 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v35 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = sub_25C4C84C0();
  v15 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v17 = (&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v5 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v19 = v18;
  LOBYTE(v18) = sub_25C4C84E0();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A7D8, &qword_25C4CA850);
    v21 = v20[12];
    v22 = v20[16];
    v23 = &v13[v20[20]];
    *v13 = a1;
    v24 = sub_25C4C7B20();
    (*(*(v24 - 8) + 16))(&v13[v21], v32, v24);
    v25 = sub_25C4C7E50();
    (*(*(v25 - 8) + 16))(&v13[v22], v33, v25);
    *v23 = v34;
    v23[1] = a5;
    swift_storeEnumTagMultiPayload();
    sub_25C4BACD0(v13, v11, type metadata accessor for NXSessionDaemon.SendItem);
    v8 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
    swift_beginAccess();
    v14 = *(v5 + v8);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + v8) = v14;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v14 = sub_25C4B480C(0, v14[2] + 1, 1, v14);
  *(v5 + v8) = v14;
LABEL_3:
  v27 = v35;
  v29 = v14[2];
  v28 = v14[3];
  if (v29 >= v28 >> 1)
  {
    v14 = sub_25C4B480C((v28 > 1), v29 + 1, 1, v14);
  }

  v14[2] = v29 + 1;
  sub_25C4BB0E8(v11, v14 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v29, type metadata accessor for NXSessionDaemon.SendItem);
  *(v5 + v8) = v14;
  swift_endAccess();
  sub_25C49CF5C();
  return sub_25C4BAF14(v13, type metadata accessor for NXSessionDaemon.SendItem);
}

uint64_t sub_25C49F16C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, unsigned int a8)
{
  v37 = a8;
  v33 = a6;
  v34 = a7;
  v38 = a5;
  v35 = a1;
  v36 = a4;
  v11 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v39 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = sub_25C4C84C0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v8 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v20 = v21;
  (*(v18 + 104))(v20, *MEMORY[0x277D85200], v17);
  v22 = v21;
  LOBYTE(v21) = sub_25C4C84E0();
  (*(v18 + 8))(v20, v17);
  if (v21)
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
    v24 = &v16[*(v23 + 48)];
    v25 = &v16[*(v23 + 64)];
    v26 = sub_25C4C7B20();
    (*(*(v26 - 8) + 16))(v16, v35, v26);
    *v24 = a2;
    *(v24 + 1) = a3;
    v27 = v38;
    *v25 = v36;
    v25[1] = v27;
    swift_storeEnumTagMultiPayload();
    sub_25C4BACD0(v16, v14, type metadata accessor for NXSessionDaemon.SendItem);
    v17 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
    swift_beginAccess();
    v20 = *(v8 + v17);
    sub_25C459FB0(a2, a3);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + v17) = v20;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v20 = sub_25C4B480C(0, v20[2] + 1, 1, v20);
  *(v8 + v17) = v20;
LABEL_3:
  v29 = v39;
  v31 = v20[2];
  v30 = v20[3];
  if (v31 >= v30 >> 1)
  {
    v20 = sub_25C4B480C((v30 > 1), v31 + 1, 1, v20);
  }

  v20[2] = v31 + 1;
  sub_25C4BB0E8(v14, v20 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v31, type metadata accessor for NXSessionDaemon.SendItem);
  *(v8 + v17) = v20;
  swift_endAccess();
  sub_25C49CF5C();
  return sub_25C4BAF14(v16, type metadata accessor for NXSessionDaemon.SendItem);
}

uint64_t sub_25C49F4C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a4;
  v32 = a6;
  v29 = a1;
  v30 = a5;
  v9 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v33 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (&v29 - v13);
  v15 = sub_25C4C84C0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v6 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v18 = v19;
  (*(v16 + 104))(v18, *MEMORY[0x277D85200], v15);
  v20 = v19;
  LOBYTE(v19) = sub_25C4C84E0();
  (*(v16 + 8))(v18, v15);
  if (v19)
  {
    v21 = v30;
    *v14 = v29;
    v14[1] = a2;
    v23 = v31;
    v22 = v32;
    v14[2] = a3;
    v14[3] = v23;
    v14[4] = v21;
    v14[5] = v22;
    swift_storeEnumTagMultiPayload();
    sub_25C4BACD0(v14, v12, type metadata accessor for NXSessionDaemon.SendItem);
    v15 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
    swift_beginAccess();
    v18 = *(v6 + v15);

    sub_25C459FB0(a3, v23);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + v15) = v18;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v18 = sub_25C4B480C(0, v18[2] + 1, 1, v18);
  *(v6 + v15) = v18;
LABEL_3:
  v25 = v33;
  v27 = v18[2];
  v26 = v18[3];
  if (v27 >= v26 >> 1)
  {
    v18 = sub_25C4B480C((v26 > 1), v27 + 1, 1, v18);
  }

  v18[2] = v27 + 1;
  sub_25C4BB0E8(v12, v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v27, type metadata accessor for NXSessionDaemon.SendItem);
  *(v6 + v15) = v18;
  swift_endAccess();
  sub_25C49CF5C();
  return sub_25C4BAF14(v14, type metadata accessor for NXSessionDaemon.SendItem);
}

void sub_25C49F7D4(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t a2)
{
  v151 = a1;
  v3 = sub_25C4C8390();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v138 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v146 = &v138 - v12;
  MEMORY[0x28223BE20](v11);
  v150 = &v138 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1B0, &qword_25C4C9B00);
  MEMORY[0x28223BE20](v14 - 8);
  v141 = (&v138 - v15);
  v16 = sub_25C4C8170();
  v17 = *(v16 - 8);
  v148 = v16;
  v149 = v17;
  v18 = MEMORY[0x28223BE20](v16);
  v140 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v147 = &v138 - v21;
  MEMORY[0x28223BE20](v20);
  v139 = &v138 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA08, &qword_25C4CAD30);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v143 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v138 - v27;
  MEMORY[0x28223BE20](v26);
  v144 = &v138 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA10, &qword_25C4CAD38);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v142 = &v138 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v138 - v34;
  MEMORY[0x28223BE20](v33);
  v145 = (&v138 - v36);
  v37 = sub_25C4C82C0();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v138 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v38 + 16))(v40, a2, v37);
  v41 = (*(v38 + 88))(v40, v37);
  if (v41 == *MEMORY[0x277CD8DE8])
  {
    (*(v38 + 96))(v40, v37);
    (*(v4 + 32))(v10, v40, v3);
    v42 = v4;
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v43 = sub_25C4C7BD0();
    __swift_project_value_buffer(v43, qword_27FC0B978);
    (*(v4 + 16))(v7, v10, v3);

    v44 = sub_25C4C7BB0();
    v45 = sub_25C4C8720();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v153[0] = v150;
      *v46 = 136315394;
      v47 = v147;
      sub_25C4C8310();
      v48 = sub_25C4C8110();
      v50 = v49;
      (*(v149 + 8))(v47, v148);
      v51 = sub_25C458990(v48, v50, v153);

      *(v46 + 4) = v51;
      *(v46 + 12) = 2080;
      sub_25C4B8B3C(&qword_27FC0A550, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      v52 = sub_25C4C8A30();
      v54 = v53;
      v55 = *(v42 + 8);
      v55(v7, v3);
      v56 = sub_25C458990(v52, v54, v153);

      *(v46 + 14) = v56;
      _os_log_impl(&dword_25C452000, v44, v45, "Connection waiting: peer=%s, error=%s)", v46, 0x16u);
      v57 = v150;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v57, -1, -1);
      MEMORY[0x25F888630](v46, -1, -1);

      v55(v10, v3);
    }

    else
    {

      v76 = *(v42 + 8);
      v76(v7, v3);
      v76(v10, v3);
    }

    goto LABEL_23;
  }

  v138 = v4;
  if (v41 == *MEMORY[0x277CD8DE0])
  {
    (*(v38 + 96))(v40, v37);
    v58 = v138;
    v59 = v150;
    (*(v138 + 32))(v150, v40, v3);
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v60 = sub_25C4C7BD0();
    __swift_project_value_buffer(v60, qword_27FC0B978);
    v61 = v146;
    v145 = *(v58 + 16);
    v145(v146, v59, v3);

    v62 = sub_25C4C7BB0();
    v63 = sub_25C4C8720();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v153[0] = v144;
      *v64 = 136315394;
      v65 = v147;
      sub_25C4C8310();
      v66 = sub_25C4C8110();
      v68 = v67;
      (*(v149 + 8))(v65, v148);
      v69 = sub_25C458990(v66, v68, v153);

      *(v64 + 4) = v69;
      *(v64 + 12) = 2080;
      sub_25C4B8B3C(&qword_27FC0A550, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      v70 = sub_25C4C8A30();
      v72 = v71;
      v73 = *(v58 + 8);
      v73(v61, v3);
      v74 = sub_25C458990(v70, v72, v153);

      *(v64 + 14) = v74;
      _os_log_impl(&dword_25C452000, v62, v63, "Connection failed: peer=%s, error=%s", v64, 0x16u);
      v75 = v144;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v75, -1, -1);
      MEMORY[0x25F888630](v64, -1, -1);
    }

    else
    {

      v73 = *(v58 + 8);
      v73(v61, v3);
    }

    v84 = v152;
    sub_25C4B8B3C(&qword_27FC0A550, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
    v85 = swift_allocError();
    v86 = v150;
    v145(v87, v150, v3);

    v88 = v84 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_connectionEndedHandler;
    swift_beginAccess();
    v89 = *v88;
    if (*v88)
    {
      v90 = *(v88 + 8);

      v89(v91);
      sub_25C45A2C8(v89, v90);
    }

    if (*(v84 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection))
    {

      sub_25C4C82F0();
    }

    sub_25C497DF8();
    v73(v86, v3);
    goto LABEL_23;
  }

  v77 = v152;
  if (v41 == *MEMORY[0x277CD8DD8] || v41 == *MEMORY[0x277CD8DF8])
  {
    goto LABEL_23;
  }

  if (v41 == *MEMORY[0x277CD8DD0])
  {
    v78 = v145;
    sub_25C4C8250();
    sub_25C4BC9B8(v78, v35, &qword_27FC0AA10, &qword_25C4CAD38);
    v79 = sub_25C4C8380();
    v80 = *(v79 - 8);
    v151 = *(v80 + 6);
    if (v151(v35, 1, v79) == 1)
    {
      sub_25C4666F8(v35, &qword_27FC0AA10, &qword_25C4CAD38);
      v82 = v148;
      v81 = v149;
      v83 = v144;
      (*(v149 + 56))(v144, 1, 1, v148);
    }

    else
    {
      v83 = v144;
      sub_25C4C8360();
      (*(v80 + 1))(v35, v79);
      v82 = v148;
      v81 = v149;
    }

    sub_25C4BC9B8(v83, v28, &qword_27FC0AA08, &qword_25C4CAD30);
    v148 = *(v81 + 48);
    if (v148(v28, 1, v82) == 1)
    {
      sub_25C4666F8(v28, &qword_27FC0AA08, &qword_25C4CAD30);
      v150 = 0;
      v108 = 0;
    }

    else
    {
      v109 = *(v81 + 32);
      v146 = v80;
      v110 = v139;
      v109(v139, v28, v82);
      (*(v81 + 16))(v147, v110, v82);
      v111 = sub_25C4C8560();
      v108 = v112;
      v113 = v141;
      v150 = v111;
      *v141 = v111;
      v113[1] = v112;
      v114 = *MEMORY[0x277D355F8];
      v115 = sub_25C4C7C50();
      v116 = *(v115 - 8);
      (*(v116 + 104))(v113, v114, v115);
      (*(v116 + 56))(v113, 0, 1, v115);
      swift_beginAccess();

      v81 = v149;
      sub_25C4C7DD0();
      swift_endAccess();
      v117 = v110;
      v80 = v146;
      (*(v81 + 8))(v117, v82);
    }

    v118 = v142;
    v119 = v143;
    sub_25C4BC9B8(v145, v142, &qword_27FC0AA10, &qword_25C4CAD38);
    if (v151(v118, 1, v79) == 1)
    {
      sub_25C4666F8(v118, &qword_27FC0AA10, &qword_25C4CAD38);
      (*(v81 + 56))(v119, 1, 1, v82);
    }

    else
    {
      sub_25C4C8370();
      (*(v80 + 1))(v118, v79);
      if (v148(v119, 1, v82) != 1)
      {
        v122 = v140;
        (*(v81 + 32))(v140, v119, v82);
        (*(v81 + 16))(v147, v122, v82);
        v123 = v81;
        v120 = sub_25C4C8560();
        v121 = v124;
        v125 = v141;
        *v141 = v120;
        v125[1] = v124;
        v126 = *MEMORY[0x277D355F8];
        v127 = sub_25C4C7C50();
        v128 = *(v127 - 8);
        (*(v128 + 104))(v125, v126, v127);
        (*(v128 + 56))(v125, 0, 1, v127);
        swift_beginAccess();

        sub_25C4C7DE0();
        swift_endAccess();
        (*(v123 + 8))(v140, v82);
        goto LABEL_44;
      }
    }

    sub_25C4666F8(v119, &qword_27FC0AA08, &qword_25C4CAD30);
    v120 = 0;
    v121 = 0;
LABEL_44:
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v129 = sub_25C4C7BD0();
    __swift_project_value_buffer(v129, qword_27FC0B978);

    v130 = sub_25C4C7BB0();
    v131 = sub_25C4C8720();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v153[0] = v133;
      *v132 = 136315394;
      if (v121)
      {
        v134 = v120;
      }

      else
      {
        v134 = 7104878;
      }

      if (!v121)
      {
        v121 = 0xE300000000000000;
      }

      v135 = sub_25C458990(v134, v121, v153);

      *(v132 + 4) = v135;
      *(v132 + 12) = 2080;
      if (v108)
      {
        v136 = v150;
      }

      else
      {
        v136 = 7104878;
      }

      if (!v108)
      {
        v108 = 0xE300000000000000;
      }

      v137 = sub_25C458990(v136, v108, v153);

      *(v132 + 14) = v137;
      _os_log_impl(&dword_25C452000, v130, v131, "Connection ready: peer=%s, self=%s", v132, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F888630](v133, -1, -1);
      MEMORY[0x25F888630](v132, -1, -1);
    }

    else
    {
    }

    sub_25C4A0B5C();
    sub_25C4666F8(v144, &qword_27FC0AA08, &qword_25C4CAD30);
    sub_25C4666F8(v145, &qword_27FC0AA10, &qword_25C4CAD38);
    goto LABEL_23;
  }

  if (v41 == *MEMORY[0x277CD8DF0])
  {
    v92 = v148;
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v93 = sub_25C4C7BD0();
    __swift_project_value_buffer(v93, qword_27FC0B978);

    v94 = sub_25C4C7BB0();
    v95 = sub_25C4C8720();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v153[0] = v97;
      *v96 = 136315138;
      v98 = v147;
      sub_25C4C8310();
      v99 = sub_25C4C8110();
      v101 = v100;
      (*(v149 + 8))(v98, v92);
      v102 = sub_25C458990(v99, v101, v153);

      *(v96 + 4) = v102;
      _os_log_impl(&dword_25C452000, v94, v95, "Connection canceled: peer=%s", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v97);
      MEMORY[0x25F888630](v97, -1, -1);
      MEMORY[0x25F888630](v96, -1, -1);
    }

    v103 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection;
    *(v77 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection) = 0;

    v104 = v77 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_connectionEndedHandler;
    swift_beginAccess();
    v105 = *v104;
    if (*v104)
    {
      v106 = *(v104 + 8);

      v105(v107);
      sub_25C45A2C8(v105, v106);
    }

    if (*(v77 + v103))
    {

      sub_25C4C82F0();
    }

    sub_25C497DF8();
  }

  else
  {
    (*(v38 + 8))(v40, v37);
  }

LABEL_23:
  sub_25C495A00();
}

uint64_t sub_25C4A0B5C()
{
  result = swift_getObjectType();
  if ((*(v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkReceiving) & 1) == 0 && *(v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection))
  {
    *(v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkReceiving) = 1;
    v2 = result;
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    v5[2] = v3;
    v5[3] = v4;
    v5[4] = v2;

    sub_25C4C8300();
  }

  return result;
}

void sub_25C4A0CA8(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A948, &qword_25C4CACA8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v58 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v58 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v20 = Strong;
  swift_beginAccess();
  v21 = swift_weakLoadStrong();
  if (!v21)
  {

    return;
  }

  v22 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection;
  v23 = *&v20[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection];
  if (!v23 || v21 != v23)
  {
    goto LABEL_31;
  }

  v20[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkReceiving] = 0;
  if ((a3 & 1) != 0 || (v24 = sub_25C4C8390(), (*(*(v24 - 8) + 48))(a4, 1, v24) != 1))
  {
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v35 = sub_25C4C7BD0();
    __swift_project_value_buffer(v35, qword_27FC0B978);
    sub_25C4BC9B8(a4, v18, &unk_27FC0A948, &qword_25C4CACA8);
    v36 = sub_25C4C7BB0();
    v37 = sub_25C4C8720();
    if (os_log_type_enabled(v36, v37))
    {
      v61 = v37;
      v63 = v36;
      v38 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v64[0] = v60;
      v62 = v38;
      *v38 = 136315138;
      sub_25C4BC9B8(v18, v16, &unk_27FC0A948, &qword_25C4CACA8);
      v39 = sub_25C4C8390();
      v40 = *(v39 - 8);
      if ((*(v40 + 48))(v16, 1, v39) == 1)
      {
        sub_25C4666F8(v16, &unk_27FC0A948, &qword_25C4CACA8);
        v41 = 0xE300000000000000;
        v42 = 7104878;
      }

      else
      {
        sub_25C4B8B3C(&qword_27FC0A550, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
        v59 = sub_25C4C8A30();
        v41 = v43;
        (*(v40 + 8))(v16, v39);
        v42 = v59;
      }

      sub_25C4666F8(v18, &unk_27FC0A948, &qword_25C4CACA8);
      v44 = sub_25C458990(v42, v41, v64);

      v46 = v62;
      v45 = v63;
      *(v62 + 1) = v44;
      _os_log_impl(&dword_25C452000, v45, v61, "Connection ended: during header, error=%s", v46, 0xCu);
      v47 = v60;
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x25F888630](v47, -1, -1);
      MEMORY[0x25F888630](v46, -1, -1);
    }

    else
    {

      sub_25C4666F8(v18, &unk_27FC0A948, &qword_25C4CACA8);
    }

    sub_25C4BC9B8(a4, v13, &unk_27FC0A948, &qword_25C4CACA8);
    v48 = sub_25C4C8390();
    v49 = *(v48 - 8);
    if ((*(v49 + 48))(v13, 1, v48) == 1)
    {
      sub_25C4666F8(v13, &unk_27FC0A948, &qword_25C4CACA8);
    }

    else
    {
      sub_25C4B8B3C(&qword_27FC0A550, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      swift_allocError();
      (*(v49 + 32))(v50, v13, v48);
    }

    v51 = objc_allocWithZone(sub_25C4C7B80());

    v52 = &v20[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_connectionEndedHandler];
    swift_beginAccess();
    v53 = *v52;
    if (*v52)
    {
      v54 = *(v52 + 1);

      v53(v55);
      sub_25C45A2C8(v53, v54);
    }

    if (*&v20[v22])
    {

      sub_25C4C82F0();
    }

    sub_25C497DF8();
    goto LABEL_31;
  }

  if (a2 >> 60 == 15)
  {
LABEL_31:

    return;
  }

  sub_25C459FB0(a1, a2);
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v25 = sub_25C4C7BD0();
  __swift_project_value_buffer(v25, qword_27FC0B978);
  sub_25C4BCA3C(a1, a2);
  sub_25C459FB0(a1, a2);
  v26 = sub_25C4C7BB0();
  v27 = sub_25C4C8700();
  if (!os_log_type_enabled(v26, v27))
  {
    sub_25C45A5B8(a1, a2);
    sub_25C45A5B8(a1, a2);
LABEL_42:

    sub_25C4A14C4(a1, a2);

    sub_25C45A5B8(a1, a2);
    return;
  }

  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v65 = v29;
  *v28 = 136315394;
  v64[0] = a1;
  v64[1] = a2;
  sub_25C4BB094();
  v30 = sub_25C4C85C0();
  v32 = sub_25C458990(v30, v31, &v65);

  *(v28 + 4) = v32;
  *(v28 + 12) = 2048;
  v33 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v33 != 2)
    {
      sub_25C45A5B8(a1, a2);
      v34 = 0;
      goto LABEL_41;
    }

    v57 = *(a1 + 16);
    v56 = *(a1 + 24);
    sub_25C45A5B8(a1, a2);
    v34 = v56 - v57;
    if (!__OFSUB__(v56, v57))
    {
      goto LABEL_41;
    }

    __break(1u);
  }

  else if (!v33)
  {
    sub_25C45A5B8(a1, a2);
    v34 = BYTE6(a2);
LABEL_41:
    *(v28 + 14) = v34;
    sub_25C45A5B8(a1, a2);
    _os_log_impl(&dword_25C452000, v26, v27, "Received frame header: data=<%s>, size=%ld", v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x25F888630](v29, -1, -1);
    MEMORY[0x25F888630](v28, -1, -1);
    goto LABEL_42;
  }

  sub_25C45A5B8(a1, a2);
  LODWORD(v34) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v34 = v34;
    goto LABEL_41;
  }

  __break(1u);
}

uint64_t sub_25C4A14C4(uint64_t a1, unint64_t a2)
{
  sub_25C459FB0(a1, a2);
  sub_25C45A004(0, 0xC000000000000000);
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 == 2)
    {
      goto LABEL_9;
    }
  }

  else if (v5)
  {
    goto LABEL_9;
  }

  if (v5 > 1)
  {
    if (v5 == 3)
    {
      goto LABEL_10;
    }
  }

  else if (!v5)
  {
    goto LABEL_10;
  }

LABEL_9:
  sub_25C459FB0(a1, a2);
LABEL_10:
  sub_25C4BCA50();
  v6 = sub_25C4C8A40();
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v5)
  {
LABEL_14:
    sub_25C459FB0(a1, a2);
  }

LABEL_15:
  sub_25C4BB038();
  sub_25C4C8930();
  if (!v12)
  {
    sub_25C4A1A18(a1, a2, v6, 0, 0xC000000000000000, 1);
    return sub_25C45A004(a1, a2);
  }

  result = swift_getObjectType();
  if ((*(v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkReceiving) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection))
    {
      v8 = result;
      *(v2 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkReceiving) = 1;
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = swift_allocObject();
      swift_weakInit();
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      *(v11 + 24) = v10;
      *(v11 + 32) = a1;
      *(v11 + 40) = a2;
      *(v11 + 48) = v6;
      *(v11 + 52) = v12;
      *(v11 + 56) = v8;

      sub_25C459FB0(a1, a2);
      sub_25C4C8300();
    }

    return sub_25C45A004(a1, a2);
  }

  __break(1u);
  return result;
}

void sub_25C4A1A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  v11 = a3;
  v12 = sub_25C4B9B6C(a3);
  if (v12 > 3)
  {
    if (v12 > 5)
    {
      if (v12 != 6)
      {
        if (qword_27FC0B970 != -1)
        {
          swift_once();
        }

        v31 = sub_25C4C7BD0();
        __swift_project_value_buffer(v31, qword_27FC0B978);
        v14 = sub_25C4C7BB0();
        v32 = sub_25C4C8720();
        if (!os_log_type_enabled(v14, v32))
        {
          goto LABEL_32;
        }

        v33 = swift_slowAlloc();
        *v33 = 16777472;
        v33[4] = v11;
        _os_log_impl(&dword_25C452000, v14, v32, "Received unsupported frame: frameType=%hhu", v33, 5u);
        v34 = v33;
        goto LABEL_31;
      }

      v18 = a4;
      v19 = a5;
      v20 = 1;
      v21 = 0;
    }

    else
    {
      v18 = a4;
      v19 = a5;
      if (v12 != 4)
      {
        v20 = 1;
LABEL_20:
        v21 = 1;
        goto LABEL_21;
      }

      v20 = 0;
      v21 = 0;
    }

LABEL_21:
    sub_25C4A2DA8(v18, v19, v20, v21);
    goto LABEL_33;
  }

  if (v12 > 1)
  {
    v18 = a4;
    v19 = a5;
    if (v12 == 2)
    {
      sub_25C4A27A4(a4, a5);
      goto LABEL_33;
    }

    v20 = 0;
    goto LABEL_20;
  }

  if (!v12)
  {
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v13 = sub_25C4C7BD0();
    __swift_project_value_buffer(v13, qword_27FC0B978);
    v14 = sub_25C4C7BB0();
    v15 = sub_25C4C8720();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_32;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Received invalid frame";
    goto LABEL_30;
  }

  v22 = *(v7 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityStream);
  if (!v22)
  {
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v35 = sub_25C4C7BD0();
    __swift_project_value_buffer(v35, qword_27FC0B978);
    v14 = sub_25C4C7BB0();
    v15 = sub_25C4C8710();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_32;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "### Encrypted received data without security stream";
LABEL_30:
    _os_log_impl(&dword_25C452000, v14, v15, v17, v16, 2u);
    v34 = v16;
LABEL_31:
    MEMORY[0x25F888630](v34, -1, -1);
LABEL_32:

    goto LABEL_33;
  }

  v23 = v22;
  v24 = sub_25C4C7AE0();
  v25 = sub_25C4C7AE0();
  v47 = 0;
  v26 = [v23 decryptData:v24 aadData:v25 error:&v47];

  v27 = v47;
  if (v26)
  {
    v28 = sub_25C4C7AF0();
    v30 = v29;

    sub_25C4A27A4(v28, v30);
    sub_25C45A004(v28, v30);
  }

  else
  {
    v36 = v27;
    v37 = sub_25C4C7A90();

    swift_willThrow();
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v38 = sub_25C4C7BD0();
    __swift_project_value_buffer(v38, qword_27FC0B978);
    v39 = v37;
    v40 = sub_25C4C7BB0();
    v41 = sub_25C4C8710();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v47 = v43;
      *v42 = 136315138;
      swift_getErrorValue();
      v44 = sub_25C4C8A30();
      v46 = sub_25C458990(v44, v45, &v47);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_25C452000, v40, v41, "### Decrypt failed: error=%s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x25F888630](v43, -1, -1);
      MEMORY[0x25F888630](v42, -1, -1);
    }

    else
    {
    }
  }

LABEL_33:
  if (a6)
  {
    sub_25C4A0B5C();
  }
}

void sub_25C4A1F2C(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v73 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A948, &qword_25C4CACA8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v65 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v65 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    swift_beginAccess();
    v25 = swift_weakLoadStrong();
    if (!v25)
    {

      return;
    }

    v26 = v25;
    v27 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection;
    v28 = *&v24[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection];
    if (!v28 || v25 != v28)
    {
      goto LABEL_43;
    }

    v24[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkReceiving] = 0;
    v72 = v27;
    if (a3)
    {
      v29 = 1;
    }

    else
    {
      v30 = sub_25C4C8390();
      v29 = (*(*(v30 - 8) + 48))(v73, 1, v30) != 1;
    }

    if (a2 >> 60 == 15)
    {
LABEL_26:
      if (v29)
      {
        if (qword_27FC0B970 != -1)
        {
          swift_once();
        }

        v45 = sub_25C4C7BD0();
        __swift_project_value_buffer(v45, qword_27FC0B978);
        sub_25C4BC9B8(v73, v22, &unk_27FC0A948, &qword_25C4CACA8);
        v46 = sub_25C4C7BB0();
        v47 = sub_25C4C8720();
        if (os_log_type_enabled(v46, v47))
        {
          LODWORD(v69) = v47;
          v48 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v75[0] = v68;
          v71 = v48;
          *v48 = 136315138;
          sub_25C4BC9B8(v22, v20, &unk_27FC0A948, &qword_25C4CACA8);
          v49 = sub_25C4C8390();
          v50 = *(v49 - 8);
          if ((*(v50 + 48))(v20, 1, v49) == 1)
          {
            sub_25C4666F8(v20, &unk_27FC0A948, &qword_25C4CACA8);
            v51 = 0xE300000000000000;
            v52 = 7104878;
          }

          else
          {
            sub_25C4B8B3C(&qword_27FC0A550, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
            v52 = sub_25C4C8A30();
            v51 = v53;
            (*(v50 + 8))(v20, v49);
          }

          sub_25C4666F8(v22, &unk_27FC0A948, &qword_25C4CACA8);
          v54 = sub_25C458990(v52, v51, v75);

          v55 = v71;
          *(v71 + 1) = v54;
          _os_log_impl(&dword_25C452000, v46, v69, "Connection ended: during body, error=%s", v55, 0xCu);
          v56 = v68;
          __swift_destroy_boxed_opaque_existential_0(v68);
          MEMORY[0x25F888630](v56, -1, -1);
          MEMORY[0x25F888630](v55, -1, -1);
        }

        else
        {

          sub_25C4666F8(v22, &unk_27FC0A948, &qword_25C4CACA8);
        }

        sub_25C4BC9B8(v73, v17, &unk_27FC0A948, &qword_25C4CACA8);
        v57 = sub_25C4C8390();
        v58 = *(v57 - 8);
        if ((*(v58 + 48))(v17, 1, v57) == 1)
        {
          sub_25C4666F8(v17, &unk_27FC0A948, &qword_25C4CACA8);
        }

        else
        {
          sub_25C4B8B3C(&qword_27FC0A550, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
          swift_allocError();
          (*(v58 + 32))(v59, v17, v57);
        }

        v60 = objc_allocWithZone(sub_25C4C7B80());

        v61 = &v24[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_connectionEndedHandler];
        swift_beginAccess();
        v62 = *v61;
        if (*v61)
        {
          v63 = *(v61 + 1);

          v62(v64);
          sub_25C45A2C8(v62, v63);
        }

        if (*&v24[v72])
        {

          sub_25C4C82F0();
        }

        sub_25C497DF8();
      }

LABEL_43:

      return;
    }

    LODWORD(v71) = v29;
    sub_25C459FB0(a1, a2);
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v31 = sub_25C4C7BD0();
    __swift_project_value_buffer(v31, qword_27FC0B978);
    sub_25C4BCA3C(a1, a2);
    sub_25C459FB0(a1, a2);
    v32 = sub_25C4C7BB0();
    LODWORD(v68) = sub_25C4C8700();
    v33 = os_log_type_enabled(v32, v68);
    v70 = v26;
    if (!v33)
    {
      sub_25C45A5B8(a1, a2);
      sub_25C45A5B8(a1, a2);

LABEL_25:
      v44 = v71;
      sub_25C4A1A18(a7, a8, a9 & 0xFFFFFFFF000000FFLL, a1, a2, v71 ^ 1);
      sub_25C45A5B8(a1, a2);
      v29 = v44;
      goto LABEL_26;
    }

    v67 = v32;
    v34 = swift_slowAlloc();
    v69 = v34;
    v65 = swift_slowAlloc();
    v74 = v65;
    v75[0] = a1;
    *v34 = 136315394;
    v75[1] = a2;
    sub_25C4BB094();
    v35 = sub_25C4C85C0();
    v66 = sub_25C458990(v35, v36, &v74);

    v37 = v69;
    *(v69 + 1) = v66;
    *(v37 + 6) = 2048;
    v38 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v38 != 2)
      {
        sub_25C45A5B8(a1, a2);
        v39 = 0;
        goto LABEL_24;
      }

      v40 = *(a1 + 16);
      v66 = *(a1 + 24);
      sub_25C45A5B8(a1, a2);
      v39 = v66 - v40;
      if (!__OFSUB__(v66, v40))
      {
        goto LABEL_24;
      }

      __break(1u);
    }

    else if (!v38)
    {
      sub_25C45A5B8(a1, a2);
      v39 = BYTE6(a2);
LABEL_24:
      v41 = v67;
      v42 = v69;
      *(v69 + 14) = v39;
      sub_25C45A5B8(a1, a2);
      _os_log_impl(&dword_25C452000, v41, v68, "Received frame body: data=<%s>, size=%ld", v42, 0x16u);
      v43 = v65;
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x25F888630](v43, -1, -1);
      MEMORY[0x25F888630](v42, -1, -1);

      goto LABEL_25;
    }

    sub_25C45A5B8(a1, a2);
    LODWORD(v39) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return;
    }

    v39 = v39;
    goto LABEL_24;
  }
}

void sub_25C4A27A4(uint64_t a1, uint64_t a2)
{
  v30[4] = *MEMORY[0x277D85DE8];
  v2 = sub_25C4C7AE0();
  v3 = OPACKDecodeNSData(v2);

  if (!v3)
  {
    v30[0] = 0;
    v30[1] = 0xE000000000000000;
    sub_25C4C88F0();
    MEMORY[0x25F887A50](0xD00000000000001BLL, 0x800000025C4D1A20);
    v6 = CUPrintErrorCode();
    if (v6)
    {
      v7 = v6;
      v8 = sub_25C4C8550();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    *&v29[0] = v8;
    *(&v29[0] + 1) = v10;
    sub_25C4C89C0();

    v13 = objc_allocWithZone(sub_25C4C7B80());
    v12 = sub_25C4C7B90();
    swift_willThrow();
    goto LABEL_21;
  }

  sub_25C4C87E0();
  swift_unknownObjectRelease();
  sub_25C45A550(v30, v29);
  sub_25C4BC77C(0, &unk_27FC0A910, 0x277CBEAC0);
  if (swift_dynamicCast())
  {
    v4 = v27;
    *&v27 = 1;
    v5 = [v4 __swift_objectForKeyedSubscript:sub_25C4C8A00()];
    swift_unknownObjectRelease();
    if (v5)
    {
      sub_25C4C87E0();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29[0] = v27;
    v29[1] = v28;
    if (*(&v28 + 1))
    {
      if (swift_dynamicCast())
      {
        v14 = sub_25C4B9BA8(v26);
        if (v14 <= 4)
        {
          if (v14 <= 1)
          {
            sub_25C4A97A0(v4);
          }

          else if (v14 == 2)
          {
            sub_25C4A316C(v4);
          }

          else
          {
            sub_25C4A45B8(v4);
          }

          goto LABEL_37;
        }

        if (v14 <= 7)
        {
          if (v14 == 5)
          {
            sub_25C4A64B0(v4);
          }

          else
          {
            sub_25C4A708C(v4);
          }

          goto LABEL_37;
        }

        if (v14 == 8)
        {
          sub_25C4A871C(v4);
          goto LABEL_37;
        }

        if (v14 == 9)
        {
          sub_25C4A9078(v4);
LABEL_37:
          __swift_destroy_boxed_opaque_existential_0(v30);
          goto LABEL_25;
        }

        *&v29[0] = 0;
        *(&v29[0] + 1) = 0xE000000000000000;
        sub_25C4C88F0();

        *&v29[0] = 0xD00000000000001ALL;
        *(&v29[0] + 1) = 0x800000025C4D1A60;
        v24 = sub_25C4C89A0();
        MEMORY[0x25F887A50](v24);

        v25 = objc_allocWithZone(sub_25C4C7B80());
        goto LABEL_19;
      }
    }

    else
    {
      sub_25C4666F8(v29, &unk_27FC0AA20, &unk_25C4CAD40);
    }

    v15 = objc_allocWithZone(sub_25C4C7B80());
LABEL_19:
    v12 = sub_25C4C7B90();
    swift_willThrow();

    goto LABEL_20;
  }

  v11 = objc_allocWithZone(sub_25C4C7B80());
  v12 = sub_25C4C7B90();
  swift_willThrow();
LABEL_20:
  __swift_destroy_boxed_opaque_existential_0(v30);
LABEL_21:
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v16 = sub_25C4C7BD0();
  __swift_project_value_buffer(v16, qword_27FC0B978);
  v17 = v12;
  v4 = sub_25C4C7BB0();
  v18 = sub_25C4C8710();

  if (os_log_type_enabled(v4, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30[0] = v20;
    *v19 = 136315138;
    swift_getErrorValue();
    v21 = sub_25C4C8A30();
    v23 = sub_25C458990(v21, v22, v30);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_25C452000, v4, v18, "### Message unencrypted receive failed: error=%s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x25F888630](v20, -1, -1);
    MEMORY[0x25F888630](v19, -1, -1);

LABEL_25:
    return;
  }
}

void sub_25C4A2DA8(uint64_t a1, unint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = sub_25C4C84C0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v5 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v15 = v14;
  LOBYTE(v14) = sub_25C4C84E0();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if (qword_27FC0B970 == -1)
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
  v16 = sub_25C4C7BD0();
  __swift_project_value_buffer(v16, qword_27FC0B978);
  sub_25C459FB0(a1, a2);
  v17 = sub_25C4C7BB0();
  v18 = sub_25C4C86F0();
  if (!os_log_type_enabled(v17, v18))
  {
    sub_25C45A004(a1, a2);

    if ((a4 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v19 = swift_slowAlloc();
  *v19 = 67109632;
  *(v19 + 4) = a3 & 1;
  *(v19 + 8) = 1024;
  *(v19 + 10) = a4 & 1;
  *(v19 + 14) = 2048;
  v20 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v23 = *(a1 + 16);
      v22 = *(a1 + 24);
      v24 = __OFSUB__(v22, v23);
      v21 = v22 - v23;
      if (v24)
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      v21 = 0;
    }

LABEL_16:
    *(v19 + 16) = v21;
    v25 = v19;
    sub_25C45A004(a1, a2);
    _os_log_impl(&dword_25C452000, v17, v18, "Pairing received: setup=%{BOOL}d, start=%{BOOL}d, data=%ld bytes", v25, 0x18u);
    MEMORY[0x25F888630](v25, -1, -1);

    if ((a4 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_17:
    if (*(v5 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkIsClient))
    {
      v26 = sub_25C4C7BB0();
      v27 = sub_25C4C8710();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        v29 = "### Ignoring Pairing start received on client";
LABEL_25:
        _os_log_impl(&dword_25C452000, v26, v27, v29, v28, 2u);
        MEMORY[0x25F888630](v28, -1, -1);
        goto LABEL_26;
      }

      goto LABEL_26;
    }

    *(v5 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingStartTicks) = mach_absolute_time();
    sub_25C4B3058(a3 & 1);
LABEL_21:
    v30 = *(v5 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession);
    if (v30)
    {
      v31 = v30;
      v26 = sub_25C4C7AE0();
      [v31 receivedMessageData_];
    }

    else
    {
      v26 = sub_25C4C7BB0();
      v27 = sub_25C4C8710();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        v29 = "### Pairing received data with no session";
        goto LABEL_25;
      }
    }

LABEL_26:

    return;
  }

  if (!v20)
  {
    v21 = BYTE6(a2);
    goto LABEL_16;
  }

LABEL_13:
  LODWORD(v21) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v21 = v21;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_25C4A316C(void (*a1)(char *, char *, uint64_t))
{
  v171 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v2 = *(v171 - 8);
  v3 = MEMORY[0x28223BE20](v171);
  v172 = v153 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = (v153 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v153 - v11;
  v13 = sub_25C4C7B20();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v170 = v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v169 = v153 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v177 = (v153 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v176 = v153 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v174 = v153 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v173 = v153 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v179 = v153 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v180 = v153 - v30;
  MEMORY[0x28223BE20](v29);
  v181 = v153 - v31;
  *&v185 = 4;
  v32 = sub_25C4C8A00();
  v182 = a1;
  v33 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v33)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v185 = 0u;
    v186 = 0u;
  }

  v187 = v185;
  v188 = v186;
  if (!*(&v186 + 1))
  {
    sub_25C4666F8(&v187, &unk_27FC0AA20, &unk_25C4CAD40);
    (*(v14 + 56))(v12, 1, 1, v13);
    goto LABEL_9;
  }

  v165 = v2;
  v166 = v6;
  v34 = swift_dynamicCast();
  v35 = *(v14 + 56);
  v35(v12, v34 ^ 1u, 1, v13);
  v36 = v13;
  v37 = *(v14 + 48);
  if (v37(v12, 1, v36) == 1)
  {
LABEL_9:
    sub_25C4666F8(v12, &qword_27FC0A4B8, &qword_25C4CA200);
    v42 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  v168 = v14;
  v38 = v14 + 32;
  v39 = *(v14 + 32);
  v40 = v181;
  v167 = v36;
  v164 = v38;
  v163 = v39;
  v39(v181, v12, v36);
  *&v185 = 2;
  v41 = [v182 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v41)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v185 = 0u;
    v186 = 0u;
  }

  v187 = v185;
  v188 = v186;
  if (!*(&v186 + 1))
  {
    sub_25C4666F8(&v187, &unk_27FC0AA20, &unk_25C4CAD40);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v45 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v168 + 8))(v40, v167);
  }

  v161 = v183;
  v162 = v184;
  *&v185 = 5;
  v44 = [v182 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v44)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v185 = 0u;
    v186 = 0u;
  }

  v187 = v185;
  v188 = v186;
  if (!*(&v186 + 1))
  {

    sub_25C4666F8(&v187, &unk_27FC0AA20, &unk_25C4CAD40);
    v46 = v167;
    v35(v10, 1, 1, v167);
    goto LABEL_22;
  }

  v46 = v167;
  v47 = swift_dynamicCast();
  v35(v10, v47 ^ 1u, 1, v46);
  if (v37(v10, 1, v46) == 1)
  {

LABEL_22:
    sub_25C4666F8(v10, &qword_27FC0A4B8, &qword_25C4CA200);
    v48 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v168 + 8))(v40, v46);
  }

  v49 = v180;
  v163(v180, v10, v46);
  *&v185 = 3;
  v50 = [v182 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  v51 = v46;
  v52 = v162;
  if (v50)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v185 = 0u;
    v186 = 0u;
  }

  v53 = v179;
  v187 = v185;
  v188 = v186;
  if (!*(&v186 + 1))
  {

    sub_25C4666F8(&v187, &unk_27FC0AA20, &unk_25C4CAD40);
LABEL_34:
    v78 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    v79 = *(v168 + 8);
    v79(v49, v46);
    return (v79)(v181, v46);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_34;
  }

  v55 = v183;
  v54 = v184;
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v158 = v55;
  v159 = v54;
  v56 = sub_25C4C7BD0();
  v57 = __swift_project_value_buffer(v56, qword_27FC0B978);
  v58 = v168 + 16;
  v59 = *(v168 + 16);
  v59(v53, v49, v51);
  v60 = v173;
  v160 = v58;
  v59(v173, v181, v51);

  v157 = v57;
  v61 = sub_25C4C7BB0();
  v62 = sub_25C4C8720();

  v63 = os_log_type_enabled(v61, v62);
  v182 = v59;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    *&v187 = v156;
    *v64 = 136315650;
    *(v64 + 4) = sub_25C458990(v161, v52, &v187);
    *(v64 + 12) = 2080;
    v153[1] = sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v155 = v61;
    v65 = v179;
    v66 = sub_25C4C89A0();
    v67 = v60;
    v69 = v68;
    v154 = v62;
    v70 = *(v168 + 8);
    v70(v65, v51);
    v71 = sub_25C458990(v66, v69, &v187);

    *(v64 + 14) = v71;
    *(v64 + 22) = 2080;
    v72 = sub_25C4C89A0();
    v74 = v73;
    v179 = v70;
    v70(v67, v51);
    v59 = v182;
    v75 = sub_25C458990(v72, v74, &v187);

    *(v64 + 24) = v75;
    v76 = v155;
    _os_log_impl(&dword_25C452000, v155, v154, "Received operation start: operationName=%s, operationUUID=%s, itemUUID=%s", v64, 0x20u);
    v77 = v156;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v77, -1, -1);
    MEMORY[0x25F888630](v64, -1, -1);
  }

  else
  {

    v80 = *(v168 + 8);
    v80(v60, v51);
    v81 = v179;
    v179 = v80;
    v80(v81, v51);
  }

  v82 = v51;
  v173 = type metadata accessor for NXOperationDaemon(0);
  v83 = v175;
  v85 = *&v175[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsServiceID];
  v84 = *&v175[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsServiceID + 8];
  v86 = v174;
  v87 = v180;
  v59(v174, v180, v82);

  v88 = v83;
  v89 = v162;

  v90 = sub_25C494B98();
  v92 = sub_25C4BDE5C(v85, v84, v161, v89, v86, v88, v90, v91);
  v93 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__operations;
  swift_beginAccess();
  v175 = v92;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v185 = *&v88[v93];
  *&v88[v93] = 0x8000000000000000;
  sub_25C4B6AAC(v92, v87, isUniquelyReferenced_nonNull_native);
  *&v88[v93] = v185;
  swift_endAccess();
  v95 = swift_allocObject();
  v174 = v88;
  swift_unknownObjectWeakInit();
  v96 = v167;
  v97 = v182;
  v98 = v176;
  v182(v176, v87, v167);
  v99 = v177;
  v97(v177, v181, v96);
  v100 = *(v168 + 80);
  v101 = (v100 + 24) & ~v100;
  v102 = (v15 + v101 + 7) & 0xFFFFFFFFFFFFFFF8;
  v103 = (v100 + v102 + 16) & ~v100;
  v104 = swift_allocObject();
  *(v104 + 16) = v95;
  v105 = v163;
  v163((v104 + v101), v98, v96);
  v106 = (v104 + v102);
  v107 = v162;
  *v106 = v161;
  v106[1] = v107;
  v105(v104 + v103, v99, v96);
  v108 = v107;

  v109 = v158;
  v110 = v159;
  v111 = v178;
  sub_25C4BE3F0(v158, v159, sub_25C4BCC7C, v104);
  if (v111)
  {

    v112 = v169;
    v113 = v182;
    v182(v169, v180, v96);
    v114 = v170;
    v113(v170, v181, v96);

    v115 = v111;
    v116 = sub_25C4C7BB0();
    v117 = sub_25C4C8710();

    if (os_log_type_enabled(v116, v117))
    {
      v118 = v112;
      v119 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      *&v187 = v178;
      *v119 = 136315906;
      *(v119 + 4) = sub_25C458990(v161, v108, &v187);
      *(v119 + 12) = 2080;
      sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v177 = v116;
      v120 = sub_25C4C89A0();
      v121 = v114;
      v123 = v122;
      LODWORD(v176) = v117;
      v124 = v179;
      (v179)(v118, v167);
      v125 = sub_25C458990(v120, v123, &v187);

      *(v119 + 14) = v125;
      *(v119 + 22) = 2080;
      v96 = v167;
      v126 = sub_25C4C89A0();
      v128 = v127;
      v179 = v124;
      (v124)(v121, v96);
      v129 = v161;
      v130 = sub_25C458990(v126, v128, &v187);

      *(v119 + 24) = v130;
      *(v119 + 32) = 2080;
      swift_getErrorValue();
      v131 = sub_25C4C8A30();
      v133 = sub_25C458990(v131, v132, &v187);

      *(v119 + 34) = v133;
      v134 = v177;
      _os_log_impl(&dword_25C452000, v177, v176, "### Received operation start failed: operationName=%s, operationUUID=%s, itemUUID=%s, error=%s", v119, 0x2Au);
      v135 = v178;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v135, -1, -1);
      MEMORY[0x25F888630](v119, -1, -1);

      v136 = v172;
    }

    else
    {

      v138 = v179;
      (v179)(v114, v96);
      v179 = v138;
      (v138)(v112, v96);
      v136 = v172;
      v129 = v161;
    }

    v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8F8, &qword_25C4CAC88);
    v140 = *(v139 + 48);
    v141 = *(v139 + 64);
    v142 = v166;
    v143 = v162;
    *v166 = v129;
    v142[1] = v143;
    v182(v142 + v140, v181, v96);
    *(v142 + v141) = v111;
    swift_storeEnumTagMultiPayload();
    sub_25C4BACD0(v142, v136, type metadata accessor for NXSessionDaemon.SendItem);
    v144 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
    v145 = v174;
    swift_beginAccess();
    v146 = *&v145[v144];
    v147 = v111;
    v148 = swift_isUniquelyReferenced_nonNull_native();
    *&v145[v144] = v146;
    v149 = v180;
    if ((v148 & 1) == 0)
    {
      v146 = sub_25C4B480C(0, v146[2] + 1, 1, v146);
      *&v174[v144] = v146;
    }

    v151 = v146[2];
    v150 = v146[3];
    if (v151 >= v150 >> 1)
    {
      v146 = sub_25C4B480C((v150 > 1), v151 + 1, 1, v146);
    }

    v146[2] = v151 + 1;
    sub_25C4BB0E8(v136, v146 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v151, type metadata accessor for NXSessionDaemon.SendItem);
    *&v174[v144] = v146;
    swift_endAccess();
    sub_25C49CF5C();
    sub_25C45A004(v158, v159);

    sub_25C4BAF14(v166, type metadata accessor for NXSessionDaemon.SendItem);
    v152 = v179;
    (v179)(v149, v96);
    return v152(v181, v96);
  }

  else
  {

    sub_25C45A004(v109, v110);

    v137 = v179;
    (v179)(v180, v96);
    v137(v181, v96);
  }
}

uint64_t sub_25C4A45B8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A900, &qword_25C4CAC90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v89 - v3;
  v97 = type metadata accessor for NXSessionDaemon.OperationItem(0);
  v96 = *(v97 - 8);
  v5 = MEMORY[0x28223BE20](v97);
  v95 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v93 = &v89 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v89 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v89 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v89 - v15;
  v17 = sub_25C4C7B20();
  v100 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v94 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v92 = &v89 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v89 - v23;
  MEMORY[0x28223BE20](v22);
  v99 = &v89 - v25;
  *&v101 = 4;
  v26 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v26)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v101 = 0u;
    v102 = 0u;
  }

  v103[0] = v101;
  v103[1] = v102;
  v27 = v100;
  if (!*(&v102 + 1))
  {
    sub_25C4666F8(v103, &unk_27FC0AA20, &unk_25C4CAD40);
    (*(v27 + 56))(v16, 1, 1, v17);
    goto LABEL_15;
  }

  v28 = swift_dynamicCast();
  (*(v27 + 56))(v16, v28 ^ 1u, 1, v17);
  if ((*(v27 + 48))(v16, 1, v17) == 1)
  {
LABEL_15:
    sub_25C4666F8(v16, &qword_27FC0A4B8, &qword_25C4CA200);
    v56 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  v91 = v13;
  v29 = v99;
  (*(v27 + 32))(v99, v16, v17);
  v30 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingOperationItems;
  v31 = v98;
  swift_beginAccess();
  v32 = *&v31[v30];
  if (*(v32 + 16) && (v33 = sub_25C458F84(v29), (v34 & 1) != 0))
  {
    v35 = *(v32 + 56);
    v90 = v17;
    v36 = v96;
    sub_25C4BACD0(v35 + *(v96 + 72) * v33, v11, type metadata accessor for NXSessionDaemon.OperationItem);
    sub_25C4BB0E8(v11, v91, type metadata accessor for NXSessionDaemon.OperationItem);
    swift_endAccess();
    v37 = *(v27 + 16);
    v37(v24, v29, v90);
    (*(v36 + 56))(v4, 1, 1, v97);
    swift_beginAccess();
    sub_25C495328(v4, v24);
    swift_endAccess();
    *&v103[0] = 0;
    sub_25C4C8500();
    if (*&v103[0] && (v38 = sub_25C4C84F0(), , v39 = CUDecodeNSErrorDictionaryStd(v38), v38, v39))
    {
      if (qword_27FC0B970 != -1)
      {
        swift_once();
      }

      v40 = sub_25C4C7BD0();
      __swift_project_value_buffer(v40, qword_27FC0B978);
      v41 = v92;
      v42 = v90;
      v37(v92, v99, v90);
      v43 = v39;
      v44 = sub_25C4C7BB0();
      v45 = sub_25C4C8710();
      v98 = v43;

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        *&v103[0] = v96;
        *v46 = 136315394;
        sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v47 = sub_25C4C89A0();
        v49 = v48;
        v50 = *(v100 + 8);
        v50(v41, v42);
        v51 = sub_25C458990(v47, v49, v103);

        *(v46 + 4) = v51;
        *(v46 + 12) = 2080;
        swift_getErrorValue();
        v52 = sub_25C4C8A30();
        v54 = sub_25C458990(v52, v53, v103);

        *(v46 + 14) = v54;
        _os_log_impl(&dword_25C452000, v44, v45, "### Operation start response error: itemUUID=%s, error=%s", v46, 0x16u);
        v55 = v96;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v55, -1, -1);
        MEMORY[0x25F888630](v46, -1, -1);
      }

      else
      {

        v50 = *(v100 + 8);
        v50(v41, v42);
      }

      v74 = v91;
      v75 = *&v91[*(v97 + 28)];
      v76 = v98;
      v75(v39);

      v65 = v99;
    }

    else
    {
      if (qword_27FC0B970 != -1)
      {
        swift_once();
      }

      v60 = sub_25C4C7BD0();
      __swift_project_value_buffer(v60, qword_27FC0B978);
      v61 = v91;
      v62 = v93;
      sub_25C4BACD0(v91, v93, type metadata accessor for NXSessionDaemon.OperationItem);
      v63 = v95;
      sub_25C4BACD0(v61, v95, type metadata accessor for NXSessionDaemon.OperationItem);
      v64 = v94;
      v65 = v99;
      v42 = v90;
      v37(v94, v99, v90);
      v66 = sub_25C4C7BB0();
      v67 = sub_25C4C8720();
      if (os_log_type_enabled(v66, v67))
      {
        LODWORD(v98) = v67;
        v68 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        *&v103[0] = v96;
        *v68 = 136315650;
        v69 = v97;
        v70 = (v62 + *(v97 + 20));
        if (v70[1])
        {
          v71 = *v70;
          v72 = v70[1];
        }

        else
        {
          v72 = 0xE300000000000000;
          v71 = 7104878;
        }

        sub_25C4BAF14(v62, type metadata accessor for NXSessionDaemon.OperationItem);
        v77 = sub_25C458990(v71, v72, v103);

        *(v68 + 4) = v77;
        *(v68 + 12) = 2080;
        sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v78 = v95;
        v79 = sub_25C4C89A0();
        v81 = v80;
        sub_25C4BAF14(v78, type metadata accessor for NXSessionDaemon.OperationItem);
        v82 = sub_25C458990(v79, v81, v103);

        *(v68 + 14) = v82;
        *(v68 + 22) = 2080;
        v83 = v94;
        v84 = sub_25C4C89A0();
        v86 = v85;
        v50 = *(v100 + 8);
        v50(v83, v42);
        v87 = sub_25C458990(v84, v86, v103);

        *(v68 + 24) = v87;
        _os_log_impl(&dword_25C452000, v66, v98, "Received operation start response: operationName=%s, operationUUID=%s, itemUUID=%s", v68, 0x20u);
        v88 = v96;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v88, -1, -1);
        MEMORY[0x25F888630](v68, -1, -1);

        v65 = v99;
      }

      else
      {

        v73 = v62;
        v50 = *(v100 + 8);
        v50(v64, v42);
        sub_25C4BAF14(v63, type metadata accessor for NXSessionDaemon.OperationItem);
        sub_25C4BAF14(v73, type metadata accessor for NXSessionDaemon.OperationItem);
        v69 = v97;
      }

      v74 = v91;
      (*&v91[*(v69 + 28)])(0);
    }

    v50(v65, v42);
    return sub_25C4BAF14(v74, type metadata accessor for NXSessionDaemon.OperationItem);
  }

  else
  {
    swift_endAccess();
    *&v103[0] = 0;
    *(&v103[0] + 1) = 0xE000000000000000;
    sub_25C4C88F0();

    *&v103[0] = 0xD000000000000024;
    *(&v103[0] + 1) = 0x800000025C4D1B60;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v58 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v58);

    v59 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v27 + 8))(v29, v17);
  }
}

uint64_t sub_25C4A5274(void (*a1)(char *, char *, uint64_t))
{
  v151 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v153 = *(v151 - 8);
  v2 = MEMORY[0x28223BE20](v151);
  v152 = v138 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v154 = v138 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v138 - v9;
  v11 = sub_25C4C7B20();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v155 = v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v150 = v138 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v157 = v138 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v156 = v138 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v161 = v138 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v159 = v138 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v138 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = v138 - v28;
  *&v166 = 4;
  v30 = sub_25C4C8A00();
  v163 = a1;
  v31 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v31)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v166 = 0u;
    v167 = 0u;
  }

  v168 = v166;
  v169 = v167;
  if (!*(&v167 + 1))
  {
    sub_25C4666F8(&v168, &unk_27FC0AA20, &unk_25C4CAD40);
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_9;
  }

  v149 = v27;
  v162 = v29;
  v32 = swift_dynamicCast();
  v33 = *(v12 + 56);
  v33(v10, v32 ^ 1u, 1, v11);
  v34 = v11;
  v35 = *(v12 + 48);
  if (v35(v10, 1, v34) == 1)
  {
LABEL_9:
    sub_25C4666F8(v10, &qword_27FC0A4B8, &qword_25C4CA200);
    v38 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  v148 = v12;
  v36 = *(v12 + 32);
  v147 = v34;
  v146 = v36;
  v36(v162, v10, v34);
  *&v166 = 5;
  v37 = [v163 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v37)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v166 = 0u;
    v167 = 0u;
  }

  v168 = v166;
  v169 = v167;
  if (!*(&v167 + 1))
  {
    sub_25C4666F8(&v168, &unk_27FC0AA20, &unk_25C4CAD40);
    v40 = v147;
    v33(v8, 1, 1, v147);
    goto LABEL_16;
  }

  v40 = v147;
  v41 = swift_dynamicCast();
  v33(v8, v41 ^ 1u, 1, v40);
  if (v35(v8, 1, v40) == 1)
  {
LABEL_16:
    sub_25C4666F8(v8, &qword_27FC0A4B8, &qword_25C4CA200);
    v44 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v148 + 8))(v162, v40);
  }

  v146(v149, v8, v40);
  *&v166 = 3;
  v42 = [v163 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  v43 = v162;
  if (v42)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v166 = 0u;
    v167 = 0u;
  }

  v45 = v161;
  v168 = v166;
  v169 = v167;
  if (!*(&v167 + 1))
  {
    sub_25C4666F8(&v168, &unk_27FC0AA20, &unk_25C4CAD40);
    goto LABEL_27;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    v77 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    v78 = *(v148 + 8);
    v78(v149, v40);
    return (v78)(v43, v40);
  }

  v46 = v164;
  v47 = v165;
  v48 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__operations;
  v49 = v160;
  swift_beginAccess();
  v50 = *(v49 + v48);
  if (*(v50 + 16) && (v51 = sub_25C458F84(v149), (v52 & 1) != 0))
  {
    v145 = v47;
    v53 = *(*(v50 + 56) + 8 * v51);
    swift_endAccess();
    v54 = qword_27FC0B970;
    v143 = v53;

    if (v54 != -1)
    {
      swift_once();
    }

    v144 = v46;
    v55 = sub_25C4C7BD0();
    v56 = __swift_project_value_buffer(v55, qword_27FC0B978);
    v57 = (v148 + 16);
    v58 = *(v148 + 16);
    v59 = v159;
    v58(v159, v149, v40);
    v58(v45, v43, v40);
    v142 = v56;
    v60 = sub_25C4C7BB0();
    v141 = sub_25C4C8720();
    v61 = os_log_type_enabled(v60, v141);
    v163 = v58;
    if (v61)
    {
      v62 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      *&v168 = v140;
      *v62 = 136315394;
      v138[1] = sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v139 = v60;
      v63 = sub_25C4C89A0();
      v65 = v64;
      v66 = *(v148 + 8);
      v66(v59, v40);
      v67 = sub_25C458990(v63, v65, &v168);

      *(v62 + 4) = v67;
      *(v62 + 12) = 2080;
      v68 = v161;
      v69 = sub_25C4C89A0();
      v70 = v40;
      v72 = v71;
      v161 = v66;
      v66(v68, v70);
      v58 = v163;
      v73 = sub_25C458990(v69, v72, &v168);

      *(v62 + 14) = v73;
      v74 = v139;
      _os_log_impl(&dword_25C452000, v139, v141, "Received operation update: operationUUID=%s, itemUUID=%s", v62, 0x16u);
      v75 = v140;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v75, -1, -1);
      v76 = v162;
      MEMORY[0x25F888630](v62, -1, -1);
    }

    else
    {

      v84 = *(v148 + 8);
      v84(v45, v40);
      v161 = v84;
      v84(v159, v40);
      v76 = v43;
    }

    v85 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v86 = v156;
    v87 = v147;
    v58(v156, v149, v147);
    v88 = v58;
    v89 = v157;
    v88(v157, v76, v87);
    v90 = *(v148 + 80);
    v91 = (v90 + 24) & ~v90;
    v92 = (v13 + v90 + v91) & ~v90;
    v93 = swift_allocObject();
    *(v93 + 16) = v85;
    v94 = v93 + v91;
    v95 = v146;
    v146(v94, v86, v87);
    v95(v93 + v92, v89, v87);

    v96 = v144;
    v97 = v145;
    v98 = v158;
    sub_25C4C1D5C(v144, v145, sub_25C4BCD9C, v93);
    if (v98)
    {

      v99 = v150;
      v100 = v163;
      v163(v150, v149, v147);
      v101 = v155;
      v102 = v162;
      v159 = v57;
      v100(v155);
      v103 = v98;
      v104 = sub_25C4C7BB0();
      v105 = sub_25C4C8710();

      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        *&v168 = v158;
        *v106 = 136315650;
        sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v107 = v147;
        v108 = sub_25C4C89A0();
        v110 = v109;
        LODWORD(v157) = v105;
        v111 = v99;
        v112 = v161;
        (v161)(v111, v107);
        v113 = sub_25C458990(v108, v110, &v168);

        *(v106 + 4) = v113;
        *(v106 + 12) = 2080;
        v114 = v155;
        v115 = sub_25C4C89A0();
        v117 = v116;
        v112(v114, v107);
        v118 = sub_25C458990(v115, v117, &v168);

        *(v106 + 14) = v118;
        *(v106 + 22) = 2080;
        v102 = v162;
        swift_getErrorValue();
        v119 = sub_25C4C8A30();
        v121 = sub_25C458990(v119, v120, &v168);

        *(v106 + 24) = v121;
        _os_log_impl(&dword_25C452000, v104, v157, "### Received operation update failed: operationUUID=%s, itemUUID=%s, error=%s", v106, 0x20u);
        v122 = v158;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v122, -1, -1);
        MEMORY[0x25F888630](v106, -1, -1);
      }

      else
      {

        v107 = v147;
        v125 = v161;
        (v161)(v101, v147);
        v125(v99, v107);
      }

      v126 = v160;
      v127 = v154;
      v128 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8F0, &qword_25C4CAC80) + 48);
      v163(v127, v102, v107);
      *(v127 + v128) = v98;
      swift_storeEnumTagMultiPayload();
      v129 = v152;
      sub_25C4BACD0(v127, v152, type metadata accessor for NXSessionDaemon.SendItem);
      v130 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
      swift_beginAccess();
      v131 = *(v126 + v130);
      v132 = v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v126 + v130) = v131;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v131 = sub_25C4B480C(0, v131[2] + 1, 1, v131);
        *(v126 + v130) = v131;
      }

      v135 = v131[2];
      v134 = v131[3];
      if (v135 >= v134 >> 1)
      {
        v131 = sub_25C4B480C((v134 > 1), v135 + 1, 1, v131);
      }

      v131[2] = v135 + 1;
      sub_25C4BB0E8(v129, v131 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v135, type metadata accessor for NXSessionDaemon.SendItem);
      *(v126 + v130) = v131;
      swift_endAccess();
      sub_25C49CF5C();

      sub_25C45A004(v144, v145);

      sub_25C4BAF14(v127, type metadata accessor for NXSessionDaemon.SendItem);
      v136 = v147;
      v137 = v161;
      (v161)(v149, v147);
      return v137(v102, v136);
    }

    else
    {

      sub_25C45A004(v96, v97);
      v123 = v147;
      v124 = v161;
      (v161)(v149, v147);
      v124(v162, v123);
    }
  }

  else
  {
    swift_endAccess();
    *&v168 = 0;
    *(&v168 + 1) = 0xE000000000000000;
    sub_25C4C88F0();
    MEMORY[0x25F887A50](0xD000000000000035, 0x800000025C4D1C10);
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v79 = v43;
    v80 = v149;
    v81 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v81);

    v82 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    sub_25C45A004(v46, v47);
    v83 = *(v148 + 8);
    v83(v80, v40);
    return (v83)(v79, v40);
  }
}

uint64_t sub_25C4A64B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A900, &qword_25C4CAC90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v84 - v3;
  v90 = type metadata accessor for NXSessionDaemon.OperationItem(0);
  v89 = *(v90 - 8);
  v5 = MEMORY[0x28223BE20](v90);
  v88 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v84 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v84 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v84 - v13;
  v15 = sub_25C4C7B20();
  v93 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v87 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v86 = &v84 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v84 - v21;
  MEMORY[0x28223BE20](v20);
  v92 = &v84 - v23;
  *&v94 = 4;
  v24 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v24)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v94 = 0u;
    v95 = 0u;
  }

  v96[0] = v94;
  v96[1] = v95;
  v25 = v93;
  if (!*(&v95 + 1))
  {
    sub_25C4666F8(v96, &unk_27FC0AA20, &unk_25C4CAD40);
    (*(v25 + 56))(v14, 1, 1, v15);
    goto LABEL_15;
  }

  v26 = swift_dynamicCast();
  (*(v25 + 56))(v14, v26 ^ 1u, 1, v15);
  if ((*(v25 + 48))(v14, 1, v15) == 1)
  {
LABEL_15:
    sub_25C4666F8(v14, &qword_27FC0A4B8, &qword_25C4CA200);
    v58 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  v85 = v11;
  v27 = v92;
  (*(v25 + 32))(v92, v14, v15);
  v28 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingOperationItems;
  v29 = v91;
  swift_beginAccess();
  v30 = *(v29 + v28);
  if (*(v30 + 16) && (v31 = sub_25C458F84(v27), (v32 & 1) != 0))
  {
    v33 = *(v30 + 56);
    v84 = a1;
    v34 = v89;
    sub_25C4BACD0(v33 + *(v89 + 72) * v31, v9, type metadata accessor for NXSessionDaemon.OperationItem);
    sub_25C4BB0E8(v9, v85, type metadata accessor for NXSessionDaemon.OperationItem);
    swift_endAccess();
    v35 = v27;
    v36 = *(v25 + 16);
    v36(v22, v35, v15);
    (*(v34 + 56))(v4, 1, 1, v90);
    swift_beginAccess();
    sub_25C495328(v4, v22);
    swift_endAccess();
    *&v96[0] = 0;
    sub_25C4C8500();
    if (*&v96[0] && (v37 = sub_25C4C84F0(), , v38 = CUDecodeNSErrorDictionaryStd(v37), v37, v38))
    {
      if (qword_27FC0B970 != -1)
      {
        swift_once();
      }

      v39 = sub_25C4C7BD0();
      __swift_project_value_buffer(v39, qword_27FC0B978);
      v40 = v86;
      v41 = v92;
      v36(v86, v92, v15);
      v42 = v38;
      v43 = sub_25C4C7BB0();
      v44 = sub_25C4C8710();
      v91 = v42;

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *&v96[0] = v89;
        *v45 = 136315394;
        sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v46 = sub_25C4C89A0();
        v48 = v47;
        v49 = *(v93 + 8);
        v49(v40, v15);
        v50 = sub_25C458990(v46, v48, v96);

        *(v45 + 4) = v50;
        *(v45 + 12) = 2080;
        v51 = v91;
        swift_getErrorValue();
        v52 = sub_25C4C8A30();
        v54 = sub_25C458990(v52, v53, v96);

        *(v45 + 14) = v54;
        _os_log_impl(&dword_25C452000, v43, v44, "### Operation update response error: itemUUID=%s, error=%s", v45, 0x16u);
        v55 = v89;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v55, -1, -1);
        v56 = v45;
        v41 = v92;
        MEMORY[0x25F888630](v56, -1, -1);

        v57 = v90;
      }

      else
      {

        v49 = *(v93 + 8);
        v49(v40, v15);
        v57 = v90;
        v51 = v91;
      }

      v81 = v85;
      v82 = *&v85[*(v57 + 28)];
      v83 = v51;
      v82(v38);
      v80 = v81;
    }

    else
    {
      if (qword_27FC0B970 != -1)
      {
        swift_once();
      }

      v62 = sub_25C4C7BD0();
      __swift_project_value_buffer(v62, qword_27FC0B978);
      v63 = v88;
      sub_25C4BACD0(v85, v88, type metadata accessor for NXSessionDaemon.OperationItem);
      v64 = v87;
      v41 = v92;
      v36(v87, v92, v15);
      v65 = sub_25C4C7BB0();
      v66 = sub_25C4C8720();
      v67 = os_log_type_enabled(v65, v66);
      v68 = v90;
      if (v67)
      {
        v69 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *&v96[0] = v91;
        *v69 = 136315394;
        sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v70 = v64;
        v71 = sub_25C4C89A0();
        v73 = v72;
        sub_25C4BAF14(v63, type metadata accessor for NXSessionDaemon.OperationItem);
        v74 = sub_25C458990(v71, v73, v96);

        *(v69 + 4) = v74;
        *(v69 + 12) = 2080;
        v75 = sub_25C4C89A0();
        v77 = v76;
        v49 = *(v93 + 8);
        v49(v70, v15);
        v78 = sub_25C458990(v75, v77, v96);

        *(v69 + 14) = v78;
        v68 = v90;
        _os_log_impl(&dword_25C452000, v65, v66, "Received operation update response: operationUUID=%s, itemUUID=%s", v69, 0x16u);
        v79 = v91;
        swift_arrayDestroy();
        v41 = v92;
        MEMORY[0x25F888630](v79, -1, -1);
        MEMORY[0x25F888630](v69, -1, -1);
      }

      else
      {

        v49 = *(v93 + 8);
        v49(v64, v15);
        sub_25C4BAF14(v63, type metadata accessor for NXSessionDaemon.OperationItem);
      }

      v80 = v85;
      (*&v85[*(v68 + 28)])(0);
    }

    v49(v41, v15);
    return sub_25C4BAF14(v80, type metadata accessor for NXSessionDaemon.OperationItem);
  }

  else
  {
    swift_endAccess();
    *&v96[0] = 0;
    *(&v96[0] + 1) = 0xE000000000000000;
    sub_25C4C88F0();

    *&v96[0] = 0xD000000000000025;
    *(&v96[0] + 1) = 0x800000025C4D1C80;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v60 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v60);

    v61 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v25 + 8))(v27, v15);
  }
}

uint64_t sub_25C4A708C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v101 = v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v84 - v5;
  v7 = sub_25C4C7B20();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = MEMORY[0x28223BE20](v10);
  v99 = v84 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v98 = v84 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v97 = v84 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v84 - v18;
  MEMORY[0x28223BE20](v17);
  v106 = v84 - v20;
  *&v102 = 4;
  v21 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v21)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v102 = 0u;
    v103 = 0u;
  }

  v104 = v102;
  v105 = v103;
  if (!*(&v103 + 1))
  {
    sub_25C4666F8(&v104, &unk_27FC0AA20, &unk_25C4CAD40);
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_9;
  }

  v94 = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v19;
  v22 = swift_dynamicCast();
  v23 = *(v8 + 56);
  v23(v6, v22 ^ 1u, 1, v7);
  v24 = *(v8 + 48);
  if (v24(v6, 1, v7) == 1)
  {
LABEL_9:
    sub_25C4666F8(v6, &qword_27FC0A4B8, &qword_25C4CA200);
    v29 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  v95 = v8;
  v25 = v8 + 32;
  v26 = *(v8 + 32);
  v27 = v106;
  v92 = v25;
  v93 = v7;
  v91 = v26;
  v26(v106, v6, v7);
  *&v102 = 5;
  v28 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v28)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v102 = 0u;
    v103 = 0u;
  }

  v31 = v101;
  v104 = v102;
  v105 = v103;
  if (!*(&v103 + 1))
  {
    sub_25C4666F8(&v104, &unk_27FC0AA20, &unk_25C4CAD40);
    v67 = v93;
    v23(v31, 1, 1, v93);
    v34 = v67;
    goto LABEL_20;
  }

  v32 = v93;
  v33 = swift_dynamicCast();
  v23(v31, v33 ^ 1u, 1, v32);
  v34 = v32;
  if (v24(v31, 1, v32) == 1)
  {
LABEL_20:
    sub_25C4666F8(v31, &qword_27FC0A4B8, &qword_25C4CA200);
    v68 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v95 + 8))(v27, v34);
  }

  v35 = v96;
  v91(v96, v31, v32);
  v36 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__operations;
  v37 = v100;
  swift_beginAccess();
  v38 = *(v37 + v36);
  v39 = v95;
  if (*(v38 + 16) && (v40 = sub_25C458F84(v35), (v41 & 1) != 0))
  {
    v42 = *(*(v38 + 56) + 8 * v40);
    swift_endAccess();
    v43 = qword_27FC0B970;
    v101 = v42;

    if (v43 != -1)
    {
      swift_once();
    }

    v44 = sub_25C4C7BD0();
    __swift_project_value_buffer(v44, qword_27FC0B978);
    v45 = v39;
    v46 = *(v39 + 16);
    v47 = v97;
    v46(v97, v96, v34);
    v48 = v98;
    v90 = v46;
    v46(v98, v106, v34);
    v49 = sub_25C4C7BB0();
    v50 = sub_25C4C8720();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = v47;
      v52 = swift_slowAlloc();
      v85 = v52;
      v88 = swift_slowAlloc();
      *&v104 = v88;
      *v52 = 136315394;
      v53 = sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v87 = v50;
      v84[1] = v53;
      v86 = v49;
      v54 = v51;
      v55 = sub_25C4C89A0();
      v57 = v56;
      v58 = *(v45 + 8);
      v89 = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58(v54, v34);
      v59 = sub_25C458990(v55, v57, &v104);

      v60 = v85;
      *(v85 + 1) = v59;
      *(v60 + 6) = 2080;
      v61 = sub_25C4C89A0();
      v63 = v62;
      v98 = v58;
      v58(v48, v34);
      v64 = sub_25C458990(v61, v63, &v104);

      *(v60 + 14) = v64;
      v65 = v86;
      _os_log_impl(&dword_25C452000, v86, v87, "Received operation cancel: operationUUID=%s, itemUUID=%s", v60, 0x16u);
      v66 = v88;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v66, -1, -1);
      MEMORY[0x25F888630](v60, -1, -1);
    }

    else
    {

      v72 = *(v45 + 8);
      v89 = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v72(v48, v34);
      v98 = v72;
      v72(v47, v34);
    }

    v73 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v74 = v99;
    v75 = v90;
    v90(v99, v96, v34);
    v76 = v94;
    v77 = v106;
    v75(v94, v106, v34);
    v78 = *(v95 + 80);
    v79 = (v78 + 24) & ~v78;
    v80 = (v9 + v78 + v79) & ~v78;
    v81 = swift_allocObject();
    *(v81 + 16) = v73;
    v82 = v91;
    v91((v81 + v79), v74, v34);
    v82(v81 + v80, v76, v34);

    sub_25C4C23B0(sub_25C4BCEA0, v81);

    v83 = v98;
    (v98)(v96, v34);
    v83(v77, v34);
  }

  else
  {
    swift_endAccess();
    *&v104 = 0;
    *(&v104 + 1) = 0xE000000000000000;
    sub_25C4C88F0();
    MEMORY[0x25F887A50](0xD000000000000035, 0x800000025C4D1D00);
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v69 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v69);

    v70 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    v71 = *(v39 + 8);
    v71(v35, v32);
    return (v71)(v27, v32);
  }
}

uint64_t sub_25C4A7B40(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A900, &qword_25C4CAC90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v84 - v3;
  v90 = type metadata accessor for NXSessionDaemon.OperationItem(0);
  v89 = *(v90 - 8);
  v5 = MEMORY[0x28223BE20](v90);
  v88 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v84 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v84 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v84 - v13;
  v15 = sub_25C4C7B20();
  v93 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v87 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v86 = &v84 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v84 - v21;
  MEMORY[0x28223BE20](v20);
  v92 = &v84 - v23;
  *&v94 = 4;
  v24 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v24)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v94 = 0u;
    v95 = 0u;
  }

  v96[0] = v94;
  v96[1] = v95;
  v25 = v93;
  if (!*(&v95 + 1))
  {
    sub_25C4666F8(v96, &unk_27FC0AA20, &unk_25C4CAD40);
    (*(v25 + 56))(v14, 1, 1, v15);
    goto LABEL_15;
  }

  v26 = swift_dynamicCast();
  (*(v25 + 56))(v14, v26 ^ 1u, 1, v15);
  if ((*(v25 + 48))(v14, 1, v15) == 1)
  {
LABEL_15:
    sub_25C4666F8(v14, &qword_27FC0A4B8, &qword_25C4CA200);
    v58 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  v85 = v11;
  v27 = v92;
  (*(v25 + 32))(v92, v14, v15);
  v28 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingOperationItems;
  v29 = v91;
  swift_beginAccess();
  v30 = *(v29 + v28);
  if (*(v30 + 16) && (v31 = sub_25C458F84(v27), (v32 & 1) != 0))
  {
    v33 = *(v30 + 56);
    v84 = a1;
    v34 = v89;
    sub_25C4BACD0(v33 + *(v89 + 72) * v31, v9, type metadata accessor for NXSessionDaemon.OperationItem);
    sub_25C4BB0E8(v9, v85, type metadata accessor for NXSessionDaemon.OperationItem);
    swift_endAccess();
    v35 = v27;
    v36 = *(v25 + 16);
    v36(v22, v35, v15);
    (*(v34 + 56))(v4, 1, 1, v90);
    swift_beginAccess();
    sub_25C495328(v4, v22);
    swift_endAccess();
    *&v96[0] = 0;
    sub_25C4C8500();
    if (*&v96[0] && (v37 = sub_25C4C84F0(), , v38 = CUDecodeNSErrorDictionaryStd(v37), v37, v38))
    {
      if (qword_27FC0B970 != -1)
      {
        swift_once();
      }

      v39 = sub_25C4C7BD0();
      __swift_project_value_buffer(v39, qword_27FC0B978);
      v40 = v86;
      v41 = v92;
      v36(v86, v92, v15);
      v42 = v38;
      v43 = sub_25C4C7BB0();
      v44 = sub_25C4C8710();
      v91 = v42;

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *&v96[0] = v89;
        *v45 = 136315394;
        sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v46 = sub_25C4C89A0();
        v48 = v47;
        v49 = *(v93 + 8);
        v49(v40, v15);
        v50 = sub_25C458990(v46, v48, v96);

        *(v45 + 4) = v50;
        *(v45 + 12) = 2080;
        v51 = v91;
        swift_getErrorValue();
        v52 = sub_25C4C8A30();
        v54 = sub_25C458990(v52, v53, v96);

        *(v45 + 14) = v54;
        _os_log_impl(&dword_25C452000, v43, v44, "### Operation cancel response error: itemUUID=%s, error=%s", v45, 0x16u);
        v55 = v89;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v55, -1, -1);
        v56 = v45;
        v41 = v92;
        MEMORY[0x25F888630](v56, -1, -1);

        v57 = v90;
      }

      else
      {

        v49 = *(v93 + 8);
        v49(v40, v15);
        v57 = v90;
        v51 = v91;
      }

      v81 = v85;
      v82 = *&v85[*(v57 + 28)];
      v83 = v51;
      v82(v38);
      v80 = v81;
    }

    else
    {
      if (qword_27FC0B970 != -1)
      {
        swift_once();
      }

      v62 = sub_25C4C7BD0();
      __swift_project_value_buffer(v62, qword_27FC0B978);
      v63 = v88;
      sub_25C4BACD0(v85, v88, type metadata accessor for NXSessionDaemon.OperationItem);
      v64 = v87;
      v41 = v92;
      v36(v87, v92, v15);
      v65 = sub_25C4C7BB0();
      v66 = sub_25C4C8720();
      v67 = os_log_type_enabled(v65, v66);
      v68 = v90;
      if (v67)
      {
        v69 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *&v96[0] = v91;
        *v69 = 136315394;
        sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v70 = v64;
        v71 = sub_25C4C89A0();
        v73 = v72;
        sub_25C4BAF14(v63, type metadata accessor for NXSessionDaemon.OperationItem);
        v74 = sub_25C458990(v71, v73, v96);

        *(v69 + 4) = v74;
        *(v69 + 12) = 2080;
        v75 = sub_25C4C89A0();
        v77 = v76;
        v49 = *(v93 + 8);
        v49(v70, v15);
        v78 = sub_25C458990(v75, v77, v96);

        *(v69 + 14) = v78;
        v68 = v90;
        _os_log_impl(&dword_25C452000, v65, v66, "Received operation cancel response: operationUUID=%s, itemUUID=%s", v69, 0x16u);
        v79 = v91;
        swift_arrayDestroy();
        v41 = v92;
        MEMORY[0x25F888630](v79, -1, -1);
        MEMORY[0x25F888630](v69, -1, -1);
      }

      else
      {

        v49 = *(v93 + 8);
        v49(v64, v15);
        sub_25C4BAF14(v63, type metadata accessor for NXSessionDaemon.OperationItem);
      }

      v80 = v85;
      (*&v85[*(v68 + 28)])(0);
    }

    v49(v41, v15);
    return sub_25C4BAF14(v80, type metadata accessor for NXSessionDaemon.OperationItem);
  }

  else
  {
    swift_endAccess();
    *&v96[0] = 0;
    *(&v96[0] + 1) = 0xE000000000000000;
    sub_25C4C88F0();
    MEMORY[0x25F887A50](0xD000000000000034, 0x800000025C4D1D70);
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v60 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v60);

    v61 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v25 + 8))(v27, v15);
  }
}

uint64_t sub_25C4A871C(void *a1)
{
  v3 = sub_25C4C7E50();
  v66 = *(v3 - 8);
  v67 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v69 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v56 - v9;
  v11 = sub_25C4C7B20();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v65 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v76 = &v56 - v15;
  *&v72 = 5;
  v16 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v16)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v72 = 0u;
    v73 = 0u;
  }

  v74 = v72;
  v75 = v73;
  if (!*(&v73 + 1))
  {
    sub_25C4666F8(&v74, &unk_27FC0AA20, &unk_25C4CAD40);
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_9;
  }

  v17 = swift_dynamicCast();
  (*(v12 + 56))(v10, v17 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_9:
    sub_25C4666F8(v10, &qword_27FC0A4B8, &qword_25C4CA200);
    v19 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  (*(v12 + 32))(v76, v10, v11);
  *&v72 = 6;
  v18 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v18)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v72 = 0u;
    v73 = 0u;
  }

  v21 = v69;
  v22 = v6;
  v74 = v72;
  v75 = v73;
  if (!*(&v73 + 1))
  {
    sub_25C4666F8(&v74, &unk_27FC0AA20, &unk_25C4CAD40);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v26 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v12 + 8))(v76, v11);
  }

  v24 = v70;
  v23 = v71;
  v25 = v68;
  sub_25C4C7E20();
  if (v25)
  {
    (*(v12 + 8))(v76, v11);
    return sub_25C45A004(v24, v23);
  }

  else
  {
    v27 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__operations;
    swift_beginAccess();
    v28 = *(v1 + v27);
    if (*(v28 + 16) && (v29 = sub_25C458F84(v76), (v30 & 1) != 0))
    {
      v31 = *(*(v28 + 56) + 8 * v29);
      swift_endAccess();
      v32 = qword_27FC0B970;
      v68 = v31;

      if (v32 != -1)
      {
        swift_once();
      }

      v33 = sub_25C4C7BD0();
      __swift_project_value_buffer(v33, qword_27FC0B978);
      (*(v12 + 16))(v65, v76, v11);
      v34 = v66;
      (*(v66 + 16))(v22, v21, v67);
      v35 = sub_25C4C7BB0();
      v63 = sub_25C4C8720();
      if (os_log_type_enabled(v35, v63))
      {
        v36 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *&v74 = v62;
        *v36 = 136315394;
        sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v61 = v35;
        v37 = v65;
        v57 = sub_25C4C89A0();
        v58 = v22;
        v39 = v38;
        v60 = *(v12 + 8);
        v64 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v60(v37, v11);
        v40 = sub_25C458990(v57, v39, &v74);

        v59 = v36;
        *(v36 + 4) = v40;
        *(v36 + 12) = 2080;
        sub_25C4B8B3C(&unk_27FC0AA60, MEMORY[0x277D35798], MEMORY[0x277D357A0]);
        v41 = v58;
        v42 = v67;
        v43 = sub_25C4C89A0();
        v45 = v44;
        v66 = *(v34 + 8);
        (v66)(v41, v42);
        v46 = sub_25C458990(v43, v45, &v74);
        v47 = v60;

        v48 = v59;
        *(v59 + 14) = v46;
        v49 = v61;
        _os_log_impl(&dword_25C452000, v61, v63, "Received operation event: operationUUID=%s, event=%s", v48, 0x16u);
        v50 = v62;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v50, -1, -1);
        MEMORY[0x25F888630](v48, -1, -1);

        v51 = v67;
      }

      else
      {

        v51 = v67;
        v66 = *(v34 + 8);
        (v66)(v22, v67);
        v47 = *(v12 + 8);
        v64 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v47(v65, v11);
      }

      v55 = v69;
      sub_25C4BF5EC(v69);

      sub_25C45A004(v24, v23);
      (v66)(v55, v51);
      return (v47)(v76, v11);
    }

    else
    {
      swift_endAccess();
      *&v74 = 0;
      *(&v74 + 1) = 0xE000000000000000;
      sub_25C4C88F0();
      MEMORY[0x25F887A50](0xD000000000000034, 0x800000025C4D1E10);
      sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v52 = v76;
      v53 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v53);

      v54 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
      sub_25C45A004(v24, v23);
      (*(v66 + 8))(v21, v67);
      return (*(v12 + 8))(v52, v11);
    }
  }
}

uint64_t sub_25C4A9078(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v38[-v4];
  v6 = sub_25C4C7B20();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v43 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v50 = &v38[-v10];
  *&v46 = 5;
  v11 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v11)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v48 = v46;
  v49 = v47;
  if (!*(&v47 + 1))
  {
    sub_25C4666F8(&v48, &unk_27FC0AA20, &unk_25C4CAD40);
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_11;
  }

  v12 = swift_dynamicCast();
  (*(v7 + 56))(v5, v12 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_11:
    sub_25C4666F8(v5, &qword_27FC0A4B8, &qword_25C4CA200);
    v17 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  v13 = v50;
  (*(v7 + 32))(v50, v5, v6);
  v14 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__operations;
  swift_beginAccess();
  if (!*(*(v1 + v14) + 16) || (sub_25C458F84(v13), (v15 & 1) == 0))
  {
    swift_endAccess();
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    sub_25C4C88F0();
    MEMORY[0x25F887A50](0xD00000000000003DLL, 0x800000025C4D1E80);
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v19 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v19);

    v20 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v7 + 8))(v13, v6);
  }

  swift_endAccess();
  *&v46 = 3;

  v16 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v16)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v21 = v43;
  v48 = v46;
  v49 = v47;
  if (!*(&v47 + 1))
  {
    sub_25C4666F8(&v48, &unk_27FC0AA20, &unk_25C4CAD40);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v35 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();

    return (*(v7 + 8))(v50, v6);
  }

  v42 = v45;
  v43 = v44;
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v22 = sub_25C4C7BD0();
  __swift_project_value_buffer(v22, qword_27FC0B978);
  (*(v7 + 16))(v21, v50, v6);
  v23 = sub_25C4C7BB0();
  v24 = sub_25C4C8720();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v40 = v25;
    v41 = swift_slowAlloc();
    *&v48 = v41;
    *v25 = 136315138;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v39 = v24;
    v26 = sub_25C4C89A0();
    v27 = v21;
    v29 = v28;
    v30 = *(v7 + 8);
    v30(v27, v6);
    v31 = sub_25C458990(v26, v29, &v48);

    v32 = v40;
    *(v40 + 1) = v31;
    v33 = v32;
    _os_log_impl(&dword_25C452000, v23, v39, "Received operation provider event: operationUUID=%s", v32, 0xCu);
    v34 = v41;
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x25F888630](v34, -1, -1);
    MEMORY[0x25F888630](v33, -1, -1);
  }

  else
  {

    v30 = *(v7 + 8);
    v30(v21, v6);
  }

  v37 = v42;
  v36 = v43;
  sub_25C4C00CC(v43, v42);
  sub_25C45A004(v36, v37);

  return (v30)(v50, v6);
}

uint64_t sub_25C4A97A0(void *a1)
{
  v104 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v105 = *(v104 - 8);
  v2 = MEMORY[0x28223BE20](v104);
  v109 = v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v110 = (v93 - v4);
  v112 = sub_25C4C7E00();
  v5 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v107 = v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v93 - v8;
  v10 = sub_25C4C7B20();
  v114 = *(v10 - 8);
  v11 = *(v114 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v103 = v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v106 = v93 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v93 - v16;
  MEMORY[0x28223BE20](v15);
  v113 = v93 - v18;
  *&v117 = 4;
  v19 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v19)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v117 = 0u;
    v118 = 0u;
  }

  v119 = v117;
  v120 = v118;
  v20 = v114;
  if (!*(&v118 + 1))
  {
    sub_25C4666F8(&v119, &unk_27FC0AA20, &unk_25C4CAD40);
    (*(v20 + 56))(v9, 1, 1, v10);
    goto LABEL_9;
  }

  v21 = swift_dynamicCast();
  (*(v20 + 56))(v9, v21 ^ 1u, 1, v10);
  if ((*(v20 + 48))(v9, 1, v10) == 1)
  {
LABEL_9:
    sub_25C4666F8(v9, &qword_27FC0A4B8, &qword_25C4CA200);
    v23 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  v102 = *(v20 + 32);
  v102(v113, v9, v10);
  *&v117 = 2;
  v22 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v22)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v117 = 0u;
    v118 = 0u;
  }

  v119 = v117;
  v120 = v118;
  v25 = v113;
  if (!*(&v118 + 1))
  {
    sub_25C4666F8(&v119, &unk_27FC0AA20, &unk_25C4CAD40);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v28 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v114 + 8))(v25, v10);
  }

  v26 = v116;
  v101 = v115;
  *&v117 = 3;
  v27 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v27)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v117 = 0u;
    v118 = 0u;
  }

  v29 = v5;
  v119 = v117;
  v120 = v118;
  v30 = v26;
  if (!*(&v118 + 1))
  {

    sub_25C4666F8(&v119, &unk_27FC0AA20, &unk_25C4CAD40);
    v32 = v113;
LABEL_26:
    v48 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v114 + 8))(v32, v10);
  }

  v31 = swift_dynamicCast();
  v32 = v113;
  if ((v31 & 1) == 0)
  {

    goto LABEL_26;
  }

  v96 = v115;
  v97 = v116;
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v33 = sub_25C4C7BD0();
  v34 = __swift_project_value_buffer(v33, qword_27FC0B978);
  v35 = *(v114 + 16);
  v98 = v114 + 16;
  v99 = v35;
  v35(v17, v32, v10);

  v93[1] = v34;
  v36 = sub_25C4C7BB0();
  v37 = sub_25C4C8720();

  v38 = os_log_type_enabled(v36, v37);
  v100 = v30;
  v94 = v29;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v93[0] = swift_slowAlloc();
    *&v119 = v93[0];
    *v39 = 136315394;
    *(v39 + 4) = sub_25C458990(v101, v30, &v119);
    *(v39 + 12) = 2080;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v40 = v37;
    v41 = sub_25C4C89A0();
    v43 = v42;
    v95 = *(v114 + 8);
    v95(v17, v10);
    v44 = sub_25C458990(v41, v43, &v119);

    *(v39 + 14) = v44;
    v45 = v40;
    v29 = v94;
    _os_log_impl(&dword_25C452000, v36, v45, "Received request: requestName=%s, requestUUID=%s", v39, 0x16u);
    v46 = v93[0];
    swift_arrayDestroy();
    MEMORY[0x25F888630](v46, -1, -1);
    v47 = v39;
    v32 = v113;
    MEMORY[0x25F888630](v47, -1, -1);
  }

  else
  {

    v95 = *(v114 + 8);
    v95(v17, v10);
  }

  v49 = v111;
  v50 = v107;
  v107 = *(v111 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__daemon);
  v51 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__messageContext;
  swift_beginAccess();
  (*(v29 + 16))(v50, v49 + v51, v112);
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = v106;
  v99(v106, v32, v10);
  v54 = (*(v114 + 80) + 40) & ~*(v114 + 80);
  v55 = swift_allocObject();
  v56 = v101;
  *(v55 + 2) = v52;
  *(v55 + 3) = v56;
  v57 = v100;
  *(v55 + 4) = v100;
  v102(&v55[v54], v53, v10);

  v58 = sub_25C4880B8() & 1;
  v59 = v96;
  v60 = v97;
  v61 = v108;
  sub_25C4892D0(v56, v57, v96, v97, v50, v58, sub_25C4BD038, v55);
  if (v61)
  {
    (*(v94 + 8))(v50, v112);

    v62 = v103;
    v63 = v113;
    (v99)(v103);
    v64 = v100;

    v65 = v61;
    v66 = sub_25C4C7BB0();
    v67 = sub_25C4C8710();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = v62;
      v69 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      *&v117 = v112;
      *v69 = 136315650;
      *(v69 + 4) = sub_25C458990(v101, v64, &v117);
      *(v69 + 12) = 2080;
      sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v70 = sub_25C4C89A0();
      v72 = v71;
      v95(v68, v10);
      v73 = sub_25C458990(v70, v72, &v117);

      *(v69 + 14) = v73;
      *(v69 + 22) = 2080;
      swift_getErrorValue();
      v74 = sub_25C4C8A30();
      v76 = sub_25C458990(v74, v75, &v117);

      *(v69 + 24) = v76;
      v77 = v113;
      _os_log_impl(&dword_25C452000, v66, v67, "### Request failed: requestName=%s, requestUUID=%s, error=%s", v69, 0x20u);
      v78 = v112;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v78, -1, -1);
      v79 = v69;
      v80 = v101;
      MEMORY[0x25F888630](v79, -1, -1);

      v81 = v111;
    }

    else
    {

      v95(v62, v10);
      v81 = v111;
      v80 = v101;
      v77 = v63;
    }

    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8E8, &qword_25C4CAC78);
    v83 = *(v82 + 48);
    v84 = v110;
    v85 = v110 + *(v82 + 64);
    v86 = v100;
    *v110 = v80;
    v84[1] = v86;
    v99(v84 + v83, v77, v10);
    *v85 = v61;
    *(v85 + 1) = 0;
    v85[16] = 1;
    swift_storeEnumTagMultiPayload();
    sub_25C4BACD0(v84, v109, type metadata accessor for NXSessionDaemon.SendItem);
    v87 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
    swift_beginAccess();
    v88 = *(v81 + v87);
    v89 = v61;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v81 + v87) = v88;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v88 = sub_25C4B480C(0, v88[2] + 1, 1, v88);
      *(v81 + v87) = v88;
    }

    v92 = v88[2];
    v91 = v88[3];
    if (v92 >= v91 >> 1)
    {
      v88 = sub_25C4B480C((v91 > 1), v92 + 1, 1, v88);
    }

    v88[2] = v92 + 1;
    sub_25C4BB0E8(v109, v88 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v92, type metadata accessor for NXSessionDaemon.SendItem);
    *(v81 + v87) = v88;
    swift_endAccess();
    sub_25C49CF5C();
    sub_25C45A004(v96, v97);

    sub_25C4BAF14(v110, type metadata accessor for NXSessionDaemon.SendItem);
    return (v95)(v77, v10);
  }

  else
  {

    sub_25C45A004(v59, v60);

    (*(v94 + 8))(v50, v112);
    v95(v113, v10);
  }
}

uint64_t sub_25C4AA6F0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v91 - v5;
  v7 = sub_25C4C7B20();
  v100 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v91 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v98 = &v91 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v91 - v17;
  MEMORY[0x28223BE20](v16);
  v99 = &v91 - v19;
  *&v103 = 4;
  v20 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v20)
  {
    sub_25C4C87E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v103 = 0u;
    v104 = 0u;
  }

  v105 = v103;
  v106 = v104;
  v21 = v100;
  if (!*(&v104 + 1))
  {
    sub_25C4666F8(&v105, &unk_27FC0AA20, &unk_25C4CAD40);
    (*(v21 + 56))(v6, 1, 1, v7);
    goto LABEL_15;
  }

  v22 = swift_dynamicCast();
  (*(v21 + 56))(v6, v22 ^ 1u, 1, v7);
  if ((*(v21 + 48))(v6, 1, v7) == 1)
  {
LABEL_15:
    sub_25C4666F8(v6, &qword_27FC0A4B8, &qword_25C4CA200);
    v51 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  v97 = v10;
  v23 = v99;
  (*(v21 + 32))(v99, v6, v7);
  v24 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingRequests;
  swift_beginAccess();
  v25 = *(v2 + v24);
  if (!*(v25 + 16) || (v26 = sub_25C458F84(v23), (v27 & 1) == 0))
  {
    swift_endAccess();
    *&v105 = 0;
    *(&v105 + 1) = 0xE000000000000000;
    sub_25C4C88F0();

    *&v105 = 0xD00000000000001FLL;
    *(&v105 + 1) = 0x800000025C4D1F20;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v53 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v53);

    v54 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v21 + 8))(v23, v7);
  }

  v92 = v13;
  v28 = (*(v25 + 56) + 32 * v26);
  v29 = v28[1];
  v91 = *v28;
  v30 = v28[3];
  v94 = v28[2];
  swift_endAccess();
  v93 = *(v21 + 16);
  v93(v18, v23, v7);
  swift_beginAccess();
  v96 = v29;

  v95 = v30;

  sub_25C495548(0, 0, 0, 0, v18);
  swift_endAccess();
  *&v105 = 0;
  sub_25C4C8500();
  if (!v105 || (v31 = sub_25C4C84F0(), , v32 = CUDecodeNSErrorDictionaryStd(v31), v31, !v32))
  {
    *&v103 = 3;
    v55 = [a1 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v55)
    {
      sub_25C4C87E0();
      swift_unknownObjectRelease();
    }

    else
    {
      v103 = 0u;
      v104 = 0u;
    }

    v56 = v99;
    v105 = v103;
    v106 = v104;
    v57 = v97;
    if (*(&v104 + 1))
    {
      if (swift_dynamicCast())
      {
        v58 = v101;
        v59 = v102;
        if (qword_27FC0B970 != -1)
        {
          swift_once();
        }

        v60 = sub_25C4C7BD0();
        __swift_project_value_buffer(v60, qword_27FC0B978);
        v61 = v92;
        v93(v92, v56, v7);
        v62 = v96;

        v63 = sub_25C4C7BB0();
        v64 = sub_25C4C8720();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          *&v105 = v98;
          *v65 = 136315394;

          v66 = sub_25C458990(v91, v62, &v105);
          LODWORD(v97) = v64;
          v67 = v66;

          *(v65 + 4) = v67;
          *(v65 + 12) = 2080;
          sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v68 = sub_25C4C89A0();
          v69 = v7;
          v71 = v70;
          v72 = *(v100 + 8);
          v73 = v61;
          v74 = v69;
          v72(v73, v69);
          v75 = sub_25C458990(v68, v71, &v105);

          *(v65 + 14) = v75;
          _os_log_impl(&dword_25C452000, v63, v97, "Received response: requestName=%s, requestUUID=%s", v65, 0x16u);
          v76 = v98;
          swift_arrayDestroy();
          MEMORY[0x25F888630](v76, -1, -1);
          v77 = v65;
          v56 = v99;
          MEMORY[0x25F888630](v77, -1, -1);

          v50 = v72;
          v7 = v74;
        }

        else
        {

          v50 = *(v100 + 8);
          v50(v61, v7);
        }

        sub_25C459FB0(v58, v59);
        v94(v58, v59, 0);
        sub_25C45A004(v58, v59);

        sub_25C45A004(v58, v59);
        return (v50)(v56, v7);
      }
    }

    else
    {
      sub_25C4666F8(&v105, &unk_27FC0AA20, &unk_25C4CAD40);
    }

    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v78 = sub_25C4C7BD0();
    __swift_project_value_buffer(v78, qword_27FC0B978);
    v93(v57, v56, v7);
    v79 = sub_25C4C7BB0();
    v80 = sub_25C4C8710();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *&v105 = v82;
      *v81 = 136315138;
      sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v83 = sub_25C4C89A0();
      v85 = v84;
      v98 = v7;
      v86 = *(v100 + 8);
      v86(v57, v98);
      v87 = sub_25C458990(v83, v85, &v105);

      *(v81 + 4) = v87;
      _os_log_impl(&dword_25C452000, v79, v80, "### No response data: requestUUID=%s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v82);
      v56 = v99;
      MEMORY[0x25F888630](v82, -1, -1);
      MEMORY[0x25F888630](v81, -1, -1);

      v50 = v86;
      v7 = v98;
    }

    else
    {

      v50 = *(v100 + 8);
      v50(v57, v7);
    }

    v88 = objc_allocWithZone(sub_25C4C7B80());
    v89 = sub_25C4C7B90();
    v94(v89, 0, 1);

    return (v50)(v56, v7);
  }

  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v33 = sub_25C4C7BD0();
  __swift_project_value_buffer(v33, qword_27FC0B978);
  v34 = v98;
  v93(v98, v99, v7);
  v35 = v32;
  v36 = sub_25C4C7BB0();
  v37 = sub_25C4C8710();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *&v105 = v97;
    *v38 = 136315394;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    LODWORD(v93) = v37;
    v39 = sub_25C4C89A0();
    v40 = v34;
    v42 = v41;
    v43 = *(v100 + 8);
    v43(v40, v7);
    v44 = sub_25C458990(v39, v42, &v105);

    *(v38 + 4) = v44;
    *(v38 + 12) = 2080;
    swift_getErrorValue();
    v45 = sub_25C4C8A30();
    v47 = sub_25C458990(v45, v46, &v105);

    *(v38 + 14) = v47;
    _os_log_impl(&dword_25C452000, v36, v93, "### Response error: requestUUID=%s, error=%s", v38, 0x16u);
    v48 = v97;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v48, -1, -1);
    v49 = v38;
    v50 = v43;
    MEMORY[0x25F888630](v49, -1, -1);
  }

  else
  {

    v50 = *(v100 + 8);
    v50(v34, v7);
  }

  v90 = v35;
  v94(v32, 0, 1);

  v56 = v99;
  return (v50)(v56, v7);
}

char *sub_25C4AB4CC(void *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  v74 = a4;
  v75 = a6;
  v70 = a3;
  v71 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v73 = *(v71 - 8);
  v8 = MEMORY[0x28223BE20](v71);
  v72 = &v61[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v61[-v10];
  v12 = sub_25C4C7B20();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v61[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v61[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v61[-v20];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    if (a1)
    {
      v66 = v11;
      v67 = v16;
      v69 = a5;
      v24 = *(v13 + 16);
      v68 = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v25 = v70;
      v24(v21, v70, v12);
      swift_beginAccess();
      v26 = a1;
      sub_25C495840(0, v21);
      swift_endAccess();
      if (qword_27FC0B970 != -1)
      {
        swift_once();
      }

      v27 = sub_25C4C7BD0();
      __swift_project_value_buffer(v27, qword_27FC0B978);
      v24(v19, v25, v12);
      v28 = v67;
      v24(v67, v75, v12);
      v29 = a1;
      a5 = v69;

      v30 = sub_25C4C7BB0();
      v31 = sub_25C4C8710();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v65 = v24;
        v33 = v28;
        v34 = v32;
        v64 = swift_slowAlloc();
        v76[0] = v64;
        *v34 = 136315906;
        *(v34 + 4) = sub_25C458990(v74, a5, v76);
        *(v34 + 12) = 2080;
        sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v63 = v30;
        v62 = v31;
        v35 = sub_25C4C89A0();
        v37 = v36;
        v70 = a1;
        v38 = *(v13 + 8);
        v38(v19, v12);
        v39 = sub_25C458990(v35, v37, v76);

        *(v34 + 14) = v39;
        *(v34 + 22) = 2080;
        v40 = sub_25C4C89A0();
        v42 = v41;
        v38(v33, v12);
        a1 = v70;
        v43 = sub_25C458990(v40, v42, v76);
        a5 = v69;

        *(v34 + 24) = v43;
        *(v34 + 32) = 2080;
        swift_getErrorValue();
        v44 = sub_25C4C8A30();
        v46 = sub_25C458990(v44, v45, v76);

        *(v34 + 34) = v46;
        v47 = v63;
        _os_log_impl(&dword_25C452000, v63, v62, "### Received operation start completion failed: operationName=%s, operationUUID=%s, itemUUID=%s, error=%s", v34, 0x2Au);
        v48 = v64;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v48, -1, -1);
        v24 = v65;
        MEMORY[0x25F888630](v34, -1, -1);
      }

      else
      {

        v49 = *(v13 + 8);
        v49(v28, v12);
        v49(v19, v12);
      }

      v11 = v66;
    }

    else
    {
      v24 = *(v13 + 16);
    }

    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8F8, &qword_25C4CAC88);
    v51 = *(v50 + 48);
    v52 = *(v50 + 64);
    v53 = v75;
    *v11 = v74;
    v11[1] = a5;
    v24(v11 + v51, v53, v12);
    *(v11 + v52) = a1;
    swift_storeEnumTagMultiPayload();
    v54 = v72;
    sub_25C4BACD0(v11, v72, type metadata accessor for NXSessionDaemon.SendItem);
    v55 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
    swift_beginAccess();
    v56 = *&v23[v55];
    v57 = a1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v23[v55] = v56;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v56 = sub_25C4B480C(0, v56[2] + 1, 1, v56);
      *&v23[v55] = v56;
    }

    v60 = v56[2];
    v59 = v56[3];
    if (v60 >= v59 >> 1)
    {
      v56 = sub_25C4B480C((v59 > 1), v60 + 1, 1, v56);
    }

    v56[2] = v60 + 1;
    sub_25C4BB0E8(v54, v56 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v60, type metadata accessor for NXSessionDaemon.SendItem);
    *&v23[v55] = v56;
    swift_endAccess();
    sub_25C49CF5C();

    return sub_25C4BAF14(v11, type metadata accessor for NXSessionDaemon.SendItem);
  }

  return result;
}

char *sub_25C4ABB94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  v6 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v66 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v65 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v68 = &v56 - v9;
  v10 = sub_25C4C7B20();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v56 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v56 - v18;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    v64 = v6;
    if (a1)
    {
      v62 = v14;
      v22 = a3;
      v23 = *(v11 + 16);
      v63 = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v23(v19, v22, v10);
      swift_beginAccess();
      v24 = a1;
      sub_25C495840(0, v19);
      swift_endAccess();
      if (qword_27FC0B970 != -1)
      {
        swift_once();
      }

      v25 = sub_25C4C7BD0();
      __swift_project_value_buffer(v25, qword_27FC0B978);
      v23(v17, v22, v10);
      v26 = v62;
      v23(v62, v67, v10);
      v27 = a1;
      v28 = sub_25C4C7BB0();
      v29 = sub_25C4C8710();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v60 = v23;
        v58 = v29;
        v31 = v30;
        v59 = swift_slowAlloc();
        v69[0] = v59;
        *v31 = 136315650;
        sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v61 = a1;
        v57 = v28;
        v32 = sub_25C4C89A0();
        v34 = v33;
        v35 = *(v11 + 8);
        v35(v17, v10);
        v36 = sub_25C458990(v32, v34, v69);

        *(v31 + 4) = v36;
        *(v31 + 12) = 2080;
        a1 = v61;
        v37 = sub_25C4C89A0();
        v39 = v38;
        v35(v26, v10);
        v40 = sub_25C458990(v37, v39, v69);

        *(v31 + 14) = v40;
        *(v31 + 22) = 2080;
        swift_getErrorValue();
        v41 = sub_25C4C8A30();
        v43 = sub_25C458990(v41, v42, v69);

        *(v31 + 24) = v43;
        v44 = v57;
        _os_log_impl(&dword_25C452000, v57, v58, "### Received operation update completion failed: operationUUID=%s, itemUUID=%s, error=%s", v31, 0x20u);
        v45 = v59;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v45, -1, -1);
        v23 = v60;
        MEMORY[0x25F888630](v31, -1, -1);
      }

      else
      {

        v47 = *(v11 + 8);
        v47(v26, v10);
        v47(v17, v10);
      }

      v46 = v65;
    }

    else
    {
      v23 = *(v11 + 16);
      v46 = v65;
    }

    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8F0, &qword_25C4CAC80) + 48);
    v49 = v68;
    v23(v68, v67, v10);
    *(v49 + v48) = a1;
    swift_storeEnumTagMultiPayload();
    sub_25C4BACD0(v49, v46, type metadata accessor for NXSessionDaemon.SendItem);
    v50 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
    swift_beginAccess();
    v51 = *&v21[v50];
    v52 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v21[v50] = v51;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v51 = sub_25C4B480C(0, v51[2] + 1, 1, v51);
      *&v21[v50] = v51;
    }

    v55 = v51[2];
    v54 = v51[3];
    if (v55 >= v54 >> 1)
    {
      v51 = sub_25C4B480C((v54 > 1), v55 + 1, 1, v51);
    }

    v51[2] = v55 + 1;
    sub_25C4BB0E8(v46, v51 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v55, type metadata accessor for NXSessionDaemon.SendItem);
    *&v21[v50] = v51;
    swift_endAccess();
    sub_25C49CF5C();

    return sub_25C4BAF14(v68, type metadata accessor for NXSessionDaemon.SendItem);
  }

  return result;
}

char *sub_25C4AC210(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v6 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = sub_25C4C7B20();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v27 = v7;
    v19 = *(v14 + 16);
    v19(v16, a3, v13);
    swift_beginAccess();
    sub_25C495840(0, v16);
    swift_endAccess();
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8F0, &qword_25C4CAC80) + 48);
    v19(v12, v28, v13);
    *&v12[v20] = a1;
    swift_storeEnumTagMultiPayload();
    sub_25C4BACD0(v12, v10, type metadata accessor for NXSessionDaemon.SendItem);
    v21 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
    swift_beginAccess();
    v22 = *&v18[v21];
    v23 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v18[v21] = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_25C4B480C(0, v22[2] + 1, 1, v22);
      *&v18[v21] = v22;
    }

    v26 = v22[2];
    v25 = v22[3];
    if (v26 >= v25 >> 1)
    {
      v22 = sub_25C4B480C((v25 > 1), v26 + 1, 1, v22);
    }

    v22[2] = v26 + 1;
    sub_25C4BB0E8(v10, v22 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v26, type metadata accessor for NXSessionDaemon.SendItem);
    *&v18[v21] = v22;
    swift_endAccess();
    sub_25C49CF5C();

    return sub_25C4BAF14(v12, type metadata accessor for NXSessionDaemon.SendItem);
  }

  return result;
}

char *sub_25C4AC540(void *a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a7;
  v12 = type metadata accessor for NXSessionDaemon.SendItem(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (&v32 - v17);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    v32 = v13;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A8E8, &qword_25C4CAC78);
    v22 = *(v21 + 48);
    v23 = a5;
    v24 = a3;
    v25 = v18 + *(v21 + 64);
    *v18 = v23;
    v18[1] = a6;
    v26 = sub_25C4C7B20();
    (*(*(v26 - 8) + 16))(v18 + v22, v33, v26);
    *v25 = a1;
    *(v25 + 1) = a2;
    v24 &= 1u;
    v25[16] = v24;
    swift_storeEnumTagMultiPayload();
    sub_25C4BACD0(v18, v16, type metadata accessor for NXSessionDaemon.SendItem);
    v27 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue;
    swift_beginAccess();
    v28 = *&v20[v27];

    sub_25C4BD0C8(a1, a2, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v20[v27] = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_25C4B480C(0, v28[2] + 1, 1, v28);
      *&v20[v27] = v28;
    }

    v31 = v28[2];
    v30 = v28[3];
    if (v31 >= v30 >> 1)
    {
      v28 = sub_25C4B480C((v30 > 1), v31 + 1, 1, v28);
    }

    v28[2] = v31 + 1;
    sub_25C4BB0E8(v16, v28 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31, type metadata accessor for NXSessionDaemon.SendItem);
    *&v20[v27] = v28;
    swift_endAccess();
    sub_25C49CF5C();

    return sub_25C4BAF14(v18, type metadata accessor for NXSessionDaemon.SendItem);
  }

  return result;
}

uint64_t sub_25C4AC804(uint64_t a1, unint64_t a2, _BYTE *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v104 = a7;
  v102 = a6;
  v94 = a5;
  v91 = a4;
  v108 = a2;
  v109 = a3;
  v105 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A900, &qword_25C4CAC90);
  MEMORY[0x28223BE20](v9 - 8);
  v107 = &v87[-v10];
  v11 = type metadata accessor for NXSessionDaemon.OperationItem(0);
  v106 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v13 = &v87[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_25C4C7B20();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v101 = &v87[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v93 = &v87[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v92 = &v87[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v87[-v23];
  v96 = v25;
  MEMORY[0x28223BE20](v22);
  v27 = &v87[-v26];
  CUNextID64();
  sub_25C4C7B00();
  v97 = v15;
  v28 = *(v15 + 16);
  v28(v13, v27, v14);
  v28((v13 + v11[6]), v109, v14);
  v29 = (v13 + v11[5]);
  v30 = v105;
  *v29 = v105;
  v29[1] = a2;
  v31 = (v13 + v11[7]);
  v32 = v104;
  *v31 = v102;
  v31[1] = v32;
  v28(v24, v27, v14);
  v98 = v13;
  v33 = v13;
  v34 = v107;
  sub_25C4BACD0(v33, v107, type metadata accessor for NXSessionDaemon.OperationItem);
  (*(v106 + 56))(v34, 0, 1, v11);
  swift_beginAccess();
  v35 = v15 + 16;

  v36 = v108;

  v103 = v7;
  v95 = v24;
  sub_25C495328(v107, v24);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A908, &qword_25C4CAC98);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_25C4CA7D0;
  v38 = MEMORY[0x277D83B88];
  *(v37 + 32) = 1;
  *(v37 + 56) = v38;
  *(v37 + 64) = 4;
  *(v37 + 120) = v38;
  *(v37 + 88) = v38;
  *(v37 + 96) = 4;
  *(v37 + 152) = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v37 + 128));
  v107 = v27;
  v28(boxed_opaque_existential_1, v27, v14);
  *(v37 + 160) = 2;
  v40 = MEMORY[0x277D837D0];
  *(v37 + 184) = v38;
  *(v37 + 192) = v30;
  *(v37 + 200) = v36;
  *(v37 + 248) = v38;
  *(v37 + 216) = v40;
  *(v37 + 224) = 5;
  *(v37 + 280) = v14;
  v41 = __swift_allocate_boxed_opaque_existential_1((v37 + 256));
  v106 = v14;
  v99 = v35;
  v100 = v28;
  v28(v41, v109, v14);
  *(v37 + 288) = 3;
  *(v37 + 344) = MEMORY[0x277CC9318];
  v42 = v91;
  *(v37 + 312) = v38;
  *(v37 + 320) = v42;
  v43 = v94;
  *(v37 + 328) = v94;
  sub_25C4BC77C(0, &unk_27FC0A910, 0x277CBEAC0);

  sub_25C459FB0(v42, v43);
  v94 = sub_25C4C8660();
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v44 = sub_25C4C7BD0();
  __swift_project_value_buffer(v44, qword_27FC0B978);
  v45 = v92;
  v46 = v106;
  v47 = v100;
  v100(v92, v109, v106);
  v48 = v93;
  v47(v93, v107, v46);

  v49 = sub_25C4C7BB0();
  v50 = sub_25C4C86F0();

  v51 = v45;
  if (os_log_type_enabled(v49, v50))
  {
    v52 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v110[0] = v90;
    *v52 = 136315650;
    v89 = v49;
    *(v52 + 4) = sub_25C458990(v105, v108, v110);
    *(v52 + 12) = 2080;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v88 = v50;
    v53 = v106;
    v54 = sub_25C4C89A0();
    v56 = v55;
    v57 = v97;
    v58 = *(v97 + 8);
    v91 = (v97 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v58)(v51, v53);
    v59 = sub_25C458990(v54, v56, v110);

    *(v52 + 14) = v59;
    *(v52 + 22) = 2080;
    v60 = sub_25C4C89A0();
    v62 = v61;
    v93 = v58;
    (v58)(v48, v53);
    v63 = v57;
    v64 = sub_25C458990(v60, v62, v110);

    *(v52 + 24) = v64;
    v65 = v89;
    _os_log_impl(&dword_25C452000, v89, v88, "Send operation start: operationName=%s, operationUUID=%s, itemUUID=%s", v52, 0x20u);
    v66 = v90;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v66, -1, -1);
    MEMORY[0x25F888630](v52, -1, -1);
  }

  else
  {

    v63 = v97;
    v67 = *(v97 + 8);
    v91 = (v97 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v68 = v106;
    (v67)(v48, v106);
    v93 = v67;
    (v67)(v45, v68);
  }

  v69 = v105;
  v105 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = v95;
  v71 = v106;
  v72 = v100;
  v100(v95, v109, v106);
  v72(v101, v107, v71);
  v73 = *(v63 + 80);
  v74 = (v73 + 32) & ~v73;
  v75 = (v96 + v73 + v74) & ~v73;
  v76 = (v96 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = v71;
  v78 = swift_allocObject();
  v79 = v108;
  *(v78 + 16) = v69;
  *(v78 + 24) = v79;
  v80 = *(v63 + 32);
  v81 = v70;
  v82 = v77;
  v80(v78 + v74, v81, v77);
  v80(v78 + v75, v101, v77);
  v83 = v104;
  *(v78 + v76) = v105;
  v84 = (v78 + ((v76 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v84 = v102;
  v84[1] = v83;

  v85 = v94;
  sub_25C4AFFC4(v94, sub_25C4BAE54, v78);

  sub_25C4BAF14(v98, type metadata accessor for NXSessionDaemon.OperationItem);
  (v93)(v107, v82);
}

void sub_25C4AD104(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v38 = a1;
  v7 = sub_25C4C7B20();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v36 = v10;
  v37 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v35 = &v32 - v11;
  v12 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v13 = sub_25C4C8650();
  v40 = 1;
  [v12 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v39 = a3;
  v14 = sub_25C4C7B10();
  v40 = 4;
  [v12 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  if (a4)
  {
    v15 = a4;
    v16 = sub_25C4C7A80();
    CUEncodeNSErrorDictionaryStd(v16, v12);
  }

  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v17 = sub_25C4C7BD0();
  __swift_project_value_buffer(v17, qword_27FC0B978);
  v18 = v35;
  v34 = *(v8 + 16);
  v34(v35, v39, v7);

  v19 = sub_25C4C7BB0();
  v20 = sub_25C4C86F0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v40 = v33;
    *v21 = 136315394;
    *(v21 + 4) = sub_25C458990(v38, a2, &v40);
    *(v21 + 12) = 2080;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v22 = sub_25C4C89A0();
    v23 = v18;
    v24 = a2;
    v26 = v25;
    (*(v8 + 8))(v23, v7);
    v27 = sub_25C458990(v22, v26, &v40);
    a2 = v24;

    *(v21 + 14) = v27;
    _os_log_impl(&dword_25C452000, v19, v20, "Send operation start response: operationName=%s, itemUUID=%s", v21, 0x16u);
    v28 = v33;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v28, -1, -1);
    MEMORY[0x25F888630](v21, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v18, v7);
  }

  v29 = v37;
  v34(v37, v39, v7);
  v30 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v38;
  *(v31 + 24) = a2;
  (*(v8 + 32))(v31 + v30, v29, v7);

  sub_25C4AFFC4(v12, sub_25C4BB1B8, v31);
}

uint64_t sub_25C4AD580(_BYTE *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v95 = a4;
  v96 = a5;
  v94 = a3;
  v88 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A900, &qword_25C4CAC90);
  MEMORY[0x28223BE20](v7 - 8);
  v89 = &v79[-v8];
  v9 = type metadata accessor for NXSessionDaemon.OperationItem(0);
  v97 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v11 = &v79[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_25C4C7B20();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v91 = &v79[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v87 = &v79[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v86 = &v79[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v79[-v21];
  v90 = v23;
  MEMORY[0x28223BE20](v20);
  v25 = &v79[-v24];
  CUNextID64();
  sub_25C4C7B00();
  v92 = v13;
  v26 = *(v13 + 16);
  v26(v11, v25, v12);
  v26((v11 + v9[6]), a1, v12);
  v27 = (v11 + v9[5]);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v11 + v9[7]);
  v29 = v96;
  *v28 = v95;
  v28[1] = v29;
  v26(v22, v25, v12);
  v93 = v11;
  v30 = v11;
  v31 = v25;
  v32 = v12;
  v33 = v89;
  sub_25C4BACD0(v30, v89, type metadata accessor for NXSessionDaemon.OperationItem);
  (*(v97 + 56))(v33, 0, 1, v9);
  swift_beginAccess();

  v97 = v5;
  v89 = v22;
  sub_25C495328(v33, v22);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A908, &qword_25C4CAC98);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_25C4CA7E0;
  v35 = MEMORY[0x277D83B88];
  *(v34 + 32) = 1;
  *(v34 + 56) = v35;
  *(v34 + 64) = 6;
  *(v34 + 120) = v35;
  *(v34 + 88) = v35;
  *(v34 + 96) = 4;
  *(v34 + 152) = v32;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v34 + 128));
  v26(boxed_opaque_existential_1, v31, v32);
  *(v34 + 184) = v35;
  *(v34 + 160) = 5;
  *(v34 + 216) = v32;
  v37 = __swift_allocate_boxed_opaque_existential_1((v34 + 192));
  v26(v37, a1, v32);
  *(v34 + 224) = 3;
  *(v34 + 280) = MEMORY[0x277CC9318];
  v38 = v88;
  *(v34 + 248) = v35;
  *(v34 + 256) = v38;
  v39 = v94;
  *(v34 + 264) = v94;
  sub_25C4BC77C(0, &unk_27FC0A910, 0x277CBEAC0);
  sub_25C459FB0(v38, v39);
  v88 = sub_25C4C8660();
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v40 = sub_25C4C7BD0();
  __swift_project_value_buffer(v40, qword_27FC0B978);
  v41 = v86;
  v26(v86, a1, v32);
  v42 = v87;
  v94 = v31;
  v26(v87, v31, v32);
  v43 = sub_25C4C7BB0();
  v44 = sub_25C4C86F0();
  v45 = v42;
  if (os_log_type_enabled(v43, v44))
  {
    v46 = swift_slowAlloc();
    v84 = v26;
    v47 = v46;
    v82 = swift_slowAlloc();
    v98[0] = v82;
    *v47 = 136315394;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v81 = v43;
    v48 = v42;
    v49 = sub_25C4C89A0();
    v83 = a1;
    v51 = v50;
    v52 = v41;
    v53 = v32;
    v54 = v92;
    v80 = v44;
    v55 = *(v92 + 8);
    v85 = (v92 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v55)(v52, v53);
    v56 = sub_25C458990(v49, v51, v98);
    a1 = v83;

    *(v47 + 4) = v56;
    *(v47 + 12) = 2080;
    v57 = sub_25C4C89A0();
    v59 = v58;
    v87 = v55;
    (v55)(v48, v53);
    v60 = v54;
    v32 = v53;
    v61 = sub_25C458990(v57, v59, v98);

    *(v47 + 14) = v61;
    v62 = v81;
    _os_log_impl(&dword_25C452000, v81, v80, "Send operation update: operationUUID=%s, itemUUID=%s", v47, 0x16u);
    v63 = v82;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v63, -1, -1);
    v64 = v47;
    v26 = v84;
    MEMORY[0x25F888630](v64, -1, -1);
  }

  else
  {

    v60 = v92;
    v65 = *(v92 + 8);
    v85 = (v92 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v65)(v45, v32);
    v87 = v65;
    (v65)(v41, v32);
  }

  v92 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v66 = v89;
  v26(v89, a1, v32);
  v67 = v91;
  v26(v91, v94, v32);
  v68 = *(v60 + 80);
  v69 = (v68 + 16) & ~v68;
  v70 = v32;
  v71 = (v90 + v68 + v69) & ~v68;
  v72 = (v90 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  v74 = *(v60 + 32);
  v74(v73 + v69, v66, v70);
  v74(v73 + v71, v67, v70);
  *(v73 + v72) = v92;
  v75 = (v73 + ((v72 + 15) & 0xFFFFFFFFFFFFFFF8));
  v76 = v96;
  *v75 = v95;
  v75[1] = v76;

  v77 = v88;
  sub_25C4AFFC4(v88, sub_25C4BB244, v73);

  sub_25C4BAF14(v93, type metadata accessor for NXSessionDaemon.OperationItem);
  (v87)(v94, v70);
}

uint64_t sub_25C4ADDDC(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v93 = a2;
  v94 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A900, &qword_25C4CAC90);
  MEMORY[0x28223BE20](v5 - 8);
  v96 = &v78[-v6];
  v7 = type metadata accessor for NXSessionDaemon.OperationItem(0);
  v95 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v9 = &v78[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_25C4C7B20();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v90 = &v78[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v86 = &v78[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v85 = &v78[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v78[-v19];
  v89 = v21;
  MEMORY[0x28223BE20](v18);
  v23 = &v78[-v22];
  CUNextID64();
  sub_25C4C7B00();
  v92 = v11;
  v24 = *(v11 + 16);
  v25 = v10;
  v24(v9, v23, v10);
  v26 = &v9[v7[6]];
  v27 = a1;
  v83 = v25;
  v24(v26, a1, v25);
  v28 = &v9[v7[5]];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v9[v7[7]];
  v30 = v94;
  *v29 = v93;
  v29[1] = v30;
  v24(v20, v23, v25);
  v91 = v9;
  v31 = v9;
  v32 = v96;
  sub_25C4BACD0(v31, v96, type metadata accessor for NXSessionDaemon.OperationItem);
  (*(v95 + 56))(v32, 0, 1, v7);
  swift_beginAccess();

  v95 = v3;
  v33 = v24;
  v88 = v20;
  v34 = v20;
  v35 = v83;
  sub_25C495328(v32, v34);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A908, &qword_25C4CAC98);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_25C4CA7F0;
  v37 = MEMORY[0x277D83B88];
  *(v36 + 32) = 1;
  *(v36 + 56) = v37;
  *(v36 + 64) = 8;
  *(v36 + 120) = v37;
  *(v36 + 88) = v37;
  *(v36 + 96) = 4;
  *(v36 + 152) = v35;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v36 + 128));
  v96 = v23;
  v24(boxed_opaque_existential_1, v23, v35);
  *(v36 + 184) = v37;
  *(v36 + 160) = 5;
  *(v36 + 216) = v35;
  v39 = __swift_allocate_boxed_opaque_existential_1((v36 + 192));
  v40 = v27;
  v41 = v24;
  v24(v39, v27, v35);
  sub_25C4BC77C(0, &unk_27FC0A910, 0x277CBEAC0);
  v87 = sub_25C4C8660();
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v42 = sub_25C4C7BD0();
  __swift_project_value_buffer(v42, qword_27FC0B978);
  v43 = v85;
  v33(v85, v27, v35);
  v44 = v86;
  v41(v86, v96, v35);
  v45 = sub_25C4C7BB0();
  v46 = sub_25C4C86F0();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v80 = v45;
    v48 = v47;
    v81 = swift_slowAlloc();
    v97[0] = v81;
    *v48 = 136315394;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v82 = v27;
    v79 = v46;
    v49 = sub_25C4C89A0();
    v50 = v43;
    v51 = v41;
    v53 = v52;
    v54 = *(v92 + 8);
    v84 = (v92 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v54)(v50, v35);
    v55 = sub_25C458990(v49, v53, v97);
    v41 = v51;

    *(v48 + 4) = v55;
    *(v48 + 12) = 2080;
    v56 = sub_25C4C89A0();
    v58 = v57;
    v86 = v54;
    (v54)(v44, v35);
    v59 = sub_25C458990(v56, v58, v97);
    v40 = v82;

    *(v48 + 14) = v59;
    v60 = v92;
    v61 = v80;
    _os_log_impl(&dword_25C452000, v80, v79, "Send operation cancel: operationUUID=%s, itemUUID=%s", v48, 0x16u);
    v62 = v81;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v62, -1, -1);
    MEMORY[0x25F888630](v48, -1, -1);
  }

  else
  {

    v60 = v92;
    v63 = *(v92 + 8);
    v84 = (v92 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v63)(v44, v35);
    v86 = v63;
    (v63)(v43, v35);
  }

  v92 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v64 = v88;
  v41(v88, v40, v35);
  v65 = v90;
  v41(v90, v96, v35);
  v66 = *(v60 + 80);
  v67 = (v66 + 16) & ~v66;
  v68 = (v89 + v66 + v67) & ~v66;
  v69 = (v89 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v71 = v35;
  v72 = *(v60 + 32);
  v72(v70 + v67, v64, v71);
  v72(v70 + v68, v65, v71);
  v73 = v93;
  *(v70 + v69) = v92;
  v74 = (v70 + ((v69 + 15) & 0xFFFFFFFFFFFFFFF8));
  v75 = v94;
  *v74 = v73;
  v74[1] = v75;

  v76 = v87;
  sub_25C4AFFC4(v87, sub_25C4BB344, v70);

  sub_25C4BAF14(v91, type metadata accessor for NXSessionDaemon.OperationItem);
  (v86)(v96, v71);
}

void sub_25C4AE604(uint64_t a1, void *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v38 = a6;
  v39 = a5;
  v34 = a4;
  v8 = sub_25C4C7B20();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v36 = v11;
  v37 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v14 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v15 = sub_25C4C8650();
  v41 = 1;
  [v14 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v40 = a1;
  v16 = sub_25C4C7B10();
  v41 = 4;
  [v14 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  if (a2)
  {
    v17 = a2;
    v18 = sub_25C4C7A80();
    CUEncodeNSErrorDictionaryStd(v18, v14);
  }

  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v19 = sub_25C4C7BD0();
  __swift_project_value_buffer(v19, qword_27FC0B978);
  v20 = v13;
  v35 = *(v9 + 16);
  v35(v13, v40, v8);
  v21 = sub_25C4C7BB0();
  v22 = sub_25C4C86F0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v41 = v33;
    *v23 = 136315138;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v24 = sub_25C4C89A0();
    v25 = v14;
    v27 = v26;
    (*(v9 + 8))(v20, v8);
    v28 = sub_25C458990(v24, v27, &v41);
    v14 = v25;

    *(v23 + 4) = v28;
    _os_log_impl(&dword_25C452000, v21, v22, v34, v23, 0xCu);
    v29 = v33;
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x25F888630](v29, -1, -1);
    MEMORY[0x25F888630](v23, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }

  v30 = v37;
  v35(v37, v40, v8);
  v31 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v32 = swift_allocObject();
  (*(v9 + 32))(v32 + v31, v30, v8);
  sub_25C4AFFC4(v14, v38, v32);
}

void sub_25C4AEA24(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a4;
  v43 = a5;
  v8 = sub_25C4C7B20();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v42 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A908, &qword_25C4CAC98);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25C4CA7F0;
  v15 = MEMORY[0x277D83B88];
  *(v14 + 32) = 1;
  *(v14 + 56) = v15;
  *(v14 + 64) = 11;
  *(v14 + 120) = v15;
  *(v14 + 88) = v15;
  *(v14 + 96) = 5;
  *(v14 + 152) = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v14 + 128));
  v17 = *(v9 + 16);
  v17(boxed_opaque_existential_1, a1, v8);
  *(v14 + 160) = 3;
  *(v14 + 216) = MEMORY[0x277CC9318];
  *(v14 + 184) = v15;
  *(v14 + 192) = a2;
  *(v14 + 200) = a3;
  sub_25C4BC77C(0, &unk_27FC0A910, 0x277CBEAC0);
  sub_25C459FB0(a2, a3);
  v39 = sub_25C4C8660();
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v18 = sub_25C4C7BD0();
  __swift_project_value_buffer(v18, qword_27FC0B978);
  v38 = a1;
  v17(v13, a1, v8);
  v19 = sub_25C4C7BB0();
  v20 = sub_25C4C86F0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = v13;
    v22 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v44 = v37;
    *v22 = 136315138;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v23 = sub_25C4C89A0();
    v24 = v17;
    v26 = v25;
    (*(v9 + 8))(v21, v8);
    v27 = sub_25C458990(v23, v26, &v44);
    v17 = v24;

    *(v22 + 4) = v27;
    _os_log_impl(&dword_25C452000, v19, v20, "Send operation provider event: operationUUID=%s", v22, 0xCu);
    v28 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x25F888630](v28, -1, -1);
    MEMORY[0x25F888630](v22, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }

  v29 = v42;
  v17(v42, v38, v8);
  v30 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v31 = (v40 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  (*(v9 + 32))(v32 + v30, v29, v8);
  v33 = (v32 + v31);
  v34 = v43;
  *v33 = v41;
  v33[1] = v34;

  v35 = v39;
  sub_25C4AFFC4(v39, sub_25C4BB81C, v32);
}

uint64_t sub_25C4AEE60(uint64_t a1, unint64_t a2, void (*a3)(_BYTE *, _BYTE *, uint64_t), void *a4, uint64_t a5, uint64_t a6)
{
  v65 = a3;
  v66 = a4;
  v11 = sub_25C4C7B20();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v68 = &v59[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v64 = &v59[-v16];
  v67 = v17;
  MEMORY[0x28223BE20](v15);
  v19 = &v59[-v18];
  CUNextID64();
  sub_25C4C7B00();
  v20 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingRequests;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = *(v6 + v20);
  *(v6 + v20) = 0x8000000000000000;
  v70 = a6;
  v71 = a5;
  v22 = a6;
  v23 = a1;
  sub_25C4B6794(a1, a2, a5, v22, v19, isUniquelyReferenced_nonNull_native);
  v72 = v6;
  *(v6 + v20) = v74;
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A908, &qword_25C4CAC98);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_25C4CA7E0;
  v25 = MEMORY[0x277D83B88];
  *(v24 + 32) = 1;
  *(v24 + 56) = v25;
  *(v24 + 64) = 2;
  *(v24 + 88) = v25;
  *(v24 + 96) = 2;
  v26 = MEMORY[0x277D837D0];
  *(v24 + 120) = v25;
  *(v24 + 128) = a1;
  *(v24 + 136) = a2;
  *(v24 + 184) = v25;
  *(v24 + 152) = v26;
  *(v24 + 160) = 4;
  *(v24 + 216) = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v24 + 192));
  v69 = v12;
  v28 = *(v12 + 16);
  v73 = v19;
  v28(boxed_opaque_existential_1, v19, v11);
  *(v24 + 224) = 3;
  *(v24 + 280) = MEMORY[0x277CC9318];
  *(v24 + 248) = v25;
  v29 = a2;
  v31 = v65;
  v30 = v66;
  *(v24 + 256) = v65;
  *(v24 + 264) = v30;
  sub_25C4BC77C(0, &unk_27FC0A910, 0x277CBEAC0);

  sub_25C459FB0(v31, v30);
  v66 = sub_25C4C8660();
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v32 = sub_25C4C7BD0();
  __swift_project_value_buffer(v32, qword_27FC0B978);
  v33 = v64;
  v65 = v28;
  v28(v64, v73, v11);

  v34 = sub_25C4C7BB0();
  v35 = sub_25C4C86F0();

  v36 = os_log_type_enabled(v34, v35);
  v37 = v33;
  v62 = v29;
  if (v36)
  {
    v38 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v75[0] = v61;
    *v38 = 136315394;
    *(v38 + 4) = sub_25C458990(v23, v29, v75);
    *(v38 + 12) = 2080;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v39 = v33;
    v40 = sub_25C4C89A0();
    v60 = v35;
    v41 = v23;
    v43 = v42;
    v44 = v69;
    v45 = *(v69 + 8);
    v63 = (v69 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v64 = v45;
    v46 = v11;
    (v45)(v39, v11);
    v47 = sub_25C458990(v40, v43, v75);
    v23 = v41;

    *(v38 + 14) = v47;
    _os_log_impl(&dword_25C452000, v34, v60, "Send request: requestName=%s, requestUUID=%s", v38, 0x16u);
    v48 = v61;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v48, -1, -1);
    MEMORY[0x25F888630](v38, -1, -1);
  }

  else
  {

    v44 = v69;
    v49 = *(v69 + 8);
    v63 = (v69 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v64 = v49;
    (v49)(v37, v11);
    v46 = v11;
  }

  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = v68;
  v65(v68, v73, v46);
  v52 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v53 = (v67 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  *(v54 + 16) = v23;
  *(v54 + 24) = v62;
  (*(v44 + 32))(v54 + v52, v51, v46);
  *(v54 + v53) = v50;
  v55 = (v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8));
  v56 = v70;
  *v55 = v71;
  v55[1] = v56;

  v57 = v66;
  sub_25C4AFFC4(v66, sub_25C4BB9B0, v54);

  (v64)(v73, v46);
}

void sub_25C4AF490(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v39 = a1;
  v42 = a2;
  v8 = sub_25C4C7B20();
  v41 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v37 = v10;
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v36 = &v35 - v11;
  v12 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v13 = sub_25C4C8650();
  v43 = 1;
  [v12 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v40 = a3;
  v14 = sub_25C4C7B10();
  v43 = 4;
  [v12 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  if (a6)
  {
    v15 = sub_25C4C7A80();
    CUEncodeNSErrorDictionaryStd(v15, v12);
  }

  else
  {
    v16 = sub_25C4C7AE0();
    v43 = 3;
    [v12 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
  }

  v17 = v41;
  v18 = v36;
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v19 = sub_25C4C7BD0();
  __swift_project_value_buffer(v19, qword_27FC0B978);
  v20 = *(v17 + 16);
  v20(v18, v40, v8);

  v21 = sub_25C4C7BB0();
  v22 = sub_25C4C86F0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43 = v35;
    *v23 = 136315394;
    *(v23 + 4) = sub_25C458990(v39, v42, &v43);
    *(v23 + 12) = 2080;
    sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v24 = sub_25C4C89A0();
    v25 = v18;
    v27 = v26;
    (*(v41 + 8))(v25, v8);
    v28 = sub_25C458990(v24, v27, &v43);

    *(v23 + 14) = v28;
    _os_log_impl(&dword_25C452000, v21, v22, "Send response: requestName=%s, requestUUID=%s", v23, 0x16u);
    v29 = v35;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v29, -1, -1);
    v30 = v23;
    v17 = v41;
    MEMORY[0x25F888630](v30, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v18, v8);
  }

  v31 = v38;
  v20(v38, v40, v8);
  v32 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v33 = swift_allocObject();
  v34 = v42;
  *(v33 + 16) = v39;
  *(v33 + 24) = v34;
  (*(v17 + 32))(v33 + v32, v31, v8);

  sub_25C4AFFC4(v12, sub_25C4BBB24, v33);
}

void sub_25C4AF950(uint64_t a1, uint64_t a2)
{
  v3 = sub_25C4C7B20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    (*(v4 + 16))(v6, a2, v3);
    swift_beginAccess();
    sub_25C495840(0, v6);
    swift_endAccess();
    sub_25C4984E4();
  }
}

void sub_25C4AFA84(void *a1, NSObject *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v63 = a8;
  v64 = a7;
  v62 = a6;
  v65 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A900, &qword_25C4CAC90);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v54[-v13];
  v15 = sub_25C4C7B20();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v61 = &v54[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v54[-v20];
  MEMORY[0x28223BE20](v19);
  v23 = &v54[-v22];
  if (a1)
  {
    v57 = a2;
    v60 = v14;
    v24 = a1;
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v25 = sub_25C4C7BD0();
    __swift_project_value_buffer(v25, qword_27FC0B978);
    v26 = *(v16 + 16);
    v26(v23, a4, v15);
    v58 = v26;
    v59 = v16 + 16;
    v26(v21, v65, v15);
    v27 = a1;

    v28 = sub_25C4C7BB0();
    v29 = sub_25C4C8710();

    v30 = a1;
    if (os_log_type_enabled(v28, v29))
    {
      v31 = swift_slowAlloc();
      v55 = v29;
      v32 = v31;
      v56 = swift_slowAlloc();
      v66[0] = v56;
      *v32 = 136315906;
      *(v32 + 4) = sub_25C458990(v57, a3, v66);
      *(v32 + 12) = 2080;
      sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v57 = v28;
      v33 = sub_25C4C89A0();
      v35 = v34;
      v36 = *(v16 + 8);
      v36(v23, v15);
      v37 = sub_25C458990(v33, v35, v66);

      *(v32 + 14) = v37;
      *(v32 + 22) = 2080;
      v38 = sub_25C4C89A0();
      v40 = v39;
      v36(v21, v15);
      v41 = sub_25C458990(v38, v40, v66);

      *(v32 + 24) = v41;
      *(v32 + 32) = 2080;
      swift_getErrorValue();
      v42 = sub_25C4C8A30();
      v44 = sub_25C458990(v42, v43, v66);

      *(v32 + 34) = v44;
      v45 = v57;
      _os_log_impl(&dword_25C452000, v57, v55, "### Send operation start send failed: operationName=%s, operationUUID=%s, itemUUID=%s, error=%s", v32, 0x2Au);
      v46 = v56;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v46, -1, -1);
      MEMORY[0x25F888630](v32, -1, -1);
    }

    else
    {

      v47 = *(v16 + 8);
      v47(v21, v15);
      v47(v23, v15);
    }

    v48 = v60;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v50 = Strong;
      v51 = v61;
      v58(v61, v65, v15);
      v52 = type metadata accessor for NXSessionDaemon.OperationItem(0);
      (*(*(v52 - 8) + 56))(v48, 1, 1, v52);
      swift_beginAccess();
      sub_25C495328(v48, v51);
      swift_endAccess();
    }

    v53 = v30;
    v64(v30);
  }
}

uint64_t sub_25C4AFFC4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v119 = *MEMORY[0x277D85DE8];
  v8 = sub_25C4C8470();
  v109 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25C4C8490();
  v107 = *(v11 - 8);
  v108 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25C4C8280();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection);
  if (!v17)
  {
    v25 = objc_allocWithZone(sub_25C4C7B80());
    v26 = sub_25C4C7B90();
    swift_willThrow();
    goto LABEL_26;
  }

  v105 = (&v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v110[0] = -6700;

  NSData = OPACKEncoderCreateNSData(a1);
  if (!NSData)
  {
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_25C4C88F0();

    *&aBlock = 0xD000000000000028;
    *(&aBlock + 1) = 0x800000025C4D1790;
    LODWORD(v113) = v110[0];
    v27 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v27);

    v28 = objc_allocWithZone(sub_25C4C7B80());
    v26 = sub_25C4C7B90();
    swift_willThrow();

    goto LABEL_26;
  }

  v102 = v15;
  v103 = v14;
  v19 = NSData;
  v20 = sub_25C4C7AF0();
  v22 = v21;

  v23 = v22 >> 62;
  v106 = v22;
  v104 = v17;
  if ((v22 >> 62) <= 1)
  {
    if (!v23)
    {
      LODWORD(v24) = BYTE6(v22);
      goto LABEL_16;
    }

    if (!__OFSUB__(HIDWORD(v20), v20))
    {
      LODWORD(v24) = HIDWORD(v20) - v20;
      if ((HIDWORD(v20) - v20) >> 32)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v23 != 2)
  {
    LODWORD(v24) = 0;
    goto LABEL_16;
  }

  v30 = *(v20 + 16);
  v29 = *(v20 + 24);
  v24 = v29 - v30;
  if (__OFSUB__(v29, v30))
  {
    __break(1u);
    goto LABEL_42;
  }

  if (HIDWORD(v24))
  {
LABEL_14:
    v31 = objc_allocWithZone(sub_25C4C7B80());
    v32 = v20;
    v26 = sub_25C4C7B90();
    swift_willThrow();

    sub_25C45A004(v32, v106);
    goto LABEL_26;
  }

LABEL_16:
  v101 = a2;
  v113 = xmmword_25C4CA800;
  v33 = *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityStream);
  v100 = a3;
  if (v33)
  {
    v99 = v20;
    v112 = xmmword_25C4CA800;
    LOBYTE(v111) = 1;
    sub_25C4BAFE4();
    v98 = v33;
    v34 = sub_25C4C8940();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A928, &qword_25C4CACA0);
    v116 = v35;
    v36 = sub_25C4BC1E8(&qword_27FC0A930, &qword_27FC0A928, &qword_25C4CACA0, MEMORY[0x277CC9C28]);
    v117 = v36;
    *&aBlock = v34;
    __swift_project_boxed_opaque_existential_1(&aBlock, v35);

    sub_25C4C7AD0();
    __swift_destroy_boxed_opaque_existential_0(&aBlock);

    v37 = *(v4 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityAuthTagLength);
    v38 = __CFADD__(v24, v37);
    v39 = v24 + v37;
    if (v38)
    {
      __break(1u);
LABEL_40:
      swift_once();
LABEL_20:
      v58 = sub_25C4C7BD0();
      __swift_project_value_buffer(v58, qword_27FC0B978);
      sub_25C459FB0(v10, v4);
      sub_25C459FB0(v10, v4);
      sub_25C459FB0(v10, v4);
      v59 = sub_25C4C7BB0();
      v60 = sub_25C4C8700();
      sub_25C45A004(v10, v4);
      v61 = os_log_type_enabled(v59, v60);
      v62 = v106;
      if (!v61)
      {
        sub_25C45A004(v10, v4);
        sub_25C45A004(v10, v4);

        sub_25C45A004(v10, v4);
        v70 = v101;
LABEL_37:
        sub_25C45A004(v112, *(&v112 + 1));
        v76 = v99;
        goto LABEL_38;
      }

      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v111 = v64;
      *v63 = 136315394;
      *&aBlock = v10;
      *(&aBlock + 1) = v4;
      sub_25C459FB0(v10, v4);
      sub_25C4BB094();
      v65 = sub_25C4C85C0();
      v67 = v66;
      sub_25C45A004(aBlock, *(&aBlock + 1));
      v68 = sub_25C458990(v65, v67, &v111);

      *(v63 + 4) = v68;
      *(v63 + 12) = 2048;
      v69 = v4 >> 62;
      if ((v4 >> 62) <= 1)
      {
        v70 = v101;
        if (!v69)
        {
          sub_25C45A004(v10, v4);
          v71 = BYTE6(v4);
LABEL_36:
          v91 = v98;
          *(v63 + 14) = v71;
          sub_25C45A004(v10, v4);
          _os_log_impl(&dword_25C452000, v59, v60, "Send frame body: data=<%s>, size=%ld", v63, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v64);
          MEMORY[0x25F888630](v64, -1, -1);
          MEMORY[0x25F888630](v63, -1, -1);
          sub_25C45A004(v10, v4);

          goto LABEL_37;
        }

        goto LABEL_32;
      }

      if (v69 == 2)
      {
        v70 = *(v10 + 2);
        v90 = *(v10 + 3);
        sub_25C45A004(v10, v4);
        v71 = v90 - v70;
        if (__OFSUB__(v90, v70))
        {
          __break(1u);
LABEL_32:
          sub_25C45A004(v10, v4);
          LODWORD(v71) = HIDWORD(v10) - v10;
          if (!__OFSUB__(HIDWORD(v10), v10))
          {
            v71 = v71;
            goto LABEL_36;
          }

LABEL_43:
          __break(1u);
        }
      }

      else
      {
        sub_25C45A004(v10, v4);
        v71 = 0;
      }

      v70 = v101;
      goto LABEL_36;
    }

    LODWORD(v111) = v39;
    sub_25C4BB038();
    v40 = sub_25C4C8940();
    v116 = v35;
    v117 = v36;
    *&aBlock = v40;
    __swift_project_boxed_opaque_existential_1(&aBlock, v35);

    sub_25C4C7AD0();
    __swift_destroy_boxed_opaque_existential_0(&aBlock);

    v41 = sub_25C4C7AE0();
    v42 = v112;
    v43 = sub_25C4C7AE0();
    *&aBlock = 0;
    v44 = v98;
    v45 = [v98 encryptData:v41 aadData:v43 error:&aBlock];

    v46 = aBlock;
    if (v45)
    {
      v10 = sub_25C4C7AF0();
      v4 = v47;

      v48 = MEMORY[0x277CC9318];
      v49 = MEMORY[0x277CC9300];
      v116 = MEMORY[0x277CC9318];
      v117 = MEMORY[0x277CC9300];
      aBlock = v42;
      v50 = __swift_project_boxed_opaque_existential_1(&aBlock, MEMORY[0x277CC9318]);
      v51 = *v50;
      v52 = v50[1];
      sub_25C459FB0(v42, *(&v42 + 1));
      sub_25C4B8138(v51, v52, &v113, v53);
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      v116 = v48;
      v117 = v49;
      *&aBlock = v10;
      *(&aBlock + 1) = v4;
      v54 = __swift_project_boxed_opaque_existential_1(&aBlock, v48);
      v55 = *v54;
      v56 = v54[1];
      sub_25C459FB0(v10, v4);
      sub_25C4B8138(v55, v56, &v113, v57);
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      if (qword_27FC0B970 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_40;
    }

    v81 = v46;
    v82 = v44;
    v83 = sub_25C4C7A90();

    swift_willThrow();
    v84 = objc_allocWithZone(sub_25C4C7B80());
    v85 = v83;
    v26 = sub_25C4C7B90();
    swift_willThrow();
    sub_25C45A004(v99, v106);

    sub_25C45A004(v112, *(&v112 + 1));
    sub_25C45A004(v113, *(&v113 + 1));
    a3 = v100;
    a2 = v101;
LABEL_26:
    v86 = swift_allocObject();
    v86[2] = a2;
    v86[3] = a3;
    v86[4] = v26;
    v117 = sub_25C4BAF74;
    v118 = v86;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v115 = sub_25C4676B4;
    v116 = &block_descriptor_59;
    v87 = _Block_copy(&aBlock);

    v88 = v26;
    sub_25C4C8480();
    *&v113 = MEMORY[0x277D84F90];
    sub_25C4B8B3C(&unk_27FC0A180, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A7B0, &qword_25C4C9AE0);
    sub_25C4BC1E8(&qword_27FC0A190, &unk_27FC0A7B0, &qword_25C4C9AE0, MEMORY[0x277D83970]);
    sub_25C4C8800();
    MEMORY[0x25F887C10](0, v13, v10, v87);
    _Block_release(v87);

    (*(v109 + 8))(v10, v8);
    (*(v107 + 8))(v13, v108);
  }

  LOBYTE(v112) = 2;
  sub_25C4BAFE4();
  v72 = sub_25C4C8940();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A928, &qword_25C4CACA0);
  v116 = v73;
  v74 = sub_25C4BC1E8(&qword_27FC0A930, &qword_27FC0A928, &qword_25C4CACA0, MEMORY[0x277CC9C28]);
  v117 = v74;
  *&aBlock = v72;
  __swift_project_boxed_opaque_existential_1(&aBlock, v73);

  sub_25C4C7AD0();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);

  LODWORD(v112) = v24;
  sub_25C4BB038();
  v75 = sub_25C4C8940();
  v116 = v73;
  v117 = v74;
  *&aBlock = v75;
  __swift_project_boxed_opaque_existential_1(&aBlock, v73);

  sub_25C4C7AD0();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);

  v116 = MEMORY[0x277CC9318];
  v117 = MEMORY[0x277CC9300];
  v76 = v20;
  v62 = v106;
  *&aBlock = v20;
  *(&aBlock + 1) = v106;
  v77 = __swift_project_boxed_opaque_existential_1(&aBlock, MEMORY[0x277CC9318]);
  v78 = *v77;
  v79 = v77[1];
  sub_25C459FB0(v20, v62);
  sub_25C4B8138(v78, v79, &v113, v80);
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v70 = v101;
LABEL_38:
  v92 = swift_allocObject();
  v93 = v100;
  *(v92 + 16) = v70;
  *(v92 + 24) = v93;
  v94 = v105;
  *v105 = sub_25C4BB08C;
  v94[1] = v92;
  v95 = v102;
  v96 = v103;
  (*(v102 + 104))(v94, *MEMORY[0x277CD8DB0], v103);
  sub_25C4C8270();

  sub_25C4C8260();
  sub_25C4C82B0();

  sub_25C45A004(v76, v62);
  (*(v95 + 8))(v94, v96);
  return sub_25C45A004(v113, *(&v113 + 1));
}

void sub_25C4B0DB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6, const char *a7)
{
  v60 = a7;
  v61 = a6;
  v62 = a5;
  v63 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A900, &qword_25C4CAC90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v51[-v11];
  v13 = sub_25C4C7B20();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v51[-v17];
  MEMORY[0x28223BE20](v16);
  v21 = &v51[-v20];
  if (a1)
  {
    v58 = v19;
    v59 = a4;
    v22 = a1;
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v23 = sub_25C4C7BD0();
    __swift_project_value_buffer(v23, qword_27FC0B978);
    v24 = *(v14 + 16);
    v24(v21, a2, v13);
    v56 = v24;
    v57 = v14 + 16;
    v24(v18, v63, v13);
    v25 = a1;
    v26 = sub_25C4C7BB0();
    v27 = sub_25C4C8710();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v55 = v12;
      v29 = v28;
      v54 = swift_slowAlloc();
      v64[0] = v54;
      *v29 = 136315650;
      sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v53 = v26;
      v30 = sub_25C4C89A0();
      v32 = v31;
      v52 = v27;
      v33 = *(v14 + 8);
      v33(v21, v13);
      v34 = sub_25C458990(v30, v32, v64);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2080;
      v35 = sub_25C4C89A0();
      v37 = v36;
      v33(v18, v13);
      v38 = sub_25C458990(v35, v37, v64);

      *(v29 + 14) = v38;
      *(v29 + 22) = 2080;
      swift_getErrorValue();
      v39 = sub_25C4C8A30();
      v41 = sub_25C458990(v39, v40, v64);

      *(v29 + 24) = v41;
      v42 = v53;
      _os_log_impl(&dword_25C452000, v53, v52, v60, v29, 0x20u);
      v43 = v54;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v43, -1, -1);
      v44 = v29;
      v12 = v55;
      MEMORY[0x25F888630](v44, -1, -1);
    }

    else
    {

      v45 = *(v14 + 8);
      v45(v18, v13);
      v45(v21, v13);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v47 = Strong;
      v48 = v58;
      v56(v58, v63, v13);
      v49 = type metadata accessor for NXSessionDaemon.OperationItem(0);
      (*(*(v49 - 8) + 56))(v12, 1, 1, v49);
      swift_beginAccess();
      sub_25C495328(v12, v48);
      swift_endAccess();
    }

    v50 = a1;
    v62(a1);
  }
}

void sub_25C4B12C4(void *a1, uint64_t a2, const char *a3)
{
  v6 = sub_25C4C7B20();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = a1;
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v11 = sub_25C4C7BD0();
    __swift_project_value_buffer(v11, qword_27FC0B978);
    (*(v7 + 16))(v9, a2, v6);
    v12 = a1;
    v13 = sub_25C4C7BB0();
    v14 = sub_25C4C8710();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = a3;
      v16 = v15;
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136315394;
      sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v18 = sub_25C4C89A0();
      v20 = v19;
      (*(v7 + 8))(v9, v6);
      v21 = sub_25C458990(v18, v20, &v26);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2080;
      swift_getErrorValue();
      v22 = sub_25C4C8A30();
      v24 = sub_25C458990(v22, v23, &v26);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_25C452000, v13, v14, v25, v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F888630](v17, -1, -1);
      MEMORY[0x25F888630](v16, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }
}

uint64_t sub_25C4B15B8(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  v45 = a3;
  v9 = sub_25C4C7E50();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_25C4C7B20();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v40[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v44 = a5;
    v17 = a1;
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v18 = sub_25C4C7BD0();
    __swift_project_value_buffer(v18, qword_27FC0B978);
    (*(v14 + 16))(v16, a2, v13);
    (*(v10 + 16))(v12, v45, v9);
    v19 = a1;
    v20 = sub_25C4C7BB0();
    v21 = sub_25C4C8710();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v45 = a4;
      v23 = v22;
      v43 = swift_slowAlloc();
      v46 = v43;
      *v23 = 136315650;
      sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v42 = v20;
      v24 = sub_25C4C89A0();
      v41 = v21;
      v25 = v10;
      v27 = v26;
      (*(v14 + 8))(v16, v13);
      v28 = sub_25C458990(v24, v27, &v46);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      sub_25C4B8B3C(&unk_27FC0AA60, MEMORY[0x277D35798], MEMORY[0x277D357A0]);
      v29 = sub_25C4C89A0();
      v31 = v30;
      (*(v25 + 8))(v12, v9);
      v32 = sub_25C458990(v29, v31, &v46);

      *(v23 + 14) = v32;
      *(v23 + 22) = 2080;
      swift_getErrorValue();
      v33 = sub_25C4C8A30();
      v35 = sub_25C458990(v33, v34, &v46);

      *(v23 + 24) = v35;
      v36 = v42;
      _os_log_impl(&dword_25C452000, v42, v41, "### Send operation event send failed: operationUUID=%s, event=%s,\nerror=%s", v23, 0x20u);
      v37 = v43;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v37, -1, -1);
      v38 = v23;
      a4 = v45;
      MEMORY[0x25F888630](v38, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v12, v9);
      (*(v14 + 8))(v16, v13);
    }
  }

  return a4(a1);
}

uint64_t sub_25C4B1A24(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = sub_25C4C7B20();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = a1;
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v13 = sub_25C4C7BD0();
    __swift_project_value_buffer(v13, qword_27FC0B978);
    (*(v9 + 16))(v11, a2, v8);
    v14 = a1;
    v15 = sub_25C4C7BB0();
    v16 = sub_25C4C8710();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v28[1] = a4;
      v18 = v17;
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 136315394;
      sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v20 = sub_25C4C89A0();
      v29 = a3;
      v22 = v21;
      (*(v9 + 8))(v11, v8);
      v23 = sub_25C458990(v20, v22, &v30);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      swift_getErrorValue();
      v24 = sub_25C4C8A30();
      v26 = sub_25C458990(v24, v25, &v30);
      a3 = v29;

      *(v18 + 14) = v26;
      _os_log_impl(&dword_25C452000, v15, v16, "### Send operation provider event send failed: operationUUID=%s, error=%s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F888630](v19, -1, -1);
      MEMORY[0x25F888630](v18, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }
  }

  return a3(a1);
}

void sub_25C4B1D3C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void, void), uint64_t a7)
{
  v14 = sub_25C4C7B20();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - v18;
  if (a1)
  {
    v43 = a2;
    v45 = v17;
    v46 = a5;
    v48 = a7;
    v20 = a1;
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v21 = sub_25C4C7BD0();
    __swift_project_value_buffer(v21, qword_27FC0B978);
    v22 = *(v15 + 16);
    v47 = a4;
    v44 = v22;
    v22(v19, a4, v14);
    v23 = a1;

    v24 = sub_25C4C7BB0();
    v25 = sub_25C4C8710();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v42 = a6;
      v27 = v26;
      v41 = swift_slowAlloc();
      v49[0] = v41;
      *v27 = 136315650;
      *(v27 + 4) = sub_25C458990(v43, a3, v49);
      *(v27 + 12) = 2080;
      sub_25C4B8B3C(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v28 = sub_25C4C89A0();
      v30 = v29;
      (*(v15 + 8))(v19, v14);
      v31 = sub_25C458990(v28, v30, v49);

      *(v27 + 14) = v31;
      *(v27 + 22) = 2080;
      swift_getErrorValue();
      v32 = sub_25C4C8A30();
      v34 = sub_25C458990(v32, v33, v49);

      *(v27 + 24) = v34;
      _os_log_impl(&dword_25C452000, v24, v25, "### Send request send failed: requestName=%s, requestUUID=%s, error=%s", v27, 0x20u);
      v35 = v41;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v35, -1, -1);
      v36 = v27;
      a6 = v42;
      MEMORY[0x25F888630](v36, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v19, v14);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v38 = Strong;
      v39 = v45;
      v44(v45, v47, v14);
      swift_beginAccess();
      sub_25C495548(0, 0, 0, 0, v39);
      swift_endAccess();
    }

    v40 = a1;
    a6(a1, 0, 1);
  }
}