uint64_t WFSetupServerDelegateSupportedClasses()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  return [v0 setWithObjects:{v1, objc_opt_class(), 0}];
}

void *sub_26C66D2E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8708, &qword_26C6DA428);
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2);
  v31 = v27 - v3;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8710, &unk_26C6DA430) - 8;
  v4 = MEMORY[0x28223BE20](v30);
  v32 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v29 = v27 - v6;
  v28 = sub_26C6D8BD8();
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C6D8C08();
  MEMORY[0x28223BE20](v10);
  v11 = sub_26C6D8978();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_26C6779D0(0, &qword_2804A8718, 0x277D85C90);
  v27[0] = "@NSError@NSDictionary>20";
  v27[1] = v12;
  sub_26C6D8968();
  v35 = MEMORY[0x277D84F90];
  sub_26C677A18(&qword_2804A8720, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8728, &qword_26C6DA580);
  sub_26C677B18(&qword_2804A8730, &qword_2804A8728, &qword_26C6DA580, MEMORY[0x277D83970]);
  sub_26C6D8C88();
  (*(v7 + 104))(v9, *MEMORY[0x277D85268], v28);
  v0[2] = sub_26C6D8C18();
  v0[4] = 0;
  v0[5] = 0;
  v14 = v30;
  v13 = v31;
  v16 = v33;
  v15 = v34;
  (*(v33 + 104))(v31, *MEMORY[0x277D85778], v34);
  v17 = v29;
  sub_26C6D8B18();
  (*(v16 + 8))(v13, v15);
  v18 = v32;
  sub_26C677AA8(v17, v32);
  v19 = *(v14 + 56);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8738, &unk_26C6DA440);
  v1[9] = v20;
  v1[10] = sub_26C677B18(&qword_2804A8740, &qword_2804A8738, &unk_26C6DA440, &protocol conformance descriptor for AsyncStream<A>);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 6);
  v22 = *(v20 - 8);
  (*(v22 + 32))(boxed_opaque_existential_1, v18, v20);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C0, &qword_26C6DA3A0);
  v24 = *(v23 - 8);
  (*(v24 + 8))(v18 + v19, v23);
  sub_26C677AA8(v17, v18);
  (*(v24 + 32))(v1 + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v18 + *(v14 + 56), v23);
  (*(v22 + 8))(v18, v20);
  v25 = [objc_allocWithZone(MEMORY[0x277D54CE0]) init];
  v1[3] = v25;
  [v25 setAdvertiseRate_];
  [v1[3] setDispatchQueue_];
  [v1[3] setNeedsSetup_];
  [v1[3] setOverrideScreenOff_];
  [v1[3] setSessionFlags_];
  sub_26C677B60(v17, &qword_2804A8710, &unk_26C6DA430);
  return v1;
}

id *sub_26C66D8B0()
{
  v1 = v0;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD228);
  v3 = sub_26C6D8878();
  v4 = sub_26C6D8BB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_26C67A77C(0x74696E696564, 0xE600000000000000, &v10);
    _os_log_impl(&dword_26C66B000, v3, v4, "Running SFServiceAgent::%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D6A7490](v6, -1, -1);
    MEMORY[0x26D6A7490](v5, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 48));
  v7 = OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C0, &qword_26C6DA3A0);
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  return v1;
}

uint64_t sub_26C66DA64()
{
  sub_26C66D8B0();

  return swift_deallocClassInstance();
}

void sub_26C66DABC(uint64_t a1, unint64_t a2)
{
  if (*(v2 + 40))
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v3 = sub_26C6D8898();
    __swift_project_value_buffer(v3, qword_2804AD228);
    oslog = sub_26C6D8878();
    v4 = sub_26C6D8BB8();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_26C66B000, oslog, v4, "sharingRestartAssertionClient::preventExit is already active", v5, 2u);
      v6 = v5;
LABEL_12:
      MEMORY[0x26D6A7490](v6, -1, -1);
    }
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x277D54C30]) init];
    v10 = *(v2 + 40);
    *(v2 + 40) = v9;
    v11 = v9;

    if (v11)
    {
      v12 = sub_26C6D89E8();
      [v11 preventExitForLocaleReason_];
    }

    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v13 = sub_26C6D8898();
    __swift_project_value_buffer(v13, qword_2804AD228);

    oslog = sub_26C6D8878();
    v14 = sub_26C6D8BB8();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_26C67A77C(a1, a2, &v18);
      _os_log_impl(&dword_26C66B000, oslog, v14, "sharingRestartAssertionClient::preventExit activated for reason: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x26D6A7490](v16, -1, -1);
      v6 = v15;
      goto LABEL_12;
    }
  }
}

void sub_26C66DD20()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = v0;
    v3 = qword_2804A8598;
    v4 = v1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_26C6D8898();
    __swift_project_value_buffer(v5, qword_2804AD228);
    v6 = sub_26C6D8878();
    v7 = sub_26C6D8BB8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26C66B000, v6, v7, "Invalidating sharingRestartAssertionClient::preventExit", v8, 2u);
      MEMORY[0x26D6A7490](v8, -1, -1);
    }

    [v4 invalidate];
    v9 = *(v2 + 40);
    *(v2 + 40) = 0;
  }

  else
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v10 = sub_26C6D8898();
    __swift_project_value_buffer(v10, qword_2804AD228);
    oslog = sub_26C6D8878();
    v11 = sub_26C6D8BB8();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_26C66B000, oslog, v11, "sharingRestartAssertionClient::preventExit is already released.", v12, 2u);
      MEMORY[0x26D6A7490](v12, -1, -1);
    }

    v9 = oslog;
  }
}

uint64_t sub_26C66DF00(char a1, char a2)
{
  *(v3 + 144) = v2;
  *(v3 + 185) = a2;
  *(v3 + 184) = a1;
  *(v3 + 152) = *v2;
  type metadata accessor for SFServiceAgent(0);
  sub_26C677A18(&qword_2804A86A0, type metadata accessor for SFServiceAgent, &unk_26C6DA360);
  v5 = sub_26C6D8AD8();
  *(v3 + 160) = v5;
  *(v3 + 168) = v4;

  return MEMORY[0x2822009F8](sub_26C66DFE8, v5, v4);
}

uint64_t sub_26C66DFE8()
{
  v1 = v0[19];
  v2 = *(v0 + 185);
  v3 = *(v0 + 184);
  v4 = *(v0[18] + 24);
  [v4 setIdentifier_];
  [v4 setDeviceActionType_];
  [v4 setPayloadDovePeace2_];
  sub_26C66E3B8();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v1;
  v0[14] = sub_26C67696C;
  v0[15] = v6;
  v7 = MEMORY[0x277D85DD0];
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26C675260;
  v0[13] = &block_descriptor_79;
  v8 = _Block_copy(v0 + 10);

  [v4 setReceivedObjectHandler_];
  _Block_release(v8);
  v0[2] = v0;
  v0[3] = sub_26C66E204;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F0, &qword_26C6DA3C8);
  v0[10] = v7;
  v0[11] = 1107296256;
  v0[12] = sub_26C6A4DB4;
  v0[13] = &block_descriptor_82;
  v0[14] = v9;
  [v4 activateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26C66E204()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  v3 = *(v1 + 168);
  v4 = *(v1 + 160);
  if (v2)
  {
    v5 = sub_26C66E34C;
  }

  else
  {
    v5 = sub_26C66E334;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26C66E34C()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

void sub_26C66E3B8()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[3];
  v4 = swift_allocObject();
  swift_weakInit();
  v24 = sub_26C677500;
  v25 = v4;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_26C670B0C;
  v23 = &block_descriptor_91;
  v5 = _Block_copy(&v20);

  [v3 setInterruptionHandler_];
  _Block_release(v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v24 = sub_26C677508;
  v25 = v6;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_26C670B0C;
  v23 = &block_descriptor_95;
  v7 = _Block_copy(&v20);

  [v3 setInvalidationHandler_];
  _Block_release(v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v24 = sub_26C677510;
  v25 = v8;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_26C67102C;
  v23 = &block_descriptor_99;
  v9 = _Block_copy(&v20);

  [v3 setPeerDisconnectedHandler_];
  _Block_release(v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v24 = sub_26C677518;
  v25 = v10;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_26C671E20;
  v23 = &block_descriptor_103;
  v11 = _Block_copy(&v20);

  [v3 setSessionStartedHandler_];
  _Block_release(v11);
  v12 = swift_allocObject();
  swift_weakInit();
  v24 = sub_26C677520;
  v25 = v12;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_26C672090;
  v23 = &block_descriptor_107;
  v13 = _Block_copy(&v20);

  [v3 setPromptForPINHandler_];
  _Block_release(v13);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v2;
  v24 = sub_26C677560;
  v25 = v15;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_26C671E20;
  v23 = &block_descriptor_114;
  v16 = _Block_copy(&v20);

  [v3 setSessionSecuredHandler_];
  _Block_release(v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v2;
  v24 = sub_26C677568;
  v25 = v18;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_26C674054;
  v23 = &block_descriptor_121;
  v19 = _Block_copy(&v20);

  [v3 setSessionEndedHandler_];
  _Block_release(v19);
}

id sub_26C66E89C()
{
  v1 = v0;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD228);
  v3 = sub_26C6D8878();
  v4 = sub_26C6D8BB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_26C67A77C(0x6164696C61766E69, 0xEC00000029286574, &v9);
    _os_log_impl(&dword_26C66B000, v3, v4, "Running SFServiceAgent::%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D6A7490](v6, -1, -1);
    MEMORY[0x26D6A7490](v5, -1, -1);
  }

  sub_26C66EA08();
  v7 = *(v1 + 24);

  return [v7 invalidate];
}

id sub_26C66EA08()
{
  v1 = *(v0 + 24);
  [v1 setInterruptionHandler_];
  [v1 setInvalidationHandler_];
  [v1 setPeerDisconnectedHandler_];
  [v1 setSessionStartedHandler_];
  [v1 setPromptForPINHandler_];
  [v1 setSessionSecuredHandler_];
  [v1 setSessionEndedHandler_];

  return [v1 setReceivedObjectHandler_];
}

uint64_t sub_26C66EAD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86E0, &qword_26C6DA3B8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v153 = &v151 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v155 = &v151 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v154 = &v151 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v156 = &v151 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v151 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v151 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v151 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v151 - v20;
  v159 = sub_26C6D8838();
  v22 = *(v159 - 8);
  v23 = MEMORY[0x28223BE20](v159);
  v151 = &v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v152 = &v151 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v151 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v151 - v30;
  v158 = a1;
  sub_26C6766E8(a1, v167);
  if (v170 > 1u)
  {
    if (v170 == 2)
    {
      v53 = v160[4];
      v54 = v22;
      if (v53 && (v55 = [v53 peerDevice]) != 0)
      {
        v56 = v55;
        v57 = [v55 identifier];

        v58 = v156;
        if (v57)
        {
          v59 = v154;
          sub_26C6D8818();

          v60 = 0;
        }

        else
        {
          v60 = 1;
          v59 = v154;
        }

        v95 = v159;
        (*(v54 + 56))(v59, v60, 1, v159);
        sub_26C6767B0(v59, v58);
        if ((*(v54 + 48))(v58, 1, v95) != 1)
        {
          v106 = v152;
          (*(v54 + 32))(v152, v58, v95);
          v107 = v160[3];
          v108 = sub_26C6D89E8();

          v109 = sub_26C6D87F8();
          [v107 pairSetupTryPIN:v108 peer:v109];

          return (*(v54 + 8))(v106, v95);
        }
      }

      else
      {
        v73 = *(v22 + 56);
        v58 = v156;
        v73(v156, 1, 1, v159);
      }

      sub_26C677B60(v58, &qword_2804A86E0, &qword_26C6DA3B8);
      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v96 = sub_26C6D8898();
      __swift_project_value_buffer(v96, qword_2804AD228);
      sub_26C6766E8(v158, v166);
      v97 = sub_26C6D8878();
      v98 = sub_26C6D8BA8();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v162[0] = v100;
        *v99 = 136380675;
        sub_26C6766E8(v166, v165);
        v101 = sub_26C6D8A18();
        v103 = v102;
        sub_26C676820(v166);
        v104 = sub_26C67A77C(v101, v103, v162);

        *(v99 + 4) = v104;
        v105 = "Can't send pinAction: %{private}s without a connected peer.";
LABEL_54:
        _os_log_impl(&dword_26C66B000, v97, v98, v105, v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v100);
        MEMORY[0x26D6A7490](v100, -1, -1);
        MEMORY[0x26D6A7490](v99, -1, -1);

LABEL_56:
        v74 = 2;
        LOWORD(v166[0]) = 2;
        v75 = 1;
        BYTE2(v166[0]) = 1;
        sub_26C67675C();
        swift_willThrowTypedImpl();
        return v74 | (v75 << 16);
      }
    }

    else
    {
      v32 = v22;
      if (v170 == 3)
      {
        sub_26C676744(v167, v166);
        sub_26C67749C(v166, v165);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86A8, &qword_26C6DA388);
        sub_26C6779D0(0, &qword_2804A86B0, 0x277D54CE8);
        v33 = swift_dynamicCast();
        v34 = v159;
        if (v33)
        {
          v35 = v162[0];
          v36 = [v162[0] peerDevice];
          if (!v36)
          {
            v94 = *(v22 + 56);
            v41 = v155;
            v94(v155, 1, 1, v34);
LABEL_70:
            sub_26C677B60(v41, &qword_2804A86E0, &qword_26C6DA3B8);
            if (qword_2804A8598 != -1)
            {
              swift_once();
            }

            v138 = sub_26C6D8898();
            __swift_project_value_buffer(v138, qword_2804AD228);
            v139 = v35;
            v140 = sub_26C6D8878();
            v141 = sub_26C6D8BA8();

            if (os_log_type_enabled(v140, v141))
            {
              v142 = swift_slowAlloc();
              v143 = swift_slowAlloc();
              *v142 = 138412290;
              *(v142 + 4) = v139;
              *v143 = v139;
              v144 = v139;
              _os_log_impl(&dword_26C66B000, v140, v141, "Unable to determine peer identifier from %@ to dismiss session.", v142, 0xCu);
              sub_26C677B60(v143, &qword_2804A9070, &qword_26C6DA3C0);
              MEMORY[0x26D6A7490](v143, -1, -1);
              MEMORY[0x26D6A7490](v142, -1, -1);
            }

            v74 = 2;
            LOWORD(v165[0]) = 2;
            v75 = 1;
            BYTE2(v165[0]) = 1;
            sub_26C67675C();
            swift_willThrowTypedImpl();

            v128 = v166;
LABEL_75:
            __swift_destroy_boxed_opaque_existential_1Tm(v128);
            return v74 | (v75 << 16);
          }

          v37 = v36;
          v38 = [v36 identifier];

          if (v38)
          {
            v39 = v153;
            sub_26C6D8818();

            v40 = 0;
            v41 = v155;
          }

          else
          {
            v40 = 1;
            v41 = v155;
            v39 = v153;
          }

          (*(v32 + 56))(v39, v40, 1, v34);
          sub_26C6767B0(v39, v41);
          if ((*(v32 + 48))(v41, 1, v34) == 1)
          {
            goto LABEL_70;
          }

          v145 = v151;
          (*(v32 + 32))(v151, v41, v34);
          v160 = v160[3];
          v146 = sub_26C6D87F8();
          v147 = [v35 sessionFlags];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_26C6DA0F0;
          v165[0] = 0xD000000000000022;
          v165[1] = 0x800000026C6DEF30;
          sub_26C6D8CD8();
          *(inited + 96) = MEMORY[0x277D839B0];
          *(inited + 72) = 1;
          sub_26C689E88(inited);
          swift_setDeallocating();
          sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);
          v149 = sub_26C6D89A8();

          [v160 sendToPeer:v146 flags:v147 object:v149];

          (*(v32 + 8))(v145, v34);
          v92 = v166;
          return __swift_destroy_boxed_opaque_existential_1Tm(v92);
        }

        v74 = 1;
        LOWORD(v165[0]) = 1;
        BYTE2(v165[0]) = 1;
        sub_26C67675C();
        swift_willThrowTypedImpl();
        __swift_destroy_boxed_opaque_existential_1Tm(v166);
        v75 = 1;
        return v74 | (v75 << 16);
      }

      v61 = v159;
      v62 = v160[4];
      if (v62 && (v63 = [v62 peerDevice]) != 0)
      {
        v64 = v63;
        v65 = [v63 identifier];

        if (v65)
        {
          sub_26C6D8818();

          v66 = 0;
        }

        else
        {
          v66 = 1;
        }

        (*(v32 + 56))(v13, v66, 1, v61);
        sub_26C6767B0(v13, v16);
        if ((*(v32 + 48))(v16, 1, v61) != 1)
        {
          (*(v32 + 32))(v29, v16, v61);
          v115 = v160[3];
          v116 = sub_26C6D87F8();
          [v115 pairSetupWithFlags:24 peer:v116];

          return (*(v32 + 8))(v29, v61);
        }
      }

      else
      {
        (*(v22 + 56))(v16, 1, 1, v61);
      }

      sub_26C677B60(v16, &qword_2804A86E0, &qword_26C6DA3B8);
      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v110 = sub_26C6D8898();
      __swift_project_value_buffer(v110, qword_2804AD228);
      sub_26C6766E8(v158, v166);
      v97 = sub_26C6D8878();
      v98 = sub_26C6D8BA8();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v162[0] = v100;
        *v99 = 136446210;
        sub_26C6766E8(v166, v165);
        v111 = sub_26C6D8A18();
        v113 = v112;
        sub_26C676820(v166);
        v114 = sub_26C67A77C(v111, v113, v162);

        *(v99 + 4) = v114;
        v105 = "Can't send %{public}s without a connected peer.";
        goto LABEL_54;
      }
    }

    sub_26C676820(v166);
    goto LABEL_56;
  }

  if (!v170)
  {
    v43 = v168;
    v42 = v169;
    sub_26C676744(v167, v162);
    v44 = v160[4];
    if (!v44)
    {
      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v76 = sub_26C6D8898();
      __swift_project_value_buffer(v76, qword_2804AD228);
      sub_26C6766E8(v158, v166);
      v77 = sub_26C6D8878();
      v78 = sub_26C6D8BA8();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v161 = v80;
        *v79 = 136446210;
        sub_26C6766E8(v166, v165);
        v81 = sub_26C6D8A18();
        v83 = v82;
        sub_26C676820(v166);
        v84 = sub_26C67A77C(v81, v83, &v161);

        *(v79 + 4) = v84;
        _os_log_impl(&dword_26C66B000, v77, v78, "Can't send %{public}s without a connected session.", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
        MEMORY[0x26D6A7490](v80, -1, -1);
        MEMORY[0x26D6A7490](v79, -1, -1);
      }

      else
      {

        sub_26C676820(v166);
      }

      LOWORD(v166[0]) = 0;
      v75 = 1;
      BYTE2(v166[0]) = 1;
      sub_26C67675C();
      swift_willThrowTypedImpl();
      sub_26C676904(v43, v42);
      __swift_destroy_boxed_opaque_existential_1Tm(v162);
      v74 = 0;
      return v74 | (v75 << 16);
    }

    __swift_project_boxed_opaque_existential_1(v162, v163);
    DynamicType = swift_getDynamicType();
    v46 = v164;
    v47 = *(v164 + 8);
    v48 = v44;
    v47(DynamicType, v46);
    v49 = sub_26C6D89E8();

    v50 = v163;
    v51 = v164;
    __swift_project_boxed_opaque_existential_1(v162, v163);
    if ((*(v51 + 16))(v50, v51))
    {
      v52 = sub_26C6D89A8();
    }

    else
    {
      v52 = 0;
    }

    v85 = v163;
    v86 = v164;
    __swift_project_boxed_opaque_existential_1(v162, v163);
    (*(v86 + 24))(v85, v86);
    v87 = sub_26C6D89A8();

    if (v43)
    {
      v88 = swift_allocObject();
      *(v88 + 16) = v43;
      *(v88 + 24) = v42;
      v89 = sub_26C676964;
    }

    else
    {
      v89 = nullsub_1;
      v88 = 0;
    }

    v90 = swift_allocObject();
    *(v90 + 16) = v89;
    *(v90 + 24) = v88;
    v166[4] = sub_26C67694C;
    v166[5] = v90;
    v166[0] = MEMORY[0x277D85DD0];
    v166[1] = 1107296256;
    v166[2] = sub_26C6A4ED8;
    v166[3] = &block_descriptor_69;
    v91 = _Block_copy(v166);
    sub_26C676954(v43, v42);

    [v48 sendRequestID:v49 options:v52 request:v87 responseHandler:v91];
    _Block_release(v91);

    sub_26C676904(v43, v42);
    v92 = v162;
    return __swift_destroy_boxed_opaque_existential_1Tm(v92);
  }

  sub_26C676744(v167, v162);
  v67 = v160[4];
  if (!v67 || (v68 = [v67 peerDevice]) == 0)
  {
    (*(v22 + 56))(v21, 1, 1, v159);
LABEL_60:
    sub_26C677B60(v21, &qword_2804A86E0, &qword_26C6DA3B8);
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v119 = sub_26C6D8898();
    __swift_project_value_buffer(v119, qword_2804AD228);
    sub_26C6766E8(v158, v166);
    v120 = sub_26C6D8878();
    v121 = sub_26C6D8BA8();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v161 = v123;
      *v122 = 136446210;
      sub_26C6766E8(v166, v165);
      v124 = sub_26C6D8A18();
      v126 = v125;
      sub_26C676820(v166);
      v127 = sub_26C67A77C(v124, v126, &v161);

      *(v122 + 4) = v127;
      _os_log_impl(&dword_26C66B000, v120, v121, "Can't send %{public}s without a connected peer.", v122, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v123);
      MEMORY[0x26D6A7490](v123, -1, -1);
      MEMORY[0x26D6A7490](v122, -1, -1);
    }

    else
    {

      sub_26C676820(v166);
    }

    v74 = 2;
    LOWORD(v166[0]) = 2;
    v75 = 1;
    BYTE2(v166[0]) = 1;
    sub_26C67675C();
    swift_willThrowTypedImpl();
    v128 = v162;
    goto LABEL_75;
  }

  v69 = v68;
  v70 = [v68 identifier];

  v71 = v159;
  if (v70)
  {
    sub_26C6D8818();

    v72 = 0;
  }

  else
  {
    v72 = 1;
  }

  (*(v22 + 56))(v19, v72, 1, v71);
  v117 = v19;
  v118 = v22;
  sub_26C6767B0(v117, v21);
  if ((*(v22 + 48))(v21, 1, v71) == 1)
  {
    goto LABEL_60;
  }

  (*(v22 + 32))(v31, v21, v71);
  v160 = v160[3];
  v129 = sub_26C6D87F8();
  v130 = v31;
  v131 = v163;
  v132 = v164;
  __swift_project_boxed_opaque_existential_1(v162, v163);
  v133 = (*(v132 + 24))(v131, v132);
  v134 = v163;
  v135 = v164;
  __swift_project_boxed_opaque_existential_1(v162, v163);
  v136 = v157;
  v137 = (*(v135 + 32))(v134, v135);
  if (v136)
  {

    v74 = v137 & 0x1FF;
    LOWORD(v166[0]) = v74;
    BYTE2(v166[0]) = 0;
    sub_26C67675C();
    swift_willThrowTypedImpl();
    (*(v118 + 8))(v130, v71);
    __swift_destroy_boxed_opaque_existential_1Tm(v162);
    v75 = 0;
    return v74 | (v75 << 16);
  }

  v150 = sub_26C6D89A8();

  [v160 sendToPeer:v129 flags:v133 object:v150];

  (*(v118 + 8))(v130, v71);
  return __swift_destroy_boxed_opaque_existential_1Tm(v162);
}

