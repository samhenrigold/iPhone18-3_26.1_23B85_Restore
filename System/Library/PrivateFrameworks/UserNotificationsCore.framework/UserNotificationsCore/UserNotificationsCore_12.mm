void sub_1DA915DA0(Swift::String *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for AlertCoordinationMessage(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v134[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v134[-v11];
  v13 = type metadata accessor for CloudAction(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v134[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for UserNotificationsCloudRecord(0);
  sub_1DA916AF0(a1 + *(v16 + 20), v15, type metadata accessor for CloudAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v107 = *v15;
      if (qword_1EE110D20 != -1)
      {
        swift_once();
      }

      v108 = sub_1DA9405A4();
      __swift_project_value_buffer(v108, qword_1EE11AD30);
      v109 = v3;
      v110 = v107;
      v111 = sub_1DA940584();
      v112 = sub_1DA940F34();

      v113 = &unk_1ECBD7000;
      if (os_log_type_enabled(v111, v112))
      {
        v114 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        *&v141 = v138;
        *v114 = 136315394;
        v115 = v110;
        v116 = [v115 description];
        v117 = sub_1DA940A14();
        v119 = v118;

        v113 = &unk_1ECBD7000;
        v120 = sub_1DA7AE6E8(v117, v119, &v141);

        *(v114 + 4) = v120;
        *(v114 + 12) = 2080;
        v121 = &v109[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_notificationDelegate];
        Strong = swift_unknownObjectWeakLoadStrong();
        v123 = *(v121 + 1);
        *&v145 = Strong;
        *(&v145 + 1) = v123;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73D8, &unk_1DA963C30);
        v124 = sub_1DA940A74();
        v126 = sub_1DA7AE6E8(v124, v125, &v141);

        *(v114 + 14) = v126;
        _os_log_impl(&dword_1DA7A9000, v111, v112, "UserNotificationsIDSCloudReceiver removeNotification: %s notificationDelegate: %s", v114, 0x16u);
        v127 = v138;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v127, -1, -1);
        MEMORY[0x1E12739F0](v114, -1, -1);
      }

      v128 = &v109[v113[107]];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v129 = *(v128 + 1);
        ObjectType = swift_getObjectType();
        (*(v129 + 16))(v110, a1->_countAndFlagsBits, a1->_object, ObjectType, v129);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v40 = *v15;
      v41 = *(v15 + 1);
      v43 = *(v15 + 2);
      v42 = *(v15 + 3);
      if (qword_1EE110D20 != -1)
      {
        swift_once();
      }

      v44 = sub_1DA9405A4();
      __swift_project_value_buffer(v44, qword_1EE11AD30);
      v45 = v40;
      sub_1DA915D8C(v43, v42);
      v46 = v3;
      v47 = sub_1DA940584();
      v48 = sub_1DA940F34();

      sub_1DA852CB0(v43, v42);
      v49 = os_log_type_enabled(v47, v48);
      v138 = v45;
      if (v49)
      {
        v50 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        *&v141 = v136;
        *v50 = 136315650;
        v51 = v45;
        v52 = [v51 description];
        v53 = sub_1DA940A14();
        v135 = v48;
        v54 = v53;
        v137 = v41;
        v56 = v55;

        v57 = sub_1DA7AE6E8(v54, v56, &v141);

        *(v50 + 4) = v57;
        *(v50 + 12) = 2080;
        *&v145 = v43;
        *(&v145 + 1) = v42;
        sub_1DA915D8C(v43, v42);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6958, &qword_1DA960370);
        v58 = sub_1DA940A74();
        v60 = sub_1DA7AE6E8(v58, v59, &v141);

        *(v50 + 14) = v60;
        *(v50 + 22) = 2080;
        v61 = &v46[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_notificationDelegate];
        v62 = swift_unknownObjectWeakLoadStrong();
        v63 = *(v61 + 1);
        *&v145 = v62;
        *(&v145 + 1) = v63;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73D8, &unk_1DA963C30);
        v64 = sub_1DA940A74();
        v66 = sub_1DA7AE6E8(v64, v65, &v141);

        *(v50 + 24) = v66;
        v41 = v137;
        _os_log_impl(&dword_1DA7A9000, v47, v135, "UserNotificationsIDSCloudReceiver addNotification: %s communicationImageData: %s notificationDelegate: %s", v50, 0x20u);
        v67 = v136;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v67, -1, -1);
        MEMORY[0x1E12739F0](v50, -1, -1);
      }

      v68 = &v46[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_notificationDelegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v69 = *(v68 + 1);
        v70 = swift_getObjectType();
        countAndFlagsBits = a1->_countAndFlagsBits;
        object = a1->_object;
        v73 = v138;
        (*(v69 + 8))(v138, countAndFlagsBits, object, v41, v43, v42, v70, v69);

        sub_1DA852CB0(v43, v42);
        swift_unknownObjectRelease();
      }

      else
      {

        sub_1DA852CB0(v43, v42);
      }
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v74._rawValue = *v15;
    if (qword_1EE110D20 != -1)
    {
      swift_once();
    }

    v75 = sub_1DA9405A4();
    __swift_project_value_buffer(v75, qword_1EE11AD30);
    v76 = v3;

    v77 = sub_1DA940584();
    v78 = sub_1DA940F34();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *&v141 = v80;
      *v79 = 136315394;
      v81 = sub_1DA916B58();
      v82 = MEMORY[0x1E1271CD0](v74._rawValue, v81);
      v84 = sub_1DA7AE6E8(v82, v83, &v141);

      *(v79 + 4) = v84;
      *(v79 + 12) = 2080;
      v85 = &v76[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_categoriesDelegate];
      v86 = swift_unknownObjectWeakLoadStrong();
      v87 = *(v85 + 1);
      *&v145 = v86;
      *(&v145 + 1) = v87;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73D0, &qword_1DA963C28);
      v88 = sub_1DA940A74();
      v90 = sub_1DA7AE6E8(v88, v89, &v141);

      *(v79 + 14) = v90;
      _os_log_impl(&dword_1DA7A9000, v77, v78, "UserNotificationsIDSCloudReceiver updateCategories: %s delegate: %s", v79, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v80, -1, -1);
      MEMORY[0x1E12739F0](v79, -1, -1);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      UserNotificationsCloudReceiver.receiveCategory(categories:bundleIdentifier:)(v74, *a1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v18 = *(v15 + 1);
    v145 = *v15;
    v146 = v18;
    v19 = *(v15 + 3);
    v147 = *(v15 + 2);
    v148 = v19;
    if (qword_1EE110D20 != -1)
    {
      swift_once();
    }

    v20 = sub_1DA9405A4();
    __swift_project_value_buffer(v20, qword_1EE11AD30);
    v21 = v3;
    sub_1DA848A24(&v145, &v141);
    v22 = sub_1DA940584();
    v23 = sub_1DA940F34();
    sub_1DA84A040(&v145);

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v140 = v25;
      *v24 = 136315394;
      v141 = v145;
      v142 = v146;
      v143 = v147;
      v144 = v148;
      sub_1DA848A24(&v145, v139);
      v26 = sub_1DA940A74();
      v28 = sub_1DA7AE6E8(v26, v27, &v140);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v29 = &v21[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_actionsDelegate];
      v30 = swift_unknownObjectWeakLoadStrong();
      v31 = *(v29 + 1);
      *&v141 = v30;
      *(&v141 + 1) = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD73C0, &qword_1DA963C20);
      v32 = sub_1DA940A74();
      v34 = sub_1DA7AE6E8(v32, v33, &v140);

      *(v24 + 14) = v34;
      _os_log_impl(&dword_1DA7A9000, v22, v23, "UserNotificationsIDSCloudReceiver performAction: %sdelegate: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v25, -1, -1);
      MEMORY[0x1E12739F0](v24, -1, -1);
    }

    v35 = &v21[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_actionsDelegate];
    v36 = swift_unknownObjectWeakLoadStrong();
    if (v36)
    {
      v37 = *(v35 + 1);
      v38 = v36;
      v39 = swift_getObjectType();
      v139[0] = v38;
      v141 = v145;
      v142 = v146;
      v143 = v147;
      v144 = v148;
      (*(v37 + 8))(&v141, v39, v37);
      swift_unknownObjectRelease();
    }

    sub_1DA84A040(&v145);
  }

  else
  {
    sub_1DA916BA4(v15, v12, type metadata accessor for AlertCoordinationMessage);
    if (qword_1EE110D20 != -1)
    {
      swift_once();
    }

    v91 = sub_1DA9405A4();
    __swift_project_value_buffer(v91, qword_1EE11AD30);
    sub_1DA916AF0(v12, v10, type metadata accessor for AlertCoordinationMessage);
    v92 = v3;
    v93 = sub_1DA940584();
    v94 = sub_1DA940F34();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *&v141 = v138;
      *v95 = 136315394;
      v96 = AlertCoordinationMessage.description.getter();
      v98 = v97;
      sub_1DA85758C(v10, type metadata accessor for AlertCoordinationMessage);
      v99 = sub_1DA7AE6E8(v96, v98, &v141);

      *(v95 + 4) = v99;
      *(v95 + 12) = 2080;
      v100 = &v92[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_coordinationDelegate];
      v101 = swift_unknownObjectWeakLoadStrong();
      v102 = *(v100 + 1);
      *&v145 = v101;
      *(&v145 + 1) = v102;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73B8, &qword_1DA963C18);
      v103 = sub_1DA940A74();
      v105 = sub_1DA7AE6E8(v103, v104, &v141);

      *(v95 + 14) = v105;
      _os_log_impl(&dword_1DA7A9000, v93, v94, "UserNotificationsIDSCloudReceiver alertCoordination: %s delegate: %s", v95, 0x16u);
      v106 = v138;
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v106, -1, -1);
      MEMORY[0x1E12739F0](v95, -1, -1);
    }

    else
    {

      sub_1DA85758C(v10, type metadata accessor for AlertCoordinationMessage);
    }

    v131 = &v92[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_coordinationDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v132 = *(v131 + 1);
      v133 = swift_getObjectType();
      (*(v132 + 8))(v12, a2, a3, v133, v132);
      swift_unknownObjectRelease();
    }

    sub_1DA85758C(v12, type metadata accessor for AlertCoordinationMessage);
  }
}

uint64_t sub_1DA916AF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DA916B58()
{
  result = qword_1EE114D80;
  if (!qword_1EE114D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE114D80);
  }

  return result;
}

