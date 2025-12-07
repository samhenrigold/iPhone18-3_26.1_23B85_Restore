uint64_t role #1 (for:inSeatNumber:) in SystemCoordinator.ParticipantState.init(_:spatialTemplatePreference:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (one-time initialization token for systemCoordinator != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.systemCoordinator);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x80000001AF01C7E0, &v12);
    _os_log_impl(&dword_1AEE80000, v7, v8, "%s: The provided role identifier does not match a role in the current template.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  a3[3] = &type metadata for GenericSpatialTemplateRole;
  a3[4] = lazy protocol witness table accessor for type GenericSpatialTemplateRole and conformance GenericSpatialTemplateRole();
  *a3 = a1;
  a3[1] = a2;
}

uint64_t static GenericSpatialTemplateRole.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int GenericSpatialTemplateRole.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for SpatialTemplateRole.roleIdentifier.getter in conformance GenericSpatialTemplateRole()
{
  v1 = *v0;

  return v1;
}

uint64_t SystemCoordinator.ParticipantStates.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = Publisher.eraseToAnyPublisher()();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMR);
  v6 = lazy protocol witness table accessor for type AnyPublisher<SystemCoordinator.ParticipantState, Never> and conformance AnyPublisher<A, B>();
  MEMORY[0x1B2713BD0](&v8, v5, v6);
  return (*(*(a2 - 8) + 8))(a1, a2);
}

uint64_t SystemCoordinator.ParticipantStates.makeAsyncIterator()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA03AnyC0Vy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA03AnyC0Vy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGGMR);

  return AsyncPublisher.makeAsyncIterator()();
}

uint64_t SystemCoordinator.ParticipantStates.Iterator.init(baseIterator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0Vy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0Vy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOG_GMR);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t SystemCoordinator.ParticipantStates.base.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, v3, v5);
}

uint64_t SystemCoordinator.ParticipantStates.Iterator.baseIterator.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0Vy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0Vy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOG_GMR);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SystemCoordinator.ParticipantStates.Iterator.next()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0Vy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0Vy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOG_GMR);
  *v3 = v1;
  v3[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return MEMORY[0x1EEDB5C50](a1, v4);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance SystemCoordinator.ParticipantStates.Iterator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0Vy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0Vy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOG_GMR);
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return MEMORY[0x1EEDB5C50](a1, v4);
}

uint64_t _s15GroupActivities17SystemCoordinatorC17ParticipantStatesV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a2;
  v6[4] = a3;
  v10 = swift_task_alloc();
  v6[5] = v10;
  *v10 = v6;
  v10[1] = _s15GroupActivities17SystemCoordinatorC17ParticipantStatesV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return MEMORY[0x1EEE6D8C8](a1, a5, a6);
}

uint64_t _s15GroupActivities17SystemCoordinatorC17ParticipantStatesV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = _s15GroupActivities17SystemCoordinatorC17ParticipantStatesV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY2_;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = PresenceSession.join();
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t _s15GroupActivities17SystemCoordinatorC17ParticipantStatesV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY2_()
{
  v0[2] = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance SystemCoordinator.ParticipantStates()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA03AnyC0Vy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA03AnyC0Vy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGGMR);
  AsyncPublisher.makeAsyncIterator()();

  return outlined destroy of SystemCoordinator.ParticipantStates(v0);
}

uint64_t specialized static SystemCoordinator.ParticipantState.Seat.== infix(_:_:)(uint64_t a1, double *a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = a2[6];
  v12 = a2[7];
  v18 = *a1;
  v19 = v4;
  *&v20[16] = v6;
  *&v21 = v7;
  *v20 = v5;
  *&v25.position.x = v8;
  *&v25.position.vector.f64[2] = v9;
  v25.rotation.vector.f64[2] = v11;
  v25.rotation.vector.f64[3] = v12;
  *v25.rotation.vector.f64 = v10;
  if (!SPPose3DEqualToPose(&v18, &v25))
  {
    goto LABEL_15;
  }

  outlined init with copy of URL?(a1 + 64, &v18, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  if (*(&v19 + 1))
  {
    outlined init with take of Transferable(&v18, &v25);
  }

  else
  {
    outlined destroy of NSObject?(&v18, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    memset(&v25, 0, 40);
  }

  outlined init with copy of URL?((a2 + 8), &v18, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  if (*(&v19 + 1))
  {
    outlined init with take of Transferable(&v18, v23);
  }

  else
  {
    outlined destroy of NSObject?(&v18, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    memset(v23, 0, sizeof(v23));
    v24 = 0;
  }

  outlined init with copy of URL?(&v25, &v18, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  outlined init with copy of URL?(v23, &v20[8], &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  if (!*(&v19 + 1))
  {
    outlined destroy of NSObject?(v23, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    outlined destroy of NSObject?(&v25, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    if (!*(&v21 + 1))
    {
      outlined destroy of NSObject?(&v18, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
      v13 = 1;
      return v13 & 1;
    }

    goto LABEL_14;
  }

  outlined init with copy of URL?(&v18, v17, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  if (!*(&v21 + 1))
  {
    outlined destroy of NSObject?(v23, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    outlined destroy of NSObject?(&v25, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    outlined destroy of AnySpatialTemplateRole(v17);
LABEL_14:
    outlined destroy of NSObject?(&v18, &_s15GroupActivities22AnySpatialTemplateRoleVSg_ADtMd, &_s15GroupActivities22AnySpatialTemplateRoleVSg_ADtMR);
LABEL_15:
    v13 = 0;
    return v13 & 1;
  }

  v15[0] = *&v20[8];
  v15[1] = v21;
  v16 = v22;
  v13 = specialized static AnySpatialTemplateRole.== infix(_:_:)(v17, v15);
  outlined destroy of AnySpatialTemplateRole(v15);
  outlined destroy of NSObject?(v23, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  outlined destroy of NSObject?(&v25, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  outlined destroy of AnySpatialTemplateRole(v17);
  outlined destroy of NSObject?(&v18, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  return v13 & 1;
}

unint64_t specialized static SystemCoordinator.ParticipantState.== infix(_:_:)(unsigned __int8 *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v42 = v2;
  v43 = v3;
  outlined init with copy of URL?((a1 + 200), &v33, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  if (*(&v34 + 1))
  {
    outlined init with take of Transferable(&v33, &v32);
  }

  else
  {
    outlined destroy of NSObject?(&v33, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    memset(&v32, 0, 40);
  }

  outlined init with copy of URL?((a2 + 25), &v33, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  if (*(&v34 + 1))
  {
    outlined init with take of Transferable(&v33, &v25);
  }

  else
  {
    outlined destroy of NSObject?(&v33, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    v25 = 0u;
    v26 = 0u;
    *&v27 = 0;
  }

  outlined init with copy of URL?(&v32, &v33, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  outlined init with copy of URL?(&v25, &v35[8], &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  if (!*(&v34 + 1))
  {
    outlined destroy of NSObject?(&v25, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    outlined destroy of NSObject?(&v32, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    if (!*(&v36 + 1))
    {
      outlined destroy of NSObject?(&v33, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
      goto LABEL_15;
    }

LABEL_19:
    v8 = &_s15GroupActivities22AnySpatialTemplateRoleVSg_ADtMd;
    v9 = &_s15GroupActivities22AnySpatialTemplateRoleVSg_ADtMR;
LABEL_23:
    outlined destroy of NSObject?(&v33, v8, v9);
    return 0;
  }

  outlined init with copy of URL?(&v33, v24, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  if (!*(&v36 + 1))
  {
    outlined destroy of NSObject?(&v25, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    outlined destroy of NSObject?(&v32, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    outlined destroy of AnySpatialTemplateRole(v24);
    goto LABEL_19;
  }

  v22[0] = *&v35[8];
  v22[1] = v36;
  v23 = v37;
  v7 = specialized static AnySpatialTemplateRole.== infix(_:_:)(v24, v22);
  outlined destroy of AnySpatialTemplateRole(v22);
  outlined destroy of NSObject?(&v25, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  outlined destroy of NSObject?(&v32, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  outlined destroy of AnySpatialTemplateRole(v24);
  outlined destroy of NSObject?(&v33, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  outlined init with copy of URL?((a1 + 16), &v33, &_s15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSgMd, &_s15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSgMR);
  outlined init with copy of URL?((a2 + 2), v39, &_s15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSgMd, &_s15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSgMR);
  if (v38 == 1)
  {
    if (*(&v40 + 1) == 1)
    {
      outlined destroy of NSObject?(&v33, &_s15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSgMd, &_s15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSgMR);
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  outlined init with copy of URL?(&v33, &v32, &_s15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSgMd, &_s15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSgMR);
  if (*(&v40 + 1) == 1)
  {
    outlined destroy of SystemCoordinator.ParticipantState.Seat(&v32);
LABEL_22:
    v8 = &_s15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSg_AHtMd;
    v9 = &_s15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSg_AHtMR;
    goto LABEL_23;
  }

  v29 = v39[4];
  v30 = v40;
  v31 = v41;
  v25 = v39[0];
  v26 = v39[1];
  v27 = v39[2];
  v28 = v39[3];
  v10 = specialized static SystemCoordinator.ParticipantState.Seat.== infix(_:_:)(&v32, &v25);
  outlined destroy of SystemCoordinator.ParticipantState.Seat(&v25);
  outlined destroy of SystemCoordinator.ParticipantState.Seat(&v32);
  outlined destroy of NSObject?(&v33, &_s15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSgMd, &_s15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSgMR);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  v11 = a1[192];
  v12 = *(a2 + 192);
  result = v11 & v12;
  if ((v11 & 1) == 0 && (v12 & 1) == 0)
  {
    v14 = a2[22];
    v13 = a2[23];
    v16 = *(a2 + 9);
    v15 = *(a2 + 10);
    v17 = *(a2 + 8);
    v19 = *(a1 + 22);
    v18 = *(a1 + 23);
    v21 = *(a1 + 9);
    v20 = *(a1 + 10);
    v33 = *(a1 + 8);
    v34 = v21;
    *&v35[16] = v19;
    *&v36 = v18;
    *v35 = v20;
    *&v32.position.x = v17;
    *&v32.position.vector.f64[2] = v16;
    v32.rotation.vector.f64[2] = v14;
    v32.rotation.vector.f64[3] = v13;
    *v32.rotation.vector.f64 = v15;
    return SPPose3DEqualToPose(&v33, &v32);
  }

  return result;
}

uint64_t _s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 144);
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

unint64_t lazy protocol witness table accessor for type AnyPublisher<SystemCoordinator.ParticipantState, Never> and conformance AnyPublisher<A, B>()
{
  result = lazy protocol witness table cache variable for type AnyPublisher<SystemCoordinator.ParticipantState, Never> and conformance AnyPublisher<A, B>;
  if (!lazy protocol witness table cache variable for type AnyPublisher<SystemCoordinator.ParticipantState, Never> and conformance AnyPublisher<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine12AnyPublisherVy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyPublisher<SystemCoordinator.ParticipantState, Never> and conformance AnyPublisher<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemCoordinator.ParticipantState.Seat and conformance SystemCoordinator.ParticipantState.Seat()
{
  result = lazy protocol witness table cache variable for type SystemCoordinator.ParticipantState.Seat and conformance SystemCoordinator.ParticipantState.Seat;
  if (!lazy protocol witness table cache variable for type SystemCoordinator.ParticipantState.Seat and conformance SystemCoordinator.ParticipantState.Seat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinator.ParticipantState.Seat and conformance SystemCoordinator.ParticipantState.Seat);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GenericSpatialTemplateRole(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GenericSpatialTemplateRole and conformance GenericSpatialTemplateRole();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GenericSpatialTemplateRole and conformance GenericSpatialTemplateRole()
{
  result = lazy protocol witness table cache variable for type GenericSpatialTemplateRole and conformance GenericSpatialTemplateRole;
  if (!lazy protocol witness table cache variable for type GenericSpatialTemplateRole and conformance GenericSpatialTemplateRole)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericSpatialTemplateRole and conformance GenericSpatialTemplateRole);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericSpatialTemplateRole and conformance GenericSpatialTemplateRole;
  if (!lazy protocol witness table cache variable for type GenericSpatialTemplateRole and conformance GenericSpatialTemplateRole)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericSpatialTemplateRole and conformance GenericSpatialTemplateRole);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericSpatialTemplateRole and conformance GenericSpatialTemplateRole;
  if (!lazy protocol witness table cache variable for type GenericSpatialTemplateRole and conformance GenericSpatialTemplateRole)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericSpatialTemplateRole and conformance GenericSpatialTemplateRole);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemCoordinator.ParticipantStates.Iterator and conformance SystemCoordinator.ParticipantStates.Iterator()
{
  result = lazy protocol witness table cache variable for type SystemCoordinator.ParticipantStates.Iterator and conformance SystemCoordinator.ParticipantStates.Iterator;
  if (!lazy protocol witness table cache variable for type SystemCoordinator.ParticipantStates.Iterator and conformance SystemCoordinator.ParticipantStates.Iterator)
  {
    type metadata accessor for SystemCoordinator.ParticipantStates.Iterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinator.ParticipantStates.Iterator and conformance SystemCoordinator.ParticipantStates.Iterator);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15GroupActivities17SystemCoordinatorC16ParticipantStateV4SeatVSg(uint64_t a1)
{
  v1 = *(a1 + 88);
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

__n128 __swift_memcpy240_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t getEnumTagSinglePayload for SystemCoordinator.ParticipantState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 240))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 224);
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

uint64_t storeEnumTagSinglePayload for SystemCoordinator.ParticipantState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 0;
    }

    if (a2)
    {
      *(result + 224) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy104_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SystemCoordinator.ParticipantState.Seat(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 88);
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

uint64_t storeEnumTagSinglePayload for SystemCoordinator.ParticipantState.Seat(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void type metadata completion function for SystemCoordinator.ParticipantStates(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t))
{
  type metadata accessor for AsyncPublisher<AnyPublisher<SystemCoordinator.ParticipantState, Never>>(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for AsyncPublisher<AnyPublisher<SystemCoordinator.ParticipantState, Never>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine12AnyPublisherVy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMR);
    v7 = lazy protocol witness table accessor for type AnyPublisher<SystemCoordinator.ParticipantState, Never> and conformance AnyPublisher<A, B>();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined destroy of SystemCoordinator.ParticipantStates(uint64_t a1)
{
  v2 = type metadata accessor for SystemCoordinator.ParticipantStates(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t SPPose3DEqualToPose(SPPose3D *a1, SPPose3D *a2)
{
  v3 = vceqq_f64(*&a1->position.x, *&a2->position.x);
  if (((v3.i64[0] & v3.i64[1] & vceqq_f64(*&a1->position.vector.f64[2], *&a2->position.vector.f64[2]).u64[0] & 0x8000000000000000) != 0) == v2)
  {
    return 0;
  }

  v5 = *a1->rotation.vector.f64;
  v6 = *&a1->rotation.quaternion.vector.f64[2];
  v7 = *a2->rotation.vector.f64;
  v8 = *&a2->rotation.quaternion.vector.f64[2];
  v9 = vandq_s8(vceqq_f64(v5, v7), vceqq_f64(v6, v8));
  if ((vandq_s8(v9, vdupq_laneq_s64(v9, 1)).u64[0] & 0x8000000000000000) != 0)
  {
    return 1;
  }

  v10 = vandq_s8(vceqq_f64(v5, vnegq_f64(v7)), vceqq_f64(v6, vnegq_f64(v8)));
  return vandq_s8(v10, vdupq_laneq_s64(v10, 1)).u64[0] >> 63;
}

uint64_t AttachmentLedgerTopic.attachmentsPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGSay15GroupActivities08DownloadI0_pGGMd, &_s7Combine10PublishersO3MapVy_AA19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGSay15GroupActivities08DownloadI0_pGGMR);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - v4;
  v8[1] = (*(*v0 + 392))(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities18DownloadAttachment_pGMd, &_sSay15GroupActivities18DownloadAttachment_pGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[Attachment], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMR, MEMORY[0x1E695BFB0]);
  Publisher.map<A>(_:)();

  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<CurrentValueSubject<[Attachment], Never>, [DownloadAttachment]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGSay15GroupActivities08DownloadI0_pGGMd, &_s7Combine10PublishersO3MapVy_AA19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGSay15GroupActivities08DownloadI0_pGGMR, MEMORY[0x1E695BD60]);
  v6 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v5, v1);
  return v6;
}

void *closure #1 in AttachmentLedgerTopic.attachmentsPublisher.getter@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized _arrayForceCast<A, B>(_:)(*a1);
  *a2 = result;
  return result;
}

void *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1B2714B30](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for Attachment();
        v15 = &protocol witness table for Attachment;
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        outlined init with take of Transferable(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);

        if (v11 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for Attachment();
        v15 = &protocol witness table for Attachment;
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        outlined init with take of Transferable(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for DownloadAttachmentTopic.attachmentsPublisher.getter in conformance AttachmentLedgerTopic()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGSay15GroupActivities08DownloadI0_pGGMd, &_s7Combine10PublishersO3MapVy_AA19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGSay15GroupActivities08DownloadI0_pGGMR);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - v4;
  v8[1] = (*(**v0 + 392))(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities18DownloadAttachment_pGMd, &_sSay15GroupActivities18DownloadAttachment_pGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[Attachment], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMR, MEMORY[0x1E695BFB0]);
  Publisher.map<A>(_:)();

  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<CurrentValueSubject<[Attachment], Never>, [DownloadAttachment]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGSay15GroupActivities08DownloadI0_pGGMd, &_s7Combine10PublishersO3MapVy_AA19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGSay15GroupActivities08DownloadI0_pGGMR, MEMORY[0x1E695BD60]);
  v6 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t Attachment.assetSkeleton.getter(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Attachment.MMCSMetadata();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore10AttachmentC12MMCSMetadataVSgMd, &_s14CopresenceCore10AttachmentC12MMCSMetadataVSgMR);
  v2[8] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_pGMd, &_sScsy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_pGMR);
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMd, &_sScs8IteratorVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMR);
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Attachment.assetSkeleton.getter, 0, 0);
}

uint64_t Attachment.assetSkeleton.getter()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  Attachment.mmcsMetadata.getter();
  MEMORY[0x1B27145A0](v3);
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = Attachment.assetSkeleton.getter;
  v5 = v0[12];
  v6 = v0[8];

  return MEMORY[0x1EEE6DB90](v6, 0, 0, v5, v0 + 2);
}

{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = Attachment.assetSkeleton.getter;
  }

  else
  {
    v2 = Attachment.assetSkeleton.getter;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
    lazy protocol witness table accessor for type AttachmentDownloadTask.Errors and conformance AttachmentDownloadTask.Errors();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
LABEL_5:

    v16 = v0[1];
    goto LABEL_6;
  }

  v5 = v0[16];
  (*(v3 + 32))(v0[7], v1, v2);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for AssetSkeleton();
  v6 = Attachment.MMCSMetadata.assetSkeleton.getter();
  v8 = v7;
  lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type AssetSkeleton and conformance AssetSkeleton, MEMORY[0x1E6994708], MEMORY[0x1E6994718]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v9 = v5;
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[12];
  if (v9)
  {
    v21 = v0[12];
    v13 = v0[6];
    v14 = v0[7];
    v15 = v0[5];
    outlined consume of Data._Representation(v6, v8);

    (*(v13 + 8))(v14, v15);
    (*(v11 + 8))(v10, v21);
    goto LABEL_5;
  }

  v18 = v0[7];
  v20 = v0[5];
  v19 = v0[6];
  outlined consume of Data._Representation(v6, v8);

  (*(v19 + 8))(v18, v20);
  (*(v11 + 8))(v10, v12);

  v16 = v0[1];
LABEL_6:

  return v16();
}

{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

unint64_t lazy protocol witness table accessor for type AttachmentDownloadTask.Errors and conformance AttachmentDownloadTask.Errors()
{
  result = lazy protocol witness table cache variable for type AttachmentDownloadTask.Errors and conformance AttachmentDownloadTask.Errors;
  if (!lazy protocol witness table cache variable for type AttachmentDownloadTask.Errors and conformance AttachmentDownloadTask.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentDownloadTask.Errors and conformance AttachmentDownloadTask.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentDownloadTask.Errors and conformance AttachmentDownloadTask.Errors;
  if (!lazy protocol witness table cache variable for type AttachmentDownloadTask.Errors and conformance AttachmentDownloadTask.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentDownloadTask.Errors and conformance AttachmentDownloadTask.Errors);
  }

  return result;
}

uint64_t Attachment.signal.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV15BufferingPolicyOy10CloudAsset6SignalVs5Error_p__GMd, &_sScs12ContinuationV15BufferingPolicyOy10CloudAsset6SignalVs5Error_p__GMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  type metadata accessor for Signal();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8790], v0);
  return AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
}

uint64_t closure #1 in Attachment.signal.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy10CloudAsset6SignalVs5Error_p_GMd, &_sScs12ContinuationVy10CloudAsset6SignalVs5Error_p_GMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v5 + 32))(&v13[v12], v7, v4);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in closure #1 in Attachment.signal.getter, v13);
}

uint64_t closure #1 in closure #1 in Attachment.signal.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMd, &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMR);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy10CloudAsset6SignalVs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy10CloudAsset6SignalVs5Error_p__GMR);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = type metadata accessor for Signal();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v8 = type metadata accessor for Attachment.MMCSMetadata.UploadStatus();
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v9 = type metadata accessor for Attachment.UpdatingBlob();
  v5[22] = v9;
  v5[23] = *(v9 - 8);
  v5[24] = swift_task_alloc();
  v10 = type metadata accessor for Attachment.MMCSMetadata();
  v5[25] = v10;
  v5[26] = *(v10 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore10AttachmentC12MMCSMetadataVSgMd, &_s14CopresenceCore10AttachmentC12MMCSMetadataVSgMR);
  v5[29] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_pGMd, &_sScsy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_pGMR);
  v5[30] = v11;
  v5[31] = *(v11 - 8);
  v5[32] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMd, &_sScs8IteratorVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMR);
  v5[33] = v12;
  v5[34] = *(v12 - 8);
  v5[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in Attachment.signal.getter, 0, 0);
}

uint64_t closure #1 in closure #1 in Attachment.signal.getter()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  *(v0 + 288) = JSONDecoder.init()();
  Attachment.mmcsMetadata.getter();
  MEMORY[0x1B27145A0](v3);
  (*(v2 + 8))(v1, v3);
  *(v0 + 312) = *MEMORY[0x1E6997498];
  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in Attachment.signal.getter;
  v5 = *(v0 + 264);
  v6 = *(v0 + 232);

  return MEMORY[0x1EEE6DB90](v6, 0, 0, v5, v0 + 16);
}

{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in Attachment.signal.getter;
  }

  else
  {
    v2 = closure #1 in closure #1 in Attachment.signal.getter;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

LABEL_6:

    v23 = *(v0 + 8);

    return v23();
  }

  v4 = *(v0 + 312);
  v5 = *(v0 + 168);
  v6 = *(v0 + 136);
  v7 = *(v0 + 144);
  (*(v3 + 32))(*(v0 + 224), v1, v2);
  Attachment.MMCSMetadata.status.getter();
  if ((*(v7 + 88))(v5, v6) == v4)
  {
    v8 = *(v0 + 304);
    v10 = *(v0 + 184);
    v9 = *(v0 + 192);
    v12 = *(v0 + 168);
    v11 = *(v0 + 176);
    (*(*(v0 + 144) + 96))(v12, *(v0 + 136));
    (*(v10 + 32))(v9, v12, v11);
    v13 = Attachment.UpdatingBlob.data.getter();
    v15 = v14;
    lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type Signal and conformance Signal, MEMORY[0x1E6994728], MEMORY[0x1E6994738]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v8)
    {
      v16 = *(v0 + 272);
      v77 = *(v0 + 264);
      v80 = *(v0 + 280);
      v75 = *(v0 + 224);
      v18 = *(v0 + 200);
      v17 = *(v0 + 208);
      v19 = *(v0 + 184);
      v20 = *(v0 + 192);
      v21 = *(v0 + 176);
      outlined consume of Data._Representation(v13, v15);
      (*(v19 + 8))(v20, v21);
      (*(v17 + 8))(v75, v18);
      (*(v16 + 8))(v80, v77);
      *(v0 + 24) = v8;
      v22 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy10CloudAsset6SignalVs5Error_p_GMd, &_sScs12ContinuationVy10CloudAsset6SignalVs5Error_p_GMR);
      AsyncThrowingStream.Continuation.finish(throwing:)();

      goto LABEL_6;
    }

    v79 = *(v0 + 200);
    v82 = *(v0 + 224);
    v50 = *(v0 + 184);
    v76 = *(v0 + 192);
    v72 = *(v0 + 208);
    v74 = *(v0 + 176);
    v51 = *(v0 + 120);
    v52 = *(v0 + 128);
    v54 = *(v0 + 104);
    v53 = *(v0 + 112);
    v56 = *(v0 + 88);
    v55 = *(v0 + 96);
    v71 = *(v0 + 80);
    outlined consume of Data._Representation(v13, v15);
    (*(v53 + 16))(v51, v52, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy10CloudAsset6SignalVs5Error_p_GMd, &_sScs12ContinuationVy10CloudAsset6SignalVs5Error_p_GMR);
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v56 + 8))(v55, v71);
    (*(v53 + 8))(v52, v54);
    (*(v50 + 8))(v76, v74);
    (*(v72 + 8))(v82, v79);
  }

  else
  {
    v25 = *(*(v0 + 144) + 8);
    v25(*(v0 + 168), *(v0 + 136));
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 216);
    v27 = *(v0 + 224);
    v28 = *(v0 + 200);
    v29 = *(v0 + 208);
    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Log.attachmentLedgerTopic);
    (*(v29 + 16))(v26, v27, v28);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v81 = v32;
      v73 = v25;
      v34 = *(v0 + 136);
      v33 = *(v0 + 144);
      v35 = *(v0 + 64);
      v36 = *(v0 + 72);
      v37 = *(v0 + 48);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 136315394;
      v78 = v39;
      *(v0 + 32) = v39;
      *(v0 + 40) = v37;
      type metadata accessor for Attachment();

      v40 = String.init<A>(reflecting:)();
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, (v0 + 32));

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      Attachment.MMCSMetadata.status.getter();
      (*(v33 + 56))(v36, 0, 1, v34);
      outlined init with copy of URL?(v36, v35, &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMd, &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMR);
      if ((*(v33 + 48))(v35, 1, v34) == 1)
      {
        v43 = 0xE300000000000000;
        v44 = 7104878;
      }

      else
      {
        v58 = *(v0 + 152);
        v57 = *(v0 + 160);
        v60 = *(v0 + 136);
        v59 = *(v0 + 144);
        (*(v59 + 32))(v57, *(v0 + 64), v60);
        (*(v59 + 16))(v58, v57, v60);
        v44 = String.init<A>(reflecting:)();
        v43 = v61;
        v73(v57, v60);
      }

      v63 = *(v0 + 216);
      v62 = *(v0 + 224);
      v65 = *(v0 + 200);
      v64 = *(v0 + 208);
      outlined destroy of NSObject?(*(v0 + 72), &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMd, &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMR);
      v66 = *(v64 + 8);
      v66(v63, v65);
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v43, (v0 + 32));

      *(v38 + 14) = v67;
      _os_log_impl(&dword_1AEE80000, v31, v81, "%s's status doesn't have a signal blob, status: %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v78, -1, -1);
      MEMORY[0x1B2715BA0](v38, -1, -1);

      v66(v62, v65);
    }

    else
    {
      v46 = *(v0 + 216);
      v45 = *(v0 + 224);
      v47 = *(v0 + 200);
      v48 = *(v0 + 208);

      v49 = *(v48 + 8);
      v49(v46, v47);
      v49(v45, v47);
    }
  }

  v68 = swift_task_alloc();
  *(v0 + 296) = v68;
  *v68 = v0;
  v68[1] = closure #1 in closure #1 in Attachment.signal.getter;
  v69 = *(v0 + 264);
  v70 = *(v0 + 232);

  return MEMORY[0x1EEE6DB90](v70, 0, 0, v69, v0 + 16);
}

{
  (*(v0[34] + 8))(v0[35], v0[33]);
  v1 = v0[2];
  v0[3] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy10CloudAsset6SignalVs5Error_p_GMd, &_sScs12ContinuationVy10CloudAsset6SignalVs5Error_p_GMR);
  AsyncThrowingStream.Continuation.finish(throwing:)();

  v3 = v0[1];

  return v3();
}

uint64_t Attachment.waitForUploadFinished()()
{
  v1[5] = v0;
  v1[6] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMd, &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMR);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v2 = type metadata accessor for Attachment.MMCSMetadata.UploadStatus();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v3 = type metadata accessor for Attachment.MMCSMetadata();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore10AttachmentC12MMCSMetadataVSgMd, &_s14CopresenceCore10AttachmentC12MMCSMetadataVSgMR);
  v1[18] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_pGMd, &_sScsy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_pGMR);
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMd, &_sScs8IteratorVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMR);
  v1[22] = v5;
  v1[23] = *(v5 - 8);
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Attachment.waitForUploadFinished(), 0, 0);
}

{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  Attachment.mmcsMetadata.getter();
  MEMORY[0x1B27145A0](v3);
  (*(v2 + 8))(v1, v3);
  *(v0 + 208) = *MEMORY[0x1E69974A0];
  v4 = swift_task_alloc();
  *(v0 + 200) = v4;
  *v4 = v0;
  v4[1] = Attachment.waitForUploadFinished();
  v5 = *(v0 + 176);
  v6 = *(v0 + 144);

  return MEMORY[0x1EEE6DB90](v6, 0, 0, v5, v0 + 16);
}

{

  if (v0)
  {
    v1 = Attachment.waitForUploadFinished();
  }

  else
  {
    v1 = Attachment.waitForUploadFinished();
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    lazy protocol witness table accessor for type AttachmentDownloadTask.Errors and conformance AttachmentDownloadTask.Errors();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();

    v5 = *(v0 + 8);
LABEL_5:

    return v5();
  }

  v6 = *(v0 + 208);
  v7 = *(v0 + 104);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  (*(v3 + 32))(*(v0 + 136), v1, v2);
  Attachment.MMCSMetadata.status.getter();
  if ((*(v9 + 88))(v7, v8) == v6)
  {
    v11 = *(v0 + 184);
    v10 = *(v0 + 192);
    v12 = *(v0 + 176);
    v13 = *(v0 + 104);
    v14 = *(v0 + 72);
    v15 = *(v0 + 80);
    (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
    (*(v11 + 8))(v10, v12);
    (*(v15 + 8))(v13, v14);

    v5 = *(v0 + 8);
    goto LABEL_5;
  }

  v17 = *(*(v0 + 80) + 8);
  v17(*(v0 + 104), *(v0 + 72));
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 128);
  v19 = *(v0 + 136);
  v20 = *(v0 + 112);
  v21 = *(v0 + 120);
  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Log.attachmentLedgerTopic);
  (*(v21 + 16))(v18, v19, v20);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v58 = v24;
    v56 = v17;
    v26 = *(v0 + 72);
    v25 = *(v0 + 80);
    v27 = *(v0 + 56);
    v28 = *(v0 + 64);
    v29 = *(v0 + 40);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 136315394;
    v57 = v31;
    *(v0 + 24) = v31;
    *(v0 + 32) = v29;

    v32 = String.init<A>(reflecting:)();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, (v0 + 24));

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    Attachment.MMCSMetadata.status.getter();
    (*(v25 + 56))(v28, 0, 1, v26);
    outlined init with copy of URL?(v28, v27, &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMd, &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMR);
    if ((*(v25 + 48))(v27, 1, v26) == 1)
    {
      v35 = 0xE300000000000000;
      v36 = 7104878;
    }

    else
    {
      v43 = *(v0 + 88);
      v42 = *(v0 + 96);
      v45 = *(v0 + 72);
      v44 = *(v0 + 80);
      (*(v44 + 32))(v42, *(v0 + 56), v45);
      (*(v44 + 16))(v43, v42, v45);
      v36 = String.init<A>(reflecting:)();
      v35 = v46;
      v56(v42, v45);
    }

    v48 = *(v0 + 128);
    v47 = *(v0 + 136);
    v50 = *(v0 + 112);
    v49 = *(v0 + 120);
    outlined destroy of NSObject?(*(v0 + 64), &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMd, &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMR);
    v51 = *(v49 + 8);
    v51(v48, v50);
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, (v0 + 24));

    *(v30 + 14) = v52;
    _os_log_impl(&dword_1AEE80000, v23, v58, "%s's status is currently: %s, not finished.", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v57, -1, -1);
    MEMORY[0x1B2715BA0](v30, -1, -1);

    v51(v47, v50);
  }

  else
  {
    v38 = *(v0 + 128);
    v37 = *(v0 + 136);
    v39 = *(v0 + 112);
    v40 = *(v0 + 120);

    v41 = *(v40 + 8);
    v41(v38, v39);
    v41(v37, v39);
  }

  v53 = swift_task_alloc();
  *(v0 + 200) = v53;
  *v53 = v0;
  v53[1] = Attachment.waitForUploadFinished();
  v54 = *(v0 + 176);
  v55 = *(v0 + 144);

  return MEMORY[0x1EEE6DB90](v55, 0, 0, v54, v0 + 16);
}