void sub_26C66FF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26C67749C(a1, &v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86A8, &qword_26C6DA388);
  sub_26C6779D0(0, &qword_2804A86B0, 0x277D54CE8);
  if (swift_dynamicCast())
  {
    v5 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C6DA100;
    v13 = 0x746365726964;
    v14 = 0xE600000000000000;
    sub_26C6D8CD8();
    v7 = MEMORY[0x277D839B0];
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = 1;
    v13 = 0xD000000000000010;
    v14 = 0x800000026C6DEEB0;
    sub_26C6D8CD8();
    *(inited + 168) = v7;
    *(inited + 144) = 1;
    sub_26C689E88(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86B8, &qword_26C6DA550);
    swift_arrayDestroy();
    (*(a3 + 8))(a2, a3);
    v8 = sub_26C6D89E8();

    v9 = sub_26C6D89A8();

    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = a3;
    v11[4] = v10;
    v17 = sub_26C676584;
    v18 = v11;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_26C6A4FBC;
    v16 = &block_descriptor;
    v12 = _Block_copy(&v13);

    [v5 registerRequestID:v8 options:v9 handler:v12];
    _Block_release(v12);
  }
}

uint64_t sub_26C670224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C0, &qword_26C6DA3A0);
  v49 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v48 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C8, &qword_26C6DA3A8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v46 = &v44 - v18;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v19 = sub_26C6D8898();
  __swift_project_value_buffer(v19, qword_2804AD228);

  v20 = sub_26C6D8878();
  v21 = sub_26C6D8BB8();

  v22 = os_log_type_enabled(v20, v21);
  v23 = a2;
  v47 = v17;
  if (v22)
  {
    v24 = swift_slowAlloc();
    v45 = v12;
    v25 = v24;
    v26 = swift_slowAlloc();
    v51[0] = v26;
    *v25 = 136446466;
    v27 = (*(a6 + 8))(a5, a6);
    v29 = sub_26C67A77C(v27, v28, v51);
    v44 = a3;
    v30 = a4;
    v31 = v29;

    *(v25 + 4) = v31;
    *(v25 + 12) = 2082;
    v32 = sub_26C6D89C8();
    v34 = sub_26C67A77C(v32, v33, v51);

    *(v25 + 14) = v34;
    a4 = v30;
    a3 = v44;
    _os_log_impl(&dword_26C66B000, v20, v21, "Request %{public}s invoked with request: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v26, -1, -1);
    v35 = v25;
    v12 = v45;
    MEMORY[0x26D6A7490](v35, -1, -1);
  }

  v36 = *(a6 + 32);
  v55 = a5;
  v56 = a6;
  __swift_allocate_boxed_opaque_existential_1(v54);
  v36(v23, v53, a5, a6);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v38 = v49;
    v39 = v48;
    (*(v49 + 16))(v48, Strong + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v12);

    sub_26C67749C(v54, v51);
    v51[5] = a3;
    v51[6] = a4;
    v52 = 3;

    v40 = v46;
    sub_26C6D8B28();
    (*(v38 + 8))(v39, v12);
    v41 = 0;
  }

  else
  {
    v41 = 1;
    v40 = v46;
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
  (*(*(v42 - 8) + 56))(v40, v41, 1, v42);
  sub_26C677B60(v40, &qword_2804A86C8, &qword_26C6DA3A8);
  return __swift_destroy_boxed_opaque_existential_1Tm(v54);
}

uint64_t sub_26C6708FC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C0, &qword_26C6DA3A0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C8, &qword_26C6DA3A8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v2 + 16))(v4, Strong + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v1);

    v12[1] = 1;
    v13 = 0u;
    v14 = 0u;
    v15 = 5;
    v16 = 4;
    sub_26C6D8B28();
    (*(v2 + 8))(v4, v1);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
  (*(*(v10 - 8) + 56))(v7, v9, 1, v10);
  return sub_26C677B60(v7, &qword_2804A86C8, &qword_26C6DA3A8);
}

uint64_t sub_26C670B0C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_26C670B50(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C0, &qword_26C6DA3A0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C8, &qword_26C6DA3A8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v8 = sub_26C6D8898();
  __swift_project_value_buffer(v8, qword_2804AD228);
  v9 = sub_26C6D8878();
  v10 = sub_26C6D8BB8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26C66B000, v9, v10, "SFServiceAgent::service.invalidationHandler triggered", v11, 2u);
    MEMORY[0x26D6A7490](v11, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v2 + 16))(v4, Strong + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v1);

    v17 = 0;
    memset(v16, 0, sizeof(v16));
    v18 = 5;
    v19 = 4;
    sub_26C6D8B28();
    (*(v2 + 8))(v4, v1);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
  (*(*(v14 - 8) + 56))(v7, v13, 1, v14);
  return sub_26C677B60(v7, &qword_2804A86C8, &qword_26C6DA3A8);
}

uint64_t sub_26C670E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C0, &qword_26C6DA3A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C8, &qword_26C6DA3A8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v14 - v8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v4 + 16))(v6, Strong + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v3);

    v14[1] = 2;
    v15 = 0u;
    v16 = 0u;
    v17 = 5;
    v18 = 4;
    sub_26C6D8B28();
    (*(v4 + 8))(v6, v3);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
  (*(*(v12 - 8) + 56))(v9, v11, 1, v12);
  return sub_26C677B60(v9, &qword_2804A86C8, &qword_26C6DA3A8);
}

uint64_t sub_26C67102C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_26C6D8838();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  sub_26C6D8818();

  v10 = a3;
  v9(v8, a3);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_26C671140(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_26C6D8B08();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  v8[5] = a1;
  v9 = a1;
  sub_26C68AF90(0, 0, v5, &unk_26C6DA420, v8);
}

uint64_t sub_26C67129C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C0, &qword_26C6DA3A0);
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C8, &qword_26C6DA3A8);
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26C6713A0, 0, 0);
}

uint64_t sub_26C6713A0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 176) = Strong;
  if (Strong)
  {
    type metadata accessor for SFServiceAgent(0);
    sub_26C677A18(&qword_2804A86A0, type metadata accessor for SFServiceAgent, &unk_26C6DA360);
    v3 = sub_26C6D8AD8();

    return MEMORY[0x2822009F8](sub_26C67160C, v3, v2);
  }

  else
  {
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    if (v4)
    {
      v5 = *(v0 + 160);
      v6 = *(v0 + 144);
      v7 = *(v0 + 152);
      v8 = *(v0 + 136);
      (*(v7 + 16))(v5, v4 + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v6);

      *(v0 + 40) = sub_26C6779D0(0, &qword_2804A86B0, 0x277D54CE8);
      *(v0 + 48) = &off_287D2B198;
      *(v0 + 16) = v8;
      *(v0 + 72) = 0;
      v9 = v8;
      sub_26C6D8B28();
      (*(v7 + 8))(v5, v6);
      v10 = 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = *(v0 + 168);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
    (*(*(v12 - 8) + 56))(v11, v10, 1, v12);
    sub_26C677B60(v11, &qword_2804A86C8, &qword_26C6DA3A8);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_26C67160C()
{
  sub_26C671830(*(v0 + 136));

  return MEMORY[0x2822009F8](sub_26C671680, 0, 0);
}

uint64_t sub_26C671680()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 160);
    v3 = *(v0 + 144);
    v4 = *(v0 + 152);
    v5 = *(v0 + 136);
    (*(v4 + 16))(v2, Strong + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v3);

    v6 = sub_26C6779D0(0, &qword_2804A86B0, 0x277D54CE8);
    *(v0 + 16) = v5;
    *(v0 + 40) = v6;
    *(v0 + 48) = &off_287D2B198;
    *(v0 + 72) = 0;
    v7 = v5;
    sub_26C6D8B28();
    (*(v4 + 8))(v2, v3);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(v0 + 168);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
  (*(*(v10 - 8) + 56))(v9, v8, 1, v10);
  sub_26C677B60(v9, &qword_2804A86C8, &qword_26C6DA3A8);

  v11 = *(v0 + 8);

  return v11();
}

void sub_26C671830(void *a1)
{
  v2 = v1;
  v4 = sub_26C6D8838();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86E0, &qword_26C6DA3B8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v53 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v53 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v53 - v18;
  if (*(v2 + 32))
  {
    v56 = v5;
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v20 = sub_26C6D8898();
    __swift_project_value_buffer(v20, qword_2804AD228);
    v21 = a1;

    v57 = sub_26C6D8878();
    v22 = sub_26C6D8BA8();

    if (os_log_type_enabled(v57, v22))
    {
      v53 = v7;
      v23 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v58 = v54;
      *v23 = 136446466;
      v55 = v22;
      if (a1)
      {
        v24 = [v21 peerDevice];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 identifier];

          if (v26)
          {
            sub_26C6D8818();

            v27 = v56;
            (*(v56 + 56))(v17, 0, 1, v4);
          }

          else
          {
            v27 = v56;
            (*(v56 + 56))(v17, 1, 1, v4);
          }

          sub_26C6767B0(v17, v19);
          if (!(*(v27 + 48))(v19, 1, v4))
          {
            v38 = v53;
            (*(v27 + 16))(v53, v19, v4);
            v39 = sub_26C677B60(v19, &qword_2804A86E0, &qword_26C6DA3B8);
            v40 = MEMORY[0x26D6A66E0](v39);
            v41 = v27;
            v42 = v40;
            v30 = v43;
            (*(v41 + 8))(v38, v4);
            v31 = v42;
            goto LABEL_19;
          }

          sub_26C677B60(v19, &qword_2804A86E0, &qword_26C6DA3B8);
        }
      }

      v30 = 0xE300000000000000;
      v31 = 7104878;
LABEL_19:
      v32 = sub_26C67A77C(v31, v30, &v58);

      *(v23 + 4) = v32;
      *(v23 + 12) = 2082;
      v33 = *(v2 + 32);
      if (v33)
      {
        v34 = [v33 peerDevice];
        if (v34)
        {
          v35 = v34;
          v36 = [v34 identifier];

          if (v36)
          {
            sub_26C6D8818();

            v37 = 0;
          }

          else
          {
            v37 = 1;
          }

          v44 = v56;
          (*(v56 + 56))(v11, v37, 1, v4);
          sub_26C6767B0(v11, v14);
          if (!(*(v44 + 48))(v14, 1, v4))
          {
            v49 = v53;
            (*(v44 + 16))(v53, v14, v4);
            v50 = sub_26C677B60(v14, &qword_2804A86E0, &qword_26C6DA3B8);
            v51 = MEMORY[0x26D6A66E0](v50);
            v45 = v52;
            (*(v44 + 8))(v49, v4);
            v46 = v51;
            goto LABEL_28;
          }

          sub_26C677B60(v14, &qword_2804A86E0, &qword_26C6DA3B8);
        }
      }

      v45 = 0xE300000000000000;
      v46 = 7104878;
LABEL_28:
      v47 = sub_26C67A77C(v46, v45, &v58);

      *(v23 + 14) = v47;
      _os_log_impl(&dword_26C66B000, v57, v55, "Ignoring secondary peer: %{public}s, we're already active with: %{public}s", v23, 0x16u);
      v48 = v54;
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v48, -1, -1);
      MEMORY[0x26D6A7490](v23, -1, -1);

      return;
    }

    v29 = v57;
  }

  else
  {
    *(v2 + 32) = a1;
    v28 = a1;

    sub_26C675314();
  }
}

void sub_26C671E20(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_26C671E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C0, &qword_26C6DA3A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C8, &qword_26C6DA3A8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v14 - v8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v4 + 16))(v6, Strong + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v3);

    v15 = 0;
    memset(v14, 0, sizeof(v14));
    v16 = 5;
    sub_26C6D8B28();
    (*(v4 + 8))(v6, v3);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
  (*(*(v12 - 8) + 56))(v9, v11, 1, v12);
  return sub_26C677B60(v9, &qword_2804A86C8, &qword_26C6DA3A8);
}

uint64_t sub_26C672090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_26C6720F0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_26C6D8B08();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;
  v10[5] = a1;
  v10[6] = a3;

  v11 = a1;
  sub_26C68AF90(0, 0, v8, &unk_26C6DA410, v10);
}

uint64_t sub_26C672214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86E0, &qword_26C6DA3B8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C0, &qword_26C6DA3A0);
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C8, &qword_26C6DA3A8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26C67235C, 0, 0);
}

uint64_t sub_26C67235C()
{
  v38 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (Strong)
  {
    type metadata accessor for SFServiceAgent(0);
    sub_26C677A18(&qword_2804A86A0, type metadata accessor for SFServiceAgent, &unk_26C6DA360);
    v3 = sub_26C6D8AD8();

    return MEMORY[0x2822009F8](sub_26C67284C, v3, v2);
  }

  else
  {
    if (sub_26C676C20(0, *(v0 + 136)))
    {
      swift_beginAccess();
      v4 = swift_weakLoadStrong();
      v5 = 1;
      if (v4)
      {
        v6 = *(v0 + 176);
        v7 = *(v0 + 160);
        v8 = *(v0 + 168);
        v9 = *(v0 + 136);
        (*(v8 + 16))(v6, v4 + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v7);

        *(v0 + 40) = sub_26C6779D0(0, &qword_2804A86B0, 0x277D54CE8);
        *(v0 + 48) = &off_287D2B198;
        *(v0 + 16) = v9;
        *(v0 + 72) = 1;
        v10 = v9;
        sub_26C6D8B28();
        (*(v8 + 8))(v6, v7);
        v5 = 0;
      }

      v11 = *(v0 + 184);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
      (*(*(v12 - 8) + 56))(v11, v5, 1, v12);
      sub_26C677B60(v11, &qword_2804A86C8, &qword_26C6DA3A8);
    }

    else
    {
      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 136);
      v14 = sub_26C6D8898();
      __swift_project_value_buffer(v14, qword_2804AD228);
      v15 = v13;
      v16 = sub_26C6D8878();
      v17 = sub_26C6D8BA8();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = *(v0 + 136);
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v37 = v20;
        *v19 = 136446210;
        v21 = [v18 identifier];
        if (v21)
        {
          v22 = v21;
          sub_26C6D8818();

          v23 = 0;
        }

        else
        {
          v23 = 1;
        }

        v25 = *(v0 + 144);
        v24 = *(v0 + 152);
        v26 = sub_26C6D8838();
        v27 = *(v26 - 8);
        (*(v27 + 56))(v25, v23, 1, v26);
        sub_26C6767B0(v25, v24);
        v28 = (*(v27 + 48))(v24, 1, v26);
        v29 = *(v0 + 152);
        if (v28 == 1)
        {
          sub_26C677B60(*(v0 + 152), &qword_2804A86E0, &qword_26C6DA3B8);
          v30 = 0;
          v31 = 0xE000000000000000;
        }

        else
        {
          v32 = sub_26C6D87D8();
          v31 = v33;
          (*(v27 + 8))(v29, v26);
          v30 = v32;
        }

        v34 = sub_26C67A77C(v30, v31, &v37);

        *(v19 + 4) = v34;
        _os_log_impl(&dword_26C66B000, v16, v17, "Received session secured from non-active session %{public}s. Ignoring.", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x26D6A7490](v20, -1, -1);
        MEMORY[0x26D6A7490](v19, -1, -1);
      }
    }

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_26C67284C()
{
  v1 = *(*(v0 + 192) + 32);
  *(v0 + 200) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_26C6728C4, 0, 0);
}

uint64_t sub_26C6728C4()
{
  v37 = v0;
  v1 = *(v0 + 200);
  v2 = sub_26C676C20(v1, *(v0 + 136));

  if (v2)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v4 = 1;
    if (Strong)
    {
      v5 = *(v0 + 176);
      v6 = *(v0 + 160);
      v7 = *(v0 + 168);
      v8 = *(v0 + 136);
      (*(v7 + 16))(v5, Strong + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v6);

      *(v0 + 40) = sub_26C6779D0(0, &qword_2804A86B0, 0x277D54CE8);
      *(v0 + 48) = &off_287D2B198;
      *(v0 + 16) = v8;
      *(v0 + 72) = 1;
      v9 = v8;
      sub_26C6D8B28();
      (*(v7 + 8))(v5, v6);
      v4 = 0;
    }

    v10 = *(v0 + 184);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
    (*(*(v11 - 8) + 56))(v10, v4, 1, v11);
    sub_26C677B60(v10, &qword_2804A86C8, &qword_26C6DA3A8);
  }

  else
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 136);
    v13 = sub_26C6D8898();
    __swift_project_value_buffer(v13, qword_2804AD228);
    v14 = v12;
    v15 = sub_26C6D8878();
    v16 = sub_26C6D8BA8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 136);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v36 = v19;
      *v18 = 136446210;
      v20 = [v17 identifier];
      if (v20)
      {
        v21 = v20;
        sub_26C6D8818();

        v22 = 0;
      }

      else
      {
        v22 = 1;
      }

      v24 = *(v0 + 144);
      v23 = *(v0 + 152);
      v25 = sub_26C6D8838();
      v26 = *(v25 - 8);
      (*(v26 + 56))(v24, v22, 1, v25);
      sub_26C6767B0(v24, v23);
      v27 = (*(v26 + 48))(v23, 1, v25);
      v28 = *(v0 + 152);
      if (v27 == 1)
      {
        sub_26C677B60(*(v0 + 152), &qword_2804A86E0, &qword_26C6DA3B8);
        v29 = 0;
        v30 = 0xE000000000000000;
      }

      else
      {
        v31 = sub_26C6D87D8();
        v30 = v32;
        (*(v26 + 8))(v28, v25);
        v29 = v31;
      }

      v33 = sub_26C67A77C(v29, v30, &v36);

      *(v18 + 4) = v33;
      _os_log_impl(&dword_26C66B000, v15, v16, "Received session secured from non-active session %{public}s. Ignoring.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x26D6A7490](v19, -1, -1);
      MEMORY[0x26D6A7490](v18, -1, -1);
    }
  }

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_26C672CFC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_26C6D8B08();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a3;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a4;

  v13 = a1;
  v14 = a2;
  sub_26C68AF90(0, 0, v10, &unk_26C6DA3F0, v12);
}

uint64_t sub_26C672E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86E0, &qword_26C6DA3B8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C0, &qword_26C6DA3A0);
  v6[26] = v7;
  v6[27] = *(v7 - 8);
  v6[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C8, &qword_26C6DA3A8);
  v6[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26C672F90, 0, 0);
}

uint64_t sub_26C672F90()
{
  v55 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 240) = Strong;
  if (Strong)
  {
    type metadata accessor for SFServiceAgent(0);
    sub_26C677A18(&qword_2804A86A0, type metadata accessor for SFServiceAgent, &unk_26C6DA360);
    v2 = sub_26C6D8AD8();
    v4 = v3;
    v5 = sub_26C673644;
LABEL_3:

    return MEMORY[0x2822009F8](v5, v2, v4);
  }

  if (sub_26C676C20(0, *(v0 + 160)))
  {
    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    *(v0 + 256) = v6;
    if (v6)
    {
      type metadata accessor for SFServiceAgent(0);
      sub_26C677A18(&qword_2804A86A0, type metadata accessor for SFServiceAgent, &unk_26C6DA360);
      v2 = sub_26C6D8AD8();
      v4 = v7;
      v5 = sub_26C673CF0;
      goto LABEL_3;
    }

    swift_beginAccess();
    v19 = swift_weakLoadStrong();
    if (v19)
    {
      v20 = *(v0 + 160);
      (*(*(v0 + 216) + 16))(*(v0 + 224), v19 + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, *(v0 + 208));

      v21 = [v20 identifier];
      if (v21)
      {
        v22 = v21;
        sub_26C6D8818();

        v23 = 0;
      }

      else
      {
        v23 = 1;
      }

      v37 = *(v0 + 192);
      v36 = *(v0 + 200);
      v38 = sub_26C6D8838();
      v39 = *(v38 - 8);
      (*(v39 + 56))(v37, v23, 1, v38);
      sub_26C6767B0(v37, v36);
      v40 = (*(v39 + 48))(v36, 1, v38);
      v41 = *(v0 + 200);
      if (v40 == 1)
      {
        sub_26C677B60(*(v0 + 200), &qword_2804A86E0, &qword_26C6DA3B8);
        v42 = 0;
        v43 = 0;
      }

      else
      {
        v42 = sub_26C6D87D8();
        v43 = v44;
        (*(v39 + 8))(v41, v38);
      }

      v45 = *(v0 + 224);
      v46 = *(v0 + 208);
      v47 = *(v0 + 216);
      v48 = *(v0 + 168);
      *(v0 + 16) = v42;
      *(v0 + 24) = v43;
      *(v0 + 32) = v48;
      *(v0 + 56) = 4;
      *(v0 + 72) = 4;
      v49 = v48;
      sub_26C6D8B28();
      (*(v47 + 8))(v45, v46);
      v35 = 0;
    }

    else
    {
      v35 = 1;
    }

    v50 = *(v0 + 232);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
    (*(*(v51 - 8) + 56))(v50, v35, 1, v51);
    sub_26C677B60(v50, &qword_2804A86C8, &qword_26C6DA3A8);
  }

  else
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 160);
    v9 = sub_26C6D8898();
    __swift_project_value_buffer(v9, qword_2804AD228);
    v10 = v8;
    v11 = sub_26C6D8878();
    v12 = sub_26C6D8BA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 160);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v54 = v15;
      *v14 = 136446210;
      v16 = [v13 identifier];
      if (v16)
      {
        v17 = v16;
        sub_26C6D8818();

        v18 = 0;
      }

      else
      {
        v18 = 1;
      }

      v25 = *(v0 + 176);
      v24 = *(v0 + 184);
      v26 = sub_26C6D8838();
      v27 = *(v26 - 8);
      (*(v27 + 56))(v25, v18, 1, v26);
      sub_26C6767B0(v25, v24);
      v28 = (*(v27 + 48))(v24, 1, v26);
      v29 = *(v0 + 184);
      if (v28 == 1)
      {
        sub_26C677B60(*(v0 + 184), &qword_2804A86E0, &qword_26C6DA3B8);
        v30 = 0;
        v31 = 0xE000000000000000;
      }

      else
      {
        v32 = sub_26C6D87D8();
        v31 = v33;
        (*(v27 + 8))(v29, v26);
        v30 = v32;
      }

      v34 = sub_26C67A77C(v30, v31, &v54);

      *(v14 + 4) = v34;
      _os_log_impl(&dword_26C66B000, v11, v12, "Received session ended from non-active session %{public}s. Ignoring.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x26D6A7490](v15, -1, -1);
      MEMORY[0x26D6A7490](v14, -1, -1);
    }
  }

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_26C673644()
{
  v1 = *(*(v0 + 240) + 32);
  *(v0 + 248) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_26C6736BC, 0, 0);
}

