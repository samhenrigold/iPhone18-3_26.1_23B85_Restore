uint64_t sub_25C481720(uint64_t *a1, void (*a2)(void *))
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__nanSubscriber;
      swift_beginAccess();
      v12 = *(v8 + v11);
      if (v12)
      {
        if (v10 == v12)
        {
          v13[0] = v3;
          v13[1] = v4;
          v13[2] = v5;
          v13[3] = v6;
          a2(v13);
        }
      }

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_25C481810()
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
      v4 = (v1 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__nanSubscriber);
      swift_beginAccess();
      if (!*v4 || v3 != *v4)
      {

        return swift_unknownObjectRelease();
      }

      *v4 = 0;
      v4[1] = 0;
      swift_unknownObjectRelease();
      sub_25C47EF4C();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_25C4818FC()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0B5D8);
  __swift_project_value_buffer(v0, qword_27FC0B5D8);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

uint64_t NXDaemon.entitlementChecksDisabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t NXDaemon.environment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_environment;
  v4 = sub_25C4C7B30();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_25C481AA8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_invalidationHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25C49057C;
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

uint64_t sub_25C481B48(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25C49055C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_invalidationHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_25C45A2B8(v3, v4);
  return sub_25C45A2C8(v8, v9);
}

uint64_t NXDaemon.localOnly.getter()
{
  v1 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_localOnly;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NXDaemon.localOnly.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_localOnly;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t NXDaemon.__allocating_init(dispatchQueue:environment:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  NXDaemon.init(dispatchQueue:environment:)(a1, a2);
  return v4;
}

uint64_t NXDaemon.init(dispatchQueue:environment:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__invalidateCalled) = 0;
  v5 = (v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_invalidationHandler);
  *v5 = 0;
  v5[1] = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_localOnly) = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__managers) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_cloudServer) = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_diagnosticsManager) = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_networkManager) = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcPublisher) = 0;
  v6 = (v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_prefsDomain);
  *v6 = sub_25C4C7C70();
  v6[1] = v7;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__startTicks) = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__updatePending) = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener) = 0;
  v8 = MEMORY[0x277D84F98];
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkServerSessions) = MEMORY[0x277D84F98];
  v9 = (v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_networkServerReadyHandler);
  *v9 = 0;
  v9[1] = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__operationCreators) = v8;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__osStateHandler) = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__prefChangedNotification) = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__prefNetworkServerEnabled) = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_prefSecurityRequired) = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_prefNetworkServerEnabledOverride) = 2;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__requestRegistrations) = v8;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__sessionMap) = v8;
  v10 = (v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_xpcConnectionAcceptHandler);
  *v10 = 0;
  v10[1] = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcConnections) = MEMORY[0x277D84FA0];
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcEndpoint) = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcListener) = 0;
  *(v2 + 16) = a1;
  v11 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_environment;
  v12 = sub_25C4C7B30();
  (*(*(v12 - 8) + 32))(v2 + v11, a2, v12);
  return v2;
}

char *NXDaemon.description.getter()
{
  v1 = v0;
  v275 = sub_25C4C7C50();
  v262 = *(v275 - 8);
  MEMORY[0x28223BE20](v275);
  v261 = &v258 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5A0, &qword_25C4CA410);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v258 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v258 - v7;
  v282 = sub_25C4C8050();
  v265 = *(v282 - 8);
  v9 = MEMORY[0x28223BE20](v282);
  v267 = &v258 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v263 = &v258 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5A8, &qword_25C4CA418);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v258 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v272 = &v258 - v16;
  v283 = sub_25C4C8090();
  v270 = *(v283 - 8);
  v17 = MEMORY[0x28223BE20](v283);
  v280 = &v258 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v266 = &v258 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5B0, &qword_25C4CA420);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v269 = &v258 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v279 = &v258 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5B8, &qword_25C4CA428);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v258 - v25;
  v27 = sub_25C4C89B0();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v258 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (mach_absolute_time() < *(v1 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__startTicks))
  {
    goto LABEL_170;
  }

  v278 = v15;
  v276 = v8;
  v271 = v6;
  v31 = UpTicksToSeconds();
  v290[0] = 0;
  v290[1] = 0xE000000000000000;
  sub_25C4C88F0();
  MEMORY[0x25F887A50](0xD000000000000012, 0x800000025C4D0B30);
  *&v285 = v31;
  (*(v28 + 104))(v30, *MEMORY[0x277D02A60], v27);
  sub_25C484038();
  sub_25C4C89D0();
  (*(v28 + 8))(v30, v27);
  v288 = v290[0];
  v289 = v290[1];
  MEMORY[0x25F887A50](10, 0xE100000000000000);
  v32 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__managers;
  swift_beginAccess();
  v33 = *(v1 + v32);
  v34 = *(v33 + 16);
  v35 = v1;
  v259 = v1;
  if (v34)
  {
    v36 = v33 + 32;

    do
    {
      sub_25C48BE38(v36, v290);
      __swift_project_boxed_opaque_existential_1(v290, v291);
      v37 = sub_25C4C89A0();
      v39 = v38;
      __swift_destroy_boxed_opaque_existential_0(v290);
      v40 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v40 = v37 & 0xFFFFFFFFFFFFLL;
      }

      if (v40)
      {
        *&v285 = 10;
        *(&v285 + 1) = 0xE100000000000000;
        MEMORY[0x25F887A50](v37, v39);

        MEMORY[0x25F887A50](v285, *(&v285 + 1));
      }

      v36 += 40;
      --v34;
    }

    while (v34);

    v35 = v259;
  }

  if (*(v35 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener))
  {
    v273 = v26;
    v274 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener;
    v41 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkServerSessions;
    swift_beginAccess();
    v42 = *(v35 + v41);
    v45 = *(v42 + 64);
    v44 = v42 + 64;
    v43 = v45;
    v46 = 1 << *(*(v35 + v41) + 32);
    v47 = -1;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    v48 = v47 & v43;
    v49 = (v46 + 63) >> 6;
    v277 = *(v35 + v41);

    v50 = 0;
    for (i = MEMORY[0x277D84F90]; v48; v35 = v259)
    {
      v52 = i;
LABEL_20:
      v55 = *(*(v277 + 56) + ((v50 << 9) | (8 * __clz(__rbit64(v48)))));
      v56 = [v55 description];
      v57 = sub_25C4C8550();
      v59 = v58;

      v290[0] = v57;
      v290[1] = v59;
      MEMORY[0x25F887A50](10, 0xE100000000000000);
      v60 = v290[1];
      v281 = v290[0];
      v61 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_25C458868(0, *(v52 + 2) + 1, 1, v52);
      }

      v63 = *(v61 + 2);
      v62 = *(v61 + 3);
      i = v61;
      if (v63 >= v62 >> 1)
      {
        i = sub_25C458868((v62 > 1), v63 + 1, 1, v61);
      }

      v48 &= v48 - 1;

      *(i + 2) = v63 + 1;
      v64 = &i[16 * v63];
      *(v64 + 4) = v281;
      *(v64 + 5) = v60;
    }

    v53 = v278;
    while (1)
    {
      v54 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_168;
      }

      if (v54 >= v49)
      {
        break;
      }

      v48 = *(v44 + 8 * v54);
      ++v50;
      if (v48)
      {
        v52 = i;
        v50 = v54;
        goto LABEL_20;
      }
    }

    v65 = i;

    if (*(v35 + v274))
    {

      v66 = v273;
      sub_25C4C81A0();

      v67 = sub_25C4C8160();
      v68 = *(v67 - 8);
      if ((*(v68 + 48))(v66, 1, v67) != 1)
      {
        v70 = sub_25C4C8150();
        v69 = v71;
        (*(v68 + 8))(v66, v67);
        goto LABEL_32;
      }

      sub_25C4666F8(v66, &qword_27FC0A5B8, &qword_25C4CA428);
    }

    v69 = 0xE100000000000000;
    v70 = 63;
LABEL_32:
    v290[0] = 0;
    v290[1] = 0xE000000000000000;
    sub_25C4C88F0();

    v290[0] = 0xD000000000000019;
    v290[1] = 0x800000025C4D0BB0;
    MEMORY[0x25F887A50](v70, v69);

    MEMORY[0x25F887A50](0x6F6973736573202CLL, 0xEB000000003D736ELL);
    *&v285 = *(v65 + 2);
    v72 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v72);

    MEMORY[0x25F887A50](171785504, 0xE400000000000000);
    MEMORY[0x25F887A50](v290[0], v290[1]);

    v290[0] = v65;

    sub_25C4623E8(v290);
    v258 = 0;

    v73 = *(v290[0] + 2);
    if (v73)
    {
      v74 = v290[0] + 40;
      do
      {
        v75 = *(v74 - 1);
        v76 = *v74;

        MEMORY[0x25F887A50](v75, v76);

        v74 += 16;
        --v73;
      }

      while (v73);
    }

    v35 = v259;
    goto LABEL_36;
  }

  v258 = 0;
  v53 = v278;
LABEL_36:
  v77 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__operationCreators;
  swift_beginAccess();
  v78 = v279;
  if (*(*(v35 + v77) + 16))
  {
    v290[0] = 0;
    v290[1] = 0xE000000000000000;
    sub_25C4C88F0();

    v290[0] = 0xD000000000000017;
    v290[1] = 0x800000025C4D0B50;
    *&v285 = *(*(v35 + v77) + 16);
    v79 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v79);

    MEMORY[0x25F887A50](171785504, 0xE400000000000000);
    MEMORY[0x25F887A50](v290[0], v290[1]);

    v80 = *(v35 + v77);
    v81 = *(v80 + 64);
    v274 = v80 + 64;
    v82 = 1 << *(v80 + 32);
    v83 = -1;
    if (v82 < 64)
    {
      v83 = ~(-1 << v82);
    }

    v84 = v83 & v81;
    v260 = (v82 + 63) >> 6;
    v264 = v270 + 16;
    v277 = v270 + 32;
    v273 = (v270 + 8);
    v268 = v80;

    v85 = 0;
    v86 = MEMORY[0x277D84F90];
    v87 = v269;
    while (1)
    {
      v281 = v86;
      if (!v84)
      {
        if (v260 <= v85 + 1)
        {
          v89 = v85 + 1;
        }

        else
        {
          v89 = v260;
        }

        v90 = v89 - 1;
        while (1)
        {
          v88 = v85 + 1;
          if (__OFADD__(v85, 1))
          {
            break;
          }

          if (v88 >= v260)
          {
            v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5C8, &qword_25C4CA430);
            (*(*(v113 - 8) + 56))(v87, 1, 1, v113);
            v84 = 0;
            v85 = v90;
            goto LABEL_51;
          }

          v84 = *(v274 + 8 * v88);
          ++v85;
          if (v84)
          {
            v85 = v88;
            goto LABEL_50;
          }
        }

        __break(1u);
LABEL_166:
        __break(1u);
        goto LABEL_167;
      }

      v88 = v85;
LABEL_50:
      v91 = __clz(__rbit64(v84));
      v84 &= v84 - 1;
      v92 = v91 | (v88 << 6);
      v93 = (*(v268 + 48) + 16 * v92);
      v95 = *v93;
      v94 = v93[1];
      v96 = v270;
      v97 = v266;
      v98 = v283;
      (*(v270 + 16))(v266, *(v268 + 56) + *(v270 + 72) * v92, v283);
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5C8, &qword_25C4CA430);
      v100 = *(v99 + 48);
      v101 = v269;
      *v269 = v95;
      *(v101 + 1) = v94;
      v102 = v97;
      v87 = v101;
      (*(v96 + 32))(&v101[v100], v102, v98);
      (*(*(v99 - 8) + 56))(v87, 0, 1, v99);

      v78 = v279;
LABEL_51:
      sub_25C465DA4(v87, v78, &qword_27FC0A5B0, &qword_25C4CA420);
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5C8, &qword_25C4CA430);
      if ((*(*(v103 - 8) + 48))(v78, 1, v103) == 1)
      {
        break;
      }

      v104 = *v78;
      v105 = *(v78 + 1);
      (*v277)(v280, &v78[*(v103 + 48)], v283);
      v290[0] = 0;
      v290[1] = 0xE000000000000000;
      sub_25C4C88F0();

      v290[0] = 0x3D656D616ELL;
      v290[1] = 0xE500000000000000;
      MEMORY[0x25F887A50](v104, v105);

      MEMORY[0x25F887A50](0x746E65696C63202CLL, 0xE90000000000003DLL);
      v106 = sub_25C4C8060();
      MEMORY[0x25F887A50](v106);

      MEMORY[0x25F887A50](10, 0xE100000000000000);
      v107 = v290[0];
      v108 = v290[1];
      v109 = v281;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v109 = sub_25C458868(0, *(v109 + 2) + 1, 1, v109);
      }

      v111 = *(v109 + 2);
      v110 = *(v109 + 3);
      v86 = v109;
      if (v111 >= v110 >> 1)
      {
        v86 = sub_25C458868((v110 > 1), v111 + 1, 1, v109);
      }

      (*v273)(v280, v283);
      *(v86 + 2) = v111 + 1;
      v112 = &v86[16 * v111];
      *(v112 + 4) = v107;
      *(v112 + 5) = v108;
      v78 = v279;
    }

    v290[0] = v281;

    v114 = v258;
    sub_25C4623E8(v290);
    v258 = v114;
    if (v114)
    {
      goto LABEL_171;
    }

    v115 = *(v290[0] + 2);
    v53 = v278;
    if (v115)
    {
      v116 = v290[0] + 40;
      do
      {
        v117 = *(v116 - 1);
        v118 = *v116;

        MEMORY[0x25F887A50](v117, v118);

        v116 += 16;
        --v115;
      }

      while (v115);
    }

    v35 = v259;
  }

  v119 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__requestRegistrations;
  swift_beginAccess();
  v120 = *(v35 + v119);
  v121 = v267;
  if (*(v120 + 16))
  {
    v122 = *(v120 + 64);
    v280 = (v120 + 64);
    v123 = 1 << *(v120 + 32);
    v124 = -1;
    if (v123 < 64)
    {
      v124 = ~(-1 << v123);
    }

    v125 = v124 & v122;
    v273 = ((v123 + 63) >> 6);
    v274 = v265 + 16;
    v281 = (v265 + 32);
    v279 = (v265 + 8);
    v277 = v120;

    v126 = 0;
    v127 = MEMORY[0x277D84F90];
    while (1)
    {
      v283 = v127;
      if (!v125)
      {
        if (v273 <= v126 + 1)
        {
          v129 = (v126 + 1);
        }

        else
        {
          v129 = v273;
        }

        v130 = v129 - 1;
        while (1)
        {
          v128 = v126 + 1;
          if (__OFADD__(v126, 1))
          {
            goto LABEL_166;
          }

          if (v128 >= v273)
          {
            v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5D0, &qword_25C4CA438);
            (*(*(v152 - 8) + 56))(v53, 1, 1, v152);
            v125 = 0;
            v126 = v130;
            goto LABEL_78;
          }

          v125 = *&v280[8 * v128];
          ++v126;
          if (v125)
          {
            v126 = v128;
            goto LABEL_77;
          }
        }
      }

      v128 = v126;
LABEL_77:
      v131 = __clz(__rbit64(v125));
      v125 &= v125 - 1;
      v132 = v131 | (v128 << 6);
      v133 = (*(v277 + 48) + 16 * v132);
      v135 = *v133;
      v134 = v133[1];
      v136 = v265;
      v137 = v263;
      v138 = v282;
      (*(v265 + 16))(v263, *(v277 + 56) + *(v265 + 72) * v132, v282);
      v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5D0, &qword_25C4CA438);
      v140 = *(v139 + 48);
      v141 = v278;
      *v278 = v135;
      *(v141 + 1) = v134;
      v53 = v141;
      (*(v136 + 32))(&v141[v140], v137, v138);
      (*(*(v139 - 8) + 56))(v53, 0, 1, v139);

      v121 = v267;
LABEL_78:
      v142 = v272;
      sub_25C465DA4(v53, v272, &qword_27FC0A5A8, &qword_25C4CA418);
      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5D0, &qword_25C4CA438);
      if ((*(*(v143 - 8) + 48))(v142, 1, v143) == 1)
      {
        break;
      }

      v144 = *v142;
      v145 = *(v142 + 1);
      (*v281)(v121, &v142[*(v143 + 48)], v282);
      v290[0] = 0;
      v290[1] = 0xE000000000000000;
      sub_25C4C88F0();

      v290[0] = 0x3D656D616ELL;
      v290[1] = 0xE500000000000000;
      MEMORY[0x25F887A50](v144, v145);

      MEMORY[0x25F887A50](0x746E65696C63202CLL, 0xE90000000000003DLL);
      v146 = sub_25C4C8020();
      MEMORY[0x25F887A50](v146);

      MEMORY[0x25F887A50](10, 0xE100000000000000);
      v147 = v290[0];
      v148 = v290[1];
      v127 = v283;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v127 = sub_25C458868(0, *(v127 + 2) + 1, 1, v127);
      }

      v150 = *(v127 + 2);
      v149 = *(v127 + 3);
      if (v150 >= v149 >> 1)
      {
        v127 = sub_25C458868((v149 > 1), v150 + 1, 1, v127);
      }

      (*v279)(v121, v282);
      *(v127 + 2) = v150 + 1;
      v151 = &v127[16 * v150];
      *(v151 + 4) = v147;
      *(v151 + 5) = v148;
      v53 = v278;
    }

    v290[0] = 0;
    v290[1] = 0xE000000000000000;
    sub_25C4C88F0();

    v290[0] = 0xD00000000000001BLL;
    v290[1] = 0x800000025C4D0B70;
    v153 = v283;
    *&v285 = *(v283 + 16);
    v154 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v154);

    MEMORY[0x25F887A50](171785504, 0xE400000000000000);
    MEMORY[0x25F887A50](v290[0], v290[1]);

    v290[0] = v153;

    v155 = v258;
    sub_25C4623E8(v290);
    v258 = v155;
    if (v155)
    {
      goto LABEL_171;
    }

    v156 = *(v290[0] + 2);
    if (v156)
    {
      v157 = v290[0] + 40;
      do
      {
        v158 = *(v157 - 1);
        v159 = *v157;

        MEMORY[0x25F887A50](v158, v159);

        v157 += 16;
        --v156;
      }

      while (v156);
    }

    v35 = v259;
  }

  v160 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__sessionMap;
  swift_beginAccess();
  v161 = *(v35 + v160);
  v162 = v276;
  if (*(v161 + 2))
  {
    v163 = v161 + 64;
    v164 = 1 << v161[32];
    v165 = -1;
    if (v164 < 64)
    {
      v165 = ~(-1 << v164);
    }

    v166 = v165 & *(v161 + 8);
    v279 = (v262 + 16);
    v280 = v161;
    v277 = (v164 + 63) >> 6;
    v278 = (v262 + 32);
    v281 = (v262 + 8);

    v167 = 0;
    v168 = MEMORY[0x277D84F90];
    v282 = v163;
    if (v166)
    {
      while (1)
      {
        v283 = v168;
        v169 = v167;
LABEL_103:
        v172 = __clz(__rbit64(v166));
        v166 &= v166 - 1;
        v173 = v172 | (v169 << 6);
        v174 = v280;
        v175 = v261;
        v176 = v262;
        v177 = v275;
        (*(v262 + 16))(v261, *(v280 + 6) + *(v262 + 72) * v173, v275);
        v178 = *(*(v174 + 7) + 8 * v173);
        v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5D8, &unk_25C4CA440);
        v180 = *(v179 + 48);
        v181 = *(v176 + 32);
        v182 = v271;
        v181(v271, v175, v177);
        *(v182 + v180) = v178;
        (*(*(v179 - 8) + 56))(v182, 0, 1, v179);
        v183 = v178;
        v162 = v276;
        v168 = v283;
LABEL_104:
        sub_25C465DA4(v182, v162, &qword_27FC0A5A0, &qword_25C4CA410);
        v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5D8, &unk_25C4CA440);
        if ((*(*(v184 - 8) + 48))(v162, 1, v184) == 1)
        {
          break;
        }

        v185 = *(v162 + *(v184 + 48));
        v186 = [v185 description];
        v187 = sub_25C4C8550();
        v189 = v188;

        v290[0] = v187;
        v290[1] = v189;
        MEMORY[0x25F887A50](10, 0xE100000000000000);
        v190 = v290[0];
        v191 = v290[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v168 = sub_25C458868(0, *(v168 + 2) + 1, 1, v168);
        }

        v193 = *(v168 + 2);
        v192 = *(v168 + 3);
        if (v193 >= v192 >> 1)
        {
          v168 = sub_25C458868((v192 > 1), v193 + 1, 1, v168);
        }

        *(v168 + 2) = v193 + 1;
        v194 = &v168[16 * v193];
        *(v194 + 4) = v190;
        *(v194 + 5) = v191;
        v162 = v276;
        (*v281)(v276, v275);
        v163 = v282;
        if (!v166)
        {
          goto LABEL_95;
        }
      }

      v290[0] = 0;
      v290[1] = 0xE000000000000000;
      sub_25C4C88F0();

      strcpy(v290, "\n== Sessions: ");
      HIBYTE(v290[1]) = -18;
      *&v285 = *(v168 + 2);
      v196 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v196);

      MEMORY[0x25F887A50](171785504, 0xE400000000000000);
      MEMORY[0x25F887A50](v290[0], v290[1]);

      v290[0] = v168;

      v197 = v258;
      sub_25C4623E8(v290);
      v258 = v197;
      if (!v197)
      {

        v198 = *(v290[0] + 2);
        if (v198)
        {
          v199 = v290[0] + 40;
          do
          {
            v200 = *(v199 - 1);
            v201 = *v199;

            MEMORY[0x25F887A50](v200, v201);

            v199 += 16;
            --v198;
          }

          while (v198);
        }

        v35 = v259;
        goto LABEL_117;
      }

