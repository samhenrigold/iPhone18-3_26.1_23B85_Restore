id sub_2520FD5A0(void *a1)
{
  v2 = v1;
  v61 = a1;
  v3 = sub_252141FEC();
  v4 = *(v3 - 8);
  v64 = v3;
  v65 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252141FCC();
  MEMORY[0x28223BE20](v7);
  v8 = sub_252141A8C();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_ineligableLock;
  *&v2[v9] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v10 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_loggedDeviceLock;
  *&v2[v10] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) _swift_FORCE_LOAD___swiftCoreImage___HearingTest];
  v11 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_audioRoutingControl;
  *&v2[v11] = [objc_allocWithZone(MEMORY[0x277CEF7E0]) _swift_FORCE_LOAD___swiftCoreImage___HearingTest];
  *&v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_notifyLostWaitTask] = 0;
  v12 = MEMORY[0x277D84FA0];
  *&v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_loggedDevices] = MEMORY[0x277D84FA0];
  *&v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_ineligibleAirPods] = v12;
  v60 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue;
  v13 = sub_2520A5A94(0, &qword_27F4CDC50, 0x277D85C78);
  v58 = "cessoryAHPSManager";
  v59 = v13;
  sub_252141A6C();
  v67 = MEMORY[0x277D84F90];
  v63 = sub_252110218(&qword_27F4CE0E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD970, &qword_252143B50);
  v15 = sub_2520A2F1C(&qword_27F4CE0F0, &qword_27F4CD970, &qword_252143B50, MEMORY[0x277D83970]);
  v62 = v7;
  sub_25214218C();
  v16 = *MEMORY[0x277D85260];
  v57 = *(v65 + 104);
  v65 += 104;
  v57(v6, v16, v64);
  *&v2[v60] = sub_25214202C();
  v60 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__queue;
  *&v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__queue] = 0;
  v17 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedDiscovery;
  *&v2[v17] = [objc_allocWithZone(MEMORY[0x277CBE030]) init];
  *&v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedDiscoveryCount] = 0;
  v18 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_centralMgrQueue;
  sub_252141A6C();
  v67 = MEMORY[0x277D84F90];
  v58 = v14;
  v56 = v15;
  sub_25214218C();
  HIDWORD(v55) = v16;
  v19 = v16;
  v20 = v57;
  v57(v6, v19, v64);
  *&v2[v18] = sub_25214202C();
  *&v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__centralMgr] = 0;
  *&v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__peripheral] = 0;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__deviceLost] = 1;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__centralMgrPoweredOn] = 0;
  v21 = &v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__deviceLostHandler];
  *v21 = 0;
  v21[1] = 0;
  v22 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__lostPeripheralIdentifier;
  v23 = sub_2521418EC();
  (*(*(v23 - 8) + 56))(&v2[v22], 1, 1, v23);
  swift_weakInit();
  *&v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__HearingTestMode] = xmmword_252146680;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__canSwitchAirpods] = 1;
  v24 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__enforceStrictQueues;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__enforceStrictQueues] = 0;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__placementDisabled] = 0;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__discoveryActivated] = 0;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__isNewObserverWaitingOnConnectedCBDevice] = 0;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__hearingTestActive] = 0;
  v25 = &v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedCBDevice];
  *v25 = 0u;
  v25[1] = 0u;
  v25[2] = 0u;
  v25[3] = 0u;
  *(v25 + 60) = 0u;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__isHTModeDisabledByTonePlayer] = 0;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__isAudioSessionActivatedByTonePlayer] = 0;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__isLeftUseOccludedCalibrationTable] = 0;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__isRightUseOccludedCalibrationTable] = 0;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__forcedFitTestOnce] = 0;
  v26 = [objc_opt_self() processInfo];
  v27 = [v26 environment];

  v28 = sub_252141B1C();
  if (*(v28 + 16))
  {
    sub_25213E648(0x5F54494E555F5349, 0xEF474E4954534554);
    v30 = v29;

    v31 = v30 ^ 1;
  }

  else
  {

    v31 = 1;
  }

  v2[v24] = v31 & 1;
  v32 = v61;
  if (v61)
  {
    v33 = v61;
  }

  else
  {
    sub_252141A6C();
    v67 = MEMORY[0x277D84F90];
    sub_25214218C();
    v20(v6, HIDWORD(v55), v64);
    v33 = sub_25214202C();
  }

  v34 = *&v2[v60];
  *&v2[v60] = v33;
  v35 = v33;
  v36 = v32;

  v37 = type metadata accessor for HTAccessoryAHPSManager(0);
  v66.receiver = v2;
  v66.super_class = v37;
  v38 = objc_msgSendSuper2(&v66, sel_init);
  v39 = qword_27F4CD6F0;
  v40 = v38;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = qword_27F4D3420;
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = (v41 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationSetSmartRountingArbitrationBlockingMode);
  v44 = *(v41 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationSetSmartRountingArbitrationBlockingMode);
  v45 = *(v41 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationSetSmartRountingArbitrationBlockingMode + 8);
  *v43 = sub_252110260;
  v43[1] = v42;

  sub_2520A1FE4(v44, v45);

  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47 = (v41 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidEnterBackgroundForAHPS);
  v48 = *(v41 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidEnterBackgroundForAHPS);
  v49 = *(v41 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidEnterBackgroundForAHPS + 8);
  *v47 = sub_252110268;
  v47[1] = v46;

  sub_2520A1FE4(v48, v49);

  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v51 = (v41 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidActivateForAHPS);
  v52 = *(v41 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidActivateForAHPS);
  v53 = *(v41 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidActivateForAHPS + 8);
  *v51 = sub_252110298;
  v51[1] = v50;

  sub_2520A1FE4(v52, v53);

  sub_2520FE834(v35);

  sub_2520FDEF8(1);
  return v40;
}

void sub_2520FDE40(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_2520FDEF8(a1 & 1);
  }
}

void sub_2520FDE9C(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_2520FDEF8(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
  sub_25214200C();
  if (*(&v37[0] + 1))
  {
    v6 = *&v38[8];
    v5 = *&v38[16];
    v7 = HIBYTE(*&v38[16]) & 0xFLL;
    if ((*&v38[16] & 0x2000000000000000) == 0)
    {
      v7 = *&v38[8] & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v8 = sub_25214198C();
      __swift_project_value_buffer(v8, qword_27F4CDE68);
      v35[2] = v37[2];
      v36[0] = *v38;
      *(v36 + 12) = *&v38[12];
      v35[0] = v37[0];
      v35[1] = v37[1];
      sub_25210AC9C(v35, aBlock);
      v9 = sub_25214196C();
      v10 = sub_252141FBC();
      sub_2520A2584(v37, &qword_27F4CE6F0, &qword_2521467A0);
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        aBlock[0] = v33;
        *v11 = 136446466;
        v12 = sub_2521425DC();
        v14 = sub_2520A5448(v12, v13, aBlock);

        *(v11 + 4) = v14;
        *(v11 + 12) = 2080;

        v15 = sub_2520A5448(v6, v5, aBlock);

        *(v11 + 14) = v15;
        _os_log_impl(&dword_25207E000, v9, v10, "[%{public}s] Device address %s", v11, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v33, -1, -1);
        MEMORY[0x253099FD0](v11, -1, -1);
      }

      v17 = a1 & 1;
      v16 = (a1 & 1) == 0;
      if (a1)
      {
        v18 = 0x676E696C62616E65;
      }

      else
      {
        v18 = 0x6E696C6261736964;
      }

      if (v16)
      {
        v19 = 0xE900000000000067;
      }

      else
      {
        v19 = 0xE800000000000000;
      }

      v20 = *(v2 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_audioRoutingControl);
      v21 = sub_252141B6C();
      [v20 setAppBundleID_];

      v22 = sub_252141B6C();
      sub_2520A2584(v37, &qword_27F4CE6F0, &qword_2521467A0);
      [v20 setDeviceAddress_];

      v23 = swift_allocObject();
      v23[2] = v18;
      v23[3] = v19;
      v23[4] = ObjectType;
      aBlock[4] = sub_25210B710;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2520FE7C8;
      aBlock[3] = &block_descriptor_278;
      v24 = _Block_copy(aBlock);

      [v20 setArbitrationBlockingModeWithCompletion:v17 completion:v24];
      _Block_release(v24);
      return;
    }

    sub_2520A2584(v37, &qword_27F4CE6F0, &qword_2521467A0);
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v25 = sub_25214198C();
  __swift_project_value_buffer(v25, qword_27F4CDE68);
  v26 = sub_25214196C();
  v27 = sub_252141FAC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v35[0] = v29;
    *v28 = 136446210;
    v30 = sub_2521425DC();
    v32 = sub_2520A5448(v30, v31, v35);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_25207E000, v26, v27, "[%{public}s] Failed to get device address", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x253099FD0](v29, -1, -1);
    MEMORY[0x253099FD0](v28, -1, -1);
  }
}

void sub_2520FE3F0(NSObject *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = a1;
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v8 = sub_25214198C();
    __swift_project_value_buffer(v8, qword_27F4CDE68);
    v9 = a1;

    v10 = sub_25214196C();
    v11 = sub_252141FAC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29 = v14;
      *v12 = 136446722;
      v15 = sub_2521425DC();
      v17 = sub_2520A5448(v15, v16, &v29);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2112;
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v19;
      *v13 = v19;
      *(v12 + 22) = 2080;
      *(v12 + 24) = sub_2520A5448(a2, a3, &v29);
      _os_log_impl(&dword_25207E000, v10, v11, "[%{public}s] Error %@ in %s audio routing arbitration blocking mode", v12, 0x20u);
      sub_2520A2584(v13, &unk_27F4CE080, &qword_252144E30);
      MEMORY[0x253099FD0](v13, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v14, -1, -1);
      MEMORY[0x253099FD0](v12, -1, -1);

      return;
    }

    v27 = a1;
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v20 = sub_25214198C();
    __swift_project_value_buffer(v20, qword_27F4CDE68);

    oslog = sub_25214196C();
    v21 = sub_252141FBC();

    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29 = v23;
      *v22 = 136446466;
      v24 = sub_2521425DC();
      v26 = sub_2520A5448(v24, v25, &v29);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_2520A5448(a2, a3, &v29);
      _os_log_impl(&dword_25207E000, oslog, v21, "[%{public}s] Done %s audio routing arbitration blocking mode", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v23, -1, -1);
      MEMORY[0x253099FD0](v22, -1, -1);

      return;
    }

    v27 = oslog;
  }
}

void sub_2520FE7C8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_2520FE834(uint64_t a1)
{
  sub_2520A5A94(0, &qword_27F4CE6A8, 0x277CBE030);
  sub_25214200C();
  [aBlock setDispatchQueue_];

  sub_25214200C();
  [aBlock setDiscoveryFlags_];

  sub_25214200C();
  v2 = aBlock;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_25210B678;
  v13 = v3;
  aBlock = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_2520FEAF8;
  v11 = &block_descriptor_266;
  v4 = _Block_copy(&aBlock);

  [v2 setDeviceFoundHandler_];
  _Block_release(v4);

  sub_25214200C();
  v5 = aBlock;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_25210B6A8;
  v13 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_2520FEAF8;
  v11 = &block_descriptor_271;
  v7 = _Block_copy(&aBlock);

  [v5 setDeviceLostHandler_];
  _Block_release(v7);

  sub_2520FF978();
}

void sub_2520FEAF8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_2520FEB60(void *a1, uint64_t a2, void (*a3)(void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a1;
    sub_25212CC7C(v7, v8);

    a3(v8);
    sub_25210ACF8(v8);
  }
}

void sub_2520FEBE8()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDE68);
  v3 = sub_25214196C();
  v4 = sub_252141FBC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    aBlock[0] = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, aBlock);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] Deactivate discovery", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v10 = *&v1[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  MEMORY[0x28223BE20](v11);
  v12 = sub_25214200C();
  if (LOBYTE(aBlock[0]) == 1)
  {
    MEMORY[0x28223BE20](v12);
    sub_2520A5A94(0, &qword_27F4CE6A8, 0x277CBE030);
    sub_25214200C();
    v13 = aBlock[0];
    [aBlock[0] invalidate];

    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    *(v14 + 24) = 0;
    v15 = swift_allocObject();
    v15[2] = sub_252110504;
    v15[3] = v14;
    aBlock[4] = sub_2520ADA58;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_252083924;
    aBlock[3] = &block_descriptor_568;
    v16 = _Block_copy(aBlock);
    v17 = v1;

    dispatch_sync(v10, v16);
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v19 = sub_25214196C();
  v20 = sub_252141FAC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136446210;
    v23 = sub_2521425DC();
    v25 = sub_2520A5448(v23, v24, aBlock);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_25207E000, v19, v20, "[%{public}s] Discovery already deactivated", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x253099FD0](v22, -1, -1);
    MEMORY[0x253099FD0](v21, -1, -1);
  }
}

void sub_2520FF020()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDE68);
  v3 = sub_25214196C();
  v4 = sub_252141FBC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    aBlock[0] = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, aBlock);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] Activate discovery", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v10 = *&v1[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  MEMORY[0x28223BE20](v11);
  v12 = sub_25214200C();
  if (aBlock[0])
  {
    v13 = sub_25214196C();
    v14 = sub_252141FAC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136446210;
      v17 = sub_2521425DC();
      v19 = sub_2520A5448(v17, v18, aBlock);

      *(v15 + 4) = v19;
      v20 = "[%{public}s] Discovery already activated";
LABEL_13:
      _os_log_impl(&dword_25207E000, v13, v14, v20, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x253099FD0](v16, -1, -1);
      MEMORY[0x253099FD0](v15, -1, -1);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  MEMORY[0x28223BE20](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE728, &unk_2521467D0);
  sub_25214200C();
  v21 = aBlock[0];
  if (!aBlock[0])
  {
    v13 = sub_25214196C();
    v14 = sub_252141FAC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136446210;
      v28 = sub_2521425DC();
      v30 = sub_2520A5448(v28, v29, aBlock);

      *(v15 + 4) = v30;
      v20 = "[%{public}s] Invalid queue";
      goto LABEL_13;
    }

LABEL_14:

    return;
  }

  v22 = [objc_allocWithZone(MEMORY[0x277CBE030]) init];
  v23 = swift_allocObject();
  *(v23 + 16) = v1;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_2521101CC;
  *(v24 + 24) = v23;
  aBlock[4] = sub_2520ADA58;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252083924;
  aBlock[3] = &block_descriptor_555_0;
  v25 = _Block_copy(aBlock);
  v1;
  v26 = v22;

  dispatch_sync(v10, v25);

  _Block_release(v25);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_2520FE834(v21);
  }
}

id sub_2520FF50C()
{
  v1 = v0;
  swift_getObjectType();
  v0[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__centralMgrPoweredOn] = 0;
  sub_2520FDEF8(0);
  sub_2520A5A94(0, &qword_27F4CE6A8, 0x277CBE030);
  sub_25214200C();
  [v15 invalidate];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE708, &qword_2521467B8);
  sub_25214200C();
  v2 = v15;
  if (v15)
  {
    v3 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__peripheral;
    if (*&v1[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__peripheral])
    {
      [v15 cancelPeripheralConnection_];

      v2 = *&v1[v3];
      *&v1[v3] = 0;
    }

    v4 = *&v1[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__centralMgr];
    *&v1[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__centralMgr] = 0;
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v5 = sub_25214198C();
  __swift_project_value_buffer(v5, qword_27F4CDE68);
  v6 = sub_25214196C();
  v7 = sub_252141FBC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v10 = sub_2521425DC();
    v12 = sub_2520A5448(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] Deinitializing AHPS mgr", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x253099FD0](v9, -1, -1);
    MEMORY[0x253099FD0](v8, -1, -1);
  }

  v14.receiver = v1;
  v14.super_class = type metadata accessor for HTAccessoryAHPSManager(0);
  return objc_msgSendSuper2(&v14, sel_dealloc);
}

uint64_t type metadata accessor for HTAccessoryAHPSManager(uint64_t a1)
{
  result = qword_27F4CE680;
  if (!qword_27F4CE680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2520FF978()
{
  ObjectType = swift_getObjectType();
  v13 = v0;
  sub_2520A5A94(0, &qword_27F4CE6A8, 0x277CBE030);
  sub_25214200C();
  v2 = aBlock[0];
  v3 = swift_allocObject();
  *(v3 + 16) = v13;
  *(v3 + 24) = ObjectType;
  aBlock[4] = sub_25210B5F8;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520FE7C8;
  aBlock[3] = &block_descriptor_216;
  v4 = _Block_copy(aBlock);
  v13;

  [v2 activateWithCompletion_];
  _Block_release(v4);

  sub_2520FCE54();
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v5 = sub_25214198C();
  __swift_project_value_buffer(v5, qword_27F4CDE68);
  v6 = sub_25214196C();
  v7 = sub_252141FBC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136446210;
    v10 = sub_2521425DC();
    v12 = sub_2520A5448(v10, v11, aBlock);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] discovery started", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x253099FD0](v9, -1, -1);
    MEMORY[0x253099FD0](v8, -1, -1);
  }
}

uint64_t sub_2520FFBD8(void *a1, char *a2, uint64_t a3)
{
  v4 = qword_27F4CD708;
  if (!a1)
  {
    goto LABEL_8;
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v6 = sub_25214198C();
  __swift_project_value_buffer(v6, qword_27F4CDE68);
  v7 = a1;
  v8 = sub_25214196C();
  v9 = sub_252141FAC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock = v12;
    *v10 = 136446466;
    v13 = sub_2521425DC();
    v15 = sub_2520A5448(v13, v14, &aBlock);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = a1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_25207E000, v8, v9, "[%{public}s] Discovery cannot activate. Error %@", v10, 0x16u);
    sub_2520A2584(v11, &unk_27F4CE080, &qword_252144E30);
    MEMORY[0x253099FD0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x253099FD0](v12, -1, -1);
    MEMORY[0x253099FD0](v10, -1, -1);
  }

  v18 = *&a2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_252110504;
  *(v20 + 24) = v19;
  v64 = sub_2520ADA58;
  v65 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v61 = 1107296256;
  v62 = sub_252083924;
  v63 = &block_descriptor_259;
  v21 = _Block_copy(&aBlock);
  v22 = a2;

  dispatch_sync(v18, v21);
  _Block_release(v21);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
LABEL_8:
    if (v4 != -1)
    {
      swift_once();
    }

    v24 = sub_25214198C();
    __swift_project_value_buffer(v24, qword_27F4CDE68);
    isEscapingClosureAtFileLocation = a2;
    v26 = sub_25214196C();
    LOBYTE(v27) = sub_252141FBC();
    v28 = &selRef_categoryOptions;
    if (!os_log_type_enabled(v26, v27))
    {

      goto LABEL_15;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock = v30;
    *v29 = 136446466;
    v31 = sub_2521425DC();
    v33 = sub_2520A5448(v31, v32, &aBlock);

    *(v29 + 4) = v33;
    *(v29 + 6) = 2048;
    MEMORY[0x28223BE20](v34);
    sub_2520A5A94(0, &qword_27F4CE6A8, 0x277CBE030);
    sub_25214200C();
    v35 = &selRef_categoryOptions;
    v36 = [v59 discoveredDevices];

    sub_2520A5A94(0, &qword_27F4CE6B0, 0x277CBE020);
    v37 = sub_252141CDC();

    if (v37 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25214232C())
    {

      *(v29 + 14) = i;

      _os_log_impl(&dword_25207E000, v26, v27, "[%{public}s] Discovery started. Device count is  %ld", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x253099FD0](v30, -1, -1);
      MEMORY[0x253099FD0](v29, -1, -1);

      v28 = v35;
LABEL_15:
      v26 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
      MEMORY[0x28223BE20](v39);
      sub_2520A5A94(0, &qword_27F4CE6A8, 0x277CBE030);
      sub_25214200C();
      v40 = aBlock;
      v41 = [aBlock v28[46]];

      sub_2520A5A94(0, &qword_27F4CE6B0, 0x277CBE020);
      v42 = sub_252141CDC();

      v43 = v42 >> 62 ? sub_25214232C() : *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);

      v44 = swift_allocObject();
      *(v44 + 16) = isEscapingClosureAtFileLocation;
      *(v44 + 24) = v43;
      v45 = swift_allocObject();
      LOBYTE(v27) = v45;
      *(v45 + 16) = sub_25210B600;
      *(v45 + 24) = v44;
      v64 = sub_2520ADA58;
      v65 = v45;
      aBlock = MEMORY[0x277D85DD0];
      v61 = 1107296256;
      v35 = &v62;
      v62 = sub_252083924;
      v63 = &block_descriptor_227_0;
      v29 = _Block_copy(&aBlock);
      v30 = v65;
      v46 = isEscapingClosureAtFileLocation;

      dispatch_sync(v26, v29);
      _Block_release(v29);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        break;
      }

      v29 = [objc_allocWithZone(MEMORY[0x277CBDFF8]) initWithDelegate:v46 queue:*&v46[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_centralMgrQueue]];
      isEscapingClosureAtFileLocation = swift_allocObject();
      *(isEscapingClosureAtFileLocation + 16) = v46;
      *(isEscapingClosureAtFileLocation + 24) = v29;
      v47 = swift_allocObject();
      LOBYTE(v27) = v47;
      *(v47 + 16) = sub_25210B614;
      *(v47 + 24) = isEscapingClosureAtFileLocation;
      v64 = sub_2520ADA58;
      v65 = v47;
      aBlock = MEMORY[0x277D85DD0];
      v61 = 1107296256;
      v62 = sub_252083924;
      v63 = &block_descriptor_237_0;
      v30 = _Block_copy(&aBlock);
      v48 = v46;
      v49 = v29;

      dispatch_sync(v26, v30);

      _Block_release(v30);
      LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

      if (v49)
      {
        goto LABEL_25;
      }

      v50 = sub_25214196C();
      v51 = sub_252141FBC();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        aBlock = v27;
        *v52 = 136446210;
        v53 = sub_2521425DC();
        v29 = sub_2520A5448(v53, v54, &aBlock);

        *(v52 + 4) = v29;
        _os_log_impl(&dword_25207E000, v50, v51, "[%{public}s] central manger created", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x253099FD0](v27, -1, -1);
        MEMORY[0x253099FD0](v52, -1, -1);
      }

      v55 = swift_allocObject();
      *(v55 + 16) = v48;
      *(v55 + 24) = 1;
      v56 = swift_allocObject();
      *(v56 + 16) = sub_25210B660;
      *(v56 + 24) = v55;
      v64 = sub_2520ADA58;
      v65 = v56;
      aBlock = MEMORY[0x277D85DD0];
      v61 = 1107296256;
      v62 = sub_252083924;
      v63 = &block_descriptor_247_1;
      v35 = _Block_copy(&aBlock);
      isEscapingClosureAtFileLocation = v65;
      v57 = v48;

      dispatch_sync(v26, v35);
      _Block_release(v35);
      v58 = swift_isEscapingClosureAtFileLocation();

      if ((v58 & 1) == 0)
      {
        return result;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return result;
}