uint64_t sub_1DA916BA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA916C0C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v62 = a5;
  v13 = sub_1DA93F964();
  v67 = *(v13 - 8);
  v68 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v64 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v56 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v56 - v21;
  if (qword_1EE110D20 != -1)
  {
    swift_once();
  }

  v23 = sub_1DA9405A4();
  __swift_project_value_buffer(v23, qword_1EE11AD30);
  v65 = a3;
  sub_1DA9171A4(a3, v22);

  v24 = a1;
  v25 = a2;
  v63 = a2;
  v26 = v25;

  v27 = sub_1DA940584();
  v28 = sub_1DA940F34();
  v66 = a4;

  v61 = v28;
  if (os_log_type_enabled(v27, v28))
  {
    v58 = v27;
    v59 = v7;
    v29 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v71 = v57;
    *v29 = 136316162;
    v69 = a1;
    v30 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7388, &qword_1DA963BF8);
    v31 = sub_1DA940A74();
    v33 = sub_1DA7AE6E8(v31, v32, &v71);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    v69 = v63;
    v34 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7390, &qword_1DA963C00);
    v35 = sub_1DA940A74();
    v37 = sub_1DA7AE6E8(v35, v36, &v71);

    *(v29 + 14) = v37;
    *(v29 + 22) = 2080;
    sub_1DA9171A4(v22, v20);
    v38 = v67;
    v39 = v68;
    result = (*(v67 + 48))(v20, 1, v68);
    if (result == 1)
    {
      goto LABEL_12;
    }

    v41 = v60;
    (*(v38 + 32))(v60, v20, v39);
    sub_1DA917214(&qword_1EE114CB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v42 = sub_1DA941614();
    v44 = v43;
    (*(v38 + 8))(v41, v39);
    sub_1DA7BA120(v22, &qword_1ECBD6310, &unk_1DA95F3B0);
    v45 = sub_1DA7AE6E8(v42, v44, &v71);

    *(v29 + 24) = v45;
    *(v29 + 32) = 2080;
    v69 = v62;
    v70 = a6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73A0, &unk_1DA95CC50);
    v46 = sub_1DA940A74();
    v48 = sub_1DA7AE6E8(v46, v47, &v71);

    *(v29 + 34) = v48;
    *(v29 + 42) = 2080;
    v49 = v66;
    v69 = v66;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD73F0, qword_1DA963C40);
    v50 = sub_1DA940A74();
    v52 = sub_1DA7AE6E8(v50, v51, &v71);

    *(v29 + 44) = v52;
    v53 = v58;
    _os_log_impl(&dword_1DA7A9000, v58, v61, "UserNotificationsIDSCloudReceiver service: %s account: %s incomingResourceAt: %s fromID: %s metadata: %s", v29, 0x34u);
    v54 = v57;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v54, -1, -1);
    MEMORY[0x1E12739F0](v29, -1, -1);
  }

  else
  {

    sub_1DA7BA120(v22, &qword_1ECBD6310, &unk_1DA95F3B0);
    v49 = v66;
    v38 = v67;
    v39 = v68;
  }

  v55 = v64;
  sub_1DA9171A4(v65, v64);
  result = (*(v38 + 48))(v55, 1, v39);
  if (result == 1)
  {
    __break(1u);
  }

  else if (v49)
  {
    sub_1DA913940(v55, v49);
    return (*(v38 + 8))(v55, v39);
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DA9171A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA917214(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DA91725C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7438, &qword_1DA963D00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  sub_1DA940DE4();
  v6 = OBJC_IVAR____TtC21UserNotificationsCore5Queue__streamContinuation;
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC21UserNotificationsCore5Queue__streamContinuation, v2);
  sub_1DA940D64();
  v7 = *(v3 + 8);
  v7(v5, v2);
  v7((v1 + v6), v2);

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for Queue(uint64_t a1)
{
  result = qword_1ECBD7410;
  if (!qword_1ECBD7410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA917420(uint64_t a1)
{
  sub_1DA9174D4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1DA9174D4(uint64_t a1)
{
  if (!qword_1ECBD7420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD7428, &qword_1DA963C88);
    v1 = sub_1DA940D74();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBD7420);
    }
  }
}

uint64_t sub_1DA917538()
{
  sub_1DA941364();
  MEMORY[0x1E1271BD0](60, 0xE100000000000000);
  v1 = sub_1DA941884();
  MEMORY[0x1E1271BD0](v1);

  MEMORY[0x1E1271BD0](32, 0xE100000000000000);
  sub_1DA941494();
  MEMORY[0x1E1271BD0](0x656D616E207B203ELL, 0xEC00000022203D20);
  MEMORY[0x1E1271BD0](*(v0 + OBJC_IVAR____TtC21UserNotificationsCore5Queue_name), *(v0 + OBJC_IVAR____TtC21UserNotificationsCore5Queue_name + 8));
  MEMORY[0x1E1271BD0](0x206B736174202C22, 0xEA0000000000203DLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7430, &qword_1DA963CF8);
  sub_1DA941494();
  MEMORY[0x1E1271BD0](0xD000000000000011, 0x80000001DA9566F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7438, &qword_1DA963D00);
  sub_1DA941494();
  MEMORY[0x1E1271BD0](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_1DA917740()
{

  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DA9177A4()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1DA917A2C;
  }

  else
  {
    v4 = sub_1DA9178D0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DA9178D0()
{
  (*(v0 + 216))(*(v0 + 16), *(v0 + 24), *(v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA917A2C()
{
  v26 = v0;
  v1 = *(v0 + 248);
  (*(v0 + 216))(*(v0 + 192), *(v0 + 24), *(v0 + 112));
  v2 = v1;
  v3 = sub_1DA940584();
  v4 = sub_1DA940F14();

  if (os_log_type_enabled(v3, v4))
  {
    v23 = *(v0 + 232);
    v24 = *(v0 + 248);
    v5 = *(v0 + 192);
    v6 = *(v0 + 112);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v7 = 136446466;
    sub_1DA7BB52C();
    v10 = sub_1DA941614();
    v12 = v11;
    v23(v5, v6);
    v13 = sub_1DA7AE6E8(v10, v12, &v25);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2114;
    v14 = v24;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v15;
    *v8 = v15;
    _os_log_impl(&dword_1DA7A9000, v3, v4, "%{public}s Failed to remove index, error=%{public}@", v7, 0x16u);
    sub_1DA7BA120(v8, &unk_1ECBD5430, &unk_1DA959190);
    MEMORY[0x1E12739F0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E12739F0](v9, -1, -1);
    MEMORY[0x1E12739F0](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 232);
    v17 = *(v0 + 192);
    v18 = *(v0 + 112);

    v16(v17, v18);
  }

  v19 = *(v0 + 248);
  v20 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E88, &unk_1DA958C30);
  *(v20 + 24) = &type metadata for IntelligenceActor.ServiceError;
  *(v20 + 32) = sub_1DA91A058();
  *v20 = 0;
  sub_1DA93FF14();
  sub_1DA93FF34();

  type metadata accessor for StepFailure(0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  swift_storeEnumTagMultiPayload();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1DA917DA0(uint64_t a1, uint64_t a2, int a3)
{
  v8 = *v4;
  *(v8 + 272) = v3;

  v9 = *(v8 + 40);
  if (v3)
  {
    v10 = sub_1DA918F20;
  }

  else
  {
    *(v8 + 344) = a3;
    *(v8 + 280) = a2;
    *(v8 + 288) = a1;
    v10 = sub_1DA917EF0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1DA917EF0()
{
  v90 = v0;
  v86 = *(v0 + 344);
  v1 = *(v0 + 288);
  v82 = *(v0 + 280);
  v2 = qword_1EE110E48;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 160);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 24);
  v8 = sub_1DA9405A4();
  __swift_project_value_buffer(v8, qword_1EE11AD90);
  v84 = *(v5 + 16);
  v84(v4, v7, v6);
  v9 = v3;
  v10 = sub_1DA940584();
  v11 = sub_1DA940F34();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 160);
  v15 = *(v0 + 112);
  v14 = *(v0 + 120);
  v81 = v9;
  if (v12)
  {
    v16 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v89 = v79;
    *v16 = 136446466;
    sub_1DA7BB52C();
    v17 = v1;
    v18 = sub_1DA941614();
    v20 = v19;
    v76 = *(v14 + 8);
    v76(v13, v15);
    v21 = v18;
    v1 = v17;
    v9 = v81;
    v22 = sub_1DA7AE6E8(v21, v20, &v89);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v23 = v82;
    LODWORD(v14) = v86;
    v24 = sub_1DA93B7DC(v1, v82 & 0xFFFFFFFF000000FFLL, v86);
    v26 = v25;

    v27 = sub_1DA7AE6E8(v24, v26, &v89);

    *(v16 + 14) = v27;
    _os_log_impl(&dword_1DA7A9000, v10, v11, "%{public}s Got inference %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v79, -1, -1);
    MEMORY[0x1E12739F0](v16, -1, -1);
  }

  else
  {

    v76 = *(v14 + 8);
    v76(v13, v15);
    LODWORD(v14) = v86;
    v23 = v82;
  }

  v28 = sub_1DA940014();
  v30 = sub_1DA9193E8(v28, v29);

  if (v30)
  {
    v80 = HIDWORD(v23);
    v31 = v9;
  }

  else
  {
    v1 = 0;
    LODWORD(v80) = 5;
  }

  if ((v30 & 0x100) != 0)
  {
    v32 = v23;
  }

  else
  {
    v32 = 0;
  }

  if ((v30 & 0x100) != 0)
  {
    v14 = v14;
  }

  else
  {
    v14 = 5;
  }

  v84(*(v0 + 152), *(v0 + 24), *(v0 + 112));
  v33 = v1;
  v34 = sub_1DA940584();
  v35 = sub_1DA940F34();
  v83 = v33;

  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v0 + 152);
  v38 = v1;
  v39 = *(v0 + 112);
  v87 = v32;
  v78 = v14;
  if (v36)
  {
    v75 = v35;
    log = v34;
    v40 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v89 = v74;
    *v40 = 136447746;
    sub_1DA7BB52C();
    v41 = sub_1DA941614();
    v43 = v42;
    v76(v37, v39);
    v44 = sub_1DA7AE6E8(v41, v43, &v89);

    *(v40 + 4) = v44;
    *(v40 + 12) = 1026;
    *(v40 + 14) = v30 & 1;
    *(v40 + 18) = 1026;
    *(v40 + 20) = (v30 & 0x100) >> 8;
    *(v40 + 24) = 1026;
    *(v40 + 26) = v80;
    if (v38)
    {
      v45 = 49;
    }

    else
    {
      v45 = 48;
    }

    *(v40 + 30) = 2082;
    v46 = sub_1DA7AE6E8(v45, 0xE100000000000000, &v89);

    *(v40 + 32) = v46;
    *(v40 + 40) = 1026;
    *(v40 + 42) = v14;
    *(v40 + 46) = 1026;
    v32 = v87;
    v47 = v87 != 2 && (v87 & 1) != 0;
    *(v40 + 48) = v47;
    _os_log_impl(&dword_1DA7A9000, log, v75, "%{public}s canSummarize %{BOOL,public}d, canPrioritize %{BOOL,public}d, summaryStatus: %{public}u, hasSummary: %{public}s, priorityStatus: %{public}u, priority: %{BOOL,public}d", v40, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v74, -1, -1);
    MEMORY[0x1E12739F0](v40, -1, -1);
  }

  else
  {

    v76(v37, v39);
  }

  *(*(v0 + 256) + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_isHighlight) = v32;
  if (v38)
  {
    v48 = [v33 string];
    sub_1DA940A14();

    v49 = sub_1DA940AC4();
  }

  else
  {
    v49 = 0;
  }

  v50 = v38 == 0;
  v51 = *(v0 + 256);
  v52 = *(v0 + 144);
  v54 = *(v0 + 104);
  v53 = *(v0 + 112);
  v55 = *(v0 + 96);
  v57 = *(v0 + 72);
  v56 = *(v0 + 80);
  v58 = *(v0 + 64);
  v59 = *(v0 + 24);
  v60 = v51 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_summaryTopLineLength;
  *v60 = v49;
  *(v60 + 8) = v50;
  v61 = v51 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_summaryStatus;
  *v61 = v80;
  *(v61 + 4) = 0;
  v62 = v51 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_urgencyStatus;
  *v62 = v78;
  *(v62 + 4) = 0;
  v84(v52, v59, v53);
  LOBYTE(v89) = 0;
  sub_1DA91995C(v78, v87, v54);
  v63 = sub_1DA9402E4();
  (*(*(v63 - 8) + 56))(v54, 0, 1, v63);
  sub_1DA93FF44();
  LOBYTE(v89) = 0;
  sub_1DA919BF4(v80, v55);
  v64 = sub_1DA9402D4();
  (*(*(v64 - 8) + 56))(v55, 0, 1, v64);
  sub_1DA93FF24();
  sub_1DA940044();
  if ((*(v56 + 48))(v58, 1, v57) == 1)
  {
    v65 = *(v0 + 72);
    v66 = *(v0 + 80);
    v67 = *(v0 + 48);
    sub_1DA7BA120(*(v0 + 64), &qword_1ECBD4E08, &qword_1DA958750);
    UNCCatchMeHighlights();
    v68 = v83;
    sub_1DA93FFC4();
    (*(v66 + 56))(v67, 0, 1, v65);
    sub_1DA940054();
  }

  else
  {
    v69 = *(v0 + 80);
    v70 = *(v0 + 88);
    v85 = *(v0 + 72);
    v71 = *(v0 + 56);
    (*(v69 + 32))(v70, *(v0 + 64));
    sub_1DA93FFD4();
    sub_1DA93FFE4();
    sub_1DA93FFB4();
    UNCCatchMeHighlights();
    v88 = v83;
    sub_1DA93FFC4();
    (*(v69 + 56))(v71, 0, 1, v85);
    sub_1DA940054();

    (*(v69 + 8))(v70, v85);
  }

  (*(*(v0 + 120) + 32))(*(v0 + 16), *(v0 + 144), *(v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  swift_storeEnumTagMultiPayload();

  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_1DA918894()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1DA918B2C;
  }

  else
  {
    v4 = sub_1DA9189C0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DA9189C0()
{
  v1 = v0[38];
  v2 = v0[14];
  v4 = v0[2];
  v3 = v0[3];

  v1(v4, v3, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  swift_storeEnumTagMultiPayload();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DA918B2C()
{
  v31 = v0;
  v1 = *(v0 + 336);
  (*(v0 + 304))(*(v0 + 136), *(v0 + 24), *(v0 + 112));
  v2 = v1;
  v3 = sub_1DA940584();
  v4 = sub_1DA940F14();

  if (os_log_type_enabled(v3, v4))
  {
    v28 = *(v0 + 320);
    v29 = *(v0 + 336);
    v5 = *(v0 + 136);
    v6 = *(v0 + 112);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v7 = 136446466;
    sub_1DA7BB52C();
    v10 = sub_1DA941614();
    v12 = v11;
    v28(v5, v6);
    v13 = sub_1DA7AE6E8(v10, v12, &v30);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    v14 = v29;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v15;
    *v8 = v15;
    _os_log_impl(&dword_1DA7A9000, v3, v4, "%{public}s Error while indexing %@", v7, 0x16u);
    sub_1DA7BA120(v8, &unk_1ECBD5430, &unk_1DA959190);
    MEMORY[0x1E12739F0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E12739F0](v9, -1, -1);
    MEMORY[0x1E12739F0](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 320);
    v17 = *(v0 + 136);
    v18 = *(v0 + 112);

    v16(v17, v18);
  }

  v19 = *(v0 + 336);
  v20 = *(v0 + 16);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E88, &unk_1DA958C30);
  v22 = *(v21 + 48);
  v23 = *(v21 + 64);
  *(v20 + 24) = &type metadata for IntelligenceActor.ServiceError;
  *(v20 + 32) = sub_1DA91A058();

  *v20 = 3;
  v24 = sub_1DA9402D4();
  (*(*(v24 - 8) + 56))(v20 + v22, 1, 1, v24);
  v25 = sub_1DA9402E4();
  (*(*(v25 - 8) + 56))(v20 + v23, 1, 1, v25);
  type metadata accessor for StepFailure(0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  swift_storeEnumTagMultiPayload();

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1DA918F20()
{
  v40 = v0;
  if (qword_1EE110E48 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[3];
  v6 = sub_1DA9405A4();
  __swift_project_value_buffer(v6, qword_1EE11AD90);
  (*(v3 + 16))(v2, v5, v4);
  v7 = v1;
  v8 = sub_1DA940584();
  v9 = sub_1DA940F34();

  if (os_log_type_enabled(v8, v9))
  {
    v37 = v0[34];
    v11 = v0[15];
    v10 = v0[16];
    v12 = v0[14];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *v13 = 136446466;
    sub_1DA7BB52C();
    v15 = sub_1DA941614();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_1DA7AE6E8(v15, v17, &v39);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v37;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_1DA7A9000, v8, v9, "%{public}s Notification inference failed with error: %@", v13, 0x16u);
    sub_1DA7BA120(v14, &unk_1ECBD5430, &unk_1DA959190);
    MEMORY[0x1E12739F0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E12739F0](v38, -1, -1);
    MEMORY[0x1E12739F0](v13, -1, -1);
  }

  else
  {
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[14];

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[34];
  v25 = v0[2];
  sub_1DA8214C8(v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E88, &unk_1DA958C30);
  v27 = *(v26 + 48);
  v28 = *(v26 + 64);
  *(v25 + 24) = &type metadata for IntelligenceActor.ServiceError;
  *(v25 + 32) = sub_1DA91A058();

  *v25 = 2;
  v29 = *MEMORY[0x1E69DF1D0];
  v30 = sub_1DA9402D4();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v25 + v27, v29, v30);
  (*(v31 + 56))(v25 + v27, 0, 1, v30);
  v32 = *MEMORY[0x1E69DF200];
  v33 = sub_1DA9402E4();
  v34 = *(v33 - 8);
  (*(v34 + 104))(v25 + v28, v32, v33);
  (*(v34 + 56))(v25 + v28, 0, 1, v33);
  type metadata accessor for StepFailure(0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  swift_storeEnumTagMultiPayload();

  v35 = v0[1];

  return v35();
}

uint64_t sub_1DA9193E8(uint64_t a1, unint64_t a2)
{
  v4 = off_1F563AD40[0];
  type metadata accessor for NotificationSettingsManager();
  v5 = v4();
  if (!v5)
  {
    if (qword_1EE110E48 != -1)
    {
      swift_once();
    }

    v34 = sub_1DA9405A4();
    __swift_project_value_buffer(v34, qword_1EE11AD90);

    v6 = sub_1DA940584();
    v35 = sub_1DA940F14();

    if (os_log_type_enabled(v6, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v48 = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_1DA7AE6E8(a1, a2, &v48);
      _os_log_impl(&dword_1DA7A9000, v6, v35, "[%{public}s] Could not determine system summarization and prioritization setting.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1E12739F0](v37, -1, -1);
      MEMORY[0x1E12739F0](v36, -1, -1);
    }

    goto LABEL_41;
  }

  v6 = v5;
  v7 = [v5 summarizationSetting];
  v8 = [v6 prioritizationSetting];
  v9 = (off_1F563AD38)(a1, a2);
  if (!v9)
  {
    if (qword_1EE110E48 != -1)
    {
      swift_once();
    }

    v38 = sub_1DA9405A4();
    __swift_project_value_buffer(v38, qword_1EE11AD90);

    v39 = sub_1DA940584();
    v40 = sub_1DA940F14();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v48 = v42;
      *v41 = 136446210;
      *(v41 + 4) = sub_1DA7AE6E8(a1, a2, &v48);
      _os_log_impl(&dword_1DA7A9000, v39, v40, "[%{public}s] Could not determine source summarization and prioritization setting.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1E12739F0](v42, -1, -1);
      MEMORY[0x1E12739F0](v41, -1, -1);
    }

LABEL_41:
    v14 = 0;
    goto LABEL_42;
  }

  v10 = v9;
  v11 = [v9 notificationSettings];
  v12 = [v11 summarizationSetting];

  v46 = v12;
  v13 = v7 == 2 && v12 == 2;
  v14 = v13;
  v15 = [v10 notificationSettings];
  v16 = [v15 prioritizationSetting];

  v47 = v8;
  v13 = v8 == 2;
  v17 = v16;
  v19 = v13 && v16 == 2;
  if (qword_1EE110E48 != -1)
  {
    swift_once();
  }

  v20 = sub_1DA9405A4();
  __swift_project_value_buffer(v20, qword_1EE11AD90);

  v21 = sub_1DA940584();
  v22 = sub_1DA940F34();

  if (!os_log_type_enabled(v21, v22))
  {

    if (v19)
    {
LABEL_44:
      v33 = 256;
      return v33 | v14;
    }

LABEL_42:
    v33 = 0;
    return v33 | v14;
  }

  v45 = v19;
  v23 = a1;
  v24 = swift_slowAlloc();
  v44 = swift_slowAlloc();
  v48 = v44;
  *v24 = 136447234;
  *(v24 + 4) = sub_1DA7AE6E8(v23, a2, &v48);
  *(v24 + 12) = 2082;
  if (v7 == 2)
  {
    v25 = 49;
  }

  else
  {
    v25 = 48;
  }

  v26 = sub_1DA7AE6E8(v25, 0xE100000000000000, &v48);

  *(v24 + 14) = v26;
  *(v24 + 22) = 2082;
  if (v46 == 2)
  {
    v27 = 49;
  }

  else
  {
    v27 = 48;
  }

  v28 = sub_1DA7AE6E8(v27, 0xE100000000000000, &v48);

  *(v24 + 24) = v28;
  *(v24 + 32) = 2082;
  if (v47 == 2)
  {
    v29 = 49;
  }

  else
  {
    v29 = 48;
  }

  v30 = sub_1DA7AE6E8(v29, 0xE100000000000000, &v48);

  *(v24 + 34) = v30;
  *(v24 + 42) = 2082;
  if (v17 == 2)
  {
    v31 = 49;
  }

  else
  {
    v31 = 48;
  }

  v32 = sub_1DA7AE6E8(v31, 0xE100000000000000, &v48);

  *(v24 + 44) = v32;
  _os_log_impl(&dword_1DA7A9000, v21, v22, "%{public}s systemSummarization %{public}s, sourceSummarization %{public}s, systemPrioritization %{public}s, sourcePrioritization %{public}s,", v24, 0x34u);
  swift_arrayDestroy();
  MEMORY[0x1E12739F0](v44, -1, -1);
  MEMORY[0x1E12739F0](v24, -1, -1);

  v33 = v45;
  if (v45)
  {
    goto LABEL_44;
  }

  return v33 | v14;
}

uint64_t sub_1DA91995C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60A8, &unk_1DA963DC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  if ((a1 & 0x100000000) == 0)
  {
    switch(a1)
    {
      case 4:
        v12 = MEMORY[0x1E69DF1F0];
        goto LABEL_8;
      case 2:
        v12 = MEMORY[0x1E69DF200];
        goto LABEL_8;
      case 1:
        if (a2 == 2)
        {
          v9 = sub_1DA9402E4();
          v10 = *(v9 - 8);
          (*(v10 + 56))(v8, 1, 1, v9);
          return (*(v10 + 104))(a3, *MEMORY[0x1E69DF208], v9);
        }

        else
        {
          v16 = sub_1DA9402E4();
          v17 = *(v16 - 8);
          v18 = MEMORY[0x1E69DF1E0];
          if ((a2 & 1) == 0)
          {
            v18 = MEMORY[0x1E69DF1E8];
          }

          (*(*(v16 - 8) + 104))(v8, *v18, v16);
          sub_1DA9402E4();
          (*(v17 + 56))(v8, 0, 1, v16);
          return (*(v17 + 32))(a3, v8, v16);
        }
    }
  }

  v12 = MEMORY[0x1E69DF208];
LABEL_8:
  v13 = *v12;
  v14 = sub_1DA9402E4();
  v15 = *(*(v14 - 8) + 104);

  return v15(a3, v13, v14);
}

uint64_t sub_1DA919BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x100000000) != 0 || (a1 - 1) > 3)
  {
    v3 = MEMORY[0x1E69DF1D8];
  }

  else
  {
    v3 = qword_1E85D8228[(a1 - 1)];
  }

  v4 = *v3;
  v5 = sub_1DA9402D4();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

uint64_t sub_1DA919C88()
{
  result = os_variant_has_internal_content();
  byte_1EE112FF0 = result;
  return result;
}

uint64_t sub_1DA919CB0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1DA919CE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7440, &unk_1DA963DD0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_1DA9401A4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = UNCCatchMe();
  if (result)
  {
    if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
    {
      if (sub_1DA940014() == 0x6C7070612E6D6F63 && v8 == 0xEE0073616D632E65)
      {

        return 2;
      }

      else
      {
        v9 = sub_1DA941684();

        if (v9)
        {
          return 2;
        }

        else if (sub_1DA93FF74())
        {
          sub_1DA93FF54();
          if ((*(v4 + 48))(v2, 1, v3) == 1)
          {
            sub_1DA7BA120(v2, &unk_1ECBD7440, &unk_1DA963DD0);
            return 9;
          }

          else
          {
            (*(v4 + 32))(v6, v2, v3);
            if (sub_1DA940194())
            {
              (*(v4 + 8))(v6, v3);
              return 3;
            }

            else if (sub_1DA940174())
            {
              (*(v4 + 8))(v6, v3);
              return 4;
            }

            else
            {
              v10 = sub_1DA9401C4();
              if (v10 && (v11 = v10, v12 = [v10 isEligibleForIndexing], v11, (v12 & 1) == 0))
              {
                (*(v4 + 8))(v6, v3);
                return 7;
              }

              else
              {
                v13 = objc_opt_self();
                sub_1DA940014();
                v14 = sub_1DA940A04();

                v15 = [v13 applicationWithBundleIdentifier_];

                if ([v15 isHidden])
                {
                  (*(v4 + 8))(v6, v3);

                  return 8;
                }

                else
                {
                  v16 = [v15 isLocked];

                  (*(v4 + 8))(v6, v3);
                  if (v16)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }

        else
        {
          return 5;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_1DA91A058()
{
  result = qword_1EE112FF8;
  if (!qword_1EE112FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112FF8);
  }

  return result;
}

unint64_t sub_1DA91A0C0()
{
  result = qword_1EE113008;
  if (!qword_1EE113008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE113008);
  }

  return result;
}

unint64_t sub_1DA91A114(uint64_t a1)
{
  *(a1 + 8) = sub_1DA91A0C0();
  result = sub_1DA91A144();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DA91A144()
{
  result = qword_1EE113000;
  if (!qword_1EE113000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE113000);
  }

  return result;
}

id sub_1DA91A1AC()
{
  [*&v0[OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_connection] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationCoreServiceConnection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1DA91A2C4()
{
  v1 = *&v0[OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_connection];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DA91B6BC;
  *(v3 + 24) = v2;
  v7[4] = sub_1DA8D2650;
  v7[5] = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1DA88419C;
  v7[3] = &block_descriptor_36;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 configureConnection_];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    [v1 activate];
  }
}

void sub_1DA91A430(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  v5 = [objc_opt_self() serviceInterface];
  [a1 setInterface_];

  [a1 setInterfaceTarget_];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_1DA91B710;
  v15 = v6;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1DA7B00D0;
  v13 = &block_descriptor_42;
  v7 = _Block_copy(&v10);

  [a1 setInterruptionHandler_];
  _Block_release(v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_1DA91B6C4;
  v15 = v8;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1DA7B00D0;
  v13 = &block_descriptor_46_1;
  v9 = _Block_copy(&v10);

  [a1 setInvalidationHandler_];
  _Block_release(v9);
}

void sub_1DA91A648(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1DA884758(v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1DA91A814(uint64_t a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(v7 + OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_notificationRepository);
  v13 = [a3 BOOLValue];
  v14 = sub_1DA940A04();
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  *(v15 + 24) = a7;
  v17[4] = sub_1DA91B6B4;
  v17[5] = v15;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1DA91AA00;
  v17[3] = &block_descriptor_27_1;
  v16 = _Block_copy(v17);
  sub_1DA7B3DC0(a6, a7);

  [v12 saveNotificationRecord:a1 targetRevisionNumber:a2 shouldRepost:v13 forBundleIdentifier:v14 withCompletionHandler:v16];
  _Block_release(v16);
}

uint64_t sub_1DA91A964(uint64_t result, uint64_t a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  if (a3)
  {
    v7 = result;
    v8 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v9 = [v8 initWithUnsignedInteger_];
    a3(v9, a2);

    return sub_1DA7B5220(a3, a4);
  }

  return result;
}

void sub_1DA91AA00(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1DA91AE94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = *(v5 + OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_notificationRepository);
  v10 = sub_1DA940A04();
  if (a4)
  {
    v11[4] = a4;
    v11[5] = a5;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1DA7B1BFC;
    v11[3] = &block_descriptor_18;
    a4 = _Block_copy(v11);
  }

  [v9 setBadgeNumber:a1 forBundleIdentifier:v10 withCompletionHandler:a4];
  _Block_release(a4);
}

void sub_1DA91B070(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = *(v5 + OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_notificationRepository);
  v9 = [a1 integerValue];
  v10 = sub_1DA940A04();
  if (a4)
  {
    v11[4] = a4;
    v11[5] = a5;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1DA7B1BFC;
    v11[3] = &block_descriptor_11;
    a4 = _Block_copy(v11);
  }

  [v8 setBadgeCount:v9 forBundleIdentifier:v10 withCompletionHandler:a4];
  _Block_release(a4);
}

void sub_1DA91B25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = *(v6 + OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_notificationRepository);
  if (a2)
  {
    v10 = sub_1DA940A04();
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1DA940A04();
  if (a5)
  {
    v12[4] = a5;
    v12[5] = a6;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_1DA7B1BFC;
    v12[3] = &block_descriptor_24;
    a5 = _Block_copy(v12);
  }

  [v9 setBadgeString:v10 forBundleIdentifier:v11 withCompletionHandler:a5];
  _Block_release(a5);
}

id sub_1DA91B4E8(char *a1, uint64_t a2, void *a3)
{
  v3 = *&a1[*a3];
  v4 = a1;
  v5 = [v3 allBundleIdentifiers];
  if (!v5)
  {
    sub_1DA940BE4();
    v5 = sub_1DA940BD4();
  }

  return v5;
}

id sub_1DA91B5E4(char *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5, unint64_t *a6, void *a7)
{
  v11 = *&a1[*a4];
  v12 = a1;
  v13 = [v11 *a5];
  if (!v13)
  {
    sub_1DA7AF3EC(0, a6, a7);
    sub_1DA940BE4();
    v13 = sub_1DA940BD4();
  }

  return v13;
}

unint64_t sub_1DA91B728()
{
  result = qword_1ECBD7470;
  if (!qword_1ECBD7470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7470);
  }

  return result;
}

uint64_t sub_1DA91B7E0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1DA91B844()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1DA91B8A0()
{
  v1 = [*(v0 + 16) allBundleIdentifiers];
  v2 = sub_1DA940BE4();

  return v2;
}

uint64_t sub_1DA91B8F0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_1DA940A04();
  v5 = [v3 notificationRecordsForBundleIdentifier_];

  sub_1DA81AA20();
  v6 = sub_1DA940BE4();

  return v6;
}

void sub_1DA91B95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = sub_1DA940E84();
  v6 = sub_1DA940A04();
  [v4 removeNotificationRecordsForIdentifiers:v5 bundleIdentifier:v6];
}

uint64_t sub_1DA91B9EC(void *a1, int a2)
{
  v17 = a2;
  v19 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD75F0, &qword_1DA964578);
  v16 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v14 - v3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD75F8, &qword_1DA964580);
  v5 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7600, &unk_1DA964588);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA920A50();
  sub_1DA941834();
  if (v19 == 2)
  {
    v20 = 0;
    sub_1DA920AF8();
    sub_1DA9415A4();
    (*(v5 + 8))(v7, v15);
  }

  else
  {
    v21 = 1;
    sub_1DA920AA4();
    sub_1DA9415A4();
    v13 = v18;
    sub_1DA9415E4();
    (*(v16 + 8))(v4, v13);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1DA91BCF0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7538, &qword_1DA964508);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA9200AC();
  sub_1DA941834();
  v10[15] = *v3;
  v10[14] = 0;
  sub_1DA920100();
  sub_1DA941604();
  if (!v2)
  {
    v10[13] = 1;
    sub_1DA9415D4();
    type metadata accessor for AlertCoordinatorXPCMessage(0);
    v10[12] = 2;
    sub_1DA93FAF4();
    sub_1DA920A08(&qword_1ECBD6908, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1DA941604();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DA91BF24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = sub_1DA93FAF4();
  v18 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD75B0, &qword_1DA964558);
  v20 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v7 = v16 - v6;
  v8 = type metadata accessor for AlertCoordinatorXPCMessage(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA9200AC();
  sub_1DA941804();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v8;
  v11 = a1;
  v12 = v20;
  v13 = v21;
  v25 = 0;
  sub_1DA9209B4();
  sub_1DA941584();
  *v10 = v26;
  v24 = 1;
  *(v10 + 1) = sub_1DA941554();
  *(v10 + 2) = v14;
  v16[1] = v14;
  v23 = 2;
  sub_1DA920A08(&qword_1ECBD6920, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1DA941584();
  (*(v12 + 8))(v7, v22);
  (*(v18 + 32))(&v10[*(v17 + 24)], v5, v13);
  sub_1DA8FC808(v10, v19);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return sub_1DA8FC86C(v10);
}

unint64_t sub_1DA91C2C0()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_1DA91C2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000017 && 0x80000001DA9569C0 == a2;
  if (v5 || (sub_1DA941684() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DA9569E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DA941684();

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

uint64_t sub_1DA91C3E0(uint64_t a1)
{
  v2 = sub_1DA920A50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA91C41C(uint64_t a1)
{
  v2 = sub_1DA920A50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA91C458(uint64_t a1)
{
  v2 = sub_1DA920AA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA91C494(uint64_t a1)
{
  v2 = sub_1DA920AA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA91C4D0(uint64_t a1)
{
  v2 = sub_1DA920AF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA91C50C(uint64_t a1)
{
  v2 = sub_1DA920AF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA91C548@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DA91EFF0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DA91C590()
{
  v1 = 0x6163696669746F6ELL;
  if (*v0 != 1)
  {
    v1 = 1702125924;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_1DA91C5EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DA91F4BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DA91C614(uint64_t a1)
{
  v2 = sub_1DA9200AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA91C650(uint64_t a1)
{
  v2 = sub_1DA9200AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlertCoordinatorServer.deinit()
{

  sub_1DA7C5714(v0 + 40);
  return v0;
}

uint64_t AlertCoordinatorServer.__deallocating_deinit()
{

  sub_1DA7C5714(v0 + 40);

  return swift_deallocClassInstance();
}

double AlertCoordinatorServer.handleIncomingRequest(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_1DA9407A4();
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v56 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7490, &qword_1DA964140);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v54 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v53 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v53 - v14;
  v55 = v13;
  v61 = swift_allocBox();
  v17 = v16;
  v18 = type metadata accessor for AlertCoordinatorXPCMessage(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v20(v17, 1, 1, v18);
  sub_1DA920A08(&qword_1ECBD7498, type metadata accessor for AlertCoordinatorXPCMessage, &unk_1DA9643CC);
  v63 = a1;
  sub_1DA940794();
  (v20)(&OBJC_PROTOCOL___UNOneTimeCodeServerProtocol.cb, v15, 0, 1, v18);
  sub_1DA91EF80(v15, v17);
  v21 = v59;
  sub_1DA91EDE0(v17, v12);
  LODWORD(a1) = (*(v19 + 48))(v12, 1, v18);
  sub_1DA7BA120(v12, &qword_1ECBD7490, &qword_1DA964140);
  if (a1 == 1)
  {
    v22 = v63;
    if (qword_1ECBD4800 != -1)
    {
      swift_once();
    }

    v23 = sub_1DA9405A4();
    __swift_project_value_buffer(v23, qword_1ECBD7478);
    v24 = *(v21 + 16);
    v25 = v56;
    v26 = v60;
    v24(v56, v22, v60);
    v27 = sub_1DA940584();
    v28 = sub_1DA940F14();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v64[0] = v30;
      *v29 = 136315138;
      v24(v58, v25, v26);
      v31 = sub_1DA940A74();
      v33 = v32;
      (*(v21 + 8))(v25, v26);
      v34 = sub_1DA7AE6E8(v31, v33, v64);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_1DA7A9000, v27, v28, "Message failed to decode. %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1E12739F0](v30, -1, -1);
      MEMORY[0x1E12739F0](v29, -1, -1);
    }

    else
    {

      (*(v21 + 8))(v25, v26);
    }

    v64[0] = 0;
    v64[1] = 0;
    v65 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7050, &unk_1DA962930);
    sub_1DA91EE50();
    sub_1DA940784();
    v51 = v62;
    *(v62 + 32) = 0;
    *v51 = 0u;
    v51[1] = 0u;
  }

  else
  {
    v59 = v4;
    v35 = v63;
    if (qword_1ECBD4800 != -1)
    {
      swift_once();
    }

    v36 = sub_1DA9405A4();
    __swift_project_value_buffer(v36, qword_1ECBD7478);
    v37 = v61;

    v38 = sub_1DA940584();
    v39 = sub_1DA940F04();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v66 = v41;
      *v40 = 136315138;
      swift_beginAccess();
      sub_1DA91EDE0(v17, v54);
      v42 = sub_1DA940A74();
      v44 = sub_1DA7AE6E8(v42, v43, &v66);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_1DA7A9000, v38, v39, "Received XPC request: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1E12739F0](v41, -1, -1);
      MEMORY[0x1E12739F0](v40, -1, -1);
    }

    v45 = v57;
    v46 = v58;
    v47 = v60;
    (*(v21 + 16))(v58, v35, v60);
    v48 = (*(v21 + 80) + 24) & ~*(v21 + 80);
    v49 = (v59 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = swift_allocObject();
    *(v50 + 16) = v37;
    (*(v21 + 32))(v50 + v48, v46, v47);
    *(v50 + v49) = v45;

    sub_1DA940774();
  }

  return result;
}

uint64_t sub_1DA91CF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a3;
  v58 = a2;
  v3 = sub_1DA9407A4();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v52 = v4;
  v57 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v56 = &v49 - v6;
  v7 = sub_1DA93FAF4();
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v59 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7490, &qword_1DA964140);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v49 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v49 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v49 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v49 - v24;
  v26 = swift_projectBox();
  swift_beginAccess();
  sub_1DA91EDE0(v26, v25);
  v27 = type metadata accessor for AlertCoordinatorXPCMessage(0);
  v28 = *(*(v27 - 8) + 48);
  result = v28(v25, 1, v27);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v30 = *v25;
  sub_1DA8FC86C(v25);
  if (v30 != 2)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    swift_beginAccess();
    sub_1DA91EDE0(v26, v17);
    result = v28(v17, 1, v27);
    if (result != 1)
    {
      v48 = *(v17 + 1);
      v47 = *(v17 + 2);

      sub_1DA8FC86C(v17);
      swift_beginAccess();
      sub_1DA91EDE0(v26, v14);
      result = v28(v14, 1, v27);
      if (result != 1)
      {
        v46 = v59;
        v34 = v60;
        v33 = v61;
        (*(v60 + 16))(v59, &v14[*(v27 + 24)], v61);
        sub_1DA8FC86C(v14);
        sub_1DA857034(v48, v47, v30 & 1, v46);
        swift_unknownObjectRelease();

        return (*(v34 + 8))(v46, v33);
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v31 = v58;
  result = sub_1DA940764();
  if ((result & 1) == 0)
  {
    return result;
  }

  swift_beginAccess();
  sub_1DA91EDE0(v26, v23);
  result = v28(v23, 1, v27);
  if (result == 1)
  {
    goto LABEL_16;
  }

  v32 = *(v23 + 2);
  v49 = *(v23 + 1);
  v50 = v32;

  sub_1DA8FC86C(v23);
  swift_beginAccess();
  sub_1DA91EDE0(v26, v20);
  result = v28(v20, 1, v27);
  if (result == 1)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v34 = v60;
  v33 = v61;
  v35 = *(v60 + 16);
  v36 = &v20[*(v27 + 24)];
  v37 = v55;
  v35(v55, v36, v61);
  sub_1DA8FC86C(v20);
  v38 = sub_1DA940D34();
  (*(*(v38 - 8) + 56))(v56, 1, 1, v38);
  v39 = v59;
  v35(v59, v37, v33);
  v40 = v53;
  v41 = v54;
  (*(v53 + 16))(v57, v31, v54);
  v42 = (*(v34 + 80) + 56) & ~*(v34 + 80);
  v43 = (v51 + *(v40 + 80) + v42) & ~*(v40 + 80);
  v44 = swift_allocObject();
  *(v44 + 2) = 0;
  *(v44 + 3) = 0;
  v45 = v49;
  *(v44 + 4) = v62;
  *(v44 + 5) = v45;
  *(v44 + 6) = v50;
  (*(v34 + 32))(&v44[v42], v39, v33);
  (*(v40 + 32))(&v44[v43], v57, v41);

  sub_1DA8DB00C(0, 0, v56, &unk_1DA9645A0, v44);

  v46 = v55;
  return (*(v34 + 8))(v46, v33);
}

uint64_t sub_1DA91D5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a6;
  v8[8] = a8;
  v8[5] = a4;
  v8[6] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DA91D5D4, 0, 0);
}

uint64_t sub_1DA91D5D4()
{
  v17 = v0;
  if (qword_1ECBD4800 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA9405A4();
  *(v0 + 72) = __swift_project_value_buffer(v1, qword_1ECBD7478);
  v2 = sub_1DA940584();
  v3 = sub_1DA940F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DA7A9000, v2, v3, "In work continuation", v4, 2u);
    MEMORY[0x1E12739F0](v4, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v6 = swift_task_alloc();
    *(v0 + 88) = v6;
    *v6 = v0;
    v6[1] = sub_1DA91D8B0;

    return sub_1DA854330(v0 + 33);
  }

  else
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7050, &unk_1DA962930);
    sub_1DA91EE50();
    sub_1DA940784();
    v8 = sub_1DA940584();
    v9 = sub_1DA940F34();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      *(v0 + 35) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD68F0, &qword_1DA960170);
      v12 = sub_1DA940A74();
      v14 = sub_1DA7AE6E8(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1DA7A9000, v8, v9, "Replied with shouldAlert=%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1E12739F0](v11, -1, -1);
      MEMORY[0x1E12739F0](v10, -1, -1);
    }

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1DA91D8B0()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1DA91D9C8, 0, 0);
}

uint64_t sub_1DA91D9C8()
{
  v16 = v0;
  v1 = *(v0 + 33);
  v2 = *(v0 + 34);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
LABEL_5:
      v3 = sub_1DA941684();

      v4 = v3 & 1;
      goto LABEL_8;
    }

    v4 = 0;
  }

  else
  {
    if (!*(v0 + 33))
    {
      goto LABEL_5;
    }

    swift_bridgeObjectRelease_n();
    v4 = 1;
  }

LABEL_8:
  *(v0 + 16) = v4;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7050, &unk_1DA962930);
  sub_1DA91EE50();
  sub_1DA940784();
  v5 = sub_1DA940584();
  v6 = sub_1DA940F34();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v1 | (v2 << 8);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    *(v0 + 35) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD68F0, &qword_1DA960170);
    v10 = sub_1DA940A74();
    v12 = sub_1DA7AE6E8(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1DA7A9000, v5, v6, "Replied with shouldAlert=%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E12739F0](v9, -1, -1);
    MEMORY[0x1E12739F0](v8, -1, -1);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1DA91DC24(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7590, &qword_1DA964538);
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7598, &qword_1DA964540);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD75A0, &qword_1DA964548);
  v21 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD75A8, &qword_1DA964550);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA920864();
  v16 = v28;
  sub_1DA941834();
  if (!v16)
  {
    v30 = 1;
    sub_1DA92090C();
    sub_1DA9415A4();
    v18 = v22;
    v17 = v23;
    goto LABEL_5;
  }

  if (v16 == 1)
  {
    v31 = 2;
    sub_1DA9208B8();
    v8 = v24;
    sub_1DA9415A4();
    v18 = v25;
    v17 = v26;
LABEL_5:
    (*(v18 + 8))(v8, v17);
    return (*(v13 + 8))(v15, v12);
  }

  v29 = 0;
  sub_1DA920960();
  sub_1DA9415A4();
  sub_1DA9415D4();
  (*(v21 + 8))(v11, v9);
  return (*(v13 + 8))(v15, v12);
}

unint64_t sub_1DA91DFDC()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x74754F64656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69796C7265646E75;
  }
}

uint64_t sub_1DA91E048@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DA920154(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DA91E070(uint64_t a1)
{
  v2 = sub_1DA920864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA91E0AC(uint64_t a1)
{
  v2 = sub_1DA920864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA91E0E8(uint64_t a1)
{
  v2 = sub_1DA92090C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA91E124(uint64_t a1)
{
  v2 = sub_1DA92090C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA91E160(uint64_t a1)
{
  v2 = sub_1DA9208B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA91E19C(uint64_t a1)
{
  v2 = sub_1DA9208B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA91E1D8(uint64_t a1)
{
  v2 = sub_1DA920960();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA91E214(uint64_t a1)
{
  v2 = sub_1DA920960();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DA91E250@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DA92027C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1DA91E298()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD7478);
  __swift_project_value_buffer(v0, qword_1ECBD7478);
  return sub_1DA940594();
}

uint64_t sub_1DA91E31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a5;
  v39 = a6;
  v44 = a1;
  v45 = a2;
  v42 = *(a4 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v11;
  v14 = type metadata accessor for UNCXPCResult(0, v12, v11, v13);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v40 = *(TupleTypeMetadata2 - 8);
  v22 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v24 = &v36 - v23;
  v25 = *(v22 + 48);
  v26 = *(v15 + 16);
  v26(&v36 - v23, v44, v14);
  v26(&v24[v25], v45, v14);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v26(v20, v24, v14);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v32 = v41;
      v33 = v36;
      (*(v41 + 32))(v36, &v24[v25], a3);
      v30 = sub_1DA9409F4();
      v34 = *(v32 + 8);
      v34(v33, a3);
      v34(v20, a3);
      goto LABEL_9;
    }

    (*(v41 + 8))(v20, a3);
    goto LABEL_7;
  }

  v26(v18, v24, v14);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v42 + 8))(v18, v43);
LABEL_7:
    v30 = 0;
    v15 = v40;
    v14 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v28 = v42;
  v27 = v43;
  v29 = v37;
  (*(v42 + 32))(v37, &v24[v25], v43);
  v30 = sub_1DA9409F4();
  v31 = *(v28 + 8);
  v31(v29, v27);
  v31(v18, v27);
LABEL_9:
  (*(v15 + 8))(v24, v14);
  return v30 & 1;
}

uint64_t sub_1DA91E770@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, char *a7@<X8>)
{
  v31 = a4;
  v32 = a5;
  v33 = a7;
  v35 = a2;
  v39 = a3;
  v9 = type metadata accessor for UNCXPCResult(0, a2, a3, a6);
  v34 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v27 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA9417E4();
  if (v7)
  {
    v18 = a1;
  }

  else
  {
    v29 = v12;
    v30 = v15;
    v28 = v17;
    __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
    v20 = sub_1DA941634();
    v27 = v38;
    __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
    if (v20)
    {
      v21 = v30;
      sub_1DA941644();
      v22 = v34;
      v23 = a1;
      swift_storeEnumTagMultiPayload();
      v24 = v33;
    }

    else
    {
      v21 = v29;
      sub_1DA941644();
      v24 = v33;
      v22 = v34;
      v23 = a1;
      swift_storeEnumTagMultiPayload();
    }

    v25 = *(v22 + 32);
    v26 = v28;
    v25(v28, v21, v9);
    __swift_destroy_boxed_opaque_existential_1(v36);
    v25(v24, v26, v9);
    v18 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1DA91EA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[1] = a4;
  v27[2] = a6;
  v29 = *(*(a2 + 24) - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v28 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_1DA941814();
  (*(v16 + 16))(v19, v31, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = v29;
    v21 = v19;
    v22 = v30;
    (*(v29 + 32))(v9, v21, v30);
    __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
    v23 = v34;
    sub_1DA941654();
    if (!v23)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
      sub_1DA941664();
    }

    (*(v20 + 8))(v9, v22);
  }

  else
  {
    v24 = v28;
    (*(v28 + 32))(v14, v19, v11);
    __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
    v25 = v34;
    sub_1DA941654();
    if (!v25)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
      sub_1DA941664();
    }

    (*(v24 + 8))(v14, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t type metadata accessor for AlertCoordinatorXPCMessage(uint64_t a1)
{
  result = qword_1ECBD7528;
  if (!qword_1ECBD7528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA91EDE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7490, &qword_1DA964140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DA91EE50()
{
  result = qword_1ECBD74A0[0];
  if (!qword_1ECBD74A0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD7050, &unk_1DA962930);
    sub_1DA8FC9EC();
    sub_1DA8FCA40();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECBD74A0);
  }

  return result;
}

uint64_t sub_1DA91EEF0()
{
  v1 = *(sub_1DA9407A4() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DA91CF38(v3, v0 + v2, v4);
}

uint64_t sub_1DA91EF80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7490, &qword_1DA964140);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA91EFF0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD75C0, &qword_1DA964560);
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD75C8, &qword_1DA964568);
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD75D0, &qword_1DA964570);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = a1[3];
  v33 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1DA920A50();
  v14 = v32;
  sub_1DA941804();
  if (!v14)
  {
    v28 = v5;
    v15 = v31;
    v32 = v9;
    v16 = sub_1DA941594();
    v17 = (2 * *(v16 + 16)) | 1;
    v34 = v16;
    v35 = v16 + 32;
    v36 = 0;
    v37 = v17;
    v18 = sub_1DA8675E4();
    v19 = v8;
    if (v18 == 2 || v36 != v37 >> 1)
    {
      v13 = v11;
      v22 = sub_1DA9413B4();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5108, &qword_1DA959C20);
      *v24 = &type metadata for AlertCoordinatorXPCMessage.AlertCoordinatorXPCMessageAction;
      sub_1DA941514();
      sub_1DA9413A4();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v32 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else if (v18)
    {
      v38 = 1;
      sub_1DA920AA4();
      v20 = v11;
      sub_1DA941504();
      v21 = v32;
      v27 = sub_1DA941564();
      (*(v30 + 8))(v4, v15);
      (*(v21 + 8))(v20, v19);
      swift_unknownObjectRelease();
      v13 = v27 & 1;
    }

    else
    {
      v38 = 0;
      sub_1DA920AF8();
      sub_1DA941504();
      v26 = v32;
      (*(v29 + 8))(v7, v28);
      (*(v26 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = 2;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  return v13;
}

uint64_t sub_1DA91F4BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DA941684() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6163696669746F6ELL && a2 == 0xEE0044496E6F6974 || (sub_1DA941684() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DA941684();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void _s21UserNotificationsCore22AlertCoordinatorServerC18handleCancellation5errory3XPC12XPCRichErrorV_tF_0(uint64_t a1)
{
  v2 = sub_1DA940744();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  if (qword_1ECBD4800 != -1)
  {
    swift_once();
  }

  v9 = sub_1DA9405A4();
  __swift_project_value_buffer(v9, qword_1ECBD7478);
  v10 = *(v3 + 16);
  v10(v8, a1, v2);
  v11 = sub_1DA940584();
  v12 = sub_1DA940F34();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    v10(v6, v8, v2);
    v15 = sub_1DA940A74();
    v17 = v16;
    (*(v3 + 8))(v8, v2);
    v18 = sub_1DA7AE6E8(v15, v17, &v20);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1DA7A9000, v11, v12, "Session cancelled. %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E12739F0](v14, -1, -1);
    MEMORY[0x1E12739F0](v13, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
  }
}

uint64_t sub_1DA91F85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 16) + **(a7 + 16));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1DA7B7660;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t get_enum_tag_for_layout_string_21UserNotificationsCore22AlertCoordinatorServerC12RequestErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DA91FA0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA91FA60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1DA91FAD4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DA91FB50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1DA91FC78(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1DA91FE80(uint64_t a1)
{
  result = sub_1DA93FAF4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlertCoordinatorXPCMessage.AlertCoordinatorXPCMessageAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AlertCoordinatorXPCMessage.AlertCoordinatorXPCMessageAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1DA920068(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1DA920084(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_1DA9200AC()
{
  result = qword_1ECBD7540;
  if (!qword_1ECBD7540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7540);
  }

  return result;
}

unint64_t sub_1DA920100()
{
  result = qword_1ECBD7548;
  if (!qword_1ECBD7548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7548);
  }

  return result;
}

uint64_t sub_1DA920154(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69796C7265646E75 && a2 == 0xEF726F727245676ELL;
  if (v4 || (sub_1DA941684() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DA955C60 == a2 || (sub_1DA941684() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74754F64656D6974 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DA941684();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void *sub_1DA92027C(void *a1)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7550, &qword_1DA964510);
  v26 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v26 - v2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7558, &qword_1DA964518);
  v30 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7560, &qword_1DA964520);
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7568, &unk_1DA964528);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v33 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1DA920864();
  v14 = v32;
  sub_1DA941804();
  if (!v14)
  {
    v32 = 0;
    v15 = v31;
    v16 = sub_1DA941594();
    v17 = (2 * *(v16 + 16)) | 1;
    v34 = v16;
    v35 = v16 + 32;
    v36 = 0;
    v37 = v17;
    v18 = sub_1DA8653EC();
    if (v18 == 3 || v36 != v37 >> 1)
    {
      v20 = sub_1DA9413B4();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5108, &qword_1DA959C20);
      *v22 = &type metadata for AlertCoordinatorServer.RequestError;
      v13 = v11;
      sub_1DA941514();
      sub_1DA9413A4();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
    }

    else if (v18)
    {
      if (v18 == 1)
      {
        v38 = 1;
        sub_1DA92090C();
        v13 = v11;
        v19 = v32;
        sub_1DA941504();
        if (!v19)
        {
          (*(v30 + 8))(v4, v27);
          (*(v9 + 8))(v11, v8);
          swift_unknownObjectRelease();
          v13 = 0;
          goto LABEL_10;
        }
      }

      else
      {
        v38 = 2;
        sub_1DA9208B8();
        v13 = v11;
        v25 = v32;
        sub_1DA941504();
        if (!v25)
        {
          (*(v26 + 8))(v15, v29);
          (*(v9 + 8))(v11, v8);
          swift_unknownObjectRelease();
          v13 = 0;
          goto LABEL_10;
        }
      }
    }

    else
    {
      v38 = 0;
      sub_1DA920960();
      v13 = v11;
      v24 = v32;
      sub_1DA941504();
      if (!v24)
      {
        v13 = sub_1DA941554();
        (*(v28 + 8))(v7, v5);
        (*(v9 + 8))(v11, v8);
        swift_unknownObjectRelease();
        goto LABEL_10;
      }
    }

    (*(v9 + 8))(v11, v8);
    swift_unknownObjectRelease();
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v33);
  return v13;
}

unint64_t sub_1DA920864()
{
  result = qword_1ECBD7570;
  if (!qword_1ECBD7570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7570);
  }

  return result;
}

unint64_t sub_1DA9208B8()
{
  result = qword_1ECBD7578;
  if (!qword_1ECBD7578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7578);
  }

  return result;
}

unint64_t sub_1DA92090C()
{
  result = qword_1ECBD7580;
  if (!qword_1ECBD7580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7580);
  }

  return result;
}

unint64_t sub_1DA920960()
{
  result = qword_1ECBD7588;
  if (!qword_1ECBD7588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7588);
  }

  return result;
}

unint64_t sub_1DA9209B4()
{
  result = qword_1ECBD75B8;
  if (!qword_1ECBD75B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD75B8);
  }

  return result;
}

uint64_t sub_1DA920A08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DA920A50()
{
  result = qword_1ECBD75D8;
  if (!qword_1ECBD75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD75D8);
  }

  return result;
}

unint64_t sub_1DA920AA4()
{
  result = qword_1ECBD75E0;
  if (!qword_1ECBD75E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD75E0);
  }

  return result;
}

unint64_t sub_1DA920AF8()
{
  result = qword_1ECBD75E8;
  if (!qword_1ECBD75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD75E8);
  }

  return result;
}

uint64_t sub_1DA920B4C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1DA93FAF4() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1DA9407A4() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = v1[6];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1DA7B7470;

  return sub_1DA91D5B0(a1, v10, v11, v12, v13, v14, v1 + v6, v1 + v9);
}

unint64_t sub_1DA920D44()
{
  result = qword_1ECBD7608;
  if (!qword_1ECBD7608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7608);
  }

  return result;
}

unint64_t sub_1DA920D9C()
{
  result = qword_1ECBD7610;
  if (!qword_1ECBD7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7610);
  }

  return result;
}

unint64_t sub_1DA920DF4()
{
  result = qword_1ECBD7618;
  if (!qword_1ECBD7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7618);
  }

  return result;
}

unint64_t sub_1DA920E4C()
{
  result = qword_1ECBD7620;
  if (!qword_1ECBD7620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7620);
  }

  return result;
}

unint64_t sub_1DA920EA4()
{
  result = qword_1ECBD7628;
  if (!qword_1ECBD7628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7628);
  }

  return result;
}

unint64_t sub_1DA920EFC()
{
  result = qword_1ECBD7630;
  if (!qword_1ECBD7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7630);
  }

  return result;
}

unint64_t sub_1DA920F54()
{
  result = qword_1ECBD7638;
  if (!qword_1ECBD7638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7638);
  }

  return result;
}

unint64_t sub_1DA920FAC()
{
  result = qword_1ECBD7640;
  if (!qword_1ECBD7640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7640);
  }

  return result;
}

unint64_t sub_1DA921004()
{
  result = qword_1ECBD7648;
  if (!qword_1ECBD7648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7648);
  }

  return result;
}

unint64_t sub_1DA92105C()
{
  result = qword_1ECBD7650;
  if (!qword_1ECBD7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7650);
  }

  return result;
}

unint64_t sub_1DA9210B4()
{
  result = qword_1ECBD7658;
  if (!qword_1ECBD7658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7658);
  }

  return result;
}