uint64_t sub_26C6736BC()
{
  v53 = v0;
  v1 = *(v0 + 248);
  v2 = sub_26C676C20(v1, *(v0 + 160));

  if (v2)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 256) = Strong;
    if (Strong)
    {
      type metadata accessor for SFServiceAgent(0);
      sub_26C677A18(&qword_2804A86A0, type metadata accessor for SFServiceAgent, &unk_26C6DA360);
      v5 = sub_26C6D8AD8();

      return MEMORY[0x2822009F8](sub_26C673CF0, v5, v4);
    }

    swift_beginAccess();
    v17 = swift_weakLoadStrong();
    if (v17)
    {
      v18 = *(v0 + 160);
      (*(*(v0 + 216) + 16))(*(v0 + 224), v17 + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, *(v0 + 208));

      v19 = [v18 identifier];
      if (v19)
      {
        v20 = v19;
        sub_26C6D8818();

        v21 = 0;
      }

      else
      {
        v21 = 1;
      }

      v35 = *(v0 + 192);
      v34 = *(v0 + 200);
      v36 = sub_26C6D8838();
      v37 = *(v36 - 8);
      (*(v37 + 56))(v35, v21, 1, v36);
      sub_26C6767B0(v35, v34);
      v38 = (*(v37 + 48))(v34, 1, v36);
      v39 = *(v0 + 200);
      if (v38 == 1)
      {
        sub_26C677B60(*(v0 + 200), &qword_2804A86E0, &qword_26C6DA3B8);
        v40 = 0;
        v41 = 0;
      }

      else
      {
        v40 = sub_26C6D87D8();
        v41 = v42;
        (*(v37 + 8))(v39, v36);
      }

      v43 = *(v0 + 224);
      v44 = *(v0 + 208);
      v45 = *(v0 + 216);
      v46 = *(v0 + 168);
      *(v0 + 16) = v40;
      *(v0 + 24) = v41;
      *(v0 + 32) = v46;
      *(v0 + 56) = 4;
      *(v0 + 72) = 4;
      v47 = v46;
      sub_26C6D8B28();
      (*(v45 + 8))(v43, v44);
      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    v48 = *(v0 + 232);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
    (*(*(v49 - 8) + 56))(v48, v33, 1, v49);
    sub_26C677B60(v48, &qword_2804A86C8, &qword_26C6DA3A8);
  }

  else
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 160);
    v7 = sub_26C6D8898();
    __swift_project_value_buffer(v7, qword_2804AD228);
    v8 = v6;
    v9 = sub_26C6D8878();
    v10 = sub_26C6D8BA8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 160);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v52 = v13;
      *v12 = 136446210;
      v14 = [v11 identifier];
      if (v14)
      {
        v15 = v14;
        sub_26C6D8818();

        v16 = 0;
      }

      else
      {
        v16 = 1;
      }

      v23 = *(v0 + 176);
      v22 = *(v0 + 184);
      v24 = sub_26C6D8838();
      v25 = *(v24 - 8);
      (*(v25 + 56))(v23, v16, 1, v24);
      sub_26C6767B0(v23, v22);
      v26 = (*(v25 + 48))(v22, 1, v24);
      v27 = *(v0 + 184);
      if (v26 == 1)
      {
        sub_26C677B60(*(v0 + 184), &qword_2804A86E0, &qword_26C6DA3B8);
        v28 = 0;
        v29 = 0xE000000000000000;
      }

      else
      {
        v30 = sub_26C6D87D8();
        v29 = v31;
        (*(v25 + 8))(v27, v24);
        v28 = v30;
      }

      v32 = sub_26C67A77C(v28, v29, &v52);

      *(v12 + 4) = v32;
      _os_log_impl(&dword_26C66B000, v9, v10, "Received session ended from non-active session %{public}s. Ignoring.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x26D6A7490](v13, -1, -1);
      MEMORY[0x26D6A7490](v12, -1, -1);
    }
  }

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_26C673CF0()
{
  sub_26C671830(0);

  return MEMORY[0x2822009F8](sub_26C673D64, 0, 0);
}

uint64_t sub_26C673D64()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 160);
    (*(*(v0 + 216) + 16))(*(v0 + 224), Strong + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, *(v0 + 208));

    v3 = [v2 identifier];
    if (v3)
    {
      v4 = v3;
      sub_26C6D8818();

      v5 = 0;
    }

    else
    {
      v5 = 1;
    }

    v8 = *(v0 + 192);
    v7 = *(v0 + 200);
    v9 = sub_26C6D8838();
    v10 = *(v9 - 8);
    (*(v10 + 56))(v8, v5, 1, v9);
    sub_26C6767B0(v8, v7);
    v11 = (*(v10 + 48))(v7, 1, v9);
    v12 = *(v0 + 200);
    if (v11 == 1)
    {
      sub_26C677B60(*(v0 + 200), &qword_2804A86E0, &qword_26C6DA3B8);
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v13 = sub_26C6D87D8();
      v14 = v15;
      (*(v10 + 8))(v12, v9);
    }

    v16 = *(v0 + 224);
    v17 = *(v0 + 208);
    v18 = *(v0 + 216);
    v19 = *(v0 + 168);
    *(v0 + 16) = v13;
    *(v0 + 24) = v14;
    *(v0 + 32) = v19;
    *(v0 + 56) = 4;
    *(v0 + 72) = 4;
    v20 = v19;
    sub_26C6D8B28();
    (*(v18 + 8))(v16, v17);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v21 = *(v0 + 232);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
  (*(*(v22 - 8) + 56))(v21, v6, 1, v22);
  sub_26C677B60(v21, &qword_2804A86C8, &qword_26C6DA3A8);

  v23 = *(v0 + 8);

  return v23();
}

void sub_26C674054(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_26C6740E0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  v13 = sub_26C6D8B08();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = a1;
  *(v14 + 40) = a3;
  *(v14 + 48) = a4;
  *(v14 + 56) = a2;
  *(v14 + 64) = a5;
  v15 = a1;

  sub_26C68AF90(0, 0, v12, &unk_26C6DA3E0, v14);
}

uint64_t sub_26C674224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  *(v7 + 76) = a7;
  *(v7 + 352) = a5;
  *(v7 + 360) = a6;
  *(v7 + 344) = a4;
  v8 = sub_26C6D8838();
  *(v7 + 368) = v8;
  *(v7 + 376) = *(v8 - 8);
  *(v7 + 384) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86E0, &qword_26C6DA3B8);
  *(v7 + 392) = swift_task_alloc();
  *(v7 + 400) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C0, &qword_26C6DA3A0);
  *(v7 + 408) = v9;
  *(v7 + 416) = *(v9 - 8);
  *(v7 + 424) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C8, &qword_26C6DA3A8);
  *(v7 + 432) = swift_task_alloc();
  *(v7 + 440) = swift_task_alloc();
  *(v7 + 448) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26C6743E8, 0, 0);
}

uint64_t sub_26C6743E8()
{
  v56 = v0;
  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 344);
  v2 = sub_26C6D8898();
  *(v0 + 456) = __swift_project_value_buffer(v2, qword_2804AD228);
  v3 = v1;

  v4 = sub_26C6D8878();
  v5 = sub_26C6D8BB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 344);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v55[0] = v9;
    *v7 = 138543618;
    v10 = [v6 peerDevice];
    *(v7 + 4) = v10;
    *v8 = v10;
    *(v7 + 12) = 2082;
    v11 = sub_26C6D89C8();
    v13 = sub_26C67A77C(v11, v12, v55);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_26C66B000, v4, v5, "Received the following objects from [%{public}@]: %{public}s", v7, 0x16u);
    sub_26C677B60(v8, &qword_2804A9070, &qword_26C6DA3C0);
    MEMORY[0x26D6A7490](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D6A7490](v9, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 464) = Strong;
  if (Strong)
  {
    type metadata accessor for SFServiceAgent(0);
    sub_26C677A18(&qword_2804A86A0, type metadata accessor for SFServiceAgent, &unk_26C6DA360);
    v16 = sub_26C6D8AD8();

    return MEMORY[0x2822009F8](sub_26C674C1C, v16, v15);
  }

  if ((sub_26C677038(0, *(v0 + 344)) & 1) == 0)
  {
    sub_26C69DDF0(*(v0 + 352), *(v0 + 76), (v0 + 73), v0 + 208);
    swift_beginAccess();
    v27 = swift_weakLoadStrong();
    if (v27)
    {
      v29 = *(v0 + 416);
      v28 = *(v0 + 424);
      v30 = *(v0 + 408);
      (*(v29 + 16))(v28, v27 + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v30);

      sub_26C67749C(v0 + 208, v0 + 80);
      *(v0 + 136) = 2;
      sub_26C6D8B28();
      (*(v29 + 8))(v28, v30);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));
      v31 = 0;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));
      v31 = 1;
    }

    v32 = *(v0 + 448);
    goto LABEL_28;
  }

  v17 = *(v0 + 344);
  v18 = sub_26C6D8878();
  v19 = sub_26C6D8BA8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 344);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v55[0] = v22;
    *v21 = 136315138;
    v23 = [v20 peerDevice];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 identifier];

      if (v25)
      {
        sub_26C6D8818();

        v26 = 0;
      }

      else
      {
        v26 = 1;
      }

      v34 = *(v0 + 392);
      v33 = *(v0 + 400);
      v35 = *(v0 + 368);
      v36 = *(v0 + 376);
      (*(v36 + 56))(v34, v26, 1, v35);
      sub_26C6767B0(v34, v33);
      v37 = (*(v36 + 48))(v33, 1, v35);
      v38 = *(v0 + 400);
      if (!v37)
      {
        v41 = *(v0 + 376);
        v40 = *(v0 + 384);
        v42 = *(v0 + 368);
        (*(v41 + 16))(v40, *(v0 + 400), v42);
        sub_26C677B60(v38, &qword_2804A86E0, &qword_26C6DA3B8);
        v43 = sub_26C6D87D8();
        v39 = v44;
        (*(v41 + 8))(v40, v42);
        v23 = v43;
        goto LABEL_23;
      }

      sub_26C677B60(*(v0 + 400), &qword_2804A86E0, &qword_26C6DA3B8);
      v23 = 0;
    }

    v39 = 0xE000000000000000;
LABEL_23:
    v45 = sub_26C67A77C(v23, v39, v55);

    *(v21 + 4) = v45;
    _os_log_impl(&dword_26C66B000, v18, v19, "New Session with secondary Peer Device: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x26D6A7490](v22, -1, -1);
    MEMORY[0x26D6A7490](v21, -1, -1);
  }

  swift_beginAccess();
  v46 = swift_weakLoadStrong();
  if (v46)
  {
    v48 = *(v0 + 416);
    v47 = *(v0 + 424);
    v49 = *(v0 + 408);
    v50 = *(v0 + 344);
    (*(v48 + 16))(v47, v46 + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v49);

    *(v0 + 168) = sub_26C6779D0(0, &qword_2804A86B0, 0x277D54CE8);
    *(v0 + 176) = &off_287D2B198;
    *(v0 + 144) = v50;
    *(v0 + 184) = 0;
    *(v0 + 200) = 4;
    v51 = v50;
    sub_26C6D8B28();
    (*(v48 + 8))(v47, v49);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = *(v0 + 440);
LABEL_28:
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
  (*(*(v52 - 8) + 56))(v32, v31, 1, v52);
  sub_26C677B60(v32, &qword_2804A86C8, &qword_26C6DA3A8);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_26C674C1C()
{
  v1 = *(*(v0 + 464) + 32);
  *(v0 + 472) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_26C674C94, 0, 0);
}

uint64_t sub_26C674C94()
{
  v42 = v0;
  v1 = *(v0 + 472);
  v2 = sub_26C677038(v1, *(v0 + 344));

  if ((v2 & 1) == 0)
  {
    sub_26C69DDF0(*(v0 + 352), *(v0 + 76), (v0 + 73), v0 + 208);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v15 = *(v0 + 416);
      v14 = *(v0 + 424);
      v16 = *(v0 + 408);
      (*(v15 + 16))(v14, Strong + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v16);

      sub_26C67749C(v0 + 208, v0 + 80);
      *(v0 + 136) = 2;
      sub_26C6D8B28();
      (*(v15 + 8))(v14, v16);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));
      v17 = 0;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));
      v17 = 1;
    }

    v18 = *(v0 + 448);
    goto LABEL_20;
  }

  v3 = *(v0 + 344);
  v4 = sub_26C6D8878();
  v5 = sub_26C6D8BA8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 344);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v41 = v8;
    *v7 = 136315138;
    v9 = [v6 peerDevice];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 identifier];

      if (v11)
      {
        sub_26C6D8818();

        v12 = 0;
      }

      else
      {
        v12 = 1;
      }

      v20 = *(v0 + 392);
      v19 = *(v0 + 400);
      v21 = *(v0 + 368);
      v22 = *(v0 + 376);
      (*(v22 + 56))(v20, v12, 1, v21);
      sub_26C6767B0(v20, v19);
      v23 = (*(v22 + 48))(v19, 1, v21);
      v24 = *(v0 + 400);
      if (!v23)
      {
        v27 = *(v0 + 376);
        v26 = *(v0 + 384);
        v28 = *(v0 + 368);
        (*(v27 + 16))(v26, *(v0 + 400), v28);
        sub_26C677B60(v24, &qword_2804A86E0, &qword_26C6DA3B8);
        v29 = sub_26C6D87D8();
        v25 = v30;
        (*(v27 + 8))(v26, v28);
        v9 = v29;
        goto LABEL_15;
      }

      sub_26C677B60(*(v0 + 400), &qword_2804A86E0, &qword_26C6DA3B8);
      v9 = 0;
    }

    v25 = 0xE000000000000000;
LABEL_15:
    v31 = sub_26C67A77C(v9, v25, &v41);

    *(v7 + 4) = v31;
    _os_log_impl(&dword_26C66B000, v4, v5, "New Session with secondary Peer Device: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  swift_beginAccess();
  v32 = swift_weakLoadStrong();
  if (v32)
  {
    v34 = *(v0 + 416);
    v33 = *(v0 + 424);
    v35 = *(v0 + 408);
    v36 = *(v0 + 344);
    (*(v34 + 16))(v33, v32 + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, v35);

    *(v0 + 168) = sub_26C6779D0(0, &qword_2804A86B0, 0x277D54CE8);
    *(v0 + 176) = &off_287D2B198;
    *(v0 + 144) = v36;
    *(v0 + 184) = 0;
    *(v0 + 200) = 4;
    v37 = v36;
    sub_26C6D8B28();
    (*(v34 + 8))(v33, v35);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = *(v0 + 440);
LABEL_20:
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
  (*(*(v38 - 8) + 56))(v18, v17, 1, v38);
  sub_26C677B60(v18, &qword_2804A86C8, &qword_26C6DA3A8);

  v39 = *(v0 + 8);

  return v39();
}

void sub_26C675260(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  sub_26C6D89B8();

  v6 = a2;
  v5();
}

void sub_26C675314()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = swift_allocObject();
    swift_weakInit();
    v15 = sub_26C677694;
    v16 = v2;
    aBlock = MEMORY[0x277D85DD0];
    v12 = 1107296256;
    v13 = sub_26C6AABE4;
    v14 = &block_descriptor_129;
    v3 = _Block_copy(&aBlock);
    v4 = v1;

    [v4 setErrorHandler_];
    _Block_release(v3);
    v15 = sub_26C675DD4;
    v16 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v12 = 1107296256;
    v13 = sub_26C675FCC;
    v14 = &block_descriptor_132;
    v5 = _Block_copy(&aBlock);
    [v4 setReceivedRequestHandler_];
    _Block_release(v5);
  }

  else
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v6 = sub_26C6D8898();
    __swift_project_value_buffer(v6, qword_2804AD228);
    oslog = sub_26C6D8878();
    v7 = sub_26C6D8BA8();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      aBlock = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_26C67A77C(0xD000000000000019, 0x800000026C6DF050, &aBlock);
      _os_log_impl(&dword_26C66B000, oslog, v7, "%{public}s called with nil session.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x26D6A7490](v9, -1, -1);
      MEMORY[0x26D6A7490](v8, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_26C6755C8(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_26C6D8B08();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = v7;
  v9 = a1;
  sub_26C68AF90(0, 0, v5, &unk_26C6DA400, v8);
}

uint64_t sub_26C675728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86E0, &qword_26C6DA3B8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C0, &qword_26C6DA3A0);
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86C8, &qword_26C6DA3A8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26C675870, 0, 0);
}

uint64_t sub_26C675870()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(*(v0 + 168) + 16))(*(v0 + 176), Strong + OBJC_IVAR____TtC10TDGSharing14SFServiceAgent_output, *(v0 + 160));
      v3 = v1;

      swift_beginAccess();
      v4 = swift_weakLoadStrong();
      *(v0 + 192) = v4;
      if (v4)
      {
        type metadata accessor for SFServiceAgent(0);
        sub_26C677A18(&qword_2804A86A0, type metadata accessor for SFServiceAgent, &unk_26C6DA360);
        v6 = sub_26C6D8AD8();

        return MEMORY[0x2822009F8](sub_26C675AD4, v6, v5);
      }

      v8 = *(v0 + 176);
      v9 = *(v0 + 160);
      v10 = *(v0 + 168);
      v11 = *(v0 + 128);
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v11;
      *(v0 + 56) = 3;
      *(v0 + 72) = 4;
      sub_26C6D8B28();
      (*(v10 + 8))(v8, v9);
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v12 = *(v0 + 184);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
    (*(*(v13 - 8) + 56))(v12, v7, 1, v13);
    sub_26C677B60(v12, &qword_2804A86C8, &qword_26C6DA3A8);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_26C675AD4()
{
  v1 = *(*(v0 + 192) + 32);
  *(v0 + 200) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_26C675B4C, 0, 0);
}

uint64_t sub_26C675B4C()
{
  v1 = *(v0 + 200);
  if (v1)
  {
    v2 = [*(v0 + 200) identifier];

    if (v2)
    {
      sub_26C6D8818();

      v3 = 0;
    }

    else
    {
      v3 = 1;
    }

    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v7 = sub_26C6D8838();
    v8 = *(v7 - 8);
    (*(v8 + 56))(v6, v3, 1, v7);
    sub_26C6767B0(v6, v5);
    v9 = (*(v8 + 48))(v5, 1, v7);
    v10 = *(v0 + 152);
    if (v9 == 1)
    {
      sub_26C677B60(*(v0 + 152), &qword_2804A86E0, &qword_26C6DA3B8);
      v1 = 0;
      v4 = 0;
    }

    else
    {
      v1 = sub_26C6D87D8();
      v4 = v11;
      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v12 = *(v0 + 176);
  v13 = *(v0 + 160);
  v14 = *(v0 + 168);
  v15 = *(v0 + 128);
  *(v0 + 16) = v1;
  *(v0 + 24) = v4;
  *(v0 + 32) = v15;
  *(v0 + 56) = 3;
  *(v0 + 72) = 4;
  sub_26C6D8B28();
  (*(v14 + 8))(v12, v13);
  v16 = *(v0 + 184);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86D0, &qword_26C6DA3B0);
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  sub_26C677B60(v16, &qword_2804A86C8, &qword_26C6DA3A8);

  v18 = *(v0 + 8);

  return v18();
}

void sub_26C675DD4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void *, uint64_t))
{
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v5 = sub_26C6D8898();
  __swift_project_value_buffer(v5, qword_2804AD240);

  v6 = sub_26C6D8878();
  v7 = sub_26C6D8BA8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = sub_26C6D89C8();
    v12 = sub_26C67A77C(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_26C66B000, v6, v7, "Unregistered Request Received: %s sending back error.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D6A7490](v9, -1, -1);
    MEMORY[0x26D6A7490](v8, -1, -1);
  }

  sub_26C676694();
  v13 = swift_allocError();
  *v14 = 3;
  v15 = sub_26C689E88(MEMORY[0x277D84F90]);
  a3(a1, v13, v15);
}

uint64_t sub_26C675FCC(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = *(a1 + 32);
  v7 = sub_26C6D89B8();
  v8 = _Block_copy(a4);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v6(a2, v7, sub_26C6776D4, v9);
}

void sub_26C6760B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = sub_26C6D86E8();
    if (a3)
    {
LABEL_3:
      v8 = sub_26C6D89A8();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a4 + 16))(a4, a1, v7);
}

id sub_26C676168()
{
  v1 = [*v0 messageSessionTemplate];

  return v1;
}

