id ParticipantPresenceCoordinator.init()()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore;
  type metadata accessor for ParticipantPresenceStore();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = MEMORY[0x277D84F98];
  *(v3 + 112) = MEMORY[0x277D84F98];
  *(v3 + 120) = v4;
  *(v3 + 128) = v4;
  *(v3 + 136) = v4;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0xE000000000000000;
  *&v0[v2] = v3;
  v5 = OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore;
  type metadata accessor for ParticipantPresenceCoordinator.ConnectionManagerStore();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  v7 = MEMORY[0x277D84F90];
  *(v6 + 112) = 0;
  *(v6 + 120) = v7;
  *(v6 + 128) = 0;
  *(v6 + 136) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17WebBookmarksSwift30ParticipantPresenceCoordinatorC22ConnectionManagerStoreC06SharedI0VTt0g5Tf4g_n(v7);
  *(v6 + 144) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So7CKShareC5share_Si5counttTt0g5Tf4g_n(v7);
  *(v6 + 152) = 1;
  *&v0[v5] = v6;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So7CKShareC5share_Si5counttTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo7CKShareC5share_Si5counttGMd, &_ss18_DictionaryStorageCySSSo7CKShareC5share_Si5counttGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 16 * result);
      *v13 = v9;
      v13[1] = v8;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17WebBookmarksSwift30ParticipantPresenceCoordinatorC22ConnectionManagerStoreC06SharedI0VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17WebBookmarksSwift30ParticipantPresenceCoordinatorC22ConnectionManagerStoreC06SharedI0VGMd, &_ss18_DictionaryStorageCySS17WebBookmarksSwift30ParticipantPresenceCoordinatorC22ConnectionManagerStoreC06SharedI0VGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 8)
    {
      v21 = v1;
      v5 = *(i - 2);
      v6 = *(i - 1);
      v8 = *i;
      v7 = i[1];
      v9 = i[2];
      v10 = i[3];
      v12 = i[4];
      v11 = i[5];

      v13 = v7;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v15)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v3[6] + 16 * result);
      *v16 = v5;
      v16[1] = v6;
      v17 = (v3[7] + 48 * result);
      *v17 = v8;
      v17[1] = v13;
      v17[2] = v9;
      v17[3] = v10;
      v17[4] = v12;
      v17[5] = v11;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v3[2] = v20;
      v1 = v21 - 1;
      if (v21 == 1)
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

uint64_t outlined destroy of TaskPriority?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t @objc closure #1 in ParticipantPresenceCoordinator.activeParticipantsInTab(_:)()
{
  v1 = v0[3];
  v2 = v0[2];
  ParticipantPresenceStore.activeParticipantsInTab(_:)(v0[4], v0[5]);

  type metadata accessor for CKShareParticipant();
  lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type CKShareParticipant and conformance NSObject, type metadata accessor for CKShareParticipant, MEMORY[0x277D85378]);
  isa = Set._bridgeToObjectiveC()().super.isa;

  (v1)[2](v1, isa);

  _Block_release(v1);
  v4 = v0[1];

  return v4();
}

{
  v1 = *(*(v0 + 16) + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](@objc closure #1 in ParticipantPresenceCoordinator.activeParticipantsInTab(_:), v1, 0);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v4);
}

unint64_t type metadata accessor for CKShareParticipant()
{
  result = lazy cache variable for type metadata for CKShareParticipant;
  if (!lazy cache variable for type metadata for CKShareParticipant)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CKShareParticipant);
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_;

  return v6(a1);
}

uint64_t lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v6);
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return v7();
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return v6();
}

uint64_t partial apply for @objc closure #1 in ParticipantPresenceCoordinator.activeParticipantsInTab(_:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return @objc closure #1 in ParticipantPresenceCoordinator.activeParticipantsInTab(_:)(v2, v3, v4);
}

uint64_t @objc closure #1 in ParticipantPresenceCoordinator.activeParticipantsInTab(_:)(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[5] = v5;
  v6 = a3;

  return MEMORY[0x2822009F8](@objc closure #1 in ParticipantPresenceCoordinator.activeParticipantsInTab(_:), 0, 0);
}

uint64_t ParticipantPresenceStore.activeParticipantsInTab(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 136);
  v6 = *(v5 + 16);

  if (v6 && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v5 + 56) + 8 * v7);
  }

  else if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CKShareParticipantC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v9 = v11;
  }

  else
  {
    v9 = MEMORY[0x277D84FA0];
  }

  return v9;
}

uint64_t specialized closure #1 in CollaborationConnectionManager.startActivity()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t partial apply for closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:)(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:)(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = v10;
  v8[26] = v11;
  v8[23] = a7;
  v8[24] = a8;
  v8[21] = a5;
  v8[22] = a6;
  v8[20] = a4;
  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:), 0, 0);
}

uint64_t closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:)()
{
  v17 = v0;
  v1 = v0[21];
  if (v1 && (v2 = v0[23]) != 0)
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.tabGroup);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[22];
      v7 = v0[20];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136446466;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v1, &v16);
      *(v8 + 12) = 2082;
      *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v2, &v16);
      _os_log_impl(&dword_272D1B000, v4, v5, "Will move to tab with identifier %{public}s in shared tab group with identifier %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2743D7F00](v9, -1, -1);
      v10 = v8;
LABEL_11:
      MEMORY[0x2743D7F00](v10, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.tabGroup);
    v4 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_272D1B000, v4, v12, "Will leave all shared tab groups", v13, 2u);
      v10 = v13;
      goto LABEL_11;
    }
  }

  v14 = *(v0[24] + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);
  v0[27] = v14;

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:), v14, 0);
}

{
  v16 = v0;
  ParticipantPresenceStore.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:)(*(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 200), *(v0 + 208), v9);
  v1 = v9[0];
  v2 = v9[1];
  *(v0 + 224) = v9[0];
  *(v0 + 232) = v2;
  v3 = v10;
  v4 = v11;
  *(v0 + 240) = v10;
  *(v0 + 248) = v4;
  v5 = v12;
  v6 = v13;
  *(v0 + 256) = v12;
  *(v0 + 264) = v6;
  v7 = v14;
  *(v0 + 272) = v14;
  *(v0 + 280) = v15;
  *(v0 + 72) = v1;
  *(v0 + 80) = v2;
  *(v0 + 88) = v3;
  *(v0 + 96) = v4;
  *(v0 + 104) = v5;
  *(v0 + 112) = v6;
  *(v0 + 120) = v7;

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:), 0, 0);
}

{
  v64 = v0;
  v1 = v0[36];
  if (v1)
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v3 = v0[30];
    v2 = v0[31];
    v5 = v0[28];
    v4 = v0[29];
    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.tabGroup);

    outlined copy of PresenceUpdateMessage.Kind(v5, v4, v3, v2);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    outlined consume of PresenceUpdateMessage.Kind(v5, v4, v3, v2);

    if (os_log_type_enabled(v7, v8))
    {
      v10 = v0[34];
      v9 = v0[35];
      v12 = v0[32];
      v11 = v0[33];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v61 = v14;
      *v13 = 136446466;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v1, &v61);
      *(v13 + 12) = 2082;
      v62 = 8252;
      v63 = 0xE200000000000000;
      v0[19] = v12;
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743D7240](v15);

      MEMORY[0x2743D7240](8236, 0xE200000000000000);
      MEMORY[0x2743D7240](v11, v10);
      MEMORY[0x2743D7240](15904, 0xE200000000000000);
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v61);

      *(v13 + 14) = v16;
      _os_log_impl(&dword_272D1B000, v7, v8, "Will send shared connection message to leave shared tab group with identifier %{public}s, generation: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2743D7F00](v14, -1, -1);
      MEMORY[0x2743D7F00](v13, -1, -1);
    }

    v17 = *(v0[24] + OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore);
    v0[37] = v17;
    v18 = closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:);
  }

  else
  {
    v19 = v0[29];
    if (v19)
    {
      v20 = v0[31];
      v21 = one-time initialization token for tabGroup;

      v22 = v19;
      v23 = v20;
      if (v21 != -1)
      {
        swift_once();
        v23 = v0[31];
        v22 = v0[29];
      }

      v24 = v0[30];
      v25 = v0[28];
      v26 = type metadata accessor for Logger();
      v0[40] = __swift_project_value_buffer(v26, static Logger.tabGroup);
      outlined copy of PresenceUpdateMessage.Kind(v25, v22, v24, v23);

      outlined copy of PresenceUpdateMessage.Kind(v25, v22, v24, v23);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();

      v29 = os_log_type_enabled(v27, v28);
      v30 = v0[34];
      if (v29)
      {
        v57 = v0[32];
        v58 = v0[33];
        v60 = v28;
        v31 = v0[30];
        v32 = v0[31];
        v33 = v0[28];
        v34 = v0[29];
        v35 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v61 = v59;
        *v35 = 136446722;
        *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v19, &v61);
        *(v35 + 12) = 2082;

        outlined consume of PresenceUpdateMessage.Kind(v33, v34, v31, v32);

        outlined consume of PresenceUpdateMessage.Kind(v33, v34, v31, v32);

        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v20, &v61);

        *(v35 + 14) = v36;
        *(v35 + 22) = 2082;
        v62 = 8252;
        v63 = 0xE200000000000000;
        v0[17] = v57;
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743D7240](v37);

        MEMORY[0x2743D7240](8236, 0xE200000000000000);
        MEMORY[0x2743D7240](v58, v30);
        MEMORY[0x2743D7240](15904, 0xE200000000000000);
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v61);

        *(v35 + 24) = v38;
        _os_log_impl(&dword_272D1B000, v27, v60, "Will send shared connection message to join tab group identifier %{public}s in tab %{public}s, generation: %{public}s", v35, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2743D7F00](v59, -1, -1);
        MEMORY[0x2743D7F00](v35, -1, -1);
      }

      else
      {
        v53 = v0[30];
        v52 = v0[31];
        v55 = v0[28];
        v54 = v0[29];

        outlined consume of PresenceUpdateMessage.Kind(v55, v54, v53, v52);

        outlined consume of PresenceUpdateMessage.Kind(v55, v54, v53, v52);
      }

      v17 = *(v0[24] + OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore);
      v0[41] = v17;
      v18 = closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:);
    }

    else
    {
      if (one-time initialization token for tabGroup != -1)
      {
        swift_once();
      }

      v40 = v0[30];
      v39 = v0[31];
      v41 = v0[28];
      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.tabGroup);
      outlined copy of PresenceUpdateMessage.Kind(v41, 0, v40, v39);

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.info.getter();
      outlined consume of PresenceUpdateMessage.Kind(v41, 0, v40, v39);

      if (os_log_type_enabled(v43, v44))
      {
        v46 = v0[33];
        v45 = v0[34];
        v47 = v0[32];
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 136446210;
        v61 = v49;
        v62 = 8252;
        v63 = 0xE200000000000000;
        v0[18] = v47;
        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743D7240](v50);

        MEMORY[0x2743D7240](8236, 0xE200000000000000);
        MEMORY[0x2743D7240](v46, v45);
        MEMORY[0x2743D7240](15904, 0xE200000000000000);
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v61);

        *(v48 + 4) = v51;
        _os_log_impl(&dword_272D1B000, v43, v44, "Will send personal connection message to leave tab group, generation: %{public}s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v49);
        MEMORY[0x2743D7F00](v49, -1, -1);
        MEMORY[0x2743D7F00](v48, -1, -1);
      }

      v17 = *(v0[24] + OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore);
      v0[44] = v17;
      v18 = closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:);
    }
  }

  return MEMORY[0x2822009F8](v18, v17, 0);
}

{
  *(v0 + 360) = *(*(v0 + 352) + 112);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:), 0, 0);
}

{
  if (v0[45])
  {
    v1 = swift_task_alloc();
    v0[46] = v1;
    *v1 = v0;
    v1[1] = closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:);

    return specialized CollaborationConnectionManager.sendPresenceUpdateMessage(_:)((v0 + 9));
  }

  else
  {
    outlined consume of PresenceUpdateMessage.Kind(v0[28], v0[29], v0[30], v0[31]);

    v3 = v0[1];

    return v3();
  }
}

{
  v0[38] = ParticipantPresenceCoordinator.ConnectionManagerStore.sharedConnectionManager(forTabGroup:)(v0[35], v0[36]);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:), 0, 0);
}

{
  v51 = v0;
  if (*(v0 + 304))
  {
    v1 = *(v0 + 272);
    *(v0 + 16) = 0u;
    v2 = *(v0 + 256);
    *(v0 + 32) = 0u;
    *(v0 + 48) = v2;
    *(v0 + 64) = v1;

    v3 = swift_task_alloc();
    *(v0 + 312) = v3;
    *v3 = v0;
    v3[1] = closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:);

    return specialized CollaborationConnectionManager.sendPresenceUpdateMessage(_:)(v0 + 16);
  }

  else
  {
    v5 = *(v0 + 232);
    if (v5)
    {
      v6 = *(v0 + 248);
      v7 = one-time initialization token for tabGroup;

      v8 = v5;
      v9 = v6;
      if (v7 != -1)
      {
        swift_once();
        v9 = *(v0 + 248);
        v8 = *(v0 + 232);
      }

      v10 = *(v0 + 240);
      v11 = *(v0 + 224);
      v12 = type metadata accessor for Logger();
      *(v0 + 320) = __swift_project_value_buffer(v12, static Logger.tabGroup);
      outlined copy of PresenceUpdateMessage.Kind(v11, v8, v10, v9);

      outlined copy of PresenceUpdateMessage.Kind(v11, v8, v10, v9);

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.info.getter();

      v15 = os_log_type_enabled(v13, v14);
      v16 = *(v0 + 272);
      if (v15)
      {
        v44 = *(v0 + 256);
        v45 = *(v0 + 264);
        v47 = v14;
        v17 = *(v0 + 240);
        v18 = *(v0 + 248);
        v19 = *(v0 + 224);
        v20 = *(v0 + 232);
        v21 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v48 = v46;
        *v21 = 136446722;
        *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v5, &v48);
        *(v21 + 12) = 2082;

        outlined consume of PresenceUpdateMessage.Kind(v19, v20, v17, v18);

        outlined consume of PresenceUpdateMessage.Kind(v19, v20, v17, v18);

        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v6, &v48);

        *(v21 + 14) = v22;
        *(v21 + 22) = 2082;
        v49 = 8252;
        v50 = 0xE200000000000000;
        *(v0 + 136) = v44;
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743D7240](v23);

        MEMORY[0x2743D7240](8236, 0xE200000000000000);
        MEMORY[0x2743D7240](v45, v16);
        MEMORY[0x2743D7240](15904, 0xE200000000000000);
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v48);

        *(v21 + 24) = v24;
        _os_log_impl(&dword_272D1B000, v13, v47, "Will send shared connection message to join tab group identifier %{public}s in tab %{public}s, generation: %{public}s", v21, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2743D7F00](v46, -1, -1);
        MEMORY[0x2743D7F00](v21, -1, -1);
      }

      else
      {
        v41 = *(v0 + 240);
        v40 = *(v0 + 248);
        v43 = *(v0 + 224);
        v42 = *(v0 + 232);

        outlined consume of PresenceUpdateMessage.Kind(v43, v42, v41, v40);

        outlined consume of PresenceUpdateMessage.Kind(v43, v42, v41, v40);
      }

      v38 = *(*(v0 + 192) + OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore);
      *(v0 + 328) = v38;
      v39 = closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:);
    }

    else
    {
      if (one-time initialization token for tabGroup != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 240);
      v25 = *(v0 + 248);
      v27 = *(v0 + 224);
      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.tabGroup);
      outlined copy of PresenceUpdateMessage.Kind(v27, 0, v26, v25);

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.info.getter();
      outlined consume of PresenceUpdateMessage.Kind(v27, 0, v26, v25);

      if (os_log_type_enabled(v29, v30))
      {
        v32 = *(v0 + 264);
        v31 = *(v0 + 272);
        v33 = *(v0 + 256);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 136446210;
        v48 = v35;
        v49 = 8252;
        v50 = 0xE200000000000000;
        *(v0 + 144) = v33;
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743D7240](v36);

        MEMORY[0x2743D7240](8236, 0xE200000000000000);
        MEMORY[0x2743D7240](v32, v31);
        MEMORY[0x2743D7240](15904, 0xE200000000000000);
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v48);

        *(v34 + 4) = v37;
        _os_log_impl(&dword_272D1B000, v29, v30, "Will send personal connection message to leave tab group, generation: %{public}s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x2743D7F00](v35, -1, -1);
        MEMORY[0x2743D7F00](v34, -1, -1);
      }

      v38 = *(*(v0 + 192) + OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore);
      *(v0 + 352) = v38;
      v39 = closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:);
    }

    return MEMORY[0x2822009F8](v39, v38, 0);
  }
}

{

  outlined consume of PresenceUpdateMessage.Kind(0, 0, 0, 0);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:), 0, 0);
}

{
  v48 = v0;
  v1 = v0[29];
  if (v1)
  {
    v2 = v0[31];
    v3 = one-time initialization token for tabGroup;

    v4 = v1;
    v5 = v2;
    if (v3 != -1)
    {
      swift_once();
      v5 = v0[31];
      v4 = v0[29];
    }

    v6 = v0[30];
    v7 = v0[28];
    v8 = type metadata accessor for Logger();
    v0[40] = __swift_project_value_buffer(v8, static Logger.tabGroup);
    outlined copy of PresenceUpdateMessage.Kind(v7, v4, v6, v5);

    outlined copy of PresenceUpdateMessage.Kind(v7, v4, v6, v5);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[34];
    if (v11)
    {
      v41 = v0[32];
      v42 = v0[33];
      v44 = v10;
      v13 = v0[30];
      v14 = v0[31];
      v15 = v0[28];
      v16 = v0[29];
      v17 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v45 = v43;
      *v17 = 136446722;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v1, &v45);
      *(v17 + 12) = 2082;

      outlined consume of PresenceUpdateMessage.Kind(v15, v16, v13, v14);

      outlined consume of PresenceUpdateMessage.Kind(v15, v16, v13, v14);

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v2, &v45);

      *(v17 + 14) = v18;
      *(v17 + 22) = 2082;
      v46 = 8252;
      v47 = 0xE200000000000000;
      v0[17] = v41;
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743D7240](v19);

      MEMORY[0x2743D7240](8236, 0xE200000000000000);
      MEMORY[0x2743D7240](v42, v12);
      MEMORY[0x2743D7240](15904, 0xE200000000000000);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v45);

      *(v17 + 24) = v20;
      _os_log_impl(&dword_272D1B000, v9, v44, "Will send shared connection message to join tab group identifier %{public}s in tab %{public}s, generation: %{public}s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2743D7F00](v43, -1, -1);
      MEMORY[0x2743D7F00](v17, -1, -1);
    }

    else
    {
      v37 = v0[30];
      v36 = v0[31];
      v39 = v0[28];
      v38 = v0[29];

      outlined consume of PresenceUpdateMessage.Kind(v39, v38, v37, v36);

      outlined consume of PresenceUpdateMessage.Kind(v39, v38, v37, v36);
    }

    v34 = *(v0[24] + OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore);
    v0[41] = v34;
    v35 = closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:);
  }

  else
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v22 = v0[30];
    v21 = v0[31];
    v23 = v0[28];
    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.tabGroup);
    outlined copy of PresenceUpdateMessage.Kind(v23, 0, v22, v21);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    outlined consume of PresenceUpdateMessage.Kind(v23, 0, v22, v21);

    if (os_log_type_enabled(v25, v26))
    {
      v28 = v0[33];
      v27 = v0[34];
      v29 = v0[32];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 136446210;
      v45 = v31;
      v46 = 8252;
      v47 = 0xE200000000000000;
      v0[18] = v29;
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743D7240](v32);

      MEMORY[0x2743D7240](8236, 0xE200000000000000);
      MEMORY[0x2743D7240](v28, v27);
      MEMORY[0x2743D7240](15904, 0xE200000000000000);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v45);

      *(v30 + 4) = v33;
      _os_log_impl(&dword_272D1B000, v25, v26, "Will send personal connection message to leave tab group, generation: %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x2743D7F00](v31, -1, -1);
      MEMORY[0x2743D7F00](v30, -1, -1);
    }

    v34 = *(v0[24] + OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore);
    v0[44] = v34;
    v35 = closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:);
  }

  return MEMORY[0x2822009F8](v35, v34, 0);
}