LABEL_171:

      __break(1u);
LABEL_172:
      v257 = v258;
      goto LABEL_174;
    }

LABEL_95:
    if (v277 <= v167 + 1)
    {
      v170 = v167 + 1;
    }

    else
    {
      v170 = v277;
    }

    v171 = v170 - 1;
    while (1)
    {
      v169 = v167 + 1;
      if (__OFADD__(v167, 1))
      {
        break;
      }

      if (v169 >= v277)
      {
        v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5D8, &unk_25C4CA440);
        v182 = v271;
        (*(*(v195 - 8) + 56))(v271, 1, 1, v195);
        v166 = 0;
        v167 = v171;
        goto LABEL_104;
      }

      v166 = v163[v169];
      ++v167;
      if (v166)
      {
        v283 = v168;
        v167 = v169;
        goto LABEL_103;
      }
    }

LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

LABEL_117:
  v202 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcConnections;
  swift_beginAccess();
  v203 = *(v35 + v202);
  if ((v203 & 0xC000000000000001) == 0)
  {
    if (!*(v203 + 16))
    {
      goto LABEL_147;
    }

LABEL_121:
    v205 = *(v35 + v202);
    if ((v205 & 0xC000000000000001) != 0)
    {

      sub_25C4C8830();
      type metadata accessor for NXXPCConnection();
      sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection, &protocol conformance descriptor for NXXPCConnection);
      sub_25C4C8640();
      v205 = v290[0];
      v206 = v290[1];
      v207 = v290[2];
      v208 = v291;
      v209 = v292;
    }

    else
    {
      v210 = -1 << *(v205 + 32);
      v206 = (v205 + 56);
      v207 = ~v210;
      v211 = -v210;
      if (v211 < 64)
      {
        v212 = ~(-1 << v211);
      }

      else
      {
        v212 = -1;
      }

      v209 = v212 & *(v205 + 56);

      v208 = 0;
    }

    v281 = v207;
    v213 = (v207 + 64) >> 6;
    v214 = MEMORY[0x277D84F90];
    v282 = v205;
    if (v205 < 0)
    {
      goto LABEL_134;
    }

    while (1)
    {
      v215 = v208;
      v216 = v209;
      for (j = v208; !v216; ++v215)
      {
        j = v215 + 1;
        if (__OFADD__(v215, 1))
        {
          goto LABEL_169;
        }

        if (j >= v213)
        {
          goto LABEL_142;
        }

        v216 = *&v206[8 * j];
      }

      v218 = (v216 - 1) & v216;
      v219 = *(*(v205 + 48) + ((j << 9) | (8 * __clz(__rbit64(v216)))));

      if (!v219)
      {
        break;
      }

      while (1)
      {
        v283 = v218;
        *&v284 = v219;
        type metadata accessor for NXXPCConnection();
        sub_25C490490(&unk_27FC0A5F8, type metadata accessor for NXXPCConnection, &protocol conformance descriptor for NXXPCConnection);
        *&v285 = sub_25C4C89A0();
        *(&v285 + 1) = v221;
        MEMORY[0x25F887A50](10, 0xE100000000000000);
        v222 = v285;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v214 = sub_25C458868(0, *(v214 + 2) + 1, 1, v214);
        }

        v224 = *(v214 + 2);
        v223 = *(v214 + 3);
        if (v224 >= v223 >> 1)
        {
          v214 = sub_25C458868((v223 > 1), v224 + 1, 1, v214);
        }

        *(v214 + 2) = v224 + 1;
        *&v214[16 * v224 + 32] = v222;
        v208 = j;
        v205 = v282;
        v209 = v283;
        if ((v282 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_134:
        v220 = sub_25C4C8860();
        if (v220)
        {
          *&v284 = v220;
          type metadata accessor for NXXPCConnection();
          swift_dynamicCast();
          v219 = v285;
          j = v208;
          v218 = v209;
          if (v285)
          {
            continue;
          }
        }

        goto LABEL_142;
      }
    }

LABEL_142:
    sub_25C48B0D8(v205);
    *&v285 = 0;
    *(&v285 + 1) = 0xE000000000000000;
    sub_25C4C88F0();

    *&v285 = 0xD000000000000015;
    *(&v285 + 1) = 0x800000025C4D0B90;
    *&v284 = *(v214 + 2);
    v225 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v225);

    MEMORY[0x25F887A50](171785504, 0xE400000000000000);
    MEMORY[0x25F887A50](v285, *(&v285 + 1));

    *&v285 = v214;

    v226 = v258;
    sub_25C4623E8(&v285);
    v258 = v226;
    if (v226)
    {
      goto LABEL_172;
    }

    v227 = *(v285 + 16);
    if (v227)
    {
      v228 = (v285 + 40);
      do
      {
        v229 = *(v228 - 1);
        v230 = *v228;

        MEMORY[0x25F887A50](v229, v230);

        v228 += 2;
        --v227;
      }

      while (v227);
    }

    goto LABEL_147;
  }

  v204 = sub_25C4C8840();

  if (v204)
  {
    goto LABEL_121;
  }

LABEL_147:
  sub_25C48B0E0();
  swift_beginAccess();

  v231 = sub_25C4C8730();

  v232 = *(v231 + 16);
  if (!v232 || (v281 = v231, v233 = objc_allocWithZone(MEMORY[0x277CBEBD0]), , v234 = sub_25C4C8540(), , v235 = [v233 initWithSuiteName_], v234, (v282 = v235) == 0))
  {

    return v288;
  }

  v236 = (v281 + 40);
  v237 = MEMORY[0x277D84F90];
  v238 = MEMORY[0x277D837D0];
  do
  {
    v283 = v237;
    v239 = *(v236 - 1);
    v240 = *v236;
    *&v287 = 0;
    *(&v287 + 1) = 0xE000000000000000;

    v241 = sub_25C4C8540();
    v242 = [v282 valueForKey_];

    if (v242)
    {
      sub_25C4C87E0();
      swift_unknownObjectRelease();
      sub_25C48B180(&v284, &v285);
    }

    else
    {
      v286 = v238;
      *&v285 = 63;
      *(&v285 + 1) = 0xE100000000000000;
    }

    sub_25C4C8920();
    __swift_destroy_boxed_opaque_existential_0(&v285);
    v285 = v287;
    *&v284 = 10;
    *(&v284 + 1) = 0xE100000000000000;
    *&v287 = 9342946;
    *(&v287 + 1) = 0xA300000000000000;
    sub_25C48B12C();
    v243 = v238;
    v244 = sub_25C4C87D0();
    v246 = v245;

    *&v285 = v239;
    *(&v285 + 1) = v240;
    MEMORY[0x25F887A50](8250, 0xE200000000000000);
    MEMORY[0x25F887A50](v244, v246);

    MEMORY[0x25F887A50](10, 0xE100000000000000);
    v247 = v285;
    v237 = v283;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v237 = sub_25C458868(0, *(v237 + 2) + 1, 1, v237);
    }

    v249 = *(v237 + 2);
    v248 = *(v237 + 3);
    if (v249 >= v248 >> 1)
    {
      v237 = sub_25C458868((v248 > 1), v249 + 1, 1, v237);
    }

    *(v237 + 2) = v249 + 1;
    *&v237[16 * v249 + 32] = v247;
    v236 += 2;
    --v232;
    v238 = v243;
  }

  while (v232);

  *&v285 = 0;
  *(&v285 + 1) = 0xE000000000000000;
  sub_25C4C88F0();

  *&v285 = 0x66657250203D3D0ALL;
  *(&v285 + 1) = 0xEB00000000203A73;
  *&v284 = *(v237 + 2);
  v250 = sub_25C4C89A0();
  MEMORY[0x25F887A50](v250);

  MEMORY[0x25F887A50](171785504, 0xE400000000000000);
  MEMORY[0x25F887A50](v285, *(&v285 + 1));

  *&v285 = v237;

  v251 = v258;
  sub_25C4623E8(&v285);
  if (!v251)
  {

    v252 = *(v285 + 16);
    if (v252)
    {
      v253 = (v285 + 40);
      do
      {
        v254 = *(v253 - 1);
        v255 = *v253;

        MEMORY[0x25F887A50](v254, v255);

        v253 += 2;
        --v252;
      }

      while (v252);
    }

    return v288;
  }

  v257 = v251;
LABEL_174:

  __break(1u);
  return result;
}

unint64_t sub_25C484038()
{
  result = qword_27FC0A5C0;
  if (!qword_27FC0A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A5C0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_25C4840F0()
{
  v1 = v0;
  v2 = sub_25C4C8100();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v7 = sub_25C4C8540();

  v8 = [v6 initWithSuiteName_];

  v9 = *MEMORY[0x277D358F0];
  v54 = *(v3 + 104);
  v54(v5, v9, v2);
  v10 = sub_25C4C80F0();
  v12 = v11;
  v53 = *(v3 + 8);
  v53(v5, v2);
  v52 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__prefNetworkServerEnabled;
  v55 = *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__prefNetworkServerEnabled);
  v13 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_prefNetworkServerEnabledOverride;
  swift_beginAccess();
  v14 = *(v1 + v13);
  v56 = v8;
  if (v14 != 2 || v8 && (v15 = v8, LOBYTE(v14) = sub_25C4C8740(), v15, v8 = v56, v14 != 2))
  {
    if (v55 != (v14 & 1))
    {
      goto LABEL_7;
    }

LABEL_11:

    v27 = v53;
    v54(v5, *MEMORY[0x277D358E8], v2);
    goto LABEL_14;
  }

  if ((v55 & 1) == 0)
  {
    goto LABEL_11;
  }

  LOBYTE(v14) = 0;
LABEL_7:
  v50 = v10;
  if (qword_27FC0B5D0 != -1)
  {
    swift_once();
  }

  v16 = sub_25C4C7BD0();
  __swift_project_value_buffer(v16, qword_27FC0B5D8);

  v17 = sub_25C4C7BB0();
  v18 = sub_25C4C8720();

  v51 = v17;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v49 = v2;
    v20 = v19;
    v21 = swift_slowAlloc();
    v57[0] = v21;
    *v20 = 136315650;
    v22 = sub_25C458990(v50, v12, v57);

    *(v20 + 4) = v22;
    *(v20 + 12) = 1024;
    *(v20 + 14) = v55;
    *(v20 + 18) = 1024;
    *(v20 + 20) = v14 & 1;
    v23 = v18;
    v24 = v51;
    _os_log_impl(&dword_25C452000, v51, v23, "Pref changed: key=%s, value=%{BOOL}d -> %{BOOL}d", v20, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v25 = v21;
    v8 = v56;
    MEMORY[0x25F888630](v25, -1, -1);
    v26 = v20;
    v2 = v49;
    MEMORY[0x25F888630](v26, -1, -1);
  }

  else
  {
  }

  v27 = v53;
  v28 = v54;
  *(v1 + v52) = v14 & 1;
  v28(v5, *MEMORY[0x277D358E8], v2);
LABEL_14:
  v29 = sub_25C4C80F0();
  v31 = v30;
  v27(v5, v2);
  v32 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_prefSecurityRequired;
  swift_beginAccess();
  v33 = *(v1 + v32);
  if (v8)
  {
    v34 = v8;
    v35 = sub_25C4C8740();

    if (v33 == (v35 & 1))
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((v33 & 1) == 0)
    {
LABEL_23:

      goto LABEL_26;
    }

    v35 = 0;
  }

  if (qword_27FC0B5D0 != -1)
  {
    swift_once();
  }

  v36 = sub_25C4C7BD0();
  __swift_project_value_buffer(v36, qword_27FC0B5D8);

  v37 = sub_25C4C7BB0();
  v38 = sub_25C4C8720();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v57[0] = v40;
    *v39 = 136315650;
    v41 = sub_25C458990(v29, v31, v57);

    *(v39 + 4) = v41;
    *(v39 + 12) = 1024;
    *(v39 + 14) = v33;
    *(v39 + 18) = 1024;
    *(v39 + 20) = v35 & 1;
    _os_log_impl(&dword_25C452000, v37, v38, "Pref changed: key=%s, value=%{BOOL}d -> %{BOOL}d", v39, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v40);
    v42 = v40;
    v8 = v56;
    MEMORY[0x25F888630](v42, -1, -1);
    MEMORY[0x25F888630](v39, -1, -1);
  }

  else
  {
  }

  *(v1 + v32) = v35 & 1;
LABEL_26:
  v43 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__managers;
  swift_beginAccess();
  v44 = *(v1 + v43);
  v45 = *(v44 + 16);
  if (v45)
  {
    v46 = v44 + 32;

    do
    {
      sub_25C48BE38(v46, v57);
      v47 = v58;
      v48 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      (*(v48 + 32))(v47, v48);
      __swift_destroy_boxed_opaque_existential_0(v57);
      v46 += 40;
      --v45;
    }

    while (v45);

    v8 = v56;
  }

  sub_25C484738();
}

uint64_t sub_25C484738()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__updatePending) = 0;
  if (*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__prefNetworkServerEnabled) & 1) != 0 || (sub_25C4855C0(), (v2))
  {
    sub_25C485838();
  }

  else
  {
    sub_25C484E24();
  }

  v3 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__osStateHandler;
  if (!*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__osStateHandler))
  {
    v4 = *(v0 + 16);
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = objc_allocWithZone(MEMORY[0x277D028D0]);

    v7 = sub_25C4C8540();
    v34 = sub_25C4903FC;
    v35 = v5;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_25C48AF1C;
    v33 = &block_descriptor_138;
    v8 = _Block_copy(&aBlock);
    v9 = [v6 initWithTitle:v7 dispatchQueue:v4 handler:v8];

    _Block_release(v8);

    v10 = *(v1 + v3);
    *(v1 + v3) = v9;
  }

  v11 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__prefChangedNotification;
  if (!*(v1 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__prefChangedNotification))
  {
    sub_25C4C7CF0();
    v12 = *(v1 + 16);
    swift_allocObject();
    swift_weakInit();
    sub_25C4C7B70();
    swift_allocObject();
    v13 = v12;
    *(v1 + v11) = sub_25C4C7B60();
  }

  v14 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcListener;
  if (!*(v1 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcListener))
  {
    v15 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_localOnly;
    swift_beginAccess();
    if (*(v1 + v15) == 1)
    {
      mach_service = xpc_connection_create(0, *(v1 + 16));
    }

    else
    {
      sub_25C4C7C90();
      v17 = *(v1 + 16);
      v18 = sub_25C4C8570();

      mach_service = xpc_connection_create_mach_service((v18 + 32), v17, 1uLL);
    }

    *(v1 + v14) = mach_service;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    v34 = sub_25C48E800;
    v35 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_25C456294;
    v33 = &block_descriptor_122;
    v22 = _Block_copy(&aBlock);

    xpc_connection_set_event_handler(mach_service, v22);
    _Block_release(v22);
    xpc_connection_activate(mach_service);
    swift_unknownObjectRelease_n();
  }

  v23 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__managers;
  result = swift_beginAccess();
  v25 = *(v1 + v23);
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = v25 + 32;

    do
    {
      sub_25C48BE38(v27, &aBlock);
      v28 = v33;
      v29 = v34;
      __swift_project_boxed_opaque_existential_1(&aBlock, v33);
      v29[5](v28, v29);
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      v27 += 40;
      --v26;
    }

    while (v26);
  }

  return result;
}

uint64_t sub_25C484BB0(uint64_t a1, uint64_t a2)
{
  v5 = sub_25C4C8470();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25C4C8490();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = a1;
  v17 = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25C4676B4;
  aBlock[3] = a2;
  v13 = _Block_copy(aBlock);

  sub_25C4C8480();
  v15[1] = MEMORY[0x277D84F90];
  sub_25C490490(&unk_27FC0A180, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A7B0, &qword_25C4C9AE0);
  sub_25C48B830();
  sub_25C4C8800();
  MEMORY[0x25F887C10](0, v12, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_25C484E24()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener))
  {
    v2 = qword_27FC0B5D0;

    if (v2 != -1)
    {
LABEL_18:
      swift_once();
    }

    v3 = sub_25C4C7BD0();
    __swift_project_value_buffer(v3, qword_27FC0B5D8);
    v4 = sub_25C4C7BB0();
    v5 = sub_25C4C8720();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_25C452000, v4, v5, "Network listener stop", v6, 2u);
      MEMORY[0x25F888630](v6, -1, -1);
    }

    sub_25C4C81E0();
  }

  v7 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkServerSessions;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_14:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = *(*(v8 + 56) + ((v14 << 9) | (8 * v15)));
      sub_25C498274();

      if (!v11)
      {
        goto LABEL_10;
      }
    }
  }

  while (1)
  {
LABEL_10:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_14;
    }
  }

  *(v1 + v7) = MEMORY[0x277D84F98];
}