void sub_25210064C(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE700, &qword_2521467B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v105 - v8;
  v10 = sub_2521418EC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v117 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v111 = &v105 - v14;
  if (qword_27F4CD708 != -1)
  {
LABEL_37:
    swift_once();
  }

  v15 = sub_25214198C();
  v16 = __swift_project_value_buffer(v15, qword_27F4CDE68);

  v114 = v16;
  v17 = sub_25214196C();
  v18 = sub_252141FBC();

  v19 = os_log_type_enabled(v17, v18);
  v112 = ObjectType;
  v113 = v11;
  v119 = v10;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = v3;
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v20 = 136446466;
    v23 = sub_2521425DC();
    v25 = a1;
    v26 = sub_2520A5448(v23, v24, aBlock);

    *(v20 + 4) = v26;
    a1 = v25;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_2520A5448(v25, a2, aBlock);
    _os_log_impl(&dword_25207E000, v17, v18, "[%{public}s] %s connectPeripheral", v20, 0x16u);
    swift_arrayDestroy();
    v27 = v22;
    v3 = v21;
    MEMORY[0x253099FD0](v27, -1, -1);
    MEMORY[0x253099FD0](v20, -1, -1);
  }

  v28 = *&v3[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  MEMORY[0x28223BE20](v29);
  *(&v105 - 2) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE708, &qword_2521467B8);
  sub_25214200C();
  v30 = aBlock[0];
  if (aBlock[0])
  {
    v31 = sub_2520F8C70();
    v33 = HIBYTE(v32) & 0xF;
    v120 = v31;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      v118 = v32;
      v109 = a1;

      v34 = sub_25214196C();
      v35 = sub_252141FBC();

      v36 = os_log_type_enabled(v34, v35);
      v110 = a2;
      v107 = v3;
      v106 = v28;
      if (v36)
      {
        v37 = swift_slowAlloc();
        v38 = a2;
        v39 = swift_slowAlloc();
        aBlock[0] = v39;
        *v37 = 136446466;
        v40 = sub_2521425DC();
        v42 = sub_2520A5448(v40, v41, aBlock);

        *(v37 + 4) = v42;
        *(v37 + 12) = 2080;
        *(v37 + 14) = sub_2520A5448(v109, v38, aBlock);
        _os_log_impl(&dword_25207E000, v34, v35, "[%{public}s] %s deviceIdentifier exists", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v39, -1, -1);
        MEMORY[0x253099FD0](v37, -1, -1);
      }

      v43 = v113;
      v44 = v118;
      sub_25214189C();
      v45 = v119;
      if ((*(v43 + 48))(v9, 1, v119) == 1)
      {
LABEL_44:
        __break(1u);
        return;
      }

      v46 = v111;
      (*(v43 + 32))(v111, v9, v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE710, &unk_2521467C0);
      v47 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_252143AC0;
      (*(v43 + 16))(v48 + v47, v46, v45);
      v49 = sub_252141CCC();

      v108 = v30;
      v11 = [v30 retrievePeripheralsWithIdentifiers_];

      v9 = sub_2520A5A94(0, &qword_27F4CE718, 0x277CBE060);
      v50 = sub_252141CDC();

      v51 = v110;

      v52 = sub_25214196C();
      v3 = sub_252141FBC();

      v53 = os_log_type_enabled(v52, v3);
      v105 = v9;
      if (v53)
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        aBlock[0] = v55;
        *v54 = 136446978;
        v56 = sub_2521425DC();
        v58 = sub_2520A5448(v56, v57, aBlock);

        *(v54 + 4) = v58;
        *(v54 + 12) = 2080;
        *(v54 + 14) = sub_2520A5448(v109, v51, aBlock);
        *(v54 + 22) = 2080;
        *(v54 + 24) = sub_2520A5448(v120, v44, aBlock);
        *(v54 + 32) = 2080;
        v59 = MEMORY[0x253098E80](v50, v9);
        v11 = v60;
        v61 = sub_2520A5448(v59, v60, aBlock);

        *(v54 + 34) = v61;
        _os_log_impl(&dword_25207E000, v52, v3, "[%{public}s] %s retrievePeripherals with identifier %s, peripherals %s", v54, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v55, -1, -1);
        MEMORY[0x253099FD0](v54, -1, -1);
      }

      v10 = v50;
      if (v50 >> 62)
      {
        a2 = sub_25214232C();
        if (a2)
        {
LABEL_15:
          a1 = 0;
          ObjectType = v50 & 0xFFFFFFFFFFFFFF8;
          v115 = v10 & 0xC000000000000001;
          v116 = (v113 + 8);
          while (1)
          {
            if (v115)
            {
              v62 = MEMORY[0x2530993D0](a1, v10);
            }

            else
            {
              if (a1 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_36;
              }

              v62 = *(v10 + 8 * a1 + 32);
            }

            v3 = v62;
            v9 = (a1 + 1);
            if (__OFADD__(a1, 1))
            {
              __break(1u);
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

            v63 = [v62 identifier];
            v64 = v117;
            sub_2521418CC();

            v65 = sub_2521418AC();
            v67 = v66;
            v68 = *v116;
            (*v116)(v64, v119);
            if (v65 == v120 && v67 == v118)
            {
              break;
            }

            v11 = sub_25214247C();

            if (v11)
            {
              goto LABEL_33;
            }

            ++a1;
            if (v9 == a2)
            {
              goto LABEL_39;
            }
          }

LABEL_33:

          v83 = swift_allocObject();
          v84 = v107;
          *(v83 + 16) = v107;
          *(v83 + 24) = v3;
          v85 = swift_allocObject();
          *(v85 + 16) = sub_25210B574;
          *(v85 + 24) = v83;
          aBlock[4] = sub_2520ADA58;
          aBlock[5] = v85;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_252083924;
          aBlock[3] = &block_descriptor_209;
          v86 = _Block_copy(aBlock);
          v87 = v3;
          v88 = v84;

          dispatch_sync(v106, v86);

          _Block_release(v86);
          LOBYTE(v86) = swift_isEscapingClosureAtFileLocation();

          v89 = v119;
          v90 = v108;
          if ((v86 & 1) == 0)
          {
            [v108 connectPeripheral:v87 options:0];

            v68(v111, v89);
            return;
          }

          __break(1u);
          goto LABEL_44;
        }
      }

      else
      {
        a2 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (a2)
        {
          goto LABEL_15;
        }
      }

LABEL_39:
      v91 = v110;

      v92 = v118;

      v93 = sub_25214196C();
      v94 = sub_252141FAC();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        aBlock[0] = v96;
        *v95 = 136446978;
        v97 = sub_2521425DC();
        v99 = sub_2520A5448(v97, v98, aBlock);

        *(v95 + 4) = v99;
        *(v95 + 12) = 2080;
        *(v95 + 14) = sub_2520A5448(v109, v91, aBlock);
        *(v95 + 22) = 2080;
        v100 = sub_2520A5448(v120, v92, aBlock);

        *(v95 + 24) = v100;
        *(v95 + 32) = 2080;
        v101 = MEMORY[0x253098E80](v10, v105);
        v103 = v102;

        v104 = sub_2520A5448(v101, v103, aBlock);

        *(v95 + 34) = v104;
        _os_log_impl(&dword_25207E000, v93, v94, "[%{public}s] %s no peripherals with identifier %s, peripherals %s", v95, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v96, -1, -1);
        MEMORY[0x253099FD0](v95, -1, -1);
      }

      else
      {
      }

      (*(v113 + 8))(v111, v119);
    }

    else
    {

      v76 = sub_25214196C();
      v77 = sub_252141FBC();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        aBlock[0] = v79;
        *v78 = 136446466;
        v80 = sub_2521425DC();
        v82 = sub_2520A5448(v80, v81, aBlock);

        *(v78 + 4) = v82;
        *(v78 + 12) = 2080;
        *(v78 + 14) = sub_2520A5448(a1, a2, aBlock);
        _os_log_impl(&dword_25207E000, v76, v77, "[%{public}s] %s deviceIdentifier missing", v78, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v79, -1, -1);
        MEMORY[0x253099FD0](v78, -1, -1);
      }
    }
  }

  else
  {

    v69 = sub_25214196C();
    v70 = sub_252141FBC();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      aBlock[0] = v72;
      *v71 = 136446466;
      v73 = sub_2521425DC();
      v75 = sub_2520A5448(v73, v74, aBlock);

      *(v71 + 4) = v75;
      *(v71 + 12) = 2080;
      *(v71 + 14) = sub_2520A5448(a1, a2, aBlock);
      _os_log_impl(&dword_25207E000, v69, v70, "[%{public}s] %s centralMgr nil", v71, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v72, -1, -1);
      MEMORY[0x253099FD0](v71, -1, -1);
    }
  }
}

void sub_252101440(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v4 = sub_25214198C();
  __swift_project_value_buffer(v4, qword_27F4CDE68);
  v5 = sub_25214196C();
  v6 = sub_252141FBC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    aBlock[0] = v8;
    *v7 = 136446210;
    v9 = sub_2521425DC();
    v11 = sub_2520A5448(v9, v10, aBlock);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_25207E000, v5, v6, "[%{public}s] centralManagerDidUpdateState.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x253099FD0](v8, -1, -1);
    MEMORY[0x253099FD0](v7, -1, -1);
  }

  v12 = [a1 state];
  oslog = sub_25214196C();
  v13 = sub_252141FBC();
  v14 = os_log_type_enabled(oslog, v13);
  if (v12 <= 2)
  {
    if (!v12)
    {
      if (v14)
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        aBlock[0] = v16;
        *v15 = 136446210;
        v30 = sub_2521425DC();
        v32 = sub_2520A5448(v30, v31, aBlock);

        *(v15 + 4) = v32;
        v20 = "[%{public}s] Central state unknown.";
        goto LABEL_28;
      }

      goto LABEL_29;
    }

    if (v12 != 1)
    {
      if (v12 == 2)
      {
        if (v14)
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          aBlock[0] = v16;
          *v15 = 136446210;
          v17 = sub_2521425DC();
          v19 = sub_2520A5448(v17, v18, aBlock);

          *(v15 + 4) = v19;
          v20 = "[%{public}s] Central state unsupported.";
LABEL_28:
          _os_log_impl(&dword_25207E000, oslog, v13, v20, v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v16);
          MEMORY[0x253099FD0](v16, -1, -1);
          MEMORY[0x253099FD0](v15, -1, -1);

          return;
        }

        goto LABEL_29;
      }

      goto LABEL_22;
    }

    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136446210;
      v39 = sub_2521425DC();
      v41 = sub_2520A5448(v39, v40, aBlock);

      *(v15 + 4) = v41;
      v20 = "[%{public}s] Central state resetting.";
      goto LABEL_28;
    }

LABEL_29:

    return;
  }

  if (v12 == 3)
  {
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136446210;
      v33 = sub_2521425DC();
      v35 = sub_2520A5448(v33, v34, aBlock);

      *(v15 + 4) = v35;
      v20 = "[%{public}s] Central state unauthorized.";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v12 == 4)
  {
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136446210;
      v42 = sub_2521425DC();
      v44 = sub_2520A5448(v42, v43, aBlock);

      *(v15 + 4) = v44;
      v20 = "[%{public}s] Central state poweredOff.";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v12 != 5)
  {
LABEL_22:
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136446210;
      v36 = sub_2521425DC();
      v38 = sub_2520A5448(v36, v37, aBlock);

      *(v15 + 4) = v38;
      v20 = "[%{public}s] Central state unhandled.";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v14)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136446210;
    v23 = sub_2521425DC();
    v25 = sub_2520A5448(v23, v24, aBlock);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_25207E000, oslog, v13, "[%{public}s] Central state poweredOn.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x253099FD0](v22, -1, -1);
    MEMORY[0x253099FD0](v21, -1, -1);
  }

  v26 = *&v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  v27 = swift_allocObject();
  *(v27 + 16) = v2;
  *(v27 + 24) = 1;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_25210B4E0;
  *(v28 + 24) = v27;
  aBlock[4] = sub_2520ADA58;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252083924;
  aBlock[3] = &block_descriptor_199;
  v29 = _Block_copy(aBlock);
  v2;

  dispatch_sync(v26, v29);
  _Block_release(v29);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
  }

  else
  {
    sub_25210064C(0xD00000000000001CLL, 0x800000025214B290);
  }
}

uint64_t sub_252101C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[32] = a6;
  v7[33] = a7;
  v7[30] = a4;
  v7[31] = a5;
  return MEMORY[0x2822009F8](sub_252101C24, 0, 0);
}

uint64_t sub_252101C24()
{
  v12 = v0;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v1 = sub_25214198C();
  *(v0 + 272) = __swift_project_value_buffer(v1, qword_27F4CDE68);
  v2 = sub_25214196C();
  v3 = sub_252141FBC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v6 = sub_2521425DC();
    v8 = sub_2520A5448(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] centralManager notifyLostWaitTask waiting 3 seconds", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x253099FD0](v5, -1, -1);
    MEMORY[0x253099FD0](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  *(v0 + 280) = v9;
  *v9 = v0;
  v9[1] = sub_252101DEC;

  return MEMORY[0x282200480](3000000000);
}

uint64_t sub_252101DEC()
{
  v2 = *v1;
  *(v2 + 288) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_252101F20, 0, 0);
  }
}

uint64_t sub_252101F20()
{
  v51 = v0;
  if (sub_252141E5C())
  {
    goto LABEL_14;
  }

  v1 = sub_25214196C();
  v2 = sub_252141FBC();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 240);
    v3 = *(v0 + 248);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v47[0] = v6;
    *v5 = 136446466;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, v47);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_2520A5448(v4, v3, v47);
    _os_log_impl(&dword_25207E000, v1, v2, "[%{public}s] centralManager notifyLostWaitTask didDisconnectPeripheral %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v10 = *(v0 + 256);
  v11 = *(v10 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
  *(swift_task_alloc() + 16) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F8, &qword_2521467A8);
  sub_25214200C();

  v12 = *(v0 + 224);
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = *(v0 + 232);
  v14 = *(v0 + 256);
  *(swift_task_alloc() + 16) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
  sub_25214200C();

  *(v0 + 76) = *(v0 + 156);
  v15 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v15;
  v16 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v16;
  v18 = *(v0 + 16);
  v17 = *(v0 + 24);
  *&v46[12] = *(v0 + 76);
  v45 = *(v0 + 48);
  *v46 = *(v0 + 64);
  v44 = *(v0 + 32);
  if (!v17)
  {
    sub_2520A1FE4(v12, v13);
    goto LABEL_14;
  }

  v19 = (v0 + 176);

  v20 = sub_25214196C();
  v21 = sub_252141FBC();

  if (os_log_type_enabled(v20, v21))
  {
    v41 = *(v0 + 240);
    v42 = *(v0 + 248);
    v22 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v47[0] = v43;
    *v22 = 136446466;
    v23 = sub_2521425DC();
    v25 = sub_2520A5448(v23, v24, v47);

    *(v22 + 4) = v25;
    v19 = (v0 + 176);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_2520A5448(v41, v42, v47);
    _os_log_impl(&dword_25207E000, v20, v21, "[%{public}s] centralManager didDisconnectPeripheral notifyLostWaitTask notify lostHandler for %s.", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v43, -1, -1);
    MEMORY[0x253099FD0](v22, -1, -1);
  }

  v26 = *(v0 + 256);
  v47[0] = v18;
  v47[1] = v17;
  v48 = v44;
  v49 = v45;
  v50[0] = *v46;
  *(v50 + 12) = *&v46[12];
  v12(v47);
  sub_2520A1FE4(v12, v13);
  sub_2520A2584(v0 + 16, &qword_27F4CE6F0, &qword_2521467A0);
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = 1;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_252110514;
  *(v28 + 24) = v27;
  *(v0 + 208) = sub_2520ADA58;
  *(v0 + 216) = v28;
  *(v0 + 176) = MEMORY[0x277D85DD0];
  *(v0 + 184) = 1107296256;
  *(v0 + 192) = sub_252083924;
  *(v0 + 200) = &block_descriptor_529;
  v29 = _Block_copy(v19);
  v30 = v26;

  dispatch_sync(v11, v29);
  _Block_release(v29);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    v32 = sub_25214196C();
    v33 = sub_252141FAC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v47[0] = v35;
      *v34 = 136446210;
      v36 = sub_2521425DC();
      v38 = sub_2520A5448(v36, v37, v47);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_25207E000, v32, v33, "[%{public}s] centralManager didDisconnectPeripheral notifyLostWaitTask no deviceLostHandler!", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x253099FD0](v35, -1, -1);
      MEMORY[0x253099FD0](v34, -1, -1);
    }
  }

LABEL_14:
  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_252102548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE740, &qword_2521467E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2520A2D9C(a3, v22 - v9, &qword_27F4CE740, &qword_2521467E0);
  v11 = sub_252141E3C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2520A2584(v10, &qword_27F4CE740, &qword_2521467E0);
  }

  else
  {
    sub_252141E2C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_252141DEC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_252141BDC() + 32;

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

      sub_2520A2584(a3, &qword_27F4CE740, &qword_2521467E0);

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

  sub_2520A2584(a3, &qword_27F4CE740, &qword_2521467E0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_25210287C()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
  v0 = sub_25214200C();
  v1 = v33;
  v2 = v34;
  v38 = v35;
  v39 = v36;
  v40[0] = v37[0];
  *(v40 + 12) = *(v37 + 12);
  if (!v34)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v14 = sub_25214198C();
    __swift_project_value_buffer(v14, qword_27F4CDE68);
    v15 = sub_25214196C();
    v16 = sub_252141FAC();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_17;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136446210;
    v19 = sub_2521425DC();
    v21 = sub_2520A5448(v19, v20, &v28);

    *(v17 + 4) = v21;
    v22 = "[%{public}s] Failed to reset HT_MODE, but we don't have a device either";
    goto LABEL_16;
  }

  MEMORY[0x28223BE20](v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F8, &qword_2521467A8);
  sub_25214200C();
  v3 = v28;
  if (!v28)
  {
    sub_2520A2584(&v33, &qword_27F4CE6F0, &qword_2521467A0);
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v23 = sub_25214198C();
    __swift_project_value_buffer(v23, qword_27F4CDE68);
    v15 = sub_25214196C();
    v16 = sub_252141FAC();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_17;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136446210;
    v24 = sub_2521425DC();
    v26 = sub_2520A5448(v24, v25, &v28);

    *(v17 + 4) = v26;
    v22 = "[%{public}s] No deviceLostHandler set";
LABEL_16:
    _os_log_impl(&dword_25207E000, v15, v16, v22, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x253099FD0](v18, -1, -1);
    MEMORY[0x253099FD0](v17, -1, -1);
LABEL_17:

    return;
  }

  v4 = v29;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v5 = sub_25214198C();
  __swift_project_value_buffer(v5, qword_27F4CDE68);
  v6 = sub_25214196C();
  v7 = sub_252141FAC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v8 = 136446210;
    v9 = sub_2521425DC();
    v11 = v4;
    v12 = v1;
    v13 = sub_2520A5448(v9, v10, &v28);

    *(v8 + 4) = v13;
    v1 = v12;
    v4 = v11;
    _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] Notifying lostHandler due to HT_Mode not set.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x253099FD0](v27, -1, -1);
    MEMORY[0x253099FD0](v8, -1, -1);
  }

  v28 = v1;
  v29 = v2;
  v30 = v38;
  v31 = v39;
  v32[0] = v40[0];
  *(v32 + 12) = *(v40 + 12);
  v3(&v28);
  sub_2520A1FE4(v3, v4);
  sub_2520A2584(&v33, &qword_27F4CE6F0, &qword_2521467A0);
}

uint64_t sub_252102D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x2822009F8](sub_252102D50, 0, 0);
}

uint64_t sub_252102D50()
{
  v12 = v0;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v1 = sub_25214198C();
  *(v0 + 80) = __swift_project_value_buffer(v1, qword_27F4CDE68);
  v2 = sub_25214196C();
  v3 = sub_252141FAC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v6 = sub_2521425DC();
    v8 = sub_2520A5448(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] HT_MODE mode lost, resetting", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x253099FD0](v5, -1, -1);
    MEMORY[0x253099FD0](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_252102F2C;

  return sub_2521085B4(1, &unk_28644E570, &unk_28644E598, 4, 4);
}

uint64_t sub_252102F2C(char a1)
{
  *(*v1 + 97) = a1;

  return MEMORY[0x2822009F8](sub_25210302C, 0, 0);
}

uint64_t sub_25210302C()
{
  v25 = v0;
  if (*(v0 + 97) == 1)
  {
    v1 = *(v0 + 64);
    v2 = *(v1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
    *(swift_task_alloc() + 16) = v1;
    sub_25214200C();

    v3 = *(v0 + 96);
    v4 = sub_25214196C();
    v5 = sub_252141FAC();
    v6 = os_log_type_enabled(v4, v5);
    if (v3)
    {
      if (v6)
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v24[0] = v8;
        *v7 = 136446210;
        v9 = sub_2521425DC();
        v11 = sub_2520A5448(v9, v10, v24);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] Already forced fit check", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x253099FD0](v8, -1, -1);
        MEMORY[0x253099FD0](v7, -1, -1);
      }
    }

    else
    {
      if (v6)
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v24[0] = v13;
        *v12 = 136446210;
        v14 = sub_2521425DC();
        v16 = sub_2520A5448(v14, v15, v24);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] Forcing fit test 💔", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x253099FD0](v13, -1, -1);
        MEMORY[0x253099FD0](v12, -1, -1);
      }

      v17 = *(v0 + 64);
      sub_252103454();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = 1;
      v19 = swift_allocObject();
      *(v19 + 16) = sub_252110510;
      *(v19 + 24) = v18;
      *(v0 + 48) = sub_2520ADA58;
      *(v0 + 56) = v19;
      *(v0 + 16) = MEMORY[0x277D85DD0];
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_252083924;
      *(v0 + 40) = &block_descriptor_508_0;
      v20 = _Block_copy((v0 + 16));
      v21 = v17;

      dispatch_sync(v2, v20);
      _Block_release(v20);
      LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

      if (v17)
      {
        __break(1u);
        return result;
      }
    }
  }

  else
  {
    sub_25210287C();
  }

  v23 = *(v0 + 8);

  return v23();
}

void *sub_252103454()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6E8, &qword_252146798);
  result = sub_25214200C();
  if (v5)
  {
    MEMORY[0x28223BE20](result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
    sub_25214200C();
    v1 = v5;
    v2 = v6;
    v3 = v7;
    v4[0] = v8[0];
    *(v4 + 12) = *(v8 + 12);
    if (*(&v5 + 1))
    {
      *&v5 = v1;
      v6 = v2;
      v7 = v3;
      v8[0] = v4[0];
      *(v8 + 12) = *(v4 + 12);
      sub_252117834(&v5);

      return sub_2520A2584(&v1, &qword_27F4CE6F0, &qword_2521467A0);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2521036C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_252141A4C();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_252141A8C();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_centralMgrQueue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_2521106E4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_185;
  v14 = _Block_copy(aBlock);

  sub_252141A6C();
  v19 = MEMORY[0x277D84F90];
  sub_252110218(&qword_27F4CE090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0, MEMORY[0x277D83970]);
  sub_25214218C();
  MEMORY[0x2530991B0](0, v11, v8, v14);
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

void sub_2521039E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_252103A54(a2, a3);
  }
}

void sub_252103A54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v69 = a1;
  v70 = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_252141ACC();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v8 = (&v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27F4CD7A8 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    if (byte_27F4D3491 == 1)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v9 = sub_25214198C();
      __swift_project_value_buffer(v9, qword_27F4CDE68);
      v10 = sub_25214196C();
      v11 = sub_252141FBC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = v4;
        v14 = swift_slowAlloc();
        v72[0] = v14;
        *v12 = 136446210;
        v15 = sub_2521425DC();
        v17 = sub_2520A5448(v15, v16, v72);

        *(v12 + 4) = v17;
        _os_log_impl(&dword_25207E000, v10, v11, "[%{public}s] readCharacteristic", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        v18 = v14;
        v4 = v13;
        MEMORY[0x253099FD0](v18, -1, -1);
        MEMORY[0x253099FD0](v12, -1, -1);
      }
    }

    MEMORY[0x28223BE20](v6);
    *(&v59 - 2) = v3;
    v19 = sub_25214200C();
    if (LOBYTE(v72[0]) == 1)
    {
      v20 = *(v3 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_centralMgrQueue);
      *v8 = v20;
      (v5[13])(v8, *MEMORY[0x277D85200], v4);
      v21 = v20;
      v22 = sub_252141AFC();
      v19 = (v5[1])(v8, v4);
      if ((v22 & 1) == 0)
      {
        __break(1u);
        goto LABEL_61;
      }
    }

    MEMORY[0x28223BE20](v19);
    *(&v59 - 2) = v3;
    v23 = sub_25214200C();
    if (LOBYTE(v72[0]) == 1)
    {
      if (qword_27F4CD708 == -1)
      {
LABEL_12:
        v24 = sub_25214198C();
        __swift_project_value_buffer(v24, qword_27F4CDE68);
        v25 = sub_25214196C();
        v26 = sub_252141FAC();
        if (!os_log_type_enabled(v25, v26))
        {
LABEL_53:

          return;
        }

        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v72[0] = v28;
        *v27 = 136446210;
        v29 = sub_2521425DC();
        v31 = sub_2520A5448(v29, v30, v72);

        *(v27 + 4) = v31;
        v32 = "[%{public}s] Device Lost, cannot read characteristic";
LABEL_52:
        _os_log_impl(&dword_25207E000, v25, v26, v32, v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x253099FD0](v28, -1, -1);
        MEMORY[0x253099FD0](v27, -1, -1);
        goto LABEL_53;
      }

LABEL_61:
      swift_once();
      goto LABEL_12;
    }

    v5 = &v59;
    MEMORY[0x28223BE20](v23);
    *(&v59 - 2) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6B8, &unk_252146B20);
    sub_25214200C();
    v33 = v72[0];
    if (!v72[0])
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v55 = sub_25214198C();
      __swift_project_value_buffer(v55, qword_27F4CDE68);
      v25 = sub_25214196C();
      v26 = sub_252141FAC();
      if (!os_log_type_enabled(v25, v26))
      {
        goto LABEL_53;
      }

      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v72[0] = v28;
      *v27 = 136446210;
      v56 = sub_2521425DC();
      v58 = sub_2520A5448(v56, v57, v72);

      *(v27 + 4) = v58;
      v32 = "[%{public}s] Failed to get peripheral for readCharacteristic";
      goto LABEL_52;
    }

    v34 = [v72[0] services];
    if (!v34)
    {

      return;
    }

    v3 = v34;
    v60 = v33;
    sub_2520A5A94(0, &qword_27F4CE6C0, 0x277CBE098);
    v35 = sub_252141CDC();

    if (!(v35 >> 62))
    {
      v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v37)
      {
        break;
      }

      goto LABEL_18;
    }

    v37 = sub_25214232C();
    if (!v37)
    {
      break;
    }