{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t protocol witness for DownloadAttachment.assetSkeleton.getter in conformance Attachment(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return Attachment.assetSkeleton.getter(a1);
}

uint64_t protocol witness for DownloadAttachment.signal.getter in conformance Attachment()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV15BufferingPolicyOy10CloudAsset6SignalVs5Error_p__GMd, &_sScs12ContinuationV15BufferingPolicyOy10CloudAsset6SignalVs5Error_p__GMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  type metadata accessor for Signal();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8790], v0);
  return AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
}

uint64_t protocol witness for DownloadAttachment.waitForUploadFinished() in conformance Attachment()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return Attachment.waitForUploadFinished()();
}

uint64_t AttachmentDownloadTask.file.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_file;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path setter for AttachmentDownloadTask.signalHandler : AttachmentDownloadTask(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_signalHandler;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double AttachmentDownloadTask.signalHandler.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t AttachmentDownloadTask.signalHandler.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_signalHandler;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

Swift::Int AttachmentDownloadTask.Errors.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1 & 1);
  return Hasher._finalize()();
}

uint64_t AttachmentDownloadTask.__allocating_init(topic:attachment:file:manager:)(void *a1, void *a2, uint64_t a3, __int128 *a4)
{
  v9 = a1[3];
  v8 = a1[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v15 = a2[3];
  v14 = a2[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = specialized AttachmentDownloadTask.__allocating_init(topic:attachment:file:manager:)(v12, v18, a3, a4, v22[1], v9, v15, v8, v14);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v20;
}

uint64_t AttachmentDownloadTask.init(topic:attachment:file:manager:)(__int128 *a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  swift_defaultActor_initialize();
  *(v4 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_signalHandler) = 0;
  outlined init with take of Transferable(a1, v4 + 112);
  outlined init with take of Transferable(a2, v4 + 152);
  v9 = OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_file;
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 32))(v4 + v9, a3, v10);
  outlined init with take of Transferable(a4, v4 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_manager);
  return v4;
}

uint64_t AttachmentDownloadTask.start()()
{
  v1[3] = v0;
  v2 = type metadata accessor for Asset();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CloudAsset0B8SkeletonVSgMd, &_s10CloudAsset0B8SkeletonVSgMR);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for AssetSkeleton();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v4 = type metadata accessor for TaskPriority();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentDownloadTask.start(), v0, 0);
}

{
  v24 = v0;
  if (one-time initialization token for downloadTask != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[18] = __swift_project_value_buffer(v1, static Log.downloadTask);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[16];
    v4 = v0[17];
    v6 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315394;
    v9 = AttachmentDownloadTask.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v23);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    static Task<>.currentPriority.getter();
    lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority, MEMORY[0x1E69E85F0], MEMORY[0x1E69E8608]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v5 + 8))(v4, v6);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v23);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_1AEE80000, v2, v3, "%s received download request with priority: %s.", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v8, -1, -1);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  v16 = v0[3];
  v17 = v16[22];
  v18 = v16[23];
  __swift_project_boxed_opaque_existential_1(v16 + 19, v17);
  v22 = (*(v18 + 16) + **(v18 + 16));
  v19 = swift_task_alloc();
  v0[19] = v19;
  *v19 = v0;
  v19[1] = AttachmentDownloadTask.start();
  v20 = v0[14];

  return v22(v20, v17, v18);
}

{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = AttachmentDownloadTask.start();
  }

  else
  {
    v4 = AttachmentDownloadTask.start();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v29 = v0;
  v1 = *(v0[10] + 16);
  v1(v0[13], v0[14], v0[9]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[13];
  v7 = v0[9];
  v6 = v0[10];
  if (v4)
  {
    v27 = v3;
    v9 = v0[7];
    v8 = v0[8];
    v10 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v10 = 136315138;
    v1(v8, v5, v7);
    (*(v6 + 56))(v8, 0, 1, v7);
    outlined init with copy of URL?(v8, v9, &_s10CloudAsset0B8SkeletonVSgMd, &_s10CloudAsset0B8SkeletonVSgMR);
    if ((*(v6 + 48))(v9, 1, v7) == 1)
    {
      v11 = 0xE300000000000000;
      v12 = 7104878;
    }

    else
    {
      v14 = v0[11];
      v15 = v0[12];
      v17 = v0[9];
      v16 = v0[10];
      (*(v16 + 32))(v15, v0[7], v17);
      v1(v14, v15, v17);
      v12 = String.init<A>(reflecting:)();
      v11 = v18;
      (*(v16 + 8))(v15, v17);
    }

    v19 = v0[13];
    v21 = v0[9];
    v20 = v0[10];
    outlined destroy of NSObject?(v0[8], &_s10CloudAsset0B8SkeletonVSgMd, &_s10CloudAsset0B8SkeletonVSgMR);
    v13 = *(v20 + 8);
    v13(v19, v21);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v28);

    *(v10 + 4) = v22;
    _os_log_impl(&dword_1AEE80000, v2, v27, "Unpacked skeleton: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x1B2715BA0](v26, -1, -1);
    MEMORY[0x1B2715BA0](v10, -1, -1);
  }

  else
  {

    v13 = *(v6 + 8);
    v13(v5, v7);
  }

  v0[21] = v13;
  v23 = swift_task_alloc();
  v0[22] = v23;
  *v23 = v0;
  v23[1] = AttachmentDownloadTask.start();
  v24 = v0[14];

  return AttachmentDownloadTask.start(asset:)(v24);
}

{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = AttachmentDownloadTask.start();
  }

  else
  {
    v4 = AttachmentDownloadTask.start();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  (*(v0 + 168))(*(v0 + 112), *(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v19 = v0;
  v1 = v0[23];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315394;
    v8 = AttachmentDownloadTask.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v18);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v0[2] = v5;
    v11 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v18);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_1AEE80000, v3, v4, "%s Failed to download asset through skeleton %s, attempting directly through the asset.", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  AssetSkeleton.asset.getter();
  v15 = swift_task_alloc();
  v0[24] = v15;
  *v15 = v0;
  v15[1] = AttachmentDownloadTask.start();
  v16 = v0[6];

  return AttachmentDownloadTask.start(asset:)(v16);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 200) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = AttachmentDownloadTask.start();
  }

  else
  {
    v7 = AttachmentDownloadTask.start();
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

{

  (*(v0 + 168))(*(v0 + 112), *(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 168);
  v2 = *(v0 + 112);
  v3 = *(v0 + 72);

  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t AttachmentDownloadTask.description.getter()
{
  _StringGuts.grow(_:)(68);
  MEMORY[0x1B27141F0](0xD00000000000001DLL, 0x80000001AF01C800);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B27141F0](0x3A6369706F74202CLL, 0xE900000000000020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities23DownloadAttachmentTopic_pMd, &_s15GroupActivities23DownloadAttachmentTopic_pMR);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B27141F0](0x203A656C6966202CLL, 0xE800000000000000);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v0);

  MEMORY[0x1B27141F0](0x686361747461202CLL, 0xEE00203A746E656DLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities18DownloadAttachment_pMd, &_s15GroupActivities18DownloadAttachment_pMR);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t AttachmentDownloadTask.start(asset:)(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v3 = type metadata accessor for SimultaneousTransferError();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v4 = type metadata accessor for Asset();
  v2[34] = v4;
  v2[35] = *(v4 - 8);
  v2[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2[37] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[38] = v5;
  v2[39] = *(v5 - 8);
  v2[40] = swift_task_alloc();
  v6 = type metadata accessor for AssetDownloadRequest();
  v2[41] = v6;
  v2[42] = *(v6 - 8);
  v2[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CloudAsset0B8SkeletonVSgMd, &_s10CloudAsset0B8SkeletonVSgMR);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v7 = type metadata accessor for AssetSkeleton();
  v2[46] = v7;
  v2[47] = *(v7 - 8);
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentDownloadTask.start(asset:), v1, 0);
}

{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for SimultaneousTransferError();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  type metadata accessor for Credential();
  v2[17] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v6 = type metadata accessor for AssetDownloadRequest();
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v2[24] = v7;
  v2[25] = *(v7 - 8);
  v2[26] = swift_task_alloc();
  v8 = type metadata accessor for DownloadToken();
  v2[27] = v8;
  v2[28] = *(v8 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CloudAsset0B0VSgMd, &_s10CloudAsset0B0VSgMR);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v9 = type metadata accessor for Asset();
  v2[34] = v9;
  v2[35] = *(v9 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentDownloadTask.start(asset:), v1, 0);
}

uint64_t AttachmentDownloadTask.start(asset:)()
{
  v48 = v0;
  if (one-time initialization token for downloadTask != -1)
  {
    swift_once();
  }

  v1 = v0[50];
  v2 = v0[46];
  v3 = v0[47];
  v4 = v0[28];
  v5 = type metadata accessor for Logger();
  v0[51] = __swift_project_value_buffer(v5, static Log.downloadTask);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[50];
  v12 = v0[46];
  v11 = v0[47];
  v45 = v6;
  if (v9)
  {
    v42 = v8;
    log = v7;
    v13 = v0[45];
    v40 = v0[44];
    v14 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v47 = v41;
    *v14 = 136315394;
    v15 = AttachmentDownloadTask.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v47);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v6(v13, v10, v12);
    (*(v11 + 56))(v13, 0, 1, v12);
    outlined init with copy of URL?(v13, v40, &_s10CloudAsset0B8SkeletonVSgMd, &_s10CloudAsset0B8SkeletonVSgMR);
    if ((*(v11 + 48))(v40, 1, v12) == 1)
    {
      v18 = 0xE300000000000000;
      v19 = 7104878;
    }

    else
    {
      v20 = v0[48];
      v21 = v0[49];
      v23 = v0[46];
      v22 = v0[47];
      (*(v22 + 32))(v21, v0[44], v23);
      v6(v20, v21, v23);
      v19 = String.init<A>(reflecting:)();
      v18 = v24;
      (*(v22 + 8))(v21, v23);
    }

    v25 = v0[50];
    v27 = v0[46];
    v26 = v0[47];
    outlined destroy of NSObject?(v0[45], &_s10CloudAsset0B8SkeletonVSgMd, &_s10CloudAsset0B8SkeletonVSgMR);
    (*(v26 + 8))(v25, v27);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v47);

    *(v14 + 14) = v28;
    _os_log_impl(&dword_1AEE80000, log, v42, "%s Starting to attempt to download attachment through AssetSkeleton %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v41, -1, -1);
    MEMORY[0x1B2715BA0](v14, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v29 = v0[49];
  v30 = v0[46];
  v31 = v0[39];
  v32 = v0[40];
  v33 = v0[38];
  v35 = v0[28];
  v34 = v0[29];
  v36 = *(v34 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_manager + 32);
  loga = *(v34 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_manager + 24);
  __swift_project_boxed_opaque_existential_1((v34 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_manager), loga);
  v45(v29, v35, v30);
  (*(v31 + 16))(v32, v34 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_file, v33);
  AssetDownloadRequest.init(skeleton:fileURL:)();
  v46 = (*(v36 + 32) + **(v36 + 32));
  v37 = swift_task_alloc();
  v0[52] = v37;
  *v37 = v0;
  v37[1] = AttachmentDownloadTask.start(asset:);
  v38 = v0[43];

  return v46(v0 + 7, v38, loga, v36);
}

{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = v2[43];
  v4 = v2[42];
  v5 = v2[41];
  v6 = v2[29];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = AttachmentDownloadTask.start(asset:);
  }

  else
  {
    v7 = AttachmentDownloadTask.start(asset:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

{
  v22 = v0;
  outlined init with take of Transferable((v0 + 56), v0 + 16);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v21 = v4;
    *v3 = 136315138;
    v5 = AttachmentDownloadTask.description.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v21);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1AEE80000, v1, v2, "%s Fetched AssetDownloadCoordinator", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x1B2715BA0](v4, -1, -1);
    MEMORY[0x1B2715BA0](v3, -1, -1);
  }

  v8 = *(v0 + 296);
  v9 = *(v0 + 232);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  outlined init with copy of Transferable(v9 + 152, v0 + 96);
  outlined init with copy of Transferable(v0 + 16, v0 + 136);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  outlined init with take of Transferable((v0 + 96), (v12 + 4));
  v12[9] = v11;
  outlined init with take of Transferable((v0 + 136), (v12 + 10));
  v13 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in AttachmentDownloadTask.start(asset:), v12);
  v14 = OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_signalHandler;
  swift_beginAccess();
  *(v9 + v14) = v13;

  v15 = *(v0 + 40);
  v16 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v15);
  v20 = (*(v16 + 8) + **(v16 + 8));
  v17 = swift_task_alloc();
  *(v0 + 432) = v17;
  *v17 = v0;
  v17[1] = AttachmentDownloadTask.start(asset:);
  v18 = *(v0 + 288);

  return v20(v18, v15, v16);
}

{
  v2 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = v2[29];
    v4 = AttachmentDownloadTask.start(asset:);
  }

  else
  {
    v5 = v2[29];
    (*(v2[35] + 8))(v2[36], v2[34]);
    v4 = AttachmentDownloadTask.start(asset:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v11 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    v5 = AttachmentDownloadTask.description.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1AEE80000, v1, v2, "%s finished download", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x1B2715BA0](v4, -1, -1);
    MEMORY[0x1B2715BA0](v3, -1, -1);
  }

  $defer #1 () in AttachmentDownloadTask.start(asset:)(v0[29]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v8 = v0[1];

  return v8();
}

{
  v15 = v0;
  v1 = v0[53];
  v0[25] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    (*(v0[31] + 8))(v0[33], v0[30]);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v14 = v6;
      *v5 = 136315138;
      v7 = AttachmentDownloadTask.description.getter();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v14);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1AEE80000, v3, v4, "%s caught SimultaneousTransferError", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1B2715BA0](v6, -1, -1);
      MEMORY[0x1B2715BA0](v5, -1, -1);
    }

    v10 = v0[53];
    lazy protocol witness table accessor for type AttachmentDownloadTask.Errors and conformance AttachmentDownloadTask.Errors();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
  }

  else
  {
    swift_willThrow();
  }

  v12 = v0[1];

  return v12();
}

{
  v31 = v0;
  v1 = v0[55];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[55];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30[0] = v7;
    *v6 = 136315394;
    v8 = AttachmentDownloadTask.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v30);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v0[27] = v5;
    v11 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v30);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_1AEE80000, v3, v4, "%s Failed to finish downloading, error: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v15 = v0[55];
  v0[26] = v15;
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    (*(v0[31] + 8))(v0[32], v0[30]);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30[0] = v20;
      *v19 = 136315138;
      v21 = AttachmentDownloadTask.description.getter();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v30);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1AEE80000, v17, v18, "%s caught SimultaneousTransferError", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1B2715BA0](v20, -1, -1);
      MEMORY[0x1B2715BA0](v19, -1, -1);
    }

    v24 = v0[55];
    v25 = v0[29];
    lazy protocol witness table accessor for type AttachmentDownloadTask.Errors and conformance AttachmentDownloadTask.Errors();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();

    $defer #1 () in AttachmentDownloadTask.start(asset:)(v25);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  else
  {
    v27 = v0[29];
    swift_willThrow();
    $defer #1 () in AttachmentDownloadTask.start(asset:)(v27);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v28 = v0[1];

  return v28();
}

