uint64_t sub_25C453530()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0AAB8);
  __swift_project_value_buffer(v0, qword_27FC0AAB8);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

void *sub_25C4535A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon_needsNetwork) = 0;
  v18 = MEMORY[0x277D84F90];
  *(v17 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__registeredOperationNames) = MEMORY[0x277D84F90];
  *(v17 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__operationHandlers) = MEMORY[0x277D84F98];
  *(v17 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__registeredRequestNames) = v18;
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v17[5] = a9;
  v19 = *(a9 + 16);
  v17[6] = v19;
  v17[7] = a1;
  v17[8] = a2;
  v20 = OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__mode;
  v21 = sub_25C4C7D10();
  (*(*(v21 - 8) + 32))(v17 + v20, a3, v21);
  *(v17 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__operationNames) = a5;
  *(v17 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__requestNames) = a4;
  *(v17 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__xpcConnection) = a10;
  v22 = v19;
  return v17;
}

void sub_25C4536F0()
{
  v1 = v0;
  v54 = sub_25C4C7DB0();
  v56 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v3 = (&v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_25C4C7D10();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FC0AAB0 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v8 = sub_25C4C7BD0();
    __swift_project_value_buffer(v8, qword_27FC0AAB8);

    v9 = sub_25C4C7BB0();
    v10 = sub_25C4C8720();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v58[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_25C458990(v1[3], v1[4], v58);
      _os_log_impl(&dword_25C452000, v9, v10, "Activate: client=%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x25F888630](v12, -1, -1);
      MEMORY[0x25F888630](v11, -1, -1);
    }

    (*(v5 + 16))(v7, v1 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__mode, v4);
    v13 = (*(v5 + 88))(v7, v4);
    if (v13 != *MEMORY[0x277D35668])
    {
      if (v13 == *MEMORY[0x277D35660])
      {
        v14 = v1[5];
        v15 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_networkManager;
        swift_beginAccess();
        if (*(v14 + v15))
        {

          sub_25C4C58B0(v1);
        }
      }

      else if (v13 != *MEMORY[0x277D35670])
      {
        v16 = *(v5 + 8);
        v5 += 8;
        v16(v7, v4);
      }
    }

    v17 = v1;
    v7 = *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__requestNames);
    v53 = *(v7 + 2);
    if (v53)
    {
      break;
    }

    v3 = v1;
LABEL_21:
    v33 = *(v3 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__operationNames);
    v55 = *(v33 + 16);
    if (!v55)
    {
LABEL_30:
      v44 = v3[8];
      if (v44)
      {
        v45 = v3[7];
        v46 = v3[5];
        v47 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_cloudServer;
        swift_beginAccess();
        v48 = *(v46 + v47);
        if (v48)
        {
          v49 = v48;
          sub_25C490F34(v45, v44, v3);
        }
      }

      return;
    }

    v5 = 0;
    v1 = OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__registeredOperationNames;
    v4 = (v33 + 40);
    v54 = v33;
    while (v5 < *(v33 + 16))
    {
      v35 = *(v4 - 1);
      v34 = *v4;
      v36 = v3[4];
      v57 = v3[5];
      v37 = v3[3];
      v38 = swift_allocObject();
      swift_weakInit();

      v56 = v35;
      v39 = v59;
      sub_25C487570(v35, v34, v37, v36, sub_25C458974, v38);
      if (v39)
      {
        goto LABEL_35;
      }

      v59 = 0;

      swift_beginAccess();
      v40 = *(v1 + v3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v3) = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = sub_25C458868(0, *(v40 + 2) + 1, 1, v40);
        *(v1 + v3) = v40;
      }

      v7 = *(v40 + 2);
      v42 = *(v40 + 3);
      if (v7 >= v42 >> 1)
      {
        v40 = sub_25C458868((v42 > 1), (v7 + 1), 1, v40);
      }

      ++v5;
      *(v40 + 2) = v7 + 1;
      v43 = &v40[16 * v7];
      *(v43 + 4) = v56;
      *(v43 + 5) = v34;
      *(v1 + v3) = v40;
      swift_endAccess();
      v4 += 2;
      v33 = v54;
      if (v55 == v5)
      {
        goto LABEL_30;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

  v1 = 0;
  v57 = OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__registeredRequestNames;
  v51 = v3;
  v52 = (v56 + 1);
  v4 = (v7 + 40);
  v3 = v17;
  v50 = v7;
  while (1)
  {
    if (v1 >= *(v7 + 2))
    {
      __break(1u);
      goto LABEL_37;
    }

    v18 = *(v4 - 1);
    v19 = *v4;
    v20 = v3[5];
    v55 = v3[4];
    v56 = v20;
    v21 = v3[3];
    v22 = swift_allocObject();
    swift_weakInit();

    v23 = v3;
    v24 = v51;
    sub_25C488944(v25);
    v26 = v18;
    v27 = v59;
    sub_25C488948(v18, v19, v24, v21, v55, sub_25C453E74, v22);
    if (v27)
    {
      break;
    }

    v59 = 0;
    (*v52)(v24, v54);

    v28 = v57;
    swift_beginAccess();
    v29 = *(v23 + v28);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *(v23 + v28) = v29;
    v3 = v23;
    if ((v30 & 1) == 0)
    {
      v29 = sub_25C458868(0, *(v29 + 2) + 1, 1, v29);
      *(v23 + v57) = v29;
    }

    v7 = v50;
    v5 = *(v29 + 2);
    v31 = *(v29 + 3);
    if (v5 >= v31 >> 1)
    {
      v29 = sub_25C458868((v31 > 1), v5 + 1, 1, v29);
    }

    v1 = (v1 + 1);
    *(v29 + 2) = v5 + 1;
    v32 = &v29[16 * v5];
    *(v32 + 4) = v26;
    *(v32 + 5) = v19;
    *(v3 + v57) = v29;
    swift_endAccess();
    v4 += 2;
    if (v53 == v1)
    {
      goto LABEL_21;
    }
  }

  (*v52)(v24, v54);
LABEL_35:
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25C453E3C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C453E74(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_25C453FB8(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    sub_25C4C88F0();

    MEMORY[0x25F887A50](a1, a2);
    v14 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }
}

unint64_t sub_25C453FB8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v70 = a5;
  v75 = a1;
  v12 = sub_25C4C7D60();
  v67 = *(v12 - 8);
  v68 = v12;
  MEMORY[0x28223BE20](v12);
  v66 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25C4C80B0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v63 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FC0AAB0 != -1)
  {
    swift_once();
  }

  v17 = sub_25C4C7BD0();
  __swift_project_value_buffer(v17, qword_27FC0AAB8);

  sub_25C459FB0(a3, a4);
  v18 = sub_25C4C7BB0();
  v19 = sub_25C4C86F0();

  v20 = os_log_type_enabled(v18, v19);
  v59 = a7;
  v58 = a6;
  v69 = a2;
  v64 = a3;
  v65 = a4;
  if (v20)
  {
    v21 = a3;
    v73 = v15;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136315394;
    result = sub_25C458990(v75, a2, aBlock);
    *(v22 + 4) = result;
    *(v22 + 12) = 2048;
    v25 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v25 != 2)
      {
        v26 = 0;
        goto LABEL_15;
      }

      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      v29 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (!v29)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v25)
    {
      v26 = BYTE6(a4);
LABEL_15:
      *(v22 + 14) = v26;
      sub_25C45A004(v21, a4);
      _os_log_impl(&dword_25C452000, v18, v19, "Report request: name=%s, size=%ld", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x25F888630](v23, -1, -1);
      MEMORY[0x25F888630](v22, -1, -1);

      v15 = v73;
      goto LABEL_16;
    }

    LODWORD(v26) = HIDWORD(v21) - v21;
    if (__OFSUB__(HIDWORD(v21), v21))
    {
      __break(1u);
      return result;
    }

    v26 = v26;
    goto LABEL_15;
  }

  sub_25C45A004(a3, a4);

LABEL_16:
  empty = xpc_dictionary_create_empty();
  v30 = *MEMORY[0x277D35858];
  v62 = *(v15 + 13);
  v31 = v63;
  v62(v63, v30, v14);
  v61 = sub_25C4C80A0();
  v73 = *(v15 + 1);
  v73(v31, v14);
  v32 = v66;
  v33 = v67;
  v34 = v68;
  (*(v67 + 104))(v66, *MEMORY[0x277D356F8], v68);
  v60 = sub_25C4C7D50();
  (*(v33 + 8))(v32, v34);
  v35 = v62;
  v36 = sub_25C4C8570();
  v37 = empty;

  v38 = sub_25C4C8570();

  xpc_dictionary_set_string(v37, (v36 + 32), (v38 + 32));

  v35(v31, *MEMORY[0x277D35850], v14);
  sub_25C4C80A0();
  v39 = v73;
  v73(v31, v14);
  v40 = sub_25C4C8570();

  v41 = sub_25C4C8570();
  xpc_dictionary_set_string(v37, (v40 + 32), (v41 + 32));

  v35(v31, *MEMORY[0x277D35848], v14);
  sub_25C4C80A0();
  v39(v31, v14);
  v42 = sub_25C4C7AC0();
  v43 = sub_25C4C8570();

  xpc_dictionary_set_value(v37, (v43 + 32), v42);
  swift_unknownObjectRelease();

  v44 = v71;
  v45 = sub_25C4C7DF0();
  if (!v44)
  {
    v47 = v45;
    v48 = v46;
    v49 = sub_25C4C7AC0();
    sub_25C45A004(v47, v48);
    v35(v31, *MEMORY[0x277D35890], v14);
    sub_25C4C80A0();
    v73(v31, v14);
    v50 = sub_25C4C8570();
    swift_unknownObjectRetain();

    v51 = empty;
    xpc_dictionary_set_value(empty, (v50 + 32), v49);
    swift_unknownObjectRelease();

    v52 = *(*(v57 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__xpcConnection) + 88);
    v53 = *(v57 + 48);
    v54 = swift_allocObject();
    v55 = v59;
    *(v54 + 16) = v58;
    *(v54 + 24) = v55;
    aBlock[4] = sub_25C45A5B0;
    aBlock[5] = v54;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25C456294;
    aBlock[3] = &block_descriptor_36;
    v56 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    xpc_connection_send_message_with_reply(v52, v51, v53, v56);
    _Block_release(v56);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

id sub_25C4546B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_25C4C7B20();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    (*(v8 + 16))(v10, a3, v7);
    type metadata accessor for NXServerDaemonOperationHandler(0);
    swift_allocObject();
    v13 = sub_25C459DDC(a1, a2, v10, v12);

    sub_25C459F68(&qword_27FC0A168, type metadata accessor for NXServerDaemonOperationHandler, &unk_25C4C9820);
  }

  else
  {
    v13 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
  }

  return v13;
}

uint64_t sub_25C454880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_25C459DDC(a1, a2, a3, a4);

  return v8;
}

void sub_25C4548F4()
{
  v1 = v0;
  v109 = sub_25C4C7D00();
  v2 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v108 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_25C4C7E50();
  v4 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v106 = (&v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = sub_25C4C7B20();
  v94 = *(v95 - 1);
  v6 = MEMORY[0x28223BE20](v95);
  v111 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v116 = &v89 - v9;
  MEMORY[0x28223BE20](v8);
  v92 = &v89 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A150, &qword_25C4C9810);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v112 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v110 = &v89 - v14;
  v15 = sub_25C4C7D10();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FC0AAB0 != -1)
  {
LABEL_43:
    swift_once();
  }

  v19 = sub_25C4C7BD0();
  v20 = __swift_project_value_buffer(v19, qword_27FC0AAB8);

  v105 = v20;
  v21 = sub_25C4C7BB0();
  v22 = sub_25C4C8720();

  v23 = os_log_type_enabled(v21, v22);
  v113 = v1;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v118 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_25C458990(v113[3], v113[4], &v118);
    _os_log_impl(&dword_25C452000, v21, v22, "Invalidate: client=%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x25F888630](v25, -1, -1);
    v1 = v113;
    MEMORY[0x25F888630](v24, -1, -1);
  }

  (*(v16 + 16))(v18, v1 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__mode, v15);
  v26 = (*(v16 + 88))(v18, v15);
  if (v26 != *MEMORY[0x277D35668])
  {
    if (v26 == *MEMORY[0x277D35660])
    {
      v27 = v1[5];
      v28 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_networkManager;
      swift_beginAccess();
      if (*(v27 + v28))
      {

        sub_25C4C5AE4(v1);
      }
    }

    else if (v26 != *MEMORY[0x277D35670])
    {
      (*(v16 + 8))(v18, v15);
    }
  }

  v29 = OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__registeredRequestNames;
  swift_beginAccess();
  v30 = *(*(v1 + v29) + 16);
  if (v30)
  {
    v115 = v4;
    v31 = v2;
    v32 = v1[4];
    v18 = v1[3];
    v33 = ( + 40);
    do
    {
      v35 = *(v33 - 1);
      v34 = *v33;

      sub_25C488F90(v35, v34, v18, v32);

      v33 += 2;
      --v30;
    }

    while (v30);

    v1 = v113;
    v2 = v31;
    v4 = v115;
  }

  *(v1 + v29) = MEMORY[0x277D84F90];

  v36 = OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__operationHandlers;
  swift_beginAccess();
  v37 = *(v1 + v36);
  v38 = v37 + 64;
  v39 = 1 << *(v37 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v15 = v40 & *(v37 + 64);
  v103 = OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__xpcConnection;
  v90 = (v39 + 63) >> 6;
  v114 = (v94 + 32);
  v115 = (v94 + 16);
  v102 = (v94 + 8);
  v101 = *MEMORY[0x277D35650];
  v100 = (v2 + 104);
  v99 = "Needs NAN scanner stop";
  v98 = *MEMORY[0x277D35788];
  v97 = (v4 + 13);
  v96 = (v4 + 1);
  v93 = v37;

  v2 = 0;
  v1 = &qword_25C4C9818;
  *&v41 = 136315138;
  v91 = v41;
  v4 = v95;
  v104 = v38;
  while (1)
  {
    v47 = v112;
    if (!v15)
    {
      if (v90 <= v2 + 1)
      {
        v49 = v2 + 1;
      }

      else
      {
        v49 = v90;
      }

      v16 = v49 - 1;
      while (1)
      {
        v48 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v48 >= v90)
        {
          v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A158, &qword_25C4C9818);
          (*(*(v74 - 8) + 56))(v47, 1, 1, v74);
          v15 = 0;
          v2 = v16;
          goto LABEL_30;
        }

        v15 = *(v38 + 8 * v48);
        ++v2;
        if (v15)
        {
          v2 = v48;
          goto LABEL_29;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    v48 = v2;
LABEL_29:
    v50 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v51 = v50 | (v48 << 6);
    v52 = v93;
    v53 = v94;
    v54 = v92;
    (*(v94 + 16))(v92, *(v93 + 48) + *(v94 + 72) * v51, v4);
    v55 = *(*(v52 + 56) + 8 * v51);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A158, &qword_25C4C9818);
    v57 = *(v56 + 48);
    (*(v53 + 32))(v47, v54, v4);
    *(v47 + v57) = v55;
    (*(*(v56 - 8) + 56))(v47, 0, 1, v56);

LABEL_30:
    v58 = v110;
    sub_25C459EF8(v47, v110);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A158, &qword_25C4C9818);
    v60 = (*(*(v59 - 8) + 48))(v58, 1, v59);
    v61 = v111;
    if (v60 == 1)
    {
      break;
    }

    v62 = v116;
    (*v114)(v116, v58, v4);
    (*v115)(v61, v62, v4);
    v63 = sub_25C4C7BB0();
    v64 = sub_25C4C86F0();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v117 = v95;
      *v65 = v91;
      sub_25C459F68(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v66 = sub_25C4C89A0();
      v67 = v61;
      v43 = v4;
      v69 = v68;
      v70 = *v102;
      (*v102)(v67, v43);
      v71 = sub_25C458990(v66, v69, &v117);

      *(v65 + 4) = v71;
      _os_log_impl(&dword_25C452000, v63, v64, "Operation server invalidate: uuid=%s", v65, 0xCu);
      v72 = v95;
      __swift_destroy_boxed_opaque_existential_0(v95);
      MEMORY[0x25F888630](v72, -1, -1);
      v73 = v65;
      v42 = v70;
      MEMORY[0x25F888630](v73, -1, -1);
    }

    else
    {

      v42 = *v102;
      (*v102)(v61, v4);
      v43 = v4;
    }

    sub_25C4C80C0();
    (*v100)(v108, v101, v109);
    v44 = sub_25C4C80E0();
    v45 = v106;
    *v106 = v44;
    v18 = v107;
    (*v97)(v45, v98, v107);
    v46 = v116;
    sub_25C475F88(v45, v116);
    (*v96)(v45, v18);
    v42(v46, v43);
    v4 = v43;
    v38 = v104;
    v1 = &qword_25C4C9818;
  }

  v75 = OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__registeredOperationNames;
  v76 = v113;
  swift_beginAccess();
  v77 = *(v76 + v75);
  v78 = *(v77 + 16);
  if (v78)
  {

    v79 = (v77 + 40);
    do
    {
      v80 = *(v79 - 1);
      v81 = *v79;

      sub_25C487BCC(v80, v81);

      v79 += 2;
      --v78;
    }

    while (v78);

    v76 = v113;
  }

  *(v76 + v75) = MEMORY[0x277D84F90];

  v82 = v76[8];
  if (v82)
  {
    v83 = v76[7];
    v84 = v76[5];
    v85 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_cloudServer;
    swift_beginAccess();
    v86 = *(v84 + v85);
    v87 = v113;
    if (v86)
    {
      v88 = v86;
      sub_25C491524(v83, v82, v87);
    }
  }
}