LABEL_18:
    v38 = 0;
    v66 = v35 & 0xC000000000000001;
    v61 = v35 + 32;
    v62 = v35 & 0xFFFFFFFFFFFFFF8;
    *&v36 = 136446466;
    v59 = v36;
    v64 = v37;
    v65 = v35;
    while (1)
    {
      if (v66)
      {
        v39 = MEMORY[0x2530993D0](v38, v35);
      }

      else
      {
        if (v38 >= *(v62 + 16))
        {
          goto LABEL_58;
        }

        v39 = *(v61 + 8 * v38);
      }

      v5 = v39;
      if (__OFADD__(v38++, 1))
      {
        break;
      }

      v41 = [v39 characteristics];
      if (v41)
      {
        v3 = v41;
        v67 = v5;
        v68 = v38;
        sub_2520A5A94(0, &qword_27F4CE6C8, 0x277CBE000);
        v42 = sub_252141CDC();

        if (v42 >> 62)
        {
          v8 = sub_25214232C();
          if (v8)
          {
LABEL_28:
            v3 = 0;
            v71 = v42 & 0xC000000000000001;
            while (1)
            {
              if (v71)
              {
                v43 = MEMORY[0x2530993D0](v3, v42);
              }

              else
              {
                if (v3 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_56;
                }

                v43 = *(v42 + 8 * v3 + 32);
              }

              v44 = v43;
              v45 = (v3 + 1);
              if (__OFADD__(v3, 1))
              {
                __break(1u);
LABEL_56:
                __break(1u);
                goto LABEL_57;
              }

              sub_2520A5A94(0, &unk_27F4CE6D0, 0x277D82BB8);
              v4 = [v44 UUID];
              v5 = sub_252141B6C();
              v46 = [objc_opt_self() UUIDWithString_];

              v47 = sub_25214210C();
              if (v47)
              {
                break;
              }

              ++v3;
              if (v45 == v8)
              {
                goto LABEL_45;
              }
            }

            v35 = v65;
            if (byte_27F4D3491 == 1)
            {
              if (qword_27F4CD708 != -1)
              {
                swift_once();
              }

              v48 = sub_25214198C();
              __swift_project_value_buffer(v48, qword_27F4CDE68);
              v49 = v44;
              v3 = sub_25214196C();
              v8 = sub_252141FBC();

              if (os_log_type_enabled(v3, v8))
              {
                v50 = swift_slowAlloc();
                v5 = swift_slowAlloc();
                v51 = swift_slowAlloc();
                v72[0] = v51;
                *v50 = v59;
                v52 = sub_2521425DC();
                v4 = sub_2520A5448(v52, v53, v72);

                *(v50 + 4) = v4;
                *(v50 + 12) = 2112;
                *(v50 + 14) = v49;
                *v5 = v49;
                v54 = v49;
                _os_log_impl(&dword_25207E000, v3, v8, "[%{public}s] peripheral readCharacteristic %@.", v50, 0x16u);
                sub_2520A2584(v5, &unk_27F4CE080, &qword_252144E30);
                MEMORY[0x253099FD0](v5, -1, -1);
                __swift_destroy_boxed_opaque_existential_0(v51);
                MEMORY[0x253099FD0](v51, -1, -1);
                MEMORY[0x253099FD0](v50, -1, -1);
              }
            }

            [v60 readValueForCharacteristic_];

            goto LABEL_46;
          }
        }

        else
        {
          v8 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8)
          {
            goto LABEL_28;
          }
        }

LABEL_45:

        v35 = v65;
LABEL_46:
        v37 = v64;
        v38 = v68;
        if (v68 == v64)
        {
          goto LABEL_63;
        }
      }

      else
      {

        if (v38 == v37)
        {
          goto LABEL_63;
        }
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v6 = swift_once();
  }

LABEL_63:
}

uint64_t sub_252104450(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_252141A4C();
  v21 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_252141A8C();
  v12 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v4 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_centralMgrQueue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a4;
  aBlock[4] = sub_252110358;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_588;
  v17 = _Block_copy(aBlock);

  sub_2520CBC7C(a1, a2);

  sub_252141A6C();
  v22 = MEMORY[0x277D84F90];
  sub_252110218(&qword_27F4CE090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0, MEMORY[0x277D83970]);
  sub_25214218C();
  MEMORY[0x2530991B0](0, v14, v11, v17);
  _Block_release(v17);
  (*(v21 + 8))(v11, v9);
  (*(v12 + 8))(v14, v20);
}

void sub_252104784(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_25210480C(a2, a3, a4, a5);
  }
}

void sub_25210480C(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v119 = a3;
  v120 = a4;
  v124[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v8 = sub_252141ACC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = (&v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27F4CD7A8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    v10 = swift_once();
LABEL_2:
    v118 = a1;
    if (byte_27F4D3491 == 1)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v13 = sub_25214198C();
      __swift_project_value_buffer(v13, qword_27F4CDE68);
      v14 = sub_25214196C();
      v15 = sub_252141FBC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v122 = v117;
        *v16 = 136446210;
        v17 = sub_2521425DC();
        v19 = a2;
        v20 = sub_2520A5448(v17, v18, &v122);

        *(v16 + 4) = v20;
        a2 = v19;
        _os_log_impl(&dword_25207E000, v14, v15, "[%{public}s] writeCharacteristic requested", v16, 0xCu);
        v21 = v117;
        __swift_destroy_boxed_opaque_existential_0(v117);
        MEMORY[0x253099FD0](v21, -1, -1);
        MEMORY[0x253099FD0](v16, -1, -1);
      }
    }

    v113 = a2;
    MEMORY[0x28223BE20](v10);
    *(&v91 - 2) = v5;
    v22 = sub_25214200C();
    if (v122 == 1)
    {
      v23 = *(v5 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_centralMgrQueue);
      *v12 = v23;
      (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
      v24 = v23;
      v25 = sub_252141AFC();
      v22 = (*(v9 + 8))(v12, v8);
      if ((v25 & 1) == 0)
      {
        break;
      }
    }

    MEMORY[0x28223BE20](v22);
    *(&v91 - 2) = v5;
    v26 = sub_25214200C();
    if (v122 == 1)
    {
      if (qword_27F4CD708 != -1)
      {
        goto LABEL_111;
      }

      goto LABEL_12;
    }

    MEMORY[0x28223BE20](v26);
    *(&v91 - 2) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6B8, &unk_252146B20);
    sub_25214200C();
    if (!v122)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v39 = sub_25214198C();
      __swift_project_value_buffer(v39, qword_27F4CDE68);
      v40 = sub_25214196C();
      v41 = sub_252141FAC();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v122 = v43;
        *v42 = 136446210;
        v44 = sub_2521425DC();
        v46 = sub_2520A5448(v44, v45, &v122);

        *(v42 + 4) = v46;
        _os_log_impl(&dword_25207E000, v40, v41, "[%{public}s] Failed to get peripheral for writeCharacteristic", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x253099FD0](v43, -1, -1);
        MEMORY[0x253099FD0](v42, -1, -1);
      }

LABEL_115:
      if (byte_27F4D3491 == 1)
      {
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v87 = sub_25214198C();
        __swift_project_value_buffer(v87, qword_27F4CDE68);
        v28 = sub_25214196C();
        v29 = sub_252141FBC();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v122 = v31;
          *v30 = 136446210;
          v88 = sub_2521425DC();
          v90 = sub_2520A5448(v88, v89, &v122);

          *(v30 + 4) = v90;
          v35 = "[%{public}s] writeCharacteristic complete";
LABEL_120:
          _os_log_impl(&dword_25207E000, v28, v29, v35, v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v31);
          MEMORY[0x253099FD0](v31, -1, -1);
          MEMORY[0x253099FD0](v30, -1, -1);
        }

        goto LABEL_121;
      }

      return;
    }

    v102 = v122;
    v36 = [v122 name];
    if (v36)
    {
      v37 = v36;
      v98 = sub_252141B9C();
      v105 = v38;
    }

    else
    {
      v105 = 0xEE0029656D616E20;
      v98 = 0x676E697373696D28;
    }

    v47 = v113;
    a2 = v118;
    a1 = v102;
    v48 = [v102 services];
    if (!v48)
    {

      goto LABEL_115;
    }

    v49 = v48;
    sub_2520A5A94(0, &qword_27F4CE6C0, 0x277CBE098);
    v9 = sub_252141CDC();

    if (!(v9 >> 62))
    {
      v5 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_114;
      }

      goto LABEL_26;
    }

LABEL_113:
    v5 = sub_25214232C();
    if (!v5)
    {
LABEL_114:

      goto LABEL_115;
    }

LABEL_26:
    v8 = 0;
    v112 = v9 & 0xC000000000000001;
    v101 = v9 & 0xFFFFFFFFFFFFFF8;
    v100 = v9 + 32;
    v117 = (v47 >> 62);
    v106 = HIDWORD(a2);
    v51 = __OFSUB__(HIDWORD(a2), a2);
    v93 = v51;
    v92 = HIDWORD(a2) - a2;
    v110 = a2;
    v111 = BYTE6(v47);
    v107 = a2 >> 32;
    *&v50 = 136446978;
    v96 = v50;
    v116 = xmmword_252143AC0;
    v104 = v9;
    v103 = v5;
    while (1)
    {
      while (1)
      {
        if (v112)
        {
          v52 = MEMORY[0x2530993D0](v8, v9);
        }

        else
        {
          if (v8 >= *(v101 + 16))
          {
            goto LABEL_108;
          }

          v52 = *(v100 + 8 * v8);
        }

        v53 = v52;
        if (__OFADD__(v8++, 1))
        {
          goto LABEL_101;
        }

        v55 = [v52 characteristics];
        if (v55)
        {
          break;
        }

        if (v8 == v5)
        {
          goto LABEL_114;
        }
      }

      a1 = v55;
      v114 = v53;
      v115 = v8;
      sub_2520A5A94(0, &qword_27F4CE6C8, 0x277CBE000);
      v56 = sub_252141CDC();

      if (byte_27F4D3491 == 1)
      {
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v57 = sub_25214198C();
        a1 = __swift_project_value_buffer(v57, qword_27F4CDE68);
        sub_2520CBC7C(a2, v47);

        v9 = v105;

        v8 = sub_25214196C();
        v58 = sub_252141FBC();
        sub_2520CB598(a2, v47);

        if (!os_log_type_enabled(v8, v58))
        {
          goto LABEL_79;
        }

        v9 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v124[0] = v59;
        *v9 = v96;
        v60 = sub_2521425DC();
        a2 = sub_2520A5448(v60, v61, v124);

        *(v9 + 4) = a2;
        *(v9 + 12) = 2080;
        v62 = v117;
        v99 = v59;
        if (v117 <= 1)
        {
          v97 = v9;
          v9 = v111;
          if (v117)
          {
            v9 = v92;
            if (v93)
            {
              goto LABEL_124;
            }
          }

          if (v9)
          {
            goto LABEL_45;
          }

LABEL_51:
          a2 = MEMORY[0x277D84F90];
LABEL_77:
          v9 = v97;
LABEL_78:
          v122 = a2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6E0, &qword_252144530);
          sub_2520A2F1C(&qword_27F4CDE60, &qword_27F4CE6E0, &qword_252144530, MEMORY[0x277D83958]);
          v12 = sub_252141B3C();
          v82 = v81;

          v122 = 30768;
          v123 = 0xE200000000000000;
          MEMORY[0x253098DA0](v12, v82);

          a1 = v123;
          v83 = sub_2520A5448(v122, v123, v124);

          *(v9 + 14) = v83;
          *(v9 + 22) = 2080;
          *(v9 + 24) = sub_2520A5448(v119, v120, v124);
          *(v9 + 32) = 2080;
          *(v9 + 34) = sub_2520A5448(v98, v105, v124);
          _os_log_impl(&dword_25207E000, v8, v58, "[%{public}s] peripheral writeCharacteristic %s for %s to %s", v9, 0x2Au);
          v84 = v99;
          swift_arrayDestroy();
          MEMORY[0x253099FD0](v84, -1, -1);
          MEMORY[0x253099FD0](v9, -1, -1);
LABEL_79:

          goto LABEL_80;
        }

        if (v117 != 2)
        {
          a2 = MEMORY[0x277D84F90];
          goto LABEL_78;
        }

        v97 = v9;
        v64 = *(v118 + 16);
        v63 = *(v118 + 24);
        v9 = v63 - v64;
        if (__OFSUB__(v63, v64))
        {
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
        }

        v62 = v117;
        if (!v9)
        {
          goto LABEL_51;
        }

LABEL_45:
        v95 = v8;
        v121 = MEMORY[0x277D84F90];
        a1 = &v121;
        v5 = v62;
        sub_25209B354(0, v9 & ~(v9 >> 63), 0);
        if (v5)
        {
          v8 = v110;
          if (v5 == 2)
          {
            v8 = *(v118 + 16);
          }
        }

        else
        {
          v8 = 0;
        }

        v94 = v58;
        if ((v9 & 0x8000000000000000) == 0)
        {
          v65 = 0;
          a2 = v121;
          v109 = &v122 + v8;
          v66 = v117;
          while (1)
          {
            if (v65 >= v9)
            {
              goto LABEL_99;
            }

            v67 = v65 + 1;
            if (__OFADD__(v65, 1))
            {
              goto LABEL_100;
            }

            v5 = v8 + v65;
            if (v66 == 2)
            {
              if (v5 < *(v118 + 16))
              {
                goto LABEL_102;
              }

              if (v5 >= *(v118 + 24))
              {
                goto LABEL_105;
              }

              v71 = sub_25214173C();
              if (!v71)
              {
                goto LABEL_126;
              }

              v12 = v71;
              a1 = v47 & 0x3FFFFFFFFFFFFFFFLL;
              v72 = sub_25214175C();
              v70 = v5 - v72;
              if (__OFSUB__(v5, v72))
              {
                goto LABEL_107;
              }
            }

            else
            {
              if (v66 != 1)
              {
                if (v5 >= v111)
                {
                  goto LABEL_103;
                }

                LODWORD(v122) = v118;
                BYTE4(v122) = v106;
                *(&v122 + 5) = *(&v118 + 5);
                HIBYTE(v122) = HIBYTE(v118);
                LOWORD(v123) = v47;
                BYTE2(v123) = BYTE2(v47);
                BYTE3(v123) = BYTE3(v47);
                BYTE4(v123) = BYTE4(v47);
                BYTE5(v123) = BYTE5(v47);
                v73 = v109[v65];
                goto LABEL_73;
              }

              if (v5 < v110 || v5 >= v107)
              {
                goto LABEL_104;
              }

              v68 = sub_25214173C();
              if (!v68)
              {
                goto LABEL_125;
              }

              v12 = v68;
              a1 = v47 & 0x3FFFFFFFFFFFFFFFLL;
              v69 = sub_25214175C();
              v70 = v5 - v69;
              if (__OFSUB__(v5, v69))
              {
                goto LABEL_106;
              }
            }

            v73 = *(v12 + v70);
LABEL_73:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB0, &unk_252143BA0);
            v74 = swift_allocObject();
            *(v74 + 16) = v116;
            *(v74 + 56) = MEMORY[0x277D84B78];
            *(v74 + 64) = MEMORY[0x277D84BC0];
            *(v74 + 32) = v73;
            v75 = sub_252141BAC();
            v121 = a2;
            v5 = *(a2 + 16);
            v77 = *(a2 + 24);
            v12 = (v5 + 1);
            if (v5 >= v77 >> 1)
            {
              a1 = &v121;
              v79 = v75;
              v80 = v76;
              sub_25209B354((v77 > 1), v5 + 1, 1);
              v76 = v80;
              v47 = v113;
              v75 = v79;
              a2 = v121;
            }

            *(a2 + 16) = v12;
            v78 = a2 + 16 * v5;
            *(v78 + 32) = v75;
            *(v78 + 40) = v76;
            ++v65;
            v66 = v117;
            if (v67 == v9)
            {
              v8 = v95;
              LOBYTE(v58) = v94;
              goto LABEL_77;
            }
          }
        }

        __break(1u);
        goto LABEL_113;
      }

LABEL_80:
      a2 = 0;
      v5 = v56 & 0xC000000000000001;
      if (!(v56 >> 62))
      {
LABEL_81:
        if (a2 == *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_92;
        }

        break;
      }

LABEL_83:
      if (a2 != sub_25214232C())
      {
        break;
      }

LABEL_92:

      v47 = v113;
      a2 = v118;
LABEL_94:
      v9 = v104;
      v5 = v103;
      v8 = v115;
      if (v115 == v103)
      {
        goto LABEL_114;
      }
    }

    if (v5)
    {
      v85 = MEMORY[0x2530993D0](a2, v56);
    }

    else
    {
      if (a2 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_98;
      }

      v85 = *(v56 + 8 * a2 + 32);
    }

    v12 = v85;
    if (!__OFADD__(a2, 1))
    {
      sub_2520A5A94(0, &unk_27F4CE6D0, 0x277D82BB8);
      v86 = [v12 UUID];
      v8 = sub_252141B6C();
      v9 = [objc_opt_self() UUIDWithString_];

      a1 = sub_25214210C();
      if (a1)
      {

        a2 = v118;
        v47 = v113;
        a1 = sub_25214183C();
        [v102 writeValue:a1 forCharacteristic:v12 type:1];

        goto LABEL_94;
      }

      ++a2;
      if (!(v56 >> 62))
      {
        goto LABEL_81;
      }

      goto LABEL_83;
    }

    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
  }

  __break(1u);
LABEL_111:
  swift_once();
LABEL_12:
  v27 = sub_25214198C();
  __swift_project_value_buffer(v27, qword_27F4CDE68);
  v28 = sub_25214196C();
  v29 = sub_252141FAC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v122 = v31;
    *v30 = 136446210;
    v32 = sub_2521425DC();
    v34 = sub_2520A5448(v32, v33, &v122);

    *(v30 + 4) = v34;
    v35 = "[%{public}s] Device Lost, cannot write characteristic.";
    goto LABEL_120;
  }

LABEL_121:
}

void sub_2521058D0(uint64_t *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_27F4CD7A0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3490 & 1) != 0 || (sub_2520F8B10(a1))
  {
    goto LABEL_9;
  }

  v4 = *a1;
  v5 = a1[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (v7 = *(v2 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_loggedDeviceLock), [v7 lock], v8 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_loggedDevices, swift_beginAccess(), v9 = *(v2 + v8), , v10 = sub_252112E30(v4, v5, v9), , objc_msgSend(v7, sel_unlock), (v10 & 1) == 0))
  {
LABEL_9:
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v11 = sub_25214198C();
    __swift_project_value_buffer(v11, qword_27F4CDE68);
    sub_25210AC9C(a1, v24);
    v12 = sub_25214196C();
    v13 = sub_252141FBC();
    sub_25210ACF8(a1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24[0] = v15;
      *v14 = 136446466;
      v16 = sub_2521425DC();
      v18 = sub_2520A5448(v16, v17, v24);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_2520A5448(a1[2], a1[3], v24);
      _os_log_impl(&dword_25207E000, v12, v13, "[%{public}s] remembering as ineligible device: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v15, -1, -1);
      MEMORY[0x253099FD0](v14, -1, -1);
    }
  }

  v20 = *a1;
  v19 = a1[1];
  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v22 = *(v2 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_ineligableLock);

    [v22 lock];
    swift_beginAccess();
    sub_25213ECFC(&v23, v20, v19);
    swift_endAccess();

    [v22 unlock];
  }
}

uint64_t sub_252105BD0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_ineligableLock);
  [v5 lock];
  v6 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_ineligibleAirPods;
  swift_beginAccess();
  v7 = *(v2 + v6);

  LOBYTE(a2) = sub_252112E30(a1, a2, v7);

  [v5 unlock];
  if ((a2 & 1) == 0 || sub_252105DF4() < 2)
  {
    return 0;
  }

  if (qword_27F4CD7A0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3490 == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v8 = sub_25214198C();
    __swift_project_value_buffer(v8, qword_27F4CDE68);
    v9 = sub_25214196C();
    v10 = sub_252141FBC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136446210;
      v13 = sub_2521425DC();
      v15 = sub_2520A5448(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_25207E000, v9, v10, "[%{public}s] ignore known bad AirPods, search for next candidate", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x253099FD0](v12, -1, -1);
      MEMORY[0x253099FD0](v11, -1, -1);
    }
  }

  return 1;
}

char *sub_252105DF4()
{
  swift_getObjectType();
  sub_2520A5A94(0, &qword_27F4CE6A8, 0x277CBE030);
  sub_25214200C();
  v0 = [v25[0] discoveredDevices];

  sub_2520A5A94(0, &qword_27F4CE6B0, 0x277CBE020);
  v1 = sub_252141CDC();

  if (v1 >> 62)
  {
LABEL_23:
    v2 = sub_25214232C();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v23 = objc_opt_self();
      if (v2 >= 1)
      {
        v0 = 0;
        v3 = 0;
        while (1)
        {
          v5 = (v1 & 0xC000000000000001) != 0 ? MEMORY[0x2530993D0](v3, v1) : *(v1 + 8 * v3 + 32);
          v6 = v5;
          sub_25212CC7C(v6, v25);

          v7 = [v23 mainBundle];
          v8 = [v7 bundleIdentifier];

          if (!v8)
          {
            break;
          }

          v9 = sub_252141B9C();
          v11 = v10;

          if (v9 == 0xD00000000000002ALL && 0x800000025214B260 == v11)
          {

            sub_25210ACF8(v25);
          }

          else
          {
            v13 = sub_25214247C();

            sub_25210ACF8(v25);
            if ((v13 & 1) == 0)
            {
              if ((v27 & 1) == 0)
              {
                goto LABEL_7;
              }

LABEL_20:
              if (v26 != 1)
              {
                goto LABEL_7;
              }
            }
          }

          if (__OFADD__(v0++, 1))
          {
            __break(1u);
            goto LABEL_23;
          }

LABEL_7:
          if (v2 == ++v3)
          {
            goto LABEL_25;
          }
        }

        sub_25210ACF8(v25);
        if ((v27 & 1) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_34;
    }
  }

  v0 = 0;
LABEL_25:

  if (qword_27F4CD7A0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3490 == 1)
  {
    if (qword_27F4CD708 == -1)
    {
LABEL_29:
      v14 = sub_25214198C();
      __swift_project_value_buffer(v14, qword_27F4CDE68);
      v15 = sub_25214196C();
      v16 = sub_252141FBC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v24 = v18;
        *v17 = 136446466;
        v19 = sub_2521425DC();
        v21 = sub_2520A5448(v19, v20, &v24);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2048;
        *(v17 + 14) = v0;
        _os_log_impl(&dword_25207E000, v15, v16, "[%{public}s] available hearing test device count : %ld", v17, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x253099FD0](v18, -1, -1);
        MEMORY[0x253099FD0](v17, -1, -1);
      }

      return v0;
    }

LABEL_34:
    swift_once();
    goto LABEL_29;
  }

  return v0;
}

uint64_t sub_2521061E8(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v2[21] = swift_getObjectType();
  v3 = sub_252141A4C();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v4 = sub_252141A8C();
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252106310, 0, 0);
}