{
  v0[42] = ParticipantPresenceCoordinator.ConnectionManagerStore.sharedConnectionManager(forTabGroup:)(v0[28], v0[29]);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:), 0, 0);
}

{
  v31 = v0;
  if (v0[42])
  {
    v1 = swift_task_alloc();
    v0[43] = v1;
    *v1 = v0;
    v1[1] = closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:);

    return specialized CollaborationConnectionManager.sendPresenceUpdateMessage(_:)((v0 + 9));
  }

  else
  {
    v4 = v0[30];
    v3 = v0[31];
    v6 = v0[28];
    v5 = v0[29];
    outlined copy of PresenceUpdateMessage.Kind(v6, v5, v4, v3);

    outlined copy of PresenceUpdateMessage.Kind(v6, v5, v4, v3);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[34];
    if (v9)
    {
      v25 = v0[32];
      v26 = v0[33];
      v12 = v0[30];
      v11 = v0[31];
      v13 = v0[28];
      v14 = v0[29];
      v15 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      *v15 = 136446722;
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v28);

      *(v15 + 4) = v16;
      *(v15 + 12) = 2082;

      outlined consume of PresenceUpdateMessage.Kind(v13, v14, v12, v11);

      outlined consume of PresenceUpdateMessage.Kind(v13, v14, v12, v11);

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v28);

      *(v15 + 14) = v17;
      *(v15 + 22) = 2082;
      v29 = 8252;
      v30 = 0xE200000000000000;
      v0[16] = v25;
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743D7240](v18);

      MEMORY[0x2743D7240](8236, 0xE200000000000000);
      MEMORY[0x2743D7240](v26, v10);
      MEMORY[0x2743D7240](15904, 0xE200000000000000);
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v28);

      *(v15 + 24) = v19;
      _os_log_impl(&dword_272D1B000, v7, v8, "Will send personal connection message to join tab group identifier %{public}s in tab %{public}s, generation: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2743D7F00](v27, -1, -1);
      MEMORY[0x2743D7F00](v15, -1, -1);
    }

    else
    {
      v21 = v0[30];
      v20 = v0[31];
      v23 = v0[28];
      v22 = v0[29];

      outlined consume of PresenceUpdateMessage.Kind(v23, v22, v21, v20);

      outlined consume of PresenceUpdateMessage.Kind(v23, v22, v21, v20);
    }

    v24 = *(v0[24] + OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore);
    v0[44] = v24;

    return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:), v24, 0);
  }
}

{

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:), 0, 0);
}

{
  v29 = v0;
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  outlined copy of PresenceUpdateMessage.Kind(v4, v3, v2, v1);

  outlined copy of PresenceUpdateMessage.Kind(v4, v3, v2, v1);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[34];
    v8 = v0[31];
    v23 = v0[32];
    v24 = v0[33];
    v10 = v0[29];
    v9 = v0[30];
    v11 = v0[28];
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v12 = 136446722;
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v26);

    *(v12 + 4) = v13;
    *(v12 + 12) = 2082;

    outlined consume of PresenceUpdateMessage.Kind(v11, v10, v9, v8);

    outlined consume of PresenceUpdateMessage.Kind(v11, v10, v9, v8);

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v26);

    *(v12 + 14) = v14;
    *(v12 + 22) = 2082;
    v27 = 8252;
    v28 = 0xE200000000000000;
    v0[16] = v23;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743D7240](v15);

    MEMORY[0x2743D7240](8236, 0xE200000000000000);
    MEMORY[0x2743D7240](v24, v7);
    MEMORY[0x2743D7240](15904, 0xE200000000000000);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v26);

    *(v12 + 24) = v16;
    _os_log_impl(&dword_272D1B000, v5, v6, "Will send personal connection message to join tab group identifier %{public}s in tab %{public}s, generation: %{public}s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2743D7F00](v25, -1, -1);
    MEMORY[0x2743D7F00](v12, -1, -1);
  }

  else
  {
    v18 = v0[30];
    v17 = v0[31];
    v20 = v0[28];
    v19 = v0[29];

    outlined consume of PresenceUpdateMessage.Kind(v20, v19, v18, v17);

    outlined consume of PresenceUpdateMessage.Kind(v20, v19, v18, v17);
  }

  v21 = *(v0[24] + OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore);
  v0[44] = v21;

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:), v21, 0);
}

{
  v1 = *v0;
  v4 = *v0;

  outlined consume of PresenceUpdateMessage.Kind(v1[28], v1[29], v1[30], v1[31]);

  v2 = v4[1];

  return v2();
}

uint64_t one-time initialization function for tabGroup()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.tabGroup);
  __swift_project_value_buffer(v0, static Logger.tabGroup);
  return Logger.init(subsystem:category:)();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t ParticipantPresenceStore.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = v7[18];
  v10 = v7[22];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (!v11)
  {
    v13 = v7[19];
    v14 = v7[20];
    v15 = v7[21];
    if (a4 && a2)
    {
      v7[18] = a3;
      v7[19] = a4;
      v7[20] = result;
      v7[21] = a2;
      v7[22] = v12;
      v7[23] = a5;
      v7[24] = a6;
      outlined copy of PresenceUpdateMessage.Kind(v9, v13, v14, v15);
    }

    else
    {
      *(v7 + 9) = 0u;
      *(v7 + 10) = 0u;
      v7[22] = v12;
      v7[23] = a5;
      v7[24] = a6;
      outlined copy of PresenceUpdateMessage.Kind(v9, v13, v14, v15);
    }

    outlined consume of PresenceUpdateMessage.Kind(v9, v13, v14, v15);

    if (v13)
    {

      outlined consume of PresenceUpdateMessage.Kind(v9, v13, v14, v15);

      v16 = v7[18];
      v17 = v7[19];
      if (v17)
      {

        if (v9 == v16 && v13 == v17)
        {

LABEL_13:

          v16 = v7[18];
          v17 = v7[19];
          v20 = *(v7 + 10);
          v21 = *(v7 + 11);
          v19 = v7[24];
          outlined copy of PresenceUpdateMessage.Kind(v16, v17, v20, *(&v20 + 1));
          v9 = 0;
          v13 = 0;
LABEL_16:

          *a7 = v16;
          *(a7 + 8) = v17;
          *(a7 + 16) = v20;
          *(a7 + 32) = v21;
          *(a7 + 48) = v19;
          *(a7 + 56) = v9;
          *(a7 + 64) = v13;
          return result;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {
          goto LABEL_13;
        }

        v16 = v7[18];
        v17 = v7[19];
      }

      v20 = *(v7 + 10);
      v21 = *(v7 + 11);
      v19 = v7[24];
      outlined copy of PresenceUpdateMessage.Kind(v16, v17, v20, *(&v20 + 1));
      goto LABEL_16;
    }

    outlined consume of PresenceUpdateMessage.Kind(v9, 0, v14, v15);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void outlined copy of PresenceUpdateMessage.Kind(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void outlined consume of PresenceUpdateMessage.Kind(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
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
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_272D1F2A0@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_272D1F35C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_272D1F3B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_272D1F400()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_272D1F458()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_272D1F4D8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_272D1F514()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_272D1F60C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = specialized CKShareGroupSessionProvider.id.getter();
  a1[1] = v2;
}

uint64_t sub_272D1F64C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CKShareGroupSessionProvider.id.setter(v1, v2);
}

__n128 sub_272D1F698(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_272D1F758@<X0>(void *a1@<X8>)
{
  v2 = specialized CKShareGroupSessionProvider.share.getter();
  *a1 = v2;

  return v2;
}

void sub_272D1F794(id *a1)
{
  v1 = *a1;
  specialized CKShareGroupSessionProvider.share.setter(v1);
}

uint64_t AsyncBufferedQueue.__allocating_init(bufferingPolicy:)(uint64_t a1)
{
  swift_allocObject();
  v2 = specialized AsyncBufferedQueue.init(bufferingPolicy:)(a1);
  v3 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

uint64_t AsyncBufferedQueue.init(bufferingPolicy:)(uint64_t a1)
{
  v2 = specialized AsyncBufferedQueue.init(bufferingPolicy:)(a1);
  v3 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

uint64_t closure #1 in AsyncBufferedQueue.init(bufferingPolicy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AsyncStream.Continuation();
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 8))(a2, v6);
  v9 = *(v5 - 8);
  (*(v9 + 16))(a2, a1, v5);
  v7 = *(v9 + 56);

  return v7(a2, 0, 1, v5);
}

uint64_t AsyncBufferedQueue.enqueue(_:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1, a1);
  (*(v1 + 16))(&v4 - v2);
  type metadata accessor for AsyncStream.Continuation();
  return AsyncStream.Continuation.yield(_:)();
}

uint64_t AsyncBufferedQueue.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for AsyncStream.Continuation();
  AsyncStream.Continuation.finish()();
  (*(*(v2 - 8) + 8))(v1 + *(*v1 + 88), v2);
  v3 = *(*v0 + 96);
  v4 = type metadata accessor for AsyncStream();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  return v1;
}

uint64_t AsyncBufferedQueue.__deallocating_deinit()
{
  AsyncBufferedQueue.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance AsyncBufferedQueue<A>()
{
  AsyncBufferedQueue.makeAsyncIterator()();
}

uint64_t specialized AsyncBufferedQueue.init(bufferingPolicy:)(uint64_t a1)
{
  v26 = a1;
  v2 = *(*v1 + 80);
  v24 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v4);
  v22 = &v21 - v5;
  v25 = type metadata accessor for AsyncStream();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for AsyncStream.Continuation();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v21 - v17;
  v19 = *(v9 - 8);
  (*(v19 + 56))(&v21 - v17, 1, 1, v9);
  (*(v3 + 16))(v22, v26, v24);
  v27 = v2;
  v28 = v18;
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v23 + 32))(v1 + *(*v1 + 96), v8, v25);
  (*(v11 + 16))(v15, v18, v10);
  result = (*(v19 + 48))(v15, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v19 + 32))(v1 + *(*v1 + 88), v15, v9);
    (*(v11 + 8))(v18, v10);
    return v1;
  }

  return result;
}

{
  v23 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyShy15GroupActivities11ParticipantVG__GMd, &_sScS12ContinuationV15BufferingPolicyOyShy15GroupActivities11ParticipantVG__GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - v5;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyShy15GroupActivities11ParticipantVGGMd, &_sScSyShy15GroupActivities11ParticipantVGGMR);
  v7 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GSgMd, &_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GSgMR);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v22 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GMd, &_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GMR);
  v20 = *(v19 - 8);
  (*(v20 + 56))(v18, 1, 1, v19);
  (*(v3 + 16))(v6, v23, v2);
  v24 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15GroupActivities11ParticipantVGMd, &_sShy15GroupActivities11ParticipantVGMR);
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v7 + 32))(v1 + *(*v1 + 96), v10, v22);
  outlined init with copy of TaskPriority?(v18, v15, &_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GSgMd, &_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GSgMR);
  result = (*(v20 + 48))(v15, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 8))(v23, v2);
    (*(v20 + 32))(v1 + *(*v1 + 88), v15, v19);
    outlined destroy of TaskPriority?(v18, &_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GSgMd, &_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GSgMR);
    return v1;
  }

  return result;
}

{
  v23 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMd, &_sScS12ContinuationV15BufferingPolicyOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - v5;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtGMd, &_sScSy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtGMR);
  v7 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GSgMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GSgMR);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v22 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMR);
  v20 = *(v19 - 8);
  (*(v20 + 56))(v18, 1, 1, v19);
  (*(v3 + 16))(v6, v23, v2);
  v24 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v7 + 32))(v1 + *(*v1 + 96), v10, v22);
  outlined init with copy of TaskPriority?(v18, v15, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GSgMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GSgMR);
  result = (*(v20 + 48))(v15, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 8))(v23, v2);
    (*(v20 + 32))(v1 + *(*v1 + 88), v15, v19);
    outlined destroy of TaskPriority?(v18, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GSgMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GSgMR);
    return v1;
  }

  return result;
}

{
  v26 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy17WebBookmarksSwift21PresenceUpdateMessageV__GMd, &_sScS12ContinuationV15BufferingPolicyOy17WebBookmarksSwift21PresenceUpdateMessageV__GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v23 - v5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17WebBookmarksSwift21PresenceUpdateMessageVGMd, &_sScSy17WebBookmarksSwift21PresenceUpdateMessageVGMR);
  v7 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GSgMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GSgMR);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v23 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GMR);
  v20 = *(v19 - 8);
  (*(v20 + 56))(v18, 1, 1, v19);
  v21 = *(v3 + 16);
  v24 = v2;
  v21(v6, v26, v2);
  v27 = v18;
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v7 + 32))(v1 + *(*v1 + 96), v10, v25);
  outlined init with copy of TaskPriority?(v18, v15, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GSgMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GSgMR);
  result = (*(v20 + 48))(v15, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 8))(v26, v24);
    (*(v20 + 32))(v1 + *(*v1 + 88), v15, v19);
    outlined destroy of TaskPriority?(v18, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GSgMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GSgMR);
    return v1;
  }

  return result;
}

