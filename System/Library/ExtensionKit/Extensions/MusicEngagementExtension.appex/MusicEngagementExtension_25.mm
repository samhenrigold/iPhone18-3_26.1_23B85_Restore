uint64_t specialized static SharedListening.buildSharedSession(with:)()
{
  if (one-time initialization token for sharedListening != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = type metadata accessor for Logger();
  v0[21] = __swift_project_value_buffer(v2, static Logger.sharedListening);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "🏗 Building session with intent=%{public}@", v7, 0xCu);
    outlined destroy of TaskPriority?(v8, &_sSo8NSObjectCSgMd_0, &_sSo8NSObjectCSgMR_0);
  }

  v10 = objc_allocWithZone(ICLiveLinkIdentity);
  v0[14] = CFRange.init(_:);
  v0[15] = 0;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v0[13] = &block_descriptor_74;
  v11 = _Block_copy(v0 + 10);
  v12 = [v10 initWithBlock:v11];
  v0[22] = v12;
  _Block_release(v11);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v14 = v0[20];
    v15 = objc_opt_self();
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = specialized static SharedListening.buildSharedSession(with:);
    v16 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo17MPCPlaybackIntentCSg_So22MPCPlayerCommandStatusCts5NeverOGMd, &_sSccySo17MPCPlaybackIntentCSg_So22MPCPlayerCommandStatusCts5NeverOGMR);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPCPlaybackIntent?, @unowned MPCPlayerCommandStatus) -> () with result type (MPCPlaybackIntent?, MPCPlayerCommandStatus);
    v0[13] = &block_descriptor_77;
    v0[14] = v16;
    [v15 buildSharedSessionIntentWithIntent:v14 identity:v12 extendedStatusCompletion:v0 + 10];
    isEscapingClosureAtFileLocation = (v0 + 2);
  }

  return _swift_continuation_await(isEscapingClosureAtFileLocation);
}

{

  return _swift_task_switch(specialized static SharedListening.buildSharedSession(with:), 0, 0);
}

{
  v23 = v0;
  v1 = v0[18];
  v2 = v0[19];
  if (v1 && (v3 = v1, v4 = [v3 sharedListeningProperties], v3, v4))
  {

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "✅ Shared listening intent successfully built", v7, 2u);
    }

    v8 = v0[22];

    v9 = v0[1];

    return v9(v1);
  }

  else
  {
    v11 = v2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136446210;
      v0[10] = [v11 error];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v16 = String.init<A>(describing:)();
      v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v17, &v22);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "⚠️ Creation error %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
    }

    v19 = v0[22];
    lazy protocol witness table accessor for type SharedListening.ErrorHandling.Error and conformance SharedListening.ErrorHandling.Error();
    swift_allocError();
    *v20 = v11;
    *(v20 + 8) = 2;
    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t specialized static SharedListening.buildSharedSession(with:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[42] = a3;
  v4[43] = a4;
  v4[40] = a1;
  v4[41] = a2;
  v4[44] = type metadata accessor for MainActor();
  v4[45] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[46] = v6;
  v4[47] = v5;

  return _swift_task_switch(specialized static SharedListening.buildSharedSession(with:on:), v6, v5);
}

uint64_t specialized static SharedListening.buildSharedSession(with:on:)()
{
  v45 = v0;
  if (one-time initialization token for sharedListening != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v2 = type metadata accessor for Logger();
  *(v0 + 384) = __swift_project_value_buffer(v2, static Logger.sharedListening);
  v3 = v1;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 336);
    v43 = *(v0 + 320);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v44[0] = v8;
    *v7 = 136446210;
    *(v0 + 272) = v43;
    *(v0 + 288) = v6;
    v9 = v43;

    v10 = String.init<A>(describing:)();
    v12 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v11, v44);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "🏗 Building session with command=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  v13 = *(v0 + 344);
  if (v13 && (v14 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player, swift_beginAccess(), *(v13 + v14)) && (swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter(), , , , (v15 = *(v0 + 296)) != 0) && (v16 = [*(v0 + 296) tracklist], v17 = objc_msgSend(v16, "playingItem"), v15, v16, v17))
  {

    v18 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
    swift_beginAccess();
    if (!*(v13 + v18) || (swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter(), , , , (v19 = *(v0 + 304)) == 0) || (v20 = [*(v0 + 304) route], *(v0 + 392) = v20, v19, !v20))
    {
LABEL_14:
      v21 = *(v0 + 336);
      v22 = *(v0 + 320);
      *(v0 + 144) = v22;
      *(v0 + 208) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 216) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 176) = &protocol witness table for Player.BuildSharedSessionCommand;
      *(v0 + 184) = 0x694C646572616853;
      *(v0 + 192) = 0xEF676E696E657473;
      *(v0 + 160) = v21;
      *(v0 + 168) = &type metadata for Player.BuildSharedSessionCommand;
      v23 = v22;

      *(v0 + 416) = static MainActor.shared.getter();
      v25 = dispatch thunk of Actor.unownedExecutor.getter();
      *(v0 + 424) = v25;
      *(v0 + 432) = v24;

      return _swift_task_switch(specialized static SharedListening.buildSharedSession(with:on:), v25, v24);
    }

    if ([v20 isDeviceRoute])
    {

      goto LABEL_14;
    }

    v28 = v20;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v44[0] = v32;
      *v31 = 136446210;
      v33 = v28;
      v34 = [v33 description];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v35, v37, v44);

      *(v31 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v29, v30, "    Build session command needs to be performed on the system route.\n    Switching from %{public}s) to system route.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
    }

    v39 = objc_opt_self();
    v40 = [v39 systemRoute];
    *(v0 + 400) = v40;
    *(v0 + 16) = v0;
    *(v0 + 24) = specialized static SharedListening.buildSharedSession(with:on:);
    v41 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    *(v0 + 104) = &block_descriptor_71_0;
    *(v0 + 112) = v41;
    [v39 setActiveRoute:v40 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    lazy protocol witness table accessor for type SharedListening.ErrorHandling.Error and conformance SharedListening.ErrorHandling.Error();
    swift_allocError();
    *v26 = 2;
    *(v26 + 8) = 4;
    swift_willThrow();
    v27 = *(v0 + 8);

    return v27();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 408) = v2;
  v3 = *(v1 + 376);
  v4 = *(v1 + 368);
  if (v2)
  {
    v5 = specialized static SharedListening.buildSharedSession(with:on:);
  }

  else
  {
    v5 = specialized static SharedListening.buildSharedSession(with:on:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = *(v0 + 400);

  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  *(v0 + 144) = v3;
  *(v0 + 208) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 216) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 176) = &protocol witness table for Player.BuildSharedSessionCommand;
  *(v0 + 184) = 0x694C646572616853;
  *(v0 + 192) = 0xEF676E696E657473;
  *(v0 + 160) = v2;
  *(v0 + 168) = &type metadata for Player.BuildSharedSessionCommand;
  v4 = v3;

  *(v0 + 416) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 424) = v6;
  *(v0 + 432) = v5;

  return _swift_task_switch(specialized static SharedListening.buildSharedSession(with:on:), v6, v5);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC7Command_pGMd, &_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC7Command_pGMR);
  v1 = swift_allocObject();
  v0[55] = v1;
  *(v1 + 16) = xmmword_1004F2400;
  outlined init with copy of ActionPerforming((v0 + 18), v1 + 32);
  v0[56] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v0[57] = v2;
  *v2 = v0;
  v2[1] = specialized static SharedListening.buildSharedSession(with:on:);

  return PlaybackController.perform(_:options:intent:issuer:)(v1, 0x10000, 1, 0, 0, (v0 + 23));
}

{

  v1 = *(v0 + 424);
  v2 = *(v0 + 432);

  return _swift_task_switch(specialized static SharedListening.buildSharedSession(with:on:), v1, v2);
}

{
  v1 = v0[58];

  if (v1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:

    outlined destroy of TaskPriority?((v0 + 23), &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
    v2 = v0[46];
    v3 = v0[47];
    v6 = specialized static SharedListening.buildSharedSession(with:on:);
    goto LABEL_9;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return _swift_task_switch(v4, v2, v3);
    }

    v5 = *(v0[58] + 32);
  }

  v0[60] = v5;

  outlined destroy of TaskPriority?((v0 + 23), &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  v2 = v0[46];
  v3 = v0[47];
  v6 = specialized static SharedListening.buildSharedSession(with:on:);
LABEL_9:
  v4 = v6;

  return _swift_task_switch(v4, v2, v3);
}

{

  v1 = *(v0 + 424);
  v2 = *(v0 + 432);

  return _swift_task_switch(specialized static SharedListening.buildSharedSession(with:on:), v1, v2);
}

{

  v1 = *(v0 + 368);
  v2 = *(v0 + 376);

  return _swift_task_switch(specialized static SharedListening.buildSharedSession(with:on:), v1, v2);
}

{
  v13 = v0;

  outlined destroy of TaskPriority?((v0 + 23), &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  v1 = v0[59];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    v0[39] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = String.init<A>(describing:)();
    v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "⚠️ Building session failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  lazy protocol witness table accessor for type SharedListening.ErrorHandling.Error and conformance SharedListening.ErrorHandling.Error();
  swift_allocError();
  *v9 = 3;
  *(v9 + 8) = 4;
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

{
  v18 = v0;
  v1 = *(v0 + 480);

  v2 = [v1 error];
  if (v2 || (v2 = [*(v0 + 480) dialog]) != 0)
  {
    v3 = *(v0 + 480);

    lazy protocol witness table accessor for type SharedListening.ErrorHandling.Error and conformance SharedListening.ErrorHandling.Error();
    v4 = swift_allocError();
    *v5 = v3;
    *(v5 + 8) = 2;
    swift_willThrow();

    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446210;
      *(v0 + 312) = v4;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v10 = String.init<A>(describing:)();
      v12 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v11, &v17);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "⚠️ Building session failed with error=%{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
    }

    swift_allocError();
    *v13 = 3;
    *(v13 + 8) = 4;
    swift_willThrow();

    v14 = *(v0 + 8);
  }

  else
  {
    v16 = *(v0 + 480);

    v14 = *(v0 + 8);
  }

  return v14();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[50];
  v2 = v0[49];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t specialized static SharedListening.buildSharedSession(with:on:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 464) = a1;
  *(v3 + 472) = v1;

  if (v1)
  {

    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v7 = specialized static SharedListening.buildSharedSession(with:on:);
  }

  else
  {
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v8;
    v7 = specialized static SharedListening.buildSharedSession(with:on:);
  }

  return _swift_task_switch(v7, v4, v6);
}

unint64_t lazy protocol witness table accessor for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys;
  if (!lazy protocol witness table cache variable for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys;
  if (!lazy protocol witness table cache variable for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys;
  if (!lazy protocol witness table cache variable for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys;
  if (!lazy protocol witness table cache variable for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys);
  }

  return result;
}

uint64_t specialized SharedListening.Reaction.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44497265646E6573 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t specialized SharedListening.Reaction.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MusicCore15SharedListeningO8ReactionV10CodingKeys33_962CB2D05357BEA070941EB4D8F61D5ELLOGMd, &_ss22KeyedDecodingContainerVy9MusicCore15SharedListeningO8ReactionV10CodingKeys33_962CB2D05357BEA070941EB4D8F61D5ELLOGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v25 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v12;
  v23 = 2;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

unint64_t lazy protocol witness table accessor for type SharedListening.Reaction and conformance SharedListening.Reaction()
{
  result = lazy protocol witness table cache variable for type SharedListening.Reaction and conformance SharedListening.Reaction;
  if (!lazy protocol witness table cache variable for type SharedListening.Reaction and conformance SharedListening.Reaction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedListening.Reaction and conformance SharedListening.Reaction);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore15SharedListeningO5EventO5AlertVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_9MusicCore15SharedListeningO5EventO(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 4)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t getEnumTagSinglePayload for SharedListening.Event(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SharedListening.Event(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for SharedListening.Event(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SharedListening.Event.Alert(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for SharedListening.Event.Alert(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharedListening.ErrorHandling.Context(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for SharedListening.ErrorHandling.Context(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore15SharedListeningO13ErrorHandlingV0E0O(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t getEnumTagSinglePayload for SharedListening.ErrorHandling.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SharedListening.ErrorHandling.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for SharedListening.ErrorHandling.Error(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double block_destroy_helper_73(uint64_t a1)
{

  return result;
}

{

  return result;
}

uint64_t sub_1002775D4()
{
  v1 = type metadata accessor for URL();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type related decl e for MPCPlayerRequestErrorCode and conformance related decl e for MPCPlayerRequestErrorCode(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002776A4()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:)(a1, a2, v6, v7, v8);
}

uint64_t sub_1002777AC()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 64));

  if (*(v0 + 144))
  {
  }

  if (*(v0 + 216))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:)(uint64_t a1)
{
  v4 = *(v1 + 24);
  v11 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:)(a1, v11, v4, v5, v6, v7, v8, v1 + 64);
}

uint64_t objectdestroyTm_11()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

unint64_t UnifiedMessages.MLI.State.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6572676F72506E69;
  if (a1 != 2)
  {
    v2 = 0x6574656C706D6F63;
  }

  if (!a1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UnifiedMessages.MLI.State()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance UnifiedMessages.MLI.State(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnifiedMessages.MLI.State(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UnifiedMessages.MLI.State@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore15UnifiedMessagesO3MLIV5StateO8rawValueAGSgSS_tcfCTf4nd_n_0(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance UnifiedMessages.MLI.State(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEA00000000007373;
  v5 = 0x6572676F72506E69;
  if (*v1 != 2)
  {
    v5 = 0x6574656C706D6F63;
    v4 = 0xE900000000000064;
  }

  if (!*v1)
  {
    v3 = 0xD00000000000001ELL;
    v2 = 0x80000001004C3F70;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

MusicCore::UnifiedMessages::GroupDefaultsKey_optional __swiftcall UnifiedMessages.GroupDefaultsKey.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UnifiedMessages.GroupDefaultsKey.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MusicCore_UnifiedMessages_GroupDefaultsKey_countOfSongsInLibrary;
  }

  else
  {
    v4.value = MusicCore_UnifiedMessages_GroupDefaultsKey_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t UnifiedMessages.GroupDefaultsKey.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UnifiedMessages.GroupDefaultsKey(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0xD000000000000019;
  }

  if (v2)
  {
    v4 = "countOfSongsInLibrary";
  }

  else
  {
    v4 = "xtension";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v6 = 0xD000000000000019;
  }

  if (*a2)
  {
    v7 = "xtension";
  }

  else
  {
    v7 = "countOfSongsInLibrary";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UnifiedMessages.GroupDefaultsKey()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance UnifiedMessages.GroupDefaultsKey(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnifiedMessages.GroupDefaultsKey(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance UnifiedMessages.GroupDefaultsKey(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UnifiedMessages.GroupDefaultsKey.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance UnifiedMessages.GroupDefaultsKey(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xD000000000000019;
  }

  if (*v1)
  {
    v3 = "xtension";
  }

  else
  {
    v3 = "countOfSongsInLibrary";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t _s9MusicCore15UnifiedMessagesO3MLIV5StateO8rawValueAGSgSS_tcfCTf4nd_n_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&_s9MusicCore15UnifiedMessagesO3MLIV5StateO8rawValueAGSgSS_tcfCTv_r_0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type UnifiedMessages.GroupDefaultsKey and conformance UnifiedMessages.GroupDefaultsKey()
{
  result = lazy protocol witness table cache variable for type UnifiedMessages.GroupDefaultsKey and conformance UnifiedMessages.GroupDefaultsKey;
  if (!lazy protocol witness table cache variable for type UnifiedMessages.GroupDefaultsKey and conformance UnifiedMessages.GroupDefaultsKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnifiedMessages.GroupDefaultsKey and conformance UnifiedMessages.GroupDefaultsKey);
  }

  return result;
}

MusicCore::AccessibilityIdentifier __swiftcall AccessibilityIdentifier.init(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v9 = static AccessibilityIdentifier.prefix;
  v10 = *algn_100608508;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);

  v4._countAndFlagsBits = countAndFlagsBits;
  v4._object = object;
  String.append(_:)(v4);

  v5 = v9;
  v6 = v10;
  v7 = countAndFlagsBits;
  v8 = object;
  result.name._object = v8;
  result.name._countAndFlagsBits = v7;
  result.rawValue._object = v6;
  result.rawValue._countAndFlagsBits = v5;
  return result;
}

uint64_t static ViewBuilder.buildBlock<each A>(_:)(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin();
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    v6 = swift_getTupleTypeMetadata();
  }

  __chkstk_darwin();
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *TupleTypeMetadata++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t *AccessibilityIdentifier.libraryAlbumsView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryAlbumsView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryAlbumsView;
}

uint64_t *AccessibilityIdentifier.libraryArtistsListView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryArtistsListView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryArtistsListView;
}

uint64_t *AccessibilityIdentifier.librarySongsView.unsafeMutableAddressor()
{
  if (one-time initialization token for librarySongsView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.librarySongsView;
}

uint64_t *AccessibilityIdentifier.libraryPlaylistsView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryPlaylistsView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryPlaylistsView;
}

uint64_t *AccessibilityIdentifier.libraryGenresView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryGenresView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryGenresView;
}

uint64_t *AccessibilityIdentifier.libraryRecentlyAddedView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryRecentlyAddedView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryRecentlyAddedView;
}

uint64_t *AccessibilityIdentifier.libraryMadeForYouView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryMadeForYouView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryMadeForYouView;
}

uint64_t *AccessibilityIdentifier.libraryMusicVideosView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryMusicVideosView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryMusicVideosView;
}

uint64_t *AccessibilityIdentifier.libraryCompilationsView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryCompilationsView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryCompilationsView;
}

uint64_t *AccessibilityIdentifier.libraryComposersView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryComposersView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryComposersView;
}

uint64_t *AccessibilityIdentifier.libraryTVAndMoviesView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryTVAndMoviesView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTVAndMoviesView;
}

uint64_t *AccessibilityIdentifier.libraryDownloadedView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryDownloadedView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryDownloadedView;
}

uint64_t *AccessibilityIdentifier.libraryDownloadingView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryDownloadingView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryDownloadingView;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression1 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression2 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression3 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression4 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression5 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression6 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression7 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8;
}

MusicCore::AccessibilityIdentifier __swiftcall AccessibilityIdentifier.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;

  v3 = countAndFlagsBits;
  v4 = object;
  v5 = countAndFlagsBits;
  v6 = object;
  result.name._object = v6;
  result.name._countAndFlagsBits = v5;
  result.rawValue._object = v4;
  result.rawValue._countAndFlagsBits = v3;
  return result;
}

uint64_t static AccessibilityIdentifier.named(_:)(uint64_t a1, void *a2)
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v7 = static AccessibilityIdentifier.prefix;

  v4._countAndFlagsBits = 46;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);

  return v7;
}

void one-time initialization function for prefix()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = NSBundle.appName.getter();
  v3 = v2;

  static AccessibilityIdentifier.prefix = v1;
  *algn_100608508 = v3;
}

uint64_t NSBundle.appName.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v3 = &v27[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v27[-v5];
  v30 = 0;
  v31 = 0xE000000000000000;
  v7 = [v1 bundleIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v28 = 46;
    v29 = 0xE100000000000000;
    __chkstk_darwin();
    *&v27[-16] = &v28;
    if (specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Sequence<>.contains(_:), &v27[-32], v9, v11, v27)[2])
    {

      goto LABEL_12;
    }
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  v12 = [v1 executableURL];
  if (v12)
  {
    v13 = v12;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v3, v14, 1, v15);
  outlined init with take of URL?(v3, v6);
  if ((*(v16 + 48))(v6, 1, v15) == 1)
  {
    outlined destroy of URL?(v6);
    v17 = 0xE500000000000000;
    v18 = 0x636973754DLL;
  }

  else
  {
    v19 = URL.lastPathComponent.getter();
    v17 = v20;
    (*(v16 + 8))(v6, v15);
    v18 = v19;
  }

  v21 = v17;
  String.append(_:)(*&v18);

  Substring.init(_:)();
LABEL_12:
  v22 = static String._fromSubstring(_:)();
  v24 = v23;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);

  return v30;
}

void one-time initialization function for artwork()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x6B726F77747241;
  v1._object = 0xE700000000000000;
  String.append(_:)(v1);

  static AccessibilityIdentifier.artwork = v2;
  unk_10063D7D0 = v3;
  qword_10063D7D8 = 0x6B726F77747241;
  unk_10063D7E0 = 0xE700000000000000;
}