uint64_t sub_252106310()
{
  v71 = v0;
  v1 = sub_2520F8D94();
  v3 = v2;
  v0[28] = v1;
  v0[29] = v2;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v4 = sub_25214198C();
  v0[30] = __swift_project_value_buffer(v4, qword_27F4CDE68);

  v5 = sub_25214196C();
  v6 = sub_252141FBC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v70[0] = v8;
    *v7 = 136446466;
    v9 = sub_2521425DC();
    v11 = sub_2520A5448(v9, v10, v70);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_2520A5448(v1, v3, v70);
    _os_log_impl(&dword_25207E000, v5, v6, "[%{public}s] readHearingTestStatus requested from %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v8, -1, -1);
    MEMORY[0x253099FD0](v7, -1, -1);
  }

  v12 = v0[20];
  v13 = *&v12[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  v0[31] = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = xmmword_252146680;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_25210B0A8;
  *(v15 + 24) = v14;
  v0[6] = sub_2520AD484;
  v0[7] = v15;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_252083924;
  v0[5] = &block_descriptor_8;
  v16 = _Block_copy(v0 + 2);
  v17 = v12;

  dispatch_sync(v13, v16);
  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
    return MEMORY[0x282200480](v18);
  }

  v19 = v0[19];
  v20 = v0[20];
  if (v19 <= 1)
  {
    v19 = 1;
  }

  v0[32] = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_centralMgrQueue;
  v0[33] = v19;
  v0[34] = 0;
  *(swift_task_alloc() + 16) = v20;
  v0[35] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4CE698, &unk_252146788);
  sub_25214200C();

  v21 = v0[15];
  if (v21 >> 60 == 15)
  {

    v22 = sub_25214196C();
    v23 = sub_252141FBC();

    if (os_log_type_enabled(v22, v23))
    {
      v25 = v0[28];
      v24 = v0[29];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v70[0] = v27;
      *v26 = 136446466;
      v28 = sub_2521425DC();
      v30 = sub_2520A5448(v28, v29, v70);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_2520A5448(v25, v24, v70);
      _os_log_impl(&dword_25207E000, v22, v23, "[%{public}s] readHearingTestStatus mode from %s is nil, wait for 1 second ", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v27, -1, -1);
      MEMORY[0x253099FD0](v26, -1, -1);
    }

    v31 = v0[27];
    v68 = v0[26];
    v69 = v0[25];
    v66 = v0[24];
    v32 = v0[22];
    v67 = v0[23];
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = 0xD000000000000024;
    v34[4] = 0x8000000252149ED0;
    v0[12] = sub_25210B128;
    v0[13] = v34;
    v0[8] = MEMORY[0x277D85DD0];
    v0[9] = 1107296256;
    v0[10] = sub_2520A3B78;
    v0[11] = &block_descriptor_172;
    v35 = _Block_copy(v0 + 8);

    sub_252141A6C();
    v0[18] = MEMORY[0x277D84F90];
    sub_252110218(&qword_27F4CE090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
    sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0, MEMORY[0x277D83970]);
    sub_25214218C();
    MEMORY[0x2530991B0](0, v31, v66, v35);
    _Block_release(v35);
    (*(v67 + 8))(v66, v32);
    (*(v68 + 8))(v31, v69);

    v36 = swift_task_alloc();
    v0[36] = v36;
    *v36 = v0;
    v36[1] = sub_252106D68;
    v18 = 1000000000;

    return MEMORY[0x282200480](v18);
  }

  sub_25210B134(v0[14], v21);
  v37 = v0[20];
  *(swift_task_alloc() + 16) = v37;
  sub_25214200C();

  v38 = v0[17];
  if (v38 >> 60 == 15 || (v39 = v0[16], v40 = sub_2520F7D5C(v39, v0[17]), sub_25210B134(v39, v38), (v40 & 0x100) != 0))
  {

    v52 = sub_25214196C();
    v53 = sub_252141FAC();

    v54 = os_log_type_enabled(v52, v53);
    v55 = v0[29];
    if (v54)
    {
      v56 = v0[28];
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v70[0] = v58;
      *v57 = 136446466;
      v59 = sub_2521425DC();
      v61 = sub_2520A5448(v59, v60, v70);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2080;
      v62 = sub_2520A5448(v56, v55, v70);

      *(v57 + 14) = v62;
      _os_log_impl(&dword_25207E000, v52, v53, "[%{public}s] readHearingTestStatus from %s failed", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v58, -1, -1);
      MEMORY[0x253099FD0](v57, -1, -1);
    }

    else
    {
    }

    v63 = 5;
  }

  else
  {

    v41 = sub_25214196C();
    v42 = sub_252141FBC();

    v43 = os_log_type_enabled(v41, v42);
    v44 = v0[29];
    if (v43)
    {
      v45 = v0[28];
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v70[0] = v47;
      *v46 = 136446722;
      v48 = sub_2521425DC();
      v50 = sub_2520A5448(v48, v49, v70);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      v51 = sub_2520A5448(v45, v44, v70);

      *(v46 + 14) = v51;
      *(v46 + 22) = 256;
      *(v46 + 24) = v40;
      _os_log_impl(&dword_25207E000, v41, v42, "[%{public}s] readHearingTestStatus complete from %s,  mode is %hhu", v46, 0x19u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v47, -1, -1);
      MEMORY[0x253099FD0](v46, -1, -1);
    }

    else
    {
    }

    if (v40 >= 5u)
    {
      v63 = 5;
    }

    else
    {
      v63 = v40;
    }
  }

  v64 = v0[1];

  return v64(v63);
}

uint64_t sub_252106D68()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_252107878;
  }

  else
  {
    v2 = sub_252106E7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252106E7C()
{
  v72 = v0;
  v1 = v0[34] + 1;

  v2 = sub_25214196C();
  v3 = sub_252141FBC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[28];
    v67 = v0[29];
    v69 = v0[19];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v71[0] = v6;
    *v5 = 136446978;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, v71);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_2520A5448(v4, v67, v71);
    *(v5 + 22) = 2048;
    *(v5 + 24) = v1;
    *(v5 + 32) = 2048;
    *(v5 + 34) = v69;
    _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] readHearingTestStatus from %s retry count %ld, max %ld ", v5, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  if (v1 == v0[33])
  {

    v10 = sub_25214196C();
    v11 = sub_252141FAC();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = v0[28];
      v12 = v0[29];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v71[0] = v15;
      *v14 = 136446466;
      v16 = sub_2521425DC();
      v18 = sub_2520A5448(v16, v17, v71);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_2520A5448(v13, v12, v71);
      _os_log_impl(&dword_25207E000, v10, v11, "[%{public}s] readHearingTestStatus  from %s reached time out period", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v15, -1, -1);
      MEMORY[0x253099FD0](v14, -1, -1);
    }

    goto LABEL_14;
  }

  v0[34] = v1;
  v19 = v0[20];
  *(swift_task_alloc() + 16) = v19;
  v0[35] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4CE698, &unk_252146788);
  sub_25214200C();

  v20 = v0[15];
  if (v20 >> 60 != 15)
  {
    sub_25210B134(v0[14], v20);
LABEL_14:
    v36 = v0[20];
    *(swift_task_alloc() + 16) = v36;
    sub_25214200C();

    v37 = v0[17];
    if (v37 >> 60 == 15 || (v38 = v0[16], v39 = sub_2520F7D5C(v38, v0[17]), sub_25210B134(v38, v37), (v39 & 0x100) != 0))
    {

      v51 = sub_25214196C();
      v52 = sub_252141FAC();

      v53 = os_log_type_enabled(v51, v52);
      v54 = v0[29];
      if (v53)
      {
        v55 = v0[28];
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v71[0] = v57;
        *v56 = 136446466;
        v58 = sub_2521425DC();
        v60 = sub_2520A5448(v58, v59, v71);

        *(v56 + 4) = v60;
        *(v56 + 12) = 2080;
        v61 = sub_2520A5448(v55, v54, v71);

        *(v56 + 14) = v61;
        _os_log_impl(&dword_25207E000, v51, v52, "[%{public}s] readHearingTestStatus from %s failed", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v57, -1, -1);
        MEMORY[0x253099FD0](v56, -1, -1);
      }

      else
      {
      }

      v62 = 5;
    }

    else
    {

      v40 = sub_25214196C();
      v41 = sub_252141FBC();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v0[29];
      if (v42)
      {
        v44 = v0[28];
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v71[0] = v46;
        *v45 = 136446722;
        v47 = sub_2521425DC();
        v49 = sub_2520A5448(v47, v48, v71);

        *(v45 + 4) = v49;
        *(v45 + 12) = 2080;
        v50 = sub_2520A5448(v44, v43, v71);

        *(v45 + 14) = v50;
        *(v45 + 22) = 256;
        *(v45 + 24) = v39;
        _os_log_impl(&dword_25207E000, v40, v41, "[%{public}s] readHearingTestStatus complete from %s,  mode is %hhu", v45, 0x19u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v46, -1, -1);
        MEMORY[0x253099FD0](v45, -1, -1);
      }

      else
      {
      }

      if (v39 >= 5u)
      {
        v62 = 5;
      }

      else
      {
        v62 = v39;
      }
    }

    v63 = v0[1];

    return v63(v62);
  }

  v21 = sub_25214196C();
  v22 = sub_252141FBC();

  if (os_log_type_enabled(v21, v22))
  {
    v24 = v0[28];
    v23 = v0[29];
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v71[0] = v26;
    *v25 = 136446466;
    v27 = sub_2521425DC();
    v29 = sub_2520A5448(v27, v28, v71);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_2520A5448(v24, v23, v71);
    _os_log_impl(&dword_25207E000, v21, v22, "[%{public}s] readHearingTestStatus mode from %s is nil, wait for 1 second ", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v26, -1, -1);
    MEMORY[0x253099FD0](v25, -1, -1);
  }

  v30 = v0[27];
  v68 = v0[26];
  v70 = v0[25];
  v65 = v0[24];
  v31 = v0[22];
  v66 = v0[23];
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = 0xD000000000000024;
  v33[4] = 0x8000000252149ED0;
  v0[12] = sub_25210B128;
  v0[13] = v33;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_2520A3B78;
  v0[11] = &block_descriptor_172;
  v34 = _Block_copy(v0 + 8);

  sub_252141A6C();
  v0[18] = MEMORY[0x277D84F90];
  sub_252110218(&qword_27F4CE090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0, MEMORY[0x277D83970]);
  sub_25214218C();
  MEMORY[0x2530991B0](0, v30, v65, v34);
  _Block_release(v34);
  (*(v66 + 8))(v65, v31);
  (*(v68 + 8))(v30, v70);

  v35 = swift_task_alloc();
  v0[36] = v35;
  *v35 = v0;
  v35[1] = sub_252106D68;

  return MEMORY[0x282200480](1000000000);
}

uint64_t sub_252107878()
{
  v83 = v0;

  v1 = sub_25214196C();
  v2 = sub_252141FAC();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[37];
  if (v3)
  {
    v6 = v0[28];
    v5 = v0[29];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v82[0] = v8;
    *v7 = 136446466;
    v9 = sub_2521425DC();
    v11 = sub_2520A5448(v9, v10, v82);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_2520A5448(v6, v5, v82);
    _os_log_impl(&dword_25207E000, v1, v2, "[%{public}s] readHearingTestStatus unable to read from %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v8, -1, -1);
    MEMORY[0x253099FD0](v7, -1, -1);
  }

  v12 = v0[34] + 1;

  v13 = sub_25214196C();
  v14 = sub_252141FBC();

  if (os_log_type_enabled(v13, v14))
  {
    v16 = v0[28];
    v15 = v0[29];
    v80 = v0[19];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v82[0] = v18;
    *v17 = 136446978;
    v19 = sub_2521425DC();
    v21 = sub_2520A5448(v19, v20, v82);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_2520A5448(v16, v15, v82);
    *(v17 + 22) = 2048;
    *(v17 + 24) = v12;
    *(v17 + 32) = 2048;
    *(v17 + 34) = v80;
    _os_log_impl(&dword_25207E000, v13, v14, "[%{public}s] readHearingTestStatus from %s retry count %ld, max %ld ", v17, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v18, -1, -1);
    MEMORY[0x253099FD0](v17, -1, -1);
  }

  if (v12 == v0[33])
  {

    v22 = sub_25214196C();
    v23 = sub_252141FAC();

    if (os_log_type_enabled(v22, v23))
    {
      v25 = v0[28];
      v24 = v0[29];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v82[0] = v27;
      *v26 = 136446466;
      v28 = sub_2521425DC();
      v30 = sub_2520A5448(v28, v29, v82);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_2520A5448(v25, v24, v82);
      _os_log_impl(&dword_25207E000, v22, v23, "[%{public}s] readHearingTestStatus  from %s reached time out period", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v27, -1, -1);
      MEMORY[0x253099FD0](v26, -1, -1);
    }

    goto LABEL_16;
  }

  v0[34] = v12;
  v31 = v0[20];
  *(swift_task_alloc() + 16) = v31;
  v0[35] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4CE698, &unk_252146788);
  sub_25214200C();

  v32 = v0[15];
  if (v32 >> 60 != 15)
  {
    sub_25210B134(v0[14], v32);
LABEL_16:
    v48 = v0[20];
    *(swift_task_alloc() + 16) = v48;
    sub_25214200C();

    v49 = v0[17];
    if (v49 >> 60 == 15 || (v50 = v0[16], v51 = sub_2520F7D5C(v50, v0[17]), sub_25210B134(v50, v49), (v51 & 0x100) != 0))
    {

      v63 = sub_25214196C();
      v64 = sub_252141FAC();

      v65 = os_log_type_enabled(v63, v64);
      v66 = v0[29];
      if (v65)
      {
        v67 = v0[28];
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v82[0] = v69;
        *v68 = 136446466;
        v70 = sub_2521425DC();
        v72 = sub_2520A5448(v70, v71, v82);

        *(v68 + 4) = v72;
        *(v68 + 12) = 2080;
        v73 = sub_2520A5448(v67, v66, v82);

        *(v68 + 14) = v73;
        _os_log_impl(&dword_25207E000, v63, v64, "[%{public}s] readHearingTestStatus from %s failed", v68, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v69, -1, -1);
        MEMORY[0x253099FD0](v68, -1, -1);
      }

      else
      {
      }

      v74 = 5;
    }

    else
    {

      v52 = sub_25214196C();
      v53 = sub_252141FBC();

      v54 = os_log_type_enabled(v52, v53);
      v55 = v0[29];
      if (v54)
      {
        v56 = v0[28];
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v82[0] = v58;
        *v57 = 136446722;
        v59 = sub_2521425DC();
        v61 = sub_2520A5448(v59, v60, v82);

        *(v57 + 4) = v61;
        *(v57 + 12) = 2080;
        v62 = sub_2520A5448(v56, v55, v82);

        *(v57 + 14) = v62;
        *(v57 + 22) = 256;
        *(v57 + 24) = v51;
        _os_log_impl(&dword_25207E000, v52, v53, "[%{public}s] readHearingTestStatus complete from %s,  mode is %hhu", v57, 0x19u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v58, -1, -1);
        MEMORY[0x253099FD0](v57, -1, -1);
      }

      else
      {
      }

      if (v51 >= 5u)
      {
        v74 = 5;
      }

      else
      {
        v74 = v51;
      }
    }

    v75 = v0[1];

    return v75(v74);
  }

  v33 = sub_25214196C();
  v34 = sub_252141FBC();

  if (os_log_type_enabled(v33, v34))
  {
    v36 = v0[28];
    v35 = v0[29];
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v82[0] = v38;
    *v37 = 136446466;
    v39 = sub_2521425DC();
    v41 = sub_2520A5448(v39, v40, v82);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    *(v37 + 14) = sub_2520A5448(v36, v35, v82);
    _os_log_impl(&dword_25207E000, v33, v34, "[%{public}s] readHearingTestStatus mode from %s is nil, wait for 1 second ", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v38, -1, -1);
    MEMORY[0x253099FD0](v37, -1, -1);
  }

  v42 = v0[27];
  v79 = v0[26];
  v81 = v0[25];
  v77 = v0[24];
  v43 = v0[22];
  v78 = v0[23];
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = swift_allocObject();
  v45[2] = v44;
  v45[3] = 0xD000000000000024;
  v45[4] = 0x8000000252149ED0;
  v0[12] = sub_25210B128;
  v0[13] = v45;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_2520A3B78;
  v0[11] = &block_descriptor_172;
  v46 = _Block_copy(v0 + 8);

  sub_252141A6C();
  v0[18] = MEMORY[0x277D84F90];
  sub_252110218(&qword_27F4CE090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0, MEMORY[0x277D83970]);
  sub_25214218C();
  MEMORY[0x2530991B0](0, v42, v77, v46);
  _Block_release(v46);
  (*(v78 + 8))(v77, v43);
  (*(v79 + 8))(v42, v81);

  v47 = swift_task_alloc();
  v0[36] = v47;
  *v47 = v0;
  v47[1] = sub_252106D68;

  return MEMORY[0x282200480](1000000000);
}

uint64_t sub_252108394(int a1, float a2, float a3)
{
  *&v20[4] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v18 = __PAIR64__(LODWORD(a3), LODWORD(a2));
  v19 = a1;
  v6 = sub_2520F7DE4(&v18, v20);
  v8 = v7;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v9 = sub_25214198C();
  __swift_project_value_buffer(v9, qword_27F4CDE68);
  v10 = sub_25214196C();
  v11 = sub_252141FBC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136446978;
    v14 = sub_2521425DC();
    v16 = sub_2520A5448(v14, v15, &v18);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2048;
    *(v12 + 14) = a2;
    *(v12 + 22) = 2048;
    *(v12 + 24) = a3;
    *(v12 + 32) = 1024;
    *(v12 + 34) = a1;
    _os_log_impl(&dword_25207E000, v10, v11, "[%{public}s] write test tone freq %f, level %f, side %u", v12, 0x26u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x253099FD0](v13, -1, -1);
    MEMORY[0x253099FD0](v12, -1, -1);
  }

  sub_252104450(v6, v8, 0xD000000000000024, 0x800000025214B230);
  return sub_2520CB598(v6, v8);
}

uint64_t sub_2521085B4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a2;
  *(v6 + 136) = a1;
  *(v6 + 56) = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_25210865C, 0, 0);
}

uint64_t sub_25210865C()
{
  v32 = v0;
  v31 = *MEMORY[0x277D85DE8];
  v1 = sub_2520F8D94();
  v3 = v2;
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v4 = sub_25214198C();
  *(v0 + 80) = __swift_project_value_buffer(v4, qword_27F4CDE68);

  v5 = sub_25214196C();
  v6 = sub_252141FBC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136446466;
    v9 = sub_2521425DC();
    v11 = sub_2520A5448(v9, v10, &v27);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_2520A5448(v1, v3, &v27);
    _os_log_impl(&dword_25207E000, v5, v6, "[%{public}s] writeHearingTestMode requested from %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v8, -1, -1);
    MEMORY[0x253099FD0](v7, -1, -1);
  }

  if (*(v0 + 16))
  {

    v12 = sub_25214196C();
    v13 = sub_252141FBC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = v15;
      *v14 = 136446466;
      v16 = sub_2521425DC();
      v18 = sub_2520A5448(v16, v17, &v27);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_2520A5448(v1, v3, &v27);
      _os_log_impl(&dword_25207E000, v12, v13, "[%{public}s] writeHearingTestMode check initial state before write to %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v15, -1, -1);
      MEMORY[0x253099FD0](v14, -1, -1);
    }

    if (*(v0 + 32) < 1)
    {
      __break(1u);
    }

    *(v0 + 88) = 1;
    v19 = swift_task_alloc();
    *(v0 + 96) = v19;
    *v19 = v0;
    v19[1] = sub_252108AD0;
    v20 = *(v0 + 40);

    return sub_2521061E8(v20);
  }

  else
  {
    v22 = *(v0 + 136);
    v27 = sub_2520D7D40(1uLL);
    v28 = v23;
    v30 = v24;
    v29 = v25;
    memset(&v27, v22, v24);
    sub_252104450(v27, v28 | ((v29 | (v30 << 16)) << 32), 0xD000000000000024, 0x8000000252149ED0);
    v26 = swift_task_alloc();
    *(v0 + 104) = v26;
    *v26 = v0;
    v26[1] = sub_2521090D8;

    return MEMORY[0x282200480](250000000);
  }
}

uint64_t sub_252108AD0(char a1)
{
  *(*v1 + 137) = a1;

  return MEMORY[0x2822009F8](sub_252108BFC, 0, 0);
}

uint64_t sub_252108BFC()
{
  v43 = v0;
  v42 = *MEMORY[0x277D85DE8];
  if (*(v0 + 137) != 5)
  {

    v13 = sub_25214196C();
    v14 = sub_252141FBC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 137);
      v17 = *(v0 + 64);
      v16 = *(v0 + 72);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v38 = v19;
      *v18 = 136446722;
      v20 = sub_2521425DC();
      v22 = sub_2520A5448(v20, v21, &v38);

      *(v18 + 4) = v22;
      *(v18 + 12) = 256;
      *(v18 + 14) = v15;
      *(v18 + 15) = 2080;
      *(v18 + 17) = sub_2520A5448(v17, v16, &v38);
      _os_log_impl(&dword_25207E000, v13, v14, "[%{public}s] writeHearingTestMode HTMode initial status %hhu from %s", v18, 0x19u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v19, -1, -1);
      MEMORY[0x253099FD0](v18, -1, -1);
    }

    v23 = *(v0 + 16);
    v24 = *(v23 + 16);
    v25 = (v23 + 32);
    while (v24)
    {
      v26 = *v25++;
      --v24;
      if (v26 == *(v0 + 137))
      {
        v27 = *(v0 + 136);
        v38 = sub_2520D7D40(1uLL);
        v39 = v28;
        v41 = v29;
        v40 = v30;
        memset(&v38, v27, v29);
        sub_252104450(v38, v39 | ((v40 | (v41 << 16)) << 32), 0xD000000000000024, 0x8000000252149ED0);
        v31 = swift_task_alloc();
        *(v0 + 104) = v31;
        *v31 = v0;
        v31[1] = sub_2521090D8;

        return MEMORY[0x282200480](250000000);
      }
    }
  }

  v1 = *(v0 + 88);
  if (v1 == *(v0 + 32))
  {

    v2 = sub_25214196C();
    v3 = sub_252141FAC();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 72);
    if (v4)
    {
      v6 = *(v0 + 64);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v38 = v8;
      *v7 = 136446466;
      v9 = sub_2521425DC();
      v11 = sub_2520A5448(v9, v10, &v38);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      v12 = sub_2520A5448(v6, v5, &v38);

      *(v7 + 14) = v12;
      _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] writeHearingTestMode initial status is not expected from %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v8, -1, -1);
      MEMORY[0x253099FD0](v7, -1, -1);
    }

    else
    {
    }

    v36 = *(v0 + 8);

    return v36(0);
  }

  else
  {
    v32 = __OFADD__(v1, 1);
    v33 = v1 + 1;
    if (v32)
    {
      __break(1u);
    }

    *(v0 + 88) = v33;
    v34 = swift_task_alloc();
    *(v0 + 96) = v34;
    *v34 = v0;
    v34[1] = sub_252108AD0;
    v35 = *(v0 + 40);

    return sub_2521061E8(v35);
  }
}

uint64_t sub_2521090D8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_252109F08;
  }

  else
  {
    v2 = sub_252109218;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252109218()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = v0[3];

  v2 = sub_25214196C();
  v3 = sub_252141FBC();

  v4 = os_log_type_enabled(v2, v3);
  if (v1)
  {
    if (v4)
    {
      v6 = v0[8];
      v5 = v0[9];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v33[0] = v8;
      *v7 = 136446466;
      v9 = sub_2521425DC();
      v11 = sub_2520A5448(v9, v10, v33);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_2520A5448(v6, v5, v33);
      _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] writeHearingTestMode checking return status after write from %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v8, -1, -1);
      MEMORY[0x253099FD0](v7, -1, -1);
    }

    if (v0[4] < 1)
    {
      __break(1u);
    }

    v0[15] = 1;

    v12 = sub_25214196C();
    v13 = sub_252141FBC();

    if (os_log_type_enabled(v12, v13))
    {
      v15 = v0[8];
      v14 = v0[9];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v33[0] = v17;
      *v16 = 136446722;
      v18 = sub_2521425DC();
      v20 = sub_2520A5448(v18, v19, v33);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_2520A5448(v15, v14, v33);
      *(v16 + 22) = 2048;
      *(v16 + 24) = 1;
      _os_log_impl(&dword_25207E000, v12, v13, "[%{public}s] writeHearingTestMode readHearingTestStatus from %s (%ld)", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v17, -1, -1);
      MEMORY[0x253099FD0](v16, -1, -1);
    }

    v21 = swift_task_alloc();
    v0[16] = v21;
    *v21 = v0;
    v21[1] = sub_2521096A0;
    v22 = v0[5];

    return sub_2521061E8(v22);
  }

  else
  {
    v24 = v0[9];
    if (v4)
    {
      v25 = v0[8];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33[0] = v27;
      *v26 = 136446466;
      v28 = sub_2521425DC();
      v30 = sub_2520A5448(v28, v29, v33);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v31 = sub_2520A5448(v25, v24, v33);

      *(v26 + 14) = v31;
      _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] writeHearingTestMode complete for %s ✅", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v27, -1, -1);
      MEMORY[0x253099FD0](v26, -1, -1);
    }

    else
    {
    }

    v32 = v0[1];

    return v32(1);
  }
}

uint64_t sub_2521096A0(char a1)
{
  *(*v1 + 138) = a1;

  return MEMORY[0x2822009F8](sub_2521097CC, 0, 0);
}