uint64_t type metadata completion function for AsyncBufferedQueue(uint64_t a1)
{
  result = type metadata accessor for AsyncStream.Continuation();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AsyncStream();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!lazy cache variable for type metadata for os_unfair_lock_s)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for os_unfair_lock_s);
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CKShareCollaborationActivity.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x2743D77C0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CKShareCollaborationActivity.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x2743D77C0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CKShareCollaborationActivity.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CKShareCollaborationActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CKShareCollaborationActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance CKShareCollaborationActivity@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17WebBookmarksSwift28CKShareCollaborationActivityV10CodingKeys33_BDCC217CEB0DF725B2BFAD583F8618F3LLOGMd, &_ss22KeyedDecodingContainerVy17WebBookmarksSwift28CKShareCollaborationActivityV10CodingKeys33_BDCC217CEB0DF725B2BFAD583F8618F3LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance CKShareCollaborationActivity(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17WebBookmarksSwift28CKShareCollaborationActivityV10CodingKeys33_BDCC217CEB0DF725B2BFAD583F8618F3LLOGMd, &_ss22KeyedEncodingContainerVy17WebBookmarksSwift28CKShareCollaborationActivityV10CodingKeys33_BDCC217CEB0DF725B2BFAD583F8618F3LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for GroupActivity.metadata.getter in conformance CKShareCollaborationActivity()
{
  type metadata accessor for GroupActivityMetadata.ActivityType();
  swift_task_alloc();
  GroupActivityMetadata.init()();
  static GroupActivityMetadata.ActivityType.collaboration.getter();
  GroupActivityMetadata.type.setter();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for Identifiable.id.getter in conformance CKShareCollaborationActivity@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CKShareCollaborationActivity()
{
  v1 = *v0;

  return v1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CKShareCollaborationActivity(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CKShareCollaborationActivity(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity()
{
  result = lazy protocol witness table cache variable for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity;
  if (!lazy protocol witness table cache variable for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity;
  if (!lazy protocol witness table cache variable for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity;
  if (!lazy protocol witness table cache variable for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity;
  if (!lazy protocol witness table cache variable for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CKShareCollaborationActivity.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CKShareCollaborationActivity.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void type metadata completion function for CollaborationConnectionManager(void *a1)
{
  type metadata accessor for FastSyncStateMachine(319, a1[10], a1[11], a1[14]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Participant?(319);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t one-time initialization function for joinLeaveSessionQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v15 = *(v0 - 8);
  v16 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v4, v5);
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v14 = "participantUpdateQueues";
  (*(v9 + 104))(v12, *MEMORY[0x277D851B8], v8);
  static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v12, v8);
  static DispatchQoS.unspecified.getter();
  v17 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v15 + 104))(v3, *MEMORY[0x277D85260], v16);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  joinLeaveSessionQueue = result;
  return result;
}

uint64_t CollaborationConnectionManager.deinit()
{
  v1 = *(*v0 + 136);
  v2 = type metadata accessor for FastSyncStateMachine(0, *(*v0 + 80), *(*v0 + 88), *(*v0 + 112));
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  outlined destroy of Participant?(v0 + *(*v0 + 160));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CollaborationConnectionManager.__deallocating_deinit()
{
  CollaborationConnectionManager.deinit();

  return MEMORY[0x282200960](v0);
}

void type metadata accessor for Participant?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Participant?)
  {
    type metadata accessor for Participant();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Participant?);
    }
  }
}

uint64_t type metadata instantiation function for CollaborationConnectionManager.WeakContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for CollaborationConnectionManager.WeakContainer(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CollaborationConnectionManager.WeakContainer(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t outlined destroy of Participant?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
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

uint64_t type metadata completion function for FastSyncStateMachine(void *a1)
{
  result = type metadata accessor for FastSyncStateMachine.State(319, a1[2], a1[3], a1[4]);
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ()();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FastSyncStateMachine(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 24) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 24) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *storeEnumTagSinglePayload for FastSyncStateMachine(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((v9 + ((v8 + 24) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 24) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 24] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v20 = a2 & 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          *v20 = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 24) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 24) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 24) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

uint64_t type metadata instantiation function for FastSyncStateMachine.State(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_17WebBookmarksSwift20FastSyncStateMachineV0F0Oyxq__G(uint64_t a1)
{
  v1 = *(a1 + 16) >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FastSyncStateMachine.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 24))
  {
    return (*a1 + 123);
  }

  v3 = (((*(a1 + 16) >> 57) >> 4) | (8 * ((*(a1 + 16) >> 57) & 8 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for FastSyncStateMachine.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for FastSyncStateMachine.State(uint64_t result, uint64_t a2)
{
  if (a2 < 5)
  {
    *(result + 16) = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 5);
    *(result + 8) = xmmword_272D66830;
  }

  return result;
}

uint64_t FastSyncStateMachine.State.description.getter(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3 >> 61;
  if ((a3 >> 61) > 2)
  {
    if (v5 == 3)
    {
      _StringGuts.grow(_:)(63);
      MEMORY[0x2743D7240](0xD00000000000002ALL, 0x8000000272D68290);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      MEMORY[0x2743D7240](0x7473202020200A3BLL, 0xEF20676E69747261);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v8 = 10506;
      v9 = 0xE200000000000000;
      goto LABEL_10;
    }

    if (v5 != 4)
    {
      return 1701602409;
    }

    _StringGuts.grow(_:)(27);
    MEMORY[0x2743D7240](0x46676E696E696F6ALL, 0xEE002864656C6961);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x2743D7240](0x3A726F727265202CLL, 0xE800000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();
  }

  else
  {
    if (v5)
    {
      v6 = 0x28746E6573657270;
      v7 = 0xE800000000000000;
    }

    else
    {
      v6 = 0x676E697472617473;
      v7 = 0xE900000000000028;
    }

    MEMORY[0x2743D7240](v6, v7);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
  }

  v8 = 41;
  v9 = 0xE100000000000000;
LABEL_10:
  MEMORY[0x2743D7240](v8, v9);
  return 0;
}

void *GroupSessionMessengerController.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t GroupSessionMessengerController.__deallocating_deinit()
{
  GroupSessionMessengerController.deinit();

  return MEMORY[0x282200960](v0);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ParticipantHandleMap.ParticipantKind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    CKShareParticipant.participantIdentifier.getter();
    if (v2)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance ParticipantHandleMap.ParticipantKind(uint64_t a1)
{
  if (*v1)
  {
    CKShareParticipant.participantIdentifier.getter();
    if (v2)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {

    String.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParticipantHandleMap.ParticipantKind(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    CKShareParticipant.participantIdentifier.getter();
    if (v3)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t CKShareParticipant.handles.getter()
{
  v1 = [v0 userIdentity];
  v2 = [v1 lookupInfo];

  result = MEMORY[0x277D84FA0];
  if (v2)
  {
    v29 = MEMORY[0x277D84FA0];
    v4 = [v2 emailAddress];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_opt_self() normalizedEmailAddressHandleForValue_];

      if (v6)
      {
        v7 = [v6 normalizedValue];
        if (v7)
        {
          v8 = v7;
          v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v11 = v10;

          specialized Set._Variant.insert(_:)(&v28, v9, v11);
        }

        v12 = [v6 value];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        specialized Set._Variant.insert(_:)(&v28, v13, v15);
      }
    }

    v16 = [v2 phoneNumber];
    if (v16 && (v17 = v16, v18 = [objc_opt_self() normalizedPhoneNumberHandleForValue:v16 isoCountryCode:0], v17, v18))
    {
      v19 = [v18 normalizedValue];
      if (v19)
      {
        v20 = v19;
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        specialized Set._Variant.insert(_:)(&v28, v21, v23);
      }

      v24 = [v18 value];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      specialized Set._Variant.insert(_:)(&v28, v25, v27);
    }

    else
    {
    }

    return v29;
  }

  return result;
}

uint64_t ParticipantHandleMap.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t getEnumTagSinglePayload for ParticipantHandleMap.ParticipantKind(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ParticipantHandleMap.ParticipantKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for ParticipantHandleMap.ParticipantKind(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for ParticipantHandleMap.ParticipantKind(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type ParticipantHandleMap.ParticipantKind and conformance ParticipantHandleMap.ParticipantKind()
{
  result = lazy protocol witness table cache variable for type ParticipantHandleMap.ParticipantKind and conformance ParticipantHandleMap.ParticipantKind;
  if (!lazy protocol witness table cache variable for type ParticipantHandleMap.ParticipantKind and conformance ParticipantHandleMap.ParticipantKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantHandleMap.ParticipantKind and conformance ParticipantHandleMap.ParticipantKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticipantHandleMap.ParticipantKind and conformance ParticipantHandleMap.ParticipantKind;
  if (!lazy protocol witness table cache variable for type ParticipantHandleMap.ParticipantKind and conformance ParticipantHandleMap.ParticipantKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantHandleMap.ParticipantKind and conformance ParticipantHandleMap.ParticipantKind);
  }

  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAC34PersonalDeviceCoordinationActivityV15GroupActivities0sW15SessionProviderCyAJGAC21PresenceUpdateMessageV_AC18AsyncBufferedQueueCyShyAK11ParticipantVGGGGMd, &_ss23_ContiguousArrayStorageCy17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAC34PersonalDeviceCoordinationActivityV15GroupActivities0sW15SessionProviderCyAJGAC21PresenceUpdateMessageV_AC18AsyncBufferedQueueCyShyAK11ParticipantVGGGGMR, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA34PersonalDeviceCoordinationActivityV15GroupActivities0pT15SessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShyAI11ParticipantVGGGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA34PersonalDeviceCoordinationActivityV15GroupActivities0pT15SessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShyAI11ParticipantVGGGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAC07CKShareG8ActivityVAC0S20GroupSessionProviderCyAJGAC21PresenceUpdateMessageV_AC18AsyncBufferedQueueCyShy0U10Activities11ParticipantVGGGGMd, &_ss23_ContiguousArrayStorageCy17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAC07CKShareG8ActivityVAC0S20GroupSessionProviderCyAJGAC21PresenceUpdateMessageV_AC18AsyncBufferedQueueCyShy0U10Activities11ParticipantVGGGGMR, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA07CKShareD8ActivityVAA0P20GroupSessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShy0R10Activities11ParticipantVGGGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA07CKShareD8ActivityVAA0P20GroupSessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShy0R10Activities11ParticipantVGGGMR);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySS_17WebBookmarksSwift20ParticipantHandleMapC0G4KindOtGGMd, &_ss23_ContiguousArrayStorageCySaySS_17WebBookmarksSwift20ParticipantHandleMapC0G4KindOtGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySS_17WebBookmarksSwift20ParticipantHandleMapC0D4KindOtGMd, &_sSaySS_17WebBookmarksSwift20ParticipantHandleMapC0D4KindOtGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_17WebBookmarksSwift20ParticipantHandleMapC0G4KindOtGMd, &_ss23_ContiguousArrayStorageCySS_17WebBookmarksSwift20ParticipantHandleMapC0G4KindOtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_17WebBookmarksSwift20ParticipantHandleMapC0D4KindOtMd, &_sSS_17WebBookmarksSwift20ParticipantHandleMapC0D4KindOtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15GroupActivities17AddressableMemberVGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities17AddressableMemberVGMR);
  v10 = *(type metadata accessor for AddressableMember() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for AddressableMember() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 < a4 || v16 + 4 >= &a4[v14 + 4])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v16 != a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = *a3;
  v9 = v7;

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
  v12 = v8[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v8[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v4 & 1);
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  specialized _NativeDictionary.copy()();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v6;
  v22[1] = v5;
  *(v21[7] + 8 * v10) = v7;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x2743D7240](0xD00000000000001BLL, 0x8000000272D683B0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x2743D7240](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v4 = (a1 + 9);
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v25 = *v4;
      v26 = *a3;
      v9 = *v4;

      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, 1);
        v27 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v6;
      v34[1] = v5;
      *(v33[7] + 8 * v27) = v25;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v33[2] = v36;
      v4 += 3;
      if (v37 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, v5 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  specialized _NativeDictionary.copy()();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x2743D7240](0xD00000000000001BLL, 0x8000000272D683B0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x2743D7240](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;

      v10 = v27;
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, 1);
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
        if ((v17 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v29) = v10;
      v37 = v35[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

BOOL specialized static ParticipantHandleMap.ParticipantKind.== infix(_:_:)(void *a1, void *a2)
{
  if (a1)
  {
    v4 = a1;
    CKShareParticipant.participantIdentifier.getter();
    v6 = v5;

    if (!v6)
    {
      return 0;
    }

    if (!a2)
    {
      return 0;
    }

LABEL_6:
    v7 = a2;
    CKShareParticipant.participantIdentifier.getter();
    v9 = v8;

    if (!v9)
    {
      return 0;
    }

    if (!a1)
    {
      return 0;
    }

    v10 = CKShareParticipant.participantIdentifier.getter();
    v12 = v11;
    v13 = CKShareParticipant.participantIdentifier.getter();
    if (v12)
    {
      if (v14)
      {
        if (v10 == v13 && v12 == v14)
        {

          return 1;
        }

        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        return (v16 & 1) != 0;
      }
    }

    else if (!v14)
    {
      return 1;
    }

    return 0;
  }

  if (a2)
  {
    goto LABEL_6;
  }

  return 1;
}

id _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_SS_17WebBookmarksSwift20ParticipantHandleMapC0G4KindOts5NeverOTg504_s17de7Swift20ghi76C09handlesToD13KindsForShare33_DC6DDEA4C0316922E19757898A9692F2LLySDySSAC0D4J52OGSo7CKShareCKFZSaySS_AGtGSo0sD0CXEfU0_SS_AGtSSXEfU_AKTf1cn_nTf4ng_n(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v4 = a1;
  v34 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v34;
  v5 = v4 + 56;
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v26 = v4 + 64;
  v9 = a2;
  v28 = v2;
  v29 = v4 + 56;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
  {
    v12 = v7 >> 6;
    if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v30 = v8;
    v31 = *(v4 + 36);
    v13 = (*(v4 + 48) + 16 * v7);
    v14 = v13[1];
    v15 = v4;
    v16 = *(v34 + 16);
    v17 = *(v34 + 24);
    v32 = *v13;
    v33 = v16 + 1;

    result = v9;
    if (v16 >= v17 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v33, 1);
    }

    *(v34 + 16) = v33;
    v18 = (v34 + 24 * v16);
    v18[4] = v32;
    v18[5] = v14;
    v18[6] = v9;
    v10 = 1 << *(v15 + 32);
    if (v7 >= v10)
    {
      goto LABEL_22;
    }

    v5 = v29;
    v19 = *(v29 + 8 * v12);
    if ((v19 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    v4 = v15;
    if (v31 != *(v15 + 36))
    {
      goto LABEL_24;
    }

    v20 = v19 & (-2 << (v7 & 0x3F));
    if (v20)
    {
      v10 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v11 = v28;
    }

    else
    {
      v21 = v12 << 6;
      v22 = v12 + 1;
      v23 = (v26 + 8 * v12);
      v11 = v28;
      while (v22 < (v10 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = outlined consume of Set<String>.Index._Variant(v7, v31, 0);
          v9 = a2;
          v10 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<String>.Index._Variant(v7, v31, 0);
      v9 = a2;
    }

LABEL_4:
    v8 = v30 + 1;
    v7 = v10;
    if (v30 + 1 == v11)
    {
      return v3;
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

unint64_t specialized static ParticipantHandleMap.handlesToParticipantKindsForShare(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = [a1 currentUserParticipant];
  if (!v4)
  {
    if (one-time initialization token for tabGroup == -1)
    {
LABEL_21:
      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logger.tabGroup);
      v21 = v3;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v63 = v25;
        *v24 = 136315138;
        v26 = [v21 recordID];
        v27 = [v26 ckShortDescription];

        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v63);

        *(v24 + 4) = v31;
        _os_log_impl(&dword_272D1B000, v22, v23, "Share %s does not have a currentUserParticipant", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x2743D7F00](v25, -1, -1);
        MEMORY[0x2743D7F00](v24, -1, -1);
      }

      lazy protocol witness table accessor for type ParticipantHandleMap.Errors and conformance ParticipantHandleMap.Errors();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_73:
    swift_once();
    goto LABEL_21;
  }

  v5 = [v3 participants];
  type metadata accessor for CKShareParticipant();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v63 = MEMORY[0x277D84F90];
  v7 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
LABEL_63:
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v62 = v2;
  if (v8)
  {
    v9 = 0;
    v2 = v6 & 0xC000000000000001;
    v60 = v6 & 0xC000000000000001;
    v61 = MEMORY[0x277D84F90];
    v10 = 0x279E7D000uLL;
    while (2)
    {
      v11 = v9;
      while (1)
      {
        if (v2)
        {
          v12 = MEMORY[0x2743D7610](v11, v6);
        }

        else
        {
          if (v11 >= *(v7 + 16))
          {
            goto LABEL_57;
          }

          v12 = *(v6 + 8 * v11 + 32);
        }

        v13 = v12;
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if ([v12 *(v10 + 2456)] == 2)
        {
          v14 = v8;
          v15 = v6;
          v16 = v7;
          v17 = v10;
          v18 = [v13 userIdentity];
          v19 = [v18 userRecordID];

          v10 = v17;
          v7 = v16;
          v6 = v15;
          v8 = v14;
          v2 = v60;
          if (v19)
          {
            break;
          }
        }

        ++v11;
        if (v9 == v8)
        {
          goto LABEL_25;
        }
      }

      MEMORY[0x2743D7260]();
      if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v61 = v63;
      if (v9 != v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v61 = MEMORY[0x277D84F90];
  }

LABEL_25:

  v33 = v61;
  if (!(v61 >> 62))
  {
    v34 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_27;
    }

LABEL_65:

    v6 = MEMORY[0x277D84F90];
    v2 = *(MEMORY[0x277D84F90] + 16);
    if (v2)
    {
LABEL_39:
      v48 = 0;
      v49 = MEMORY[0x277D84F90];
      v7 = v6 + 32;
      while (1)
      {
        if (v48 >= *(v6 + 16))
        {
          goto LABEL_58;
        }

        v50 = *(v7 + 8 * v48);
        v51 = *(v50 + 16);
        v52 = v49[2];
        v53 = v52 + v51;
        if (__OFADD__(v52, v51))
        {
          goto LABEL_59;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v53 <= v49[3] >> 1)
        {
          if (!*(v50 + 16))
          {
            goto LABEL_40;
          }
        }

        else
        {
          if (v52 <= v53)
          {
            v55 = v52 + v51;
          }

          else
          {
            v55 = v52;
          }

          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v55, 1, v49);
          if (!*(v50 + 16))
          {
LABEL_40:

            if (v51)
            {
              goto LABEL_60;
            }

            goto LABEL_41;
          }
        }

        if ((v49[3] >> 1) - v49[2] < v51)
        {
          goto LABEL_61;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_17WebBookmarksSwift20ParticipantHandleMapC0D4KindOtMd, &_sSS_17WebBookmarksSwift20ParticipantHandleMapC0D4KindOtMR);
        swift_arrayInitWithCopy();

        if (v51)
        {
          v56 = v49[2];
          v57 = __OFADD__(v56, v51);
          v58 = v56 + v51;
          if (v57)
          {
            goto LABEL_62;
          }

          v49[2] = v58;
        }

LABEL_41:
        if (v2 == ++v48)
        {
          goto LABEL_67;
        }
      }
    }

    goto LABEL_66;
  }

  v34 = __CocoaSet.count.getter();
  v33 = v61;
  if (!v34)
  {
    goto LABEL_65;
  }

LABEL_27:
  v35 = v33;
  v63 = MEMORY[0x277D84F90];
  v3 = &v63;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34 & ~(v34 >> 63), 0);
  if (v34 < 0)
  {
    __break(1u);
    goto LABEL_73;
  }

  v36 = 0;
  v6 = v63;
  v37 = v35;
  v38 = v35 & 0xC000000000000001;
  do
  {
    if (v38)
    {
      v39 = MEMORY[0x2743D7610](v36, v37);
    }

    else
    {
      v39 = *(v37 + 8 * v36 + 32);
    }

    v40 = v39;
    if ([v39 isCurrentUser])
    {
      v41 = 0;
    }

    else
    {
      v42 = v40;
      v41 = v40;
    }

    v43 = CKShareParticipant.handles.getter();
    v44 = v41;
    v45 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_SS_17WebBookmarksSwift20ParticipantHandleMapC0G4KindOts5NeverOTg504_s17de7Swift20ghi76C09handlesToD13KindsForShare33_DC6DDEA4C0316922E19757898A9692F2LLySDySSAC0D4J52OGSo7CKShareCKFZSaySS_AGtGSo0sD0CXEfU0_SS_AGtSSXEfU_AKTf1cn_nTf4ng_n(v43, v41);

    v63 = v6;
    v47 = *(v6 + 16);
    v46 = *(v6 + 24);
    if (v47 >= v46 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
      v6 = v63;
    }

    ++v36;
    *(v6 + 16) = v47 + 1;
    *(v6 + 8 * v47 + 32) = v45;
    v37 = v61;
  }

  while (v34 != v36);

  v2 = *(v6 + 16);
  if (v2)
  {
    goto LABEL_39;
  }

LABEL_66:
  v49 = MEMORY[0x277D84F90];
LABEL_67:

  if (v49[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17WebBookmarksSwift20ParticipantHandleMapC0F4KindOGMd, &_ss18_DictionaryStorageCySS17WebBookmarksSwift20ParticipantHandleMapC0F4KindOGMR);
    v59 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v59 = MEMORY[0x277D84F98];
  }

  v63 = v59;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v49, 1, &v63);
  if (!v62)
  {
    return v63;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type ParticipantHandleMap.Errors and conformance ParticipantHandleMap.Errors()
{
  result = lazy protocol witness table cache variable for type ParticipantHandleMap.Errors and conformance ParticipantHandleMap.Errors;
  if (!lazy protocol witness table cache variable for type ParticipantHandleMap.Errors and conformance ParticipantHandleMap.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantHandleMap.Errors and conformance ParticipantHandleMap.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticipantHandleMap.Errors and conformance ParticipantHandleMap.Errors;
  if (!lazy protocol witness table cache variable for type ParticipantHandleMap.Errors and conformance ParticipantHandleMap.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantHandleMap.Errors and conformance ParticipantHandleMap.Errors);
  }

  return result;
}

uint64_t outlined consume of Set<String>.Index._Variant(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t specialized closure #1 in AsyncBufferedQueue.init(bufferingPolicy:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  outlined destroy of TaskPriority?(a2, a3, a4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(v10 - 8);
  (*(v13 + 16))(a2, a1, v10);
  v11 = *(v13 + 56);

  return v11(a2, 0, 1, v10);
}

uint64_t specialized CollaborationConnectionManager.participantUpdates()(uint64_t (*a1)(BOOL, uint64_t, uint64_t, uint64_t), uint64_t *a2, uint64_t *a3, char *a4)
{
  v25 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyShy15GroupActivities11ParticipantVG__GMd, &_sScS12ContinuationV15BufferingPolicyOyShy15GroupActivities11ParticipantVG__GMR);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v28 = &v25 - v10;
  v11 = *(*v4 + 176);
  swift_beginAccess();
  v29 = v11;
  v30 = v4;
  v12 = *&v11[v4];
  v13 = *(v12 + 16);

  if (v13)
  {
    v14 = 0;
    v15 = v12 + 32;
    v16 = MEMORY[0x277D84F90];
    while (v14 < *(v12 + 16))
    {
      outlined init with copy of TaskPriority?(v15, v33, a2, a3);
      if (swift_weakLoadStrong())
      {

        outlined init with take of CollaborationConnectionManager<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>, PresenceUpdateMessage>.WeakContainer<AsyncBufferedQueue<Set<Participant>>>(v33, v32, a2, a3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          (a4)(0, *(v16 + 16) + 1, 1);
          v16 = v31;
        }

        v19 = *(v16 + 16);
        v18 = *(v16 + 24);
        if (v19 >= v18 >> 1)
        {
          (a4)(v18 > 1, v19 + 1, 1);
          v16 = v31;
        }

        *(v16 + 16) = v19 + 1;
        outlined init with take of CollaborationConnectionManager<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>, PresenceUpdateMessage>.WeakContainer<AsyncBufferedQueue<Set<Participant>>>(v32, v16 + 8 * v19 + 32, a2, a3);
      }

      else
      {
        outlined destroy of TaskPriority?(v33, a2, a3);
      }

      ++v14;
      v15 += 8;
      if (v13 == v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    v13 = v25(0, *(v13 + 16) + 1, 1, v13);
    *&a4[v14] = v13;
    goto LABEL_14;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_13:

  a4 = v29;
  v14 = v30;
  *&v29[v30] = v16;

  v20 = v28;
  (*(v26 + 104))(v28, *MEMORY[0x277D85778], v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift18AsyncBufferedQueueCyShy15GroupActivities11ParticipantVGGMd, &_s17WebBookmarksSwift18AsyncBufferedQueueCyShy15GroupActivities11ParticipantVGGMR);
  swift_allocObject();
  v16 = specialized AsyncBufferedQueue.init(bufferingPolicy:)(v20);
  swift_weakInit();
  swift_beginAccess();
  v13 = *&a4[v14];
  v21 = swift_isUniquelyReferenced_nonNull_native();
  *&a4[v14] = v13;
  if ((v21 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v23 = *(v13 + 16);
  v22 = *(v13 + 24);
  if (v23 >= v22 >> 1)
  {
    v13 = v25(v22 > 1, v23 + 1, 1, v13);
  }

  *(v13 + 16) = v23 + 1;
  outlined init with take of CollaborationConnectionManager<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>, PresenceUpdateMessage>.WeakContainer<AsyncBufferedQueue<Set<Participant>>>(v33, v13 + 8 * v23 + 32, a2, a3);
  *&a4[v14] = v13;
  swift_endAccess();
  return v16;
}

uint64_t specialized CollaborationConnectionManager.setActiveParticipants(_:)(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(BOOL, uint64_t, uint64_t))
{
  v26 = a4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOyShy15GroupActivities11ParticipantVG__GMd, &_sScS12ContinuationV11YieldResultOyShy15GroupActivities11ParticipantVG__GMR);
  v8 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v9);
  v27 = &v23 - v10;
  *(v4 + *(*v4 + 168)) = a1;
  v29 = a1;

  v11 = *(*v4 + 176);
  swift_beginAccess();
  v24 = v11;
  v25 = v4;
  v12 = *(v4 + v11);
  v13 = *(v12 + 16);

  v30 = v13;
  if (v13)
  {
    v15 = 0;
    v16 = v12 + 32;
    v17 = (v8 + 8);
    v18 = MEMORY[0x277D84F90];
    while (v15 < *(v12 + 16))
    {
      outlined init with copy of TaskPriority?(v16, v32, a2, a3);
      if (swift_weakLoadStrong())
      {
        v31 = v29;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GMd, &_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GMR);
        v19 = v27;
        AsyncStream.Continuation.yield(_:)();

        (*v17)(v19, v28);
        outlined init with take of CollaborationConnectionManager<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>, PresenceUpdateMessage>.WeakContainer<AsyncBufferedQueue<Set<Participant>>>(v32, &v31, a2, a3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26(0, *(v18 + 16) + 1, 1);
          v18 = v33;
        }

        v22 = *(v18 + 16);
        v21 = *(v18 + 24);
        if (v22 >= v21 >> 1)
        {
          v26(v21 > 1, v22 + 1, 1);
          v18 = v33;
        }

        *(v18 + 16) = v22 + 1;
        result = outlined init with take of CollaborationConnectionManager<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>, PresenceUpdateMessage>.WeakContainer<AsyncBufferedQueue<Set<Participant>>>(&v31, v18 + 8 * v22 + 32, a2, a3);
      }

      else
      {
        result = outlined destroy of TaskPriority?(v32, a2, a3);
      }

      ++v15;
      v16 += 8;
      if (v30 == v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
LABEL_13:

    *(v25 + v24) = v18;
  }

  return result;
}

uint64_t specialized CollaborationConnectionManager.sendPresenceUpdateMessage(_:)(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy17WebBookmarksSwift21PresenceUpdateMessageV__GMd, &_sScS12ContinuationV11YieldResultOy17WebBookmarksSwift21PresenceUpdateMessageV__GMR);
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.sendPresenceUpdateMessage(_:), v1, 0);
}

{
  v2[22] = a1;
  v2[23] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy17WebBookmarksSwift21PresenceUpdateMessageV__GMd, &_sScS12ContinuationV11YieldResultOy17WebBookmarksSwift21PresenceUpdateMessageV__GMR);
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.sendPresenceUpdateMessage(_:), v1, 0);
}

uint64_t specialized CollaborationConnectionManager.sendPresenceUpdateMessage(_:)()
{
  v30 = v0;
  if (*(*(v0 + 184) + 168))
  {
    v1 = one-time initialization token for tabGroup;

    if (v1 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.tabGroup);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 184);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v29 = v7;
      *v6 = 136446210;
      swift_beginAccess();
      v8 = *(v5 + 136);
      v9 = *(v5 + 144);

      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v29);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_272D1B000, v3, v4, "Session is active with message controller for activity %{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x2743D7F00](v7, -1, -1);
      MEMORY[0x2743D7F00](v6, -1, -1);
    }

    v12 = *(v0 + 200);
    v11 = *(v0 + 208);
    v13 = *(v0 + 192);
    v14 = *(v0 + 176);
    v16 = *(v14 + 16);
    v15 = *(v14 + 32);
    v17 = *v14;
    *(v0 + 64) = *(v14 + 48);
    *(v0 + 32) = v16;
    *(v0 + 48) = v15;
    *(v0 + 16) = v17;
    outlined init with copy of PresenceUpdateMessage(v14, v0 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GMR);
    AsyncStream.Continuation.yield(_:)();
    (*(v12 + 8))(v11, v13);
  }

  else
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.tabGroup);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 184);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29 = v23;
      *v22 = 136446210;
      swift_beginAccess();
      v24 = *(v21 + 136);
      v25 = *(v21 + 144);

      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v29);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_272D1B000, v19, v20, "Message ignored while there are no active sessions for activity: %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x2743D7F00](v23, -1, -1);
      MEMORY[0x2743D7F00](v22, -1, -1);
    }
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t specialized closure #1 in CollaborationConnectionManager.startActivity()(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = swift_task_alloc();
    *(v2 + 24) = v4;
    *v4 = v2;
    v4[1] = specialized closure #1 in CollaborationConnectionManager.startActivity();

    return specialized CollaborationConnectionManager.leaveGroupSessionProvider(_:)();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 16) = v6;
    *v6 = v2;
    v6[1] = specialized closure #1 in CollaborationConnectionManager.startActivity();

    return specialized CollaborationConnectionManager.joinGroupSessionProvider(_:)(a1);
  }
}

{
  if (a2)
  {
    v4 = swift_task_alloc();
    *(v2 + 24) = v4;
    *v4 = v2;
    v4[1] = specialized closure #1 in CollaborationConnectionManager.startActivity();

    return specialized CollaborationConnectionManager.leaveGroupSessionProvider(_:)();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 16) = v6;
    *v6 = v2;
    v6[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

    return specialized CollaborationConnectionManager.joinGroupSessionProvider(_:)(a1);
  }
}

uint64_t specialized FastSyncStateMachine.startActivity(_:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v37 - v9;
  v11 = *v4;
  v12 = v4[1];
  v13 = v4[2];
  v14 = v13 >> 61;
  if ((v13 >> 61) <= 2)
  {
    if ((v13 >> 61) < 2)
    {
      v15 = 0;
      return v15 & 1;
    }

    v39 = a1;
    v23 = v4[5];

    v24 = v23(v4 + 3);
    if (!v3)
    {
      v21 = v24;
      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
      v26 = swift_allocObject();
      v26[2] = 0;
      v26[3] = 0;
      v27 = v39;
      v26[4] = v12;
      v26[5] = v27;
      v26[6] = a2;
      v26[7] = v21;

      v28 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15GroupActivities08PersonalE15SessionProviderCy17WebBookmarksSwift0G26DeviceCoordinationActivityVG_Tt2g5Tm(0, 0, v10, &async function pointer to partial apply for specialized closure #2 in FastSyncStateMachine.startActivity(_:), v26, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR);
      outlined consume of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v11, v12, v13);
      v22 = v28 | 0x6000000000000000;
      goto LABEL_15;
    }

LABEL_12:

    return v15 & 1;
  }

  v39 = a1;
  if (v14 == 3)
  {
    v38 = a2;
    v29 = v4[5];

    v30 = v29(v4 + 3);
    if (!v3)
    {
      v21 = v30;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
      MEMORY[0x2743D73C0](v13 & 0x1FFFFFFFFFFFFFFFLL, v37, v31, MEMORY[0x277D84950]);
      v32 = type metadata accessor for TaskPriority();
      (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
      v33 = swift_allocObject();
      v33[2] = 0;
      v33[3] = 0;
      v34 = v39;
      v33[4] = v13 & 0x1FFFFFFFFFFFFFFFLL;
      v33[5] = v34;
      v33[6] = v38;
      v33[7] = v21;

      v35 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15GroupActivities08PersonalE15SessionProviderCy17WebBookmarksSwift0G26DeviceCoordinationActivityVG_Tt2g5Tm(0, 0, v10, &async function pointer to partial apply for specialized closure #3 in FastSyncStateMachine.startActivity(_:), v33, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR);
      outlined consume of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v11, v12, v13);
      v22 = v35 | 0x6000000000000000;
      v11 = v12;
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v14 == 4)
  {

    v16 = v12;
  }

  v17 = (v4[5])(v4 + 3);
  if (!v3)
  {
    v18 = v17;
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v39;
    v20[5] = a2;
    v20[6] = v18;

    v21 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15GroupActivities08PersonalE15SessionProviderCy17WebBookmarksSwift0G26DeviceCoordinationActivityVG_Tt2g5Tm(0, 0, v10, &async function pointer to partial apply for specialized closure #1 in FastSyncStateMachine.startActivity(_:), v20, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR);
    outlined consume of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v11, v12, v13);
    v22 = 0;
    v11 = v18;
LABEL_15:
    *v4 = v11;
    v4[1] = v21;
    v15 = 1;
    v4[2] = v22;
  }

  return v15 & 1;
}

{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v37 - v9;
  v11 = *v4;
  v12 = v4[1];
  v13 = v4[2];
  v14 = v13 >> 61;
  if ((v13 >> 61) <= 2)
  {
    if ((v13 >> 61) < 2)
    {
      v15 = 0;
      return v15 & 1;
    }

    v39 = a1;
    v23 = v4[5];

    v24 = v23(v4 + 3);
    if (!v3)
    {
      v21 = v24;
      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
      v26 = swift_allocObject();
      v26[2] = 0;
      v26[3] = 0;
      v27 = v39;
      v26[4] = v12;
      v26[5] = v27;
      v26[6] = a2;
      v26[7] = v21;

      v28 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15GroupActivities08PersonalE15SessionProviderCy17WebBookmarksSwift0G26DeviceCoordinationActivityVG_Tt2g5Tm(0, 0, v10, &async function pointer to partial apply for specialized closure #2 in FastSyncStateMachine.startActivity(_:), v26, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
      outlined consume of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v11, v12, v13);
      v22 = v28 | 0x6000000000000000;
      goto LABEL_15;
    }

LABEL_12:

    return v15 & 1;
  }

  v39 = a1;
  if (v14 == 3)
  {
    v38 = a2;
    v29 = v4[5];

    v30 = v29(v4 + 3);
    if (!v3)
    {
      v21 = v30;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
      MEMORY[0x2743D73C0](v13 & 0x1FFFFFFFFFFFFFFFLL, v37, v31, MEMORY[0x277D84950]);
      v32 = type metadata accessor for TaskPriority();
      (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
      v33 = swift_allocObject();
      v33[2] = 0;
      v33[3] = 0;
      v34 = v39;
      v33[4] = v13 & 0x1FFFFFFFFFFFFFFFLL;
      v33[5] = v34;
      v33[6] = v38;
      v33[7] = v21;

      v35 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15GroupActivities08PersonalE15SessionProviderCy17WebBookmarksSwift0G26DeviceCoordinationActivityVG_Tt2g5Tm(0, 0, v10, &async function pointer to partial apply for specialized closure #3 in FastSyncStateMachine.startActivity(_:), v33, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
      outlined consume of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v11, v12, v13);
      v22 = v35 | 0x6000000000000000;
      v11 = v12;
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v14 == 4)
  {

    v16 = v12;
  }

  v17 = (v4[5])(v4 + 3);
  if (!v3)
  {
    v18 = v17;
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v39;
    v20[5] = a2;
    v20[6] = v18;

    v21 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15GroupActivities08PersonalE15SessionProviderCy17WebBookmarksSwift0G26DeviceCoordinationActivityVG_Tt2g5Tm(0, 0, v10, &async function pointer to partial apply for specialized closure #1 in FastSyncStateMachine.startActivity(_:), v20, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
    outlined consume of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v11, v12, v13);
    v22 = 0;
    v11 = v18;
LABEL_15:
    *v4 = v11;
    v4[1] = v21;
    v15 = 1;
    v4[2] = v22;
  }

  return v15 & 1;
}

uint64_t specialized CollaborationConnectionManager.leaveActivity()()
{
  v1[5] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.leaveActivity(), v0, 0);
}

{
  v1 = v0[7];
  v2 = v0[5];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  v5 = v2[14];
  v4 = v2[15];
  v6 = v2[16];
  v7 = v6 >> 61;
  if ((v6 >> 61) > 2)
  {
    if (v7 != 3)
    {
      if (v7 == 4)
      {

        outlined copy of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);
      }

      else
      {
      }

      outlined destroy of TaskPriority?(v0[7], &_sScPSgMd, &_sScPSgMR);
      v2[14] = 0;
      v2[15] = 0;
      v2[16] = 0xA000000000000000;
      outlined consume of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);
      goto LABEL_15;
    }

    v13 = v6 & 0x1FFFFFFFFFFFFFFFLL;

    outlined copy of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);

    v25 = v4;
LABEL_10:
    v14 = v0[6];
    v15 = v0[7];
    v16 = v0[5];
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
    MEMORY[0x2743D73C0](v13, v17, v18, MEMORY[0x277D84950]);
    outlined init with copy of TaskPriority?(v15, v14, &_sScPSgMd, &_sScPSgMR);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v13;
    v19[5] = &async function pointer to partial apply for specialized closure #1 in CollaborationConnectionManager.leaveActivity();
    v19[6] = v16;

    v20 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:), v19);
    outlined destroy of TaskPriority?(v15, &_sScPSgMd, &_sScPSgMR);
    v2[14] = v25;
    v2[15] = v20;
    goto LABEL_11;
  }

  if (!v7)
  {

    outlined copy of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);
    v25 = v5;
    v13 = v4;
    goto LABEL_10;
  }

  if (v7 == 1)
  {
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[5];
    outlined init with copy of TaskPriority?(v8, v9, &_sScPSgMd, &_sScPSgMR);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v4;
    v11[5] = &async function pointer to partial apply for specialized closure #1 in CollaborationConnectionManager.leaveActivity();
    v11[6] = v10;
    v11[7] = v5;

    outlined copy of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);

    v12 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for specialized closure #2 in FastSyncStateMachine.leaveActivity(priority:_:), v11);
    outlined destroy of TaskPriority?(v8, &_sScPSgMd, &_sScPSgMR);
    v2[14] = v5;
    v2[15] = v12;
LABEL_11:
    v2[16] = 0x4000000000000000;
    outlined consume of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);
    v21 = 1;
    goto LABEL_16;
  }

  v22 = v0[7];

  outlined copy of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);

  outlined destroy of TaskPriority?(v22, &_sScPSgMd, &_sScPSgMR);
LABEL_15:
  v21 = 0;
LABEL_16:
  swift_endAccess();

  v23 = v0[1];

  return v23(v21);
}

{
  v1[5] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.leaveActivity(), v0, 0);
}

{
  v1 = v0[7];
  v2 = v0[5];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  v5 = v2[14];
  v4 = v2[15];
  v6 = v2[16];
  v7 = v6 >> 61;
  if ((v6 >> 61) > 2)
  {
    if (v7 != 3)
    {
      if (v7 == 4)
      {

        outlined copy of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);
      }

      else
      {
      }

      outlined destroy of TaskPriority?(v0[7], &_sScPSgMd, &_sScPSgMR);
      v2[14] = 0;
      v2[15] = 0;
      v2[16] = 0xA000000000000000;
      outlined consume of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);
      goto LABEL_15;
    }

    v13 = v6 & 0x1FFFFFFFFFFFFFFFLL;

    outlined copy of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);

    v25 = v4;
