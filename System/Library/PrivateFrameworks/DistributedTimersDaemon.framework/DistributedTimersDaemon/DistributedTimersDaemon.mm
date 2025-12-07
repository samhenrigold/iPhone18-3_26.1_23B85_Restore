uint64_t sub_2490849C8()
{
  v0 = sub_24910C89C();
  __swift_allocate_value_buffer(v0, qword_27EED8208);
  __swift_project_value_buffer(v0, qword_27EED8208);
  sub_24910C58C();
  return sub_24910C88C();
}

uint64_t DTDaemon.unownedExecutor.getter()
{
  v0 = sub_24910C34C();
  v1 = sub_24910D02C();

  return v1;
}

uint64_t DTDaemon.__allocating_init(environment:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DTDaemon.init(environment:)(a1);
  return v2;
}

uint64_t DTDaemon.init(environment:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__osStateHandler) = 0;
  v3 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__startTicks;
  *(v1 + v3) = sub_24910C4AC();
  *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__subDaemons) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_syncDaemon) = 0;
  *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_timerDaemon) = 0;
  *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_transportDaemon) = 0;
  *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_xpcServer) = 0;
  v4 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__environment;
  v5 = sub_24910C3BC();
  (*(*(v5 - 8) + 32))(v1 + v4, a1, v5);
  return v1;
}

uint64_t DTDaemon.summary.getter()
{
  v1[10] = v0;
  v2 = sub_24910D51C();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  sub_249088660(&unk_27EED7F50, type metadata accessor for DTDaemon, &protocol conformance descriptor for DTDaemon);
  v4 = sub_24910CDAC();
  v1[14] = v4;
  v1[15] = v3;

  return MEMORY[0x2822009F8](sub_249084D34, v4, v3);
}

unint64_t sub_249084D34()
{
  v1 = v0[10];
  v2 = sub_24910C4AC();
  v3 = *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__startTicks);
  v4 = v2 >= v3;
  result = v2 - v3;
  if (v4)
  {
    v7 = v0[12];
    v6 = v0[13];
    v9 = v0[10];
    v8 = v0[11];
    v10 = sub_24910C31C();
    sub_24910D25C();
    MEMORY[0x24C1F1710](0xD000000000000012, 0x8000000249110E40);
    v0[9] = v10;
    (*(v7 + 104))(v6, *MEMORY[0x277D02A60], v8);
    sub_249085378();
    sub_24910D53C();
    (*(v7 + 8))(v6, v8);
    v0[5] = 0;
    v0[6] = 0xE000000000000000;
    MEMORY[0x24C1F1710](10, 0xE100000000000000);
    v11 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__subDaemons;
    swift_beginAccess();
    v12 = *(v9 + v11);
    v0[16] = v12;
    v13 = v12[2];
    v0[17] = v13;
    if (v13)
    {
      v0[18] = 0;
      v0[19] = v12[4];
      v14 = v12[5];

      ObjectType = swift_getObjectType();
      v16 = *(v14 + 16);
      swift_unknownObjectRetain();
      v21 = (v16 + *v16);
      v17 = swift_task_alloc();
      v0[20] = v17;
      *v17 = v0;
      v17[1] = sub_249084FF0;

      return v21(ObjectType, v14);
    }

    else
    {
      v19 = v0[5];
      v18 = v0[6];

      v20 = v0[1];

      return v20(v19, v18);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_249084FF0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = a2;

  v5 = *(v3 + 120);
  v6 = *(v3 + 112);

  return MEMORY[0x2822009F8](sub_249085118, v6, v5);
}

uint64_t sub_249085118()
{
  v1 = v0[22];
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0[21] & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v0[7] = 10;
    v0[8] = 0xE100000000000000;
    MEMORY[0x24C1F1710]();

    MEMORY[0x24C1F1710](v0[7], v0[8]);
  }

  v3 = v0[18];
  v4 = v0[17];

  swift_unknownObjectRelease();
  if (v3 + 1 == v4)
  {

    v6 = v0[5];
    v5 = v0[6];

    v7 = v0[1];

    return v7(v6, v5);
  }

  else
  {
    v9 = v0[18] + 1;
    v0[18] = v9;
    v10 = v0[16] + 16 * v9;
    v0[19] = *(v10 + 32);
    v11 = *(v10 + 40);
    ObjectType = swift_getObjectType();
    v13 = *(v11 + 16);
    swift_unknownObjectRetain();
    v15 = (v13 + *v13);
    v14 = swift_task_alloc();
    v0[20] = v14;
    *v14 = v0;
    v14[1] = sub_249084FF0;

    return v15(ObjectType, v11);
  }
}

uint64_t type metadata accessor for DTDaemon(uint64_t a1)
{
  result = qword_27EED82C0;
  if (!qword_27EED82C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_249085378()
{
  result = qword_27EED7540;
  if (!qword_27EED7540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7540);
  }

  return result;
}

uint64_t DTDaemon.activate()()
{
  v1[33] = v0;
  v2 = sub_24910C3BC();
  v1[34] = v2;
  v1[35] = *(v2 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = sub_24910D00C();
  v1[38] = swift_task_alloc();
  sub_24910CBAC();
  v1[39] = swift_task_alloc();
  v3 = sub_24910CFAC();
  v1[40] = v3;
  v1[41] = *(v3 - 8);
  v1[42] = swift_task_alloc();
  sub_249088660(&unk_27EED7F50, type metadata accessor for DTDaemon, &protocol conformance descriptor for DTDaemon);
  v5 = sub_24910CDAC();
  v1[43] = v5;
  v1[44] = v4;

  return MEMORY[0x2822009F8](sub_2490855B4, v5, v4);
}

uint64_t sub_2490855B4()
{
  if (qword_27EED8200 != -1)
  {
    swift_once();
  }

  v1 = sub_24910C89C();
  __swift_project_value_buffer(v1, qword_27EED8208);
  v2 = sub_24910C87C();
  v3 = sub_24910CF5C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_249083000, v2, v3, "Activate", v4, 2u);
    MEMORY[0x24C1F26F0](v4, -1, -1);
  }

  v5 = v0[33];

  v6 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__osStateHandler;
  if (!*(v5 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__osStateHandler))
  {
    v8 = v0[41];
    v7 = v0[42];
    v9 = v0[40];
    sub_249086D6C();
    (*(v8 + 104))(v7, *MEMORY[0x277D85268], v9);
    sub_24910CB9C();
    v0[32] = MEMORY[0x277D84F90];
    sub_249088660(&qword_27EED7548, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7550, &qword_24910E740);
    sub_249086E00();
    sub_24910D14C();
    v10 = sub_24910D01C();
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = objc_allocWithZone(MEMORY[0x277D028D0]);

    v13 = sub_24910CC8C();
    v0[6] = sub_2490872FC;
    v0[7] = v11;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_249087EDC;
    v0[5] = &block_descriptor;
    v14 = _Block_copy(v0 + 2);
    v15 = [v12 initWithTitle:v13 dispatchQueue:v10 handler:v14];

    _Block_release(v14);

    v16 = *(v5 + v6);
    *(v5 + v6) = v15;
  }

  v17 = v0[33];
  v18 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__environment;
  v0[45] = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__environment;
  if ((sub_24910C36C() & 1) != 0 && (v19 = v0[33], v20 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_syncDaemon, swift_beginAccess(), !*(v19 + v20)))
  {
    v46 = v0[35];
    v45 = v0[36];
    v47 = v0[34];
    type metadata accessor for DTSyncDaemon(0);
    (*(v46 + 16))(v45, v17 + v18, v47);

    v49 = DTSyncDaemon.__allocating_init(daemon:environment:)(v48, v45);
    v0[46] = v49;
    *(v19 + v20) = v49;

    sub_249088660(&qword_27EED7578, type metadata accessor for DTSyncDaemon, &protocol conformance descriptor for DTSyncDaemon);
    v51 = sub_24910CDAC();

    return MEMORY[0x2822009F8](sub_249085D68, v51, v50);
  }

  else
  {
    v21 = v0[33];
    v22 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_timerDaemon;
    swift_beginAccess();
    if (*(v21 + v22))
    {
      v23 = v0[33];
      v24 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_transportDaemon;
      swift_beginAccess();
      if (*(v23 + v24))
      {
        v25 = v0[33];
        v26 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_xpcServer;
        swift_beginAccess();
        if (*(v25 + v26))
        {

          v27 = v0[1];

          return v27();
        }

        else
        {
          v52 = v0[45];
          v54 = v0[35];
          v53 = v0[36];
          v56 = v0[33];
          v55 = v0[34];
          type metadata accessor for DTXPCServer(0);
          (*(v54 + 16))(v53, v56 + v52, v55);

          v58 = DTXPCServer.__allocating_init(daemon:environment:)(v57, v53);
          v0[51] = v58;
          *(v25 + v26) = v58;

          v59 = swift_task_alloc();
          v0[52] = v59;
          *v59 = v0;
          v59[1] = sub_249086A98;

          return DTXPCServer.activate()();
        }
      }

      else
      {
        v37 = v0[45];
        v39 = v0[35];
        v38 = v0[36];
        v41 = v0[33];
        v40 = v0[34];
        type metadata accessor for DTTransportDaemon(0);
        (*(v39 + 16))(v38, v41 + v37, v40);

        v43 = DTTransportDaemon.__allocating_init(daemon:environment:)(v42, v38);
        v0[49] = v43;
        *(v23 + v24) = v43;

        v44 = swift_task_alloc();
        v0[50] = v44;
        *v44 = v0;
        v44[1] = sub_2490866F4;

        return DTTransportDaemon.activate()();
      }
    }

    else
    {
      v29 = v0[45];
      v31 = v0[35];
      v30 = v0[36];
      v33 = v0[33];
      v32 = v0[34];
      type metadata accessor for DTTimerDaemon(0);
      (*(v31 + 16))(v30, v33 + v29, v32);

      v35 = DTTimerDaemon.__allocating_init(daemon:environment:)(v34, v30);
      v0[47] = v35;
      *(v21 + v22) = v35;

      v36 = swift_task_alloc();
      v0[48] = v36;
      *v36 = v0;
      v36[1] = sub_249086250;

      return DTTimerDaemon.activate()();
    }
  }
}

uint64_t sub_249085D68()
{
  DTSyncDaemon.activate()();
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);

  return MEMORY[0x2822009F8](sub_249085DCC, v1, v2);
}

uint64_t sub_249085DCC()
{
  v1 = v0[33];
  v2 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__subDaemons;
  swift_beginAccess();
  v3 = *(v1 + v2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v2) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_249088158(0, v3[2] + 1, 1, v3);
    *(v1 + v2) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_249088158((v5 > 1), v6 + 1, 1, v3);
  }

  v7 = v0[46];
  v8 = sub_249088660(&qword_27EED7580, type metadata accessor for DTSyncDaemon, &unk_24910E9F0);
  v3[2] = v6 + 1;
  v9 = &v3[2 * v6];
  v9[4] = v7;
  v9[5] = v8;
  *(v1 + v2) = v3;
  swift_endAccess();

  v10 = v0[33];
  v11 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_timerDaemon;
  swift_beginAccess();
  if (*(v10 + v11))
  {
    v12 = v0[33];
    v13 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_transportDaemon;
    swift_beginAccess();
    if (*(v12 + v13))
    {
      v14 = v0[33];
      v15 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_xpcServer;
      swift_beginAccess();
      if (*(v14 + v15))
      {

        v16 = v0[1];

        return v16();
      }

      else
      {
        v34 = v0[45];
        v36 = v0[35];
        v35 = v0[36];
        v38 = v0[33];
        v37 = v0[34];
        type metadata accessor for DTXPCServer(0);
        (*(v36 + 16))(v35, v38 + v34, v37);

        v40 = DTXPCServer.__allocating_init(daemon:environment:)(v39, v35);
        v0[51] = v40;
        *(v14 + v15) = v40;

        v41 = swift_task_alloc();
        v0[52] = v41;
        *v41 = v0;
        v41[1] = sub_249086A98;

        return DTXPCServer.activate()();
      }
    }

    else
    {
      v26 = v0[45];
      v28 = v0[35];
      v27 = v0[36];
      v30 = v0[33];
      v29 = v0[34];
      type metadata accessor for DTTransportDaemon(0);
      (*(v28 + 16))(v27, v30 + v26, v29);

      v32 = DTTransportDaemon.__allocating_init(daemon:environment:)(v31, v27);
      v0[49] = v32;
      *(v12 + v13) = v32;

      v33 = swift_task_alloc();
      v0[50] = v33;
      *v33 = v0;
      v33[1] = sub_2490866F4;

      return DTTransportDaemon.activate()();
    }
  }

  else
  {
    v18 = v0[45];
    v20 = v0[35];
    v19 = v0[36];
    v22 = v0[33];
    v21 = v0[34];
    type metadata accessor for DTTimerDaemon(0);
    (*(v20 + 16))(v19, v22 + v18, v21);

    v24 = DTTimerDaemon.__allocating_init(daemon:environment:)(v23, v19);
    v0[47] = v24;
    *(v10 + v11) = v24;

    v25 = swift_task_alloc();
    v0[48] = v25;
    *v25 = v0;
    v25[1] = sub_249086250;

    return DTTimerDaemon.activate()();
  }
}

uint64_t sub_249086250()
{
  v1 = *v0;

  v2 = *(v1 + 352);
  v3 = *(v1 + 344);

  return MEMORY[0x2822009F8](sub_249086370, v3, v2);
}

uint64_t sub_249086370()
{
  v1 = v0[33];
  v2 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__subDaemons;
  swift_beginAccess();
  v3 = *(v1 + v2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v2) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_249088158(0, v3[2] + 1, 1, v3);
    *(v1 + v2) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_249088158((v5 > 1), v6 + 1, 1, v3);
  }

  v7 = v0[47];
  v8 = sub_249088660(&qword_27EED7560, type metadata accessor for DTTimerDaemon, &unk_24910FF60);
  v3[2] = v6 + 1;
  v9 = &v3[2 * v6];
  v9[4] = v7;
  v9[5] = v8;
  *(v1 + v2) = v3;
  swift_endAccess();

  v10 = v0[33];
  v11 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_transportDaemon;
  swift_beginAccess();
  if (*(v10 + v11))
  {
    v12 = v0[33];
    v13 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_xpcServer;
    swift_beginAccess();
    if (*(v12 + v13))
    {

      v14 = v0[1];

      return v14();
    }

    else
    {
      v24 = v0[45];
      v26 = v0[35];
      v25 = v0[36];
      v28 = v0[33];
      v27 = v0[34];
      type metadata accessor for DTXPCServer(0);
      (*(v26 + 16))(v25, v28 + v24, v27);

      v30 = DTXPCServer.__allocating_init(daemon:environment:)(v29, v25);
      v0[51] = v30;
      *(v12 + v13) = v30;

      v31 = swift_task_alloc();
      v0[52] = v31;
      *v31 = v0;
      v31[1] = sub_249086A98;

      return DTXPCServer.activate()();
    }
  }

  else
  {
    v16 = v0[45];
    v18 = v0[35];
    v17 = v0[36];
    v20 = v0[33];
    v19 = v0[34];
    type metadata accessor for DTTransportDaemon(0);
    (*(v18 + 16))(v17, v20 + v16, v19);

    v22 = DTTransportDaemon.__allocating_init(daemon:environment:)(v21, v17);
    v0[49] = v22;
    *(v10 + v11) = v22;

    v23 = swift_task_alloc();
    v0[50] = v23;
    *v23 = v0;
    v23[1] = sub_2490866F4;

    return DTTransportDaemon.activate()();
  }
}

uint64_t sub_2490866F4()
{
  v1 = *v0;

  v2 = *(v1 + 352);
  v3 = *(v1 + 344);

  return MEMORY[0x2822009F8](sub_249086814, v3, v2);
}

uint64_t sub_249086814()
{
  v1 = v0[33];
  v2 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__subDaemons;
  swift_beginAccess();
  v3 = *(v1 + v2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v2) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_249088158(0, v3[2] + 1, 1, v3);
    *(v1 + v2) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_249088158((v5 > 1), v6 + 1, 1, v3);
  }

  v7 = v0[49];
  v8 = sub_249088660(&qword_27EED7568, type metadata accessor for DTTransportDaemon, &unk_249110348);
  v3[2] = v6 + 1;
  v9 = &v3[2 * v6];
  v9[4] = v7;
  v9[5] = v8;
  *(v1 + v2) = v3;
  swift_endAccess();

  v10 = v0[33];
  v11 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_xpcServer;
  swift_beginAccess();
  if (*(v10 + v11))
  {

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[45];
    v16 = v0[35];
    v15 = v0[36];
    v18 = v0[33];
    v17 = v0[34];
    type metadata accessor for DTXPCServer(0);
    (*(v16 + 16))(v15, v18 + v14, v17);

    v20 = DTXPCServer.__allocating_init(daemon:environment:)(v19, v15);
    v0[51] = v20;
    *(v10 + v11) = v20;

    v21 = swift_task_alloc();
    v0[52] = v21;
    *v21 = v0;
    v21[1] = sub_249086A98;

    return DTXPCServer.activate()();
  }
}

uint64_t sub_249086A98()
{
  v1 = *v0;

  v2 = *(v1 + 352);
  v3 = *(v1 + 344);

  return MEMORY[0x2822009F8](sub_249086BB8, v3, v2);
}

uint64_t sub_249086BB8()
{
  v1 = v0[33];
  v2 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__subDaemons;
  swift_beginAccess();
  v3 = *(v1 + v2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v2) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_249088158(0, v3[2] + 1, 1, v3);
    *(v1 + v2) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_249088158((v5 > 1), v6 + 1, 1, v3);
  }

  v7 = v0[51];
  v8 = sub_249088660(&qword_27EED7570, type metadata accessor for DTXPCServer, &unk_249110D68);
  v3[2] = v6 + 1;
  v9 = &v3[2 * v6];
  v9[4] = v7;
  v9[5] = v8;
  *(v1 + v2) = v3;
  swift_endAccess();

  v10 = v0[1];

  return v10();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_249086D6C()
{
  result = qword_27EED7B60;
  if (!qword_27EED7B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EED7B60);
  }

  return result;
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

unint64_t sub_249086E00()
{
  result = qword_27EED7558;
  if (!qword_27EED7558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EED7550, &qword_24910E740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7558);
  }

  return result;
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

uint64_t sub_249086EAC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249086EE4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v26 - v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 63;
  }

  v8 = Strong;
  if (qword_27EED8200 != -1)
  {
    swift_once();
  }

  v9 = sub_24910C89C();
  __swift_project_value_buffer(v9, qword_27EED8208);
  v10 = sub_24910C87C();
  v11 = sub_24910CF5C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_249083000, v10, v11, "Generating state dump", v12, 2u);
    MEMORY[0x24C1F26F0](v12, -1, -1);
  }

  type metadata accessor for DTDaemon.OutputWrapper();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v14 = dispatch_semaphore_create(0);
  v27 = sub_24910C34C();
  v15 = sub_24910CDEC();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v6, 1, 1, v15);
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v8;
  v17[4] = v14;
  sub_249088588(v6, v4);
  v18 = (*(v16 + 48))(v4, 1, v15);

  v19 = v14;
  if (v18 == 1)
  {
    sub_2490885F8(v4);
  }

  else
  {
    sub_24910CDDC();
    v26[1] = v8;
    (*(v16 + 8))(v4, v15);
  }

  v21 = sub_249088660(&qword_27EED8180, sub_249086D6C, MEMORY[0x277D85270]);
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_24910E820;
  *(v22 + 24) = v17;
  v28 = 6;
  v29 = 0;
  v23 = v27;
  v30 = v27;
  v31 = v21;

  v24 = v23;
  swift_task_create();
  sub_2490885F8(v6);

  sub_24910CFBC();
  if (*(v13 + 24))
  {
    v20 = *(v13 + 16);
  }

  else
  {
    v20 = 63;
  }

  return v20;
}

uint64_t sub_249087304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_249087398;

  return DTDaemon.summary.getter();
}

uint64_t sub_249087398(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;

  return MEMORY[0x2822009F8](sub_249087498, 0, 0);
}

uint64_t sub_249087498()
{
  v1 = v0[6];
  v2 = v0[2];
  *(v2 + 16) = v0[5];
  *(v2 + 24) = v1;

  sub_24910CFCC();
  v3 = v0[1];

  return v3();
}

uint64_t DTDaemon.invalidate()()
{
  v1[17] = v0;
  sub_249088660(&unk_27EED7F50, type metadata accessor for DTDaemon, &protocol conformance descriptor for DTDaemon);
  v3 = sub_24910CDAC();
  v1[18] = v3;
  v1[19] = v2;

  return MEMORY[0x2822009F8](sub_2490875DC, v3, v2);
}

uint64_t sub_2490875DC()
{
  if (qword_27EED8200 != -1)
  {
    swift_once();
  }

  v1 = sub_24910C89C();
  __swift_project_value_buffer(v1, qword_27EED8208);
  v2 = sub_24910C87C();
  v3 = sub_24910CF5C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_249083000, v2, v3, "Invalidate", v4, 2u);
    MEMORY[0x24C1F26F0](v4, -1, -1);
  }

  v5 = v0[17];

  v6 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__osStateHandler;
  v7 = *(v5 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__osStateHandler);
  if (v7)
  {
    [v7 remove];
    v8 = *(v5 + v6);
  }

  else
  {
    v8 = 0;
  }

  v9 = v0[17];
  *(v5 + v6) = 0;

  v10 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__subDaemons;
  swift_beginAccess();
  v11 = *(v9 + v10);
  v0[20] = v11;
  *(v9 + v10) = MEMORY[0x277D84F90];
  v12 = *(v11 + 16);
  v0[21] = v12;
  if (v12)
  {
    v0[22] = 0;
    v13 = v0[20];
    v0[23] = *(v13 + 32);
    v14 = *(v13 + 40);
    ObjectType = swift_getObjectType();
    v16 = *(v14 + 32);
    swift_unknownObjectRetain();
    v25 = (v16 + *v16);
    v17 = swift_task_alloc();
    v0[24] = v17;
    *v17 = v0;
    v17[1] = sub_24908792C;

    return v25(ObjectType, v14);
  }

  else
  {
    v19 = v0[17];

    v20 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_syncDaemon;
    swift_beginAccess();
    *(v19 + v20) = 0;

    v21 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_timerDaemon;
    swift_beginAccess();
    *(v19 + v21) = 0;

    v22 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_transportDaemon;
    swift_beginAccess();
    *(v19 + v22) = 0;

    v23 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_xpcServer;
    swift_beginAccess();
    *(v19 + v23) = 0;

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_24908792C()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_249087A4C, v3, v2);
}

uint64_t sub_249087A4C()
{
  v1 = v0[22];
  v2 = v0[21];
  swift_unknownObjectRelease();
  if (v1 + 1 == v2)
  {
    v3 = v0[17];

    v4 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_syncDaemon;
    swift_beginAccess();
    *(v3 + v4) = 0;

    v5 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_timerDaemon;
    swift_beginAccess();
    *(v3 + v5) = 0;

    v6 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_transportDaemon;
    swift_beginAccess();
    *(v3 + v6) = 0;

    v7 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_xpcServer;
    swift_beginAccess();
    *(v3 + v7) = 0;

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[22] + 1;
    v0[22] = v10;
    v11 = v0[20] + 16 * v10;
    v0[23] = *(v11 + 32);
    v12 = *(v11 + 40);
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 32);
    swift_unknownObjectRetain();
    v16 = (v14 + *v14);
    v15 = swift_task_alloc();
    v0[24] = v15;
    *v15 = v0;
    v15[1] = sub_24908792C;

    return v16(ObjectType, v12);
  }
}

uint64_t DTDaemon.deinit()
{
  v1 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__environment;
  v2 = sub_24910C3BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DTDaemon.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__environment;
  v2 = sub_24910C3BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_249087E54()
{
  v0 = sub_24910C34C();
  v1 = sub_24910D02C();

  return v1;
}

uint64_t sub_249087EA4()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id sub_249087EDC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  v3 = sub_24910CC8C();

  return v3;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249087F68(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_249088060;

  return v6(a1);
}

uint64_t sub_249088060()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_249088158(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7588, "\b:");
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7590, &qword_24910E808);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_249088294(uint64_t a1)
{
  result = sub_24910C3BC();
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

uint64_t sub_24908837C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_249088498()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2490884E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2490887FC;

  return sub_249087304(v5, v2, v3, v4);
}

uint64_t sub_249088588(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2490885F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249088660(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2490886A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2490886E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24908837C;

  return sub_249087F68(a1, v4);
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

uint64_t sub_249088800()
{
  v0 = sub_24910C89C();
  __swift_allocate_value_buffer(v0, qword_27EED82D8);
  __swift_project_value_buffer(v0, qword_27EED82D8);
  sub_24910C58C();
  return sub_24910C88C();
}

uint64_t DTSyncDaemon._persistentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
  swift_beginAccess();
  return sub_2490A3010(v1 + v3, a1, type metadata accessor for DTSyncDaemon.PersistentData);
}

uint64_t DTSyncDaemon._persistentData.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
  swift_beginAccess();
  sub_2490A4480(a1, v1 + v3, type metadata accessor for DTSyncDaemon.PersistentData);
  return swift_endAccess();
}

uint64_t DTSyncDaemon.unownedExecutor.getter()
{
  v0 = sub_24910C34C();
  v1 = sub_24910D02C();

  return v1;
}

uint64_t DTSyncDaemon.__allocating_init(daemon:environment:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_2490A2D24(a1, a2);

  return v4;
}

uint64_t DTSyncDaemon.init(daemon:environment:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_2490A2D24(a1, a2);

  return v2;
}