{
  v47 = v0;
  if (one-time initialization token for downloadTask != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 312);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 72);
  v5 = type metadata accessor for Logger();
  *(v0 + 320) = __swift_project_value_buffer(v5, static Log.downloadTask);
  v6 = *(v3 + 16);
  *(v0 + 328) = v6;
  *(v0 + 336) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v45 = v6;
  v6(v1, v4, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 312);
  v12 = *(v0 + 272);
  v11 = *(v0 + 280);
  if (v9)
  {
    v43 = v8;
    log = v7;
    v13 = *(v0 + 256);
    v14 = *(v0 + 264);
    v15 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v46 = v42;
    *v15 = 136315394;
    v16 = AttachmentDownloadTask.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v46);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v45(v14, v10, v12);
    (*(v11 + 56))(v14, 0, 1, v12);
    outlined init with copy of URL?(v14, v13, &_s10CloudAsset0B0VSgMd, &_s10CloudAsset0B0VSgMR);
    if ((*(v11 + 48))(v13, 1, v12) == 1)
    {
      v19 = 0xE300000000000000;
      v20 = 7104878;
    }

    else
    {
      v21 = *(v0 + 296);
      v22 = *(v0 + 304);
      v24 = *(v0 + 272);
      v23 = *(v0 + 280);
      (*(v23 + 32))(v22, *(v0 + 256), v24);
      v45(v21, v22, v24);
      v20 = String.init<A>(reflecting:)();
      v19 = v25;
      (*(v23 + 8))(v22, v24);
    }

    v26 = *(v0 + 312);
    v28 = *(v0 + 272);
    v27 = *(v0 + 280);
    outlined destroy of NSObject?(*(v0 + 264), &_s10CloudAsset0B0VSgMd, &_s10CloudAsset0B0VSgMR);
    (*(v27 + 8))(v26, v28);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, &v46);

    *(v15 + 14) = v29;
    _os_log_impl(&dword_1AEE80000, log, v43, "%s Starting to attempt to download attachment directly from Asset %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v42, -1, -1);
    MEMORY[0x1B2715BA0](v15, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v30 = *(v0 + 248);
  v31 = *(v0 + 80);
  v32 = type metadata accessor for TaskPriority();
  v33 = *(*(v32 - 8) + 56);
  v33(v30, 1, 1, v32);
  outlined init with copy of Transferable(v31 + 152, v0 + 16);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  outlined init with take of Transferable((v0 + 16), v34 + 32);
  v35 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v30, &async function pointer to partial apply for closure #1 in AttachmentDownloadTask.start(asset:), v34);
  *(v0 + 344) = v35;
  v33(v30, 1, 1, v32);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v35;

  *(v0 + 352) = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v30, &async function pointer to partial apply for closure #2 in AttachmentDownloadTask.start(asset:), v36);
  v37 = swift_task_alloc();
  *(v0 + 360) = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *(v0 + 368) = v38;
  *v37 = v0;
  v37[1] = AttachmentDownloadTask.start(asset:);
  v39 = MEMORY[0x1E69E7288];
  v40 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v38, v35, v40, v38, v39);
}

{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = AttachmentDownloadTask.start(asset:);
  }

  else
  {
    v4 = AttachmentDownloadTask.start(asset:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v19 = v0;
  MEMORY[0x1B27144E0](v0[44], MEMORY[0x1E69E7CA8] + 8, v0[46], MEMORY[0x1E69E7288]);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v18 = v4;
    *v3 = 136315138;
    v5 = AttachmentDownloadTask.description.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v18);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1AEE80000, v1, v2, "%s Requesting downloadToken", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x1B2715BA0](v4, -1, -1);
    MEMORY[0x1B2715BA0](v3, -1, -1);
  }

  v8 = v0[10];
  v9 = v8[17];
  v10 = v8[18];
  __swift_project_boxed_opaque_existential_1(v8 + 14, v9);
  v11 = v8[22];
  v12 = v8[23];
  __swift_project_boxed_opaque_existential_1(v8 + 19, v11);
  (*(v12 + 8))(v11, v12);
  v17 = (*(v10 + 16) + **(v10 + 16));
  v13 = swift_task_alloc();
  v0[48] = v13;
  *v13 = v0;
  v13[1] = AttachmentDownloadTask.start(asset:);
  v14 = v0[30];
  v15 = v0[26];

  return v17(v14, v15, v9, v10);
}

{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = v2[26];
  v4 = v2[25];
  v5 = v2[24];
  v6 = v2[10];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = AttachmentDownloadTask.start(asset:);
  }

  else
  {
    v7 = AttachmentDownloadTask.start(asset:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

{
  v32 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v31 = v4;
    *v3 = 136315138;
    v5 = AttachmentDownloadTask.description.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v31);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1AEE80000, v1, v2, "%s Received downloadToken, fetching Asset", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x1B2715BA0](v4, -1, -1);
    MEMORY[0x1B2715BA0](v3, -1, -1);
  }

  v23 = v0[41];
  v8 = v0[38];
  v9 = v0[34];
  v10 = v0[29];
  v11 = v0[27];
  v12 = v0[28];
  v14 = v0[19];
  v13 = v0[20];
  v22 = v0[18];
  v24 = v0[30];
  v25 = v0[16];
  v26 = v0[15];
  v27 = v0[14];
  v15 = v0[9];
  v16 = v0[10];
  v30 = *(v16 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_manager + 24);
  v28 = *(v16 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_manager + 32);
  __swift_project_boxed_opaque_existential_1((v16 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_manager), v30);
  v23(v8, v15, v9);
  (*(v14 + 16))(v13, v16 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_file, v22);
  (*(v12 + 16))(v10, v24, v11);
  dispatch thunk of Token.accountID.getter();
  dispatch thunk of Token.token.getter();
  type metadata accessor for Credential.Builder();
  swift_allocObject();
  Credential.Builder.init(tenantName:requestorID:accessToken:)();
  dispatch thunk of Token.expirationDate.getter();
  Credential.Builder.setExpirationDate(_:)();

  (*(v26 + 8))(v25, v27);
  Credential.Builder.build()();

  v17 = *(v12 + 8);
  v0[50] = v17;
  v0[51] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v10, v11);
  AssetDownloadRequest.init(asset:fileURL:credential:)();
  v29 = (*(v28 + 24) + **(v28 + 24));
  v18 = swift_task_alloc();
  v0[52] = v18;
  *v18 = v0;
  v18[1] = AttachmentDownloadTask.start(asset:);
  v19 = v0[36];
  v20 = v0[23];

  return v29(v19, v20, v30, v28);
}

{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = v2[23];
  v4 = v2[22];
  v5 = v2[21];
  v6 = v2[10];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = AttachmentDownloadTask.start(asset:);
  }

  else
  {
    v7 = AttachmentDownloadTask.start(asset:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

{
  v17 = v0;
  (*(v0[35] + 8))(v0[36], v0[34]);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[50];
  v5 = v0[30];
  v6 = v0[27];
  if (v3)
  {
    v15 = v0[30];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = AttachmentDownloadTask.description.getter();
    v14 = v4;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1AEE80000, v1, v2, "%s finished download", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B2715BA0](v8, -1, -1);
    MEMORY[0x1B2715BA0](v7, -1, -1);

    v14(v15, v6);
  }

  else
  {

    v4(v5, v6);
  }

  v12 = v0[1];

  return v12();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v35 = v0;
  v1 = v0[53];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[53];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v34[0] = v7;
    *v6 = 136315394;
    v8 = AttachmentDownloadTask.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v34);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v0[8] = v5;
    v11 = v5;
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v34);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_1AEE80000, v3, v4, "%s Failed to finish downloading, error: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v15 = v0[53];
  v0[7] = v15;
  v16 = v15;
  if (swift_dynamicCast())
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34[0] = v20;
      *v19 = 136315138;
      v21 = AttachmentDownloadTask.description.getter();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v34);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1AEE80000, v17, v18, "%s caught SimultaneousTransferError", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1B2715BA0](v20, -1, -1);
      MEMORY[0x1B2715BA0](v19, -1, -1);
    }

    v24 = v0[53];
    v25 = v0[50];
    v26 = v0[30];
    v27 = v0[27];
    lazy protocol witness table accessor for type AttachmentDownloadTask.Errors and conformance AttachmentDownloadTask.Errors();
    swift_allocError();
    *v28 = 1;
    swift_willThrow();

    v25(v26, v27);
  }

  else
  {
    v29 = v0[50];
    v30 = v0[30];
    v31 = v0[27];
    swift_willThrow();

    v29(v30, v31);
  }

  v32 = v0[1];

  return v32();
}

uint64_t closure #1 in AttachmentDownloadTask.start(asset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  v7 = type metadata accessor for Signal();
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CloudAsset6SignalVSgMd, &_s10CloudAsset6SignalVSgMR);
  v6[19] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy10CloudAsset6SignalVs5Error_pGMd, &_sScsy10CloudAsset6SignalVs5Error_pGMR);
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy10CloudAsset6SignalVs5Error_p_GMd, &_sScs8IteratorVy10CloudAsset6SignalVs5Error_p_GMR);
  v6[23] = v9;
  v6[24] = *(v9 - 8);
  v6[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in AttachmentDownloadTask.start(asset:), 0, 0);
}

uint64_t closure #1 in AttachmentDownloadTask.start(asset:)()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[13];
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v0[26] = JSONDecoder.init()();
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 24))(v5, v6);
  MEMORY[0x1B27145A0](v3);
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v7 = swift_task_alloc();
  v0[27] = v7;
  *v7 = v0;
  v7[1] = closure #1 in AttachmentDownloadTask.start(asset:);
  v8 = v0[23];
  v9 = v0[19];

  return MEMORY[0x1EEE6DB90](v9, 0, 0, v8, v0 + 9);
}

{

  if (v0)
  {
    v1 = closure #1 in AttachmentDownloadTask.start(asset:);
  }

  else
  {
    v1 = closure #1 in AttachmentDownloadTask.start(asset:);
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

{
  v29 = v0;
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[24] + 8))(v0[25], v0[23]);

LABEL_12:

    v26 = v0[1];

    return v26();
  }

  (*(v3 + 32))(v0[18], v1, v2);
  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (!Strong)
  {
    v20 = v0[25];
    v21 = v0[23];
    v22 = v0[24];
    v24 = v0[17];
    v23 = v0[18];
    v25 = v0[16];

    (*(v24 + 8))(v23, v25);
    (*(v22 + 8))(v20, v21);
    goto LABEL_12;
  }

  v5 = Strong;
  if (one-time initialization token for downloadTask != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v0[29] = __swift_project_value_buffer(v6, static Log.downloadTask);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136315138;
    v0[7] = 0;
    v0[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(68);
    v11 = v0[8];
    v0[5] = v0[7];
    v0[6] = v11;
    MEMORY[0x1B27141F0](0xD00000000000001DLL, 0x80000001AF01C800);
    v0[12] = v5;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1B27141F0](0x3A6369706F74202CLL, 0xE900000000000020);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities23DownloadAttachmentTopic_pMd, &_s15GroupActivities23DownloadAttachmentTopic_pMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1B27141F0](0x203A656C6966202CLL, 0xE800000000000000);
    type metadata accessor for URL();
    lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B27141F0](v12);

    MEMORY[0x1B27141F0](0x686361747461202CLL, 0xEE00203A746E656DLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities18DownloadAttachment_pMd, &_s15GroupActivities18DownloadAttachment_pMR);
    _print_unlocked<A, B>(_:_:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0[5], v0[6], &v28);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1AEE80000, v7, v8, "%s Received signal blob, sending over to coordinator.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  v14 = v0[15];
  v15 = v14[3];
  v16 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v27 = (*(v16 + 16) + **(v16 + 16));
  v17 = swift_task_alloc();
  v0[30] = v17;
  *v17 = v0;
  v17[1] = closure #1 in AttachmentDownloadTask.start(asset:);
  v18 = v0[18];

  return v27(v18, v15, v16);
}

{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = closure #1 in AttachmentDownloadTask.start(asset:);
  }

  else
  {
    v2 = closure #1 in AttachmentDownloadTask.start(asset:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = closure #1 in AttachmentDownloadTask.start(asset:);
  v5 = v0[23];
  v6 = v0[19];

  return MEMORY[0x1EEE6DB90](v6, 0, 0, v5, v0 + 9);
}

{
  v15 = v0;
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[9];
  if (one-time initialization token for downloadTask != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.downloadTask);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v0[10] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Signal listener failed for: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  swift_willThrow();

  v12 = v0[1];

  return v12();
}

{
  v24 = v0;
  v1 = v0[31];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[31];
    v6 = v0[17];
    v21 = v0[16];
    v22 = v0[18];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    v0[11] = v5;
    v9 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v23);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Failed to handle updated attachment, reason: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B2715BA0](v8, -1, -1);
    MEMORY[0x1B2715BA0](v7, -1, -1);

    (*(v6 + 8))(v22, v21);
  }

  else
  {
    v13 = v0[31];
    v15 = v0[17];
    v14 = v0[18];
    v16 = v0[16];

    (*(v15 + 8))(v14, v16);
  }

  v17 = swift_task_alloc();
  v0[27] = v17;
  *v17 = v0;
  v17[1] = closure #1 in AttachmentDownloadTask.start(asset:);
  v18 = v0[23];
  v19 = v0[19];

  return MEMORY[0x1EEE6DB90](v19, 0, 0, v18, v0 + 9);
}

{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = closure #1 in AttachmentDownloadTask.start(asset:);

  return v6(v2, v3);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t $defer #1 () in AttachmentDownloadTask.start(asset:)(uint64_t a1)
{
  if (one-time initialization token for downloadTask != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.downloadTask);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14[0] = v6;
    *v5 = 136315138;
    v7 = AttachmentDownloadTask.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1AEE80000, v3, v4, "%s Cleaning up signalHandler", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B2715BA0](v6, -1, -1);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_signalHandler;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if (v11)
  {

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1B27144E0](v11, MEMORY[0x1E69E7CA8] + 8, v12, MEMORY[0x1E69E7288]);
  }

  *(a1 + v10) = 0;
}

uint64_t closure #2 in AttachmentDownloadTask.start(asset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in AttachmentDownloadTask.start(asset:), 0, 0);
}

uint64_t closure #2 in AttachmentDownloadTask.start(asset:)()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = closure #2 in AttachmentDownloadTask.start(asset:);

  return specialized Clock.sleep(for:tolerance:)(5000000000000000000, 0, 0, 0, 1);
}

{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 56) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = CKShareGroupSessionProvider.fetchMembershipUpdate();
  }

  else
  {
    v5 = closure #2 in AttachmentDownloadTask.start(asset:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x1B27144E0](v1, MEMORY[0x1E69E7CA8] + 8, v2, MEMORY[0x1E69E7288]);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t AttachmentDownloadTask.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  v1 = OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_file;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_manager));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AttachmentDownloadTask.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  v1 = OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_file;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_manager));

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t specialized AttachmentDownloadTask.__allocating_init(topic:attachment:file:manager:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a6;
  v26 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v22 = a7;
  v23 = a9;
  v16 = __swift_allocate_boxed_opaque_existential_1(&v21);
  (*(*(a7 - 8) + 32))(v16, a2, a7);
  type metadata accessor for AttachmentDownloadTask(0);
  v17 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v17 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_signalHandler) = 0;
  outlined init with take of Transferable(&v24, v17 + 112);
  outlined init with take of Transferable(&v21, v17 + 152);
  v18 = OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_file;
  v19 = type metadata accessor for URL();
  (*(*(v19 - 8) + 32))(v17 + v18, a3, v19);
  outlined init with take of Transferable(a4, v17 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_manager);
  return v17;
}

uint64_t partial apply for closure #1 in AttachmentDownloadTask.start(asset:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in AttachmentDownloadTask.start(asset:)(a1, v4, v5, (v1 + 4), v6, (v1 + 10));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in AttachmentDownloadTask.start(asset:)(a1, v4, v5, v1 + 32);
}

uint64_t partial apply for closure #2 in AttachmentDownloadTask.start(asset:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #2 in AttachmentDownloadTask.start(asset:)(a1, v4, v5, v6);
}

uint64_t dispatch thunk of DownloadAttachment.assetSkeleton.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of DownloadAttachment.waitForUploadFinished()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v7(a1, a2);
}

uint64_t dispatch thunk of DownloadAttachmentTopic.requestDownloadToken(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v11(a1, a2, a3, a4);
}

uint64_t type metadata accessor for AttachmentDownloadTask(uint64_t a1)
{
  result = type metadata singleton initialization cache for AttachmentDownloadTask;
  if (!type metadata singleton initialization cache for AttachmentDownloadTask)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for AttachmentDownloadTask(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t dispatch thunk of AttachmentDownloadTask.start()()
{
  v4 = (*(*v0 + 160) + **(*v0 + 160));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v4();
}

uint64_t dispatch thunk of AttachmentDownloadTask.start(asset:)(uint64_t a1)
{
  v6 = (*(*v1 + 168) + **(*v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v6(a1);
}

{
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v6(a1);
}

uint64_t partial apply for closure #1 in closure #1 in Attachment.signal.getter(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy10CloudAsset6SignalVs5Error_p_GMd, &_sScs12ContinuationVy10CloudAsset6SignalVs5Error_p_GMR) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #1 in closure #1 in Attachment.signal.getter(a1, v6, v7, v8, v1 + v5);
}

uint64_t lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _SpatialTemplateElementOutput.output.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with take of AbsoluteSpatialTemplateOutput.Element(v1, v5);
  outlined init with take of AbsoluteSpatialTemplateOutput.Element(v5, a1);
  return outlined init with copy of AbsoluteSpatialTemplateOutput.Element(v5, &v4);
}

__n128 _SpatialTemplateElementOutput.init(output:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with take of AbsoluteSpatialTemplateOutput.Element(a1, v6);
  outlined init with take of AbsoluteSpatialTemplateOutput.Element(v6, v7);
  v3 = v7[5];
  *(a2 + 64) = v7[4];
  *(a2 + 80) = v3;
  *(a2 + 96) = v8;
  v4 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v4;
  result = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = result;
  return result;
}

__n128 SpatialTemplateSeatElement.position.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  v3 = v1[1].n128_u64[1];
  a1[1].n128_u64[0] = v1[1].n128_u64[0];
  a1[1].n128_u64[1] = v3;
  *a1 = result;
  return result;
}

__n128 SpatialTemplateSeatElement.direction.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 32);
  result = *(v1 + 48);
  v4 = *(v1 + 64);
  *(a1 + 16) = result;
  *(a1 + 32) = v4;
  *(a1 + 48) = v2;
  return result;
}

__n128 SpatialTemplateSeatElement._output.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  outlined init with copy of URL?(v1 + 88, v25, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  v4 = v26;
  if (v26)
  {
    v5 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    SpatialTemplateRole.output.getter(v5, v23);
    v6 = *(&v23[0] + 1);
    v4 = *&v23[0];
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    outlined destroy of NSObject?(v25, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    v6 = 0;
  }

  v7 = *v2;
  v8 = *(v2 + 2);
  v9 = *(v2 + 3);
  v10 = *(v2 + 4);
  v28 = *(v2 + 80);
  v15[0] = v4;
  v15[1] = v6;
  v17 = v8;
  v18 = v9;
  v16 = v7;
  v19 = v10;
  v11 = v2[4];
  v20 = v2[3];
  v21 = v11;
  v22 = v28;
  outlined init with take of AbsoluteSpatialTemplateOutput.Element(v15, v23);
  v12 = v23[5];
  *(a1 + 64) = v23[4];
  *(a1 + 80) = v12;
  *(a1 + 96) = v24;
  v13 = v23[1];
  *a1 = v23[0];
  *(a1 + 16) = v13;
  result = v23[3];
  *(a1 + 32) = v23[2];
  *(a1 + 48) = result;
  return result;
}

double static SpatialTemplateElementPosition.app.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 static SpatialTemplateElementDirection.lookingAt(_:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = a1[1].n128_u64[0];
  v2 = a1[1].n128_u64[1];
  result = *a1;
  a2->n128_u64[0] = 0;
  a2[1] = result;
  a2[2].n128_u64[0] = v3;
  a2[2].n128_u64[1] = v2;
  a2[3].n128_u8[0] = 0;
  return result;
}

__n128 SpatialTemplateSeatElement.init(position:direction:role:)@<Q0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 3);
  v6 = *a2;
  v7 = *(a2 + 48);
  *(a4 + 16) = *(a1 + 2);
  *(a4 + 24) = v5;
  *a4 = v4;
  *(a4 + 32) = v6;
  v8 = *(a2 + 2);
  *(a4 + 48) = *(a2 + 1);
  *(a4 + 64) = v8;
  *(a4 + 80) = v7;
  result = *a3;
  v10 = *(a3 + 16);
  *(a4 + 88) = *a3;
  *(a4 + 104) = v10;
  *(a4 + 120) = *(a3 + 32);
  return result;
}

BOOL static SpatialTemplateElementPosition.== infix(_:_:)(double *a1, double *a2)
{
  v2 = *a1 == *a2;
  if (a1[1] != a2[1])
  {
    v2 = 0;
  }

  return a1[2] == a2[2] && v2;
}

uint64_t SpatialTemplateSeatElement.hash(into:)(uint64_t a1)
{
  MEMORY[0x1B2715040](0);
  SPVector3D.hash(into:)();
  v2 = *(v1 + 48);
  v3 = *(v1 + 80);
  SPAngle.hash(into:)();
  if (v3)
  {
    MEMORY[0x1B2715040](1);
    MEMORY[0x1B2715040](v2);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }

  outlined init with copy of URL?(v1 + 88, &v8, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  if (*(&v9 + 1))
  {
    outlined init with take of Transferable(&v8, v11);
  }

  else
  {
    outlined destroy of NSObject?(&v8, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    memset(v11, 0, sizeof(v11));
    v12 = 0;
  }

  outlined init with copy of URL?(v11, &v8, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  if (*(&v9 + 1))
  {
    v5 = v8;
    v6 = v9;
    v7 = v10;
    Hasher._combine(_:)(1u);
    __swift_project_boxed_opaque_existential_1(&v5, *(&v6 + 1));
    dispatch thunk of Hashable.hash(into:)();
    outlined destroy of NSObject?(v11, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    return outlined destroy of AnySpatialTemplateRole(&v5);
  }

  else
  {
    Hasher._combine(_:)(0);
    return outlined destroy of NSObject?(v11, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  }
}

Swift::Int SpatialTemplateSeatElement.hashValue.getter()
{
  Hasher.init(_seed:)();
  SpatialTemplateSeatElement.hash(into:)(v1);
  return Hasher._finalize()();
}

__n128 protocol witness for SpatialTemplateElement.position.getter in conformance SpatialTemplateSeatElement@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  v3 = v1[1].n128_u64[1];
  a1[1].n128_u64[0] = v1[1].n128_u64[0];
  a1[1].n128_u64[1] = v3;
  *a1 = result;
  return result;
}

__n128 protocol witness for SpatialTemplateElement.direction.getter in conformance SpatialTemplateSeatElement@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 32);
  result = *(v1 + 48);
  v4 = *(v1 + 64);
  *(a1 + 16) = result;
  *(a1 + 32) = v4;
  *(a1 + 48) = v2;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpatialTemplateSeatElement()
{
  Hasher.init(_seed:)();
  SpatialTemplateSeatElement.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpatialTemplateSeatElement(uint64_t a1)
{
  Hasher.init(_seed:)();
  SpatialTemplateSeatElement.hash(into:)(v2);
  return Hasher._finalize()();
}

__n128 static SpatialTemplateElement<>.seat(position:direction:role:)@<Q0>(__int128 *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = *a1;
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = a2->n128_u64[0];
  v9 = a2[3].n128_u8[0];
  outlined init with copy of URL?(a3, a4 + 88, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  *(a4 + 16) = v6;
  *(a4 + 24) = v7;
  *a4 = v12;
  *(a4 + 32) = v8;
  result = a2[1];
  v11 = a2[2];
  *(a4 + 48) = result;
  *(a4 + 64) = v11;
  *(a4 + 80) = v9;
  return result;
}

__n128 SpatialTemplateElementDirection.output.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *v1;
  result = *(v1 + 16);
  v4 = *(v1 + 32);
  *(a1 + 16) = result;
  *(a1 + 32) = v4;
  *(a1 + 48) = v2;
  return result;
}

__n128 SpatialTemplateElementDirection.init(output:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *a2 = *a1;
  result = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 16) = result;
  *(a2 + 32) = v4;
  *(a2 + 48) = v2;
  return result;
}

__n128 static SpatialTemplateElementDirection.lookingAt(_:)@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 16))(&v8, v3, v4);
  v6 = v9;
  v5 = v10;
  result = v8;
  a2->n128_u64[0] = 0;
  a2[1] = result;
  a2[2].n128_u64[0] = v6;
  a2[2].n128_u64[1] = v5;
  a2[3].n128_u8[0] = 0;
  return result;
}