uint64_t type metadata accessor for SFServiceAgent(uint64_t a1)
{
  result = qword_2804A85E8;
  if (!qword_2804A85E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26C6761F4(uint64_t a1)
{
  sub_26C677C10(319, &qword_2804A85F8, &type metadata for SharingServiceEvent, MEMORY[0x277D85788]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_26C676438@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26C676448(uint64_t a1)
{
  result = sub_26C677A18(&qword_2804A86A0, type metadata accessor for SFServiceAgent, &unk_26C6DA360);
  *(a1 + 8) = result;
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

uint64_t sub_26C676514()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26C67654C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x26D6A7490);
  }

  return result;
}

unint64_t sub_26C676694()
{
  result = qword_2804A86D8;
  if (!qword_2804A86D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A86D8);
  }

  return result;
}

uint64_t sub_26C676744(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_26C67675C()
{
  result = qword_2804A86E8;
  if (!qword_2804A86E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A86E8);
  }

  return result;
}

uint64_t sub_26C6767B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86E0, &qword_26C6DA3B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26C676904(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26C676914()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C676954(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26C676984(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26C6769FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26C676A4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26C676B2C;

  return sub_26C674224(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_26C676B2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

BOOL sub_26C676C20(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86E0, &qword_26C6DA3B8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v37 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = sub_26C6D8838();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](a1);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v37 - v22;
  if (!v21 || (v24 = [v21 peerDevice]) == 0)
  {
    (*(v17 + 56))(v15, 1, 1, v16);
LABEL_8:
    v10 = v15;
LABEL_9:
    sub_26C677B60(v10, &qword_2804A86E0, &qword_26C6DA3B8);
    return 0;
  }

  v40 = v20;
  v25 = v24;
  v26 = [v24 identifier];

  if (v26)
  {
    sub_26C6D8818();

    v27 = *(v17 + 56);
    v27(v13, 0, 1, v16);
  }

  else
  {
    v27 = *(v17 + 56);
    v27(v13, 1, 1, v16);
  }

  sub_26C6767B0(v13, v15);
  v28 = *(v17 + 48);
  if (v28(v15, 1, v16) == 1)
  {
    goto LABEL_8;
  }

  v39 = v27;
  v38 = *(v17 + 32);
  v38(v23, v15, v16);
  v30 = [a2 peerDevice];
  if (!v30)
  {
    v39(v10, 1, 1, v16);
LABEL_17:
    (*(v17 + 8))(v23, v16);
    goto LABEL_9;
  }

  v31 = v30;
  v32 = [v30 identifier];

  if (v32)
  {
    sub_26C6D8818();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v39(v7, v33, 1, v16);
  sub_26C6767B0(v7, v10);
  if (v28(v10, 1, v16) == 1)
  {
    goto LABEL_17;
  }

  v34 = v40;
  v38(v40, v10, v16);
  v35 = sub_26C6D8808();
  v36 = *(v17 + 8);
  v36(v34, v16);
  v36(v23, v16);
  return (v35 & 1) != 0;
}

uint64_t sub_26C677038(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86E0, &qword_26C6DA3B8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v39 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v39 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v16 = sub_26C6D8838();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](a1);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v39 - v22;
  if (!v21 || (v24 = [v21 peerDevice]) == 0)
  {
    (*(v17 + 56))(v15, 1, 1, v16);
LABEL_8:
    v29 = v15;
    goto LABEL_9;
  }

  v42 = v20;
  v25 = v24;
  v26 = [v24 identifier];

  if (v26)
  {
    sub_26C6D8818();

    v27 = *(v17 + 56);
    v27(v13, 0, 1, v16);
  }

  else
  {
    v27 = *(v17 + 56);
    v27(v13, 1, 1, v16);
  }

  sub_26C6767B0(v13, v15);
  v28 = *(v17 + 48);
  if (v28(v15, 1, v16) == 1)
  {
    goto LABEL_8;
  }

  v41 = v27;
  v40 = *(v17 + 32);
  v40(v23, v15, v16);
  v32 = [a2 peerDevice];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 identifier];

    if (v34)
    {
      sub_26C6D8818();

      v35 = 0;
    }

    else
    {
      v35 = 1;
    }

    v41(v7, v35, 1, v16);
    sub_26C6767B0(v7, v10);
    if (v28(v10, 1, v16) != 1)
    {
      v36 = v42;
      v40(v42, v10, v16);
      sub_26C677A18(&qword_2804A8700, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v37 = sub_26C6D89D8();
      v38 = *(v17 + 8);
      v38(v36, v16);
      v38(v23, v16);
      v30 = v37 ^ 1;
      return v30 & 1;
    }
  }

  else
  {
    v41(v10, 1, 1, v16);
  }

  (*(v17 + 8))(v23, v16);
  v29 = v10;
LABEL_9:
  sub_26C677B60(v29, &qword_2804A86E0, &qword_26C6DA3B8);
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_26C67749C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26C677528()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C677570()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26C6775C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26C677C9C;

  return sub_26C672E2C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26C67769C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26C6776DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26C677724(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26C677C9C;

  return sub_26C675728(a1, v4, v5, v7, v6);
}

uint64_t sub_26C6777EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26C677C9C;

  return sub_26C672214(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_142Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_26C677910(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26C677C9C;

  return sub_26C67129C(a1, v4, v5, v7, v6);
}

uint64_t sub_26C6779D0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_26C677A18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26C677AA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8710, &unk_26C6DA430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C677B18(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_26C677B60(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_26C677C10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26C677CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_26C6D89E8();
  sub_26C677D78();
  v4 = sub_26C6D89A8();
  AnalyticsSendEvent();
}

unint64_t sub_26C677D78()
{
  result = qword_2804A8758;
  if (!qword_2804A8758)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804A8758);
  }

  return result;
}

unint64_t sub_26C677DD4(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v15];
  v2 = v15;
  if (v1)
  {
    v3 = sub_26C6D87A8();
    v5 = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C6DA100;
    v15 = 28783;
    v16 = 0xE200000000000000;
    sub_26C6D8CD8();
    *(inited + 96) = MEMORY[0x277D849A8];
    *(inited + 72) = 5;
    v15 = 1635017060;
    v16 = 0xE400000000000000;
    sub_26C6D8CD8();
    *(inited + 168) = MEMORY[0x277CC9318];
    *(inited + 144) = v3;
    *(inited + 152) = v5;
    v7 = sub_26C689E88(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86B8, &qword_26C6DA550);
    swift_arrayDestroy();
  }

  else
  {
    v8 = v2;
    v9 = sub_26C6D86F8();

    swift_willThrow();
    if (qword_2804A85A8 != -1)
    {
      swift_once();
    }

    v10 = sub_26C6D8898();
    __swift_project_value_buffer(v10, qword_2804AD258);
    v11 = sub_26C6D8878();
    v12 = sub_26C6D8BA8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26C66B000, v11, v12, "Failed to encode WFSetupData in LegacySetupDataObject!", v13, 2u);
      MEMORY[0x26D6A7490](v13, -1, -1);
    }

    LOWORD(v15) = 257;
    sub_26C678378();
    swift_willThrowTypedImpl();

    LOBYTE(v15) = 1;
    return 257;
  }

  return v7;
}

unint64_t sub_26C678094()
{
  result = sub_26C677DD4(*v0);
  if (v1)
  {
    return result | ((BYTE1(result) & 1) << 8);
  }

  return result;
}

uint64_t sub_26C6780D4@<X0>(_BYTE *a1@<X1>, uint64_t *a2@<X8>, uint64_t a3@<X0>)
{
  result = sub_26C678118(a3);
  if (v3)
  {
    *a1 = result;
    a1[1] = BYTE1(result) & 1;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26C678118(uint64_t a1)
{
  sub_26C6D8CD8();
  if (*(a1 + 16) && (v3 = sub_26C689928(v12), (v4 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v3, v13);
    sub_26C678324(v12);
    if (swift_dynamicCast())
    {
      sub_26C6783CC();
      type metadata accessor for WFSetupData();
      v5 = sub_26C6D8BC8();
      if (v1)
      {

        sub_26C678418(1635017060, 0xE400000000000000);
      }

      else
      {
        v11 = v5;
        sub_26C678418(1635017060, 0xE400000000000000);
        result = v11;
        if (v11)
        {
          return result;
        }
      }
    }
  }

  else
  {
    sub_26C678324(v12);
  }

  if (qword_2804A85A8 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD258);
  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BA8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26C66B000, v7, v8, "Unable to dearchive WFSetupData in TransmittableObject.", v9, 2u);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v12[0] = 257;
  sub_26C678378();
  swift_willThrowTypedImpl();
  LOBYTE(v12[0]) = 1;
  return 257;
}

unint64_t sub_26C678378()
{
  result = qword_2804A8760;
  if (!qword_2804A8760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8760);
  }

  return result;
}

unint64_t sub_26C6783CC()
{
  result = qword_2804A8768;
  if (!qword_2804A8768)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804A8768);
  }

  return result;
}

uint64_t sub_26C678418(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_26C67846C(uint64_t a1, uint64_t *a2)
{
  sub_26C67749C(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 32));
  sub_26C676744(v5, v3 + 32);
  return swift_endAccess();
}

uint64_t RapportFileTransferTargetAgent.__allocating_init()()
{
  v0 = swift_allocObject();
  RapportFileTransferTargetAgent.init()();
  return v0;
}

uint64_t RapportFileTransferTargetAgent.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8770, &qword_26C6DA570);
  v33 = *(v0 - 8);
  v34 = v0;
  MEMORY[0x28223BE20](v0);
  v32 = v28 - v1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8778, &qword_26C6DA578) - 8;
  v2 = MEMORY[0x28223BE20](v31);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v30 = v28 - v5;
  v29 = sub_26C6D8BD8();
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C6D8C08();
  MEMORY[0x28223BE20](v9);
  v10 = sub_26C6D8978();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_26C6779D0(0, &qword_2804A8718, 0x277D85C90);
  v28[0] = "ring.SFServiceAgent";
  v28[1] = v11;
  sub_26C6D8968();
  v36 = MEMORY[0x277D84F90];
  sub_26C67AE00(&qword_2804A8720, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8728, &qword_26C6DA580);
  sub_26C677B18(&qword_2804A8730, &qword_2804A8728, &qword_26C6DA580, MEMORY[0x277D83970]);
  sub_26C6D8C88();
  (*(v6 + 104))(v8, *MEMORY[0x277D85268], v29);
  v12 = sub_26C6D8C18();
  v13 = v34;
  v14 = v35;
  *(v35 + 16) = v12;
  v16 = v31;
  v15 = v32;
  v17 = v33;
  (*(v33 + 104))(v32, *MEMORY[0x277D85778], v13);
  v18 = v30;
  sub_26C6D8B18();
  (*(v17 + 8))(v15, v13);
  sub_26C678AFC(v18, v4);
  v19 = *(v16 + 56);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8780, &qword_26C6DA588);
  *(v14 + 56) = v20;
  *(v14 + 64) = sub_26C677B18(&qword_2804A8788, &qword_2804A8780, &qword_26C6DA588, &protocol conformance descriptor for AsyncStream<A>);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v14 + 32));
  v22 = *(v20 - 8);
  (*(v22 + 32))(boxed_opaque_existential_1, v4, v20);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8790, &unk_26C6DA590);
  v24 = *(v23 - 8);
  (*(v24 + 8))(&v4[v19], v23);
  sub_26C678AFC(v18, v4);
  (*(v24 + 32))(v14 + OBJC_IVAR____TtC10TDGSharing30RapportFileTransferTargetAgent_output, &v4[*(v16 + 56)], v23);
  (*(v22 + 8))(v4, v20);
  v25 = [objc_allocWithZone(MEMORY[0x277D44190]) init];
  *(v14 + 24) = v25;
  [v25 setDispatchQueue_];
  v26 = *(v14 + 24);
  [v26 setFlags_];

  sub_26C677B60(v18, &qword_2804A8778, &qword_26C6DA578);
  return v14;
}

uint64_t sub_26C678AFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8778, &qword_26C6DA578);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C678B6C(_BYTE *a1)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 24);
  v44 = 0;
  if ([v3 prepareTemplateAndReturnError_])
  {
    v4 = *(v1 + 24);
    v5 = v44;
    v6 = [v4 selfPublicKey];
    if (v6)
    {
      v7 = v6;
      v8 = sub_26C6D87A8();
      v10 = v9;

      v11 = [*(v1 + 24) targetID];
      if (v11)
      {
        v12 = v11;
        sub_26C6D8A08();

        sub_26C6798EC();
        return v8;
      }

      sub_26C678418(v8, v10);
    }

    if (qword_2804A85B8 != -1)
    {
      swift_once();
    }

    v22 = sub_26C6D8898();
    __swift_project_value_buffer(v22, qword_2804AD288);

    v23 = v1;
    v24 = sub_26C6D8878();
    v8 = sub_26C6D8BA8();

    if (os_log_type_enabled(v24, v8))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v46[0] = v26;
      *v25 = 136380931;
      v27 = [*(v23 + 24) selfPublicKey];
      if (v27)
      {
        v28 = v27;
        v29 = sub_26C6D87A8();
        v31 = v30;
      }

      else
      {
        v29 = 0;
        v31 = 0xF000000000000000;
      }

      v44 = v29;
      v45 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A87A8, &qword_26C6DA5A0);
      v32 = sub_26C6D8A18();
      v34 = sub_26C67A77C(v32, v33, v46);

      *(v25 + 4) = v34;
      *(v25 + 12) = 2081;
      v35 = [*(v23 + 24) targetID];
      if (v35)
      {
        v36 = v35;
        v37 = sub_26C6D8A08();
        v39 = v38;
      }

      else
      {
        v37 = 0;
        v39 = 0;
      }

      v44 = v37;
      v45 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A87B0, &qword_26C6DA5A8);
      v40 = sub_26C6D8A18();
      v42 = sub_26C67A77C(v40, v41, v46);

      *(v25 + 14) = v42;
      _os_log_impl(&dword_26C66B000, v24, v8, "Session Template missing public key: %{private}s or target id: %{private}s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v26, -1, -1);
      MEMORY[0x26D6A7490](v25, -1, -1);
    }

    *a1 = 0;
    LOBYTE(v44) = 0;
    sub_26C67A728();
    swift_willThrowTypedImpl();
  }

  else
  {
    v13 = v44;
    v14 = sub_26C6D86F8();

    swift_willThrow();
    if (qword_2804A85B8 != -1)
    {
      swift_once();
    }

    v15 = sub_26C6D8898();
    __swift_project_value_buffer(v15, qword_2804AD288);
    v16 = v14;
    v17 = sub_26C6D8878();
    v8 = sub_26C6D8BA8();

    if (os_log_type_enabled(v17, v8))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138477827;
      v20 = v14;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_26C66B000, v17, v8, "Failed to prepare file transfer template: %{private}@", v18, 0xCu);
      sub_26C677B60(v19, &qword_2804A9070, &qword_26C6DA3C0);
      MEMORY[0x26D6A7490](v19, -1, -1);
      MEMORY[0x26D6A7490](v18, -1, -1);
    }

    *a1 = 0;
    LOBYTE(v44) = 0;
    sub_26C67A728();
    swift_willThrowTypedImpl();
  }

  return v8;
}

id sub_26C67902C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_26C6D8778();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v3 + 24);
  v9 = sub_26C6D8798();
  [v8 setPeerPublicKey_];

  v10 = *(v3 + 24);
  v11 = NSTemporaryDirectory();
  sub_26C6D8A08();

  sub_26C6D8728();

  v12 = sub_26C6D8738();
  (*(v5 + 8))(v7, v4);
  [v10 setTemporaryDirectoryURL_];

  return [*(v3 + 24) activate];
}

uint64_t sub_26C6791B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8770, &qword_26C6DA570);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8778, &qword_26C6DA578);
  v6 = v5 - 8;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v25[-v10];
  [*(v0 + 24) finish];
  [*(v0 + 24) invalidate];
  (*(v2 + 104))(v4, *MEMORY[0x277D85778], v1);
  sub_26C6D8B18();
  (*(v2 + 8))(v4, v1);
  sub_26C678AFC(v11, v9);
  v12 = *(v6 + 56);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8780, &qword_26C6DA588);
  v27 = v13;
  v28 = sub_26C677B18(&qword_2804A8788, &qword_2804A8780, &qword_26C6DA588, &protocol conformance descriptor for AsyncStream<A>);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v26);
  v15 = *(v13 - 8);
  (*(v15 + 32))(boxed_opaque_existential_1, v9, v13);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  sub_26C676744(&v26, v0 + 32);
  swift_endAccess();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8790, &unk_26C6DA590);
  v17 = *(v16 - 8);
  (*(v17 + 8))(&v9[v12], v16);
  sub_26C678AFC(v11, v9);
  v18 = *(v6 + 56);
  v19 = OBJC_IVAR____TtC10TDGSharing30RapportFileTransferTargetAgent_output;
  swift_beginAccess();
  (*(v17 + 40))(v0 + v19, &v9[v18], v16);
  swift_endAccess();
  (*(v15 + 8))(v9, v13);
  v20 = [objc_allocWithZone(MEMORY[0x277D44190]) init];
  v21 = *(v0 + 24);
  *(v0 + 24) = v20;
  v22 = v20;

  [v22 setDispatchQueue_];
  v23 = *(v0 + 24);
  [v23 setFlags_];

  return sub_26C677B60(v11, &qword_2804A8778, &qword_26C6DA578);
}

void sub_26C679594(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_26C6D8778();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v12 = sub_26C6D8898();
  __swift_project_value_buffer(v12, qword_2804AD288);
  (*(v9 + 16))(v11, a3, v8);

  v13 = sub_26C6D8878();
  v14 = sub_26C6D8BB8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = a1;
    v16 = v15;
    v27 = swift_slowAlloc();
    v29 = v27;
    *v16 = 136446466;
    *(v16 + 4) = sub_26C67A77C(v28, a2, &v29);
    *(v16 + 12) = 2082;
    sub_26C67AE00(&qword_2804A87B8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    HIDWORD(v26) = v14;
    v17 = sub_26C6D8E28();
    v18 = v4;
    v20 = v19;
    (*(v9 + 8))(v11, v8);
    v21 = sub_26C67A77C(v17, v20, &v29);
    v4 = v18;

    *(v16 + 14) = v21;
    _os_log_impl(&dword_26C66B000, v13, BYTE4(v26), "Rapport Send File with %{public}s, url: %{public}s", v16, 0x16u);
    v22 = v27;
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v22, -1, -1);
    MEMORY[0x26D6A7490](v16, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v23 = [objc_allocWithZone(MEMORY[0x277D44180]) init];
  v24 = sub_26C6D89E8();
  [v23 setFilename_];

  v25 = sub_26C6D8738();
  [v23 setItemURL_];

  [*(v4 + 24) addItem_];
}

uint64_t sub_26C6798EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8790, &unk_26C6DA590);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - v6;
  v8 = OBJC_IVAR____TtC10TDGSharing30RapportFileTransferTargetAgent_output;
  swift_beginAccess();
  v9 = *(v2 + 16);
  v9(v7, v0 + v8, v1);
  v10 = *(v0 + 24);
  v9(v5, v7, v1);
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = swift_allocObject();
  (*(v2 + 32))(v12 + v11, v5, v1);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_26C67B194;
  *(v13 + 24) = v12;
  v28 = sub_26C67B260;
  v29 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_26C6AAC78;
  v27 = &block_descriptor_0;
  v14 = _Block_copy(&aBlock);
  v15 = v10;

  [v15 setReceivedItemHandler_];
  _Block_release(v14);

  v16 = *(v0 + 24);
  v28 = sub_26C679F1C;
  v29 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_26C671E20;
  v27 = &block_descriptor_15;
  v17 = _Block_copy(&aBlock);
  v18 = v16;
  [v18 setProgressHandler_];
  _Block_release(v17);

  v19 = *(v0 + 24);
  v28 = sub_26C67A0B4;
  v29 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_26C6AABE4;
  v27 = &block_descriptor_18;
  v20 = _Block_copy(&aBlock);
  v21 = v19;
  [v21 setCompletionHandler_];
  _Block_release(v20);

  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_26C679C48(void *a1, uint64_t (*a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A87E0, &qword_26C6DA6A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v8 = sub_26C6D8898();
  __swift_project_value_buffer(v8, qword_2804AD288);
  v9 = a1;
  v10 = sub_26C6D8878();
  v11 = sub_26C6D8BB8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v29 = v7;
    v13 = v12;
    v28 = swift_slowAlloc();
    v32[0] = v28;
    *v13 = 136446210;
    v14 = v9;
    v31 = a2;
    v15 = v14;
    v16 = [v14 description];
    v27 = v11;
    v17 = v16;
    v18 = sub_26C6D8A08();
    v30 = v4;
    v20 = v19;

    v21 = sub_26C67A77C(v18, v20, v32);
    v4 = v30;

    *(v13 + 4) = v21;
    a2 = v31;
    _os_log_impl(&dword_26C66B000, v10, v27, "Target Transfer Item Received Event: %{public}s", v13, 0xCu);
    v22 = v28;
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x26D6A7490](v22, -1, -1);
    v23 = v13;
    v7 = v29;
    MEMORY[0x26D6A7490](v23, -1, -1);
  }

  v32[3] = sub_26C6779D0(0, &qword_2804A87E8, 0x277D44180);
  v32[4] = &protocol witness table for RPFileTransferItem;
  v32[0] = v9;
  v33 = 0;
  v24 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8790, &unk_26C6DA590);
  sub_26C6D8B28();
  (*(v5 + 8))(v7, v4);
  return a2(0);
}

void sub_26C679F1C(void *a1)
{
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD288);
  v3 = a1;
  oslog = sub_26C6D8878();
  v4 = sub_26C6D8BB8();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    v7 = v3;
    v8 = [v7 description];
    v9 = sub_26C6D8A08();
    v11 = v10;

    v12 = sub_26C67A77C(v9, v11, &v14);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_26C66B000, oslog, v4, "Target Progress Event: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D6A7490](v6, -1, -1);
    MEMORY[0x26D6A7490](v5, -1, -1);
  }
}

void sub_26C67A0B4(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_2804A85B8 != -1)
    {
      swift_once();
    }

    v3 = sub_26C6D8898();
    __swift_project_value_buffer(v3, qword_2804AD288);
    v4 = a1;
    v5 = sub_26C6D8878();
    v6 = sub_26C6D8BB8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446210;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
      v10 = sub_26C6D8A18();
      v12 = sub_26C67A77C(v10, v11, &v18);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_26C66B000, v5, v6, "Target Transfer Failed: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x26D6A7490](v8, -1, -1);
      MEMORY[0x26D6A7490](v7, -1, -1);

      return;
    }

    v16 = a1;
  }

  else
  {
    if (qword_2804A85B8 != -1)
    {
      swift_once();
    }

    v13 = sub_26C6D8898();
    __swift_project_value_buffer(v13, qword_2804AD288);
    oslog = sub_26C6D8878();
    v14 = sub_26C6D8BB8();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_26C66B000, oslog, v14, "Target Transfer Complete", v15, 2u);
      MEMORY[0x26D6A7490](v15, -1, -1);
    }

    v16 = oslog;
  }
}