void sub_25C485020()
{
  if (*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__invalidateCalled) == 1 && !*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener) && !*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcListener))
  {
    v1 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__operationCreators;
    swift_beginAccess();
    v2 = MEMORY[0x277D84F98];
    *(v0 + v1) = MEMORY[0x277D84F98];

    v3 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__requestRegistrations;
    swift_beginAccess();
    *(v0 + v3) = v2;

    v4 = (v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_networkServerReadyHandler);
    swift_beginAccess();
    v5 = *v4;
    v6 = v4[1];
    *v4 = 0;
    v4[1] = 0;
    sub_25C45A2C8(v5, v6);
    v7 = v0;
    v8 = (v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_xpcConnectionAcceptHandler);
    swift_beginAccess();
    v9 = *v8;
    v10 = v8[1];
    *v8 = 0;
    v8[1] = 0;
    sub_25C45A2C8(v9, v10);
    if (qword_27FC0B5D0 != -1)
    {
      swift_once();
    }

    v11 = sub_25C4C7BD0();
    __swift_project_value_buffer(v11, qword_27FC0B5D8);
    v12 = sub_25C4C7BB0();
    v13 = sub_25C4C8720();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_25C452000, v12, v13, "Invalidated", v14, 2u);
      MEMORY[0x25F888630](v14, -1, -1);
    }

    v15 = (v7 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_invalidationHandler);
    swift_beginAccess();
    v16 = *v15;
    if (*v15)
    {
      v17 = v15[1];

      v16(v18);
      sub_25C45A2C8(v16, v17);
      v19 = *v15;
    }

    else
    {
      v19 = 0;
    }

    v20 = v15[1];
    *v15 = 0;
    v15[1] = 0;
    sub_25C45A2C8(v19, v20);
  }
}

uint64_t sub_25C485248()
{
  v1 = sub_25C4C8470();
  v16 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25C4C8490();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25C4C84C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v0 + 16);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v15[1] = v12;
  LOBYTE(v12) = sub_25C4C84E0();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    if ((*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__updatePending) & 1) == 0)
    {
      *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__updatePending) = 1;
      aBlock[4] = sub_25C48BC94;
      aBlock[5] = v0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25C4676B4;
      aBlock[3] = &block_descriptor_7_0;
      v14 = _Block_copy(aBlock);

      sub_25C4C8480();
      v17 = MEMORY[0x277D84F90];
      sub_25C490490(&unk_27FC0A180, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A7B0, &qword_25C4C9AE0);
      sub_25C48B830();
      sub_25C4C8800();
      MEMORY[0x25F887C10](0, v7, v3, v14);
      _Block_release(v14);
      (*(v16 + 8))(v3, v1);
      (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_25C4855C0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcPublisher;
  swift_beginAccess();
  if (*(v1 + v2))
  {

    v3 = sub_25C45CC38();

    if (v3)
    {
      return;
    }
  }

  v4 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcConnections;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {

    sub_25C4C8830();
    type metadata accessor for NXXPCConnection();
    sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection, &protocol conformance descriptor for NXXPCConnection);
    sub_25C4C8640();
    v5 = v18;
    v6 = v19;
    v7 = v20;
    v8 = v21;
    v9 = v22;
  }

  else
  {
    v10 = -1 << *(v5 + 32);
    v6 = v5 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v5 + 56);

    v8 = 0;
  }

  while (v5 < 0)
  {
    if (!sub_25C4C8860() || (type metadata accessor for NXXPCConnection(), swift_dynamicCast(), !v17))
    {
LABEL_19:
      sub_25C48B0D8(v5);
      return;
    }

LABEL_10:
    v14 = sub_25C469834();

    if (v14)
    {
      goto LABEL_19;
    }
  }

  v15 = v8;
  v16 = v9;
  if (v9)
  {
LABEL_9:
    v9 = (v16 - 1) & v16;
    v13 = *(*(v5 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v13)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v8 >= ((v7 + 64) >> 6))
    {
      goto LABEL_19;
    }

    v16 = *(v6 + 8 * v8);
    ++v15;
    if (v16)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_25C485838()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A650, &qword_25C4CA6B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - v2;
  v4 = sub_25C4C8160();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v25 - v10;
  v12 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener;
  if (!*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener))
  {
    v26 = v0;
    if (qword_27FC0B5D0 != -1)
    {
      swift_once();
    }

    v13 = sub_25C4C7BD0();
    __swift_project_value_buffer(v13, qword_27FC0B5D8);
    v14 = sub_25C4C7BB0();
    v15 = sub_25C4C8720();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 33554688;
      *(v16 + 4) = sub_25C4C7CE0();
      _os_log_impl(&dword_25C452000, v14, v15, "Network listener start: port=%hu", v16, 6u);
      MEMORY[0x25F888630](v16, -1, -1);
    }

    sub_25C4C7CE0();
    sub_25C4C8140();
    sub_25C4C8350();
    sub_25C4C8340();
    (*(v5 + 16))(v8, v11, v4);
    sub_25C4C8220();
    swift_allocObject();
    v17 = sub_25C4C81D0();
    swift_retain_n();
    sub_25C4C7CB0();
    sub_25C4C81F0();
    v18 = sub_25C4C8200();
    (*(*(v18 - 8) + 56))(v3, 0, 1, v18);
    sub_25C4C8210();
    (*(v5 + 8))(v11, v4);
    *(v26 + v12) = v17;

    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;

    sub_25C4C8190();

    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    swift_weakInit();

    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = v23;

    sub_25C4C8180();

    sub_25C4C81C0();
  }

  return result;
}

uint64_t sub_25C485DE0@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_networkServerReadyHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
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

uint64_t sub_25C485E80(uint64_t *a1, void *a2)
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

  v7 = (*a2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_networkServerReadyHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_25C45A2B8(v3, v4);
  return sub_25C45A2C8(v8, v9);
}

void sub_25C485FE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25C4C8170();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v8 = sub_25C4C84C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 40);
  v12 = *(v2 + 16);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  LOBYTE(v12) = sub_25C4C84E0();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    if (qword_27FC0B5D0 == -1)
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
  v14 = sub_25C4C7BD0();
  __swift_project_value_buffer(v14, qword_27FC0B5D8);

  v15 = sub_25C4C7BB0();
  v16 = sub_25C4C8720();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v46[0] = v18;
    *v17 = 136315138;
    sub_25C4C8310();
    v19 = sub_25C4C8110();
    v20 = v7;
    v22 = v21;
    (*(v5 + 8))(v20, v4);
    v23 = sub_25C458990(v19, v22, v46);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_25C452000, v15, v16, "Network listener accept connection: peer=%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x25F888630](v18, -1, -1);
    MEMORY[0x25F888630](v17, -1, -1);
  }

  type metadata accessor for NXSessionDaemon(0);

  v24 = sub_25C494690(a1, v2);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = &v24[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_serverEventHandler];
  swift_beginAccess();
  v27 = *v26;
  v28 = v26[1];
  *v26 = sub_25C48E4B4;
  v26[1] = v25;

  sub_25C45A2C8(v27, v28);

  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = v24;
  v31 = &v24[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_invalidationHandler];
  swift_beginAccess();
  v32 = *v31;
  v33 = v31[1];
  *v31 = sub_25C48E738;
  v31[1] = v30;

  sub_25C45A2C8(v32, v33);

  v34 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkServerSessions;
  swift_beginAccess();
  v35 = v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v2 + v34);
  *(v2 + v34) = 0x8000000000000000;
  sub_25C48D154(v35, v35, isUniquelyReferenced_nonNull_native);
  *(v2 + v34) = v45;
  v37 = swift_endAccess();
  sub_25C497710(v37, v38, v39, v40, v41, v42, v43, v44, v45);
}

void sub_25C48647C(uint64_t a1)
{
  v3 = sub_25C4C8390();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v69 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v69 - v12;
  MEMORY[0x28223BE20](v11);
  v71 = &v69 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5B8, &qword_25C4CA428);
  MEMORY[0x28223BE20](v15 - 8);
  v70 = &v69 - v16;
  v17 = sub_25C4C81B0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, a1, v17);
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 == *MEMORY[0x277CD8B40])
  {
    (*(v18 + 96))(v20, v17);
    (*(v4 + 32))(v10, v20, v3);
    if (qword_27FC0B5D0 != -1)
    {
      swift_once();
    }

    v22 = sub_25C4C7BD0();
    __swift_project_value_buffer(v22, qword_27FC0B5D8);
    (*(v4 + 16))(v7, v10, v3);
    v23 = sub_25C4C7BB0();
    v24 = sub_25C4C8720();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v72[0] = v26;
      *v25 = 136315138;
      sub_25C490490(&qword_27FC0A550, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      v27 = sub_25C4C8A30();
      v29 = v28;
      v30 = *(v4 + 8);
      v30(v7, v3);
      v31 = sub_25C458990(v27, v29, v72);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_25C452000, v23, v24, "Network listener waiting: error=%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x25F888630](v26, -1, -1);
      MEMORY[0x25F888630](v25, -1, -1);

      v30(v10, v3);
    }

    else
    {

      v45 = *(v4 + 8);
      v45(v7, v3);
      v45(v10, v3);
    }
  }

  else if (v21 == *MEMORY[0x277CD8B38])
  {
    v70 = v1;
    (*(v18 + 96))(v20, v17);
    v32 = v71;
    v33 = v3;
    (*(v4 + 32))(v71, v20, v3);
    if (qword_27FC0B5D0 != -1)
    {
      swift_once();
    }

    v34 = sub_25C4C7BD0();
    __swift_project_value_buffer(v34, qword_27FC0B5D8);
    (*(v4 + 16))(v13, v32, v3);
    v35 = sub_25C4C7BB0();
    v36 = sub_25C4C8710();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v72[0] = v69;
      *v37 = 136315138;
      sub_25C490490(&qword_27FC0A550, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      v38 = sub_25C4C8A30();
      v40 = v39;
      v41 = *(v4 + 8);
      v41(v13, v3);
      v42 = sub_25C458990(v38, v40, v72);
      v33 = v3;

      *(v37 + 4) = v42;
      _os_log_impl(&dword_25C452000, v35, v36, "### Network listener failed: error=%s", v37, 0xCu);
      v43 = v69;
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x25F888630](v43, -1, -1);
      v44 = v37;
      v32 = v71;
      MEMORY[0x25F888630](v44, -1, -1);
    }

    else
    {

      v41 = *(v4 + 8);
      v41(v13, v3);
    }

    *&v70[OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener] = 0;

    sub_25C485020();
    v41(v32, v33);
  }

  else if (v21 != *MEMORY[0x277CD8B30])
  {
    if (v21 == *MEMORY[0x277CD8B28])
    {
      if (qword_27FC0B5D0 != -1)
      {
        swift_once();
      }

      v46 = sub_25C4C7BD0();
      __swift_project_value_buffer(v46, qword_27FC0B5D8);

      v47 = v1;
      v48 = sub_25C4C7BB0();
      v49 = sub_25C4C8720();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = 7104878;
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v72[0] = v52;
        *v51 = 136315138;
        if (*&v1[OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener])
        {

          v53 = v70;
          sub_25C4C81A0();
          v54 = v53;

          v55 = sub_25C4C8160();
          v56 = *(v55 - 8);
          if ((*(v56 + 48))(v54, 1, v55) == 1)
          {
            sub_25C4666F8(v54, &qword_27FC0A5B8, &qword_25C4CA428);
            v57 = 0xE300000000000000;
          }

          else
          {
            v50 = sub_25C4C8150();
            v57 = v63;
            (*(v56 + 8))(v54, v55);
          }

          v1 = v47;
        }

        else
        {
          v57 = 0xE300000000000000;
        }

        v64 = sub_25C458990(v50, v57, v72);

        *(v51 + 4) = v64;
        _os_log_impl(&dword_25C452000, v48, v49, "Network listener ready: port=%s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x25F888630](v52, -1, -1);
        MEMORY[0x25F888630](v51, -1, -1);
      }

      v65 = &v1[OBJC_IVAR____TtC11NexusDaemon8NXDaemon_networkServerReadyHandler];
      swift_beginAccess();
      v66 = *v65;
      if (*v65)
      {
        v67 = *(v65 + 1);

        v66(v68);
        sub_25C45A2C8(v66, v67);
      }
    }

    else if (v21 == *MEMORY[0x277CD8B48])
    {
      v58 = v1;
      if (qword_27FC0B5D0 != -1)
      {
        swift_once();
      }

      v59 = sub_25C4C7BD0();
      __swift_project_value_buffer(v59, qword_27FC0B5D8);
      v60 = sub_25C4C7BB0();
      v61 = sub_25C4C8720();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_25C452000, v60, v61, "Network listener canceled", v62, 2u);
        MEMORY[0x25F888630](v62, -1, -1);
      }

      *&v58[OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener] = 0;

      sub_25C485020();
    }

    else
    {
      (*(v18 + 8))(v20, v17);
    }
  }
}

uint64_t sub_25C486EA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_25C48D154(a1, a2, isUniquelyReferenced_nonNull_native);
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
        sub_25C48DD00();
        v11 = v13;
      }

      result = sub_25C463960(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_25C486F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A608, &qword_25C4CA450);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_25C4C8090();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_25C4666F8(a1, &qword_27FC0A608, &qword_25C4CA450);
    sub_25C48BC98(a2, a3, MEMORY[0x277D35838], MEMORY[0x277D35838], &qword_27FC0A648, &qword_25C4CA6A8, v9);

    return sub_25C4666F8(v9, &qword_27FC0A608, &qword_25C4CA450);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_25C48D29C(v13, a2, a3, isUniquelyReferenced_nonNull_native, MEMORY[0x277D35838], &qword_27FC0A648, &qword_25C4CA6A8, MEMORY[0x277D35838]);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_25C487188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A610, &unk_25C4CA458);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_25C4C8050();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_25C4666F8(a1, &unk_27FC0A610, &unk_25C4CA458);
    sub_25C48BC98(a2, a3, MEMORY[0x277D35830], MEMORY[0x277D35830], &unk_27FC0A638, &unk_25C4CA698, v9);

    return sub_25C4666F8(v9, &unk_27FC0A610, &unk_25C4CA458);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_25C48D29C(v13, a2, a3, isUniquelyReferenced_nonNull_native, MEMORY[0x277D35830], &unk_27FC0A638, &unk_25C4CA698, MEMORY[0x277D35830]);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_25C4873B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_25C48D464(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_25C4C7C50();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_25C48C1E0(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_25C48E0E4();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_25C4C7C50();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_25C48CE34(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_25C4C7C50();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_25C487570(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v55 = a5;
  v56 = a6;
  v53 = a3;
  v54 = a4;
  v61 = a1;
  v10 = sub_25C4C8090();
  v58 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v57 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A608, &qword_25C4CA450);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v52 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v47 - v15;
  v17 = sub_25C4C84C0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v8 + 16);
  *v20 = v21;
  (*(v18 + 104))(v20, *MEMORY[0x277D85200], v17);
  v22 = v21;
  v23 = sub_25C4C84E0();
  (*(v18 + 8))(v20, v17);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_9;
  }

  v24 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__operationCreators;
  swift_beginAccess();
  v25 = *(v8 + v24);
  v26 = *(v25 + 16);
  v51 = v7;
  if (v26)
  {
    v20 = v61;
    v27 = sub_25C462EC0(v61, a2);
    v23 = v58;
    if (v28)
    {
      (*(v58 + 16))(v16, *(v25 + 56) + *(v58 + 72) * v27, v10);
      v29 = 0;
    }

    else
    {
      v29 = 1;
    }
  }

  else
  {
    v29 = 1;
    v20 = v61;
    v23 = v58;
  }

  v50 = *(v23 + 56);
  v50(v16, v29, 1, v10);
  swift_endAccess();
  v30 = (*(v23 + 48))(v16, 1, v10);
  sub_25C4666F8(v16, &qword_27FC0A608, &qword_25C4CA450);
  if (v30 != 1)
  {
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_25C4C88F0();

    v59 = 0xD000000000000022;
    v60 = 0x800000025C4D0BD0;
    MEMORY[0x25F887A50](v20, a2);
    v40 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  v47[1] = v24;
  if (qword_27FC0B5D0 != -1)
  {
    goto LABEL_16;
  }

LABEL_9:
  v48 = v8;
  v31 = sub_25C4C7BD0();
  __swift_project_value_buffer(v31, qword_27FC0B5D8);

  v32 = v54;

  v33 = sub_25C4C7BB0();
  v34 = sub_25C4C8720();

  v35 = os_log_type_enabled(v33, v34);
  v49 = v10;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v59 = v37;
    *v36 = 136315394;
    *(v36 + 4) = sub_25C458990(v61, a2, &v59);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_25C458990(v53, v32, &v59);
    _os_log_impl(&dword_25C452000, v33, v34, "Register operation creator: name=%s, client=%s", v36, 0x16u);
    swift_arrayDestroy();
    v38 = v37;
    v23 = v58;
    MEMORY[0x25F888630](v38, -1, -1);
    v39 = v36;
    v20 = v61;
    MEMORY[0x25F888630](v39, -1, -1);
  }

  v42 = v57;
  sub_25C4C8070();
  v43 = v52;
  v44 = v49;
  (*(v23 + 16))(v52, v42, v49);
  v50(v43, 0, 1, v44);
  v45 = v48;
  swift_beginAccess();

  sub_25C486F60(v43, v20, a2);
  swift_endAccess();
  v46 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcPublisher;
  swift_beginAccess();
  if (*(v45 + v46))
  {
    swift_endAccess();

    sub_25C45FBB8(v20, a2);

    return (*(v23 + 8))(v42, v44);
  }

  else
  {
    (*(v23 + 8))(v42, v44);
    return swift_endAccess();
  }
}

uint64_t sub_25C487BCC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A608, &qword_25C4CA450);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  v12 = sub_25C4C84C0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v3 + 16);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  v17 = v16;
  LOBYTE(v16) = sub_25C4C84E0();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    if (qword_27FC0B5D0 == -1)
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
  __swift_project_value_buffer(v18, qword_27FC0B5D8);

  v19 = sub_25C4C7BB0();
  v20 = sub_25C4C8720();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v21 = 136315394;
    *(v21 + 4) = sub_25C458990(a1, a2, &v38);
    *(v21 + 12) = 1024;
    v22 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__operationCreators;
    swift_beginAccess();
    v23 = *(v3 + v22);
    if (*(v23 + 16) && (v24 = sub_25C462EC0(a1, a2), (v25 & 1) != 0))
    {
      v26 = *(v23 + 56);
      v34 = v24;
      v35 = v26;
      v27 = sub_25C4C8090();
      v28 = *(v27 - 8);
      v36 = a1;
      v29 = v28;
      (*(v28 + 16))(v11, v35 + *(v28 + 72) * v34, v27);
      (*(v29 + 56))(v11, 0, 1, v27);
      a1 = v36;
    }

    else
    {
      v27 = sub_25C4C8090();
      (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
    }

    swift_endAccess();
    sub_25C4C8090();
    v30 = (*(*(v27 - 8) + 48))(v11, 1, v27) != 1;
    sub_25C4666F8(v11, &qword_27FC0A608, &qword_25C4CA450);
    *(v21 + 14) = v30;

    _os_log_impl(&dword_25C452000, v19, v20, "Deregister operation creator: name=%s, present=%{BOOL}d", v21, 0x12u);
    v31 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x25F888630](v31, -1, -1);
    MEMORY[0x25F888630](v21, -1, -1);
  }

  else
  {
  }

  v32 = sub_25C4C8090();
  (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
  swift_beginAccess();

  sub_25C486F60(v9, a1, a2);
  return swift_endAccess();
}