{
  v0 = objc_allocWithZone(UIColor);
  v5[4] = closure #1 in variable initialization expression of static UIView.Border.artwork;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v5[3] = &block_descriptor_53;
  v1 = _Block_copy(v5);
  [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  UIView.Border.init(thickness:color:)();
  static UIView.Border.artwork = v2;
  byte_10063EF68 = v3 & 1;
  qword_10063EF70 = v4;
}

uint64_t *AccessibilityIdentifier.artwork.unsafeMutableAddressor()
{
  if (one-time initialization token for artwork != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.artwork;
}

uint64_t static AccessibilityIdentifier.artwork.getter()
{
  if (one-time initialization token for artwork != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.artwork;

  return v0;
}

void one-time initialization function for doneButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001ALL;
  v1._object = 0x80000001004CF7B0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.doneButton = v2;
  unk_10063D7F0 = v3;
  qword_10063D7F8 = 0xD00000000000001ALL;
  unk_10063D800 = 0x80000001004CF7B0;
}

uint64_t *AccessibilityIdentifier.doneButton.unsafeMutableAddressor()
{
  if (one-time initialization token for doneButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.doneButton;
}

uint64_t static AccessibilityIdentifier.doneButton.getter()
{
  if (one-time initialization token for doneButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.doneButton;

  return v0;
}

void one-time initialization function for backButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x747475426B636142;
  v1._object = 0xEA00000000006E6FLL;
  String.append(_:)(v1);

  static AccessibilityIdentifier.backButton = v2;
  unk_10063D810 = v3;
  qword_10063D818 = 0x747475426B636142;
  unk_10063D820 = 0xEA00000000006E6FLL;
}

uint64_t *AccessibilityIdentifier.backButton.unsafeMutableAddressor()
{
  if (one-time initialization token for backButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.backButton;
}

uint64_t static AccessibilityIdentifier.backButton.getter()
{
  if (one-time initialization token for backButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.backButton;

  return v0;
}

void one-time initialization function for moreButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 1701998413;
  v1._object = 0xE400000000000000;
  String.append(_:)(v1);

  static AccessibilityIdentifier.moreButton = v2;
  unk_10063D830 = v3;
  qword_10063D838 = 1701998413;
  unk_10063D840 = 0xE400000000000000;
}

uint64_t *AccessibilityIdentifier.moreButton.unsafeMutableAddressor()
{
  if (one-time initialization token for moreButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.moreButton;
}

uint64_t static AccessibilityIdentifier.moreButton.getter()
{
  if (one-time initialization token for moreButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.moreButton;

  return v0;
}

void one-time initialization function for calendarButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000014;
  v1._object = 0x80000001004CF790;
  String.append(_:)(v1);

  static AccessibilityIdentifier.calendarButton = v2;
  unk_10063D850 = v3;
  qword_10063D858 = 0xD000000000000014;
  unk_10063D860 = 0x80000001004CF790;
}

uint64_t *AccessibilityIdentifier.calendarButton.unsafeMutableAddressor()
{
  if (one-time initialization token for calendarButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.calendarButton;
}

uint64_t static AccessibilityIdentifier.calendarButton.getter()
{
  if (one-time initialization token for calendarButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.calendarButton;

  return v0;
}

void one-time initialization function for detailHeader()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x65486C6961746544;
  v1._object = 0xEC00000072656461;
  String.append(_:)(v1);

  static AccessibilityIdentifier.detailHeader = v2;
  unk_10063D870 = v3;
  strcpy(&qword_10063D878, "DetailHeader");
  unk_10063D885 = 0;
  unk_10063D886 = -5120;
}

uint64_t *AccessibilityIdentifier.detailHeader.unsafeMutableAddressor()
{
  if (one-time initialization token for detailHeader != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeader;
}

uint64_t static AccessibilityIdentifier.detailHeader.getter()
{
  if (one-time initialization token for detailHeader != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeader;

  return v0;
}

void one-time initialization function for detailHeaderTitle()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000012;
  v1._object = 0x80000001004CF770;
  String.append(_:)(v1);

  static AccessibilityIdentifier.detailHeaderTitle = v2;
  unk_10063D890 = v3;
  qword_10063D898 = 0xD000000000000012;
  unk_10063D8A0 = 0x80000001004CF770;
}

uint64_t *AccessibilityIdentifier.detailHeaderTitle.unsafeMutableAddressor()
{
  if (one-time initialization token for detailHeaderTitle != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderTitle;
}

uint64_t static AccessibilityIdentifier.detailHeaderTitle.getter()
{
  if (one-time initialization token for detailHeaderTitle != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderTitle;

  return v0;
}

void one-time initialization function for detailHeaderTitleFavorited()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001CLL;
  v1._object = 0x80000001004CF750;
  String.append(_:)(v1);

  static AccessibilityIdentifier.detailHeaderTitleFavorited = v2;
  unk_10063D8B0 = v3;
  qword_10063D8B8 = 0xD00000000000001CLL;
  unk_10063D8C0 = 0x80000001004CF750;
}

uint64_t *AccessibilityIdentifier.detailHeaderTitleFavorited.unsafeMutableAddressor()
{
  if (one-time initialization token for detailHeaderTitleFavorited != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderTitleFavorited;
}

uint64_t static AccessibilityIdentifier.detailHeaderTitleFavorited.getter()
{
  if (one-time initialization token for detailHeaderTitleFavorited != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderTitleFavorited;

  return v0;
}

void one-time initialization function for detailHeaderLabel()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000018;
  v1._object = 0x80000001004CF730;
  String.append(_:)(v1);

  static AccessibilityIdentifier.detailHeaderLabel = v2;
  unk_10063D8D0 = v3;
  qword_10063D8D8 = 0xD000000000000018;
  unk_10063D8E0 = 0x80000001004CF730;
}

uint64_t *AccessibilityIdentifier.detailHeaderLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for detailHeaderLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderLabel;
}

uint64_t static AccessibilityIdentifier.detailHeaderLabel.getter()
{
  if (one-time initialization token for detailHeaderLabel != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderLabel;

  return v0;
}

void one-time initialization function for detailHeaderArtistLink()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000017;
  v1._object = 0x80000001004CF710;
  String.append(_:)(v1);

  static AccessibilityIdentifier.detailHeaderArtistLink = v2;
  unk_10063D8F0 = v3;
  qword_10063D8F8 = 0xD000000000000017;
  unk_10063D900 = 0x80000001004CF710;
}

uint64_t *AccessibilityIdentifier.detailHeaderArtistLink.unsafeMutableAddressor()
{
  if (one-time initialization token for detailHeaderArtistLink != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderArtistLink;
}

uint64_t static AccessibilityIdentifier.detailHeaderArtistLink.getter()
{
  if (one-time initialization token for detailHeaderArtistLink != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderArtistLink;

  return v0;
}

void one-time initialization function for detailHeaderDescriptionLabel()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001DLL;
  v1._object = 0x80000001004CF6F0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.detailHeaderDescriptionLabel = v2;
  unk_10063D910 = v3;
  qword_10063D918 = 0xD00000000000001DLL;
  unk_10063D920 = 0x80000001004CF6F0;
}

uint64_t *AccessibilityIdentifier.detailHeaderDescriptionLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for detailHeaderDescriptionLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderDescriptionLabel;
}

uint64_t static AccessibilityIdentifier.detailHeaderDescriptionLabel.getter()
{
  if (one-time initialization token for detailHeaderDescriptionLabel != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderDescriptionLabel;

  return v0;
}

void one-time initialization function for detailHeaderMore()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000011;
  v1._object = 0x80000001004CF6D0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.detailHeaderMore = v2;
  unk_10063D930 = v3;
  qword_10063D938 = 0xD000000000000011;
  unk_10063D940 = 0x80000001004CF6D0;
}

uint64_t *AccessibilityIdentifier.detailHeaderMore.unsafeMutableAddressor()
{
  if (one-time initialization token for detailHeaderMore != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderMore;
}

uint64_t static AccessibilityIdentifier.detailHeaderMore.getter()
{
  if (one-time initialization token for detailHeaderMore != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderMore;

  return v0;
}

void one-time initialization function for playIntentButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000015;
  v1._object = 0x80000001004CF6B0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playIntentButton = v2;
  unk_10063D950 = v3;
  qword_10063D958 = 0xD000000000000015;
  unk_10063D960 = 0x80000001004CF6B0;
}

uint64_t *AccessibilityIdentifier.playIntentButton.unsafeMutableAddressor()
{
  if (one-time initialization token for playIntentButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playIntentButton;
}

uint64_t static AccessibilityIdentifier.playIntentButton.getter()
{
  if (one-time initialization token for playIntentButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playIntentButton;

  return v0;
}

void one-time initialization function for shuffleIntentButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000018;
  v1._object = 0x80000001004CF690;
  String.append(_:)(v1);

  static AccessibilityIdentifier.shuffleIntentButton = v2;
  unk_10063D970 = v3;
  qword_10063D978 = 0xD000000000000018;
  unk_10063D980 = 0x80000001004CF690;
}

uint64_t *AccessibilityIdentifier.shuffleIntentButton.unsafeMutableAddressor()
{
  if (one-time initialization token for shuffleIntentButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.shuffleIntentButton;
}

uint64_t static AccessibilityIdentifier.shuffleIntentButton.getter()
{
  if (one-time initialization token for shuffleIntentButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.shuffleIntentButton;

  return v0;
}

void one-time initialization function for startSingingIntentButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001DLL;
  v1._object = 0x80000001004CF670;
  String.append(_:)(v1);

  static AccessibilityIdentifier.startSingingIntentButton = v2;
  unk_10063D990 = v3;
  qword_10063D998 = 0xD00000000000001DLL;
  unk_10063D9A0 = 0x80000001004CF670;
}

uint64_t *AccessibilityIdentifier.startSingingIntentButton.unsafeMutableAddressor()
{
  if (one-time initialization token for startSingingIntentButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.startSingingIntentButton;
}

uint64_t static AccessibilityIdentifier.startSingingIntentButton.getter()
{
  if (one-time initialization token for startSingingIntentButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.startSingingIntentButton;

  return v0;
}

void one-time initialization function for songCell()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x6C6C6543676E6F53;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);

  static AccessibilityIdentifier.songCell = v2;
  unk_10063D9B0 = v3;
  qword_10063D9B8 = 0x6C6C6543676E6F53;
  unk_10063D9C0 = 0xE800000000000000;
}

uint64_t *AccessibilityIdentifier.songCell.unsafeMutableAddressor()
{
  if (one-time initialization token for songCell != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.songCell;
}

uint64_t static AccessibilityIdentifier.songCell.getter()
{
  if (one-time initialization token for songCell != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.songCell;

  return v0;
}

void one-time initialization function for trackListCell()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x73694C6B63617254;
  v1._object = 0xED00006C6C654374;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListCell = v2;
  unk_10063D9D0 = v3;
  strcpy(&qword_10063D9D8, "TrackListCell");
  unk_10063D9E6 = -4864;
}

uint64_t *AccessibilityIdentifier.trackListCell.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListCell != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCell;
}

uint64_t static AccessibilityIdentifier.trackListCell.getter()
{
  if (one-time initialization token for trackListCell != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCell;

  return v0;
}

void one-time initialization function for trackListEmptyCell()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000013;
  v1._object = 0x80000001004CF650;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListEmptyCell = v2;
  unk_10063D9F0 = v3;
  qword_10063D9F8 = 0xD000000000000013;
  unk_10063DA00 = 0x80000001004CF650;
}

uint64_t *AccessibilityIdentifier.trackListEmptyCell.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListEmptyCell != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListEmptyCell;
}

uint64_t static AccessibilityIdentifier.trackListEmptyCell.getter()
{
  if (one-time initialization token for trackListEmptyCell != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListEmptyCell;

  return v0;
}

void one-time initialization function for trackListCellArtwork()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000015;
  v1._object = 0x80000001004CF630;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListCellArtwork = v2;
  unk_10063DA10 = v3;
  qword_10063DA18 = 0xD000000000000015;
  unk_10063DA20 = 0x80000001004CF630;
}

uint64_t *AccessibilityIdentifier.trackListCellArtwork.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListCellArtwork != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellArtwork;
}

uint64_t static AccessibilityIdentifier.trackListCellArtwork.getter()
{
  if (one-time initialization token for trackListCellArtwork != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellArtwork;

  return v0;
}

void one-time initialization function for trackListCellFavoriteBadge()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001CLL;
  v1._object = 0x80000001004CF610;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListCellFavoriteBadge = v2;
  unk_10063DA30 = v3;
  qword_10063DA38 = 0xD00000000000001CLL;
  unk_10063DA40 = 0x80000001004CF610;
}

uint64_t *AccessibilityIdentifier.trackListCellFavoriteBadge.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListCellFavoriteBadge != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellFavoriteBadge;
}

uint64_t static AccessibilityIdentifier.trackListCellFavoriteBadge.getter()
{
  if (one-time initialization token for trackListCellFavoriteBadge != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellFavoriteBadge;

  return v0;
}

void one-time initialization function for trackListCellPopularBadge()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001BLL;
  v1._object = 0x80000001004CF5F0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListCellPopularBadge = v2;
  unk_10063DA50 = v3;
  qword_10063DA58 = 0xD00000000000001BLL;
  unk_10063DA60 = 0x80000001004CF5F0;
}

uint64_t *AccessibilityIdentifier.trackListCellPopularBadge.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListCellPopularBadge != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellPopularBadge;
}

uint64_t static AccessibilityIdentifier.trackListCellPopularBadge.getter()
{
  if (one-time initialization token for trackListCellPopularBadge != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellPopularBadge;

  return v0;
}

void one-time initialization function for trackListCellTrackNumber()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000019;
  v1._object = 0x80000001004CF5D0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListCellTrackNumber = v2;
  unk_10063DA70 = v3;
  qword_10063DA78 = 0xD000000000000019;
  unk_10063DA80 = 0x80000001004CF5D0;
}

uint64_t *AccessibilityIdentifier.trackListCellTrackNumber.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListCellTrackNumber != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellTrackNumber;
}

uint64_t static AccessibilityIdentifier.trackListCellTrackNumber.getter()
{
  if (one-time initialization token for trackListCellTrackNumber != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellTrackNumber;

  return v0;
}

void one-time initialization function for trackListCellChartNumber()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000019;
  v1._object = 0x80000001004CF5B0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListCellChartNumber = v2;
  unk_10063DA90 = v3;
  qword_10063DA98 = 0xD000000000000019;
  unk_10063DAA0 = 0x80000001004CF5B0;
}

uint64_t *AccessibilityIdentifier.trackListCellChartNumber.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListCellChartNumber != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellChartNumber;
}

uint64_t static AccessibilityIdentifier.trackListCellChartNumber.getter()
{
  if (one-time initialization token for trackListCellChartNumber != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellChartNumber;

  return v0;
}

void one-time initialization function for trackListCellVideoIcon()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000017;
  v1._object = 0x80000001004CF590;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListCellVideoIcon = v2;
  unk_10063DAB0 = v3;
  qword_10063DAB8 = 0xD000000000000017;
  unk_10063DAC0 = 0x80000001004CF590;
}

uint64_t *AccessibilityIdentifier.trackListCellVideoIcon.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListCellVideoIcon != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellVideoIcon;
}

uint64_t static AccessibilityIdentifier.trackListCellVideoIcon.getter()
{
  if (one-time initialization token for trackListCellVideoIcon != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellVideoIcon;

  return v0;
}

void one-time initialization function for trackListCellTitle()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000013;
  v1._object = 0x80000001004CF570;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListCellTitle = v2;
  unk_10063DAD0 = v3;
  qword_10063DAD8 = 0xD000000000000013;
  unk_10063DAE0 = 0x80000001004CF570;
}

uint64_t *AccessibilityIdentifier.trackListCellTitle.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListCellTitle != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellTitle;
}

uint64_t static AccessibilityIdentifier.trackListCellTitle.getter()
{
  if (one-time initialization token for trackListCellTitle != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellTitle;

  return v0;
}

void one-time initialization function for trackListCellArtist()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000014;
  v1._object = 0x80000001004CF550;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListCellArtist = v2;
  unk_10063DAF0 = v3;
  qword_10063DAF8 = 0xD000000000000014;
  unk_10063DB00 = 0x80000001004CF550;
}

uint64_t *AccessibilityIdentifier.trackListCellArtist.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListCellArtist != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellArtist;
}

uint64_t static AccessibilityIdentifier.trackListCellArtist.getter()
{
  if (one-time initialization token for trackListCellArtist != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellArtist;

  return v0;
}

void one-time initialization function for trackListCellAlbum()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000013;
  v1._object = 0x80000001004CF530;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListCellAlbum = v2;
  unk_10063DB10 = v3;
  qword_10063DB18 = 0xD000000000000013;
  unk_10063DB20 = 0x80000001004CF530;
}

uint64_t *AccessibilityIdentifier.trackListCellAlbum.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListCellAlbum != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellAlbum;
}

uint64_t static AccessibilityIdentifier.trackListCellAlbum.getter()
{
  if (one-time initialization token for trackListCellAlbum != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellAlbum;

  return v0;
}

void one-time initialization function for trackListCellDuration()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000016;
  v1._object = 0x80000001004CF510;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListCellDuration = v2;
  unk_10063DB30 = v3;
  qword_10063DB38 = 0xD000000000000016;
  unk_10063DB40 = 0x80000001004CF510;
}

uint64_t *AccessibilityIdentifier.trackListCellDuration.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListCellDuration != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellDuration;
}