_BYTE *static SpatialTemplateElementDirection.alignedWith(appAxis:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result == 0;
  *a2 = 0;
  v3 = 2;
  if (v2)
  {
    v3 = 0;
  }

  *(a2 + 16) = v3;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  return result;
}

double static SpatialTemplateElementDirection.+ infix(_:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  if (v4 == 1)
  {
    v5 = 0;
    v3 = *(a1 + 16);
    v6 = 0uLL;
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 24);
  }

  result = *a1 + a3;
  *a2 = result;
  *(a2 + 16) = v3;
  *(a2 + 24) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = v4;
  return result;
}

double SpatialTemplateElementDirection.rotatedBy(_:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 48);
  if (v4 == 1)
  {
    v5 = 0;
    v3 = *(v2 + 16);
    v6 = 0uLL;
  }

  else
  {
    v5 = *(v2 + 40);
    v6 = *(v2 + 24);
  }

  result = *v2 + a2;
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 24) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  return result;
}

uint64_t SpatialTemplateElementDirection.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 48);
  SPAngle.hash(into:)();
  if (v3)
  {
    MEMORY[0x1B2715040](1);
    return MEMORY[0x1B2715040](v2);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    return SPVector3D.hash(into:)();
  }
}

Swift::Int SpatialTemplateElementDirection.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  Hasher.init(_seed:)();
  SPAngle.hash(into:)();
  if (v2)
  {
    MEMORY[0x1B2715040](1);
    MEMORY[0x1B2715040](v1);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpatialTemplateElementDirection()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  Hasher.init(_seed:)();
  SPAngle.hash(into:)();
  if (v2)
  {
    MEMORY[0x1B2715040](1);
    MEMORY[0x1B2715040](v1);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SpatialTemplateElementDirection(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 48);
  SPAngle.hash(into:)();
  if (v3)
  {
    MEMORY[0x1B2715040](1);
    return MEMORY[0x1B2715040](v2);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    return SPVector3D.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpatialTemplateElementDirection(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 48);
  Hasher.init(_seed:)();
  SPAngle.hash(into:)();
  if (v3)
  {
    MEMORY[0x1B2715040](1);
    MEMORY[0x1B2715040](v2);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int SpatialTemplateElementAxis.Storage.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int SpatialTemplateElementAxis.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v1);
  return Hasher._finalize()();
}

__n128 SpatialTemplateElementPosition.output.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  v3 = v1[1].n128_u64[1];
  a1[1].n128_u64[0] = v1[1].n128_u64[0];
  a1[1].n128_u64[1] = v3;
  *a1 = result;
  return result;
}

__n128 SpatialTemplateElementPosition.init(output:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  v3 = a1[1].n128_u64[1];
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  a2[1].n128_u64[1] = v3;
  *a2 = result;
  return result;
}

__n128 SpatialTemplateElementPosition.offsetBy(x:z:)@<Q0>(__n128 *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  SPVector3DMake(v7.n128_f64, *v3 + a2, v3[1], v3[2] + a3);
  result = v7;
  v6 = v9;
  a1[1].n128_u64[0] = v8;
  a1[1].n128_u64[1] = v6;
  *a1 = result;
  return result;
}

__n128 SpatialTemplateElementPosition.offsetBy(x:)@<Q0>(__n128 *a1@<X8>, double a2@<D0>)
{
  SPVector3DMake(v6.n128_f64, *v2 + a2, v2[1], v2[2] + 0.0);
  result = v6;
  v5 = v8;
  a1[1].n128_u64[0] = v7;
  a1[1].n128_u64[1] = v5;
  *a1 = result;
  return result;
}

__n128 SpatialTemplateElementPosition.offsetBy(z:)@<Q0>(__n128 *a1@<X8>, double a2@<D0>)
{
  SPVector3DMake(v6.n128_f64, *v2 + 0.0, v2[1], v2[2] + a2);
  result = v6;
  v5 = v8;
  a1[1].n128_u64[0] = v7;
  a1[1].n128_u64[1] = v5;
  *a1 = result;
  return result;
}

Swift::Int SpatialTemplateElementPosition.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  SPVector3D.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpatialTemplateElementPosition()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  SPVector3D.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpatialTemplateElementPosition(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  SPVector3D.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance SpatialTemplateElementPosition(double *a1, double *a2)
{
  v2 = *a1 == *a2;
  if (a1[1] != a2[1])
  {
    v2 = 0;
  }

  return a1[2] == a2[2] && v2;
}

uint64_t specialized static SpatialTemplateSeatElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v3 || *(a1 + 32) != *(a2 + 32))
  {
    goto LABEL_38;
  }

  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  if (*(a1 + 80))
  {
    if (LOBYTE(v5) != LOBYTE(v4))
    {
      v6 = 0;
    }

    else
    {
      v6 = *(a2 + 80);
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (*(a2 + 80))
    {
      goto LABEL_38;
    }

    v7 = v4 == v5 && *(a1 + 56) == *(a2 + 56);
    if (!v7 || *(a1 + 64) != *(a2 + 64))
    {
      goto LABEL_38;
    }
  }

  outlined init with copy of URL?(a1 + 88, &v15, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  if (v16)
  {
    outlined init with take of Transferable(&v15, v22);
  }

  else
  {
    outlined destroy of NSObject?(&v15, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    memset(v22, 0, sizeof(v22));
    v23 = 0;
  }

  outlined init with copy of URL?(a2 + 88, &v15, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  if (v16)
  {
    outlined init with take of Transferable(&v15, v20);
  }

  else
  {
    outlined destroy of NSObject?(&v15, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    memset(v20, 0, sizeof(v20));
    v21 = 0;
  }

  outlined init with copy of URL?(v22, &v15, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  outlined init with copy of URL?(v20, &v17, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  if (!v16)
  {
    outlined destroy of NSObject?(v20, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    outlined destroy of NSObject?(v22, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    if (!*(&v18 + 1))
    {
      outlined destroy of NSObject?(&v15, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
      v10 = 1;
      return v10 & 1;
    }

    goto LABEL_37;
  }

  outlined init with copy of URL?(&v15, v14, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  if (!*(&v18 + 1))
  {
    outlined destroy of NSObject?(v20, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    outlined destroy of NSObject?(v22, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    outlined destroy of AnySpatialTemplateRole(v14);
LABEL_37:
    outlined destroy of NSObject?(&v15, &_s15GroupActivities22AnySpatialTemplateRoleVSg_ADtMd, &_s15GroupActivities22AnySpatialTemplateRoleVSg_ADtMR);
LABEL_38:
    v10 = 0;
    return v10 & 1;
  }

  v12[0] = v17;
  v12[1] = v18;
  v13 = v19;
  v10 = specialized static AnySpatialTemplateRole.== infix(_:_:)(v14, v12);
  outlined destroy of AnySpatialTemplateRole(v12);
  outlined destroy of NSObject?(v20, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  outlined destroy of NSObject?(v22, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  outlined destroy of AnySpatialTemplateRole(v14);
  outlined destroy of NSObject?(&v15, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  return v10 & 1;
}

BOOL specialized static SpatialTemplateElementDirection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if ((*(a1 + 48) & 1) == 0)
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      v5 = v2 == v3 && *(a1 + 24) == *(a2 + 24);
      if (v5 && *(a1 + 32) == *(a2 + 32))
      {
        return 1;
      }
    }

    return 0;
  }

  if (LOBYTE(v3) != LOBYTE(v2))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 48);
  }

  return (v4 & 1) != 0;
}

void SPVector3DMake(double *__return_ptr a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
}

unint64_t instantiation function for generic protocol witness table for SpatialTemplateSeatElement(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SpatialTemplateSeatElement and conformance SpatialTemplateSeatElement();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplateSeatElement and conformance SpatialTemplateSeatElement()
{
  result = lazy protocol witness table cache variable for type SpatialTemplateSeatElement and conformance SpatialTemplateSeatElement;
  if (!lazy protocol witness table cache variable for type SpatialTemplateSeatElement and conformance SpatialTemplateSeatElement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplateSeatElement and conformance SpatialTemplateSeatElement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplateSeatElement and conformance SpatialTemplateSeatElement;
  if (!lazy protocol witness table cache variable for type SpatialTemplateSeatElement and conformance SpatialTemplateSeatElement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplateSeatElement and conformance SpatialTemplateSeatElement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplateElementDirection and conformance SpatialTemplateElementDirection()
{
  result = lazy protocol witness table cache variable for type SpatialTemplateElementDirection and conformance SpatialTemplateElementDirection;
  if (!lazy protocol witness table cache variable for type SpatialTemplateElementDirection and conformance SpatialTemplateElementDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplateElementDirection and conformance SpatialTemplateElementDirection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplateElementAxis.Storage and conformance SpatialTemplateElementAxis.Storage()
{
  result = lazy protocol witness table cache variable for type SpatialTemplateElementAxis.Storage and conformance SpatialTemplateElementAxis.Storage;
  if (!lazy protocol witness table cache variable for type SpatialTemplateElementAxis.Storage and conformance SpatialTemplateElementAxis.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplateElementAxis.Storage and conformance SpatialTemplateElementAxis.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplateElementAxis and conformance SpatialTemplateElementAxis()
{
  result = lazy protocol witness table cache variable for type SpatialTemplateElementAxis and conformance SpatialTemplateElementAxis;
  if (!lazy protocol witness table cache variable for type SpatialTemplateElementAxis and conformance SpatialTemplateElementAxis)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplateElementAxis and conformance SpatialTemplateElementAxis);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplateElementPosition and conformance SpatialTemplateElementPosition()
{
  result = lazy protocol witness table cache variable for type SpatialTemplateElementPosition and conformance SpatialTemplateElementPosition;
  if (!lazy protocol witness table cache variable for type SpatialTemplateElementPosition and conformance SpatialTemplateElementPosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplateElementPosition and conformance SpatialTemplateElementPosition);
  }

  return result;
}

__n128 __swift_memcpy97_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _SpatialTemplateElementOutput(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 97))
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

uint64_t storeEnumTagSinglePayload for _SpatialTemplateElementOutput(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy128_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for SpatialTemplateSeatElement(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 112);
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

uint64_t storeEnumTagSinglePayload for SpatialTemplateSeatElement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 112) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy49_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t GroupSession.showNotice(_:)(uint64_t a1)
{
  v2 = v1;
  v52 = *v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DispatchQoS();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A12SessionEventVSgMd, &_s15GroupActivities0A12SessionEventVSgMR);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v45 - v12;
  v14 = type metadata accessor for GroupSessionEvent(0);
  v58 = *(v14 - 8);
  v15 = *(v58 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v50 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v57 = &v45 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v45 - v19;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Log.default);
  v51 = a1;
  outlined init with copy of GroupSessionEvent(a1, v20, type metadata accessor for GroupSessionEvent);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v47 = v23;
    v48 = v5;
    v49 = v4;
    v24 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v24 = 136315394;

    v25 = GroupSession.description.getter();
    v27 = v26;

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, aBlock);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    outlined init with copy of GroupSessionEvent(v20, v13, type metadata accessor for GroupSessionEvent);
    v29 = v58;
    (*(v58 + 56))(v13, 0, 1, v14);
    outlined init with copy of URL?(v13, v11, &_s15GroupActivities0A12SessionEventVSgMd, &_s15GroupActivities0A12SessionEventVSgMR);
    if ((*(v29 + 48))(v11, 1, v14) == 1)
    {
      v30 = 0xE300000000000000;
      v31 = 7104878;
    }

    else
    {
      v32 = v11;
      v33 = v57;
      outlined init with take of GroupSessionEvent(v32, v57, type metadata accessor for GroupSessionEvent);
      outlined init with copy of GroupSessionEvent(v33, v50, type metadata accessor for GroupSessionEvent);
      v31 = String.init<A>(reflecting:)();
      v30 = v34;
      outlined destroy of GroupSessionEvent(v33, type metadata accessor for GroupSessionEvent);
    }

    v5 = v48;
    outlined destroy of GroupSessionEvent?(v13);
    outlined destroy of GroupSessionEvent(v20, type metadata accessor for GroupSessionEvent);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v30, aBlock);

    *(v24 + 14) = v35;
    _os_log_impl(&dword_1AEE80000, v22, v47, "Application posted event on %s event: %s", v24, 0x16u);
    v36 = v46;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v36, -1, -1);
    MEMORY[0x1B2715BA0](v24, -1, -1);

    v4 = v49;
  }

  else
  {

    outlined destroy of GroupSessionEvent(v20, type metadata accessor for GroupSessionEvent);
  }

  v37 = v57;
  outlined init with copy of GroupSessionEvent(v51, v57, type metadata accessor for GroupSessionEvent);
  v38 = (*(v58 + 80) + 40) & ~*(v58 + 80);
  v39 = swift_allocObject();
  v40 = v52;
  v39[2] = *(v52 + 80);
  v39[3] = *(v40 + 88);
  v39[4] = v2;
  outlined init with take of GroupSessionEvent(v37, v39 + v38, type metadata accessor for GroupSessionEvent);
  aBlock[4] = partial apply for closure #1 in GroupSession.showNotice(_:);
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_9;
  v41 = _Block_copy(aBlock);

  v42 = v53;
  static DispatchQoS.unspecified.getter();
  v59 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v43 = v55;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v42, v43, v41);
  _Block_release(v41);
  (*(v5 + 8))(v43, v4);
  (*(v54 + 8))(v42, v56);
}

uint64_t GroupSessionEvent.init(originator:avCommand:rate:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v54 - v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {
    goto LABEL_14;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
LABEL_15:
    if (a3)
    {
      [a3 doubleValue];
      if (v27 <= 0.0)
      {
        if (one-time initialization token for pause != -1)
        {
          swift_once();
        }

        v28 = &static GroupSessionEvent.Action.pause;
      }

      else
      {
        if (one-time initialization token for play != -1)
        {
          swift_once();
        }

        v28 = &static GroupSessionEvent.Action.play;
      }

      v33 = *(v28 + 2);
      v34 = *(v28 + 3);
      v36 = *v28;
      v35 = *(v28 + 1);
      goto LABEL_28;
    }

    if (one-time initialization token for playback != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.playback);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1AEE80000, v30, v31, "Failed to get rate for setRate command", v32, 2u);
      MEMORY[0x1B2715BA0](v32, -1, -1);
    }

    else
    {
    }

    goto LABEL_30;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
  {
LABEL_14:

    goto LABEL_15;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {
    goto LABEL_15;
  }

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
  {

LABEL_32:
    if (one-time initialization token for seek != -1)
    {
      swift_once();
    }

    v35 = *(&static GroupSessionEvent.Action.seek + 1);
    v36 = static GroupSessionEvent.Action.seek;
    v33 = qword_1EB61AAE8;
    v34 = unk_1EB61AAF0;
    v43 = a3;
    a3 = a2;
    a2 = v43;
LABEL_28:

    v37 = type metadata accessor for URL();
    (*(*(v37 - 8) + 56))(v10, 1, 1, v37);
    outlined init with take of GroupSessionEvent(a1, a4, type metadata accessor for Participant);
    v38 = type metadata accessor for GroupSessionEvent(0);
    v39 = (a4 + *(v38 + 20));
    *v39 = v36;
    v39[1] = v35;
    v39[2] = v33;
    v39[3] = v34;
    outlined init with take of URL?(v10, a4 + *(v38 + 24));
    return (*(*(v38 - 8) + 56))(a4, 0, 1, v38);
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v42)
  {
    goto LABEL_32;
  }

  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static Logger.playback);
  v45 = a2;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v54 = v45;
    v55 = v49;
    *v48 = 136315138;
    type metadata accessor for AVPlaybackCoordinatorPlaybackObjectCommand(0);
    v50 = v45;
    v51 = String.init<A>(reflecting:)();
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v55);

    *(v48 + 4) = v53;
    _os_log_impl(&dword_1AEE80000, v46, v47, "Unknown avCommand %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x1B2715BA0](v49, -1, -1);
    MEMORY[0x1B2715BA0](v48, -1, -1);
  }

  else
  {
  }

LABEL_30:
  outlined destroy of GroupSessionEvent(a1, type metadata accessor for Participant);
  v41 = type metadata accessor for GroupSessionEvent(0);
  return (*(*(v41 - 8) + 56))(a4, 1, 1, v41);
}

uint64_t GroupSessionEvent.action.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for GroupSessionEvent(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t GroupSessionEvent.init(originator:action:url:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with take of GroupSessionEvent(a1, a4, type metadata accessor for Participant);
  v7 = type metadata accessor for GroupSessionEvent(0);
  v8 = (a4 + *(v7 + 20));
  v9 = a2[1];
  *v8 = *a2;
  v8[1] = v9;
  v10 = a4 + *(v7 + 24);

  return outlined init with take of URL?(a3, v10);
}

void one-time initialization function for play()
{
  static GroupSessionEvent.Action.play = 1uLL;
  qword_1EB61AAA8 = 0;
  unk_1EB61AAB0 = 0;
}

uint64_t GroupSessionEvent.Action.init(eventType:item:queueItemType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void one-time initialization function for pause()
{
  static GroupSessionEvent.Action.pause = 2uLL;
  qword_1EB61AAC8 = 0;
  unk_1EB61AAD0 = 0;
}

void one-time initialization function for seek()
{
  static GroupSessionEvent.Action.seek = 3uLL;
  qword_1EB61AAE8 = 0;
  unk_1EB61AAF0 = 0;
}

uint64_t static GroupSessionEvent.Action.skip(item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 4;
  a3[1] = a1;
  a3[2] = a2;
  a3[3] = 0;
}

uint64_t GroupSessionEvent.Action.item.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t static GroupSessionEvent.Action.QueueChange.Item.song(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  a3[2] = 1;
}

uint64_t GroupSessionEvent.Action.QueueChange.Item.init(name:tuItemType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t static GroupSessionEvent.Action.QueueChange.Item.container(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  a3[2] = 2;
}

uint64_t GroupSessionEvent.Action.QueueChange.Item.name.getter()
{
  v1 = *v0;

  return v1;
}

__n128 GroupSessionEvent.Action.QueueChange.init(action:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t static GroupSessionEvent.Action.QueueChange.setUpNext(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  *a3 = a2;
  a3[1] = v4;
  a3[2] = v3;
  a3[3] = v5;
}

uint64_t GroupSessionEvent.Action.QueueChange.action.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void one-time initialization function for updatedQueue()
{
  static GroupSessionEvent.Action.updatedQueue = 0xBuLL;
  qword_1EB61AB08 = 0;
  unk_1EB61AB10 = 0;
}

uint64_t static GroupSessionEvent.Action.updatedQueue(_:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

void one-time initialization function for start()
{
  static GroupSessionEvent.Action.start = 12;
  unk_1EB61AB20 = 0;
  qword_1EB61AB28 = 0;
  unk_1EB61AB30 = 0;
}

uint64_t static GroupSessionEvent.Action.react(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 7;
  a3[1] = a1;
  a3[2] = a2;
  a3[3] = 0;
}

uint64_t static GroupSessionEvent.Action.custom(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 99;
  a3[1] = a1;
  a3[2] = a2;
  a3[3] = 0;
}

void one-time initialization function for changeUpNext()
{
  static GroupSessionEvent.Action.changeUpNext = 8;
  unk_1EB61AB40 = 0;
  qword_1EB61AB48 = 0;
  unk_1EB61AB50 = 0;
}

uint64_t static GroupSessionEvent.Action.addQueueItem(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = 1;
  if (a1[2] != 1)
  {
    v4 = 2;
  }

  *a2 = 10;
  a2[1] = v3;
  a2[2] = v2;
  a2[3] = v4;
}

uint64_t one-time initialization function for updateQueue()
{
  if (one-time initialization token for updatedQueue != -1)
  {
    swift_once();
  }

  static GroupSessionEvent.Action.updateQueue = static GroupSessionEvent.Action.updatedQueue;
  unk_1EB61AB68 = *&qword_1EB61AB08;
}

uint64_t static GroupSessionEvent.Action.play.getter@<X0>(void *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a5@<X8>)
{
  if (*a1 != -1)
  {
    v8 = a2;
    v9 = a3;
    v10 = a5;
    swift_once();
    a2 = v8;
    a5 = v10;
    a3 = v9;
  }

  v6 = *a3;
  *a5 = *a2;
  a5[1] = v6;
}

void closure #1 in GroupSession.showNotice(_:)(uint64_t *a1, void *a2)
{
  v48 = a2;
  v3 = *a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A12SessionEventVSgMd, &_s15GroupActivities0A12SessionEventVSgMR);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43[-v7];
  v9 = type metadata accessor for GroupSessionEvent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v46 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v43[-v14];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v43[-v16];
  GroupSession.state.getter();
  v50 = 1;
  v18 = *(v3 + 80);
  v19 = *(v3 + 88);
  v20 = static GroupSession.State.== infix(_:_:)(aBlock, &v50);
  outlined consume of GroupSession<A>.State<A>(aBlock[0]);
  if (v20)
  {
    v21 = GroupSession.hasPendingActivityUpdate.getter();
    v22 = *(*a1 + 288);
    swift_beginAccess();
    v23 = *(a1 + v22);
    v24 = XPCClient.queue.getter();

    v9 = type metadata accessor for GroupSessionEvent;
    outlined init with copy of GroupSessionEvent(v48, v17, type metadata accessor for GroupSessionEvent);
    v10 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v8 = swift_allocObject();
    v8[2] = v18;
    v8[3] = v19;
    v8[4] = a1;
    outlined init with take of GroupSessionEvent(v17, v8 + v10, type metadata accessor for GroupSessionEvent);
    *(v8 + v10 + v11) = v21;
    v17 = swift_allocObject();
    v17[2] = partial apply for closure #1 in closure #1 in GroupSession.showNotice(_:);
    v17[3] = v8;
    aBlock[4] = _sIg_Ieg_TRTA_0;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_46;
    v15 = _Block_copy(aBlock);

    dispatch_sync(v24, v15);

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v45 = v17;
  v26 = v48;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Log.default);
  outlined init with copy of GroupSessionEvent(v26, v15, type metadata accessor for GroupSessionEvent);
  swift_retain_n();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = v10;
    v31 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    aBlock[0] = v48;
    *v31 = 136315394;
    outlined init with copy of GroupSessionEvent(v15, v8, type metadata accessor for GroupSessionEvent);
    (*(v10 + 56))(v8, 0, 1, v9);
    v32 = v47;
    outlined init with copy of URL?(v8, v47, &_s15GroupActivities0A12SessionEventVSgMd, &_s15GroupActivities0A12SessionEventVSgMR);
    if ((*(v30 + 48))(v32, 1, v9) == 1)
    {
      v33 = 0xE300000000000000;
      v34 = 7104878;
    }

    else
    {
      v44 = v29;
      v35 = v45;
      outlined init with take of GroupSessionEvent(v32, v45, type metadata accessor for GroupSessionEvent);
      outlined init with copy of GroupSessionEvent(v35, v46, type metadata accessor for GroupSessionEvent);
      v34 = String.init<A>(reflecting:)();
      v33 = v36;
      LOBYTE(v29) = v44;
      outlined destroy of GroupSessionEvent(v35, type metadata accessor for GroupSessionEvent);
    }

    outlined destroy of GroupSessionEvent?(v8);
    outlined destroy of GroupSessionEvent(v15, type metadata accessor for GroupSessionEvent);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v33, aBlock);

    *(v31 + 4) = v37;
    *(v31 + 12) = 2080;
    v38 = GroupSession.description.getter();
    v40 = v39;

    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, aBlock);

    *(v31 + 14) = v41;
    _os_log_impl(&dword_1AEE80000, v28, v29, "Dropping event %s because session isn't joined %s", v31, 0x16u);
    v42 = v48;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v42, -1, -1);
    MEMORY[0x1B2715BA0](v31, -1, -1);
  }

  else
  {

    outlined destroy of GroupSessionEvent(v15, type metadata accessor for GroupSessionEvent);
  }
}

void closure #1 in closure #1 in GroupSession.showNotice(_:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(*a1 + 288);
  swift_beginAccess();
  v5 = *(a1 + v4);
  XPCClient.withHost(body:errorHandler:)();
}

void closure #1 in closure #1 in closure #1 in GroupSession.showNotice(_:)(void **a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = *a1;
  v9 = type metadata accessor for GroupSessionEvent(0);
  type metadata accessor for Participant(0);
  outlined init with copy of URL?(a2 + *(v9 + 24), v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  objc_allocWithZone(type metadata accessor for ActivitySessionEvent());

  v10 = ActivitySessionEvent.init(type:item:originatorID:queueItemType:url:)();
  [v8 postEventWithEvent_];
}

uint64_t GroupSessionEvent.activitySessionEvent(hasPendingActivityUpdate:)(unsigned __int8 a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for GroupSessionEvent(0);
  type metadata accessor for Participant(0);
  outlined init with copy of URL?(v1 + *(v5 + 24), v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = objc_allocWithZone(type metadata accessor for ActivitySessionEvent());

  return ActivitySessionEvent.init(type:item:originatorID:queueItemType:url:)();
}

uint64_t GroupSession.Event.action.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 36));
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return outlined copy of GroupSession<A>.Event.Action<A>(v4, v5);
}

uint64_t GroupSession.Event.init(originator:action:url:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a2;
  v11 = a2[1];
  outlined init with take of GroupSessionEvent(a1, a6, type metadata accessor for Participant);
  v13 = type metadata accessor for GroupSession.Event(0, a4, a5, v12);
  v14 = (a6 + *(v13 + 36));
  *v14 = v10;
  v14[1] = v11;
  v15 = a6 + *(v13 + 40);

  return outlined init with take of URL?(a3, v15);
}

uint64_t GroupSession.postEvent(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for GroupSessionEvent(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GroupSession.Event(255, *(v3 + 80), *(v3 + 88), v7);
  v9 = type metadata accessor for Optional();
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  v13 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v33 - v14;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.default);
  v17 = *(v13 + 16);
  v17(v15, a1, v8);

  v18 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v37))
  {
    v19 = swift_slowAlloc();
    v35 = v6;
    v20 = v19;
    v34 = swift_slowAlloc();
    v40 = v34;
    *v20 = 136315394;

    v33 = v18;
    v21 = GroupSession.description.getter();
    v36 = a1;
    v23 = v22;

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v40);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v17(v12, v15, v8);
    (*(v13 + 56))(v12, 0, 1, v8);
    v25 = >> prefix<A>(_:)(v12, v8);
    v27 = v26;
    (*(v38 + 8))(v12, v39);
    (*(v13 + 8))(v15, v8);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v40);

    *(v20 + 14) = v28;
    v29 = v33;
    _os_log_impl(&dword_1AEE80000, v33, v37, "Application posted deprecated event on %s event: %s", v20, 0x16u);
    v30 = v34;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v30, -1, -1);
    v31 = v20;
    v6 = v35;
    MEMORY[0x1B2715BA0](v31, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v15, v8);
  }

  GroupSession.Event.groupSessionEvent.getter(v8, v6);
  GroupSession.showNotice(_:)(v6);
  return outlined destroy of GroupSessionEvent(v6, type metadata accessor for GroupSessionEvent);
}

double GroupSession.Event.groupSessionEvent.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  outlined init with copy of GroupSessionEvent(v2, a2, type metadata accessor for Participant);
  v11[2] = *(v2 + *(a1 + 36));
  GroupSession.Event.Action.groupSessionEventAction.getter(v11);
  v6 = *(a1 + 40);
  v7 = type metadata accessor for GroupSessionEvent(0);
  outlined init with copy of URL?(v3 + v6, a2 + *(v7 + 24), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8 = (a2 + *(v7 + 20));
  result = *v11;
  v10 = v11[1];
  *v8 = v11[0];
  v8[1] = v10;
  return result;
}

uint64_t GroupSession.Event.Action.groupSessionEventAction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  switch(v2)
  {
    case 0uLL:
      if (one-time initialization token for play != -1)
      {
        v8 = a1;
        swift_once();
        a1 = v8;
      }

      v4 = &static GroupSessionEvent.Action.play;
      goto LABEL_13;
    case 1uLL:
      if (one-time initialization token for pause != -1)
      {
        v7 = a1;
        swift_once();
        a1 = v7;
      }

      v4 = &static GroupSessionEvent.Action.pause;
      goto LABEL_13;
    case 2uLL:
      if (one-time initialization token for seek != -1)
      {
        v9 = a1;
        swift_once();
        a1 = v9;
      }

      v4 = &static GroupSessionEvent.Action.seek;
LABEL_13:
      v5 = v4[1];
      *a1 = *v4;
      *(a1 + 16) = v5;

      goto LABEL_15;
  }

  *a1 = 4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
LABEL_15:

  return outlined copy of GroupSession<A>.Event.Action<A>(v3, v2);
}