LABEL_10:
    v14 = v0[6];
    v15 = v0[7];
    v16 = v0[5];
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
    MEMORY[0x2743D73C0](v13, v17, v18, MEMORY[0x277D84950]);
    outlined init with copy of TaskPriority?(v15, v14, &_sScPSgMd, &_sScPSgMR);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v13;
    v19[5] = &async function pointer to partial apply for specialized closure #1 in CollaborationConnectionManager.leaveActivity();
    v19[6] = v16;

    v20 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:), v19);
    outlined destroy of TaskPriority?(v15, &_sScPSgMd, &_sScPSgMR);
    v2[14] = v25;
    v2[15] = v20;
    goto LABEL_11;
  }

  if (!v7)
  {

    outlined copy of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);
    v25 = v5;
    v13 = v4;
    goto LABEL_10;
  }

  if (v7 == 1)
  {
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[5];
    outlined init with copy of TaskPriority?(v8, v9, &_sScPSgMd, &_sScPSgMR);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v4;
    v11[5] = &async function pointer to partial apply for specialized closure #1 in CollaborationConnectionManager.leaveActivity();
    v11[6] = v10;
    v11[7] = v5;

    outlined copy of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);

    v12 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for specialized closure #2 in FastSyncStateMachine.leaveActivity(priority:_:), v11);
    outlined destroy of TaskPriority?(v8, &_sScPSgMd, &_sScPSgMR);
    v2[14] = v5;
    v2[15] = v12;
LABEL_11:
    v2[16] = 0x4000000000000000;
    outlined consume of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);
    v21 = 1;
    goto LABEL_16;
  }

  v22 = v0[7];

  outlined copy of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);

  outlined destroy of TaskPriority?(v22, &_sScPSgMd, &_sScPSgMR);
LABEL_15:
  v21 = 0;
LABEL_16:
  swift_endAccess();

  v23 = v0[1];

  return v23(v21);
}

uint64_t specialized closure #1 in CollaborationConnectionManager.leaveActivity()(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = specialized closure #1 in CollaborationConnectionManager.startActivity();

  return specialized CollaborationConnectionManager.leaveGroupSessionProvider(_:)();
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized CollaborationConnectionManager.leaveGroupSessionProvider(_:)();
}

uint64_t specialized CollaborationConnectionManager.joinGroupSessionProvider(_:)(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.joinGroupSessionProvider(_:), v1, 0);
}

{
  v2[17] = a1;
  v2[18] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.joinGroupSessionProvider(_:), v1, 0);
}

uint64_t specialized CollaborationConnectionManager.joinGroupSessionProvider(_:)()
{
  v15 = v0;
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[20] = __swift_project_value_buffer(v1, static Logger.tabGroup);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[18];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    swift_beginAccess();
    v7 = *(v4 + 136);
    v8 = *(v4 + 144);

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_272D1B000, v2, v3, "Will join groupSessionProvider for activity: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2743D7F00](v6, -1, -1);
    MEMORY[0x2743D7F00](v5, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[21] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR);
  v12 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type PersonalGroupSessionProvider<PersonalDeviceCoordinationActivity> and conformance PersonalGroupSessionProvider<A>, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR, MEMORY[0x277CCB140]);
  *v10 = v0;
  v10[1] = specialized CollaborationConnectionManager.joinGroupSessionProvider(_:);

  return MEMORY[0x28211FBF0](v11, v12);
}

{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = specialized CollaborationConnectionManager.joinGroupSessionProvider(_:);
  }

  else
  {
    v4 = specialized CollaborationConnectionManager.joinGroupSessionProvider(_:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v19 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[18];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136446210;
    swift_beginAccess();
    v6 = *(v3 + 136);
    v7 = *(v3 + 144);

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v18);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_272D1B000, v1, v2, "Did join groupSessionProvider for activity: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x2743D7F00](v5, -1, -1);
    MEMORY[0x2743D7F00](v4, -1, -1);
  }

  v9 = v0[18];
  v10 = v0[19];
  v11 = v0[17];
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type CollaborationConnectionManager<PersonalDeviceCoordinationActivity, PersonalGroupSessionProvider<PersonalDeviceCoordinationActivity>, PresenceUpdateMessage> and conformance CollaborationConnectionManager<A, B, C>, &_s17WebBookmarksSwift30CollaborationConnectionManagerCyAA34PersonalDeviceCoordinationActivityV15GroupActivities0gK15SessionProviderCyAEGAA21PresenceUpdateMessageVGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerCyAA34PersonalDeviceCoordinationActivityV15GroupActivities0gK15SessionProviderCyAEGAA21PresenceUpdateMessageVGMR, &protocol conformance descriptor for CollaborationConnectionManager<A, B, C>);
  v14 = swift_allocObject();
  v14[2] = v9;
  v14[3] = v13;
  v14[4] = v9;
  v14[5] = v11;
  swift_retain_n();

  v15 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for specialized closure #1 in CollaborationConnectionManager.joinGroupSessionProvider(_:), v14);
  swift_beginAccess();
  specialized FastSyncStateMachine.didStartActivity(sessionTask:groupSessionProvider:)(v15, v11);
  swift_endAccess();

  v16 = v0[1];

  return v16();
}