uint64_t sub_25C45558C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25C4C7D60();
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x28223BE20](v4);
  v75 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25C4C80B0();
  v80 = *(v6 - 8);
  v81 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v79 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v78 = v67 - v9;
  v10 = sub_25C4C7D10();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v82 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25C4C7D80();
  v84 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v73 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v67 - v16;
  v18 = sub_25C4C84C0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v2 + 48);
  *v21 = v22;
  (*(v19 + 104))(v21, *MEMORY[0x277D85200], v18);
  v23 = v22;
  LOBYTE(v22) = sub_25C4C84E0();
  (*(v19 + 8))(v21, v18);
  if (v22)
  {
    if (qword_27FC0AAB0 == -1)
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
  v24 = sub_25C4C7BD0();
  v25 = __swift_project_value_buffer(v24, qword_27FC0AAB8);
  v26 = v84;
  v27 = *(v84 + 16);
  v74 = a1;
  v70 = v84 + 16;
  v69 = v27;
  v27(v17, a1, v13);

  v71 = v25;
  v28 = sub_25C4C7BB0();
  v29 = sub_25C4C8720();

  v30 = os_log_type_enabled(v28, v29);
  v31 = 0x27FC0A000uLL;
  v83 = v2;
  v72 = v13;
  if (v30)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v85[0] = v33;
    *v32 = 136315394;
    sub_25C459F68(&qword_27FC0A4D0, MEMORY[0x277D35678], MEMORY[0x277D35688]);
    v34 = sub_25C4C89A0();
    v36 = sub_25C458990(v34, v35, v85);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    sub_25C459F68(&qword_27FC0A160, MEMORY[0x277D35758], MEMORY[0x277D35760]);
    v37 = sub_25C4C89A0();
    v39 = v38;
    v68 = *(v84 + 8);
    v68(v17, v13);
    v40 = sub_25C458990(v37, v39, v85);
    v31 = 0x27FC0A000;

    *(v32 + 14) = v40;
    _os_log_impl(&dword_25C452000, v28, v29, "Server event: mode=%s, event=%s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v33, -1, -1);
    v41 = v32;
    v2 = v83;
    MEMORY[0x25F888630](v41, -1, -1);
  }

  else
  {

    v68 = *(v26 + 8);
    v68(v17, v13);
  }

  v42 = v82;
  (*(v11 + 16))(v82, v2 + *(v31 + 2784), v10);
  v43 = (*(v11 + 88))(v42, v10);
  v44 = *MEMORY[0x277D35670];
  result = (*(v11 + 8))(v42, v10);
  if (v43 == v44)
  {
    v67[0] = xpc_dictionary_create_empty();
    v46 = *MEMORY[0x277D35858];
    v47 = v80;
    v48 = *(v80 + 104);
    v67[1] = (v80 + 104);
    v82 = v48;
    v49 = v78;
    v50 = v81;
    (v48)(v78, v46, v81);
    sub_25C4C80A0();
    v80 = *(v47 + 8);
    (v80)(v49, v50);
    v51 = v75;
    v52 = v76;
    v53 = v77;
    (*(v76 + 104))(v75, *MEMORY[0x277D356D8], v77);
    sub_25C4C7D50();
    (*(v52 + 8))(v51, v53);
    v54 = v83;
    v55 = sub_25C4C8570();

    v56 = sub_25C4C8570();

    v57 = v67[0];
    xpc_dictionary_set_string(v67[0], (v55 + 32), (v56 + 32));

    v58 = v82;
    (v82)(v49, *MEMORY[0x277D358C8], v50);
    sub_25C4C80A0();
    v59 = v49;
    v60 = v57;
    v61 = v80;
    (v80)(v59, v50);
    v62 = *(v54 + 16);
    v63 = sub_25C4C8570();

    xpc_dictionary_set_uint64(v60, (v63 + 32), v62);

    v64 = v79;
    (v58)(v79, *MEMORY[0x277D358C0], v50);
    sub_25C4C80A0();
    v61(v64, v50);
    v65 = sub_25C4C7D70();
    v66 = sub_25C4C8570();

    xpc_dictionary_set_value(v60, (v66 + 32), v65);
    swift_unknownObjectRelease();

    xpc_connection_send_message(*(*(v54 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__xpcConnection) + 88), v60);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_25C456040(uint64_t a1, void (*a2)(id, unint64_t, uint64_t))
{
  v3 = sub_25C4C80B0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = CUXPCDecodeNSErrorIfNeeded();
  if (v7)
  {
    v8 = v7;
    v16 = v7;
    a2(v8, 0, 1);

    v9 = v16;
  }

  else
  {
    swift_getObjectType();
    (*(v4 + 104))(v6, *MEMORY[0x277D35878], v3);
    sub_25C4C80A0();
    (*(v4 + 8))(v6, v3);
    v10 = sub_25C4C86A0();
    v12 = v11;

    if (v12 >> 60 == 15)
    {
      v13 = objc_allocWithZone(sub_25C4C7B80());
      v14 = sub_25C4C7B90();
      a2(v14, 0, 1);
    }

    else
    {
      sub_25C459FB0(v10, v12);
      a2(v10, v12, 0);
      sub_25C45A5B8(v10, v12);
      sub_25C45A5B8(v10, v12);
    }
  }
}

uint64_t sub_25C456294(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_25C4562F4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v72 = a6;
  v73 = a7;
  v74 = a1;
  v11 = sub_25C4C7D60();
  v66 = *(v11 - 8);
  v67 = v11;
  MEMORY[0x28223BE20](v11);
  v65 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_25C4C80B0();
  v13 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25C4C7B20();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FC0AAB0 != -1)
  {
    swift_once();
  }

  v20 = sub_25C4C7BD0();
  __swift_project_value_buffer(v20, qword_27FC0AAB8);
  v21 = *(v17 + 16);
  v70 = a3;
  v21(v19, a3, v16);
  sub_25C459FB0(a4, a5);
  sub_25C459FB0(a4, a5);

  v22 = a2;
  v23 = sub_25C4C7BB0();
  v24 = sub_25C4C86F0();

  v25 = os_log_type_enabled(v23, v24);
  v75 = a4;
  v68 = v22;
  v64 = a5;
  if (!v25)
  {
    sub_25C45A004(a4, a5);
    sub_25C45A004(a4, a5);

    (*(v17 + 8))(v19, v16);
LABEL_16:
    empty = xpc_dictionary_create_empty();
    v39 = *MEMORY[0x277D35858];
    v63 = *(v13 + 104);
    v40 = v13;
    v41 = v69;
    v63(v15, v39, v69);
    sub_25C4C80A0();
    v42 = *(v40 + 8);
    v76 = v40 + 8;
    v62 = v42;
    v42(v15, v41);
    v43 = v65;
    v44 = v66;
    v45 = v67;
    (*(v66 + 104))(v65, *MEMORY[0x277D35718], v67);
    sub_25C4C7D50();
    (*(v44 + 8))(v43, v45);
    v46 = sub_25C4C8570();

    v47 = sub_25C4C8570();

    v48 = empty;
    xpc_dictionary_set_string(empty, (v46 + 32), (v47 + 32));

    v49 = v63;
    v63(v15, *MEMORY[0x277D35880], v41);
    sub_25C4C80A0();
    v50 = v62;
    v62(v15, v41);
    v51 = sub_25C4C8570();

    v52 = sub_25C4C8570();
    xpc_dictionary_set_string(v48, (v51 + 32), (v52 + 32));

    swift_getObjectType();
    v49(v15, *MEMORY[0x277D35888], v41);
    sub_25C4C80A0();
    v50(v15, v41);
    sub_25C4C86E0();

    v49(v15, *MEMORY[0x277D358A8], v41);
    sub_25C4C80A0();
    v50(v15, v41);
    v53 = sub_25C4C7AC0();
    v54 = sub_25C4C8570();

    xpc_dictionary_set_value(v48, (v54 + 32), v53);
    swift_unknownObjectRelease();

    v55 = *(*(v71 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__xpcConnection) + 88);
    v56 = *(v71 + 48);
    v57 = swift_allocObject();
    v58 = v73;
    *(v57 + 16) = v72;
    *(v57 + 24) = v58;
    aBlock[4] = sub_25C45A058;
    aBlock[5] = v57;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25C456294;
    aBlock[3] = &block_descriptor;
    v59 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    xpc_connection_send_message_with_reply(v55, v48, v56, v59);
    _Block_release(v59);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  v76 = v13;
  v26 = swift_slowAlloc();
  v63 = swift_slowAlloc();
  aBlock[0] = v63;
  *v26 = 136315650;
  *(v26 + 4) = sub_25C458990(v74, v22, aBlock);
  *(v26 + 12) = 2080;
  sub_25C459F68(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v27 = sub_25C4C89A0();
  v28 = a5;
  v30 = v29;
  (*(v17 + 8))(v19, v16);
  v31 = sub_25C458990(v27, v30, aBlock);

  *(v26 + 14) = v31;
  *(v26 + 22) = 2048;
  v32 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    v33 = v75;
    if (v32 != 2)
    {
      sub_25C45A004(v75, v28);
      v34 = 0;
      goto LABEL_15;
    }

    v36 = *(v75 + 16);
    v35 = *(v75 + 24);
    sub_25C45A004(v75, v28);
    v34 = v35 - v36;
    if (!__OFSUB__(v35, v36))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
    v33 = v75;
    if (!v32)
    {
      sub_25C45A004(v75, v28);
      v34 = BYTE6(v28);
LABEL_15:
      *(v26 + 24) = v34;
      sub_25C45A004(v33, v28);
      _os_log_impl(&dword_25C452000, v23, v24, "Report operation start: name=%s, uuid=%s, size=%ld", v26, 0x20u);
      v38 = v63;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v38, -1, -1);
      MEMORY[0x25F888630](v26, -1, -1);

      v13 = v76;
      goto LABEL_16;
    }
  }

  result = sub_25C45A004(v33, v28);
  LODWORD(v34) = HIDWORD(v33) - v33;
  if (!__OFSUB__(HIDWORD(v33), v33))
  {
    v34 = v34;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_25C456B2C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a4;
  v68 = a5;
  v8 = sub_25C4C7D60();
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x28223BE20](v8);
  v62 = &empty - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25C4C80B0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &empty - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25C4C7B20();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &empty - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FC0AAB0 != -1)
  {
    swift_once();
  }

  v18 = sub_25C4C7BD0();
  __swift_project_value_buffer(v18, qword_27FC0AAB8);
  v19 = *(v15 + 16);
  v65 = a1;
  v19(v17, a1, v14);
  sub_25C459FB0(a2, a3);
  sub_25C459FB0(a2, a3);
  v20 = sub_25C4C7BB0();
  v21 = sub_25C4C86F0();
  v22 = os_log_type_enabled(v20, v21);
  v69 = a2;
  v61 = a3;
  if (!v22)
  {
    v32 = v13;
    v34 = v10;
    sub_25C45A004(a2, a3);
    sub_25C45A004(a2, a3);

    (*(v15 + 8))(v17, v14);
LABEL_15:
    empty = xpc_dictionary_create_empty();
    v39 = *MEMORY[0x277D35858];
    v40 = v11[13];
    v59 = (v11 + 13);
    v60 = v40;
    v41 = v32;
    v40(v32, v39, v34);
    sub_25C4C80A0();
    v58 = v11[1];
    v58(v32, v34);
    v42 = v62;
    v43 = v63;
    v44 = v64;
    (*(v63 + 104))(v62, *MEMORY[0x277D35728], v64);
    sub_25C4C7D50();
    (*(v43 + 8))(v42, v44);
    v45 = sub_25C4C8570();

    v46 = sub_25C4C8570();

    v47 = empty;
    xpc_dictionary_set_string(empty, (v45 + 32), (v46 + 32));

    swift_getObjectType();
    v48 = v60;
    v60(v41, *MEMORY[0x277D35888], v34);
    sub_25C4C80A0();
    v49 = v58;
    v58(v41, v34);
    sub_25C4C86E0();

    v48(v41, *MEMORY[0x277D358A8], v34);
    sub_25C4C80A0();
    v49(v41, v34);
    v50 = sub_25C4C7AC0();
    v51 = sub_25C4C8570();

    xpc_dictionary_set_value(v47, (v51 + 32), v50);
    swift_unknownObjectRelease();

    v52 = *(*(v66 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__xpcConnection) + 88);
    v53 = *(v66 + 48);
    v54 = swift_allocObject();
    v55 = v68;
    *(v54 + 16) = v67;
    *(v54 + 24) = v55;
    aBlock[4] = sub_25C45A65C;
    aBlock[5] = v54;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25C456294;
    aBlock[3] = &block_descriptor_10;
    v56 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    xpc_connection_send_message_with_reply(v52, v47, v53, v56);
    _Block_release(v56);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  LODWORD(v59) = v21;
  v60 = v11;
  v23 = swift_slowAlloc();
  v58 = swift_slowAlloc();
  aBlock[0] = v58;
  *v23 = 136315394;
  sub_25C459F68(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v24 = sub_25C4C89A0();
  v25 = a3;
  v27 = v26;
  (*(v15 + 8))(v17, v14);
  v28 = sub_25C458990(v24, v27, aBlock);
  v29 = v25;

  *(v23 + 4) = v28;
  *(v23 + 12) = 2048;
  v30 = v25 >> 62;
  if ((v25 >> 62) > 1)
  {
    v31 = v69;
    if (v30 != 2)
    {
      v32 = v13;
      sub_25C45A004(v69, v29);
      v33 = 0;
      goto LABEL_14;
    }

    v36 = *(v69 + 16);
    v35 = *(v69 + 24);
    result = sub_25C45A004(v69, v29);
    v33 = v35 - v36;
    if (!__OFSUB__(v35, v36))
    {
      v32 = v13;
      goto LABEL_14;
    }

    __break(1u);
  }

  else
  {
    v31 = v69;
    if (!v30)
    {
      v32 = v13;
      sub_25C45A004(v69, v29);
      v33 = BYTE6(v29);
LABEL_14:
      v34 = v10;
      *(v23 + 14) = v33;
      sub_25C45A004(v31, v29);
      _os_log_impl(&dword_25C452000, v20, v59, "Report operation update: uuid=%s, size=%ld", v23, 0x16u);
      v38 = v58;
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x25F888630](v38, -1, -1);
      MEMORY[0x25F888630](v23, -1, -1);

      v11 = v60;
      goto LABEL_15;
    }

    result = sub_25C45A004(v69, v29);
    LODWORD(v33) = HIDWORD(v31) - v31;
    if (!__OFSUB__(HIDWORD(v31), v31))
    {
      v32 = v13;
      v33 = v33;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25C457298(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a4;
  v52 = a5;
  v8 = sub_25C4C7D60();
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x28223BE20](v8);
  v44 = &empty - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_25C4C80B0();
  v48 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v47 = &empty - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25C4C7B20();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &empty - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FC0AAB0 != -1)
  {
    swift_once();
  }

  v15 = sub_25C4C7BD0();
  __swift_project_value_buffer(v15, qword_27FC0AAB8);
  v16 = *(v12 + 16);
  v49 = a3;
  v16(v14, a3, v11);

  v17 = sub_25C4C7BB0();
  v18 = sub_25C4C86F0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_25C458990(a1, a2, aBlock);
    *(v19 + 12) = 2080;
    sub_25C459F68(&unk_27FC0A3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v21 = sub_25C4C89A0();
    v23 = v22;
    (*(v12 + 8))(v14, v11);
    v24 = sub_25C458990(v21, v23, aBlock);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_25C452000, v17, v18, "Report operation cancel: name=%s, uuid=%s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v20, -1, -1);
    MEMORY[0x25F888630](v19, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  empty = xpc_dictionary_create_empty();
  v25 = *MEMORY[0x277D35858];
  v27 = v47;
  v26 = v48;
  v43 = *(v48 + 104);
  v28 = v53;
  v43(v47, v25, v53);
  sub_25C4C80A0();
  v48 = *(v26 + 8);
  (v48)(v27, v28);
  v29 = v44;
  v30 = v45;
  v31 = v46;
  (*(v45 + 104))(v44, *MEMORY[0x277D35720], v46);
  sub_25C4C7D50();
  (*(v30 + 8))(v29, v31);
  v32 = sub_25C4C8570();

  v33 = sub_25C4C8570();

  v34 = empty;
  xpc_dictionary_set_string(empty, (v32 + 32), (v33 + 32));

  swift_getObjectType();
  v35 = v53;
  v43(v27, *MEMORY[0x277D35888], v53);
  sub_25C4C80A0();
  (v48)(v27, v35);
  sub_25C4C86E0();

  v36 = *(*(v50 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__xpcConnection) + 88);
  v37 = *(v50 + 48);
  v38 = swift_allocObject();
  v39 = v52;
  *(v38 + 16) = v51;
  *(v38 + 24) = v39;
  aBlock[4] = sub_25C45A100;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25C456294;
  aBlock[3] = &block_descriptor_16;
  v40 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  xpc_connection_send_message_with_reply(v36, v34, v37, v40);
  _Block_release(v40);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_25C4578B4()
{

  v1 = OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__mode;
  v2 = sub_25C4C7D10();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t *sub_25C4579AC()
{
  v1 = v0;
  v2 = sub_25C4C7B20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27FC0AAB0 != -1)
  {
    swift_once();
  }

  v6 = sub_25C4C7BD0();
  __swift_project_value_buffer(v6, qword_27FC0AAB8);
  v7 = sub_25C4C7BB0();
  v8 = sub_25C4C8700();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_25C452000, v7, v8, "deinit", v9, 2u);
    MEMORY[0x25F888630](v9, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC11NexusDaemon30NXServerDaemonOperationHandler__operationUUID, v2);
    swift_beginAccess();
    sub_25C457C6C(0, v5);
    swift_endAccess();
  }

  if (swift_weakLoadStrong())
  {

    (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC11NexusDaemon30NXServerDaemonOperationHandler__operationUUID, v2);
    sub_25C475DA4(v5);

    (*(v3 + 8))(v5, v2);
  }

  sub_25C45A2C8(v1[2], v1[3]);
  sub_25C45A2C8(v1[4], v1[5]);
  sub_25C45A2C8(v1[6], v1[7]);

  (*(v3 + 8))(v1 + OBJC_IVAR____TtC11NexusDaemon30NXServerDaemonOperationHandler__operationUUID, v2);
  swift_weakDestroy();
  return v1;
}

uint64_t sub_25C457C6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_25C459718(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_25C4C7B20();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_25C458F84(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_25C459B5C();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_25C4C7B20();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_25C4593F8(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_25C4C7B20();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_25C457E44(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_25C457EA0(uint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = OBJC_IVAR____TtC11NexusDaemon30NXServerDaemonOperationHandler__operationUUID;
    v12 = sub_25C459F68(&qword_27FC0A168, type metadata accessor for NXServerDaemonOperationHandler, &unk_25C4C9820);

    sub_25C475AFC(v4 + v11, v4, v12);

    v15 = OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__operationHandlers;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v10 + v15);
    *(v10 + v15) = 0x8000000000000000;
    sub_25C459718(v4, v4 + v11, isUniquelyReferenced_nonNull_native);
    *(v10 + v15) = v17;
    swift_endAccess();
    sub_25C4562F4(*(v4 + 64), *(v4 + 72), v4 + v11, a1, a2, a3, a4);
  }

  else
  {
    v13 = objc_allocWithZone(sub_25C4C7B80());
    v14 = sub_25C4C7B90();
    a3();
  }
}

void sub_25C458094(uint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__operationHandlers;
    swift_beginAccess();
    if (*(*(v11 + v12) + 16) && (v13 = OBJC_IVAR____TtC11NexusDaemon30NXServerDaemonOperationHandler__operationUUID, sub_25C458F84(v5 + OBJC_IVAR____TtC11NexusDaemon30NXServerDaemonOperationHandler__operationUUID), (v14 & 1) != 0))
    {
      swift_endAccess();
      sub_25C456B2C(v5 + v13, a1, a2, a3, a4);
    }

    else
    {
      swift_endAccess();
      v15 = objc_allocWithZone(sub_25C4C7B80());
      v16 = sub_25C4C7B90();
      a3();
    }
  }

  else
  {
    v17 = objc_allocWithZone(sub_25C4C7B80());
    v18 = sub_25C4C7B90();
    a3();
  }
}

uint64_t sub_25C458224(uint64_t (*a1)(void), uint64_t a2)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return a1();
  }

  v5 = OBJC_IVAR____TtC11NexusDaemon30NXServerDaemonOperationHandler__operationUUID;

  v6 = v2;
  sub_25C475DA4(v2 + v5);

  v7 = *(v2 + 64);
  v8 = *(v6 + 72);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v10;
  v11[4] = a1;
  v11[5] = a2;

  sub_25C457298(v7, v8, v6 + v5, sub_25C45A340, v11);
}

uint64_t sub_25C4583B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_25C4C7B20();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      (*(v7 + 16))(v9, v11 + OBJC_IVAR____TtC11NexusDaemon30NXServerDaemonOperationHandler__operationUUID, v6);
      swift_beginAccess();
      sub_25C457C6C(0, v9);
      swift_endAccess();
    }

    a4(a1);
  }

  return result;
}