uint64_t GroupSession.Event.init(originator:localizedDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v14 - v10;

  v12 = type metadata accessor for URL();
  v14[0] = 0;
  v14[1] = 0;
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  return GroupSession.Event.init(originator:action:url:)(a1, v14, v11, a3, a4, a5);
}

uint64_t type metadata accessor for GroupSessionEvent(uint64_t a1)
{
  result = type metadata singleton initialization cache for GroupSessionEvent;
  if (!type metadata singleton initialization cache for GroupSessionEvent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void partial apply for closure #1 in GroupSession.showNotice(_:)()
{
  v1 = *(type metadata accessor for GroupSessionEvent(0) - 8);
  v2 = *(v0 + 32);
  v3 = (v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));

  closure #1 in GroupSession.showNotice(_:)(v2, v3);
}

double block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t outlined destroy of GroupSessionEvent?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A12SessionEventVSgMd, &_s15GroupActivities0A12SessionEventVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of GroupSessionEvent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of GroupSessionEvent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of GroupSessionEvent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined copy of GroupSession<A>.Event.Action<A>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

void type metadata completion function for GroupSessionEvent(uint64_t a1)
{
  type metadata accessor for Participant(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for URL?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for URL?);
    }
  }
}

uint64_t getEnumTagSinglePayload for GroupSessionEvent.Action(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for GroupSessionEvent.Action(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

void type metadata completion function for GroupSession.Event(uint64_t a1)
{
  type metadata accessor for Participant(319);
  if (v3 <= 0x3F)
  {
    type metadata accessor for GroupSession.Event.Action(319, *(a1 + 16), *(a1 + 24), v2);
    if (v4 <= 0x3F)
    {
      type metadata accessor for URL?(319);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata instantiation function for GroupSession.Event.Action(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_15GroupActivities0A7SessionC5EventV6ActionOyx__G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for GroupSession.Event.Action(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GroupSession.Event.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for GroupSession.Event.Action(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void partial apply for closure #1 in closure #1 in GroupSession.showNotice(_:)()
{
  v1 = *(type metadata accessor for GroupSessionEvent(0) - 8);
  v2 = *(v0 + 32);
  v3 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));
  v4 = *(v3 + *(v1 + 64));

  closure #1 in closure #1 in GroupSession.showNotice(_:)(v2, v3, v4);
}

double key path getter for SystemCoordinatorClientConnection.serverDisconnectedCallback : SystemCoordinatorClientConnection@<D0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = _sIg_Ieg_TRTA_0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v4, v5);
}

uint64_t key path setter for SystemCoordinatorClientConnection.serverDisconnectedCallback : SystemCoordinatorClientConnection(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v8, v9);
}

uint64_t SystemCoordinatorClientConnection.serverDisconnectedCallback.getter()
{
  v1 = (v0 + direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(*v1, v1[1]);
  return v2;
}

uint64_t SystemCoordinatorClientConnection.serverDisconnectedCallback.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v6, v7);
}

Swift::Void __swiftcall SystemCoordinatorClientConnection.handleServerDisconnect()()
{
  v1 = v0 + direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v2, v3);
  }
}

double key path getter for SystemCoordinatorClientConnection.stateCallback : SystemCoordinatorClientConnection@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + direct field offset for SystemCoordinatorClientConnection.stateCallback);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed SystemCoordinatorState) -> ();
  a2[1] = v6;

  return result;
}

uint64_t key path setter for SystemCoordinatorClientConnection.stateCallback : SystemCoordinatorClientConnection(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + direct field offset for SystemCoordinatorClientConnection.stateCallback);
  swift_beginAccess();
  *v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Error?) -> (@out ());
  v6[1] = v5;
}

uint64_t SystemCoordinatorClientConnection.stateCallback.getter()
{
  v1 = (v0 + direct field offset for SystemCoordinatorClientConnection.stateCallback);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SystemCoordinatorClientConnection.stateCallback.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for SystemCoordinatorClientConnection.stateCallback);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t SystemCoordinatorClientConnection.updateState(_:)(uint64_t a1)
{
  v3 = (v1 + direct field offset for SystemCoordinatorClientConnection.stateCallback);
  swift_beginAccess();
  v4 = *v3;

  v4(a1);
}

void @objc SystemCoordinatorClientConnection.updateState(_:)(char *a1, uint64_t a2, void *a3)
{
  v5 = &a1[direct field offset for SystemCoordinatorClientConnection.stateCallback];
  swift_beginAccess();
  v6 = *v5;
  v7 = a3;
  v8 = a1;

  v6(v7);
}

id SystemCoordinatorClientConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SystemCoordinatorClientConnection.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[direct field offset for SystemCoordinatorClientConnection.stateCallback];
  *v3 = InternalParticipant.participant.modify;
  v3[1] = 0;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id @objc SystemCoordinatorClientConnection.init()(char *a1)
{
  ObjectType = swift_getObjectType();
  v3 = &a1[direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &a1[direct field offset for SystemCoordinatorClientConnection.stateCallback];
  *v4 = InternalParticipant.participant.modify;
  *(v4 + 1) = 0;
  v6.receiver = a1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t SystemCoordinatorClientConnection.__ivar_destroyer()
{
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(v0 + direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback), *(v0 + direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback + 8));
}

id SystemCoordinatorClientConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SystemCoordinatorClientConnection(uint64_t a1)
{
  result = type metadata singleton initialization cache for SystemCoordinatorClientConnection;
  if (!type metadata singleton initialization cache for SystemCoordinatorClientConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t @objc SystemCoordinatorClientConnection.__ivar_destroyer(uint64_t a1)
{
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(a1 + direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback), *(a1 + direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback + 8));
}

uint64_t protocol witness for SystemCoordinatorClient.serverDisconnectedCallback.getter in conformance SystemCoordinatorClientConnection()
{
  v1 = (v0 + direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(*v1, v1[1]);
  return v2;
}

uint64_t protocol witness for SystemCoordinatorClient.serverDisconnectedCallback.setter in conformance SystemCoordinatorClientConnection(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for SystemCoordinatorClientConnection.serverDisconnectedCallback);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v6, v7);
}

uint64_t protocol witness for SystemCoordinatorClient.stateCallback.getter in conformance SystemCoordinatorClientConnection()
{
  v1 = (v0 + direct field offset for SystemCoordinatorClientConnection.stateCallback);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t protocol witness for SystemCoordinatorClient.stateCallback.setter in conformance SystemCoordinatorClientConnection(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for SystemCoordinatorClientConnection.stateCallback);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

__SecTask *NSProcessInfo.stableAppIdentifier.getter()
{
  v1 = type metadata accessor for Entitlement();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = SecTaskCreateFromSelf(0);
  if (!v5)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Log.default);
    v12 = v0;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&dword_1AEE80000, v13, v14, "Could not create task info for process: %@", v15, 0xCu);
      outlined destroy of NSObject?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B2715BA0](v16, -1, -1);
      MEMORY[0x1B2715BA0](v15, -1, -1);
    }

    return 0;
  }

  v6 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69974B0], v1);
  v7 = _sSo10SecTaskRefa15GroupActivitiesE5value_14forEntitlementxSgxm_14CopresenceCore0H0OtlFSS_Tt0g5(v4);
  v9 = v8;
  (*(v2 + 8))(v4, v1);
  if (v9)
  {

    return v7;
  }

  v18 = [objc_opt_self() mainBundle];
  v19 = MEMORY[0x1B2714130](0xD00000000000001BLL, 0x80000001AF01C900);
  v20 = [v18 objectForInfoDictionaryKey_];

  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {

    v21 = 0u;
    v22 = 0u;
  }

  v23[0] = v21;
  v23[1] = v22;
  if (!*(&v22 + 1))
  {
    outlined destroy of NSObject?(v23, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v24;
  }

  else
  {
    return 0;
  }
}

__SecTask *_sSo10SecTaskRefa15GroupActivitiesE5value_14forEntitlementxSgxm_14CopresenceCore0H0OtlFSS_Tt0g5(uint64_t a1)
{
  v2 = v1;
  error[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore11EntitlementOSgMd, &_s14CopresenceCore11EntitlementOSgMR);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v44 - v8;
  v10 = type metadata accessor for Entitlement();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v48 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - v17;
  error[0] = 0;
  v19 = Entitlement.rawValue.getter();
  v20 = MEMORY[0x1B2714130](v19);

  v21 = SecTaskCopyValueForEntitlement(v2, v20, error);

  v51 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlSgMd, &_syXlSgMR);
  if (swift_dynamicCast())
  {
    return v50;
  }

  v46 = v16;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Log.default);
  v47 = *(v11 + 16);
  v47(v18, a1, v10);
  v24 = v2;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v45 = v26;
    v27 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v51 = v44;
    *v27 = 136315650;
    v50 = v24;
    type metadata accessor for SecTaskRef(0);
    v28 = v24;
    v29 = String.init<A>(reflecting:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v51);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    v32 = v47;
    v47(v9, v18, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    outlined init with copy of Entitlement?(v9, v7);
    if ((*(v11 + 48))(v7, 1, v10) == 1)
    {
      v33 = 0xE300000000000000;
      v34 = 7104878;
    }

    else
    {
      v35 = v46;
      (*(v11 + 32))(v46, v7, v10);
      v32(v48, v35, v10);
      v34 = String.init<A>(reflecting:)();
      v33 = v36;
      (*(v11 + 8))(v35, v10);
    }

    outlined destroy of NSObject?(v9, &_s14CopresenceCore11EntitlementOSgMd, &_s14CopresenceCore11EntitlementOSgMR);
    (*(v11 + 8))(v18, v10);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v33, &v51);

    *(v27 + 14) = v37;
    *(v27 + 22) = 2080;
    swift_beginAccess();
    if (error[0])
    {
      v49 = error[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9UnmanagedVySo10CFErrorRefaGMd, &_ss9UnmanagedVySo10CFErrorRefaGMR);
      v38 = String.init<A>(reflecting:)();
      v40 = v39;
      v41 = v45;
    }

    else
    {
      v40 = 0xE300000000000000;
      v41 = v45;
      v38 = 7104878;
    }

    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v51);

    *(v27 + 24) = v42;
    _os_log_impl(&dword_1AEE80000, v25, v41, "Task %s couldn't find entitlement %s error %s", v27, 0x20u);
    v43 = v44;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v43, -1, -1);
    MEMORY[0x1B2715BA0](v27, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v18, v10);
  }

  return 0;
}

uint64_t _sSo10SecTaskRefa15GroupActivitiesE5value_14forEntitlementxSgxm_14CopresenceCore0H0OtlFSb_Tt0g5(uint64_t a1)
{
  v2 = v1;
  error[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore11EntitlementOSgMd, &_s14CopresenceCore11EntitlementOSgMR);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v44 - v8;
  v10 = type metadata accessor for Entitlement();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v48 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - v17;
  error[0] = 0;
  v19 = Entitlement.rawValue.getter();
  v20 = MEMORY[0x1B2714130](v19);

  v21 = SecTaskCopyValueForEntitlement(v2, v20, error);

  v50 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlSgMd, &_syXlSgMR);
  if (swift_dynamicCast())
  {
    return v51;
  }

  v46 = v16;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Log.default);
  v47 = *(v11 + 16);
  v47(v18, a1, v10);
  v24 = v2;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v45 = v26;
    v27 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v51 = v44;
    *v27 = 136315650;
    v50 = v24;
    type metadata accessor for SecTaskRef(0);
    v28 = v24;
    v29 = String.init<A>(reflecting:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v51);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    v32 = v47;
    v47(v9, v18, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    outlined init with copy of Entitlement?(v9, v7);
    if ((*(v11 + 48))(v7, 1, v10) == 1)
    {
      v33 = 0xE300000000000000;
      v34 = 7104878;
    }

    else
    {
      v35 = v46;
      (*(v11 + 32))(v46, v7, v10);
      v32(v48, v35, v10);
      v34 = String.init<A>(reflecting:)();
      v33 = v36;
      (*(v11 + 8))(v35, v10);
    }

    outlined destroy of NSObject?(v9, &_s14CopresenceCore11EntitlementOSgMd, &_s14CopresenceCore11EntitlementOSgMR);
    (*(v11 + 8))(v18, v10);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v33, &v51);

    *(v27 + 14) = v37;
    *(v27 + 22) = 2080;
    swift_beginAccess();
    if (error[0])
    {
      v49 = error[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9UnmanagedVySo10CFErrorRefaGMd, &_ss9UnmanagedVySo10CFErrorRefaGMR);
      v38 = String.init<A>(reflecting:)();
      v40 = v39;
      v41 = v45;
    }

    else
    {
      v40 = 0xE300000000000000;
      v41 = v45;
      v38 = 7104878;
    }

    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v51);

    *(v27 + 24) = v42;
    _os_log_impl(&dword_1AEE80000, v25, v41, "Task %s couldn't find entitlement %s error %s", v27, 0x20u);
    v43 = v44;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v43, -1, -1);
    MEMORY[0x1B2715BA0](v27, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v18, v10);
  }

  return 2;
}

uint64_t static Participants.only(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15GroupActivities11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities11ParticipantVGMR);
  v4 = *(type metadata accessor for Participant(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AF00CA60;
  outlined init with copy of Participant(a1, v6 + v5);
  v7 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC15GroupActivities11ParticipantV_Tt0g5Tf4g_n(v6);
  swift_setDeallocating();
  outlined destroy of Participant(v6 + v5);
  result = swift_deallocClassInstance();
  *a2 = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for Participants(uint64_t *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Participants(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t GroupSessionMessenger.Messages.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v30 = a2;
  v31 = a5;
  v28 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMd, &_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMR);
  v8 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Publishers.PrefetchStrategy();
  v25 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GroupSessionMessenger.MessageStream(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v15 = type metadata accessor for Publishers.Buffer();
  v27 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  v33 = *v28;
  (*(v12 + 104))(v14, *MEMORY[0x1E695BD28], v11);
  v18 = v8;
  v19 = *(v8 + 104);
  v20 = v29;
  v19(v10, *MEMORY[0x1E695BD40], v29);
  Publisher.buffer(size:prefetch:whenFull:)();
  (*(v18 + 8))(v10, v20);
  (*(v12 + 8))(v14, v25);

  swift_getWitnessTable();
  v21 = Publisher.eraseToAnyPublisher()();
  (*(v27 + 8))(v17, v15);
  v32 = v21;
  type metadata accessor for GroupSessionMessenger.MessageContext(255);
  swift_getTupleTypeMetadata2();
  v22 = type metadata accessor for AnyPublisher();
  swift_getWitnessTable();
  result = _PublisherElements.init(_:)(&v32, v22, &v33);
  *v31 = v33;
  return result;
}

uint64_t GroupSessionMessenger.Messages.makeAsyncIterator()@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for GroupSessionMessenger.MessageContext(255);
  swift_getTupleTypeMetadata2();
  v3 = type metadata accessor for AnyPublisher();
  WitnessTable = swift_getWitnessTable();
  v6 = type metadata accessor for _PublisherElements(0, v3, WitnessTable, v5);
  result = _PublisherElements.makeAsyncIterator()(v6, v7, v8, v9);
  *a2 = result;
  return result;
}

uint64_t GroupSessionMessenger.Messages.Iterator.baseIterator.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t GroupSessionMessenger.Messages.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  type metadata accessor for GroupSessionMessenger.MessageContext(255);
  swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for AnyPublisher();
  WitnessTable = swift_getWitnessTable();
  v9 = type metadata accessor for _PublisherElements.Iterator(0, v6, WitnessTable, v8);
  *v5 = v3;
  v5[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return _PublisherElements.Iterator.next()(a1, v9);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance GroupSessionMessenger.Messages<A>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return GroupSessionMessenger.Messages.Iterator.next()(a1, a2);
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance GroupSessionMessenger.Messages<A>@<X0>(uint64_t *a2@<X8>)
{
  GroupSessionMessenger.Messages.makeAsyncIterator()(a2);
}

uint64_t GroupSessionMessenger.send<A>(_:to:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  *(v6 + 16) = v6;
  *(v6 + 24) = GroupSessionMessenger.send<A>(_:to:);
  v10 = swift_continuation_init();
  closure #1 in GroupSessionMessenger.send<A>(_:to:)(v10, v5, a1, v9, a3);

  return MEMORY[0x1EEE6DEC8](v6 + 16);
}

uint64_t closure #1 in GroupSessionMessenger.send<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a4;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  GroupSessionMessenger.send<A>(_:to:completion:)(a3, &v10, partial apply for closure #1 in closure #1 in GroupSessionMessenger.send<A>(_:to:), v8, a5);
}

uint64_t GroupSessionMessenger.send(_:to:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v12 = v3;
  v6 = v3 + 16;
  v7 = *a3;
  *(v3 + 16) = v3;
  *(v3 + 24) = GroupSessionMessenger.send(_:to:);
  v8 = swift_continuation_init();
  v11 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  GroupSessionMessenger.send(_:to:completion:)(a1, a2, &v11, partial apply for closure #1 in closure #1 in GroupSessionMessenger.send(_:to:), v9);

  return MEMORY[0x1EEE6DEC8](v6);
}

uint64_t GroupSessionMessenger.send(_:to:)(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t closure #1 in closure #1 in GroupSessionMessenger.send<A>(_:to:)(void *a1, uint64_t a2)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v4 = swift_allocError();
    *v5 = a1;
    v6 = a1;

    return MEMORY[0x1EEE6DEE8](a2, v4);
  }

  else
  {

    return MEMORY[0x1EEE6DEE0](a2);
  }
}

uint64_t GroupSessionMessenger.messages(of:)@<X0>(uint64_t *a1@<X8>)
{
  v19 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMd, &_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - v3;
  v5 = type metadata accessor for Publishers.PrefetchStrategy();
  v16 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6BufferVy_15GroupActivities0D16SessionMessengerC13MessageStreamVy_10Foundation4DataVGGMd, &_s7Combine10PublishersO6BufferVy_15GroupActivities0D16SessionMessengerC13MessageStreamVy_10Foundation4DataVGGMR);
  v10 = *(v9 - 8);
  v17 = v9;
  v18 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  GroupSessionMessenger.receive(_:)(&v21);
  v20 = v21;
  (*(v6 + 104))(v8, *MEMORY[0x1E695BD28], v5);
  (*(v2 + 104))(v4, *MEMORY[0x1E695BD40], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC13MessageStreamVy_10Foundation4DataVGMd, &_s15GroupActivities0A16SessionMessengerC13MessageStreamVy_10Foundation4DataVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type GroupSessionMessenger.MessageStream<Data> and conformance GroupSessionMessenger.MessageStream<A>, &_s15GroupActivities0A16SessionMessengerC13MessageStreamVy_10Foundation4DataVGMd, &_s15GroupActivities0A16SessionMessengerC13MessageStreamVy_10Foundation4DataVGMR, &protocol conformance descriptor for GroupSessionMessenger.MessageStream<A>);
  Publisher.buffer(size:prefetch:whenFull:)();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v16);

  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Buffer<GroupSessionMessenger.MessageStream<Data>> and conformance Publishers.Buffer<A>, &_s7Combine10PublishersO6BufferVy_15GroupActivities0D16SessionMessengerC13MessageStreamVy_10Foundation4DataVGGMd, &_s7Combine10PublishersO6BufferVy_15GroupActivities0D16SessionMessengerC13MessageStreamVy_10Foundation4DataVGGMR, MEMORY[0x1E695BDD8]);
  v13 = v17;
  v14 = Publisher.eraseToAnyPublisher()();
  result = (*(v18 + 8))(v12, v13);
  *v19 = v14;
  return result;
}

uint64_t type metadata instantiation function for GroupSessionMessenger.Messages(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for GroupSessionMessenger.Messages.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

Swift::Int TopicManager.Errors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1);
  return Hasher._finalize()();
}

uint64_t TopicManager.ServiceName.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x627553627550;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000010;
}