uint64_t sub_2521097CC()
{
  v63 = v0;
  v62[1] = *MEMORY[0x277D85DE8];
  if (*(v0 + 138) != 5)
  {

    v23 = sub_25214196C();
    v24 = sub_252141FBC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 138);
      v27 = *(v0 + 64);
      v26 = *(v0 + 72);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v62[0] = v29;
      *v28 = 136446722;
      v30 = sub_2521425DC();
      v32 = sub_2520A5448(v30, v31, v62);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_2520A5448(v27, v26, v62);
      *(v28 + 22) = 256;
      *(v28 + 24) = v25;
      _os_log_impl(&dword_25207E000, v23, v24, "[%{public}s] writeHearingTestMode HTMode return status from %s %hhu", v28, 0x19u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v29, -1, -1);
      MEMORY[0x253099FD0](v28, -1, -1);
    }

    v33 = *(v0 + 24);
    v34 = *(v33 + 16);
    v35 = (v33 + 32);
    while (v34)
    {
      v36 = *v35++;
      --v34;
      if (v36 == *(v0 + 138))
      {

        v37 = sub_25214196C();
        v38 = sub_252141FBC();

        v39 = os_log_type_enabled(v37, v38);
        v40 = *(v0 + 72);
        if (v39)
        {
          v41 = *(v0 + 64);
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v62[0] = v43;
          *v42 = 136446466;
          v44 = sub_2521425DC();
          v46 = sub_2520A5448(v44, v45, v62);

          *(v42 + 4) = v46;
          *(v42 + 12) = 2080;
          v47 = sub_2520A5448(v41, v40, v62);

          *(v42 + 14) = v47;
          _os_log_impl(&dword_25207E000, v37, v38, "[%{public}s] writeHearingTestMode complete for %s ✅", v42, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x253099FD0](v43, -1, -1);
          MEMORY[0x253099FD0](v42, -1, -1);
        }

        else
        {
        }

        v22 = 1;
        goto LABEL_24;
      }
    }
  }

  v1 = *(v0 + 120);
  if (v1 == *(v0 + 32))
  {

    v2 = sub_25214196C();
    v3 = sub_252141FAC();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = *(v0 + 64);
      v4 = *(v0 + 72);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v62[0] = v7;
      *v6 = 136446466;
      v8 = sub_2521425DC();
      v10 = sub_2520A5448(v8, v9, v62);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_2520A5448(v5, v4, v62);
      _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] writeHearingTestMode FAILED from %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v7, -1, -1);
      MEMORY[0x253099FD0](v6, -1, -1);
    }

    v11 = sub_25214196C();
    v12 = sub_252141FAC();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 72);
    if (v13)
    {
      v15 = *(v0 + 64);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v62[0] = v17;
      *v16 = 136446466;
      v18 = sub_2521425DC();
      v20 = sub_2520A5448(v18, v19, v62);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v21 = sub_2520A5448(v15, v14, v62);

      *(v16 + 14) = v21;
      _os_log_impl(&dword_25207E000, v11, v12, "[%{public}s] writeHearingTestMode return status is not expected from %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v17, -1, -1);
      MEMORY[0x253099FD0](v16, -1, -1);
    }

    else
    {
    }

    v22 = 0;
LABEL_24:
    v61 = *(v0 + 8);

    return v61(v22);
  }

  else
  {
    v48 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
    }

    *(v0 + 120) = v48;

    v49 = sub_25214196C();
    v50 = sub_252141FBC();

    if (os_log_type_enabled(v49, v50))
    {
      v52 = *(v0 + 64);
      v51 = *(v0 + 72);
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v62[0] = v54;
      *v53 = 136446722;
      v55 = sub_2521425DC();
      v57 = sub_2520A5448(v55, v56, v62);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_2520A5448(v52, v51, v62);
      *(v53 + 22) = 2048;
      *(v53 + 24) = v48;
      _os_log_impl(&dword_25207E000, v49, v50, "[%{public}s] writeHearingTestMode readHearingTestStatus from %s (%ld)", v53, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v54, -1, -1);
      MEMORY[0x253099FD0](v53, -1, -1);
    }

    v58 = swift_task_alloc();
    *(v0 + 128) = v58;
    *v58 = v0;
    v58[1] = sub_2521096A0;
    v59 = *(v0 + 40);

    return sub_2521061E8(v59);
  }
}

uint64_t sub_252109F08()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 24);

  v2 = sub_25214196C();
  v3 = sub_252141FBC();

  v4 = os_log_type_enabled(v2, v3);
  if (v1)
  {
    if (v4)
    {
      v6 = *(v0 + 64);
      v5 = *(v0 + 72);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v33[0] = v8;
      *v7 = 136446466;
      v9 = sub_2521425DC();
      v11 = sub_2520A5448(v9, v10, v33);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_2520A5448(v6, v5, v33);
      _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] writeHearingTestMode checking return status after write from %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v8, -1, -1);
      MEMORY[0x253099FD0](v7, -1, -1);
    }

    if (*(v0 + 32) < 1)
    {
      __break(1u);
    }

    *(v0 + 120) = 1;

    v12 = sub_25214196C();
    v13 = sub_252141FBC();

    if (os_log_type_enabled(v12, v13))
    {
      v15 = *(v0 + 64);
      v14 = *(v0 + 72);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v33[0] = v17;
      *v16 = 136446722;
      v18 = sub_2521425DC();
      v20 = sub_2520A5448(v18, v19, v33);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_2520A5448(v15, v14, v33);
      *(v16 + 22) = 2048;
      *(v16 + 24) = 1;
      _os_log_impl(&dword_25207E000, v12, v13, "[%{public}s] writeHearingTestMode readHearingTestStatus from %s (%ld)", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v17, -1, -1);
      MEMORY[0x253099FD0](v16, -1, -1);
    }

    v21 = swift_task_alloc();
    *(v0 + 128) = v21;
    *v21 = v0;
    v21[1] = sub_2521096A0;
    v22 = *(v0 + 40);

    return sub_2521061E8(v22);
  }

  else
  {
    v24 = *(v0 + 72);
    if (v4)
    {
      v25 = *(v0 + 64);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33[0] = v27;
      *v26 = 136446466;
      v28 = sub_2521425DC();
      v30 = sub_2520A5448(v28, v29, v33);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v31 = sub_2520A5448(v25, v24, v33);

      *(v26 + 14) = v31;
      _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] writeHearingTestMode complete for %s ✅", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v27, -1, -1);
      MEMORY[0x253099FD0](v26, -1, -1);
    }

    else
    {
    }

    v32 = *(v0 + 8);

    return v32(1);
  }
}

uint64_t sub_25210A398(uint64_t *a1)
{
  if (qword_27F4CD7A0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3490 & 1) != 0 || (sub_2520F8B10(a1))
  {
    goto LABEL_9;
  }

  v3 = *a1;
  v4 = a1[1];
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_9:
    v10 = 1;
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_loggedDeviceLock);
    [v6 lock];
    v7 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_loggedDevices;
    swift_beginAccess();
    v8 = *(v1 + v7);

    v9 = sub_252112E30(v3, v4, v8);

    [v6 unlock];
    v10 = v9 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_25210A4B0(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  result = sub_2520F8B10(a1);
  if ((result & 1) == 0)
  {
    v5 = a1[1];
    if ((v5 & 0x2000000000000000) != 0)
    {
      if ((v5 & 0xF00000000000000) == 0)
      {
        return result;
      }
    }

    else if ((*a1 & 0xFFFFFFFFFFFFLL) == 0)
    {
      return result;
    }

    v6 = *(v1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_loggedDeviceLock);
    [v6 lock];
    sub_25210A594(v1, a1, ObjectType);

    return [v6 unlock];
  }

  return result;
}

uint64_t sub_25210A594(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_loggedDevices;
  swift_beginAccess();
  v6 = *(a1 + v5);
  v8 = *a2;
  v7 = a2[1];

  v9 = sub_252112E30(v8, v7, v6);

  if ((v9 & 1) == 0)
  {
    v21 = v8;
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v10 = sub_25214198C();
    __swift_project_value_buffer(v10, qword_27F4CDE68);
    sub_25210AC9C(a2, v20);
    v11 = sub_25214196C();
    v12 = sub_252141FBC();
    sub_25210ACF8(a2);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20[0] = v18;
      *v13 = 136446466;
      v14 = sub_2521425DC();
      v16 = sub_2520A5448(v14, v15, v20);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_2520A5448(a2[2], a2[3], v20);
      _os_log_impl(&dword_25207E000, v11, v12, "[%{public}s] discovery events for %s will no longer be logged 🙈", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v18, -1, -1);
      MEMORY[0x253099FD0](v13, -1, -1);
    }

    swift_beginAccess();
    sub_25213ECFC(&v19, v21, v7);
    swift_endAccess();
  }
}

id sub_25210A7E0(uint64_t *a1)
{
  result = swift_getObjectType();
  v4 = result;
  v5 = a1[1];
  if ((v5 & 0x2000000000000000) != 0)
  {
    if ((v5 & 0xF00000000000000) == 0)
    {
      return result;
    }
  }

  else if ((*a1 & 0xFFFFFFFFFFFFLL) == 0)
  {
    return result;
  }

  v6 = *(v1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_loggedDeviceLock);
  [v6 lock];
  sub_25210A8B8(v1, a1, v4);

  return [v6 unlock];
}

uint64_t sub_25210A8B8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_loggedDevices;
  swift_beginAccess();
  v6 = *(a1 + v5);
  v8 = *a2;
  v7 = a2[1];

  v9 = sub_252112E30(v8, v7, v6);

  if (v9)
  {
    v20 = v8;
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v11 = sub_25214198C();
    __swift_project_value_buffer(v11, qword_27F4CDE68);
    sub_25210AC9C(a2, v19);
    v12 = sub_25214196C();
    v13 = sub_252141FBC();
    sub_25210ACF8(a2);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19[0] = v18;
      *v14 = 136446466;
      v15 = sub_2521425DC();
      v17 = sub_2520A5448(v15, v16, v19);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_2520A5448(a2[2], a2[3], v19);
      _os_log_impl(&dword_25207E000, v12, v13, "[%{public}s] discovery events for %s will resume logging 💡", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v18, -1, -1);
      MEMORY[0x253099FD0](v14, -1, -1);
    }

    swift_beginAccess();
    sub_25212B444(v20, v7);
    swift_endAccess();
  }

  return result;
}

void sub_25210AB20(uint64_t a1)
{
  sub_25210AC44(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_25210AC44(uint64_t a1)
{
  if (!qword_27F4CE690)
  {
    sub_2521418EC();
    v1 = sub_25214212C();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4CE690);
    }
  }
}

uint64_t sub_25210AD4C(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_25210ADAC(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

void sub_25210ADDC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

_BYTE *sub_25210AE50@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_25210AEE4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_25210AFA4(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_25210B020(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_25210AEE4(_BYTE *a1, _BYTE *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_2520D7D40(v5);
  __dst = result;
  v11 = v7;
  v13 = v8;
  v12 = v9;
  if (a1)
  {
    if (a2 != a1)
    {
      memcpy(&__dst, a1, v4);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_25210AFA4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25214176C();
  swift_allocObject();
  result = sub_25214172C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25214180C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_25210B020(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25214176C();
  swift_allocObject();
  result = sub_25214172C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

double block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_25210B0EC()
{
  MEMORY[0x25309A090](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25210B134(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2520CB598(result, a2);
  }

  return result;
}

uint64_t sub_25210B148(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE758, &qword_252146810);
  v10 = sub_2520A2F1C(qword_27F4CE760, &qword_27F4CE758, &qword_252146810, MEMORY[0x277CC9C28]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_25210AE50(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t sub_25210B224(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2520CBC7C(result, a2);
  }

  return result;
}

id sub_25210B238@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedDiscovery);
  *a1 = v2;
  return v2;
}

id sub_25210B2A4@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__peripheral);
  *a1 = v2;
  return v2;
}

uint64_t objectdestroy_168Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25210B320@<X0>(uint64_t *a1@<X8>)
{
  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_25210B378@<X0>(_OWORD *a1@<X8>)
{
  v2 = (*(v1 + 16) + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedCBDevice);
  v10[0] = *v2;
  v4 = v2[2];
  v3 = v2[3];
  v5 = v2[1];
  *&v11[12] = *(v2 + 60);
  v10[2] = v4;
  *v11 = v3;
  v10[1] = v5;
  v6 = v2[3];
  a1[2] = v2[2];
  a1[3] = v6;
  *(a1 + 60) = *(v2 + 60);
  v7 = v2[1];
  *a1 = *v2;
  a1[1] = v7;
  return sub_2520A2D9C(v10, &v9, &qword_27F4CE6F0, &qword_2521467A0);
}

uint64_t sub_25210B424()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25210B45C(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v6[2] = a1[2];
  v7[0] = v3;
  *(v7 + 12) = *(a1 + 60);
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return v2(v6);
}

uint64_t sub_25210B4A8()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

id sub_25210B4F8@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__centralMgr);
  *a1 = v2;
  return v2;
}

uint64_t sub_25210B534()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_25210B574()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__peripheral);
  *(v1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__peripheral) = v2;
  v3 = v2;
}

uint64_t sub_25210B5C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_25210B614()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__centralMgr);
  *(v1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__centralMgr) = v2;
  v3 = v2;
}

uint64_t sub_25210B6D8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_25210B774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
  }
}

id sub_25210B7C4@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__queue);
  *a1 = v2;
  return v2;
}

BOOL sub_25210B830(uint64_t a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = sub_252141B9C();
    v6 = v5;

    if (v4 == 0xD00000000000002ALL && 0x800000025214B260 == v6)
    {

      return 1;
    }

    v8 = sub_25214247C();

    if (v8)
    {
      return 1;
    }
  }

  return (*(a1 + 51) & 1) != 0 && *(a1 + 50) == 1;
}

uint64_t objectdestroy_280Tm()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 100, 7);
}

uint64_t sub_25210BA1C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE700, &qword_2521467B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_2521418EC();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25210BB3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE700, &qword_2521467B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25210BBAC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE700, &qword_2521467B0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_2520F848C(v2, v3);
}

uint64_t sub_25210BC1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE700, &qword_2521467B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_25210BC8C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_2521418EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v123 = v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v125 = v115 - v8;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE750, &qword_252146808);
  MEMORY[0x28223BE20](v122);
  v128 = v115 - v9;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE700, &qword_2521467B0);
  MEMORY[0x28223BE20](v121);
  v119 = v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v115 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v115 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v115 - v19;
  v131 = a1;
  v21 = [a1 name];
  if (v21)
  {
    v22 = v21;
    v129 = sub_252141B9C();
    v24 = v23;
  }

  else
  {
    v24 = 0xEE0029656D616E20;
    v129 = 0x676E697373696D28;
  }

  if (qword_27F4CD7A8 != -1)
  {
    v21 = swift_once();
  }

  if (byte_27F4D3491 == 1)
  {
    v120 = v20;
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v25 = sub_25214198C();
    __swift_project_value_buffer(v25, qword_27F4CDE68);

    v26 = sub_25214196C();
    v27 = sub_252141FBC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v118 = v16;
      v29 = v28;
      v30 = swift_slowAlloc();
      v127 = v24;
      v31 = v30;
      aBlock[0] = v30;
      *v29 = 136446466;
      v32 = sub_2521425DC();
      v34 = sub_2520A5448(v32, v33, aBlock);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_2520A5448(v129, v127, aBlock);
      _os_log_impl(&dword_25207E000, v26, v27, "[%{public}s] centralManager didConnect begin peripheral %s", v29, 0x16u);
      swift_arrayDestroy();
      v35 = v31;
      v24 = v127;
      MEMORY[0x253099FD0](v35, -1, -1);
      v16 = v118;
      MEMORY[0x253099FD0](v29, -1, -1);
    }

    v20 = v120;
  }

  v36 = *&v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_notifyLostWaitTask];
  v37 = &OBJC_IVAR____TtC11HearingTest12HTTonePlayer_playingTone;
  v126 = v4;
  v124 = v5;
  if (!v36)
  {
    v48 = &unk_27F4D3000;
    goto LABEL_28;
  }

  v116 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_notifyLostWaitTask;
  v117 = v13;
  v127 = v24;
  v38 = [v131 identifier];
  sub_2521418CC();

  v39 = *(v5 + 56);
  v115[1] = v5 + 56;
  v115[0] = v39;
  v40 = v39(v20, 0, 1, v4);
  MEMORY[0x28223BE20](v40);
  v120 = v2;
  v115[-2] = v2;
  sub_25214200C();
  v121 = 0;
  v41 = *(v122 + 48);
  v42 = v20;
  v43 = v20;
  v44 = v128;
  sub_2520A2D9C(v42, v128, &qword_27F4CE700, &qword_2521467B0);
  sub_2520A2D9C(v16, v44 + v41, &qword_27F4CE700, &qword_2521467B0);
  v45 = *(v5 + 48);
  if (v45(v44, 1, v4) != 1)
  {
    v118 = v16;
    v49 = v117;
    sub_2520A2D9C(v44, v117, &qword_27F4CE700, &qword_2521467B0);
    if (v45(v44 + v41, 1, v4) != 1)
    {
      v50 = v125;
      (*(v5 + 32))(v125, v44 + v41, v4);
      sub_252110218(&qword_27F4CE748, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v51 = sub_252141B5C();
      v52 = *(v5 + 8);
      v52(v50, v4);
      sub_2520A2584(v118, &qword_27F4CE700, &qword_2521467B0);
      sub_2520A2584(v43, &qword_27F4CE700, &qword_2521467B0);
      v52(v49, v4);
      v37 = &OBJC_IVAR____TtC11HearingTest12HTTonePlayer_playingTone;
      v21 = sub_2520A2584(v44, &qword_27F4CE700, &qword_2521467B0);
      v24 = v127;
      v48 = &unk_27F4D3000;
      v2 = v120;
      if ((v51 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    sub_2520A2584(v118, &qword_27F4CE700, &qword_2521467B0);
    v46 = v128;
    sub_2520A2584(v43, &qword_27F4CE700, &qword_2521467B0);
    (*(v5 + 8))(v49, v4);
    v24 = v127;
LABEL_19:
    v21 = sub_2520A2584(v46, &qword_27F4CE750, &qword_252146808);
    v48 = &unk_27F4D3000;
    v2 = v120;
    goto LABEL_28;
  }

  sub_2520A2584(v16, &qword_27F4CE700, &qword_2521467B0);
  v46 = v128;
  sub_2520A2584(v43, &qword_27F4CE700, &qword_2521467B0);
  v47 = v45(v46 + v41, 1, v4);
  v24 = v127;
  if (v47 != 1)
  {
    goto LABEL_19;
  }

  sub_2520A2584(v46, &qword_27F4CE700, &qword_2521467B0);
  v48 = &unk_27F4D3000;
  v2 = v120;
LABEL_21:
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v53 = sub_25214198C();
  __swift_project_value_buffer(v53, qword_27F4CDE68);

  v54 = sub_25214196C();
  v55 = sub_252141FBC();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v56 = 136446466;
    v58 = sub_2521425DC();
    v60 = sub_2520A5448(v58, v59, aBlock);
    v2 = v120;

    *(v56 + 4) = v60;
    *(v56 + 12) = 2080;
    *(v56 + 14) = sub_2520A5448(v129, v24, aBlock);
    _os_log_impl(&dword_25207E000, v54, v55, "[%{public}s] centralManager cancelling lost peripheral notification for %s", v56, 0x16u);
    swift_arrayDestroy();
    v61 = v57;
    v37 = &OBJC_IVAR____TtC11HearingTest12HTTonePlayer_playingTone;
    MEMORY[0x253099FD0](v61, -1, -1);
    MEMORY[0x253099FD0](v56, -1, -1);
  }

  v62 = v116;
  if (*&v2[v116])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE720, &unk_252143D40);
    sub_252141E4C();
  }

  *&v2[v62] = 0;

  v63 = v119;
  (v115[0])(v119, 1, 1, v126);
  v21 = sub_2520F8264(v63);
LABEL_28:
  v64 = *&v2[v37[158]];
  MEMORY[0x28223BE20](v21);
  v115[-2] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6B8, &unk_252146B20);
  sub_25214200C();
  v65 = aBlock[0];
  if (aBlock[0])
  {
    if (v48[1169] == 1)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v66 = sub_25214198C();
      __swift_project_value_buffer(v66, qword_27F4CDE68);

      v67 = sub_25214196C();
      v68 = sub_252141FBC();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v128 = v65;
        v71 = v70;
        aBlock[0] = v70;
        *v69 = 136446466;
        v72 = sub_2521425DC();
        v74 = sub_2520A5448(v72, v73, aBlock);

        *(v69 + 4) = v74;
        v48 = &unk_27F4D3000;
        *(v69 + 12) = 2080;
        *(v69 + 14) = sub_2520A5448(v129, v24, aBlock);
        _os_log_impl(&dword_25207E000, v67, v68, "[%{public}s] peripheral %s exists", v69, 0x16u);
        swift_arrayDestroy();
        v75 = v71;
        v65 = v128;
        MEMORY[0x253099FD0](v75, -1, -1);
        MEMORY[0x253099FD0](v69, -1, -1);
      }
    }

    v76 = [v65 identifier];
    v77 = v125;
    sub_2521418CC();

    v78 = [v131 identifier];
    v79 = v123;
    sub_2521418CC();

    LOBYTE(v78) = sub_2521418BC();
    v80 = *(v124 + 8);
    v81 = v79;
    v82 = v126;
    v80(v81, v126);
    v80(v77, v82);
    if ((v78 & 1) == 0)
    {
      goto LABEL_41;
    }

    [v65 setDelegate_];
    v83 = swift_allocObject();
    *(v83 + 16) = v2;
    *(v83 + 24) = 0;
    v84 = swift_allocObject();
    *(v84 + 16) = sub_252110514;
    *(v84 + 24) = v83;
    aBlock[4] = sub_2520ADA58;
    aBlock[5] = v84;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_252083924;
    aBlock[3] = &block_descriptor_541;
    v85 = _Block_copy(aBlock);
    v86 = v2;

    dispatch_sync(v64, v85);
    _Block_release(v85);
    LOBYTE(v85) = swift_isEscapingClosureAtFileLocation();

    if (v85)
    {
      __break(1u);
    }

    else if (qword_27F4CD708 == -1)
    {
LABEL_38:
      v87 = sub_25214198C();
      __swift_project_value_buffer(v87, qword_27F4CDE68);

      v88 = sub_25214196C();
      v89 = sub_252141FBC();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        aBlock[0] = v91;
        *v90 = 136446466;
        v92 = sub_2521425DC();
        v94 = v65;
        v95 = sub_2520A5448(v92, v93, aBlock);

        *(v90 + 4) = v95;
        v65 = v94;
        *(v90 + 12) = 2080;
        *(v90 + 14) = sub_2520A5448(v129, v24, aBlock);
        _os_log_impl(&dword_25207E000, v88, v89, "[%{public}s] discovering Services from %s...", v90, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v91, -1, -1);
        MEMORY[0x253099FD0](v90, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE730, &qword_252144AE8);
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_2521446C0;
      *(v96 + 32) = [objc_opt_self() UUIDWithString_];
      sub_2520A5A94(0, &qword_27F4CE738, 0x277CBE0A0);
      v97 = sub_252141CCC();

      [v65 discoverServices_];

LABEL_41:
      goto LABEL_47;
    }

    swift_once();
    goto LABEL_38;
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v98 = sub_25214198C();
  __swift_project_value_buffer(v98, qword_27F4CDE68);

  v99 = sub_25214196C();
  v100 = sub_252141FBC();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    aBlock[0] = v102;
    *v101 = 136446466;
    v103 = sub_2521425DC();
    v105 = sub_2520A5448(v103, v104, aBlock);

    *(v101 + 4) = v105;
    *(v101 + 12) = 2080;
    *(v101 + 14) = sub_2520A5448(v129, v24, aBlock);
    _os_log_impl(&dword_25207E000, v99, v100, "[%{public}s] peripheral %s doesn't exist", v101, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v102, -1, -1);
    MEMORY[0x253099FD0](v101, -1, -1);
  }

LABEL_47:
  if (v48[1169] == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v106 = sub_25214198C();
    __swift_project_value_buffer(v106, qword_27F4CDE68);

    v107 = sub_25214196C();
    v108 = sub_252141FBC();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      aBlock[0] = v110;
      *v109 = 136446466;
      v111 = sub_2521425DC();
      v113 = sub_2520A5448(v111, v112, aBlock);

      *(v109 + 4) = v113;
      *(v109 + 12) = 2080;
      v114 = sub_2520A5448(v129, v24, aBlock);

      *(v109 + 14) = v114;
      _os_log_impl(&dword_25207E000, v107, v108, "[%{public}s] centralManager end didConnect peripheral %s", v109, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v110, -1, -1);
      MEMORY[0x253099FD0](v109, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_25210CEC4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE740, &qword_2521467E0);
  MEMORY[0x28223BE20](v5 - 8);
  v70 = &v68 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE700, &qword_2521467B0);
  MEMORY[0x28223BE20](v7 - 8);
  v69 = &v68 - v8;
  v9 = sub_2521418EC();
  v74 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v68 - v14;
  v75 = a1;
  v16 = [a1 name];
  if (v16)
  {
    v17 = v16;
    v73 = sub_252141B9C();
    v19 = v18;
  }

  else
  {
    v19 = 0xEE0029656D616E20;
    v73 = 0x676E697373696D28;
  }

  MEMORY[0x28223BE20](v16);
  *(&v68 - 2) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6B8, &unk_252146B20);
  sub_25214200C();
  v20 = v76;
  if (v76)
  {
    v71 = v19;
    v21 = ObjectType;
    v22 = [v75 identifier];
    sub_2521418CC();

    v72 = v20;
    v23 = [v20 identifier];
    sub_2521418CC();

    sub_252110218(&qword_27F4CE748, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    LOBYTE(v23) = sub_252141B5C();
    v24 = *(v74 + 8);
    v24(v11, v9);
    v25 = (v24)(v15, v9);
    if (v23)
    {
      MEMORY[0x28223BE20](v25);
      *(&v68 - 2) = v2;
      sub_25214200C();
      if (v76)
      {
        v26 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_notifyLostWaitTask;
        v27 = v71;
        if (*(v2 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_notifyLostWaitTask))
        {
          if (qword_27F4CD708 != -1)
          {
            swift_once();
          }

          v28 = sub_25214198C();
          __swift_project_value_buffer(v28, qword_27F4CDE68);
          v29 = sub_25214196C();
          v30 = sub_252141FBC();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            v76 = v68;
            *v31 = 136446210;
            v32 = sub_2521425DC();
            v34 = sub_2520A5448(v32, v33, &v76);

            *(v31 + 4) = v34;
            _os_log_impl(&dword_25207E000, v29, v30, "[%{public}s] centralManager cancelling previous didDisconnectPeripheral", v31, 0xCu);
            v35 = v68;
            __swift_destroy_boxed_opaque_existential_0(v68);
            MEMORY[0x253099FD0](v35, -1, -1);
            MEMORY[0x253099FD0](v31, -1, -1);
          }

          if (*(v2 + v26))
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE720, &unk_252143D40);
            sub_252141E4C();
          }

          *(v2 + v26) = 0;
        }

        v61 = [v75 identifier];
        v62 = v69;
        sub_2521418CC();

        (*(v74 + 56))(v62, 0, 1, v9);
        sub_2520F8264(v62);
        v63 = sub_252141E3C();
        v64 = v70;
        (*(*(v63 - 8) + 56))(v70, 1, 1, v63);
        v65 = swift_allocObject();
        v65[2] = 0;
        v65[3] = 0;
        v65[4] = v73;
        v65[5] = v27;
        v65[6] = v2;
        v65[7] = v21;
        v66 = v2;
        v67 = sub_252102548(0, 0, v64, &unk_252146800, v65);

        *(v2 + v26) = v67;

        return;
      }

      v55 = v71;
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v56 = sub_25214198C();
      __swift_project_value_buffer(v56, qword_27F4CDE68);

      v46 = sub_25214196C();
      v47 = sub_252141FBC();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v76 = v49;
        *v48 = 136446466;
        v57 = sub_2521425DC();
        v59 = sub_2520A5448(v57, v58, &v76);

        *(v48 + 4) = v59;
        *(v48 + 12) = 2080;
        v60 = sub_2520A5448(v73, v55, &v76);

        *(v48 + 14) = v60;
        v54 = "[%{public}s] centralManager didDisconnectPeripheral ignoring peripheral before hearing test start %s 👻";
        goto LABEL_27;
      }
    }

    else
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v44 = sub_25214198C();
      __swift_project_value_buffer(v44, qword_27F4CDE68);
      v45 = v71;

      v46 = sub_25214196C();
      v47 = sub_252141FBC();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v76 = v49;
        *v48 = 136446466;
        v50 = sub_2521425DC();
        v52 = sub_2520A5448(v50, v51, &v76);

        *(v48 + 4) = v52;
        *(v48 + 12) = 2080;
        v53 = sub_2520A5448(v73, v45, &v76);

        *(v48 + 14) = v53;
        v54 = "[%{public}s] centralManager didDisconnectPeripheral ignoring unknown peripheral %s";