{
  v15 = v0;
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[20] = __swift_project_value_buffer(v1, static Logger.tabGroup);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[18];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    swift_beginAccess();
    v7 = *(v4 + 136);
    v8 = *(v4 + 144);

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_272D1B000, v2, v3, "Will join groupSessionProvider for activity: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2743D7F00](v6, -1, -1);
    MEMORY[0x2743D7F00](v5, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[21] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
  v12 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR, &protocol conformance descriptor for CKShareGroupSessionProvider<A>);
  *v10 = v0;
  v10[1] = specialized CollaborationConnectionManager.joinGroupSessionProvider(_:);

  return MEMORY[0x28211FBF0](v11, v12);
}

{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = specialized CollaborationConnectionManager.joinGroupSessionProvider(_:);
  }

  else
  {
    v4 = specialized CollaborationConnectionManager.joinGroupSessionProvider(_:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v19 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[18];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136446210;
    swift_beginAccess();
    v6 = *(v3 + 136);
    v7 = *(v3 + 144);

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v18);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_272D1B000, v1, v2, "Did join groupSessionProvider for activity: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x2743D7F00](v5, -1, -1);
    MEMORY[0x2743D7F00](v4, -1, -1);
  }

  v9 = v0[18];
  v10 = v0[19];
  v11 = v0[17];
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type CollaborationConnectionManager<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>, PresenceUpdateMessage> and conformance CollaborationConnectionManager<A, B, C>, &_s17WebBookmarksSwift30CollaborationConnectionManagerCyAA07CKShareD8ActivityVAA0G20GroupSessionProviderCyAEGAA21PresenceUpdateMessageVGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerCyAA07CKShareD8ActivityVAA0G20GroupSessionProviderCyAEGAA21PresenceUpdateMessageVGMR, &protocol conformance descriptor for CollaborationConnectionManager<A, B, C>);
  v14 = swift_allocObject();
  v14[2] = v9;
  v14[3] = v13;
  v14[4] = v9;
  v14[5] = v11;
  swift_retain_n();

  v15 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for specialized closure #1 in CollaborationConnectionManager.joinGroupSessionProvider(_:), v14);
  swift_beginAccess();
  specialized FastSyncStateMachine.didStartActivity(sessionTask:groupSessionProvider:)(v15, v11);
  swift_endAccess();

  v16 = v0[1];

  return v16();
}

{
  v20 = v0;
  v1 = v0[22];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = v0[18];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v7 = 136446466;
    swift_beginAccess();
    v10 = *(v6 + 136);
    v11 = *(v6 + 144);

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v19);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_272D1B000, v3, v4, "Did fail to join groupSessionProvider for activity %{public}s, error: %@", v7, 0x16u);
    outlined destroy of TaskPriority?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2743D7F00](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2743D7F00](v9, -1, -1);
    MEMORY[0x2743D7F00](v7, -1, -1);
  }

  v15 = v0[22];
  v16 = v0[17];
  swift_beginAccess();
  specialized FastSyncStateMachine.startActivity(_:didFailWith:)(v16, v15);
  swift_endAccess();

  v17 = v0[1];

  return v17();
}

uint64_t specialized closure #1 in CollaborationConnectionManager.joinGroupSessionProvider(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized CollaborationConnectionManager.waitForGroupSessions(with:)(a5);
}

{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized CollaborationConnectionManager.waitForGroupSessions(with:)(a5);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  outlined init with copy of TaskPriority?(a3, v26 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of TaskPriority?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void specialized FastSyncStateMachine.didStartActivity(sessionTask:groupSessionProvider:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = 1 << (v5 >> 61);
  if ((v6 & 0x26) == 0 && ((v6 & 0x11) == 0 ? (v7 = v2[1]) : (v7 = *v2), v7 == a2))
  {

    outlined consume of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v3, v4, v5);
    *v2 = a2;
    v2[1] = a1;
    v2[2] = 0x2000000000000000;
  }

  else
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.tabGroup);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_272D1B000, oslog, v9, "Ignoring didStartActivity() for a group session provider we've stopped tracking", v10, 2u);
      MEMORY[0x2743D7F00](v10, -1, -1);
    }
  }
}

void specialized FastSyncStateMachine.startActivity(_:didFailWith:)(void *a1, void *a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v7 >> 61;
  if ((v7 >> 61) > 2)
  {
    if (v8 != 3)
    {
      if (v8 == 4)
      {

        v10 = v6;
      }

      goto LABEL_9;
    }

    v9 = v6;
  }

  else
  {
    if ((v8 - 1) < 2)
    {
      goto LABEL_9;
    }

    v9 = v5;
  }

  if (v9 == a1)
  {

    v18 = a2;
    outlined consume of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v6, v7);
    *v2 = a1;
    v2[1] = a2;
    v2[2] = 0x8000000000000000;
    return;
  }

LABEL_9:
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.tabGroup);
  v12 = a2;
  oslog = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = a2;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_272D1B000, oslog, v13, "Ignoring startActivity(_:didFailWith:) for a group session provider we've stopped tracking %@", v14, 0xCu);
    outlined destroy of TaskPriority?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2743D7F00](v15, -1, -1);
    MEMORY[0x2743D7F00](v14, -1, -1);
  }
}

uint64_t specialized CollaborationConnectionManager.leaveGroupSessionProvider(_:)()
{
  *(v1 + 40) = v0;
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR);
  v4 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type PersonalGroupSessionProvider<PersonalDeviceCoordinationActivity> and conformance PersonalGroupSessionProvider<A>, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR, MEMORY[0x277CCB140]);
  *v2 = v1;
  v2[1] = specialized CollaborationConnectionManager.leaveGroupSessionProvider(_:);

  return MEMORY[0x28211FBF8](v3, v4);
}

{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    v3 = v2[5];

    return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.leaveGroupSessionProvider(_:), v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

{
  *(v1 + 40) = v0;
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
  v4 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR, &protocol conformance descriptor for CKShareGroupSessionProvider<A>);
  *v2 = v1;
  v2[1] = specialized CollaborationConnectionManager.leaveGroupSessionProvider(_:);

  return MEMORY[0x28211FBF8](v3, v4);
}

{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    v3 = v2[5];

    return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.leaveGroupSessionProvider(_:), v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

{
  v20 = v0;
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.tabGroup);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136446466;
    swift_beginAccess();
    v12 = *(v8 + 136);
    v13 = *(v8 + 144);

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v19);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_272D1B000, v4, v5, "Did fail to leave groupSessionProvider for activity %{public}s, error: %@", v9, 0x16u);
    outlined destroy of TaskPriority?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2743D7F00](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2743D7F00](v11, -1, -1);
    MEMORY[0x2743D7F00](v9, -1, -1);
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

uint64_t specialized CollaborationConnectionManager.waitForGroupSessions(with:)(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = type metadata accessor for CancellationError();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  v2[21] = swift_task_alloc();
  v4 = type metadata accessor for Participant();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC8SessionsVy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_GMd, &_s15GroupActivities0A7SessionC8SessionsVy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_GMR);
  v2[25] = v5;
  v2[26] = *(v5 - 8);
  v2[27] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC8SessionsV8IteratorVy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV__GMd, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV__GMR);
  v2[28] = v6;
  v2[29] = *(v6 - 8);
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:), v1, 0);
}

{
  v2[16] = a1;
  v2[17] = v1;
  v3 = type metadata accessor for CancellationError();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  v2[21] = swift_task_alloc();
  v4 = type metadata accessor for Participant();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC8SessionsVy17WebBookmarksSwift28CKShareCollaborationActivityV_GMd, &_s15GroupActivities0A7SessionC8SessionsVy17WebBookmarksSwift28CKShareCollaborationActivityV_GMR);
  v2[25] = v5;
  v2[26] = *(v5 - 8);
  v2[27] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC8SessionsV8IteratorVy17WebBookmarksSwift28CKShareCollaborationActivityV__GMd, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy17WebBookmarksSwift28CKShareCollaborationActivityV__GMR);
  v2[28] = v6;
  v2[29] = *(v6 - 8);
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:), v1, 0);
}

uint64_t specialized CollaborationConnectionManager.waitForGroupSessions(with:)()
{
  v1 = v0[17];
  swift_beginAccess();
  v2 = *(v1 + 136);
  v0[31] = v2;
  v3 = *(v1 + 144);
  v0[32] = v3;
  v0[11] = v2;
  v0[12] = v3;

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:), 0, 0);
}

{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR);
  lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type PersonalGroupSessionProvider<PersonalDeviceCoordinationActivity> and conformance PersonalGroupSessionProvider<A>, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR, MEMORY[0x277CCB140]);
  GroupSessionProvider.sessions.getter();
  GroupSession.Sessions.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v5 = *v4;
  v0[33] = *(*v4 + 160);
  v0[34] = *(v5 + 168);
  v6 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSession<PersonalDeviceCoordinationActivity>.Sessions.Iterator and conformance GroupSession<A>.Sessions.Iterator, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV__GMd, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV__GMR, MEMORY[0x277CCB218]);
  v7 = swift_task_alloc();
  v0[35] = v7;
  *v7 = v0;
  v7[1] = specialized CollaborationConnectionManager.waitForGroupSessions(with:);
  v8 = v0[28];

  return MEMORY[0x282200308](v0 + 13, v8, v6);
}

{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = specialized CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  else
  {
    v2 = specialized CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  *(v0 + 296) = *(v0 + 104);
  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:), 0, 0);
}

{
  v14 = v0;
  if (v0[37])
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    v0[38] = __swift_project_value_buffer(v1, static Logger.tabGroup);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[32];
    if (v4)
    {
      v6 = v0[31];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136446210;
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v13);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_272D1B000, v2, v3, "Did begin group session for activity: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x2743D7F00](v8, -1, -1);
      MEMORY[0x2743D7F00](v7, -1, -1);
    }

    else
    {
    }

    v12 = v0[17];
    GroupSession.localParticipant.getter();

    return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:), v12, 0);
  }

  else
  {
    (*(v0[29] + 8))(v0[30], v0[28]);

    v10 = v0[1];

    return v10();
  }
}

{
  v1 = v0[33];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[17];
  (*(v2 + 32))(v3, v0[24], v4);
  v6 = *(v2 + 56);
  v0[39] = v6;
  v0[40] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v3, 0, 1, v4);
  swift_beginAccess();
  outlined assign with take of Participant?(v3, v5 + v1);
  swift_endAccess();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:), 0, 0);
}

{
  v1 = v0[37];
  v2 = v0[17];
  v3 = swift_task_alloc();
  v0[41] = v3;
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = v0 + 11;
  v4 = swift_task_alloc();
  v0[42] = v4;
  *v4 = v0;
  v4[1] = specialized CollaborationConnectionManager.waitForGroupSessions(with:);

  return MEMORY[0x282200740]();
}

{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = specialized CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  else
  {

    v2 = specialized CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:), *(v0 + 136), 0);
}

{
  v25 = v0;
  v1 = *(v0 + 344);

  *(v0 + 120) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 344);
    v5 = *(v0 + 152);
    v4 = *(v0 + 160);
    v6 = *(v0 + 144);
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));

    (*(v5 + 8))(v4, v6);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 344);

    v10 = v9;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 344);
    v15 = *(v0 + 256);
    if (v13)
    {
      v16 = *(v0 + 248);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v17 = 136446466;
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &v24);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2112;
      v21 = v14;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v22;
      *v18 = v22;
      _os_log_impl(&dword_272D1B000, v11, v12, "Retrying after group session for activity: %{public}s unexpectedly failed: %@", v17, 0x16u);
      outlined destroy of TaskPriority?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2743D7F00](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x2743D7F00](v19, -1, -1);
      MEMORY[0x2743D7F00](v17, -1, -1);
    }

    else
    {
    }

    v23 = *(v0 + 136);

    return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:), v23, 0);
  }
}

{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 168);
  v4 = *(v0 + 136);
  (*(v0 + 312))(v3, 1, 1, *(v0 + 176));
  swift_beginAccess();
  outlined assign with take of Participant?(v3, v4 + v2);
  swift_endAccess();
  *(v4 + v1) = MEMORY[0x277D84FA0];

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:), 0, 0);
}

{

  v1 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSession<PersonalDeviceCoordinationActivity>.Sessions.Iterator and conformance GroupSession<A>.Sessions.Iterator, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV__GMd, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV__GMR, MEMORY[0x277CCB218]);
  v2 = swift_task_alloc();
  *(v0 + 280) = v2;
  *v2 = v0;
  v2[1] = specialized CollaborationConnectionManager.waitForGroupSessions(with:);
  v3 = *(v0 + 224);

  return MEMORY[0x282200308](v0 + 104, v3, v1);
}

{
  v1 = v0[17];
  swift_beginAccess();
  v2 = *(v1 + 136);
  v0[31] = v2;
  v3 = *(v1 + 144);
  v0[32] = v3;
  v0[11] = v2;
  v0[12] = v3;

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:), 0, 0);
}

{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
  lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR, &protocol conformance descriptor for CKShareGroupSessionProvider<A>);
  GroupSessionProvider.sessions.getter();
  GroupSession.Sessions.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v5 = *v4;
  v0[33] = *(*v4 + 160);
  v0[34] = *(v5 + 168);
  v6 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSession<CKShareCollaborationActivity>.Sessions.Iterator and conformance GroupSession<A>.Sessions.Iterator, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy17WebBookmarksSwift28CKShareCollaborationActivityV__GMd, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy17WebBookmarksSwift28CKShareCollaborationActivityV__GMR, MEMORY[0x277CCB218]);
  v7 = swift_task_alloc();
  v0[35] = v7;
  *v7 = v0;
  v7[1] = specialized CollaborationConnectionManager.waitForGroupSessions(with:);
  v8 = v0[28];

  return MEMORY[0x282200308](v0 + 13, v8, v6);
}

{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = specialized CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  else
  {
    v2 = specialized CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  *(v0 + 296) = *(v0 + 104);
  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:), 0, 0);
}

{
  v14 = v0;
  if (v0[37])
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    v0[38] = __swift_project_value_buffer(v1, static Logger.tabGroup);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[32];
    if (v4)
    {
      v6 = v0[31];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136446210;
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v13);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_272D1B000, v2, v3, "Did begin group session for activity: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x2743D7F00](v8, -1, -1);
      MEMORY[0x2743D7F00](v7, -1, -1);
    }

    else
    {
    }

    v12 = v0[17];
    GroupSession.localParticipant.getter();

    return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:), v12, 0);
  }

  else
  {
    (*(v0[29] + 8))(v0[30], v0[28]);

    v10 = v0[1];

    return v10();
  }
}

{
  *(v0 + 112) = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

{
  v1 = v0[33];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[17];
  (*(v2 + 32))(v3, v0[24], v4);
  v6 = *(v2 + 56);
  v0[39] = v6;
  v0[40] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v3, 0, 1, v4);
  swift_beginAccess();
  outlined assign with take of Participant?(v3, v5 + v1);
  swift_endAccess();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:), 0, 0);
}

{
  v1 = v0[37];
  v2 = v0[17];
  v3 = swift_task_alloc();
  v0[41] = v3;
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = v0 + 11;
  v4 = swift_task_alloc();
  v0[42] = v4;
  *v4 = v0;
  v4[1] = specialized CollaborationConnectionManager.waitForGroupSessions(with:);

  return MEMORY[0x282200740]();
}

{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = specialized CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  else
  {

    v2 = specialized CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:), *(v0 + 136), 0);
}

{
  v25 = v0;
  v1 = *(v0 + 344);

  *(v0 + 120) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 344);
    v5 = *(v0 + 152);
    v4 = *(v0 + 160);
    v6 = *(v0 + 144);
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));

    (*(v5 + 8))(v4, v6);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 344);

    v10 = v9;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 344);
    v15 = *(v0 + 256);
    if (v13)
    {
      v16 = *(v0 + 248);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v17 = 136446466;
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &v24);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2112;
      v21 = v14;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v22;
      *v18 = v22;
      _os_log_impl(&dword_272D1B000, v11, v12, "Retrying after group session for activity: %{public}s unexpectedly failed: %@", v17, 0x16u);
      outlined destroy of TaskPriority?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2743D7F00](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x2743D7F00](v19, -1, -1);
      MEMORY[0x2743D7F00](v17, -1, -1);
    }

    else
    {
    }

    v23 = *(v0 + 136);

    return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:), v23, 0);
  }
}

{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 168);
  v4 = *(v0 + 136);
  (*(v0 + 312))(v3, 1, 1, *(v0 + 176));
  swift_beginAccess();
  outlined assign with take of Participant?(v3, v4 + v2);
  swift_endAccess();
  *(v4 + v1) = MEMORY[0x277D84FA0];

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:), 0, 0);
}

{

  v1 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSession<CKShareCollaborationActivity>.Sessions.Iterator and conformance GroupSession<A>.Sessions.Iterator, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy17WebBookmarksSwift28CKShareCollaborationActivityV__GMd, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy17WebBookmarksSwift28CKShareCollaborationActivityV__GMR, MEMORY[0x277CCB218]);
  v2 = swift_task_alloc();
  *(v0 + 280) = v2;
  *v2 = v0;
  v2[1] = specialized CollaborationConnectionManager.waitForGroupSessions(with:);
  v3 = *(v0 + 224);

  return MEMORY[0x282200308](v0 + 104, v3, v1);
}

uint64_t specialized closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:), 0, 0);
}

{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:), 0, 0);
}

uint64_t specialized closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v15 = v4;
  v5 = v0[3];
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = v7;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v3;
  v9[5] = v5;
  v9[6] = v4;
  v9[7] = v2;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(v1, &async function pointer to partial apply for specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:), v9);
  outlined destroy of TaskPriority?(v1, &_sScPSgMd, &_sScPSgMR);
  v8(v1, 1, 1, v6);
  v10 = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = v5;
  v11[6] = v15;
  v11[7] = v2;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(v1, &async function pointer to partial apply for specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:), v11);
  outlined destroy of TaskPriority?(v1, &_sScPSgMd, &_sScPSgMR);
  v10(v1, 1, 1, v6);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v5;
  v12[5] = v3;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(v1, &async function pointer to partial apply for specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:), v12);
  outlined destroy of TaskPriority?(v1, &_sScPSgMd, &_sScPSgMR);
  v13 = swift_task_alloc();
  v0[8] = v13;
  *v13 = v0;
  v13[1] = specialized closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized ThrowingTaskGroup.waitForAll(isolation:)(0, 0);
}

{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v15 = v4;
  v5 = v0[3];
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = v7;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v3;
  v9[5] = v5;
  v9[6] = v4;
  v9[7] = v2;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(v1, &async function pointer to partial apply for specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:), v9);
  outlined destroy of TaskPriority?(v1, &_sScPSgMd, &_sScPSgMR);
  v8(v1, 1, 1, v6);
  v10 = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = v5;
  v11[6] = v15;
  v11[7] = v2;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(v1, &async function pointer to partial apply for specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:), v11);
  outlined destroy of TaskPriority?(v1, &_sScPSgMd, &_sScPSgMR);
  v10(v1, 1, 1, v6);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v5;
  v12[5] = v3;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(v1, &async function pointer to partial apply for specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:), v12);
  outlined destroy of TaskPriority?(v1, &_sScPSgMd, &_sScPSgMR);
  v13 = swift_task_alloc();
  v0[8] = v13;
  *v13 = v0;
  v13[1] = specialized closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized ThrowingTaskGroup.waitForAll(isolation:)(0, 0);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_GMd, &_s15GroupActivities0A7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_GMR);
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_GSgMR);
  v7[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy15GroupActivities0E7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_G_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy15GroupActivities0E7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_G_GGMR);
  v7[10] = v9;
  v7[11] = *(v9 - 8);
  v7[12] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15GroupActivities0D7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_G_GMd, &_s7Combine9PublishedV9PublisherVy15GroupActivities0D7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_G_GMR);
  v7[13] = v10;
  v7[14] = *(v10 - 8);
  v7[15] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_G_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_G_G_GMR);
  v7[16] = v11;
  v7[17] = *(v11 - 8);
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:), 0, 0);
}