uint64_t RapportFileTransferTargetAgent.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v1 = OBJC_IVAR____TtC10TDGSharing30RapportFileTransferTargetAgent_output;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8790, &unk_26C6DA590);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t RapportFileTransferTargetAgent.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v1 = OBJC_IVAR____TtC10TDGSharing30RapportFileTransferTargetAgent_output;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8790, &unk_26C6DA590);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_26C67A498(_BYTE *a1)
{
  result = sub_26C678B6C(&v4);
  if (v1)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_26C67A4DC()
{
  v1 = [*v0 filename];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26C6D8A08();

  return v3;
}

uint64_t sub_26C67A544@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 itemURL];
  if (v3)
  {
    v4 = v3;
    sub_26C6D8758();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_26C6D8778();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_26C67A5F8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_26C67A644(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_26C67A6CC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_26C67A77C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_26C67A728()
{
  result = qword_2804A87A0;
  if (!qword_2804A87A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A87A0);
  }

  return result;
}

unint64_t sub_26C67A77C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26C67A848(v11, 0, 0, 1, a1, a2);
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
    sub_26C676984(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_26C67A848(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26C67A954(a5, a6);
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
    result = sub_26C6D8D18();
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

void *sub_26C67A954(uint64_t a1, unint64_t a2)
{
  v3 = sub_26C67A9A0(a1, a2);
  sub_26C67AAD0(&unk_287D2A9A8);
  return v3;
}

void *sub_26C67A9A0(uint64_t a1, unint64_t a2)
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

  v6 = sub_26C67ABBC(v5, 0);
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

  result = sub_26C6D8D18();
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
        v10 = sub_26C6D8A68();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26C67ABBC(v10, 0);
        result = sub_26C6D8CE8();
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

uint64_t sub_26C67AAD0(uint64_t result)
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

  result = sub_26C67AC30(result, v11, 1, v3);
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

void *sub_26C67ABBC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A87F0, &qword_26C6DA6A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26C67AC30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A87F0, &qword_26C6DA6A8);
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

_BYTE **sub_26C67AD24(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_26C67AD34(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_26C67ADA8(uint64_t a1)
{
  result = sub_26C67AE00(&qword_2804A87C0, type metadata accessor for RapportFileTransferTargetAgent, &protocol conformance descriptor for RapportFileTransferTargetAgent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26C67AE00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for RapportFileTransferTargetAgent(uint64_t a1)
{
  result = qword_2804A87C8;
  if (!qword_2804A87C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26C67AE94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_26C67749C(v3 + 32, a2);
}

void sub_26C67AEEC(uint64_t a1)
{
  sub_26C67B0B0();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26C67B0B0()
{
  if (!qword_2804A87D8)
  {
    v0 = sub_26C6D8B48();
    if (!v1)
    {
      atomic_store(v0, &qword_2804A87D8);
    }
  }
}

uint64_t sub_26C67B100()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8790, &unk_26C6DA590);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26C67B194(void *a1, uint64_t (*a2)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8790, &unk_26C6DA590);

  return sub_26C679C48(a1, a2);
}

uint64_t sub_26C67B228()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t WFSetupData.BuildError.errorDescription.getter()
{
  sub_26C6D8CF8();
  MEMORY[0x26D6A6940](0xD000000000000032, 0x800000026C6DF1D0);
  v0 = WFSetupData.PropertyKey.rawValue.getter();
  MEMORY[0x26D6A6940](v0);

  MEMORY[0x26D6A6940](46, 0xE100000000000000);
  return 0;
}

uint64_t WFSetupData.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  WFSetupData.Builder.init()();
  return v0;
}

uint64_t WFSetupData.Builder.init()()
{
  v1 = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 514;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = 0;
  *(v0 + 72) = 2;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xF000000000000000;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 514;
  *(v0 + 184) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 200) = 514;
  *(v0 + 208) = xmmword_26C6DA6C0;
  *(v0 + 224) = 33686018;
  *(v0 + 228) = 2;
  *(v0 + 240) = 0;
  *(v0 + 248) = 0;
  *(v0 + 232) = 0;
  *(v0 + 256) = 514;
  *(v0 + 258) = 2;
  *(v0 + 264) = 0;
  *(v0 + 272) = 1;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0;
  *(v0 + 320) = 0xF000000000000000;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD2A0);
  v3 = sub_26C6D8878();
  v4 = sub_26C6D8BB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26C66B000, v3, v4, "Initializing WFSetupData.Builder.", v5, 2u);
    MEMORY[0x26D6A7490](v5, -1, -1);
  }

  return v1;
}

id sub_26C67B4EC()
{
  v1 = *(v0 + 40);
  if (v1 == 2)
  {
    v2 = 2;
  }

  else
  {
    v3 = *(v0 + 41);
    if (v3 == 2)
    {
      v2 = 5;
    }

    else if (*(v0 + 48))
    {
      v4 = *(v0 + 56);
      if (v4)
      {
        v5 = *(v0 + 64);
        if (v5)
        {
          v6 = *(v0 + 72);
          if (v6 == 2)
          {
            v2 = 7;
          }

          else if (*(v0 + 88))
          {
            if (*(v0 + 136))
            {
              if (*(v0 + 152))
              {
                v7 = *(v0 + 160);
                if (v7 == 2)
                {
                  v2 = 13;
                }

                else
                {
                  v8 = *(v0 + 161);
                  if (v8 == 2)
                  {
                    v2 = 14;
                  }

                  else if (*(v0 + 176))
                  {
                    v9 = *(v0 + 200);
                    if (v9 == 2)
                    {
                      v2 = 17;
                    }

                    else
                    {
                      v10 = *(v0 + 201);
                      if (v10 == 2)
                      {
                        v2 = 18;
                      }

                      else if (*(v0 + 224) == 2)
                      {
                        v2 = 20;
                      }

                      else if (*(v0 + 225) == 2)
                      {
                        v2 = 21;
                      }

                      else
                      {
                        v61 = *(v0 + 225);
                        v62 = *(v0 + 224);
                        v63 = *(v0 + 176);
                        v64 = *(v0 + 48);
                        v67 = *(v0 + 88);
                        v68 = *(v0 + 136);
                        v70 = *(v0 + 152);
                        v65 = v4;
                        v66 = v5;
                        v60 = *(v0 + 226);
                        if (v60 == 2)
                        {
                          v2 = 22;
                        }

                        else
                        {
                          v59 = *(v0 + 227);
                          if (v59 == 2)
                          {
                            v2 = 23;
                          }

                          else
                          {
                            v58 = *(v0 + 228);
                            if (v58 == 2)
                            {
                              v2 = 24;
                            }

                            else
                            {
                              v57 = *(v0 + 256);
                              if (v57 == 2)
                              {
                                v2 = 27;
                              }

                              else
                              {
                                v56 = *(v0 + 257);
                                if (v56 == 2)
                                {
                                  v2 = 28;
                                }

                                else
                                {
                                  v55 = *(v0 + 258);
                                  if (v55 == 2)
                                  {
                                    v2 = 29;
                                  }

                                  else if (*(v0 + 272))
                                  {
                                    v2 = 30;
                                  }

                                  else
                                  {
                                    v54 = *(v0 + 288);
                                    if (v54)
                                    {
                                      v53 = *(v0 + 296);
                                      if (v53)
                                      {
                                        v45 = *(v0 + 304);
                                        if (v45)
                                        {
                                          v32 = *(v0 + 80);
                                          v33 = *(v0 + 128);
                                          v34 = *(v0 + 144);
                                          v42 = *(v0 + 264);
                                          v43 = *(v0 + 280);
                                          v29 = *(v0 + 32);
                                          v30 = *(v0 + 24);
                                          v48 = *(v0 + 104);
                                          v49 = *(v0 + 96);
                                          v31 = *(v0 + 112);
                                          v50 = *(v0 + 120);
                                          v35 = *(v0 + 184);
                                          v36 = *(v0 + 168);
                                          v46 = *(v0 + 16);
                                          v47 = *(v0 + 192);
                                          v51 = *(v0 + 216);
                                          v52 = *(v0 + 208);
                                          v37 = *(v0 + 240);
                                          v38 = *(v0 + 232);
                                          v41 = *(v0 + 312);
                                          v39 = *(v0 + 248);
                                          v40 = *(v0 + 320);
                                          v44 = type metadata accessor for WFSetupData();
                                          v11 = objc_allocWithZone(v44);
                                          *&v11[OBJC_IVAR___WFSetupDataInternal_version] = 0;
                                          *&v11[OBJC_IVAR___WFSetupDataInternal_keyboards] = v46;
                                          v12 = &v11[OBJC_IVAR___WFSetupDataInternal_appleID];
                                          *v12 = v30;
                                          v12[1] = v29;
                                          v11[OBJC_IVAR___WFSetupDataInternal_usesSameAccountForiTunes] = v1 & 1;
                                          v11[OBJC_IVAR___WFSetupDataInternal_isConnectedToWiFi] = v3 & 1;
                                          *&v11[OBJC_IVAR___WFSetupDataInternal_networks] = v64;
                                          *&v11[OBJC_IVAR___WFSetupDataInternal_networkPasswords] = v65;
                                          *&v11[OBJC_IVAR___WFSetupDataInternal_localePreferences] = v66;
                                          v11[OBJC_IVAR___WFSetupDataInternal_isAutomaticTimeZoneEnabled] = v6 & 1;
                                          v13 = &v11[OBJC_IVAR___WFSetupDataInternal_timeZone];
                                          *v13 = v32;
                                          v13[1] = v67;
                                          v14 = &v11[OBJC_IVAR___WFSetupDataInternal_accessibilitySettings];
                                          *v14 = v49;
                                          v14[1] = v48;
                                          v15 = &v11[OBJC_IVAR___WFSetupDataInternal_firstName];
                                          *v15 = v31;
                                          v15[1] = v50;
                                          v16 = &v11[OBJC_IVAR___WFSetupDataInternal_deviceModel];
                                          *v16 = v33;
                                          v16[1] = v68;
                                          v17 = &v11[OBJC_IVAR___WFSetupDataInternal_deviceClass];
                                          v18 = v70;
                                          *v17 = v34;
                                          v17[1] = v18;
                                          v11[OBJC_IVAR___WFSetupDataInternal_hasHomeButton] = v7 & 1;
                                          v11[OBJC_IVAR___WFSetupDataInternal_isRestoring] = v8 & 1;
                                          v19 = &v11[OBJC_IVAR___WFSetupDataInternal_deviceName];
                                          *v19 = v36;
                                          v19[1] = v63;
                                          v20 = &v11[OBJC_IVAR___WFSetupDataInternal_backupUUID];
                                          *v20 = v35;
                                          v20[1] = v47;
                                          v11[OBJC_IVAR___WFSetupDataInternal_isBackupEnabled] = v9 & 1;
                                          v11[OBJC_IVAR___WFSetupDataInternal_isOptedInToLocationServices] = v10 & 1;
                                          v11[OBJC_IVAR___WFSetupDataInternal_isOptedInToDeviceAnalytics] = v60 & 1;
                                          v21 = &v11[OBJC_IVAR___WFSetupDataInternal_locationServicesData];
                                          *v21 = v52;
                                          v21[1] = v51;
                                          v11[OBJC_IVAR___WFSetupDataInternal_isOptedInToFindMyDevice] = v62 & 1;
                                          v11[OBJC_IVAR___WFSetupDataInternal_isOptedInToAppAnalytics] = v61 & 1;
                                          v11[OBJC_IVAR___WFSetupDataInternal_siriAssistantIsEnabled] = v59 & 1;
                                          v11[OBJC_IVAR___WFSetupDataInternal_siriVoiceTriggerIsEnabled] = v58 & 1;
                                          v22 = &v11[OBJC_IVAR___WFSetupDataInternal_siriAssistantLanguageCode];
                                          *v22 = v38;
                                          v22[1] = v37;
                                          *&v11[OBJC_IVAR___WFSetupDataInternal_siriAssistantOutputVoice] = v39;
                                          v11[OBJC_IVAR___WFSetupDataInternal_siriDataSharingIsEnabled] = v57 & 1;
                                          v11[OBJC_IVAR___WFSetupDataInternal_dictationIsEnabled] = v56 & 1;
                                          v11[OBJC_IVAR___WFSetupDataInternal_suppressDictationOptIn] = v55 & 1;
                                          *&v11[OBJC_IVAR___WFSetupDataInternal_deviceTermsIdentifier] = v42;
                                          v23 = &v11[OBJC_IVAR___WFSetupDataInternal_productVersion];
                                          *v23 = v43;
                                          v23[1] = v54;
                                          *&v11[OBJC_IVAR___WFSetupDataInternal_anisetteDataProvider] = v53;
                                          *&v11[OBJC_IVAR___WFSetupDataInternal_prescriptionRecords] = v45;
                                          v24 = &v11[OBJC_IVAR___WFSetupDataInternal_walletData];
                                          *v24 = v41;
                                          v24[1] = v40;

                                          v25 = v53;

                                          swift_unknownObjectRetain();
                                          sub_26C67ED18(v49, v48);

                                          sub_26C67ED18(v52, v51);
                                          v26 = v39;

                                          sub_26C67ED18(v41, v40);
                                          v69.receiver = v11;
                                          v69.super_class = v44;
                                          return objc_msgSendSuper2(&v69, sel_init);
                                        }

                                        v2 = 33;
                                      }

                                      else
                                      {
                                        v2 = 32;
                                      }
                                    }

                                    else
                                    {
                                      v2 = 31;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                    v2 = 15;
                  }
                }
              }

              else
              {
                v2 = 12;
              }
            }

            else
            {
              v2 = 11;
            }
          }

          else
          {
            v2 = 8;
          }
        }

        else
        {
          v2 = 6;
        }
      }

      else
      {
        v2 = 4;
      }
    }

    else
    {
      v2 = 3;
    }
  }

  sub_26C67ECC4();
  swift_allocError();
  *v28 = v2;
  return swift_willThrow();
}

uint64_t sub_26C67BBD0(uint64_t a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  swift_unknownObjectRetain();
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8800, &qword_26C6DA6E0);
    v9 = sub_26C6D8A18();
    v11 = sub_26C67A77C(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set keyboards %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 16) = a1;
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
}

uint64_t sub_26C67BD6C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD2A0);

  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    if (a2)
    {
      v11 = a1;
    }

    else
    {
      v11 = 7104878;
    }

    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 0xE300000000000000;
    }

    v13 = sub_26C67A77C(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v7, v8, "Set appleID: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
}

uint64_t sub_26C67BF1C(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set usesSameAccountForiTunes: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 40) = a1 & 1;
}

uint64_t sub_26C67C030(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set isConnectedToWiFi: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 41) = a1 & 1;
}

uint64_t sub_26C67C144(uint64_t a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);

  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = sub_26C67EE24();
    v10 = MEMORY[0x26D6A69B0](a1, v9);
    v12 = sub_26C67A77C(v10, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set networks: %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 48) = a1;
}

uint64_t sub_26C67C2D8(uint64_t a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set networkPasswords", v7, 2u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 56) = a1;
}

uint64_t sub_26C67C3E8(uint64_t a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);

  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = sub_26C6D89C8();
    v11 = sub_26C67A77C(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set localePreferences: %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 64) = a1;
}

uint64_t sub_26C67C58C(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set isAutomaticTimeZoneEnabled: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 72) = a1 & 1;
}

uint64_t sub_26C67C6A0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD2A0);

  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_26C67A77C(a1, a2, &v12);
    _os_log_impl(&dword_26C66B000, v7, v8, "Set timeZone: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  *(v3 + 80) = a1;
  *(v3 + 88) = a2;
}

uint64_t sub_26C67C81C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD2A0);
  sub_26C67ED18(a1, a2);
  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();
  sub_26C67EE70(a1, a2);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    if (a2 >> 60 == 15)
    {
      v11 = 7104878;
    }

    else
    {
      v11 = 0x3E617461443CLL;
    }

    if (a2 >> 60 == 15)
    {
      v12 = 0xE300000000000000;
    }

    else
    {
      v12 = 0xE600000000000000;
    }

    v13 = sub_26C67A77C(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v7, v8, "Set accessibilitySettings: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v14 = *(v3 + 96);
  v15 = *(v3 + 104);
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;
  sub_26C67EE70(v14, v15);
  sub_26C67ED18(a1, a2);
}

uint64_t sub_26C67C9E0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD2A0);

  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    if (a2)
    {
      v11 = a1;
    }

    else
    {
      v11 = 7104878;
    }

    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 0xE300000000000000;
    }

    v13 = sub_26C67A77C(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v7, v8, "Set firstName: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
}

uint64_t sub_26C67CB90(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD2A0);

  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    if (a2)
    {
      v11 = a1;
    }

    else
    {
      v11 = 7104878;
    }

    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 0xE300000000000000;
    }

    v13 = sub_26C67A77C(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v7, v8, "Set deviceModel: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  *(v3 + 128) = a1;
  *(v3 + 136) = a2;
}

uint64_t sub_26C67CD40(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD2A0);

  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    if (a2)
    {
      v11 = a1;
    }

    else
    {
      v11 = 7104878;
    }

    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 0xE300000000000000;
    }

    v13 = sub_26C67A77C(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v7, v8, "Set deviceClass: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  *(v3 + 144) = a1;
  *(v3 + 152) = a2;
}

uint64_t sub_26C67CEF0(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set hasHomeButton: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 160) = a1 & 1;
}

uint64_t sub_26C67D004(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set isRestoring: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 161) = a1 & 1;
}

uint64_t sub_26C67D118(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD2A0);

  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    if (a2)
    {
      v11 = a1;
    }

    else
    {
      v11 = 7104878;
    }

    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 0xE300000000000000;
    }

    v13 = sub_26C67A77C(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v7, v8, "Set deviceName: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  *(v3 + 168) = a1;
  *(v3 + 176) = a2;
}

uint64_t sub_26C67D2C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD2A0);

  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A87B0, &qword_26C6DA5A8);
    v11 = sub_26C6D8A18();
    v13 = sub_26C67A77C(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v7, v8, "Set backupUUID: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  *(v3 + 184) = a1;
  *(v3 + 192) = a2;
}

uint64_t sub_26C67D474(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set isBackupEnabled: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 200) = a1 & 1;
}

uint64_t sub_26C67D588(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set isOptedInToLocationServices: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 201) = a1 & 1;
}

uint64_t sub_26C67D69C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD2A0);
  sub_26C67ED18(a1, a2);
  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();
  sub_26C67EE70(a1, a2);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    if (a2 >> 60 == 15)
    {
      v11 = 7104878;
    }

    else
    {
      v11 = 0x3E617461443CLL;
    }

    if (a2 >> 60 == 15)
    {
      v12 = 0xE300000000000000;
    }

    else
    {
      v12 = 0xE600000000000000;
    }

    v13 = sub_26C67A77C(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v7, v8, "Set locationServicesData: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v14 = *(v3 + 208);
  v15 = *(v3 + 216);
  *(v3 + 208) = a1;
  *(v3 + 216) = a2;
  sub_26C67EE70(v14, v15);
  sub_26C67ED18(a1, a2);
}

uint64_t sub_26C67D860(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set isOptedInToFindMyDevice: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 224) = a1 & 1;
}

uint64_t sub_26C67D974(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set isOptedInToDeviceAnalytics: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 226) = a1 & 1;
}

uint64_t sub_26C67DA88(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set isOptedInToAppAnalytics: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 225) = a1 & 1;
}

uint64_t sub_26C67DB9C(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set siriAssistantIsEnabled: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 227) = a1 & 1;
}

uint64_t sub_26C67DCB0(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set siriVoiceTriggerIsEnabled: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 228) = a1 & 1;
}

uint64_t sub_26C67DDC4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD2A0);

  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    if (a2)
    {
      v11 = a1;
    }

    else
    {
      v11 = 7104878;
    }

    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 0xE300000000000000;
    }

    v13 = sub_26C67A77C(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v7, v8, "Set siriAssistantLanguageCode: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  *(v3 + 232) = a1;
  *(v3 + 240) = a2;
}

uint64_t sub_26C67DF74(void *a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = a1;
  v6 = sub_26C6D8878();
  v7 = sub_26C6D8BB8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8810, &qword_26C6DA6E8);
    v11 = sub_26C6D8A18();
    v13 = sub_26C67A77C(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v6, v7, "Set siriAssistantOutputVoice: %s.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D6A7490](v9, -1, -1);
    MEMORY[0x26D6A7490](v8, -1, -1);
  }

  v14 = *(v2 + 248);
  *(v2 + 248) = a1;

  v15 = v5;
}

uint64_t sub_26C67E10C(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set siriDataSharingIsEnabled: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 256) = a1 & 1;
}

uint64_t sub_26C67E220(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set dictationIsEnabled: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 257) = a1 & 1;
}

uint64_t sub_26C67E334(char a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set suppressDictationOptIn: %{BOOL}d.", v7, 8u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 258) = a1 & 1;
}

uint64_t sub_26C67E448(uint64_t a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set deviceTermsIdentifier: %ld.", v7, 0xCu);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 264) = a1;
  *(v2 + 272) = 0;
}

uint64_t sub_26C67E558(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD2A0);

  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_26C67A77C(a1, a2, &v12);
    _os_log_impl(&dword_26C66B000, v7, v8, "Set productVersion: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  *(v3 + 280) = a1;
  *(v3 + 288) = a2;
}

uint64_t sub_26C67E6D4(void *a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);
  v5 = a1;
  v6 = sub_26C6D8878();
  v7 = sub_26C6D8BB8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = [v5 description];
    v11 = sub_26C6D8A08();
    v13 = v12;

    v14 = sub_26C67A77C(v11, v13, &v18);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_26C66B000, v6, v7, "Set anisetteDataProvider: %s.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D6A7490](v9, -1, -1);
    MEMORY[0x26D6A7490](v8, -1, -1);
  }

  v15 = *(v2 + 296);
  *(v2 + 296) = v5;
  v16 = v5;
}

uint64_t sub_26C67E888(uint64_t a1)
{
  v2 = v1;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD2A0);

  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = type metadata accessor for PrescriptionRecord(0);
    v10 = MEMORY[0x26D6A69C0](a1, v9);
    v12 = sub_26C67A77C(v10, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_26C66B000, v5, v6, "Set prescription records: %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  *(v2 + 304) = a1;
}

uint64_t sub_26C67EA1C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_2804A85C0 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD2A0);
  sub_26C67ED18(a1, a2);
  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();
  sub_26C67EE70(a1, a2);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    if (a2 >> 60 == 15)
    {
      v11 = 7104878;
    }

    else
    {
      v11 = 0x3E617461443CLL;
    }

    if (a2 >> 60 == 15)
    {
      v12 = 0xE300000000000000;
    }

    else
    {
      v12 = 0xE600000000000000;
    }

    v13 = sub_26C67A77C(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v7, v8, "Set wallet data: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v14 = *(v3 + 312);
  v15 = *(v3 + 320);
  *(v3 + 312) = a1;
  *(v3 + 320) = a2;
  sub_26C67EE70(v14, v15);
  sub_26C67ED18(a1, a2);
}

uint64_t WFSetupData.Builder.deinit()
{
  swift_unknownObjectRelease();

  sub_26C67EE70(*(v0 + 96), *(v0 + 104));

  sub_26C67EE70(*(v0 + 208), *(v0 + 216));

  sub_26C67EE70(*(v0 + 312), *(v0 + 320));
  return v0;
}