uint64_t DTSyncDaemon.deinit()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7598, &qword_24910E890);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v36 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75A0, &qword_24910E898);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v43 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v42 = &v36 - v8;
  v9 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__eventContinuations;
  swift_beginAccess();
  v36 = v9;
  v37 = v0;
  v10 = *(v0 + v9);
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v38 = v2 + 16;
  v39 = v2;
  v44 = (v2 + 32);
  v40 = v10;
  v41 = (v2 + 8);

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v18 = v17;
LABEL_12:
      v22 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v23 = v22 | (v18 << 6);
      v24 = v39;
      v25 = *(*(v40 + 48) + 8 * v23);
      (*(v39 + 16))(v4, *(v40 + 56) + *(v39 + 72) * v23, v1);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75A8, &unk_24910E8A0);
      v27 = *(v26 + 48);
      v28 = v43;
      *v43 = v25;
      v29 = *(v24 + 32);
      v21 = v28;
      v29(&v28[v27], v4, v1);
      (*(*(v26 - 8) + 56))(v21, 0, 1, v26);
      v20 = v18;
LABEL_13:
      v30 = v42;
      sub_2490A2F0C(v21, v42);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75A8, &unk_24910E8A0);
      if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
      {
        break;
      }

      (*v44)(v4, v30 + *(v31 + 48), v1);
      sub_24910CE2C();
      result = (*v41)(v4, v1);
      v17 = v20;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v33 = v37;
    *(v37 + v36) = MEMORY[0x277D84F98];

    swift_weakDestroy();

    v34 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__environment;
    v35 = sub_24910C3BC();
    (*(*(v35 - 8) + 8))(v33 + v34, v35);
    sub_2490A4414(v33 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData, type metadata accessor for DTSyncDaemon.PersistentData);
    sub_2490A487C(v33 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__migrateTime, &unk_27EED7B70, &qword_249110300);

    return v33;
  }

  else
  {
LABEL_5:
    if (v15 <= v17 + 1)
    {
      v19 = v17 + 1;
    }

    else
    {
      v19 = v15;
    }

    v20 = v19 - 1;
    v21 = v43;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75A8, &unk_24910E8A0);
        (*(*(v32 - 8) + 56))(v21, 1, 1, v32);
        v14 = 0;
        goto LABEL_13;
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t DTSyncDaemon.__deallocating_deinit()
{
  DTSyncDaemon.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t DTSyncDaemon.summary.getter()
{
  v1[11] = v0;
  v1[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75B0, &qword_24910E8B8);
  v1[13] = swift_task_alloc();
  v1[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75B8, &qword_24910E8C0);
  v1[15] = swift_task_alloc();
  v2 = sub_24910D51C();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v3 = sub_24910C49C();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B70, &qword_249110300);
  v1[22] = swift_task_alloc();
  v4 = sub_24910C48C();
  v1[23] = v4;
  v1[24] = *(v4 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7710, &qword_24910E8C8);
  v1[27] = swift_task_alloc();
  v5 = sub_24910C3EC();
  v1[28] = v5;
  v1[29] = *(v5 - 8);
  v1[30] = swift_task_alloc();
  sub_2490A2FC8(&qword_27EED7578, type metadata accessor for DTSyncDaemon, &protocol conformance descriptor for DTSyncDaemon);
  v7 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490892D8, v7, v6);
}

uint64_t sub_2490892D8()
{
  v104 = v0;
  v1 = *(v0 + 88);
  sub_24910C3DC();
  sub_24910CCBC();
  strcpy(v103, "ckEngine=");
  WORD1(v103[1]) = 0;
  HIDWORD(v103[1]) = -385875968;
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x24C1F1710](v3, v4);

  sub_24910CCBC();

  strcpy(v103, "ckContainer=");
  BYTE5(v103[1]) = 0;
  HIWORD(v103[1]) = -5120;
  v5 = [*(v1 + 24) containerIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = sub_24910CC9C();
    v9 = v8;
  }

  else
  {
    v9 = 0xE300000000000000;
    v7 = 7104878;
  }

  v10 = v99[27];
  v11 = v99[11];
  v100 = v11;
  MEMORY[0x24C1F1710](v7, v9);

  sub_24910CCBC();

  strcpy(v103, "ckState=");
  BYTE1(v103[1]) = 0;
  WORD1(v103[1]) = 0;
  HIDWORD(v103[1]) = -402653184;
  v12 = (v11 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData);
  swift_beginAccess();
  v13 = type metadata accessor for DTSyncDaemon.PersistentData(0);
  sub_2490A4674(v12 + *(v13 + 20), v10, &qword_27EED7710, &qword_24910E8C8);
  v14 = sub_24910CACC();
  v15 = (*(*(v14 - 8) + 48))(v10, 1, v14);
  sub_2490A487C(v10, &qword_27EED7710, &qword_24910E8C8);
  if (v15 == 1)
  {
    v16 = 0x65736C6166;
  }

  else
  {
    v16 = 1702195828;
  }

  if (v15 == 1)
  {
    v17 = 0xE500000000000000;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  MEMORY[0x24C1F1710](v16, v17);

  sub_24910CCBC();

  strcpy(v103, "alarms=");
  v103[1] = 0xE700000000000000;
  v99[8] = *(*v12 + 16);
  v18 = sub_24910D50C();
  MEMORY[0x24C1F1710](v18);

  sub_24910CCBC();

  strcpy(v103, "timers=");
  v103[1] = 0xE700000000000000;
  v90 = v12;
  v99[9] = *(v12[1] + 16);
  v19 = sub_24910D50C();
  MEMORY[0x24C1F1710](v19);

  sub_24910CCBC();

  if ((*(v100 + 40) & 1) == 0)
  {
    sub_24910CCBC();
  }

  v20 = v99[23];
  v21 = v99[24];
  v22 = v99[22];
  v23 = v99[11];
  v24 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__migrateTime;
  swift_beginAccess();
  sub_2490A4674(v23 + v24, v22, &unk_27EED7B70, &qword_249110300);
  if ((*(v21 + 48))(v22, 1, v20) == 1)
  {
    sub_2490A487C(v99[22], &unk_27EED7B70, &qword_249110300);
  }

  else
  {
    v26 = v99[25];
    v25 = v99[26];
    v28 = v99[23];
    v27 = v99[24];
    v29 = v99[21];
    v31 = v99[19];
    v30 = v99[20];
    v32 = v99[17];
    v93 = v99[16];
    v96 = v99[18];
    (*(v27 + 32))(v25, v99[22], v28);
    sub_24910C39C();
    sub_24910C44C();
    (*(v30 + 8))(v29, v31);
    sub_24910C47C();
    v33 = *(v27 + 8);
    v33(v26, v28);
    v103[0] = 0;
    v103[1] = 0xE000000000000000;
    MEMORY[0x24C1F1710](0x3D6574617267696DLL, 0xE800000000000000);
    v99[10] = sub_24910D65C();
    (*(v32 + 104))(v96, *MEMORY[0x277D02A60], v93);
    sub_2490A3078();
    sub_24910D53C();
    (*(v32 + 8))(v96, v93);
    sub_24910CCBC();

    v33(v25, v28);
  }

  v34 = v99;
  v91 = v99[14];
  v94 = v99[15];
  MEMORY[0x24C1F1710](10, 0xE100000000000000);
  v35 = *v90 + 64;
  v36 = -1;
  v37 = -1 << *(*v90 + 32);
  if (-v37 < 64)
  {
    v36 = ~(-1 << -v37);
  }

  v38 = v36 & *(*v90 + 64);
  v39 = (63 - v37) >> 6;
  v97 = *v90;
  result = swift_bridgeObjectRetain_n();
  v41 = 0;
  v42 = MEMORY[0x277D84F90];
  if (v38)
  {
    while (1)
    {
      v101 = v42;
LABEL_29:
      v44 = v34[15];
      v45 = __clz(__rbit64(v38)) | (v41 << 6);
      v46 = *(v97 + 56);
      v47 = (*(v97 + 48) + 16 * v45);
      v49 = *v47;
      v48 = v47[1];
      v50 = type metadata accessor for DTSyncedAlarm(0);
      sub_2490A3010(v46 + *(*(v50 - 8) + 72) * v45, v44 + *(v91 + 48), type metadata accessor for DTSyncedAlarm);
      *v44 = v49;
      *(v94 + 8) = v48;

      sub_24910D25C();

      strcpy(v103, "SyncedAlarm: ");
      HIWORD(v103[1]) = -4864;
      sub_2490A2FC8(&unk_27EED7950, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
      v51 = sub_24910D50C();
      MEMORY[0x24C1F1710](v51);

      MEMORY[0x24C1F1710](10, 0xE100000000000000);
      v52 = v103[0];
      v53 = v103[1];
      v54 = v101;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_24909F648(0, *(v101 + 2) + 1, 1, v101);
      }

      v56 = *(v54 + 2);
      v55 = *(v54 + 3);
      v57 = v54;
      v34 = v99;
      if (v56 >= v55 >> 1)
      {
        v57 = sub_24909F648((v55 > 1), v56 + 1, 1, v54);
      }

      v38 &= v38 - 1;
      v58 = v99[15];
      *(v57 + 2) = v56 + 1;
      v42 = v57;
      v59 = &v57[16 * v56];
      *(v59 + 4) = v52;
      *(v59 + 5) = v53;
      result = sub_2490A487C(v58, &qword_27EED75B8, &qword_24910E8C0);
      if (!v38)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
LABEL_25:
    v43 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v43 >= v39)
    {
      break;
    }

    v38 = *(v35 + 8 * v43);
    ++v41;
    if (v38)
    {
      v101 = v42;
      v41 = v43;
      goto LABEL_29;
    }
  }

  v92 = v34[12];
  v95 = v34[13];

  v60 = v90[1];
  v63 = *(v60 + 64);
  v62 = v60 + 64;
  v61 = v63;
  v64 = -1;
  v65 = -1 << *(v90[1] + 32);
  if (-v65 < 64)
  {
    v64 = ~(-1 << -v65);
  }

  v66 = v64 & v61;
  v67 = (63 - v65) >> 6;
  v98 = v90[1];
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v66; result = sub_2490A487C(v84, &qword_27EED75B0, &qword_24910E8B8))
  {
    v102 = v42;
LABEL_43:
    v70 = v34[13];
    v71 = __clz(__rbit64(v66)) | (i << 6);
    v72 = *(v98 + 56);
    v73 = (*(v98 + 48) + 16 * v71);
    v75 = *v73;
    v74 = v73[1];
    v76 = type metadata accessor for DTSyncedTimer(0);
    sub_2490A3010(v72 + *(*(v76 - 8) + 72) * v71, v70 + *(v92 + 48), type metadata accessor for DTSyncedTimer);
    *v70 = v75;
    *(v95 + 8) = v74;

    sub_24910D25C();

    strcpy(v103, "SyncedTimer: ");
    HIWORD(v103[1]) = -4864;
    sub_2490A2FC8(&qword_27EED75C0, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
    v77 = sub_24910D50C();
    MEMORY[0x24C1F1710](v77);

    MEMORY[0x24C1F1710](10, 0xE100000000000000);
    v78 = v103[0];
    v79 = v103[1];
    v80 = v102;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v80 = sub_24909F648(0, *(v102 + 2) + 1, 1, v102);
    }

    v82 = *(v80 + 2);
    v81 = *(v80 + 3);
    v83 = v80;
    v34 = v99;
    if (v82 >= v81 >> 1)
    {
      v83 = sub_24909F648((v81 > 1), v82 + 1, 1, v80);
    }

    v66 &= v66 - 1;
    v84 = v99[13];
    *(v83 + 2) = v82 + 1;
    v42 = v83;
    v85 = &v83[16 * v82];
    *(v85 + 4) = v78;
    *(v85 + 5) = v79;
  }

  while (1)
  {
    v69 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v69 >= v67)
    {

      v103[0] = v42;

      sub_24909FED8(v103);
      v87 = v34[29];
      v86 = v34[30];
      v88 = v34[28];
      sub_249089EB4(v103[0]);

      (*(v87 + 8))(v86, v88);

      v89 = v34[1];

      return v89(0, 0xE000000000000000);
    }

    v66 = *(v62 + 8 * v69);
    ++i;
    if (v66)
    {
      v102 = v42;
      i = v69;
      goto LABEL_43;
    }
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_249089EB4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;

      MEMORY[0x24C1F1710](v3, v4);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

Swift::Void __swiftcall DTSyncDaemon.activate()()
{
  v1 = v0;
  v2 = sub_24910C80C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24910C58C();
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = sub_24910CC8C();

  v8 = [v6 initWithSuiteName_];

  if (v8)
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D05770], v2);
    sub_24910C7FC();
    (*(v3 + 8))(v5, v2);
    v9 = sub_24910CF7C();

    *(v1 + 40) = (v9 == 2) | v9 & 1;
  }

  sub_24908A0C0();
  sub_24908AAB8();
  sub_24908AF98();
}

void sub_24908A0C0()
{
  v91 = *MEMORY[0x277D85DE8];
  v80 = type metadata accessor for DTSyncDaemon.PersistentData(0);
  v1 = MEMORY[0x28223BE20](v80);
  v86 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v84 = &v75 - v3;
  v83 = sub_24910C12C();
  v4 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED78F0, &qword_24910EB70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v75 - v7;
  v9 = sub_24910C1AC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v85 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v75 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v75 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v81 = &v75 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v75 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v75 - v24;
  v88 = v0;
  sub_24910C35C();
  v26 = (*(v10 + 48))(v8, 1, v9);
  v27 = &qword_27EED8000;
  v87 = v10;
  if (v26 != 1)
  {
    v41 = *(v10 + 32);
    v41(v23, v8, v9);
    v41(v25, v23, v9);
    v40 = v25;
    goto LABEL_5;
  }

  v78 = v9;
  v79 = v25;
  sub_2490A487C(v8, &qword_27EED78F0, &qword_24910EB70);
  v28 = [objc_opt_self() defaultManager];
  v89 = 0;
  v29 = [v28 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:0 error:&v89];

  v30 = v89;
  if (v29)
  {
    sub_24910C17C();
    v31 = v30;

    v89 = sub_24910C58C();
    v90 = v32;
    v77 = *MEMORY[0x277CC91D8];
    v76 = *(v4 + 104);
    v33 = v82;
    v34 = v83;
    v76(v82);
    sub_2490A44E8();
    sub_24910C19C();
    v35 = *(v4 + 8);
    v35(v33, v34);

    v75 = *(v87 + 8);
    v36 = v15;
    v37 = v78;
    v75(v36, v78);
    v89 = 0xD000000000000010;
    v90 = 0x80000002491110F0;
    (v76)(v33, v77, v34);
    v38 = v81;
    v10 = v87;
    sub_24910C19C();
    v39 = v33;
    v9 = v37;
    v35(v39, v34);
    v27 = &qword_27EED8000;
    v75(v18, v37);
    v40 = v79;
    (*(v10 + 32))(v79, v38, v37);
LABEL_5:
    v42 = v85;
    if (v27[90] != -1)
    {
      swift_once();
    }

    v43 = sub_24910C89C();
    __swift_project_value_buffer(v43, qword_27EED82D8);
    (*(v10 + 16))(v42, v40, v9);
    v44 = sub_24910C87C();
    v45 = sub_24910CF5C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = v10;
      v48 = swift_slowAlloc();
      v89 = v48;
      *v46 = 136315138;
      v49 = sub_24910C18C();
      v51 = v50;
      v52 = *(v47 + 8);
      v52(v42, v9);
      v53 = sub_24909F930(v49, v51, &v89);

      *(v46 + 4) = v53;
      _os_log_impl(&dword_249083000, v44, v45, "Persistent data load: path=%s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x24C1F26F0](v48, -1, -1);
      MEMORY[0x24C1F26F0](v46, -1, -1);
    }

    else
    {

      v52 = *(v10 + 8);
      v52(v42, v9);
    }

    v54 = sub_24910C1BC();
    v56 = v55;
    sub_24910BFAC();
    swift_allocObject();
    sub_24910BF9C();
    sub_2490A2FC8(&qword_27EED76B8, type metadata accessor for DTSyncDaemon.PersistentData, &protocol conformance descriptor for DTSyncDaemon.PersistentData);
    sub_24910BF8C();
    v52(v40, v9);

    sub_2490A453C(v54, v56);
    v71 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
    v72 = v88;
    swift_beginAccess();
    v73 = v72 + v71;
    v74 = v84;
    goto LABEL_16;
  }

  v57 = v89;
  v58 = sub_24910C11C();

  swift_willThrow();
  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v59 = sub_24910C89C();
  __swift_project_value_buffer(v59, qword_27EED82D8);
  v60 = v58;
  v61 = sub_24910C87C();
  v62 = sub_24910CF5C();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v89 = v64;
    *v63 = 136315138;
    swift_getErrorValue();
    v65 = sub_24910D5DC();
    v67 = sub_24909F930(v65, v66, &v89);

    *(v63 + 4) = v67;
    _os_log_impl(&dword_249083000, v61, v62, "Persistent data load failed: error=%s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x24C1F26F0](v64, -1, -1);
    MEMORY[0x24C1F26F0](v63, -1, -1);
  }

  v68 = v86;
  sub_2490A561C(v86);

  v69 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
  v70 = v88;
  swift_beginAccess();
  v73 = v70 + v69;
  v74 = v68;
LABEL_16:
  sub_2490A4480(v74, v73, type metadata accessor for DTSyncDaemon.PersistentData);
  swift_endAccess();
  LOBYTE(v89) = 1;
  DTSyncDaemon._report(event:)(&v89);
}

void sub_24908AAB8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7710, &qword_24910E8C8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - v3;
  v5 = sub_24910C90C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  if (*(v0 + 32))
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v12 = sub_24910C89C();
    __swift_project_value_buffer(v12, qword_27EED82D8);
    v33 = sub_24910C87C();
    v13 = sub_24910CF5C();
    if (os_log_type_enabled(v33, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_249083000, v33, v13, "SyncEngine start: already started", v14, 2u);
      MEMORY[0x24C1F26F0](v14, -1, -1);
    }

    v15 = v33;
  }

  else
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v16 = sub_24910C89C();
    __swift_project_value_buffer(v16, qword_27EED82D8);

    v17 = sub_24910C87C();
    v18 = sub_24910CF5C();

    if (os_log_type_enabled(v17, v18))
    {
      v32 = v18;
      v33 = v6;
      v19 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34[0] = v31;
      *v19 = 136315138;
      v20 = [*(v1 + 24) containerIdentifier];
      if (v20)
      {
        v21 = v20;
        v22 = sub_24910CC9C();
        v24 = v23;
      }

      else
      {
        v24 = 0xE300000000000000;
        v22 = 7104878;
      }

      v25 = sub_24909F930(v22, v24, v34);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_249083000, v17, v32, "SyncEngine start: container=%s", v19, 0xCu);
      v26 = v31;
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x24C1F26F0](v26, -1, -1);
      MEMORY[0x24C1F26F0](v19, -1, -1);

      v6 = v33;
    }

    else
    {
    }

    v27 = [*(v1 + 24) privateCloudDatabase];
    v28 = v1 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
    swift_beginAccess();
    v29 = type metadata accessor for DTSyncDaemon.PersistentData(0);
    sub_2490A4674(v28 + *(v29 + 20), v4, &qword_27EED7710, &qword_24910E8C8);
    sub_2490A2FC8(&qword_27EED76B0, type metadata accessor for DTSyncDaemon, &protocol conformance descriptor for DTSyncDaemon);
    swift_unknownObjectRetain();
    sub_24910C8FC();
    sub_24910C8EC();
    sub_24910C38C();
    sub_24910C8DC();
    (v6[2].isa)(v9, v11, v5);
    sub_24910CB2C();
    swift_allocObject();
    v30 = sub_24910CB3C();
    (v6[1].isa)(v11, v5);
    *(v1 + 32) = v30;
  }
}

void sub_24908AF98()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  MEMORY[0x28223BE20](v0 - 8);
  v52 = &v45 - v1;
  v2 = sub_24910C49C();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  v46 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24910C48C();
  v54 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v6;
  MEMORY[0x28223BE20](v5);
  v51 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B70, &qword_249110300);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - v12;
  v14 = sub_24910C80C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24910C58C();
  v18 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v19 = sub_24910CC8C();

  v20 = [v18 initWithSuiteName_];

  if (v20 && ((*(v15 + 104))(v17, *MEMORY[0x277D05760], v14), sub_24910C7FC(), (*(v15 + 8))(v17, v14), v21 = sub_24910CF7C(), , v20, v21 != 2) && (v21 & 1) != 0)
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v22 = sub_24910C89C();
    __swift_project_value_buffer(v22, qword_27EED82D8);
    v23 = sub_24910C87C();
    v24 = sub_24910CF3C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_249083000, v23, v24, "migrate: skip already migrated", v25, 2u);
      MEMORY[0x24C1F26F0](v25, -1, -1);
    }
  }

  else
  {
    v26 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__migrateTime;
    v27 = v53;
    swift_beginAccess();
    sub_2490A4674(v27 + v26, v13, &unk_27EED7B70, &qword_249110300);
    v28 = (*(v54 + 48))(v13, 1, v4);
    sub_2490A487C(v13, &unk_27EED7B70, &qword_249110300);
    if (v28 == 1)
    {
      v29 = sub_2490A09B0(0x20000000000001uLL);
      v30 = vcvtd_n_f64_u64(v29, 0x35uLL) * 10.0 + 5.0;
      if (v29 == 0x20000000000000)
      {
        v31 = 15.0;
      }

      else
      {
        v31 = v30;
      }

      if (qword_27EED82D0 != -1)
      {
        swift_once();
      }

      v32 = sub_24910C89C();
      __swift_project_value_buffer(v32, qword_27EED82D8);
      v33 = sub_24910C87C();
      v34 = sub_24910CF5C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 134217984;
        *(v35 + 4) = v31;
        _os_log_impl(&dword_249083000, v33, v34, "migrate: waiting %f minutes", v35, 0xCu);
        MEMORY[0x24C1F26F0](v35, -1, -1);
      }

      v36 = v46;
      sub_24910C39C();
      sub_24910C44C();
      (*(v48 + 8))(v36, v49);
      sub_24910D67C();
      v37 = v51;
      sub_24910C46C();
      v38 = v54;
      v49 = *(v54 + 8);
      v49(v7, v4);
      v48 = *(v38 + 16);
      v39 = v47;
      (v48)(v47, v37, v4);
      (*(v38 + 56))(v39, 0, 1, v4);
      swift_beginAccess();
      sub_2490A48DC(v39, v27 + v26, &unk_27EED7B70, &qword_249110300);
      swift_endAccess();
      v40 = sub_24910CDEC();
      v41 = v52;
      (*(*(v40 - 8) + 56))(v52, 1, 1, v40);
      v42 = swift_allocObject();
      swift_weakInit();
      (v48)(v7, v37, v4);
      v43 = (*(v38 + 80) + 40) & ~*(v38 + 80);
      v44 = swift_allocObject();
      *(v44 + 2) = 0;
      *(v44 + 3) = 0;
      *(v44 + 4) = v42;
      (*(v38 + 32))(&v44[v43], v7, v4);
      sub_249094614(0, 0, v41, &unk_24910EBC8, v44);

      v49(v37, v4);
    }
  }
}

Swift::Void __swiftcall DTSyncDaemon.invalidate()()
{
  v1 = v0;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7598, &qword_24910E890);
  v53 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v47 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75A0, &qword_24910E898);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v52 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - v6;
  if (!*(v0 + 32))
  {
    goto LABEL_9;
  }

  if (qword_27EED82D0 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v8 = sub_24910C89C();
    __swift_project_value_buffer(v8, qword_27EED82D8);

    v9 = sub_24910C87C();
    v10 = sub_24910CF5C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v58[0] = v12;
      *v11 = 136315138;
      v13 = [*(v1 + 24) containerIdentifier];
      if (v13)
      {
        v14 = v13;
        v15 = sub_24910CC9C();
        v17 = v16;
      }

      else
      {
        v17 = 0xE300000000000000;
        v15 = 7104878;
      }

      v18 = sub_24909F930(v15, v17, v58);

      *(v11 + 4) = v18;
      _os_log_impl(&dword_249083000, v9, v10, "SyncEngine stop: container=%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x24C1F26F0](v12, -1, -1);
      MEMORY[0x24C1F26F0](v11, -1, -1);
    }

    *(v1 + 32) = 0;

LABEL_9:
    v19 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__eventContinuations;
    v55 = v7;
    swift_beginAccess();
    v47 = v19;
    v48 = v1;
    v20 = *(v1 + v19);
    v21 = v20 + 64;
    v22 = 1 << *(v20 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v20 + 64);
    v25 = (v22 + 63) >> 6;
    v50 = v53 + 16;
    v51 = v20;
    v26 = (v53 + 32);
    v54 = (v53 + 8);

    v27 = 0;
    v1 = v52;
    v49 = v26;
    v28 = v56;
    if (v24)
    {
      break;
    }

LABEL_13:
    if (v25 <= v27 + 1)
    {
      v29 = v27 + 1;
    }

    else
    {
      v29 = v25;
    }

    v30 = v29 - 1;
    while (1)
    {
      v7 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v7 >= v25)
      {
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75A8, &unk_24910E8A0);
        (*(*(v46 - 8) + 56))(v1, 1, 1, v46);
        v24 = 0;
        goto LABEL_21;
      }

      v24 = *(v21 + 8 * v7);
      ++v27;
      if (v24)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

  while (1)
  {
    v7 = v27;
LABEL_20:
    v31 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v32 = v31 | (v7 << 6);
    v33 = *(*(v51 + 48) + 8 * v32);
    v34 = v53;
    v35 = v57;
    (*(v53 + 16))(v28, *(v51 + 56) + *(v53 + 72) * v32, v57);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75A8, &unk_24910E8A0);
    v37 = *(v36 + 48);
    v38 = v52;
    *v52 = v33;
    v39 = *(v34 + 32);
    v1 = v38;
    v40 = v35;
    v26 = v49;
    v39(&v38[v37], v28, v40);
    (*(*(v36 - 8) + 56))(v1, 0, 1, v36);
    v30 = v7;
LABEL_21:
    v41 = v55;
    sub_2490A2F0C(v1, v55);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75A8, &unk_24910E8A0);
    if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
    {
      break;
    }

    v43 = v41 + *(v42 + 48);
    v45 = v56;
    v44 = v57;
    (*v26)(v56, v43, v57);
    sub_24910CE2C();
    (*v54)(v45, v44);
    v27 = v30;
    if (!v24)
    {
      goto LABEL_13;
    }
  }

  *(v48 + v47) = MEMORY[0x277D84F98];
}