uint64_t static AccessibilityIdentifier.trackListCellDuration.getter()
{
  if (one-time initialization token for trackListCellDuration != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellDuration;

  return v0;
}

void one-time initialization function for trackListReleaseDate()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000014;
  v1._object = 0x80000001004CF4F0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListReleaseDate = v2;
  unk_10063DB50 = v3;
  qword_10063DB58 = 0xD000000000000014;
  unk_10063DB60 = 0x80000001004CF4F0;
}

uint64_t *AccessibilityIdentifier.trackListReleaseDate.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListReleaseDate != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListReleaseDate;
}

uint64_t static AccessibilityIdentifier.trackListReleaseDate.getter()
{
  if (one-time initialization token for trackListReleaseDate != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListReleaseDate;

  return v0;
}

void one-time initialization function for trackListCountAndDuration()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000019;
  v1._object = 0x80000001004CF4D0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListCountAndDuration = v2;
  unk_10063DB70 = v3;
  qword_10063DB78 = 0xD000000000000019;
  unk_10063DB80 = 0x80000001004CF4D0;
}

uint64_t *AccessibilityIdentifier.trackListCountAndDuration.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListCountAndDuration != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCountAndDuration;
}

uint64_t static AccessibilityIdentifier.trackListCountAndDuration.getter()
{
  if (one-time initialization token for trackListCountAndDuration != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCountAndDuration;

  return v0;
}

void one-time initialization function for trackListCopyright()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000012;
  v1._object = 0x80000001004CF4B0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListCopyright = v2;
  unk_10063DB90 = v3;
  qword_10063DB98 = 0xD000000000000012;
  unk_10063DBA0 = 0x80000001004CF4B0;
}

uint64_t *AccessibilityIdentifier.trackListCopyright.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListCopyright != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCopyright;
}

uint64_t static AccessibilityIdentifier.trackListCopyright.getter()
{
  if (one-time initialization token for trackListCopyright != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCopyright;

  return v0;
}

void one-time initialization function for trackListRecordLabel()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000014;
  v1._object = 0x80000001004CF490;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListRecordLabel = v2;
  unk_10063DBB0 = v3;
  qword_10063DBB8 = 0xD000000000000014;
  unk_10063DBC0 = 0x80000001004CF490;
}

uint64_t *AccessibilityIdentifier.trackListRecordLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListRecordLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListRecordLabel;
}

uint64_t static AccessibilityIdentifier.trackListRecordLabel.getter()
{
  if (one-time initialization token for trackListRecordLabel != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListRecordLabel;

  return v0;
}

void one-time initialization function for downloadStatus()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x64616F6C6E776F44;
  v1._object = 0xEE00737574617453;
  String.append(_:)(v1);

  static AccessibilityIdentifier.downloadStatus = v2;
  unk_10063DBD0 = v3;
  strcpy(&qword_10063DBD8, "DownloadStatus");
  unk_10063DBE7 = -18;
}