LABEL_27:
        _os_log_impl(&dword_25207E000, v46, v47, v54, v48, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v49, -1, -1);
        MEMORY[0x253099FD0](v48, -1, -1);
LABEL_29:

        return;
      }
    }

    goto LABEL_29;
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v36 = sub_25214198C();
  __swift_project_value_buffer(v36, qword_27F4CDE68);
  v37 = sub_25214196C();
  v38 = sub_252141FAC();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v76 = v40;
    *v39 = 136446210;
    v41 = sub_2521425DC();
    v43 = sub_2520A5448(v41, v42, &v76);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_25207E000, v37, v38, "[%{public}s] centralManager didDisconnectPeripheral doesn't have a peripheral yet", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x253099FD0](v40, -1, -1);
    MEMORY[0x253099FD0](v39, -1, -1);
  }
}

void sub_25210D89C(void *a1, void *a2)
{
  v3 = v2;
  v174 = a2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE740, &qword_2521467E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v162 - v7;
  v9 = sub_2521418EC();
  v172 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v171 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v169 = a1;
  v170 = &v162 - v13;
  v14 = [a1 name];
  if (v14)
  {
    v15 = v14;
    v168 = sub_252141B9C();
    v17 = v16;
  }

  else
  {
    v17 = 0xEE0029656D616E20;
    v168 = 0x676E697373696D28;
  }

  if (qword_27F4CD7A8 != -1)
  {
    v14 = swift_once();
  }

  v173 = v17;
  if (byte_27F4D3491 == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v18 = sub_25214198C();
    __swift_project_value_buffer(v18, qword_27F4CDE68);

    v19 = v174;
    v20 = sub_25214196C();
    v21 = sub_252141FBC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      aBlock = v166;
      *v22 = 136446722;
      v23 = sub_2521425DC();
      v25 = sub_2520A5448(v23, v24, &aBlock);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_2520A5448(v168, v173, &aBlock);
      *(v22 + 22) = 2112;
      *(v22 + 24) = v19;
      v26 = v165;
      *v165 = v19;
      v27 = v19;
      _os_log_impl(&dword_25207E000, v20, v21, "[%{public}s] peripheral %s didUpdateValueFor %@.", v22, 0x20u);
      sub_2520A2584(v26, &unk_27F4CE080, &qword_252144E30);
      MEMORY[0x253099FD0](v26, -1, -1);
      v28 = v166;
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v28, -1, -1);
      MEMORY[0x253099FD0](v22, -1, -1);
    }
  }

  v29 = *&v3[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  MEMORY[0x28223BE20](v14);
  *(&v162 - 2) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6B8, &unk_252146B20);
  sub_25214200C();
  v30 = aBlock;
  if (!aBlock)
  {

    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v44 = sub_25214198C();
    __swift_project_value_buffer(v44, qword_27F4CDE68);
    v45 = sub_25214196C();
    v46 = sub_252141FAC();
    if (!os_log_type_enabled(v45, v46))
    {
      goto LABEL_40;
    }

    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    aBlock = v48;
    *v47 = 136446210;
    v49 = sub_2521425DC();
    v51 = sub_2520A5448(v49, v50, &aBlock);

    *(v47 + 4) = v51;
    v52 = "[%{public}s] Ignoring characteristic, we don't have a peripheral yet";
LABEL_39:
    _os_log_impl(&dword_25207E000, v45, v46, v52, v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x253099FD0](v48, -1, -1);
    MEMORY[0x253099FD0](v47, -1, -1);
LABEL_40:

    return;
  }

  v166 = 0;
  v167 = v8;
  v31 = ObjectType;
  v32 = [v169 identifier];
  v33 = v170;
  sub_2521418CC();

  v34 = [v30 identifier];
  v35 = v171;
  sub_2521418CC();

  sub_252110218(&qword_27F4CE748, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  LOBYTE(v34) = sub_252141B5C();
  isa = v172[1].isa;
  (isa)(v35, v9);
  (isa)(v33, v9);
  if ((v34 & 1) == 0)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v53 = sub_25214198C();
    __swift_project_value_buffer(v53, qword_27F4CDE68);
    v54 = v173;

    v55 = sub_25214196C();
    v56 = sub_252141FAC();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      aBlock = v58;
      *v57 = 136446466;
      v59 = sub_2521425DC();
      v61 = sub_2520A5448(v59, v60, &aBlock);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2080;
      v62 = sub_2520A5448(v168, v54, &aBlock);

      *(v57 + 14) = v62;
      _os_log_impl(&dword_25207E000, v55, v56, "[%{public}s] Ignoring characteristic, uknown peripheral %s", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v58, -1, -1);
      MEMORY[0x253099FD0](v57, -1, -1);
    }

    else
    {
    }

    return;
  }

  v171 = v3;

  v37 = [v174 UUID];
  v38 = [v37 UUIDString];

  v39 = sub_252141B9C();
  v41 = v40;

  v42 = v31;
  if (v39 == 0xD000000000000024 && 0x8000000252149ED0 == v41)
  {
    v43 = v167;
LABEL_17:

    goto LABEL_27;
  }

  v63 = sub_25214247C();

  v43 = v167;
  if ((v63 & 1) == 0)
  {
    v96 = [v174 UUID];
    v97 = [v96 UUIDString];

    v98 = sub_252141B9C();
    v100 = v99;

    if (v98 == 0xD000000000000024 && 0x800000025214B230 == v100)
    {
      goto LABEL_17;
    }

    v101 = sub_25214247C();

    if ((v101 & 1) == 0)
    {

      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v102 = sub_25214198C();
      __swift_project_value_buffer(v102, qword_27F4CDE68);
      v45 = sub_25214196C();
      v46 = sub_252141FAC();
      if (!os_log_type_enabled(v45, v46))
      {
        goto LABEL_40;
      }

      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      aBlock = v48;
      *v47 = 136446210;
      v103 = sub_2521425DC();
      v105 = sub_2520A5448(v103, v104, &aBlock);

      *(v47 + 4) = v105;
      v52 = "[%{public}s] Characteristic UUID doesn't match";
      goto LABEL_39;
    }
  }

LABEL_27:
  v64 = [v174 value];
  if (!v64)
  {

    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v92 = sub_25214198C();
    __swift_project_value_buffer(v92, qword_27F4CDE68);
    v45 = sub_25214196C();
    v46 = sub_252141FAC();
    if (!os_log_type_enabled(v45, v46))
    {
      goto LABEL_40;
    }

    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    aBlock = v48;
    *v47 = 136446210;
    v93 = sub_2521425DC();
    v95 = sub_2520A5448(v93, v94, &aBlock);

    *(v47 + 4) = v95;
    v52 = "[%{public}s] Data unknown";
    goto LABEL_39;
  }

  v172 = v29;
  v65 = v64;
  v66 = sub_25214184C();
  v68 = v67;

  if (byte_27F4D3491 == 1)
  {
    v69 = v42;
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v70 = sub_25214198C();
    __swift_project_value_buffer(v70, qword_27F4CDE68);
    v71 = v174;
    sub_2520CBC7C(v66, v68);
    v72 = sub_25214196C();
    v73 = sub_252141FBC();

    sub_2520CB598(v66, v68);
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v175 = v169;
      *v74 = 136446722;
      v164 = v69;
      v75 = sub_2521425DC();
      v77 = sub_2520A5448(v75, v76, &v175);

      *(v74 + 4) = v77;
      v170 = v66;
      *(v74 + 12) = 2080;
      v78 = [v71 UUID];
      v79 = [v78 UUIDString];

      v80 = sub_252141B9C();
      v82 = v81;

      v83 = sub_2520A5448(v80, v82, &v175);

      *(v74 + 14) = v83;
      *(v74 + 22) = 2080;
      v84 = v166;
      v85 = sub_2520F79EC(v170, v68);
      v166 = v84;
      aBlock = v85;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6E0, &qword_252144530);
      sub_2520A2F1C(&qword_27F4CDE60, &qword_27F4CE6E0, &qword_252144530, MEMORY[0x277D83958]);
      v86 = sub_252141B3C();
      v88 = v87;

      aBlock = 30768;
      v177 = 0xE200000000000000;
      MEMORY[0x253098DA0](v86, v88);
      v66 = v170;

      v89 = sub_2520A5448(aBlock, v177, &v175);

      *(v74 + 24) = v89;
      _os_log_impl(&dword_25207E000, v72, v73, "[%{public}s] UUID %s data %s", v74, 0x20u);
      v90 = v169;
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v90, -1, -1);
      v91 = v74;
      v43 = v167;
      MEMORY[0x253099FD0](v91, -1, -1);

      v42 = v164;
    }

    else
    {

      v42 = v69;
    }
  }

  v106 = [v174 UUID];
  v107 = [v106 UUIDString];

  v108 = sub_252141B9C();
  v110 = v109;

  if ((v108 != 0xD000000000000024 || 0x8000000252149ED0 != v110) && (sub_25214247C() & 1) == 0)
  {

    if (v108 == 0xD000000000000024 && 0x800000025214B230 == v110)
    {
    }

    else
    {
      v138 = sub_25214247C();

      if ((v138 & 1) == 0)
      {
LABEL_83:
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v158 = sub_25214198C();
        __swift_project_value_buffer(v158, qword_27F4CDE68);
        v45 = sub_25214196C();
        v140 = sub_252141FAC();
        if (!os_log_type_enabled(v45, v140))
        {
          goto LABEL_88;
        }

        v141 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        aBlock = v142;
        *v141 = 136446210;
        v159 = sub_2521425DC();
        v161 = sub_2520A5448(v159, v160, &aBlock);

        *(v141 + 4) = v161;
        v146 = "[%{public}s] Cannot find a matching UUID for data";
LABEL_87:
        _os_log_impl(&dword_25207E000, v45, v140, v146, v141, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v142);
        MEMORY[0x253099FD0](v142, -1, -1);
        MEMORY[0x253099FD0](v141, -1, -1);
LABEL_88:
        sub_2520CB598(v66, v68);
        goto LABEL_40;
      }
    }

    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v139 = sub_25214198C();
    __swift_project_value_buffer(v139, qword_27F4CDE68);
    v45 = sub_25214196C();
    v140 = sub_252141FBC();
    if (!os_log_type_enabled(v45, v140))
    {
      goto LABEL_88;
    }

    v141 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    aBlock = v142;
    *v141 = 136446210;
    v143 = sub_2521425DC();
    v145 = sub_2520A5448(v143, v144, &aBlock);

    *(v141 + 4) = v145;
    v146 = "[%{public}s] Test tone info - not for read/ack";
    goto LABEL_87;
  }

  MEMORY[0x28223BE20](v111);
  v112 = v171;
  *(&v162 - 2) = v171;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4CE698, &unk_252146788);
  sub_25214200C();
  v113 = v177;
  v114 = &loc_252143000;
  if (v177 >> 60 == 15)
  {

    goto LABEL_81;
  }

  v115 = aBlock;
  v116 = sub_2520F7D5C(v66, v68);
  LODWORD(v170) = sub_2520F7D5C(v115, v113);
  if (byte_27F4D3491 == 1)
  {
    v174 = v115;
    v169 = v68;
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v117 = sub_25214198C();
    __swift_project_value_buffer(v117, qword_27F4CDE68);
    v118 = v112;
    v119 = v173;

    v43 = v118;
    v120 = sub_25214196C();
    v121 = sub_252141FBC();

    if (os_log_type_enabled(v120, v121))
    {
      LODWORD(v165) = v121;
      v166 = v120;
      v122 = v42;
      v123 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      aBlock = v163;
      *v123 = 136447234;
      v164 = v122;
      v124 = sub_2521425DC();
      v126 = sub_2520A5448(v124, v125, &aBlock);

      *(v123 + 4) = v126;
      *(v123 + 12) = 2080;
      v127 = sub_2520A5448(v168, v119, &aBlock);

      *(v123 + 14) = v127;
      *(v123 + 22) = 2080;
      if ((v170 & 0x100) != 0)
      {
LABEL_90:

        __break(1u);
        goto LABEL_91;
      }

      LOBYTE(v175) = v170;
      v128 = sub_25214244C();
      v130 = sub_2520A5448(v128, v129, &aBlock);

      *(v123 + 24) = v130;
      *(v123 + 32) = 2080;
      if ((v116 & 0x100) != 0)
      {
LABEL_91:

        __break(1u);
        return;
      }

      LOBYTE(v175) = v116;
      v131 = sub_25214244C();
      v133 = sub_2520A5448(v131, v132, &aBlock);

      *(v123 + 34) = v133;
      *(v123 + 42) = 1024;
      MEMORY[0x28223BE20](v134);
      *(&v162 - 2) = v43;
      sub_25214200C();

      *(v123 + 44) = v175;
      v135 = v166;
      _os_log_impl(&dword_25207E000, v166, v165, "[%{public}s] peripheral %s didUpdateValueFor Hearing Aid Mode: was %s now %s disabled %{BOOL}d", v123, 0x30u);
      v136 = v163;
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v136, -1, -1);
      MEMORY[0x253099FD0](v123, -1, -1);

      v42 = v164;
      v112 = v171;
      v43 = v167;
      v68 = v169;
      v114 = &loc_252143000;
      v115 = v174;
    }

    else
    {

      v43 = v167;
      v68 = v169;
      v114 = &loc_252143000;
      v115 = v174;
      if ((v116 & 0x100) != 0)
      {
LABEL_74:
        sub_25210B134(v115, v113);
        goto LABEL_81;
      }
    }
  }

  else
  {

    if ((v116 & 0x100) != 0)
    {
      goto LABEL_74;
    }
  }

  if (v116)
  {
    goto LABEL_74;
  }

  v174 = v115;
  MEMORY[0x28223BE20](v137);
  *(&v162 - 2) = v112;
  sub_25214200C();
  if ((aBlock & 1) == 0)
  {
    if ((v170 & 0x100) == 0 && !v170 || (v147 = swift_allocObject(), *(v147 + 16) = v112, *(v147 + 24) = 0, v148 = swift_allocObject(), *(v148 + 16) = sub_25210FF0C, *(v148 + 24) = v147, v180 = sub_2520ADA58, v181 = v148, aBlock = MEMORY[0x277D85DD0], v177 = 1107296256, v178 = sub_252083924, v179 = &block_descriptor_490, v149 = _Block_copy(&aBlock), v150 = v112, , , dispatch_sync(v172, v149), _Block_release(v149), LOBYTE(v149) = swift_isEscapingClosureAtFileLocation(), , , (v149 & 1) == 0))
    {
      v151 = sub_252141E3C();
      (*(*(v151 - 8) + 56))(v43, 1, 1, v151);
      v152 = swift_allocObject();
      v152[2] = 0;
      v152[3] = 0;
      v152[4] = v112;
      v152[5] = v42;
      v153 = v112;
      sub_252113050(0, 0, v43, &unk_2521467F0, v152);

      goto LABEL_80;
    }

    __break(1u);
    goto LABEL_90;
  }

LABEL_80:
  sub_25210B134(v174, v113);
  v114 = &loc_252143000;
LABEL_81:
  v154 = swift_allocObject();
  v154[2] = v112;
  v154[3] = v66;
  v154[4] = v68;
  v155 = swift_allocObject();
  *(v155 + 16) = sub_2521104C0;
  *(v155 + 24) = v154;
  v180 = sub_2520ADA58;
  v181 = v155;
  aBlock = MEMORY[0x277D85DD0];
  v177 = v114[326];
  v178 = sub_252083924;
  v179 = &block_descriptor_480;
  v156 = _Block_copy(&aBlock);
  sub_2520CBC7C(v66, v68);
  sub_2520CBC7C(v66, v68);
  v157 = v112;

  dispatch_sync(v172, v156);
  sub_2520CB598(v66, v68);
  _Block_release(v156);
  LOBYTE(v156) = swift_isEscapingClosureAtFileLocation();

  sub_2520CB598(v66, v68);
  if (v156)
  {
    __break(1u);
    goto LABEL_83;
  }
}

void sub_25210F044(void *a1)
{
  swift_getObjectType();
  v2 = [a1 name];
  if (v2)
  {
    v3 = v2;
    v4 = sub_252141B9C();
    v6 = v5;
  }

  else
  {
    v6 = 0xEE0029656D616E20;
    v4 = 0x676E697373696D28;
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v7 = sub_25214198C();
  __swift_project_value_buffer(v7, qword_27F4CDE68);

  v8 = sub_25214196C();
  v9 = sub_252141FBC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v47 = v11;
    *v10 = 136446466;
    v12 = sub_2521425DC();
    v14 = sub_2520A5448(v12, v13, &v47);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = sub_2520A5448(v4, v6, &v47);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_25207E000, v8, v9, "[%{public}s] peripheral didDiscoverServices for %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v11, -1, -1);
    MEMORY[0x253099FD0](v10, -1, -1);
  }

  else
  {
  }

  MEMORY[0x28223BE20](v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6B8, &unk_252146B20);
  sub_25214200C();
  v44 = v47;
  if (v47)
  {
    v17 = [v47 services];
    if (!v17)
    {
LABEL_25:

      return;
    }

    v18 = v17;
    sub_2520A5A94(0, &qword_27F4CE6C0, 0x277CBE098);
    v19 = sub_252141CDC();

    if (v19 >> 62)
    {
      v45 = sub_25214232C();
      if (v45)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v45 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v45)
      {
LABEL_13:
        sub_2520A5A94(0, &unk_27F4CE6D0, 0x277D82BB8);
        v46 = objc_opt_self();
        if (v45 < 1)
        {
          __break(1u);
          return;
        }

        v21 = 0;
        v22 = v19 & 0xC000000000000001;
        v23 = *MEMORY[0x277CBDF60];
        *&v20 = 136446722;
        v42 = v20;
        v43 = *MEMORY[0x277CBDF60];
        do
        {
          if (v22)
          {
            v31 = MEMORY[0x2530993D0](v21, v19);
          }

          else
          {
            v31 = *(v19 + 8 * v21 + 32);
          }

          v30 = v31;
          v32 = [v31 UUID];
          v33 = [v46 UUIDWithString_];
          v34 = sub_25214210C();

          if (v34)
          {
            v35 = sub_25214196C();
            v36 = sub_252141FBC();
            if (os_log_type_enabled(v35, v36))
            {
              v37 = swift_slowAlloc();
              v38 = swift_slowAlloc();
              v47 = v38;
              *v37 = v42;
              v39 = sub_2521425DC();
              v41 = sub_2520A5448(v39, v40, &v47);

              *(v37 + 4) = v41;
              *(v37 + 12) = 2080;
              *(v37 + 14) = sub_2520A5448(0xD000000000000024, 0x8000000252149ED0, &v47);
              *(v37 + 22) = 2080;
              *(v37 + 24) = sub_2520A5448(0xD000000000000024, 0x800000025214B230, &v47);
              _os_log_impl(&dword_25207E000, v35, v36, "[%{public}s] peripheral discoverCharacteristics for %s and %s.", v37, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x253099FD0](v38, -1, -1);
              MEMORY[0x253099FD0](v37, -1, -1);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE730, &qword_252144AE8);
            v24 = swift_allocObject();
            *(v24 + 16) = xmmword_252146690;
            v25 = sub_252141B6C();
            v26 = [v46 UUIDWithString_];

            *(v24 + 32) = v26;
            v27 = sub_252141B6C();
            v28 = [v46 UUIDWithString_];

            *(v24 + 40) = v28;
            sub_2520A5A94(0, &qword_27F4CE738, 0x277CBE0A0);
            v29 = sub_252141CCC();

            [v44 discoverCharacteristics:v29 forService:v30];

            v30 = v29;
            v22 = v19 & 0xC000000000000001;
            v23 = v43;
          }

          ++v21;
        }

        while (v45 != v21);
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_25210F6BC(void *a1, void *a2)
{
  swift_getObjectType();
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v4 = sub_25214198C();
  __swift_project_value_buffer(v4, qword_27F4CDE68);
  v5 = a1;
  v6 = sub_25214196C();
  v7 = sub_252141FBC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v62 = v10;
    *v8 = 136446466;
    v11 = sub_2521425DC();
    v13 = sub_2520A5448(v11, v12, &v62);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v14 = v5;
    _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] didDiscoverCharacteristics For %@", v8, 0x16u);
    sub_2520A2584(v9, &unk_27F4CE080, &qword_252144E30);
    MEMORY[0x253099FD0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x253099FD0](v10, -1, -1);
    MEMORY[0x253099FD0](v8, -1, -1);
  }

  result = [a2 characteristics];
  if (!result)
  {
    return result;
  }

  v16 = result;
  sub_2520A5A94(0, &qword_27F4CE6C8, 0x277CBE000);
  v17 = sub_252141CDC();

  v18 = v17;
  if (v17 >> 62)
  {
    result = sub_25214232C();
    v18 = v17;
    if (result)
    {
      goto LABEL_8;
    }

LABEL_36:
  }

  result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_36;
  }

LABEL_8:
  if (result >= 1)
  {
    v19 = 0;
    v59 = v18 & 0xC000000000000001;
    v60 = result;
    v61 = v18;
    while (1)
    {
      if (v59)
      {
        v20 = MEMORY[0x2530993D0](v19);
      }

      else
      {
        v20 = *(v18 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = sub_25214196C();
      v23 = sub_252141FBC();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v62 = v26;
        *v24 = 136446466;
        v27 = sub_2521425DC();
        v29 = sub_2520A5448(v27, v28, &v62);

        *(v24 + 4) = v29;
        *(v24 + 12) = 2112;
        *(v24 + 14) = v21;
        *v25 = v21;
        v30 = v21;
        _os_log_impl(&dword_25207E000, v22, v23, "[%{public}s] Found characteristics - %@", v24, 0x16u);
        sub_2520A2584(v25, &unk_27F4CE080, &qword_252144E30);
        MEMORY[0x253099FD0](v25, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x253099FD0](v26, -1, -1);
        MEMORY[0x253099FD0](v24, -1, -1);
      }

      v31 = [v21 UUID];
      v32 = [v31 UUIDString];

      v33 = sub_252141B9C();
      v35 = v34;

      v36 = v33 == 0xD000000000000024 && 0x8000000252149ED0 == v35;
      if (v36 || (sub_25214247C() & 1) != 0)
      {

        v37 = sub_25214196C();
        v38 = sub_252141FBC();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v62 = v40;
          *v39 = 136446210;
          v41 = sub_2521425DC();
          v43 = sub_2520A5448(v41, v42, &v62);

          *(v39 + 4) = v43;
          _os_log_impl(&dword_25207E000, v37, v38, "[%{public}s] will read Hearing Test", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v40);
          MEMORY[0x253099FD0](v40, -1, -1);
          MEMORY[0x253099FD0](v39, -1, -1);
        }

        sub_252103A54(0xD000000000000024, 0x8000000252149ED0);
        goto LABEL_11;
      }

      if (v33 == 0xD000000000000024 && 0x800000025214B230 == v35)
      {
        break;
      }

      v44 = sub_25214247C();

      if (v44)
      {
        goto LABEL_28;
      }

      v45 = sub_25214196C();
      v55 = sub_252141FAC();
      if (os_log_type_enabled(v45, v55))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v62 = v48;
        *v47 = 136446210;
        v56 = sub_2521425DC();
        v58 = sub_2520A5448(v56, v57, &v62);

        *(v47 + 4) = v58;
        v52 = v55;
        v53 = v45;
        v54 = "[%{public}s] Cannot find a matching UUID for data";
        goto LABEL_32;
      }

LABEL_33:

LABEL_11:
      ++v19;
      v18 = v61;
      if (v60 == v19)
      {
        goto LABEL_36;
      }
    }

LABEL_28:
    v45 = sub_25214196C();
    v46 = sub_252141FBC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v62 = v48;
      *v47 = 136446210;
      v49 = sub_2521425DC();
      v51 = sub_2520A5448(v49, v50, &v62);

      *(v47 + 4) = v51;
      v52 = v46;
      v53 = v45;
      v54 = "[%{public}s] Test tone info - not for read/ack";
LABEL_32:
      _os_log_impl(&dword_25207E000, v53, v52, v54, v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x253099FD0](v48, -1, -1);
      MEMORY[0x253099FD0](v47, -1, -1);
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  __break(1u);
  return result;
}