{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_GMd, &_s15GroupActivities0A7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_GMR);
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_GSgMR);
  v7[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy15GroupActivities0E7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_G_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy15GroupActivities0E7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_G_GGMR);
  v7[10] = v9;
  v7[11] = *(v9 - 8);
  v7[12] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15GroupActivities0D7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_G_GMd, &_s7Combine9PublishedV9PublisherVy15GroupActivities0D7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_G_GMR);
  v7[13] = v10;
  v7[14] = *(v10 - 8);
  v7[15] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_G_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_G_G_GMR);
  v7[16] = v11;
  v7[17] = *(v11 - 8);
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:), 0, 0);
}

uint64_t specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  GroupSession.$state.getter();
  v7 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type Published<GroupSession<PersonalDeviceCoordinationActivity>.State>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15GroupActivities0D7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_G_GMd, &_s7Combine9PublishedV9PublisherVy15GroupActivities0D7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_G_GMR, MEMORY[0x277CBCEC8]);
  MEMORY[0x2743D7130](v3, v7);
  (*(v2 + 8))(v1, v3);
  AsyncPublisher.makeAsyncIterator()();
  (*(v6 + 8))(v4, v5);
  v8 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type AsyncPublisher<Published<GroupSession<PersonalDeviceCoordinationActivity>.State>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_G_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_G_G_GMR, MEMORY[0x277CBCDD0]);
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  v10 = v0[16];
  v11 = v0[9];

  return MEMORY[0x282200308](v11, v10, v8);
}

{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  else
  {
    v2 = specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return MEMORY[0x2822009F8](specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:), 0, 0);
}

{
  v24 = v0;
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.tabGroup);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = v0[4];
      v7 = v0[5];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136446210;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v23);
      _os_log_impl(&dword_272D1B000, v5, v6, "Did finish observing groupSession state changes for activity: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x2743D7F00](v10, -1, -1);
      MEMORY[0x2743D7F00](v9, -1, -1);
    }

    v11 = v0[1];
    goto LABEL_9;
  }

  v12 = v0[20];
  v13 = v0[8];
  v14 = v0[3];
  (*(v3 + 32))(v13, v1, v2);
  specialized CollaborationConnectionManager.handleGroupSessionStateChange(_:state:)(v14, v13, &_s15GroupActivities0A7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_GMd, &_s15GroupActivities0A7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_GMR);
  if (v12)
  {
    v16 = v0[17];
    v15 = v0[18];
    v17 = v0[16];
    (*(v0[7] + 8))(v0[8], v0[6]);
    (*(v16 + 8))(v15, v17);

    v11 = v0[1];
LABEL_9:

    return v11();
  }

  (*(v0[7] + 8))(v0[8], v0[6]);
  v19 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type AsyncPublisher<Published<GroupSession<PersonalDeviceCoordinationActivity>.State>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_G_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_G_G_GMR, MEMORY[0x277CBCDD0]);
  v20 = swift_task_alloc();
  v0[19] = v20;
  *v20 = v0;
  v20[1] = specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  v21 = v0[16];
  v22 = v0[9];

  return MEMORY[0x282200308](v22, v21, v19);
}

{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  GroupSession.$state.getter();
  v7 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type Published<GroupSession<CKShareCollaborationActivity>.State>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15GroupActivities0D7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_G_GMd, &_s7Combine9PublishedV9PublisherVy15GroupActivities0D7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_G_GMR, MEMORY[0x277CBCEC8]);
  MEMORY[0x2743D7130](v3, v7);
  (*(v2 + 8))(v1, v3);
  AsyncPublisher.makeAsyncIterator()();
  (*(v6 + 8))(v4, v5);
  v8 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type AsyncPublisher<Published<GroupSession<CKShareCollaborationActivity>.State>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_G_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_G_G_GMR, MEMORY[0x277CBCDD0]);
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  v10 = v0[16];
  v11 = v0[9];

  return MEMORY[0x282200308](v11, v10, v8);
}

{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  else
  {
    v2 = specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return MEMORY[0x2822009F8](specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:), 0, 0);
}

{
  v24 = v0;
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.tabGroup);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = v0[4];
      v7 = v0[5];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136446210;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v23);
      _os_log_impl(&dword_272D1B000, v5, v6, "Did finish observing groupSession state changes for activity: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x2743D7F00](v10, -1, -1);
      MEMORY[0x2743D7F00](v9, -1, -1);
    }

    v11 = v0[1];
    goto LABEL_9;
  }

  v12 = v0[20];
  v13 = v0[8];
  v14 = v0[3];
  (*(v3 + 32))(v13, v1, v2);
  specialized CollaborationConnectionManager.handleGroupSessionStateChange(_:state:)(v14, v13, &_s15GroupActivities0A7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_GMd, &_s15GroupActivities0A7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_GMR);
  if (v12)
  {
    v16 = v0[17];
    v15 = v0[18];
    v17 = v0[16];
    (*(v0[7] + 8))(v0[8], v0[6]);
    (*(v16 + 8))(v15, v17);

    v11 = v0[1];
LABEL_9:

    return v11();
  }

  (*(v0[7] + 8))(v0[8], v0[6]);
  v19 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type AsyncPublisher<Published<GroupSession<CKShareCollaborationActivity>.State>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_G_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_G_G_GMR, MEMORY[0x277CBCDD0]);
  v20 = swift_task_alloc();
  v0[19] = v20;
  *v20 = v0;
  v20[1] = specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  v21 = v0[16];
  v22 = v0[9];

  return MEMORY[0x282200308](v22, v21, v19);
}

{
  *(v0 + 16) = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v19 - v9;
  outlined init with copy of TaskPriority?(a1, v19 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of TaskPriority?(v10, &_sScPSgMd, &_sScPSgMR);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_GGMR);
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMR);
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_G_GMR);
  v7[14] = v10;
  v7[15] = *(v10 - 8);
  v7[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:), 0, 0);
}

{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_GGMR);
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMR);
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_G_GMR);
  v7[14] = v10;
  v7[15] = *(v10 - 8);
  v7[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:), 0, 0);
}

uint64_t specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  GroupSession.$activeParticipants.getter();
  v7 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type Published<Set<Participant>>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMR, MEMORY[0x277CBCEC8]);
  MEMORY[0x2743D7130](v3, v7);
  (*(v2 + 8))(v1, v3);
  AsyncPublisher.makeAsyncIterator()();
  (*(v6 + 8))(v4, v5);
  v8 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Set<Participant>>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_G_GMR, MEMORY[0x277CBCDD0]);
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  v10 = v0[14];

  return MEMORY[0x282200308](v0 + 2, v10, v8);
}

{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  else
  {
    v2 = specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  *(v0 + 152) = *(v0 + 16);
  return MEMORY[0x2822009F8](specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:), 0, 0);
}

{
  v12 = v0;
  if (v0[19])
  {
    v1 = v0[5];

    return MEMORY[0x2822009F8](specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:), v1, 0);
  }

  else
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.tabGroup);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[6];
      v5 = v0[7];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136446210;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v11);
      _os_log_impl(&dword_272D1B000, v3, v4, "Did finish observing activeParticipants changes for activity: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x2743D7F00](v8, -1, -1);
      MEMORY[0x2743D7F00](v7, -1, -1);
    }

    v9 = v0[1];

    return v9();
  }
}

{
  specialized CollaborationConnectionManager.setActiveParticipants(_:)(v0[19], &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA34PersonalDeviceCoordinationActivityV15GroupActivities0pT15SessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShyAI11ParticipantVGGGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA34PersonalDeviceCoordinationActivityV15GroupActivities0pT15SessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShyAI11ParticipantVGGGMR, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));

  v1 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Set<Participant>>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_G_GMR, MEMORY[0x277CBCDD0]);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  v3 = v0[14];

  return MEMORY[0x282200308](v0 + 2, v3, v1);
}

{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  GroupSession.$activeParticipants.getter();
  v7 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type Published<Set<Participant>>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMR, MEMORY[0x277CBCEC8]);
  MEMORY[0x2743D7130](v3, v7);
  (*(v2 + 8))(v1, v3);
  AsyncPublisher.makeAsyncIterator()();
  (*(v6 + 8))(v4, v5);
  v8 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Set<Participant>>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_G_GMR, MEMORY[0x277CBCDD0]);
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  v10 = v0[14];

  return MEMORY[0x282200308](v0 + 2, v10, v8);
}

{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  else
  {
    v2 = specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  *(v0 + 152) = *(v0 + 16);
  return MEMORY[0x2822009F8](specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:), 0, 0);
}

{
  v12 = v0;
  if (v0[19])
  {
    v1 = v0[5];

    return MEMORY[0x2822009F8](specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:), v1, 0);
  }

  else
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.tabGroup);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[6];
      v5 = v0[7];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136446210;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v11);
      _os_log_impl(&dword_272D1B000, v3, v4, "Did finish observing activeParticipants changes for activity: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x2743D7F00](v8, -1, -1);
      MEMORY[0x2743D7F00](v7, -1, -1);
    }

    v9 = v0[1];

    return v9();
  }
}

{
  specialized CollaborationConnectionManager.setActiveParticipants(_:)(v0[19], &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA07CKShareD8ActivityVAA0P20GroupSessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShy0R10Activities11ParticipantVGGGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA07CKShareD8ActivityVAA0P20GroupSessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShy0R10Activities11ParticipantVGGGMR, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));

  v1 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Set<Participant>>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_G_GMR, MEMORY[0x277CBCDD0]);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  v3 = v0[14];

  return MEMORY[0x282200308](v0 + 2, v3, v1);
}

{
  *(v0 + 24) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized CollaborationConnectionManager.runGroupSession(_:)(a5);
}

{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized CollaborationConnectionManager.runGroupSession(_:)(a5);
}

uint64_t specialized ThrowingTaskGroup.waitForAll(isolation:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x2822009F8](specialized ThrowingTaskGroup.waitForAll(isolation:), v4, v6);
}

uint64_t specialized ThrowingTaskGroup.waitForAll(isolation:)()
{
  v1 = v0[4];
  v2 = *v1;
  v0[7] = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  v0[8] = v3;
  if (MEMORY[0x2743D7410](v2, MEMORY[0x277D84F78] + 8, v3, MEMORY[0x277D84950]))
  {
    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[9] = 0;
    v6 = swift_task_alloc();
    v0[10] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgyyts5Error_pGMd, &_sScgyyts5Error_pGMR);
    *v6 = v0;
    v6[1] = specialized ThrowingTaskGroup.waitForAll(isolation:);
    v8 = v0[3];
    v9 = v0[2];

    return MEMORY[0x2822004D0](v0 + 12, v9, v8, v7);
  }
}

{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = specialized ThrowingTaskGroup.waitForAll(isolation:);
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = specialized ThrowingTaskGroup.waitForAll(isolation:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 72);
    if (MEMORY[0x2743D7410](*(v0 + 56), MEMORY[0x277D84F78] + 8, *(v0 + 64), MEMORY[0x277D84950]))
    {
      if (v1)
      {
        swift_willThrow();
      }

      v2 = *(v0 + 8);

      return v2();
    }

    *(v0 + 72) = v1;
  }

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgyyts5Error_pGMd, &_sScgyyts5Error_pGMR);
  *v4 = v0;
  v4[1] = specialized ThrowingTaskGroup.waitForAll(isolation:);
  v6 = *(v0 + 24);
  v7 = *(v0 + 16);

  return MEMORY[0x2822004D0](v0 + 96, v7, v6, v5);
}

{
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  if (MEMORY[0x2743D7410](v0[7], MEMORY[0x277D84F78] + 8, v0[8], MEMORY[0x277D84950]))
  {
    if (v1)
    {
      swift_willThrow();
    }

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[9] = v1;
    v4 = swift_task_alloc();
    v0[10] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgyyts5Error_pGMd, &_sScgyyts5Error_pGMR);
    *v4 = v0;
    v4[1] = specialized ThrowingTaskGroup.waitForAll(isolation:);
    v6 = v0[3];
    v7 = v0[2];

    return MEMORY[0x2822004D0](v0 + 12, v7, v6, v5);
  }
}

uint64_t specialized CollaborationConnectionManager.runGroupSession(_:)(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMd, &_sScS12ContinuationV11YieldResultOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMR);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtSgMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtSgMR);
  v2[20] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMd, &_sScS8IteratorVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMR);
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:), 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 232) = a1;

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:), v2, 0);
}

{
  v2[10] = a1;
  v2[11] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMd, &_sScS12ContinuationV11YieldResultOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMR);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtSgMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtSgMR);
  v2[20] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMd, &_sScS8IteratorVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMR);
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:), 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 232) = a1;

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:), v2, 0);
}

uint64_t specialized CollaborationConnectionManager.runGroupSession(_:)()
{
  v11 = v0;
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[24] = __swift_project_value_buffer(v1, static Logger.tabGroup);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    GroupSession.activity.getter();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0[8], v0[9], &v10);

    *(v4 + 4) = v6;
    _os_log_impl(&dword_272D1B000, v2, v3, "Will join group session for activity: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x2743D7F00](v5, -1, -1);
    MEMORY[0x2743D7F00](v4, -1, -1);
  }

  if (one-time initialization token for joinLeaveSessionQueue != -1)
  {
    swift_once();
  }

  v7 = joinLeaveSessionQueue;
  v0[25] = joinLeaveSessionQueue;
  v8 = swift_task_alloc();
  v0[26] = v8;
  *v8 = v0;
  v8[1] = specialized CollaborationConnectionManager.runGroupSession(_:);

  return specialized GroupSession.join(on:)(v7);
}

{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = specialized CollaborationConnectionManager.runGroupSession(_:);
  }

  else
  {
    v2 = specialized CollaborationConnectionManager.runGroupSession(_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v10 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    GroupSession.activity.getter();
    v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0[6], v0[7], &v9);

    *(v3 + 4) = v5;
    _os_log_impl(&dword_272D1B000, v1, v2, "Did join group session for activity: %{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x2743D7F00](v4, -1, -1);
    MEMORY[0x2743D7F00](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA34PersonalDeviceCoordinationActivityVAA21PresenceUpdateMessageVGMd, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA34PersonalDeviceCoordinationActivityVAA21PresenceUpdateMessageVGMR);
  swift_allocObject();

  v6 = swift_task_alloc();
  v0[28] = v6;
  *v6 = v0;
  v6[1] = specialized CollaborationConnectionManager.runGroupSession(_:);
  v7 = v0[10];

  return specialized GroupSessionMessengerController.init(groupSession:)(v7);
}

{
  v15 = v0;
  v1 = v0[27];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[27];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v6 = 136446466;
    GroupSession.activity.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0[2], v0[3], &v14);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2112;
    v10 = v5;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v11;
    *v7 = v11;
    _os_log_impl(&dword_272D1B000, v3, v4, "Failed to join group session for activity: %{public}s, error: %@", v6, 0x16u);
    outlined destroy of TaskPriority?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2743D7F00](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2743D7F00](v8, -1, -1);
    MEMORY[0x2743D7F00](v6, -1, -1);
  }

  v12 = swift_task_alloc();
  v0[35] = v12;
  *v12 = v0;
  v12[1] = specialized CollaborationConnectionManager.runGroupSession(_:);

  return specialized CollaborationConnectionManager.didLeaveGroupSession(_:)();
}

{
  *(*(v0 + 88) + 168) = *(v0 + 232);

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:), 0, 0);
}

{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtGMd, &_sScSy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtGMR);
  AsyncStream.makeAsyncIterator()();

  v0[30] = v0[27];
  v1 = swift_task_alloc();
  v0[31] = v1;
  *v1 = v0;
  v1[1] = specialized CollaborationConnectionManager.runGroupSession(_:);
  v2 = v0[20];
  v3 = v0[21];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

{

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:), 0, 0);
}

{
  v1 = v0[20];
  v2 = v0[15];
  if ((*(v0[16] + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[25];
    v4 = v0[10];
    (*(v0[22] + 8))(v0[23], v0[21]);
    v5 = swift_task_alloc();
    v0[32] = v5;
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = swift_task_alloc();
    v0[33] = v6;
    *v6 = v0;
    v6[1] = specialized CollaborationConnectionManager.runGroupSession(_:);

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v7 = v0[30];
    v8 = v0[19];
    v9 = *(v2 + 48);
    v10 = *(v1 + 48);
    v11 = *(v1 + 16);
    v12 = *(v1 + 32);
    *v8 = *v1;
    *(v8 + 16) = v11;
    *(v8 + 32) = v12;
    *(v8 + 48) = v10;
    v13 = type metadata accessor for GroupSessionMessenger.MessageContext();
    v14 = *(v13 - 8);
    (*(v14 + 32))(v8 + v9, v1 + v9, v13);
    static Task<>.checkCancellation()();
    if (v7)
    {
      v16 = v0[22];
      v15 = v0[23];
      v17 = v0[21];
      v18 = v0[19];

      outlined destroy of TaskPriority?(v18, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
      (*(v16 + 8))(v15, v17);

      v19 = v0[1];

      return v19();
    }

    else
    {
      v21 = v0[18];
      v20 = v0[19];
      v33 = v0[17];
      v34 = v0[14];
      v35 = v0[13];
      v36 = v0[12];
      v22 = *(v0[15] + 48);
      v23 = *v20;
      v24 = *(v20 + 8);
      v25 = *(v20 + 16);
      v26 = *(v20 + 40);
      v27 = *(v20 + 48);
      v32 = *(v20 + 24);
      *v21 = *v20;
      *(v21 + 8) = v24;
      *(v21 + 16) = v25;
      *(v21 + 24) = v32;
      *(v21 + 40) = v26;
      *(v21 + 48) = v27;
      (*(v14 + 16))(v21 + v22, v8 + v9, v13);
      outlined init with copy of TaskPriority?(v21, v33, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
      outlined copy of PresenceUpdateMessage.Kind(v23, v24, v25, v32);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMR);
      AsyncStream.Continuation.yield(_:)();
      outlined destroy of TaskPriority?(v21, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
      (*(v35 + 8))(v34, v36);
      outlined destroy of TaskPriority?(v20, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
      v0[30] = 0;
      v28 = swift_task_alloc();
      v0[31] = v28;
      *v28 = v0;
      v28[1] = specialized CollaborationConnectionManager.runGroupSession(_:);
      v29 = v0[20];
      v30 = v0[21];

      return MEMORY[0x2822003E8](v29, 0, 0, v30);
    }
  }
}

{

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:), 0, 0);
}

{
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = specialized CollaborationConnectionManager.runGroupSession(_:);

  return specialized CollaborationConnectionManager.didLeaveGroupSession(_:)();
}

{

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:), 0, 0);
}

{

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:), 0, 0);
}

{
  v11 = v0;
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[24] = __swift_project_value_buffer(v1, static Logger.tabGroup);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    GroupSession.activity.getter();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0[8], v0[9], &v10);

    *(v4 + 4) = v6;
    _os_log_impl(&dword_272D1B000, v2, v3, "Will join group session for activity: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x2743D7F00](v5, -1, -1);
    MEMORY[0x2743D7F00](v4, -1, -1);
  }

  if (one-time initialization token for joinLeaveSessionQueue != -1)
  {
    swift_once();
  }

  v7 = joinLeaveSessionQueue;
  v0[25] = joinLeaveSessionQueue;
  v8 = swift_task_alloc();
  v0[26] = v8;
  *v8 = v0;
  v8[1] = specialized CollaborationConnectionManager.runGroupSession(_:);

  return specialized GroupSession.join(on:)(v7);
}