void sub_25C4880C0(uint64_t a1, unint64_t a2, uint64_t a3, int a4, void (*a5)(uint64_t, uint64_t, void), uint64_t a6)
{
  v7 = v6;
  v44 = a6;
  v45 = a5;
  v43 = a4;
  v42 = a3;
  v10 = sub_25C4C8090();
  v41 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = sub_25C4C84C0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v7 + 16);
  *v19 = v20;
  (*(v17 + 104))(v19, *MEMORY[0x277D85200], v16);
  v21 = v20;
  LOBYTE(v20) = sub_25C4C84E0();
  (*(v17 + 8))(v19, v16);
  if (v20)
  {
    v22 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__operationCreators;
    swift_beginAccess();
    v23 = *(v7 + v22);
    v24 = a1;
    if (*(v23 + 16) && (v25 = sub_25C462EC0(a1, a2), (v26 & 1) != 0))
    {
      v27 = v41;
      (*(v41 + 16))(v13, *(v23 + 56) + *(v41 + 72) * v25, v10);
      (*(v27 + 32))(v15, v13, v10);
      swift_endAccess();
      v28 = sub_25C4C8080();
      v28(v24, a2, v42);
      v29 = v45;
      v38 = v37;

      v39 = swift_unknownObjectRetain();
      v29(v39, v38, 0);
      swift_unknownObjectRelease_n();
      (*(v27 + 8))(v15, v10);
    }

    else
    {
      swift_endAccess();
      v31 = v44;
      v30 = v45;
      if ((v43 & 1) == 0 || (v32 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcPublisher, swift_beginAccess(), !*(v7 + v32)) || (, v33 = sub_25C45E990(v24, a2, v42, v30, v31), , !v33))
      {
        v46 = 0;
        v47 = 0xE000000000000000;
        sub_25C4C88F0();

        v46 = 0xD00000000000001BLL;
        v47 = 0x800000025C4D0C00;
        MEMORY[0x25F887A50](v24, a2);
        v34 = objc_allocWithZone(sub_25C4C7B80());
        v35 = sub_25C4C7B90();
        swift_willThrow();
        v36 = v35;
        v30(v35, 0, 1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t NXDaemon.prefSecurityRequired.getter()
{
  v1 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_prefSecurityRequired;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NXDaemon.prefSecurityRequired.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_prefSecurityRequired;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t NXDaemon.prefNetworkServerEnabledOverride.getter()
{
  v1 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_prefNetworkServerEnabledOverride;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NXDaemon.prefNetworkServerEnabledOverride.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_prefNetworkServerEnabledOverride;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_25C4886CC(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v25 = sub_25C4C7DB0();
  v6 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25C4C84C0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = v3;
  v13 = *(v3 + 16);
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v14 = v13;
  LOBYTE(v13) = sub_25C4C84E0();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v16 = sub_25C4C7E60();
    v18 = v17;
    sub_25C48BE38(a1, v24);
    v19 = swift_allocObject();
    sub_25C490478(v24, v19 + 16);
    v20 = v22;
    *(v19 + 56) = v22;
    *(v19 + 64) = a3;

    sub_25C4C7DA0();
    sub_25C488948(v16, v18, v21, v20, a3, sub_25C48BEDC, v19);
    (*(v6 + 8))(v8, v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25C488948(void (*a1)(void, void, void), unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a7;
  v48 = a6;
  v51 = a5;
  v56 = a1;
  v10 = sub_25C4C8050();
  v53 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v52 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A610, &unk_25C4CA458);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v47 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - v15;
  v17 = sub_25C4C84C0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v7 + 16);
  *v20 = v21;
  (*(v18 + 104))(v20, *MEMORY[0x277D85200], v17);
  v22 = v21;
  LOBYTE(v21) = sub_25C4C84E0();
  (*(v18 + 8))(v20, v17);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_9;
  }

  v23 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__requestRegistrations;
  swift_beginAccess();
  v50 = v7;
  v24 = *(v7 + v23);
  if (*(v24 + 16))
  {
    v25 = v10;
    v26 = sub_25C462EC0(v56, a2);
    if (v27)
    {
      v28 = a2;
      v29 = v53;
      (*(v53 + 16))(v16, *(v24 + 56) + *(v53 + 72) * v26, v25);
      v30 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v25 = v10;
  }

  v28 = a2;
  v30 = 1;
  v29 = v53;
LABEL_7:
  v31 = *(v29 + 56);
  v31(v16, v30, 1, v25);
  swift_endAccess();
  v32 = (*(v29 + 48))(v16, 1, v25);
  sub_25C4666F8(v16, &unk_27FC0A610, &unk_25C4CA458);
  if (v32 != 1)
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_25C4C88F0();

    v54 = 0xD000000000000027;
    v55 = 0x800000025C4D0C20;
    MEMORY[0x25F887A50](v56, v28);
    v45 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  v33 = v52;
  v46 = a4;
  sub_25C4C8030();
  v34 = v29;
  a2 = v28;
  v35 = v47;
  (*(v34 + 16))(v47, v33, v25);
  v31(v35, 0, 1, v25);
  swift_beginAccess();

  sub_25C487188(v35, v56, v28);
  swift_endAccess();
  v10 = v25;
  if (qword_27FC0B5D0 != -1)
  {
    goto LABEL_16;
  }

LABEL_9:
  v36 = sub_25C4C7BD0();
  __swift_project_value_buffer(v36, qword_27FC0B5D8);

  v37 = v51;

  v38 = sub_25C4C7BB0();
  v39 = sub_25C4C8720();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v54 = v41;
    *v40 = 136315394;
    *(v40 + 4) = sub_25C458990(v56, a2, &v54);
    *(v40 + 12) = 2080;
    *(v40 + 14) = sub_25C458990(v46, v37, &v54);
    _os_log_impl(&dword_25C452000, v38, v39, "Request handler registered: requestName=%s, client=%s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v41, -1, -1);
    MEMORY[0x25F888630](v40, -1, -1);
  }

  v42 = v50;
  v43 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcPublisher;
  swift_beginAccess();
  if (*(v42 + v43))
  {
    swift_endAccess();

    sub_25C460F14(v56, a2);

    return (*(v53 + 8))(v52, v10);
  }

  else
  {
    (*(v53 + 8))(v52, v10);
    return swift_endAccess();
  }
}

void sub_25C488F90(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A610, &unk_25C4CA458);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25[-1] - v10;
  v12 = sub_25C4C84C0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v25[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v4 + 16);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  v17 = v16;
  LOBYTE(v16) = sub_25C4C84E0();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v18 = sub_25C4C8050();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    swift_beginAccess();

    sub_25C487188(v11, a1, a2);
    swift_endAccess();
    if (qword_27FC0B5D0 == -1)
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
  v19 = sub_25C4C7BD0();
  __swift_project_value_buffer(v19, qword_27FC0B5D8);

  v20 = sub_25C4C7BB0();
  v21 = sub_25C4C8720();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25[0] = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_25C458990(a1, a2, v25);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_25C458990(a3, a4, v25);
    _os_log_impl(&dword_25C452000, v20, v21, "Request handler deregistered: requestName=%s, client=%s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v23, -1, -1);
    MEMORY[0x25F888630](v22, -1, -1);
  }
}

uint64_t sub_25C4892D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v56 = a5;
  v9 = v8;
  v52 = a7;
  v53 = a8;
  v54 = a3;
  v55 = a4;
  v50 = sub_25C4C8050();
  v61 = *(v50 - 8);
  v13 = MEMORY[0x28223BE20](v50);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v51 = &v49 - v16;
  v17 = sub_25C4C84C0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v9 + 2);
  *v20 = v21;
  (*(v18 + 104))(v20, *MEMORY[0x277D85200], v17);
  v22 = v21;
  LOBYTE(v21) = sub_25C4C84E0();
  v24 = *(v18 + 8);
  v23 = v18 + 8;
  v24(v20, v17);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v25 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__requestRegistrations;
  swift_beginAccess();
  v26 = *&v9[v25];
  v23 = a2;
  if (*(v26 + 16))
  {
    v27 = sub_25C462EC0(a1, a2);
    if (v28)
    {
      v20 = v61[2];
      a2 = v50;
      v9 = v51;
      (v20)(v51, *(v26 + 56) + v61[9] * v27, v50);
      swift_endAccess();
      if (qword_27FC0B5D0 == -1)
      {
LABEL_5:
        v29 = sub_25C4C7BD0();
        __swift_project_value_buffer(v29, qword_27FC0B5D8);
        (v20)(v15, v9, a2);

        v30 = sub_25C4C7BB0();
        v31 = sub_25C4C8720();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v60[0] = v49;
          *v32 = 136315394;
          *(v32 + 4) = sub_25C458990(a1, v23, v60);
          *(v32 + 12) = 2080;
          v33 = sub_25C4C8020();
          v35 = v34;
          v36 = v15;
          v37 = v61[1];
          v37(v36, a2);
          v38 = sub_25C458990(v33, v35, v60);

          *(v32 + 14) = v38;
          _os_log_impl(&dword_25C452000, v30, v31, "Request handler invoke: requestName=%s, client=%s", v32, 0x16u);
          v39 = v49;
          swift_arrayDestroy();
          MEMORY[0x25F888630](v39, -1, -1);
          v40 = v32;
          v9 = v51;
          MEMORY[0x25F888630](v40, -1, -1);

          v41 = v37;
        }

        else
        {

          v41 = v61[1];
          v41(v15, a2);
        }

        v46 = sub_25C4C8040();
        v47 = swift_allocObject();
        *(v47 + 16) = v52;
        *(v47 + 24) = v53;

        v48 = v57;
        v46(a1, v23, v54, v55, v56, sub_25C48C1B4, v47);
        if (v48)
        {
          v41(v9, a2);
        }

        else
        {
          v57 = 0;
          v41(v9, a2);
        }
      }

LABEL_17:
      swift_once();
      goto LABEL_5;
    }
  }

  swift_endAccess();
  if ((a6 & 1) == 0 || (v42 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcPublisher, swift_beginAccess(), !*&v9[v42]) || (, v43 = sub_25C460380(a1, a2, v54, v55, v56, v52, v53), result = , !v43))
  {
    v58 = 0;
    v59 = 0xE000000000000000;
    sub_25C4C88F0();

    v58 = 0xD000000000000020;
    v59 = 0x800000025C4D0C50;
    MEMORY[0x25F887A50](a1, a2);
    v45 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  return result;
}

id sub_25C48988C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v23 = a2;
  v7 = sub_25C4C7C50();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25C4C84C0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v4 + 16);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v16 = v15;
  LOBYTE(v15) = sub_25C4C84E0();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v18 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__sessionMap;
    swift_beginAccess();
    v19 = *(v4 + v18);
    if (*(v19 + 16) && (v20 = sub_25C48C1E0(a1), (v21 & 1) != 0))
    {
      v23 = *(*(v19 + 56) + 8 * v20);
      swift_endAccess();
      v22 = v23;

      return v22;
    }

    else
    {
      swift_endAccess();
      type metadata accessor for NXSessionDaemon(0);
      (*(v8 + 16))(v10, a1, v7);

      return sub_25C494274(v10, v23, a3, v4);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25C489B00(char *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_endpoint;
  v5 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__sessionMap;
  swift_beginAccess();
  v6 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v5);
  *(v2 + v5) = 0x8000000000000000;
  sub_25C48D464(v6, &a1[v4], isUniquelyReferenced_nonNull_native);
  *(v2 + v5) = v9;
  return swift_endAccess();
}

uint64_t sub_25C489BA8(uint64_t a1)
{
  v2 = sub_25C4C7C50();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_endpoint);
  swift_beginAccess();
  sub_25C4873B0(0, v4);
  return swift_endAccess();
}

uint64_t sub_25C489CA8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_xpcConnectionAcceptHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25C48D9A8;
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

uint64_t sub_25C489D48(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25C48D970;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_xpcConnectionAcceptHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_25C45A2B8(v3, v4);
  return sub_25C45A2C8(v8, v9);
}

uint64_t sub_25C489E30(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_25C489EB8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

double sub_25C489F88(uint64_t *a1)
{
  swift_beginAccess();

  return result;
}

xpc_endpoint_t NXDaemon.xpcEndpoint.getter()
{
  v1 = sub_25C4C84C0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 16);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_25C4C84E0();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v8 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcEndpoint;
    v9 = *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcEndpoint);
    if (!v9)
    {
      if (*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcListener))
      {
        v9 = xpc_endpoint_create(*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcListener));
        *(v0 + v8) = v9;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
      }

      else
      {
        v9 = 0;
      }
    }

    swift_unknownObjectRetain();
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25C48A130(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_25C4C8870();

    return v3 & 1;
  }

  else
  {
    if (*(a2 + 16) && (type metadata accessor for NXXPCConnection(), sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection, &protocol conformance descriptor for NXXPCConnection), v5 = sub_25C4C8510(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
    {
      v8 = ~v6;
      sub_25C490490(&unk_27FC0A3F0, type metadata accessor for NXXPCConnection, &protocol conformance descriptor for NXXPCConnection);
      do
      {
        v9 = sub_25C4C8530();
        if (v9)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
    }

    else
    {
      v9 = 0;
    }

    return v9 & 1;
  }
}

uint64_t NXDaemon.deinit()
{
  v1 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_environment;
  v2 = sub_25C4C7B30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_25C45A2C8(*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_invalidationHandler), *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_invalidationHandler + 8));

  sub_25C45A2C8(*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_networkServerReadyHandler), *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_networkServerReadyHandler + 8));

  sub_25C45A2C8(*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_xpcConnectionAcceptHandler), *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_xpcConnectionAcceptHandler + 8));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t NXDaemon.__deallocating_deinit()
{
  NXDaemon.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t (*CUEnvironmentValues.createBluetoothAdvertiser.getter())()
{
  sub_25C48D630();
  sub_25C4C7B40();
  *(swift_allocObject() + 16) = v1;
  return sub_25C490574;
}

void (*CUEnvironmentValues.createBluetoothAdvertiser.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_25C48D630();
  sub_25C4C7B40();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v4 + 16);
  *v4 = sub_25C490574;
  *(v4 + 8) = v5;
  return sub_25C48A6D8;
}

void sub_25C48A6D8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v2[2] = sub_25C490578;
    v2[3] = v5;

    sub_25C4C7B50();
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v2[2] = sub_25C490578;
    v2[3] = v6;
    sub_25C4C7B50();
  }

  free(v2);
}

uint64_t (*CUEnvironmentValues.createNANPublisher.getter())()
{
  sub_25C48D684();
  sub_25C4C7B40();
  *(swift_allocObject() + 16) = v1;
  return sub_25C48D6D8;
}

void (*CUEnvironmentValues.createNANPublisher.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_25C48D684();
  sub_25C4C7B40();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v4 + 16);
  *v4 = sub_25C490574;
  *(v4 + 8) = v5;
  return sub_25C48A9B8;
}

void sub_25C48A9B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v2[2] = sub_25C490578;
    v2[3] = v5;

    sub_25C4C7B50();
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v2[2] = sub_25C490578;
    v2[3] = v6;
    sub_25C4C7B50();
  }

  free(v2);
}

uint64_t sub_25C48AAF0@<X0>(void **a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  a2(0);
  result = a3(v8);
  *a5 = result;
  a5[1] = a4;
  return result;
}

uint64_t (*CUEnvironmentValues.createNANSubscriber.getter())()
{
  sub_25C48D6E0();
  sub_25C4C7B40();
  *(swift_allocObject() + 16) = v1;
  return sub_25C490574;
}

double sub_25C48ABD8@<D0>(uint64_t (*a1)(void)@<X3>, _OWORD *a3@<X8>)
{
  a1();
  sub_25C4C7B40();
  result = *&v5;
  *a3 = v5;
  return result;
}

uint64_t sub_25C48AC54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t), uint64_t a6)
{
  a5(a1, a2);

  return sub_25C4C7B50();
}

uint64_t sub_25C48ACF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  a5(v9, v10);
  return sub_25C4C7B50();
}

void (*CUEnvironmentValues.createNANSubscriber.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_25C48D6E0();
  sub_25C4C7B40();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v4 + 16);
  *v4 = sub_25C490574;
  *(v4 + 8) = v5;
  return sub_25C48AE30;
}

void sub_25C48AE30(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v2[2] = sub_25C490578;
    v2[3] = v5;

    sub_25C4C7B50();
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v2[2] = sub_25C490578;
    v2[3] = v6;
    sub_25C4C7B50();
  }

  free(v2);
}

id sub_25C48AF1C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  v3 = sub_25C4C8540();

  return v3;
}

void *sub_25C48AF90(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A698, &qword_25C4CA6C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A6A0, &qword_25C4CA6D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_25C48B0E0()
{
  result = qword_27FC0A5E8;
  if (!qword_27FC0A5E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FC0A5E8);
  }

  return result;
}

unint64_t sub_25C48B12C()
{
  result = qword_27FC0A5F0;
  if (!qword_27FC0A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A5F0);
  }

  return result;
}