uint64_t sub_25210FE10@<X0>(uint64_t *a1@<X8>)
{
  v2 = (*(v1 + 16) + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__HearingTestMode);
  v3 = *v2;
  v4 = v2[1];
  *a1 = *v2;
  a1[1] = v4;
  return sub_25210B224(v3, v4);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_2520CB598(*(v0 + 24), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25210FEA0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__HearingTestMode);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_25210B224(v1, v2);

  return sub_25210B134(v4, v5);
}

uint64_t sub_25210FF24()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25210FF64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2520DA018;

  return sub_252102D30(a1, v4, v5, v7, v6);
}

uint64_t sub_25211003C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_252110084(uint64_t a1)
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
  v10[1] = sub_2520DA018;

  return sub_252101C00(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_252110158@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__lostPeripheralIdentifier;
  swift_beginAccess();
  return sub_2520A2D9C(v3 + v4, a1, &qword_27F4CE700, &qword_2521467B0);
}

void sub_2521101CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedDiscovery);
  *(v1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedDiscovery) = v2;
  v3 = v2;
}

uint64_t sub_252110218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2521102C8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252110310()
{

  sub_2520CB598(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2521106E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_252110744(uint64_t *a1, int a2)
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

uint64_t sub_25211078C(uint64_t result, int a2, int a3)
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

uint64_t sub_2521107E4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_252141F0C();
  if (!v19)
  {
    return sub_252141D2C();
  }

  v41 = v19;
  v45 = sub_25214229C();
  v32 = sub_2521422AC();
  sub_25214226C();
  result = sub_252141EFC();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_252141F6C();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_25214228C();
      result = sub_252141F1C();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252110C0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    v8 = swift_allocObject();
    v8[2] = a4;
    v8[3] = v7;
    v8[4] = a2;
    v8[5] = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE818, &qword_252146A08);
    sub_25214216C();
    sub_2520A2F1C(&qword_27F4CE820, &qword_27F4CE818, &qword_252146A08, MEMORY[0x277D840E0]);
    sub_25214236C();

    return v9;
  }

  return result;
}