uint64_t *AccessibilityIdentifier.downloadStatus.unsafeMutableAddressor()
{
  if (one-time initialization token for downloadStatus != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.downloadStatus;
}

uint64_t static AccessibilityIdentifier.downloadStatus.getter()
{
  if (one-time initialization token for downloadStatus != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.downloadStatus;

  return v0;
}

void one-time initialization function for lyricsStaticView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000010;
  v1._object = 0x80000001004CF470;
  String.append(_:)(v1);

  static AccessibilityIdentifier.lyricsStaticView = v2;
  unk_10063DBF0 = v3;
  qword_10063DBF8 = 0xD000000000000010;
  unk_10063DC00 = 0x80000001004CF470;
}

uint64_t *AccessibilityIdentifier.lyricsStaticView.unsafeMutableAddressor()
{
  if (one-time initialization token for lyricsStaticView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.lyricsStaticView;
}

uint64_t static AccessibilityIdentifier.lyricsStaticView.getter()
{
  if (one-time initialization token for lyricsStaticView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.lyricsStaticView;

  return v0;
}

void one-time initialization function for lyricsSyncedView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000010;
  v1._object = 0x80000001004CF450;
  String.append(_:)(v1);

  static AccessibilityIdentifier.lyricsSyncedView = v2;
  unk_10063DC10 = v3;
  qword_10063DC18 = 0xD000000000000010;
  unk_10063DC20 = 0x80000001004CF450;
}

uint64_t *AccessibilityIdentifier.lyricsSyncedView.unsafeMutableAddressor()
{
  if (one-time initialization token for lyricsSyncedView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.lyricsSyncedView;
}

uint64_t static AccessibilityIdentifier.lyricsSyncedView.getter()
{
  if (one-time initialization token for lyricsSyncedView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.lyricsSyncedView;

  return v0;
}

void one-time initialization function for playButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x7474754279616C50;
  v1._object = 0xEA00000000006E6FLL;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playButton = v2;
  unk_10063DC30 = v3;
  qword_10063DC38 = 0x7474754279616C50;
  unk_10063DC40 = 0xEA00000000006E6FLL;
}

uint64_t *AccessibilityIdentifier.playButton.unsafeMutableAddressor()
{
  if (one-time initialization token for playButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playButton;
}

uint64_t static AccessibilityIdentifier.playButton.getter()
{
  if (one-time initialization token for playButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playButton;

  return v0;
}

void one-time initialization function for pauseButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x7475426573756150;
  v1._object = 0xEB000000006E6F74;
  String.append(_:)(v1);

  static AccessibilityIdentifier.pauseButton = v2;
  unk_10063DC50 = v3;
  qword_10063DC58 = 0x7475426573756150;
  unk_10063DC60 = 0xEB000000006E6F74;
}

uint64_t *AccessibilityIdentifier.pauseButton.unsafeMutableAddressor()
{
  if (one-time initialization token for pauseButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.pauseButton;
}

uint64_t static AccessibilityIdentifier.pauseButton.getter()
{
  if (one-time initialization token for pauseButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.pauseButton;

  return v0;
}

void one-time initialization function for stopButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x74747542706F7453;
  v1._object = 0xEA00000000006E6FLL;
  String.append(_:)(v1);

  static AccessibilityIdentifier.stopButton = v2;
  unk_10063DC70 = v3;
  qword_10063DC78 = 0x74747542706F7453;
  unk_10063DC80 = 0xEA00000000006E6FLL;
}

uint64_t *AccessibilityIdentifier.stopButton.unsafeMutableAddressor()
{
  if (one-time initialization token for stopButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.stopButton;
}

uint64_t static AccessibilityIdentifier.stopButton.getter()
{
  if (one-time initialization token for stopButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.stopButton;

  return v0;
}

void one-time initialization function for skipForwardButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000011;
  v1._object = 0x80000001004CF430;
  String.append(_:)(v1);

  static AccessibilityIdentifier.skipForwardButton = v2;
  unk_10063DC90 = v3;
  qword_10063DC98 = 0xD000000000000011;
  unk_10063DCA0 = 0x80000001004CF430;
}

uint64_t *AccessibilityIdentifier.skipForwardButton.unsafeMutableAddressor()
{
  if (one-time initialization token for skipForwardButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.skipForwardButton;
}

uint64_t static AccessibilityIdentifier.skipForwardButton.getter()
{
  if (one-time initialization token for skipForwardButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.skipForwardButton;

  return v0;
}

void one-time initialization function for skipBackwardButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000012;
  v1._object = 0x80000001004CF410;
  String.append(_:)(v1);

  static AccessibilityIdentifier.skipBackwardButton = v2;
  unk_10063DCB0 = v3;
  qword_10063DCB8 = 0xD000000000000012;
  unk_10063DCC0 = 0x80000001004CF410;
}

uint64_t *AccessibilityIdentifier.skipBackwardButton.unsafeMutableAddressor()
{
  if (one-time initialization token for skipBackwardButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.skipBackwardButton;
}

uint64_t static AccessibilityIdentifier.skipBackwardButton.getter()
{
  if (one-time initialization token for skipBackwardButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.skipBackwardButton;

  return v0;
}

void one-time initialization function for jumpButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x74747542706D754ALL;
  v1._object = 0xEA00000000006E6FLL;
  String.append(_:)(v1);

  static AccessibilityIdentifier.jumpButton = v2;
  unk_10063DCD0 = v3;
  qword_10063DCD8 = 0x74747542706D754ALL;
  unk_10063DCE0 = 0xEA00000000006E6FLL;
}

uint64_t *AccessibilityIdentifier.jumpButton.unsafeMutableAddressor()
{
  if (one-time initialization token for jumpButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.jumpButton;
}

uint64_t static AccessibilityIdentifier.jumpButton.getter()
{
  if (one-time initialization token for jumpButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.jumpButton;

  return v0;
}

void one-time initialization function for libraryTab()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x547972617262694CLL;
  v1._object = 0xEA00000000006261;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryTab = v2;
  unk_10063DCF0 = v3;
  qword_10063DCF8 = 0x547972617262694CLL;
  unk_10063DD00 = 0xEA00000000006261;
}

uint64_t *AccessibilityIdentifier.libraryTab.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryTab != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTab;
}

uint64_t static AccessibilityIdentifier.libraryTab.getter()
{
  if (one-time initialization token for libraryTab != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTab;

  return v0;
}

void one-time initialization function for listenNowTab()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x6F4E6E657473694CLL;
  v1._object = 0xEC00000062615477;
  String.append(_:)(v1);

  static AccessibilityIdentifier.listenNowTab = v2;
  unk_10063DD10 = v3;
  strcpy(&qword_10063DD18, "ListenNowTab");
  unk_10063DD25 = 0;
  unk_10063DD26 = -5120;
}

uint64_t *AccessibilityIdentifier.listenNowTab.unsafeMutableAddressor()
{
  if (one-time initialization token for listenNowTab != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.listenNowTab;
}

uint64_t static AccessibilityIdentifier.listenNowTab.getter()
{
  if (one-time initialization token for listenNowTab != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.listenNowTab;

  return v0;
}

void one-time initialization function for browseTab()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x61546573776F7242;
  v1._object = 0xE900000000000062;
  String.append(_:)(v1);

  static AccessibilityIdentifier.browseTab = v2;
  unk_10063DD30 = v3;
  qword_10063DD38 = 0x61546573776F7242;
  unk_10063DD40 = 0xE900000000000062;
}

uint64_t *AccessibilityIdentifier.browseTab.unsafeMutableAddressor()
{
  if (one-time initialization token for browseTab != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.browseTab;
}

uint64_t static AccessibilityIdentifier.browseTab.getter()
{
  if (one-time initialization token for browseTab != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.browseTab;

  return v0;
}

void one-time initialization function for radioTab()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x6261546F69646152;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);

  static AccessibilityIdentifier.radioTab = v2;
  unk_10063DD50 = v3;
  qword_10063DD58 = 0x6261546F69646152;
  unk_10063DD60 = 0xE800000000000000;
}

uint64_t *AccessibilityIdentifier.radioTab.unsafeMutableAddressor()
{
  if (one-time initialization token for radioTab != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.radioTab;
}

uint64_t static AccessibilityIdentifier.radioTab.getter()
{
  if (one-time initialization token for radioTab != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.radioTab;

  return v0;
}

void one-time initialization function for searchTab()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x6154686372616553;
  v1._object = 0xE900000000000062;
  String.append(_:)(v1);

  static AccessibilityIdentifier.searchTab = v2;
  unk_10063DD70 = v3;
  qword_10063DD78 = 0x6154686372616553;
  unk_10063DD80 = 0xE900000000000062;
}

uint64_t *AccessibilityIdentifier.searchTab.unsafeMutableAddressor()
{
  if (one-time initialization token for searchTab != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.searchTab;
}

uint64_t static AccessibilityIdentifier.searchTab.getter()
{
  if (one-time initialization token for searchTab != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.searchTab;

  return v0;
}

void one-time initialization function for containerDetailHeader()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000016;
  v1._object = 0x80000001004CF3F0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.containerDetailHeader = v2;
  unk_10063DD90 = v3;
  qword_10063DD98 = 0xD000000000000016;
  unk_10063DDA0 = 0x80000001004CF3F0;
}

uint64_t *AccessibilityIdentifier.containerDetailHeader.unsafeMutableAddressor()
{
  if (one-time initialization token for containerDetailHeader != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeader;
}

uint64_t static AccessibilityIdentifier.containerDetailHeader.getter()
{
  if (one-time initialization token for containerDetailHeader != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeader;

  return v0;
}

void one-time initialization function for containerDetailHeaderArtwork()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001ELL;
  v1._object = 0x80000001004CF3D0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.containerDetailHeaderArtwork = v2;
  unk_10063DDB0 = v3;
  qword_10063DDB8 = 0xD00000000000001ELL;
  unk_10063DDC0 = 0x80000001004CF3D0;
}

uint64_t *AccessibilityIdentifier.containerDetailHeaderArtwork.unsafeMutableAddressor()
{
  if (one-time initialization token for containerDetailHeaderArtwork != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeaderArtwork;
}

uint64_t static AccessibilityIdentifier.containerDetailHeaderArtwork.getter()
{
  if (one-time initialization token for containerDetailHeaderArtwork != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeaderArtwork;

  return v0;
}

void one-time initialization function for containerDetailHeaderTitle()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001CLL;
  v1._object = 0x80000001004CF3B0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.containerDetailHeaderTitle = v2;
  unk_10063DDD0 = v3;
  qword_10063DDD8 = 0xD00000000000001CLL;
  unk_10063DDE0 = 0x80000001004CF3B0;
}

uint64_t *AccessibilityIdentifier.containerDetailHeaderTitle.unsafeMutableAddressor()
{
  if (one-time initialization token for containerDetailHeaderTitle != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeaderTitle;
}

uint64_t static AccessibilityIdentifier.containerDetailHeaderTitle.getter()
{
  if (one-time initialization token for containerDetailHeaderTitle != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeaderTitle;

  return v0;
}

void one-time initialization function for containerDetailHeaderAttribution()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000022;
  v1._object = 0x80000001004CF380;
  String.append(_:)(v1);

  static AccessibilityIdentifier.containerDetailHeaderAttribution = v2;
  unk_10063DDF0 = v3;
  qword_10063DDF8 = 0xD000000000000022;
  unk_10063DE00 = 0x80000001004CF380;
}

uint64_t *AccessibilityIdentifier.containerDetailHeaderAttribution.unsafeMutableAddressor()
{
  if (one-time initialization token for containerDetailHeaderAttribution != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeaderAttribution;
}

uint64_t static AccessibilityIdentifier.containerDetailHeaderAttribution.getter()
{
  if (one-time initialization token for containerDetailHeaderAttribution != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeaderAttribution;

  return v0;
}

void one-time initialization function for containerDetailHeaderMetadata()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001FLL;
  v1._object = 0x80000001004CF360;
  String.append(_:)(v1);

  static AccessibilityIdentifier.containerDetailHeaderMetadata = v2;
  unk_10063DE10 = v3;
  qword_10063DE18 = 0xD00000000000001FLL;
  unk_10063DE20 = 0x80000001004CF360;
}

uint64_t *AccessibilityIdentifier.containerDetailHeaderMetadata.unsafeMutableAddressor()
{
  if (one-time initialization token for containerDetailHeaderMetadata != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeaderMetadata;
}

uint64_t static AccessibilityIdentifier.containerDetailHeaderMetadata.getter()
{
  if (one-time initialization token for containerDetailHeaderMetadata != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeaderMetadata;

  return v0;
}

void one-time initialization function for containerDetailHeaderDescription()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000022;
  v1._object = 0x80000001004CF330;
  String.append(_:)(v1);

  static AccessibilityIdentifier.containerDetailHeaderDescription = v2;
  unk_10063DE30 = v3;
  qword_10063DE38 = 0xD000000000000022;
  unk_10063DE40 = 0x80000001004CF330;
}

uint64_t *AccessibilityIdentifier.containerDetailHeaderDescription.unsafeMutableAddressor()
{
  if (one-time initialization token for containerDetailHeaderDescription != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeaderDescription;
}

uint64_t static AccessibilityIdentifier.containerDetailHeaderDescription.getter()
{
  if (one-time initialization token for containerDetailHeaderDescription != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeaderDescription;

  return v0;
}

void one-time initialization function for containerDetailContextualActionsButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000027;
  v1._object = 0x80000001004CF300;
  String.append(_:)(v1);

  static AccessibilityIdentifier.containerDetailContextualActionsButton = v2;
  unk_10063DE50 = v3;
  qword_10063DE58 = 0xD000000000000027;
  unk_10063DE60 = 0x80000001004CF300;
}

uint64_t *AccessibilityIdentifier.containerDetailContextualActionsButton.unsafeMutableAddressor()
{
  if (one-time initialization token for containerDetailContextualActionsButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailContextualActionsButton;
}

uint64_t static AccessibilityIdentifier.containerDetailContextualActionsButton.getter()
{
  if (one-time initialization token for containerDetailContextualActionsButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailContextualActionsButton;

  return v0;
}

void one-time initialization function for containerDetailFloatingArtwork()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000020;
  v1._object = 0x80000001004CF2D0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.containerDetailFloatingArtwork = v2;
  unk_10063DE70 = v3;
  qword_10063DE78 = 0xD000000000000020;
  unk_10063DE80 = 0x80000001004CF2D0;
}

uint64_t *AccessibilityIdentifier.containerDetailFloatingArtwork.unsafeMutableAddressor()
{
  if (one-time initialization token for containerDetailFloatingArtwork != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailFloatingArtwork;
}

uint64_t static AccessibilityIdentifier.containerDetailFloatingArtwork.getter()
{
  if (one-time initialization token for containerDetailFloatingArtwork != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailFloatingArtwork;

  return v0;
}

void one-time initialization function for containerDetailStateButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001BLL;
  v1._object = 0x80000001004CF2B0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.containerDetailStateButton = v2;
  unk_10063DE90 = v3;
  qword_10063DE98 = 0xD00000000000001BLL;
  unk_10063DEA0 = 0x80000001004CF2B0;
}

uint64_t *AccessibilityIdentifier.containerDetailStateButton.unsafeMutableAddressor()
{
  if (one-time initialization token for containerDetailStateButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailStateButton;
}

uint64_t static AccessibilityIdentifier.containerDetailStateButton.getter()
{
  if (one-time initialization token for containerDetailStateButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailStateButton;

  return v0;
}

void one-time initialization function for containerDetailAddButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000019;
  v1._object = 0x80000001004CF290;
  String.append(_:)(v1);

  static AccessibilityIdentifier.containerDetailAddButton = v2;
  unk_10063DEB0 = v3;
  qword_10063DEB8 = 0xD000000000000019;
  unk_10063DEC0 = 0x80000001004CF290;
}

uint64_t *AccessibilityIdentifier.containerDetailAddButton.unsafeMutableAddressor()
{
  if (one-time initialization token for containerDetailAddButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailAddButton;
}

uint64_t static AccessibilityIdentifier.containerDetailAddButton.getter()
{
  if (one-time initialization token for containerDetailAddButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailAddButton;

  return v0;
}

void one-time initialization function for containerDetailDownloadButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001ELL;
  v1._object = 0x80000001004CF270;
  String.append(_:)(v1);

  static AccessibilityIdentifier.containerDetailDownloadButton = v2;
  unk_10063DED0 = v3;
  qword_10063DED8 = 0xD00000000000001ELL;
  unk_10063DEE0 = 0x80000001004CF270;
}

uint64_t *AccessibilityIdentifier.containerDetailDownloadButton.unsafeMutableAddressor()
{
  if (one-time initialization token for containerDetailDownloadButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailDownloadButton;
}

uint64_t static AccessibilityIdentifier.containerDetailDownloadButton.getter()
{
  if (one-time initialization token for containerDetailDownloadButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailDownloadButton;

  return v0;
}

void one-time initialization function for containerDetailDownloadQueuedButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000024;
  v1._object = 0x80000001004CF240;
  String.append(_:)(v1);

  static AccessibilityIdentifier.containerDetailDownloadQueuedButton = v2;
  unk_10063DEF0 = v3;
  qword_10063DEF8 = 0xD000000000000024;
  unk_10063DF00 = 0x80000001004CF240;
}

uint64_t *AccessibilityIdentifier.containerDetailDownloadQueuedButton.unsafeMutableAddressor()
{
  if (one-time initialization token for containerDetailDownloadQueuedButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailDownloadQueuedButton;
}

uint64_t static AccessibilityIdentifier.containerDetailDownloadQueuedButton.getter()
{
  if (one-time initialization token for containerDetailDownloadQueuedButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailDownloadQueuedButton;

  return v0;
}

void one-time initialization function for containerDetailDownloadPausedButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000024;
  v1._object = 0x80000001004CF210;
  String.append(_:)(v1);

  static AccessibilityIdentifier.containerDetailDownloadPausedButton = v2;
  unk_10063DF10 = v3;
  qword_10063DF18 = 0xD000000000000024;
  unk_10063DF20 = 0x80000001004CF210;
}

uint64_t *AccessibilityIdentifier.containerDetailDownloadPausedButton.unsafeMutableAddressor()
{
  if (one-time initialization token for containerDetailDownloadPausedButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailDownloadPausedButton;
}

uint64_t static AccessibilityIdentifier.containerDetailDownloadPausedButton.getter()
{
  if (one-time initialization token for containerDetailDownloadPausedButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailDownloadPausedButton;

  return v0;
}

void one-time initialization function for containerDetailDownloadingButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000021;
  v1._object = 0x80000001004CF1E0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.containerDetailDownloadingButton = v2;
  unk_10063DF30 = v3;
  qword_10063DF38 = 0xD000000000000021;
  unk_10063DF40 = 0x80000001004CF1E0;
}

uint64_t *AccessibilityIdentifier.containerDetailDownloadingButton.unsafeMutableAddressor()
{
  if (one-time initialization token for containerDetailDownloadingButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailDownloadingButton;
}

uint64_t static AccessibilityIdentifier.containerDetailDownloadingButton.getter()
{
  if (one-time initialization token for containerDetailDownloadingButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailDownloadingButton;

  return v0;
}

void one-time initialization function for containerDetailDownloadedButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000020;
  v1._object = 0x80000001004CF1B0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.containerDetailDownloadedButton = v2;
  unk_10063DF50 = v3;
  qword_10063DF58 = 0xD000000000000020;
  unk_10063DF60 = 0x80000001004CF1B0;
}

uint64_t *AccessibilityIdentifier.containerDetailDownloadedButton.unsafeMutableAddressor()
{
  if (one-time initialization token for containerDetailDownloadedButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailDownloadedButton;
}

uint64_t static AccessibilityIdentifier.containerDetailDownloadedButton.getter()
{
  if (one-time initialization token for containerDetailDownloadedButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailDownloadedButton;

  return v0;
}

void one-time initialization function for albumDetailOpenInClassicalButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000021;
  v1._object = 0x80000001004CF180;
  String.append(_:)(v1);

  static AccessibilityIdentifier.albumDetailOpenInClassicalButton = v2;
  unk_10063DF70 = v3;
  qword_10063DF78 = 0xD000000000000021;
  unk_10063DF80 = 0x80000001004CF180;
}

uint64_t *AccessibilityIdentifier.albumDetailOpenInClassicalButton.unsafeMutableAddressor()
{
  if (one-time initialization token for albumDetailOpenInClassicalButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.albumDetailOpenInClassicalButton;
}

uint64_t static AccessibilityIdentifier.albumDetailOpenInClassicalButton.getter()
{
  if (one-time initialization token for albumDetailOpenInClassicalButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.albumDetailOpenInClassicalButton;

  return v0;
}

void one-time initialization function for playlistDetailCollaborationControl()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000023;
  v1._object = 0x80000001004CF150;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playlistDetailCollaborationControl = v2;
  unk_10063DF90 = v3;
  qword_10063DF98 = 0xD000000000000023;
  unk_10063DFA0 = 0x80000001004CF150;
}

uint64_t *AccessibilityIdentifier.playlistDetailCollaborationControl.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistDetailCollaborationControl != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistDetailCollaborationControl;
}

uint64_t static AccessibilityIdentifier.playlistDetailCollaborationControl.getter()
{
  if (one-time initialization token for playlistDetailCollaborationControl != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistDetailCollaborationControl;

  return v0;
}

void one-time initialization function for accountButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x42746E756F636361;
  v1._object = 0xED00006E6F747475;
  String.append(_:)(v1);

  static AccessibilityIdentifier.accountButton = v2;
  unk_10063DFB0 = v3;
  strcpy(&qword_10063DFB8, "accountButton");
  unk_10063DFC6 = -4864;
}

uint64_t *AccessibilityIdentifier.accountButton.unsafeMutableAddressor()
{
  if (one-time initialization token for accountButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.accountButton;
}

uint64_t static AccessibilityIdentifier.accountButton.getter()
{
  if (one-time initialization token for accountButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.accountButton;

  return v0;
}

void one-time initialization function for libraryListCell()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000010;
  v1._object = 0x80000001004CF130;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryListCell = v2;
  unk_10063DFD0 = v3;
  qword_10063DFD8 = 0xD000000000000010;
  unk_10063DFE0 = 0x80000001004CF130;
}

uint64_t *AccessibilityIdentifier.libraryListCell.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryListCell != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryListCell;
}

uint64_t static AccessibilityIdentifier.libraryListCell.getter()
{
  if (one-time initialization token for libraryListCell != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryListCell;

  return v0;
}

void one-time initialization function for libraryListCellArtwork()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000018;
  v1._object = 0x80000001004CF110;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryListCellArtwork = v2;
  unk_10063DFF0 = v3;
  qword_10063DFF8 = 0xD000000000000018;
  unk_10063E000 = 0x80000001004CF110;
}

uint64_t *AccessibilityIdentifier.libraryListCellArtwork.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryListCellArtwork != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryListCellArtwork;
}

uint64_t static AccessibilityIdentifier.libraryListCellArtwork.getter()
{
  if (one-time initialization token for libraryListCellArtwork != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryListCellArtwork;

  return v0;
}

void one-time initialization function for libraryListCellTitle()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000016;
  v1._object = 0x80000001004CF0F0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryListCellTitle = v2;
  unk_10063E010 = v3;
  qword_10063E018 = 0xD000000000000016;
  unk_10063E020 = 0x80000001004CF0F0;
}

uint64_t *AccessibilityIdentifier.libraryListCellTitle.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryListCellTitle != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryListCellTitle;
}

uint64_t static AccessibilityIdentifier.libraryListCellTitle.getter()
{
  if (one-time initialization token for libraryListCellTitle != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryListCellTitle;

  return v0;
}

void one-time initialization function for libraryListCellSubtitle()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000019;
  v1._object = 0x80000001004CF0D0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryListCellSubtitle = v2;
  unk_10063E030 = v3;
  qword_10063E038 = 0xD000000000000019;
  unk_10063E040 = 0x80000001004CF0D0;
}

uint64_t *AccessibilityIdentifier.libraryListCellSubtitle.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryListCellSubtitle != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryListCellSubtitle;
}

uint64_t static AccessibilityIdentifier.libraryListCellSubtitle.getter()
{
  if (one-time initialization token for libraryListCellSubtitle != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryListCellSubtitle;

  return v0;
}

void one-time initialization function for libraryGridCell()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000010;
  v1._object = 0x80000001004CF0B0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryGridCell = v2;
  unk_10063E050 = v3;
  qword_10063E058 = 0xD000000000000010;
  unk_10063E060 = 0x80000001004CF0B0;
}

uint64_t *AccessibilityIdentifier.libraryGridCell.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryGridCell != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryGridCell;
}

uint64_t static AccessibilityIdentifier.libraryGridCell.getter()
{
  if (one-time initialization token for libraryGridCell != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryGridCell;

  return v0;
}

void one-time initialization function for libraryGridCellArtwork()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000018;
  v1._object = 0x80000001004CF090;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryGridCellArtwork = v2;
  unk_10063E070 = v3;
  qword_10063E078 = 0xD000000000000018;
  unk_10063E080 = 0x80000001004CF090;
}

uint64_t *AccessibilityIdentifier.libraryGridCellArtwork.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryGridCellArtwork != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryGridCellArtwork;
}

uint64_t static AccessibilityIdentifier.libraryGridCellArtwork.getter()
{
  if (one-time initialization token for libraryGridCellArtwork != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryGridCellArtwork;

  return v0;
}

void one-time initialization function for libraryGridCellTitle()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000016;
  v1._object = 0x80000001004CF070;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryGridCellTitle = v2;
  unk_10063E090 = v3;
  qword_10063E098 = 0xD000000000000016;
  unk_10063E0A0 = 0x80000001004CF070;
}

uint64_t *AccessibilityIdentifier.libraryGridCellTitle.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryGridCellTitle != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryGridCellTitle;
}

uint64_t static AccessibilityIdentifier.libraryGridCellTitle.getter()
{
  if (one-time initialization token for libraryGridCellTitle != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryGridCellTitle;

  return v0;
}

void one-time initialization function for libraryGridCellSubtitle()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000019;
  v1._object = 0x80000001004CF050;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryGridCellSubtitle = v2;
  unk_10063E0B0 = v3;
  qword_10063E0B8 = 0xD000000000000019;
  unk_10063E0C0 = 0x80000001004CF050;
}

uint64_t *AccessibilityIdentifier.libraryGridCellSubtitle.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryGridCellSubtitle != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryGridCellSubtitle;
}

uint64_t static AccessibilityIdentifier.libraryGridCellSubtitle.getter()
{
  if (one-time initialization token for libraryGridCellSubtitle != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryGridCellSubtitle;

  return v0;
}

void one-time initialization function for playlistButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000016;
  v1._object = 0x80000001004CF030;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playlistButton = v2;
  unk_10063E0D0 = v3;
  qword_10063E0D8 = 0xD000000000000016;
  unk_10063E0E0 = 0x80000001004CF030;
}

uint64_t *AccessibilityIdentifier.playlistButton.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistButton;
}

uint64_t static AccessibilityIdentifier.playlistButton.getter()
{
  if (one-time initialization token for playlistButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistButton;

  return v0;
}

void one-time initialization function for contextualMenuButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001CLL;
  v1._object = 0x80000001004CF010;
  String.append(_:)(v1);

  static AccessibilityIdentifier.contextualMenuButton = v2;
  unk_10063E0F0 = v3;
  qword_10063E0F8 = 0xD00000000000001CLL;
  unk_10063E100 = 0x80000001004CF010;
}

uint64_t *AccessibilityIdentifier.contextualMenuButton.unsafeMutableAddressor()
{
  if (one-time initialization token for contextualMenuButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.contextualMenuButton;
}

uint64_t static AccessibilityIdentifier.contextualMenuButton.getter()
{
  if (one-time initialization token for contextualMenuButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.contextualMenuButton;

  return v0;
}

void one-time initialization function for libraryFilterOptionsButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001BLL;
  v1._object = 0x80000001004CEFF0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryFilterOptionsButton = v2;
  unk_10063E110 = v3;
  qword_10063E118 = 0xD00000000000001BLL;
  unk_10063E120 = 0x80000001004CEFF0;
}

uint64_t *AccessibilityIdentifier.libraryFilterOptionsButton.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryFilterOptionsButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryFilterOptionsButton;
}

uint64_t static AccessibilityIdentifier.libraryFilterOptionsButton.getter()
{
  if (one-time initialization token for libraryFilterOptionsButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryFilterOptionsButton;

  return v0;
}

void one-time initialization function for librarySortOptionsButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000019;
  v1._object = 0x80000001004CEFD0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.librarySortOptionsButton = v2;
  unk_10063E130 = v3;
  qword_10063E138 = 0xD000000000000019;
  unk_10063E140 = 0x80000001004CEFD0;
}

uint64_t *AccessibilityIdentifier.librarySortOptionsButton.unsafeMutableAddressor()
{
  if (one-time initialization token for librarySortOptionsButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.librarySortOptionsButton;
}

uint64_t static AccessibilityIdentifier.librarySortOptionsButton.getter()
{
  if (one-time initialization token for librarySortOptionsButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.librarySortOptionsButton;

  return v0;
}

void one-time initialization function for libraryTrackCell()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000011;
  v1._object = 0x80000001004CEFB0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryTrackCell = v2;
  unk_10063E150 = v3;
  qword_10063E158 = 0xD000000000000011;
  unk_10063E160 = 0x80000001004CEFB0;
}

uint64_t *AccessibilityIdentifier.libraryTrackCell.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryTrackCell != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTrackCell;
}

uint64_t static AccessibilityIdentifier.libraryTrackCell.getter()
{
  if (one-time initialization token for libraryTrackCell != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTrackCell;

  return v0;
}

void one-time initialization function for libraryTrackCellArtwork()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000019;
  v1._object = 0x80000001004CEF90;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryTrackCellArtwork = v2;
  unk_10063E170 = v3;
  qword_10063E178 = 0xD000000000000019;
  unk_10063E180 = 0x80000001004CEF90;
}

uint64_t *AccessibilityIdentifier.libraryTrackCellArtwork.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryTrackCellArtwork != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTrackCellArtwork;
}

uint64_t static AccessibilityIdentifier.libraryTrackCellArtwork.getter()
{
  if (one-time initialization token for libraryTrackCellArtwork != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTrackCellArtwork;

  return v0;
}

void one-time initialization function for libraryTrackCellTitle()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000017;
  v1._object = 0x80000001004CEF70;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryTrackCellTitle = v2;
  unk_10063E190 = v3;
  qword_10063E198 = 0xD000000000000017;
  unk_10063E1A0 = 0x80000001004CEF70;
}

uint64_t *AccessibilityIdentifier.libraryTrackCellTitle.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryTrackCellTitle != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTrackCellTitle;
}

uint64_t static AccessibilityIdentifier.libraryTrackCellTitle.getter()
{
  if (one-time initialization token for libraryTrackCellTitle != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTrackCellTitle;

  return v0;
}

void one-time initialization function for libraryTrackCellSubtitle()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001ALL;
  v1._object = 0x80000001004CEF50;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryTrackCellSubtitle = v2;
  unk_10063E1B0 = v3;
  qword_10063E1B8 = 0xD00000000000001ALL;
  unk_10063E1C0 = 0x80000001004CEF50;
}

uint64_t *AccessibilityIdentifier.libraryTrackCellSubtitle.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryTrackCellSubtitle != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTrackCellSubtitle;
}

uint64_t static AccessibilityIdentifier.libraryTrackCellSubtitle.getter()
{
  if (one-time initialization token for libraryTrackCellSubtitle != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTrackCellSubtitle;

  return v0;
}

void one-time initialization function for libraryTrackCellDetailText()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001CLL;
  v1._object = 0x80000001004CEF30;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryTrackCellDetailText = v2;
  unk_10063E1D0 = v3;
  qword_10063E1D8 = 0xD00000000000001CLL;
  unk_10063E1E0 = 0x80000001004CEF30;
}

uint64_t *AccessibilityIdentifier.libraryTrackCellDetailText.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryTrackCellDetailText != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTrackCellDetailText;
}

uint64_t static AccessibilityIdentifier.libraryTrackCellDetailText.getter()
{
  if (one-time initialization token for libraryTrackCellDetailText != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTrackCellDetailText;

  return v0;
}

void one-time initialization function for libraryTrackCellDuration()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001ALL;
  v1._object = 0x80000001004CEF10;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryTrackCellDuration = v2;
  unk_10063E1F0 = v3;
  qword_10063E1F8 = 0xD00000000000001ALL;
  unk_10063E200 = 0x80000001004CEF10;
}

uint64_t *AccessibilityIdentifier.libraryTrackCellDuration.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryTrackCellDuration != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTrackCellDuration;
}

uint64_t static AccessibilityIdentifier.libraryTrackCellDuration.getter()
{
  if (one-time initialization token for libraryTrackCellDuration != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTrackCellDuration;

  return v0;
}

void one-time initialization function for libraryTextCell()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000010;
  v1._object = 0x80000001004CEEF0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryTextCell = v2;
  unk_10063E210 = v3;
  qword_10063E218 = 0xD000000000000010;
  unk_10063E220 = 0x80000001004CEEF0;
}

uint64_t *AccessibilityIdentifier.libraryTextCell.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryTextCell != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTextCell;
}

uint64_t static AccessibilityIdentifier.libraryTextCell.getter()
{
  if (one-time initialization token for libraryTextCell != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTextCell;

  return v0;
}

void one-time initialization function for libraryFavoriteBadge()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000015;
  v1._object = 0x80000001004CEED0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryFavoriteBadge = v2;
  unk_10063E230 = v3;
  qword_10063E238 = 0xD000000000000015;
  unk_10063E240 = 0x80000001004CEED0;
}

uint64_t *AccessibilityIdentifier.libraryFavoriteBadge.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryFavoriteBadge != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryFavoriteBadge;
}

uint64_t static AccessibilityIdentifier.libraryFavoriteBadge.getter()
{
  if (one-time initialization token for libraryFavoriteBadge != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryFavoriteBadge;

  return v0;
}

void one-time initialization function for libraryMenuView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000010;
  v1._object = 0x80000001004CEEB0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryMenuView = v2;
  unk_10063E250 = v3;
  qword_10063E258 = 0xD000000000000010;
  unk_10063E260 = 0x80000001004CEEB0;
}

uint64_t *AccessibilityIdentifier.libraryMenuView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryMenuView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryMenuView;
}

uint64_t static AccessibilityIdentifier.libraryMenuView.getter()
{
  if (one-time initialization token for libraryMenuView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryMenuView;

  return v0;
}

void one-time initialization function for libraryContentView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000013;
  v1._object = 0x80000001004CEE90;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryContentView = v2;
  unk_10063E270 = v3;
  qword_10063E278 = 0xD000000000000013;
  unk_10063E280 = 0x80000001004CEE90;
}

uint64_t *AccessibilityIdentifier.libraryContentView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryContentView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryContentView;
}

uint64_t static AccessibilityIdentifier.libraryContentView.getter()
{
  if (one-time initialization token for libraryContentView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryContentView;

  return v0;
}

void one-time initialization function for libraryPins()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x2E7972617262694CLL;
  v1._object = 0xEC000000736E6950;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryPins = v2;
  unk_10063E290 = v3;
  strcpy(&qword_10063E298, "Library.Pins");
  unk_10063E2A5 = 0;
  unk_10063E2A6 = -5120;
}

uint64_t *AccessibilityIdentifier.libraryPins.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryPins != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryPins;
}

uint64_t static AccessibilityIdentifier.libraryPins.getter()
{
  if (one-time initialization token for libraryPins != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryPins;

  return v0;
}

void one-time initialization function for libraryView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x567972617262694CLL;
  v1._object = 0xEB00000000776569;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryView = v2;
  unk_10063E2B0 = v3;
  qword_10063E2B8 = 0x567972617262694CLL;
  unk_10063E2C0 = 0xEB00000000776569;
}

uint64_t *AccessibilityIdentifier.libraryView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryView;
}

uint64_t static AccessibilityIdentifier.libraryView.getter()
{
  if (one-time initialization token for libraryView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryView;

  return v0;
}

void one-time initialization function for libraryRecentlyAddedView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000019;
  v1._object = 0x80000001004CF9F0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryRecentlyAddedView = v2;
  unk_10063E2D0 = v3;
  qword_10063E2D8 = 0xD000000000000019;
  unk_10063E2E0 = 0x80000001004CF9F0;
}

uint64_t static AccessibilityIdentifier.libraryRecentlyAddedView.getter()
{
  if (one-time initialization token for libraryRecentlyAddedView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryRecentlyAddedView;

  return v0;
}

void one-time initialization function for libraryArtistsListView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000017;
  v1._object = 0x80000001004CF970;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryArtistsListView = v2;
  unk_10063E2F0 = v3;
  qword_10063E2F8 = 0xD000000000000017;
  unk_10063E300 = 0x80000001004CF970;
}

uint64_t static AccessibilityIdentifier.libraryArtistsListView.getter()
{
  if (one-time initialization token for libraryArtistsListView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryArtistsListView;

  return v0;
}

void one-time initialization function for libraryArtistsDetailView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000020;
  v1._object = 0x80000001004CEE60;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryArtistsDetailView = v2;
  unk_10063E310 = v3;
  qword_10063E318 = 0xD000000000000020;
  unk_10063E320 = 0x80000001004CEE60;
}

uint64_t *AccessibilityIdentifier.libraryArtistsDetailView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryArtistsDetailView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryArtistsDetailView;
}

uint64_t static AccessibilityIdentifier.libraryArtistsDetailView.getter()
{
  if (one-time initialization token for libraryArtistsDetailView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryArtistsDetailView;

  return v0;
}

void one-time initialization function for libraryAlbumsView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000012;
  v1._object = 0x80000001004CF950;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryAlbumsView = v2;
  unk_10063E330 = v3;
  qword_10063E338 = 0xD000000000000012;
  unk_10063E340 = 0x80000001004CF950;
}

uint64_t static AccessibilityIdentifier.libraryAlbumsView.getter()
{
  if (one-time initialization token for libraryAlbumsView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryAlbumsView;

  return v0;
}

void one-time initialization function for libraryComposersView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000015;
  v1._object = 0x80000001004CFA70;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryComposersView = v2;
  unk_10063E350 = v3;
  qword_10063E358 = 0xD000000000000015;
  unk_10063E360 = 0x80000001004CFA70;
}

uint64_t static AccessibilityIdentifier.libraryComposersView.getter()
{
  if (one-time initialization token for libraryComposersView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryComposersView;

  return v0;
}

void one-time initialization function for libraryCompilationsView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000018;
  v1._object = 0x80000001004CFA50;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryCompilationsView = v2;
  unk_10063E370 = v3;
  qword_10063E378 = 0xD000000000000018;
  unk_10063E380 = 0x80000001004CFA50;
}

uint64_t static AccessibilityIdentifier.libraryCompilationsView.getter()
{
  if (one-time initialization token for libraryCompilationsView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryCompilationsView;

  return v0;
}

void one-time initialization function for libraryDownloadedView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000016;
  v1._object = 0x80000001004CFAB0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryDownloadedView = v2;
  unk_10063E390 = v3;
  qword_10063E398 = 0xD000000000000016;
  unk_10063E3A0 = 0x80000001004CFAB0;
}

uint64_t static AccessibilityIdentifier.libraryDownloadedView.getter()
{
  if (one-time initialization token for libraryDownloadedView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryDownloadedView;

  return v0;
}

void one-time initialization function for libraryDownloadingView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000017;
  v1._object = 0x80000001004CFAD0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryDownloadingView = v2;
  unk_10063E3B0 = v3;
  qword_10063E3B8 = 0xD000000000000017;
  unk_10063E3C0 = 0x80000001004CFAD0;
}

uint64_t static AccessibilityIdentifier.libraryDownloadingView.getter()
{
  if (one-time initialization token for libraryDownloadingView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryDownloadingView;

  return v0;
}

void one-time initialization function for libraryGenresView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000012;
  v1._object = 0x80000001004CF9D0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryGenresView = v2;
  unk_10063E3D0 = v3;
  qword_10063E3D8 = 0xD000000000000012;
  unk_10063E3E0 = 0x80000001004CF9D0;
}

uint64_t static AccessibilityIdentifier.libraryGenresView.getter()
{
  if (one-time initialization token for libraryGenresView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryGenresView;

  return v0;
}

void one-time initialization function for libraryMadeForYouView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000016;
  v1._object = 0x80000001004CFA10;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryMadeForYouView = v2;
  unk_10063E3F0 = v3;
  qword_10063E3F8 = 0xD000000000000016;
  unk_10063E400 = 0x80000001004CFA10;
}

uint64_t static AccessibilityIdentifier.libraryMadeForYouView.getter()
{
  if (one-time initialization token for libraryMadeForYouView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryMadeForYouView;

  return v0;
}

void one-time initialization function for libraryMusicVideosView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000017;
  v1._object = 0x80000001004CFA30;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryMusicVideosView = v2;
  unk_10063E410 = v3;
  qword_10063E418 = 0xD000000000000017;
  unk_10063E420 = 0x80000001004CFA30;
}

uint64_t static AccessibilityIdentifier.libraryMusicVideosView.getter()
{
  if (one-time initialization token for libraryMusicVideosView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryMusicVideosView;

  return v0;
}

void one-time initialization function for libraryPlaylistsView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000015;
  v1._object = 0x80000001004CF9B0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryPlaylistsView = v2;
  unk_10063E430 = v3;
  qword_10063E438 = 0xD000000000000015;
  unk_10063E440 = 0x80000001004CF9B0;
}

uint64_t static AccessibilityIdentifier.libraryPlaylistsView.getter()
{
  if (one-time initialization token for libraryPlaylistsView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryPlaylistsView;

  return v0;
}

void one-time initialization function for librarySongsView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000011;
  v1._object = 0x80000001004CF990;
  String.append(_:)(v1);

  static AccessibilityIdentifier.librarySongsView = v2;
  unk_10063E450 = v3;
  qword_10063E458 = 0xD000000000000011;
  unk_10063E460 = 0x80000001004CF990;
}

uint64_t static AccessibilityIdentifier.librarySongsView.getter()
{
  if (one-time initialization token for librarySongsView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.librarySongsView;

  return v0;
}

void one-time initialization function for libraryTVAndMoviesView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000017;
  v1._object = 0x80000001004CFA90;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryTVAndMoviesView = v2;
  unk_10063E470 = v3;
  qword_10063E478 = 0xD000000000000017;
  unk_10063E480 = 0x80000001004CFA90;
}

uint64_t static AccessibilityIdentifier.libraryTVAndMoviesView.getter()
{
  if (one-time initialization token for libraryTVAndMoviesView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTVAndMoviesView;

  return v0;
}

void one-time initialization function for listenNowContentView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000015;
  v1._object = 0x80000001004CEE40;
  String.append(_:)(v1);

  static AccessibilityIdentifier.listenNowContentView = v2;
  unk_10063E490 = v3;
  qword_10063E498 = 0xD000000000000015;
  unk_10063E4A0 = 0x80000001004CEE40;
}

uint64_t *AccessibilityIdentifier.listenNowContentView.unsafeMutableAddressor()
{
  if (one-time initialization token for listenNowContentView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.listenNowContentView;
}

uint64_t static AccessibilityIdentifier.listenNowContentView.getter()
{
  if (one-time initialization token for listenNowContentView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.listenNowContentView;

  return v0;
}

void one-time initialization function for browseContentView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000012;
  v1._object = 0x80000001004CEE20;
  String.append(_:)(v1);

  static AccessibilityIdentifier.browseContentView = v2;
  unk_10063E4B0 = v3;
  qword_10063E4B8 = 0xD000000000000012;
  unk_10063E4C0 = 0x80000001004CEE20;
}

uint64_t *AccessibilityIdentifier.browseContentView.unsafeMutableAddressor()
{
  if (one-time initialization token for browseContentView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.browseContentView;
}

uint64_t static AccessibilityIdentifier.browseContentView.getter()
{
  if (one-time initialization token for browseContentView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.browseContentView;

  return v0;
}

void one-time initialization function for radioContentView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000011;
  v1._object = 0x80000001004CEE00;
  String.append(_:)(v1);

  static AccessibilityIdentifier.radioContentView = v2;
  unk_10063E4D0 = v3;
  qword_10063E4D8 = 0xD000000000000011;
  unk_10063E4E0 = 0x80000001004CEE00;
}

uint64_t *AccessibilityIdentifier.radioContentView.unsafeMutableAddressor()
{
  if (one-time initialization token for radioContentView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.radioContentView;
}

uint64_t static AccessibilityIdentifier.radioContentView.getter()
{
  if (one-time initialization token for radioContentView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.radioContentView;

  return v0;
}

void one-time initialization function for searchContentView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000012;
  v1._object = 0x80000001004CEDE0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.searchContentView = v2;
  unk_10063E4F0 = v3;
  qword_10063E4F8 = 0xD000000000000012;
  unk_10063E500 = 0x80000001004CEDE0;
}

uint64_t *AccessibilityIdentifier.searchContentView.unsafeMutableAddressor()
{
  if (one-time initialization token for searchContentView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.searchContentView;
}

uint64_t static AccessibilityIdentifier.searchContentView.getter()
{
  if (one-time initialization token for searchContentView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.searchContentView;

  return v0;
}

void one-time initialization function for videosContentView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000012;
  v1._object = 0x80000001004CEDC0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.videosContentView = v2;
  unk_10063E510 = v3;
  qword_10063E518 = 0xD000000000000012;
  unk_10063E520 = 0x80000001004CEDC0;
}

uint64_t *AccessibilityIdentifier.videosContentView.unsafeMutableAddressor()
{
  if (one-time initialization token for videosContentView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.videosContentView;
}

uint64_t static AccessibilityIdentifier.videosContentView.getter()
{
  if (one-time initialization token for videosContentView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.videosContentView;

  return v0;
}

void one-time initialization function for nowPlayingView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x6979616C50776F4ELL;
  v1._object = 0xEE0077656956676ELL;
  String.append(_:)(v1);

  static AccessibilityIdentifier.nowPlayingView = v2;
  unk_10063E530 = v3;
  strcpy(&qword_10063E538, "NowPlayingView");
  unk_10063E547 = -18;
}

uint64_t *AccessibilityIdentifier.nowPlayingView.unsafeMutableAddressor()
{
  if (one-time initialization token for nowPlayingView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingView;
}

uint64_t static AccessibilityIdentifier.nowPlayingView.getter()
{
  if (one-time initialization token for nowPlayingView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingView;

  return v0;
}

void one-time initialization function for bottomPlayerView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000010;
  v1._object = 0x80000001004CEDA0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.bottomPlayerView = v2;
  unk_10063E550 = v3;
  qword_10063E558 = 0xD000000000000010;
  unk_10063E560 = 0x80000001004CEDA0;
}

uint64_t *AccessibilityIdentifier.bottomPlayerView.unsafeMutableAddressor()
{
  if (one-time initialization token for bottomPlayerView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.bottomPlayerView;
}

uint64_t static AccessibilityIdentifier.bottomPlayerView.getter()
{
  if (one-time initialization token for bottomPlayerView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.bottomPlayerView;

  return v0;
}

void one-time initialization function for nowPlayingShuffleButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000018;
  v1._object = 0x80000001004CED80;
  String.append(_:)(v1);

  static AccessibilityIdentifier.nowPlayingShuffleButton = v2;
  unk_10063E570 = v3;
  qword_10063E578 = 0xD000000000000018;
  unk_10063E580 = 0x80000001004CED80;
}

uint64_t *AccessibilityIdentifier.nowPlayingShuffleButton.unsafeMutableAddressor()
{
  if (one-time initialization token for nowPlayingShuffleButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingShuffleButton;
}

uint64_t static AccessibilityIdentifier.nowPlayingShuffleButton.getter()
{
  if (one-time initialization token for nowPlayingShuffleButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingShuffleButton;

  return v0;
}

void one-time initialization function for nowPlayingRepeatButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000017;
  v1._object = 0x80000001004CED60;
  String.append(_:)(v1);

  static AccessibilityIdentifier.nowPlayingRepeatButton = v2;
  unk_10063E590 = v3;
  qword_10063E598 = 0xD000000000000017;
  unk_10063E5A0 = 0x80000001004CED60;
}

uint64_t *AccessibilityIdentifier.nowPlayingRepeatButton.unsafeMutableAddressor()
{
  if (one-time initialization token for nowPlayingRepeatButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingRepeatButton;
}

uint64_t static AccessibilityIdentifier.nowPlayingRepeatButton.getter()
{
  if (one-time initialization token for nowPlayingRepeatButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingRepeatButton;

  return v0;
}

void one-time initialization function for nowPlayingAutoPlayButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000019;
  v1._object = 0x80000001004CED40;
  String.append(_:)(v1);

  static AccessibilityIdentifier.nowPlayingAutoPlayButton = v2;
  unk_10063E5B0 = v3;
  qword_10063E5B8 = 0xD000000000000019;
  unk_10063E5C0 = 0x80000001004CED40;
}

uint64_t *AccessibilityIdentifier.nowPlayingAutoPlayButton.unsafeMutableAddressor()
{
  if (one-time initialization token for nowPlayingAutoPlayButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingAutoPlayButton;
}

uint64_t static AccessibilityIdentifier.nowPlayingAutoPlayButton.getter()
{
  if (one-time initialization token for nowPlayingAutoPlayButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingAutoPlayButton;

  return v0;
}

void one-time initialization function for nowPlayingFavoriteButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000019;
  v1._object = 0x80000001004CED20;
  String.append(_:)(v1);

  static AccessibilityIdentifier.nowPlayingFavoriteButton = v2;
  unk_10063E5D0 = v3;
  qword_10063E5D8 = 0xD000000000000019;
  unk_10063E5E0 = 0x80000001004CED20;
}

uint64_t *AccessibilityIdentifier.nowPlayingFavoriteButton.unsafeMutableAddressor()
{
  if (one-time initialization token for nowPlayingFavoriteButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingFavoriteButton;
}

uint64_t static AccessibilityIdentifier.nowPlayingFavoriteButton.getter()
{
  if (one-time initialization token for nowPlayingFavoriteButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingFavoriteButton;

  return v0;
}

void one-time initialization function for nowPlayingAudioBadgeLosslessButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000024;
  v1._object = 0x80000001004CECF0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.nowPlayingAudioBadgeLosslessButton = v2;
  unk_10063E5F0 = v3;
  qword_10063E5F8 = 0xD000000000000024;
  unk_10063E600 = 0x80000001004CECF0;
}

uint64_t *AccessibilityIdentifier.nowPlayingAudioBadgeLosslessButton.unsafeMutableAddressor()
{
  if (one-time initialization token for nowPlayingAudioBadgeLosslessButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingAudioBadgeLosslessButton;
}

uint64_t static AccessibilityIdentifier.nowPlayingAudioBadgeLosslessButton.getter()
{
  if (one-time initialization token for nowPlayingAudioBadgeLosslessButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingAudioBadgeLosslessButton;

  return v0;
}

void one-time initialization function for nowPlayingAudioBadgeDolbyButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000021;
  v1._object = 0x80000001004CECC0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.nowPlayingAudioBadgeDolbyButton = v2;
  unk_10063E610 = v3;
  qword_10063E618 = 0xD000000000000021;
  unk_10063E620 = 0x80000001004CECC0;
}

uint64_t *AccessibilityIdentifier.nowPlayingAudioBadgeDolbyButton.unsafeMutableAddressor()
{
  if (one-time initialization token for nowPlayingAudioBadgeDolbyButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingAudioBadgeDolbyButton;
}

uint64_t static AccessibilityIdentifier.nowPlayingAudioBadgeDolbyButton.getter()
{
  if (one-time initialization token for nowPlayingAudioBadgeDolbyButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingAudioBadgeDolbyButton;

  return v0;
}

void one-time initialization function for nowPlayingAudioBadgeSpatialButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000023;
  v1._object = 0x80000001004CEC90;
  String.append(_:)(v1);

  static AccessibilityIdentifier.nowPlayingAudioBadgeSpatialButton = v2;
  unk_10063E630 = v3;
  qword_10063E638 = 0xD000000000000023;
  unk_10063E640 = 0x80000001004CEC90;
}

uint64_t *AccessibilityIdentifier.nowPlayingAudioBadgeSpatialButton.unsafeMutableAddressor()
{
  if (one-time initialization token for nowPlayingAudioBadgeSpatialButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingAudioBadgeSpatialButton;
}

uint64_t static AccessibilityIdentifier.nowPlayingAudioBadgeSpatialButton.getter()
{
  if (one-time initialization token for nowPlayingAudioBadgeSpatialButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingAudioBadgeSpatialButton;

  return v0;
}

void one-time initialization function for muteButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x747475426574754DLL;
  v1._object = 0xEA00000000006E6FLL;
  String.append(_:)(v1);

  static AccessibilityIdentifier.muteButton = v2;
  unk_10063E650 = v3;
  qword_10063E658 = 0x747475426574754DLL;
  unk_10063E660 = 0xEA00000000006E6FLL;
}

uint64_t *AccessibilityIdentifier.muteButton.unsafeMutableAddressor()
{
  if (one-time initialization token for muteButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.muteButton;
}

uint64_t static AccessibilityIdentifier.muteButton.getter()
{
  if (one-time initialization token for muteButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.muteButton;

  return v0;
}

void one-time initialization function for volumeSlider()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x6C53656D756C6F56;
  v1._object = 0xEC00000072656469;
  String.append(_:)(v1);

  static AccessibilityIdentifier.volumeSlider = v2;
  unk_10063E670 = v3;
  strcpy(&qword_10063E678, "VolumeSlider");
  unk_10063E685 = 0;
  unk_10063E686 = -5120;
}

uint64_t *AccessibilityIdentifier.volumeSlider.unsafeMutableAddressor()
{
  if (one-time initialization token for volumeSlider != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.volumeSlider;
}

uint64_t static AccessibilityIdentifier.volumeSlider.getter()
{
  if (one-time initialization token for volumeSlider != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.volumeSlider;

  return v0;
}

void one-time initialization function for playbackSlider()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x6B63616279616C50;
  v1._object = 0xEE00726564696C53;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playbackSlider = v2;
  unk_10063E690 = v3;
  strcpy(&qword_10063E698, "PlaybackSlider");
  unk_10063E6A7 = -18;
}

uint64_t *AccessibilityIdentifier.playbackSlider.unsafeMutableAddressor()
{
  if (one-time initialization token for playbackSlider != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playbackSlider;
}

uint64_t static AccessibilityIdentifier.playbackSlider.getter()
{
  if (one-time initialization token for playbackSlider != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playbackSlider;

  return v0;
}

void one-time initialization function for playerMenuButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001BLL;
  v1._object = 0x80000001004CEC70;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playerMenuButton = v2;
  unk_10063E6B0 = v3;
  qword_10063E6B8 = 0xD00000000000001BLL;
  unk_10063E6C0 = 0x80000001004CEC70;
}

uint64_t *AccessibilityIdentifier.playerMenuButton.unsafeMutableAddressor()
{
  if (one-time initialization token for playerMenuButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playerMenuButton;
}

uint64_t static AccessibilityIdentifier.playerMenuButton.getter()
{
  if (one-time initialization token for playerMenuButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playerMenuButton;

  return v0;
}

void one-time initialization function for lyricsButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x754273636972794CLL;
  v1._object = 0xEC0000006E6F7474;
  String.append(_:)(v1);

  static AccessibilityIdentifier.lyricsButton = v2;
  unk_10063E6D0 = v3;
  strcpy(&qword_10063E6D8, "LyricsButton");
  unk_10063E6E5 = 0;
  unk_10063E6E6 = -5120;
}

uint64_t *AccessibilityIdentifier.lyricsButton.unsafeMutableAddressor()
{
  if (one-time initialization token for lyricsButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.lyricsButton;
}

uint64_t static AccessibilityIdentifier.lyricsButton.getter()
{
  if (one-time initialization token for lyricsButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.lyricsButton;

  return v0;
}

void one-time initialization function for playbackQueueButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000013;
  v1._object = 0x80000001004CEC50;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playbackQueueButton = v2;
  unk_10063E6F0 = v3;
  qword_10063E6F8 = 0xD000000000000013;
  unk_10063E700 = 0x80000001004CEC50;
}

uint64_t *AccessibilityIdentifier.playbackQueueButton.unsafeMutableAddressor()
{
  if (one-time initialization token for playbackQueueButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playbackQueueButton;
}

uint64_t static AccessibilityIdentifier.playbackQueueButton.getter()
{
  if (one-time initialization token for playbackQueueButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playbackQueueButton;

  return v0;
}

void one-time initialization function for playlistSuggestedSongsView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001BLL;
  v1._object = 0x80000001004CEC30;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playlistSuggestedSongsView = v2;
  unk_10063E710 = v3;
  qword_10063E718 = 0xD00000000000001BLL;
  unk_10063E720 = 0x80000001004CEC30;
}

uint64_t *AccessibilityIdentifier.playlistSuggestedSongsView.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistSuggestedSongsView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistSuggestedSongsView;
}

uint64_t static AccessibilityIdentifier.playlistSuggestedSongsView.getter()
{
  if (one-time initialization token for playlistSuggestedSongsView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistSuggestedSongsView;

  return v0;
}

void one-time initialization function for playlistSuggestedSongsRefreshButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000025;
  v1._object = 0x80000001004CEC00;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playlistSuggestedSongsRefreshButton = v2;
  unk_10063E730 = v3;
  qword_10063E738 = 0xD000000000000025;
  unk_10063E740 = 0x80000001004CEC00;
}

uint64_t *AccessibilityIdentifier.playlistSuggestedSongsRefreshButton.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistSuggestedSongsRefreshButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistSuggestedSongsRefreshButton;
}

uint64_t static AccessibilityIdentifier.playlistSuggestedSongsRefreshButton.getter()
{
  if (one-time initialization token for playlistSuggestedSongsRefreshButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistSuggestedSongsRefreshButton;

  return v0;
}

void one-time initialization function for playlistSuggestedSongsCell()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001CLL;
  v1._object = 0x80000001004CEBE0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playlistSuggestedSongsCell = v2;
  unk_10063E750 = v3;
  qword_10063E758 = 0xD00000000000001CLL;
  unk_10063E760 = 0x80000001004CEBE0;
}

uint64_t *AccessibilityIdentifier.playlistSuggestedSongsCell.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistSuggestedSongsCell != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistSuggestedSongsCell;
}

uint64_t static AccessibilityIdentifier.playlistSuggestedSongsCell.getter()
{
  if (one-time initialization token for playlistSuggestedSongsCell != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistSuggestedSongsCell;

  return v0;
}

void one-time initialization function for playlistSuggestedSongsCellArtwork()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000024;
  v1._object = 0x80000001004CEBB0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playlistSuggestedSongsCellArtwork = v2;
  unk_10063E770 = v3;
  qword_10063E778 = 0xD000000000000024;
  unk_10063E780 = 0x80000001004CEBB0;
}

uint64_t *AccessibilityIdentifier.playlistSuggestedSongsCellArtwork.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistSuggestedSongsCellArtwork != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistSuggestedSongsCellArtwork;
}

uint64_t static AccessibilityIdentifier.playlistSuggestedSongsCellArtwork.getter()
{
  if (one-time initialization token for playlistSuggestedSongsCellArtwork != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistSuggestedSongsCellArtwork;

  return v0;
}

void one-time initialization function for playlistSuggestedSongsCellTitle()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000022;
  v1._object = 0x80000001004CEB80;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playlistSuggestedSongsCellTitle = v2;
  unk_10063E790 = v3;
  qword_10063E798 = 0xD000000000000022;
  unk_10063E7A0 = 0x80000001004CEB80;
}

uint64_t *AccessibilityIdentifier.playlistSuggestedSongsCellTitle.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistSuggestedSongsCellTitle != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistSuggestedSongsCellTitle;
}

uint64_t static AccessibilityIdentifier.playlistSuggestedSongsCellTitle.getter()
{
  if (one-time initialization token for playlistSuggestedSongsCellTitle != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistSuggestedSongsCellTitle;

  return v0;
}

void one-time initialization function for playlistSuggestedSongsCellArtistName()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000027;
  v1._object = 0x80000001004CEB50;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playlistSuggestedSongsCellArtistName = v2;
  unk_10063E7B0 = v3;
  qword_10063E7B8 = 0xD000000000000027;
  unk_10063E7C0 = 0x80000001004CEB50;
}

uint64_t *AccessibilityIdentifier.playlistSuggestedSongsCellArtistName.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistSuggestedSongsCellArtistName != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistSuggestedSongsCellArtistName;
}

uint64_t static AccessibilityIdentifier.playlistSuggestedSongsCellArtistName.getter()
{
  if (one-time initialization token for playlistSuggestedSongsCellArtistName != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistSuggestedSongsCellArtistName;

  return v0;
}

void one-time initialization function for playlistSuggestedSongsCellDuration()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000025;
  v1._object = 0x80000001004CEB20;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playlistSuggestedSongsCellDuration = v2;
  unk_10063E7D0 = v3;
  qword_10063E7D8 = 0xD000000000000025;
  unk_10063E7E0 = 0x80000001004CEB20;
}

uint64_t *AccessibilityIdentifier.playlistSuggestedSongsCellDuration.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistSuggestedSongsCellDuration != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistSuggestedSongsCellDuration;
}

uint64_t static AccessibilityIdentifier.playlistSuggestedSongsCellDuration.getter()
{
  if (one-time initialization token for playlistSuggestedSongsCellDuration != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistSuggestedSongsCellDuration;

  return v0;
}

void one-time initialization function for playlistSuggestedSongsCellAddButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000026;
  v1._object = 0x80000001004CEAF0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playlistSuggestedSongsCellAddButton = v2;
  unk_10063E7F0 = v3;
  qword_10063E7F8 = 0xD000000000000026;
  unk_10063E800 = 0x80000001004CEAF0;
}

uint64_t *AccessibilityIdentifier.playlistSuggestedSongsCellAddButton.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistSuggestedSongsCellAddButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistSuggestedSongsCellAddButton;
}

uint64_t static AccessibilityIdentifier.playlistSuggestedSongsCellAddButton.getter()
{
  if (one-time initialization token for playlistSuggestedSongsCellAddButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistSuggestedSongsCellAddButton;

  return v0;
}

void one-time initialization function for playlistAddMusicCell()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000015;
  v1._object = 0x80000001004CEAD0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playlistAddMusicCell = v2;
  unk_10063E810 = v3;
  qword_10063E818 = 0xD000000000000015;
  unk_10063E820 = 0x80000001004CEAD0;
}

uint64_t *AccessibilityIdentifier.playlistAddMusicCell.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistAddMusicCell != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistAddMusicCell;
}

uint64_t static AccessibilityIdentifier.playlistAddMusicCell.getter()
{
  if (one-time initialization token for playlistAddMusicCell != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistAddMusicCell;

  return v0;
}

void one-time initialization function for artistFavorite()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x462E747369747241;
  v1._object = 0xEF657469726F7661;
  String.append(_:)(v1);

  static AccessibilityIdentifier.artistFavorite = v2;
  unk_10063E830 = v3;
  qword_10063E838 = 0x462E747369747241;
  unk_10063E840 = 0xEF657469726F7661;
}

uint64_t *AccessibilityIdentifier.artistFavorite.unsafeMutableAddressor()
{
  if (one-time initialization token for artistFavorite != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.artistFavorite;
}

uint64_t static AccessibilityIdentifier.artistFavorite.getter()
{
  if (one-time initialization token for artistFavorite != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.artistFavorite;

  return v0;
}

void one-time initialization function for artistUndoFavorite()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000013;
  v1._object = 0x80000001004CEAB0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.artistUndoFavorite = v2;
  unk_10063E850 = v3;
  qword_10063E858 = 0xD000000000000013;
  unk_10063E860 = 0x80000001004CEAB0;
}

uint64_t *AccessibilityIdentifier.artistUndoFavorite.unsafeMutableAddressor()
{
  if (one-time initialization token for artistUndoFavorite != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.artistUndoFavorite;
}

uint64_t static AccessibilityIdentifier.artistUndoFavorite.getter()
{
  if (one-time initialization token for artistUndoFavorite != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.artistUndoFavorite;

  return v0;
}

void one-time initialization function for favoriteBadge()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x657469726F766146;
  v1._object = 0xED00006567646142;
  String.append(_:)(v1);

  static AccessibilityIdentifier.favoriteBadge = v2;
  unk_10063E870 = v3;
  strcpy(&qword_10063E878, "FavoriteBadge");
  unk_10063E886 = -4864;
}

uint64_t *AccessibilityIdentifier.favoriteBadge.unsafeMutableAddressor()
{
  if (one-time initialization token for favoriteBadge != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.favoriteBadge;
}

uint64_t static AccessibilityIdentifier.favoriteBadge.getter()
{
  if (one-time initialization token for favoriteBadge != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.favoriteBadge;

  return v0;
}

void one-time initialization function for privacyTermsAcceptButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000018;
  v1._object = 0x80000001004CEA90;
  String.append(_:)(v1);

  static AccessibilityIdentifier.privacyTermsAcceptButton = v2;
  unk_10063E890 = v3;
  qword_10063E898 = 0xD000000000000018;
  unk_10063E8A0 = 0x80000001004CEA90;
}

uint64_t *AccessibilityIdentifier.privacyTermsAcceptButton.unsafeMutableAddressor()
{
  if (one-time initialization token for privacyTermsAcceptButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.privacyTermsAcceptButton;
}

uint64_t static AccessibilityIdentifier.privacyTermsAcceptButton.getter()
{
  if (one-time initialization token for privacyTermsAcceptButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.privacyTermsAcceptButton;

  return v0;
}

void one-time initialization function for privacyTermsLink()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000010;
  v1._object = 0x80000001004CEA70;
  String.append(_:)(v1);

  static AccessibilityIdentifier.privacyTermsLink = v2;
  unk_10063E8B0 = v3;
  qword_10063E8B8 = 0xD000000000000010;
  unk_10063E8C0 = 0x80000001004CEA70;
}

uint64_t *AccessibilityIdentifier.privacyTermsLink.unsafeMutableAddressor()
{
  if (one-time initialization token for privacyTermsLink != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.privacyTermsLink;
}

uint64_t static AccessibilityIdentifier.privacyTermsLink.getter()
{
  if (one-time initialization token for privacyTermsLink != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.privacyTermsLink;

  return v0;
}

void one-time initialization function for privacyWelcomeImage()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000013;
  v1._object = 0x80000001004CEA50;
  String.append(_:)(v1);

  static AccessibilityIdentifier.privacyWelcomeImage = v2;
  unk_10063E8D0 = v3;
  qword_10063E8D8 = 0xD000000000000013;
  unk_10063E8E0 = 0x80000001004CEA50;
}

uint64_t *AccessibilityIdentifier.privacyWelcomeImage.unsafeMutableAddressor()
{
  if (one-time initialization token for privacyWelcomeImage != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.privacyWelcomeImage;
}

uint64_t static AccessibilityIdentifier.privacyWelcomeImage.getter()
{
  if (one-time initialization token for privacyWelcomeImage != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.privacyWelcomeImage;

  return v0;
}

void one-time initialization function for privacyWelcomeTitle()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000013;
  v1._object = 0x80000001004CEA30;
  String.append(_:)(v1);

  static AccessibilityIdentifier.privacyWelcomeTitle = v2;
  unk_10063E8F0 = v3;
  qword_10063E8F8 = 0xD000000000000013;
  unk_10063E900 = 0x80000001004CEA30;
}

uint64_t *AccessibilityIdentifier.privacyWelcomeTitle.unsafeMutableAddressor()
{
  if (one-time initialization token for privacyWelcomeTitle != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.privacyWelcomeTitle;
}

uint64_t static AccessibilityIdentifier.privacyWelcomeTitle.getter()
{
  if (one-time initialization token for privacyWelcomeTitle != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.privacyWelcomeTitle;

  return v0;
}

void one-time initialization function for privacyWelcomeDescription()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000019;
  v1._object = 0x80000001004CEA10;
  String.append(_:)(v1);

  static AccessibilityIdentifier.privacyWelcomeDescription = v2;
  unk_10063E910 = v3;
  qword_10063E918 = 0xD000000000000019;
  unk_10063E920 = 0x80000001004CEA10;
}

uint64_t *AccessibilityIdentifier.privacyWelcomeDescription.unsafeMutableAddressor()
{
  if (one-time initialization token for privacyWelcomeDescription != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.privacyWelcomeDescription;
}

uint64_t static AccessibilityIdentifier.privacyWelcomeDescription.getter()
{
  if (one-time initialization token for privacyWelcomeDescription != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.privacyWelcomeDescription;

  return v0;
}

void one-time initialization function for albumView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x6569566D75626C41;
  v1._object = 0xE900000000000077;
  String.append(_:)(v1);

  static AccessibilityIdentifier.albumView = v2;
  unk_10063E930 = v3;
  qword_10063E938 = 0x6569566D75626C41;
  unk_10063E940 = 0xE900000000000077;
}

uint64_t *AccessibilityIdentifier.albumView.unsafeMutableAddressor()
{
  if (one-time initialization token for albumView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.albumView;
}

uint64_t static AccessibilityIdentifier.albumView.getter()
{
  if (one-time initialization token for albumView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.albumView;

  return v0;
}

void one-time initialization function for playlistView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x7473696C79616C50;
  v1._object = 0xEC00000077656956;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playlistView = v2;
  unk_10063E950 = v3;
  strcpy(&qword_10063E958, "PlaylistView");
  unk_10063E965 = 0;
  unk_10063E966 = -5120;
}

uint64_t *AccessibilityIdentifier.playlistView.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistView;
}

uint64_t static AccessibilityIdentifier.playlistView.getter()
{
  if (one-time initialization token for playlistView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistView;

  return v0;
}

void one-time initialization function for playlistFolderView()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000012;
  v1._object = 0x80000001004CE9F0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playlistFolderView = v2;
  unk_10063E970 = v3;
  qword_10063E978 = 0xD000000000000012;
  unk_10063E980 = 0x80000001004CE9F0;
}

uint64_t *AccessibilityIdentifier.playlistFolderView.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistFolderView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistFolderView;
}

uint64_t static AccessibilityIdentifier.playlistFolderView.getter()
{
  if (one-time initialization token for playlistFolderView != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistFolderView;

  return v0;
}

void one-time initialization function for playlistEditorMetadataArtworkExpression1()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000002BLL;
  v1._object = 0x80000001004CF7D0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1 = v2;
  unk_10063E990 = v3;
  qword_10063E998 = 0xD00000000000002BLL;
  unk_10063E9A0 = 0x80000001004CF7D0;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1.getter()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression1 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1;

  return v0;
}

void one-time initialization function for playlistEditorMetadataArtworkExpression2()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000002BLL;
  v1._object = 0x80000001004CF800;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2 = v2;
  unk_10063E9B0 = v3;
  qword_10063E9B8 = 0xD00000000000002BLL;
  unk_10063E9C0 = 0x80000001004CF800;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2.getter()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression2 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2;

  return v0;
}

void one-time initialization function for playlistEditorMetadataArtworkExpression3()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000002BLL;
  v1._object = 0x80000001004CF830;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3 = v2;
  unk_10063E9D0 = v3;
  qword_10063E9D8 = 0xD00000000000002BLL;
  unk_10063E9E0 = 0x80000001004CF830;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3.getter()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression3 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3;

  return v0;
}

void one-time initialization function for playlistEditorMetadataArtworkExpression4()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000002BLL;
  v1._object = 0x80000001004CF860;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4 = v2;
  unk_10063E9F0 = v3;
  qword_10063E9F8 = 0xD00000000000002BLL;
  unk_10063EA00 = 0x80000001004CF860;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4.getter()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression4 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4;

  return v0;
}

void one-time initialization function for playlistEditorMetadataArtworkExpression5()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000002BLL;
  v1._object = 0x80000001004CF890;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5 = v2;
  unk_10063EA10 = v3;
  qword_10063EA18 = 0xD00000000000002BLL;
  unk_10063EA20 = 0x80000001004CF890;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5.getter()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression5 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5;

  return v0;
}

void one-time initialization function for playlistEditorMetadataArtworkExpression6()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000002BLL;
  v1._object = 0x80000001004CF8C0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6 = v2;
  unk_10063EA30 = v3;
  qword_10063EA38 = 0xD00000000000002BLL;
  unk_10063EA40 = 0x80000001004CF8C0;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6.getter()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression6 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6;

  return v0;
}

void one-time initialization function for playlistEditorMetadataArtworkExpression7()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000002BLL;
  v1._object = 0x80000001004CF8F0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7 = v2;
  unk_10063EA50 = v3;
  qword_10063EA58 = 0xD00000000000002BLL;
  unk_10063EA60 = 0x80000001004CF8F0;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7.getter()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression7 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7;

  return v0;
}

void one-time initialization function for playlistEditorMetadataArtworkExpression8()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000002BLL;
  v1._object = 0x80000001004CF920;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8 = v2;
  unk_10063EA70 = v3;
  qword_10063EA78 = 0xD00000000000002BLL;
  unk_10063EA80 = 0x80000001004CF920;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8.getter()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8;

  return v0;
}

void one-time initialization function for playlistEditorMetadataArtworkExpression9()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000002BLL;
  v1._object = 0x80000001004CE9C0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression9 = v2;
  unk_10063EA90 = v3;
  qword_10063EA98 = 0xD00000000000002BLL;
  unk_10063EAA0 = 0x80000001004CE9C0;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression9.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression9 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression9;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression9.getter()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression9 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression9;

  return v0;
}

void one-time initialization function for playlistEditorMetadataArtwork4Up()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v2 = static AccessibilityIdentifier.prefix;
  v3 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000023;
  v1._object = 0x80000001004CE990;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playlistEditorMetadataArtwork4Up = v2;
  unk_10063EAB0 = v3;
  qword_10063EAB8 = 0xD000000000000023;
  unk_10063EAC0 = 0x80000001004CE990;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtwork4Up.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistEditorMetadataArtwork4Up != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtwork4Up;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtwork4Up.getter()
{
  if (one-time initialization token for playlistEditorMetadataArtwork4Up != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtwork4Up;

  return v0;
}

double protocol witness for RawRepresentable.init(rawValue:) in conformance AccessibilityIdentifier@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
  a2[2] = v2;
  a2[3] = v3;

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AccessibilityIdentifier(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

id UIView.withAccessibilityIdentifier(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v8, a1, a2, v7, a4);

  return v10;
}

void UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  [v5 setAccessibilityIdentifier:v6];
}

uint64_t UIAccessibilityIdentification.musicAccessibilityIdentifier.getter()
{
  v1 = [v0 accessibilityIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void (*UIAccessibilityIdentification.musicAccessibilityIdentifier.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2, uint64_t a3, double a4)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  *v5 = UIAccessibilityIdentification.musicAccessibilityIdentifier.getter();
  v6[1] = v7;
  v6[2] = v8;
  v6[3] = v9;
  return UIAccessibilityIdentification.musicAccessibilityIdentifier.modify;
}

void UIAccessibilityIdentification.musicAccessibilityIdentifier.modify(uint64_t **a1, char a2, uint64_t a3, double a4)
{
  v4 = *a1;
  v5 = **a1;
  v6 = (*a1)[1];
  v7 = (*a1)[3];
  if (a2)
  {
    v8 = outlined copy of AccessibilityIdentifier?(**a1, v6, v4[2], v7);
    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v8, v5, v6, v9, v7);
    outlined consume of AccessibilityIdentifier?(*v4, v4[1], v4[2], v4[3]);
  }

  else
  {
    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(a4, **a1, v6, a3, v7);
  }

  free(v4);
}

double outlined copy of AccessibilityIdentifier?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

double outlined consume of AccessibilityIdentifier?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t View.textSuffix(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a4;
  v33 = a7;
  v29 = type metadata accessor for Text.Suffix();
  v13 = *(v29 - 8);
  __chkstk_darwin();
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a5;
  v42 = a6;
  v30 = &opaque type descriptor for <<opaque return type of View.textSuffix(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = *(OpaqueTypeMetadata2 - 8);
  v31 = OpaqueTypeMetadata2;
  v32 = v17;
  __chkstk_darwin();
  v19 = &v28 - v18;
  v20 = a1;
  v21 = a2;
  v22 = v28;
  static Text.Suffix.alwaysVisible(_:)();
  View.textSuffix(_:)();
  (*(v13 + 8))(v15, v29);
  v34 = a5;
  v35 = a6;
  v23 = a6;
  v36 = v7;
  v37 = v20;
  v38 = v21;
  v39 = a3 & 1;
  v40 = v22;
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v24 = type metadata accessor for HStack();
  WitnessTable = swift_getWitnessTable();
  v41 = v24;
  v42 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v41 = a5;
  v42 = v23;
  swift_getOpaqueTypeConformance2();
  v41 = v24;
  v42 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  v26 = v31;
  View.accessibilityRepresentation<A>(representation:)();
  return (*(v32 + 8))(v19, v26);
}

uint64_t closure #1 in View.textSuffix(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a7;
  v25 = a6;
  v32 = a5;
  v31 = a4;
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v35 = a8;
  v8 = type metadata accessor for AccessibilityChildBehavior();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin();
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for HStack();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v24 - v13;
  v15 = swift_getWitnessTable();
  v43 = v11;
  v44 = v15;
  v24 = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v24 - v20;
  v36 = v25;
  v37 = v30;
  v38 = v27;
  v39 = v28;
  v40 = v29;
  v41 = v31 & 1;
  v42 = v32;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  static AccessibilityChildBehavior.combine.getter();
  View.accessibilityElement(children:)();
  (*(v33 + 8))(v10, v34);
  (*(v12 + 8))(v14, v11);
  v43 = v11;
  v44 = v15;
  swift_getOpaqueTypeConformance2();
  static ViewBuilder.buildExpression<A>(_:)();
  v22 = *(v17 + 8);
  v22(v19, OpaqueTypeMetadata2);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v22)(v21, OpaqueTypeMetadata2);
}

uint64_t closure #1 in closure #1 in View.textSuffix(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v12 = *(a6 - 8);
  __chkstk_darwin();
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = v19 - v15;
  static ViewBuilder.buildExpression<A>(_:)();
  (*(v12 + 16))(v14, v16, a6);
  v25[0] = v14;
  v25[1] = &v21;
  outlined copy of Text.Storage(a2, a3, a4 & 1);

  v20[0] = a6;
  v20[1] = &type metadata for Text;
  v19[0] = a7;
  v19[1] = &protocol witness table for Text;
  static ViewBuilder.buildBlock<each A>(_:)(v25, 2uLL, v20);
  v17 = *(v12 + 8);
  v17(v16, a6);
  outlined consume of Text.Storage(v21, v22, v23);

  return (v17)(v14, a6);
}

uint64_t AccessibilityString.init(_:tableName:bundle:comment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin();
  (*(v6 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5, v7);
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v6 + 8))(a1, v5);
  return v9;
}

double View.accessibilityLabel(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, void *, uint64_t, unint64_t, __n128))
{
  if (a2)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v12[0] = v8;
  v12[1] = v9;
  v10 = lazy protocol witness table accessor for type String and conformance String();

  (a5)(v12, a3, &type metadata for String, a4, v10);

  return result;
}

uint64_t Text.accessibilityLabel(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  lazy protocol witness table accessor for type String and conformance String();

  v6 = Text.accessibilityLabel<A>(_:)();

  return v6;
}

char *static Text.compact(_:)(char *result)
{
  v1 = 0;
  v2 = *(result + 2);
  v3 = result + 40;
  v4 = _swiftEmptyArrayStorage;
LABEL_2:
  v5 = &v3[16 * v1];
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v7 = *v5;
    v5 += 16;
    ++v1;
    if (v7)
    {
      v18 = v3;
      lazy protocol witness table accessor for type String and conformance String();

      v8 = Text.init<A>(_:)();
      v10 = v9;
      v12 = v11;
      v14 = v13;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
      }

      v16 = *(v4 + 2);
      v15 = *(v4 + 3);
      if (v16 >= v15 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 2) = v16 + 1;
      v17 = &v4[32 * v16];
      *(v17 + 4) = v8;
      *(v17 + 5) = v10;
      v17[48] = v12 & 1;
      *(v17 + 7) = v14;
      v1 = v6;
      v3 = v18;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t TabIdentifier.accessibilityIdentifier.getter(uint64_t a1)
{
  if (a1 > 2u)
  {
    if (a1 > 4u)
    {
      if (a1 != 5)
      {
        v3 = 0x80000001004CE970;
        if (one-time initialization token for prefix != -1)
        {
          swift_once();
        }

        v16 = static AccessibilityIdentifier.prefix;

        v13._countAndFlagsBits = 46;
        v13._object = 0xE100000000000000;
        String.append(_:)(v13);

        v10 = 0xD000000000000010;
        goto LABEL_34;
      }

      if (one-time initialization token for prefix != -1)
      {
        swift_once();
      }

      v1 = 0x762E726142626174;
      v16 = static AccessibilityIdentifier.prefix;

      v5._countAndFlagsBits = 46;
      v5._object = 0xE100000000000000;
      String.append(_:)(v5);

      v6 = 0x736F656469;
    }

    else
    {
      if (a1 == 3)
      {
        if (one-time initialization token for prefix != -1)
        {
          swift_once();
        }

        v1 = 0x722E726142626174;
        v16 = static AccessibilityIdentifier.prefix;

        v2._countAndFlagsBits = 46;
        v2._object = 0xE100000000000000;
        String.append(_:)(v2);

        v3 = 0xEC0000006F696461;
        goto LABEL_33;
      }

      if (one-time initialization token for prefix != -1)
      {
        swift_once();
      }

      v1 = 0x732E726142626174;
      v16 = static AccessibilityIdentifier.prefix;

      v12._countAndFlagsBits = 46;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);

      v6 = 0x6863726165;
    }

LABEL_32:
    v3 = v6 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
LABEL_33:
    v10 = v1;
LABEL_34:
    v11 = v3;
    goto LABEL_35;
  }

  if (!a1)
  {
    if (one-time initialization token for prefix != -1)
    {
      swift_once();
    }

    v1 = 0x6C2E726142626174;
    v16 = static AccessibilityIdentifier.prefix;

    v7._countAndFlagsBits = 46;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);

    v3 = 0xEE00797261726269;
    goto LABEL_33;
  }

  if (a1 == 1)
  {
    if (one-time initialization token for prefix != -1)
    {
      swift_once();
    }

    v1 = 0x682E726142626174;
    v16 = static AccessibilityIdentifier.prefix;

    v4._countAndFlagsBits = 46;
    v4._object = 0xE100000000000000;
    String.append(_:)(v4);

    v3 = 0xEB00000000656D6FLL;
    goto LABEL_33;
  }

  v8 = lazy protocol witness table accessor for type Feature.Music and conformance Feature.Music();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v8) & 1) == 0)
  {
    if (one-time initialization token for prefix != -1)
    {
      swift_once();
    }

    v1 = 0x622E726142626174;
    v16 = static AccessibilityIdentifier.prefix;

    v14._countAndFlagsBits = 46;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);

    v6 = 0x6573776F72;
    goto LABEL_32;
  }

  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v16 = static AccessibilityIdentifier.prefix;

  v9._countAndFlagsBits = 46;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);

  v10 = 0x6E2E726142626174;
  v11 = 0xEA00000000007765;
LABEL_35:
  String.append(_:)(*&v10);

  return v16;
}

void *specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Feature.Music and conformance Feature.Music()
{
  result = lazy protocol witness table cache variable for type Feature.Music and conformance Feature.Music;
  if (!lazy protocol witness table cache variable for type Feature.Music and conformance Feature.Music)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Feature.Music and conformance Feature.Music);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Feature.Music and conformance Feature.Music;
  if (!lazy protocol witness table cache variable for type Feature.Music and conformance Feature.Music)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Feature.Music and conformance Feature.Music);
  }

  return result;
}

uint64_t sub_10028A1CC(uint64_t *a1)
{
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier);
  }

  return result;
}

uint64_t sub_10028A290(uint64_t *a1)
{
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t static AppReview.requestReview(in:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized static AppReview.requestReview(in:)(a1);
}

{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized static AppReview.requestReview(in:)(a1);
}

double static AppReview.recordAppOpened()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v1 = &v5 - v0;
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v1, &async function pointer to partial apply for closure #1 in static AppReview.recordAppOpened(), v3);

  return result;
}

uint64_t closure #1 in static AppReview.recordAppOpened()()
{
  return _swift_task_switch(closure #1 in static AppReview.recordAppOpened(), 0, 0);
}

{
  if (one-time initialization token for gatingController != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return StoreReviewGatingController.didEnterForeground()();
}

void protocol witness for CodingKey.init(stringValue:) in conformance AppReview.UsageRequirements.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001004CFB10 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppReview.UsageRequirements.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppReview.UsageRequirements.CodingKeys and conformance AppReview.UsageRequirements.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppReview.UsageRequirements.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppReview.UsageRequirements.CodingKeys and conformance AppReview.UsageRequirements.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance AppReview.UsageRequirements@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MusicCore9AppReviewO17UsageRequirements33_E613D740763D0648713CBABA7212A7D7LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy9MusicCore9AppReviewO17UsageRequirements33_E613D740763D0648713CBABA7212A7D7LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type AppReview.UsageRequirements.CodingKeys and conformance AppReview.UsageRequirements.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v9 & 1;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance AppReview.UsageRequirements(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MusicCore9AppReviewO17UsageRequirements33_E613D740763D0648713CBABA7212A7D7LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy9MusicCore9AppReviewO17UsageRequirements33_E613D740763D0648713CBABA7212A7D7LLV10CodingKeysOGMR);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type AppReview.UsageRequirements.CodingKeys and conformance AppReview.UsageRequirements.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t one-time initialization function for gatingController()
{
  v0 = objc_allocWithZone(ICStoreRequestContext);
  v5[4] = specialized thunk for @callee_guaranteed (@guaranteed ICRequestContext) -> ();
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v5[3] = &block_descriptor_43;
  v1 = _Block_copy(v5);
  v2 = [v0 initWithBlock:v1];
  _Block_release(v1);

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    [objc_allocWithZone(ICAMSBagAdapter) initWithRequestContext:v2];

    v4 = objc_allocWithZone(type metadata accessor for StoreReviewGatingController());
    result = StoreReviewGatingController.init(bag:)();
    static AppReview.gatingController = result;
  }

  return result;
}

uint64_t one-time initialization function for appReview()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.appReview);
  __swift_project_value_buffer(v0, static Logger.appReview);
  return Logger.init(subsystem:category:)();
}