_OWORD *sub_25C48B180(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25C48B190()
{
  v1 = v0;
  if (qword_27FC0B5D0 != -1)
  {
    swift_once();
  }

  v2 = sub_25C4C7BD0();
  __swift_project_value_buffer(v2, qword_27FC0B5D8);
  v3 = sub_25C4C7BB0();
  v4 = sub_25C4C8720();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25C452000, v3, v4, "Activate", v5, 2u);
    MEMORY[0x25F888630](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__startTicks;
  if (!*(v1 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__startTicks))
  {
    *(v1 + v6) = mach_absolute_time();
  }

  v7 = type metadata accessor for NXCloudServer(0);

  v9 = sub_25C4905F4(v8);
  v10 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_cloudServer;
  swift_beginAccess();
  v11 = *(v1 + v10);
  *(v1 + v10) = v9;
  v12 = v9;

  v13 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__managers;
  swift_beginAccess();
  v14 = *(v1 + v13);
  v15 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v13) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_25C48AF90(0, v14[2] + 1, 1, v14);
    *(v1 + v13) = v14;
  }

  v18 = v14[2];
  v17 = v14[3];
  if (v18 >= v17 >> 1)
  {
    v14 = sub_25C48AF90((v17 > 1), v18 + 1, 1, v14);
  }

  v50 = v7;
  v51 = sub_25C490490(&qword_27FC0A678, type metadata accessor for NXCloudServer, &unk_25C4CA6D8);
  *&v49 = v15;
  v14[2] = v18 + 1;
  sub_25C490478(&v49, &v14[5 * v18 + 4]);
  *(v1 + v13) = v14;
  swift_endAccess();
  v19 = type metadata accessor for NXDiagnosticsManager();

  v21 = sub_25C468564(v20);
  v22 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_diagnosticsManager;
  swift_beginAccess();
  *(v1 + v22) = v21;

  swift_beginAccess();
  v23 = *(v1 + v13);

  v24 = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v13) = v23;
  v48 = v15;
  if ((v24 & 1) == 0)
  {
    v23 = sub_25C48AF90(0, v23[2] + 1, 1, v23);
    *(v1 + v13) = v23;
  }

  v26 = v23[2];
  v25 = v23[3];
  if (v26 >= v25 >> 1)
  {
    v23 = sub_25C48AF90((v25 > 1), v26 + 1, 1, v23);
  }

  v50 = v19;
  v51 = sub_25C490490(&qword_27FC0A680, type metadata accessor for NXDiagnosticsManager, &unk_25C4C9FC0);
  *&v49 = v21;
  v23[2] = v26 + 1;
  sub_25C490478(&v49, &v23[5 * v26 + 4]);
  *(v1 + v13) = v23;
  swift_endAccess();
  v27 = type metadata accessor for NXNetworkManager();

  v29 = sub_25C4C3B98(v28);
  v30 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_networkManager;
  swift_beginAccess();
  *(v1 + v30) = v29;

  swift_beginAccess();
  v31 = *(v1 + v13);

  v32 = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v13) = v31;
  if ((v32 & 1) == 0)
  {
    v31 = sub_25C48AF90(0, v31[2] + 1, 1, v31);
    *(v1 + v13) = v31;
  }

  v34 = v31[2];
  v33 = v31[3];
  if (v34 >= v33 >> 1)
  {
    v31 = sub_25C48AF90((v33 > 1), v34 + 1, 1, v31);
  }

  v50 = v27;
  v51 = sub_25C490490(&qword_27FC0A688, type metadata accessor for NXNetworkManager, &unk_25C4CAE30);
  *&v49 = v29;
  v31[2] = v34 + 1;
  sub_25C490478(&v49, &v31[5 * v34 + 4]);
  *(v1 + v13) = v31;
  swift_endAccess();
  v35 = type metadata accessor for NXXPCPublisher(0);

  v37 = sub_25C45C67C(v36);
  v38 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcPublisher;
  swift_beginAccess();
  *(v1 + v38) = v37;

  swift_beginAccess();
  v39 = *(v1 + v13);

  v40 = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v13) = v39;
  if ((v40 & 1) == 0)
  {
    v39 = sub_25C48AF90(0, v39[2] + 1, 1, v39);
    *(v1 + v13) = v39;
  }

  v42 = v39[2];
  v41 = v39[3];
  v43 = v42 + 1;
  if (v42 >= v41 >> 1)
  {
    v39 = sub_25C48AF90((v41 > 1), v42 + 1, 1, v39);
  }

  v50 = v35;
  v51 = sub_25C490490(&qword_27FC0A690, type metadata accessor for NXXPCPublisher, &unk_25C4C9B28);
  *&v49 = v37;
  v39[2] = v43;
  v44 = (v39 + 4);
  sub_25C490478(&v49, &v39[5 * v42 + 4]);
  *(v1 + v13) = v39;
  swift_endAccess();

  do
  {
    sub_25C48BE38(v44, &v49);
    v46 = v50;
    v45 = v51;
    __swift_project_boxed_opaque_existential_1(&v49, v50);
    (*(v45 + 16))(v46, v45);
    __swift_destroy_boxed_opaque_existential_0(&v49);
    v44 += 40;
    --v43;
  }

  while (v43);

  sub_25C4840F0();
  sub_25C484738();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25C48B830()
{
  result = qword_27FC0A190;
  if (!qword_27FC0A190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FC0A7B0, &qword_25C4C9AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A190);
  }

  return result;
}

void sub_25C48B894()
{
  v1 = v0;
  if (qword_27FC0B5D0 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v2 = sub_25C4C7BD0();
    __swift_project_value_buffer(v2, qword_27FC0B5D8);
    v3 = sub_25C4C7BB0();
    v4 = sub_25C4C8720();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_25C452000, v3, v4, "Invalidate", v5, 2u);
      MEMORY[0x25F888630](v5, -1, -1);
    }

    *(v1 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__invalidateCalled) = 1;
    v6 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__managers;
    swift_beginAccess();
    v7 = *(v1 + v6);
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = v7 + 32;

      do
      {
        sub_25C48BE38(v9, v32);
        v10 = v33;
        v11 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        (*(v11 + 24))(v10, v11);
        __swift_destroy_boxed_opaque_existential_0(v32);
        v9 += 40;
        --v8;
      }

      while (v8);
    }

    *(v1 + v6) = MEMORY[0x277D84F90];

    sub_25C484E24();
    v12 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__osStateHandler;
    v13 = *(v1 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__osStateHandler);
    if (v13)
    {
      [v13 remove];
      v14 = *(v1 + v12);
    }

    else
    {
      v14 = 0;
    }

    *(v1 + v12) = 0;

    *(v1 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__prefChangedNotification) = 0;

    v15 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcConnections;
    swift_beginAccess();
    v16 = *(v1 + v15);
    if ((v16 & 0xC000000000000001) != 0)
    {

      sub_25C4C8830();
      type metadata accessor for NXXPCConnection();
      sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection, &protocol conformance descriptor for NXXPCConnection);
      sub_25C4C8640();
      v16 = v32[0];
      v17 = v32[1];
      v18 = v32[2];
      v19 = v33;
      v20 = v34;
    }

    else
    {
      v21 = -1 << *(v16 + 32);
      v17 = v16 + 56;
      v18 = ~v21;
      v22 = -v21;
      v23 = v22 < 64 ? ~(-1 << v22) : -1;
      v20 = v23 & *(v16 + 56);

      v19 = 0;
    }

    v24 = (v18 + 64) >> 6;
    if (v16 < 0)
    {
      break;
    }

LABEL_18:
    v25 = v19;
    v26 = v20;
    v27 = v19;
    if (v20)
    {
LABEL_22:
      v28 = (v26 - 1) & v26;
      v29 = *(*(v16 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));

      if (v29)
      {
        goto LABEL_26;
      }

      goto LABEL_28;
    }

    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= v24)
      {
        goto LABEL_28;
      }

      v26 = *(v17 + 8 * v27);
      ++v25;
      if (v26)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  while (sub_25C4C8860())
  {
    type metadata accessor for NXXPCConnection();
    swift_dynamicCast();
    v27 = v19;
    v28 = v20;
    if (!v31)
    {
      break;
    }

LABEL_26:
    sub_25C46A2AC();

    v19 = v27;
    v20 = v28;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_28:
  sub_25C48B0D8(v16);
  *(v1 + v15) = MEMORY[0x277D84FA0];

  v30 = *(v1 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcListener);
  if (v30)
  {
    xpc_connection_cancel(v30);
  }

  sub_25C485020();
}

uint64_t sub_25C48BC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_25C462EC0(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25C48DE5C(a4, a5, a6);
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = a3(0);
    v27 = *(v20 - 8);
    (*(v27 + 32))(a7, v19 + *(v27 + 72) * v16, v20);
    sub_25C48CC40(v16, v18, a4);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = a3(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

uint64_t sub_25C48BE38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25C48BE9C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25C48BEDC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = v7[7];
  v25 = v7[8];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  *(v12 + 24) = a7;

  sub_25C4C7E70();
  if (!v26)
  {
  }

  if (qword_27FC0B5D0 != -1)
  {
    swift_once();
  }

  v13 = sub_25C4C7BD0();
  __swift_project_value_buffer(v13, qword_27FC0B5D8);
  v14 = a2;

  v15 = v26;
  v16 = sub_25C4C7BB0();
  v17 = sub_25C4C8710();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136315650;
    *(v18 + 4) = sub_25C458990(a1, v14, &v27);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_25C458990(v24, v25, &v27);
    *(v18 + 22) = 2080;
    swift_getErrorValue();
    v20 = sub_25C4C8A30();
    v22 = sub_25C458990(v20, v21, &v27);

    *(v18 + 24) = v22;
    _os_log_impl(&dword_25C452000, v16, v17, "### Request handler failed: requestName=%s, client%s, error=%s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v19, -1, -1);
    MEMORY[0x25F888630](v18, -1, -1);
  }

  return swift_willThrow();
}

uint64_t sub_25C48C17C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_25C48C1E0(uint64_t a1)
{
  sub_25C4C7C50();
  sub_25C490490(&qword_27FC0A628, MEMORY[0x277D35630], MEMORY[0x277D35638]);
  v2 = sub_25C4C8510();

  return sub_25C48DB40(a1, v2);
}

uint64_t sub_25C48C278(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A660, &qword_25C4CA6B8);
  result = sub_25C4C8970();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
        v22 = v21;
      }

      result = sub_25C4C8A50();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_25C48C4E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v50 = a3(0);
  v10 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v42 - v11;
  v12 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v47 = v9;
  result = sub_25C4C8970();
  v14 = result;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v43 = v5;
    v44 = (v10 + 16);
    v45 = v12;
    v46 = v10;
    v48 = (v10 + 32);
    v21 = result + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 56);
      v29 = (*(v12 + 48) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v46 + 72);
      v33 = v28 + v32 * v27;
      if (v47)
      {
        (*v48)(v49, v33, v50);
      }

      else
      {
        (*v44)(v49, v33, v50);
      }

      sub_25C4C8A60();
      sub_25C4C8580();
      result = sub_25C4C8A90();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v31;
      v23[1] = v30;
      result = (*v48)(*(v14 + 56) + v32 * v22, v49, v50);
      ++*(v14 + 16);
      v12 = v45;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v8 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v8 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
  return result;
}

uint64_t sub_25C48C864(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25C4C7C50();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A620, &qword_25C4CA690);
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

      sub_25C490490(&qword_27FC0A628, MEMORY[0x277D35630], MEMORY[0x277D35638]);
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

unint64_t sub_25C48CC40(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_25C4C8810() + 1) & ~v6;
    while (1)
    {
      sub_25C4C8A60();

      sub_25C4C8580();
      v11 = sub_25C4C8A90();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25C48CE34(int64_t a1, uint64_t a2)
{
  v40 = sub_25C4C7C50();
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
      sub_25C490490(&qword_27FC0A628, MEMORY[0x277D35630], MEMORY[0x277D35638]);
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

unint64_t sub_25C48D154(uint64_t a1, uint64_t a2, char a3)
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
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

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

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_25C48DD00();
    result = v17;
    goto LABEL_8;
  }

  sub_25C48C278(v14, a3 & 1);
  result = sub_25C462F38(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_25C4C8A20();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

void sub_25C48D29C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void), uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void))
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_25C462EC0(a2, a3);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      sub_25C48DE5C(a5, a6, a7);
      goto LABEL_7;
    }

    sub_25C48C4E0(v21, a4 & 1, a5, a6, a7);
    v31 = sub_25C462EC0(a2, a3);
    if ((v22 & 1) == (v32 & 1))
    {
      v18 = v31;
      v24 = *v11;
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_25C4C8A20();
    __break(1u);
    return;
  }

LABEL_7:
  v24 = *v11;
  if (v22)
  {
LABEL_8:
    v25 = v24[7];
    v26 = a8(0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 40);
    v29 = v26;
    v30 = v25 + *(v27 + 72) * v18;

    v28(v30, a1, v29);
    return;
  }

LABEL_13:
  sub_25C48D9D4(v18, a2, a3, a1, v24, a5);
}

void sub_25C48D464(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25C4C7C50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_25C48C1E0(a2);
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
      sub_25C48E0E4();
      goto LABEL_7;
    }

    sub_25C48C864(v17, a3 & 1);
    v23 = sub_25C48C1E0(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_25C48DA88(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_25C4C8A20();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

unint64_t sub_25C48D630()
{
  result = qword_27FC0B658;
  if (!qword_27FC0B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0B658);
  }

  return result;
}

unint64_t sub_25C48D684()
{
  result = qword_27FC0B660;
  if (!qword_27FC0B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0B660);
  }

  return result;
}

unint64_t sub_25C48D6E0()
{
  result = qword_27FC0B668[0];
  if (!qword_27FC0B668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC0B668);
  }

  return result;
}

uint64_t sub_25C48D734(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_25C48D774@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t type metadata accessor for NXDaemon(uint64_t a1)
{
  result = qword_27FC0B6F0;
  if (!qword_27FC0B6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25C48D7FC(uint64_t a1)
{
  result = sub_25C4C7B30();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_25C48D970(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_25C48D9D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t sub_25C48DA88(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25C4C7C50();
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

unint64_t sub_25C48DB40(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_25C4C7C50();
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
      sub_25C490490(&qword_27FC0A630, MEMORY[0x277D35630], MEMORY[0x277D35640]);
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

id sub_25C48DD00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A660, &qword_25C4CA6B8);
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
        result = v18;
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

void sub_25C48DE5C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v43 = a1(0);
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v37 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = sub_25C4C8960();
  v10 = v9;
  if (*(v8 + 16))
  {
    v38 = v6;
    v11 = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v13)
    {
      memmove(v11, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v44 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = v45 + 32;
    v40 = v45 + 16;
    v41 = v8;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v46 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = 16 * v24;
        v26 = *(v8 + 56);
        v27 = (*(v8 + 48) + 16 * v24);
        v28 = *v27;
        v29 = v27[1];
        v30 = v45;
        v31 = *(v45 + 72) * v24;
        v32 = v42;
        v33 = v43;
        (*(v45 + 16))(v42, v26 + v31, v43);
        v34 = v44;
        v35 = (*(v44 + 48) + v25);
        *v35 = v28;
        v35[1] = v29;
        v36 = *(v34 + 56) + v31;
        v8 = v41;
        (*(v30 + 32))(v36, v32, v33);

        v19 = v46;
      }

      while (v46);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v38;
        v10 = v44;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v46 = (v23 - 1) & v23;
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

char *sub_25C48E0E4()
{
  v1 = v0;
  v31 = sub_25C4C7C50();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A620, &qword_25C4CA690);
  v3 = *v0;
  v4 = sub_25C4C8960();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
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

uint64_t sub_25C48E35C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (Strong == *(v3 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener))
      {
        sub_25C485FE8(a1);
      }
    }
  }

  return result;
}

uint64_t sub_25C48E408(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (Strong == *(v3 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener))
      {
        sub_25C48647C(a1);
      }
    }
  }

  return result;
}

void sub_25C48E4B4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcConnections;
    swift_beginAccess();
    v5 = *(v3 + v4);
    if ((v5 & 0xC000000000000001) != 0)
    {

      sub_25C4C8830();
      type metadata accessor for NXXPCConnection();
      sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection, &protocol conformance descriptor for NXXPCConnection);
      sub_25C4C8640();
      v5 = v20;
      v6 = v21;
      v7 = v22;
      v8 = v23;
      v9 = v24;
    }

    else
    {
      v10 = -1 << *(v5 + 32);
      v6 = v5 + 56;
      v7 = ~v10;
      v11 = -v10;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      else
      {
        v12 = -1;
      }

      v9 = v12 & *(v5 + 56);

      v8 = 0;
    }

    v13 = (v7 + 64) >> 6;
    if (v5 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v14 = v8;
      v15 = v9;
      v16 = v8;
      if (!v9)
      {
        break;
      }

LABEL_13:
      v17 = (v15 - 1) & v15;
      v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

      if (!v18)
      {
LABEL_19:
        sub_25C48B0D8(v5);

        return;
      }

      while (1)
      {
        sub_25C4767A8(a1);

        v8 = v16;
        v9 = v17;
        if ((v5 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (sub_25C4C8860())
        {
          type metadata accessor for NXXPCConnection();
          swift_dynamicCast();
          v16 = v8;
          v17 = v9;
          if (v19)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        goto LABEL_19;
      }

      v15 = *(v6 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_25C48E700()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25C48E738()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_25C486EA0(0, v1);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_25C48E7C8()
{
  MEMORY[0x25F8886B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C48E800(_xpc_connection_s *a1)
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
      v5 = *(v3 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcListener);
      if (!v5 || Strong != v5)
      {

        return swift_unknownObjectRelease();
      }

      v6 = MEMORY[0x25F888910](a1);
      if (v6 == sub_25C4C7BE0())
      {
        type metadata accessor for NXXPCConnection();
        swift_unknownObjectRetain();

        v16 = sub_25C469BA4(a1, v3);
        v17 = swift_allocObject();
        swift_weakInit();
        v18 = swift_allocObject();
        swift_weakInit();
        v19 = swift_allocObject();
        *(v19 + 16) = v17;
        *(v19 + 24) = v18;
        swift_beginAccess();
        v20 = *(v16 + 64);
        v21 = *(v16 + 72);
        *(v16 + 64) = sub_25C48ED7C;
        *(v16 + 72) = v19;

        sub_25C45A2C8(v20, v21);

        v22 = swift_allocObject();
        swift_weakInit();

        aBlock[4] = sub_25C48EE94;
        aBlock[5] = v22;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_25C456294;
        aBlock[3] = &block_descriptor_133;
        v23 = _Block_copy(aBlock);

        xpc_connection_set_event_handler(a1, v23);
        _Block_release(v23);
        xpc_connection_set_target_queue(a1, *(v3 + 16));
        xpc_connection_activate(a1);
        swift_beginAccess();

        sub_25C48EEF0(&v31, v16);
        swift_endAccess();

        v24 = v3 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_xpcConnectionAcceptHandler;
        swift_beginAccess();
        v25 = *v24;
        if (*v24)
        {
          v26 = *(v24 + 8);

          v25(v16);
          sub_25C45A2C8(v25, v26);
        }

        sub_25C469EC4();
      }

      else
      {
        swift_getObjectType();
        v7 = sub_25C4C7C00();
        swift_unknownObjectRelease();
        if (v7 == a1)
        {
          if (qword_27FC0B5D0 != -1)
          {
            swift_once();
          }

          v27 = sub_25C4C7BD0();
          __swift_project_value_buffer(v27, qword_27FC0B5D8);
          v28 = sub_25C4C7BB0();
          v29 = sub_25C4C8720();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            *v30 = 0;
            _os_log_impl(&dword_25C452000, v28, v29, "XPC listener invalidated", v30, 2u);
            MEMORY[0x25F888630](v30, -1, -1);
          }

          *(v3 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcListener) = 0;
          swift_unknownObjectRelease();
          sub_25C485020();
        }

        else
        {
          if (qword_27FC0B5D0 != -1)
          {
            swift_once();
          }

          v8 = sub_25C4C7BD0();
          __swift_project_value_buffer(v8, qword_27FC0B5D8);
          swift_unknownObjectRetain();
          v9 = sub_25C4C7BB0();
          v10 = sub_25C4C8710();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            v12 = swift_slowAlloc();
            aBlock[0] = v12;
            *v11 = 136315138;
            v13 = sub_25C4C8690();
            v15 = sub_25C458990(v13, v14, aBlock);

            *(v11 + 4) = v15;
            _os_log_impl(&dword_25C452000, v9, v10, "### XPC listener error: error=%s", v11, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v12);
            MEMORY[0x25F888630](v12, -1, -1);
            MEMORY[0x25F888630](v11, -1, -1);
          }
        }
      }

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_25C48ED44()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C48ED7C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcConnections;
      swift_beginAccess();
      v5 = *(v1 + v4);

      v6 = sub_25C48A130(v3, v5);

      if (v6)
      {
        swift_beginAccess();
        sub_25C48FCF0(v3);
        swift_endAccess();

        sub_25C485020();
      }
    }
  }

  return result;
}

uint64_t sub_25C48EE94(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_25C46B864(a1);
  }

  return result;
}

uint64_t sub_25C48EEF0(uint64_t *a1, uint64_t a2)
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

    v8 = sub_25C4C8850();

    if (v8)
    {

      type metadata accessor for NXXPCConnection();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_25C4C8840();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_25C48F190(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_25C48F3C4(v17 + 1);
    }

    sub_25C48F658(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  type metadata accessor for NXXPCConnection();
  sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection, &protocol conformance descriptor for NXXPCConnection);
  v10 = sub_25C4C8510();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_25C48F740(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_25C490490(&unk_27FC0A3F0, type metadata accessor for NXXPCConnection, &protocol conformance descriptor for NXXPCConnection);
  while ((sub_25C4C8530() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_25C48F190(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A670, &qword_25C4CA6C0);
    v2 = sub_25C4C88D0();
    v15 = v2;
    sub_25C4C8830();
    if (sub_25C4C8860())
    {
      type metadata accessor for NXXPCConnection();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_25C48F3C4(v9 + 1);
        }

        v2 = v15;
        sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection, &protocol conformance descriptor for NXXPCConnection);
        result = sub_25C4C8510();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_25C4C8860());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_25C48F3C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A670, &qword_25C4CA6C0);
  result = sub_25C4C88C0();
  v5 = result;
  if (*(v3 + 16))
  {
    v26 = v3;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for NXXPCConnection();
      sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection, &protocol conformance descriptor for NXXPCConnection);
      result = sub_25C4C8510();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero(v7, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_25C48F658(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NXXPCConnection();
  sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection, &protocol conformance descriptor for NXXPCConnection);
  sub_25C4C8510();
  result = sub_25C4C8820();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_25C48F740(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25C48F3C4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_25C48F928();
      goto LABEL_12;
    }

    sub_25C48FA78(v6 + 1);
  }

  v8 = *v3;
  type metadata accessor for NXXPCConnection();
  sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection, &protocol conformance descriptor for NXXPCConnection);
  result = sub_25C4C8510();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_25C490490(&unk_27FC0A3F0, type metadata accessor for NXXPCConnection, &protocol conformance descriptor for NXXPCConnection);
    do
    {
      result = sub_25C4C8530();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25C4C8A10();
  __break(1u);
  return result;
}

void *sub_25C48F928()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A670, &qword_25C4CA6C0);
  v2 = *v0;
  v3 = sub_25C4C88B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

  return result;
}