uint64_t WFSetupData.Builder.__deallocating_deinit()
{
  WFSetupData.Builder.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_26C67ECC4()
{
  result = qword_2804A87F8;
  if (!qword_2804A87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A87F8);
  }

  return result;
}

uint64_t sub_26C67ED18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26C67ED2C(a1, a2);
  }

  return a1;
}

uint64_t sub_26C67ED2C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *sub_26C67ED80(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_26C67EDF4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_26C67EE24()
{
  result = qword_2804A8808;
  if (!qword_2804A8808)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804A8808);
  }

  return result;
}

uint64_t sub_26C67EE70(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26C678418(result, a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WFSetupData.PropertyKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDE)
  {
    goto LABEL_17;
  }

  if (a2 + 34 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 34) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 34;
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

      return (*a1 | (v4 << 8)) - 34;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 34;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v8 = v6 - 35;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WFSetupData.PropertyKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDE)
  {
    v4 = 0;
  }

  if (a2 > 0xDD)
  {
    v5 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
    *result = a2 + 34;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransmittableRequestError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransmittableRequestError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransmittableResponseError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TransmittableResponseError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26C67F9D8()
{
  result = qword_2804A8818;
  if (!qword_2804A8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8818);
  }

  return result;
}

uint64_t sub_26C67FA74()
{
  v1 = *v0;
  sub_26C6D8EE8();
  MEMORY[0x26D6A6DF0](v1);
  return sub_26C6D8F08();
}

uint64_t sub_26C67FABC(uint64_t a1)
{
  v2 = *v1;
  sub_26C6D8EE8();
  MEMORY[0x26D6A6DF0](v2);
  return sub_26C6D8F08();
}

unint64_t sub_26C67FB04()
{
  result = qword_2804A8820;
  if (!qword_2804A8820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8820);
  }

  return result;
}

unint64_t WFSetupData.PropertyKey.rawValue.getter()
{
  result = 0x6472616F6279656BLL;
  switch(*v0)
  {
    case 1:
      result = 0x4449656C707061;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0x736B726F7774656ELL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
    case 0x16:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      result = 0x656E6F5A656D6974;
      break;
    case 9:
    case 0x1E:
      result = 0xD000000000000015;
      break;
    case 0xA:
      result = 0x6D614E7473726966;
      break;
    case 0xB:
      result = 0x6F4D656369766564;
      break;
    case 0xC:
      result = 0x6C43656369766564;
      break;
    case 0xD:
      result = 0x42656D6F48736168;
      break;
    case 0xE:
      result = 0x726F747365527369;
      break;
    case 0xF:
      result = 0x614E656369766564;
      break;
    case 0x10:
      result = 0x555570756B636162;
      break;
    case 0x11:
      result = 0x70756B6361427369;
      break;
    case 0x12:
      result = 0xD00000000000001BLL;
      break;
    case 0x13:
    case 0x20:
      result = 0xD000000000000014;
      break;
    case 0x14:
    case 0x15:
      result = 0xD000000000000017;
      break;
    case 0x17:
    case 0x1D:
      result = 0xD000000000000016;
      break;
    case 0x18:
    case 0x19:
      result = 0xD000000000000019;
      break;
    case 0x1A:
      result = 0xD000000000000018;
      break;
    case 0x1B:
      result = 0xD000000000000018;
      break;
    case 0x1C:
      result = 0xD000000000000012;
      break;
    case 0x1F:
      result = 0x56746375646F7270;
      break;
    case 0x21:
      result = 0xD000000000000013;
      break;
    case 0x22:
      result = 0x614474656C6C6177;
      break;
    default:
      return result;
  }

  return result;
}

id WFSetupData.__allocating_init(keyboards:appleID:usesSameAccountForiTunes:isConnectedToWiFi:networks:networkPasswords:localePreferences:isAutomaticTimeZoneEnabled:timeZone:accessibilitySettings:firstName:deviceModel:deviceClass:hasHomeButton:isRestoring:deviceName:backupUUID:isBackupEnabled:isOptedInToLocationServices:isOptedInToDeviceAnalytics:locationServicesData:isOptedInToFindMyDevice:isOptedInToAppAnalytics:siriAssistantIsEnabled:siriVoiceTriggerIsEnabled:siriAssistantLanguageCode:siriAssistantOutputVoice:siriDataSharingIsEnabled:dictationIsEnabled:suppressDictationOptIn:deviceTermsIdentifier:productVersion:anisetteDataProvider:prescriptionRecords:walletData:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v51 = objc_allocWithZone(v47);
  *&v51[OBJC_IVAR___WFSetupDataInternal_version] = 0;
  *&v51[OBJC_IVAR___WFSetupDataInternal_keyboards] = a1;
  v52 = &v51[OBJC_IVAR___WFSetupDataInternal_appleID];
  *v52 = a2;
  v52[1] = a3;
  v51[OBJC_IVAR___WFSetupDataInternal_usesSameAccountForiTunes] = a4;
  v51[OBJC_IVAR___WFSetupDataInternal_isConnectedToWiFi] = a5;
  *&v51[OBJC_IVAR___WFSetupDataInternal_networks] = a6;
  *&v51[OBJC_IVAR___WFSetupDataInternal_networkPasswords] = a7;
  *&v51[OBJC_IVAR___WFSetupDataInternal_localePreferences] = a8;
  v51[OBJC_IVAR___WFSetupDataInternal_isAutomaticTimeZoneEnabled] = a9;
  v53 = &v51[OBJC_IVAR___WFSetupDataInternal_timeZone];
  *v53 = a10;
  v53[1] = a11;
  v54 = &v51[OBJC_IVAR___WFSetupDataInternal_accessibilitySettings];
  *v54 = a12;
  v54[1] = a13;
  v55 = &v51[OBJC_IVAR___WFSetupDataInternal_firstName];
  *v55 = a14;
  v55[1] = a15;
  v56 = &v51[OBJC_IVAR___WFSetupDataInternal_deviceModel];
  *v56 = a16;
  v56[1] = a17;
  v57 = &v51[OBJC_IVAR___WFSetupDataInternal_deviceClass];
  *v57 = a18;
  v57[1] = a19;
  v51[OBJC_IVAR___WFSetupDataInternal_hasHomeButton] = a20;
  v51[OBJC_IVAR___WFSetupDataInternal_isRestoring] = a21;
  v58 = &v51[OBJC_IVAR___WFSetupDataInternal_deviceName];
  *v58 = a22;
  v58[1] = a23;
  v59 = &v51[OBJC_IVAR___WFSetupDataInternal_backupUUID];
  *v59 = a24;
  v59[1] = a25;
  v51[OBJC_IVAR___WFSetupDataInternal_isBackupEnabled] = a26;
  v51[OBJC_IVAR___WFSetupDataInternal_isOptedInToLocationServices] = a27;
  v51[OBJC_IVAR___WFSetupDataInternal_isOptedInToDeviceAnalytics] = a28;
  v60 = &v51[OBJC_IVAR___WFSetupDataInternal_locationServicesData];
  *v60 = a29;
  v60[1] = a30;
  v51[OBJC_IVAR___WFSetupDataInternal_isOptedInToFindMyDevice] = a31;
  v51[OBJC_IVAR___WFSetupDataInternal_isOptedInToAppAnalytics] = a32;
  v51[OBJC_IVAR___WFSetupDataInternal_siriAssistantIsEnabled] = a33;
  v51[OBJC_IVAR___WFSetupDataInternal_siriVoiceTriggerIsEnabled] = a34;
  v61 = &v51[OBJC_IVAR___WFSetupDataInternal_siriAssistantLanguageCode];
  *v61 = a35;
  v61[1] = a36;
  *&v51[OBJC_IVAR___WFSetupDataInternal_siriAssistantOutputVoice] = a37;
  v51[OBJC_IVAR___WFSetupDataInternal_siriDataSharingIsEnabled] = a38;
  v51[OBJC_IVAR___WFSetupDataInternal_dictationIsEnabled] = a39;
  v51[OBJC_IVAR___WFSetupDataInternal_suppressDictationOptIn] = a40;
  *&v51[OBJC_IVAR___WFSetupDataInternal_deviceTermsIdentifier] = a41;
  v62 = &v51[OBJC_IVAR___WFSetupDataInternal_productVersion];
  *v62 = a42;
  v62[1] = a43;
  *&v51[OBJC_IVAR___WFSetupDataInternal_anisetteDataProvider] = a44;
  *&v51[OBJC_IVAR___WFSetupDataInternal_prescriptionRecords] = a45;
  v63 = &v51[OBJC_IVAR___WFSetupDataInternal_walletData];
  *v63 = a46;
  v63[1] = a47;
  v71.receiver = v51;
  v71.super_class = v70;
  return objc_msgSendSuper2(&v71, sel_init);
}

uint64_t WFSetupData.appleID.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_appleID);

  return v1;
}

uint64_t WFSetupData.walletData.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_walletData);
  sub_26C67ED18(v1, *(v0 + OBJC_IVAR___WFSetupDataInternal_walletData + 8));
  return v1;
}

id sub_26C6804FC(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  sub_26C6779D0(0, a4, a5);

  v5 = sub_26C6D8A98();

  return v5;
}

uint64_t WFSetupData.timeZone.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_timeZone);

  return v1;
}

uint64_t WFSetupData.accessibilitySettings.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_accessibilitySettings);
  sub_26C67ED18(v1, *(v0 + OBJC_IVAR___WFSetupDataInternal_accessibilitySettings + 8));
  return v1;
}

uint64_t WFSetupData.firstName.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_firstName);

  return v1;
}

uint64_t WFSetupData.deviceModel.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_deviceModel);

  return v1;
}

uint64_t WFSetupData.deviceClass.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_deviceClass);

  return v1;
}

uint64_t WFSetupData.deviceName.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_deviceName);

  return v1;
}

uint64_t WFSetupData.backupUUID.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_backupUUID);

  return v1;
}

id sub_26C68089C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 8);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = *v3;
    sub_26C67ED2C(*v3, *(v3 + 8));
    v7 = sub_26C6D8798();
    sub_26C67EE70(v6, v4);
    v5 = v7;
  }

  return v5;
}

uint64_t WFSetupData.locationServicesData.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_locationServicesData);
  sub_26C67ED18(v1, *(v0 + OBJC_IVAR___WFSetupDataInternal_locationServicesData + 8));
  return v1;
}

id sub_26C680A0C(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_26C6D89E8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t WFSetupData.siriAssistantLanguageCode.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_siriAssistantLanguageCode);

  return v1;
}

void *WFSetupData.siriAssistantOutputVoice.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_siriAssistantOutputVoice);
  v2 = v1;
  return v1;
}

id sub_26C680B80(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_26C6D89E8();

  return v3;
}

uint64_t WFSetupData.productVersion.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFSetupDataInternal_productVersion);

  return v1;
}

id WFSetupData.init(keyboards:appleID:usesSameAccountForiTunes:isConnectedToWiFi:networks:networkPasswords:localePreferences:isAutomaticTimeZoneEnabled:timeZone:accessibilitySettings:firstName:deviceModel:deviceClass:hasHomeButton:isRestoring:deviceName:backupUUID:isBackupEnabled:isOptedInToLocationServices:isOptedInToDeviceAnalytics:locationServicesData:isOptedInToFindMyDevice:isOptedInToAppAnalytics:siriAssistantIsEnabled:siriVoiceTriggerIsEnabled:siriAssistantLanguageCode:siriAssistantOutputVoice:siriDataSharingIsEnabled:dictationIsEnabled:suppressDictationOptIn:deviceTermsIdentifier:productVersion:anisetteDataProvider:prescriptionRecords:walletData:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  *&v47[OBJC_IVAR___WFSetupDataInternal_version] = 0;
  *&v47[OBJC_IVAR___WFSetupDataInternal_keyboards] = a1;
  v48 = &v47[OBJC_IVAR___WFSetupDataInternal_appleID];
  *v48 = a2;
  v48[1] = a3;
  v47[OBJC_IVAR___WFSetupDataInternal_usesSameAccountForiTunes] = a4;
  v47[OBJC_IVAR___WFSetupDataInternal_isConnectedToWiFi] = a5;
  *&v47[OBJC_IVAR___WFSetupDataInternal_networks] = a6;
  *&v47[OBJC_IVAR___WFSetupDataInternal_networkPasswords] = a7;
  *&v47[OBJC_IVAR___WFSetupDataInternal_localePreferences] = a8;
  v47[OBJC_IVAR___WFSetupDataInternal_isAutomaticTimeZoneEnabled] = a9;
  v49 = &v47[OBJC_IVAR___WFSetupDataInternal_timeZone];
  *v49 = a10;
  v49[1] = a11;
  v50 = &v47[OBJC_IVAR___WFSetupDataInternal_accessibilitySettings];
  *v50 = a12;
  v50[1] = a13;
  v51 = &v47[OBJC_IVAR___WFSetupDataInternal_firstName];
  *v51 = a14;
  v51[1] = a15;
  v52 = &v47[OBJC_IVAR___WFSetupDataInternal_deviceModel];
  *v52 = a16;
  v52[1] = a17;
  v53 = &v47[OBJC_IVAR___WFSetupDataInternal_deviceClass];
  *v53 = a18;
  v53[1] = a19;
  v47[OBJC_IVAR___WFSetupDataInternal_hasHomeButton] = a20;
  v47[OBJC_IVAR___WFSetupDataInternal_isRestoring] = a21;
  v54 = &v47[OBJC_IVAR___WFSetupDataInternal_deviceName];
  *v54 = a22;
  v54[1] = a23;
  v55 = &v47[OBJC_IVAR___WFSetupDataInternal_backupUUID];
  *v55 = a24;
  v55[1] = a25;
  v47[OBJC_IVAR___WFSetupDataInternal_isBackupEnabled] = a26;
  v47[OBJC_IVAR___WFSetupDataInternal_isOptedInToLocationServices] = a27;
  v47[OBJC_IVAR___WFSetupDataInternal_isOptedInToDeviceAnalytics] = a28;
  v56 = &v47[OBJC_IVAR___WFSetupDataInternal_locationServicesData];
  *v56 = a29;
  v56[1] = a30;
  v47[OBJC_IVAR___WFSetupDataInternal_isOptedInToFindMyDevice] = a31;
  v47[OBJC_IVAR___WFSetupDataInternal_isOptedInToAppAnalytics] = a32;
  v47[OBJC_IVAR___WFSetupDataInternal_siriAssistantIsEnabled] = a33;
  v47[OBJC_IVAR___WFSetupDataInternal_siriVoiceTriggerIsEnabled] = a34;
  v57 = &v47[OBJC_IVAR___WFSetupDataInternal_siriAssistantLanguageCode];
  *v57 = a35;
  v57[1] = a36;
  *&v47[OBJC_IVAR___WFSetupDataInternal_siriAssistantOutputVoice] = a37;
  v47[OBJC_IVAR___WFSetupDataInternal_siriDataSharingIsEnabled] = a38;
  v47[OBJC_IVAR___WFSetupDataInternal_dictationIsEnabled] = a39;
  v47[OBJC_IVAR___WFSetupDataInternal_suppressDictationOptIn] = a40;
  *&v47[OBJC_IVAR___WFSetupDataInternal_deviceTermsIdentifier] = a41;
  v58 = &v47[OBJC_IVAR___WFSetupDataInternal_productVersion];
  *v58 = a42;
  v58[1] = a43;
  *&v47[OBJC_IVAR___WFSetupDataInternal_anisetteDataProvider] = a44;
  *&v47[OBJC_IVAR___WFSetupDataInternal_prescriptionRecords] = a45;
  v59 = &v47[OBJC_IVAR___WFSetupDataInternal_walletData];
  *v59 = a46;
  v59[1] = a47;
  v61.receiver = v47;
  v61.super_class = type metadata accessor for WFSetupData();
  return objc_msgSendSuper2(&v61, sel_init);
}

uint64_t sub_26C681410(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v3 + OBJC_IVAR___WFSetupDataInternal_keyboards);
  if (v5)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = 0;
    v97 = 0;
    v98 = 0;
  }

  v96 = v5;
  v99 = ObjectType;
  v95 = 0;
  swift_unknownObjectRetain();
  sub_26C682010(&v96, &v95);
  sub_26C682188(&v96);
  v7 = *(v3 + OBJC_IVAR___WFSetupDataInternal_appleID + 8);
  if (v7)
  {
    v8 = *(v3 + OBJC_IVAR___WFSetupDataInternal_appleID);
    v9 = MEMORY[0x277D837D0];
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v98 = 0;
  }

  v96 = v8;
  v97 = v7;
  v99 = v9;
  v95 = 1;

  sub_26C682010(&v96, &v95);
  sub_26C682188(&v96);
  v10 = *(v3 + OBJC_IVAR___WFSetupDataInternal_usesSameAccountForiTunes);
  v11 = sub_26C6D89E8();
  [a1 encodeBool:v10 forKey:v11];

  v96 = *(v3 + OBJC_IVAR___WFSetupDataInternal_networks);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8958, &qword_26C6DAAD0);
  v12 = sub_26C6D8E68();
  v13 = sub_26C6D89E8();
  [a1 encodeObject:v12 forKey:v13];
  swift_unknownObjectRelease();

  v96 = *(v3 + OBJC_IVAR___WFSetupDataInternal_networkPasswords);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8960, &qword_26C6DAAD8);
  v14 = sub_26C6D8E68();
  v15 = sub_26C6D89E8();
  [a1 encodeObject:v14 forKey:v15];
  swift_unknownObjectRelease();

  v16 = *(v3 + OBJC_IVAR___WFSetupDataInternal_isConnectedToWiFi);
  v17 = sub_26C6D89E8();
  [a1 encodeBool:v16 forKey:v17];

  v96 = *(v3 + OBJC_IVAR___WFSetupDataInternal_localePreferences);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8968, &qword_26C6DBE50);
  v18 = sub_26C6D8E68();
  v19 = sub_26C6D89E8();
  [a1 encodeObject:v18 forKey:v19];
  swift_unknownObjectRelease();

  v20 = *(v3 + OBJC_IVAR___WFSetupDataInternal_isAutomaticTimeZoneEnabled);
  v21 = sub_26C6D89E8();
  [a1 encodeBool:v20 forKey:v21];

  v22 = *(v3 + OBJC_IVAR___WFSetupDataInternal_timeZone + 8);
  v96 = *(v3 + OBJC_IVAR___WFSetupDataInternal_timeZone);
  v97 = v22;

  v23 = sub_26C6D8E68();
  v24 = sub_26C6D89E8();
  [a1 encodeObject:v23 forKey:v24];
  swift_unknownObjectRelease();

  v25 = *(v3 + OBJC_IVAR___WFSetupDataInternal_accessibilitySettings);
  v26 = *(v3 + OBJC_IVAR___WFSetupDataInternal_accessibilitySettings + 8);
  if (v26 >> 60 == 15)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v98 = 0;
  }

  else
  {
    v29 = MEMORY[0x277CC9318];
    v27 = *(v3 + OBJC_IVAR___WFSetupDataInternal_accessibilitySettings);
    v28 = *(v3 + OBJC_IVAR___WFSetupDataInternal_accessibilitySettings + 8);
  }

  v96 = v27;
  v97 = v28;
  v99 = v29;
  v95 = 9;
  sub_26C67ED18(v25, v26);
  sub_26C682010(&v96, &v95);
  sub_26C682188(&v96);
  v30 = *(v3 + OBJC_IVAR___WFSetupDataInternal_firstName + 8);
  if (v30)
  {
    v31 = *(v3 + OBJC_IVAR___WFSetupDataInternal_firstName);
    v32 = MEMORY[0x277D837D0];
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v98 = 0;
  }

  v96 = v31;
  v97 = v30;
  v99 = v32;
  v95 = 10;

  sub_26C682010(&v96, &v95);
  sub_26C682188(&v96);
  v33 = *(v3 + OBJC_IVAR___WFSetupDataInternal_deviceModel + 8);
  v96 = *(v3 + OBJC_IVAR___WFSetupDataInternal_deviceModel);
  v97 = v33;

  v34 = sub_26C6D8E68();
  v35 = sub_26C6D89E8();
  [a1 encodeObject:v34 forKey:v35];
  swift_unknownObjectRelease();

  v36 = *(v3 + OBJC_IVAR___WFSetupDataInternal_deviceClass + 8);
  v96 = *(v3 + OBJC_IVAR___WFSetupDataInternal_deviceClass);
  v97 = v36;

  v37 = sub_26C6D8E68();
  v38 = sub_26C6D89E8();
  [a1 encodeObject:v37 forKey:v38];
  swift_unknownObjectRelease();

  v39 = *(v3 + OBJC_IVAR___WFSetupDataInternal_hasHomeButton);
  v40 = sub_26C6D89E8();
  [a1 encodeBool:v39 forKey:v40];

  v41 = *(v3 + OBJC_IVAR___WFSetupDataInternal_isRestoring);
  v42 = sub_26C6D89E8();
  [a1 encodeBool:v41 forKey:v42];

  v43 = *(v3 + OBJC_IVAR___WFSetupDataInternal_deviceName + 8);
  v96 = *(v3 + OBJC_IVAR___WFSetupDataInternal_deviceName);
  v97 = v43;

  v44 = sub_26C6D8E68();
  v45 = sub_26C6D89E8();
  [a1 encodeObject:v44 forKey:v45];
  swift_unknownObjectRelease();

  v46 = *(v3 + OBJC_IVAR___WFSetupDataInternal_backupUUID + 8);
  if (v46)
  {
    v47 = *(v3 + OBJC_IVAR___WFSetupDataInternal_backupUUID);
    v48 = MEMORY[0x277D837D0];
  }

  else
  {
    v47 = 0;
    v48 = 0;
    v98 = 0;
  }

  v96 = v47;
  v97 = v46;
  v99 = v48;
  v95 = 16;

  sub_26C682010(&v96, &v95);
  sub_26C682188(&v96);
  v49 = *(v3 + OBJC_IVAR___WFSetupDataInternal_isBackupEnabled);
  v50 = sub_26C6D89E8();
  [a1 encodeBool:v49 forKey:v50];

  v51 = *(v3 + OBJC_IVAR___WFSetupDataInternal_isOptedInToLocationServices);
  v52 = sub_26C6D89E8();
  [a1 encodeBool:v51 forKey:v52];

  v53 = *(v3 + OBJC_IVAR___WFSetupDataInternal_locationServicesData);
  v54 = *(v3 + OBJC_IVAR___WFSetupDataInternal_locationServicesData + 8);
  if (v54 >> 60 == 15)
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v98 = 0;
  }

  else
  {
    v57 = MEMORY[0x277CC9318];
    v55 = *(v3 + OBJC_IVAR___WFSetupDataInternal_locationServicesData);
    v56 = *(v3 + OBJC_IVAR___WFSetupDataInternal_locationServicesData + 8);
  }

  v96 = v55;
  v97 = v56;
  v99 = v57;
  v95 = 19;
  sub_26C67ED18(v53, v54);
  sub_26C682010(&v96, &v95);
  sub_26C682188(&v96);
  v58 = *(v3 + OBJC_IVAR___WFSetupDataInternal_isOptedInToFindMyDevice);
  v59 = sub_26C6D89E8();
  [a1 encodeBool:v58 forKey:v59];

  v60 = *(v3 + OBJC_IVAR___WFSetupDataInternal_isOptedInToAppAnalytics);
  v61 = sub_26C6D89E8();
  [a1 encodeBool:v60 forKey:v61];

  v62 = *(v3 + OBJC_IVAR___WFSetupDataInternal_isOptedInToDeviceAnalytics);
  v63 = sub_26C6D89E8();
  [a1 encodeBool:v62 forKey:v63];

  v64 = *(v3 + OBJC_IVAR___WFSetupDataInternal_siriAssistantIsEnabled);
  v65 = sub_26C6D89E8();
  [a1 encodeBool:v64 forKey:v65];

  v66 = *(v3 + OBJC_IVAR___WFSetupDataInternal_siriVoiceTriggerIsEnabled);
  v67 = sub_26C6D89E8();
  [a1 encodeBool:v66 forKey:v67];

  v68 = *(v3 + OBJC_IVAR___WFSetupDataInternal_siriAssistantLanguageCode + 8);
  if (v68)
  {
    v69 = *(v3 + OBJC_IVAR___WFSetupDataInternal_siriAssistantLanguageCode);
    v70 = MEMORY[0x277D837D0];
  }

  else
  {
    v69 = 0;
    v70 = 0;
    v98 = 0;
  }

  v96 = v69;
  v97 = v68;
  v99 = v70;
  v95 = 25;

  sub_26C682010(&v96, &v95);
  sub_26C682188(&v96);
  v71 = *(v3 + OBJC_IVAR___WFSetupDataInternal_siriAssistantOutputVoice);
  if (v71)
  {
    v72 = sub_26C6779D0(0, &qword_2804A8978, 0x277CEF528);
  }

  else
  {
    v72 = 0;
    v97 = 0;
    v98 = 0;
  }

  v96 = v71;
  v99 = v72;
  v95 = 26;
  v73 = v71;
  sub_26C682010(&v96, &v95);
  sub_26C682188(&v96);
  v74 = *(v3 + OBJC_IVAR___WFSetupDataInternal_siriDataSharingIsEnabled);
  v75 = sub_26C6D89E8();
  [a1 encodeBool:v74 forKey:v75];

  v76 = *(v3 + OBJC_IVAR___WFSetupDataInternal_dictationIsEnabled);
  v77 = sub_26C6D89E8();
  [a1 encodeBool:v76 forKey:v77];

  v78 = *(v3 + OBJC_IVAR___WFSetupDataInternal_suppressDictationOptIn);
  v79 = sub_26C6D89E8();
  [a1 encodeBool:v78 forKey:v79];

  v80 = *(v3 + OBJC_IVAR___WFSetupDataInternal_deviceTermsIdentifier);
  v81 = sub_26C6D89E8();
  [a1 encodeInteger:v80 forKey:v81];

  v82 = *(v3 + OBJC_IVAR___WFSetupDataInternal_productVersion + 8);
  v96 = *(v3 + OBJC_IVAR___WFSetupDataInternal_productVersion);
  v97 = v82;

  v83 = sub_26C6D8E68();
  v84 = sub_26C6D89E8();
  [a1 encodeObject:v83 forKey:v84];
  swift_unknownObjectRelease();

  v85 = *(v3 + OBJC_IVAR___WFSetupDataInternal_anisetteDataProvider);
  v86 = sub_26C6D89E8();
  [a1 encodeObject:v85 forKey:v86];

  v96 = *(v3 + OBJC_IVAR___WFSetupDataInternal_prescriptionRecords);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8970, &qword_26C6DAAE0);
  v87 = sub_26C6D8E68();
  v88 = sub_26C6D89E8();
  [a1 encodeObject:v87 forKey:v88];
  swift_unknownObjectRelease();

  v89 = *(v3 + OBJC_IVAR___WFSetupDataInternal_walletData);
  v90 = *(v3 + OBJC_IVAR___WFSetupDataInternal_walletData + 8);
  if (v90 >> 60 == 15)
  {
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v98 = 0;
  }

  else
  {
    v93 = MEMORY[0x277CC9318];
    v91 = *(v3 + OBJC_IVAR___WFSetupDataInternal_walletData);
    v92 = *(v3 + OBJC_IVAR___WFSetupDataInternal_walletData + 8);
  }

  v96 = v91;
  v97 = v92;
  v99 = v93;
  v95 = 34;
  sub_26C67ED18(v89, v90);
  sub_26C682010(&v96, &v95);
  return sub_26C682188(&v96);
}