uint64_t sub_25C45858C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_25C45A2B8(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_25C4585DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_25C45A2C8(v5, v6);
}

uint64_t sub_25C458680()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_25C45A2B8(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_25C4586D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_25C45A2C8(v5, v6);
}

uint64_t sub_25C458774()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  sub_25C45A2B8(v1, *(v0 + 56));
  return v1;
}

uint64_t sub_25C4587C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_25C45A2C8(v5, v6);
}

char *sub_25C458868(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A760, &qword_25C4C9998);
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

unint64_t sub_25C458990(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25C458A5C(v11, 0, 0, 1, a1, a2);
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
    sub_25C45A550(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_25C458A5C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25C458B68(a5, a6);
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
    result = sub_25C4C8910();
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

void *sub_25C458B68(uint64_t a1, unint64_t a2)
{
  v3 = sub_25C458BB4(a1, a2);
  sub_25C458CE4(&unk_286E22050);
  return v3;
}

void *sub_25C458BB4(uint64_t a1, unint64_t a2)
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

  v6 = sub_25C458DD0(v5, 0);
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

  result = sub_25C4C8910();
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
        v10 = sub_25C4C85B0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25C458DD0(v10, 0);
        result = sub_25C4C88E0();
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

uint64_t sub_25C458CE4(uint64_t result)
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

  result = sub_25C458E44(result, v11, 1, v3);
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

void *sub_25C458DD0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A290, &qword_25C4C9990);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25C458E44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A290, &qword_25C4C9990);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

unint64_t sub_25C458F84(uint64_t a1)
{
  sub_25C4C7B20();
  sub_25C459F68(&unk_27FC0A960, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_25C4C8510();

  return sub_25C45999C(a1, v2);
}

uint64_t sub_25C45901C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25C4C7B20();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A170, &qword_25C4C9988);
  v39 = v4;
  result = sub_25C4C8970();
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

      sub_25C459F68(&unk_27FC0A960, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_25C4C8510();
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

unint64_t sub_25C4593F8(int64_t a1, uint64_t a2)
{
  v40 = sub_25C4C7B20();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_25C4C8810();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_25C459F68(&unk_27FC0A960, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_25C4C8510();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_25C459718(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25C4C7B20();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_25C458F84(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_25C459B5C();
      goto LABEL_7;
    }

    sub_25C45901C(v17, a3 & 1);
    v22 = sub_25C458F84(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_25C4598E4(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_25C4C8A20();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_25C4598E4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25C4C7B20();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_25C45999C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_25C4C7B20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_25C459F68(&qword_27FC0A470, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_25C4C8530();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

char *sub_25C459B5C()
{
  v1 = v0;
  v33 = sub_25C4C7B20();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A170, &qword_25C4C9988);
  v3 = *v0;
  v4 = sub_25C4C8960();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_25C459DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 16) = 0u;
  swift_weakInit();
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  v8 = OBJC_IVAR____TtC11NexusDaemon30NXServerDaemonOperationHandler__operationUUID;
  v9 = sub_25C4C7B20();
  (*(*(v9 - 8) + 32))(v4 + v8, a3, v9);
  swift_beginAccess();
  swift_weakAssign();
  return v4;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25C459EF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A150, &qword_25C4C9810);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C459F68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25C459FB0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_25C45A004(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25C45A074(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = CUXPCDecodeNSErrorIfNeeded();
  v2();
}

uint64_t sub_25C45A0C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_25C45A100(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (v3)
  {
    v4 = v3;
    if (qword_27FC0AAB0 != -1)
    {
      swift_once();
    }

    v5 = sub_25C4C7BD0();
    __swift_project_value_buffer(v5, qword_27FC0AAB8);
    v6 = v4;
    v7 = sub_25C4C7BB0();
    v8 = sub_25C4C8710();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_25C4C8A30();
      v13 = sub_25C458990(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_25C452000, v7, v8, "### Operation cancel failed: error=%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x25F888630](v10, -1, -1);
      MEMORY[0x25F888630](v9, -1, -1);
    }

    v14 = v6;
    (v2)(v4);
  }

  else
  {
    v2();
  }
}

uint64_t sub_25C45A2B8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25C45A2C8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25C45A2F8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25C45A374(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25C45A3AC(uint64_t a1)
{
  result = sub_25C4C7D10();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_25C45A4A0(uint64_t a1)
{
  result = sub_25C4C7B20();
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

uint64_t sub_25C45A550(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25C45A5B8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25C45A004(result, a2);
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

uint64_t sub_25C45A660()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0ABA8);
  __swift_project_value_buffer(v0, qword_27FC0ABA8);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

uint64_t NXNANEndpoint.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NXNANEndpoint.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double sub_25C45A734@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t sub_25C45A740@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25C45C5C4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_25C45A2B8(v4, v5);
}

uint64_t sub_25C45A7D4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25C45C604;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_25C45A2B8(v3, v4);
  return sub_25C45A2C8(v8, v9);
}

uint64_t NXNANSubscriberDarwin.endpointFoundOrChangedHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_25C45A2B8(v1, *(v0 + 40));
  return v1;
}

uint64_t NXNANSubscriberDarwin.endpointFoundOrChangedHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_25C45A2C8(v5, v6);
}

uint64_t sub_25C45A984@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25C45C58C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_25C45A2B8(v4, v5);
}

uint64_t sub_25C45AA18(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25C45C564;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  sub_25C45A2B8(v3, v4);
  return sub_25C45A2C8(v8, v9);
}

uint64_t NXNANSubscriberDarwin.endpointLostHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  sub_25C45A2B8(v1, *(v0 + 56));
  return v1;
}

uint64_t NXNANSubscriberDarwin.endpointLostHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_25C45A2C8(v5, v6);
}

uint64_t sub_25C45ABC8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25C45C53C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_25C45A2B8(v4, v5);
}

uint64_t sub_25C45AC5C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25C45C514;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 72);
  v9 = *(v7 + 80);
  *(v7 + 72) = v6;
  *(v7 + 80) = v5;
  sub_25C45A2B8(v3, v4);
  return sub_25C45A2C8(v8, v9);
}

uint64_t NXNANSubscriberDarwin.invalidationHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  sub_25C45A2B8(v1, *(v0 + 80));
  return v1;
}

uint64_t NXNANSubscriberDarwin.invalidationHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return sub_25C45A2C8(v5, v6);
}

uint64_t NXNANSubscriberDarwin.serviceType.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 88);

  return v1;
}

uint64_t NXNANSubscriberDarwin.serviceType.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
}

double NXNANSubscriberDarwin.__allocating_init(dispatchQueue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  return result;
}

uint64_t NXNANSubscriberDarwin.init(dispatchQueue:)(uint64_t a1)
{
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

Swift::Void __swiftcall NXNANSubscriberDarwin.activate()()
{
  v1 = sub_25C4C84C0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = v0[3];
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  v7 = sub_25C4C84E0();
  (*(v2 + 8))(v4, v1);
  if (v7)
  {
    swift_beginAccess();
    if (!v0[2])
    {
      v8 = [objc_allocWithZone(MEMORY[0x277D028A8]) init];
      v9 = v0[2];
      v0[2] = v8;
      v10 = v8;

      [v10 setDispatchQueue_];
      [v10 setControlFlags_];
      swift_beginAccess();
      if (v0[12])
      {

        v11 = sub_25C4C8540();
      }

      else
      {
        v11 = 0;
      }

      [v10 setServiceType_];

      v12 = swift_allocObject();
      swift_weakInit();
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      *(v14 + 24) = v13;
      v36 = sub_25C45B600;
      v37 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_25C45B768;
      v35 = &block_descriptor_0;
      v15 = _Block_copy(&aBlock);

      [v10 setInvalidationHandler_];
      _Block_release(v15);
      v16 = swift_allocObject();
      swift_weakInit();
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = v16;
      *(v18 + 24) = v17;
      v36 = sub_25C45B7C8;
      v37 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_25C45B97C;
      v35 = &block_descriptor_15;
      v19 = _Block_copy(&aBlock);

      [v10 setEndpointFoundHandler_];
      _Block_release(v19);
      v20 = swift_allocObject();
      swift_weakInit();
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v20;
      *(v22 + 24) = v21;
      v36 = sub_25C45B9E4;
      v37 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_25C45B97C;
      v35 = &block_descriptor_23;
      v23 = _Block_copy(&aBlock);

      [v10 setEndpointLostHandler_];
      _Block_release(v23);
      v24 = swift_allocObject();
      swift_weakInit();
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = swift_allocObject();
      *(v26 + 16) = v24;
      *(v26 + 24) = v25;
      v36 = sub_25C45B7C8;
      v37 = v26;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_25C45BB98;
      v35 = &block_descriptor_31;
      v27 = _Block_copy(&aBlock);

      [v10 setEndpointChangedHandler_];
      _Block_release(v27);
      v28 = swift_allocObject();
      swift_weakInit();
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v30 = swift_allocObject();
      *(v30 + 16) = v28;
      *(v30 + 24) = v29;
      v36 = sub_25C45BC4C;
      v37 = v30;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_25C45BE80;
      v35 = &block_descriptor_39;
      v31 = _Block_copy(&aBlock);

      [v10 activateWithCompletion_];
      _Block_release(v31);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25C45B590()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C45B5C8()
{
  MEMORY[0x25F8886B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C45B600()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      swift_beginAccess();
      v4 = *(v1 + 16);
      if (v4)
      {
        v5 = v3 == v4;
      }

      else
      {
        v5 = 0;
      }

      if (v5)
      {
        *(v1 + 16) = 0;

        sub_25C45B6B4();
      }
    }
  }

  return result;
}

void sub_25C45B6B4()
{
  if (*(v0 + 64) == 1)
  {
    swift_beginAccess();
    if (!*(v0 + 16))
    {
      swift_beginAccess();
      v1 = *(v0 + 72);
      if (v1)
      {
        v2 = *(v0 + 80);

        v1(v3);
        sub_25C45A2C8(v1, v2);
        v4 = *(v0 + 72);
      }

      else
      {
        v4 = 0;
      }

      v5 = *(v0 + 80);
      *(v0 + 72) = 0;
      *(v0 + 80) = 0;
      sub_25C45A2C8(v4, v5);
    }
  }
}

uint64_t sub_25C45B768(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_25C45B7C8(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      swift_beginAccess();
      v6 = v3[2];
      if (v6 && v5 == v6 && (v7 = [a1 identifier]) != 0)
      {
        v8 = v7;
        v9 = sub_25C4C8550();
        v11 = v10;

        v12 = [a1 name];
        if (v12)
        {
          v13 = v12;
          v14 = sub_25C4C8550();
          v16 = v15;
        }

        else
        {

          v14 = v9;
          v16 = v11;
        }

        swift_beginAccess();
        v17 = v3[4];
        if (v17)
        {
          v18 = v3[5];
          v19[0] = v9;
          v19[1] = v11;
          v19[2] = v14;
          v19[3] = v16;

          v17(v19);

          sub_25C45A2C8(v17, v18);
        }
      }

      else
      {
      }
    }
  }

  return result;
}

void sub_25C45B97C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void *sub_25C45B9E4(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      swift_beginAccess();
      v6 = v3[2];
      if (v6 && v5 == v6 && (v7 = [a1 identifier]) != 0)
      {
        v8 = v7;
        v9 = sub_25C4C8550();
        v11 = v10;

        v12 = [a1 name];
        if (v12)
        {
          v13 = v12;
          v14 = sub_25C4C8550();
          v16 = v15;
        }

        else
        {

          v14 = v9;
          v16 = v11;
        }

        swift_beginAccess();
        v17 = v3[6];
        if (v17)
        {
          v18 = v3[7];
          v19[0] = v9;
          v19[1] = v11;
          v19[2] = v14;
          v19[3] = v16;

          v17(v19);

          sub_25C45A2C8(v17, v18);
        }
      }

      else
      {
      }
    }
  }

  return result;
}