unint64_t sub_1DA92110C()
{
  result = qword_1ECBD7660;
  if (!qword_1ECBD7660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7660);
  }

  return result;
}

unint64_t sub_1DA921164()
{
  result = qword_1ECBD7668;
  if (!qword_1ECBD7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7668);
  }

  return result;
}

unint64_t sub_1DA9211BC()
{
  result = qword_1ECBD7670;
  if (!qword_1ECBD7670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7670);
  }

  return result;
}

unint64_t sub_1DA921214()
{
  result = qword_1ECBD7678;
  if (!qword_1ECBD7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7678);
  }

  return result;
}

unint64_t sub_1DA92126C()
{
  result = qword_1ECBD7680;
  if (!qword_1ECBD7680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7680);
  }

  return result;
}

unint64_t sub_1DA9212C4()
{
  result = qword_1ECBD7688;
  if (!qword_1ECBD7688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7688);
  }

  return result;
}

unint64_t sub_1DA92131C()
{
  result = qword_1ECBD7690;
  if (!qword_1ECBD7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7690);
  }

  return result;
}

unint64_t sub_1DA921374()
{
  result = qword_1ECBD7698;
  if (!qword_1ECBD7698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7698);
  }

  return result;
}

unint64_t sub_1DA9213CC()
{
  result = qword_1ECBD76A0;
  if (!qword_1ECBD76A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD76A0);
  }

  return result;
}

unint64_t sub_1DA921424()
{
  result = qword_1ECBD76A8;
  if (!qword_1ECBD76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD76A8);
  }

  return result;
}

uint64_t sub_1DA92147C()
{
  result = sub_1DA940A14();
  qword_1EE11B028 = result;
  unk_1EE11B030 = v1;
  return result;
}

uint64_t sub_1DA9214AC()
{
  result = sub_1DA940A14();
  qword_1EE11B058 = result;
  unk_1EE11B060 = v1;
  return result;
}

uint64_t sub_1DA9214DC()
{
  result = sub_1DA940A14();
  qword_1EE11AFF8 = result;
  unk_1EE11B000 = v1;
  return result;
}

uint64_t sub_1DA92150C()
{
  result = sub_1DA940A14();
  qword_1EE11B038 = result;
  unk_1EE11B040 = v1;
  return result;
}

uint64_t sub_1DA92153C()
{
  result = sub_1DA940A14();
  qword_1EE11B048 = result;
  unk_1EE11B050 = v1;
  return result;
}

uint64_t sub_1DA92156C()
{
  result = sub_1DA940A14();
  qword_1EE11B018 = result;
  unk_1EE11B020 = v1;
  return result;
}

uint64_t sub_1DA92159C()
{
  result = sub_1DA940A14();
  qword_1EE11AEC8 = result;
  unk_1EE11AED0 = v1;
  return result;
}

uint64_t sub_1DA9215CC()
{
  result = sub_1DA940A14();
  qword_1EE11AEB8 = result;
  unk_1EE11AEC0 = v1;
  return result;
}

uint64_t sub_1DA9215FC()
{
  result = sub_1DA940A14();
  qword_1EE11B008 = result;
  unk_1EE11B010 = v1;
  return result;
}

uint64_t sub_1DA92162C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000022;
  }

  else
  {
    v3 = 0xD00000000000001BLL;
  }

  if (v2)
  {
    v4 = "led";
  }

  else
  {
    v4 = "com.apple.usernotifications";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000022;
  }

  else
  {
    v6 = 0xD00000000000001BLL;
  }

  if (*a2)
  {
    v7 = "com.apple.usernotifications";
  }

  else
  {
    v7 = "led";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DA941684();
  }

  return v9 & 1;
}

uint64_t sub_1DA9216D8()
{
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA921758(uint64_t a1)
{
  sub_1DA940AB4();
}

uint64_t sub_1DA9217C4(uint64_t a1)
{
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA921840@<X0>(char *a2@<X8>)
{
  v3 = sub_1DA9414F4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1DA9218A0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000022;
  }

  else
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v1)
  {
    v3 = "com.apple.usernotifications";
  }

  else
  {
    v3 = "led";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_1DA921914()
{
  result = qword_1ECBD76B0;
  if (!qword_1ECBD76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD76B0);
  }

  return result;
}

id sub_1DA921998(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RemoteBadgeService();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1DA921AC0(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 24))
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1DA940FE4();
    return v13[0];
  }

  sub_1DA89667C(a1, v13);
  if (v14)
  {
    sub_1DA898804();
    v4 = swift_dynamicCast();
    if (v4)
    {
      MEMORY[0x1EEE9AC00](v4);
      v6 = v5;
      sub_1DA940FE4();

      return v13[0];
    }
  }

  else
  {
    sub_1DA896614(v13);
  }

  sub_1DA89667C(a1, v13);
  if (v14)
  {
    v8 = swift_dynamicCast();
    if (v8)
    {
      MEMORY[0x1EEE9AC00](v8);
      sub_1DA940FE4();

      return v13[0];
    }
  }

  else
  {
    sub_1DA896614(v13);
  }

  if (qword_1ECBD47B8 != -1)
  {
    swift_once();
  }

  v9 = sub_1DA9405A4();
  __swift_project_value_buffer(v9, qword_1ECBE3DB8);
  v10 = sub_1DA940584();
  v11 = sub_1DA940F14();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1DA7A9000, v10, v11, "Calling setBadgeValue failed. Pass either NSNumber or String.", v12, 2u);
    MEMORY[0x1E12739F0](v12, -1, -1);
  }

  return 0;
}

void sub_1DA921EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = *(*(v5 + 56) + ((v11 << 9) | (8 * v12)));
    swift_unknownObjectRetain();
    v14 = sub_1DA940A04();
    v15 = sub_1DA940A04();
    v16 = [v13 categoryWithIdentifier:v14 bundleIdentifier:v15];

    swift_unknownObjectRelease();
    if (v16)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_11;
    }

    v8 = *(v5 + 64 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1DA922060(uint64_t a1)
{
  swift_beginAccess();
  if (*(*(v1 + 16) + 16) && (sub_1DA85A4B4(0x6C61636F6CLL, 0xE500000000000000), (v3 & 1) != 0))
  {
    swift_endAccess();
    result = sub_1DA9414A4();
    __break(1u);
  }

  else
  {
    swift_endAccess();
    swift_beginAccess();
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v1 + 16);
    *(v1 + 16) = 0x8000000000000000;
    sub_1DA90C0D4(a1, 0x6C61636F6CLL, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    *(v1 + 16) = v6;
    return swift_endAccess();
  }

  return result;
}

uint64_t NotificationCategoryRepositoryAggregator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t NotificationCategoryRepositoryAggregator.description.getter()
{
  sub_1DA941364();
  MEMORY[0x1E1271BD0](0xD00000000000003FLL, 0x80000001DA956A80);
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7750, &qword_1DA95F618);
  v0 = sub_1DA940984();
  v2 = v1;

  MEMORY[0x1E1271BD0](v0, v2);

  MEMORY[0x1E1271BD0](4071456, 0xE300000000000000);
  return 0;
}

uint64_t sub_1DA92233C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 168) = a4;
  *(v5 + 176) = v4;
  *(v5 + 208) = a2;
  *(v5 + 152) = a1;
  *(v5 + 160) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1DA922364, 0, 0);
}

uint64_t sub_1DA922364()
{
  v1 = *(v0 + 208);
  v2 = *(*(v0 + 176) + 16);
  v3 = [*(v0 + 152) notificationRecord];
  *(v0 + 184) = v3;
  v4 = sub_1DA940A04();
  *(v0 + 192) = v4;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1DA9224D8;
  v5 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7760, qword_1DA964FD8);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1DA9226D0;
  *(v0 + 104) = &block_descriptor_25;
  *(v0 + 112) = v5;
  [v2 saveNotificationRecord:v3 shouldRepost:v1 forBundleIdentifier:v4 withCompletionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1DA9224D8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1DA922658;
  }

  else
  {
    v2 = sub_1DA9225E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DA9225E8()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1DA922658(uint64_t a1)
{
  v2 = v1[24];
  v3 = v1[23];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_1DA9226D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6AB0, qword_1DA95D940);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1DA9227C0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DA8D7D60;

  return sub_1DA92233C(a1, a2, a3, a4);
}

uint64_t sub_1DA92287C()
{
  result = os_variant_has_internal_content();
  byte_1EE112658 = result;
  return result;
}

uint64_t sub_1DA9228A4(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 176) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  v4 = sub_1DA9401F4();
  *(v3 + 72) = v4;
  *(v3 + 80) = *(v4 - 8);
  *(v3 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E08, &qword_1DA958750);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7440, &unk_1DA963DD0);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  v5 = sub_1DA9401A4();
  *(v3 + 144) = v5;
  *(v3 + 152) = *(v5 - 8);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA922A9C, 0, 0);
}

uint64_t sub_1DA922A9C()
{
  v103 = v0;
  v102 = *MEMORY[0x1E69E9840];
  if (*(v0 + 176) == 3)
  {
    (*(*(v0 + 80) + 16))(*(v0 + 56), *(v0 + 64), *(v0 + 72));
    goto LABEL_67;
  }

  v1 = sub_1DA940A04();
  v98 = [objc_opt_self() serviceForClientIdentifier_];

  v2 = [objc_allocWithZone(MEMORY[0x1E699A218]) init];
  sub_1DA9400A4();
  v3 = sub_1DA940A04();

  [v2 setIdentifier_];

  sub_1DA940014();
  v4 = sub_1DA940A04();

  [v2 setBundleIdentifier_];

  v5 = sub_1DA93FF84();
  v6 = [v5 request];

  v7 = [v6 content];
  v8 = [v7 threadIdentifier];

  if (!v8)
  {
    sub_1DA940A14();
    v8 = sub_1DA940A04();
  }

  v9 = *(v0 + 144);
  v10 = *(v0 + 152);
  v11 = *(v0 + 136);
  [v2 setThreadIdentifier_];

  v12 = sub_1DA93FF84();
  v13 = [v12 request];

  v14 = [v13 content];
  v15 = [v14 filterCriteria];

  [v2 setFilterCriteria_];
  sub_1DA93FF54();
  v16 = *(v10 + 48);
  if (v16(v11, 1, v9) == 1)
  {
    sub_1DA7BA120(*(v0 + 136), &unk_1ECBD7440, &unk_1DA963DD0);
    goto LABEL_12;
  }

  (*(*(v0 + 152) + 32))(*(v0 + 168), *(v0 + 136), *(v0 + 144));
  if (sub_1DA940194() & 1) != 0 || (sub_1DA940174())
  {
    v17 = 2;
  }

  else
  {
    if ((sub_1DA940164() & 1) == 0)
    {
      goto LABEL_11;
    }

    v17 = 1;
  }

  [v2 setUrgency_];
LABEL_11:
  (*(*(v0 + 152) + 8))(*(v0 + 168), *(v0 + 144));
LABEL_12:
  v18 = sub_1DA940104();
  if (v18)
  {
    v19 = v18;
    v20 = [v18 sender];
    if (v20)
    {
      v21 = v20;
      v22 = [v21 handleType];
      if (v22 == 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2 * (v22 == 2);
      }

      v24 = [objc_allocWithZone(MEMORY[0x1E699A220]) init];
      [v24 setType_];
      v25 = [v21 handle];
      if (!v25)
      {
        sub_1DA940A14();
        v25 = sub_1DA940A04();
      }

      [v24 setValue_];

      v26 = [v21 cnContactIdentifier];
      [v24 setContactIdentifier_];
    }

    else
    {
      v24 = 0;
    }

    [v2 setSender_];

    [v2 setNotifyAnyway_];
  }

  v27 = *(v0 + 112);
  v28 = sub_1DA93FED4();
  v29 = sub_1DA923930(v28);

  [v2 setType_];
  sub_1DA940044();
  v30 = sub_1DA940004();
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  v33 = v32(v27, 1, v30);
  v34 = *(v0 + 112);
  if (v33 == 1)
  {
    sub_1DA7BA120(*(v0 + 112), &qword_1ECBD4E08, &qword_1DA958750);
  }

  else
  {
    sub_1DA93FFD4();
    v36 = v35;
    (*(v31 + 8))(v34, v30);
    if (v36)
    {
      v37 = sub_1DA940A04();

      goto LABEL_27;
    }
  }

  v37 = 0;
LABEL_27:
  v38 = *(v0 + 104);
  [v2 setTitle_];

  sub_1DA940044();
  v39 = v32(v38, 1, v30);
  v40 = *(v0 + 104);
  if (v39 == 1)
  {
    sub_1DA7BA120(*(v0 + 104), &qword_1ECBD4E08, &qword_1DA958750);
  }

  else
  {
    sub_1DA93FFE4();
    v42 = v41;
    (*(v31 + 8))(v40, v30);
    if (v42)
    {
      v43 = sub_1DA940A04();

      goto LABEL_32;
    }
  }

  v43 = 0;
LABEL_32:
  v44 = *(v0 + 96);
  [v2 setSubtitle_];

  sub_1DA940044();
  v45 = v32(v44, 1, v30);
  v46 = *(v0 + 96);
  if (v45 == 1)
  {
    sub_1DA7BA120(*(v0 + 96), &qword_1ECBD4E08, &qword_1DA958750);
LABEL_36:
    v49 = 0;
    goto LABEL_37;
  }

  sub_1DA93FFB4();
  v48 = v47;
  (*(v31 + 8))(v46, v30);
  if (!v48)
  {
    goto LABEL_36;
  }

  v49 = sub_1DA940A04();

LABEL_37:
  [v2 setBody_];

  if (qword_1EE112650 != -1)
  {
    swift_once();
  }

  if (byte_1EE112658 == 1)
  {
    sub_1DA90A7F8(&v99);
    v50 = v100;
    if (v100 != 1)
    {
      v51 = v99;
      v52 = v101;
      v53 = 2;
      if ((v101 & 1) == 0)
      {
        v53 = 3;
      }

      if (v101 == 2)
      {
        v54 = 1;
      }

      else
      {
        v54 = v53;
      }

      v55 = [objc_allocWithZone(MEMORY[0x1E699A1B0]) initWithEventDetails:v2 interruptionSuppression:0 intelligentBehavior:v54 resolutionReason:26 activeModeUUID:0];
      [v2 setForwardingBehavior_];
      if (qword_1EE110E48 != -1)
      {
        swift_once();
      }

      v56 = sub_1DA9405A4();
      __swift_project_value_buffer(v56, qword_1EE11AD90);
      sub_1DA8A6E50(v51, v50);
      sub_1DA8A6E50(v51, v50);
      v57 = v2;
      v58 = sub_1DA940584();
      v59 = sub_1DA940F34();

      if (os_log_type_enabled(v58, v59))
      {
        v95 = v59;
        v96 = v55;
        v97 = v16;
        v60 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v99 = v94;
        *v60 = 136315650;
        if (v50)
        {
          v61 = v51;
        }

        else
        {
          v61 = 0;
        }

        if (v50)
        {
          v62 = v50;
        }

        else
        {
          v62 = 0xE000000000000000;
        }

        v63 = sub_1DA7AE6E8(v61, v62, &v99);

        *(v60 + 4) = v63;
        *(v60 + 12) = 1024;
        sub_1DA8A65A0(v51, v50);
        *(v60 + 14) = v52 & 1;
        sub_1DA8A65A0(v51, v50);
        *(v60 + 18) = 2080;
        v64 = [v57 forwardingBehavior];
        if (v64)
        {
          v65 = v64;
          [v64 intelligentBehavior];
        }

        v16 = v97;
        v66 = DNDIntelligentInterruptionBehaviorToString();
        v67 = sub_1DA940A14();
        v69 = v68;

        v70 = sub_1DA7AE6E8(v67, v69, &v99);

        *(v60 + 20) = v70;
        _os_log_impl(&dword_1DA7A9000, v58, v95, "Untool values of summary: %s and isHighlight: %{BOOL}d, written as %s on a faked forwardingBehavior", v60, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v94, -1, -1);
        MEMORY[0x1E12739F0](v60, -1, -1);
      }

      else
      {
        sub_1DA8A65A0(v51, v50);
        sub_1DA8A65A0(v51, v50);

        sub_1DA8A65A0(v51, v50);
      }
    }
  }

  *(v0 + 40) = 0;
  v71 = [v98 resolveBehaviorForEventDetails:v2 error:{v0 + 40, v94}];
  v72 = *(v0 + 40);
  if (!v71)
  {
    v81 = *(v0 + 56);
    v82 = v72;
    v83 = sub_1DA93F8C4();

    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E88, &unk_1DA958C30);
    swift_getErrorValue();
    v84 = sub_1DA941704();
    v86 = v85;
    v81[3] = &type metadata for BehaviorResolutionActor.ActorError;
    v81[4] = sub_1DA923C2C();
    *v81 = v84;
    v81[1] = v86;
    sub_1DA93FF14();
    sub_1DA93FF34();

    type metadata accessor for StepFailure(0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
    goto LABEL_68;
  }

  v73 = v71;
  v74 = *(v0 + 144);
  v75 = *(v0 + 128);
  (*(*(v0 + 80) + 16))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
  v76 = v72;
  sub_1DA93FF54();
  if (v16(v75, 1, v74) == 1)
  {
    v77 = *(v0 + 144);
    v78 = *(v0 + 152);
    v79 = *(v0 + 120);
    sub_1DA7BA120(*(v0 + 128), &unk_1ECBD7440, &unk_1DA963DD0);
    v80 = v73;
    sub_1DA940184();
    (*(v78 + 56))(v79, 0, 1, v77);
    sub_1DA93FF64();
  }

  else
  {
    v88 = *(v0 + 152);
    v87 = *(v0 + 160);
    v89 = *(v0 + 144);
    v90 = *(v0 + 120);
    (*(v88 + 32))(v87, *(v0 + 128), v89);
    v91 = v73;
    sub_1DA940154();
    (*(v88 + 16))(v90, v87, v89);
    (*(v88 + 56))(v90, 0, 1, v89);
    sub_1DA93FF64();

    (*(v88 + 8))(v87, v89);
  }

  (*(*(v0 + 80) + 32))(*(v0 + 56), *(v0 + 88), *(v0 + 72));
LABEL_67:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
LABEL_68:
  swift_storeEnumTagMultiPayload();

  v92 = *(v0 + 8);

  return v92();
}

uint64_t sub_1DA92382C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DA941684();
  }
}

uint64_t sub_1DA923880(uint64_t a1, char a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DA7B7470;

  return sub_1DA9228A4(a1, a2, a3);
}

uint64_t sub_1DA923930(uint64_t a1)
{
  v1 = sub_1DA940A14();
  v3 = v2;
  if (v1 == sub_1DA940A14() && v3 == v4)
  {

    return 3;
  }

  v6 = sub_1DA941684();

  if (v6)
  {
    return 3;
  }

  v7 = sub_1DA940A14();
  v9 = v8;
  if (v7 == sub_1DA940A14() && v9 == v10)
  {

    return 4;
  }

  v12 = sub_1DA941684();

  if (v12)
  {
    return 4;
  }

  v14 = sub_1DA940A14();
  v16 = v15;
  if (v14 == sub_1DA940A14() && v16 == v17)
  {
    goto LABEL_17;
  }

  v18 = sub_1DA941684();

  if (v18)
  {
    return 2;
  }

  v19 = sub_1DA940A14();
  v21 = v20;
  if (v19 == sub_1DA940A14() && v21 == v22)
  {
    goto LABEL_17;
  }

  v23 = sub_1DA941684();

  if (v23)
  {
    return 2;
  }

  v24 = sub_1DA940A14();
  v26 = v25;
  if (v24 == sub_1DA940A14() && v26 == v27)
  {
LABEL_17:

    return 2;
  }

  v28 = sub_1DA941684();

  if (v28)
  {
    return 2;
  }

  v29 = sub_1DA940A14();
  v31 = v30;
  if (v29 == sub_1DA940A14() && v31 == v32)
  {

    return 1;
  }

  else
  {
    v33 = sub_1DA941684();

    return v33 & 1;
  }
}

unint64_t sub_1DA923C2C()
{
  result = qword_1ECBD7768;
  if (!qword_1ECBD7768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7768);
  }

  return result;
}

uint64_t sub_1DA923C80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1DA923CC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DA923D14(uint64_t a1)
{
  *(a1 + 8) = sub_1DA923D44();
  result = sub_1DA923D98();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DA923D44()
{
  result = qword_1ECBD7770;
  if (!qword_1ECBD7770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7770);
  }

  return result;
}

unint64_t sub_1DA923D98()
{
  result = qword_1ECBD7778;
  if (!qword_1ECBD7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7778);
  }

  return result;
}