uint64_t DTSyncDaemon.handleDiagnosticsRequest(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_24910C80C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_24910C76C();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  sub_2490A2FC8(&qword_27EED7578, type metadata accessor for DTSyncDaemon, &protocol conformance descriptor for DTSyncDaemon);
  v7 = sub_24910CDAC();
  v3[11] = v7;
  v3[12] = v6;

  return MEMORY[0x2822009F8](sub_24908BE64, v7, v6);
}

uint64_t sub_24908BE64()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D05718])
  {
LABEL_2:
    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();

    v5 = v0[1];
LABEL_24:

    return v5();
  }

  if (v4 == *MEMORY[0x277D05728])
  {
    v6 = v0[10];
    (*(v0[9] + 96))(v6, v0[8]);
    v7 = *v6;
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v8 = sub_24910C89C();
    __swift_project_value_buffer(v8, qword_27EED82D8);
    v9 = sub_24910C87C();
    v10 = sub_24910CF5C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v7;
      _os_log_impl(&dword_249083000, v9, v10, "syncConfigure: %{BOOL}d", v11, 8u);
      MEMORY[0x24C1F26F0](v11, -1, -1);
    }

    v12 = v0[4];

    *(v12 + 40) = v7;
    sub_24910C58C();
    v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v14 = sub_24910CC8C();

    v15 = [v13 initWithSuiteName_];

    if (v15)
    {
      v17 = v0[6];
      v16 = v0[7];
      v18 = v0[5];
      (*(v17 + 104))(v16, *MEMORY[0x277D05770], v18);
      sub_24910C7FC();
      (*(v17 + 8))(v16, v18);
      v19 = sub_24910CC8C();

      [v15 setBool:v7 forKey:v19];
    }

    goto LABEL_23;
  }

  if (v4 != *MEMORY[0x277D05710])
  {
    if (v4 != *MEMORY[0x277D05720] && v4 != *MEMORY[0x277D05730])
    {
      (*(v0[9] + 8))(v0[10], v0[8]);
    }

    goto LABEL_2;
  }

  v20 = v0[10];
  (*(v0[9] + 96))(v20, v0[8]);
  v21 = *v20;
  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v22 = sub_24910C89C();
  __swift_project_value_buffer(v22, qword_27EED82D8);
  v23 = sub_24910C87C();
  v24 = sub_24910CF5C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 67109120;
    *(v25 + 4) = v21;
    _os_log_impl(&dword_249083000, v23, v24, "syncMigrate: force=%{BOOL}d", v25, 8u);
    MEMORY[0x24C1F26F0](v25, -1, -1);
  }

  if (!v21)
  {
    sub_24908AF98();
LABEL_23:
    v28 = v0[2];
    v28[3] = sub_24910C6AC();
    v28[4] = sub_2490A2FC8(&unk_27EED7B20, MEMORY[0x277D056D0], MEMORY[0x277D056C8]);
    __swift_allocate_boxed_opaque_existential_1(v28);
    sub_24910C64C();
    v29 = *MEMORY[0x277D05700];
    v30 = sub_24910C74C();
    v31 = *(v30 - 8);
    (*(v31 + 104))(v28, v29, v30);
    (*(v31 + 56))(v28, 0, 1, v30);

    v5 = v0[1];
    goto LABEL_24;
  }

  v26 = swift_task_alloc();
  v0[13] = v26;
  *v26 = v0;
  v26[1] = sub_24908C450;

  return sub_24908C6D4();
}

uint64_t sub_24908C450()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_24908C570, v3, v2);
}

uint64_t sub_24908C570()
{
  v1 = *(v0 + 16);
  v1[3] = sub_24910C6AC();
  v1[4] = sub_2490A2FC8(&unk_27EED7B20, MEMORY[0x277D056D0], MEMORY[0x277D056C8]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_24910C64C();
  v2 = *MEMORY[0x277D05700];
  v3 = sub_24910C74C();
  v4 = *(v3 - 8);
  (*(v4 + 104))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24908C6D4()
{
  v1[18] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B70, &qword_249110300);
  v1[19] = swift_task_alloc();
  v2 = sub_24910C80C();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7638, &qword_24910EB48);
  v1[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7640, &qword_24910EB58);
  v1[24] = swift_task_alloc();
  sub_2490A2FC8(&qword_27EED7578, type metadata accessor for DTSyncDaemon, &protocol conformance descriptor for DTSyncDaemon);
  v4 = sub_24910CDAC();
  v1[25] = v4;
  v1[26] = v3;

  return MEMORY[0x2822009F8](sub_24908C8AC, v4, v3);
}

uint64_t sub_24908C8AC()
{
  v24 = v0;
  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v1 = sub_24910C89C();
  v0[27] = __swift_project_value_buffer(v1, qword_27EED82D8);
  v2 = sub_24910C87C();
  v3 = sub_24910CF5C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_249083000, v2, v3, "migrate start", v4, 2u);
    MEMORY[0x24C1F26F0](v4, -1, -1);
  }

  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    v0[29] = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_timerDaemon;
    type metadata accessor for DTDaemon(0);
    sub_2490A2FC8(&unk_27EED7F50, type metadata accessor for DTDaemon, &protocol conformance descriptor for DTDaemon);
    v7 = sub_24910CDAC();

    return MEMORY[0x2822009F8](sub_24908CC7C, v7, v6);
  }

  else
  {
    sub_24910C7DC();
    v8 = sub_24910C7EC();
    swift_willThrow();
    v9 = v8;
    v10 = sub_24910C87C();
    v11 = sub_24910CF4C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_24910D5DC();
      v16 = sub_24909F930(v14, v15, &v23);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_249083000, v10, v11, "### migrate: failed: error=%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C1F26F0](v13, -1, -1);
      MEMORY[0x24C1F26F0](v12, -1, -1);
    }

    else
    {
    }

    v18 = v0[18];
    v17 = v0[19];
    v19 = sub_24910C48C();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
    v20 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__migrateTime;
    swift_beginAccess();
    sub_2490A48DC(v17, v18 + v20, &unk_27EED7B70, &qword_249110300);
    swift_endAccess();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_24908CC7C()
{
  v1 = v0[28];
  v2 = v0[29];
  swift_beginAccess();
  v0[30] = *(v1 + v2);
  v3 = v0[25];
  v4 = v0[26];

  return MEMORY[0x2822009F8](sub_24908CD10, v3, v4);
}