void sub_25C45BB98(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t objectdestroy_6Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_25C45BC4C(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
LABEL_6:

    return;
  }

  v5 = v4;
  swift_beginAccess();
  v6 = *(v3 + 16);
  if (!v6 || v5 != v6 || !a1)
  {

    goto LABEL_6;
  }

  v7 = a1;
  if (qword_27FC0ABA0 != -1)
  {
    swift_once();
  }

  v8 = sub_25C4C7BD0();
  __swift_project_value_buffer(v8, qword_27FC0ABA8);
  v9 = a1;
  v10 = sub_25C4C7BB0();
  v11 = sub_25C4C8710();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_25C4C8A30();
    v16 = sub_25C458990(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_25C452000, v10, v11, "### NAN setup subscriber start failed: error=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x25F888630](v13, -1, -1);
    MEMORY[0x25F888630](v12, -1, -1);
  }

  [v5 invalidate];
  v17 = *(v3 + 16);
  *(v3 + 16) = 0;
}

void sub_25C45BE80(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

Swift::Void __swiftcall NXNANSubscriberDarwin.invalidate()()
{
  v1 = sub_25C4C84C0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 24);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_25C4C84E0();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if ((*(v0 + 64) & 1) == 0)
    {
      *(v0 + 64) = 1;
      swift_beginAccess();
      [*(v0 + 16) invalidate];
      sub_25C45B6B4();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t NXNANSubscriberDarwin.deinit()
{
  sub_25C45A2C8(*(v0 + 32), *(v0 + 40));
  sub_25C45A2C8(*(v0 + 48), *(v0 + 56));
  sub_25C45A2C8(*(v0 + 72), *(v0 + 80));

  return v0;
}

uint64_t NXNANSubscriberDarwin.__deallocating_deinit()
{
  sub_25C45A2C8(*(v0 + 32), *(v0 + 40));
  sub_25C45A2C8(*(v0 + 48), *(v0 + 56));
  sub_25C45A2C8(*(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_25C45C0E4()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  sub_25C45A2B8(v1, *(v0 + 80));
  return v1;
}

uint64_t sub_25C45C134(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return sub_25C45A2C8(v5, v6);
}

uint64_t sub_25C45C1D8()
{
  swift_beginAccess();
  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_25C45C224(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25C45C3F4(uint64_t a1, int a2)
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

uint64_t sub_25C45C43C(uint64_t result, int a2, int a3)
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

uint64_t sub_25C45C4DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25C45C608()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0AC48);
  __swift_project_value_buffer(v0, qword_27FC0AC48);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

uint64_t sub_25C45C67C(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_25C4651B0(a1);

  return v2;
}

uint64_t sub_25C45C6C8()
{
  v1 = v0;
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_25C4C88F0();
  v48 = 0;
  v49 = 0xE000000000000000;
  MEMORY[0x25F887A50](0xD00000000000001ELL, 0x800000025C4D0260);
  v2 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__subscribers;
  swift_beginAccess();
  v45[0] = *(*(v0 + v2) + 16);
  v3 = sub_25C4C89A0();
  MEMORY[0x25F887A50](v3);

  MEMORY[0x25F887A50](0xD00000000000001ALL, 0x800000025C4D0280);
  v4 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredOperations;
  swift_beginAccess();
  v44[0] = *(*(v1 + v4) + 16);
  v5 = sub_25C4C89A0();
  MEMORY[0x25F887A50](v5);

  MEMORY[0x25F887A50](0x6E69646E6570202CLL, 0xEA00000000003D67);
  v6 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__pendingOperations;
  swift_beginAccess();
  v43[0] = *(*(v1 + v6) + 16);
  v7 = sub_25C4C89A0();
  MEMORY[0x25F887A50](v7);

  MEMORY[0x25F887A50](0xD000000000000019, 0x800000025C4D02A0);
  v8 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredRequests;
  swift_beginAccess();
  v42[0] = *(*(v1 + v8) + 16);
  v9 = sub_25C4C89A0();
  MEMORY[0x25F887A50](v9);

  MEMORY[0x25F887A50](0x6E69646E6570202CLL, 0xEA00000000003D67);
  v10 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__pendingRequests;
  swift_beginAccess();
  v40 = *(*(v1 + v10) + 16);
  v11 = sub_25C4C89A0();
  v13 = v12;
  MEMORY[0x25F887A50](v11);

  MEMORY[0x25F887A50](0xA3D3D207DLL, 0xE500000000000000);
  v14 = *(v1 + v2);
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v39 = v14;

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  if (v18)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    if (v22 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v22);
    ++v20;
    if (v18)
    {
      v20 = v22;
      do
      {
LABEL_8:
        v13 = *(*(v39 + 56) + ((v20 << 9) | (8 * __clz(__rbit64(v18)))));
        v40 = 0;
        v41 = 0xE000000000000000;

        sub_25C4C88F0();
        v24 = v13[2];
        v23 = v13[3];

        v40 = v24;
        v41 = v23;
        MEMORY[0x25F887A50](0x3D736469203ALL, 0xE600000000000000);
        if (v13[5])
        {
          v25 = v13[4];
          v26 = v13[5];
        }

        else
        {
          v26 = 0xE300000000000000;
          v25 = 7104878;
        }

        MEMORY[0x25F887A50](v25, v26);

        MEMORY[0x25F887A50](0x74617265706F202CLL, 0xED00003D736E6F69);
        v27 = sub_25C4C8620();
        MEMORY[0x25F887A50](v27);

        MEMORY[0x25F887A50](0x736575716572202CLL, 0xEB000000003D7374);
        v28 = sub_25C4C8620();
        MEMORY[0x25F887A50](v28);

        MEMORY[0x25F887A50](10, 0xE100000000000000);
        v29 = v40;
        v30 = v41;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_25C458868(0, *(v21 + 2) + 1, 1, v21);
        }

        v32 = *(v21 + 2);
        v31 = *(v21 + 3);
        if (v32 >= v31 >> 1)
        {
          v21 = sub_25C458868((v31 > 1), v32 + 1, 1, v21);
        }

        v18 &= v18 - 1;

        *(v21 + 2) = v32 + 1;
        v33 = &v21[16 * v32];
        *(v33 + 4) = v29;
        *(v33 + 5) = v30;
      }

      while (v18);
    }
  }

  v40 = v21;

  sub_25C4623E8(&v40);

  v34 = *(v40 + 2);
  if (v34)
  {
    v35 = v40 + 40;
    do
    {
      v36 = *(v35 - 1);
      v37 = *v35;

      MEMORY[0x25F887A50](v36, v37);

      v35 += 16;
      --v34;
    }

    while (v34);
  }

  return v48;
}

BOOL sub_25C45CC38()
{
  v1 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredOperations;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
    return 1;
  }

  v3 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredRequests;
  swift_beginAccess();
  return *(*(v0 + v3) + 16) != 0;
}

uint64_t sub_25C45CCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  v7(a2, a3, a4);

  return swift_unknownObjectRelease();
}

void sub_25C45CD38(int a1)
{
  if (qword_27FC0AC40 != -1)
  {
    swift_once();
  }

  v2 = sub_25C4C7BD0();
  __swift_project_value_buffer(v2, qword_27FC0AC48);
  oslog = sub_25C4C7BB0();
  v3 = sub_25C4C8710();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1;
    _os_log_impl(&dword_25C452000, oslog, v3, "### XPC publisher error: %d", v4, 8u);
    MEMORY[0x25F888630](v4, -1, -1);
  }
}

uint64_t sub_25C45CE38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_25C45CE8C(uint64_t a1, uint64_t a2)
{
  v5 = sub_25C4C8470();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25C4C8490();
  v9 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + 24);
  aBlock[4] = a1;
  v18 = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25C4676B4;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  sub_25C4C8480();
  v16 = MEMORY[0x277D84F90];
  sub_25C4657D0(&unk_27FC0A180, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A7B0, &qword_25C4C9AE0);
  sub_25C465818(&qword_27FC0A190, &unk_27FC0A7B0, &qword_25C4C9AE0);
  sub_25C4C8800();
  MEMORY[0x25F887C10](0, v11, v8, v12);
  _Block_release(v12);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v15);
}

void sub_25C45D11C()
{
  v1 = type metadata accessor for NXXPCPendingRequest(0);
  v82 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v81 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1E0, &qword_25C4C9B18);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v88 = (&v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v83 = (&v79 - v6);
  v7 = type metadata accessor for NXXPCPendingOperation(0);
  v86 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v85 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1A0, &qword_25C4C9AF0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v89 = (&v79 - v13);
  v14 = *(v0 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__xpcPublisher);
  *(v0 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__xpcPublisher) = 0;

  v15 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__pendingOperations;
  swift_beginAccess();
  v80 = v15;
  v90 = v0;
  v16 = *(v0 + v15);
  v19 = *(v16 + 64);
  v18 = v16 + 64;
  v17 = v19;
  v20 = 1 << *(*(v0 + v15) + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v87 = *(v0 + v15);

  v24 = 0;
  v84 = v12;
  v25 = &qword_27FC0A1A8;
  if (!v22)
  {
LABEL_5:
    if (v23 <= v24 + 1)
    {
      v27 = v24 + 1;
    }

    else
    {
      v27 = v23;
    }

    v28 = v27 - 1;
    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v23)
      {
        v37 = v25;
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(v25, &qword_25C4C9AF8);
        (*(*(v41 - 8) + 56))(v12, 1, 1, v41);
        v22 = 0;
        goto LABEL_13;
      }

      v22 = *(v18 + 8 * v26);
      ++v24;
      if (v22)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  while (1)
  {
    v26 = v24;
LABEL_12:
    v29 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v30 = v29 | (v26 << 6);
    v31 = *(*(v87 + 48) + 8 * v30);
    v32 = v85;
    sub_25C465CD4(*(v87 + 56) + *(v86 + 72) * v30, v85, type metadata accessor for NXXPCPendingOperation);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v25, &qword_25C4C9AF8);
    v34 = *(v33 + 48);
    v35 = v84;
    *v84 = v31;
    v36 = v32;
    v12 = v35;
    sub_25C465D3C(v36, &v35[v34], type metadata accessor for NXXPCPendingOperation);
    (*(*(v33 - 8) + 56))(v12, 0, 1, v33);
    v28 = v26;
    v37 = v25;
LABEL_13:
    v38 = v89;
    sub_25C465DA4(v12, v89, &qword_27FC0A1A0, &qword_25C4C9AF0);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(v37, &qword_25C4C9AF8);
    if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
    {
      break;
    }

    v40 = *(v39 + 48);
    sub_25C45D990(*v38, 0x6164696C61766E69, 0xEA00000000006574);
    sub_25C465E0C(v38 + v40, type metadata accessor for NXXPCPendingOperation);
    v24 = v28;
    v25 = v37;
    if (!v22)
    {
      goto LABEL_5;
    }
  }

  v42 = v90;
  *(v90 + v80) = MEMORY[0x277D84F98];

  v43 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__pendingRequests;
  swift_beginAccess();
  v44 = *(v42 + v43);
  v45 = *(v44 + 64);
  v87 = v44 + 64;
  v46 = 1 << *(v44 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & v45;
  v85 = v43;
  v86 = (v46 + 63) >> 6;
  v89 = v44;

  v49 = 0;
  v50 = &qword_27FC0A1E8;
  v51 = v83;
  if (!v48)
  {
LABEL_21:
    if (v86 <= v49 + 1)
    {
      v53 = v49 + 1;
    }

    else
    {
      v53 = v86;
    }

    v54 = v53 - 1;
    while (1)
    {
      v52 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        goto LABEL_45;
      }

      if (v52 >= v86)
      {
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(v50, &qword_25C4C9B20);
        v67 = v88;
        (*(*(v66 - 8) + 56))(v88, 1, 1, v66);
        v63 = v67;
        v48 = 0;
        goto LABEL_29;
      }

      v48 = *(v87 + 8 * v52);
      ++v49;
      if (v48)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v52 = v49;
LABEL_28:
    v55 = __clz(__rbit64(v48));
    v48 &= v48 - 1;
    v56 = v55 | (v52 << 6);
    v57 = *(v89[6] + 8 * v56);
    v58 = v81;
    sub_25C465CD4(v89[7] + *(v82 + 72) * v56, v81, type metadata accessor for NXXPCPendingRequest);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(v50, &qword_25C4C9B20);
    v60 = *(v59 + 48);
    v61 = v50;
    v62 = v88;
    *v88 = v57;
    sub_25C465D3C(v58, v62 + v60, type metadata accessor for NXXPCPendingRequest);
    (*(*(v59 - 8) + 56))(v62, 0, 1, v59);
    v54 = v52;
    v63 = v62;
    v50 = v61;
    v51 = v83;
LABEL_29:
    sub_25C465DA4(v63, v51, &qword_27FC0A1E0, &qword_25C4C9B18);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(v50, &qword_25C4C9B20);
    if ((*(*(v64 - 8) + 48))(v51, 1, v64) == 1)
    {
      break;
    }

    v65 = *(v64 + 48);
    sub_25C45DEA4(*v51, 0x6164696C61766E69, 0xEA00000000006574);
    sub_25C465E0C(v51 + v65, type metadata accessor for NXXPCPendingRequest);
    v49 = v54;
    if (!v48)
    {
      goto LABEL_21;
    }
  }

  v68 = v90;
  *(v90 + v85) = MEMORY[0x277D84F98];

  v69 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__subscribers;
  swift_beginAccess();
  v70 = *(v68 + v69);
  v71 = 1 << *(v70 + 32);
  v72 = -1;
  if (v71 < 64)
  {
    v72 = ~(-1 << v71);
  }

  v73 = v72 & *(v70 + 64);
  v74 = (v71 + 63) >> 6;

  v75 = 0;
  while (v73)
  {
    v76 = v75;
LABEL_41:
    v77 = __clz(__rbit64(v73));
    v73 &= v73 - 1;
    v78 = *(*(*(v70 + 56) + ((v76 << 9) | (8 * v77))) + 48);

    sub_25C45E3B8(v78);
  }

  while (1)
  {
    v76 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      break;
    }

    if (v76 >= v74)
    {

      return;
    }

    v73 = *(v70 + 64 + 8 * v76);
    ++v75;
    if (v73)
    {
      v75 = v76;
      goto LABEL_41;
    }
  }

LABEL_46:
  __break(1u);
}

uint64_t sub_25C45D990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v51 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A198, &qword_25C4C9AE8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for NXXPCPendingOperation(0);
  v50 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v43 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v43 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  v20 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__pendingOperations;
  swift_beginAccess();
  v21 = *(v3 + v20);
  if (!*(v21 + 16))
  {
    return swift_endAccess();
  }

  v22 = sub_25C462F38(v51);
  if ((v23 & 1) == 0)
  {
    return swift_endAccess();
  }

  sub_25C465CD4(*(v21 + 56) + *(v50 + 72) * v22, v17, type metadata accessor for NXXPCPendingOperation);
  sub_25C465D3C(v17, v19, type metadata accessor for NXXPCPendingOperation);
  swift_endAccess();
  if (qword_27FC0AC40 != -1)
  {
    swift_once();
  }

  v24 = sub_25C4C7BD0();
  __swift_project_value_buffer(v24, qword_27FC0AC48);
  sub_25C465CD4(v19, v14, type metadata accessor for NXXPCPendingOperation);
  sub_25C465CD4(v19, v11, type metadata accessor for NXXPCPendingOperation);
  v25 = a3;

  v26 = sub_25C4C7BB0();
  v27 = sub_25C4C8710();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v48 = v7;
    v29 = v28;
    v47 = swift_slowAlloc();
    v52[0] = v47;
    *v29 = 136315650;
    v46 = v27;
    v44 = v25;
    v31 = *v14;
    v30 = v14[1];

    v45 = v26;
    sub_25C465E0C(v14, type metadata accessor for NXXPCPendingOperation);
    v32 = sub_25C458990(v31, v30, v52);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    v33 = *(v11 + 2);
    v34 = *(v11 + 3);

    sub_25C465E0C(v11, type metadata accessor for NXXPCPendingOperation);
    v35 = sub_25C458990(v33, v34, v52);

    *(v29 + 14) = v35;
    *(v29 + 22) = 2080;
    *(v29 + 24) = sub_25C458990(v49, v44, v52);
    v36 = v45;
    _os_log_impl(&dword_25C452000, v45, v46, "### Subscriber operation failed: id=%s, operation=%s, reason=%s", v29, 0x20u);
    v37 = v47;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v37, -1, -1);
    v38 = v29;
    v7 = v48;
    MEMORY[0x25F888630](v38, -1, -1);
  }

  else
  {

    sub_25C465E0C(v11, type metadata accessor for NXXPCPendingOperation);
    sub_25C465E0C(v14, type metadata accessor for NXXPCPendingOperation);
  }

  (*(v50 + 56))(v7, 1, 1, v8);
  swift_beginAccess();
  sub_25C45F6B0(v7, v51);
  swift_endAccess();
  swift_getObjectType();
  sub_25C4C8790();
  v40 = *&v19[*(v8 + 28)];
  v41 = objc_allocWithZone(sub_25C4C7B80());
  v42 = sub_25C4C7B90();
  v40(v42, 0, 1);

  return sub_25C465E0C(v19, type metadata accessor for NXXPCPendingOperation);
}