void sub_1DA923E10(void *a1, unint64_t a2, unsigned int a3)
{
  v4 = v3;
  v76 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v69 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7788, &qword_1DA965260);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v69 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7780, qword_1DA965230);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v69 - v18;
  if (*(v4 + OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_cancelled))
  {
    if (qword_1EE110E48 != -1)
    {
      swift_once();
    }

    v20 = sub_1DA9405A4();
    __swift_project_value_buffer(v20, qword_1EE11AD90);
    v21 = a1;

    v22 = sub_1DA940584();
    v23 = sub_1DA940F24();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v81[0] = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_1DA7AE6E8(v4[2], v4[3], v81);
      *(v24 + 12) = 2080;
      v26 = sub_1DA93B7DC(a1, a2 & 0xFFFFFFFF000000FFLL, v76);
      v28 = sub_1DA7AE6E8(v26, v27, v81);

      *(v24 + 14) = v28;
      _os_log_impl(&dword_1DA7A9000, v22, v23, "[id=%s] Programming Error: Observer cancelled, can't receive inference: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v25, -1, -1);
      MEMORY[0x1E12739F0](v24, -1, -1);
    }

    v29 = sub_1DA940D34();
    (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
    v30 = swift_allocObject();
    *(v30 + 16) = 0u;
    *(v30 + 32) = 0u;
    *(v30 + 48) = 11;
    v31 = &unk_1DA965278;
    v32 = v9;
LABEL_19:
    sub_1DA8DB00C(0, 0, v32, v31, v30);

    return;
  }

  v33 = v4 + OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_inference;
  if (*(v4 + OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_inference) != 1)
  {
    if (qword_1EE110E48 != -1)
    {
      swift_once();
    }

    v45 = sub_1DA9405A4();
    __swift_project_value_buffer(v45, qword_1EE11AD90);

    v46 = sub_1DA940584();
    v47 = sub_1DA940F24();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v81[0] = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_1DA7AE6E8(v4[2], v4[3], v81);
      _os_log_impl(&dword_1DA7A9000, v46, v47, "[id=%s] Programming Error: Receive called multiple times for same observer", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x1E12739F0](v49, -1, -1);
      MEMORY[0x1E12739F0](v48, -1, -1);
    }

    v51 = v4[4];
    v50 = v4[5];
    v52 = sub_1DA940D34();
    (*(*(v52 - 8) + 56))(v9, 1, 1, v52);
    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    *(v53 + 24) = 0;
    *(v53 + 32) = v51;
    *(v53 + 40) = v50;
    *(v53 + 48) = 6;

    v31 = &unk_1DA965270;
    v32 = v9;
    v30 = v53;
    goto LABEL_19;
  }

  *v33 = a1;
  *(v33 + 1) = a2 & 0xFFFFFFFF000000FFLL;
  v75 = a2 & 0xFFFFFFFF000000FFLL;
  *(v33 + 4) = v76;
  v34 = OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_continuation;
  swift_beginAccess();
  sub_1DA822F48(v4 + v34, v15, &qword_1ECBD7788, &qword_1DA965260);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v35 = a1;
    sub_1DA7BA120(v15, &qword_1ECBD7788, &qword_1DA965260);
    if (qword_1EE110E48 != -1)
    {
      swift_once();
    }

    v36 = sub_1DA9405A4();
    __swift_project_value_buffer(v36, qword_1EE11AD90);
    v37 = v35;

    v38 = sub_1DA940584();
    v39 = sub_1DA940F34();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v77 = v41;
      *v40 = 136315394;
      *(v40 + 4) = sub_1DA7AE6E8(v4[2], v4[3], &v77);
      *(v40 + 12) = 2080;
      v42 = sub_1DA93B7DC(a1, v75, v76);
      v44 = sub_1DA7AE6E8(v42, v43, &v77);

      *(v40 + 14) = v44;
      _os_log_impl(&dword_1DA7A9000, v38, v39, "[id=%s] Observer received inference %s but hasn't started waiting for result yet", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v41, -1, -1);
      MEMORY[0x1E12739F0](v40, -1, -1);
    }
  }

  else
  {
    v73 = HIDWORD(a2);
    v74 = v34;
    (*(v17 + 32))(v19, v15, v16);
    v54 = qword_1EE110E48;
    v55 = a1;
    if (v54 != -1)
    {
      swift_once();
    }

    v56 = sub_1DA9405A4();
    __swift_project_value_buffer(v56, qword_1EE11AD90);
    v57 = v55;

    v58 = sub_1DA940584();
    v59 = sub_1DA940F34();
    v72 = v57;

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v77 = v71;
      *v60 = 136315394;
      *(v60 + 4) = sub_1DA7AE6E8(v4[2], v4[3], &v77);
      *(v60 + 12) = 2080;
      v61 = sub_1DA93B7DC(a1, v75, v76);
      LODWORD(v75) = v59;
      v63 = sub_1DA7AE6E8(v61, v62, &v77);
      v70 = v58;
      v64 = v63;

      *(v60 + 14) = v64;
      v65 = v70;
      _os_log_impl(&dword_1DA7A9000, v70, v75, "[id=%s] Observer received inference %s", v60, 0x16u);
      v66 = v71;
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v66, -1, -1);
      MEMORY[0x1E12739F0](v60, -1, -1);
    }

    else
    {
    }

    v67 = v74;
    v77 = a1;
    v78 = a2;
    v79 = v73;
    v80 = v76;
    v68 = v72;
    sub_1DA940C54();
    (*(v17 + 8))(v19, v16);
    (*(v17 + 56))(v13, 1, 1, v16);
    swift_beginAccess();
    sub_1DA7BAD38(v13, v4 + v67, &qword_1ECBD7788, &qword_1DA965260);
    swift_endAccess();
  }
}

void sub_1DA924794()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v34 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7788, &qword_1DA965260);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7780, qword_1DA965230);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v34 - v13;
  if (*(v1 + OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_cancelled))
  {
    if (qword_1EE110E48 != -1)
    {
      swift_once();
    }

    v15 = sub_1DA9405A4();
    __swift_project_value_buffer(v15, qword_1EE11AD90);

    v16 = sub_1DA940584();
    v17 = sub_1DA940F24();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1DA7AE6E8(v1[2], v1[3], v35);
      _os_log_impl(&dword_1DA7A9000, v16, v17, "[id=%s] Programming Error: Cancelling already cancelled observer", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1E12739F0](v19, -1, -1);
      MEMORY[0x1E12739F0](v18, -1, -1);
    }

    v20 = sub_1DA940D34();
    (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
    v21 = swift_allocObject();
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 12;
    v22 = &unk_1DA965268;
    v23 = v4;
LABEL_13:
    sub_1DA8DB00C(0, 0, v23, v22, v21);

    return;
  }

  *(v1 + OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_cancelled) = 1;
  v24 = OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_continuation;
  swift_beginAccess();
  sub_1DA822F48(v1 + v24, v10, &qword_1ECBD7788, &qword_1DA965260);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1DA7BA120(v10, &qword_1ECBD7788, &qword_1DA965260);
    if (qword_1EE110E48 != -1)
    {
      swift_once();
    }

    v25 = sub_1DA9405A4();
    __swift_project_value_buffer(v25, qword_1EE11AD90);

    v26 = sub_1DA940584();
    v27 = sub_1DA940F14();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DA7AE6E8(v1[2], v1[3], v34);
      _os_log_impl(&dword_1DA7A9000, v26, v27, "[id=%s] Cancelling observer before waiting for result", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1E12739F0](v29, -1, -1);
      MEMORY[0x1E12739F0](v28, -1, -1);
    }

    v31 = v1[4];
    v30 = v1[5];
    v32 = sub_1DA940D34();
    (*(*(v32 - 8) + 56))(v4, 1, 1, v32);
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    *(v33 + 32) = v31;
    *(v33 + 40) = v30;
    *(v33 + 48) = 8;

    v22 = &unk_1DA95D1A0;
    v23 = v4;
    v21 = v33;
    goto LABEL_13;
  }

  (*(v12 + 32))(v14, v10, v11);
  sub_1DA928E38();
  v34[0] = swift_allocError();
  sub_1DA940C44();
  (*(v12 + 8))(v14, v11);
  (*(v12 + 56))(v8, 1, 1, v11);
  swift_beginAccess();
  sub_1DA7BAD38(v8, v1 + v24, &qword_1ECBD7788, &qword_1DA965260);
  swift_endAccess();
}

uint64_t sub_1DA924DA4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7788, &qword_1DA965260);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  if (*(v1 + OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_cancelled))
  {
    if (qword_1EE110E48 != -1)
    {
      swift_once();
    }

    v7 = sub_1DA9405A4();
    __swift_project_value_buffer(v7, qword_1EE11AD90);

    v8 = sub_1DA940584();
    v9 = sub_1DA940F14();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v28 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1DA7AE6E8(*(v2 + 16), *(v2 + 24), &v28);
      _os_log_impl(&dword_1DA7A9000, v8, v9, "[id=%s] Observer cancelled, unable to wait for inference", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1E12739F0](v11, -1, -1);
      MEMORY[0x1E12739F0](v10, -1, -1);
    }

    sub_1DA928E38();
    v28 = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7780, qword_1DA965230);
    return sub_1DA940C44();
  }

  else
  {
    if (qword_1EE110E48 != -1)
    {
      swift_once();
    }

    v13 = sub_1DA9405A4();
    __swift_project_value_buffer(v13, qword_1EE11AD90);

    v14 = sub_1DA940584();
    v15 = sub_1DA940F34();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1DA7AE6E8(*(v2 + 16), *(v2 + 24), &v28);
      _os_log_impl(&dword_1DA7A9000, v14, v15, "[id=%s] Waiting for inference", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1E12739F0](v17, -1, -1);
      MEMORY[0x1E12739F0](v16, -1, -1);
    }

    v18 = v2 + OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_inference;
    v19 = *(v2 + OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_inference);
    if (v19 == 1)
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7780, qword_1DA965230);
      v21 = *(v20 - 8);
      (*(v21 + 16))(v6, a1, v20);
      (*(v21 + 56))(v6, 0, 1, v20);
    }

    else
    {
      v22 = *(v18 + 16);
      v23 = *(v18 + 8);
      v28 = *(v2 + OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_inference);
      v29 = v23;
      v30 = HIDWORD(v23);
      v31 = v22;
      v24 = v19;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7780, qword_1DA965230);
      sub_1DA940C54();
      (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
    }

    v26 = OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_continuation;
    swift_beginAccess();
    sub_1DA7BAD38(v6, v2 + v26, &qword_1ECBD7788, &qword_1DA965260);
    return swift_endAccess();
  }
}

uint64_t sub_1DA925200()
{

  v1 = OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_createdDate;
  v2 = sub_1DA93FAF4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1DA8A65B4(*(v0 + OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_inference));
  sub_1DA7BA120(v0 + OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_continuation, &qword_1ECBD7788, &qword_1DA965260);

  return swift_deallocClassInstance();
}

double sub_1DA9252E4()
{
  if (!os_variant_has_internal_content())
  {
    return 600.0;
  }

  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DA940A04();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_10:
    sub_1DA7BA120(&v8, &unk_1ECBD7730, &qword_1DA95C370);
    return 600.0;
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
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    return *&v6;
  }

  return 600.0;
}

uint64_t sub_1DA925448(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v128 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v143 = &v127 - v9;
  v10 = sub_1DA93FAF4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v14 = *(v2 + 152);
  v15 = *(v14 + 64);
  v132 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v131 = (v16 + 63) >> 6;
  v19 = v11 + 1;
  v130 = v14;

  v20 = 0;
  *&v21 = 136315394;
  v137 = v21;
  v141 = v2;
  v129 = a2;
  v139 = v10;
  v140 = v13;
  v138 = v11 + 1;
  while (v18)
  {
LABEL_10:
    v135 = v18;
    v136 = v20;
    v23 = __clz(__rbit64(v18)) | (v20 << 6);
    v24 = *(v130 + 56);
    v25 = *(v130 + 48) + 16 * v23;
    v26 = *(v25 + 8);
    v133 = *v25;
    v27 = *(v24 + 8 * v23);
    v148[0] = MEMORY[0x1E69E7CC0];
    if (v27 >> 62)
    {
      v59 = v26;
      v28 = sub_1DA941264();
      v26 = v59;
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v134 = v26;

    if (v28)
    {
      a2 = 0;
      v145 = v27 & 0xFFFFFFFFFFFFFF8;
      v146 = v27 & 0xC000000000000001;
      v142 = v27;
      v144 = v28;
      do
      {
        if (v146)
        {
          v29 = MEMORY[0x1E1272460](a2, v27);
          v30 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
            goto LABEL_101;
          }
        }

        else
        {
          if (a2 >= *(v145 + 16))
          {
            goto LABEL_102;
          }

          v29 = *(v27 + 8 * a2 + 32);

          v30 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
            goto LABEL_104;
          }
        }

        sub_1DA93F9D4();
        v32 = v31;
        sub_1DA93FAC4();
        sub_1DA93F9D4();
        v34 = v33;
        (v19->isa)(v13, v10);
        v35 = v34 - *(v3 + 160);
        v147 = v30;
        if (v35 < v32)
        {
          sub_1DA9413E4();
          sub_1DA941414();
          sub_1DA941424();
          sub_1DA9413F4();
        }

        else
        {
          if (qword_1EE110E48 != -1)
          {
            swift_once();
          }

          v36 = sub_1DA9405A4();
          __swift_project_value_buffer(v36, qword_1EE11AD90);

          v37 = sub_1DA940584();
          v38 = sub_1DA940F14();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v40 = v8;
            v41 = v3;
            v42 = swift_slowAlloc();
            v149[0] = v42;
            *v39 = v137;
            v44 = v29[2];
            v43 = v29[3];

            v45 = sub_1DA7AE6E8(v44, v43, v149);

            *(v39 + 4) = v45;
            *(v39 + 12) = 2048;
            v46 = *(v41 + 160);
            v8 = v40;
            *(v39 + 14) = v46;
            _os_log_impl(&dword_1DA7A9000, v37, v38, "[id=%s] Found observer that's older than %f seconds. Likely abandoned.", v39, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v42);
            MEMORY[0x1E12739F0](v42, -1, -1);
            MEMORY[0x1E12739F0](v39, -1, -1);
          }

          v47 = v29[4];
          v48 = v29[5];
          v49 = sub_1DA940D34();
          v50 = *(v49 - 8);
          v51 = v143;
          (*(v50 + 56))(v143, 1, 1, v49);
          v52 = swift_allocObject();
          *(v52 + 16) = 0;
          *(v52 + 24) = 0;
          *(v52 + 32) = v47;
          *(v52 + 40) = v48;
          *(v52 + 48) = 7;
          sub_1DA822F48(v51, v8, &qword_1ECBD4FA0, &unk_1DA958730);
          LODWORD(v47) = (*(v50 + 48))(v8, 1, v49);

          if (v47 == 1)
          {
            sub_1DA7BA120(v8, &qword_1ECBD4FA0, &unk_1DA958730);
          }

          else
          {
            sub_1DA940D24();
            (*(v50 + 8))(v8, v49);
          }

          v13 = v140;
          v53 = *(v52 + 16);
          swift_unknownObjectRetain();

          if (v53)
          {
            swift_getObjectType();
            v54 = sub_1DA940C34();
            v56 = v55;
            swift_unknownObjectRelease();
          }

          else
          {
            v54 = 0;
            v56 = 0;
          }

          sub_1DA7BA120(v143, &qword_1ECBD4FA0, &unk_1DA958730);
          v57 = swift_allocObject();
          *(v57 + 16) = &unk_1DA9652C8;
          *(v57 + 24) = v52;
          if (v56 | v54)
          {
            v149[1] = 0;
            v149[2] = 0;
            v149[3] = v54;
            v149[4] = v56;
          }

          v3 = v141;
          v27 = v142;
          v10 = v139;
          v19 = v138;
          swift_task_create();

          sub_1DA924794();
        }

        ++a2;
      }

      while (v147 != v144);
      v58 = v148[0];
      a2 = v129;
    }

    else
    {
      v58 = MEMORY[0x1E69E7CC0];
    }

    if ((v58 & 0x8000000000000000) == 0 && (v58 & 0x4000000000000000) == 0)
    {
      if (*(v58 + 16))
      {
        goto LABEL_4;
      }

LABEL_41:

      v58 = 0;
      goto LABEL_4;
    }

    if (!sub_1DA941264())
    {
      goto LABEL_41;
    }

LABEL_4:
    v18 = (v135 - 1) & v135;
    swift_beginAccess();
    sub_1DA8F0D78(v58, v133, v134);
    swift_endAccess();
    v20 = v136;
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_103;
    }

    if (v22 >= v131)
    {
      break;
    }

    v18 = *(v132 + 8 * v22);
    ++v20;
    if (v18)
    {
      v20 = v22;
      goto LABEL_10;
    }
  }

  if (qword_1EE110E48 != -1)
  {
    goto LABEL_107;
  }

LABEL_46:
  v60 = sub_1DA9405A4();
  __swift_project_value_buffer(v60, qword_1EE11AD90);

  v61 = sub_1DA940584();
  v62 = sub_1DA940F34();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v148[0] = v64;
    *v63 = 136315138;
    *(v63 + 4) = sub_1DA7AE6E8(v128, v129, v148);
    _os_log_impl(&dword_1DA7A9000, v61, v62, "[id=%s] Observing", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v64);
    v65 = v64;
    a2 = v129;
    MEMORY[0x1E12739F0](v65, -1, -1);
    MEMORY[0x1E12739F0](v63, -1, -1);
  }

  *&v137 = type metadata accessor for NotificationInferenceClient.Observer(0);
  v66 = swift_allocObject();
  v67 = &v66[OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_inference];
  *v67 = xmmword_1DA95D870;
  *(v67 + 4) = 0;
  v68 = OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_continuation;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7780, qword_1DA965230);
  (*(*(v69 - 8) + 56))(&v66[v68], 1, 1, v69);
  v70 = v128;
  *(v66 + 2) = v128;
  *(v66 + 3) = a2;

  *(v66 + 4) = sub_1DA9401B4();
  *(v66 + 5) = v71;
  sub_1DA93FAC4();
  v140 = v66;
  v66[OBJC_IVAR____TtCC21UserNotificationsCore27NotificationInferenceClientP33_B3E86FDDC0F0F128881A9BB8C4FF2FA98Observer_cancelled] = 0;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v149[0] = *(v3 + 152);
  v73 = v149[0];
  *(v3 + 152) = 0x8000000000000000;
  isUniquelyReferenced_nonNull_bridgeObject = sub_1DA85A4B4(v70, a2);
  v76 = v73[2];
  v77 = (v75 & 1) == 0;
  v78 = __OFADD__(v76, v77);
  v79 = v76 + v77;
  if (v78)
  {
    __break(1u);
LABEL_109:
    sub_1DA940C04();
    goto LABEL_56;
  }

  LOBYTE(v80) = v75;
  if (v73[3] >= v79)
  {
LABEL_52:
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_112:
      v126 = isUniquelyReferenced_nonNull_bridgeObject;
      sub_1DA860D54();
      isUniquelyReferenced_nonNull_bridgeObject = v126;
      v73 = v149[0];
    }
  }

  else
  {
    sub_1DA85C9D4(v79, isUniquelyReferenced_nonNull_native);
    v73 = v149[0];
    isUniquelyReferenced_nonNull_bridgeObject = sub_1DA85A4B4(v128, a2);
    if ((v80 & 1) != (v81 & 1))
    {
      isUniquelyReferenced_nonNull_bridgeObject = sub_1DA9416E4();
      __break(1u);
      goto LABEL_52;
    }
  }

  isUniquelyReferenced_nonNull_native = v140;
  *(v3 + 152) = v73;
  if ((v80 & 1) == 0)
  {
    v82 = isUniquelyReferenced_nonNull_bridgeObject;
    sub_1DA90D0B0();

    isUniquelyReferenced_nonNull_bridgeObject = v82;
  }

  v83 = (v73[7] + 8 * isUniquelyReferenced_nonNull_bridgeObject);

  MEMORY[0x1E1271CA0](v84);
  if (*((*v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_109;
  }

LABEL_56:
  sub_1DA940C14();
  swift_endAccess();
  swift_retain_n();

  v85 = sub_1DA940584();
  v86 = sub_1DA940F34();

  v138 = v85;
  if (os_log_type_enabled(v85, v86))
  {
    LODWORD(v135) = v86;
    v87 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    v149[0] = v133;
    *v87 = 136315650;
    *(v87 + 4) = sub_1DA7AE6E8(v128, a2, v149);
    v134 = v87;
    *(v87 + 12) = 2048;
    v88 = *(v3 + 152);
    v91 = *(v88 + 64);
    v90 = v88 + 64;
    v89 = v91;
    v92 = 1 << *(*(v3 + 152) + 32);
    if (v92 < 64)
    {
      v93 = ~(-1 << v92);
    }

    else
    {
      v93 = -1;
    }

    v94 = v93 & v89;
    v80 = (v92 + 63) >> 6;
    v144 = *(v3 + 152);
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = 0;
    v95 = MEMORY[0x1E69E7CC0];
    v142 = v80;
    v143 = v90;
    while (1)
    {
      if (!v94)
      {
        while (1)
        {
          v96 = isUniquelyReferenced_nonNull_native + 1;
          if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
          {
            break;
          }

          if (v96 >= v80)
          {

            if (v95 >> 62)
            {
              v120 = sub_1DA941264();
            }

            else
            {
              v120 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            isUniquelyReferenced_nonNull_native = v140;
            v121 = v135;

            v122 = v134;
            *(v134 + 14) = v120;

            *(v122 + 22) = 2048;
            *(v122 + 24) = *(*(v3 + 152) + 16);

            v123 = v138;
            _os_log_impl(&dword_1DA7A9000, v138, v121, "[id=%s] %ld Observers waiting on inferences for %ld spotlightIdentifiers", v122, 0x20u);
            v124 = v133;
            __swift_destroy_boxed_opaque_existential_1(v133);
            MEMORY[0x1E12739F0](v124, -1, -1);
            MEMORY[0x1E12739F0](v122, -1, -1);

            return isUniquelyReferenced_nonNull_native;
          }

          v94 = *(v90 + 8 * v96);
          ++isUniquelyReferenced_nonNull_native;
          if (v94)
          {
            isUniquelyReferenced_nonNull_native = v96;
            goto LABEL_67;
          }
        }

LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        swift_once();
        goto LABEL_46;
      }

LABEL_67:
      v97 = v94;
      v98 = *(*(v144 + 56) + ((isUniquelyReferenced_nonNull_native << 9) | (8 * __clz(__rbit64(v94)))));
      a2 = v98 >> 62;
      v99 = v98;
      v100 = v98 >> 62 ? sub_1DA941264() : *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v101 = v95 >> 62;
      v147 = v100;
      if (v95 >> 62)
      {
        v119 = sub_1DA941264();
        v103 = v119 + v147;
        if (__OFADD__(v119, v147))
        {
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }
      }

      else
      {
        v102 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v103 = v102 + v100;
        if (__OFADD__(v102, v100))
        {
          goto LABEL_95;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
      {
        break;
      }

      if (v101)
      {
        goto LABEL_76;
      }

      v104 = v99;
      v105 = v95 & 0xFFFFFFFFFFFFFF8;
      v106 = v95;
      if (v103 > *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_77;
      }

LABEL_78:
      v145 = v106;
      v146 = v95;
      v107 = *(v105 + 16);
      v108 = *(v105 + 24);
      if (a2)
      {
        v109 = v105;
        isUniquelyReferenced_nonNull_bridgeObject = sub_1DA941264();
        v105 = v109;
        v104 = v99;
        v80 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v80 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v110 = v147;
      v94 = (v97 - 1) & v97;
      if (v80)
      {
        if (((v108 >> 1) - v107) < v147)
        {
          goto LABEL_106;
        }

        v111 = v105 + 8 * v107 + 32;
        v139 = v105;
        if (a2)
        {
          if (v80 < 1)
          {
            goto LABEL_111;
          }

          v136 = (v97 - 1) & v97;
          v112 = v104;
          sub_1DA9291E8();
          a2 = 0;
          do
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7790, &qword_1DA9652D8);
            v113 = sub_1DA84CA34(v148, a2, v112);
            v115 = *v114;

            (v113)(v148, 0);
            *(v111 + 8 * a2++) = v115;
          }

          while (v80 != a2);
          v110 = v147;
          v3 = v141;
          v94 = v136;
        }

        else
        {
          swift_arrayInitWithCopy();
        }

        v116 = v145;
        v95 = v145;
        v80 = v142;
        v90 = v143;
        if (v110 >= 1)
        {
          v117 = *(v139 + 16);
          v78 = __OFADD__(v117, v110);
          v118 = v117 + v110;
          if (v78)
          {
            __break(1u);
LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

          *(v139 + 16) = v118;
          v95 = v116;
        }
      }

      else
      {

        v95 = v145;
        v80 = v142;
        v90 = v143;
        if (v110 > 0)
        {
          goto LABEL_105;
        }
      }
    }

    if (v101)
    {
LABEL_76:
      sub_1DA941264();
    }

LABEL_77:
    isUniquelyReferenced_nonNull_bridgeObject = sub_1DA941394();
    v106 = isUniquelyReferenced_nonNull_bridgeObject;
    v105 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v104 = v99;
    goto LABEL_78;
  }

LABEL_96:

  return isUniquelyReferenced_nonNull_native;
}

uint64_t sub_1DA92647C(uint64_t a1, uint64_t a2)
{
  v3[8] = a1;
  v3[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4DF8, &qword_1DA965280);
  v3[10] = swift_task_alloc();
  v4 = type metadata accessor for IntelligenceServiceAnalytics.Interval(0);
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = sub_1DA93FAF4();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v6 = sub_1DA9401F4();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA92662C, v2, 0);
}

uint64_t sub_1DA92662C()
{
  v20 = v0;
  if (qword_1EE110E48 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v0[8];
  v5 = sub_1DA9405A4();
  __swift_project_value_buffer(v5, qword_1EE11AD90);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1DA940584();
  v7 = sub_1DA940F34();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[18];
  v9 = v0[19];
  v11 = v0[17];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446210;
    sub_1DA7BB52C();
    v14 = sub_1DA941614();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1DA7AE6E8(v14, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1DA7A9000, v6, v7, "Indexing: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E12739F0](v13, -1, -1);
    MEMORY[0x1E12739F0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  return MEMORY[0x1EEE6DFA0](sub_1DA926838, 0, 0);
}

uint64_t sub_1DA926838(uint64_t a1)
{
  sub_1DA93FAE4();
  v2 = swift_task_alloc();
  *(v1 + 160) = v2;
  *v2 = v1;
  v2[1] = sub_1DA9268E8;
  v3 = *(v1 + 64);

  return sub_1DA88FA48(v3);
}

uint64_t sub_1DA9268E8()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1DA926B60;
  }

  else
  {
    v2 = sub_1DA9269FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DA9269FC()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  (*(v2 + 16))(v3, v1, v4);
  sub_1DA93FAE4();
  (*(v2 + 8))(v1, v4);
  sub_1DA928E90(v3, v7);
  (*(v6 + 56))(v7, 0, 1, v5);
  v9 = OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_indexingInterval;
  swift_beginAccess();
  sub_1DA7BAD38(v7, v8 + v9, &qword_1ECBD4DF8, &qword_1DA965280);
  swift_endAccess();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DA926B60()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  (*(v2 + 16))(v3, v1, v4);
  sub_1DA93FAE4();
  (*(v2 + 8))(v1, v4);
  sub_1DA928E90(v3, v7);
  (*(v6 + 56))(v7, 0, 1, v5);
  v9 = OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_indexingInterval;
  swift_beginAccess();
  sub_1DA7BAD38(v7, v8 + v9, &qword_1ECBD4DF8, &qword_1DA965280);
  swift_endAccess();

  v10 = v0[1];

  return v10();
}

void sub_1DA926CC4(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v164 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v166 = &v154 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v157 = &v154 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v159 = &v154 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v163 = &v154 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v165 = &v154 - v14;

  v16 = sub_1DA928F54(v15);

  v18 = v16 + 8;
  v17 = v16[8];
  v169 = v16;
  v19 = 1 << *(v16 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v17;
  swift_beginAccess();
  v22 = 0;
  v23 = (v19 + 63) >> 6;
  *&v24 = 136315138;
  v162 = v24;
  *&v24 = 136315394;
  v160 = v24;
  *&v24 = 136315650;
  v161 = v24;
  v170 = v2;
  v168 = v16 + 8;
  v167 = v23;
  while (v21)
  {
LABEL_12:
    v174 = v22;
    v26 = __clz(__rbit64(v21)) | (v22 << 6);
    v27 = (v169[6] + 16 * v26);
    v29 = *v27;
    v28 = v27[1];
    v30 = *(v169[7] + 8 * v26);

    v172 = v29;
    v171 = sub_1DA9401B4();
    v175 = v31;
    v32 = v30;
    if (v30 >> 62)
    {
      v33 = sub_1DA941264();
      v32 = v30;
    }

    else
    {
      v33 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v176 = v28;
    if (v33)
    {
      v34 = v32;
      v173 = v21;
      v192[0] = MEMORY[0x1E69E7CC0];
      sub_1DA82AAF0(0, v33 & ~(v33 >> 63), 0);
      if (v33 < 0)
      {
        goto LABEL_108;
      }

      v35 = 0;
      v36 = v192[0];
      v37 = v34;
      v177 = v34 & 0xC000000000000001;
      v178 = v34;
      do
      {
        if (v177)
        {
          v38 = MEMORY[0x1E1272460](v35, v37);
        }

        else
        {
          v38 = *(v37 + 8 * v35 + 32);
        }

        v39 = v38;
        v40 = [v38 attributeSet];
        v41 = [v40 summarizationContentTopLine];

        v42 = [v39 attributeSet];
        v43 = [v42 isUrgent];

        if (v43)
        {
          v44 = [v43 integerValue];

          v45 = v44 == 1;
        }

        else
        {
          v45 = 2;
        }

        v46 = [v39 attributeSet];
        v47 = [v46 summarizationStatus];

        v48 = [v39 attributeSet];
        v49 = [v48 urgencyStatus];

        v192[0] = v36;
        v51 = *(v36 + 16);
        v50 = *(v36 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_1DA82AAF0((v50 > 1), v51 + 1, 1);
          v36 = v192[0];
        }

        *(v36 + 16) = v51 + 1;
        v52 = v36 + 24 * v51;
        *(v52 + 32) = v41;
        ++v35;
        *(v52 + 40) = v45;
        *(v52 + 44) = v47;
        *(v52 + 48) = v49;
        v37 = v178;
      }

      while (v33 != v35);

      v2 = v170;
      v21 = v173;
    }

    else
    {

      v36 = MEMORY[0x1E69E7CC0];
    }

    v21 &= v21 - 1;
    v53 = *(v36 + 16);
    if (v53)
    {
      v54 = *(v36 + 32);
      v177 = *(v36 + 40);
      v173 = *(v36 + 44);
      LODWORD(v178) = *(v36 + 48);
      if (v53 == 1)
      {
        v55 = v54;

        v18 = v168;
      }

      else
      {
        v65 = qword_1EE110E48;
        v66 = v54;
        if (v65 != -1)
        {
          swift_once();
        }

        v67 = sub_1DA9405A4();
        __swift_project_value_buffer(v67, qword_1EE11AD90);
        v68 = v176;

        v69 = sub_1DA940584();
        v70 = sub_1DA940F14();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v192[0] = v72;
          *v71 = v161;
          *(v71 + 4) = sub_1DA7AE6E8(v172, v68, v192);
          *(v71 + 12) = 2048;
          *(v71 + 14) = *(v36 + 16);

          *(v71 + 22) = 2080;
          v73 = MEMORY[0x1E1271CD0](v36, &type metadata for NotificationInference);
          v75 = v74;

          v76 = sub_1DA7AE6E8(v73, v75, v192);

          *(v71 + 24) = v76;
          _os_log_impl(&dword_1DA7A9000, v69, v70, "[id=%s] Error: Received %ld inferences for the same spotlightIdentifier. Keeping first inference, dropping rest. %s", v71, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1E12739F0](v72, -1, -1);
          MEMORY[0x1E12739F0](v71, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v86 = sub_1DA940D34();
        v87 = *(v86 - 8);
        v88 = v165;
        (*(v87 + 56))(v165, 1, 1, v86);
        v89 = swift_allocObject();
        *(v89 + 16) = 0;
        *(v89 + 24) = 0;
        v90 = v175;
        *(v89 + 32) = v171;
        *(v89 + 40) = v90;
        *(v89 + 48) = 3;
        v91 = v163;
        sub_1DA822F48(v88, v163, &qword_1ECBD4FA0, &unk_1DA958730);
        LODWORD(v88) = (*(v87 + 48))(v91, 1, v86);

        v18 = v168;
        if (v88 == 1)
        {
          sub_1DA7BA120(v91, &qword_1ECBD4FA0, &unk_1DA958730);
        }

        else
        {
          sub_1DA940D24();
          (*(v87 + 8))(v91, v86);
        }

        v92 = *(v89 + 16);
        swift_unknownObjectRetain();

        if (v92)
        {
          swift_getObjectType();
          v93 = sub_1DA940C34();
          v95 = v94;
          swift_unknownObjectRelease();
        }

        else
        {
          v93 = 0;
          v95 = 0;
        }

        sub_1DA7BA120(v165, &qword_1ECBD4FA0, &unk_1DA958730);
        v97 = swift_allocObject();
        *(v97 + 16) = &unk_1DA9652A0;
        *(v97 + 24) = v89;
        if (v95 | v93)
        {
          v183 = 0;
          v184 = 0;
          v185 = v93;
          v186 = v95;
        }

        swift_task_create();

        v2 = v170;
      }

      v98 = *(v2 + 152);
      if (!*(v98 + 16))
      {
        goto LABEL_64;
      }

      v99 = sub_1DA85A4B4(v172, v176);
      if ((v100 & 1) == 0)
      {

        goto LABEL_64;
      }

      v101 = *(*(v98 + 56) + 8 * v99);

      v102 = v101 >> 62;
      if (v101 >> 62)
      {
        v103 = sub_1DA941264();
        if (!v103)
        {
LABEL_62:

          v18 = v168;
LABEL_64:

          if (qword_1EE110E48 != -1)
          {
            swift_once();
          }

          v104 = sub_1DA9405A4();
          __swift_project_value_buffer(v104, qword_1EE11AD90);
          v105 = v54;
          v106 = v176;

          v107 = sub_1DA940584();
          v108 = sub_1DA940F14();

          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            v192[0] = v110;
            *v109 = v160;
            v111 = sub_1DA7AE6E8(v172, v106, v192);

            *(v109 + 4) = v111;
            *(v109 + 12) = 2080;
            v112 = v156 & 0xFFFFFF00 | v177 | (v173 << 32);
            v113 = v105;
            v156 = v112;
            v114 = sub_1DA93B7DC(v54, v112, v178);
            v116 = v115;

            v117 = sub_1DA7AE6E8(v114, v116, v192);

            *(v109 + 14) = v117;
            _os_log_impl(&dword_1DA7A9000, v107, v108, "[id=%s] Error: No observers, dropping inference %s", v109, 0x16u);
            swift_arrayDestroy();
            v118 = v110;
            v2 = v170;
            MEMORY[0x1E12739F0](v118, -1, -1);
            MEMORY[0x1E12739F0](v109, -1, -1);
          }

          else
          {
          }

          goto LABEL_6;
        }
      }

      else
      {
        v103 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v103)
        {
          goto LABEL_62;
        }
      }

      if (v103 < 2)
      {
      }

      else
      {
        if (qword_1EE110E48 != -1)
        {
          swift_once();
        }

        v119 = sub_1DA9405A4();
        __swift_project_value_buffer(v119, qword_1EE11AD90);
        v120 = v54;

        v121 = v176;

        v122 = sub_1DA940584();
        v123 = sub_1DA940F14();

        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          v192[0] = v125;
          *v124 = v161;
          *(v124 + 4) = sub_1DA7AE6E8(v172, v121, v192);
          *(v124 + 12) = 2048;
          v154 = v125;
          if (v102)
          {
            v126 = sub_1DA941264();
          }

          else
          {
            v126 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v124 + 14) = v126;

          *(v124 + 22) = 2080;
          v127 = v155 & 0xFFFFFF00 | v177 | (v173 << 32);
          v128 = v120;
          v155 = v127;
          v129 = sub_1DA93B7DC(v54, v127, v178);
          v131 = v130;

          v132 = sub_1DA7AE6E8(v129, v131, v192);

          *(v124 + 24) = v132;
          _os_log_impl(&dword_1DA7A9000, v122, v123, "[id=%s] Error: %ld observers. Only 1 observer expected. Copying inference to all observers %s", v124, 0x20u);
          v133 = v154;
          swift_arrayDestroy();
          MEMORY[0x1E12739F0](v133, -1, -1);
          MEMORY[0x1E12739F0](v124, -1, -1);
        }

        else
        {
        }

        v134 = sub_1DA940D34();
        v135 = *(v134 - 8);
        v136 = v159;
        (*(v135 + 56))(v159, 1, 1, v134);
        v137 = swift_allocObject();
        *(v137 + 16) = 0;
        *(v137 + 24) = 0;
        v138 = v175;
        *(v137 + 32) = v171;
        *(v137 + 40) = v138;
        *(v137 + 48) = 5;
        v139 = v136;
        v140 = v157;
        sub_1DA822F48(v139, v157, &qword_1ECBD4FA0, &unk_1DA958730);
        v141 = (*(v135 + 48))(v140, 1, v134);

        if (v141 == 1)
        {
          sub_1DA7BA120(v140, &qword_1ECBD4FA0, &unk_1DA958730);
        }

        else
        {
          sub_1DA940D24();
          (*(v135 + 8))(v140, v134);
        }

        v142 = *(v137 + 16);
        swift_unknownObjectRetain();

        if (v142)
        {
          swift_getObjectType();
          v143 = sub_1DA940C34();
          v145 = v144;
          swift_unknownObjectRelease();
        }

        else
        {
          v143 = 0;
          v145 = 0;
        }

        sub_1DA7BA120(v159, &qword_1ECBD4FA0, &unk_1DA958730);
        v146 = swift_allocObject();
        *(v146 + 16) = &unk_1DA965288;
        *(v146 + 24) = v137;
        if (v145 | v143)
        {
          v187 = 0;
          v188 = 0;
          v189 = v143;
          v190 = v145;
        }

        swift_task_create();
      }

      if (v102)
      {
        v147 = sub_1DA941264();
      }

      else
      {
        v147 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v147)
      {
        if (v147 < 1)
        {
          goto LABEL_109;
        }

        v148 = 0;
        v149 = v177 | (v173 << 32);
        do
        {
          if ((v101 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1E1272460](v148, v101);
          }

          else
          {
          }

          ++v148;
          v158 = v158 & 0xFFFFFF00 | v149;
          sub_1DA923E10(v54, v158, v178);
        }

        while (v147 != v148);
      }

      v2 = v170;
      swift_beginAccess();
      sub_1DA85A4B4(v172, v176);
      v151 = v150;

      v18 = v168;
      if (v151)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v153 = *(v2 + 152);
        v191 = v153;
        *(v2 + 152) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1DA860D54();
          v153 = v191;
        }

        sub_1DA8F71FC();
        *(v2 + 152) = v153;
      }

      swift_endAccess();
    }

    else
    {
      v173 = v21;

      if (qword_1EE110E48 != -1)
      {
        swift_once();
      }

      v56 = sub_1DA9405A4();
      __swift_project_value_buffer(v56, qword_1EE11AD90);
      v57 = v176;

      v58 = sub_1DA940584();
      v59 = sub_1DA940F14();

      v60 = os_log_type_enabled(v58, v59);
      v61 = v164;
      v18 = v168;
      if (v60)
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v192[0] = v63;
        *v62 = v162;
        v64 = sub_1DA7AE6E8(v172, v57, v192);

        *(v62 + 4) = v64;
        _os_log_impl(&dword_1DA7A9000, v58, v59, "[id=%s] Programming Error: Missing inferences", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v63);
        MEMORY[0x1E12739F0](v63, -1, -1);
        MEMORY[0x1E12739F0](v62, -1, -1);
      }

      else
      {
      }

      v77 = sub_1DA940D34();
      v78 = *(v77 - 8);
      v79 = v166;
      (*(v78 + 56))(v166, 1, 1, v77);
      v80 = swift_allocObject();
      *(v80 + 16) = 0;
      *(v80 + 24) = 0;
      v81 = v175;
      *(v80 + 32) = v171;
      *(v80 + 40) = v81;
      *(v80 + 48) = 2;
      sub_1DA822F48(v79, v61, &qword_1ECBD4FA0, &unk_1DA958730);
      LODWORD(v79) = (*(v78 + 48))(v61, 1, v77);

      v2 = v170;
      if (v79 == 1)
      {
        sub_1DA7BA120(v61, &qword_1ECBD4FA0, &unk_1DA958730);
      }

      else
      {
        sub_1DA940D24();
        (*(v78 + 8))(v61, v77);
      }

      v82 = *(v80 + 16);
      swift_unknownObjectRetain();

      if (v82)
      {
        swift_getObjectType();
        v83 = sub_1DA940C34();
        v85 = v84;
        swift_unknownObjectRelease();
      }

      else
      {
        v83 = 0;
        v85 = 0;
      }

      sub_1DA7BA120(v166, &qword_1ECBD4FA0, &unk_1DA958730);
      v96 = swift_allocObject();
      *(v96 + 16) = &unk_1DA9652B0;
      *(v96 + 24) = v80;
      if (v85 | v83)
      {
        v179 = 0;
        v180 = 0;
        v181 = v83;
        v182 = v85;
      }

      v21 = v173;
      swift_task_create();
    }

LABEL_6:
    v23 = v167;
    v22 = v174;
  }

  while (1)
  {
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v25 >= v23)
    {

      return;
    }

    v21 = v18[v25];
    ++v22;
    if (v21)
    {
      v22 = v25;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
}

uint64_t sub_1DA92819C(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4DF8, &qword_1DA965280);
  v3[14] = swift_task_alloc();
  v4 = type metadata accessor for IntelligenceServiceAnalytics.Interval(0);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = sub_1DA93FAF4();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA9282F4, v2, 0);
}

uint64_t sub_1DA9282F4()
{
  v1 = sub_1DA9400E4();
  v0[21] = sub_1DA925448(v1, v2);

  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_1DA9283B8;
  v4 = v0[12];
  v5 = v0[11];

  return sub_1DA92647C(v5, v4);
}

uint64_t sub_1DA9283B8()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = sub_1DA928AA8;
  }

  else
  {
    v4 = sub_1DA9284D4;
    v3 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DA9284D4(uint64_t a1)
{
  sub_1DA93FAE4();
  v2 = swift_task_alloc();
  *(v1 + 192) = v2;
  *v2 = v1;
  v2[1] = sub_1DA9285B4;
  v3 = *(v1 + 168);

  return MEMORY[0x1EEE6DE38](v1 + 64, 0, 0, 0xD000000000000019, 0x80000001DA956E20, sub_1DA928E8C, v3, &type metadata for NotificationInference);
}

uint64_t sub_1DA9285B4()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1DA9288D4;
  }

  else
  {
    v2 = sub_1DA9286C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DA9286C8()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v9 = *(v0 + 96);
  (*(v2 + 16))(v4, v1, v3);
  sub_1DA93FAE4();
  (*(v2 + 8))(v1, v3);
  sub_1DA928E90(v4, v8);
  (*(v6 + 56))(v8, 0, 1, v5);
  v10 = OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_waitingForResultInterval;
  swift_beginAccess();
  sub_1DA7BAD38(v8, v9 + v10, &qword_1ECBD4DF8, &qword_1DA965280);
  swift_endAccess();
  *(v0 + 208) = *(v0 + 64);
  *(v0 + 220) = *(v0 + 72);
  v11 = *(v0 + 80);
  *(v0 + 84) = *(v0 + 76);
  *(v0 + 216) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1DA92882C, v7, 0);
}