void sub_26C682010(uint64_t a1, char *a2)
{
  if (*(a1 + 24))
  {
    v3 = v2;
    v4 = *a2;
    sub_26C684E18(a1, v12);
    v5 = v13;
    if (v13)
    {
      v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
      v7 = *(v5 - 8);
      MEMORY[0x28223BE20](v6);
      v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v7 + 16))(v9);
      v10 = sub_26C6D8E38();
      (*(v7 + 8))(v9, v5);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
    }

    else
    {
      v10 = 0;
    }

    LOBYTE(v12[0]) = v4;
    WFSetupData.PropertyKey.rawValue.getter();
    v11 = sub_26C6D89E8();

    [v3 encodeObject:v10 forKey:v11];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_26C682188(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8950, &qword_26C6DAC50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id WFSetupData.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___WFSetupDataInternal_version) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8980, &qword_26C6DAC60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26C6DAAA0;
  v4 = sub_26C6779D0(0, &qword_2804A8988, 0x277CBEA60);
  *(v3 + 32) = v4;
  v5 = sub_26C6779D0(0, &qword_2804A8990, 0x277CCACA8);
  *(v3 + 40) = v5;
  v6 = sub_26C6779D0(0, &qword_2804A8808, 0x277CBEAC0);
  *(v3 + 48) = v6;
  v7 = sub_26C6D89E8();
  v8 = [a1 containsValueForKey_];

  if (v8)
  {
    sub_26C6D8C48();

    v9 = *(&v177 + 1);
    if (*(&v177 + 1))
    {
      v10 = __swift_project_boxed_opaque_existential_1(&v176, *(&v177 + 1));
      v11 = *(v9 - 8);
      MEMORY[0x28223BE20](v10);
      v13 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v13);
      v171 = sub_26C6D8E38();
      (*(v11 + 8))(v13, v9);
      __swift_destroy_boxed_opaque_existential_1Tm(&v176);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v171 = 0;
LABEL_6:
  v14 = swift_allocObject();
  v168 = xmmword_26C6DA0F0;
  *(v14 + 16) = xmmword_26C6DA0F0;
  *(v14 + 32) = v5;
  v15 = sub_26C6D89E8();
  v16 = [a1 containsValueForKey_];

  if (!v16)
  {

    v176 = 0u;
    v177 = 0u;
    goto LABEL_16;
  }

  sub_26C6D8C48();

  if (!*(&v177 + 1))
  {
LABEL_16:
    sub_26C682188(&v176);
    v18 = 0;
    v170 = 0;
    goto LABEL_17;
  }

  v17 = swift_dynamicCast();
  if (v17)
  {
    v18 = v174;
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v19 = v175;
  }

  else
  {
    v19 = 0;
  }

  v170 = v19;
LABEL_17:
  v20 = sub_26C6D89E8();
  v167 = [a1 decodeBoolForKey_];

  v21 = sub_26C6D89E8();
  v166 = [a1 decodeBoolForKey_];

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26C6DAAB0;
  *(v22 + 32) = v4;
  *(v22 + 40) = v6;
  *(v22 + 48) = sub_26C6779D0(0, &qword_2804A89A0, 0x277CBEAA8);
  v23 = sub_26C6779D0(0, &qword_2804A89A8, 0x277CCABB0);
  *(v22 + 56) = v23;
  *(v22 + 64) = v5;
  v169 = sub_26C6779D0(0, &qword_2804A89B0, 0x277CBEA90);
  *(v22 + 72) = v169;
  sub_26C6D8C48();

  if (!*(&v177 + 1))
  {

    sub_26C682188(&v176);
LABEL_33:
    if (qword_2804A85B0 != -1)
    {
      swift_once();
    }

    v35 = sub_26C6D8898();
    __swift_project_value_buffer(v35, qword_2804AD270);
    v36 = sub_26C6D8878();
    v37 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_56;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = "Unexpectedly failed to decode networks";
    goto LABEL_55;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8958, &qword_26C6DAAD0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_33;
  }

  v163 = v18;
  v24 = v174;
  v25 = swift_allocObject();
  v164 = xmmword_26C6DA100;
  *(v25 + 16) = xmmword_26C6DA100;
  *(v25 + 32) = v4;
  *(v25 + 40) = v5;
  sub_26C6D8C48();

  if (!*(&v177 + 1))
  {

    sub_26C682188(&v176);
LABEL_39:
    if (qword_2804A85B0 != -1)
    {
      swift_once();
    }

    v40 = sub_26C6D8898();
    __swift_project_value_buffer(v40, qword_2804AD270);
    v36 = sub_26C6D8878();
    v37 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_56;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = "Unexpectedly failed to decode network passwords";
    goto LABEL_55;
  }

  v165 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8960, &qword_26C6DAAD8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_39;
  }

  v26 = v174;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_26C6DAAC0;
  *(v27 + 32) = v4;
  *(v27 + 40) = v6;
  *(v27 + 48) = v5;
  *(v27 + 56) = v23;
  *(v27 + 64) = v169;
  sub_26C6D8C48();

  if (!*(&v177 + 1))
  {

    sub_26C682188(&v176);
LABEL_45:
    if (qword_2804A85B0 != -1)
    {
      swift_once();
    }

    v41 = sub_26C6D8898();
    __swift_project_value_buffer(v41, qword_2804AD270);
    v36 = sub_26C6D8878();
    v37 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_56;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = "Unexpectedly failed to decode locale preferences";
    goto LABEL_55;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8968, &qword_26C6DBE50);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_45;
  }

  v28 = v174;
  v29 = sub_26C6D89E8();
  v162 = [a1 decodeBoolForKey_];

  v30 = swift_allocObject();
  *(v30 + 16) = v168;
  *(v30 + 32) = v5;
  sub_26C6D8C48();

  if (!*(&v177 + 1))
  {

    sub_26C682188(&v176);
LABEL_51:
    if (qword_2804A85B0 != -1)
    {
      swift_once();
    }

    v42 = sub_26C6D8898();
    __swift_project_value_buffer(v42, qword_2804AD270);
    v36 = sub_26C6D8878();
    v37 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_56;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = "Unexpectedly failed to decode the time zone settings";
LABEL_55:
    _os_log_impl(&dword_26C66B000, v36, v37, v39, v38, 2u);
    MEMORY[0x26D6A7490](v38, -1, -1);
LABEL_56:

    swift_unknownObjectRelease();
LABEL_57:
    type metadata accessor for WFSetupData();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_51;
  }

  v156 = v174;
  v159 = v175;
  v31 = swift_allocObject();
  *(v31 + 16) = v168;
  *(v31 + 32) = v169;
  v157 = 0xD000000000000015;
  sub_26C6D8C48();

  if (*(&v177 + 1))
  {
    v32 = swift_dynamicCast();
    v33 = v174;
    if (!v32)
    {
      v33 = 0;
    }

    v160 = v33;
    v34 = 0xF000000000000000;
    if (v32)
    {
      v34 = v175;
    }
  }

  else
  {
    sub_26C682188(&v176);
    v160 = 0;
    v34 = 0xF000000000000000;
  }

  v161 = v34;
  v44 = swift_allocObject();
  *(v44 + 16) = v168;
  *(v44 + 32) = v5;
  v45 = sub_26C6D89E8();
  v46 = [a1 containsValueForKey_];

  v158 = v28;
  if (!v46)
  {

    v176 = 0u;
    v177 = 0u;
    goto LABEL_68;
  }

  sub_26C6D8C48();

  if (!*(&v177 + 1))
  {
LABEL_68:
    sub_26C682188(&v176);
    v48 = 0;
    v49 = 0;
    goto LABEL_69;
  }

  v47 = swift_dynamicCast();
  if (v47)
  {
    v48 = v174;
  }

  else
  {
    v48 = 0;
  }

  if (v47)
  {
    v49 = v175;
  }

  else
  {
    v49 = 0;
  }

LABEL_69:
  v50 = swift_allocObject();
  *(v50 + 16) = v168;
  *(v50 + 32) = v5;
  sub_26C6D8C48();

  if (!*(&v177 + 1))
  {

    sub_26C682188(&v176);
LABEL_85:
    if (qword_2804A85B0 != -1)
    {
      swift_once();
    }

    v63 = sub_26C6D8898();
    __swift_project_value_buffer(v63, qword_2804AD270);
    v64 = sub_26C6D8878();
    v65 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v64, v65))
    {
      goto LABEL_102;
    }

    v66 = swift_slowAlloc();
    *v66 = 0;
    v67 = "Unexpectedly failed to decode the accessibility settings";
    goto LABEL_101;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_85;
  }

  v154 = v48;
  v51 = v175;
  v153 = v174;
  v52 = swift_allocObject();
  *(v52 + 16) = v168;
  *(v52 + 32) = v5;
  sub_26C6D8C48();

  if (!*(&v177 + 1))
  {

    sub_26C682188(&v176);
LABEL_91:
    if (qword_2804A85B0 != -1)
    {
      swift_once();
    }

    v68 = sub_26C6D8898();
    __swift_project_value_buffer(v68, qword_2804AD270);
    v64 = sub_26C6D8878();
    v65 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v64, v65))
    {
      goto LABEL_102;
    }

    v66 = swift_slowAlloc();
    *v66 = 0;
    v67 = "Unexpectedly failed to decode the device class";
    goto LABEL_101;
  }

  v155 = v51;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_91;
  }

  v53 = v175;
  v152 = v174;
  v54 = sub_26C6D89E8();
  v151 = [a1 decodeBoolForKey_];

  v55 = sub_26C6D89E8();
  v150 = [a1 decodeBoolForKey_];

  v56 = swift_allocObject();
  *(v56 + 16) = v168;
  *(v56 + 32) = v5;
  sub_26C6D8C48();

  if (!*(&v177 + 1))
  {

    sub_26C682188(&v176);
LABEL_97:
    if (qword_2804A85B0 != -1)
    {
      swift_once();
    }

    v69 = sub_26C6D8898();
    __swift_project_value_buffer(v69, qword_2804AD270);
    v64 = sub_26C6D8878();
    v65 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v64, v65))
    {
      goto LABEL_102;
    }

    v66 = swift_slowAlloc();
    *v66 = 0;
    v67 = "Unexpectedly failed to decode the device name";
LABEL_101:
    _os_log_impl(&dword_26C66B000, v64, v65, v67, v66, 2u);
    MEMORY[0x26D6A7490](v66, -1, -1);
LABEL_102:
    swift_unknownObjectRelease();
    sub_26C67EE70(v160, v161);

    goto LABEL_57;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_97;
  }

  v149 = v49;
  v139 = v174;
  v144 = v175;
  v57 = swift_allocObject();
  *(v57 + 16) = v168;
  *(v57 + 32) = v5;
  v58 = sub_26C6D89E8();
  v59 = [a1 containsValueForKey_];

  v142 = v53;
  if (!v59)
  {

    v176 = 0u;
    v177 = 0u;
    goto LABEL_104;
  }

  sub_26C6D8C48();

  if (!*(&v177 + 1))
  {
LABEL_104:
    sub_26C682188(&v176);
    v138 = 0;
    v145 = 0;
    goto LABEL_105;
  }

  v60 = swift_dynamicCast();
  v61 = v174;
  if (!v60)
  {
    v61 = 0;
  }

  v138 = v61;
  if (v60)
  {
    v62 = v175;
  }

  else
  {
    v62 = 0;
  }

  v145 = v62;
LABEL_105:
  v70 = sub_26C6D89E8();
  v137 = [a1 decodeBoolForKey_];

  v71 = sub_26C6D89E8();
  v136 = [a1 decodeBoolForKey_];

  v72 = swift_allocObject();
  *(v72 + 16) = v168;
  *(v72 + 32) = v169;
  v140 = 0xD000000000000014;
  sub_26C6D8C48();

  if (*(&v177 + 1))
  {
    v73 = swift_dynamicCast();
    v74 = v174;
    if (!v73)
    {
      v74 = 0;
    }

    v147 = v74;
    v75 = 0xF000000000000000;
    if (v73)
    {
      v75 = v175;
    }
  }

  else
  {
    sub_26C682188(&v176);
    v147 = 0;
    v75 = 0xF000000000000000;
  }

  v148 = v75;
  v76 = sub_26C6D89E8();
  v135 = [a1 decodeBoolForKey_];

  v77 = sub_26C6D89E8();
  v134 = [a1 decodeBoolForKey_];

  v78 = sub_26C6D89E8();
  v133 = [a1 decodeBoolForKey_];

  v141 = 0xD000000000000016;
  v79 = sub_26C6D89E8();
  v132 = [a1 decodeBoolForKey_];

  v80 = sub_26C6D89E8();
  v131 = [a1 decodeBoolForKey_];

  v81 = swift_allocObject();
  *(v81 + 16) = v168;
  *(v81 + 32) = v5;
  sub_26C6D8C48();

  if (*(&v177 + 1))
  {
    v82 = swift_dynamicCast();
    v83 = v174;
    if (!v82)
    {
      v83 = 0;
    }

    v130 = v83;
    if (v82)
    {
      v84 = v175;
    }

    else
    {
      v84 = 0;
    }

    v143 = v84;
  }

  else
  {
    sub_26C682188(&v176);
    v130 = 0;
    v143 = 0;
  }

  v85 = swift_allocObject();
  *(v85 + 16) = v168;
  *(v85 + 32) = sub_26C6779D0(0, &qword_2804A8978, 0x277CEF528);
  sub_26C6D8C48();

  if (*(&v177 + 1))
  {
    v86 = swift_dynamicCast();
    v87 = v174;
    if (!v86)
    {
      v87 = 0;
    }

    v146 = v87;
  }

  else
  {
    sub_26C682188(&v176);
    v146 = 0;
  }

  v88 = sub_26C6D89E8();
  v129 = [a1 decodeBoolForKey_];

  v89 = sub_26C6D89E8();
  v128 = [a1 decodeBoolForKey_];

  v90 = sub_26C6D89E8();
  LODWORD(v141) = [a1 decodeBoolForKey_];

  v91 = sub_26C6D89E8();
  v92 = [a1 decodeIntegerForKey_];

  v93 = swift_allocObject();
  *(v93 + 16) = v164;
  *(v93 + 32) = type metadata accessor for PrescriptionRecord(0);
  *(v93 + 40) = v4;
  sub_26C6D8C48();

  if (!*(&v177 + 1))
  {

    sub_26C682188(&v176);
LABEL_137:
    if (qword_2804A85B0 != -1)
    {
      swift_once();
    }

    v105 = sub_26C6D8898();
    __swift_project_value_buffer(v105, qword_2804AD270);
    v106 = sub_26C6D8878();
    v107 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v106, v107))
    {
      goto LABEL_154;
    }

    v108 = swift_slowAlloc();
    *v108 = 0;
    v109 = "Unexpectedly failed to decode the prescription records. ";
    goto LABEL_153;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8970, &qword_26C6DAAE0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_137;
  }

  v94 = v174;
  v95 = swift_allocObject();
  *(v95 + 16) = v168;
  *(v95 + 32) = v5;
  sub_26C6D8C48();

  if (!*(&v177 + 1))
  {

    sub_26C682188(&v176);
LABEL_143:
    if (qword_2804A85B0 != -1)
    {
      swift_once();
    }

    v110 = sub_26C6D8898();
    __swift_project_value_buffer(v110, qword_2804AD270);
    v106 = sub_26C6D8878();
    v107 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v106, v107))
    {
      goto LABEL_154;
    }

    v108 = swift_slowAlloc();
    *v108 = 0;
    v109 = "Unexpectedly failed to decode the product version. ";
    goto LABEL_153;
  }

  v96 = v26;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_143;
  }

  v157 = v174;
  *&v164 = v175;
  v97 = swift_allocObject();
  *(v97 + 16) = v168;
  *(v97 + 32) = type metadata accessor for WFSetupServerAnisetteDataProvider();
  sub_26C6D8C48();

  if (!*(&v177 + 1))
  {

    sub_26C682188(&v176);
LABEL_149:
    if (qword_2804A85B0 != -1)
    {
      swift_once();
    }

    v111 = sub_26C6D8898();
    __swift_project_value_buffer(v111, qword_2804AD270);
    v106 = sub_26C6D8878();
    v107 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v106, v107))
    {
      goto LABEL_154;
    }

    v108 = swift_slowAlloc();
    *v108 = 0;
    v109 = "Unexpectedly failed to decode the anisette data provider. ";
LABEL_153:
    _os_log_impl(&dword_26C66B000, v106, v107, v109, v108, 2u);
    MEMORY[0x26D6A7490](v108, -1, -1);
LABEL_154:
    swift_unknownObjectRelease();
    sub_26C67EE70(v160, v161);
    sub_26C67EE70(v147, v148);

    goto LABEL_57;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_149;
  }

  v98 = v174;
  v99 = swift_allocObject();
  *(v99 + 16) = v168;
  *(v99 + 32) = v169;
  v100 = sub_26C6D89E8();
  v101 = [a1 containsValueForKey_];

  if (v101)
  {
    sub_26C6D8C48();

    if (*(&v177 + 1))
    {
      v102 = swift_dynamicCast();
      v103 = v174;
      v104 = v175;
      if (!v102)
      {
        v103 = 0;
        v104 = 0xF000000000000000;
      }

      goto LABEL_157;
    }
  }

  else
  {

    v176 = 0u;
    v177 = 0u;
  }

  sub_26C682188(&v176);
  v103 = 0;
  v104 = 0xF000000000000000;