uint64_t sub_25C48FA78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A670, &qword_25C4CA6C0);
  result = sub_25C4C88C0();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v14 = __clz(__rbit64(v10));
      v26 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for NXXPCConnection();
      sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection, &protocol conformance descriptor for NXXPCConnection);

      result = sub_25C4C8510();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
      v10 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
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

uint64_t sub_25C48FCF0(uint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_25C4C8870();

    if (v5)
    {
      v6 = sub_25C48FEF0(v4, a1);

      return v6;
    }

    return 0;
  }

  type metadata accessor for NXXPCConnection();
  sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection, &protocol conformance descriptor for NXXPCConnection);
  v8 = sub_25C4C8510();
  v9 = -1 << *(v2 + 32);
  v10 = v8 & ~v9;
  if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_25C490490(&unk_27FC0A3F0, type metadata accessor for NXXPCConnection, &protocol conformance descriptor for NXXPCConnection);
  while ((sub_25C4C8530() & 1) == 0)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_25C48F928();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_25C4900CC(v10);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_25C48FEF0(uint64_t a1, uint64_t a2)
{

  v3 = sub_25C4C8840();
  v4 = swift_unknownObjectRetain();
  v5 = sub_25C48F190(v4, v3);
  v12 = v5;
  type metadata accessor for NXXPCConnection();
  sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection, &protocol conformance descriptor for NXXPCConnection);

  v6 = sub_25C4C8510();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_25C490490(&unk_27FC0A3F0, type metadata accessor for NXXPCConnection, &protocol conformance descriptor for NXXPCConnection);
    while ((sub_25C4C8530() & 1) == 0)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v5 + 48) + 8 * v8);
  sub_25C4900CC(v8);
  result = sub_25C4C8530();
  if (result)
  {
    *v2 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_25C4900CC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_25C4C8810();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      type metadata accessor for NXXPCConnection();
      sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection, &protocol conformance descriptor for NXXPCConnection);
      do
      {
        v10 = sub_25C4C8510() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_16:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_25C4902B8()
{
  if (qword_27FC0B5D0 != -1)
  {
    swift_once();
  }

  v0 = sub_25C4C7BD0();
  __swift_project_value_buffer(v0, qword_27FC0B5D8);
  v1 = sub_25C4C7BB0();
  v2 = sub_25C4C8720();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_25C452000, v1, v2, "Prefs changed", v3, 2u);
    MEMORY[0x25F888630](v3, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_25C4840F0();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_25C484738();
  }

  return result;
}

char *sub_25C4903FC()
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 63;
  }

  v0 = NXDaemon.description.getter();

  return v0;
}

uint64_t sub_25C490478(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25C490490(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25C490580()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0B888);
  __swift_project_value_buffer(v0, qword_27FC0B888);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

id sub_25C4905F4(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_25C492FF8(a1);

  return v4;
}

unint64_t sub_25C4906A0()
{
  v1 = v0;
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_25C4C88F0();

  v49 = 0xD00000000000001ALL;
  v50 = 0x800000025C4D0F10;
  v2 = OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__idsServices;
  swift_beginAccess();
  v46[0] = *(*&v0[v2] + 16);
  v3 = sub_25C4C89A0();
  MEMORY[0x25F887A50](v3);

  MEMORY[0x25F887A50](0x6F6973736573202CLL, 0xEA00000000003D6ELL);
  v4 = OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__sessions;
  swift_beginAccess();
  v44 = *(*(v1 + v4) + 16);
  v5 = sub_25C4C89A0();
  MEMORY[0x25F887A50](v5);

  MEMORY[0x25F887A50](171785504, 0xE400000000000000);
  v42 = v1;
  v6 = *(v1 + v2);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  if (v9)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      do
      {
LABEL_8:
        v14 = (*(v6 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v9)))));
        v15 = *v14;
        v16 = v14[1];
        v44 = 0x3A65636976726553;
        v45 = 0xE900000000000020;

        MEMORY[0x25F887A50](v15, v16);

        MEMORY[0x25F887A50](10, 0xE100000000000000);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_25C458868(0, *(v12 + 2) + 1, 1, v12);
        }

        v1 = *(v12 + 2);
        v17 = *(v12 + 3);
        if (v1 >= v17 >> 1)
        {
          v12 = sub_25C458868((v17 > 1), v1 + 1, 1, v12);
        }

        v9 &= v9 - 1;
        *(v12 + 2) = v1 + 1;
        v18 = &v12[16 * v1];
        *(v18 + 4) = 0x3A65636976726553;
        *(v18 + 5) = 0xE900000000000020;
      }

      while (v9);
    }
  }

  v19 = *(v42 + v4);
  v22 = *(v19 + 64);
  v21 = v19 + 64;
  v20 = v22;
  v23 = 1 << *(*(v42 + v4) + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v26 = (v23 + 63) >> 6;
  v43 = *(v42 + v4);

  v27 = 0;
  if (v25)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v26)
    {

      v44 = v12;

      sub_25C4623E8(&v44);

      v37 = *(v44 + 16);
      if (v37)
      {
        v38 = (v44 + 40);
        do
        {
          v39 = *(v38 - 1);
          v40 = *v38;

          MEMORY[0x25F887A50](v39, v40);

          v38 += 16;
          --v37;
        }

        while (v37);
      }

      return v49;
    }

    v25 = *(v21 + 8 * v28);
    ++v27;
    if (v25)
    {
      v27 = v28;
      do
      {
LABEL_21:
        v29 = *(*(v43 + 56) + ((v27 << 9) | (8 * __clz(__rbit64(v25)))));
        v44 = 0x3A6E6F6973736553;
        v45 = 0xE900000000000020;
        v30 = v29;
        v31 = [v30 description];
        v32 = sub_25C4C8550();
        v34 = v33;

        MEMORY[0x25F887A50](v32, v34);

        MEMORY[0x25F887A50](10, 0xE100000000000000);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_25C458868(0, *(v12 + 2) + 1, 1, v12);
        }

        v1 = *(v12 + 2);
        v35 = *(v12 + 3);
        if (v1 >= v35 >> 1)
        {
          v12 = sub_25C458868((v35 > 1), v1 + 1, 1, v12);
        }

        v25 &= v25 - 1;

        *(v12 + 2) = v1 + 1;
        v36 = &v12[16 * v1];
        *(v36 + 4) = 0x3A6E6F6973736553;
        *(v36 + 5) = 0xE900000000000020;
      }

      while (v25);
    }
  }

LABEL_32:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_25C490B78()
{
  v1 = v0;
  v2 = sub_25C4C84C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__dispatchQueue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = v6;
  LOBYTE(v6) = sub_25C4C84E0();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_27FC0B880 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_28:
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = sub_25C4C7BD0();
  __swift_project_value_buffer(v8, qword_27FC0B888);
  v9 = sub_25C4C7BB0();
  v10 = sub_25C4C8720();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_25C452000, v9, v10, "Invalidate", v11, 2u);
    MEMORY[0x25F888630](v11, -1, -1);
  }

  v12 = OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__idsServices;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 64);
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_13:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      [*(*(v13 + 56) + ((v19 << 9) | (8 * v20))) removeDelegate_];
      if (!v16)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v19 >= v17)
    {
      break;
    }

    v16 = *(v13 + 64 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_13;
    }
  }

  v21 = MEMORY[0x277D84F98];
  *(v1 + v12) = MEMORY[0x277D84F98];

  v22 = OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__idsServiceIDs;
  swift_beginAccess();
  *(v1 + v22) = v21;

  v23 = OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__sessions;
  swift_beginAccess();
  v24 = *(v1 + v23);
  v25 = 1 << *(v24 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v24 + 64);
  v28 = (v25 + 63) >> 6;

  v29 = 0;
  if (v27)
  {
    while (1)
    {
      v30 = v29;
LABEL_23:
      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v32 = *(*(v24 + 56) + ((v30 << 9) | (8 * v31)));
      sub_25C498274();

      if (!v27)
      {
        goto LABEL_19;
      }
    }
  }

  while (1)
  {
LABEL_19:
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_27;
    }

    if (v30 >= v28)
    {
      break;
    }

    v27 = *(v24 + 64 + 8 * v30);
    ++v29;
    if (v27)
    {
      v29 = v30;
      goto LABEL_23;
    }
  }

  *(v1 + v23) = v21;
}

void sub_25C490F34(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_25C4C84C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v4 + OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__dispatchQueue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  v14 = sub_25C4C84E0();
  (*(v9 + 8))(v11, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_10;
  }

  v15 = OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__idsServiceIDs;
  swift_beginAccess();
  if (*(*(v4 + v15) + 16) && (sub_25C462EC0(a1, a2), (v16 & 1) != 0))
  {
  }

  else
  {
    v17 = MEMORY[0x277D84FA0];
  }

  v34 = v17;
  swift_endAccess();
  sub_25C491B18(v33, a3);
  v18 = v34;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(v4 + v15);
  *(v4 + v15) = 0x8000000000000000;
  sub_25C4922C0(v18, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v4 + v15) = v32;
  swift_endAccess();
  v20 = OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__idsServices;
  swift_beginAccess();
  if (*(*(v4 + v20) + 16))
  {
    sub_25C462EC0(a1, a2);
    if (v21)
    {
      swift_endAccess();
      return;
    }
  }

  swift_endAccess();
  if (qword_27FC0B880 != -1)
  {
    goto LABEL_16;
  }

LABEL_10:
  v22 = sub_25C4C7BD0();
  __swift_project_value_buffer(v22, qword_27FC0B888);

  v23 = sub_25C4C7BB0();
  v24 = sub_25C4C8720();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v33[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_25C458990(a1, a2, v33);
    _os_log_impl(&dword_25C452000, v23, v24, "Start IDS service: serviceID=%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x25F888630](v26, -1, -1);
    MEMORY[0x25F888630](v25, -1, -1);
  }

  v27 = objc_allocWithZone(MEMORY[0x277D18778]);
  v28 = sub_25C4C8540();
  v29 = [v27 initWithService_];

  swift_beginAccess();

  v30 = v29;
  sub_25C49142C(v29, a1, a2);
  swift_endAccess();
  if (v30)
  {
    [v30 addDelegate:v4 queue:v13];
  }
}

uint64_t sub_25C491334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_25C4922C0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_25C462EC0(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_25C4925A8();
        v14 = v16;
      }

      result = sub_25C4637B0(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_25C49142C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_25C492148(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_25C462EC0(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_25C49243C();
        v14 = v16;
      }

      result = sub_25C4637B0(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_25C491524(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_25C4C84C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v4 + OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__dispatchQueue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  LOBYTE(v12) = sub_25C4C84E0();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_11;
  }

  v14 = OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__idsServiceIDs;
  swift_beginAccess();
  v15 = *(v4 + v14);
  if (*(v15 + 16) && (v16 = sub_25C462EC0(a1, a2), (v17 & 1) != 0))
  {
    v32 = *(*(v15 + 56) + 8 * v16);
    swift_endAccess();

    sub_25C492D8C(a3);
    v18 = v32;
    if (v32 && *(v32 + 16))
    {

      swift_beginAccess();

      sub_25C491334(v18, a1, a2);
LABEL_14:
      swift_endAccess();
    }
  }

  else
  {
    v32 = 0;
    swift_endAccess();
  }

  swift_beginAccess();

  sub_25C491334(0, a1, a2);
  swift_endAccess();
  v19 = OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__idsServices;
  swift_beginAccess();
  v20 = *(v4 + v19);
  if (!*(v20 + 16))
  {
    goto LABEL_14;
  }

  v21 = sub_25C462EC0(a1, a2);
  if ((v22 & 1) == 0)
  {
    goto LABEL_14;
  }

  v23 = *(*(v20 + 56) + 8 * v21);
  swift_endAccess();
  v24 = qword_27FC0B880;
  v11 = v23;
  if (v24 != -1)
  {
    goto LABEL_17;
  }

LABEL_11:
  v25 = sub_25C4C7BD0();
  __swift_project_value_buffer(v25, qword_27FC0B888);

  v26 = sub_25C4C7BB0();
  v27 = sub_25C4C8720();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_25C458990(a1, a2, v31);
    _os_log_impl(&dword_25C452000, v26, v27, "Stop IDS service: serviceID=%s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x25F888630](v29, -1, -1);
    MEMORY[0x25F888630](v28, -1, -1);
  }

  swift_beginAccess();

  sub_25C49142C(0, a1, a2);
  swift_endAccess();
  [v11 removeDelegate_];
}

id sub_25C4919FC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25C491B18(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_25C4C8A50();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_25C49293C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25C491BFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A748, &qword_25C4CA728);
  v35 = v4;
  result = sub_25C4C8970();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_25C4C8A60();
      sub_25C4C8580();
      result = sub_25C4C8A90();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25C491EA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A750, &unk_25C4CA730);
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

void sub_25C492148(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25C462EC0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_25C491BFC(v16, a4 & 1);
      v11 = sub_25C462EC0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_25C4C8A20();
        __break(1u);
_objc_release_x1:
        MEMORY[0x2821F96F8]();
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_25C49243C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_25C4922C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25C462EC0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_25C491EA0(v16, a4 & 1);
      v11 = sub_25C462EC0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_25C4C8A20();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_25C4925A8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

id sub_25C49243C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A748, &qword_25C4CA728);
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

        result = v20;
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

void sub_25C4925A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A750, &unk_25C4CA730);
  v2 = *v0;
  v3 = sub_25C4C8960();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

uint64_t sub_25C492718(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A738, &qword_25C4CA720);
  result = sub_25C4C88C0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_25C4C8A50();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25C49293C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25C492718(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_25C492A5C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_25C492B9C(v5 + 1);
  }

  v8 = *v3;
  result = sub_25C4C8A50();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25C4C8A10();
  __break(1u);
  return result;
}

void *sub_25C492A5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A738, &qword_25C4CA720);
  v2 = *v0;
  v3 = sub_25C4C88B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_25C492B9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A738, &qword_25C4CA720);
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_25C4C8A50();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_25C492D8C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_25C4C8A50();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_25C492A5C();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_25C492E74(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t sub_25C492E74(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_25C4C8810();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_25C4C8A50() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

id sub_25C492FF8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  v4 = MEMORY[0x277D84F98];
  *&v1[OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__idsServiceIDs] = MEMORY[0x277D84F98];
  *&v1[OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__idsServices] = v4;
  *&v1[OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__sessions] = v4;
  swift_weakAssign();
  v5 = *(a1 + 16);
  *&v1[OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__dispatchQueue] = v5;
  v6 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_environment;
  v7 = OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__environment;
  v8 = sub_25C4C7B30();
  (*(*(v8 - 8) + 16))(&v1[v7], a1 + v6, v8);
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = v5;
  return objc_msgSendSuper2(&v11, sel_init);
}

void sub_25C493104()
{
  if (qword_27FC0B880 != -1)
  {
    swift_once();
  }

  v0 = sub_25C4C7BD0();
  __swift_project_value_buffer(v0, qword_27FC0B888);
  oslog = sub_25C4C7BB0();
  v1 = sub_25C4C8720();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_25C452000, oslog, v1, "Activate", v2, 2u);
    MEMORY[0x25F888630](v2, -1, -1);
  }
}

void sub_25C4931EC(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_25C4C84C0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v5 + OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__dispatchQueue);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v15 = v14;
  LOBYTE(v14) = sub_25C4C84E0();
  v17 = *(v11 + 8);
  v16 = v11 + 8;
  v17(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_6;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_18;
  }

  v10 = Strong;
  v19 = [a1 serviceIdentifier];
  if (!v19)
  {

    return;
  }

  v20 = v19;
  v13 = sub_25C4C8550();
  v16 = v21;

  if (qword_27FC0B880 != -1)
  {
    goto LABEL_16;
  }