uint64_t sub_1DA92882C()
{
  v1 = *(v0 + 220);
  v2 = *(v0 + 84);

  v3 = *(v0 + 8);
  v4 = *(v0 + 216);
  v5 = *(v0 + 208);

  return v3(v5, v1 | (v2 << 32), v4);
}

uint64_t sub_1DA9288D4()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[12];
  (*(v2 + 16))(v4, v1, v3);
  sub_1DA93FAE4();
  (*(v2 + 8))(v1, v3);
  sub_1DA928E90(v4, v8);
  (*(v6 + 56))(v8, 0, 1, v5);
  v10 = OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_waitingForResultInterval;
  swift_beginAccess();
  sub_1DA7BAD38(v8, v9 + v10, &qword_1ECBD4DF8, &qword_1DA965280);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1DA928A1C, v7, 0);
}

uint64_t sub_1DA928A1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA928AA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA928B34()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for NotificationInferenceClient.Observer(uint64_t a1)
{
  result = qword_1EE111D80;
  if (!qword_1EE111D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA928BEC(uint64_t a1)
{
  sub_1DA93FAF4();
  if (v1 <= 0x3F)
  {
    sub_1DA928CDC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1DA928CDC(uint64_t a1)
{
  if (!qword_1EE110C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD7780, qword_1DA965230);
    v1 = sub_1DA941134();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE110C80);
    }
  }
}

uint64_t sub_1DA928D40(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DA7B7564;

  return v6(a1);
}

unint64_t sub_1DA928E38()
{
  result = qword_1EE111DB0;
  if (!qword_1EE111DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE111DB0);
  }

  return result;
}

uint64_t sub_1DA928E90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceServiceAnalytics.Interval(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DA928F1C(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

void *sub_1DA928F54(unint64_t a1)
{
  v29 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
LABEL_24:
    v2 = sub_1DA941264();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1E1272460](v3, a1);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v7 = *(a1 + 8 * v3 + 32);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }
        }

        v28 = v8;
        v9 = v7;
        v10 = [v7 uniqueIdentifier];
        v11 = sub_1DA940A14();
        v13 = v12;

        v15 = sub_1DA85A4B4(v11, v13);
        v16 = v4[2];
        v17 = (v14 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_22;
        }

        v19 = v14;
        if (v4[3] < v18)
        {
          sub_1DA85C9E8(v18, 1);
          v4 = v29;
          v20 = sub_1DA85A4B4(v11, v13);
          if ((v19 & 1) != (v21 & 1))
          {
            result = sub_1DA9416E4();
            __break(1u);
            return result;
          }

          v15 = v20;
        }

        if (v19)
        {

          v6 = (v4[7] + 8 * v15);
          MEMORY[0x1E1271CA0](v5);
          if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1DA940C04();
          }

          sub_1DA940C14();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5010, &qword_1DA9652C0);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_1DA9593A0;
          *(v22 + 32) = v9;
          v4[(v15 >> 6) + 8] |= 1 << v15;
          v23 = (v4[6] + 16 * v15);
          *v23 = v11;
          v23[1] = v13;
          *(v4[7] + 8 * v15) = v22;
          v24 = v4[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_23;
          }

          v4[2] = v26;
        }

        ++v3;
        if (v28 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

unint64_t sub_1DA9291E8()
{
  result = qword_1ECBD7798;
  if (!qword_1ECBD7798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD7790, &qword_1DA9652D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7798);
  }

  return result;
}

unint64_t sub_1DA929260()
{
  result = qword_1ECBD77A0;
  if (!qword_1ECBD77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD77A0);
  }

  return result;
}

uint64_t sub_1DA9292B4()
{
  v1 = sub_1DA9417C4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  v22 = &type metadata for ToolService.Request;
  v12 = swift_allocObject();
  v20 = v12;
  *(v12 + 16) = v5;
  *(v12 + 24) = v6;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  *(v12 + 48) = v9;
  *(v12 + 56) = v10;
  *(v12 + 64) = v11;
  sub_1DA92A3DC(v5, v6, v7, v8, v9, v10, v11);
  sub_1DA9417A4();
  sub_1DA9417B4();
  (*(v2 + 8))(v4, v1);
  v13 = sub_1DA941484();

  v20 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  sub_1DA7AD11C(&qword_1EE114DF0, &qword_1ECBD6790, &qword_1DA9594C0, MEMORY[0x1E69E6310]);
  v14 = sub_1DA9409C4();
  v16 = v15;

  v20 = 60;
  v21 = 0xE100000000000000;
  v17 = sub_1DA941884();
  MEMORY[0x1E1271BD0](v17);

  MEMORY[0x1E1271BD0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E1271BD0](v14, v16);

  MEMORY[0x1E1271BD0](4087050, 0xE300000000000000);
  return v20;
}

uint64_t sub_1DA929564(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1DA9417C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = &type metadata for SequentialAsyncEntrance.WorkItem;

  sub_1DA9417A4();
  sub_1DA9417B4();
  (*(v7 + 8))(v9, v6);
  v10 = sub_1DA941484();

  v17 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  sub_1DA7AD11C(&qword_1EE114DF0, &qword_1ECBD6790, &qword_1DA9594C0, MEMORY[0x1E69E6310]);
  v11 = sub_1DA9409C4();
  v13 = v12;

  v17 = 60;
  v18 = 0xE100000000000000;
  v14 = sub_1DA941884();
  MEMORY[0x1E1271BD0](v14);

  MEMORY[0x1E1271BD0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E1271BD0](v11, v13);

  MEMORY[0x1E1271BD0](4087050, 0xE300000000000000);
  return v17;
}

uint64_t sub_1DA9297D0()
{
  v1 = OBJC_IVAR____TtC21UserNotificationsCore23SequentialAsyncEntrance_stream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD77C0, &qword_1DA965578);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21UserNotificationsCore23SequentialAsyncEntrance_continuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD77C8, &unk_1DA965580);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SequentialAsyncEntrance(uint64_t a1)
{
  result = qword_1EE115440;
  if (!qword_1EE115440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA929928(uint64_t a1)
{
  sub_1DA929A40(319, &qword_1EE114DE0, MEMORY[0x1E69E8698]);
  if (v1 <= 0x3F)
  {
    sub_1DA929A40(319, &qword_1EE114DE8, MEMORY[0x1E69E8660]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1DA929A40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for SequentialAsyncEntrance.WorkItem);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DA929A94()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

double sub_1DA929AF0(uint64_t a1)
{
  v2 = sub_1DA9407F4();
  v15 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DA940854();
  v5 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DA940CF4();
  v9 = sub_1DA92A218(&qword_1ECBD77B8, type metadata accessor for SynchronousEntryExecutor, &unk_1DA9654E8);
  v10 = swift_allocObject();
  v10[2] = v1;
  v10[3] = v8;
  v10[4] = v1;
  v10[5] = v9;
  aBlock[4] = sub_1DA92A20C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_26;
  v11 = _Block_copy(aBlock);

  sub_1DA940824();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1DA92A218(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0, MEMORY[0x1E69E6328]);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v7, v4, v11);
  _Block_release(v11);
  (*(v15 + 8))(v4, v2);
  (*(v5 + 8))(v7, v14);

  return result;
}

uint64_t sub_1DA929E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 24))
  {
    sub_1DA9410A4();
  }

  swift_job_run();
  return sub_1DA9410B4();
}

uint64_t sub_1DA929E68()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DA929EE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DA929F30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DA929F80(uint64_t a1)
{
  result = sub_1DA929FA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DA929FA8()
{
  result = qword_1ECBD77A8;
  if (!qword_1ECBD77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD77A8);
  }

  return result;
}

uint64_t sub_1DA92A02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = sub_1DA92A218(&qword_1ECBD77B0, type metadata accessor for SynchronousEntryExecutor, &unk_1DA9654B0);

  return a4(a1, v6, v7);
}

uint64_t sub_1DA92A218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DA92A260@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1280070990;
  }

  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x1E1271BD0](v5, v6);

  MEMORY[0x1E1271BD0](538976314, 0xE400000000000000);
  result = sub_1DA941494();
  *a2 = 0;
  a2[1] = v8;
  return result;
}

void sub_1DA92A328(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
    if (!a7)
    {

LABEL_13:

      return;
    }

    if (a7 != 1)
    {
      return;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (a7 == 2)
  {
    goto LABEL_12;
  }

  if (a7 == 3)
  {

    sub_1DA828324(a1, a2);
  }
}

double sub_1DA92A3DC(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
    if (!a7)
    {

LABEL_13:

      return result;
    }

    if (a7 != 1)
    {
      return result;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (a7 == 2)
  {
    goto LABEL_12;
  }

  if (a7 == 3)
  {

    sub_1DA841874(a1, a2);
  }

  return result;
}

double sub_1DA92A494()
{
  v1 = sub_1DA9407F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DA940854();
  v5 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 16);
  aBlock[4] = sub_1DA92D4FC;
  v14 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_10_1;
  v8 = _Block_copy(aBlock);

  sub_1DA940824();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1DA92D59C(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);

  return result;
}

double sub_1DA92A734(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DA9407F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DA940854();
  v10 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v3 + 16);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_1DA92D4F0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_7_0;
  v14 = _Block_copy(aBlock);

  sub_1DA940824();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1DA92D59C(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);

  return result;
}

double sub_1DA92AA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DA9407F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DA940854();
  v11 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v3 + 16);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = v3;
  aBlock[4] = sub_1DA92D474;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_27;
  v15 = _Block_copy(aBlock);

  sub_1DA940824();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1DA92D59C(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v13, v10, v15);
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v18);

  return result;
}

void *sub_1DA92ACDC(uint64_t a1)
{
  v11 = a1;
  v10 = sub_1DA940FC4();
  v2 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1DA7AC344();
  v9[1] = "tificationsCore/";
  v9[2] = v7;
  sub_1DA940824();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1DA92D59C(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v10);
  v1[2] = sub_1DA941004();
  v1[3] = 0;
  v1[4] = 0;
  v1[5] = 0;
  v1[6] = v11;
  return v1;
}

void sub_1DA92AF40(void *a1)
{
  sub_1DA92AFC0();
  swift_beginAccess();
  v2 = a1[4];
  if (v2)
  {
    sub_1DA92D504(a1[3], v2, a1[5]);

    sub_1DA8244E0(v3);
  }
}

void sub_1DA92AFC0()
{
  v0 = sub_1DA93F8E4();
  v28 = *(v0 - 8);
  *&v29 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_1DA93F964();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA92C478();
  v10 = sub_1DA940A04();

  v11 = sub_1DA940A04();
  v12 = [v10 stringByAppendingPathComponent_];

  v13 = v12;
  if (!v12)
  {
    sub_1DA940A14();
    v13 = sub_1DA940A04();
  }

  sub_1DA940A14();
  v14 = [objc_opt_self() defaultManager];
  v15 = [v14 fileExistsAtPath_];

  if (v15)
  {
    (*(v7 + 56))(v5, 1, 1, v6);
    (*(v28 + 104))(v2, *MEMORY[0x1E6968F70], v29);
    sub_1DA93F934();
    v20 = sub_1DA93F974();
    v22 = v21;
    v23 = v27;
    (*(v7 + 8))(v9, v6);
    sub_1DA93F7A4();
    swift_allocObject();
    sub_1DA93F794();
    sub_1DA92D548();
    sub_1DA93F784();
    sub_1DA828324(v20, v22);

    v29 = v30;
    v24 = v31;
    swift_beginAccess();
    v25 = v23[3];
    v26 = v23[4];
    *(v23 + 3) = v29;
    v23[5] = v24;
    sub_1DA92D430(v25, v26);
  }

  else
  {

    if (qword_1ECBD47C8 != -1)
    {
      swift_once();
    }

    v16 = sub_1DA9405A4();
    __swift_project_value_buffer(v16, qword_1ECBE3DD0);
    *&v29 = sub_1DA940584();
    v17 = sub_1DA940F34();
    if (os_log_type_enabled(v29, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DA7A9000, v29, v17, "NotificationGroupPersistenceManager: No file to load", v18, 2u);
      MEMORY[0x1E12739F0](v18, -1, -1);
    }

    v19 = v29;
  }
}

uint64_t sub_1DA92B580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD77F8, &qword_1DA965688);
  sub_1DA940FE4();
  sub_1DA92C8F8(a1, a2, v7);
}

uint64_t sub_1DA92B624@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  if (a1[4])
  {

    sub_1DA92B8A4(a2, a3);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
    return (*(*(v7 - 8) + 56))(a3, 1, 1, v7);
  }
}

uint64_t sub_1DA92B718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(a1 + 32))
  {
    sub_1DA92B784(a2, a3);
  }

  return swift_endAccess();
}

uint64_t sub_1DA92B784(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = v2;
    v7 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_13:
      v3 = sub_1DA884BE8(v3);
    }

    v8 = 0;
    v9 = 48;
    do
    {
      if (v8 >= *(v3 + 2))
      {
        __break(1u);
        goto LABEL_13;
      }

      result = sub_1DA85A4B4(v7, a2);
      if (v10)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = *&v3[v9];
        *&v3[v9] = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1DA860D2C();
        }

        sub_1DA8F71FC();
        *&v3[v9] = v12;
      }

      ++v8;
      v9 += 24;
    }

    while (v4 != v8);
    *(v5 + 8) = v3;
  }

  return result;
}

uint64_t sub_1DA92B8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v41 = a2;
  v47 = sub_1DA93FEC4();
  v3 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v2 + 8);
  v7 = *(v2 + 8);
  v8 = *(v7 + 2);
  if (!v8)
  {
LABEL_15:
    v23 = 1;
    v24 = v41;
    goto LABEL_23;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_26:
    v7 = sub_1DA884BE8(v7);
  }

  v9 = 0;
  v45 = v8;
  v46 = v7 + 32;
  v40 = v3;
  v10 = (v3 + 8);
  v43 = v7;
  v44 = v6;
  while (1)
  {
    if (v9 == v8)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v9 >= *(v7 + 2))
    {
      goto LABEL_25;
    }

    v11 = &v46[24 * v9];
    v12 = sub_1DA940014();
    v14 = *(v11 + 2);
    if (*(v14 + 16))
    {
      break;
    }

LABEL_5:
    ++v9;
    *v6 = v7;
    if (v9 == v8)
    {
      goto LABEL_15;
    }
  }

  v3 = sub_1DA85A4B4(v12, v13);
  v16 = v15;
  v8 = v45;

  if ((v16 & 1) == 0)
  {
    goto LABEL_5;
  }

  v42 = v11;
  v17 = *(*(v14 + 56) + 8 * v3);
  v50 = v17;
  v18 = *(v17 + 16);
  swift_bridgeObjectRetain_n();
  if (!v18)
  {
LABEL_14:
    swift_bridgeObjectRelease_n();
    v7 = v43;
    v6 = v44;
    v8 = v45;
    goto LABEL_5;
  }

  v3 = 0;
  v19 = v17 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
  v20 = *(v40 + 72);
  while (1)
  {
    sub_1DA940124();
    v21 = sub_1DA93FEA4();
    v22 = *v10;
    (*v10)(v5, v47);
    if (v21)
    {
      break;
    }

    ++v3;
    v19 += v20;
    if (v18 == v3)
    {
      goto LABEL_14;
    }
  }

  sub_1DA8765C8(v3, v5);
  v22(v5, v47);
  v25 = v50;
  v26 = v44;
  if (*(v50 + 16))
  {
    v27 = sub_1DA940014();
    v29 = v28;
    v30 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(v30 + 2);
    *(v30 + 2) = 0x8000000000000000;
    sub_1DA90B4E8(v25, v27, v29, isUniquelyReferenced_nonNull_native);

    *(v30 + 2) = v49;
  }

  else
  {

    v33 = sub_1DA940014();
    v30 = v42;
    sub_1DA8F485C(v33, v34);
  }

  v24 = v41;
  v35 = v43;
  *v26 = v43;
  if (v9 >= *(v35 + 2))
  {
    __break(1u);
  }

  else
  {
    v36 = *(*(v30 + 2) + 16);

    if (!v36)
    {
      sub_1DA87670C(v9);
    }

    sub_1DA9401F4();
    v37 = MEMORY[0x1E69DF180];
    sub_1DA92D59C(&qword_1ECBD5A70, MEMORY[0x1E69DF180], MEMORY[0x1E69DF1A0]);
    sub_1DA92D59C(&qword_1ECBD5A78, v37, MEMORY[0x1E69DF188]);
    sub_1DA92D59C(&qword_1ECBD5A80, v37, MEMORY[0x1E69DF198]);
    sub_1DA940344();

    v23 = 0;
LABEL_23:
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
    return (*(*(v38 - 8) + 56))(v24, v23, 1, v38);
  }

  return result;
}

uint64_t sub_1DA92BD00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7810, &unk_1DA965690);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA92D0E4();
  sub_1DA941834();
  LOBYTE(v14) = 0;
  sub_1DA9415F4();
  if (!v4)
  {
    v14 = v12;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD77E0, &qword_1DA965680);
    sub_1DA92D278(&qword_1ECBD7818, sub_1DA92D2F0, MEMORY[0x1E69E6300]);
    sub_1DA941604();
    v14 = a4;
    v13 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD77F8, &qword_1DA965688);
    sub_1DA92D344();
    sub_1DA941604();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1DA92BF20()
{
  v1 = 0x736E6F6974636573;
  if (*v0 != 1)
  {
    v1 = 0x6F6974617267696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x655674616D726F66;
  }
}