LABEL_157:
  v112 = v172;
  *&v172[OBJC_IVAR___WFSetupDataInternal_keyboards] = v171;
  v113 = &v112[OBJC_IVAR___WFSetupDataInternal_appleID];
  *v113 = v163;
  v113[1] = v170;
  v112[OBJC_IVAR___WFSetupDataInternal_usesSameAccountForiTunes] = v167;
  v112[OBJC_IVAR___WFSetupDataInternal_isConnectedToWiFi] = v166;
  *&v112[OBJC_IVAR___WFSetupDataInternal_networks] = v165;
  *&v112[OBJC_IVAR___WFSetupDataInternal_networkPasswords] = v96;
  *&v112[OBJC_IVAR___WFSetupDataInternal_localePreferences] = v158;
  v112[OBJC_IVAR___WFSetupDataInternal_isAutomaticTimeZoneEnabled] = v162;
  v114 = &v112[OBJC_IVAR___WFSetupDataInternal_timeZone];
  *v114 = v156;
  v114[1] = v159;
  v115 = &v112[OBJC_IVAR___WFSetupDataInternal_accessibilitySettings];
  *v115 = v160;
  v115[1] = v161;
  v116 = &v112[OBJC_IVAR___WFSetupDataInternal_firstName];
  *v116 = v154;
  v116[1] = v149;
  v117 = &v112[OBJC_IVAR___WFSetupDataInternal_deviceModel];
  *v117 = v153;
  v117[1] = v155;
  v118 = &v112[OBJC_IVAR___WFSetupDataInternal_deviceClass];
  *v118 = v152;
  v118[1] = v142;
  v112[OBJC_IVAR___WFSetupDataInternal_hasHomeButton] = v151;
  v112[OBJC_IVAR___WFSetupDataInternal_isRestoring] = v150;
  v119 = &v112[OBJC_IVAR___WFSetupDataInternal_deviceName];
  *v119 = v139;
  v119[1] = v144;
  v120 = &v112[OBJC_IVAR___WFSetupDataInternal_backupUUID];
  *v120 = v138;
  v120[1] = v145;
  v112[OBJC_IVAR___WFSetupDataInternal_isBackupEnabled] = v137;
  v112[OBJC_IVAR___WFSetupDataInternal_isOptedInToLocationServices] = v136;
  v112[OBJC_IVAR___WFSetupDataInternal_isOptedInToDeviceAnalytics] = v133;
  v121 = &v112[OBJC_IVAR___WFSetupDataInternal_locationServicesData];
  *v121 = v147;
  v121[1] = v148;
  v112[OBJC_IVAR___WFSetupDataInternal_isOptedInToFindMyDevice] = v135;
  v112[OBJC_IVAR___WFSetupDataInternal_isOptedInToAppAnalytics] = v134;
  v112[OBJC_IVAR___WFSetupDataInternal_siriAssistantIsEnabled] = v132;
  v112[OBJC_IVAR___WFSetupDataInternal_siriVoiceTriggerIsEnabled] = v131;
  v122 = &v112[OBJC_IVAR___WFSetupDataInternal_siriAssistantLanguageCode];
  *v122 = v130;
  v122[1] = v143;
  *&v112[OBJC_IVAR___WFSetupDataInternal_siriAssistantOutputVoice] = v146;
  v112[OBJC_IVAR___WFSetupDataInternal_siriDataSharingIsEnabled] = v129;
  v112[OBJC_IVAR___WFSetupDataInternal_dictationIsEnabled] = v128;
  v112[OBJC_IVAR___WFSetupDataInternal_suppressDictationOptIn] = v141;
  *&v112[OBJC_IVAR___WFSetupDataInternal_deviceTermsIdentifier] = v92;
  v123 = &v112[OBJC_IVAR___WFSetupDataInternal_productVersion];
  *v123 = v157;
  v123[1] = v164;
  *&v112[OBJC_IVAR___WFSetupDataInternal_anisetteDataProvider] = v98;
  *&v112[OBJC_IVAR___WFSetupDataInternal_prescriptionRecords] = v94;
  v124 = &v112[OBJC_IVAR___WFSetupDataInternal_walletData];
  *v124 = v103;
  v124[1] = v104;
  v125 = type metadata accessor for WFSetupData();
  v173.receiver = v112;
  v173.super_class = v125;
  v126 = objc_msgSendSuper2(&v173, sel_init);

  return v126;
}

TDGSharing::WFSetupData::PropertyKey_optional __swiftcall WFSetupData.PropertyKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26C6D8E58();

  v5 = 0;
  v6 = 17;
  switch(v3)
  {
    case 0:
      goto LABEL_27;
    case 1:
      v5 = 1;
      goto LABEL_27;
    case 2:
      v5 = 2;
      goto LABEL_27;
    case 3:
      v5 = 3;
      goto LABEL_27;
    case 4:
      v5 = 4;
      goto LABEL_27;
    case 5:
      v5 = 5;
      goto LABEL_27;
    case 6:
      v5 = 6;
      goto LABEL_27;
    case 7:
      v5 = 7;
      goto LABEL_27;
    case 8:
      v5 = 8;
      goto LABEL_27;
    case 9:
      v5 = 9;
      goto LABEL_27;
    case 10:
      v5 = 10;
      goto LABEL_27;
    case 11:
      v5 = 11;
      goto LABEL_27;
    case 12:
      v5 = 12;
      goto LABEL_27;
    case 13:
      v5 = 13;
      goto LABEL_27;
    case 14:
      v5 = 14;
      goto LABEL_27;
    case 15:
      v5 = 15;
      goto LABEL_27;
    case 16:
      v5 = 16;
LABEL_27:
      v6 = v5;
      break;
    case 17:
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    default:
      v6 = 35;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_26C68476C()
{
  v0 = WFSetupData.PropertyKey.rawValue.getter();
  v2 = v1;
  if (v0 == WFSetupData.PropertyKey.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_26C6D8E48();
  }

  return v5 & 1;
}

uint64_t sub_26C684808()
{
  sub_26C6D8EE8();
  WFSetupData.PropertyKey.rawValue.getter();
  sub_26C6D8A38();

  return sub_26C6D8F08();
}

uint64_t sub_26C684870(uint64_t a1)
{
  WFSetupData.PropertyKey.rawValue.getter();
  sub_26C6D8A38();
}

uint64_t sub_26C6848D4(uint64_t a1)
{
  sub_26C6D8EE8();
  WFSetupData.PropertyKey.rawValue.getter();
  sub_26C6D8A38();

  return sub_26C6D8F08();
}

unint64_t sub_26C684944@<X0>(unint64_t *a1@<X8>)
{
  result = WFSetupData.PropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id WFSetupData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFSetupData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFSetupData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_26C684BC4()
{
  result = qword_2804A89B8;
  if (!qword_2804A89B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A89B8);
  }

  return result;
}

uint64_t dispatch thunk of WFSetupData.__allocating_init(keyboards:appleID:usesSameAccountForiTunes:isConnectedToWiFi:networks:networkPasswords:localePreferences:isAutomaticTimeZoneEnabled:timeZone:accessibilitySettings:firstName:deviceModel:deviceClass:hasHomeButton:isRestoring:deviceName:backupUUID:isBackupEnabled:isOptedInToLocationServices:isOptedInToDeviceAnalytics:locationServicesData:isOptedInToFindMyDevice:isOptedInToAppAnalytics:siriAssistantIsEnabled:siriVoiceTriggerIsEnabled:siriAssistantLanguageCode:siriAssistantOutputVoice:siriDataSharingIsEnabled:dictationIsEnabled:suppressDictationOptIn:deviceTermsIdentifier:productVersion:anisetteDataProvider:prescriptionRecords:walletData:)()
{
  v1 = *(v0 + 368);

  return v1();
}

uint64_t sub_26C684E18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8950, &qword_26C6DAC50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PrescriptionRecord.accPayload.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFPrescriptionRecord_accPayload);
  sub_26C67ED2C(v1, *(v0 + OBJC_IVAR___WFPrescriptionRecord_accPayload + 8));
  return v1;
}

uint64_t PrescriptionRecord.enrollmentName.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFPrescriptionRecord_enrollmentName);

  return v1;
}

uint64_t PrescriptionRecord.enrollmentDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___WFPrescriptionRecord_enrollmentDate;
  v4 = sub_26C6D87B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PrescriptionRecord.leftLensFactoryCalibrationData.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFPrescriptionRecord_leftLensFactoryCalibrationData);

  return v1;
}

uint64_t PrescriptionRecord.rightLensFactoryCalibrationData.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFPrescriptionRecord_rightLensFactoryCalibrationData);

  return v1;
}

id PrescriptionRecord.__allocating_init(accPayload:enrollmentName:enrollmentDate:leftLensFactoryCalibrationData:rightLensFactoryCalibrationData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = objc_allocWithZone(v9);
  *&v17[OBJC_IVAR___WFPrescriptionRecord_version] = 0x3FF0000000000000;
  v18 = &v17[OBJC_IVAR___WFPrescriptionRecord_accPayload];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v17[OBJC_IVAR___WFPrescriptionRecord_enrollmentName];
  *v19 = a3;
  *(v19 + 1) = a4;
  v20 = OBJC_IVAR___WFPrescriptionRecord_enrollmentDate;
  v21 = sub_26C6D87B8();
  v22 = *(v21 - 8);
  (*(v22 + 16))(&v17[v20], a5, v21);
  v23 = &v17[OBJC_IVAR___WFPrescriptionRecord_leftLensFactoryCalibrationData];
  *v23 = a6;
  *(v23 + 1) = a7;
  v24 = &v17[OBJC_IVAR___WFPrescriptionRecord_rightLensFactoryCalibrationData];
  *v24 = a8;
  *(v24 + 1) = a9;
  v28.receiver = v17;
  v28.super_class = v9;
  v25 = objc_msgSendSuper2(&v28, sel_init);
  (*(v22 + 8))(a5, v21);
  return v25;
}

id PrescriptionRecord.init(accPayload:enrollmentName:enrollmentDate:leftLensFactoryCalibrationData:rightLensFactoryCalibrationData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *&v9[OBJC_IVAR___WFPrescriptionRecord_version] = 0x3FF0000000000000;
  v14 = &v9[OBJC_IVAR___WFPrescriptionRecord_accPayload];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v9[OBJC_IVAR___WFPrescriptionRecord_enrollmentName];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = OBJC_IVAR___WFPrescriptionRecord_enrollmentDate;
  v17 = sub_26C6D87B8();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v9[v16], a5, v17);
  v19 = &v9[OBJC_IVAR___WFPrescriptionRecord_leftLensFactoryCalibrationData];
  *v19 = a6;
  *(v19 + 1) = a7;
  v20 = &v9[OBJC_IVAR___WFPrescriptionRecord_rightLensFactoryCalibrationData];
  *v20 = a8;
  *(v20 + 1) = a9;
  v23.receiver = v9;
  v23.super_class = type metadata accessor for PrescriptionRecord(0);
  v21 = objc_msgSendSuper2(&v23, sel_init);
  (*(v18 + 8))(a5, v17);
  return v21;
}

uint64_t type metadata accessor for PrescriptionRecord(uint64_t a1)
{
  result = qword_2804A8AB0;
  if (!qword_2804A8AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26C68534C(void *a1)
{
  v3 = sub_26C6D87B8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v46 - v8;
  v10 = *(v1 + OBJC_IVAR___WFPrescriptionRecord_accPayload + 8);
  *&v48 = *(v1 + OBJC_IVAR___WFPrescriptionRecord_accPayload);
  *(&v48 + 1) = v10;
  sub_26C67ED2C(v48, v10);
  v11 = sub_26C6D8E68();
  v12 = sub_26C6D89E8();
  [a1 encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  v13 = *(v4 + 16);
  v13(v9, v1 + OBJC_IVAR___WFPrescriptionRecord_enrollmentDate, v3);
  v13(v7, v9, v3);
  v14 = sub_26C6D8E68();
  v15 = sub_26C6D89E8();
  [a1 encodeObject:v14 forKey:v15];
  swift_unknownObjectRelease();

  (*(v4 + 8))(v9, v3);
  v16 = *(v1 + OBJC_IVAR___WFPrescriptionRecord_enrollmentName + 8);
  v17 = MEMORY[0x277D837D0];
  if (v16)
  {
    v18 = *(v1 + OBJC_IVAR___WFPrescriptionRecord_enrollmentName);
    *(&v49 + 1) = MEMORY[0x277D837D0];
    *&v48 = v18;
    *(&v48 + 1) = v16;
    sub_26C684E18(&v48, v46);
    v19 = v47;
    if (v47)
    {
      v20 = __swift_project_boxed_opaque_existential_1(v46, v47);
      v21 = *(v19 - 8);
      MEMORY[0x28223BE20](v20);
      v23 = v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v23);

      v24 = sub_26C6D8E38();
      (*(v21 + 8))(v23, v19);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
    }

    else
    {

      v24 = 0;
    }

    v25 = sub_26C6D89E8();
    [a1 encodeObject:v24 forKey:v25];
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  sub_26C677B60(&v48, &qword_2804A8950, &qword_26C6DAC50);
  v26 = *(v1 + OBJC_IVAR___WFPrescriptionRecord_leftLensFactoryCalibrationData + 8);
  if (v26)
  {
    v27 = *(v1 + OBJC_IVAR___WFPrescriptionRecord_leftLensFactoryCalibrationData);
    *(&v49 + 1) = v17;
    *&v48 = v27;
    *(&v48 + 1) = v26;
    sub_26C684E18(&v48, v46);
    v28 = v47;
    if (v47)
    {
      v29 = __swift_project_boxed_opaque_existential_1(v46, v47);
      v30 = *(v28 - 8);
      MEMORY[0x28223BE20](v29);
      v32 = v46 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v30 + 16))(v32);

      v33 = sub_26C6D8E38();
      (*(v30 + 8))(v32, v28);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
    }

    else
    {

      v33 = 0;
    }

    v34 = sub_26C6D89E8();
    [a1 encodeObject:v33 forKey:v34];
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  sub_26C677B60(&v48, &qword_2804A8950, &qword_26C6DAC50);
  v35 = (v1 + OBJC_IVAR___WFPrescriptionRecord_rightLensFactoryCalibrationData);
  v36 = *(v1 + OBJC_IVAR___WFPrescriptionRecord_rightLensFactoryCalibrationData + 8);
  if (v36)
  {
    v37 = *v35;
    *(&v49 + 1) = v17;
    *&v48 = v37;
    *(&v48 + 1) = v36;
    sub_26C684E18(&v48, v46);
    v38 = v47;
    if (v47)
    {
      v39 = __swift_project_boxed_opaque_existential_1(v46, v47);
      v40 = *(v38 - 8);
      MEMORY[0x28223BE20](v39);
      v42 = v46 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v40 + 16))(v42);

      v43 = sub_26C6D8E38();
      (*(v40 + 8))(v42, v38);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
    }

    else
    {

      v43 = 0;
    }

    v44 = sub_26C6D89E8();
    [a1 encodeObject:v43 forKey:v44];
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  return sub_26C677B60(&v48, &qword_2804A8950, &qword_26C6DAC50);
}

id PrescriptionRecord.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A8A40, &qword_26C6DAC58);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47 - v5;
  v7 = sub_26C6D87B8();
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  MEMORY[0x28223BE20](v7);
  v50 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR___WFPrescriptionRecord_version] = 0x3FF0000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8980, &qword_26C6DAC60);
  v10 = swift_allocObject();
  v53 = xmmword_26C6DA0F0;
  *(v10 + 16) = xmmword_26C6DA0F0;
  v11 = sub_26C6779D0(0, &qword_2804A8990, 0x277CCACA8);
  *(v10 + 32) = v11;
  sub_26C6D8C48();

  if (v58)
  {
    v12 = swift_dynamicCast();
    v13 = v55;
    v14 = v56;
    if (!v12)
    {
      v13 = 0;
      v14 = 0;
    }
  }

  else
  {
    sub_26C677B60(v57, &qword_2804A8950, &qword_26C6DAC50);
    v13 = 0;
    v14 = 0;
  }

  v15 = &v1[OBJC_IVAR___WFPrescriptionRecord_leftLensFactoryCalibrationData];
  *v15 = v13;
  v15[1] = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v53;
  *(v16 + 32) = v11;
  sub_26C6D8C48();

  if (v58)
  {
    v17 = swift_dynamicCast();
    v18 = v55;
    v19 = v56;
    if (!v17)
    {
      v18 = 0;
      v19 = 0;
    }
  }

  else
  {
    sub_26C677B60(v57, &qword_2804A8950, &qword_26C6DAC50);
    v18 = 0;
    v19 = 0;
  }

  v20 = &v1[OBJC_IVAR___WFPrescriptionRecord_rightLensFactoryCalibrationData];
  *v20 = v18;
  v20[1] = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v53;
  *(v21 + 32) = v11;
  sub_26C6D8C48();

  if (v58)
  {
    v22 = swift_dynamicCast();
    v23 = v55;
    v24 = v56;
    if (!v22)
    {
      v23 = 0;
      v24 = 0;
    }
  }

  else
  {
    sub_26C677B60(v57, &qword_2804A8950, &qword_26C6DAC50);
    v23 = 0;
    v24 = 0;
  }

  v25 = &v1[OBJC_IVAR___WFPrescriptionRecord_enrollmentName];
  *v25 = v23;
  v25[1] = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = v53;
  *(v26 + 32) = sub_26C6779D0(0, &qword_2804A89B0, 0x277CBEA90);
  sub_26C6D8C48();

  if (!v58)
  {
    sub_26C677B60(v57, &qword_2804A8950, &qword_26C6DAC50);
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    if (qword_2804A8590 != -1)
    {
      swift_once();
    }

    v39 = sub_26C6D8898();
    __swift_project_value_buffer(v39, qword_2804AD210);
    v40 = sub_26C6D8878();
    v41 = sub_26C6D8BA8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_26C66B000, v40, v41, "Failed to decode and retrieve accPayload from record. ", v42, 2u);
      MEMORY[0x26D6A7490](v42, -1, -1);
    }

    goto LABEL_30;
  }

  v27 = v55;
  v28 = v56;
  v29 = &v2[OBJC_IVAR___WFPrescriptionRecord_accPayload];
  *v29 = v55;
  v29[1] = v28;
  v48 = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = v53;
  *(v30 + 32) = sub_26C6779D0(0, &qword_2804A89A0, 0x277CBEAA8);
  *&v53 = v27;
  v49 = v28;
  sub_26C67ED2C(v27, v28);
  sub_26C6D8C48();

  if (v58)
  {
    v31 = v51;
    v32 = swift_dynamicCast();
    v33 = v52;
    (*(v52 + 56))(v6, v32 ^ 1u, 1, v31);
    if ((*(v33 + 48))(v6, 1, v31) != 1)
    {
      sub_26C678418(v53, v49);
      v34 = *(v33 + 32);
      v35 = v50;
      v34(v50, v6, v31);
      v34(&v2[OBJC_IVAR___WFPrescriptionRecord_enrollmentDate], v35, v31);
      v36 = type metadata accessor for PrescriptionRecord(0);
      v54.receiver = v2;
      v54.super_class = v36;
      v37 = objc_msgSendSuper2(&v54, sel_init);

      return v37;
    }
  }

  else
  {
    sub_26C677B60(v57, &qword_2804A8950, &qword_26C6DAC50);
    (*(v52 + 56))(v6, 1, 1, v51);
  }

  sub_26C677B60(v6, &unk_2804A8A40, &qword_26C6DAC58);
  if (qword_2804A8590 != -1)
  {
    swift_once();
  }

  v43 = sub_26C6D8898();
  __swift_project_value_buffer(v43, qword_2804AD210);
  v44 = sub_26C6D8878();
  v45 = sub_26C6D8BA8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_26C66B000, v44, v45, "Failed to decode and retrieve enrollmentDate from record. ", v46, 2u);
    MEMORY[0x26D6A7490](v46, -1, -1);
  }

  sub_26C678418(v53, v49);

  sub_26C678418(*v48, v48[1]);
LABEL_30:

  type metadata accessor for PrescriptionRecord(0);
  swift_deallocPartialClassInstance();
  return 0;
}

id PrescriptionRecord.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PrescriptionRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PrescriptionRecord(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26C68643C(uint64_t a1)
{
  result = sub_26C6D87B8();
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

uint64_t SetupTransferResponse.peerKey.getter()
{
  v1 = *v0;
  sub_26C67ED2C(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_26C6865A4()
{
  sub_26C6D8EE8();
  MEMORY[0x26D6A6DF0](0);
  return sub_26C6D8F08();
}

uint64_t sub_26C686610(uint64_t a1)
{
  sub_26C6D8EE8();
  MEMORY[0x26D6A6DF0](0);
  return sub_26C6D8F08();
}

uint64_t sub_26C686668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x79654B72656570 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26C6D8E48();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26C686708(uint64_t a1)
{
  v2 = sub_26C6868E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26C686744(uint64_t a1)
{
  v2 = sub_26C6868E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SetupTransferResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8AC0, &qword_26C6DACF0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C67ED2C(v7, v8);
  sub_26C6868E4();
  sub_26C6D8F38();
  v10 = v7;
  v11 = v8;
  sub_26C686938();
  sub_26C6D8E18();
  sub_26C678418(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_26C6868E4()
{
  result = qword_2804A8AC8;
  if (!qword_2804A8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8AC8);
  }

  return result;
}

unint64_t sub_26C686938()
{
  result = qword_2804A8AD0;
  if (!qword_2804A8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8AD0);
  }

  return result;
}

uint64_t SetupTransferResponse.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8AD8, &qword_26C6DACF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C6868E4();
  sub_26C6D8F28();
  if (!v2)
  {
    sub_26C686AFC();
    sub_26C6D8DE8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_26C686AFC()
{
  result = qword_2804A8AE0;
  if (!qword_2804A8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8AE0);
  }

  return result;
}

uint64_t RetrieveFileResponse.expectedFileName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RetrieveFileResponse.enrollmentAssetData.getter()
{
  v1 = *(v0 + 16);
  sub_26C67ED2C(v1, *(v0 + 24));
  return v1;
}

unint64_t sub_26C686BFC()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_26C686C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000026C6DF820 == a2 || (sub_26C6D8E48() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000026C6DF860 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_26C6D8E48();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_26C686D28(uint64_t a1)
{
  v2 = sub_26C686F3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26C686D64(uint64_t a1)
{
  v2 = sub_26C686F3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RetrieveFileResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8AE8, &qword_26C6DAD00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C686F3C();
  sub_26C6D8F38();
  LOBYTE(v14) = 0;
  v8 = v13;
  sub_26C6D8DF8();
  if (!v8)
  {
    v14 = v12;
    v15 = v11;
    v16 = 1;
    sub_26C67ED2C(v12, v11);
    sub_26C686938();
    sub_26C6D8E18();
    sub_26C678418(v14, v15);
  }

  return (*(v4 + 8))(v6, v3);
}