uint64_t TopicManager.conversationClientsByGroupUUID.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TopicManager.ServiceName(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000010;
  v3 = *a1;
  v4 = 0x80000001AF01A370;
  if (v3 == 1)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001AF01A370;
  }

  else
  {
    v6 = 0x80000001AF01A390;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x627553627550;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000013;
  }

  else
  {
    v4 = 0x80000001AF01A390;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x627553627550;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TopicManager.ServiceName()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TopicManager.ServiceName(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TopicManager.ServiceName(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TopicManager.ServiceName@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TopicManager.ServiceName.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TopicManager.ServiceName(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x80000001AF01A370;
  v5 = 0xD000000000000013;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001AF01A390;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x627553627550;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t TopicManager.provider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15GroupActivities12TopicManager_provider;
  swift_beginAccess();
  return outlined init with copy of Transferable(v1 + v3, a1);
}

uint64_t TopicManager.provider.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities12TopicManager_provider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v3));
  outlined init with take of Transferable(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t TopicManager.__allocating_init(provider:featureFlags:)(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  ObjectType = swift_getObjectType();
  v9 = specialized TopicManager.__allocating_init(provider:featureFlags:)(v7, a2, v2, v5, ObjectType, v6);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t TopicManager.init(provider:featureFlags:)(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  ObjectType = swift_getObjectType();
  v12 = specialized TopicManager.init(provider:featureFlags:)(v9, a2, v2, v5, ObjectType, v6);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v12;
}

uint64_t closure #1 in closure #1 in TopicManager.init(provider:featureFlags:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  specialized _NativeDictionary.filter(_:)(v3, partial apply for closure #1 in closure #1 in closure #1 in TopicManager.init(provider:featureFlags:));

  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

BOOL closure #1 in closure #1 in closure #1 in TopicManager.init(provider:featureFlags:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(a3 + 56) + 8 * v5);
  v8 = [v7 state];
  v9 = v8 == 3;
  if (v8 == 3)
  {
    (*(*a2 + 184))(v7);
  }

  return v9;
}

void *TopicManager.conversationClient(groupUUID:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15GroupActivities12TopicManager_lock);
  Lock.assertOwned()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(v14[0] + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v14[0] + 56) + 8 * v4);
  }

  else
  {
    type metadata accessor for TopicManager.ConversationClient();
    v6 = swift_allocObject();
    v6[2] = MEMORY[0x1E69E7CC8];
    v7 = objc_opt_self();

    v6[3] = [v7 weakObjectsHashTable];
    v6[4] = v3;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  v8 = static Published.subscript.modify();
  v10 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v10;
  *v10 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, a1, isUniquelyReferenced_nonNull_native);
  *v10 = v13;
  v8(v14, 0);

  return v6;
}

void *TopicManager.ConversationClient.__allocating_init(lock:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[2] = MEMORY[0x1E69E7CC8];
  v2[3] = [objc_opt_self() weakObjectsHashTable];
  v2[4] = a1;
  return v2;
}

uint64_t TopicManager.firstConversation(for:with:)(uint64_t a1, int a2)
{
  v3 = v2;
  v21 = a2;
  v20 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGALGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGALGMR);
  v25 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v9 = &v20 - v8;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGANGGMd, &_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGANGGMR);
  v24 = *(v22 - 8);
  v10 = MEMORY[0x1EEE9AC00](v22);
  v12 = &v20 - v11;
  (*(*v2 + 192))(v27, v10);
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  v26 = dispatch thunk of ActivitySessionContainerProvider.onActivitySessionsChanged.getter();
  (*(v5 + 16))(v7, v20, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = v13 + v6;
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  (*(v5 + 32))(v15 + v13, v7, v4);
  *(v15 + v14) = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR, MEMORY[0x1E695BED8]);
  Publisher.compactMap<A>(_:)();

  __swift_destroy_boxed_opaque_existential_0(v27);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never>, TUConversationActivitySessionContainer> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGALGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGALGMR, MEMORY[0x1E695BC80]);
  v16 = v23;
  Publisher.first()();
  (*(v25 + 8))(v9, v16);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.First<Publishers.CompactMap<AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never>, TUConversationActivitySessionContainer>> and conformance Publishers.First<A>, &_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGANGGMd, &_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGANGGMR, MEMORY[0x1E695BDB8]);
  v17 = v22;
  v18 = Publisher.eraseToAnyPublisher()();
  (*(v24 + 8))(v12, v17);
  return v18;
}

void closure #1 in closure #1 in TopicManager.firstConversation(for:with:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  LODWORD(v105) = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v91 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v91 - v17;
  if (!*(a1 + 16) || (v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v20 & 1) == 0))
  {
    if (one-time initialization token for topicManager != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Log.topicManager);
    (*(v10 + 16))(v18, a2, v9);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v104 = v4;
      v26 = v25;
      v27 = swift_slowAlloc();
      v107[0] = v27;
      *v26 = 136315138;
      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v9;
      v30 = a4;
      v32 = v31;
      (*(v10 + 8))(v18, v29);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v32, v107);
      a4 = v30;

      *(v26 + 4) = v33;
      _os_log_impl(&dword_1AEE80000, v23, v24, "No conversation exists for group=%s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1B2715BA0](v27, -1, -1);
      MEMORY[0x1B2715BA0](v26, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v18, v9);
    }

    goto LABEL_17;
  }

  v103 = v10;
  v21 = *(*(a1 + 56) + 8 * v19);
  if ([v21 state] != 3 || !objc_msgSend(v21, sel_localParticipantIdentifier))
  {
    if (one-time initialization token for topicManager == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_69;
  }

  if (v105 && v105 == 1)
  {

    goto LABEL_18;
  }

  v96 = 0x80000001AF01A370;
  v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v49)
  {
    goto LABEL_18;
  }

  v50 = [v21 virtualParticipants];
  v51 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationVirtualParticipant, 0x1E69D8BC0);
  lazy protocol witness table accessor for type TUConversationVirtualParticipant and conformance NSObject();
  v101 = v51;
  v52 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v53 = v52;
  v104 = v4;
  v92 = v52;
  v93 = a4;
  if ((v52 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v5 = v107[0];
    v54 = v107[1];
    v55 = v107[2];
    a4 = v107[3];
    v56 = v107[4];
  }

  else
  {
    v57 = -1 << *(v52 + 32);
    v54 = v52 + 56;
    v58 = ~v57;
    v59 = -v57;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    else
    {
      v60 = -1;
    }

    v56 = v60 & *(v53 + 56);

    v55 = v58;
    a4 = 0;
    v5 = v61;
  }

  v13 = v101;
  v91 = v55;
  v62 = (v55 + 64) >> 6;
  v94 = 0x80000001AF01A390;
  v95 = v62;
  v97 = v5;
  v98 = v54;
  v99 = a4;
  if (v5 < 0)
  {
    goto LABEL_33;
  }

LABEL_27:
  v63 = a4;
  v64 = v56;
  if (!v56)
  {
    while (1)
    {
      a4 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      if (a4 >= v62)
      {
        goto LABEL_50;
      }

      v64 = *(v54 + 8 * a4);
      ++v63;
      if (v64)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_69:
    swift_once();
LABEL_14:
    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Log.topicManager);
    v35 = v103;
    (*(v103 + 16))(v13, a2, v9);
    v36 = v21;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v104 = v5;
      v40 = v39;
      v102 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v107[0] = v105;
      *v40 = 136315394;
      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      LODWORD(v101) = v38;
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = a4;
      v44 = v43;
      (*(v35 + 8))(v13, v9);
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v44, v107);
      a4 = v42;

      *(v40 + 4) = v45;
      *(v40 + 12) = 2112;
      *(v40 + 14) = v36;
      v46 = v102;
      *v102 = v36;
      v47 = v36;
      _os_log_impl(&dword_1AEE80000, v37, v101, "Conversation for group=%s is not yet established: %@", v40, 0x16u);
      outlined destroy of NSObject?(v46, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B2715BA0](v46, -1, -1);
      v48 = v105;
      __swift_destroy_boxed_opaque_existential_0(v105);
      MEMORY[0x1B2715BA0](v48, -1, -1);
      MEMORY[0x1B2715BA0](v40, -1, -1);
    }

    else
    {

      (*(v35 + 8))(v13, v9);
    }

LABEL_17:
    v21 = 0;
    goto LABEL_18;
  }

LABEL_31:
  v100 = v56;
  v102 = ((v64 - 1) & v64);
  v65 = *(*(v5 + 48) + ((a4 << 9) | (8 * __clz(__rbit64(v64)))));
  if (v65)
  {
    while (1)
    {
      v67 = [v65 pluginName];
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;

      if (v105)
      {
        v71 = v105 == 1 ? 0xD000000000000013 : 0xD000000000000010;
        v72 = v105 == 1 ? v96 : v94;
      }

      else
      {
        v72 = 0xE600000000000000;
        v71 = 0x627553627550;
      }

      if (v68 == v71 && v70 == v72)
      {
        break;
      }

      v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v74)
      {
        goto LABEL_63;
      }

      v13 = v101;
      v56 = v102;
      v5 = v97;
      v54 = v98;
      v62 = v95;
      v99 = a4;
      if ((v97 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }

LABEL_33:
      v100 = v56;
      v66 = __CocoaSet.Iterator.next()();
      if (v66)
      {
        v106 = v66;
        swift_dynamicCast();
        v65 = v108;
        v102 = v100;
        if (v108)
        {
          continue;
        }
      }

      goto LABEL_50;
    }

LABEL_63:
    outlined consume of [UUID : Conversation].Iterator._Variant(v97);

    goto LABEL_64;
  }

LABEL_50:
  outlined consume of [UUID : Conversation].Iterator._Variant(v5);

  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  __swift_project_value_buffer(v75, static Log.topicManager);
  v76 = v103;
  (*(v103 + 16))(v16, a2, v9);
  v77 = v21;
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v78, v79))
  {

    (*(v76 + 8))(v16, v9);
    v21 = 0;
LABEL_64:
    a4 = v93;
    goto LABEL_18;
  }

  v80 = swift_slowAlloc();
  v101 = swift_slowAlloc();
  v102 = swift_slowAlloc();
  v108 = v102;
  *v80 = 136315650;
  lazy protocol witness table accessor for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v81 = dispatch thunk of CustomStringConvertible.description.getter();
  v83 = v82;
  (*(v76 + 8))(v16, v9);
  v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, &v108);

  *(v80 + 4) = v84;
  *(v80 + 12) = 2080;
  if (v105)
  {
    if (v105 == 1)
    {
      v85 = 0xD000000000000013;
    }

    else
    {
      v85 = 0xD000000000000010;
    }

    if (v105 == 1)
    {
      v86 = v96;
    }

    else
    {
      v86 = v94;
    }
  }

  else
  {
    v86 = 0xE600000000000000;
    v85 = 0x627553627550;
  }

  v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, &v108);

  *(v80 + 14) = v87;
  *(v80 + 22) = 2112;
  *(v80 + 24) = v77;
  v88 = v101;
  *v101 = v77;
  v89 = v77;
  _os_log_impl(&dword_1AEE80000, v78, v79, "Conversation for group=%s is not yet ready to establish a (%s) plugin connection: %@", v80, 0x20u);
  outlined destroy of NSObject?(v88, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  MEMORY[0x1B2715BA0](v88, -1, -1);
  v90 = v102;
  swift_arrayDestroy();
  MEMORY[0x1B2715BA0](v90, -1, -1);
  MEMORY[0x1B2715BA0](v80, -1, -1);

  v21 = 0;
  a4 = v93;
LABEL_18:
  *a4 = v21;
}

uint64_t closure #1 in TopicManager.createAttachmentLedgerTopic(groupUUID:name:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char **a4@<X8>)
{
  v20 = a2;
  v24 = a4;
  v22 = type metadata accessor for UUID();
  v7 = *(v22 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = TopicManager.conversationClient(groupUUID:)(a1);
  v10 = swift_allocObject();
  v21 = v10;
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a2;
  v11[4] = a3;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = v22;
  (*(v7 + 16))(v9, a1, v22);
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v16 = v20;
  *(v15 + 2) = v12;
  *(v15 + 3) = v16;
  *(v15 + 4) = a3;
  (*(v7 + 32))(&v15[v14], v9, v13);
  type metadata accessor for AttachmentLedgerTopic(0);
  swift_allocObject();
  swift_bridgeObjectRetain_n();

  v17 = AttachmentLedgerTopic.init(name:retainRefOnStart:pluginGenerator:)(v16, a3, partial apply for closure #1 in closure #1 in TopicManager.createAttachmentLedgerTopic(groupUUID:name:), v11, partial apply for closure #2 in closure #1 in TopicManager.createAttachmentLedgerTopic(groupUUID:name:), v15);

  *v24 = v17;
  return result;
}

uint64_t closure #1 in closure #1 in TopicManager.createAttachmentLedgerTopic(groupUUID:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = (*(*Strong + 216))(a2, a3);

  return v6;
}

uint64_t closure #2 in closure #1 in TopicManager.createAttachmentLedgerTopic(groupUUID:name:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v38 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pG15GroupActivities0hijK8Provider_pGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pG15GroupActivities0hijK8Provider_pGMR);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if ([*(Strong + OBJC_IVAR____TtC15GroupActivities12TopicManager_featureFlags) sharePlayAttachmentLedgerEnabled])
    {
      v39 = (*(*v17 + 304))(a5, a3, v38, a1, *(a1 + 40));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMd, &_s7Combine12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<PluginAttachmentLedgerTopic, Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMd, &_s7Combine12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMR, MEMORY[0x1E695BED8]);
      Publisher.map<A>(_:)();

      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<PluginAttachmentLedgerTopic, Error>, PluginAttachmentLedgerTopicProvider> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pG15GroupActivities0hijK8Provider_pGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pG15GroupActivities0hijK8Provider_pGMR, MEMORY[0x1E695BD60]);
      v18 = Publisher.eraseToAnyPublisher()();

      (*(v13 + 8))(v15, v12);
    }

    else
    {
      if (one-time initialization token for topicManager != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Log.topicManager);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1AEE80000, v20, v21, "FeatureFlag is not enabled so we can't bootstrap a PluginAttachmentLedgerTopic", v22, 2u);
        MEMORY[0x1B2715BA0](v22, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_ps5Error_pGMd, &_s7Combine18PassthroughSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_ps5Error_pGMR);
      swift_allocObject();
      v23 = PassthroughSubject.init()();
      lazy protocol witness table accessor for type TopicManager.Errors and conformance TopicManager.Errors();
      v24 = swift_allocError();
      *v25 = 0;
      v39 = v24;
      PassthroughSubject.send(completion:)();

      v39 = v23;
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<PluginAttachmentLedgerTopicProvider, Error> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_ps5Error_pGMd, &_s7Combine18PassthroughSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_ps5Error_pGMR, MEMORY[0x1E695BF88]);
      v18 = Publisher.eraseToAnyPublisher()();
    }

    return v18;
  }

  else
  {
    v27 = v9;
    if (one-time initialization token for topicManager != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Log.topicManager);
    (*(v9 + 16))(v11, a5, v8);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = v32;
      *v31 = 136315394;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, v38, &v39);
      *(v31 + 12) = 2080;
      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v27 + 8))(v11, v8);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v39);

      *(v31 + 14) = v36;
      _os_log_impl(&dword_1AEE80000, v29, v30, "TopicManager is no longer available, topic=%s, group=%s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v32, -1, -1);
      MEMORY[0x1B2715BA0](v31, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

double closure #1 in closure #2 in closure #1 in TopicManager.createAttachmentLedgerTopic(groupUUID:name:)@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[3] = type metadata accessor for PluginAttachmentLedgerTopic();
  a2[4] = lazy protocol witness table accessor for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic(&lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic, MEMORY[0x1E6997690], &protocol conformance descriptor for PluginAttachmentLedgerTopic);
  *a2 = v3;

  return result;
}

void *TopicManager.createAttachmentLedgerTopic(groupUUID:name:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), const char *a5, uint64_t (*a6)(void), uint64_t a7, ...)
{
  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.topicManager);

  v13 = Logger.logObject.getter();
  v14 = a4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = a5;
    v17 = swift_slowAlloc();
    v20 = v17;
    *v15 = 136315138;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v20);
    _os_log_impl(&dword_1AEE80000, v13, v14, v16, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1B2715BA0](v17, -1, -1);
    MEMORY[0x1B2715BA0](v15, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v18);
  a6(0);
  Lock.withLock<A>(_:)();
  return v20;
}

uint64_t closure #1 in TopicManager.createTopic(groupUUID:name:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v17 = a2;
  v18 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = TopicManager.conversationClient(groupUUID:)(a1);
  v10 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = v10;
  v13 = v17;
  *(v12 + 3) = v17;
  *(v12 + 4) = a3;
  (*(v7 + 32))(&v12[v11], &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  type metadata accessor for Topic(0);
  v14 = swift_allocObject();
  swift_bridgeObjectRetain_n();
  v15 = specialized Topic.init(name:delegate:pubSubTopicGenerator:)(v13, a3, v9, partial apply for closure #1 in closure #1 in TopicManager.createTopic(groupUUID:name:), v12, v14);

  *v18 = v15;
  return result;
}

uint64_t closure #1 in closure #1 in TopicManager.createTopic(groupUUID:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a4;
  v44 = a1;
  v46 = type metadata accessor for UUID();
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v46);
  v10 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AA12AnyPublisherVy14CopresenceCore11PubSubTopicCs5Error_pGAC14SetFailureTypeVy_AGyAH0iJ6ClientC0K8CategoryOs5NeverOGsAK_pGGMd, &_s7Combine10PublishersO7FlatMapVy_AA12AnyPublisherVy14CopresenceCore11PubSubTopicCs5Error_pGAC14SetFailureTypeVy_AGyAH0iJ6ClientC0K8CategoryOs5NeverOGsAK_pGGMR);
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v43 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    (*(*Strong + 192))(v53);
    __swift_project_boxed_opaque_existential_1(v53, v53[3]);
    v17 = v48;
    v45 = dispatch thunk of ActivitySessionContainerProvider.topicCategory(groupUUID:name:)();
    v52 = v45;
    v18 = v46;
    (*(v7 + 16))(v12, a5, v46);
    outlined init with copy of Topic.BootstrapPubSubTopicInfo(v44, v51);
    v19 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    v43 = v16;
    *(v21 + 16) = v16;
    (*(v7 + 32))(v21 + v19, v12, v18);
    v22 = (v21 + v20);
    *v22 = a3;
    v22[1] = v17;
    v23 = (v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8));
    v24 = v51[3];
    v23[2] = v51[2];
    v23[3] = v24;
    v25 = v51[1];
    *v23 = v51[0];
    v23[1] = v25;

    static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore12PubSubClientC13TopicCategoryOs5NeverOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore12PubSubClientC13TopicCategoryOs5NeverOGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore11PubSubTopicCs5Error_pGMd, &_s7Combine12AnyPublisherVy14CopresenceCore11PubSubTopicCs5Error_pGMR);
    v26 = MEMORY[0x1E695BED8];
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<PubSubClient.TopicCategory, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore12PubSubClientC13TopicCategoryOs5NeverOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore12PubSubClientC13TopicCategoryOs5NeverOGMR, MEMORY[0x1E695BED8]);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<PubSubTopic, Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore11PubSubTopicCs5Error_pGMd, &_s7Combine12AnyPublisherVy14CopresenceCore11PubSubTopicCs5Error_pGMR, v26);
    v27 = v47;
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_destroy_boxed_opaque_existential_0(v53);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.FlatMap<AnyPublisher<PubSubTopic, Error>, Publishers.SetFailureType<AnyPublisher<PubSubClient.TopicCategory, Never>, Error>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AA12AnyPublisherVy14CopresenceCore11PubSubTopicCs5Error_pGAC14SetFailureTypeVy_AGyAH0iJ6ClientC0K8CategoryOs5NeverOGsAK_pGGMd, &_s7Combine10PublishersO7FlatMapVy_AA12AnyPublisherVy14CopresenceCore11PubSubTopicCs5Error_pGAC14SetFailureTypeVy_AGyAH0iJ6ClientC0K8CategoryOs5NeverOGsAK_pGGMR, MEMORY[0x1E695BE40]);
    v28 = v50;
    v29 = Publisher.eraseToAnyPublisher()();

    (*(v49 + 8))(v27, v28);
    return v29;
  }

  else
  {
    v31 = v7;
    v50 = a3;
    v32 = v48;
    v33 = v46;
    if (one-time initialization token for topicManager != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Log.topicManager);
    (*(v7 + 16))(v10, a5, v33);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v51[0] = v38;
      *v37 = 136315394;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v32, v51);
      *(v37 + 12) = 2080;
      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v31 + 8))(v10, v33);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v51);

      *(v37 + 14) = v42;
      _os_log_impl(&dword_1AEE80000, v35, v36, "TopicManager is no longer available, topic=%s group=%s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v38, -1, -1);
      MEMORY[0x1B2715BA0](v37, -1, -1);
    }

    else
    {

      (*(v31 + 8))(v10, v33);
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *TopicManager.createUnreliableMessenger(groupUUID:name:localParticipantID:unreliableMessengerConfig:delegate:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.topicManager);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v16);
    _os_log_impl(&dword_1AEE80000, v10, v11, "Creating UnreliableMessenger, topic=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B2715BA0](v13, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v14);
  type metadata accessor for UnreliableMessenger();
  Lock.withLock<A>(_:)();
  return v16;
}

uint64_t closure #1 in TopicManager.createUnreliableMessenger(groupUUID:name:localParticipantID:unreliableMessengerConfig:delegate:)@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v48 = a8;
  v46 = a5;
  v47 = a7;
  v45 = a6;
  v42 = a4;
  v40 = a3;
  v35 = a1;
  v44 = type metadata accessor for UUID();
  v41 = *(v44 - 8);
  v43 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v39 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for UnreliableMessenger.Configuration();
  v38 = *(v52 - 8);
  v11 = v38;
  v12 = MEMORY[0x1EEE9AC00](v52);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v14;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v31 - v15;
  v32 = TopicManager.conversationClient(groupUUID:)(a1);
  [a2 egressMessagePayloadMaxSizeBytes];
  [a2 channelStreamMaxQueueSize];
  [a2 channelStreamMaxTries];
  v33 = a2;
  [a2 channelStreamRetryIntervalMillis];
  [a2 seqNumBufferSize];
  v37 = v16;
  UnreliableMessenger.Configuration.init(datagramPayloadMaxSizeBytes:outgoingQueueMaxSize:channelStreamMaxTries:channelStreamRetryInterval:seqNumBufferSize:)();
  v36 = type metadata accessor for UnreliableMessenger();
  (*(v11 + 16))(v14, v16, v52);
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v17 = swift_allocObject();
  v31[1] = v17;
  v18 = v40;
  v17[2] = v32;
  v17[3] = v18;
  v19 = v42;
  v17[4] = v42;
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = v41;
  v22 = v39;
  v23 = v44;
  (*(v41 + 16))(v39, v35, v44);
  v24 = (*(v21 + 80) + 40) & ~*(v21 + 80);
  v25 = (v43 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 2) = v20;
  *(v26 + 3) = v18;
  *(v26 + 4) = v19;
  (*(v21 + 32))(&v26[v24], v22, v23);
  v27 = v33;
  *&v26[v25] = v33;
  swift_unknownObjectRetain();

  v28 = v27;
  swift_bridgeObjectRetain_n();
  v29 = UnreliableMessenger.__allocating_init(name:config:localParticipantID:delegate:dataCryptorProvider:retainRefOnStart:serviceProvider:)();
  (*(v38 + 8))(v37, v52);

  *v48 = v29;
  return result;
}