void specialized static AppReview.recordSongPlayed()()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = lazy protocol witness table accessor for type AppReview.UsageRequirements and conformance AppReview.UsageRequirements();
  v3 = lazy protocol witness table accessor for type AppReview.UsageRequirements and conformance AppReview.UsageRequirements();
  NSUserDefaults.decodeValue<A>(_:forKey:)(&unk_1005BD5D8, v6);

  v4 = [v0 standardUserDefaults];
  NSUserDefaults.decodeValue<A>(_:forKey:)(&unk_1005BD5D8, v6);

  if (LOBYTE(v6[0]) == 2 || (v6[0] & 1) == 0)
  {
    v5 = [v0 standardUserDefaults];
    v6[3] = &unk_1005BD5D8;
    v6[4] = v2;
    v6[5] = v3;
    LOBYTE(v6[0]) = 1;
    NSUserDefaults.encodeValue(_:forKey:)(v6);

    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }
}

uint64_t specialized static AppReview.requestReview(in:)(uint64_t a1)
{
  v1[34] = a1;
  type metadata accessor for MainActor();
  v1[35] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[36] = v3;
  v1[37] = v2;

  return _swift_task_switch(specialized static AppReview.requestReview(in:), v3, v2);
}

{
  v1[14] = a1;
  type metadata accessor for MainActor();
  v1[15] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[16] = v3;
  v1[17] = v2;

  return _swift_task_switch(specialized static AppReview.requestReview(in:), v3, v2);
}