uint64_t sub_1DA92BF8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DA92CD50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DA92BFB4(uint64_t a1)
{
  v2 = sub_1DA92D0E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA92BFF0(uint64_t a1)
{
  v2 = sub_1DA92D0E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA92C02C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DA92CE78(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1DA92C07C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7890, &qword_1DA965860);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA92D998();
  sub_1DA941834();
  v13 = 0;
  sub_1DA9415D4();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7870, &qword_1DA965850);
    sub_1DA92DB4C();
    sub_1DA941604();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DA92C220()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1DA92C254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1DA941684() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DA957080 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DA941684();

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

uint64_t sub_1DA92C330(uint64_t a1)
{
  v2 = sub_1DA92D998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA92C36C(uint64_t a1)
{
  v2 = sub_1DA92D998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA92C3A8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DA92D794(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1DA92C3F8()
{
  sub_1DA92D430(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1DA92C478()
{
  v34[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1DA93F8E4();
  v32 = *(v0 - 8);
  v33 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - v4;
  v6 = sub_1DA93F964();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultManager];
  v11 = sub_1DA940A04();
  v12 = [v11 stringByExpandingTildeInPath];

  v13 = v12;
  if (!v12)
  {
    sub_1DA940A14();
    v13 = sub_1DA940A04();
  }

  v14 = sub_1DA940A14();
  v15 = v10;
  v16 = [v10 fileExistsAtPath_];

  if (v16)
  {
    goto LABEL_6;
  }

  (*(v7 + 56))(v5, 1, 1, v6);
  (*(v32 + 104))(v2, *MEMORY[0x1E6968F70], v33);

  sub_1DA93F934();
  v17 = sub_1DA93F904();
  (*(v7 + 8))(v9, v6);
  v34[0] = 0;
  v18 = [v15 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:v34];

  if (v18)
  {
    v19 = v34[0];
LABEL_6:

    return v14;
  }

  v21 = v34[0];
  v22 = sub_1DA93F8C4();

  swift_willThrow();
  if (qword_1ECBD47C8 != -1)
  {
    swift_once();
  }

  v23 = sub_1DA9405A4();
  __swift_project_value_buffer(v23, qword_1ECBE3DD0);
  v24 = v22;
  v25 = sub_1DA940584();
  v26 = sub_1DA940F14();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = v22;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v30;
    *v28 = v30;
    _os_log_impl(&dword_1DA7A9000, v25, v26, "NotificationGroupPersistenceManager: failed to create a directory: %@", v27, 0xCu);
    sub_1DA828378(v28);
    MEMORY[0x1E12739F0](v28, -1, -1);
    MEMORY[0x1E12739F0](v27, -1, -1);
  }

  else
  {
  }

  return v14;
}

double sub_1DA92C8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v5 = sub_1DA93F8E4();
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_1DA93F964();
  v22 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA92C478();
  v14 = sub_1DA940A04();

  v15 = sub_1DA940A04();
  v16 = [v14 stringByAppendingPathComponent_];

  sub_1DA940A14();
  sub_1DA93F7D4();
  swift_allocObject();
  sub_1DA93F7C4();
  v26 = a1;
  v27 = a2;
  v28 = v25;
  sub_1DA92D49C();
  v17 = sub_1DA93F7B4();
  v19 = v18;

  v20 = v22;
  (*(v22 + 56))(v10, 1, 1, v11);
  (*(v23 + 104))(v7, *MEMORY[0x1E6968F70], v24);
  sub_1DA93F934();
  sub_1DA93F9B4();
  (*(v20 + 8))(v13, v11);
  return sub_1DA828324(v17, v19);
}

uint64_t sub_1DA92CD50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x655674616D726F66 && a2 == 0xED00006E6F697372;
  if (v4 || (sub_1DA941684() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000 || (sub_1DA941684() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6974617267696DLL && a2 == 0xEA0000000000736ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DA941684();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DA92CE78(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD77D0, &qword_1DA965678);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA92D0E4();
  sub_1DA941804();
  LOBYTE(v9) = 0;
  v6 = sub_1DA941574();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD77E0, &qword_1DA965680);
  HIBYTE(v8) = 1;
  sub_1DA92D278(&qword_1ECBD77E8, sub_1DA92D138, MEMORY[0x1E69E6330]);
  sub_1DA941584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD77F8, &qword_1DA965688);
  HIBYTE(v8) = 2;
  sub_1DA92D18C();
  sub_1DA941584();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

unint64_t sub_1DA92D0E4()
{
  result = qword_1ECBD77D8;
  if (!qword_1ECBD77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD77D8);
  }

  return result;
}

unint64_t sub_1DA92D138()
{
  result = qword_1ECBD77F0;
  if (!qword_1ECBD77F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD77F0);
  }

  return result;
}

unint64_t sub_1DA92D18C()
{
  result = qword_1ECBD7800;
  if (!qword_1ECBD7800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD77F8, &qword_1DA965688);
    sub_1DA92D59C(&qword_1ECBD7808, MEMORY[0x1E69DF0D0], MEMORY[0x1E69DF0F0]);
    sub_1DA92D59C(&qword_1ECBD6920, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7800);
  }

  return result;
}

uint64_t sub_1DA92D278(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD77E0, &qword_1DA965680);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA92D2F0()
{
  result = qword_1ECBD7820;
  if (!qword_1ECBD7820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7820);
  }

  return result;
}

unint64_t sub_1DA92D344()
{
  result = qword_1ECBD7828;
  if (!qword_1ECBD7828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD77F8, &qword_1DA965688);
    sub_1DA92D59C(&qword_1ECBD7830, MEMORY[0x1E69DF0D0], MEMORY[0x1E69DF0D8]);
    sub_1DA92D59C(&qword_1ECBD6908, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7828);
  }

  return result;
}

uint64_t sub_1DA92D430(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1DA92D49C()
{
  result = qword_1ECBD7838;
  if (!qword_1ECBD7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7838);
  }

  return result;
}

double sub_1DA92D504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1DA92D548()
{
  result = qword_1ECBD7840;
  if (!qword_1ECBD7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7840);
  }

  return result;
}

uint64_t sub_1DA92D59C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DA92D5F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1DA92D63C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DA92D690()
{
  result = qword_1ECBD7848;
  if (!qword_1ECBD7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7848);
  }

  return result;
}

unint64_t sub_1DA92D6E8()
{
  result = qword_1ECBD7850;
  if (!qword_1ECBD7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7850);
  }

  return result;
}

unint64_t sub_1DA92D740()
{
  result = qword_1ECBD7858;
  if (!qword_1ECBD7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7858);
  }

  return result;
}

uint64_t sub_1DA92D794(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7860, &qword_1DA965848);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA92D998();
  sub_1DA941804();
  if (!v1)
  {
    v10 = 0;
    v7 = sub_1DA941554();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7870, &qword_1DA965850);
    v9[15] = 1;
    sub_1DA92D9EC();
    sub_1DA941584();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_1DA92D998()
{
  result = qword_1ECBD7868;
  if (!qword_1ECBD7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7868);
  }

  return result;
}

unint64_t sub_1DA92D9EC()
{
  result = qword_1ECBD7878;
  if (!qword_1ECBD7878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD7870, &qword_1DA965850);
    sub_1DA92DAB0(&qword_1ECBD7880, &qword_1ECBD7808, MEMORY[0x1E69DF0F0], MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7878);
  }

  return result;
}

uint64_t sub_1DA92DAB0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD7888, &qword_1DA965858);
    sub_1DA92D59C(a2, MEMORY[0x1E69DF0D0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA92DB4C()
{
  result = qword_1ECBD7898;
  if (!qword_1ECBD7898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD7870, &qword_1DA965850);
    sub_1DA92DAB0(&qword_1ECBD78A0, &qword_1ECBD7830, MEMORY[0x1E69DF0D8], MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7898);
  }

  return result;
}

unint64_t sub_1DA92DC24()
{
  result = qword_1ECBD78A8;
  if (!qword_1ECBD78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD78A8);
  }

  return result;
}

unint64_t sub_1DA92DC7C()
{
  result = qword_1ECBD78B0;
  if (!qword_1ECBD78B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD78B0);
  }

  return result;
}

unint64_t sub_1DA92DCD4()
{
  result = qword_1ECBD78B8;
  if (!qword_1ECBD78B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD78B8);
  }

  return result;
}

void sub_1DA92DD40(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_1DA941264();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E1272460](v7, a3);
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

      v8 = *(a3 + 8 * v7 + 32);
    }

    v12 = v8;
    v9 = a1(&v12);

    if (v3 || (v9 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_1DA92DE6C()
{
  v0 = sub_1DA92DEC0();
  type metadata accessor for NotificationPipelineFactory();
  v1 = swift_allocObject();
  result = sub_1DA92E224(v0, 1, 0, 0);
  qword_1EE111B40 = v1;
  return result;
}

uint64_t sub_1DA92DEC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6480, &unk_1DA95D4A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DA95C300;
  v1 = [objc_opt_self() sharedInstance];
  v2 = type metadata accessor for OneTimeCodeActor();
  swift_allocObject();
  v3 = sub_1DA84CC70(v1);

  *(v0 + 56) = v2;
  *(v0 + 64) = &off_1F5633778;
  *(v0 + 32) = v3;
  v4 = type metadata accessor for SpotlightIndexer();
  v5 = swift_allocObject();
  if (qword_1EE1127C0 != -1)
  {
    v19 = v5;
    swift_once();
    v5 = v19;
  }

  v6 = qword_1EE11AEB0;
  v23[3] = v4;
  v23[4] = &off_1F5634F80;
  v23[0] = v5;
  type metadata accessor for NotificationInferenceClient();
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v23, v4);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v21 = v4;
  v22 = &off_1F5634F80;
  *&v20 = v12;

  swift_defaultActor_initialize();
  *(v7 + 152) = MEMORY[0x1E69E7CC8];
  *(v7 + 160) = sub_1DA9252E4();
  sub_1DA7B9FAC(&v20, v7 + 112);
  *(v6 + 16) = v7;

  __swift_destroy_boxed_opaque_existential_1(v23);
  if (qword_1EE111B28 != -1)
  {
    swift_once();
  }

  v13 = qword_1EE11AE98;
  v14 = type metadata accessor for IntelligenceActor();
  v15 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v15 + 112) = v7;
  *(v15 + 120) = 1;
  *(v15 + 128) = v13;
  *(v15 + 136) = &off_1F563AD30;
  *(v0 + 96) = v14;
  *(v0 + 104) = &off_1F5639350;
  *(v0 + 72) = v15;
  v16 = type metadata accessor for BehaviorResolutionActor();
  v17 = swift_allocObject();
  *(v0 + 136) = v16;
  *(v0 + 144) = &off_1F5639D60;
  *(v0 + 112) = v17;
  return v0;
}

uint64_t static NotificationPipelineFactory.shared.getter()
{
  if (qword_1EE111B38 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DA92E224(uint64_t a1, int a2, int a3, int a4)
{
  v42 = a1;
  v38 = a4;
  v39 = a3;
  v40 = a2;
  v37 = sub_1DA940FC4();
  v4 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v36[1] = sub_1DA7AC344();
  sub_1DA940824();
  *&v44 = MEMORY[0x1E69E7CC0];
  sub_1DA9349B8(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840, MEMORY[0x1E69E6328]);
  sub_1DA9411D4();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8090], v37);
  *(v41 + 16) = sub_1DA941004();
  if (v38)
  {
    v9 = type metadata accessor for NotificationPipelineStepDebugActor();
    v10 = swift_allocObject();
    v11 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1DA886628(0, v11[2] + 1, 1, v11);
    }

    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1DA886628((v12 > 1), v13 + 1, 1, v11);
    }

    v45 = v9;
    v46 = &off_1F5633728;
    *&v44 = v10;
    v11[2] = v13 + 1;
    sub_1DA7B9FAC(&v44, &v11[5 * v13 + 4]);
    v14 = v11[2];
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_13:

    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v11 = v42;
  v14 = *(v42 + 16);
  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_7:
  v47 = MEMORY[0x1E69E7CC0];

  sub_1DA82A778(0, v14, 0);
  v15 = v47;
  v42 = v11;
  v16 = (v11 + 4);
  do
  {
    sub_1DA7BABAC(v16, &v44);
    sub_1DA7BABAC(&v44, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5DE0, &unk_1DA9618D0);
    v17 = sub_1DA940A74();
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1(&v44);
    v47 = v15;
    v21 = *(v15 + 16);
    v20 = *(v15 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_1DA82A778((v20 > 1), v21 + 1, 1);
      v15 = v47;
    }

    *(v15 + 16) = v21 + 1;
    v22 = v15 + 16 * v21;
    *(v22 + 32) = v17;
    *(v22 + 40) = v19;
    v16 += 40;
    --v14;
  }

  while (v14);
  v11 = v42;
LABEL_14:
  *&v44 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  sub_1DA7AD11C(&qword_1EE114DF0, &qword_1ECBD6790, &qword_1DA9594C0, MEMORY[0x1E69E6310]);
  v23 = sub_1DA9409C4();
  v25 = v24;

  if (qword_1EE114E60 != -1)
  {
    swift_once();
  }

  v26 = sub_1DA9405A4();
  __swift_project_value_buffer(v26, qword_1EE11AFB8);

  v27 = sub_1DA940584();
  v28 = sub_1DA940EF4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v44 = v30;
    *v29 = 136315138;
    v31 = sub_1DA7AE6E8(v23, v25, &v44);

    *(v29 + 4) = v31;

    _os_log_impl(&dword_1DA7A9000, v27, v28, "Init notification pipeline factory with actors: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1E12739F0](v30, -1, -1);
    MEMORY[0x1E12739F0](v29, -1, -1);
  }

  else
  {
  }

  v33 = v39;
  v32 = v40;
  v34 = v41;
  *(v41 + 24) = v11;
  type metadata accessor for NotificationPipelineScheduler();
  swift_allocObject();
  *(v34 + 32) = sub_1DA92F394(v33 & 1);
  *(v34 + 40) = v32 & 1;
  return v34;
}