uint64_t sub_25C45DEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v51 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1B8, &qword_25C4C9B08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for NXXPCPendingRequest(0);
  v50 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v43 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v43 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  v20 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__pendingRequests;
  swift_beginAccess();
  v21 = *(v3 + v20);
  if (!*(v21 + 16))
  {
    return swift_endAccess();
  }

  v22 = sub_25C462F38(v51);
  if ((v23 & 1) == 0)
  {
    return swift_endAccess();
  }

  sub_25C465CD4(*(v21 + 56) + *(v50 + 72) * v22, v17, type metadata accessor for NXXPCPendingRequest);
  sub_25C465D3C(v17, v19, type metadata accessor for NXXPCPendingRequest);
  swift_endAccess();
  if (qword_27FC0AC40 != -1)
  {
    swift_once();
  }

  v24 = sub_25C4C7BD0();
  __swift_project_value_buffer(v24, qword_27FC0AC48);
  sub_25C465CD4(v19, v14, type metadata accessor for NXXPCPendingRequest);
  sub_25C465CD4(v19, v11, type metadata accessor for NXXPCPendingRequest);
  v25 = a3;

  v26 = sub_25C4C7BB0();
  v27 = sub_25C4C8710();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v48 = v7;
    v29 = v28;
    v47 = swift_slowAlloc();
    v52[0] = v47;
    *v29 = 136315650;
    v46 = v27;
    v44 = v25;
    v31 = *v14;
    v30 = v14[1];

    v45 = v26;
    sub_25C465E0C(v14, type metadata accessor for NXXPCPendingRequest);
    v32 = sub_25C458990(v31, v30, v52);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    v33 = *(v11 + 2);
    v34 = *(v11 + 3);

    sub_25C465E0C(v11, type metadata accessor for NXXPCPendingRequest);
    v35 = sub_25C458990(v33, v34, v52);

    *(v29 + 14) = v35;
    *(v29 + 22) = 2080;
    *(v29 + 24) = sub_25C458990(v49, v44, v52);
    v36 = v45;
    _os_log_impl(&dword_25C452000, v45, v46, "### Subscriber request failed: id=%s, request=%s, reason=%s", v29, 0x20u);
    v37 = v47;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v37, -1, -1);
    v38 = v29;
    v7 = v48;
    MEMORY[0x25F888630](v38, -1, -1);
  }

  else
  {

    sub_25C465E0C(v11, type metadata accessor for NXXPCPendingRequest);
    sub_25C465E0C(v14, type metadata accessor for NXXPCPendingRequest);
  }

  (*(v50 + 56))(v7, 1, 1, v8);
  swift_beginAccess();
  sub_25C45F934(v7, v51);
  swift_endAccess();
  swift_getObjectType();
  sub_25C4C8790();
  v40 = *&v19[*(v8 + 32)];
  v41 = objc_allocWithZone(sub_25C4C7B80());
  v42 = sub_25C4C7B90();
  v40(v42, 0, 1);

  return sub_25C465E0C(v19, type metadata accessor for NXXPCPendingRequest);
}

void sub_25C45E3B8(int64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__subscribers;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16))
  {
    v6 = sub_25C462F38(a1);
    if (v7)
    {
      v59 = a1;
      v8 = *(*(v5 + 56) + 8 * v6);
      swift_endAccess();
      v9 = qword_27FC0AC40;

      if (v9 != -1)
      {
        swift_once();
      }

      v10 = sub_25C4C7BD0();
      __swift_project_value_buffer(v10, qword_27FC0AC48);

      v11 = sub_25C4C7BB0();
      v12 = sub_25C4C8720();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v61[0] = v14;
        *v13 = 136315138;
        v15 = v8[2];
        v16 = v8[3];

        v17 = sub_25C458990(v15, v16, v61);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_25C452000, v11, v12, "Remove subscriber: id=%s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x25F888630](v14, -1, -1);
        MEMORY[0x25F888630](v13, -1, -1);
      }

      v18 = v8[5];
      if (v18)
      {
        v19 = v8[4];
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v21 = Strong;
          v22 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_cloudServer;
          swift_beginAccess();
          v23 = *(v21 + v22);
          if (v23)
          {

            v24 = v23;

            sub_25C491524(v19, v18, v8);
          }

          else
          {
          }
        }
      }

      v60 = v8;
      v29 = v8[7];
      v30 = 1 << *(v29 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v32 = v31 & *(v29 + 56);
      v33 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredOperations;
      a1 = (v30 + 63) >> 6;

      v34 = 0;
      while (v32)
      {
LABEL_26:
        v36 = (*(v29 + 48) + ((v34 << 10) | (16 * __clz(__rbit64(v32)))));
        v37 = *v36;
        v38 = v36[1];
        swift_beginAccess();

        v39 = sub_25C462EC0(v37, v38);
        v41 = v40;

        if (v41)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v43 = *(v2 + v33);
          *(v2 + v33) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_25C4642D4();
          }

          sub_25C4637B0(v39, v43);
          *(v2 + v33) = v43;
        }

        v32 &= v32 - 1;
        swift_endAccess();
      }

      while (1)
      {
        v35 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
          goto LABEL_44;
        }

        if (v35 >= a1)
        {
          break;
        }

        v32 = *(v29 + 56 + 8 * v35);
        ++v34;
        if (v32)
        {
          v34 = v35;
          goto LABEL_26;
        }
      }

      v44 = v60[8];
      v45 = 1 << *(v44 + 32);
      v46 = -1;
      if (v45 < 64)
      {
        v46 = ~(-1 << v45);
      }

      v47 = v46 & *(v44 + 56);
      v48 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredRequests;
      a1 = (v45 + 63) >> 6;

      v49 = 0;
      while (v47)
      {
LABEL_39:
        v51 = (*(v44 + 48) + ((v49 << 10) | (16 * __clz(__rbit64(v47)))));
        v52 = *v51;
        v53 = v51[1];
        swift_beginAccess();

        v54 = sub_25C462EC0(v52, v53);
        v56 = v55;

        if (v56)
        {
          v57 = swift_isUniquelyReferenced_nonNull_native();
          v58 = *(v2 + v48);
          *(v2 + v48) = 0x8000000000000000;
          if (!v57)
          {
            sub_25C4642D4();
          }

          sub_25C4637B0(v54, v58);
          *(v2 + v48) = v58;
        }

        v47 &= v47 - 1;
        swift_endAccess();
      }

      while (1)
      {
        v50 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          break;
        }

        if (v50 >= a1)
        {

          swift_beginAccess();
          sub_25C45F5F0(0, v59);
          swift_endAccess();

          return;
        }

        v47 = *(v44 + 56 + 8 * v50);
        ++v49;
        if (v47)
        {
          v49 = v50;
          goto LABEL_39;
        }
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }
  }

  swift_endAccess();
  if (qword_27FC0AC40 != -1)
  {
LABEL_45:
    swift_once();
  }

  v25 = sub_25C4C7BD0();
  __swift_project_value_buffer(v25, qword_27FC0AC48);
  v26 = sub_25C4C7BB0();
  v27 = sub_25C4C8710();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = a1;
    _os_log_impl(&dword_25C452000, v26, v27, "### Remove subscriber not found: token=%llu", v28, 0xCu);
    MEMORY[0x25F888630](v28, -1, -1);
  }
}

BOOL sub_25C45E990(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__xpcPublisher);
  if (v6)
  {
    v12 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredOperations;
    swift_beginAccess();
    v13 = *(v5 + v12);
    v14 = *(v13 + 16);
    v15 = v6;
    if (v14 && (v16 = sub_25C462EC0(a1, a2), (v17 & 1) != 0))
    {
      v29 = v15;
      v18 = *(*(v13 + 56) + 8 * v16);
      swift_endAccess();
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);

      sub_25C45ED20(v19, v20, a1, a2, a3, a4, a5);
      if (qword_27FC0AC40 != -1)
      {
        swift_once();
      }

      v21 = sub_25C4C7BD0();
      __swift_project_value_buffer(v21, qword_27FC0AC48);

      v22 = sub_25C4C7BB0();
      v23 = sub_25C4C8720();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        aBlock[0] = v25;
        *v24 = 136315394;
        *(v24 + 4) = sub_25C458990(v19, v20, aBlock);
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_25C458990(a1, a2, aBlock);
        _os_log_impl(&dword_25C452000, v22, v23, "Subscriber launch: id=%s, operation=%s", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F888630](v25, -1, -1);
        MEMORY[0x25F888630](v24, -1, -1);
      }

      else
      {
      }

      xpc_dictionary_create_empty();
      v26 = swift_allocObject();
      v26[2] = v19;
      v26[3] = v20;
      v26[4] = a1;
      v26[5] = a2;
      aBlock[4] = sub_25C465750;
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25C456294;
      aBlock[3] = &block_descriptor_7;
      v27 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      xpc_event_publisher_fire_with_reply();

      _Block_release(v27);

      swift_unknownObjectRelease_n();
    }

    else
    {
      swift_endAccess();
      sub_25C45ED20(0x746365726964, 0xE600000000000000, a1, a2, a3, a4, a5);
    }
  }

  return v6 != 0;
}

uint64_t sub_25C45ED20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v74 = a6;
  v75 = a7;
  v69 = a5;
  v70 = a1;
  v72 = a3;
  v73 = a4;
  v71 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A198, &qword_25C4C9AE8);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = (&v53 - v9);
  v10 = sub_25C4C8460();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v65 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v64 = &v53 - v13;
  v63 = sub_25C4C84B0();
  v77 = *(v63 - 8);
  v14 = MEMORY[0x28223BE20](v63);
  v61 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v62 = &v53 - v16;
  v60 = sub_25C4C8470();
  v59 = *(v60 - 1);
  MEMORY[0x28223BE20](v60);
  v55 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_25C4C8490();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25C4C8760();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = CUNextID64();
  sub_25C465784();
  v58 = v7;
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25C4657D0(&unk_27FC0A9C0, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A1D0, &qword_25C4C9B10);
  sub_25C465818(&qword_27FC0A9D0, &unk_27FC0A1D0, &qword_25C4C9B10);
  sub_25C4C8800();
  v23 = sub_25C4C8770();
  (*(v20 + 8))(v22, v19);
  v53 = v23;
  ObjectType = swift_getObjectType();
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v27 = v76;
  *(v26 + 16) = v25;
  *(v26 + 24) = v27;
  aBlock[4] = sub_25C4667C0;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25C45B768;
  aBlock[3] = &block_descriptor_49;
  v28 = _Block_copy(aBlock);

  v29 = v54;
  sub_25C4C8480();
  v30 = v55;
  sub_25C45F518();
  sub_25C4C8780();
  _Block_release(v28);
  (*(v59 + 8))(v30, v60);
  (*(v56 + 8))(v29, v57);

  v31 = v61;
  sub_25C4C84A0();
  v32 = v62;
  sub_25C4C84D0();
  v33 = *(v77 + 8);
  v77 += 8;
  v60 = v33;
  v34 = v63;
  v33(v31, v63);
  v36 = v66;
  v35 = v67;
  v37 = *(v66 + 104);
  v38 = v64;
  v37(v64, *MEMORY[0x277D85180], v67);
  v39 = v65;
  *v65 = 0;
  v37(v39, *MEMORY[0x277D85168], v35);
  v40 = v32;
  v41 = v32;
  v42 = v53;
  MEMORY[0x25F887C70](v40, v38, v39, ObjectType);
  v43 = *(v36 + 8);
  v43(v39, v35);
  v43(v38, v35);
  v60(v41, v34);
  sub_25C4C87A0();
  v44 = type metadata accessor for NXXPCPendingOperation(0);
  v45 = v44[6];
  v46 = sub_25C4C7B20();
  v47 = v68;
  (*(*(v46 - 8) + 16))(v68 + v45, v69, v46);
  v48 = v71;
  *v47 = v70;
  v47[1] = v48;
  v49 = v73;
  v47[2] = v72;
  v47[3] = v49;
  v50 = (v47 + v44[7]);
  v51 = v75;
  *v50 = v74;
  v50[1] = v51;
  *(v47 + v44[8]) = v42;
  (*(*(v44 - 1) + 56))(v47, 0, 1, v44);
  swift_beginAccess();

  swift_unknownObjectRetain();

  sub_25C45F6B0(v47, v76);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_25C45F518()
{
  sub_25C4C8470();
  sub_25C4657D0(&unk_27FC0A180, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A7B0, &qword_25C4C9AE0);
  sub_25C465818(&qword_27FC0A190, &unk_27FC0A7B0, &qword_25C4C9AE0);
  return sub_25C4C8800();
}