LABEL_6:
  v22 = sub_25C4C7BD0();
  __swift_project_value_buffer(v22, qword_27FC0B888);

  v23 = a2;
  v24 = sub_25C4C7BB0();
  v25 = sub_25C4C8720();

  if (!os_log_type_enabled(v24, v25))
  {

    if (a2)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  v56 = v23;
  v26 = swift_slowAlloc();
  v55 = swift_slowAlloc();
  v58[0] = v55;
  *v26 = 136315650;
  *(v26 + 4) = sub_25C458990(v13, v16, v58);
  *(v26 + 12) = 2080;
  if (!a2)
  {
LABEL_18:

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v53 = v13;
  v54 = a3;
  v27 = v56;
  v28 = [v56 sessionID];

  if (!v28)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v29 = sub_25C4C8550();
  v31 = v30;

  v32 = sub_25C458990(v29, v31, v58);

  *(v26 + 14) = v32;
  *(v26 + 22) = 2080;
  if (!a4)
  {
LABEL_21:
    __break(1u);
    return;
  }

  *(v26 + 24) = sub_25C458990(v54, a4, v58);
  _os_log_impl(&dword_25C452000, v24, v25, "Invite received: serviceID=%s, sessionID=%s, fromID=%s", v26, 0x20u);
  v33 = v55;
  swift_arrayDestroy();
  MEMORY[0x25F888630](v33, -1, -1);
  MEMORY[0x25F888630](v26, -1, -1);

  v13 = v53;
  v23 = v56;
LABEL_13:
  type metadata accessor for NXSessionDaemon(0);
  v34 = v23;

  v35 = sub_25C4946EC(v34, v13, v16, v10);
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = v35;
  v38 = &v35[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_invalidationHandler];
  swift_beginAccess();
  v39 = *v38;
  v40 = v38[1];
  *v38 = sub_25C4938BC;
  v38[1] = v37;

  sub_25C45C5F0(v39, v40);

  v41 = OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__sessions;
  swift_beginAccess();
  v42 = v35;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(v5 + v41);
  *(v5 + v41) = 0x8000000000000000;
  sub_25C48D154(v42, v42, isUniquelyReferenced_nonNull_native);
  *(v5 + v41) = v57;
  v44 = swift_endAccess();
  sub_25C497710(v44, v45, v46, v47, v48, v49, v50, v51, v52);
}

unint64_t sub_25C4936C0(uint64_t a1)
{
  result = sub_25C4936E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25C4936E8()
{
  result = qword_27FC0A6C0;
  if (!qword_27FC0A6C0)
  {
    type metadata accessor for NXCloudServer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A6C0);
  }

  return result;
}

uint64_t type metadata accessor for NXCloudServer(uint64_t a1)
{
  result = qword_27FC0B940;
  if (!qword_27FC0B940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25C493794(uint64_t a1)
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

uint64_t sub_25C49384C()
{
  MEMORY[0x25F8886B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C493884()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_25C4938BC()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    sub_25C486EA0(0, v1);
    swift_endAccess();
  }
}

uint64_t sub_25C493948()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0B958);
  __swift_project_value_buffer(v0, qword_27FC0B958);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

uint64_t NXNANPublisherDarwin.serviceType.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t NXNANPublisherDarwin.serviceType.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void *NXNANPublisherDarwin.__allocating_init(dispatchQueue:)(uint64_t a1)
{
  result = swift_allocObject();
  result[4] = 0;
  result[5] = 0;
  result[2] = 0;
  result[3] = a1;
  return result;
}

void *NXNANPublisherDarwin.init(dispatchQueue:)(uint64_t a1)
{
  v1[4] = 0;
  v1[5] = 0;
  v1[2] = 0;
  v1[3] = a1;
  return v1;
}

Swift::Void __swiftcall NXNANPublisherDarwin.activate()()
{
  swift_beginAccess();
  if (!v0[2])
  {
    v1 = [objc_allocWithZone(MEMORY[0x277D028A0]) init];
    v2 = v0[2];
    v0[2] = v1;
    v3 = v1;

    [v3 setDispatchQueue_];
    [v3 setControlFlags_];
    swift_beginAccess();
    if (v0[5])
    {

      v4 = sub_25C4C8540();
    }

    else
    {
      v4 = 0;
    }

    [v3 setServiceType_];

    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v9[4] = sub_25C493D94;
    v9[5] = v7;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_25C45BE80;
    v9[3] = &block_descriptor_4;
    v8 = _Block_copy(v9);

    [v3 activateWithCompletion_];
    _Block_release(v8);
  }
}

uint64_t sub_25C493CE4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C493D1C()
{
  MEMORY[0x25F8886B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C493D54()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_25C493D94(void *a1)
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
  if (qword_27FC0B950 != -1)
  {
    swift_once();
  }

  v8 = sub_25C4C7BD0();
  __swift_project_value_buffer(v8, qword_27FC0B958);
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
    _os_log_impl(&dword_25C452000, v10, v11, "### NAN setup publisher start failed: error=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x25F888630](v13, -1, -1);
    MEMORY[0x25F888630](v12, -1, -1);
  }

  [v5 invalidate];
  v17 = *(v3 + 16);
  *(v3 + 16) = 0;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall NXNANPublisherDarwin.invalidate()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + 16);
    *(v0 + 16) = 0;
  }
}

uint64_t NXNANPublisherDarwin.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_25C4940A8()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_25C4940F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_25C494200()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0B978);
  __swift_project_value_buffer(v0, qword_27FC0B978);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

id sub_25C4942D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v31 = a3;
  v28 = a1;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1B0, &qword_25C4C9B00);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = MEMORY[0x277D84F98];
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__clients] = MEMORY[0x277D84F98];
  v13 = &v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_connectionEndedHandler];
  *v13 = 0;
  v13[1] = 0;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__invalidateCoreCalled] = 0;
  v14 = &v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_invalidationHandler];
  *v14 = 0;
  v14[1] = 0;
  v15 = sub_25C4C7C50();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v17(v11, 1, 1, v15);
  v17(v9, 1, 1, v15);
  sub_25C4C7DC0();
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__operations] = v12;
  v18 = &v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_serverEventHandler];
  *v18 = 0;
  v18[1] = 0;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_verboseLogging] = 0;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionState] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsAccount] = 0;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsInvitationState] = 2;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSessionStarted] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsService] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSession] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDataSessionTimer] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanDiscoverTimer] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanEndpointFound] = 0;
  v19 = &v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanPeerAddressString];
  *v19 = 0;
  v19[1] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanSubscriber] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__needsNexusBluetoothAdvertiser] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection] = 0;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkReceiving] = 0;
  v20 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__messageUpperID;
  *&v4[v20] = CUNextID64();
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingOperationItems] = v12;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__outstandingRequests] = v12;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sendQueue] = MEMORY[0x277D84F90];
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingCompleted] = 0;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingReported] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingSession] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingStartTicks] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityAuthTagLength] = 0;
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__securityStream] = 0;
  v21 = v28;
  (*(v16 + 16))(&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_endpoint], v28, v15);
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__daemon] = a4;
  v22 = *(a4 + 16);
  *&v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue] = v22;
  v23 = &v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsServiceID];
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  v4[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkIsClient] = 1;
  v32.receiver = v4;
  v32.super_class = ObjectType;
  v25 = v22;
  v26 = objc_msgSendSuper2(&v32, sel_init);
  (*(v16 + 8))(v21, v15);
  return v26;
}

id sub_25C494690(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_25C4B8304(a1, a2);

  return v6;
}

id sub_25C4946EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_25C4B86B8(a1, a2, a3, a4);

  return v10;
}

id sub_25C49475C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_27FC0B970 != -1)
  {
    swift_once();
  }

  v3 = sub_25C4C7BD0();
  __swift_project_value_buffer(v3, qword_27FC0B978);
  v4 = sub_25C4C7BB0();
  v5 = sub_25C4C8700();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_25C452000, v4, v5, "deinit", v6, 2u);
    MEMORY[0x25F888630](v6, -1, -1);
  }

  if (*&v1[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection])
  {

    sub_25C4C82F0();
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t sub_25C494B98()
{
  v1 = sub_25C4C8170();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection))
  {

    sub_25C4C8310();
    v5 = sub_25C4C8110();
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v6 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession;
    swift_beginAccess();
    v7 = *(v0 + v6);
    if (v7)
    {
      v17 = 0;
      v18 = 0xE000000000000000;
      v8 = v7;
      MEMORY[0x25F887A50](0x203A72656550, 0xE600000000000000);
      v9 = [v8 destination];
      if (v9)
      {
        v10 = v9;
        v11 = sub_25C4C8550();
        v13 = v12;
      }

      else
      {
        v11 = 0;
        v13 = 0;
      }

      v16[1] = v11;
      v16[2] = v13;
      sub_25C4C89C0();
    }

    else
    {
      v17 = 0x203A72656550;
      v18 = 0xE600000000000000;
      sub_25C4C7C50();
      sub_25C4B8B3C(&qword_27FC0A480, MEMORY[0x277D35630], MEMORY[0x277D35648]);
      v14 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v14);
    }

    return v17;
  }

  return v5;
}

void sub_25C494DD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_25C4C84C0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  ObjectType = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *&v3[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue];
  *ObjectType = v10;
  (*(v7 + 104))(ObjectType, *MEMORY[0x277D85200], v6);
  v11 = v10;
  LOBYTE(v10) = sub_25C4C84E0();
  (*(v7 + 8))(ObjectType, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_12;
  }

  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__clients;
  swift_beginAccess();
  v13 = *&v3[v12];
  if (*(v13 + 16) && (v14 = sub_25C462F38(a1), (v15 & 1) != 0))
  {
    sub_25C4B8A80(*(v13 + 56) + 16 * v14, &v42);
  }

  else
  {
    v42 = xmmword_25C4CA7C0;
  }

  swift_endAccess();
  v16 = v42;
  sub_25C4666F8(&v42, &unk_27FC0A7A0, &unk_25C4CA828);
  if (v16 == __PAIR128__(1, 0))
  {
    if (qword_27FC0B970 != -1)
    {
      swift_once();
    }

    v17 = sub_25C4C7BD0();
    __swift_project_value_buffer(v17, qword_27FC0B978);
    v18 = v3;
    swift_unknownObjectRetain();
    v19 = sub_25C4C7BB0();
    v20 = sub_25C4C8720();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v41 = a2;
      v23 = v22;
      v43[0] = v22;
      *v21 = 136315650;
      v24 = (*(v41 + 16))(ObjectType, v41);
      v26 = sub_25C458990(v24, v25, v43);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      sub_25C4C7C50();
      sub_25C4B8B3C(&qword_27FC0A480, MEMORY[0x277D35630], MEMORY[0x277D35648]);
      v27 = sub_25C4C89A0();
      v29 = sub_25C458990(v27, v28, v43);

      *(v21 + 14) = v29;
      *(v21 + 22) = 2048;
      v30 = *(*&v3[v12] + 16);

      *(v21 + 24) = v30;
      _os_log_impl(&dword_25C452000, v19, v20, "Activate for client: new, client=%s, endpoint=%s, clients=%ld", v21, 0x20u);
      swift_arrayDestroy();
      v31 = v23;
      a2 = v41;
      MEMORY[0x25F888630](v31, -1, -1);
      MEMORY[0x25F888630](v21, -1, -1);
    }

    else
    {
    }

    *(&v42 + 1) = 0;
    swift_unknownObjectWeakInit();
    *(&v42 + 1) = a2;
    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    sub_25C495730(&v42, a1);
    swift_endAccess();
    sub_25C489B00(v18);
    sub_25C495A00();
    return;
  }

  if (qword_27FC0B970 != -1)
  {
    goto LABEL_18;
  }

LABEL_12:
  v32 = sub_25C4C7BD0();
  __swift_project_value_buffer(v32, qword_27FC0B978);
  swift_unknownObjectRetain();
  v33 = sub_25C4C7BB0();
  v34 = sub_25C4C8720();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v43[0] = v36;
    *v35 = 136315138;
    v37 = (*(a2 + 16))(ObjectType, a2);
    v39 = sub_25C458990(v37, v38, v43);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_25C452000, v33, v34, "Activate for client: existing, client=%s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x25F888630](v36, -1, -1);
    MEMORY[0x25F888630](v35, -1, -1);
  }
}

uint64_t sub_25C495328(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A900, &qword_25C4CAC90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for NXSessionDaemon.OperationItem(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_25C4666F8(a1, &qword_27FC0A900, &qword_25C4CAC90);
    sub_25C4B49E4(a2, v7);
    v12 = sub_25C4C7B20();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_25C4666F8(v7, &qword_27FC0A900, &qword_25C4CAC90);
  }

  else
  {
    sub_25C4BB0E8(a1, v10, type metadata accessor for NXSessionDaemon.OperationItem);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_25C4B65AC(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_25C4C7B20();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_25C495548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v5;
    sub_25C4B6794(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
    v13 = sub_25C4C7B20();
    result = (*(*(v13 - 8) + 8))(a5, v13);
    *v5 = v26;
  }

  else
  {
    v15 = sub_25C458F84(a5);
    if (v16)
    {
      v17 = v15;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v5;
      v27 = *v6;
      if (!v18)
      {
        sub_25C4B71C8();
        v19 = v27;
      }

      v20 = *(v19 + 48);
      v21 = sub_25C4C7B20();
      v22 = *(v21 - 8);
      v23 = *(v22 + 8);
      v23(v20 + *(v22 + 72) * v17, v21);

      sub_25C4B5DDC(v17, v19);
      result = (v23)(a5, v21);
      *v6 = v19;
    }

    else
    {
      v24 = sub_25C4C7B20();
      v25 = *(*(v24 - 8) + 8);

      return v25(a5, v24);
    }
  }

  return result;
}

uint64_t sub_25C495730(void *a1, uint64_t a2)
{
  v3 = v2;
  if (*a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1[1] == 1;
  }

  if (v5)
  {
    sub_25C4666F8(a1, &unk_27FC0A7A0, &unk_25C4CA828);
    v8 = sub_25C462F38(a2);
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v14 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_25C4B7474();
        v12 = v14;
      }

      sub_25C4BBBA8(*(v12 + 56) + 16 * v10, &v15);
      sub_25C4B60FC(v10, v12);
      *v3 = v12;
    }

    else
    {
      v15 = xmmword_25C4CA7C0;
    }

    return sub_25C4666F8(&v15, &unk_27FC0A7A0, &unk_25C4CA828);
  }

  else
  {
    sub_25C4BBBA8(a1, &v15);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_25C4B698C(&v15, a2, v6);
    *v2 = v13;
  }

  return result;
}