double sub_1DA92E828(uint64_t (*a1)(uint64_t a1), int a2, uint64_t a3, uint64_t a4)
{
  v75 = a3;
  v76 = a4;
  v71 = a2;
  v81 = a1;
  v80 = sub_1DA9407F4();
  v4 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v77 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA940854();
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA9401F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = type metadata accessor for NotificationPipelineAnalytics.Item(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NotificationPipelineRequestLogger(0);
  v70 = *(v15 - 8);
  v16 = *(v70 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v73 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - v18;
  if (UNCUsePipeline())
  {
    v66 = v11;
    v65 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v67 = v8;
    v20 = *(v10 + 16);
    (v20)(v19, v81, v9);
    v21 = *(v15 + 24);
    *&v19[v21] = CFAbsoluteTimeGetCurrent();
    v22 = v19;
    v23 = *(v15 + 20);
    v24 = v71;
    v19[v23] = v71;
    v25 = v72;
    v26 = *(v72 + 40) == 1;
    v68 = v4;
    v62 = v16;
    if (v26)
    {
      (v20)(v14, v81, v9);
      (*(v10 + 56))(v14, 0, 1, v9);
      v74 = sub_1DA82239C(v14, v24, *(v25 + 24), v22);
      sub_1DA934684(v14, type metadata accessor for NotificationPipelineAnalytics.Item);
    }

    else
    {
      v74 = 0;
    }

    v34 = v9;
    v35 = v20;
    v69 = v22;
    v36 = v65;
    v35();
    v37 = *(v25 + 24);
    type metadata accessor for NotificationPipeline(0);
    v38 = swift_allocObject();
    (v35)(v38 + OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_notification, v36, v34);
    v39 = v25;
    v40 = v74;

    sub_1DA940124();
    v41 = *(v10 + 8);
    v61 = v34;
    v41(v36, v34);
    v63 = v38;
    *(v38 + OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_orderedSteps) = v37;
    *(v38 + OBJC_IVAR____TtC21UserNotificationsCore20NotificationPipeline_analytics) = v40;
    v64 = *(v39 + 32);
    v65 = *(v39 + 16);
    v72 = *(v64 + 32);
    (v35)(v36, v81, v34);
    v81 = type metadata accessor for NotificationPipelineRequestLogger;
    sub_1DA7BACD0(v69, v73, type metadata accessor for NotificationPipelineRequestLogger);
    v42 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v43 = (v66 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (*(v70 + 80) + v43 + 9) & ~*(v70 + 80);
    v45 = (v62 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    (*(v10 + 32))(v48 + v42, v36, v61);
    v49 = v48 + v43;
    *v49 = v63;
    *(v49 + 8) = v71;
    sub_1DA7BAC68(v73, v48 + v44, v81);
    v50 = v75;
    *(v48 + v45) = v74;
    *(v48 + v46) = v64;
    v51 = v65;
    *(v48 + v47) = v65;
    v52 = (v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8));
    v53 = v76;
    *v52 = v50;
    v52[1] = v53;
    v87 = sub_1DA9343EC;
    v88 = v48;
    aBlock = MEMORY[0x1E69E9820];
    v84 = 1107296256;
    v85 = sub_1DA7AF1D0;
    v86 = &block_descriptor_24;
    v54 = _Block_copy(&aBlock);

    v55 = v51;

    v56 = v67;
    sub_1DA940824();
    v82 = MEMORY[0x1E69E7CC0];
    sub_1DA9349B8(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0, MEMORY[0x1E69E6328]);
    v57 = v77;
    v58 = v80;
    sub_1DA9411D4();
    MEMORY[0x1E12720D0](0, v56, v57, v54);
    _Block_release(v54);

    (*(v68 + 8))(v57, v58);
    (*(v78 + 8))(v56, v79);
    sub_1DA934684(v69, type metadata accessor for NotificationPipelineRequestLogger);
  }

  else
  {
    v74 = *(v72 + 16);
    (*(v10 + 16))(&v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v81, v9);
    v27 = v4;
    v28 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v29 = swift_allocObject();
    v30 = v76;
    *(v29 + 16) = v75;
    *(v29 + 24) = v30;
    (*(v10 + 32))(v29 + v28, &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    v87 = sub_1DA934388;
    v88 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v84 = 1107296256;
    v85 = sub_1DA7AF1D0;
    v86 = &block_descriptor_28;
    v31 = _Block_copy(&aBlock);

    sub_1DA940824();
    v82 = MEMORY[0x1E69E7CC0];
    sub_1DA9349B8(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0, MEMORY[0x1E69E6328]);
    v32 = v77;
    v33 = v80;
    sub_1DA9411D4();
    MEMORY[0x1E12720D0](0, v8, v32, v31);
    _Block_release(v31);
    (*(v27 + 8))(v32, v33);
    (*(v78 + 8))(v8, v79);
  }

  return result;
}

uint64_t sub_1DA92F1D8(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6470, &qword_1DA95F4C8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  v8 = sub_1DA9401F4();
  (*(*(v8 - 8) + 16))(v7, a3, v8);
  swift_storeEnumTagMultiPayload();
  a1(v7);
  return sub_1DA7BA120(v7, &unk_1ECBD6470, &qword_1DA95F4C8);
}

uint64_t NotificationPipelineFactory.deinit()
{

  return v0;
}

uint64_t NotificationPipelineFactory.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DA92F394(int a1)
{
  v13 = a1;
  v12 = sub_1DA940FC4();
  v2 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v8 = v7;
  v9 = sub_1DA7AC344();
  v11[1] = "Factory.resultQueue";
  v11[2] = v9;
  sub_1DA940824();
  v14 = v8;
  sub_1DA9349B8(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840, MEMORY[0x1E69E6328]);
  sub_1DA9411D4();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v12);
  *(v1 + 32) = sub_1DA941004();
  *(v1 + 40) = sub_1DA8496B8(MEMORY[0x1E69E7CC0]);
  *(v1 + 24) = v13;
  return v1;
}

double sub_1DA92F620(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v42 = a7;
  v43 = a8;
  v37[1] = a6;
  v38 = a2;
  v39 = a3;
  v40 = a5;
  v41 = a9;
  v12 = type metadata accessor for NotificationPipelineRequestLogger(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DA9401F4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 16);
  v19(v18, a1, v15);
  sub_1DA7BACD0(a4, v14, type metadata accessor for NotificationPipelineRequestLogger);
  v20 = *(a6 + 32);
  type metadata accessor for NotificationPipelineScheduler.Request(0);
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_createTime;
  v23 = v20;
  *(v21 + v22) = CFAbsoluteTimeGetCurrent();
  *(v21 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_state) = 0;
  v24 = OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_result;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  (*(*(v25 - 8) + 56))(v21 + v24, 1, 1, v25);
  v26 = v21 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_delegate;
  *(v21 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_deleted) = 0;
  *(v21 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_calledCompletion) = 0;
  v19((v21 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_initialNotification), v18, v15);
  *(v21 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_pipeline) = v38;
  *(v21 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_action) = v39;

  v27 = sub_1DA940014();
  v29 = v28;
  (*(v16 + 8))(v18, v15);
  v30 = (v21 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_channel);
  *v30 = v27;
  v30[1] = v29;
  sub_1DA7BAC68(v14, v21 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_logger, type metadata accessor for NotificationPipelineRequestLogger);
  *(v21 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_analytics) = v40;
  *(v26 + 8) = &off_1F563A5A0;
  swift_unknownObjectWeakAssign();
  *(v21 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_queue) = v23;
  v32 = v42;
  v31 = v43;
  *(v21 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_completionQueue) = v42;
  v33 = (v21 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_completion);
  v34 = v41;
  *v33 = v31;
  v33[1] = v34;

  v35 = v32;

  sub_1DA92F95C(v21);

  return result;
}

uint64_t sub_1DA92F95C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v77 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v67 - v7;
  v8 = type metadata accessor for NotificationPipelineRequestLogger(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v78 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DA93FEC4();
  v11 = *(v10 - 1);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v67 - v15;
  v17 = sub_1DA9408C4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v2 + 32);
  *v20 = v21;
  v22 = *(v18 + 104);
  v82 = *MEMORY[0x1E69E8020];
  v83 = v18 + 104;
  v88 = v22;
  v22(v20);
  v76 = v21;
  LOBYTE(v21) = sub_1DA9408F4();
  v24 = *(v18 + 8);
  v23 = v18 + 8;
  v80 = v23;
  v81 = v17;
  v87 = v24;
  v24(v20, v17);
  if ((v21 & 1) == 0)
  {
    goto LABEL_42;
  }

  if (*(a1 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_action) != 3)
  {
    goto LABEL_32;
  }

  sub_1DA940124();
  v17 = sub_1DA930714(v16, *(a1 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_channel), *(a1 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_channel + 8));
  (*(v11 + 8))(v16, v10);
  v72 = v2;
  v71 = v10;
  v70 = v11;
  v69 = a1;
  v68 = v14;
  if (v17 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DA941264())
  {
    v27 = v83;
    v2 = v81;
    v11 = v82;
    if (!i)
    {
      break;
    }

    if (i < 1)
    {
      __break(1u);
LABEL_46:
      sub_1DA940C04();
LABEL_35:
      sub_1DA940C14();
      v59 = v95;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = *(v2 + 40);
      *(v2 + 40) = 0x8000000000000000;
      sub_1DA90C928(v59, v27, v23, isUniquelyReferenced_nonNull_native);

      v61 = v93;
      goto LABEL_37;
    }

    v23 = 0;
    v86 = v17 & 0xC000000000000001;
    v74 = "ficationPipelineScheduler";
    *&v25 = 136446466;
    v73 = v25;
    v84 = i;
    v85 = v17;
    while (1)
    {
      if (v86)
      {
        v14 = MEMORY[0x1E1272460](v23, v17);
      }

      else
      {
        v14 = *(v17 + 8 * v23 + 32);
      }

      v28 = *&v14[OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_queue];
      *v20 = v28;
      v88(v20, v11, v2);
      v29 = v28;
      LOBYTE(v28) = sub_1DA9408F4();
      v87(v20, v2);
      if ((v28 & 1) == 0)
      {
        break;
      }

      if ((v14[OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_deleted] & 1) == 0)
      {
        v14[OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_deleted] = 1;
        v10 = OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_state;
        if (!v14[OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_state])
        {
          v30 = OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_logger;
          if (qword_1EE114E60 != -1)
          {
            swift_once();
          }

          v31 = sub_1DA9405A4();
          __swift_project_value_buffer(v31, qword_1EE11AFB8);
          v32 = &v14[v30];
          v33 = v78;
          sub_1DA7BACD0(v32, v78, type metadata accessor for NotificationPipelineRequestLogger);
          v34 = sub_1DA940584();
          v35 = sub_1DA940F34();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = v33;
            v37 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v94[0] = v75;
            *v37 = v73;
            v38 = sub_1DA7BA698();
            v40 = v39;
            sub_1DA934684(v36, type metadata accessor for NotificationPipelineRequestLogger);
            v41 = sub_1DA7AE6E8(v38, v40, v94);
            v2 = v81;

            *(v37 + 4) = v41;
            *(v37 + 12) = 2082;
            *(v37 + 14) = sub_1DA7AE6E8(0xD00000000000001DLL, v74 | 0x8000000000000000, v94);
            _os_log_impl(&dword_1DA7A9000, v34, v35, "[%{public}s]: %{public}s", v37, 0x16u);
            v42 = v75;
            swift_arrayDestroy();
            MEMORY[0x1E12739F0](v42, -1, -1);
            MEMORY[0x1E12739F0](v37, -1, -1);
          }

          else
          {

            sub_1DA934684(v33, type metadata accessor for NotificationPipelineRequestLogger);
          }

          v11 = v82;
          *(v10 + v14) = 2;
          v43 = *&v14[OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_analytics];
          if (v43)
          {
            v44 = sub_1DA940D34();
            v45 = *(v44 - 8);
            v46 = v79;
            (*(v45 + 56))(v79, 1, 1, v44);
            v47 = swift_allocObject();
            *(v47 + 16) = 0;
            *(v47 + 24) = 0;
            *(v47 + 32) = v43;
            *(v47 + 40) = 2;
            v48 = v77;
            sub_1DA822F48(v46, v77, &qword_1ECBD4FA0, &unk_1DA958730);
            LODWORD(v46) = (*(v45 + 48))(v48, 1, v44);

            if (v46 == 1)
            {
              sub_1DA7BA120(v48, &qword_1ECBD4FA0, &unk_1DA958730);
            }

            else
            {
              sub_1DA940D24();
              (*(v45 + 8))(v48, v44);
            }

            v10 = &unk_1DA958730;
            v49 = *(v47 + 16);
            swift_unknownObjectRetain();

            v2 = v81;
            if (v49)
            {
              swift_getObjectType();
              v50 = sub_1DA940C34();
              v52 = v51;
              swift_unknownObjectRelease();
            }

            else
            {
              v50 = 0;
              v52 = 0;
            }

            sub_1DA7BA120(v79, &qword_1ECBD4FA0, &unk_1DA958730);
            v53 = swift_allocObject();
            *(v53 + 16) = &unk_1DA965C48;
            *(v53 + 24) = v47;
            if (v52 | v50)
            {
              v89 = 0;
              v90 = 0;
              v91 = v50;
              v92 = v52;
            }

            v11 = v82;
            swift_task_create();
          }
        }
      }

      ++v23;
      sub_1DA9308E0();

      v17 = v85;
      if (v84 == v23)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

LABEL_31:

  a1 = v69;
  sub_1DA9308E0();
  v2 = v72;
  v10 = v71;
  v11 = v70;
  v14 = v68;
LABEL_32:
  v27 = *(a1 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_channel);
  v23 = *(a1 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_channel + 8);
  swift_beginAccess();
  v54 = *(v2 + 40);
  v55 = *(v54 + 16);

  if (v55)
  {
    v56 = sub_1DA85A4B4(v27, v23);
    if (v57)
    {
      v95 = *(*(v54 + 56) + 8 * v56);
      swift_endAccess();

      MEMORY[0x1E1271CA0](v58);
      if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_46;
      }

      goto LABEL_35;
    }
  }

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5010, &qword_1DA9652C0);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1DA9593A0;
  *(v62 + 32) = a1;
  swift_beginAccess();

  v63 = swift_isUniquelyReferenced_nonNull_native();
  v95 = *(v2 + 40);
  *(v2 + 40) = 0x8000000000000000;
  sub_1DA90C928(v62, v27, v23, v63);

  v61 = v95;
LABEL_37:
  *(v2 + 40) = v61;
  swift_endAccess();
  sub_1DA940124();
  *v20 = v76;
  v17 = v81;
  v88(v20, v82, v81);
  v64 = sub_1DA9408F4();
  v87(v20, v17);
  if ((v64 & 1) == 0)
  {
    goto LABEL_43;
  }

  sub_1DA9317D0(v27, v23);
  sub_1DA931BB8(v14, v27, v23);
  sub_1DA93230C(v14, v27, v23);
  if (v65)
  {
    sub_1DA932534();
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1DA930498(uint64_t a1)
{
  v3 = sub_1DA93FEC4();
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA9408C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = v1;
  v10 = *(v1 + 32);
  *v9 = v10;
  v11 = *MEMORY[0x1E69E8020];
  v25 = *(v7 + 104);
  v25(v9, v11, v6);
  v24 = v10;
  LOBYTE(v10) = sub_1DA9408F4();
  v12 = *(v7 + 8);
  result = v12(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v21 = v3;
  sub_1DA940124();
  v14 = a1 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_channel;
  v15 = *(a1 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_channel);
  v16 = *(v14 + 8);
  v17 = v25;
  *v9 = v24;
  v17(v9, v11, v6);
  v18 = sub_1DA9408F4();
  result = v12(v9, v6);
  if ((v18 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1DA9317D0(v15, v16);
  sub_1DA931BB8(v5, v15, v16);
  sub_1DA93230C(v5, v15, v16);
  if (v19)
  {
    sub_1DA932534();
  }

  return (*(v23 + 8))(v5, v21);
}

void *sub_1DA930714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DA9408C4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 32);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v12 = v11;
  LOBYTE(v11) = sub_1DA9408F4();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    swift_beginAccess();
    v14 = *(v3 + 40);
    if (*(v14 + 16) && (v15 = sub_1DA85A4B4(a2, a3), (v16 & 1) != 0))
    {
      v17 = *(*(v14 + 56) + 8 * v15);
      v18 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v18);
      *(&v19 - 2) = a1;

      return sub_1DA8BA7A8(sub_1DA934A00, &v19 - 4, v17);
    }

    else
    {
      swift_endAccess();
      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DA9308E0()
{
  v1 = type metadata accessor for StepFailure(0);
  v77 = *(v1 - 8);
  v2 = *(v77 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v78 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v83 = (&v74 - v4);
  v79 = sub_1DA9401F4();
  v82 = *(v79 - 8);
  v5 = *(v82 + 64);
  v6 = MEMORY[0x1EEE9AC00](v79);
  v76 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD78C8, &unk_1DA965C38);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v74 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  v84 = *(v11 - 8);
  v85 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v80 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v74 - v14;
  v15 = sub_1DA9407F4();
  v91 = *(v15 - 8);
  v92 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v89 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DA940854();
  v93 = *(v17 - 8);
  v94 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NotificationPipelineRequestLogger(0);
  v87 = *(v19 - 8);
  v20 = *(v87 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v88 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v74 - v22;
  v24 = sub_1DA9408C4();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_queue);
  *v27 = v28;
  (*(v25 + 104))(v27, *MEMORY[0x1E69E8020], v24);
  v29 = v28;
  LOBYTE(v28) = sub_1DA9408F4();
  (*(v25 + 8))(v27, v24);
  if ((v28 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if ((*(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_calledCompletion) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_calledCompletion) = 1;
    sub_1DA7BACD0(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_logger, v23, type metadata accessor for NotificationPipelineRequestLogger);
    if (*(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_action) == 3)
    {
      v30 = v88;
      sub_1DA7BACD0(v23, v88, type metadata accessor for NotificationPipelineRequestLogger);
      v31 = (*(v87 + 80) + 16) & ~*(v87 + 80);
      v32 = swift_allocObject();
      sub_1DA7BAC68(v30, v32 + v31, type metadata accessor for NotificationPipelineRequestLogger);
      *(v32 + ((v20 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = v0;
      v100 = sub_1DA934900;
      v101 = v32;
      aBlock = MEMORY[0x1E69E9820];
      v97 = 1107296256;
      v33 = &block_descriptor_56;
    }

    else
    {
      if (*(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_deleted) != 1)
      {
        v42 = OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_result;
        swift_beginAccess();
        sub_1DA822F48(v0 + v42, v10, &qword_1ECBD78C8, &unk_1DA965C38);
        if ((*(v84 + 48))(v10, 1, v85) == 1)
        {
          sub_1DA7BA120(v10, &qword_1ECBD78C8, &unk_1DA965C38);
          sub_1DA84AB4C(0xD00000000000003ALL, 0x80000001DA9573C0);
          sub_1DA934684(v23, type metadata accessor for NotificationPipelineRequestLogger);
          return;
        }

        v43 = v86;
        sub_1DA9345E8(v10, v86);
        v44 = v43;
        v45 = v80;
        sub_1DA822F48(v44, v80, &qword_1ECBD4E98, &qword_1DA95D790);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v75 = v23;
        if (EnumCaseMultiPayload == 1)
        {
          v47 = v83;
          sub_1DA7BAC68(v45, v83, type metadata accessor for StepFailure);
          v85 = *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_completionQueue);
          v48 = v88;
          sub_1DA7BACD0(v23, v88, type metadata accessor for NotificationPipelineRequestLogger);
          v49 = v78;
          sub_1DA7BACD0(v47, v78, type metadata accessor for StepFailure);
          v50 = (*(v87 + 80) + 16) & ~*(v87 + 80);
          v51 = (v20 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
          v52 = (*(v77 + 80) + v51 + 8) & ~*(v77 + 80);
          v53 = swift_allocObject();
          sub_1DA7BAC68(v48, v53 + v50, type metadata accessor for NotificationPipelineRequestLogger);
          *(v53 + v51) = v0;
          sub_1DA7BAC68(v49, v53 + v52, type metadata accessor for StepFailure);
          v100 = sub_1DA934658;
          v101 = v53;
          aBlock = MEMORY[0x1E69E9820];
          v97 = 1107296256;
          v98 = sub_1DA7AF1D0;
          v99 = &block_descriptor_38;
          v54 = _Block_copy(&aBlock);

          v55 = v90;
          sub_1DA940824();
          v95 = MEMORY[0x1E69E7CC0];
          sub_1DA9349B8(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
          sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0, MEMORY[0x1E69E6328]);
          v56 = v89;
          v57 = v92;
          sub_1DA9411D4();
          MEMORY[0x1E12720D0](0, v55, v56, v54);
          _Block_release(v54);
          (*(v91 + 8))(v56, v57);
          (*(v93 + 8))(v55, v94);
          sub_1DA934684(v83, type metadata accessor for StepFailure);
        }

        else
        {
          v58 = v82;
          v84 = *(v82 + 32);
          v59 = v81;
          v60 = v79;
          (v84)(v81, v45, v79);
          v85 = *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_completionQueue);
          v83 = type metadata accessor for NotificationPipelineRequestLogger;
          v61 = v23;
          v62 = v88;
          sub_1DA7BACD0(v61, v88, type metadata accessor for NotificationPipelineRequestLogger);
          v63 = v76;
          (*(v58 + 16))(v76, v59, v60);
          v64 = (*(v87 + 80) + 16) & ~*(v87 + 80);
          v65 = (v20 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
          v66 = (*(v58 + 80) + v65 + 8) & ~*(v58 + 80);
          v67 = swift_allocObject();
          sub_1DA7BAC68(v62, v67 + v64, v83);
          *(v67 + v65) = v0;
          v68 = v63;
          v69 = v60;
          (v84)(v67 + v66, v68, v60);
          v100 = sub_1DA9346E4;
          v101 = v67;
          aBlock = MEMORY[0x1E69E9820];
          v97 = 1107296256;
          v98 = sub_1DA7AF1D0;
          v99 = &block_descriptor_44;
          v70 = _Block_copy(&aBlock);

          v71 = v90;
          sub_1DA940824();
          v95 = MEMORY[0x1E69E7CC0];
          sub_1DA9349B8(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
          sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0, MEMORY[0x1E69E6328]);
          v72 = v89;
          v73 = v92;
          sub_1DA9411D4();
          MEMORY[0x1E12720D0](0, v71, v72, v70);
          _Block_release(v70);
          (*(v91 + 8))(v72, v73);
          (*(v93 + 8))(v71, v94);
          (*(v82 + 8))(v81, v69);
        }

        sub_1DA7BA120(v86, &qword_1ECBD4E98, &qword_1DA95D790);
        v41 = v75;
        goto LABEL_8;
      }

      v34 = v88;
      sub_1DA7BACD0(v23, v88, type metadata accessor for NotificationPipelineRequestLogger);
      v35 = (*(v87 + 80) + 16) & ~*(v87 + 80);
      v36 = swift_allocObject();
      sub_1DA7BAC68(v34, v36 + v35, type metadata accessor for NotificationPipelineRequestLogger);
      *(v36 + ((v20 + v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = v0;
      v100 = sub_1DA934808;
      v101 = v36;
      aBlock = MEMORY[0x1E69E9820];
      v97 = 1107296256;
      v33 = &block_descriptor_50;
    }

    v98 = sub_1DA7AF1D0;
    v99 = v33;
    v37 = _Block_copy(&aBlock);

    v38 = v90;
    sub_1DA940824();
    v102 = MEMORY[0x1E69E7CC0];
    sub_1DA9349B8(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0, MEMORY[0x1E69E6328]);
    v39 = v89;
    v40 = v92;
    sub_1DA9411D4();
    MEMORY[0x1E12720D0](0, v38, v39, v37);
    _Block_release(v37);
    (*(v91 + 8))(v39, v40);
    (*(v93 + 8))(v38, v94);
    v41 = v23;
LABEL_8:
    sub_1DA934684(v41, type metadata accessor for NotificationPipelineRequestLogger);
  }
}

void *sub_1DA9317D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DA93FEC4();
  v7 = *(v6 - 8);
  v28 = v6;
  v29 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v30 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD78C8, &unk_1DA965C38);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v27 - v10;
  v12 = sub_1DA9408C4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v3 + 32);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v17 = v16;
  LOBYTE(v16) = sub_1DA9408F4();
  result = (*(v13 + 8))(v15, v12);
  if (v16)
  {
    result = sub_1DA93293C(a1, a2);
    if (result)
    {
      v19 = result;
      v27[1] = v29 + 32;
      do
      {
        if (*(v3 + 24) == 1)
        {
          v20 = OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_result;
          swift_beginAccess();
          sub_1DA822F48(v19 + v20, v11, &qword_1ECBD78C8, &unk_1DA965C38);
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
          if ((*(*(v21 - 8) + 48))(v11, 1, v21) == 1)
          {
            sub_1DA7BA120(v11, &qword_1ECBD78C8, &unk_1DA965C38);
          }

          else
          {
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            sub_1DA7BA120(v11, &qword_1ECBD4E98, &qword_1DA95D790);
            if (EnumCaseMultiPayload != 1)
            {
              sub_1DA940124();
              v23 = *(v3 + 16);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v3 + 16) = v23;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v23 = sub_1DA885D20(0, v23[2] + 1, 1, v23);
                *(v3 + 16) = v23;
              }

              v26 = v23[2];
              v25 = v23[3];
              if (v26 >= v25 >> 1)
              {
                v23 = sub_1DA885D20((v25 > 1), v26 + 1, 1, v23);
              }

              v23[2] = v26 + 1;
              (*(v29 + 32))(v23 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26, v30, v28);
              *(v3 + 16) = v23;
            }
          }
        }

        sub_1DA9308E0();

        result = sub_1DA93293C(a1, a2);
        v19 = result;
      }

      while (result);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DA931BB8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  if (*(*(v3 + 40) + 16) && (sub_1DA85A4B4(a2, a3), (v7 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    v8 = swift_endAccess();
  }

  MEMORY[0x1EEE9AC00](v8);
  v48[2] = a1;
  v10 = sub_1DA8BA7A8(sub_1DA934D20, v48, v9);
  v11 = v10 >> 62;
  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 >= 1)
    {
      goto LABEL_7;
    }

LABEL_33:

    if (qword_1EE114E60 == -1)
    {
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  v43 = v10;
  v12 = sub_1DA941264();
  v10 = v43;
  if (v12 < 1)
  {
    goto LABEL_33;
  }

LABEL_7:
  v13 = v10;
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_1DA941364();

  v52 = 91;
  v53 = 0xE100000000000000;
  MEMORY[0x1E1271BD0](a2, a3);
  MEMORY[0x1E1271BD0](8285, 0xE200000000000000);
  v51 = v12;
  v14 = sub_1DA941614();
  MEMORY[0x1E1271BD0](v14);

  MEMORY[0x1E1271BD0](0xD000000000000016, 0x80000001DA9575A0);
  v54 = v52;
  v55 = v53;
  if (v11)
  {
    v36 = sub_1DA941264();
    v15 = v13;
    v16 = v36;
    if (v36)
    {
      goto LABEL_9;
    }

LABEL_25:

    MEMORY[0x1E1271BD0](23818, 0xE200000000000000);
    goto LABEL_26;
  }

  v15 = v13;
  v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_9:
  if (v16 >= 1)
  {
    v17 = 0;
    v50 = v15 & 0xC000000000000001;
    v18 = 0.0;
    v49 = xmmword_1DA9596E0;
    v19 = v15;
    do
    {
      if (v50)
      {
        v27 = MEMORY[0x1E1272460](v17);
      }

      else
      {
        v27 = *(v15 + 8 * v17 + 32);
      }

      sub_1DA9400A4();
      v28 = sub_1DA940A04();
      v29 = [v28 un_logDigest];

      if (v29)
      {
        v21 = sub_1DA940A14();
        v20 = v30;
      }

      else
      {

        v20 = 0xE400000000000000;
        v21 = 1061109567;
      }

      ++v17;
      Current = CFAbsoluteTimeGetCurrent();
      v23 = *(v27 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_createTime);
      v24 = Current - v23;
      if (v18 < Current - v23)
      {
        v18 = Current - v23;
      }

      v52 = 0;
      v53 = 0xE000000000000000;
      sub_1DA941364();
      MEMORY[0x1E1271BD0](0x3D64695B090ALL, 0xE600000000000000);
      MEMORY[0x1E1271BD0](v21, v20);

      MEMORY[0x1E1271BD0](0x6E6F69746361202CLL, 0xE90000000000003DLL);
      LOBYTE(v51) = *(v27 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_action);
      sub_1DA941494();
      MEMORY[0x1E1271BD0](0x3D6574617473202CLL, 0xE800000000000000);
      LOBYTE(v51) = *(v27 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_state);
      sub_1DA941494();
      MEMORY[0x1E1271BD0](0x657370616C65202CLL, 0xEE003D656D695464);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD55D8, qword_1DA95B2F0);
      v25 = swift_allocObject();
      *(v25 + 16) = v49;
      *(v25 + 56) = MEMORY[0x1E69E63B0];
      *(v25 + 64) = MEMORY[0x1E69E6438];
      *(v25 + 32) = v24;
      v26 = sub_1DA940A44();
      MEMORY[0x1E1271BD0](v26);

      MEMORY[0x1E1271BD0](23923, 0xE200000000000000);
      MEMORY[0x1E1271BD0](v52, v53);

      v15 = v19;
    }

    while (v16 != v17);

    MEMORY[0x1E1271BD0](23818, 0xE200000000000000);
    if (v18 >= 12.0)
    {
      if (qword_1EE114E60 != -1)
      {
        swift_once();
      }

      v31 = sub_1DA9405A4();
      __swift_project_value_buffer(v31, qword_1EE11AFB8);
      v33 = v54;
      v32 = v55;

      v34 = sub_1DA940584();
      v35 = sub_1DA940F14();
LABEL_29:
      v38 = v35;

      if (os_log_type_enabled(v34, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v52 = v40;
        *v39 = 136315138;
        v41 = sub_1DA7AE6E8(v33, v32, &v52);

        *(v39 + 4) = v41;
        _os_log_impl(&dword_1DA7A9000, v34, v38, "%s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v40);
        MEMORY[0x1E12739F0](v40, -1, -1);
        v42 = v39;
LABEL_36:
        MEMORY[0x1E12739F0](v42, -1, -1);
        goto LABEL_37;
      }

      goto LABEL_37;
    }

LABEL_26:
    if (qword_1EE114E60 != -1)
    {
      swift_once();
    }

    v37 = sub_1DA9405A4();
    __swift_project_value_buffer(v37, qword_1EE11AFB8);
    v33 = v54;
    v32 = v55;

    v34 = sub_1DA940584();
    v35 = sub_1DA940F34();
    goto LABEL_29;
  }

  __break(1u);
LABEL_39:
  swift_once();
LABEL_34:
  v44 = sub_1DA9405A4();
  __swift_project_value_buffer(v44, qword_1EE11AFB8);

  v34 = sub_1DA940584();
  v45 = sub_1DA940F34();

  if (os_log_type_enabled(v34, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v54 = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_1DA7AE6E8(a2, a3, &v54);
    _os_log_impl(&dword_1DA7A9000, v34, v45, "[%s]] No scheduled requests", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x1E12739F0](v47, -1, -1);
    v42 = v46;
    goto LABEL_36;
  }

LABEL_37:
}

void sub_1DA93230C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DA9408C4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 32);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v12 = v11;
  LOBYTE(v11) = sub_1DA9408F4();
  v13 = (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  swift_beginAccess();
  v14 = *(v3 + 40);
  if (!*(v14 + 16) || (v15 = sub_1DA85A4B4(a2, a3), (v16 & 1) == 0))
  {
    swift_endAccess();
    return;
  }

  v3 = *(*(v14 + 56) + 8 * v15);
  v17 = swift_endAccess();
  MEMORY[0x1EEE9AC00](v17);
  *(&v19 - 2) = a1;

  sub_1DA92DD40(sub_1DA934CE8, (&v19 - 4), v3);
  if (v18)
  {
LABEL_5:

    return;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_12:
    MEMORY[0x1E1272460](v13, v3);
    goto LABEL_5;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_5;
  }

  __break(1u);
}

void sub_1DA932534()
{
  v1 = type metadata accessor for NotificationPipelineRequestLogger(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1DA9408C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v10 = v9;
  LOBYTE(v9) = sub_1DA9408F4();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    if (!*(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_state))
    {
      *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_state) = 1;
      v11 = *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_analytics);
      v12 = OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_logger;
      sub_1DA7BAA9C(0xD000000000000011, 0x80000001DA957500);
      v19 = *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_pipeline);
      v18 = *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_action);
      v13 = swift_allocObject();
      swift_weakInit();
      sub_1DA7BACD0(v0 + v12, &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NotificationPipelineRequestLogger);
      v14 = (*(v2 + 80) + 16) & ~*(v2 + 80);
      v15 = (v3 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
      v16 = swift_allocObject();
      sub_1DA7BAC68(v4, v16 + v14, type metadata accessor for NotificationPipelineRequestLogger);
      *(v16 + v15) = v13;
      *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v11;

      sub_1DA7B98DC(v18, v0 + v12, 0, sub_1DA934A20, v16);
    }
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_1DA93281C(uint64_t *a1, uint64_t a2)
{
  v3 = sub_1DA93FEC4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_1DA940124();
  LOBYTE(a1) = sub_1DA93FEA4();
  (*(v4 + 8))(v6, v3);
  return (a1 & 1) != 0 && *(v7 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_state) != 2;
}

void *sub_1DA93293C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DA9408C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + 32);
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v11 = v10;
  v12 = sub_1DA9408F4();
  v14 = *(v7 + 8);
  v13 = v7 + 8;
  v14(v9, v6);
  if (v12)
  {
    swift_beginAccess();
    v15 = *(v3 + 40);
    if (!*(v15 + 16))
    {
      goto LABEL_13;
    }

    v16 = sub_1DA85A4B4(a1, a2);
    if ((v17 & 1) == 0)
    {
      goto LABEL_13;
    }

    v6 = *(*(v15 + 56) + 8 * v16);
    v24 = v6;
    swift_endAccess();
    v13 = v6 >> 62;
    if (!(v6 >> 62))
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }

LABEL_6:
      if ((v6 & 0xC000000000000001) != 0)
      {
        swift_bridgeObjectRetain_n();
        v9 = MEMORY[0x1E1272460](0, v6);
      }

      else
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_34;
        }

        v19 = *(v6 + 32);

        v9 = v19;
      }

      if (*(v9 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_state) != 2)
      {

        return 0;
      }

      if (!v13)
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_13:
          swift_endAccess();
          return 0;
        }

LABEL_19:
        if ((v6 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E1272460](0, v6);
          swift_unknownObjectRelease();
          v20 = v6 & 0xFFFFFFFFFFFFFF8;
          if (!v13)
          {
LABEL_21:
            result = *(v20 + 16);
            goto LABEL_25;
          }
        }

        else
        {
          v20 = v6 & 0xFFFFFFFFFFFFFF8;
          if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_40:
            __break(1u);
            return result;
          }

          if (!v13)
          {
            goto LABEL_21;
          }
        }

        result = sub_1DA941264();
LABEL_25:
        if (result)
        {
          sub_1DA88534C(0, 1);
          v12 = v24;
          if (!(v24 >> 62))
          {
            if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_28:
              swift_beginAccess();

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v23 = *(v3 + 40);
              *(v3 + 40) = 0x8000000000000000;
              sub_1DA90C928(v12, a1, a2, isUniquelyReferenced_nonNull_native);

              *(v3 + 40) = v23;
LABEL_36:
              swift_endAccess();
              return v9;
            }

LABEL_35:

            swift_beginAccess();

            sub_1DA8F1618(0, a1, a2);
            goto LABEL_36;
          }

LABEL_34:
          if (sub_1DA941264())
          {
            goto LABEL_28;
          }

          goto LABEL_35;
        }

        goto LABEL_39;
      }

      result = sub_1DA941264();
      if (result)
      {
        result = sub_1DA941264();
        if (result)
        {
          goto LABEL_19;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1DA941264();
  if (result)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1DA932CC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DA93FEC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA940124();
  v6 = sub_1DA93FEA4();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_1DA932DBC()
{
  sub_1DA941764();
  sub_1DA940AB4();
  return sub_1DA941794();
}

uint64_t sub_1DA932E10(uint64_t a1)
{
  sub_1DA941764();
  sub_1DA940AB4();
  return sub_1DA941794();
}

double sub_1DA932E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v35 - v7;
  v9 = sub_1DA9407F4();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v39 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1DA940854();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NotificationPipelineRequestLogger(0);
  v36 = *(v13 - 8);
  v14 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = v35 - v18;
  sub_1DA7BAA9C(0xD000000000000012, 0x80000001DA957520);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = *(Strong + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_queue);
    v35[0] = v12;
    v35[1] = v21;
    v22 = Strong;
    sub_1DA822F48(v37, v19, &qword_1ECBD4E98, &qword_1DA95D790);
    sub_1DA7BACD0(a2, v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NotificationPipelineRequestLogger);
    v23 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v24 = (v17 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = a4;
    v26 = (*(v36 + 80) + v24 + 8) & ~*(v36 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v22;
    sub_1DA9345E8(v19, v27 + v23);
    *(v27 + v24) = v25;
    sub_1DA7BAC68(v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for NotificationPipelineRequestLogger);
    aBlock[4] = sub_1DA934B8C;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7AF1D0;
    aBlock[3] = &block_descriptor_73;
    v28 = _Block_copy(aBlock);

    v29 = v35[0];
    sub_1DA940824();
    v43 = MEMORY[0x1E69E7CC0];
    sub_1DA9349B8(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0, MEMORY[0x1E69E6328]);
    v30 = v39;
    v31 = v42;
    sub_1DA9411D4();
    MEMORY[0x1E12720D0](0, v29, v30, v28);
    _Block_release(v28);
    (*(v41 + 8))(v30, v31);
    (*(v38 + 8))(v29, v40);
  }

  else
  {
    sub_1DA84AB64(0xD000000000000026, 0x80000001DA957540);
    if (!a4)
    {
      return result;
    }

    v33 = sub_1DA940D34();
    (*(*(v33 - 8) + 56))(v8, 1, 1, v33);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *(v34 + 32) = a4;
    *(v34 + 40) = 1;

    sub_1DA8DB00C(0, 0, v8, &unk_1DA965C70, v34);
  }

  return result;
}

uint64_t sub_1DA933434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD78C8, &unk_1DA965C38);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25[-v16];
  v18 = OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_state;
  if (*(a1 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_state) == 1)
  {
    sub_1DA822F48(a2, v17, &qword_1ECBD4E98, &qword_1DA95D790);
    if (a3)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v26 = EnumCaseMultiPayload == 1;
      v20 = &unk_1DA965C80;
      if (EnumCaseMultiPayload == 1)
      {
        v20 = &unk_1DA965C78;
      }

      v27 = v20;
      v28 = a4;
      v21 = sub_1DA940D34();
      (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
      v22 = swift_allocObject();
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      *(v22 + 32) = a3;
      *(v22 + 40) = v26;

      sub_1DA8DB00C(0, 0, v13, v27, v22);
    }

    sub_1DA7BA120(v17, &qword_1ECBD4E98, &qword_1DA95D790);
    *(a1 + v18) = 2;
    sub_1DA822F48(a2, v10, &qword_1ECBD4E98, &qword_1DA95D790);
    (*(v15 + 56))(v10, 0, 1, v14);
    v23 = OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_result;
    swift_beginAccess();
    sub_1DA934C78(v10, a1 + v23);
    swift_endAccess();
  }

  sub_1DA7BAA9C(0xD000000000000024, 0x80000001DA957570);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1DA930498(a1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DA933788(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6470, &qword_1DA95F4C8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - v4;
  sub_1DA7BAA9C(0xD000000000000038, 0x80000001DA957400);
  v6 = *(a2 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_completion);
  v7 = OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_initialNotification;
  v8 = sub_1DA9401F4();
  (*(*(v8 - 8) + 16))(v5, a2 + v7, v8);
  swift_storeEnumTagMultiPayload();
  v6(v5);
  return sub_1DA7BA120(v5, &unk_1ECBD6470, &qword_1DA95F4C8);
}

uint64_t sub_1DA9338C0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6470, &qword_1DA95F4C8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v9 - v4);
  sub_1DA7BAA9C(0xD00000000000003ALL, 0x80000001DA957440);
  v6 = *(a2 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_completion);
  sub_1DA940C64();
  sub_1DA9349B8(&qword_1EE110CF8, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
  v7 = swift_allocError();
  sub_1DA940954();
  *v5 = v7;
  swift_storeEnumTagMultiPayload();
  v6(v5);
  return sub_1DA7BA120(v5, &unk_1ECBD6470, &qword_1DA95F4C8);
}

uint64_t sub_1DA933A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6470, &qword_1DA95F4C8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  sub_1DA7BAA9C(0xD000000000000031, 0x80000001DA957480);
  v8 = *(a2 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_completion);
  v9 = sub_1DA9401F4();
  (*(*(v9 - 8) + 16))(v7, a3, v9);
  swift_storeEnumTagMultiPayload();
  v8(v7);
  return sub_1DA7BA120(v7, &unk_1ECBD6470, &qword_1DA95F4C8);
}

uint64_t sub_1DA933B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6470, &qword_1DA95F4C8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v12 - v6);
  sub_1DA7BAA9C(0xD000000000000031, 0x80000001DA9574C0);
  v8 = *(a2 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_completion);
  type metadata accessor for StepFailure(0);
  sub_1DA9349B8(&unk_1ECBD78D0, type metadata accessor for StepFailure, &unk_1DA966018);
  v9 = swift_allocError();
  sub_1DA7BACD0(a3, v10, type metadata accessor for StepFailure);
  *v7 = v9;
  swift_storeEnumTagMultiPayload();
  v8(v7);
  return sub_1DA7BA120(v7, &unk_1ECBD6470, &qword_1DA95F4C8);
}

uint64_t sub_1DA933CBC()
{
  v1 = sub_1DA93FEC4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_1DA941364();
  MEMORY[0x1E1271BD0](0xD00000000000003ELL, 0x80000001DA9572D0);
  sub_1DA940124();
  sub_1DA9349B8(&qword_1EE110EE0, MEMORY[0x1E69DF0D0], MEMORY[0x1E69DF0F8]);
  v5 = sub_1DA941614();
  MEMORY[0x1E1271BD0](v5);

  (*(v2 + 8))(v4, v1);
  MEMORY[0x1E1271BD0](0x6E6F69746361202CLL, 0xE90000000000003DLL);
  v7[15] = *(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_action);
  sub_1DA941494();
  MEMORY[0x1E1271BD0](62, 0xE100000000000000);
  return v8;
}

uint64_t sub_1DA933E88()
{
  v1 = OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_initialNotification;
  v2 = sub_1DA9401F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1DA934684(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_logger, type metadata accessor for NotificationPipelineRequestLogger);
  sub_1DA7BA120(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_result, &qword_1ECBD78C8, &unk_1DA965C38);

  sub_1DA7C5714(v0 + OBJC_IVAR____TtCC21UserNotificationsCoreP33_44CB2ECED9549B956A840C1DBFE3774129NotificationPipelineScheduler7Request_delegate);
  return v0;
}

uint64_t sub_1DA933FA4()
{
  sub_1DA933E88();

  return swift_deallocClassInstance();
}

uint64_t sub_1DA93401C()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NotificationPipelineScheduler.Request(uint64_t a1)
{
  result = qword_1EE1150B0;
  if (!qword_1EE1150B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA9340DC(uint64_t a1)
{
  sub_1DA9401F4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for NotificationPipelineRequestLogger(319);
    if (v2 <= 0x3F)
    {
      sub_1DA934254(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1DA934254(uint64_t a1)
{
  if (!qword_1EE114D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD4E98, &qword_1DA95D790);
    v1 = sub_1DA941134();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE114D68);
    }
  }
}

unint64_t sub_1DA9342DC()
{
  result = qword_1EE115138[0];
  if (!qword_1EE115138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE115138);
  }

  return result;
}

unint64_t sub_1DA934334()
{
  result = qword_1ECBD78C0;
  if (!qword_1ECBD78C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD78C0);
  }

  return result;
}

uint64_t sub_1DA934388()
{
  v1 = *(sub_1DA9401F4() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1DA92F1D8(v2, v3, v4);
}

double sub_1DA9343EC()
{
  v1 = *(sub_1DA9401F4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for NotificationPipelineRequestLogger(0) - 8);
  v5 = (v3 + *(v4 + 80) + 9) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1DA92F620(v0 + v2, *(v0 + v3), *(v0 + v3 + 8), v0 + v5, *(v0 + v6), *(v0 + v7), *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1DA934524(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DA7B7660;

  return sub_1DA81F0DC(a1, v4, v5, v6, v7);
}

uint64_t sub_1DA9345E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA934684(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DA934710(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for NotificationPipelineRequestLogger(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(a1(0) - 8);
  v8 = *(v2 + v6);
  v9 = v2 + ((v6 + *(v7 + 80) + 8) & ~*(v7 + 80));

  return a2(v2 + v5, v8, v9);
}

uint64_t objectdestroy_46Tm()
{
  v1 = *(type metadata accessor for NotificationPipelineRequestLogger(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1DA9401F4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1DA934918(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for NotificationPipelineRequestLogger(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_1DA9349B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1DA934A20(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationPipelineRequestLogger(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DA932E58(a1, v1 + v4, v6, v7);
}

uint64_t sub_1DA934AC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DA7B7470;

  return sub_1DA81F0DC(a1, v4, v5, v6, v7);
}

uint64_t sub_1DA934B8C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for NotificationPipelineRequestLogger(0) - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + v3);
  v7 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return sub_1DA933434(v5, v0 + v2, v6, v7);
}

uint64_t sub_1DA934C78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD78C8, &unk_1DA965C38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1DA934D7C()
{
  v12 = sub_1DA940FC4();
  v0 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v11 = OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue;
  v10[1] = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  sub_1DA940824();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v12);
  v5 = sub_1DA941004();
  v6 = v13;
  *&v13[v11] = v5;
  *&v6[OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue_connection] = 0;
  v7 = v6;
  v8 = type metadata accessor for NotificationSystemServiceClient();
  v14.receiver = v7;
  v14.super_class = v8;
  return objc_msgSendSuper2(&v14, sel_init);
}

void sub_1DA93503C()
{
  v1 = *&v0[OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DA9374D8;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1DA8D2794;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7B8000;
  aBlock[3] = &block_descriptor_74;
  v4 = _Block_copy(aBlock);
  v5 = v1;
  v6 = v0;

  dispatch_sync(v5, v4);

  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {

    v7.receiver = v6;
    v7.super_class = type metadata accessor for NotificationSystemServiceClient();
    objc_msgSendSuper2(&v7, sel_dealloc);
  }
}

void *sub_1DA93522C@<X0>(void *a3@<X8>)
{
  result = sub_1DA936478(0xD000000000000021, 0x80000001DA955150);
  if (result)
  {
    v5 = result;
    v6 = sub_1DA940A04();
    v7 = [v5 badgeNumberForBundleIdentifier_];

    result = swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  return result;
}

void *sub_1DA9352DC@<X0>(uint64_t a1@<X1>, unsigned __int8 *a4@<X8>)
{
  result = sub_1DA936478(0xD000000000000026, 0x80000001DA957710);
  if (result)
  {
    v7 = result;
    v8 = sub_1DA940A04();
    v9 = [v7 setBadgeNumber:a1 forBundleIdentifier:v8];

    result = swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
  return result;
}

void *sub_1DA93538C@<X0>(void *a2@<X2>, unsigned __int8 *a5@<X8>)
{
  result = sub_1DA936478(0xD000000000000026, 0x80000001DA9576E0);
  if (result)
  {
    v8 = result;
    if (a2)
    {
      a2 = sub_1DA940A04();
    }

    v9 = sub_1DA940A04();
    v10 = [v8 setBadgeString:a2 forBundleIdentifier:v9];

    result = swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
  }

  *a5 = v10;
  return result;
}

void sub_1DA935488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1DA936478(0xD000000000000038, 0x80000001DA957660);
  if (v4)
  {
    v5 = v4;
    sub_1DA7AF3EC(0, &unk_1EE114D90, off_1E85D5C78);
    v6 = sub_1DA940BD4();
    v7 = sub_1DA940A04();
    [v5 notificationRepositoryDidPerformUpdates:v6 forBundleIdentifier:v7];
    swift_unknownObjectRelease();
  }
}

double sub_1DA935578(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DA9407F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DA940854();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v2[OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_1DA9374A0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_80;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  sub_1DA940824();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);

  return result;
}

void sub_1DA935848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1DA936478(0xD00000000000003BLL, 0x80000001DA957740);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1DA940A04();
    [v4 categoryRepositoryDidChangeCategoriesForBundleIdentifier_];
    swift_unknownObjectRelease();
  }
}

double sub_1DA935988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v10 = sub_1DA9407F4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1DA940854();
  v14 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *&v6[OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue];
  v17 = swift_allocObject();
  v17[2] = v6;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = v22;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = v23;
  v18 = _Block_copy(aBlock);
  v19 = v6;

  sub_1DA940824();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v25);

  return result;
}

void sub_1DA935C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1DA936478(0xD00000000000003BLL, 0x80000001DA957620);
  if (v4)
  {
    v5 = v4;
    v6 = sub_1DA940BD4();
    v7 = sub_1DA940A04();
    [v5 removeNotificationRecordsForIdentifiers:v6 bundleIdentifier:v7];
    swift_unknownObjectRelease();
  }
}

void sub_1DA935DBC(uint64_t *a1@<X8>)
{
  v2 = sub_1DA936478(0xD000000000000023, 0x80000001DA955030);
  if (v2)
  {
    v3 = [v2 allBundleIdentifiersForCategories];
    v4 = sub_1DA940BE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v4;
}

void *sub_1DA935F18@<X0>(void *a5@<X8>)
{
  result = sub_1DA936478(0xD000000000000029, 0x80000001DA955000);
  if (result)
  {
    v7 = result;
    v8 = sub_1DA940A04();
    v9 = sub_1DA940A04();
    v10 = [v7 categoryForIdentifier:v8 bundleIdentifier:v9];

    result = swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
  }

  *a5 = v10;
  return result;
}

void sub_1DA9360CC(uint64_t *a3@<X8>)
{
  v4 = sub_1DA936478(0xD000000000000020, 0x80000001DA954FD0);
  if (v4)
  {
    v5 = v4;
    v6 = sub_1DA940A04();
    v7 = [v5 categoriesForBundleIdentifier_];

    sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
    v8 = sub_1DA940BE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v8;
}

void sub_1DA9362BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1DA936478(0xD000000000000025, 0x80000001DA954FA0);
  if (v4)
  {
    v5 = v4;
    sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
    v6 = sub_1DA940BD4();
    v7 = sub_1DA940A04();
    [v5 setCategories:v6 forBundleIdentifier:v7];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1DA936478(uint64_t a1, unint64_t a2)
{
  v5 = sub_1DA9408C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v10 = v9;
  LOBYTE(v9) = sub_1DA9408F4();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_19;
  }

  v11 = OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue_connection;
  v12 = *(v2 + OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue_connection);
  if (v12)
  {
    if ([v12 remoteTarget])
    {
      sub_1DA941154();
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    v27 = v25;
    v28 = v26;
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  sub_1DA89667C(&v27, &v25);
  v13 = *(&v26 + 1);
  sub_1DA896614(&v25);
  if (!v13)
  {
    sub_1DA9372AC();
    sub_1DA9367F4();
    v14 = *(v2 + v11);
    if (v14 && [v14 remoteTarget])
    {
      sub_1DA941154();
      swift_unknownObjectRelease();
      sub_1DA896614(&v27);
      v15 = v25;
      v16 = v26;
    }

    else
    {
      sub_1DA896614(&v27);
      v15 = 0uLL;
      v16 = 0uLL;
    }

    v27 = v15;
    v28 = v16;
  }

  sub_1DA89667C(&v27, &v25);
  if (*(&v26 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD78F0, qword_1DA965CD8);
    if (swift_dynamicCast())
    {
      v17 = v24[1];
      sub_1DA896614(&v27);
      return v17;
    }
  }

  else
  {
    sub_1DA896614(&v25);
  }

  if (qword_1EE115AA0 != -1)
  {
    goto LABEL_23;
  }

LABEL_19:
  v19 = sub_1DA9405A4();
  __swift_project_value_buffer(v19, qword_1EE11B068);

  v20 = sub_1DA940584();
  v21 = sub_1DA940F14();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v25 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_1DA7AE6E8(a1, a2, &v25);
    _os_log_impl(&dword_1DA7A9000, v20, v21, "No remote target for %s in system service client", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1E12739F0](v23, -1, -1);
    MEMORY[0x1E12739F0](v22, -1, -1);
  }

  sub_1DA896614(&v27);
  return 0;
}

void sub_1DA9367F4()
{
  v1 = sub_1DA9408C4();
  v2 = *(v1 - 1);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1DA9408F4();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v7 = OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue_connection;
  if (*&v0[OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue_connection])
  {
    return;
  }

  v8 = objc_opt_self();
  v9 = [v8 machServiceName];
  if (!v9)
  {
    sub_1DA940A14();
    v9 = sub_1DA940A04();
  }

  v1 = [v8 serviceInterface];
  v10 = [v1 identifier];
  if (!v10)
  {
    sub_1DA940A14();
    v10 = sub_1DA940A04();
  }

  v11 = [objc_opt_self() endpointForMachName:v9 service:v10 instance:0];

  if (v11)
  {
    v12 = [objc_opt_self() connectionWithEndpoint_];
    v13 = *&v0[v7];
    *&v0[v7] = v12;
    v14 = v12;

    if (v14)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v1;
      *(v15 + 24) = v0;
      v16 = swift_allocObject();
      v17 = sub_1DA9373E0;
      *(v16 + 16) = sub_1DA9373E0;
      *(v16 + 24) = v15;
      aBlock[4] = sub_1DA7AF9C8;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA88419C;
      aBlock[3] = &block_descriptor_29;
      v18 = _Block_copy(aBlock);
      v19 = v1;
      v20 = v0;

      [v14 configureConnection_];

      _Block_release(v18);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    else
    {
      v17 = 0;
      v15 = 0;
    }

    v26 = *&v0[v7];
    [v26 activate];

    sub_1DA898558(v17, v15);
    return;
  }

LABEL_11:
  if (qword_1EE115AA0 != -1)
  {
LABEL_19:
    swift_once();
  }

  v22 = sub_1DA9405A4();
  __swift_project_value_buffer(v22, qword_1EE11B068);
  v23 = sub_1DA940584();
  v24 = sub_1DA940F14();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1DA7A9000, v23, v24, "No endpoint in system service client", v25, 2u);
    MEMORY[0x1E12739F0](v25, -1, -1);
  }
}

void sub_1DA936C48(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = sub_1DA9373E8;
  v16 = v7;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1DA7B00D0;
  v14 = &block_descriptor_23_0;
  v8 = _Block_copy(&v11);

  [a1 setInterruptionHandler_];
  _Block_release(v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = sub_1DA9373F0;
  v16 = v9;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1DA7B00D0;
  v14 = &block_descriptor_27_2;
  v10 = _Block_copy(&v11);

  [a1 setInvalidationHandler_];
  _Block_release(v10);
}

void sub_1DA936E3C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1EE115AA0 != -1)
    {
      swift_once();
    }

    v4 = sub_1DA9405A4();
    __swift_project_value_buffer(v4, qword_1EE11B068);
    v5 = sub_1DA940584();
    v6 = sub_1DA940EF4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DA7A9000, v5, v6, "System service client connection is interrupted", v7, 2u);
      MEMORY[0x1E12739F0](v7, -1, -1);
    }

    v8 = *&v3[OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue];
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1DA9374D8;
    *(v10 + 24) = v9;
    aBlock[4] = sub_1DA8D2794;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7B8000;
    aBlock[3] = &block_descriptor_46_2;
    v11 = _Block_copy(aBlock);
    v12 = v3;

    dispatch_sync(v8, v11);

    _Block_release(v11);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
      __break(1u);
    }
  }
}

void sub_1DA937074(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1EE115AA0 != -1)
    {
      swift_once();
    }

    v4 = sub_1DA9405A4();
    __swift_project_value_buffer(v4, qword_1EE11B068);
    v5 = sub_1DA940584();
    v6 = sub_1DA940EF4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DA7A9000, v5, v6, "System service client connection is invalidated", v7, 2u);
      MEMORY[0x1E12739F0](v7, -1, -1);
    }

    v8 = *&v3[OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue];
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1DA9373F8;
    *(v10 + 24) = v9;
    aBlock[4] = sub_1DA82B5F8;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7B8000;
    aBlock[3] = &block_descriptor_36_0;
    v11 = _Block_copy(aBlock);
    v12 = v3;

    dispatch_sync(v8, v11);

    _Block_release(v11);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
      __break(1u);
    }
  }
}