uint64_t sub_24908CD10()
{
  v19 = v0;
  v1 = v0[30];

  if (v1)
  {
    v2 = swift_task_alloc();
    v0[31] = v2;
    *v2 = v0;
    v2[1] = sub_24908D00C;

    return DTTimerDaemon._fetchTimers(matching:)(sub_2490948C0, 0);
  }

  else
  {
    sub_24910C7DC();
    v4 = sub_24910C7EC();
    swift_willThrow();
    v5 = v4;
    v6 = sub_24910C87C();
    v7 = sub_24910CF4C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_24910D5DC();
      v12 = sub_24909F930(v10, v11, &v18);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_249083000, v6, v7, "### migrate: failed: error=%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x24C1F26F0](v9, -1, -1);
      MEMORY[0x24C1F26F0](v8, -1, -1);
    }

    else
    {
    }

    v14 = v0[18];
    v13 = v0[19];
    v15 = sub_24910C48C();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    v16 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__migrateTime;
    swift_beginAccess();
    sub_2490A48DC(v13, v14 + v16, &unk_27EED7B70, &qword_249110300);
    swift_endAccess();

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_24908D00C(uint64_t a1)
{
  v3 = *v2;
  v3[32] = a1;
  v3[33] = v1;

  if (v1)
  {
    v4 = v3[25];
    v5 = v3[26];
    v6 = sub_24908DD08;
  }

  else
  {

    v4 = v3[25];
    v5 = v3[26];
    v6 = sub_24908D128;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_24908D128(uint64_t a1)
{
  v102 = v1;
  v2 = v1[32];
  v92 = v2 >> 62;
  if (v2 >> 62)
  {
LABEL_43:
    v3 = sub_24910D19C();
    v93 = v2;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_44:
    v5 = 0;
LABEL_45:
    sub_24910C58C();
    v75 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v76 = sub_24910CC8C();

    v77 = [v75 initWithSuiteName_];

    if (v77)
    {
      v79 = v1[21];
      v78 = v1[22];
      v80 = v1[20];
      (*(v79 + 104))(v78, *MEMORY[0x277D05760], v80);
      sub_24910C7FC();
      (*(v79 + 8))(v78, v80);
      v81 = sub_24910CC8C();

      [v77 setBool:1 forKey:v81];
    }

    v82 = sub_24910C87C();
    v83 = sub_24910CF5C();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 134218240;
      *(v84 + 4) = v5;
      *(v84 + 12) = 2048;
      if (v92)
      {
        v85 = sub_24910D19C();
      }

      else
      {
        v85 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v84 + 14) = v85;

      _os_log_impl(&dword_249083000, v82, v83, "migrate finished: added=%ld, total=%ld", v84, 0x16u);
      MEMORY[0x24C1F26F0](v84, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    goto LABEL_54;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v93 = v1[32];
  if (!v3)
  {
    goto LABEL_44;
  }

LABEL_3:
  v4 = 0;
  v5 = 0;
  v98 = (v1[18] + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData);
  v97 = v1[33];
  v95 = v1[32] + 32;
  v96 = v3;
  while (1)
  {
    if ((v93 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C1F1C90](v4, v1[32]);
    }

    else
    {
      if (v4 >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v6 = *(v95 + 8 * v4);
    }

    v7 = v6;
    v2 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v8 = [v6 mtAlarm];
    if (!v8)
    {
      break;
    }

    v9 = v8;
    v99 = v4 + 1;
    v10 = [v7 identifier];
    v11 = sub_24910CC9C();
    v13 = v12;

    swift_beginAccess();
    v14 = *v98;
    v100 = v9;
    if (*(*v98 + 16))
    {
      v15 = sub_2490A0A3C(v11, v13);
      v17 = v16;

      v18 = v1[24];
      if (v17)
      {
        v19 = *(v14 + 56);
        v20 = type metadata accessor for DTSyncedAlarm(0);
        v21 = *(v20 - 8);
        sub_2490A3010(v19 + *(v21 + 72) * v15, v18, type metadata accessor for DTSyncedAlarm);
        (*(v21 + 56))(v18, 0, 1, v20);
        v3 = v96;
      }

      else
      {
        v20 = type metadata accessor for DTSyncedAlarm(0);
        (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
      }
    }

    else
    {
      v36 = v1[24];

      v20 = type metadata accessor for DTSyncedAlarm(0);
      (*(*(v20 - 8) + 56))(v36, 1, 1, v20);
    }

    v37 = v1[24];
    swift_endAccess();
    type metadata accessor for DTSyncedAlarm(0);
    v38 = (*(*(v20 - 8) + 48))(v37, 1, v20);
    sub_2490A487C(v37, &qword_27EED7640, &qword_24910EB58);
    if (v38 == 1)
    {
      v2 = v1[18];
      v39 = v100;
      sub_24908E98C(v100);
      if (v97)
      {
        v66 = v100;
        v39 = v7;
        goto LABEL_37;
      }

      goto LABEL_32;
    }

    v40 = v7;
    v41 = sub_24910C87C();
    v42 = sub_24910CF5C();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v101 = v44;
      *v43 = 136315138;
      v45 = [v40 identifier];
      v46 = sub_24910CC9C();
      v47 = v5;
      v49 = v48;

      v50 = v46;
      v3 = v96;
      v51 = sub_24909F930(v50, v49, &v101);
      v5 = v47;
      v1 = v94;

      *(v43 + 4) = v51;
      _os_log_impl(&dword_249083000, v41, v42, "migrate: skip existing alarm: id=%s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x24C1F26F0](v44, -1, -1);
      MEMORY[0x24C1F26F0](v43, -1, -1);

      goto LABEL_5;
    }

LABEL_4:

LABEL_5:
    v2 = v99;
LABEL_6:
    ++v4;
    if (v2 == v3)
    {
      goto LABEL_45;
    }
  }

  v22 = [v7 mtTimer];
  if (!v22)
  {

    goto LABEL_6;
  }

  v23 = v22;
  v99 = v4 + 1;
  v24 = [v7 identifier];
  v25 = sub_24910CC9C();
  v27 = v26;

  swift_beginAccess();
  v28 = v98[1];
  v100 = v23;
  if (*(v28 + 16))
  {
    v29 = sub_2490A0A3C(v25, v27);
    v31 = v30;

    v32 = v1[23];
    if (v31)
    {
      v33 = *(v28 + 56);
      v34 = type metadata accessor for DTSyncedTimer(0);
      v35 = *(v34 - 8);
      sub_2490A3010(v33 + *(v35 + 72) * v29, v32, type metadata accessor for DTSyncedTimer);
      (*(v35 + 56))(v32, 0, 1, v34);
      v3 = v96;
    }

    else
    {
      v34 = type metadata accessor for DTSyncedTimer(0);
      (*(*(v34 - 8) + 56))(v32, 1, 1, v34);
    }
  }

  else
  {
    v52 = v1[23];

    v34 = type metadata accessor for DTSyncedTimer(0);
    (*(*(v34 - 8) + 56))(v52, 1, 1, v34);
  }

  v53 = v1[23];
  swift_endAccess();
  type metadata accessor for DTSyncedTimer(0);
  v54 = (*(*(v34 - 8) + 48))(v53, 1, v34);
  sub_2490A487C(v53, &qword_27EED7638, &qword_24910EB48);
  if (v54 != 1)
  {
    v40 = v7;
    v41 = sub_24910C87C();
    v56 = sub_24910CF5C();

    if (os_log_type_enabled(v41, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v101 = v58;
      *v57 = 136315138;
      v59 = [v40 identifier];
      v60 = sub_24910CC9C();
      v61 = v5;
      v63 = v62;

      v64 = v60;
      v3 = v96;
      v65 = sub_24909F930(v64, v63, &v101);
      v5 = v61;
      v1 = v94;

      *(v57 + 4) = v65;
      _os_log_impl(&dword_249083000, v41, v56, "migrate: skip existing timer: id=%s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x24C1F26F0](v58, -1, -1);
      MEMORY[0x24C1F26F0](v57, -1, -1);

      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v2 = v1[18];
  v39 = v100;
  sub_24908EF9C(v100);
  if (!v97)
  {
LABEL_32:

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_41;
    }

    v97 = 0;
    goto LABEL_5;
  }

  v66 = v7;
LABEL_37:

  v67 = v97;
  v68 = sub_24910C87C();
  v69 = sub_24910CF4C();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v101 = v71;
    *v70 = 136315138;
    swift_getErrorValue();
    v72 = sub_24910D5DC();
    v74 = sub_24909F930(v72, v73, &v101);

    *(v70 + 4) = v74;
    _os_log_impl(&dword_249083000, v68, v69, "### migrate: failed: error=%s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v71);
    MEMORY[0x24C1F26F0](v71, -1, -1);
    MEMORY[0x24C1F26F0](v70, -1, -1);
  }

  else
  {
  }

LABEL_54:
  v87 = v1[18];
  v86 = v1[19];
  v88 = sub_24910C48C();
  (*(*(v88 - 8) + 56))(v86, 1, 1, v88);
  v89 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__migrateTime;
  swift_beginAccess();
  sub_2490A48DC(v86, v87 + v89, &unk_27EED7B70, &qword_249110300);
  swift_endAccess();

  v90 = v1[1];

  return v90();
}

uint64_t sub_24908DD08()
{
  v17 = v0;

  v1 = v0[33];
  v2 = v1;
  v3 = sub_24910C87C();
  v4 = sub_24910CF4C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_24910D5DC();
    v9 = sub_24909F930(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_249083000, v3, v4, "### migrate: failed: error=%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1F26F0](v6, -1, -1);
    MEMORY[0x24C1F26F0](v5, -1, -1);
  }

  else
  {
  }

  v11 = v0[18];
  v10 = v0[19];
  v12 = sub_24910C48C();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__migrateTime;
  swift_beginAccess();
  sub_2490A48DC(v10, v11 + v13, &unk_27EED7B70, &qword_249110300);
  swift_endAccess();

  v14 = v0[1];

  return v14();
}

void DTSyncDaemon.handleRequest(_:context:)(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v82 = a2;
  v3 = sub_24910C73C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v67 - v8;
  v10 = sub_24910C86C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v67 - v14);
  MEMORY[0x28223BE20](v13);
  v18 = (&v67 - v17);
  if (*(v2 + 40) == 1)
  {
    v73 = v16;
    v79 = v2;
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v19 = sub_24910C89C();
    v20 = __swift_project_value_buffer(v19, qword_27EED82D8);
    v81 = v11;
    v21 = v11 + 16;
    v22 = *(v11 + 16);
    v23 = v83;
    v78 = v21;
    v80 = v22;
    v22(v18, v83, v10);
    v70 = *(v4 + 16);
    v71 = v4 + 16;
    v70(v9, v82, v3);
    v72 = v20;
    v24 = sub_24910C87C();
    v77 = sub_24910CF5C();
    v25 = os_log_type_enabled(v24, v77);
    v75 = v4;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v85 = v68;
      *v26 = 136315394;
      sub_2490A2FC8(&qword_27EED7B30, MEMORY[0x277D057E0], MEMORY[0x277D057F8]);
      v67 = v24;
      v27 = sub_24910D50C();
      v74 = v7;
      v28 = v4;
      v29 = v3;
      v31 = v30;
      v76 = *(v81 + 8);
      v76(v18, v10);
      v32 = sub_24909F930(v27, v31, &v85);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2080;
      sub_2490A2FC8(&qword_27EED7F60, MEMORY[0x277D056F0], MEMORY[0x277D056F8]);
      v33 = sub_24910D50C();
      v35 = v34;
      v36 = v28;
      v7 = v74;
      v69 = *(v36 + 8);
      v69(v9, v29);
      v37 = sub_24909F930(v33, v35, &v85);
      v3 = v29;

      *(v26 + 14) = v37;
      v38 = v67;
      _os_log_impl(&dword_249083000, v67, v77, "handleRequest: %s, %s", v26, 0x16u);
      v39 = v68;
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v39, -1, -1);
      v40 = v26;
      v23 = v83;
      MEMORY[0x24C1F26F0](v40, -1, -1);

      v41 = v81;
    }

    else
    {

      v69 = *(v4 + 8);
      v69(v9, v3);
      v41 = v81;
      v76 = *(v81 + 8);
      v76(v18, v10);
    }

    v80(v15, v23, v10);
    v42 = (*(v41 + 88))(v15, v10);
    if (v42 == *MEMORY[0x277D057D8])
    {
      (*(v41 + 96))(v15, v10);
      v43 = *v15;
      v44 = [v43 mtAlarm];
      if (v44)
      {
        v45 = v44;
        sub_24908E98C(v44);
        if (v84)
        {
LABEL_10:

          return;
        }
      }

      else
      {
        v48 = [v43 mtTimer];
        if (!v48)
        {
          goto LABEL_15;
        }

        v45 = v48;
        sub_24908EF9C(v48);
        if (v84)
        {
          goto LABEL_10;
        }
      }

LABEL_14:

LABEL_15:
      return;
    }

    if (v42 == *MEMORY[0x277D057A8])
    {
      (*(v41 + 96))(v15, v10);
      v43 = *v15;
      v46 = [v43 mtAlarm];
      if (v46)
      {
        v45 = v46;
        sub_24908F5B0(v46);
        if (v84)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v63 = [v43 mtTimer];
        if (!v63)
        {
          goto LABEL_15;
        }

        v45 = v63;
        sub_249090270(v63);
        if (v84)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_14;
    }

    if (v42 == *MEMORY[0x277D05798])
    {
      (*(v41 + 96))(v15, v10);
      v43 = *v15;
      v47 = [v43 mtAlarm];
      if (v47)
      {
        v45 = v47;
        sub_249090F1C(v47);
        if (v84)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v65 = [v43 mtTimer];
        if (!v65)
        {
          goto LABEL_15;
        }

        v45 = v65;
        sub_24909168C(v65);
        if (v84)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_14;
    }

    if (v42 == *MEMORY[0x277D057A0])
    {
      goto LABEL_25;
    }

    if (v42 == *MEMORY[0x277D057B0])
    {
      (*(v41 + 96))(v15, v10);
      v43 = *v15;
      v64 = [v43 mtAlarm];
      if (v64)
      {
        v45 = v64;
        sub_249091E20(v64);
        if (v84)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v66 = [v43 mtTimer];
        if (!v66)
        {
          goto LABEL_15;
        }

        v45 = v66;
        sub_249092518(v66);
        if (v84)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_14;
    }

    if (v42 == *MEMORY[0x277D057D0] || v42 == *MEMORY[0x277D057C0] || v42 == *MEMORY[0x277D05790] || v42 == *MEMORY[0x277D057B8] || v42 == *MEMORY[0x277D05780] || v42 != *MEMORY[0x277D05788] && v42 != *MEMORY[0x277D05778] && v42 != *MEMORY[0x277D057C8])
    {
LABEL_25:
      v76(v15, v10);
    }

    v49 = v73;
    v80(v73, v23, v10);
    v70(v7, v82, v3);
    v43 = sub_24910C87C();
    v50 = sub_24910CF4C();
    if (!os_log_type_enabled(v43, v50))
    {

      v69(v7, v3);
      v76(v49, v10);
      return;
    }

    v51 = swift_slowAlloc();
    v74 = v7;
    v52 = v51;
    v83 = swift_slowAlloc();
    v85 = v83;
    *v52 = 136315394;
    sub_2490A2FC8(&qword_27EED7B30, MEMORY[0x277D057E0], MEMORY[0x277D057F8]);
    v53 = sub_24910D50C();
    v55 = v54;
    v76(v49, v10);
    v56 = sub_24909F930(v53, v55, &v85);

    *(v52 + 4) = v56;
    *(v52 + 12) = 2080;
    sub_2490A2FC8(&qword_27EED7F60, MEMORY[0x277D056F0], MEMORY[0x277D056F8]);
    v57 = v74;
    v58 = sub_24910D50C();
    v60 = v59;
    v69(v57, v3);
    v61 = sub_24909F930(v58, v60, &v85);

    *(v52 + 14) = v61;
    _os_log_impl(&dword_249083000, v43, v50, "Ignoring non-sync request: %s, %s", v52, 0x16u);
    v62 = v83;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v62, -1, -1);
    MEMORY[0x24C1F26F0](v52, -1, -1);
    goto LABEL_15;
  }
}

void sub_24908E98C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7640, &qword_24910EB58);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v43 - v5;
  v7 = type metadata accessor for DTSyncedAlarm(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v43 - v12);
  sub_24910D0AC();
  if (v14)
  {

    DTSyncedAlarm.init(mtAlarm:)(a1, v13);
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v15 = sub_24910C89C();
    __swift_project_value_buffer(v15, qword_27EED82D8);
    sub_2490A3010(v13, v11, type metadata accessor for DTSyncedAlarm);
    v16 = sub_24910C87C();
    v17 = sub_24910CF5C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v45 = v2;
      v19 = v18;
      v20 = swift_slowAlloc();
      v44 = v8;
      v21 = v20;
      v46[0] = v20;
      *v19 = 136315138;
      sub_2490A2FC8(&unk_27EED7950, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
      v22 = sub_24910D50C();
      v24 = v23;
      sub_2490A4414(v11, type metadata accessor for DTSyncedAlarm);
      v25 = sub_24909F930(v22, v24, v46);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_249083000, v16, v17, "addAlarm: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      v26 = v21;
      v8 = v44;
      MEMORY[0x24C1F26F0](v26, -1, -1);
      v27 = v19;
      v2 = v45;
      MEMORY[0x24C1F26F0](v27, -1, -1);
    }

    else
    {

      sub_2490A4414(v11, type metadata accessor for DTSyncedAlarm);
    }

    v36 = *v13;
    v37 = v13[1];
    sub_2490A3010(v13, v6, type metadata accessor for DTSyncedAlarm);
    (*(v8 + 56))(v6, 0, 1, v7);
    swift_beginAccess();

    sub_249092C1C(v6, v36, v37);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7600, &qword_24910EB38);
    v38 = sub_24910C99C();
    v39 = *(v38 - 8);
    v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_24910E880;
    *(v41 + v40) = DTSyncedAlarm.ckRecordID.getter();
    (*(v39 + 104))(v41 + v40, *MEMORY[0x277CBBC68], v38);
    if (v2[4].isa)
    {

      sub_24910CB1C();

      sub_24910CAFC();
    }

    sub_24909329C();
    sub_2490A4414(v13, type metadata accessor for DTSyncedAlarm);
  }

  else
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v28 = sub_24910C89C();
    __swift_project_value_buffer(v28, qword_27EED82D8);
    v29 = a1;
    v45 = sub_24910C87C();
    v30 = sub_24910CF5C();

    if (os_log_type_enabled(v45, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v46[0] = v32;
      *v31 = 136315138;
      v33 = sub_24910D0BC();
      v35 = sub_24909F930(v33, v34, v46);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_249083000, v45, v30, "addAlarm: no-target, %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x24C1F26F0](v32, -1, -1);
      MEMORY[0x24C1F26F0](v31, -1, -1);
    }

    else
    {
      v42 = v45;
    }
  }
}

void sub_24908EF9C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7638, &qword_24910EB48);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v43 - v5;
  v7 = type metadata accessor for DTSyncedTimer(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v43 - v12);
  sub_24910D0CC();
  if (v14)
  {

    DTSyncedTimer.init(mtTimer:)(a1, v13);
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v15 = sub_24910C89C();
    __swift_project_value_buffer(v15, qword_27EED82D8);
    sub_2490A3010(v13, v11, type metadata accessor for DTSyncedTimer);
    v16 = sub_24910C87C();
    v17 = sub_24910CF5C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v45 = v2;
      v19 = v18;
      v20 = swift_slowAlloc();
      v44 = v8;
      v21 = v20;
      v46[0] = v20;
      *v19 = 136315138;
      sub_2490A2FC8(&qword_27EED75C0, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
      v22 = sub_24910D50C();
      v24 = v23;
      sub_2490A4414(v11, type metadata accessor for DTSyncedTimer);
      v25 = sub_24909F930(v22, v24, v46);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_249083000, v16, v17, "addTimer: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      v26 = v21;
      v8 = v44;
      MEMORY[0x24C1F26F0](v26, -1, -1);
      v27 = v19;
      v2 = v45;
      MEMORY[0x24C1F26F0](v27, -1, -1);
    }

    else
    {

      sub_2490A4414(v11, type metadata accessor for DTSyncedTimer);
    }

    v36 = *v13;
    v37 = v13[1];
    sub_2490A3010(v13, v6, type metadata accessor for DTSyncedTimer);
    (*(v8 + 56))(v6, 0, 1, v7);
    swift_beginAccess();

    sub_249092E30(v6, v36, v37);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7600, &qword_24910EB38);
    v38 = sub_24910C99C();
    v39 = *(v38 - 8);
    v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_24910E880;
    *(v41 + v40) = DTSyncedTimer.ckRecordID.getter();
    (*(v39 + 104))(v41 + v40, *MEMORY[0x277CBBC68], v38);
    if (v2[4].isa)
    {

      sub_24910CB1C();

      sub_24910CAFC();
    }

    sub_24909329C();
    sub_2490A4414(v13, type metadata accessor for DTSyncedTimer);
  }

  else
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v28 = sub_24910C89C();
    __swift_project_value_buffer(v28, qword_27EED82D8);
    v29 = a1;
    v45 = sub_24910C87C();
    v30 = sub_24910CF5C();

    if (os_log_type_enabled(v45, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v46[0] = v32;
      *v31 = 136315138;
      v33 = sub_24910D0DC();
      v35 = sub_24909F930(v33, v34, v46);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_249083000, v45, v30, "addTimer: no-target, %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x24C1F26F0](v32, -1, -1);
      MEMORY[0x24C1F26F0](v31, -1, -1);
    }

    else
    {
      v42 = v45;
    }
  }
}

void sub_24908F5B0(void *a1)
{
  v2 = v1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7698, &qword_24910EBA8);
  MEMORY[0x28223BE20](v97);
  v5 = &v89 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7640, &qword_24910EB58);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v89 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v96 = &v89 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v89 - v16);
  MEMORY[0x28223BE20](v15);
  v98 = (&v89 - v18);
  v19 = type metadata accessor for DTSyncedAlarm(0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = (&v89 - v24);
  sub_24910D0AC();
  if (v26)
  {
    v90 = v23;
    v94 = v12;
    v95 = v9;

    DTSyncedAlarm.init(mtAlarm:)(a1, v25);
    v28 = *v25;
    v27 = v25[1];
    v29 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
    swift_beginAccess();
    v92 = v2;
    v93 = v29;
    v30 = *(v2 + v29);
    if (*(v30 + 16))
    {
      v91 = v19;
      v31 = v25;
      v32 = v98;

      v33 = sub_2490A0A3C(v28, v27);
      v35 = v34;

      if (v35)
      {
        v36 = v20;
        sub_2490A3010(*(v30 + 56) + *(v20 + 72) * v33, v32, type metadata accessor for DTSyncedAlarm);
        v37 = 0;
        v25 = v31;
        v19 = v91;
        goto LABEL_12;
      }

      v37 = 1;
      v25 = v31;
      v19 = v91;
    }

    else
    {
      v37 = 1;
    }

    v36 = v20;
LABEL_12:
    v46 = *(v36 + 56);
    v47 = v98;
    v46(v98, v37, 1, v19);
    swift_endAccess();
    sub_2490A3010(v25, v17, type metadata accessor for DTSyncedAlarm);
    v91 = v46;
    v46(v17, 0, 1, v19);
    v48 = *(v97 + 48);
    sub_2490A4674(v17, v5, &qword_27EED7640, &qword_24910EB58);
    sub_2490A4674(v47, &v5[v48], &qword_27EED7640, &qword_24910EB58);
    v49 = *(v20 + 48);
    if (v49(v5, 1, v19) == 1)
    {
      sub_2490A487C(v17, &qword_27EED7640, &qword_24910EB58);
      if (v49(&v5[v48], 1, v19) == 1)
      {
        sub_2490A487C(v5, &qword_27EED7640, &qword_24910EB58);
LABEL_32:
        if (qword_27EED82D0 != -1)
        {
          swift_once();
        }

        v81 = sub_24910C89C();
        __swift_project_value_buffer(v81, qword_27EED82D8);
        v82 = sub_24910C87C();
        v83 = sub_24910CF5C();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v99[0] = v85;
          *v84 = 136315138;
          swift_beginAccess();
          sub_2490A2FC8(&unk_27EED7950, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
          v86 = sub_24910D50C();
          v88 = sub_24909F930(v86, v87, v99);

          *(v84 + 4) = v88;
          _os_log_impl(&dword_249083000, v82, v83, "updateAlarm: unchanged, %s", v84, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v85);
          MEMORY[0x24C1F26F0](v85, -1, -1);
          MEMORY[0x24C1F26F0](v84, -1, -1);
        }

        sub_2490A487C(v98, &qword_27EED7640, &qword_24910EB58);
        v77 = v25;
LABEL_37:
        sub_2490A4414(v77, type metadata accessor for DTSyncedAlarm);
        return;
      }
    }

    else
    {
      v50 = v96;
      sub_2490A4674(v5, v96, &qword_27EED7640, &qword_24910EB58);
      if (v49(&v5[v48], 1, v19) != 1)
      {
        v79 = &v5[v48];
        v80 = v90;
        sub_2490A43AC(v79, v90, type metadata accessor for DTSyncedAlarm);
        sub_2490A2FC8(&qword_27EED76A0, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
        LODWORD(v97) = sub_24910CC7C();
        sub_2490A4414(v80, type metadata accessor for DTSyncedAlarm);
        sub_2490A487C(v17, &qword_27EED7640, &qword_24910EB58);
        sub_2490A4414(v50, type metadata accessor for DTSyncedAlarm);
        sub_2490A487C(v5, &qword_27EED7640, &qword_24910EB58);
        if (v97)
        {
          goto LABEL_32;
        }

LABEL_18:
        if (qword_27EED82D0 != -1)
        {
          swift_once();
        }

        v51 = sub_24910C89C();
        __swift_project_value_buffer(v51, qword_27EED82D8);
        v52 = sub_24910C87C();
        v53 = sub_24910CF5C();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = v19;
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v97 = v49;
          v57 = v56;
          v100[0] = v56;
          *v55 = 136315138;
          swift_beginAccess();
          sub_2490A2FC8(&unk_27EED7950, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
          v58 = sub_24910D50C();
          v60 = sub_24909F930(v58, v59, v100);

          *(v55 + 4) = v60;
          _os_log_impl(&dword_249083000, v52, v53, "updateAlarm: %s", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v57);
          v61 = v57;
          v49 = v97;
          MEMORY[0x24C1F26F0](v61, -1, -1);
          v62 = v55;
          v19 = v54;
          MEMORY[0x24C1F26F0](v62, -1, -1);
        }

        v63 = v94;
        sub_2490A4674(v98, v94, &qword_27EED7640, &qword_24910EB58);
        if (v49(v63, 1, v19) == 1)
        {
          sub_2490A487C(v63, &qword_27EED7640, &qword_24910EB58);
          v64 = 0;
        }

        else
        {
          v65 = sub_2490A2FC8(&qword_27EED7618, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
          v64 = DTSyncedObject.lastKnownRecord.getter(v19, v65);
          sub_2490A4414(v63, type metadata accessor for DTSyncedAlarm);
        }

        swift_beginAccess();
        v66 = sub_2490A2FC8(&qword_27EED7618, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
        DTSyncedObject.lastKnownRecord.setter(v64, v19, v66);
        swift_endAccess();
        v67 = *v25;
        v68 = v25[1];
        v69 = v95;
        sub_2490A3010(v25, v95, type metadata accessor for DTSyncedAlarm);
        v91(v69, 0, 1, v19);
        v70 = v92;
        swift_beginAccess();

        sub_249092C1C(v69, v67, v68);
        swift_endAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7600, &qword_24910EB38);
        v71 = v25;
        v72 = sub_24910C99C();
        v73 = v70;
        v74 = *(v72 - 8);
        v75 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_24910E880;
        *(v76 + v75) = DTSyncedAlarm.ckRecordID.getter();
        (*(v74 + 104))(v76 + v75, *MEMORY[0x277CBBC68], v72);
        if (*(v73 + 32))
        {

          sub_24910CB1C();

          sub_24910CAFC();
        }

        sub_24909329C();
        sub_2490A487C(v98, &qword_27EED7640, &qword_24910EB58);
        v77 = v71;
        goto LABEL_37;
      }

      sub_2490A487C(v17, &qword_27EED7640, &qword_24910EB58);
      sub_2490A4414(v50, type metadata accessor for DTSyncedAlarm);
    }

    sub_2490A487C(v5, &qword_27EED7698, &qword_24910EBA8);
    goto LABEL_18;
  }

  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v38 = sub_24910C89C();
  __swift_project_value_buffer(v38, qword_27EED82D8);
  v39 = a1;
  v98 = sub_24910C87C();
  v40 = sub_24910CF5C();

  if (os_log_type_enabled(v98, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v100[0] = v42;
    *v41 = 136315138;
    v43 = sub_24910D0BC();
    v45 = sub_24909F930(v43, v44, v100);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_249083000, v98, v40, "updateAlarm: no-target, %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x24C1F26F0](v42, -1, -1);
    MEMORY[0x24C1F26F0](v41, -1, -1);
  }

  else
  {
    v78 = v98;
  }
}

void sub_249090270(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED76A8, &unk_24910EBB0);
  MEMORY[0x28223BE20](v4);
  v6 = v87 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7638, &qword_24910EB48);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v91 = v87 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v90 = v87 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (v87 - v16);
  MEMORY[0x28223BE20](v15);
  v93 = (v87 - v18);
  v19 = type metadata accessor for DTSyncedTimer(0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = (v87 - v24);
  sub_24910D0CC();
  if (v26)
  {
    v88 = v10;

    DTSyncedTimer.init(mtTimer:)(a1, v25);
    v27 = v2;
    v29 = *v25;
    v28 = v25[1];
    v89 = v27;
    v30 = v27 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
    swift_beginAccess();
    v87[3] = v30;
    v31 = v30 + 8;
    v32 = *(v30 + 8);
    v87[2] = v31;
    v33 = *(v32 + 16);
    v92 = v25;
    if (v33)
    {

      v34 = sub_2490A0A3C(v29, v28);
      v36 = v35;

      if (v36)
      {
        sub_2490A3010(*(v32 + 56) + v20[9] * v34, v93, type metadata accessor for DTSyncedTimer);
        v37 = 0;
      }

      else
      {
        v37 = 1;
      }

      v25 = v92;
    }

    else
    {
      v37 = 1;
    }

    v46 = v20[7];
    v47 = v93;
    v46(v93, v37, 1, v19);
    swift_endAccess();
    sub_2490A3010(v25, v17, type metadata accessor for DTSyncedTimer);
    v87[0] = v46;
    v87[1] = v20 + 7;
    v46(v17, 0, 1, v19);
    v48 = *(v4 + 48);
    sub_2490A4674(v17, v6, &qword_27EED7638, &qword_24910EB48);
    sub_2490A4674(v47, &v6[v48], &qword_27EED7638, &qword_24910EB48);
    v49 = v20[6];
    if (v49(v6, 1, v19) == 1)
    {
      sub_2490A487C(v17, &qword_27EED7638, &qword_24910EB48);
      if (v49(&v6[v48], 1, v19) == 1)
      {
        sub_2490A487C(v6, &qword_27EED7638, &qword_24910EB48);
LABEL_32:
        if (qword_27EED82D0 != -1)
        {
          swift_once();
        }

        v77 = sub_24910C89C();
        __swift_project_value_buffer(v77, qword_27EED82D8);
        v78 = sub_24910C87C();
        v79 = sub_24910CF5C();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v94[0] = v81;
          *v80 = 136315138;
          v82 = v92;
          swift_beginAccess();
          sub_2490A2FC8(&qword_27EED75C0, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
          v83 = sub_24910D50C();
          v85 = sub_24909F930(v83, v84, v94);

          *(v80 + 4) = v85;
          _os_log_impl(&dword_249083000, v78, v79, "updateTimer: unchanged, %s", v80, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v81);
          MEMORY[0x24C1F26F0](v81, -1, -1);
          MEMORY[0x24C1F26F0](v80, -1, -1);

          sub_2490A487C(v93, &qword_27EED7638, &qword_24910EB48);
          v86 = v82;
LABEL_38:
          sub_2490A4414(v86, type metadata accessor for DTSyncedTimer);
          return;
        }

LABEL_37:
        sub_2490A487C(v93, &qword_27EED7638, &qword_24910EB48);
        v86 = v92;
        goto LABEL_38;
      }
    }

    else
    {
      v50 = v90;
      sub_2490A4674(v6, v90, &qword_27EED7638, &qword_24910EB48);
      if (v49(&v6[v48], 1, v19) != 1)
      {
        sub_2490A43AC(&v6[v48], v23, type metadata accessor for DTSyncedTimer);
        sub_2490A2FC8(&qword_27EED7990, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
        v76 = sub_24910CC7C();
        sub_2490A4414(v23, type metadata accessor for DTSyncedTimer);
        sub_2490A487C(v17, &qword_27EED7638, &qword_24910EB48);
        sub_2490A4414(v50, type metadata accessor for DTSyncedTimer);
        sub_2490A487C(v6, &qword_27EED7638, &qword_24910EB48);
        if (v76)
        {
          goto LABEL_32;
        }

LABEL_18:
        if (qword_27EED82D0 != -1)
        {
          swift_once();
        }

        v51 = sub_24910C89C();
        __swift_project_value_buffer(v51, qword_27EED82D8);
        v52 = sub_24910C87C();
        v53 = sub_24910CF5C();
        v54 = os_log_type_enabled(v52, v53);
        v55 = v89;
        if (v54)
        {
          v56 = v49;
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v95[0] = v58;
          *v57 = 136315138;
          swift_beginAccess();
          sub_2490A2FC8(&qword_27EED75C0, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
          v59 = sub_24910D50C();
          v61 = sub_24909F930(v59, v60, v95);

          *(v57 + 4) = v61;
          _os_log_impl(&dword_249083000, v52, v53, "updateTimer: %s", v57, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v58);
          MEMORY[0x24C1F26F0](v58, -1, -1);
          v62 = v57;
          v49 = v56;
          MEMORY[0x24C1F26F0](v62, -1, -1);
        }

        v63 = v91;
        sub_2490A4674(v93, v91, &qword_27EED7638, &qword_24910EB48);
        if (v49(v63, 1, v19) == 1)
        {
          sub_2490A487C(v63, &qword_27EED7638, &qword_24910EB48);
          v64 = 0;
        }

        else
        {
          v65 = sub_2490A2FC8(&qword_27EED7608, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
          v64 = DTSyncedObject.lastKnownRecord.getter(v19, v65);
          sub_2490A4414(v63, type metadata accessor for DTSyncedTimer);
        }

        v66 = v92;
        swift_beginAccess();
        v67 = sub_2490A2FC8(&qword_27EED7608, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
        DTSyncedObject.lastKnownRecord.setter(v64, v19, v67);
        swift_endAccess();
        v68 = *v66;
        v69 = v66[1];
        v70 = v88;
        sub_2490A3010(v66, v88, type metadata accessor for DTSyncedTimer);
        (v87[0])(v70, 0, 1, v19);
        swift_beginAccess();

        sub_249092E30(v70, v68, v69);
        swift_endAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7600, &qword_24910EB38);
        v71 = sub_24910C99C();
        v72 = *(v71 - 8);
        v73 = (*(v72 + 80) + 32) & ~*(v72 + 80);
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_24910E880;
        *(v74 + v73) = DTSyncedTimer.ckRecordID.getter();
        (*(v72 + 104))(v74 + v73, *MEMORY[0x277CBBC68], v71);
        if (*(v55 + 32))
        {

          sub_24910CB1C();

          sub_24910CAFC();
        }

        sub_24909329C();
        goto LABEL_37;
      }

      sub_2490A487C(v17, &qword_27EED7638, &qword_24910EB48);
      sub_2490A4414(v50, type metadata accessor for DTSyncedTimer);
    }

    sub_2490A487C(v6, &qword_27EED76A8, &unk_24910EBB0);
    goto LABEL_18;
  }

  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v38 = sub_24910C89C();
  __swift_project_value_buffer(v38, qword_27EED82D8);
  v39 = a1;
  v93 = sub_24910C87C();
  v40 = sub_24910CF5C();

  if (os_log_type_enabled(v93, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v95[0] = v42;
    *v41 = 136315138;
    v43 = sub_24910D0DC();
    v45 = sub_24909F930(v43, v44, v95);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_249083000, v93, v40, "updateTimer: no-target, %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x24C1F26F0](v42, -1, -1);
    MEMORY[0x24C1F26F0](v41, -1, -1);
  }

  else
  {
    v75 = v93;
  }
}

uint64_t sub_249090F1C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7640, &qword_24910EB58);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v61 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v56 - v6;
  v8 = type metadata accessor for DTSyncedAlarm(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v56 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = (&v56 - v16);
  DTSyncedAlarm.init(mtAlarm:)(a1, &v56 - v16);
  v19 = *v17;
  v18 = v17[1];
  v20 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
  swift_beginAccess();
  v62 = v1;
  v21 = *(v1 + v20);
  v22 = *(v21 + 16);
  v59 = v18;
  v60 = v19;
  if (v22 && (v23 = sub_2490A0A3C(v19, v18), (v24 & 1) != 0))
  {
    sub_2490A3010(*(v21 + 56) + *(v9 + 72) * v23, v7, type metadata accessor for DTSyncedAlarm);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = v8;
  v27 = *(v9 + 56);
  v27(v7, v25, 1, v26);
  swift_endAccess();
  v28 = (*(v9 + 48))(v7, 1, v26);
  sub_2490A487C(v7, &qword_27EED7640, &qword_24910EB58);
  if (v28 == 1)
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v29 = sub_24910C89C();
    __swift_project_value_buffer(v29, qword_27EED82D8);
    sub_2490A3010(v17, v12, type metadata accessor for DTSyncedAlarm);
    v30 = sub_24910C87C();
    v31 = sub_24910CF5C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v63[0] = v33;
      *v32 = 136315138;
      sub_2490A2FC8(&unk_27EED7950, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
      v34 = sub_24910D50C();
      v36 = v35;
      sub_2490A4414(v12, type metadata accessor for DTSyncedAlarm);
      v37 = sub_24909F930(v34, v36, v63);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_249083000, v30, v31, "removeAlarm: unknown, %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x24C1F26F0](v33, -1, -1);
      MEMORY[0x24C1F26F0](v32, -1, -1);
    }

    else
    {

      sub_2490A4414(v12, type metadata accessor for DTSyncedAlarm);
    }

    v38 = v17;
  }

  else
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v39 = sub_24910C89C();
    __swift_project_value_buffer(v39, qword_27EED82D8);
    sub_2490A3010(v17, v15, type metadata accessor for DTSyncedAlarm);
    v40 = sub_24910C87C();
    v41 = sub_24910CF5C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v63[0] = v57;
      *v42 = 136315138;
      sub_2490A2FC8(&unk_27EED7950, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
      v43 = sub_24910D50C();
      v58 = v27;
      v45 = v44;
      sub_2490A4414(v15, type metadata accessor for DTSyncedAlarm);
      v46 = sub_24909F930(v43, v45, v63);
      v27 = v58;

      *(v42 + 4) = v46;
      _os_log_impl(&dword_249083000, v40, v41, "removeAlarm: %s", v42, 0xCu);
      v47 = v57;
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x24C1F26F0](v47, -1, -1);
      MEMORY[0x24C1F26F0](v42, -1, -1);
    }

    else
    {

      sub_2490A4414(v15, type metadata accessor for DTSyncedAlarm);
    }

    v48 = v59;
    v49 = v61;
    v27(v61, 1, 1, v26);
    v50 = v62;
    swift_beginAccess();

    sub_249092C1C(v49, v60, v48);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7600, &qword_24910EB38);
    v51 = sub_24910C99C();
    v52 = *(v51 - 8);
    v53 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_24910E880;
    *(v54 + v53) = DTSyncedAlarm.ckRecordID.getter();
    (*(v52 + 104))(v54 + v53, *MEMORY[0x277CBBC70], v51);
    if (*(v50 + 32))
    {

      sub_24910CB1C();

      sub_24910CAFC();
    }

    sub_24909329C();
    v38 = v17;
  }

  return sub_2490A4414(v38, type metadata accessor for DTSyncedAlarm);
}

uint64_t sub_24909168C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7638, &qword_24910EB48);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v60 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - v6;
  v62 = type metadata accessor for DTSyncedTimer(0);
  v8 = *(v62 - 8);
  v9 = MEMORY[0x28223BE20](v62 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v54 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = (&v54 - v15);
  DTSyncedTimer.init(mtTimer:)(a1, &v54 - v15);
  v17 = *v16;
  v18 = v16[1];
  v61 = v1;
  v19 = v1 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
  swift_beginAccess();
  v20 = *(v19 + 8);
  v58 = v19 + 8;
  v59 = v17;
  if (*(v20 + 16))
  {
    v21 = sub_2490A0A3C(v17, v18);
    v22 = v18;
    if (v23)
    {
      sub_2490A3010(*(v20 + 56) + *(v8 + 72) * v21, v7, type metadata accessor for DTSyncedTimer);
      v24 = 0;
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
    v24 = 1;
    v22 = v18;
  }

  v25 = *(v8 + 56);
  v26 = v62;
  v25(v7, v24, 1, v62);
  swift_endAccess();
  LODWORD(v26) = (*(v8 + 48))(v7, 1, v26);
  sub_2490A487C(v7, &qword_27EED7638, &qword_24910EB48);
  if (v26 == 1)
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v27 = sub_24910C89C();
    __swift_project_value_buffer(v27, qword_27EED82D8);
    sub_2490A3010(v16, v11, type metadata accessor for DTSyncedTimer);
    v28 = sub_24910C87C();
    v29 = sub_24910CF5C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v63[0] = v31;
      *v30 = 136315138;
      sub_2490A2FC8(&qword_27EED75C0, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
      v32 = sub_24910D50C();
      v34 = v33;
      sub_2490A4414(v11, type metadata accessor for DTSyncedTimer);
      v35 = sub_24909F930(v32, v34, v63);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_249083000, v28, v29, "removeTimer: unknown, %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x24C1F26F0](v31, -1, -1);
      MEMORY[0x24C1F26F0](v30, -1, -1);
    }

    else
    {

      sub_2490A4414(v11, type metadata accessor for DTSyncedTimer);
    }

    v36 = v16;
  }

  else
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v57 = v25;
    v37 = sub_24910C89C();
    __swift_project_value_buffer(v37, qword_27EED82D8);
    sub_2490A3010(v16, v14, type metadata accessor for DTSyncedTimer);
    v38 = sub_24910C87C();
    v39 = sub_24910CF5C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v63[0] = v55;
      *v40 = 136315138;
      sub_2490A2FC8(&qword_27EED75C0, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
      v41 = v62;
      v42 = sub_24910D50C();
      v56 = v22;
      v44 = v43;
      sub_2490A4414(v14, type metadata accessor for DTSyncedTimer);
      v45 = sub_24909F930(v42, v44, v63);
      v22 = v56;

      *(v40 + 4) = v45;
      _os_log_impl(&dword_249083000, v38, v39, "removeTimer: %s", v40, 0xCu);
      v46 = v55;
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x24C1F26F0](v46, -1, -1);
      MEMORY[0x24C1F26F0](v40, -1, -1);
    }

    else
    {

      sub_2490A4414(v14, type metadata accessor for DTSyncedTimer);
      v41 = v62;
    }

    v48 = v59;
    v47 = v60;
    v57(v60, 1, 1, v41);
    swift_beginAccess();

    sub_249092E30(v47, v48, v22);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7600, &qword_24910EB38);
    v49 = sub_24910C99C();
    v50 = *(v49 - 8);
    v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_24910E880;
    *(v52 + v51) = DTSyncedTimer.ckRecordID.getter();
    (*(v50 + 104))(v52 + v51, *MEMORY[0x277CBBC70], v49);
    if (*(v61 + 32))
    {

      sub_24910CB1C();

      sub_24910CAFC();
    }

    sub_24909329C();
    v36 = v16;
  }

  return sub_2490A4414(v36, type metadata accessor for DTSyncedTimer);
}

void sub_249091E20(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7640, &qword_24910EB58);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v49 - v5;
  v7 = sub_24910C26C();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  v50 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DTSyncedAlarm(0);
  v53 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  v15 = [a1 alarmIDString];
  v16 = sub_24910CC9C();
  v18 = v17;

  v19 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
  swift_beginAccess();
  v20 = *(v2 + v19);
  if (*(v20 + 16))
  {
    v49 = v6;
    v21 = sub_2490A0A3C(v16, v18);
    v23 = v22;

    if (v23)
    {
      sub_2490A3010(*(v20 + 56) + *(v53 + 72) * v21, v12, type metadata accessor for DTSyncedAlarm);
      sub_2490A43AC(v12, v14, type metadata accessor for DTSyncedAlarm);
      swift_endAccess();
      if (qword_27EED82D0 != -1)
      {
        swift_once();
      }

      v24 = sub_24910C89C();
      __swift_project_value_buffer(v24, qword_27EED82D8);
      v25 = sub_24910C87C();
      v26 = sub_24910CF5C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v54[0] = v28;
        *v27 = 136315138;
        swift_beginAccess();
        sub_2490A2FC8(&unk_27EED7950, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
        v29 = sub_24910D50C();
        v31 = sub_24909F930(v29, v30, v54);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_249083000, v25, v26, "dismissAlarm: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x24C1F26F0](v28, -1, -1);
        MEMORY[0x24C1F26F0](v27, -1, -1);
      }

      swift_beginAccess();
      if (!*(*&v14[*(v9 + 40)] + 16))
      {
        v14[16] = 0;
        v32 = v50;
        sub_24910C23C();
        (*(v51 + 40))(&v14[*(v9 + 36)], v32, v52);
        v33 = *v14;
        v34 = *(v14 + 1);
        v35 = v49;
        sub_2490A3010(v14, v49, type metadata accessor for DTSyncedAlarm);
        (*(v53 + 56))(v35, 0, 1, v9);
        swift_beginAccess();

        sub_249092C1C(v35, v33, v34);
        swift_endAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7600, &qword_24910EB38);
        v36 = sub_24910C99C();
        v37 = *(v36 - 8);
        v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_24910E880;
        *(v39 + v38) = DTSyncedAlarm.ckRecordID.getter();
        (*(v37 + 104))(v39 + v38, *MEMORY[0x277CBBC68], v36);
        if (*(v2 + 32))
        {

          sub_24910CB1C();

          sub_24910CAFC();
        }

        sub_24909329C();
      }

      sub_2490A4414(v14, type metadata accessor for DTSyncedAlarm);
      return;
    }
  }

  else
  {
  }

  swift_endAccess();
  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v40 = sub_24910C89C();
  __swift_project_value_buffer(v40, qword_27EED82D8);
  v41 = a1;
  v42 = sub_24910C87C();
  v43 = sub_24910CF5C();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v54[0] = v45;
    *v44 = 136315138;
    v46 = sub_24910D0BC();
    v48 = sub_24909F930(v46, v47, v54);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_249083000, v42, v43, "dismissAlarm: not found, %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x24C1F26F0](v45, -1, -1);
    MEMORY[0x24C1F26F0](v44, -1, -1);
  }
}