{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = specialized CollaborationConnectionManager.runGroupSession(_:);
  }

  else
  {
    v2 = specialized CollaborationConnectionManager.runGroupSession(_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v10 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    GroupSession.activity.getter();
    v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0[6], v0[7], &v9);

    *(v3 + 4) = v5;
    _os_log_impl(&dword_272D1B000, v1, v2, "Did join group session for activity: %{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x2743D7F00](v4, -1, -1);
    MEMORY[0x2743D7F00](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA28CKShareCollaborationActivityVAA21PresenceUpdateMessageVGMd, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA28CKShareCollaborationActivityVAA21PresenceUpdateMessageVGMR);
  swift_allocObject();

  v6 = swift_task_alloc();
  v0[28] = v6;
  *v6 = v0;
  v6[1] = specialized CollaborationConnectionManager.runGroupSession(_:);
  v7 = v0[10];

  return specialized GroupSessionMessengerController.init(groupSession:)(v7);
}

{
  v15 = v0;
  v1 = v0[27];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[27];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v6 = 136446466;
    GroupSession.activity.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0[2], v0[3], &v14);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2112;
    v10 = v5;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v11;
    *v7 = v11;
    _os_log_impl(&dword_272D1B000, v3, v4, "Failed to join group session for activity: %{public}s, error: %@", v6, 0x16u);
    outlined destroy of TaskPriority?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2743D7F00](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2743D7F00](v8, -1, -1);
    MEMORY[0x2743D7F00](v6, -1, -1);
  }

  v12 = swift_task_alloc();
  v0[35] = v12;
  *v12 = v0;
  v12[1] = specialized CollaborationConnectionManager.runGroupSession(_:);

  return specialized CollaborationConnectionManager.didLeaveGroupSession(_:)();
}

{
  *(*(v0 + 88) + 168) = *(v0 + 232);

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:), 0, 0);
}

{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtGMd, &_sScSy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtGMR);
  AsyncStream.makeAsyncIterator()();

  v0[30] = v0[27];
  v1 = swift_task_alloc();
  v0[31] = v1;
  *v1 = v0;
  v1[1] = specialized CollaborationConnectionManager.runGroupSession(_:);
  v2 = v0[20];
  v3 = v0[21];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

{

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:), 0, 0);
}

{
  v1 = v0[20];
  v2 = v0[15];
  if ((*(v0[16] + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[25];
    v4 = v0[10];
    (*(v0[22] + 8))(v0[23], v0[21]);
    v5 = swift_task_alloc();
    v0[32] = v5;
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = swift_task_alloc();
    v0[33] = v6;
    *v6 = v0;
    v6[1] = specialized CollaborationConnectionManager.runGroupSession(_:);

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v7 = v0[30];
    v8 = v0[19];
    v9 = *(v2 + 48);
    v10 = *(v1 + 48);
    v11 = *(v1 + 16);
    v12 = *(v1 + 32);
    *v8 = *v1;
    *(v8 + 16) = v11;
    *(v8 + 32) = v12;
    *(v8 + 48) = v10;
    v13 = type metadata accessor for GroupSessionMessenger.MessageContext();
    v14 = *(v13 - 8);
    (*(v14 + 32))(v8 + v9, v1 + v9, v13);
    static Task<>.checkCancellation()();
    if (v7)
    {
      v16 = v0[22];
      v15 = v0[23];
      v17 = v0[21];
      v18 = v0[19];

      outlined destroy of TaskPriority?(v18, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
      (*(v16 + 8))(v15, v17);

      v19 = v0[1];

      return v19();
    }

    else
    {
      v21 = v0[18];
      v20 = v0[19];
      v33 = v0[17];
      v34 = v0[14];
      v35 = v0[13];
      v36 = v0[12];
      v22 = *(v0[15] + 48);
      v23 = *v20;
      v24 = *(v20 + 8);
      v25 = *(v20 + 16);
      v26 = *(v20 + 40);
      v27 = *(v20 + 48);
      v32 = *(v20 + 24);
      *v21 = *v20;
      *(v21 + 8) = v24;
      *(v21 + 16) = v25;
      *(v21 + 24) = v32;
      *(v21 + 40) = v26;
      *(v21 + 48) = v27;
      (*(v14 + 16))(v21 + v22, v8 + v9, v13);
      outlined init with copy of TaskPriority?(v21, v33, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
      outlined copy of PresenceUpdateMessage.Kind(v23, v24, v25, v32);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMR);
      AsyncStream.Continuation.yield(_:)();
      outlined destroy of TaskPriority?(v21, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
      (*(v35 + 8))(v34, v36);
      outlined destroy of TaskPriority?(v20, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
      v0[30] = 0;
      v28 = swift_task_alloc();
      v0[31] = v28;
      *v28 = v0;
      v28[1] = specialized CollaborationConnectionManager.runGroupSession(_:);
      v29 = v0[20];
      v30 = v0[21];

      return MEMORY[0x2822003E8](v29, 0, 0, v30);
    }
  }
}

{

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:), 0, 0);
}

{
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = specialized CollaborationConnectionManager.runGroupSession(_:);

  return specialized CollaborationConnectionManager.didLeaveGroupSession(_:)();
}

{

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:), 0, 0);
}

{
  v9 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136446210;
    GroupSession.activity.getter();
    v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0[4], v0[5], &v8);

    *(v3 + 4) = v5;
    _os_log_impl(&dword_272D1B000, v1, v2, "Did finish running group session for activity: %{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x2743D7F00](v4, -1, -1);
    MEMORY[0x2743D7F00](v3, -1, -1);
  }

  static Task<>.checkCancellation()();

  v6 = v0[1];

  return v6();
}

{

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized GroupSession.join(on:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMR);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized GroupSession.join(on:), 0, 0);
}

{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMR);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized GroupSession.join(on:), 0, 0);
}

uint64_t specialized GroupSession.join(on:)()
{
  v1 = v0[5];
  v2 = v0[2];
  *v1 = v0[3];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy15GroupActivities0C7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAF34PersonalDeviceCoordinationActivityV_GSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCy15GroupActivities0C7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAF34PersonalDeviceCoordinationActivityV_GSo16os_unfair_lock_sVGMR);
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + ((*(*v3 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  outlined init with copy of TaskPriority?(v1, v3 + *(*v3 + *MEMORY[0x277D841D0] + 16), &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMR);

  outlined destroy of TaskPriority?(v1, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMR);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = specialized GroupSession.join(on:);

  return MEMORY[0x282200830]();
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = specialized GroupSession.join(on:);
  }

  else
  {

    v2 = specialized GroupSession.join(on:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 48);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(v1 + *(*v1 + *MEMORY[0x277D841D0] + 16), &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMR);
  swift_deallocClassInstance();

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 48);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(v1 + *(*v1 + *MEMORY[0x277D841D0] + 16), &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMR);
  swift_deallocClassInstance();

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[5];
  v2 = v0[2];
  *v1 = v0[3];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy15GroupActivities0C7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAF28CKShareCollaborationActivityV_GSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCy15GroupActivities0C7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAF28CKShareCollaborationActivityV_GSo16os_unfair_lock_sVGMR);
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + ((*(*v3 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  outlined init with copy of TaskPriority?(v1, v3 + *(*v3 + *MEMORY[0x277D841D0] + 16), &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMR);

  outlined destroy of TaskPriority?(v1, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMR);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = specialized GroupSession.join(on:);

  return MEMORY[0x282200830]();
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = specialized GroupSession.join(on:);
  }

  else
  {

    v2 = specialized GroupSession.join(on:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 48);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(v1 + *(*v1 + *MEMORY[0x277D841D0] + 16), &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMR);
  swift_deallocClassInstance();

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 48);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(v1 + *(*v1 + *MEMORY[0x277D841D0] + 16), &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMR);
  swift_deallocClassInstance();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15GroupActivities08PersonalE15SessionProviderCy17WebBookmarksSwift0G26DeviceCoordinationActivityVG_Tt2g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v27[0] = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v27 - v14;
  outlined init with copy of TaskPriority?(a3, v27 - v14, &_sScPSgMd, &_sScPSgMR);
  v16 = type metadata accessor for TaskPriority();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 1, v16);

  if (v18 == 1)
  {
    outlined destroy of TaskPriority?(v15, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v17 + 8))(v15, v16);
  }

  v19 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    v22 = v21;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23 = String.utf8CString.getter() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
      v24 = (v22 | v20);
      if (v22 | v20)
      {
        v28[0] = 0;
        v28[1] = 0;
        v24 = v28;
        v28[2] = v20;
        v28[3] = v22;
      }

      v27[1] = 7;
      v27[2] = v24;
      v27[3] = v23;
      v25 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);

      return v25;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  if (v22 | v20)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v20;
    v28[7] = v22;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  outlined init with copy of TaskPriority?(a3, v23 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);

      return v21;
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

  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t specialized closure #2 in FastSyncStateMachine.leaveActivity(priority:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](specialized closure #2 in FastSyncStateMachine.leaveActivity(priority:_:), 0, 0);
}

{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](specialized closure #2 in FastSyncStateMachine.leaveActivity(priority:_:), 0, 0);
}

uint64_t specialized closure #2 in FastSyncStateMachine.leaveActivity(priority:_:)()
{
  v1 = v0[3];
  MEMORY[0x2743D73C0](v0[2], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = specialized closure #2 in FastSyncStateMachine.leaveActivity(priority:_:);
  v3 = v0[5];

  return v5(v3);
}

{
  v1 = v0[3];
  MEMORY[0x2743D73C0](v0[2], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = specialized closure #2 in FastSyncStateMachine.leaveActivity(priority:_:);
  v3 = v0[5];

  return v5(v3);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v8 = swift_task_alloc();
  v6[5] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  *v8 = v6;
  v8[1] = specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:);
  v11 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v6 + 2, a4, v9, v10, v11);
}

{
  v6[3] = a5;
  v6[4] = a6;
  v8 = swift_task_alloc();
  v6[5] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  *v8 = v6;
  v8[1] = specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:);
  v11 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v6 + 2, a4, v9, v10, v11);
}

uint64_t specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:)()
{

  if (v0)
  {

    v1 = specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:);
  }

  else
  {
    v1 = specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:);
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

{
  v2 = v0[2];
  v1 = v0[3];
  v0[6] = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:);

  return v5(v2);
}

{

  return MEMORY[0x2822009F8](specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:), 0, 0);
}

{

  if (v0)
  {

    v1 = specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:);
  }

  else
  {
    v1 = specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:);
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

{
  v2 = v0[2];
  v1 = v0[3];
  v0[6] = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:);

  return v5(v2);
}

{

  return MEMORY[0x2822009F8](specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  return (*(v0 + 8))();
}

void *specialized Array.append<A>(contentsOf:)(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTyyts5NeverOGMd, &_sScTyyts5NeverOGMR);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized GroupSessionMessengerController._makeTasks()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v23[-1] - v4;
  GroupSession.activity.getter();
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.tabGroup);
  v8 = v23[1];
  v7 = v23[2];
  swift_bridgeObjectRetain_n();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23[0] = v12;
    *v11 = 136446210;

    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v23);
    _os_log_impl(&dword_272D1B000, v9, v10, "Setting up message subscription tasks for activity %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x2743D7F00](v12, -1, -1);
    MEMORY[0x2743D7F00](v11, -1, -1);
  }

  else
  {
  }

  v13 = type metadata accessor for TaskPriority();
  v14 = *(*(v13 - 8) + 56);
  v14(v5, 1, 1, v13);
  v15 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSessionMessengerController<PersonalDeviceCoordinationActivity, PresenceUpdateMessage> and conformance GroupSessionMessengerController<A, B>, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA34PersonalDeviceCoordinationActivityVAA21PresenceUpdateMessageVGMd, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA34PersonalDeviceCoordinationActivityVAA21PresenceUpdateMessageVGMR, &protocol conformance descriptor for GroupSessionMessengerController<A, B>);
  v16 = swift_allocObject();
  v16[2] = v1;
  v16[3] = v15;
  v16[4] = v1;
  v16[5] = v8;
  v16[6] = v7;
  swift_retain_n();

  v17 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for specialized closure #1 in GroupSessionMessengerController._makeTasks(), v16);
  v14(v5, 1, 1, v13);
  v18 = swift_allocObject();
  v18[2] = v1;
  v18[3] = v15;
  v18[4] = v1;
  v18[5] = v8;
  v18[6] = v7;
  swift_retain_n();
  v19 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for specialized closure #2 in GroupSessionMessengerController._makeTasks(), v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_272D66CB0;
  *(v20 + 32) = v17;
  *(v20 + 40) = v19;

  return v20;
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v23[-1] - v4;
  GroupSession.activity.getter();
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.tabGroup);
  v8 = v23[1];
  v7 = v23[2];
  swift_bridgeObjectRetain_n();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23[0] = v12;
    *v11 = 136446210;

    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v23);
    _os_log_impl(&dword_272D1B000, v9, v10, "Setting up message subscription tasks for activity %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x2743D7F00](v12, -1, -1);
    MEMORY[0x2743D7F00](v11, -1, -1);
  }

  else
  {
  }

  v13 = type metadata accessor for TaskPriority();
  v14 = *(*(v13 - 8) + 56);
  v14(v5, 1, 1, v13);
  v15 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSessionMessengerController<CKShareCollaborationActivity, PresenceUpdateMessage> and conformance GroupSessionMessengerController<A, B>, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA28CKShareCollaborationActivityVAA21PresenceUpdateMessageVGMd, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA28CKShareCollaborationActivityVAA21PresenceUpdateMessageVGMR, &protocol conformance descriptor for GroupSessionMessengerController<A, B>);
  v16 = swift_allocObject();
  v16[2] = v1;
  v16[3] = v15;
  v16[4] = v1;
  v16[5] = v8;
  v16[6] = v7;
  swift_retain_n();

  v17 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for specialized closure #1 in GroupSessionMessengerController._makeTasks(), v16);
  v14(v5, 1, 1, v13);
  v18 = swift_allocObject();
  v18[2] = v1;
  v18[3] = v15;
  v18[4] = v1;
  v18[5] = v8;
  v18[6] = v7;
  swift_retain_n();
  v19 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for specialized closure #2 in GroupSessionMessengerController._makeTasks(), v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_272D66CB0;
  *(v20 + 32) = v17;
  *(v20 + 40) = v19;

  return v20;
}

uint64_t specialized closure #1 in GroupSessionMessengerController._makeTasks()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
  v6[6] = v8;
  v6[7] = *(v8 - 8);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMd, &_sScS12ContinuationV11YieldResultOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMR);
  v6[10] = v9;
  v6[11] = *(v9 - 8);
  v6[12] = swift_task_alloc();
  v10 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v6[13] = v10;
  v6[14] = *(v10 - 8);
  v6[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtSgMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtSgMR);
  v6[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC8MessagesVy_17WebBookmarksSwift21PresenceUpdateMessageVGMd, &_s15GroupActivities0A16SessionMessengerC8MessagesVy_17WebBookmarksSwift21PresenceUpdateMessageVGMR);
  v6[17] = v11;
  v6[18] = *(v11 - 8);
  v6[19] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_17WebBookmarksSwift21PresenceUpdateMessageV_GMd, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_17WebBookmarksSwift21PresenceUpdateMessageV_GMR);
  v6[20] = v12;
  v6[21] = *(v12 - 8);
  v6[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in GroupSessionMessengerController._makeTasks(), a4, 0);
}

{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
  v6[6] = v8;
  v6[7] = *(v8 - 8);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMd, &_sScS12ContinuationV11YieldResultOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMR);
  v6[10] = v9;
  v6[11] = *(v9 - 8);
  v6[12] = swift_task_alloc();
  v10 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v6[13] = v10;
  v6[14] = *(v10 - 8);
  v6[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtSgMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtSgMR);
  v6[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC8MessagesVy_17WebBookmarksSwift21PresenceUpdateMessageVGMd, &_s15GroupActivities0A16SessionMessengerC8MessagesVy_17WebBookmarksSwift21PresenceUpdateMessageVGMR);
  v6[17] = v11;
  v6[18] = *(v11 - 8);
  v6[19] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_17WebBookmarksSwift21PresenceUpdateMessageV_GMd, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_17WebBookmarksSwift21PresenceUpdateMessageV_GMR);
  v6[20] = v12;
  v6[21] = *(v12 - 8);
  v6[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in GroupSessionMessengerController._makeTasks(), a4, 0);
}

uint64_t specialized closure #1 in GroupSessionMessengerController._makeTasks()()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  GroupSessionMessenger.messages<A>(of:)();
  GroupSessionMessenger.Messages.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[23] = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSessionMessengerController<PersonalDeviceCoordinationActivity, PresenceUpdateMessage> and conformance GroupSessionMessengerController<A, B>, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA34PersonalDeviceCoordinationActivityVAA21PresenceUpdateMessageVGMd, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA34PersonalDeviceCoordinationActivityVAA21PresenceUpdateMessageVGMR, &protocol conformance descriptor for GroupSessionMessengerController<A, B>);
  v4 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSessionMessenger.Messages<PresenceUpdateMessage>.Iterator and conformance GroupSessionMessenger.Messages<A>.Iterator, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_17WebBookmarksSwift21PresenceUpdateMessageV_GMd, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_17WebBookmarksSwift21PresenceUpdateMessageV_GMR, MEMORY[0x277CCB198]);
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = specialized closure #1 in GroupSessionMessengerController._makeTasks();
  v6 = v0[20];
  v7 = v0[16];

  return MEMORY[0x282200308](v7, v6, v4);
}

{
  *(*v1 + 200) = v0;

  swift_getObjectType();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = specialized closure #1 in GroupSessionMessengerController._makeTasks();
  }

  else
  {
    v4 = specialized closure #1 in GroupSessionMessengerController._makeTasks();
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

{
  return MEMORY[0x2822009F8](specialized closure #1 in GroupSessionMessengerController._makeTasks(), *(v0 + 24), 0);
}

{
  v54 = v0;
  v1 = v0[16];
  v2 = v0[6];
  if ((*(v0[7] + 48))(v1, 1, v2) == 1)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);
LABEL_13:

    v28 = v0[1];

    return v28();
  }

  v3 = *(v2 + 48);
  v50 = *v1;
  v51 = v1[1];
  v4 = v1[3];
  v52 = v1[2];
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  (*(v0[14] + 32))(v0[15], v1 + v3, v0[13]);
  if (static Task<>.isCancelled.getter())
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.tabGroup);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[21];
    v12 = v0[22];
    v43 = v0[15];
    v45 = v0[20];
    v14 = v0[13];
    v15 = v0[5];
    v16 = (v0[14] + 8);
    if (v11)
    {
      v17 = v0[4];
      v47 = v4;
      v18 = swift_slowAlloc();
      v42 = v12;
      v19 = swift_slowAlloc();
      v53 = v19;
      *v18 = 136446210;

      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v15, &v53);
      _os_log_impl(&dword_272D1B000, v9, v10, "Did cancel receiving message subscription for activity %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x2743D7F00](v19, -1, -1);
      MEMORY[0x2743D7F00](v18, -1, -1);

      outlined consume of PresenceUpdateMessage.Kind(v50, v51, v52, v47);

      (*v16)(v43, v14);
      (*(v13 + 8))(v42, v45);
    }

    else
    {

      outlined consume of PresenceUpdateMessage.Kind(v50, v51, v52, v4);

      (*v16)(v43, v14);
      (*(v13 + 8))(v12, v45);
    }

    goto LABEL_13;
  }

  v46 = v5;
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v48 = v4;
  v49 = v7;
  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.tabGroup);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[5];
  if (v23)
  {
    v25 = v0[4];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v53 = v27;
    *v26 = 136446210;

    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, &v53);
    _os_log_impl(&dword_272D1B000, v21, v22, "Did receive message for activity %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x2743D7F00](v27, -1, -1);
    MEMORY[0x2743D7F00](v26, -1, -1);
  }

  else
  {
  }

  v31 = v0[14];
  v30 = v0[15];
  v32 = v0[12];
  v33 = v0[13];
  v34 = v0[11];
  v44 = v0[10];
  v36 = v0[8];
  v35 = v0[9];
  v37 = *(v0[6] + 48);
  *v35 = v50;
  v35[1] = v51;
  v35[2] = v52;
  v35[3] = v48;
  v35[4] = v6;
  v35[5] = v46;
  v35[6] = v49;
  (*(v31 + 16))(v35 + v37, v30, v33);
  outlined init with copy of TaskPriority?(v35, v36, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMR);
  AsyncStream.Continuation.yield(_:)();
  outlined destroy of TaskPriority?(v35, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
  (*(v34 + 8))(v32, v44);
  (*(v31 + 8))(v30, v33);
  v38 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSessionMessenger.Messages<PresenceUpdateMessage>.Iterator and conformance GroupSessionMessenger.Messages<A>.Iterator, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_17WebBookmarksSwift21PresenceUpdateMessageV_GMd, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_17WebBookmarksSwift21PresenceUpdateMessageV_GMR, MEMORY[0x277CCB198]);
  v39 = swift_task_alloc();
  v0[24] = v39;
  *v39 = v0;
  v39[1] = specialized closure #1 in GroupSessionMessengerController._makeTasks();
  v40 = v0[20];
  v41 = v0[16];

  return MEMORY[0x282200308](v41, v40, v38);
}