uint64_t sub_25C495840(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_25C4B6AAC(a1, a2, isUniquelyReferenced_nonNull_native);
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
        sub_25C4B75F0();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_25C4C7B20();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_25C4B628C(v11, v13);
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

void sub_25C495A00()
{
  v1 = v0;
  v193 = sub_25C4C82C0();
  v2 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v192 = &v164[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v200 = sub_25C4C7C50();
  v4 = *(v200 - 8);
  v5 = MEMORY[0x28223BE20](v200);
  v191 = &v164[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v199 = &v164[-v7];
  v8 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__invalidateCoreCalled;
  v9 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionState;
  v205 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__sessionStepError;
  v10 = &v1[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_connectionEndedHandler];
  v202 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection;
  v203 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingCompleted;
  v190 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__daemon;
  v11 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSessionStarted;
  v12 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsInvitationState;
  v13 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanPeerAddressString;
  v194 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_endpoint;
  v195 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__nanEndpointFound;
  v201 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__pairingStartTicks;
  v188 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkIsClient;
  v189 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession;
  swift_beginAccess();
  v196 = v12;
  swift_beginAccess();
  v197 = v11;
  swift_beginAccess();
  v198 = v10;
  swift_beginAccess();
  v208 = v8;
  if ((v1[v8] & 1) == 0)
  {
    v207 = 0;
    v179 = &v1[v13];
    v174 = (v2 + 88);
    v173 = *MEMORY[0x277CD8DD0];
    v172 = (v2 + 8);
    v168 = "Non-IDS endpoint";
    v187 = 0x800000025C4D1150;
    v182 = 0x800000025C4D10C0;
    v183 = 0x800000025C4D1130;
    v185 = 0x800000025C4D1170;
    v186 = 0x800000025C4D10A0;
    v178 = (v4 + 16);
    v15 = (v4 + 88);
    v177 = *MEMORY[0x277D35608];
    v176 = (v4 + 8);
    v170 = *MEMORY[0x277D35610];
    v180 = 0x800000025C4D1100;
    v181 = 0x800000025C4D1070;
    *&v14 = 136315394;
    v206 = v14;
    *&v14 = 67109120;
    v175 = v14;
    *&v14 = 136315138;
    v169 = v14;
    v184 = 0x800000025C4D10E0;
    v16 = qword_27FC0AF58 + 168;
    v209 = v9;
    v204 = (v4 + 88);
    while (1)
    {
      v17 = v1[v9];
      switch(v1[v9])
      {
        case 1:
          v49 = v207;
          sub_25C49A890();
          if (v49)
          {
            goto LABEL_75;
          }

          v207 = 0;
          v1[v9] = 2;
LABEL_60:
          v23 = 0x6F637369446E616ELL;
          v24 = 0xEF74696157726576;
          break;
        case 2:
          if (!*&v1[v195])
          {
            goto LABEL_70;
          }

          v1[v9] = 3;
LABEL_50:
          v23 = 0xD000000000000013;
          v24 = v186;
          break;
        case 3:
          v49 = v207;
          sub_25C49B4B4();
          if (v49)
          {
            goto LABEL_75;
          }

          v207 = 0;
          v1[v9] = 4;
LABEL_31:
          v23 = 0xD000000000000012;
          v24 = v182;
          break;
        case 4:
          if (!*(v179 + 1))
          {
            goto LABEL_70;
          }

          goto LABEL_146;
        case 5:
          v49 = v207;
          sub_25C49BDA0();
          if (v49)
          {
            goto LABEL_75;
          }

          v207 = 0;
          v1[v9] = 8;
LABEL_113:
          v23 = 0xD000000000000011;
          v24 = v183;
          break;
        case 6:
          v84 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession;
          swift_beginAccess();
          v85 = *&v1[v84];
          if (!v85)
          {
            v58 = v17;
            v136 = objc_allocWithZone(sub_25C4C7B80());
            v17 = sub_25C4C7B90();
            swift_willThrow();
            if (v17)
            {
              goto LABEL_78;
            }

            v207 = 0;
LABEL_123:
            LODWORD(v17) = v58;
            v16 = qword_27FC0AF58 + 168;
LABEL_124:
            v1[v9] = 7;
LABEL_125:
            v23 = 0x6973736553736469;
            v24 = 0xEE00746961576E6FLL;
            break;
          }

          v86 = v16[302];
          v87 = v85;
          if (v86 != -1)
          {
            swift_once();
          }

          v88 = sub_25C4C7BD0();
          __swift_project_value_buffer(v88, qword_27FC0B978);
          v55 = v87;
          v89 = sub_25C4C7BB0();
          v90 = sub_25C4C8720();
          if (os_log_type_enabled(v89, v90))
          {
            LODWORD(v171) = v90;
            v58 = v17;
            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v210 = v92;
            *v91 = v206;
            v93 = [v55 sessionID];

            if (!v93)
            {
              goto LABEL_198;
            }

            v94 = sub_25C4C8550();
            v96 = v95;

            v97 = sub_25C458990(v94, v96, &v210);

            *(v91 + 4) = v97;
            *(v91 + 12) = 2080;
            v98 = [v55 destination];

            if (!v98)
            {
              goto LABEL_197;
            }

            v99 = sub_25C4C8550();
            v101 = v100;

            v102 = sub_25C458990(v99, v101, &v210);

            *(v91 + 14) = v102;
            _os_log_impl(&dword_25C452000, v89, v171, "IDS server session start: sessionID=%s, peerID=%s", v91, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x25F888630](v92, -1, -1);
            MEMORY[0x25F888630](v91, -1, -1);

            v9 = v209;
            v15 = v204;
          }

          else
          {
            v58 = v17;
          }

          [v55 setDelegate:v1 queue:*&v1[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__dispatchQueue]];
          [v55 acceptInvitation];

          v17 = v207;
          if (!v207)
          {
            goto LABEL_123;
          }

          goto LABEL_78;
        case 7:
          if (v1[v197] != 1)
          {
            goto LABEL_125;
          }

          v1[v9] = 10;
LABEL_95:
          v23 = 0xD000000000000012;
          v24 = v185;
          break;
        case 8:
          v50 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession;
          swift_beginAccess();
          v51 = *&v1[v50];
          if (!v51)
          {
            v58 = v17;
            v134 = objc_allocWithZone(sub_25C4C7B80());
            v17 = sub_25C4C7B90();
            swift_willThrow();
            v135 = v17;
            if (v17)
            {
              goto LABEL_78;
            }

LABEL_119:
            v207 = v135;
            v1[v9] = 9;
            LODWORD(v17) = v58;
            v16 = qword_27FC0AF58 + 168;
LABEL_120:
            v23 = 0xD000000000000011;
            v24 = v187;
            break;
          }

          v52 = v16[302];
          v53 = v51;
          if (v52 != -1)
          {
            swift_once();
          }

          v54 = sub_25C4C7BD0();
          __swift_project_value_buffer(v54, qword_27FC0B978);
          v55 = v53;
          v56 = sub_25C4C7BB0();
          v57 = sub_25C4C8720();
          if (os_log_type_enabled(v56, v57))
          {
            LODWORD(v171) = v57;
            v58 = v17;
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            v210 = v60;
            *v59 = v206;
            v61 = [v55 sessionID];

            if (!v61)
            {
              goto LABEL_196;
            }

            v62 = sub_25C4C8550();
            v64 = v63;

            v65 = sub_25C458990(v62, v64, &v210);

            *(v59 + 4) = v65;
            *(v59 + 12) = 2080;
            v66 = [v55 destination];

            if (!v66)
            {
              __break(1u);
LABEL_196:

              __break(1u);
LABEL_197:
              __break(1u);
LABEL_198:

              __break(1u);
              JUMPOUT(0x25C497620);
            }

            v67 = sub_25C4C8550();
            v69 = v68;

            v70 = sub_25C458990(v67, v69, &v210);

            *(v59 + 14) = v70;
            _os_log_impl(&dword_25C452000, v56, v171, "IDS send invitation: sessionID=%s, destination=%s", v59, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x25F888630](v60, -1, -1);
            MEMORY[0x25F888630](v59, -1, -1);

            v9 = v209;
            v15 = v204;
          }

          else
          {
            v58 = v17;
          }

          [v55 sendInvitation];

          v135 = v207;
          v17 = v207;
          if (!v207)
          {
            goto LABEL_119;
          }

          goto LABEL_78;
        case 9:
          v122 = v1[v196];
          if (v122 == 2)
          {
            goto LABEL_120;
          }

          if (v122)
          {
            goto LABEL_124;
          }

          if (v16[302] != -1)
          {
            swift_once();
          }

          v123 = sub_25C4C7BD0();
          __swift_project_value_buffer(v123, qword_27FC0B978);
          v124 = sub_25C4C7BB0();
          v125 = sub_25C4C8710();
          if (os_log_type_enabled(v124, v125))
          {
            v126 = swift_slowAlloc();
            *v126 = 0;
            _os_log_impl(&dword_25C452000, v124, v125, "### IDS invitation failed", v126, 2u);
            MEMORY[0x25F888630](v126, -1, -1);
          }

          goto LABEL_84;
        case 0xA:
          v35 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__idsSession;
          swift_beginAccess();
          v36 = *&v1[v35];
          if (!v36 || (v37 = [v36 socket], (v37 & 0x80000000) != 0))
          {
            v58 = v17;
            v131 = objc_allocWithZone(sub_25C4C7B80());
            v17 = sub_25C4C7B90();
            swift_willThrow();
            if (v17)
            {
              goto LABEL_78;
            }

            v207 = 0;
            v15 = v204;
LABEL_145:
            LODWORD(v17) = v58;
            v16 = &qword_27FC0AF58[21];
            goto LABEL_146;
          }

          v38 = v37;
          nw_connection_create_with_connected_socket();
          if (v16[302] != -1)
          {
            swift_once();
          }

          v39 = sub_25C4C7BD0();
          __swift_project_value_buffer(v39, qword_27FC0B978);
          v40 = v1;
          v41 = sub_25C4C7BB0();
          v42 = sub_25C4C8720();
          v167 = v40;

          if (os_log_type_enabled(v41, v42))
          {
            v171 = v17;
            v17 = swift_slowAlloc();
            v166 = swift_slowAlloc();
            v210 = v166;
            *v17 = v206;
            v43 = *&v1[v35];
            if (v43)
            {
              v165 = v42;
              v44 = [v43 sessionID];
              if (v44)
              {
                v45 = v44;
                v46 = sub_25C4C8550();
                v48 = v47;
              }

              else
              {
                v48 = 0xE300000000000000;
                v46 = 7104878;
              }

              LOBYTE(v42) = v165;
            }

            else
            {
              v48 = 0xE300000000000000;
              v46 = 7104878;
            }

            v137 = sub_25C458990(v46, v48, &v210);

            *(v17 + 4) = v137;
            *(v17 + 12) = 1024;
            *(v17 + 14) = v38;
            _os_log_impl(&dword_25C452000, v41, v42, "IDS setup connection: sessionID=%s, fd=%d", v17, 0x12u);
            v138 = v166;
            __swift_destroy_boxed_opaque_existential_0(v166);
            MEMORY[0x25F888630](v138, -1, -1);
            MEMORY[0x25F888630](v17, -1, -1);

            LODWORD(v17) = v171;
          }

          else
          {
          }

          sub_25C4C8320();
          v139 = swift_unknownObjectRetain();
          v140 = MEMORY[0x25F8877F0](v139);
          v15 = v204;
          if (!v140)
          {
            v58 = v17;
            v144 = objc_allocWithZone(sub_25C4C7B80());
            v17 = sub_25C4C7B90();
            swift_willThrow();
            swift_unknownObjectRelease();
            if (v17)
            {
              goto LABEL_78;
            }

            v207 = 0;
            goto LABEL_145;
          }

          v141 = v140;
          v58 = v17;
          v142 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection;
          v143 = v167;
          if (*&v167[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon__networkConnection])
          {

            sub_25C4C82F0();
          }

          swift_unknownObjectRelease();
          *&v143[v142] = v141;

          v17 = v207;
          if (!v207)
          {
            goto LABEL_145;
          }

LABEL_78:
          v207 = 0;
          if (qword_27FC0B970 != -1)
          {
            swift_once();
          }

          v109 = sub_25C4C7BD0();
          __swift_project_value_buffer(v109, qword_27FC0B978);
          v110 = v17;
          v111 = sub_25C4C7BB0();
          v112 = sub_25C4C8710();

          if (os_log_type_enabled(v111, v112))
          {
            v113 = swift_slowAlloc();
            v114 = swift_slowAlloc();
            v210 = v114;
            *v113 = v206;
            v115 = sub_25C49A3EC(v58);
            v117 = sub_25C458990(v115, v116, &v210);

            *(v113 + 4) = v117;
            *(v113 + 12) = 2080;
            swift_getErrorValue();
            v118 = sub_25C4C8A30();
            v120 = sub_25C458990(v118, v119, &v210);

            *(v113 + 14) = v120;
            v9 = v209;
            _os_log_impl(&dword_25C452000, v111, v112, "### Run error: state=%s, error=%s", v113, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x25F888630](v114, -1, -1);
            MEMORY[0x25F888630](v113, -1, -1);
            v121 = v17;
            LODWORD(v17) = v58;

            v15 = v204;
          }

          else
          {

            v15 = v204;
            LODWORD(v17) = v58;
          }

          v16 = qword_27FC0AF58 + 168;
LABEL_84:
          v1[v9] = 18;
LABEL_85:
          v24 = 0xE500000000000000;
          v23 = 0x726F727265;
          break;
        case 0xB:
          v49 = v207;
          sub_25C49C57C();
          if (v49)
          {
LABEL_75:
            v58 = v17;
            v17 = v49;
            goto LABEL_78;
          }

          v207 = 0;
          v1[v9] = 12;
LABEL_34:
          v23 = 0x577463656E6E6F63;
          v24 = 0xEB00000000746961;
          break;
        case 0xC:
          if (!*&v1[v202])
          {
            goto LABEL_70;
          }

          v103 = v192;
          sub_25C4C82E0();

          v104 = v193;
          v105 = (*v174)(v103, v193);
          (*v172)(v103, v104);
          if (v105 != v173)
          {
            goto LABEL_70;
          }

          v106 = *&v1[v190];
          v107 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_prefSecurityRequired;
          swift_beginAccess();
          if (*(v106 + v107) == 1)
          {
            if (v1[v188] == 1)
            {
              v1[v9] = 13;
LABEL_133:
              v23 = 0x6972655672696170;
              v24 = 0xEF74726174537966;
            }

            else
            {
LABEL_19:
              v1[v9] = 14;
LABEL_20:
              v24 = 0xEE00746961577966;
              v23 = 0x6972655672696170;
            }
          }

          else
          {
LABEL_72:
            v1[v9] = 17;
LABEL_73:
            v24 = 0xE500000000000000;
            v23 = 0x7964616572;
          }

          break;
        case 0xD:
          if (v16[302] != -1)
          {
            swift_once();
          }

          v30 = sub_25C4C7BD0();
          __swift_project_value_buffer(v30, qword_27FC0B978);
          v31 = sub_25C4C7BB0();
          v32 = sub_25C4C8720();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = v175;
            _os_log_impl(&dword_25C452000, v31, v32, "Pairing start: setup=%{BOOL}d", v33, 8u);
            MEMORY[0x25F888630](v33, -1, -1);
          }

          v34 = *&v1[v205];
          *&v1[v205] = 0;

          v1[v203] = 0;
          *&v1[v201] = mach_absolute_time();
          sub_25C4B3058(0);
          goto LABEL_19;
        case 0xE:
          if (v1[v203])
          {
            goto LABEL_72;
          }

          v58 = v1[v9];
          v71 = *&v1[v205];
          if (!v71)
          {
            goto LABEL_115;
          }

          v72 = v71;
          if (qword_27FC0B970 != -1)
          {
            swift_once();
          }

          v73 = sub_25C4C7BD0();
          __swift_project_value_buffer(v73, qword_27FC0B978);
          v74 = v71;
          v75 = sub_25C4C7BB0();
          v76 = sub_25C4C8720();

          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            v210 = v78;
            *v77 = v169;
            swift_getErrorValue();
            v79 = sub_25C4C8A30();
            v81 = sub_25C458990(v79, v80, &v210);

            *(v77 + 4) = v81;
            _os_log_impl(&dword_25C452000, v75, v76, "PairVerify failed: error=%s", v77, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v78);
            v82 = v78;
            v9 = v209;
            MEMORY[0x25F888630](v82, -1, -1);
            v83 = v77;
            v15 = v204;
            MEMORY[0x25F888630](v83, -1, -1);
          }

          else
          {
          }

          LODWORD(v17) = v58;
          v1[v9] = 15;
          v16 = qword_27FC0AF58 + 168;
LABEL_132:
          v23 = 0x7574655372696170;
          v24 = 0xEE00747261745370;
          break;
        case 0xF:
          if (v16[302] != -1)
          {
            swift_once();
          }

          v25 = sub_25C4C7BD0();
          __swift_project_value_buffer(v25, qword_27FC0B978);
          v26 = sub_25C4C7BB0();
          v27 = sub_25C4C8720();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = v175;
            *(v28 + 4) = 1;
            _os_log_impl(&dword_25C452000, v26, v27, "Pairing start: setup=%{BOOL}d", v28, 8u);
            MEMORY[0x25F888630](v28, -1, -1);
          }

          v29 = *&v1[v205];
          *&v1[v205] = 0;

          v1[v203] = 0;
          *&v1[v201] = mach_absolute_time();
          sub_25C4B3058(1);
          v1[v9] = 16;
LABEL_13:
          v23 = 0x7574655372696170;
          v24 = 0xED00007469615770;
          break;
        case 0x10:
          if (v1[v203])
          {
            goto LABEL_72;
          }

LABEL_70:
          v58 = v17;
          v17 = *&v1[v205];
          if (!v17)
          {
            goto LABEL_115;
          }

          goto LABEL_77;
        case 0x11:
          v58 = v1[v9];
          v17 = *&v1[v205];
          if (v17)
          {
LABEL_77:
            swift_willThrow();
            v108 = v17;
            goto LABEL_78;
          }

          sub_25C49CF5C();
LABEL_115:
          v24 = 0xEA0000000000657ALL;
          LODWORD(v17) = v58;
          v23 = 0x696C616974696E69;
          v16 = qword_27FC0AF58 + 168;
          switch(v1[v9])
          {
            case 1:
              goto LABEL_116;
            case 2:
              goto LABEL_60;
            case 3:
              goto LABEL_50;
            case 4:
              goto LABEL_31;
            case 5:
              goto LABEL_7;
            case 6:
              goto LABEL_128;
            case 7:
              goto LABEL_125;
            case 8:
              goto LABEL_113;
            case 9:
              goto LABEL_120;
            case 0xA:
              goto LABEL_95;
            case 0xB:
              goto LABEL_147;
            case 0xC:
              goto LABEL_34;
            case 0xD:
              goto LABEL_133;
            case 0xE:
              goto LABEL_20;
            case 0xF:
              goto LABEL_132;
            case 0x10:
              goto LABEL_13;
            case 0x11:
              goto LABEL_73;
            case 0x12:
              goto LABEL_85;
            case 0x13:
              goto LABEL_103;
            default:
              goto LABEL_148;
          }

          break;
        case 0x12:
          if (!*&v1[v205])
          {
            v127 = objc_allocWithZone(sub_25C4C7B80());
          }

          v128 = *v198;
          if (*v198)
          {
            v129 = *(v198 + 1);

            v128(v130);
            sub_25C45A2C8(v128, v129);
          }

          if (*&v1[v202])
          {

            sub_25C4C82F0();
          }

          sub_25C497DF8();
          v1[v9] = 19;
          goto LABEL_103;
        case 0x13:
LABEL_103:
          v23 = 0x696157726F727265;
          v24 = 0xE900000000000074;
          break;
        default:
          v171 = v1[v9];
          v18 = v194;
          v20 = v199;
          v19 = v200;
          v167 = *v178;
          (v167)(v199, &v1[v194], v200);
          v166 = *v15;
          v21 = (v166)(v20, v19);
          v22 = *v176;
          (*v176)(v20, v19);
          if (v21 == v177)
          {
            v9 = v209;
            v1[v209] = 5;
            v16 = qword_27FC0AF58 + 168;
            LODWORD(v17) = v171;
LABEL_7:
            v23 = 0xD000000000000015;
            v24 = v184;
          }

          else
          {
            v132 = v191;
            (v167)(v191, &v1[v18], v19);
            v133 = (v166)(v132, v19);
            v22(v132, v19);
            if (v133 == v170)
            {
              v9 = v209;
              v1[v209] = 1;
              v16 = qword_27FC0AF58 + 168;
              LODWORD(v17) = v171;
LABEL_116:
              v23 = 0xD000000000000010;
              v24 = v181;
            }

            else
            {
              v9 = v209;
              v16 = qword_27FC0AF58 + 168;
              LODWORD(v17) = v171;
              if (*&v1[v189])
              {
                v1[v209] = 6;
LABEL_128:
                v23 = 0xD000000000000015;
                v24 = v180;
              }

              else
              {
LABEL_146:
                v1[v9] = 11;
LABEL_147:
                v23 = 0x537463656E6E6F63;
                v24 = 0xEC00000074726174;
              }
            }
          }

          break;
      }

LABEL_148:
      v145 = 0x696C616974696E69;
      v146 = 0xEA0000000000657ALL;
      switch(v17)
      {
        case 0:
          goto LABEL_184;
        case 1:
          v146 = v181;
          if (v23 != 0xD000000000000010)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 2:
          v147 = 0x6F637369446E616ELL;
          v148 = 0x696157726576;
          goto LABEL_175;
        case 3:
          v146 = v186;
          if (v23 != 0xD000000000000013)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 4:
          v146 = v182;
          if (v23 != 0xD000000000000012)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 5:
          v146 = v184;
          if (v23 != 0xD000000000000015)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 6:
          v146 = v180;
          if (v23 != 0xD000000000000015)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 7:
          v149 = 0x6973736553736469;
          v150 = 0x746961576E6FLL;
          goto LABEL_168;
        case 8:
          v145 = 0xD000000000000011;
          v146 = v183;
LABEL_184:
          if (v23 == v145)
          {
            goto LABEL_185;
          }

          goto LABEL_186;
        case 9:
          v146 = v187;
          if (v23 != 0xD000000000000011)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 10:
          v146 = v185;
          if (v23 != 0xD000000000000012)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 11:
          v146 = 0xEC00000074726174;
          if (v23 != 0x537463656E6E6F63)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 12:
          v146 = 0xEB00000000746961;
          if (v23 != 0x577463656E6E6F63)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 13:
          v147 = 0x6972655672696170;
          v148 = 0x726174537966;
LABEL_175:
          v146 = v148 & 0xFFFFFFFFFFFFLL | 0xEF74000000000000;
          if (v23 != v147)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 14:
          v146 = 0xEE00746961577966;
          if (v23 != 0x6972655672696170)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 15:
          v149 = 0x7574655372696170;
          v150 = 0x747261745370;
LABEL_168:
          v146 = v150 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v23 != v149)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 16:
          v146 = 0xED00007469615770;
          if (v23 != 0x7574655372696170)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 17:
          v146 = 0xE500000000000000;
          if (v23 != 0x7964616572)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 18:
          v146 = 0xE500000000000000;
          if (v23 != 0x726F727265)
          {
            goto LABEL_186;
          }

          goto LABEL_185;
        case 19:
          v146 = 0xE900000000000074;
          if (v23 != 0x696157726F727265)
          {
            goto LABEL_186;
          }

LABEL_185:
          if (v24 == v146)
          {

            return;
          }

LABEL_186:
          v151 = sub_25C4C89E0();

          if (v151)
          {
            return;
          }

          if (v16[302] != -1)
          {
            swift_once();
          }

          v152 = sub_25C4C7BD0();
          __swift_project_value_buffer(v152, qword_27FC0B978);
          v153 = v1;
          v154 = sub_25C4C7BB0();
          v155 = sub_25C4C8720();

          if (os_log_type_enabled(v154, v155))
          {
            v156 = swift_slowAlloc();
            v157 = swift_slowAlloc();
            v210 = v157;
            *v156 = v206;
            v158 = sub_25C49A3EC(v17);
            v160 = sub_25C458990(v158, v159, &v210);

            *(v156 + 4) = v160;
            *(v156 + 12) = 2080;
            v161 = sub_25C49A3EC(v1[v209]);
            v163 = sub_25C458990(v161, v162, &v210);
            v9 = v209;

            *(v156 + 14) = v163;
            v16 = qword_27FC0AF58 + 168;
            _os_log_impl(&dword_25C452000, v154, v155, "Session state changed: %s -> %s", v156, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x25F888630](v157, -1, -1);
            MEMORY[0x25F888630](v156, -1, -1);
          }

          if (v1[v208] == 1)
          {
            return;
          }

          break;
        default:
          JUMPOUT(0);
      }
    }
  }
}