void sub_249092518(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7638, &qword_24910EB48);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v51 - v5;
  v6 = sub_24910C26C();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DTSyncedTimer(0);
  v57 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v51 - v12);
  v14 = [a1 timerIDString];
  v15 = sub_24910CC9C();
  v17 = v16;

  v18 = v2 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
  swift_beginAccess();
  v19 = *(v18 + 8);
  if (*(v19 + 16))
  {
    v52 = v2;
    v20 = sub_2490A0A3C(v15, v17);
    v22 = v21;

    if (v22)
    {
      sub_2490A3010(*(v19 + 56) + *(v57 + 72) * v20, v11, type metadata accessor for DTSyncedTimer);
      sub_2490A43AC(v11, v13, type metadata accessor for DTSyncedTimer);
      swift_endAccess();
      if (qword_27EED82D0 != -1)
      {
        swift_once();
      }

      v23 = sub_24910C89C();
      __swift_project_value_buffer(v23, qword_27EED82D8);
      v24 = sub_24910C87C();
      v25 = sub_24910CF5C();
      v26 = os_log_type_enabled(v24, v25);
      v27 = v52;
      if (v26)
      {
        v28 = swift_slowAlloc();
        v58[0] = swift_slowAlloc();
        v29 = v58[0];
        *v28 = 136315138;
        swift_beginAccess();
        sub_2490A2FC8(&qword_27EED75C0, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
        v30 = sub_24910D50C();
        v32 = sub_24909F930(v30, v31, v58);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_249083000, v24, v25, "dismissTimer: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        v33 = v29;
        v27 = v52;
        MEMORY[0x24C1F26F0](v33, -1, -1);
        MEMORY[0x24C1F26F0](v28, -1, -1);
      }

      v34 = v53;
      sub_24910C23C();
      swift_beginAccess();
      (*(v54 + 40))(v13 + *(v8 + 28), v34, v55);
      *(v13 + *(v8 + 32)) = 1;
      v35 = *v13;
      v36 = v13[1];
      v37 = v56;
      sub_2490A3010(v13, v56, type metadata accessor for DTSyncedTimer);
      (*(v57 + 56))(v37, 0, 1, v8);
      swift_beginAccess();

      sub_249092E30(v37, v35, v36);
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7600, &qword_24910EB38);
      v38 = sub_24910C99C();
      v39 = *(v38 - 8);
      v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_24910E880;
      *(v41 + v40) = DTSyncedTimer.ckRecordID.getter();
      (*(v39 + 104))(v41 + v40, *MEMORY[0x277CBBC68], v38);
      if (*(v27 + 32))
      {

        sub_24910CB1C();

        sub_24910CAFC();
      }

      sub_24909329C();
      sub_2490A4414(v13, type metadata accessor for DTSyncedTimer);
      return;
    }
  }

  else
  {
  }

  swift_endAccess();
  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v42 = sub_24910C89C();
  __swift_project_value_buffer(v42, qword_27EED82D8);
  v43 = a1;
  v44 = sub_24910C87C();
  v45 = sub_24910CF5C();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v58[0] = v47;
    *v46 = 136315138;
    v48 = sub_24910D0DC();
    v50 = sub_24909F930(v48, v49, v58);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_249083000, v44, v45, "dismissTimer: not found, %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x24C1F26F0](v47, -1, -1);
    MEMORY[0x24C1F26F0](v46, -1, -1);
  }
}

uint64_t sub_249092C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7640, &qword_24910EB58);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for DTSyncedAlarm(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_2490A487C(a1, &qword_27EED7640, &qword_24910EB58);
    sub_2490A0C1C(a2, a3, type metadata accessor for DTSyncedAlarm, type metadata accessor for DTSyncedAlarm, type metadata accessor for DTSyncedAlarm, sub_2490A219C, v9);

    return sub_2490A487C(v9, &qword_27EED7640, &qword_24910EB58);
  }

  else
  {
    sub_2490A43AC(a1, v12, type metadata accessor for DTSyncedAlarm);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_2490A1B9C(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_249092E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7638, &qword_24910EB48);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for DTSyncedTimer(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_2490A487C(a1, &qword_27EED7638, &qword_24910EB48);
    sub_2490A0C1C(a2, a3, type metadata accessor for DTSyncedTimer, type metadata accessor for DTSyncedTimer, type metadata accessor for DTSyncedTimer, sub_2490A23F4, v9);

    return sub_2490A487C(v9, &qword_27EED7638, &qword_24910EB48);
  }

  else
  {
    sub_2490A43AC(a1, v12, type metadata accessor for DTSyncedTimer);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_2490A1D30(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_249093044(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75D8, &qword_24910E8E8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7598, &qword_24910E890);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_2490A487C(a1, &qword_27EED75D8, &qword_24910E8E8);
    v13 = sub_2490A0AB4(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2490A264C();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_2490A19D8(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_2490A487C(v8, &qword_27EED75D8, &qword_24910E8E8);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_2490A1EC4(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

void sub_24909329C()
{
  v99[1] = *MEMORY[0x277D85DE8];
  v84 = type metadata accessor for DTSyncDaemon.PersistentData(0);
  MEMORY[0x28223BE20](v84);
  v92 = v81 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_24910C08C();
  v89 = *(v2 - 8);
  v90 = v2;
  MEMORY[0x28223BE20](v2);
  v91 = v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_24910C12C();
  v4 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED78F0, &qword_24910EB70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v81 - v7;
  v9 = sub_24910C1AC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v93 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v96 = v81 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v81 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v81 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v86 = v81 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v81 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = v81 - v26;
  v85 = v0;
  sub_24910C35C();
  v28 = (*(v10 + 48))(v8, 1, v9);
  v29 = &qword_27EED8000;
  v94 = v27;
  v95 = v10;
  if (v28 == 1)
  {
    v83 = v9;
    sub_2490A487C(v8, &qword_27EED78F0, &qword_24910EB70);
    v30 = [objc_opt_self() defaultManager];
    v97 = 0;
    v31 = [v30 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:1 error:&v97];

    v32 = v97;
    if (!v31)
    {
      v74 = v97;
      v64 = sub_24910C11C();

      swift_willThrow();
      goto LABEL_13;
    }

    sub_24910C17C();
    v33 = v32;

    v97 = sub_24910C58C();
    v98 = v34;
    v82 = *MEMORY[0x277CC91D8];
    v35 = *(v4 + 104);
    v36 = v87;
    v37 = v88;
    v35(v87);
    v81[1] = sub_2490A44E8();
    sub_24910C19C();
    v81[0] = *(v4 + 8);
    (v81[0])(v36, v37);

    v38 = *(v95 + 8);
    v39 = v83;
    v38(v17, v83);
    v97 = 0xD000000000000010;
    v98 = 0x80000002491110F0;
    (v35)(v36, v82, v37);
    v10 = v95;
    v40 = v86;
    sub_24910C19C();
    v41 = v37;
    v42 = v39;
    (v81[0])(v36, v41);
    v29 = &qword_27EED8000;
    v38(v20, v39);
    v27 = v94;
    (*(v10 + 32))(v94, v40, v39);
  }

  else
  {
    v43 = *(v10 + 32);
    v43(v25, v8, v9);
    v43(v27, v25, v9);
    v42 = v9;
  }

  if (v29[90] != -1)
  {
    swift_once();
  }

  v44 = sub_24910C89C();
  __swift_project_value_buffer(v44, qword_27EED82D8);
  (*(v10 + 16))(v96, v27, v42);
  v45 = sub_24910C87C();
  v46 = sub_24910CF5C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v97 = v48;
    *v47 = 136315138;
    v49 = v96;
    v50 = sub_24910C18C();
    v52 = v51;
    v53 = *(v10 + 8);
    v53(v49, v42);
    v54 = sub_24909F930(v50, v52, &v97);

    *(v47 + 4) = v54;
    _os_log_impl(&dword_249083000, v45, v46, "Persistent data save: path=%s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x24C1F26F0](v48, -1, -1);
    v55 = v53;
    MEMORY[0x24C1F26F0](v47, -1, -1);
  }

  else
  {

    v55 = *(v10 + 8);
    v55(v96, v42);
  }

  v57 = v92;
  v56 = v93;
  v58 = v94;
  sub_24910C16C();
  v59 = [objc_opt_self() defaultManager];
  v60 = sub_24910C15C();
  v97 = 0;
  v61 = [v59 createDirectoryAtURL:v60 withIntermediateDirectories:1 attributes:0 error:&v97];

  if (v61)
  {
    v62 = v97;
    sub_24910C07C();
    sub_24910C06C();
    sub_24910C14C();
    sub_24910BFDC();
    swift_allocObject();
    sub_24910BFCC();
    v75 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
    v76 = v85;
    swift_beginAccess();
    sub_2490A3010(v76 + v75, v57, type metadata accessor for DTSyncDaemon.PersistentData);
    sub_2490A2FC8(&qword_27EED7670, type metadata accessor for DTSyncDaemon.PersistentData, &protocol conformance descriptor for DTSyncDaemon.PersistentData);
    v77 = sub_24910BFBC();
    v79 = v78;
    sub_2490A4414(v57, type metadata accessor for DTSyncDaemon.PersistentData);

    v80 = v94;
    sub_24910C1EC();
    LOBYTE(v99[0]) = 2;
    DTSyncDaemon._report(event:)(v99);
    sub_2490A453C(v77, v79);
    (*(v89 + 8))(v91, v90);
    v55(v56, v42);
    v55(v80, v42);
    return;
  }

  v63 = v97;
  v64 = sub_24910C11C();

  swift_willThrow();
  v55(v56, v42);
  v55(v58, v42);
LABEL_13:
  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v65 = sub_24910C89C();
  __swift_project_value_buffer(v65, qword_27EED82D8);
  v66 = v64;
  v67 = sub_24910C87C();
  v68 = sub_24910CF4C();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v99[0] = v70;
    *v69 = 136315138;
    swift_getErrorValue();
    v71 = sub_24910D5DC();
    v73 = sub_24909F930(v71, v72, v99);

    *(v69 + 4) = v73;
    _os_log_impl(&dword_249083000, v67, v68, "### Persistent data save failed: error=%s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v70);
    MEMORY[0x24C1F26F0](v70, -1, -1);
    MEMORY[0x24C1F26F0](v69, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_249093EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_24910C49C();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = sub_24910C3BC();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249093FC0, 0, 0);
}

uint64_t sub_249093FC0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[14];
    v2 = v0[15];
    v4 = v0[13];
    (*(v3 + 16))(v2, Strong + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__environment, v4);

    sub_24910C39C();
    (*(v3 + 8))(v2, v4);
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_2490941E0;
    v6 = v0[9];

    return MEMORY[0x282158BB0](v6, 0, 0, 1);
  }

  else
  {
    swift_beginAccess();
    v7 = swift_weakLoadStrong();
    v0[18] = v7;
    if (v7)
    {
      v8 = swift_task_alloc();
      v0[19] = v8;
      *v8 = v0;
      v8[1] = sub_249094450;

      return sub_24908C6D4();
    }

    else
    {

      v9 = v0[1];

      return v9();
    }
  }
}

uint64_t sub_2490941E0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 136) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2490945A4;
  }

  else
  {
    v5 = sub_249094350;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_249094350()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_249094450;

    return sub_24908C6D4();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_249094450()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2490945A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_249094614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2490A4674(a3, v22 - v9, &unk_27EED7B50, &qword_24910E810);
  v11 = sub_24910CDEC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2490A487C(v10, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24910CDAC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_24910CCAC() + 32;

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

      sub_2490A487C(a3, &unk_27EED7B50, &qword_24910E810);

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

  sub_2490A487C(a3, &unk_27EED7B50, &qword_24910E810);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

Swift::Void __swiftcall DTSyncDaemon._report(event:)(DistributedTimersDaemon::DTSyncDaemon::Event event)
{
  v2 = event;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75D0, &qword_24910E8E0);
  v3 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v65 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7598, &qword_24910E890);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v71 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v60 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75A0, &qword_24910E898);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v67 = (&v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v66 = &v53 - v13;
  v68 = *v2;
  v14 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__eventContinuations;
  swift_beginAccess();
  v15 = *(v1 + v14);
  v16 = v5;
  v17 = *(v15 + 64);
  v56 = v15 + 64;
  v18 = 1 << *(v15 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v59 = v6 + 16;
  v70 = (v6 + 32);
  v61 = v6;
  v62 = v15;
  v63 = (v6 + 8);
  v64 = (v3 + 8);

  v22 = 0;
  *&v23 = 134218242;
  v57 = v23;
  v53 = "persistentDataLoaded";
  v55 = "persistentDataSaved";
  v54 = "Unsupported diagnostics request";
  v58 = v5;
  while (v20)
  {
    v26 = v22;
LABEL_16:
    v30 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v31 = v30 | (v26 << 6);
    v32 = v61;
    v33 = *(*(v62 + 48) + 8 * v31);
    v34 = v60;
    (*(v61 + 16))(v60, *(v62 + 56) + *(v61 + 72) * v31, v16);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75A8, &unk_24910E8A0);
    v36 = *(v35 + 48);
    v37 = v67;
    *v67 = v33;
    v29 = v37;
    (*(v32 + 32))(v37 + v36, v34, v16);
    (*(*(v35 - 8) + 56))(v29, 0, 1, v35);
LABEL_17:
    v38 = v29;
    v39 = v66;
    sub_2490A2F0C(v38, v66);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75A8, &unk_24910E8A0);
    if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
    {

      return;
    }

    v41 = *v39;
    (*v70)(v71, &v39[*(v40 + 48)], v16);
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v42 = sub_24910C89C();
    __swift_project_value_buffer(v42, qword_27EED82D8);
    v43 = sub_24910C87C();
    v44 = sub_24910CF5C();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v69;
    if (v45)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v72 = v48;
      *v47 = v57;
      *(v47 + 4) = v41;
      *(v47 + 12) = 2080;
      if (v68)
      {
        if (v68 == 1)
        {
          v49 = 0xD000000000000014;
        }

        else
        {
          v49 = 0xD000000000000013;
        }

        if (v68 == 1)
        {
          v50 = v55;
        }

        else
        {
          v50 = v54;
        }
      }

      else
      {
        v49 = 0xD000000000000014;
        v50 = v53;
      }

      v52 = sub_24909F930(v49, v50 | 0x8000000000000000, &v72);

      *(v47 + 14) = v52;
      _os_log_impl(&dword_249083000, v43, v44, "event monitor report: id=%llu, event={%s}", v47, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x24C1F26F0](v48, -1, -1);
      MEMORY[0x24C1F26F0](v47, -1, -1);

      v46 = v69;
      v16 = v58;
    }

    else
    {
    }

    LOBYTE(v72) = v68;
    v24 = v65;
    v25 = v71;
    sub_24910CE1C();
    (*v64)(v24, v46);
    (*v63)(v25, v16);
  }

  if (v21 <= v22 + 1)
  {
    v27 = v22 + 1;
  }

  else
  {
    v27 = v21;
  }

  v28 = v27 - 1;
  v29 = v67;
  while (1)
  {
    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75A8, &unk_24910E8A0);
      (*(*(v51 - 8) + 56))(v29, 1, 1, v51);
      v20 = 0;
      v22 = v28;
      goto LABEL_17;
    }

    v20 = *(v56 + 8 * v26);
    ++v22;
    if (v20)
    {
      v22 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t DTSyncDaemon.events.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75D8, &qword_24910E8E8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - v2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75E0, &qword_24910E8F0);
  v4 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7598, &qword_24910E890);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  v11 = CUNextID64();
  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v12 = sub_24910C89C();
  __swift_project_value_buffer(v12, qword_27EED82D8);
  v13 = sub_24910C87C();
  v14 = sub_24910CF2C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v21 = v3;
    v16 = v15;
    *v15 = 134217984;
    *(v15 + 4) = v11;
    _os_log_impl(&dword_249083000, v13, v14, "event monitor start: id=%llu", v15, 0xCu);
    v3 = v21;
    MEMORY[0x24C1F26F0](v16, -1, -1);
  }

  v17 = v22;
  (*(v4 + 104))(v6, *MEMORY[0x277D85778], v22);
  sub_24910CDFC();
  (*(v4 + 8))(v6, v17);
  (*(v8 + 16))(v3, v10, v7);
  (*(v8 + 56))(v3, 0, 1, v7);
  swift_beginAccess();
  sub_249093044(v3, v11);
  swift_endAccess();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v11;
  sub_24910CE0C();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_249095320(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_24910C34C();
    v12 = sub_24910CDEC();
    v13 = *(v12 - 8);
    (*(v13 + 56))(v8, 1, 1, v12);
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    *(v14 + 24) = a2;
    sub_2490A4674(v8, v6, &unk_27EED7B50, &qword_24910E810);
    v15 = (*(v13 + 48))(v6, 1, v12);

    if (v15 == 1)
    {
      sub_2490A487C(v6, &unk_27EED7B50, &qword_24910E810);
    }

    else
    {
      sub_24910CDDC();
      (*(v13 + 8))(v6, v12);
    }

    v16 = sub_2490A46DC();
    v17 = swift_allocObject();
    *(v17 + 16) = &unk_24910EB80;
    *(v17 + 24) = v14;
    v19[1] = 6;
    v19[2] = 0;
    v19[3] = v11;
    v19[4] = v16;

    v18 = v11;
    swift_task_create();
    sub_2490A487C(v8, &unk_27EED7B50, &qword_24910E810);
  }

  return result;
}

uint64_t sub_2490955DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2490887FC;

  return sub_249095678(a3);
}

uint64_t sub_249095678(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75D8, &qword_24910E8E8);
  v2[7] = swift_task_alloc();
  sub_2490A2FC8(&qword_27EED7578, type metadata accessor for DTSyncDaemon, &protocol conformance descriptor for DTSyncDaemon);
  v4 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_249095784, v4, v3);
}

uint64_t sub_249095784()
{
  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v1 = sub_24910C89C();
  __swift_project_value_buffer(v1, qword_27EED82D8);
  v2 = sub_24910C87C();
  v3 = sub_24910CF2C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_249083000, v2, v3, "event monitor cancel: id=%llu", v5, 0xCu);
    MEMORY[0x24C1F26F0](v5, -1, -1);
  }

  v6 = v0[7];
  v7 = v0[5];

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7598, &qword_24910E890);
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  swift_beginAccess();
  sub_249093044(v6, v7);
  swift_endAccess();

  v9 = v0[1];

  return v9();
}

unint64_t DTSyncDaemon.Event.description.getter()
{
  v1 = 0xD000000000000013;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t DTSyncDaemon.Event.hashValue.getter()
{
  v1 = *v0;
  sub_24910D60C();
  MEMORY[0x24C1F2040](v1);
  return sub_24910D62C();
}

uint64_t sub_249095A14()
{
  v1 = *v0;
  sub_24910D60C();
  MEMORY[0x24C1F2040](v1);
  return sub_24910D62C();
}

uint64_t sub_249095A88(uint64_t a1)
{
  v2 = *v1;
  sub_24910D60C();
  MEMORY[0x24C1F2040](v2);
  return sub_24910D62C();
}

unint64_t sub_249095ACC()
{
  v1 = 0xD000000000000013;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_249095B34()
{
  v0 = sub_24910C34C();
  v1 = sub_24910D02C();

  return v1;
}

uint64_t sub_249095B84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_249095C10;

  return DTSyncDaemon.summary.getter();
}

uint64_t sub_249095C10(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_249095D14()
{
  *(v1 + 16) = v0;
  sub_2490A2FC8(&qword_27EED7578, type metadata accessor for DTSyncDaemon, &protocol conformance descriptor for DTSyncDaemon);
  v3 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_249095DE8, v3, v2);
}

uint64_t sub_249095DE8()
{
  DTSyncDaemon.activate()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_249095E48()
{
  *(v1 + 16) = v0;
  sub_2490A2FC8(&qword_27EED7578, type metadata accessor for DTSyncDaemon, &protocol conformance descriptor for DTSyncDaemon);
  v3 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_249095F1C, v3, v2);
}

uint64_t sub_249095F1C()
{
  DTSyncDaemon.invalidate()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t DTSyncDaemon.handleEvent(_:syncEngine:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24908837C;

  return sub_2490A31BC(a1);
}

void sub_249096028(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DTSyncDaemon.PersistentData(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24910C9EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24910C9CC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24910C9DC();
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == *MEMORY[0x277CBBCB0])
  {
    (*(v12 + 8))(v14, v11);
    if (*(v2 + 32))
    {
      v47 = MEMORY[0x277D84F90];

      sub_24910CB1C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7630, &qword_24910EB40);
      v16 = sub_24910C97C();
      v17 = *(v16 - 8);
      v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_24910E880;
      sub_2490A5AD4();
      v20 = objc_allocWithZone(MEMORY[0x277CBC5E8]);

      v21 = sub_24910CC8C();

      v22 = [v20 initWithZoneName_];

      *(v19 + v18) = v22;
      (*(v17 + 104))(v19 + v18, *MEMORY[0x277CBBC50], v16);
      sub_24910CAEC();

      swift_beginAccess();

      v24 = sub_249097EB4(v23, type metadata accessor for DTSyncedAlarm, type metadata accessor for DTSyncedAlarm, DTSyncedAlarm.ckRecordID.getter, type metadata accessor for DTSyncedAlarm);

      sub_2490A28BC(v24);

      v26 = sub_249097EB4(v25, type metadata accessor for DTSyncedTimer, type metadata accessor for DTSyncedTimer, DTSyncedTimer.ckRecordID.getter, type metadata accessor for DTSyncedTimer);

      sub_2490A28BC(v26);
      if (*(v47 + 16))
      {
        sub_24910CB1C();
        sub_24910CAFC();
      }
    }
  }

  else if (v15 == *MEMORY[0x277CBBCB8] || v15 == *MEMORY[0x277CBBCA8])
  {
    (*(v12 + 8))(v14, v11);
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v28 = sub_24910C89C();
    __swift_project_value_buffer(v28, qword_27EED82D8);
    v29 = sub_24910C87C();
    v30 = sub_24910CF5C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_249083000, v29, v30, "Persistent data delete", v31, 2u);
      MEMORY[0x24C1F26F0](v31, -1, -1);
    }

    sub_2490A561C(v6);
    v32 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
    swift_beginAccess();
    sub_2490A4480(v6, v2 + v32, type metadata accessor for DTSyncDaemon.PersistentData);
    swift_endAccess();
    sub_24909329C();
    *(v2 + 32) = 0;

    sub_24908AAB8();
  }

  else
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v33 = sub_24910C89C();
    __swift_project_value_buffer(v33, qword_27EED82D8);
    (*(v8 + 16))(v10, a1, v7);
    v34 = sub_24910C87C();
    v35 = sub_24910CF5C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v45 = v36;
      v46 = swift_slowAlloc();
      v48[0] = v46;
      *v36 = 136315138;
      sub_2490A2FC8(&qword_27EED7628, MEMORY[0x277CBBCC0], MEMORY[0x277CBBCC8]);
      v37 = sub_24910D50C();
      v39 = v38;
      (*(v8 + 8))(v10, v7);
      v40 = sub_24909F930(v37, v39, v48);

      v41 = v45;
      *(v45 + 1) = v40;
      v42 = v41;
      _os_log_impl(&dword_249083000, v34, v35, "Unknown account change type: %s", v41, 0xCu);
      v43 = v46;
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x24C1F26F0](v43, -1, -1);
      MEMORY[0x24C1F26F0](v42, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_2490967C0()
{
  v1 = v0;
  v2 = type metadata accessor for DTSyncDaemon.PersistentData(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24910CEAC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v47 - v11;
  v13 = MEMORY[0x24C1F1490](v10);
  v15 = *(v13 + 16);
  if (v15)
  {
    v16 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v19 = *(v17 + 64);
    v47[1] = v13;
    v20 = v13 + ((v19 + 32) & ~v19);
    v21 = *(v17 + 56);
    v52 = v9;
    v53 = v21;
    v54 = (v17 - 8);
    v55 = v18;
    *&v14 = 138412290;
    v48 = v14;
    v49 = v4;
    v50 = v0;
    v56 = v17;
    v51 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
    while (1)
    {
      v22 = v5;
      v23 = v55(v12, v20, v5);
      v24 = MEMORY[0x24C1F18C0](v23);
      v25 = [v24 zoneName];

      v26 = sub_24910CC9C();
      v28 = v27;

      v29 = sub_2490A5AD4();
      if (*v29 == v26 && *(v29 + 1) == v28)
      {
      }

      else
      {
        v31 = sub_24910D54C();

        if ((v31 & 1) == 0)
        {
          if (qword_27EED82D0 != -1)
          {
            swift_once();
          }

          v32 = sub_24910C89C();
          __swift_project_value_buffer(v32, qword_27EED82D8);
          v33 = v52;
          v55(v52, v12, v22);
          v34 = sub_24910C87C();
          v35 = sub_24910CF5C();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *v36 = v48;
            v38 = MEMORY[0x24C1F18C0]();
            v39 = v22;
            v40 = *v54;
            v41 = v33;
            v42 = v39;
            (*v54)(v41);
            *(v36 + 4) = v38;
            *v37 = v38;
            _os_log_impl(&dword_249083000, v34, v35, "Delete unknown zone: %@", v36, 0xCu);
            sub_2490A487C(v37, &qword_27EED7688, &qword_249110020);
            v43 = v37;
            v1 = v50;
            MEMORY[0x24C1F26F0](v43, -1, -1);
            v44 = v36;
            v4 = v49;
            MEMORY[0x24C1F26F0](v44, -1, -1);

            (v40)(v12, v42);
            v5 = v42;
          }

          else
          {

            v45 = *v54;
            (*v54)(v33, v22);
            (v45)(v12, v22);
            v5 = v22;
          }

          v16 = v51;
          goto LABEL_5;
        }
      }

      sub_2490A561C(v4);
      swift_beginAccess();
      sub_2490A4480(v4, v1 + v16, type metadata accessor for DTSyncDaemon.PersistentData);
      swift_endAccess();
      sub_24909329C();
      v5 = v22;
      (*v54)(v12, v22);
LABEL_5:
      v20 += v53;
      if (!--v15)
      {
      }
    }
  }
}

uint64_t DTSyncDaemon.nextRecordZoneChangeBatch(_:syncEngine:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_24910C92C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_2490A2FC8(&qword_27EED7578, type metadata accessor for DTSyncDaemon, &protocol conformance descriptor for DTSyncDaemon);
  v7 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_249096D78, v7, v6);
}