uint64_t sub_25C45F5F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_25C463C84(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_25C462F38(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_25C464444();
        v11 = v13;
      }

      result = sub_25C463960(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_25C45F6B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A198, &qword_25C4C9AE8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for NXXPCPendingOperation(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_25C4666F8(a1, &qword_27FC0A198, &qword_25C4C9AE8);
    v13 = sub_25C462F38(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_25C4645A0(type metadata accessor for NXXPCPendingOperation, &qword_27FC0A288, &unk_25C4C9D00, type metadata accessor for NXXPCPendingOperation);
        v17 = v21;
      }

      sub_25C465D3C(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for NXXPCPendingOperation);
      sub_25C463AD0(v15, v17, type metadata accessor for NXXPCPendingOperation);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_25C4666F8(v8, &qword_27FC0A198, &qword_25C4C9AE8);
  }

  else
  {
    sub_25C465D3C(a1, v12, type metadata accessor for NXXPCPendingOperation);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_25C463DD0(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_25C45F934(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1B8, &qword_25C4C9B08);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for NXXPCPendingRequest(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_25C4666F8(a1, &qword_27FC0A1B8, &qword_25C4C9B08);
    v13 = sub_25C462F38(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_25C4645A0(type metadata accessor for NXXPCPendingRequest, &qword_27FC0A280, &qword_25C4C9CF8, type metadata accessor for NXXPCPendingRequest);
        v17 = v21;
      }

      sub_25C465D3C(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for NXXPCPendingRequest);
      sub_25C463AD0(v15, v17, type metadata accessor for NXXPCPendingRequest);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_25C4666F8(v8, &qword_27FC0A1B8, &qword_25C4C9B08);
  }

  else
  {
    sub_25C465D3C(a1, v12, type metadata accessor for NXXPCPendingRequest);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_25C463F6C(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

void sub_25C45FBB8(uint64_t a1, uint64_t a2)
{
  v75 = a2;
  v79 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A198, &qword_25C4C9AE8);
  MEMORY[0x28223BE20](v3 - 8);
  v68 = &v61 - v4;
  v74 = type metadata accessor for NXXPCPendingOperation(0);
  v5 = *(v74 - 8);
  v6 = MEMORY[0x28223BE20](v74);
  v64 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v61 - v9);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v61 - v12;
  MEMORY[0x28223BE20](v11);
  v69 = &v61 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1A0, &qword_25C4C9AF0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v73 = (&v61 - v19);
  v20 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__pendingOperations;
  swift_beginAccess();
  v66 = v20;
  v78 = v2;
  v21 = *(v2 + v20);
  v22 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v21 + 64);
  v62 = (v23 + 63) >> 6;
  v70 = v5;
  v65 = (v5 + 56);
  v71 = v21;

  v26 = 0;
  *&v27 = 136315394;
  v61 = v27;
  v80 = v18;
  v72 = v22;
  v67 = v13;
  while (v25)
  {
    v28 = v26;
LABEL_15:
    v31 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v32 = v31 | (v28 << 6);
    v33 = *(*(v71 + 48) + 8 * v32);
    v34 = v69;
    sub_25C465CD4(*(v71 + 56) + *(v70 + 72) * v32, v69, type metadata accessor for NXXPCPendingOperation);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1A8, &qword_25C4C9AF8);
    v36 = *(v35 + 48);
    v37 = v80;
    *v80 = v33;
    v18 = v37;
    sub_25C465D3C(v34, &v37[v36], type metadata accessor for NXXPCPendingOperation);
    (*(*(v35 - 8) + 56))(v18, 0, 1, v35);
LABEL_16:
    v38 = v73;
    sub_25C465DA4(v18, v73, &qword_27FC0A1A0, &qword_25C4C9AF0);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1A8, &qword_25C4C9AF8);
    if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
    {

      return;
    }

    v40 = v38;
    v41 = *v38;
    sub_25C465D3C(v40 + *(v39 + 48), v13, type metadata accessor for NXXPCPendingOperation);
    v42 = *(v13 + 2);
    v43 = *(v13 + 3);
    if (v42 == v79 && v43 == v75 || (sub_25C4C89E0() & 1) != 0)
    {
      v76 = v43;
      v77 = v42;
      v44 = v68;
      (*v65)(v68, 1, 1, v74);
      swift_beginAccess();
      sub_25C45F6B0(v44, v41);
      swift_endAccess();
      swift_getObjectType();
      sub_25C4C8790();
      if (qword_27FC0AC40 != -1)
      {
        swift_once();
      }

      v45 = sub_25C4C7BD0();
      __swift_project_value_buffer(v45, qword_27FC0AC48);
      sub_25C465CD4(v13, v10, type metadata accessor for NXXPCPendingOperation);
      v46 = v64;
      sub_25C465CD4(v13, v64, type metadata accessor for NXXPCPendingOperation);
      v47 = sub_25C4C7BB0();
      v48 = sub_25C4C8720();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v81[0] = v63;
        *v49 = v61;
        v51 = *v10;
        v50 = v10[1];

        sub_25C465E0C(v10, type metadata accessor for NXXPCPendingOperation);
        v52 = sub_25C458990(v51, v50, v81);

        *(v49 + 4) = v52;
        *(v49 + 12) = 2080;
        v53 = *(v46 + 16);
        v54 = *(v46 + 24);

        sub_25C465E0C(v46, type metadata accessor for NXXPCPendingOperation);
        v55 = sub_25C458990(v53, v54, v81);

        *(v49 + 14) = v55;
        _os_log_impl(&dword_25C452000, v47, v48, "Subscriber operation handle: id=%s, operation=%s", v49, 0x16u);
        v56 = v63;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v56, -1, -1);
        MEMORY[0x25F888630](v49, -1, -1);
      }

      else
      {

        sub_25C465E0C(v46, type metadata accessor for NXXPCPendingOperation);
        sub_25C465E0C(v10, type metadata accessor for NXXPCPendingOperation);
      }

      v18 = v80;
      v58 = v76;
      v57 = v77;
      Strong = swift_weakLoadStrong();
      v13 = v67;
      if (Strong)
      {
        sub_25C4880C0(v57, v58, &v67[*(v74 + 24)], 0, *&v67[*(v74 + 28)], *&v67[*(v74 + 28) + 8]);
      }
    }

    sub_25C465E0C(v13, type metadata accessor for NXXPCPendingOperation);
    v22 = v72;
  }

  if (v62 <= v26 + 1)
  {
    v29 = v26 + 1;
  }

  else
  {
    v29 = v62;
  }

  v30 = v29 - 1;
  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v62)
    {
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1A8, &qword_25C4C9AF8);
      (*(*(v60 - 8) + 56))(v18, 1, 1, v60);
      v25 = 0;
      v26 = v30;
      goto LABEL_16;
    }

    v25 = *(v22 + 8 * v28);
    ++v26;
    if (v25)
    {
      v26 = v28;
      goto LABEL_15;
    }
  }

  __break(1u);
}

BOOL sub_25C460380(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v110 = a5;
  v111 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1B8, &qword_25C4C9B08);
  MEMORY[0x28223BE20](v13 - 8);
  v105 = (v81 - v14);
  v15 = sub_25C4C8460();
  v108 = *(v15 - 8);
  v109 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v107 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v106 = v81 - v18;
  v19 = sub_25C4C84B0();
  v103 = *(v19 - 8);
  v104 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v102 = v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v101 = v81 - v22;
  v100 = sub_25C4C8470();
  v23 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_25C4C8490();
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v96 = v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_25C4C8760();
  MEMORY[0x28223BE20](v26);
  v29 = v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v7 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__xpcPublisher);
  if (v30)
  {
    v83 = v27;
    v90 = a3;
    v91 = a4;
    v31 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredRequests;
    swift_beginAccess();
    v32 = v7;
    v33 = *(v7 + v31);
    v34 = *(v33 + 16);
    v92 = v30;
    v95 = a2;
    v94 = a1;
    v93 = v30;
    v89 = a6;
    v86 = v23;
    if (v34 && (v35 = sub_25C462EC0(a1, a2), (v36 & 1) != 0))
    {
      v37 = *(*(v33 + 56) + 8 * v35);
      swift_endAccess();
      v38 = *(v37 + 24);
      v112 = *(v37 + 16);
      v88 = v37;

      v87 = v38;
    }

    else
    {
      swift_endAccess();
      v88 = 0;
      v87 = 0xE600000000000000;
      v112 = 0x746365726964;
    }

    v39 = CUNextID64();
    v85 = v39;
    sub_25C465784();
    v40 = *(v32 + 24);
    v84 = v32;
    aBlock = MEMORY[0x277D84F90];
    sub_25C4657D0(&unk_27FC0A9C0, MEMORY[0x277D85278], MEMORY[0x277D85280]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A1D0, &qword_25C4C9B10);
    sub_25C465818(&qword_27FC0A9D0, &unk_27FC0A1D0, &qword_25C4C9B10);
    sub_25C4C8800();
    v81[1] = v40;
    v41 = sub_25C4C8770();
    (*(v83 + 8))(v29, v26);
    v82 = v41;
    ObjectType = swift_getObjectType();
    v43 = swift_allocObject();
    swift_weakInit();
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    *(v44 + 24) = v39;
    v117 = sub_25C4658DC;
    v118 = v44;
    aBlock = MEMORY[0x277D85DD0];
    v114 = 1107296256;
    v115 = sub_25C45B768;
    v116 = &block_descriptor_16_0;
    v45 = _Block_copy(&aBlock);

    v46 = v96;
    sub_25C4C8480();
    v47 = v98;
    v83 = ObjectType;
    sub_25C45F518();
    sub_25C4C8780();
    _Block_release(v45);
    (*(v86 + 8))(v47, v100);
    (*(v97 + 8))(v46, v99);

    v48 = v102;
    sub_25C4C84A0();
    v49 = v101;
    sub_25C4C84D0();
    v50 = v104;
    v103 = *(v103 + 8);
    (v103)(v48, v104);
    v52 = v108;
    v51 = v109;
    v53 = *(v108 + 104);
    v54 = v106;
    v53(v106, *MEMORY[0x277D85180], v109);
    v55 = v107;
    *v107 = 0;
    v53(v55, *MEMORY[0x277D85168], v51);
    v56 = v82;
    MEMORY[0x25F887C70](v49, v54, v55, v83);
    v57 = *(v52 + 8);
    v57(v55, v51);
    v57(v54, v51);
    (v103)(v49, v50);
    v58 = v56;
    sub_25C4C87A0();
    v59 = type metadata accessor for NXXPCPendingRequest(0);
    v60 = v59[7];
    v61 = sub_25C4C7E00();
    v62 = v105;
    (*(*(v61 - 8) + 16))(v105 + v60, v110, v61);
    v63 = v87;
    *v62 = v112;
    v62[1] = v63;
    v64 = v94;
    v65 = v95;
    v62[2] = v94;
    v62[3] = v65;
    v66 = v90;
    v67 = v91;
    v62[4] = v90;
    v62[5] = v67;
    v68 = (v62 + v59[8]);
    v69 = v111;
    *v68 = v89;
    v68[1] = v69;
    *(v62 + v59[9]) = v58;
    (*(*(v59 - 1) + 56))(v62, 0, 1, v59);
    swift_beginAccess();

    swift_unknownObjectRetain();

    sub_25C459FB0(v66, v67);
    sub_25C45F934(v62, v85);
    swift_endAccess();
    swift_unknownObjectRelease();
    if (v88)
    {
      v30 = v93;
      if (qword_27FC0AC40 != -1)
      {
        swift_once();
      }

      v70 = sub_25C4C7BD0();
      __swift_project_value_buffer(v70, qword_27FC0AC48);

      v71 = sub_25C4C7BB0();
      v72 = sub_25C4C8720();

      v73 = os_log_type_enabled(v71, v72);
      v74 = v112;
      if (v73)
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        aBlock = v76;
        *v75 = 136315394;
        *(v75 + 4) = sub_25C458990(v74, v63, &aBlock);
        *(v75 + 12) = 2080;
        *(v75 + 14) = sub_25C458990(v64, v65, &aBlock);
        _os_log_impl(&dword_25C452000, v71, v72, "Subscriber launch: id=%s, request=%s", v75, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F888630](v76, -1, -1);
        MEMORY[0x25F888630](v75, -1, -1);
      }

      xpc_dictionary_create_empty();
      v77 = swift_allocObject();
      v77[2] = v74;
      v77[3] = v63;
      v77[4] = v64;
      v77[5] = v65;
      v117 = sub_25C465954;
      v118 = v77;
      aBlock = MEMORY[0x277D85DD0];
      v114 = 1107296256;
      v115 = sub_25C456294;
      v116 = &block_descriptor_22;
      v78 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();

      v79 = v92;
      xpc_event_publisher_fire_with_reply();

      _Block_release(v78);

      swift_unknownObjectRelease_n();
    }

    else
    {

      v30 = v93;
    }
  }

  return v30 != 0;
}

void sub_25C460F14(void (*a1)(void, void, void), uint64_t a2)
{
  v114 = a2;
  v117 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1B8, &qword_25C4C9B08);
  MEMORY[0x28223BE20](v3 - 8);
  v106 = &v96 - v4;
  v113 = type metadata accessor for NXXPCPendingRequest(0);
  v5 = *(v113 - 8);
  v6 = MEMORY[0x28223BE20](v113);
  v8 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v96 - v10);
  v12 = MEMORY[0x28223BE20](v9);
  v105 = &v96 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v104 = (&v96 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v96 - v17);
  MEMORY[0x28223BE20](v16);
  v107 = &v96 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1E0, &qword_25C4C9B18);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = (&v96 - v24);
  v26 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__pendingRequests;
  swift_beginAccess();
  v103 = v26;
  v27 = *(v2 + v26);
  v28 = *(v27 + 64);
  v112 = v27 + 64;
  v29 = 1 << *(v27 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v28;
  v98 = (v29 + 63) >> 6;
  v108 = v5;
  v102 = (v5 + 56);
  v109 = v27;

  v32 = 0;
  v110 = 0;
  *&v33 = 136315394;
  v97 = v33;
  *&v33 = 136315650;
  v96 = v33;
  v118 = v2;
  v119 = v25;
  v120 = v23;
  v101 = v8;
  v99 = v11;
  v115 = v18;
  v34 = v112;
  if (!v31)
  {
    goto LABEL_9;
  }

  do
  {
    while (1)
    {
      v35 = v32;
LABEL_17:
      v38 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v39 = v38 | (v35 << 6);
      v40 = *(*(v109 + 48) + 8 * v39);
      v41 = v107;
      sub_25C465CD4(*(v109 + 56) + *(v108 + 72) * v39, v107, type metadata accessor for NXXPCPendingRequest);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1E8, &qword_25C4C9B20);
      v43 = *(v42 + 48);
      v44 = v120;
      *v120 = v40;
      v23 = v44;
      sub_25C465D3C(v41, &v44[v43], type metadata accessor for NXXPCPendingRequest);
      (*(*(v42 - 8) + 56))(v23, 0, 1, v42);
      v25 = v119;
LABEL_18:
      sub_25C465DA4(v23, v25, &qword_27FC0A1E0, &qword_25C4C9B18);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1E8, &qword_25C4C9B20);
      if ((*(*(v45 - 8) + 48))(v25, 1, v45) == 1)
      {

        return;
      }

      v46 = *v25;
      sub_25C465D3C(v25 + *(v45 + 48), v18, type metadata accessor for NXXPCPendingRequest);
      v47 = v18[3];
      v121 = v18[2];
      if ((v121 != v117 || v47 != v114) && (sub_25C4C89E0() & 1) == 0)
      {
        break;
      }

      v116 = v47;
      v48 = v106;
      (*v102)(v106, 1, 1, v113);
      swift_beginAccess();
      sub_25C45F934(v48, v46);
      swift_endAccess();
      v18 = v115;
      swift_getObjectType();
      sub_25C4C8790();
      if (qword_27FC0AC40 != -1)
      {
        swift_once();
      }

      v49 = sub_25C4C7BD0();
      v50 = __swift_project_value_buffer(v49, qword_27FC0AC48);
      v51 = v104;
      sub_25C465CD4(v18, v104, type metadata accessor for NXXPCPendingRequest);
      v52 = v105;
      sub_25C465CD4(v18, v105, type metadata accessor for NXXPCPendingRequest);
      v111 = v50;
      v53 = sub_25C4C7BB0();
      v54 = sub_25C4C8720();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = v52;
        v100 = swift_slowAlloc();
        v122 = v100;
        *v55 = v97;
        v57 = *v51;
        v58 = v51[1];

        sub_25C465E0C(v51, type metadata accessor for NXXPCPendingRequest);
        v59 = sub_25C458990(v57, v58, &v122);

        *(v55 + 4) = v59;
        *(v55 + 12) = 2080;
        v60 = *(v56 + 16);
        v61 = *(v56 + 24);

        sub_25C465E0C(v56, type metadata accessor for NXXPCPendingRequest);
        v62 = sub_25C458990(v60, v61, &v122);

        *(v55 + 14) = v62;
        _os_log_impl(&dword_25C452000, v53, v54, "Subscriber request handle: id=%s, request=%s", v55, 0x16u);
        v63 = v100;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v63, -1, -1);
        v64 = v55;
        v18 = v115;
        MEMORY[0x25F888630](v64, -1, -1);
      }

      else
      {

        sub_25C465E0C(v52, type metadata accessor for NXXPCPendingRequest);
        sub_25C465E0C(v51, type metadata accessor for NXXPCPendingRequest);
      }

      Strong = swift_weakLoadStrong();
      v66 = v116;
      if (Strong)
      {
        v67 = v18[4];
        v68 = v18[5];
        v69 = *(v113 + 28);
        v70 = v18 + *(v113 + 32);
        v71 = *v70;
        v72 = *(v70 + 1);

        sub_25C459FB0(v67, v68);

        v73 = v18 + v69;
        v74 = v110;
        sub_25C4892D0(v121, v66, v67, v68, v73, 0, v71, v72);
        if (v74)
        {

          sub_25C45A004(v67, v68);

          v75 = v99;
          sub_25C465CD4(v18, v99, type metadata accessor for NXXPCPendingRequest);
          v76 = v101;
          sub_25C465CD4(v18, v101, type metadata accessor for NXXPCPendingRequest);
          v77 = v74;
          v78 = sub_25C4C7BB0();
          v79 = sub_25C4C8710();

          v80 = v74;
          if (os_log_type_enabled(v78, v79))
          {
            v81 = swift_slowAlloc();
            v121 = v71;
            v82 = v81;
            v83 = swift_slowAlloc();
            v122 = v83;
            *v82 = v96;
            LODWORD(v116) = v79;
            v84 = *v75;
            v85 = v75[1];

            sub_25C465E0C(v99, type metadata accessor for NXXPCPendingRequest);
            v86 = sub_25C458990(v84, v85, &v122);

            *(v82 + 4) = v86;
            *(v82 + 12) = 2080;
            v87 = *(v101 + 2);
            v88 = *(v101 + 3);

            sub_25C465E0C(v101, type metadata accessor for NXXPCPendingRequest);
            v89 = sub_25C458990(v87, v88, &v122);

            *(v82 + 14) = v89;
            *(v82 + 22) = 2080;
            swift_getErrorValue();
            v90 = sub_25C4C8A30();
            v92 = sub_25C458990(v90, v91, &v122);

            *(v82 + 24) = v92;
            _os_log_impl(&dword_25C452000, v78, v116, "### Subscriber request handle failed: id=%s, request=%s, error=%s", v82, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x25F888630](v83, -1, -1);
            v93 = v82;
            v71 = v121;
            MEMORY[0x25F888630](v93, -1, -1);
          }

          else
          {

            sub_25C465E0C(v76, type metadata accessor for NXXPCPendingRequest);
            sub_25C465E0C(v75, type metadata accessor for NXXPCPendingRequest);
          }

          v23 = v120;
          v95 = v80;
          v71(v80, 0, 1);

          v18 = v115;
          sub_25C465E0C(v115, type metadata accessor for NXXPCPendingRequest);
          v110 = 0;
          goto LABEL_7;
        }

        v110 = 0;
        sub_25C465E0C(v18, type metadata accessor for NXXPCPendingRequest);

        sub_25C45A004(v67, v68);
      }

      else
      {
        sub_25C465E0C(v18, type metadata accessor for NXXPCPendingRequest);
      }

      v23 = v120;