uint64_t closure #3 in closure #1 in TopicManager.createUnreliableMessenger(groupUUID:name:localParticipantID:unreliableMessengerConfig:delegate:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = (*(*Strong + 264))(a4, a2, a3, a5);

    return v14;
  }

  else
  {
    if (one-time initialization token for topicManager != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Log.topicManager);
    (*(v10 + 16))(v12, a4, v9);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315394;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v25);
      *(v19 + 12) = 2080;
      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v10 + 8))(v12, v9);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v25);

      *(v19 + 14) = v24;
      _os_log_impl(&dword_1AEE80000, v17, v18, "Topic manager is no longer available, topic=%s group=%s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v20, -1, -1);
      MEMORY[0x1B2715BA0](v19, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v12, v9);
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t TopicManager.unreliableServiceGenerator(groupUUID:name:unreliableMessengerConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v44 = a4;
  v41 = a3;
  v39 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore34UnreliableMessengerServiceProvider_pGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore34UnreliableMessengerServiceProvider_pGMR);
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v12 = &v39 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore34UnreliableMessengerServiceProvider_pGGMd, &_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore34UnreliableMessengerServiceProvider_pGGMR);
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v45 = &v39 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy14CopresenceCore34UnreliableMessengerServiceProvider_pGMd, &_s7Combine4JustVy14CopresenceCore34UnreliableMessengerServiceProvider_pGMR);
  v42 = *(v14 - 8);
  v43 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v40 = &v39 - v15;
  Lock.lock()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = v50;
  if (!*(v50 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v18 & 1) == 0))
  {

    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    goto LABEL_10;
  }

  v19 = *(*(v16 + 56) + 8 * v17);

  (*(*v19 + 152))(&v51, v20);

  if (!*(&v52 + 1))
  {
LABEL_10:
    outlined destroy of NSObject?(&v51, &_s14CopresenceCore34UnreliableMessengerServiceProvider_pSgMd, &_s14CopresenceCore34UnreliableMessengerServiceProvider_pSgMR);
    Lock.unlock()();
    v54[0] = (*(*v5 + 232))(a1, 1);
    (*(v8 + 16))(&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
    v30 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v31 = (v9 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 16) = v5;
    (*(v8 + 32))(v32 + v30, v10, v7);
    v33 = v44;
    *(v32 + v31) = v44;

    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGMd, &_s7Combine12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34UnreliableMessengerServiceProvider_pMd, &_s14CopresenceCore34UnreliableMessengerServiceProvider_pMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<TUConversationActivitySessionContainer, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGMd, &_s7Combine12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGMR, MEMORY[0x1E695BED8]);
    Publisher.compactMap<A>(_:)();

    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<AnyPublisher<TUConversationActivitySessionContainer, Never>, UnreliableMessengerServiceProvider> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore34UnreliableMessengerServiceProvider_pGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore34UnreliableMessengerServiceProvider_pGMR, MEMORY[0x1E695BC80]);
    v35 = v45;
    v36 = v48;
    Publisher.first()();
    (*(v46 + 8))(v12, v36);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.First<Publishers.CompactMap<AnyPublisher<TUConversationActivitySessionContainer, Never>, UnreliableMessengerServiceProvider>> and conformance Publishers.First<A>, &_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore34UnreliableMessengerServiceProvider_pGGMd, &_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore34UnreliableMessengerServiceProvider_pGGMR, MEMORY[0x1E695BDB8]);
    v37 = v49;
    v29 = Publisher.eraseToAnyPublisher()();
    (*(v47 + 8))(v35, v37);
    goto LABEL_11;
  }

  outlined init with take of Transferable(&v51, v54);
  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Log.topicManager);
  v22 = v41;

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v51 = v26;
    *v25 = 136315138;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v22, &v51);
    _os_log_impl(&dword_1AEE80000, v23, v24, "Re-using existing UnreliableMessengerServiceProvider for topic=%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x1B2715BA0](v26, -1, -1);
    MEMORY[0x1B2715BA0](v25, -1, -1);
  }

  Lock.unlock()();
  outlined init with copy of Transferable(v54, &v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34UnreliableMessengerServiceProvider_pMd, &_s14CopresenceCore34UnreliableMessengerServiceProvider_pMR);
  v27 = v40;
  Just.init(_:)();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Just<UnreliableMessengerServiceProvider> and conformance Just<A>, &_s7Combine4JustVy14CopresenceCore34UnreliableMessengerServiceProvider_pGMd, &_s7Combine4JustVy14CopresenceCore34UnreliableMessengerServiceProvider_pGMR, MEMORY[0x1E695C008]);
  v28 = v43;
  v29 = Publisher.eraseToAnyPublisher()();
  (*(v42 + 8))(v27, v28);
  __swift_destroy_boxed_opaque_existential_0(v54);
LABEL_11:
  Lock.assertNotOwned()();
  return v29;
}

void closure #1 in closure #1 in TopicManager.unreliableServiceGenerator(groupUUID:name:unreliableMessengerConfig:)(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v26[2] && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v7 & 1) != 0))
  {
    v8 = *(v26[7] + 8 * v6);

    MEMORY[0x1EEE9AC00](v9);
    (*(*v8 + 200))(partial apply for closure #1 in closure #1 in closure #1 in TopicManager.unreliableServiceGenerator(groupUUID:name:unreliableMessengerConfig:));
    if (!v3)
    {

      return;
    }

    v10 = v3;
  }

  else
  {

    if (one-time initialization token for topicManager != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Log.topicManager);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1AEE80000, v12, v13, "Can't create UnreliableMessenger yet because there's no ConversationClient object", v14, 2u);
      MEMORY[0x1B2715BA0](v14, -1, -1);
    }

    lazy protocol witness table accessor for type TopicManager.Errors and conformance TopicManager.Errors();
    v10 = swift_allocError();
    *v15 = 1;
    swift_willThrow();
  }

  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.topicManager);
  v17 = v10;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26 = v21;
    *v20 = 136315138;
    v22 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v23 = String.init<A>(reflecting:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v26);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_1AEE80000, v18, v19, "Failed to create UnreliableMessenger due to error: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x1B2715BA0](v21, -1, -1);
    MEMORY[0x1B2715BA0](v20, -1, -1);
  }

  else
  {
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
}

uint64_t closure #1 in closure #1 in closure #1 in TopicManager.unreliableServiceGenerator(groupUUID:name:unreliableMessengerConfig:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a2 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(*a1 + 296))(v13, a3, a4);
  result = (*(v11 + 8))(v13, v10);
  *(a5 + 40) = 1;
  return result;
}

uint64_t TopicManager.pubSubTopicGenerator(groupUUID:name:category:dataCryptorProvider:delegate:seqNumWatermark:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v82 = a7;
  v83 = a8;
  v84 = a6;
  v76 = a4;
  v77 = a5;
  v80 = a2;
  v81 = a3;
  v11 = type metadata accessor for PubSubClient.TopicCategory();
  v78 = *(v11 - 8);
  v79 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v68 = v12;
  v69 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore12PubSubClientCGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore12PubSubClientCGMR);
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v17 = &v63 - v16;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore12PubSubClientCGGMd, &_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore12PubSubClientCGGMR);
  v72 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v70 = &v63 - v18;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AA6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGAC14SetFailureTypeVy_AC5FirstVy_AC07CompactD0Vy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGAH0hI6ClientCGGsAK_pGGMd, &_s7Combine10PublishersO7FlatMapVy_AA6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGAC14SetFailureTypeVy_AC5FirstVy_AC07CompactD0Vy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGAH0hI6ClientCGGsAK_pGGMR);
  v73 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v71 = &v63 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore12PubSubClientC13TopicCategoryOSgMd, &_s14CopresenceCore12PubSubClientC13TopicCategoryOSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v64 = &v63 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore11PubSubTopicC13ConfigurationVSgMd, &_s14CopresenceCore11PubSubTopicC13ConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v63 = &v63 - v23;
  v24 = *(v8 + OBJC_IVAR____TtC15GroupActivities12TopicManager_lock);
  Lock.lock()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v25 = *&v85[0];
  if (!*(*&v85[0] + 16) || (v26 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v27 & 1) == 0))
  {

    goto LABEL_9;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v30 = (*(*v28 + 160))(v29);

  if (!v30)
  {
LABEL_9:
    v65 = v24;
    Lock.unlock()();
    *&v85[0] = (*(*v9 + 232))(a1, 0);
    (*(v14 + 16))(&v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
    v37 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v9;
    (*(v14 + 32))(v38 + v37, &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGMd, &_s7Combine12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGMR);
    type metadata accessor for PubSubClient();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<TUConversationActivitySessionContainer, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGMd, &_s7Combine12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGMR, MEMORY[0x1E695BED8]);
    Publisher.compactMap<A>(_:)();

    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<AnyPublisher<TUConversationActivitySessionContainer, Never>, PubSubClient> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore12PubSubClientCGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore12PubSubClientCGMR, MEMORY[0x1E695BC80]);
    v39 = v70;
    v40 = v67;
    Publisher.first()();
    (*(v66 + 8))(v17, v40);
    v42 = v78;
    v41 = v79;
    v43 = v69;
    (*(v78 + 16))(v69, v76, v79);
    outlined init with copy of Transferable(v77, v85);
    v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v45 = (v68 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = (v45 + 47) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    v48 = v81;
    *(v47 + 16) = v80;
    *(v47 + 24) = v48;
    (*(v42 + 32))(v47 + v44, v43, v41);
    outlined init with take of Transferable(v85, v47 + v45);
    v49 = (v47 + v46);
    v50 = v83;
    v51 = v82;
    *v49 = v84;
    v49[1] = v51;
    *(v47 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF8)) = v50;

    swift_unknownObjectRetain();
    static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.First<Publishers.CompactMap<AnyPublisher<TUConversationActivitySessionContainer, Never>, PubSubClient>> and conformance Publishers.First<A>, &_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore12PubSubClientCGGMd, &_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore12PubSubClientCGGMR, MEMORY[0x1E695BDB8]);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Future<PubSubTopic, Error> and conformance Future<A, B>, &_s7Combine6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGMR, MEMORY[0x1E695C038]);
    v52 = v71;
    v53 = v74;
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    (*(v72 + 8))(v39, v53);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.FlatMap<Future<PubSubTopic, Error>, Publishers.SetFailureType<Publishers.First<Publishers.CompactMap<AnyPublisher<TUConversationActivitySessionContainer, Never>, PubSubClient>>, Error>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AA6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGAC14SetFailureTypeVy_AC5FirstVy_AC07CompactD0Vy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGAH0hI6ClientCGGsAK_pGGMd, &_s7Combine10PublishersO7FlatMapVy_AA6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGAC14SetFailureTypeVy_AC5FirstVy_AC07CompactD0Vy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGAH0hI6ClientCGGsAK_pGGMR, MEMORY[0x1E695BE40]);
    v54 = v75;
    v55 = Publisher.eraseToAnyPublisher()();
    (*(v73 + 8))(v52, v54);
    goto LABEL_10;
  }

  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Log.topicManager);
  v32 = v81;

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v85[0] = v36;
    *v35 = 136315138;
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v32, v85);
    _os_log_impl(&dword_1AEE80000, v33, v34, "Creating PubSubTopic, topic=%s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x1B2715BA0](v36, -1, -1);
    MEMORY[0x1B2715BA0](v35, -1, -1);
  }

  Lock.unlock()();
  v57 = type metadata accessor for PubSubTopic.Configuration();
  v58 = v63;
  (*(*(v57 - 8) + 56))(v63, 1, 1, v57);
  v60 = v78;
  v59 = v79;
  v61 = v64;
  (*(v78 + 16))(v64, v76, v79);
  (*(v60 + 56))(v61, 0, 1, v59);
  outlined init with copy of Transferable(v77, v85);
  v62 = dispatch thunk of PubSubClient.createTopic(name:topicConfig:category:dataCryptorProvider:delegate:seqNumWatermark:)();
  outlined destroy of NSObject?(v85, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  outlined destroy of NSObject?(v61, &_s14CopresenceCore12PubSubClientC13TopicCategoryOSgMd, &_s14CopresenceCore12PubSubClientC13TopicCategoryOSgMR);
  outlined destroy of NSObject?(v58, &_s14CopresenceCore11PubSubTopicC13ConfigurationVSgMd, &_s14CopresenceCore11PubSubTopicC13ConfigurationVSgMR);
  *&v85[0] = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Future<PubSubTopic, Error> and conformance Future<A, B>, &_s7Combine6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGMR, MEMORY[0x1E695C038]);
  v55 = Publisher.eraseToAnyPublisher()();

LABEL_10:
  Lock.assertNotOwned()();
  return v55;
}

void closure #1 in closure #1 in TopicManager.pubSubTopicGenerator(groupUUID:name:category:dataCryptorProvider:delegate:seqNumWatermark:)(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v28[2] && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v7 & 1) != 0))
  {
    v8 = *(v28[7] + 8 * v6);

    MEMORY[0x1EEE9AC00](v9);
    v10 = (*(*v8 + 192))(partial apply for closure #1 in closure #1 in closure #1 in TopicManager.pubSubTopicGenerator(groupUUID:name:category:dataCryptorProvider:delegate:seqNumWatermark:));
    if (!v3)
    {
      v27 = v10;

      goto LABEL_17;
    }

    v11 = v3;
  }

  else
  {

    if (one-time initialization token for topicManager != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.topicManager);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1AEE80000, v13, v14, "Can't create PubSubClient yet because there's no ConversationClient object", v15, 2u);
      MEMORY[0x1B2715BA0](v15, -1, -1);
    }

    lazy protocol witness table accessor for type TopicManager.Errors and conformance TopicManager.Errors();
    v11 = swift_allocError();
    *v16 = 1;
    swift_willThrow();
  }

  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.topicManager);
  v18 = v11;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136315138;
    v23 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v24 = String.init<A>(reflecting:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v28);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_1AEE80000, v19, v20, "Failed to create PubSubClient due to error: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1B2715BA0](v22, -1, -1);
    MEMORY[0x1B2715BA0](v21, -1, -1);
  }

  else
  {
  }

  v27 = 0;
LABEL_17:
  *a3 = v27;
}

uint64_t closure #2 in TopicManager.pubSubTopicGenerator(groupUUID:name:category:dataCryptorProvider:delegate:seqNumWatermark:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a9@<X8>)
{
  v36 = a4;
  v37 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore12PubSubClientC13TopicCategoryOSgMd, &_s14CopresenceCore12PubSubClientC13TopicCategoryOSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore11PubSubTopicC13ConfigurationVSgMd, &_s14CopresenceCore11PubSubTopicC13ConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v35 - v19;
  v35[2] = *a1;
  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Log.topicManager);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v35[0] = a7;
    v35[1] = a6;
    v25 = a9;
    v26 = v24;
    v27 = a2;
    v28 = swift_slowAlloc();
    v38[0] = v28;
    *v26 = 136315138;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, a3, v38);
    _os_log_impl(&dword_1AEE80000, v22, v23, "Creating PubSubTopic, topic=%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B2715BA0](v28, -1, -1);
    v29 = v26;
    a9 = v25;
    MEMORY[0x1B2715BA0](v29, -1, -1);
  }

  v30 = type metadata accessor for PubSubTopic.Configuration();
  (*(*(v30 - 8) + 56))(v20, 1, 1, v30);
  v31 = type metadata accessor for PubSubClient.TopicCategory();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v17, v36, v31);
  (*(v32 + 56))(v17, 0, 1, v31);
  outlined init with copy of Transferable(v37, v38);
  v33 = dispatch thunk of PubSubClient.createTopic(name:topicConfig:category:dataCryptorProvider:delegate:seqNumWatermark:)();
  outlined destroy of NSObject?(v38, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  outlined destroy of NSObject?(v17, &_s14CopresenceCore12PubSubClientC13TopicCategoryOSgMd, &_s14CopresenceCore12PubSubClientC13TopicCategoryOSgMR);
  result = outlined destroy of NSObject?(v20, &_s14CopresenceCore11PubSubTopicC13ConfigurationVSgMd, &_s14CopresenceCore11PubSubTopicC13ConfigurationVSgMR);
  *a9 = v33;
  return result;
}

NSObject *TopicManager.createPubSubClient(from:)(void *a1)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v54 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v52 = a1;
  v53 = &v52 - v8;
  v9 = [a1 virtualParticipants];
  v10 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationVirtualParticipant, 0x1E69D8BC0);
  lazy protocol witness table accessor for type TUConversationVirtualParticipant and conformance NSObject();
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v57 = v4;
  v58 = v2;
  v55 = v1;
  v56 = v5;
  v60 = v11;
  v61 = v10;
  if ((v11 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v12 = v65;
    v13 = v66;
    v14 = v67;
    v15 = v68;
    v16 = v69;
  }

  else
  {
    v17 = -1 << *(v11 + 32);
    v12 = v11;
    v13 = v11 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v11 + 56);

    v15 = 0;
  }

  v59 = v14;
  if (v12 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v20 = v15;
  v21 = v16;
  v22 = v15;
  if (!v16)
  {
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= ((v14 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v21 = *(v13 + 8 * v22);
      ++v20;
      if (v21)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_12:
  v23 = (v21 - 1) & v21;
  v24 = *(*(v12 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
  if (!v24)
  {
LABEL_23:
    outlined consume of [UUID : Conversation].Iterator._Variant(v12);

    if (one-time initialization token for topicManager == -1)
    {
LABEL_24:
      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Log.topicManager);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1AEE80000, v34, v35, "Tried to create PubSubClient on container without virtualParticipant", v36, 2u);
        MEMORY[0x1B2715BA0](v36, -1, -1);
      }

      lazy protocol witness table accessor for type TopicManager.Errors and conformance TopicManager.Errors();
      swift_allocError();
      *v37 = 0;
      swift_willThrow();
      return v34;
    }

LABEL_31:
    swift_once();
    goto LABEL_24;
  }

  while (1)
  {
    v62 = v16;
    v63 = v24;
    v26 = v12;
    v27 = [v24 pluginName];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    if (v28 == 0x627553627550 && v30 == 0xE600000000000000)
    {
      break;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
      goto LABEL_28;
    }

    v15 = v22;
    v16 = v23;
    v12 = v26;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v25 = __CocoaSet.Iterator.next()();
    if (v25)
    {
      v64 = v25;
      swift_dynamicCast();
      v24 = v70;
      v22 = v15;
      v23 = v16;
      if (v70)
      {
        continue;
      }
    }

    goto LABEL_23;
  }

LABEL_28:
  outlined consume of [UUID : Conversation].Iterator._Variant(v26);

  v38 = v52;
  v39 = [v52 UUID];
  v40 = v53;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = [v38 groupUUID];
  v42 = v54;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = [v38 localParticipantIdentifier];
  v44 = v63;
  v45 = [v63 identifier];
  v46 = [v38 virtualParticipantConfig];
  (*(*v55 + 288))(v40, v42, v43, v45, v46);
  v34 = v47;

  v48 = *(v56 + 8);
  v49 = v42;
  v50 = v57;
  v48(v49, v57);
  v48(v40, v50);

  return v34;
}

uint64_t TopicManager.createPubSubClient(conversationUUID:groupUUID:localParticipantID:virtualParticipantID:virtualParticipantConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v63 = a1;
  v64 = a4;
  v59 = a3;
  v7 = type metadata accessor for PluginEndpoint();
  v66 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v65 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v55 - v10);
  v68 = type metadata accessor for PluginClient.Configuration();
  v61 = *(v68 - 8);
  v12 = MEMORY[0x1EEE9AC00](v68);
  v60 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v55 - v14;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.topicManager);
  v20 = *(v16 + 16);
  v58 = a2;
  v20(v18, a2, v15);
  v21 = a5;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v57 = v7;
    v25 = v24;
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v69[0] = v56;
    *v25 = 136315906;
    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v16 + 8))(v18, v15);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v69);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2048;
    v30 = v59;
    *(v25 + 14) = v59;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v64;
    *(v25 + 32) = 2112;
    *(v25 + 34) = v21;
    v31 = v55;
    *v55 = v21;
    v32 = v21;
    _os_log_impl(&dword_1AEE80000, v22, v23, "Creating PubSubClient for groupUUID=%s, localParticipantID=%llu, virtualParticipantID=%llu, virtualParticipantConfig=%@", v25, 0x2Au);
    outlined destroy of NSObject?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v31, -1, -1);
    v33 = v56;
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x1B2715BA0](v33, -1, -1);
    v34 = v25;
    v7 = v57;
    MEMORY[0x1B2715BA0](v34, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v18, v15);
    v30 = v59;
  }

  v35 = UUID.uuidString.getter();
  v37 = v36;
  v38 = [v21 idsAliasingSalt];
  if (v38)
  {
    v39 = v38;
    v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0xF000000000000000;
  }

  *v11 = v35;
  v11[1] = v37;
  v11[2] = v64;
  v11[3] = v40;
  v11[4] = v42;
  v11[5] = v30;
  v43 = v66;
  (*(v66 + 104))(v11, *MEMORY[0x1E6997518], v7);
  v64 = [v21 connectionRetryIntervalMillis];
  (*(v43 + 16))(v65, v11, v7);
  [v21 connectionMaxAttempts];
  [v21 serverCertValidationEnabled];
  v44 = [v21 serverCertHostnameOverride];
  if (v44)
  {
    v45 = v44;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v46 = [v21 serverCertLeafMarkerOIDOverride];
  if (v46)
  {
    v47 = v7;
    v48 = v46;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = v47;
  }

  v49 = v67;
  PluginClient.Configuration.init(endpoint:connectionMaxAttempts:connectionRetryInterval:serverCertValidationEnabled:serverCertHostname:serverCertLeafMarkerOID:)();
  (*(v66 + 8))(v11, v7);
  v50 = v61;
  v51 = (*(v61 + 16))(v60, v49, v68);
  v52 = *(*v62 + 192);
  v52(v69, v51);
  __swift_project_boxed_opaque_existential_1(v69, v70);
  dispatch thunk of ActivitySessionContainerProvider.pluginClientReporter.getter();
  UUID.uuidString.getter();
  type metadata accessor for PluginClient();
  swift_allocObject();
  v53 = PluginClient.init(config:queue:reporter:reporterTag:)();
  __swift_destroy_boxed_opaque_existential_0(v69);
  type metadata accessor for PubSubClient();

  [v21 rpcStreamMaxAttempts];
  [v21 rpcStreamRetryIntervalMillis];
  (v52)(v69);
  __swift_project_boxed_opaque_existential_1(v69, v70);
  dispatch thunk of ActivitySessionContainerProvider.pubSubTopicReporter.getter();
  UUID.uuidString.getter();
  PubSubClient.__allocating_init(pluginClient:createTopicMaxAttempts:createTopicRpcRetryIntervalSeconds:topicReporter:topicReporterTag:)();
  (*(v50 + 8))(v67, v68);
  __swift_destroy_boxed_opaque_existential_0(v69);
  return v53;
}

uint64_t TopicManager.createUnreliableMessengerService(conversationUUID:groupUUID:unreliableMessengerConfig:)@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for DatagramClient.Configuration();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v39 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v34 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.topicManager);
  v16 = *(v12 + 16);
  v38 = a1;
  v16(v14, a1, v11);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = v7;
    v20 = v19;
    v35 = swift_slowAlloc();
    v41 = v35;
    *v20 = 136315138;
    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = a2;
    v22 = v6;
    v23 = a3;
    v25 = v24;
    (*(v12 + 8))(v14, v11);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v25, &v41);
    a3 = v23;
    v6 = v22;
    a2 = v36;

    *(v20 + 4) = v26;
    _os_log_impl(&dword_1AEE80000, v17, v18, "Creating DatagramClient for groupUUID=%s", v20, 0xCu);
    v27 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x1B2715BA0](v27, -1, -1);
    v28 = v20;
    v7 = v37;
    MEMORY[0x1B2715BA0](v28, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v29 = v40;
  closure #1 in TopicManager.createUnreliableMessengerService(conversationUUID:groupUUID:unreliableMessengerConfig:)(v38, a2);
  (*(v7 + 16))(v39, v29, v6);
  v30 = type metadata accessor for DatagramClient();
  swift_allocObject();
  v31 = DatagramClient.init(config:queue:)();
  v32 = MEMORY[0x1E6997510];
  a3[3] = v30;
  a3[4] = v32;
  *a3 = v31;
  return (*(v7 + 8))(v29, v6);
}

uint64_t closure #1 in TopicManager.createUnreliableMessengerService(conversationUUID:groupUUID:unreliableMessengerConfig:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for DatagramEndpoint();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v19 - v8);
  v10 = UUID.uuidString.getter();
  v12 = v11;
  v13 = [a2 idsAliasingSalt];
  if (v13)
  {
    v20 = a2;
    v14 = v13;
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    a2 = v20;
  }

  else
  {
    v15 = 0;
    v17 = 0xF000000000000000;
  }

  *v9 = v10;
  v9[1] = v12;
  v9[2] = v15;
  v9[3] = v17;
  (*(v4 + 104))(v9, *MEMORY[0x1E6997528], v3);
  (*(v4 + 16))(v7, v9, v3);
  [a2 establishChannelMaxAttempts];
  [a2 establishChannelRetryIntervalMillis];
  [a2 egressMessagePayloadMaxSizeBytes];
  DatagramClient.Configuration.init(endpoint:establishChannelMaxAttempts:establishChannelRetryInterval:egressMessagePayloadMaxSizeBytes:)();
  return (*(v4 + 8))(v9, v3);
}