uint64_t specialized static AppReview.requestReview(in:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v1;
  v2 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v2;
  v3 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v3;
  v4 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v4;
  outlined destroy of ApplicationCapabilities(v0 + 16);
  if (*(v0 + 112) == 2)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {

      if (one-time initialization token for appReview != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.appReview);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_27;
      }

      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "🤩❌ User is not a subscriber";
      goto LABEL_26;
    }
  }

  v6 = [objc_opt_self() sharedPrivacyInfo];
  v7 = [v6 privacyAcknowledgementRequiredForMusic];

  if (v7)
  {

    if (one-time initialization token for appReview != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.appReview);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_27;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "🤩❌ User has not accepted GDPR";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v9, v10, v12, v11, 2u);

LABEL_27:

    v18 = *(v0 + 8);

    return v18();
  }

  v14 = [objc_opt_self() standardUserDefaults];
  lazy protocol witness table accessor for type AppReview.UsageRequirements and conformance AppReview.UsageRequirements();
  lazy protocol witness table accessor for type AppReview.UsageRequirements and conformance AppReview.UsageRequirements();
  NSUserDefaults.decodeValue<A>(_:forKey:)(&unk_1005BD5D8, v0 + 328);

  v15 = *(v0 + 328);
  if (v15 == 2 || (v15 & 1) == 0)
  {

    if (one-time initialization token for appReview != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.appReview);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_27;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "🤩❌ User has not played anything yet";
    goto LABEL_26;
  }

  if (one-time initialization token for gatingController != -1)
  {
    swift_once();
  }

  *(v0 + 304) = static AppReview.gatingController;
  v16 = swift_task_alloc();
  *(v0 + 312) = v16;
  *v16 = v0;
  v16[1] = specialized static AppReview.requestReview(in:);

  return StoreReviewGatingController.canPrompt()();
}