{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  GroupSessionMessenger.messages<A>(of:)();
  GroupSessionMessenger.Messages.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[23] = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSessionMessengerController<CKShareCollaborationActivity, PresenceUpdateMessage> and conformance GroupSessionMessengerController<A, B>, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA28CKShareCollaborationActivityVAA21PresenceUpdateMessageVGMd, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA28CKShareCollaborationActivityVAA21PresenceUpdateMessageVGMR, &protocol conformance descriptor for GroupSessionMessengerController<A, B>);
  v4 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSessionMessenger.Messages<PresenceUpdateMessage>.Iterator and conformance GroupSessionMessenger.Messages<A>.Iterator, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_17WebBookmarksSwift21PresenceUpdateMessageV_GMd, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_17WebBookmarksSwift21PresenceUpdateMessageV_GMR, MEMORY[0x277CCB198]);
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = specialized closure #1 in GroupSessionMessengerController._makeTasks();
  v6 = v0[20];
  v7 = v0[16];

  return MEMORY[0x282200308](v7, v6, v4);
}

{
  *(*v1 + 200) = v0;

  swift_getObjectType();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = specialized closure #1 in GroupSessionMessengerController._makeTasks();
  }

  else
  {
    v4 = specialized closure #1 in GroupSessionMessengerController._makeTasks();
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

{
  return MEMORY[0x2822009F8](specialized closure #1 in GroupSessionMessengerController._makeTasks(), *(v0 + 24), 0);
}

{
  v54 = v0;
  v1 = v0[16];
  v2 = v0[6];
  if ((*(v0[7] + 48))(v1, 1, v2) == 1)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);
LABEL_13:

    v28 = v0[1];

    return v28();
  }

  v3 = *(v2 + 48);
  v50 = *v1;
  v51 = v1[1];
  v4 = v1[3];
  v52 = v1[2];
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  (*(v0[14] + 32))(v0[15], v1 + v3, v0[13]);
  if (static Task<>.isCancelled.getter())
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.tabGroup);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[21];
    v12 = v0[22];
    v43 = v0[15];
    v45 = v0[20];
    v14 = v0[13];
    v15 = v0[5];
    v16 = (v0[14] + 8);
    if (v11)
    {
      v17 = v0[4];
      v47 = v4;
      v18 = swift_slowAlloc();
      v42 = v12;
      v19 = swift_slowAlloc();
      v53 = v19;
      *v18 = 136446210;

      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v15, &v53);
      _os_log_impl(&dword_272D1B000, v9, v10, "Did cancel receiving message subscription for activity %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x2743D7F00](v19, -1, -1);
      MEMORY[0x2743D7F00](v18, -1, -1);

      outlined consume of PresenceUpdateMessage.Kind(v50, v51, v52, v47);

      (*v16)(v43, v14);
      (*(v13 + 8))(v42, v45);
    }

    else
    {

      outlined consume of PresenceUpdateMessage.Kind(v50, v51, v52, v4);

      (*v16)(v43, v14);
      (*(v13 + 8))(v12, v45);
    }

    goto LABEL_13;
  }

  v46 = v5;
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v48 = v4;
  v49 = v7;
  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.tabGroup);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[5];
  if (v23)
  {
    v25 = v0[4];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v53 = v27;
    *v26 = 136446210;

    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, &v53);
    _os_log_impl(&dword_272D1B000, v21, v22, "Did receive message for activity %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x2743D7F00](v27, -1, -1);
    MEMORY[0x2743D7F00](v26, -1, -1);
  }

  else
  {
  }

  v31 = v0[14];
  v30 = v0[15];
  v32 = v0[12];
  v33 = v0[13];
  v34 = v0[11];
  v44 = v0[10];
  v36 = v0[8];
  v35 = v0[9];
  v37 = *(v0[6] + 48);
  *v35 = v50;
  v35[1] = v51;
  v35[2] = v52;
  v35[3] = v48;
  v35[4] = v6;
  v35[5] = v46;
  v35[6] = v49;
  (*(v31 + 16))(v35 + v37, v30, v33);
  outlined init with copy of TaskPriority?(v35, v36, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMR);
  AsyncStream.Continuation.yield(_:)();
  outlined destroy of TaskPriority?(v35, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
  (*(v34 + 8))(v32, v44);
  (*(v31 + 8))(v30, v33);
  v38 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSessionMessenger.Messages<PresenceUpdateMessage>.Iterator and conformance GroupSessionMessenger.Messages<A>.Iterator, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_17WebBookmarksSwift21PresenceUpdateMessageV_GMd, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_17WebBookmarksSwift21PresenceUpdateMessageV_GMR, MEMORY[0x277CCB198]);
  v39 = swift_task_alloc();
  v0[24] = v39;
  *v39 = v0;
  v39[1] = specialized closure #1 in GroupSessionMessengerController._makeTasks();
  v40 = v0[20];
  v41 = v0[16];

  return MEMORY[0x282200308](v41, v40, v38);
}

{
  *(v0 + 16) = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t specialized closure #2 in GroupSessionMessengerController._makeTasks()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v8 = type metadata accessor for Participants();
  v6[19] = v8;
  v6[20] = *(v8 - 8);
  v6[21] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy17WebBookmarksSwift21PresenceUpdateMessageV_GMd, &_sScS8IteratorVy17WebBookmarksSwift21PresenceUpdateMessageV_GMR);
  v6[22] = v9;
  v6[23] = *(v9 - 8);
  v6[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #2 in GroupSessionMessengerController._makeTasks(), a4, 0);
}

{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v8 = type metadata accessor for Participants();
  v6[19] = v8;
  v6[20] = *(v8 - 8);
  v6[21] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy17WebBookmarksSwift21PresenceUpdateMessageV_GMd, &_sScS8IteratorVy17WebBookmarksSwift21PresenceUpdateMessageV_GMR);
  v6[22] = v9;
  v6[23] = *(v9 - 8);
  v6[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #2 in GroupSessionMessengerController._makeTasks(), a4, 0);
}

uint64_t specialized closure #2 in GroupSessionMessengerController._makeTasks()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17WebBookmarksSwift21PresenceUpdateMessageVGMd, &_sScSy17WebBookmarksSwift21PresenceUpdateMessageVGMR);
  AsyncStream.makeAsyncIterator()();
  v1 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSessionMessengerController<PersonalDeviceCoordinationActivity, PresenceUpdateMessage> and conformance GroupSessionMessengerController<A, B>, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA34PersonalDeviceCoordinationActivityVAA21PresenceUpdateMessageVGMd, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA34PersonalDeviceCoordinationActivityVAA21PresenceUpdateMessageVGMR, &protocol conformance descriptor for GroupSessionMessengerController<A, B>);
  *(v0 + 200) = v1;
  *(v0 + 240) = *MEMORY[0x277CCB260];
  v2 = *(v0 + 128);
  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  *v3 = v0;
  v3[1] = specialized closure #2 in GroupSessionMessengerController._makeTasks();
  v4 = *(v0 + 176);

  return MEMORY[0x2822003E8](v0 + 16, v2, v1, v4);
}

{
  v1 = *(*v0 + 128);

  return MEMORY[0x2822009F8](specialized closure #2 in GroupSessionMessengerController._makeTasks(), v1, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  *(*v1 + 232) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = specialized closure #2 in GroupSessionMessengerController._makeTasks();
  }

  else
  {
    v7 = specialized closure #2 in GroupSessionMessengerController._makeTasks();
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v14 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[18];
  if (v3)
  {
    v5 = v0[17];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;

    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v13);
    _os_log_impl(&dword_272D1B000, v1, v2, "Did send message to activity %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2743D7F00](v7, -1, -1);
    MEMORY[0x2743D7F00](v6, -1, -1);
  }

  else
  {
  }

  outlined consume of PresenceUpdateMessage.Kind(v0[9], v0[10], v0[11], v0[12]);

  v8 = v0[25];
  v9 = v0[16];
  v10 = swift_task_alloc();
  v0[26] = v10;
  *v10 = v0;
  v10[1] = specialized closure #2 in GroupSessionMessengerController._makeTasks();
  v11 = v0[22];

  return MEMORY[0x2822003E8](v0 + 2, v9, v8, v11);
}

{
  v21 = v0;
  v1 = v0[29];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[29];
  v7 = v0[18];
  if (v5)
  {
    v8 = v0[17];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v9 = 136446466;
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v20);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2112;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v14;
    *v10 = v14;
    _os_log_impl(&dword_272D1B000, v3, v4, "Failed to send message to activity %{public}s with error: %@", v9, 0x16u);
    outlined destroy of TaskPriority?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2743D7F00](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2743D7F00](v11, -1, -1);
    MEMORY[0x2743D7F00](v9, -1, -1);
  }

  else
  {
  }

  outlined consume of PresenceUpdateMessage.Kind(v0[9], v0[10], v0[11], v0[12]);

  v15 = v0[25];
  v16 = v0[16];
  v17 = swift_task_alloc();
  v0[26] = v17;
  *v17 = v0;
  v17[1] = specialized closure #2 in GroupSessionMessengerController._makeTasks();
  v18 = v0[22];

  return MEMORY[0x2822003E8](v0 + 2, v16, v15, v18);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17WebBookmarksSwift21PresenceUpdateMessageVGMd, &_sScSy17WebBookmarksSwift21PresenceUpdateMessageVGMR);
  AsyncStream.makeAsyncIterator()();
  v1 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSessionMessengerController<CKShareCollaborationActivity, PresenceUpdateMessage> and conformance GroupSessionMessengerController<A, B>, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA28CKShareCollaborationActivityVAA21PresenceUpdateMessageVGMd, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA28CKShareCollaborationActivityVAA21PresenceUpdateMessageVGMR, &protocol conformance descriptor for GroupSessionMessengerController<A, B>);
  *(v0 + 200) = v1;
  *(v0 + 240) = *MEMORY[0x277CCB260];
  v2 = *(v0 + 128);
  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  *v3 = v0;
  v3[1] = specialized closure #2 in GroupSessionMessengerController._makeTasks();
  v4 = *(v0 + 176);

  return MEMORY[0x2822003E8](v0 + 16, v2, v1, v4);
}

{
  v1 = *(*v0 + 128);

  return MEMORY[0x2822009F8](specialized closure #2 in GroupSessionMessengerController._makeTasks(), v1, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  *(*v1 + 232) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = specialized closure #2 in GroupSessionMessengerController._makeTasks();
  }

  else
  {
    v7 = specialized closure #2 in GroupSessionMessengerController._makeTasks();
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v14 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[18];
  if (v3)
  {
    v5 = v0[17];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;

    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v13);
    _os_log_impl(&dword_272D1B000, v1, v2, "Did send message to activity %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2743D7F00](v7, -1, -1);
    MEMORY[0x2743D7F00](v6, -1, -1);
  }

  else
  {
  }

  outlined consume of PresenceUpdateMessage.Kind(v0[9], v0[10], v0[11], v0[12]);

  v8 = v0[25];
  v9 = v0[16];
  v10 = swift_task_alloc();
  v0[26] = v10;
  *v10 = v0;
  v10[1] = specialized closure #2 in GroupSessionMessengerController._makeTasks();
  v11 = v0[22];

  return MEMORY[0x2822003E8](v0 + 2, v9, v8, v11);
}

{
  v21 = v0;
  v1 = v0[29];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[29];
  v7 = v0[18];
  if (v5)
  {
    v8 = v0[17];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v9 = 136446466;
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v20);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2112;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v14;
    *v10 = v14;
    _os_log_impl(&dword_272D1B000, v3, v4, "Failed to send message to activity %{public}s with error: %@", v9, 0x16u);
    outlined destroy of TaskPriority?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2743D7F00](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2743D7F00](v11, -1, -1);
    MEMORY[0x2743D7F00](v9, -1, -1);
  }

  else
  {
  }

  outlined consume of PresenceUpdateMessage.Kind(v0[9], v0[10], v0[11], v0[12]);

  v15 = v0[25];
  v16 = v0[16];
  v17 = swift_task_alloc();
  v0[26] = v17;
  *v17 = v0;
  v17[1] = specialized closure #2 in GroupSessionMessengerController._makeTasks();
  v18 = v0[22];

  return MEMORY[0x2822003E8](v0 + 2, v16, v15, v18);
}

uint64_t specialized closure #2 in GroupSessionMessengerController._makeTasks()(uint64_t a1)
{
  v30 = v1;
  v2 = *(v1 + 64);
  if (!v2)
  {
    (*(*(v1 + 184) + 8))(*(v1 + 192), *(v1 + 176));
LABEL_14:

    v23 = *(v1 + 8);

    return v23();
  }

  v3 = *(v1 + 32);
  *(v1 + 72) = *(v1 + 16);
  *(v1 + 88) = v3;
  *(v1 + 104) = *(v1 + 48);
  *(v1 + 120) = v2;
  if (static Task<>.isCancelled.getter())
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.tabGroup);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v1 + 184);
    v8 = *(v1 + 192);
    v10 = *(v1 + 176);
    v11 = *(v1 + 144);
    if (v7)
    {
      v12 = *(v1 + 136);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29 = v14;
      *v13 = 136446210;

      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v29);
      _os_log_impl(&dword_272D1B000, v5, v6, "Did cancel sending message subscription for activity %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x2743D7F00](v14, -1, -1);
      MEMORY[0x2743D7F00](v13, -1, -1);
    }

    else
    {
    }

    outlined consume of PresenceUpdateMessage.Kind(*(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96));

    (*(v9 + 8))(v8, v10);
    goto LABEL_14;
  }

  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  *(v1 + 216) = __swift_project_value_buffer(v15, static Logger.tabGroup);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v1 + 144);
  if (v18)
  {
    v20 = *(v1 + 136);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29 = v22;
    *v21 = 136446210;

    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, &v29);
    _os_log_impl(&dword_272D1B000, v16, v17, "Will send message to activity %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x2743D7F00](v22, -1, -1);
    MEMORY[0x2743D7F00](v21, -1, -1);
  }

  else
  {
  }

  (*(*(v1 + 160) + 104))(*(v1 + 168), *(v1 + 240), *(v1 + 152));
  v25 = swift_task_alloc();
  *(v1 + 224) = v25;
  updated = lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  v27 = lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  *v25 = v1;
  v25[1] = specialized closure #2 in GroupSessionMessengerController._makeTasks();
  v28 = *(v1 + 168);

  return MEMORY[0x28211FC98](v1 + 72, v28, &type metadata for PresenceUpdateMessage, updated, v27);
}

{
  v30 = v1;
  v2 = *(v1 + 64);
  if (!v2)
  {
    (*(*(v1 + 184) + 8))(*(v1 + 192), *(v1 + 176));
LABEL_14:

    v23 = *(v1 + 8);

    return v23();
  }

  v3 = *(v1 + 32);
  *(v1 + 72) = *(v1 + 16);
  *(v1 + 88) = v3;
  *(v1 + 104) = *(v1 + 48);
  *(v1 + 120) = v2;
  if (static Task<>.isCancelled.getter())
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.tabGroup);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v1 + 184);
    v8 = *(v1 + 192);
    v10 = *(v1 + 176);
    v11 = *(v1 + 144);
    if (v7)
    {
      v12 = *(v1 + 136);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29 = v14;
      *v13 = 136446210;

      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v29);
      _os_log_impl(&dword_272D1B000, v5, v6, "Did cancel sending message subscription for activity %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x2743D7F00](v14, -1, -1);
      MEMORY[0x2743D7F00](v13, -1, -1);
    }

    else
    {
    }

    outlined consume of PresenceUpdateMessage.Kind(*(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96));

    (*(v9 + 8))(v8, v10);
    goto LABEL_14;
  }

  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  *(v1 + 216) = __swift_project_value_buffer(v15, static Logger.tabGroup);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v1 + 144);
  if (v18)
  {
    v20 = *(v1 + 136);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29 = v22;
    *v21 = 136446210;

    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, &v29);
    _os_log_impl(&dword_272D1B000, v16, v17, "Will send message to activity %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x2743D7F00](v22, -1, -1);
    MEMORY[0x2743D7F00](v21, -1, -1);
  }

  else
  {
  }

  (*(*(v1 + 160) + 104))(*(v1 + 168), *(v1 + 240), *(v1 + 152));
  v25 = swift_task_alloc();
  *(v1 + 224) = v25;
  updated = lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  v27 = lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  *v25 = v1;
  v25[1] = specialized closure #2 in GroupSessionMessengerController._makeTasks();
  v28 = *(v1 + 168);

  return MEMORY[0x28211FC98](v1 + 72, v28, &type metadata for PresenceUpdateMessage, updated, v27);
}

uint64_t specialized GroupSessionMessengerController.finish()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMR);
  AsyncStream.Continuation.finish()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GMR);
  AsyncStream.Continuation.finish()();
  swift_beginAccess();
  v1 = *(*(v0 + 144) + 16);
  if (v1)
  {

    v2 = 32;
    v3 = MEMORY[0x277D84F78];
    v4 = MEMORY[0x277D84A98];
    v5 = MEMORY[0x277D84AC0];
    do
    {

      MEMORY[0x2743D73C0](v6, v3 + 8, v4, v5);

      v2 += 8;
      --v1;
    }

    while (v1);
  }

  *(v0 + 144) = MEMORY[0x277D84F90];
}

uint64_t ParticipantPresenceCoordinator.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ParticipantPresenceCoordinator.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____WBParticipantPresenceCoordinator_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return ParticipantPresenceCoordinator.delegate.modify;
}

void ParticipantPresenceCoordinator.delegate.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t ParticipantPresenceCoordinator.ConnectionManagerStore.sharedConnectionManager(forTabGroup:)(uint64_t a1, unint64_t a2)
{
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.tabGroup);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27[0] = v9;
    *v8 = 136446466;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v27);
    *(v8 + 12) = 1026;
    swift_beginAccess();
    v10 = *(*(v2 + 136) + 16);
    if (v10)
    {

      specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
      v12 = v11;

      LODWORD(v10) = v12 & 1;
    }

    *(v8 + 14) = v10;

    _os_log_impl(&dword_272D1B000, v6, v7, "Getting connection manager for tab group %{public}s, has manager: %{BOOL,public}d", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2743D7F00](v9, -1, -1);
    MEMORY[0x2743D7F00](v8, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v13 = *(v2 + 136);
  if (!*(v13 + 16))
  {
    goto LABEL_12;
  }

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v15 & 1) == 0)
  {

LABEL_12:
    v18 = 0;
    v25 = 0;
    v22 = 0;
    v24 = 0;
    v23 = 0;
    goto LABEL_13;
  }

  v16 = *(v13 + 56) + 48 * v14;
  v17 = *v16;
  v19 = *(v16 + 16);
  v18 = *(v16 + 24);
  v20 = *(v16 + 32);
  v21 = *(v16 + 8);

  swift_retain_n();

  v22 = v21;
  v23 = v20;
  v24 = v17;
  v25 = v19;
LABEL_13:
  outlined consume of ParticipantPresenceCoordinator.ConnectionManagerStore.SharedConnection?(v24, v22, v25, v18, v23);
  return v18;
}