uint64_t sub_249096D78()
{
  v28 = v0;
  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v2 = v0[3].i64[1];
  v1 = v0[4].i64[0];
  v3 = v0[3].i64[0];
  v4 = v0[1].i64[1];
  v5 = sub_24910C89C();
  __swift_project_value_buffer(v5, qword_27EED82D8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_24910C87C();
  v7 = sub_24910CF5C();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[3].i64[1];
  v9 = v0[4].i64[0];
  v11 = v0[3].i64[0];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315138;
    sub_2490A2FC8(&qword_27EED75E8, MEMORY[0x277CBBC08], MEMORY[0x277CBBC10]);
    v14 = sub_24910D50C();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_24909F930(v14, v16, &v27);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_249083000, v6, v7, "CloudKit nextRecordZoneChangeBatch: context=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1F26F0](v13, -1, -1);
    MEMORY[0x24C1F26F0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1].i64[1];
  v26 = v0[2];
  sub_24910CB1C();
  v19 = sub_24910CADC();

  v20 = swift_task_alloc();
  *(v20 + 16) = v18;
  v21 = sub_249097340(sub_2490A3EE8, v20, v19);

  v22 = swift_task_alloc();
  v0[4].i64[1] = v22;
  v22[1] = vextq_s8(v26, v26, 8uLL);
  v23 = swift_task_alloc();
  v0[5].i64[0] = v23;
  *v23 = v0;
  v23[1] = sub_24909708C;
  v24 = v0[1].i64[0];

  return MEMORY[0x28210DC20](v24, v21, &unk_24910E918, v22);
}

uint64_t sub_24909708C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2490971B8(uint64_t a1)
{
  v1 = sub_24910C94C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24910C96C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24910C91C();
  MEMORY[0x24C1F1380](v9);
  (*(v6 + 8))(v8, v5);
  v10 = sub_24910C93C();
  (*(v2 + 8))(v4, v1);
  return v10 & 1;
}

uint64_t sub_249097340(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_24910C99C();
  v7 = MEMORY[0x28223BE20](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x277D84F90];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2490A2A0C(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_2490A2A0C((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_249097610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = type metadata accessor for DTSyncedTimer(0);
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for DTSyncedAlarm(0);
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249097748, 0, 0);
}

uint64_t sub_249097748()
{
  v1 = [*(v0 + 64) recordName];
  v2 = sub_24910CC9C();
  v4 = v3;

  *(v0 + 152) = v2;
  *(v0 + 160) = v4;
  *(v0 + 168) = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
  type metadata accessor for DTSyncDaemon(0);
  sub_2490A2FC8(&qword_27EED7578, type metadata accessor for DTSyncDaemon, &protocol conformance descriptor for DTSyncDaemon);
  v6 = sub_24910CDAC();
  *(v0 + 176) = v6;
  *(v0 + 184) = v5;

  return MEMORY[0x2822009F8](sub_249097840, v6, v5);
}

uint64_t sub_249097840()
{
  v1 = v0[21];
  v2 = v0[9];
  swift_beginAccess();
  v3 = *(v2 + v1);
  if (*(v3 + 16) && (v4 = sub_2490A0A3C(v0[19], v0[20]), (v5 & 1) != 0))
  {
    v7 = v0[17];
    v6 = v0[18];
    sub_2490A3010(*(v3 + 56) + *(v0[16] + 72) * v4, v7, type metadata accessor for DTSyncedAlarm);
    sub_2490A43AC(v7, v6, type metadata accessor for DTSyncedAlarm);
    swift_endAccess();

    v8 = sub_249097958;
  }

  else
  {
    swift_endAccess();
    v8 = sub_249097AA8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_249097958()
{
  v1 = v0[15];
  v2 = sub_2490A2FC8(&qword_27EED7618, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
  v3.super.isa = DTSyncedObject.lastKnownRecord.getter(v1, v2);
  if (!v3.super.isa)
  {
    v4 = v0[8];
    sub_2490A4744(0, &qword_27EED7610, 0x277CBC5A0);
    sub_2490A86B8();

    v5 = v4;
    v3.super.isa = sub_24910D0EC();
  }

  v6 = v0[18];
  isa = v3.super.isa;
  DTSyncedObject.populateRecord(_:)(v3);
  sub_2490A4414(v6, type metadata accessor for DTSyncedAlarm);

  v8 = v0[1];

  return v8(isa);
}

uint64_t sub_249097AC0()
{
  v1 = v0[9] + v0[21];
  swift_beginAccess();
  v2 = *(v1 + 8);
  if (*(v2 + 16) && (v3 = sub_2490A0A3C(v0[19], v0[20]), (v4 & 1) != 0))
  {
    v6 = v0[13];
    v5 = v0[14];
    sub_2490A3010(*(v2 + 56) + *(v0[12] + 72) * v3, v6, type metadata accessor for DTSyncedTimer);
    sub_2490A43AC(v6, v5, type metadata accessor for DTSyncedTimer);
    swift_endAccess();

    v7 = sub_249097BE8;
  }

  else
  {
    swift_endAccess();

    v7 = sub_249097D3C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_249097BE8()
{
  v1 = v0[11];
  v2 = sub_2490A2FC8(&qword_27EED7608, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
  v3.super.isa = DTSyncedObject.lastKnownRecord.getter(v1, v2);
  if (!v3.super.isa)
  {
    v4 = v0[8];
    sub_2490A4744(0, &qword_27EED7610, 0x277CBC5A0);
    sub_2490AF22C();
    v5 = v4;

    v3.super.isa = sub_24910D0EC();
  }

  v6 = v0[14];
  isa = v3.super.isa;
  DTSyncedObject.populateRecord(_:)(v3);
  sub_2490A4414(v6, type metadata accessor for DTSyncedTimer);

  v8 = v0[1];

  return v8(isa);
}

uint64_t sub_249097D3C(uint64_t a1)
{
  v2 = *(v1 + 64);
  sub_24910CB1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7600, &qword_24910EB38);
  v3 = sub_24910C99C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24910E880;
  *(v6 + v5) = v2;
  (*(v4 + 104))(v6 + v5, *MEMORY[0x277CBBC68], v3);
  v7 = v2;
  sub_24910CB0C();

  v8 = *(v1 + 8);

  return v8(0);
}

uint64_t sub_249097EB4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  v45 = a4;
  v46 = a5;
  v44 = a3;
  v7 = a2(0);
  v43 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v42 = &v35 - v8;
  v9 = sub_24910C99C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v13)
  {
    v35 = v5;
    v51 = MEMORY[0x277D84F90];
    sub_2490A2A0C(0, v13, 0);
    v49 = a1 + 64;
    v50 = v51;
    result = sub_24910D15C();
    v15 = result;
    v16 = 0;
    v40 = (v10 + 104);
    v41 = v10;
    v39 = *MEMORY[0x277CBBC68];
    v37 = v13;
    v38 = v10 + 32;
    v36 = a1 + 72;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      v19 = v15 >> 6;
      if ((*(v49 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_22;
      }

      v20 = *(a1 + 36);
      v47 = v16;
      v48 = v20;
      v21 = v42;
      v22 = sub_2490A3010(*(a1 + 56) + *(v43 + 72) * v15, v42, v44);
      *v12 = v45(v22);
      (*v40)(v12, v39, v9);
      sub_2490A4414(v21, v46);
      v23 = v50;
      v51 = v50;
      v24 = v12;
      v26 = *(v50 + 16);
      v25 = *(v50 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_2490A2A0C((v25 > 1), v26 + 1, 1);
        v23 = v51;
      }

      *(v23 + 16) = v26 + 1;
      v27 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v50 = v23;
      result = (*(v41 + 32))(v23 + v27 + *(v41 + 72) * v26, v24, v9);
      v17 = 1 << *(a1 + 32);
      if (v15 >= v17)
      {
        goto LABEL_23;
      }

      v28 = *(v49 + 8 * v19);
      if ((v28 & (1 << v15)) == 0)
      {
        goto LABEL_24;
      }

      if (v48 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v12 = v24;
      v29 = v28 & (-2 << (v15 & 0x3F));
      if (v29)
      {
        v17 = __clz(__rbit64(v29)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v18 = v37;
      }

      else
      {
        v30 = v19 << 6;
        v31 = v19 + 1;
        v18 = v37;
        v32 = (v36 + 8 * v19);
        while (v31 < (v17 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = sub_2490A4474(v15, v48, 0);
            v17 = __clz(__rbit64(v33)) + v30;
            goto LABEL_4;
          }
        }

        result = sub_2490A4474(v15, v48, 0);
      }

LABEL_4:
      v16 = v47 + 1;
      v15 = v17;
      if (v47 + 1 == v18)
      {
        return v50;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_249098278(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7638, &qword_24910EB48);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v134 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v133 = &v131 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v142 = &v131 - v9;
  MEMORY[0x28223BE20](v8);
  v146 = &v131 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v136 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v131 - v14;
  v16 = sub_24910C2FC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v132 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v139 = &v131 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7640, &qword_24910EB58);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v138 = &v131 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v137 = &v131 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v153 = &v131 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v131 - v28;
  v30 = *(a1 + 16);
  if (v30)
  {
    v152 = (v1 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData);
    v31 = sub_24910CEFC();
    v144 = 0;
    v32 = *(v31 - 8);
    v33 = a1 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v147 = (v17 + 48);
    v149 = *(v32 + 72);
    v140 = (v17 + 8);
    v141 = (v17 + 32);
    *&v34 = 136315394;
    v143 = v34;
    v145 = v15;
    v148 = v16;
    v151 = v29;
    while (1)
    {
      v44 = sub_24910CEDC();
      v46 = v45;
      v47 = MEMORY[0x24C1F1910]();
      v48 = [v47 recordName];

      v154 = sub_24910CC9C();
      v50 = v49;

      v51 = sub_2490A86B8();
      v52 = v44 == *v51 && v46 == *(v51 + 1);
      if (v52 || (sub_24910D54C() & 1) != 0)
      {

        v53 = v152;
        swift_beginAccess();
        v54 = *v53;
        if (*(v54 + 16))
        {
          v55 = sub_2490A0A3C(v154, v50);
          v56 = v151;
          if (v57)
          {
            v58 = v55;
            v59 = v30;
            v60 = *(v54 + 56);
            v61 = type metadata accessor for DTSyncedAlarm(0);
            v62 = *(v61 - 8);
            v63 = v60 + *(v62 + 72) * v58;
            v30 = v59;
            sub_2490A3010(v63, v56, type metadata accessor for DTSyncedAlarm);
            (*(v62 + 56))(v56, 0, 1, v61);
            v15 = v145;
          }

          else
          {
            v78 = type metadata accessor for DTSyncedAlarm(0);
            (*(*(v78 - 8) + 56))(v56, 1, 1, v78);
          }
        }

        else
        {
          v64 = type metadata accessor for DTSyncedAlarm(0);
          v56 = v151;
          (*(*(v64 - 8) + 56))(v151, 1, 1, v64);
        }

        swift_endAccess();
        if (qword_27EED82D0 != -1)
        {
          swift_once();
        }

        v79 = sub_24910C89C();
        __swift_project_value_buffer(v79, qword_27EED82D8);
        sub_2490A4674(v56, v153, &qword_27EED7640, &qword_24910EB58);

        v80 = sub_24910C87C();
        v81 = sub_24910CF5C();

        if (os_log_type_enabled(v80, v81))
        {
          v150 = v30;
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v155[0] = v83;
          *v82 = v143;
          *(v82 + 4) = sub_24909F930(v154, v50, v155);
          *(v82 + 12) = 2080;
          v84 = v137;
          sub_2490A4674(v153, v137, &qword_27EED7640, &qword_24910EB58);
          v85 = type metadata accessor for DTSyncedAlarm(0);
          if ((*(*(v85 - 8) + 48))(v84, 1, v85) == 1)
          {
            sub_2490A487C(v84, &qword_27EED7640, &qword_24910EB58);
            v86 = 0xE300000000000000;
            v87 = 7104878;
          }

          else
          {
            v88 = v84;
            v87 = DTSyncedAlarm.description.getter();
            v86 = v89;
            sub_2490A4414(v88, type metadata accessor for DTSyncedAlarm);
          }

          sub_2490A487C(v153, &qword_27EED7640, &qword_24910EB58);
          v90 = sub_24909F930(v87, v86, v155);

          *(v82 + 14) = v90;
          _os_log_impl(&dword_249083000, v80, v81, "Server deletion: alarm, id=%s, existing=%s", v82, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1F26F0](v83, -1, -1);
          MEMORY[0x24C1F26F0](v82, -1, -1);

          v15 = v145;
          v30 = v150;
          v56 = v151;
        }

        else
        {

          sub_2490A487C(v153, &qword_27EED7640, &qword_24910EB58);
        }

        v91 = type metadata accessor for DTSyncedAlarm(0);
        if ((*(*(v91 - 8) + 48))(v56, 1, v91) != 1)
        {
          swift_beginAccess();
          v92 = v138;
          sub_2490A0C1C(v154, v50, type metadata accessor for DTSyncedAlarm, type metadata accessor for DTSyncedAlarm, type metadata accessor for DTSyncedAlarm, sub_2490A219C, v138);
          sub_2490A487C(v92, &qword_27EED7640, &qword_24910EB58);
          swift_endAccess();
          v144 = 1;
        }

        sub_24910C27C();

        v93 = v148;
        if ((*v147)(v15, 1, v148) == 1)
        {
          sub_2490A487C(v56, &qword_27EED7640, &qword_24910EB58);
          v41 = v15;
          v42 = &qword_27EED7900;
          v43 = &qword_24910EB50;
        }

        else
        {
          v35 = v139;
          (*v141)(v139, v15, v93);
          v36 = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
          v37 = objc_allocWithZone(MEMORY[0x277D296D0]);
          v38 = sub_24910C2AC();
          v39 = [v37 initWithIdentifier_];

          v40 = [v36 removeAlarm_];
          (*v140)(v35, v93);
          v41 = v56;
          v42 = &qword_27EED7640;
          v43 = &qword_24910EB58;
        }
      }

      else
      {
        v65 = sub_2490AF22C();
        v66 = v142;
        if ((v44 != *v65 || v46 != *(v65 + 1)) && (sub_24910D54C() & 1) == 0)
        {
          if (qword_27EED82D0 != -1)
          {
            swift_once();
          }

          v95 = sub_24910C89C();
          __swift_project_value_buffer(v95, qword_27EED82D8);

          v96 = sub_24910C87C();
          v97 = sub_24910CF5C();

          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            v99 = v30;
            v100 = swift_slowAlloc();
            v155[0] = v100;
            *v98 = v143;
            v101 = sub_24909F930(v44, v46, v155);

            *(v98 + 4) = v101;
            *(v98 + 12) = 2080;
            v102 = sub_24909F930(v154, v50, v155);

            *(v98 + 14) = v102;
            _os_log_impl(&dword_249083000, v96, v97, "Server deletion: unsupported, type=%s, id=%s", v98, 0x16u);
            swift_arrayDestroy();
            v103 = v100;
            v30 = v99;
            MEMORY[0x24C1F26F0](v103, -1, -1);
            v104 = v98;
            v15 = v145;
            MEMORY[0x24C1F26F0](v104, -1, -1);
          }

          else
          {
          }

          goto LABEL_5;
        }

        v67 = v152;
        swift_beginAccess();
        v68 = v67[1];
        if (*(v68 + 16))
        {
          v69 = sub_2490A0A3C(v154, v50);
          if (v70)
          {
            v71 = v69;
            v72 = v30;
            v73 = *(v68 + 56);
            v74 = type metadata accessor for DTSyncedTimer(0);
            v75 = *(v74 - 8);
            v76 = v73 + *(v75 + 72) * v71;
            v30 = v72;
            v77 = v146;
            sub_2490A3010(v76, v146, type metadata accessor for DTSyncedTimer);
            (*(v75 + 56))(v77, 0, 1, v74);
            v15 = v145;
          }

          else
          {
            v105 = type metadata accessor for DTSyncedTimer(0);
            (*(*(v105 - 8) + 56))(v146, 1, 1, v105);
          }

          v66 = v142;
        }

        else
        {
          v94 = type metadata accessor for DTSyncedTimer(0);
          (*(*(v94 - 8) + 56))(v146, 1, 1, v94);
        }

        v150 = v30;
        swift_endAccess();
        if (qword_27EED82D0 != -1)
        {
          swift_once();
        }

        v106 = sub_24910C89C();
        __swift_project_value_buffer(v106, qword_27EED82D8);
        sub_2490A4674(v146, v66, &qword_27EED7638, &qword_24910EB48);

        v107 = sub_24910C87C();
        v108 = sub_24910CF5C();

        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v135 = swift_slowAlloc();
          v155[0] = v135;
          *v109 = v143;
          *(v109 + 4) = sub_24909F930(v154, v50, v155);
          *(v109 + 12) = 2080;
          v110 = v133;
          sub_2490A4674(v66, v133, &qword_27EED7638, &qword_24910EB48);
          v111 = type metadata accessor for DTSyncedTimer(0);
          if ((*(*(v111 - 8) + 48))(v110, 1, v111) == 1)
          {
            sub_2490A487C(v110, &qword_27EED7638, &qword_24910EB48);
            v112 = 0xE300000000000000;
            v113 = 7104878;
          }

          else
          {
            v114 = v110;
            v113 = DTSyncedTimer.description.getter();
            v112 = v115;
            v116 = v114;
            v15 = v145;
            sub_2490A4414(v116, type metadata accessor for DTSyncedTimer);
          }

          sub_2490A487C(v142, &qword_27EED7638, &qword_24910EB48);
          v117 = sub_24909F930(v113, v112, v155);

          *(v109 + 14) = v117;
          _os_log_impl(&dword_249083000, v107, v108, "Server deletion: timer, id=%s, existing=%s", v109, 0x16u);
          v118 = v135;
          swift_arrayDestroy();
          MEMORY[0x24C1F26F0](v118, -1, -1);
          MEMORY[0x24C1F26F0](v109, -1, -1);
        }

        else
        {

          sub_2490A487C(v66, &qword_27EED7638, &qword_24910EB48);
        }

        v119 = type metadata accessor for DTSyncedTimer(0);
        v120 = (*(*(v119 - 8) + 48))(v146, 1, v119);
        v30 = v150;
        if (v120 != 1)
        {
          swift_beginAccess();
          v121 = v134;
          sub_2490A0C1C(v154, v50, type metadata accessor for DTSyncedTimer, type metadata accessor for DTSyncedTimer, type metadata accessor for DTSyncedTimer, sub_2490A23F4, v134);
          sub_2490A487C(v121, &qword_27EED7638, &qword_24910EB48);
          swift_endAccess();
          v144 = 1;
        }

        v122 = v136;
        sub_24910C27C();

        v123 = v148;
        if ((*v147)(v122, 1, v148) == 1)
        {
          sub_2490A487C(v146, &qword_27EED7638, &qword_24910EB48);
          v41 = v122;
          v42 = &qword_27EED7900;
          v43 = &qword_24910EB50;
        }

        else
        {
          v124 = v132;
          (*v141)(v132, v122, v123);
          v125 = [objc_allocWithZone(MEMORY[0x277D29740]) init];
          v126 = objc_allocWithZone(MEMORY[0x277D29730]);
          v127 = sub_24910C2AC();
          v128 = [v126 initWithIdentifier_];

          v129 = [v125 removeTimer_];
          (*v140)(v124, v123);
          v41 = v146;
          v42 = &qword_27EED7638;
          v43 = &qword_24910EB48;
        }
      }

      sub_2490A487C(v41, v42, v43);
LABEL_5:
      v33 += v149;
      if (!--v30)
      {
        return v144 & 1;
      }
    }
  }

  v144 = 0;
  return v144 & 1;
}

uint64_t sub_249099438(uint64_t a1, uint64_t a2, CKRecord a3)
{
  v7 = sub_24910C26C();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DTSyncedAlarm(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v72 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7640, &qword_24910EB58);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v71 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v64 - v20;
  MEMORY[0x28223BE20](v19);
  v77 = &v64 - v22;
  v23 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
  swift_beginAccess();
  v73 = v3;
  v70 = v23;
  v24 = *(v3 + v23);
  v25 = *(v24 + 16);
  v76 = a2;
  if (v25 && (v26 = sub_2490A0A3C(a1, a2), (v27 & 1) != 0))
  {
    v28 = v77;
    sub_2490A3010(*(v24 + 56) + v11[9] * v26, v77, type metadata accessor for DTSyncedAlarm);
    v29 = 0;
  }

  else
  {
    v29 = 1;
    v28 = v77;
  }

  v68 = v11[7];
  v69 = v11 + 7;
  v68(v28, v29, 1, v10);
  swift_endAccess();
  sub_2490A4674(v28, v21, &qword_27EED7640, &qword_24910EB58);
  v30 = v11[6];
  v31 = v30(v21, 1, v10);
  v74 = a1;
  if (v31 == 1)
  {
    isa = a3.super.isa;
    v32 = a1;
    v33 = v76;

    v34 = default argument 1 of DTSyncedAlarm.init(id:hour:minute:modificationDate:)();
    v35 = v10;
    v36 = default argument 2 of DTSyncedAlarm.init(id:hour:minute:modificationDate:)();
    default argument 3 of DTSyncedAlarm.init(id:hour:minute:modificationDate:)();
    v37 = v32;
    a3.super.isa = isa;
    v38 = v36;
    v10 = v35;
    v28 = v77;
    DTSyncedAlarm.init(id:hour:minute:modificationDate:)(v37, v33, v34, v38, v9, v15);
    if (v30(v21, 1, v35) != 1)
    {
      sub_2490A487C(v21, &qword_27EED7640, &qword_24910EB58);
    }
  }

  else
  {
    sub_2490A43AC(v21, v15, type metadata accessor for DTSyncedAlarm);
  }

  LODWORD(isa) = DTSyncedAlarm.mergeFromServerRecord(_:)(a3);
  if (isa)
  {
    v67 = v15;
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v65 = v30;
    v39 = sub_24910C89C();
    v66 = __swift_project_value_buffer(v39, qword_27EED82D8);
    v40 = sub_24910C87C();
    v41 = sub_24910CF5C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = a3.super.isa;
      v44 = v10;
      v45 = swift_slowAlloc();
      v78[0] = v45;
      *v42 = 136315138;
      v15 = v67;
      swift_beginAccess();
      sub_2490A2FC8(&unk_27EED7950, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
      v46 = sub_24910D50C();
      v48 = sub_24909F930(v46, v47, v78);

      *(v42 + 4) = v48;
      _os_log_impl(&dword_249083000, v40, v41, "Server modification: alarm newer, %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      v49 = v45;
      v10 = v44;
      a3.super.isa = v43;
      MEMORY[0x24C1F26F0](v49, -1, -1);
      MEMORY[0x24C1F26F0](v42, -1, -1);
    }

    else
    {

      v15 = v67;
    }

    v56 = v74;
    swift_beginAccess();
    sub_2490A2FC8(&qword_27EED7618, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
    DTSyncedObject.setLastKnownRecordIfNewer(_:)(a3);
    swift_endAccess();
    v57 = v71;
    sub_2490A3010(v15, v71, type metadata accessor for DTSyncedAlarm);
    v68(v57, 0, 1, v10);
    swift_beginAccess();
    v58 = v76;

    sub_249092C1C(v57, v56, v58);
    swift_endAccess();
    v59 = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
    sub_2490A4744(0, &qword_27EED7658, 0x277D296F0);
    v60 = v72;
    sub_2490A3010(v15, v72, type metadata accessor for DTSyncedAlarm);
    v61 = MTMutableAlarm.init(_:)(v60);
    if (v65(v77, 1, v10) == 1)
    {
      v62 = [v59 addAlarm_];
    }

    else
    {
      v62 = [v59 updateAlarm_];
    }

    v28 = v77;
  }

  else
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v50 = sub_24910C89C();
    __swift_project_value_buffer(v50, qword_27EED82D8);
    v51 = v76;

    v52 = sub_24910C87C();
    v53 = sub_24910CF5C();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v78[0] = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_24909F930(v74, v51, v78);
      _os_log_impl(&dword_249083000, v52, v53, "Server modification: alarm older, id=%s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x24C1F26F0](v55, -1, -1);
      MEMORY[0x24C1F26F0](v54, -1, -1);
    }
  }

  sub_2490A487C(v28, &qword_27EED7640, &qword_24910EB58);
  sub_2490A4414(v15, type metadata accessor for DTSyncedAlarm);
  return isa & 1;
}

uint64_t sub_249099DC8(uint64_t a1, uint64_t a2, objc_class *a3)
{
  v73.super.isa = a3;
  v6 = sub_24910C26C();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DTSyncedTimer(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v72 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7638, &qword_24910EB48);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v71 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v62 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v62 - v21;
  v23 = v3 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
  swift_beginAccess();
  v69 = v23;
  v24 = *(v23 + 8);
  v70 = v23 + 8;
  if (*(v24 + 16) && (v25 = sub_2490A0A3C(a1, a2), (v26 & 1) != 0))
  {
    sub_2490A3010(*(v24 + 56) + v10[9] * v25, v22, type metadata accessor for DTSyncedTimer);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v68 = v10[7];
  v68(v22, v27, 1, v9);
  swift_endAccess();
  sub_2490A4674(v22, v20, &qword_27EED7638, &qword_24910EB48);
  v30 = v10[6];
  v29 = v10 + 6;
  v28 = v30;
  v31 = v30(v20, 1, v9);
  v67 = v30;
  if (v31 == 1)
  {

    v32 = default argument 1 of DTSyncedTimer.init(id:duration:modificationDate:)();
    default argument 2 of DTSyncedTimer.init(id:duration:modificationDate:)();
    DTSyncedTimer.init(id:duration:modificationDate:)(a1, a2, v8, v14, v32);
    if (v28(v20, 1, v9) != 1)
    {
      sub_2490A487C(v20, &qword_27EED7638, &qword_24910EB48);
    }
  }

  else
  {
    sub_2490A43AC(v20, v14, type metadata accessor for DTSyncedTimer);
  }

  LODWORD(v33) = DTSyncedTimer.mergeFromServerRecord(_:)(v73);
  if (v33)
  {
    v66 = v29;
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v34 = sub_24910C89C();
    v64 = __swift_project_value_buffer(v34, qword_27EED82D8);
    v35 = sub_24910C87C();
    v36 = sub_24910CF5C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v65 = v33;
      v38 = v37;
      v62 = v37;
      v63 = swift_slowAlloc();
      v74[0] = v63;
      *v38 = 136315138;
      swift_beginAccess();
      sub_2490A2FC8(&qword_27EED75C0, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
      v39 = sub_24910D50C();
      v33 = v9;
      v41 = a1;
      v42 = a2;
      v43 = v22;
      v44 = v14;
      v45 = sub_24909F930(v39, v40, v74);

      v46 = v62;
      *(v62 + 4) = v45;
      v14 = v44;
      v22 = v43;
      a2 = v42;
      a1 = v41;
      v9 = v33;
      _os_log_impl(&dword_249083000, v35, v36, "Server modification: timer newer, %s", v46, 0xCu);
      v47 = v63;
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x24C1F26F0](v47, -1, -1);
      LOBYTE(v33) = v65;
      MEMORY[0x24C1F26F0](v46, -1, -1);
    }

    swift_beginAccess();
    sub_2490A2FC8(&qword_27EED7608, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
    DTSyncedObject.setLastKnownRecordIfNewer(_:)(v73);
    swift_endAccess();
    v48 = v71;
    sub_2490A3010(v14, v71, type metadata accessor for DTSyncedTimer);
    v68(v48, 0, 1, v9);
    swift_beginAccess();

    sub_249092E30(v48, a1, a2);
    swift_endAccess();
    v73.super.isa = [objc_allocWithZone(MEMORY[0x277D29740]) init];
    sub_2490A4744(0, &qword_27EED7660, 0x277D29700);
    v49 = v72;
    sub_2490A3010(v14, v72, type metadata accessor for DTSyncedTimer);
    v57 = MTMutableTimer.init(_:)(v49);
    v58 = v67(v22, 1, v9);
    isa = v73.super.isa;
    if (v58 == 1)
    {
      v60 = [(objc_class *)v73.super.isa addTimer:v57];
    }

    else
    {
      v60 = [(objc_class *)v73.super.isa updateTimer:v57];
    }
  }

  else
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v50 = sub_24910C89C();
    __swift_project_value_buffer(v50, qword_27EED82D8);

    v51 = sub_24910C87C();
    v52 = sub_24910CF5C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = a2;
      v56 = v54;
      v74[0] = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_24909F930(a1, v55, v74);
      _os_log_impl(&dword_249083000, v51, v52, "Server modification: timer older, id=%s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x24C1F26F0](v56, -1, -1);
      MEMORY[0x24C1F26F0](v53, -1, -1);
    }
  }

  sub_2490A487C(v22, &qword_27EED7638, &qword_24910EB48);
  sub_2490A4414(v14, type metadata accessor for DTSyncedTimer);
  return v33 & 1;
}

uint64_t sub_24909A748(unint64_t a1)
{
  v3 = type metadata accessor for DTSyncedTimer(0);
  v91[0] = *(v3 - 8);
  v91[1] = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v93 = v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v92 = v91 - v6;
  v7 = type metadata accessor for DTSyncedAlarm(0);
  v94 = *(v7 - 8);
  v95 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v99 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v98 = v91 - v11;
  if (a1 >> 62)
  {
LABEL_65:
    v12 = sub_24910D19C();
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_66:
    v96 = 0;
    return v96 & 1;
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_66;
  }

LABEL_3:
  v13 = 0;
  v96 = 0;
  v104 = (v1 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData);
  v103 = a1 & 0xC000000000000001;
  v97 = a1 & 0xFFFFFFFFFFFFFF8;
  *&v10 = 136315394;
  v100 = v10;
  v101 = a1;
  v102 = v12;
  while (1)
  {
    if (v103)
    {
      v14 = MEMORY[0x24C1F1C90](v13, a1);
    }

    else
    {
      if (v13 >= *(v97 + 16))
      {
        goto LABEL_61;
      }

      v14 = *(a1 + 8 * v13 + 32);
    }

    v15 = v14;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v105 = v13 + 1;
    v16 = sub_24910D0FC();
    v18 = v17;
    v19 = [v15 recordID];
    v20 = [v19 recordName];

    v21 = sub_24910CC9C();
    v23 = v22;

    v24 = sub_2490A86B8();
    if ((v16 != *v24 || v18 != *(v24 + 1)) && (sub_24910D54C() & 1) == 0)
    {
      break;
    }

    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v25 = sub_24910C89C();
    __swift_project_value_buffer(v25, qword_27EED82D8);

    v26 = sub_24910C87C();
    v27 = sub_24910CF5C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v107[0] = v29;
      *v28 = v100;
      v30 = sub_24909F930(v16, v18, v107);

      *(v28 + 4) = v30;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_24909F930(v21, v23, v107);
      _os_log_impl(&dword_249083000, v26, v27, "Server saved: type=%s, id=%s", v28, 0x16u);
      swift_arrayDestroy();
      v31 = v29;
      a1 = v101;
      MEMORY[0x24C1F26F0](v31, -1, -1);
      v32 = v28;
      v12 = v102;
      MEMORY[0x24C1F26F0](v32, -1, -1);
    }

    else
    {
    }

    v33 = v104;
    swift_beginAccess();
    v1 = *v33;
    if (*(*v33 + 16))
    {
      v34 = sub_2490A0A3C(v21, v23);
      if (v35)
      {
        a1 = *(v94 + 72);
        v36 = *(v1 + 56) + a1 * v34;
        v37 = v98;
        sub_2490A3010(v36, v98, type metadata accessor for DTSyncedAlarm);
        swift_endAccess();
        sub_2490A2FC8(&qword_27EED7618, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
        DTSyncedObject.setLastKnownRecordIfNewer(_:)(v15);
        v38 = v104;
        swift_beginAccess();
        sub_2490A3010(v37, v99, type metadata accessor for DTSyncedAlarm);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v106 = *v38;
        v1 = v106;
        *v38 = 0x8000000000000000;
        v40 = sub_2490A0A3C(v21, v23);
        v42 = *(v1 + 16);
        v43 = (v41 & 1) == 0;
        v44 = __OFADD__(v42, v43);
        v45 = v42 + v43;
        if (v44)
        {
          goto LABEL_62;
        }

        v46 = v41;
        if (*(v1 + 24) >= v45)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v1 = &v106;
            v80 = v40;
            sub_2490A219C();
            v40 = v80;
            v12 = v102;
            if (v46)
            {
              goto LABEL_34;
            }

            goto LABEL_52;
          }
        }

        else
        {
          sub_2490A0DA0(v45, isUniquelyReferenced_nonNull_native);
          v1 = v106;
          v40 = sub_2490A0A3C(v21, v23);
          if ((v46 & 1) != (v47 & 1))
          {
            goto LABEL_69;
          }
        }

        v12 = v102;
        if (v46)
        {
LABEL_34:
          v1 = v40;

          v57 = v106;
          sub_2490A4480(v99, v106[7].isa + v1 * a1, type metadata accessor for DTSyncedAlarm);
LABEL_54:
          *v104 = v57;

          swift_endAccess();

          v84 = type metadata accessor for DTSyncedAlarm;
          v85 = v98;
          goto LABEL_55;
        }

LABEL_52:
        v57 = v106;
        v106[(v40 >> 6) + 8].isa = (v106[(v40 >> 6) + 8].isa | (1 << v40));
        v81 = (v57[6].isa + 16 * v40);
        *v81 = v21;
        v81[1] = v23;
        sub_2490A43AC(v99, v57[7].isa + v40 * a1, type metadata accessor for DTSyncedAlarm);
        isa = v57[2].isa;
        v44 = __OFADD__(isa, 1);
        v83 = (isa + 1);
        if (v44)
        {
          goto LABEL_63;
        }

        v57[2].isa = v83;
        goto LABEL_54;
      }
    }

LABEL_4:
    swift_endAccess();

LABEL_5:
    ++v13;
    if (v105 == v12)
    {
      return v96 & 1;
    }
  }

  v48 = sub_2490AF22C();
  if ((v16 != *v48 || v18 != *(v48 + 1)) && (sub_24910D54C() & 1) == 0)
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v72 = sub_24910C89C();
    __swift_project_value_buffer(v72, qword_27EED82D8);

    v1 = sub_24910C87C();
    v73 = sub_24910CF5C();

    if (os_log_type_enabled(v1, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v107[0] = v75;
      *v74 = v100;
      v76 = sub_24909F930(v16, v18, v107);

      *(v74 + 4) = v76;
      *(v74 + 12) = 2080;
      v77 = sub_24909F930(v21, v23, v107);

      *(v74 + 14) = v77;
      _os_log_impl(&dword_249083000, v1, v73, "Server saved: unsupported, type=%s, id=%s", v74, 0x16u);
      swift_arrayDestroy();
      v78 = v75;
      a1 = v101;
      MEMORY[0x24C1F26F0](v78, -1, -1);
      MEMORY[0x24C1F26F0](v74, -1, -1);
    }

    else
    {
    }

    v12 = v102;
    goto LABEL_5;
  }

  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v49 = sub_24910C89C();
  __swift_project_value_buffer(v49, qword_27EED82D8);

  v50 = sub_24910C87C();
  v51 = sub_24910CF5C();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v107[0] = v53;
    *v52 = v100;
    v54 = sub_24909F930(v16, v18, v107);

    *(v52 + 4) = v54;
    *(v52 + 12) = 2080;
    *(v52 + 14) = sub_24909F930(v21, v23, v107);
    _os_log_impl(&dword_249083000, v50, v51, "Server saved: type=%s, id=%s", v52, 0x16u);
    swift_arrayDestroy();
    v55 = v53;
    a1 = v101;
    MEMORY[0x24C1F26F0](v55, -1, -1);
    v56 = v52;
    v12 = v102;
    MEMORY[0x24C1F26F0](v56, -1, -1);
  }

  else
  {
  }

  v58 = v104;
  swift_beginAccess();
  v1 = v58[1];
  if (!*(v1 + 16))
  {
    goto LABEL_4;
  }

  v59 = sub_2490A0A3C(v21, v23);
  if ((v60 & 1) == 0)
  {
    goto LABEL_4;
  }

  a1 = *(v91[0] + 72);
  v61 = *(v1 + 56) + a1 * v59;
  v62 = v92;
  sub_2490A3010(v61, v92, type metadata accessor for DTSyncedTimer);
  swift_endAccess();
  sub_2490A2FC8(&qword_27EED7608, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
  DTSyncedObject.setLastKnownRecordIfNewer(_:)(v15);
  v63 = v104;
  swift_beginAccess();
  sub_2490A3010(v62, v93, type metadata accessor for DTSyncedTimer);
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v106 = v63[1];
  v1 = v106;
  v63[1] = 0x8000000000000000;
  v65 = sub_2490A0A3C(v21, v23);
  v67 = *(v1 + 16);
  v68 = (v66 & 1) == 0;
  v44 = __OFADD__(v67, v68);
  v69 = v67 + v68;
  if (v44)
  {
    goto LABEL_64;
  }

  v70 = v66;
  if (*(v1 + 24) >= v69)
  {
    if (v64)
    {
      goto LABEL_49;
    }

    v1 = &v106;
    v86 = v65;
    sub_2490A23F4();
    v65 = v86;
    v12 = v102;
    if ((v70 & 1) == 0)
    {
      goto LABEL_57;
    }

LABEL_50:
    v1 = v65;

    v79 = v106;
    sub_2490A4480(v93, v106[7].isa + v1 * a1, type metadata accessor for DTSyncedTimer);
LABEL_59:
    v104[1] = v79;

    swift_endAccess();

    v84 = type metadata accessor for DTSyncedTimer;
    v85 = v92;
LABEL_55:
    sub_2490A4414(v85, v84);
    v96 = 1;
    a1 = v101;
    goto LABEL_5;
  }

  sub_2490A1118(v69, v64);
  v1 = v106;
  v65 = sub_2490A0A3C(v21, v23);
  if ((v70 & 1) != (v71 & 1))
  {
    goto LABEL_69;
  }

LABEL_49:
  v12 = v102;
  if (v70)
  {
    goto LABEL_50;
  }

LABEL_57:
  v79 = v106;
  v106[(v65 >> 6) + 8].isa = (v106[(v65 >> 6) + 8].isa | (1 << v65));
  v87 = (v79[6].isa + 16 * v65);
  *v87 = v21;
  v87[1] = v23;
  sub_2490A43AC(v93, v79[7].isa + v65 * a1, type metadata accessor for DTSyncedTimer);
  v88 = v79[2].isa;
  v44 = __OFADD__(v88, 1);
  v89 = (v88 + 1);
  if (!v44)
  {
    v79[2].isa = v89;
    goto LABEL_59;
  }

  __break(1u);
LABEL_69:
  result = sub_24910D57C();
  __break(1u);
  return result;
}

uint64_t sub_24909B378(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7638, &qword_24910EB48);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v124 - v4;
  v138 = type metadata accessor for DTSyncedTimer(0);
  v133 = *(v138 - 8);
  v6 = MEMORY[0x28223BE20](v138);
  v8 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v142 = &v124 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v124 - v14;
  v16 = sub_24910C2FC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v125 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v126 = &v124 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7640, &qword_24910EB58);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v124 - v22;
  v143 = type metadata accessor for DTSyncedAlarm(0);
  v139 = *(v143 - 8);
  v24 = MEMORY[0x28223BE20](v143);
  v137 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v124 - v27;
  v150 = a1;
  if (a1 >> 62)
  {
    result = sub_24910D19C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_48:
    LOBYTE(v30) = 0;
    return v30 & 1;
  }

  result = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_48;
  }

LABEL_3:
  v147 = result;
  if (result >= 1)
  {
    v135 = v23;
    v146 = v16;
    v136 = v15;
    v128 = v13;
    v129 = v8;
    v130 = v5;
    v30 = 0;
    v31 = 0;
    v32 = (v1 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData);
    v148 = v150 & 0xC000000000000001;
    v134 = (v139 + 56);
    v145 = (v17 + 48);
    v132 = (v17 + 32);
    v131 = (v17 + 8);
    v127 = (v133 + 56);
    *&v26 = 136315138;
    v144 = v26;
    v140 = v28;
    v33 = v147;
    v151 = (v1 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData);
    while (1)
    {
      if (v148)
      {
        v43 = MEMORY[0x24C1F1C90](v31, v150);
      }

      else
      {
        v43 = *(v150 + 8 * v31 + 32);
      }

      v44 = v43;
      v45 = [v43 recordName];
      v46 = sub_24910CC9C();
      v48 = v47;

      swift_beginAccess();
      v49 = *v32;
      if (*(*v32 + 16) && (v50 = sub_2490A0A3C(v46, v48), (v51 & 1) != 0))
      {
        v52 = *(v49 + 56);
        v141 = *(v139 + 72);
        sub_2490A3010(v52 + v141 * v50, v28, type metadata accessor for DTSyncedAlarm);
        swift_endAccess();
        v53 = v137;
        if (qword_27EED82D0 != -1)
        {
          swift_once();
        }

        v149 = v44;
        v54 = sub_24910C89C();
        __swift_project_value_buffer(v54, qword_27EED82D8);
        sub_2490A3010(v28, v53, type metadata accessor for DTSyncedAlarm);
        v55 = sub_24910C87C();
        v56 = sub_24910CF5C();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = v53;
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v153[0] = v59;
          *v58 = v144;
          sub_2490A2FC8(&unk_27EED7950, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
          v60 = sub_24910D50C();
          v62 = v61;
          v63 = v57;
          v28 = v140;
          sub_2490A4414(v63, type metadata accessor for DTSyncedAlarm);
          v64 = sub_24909F930(v60, v62, v153);

          *(v58 + 4) = v64;
          _os_log_impl(&dword_249083000, v55, v56, "Server deletion extant: alarm=%s", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v59);
          MEMORY[0x24C1F26F0](v59, -1, -1);
          MEMORY[0x24C1F26F0](v58, -1, -1);
        }

        else
        {

          sub_2490A4414(v53, type metadata accessor for DTSyncedAlarm);
        }

        v92 = v136;
        v93 = v146;
        v94 = v135;
        v95 = v151;
        swift_beginAccess();
        v96 = sub_2490A0A3C(v46, v48);
        if (v97)
        {
          v98 = v96;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v100 = *v95;
          v152 = *v95;
          *v95 = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_2490A219C();
            v100 = v152;
          }

          sub_2490A43AC(*(v100 + 56) + v98 * v141, v94, type metadata accessor for DTSyncedAlarm);
          sub_2490A17E4(v98, v100, type metadata accessor for DTSyncedAlarm);
          v101 = 0;
          *v95 = v100;
        }

        else
        {
          v101 = 1;
        }

        (*v134)(v94, v101, 1, v143);
        sub_2490A487C(v94, &qword_27EED7640, &qword_24910EB58);
        swift_endAccess();
        sub_24910C27C();

        v102 = (*v145)(v92, 1, v93);
        v103 = v149;
        if (v102 == 1)
        {
          sub_2490A4414(v28, type metadata accessor for DTSyncedAlarm);

          v104 = v92;
LABEL_45:
          sub_2490A487C(v104, &qword_27EED7900, &qword_24910EB50);
          goto LABEL_7;
        }

        v34 = v126;
        (*v132)(v126, v92, v93);
        v35 = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
        v36 = objc_allocWithZone(MEMORY[0x277D296D0]);
        v37 = sub_24910C2AC();
        v38 = [v36 initWithIdentifier_];

        v39 = v38;
        v40 = [v35 removeAlarm_];

        (*v131)(v34, v93);
        v41 = type metadata accessor for DTSyncedAlarm;
        v42 = v28;
      }

      else
      {
        swift_endAccess();
        swift_beginAccess();
        v65 = v32[1];
        if (!*(v65 + 16) || (v66 = sub_2490A0A3C(v46, v48), (v67 & 1) == 0))
        {
          swift_endAccess();
          if (qword_27EED82D0 != -1)
          {
            swift_once();
          }

          v80 = sub_24910C89C();
          __swift_project_value_buffer(v80, qword_27EED82D8);

          v81 = sub_24910C87C();
          v82 = sub_24910CF3C();

          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v85 = v46;
            v86 = v30;
            v87 = v28;
            v88 = v44;
            v89 = v84;
            v153[0] = v84;
            *v83 = v144;
            v90 = sub_24909F930(v85, v48, v153);

            *(v83 + 4) = v90;
            v32 = v151;
            _os_log_impl(&dword_249083000, v81, v82, "Server deletion gone: id=%s", v83, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v89);
            MEMORY[0x24C1F26F0](v89, -1, -1);
            v91 = v83;
            v33 = v147;
            MEMORY[0x24C1F26F0](v91, -1, -1);

            v28 = v87;
            v30 = v86;
          }

          else
          {
          }

          goto LABEL_8;
        }

        v68 = *(v65 + 56);
        v141 = *(v133 + 72);
        v69 = v142;
        sub_2490A3010(v68 + v141 * v66, v142, type metadata accessor for DTSyncedTimer);
        swift_endAccess();
        if (qword_27EED82D0 != -1)
        {
          swift_once();
        }

        v149 = v44;
        v70 = sub_24910C89C();
        __swift_project_value_buffer(v70, qword_27EED82D8);
        v71 = v129;
        sub_2490A3010(v69, v129, type metadata accessor for DTSyncedTimer);
        v72 = sub_24910C87C();
        v73 = sub_24910CF5C();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v153[0] = v75;
          *v74 = v144;
          sub_2490A2FC8(&qword_27EED75C0, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
          v76 = sub_24910D50C();
          v78 = v77;
          sub_2490A4414(v71, type metadata accessor for DTSyncedTimer);
          v79 = sub_24909F930(v76, v78, v153);

          *(v74 + 4) = v79;
          _os_log_impl(&dword_249083000, v72, v73, "Server deletion: extant, timer=%s", v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v75);
          MEMORY[0x24C1F26F0](v75, -1, -1);
          MEMORY[0x24C1F26F0](v74, -1, -1);
        }

        else
        {

          sub_2490A4414(v71, type metadata accessor for DTSyncedTimer);
        }

        v105 = v130;
        v106 = v128;
        v107 = v146;
        v108 = v151;
        swift_beginAccess();
        v109 = sub_2490A0A3C(v46, v48);
        v28 = v140;
        if (v110)
        {
          v111 = v109;
          v112 = swift_isUniquelyReferenced_nonNull_native();
          v113 = v108[1];
          v152 = v113;
          if (!v112)
          {
            sub_2490A23F4();
            v113 = v152;
          }

          sub_2490A43AC(*(v113 + 56) + v111 * v141, v105, type metadata accessor for DTSyncedTimer);
          sub_2490A17E4(v111, v113, type metadata accessor for DTSyncedTimer);
          v114 = 0;
          v108[1] = v113;
        }

        else
        {
          v114 = 1;
        }

        (*v127)(v105, v114, 1, v138);
        sub_2490A487C(v105, &qword_27EED7638, &qword_24910EB48);
        swift_endAccess();
        sub_24910C27C();

        v115 = (*v145)(v106, 1, v107);
        v116 = v149;
        if (v115 == 1)
        {
          sub_2490A4414(v142, type metadata accessor for DTSyncedTimer);

          v104 = v106;
          goto LABEL_45;
        }

        v117 = v125;
        (*v132)(v125, v106, v107);
        v118 = [objc_allocWithZone(MEMORY[0x277D29740]) init];
        v119 = objc_allocWithZone(MEMORY[0x277D29730]);
        v120 = sub_24910C2AC();
        v121 = [v119 initWithIdentifier_];

        v122 = v121;
        v123 = [v118 removeTimer_];

        (*v131)(v117, v107);
        v41 = type metadata accessor for DTSyncedTimer;
        v42 = v142;
      }

      sub_2490A4414(v42, v41);
LABEL_7:
      v30 = 1;
      v33 = v147;
      v32 = v151;
LABEL_8:
      if (v33 == ++v31)
      {
        return v30 & 1;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24909C2CC(uint64_t a1)
{
  v3 = type metadata accessor for DTSyncedTimer(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v133 = &v130 - v8;
  v137 = type metadata accessor for DTSyncedAlarm(0);
  v136 = *(v137 - 8);
  v9 = MEMORY[0x28223BE20](v137);
  v135 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v134 = &v130 - v11;
  v148 = sub_24910C97C();
  v12 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v147 = (&v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v157 = sub_24910C99C();
  v14 = MEMORY[0x28223BE20](v157);
  v146 = (&v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v145 = (&v130 - v17);
  MEMORY[0x28223BE20](v16);
  v138 = &v130 - v19;
  v20 = *(a1 + 16);
  v153 = v1;
  if (v20)
  {
    v130 = v7;
    v131 = v4;
    v132 = v3;
    v139 = (v1 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData);
    v21 = v18;
    v22 = sub_24910CA1C();
    v154 = 0;
    v23 = *(v22 - 8);
    v24 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v151 = (v21 + 104);
    v152 = v21;
    v150 = v21 + 32;
    v25 = *(v23 + 72);
    v142 = (v12 + 104);
    v143 = v12;
    v141 = v12 + 32;
    v26 = MEMORY[0x277D84F90];
    v27 = 0x278F87000uLL;
    v149 = *MEMORY[0x277CBBC68];
    v140 = *MEMORY[0x277CBBC50];
    *&v28 = 136315394;
    v144 = v28;
    *&v28 = 136315650;
    v155 = v28;
    v156 = MEMORY[0x277D84F90];
    v158 = v25;
    while (1)
    {
      v30 = MEMORY[0x24C1F1430]();
      v162 = sub_24910D0FC();
      v163 = v30;
      v32 = v31;
      v33 = [v30 *(v27 + 2776)];
      v34 = [v33 recordName];

      v161 = sub_24910CC9C();
      v36 = v35;

      v37 = sub_24910C9FC();
      v164[0] = v37;
      type metadata accessor for CKError(0);
      sub_2490A2FC8(&qword_27EED7678, type metadata accessor for CKError, &unk_24910ED60);
      sub_24910C0DC();
      if (v166 > 13)
      {
        if (v166 > 22)
        {
          if (v166 != 23)
          {
            if (v166 != 26)
            {
              goto LABEL_56;
            }

            if (qword_27EED82D0 != -1)
            {
              swift_once();
            }

            v38 = sub_24910C89C();
            __swift_project_value_buffer(v38, qword_27EED82D8);

            v39 = sub_24910C87C();
            v40 = sub_24910CF5C();

            if (os_log_type_enabled(v39, v40))
            {
              v41 = swift_slowAlloc();
              v160 = v26;
              v42 = v41;
              v43 = swift_slowAlloc();
              v165 = v43;
              *v42 = v144;
              *(v42 + 4) = sub_24909F930(v162, v32, &v165);
              *(v42 + 12) = 2080;
              v26 = v160;
              *(v42 + 14) = sub_24909F930(v161, v36, &v165);
              _os_log_impl(&dword_249083000, v39, v40, "Server save failed: zone not found, type=%s, id=%s", v42, 0x16u);
              swift_arrayDestroy();
              v44 = v43;
              v27 = 0x278F87000uLL;
              MEMORY[0x24C1F26F0](v44, -1, -1);
              MEMORY[0x24C1F26F0](v42, -1, -1);
            }

            v45 = [v163 *(v27 + 2776)];
            v46 = [v45 zoneID];

            v47 = [objc_allocWithZone(MEMORY[0x277CBC5E8]) initWithZoneID_];
            *v147 = v47;
            (*v142)();
            v48 = v47;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v49 = v156;
            }

            else
            {
              v49 = sub_24909F754(0, v156[2] + 1, 1, v156, &qword_27EED7630, &qword_24910EB40, MEMORY[0x277CBBC58]);
            }

            v51 = v49[2];
            v50 = v49[3];
            if (v51 >= v50 >> 1)
            {
              v49 = sub_24909F754((v50 > 1), v51 + 1, 1, v49, &qword_27EED7630, &qword_24910EB40, MEMORY[0x277CBBC58]);
            }

            v49[2] = v51 + 1;
            v52 = (*(v143 + 80) + 32) & ~*(v143 + 80);
            v156 = v49;
            (*(v143 + 32))(v49 + v52 + *(v143 + 72) * v51, v147, v148);
            v53 = [v163 *(v27 + 2776)];
            v54 = v145;
            *v145 = v53;
            (*v151)(v54, v149, v157);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = sub_24909F754(0, v26[2] + 1, 1, v26, &qword_27EED7600, &qword_24910EB38, MEMORY[0x277CBBC78]);
            }

            v56 = v26[2];
            v55 = v26[3];
            if (v56 >= v55 >> 1)
            {
              v26 = sub_24909F754((v55 > 1), v56 + 1, 1, v26, &qword_27EED7600, &qword_24910EB38, MEMORY[0x277CBBC78]);
            }

            v26[2] = v56 + 1;
            (*(v152 + 32))(v26 + ((*(v152 + 80) + 32) & ~*(v152 + 80)) + *(v152 + 72) * v56, v145, v157);
            v57 = sub_2490A86B8();
            if (v162 == *v57 && v32 == *(v57 + 1) || (sub_24910D54C() & 1) != 0)
            {

              v58 = v139;
              swift_beginAccess();
              v59 = *v58;
              if (!*(*v58 + 16))
              {
                goto LABEL_78;
              }

              v60 = sub_2490A0A3C(v161, v36);
              if ((v61 & 1) == 0)
              {
                goto LABEL_78;
              }

              v62 = v135;
              sub_2490A3010(*(v59 + 56) + *(v136 + 72) * v60, v135, type metadata accessor for DTSyncedAlarm);
              v63 = v134;
              sub_2490A43AC(v62, v134, type metadata accessor for DTSyncedAlarm);
              swift_endAccess();

              v64 = sub_2490A2FC8(&qword_27EED7618, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
              DTSyncedObject.lastKnownRecord.setter(0, v137, v64);

              v65 = type metadata accessor for DTSyncedAlarm;
              goto LABEL_35;
            }

            v116 = sub_2490AF22C();
            if (v162 == *v116 && v32 == *(v116 + 1))
            {

LABEL_75:
              v121 = v139;
              swift_beginAccess();
              v122 = v121[1];
              if (!*(v122 + 16) || (v123 = sub_2490A0A3C(v161, v36), (v124 & 1) == 0))
              {
LABEL_78:
                swift_endAccess();

                goto LABEL_4;
              }

              v125 = v130;
              sub_2490A3010(*(v122 + 56) + *(v131 + 72) * v123, v130, type metadata accessor for DTSyncedTimer);
              v63 = v133;
              sub_2490A43AC(v125, v133, type metadata accessor for DTSyncedTimer);
              swift_endAccess();

              v126 = sub_2490A2FC8(&qword_27EED7608, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
              DTSyncedObject.lastKnownRecord.setter(0, v132, v126);

              v65 = type metadata accessor for DTSyncedTimer;
LABEL_35:
              sub_2490A4414(v63, v65);
LABEL_73:
              v154 = 1;
              goto LABEL_4;
            }

            v120 = sub_24910D54C();

            if (v120)
            {
              goto LABEL_75;
            }

            goto LABEL_62;
          }
        }

        else
        {
          if (v166 == 14)
          {
            if (sub_24909D9A0(v162, v32, v161, v36, v37))
            {
              if (qword_27EED82D0 != -1)
              {
                swift_once();
              }

              v94 = sub_24910C89C();
              __swift_project_value_buffer(v94, qword_27EED82D8);

              v95 = sub_24910C87C();
              v96 = sub_24910CF5C();

              if (os_log_type_enabled(v95, v96))
              {
                v97 = swift_slowAlloc();
                v160 = v36;
                v98 = v97;
                v99 = swift_slowAlloc();
                v165 = v99;
                *v98 = v144;
                v100 = v20;
                v101 = sub_24909F930(v162, v32, &v165);

                *(v98 + 4) = v101;
                v20 = v100;
                *(v98 + 12) = 2080;
                v102 = sub_24909F930(v161, v160, &v165);

                *(v98 + 14) = v102;
                _os_log_impl(&dword_249083000, v95, v96, "Server save failed: server newer, type=%s, id=%s", v98, 0x16u);
                swift_arrayDestroy();
                v103 = v99;
                v27 = 0x278F87000;
                MEMORY[0x24C1F26F0](v103, -1, -1);
                MEMORY[0x24C1F26F0](v98, -1, -1);
              }

              else
              {
              }

              v117 = v138;
              *v117 = [v163 *(v27 + 2776)];
              (*v151)(v117, v149, v157);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v26 = sub_24909F754(0, v26[2] + 1, 1, v26, &qword_27EED7600, &qword_24910EB38, MEMORY[0x277CBBC78]);
              }

              v119 = v26[2];
              v118 = v26[3];
              if (v119 >= v118 >> 1)
              {
                v26 = sub_24909F754((v118 > 1), v119 + 1, 1, v26, &qword_27EED7600, &qword_24910EB38, MEMORY[0x277CBBC78]);
              }

              v26[2] = v119 + 1;
              (*(v152 + 32))(v26 + ((*(v152 + 80) + 32) & ~*(v152 + 80)) + *(v152 + 72) * v119, v117, v157);
              goto LABEL_73;
            }

LABEL_62:

            goto LABEL_4;
          }

          if (v166 != 20)
          {
            goto LABEL_56;
          }
        }
      }

      else if (v166 > 8)
      {
        if (v166 != 9)
        {
          if (v166 == 11)
          {
            if (qword_27EED82D0 != -1)
            {
              swift_once();
            }

            v66 = sub_24910C89C();
            __swift_project_value_buffer(v66, qword_27EED82D8);

            v67 = v36;

            v68 = sub_24910C87C();
            v69 = sub_24910CF5C();

            if (os_log_type_enabled(v68, v69))
            {
              v70 = swift_slowAlloc();
              v71 = swift_slowAlloc();
              v165 = v71;
              *v70 = v144;
              *(v70 + 4) = sub_24909F930(v162, v32, &v165);
              *(v70 + 12) = 2080;
              *(v70 + 14) = sub_24909F930(v161, v36, &v165);
              _os_log_impl(&dword_249083000, v68, v69, "Server save failed: no server record, type=%s, id=%s", v70, 0x16u);
              swift_arrayDestroy();
              v72 = v71;
              v27 = 0x278F87000uLL;
              MEMORY[0x24C1F26F0](v72, -1, -1);
              v73 = v70;
              v67 = v36;
              MEMORY[0x24C1F26F0](v73, -1, -1);
            }

            v74 = [v163 *(v27 + 2776)];
            v75 = v146;
            *v146 = v74;
            (*v151)(v75, v149, v157);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = sub_24909F754(0, v26[2] + 1, 1, v26, &qword_27EED7600, &qword_24910EB38, MEMORY[0x277CBBC78]);
            }

            v77 = v26[2];
            v76 = v26[3];
            v78 = v152;
            if (v77 >= v76 >> 1)
            {
              v127 = sub_24909F754((v76 > 1), v77 + 1, 1, v26, &qword_27EED7600, &qword_24910EB38, MEMORY[0x277CBBC78]);
              v78 = v152;
              v26 = v127;
            }

            v26[2] = v77 + 1;
            (*(v78 + 32))(v26 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v77, v146, v157);
            v79 = sub_24909E64C(v162, v32, v161, v67);

            v154 |= v79;
            goto LABEL_4;
          }

LABEL_56:
          v160 = v26;
          if (qword_27EED82D0 != -1)
          {
            swift_once();
          }

          v104 = sub_24910C89C();
          __swift_project_value_buffer(v104, qword_27EED82D8);

          v105 = v37;
          v106 = sub_24910C87C();
          v107 = sub_24910CF4C();

          if (os_log_type_enabled(v106, v107))
          {
            v108 = swift_slowAlloc();
            v159 = swift_slowAlloc();
            v165 = v159;
            *v108 = v155;
            v109 = sub_24909F930(v162, v32, &v165);

            *(v108 + 4) = v109;
            *(v108 + 12) = 2080;
            v110 = sub_24909F930(v161, v36, &v165);

            *(v108 + 14) = v110;
            *(v108 + 22) = 2080;
            v164[3] = v105;
            sub_2490A2FC8(&qword_27EED7680, type metadata accessor for CKError, &unk_24910ED1C);
            v111 = sub_24910D5DC();
            v113 = sub_24909F930(v111, v112, &v165);

            *(v108 + 24) = v113;
            _os_log_impl(&dword_249083000, v106, v107, "### Unknown error saving record: type=%s, id=%s, error=%s", v108, 0x20u);
            v114 = v159;
            swift_arrayDestroy();
            MEMORY[0x24C1F26F0](v114, -1, -1);
            v115 = v108;
            v27 = 0x278F87000;
            MEMORY[0x24C1F26F0](v115, -1, -1);
          }

          else
          {
          }

          v26 = v160;
          goto LABEL_4;
        }
      }

      else if ((v166 - 3) >= 2 && v166 != 6)
      {
        goto LABEL_56;
      }

      v159 = v24;
      v160 = v26;
      if (qword_27EED82D0 != -1)
      {
        swift_once();
      }

      v80 = sub_24910C89C();
      __swift_project_value_buffer(v80, qword_27EED82D8);

      v81 = v37;
      v82 = sub_24910C87C();
      v83 = sub_24910CF5C();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = v20;
        v86 = swift_slowAlloc();
        v164[0] = v86;
        *v84 = v155;
        v87 = sub_24909F930(v162, v32, v164);

        *(v84 + 4) = v87;
        *(v84 + 12) = 2080;
        v88 = sub_24909F930(v161, v36, v164);

        *(v84 + 14) = v88;
        *(v84 + 22) = 2080;
        v166 = v81;
        sub_2490A2FC8(&qword_27EED7680, type metadata accessor for CKError, &unk_24910ED1C);
        v89 = sub_24910D5DC();
        v91 = sub_24909F930(v89, v90, v164);

        *(v84 + 24) = v91;
        _os_log_impl(&dword_249083000, v82, v83, "Server save failed: retry-able: type=%s, id=%s, error=%s", v84, 0x20u);
        swift_arrayDestroy();
        v92 = v86;
        v20 = v85;
        v29 = v158;
        MEMORY[0x24C1F26F0](v92, -1, -1);
        v93 = v84;
        v27 = 0x278F87000;
        MEMORY[0x24C1F26F0](v93, -1, -1);

        v24 = v159;
        v26 = v160;
        goto LABEL_5;
      }

      v24 = v159;
      v26 = v160;
LABEL_4:
      v29 = v158;
LABEL_5:
      v24 += v29;
      if (!--v20)
      {
        goto LABEL_82;
      }
    }
  }

  v154 = 0;
  v26 = MEMORY[0x277D84F90];
  v156 = MEMORY[0x277D84F90];
LABEL_82:
  v128 = v153;
  if (v156[2] && *(v153 + 32))
  {

    sub_24910CB1C();

    sub_24910CAEC();
  }

  if (v26[2] && *(v128 + 32))
  {

    sub_24910CB1C();

    sub_24910CAFC();
  }

  return v154 & 1;
}

uint64_t sub_24909D9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v86 = a2;
  v87 = a4;
  v85 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7638, &qword_24910EB48);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v82 - v9;
  v11 = type metadata accessor for DTSyncedTimer(0);
  v82 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7640, &qword_24910EB58);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v82 - v15;
  v17 = type metadata accessor for DTSyncedAlarm(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84.super.isa = sub_24910CC0C();
  if (!v84.super.isa)
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v40 = sub_24910C89C();
    __swift_project_value_buffer(v40, qword_27EED82D8);
    v41 = v87;

    v42 = a5;
    v43 = sub_24910C87C();
    v44 = sub_24910CF4C();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v88[0] = v46;
      *v45 = 136315394;
      *(v45 + 4) = sub_24909F930(v85, v41, v88);
      *(v45 + 12) = 2080;
      v89 = v42;
      type metadata accessor for CKError(0);
      sub_2490A2FC8(&qword_27EED7680, type metadata accessor for CKError, &unk_24910ED1C);
      v47 = sub_24910D5DC();
      v49 = sub_24909F930(v47, v48, v88);

      *(v45 + 14) = v49;
      _os_log_impl(&dword_249083000, v43, v44, "### Server save failed: no server record, id=%s, error=%s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v46, -1, -1);
      MEMORY[0x24C1F26F0](v45, -1, -1);
    }

    return 0;
  }

  v21 = sub_2490A86B8();
  v22 = *v21;
  v23 = *(v21 + 1);
  v83 = a1;
  if ((v22 != a1 || v23 != v86) && (sub_24910D54C() & 1) == 0)
  {
    v62 = sub_2490AF22C();
    v31 = v83;
    v30 = v86;
    if ((*v62 != v83 || *(v62 + 1) != v86) && (sub_24910D54C() & 1) == 0)
    {
      if (qword_27EED82D0 != -1)
      {
        swift_once();
      }

      v72 = sub_24910C89C();
      __swift_project_value_buffer(v72, qword_27EED82D8);
      v73 = v87;

      v74 = a5;

      v52 = sub_24910C87C();
      v75 = sub_24910CF5C();

      if (!os_log_type_enabled(v52, v75))
      {
        goto LABEL_25;
      }

      v76 = v30;
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v88[0] = v78;
      *v77 = 136315650;
      *(v77 + 4) = sub_24909F930(v83, v76, v88);
      *(v77 + 12) = 2080;
      *(v77 + 14) = sub_24909F930(v85, v73, v88);
      *(v77 + 22) = 2080;
      v89 = v74;
      type metadata accessor for CKError(0);
      sub_2490A2FC8(&qword_27EED7680, type metadata accessor for CKError, &unk_24910ED1C);
      v79 = sub_24910D5DC();
      v81 = sub_24909F930(v79, v80, v88);

      *(v77 + 24) = v81;
      _os_log_impl(&dword_249083000, v52, v75, "Server sent fail: unsupported, type=%s, id=%s, error=%s", v77, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v78, -1, -1);
      v61 = v77;
      goto LABEL_24;
    }

    v63 = v5 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
    swift_beginAccess();
    v64 = *(v63 + 8);
    if (*(v64 + 16))
    {
      v65 = sub_2490A0A3C(v85, v87);
      if (v66)
      {
        v67 = v82;
        sub_2490A3010(*(v64 + 56) + *(v82 + 72) * v65, v13, type metadata accessor for DTSyncedTimer);
        swift_endAccess();
        isa = v84.super.isa;
        if (DTSyncedTimer.mergeFromServerRecord(_:)(v84))
        {
          sub_2490A2FC8(&qword_27EED7608, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
          DTSyncedObject.setLastKnownRecordIfNewer(_:)(isa);
          sub_2490A3010(v13, v10, type metadata accessor for DTSyncedTimer);
          (*(v67 + 56))(v10, 0, 1, v11);
          swift_beginAccess();
          v26 = v87;

          sub_249092E30(v10, v85, v26);
          swift_endAccess();
          sub_2490A4414(v13, type metadata accessor for DTSyncedTimer);
          goto LABEL_9;
        }

        v70 = type metadata accessor for DTSyncedTimer;
        v71 = v13;
        goto LABEL_39;
      }
    }

    swift_endAccess();
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v68 = sub_24910C89C();
    __swift_project_value_buffer(v68, qword_27EED82D8);
    v69 = v87;

    v51 = a5;
    v52 = sub_24910C87C();
    v53 = sub_24910CF4C();

    if (!os_log_type_enabled(v52, v53))
    {
LABEL_25:

      return 0;
    }

    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v88[0] = v55;
    *v54 = 136315394;
    v56 = v85;
    v57 = v69;
LABEL_23:
    *(v54 + 4) = sub_24909F930(v56, v57, v88);
    *(v54 + 12) = 2080;
    v89 = v51;
    type metadata accessor for CKError(0);
    sub_2490A2FC8(&qword_27EED7680, type metadata accessor for CKError, &unk_24910ED1C);
    v58 = sub_24910D5DC();
    v60 = sub_24909F930(v58, v59, v88);

    *(v54 + 14) = v60;
    _os_log_impl(&dword_249083000, v52, v53, "### Server save failed: no local record, id=%s, error=%s", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v55, -1, -1);
    v61 = v54;
LABEL_24:
    MEMORY[0x24C1F26F0](v61, -1, -1);
    goto LABEL_25;
  }

  v24 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
  swift_beginAccess();
  v25 = *(v5 + v24);
  v26 = v87;
  if (!*(v25 + 16) || (v27 = sub_2490A0A3C(v85, v87), (v28 & 1) == 0))
  {
    swift_endAccess();
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v50 = sub_24910C89C();
    __swift_project_value_buffer(v50, qword_27EED82D8);

    v51 = a5;
    v52 = sub_24910C87C();
    v53 = sub_24910CF4C();

    if (!os_log_type_enabled(v52, v53))
    {
      goto LABEL_25;
    }

    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v88[0] = v55;
    *v54 = 136315394;
    v56 = v85;
    v57 = v26;
    goto LABEL_23;
  }

  sub_2490A3010(*(v25 + 56) + *(v18 + 72) * v27, v20, type metadata accessor for DTSyncedAlarm);
  swift_endAccess();
  isa = v84.super.isa;
  if (!DTSyncedAlarm.mergeFromServerRecord(_:)(v84))
  {
    v70 = type metadata accessor for DTSyncedAlarm;
    v71 = v20;
LABEL_39:
    sub_2490A4414(v71, v70);

    return 0;
  }

  sub_2490A2FC8(&qword_27EED7618, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
  DTSyncedObject.setLastKnownRecordIfNewer(_:)(isa);
  sub_2490A3010(v20, v16, type metadata accessor for DTSyncedAlarm);
  (*(v18 + 56))(v16, 0, 1, v17);
  swift_beginAccess();

  sub_249092C1C(v16, v85, v26);
  swift_endAccess();
  sub_2490A4414(v20, type metadata accessor for DTSyncedAlarm);
  v30 = v86;
  v31 = v83;
LABEL_9:
  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v32 = sub_24910C89C();
  __swift_project_value_buffer(v32, qword_27EED82D8);

  v33 = sub_24910C87C();
  v34 = sub_24910CF5C();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v30;
    v38 = v36;
    v88[0] = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_24909F930(v31, v37, v88);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_24909F930(v85, v26, v88);
    _os_log_impl(&dword_249083000, v33, v34, "Server save failed: server newer, type=%s, id=%s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v38, -1, -1);
    MEMORY[0x24C1F26F0](v35, -1, -1);
  }

  return 1;
}

uint64_t sub_24909E64C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v47 = a3;
  v48 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7638, &qword_24910EB48);
  MEMORY[0x28223BE20](v8 - 8);
  v46 = &v44 - v9;
  v10 = type metadata accessor for DTSyncedTimer(0);
  v44 = *(v10 - 8);
  v45 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7640, &qword_24910EB58);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v44 - v17;
  v19 = type metadata accessor for DTSyncedAlarm(0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v44 - v24;
  if (*sub_2490A86B8() == __PAIR128__(a2, a1) || (sub_24910D54C() & 1) != 0)
  {
    v26 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
    swift_beginAccess();
    v27 = *(v5 + v26);
    if (*(v27 + 16))
    {
      v28 = sub_2490A0A3C(v47, v48);
      if (v29)
      {
        sub_2490A3010(*(v27 + 56) + *(v20 + 72) * v28, v23, type metadata accessor for DTSyncedAlarm);
        sub_2490A43AC(v23, v25, type metadata accessor for DTSyncedAlarm);
        swift_endAccess();
        v30 = sub_2490A2FC8(&qword_27EED7618, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
        DTSyncedObject.lastKnownRecord.setter(0, v19, v30);
        sub_2490A3010(v25, v18, type metadata accessor for DTSyncedAlarm);
        v31 = 1;
        (*(v20 + 56))(v18, 0, 1, v19);
        swift_beginAccess();
        v32 = v48;

        sub_249092C1C(v18, v47, v32);
        swift_endAccess();
        sub_2490A4414(v25, type metadata accessor for DTSyncedAlarm);
        return v31;
      }
    }

LABEL_12:
    swift_endAccess();
    return 0;
  }

  v33 = sub_2490AF22C();
  if (*v33 == a1 && *(v33 + 1) == a2 || (v31 = 0, (sub_24910D54C() & 1) != 0))
  {
    v34 = v5 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
    swift_beginAccess();
    v35 = *(v34 + 8);
    if (*(v35 + 16))
    {
      v36 = sub_2490A0A3C(v47, v48);
      if (v37)
      {
        v38 = v44;
        sub_2490A3010(*(v35 + 56) + *(v44 + 72) * v36, v13, type metadata accessor for DTSyncedTimer);
        sub_2490A43AC(v13, v15, type metadata accessor for DTSyncedTimer);
        swift_endAccess();
        v39 = sub_2490A2FC8(&qword_27EED7608, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
        v40 = v45;
        DTSyncedObject.lastKnownRecord.setter(0, v45, v39);
        v41 = v46;
        sub_2490A3010(v15, v46, type metadata accessor for DTSyncedTimer);
        v31 = 1;
        (*(v38 + 56))(v41, 0, 1, v40);
        swift_beginAccess();
        v42 = v48;

        sub_249092E30(v41, v47, v42);
        swift_endAccess();
        sub_2490A4414(v15, type metadata accessor for DTSyncedTimer);
        return v31;
      }
    }

    goto LABEL_12;
  }

  return v31;
}

uint64_t sub_24909EBA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2490887FC;

  return sub_2490A31BC(a1);
}

uint64_t sub_24909EC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2490887FC;

  return DTSyncDaemon.nextRecordZoneChangeBatch(_:syncEngine:)(a1, a2, a3);
}

uint64_t sub_24909ED04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_2490887FC;

  return MEMORY[0x28210DD50](a1, a2, a3, v11, a5);
}

uint64_t sub_24909EDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_24909EED8;

  return MEMORY[0x28210DD48](a1, a2, v9, a4);
}

uint64_t sub_24909EED8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_24909EFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_24909EED8;

  return MEMORY[0x28210DD58](a1, a2, a3, v11, a5);
}

uint64_t sub_24909F0D0(uint64_t a1)
{
  v2 = sub_2490A2FC8(&qword_27EED76D0, type metadata accessor for CKError, &unk_24910ECD8);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24909F13C(uint64_t a1)
{
  v2 = sub_2490A2FC8(&qword_27EED76D0, type metadata accessor for CKError, &unk_24910ECD8);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24909F1AC(uint64_t a1)
{
  v2 = sub_2490A2FC8(&qword_27EED7678, type metadata accessor for CKError, &unk_24910ED60);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_24909F228(uint64_t a1)
{
  v2 = sub_2490A2FC8(&qword_27EED7678, type metadata accessor for CKError, &unk_24910ED60);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_24909F294(uint64_t a1)
{
  v2 = sub_2490A2FC8(&qword_27EED7678, type metadata accessor for CKError, &unk_24910ED60);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_24909F300(void *a1, uint64_t a2)
{
  v4 = sub_2490A2FC8(&qword_27EED7678, type metadata accessor for CKError, &unk_24910ED60);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_24909F3B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2490A2FC8(&qword_27EED7678, type metadata accessor for CKError, &unk_24910ED60);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_24909F430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24910D60C();
  sub_24910CC4C();
  return sub_24910D62C();
}

void *sub_24909F490@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24909F4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2490A2FC8(&qword_27EED7678, type metadata accessor for CKError, &unk_24910ED60);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

char *sub_24909F544(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81F0, &unk_24910EBD0);
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

char *sub_24909F648(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81E0, &unk_249110E50);
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

void *sub_24909F754(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

unint64_t sub_24909F930(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24909F9FC(v11, 0, 0, 1, a1, a2);
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
    sub_2490A4944(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24909F9FC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24909FB08(a5, a6);
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
    result = sub_24910D29C();
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

void *sub_24909FB08(uint64_t a1, unint64_t a2)
{
  v3 = sub_24909FB54(a1, a2);
  sub_24909FC84(&unk_285C1EBF8);
  return v3;
}

void *sub_24909FB54(uint64_t a1, unint64_t a2)
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

  v6 = sub_24909FD70(v5, 0);
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

  result = sub_24910D29C();
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
        v10 = sub_24910CD0C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24909FD70(v10, 0);
        result = sub_24910D24C();
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