{
  if (*(v0 + 329) == 1)
  {
    static AppStore.requestReview(in:)();
    if (one-time initialization token for appReview != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.appReview);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "🤩 Requesting a review through StoreKit", v4, 2u);
    }

    v5 = swift_task_alloc();
    *(v0 + 320) = v5;
    *v5 = v0;
    v5[1] = specialized static AppReview.requestReview(in:);

    return StoreReviewGatingController.didPrompt()();
  }

  else
  {

    if (one-time initialization token for appReview != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.appReview);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "🤩❌ Review is being gated by AMS", v9, 2u);
    }

    v10 = *(v0 + 8);

    return v10();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(specialized static AppReview.requestReview(in:), v3, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(specialized static AppReview.requestReview(in:), v3, v2);
}

{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t specialized static AppReview.requestReview(in:)(char a1)
{
  v2 = *v1;
  *(*v1 + 329) = a1;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);

  return _swift_task_switch(specialized static AppReview.requestReview(in:), v4, v3);
}

void specialized static AppReview.requestReview(in:)()
{
  outlined init with copy of PresentationSource?(v0[14], (v0 + 2));
  if (v0[10] == 1)
  {

    outlined destroy of PresentationSource?((v0 + 2));
LABEL_11:
    if (one-time initialization token for appReview != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.appReview);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "🤩❌ No windowScene", v10, 2u);
    }

    v11 = v0[1];

    v11();
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    outlined destroy of PresentationSource((v0 + 2));
    goto LABEL_11;
  }

  v2 = Strong;
  v3 = [Strong view];

  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = [v3 window];

  v5 = [v4 windowScene];
  v0[18] = v5;

  outlined destroy of PresentationSource((v0 + 2));
  if (!v5)
  {

    goto LABEL_11;
  }

  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = specialized static AppReview.requestReview(in:);

  specialized static AppReview.requestReview(in:)(v5);
}

uint64_t sub_10028BD38()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in static AppReview.recordAppOpened()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in static AppReview.recordAppOpened()();
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type AppReview.UsageRequirements and conformance AppReview.UsageRequirements()
{
  result = lazy protocol witness table cache variable for type AppReview.UsageRequirements and conformance AppReview.UsageRequirements;
  if (!lazy protocol witness table cache variable for type AppReview.UsageRequirements and conformance AppReview.UsageRequirements)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppReview.UsageRequirements and conformance AppReview.UsageRequirements);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppReview.UsageRequirements and conformance AppReview.UsageRequirements;
  if (!lazy protocol witness table cache variable for type AppReview.UsageRequirements and conformance AppReview.UsageRequirements)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppReview.UsageRequirements and conformance AppReview.UsageRequirements);
  }

  return result;
}