void *sub_252110D1C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {

    return MEMORY[0x277D84F90];
  }

  v2 = a1[4];
  v3 = 4;
  while (v1)
  {
    v4 = *(a1[v3++] + 16);
    --v1;
    if (v4 != *(v2 + 16))
    {
      __break(1u);
      break;
    }
  }

  v6 = sub_2521122D0(a1);
  v7 = a1[2];

  v8 = *(v2 + 16);

  if ((v7 * v8) >> 64 == (v7 * v8) >> 63)
  {
    if (v6[2] == v7 * v8)
    {
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252110DEC(uint64_t a1, uint64_t a2)
{
  sub_252141D7C();
  sub_252141D7C();
  swift_getWitnessTable();
  v3 = sub_252141F3C();
  if (!v12)
  {

    v9 = sub_252141D2C();
    v10 = 0;
    v11 = 0;
    return sub_252111220(v9, v10, v11, a2, v8);
  }

  MEMORY[0x28223BE20](v3);
  swift_getWitnessTable();
  result = sub_252141C5C();
  if (result)
  {

    swift_getWitnessTable();
    sub_252141C8C();
    sub_2521422BC();
    swift_getWitnessTable();
    v5 = sub_252141DAC();
    v6 = sub_252141D5C();

    v7 = sub_252141D5C();

    v9 = v5;
    v10 = v6;
    v11 = v7;
    return sub_252111220(v9, v10, v11, a2, v8);
  }

  __break(1u);
  return result;
}

void sub_25211100C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    sub_252110D1C(MEMORY[0x277D84F90]);
    return;
  }

  v7 = *(a1 + 32);
  v8 = v4 - 1;
  if (v4 != 1)
  {
    if (v4 >= 5)
    {
      v9 = v8 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v10 = vdupq_n_s64(v7);
      v11 = (a1 + 56);
      v12 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = v10;
      do
      {
        v10 = vbslq_s8(vcgtq_s64(v10, v11[-1]), v10, v11[-1]);
        v13 = vbslq_s8(vcgtq_s64(v13, *v11), v13, *v11);
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      v14 = vbslq_s8(vcgtq_s64(v10, v13), v10, v13);
      v15 = vextq_s8(v14, v14, 8uLL).u64[0];
      v7 = vbsl_s8(vcgtd_s64(v14.i64[0], v15), *v14.i8, v15);
      if (v8 == (v8 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v9 = 1;
    }

    v16 = v4 - v9;
    v17 = (a1 + 8 * v9 + 32);
    do
    {
      v19 = *v17++;
      v18 = v19;
      if (v7 <= v19)
      {
        v7 = v18;
      }

      --v16;
    }

    while (v16);
  }

LABEL_13:
  if (v7 >= a4)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v20 = a3 * v4;
  if ((a3 * v4) >> 64 != (a3 * v4) >> 63)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v20 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v20)
  {
    v21 = sub_252141D3C();
    *(v21 + 16) = v20;
    bzero((v21 + 32), 8 * v4 * a3);
    goto LABEL_19;
  }

  v21 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
LABEL_19:
    v22 = 0;
    v23 = v21 + 32;
    v25 = a3 < 0xFFFFFFFF80000000 || a4 < 0xFFFFFFFF80000000;
    while (1)
    {
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (a3 > 0x7FFFFFFF)
      {
        goto LABEL_33;
      }

      if (a4 > 0x7FFFFFFF)
      {
        goto LABEL_34;
      }

      if (v25)
      {
        goto LABEL_35;
      }

      if (v4 >> 31)
      {
        goto LABEL_36;
      }

      cblas_dcopy_NEWLAPACK();
      v23 += 8;
      ++v22;
      if (v26 == v4)
      {
        return;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_40:
  __break(1u);
}

uint64_t sub_252111220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  result = sub_252141D5C();
  if ((a2 * a3) >> 64 == (a2 * a3) >> 63)
  {
    if (result == a2 * a3)
    {
      return a1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252111284(uint64_t a1, uint64_t a2)
{
  result = a1 * a2;
  if ((a1 * a2) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2521112A0(uint64_t (*a1)(unint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  sub_252141D7C();
  sub_252141D1C();
  v7 = *v3;
  if (_swift_isClassOrObjCExistentialType())
  {
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v8 + 16);
  if (_swift_isClassOrObjCExistentialType())
  {
    v10 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  v14 = v11;
  v15 = v9;
  result = a1(&v14);
  v13 = v14;
  if (v4)
  {
    if (!v14)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v11 != v14)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v13 = v15;
    if (v15 == v9)
    {
      return result;
    }

    __break(1u);
  }

  if (!v13)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if (v11 != v13)
  {
    goto LABEL_17;
  }

  if (v15 != v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_2521113E4()
{
  v0 = sub_25214244C();
  MEMORY[0x253098DA0](v0);

  MEMORY[0x253098DA0](41931, 0xA200000000000000);
  v1 = sub_25214244C();
  MEMORY[0x253098DA0](v1);

  MEMORY[0x253098DA0](41, 0xE100000000000000);
  return 40;
}

uint64_t sub_2521114E0(uint64_t a1, uint64_t a2)
{
  sub_25214255C();
  MEMORY[0x253099700](a1);
  MEMORY[0x253099700](a2);
  return sub_25214258C();
}

uint64_t sub_252111550()
{
  sub_25214255C();
  sub_2521114AC(v2, *v0, v0[1]);
  return sub_25214258C();
}

uint64_t sub_2521115AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  result = sub_252141D5C();
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result != a2 * a3)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_2521115F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  result = *a1 * a2;
  if ((v4 * a2) >> 64 != result >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (__OFADD__(result, a2))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result + a2 >= result)
  {
    result = sub_252141DBC();
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
    a3[3] = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

BOOL sub_252111660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = sub_252141D9C();
  v14 = a2 == a5 && a3 == a6;
  return (v12 & 1) != 0 && v14;
}

uint64_t sub_2521116E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_252141D8C();
  MEMORY[0x253099700](a3);
  return MEMORY[0x253099700](a4);
}

uint64_t sub_252111730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_25214255C();
  sub_252141D8C();
  MEMORY[0x253099700](a2);
  MEMORY[0x253099700](a3);
  return sub_25214258C();
}

uint64_t sub_2521117E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_25214255C();
  sub_2521116E0(v7, *v3, v3[1], v3[2], *(a2 + 16), v5);
  return sub_25214258C();
}

uint64_t sub_252111844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_25211165C(a1, *(a2 + 16));
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  return result;
}

uint64_t sub_252111874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a1;
  v44 = a4;
  v8 = sub_252141D7C();

  WitnessTable = swift_getWitnessTable();
  v11 = sub_2521107E4(sub_25211215C, v43, v8, MEMORY[0x277D83B88], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);

  v12 = sub_252085BA8(v11);
  v14 = v13;

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  v37 = v15;
  v47 = 0;
  v48 = 0xE000000000000000;
  MEMORY[0x253098DA0](0x2878697274614DLL, 0xE700000000000000);
  *&v45 = a2;
  *(&v45 + 1) = a3;
  type metadata accessor for Matrix.Shape(0, a4, v16, v17);
  swift_getWitnessTable();
  sub_25214246C();
  MEMORY[0x253098DA0](173744172, 0xE400000000000000);
  v49 = v47;
  v50 = v48;
  v38 = a1;
  v39 = a2;
  v40 = a3;
  *&v45 = sub_252110C0C(a1, a2, a3, a4);
  *(&v45 + 1) = v18;
  *&v46 = v19;
  *(&v46 + 1) = v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CE7E8, &qword_2521469F8);
  v41 = a4;
  v21 = sub_25214216C();
  sub_252112194();
  sub_2521422FC();
  sub_2521422CC();
  v36[8] = sub_2521422EC();
  v22 = sub_2521422DC();
  v23 = v45;
  if (v45)
  {
    v24 = v46;
    while (1)
    {
      v42 = v23;
      v45 = v23;
      v46 = v24;
      MEMORY[0x28223BE20](v22);
      v36[2] = v41;
      v36[3] = v38;
      v36[4] = v39;
      v36[5] = v40;
      v36[6] = v37;
      v27 = swift_getWitnessTable();
      result = sub_2521107E4(sub_252112274, v36, v21, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v27, MEMORY[0x277D84AC0], v28);
      v30 = result;
      v31 = *(result + 16);
      if (v31)
      {
        break;
      }

      v25 = 0;
      v26 = 0xE000000000000000;
LABEL_7:

      *&v45 = v25;
      *(&v45 + 1) = v26;

      MEMORY[0x253098DA0](10, 0xE100000000000000);

      MEMORY[0x253098DA0](v45, *(&v45 + 1));
      swift_unknownObjectRelease();

      v22 = sub_2521422DC();
      v23 = v45;
      v24 = v46;
      if (!v45)
      {
        goto LABEL_13;
      }
    }

    v25 = 0;
    v32 = 0;
    v33 = (result + 40);
    v26 = 0xE000000000000000;
    while (v32 < *(v30 + 16))
    {
      ++v32;
      v35 = *(v33 - 1);
      v34 = *v33;
      *&v45 = v25;
      *(&v45 + 1) = v26;

      MEMORY[0x253098DA0](v35, v34);

      MEMORY[0x253098DA0](8236, 0xE200000000000000);

      v26 = *(&v45 + 1);
      v25 = v45;
      v33 += 2;
      if (v31 == v32)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    MEMORY[0x253098DA0](2653, 0xE200000000000000);
    return v49;
  }

  return result;
}

uint64_t sub_252111CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB0, &unk_252143BA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_252143AC0;
  (*(v6 + 16))(v8, a1, a2);
  v10 = MEMORY[0x277D839F8];
  v11 = swift_dynamicCast();
  v12 = *&v16[1];
  v13 = MEMORY[0x277D83A80];
  *(v9 + 56) = v10;
  *(v9 + 64) = v13;
  if (!v11)
  {
    v12 = 0.0;
  }

  *(v9 + 32) = v12;
  sub_252141BAC();
  v14 = sub_252141BFC();

  *a3 = v14;
  return result;
}

uint64_t sub_252111E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t *a3@<X8>, uint64_t a4@<X4>)
{
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB0, &unk_252143BA0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_252143AC0;
  (*(v8 + 16))(v10, a1, a2);
  v12 = MEMORY[0x277D839F8];
  v13 = swift_dynamicCast();
  v14 = *&v22[1];
  v15 = MEMORY[0x277D83A80];
  *(v11 + 56) = v12;
  *(v11 + 64) = v15;
  if (!v13)
  {
    v14 = 0.0;
  }

  *(v11 + 32) = v14;
  v16 = sub_252141BAC();
  v18 = sub_2521128B0(v16, v17, a4);
  v20 = v19;

  *a3 = v18;
  a3[1] = v20;
  return result;
}

uint64_t sub_252112084(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_252112194()
{
  result = qword_27F4CE7F0;
  if (!qword_27F4CE7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CE7E8, &qword_2521469F8);
    sub_252112220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE7F0);
  }

  return result;
}

unint64_t sub_252112220()
{
  result = qword_27F4CE7F8;
  if (!qword_27F4CE7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE7F8);
  }

  return result;
}

void *sub_25211229C(void *result, uint64_t a2, uint64_t a3)
{
  if (*result)
  {
    if (*result == a2)
    {
      if (result[1] == a3)
      {
        return sub_252141D7C();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2521122D0(void *result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 4;
  v5 = MEMORY[0x277D84F90];
  v6 = (MEMORY[0x277D84F90] + 32);
LABEL_3:
  v8 = *(v1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_31:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = v4[v3];

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(v1 + 16);
        if (v3 == v10)
        {
          goto LABEL_27;
        }

        if (v3 >= v10)
        {
          goto LABEL_31;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = *(v9 + 8 * v11 + 32);
        if (!v2)
        {
          v13 = v5[3];
          if (((v13 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_34;
          }

          v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
          if (v14 <= 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
          v16 = swift_allocObject();
          v17 = _swift_stdlib_malloc_size(v16);
          v18 = v17 - 32;
          if (v17 < 32)
          {
            v18 = v17 - 25;
          }

          v19 = v18 >> 3;
          v16[2] = v15;
          v16[3] = 2 * (v18 >> 3);
          v20 = (v16 + 4);
          v21 = v5[3] >> 1;
          if (v5[2])
          {
            v22 = v5 + 4;
            if (v16 != v5 || v20 >= v22 + 8 * v21)
            {
              v23 = v18 >> 3;
              memmove(v16 + 4, v22, 8 * v21);
              v19 = v23;
            }

            v5[2] = 0;
          }

          v6 = (v20 + 8 * v21);
          v2 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;

          v5 = v16;
        }

        v24 = __OFSUB__(v2--, 1);
        if (v24)
        {
          goto LABEL_33;
        }

        ++v11;
        *v6++ = v12;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_27:

  v25 = v5[3];
  if (v25 < 2)
  {
    return v5;
  }

  v26 = v25 >> 1;
  v24 = __OFSUB__(v26, v2);
  v27 = v26 - v2;
  if (!v24)
  {
    v5[2] = v27;
    return v5;
  }

LABEL_35:
  __break(1u);
  return result;
}

char *sub_2521124C0(char *result, char *a2, void *(*a3)(__int128 *__return_ptr, char **))
{
  v3 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v6 = result;
  if (v3)
  {
    if (v3 <= 0)
    {
      v7 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F4CE828, &qword_252146A10);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 1;
      }

      v7[2] = v3;
      v7[3] = 2 * (v9 >> 5);
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v10 = v7[3];

  if (v3 < 0)
  {
    goto LABEL_49;
  }

  v11 = v7 + 4;
  v12 = v10 >> 1;
  if (v3)
  {
    if (a2 < v6)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v13 = v6;
    while (a2 != v13)
    {
      v40 = v13;
      result = a3(&v38, &v40);
      if (v12 == 0x8000000000000000)
      {
        goto LABEL_43;
      }

      v14 = v39;
      ++v13;
      --v12;
      *v11 = v38;
      v11[1] = v14;
      v11 += 2;
      if (a2 == v13)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v15 = v6;
  if (v6 != a2)
  {
    if (a2 < v6)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v16 = a2;
    v17 = v6;
    v35 = v6;
    while (v15 >= v6)
    {
      if (v16 == v17)
      {
        goto LABEL_45;
      }

      v40 = v17;
      result = a3(&v38, &v40);
      v18 = v38;
      v19 = v39;
      if (!v12)
      {
        v20 = v7[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_47;
        }

        v36 = v39;
        v37 = v38;
        v21 = a3;
        v22 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v22 <= 1)
        {
          v23 = 1;
        }

        else
        {
          v23 = v22;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F4CE828, &qword_252146A10);
        v24 = swift_allocObject();
        v25 = _swift_stdlib_malloc_size(v24);
        v26 = v25 - 32;
        if (v25 < 32)
        {
          v26 = v25 - 1;
        }

        v27 = v26 >> 5;
        v24[2] = v23;
        v24[3] = 2 * (v26 >> 5);
        v28 = (v24 + 4);
        v29 = v7[3] >> 1;
        if (v7[2])
        {
          v30 = v7 + 4;
          if (v24 != v7 || v28 >= v30 + 32 * v29)
          {
            memmove(v24 + 4, v30, 32 * v29);
          }

          v7[2] = 0;
        }

        v11 = (v28 + 32 * v29);
        v12 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v29;

        v7 = v24;
        a3 = v21;
        v6 = v35;
        v16 = a2;
        v19 = v36;
        v18 = v37;
      }

      v31 = __OFSUB__(v12--, 1);
      if (v31)
      {
        goto LABEL_46;
      }

      ++v17;
      *v11 = v18;
      v11[1] = v19;
      v11 += 2;
      if (a2 == v17)
      {
        goto LABEL_38;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_38:
  v32 = v7[3];
  if (v32 < 2)
  {
    return v7;
  }

  v33 = v32 >> 1;
  v31 = __OFSUB__(v33, v12);
  v34 = v33 - v12;
  if (!v31)
  {
    v7[2] = v34;
    return v7;
  }

LABEL_52:
  __break(1u);
  return result;
}

void sub_252112780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2 * a5;
  if ((a2 * a5) >> 64 != (a2 * a5) >> 63)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v5 < 0)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5)
  {
    v9 = sub_252141D3C();
    *(v9 + 16) = v5;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (a2 > 0x7FFFFFFF)
  {
    goto LABEL_15;
  }

  if (a5 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a3 < 0xFFFFFFFF80000000 || a2 < 0xFFFFFFFF80000000 || a5 < 0xFFFFFFFF80000000)
  {
    goto LABEL_17;
  }

  if (a3 <= 0x7FFFFFFF)
  {
    v10 = v9;
    cblas_dgemm_NEWLAPACK();
    *(v10 + 16) = v5;
    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_2521128B0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE800, &qword_252146A00);
  sub_2520A2F1C(&qword_27F4CE808, &qword_27F4CE800, &qword_252146A00, MEMORY[0x277D84440]);
  sub_252141C3C();
  sub_2521129B4();
  sub_25214214C();

  return sub_252141C3C();
}

unint64_t sub_2521129B4()
{
  result = qword_27F4CE810;
  if (!qword_27F4CE810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE810);
  }

  return result;
}

uint64_t sub_252112A08()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252112A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_252112AD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x277D84F90];
  sub_25209B354(0, v1, 0);
  v2 = v27;
  v4 = a1 + 56;
  result = sub_25214219C();
  v6 = result;
  v7 = 0;
  v21 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v22 = *(a1 + 36);
    sub_25212CB84(*(a1 + 48) + 48 * v6, v24);
    v10 = v26;
    v23 = v25;

    result = sub_25212CBF4(v24);
    v27 = v2;
    v12 = *(v2 + 16);
    v11 = *(v2 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_25209B354((v11 > 1), v12 + 1, 1);
      v2 = v27;
    }

    *(v2 + 16) = v12 + 1;
    v13 = v2 + 16 * v12;
    *(v13 + 32) = v23;
    *(v13 + 40) = v10;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v14 = *(a1 + 56 + 8 * v9);
    if ((v14 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v22 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v6 & 0x3F));
    if (v15)
    {
      v8 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v9 << 6;
      v17 = v9 + 1;
      v18 = (a1 + 64 + 8 * v9);
      while (v17 < (v8 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_2520A1FF4(v6, v22, 0);
          v8 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_2520A1FF4(v6, v22, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v21)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_252112D14(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_25214255C(), v4 = *(a1 + 24), v5 = *(a1 + 32), sub_252141BEC(), v6 = sub_25214258C(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    while (1)
    {
      sub_2520CB768(*(a2 + 48) + 40 * v8, v13);
      if (v13[3] == v4 && v13[4] == v5)
      {
        break;
      }

      v11 = sub_25214247C();
      sub_2520CB7D8(v13);
      if ((v11 & 1) == 0)
      {
        v8 = (v8 + 1) & v9;
        if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          continue;
        }
      }

      return v11 & 1;
    }

    sub_2520CB7D8(v13);
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_252112E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_25214255C();
  sub_252141BEC();
  v6 = sub_25214258C();
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
    if (v11 || (sub_25214247C() & 1) != 0)
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

uint64_t sub_252112F28(void *a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_25214255C(), v4 = a1[4], v5 = a1[5], sub_252141BEC(), MEMORY[0x253099700](a1[2]), v6 = sub_25214258C(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    while (1)
    {
      sub_25212CB84(*(a2 + 48) + 48 * v8, v13);
      if (v13[4] == v4 && v13[5] == v5)
      {
        break;
      }

      v11 = sub_25214247C();
      sub_25212CBF4(v13);
      if ((v11 & 1) == 0)
      {
        v8 = (v8 + 1) & v9;
        if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          continue;
        }
      }

      return v11 & 1;
    }

    sub_25212CBF4(v13);
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_252113050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE740, &qword_2521467E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2520A2D9C(a3, v25 - v10, &qword_27F4CE740, &qword_2521467E0);
  v12 = sub_252141E3C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2520A2584(v11, &qword_27F4CE740, &qword_2521467E0);
  }

  else
  {
    sub_252141E2C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_252141DEC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_252141BDC() + 32;
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

      sub_2520A2584(a3, &qword_27F4CE740, &qword_2521467E0);

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

  sub_2520A2584(a3, &qword_27F4CE740, &qword_2521467E0);
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

unint64_t HTFaultCheckFailReason.description.getter()
{
  result = 0x76206E776F6B6E55;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000025;
      break;
    case 2:
      result = 0xD00000000000004BLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000041;
      break;
    case 5:
      result = 0xD00000000000001FLL;
      break;
    case 6:
      result = 0xD000000000000023;
      break;
    case 7:
      result = 0x6E65706F2064694CLL;
      break;
    case 8:
      result = 0x61206E6F69746F4DLL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 0xA:
      result = 0x6261206573696F4ELL;
      break;
    case 0xB:
      result = 0xD000000000000027;
      break;
    case 0xC:
      result = 0xD000000000000013;
      break;
    case 0xD:
      result = 0x6E207265746C6946;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    case 0xF:
      result = 0xD000000000000026;
      break;
    case 0x10:
      result = 0xD000000000000015;
      break;
    case 0x11:
    case 0x13:
    case 0x15:
      result = 0xD000000000000017;
      break;
    case 0x12:
      result = 0xD000000000000018;
      break;
    case 0x14:
      result = 0xD00000000000001BLL;
      break;
    case 0x16:
      result = 0x2061746164206F4ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_252113760(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_25213E648(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * v17), v21 = *(v20 + 16), v21 != *(v16 + 16)))
    {
LABEL_26:

      return 0;
    }

    if (v21)
    {
      v22 = v20 == v16;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = 32;
      while (v21)
      {
        if (*(v20 + v23) != *(v16 + v23))
        {
          goto LABEL_26;
        }

        ++v23;
        if (!--v21)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_29;
    }

LABEL_6:
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

BOOL static HTFaultCheckStatus.== infix(_:_:)(char *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1 < 0)
  {
    if ((v2 & 0x80) == 0)
    {
      return 0;
    }
  }

  else if ((v2 & 0x80) != 0)
  {
    return 0;
  }

  return ((v2 ^ *a1) & 1) == 0;
}

BOOL sub_25211392C(char *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1 < 0)
  {
    if ((v2 & 0x80) == 0)
    {
      return 0;
    }
  }

  else if ((v2 & 0x80) != 0)
  {
    return 0;
  }

  return ((v2 ^ *a1) & 1) == 0;
}

uint64_t HTEnvironmentNoiseData.drum_OctBand_sm.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t HTEnviNoiseData.drum_OctBand_sm.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t HTEnvNoiseData.drum_OctBand_sm.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void sub_252113CA4(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    a2(Strong, *(a1 + 8));

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v5 = sub_25214198C();
    __swift_project_value_buffer(v5, qword_27F4CDE68);
    oslog = sub_25214196C();
    v6 = sub_252141FAC();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_2520A5448(0xD000000000000025, 0x8000000252147A00, &v10);
      _os_log_impl(&dword_25207E000, oslog, v6, "[%{public}s] missing observer!", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x253099FD0](v8, -1, -1);
      MEMORY[0x253099FD0](v7, -1, -1);
    }
  }
}

uint64_t sub_252113E38()
{
  sub_25214255C();
  sub_252141BEC();
  MEMORY[0x253099700](*(v0 + 16));
  return sub_25214258C();
}

uint64_t sub_252113EBC()
{
  sub_25214255C();
  sub_252141BEC();
  MEMORY[0x253099700](*(v0 + 16));
  return sub_25214258C();
}

uint64_t sub_252113F08(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return 1;
  }

  else
  {
    return sub_25214247C();
  }
}

uint64_t sub_252113FE0()
{
  type metadata accessor for HTCBDeviceStore();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  qword_27F4D34A8 = v0;
  return result;
}

uint64_t sub_252114020()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_252114084()
{
  if (qword_27F4CD7C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4D34A8;
  *(v0 + 24) = qword_27F4D34A8;

  return MEMORY[0x2822009F8](sub_25211411C, v1, 0);
}

uint64_t sub_25211411C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 112);
  *(v1 + 112) = v2;
  v4 = v2;

  v5 = v0[1];

  return v5();
}

BOOL sub_252114188(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 12) = *(a1 + 60);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 12) = *(a2 + 60);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_25212C094(v7, v9);
}

void sub_2521141E4()
{
  type metadata accessor for HTRequirementStatusManager();
  v0 = swift_allocObject();
  HTRequirementStatusManager.init(_:)(0);
  qword_27F4CE8B0 = v0;
}

uint64_t HTRequirementStatusManager.__allocating_init(_:)(void *a1)
{
  v2 = swift_allocObject();
  HTRequirementStatusManager.init(_:)(a1);
  return v2;
}

double static HTRequirementStatusManager.shared.getter()
{
  if (qword_27F4CD7D0 != -1)
  {
    swift_once();
  }

  return result;
}

__n128 sub_2521142C0@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  result = *(v1 + 32);
  v5 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 sub_25211430C(uint64_t a1)
{
  v3 = *(a1 + 32);
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v5;
  *(v1 + 64) = v3;
  return result;
}

void sub_2521143B0(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 136);
  v3 = *(a1 + 144);
  v4 = *(a1 + 152);
  v5 = *(a1 + 160);
  v6 = *a2;
  *(a1 + 136) = a2[1];
  v7 = a2[3];
  *(a1 + 152) = a2[2];
  v8 = *(a1 + 168);
  v9 = *(a1 + 176);
  v10 = *(a1 + 184);
  *(a1 + 168) = v7;
  *(a1 + 180) = *(a2 + 60);
  v11 = *(a1 + 120);
  v12 = *(a1 + 128);
  *(a1 + 120) = v6;
  sub_2520A2D9C(a2, v13, &qword_27F4CE6F0, &qword_2521467A0);
  sub_25210B774(v11, v12, v2, v3, v4, v5, v8, v9, v10);
}

void sub_252114478()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_252141A4C();
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252141A8C();
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252141ABC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v1[26];
  if (v15)
  {
    v27 = &v24 - v14;
    v28 = v15;
    sub_252141AAC();
    sub_252141AEC();
    v16 = *(v10 + 8);
    v29 = v10 + 8;
    v30 = v16;
    v16(v12, v9);
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v2;
    v26 = v17;
    aBlock[4] = sub_252130580;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2520A3B78;
    aBlock[3] = &block_descriptor_514;
    v19 = _Block_copy(aBlock);

    sub_252141A6C();
    v33 = MEMORY[0x277D84F90];
    sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v20 = v32;
    v24 = v6;
    v25 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
    v21 = v31;
    sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0, MEMORY[0x277D83970]);
    sub_25214218C();
    v23 = v27;
    v22 = v28;
    MEMORY[0x253099170](v27, v8, v5, v19);
    _Block_release(v19);

    (*(v20 + 8))(v5, v3);
    (*(v21 + 8))(v8, v24);
    v30(v23, v25);
  }
}

void sub_2521148C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 272) = 1;
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v3 = sub_25214198C();
    __swift_project_value_buffer(v3, qword_27F4CDE68);
    v4 = sub_25214196C();
    v5 = sub_252141FBC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136446210;
      v8 = sub_2521425DC();
      v10 = sub_2520A5448(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] timer done!", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x253099FD0](v7, -1, -1);
      MEMORY[0x253099FD0](v6, -1, -1);
    }
  }
}

void sub_252114A48(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE740, &qword_2521467E0);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v182[-v7];
  if ((*(v1 + 216) & 1) == 0)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v20 = sub_25214198C();
    __swift_project_value_buffer(v20, qword_27F4CDE68);
    v190 = sub_25214196C();
    v21 = sub_252141FBC();
    if (os_log_type_enabled(v190, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v197[0] = v23;
      *v22 = 136446210;
      v24 = sub_2521425DC();
      v26 = sub_2520A5448(v24, v25, v197);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_25207E000, v190, v21, "[%{public}s] handleDeviceChanged inactive due to deactivated discovery", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x253099FD0](v23, -1, -1);
      MEMORY[0x253099FD0](v22, -1, -1);
    }

    else
    {
      v27 = v190;
    }

    return;
  }

  if (qword_27F4CD7A0 != -1)
  {
    v6 = swift_once();
  }

  if (byte_27F4D3490 == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v9 = sub_25214198C();
    __swift_project_value_buffer(v9, qword_27F4CDE68);
    sub_25210AC9C(a1, v197);
    sub_25210AC9C(a1, v197);
    sub_25210AC9C(a1, v197);
    sub_25210AC9C(a1, v197);
    sub_25210AC9C(a1, v197);
    sub_25210AC9C(a1, v197);
    sub_25210AC9C(a1, v197);
    sub_25210AC9C(a1, v197);
    v10 = sub_25214196C();
    v11 = sub_252141FBC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v190 = v8;
      v14 = v13;
      *&v197[0] = v13;
      *v12 = 136447490;
      v15 = sub_2521425DC();
      v17 = v4;
      v18 = sub_2520A5448(v15, v16, v197);

      *(v12 + 4) = v18;
      v4 = v17;
      *(v12 + 12) = 1024;
      sub_25210ACF8(a1);
      *(v12 + 14) = *(a1 + 40);
      sub_25210ACF8(a1);
      *(v12 + 18) = 1024;
      sub_25210ACF8(a1);
      *(v12 + 20) = *(a1 + 32);
      sub_25210ACF8(a1);
      *(v12 + 24) = 1024;
      sub_25210ACF8(a1);
      *(v12 + 26) = *(a1 + 44);
      sub_25210ACF8(a1);
      *(v12 + 30) = 1024;
      sub_25210ACF8(a1);
      *(v12 + 32) = *(a1 + 36);
      sub_25210ACF8(a1);
      *(v12 + 36) = 2080;
      *(v12 + 38) = sub_2520A5448(*a1, *(a1 + 8), v197);
      _os_log_impl(&dword_25207E000, v10, v11, "[%{public}s] handleDeviceChanged p %d, pp %d, s %d, ps %d device %s", v12, 0x2Eu);
      swift_arrayDestroy();
      v19 = v14;
      v8 = v190;
      MEMORY[0x253099FD0](v19, -1, -1);
      MEMORY[0x253099FD0](v12, -1, -1);
    }

    else
    {
      sub_25210ACF8(a1);
      sub_25210ACF8(a1);
      sub_25210ACF8(a1);
      sub_25210ACF8(a1);
      sub_25210ACF8(a1);
      sub_25210ACF8(a1);
      sub_25210ACF8(a1);
      sub_25210ACF8(a1);
    }
  }

  MEMORY[0x28223BE20](v6);
  *&v182[-16] = v28;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
  sub_25214200C();

  v197[0] = v193;
  v197[1] = v194;
  v197[2] = v195;
  *v198 = v196[0];
  *&v198[12] = *(v196 + 12);
  if (*(&v193 + 1))
  {
    sub_2520A2584(v197, &qword_27F4CE6F0, &qword_2521467A0);
    v30 = *(v2 + 248);
    v31 = sub_2520F8B10(a1);

    if ((v31 & 1) == 0)
    {
      if (sub_25212A59C(a1))
      {
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v52 = sub_25214198C();
        __swift_project_value_buffer(v52, qword_27F4CDE68);
        sub_25210AC9C(a1, &v193);
        v44 = sub_25214196C();
        v45 = sub_252141FBC();
        sub_25210ACF8(a1);
        if (!os_log_type_enabled(v44, v45))
        {
          goto LABEL_40;
        }

        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *&v193 = v47;
        *v46 = 136446466;
        v53 = sub_2521425DC();
        v55 = sub_2520A5448(v53, v54, &v193);

        *(v46 + 4) = v55;
        *(v46 + 12) = 2080;
        *(v46 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), &v193);
        v51 = "[%{public}s] handleDeviceChanged new device ignored: %s";
        goto LABEL_39;
      }

LABEL_41:
      sub_25212A6B4(a1);
      return;
    }
  }

  if ((*(a1 + 52) & 1) == 0)
  {
    v40 = *a1;
    v41 = *(a1 + 8);
    v42 = *(v2 + 248);
    v189 = v41;
    LOBYTE(v41) = sub_252105BD0(v40, v41);

    if (v41)
    {
      if (sub_25212A59C(a1))
      {
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v43 = sub_25214198C();
        __swift_project_value_buffer(v43, qword_27F4CDE68);
        sub_25210AC9C(a1, &v193);
        v44 = sub_25214196C();
        v45 = sub_252141FBC();
        sub_25210ACF8(a1);
        if (!os_log_type_enabled(v44, v45))
        {
          goto LABEL_40;
        }

        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *&v193 = v47;
        *v46 = 136446466;
        v48 = sub_2521425DC();
        v50 = sub_2520A5448(v48, v49, &v193);

        *(v46 + 4) = v50;
        *(v46 + 12) = 2080;
        *(v46 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), &v193);
        v51 = "[%{public}s] handleDeviceChanged ignore known bad device: %s";
LABEL_39:
        _os_log_impl(&dword_25207E000, v44, v45, v51, v46, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v47, -1, -1);
        MEMORY[0x253099FD0](v46, -1, -1);
LABEL_40:

        goto LABEL_41;
      }

      goto LABEL_41;
    }

    v190 = v8;
    LODWORD(v188) = sub_25211AD94(a1);
    v56 = sub_25211B004(a1);
    v57 = *(v2 + 248);
    v58 = sub_25210B830(a1);

    if (!v58)
    {
      v189 = v4;
      MEMORY[0x28223BE20](v59);
      *&v182[-16] = v92;
      v93 = v92;
      sub_25214200C();

      v193 = v191[0];
      v194 = v191[1];
      v195 = v191[2];
      v196[0] = v192[0];
      *(v196 + 12) = *(v192 + 12);
      if (*(&v191[0] + 1))
      {
        sub_2520A2584(&v193, &qword_27F4CE6F0, &qword_2521467A0);
        goto LABEL_41;
      }

      if ((v188 | v56))
      {
        v94 = v189;
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v95 = sub_25214198C();
        __swift_project_value_buffer(v95, qword_27F4CDE68);
        sub_25210AC9C(a1, v191);
        v96 = sub_25214196C();
        v97 = sub_252141FBC();
        sub_25210ACF8(a1);
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          *&v191[0] = v99;
          *v98 = 136446466;
          v100 = sub_2521425DC();
          v102 = sub_2520A5448(v100, v101, v191);

          *(v98 + 4) = v102;
          *(v98 + 12) = 2080;
          *(v98 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), v191);
          _os_log_impl(&dword_25207E000, v96, v97, "[%{public}s] handleDeviceChanged notify incompatible %s", v98, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x253099FD0](v99, -1, -1);
          MEMORY[0x253099FD0](v98, -1, -1);
        }

        v103 = v190;
        v104 = sub_252141E3C();
        (*(*(v104 - 8) + 56))(v103, 1, 1, v104);
        v105 = swift_allocObject();
        *(v105 + 16) = 0;
        *(v105 + 24) = 0;
        v106 = *(a1 + 48);
        *(v105 + 64) = *(a1 + 32);
        *(v105 + 80) = v106;
        *(v105 + 92) = *(a1 + 60);
        v107 = *(a1 + 16);
        *(v105 + 32) = *a1;
        *(v105 + 48) = v107;
        *(v105 + 112) = v2;
        *(v105 + 120) = v94;
        sub_25210AC9C(a1, v191);

        sub_252113050(0, 0, v103, &unk_252147B68, v105);

        goto LABEL_41;
      }

      if (sub_25212A59C(a1))
      {
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v108 = sub_25214198C();
        __swift_project_value_buffer(v108, qword_27F4CDE68);
        sub_25210AC9C(a1, v191);
        v44 = sub_25214196C();
        v45 = sub_252141FBC();
        sub_25210ACF8(a1);
        if (!os_log_type_enabled(v44, v45))
        {
          goto LABEL_40;
        }

        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *&v191[0] = v47;
        *v46 = 136446466;
        v109 = sub_2521425DC();
        v111 = sub_2520A5448(v109, v110, v191);

        *(v46 + 4) = v111;
        *(v46 + 12) = 2080;
        *(v46 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), v191);
        v51 = "[%{public}s] handleDeviceChanged ignoring  %s";
        goto LABEL_39;
      }

      goto LABEL_41;
    }

    v187 = v40;
    v60 = [objc_opt_self() sharedInstance];
    v61 = [v60 currentRoute];

    v62 = [v61 outputs];
    v63 = sub_2520A5A94(0, &qword_27F4CE0D0, 0x277CB8408);
    v64 = sub_252141CDC();

    if (v64 >> 62)
    {
      v65 = sub_25214232C();
    }

    else
    {
      v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v66 = v190;
    if (!v65)
    {

      goto LABEL_81;
    }

    v188 = v64;
    v186 = v63;
    if ((v64 & 0xC000000000000001) != 0)
    {
      v67 = MEMORY[0x2530993D0](0, v64);
    }

    else
    {
      if (!*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_124;
      }

      v67 = *(v64 + 32);
    }

    v68 = v67;
    v69 = &selRef_categoryOptions;
    v70 = [v67 portName];
    v71 = sub_252141B9C();
    v73 = v72;

    if (v71 != *(v2 + 280) || v73 != *(v2 + 288))
    {
      v74 = sub_25214247C();

      if (v74)
      {
LABEL_74:
        v116 = v4;
        v117 = v68;
        v118 = [v68 portType];
        v119 = sub_252141B9C();
        v121 = v120;
        if (v119 == sub_252141B9C() && v121 == v122)
        {
          goto LABEL_76;
        }

        v123 = sub_25214247C();

        if ((v123 & 1) == 0)
        {
          v118 = [v117 portType];
          v147 = sub_252141B9C();
          v149 = v148;
          if (v147 == sub_252141B9C() && v149 == v150)
          {
LABEL_76:

LABEL_79:
            v4 = v116;
LABEL_80:

            *(v2 + 384) = 1;
            v66 = v190;
LABEL_81:
            v124 = sub_252141E3C();
            v125 = *(*(v124 - 8) + 56);
            v125(v66, 1, 1, v124);
            v126 = swift_allocObject();
            *(v126 + 16) = 0;
            *(v126 + 24) = 0;
            v127 = *(a1 + 48);
            *(v126 + 64) = *(a1 + 32);
            *(v126 + 80) = v127;
            *(v126 + 92) = *(a1 + 60);
            v128 = *(a1 + 16);
            *(v126 + 32) = *a1;
            *(v126 + 48) = v128;
            *(v126 + 112) = v2;
            sub_25210AC9C(a1, &v193);

            sub_252113050(0, 0, v66, &unk_252147B78, v126);

            if (*(v2 + 384) == 1)
            {
              sub_25212AA10(a1);
              v129 = *(a1 + 40);
              if (v129 != 7 && v129 != 1 || (v130 = *(a1 + 44), v130 != 7) && v130 != 1)
              {
                v125(v66, 1, 1, v124);
                v143 = swift_allocObject();
                *(v143 + 16) = 0;
                *(v143 + 24) = 0;
                v144 = *(a1 + 48);
                *(v143 + 64) = *(a1 + 32);
                *(v143 + 80) = v144;
                *(v143 + 92) = *(a1 + 60);
                v145 = *(a1 + 16);
                *(v143 + 32) = *a1;
                *(v143 + 48) = v145;
                *(v143 + 112) = v2;
                *(v143 + 120) = v4;
                sub_25210AC9C(a1, &v193);

                v146 = &unk_252147B80;
LABEL_107:
                sub_252113050(0, 0, v66, v146, v143);

                return;
              }

              v131 = *(v2 + 240);
              if (v131)
              {
                v132 = qword_27F4CD708;
                v133 = v131;
                if (v132 != -1)
                {
                  swift_once();
                }

                v134 = sub_25214198C();
                __swift_project_value_buffer(v134, qword_27F4CDE68);
                v135 = sub_25214196C();
                v136 = sub_252141FBC();
                if (os_log_type_enabled(v135, v136))
                {
                  v137 = swift_slowAlloc();
                  *v137 = 0;
                  _os_log_impl(&dword_25207E000, v135, v136, "HTAudioRouteRequirementManager capture requested", v137, 2u);
                  MEMORY[0x253099FD0](v137, -1, -1);
                }

                v66 = v190;
              }

              else
              {
                if (qword_27F4CD708 != -1)
                {
                  swift_once();
                }

                v151 = sub_25214198C();
                __swift_project_value_buffer(v151, qword_27F4CDE68);
                v152 = sub_25214196C();
                v153 = sub_252141FBC();
                if (os_log_type_enabled(v152, v153))
                {
                  v154 = swift_slowAlloc();
                  *v154 = 0;
                  _os_log_impl(&dword_25207E000, v152, v153, "HTAudioRouteRequirementManager lost!", v154, 2u);
                  MEMORY[0x253099FD0](v154, -1, -1);
                }

                sub_25211672C();
                v155 = *(v2 + 240);
                if (!v155)
                {
                  goto LABEL_106;
                }

                v133 = v155;
              }

              sub_252139DC8();

LABEL_106:
              v125(v66, 1, 1, v124);
              v143 = swift_allocObject();
              *(v143 + 16) = 0;
              *(v143 + 24) = 0;
              v156 = *(a1 + 48);
              *(v143 + 64) = *(a1 + 32);
              *(v143 + 80) = v156;
              *(v143 + 92) = *(a1 + 60);
              v157 = *(a1 + 16);
              *(v143 + 32) = *a1;
              *(v143 + 48) = v157;
              *(v143 + 112) = v2;
              *(v143 + 120) = v4;
              sub_25210AC9C(a1, &v193);

              v146 = &unk_252147B90;
              goto LABEL_107;
            }

            if (qword_27F4CD708 == -1)
            {
LABEL_93:
              v138 = sub_25214198C();
              __swift_project_value_buffer(v138, qword_27F4CDE68);
              sub_25210AC9C(a1, &v193);
              v33 = sub_25214196C();
              v139 = sub_252141FBC();
              sub_25210ACF8(a1);
              if (!os_log_type_enabled(v33, v139))
              {
                goto LABEL_27;
              }

              v35 = swift_slowAlloc();
              v36 = swift_slowAlloc();
              *&v193 = v36;
              *v35 = 136446722;
              v140 = sub_2521425DC();
              v142 = sub_2520A5448(v140, v141, &v193);

              *(v35 + 4) = v142;
              *(v35 + 12) = 2080;
              *(v35 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), &v193);
              *(v35 + 22) = 2080;
              *(v35 + 24) = sub_2520A5448(v187, v189, &v193);
              _os_log_impl(&dword_25207E000, v33, v139, "[%{public}s] handleDeviceChanged new device %s not bluetooth route: %s", v35, 0x20u);
LABEL_26:
              swift_arrayDestroy();
              MEMORY[0x253099FD0](v36, -1, -1);
              MEMORY[0x253099FD0](v35, -1, -1);
LABEL_27:

              return;
            }

LABEL_124:
            swift_once();
            goto LABEL_93;
          }

          v158 = sub_25214247C();

          if ((v158 & 1) == 0)
          {
            MEMORY[0x28223BE20](v159);
            *&v182[-16] = v160;
            v161 = v160;
            sub_25214200C();

            v162 = v117;
            v4 = v116;
            if ((v193 & 1) == 0)
            {
              v176 = [v117 portType];
              v177 = sub_252141B9C();
              v179 = v178;
              if (v177 == sub_252141B9C() && v179 == v180)
              {

                goto LABEL_80;
              }

              v181 = sub_25214247C();

              if (v181)
              {

                goto LABEL_80;
              }
            }

            *(v2 + 384) = 0;
            if (qword_27F4CD708 != -1)
            {
              swift_once();
            }

            v163 = sub_25214198C();
            __swift_project_value_buffer(v163, qword_27F4CDE68);
            sub_25210AC9C(a1, &v193);
            v164 = v188;

            v165 = sub_25214196C();
            v166 = sub_252141FAC();
            sub_25210ACF8(a1);

            if (os_log_type_enabled(v165, v166))
            {
              v167 = swift_slowAlloc();
              v168 = swift_slowAlloc();
              *&v193 = v168;
              *v167 = 136446722;
              v169 = sub_2521425DC();
              v171 = sub_2520A5448(v169, v170, &v193);

              *(v167 + 4) = v171;
              *(v167 + 12) = 2080;
              *(v167 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), &v193);
              *(v167 + 22) = 2080;
              v172 = MEMORY[0x253098E80](v164, v186);
              v174 = v173;

              v175 = sub_2520A5448(v172, v174, &v193);

              *(v167 + 24) = v175;
              _os_log_impl(&dword_25207E000, v165, v166, "[%{public}s] handleDeviceChanged %s no valid current route output ports found in %s", v167, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x253099FD0](v168, -1, -1);
              MEMORY[0x253099FD0](v167, -1, -1);
            }

            else
            {
            }

            return;
          }
        }

        goto LABEL_79;
      }

      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v75 = sub_25214198C();
      __swift_project_value_buffer(v75, qword_27F4CDE68);
      sub_25210AC9C(a1, &v193);
      v76 = v68;
      v77 = sub_25214196C();
      v78 = sub_252141FBC();
      sub_25210ACF8(a1);

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v184 = v77;
        v80 = v79;
        v185 = swift_slowAlloc();
        *&v193 = v185;
        *v80 = 136446722;
        v81 = sub_2521425DC();
        v183 = v78;
        v83 = sub_2520A5448(v81, v82, &v193);

        *(v80 + 4) = v83;
        *(v80 + 12) = 2080;
        *(v80 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), &v193);
        *(v80 + 22) = 2080;
        v84 = [v76 description];
        v85 = sub_252141B9C();
        v86 = v76;
        v88 = v87;

        v89 = sub_2520A5448(v85, v88, &v193);
        v76 = v86;
        v69 = &selRef_categoryOptions;

        *(v80 + 24) = v89;
        v90 = v184;
        _os_log_impl(&dword_25207E000, v184, v183, "[%{public}s] handleDeviceChanged %s current output port %s", v80, 0x20u);
        v91 = v185;
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v91, -1, -1);
        MEMORY[0x253099FD0](v80, -1, -1);
      }

      else
      {
      }

      v112 = [v76 v69[88]];
      v113 = sub_252141B9C();
      v115 = v114;

      *(v2 + 280) = v113;
      *(v2 + 288) = v115;
    }

    goto LABEL_74;
  }

  if (sub_25212A59C(a1))
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v32 = sub_25214198C();
    __swift_project_value_buffer(v32, qword_27F4CDE68);
    sub_25210AC9C(a1, &v193);
    v33 = sub_25214196C();
    v34 = sub_252141FBC();
    sub_25210ACF8(a1);
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_27;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v193 = v36;
    *v35 = 136446466;
    v37 = sub_2521425DC();
    v39 = sub_2520A5448(v37, v38, &v193);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), &v193);
    _os_log_impl(&dword_25207E000, v33, v34, "[%{public}s] handleDeviceChanged ignore closed lid device: %s", v35, 0x16u);
    goto LABEL_26;
  }
}