LABEL_7:
      v25 = v119;
      v34 = v112;
      if (!v31)
      {
        goto LABEL_9;
      }
    }

    sub_25C465E0C(v18, type metadata accessor for NXXPCPendingRequest);
    v34 = v112;
  }

  while (v31);
LABEL_9:
  if (v98 <= v32 + 1)
  {
    v36 = v32 + 1;
  }

  else
  {
    v36 = v98;
  }

  v37 = v36 - 1;
  while (1)
  {
    v35 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v35 >= v98)
    {
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1E8, &qword_25C4C9B20);
      (*(*(v94 - 8) + 56))(v23, 1, 1, v94);
      v31 = 0;
      v32 = v37;
      goto LABEL_18;
    }

    v31 = *(v34 + 8 * v35);
    ++v32;
    if (v31)
    {
      v32 = v35;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_25C461B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

void *sub_25C461B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  return result;
}

uint64_t sub_25C461BDC()
{
  swift_weakDestroy();

  v1 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__environment;
  v2 = sub_25C4C7B30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_25C461CAC()
{
  sub_25C461BDC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25C461DB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 25705;
    }

    else
    {
      v3 = 0x6769666E6F63;
    }

    if (v2)
    {
      v4 = 0xE200000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6976726553736469;
    v4 = 0xEC00000044496563;
  }

  else if (a1 == 3)
  {
    v3 = 0x6F6974617265706FLL;
    v4 = 0xEA0000000000736ELL;
  }

  else
  {
    v4 = 0xE800000000000000;
    v3 = 0x7374736575716572;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 25705;
    }

    else
    {
      v9 = 0x6769666E6F63;
    }

    if (a2)
    {
      v8 = 0xE200000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6F6974617265706FLL;
    v6 = 0xEA0000000000736ELL;
    if (a2 != 3)
    {
      v5 = 0x7374736575716572;
      v6 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6976726553736469;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xEC00000044496563;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_25C4C89E0();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_25C461F40()
{
  sub_25C4C8A60();
  sub_25C4C8580();

  return sub_25C4C8A90();
}

uint64_t sub_25C462020(uint64_t a1)
{
  sub_25C4C8580();
}

uint64_t sub_25C4620EC(uint64_t a1)
{
  sub_25C4C8A60();
  sub_25C4C8580();

  return sub_25C4C8A90();
}

unint64_t sub_25C4621C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25C465E6C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25C4621F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6769666E6F63;
  v5 = 0xEC00000044496563;
  v6 = 0x6976726553736469;
  v7 = 0xEA0000000000736ELL;
  v8 = 0x6F6974617265706FLL;
  if (v2 != 3)
  {
    v8 = 0x7374736575716572;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 25705;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_25C462294()
{

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

char *sub_25C4622E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A2B0, &unk_25C4C9D30);
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

uint64_t sub_25C4623E8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25C465090(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_25C462454(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_25C462454(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25C4C8990();
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
        v5 = sub_25C4C85F0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_25C46261C(v7, v8, a1, v4);
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
    return sub_25C46254C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25C46254C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_25C4C89E0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25C46261C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_25C462EAC(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_25C462BF8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_25C4C89E0();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_25C4C89E0();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25C4622E4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_25C4622E4((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_25C462BF8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_25C462EAC(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_25C462E20(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_25C4C89E0(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_25C462BF8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_25C4C89E0() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_25C4C89E0() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_25C462E20(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25C462EAC(v3);
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

unint64_t sub_25C462EC0(uint64_t a1, uint64_t a2)
{
  sub_25C4C8A60();
  sub_25C4C8580();
  v4 = sub_25C4C8A90();

  return sub_25C4641B0(a1, a2, v4);
}

unint64_t sub_25C462F38(uint64_t a1)
{
  v2 = sub_25C4C8A50();

  return sub_25C464268(a1, v2);
}

uint64_t sub_25C462F7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A2A0, &unk_25C4C9D18);
  v34 = v4;
  result = sub_25C4C8970();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_25C4C8A60();
      sub_25C4C8580();
      result = sub_25C4C8A90();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25C463224(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A298, &qword_25C4C9D10);
  result = sub_25C4C8970();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_25C4C8A50();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25C463494(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v43 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v41 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v40 - v12;
  v14 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v42 = v10;
  result = sub_25C4C8970();
  v16 = result;
  if (*(v14 + 16))
  {
    v40 = v9;
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = result + 64;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v28 = v25 | (v17 << 6);
      v29 = *(*(v14 + 48) + 8 * v28);
      v30 = *(v41 + 72);
      v31 = *(v14 + 56) + v30 * v28;
      if (v42)
      {
        sub_25C465D3C(v31, v13, v43);
      }

      else
      {
        sub_25C465CD4(v31, v13, v43);
      }

      result = sub_25C4C8A50();
      v32 = -1 << *(v16 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v23 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v23 + 8 * v34);
          if (v38 != -1)
          {
            v24 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v33) & ~*(v23 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v16 + 48) + 8 * v24) = v29;
      result = sub_25C465D3C(v13, *(v16 + 56) + v30 * v24, v43);
      ++*(v16 + 16);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v9 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v14 + 32);
    v9 = v40;
    if (v39 >= 64)
    {
      bzero((v14 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v39;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v9 = v16;
  return result;
}

uint64_t sub_25C4637B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25C4C8810() + 1) & ~v5;
    do
    {
      sub_25C4C8A60();

      sub_25C4C8580();
      v9 = sub_25C4C8A90();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25C463960(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25C4C8810() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_25C4C8A50();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25C463AD0(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_25C4C8810() + 1) & ~v6;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v7);
      result = sub_25C4C8A50();
      v13 = result & v9;
      if (v4 >= v10)
      {
        if (v13 < v10 || v4 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v10 && v4 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v11 + 8 * v4);
      if (v4 != v7 || v16 >= v12 + 1)
      {
        *v16 = *v12;
      }

      v17 = *(a2 + 56);
      v18 = *(*(a3(0) - 8) + 72);
      v19 = v18 * v4;
      result = v17 + v18 * v4;
      v20 = v18 * v7;
      v21 = v17 + v18 * v7 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25C463C84(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_25C462F38(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_25C463224(v14, a3 & 1);
      result = sub_25C462F38(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_25C4C8A20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_25C464444();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_25C463DD0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_25C462F38(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
  }

  else
  {
    v14 = v9;
    v15 = v8[3];
    if (v15 >= v13 && (a3 & 1) != 0)
    {
LABEL_7:
      v16 = *v4;
      if (v14)
      {
LABEL_8:
        v17 = v16[7];
        v18 = type metadata accessor for NXXPCPendingOperation(0);
        return sub_25C466758(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for NXXPCPendingOperation);
      }

      return sub_25C464108(v10, a2, a1, v16, type metadata accessor for NXXPCPendingOperation, type metadata accessor for NXXPCPendingOperation);
    }

    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_25C4645A0(type metadata accessor for NXXPCPendingOperation, &qword_27FC0A288, &unk_25C4C9D00, type metadata accessor for NXXPCPendingOperation);
      goto LABEL_7;
    }

    sub_25C463494(v13, a3 & 1, type metadata accessor for NXXPCPendingOperation, &qword_27FC0A288, &unk_25C4C9D00, type metadata accessor for NXXPCPendingOperation);
    v20 = sub_25C462F38(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      return sub_25C464108(v10, a2, a1, v16, type metadata accessor for NXXPCPendingOperation, type metadata accessor for NXXPCPendingOperation);
    }
  }

  result = sub_25C4C8A20();
  __break(1u);
  return result;
}

uint64_t sub_25C463F6C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_25C462F38(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
  }

  else
  {
    v14 = v9;
    v15 = v8[3];
    if (v15 >= v13 && (a3 & 1) != 0)
    {
LABEL_7:
      v16 = *v4;
      if (v14)
      {
LABEL_8:
        v17 = v16[7];
        v18 = type metadata accessor for NXXPCPendingRequest(0);
        return sub_25C466758(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for NXXPCPendingRequest);
      }

      return sub_25C464108(v10, a2, a1, v16, type metadata accessor for NXXPCPendingRequest, type metadata accessor for NXXPCPendingRequest);
    }

    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_25C4645A0(type metadata accessor for NXXPCPendingRequest, &qword_27FC0A280, &qword_25C4C9CF8, type metadata accessor for NXXPCPendingRequest);
      goto LABEL_7;
    }

    sub_25C463494(v13, a3 & 1, type metadata accessor for NXXPCPendingRequest, &qword_27FC0A280, &qword_25C4C9CF8, type metadata accessor for NXXPCPendingRequest);
    v20 = sub_25C462F38(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      return sub_25C464108(v10, a2, a1, v16, type metadata accessor for NXXPCPendingRequest, type metadata accessor for NXXPCPendingRequest);
    }
  }

  result = sub_25C4C8A20();
  __break(1u);
  return result;
}

uint64_t sub_25C464108(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v10 = a4[7];
  v11 = a5(0);
  result = sub_25C465D3C(a3, v10 + *(*(v11 - 8) + 72) * a1, a6);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_25C4641B0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25C4C89E0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25C464268(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_25C4642D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A2A0, &unk_25C4C9D18);
  v2 = *v0;
  v3 = sub_25C4C8960();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25C464444()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A298, &qword_25C4C9D10);
  v2 = *v0;
  v3 = sub_25C4C8960();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25C4645A0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v36 = a4;
  v7 = v4;
  v8 = a1(0);
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v34 = &v32 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *v4;
  v11 = sub_25C4C8960();
  v12 = v11;
  if (*(v10 + 16))
  {
    v33 = v7;
    result = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v14)
    {
      result = memmove(result, (v10 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v37 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = *(v10 + 64);
    v20 = -1;
    if (v18 < 64)
    {
      v20 = ~(-1 << v18);
    }

    v21 = v20 & v19;
    v22 = (v18 + 63) >> 6;
    if ((v20 & v19) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_17:
        v26 = v23 | (v16 << 6);
        v27 = *(*(v10 + 48) + 8 * v26);
        v28 = v34;
        v29 = *(v35 + 72) * v26;
        v30 = v36;
        sub_25C465CD4(*(v10 + 56) + v29, v34, v36);
        v31 = v37;
        *(*(v37 + 48) + 8 * v26) = v27;
        result = sub_25C465D3C(v28, *(v31 + 56) + v29, v30);
      }

      while (v21);
    }

    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v16 >= v22)
      {

        v7 = v33;
        v12 = v37;
        goto LABEL_21;
      }

      v25 = *(v10 + 64 + 8 * v16);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }

  return result;
}

uint64_t sub_25C4647CC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_25C4C8A60();
  sub_25C4C8580();
  v8 = sub_25C4C8A90();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_25C4C89E0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_25C464B7C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25C46491C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A2A8, &qword_25C4C9D28);
  result = sub_25C4C88C0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_25C4C8A60();
      sub_25C4C8580();
      result = sub_25C4C8A90();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_25C464B7C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_25C46491C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_25C464CFC();
      goto LABEL_16;
    }

    sub_25C464E58(v8 + 1);
  }

  v10 = *v4;
  sub_25C4C8A60();
  sub_25C4C8580();
  v11 = sub_25C4C8A90();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_25C4C89E0() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_25C4C8A10();
  __break(1u);
}

void sub_25C464CFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A2A8, &qword_25C4C9D28);
  v2 = *v0;
  v3 = sub_25C4C88B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_25C464E58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A2A8, &qword_25C4C9D28);
  result = sub_25C4C88C0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_25C4C8A60();

      sub_25C4C8580();
      result = sub_25C4C8A90();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

char *sub_25C4650A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A760, &qword_25C4C9998);
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

uint64_t sub_25C4651B0(uint64_t a1)
{
  swift_weakInit();
  v3 = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__pendingOperations) = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredOperations) = v3;
  *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__pendingRequests) = v3;
  *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredRequests) = v3;
  *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__subscribers) = v3;
  *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__xpcPublisher) = 0;
  swift_weakAssign();
  v4 = *(a1 + 16);
  *(v1 + 24) = v4;
  v5 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_environment;
  v6 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__environment;
  v7 = sub_25C4C7B30();
  (*(*(v7 - 8) + 16))(v1 + v6, a1 + v5, v7);
  v8 = v4;
  return v1;
}

void sub_25C4652A8()
{
  v1 = v0;
  if (qword_27FC0AC40 != -1)
  {
    swift_once();
  }

  v2 = sub_25C4C7BD0();
  __swift_project_value_buffer(v2, qword_27FC0AC48);
  v3 = sub_25C4C7BB0();
  v4 = sub_25C4C8720();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25C452000, v3, v4, "Activate", v5, 2u);
    MEMORY[0x25F888630](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__xpcPublisher;
  if (!*(v1 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__xpcPublisher))
  {
    sub_25C4C7CD0();
    sub_25C4C8570();

    v7 = xpc_event_publisher_create();

    if (v7)
    {
      v8 = *(v1 + v6);
      *(v1 + v6) = v7;
      v9 = v7;

      v10 = swift_allocObject();
      swift_weakInit();
      v20 = sub_25C46685C;
      v21 = v10;
      aBlock = MEMORY[0x277D85DD0];
      v17 = 1107296256;
      v18 = sub_25C45CCB8;
      v19 = &block_descriptor_53;
      v11 = _Block_copy(&aBlock);

      xpc_event_publisher_set_handler();
      _Block_release(v11);
      v20 = sub_25C45CD38;
      v21 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v17 = 1107296256;
      v18 = sub_25C45CE38;
      v19 = &block_descriptor_56;
      v12 = _Block_copy(&aBlock);
      xpc_event_publisher_set_error_handler();
      _Block_release(v12);
      xpc_event_publisher_activate();
    }

    else
    {
      if (qword_27FC0AC40 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v2, qword_27FC0AC48);
      oslog = sub_25C4C7BB0();
      v13 = sub_25C4C8710();
      if (os_log_type_enabled(oslog, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_25C452000, oslog, v13, "### XPC publisher create failed", v14, 2u);
        MEMORY[0x25F888630](v14, -1, -1);
      }
    }
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

void sub_25C465660()
{
  if (qword_27FC0AC40 != -1)
  {
    swift_once();
  }

  v0 = sub_25C4C7BD0();
  __swift_project_value_buffer(v0, qword_27FC0AC48);
  v1 = sub_25C4C7BB0();
  v2 = sub_25C4C8720();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_25C452000, v1, v2, "Invalidate", v3, 2u);
    MEMORY[0x25F888630](v3, -1, -1);
  }

  sub_25C45D11C();
}

unint64_t sub_25C465784()
{
  result = qword_27FC0A1C0;
  if (!qword_27FC0A1C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FC0A1C0);
  }

  return result;
}