void sub_1DA9372AC()
{
  v1 = sub_1DA9408C4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1DA9408F4();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v7 = OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue_connection;
    [*(v0 + OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue_connection) invalidate];
    v8 = *(v0 + v7);
    *(v0 + v7) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_1DA93752C(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v17 = a1;
    if ([v17 remoteNotificationsSetting] == 1)
    {
      if (qword_1ECBD4810 != -1)
      {
        swift_once();
      }

      v7 = sub_1DA9405A4();
      __swift_project_value_buffer(v7, qword_1ECBD7910);

      v8 = sub_1DA940584();
      v9 = sub_1DA940F34();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v18 = v11;
        *v10 = 136380675;
        *(v10 + 4) = sub_1DA7AE6E8(a2, a3, &v18);
        _os_log_impl(&dword_1DA7A9000, v8, v9, "Reaping notifications for %{private}s; app setting was disabled", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        MEMORY[0x1E12739F0](v11, -1, -1);
        MEMORY[0x1E12739F0](v10, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
      sub_1DA937828(a2, a3, 0);
    }
  }

  else
  {
    if (qword_1ECBD4810 != -1)
    {
      swift_once();
    }

    v12 = sub_1DA9405A4();
    __swift_project_value_buffer(v12, qword_1ECBD7910);

    v13 = sub_1DA940584();
    v14 = sub_1DA940F34();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136380675;
      *(v15 + 4) = sub_1DA7AE6E8(a2, a3, &v18);
      _os_log_impl(&dword_1DA7A9000, v13, v14, "Reaping notifications for %{private}s; app settings were cleared", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E12739F0](v16, -1, -1);
      MEMORY[0x1E12739F0](v15, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
    sub_1DA937828(a2, a3, 1);
  }
}

void sub_1DA937828(uint64_t a1, unint64_t a2, char a3)
{
  if (qword_1ECBD4810 != -1)
  {
    swift_once();
  }

  v7 = sub_1DA9405A4();
  __swift_project_value_buffer(v7, qword_1ECBD7910);

  v8 = sub_1DA940584();
  v9 = sub_1DA940F34();

  if (os_log_type_enabled(v8, v9))
  {
    v31 = a3;
    v10 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33 = v30;
    *v10 = 136315394;
    v11 = a2;
    v12 = a1;
    v13 = [*(v3 + 16) description];
    v14 = sub_1DA940A14();
    v16 = v15;

    a1 = v12;
    a2 = v11;
    v17 = sub_1DA7AE6E8(v14, v16, &v33);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1DA7AE6E8(a1, v11, &v33);
    _os_log_impl(&dword_1DA7A9000, v8, v9, "Telling repository (%s) to remove all notifications for %s.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v30, -1, -1);
    v18 = v10;
    a3 = v31;
    MEMORY[0x1E12739F0](v18, -1, -1);
  }

  v19 = *(v3 + 16);
  if ([v19 respondsToSelector_])
  {
    v20 = sub_1DA940A04();
    [v19 removeAllNotificationRecordsForBundleIdentifierSync_];
  }

  if (a3)
  {

    v21 = sub_1DA940584();
    v22 = sub_1DA940F34();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136315394;
      v25 = [v19 description];
      v26 = sub_1DA940A14();
      v28 = v27;

      v29 = sub_1DA7AE6E8(v26, v28, &v33);

      *(v23 + 4) = v29;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_1DA7AE6E8(a1, a2, &v33);
      _os_log_impl(&dword_1DA7A9000, v21, v22, "Telling repository (%s) to remove notifications store for %s.", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v24, -1, -1);
      MEMORY[0x1E12739F0](v23, -1, -1);
    }

    v32 = sub_1DA940A04();
    [v19 removeStoreForBundleIdentifier_];
  }
}

uint64_t sub_1DA937C14()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD7910);
  __swift_project_value_buffer(v0, qword_1ECBD7910);
  return sub_1DA940594();
}

uint64_t sub_1DA937C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DA88B520;

  return v11(a1, a2, a3, a4);
}

void *sub_1DA937DC8()
{
  v1 = v0;
  v2 = sub_1DA940694();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v22 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1DA940FC4();
  v4 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  v0[4] = 0;
  sub_1DA7AC344();
  sub_1DA940834();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1DA82B600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA82B658();
  sub_1DA9411D4();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8098], v21);
  v9 = sub_1DA941004();
  v0[5] = v9;
  v10 = v9;
  sub_1DA940684();
  swift_allocObject();
  swift_weakInit();
  sub_1DA940734();
  swift_allocObject();
  v0[4] = sub_1DA940714();

  if (v0[4])
  {

    sub_1DA940724();
  }

  if (qword_1EE114E68 != -1)
  {
    swift_once();
  }

  v11 = sub_1DA9405A4();
  __swift_project_value_buffer(v11, qword_1EE11AFD0);

  v12 = sub_1DA940584();
  v13 = sub_1DA940EF4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315394;
    v23 = v1;
    type metadata accessor for ToolServiceListener();

    v16 = sub_1DA940A74();
    v18 = sub_1DA7AE6E8(v16, v17, &v24);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1DA7AE6E8(0xD000000000000020, 0x80000001DA953210, &v24);
    _os_log_impl(&dword_1DA7A9000, v12, v13, "Starting up %s serviceName: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v15, -1, -1);
    MEMORY[0x1E12739F0](v14, -1, -1);
  }

  return v1;
}

uint64_t sub_1DA9383E8(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1DA9406B4();
}

double sub_1DA9384A8@<D0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  *&v32 = sub_1DA940754();
  *(&v32 + 1) = v4;
  v33 = v5;
  v34 = v6;
  v35 = v7;
  v36 = v8;
  v9 = [objc_allocWithZone(MEMORY[0x1E698E620]) initWithAuditToken_];
  v10 = [v9 unc_applicationIdentifier];
  v11 = sub_1DA940A14();
  v13 = v12;

  v14 = qword_1F5631508 == v11 && off_1F5631510 == v13;
  if (v14 || (sub_1DA941684() & 1) != 0 || (qword_1F5631518 == v11 ? (v15 = off_1F5631520 == v13) : (v15 = 0), v15 || (sub_1DA941684() & 1) != 0 || qword_1F5631528 == v11 && off_1F5631530 == v13 || (sub_1DA941684() & 1) != 0))
  {

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1DA938818(a1);
    }
  }

  else
  {

    if (qword_1EE114E68 != -1)
    {
      swift_once();
    }

    v17 = sub_1DA9405A4();
    __swift_project_value_buffer(v17, qword_1EE11AFD0);
    v9 = v9;
    v18 = sub_1DA940584();
    v19 = sub_1DA940F14();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v32 = v21;
      *v20 = 136315394;
      v22 = v9;
      v23 = [v22 description];
      v24 = sub_1DA940A14();
      v26 = v25;

      v27 = sub_1DA7AE6E8(v24, v26, &v32);

      *(v20 + 4) = v27;
      *(v20 + 12) = 2082;
      v28 = MEMORY[0x1E1271CD0](&unk_1F56314E8, MEMORY[0x1E69E6158]);
      v30 = sub_1DA7AE6E8(v28, v29, &v32);

      *(v20 + 14) = v30;
      _os_log_impl(&dword_1DA7A9000, v18, v19, "[%s] Missing entitlement. Must be one of verified clients: '%{public}s'", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v21, -1, -1);
      MEMORY[0x1E12739F0](v20, -1, -1);
    }

    v32 = xmmword_1DA965DA0;
    LOBYTE(v33) = -126;
    sub_1DA939EB4();
    sub_1DA940784();
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

double sub_1DA938818(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DA9407A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  sub_1DA939F08();
  sub_1DA940794();
  v34 = v32[0];
  v35 = v32[1];
  v36 = v32[2];
  v37 = v33;
  if (qword_1EE114E68 != -1)
  {
    swift_once();
  }

  v11 = sub_1DA9405A4();
  __swift_project_value_buffer(v11, qword_1EE11AFD0);
  sub_1DA939F5C(&v34, v32);
  v12 = sub_1DA940584();
  v13 = sub_1DA940F14();
  sub_1DA939FB8(&v34);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = v10;
    v15 = v14;
    v16 = swift_slowAlloc();
    v31 = a1;
    v29 = v16;
    *&v32[0] = v16;
    *v15 = 136315138;
    v17 = sub_1DA9292B4();
    v19 = sub_1DA7AE6E8(v17, v18, v32);

    *(v15 + 4) = v19;
    v2 = v1;
    v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    _os_log_impl(&dword_1DA7A9000, v12, v13, "KTH_DEBUG: request: '%s'", v15, 0xCu);
    v20 = v29;
    __swift_destroy_boxed_opaque_existential_1(v29);
    v21 = v20;
    a1 = v31;
    MEMORY[0x1E12739F0](v21, -1, -1);
    v22 = v15;
    v10 = v30;
    MEMORY[0x1E12739F0](v22, -1, -1);
  }

  v23 = sub_1DA940D34();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  (*(v5 + 16))(v7, a1, v4);
  v24 = (*(v5 + 80) + 96) & ~*(v5 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  v26 = v35;
  *(v25 + 32) = v34;
  *(v25 + 48) = v26;
  *(v25 + 64) = v36;
  *(v25 + 80) = v37;
  *(v25 + 88) = v2;
  (*(v5 + 32))(v25 + v24, v7, v4);

  sub_1DA8DB00C(0, 0, v10, &unk_1DA965E30, v25);

  return result;
}

uint64_t sub_1DA938BE8()
{
  sub_1DA7C5714(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA938C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 88) = a6;
  v8 = swift_task_alloc();
  *(v6 + 96) = v8;
  *v8 = v6;
  v8[1] = sub_1DA938CFC;

  return sub_1DA939060(a5);
}

uint64_t sub_1DA938CFC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[13] = a1;
  v4[14] = a2;
  v4[15] = v2;

  if (v2)
  {
    v5 = sub_1DA938F68;
  }

  else
  {
    v5 = sub_1DA938E14;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DA938E14()
{
  if (qword_1EE114E68 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA9405A4();
  __swift_project_value_buffer(v1, qword_1EE11AFD0);
  v2 = sub_1DA940584();
  v3 = sub_1DA940F14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DA7A9000, v2, v3, "KTH_DEBUG: got response", v4, 2u);
    MEMORY[0x1E12739F0](v4, -1, -1);
  }

  v6 = *(v0 + 104);
  v5 = *(v0 + 112);

  *(v0 + 40) = v6;
  *(v0 + 48) = v5;
  *(v0 + 56) = 0;
  sub_1DA939EB4();
  sub_1DA940784();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1DA938F68()
{
  v1 = *(v0 + 120);
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6AB0, qword_1DA95D940);
  sub_1DA941494();
  v2 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 24) = v2;
  *(v0 + 32) = 0x80;
  sub_1DA939EB4();
  sub_1DA940784();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DA939060(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA939128, 0, 0);
}

uint64_t sub_1DA939128()
{
  v1 = v0[11];
  v2 = *v1;
  v3 = *(v1 + 1) | ((*(v1 + 5) | (v1[7] << 16)) << 32);
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = *(v1 + 4);
  v8 = v1[48];
  if (v8 <= 1)
  {
    if (v1[48])
    {
      v28 = swift_task_alloc();
      v0[14] = v28;
      *v28 = v0;
      v28[1] = sub_1DA9398F0;

      return sub_1DA8D9EC0(v2 | (v3 << 8), v4, v5, v6);
    }

    else
    {
      v16 = *(v1 + 5);
      v17 = swift_task_alloc();
      v0[13] = v17;
      *v17 = v0;
      v17[1] = sub_1DA93974C;

      return sub_1DA8D9020(v2 | (v3 << 8), v4, v5, v6, v7, v16);
    }
  }

  else if (v8 == 2)
  {
    v19 = swift_task_alloc();
    v0[15] = v19;
    *v19 = v0;
    v19[1] = sub_1DA939A74;

    return sub_1DA8DA7F0(v2 & 1, v4, v5, v6, v7);
  }

  else
  {
    if (v8 == 3)
    {
      v9 = objc_opt_self();
      v10 = sub_1DA93F994();
      v0[8] = 0;
      v11 = [v9 JSONObjectWithData:v10 options:0 error:v0 + 8];

      v12 = v0[8];
      if (v11)
      {
        v13 = v12;
        sub_1DA941154();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7938, &qword_1DA965E48);
        if (swift_dynamicCast())
        {

          Strong = swift_unknownObjectWeakLoadStrong();
          sub_1DA88B74C();
          swift_allocError();
          if (Strong)
          {
            *v15 = 0xD000000000000025;
            *(v15 + 8) = 0x80000001DA957900;
            *(v15 + 16) = 0;
            swift_willThrow();
            swift_unknownObjectRelease();
LABEL_27:

            v31 = v0[1];

            return v31();
          }

          *v15 = 0xD000000000000024;
          *(v15 + 8) = 0x80000001DA9578D0;
          *(v15 + 16) = 0;
        }

        else
        {
          sub_1DA88B74C();
          swift_allocError();
          *v30 = 0xD000000000000026;
          *(v30 + 8) = 0x80000001DA9578A0;
          *(v30 + 16) = 0;
        }
      }

      else
      {
        v29 = v12;
        sub_1DA93F8C4();
      }

      swift_willThrow();
      goto LABEL_27;
    }

    if (qword_1EE112A90 != -1)
    {
      swift_once();
    }

    v20 = v0[12];
    v21 = sub_1DA940D34();
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    v23 = sub_1DA84FB34(0, 0, v20, &unk_1DA965E50, v22);
    v0[16] = v23;
    v24 = swift_task_alloc();
    v0[17] = v24;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6AB0, qword_1DA95D940);
    *v24 = v0;
    v24[1] = sub_1DA939C18;
    v26 = MEMORY[0x1E69E6158];
    v27 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 6, v23, v26, v25, v27);
  }
}

uint64_t sub_1DA93974C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    v5 = *(v2 + 8);

    return v5(0xD00000000000001DLL, 0x80000001DA957960);
  }
}

uint64_t sub_1DA9398F0(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_1DA939A74()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    v5 = *(v2 + 8);

    return v5(0xD000000000000020, 0x80000001DA957930);
  }
}

uint64_t sub_1DA939C18()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1DA939E1C;
  }

  else
  {
    v2 = sub_1DA939D78;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DA939D78()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_1DA939E1C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1DA939EB4()
{
  result = qword_1ECBD7928;
  if (!qword_1ECBD7928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7928);
  }

  return result;
}

unint64_t sub_1DA939F08()
{
  result = qword_1ECBD7930;
  if (!qword_1ECBD7930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7930);
  }

  return result;
}

uint64_t sub_1DA93A00C(uint64_t a1)
{
  v4 = *(sub_1DA9407A4() - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DA7B7470;

  return sub_1DA938C5C(a1, v6, v7, (v1 + 4), v8, v1 + v5);
}

uint64_t sub_1DA93A108(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA7B7470;

  return sub_1DA8A1FD8(a1);
}

double sub_1DA93A1DC(void *a1)
{
  v14 = a1;
  v3 = sub_1DA9407F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DA940854();
  v7 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *(v1 + 16);
  sub_1DA7BABAC(a1, v18);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  sub_1DA7B9FAC(v18, v10 + 24);
  aBlock[4] = sub_1DA93AB0C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_30;
  v11 = _Block_copy(aBlock);

  sub_1DA940824();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v9, v6, v11);
  _Block_release(v11);
  __swift_destroy_boxed_opaque_existential_1(v14);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);

  return result;
}

void *sub_1DA93A4C0(uint64_t a1)
{
  type metadata accessor for NotificationSettingsManager();
  v1 = swift_allocObject();
  result = sub_1DA93A7A0();
  qword_1EE11AE98 = v1;
  return result;
}

uint64_t sub_1DA93A558(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((a1 + 24), a2);
  return swift_endAccess();
}

void sub_1DA93A5AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_beginAccess();
  sub_1DA7BABAC(a1 + 24, v13);
  v8 = v14;
  v9 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v10 = (*(v9 + 8))(a2, a3, v8, v9);
  if (v10)
  {
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1(v13);
    v12 = [v11 sourceSettings];
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v12 = 0;
  }

  *a4 = v12;
}

uint64_t sub_1DA93A698@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  sub_1DA7BABAC(a1 + 24, v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = (*(v5 + 16))(v4, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  *a2 = v6;
  return result;
}

uint64_t sub_1DA93A73C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

void *sub_1DA93A7A0()
{
  v1 = v0;
  v12 = sub_1DA940FC4();
  v2 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1DA7AC344();
  v11[0] = "queue_settingsProvider";
  v11[1] = v7;
  sub_1DA940824();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACF60(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v12);
  v0[2] = sub_1DA941004();
  v8 = type metadata accessor for NotificationGroupServiceSettingsDefaultProvider();
  v9 = swift_allocObject();
  v1[6] = v8;
  v1[7] = &off_1F5636A10;
  v1[3] = v9;
  return v1;
}

uint64_t sub_1DA93AA1C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD8, &unk_1DA95CC70);
  sub_1DA940FE4();
  return v3;
}

uint64_t sub_1DA93AA98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B98, &unk_1DA95CCF0);
  sub_1DA940FE4();
  return v1;
}

double __swift_assign_boxed_opaque_existential_1(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v2 = a1[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v11 = *(v10 + 24);

        v11();
      }
    }

    else
    {
      a1[3] = v3;
      a1[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        (*(v4 + 32))(v15);
        if ((v7 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v6 + 16))(a1, a2, v3);
        }

        (*(v4 + 8))(v15, v2);
      }
    }
  }

  return result;
}

uint64_t sub_1DA93AD5C(uint64_t a1)
{
  result = sub_1DA9401F4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NotificationPipelineRequestLogger(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1DA93AE54(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DA93AEB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1DA93AF40(uint64_t a1)
{
  sub_1DA93AFB8(319);
  if (v1 <= 0x3F)
  {
    sub_1DA93B068(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1DA93AFB8(uint64_t a1)
{
  if (!qword_1EE1122B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD60B8, &unk_1DA95DFD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD60B0, &unk_1DA95DFC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD60A8, &unk_1DA963DC0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE1122B0);
    }
  }
}

void sub_1DA93B068(uint64_t a1)
{
  if (!qword_1EE110B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD60B0, &unk_1DA95DFC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD60A8, &unk_1DA963DC0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE110B58);
    }
  }
}

uint64_t sub_1DA93B0FC()
{

  return MEMORY[0x1EEE6DFA0](sub_1DA7BD450, 0, 0);
}

uint64_t sub_1DA93B1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(result + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_timerLock);
    os_unfair_lock_lock((v11 + 24));
    [*(v11 + 16) invalidate];
    v12 = *(v11 + 16);
    *(v11 + 16) = 0;

    os_unfair_lock_unlock((v11 + 24));
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1DA941364();
    MEMORY[0x1E1271BD0](0x2074756F656D6954, 0xEB0000000020666FLL);
    sub_1DA941844();
    sub_1DA941844();
    sub_1DA940E74();
    MEMORY[0x1E1271BD0](0xD00000000000001ALL, 0x80000001DA957B30);
    sub_1DA7BAA9C(v23, v24);

    if (*(v10 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationPipelineStep_work))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6AB0, qword_1DA95D940);
      sub_1DA940DE4();
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60C0, &unk_1DA965C60);
    v14 = *(v13 + 48);
    v15 = *(v13 + 64);
    *v8 = a3;
    *(v8 + 1) = a4;
    v16 = *MEMORY[0x1E69DF1C8];
    v17 = sub_1DA9402D4();
    v18 = *(v17 - 8);
    (*(v18 + 104))(&v8[v14], v16, v17);
    (*(v18 + 56))(&v8[v14], 0, 1, v17);
    v19 = *MEMORY[0x1E69DF1F8];
    v20 = sub_1DA9402E4();
    v21 = *(v20 - 8);
    (*(v21 + 104))(&v8[v15], v19, v20);
    (*(v21 + 56))(&v8[v15], 0, 1, v20);
    type metadata accessor for StepFailure(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1DA7BD6AC(v8, "scheduleTimeoutToPerform(after:for:)", 36, 2);

    return sub_1DA7BD644(v8);
  }

  return result;
}

uint64_t sub_1DA93B5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA93B698(v4, v6);
  v7 = sub_1DA940A74();
  v9 = v8;
  sub_1DA93B698(a2, v6);
  if (v7 == sub_1DA940A74() && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1DA941684();
  }

  return v12 & 1;
}

uint64_t sub_1DA93B698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StepFailure(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DA93B71C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 20))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DA93B778(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1DA93B7DC(void *a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  sub_1DA941364();
  MEMORY[0x1E1271BD0](0xD000000000000025, 0x80000001DA957C50);
  if (a1)
  {
    [a1 length];
    v6 = sub_1DA941614();
    v8 = v7;
  }

  else
  {
    v6 = 7104878;
    v8 = 0xE300000000000000;
  }

  MEMORY[0x1E1271BD0](v6, v8);

  MEMORY[0x1E1271BD0](0x69726F697270202CLL, 0xEC000000203A7974);
  v9 = 1702195828;
  if ((a2 & 1) == 0)
  {
    v9 = 0x65736C6166;
  }

  v10 = 0xE500000000000000;
  if (a2)
  {
    v10 = 0xE400000000000000;
  }

  if (a2 == 2)
  {
    v11 = 7104878;
  }

  else
  {
    v11 = v9;
  }

  if (a2 == 2)
  {
    v12 = 0xE300000000000000;
  }

  else
  {
    v12 = v10;
  }

  MEMORY[0x1E1271BD0](v11, v12);

  MEMORY[0x1E1271BD0](0xD000000000000011, 0x80000001DA957C80);
  v13 = sub_1DA93B9B8(SHIDWORD(a2));
  MEMORY[0x1E1271BD0](v13);

  MEMORY[0x1E1271BD0](0xD000000000000012, 0x80000001DA957CA0);
  v14 = sub_1DA93B9B8(v3);
  MEMORY[0x1E1271BD0](v14);

  return 0;
}

uint64_t sub_1DA93B9B8(int a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 0x656C74746F726874;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return 0x4465727574616566;
      }

      goto LABEL_12;
    }

    return 0x626967696C656E69;
  }

  else
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0x64656C696166;
      }

LABEL_12:
      sub_1DA941364();

      v2 = sub_1DA941614();
      MEMORY[0x1E1271BD0](v2);

      return 0x656C646E61686E75;
    }

    return 0x6564656563637573;
  }
}

BOOL sub_1DA93BB68(void *a1, unint64_t a2, int a3, void *a4, unint64_t a5, int a6)
{
  if (!a1)
  {
    if (!a4)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!a4)
  {
    return 0;
  }

  v11 = a1;
  sub_1DA93BC4C();
  v12 = a4;
  v13 = v11;
  LOBYTE(v11) = sub_1DA941114();

  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_4:
  if (a2 == 2)
  {
    result = 0;
    if (a5 != 2)
    {
      return result;
    }

    goto LABEL_11;
  }

  result = 0;
  if (a5 != 2 && ((a5 ^ a2) & 1) == 0)
  {
LABEL_11:
    if (HIDWORD(a2) == HIDWORD(a5))
    {
      return a3 == a6;
    }
  }

  return result;
}

unint64_t sub_1DA93BC4C()
{
  result = qword_1ECBD7940;
  if (!qword_1ECBD7940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBD7940);
  }

  return result;
}

void UNCIsEntitledConnection_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1DA7A9000, log, OS_LOG_TYPE_ERROR, "Entitlement '%{public}@' for capability '%{public}@' is not valid because it is not an NSArray", &v3, 0x16u);
}