uint64_t TopicManager.pluginAttachmentTopicGenerator(groupUUID:name:dataCryptorProvider:initialAttachments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v51 = a3;
  v52 = a5;
  v49 = a4;
  v50 = a2;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore22AttachmentLedgerClientCGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore22AttachmentLedgerClientCGMR);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore22AttachmentLedgerClientCGGMd, &_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore22AttachmentLedgerClientCGGMR);
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v15 = &v41 - v14;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AA6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGAC14SetFailureTypeVy_AC5FirstVy_AC07CompactD0Vy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGAH0iJ6ClientCGGsAK_pGGMd, &_s7Combine10PublishersO7FlatMapVy_AA6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGAC14SetFailureTypeVy_AC5FirstVy_AC07CompactD0Vy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGAH0iJ6ClientCGGsAK_pGGMR);
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v44 = &v41 - v16;
  v53 = *(v5 + OBJC_IVAR____TtC15GroupActivities12TopicManager_lock);
  Lock.lock()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = *&v54[0];
  if (!*(*&v54[0] + 16) || (v18 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v19 & 1) == 0))
  {

    goto LABEL_10;
  }

  v20 = *(*(v17 + 56) + 8 * v18);

  v22 = (*(*v20 + 168))(v21);

  if (!v22)
  {
LABEL_10:
    Lock.unlock()();
    *&v54[0] = (*(*v6 + 232))(a1, 2);
    (*(v9 + 16))(&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
    v32 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = v6;
    (*(v9 + 32))(v33 + v32, &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGMd, &_s7Combine12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGMR);
    type metadata accessor for AttachmentLedgerClient();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<TUConversationActivitySessionContainer, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGMd, &_s7Combine12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGMR, MEMORY[0x1E695BED8]);
    Publisher.compactMap<A>(_:)();

    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<AnyPublisher<TUConversationActivitySessionContainer, Never>, AttachmentLedgerClient> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore22AttachmentLedgerClientCGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore22AttachmentLedgerClientCGMR, MEMORY[0x1E695BC80]);
    v34 = v43;
    Publisher.first()();
    (*(v42 + 8))(v13, v34);
    outlined init with copy of Transferable(v49, v54);
    v35 = swift_allocObject();
    v36 = v51;
    v35[2] = v50;
    v35[3] = v36;
    outlined init with take of Transferable(v54, (v35 + 4));
    v35[9] = v52;

    static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.First<Publishers.CompactMap<AnyPublisher<TUConversationActivitySessionContainer, Never>, AttachmentLedgerClient>> and conformance Publishers.First<A>, &_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore22AttachmentLedgerClientCGGMd, &_s7Combine10PublishersO5FirstVy_AC10CompactMapVy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOG14CopresenceCore22AttachmentLedgerClientCGGMR, MEMORY[0x1E695BDB8]);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Future<PluginAttachmentLedgerTopic, Error> and conformance Future<A, B>, &_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMR, MEMORY[0x1E695C038]);
    v37 = v44;
    v38 = v47;
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    (*(v45 + 8))(v15, v38);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.FlatMap<Future<PluginAttachmentLedgerTopic, Error>, Publishers.SetFailureType<Publishers.First<Publishers.CompactMap<AnyPublisher<TUConversationActivitySessionContainer, Never>, AttachmentLedgerClient>>, Error>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AA6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGAC14SetFailureTypeVy_AC5FirstVy_AC07CompactD0Vy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGAH0iJ6ClientCGGsAK_pGGMd, &_s7Combine10PublishersO7FlatMapVy_AA6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGAC14SetFailureTypeVy_AC5FirstVy_AC07CompactD0Vy_AA12AnyPublisherVySo38TUConversationActivitySessionContainerCs5NeverOGAH0iJ6ClientCGGsAK_pGGMR, MEMORY[0x1E695BE40]);
    v39 = v48;
    v31 = Publisher.eraseToAnyPublisher()();
    (*(v46 + 8))(v37, v39);
    goto LABEL_11;
  }

  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Log.topicManager);
  v24 = v51;

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v50;
  if (v27)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v54[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v24, v54);
    _os_log_impl(&dword_1AEE80000, v25, v26, "Creating PluginAttachmentLedgerTopic, topic=%s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1B2715BA0](v30, -1, -1);
    MEMORY[0x1B2715BA0](v29, -1, -1);
  }

  Lock.unlock()();
  *&v54[0] = dispatch thunk of AttachmentLedgerClient.createTopic(name:dataCryptorProvider:initialAttachments:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Future<PluginAttachmentLedgerTopic, Error> and conformance Future<A, B>, &_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMR, MEMORY[0x1E695C038]);
  v31 = Publisher.eraseToAnyPublisher()();

LABEL_11:
  Lock.assertNotOwned()();
  return v31;
}

void closure #1 in closure #1 in TopicManager.pluginAttachmentTopicGenerator(groupUUID:name:dataCryptorProvider:initialAttachments:)(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v28[2] && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v7 & 1) != 0))
  {
    v8 = *(v28[7] + 8 * v6);

    MEMORY[0x1EEE9AC00](v9);
    v10 = (*(*v8 + 208))(partial apply for closure #1 in closure #1 in closure #1 in TopicManager.pluginAttachmentTopicGenerator(groupUUID:name:dataCryptorProvider:initialAttachments:));
    if (!v3)
    {
      v27 = v10;

      goto LABEL_17;
    }

    v11 = v3;
  }

  else
  {

    if (one-time initialization token for topicManager != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.topicManager);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1AEE80000, v13, v14, "Can't create AttachmentLedgerClient yet because there's no ConversationClient object", v15, 2u);
      MEMORY[0x1B2715BA0](v15, -1, -1);
    }

    lazy protocol witness table accessor for type TopicManager.Errors and conformance TopicManager.Errors();
    v11 = swift_allocError();
    *v16 = 1;
    swift_willThrow();
  }

  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.topicManager);
  v18 = v11;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136315138;
    v23 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v24 = String.init<A>(reflecting:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v28);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_1AEE80000, v19, v20, "Failed to create AttachmentLedgerClient due to error: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1B2715BA0](v22, -1, -1);
    MEMORY[0x1B2715BA0](v21, -1, -1);
  }

  else
  {
  }

  v27 = 0;
LABEL_17:
  *a3 = v27;
}

uint64_t closure #2 in TopicManager.pluginAttachmentTopicGenerator(groupUUID:name:dataCryptorProvider:initialAttachments:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t *a5@<X8>)
{
  if (one-time initialization token for topicManager != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.topicManager);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v14);
    _os_log_impl(&dword_1AEE80000, v9, v10, "Creating PluginAttachmentLedgerTopic, topic=%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B2715BA0](v12, -1, -1);
    MEMORY[0x1B2715BA0](v11, -1, -1);
  }

  result = dispatch thunk of AttachmentLedgerClient.createTopic(name:dataCryptorProvider:initialAttachments:)();
  *a5 = result;
  return result;
}

uint64_t TopicManager.createAttachmentLedgerClient(from:)(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AttachmentLedgerClient.Config();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v71 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for UUID();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for PluginClient.Configuration();
  v70 = *(v75 - 8);
  v7 = MEMORY[0x1EEE9AC00](v75);
  v66 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v65 - v9;
  v10 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v73 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for topicManager == -1)
  {
    goto LABEL_2;
  }

LABEL_39:
  swift_once();
LABEL_2:
  v12 = type metadata accessor for Logger();
  v13 = __swift_project_value_buffer(v12, static Log.topicManager);
  v14 = a1;
  v77 = v13;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_1AEE80000, v15, v16, "Creating AttachmentLedgerClient for container: %@", v17, 0xCu);
    outlined destroy of NSObject?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v18, -1, -1);
    MEMORY[0x1B2715BA0](v17, -1, -1);
  }

  v20 = [v14 virtualParticipants];
  v21 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationVirtualParticipant, 0x1E69D8BC0);
  a1 = lazy protocol witness table accessor for type TUConversationVirtualParticipant and conformance NSObject();
  v22 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v72 = v2;
  v76 = v14;
  v79 = v22;
  v80 = v21;
  if ((v22 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v23 = v84[5];
    v2 = v84[6];
    v24 = v84[7];
    v25 = v84[8];
    v26 = v84[9];
  }

  else
  {
    v27 = -1 << *(v22 + 32);
    v23 = v22;
    v2 = v22 + 56;
    v24 = ~v27;
    v28 = -v27;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v26 = v29 & *(v22 + 56);

    v25 = 0;
  }

  v78 = v24;
  v82 = 0x80000001AF01A390;
  if (v23 < 0)
  {
LABEL_11:
    v30 = __CocoaSet.Iterator.next()();
    if (v30)
    {
      v84[12] = v30;
      swift_dynamicCast();
      v31 = v84[0];
      v32 = v25;
      v33 = v26;
      if (v84[0])
      {
        goto LABEL_19;
      }
    }

LABEL_26:
    outlined consume of [UUID : Conversation].Iterator._Variant(v23);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1AEE80000, v42, v43, "Tried to create AttachmentLedgerClient on container without a corresponding virtualParticipant", v44, 2u);
      MEMORY[0x1B2715BA0](v44, -1, -1);
    }

    lazy protocol witness table accessor for type TopicManager.Errors and conformance TopicManager.Errors();
    swift_allocError();
    *v45 = 0;
    swift_willThrow();
  }

  else
  {
    while (1)
    {
      v34 = v25;
      v35 = v26;
      v32 = v25;
      if (!v26)
      {
        while (1)
        {
          v32 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            break;
          }

          if (v32 >= ((v24 + 64) >> 6))
          {
            goto LABEL_26;
          }

          v35 = *(v2 + 8 * v32);
          ++v34;
          if (v35)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

LABEL_18:
      v33 = (v35 - 1) & v35;
      v31 = *(*(v23 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v35)))));
      if (!v31)
      {
        goto LABEL_26;
      }

LABEL_19:
      v81 = v26;
      a1 = v23;
      v83 = v31;
      v36 = [v31 pluginName];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      if (v37 == 0xD000000000000010 && v82 == v39)
      {
        break;
      }

      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v41)
      {
        goto LABEL_31;
      }

      v25 = v32;
      v26 = v33;
      v23 = a1;
      if ((a1 & 0x8000000000000000) != 0)
      {
        goto LABEL_11;
      }
    }

LABEL_31:
    outlined consume of [UUID : Conversation].Iterator._Variant(a1);

    v47 = v76;
    v48 = [v76 virtualParticipantConfig];
    v49 = [v48 idsAliasingSalt];

    if (v49)
    {
      v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      static String.Encoding.utf8.getter();
      v53 = String.init(data:encoding:)();
      if (v54)
      {
        v55 = v74;
        v81 = v54;
        v82 = v53;
        closure #2 in TopicManager.createAttachmentLedgerClient(from:)(v47, v83, v50, v52, v74);
        v56 = v70;
        v57 = (*(v70 + 16))(v66, v55, v75);
        (*(*v65 + 192))(v84, v57);
        __swift_project_boxed_opaque_existential_1(v84, v84[3]);
        dispatch thunk of ActivitySessionContainerProvider.pluginClientReporter.getter();
        v58 = [v47 UUID];
        v59 = v67;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        UUID.uuidString.getter();
        (*(v68 + 8))(v59, v69);
        type metadata accessor for PluginClient();
        swift_allocObject();
        PluginClient.init(config:queue:reporter:reporterTag:)();
        __swift_destroy_boxed_opaque_existential_0(v84);
        type metadata accessor for AttachmentLedgerClient();
        v60 = [v47 virtualParticipantConfig];
        [v60 rpcStreamMaxAttempts];

        v61 = [v47 virtualParticipantConfig];
        [v61 rpcStreamRetryIntervalMillis];

        AttachmentLedgerClient.Config.init(participantIDSalt:createTopicMaxAttempts:createTopicRpcRetryIntervalSeconds:)();
        [v47 localParticipantIdentifier];
        v43 = AttachmentLedgerClient.__allocating_init(client:config:localParticipantID:)();

        outlined consume of Data._Representation(v50, v52);
        (*(v56 + 8))(v74, v75);
        return v43;
      }

      outlined consume of Data._Representation(v50, v52);
    }

    v62 = Logger.logObject.getter();
    v43 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v62, v43))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_1AEE80000, v62, v43, "Failed to find aliasingSalt from virtualParticipantConfig. Can't create AttachmentLedgerClient without the salt.", v63, 2u);
      MEMORY[0x1B2715BA0](v63, -1, -1);
    }

    lazy protocol witness table accessor for type TopicManager.Errors and conformance TopicManager.Errors();
    swift_allocError();
    *v64 = 2;
    swift_willThrow();
  }

  return v43;
}

uint64_t closure #2 in TopicManager.createAttachmentLedgerClient(from:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a3;
  v37 = a4;
  v35 = a2;
  v38 = a5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PluginEndpoint();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (v34 - v15);
  v17 = [a1 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = UUID.uuidString.getter();
  v20 = v19;
  (*(v7 + 8))(v9, v6);
  v21 = [v35 identifier];
  v22 = [a1 localParticipantIdentifier];
  *v16 = v18;
  v16[1] = v20;
  v16[2] = v21;
  v24 = v36;
  v23 = v37;
  v16[3] = v36;
  v16[4] = v23;
  v16[5] = v22;
  (*(v11 + 104))(v16, *MEMORY[0x1E6997518], v10);
  v25 = [a1 virtualParticipantConfig];
  v34[1] = [v25 connectionRetryIntervalMillis];

  v35 = v14;
  v36 = v11;
  v26 = *(v11 + 16);
  v37 = v10;
  v26(v14, v16, v10);
  v27 = [a1 virtualParticipantConfig];
  [v27 connectionMaxAttempts];

  v28 = [a1 virtualParticipantConfig];
  [v28 serverCertValidationEnabled];

  v29 = [a1 virtualParticipantConfig];
  v30 = [v29 serverCertHostnameOverride];

  if (v30)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v31 = [a1 virtualParticipantConfig];
  v32 = [v31 serverCertLeafMarkerOIDOverride];

  if (v32)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  PluginClient.Configuration.init(endpoint:connectionMaxAttempts:connectionRetryInterval:serverCertValidationEnabled:serverCertHostname:serverCertLeafMarkerOID:)();
  return (*(v36 + 8))(v16, v37);
}

uint64_t TopicManager.deinit()
{
  v1 = OBJC_IVAR____TtC15GroupActivities12TopicManager__conversationClientsByGroupUUID;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15GroupActivities12TopicManager_provider));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t TopicManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15GroupActivities12TopicManager__conversationClientsByGroupUUID;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15GroupActivities12TopicManager_provider));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id TopicManager.ConversationClient.activeSubscriptions.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void TopicManager.ConversationClient.activeSubscriptions.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t TopicManager.ConversationClient.unreliableMessagingService.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  if (!*(v4 + 16))
  {
    goto LABEL_6;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(1);
  if ((v6 & 1) == 0)
  {

LABEL_6:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  outlined init with copy of TopicManager.ConversationClient.Service(*(v4 + 56) + 48 * v5, &v7);

  v9 = v7;
  v10[0] = *v8;
  *(v10 + 9) = *&v8[9];
  outlined init with copy of TopicManager.ConversationClient.Service(&v9, &v7);
  if (v8[24] == 1)
  {
    outlined destroy of TopicManager.ConversationClient.Service(&v9);
    return outlined init with take of Transferable(&v7, a1);
  }

  else
  {
    outlined destroy of TopicManager.ConversationClient.Service(&v7);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t TopicManager.ConversationClient.pubSubClient.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0);
  if ((v3 & 1) == 0)
  {

    return 0;
  }

  outlined init with copy of TopicManager.ConversationClient.Service(*(v1 + 56) + 48 * v2, &v5);

  v7 = v5;
  v8[0] = *v6;
  *(v8 + 9) = *&v6[9];
  outlined init with copy of TopicManager.ConversationClient.Service(&v7, &v5);
  if (v6[24])
  {
    outlined destroy of TopicManager.ConversationClient.Service(&v5);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined destroy of TopicManager.ConversationClient.Service(&v7);
    return v5;
  }

  return result;
}

uint64_t TopicManager.ConversationClient.attachmentLedgerClient.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(2);
  if ((v3 & 1) == 0)
  {

    return 0;
  }

  outlined init with copy of TopicManager.ConversationClient.Service(*(v1 + 56) + 48 * v2, &v5);

  v7 = v5;
  v8[0] = *v6;
  *(v8 + 9) = *&v6[9];
  outlined init with copy of TopicManager.ConversationClient.Service(&v7, &v5);
  if (v6[24] == 2)
  {
    outlined destroy of TopicManager.ConversationClient.Service(&v7);
    return v5;
  }

  else
  {
    outlined destroy of TopicManager.ConversationClient.Service(&v5);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *TopicManager.ConversationClient.init(lock:)(uint64_t a1)
{
  v1[2] = MEMORY[0x1E69E7CC8];
  v1[3] = [objc_opt_self() weakObjectsHashTable];
  v1[4] = a1;
  return v1;
}

id *TopicManager.ConversationClient.deinit()
{
  if ((*(*v0 + 20))())
  {
    dispatch thunk of PubSubClient.close()();
  }

  return v0;
}

uint64_t TopicManager.ConversationClient.__deallocating_deinit()
{
  if ((*(*v0 + 20))())
  {
    dispatch thunk of PubSubClient.close()();
  }

  return swift_deallocClassInstance();
}

void TopicManager.ConversationClient.update(with:)(void *a1)
{
  v2 = v1;
  Lock.assertOwned()();
  v4 = [a1 virtualParticipants];
  v5 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationVirtualParticipant, 0x1E69D8BC0);
  lazy protocol witness table accessor for type TUConversationVirtualParticipant and conformance NSObject();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v6 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v6 = v45[1];
    v7 = v45[2];
    v8 = v45[3];
    v9 = v45[4];
    v10 = v45[5];
  }

  else
  {
    v9 = 0;
    v11 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v6 + 56);
  }

  v14 = (v8 + 64) >> 6;
  v43 = v6;
  while (v6 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v19 = v45[0], v17 = v9, v18 = v10, !v45[0]))
    {
LABEL_31:
      outlined consume of [UUID : Conversation].Iterator._Variant(v43);
      return;
    }

LABEL_20:
    v44 = v18;
    v20 = [v19 pluginName];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24._countAndFlagsBits = v21;
    v24._object = v23;
    v25 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TopicManager.ConversationClient.update(with:), v24);

    if (v25 == 2)
    {
      if ((*(*v2 + 168))(v26))
      {
        [a1 localParticipantIdentifier];
        dispatch thunk of AttachmentLedgerClient.updateVirtualParticipant(_:localParticipantID:)();
LABEL_8:
      }

LABEL_9:

      goto LABEL_10;
    }

    if (!v25)
    {
      if ((*(*v2 + 160))(v26))
      {
        [a1 localParticipantIdentifier];
        dispatch thunk of PubSubClient.updateVirtualParticipant(_:localParticipantID:)();
        goto LABEL_8;
      }

      goto LABEL_9;
    }

    if (one-time initialization token for topicManager != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Log.topicManager);
    v28 = v19;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v45[0] = v39;
      *v31 = 136315138;
      v41 = a1;
      v32 = [v28 pluginName];
      v40 = v28;
      v33 = v5;
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v2;
      v36 = v35;

      v37 = v34;
      v5 = v33;
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v36, v45);
      v2 = v42;

      *(v31 + 4) = v38;
      a1 = v41;
      _os_log_impl(&dword_1AEE80000, v29, v30, "Virtual participant pluginName: %s unknown", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x1B2715BA0](v39, -1, -1);
      MEMORY[0x1B2715BA0](v31, -1, -1);
    }

    else
    {
    }

LABEL_10:
    v9 = v17;
    v6 = v43;
    v10 = v44;
  }

  v15 = v9;
  v16 = v10;
  v17 = v9;
  if (v10)
  {
LABEL_16:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v6 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_31;
    }

    v16 = *(v7 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void *TopicManager.ConversationClient.service(generator:)(void *(*a1)(void *__return_ptr))
{
  Lock.assertOwned()();
  result = (*(*v1 + 160))();
  if (!result)
  {
    result = a1(v9);
    if (!v2)
    {
      outlined init with copy of TopicManager.ConversationClient.Service(v9, v7);
      if (v8)
      {
        outlined destroy of TopicManager.ConversationClient.Service(v7);
        lazy protocol witness table accessor for type TopicManager.Errors and conformance TopicManager.Errors();
        swift_allocError();
        *v5 = 0;
        swift_willThrow();
        return outlined destroy of TopicManager.ConversationClient.Service(v9);
      }

      else
      {
        v6 = v7[0];
        outlined init with copy of TopicManager.ConversationClient.Service(v9, v7);
        swift_beginAccess();
        specialized Dictionary.subscript.setter(v7, 0);
        swift_endAccess();
        outlined destroy of TopicManager.ConversationClient.Service(v9);
        return v6;
      }
    }
  }

  return result;
}

{
  Lock.assertOwned()();
  result = (*(*v1 + 168))();
  if (!result)
  {
    result = a1(v9);
    if (!v2)
    {
      outlined init with copy of TopicManager.ConversationClient.Service(v9, v7);
      if (v8 == 2)
      {
        v5 = v7[0];
        outlined init with copy of TopicManager.ConversationClient.Service(v9, v7);
        swift_beginAccess();
        specialized Dictionary.subscript.setter(v7, 2);
        swift_endAccess();
        outlined destroy of TopicManager.ConversationClient.Service(v9);
        return v5;
      }

      else
      {
        outlined destroy of TopicManager.ConversationClient.Service(v7);
        lazy protocol witness table accessor for type TopicManager.Errors and conformance TopicManager.Errors();
        swift_allocError();
        *v6 = 0;
        swift_willThrow();
        return outlined destroy of TopicManager.ConversationClient.Service(v9);
      }
    }
  }

  return result;
}

void *TopicManager.ConversationClient.service(generator:)@<X0>(void *(*a1)(__int128 *__return_ptr, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  Lock.assertOwned()();
  (*(*v2 + 152))(&v11);
  if (v12)
  {
    return outlined init with take of Transferable(&v11, a2);
  }

  v7 = outlined destroy of NSObject?(&v11, &_s14CopresenceCore34UnreliableMessengerServiceProvider_pSgMd, &_s14CopresenceCore34UnreliableMessengerServiceProvider_pSgMR);
  result = a1(&v11, v7);
  if (!v3)
  {
    outlined init with copy of TopicManager.ConversationClient.Service(&v11, v9);
    if (v10 == 1)
    {
      outlined init with take of Transferable(v9, a2);
      outlined init with copy of TopicManager.ConversationClient.Service(&v11, v9);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v9, 1);
      swift_endAccess();
    }

    else
    {
      outlined destroy of TopicManager.ConversationClient.Service(v9);
      lazy protocol witness table accessor for type TopicManager.Errors and conformance TopicManager.Errors();
      swift_allocError();
      *v8 = 0;
      swift_willThrow();
    }

    return outlined destroy of TopicManager.ConversationClient.Service(&v11);
  }

  return result;
}

uint64_t TopicManager.ConversationClient.subscription(for:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TopicManager.Subscription();
  Lock.withLock<A>(_:)();
  return v3;
}

void closure #1 in TopicManager.ConversationClient.subscription(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for TopicManager.Subscription();
  v8 = swift_allocObject();
  swift_weakInit();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  swift_weakAssign();
  v9 = *(*a3 + 128);

  v11 = v9(v10);
  [v11 addObject_];

  *a4 = v8;
}

uint64_t TopicManager.Subscription.__allocating_init(topicName:conversationClient:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  swift_weakInit();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_weakAssign();

  return v5;
}

uint64_t closure #1 in TopicManager.ConversationClient.refreshActiveSubscriptions()(void *a1)
{
  v2 = (*(*a1 + 128))();
  v3 = [v2 allObjects];

  type metadata accessor for TopicManager.Subscription();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v8 = __CocoaSet.count.getter();

    if (v8)
    {
      return result;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v5)
    {
      return result;
    }
  }

  if ((*(*a1 + 160))(result))
  {
    dispatch thunk of PubSubClient.close()();
  }

  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15GroupActivities12TopicManagerC11ServiceNameO_AE18ConversationClientC0G0OTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  a1[2] = v7;
}

uint64_t TopicManager.Subscription.topicName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TopicManager.Subscription.topicName.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t TopicManager.Subscription.init(topicName:conversationClient:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_weakInit();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  swift_weakAssign();

  return v3;
}

uint64_t TopicManager.Subscription.deinit()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 224))(Strong);
  }

  swift_weakDestroy();
  return v0;
}