uint64_t sub_25C4657D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25C465818(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_25C46586C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C4658A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_25C465968(uint64_t a1, char *a2, const char *a3, ...)
{
  v7 = v3[2];
  v6 = v3[3];
  v9 = v3[4];
  v8 = v3[5];
  v10 = CUXPCDecodeNSErrorIfNeeded();
  v11 = 0x27FC0A000uLL;
  if (v10)
  {
    v12 = v10;
    format = a2;
    v33 = a3;
    if (qword_27FC0AC40 != -1)
    {
      swift_once();
    }

    v13 = sub_25C4C7BD0();
    __swift_project_value_buffer(v13, qword_27FC0AC48);

    v14 = v12;
    v15 = sub_25C4C7BB0();
    v16 = sub_25C4C8710();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34 = v31;
      *v17 = 136315650;
      *(v17 + 4) = sub_25C458990(v7, v6, &v34);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_25C458990(v9, v8, &v34);
      *(v17 + 22) = 2080;
      swift_getErrorValue();
      v18 = sub_25C4C8A30();
      v20 = v7;
      v21 = v9;
      v22 = sub_25C458990(v18, v19, &v34);

      *(v17 + 24) = v22;
      v9 = v21;
      v7 = v20;
      v11 = 0x27FC0A000;
      _os_log_impl(&dword_25C452000, v15, v16, format, v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F888630](v31, -1, -1);
      MEMORY[0x25F888630](v17, -1, -1);
    }

    else
    {
    }

    a3 = v33;
  }

  if (*(v11 + 3136) != -1)
  {
    swift_once();
  }

  v23 = sub_25C4C7BD0();
  __swift_project_value_buffer(v23, qword_27FC0AC48);

  v24 = sub_25C4C7BB0();
  v25 = sub_25C4C8720();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v7;
    v29 = v9;
    v30 = v27;
    v34 = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_25C458990(v28, v6, &v34);
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_25C458990(v29, v8, &v34);
    _os_log_impl(&dword_25C452000, v24, v25, a3, v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v30, -1, -1);
    MEMORY[0x25F888630](v26, -1, -1);
  }
}

uint64_t sub_25C465CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25C465D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25C465DA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25C465E0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25C465E6C(uint64_t a1, uint64_t a2)
{
  v2 = sub_25C4C8980();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25C465EB8(uint64_t a1)
{
  result = sub_25C4657D0(&qword_27FC0A1F0, type metadata accessor for NXXPCPublisher, &unk_25C4C9B44);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25C465F34()
{
  result = qword_27FC0A1F8;
  if (!qword_27FC0A1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A1F8);
  }

  return result;
}

uint64_t sub_25C465F90(uint64_t a1)
{
  result = sub_25C4C7B30();
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

uint64_t getEnumTagSinglePayload for NXXPCEventKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NXXPCEventKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25C4661DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25C4C7B20();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25C46629C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25C4C7B20();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25C466340(uint64_t a1)
{
  result = sub_25C4C7B20();
  if (v2 <= 0x3F)
  {
    result = sub_25C4663EC();
    if (v3 <= 0x3F)
    {
      result = sub_25C46643C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_25C4663EC()
{
  result = qword_27FC0A208;
  if (!qword_27FC0A208)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27FC0A208);
  }

  return result;
}

unint64_t sub_25C46643C()
{
  result = qword_27FC0A270;
  if (!qword_27FC0A270)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FC0A270);
  }

  return result;
}

uint64_t sub_25C4664B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25C4C7E00();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25C466574(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25C4C7E00();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_25C466618(uint64_t a1)
{
  result = sub_25C4C7E00();
  if (v2 <= 0x3F)
  {
    result = sub_25C4663EC();
    if (v3 <= 0x3F)
    {
      result = sub_25C46643C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25C4666F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25C466758(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_25C4667D8(void (*a1)(uint64_t, uint64_t, unint64_t))
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a1(v3, 0x74756F656D6974, 0xE700000000000000);
  }

  return result;
}

uint64_t sub_25C46685C(int a1, int64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    if (a1 == 1)
    {
      sub_25C45E3B8(a2);
    }

    else if (!a1)
    {
      if (a3)
      {
        swift_unknownObjectRetain();
        swift_getObjectType();
        v8 = sub_25C4C86C0();
        v116 = v7;
        if (v9)
        {
          v10 = v9;
          v114 = v8;
          v11 = sub_25C4C86C0();
          v115 = v12;
          v13 = MEMORY[0x277D84FA0];
          v126 = MEMORY[0x277D84FA0];
          xdict = a3;
          v14 = xpc_dictionary_get_dictionary(a3, "operations");
          v15 = swift_getExistentialTypeMetadata;
          if (!v14)
          {
            v111 = 0;
            v112 = 0;
LABEL_20:
            v125 = v13;
            v33 = xpc_dictionary_get_dictionary(xdict, "requests");
            if (v33)
            {
              v34 = v33;
              v35 = swift_allocObject();
              *(v35 + 16) = &v125;
              v36 = swift_allocObject();
              v110 = sub_25C4675F8;
              *(v36 + 16) = sub_25C4675F8;
              *(v36 + 24) = v35;
              v121 = sub_25C46760C;
              v122 = v36;
              aBlock = MEMORY[0x277D85DD0];
              v118 = *(v15 + 256);
              v119 = sub_25C461B14;
              v120 = &block_descriptor_65;
              v37 = _Block_copy(&aBlock);

              xpc_dictionary_apply(v34, v37);
              swift_unknownObjectRelease();
              _Block_release(v37);
              LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

              if ((v34 & 1) == 0)
              {
LABEL_24:
                v38 = v115;
                if (qword_27FC0AC40 != -1)
                {
                  goto LABEL_86;
                }

LABEL_25:
                v109 = v35;
                v39 = sub_25C4C7BD0();
                __swift_project_value_buffer(v39, qword_27FC0AC48);

                v40 = sub_25C4C7BB0();
                v41 = sub_25C4C8720();

                if (os_log_type_enabled(v40, v41))
                {
                  v42 = swift_slowAlloc();
                  v108 = swift_slowAlloc();
                  aBlock = v108;
                  *v42 = 136315906;
                  *(v42 + 4) = sub_25C458990(v114, v10, &aBlock);
                  *(v42 + 12) = 2080;
                  v43 = v11;
                  if (v115)
                  {
                    v44 = v115;
                  }

                  else
                  {
                    v11 = 7104878;
                    v44 = 0xE300000000000000;
                  }

                  v45 = sub_25C458990(v11, v44, &aBlock);

                  *(v42 + 14) = v45;
                  *(v42 + 22) = 2080;
                  swift_beginAccess();

                  v46 = sub_25C4C8620();
                  v48 = v47;

                  v49 = sub_25C458990(v46, v48, &aBlock);

                  *(v42 + 24) = v49;
                  *(v42 + 32) = 2080;
                  v38 = v115;
                  swift_beginAccess();

                  v50 = sub_25C4C8620();
                  v52 = v51;

                  v53 = sub_25C458990(v50, v52, &aBlock);
                  v7 = v116;

                  *(v42 + 34) = v53;
                  _os_log_impl(&dword_25C452000, v40, v41, "Add subscriber: id=%s, ids=%s, operations=%s, request=%s", v42, 0x2Au);
                  swift_arrayDestroy();
                  MEMORY[0x25F888630](v108, -1, -1);
                  v54 = v42;
                  v55 = v114;
                  MEMORY[0x25F888630](v54, -1, -1);
                }

                else
                {

                  v55 = v114;
                  v43 = v11;
                }

                swift_beginAccess();
                v56 = v126;
                swift_beginAccess();
                v57 = v125;
                type metadata accessor for NXXPCSubscriberInfo();
                v11 = swift_allocObject();
                *(v11 + 16) = v55;
                *(v11 + 24) = v10;
                *(v11 + 32) = v43;
                *(v11 + 40) = v38;
                *(v11 + 48) = a2;
                *(v11 + 56) = v56;
                *(v11 + 64) = v57;
                v58 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__subscribers;
                swift_beginAccess();
                swift_retain_n();

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v123[0] = *(v7 + v58);
                *(v7 + v58) = 0x8000000000000000;
                v60 = a2;
                a2 = v11;
                sub_25C463C84(v11, v60, isUniquelyReferenced_nonNull_native);
                *(v7 + v58) = v123[0];
                swift_endAccess();
                v61 = *(v11 + 40);
                if (v61)
                {
                  v62 = *(v11 + 32);
                  Strong = swift_weakLoadStrong();
                  if (Strong)
                  {
                    v11 = Strong;
                    v64 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_cloudServer;
                    swift_beginAccess();
                    v65 = *(v11 + v64);
                    if (v65)
                    {

                      v66 = v65;

                      sub_25C490F34(v62, v61, a2);
                    }

                    else
                    {
                    }
                  }
                }

                v67 = v126 + 56;
                v68 = 1 << *(v126 + 32);
                v69 = -1;
                if (v68 < 64)
                {
                  v69 = ~(-1 << v68);
                }

                v38 = v69 & *(v126 + 56);
                v35 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredOperations;
                v10 = (v68 + 63) >> 6;
                v114 = v126;

                v70 = 0;
                v115 = a2;
                while (1)
                {
                  if (!v38)
                  {
                    while (1)
                    {
                      v73 = v70 + 1;
                      if (__OFADD__(v70, 1))
                      {
                        __break(1u);
                        goto LABEL_81;
                      }

                      if (v73 >= v10)
                      {
                        break;
                      }

                      v38 = *(v67 + 8 * v73);
                      ++v70;
                      if (v38)
                      {
                        v70 = v73;
                        goto LABEL_46;
                      }
                    }

                    v10 = v125 + 56;
                    v88 = 1 << *(v125 + 32);
                    v89 = -1;
                    if (v88 < 64)
                    {
                      v89 = ~(-1 << v88);
                    }

                    v38 = v89 & *(v125 + 56);
                    v35 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredRequests;
                    v90 = (v88 + 63) >> 6;
                    v114 = v125;

                    v91 = 0;
                    while (2)
                    {
                      if (!v38)
                      {
                        while (1)
                        {
                          v94 = v91 + 1;
                          if (__OFADD__(v91, 1))
                          {
                            break;
                          }

                          if (v94 >= v90)
                          {

                            sub_25C45A2C8(v111, v112);
                            sub_25C45A2C8(v110, v109);
                            goto LABEL_77;
                          }

                          v38 = *(v10 + 8 * v94);
                          ++v91;
                          if (v38)
                          {
                            v91 = v94;
                            goto LABEL_66;
                          }
                        }

LABEL_81:
                        __break(1u);
LABEL_82:
                        __break(1u);
LABEL_83:
                        __break(1u);
LABEL_84:
                        __break(1u);
LABEL_85:
                        __break(1u);
LABEL_86:
                        swift_once();
                        goto LABEL_25;
                      }

LABEL_66:
                      v95 = (*(v114 + 48) + ((v91 << 10) | (16 * __clz(__rbit64(v38)))));
                      v96 = *v95;
                      v11 = v95[1];
                      swift_beginAccess();

                      a2 = swift_isUniquelyReferenced_nonNull_native();
                      v124 = *(v7 + v35);
                      v97 = v124;
                      *(v7 + v35) = 0x8000000000000000;
                      v98 = sub_25C462EC0(v96, v11);
                      v100 = v97[2];
                      v101 = (v99 & 1) == 0;
                      v81 = __OFADD__(v100, v101);
                      v102 = v100 + v101;
                      if (v81)
                      {
                        goto LABEL_83;
                      }

                      v7 = v99;
                      if (v97[3] >= v102)
                      {
                        if (a2)
                        {
                          goto LABEL_71;
                        }

                        v107 = v98;
                        sub_25C4642D4();
                        v98 = v107;
                        a2 = v115;
                        if (v7)
                        {
                          goto LABEL_59;
                        }

LABEL_72:
                        v93 = v124;
                        v124[(v98 >> 6) + 8] |= 1 << v98;
                        v104 = (v93[6] + 16 * v98);
                        *v104 = v96;
                        v104[1] = v11;
                        *(v93[7] + 8 * v98) = a2;
                        v105 = v93[2];
                        v81 = __OFADD__(v105, 1);
                        v106 = v105 + 1;
                        if (v81)
                        {
                          goto LABEL_85;
                        }

                        v93[2] = v106;
                      }

                      else
                      {
                        sub_25C462F7C(v102, a2);
                        v98 = sub_25C462EC0(v96, v11);
                        if ((v7 & 1) != (v103 & 1))
                        {
                          goto LABEL_89;
                        }

LABEL_71:
                        a2 = v115;
                        if ((v7 & 1) == 0)
                        {
                          goto LABEL_72;
                        }

LABEL_59:
                        v92 = v98;

                        v93 = v124;
                        *(v124[7] + 8 * v92) = a2;
                      }

                      v7 = v116;
                      v38 &= v38 - 1;
                      *(v116 + v35) = v93;
                      swift_endAccess();
                      continue;
                    }
                  }

LABEL_46:
                  v74 = (*(v114 + 48) + ((v70 << 10) | (16 * __clz(__rbit64(v38)))));
                  v75 = *v74;
                  v11 = v74[1];
                  swift_beginAccess();

                  a2 = swift_isUniquelyReferenced_nonNull_native();
                  v124 = *(v7 + v35);
                  v76 = v124;
                  *(v7 + v35) = 0x8000000000000000;
                  v77 = sub_25C462EC0(v75, v11);
                  v79 = v76[2];
                  v80 = (v78 & 1) == 0;
                  v81 = __OFADD__(v79, v80);
                  v82 = v79 + v80;
                  if (v81)
                  {
                    goto LABEL_82;
                  }

                  v7 = v78;
                  if (v76[3] < v82)
                  {
                    break;
                  }

                  if (a2)
                  {
                    goto LABEL_51;
                  }

                  v87 = v77;
                  sub_25C4642D4();
                  v77 = v87;
                  a2 = v115;
                  if (v7)
                  {
LABEL_39:
                    v71 = v77;

                    v72 = v124;
                    *(v124[7] + 8 * v71) = a2;

                    goto LABEL_40;
                  }

LABEL_52:
                  v72 = v124;
                  v124[(v77 >> 6) + 8] |= 1 << v77;
                  v84 = (v72[6] + 16 * v77);
                  *v84 = v75;
                  v84[1] = v11;
                  *(v72[7] + 8 * v77) = a2;
                  v85 = v72[2];
                  v81 = __OFADD__(v85, 1);
                  v86 = v85 + 1;
                  if (v81)
                  {
                    goto LABEL_84;
                  }

                  v72[2] = v86;
LABEL_40:
                  v7 = v116;
                  v38 &= v38 - 1;
                  *(v116 + v35) = v72;
                  swift_endAccess();
                }

                sub_25C462F7C(v82, a2);
                v77 = sub_25C462EC0(v75, v11);
                if ((v7 & 1) != (v83 & 1))
                {
LABEL_89:
                  result = sub_25C4C8A20();
                  __break(1u);
                  return result;
                }

LABEL_51:
                a2 = v115;
                if (v7)
                {
                  goto LABEL_39;
                }

                goto LABEL_52;
              }

              __break(1u);
            }

            v110 = 0;
            v35 = 0;
            goto LABEL_24;
          }

          v16 = v14;
          v17 = v11;
          v18 = swift_allocObject();
          *(v18 + 16) = &v126;
          v19 = swift_allocObject();
          v111 = sub_25C4676E8;
          v112 = v18;
          *(v19 + 16) = sub_25C4676E8;
          *(v19 + 24) = v18;
          v121 = sub_25C4676AC;
          v122 = v19;
          aBlock = MEMORY[0x277D85DD0];
          v118 = 1107296256;
          v119 = sub_25C461B14;
          v120 = &block_descriptor_75;
          v20 = _Block_copy(&aBlock);

          xpc_dictionary_apply(v16, v20);
          swift_unknownObjectRelease();
          _Block_release(v20);
          LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

          if ((v16 & 1) == 0)
          {
            v11 = v17;
            v15 = swift_getExistentialTypeMetadata;
            goto LABEL_20;
          }

          __break(1u);
        }

        else if (qword_27FC0AC40 == -1)
        {
          goto LABEL_16;
        }

        swift_once();
LABEL_16:
        v25 = sub_25C4C7BD0();
        __swift_project_value_buffer(v25, qword_27FC0AC48);
        swift_unknownObjectRetain();
        v26 = sub_25C4C7BB0();
        v27 = sub_25C4C8710();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          aBlock = v29;
          *v28 = 134218242;
          *(v28 + 4) = a2;
          *(v28 + 12) = 2080;
          v30 = sub_25C4C8690();
          v32 = sub_25C458990(v30, v31, &aBlock);

          *(v28 + 14) = v32;
          _os_log_impl(&dword_25C452000, v26, v27, "### Add subscriber without ID: token=%llu, config=%s", v28, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v29);
          MEMORY[0x25F888630](v29, -1, -1);
          MEMORY[0x25F888630](v28, -1, -1);
        }

LABEL_77:
        swift_unknownObjectRelease();
      }

      if (qword_27FC0AC40 != -1)
      {
        swift_once();
      }

      v21 = sub_25C4C7BD0();
      __swift_project_value_buffer(v21, qword_27FC0AC48);
      v22 = sub_25C4C7BB0();
      v23 = sub_25C4C8710();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 134217984;
        *(v24 + 4) = a2;
        _os_log_impl(&dword_25C452000, v22, v23, "### Add subscriber without object: token=%llu", v24, 0xCu);
        MEMORY[0x25F888630](v24, -1, -1);
      }
    }
  }

  return result;
}