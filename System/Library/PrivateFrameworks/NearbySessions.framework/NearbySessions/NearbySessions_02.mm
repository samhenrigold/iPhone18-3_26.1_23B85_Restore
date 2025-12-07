Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v7 + 40);
      v19 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = NSObject._rawHashValue(seed:)(v18);
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v19;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t specialized Set._Variant.remove(_:)(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = specialized Set._Variant._migrateToNative(_:removing:)(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for NearbyAdvertisement(0);
  v10 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()(&_ss11_SetStorageCy14NearbySessions0C13AdvertisementCGMd, &_ss11_SetStorageCy14NearbySessions0C13AdvertisementCGMR);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  specialized _NativeSet._delete(at:)(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC14NearbySessions0E13AdvertisementC_Tt1g5Tm(v5, v4, &_ss11_SetStorageCy14NearbySessions0C13AdvertisementCGMd, &_ss11_SetStorageCy14NearbySessions0C13AdvertisementCGMR, type metadata accessor for NearbyAdvertisement);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = NSObject._rawHashValue(seed:)(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    type metadata accessor for NearbyAdvertisement(0);
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
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

  v14 = *(*(v6 + 48) + 8 * v10);
  specialized _NativeSet._delete(at:)(v10);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v3 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
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

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

void *specialized NearbyInvitationScanner.init(provider:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14NearbySessions0C13AdvertisementCGGMd, &_s7Combine9PublishedVyShy14NearbySessions0C13AdvertisementCGGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - v5;
  UUID.init()();
  v7 = direct field offset for NearbyInvitationScanner.invitationDataBlobs;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCySS_10Foundation4DataVts5NeverOGMd, &_s7Combine18PassthroughSubjectCySS_10Foundation4DataVts5NeverOGMR);
  swift_allocObject();
  *(v0 + v7) = PassthroughSubject.init()();
  v8 = direct field offset for NearbyInvitationScanner._advertisements;
  v9 = *(v2 + 80);
  v10 = *(v2 + 88);
  v15[1] = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14NearbySessions0A13AdvertisementCGMd, &_sShy14NearbySessions0A13AdvertisementCGMR);
  Published.init(initialValue:)();
  (*(v4 + 32))(v1 + v8, v6, v3);
  *(v1 + direct field offset for NearbyInvitationScanner.setup) = 0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static NearbyInvitationsController.shared;
  *(v1 + direct field offset for NearbyInvitationScanner.controller) = static NearbyInvitationsController.shared;
  type metadata accessor for NearbyInvitationScanner(0, v9, v10, v11);

  specialized NearbyInvitationsController.addObserver(_:)(v13, v12);

  return v1;
}

void *specialized NearbyInvitationScanner.init(provider:configuration:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14NearbySessions0C13AdvertisementCGGMd, &_s7Combine9PublishedVyShy14NearbySessions0C13AdvertisementCGGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - v7;
  UUID.init()();
  v9 = direct field offset for NearbyInvitationScanner.invitationDataBlobs;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCySS_10Foundation4DataVts5NeverOGMd, &_s7Combine18PassthroughSubjectCySS_10Foundation4DataVts5NeverOGMR);
  swift_allocObject();
  *(v1 + v9) = PassthroughSubject.init()();
  v10 = direct field offset for NearbyInvitationScanner._advertisements;
  v11 = *(v4 + 80);
  v12 = *(v4 + 88);
  v21[1] = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14NearbySessions0A13AdvertisementCGMd, &_sShy14NearbySessions0A13AdvertisementCGMR);
  Published.init(initialValue:)();
  (*(v6 + 32))(v2 + v10, v8, v5);
  if (a1)
  {
    v14 = objc_allocWithZone(MEMORY[0x277CFD160]);
    v15 = a1;
    v16 = [v14 init];
    v17 = [v16 wranglerHomePodBoopEnabled];

    if ((v17 & 1) == 0)
    {

      a1 = 0;
    }
  }

  *(v2 + direct field offset for NearbyInvitationScanner.setup) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v18 = static NearbyInvitationsController.shared;
  *(v2 + direct field offset for NearbyInvitationScanner.controller) = static NearbyInvitationsController.shared;
  type metadata accessor for NearbyInvitationScanner(0, v11, v12, v13);

  specialized NearbyInvitationsController.addObserver(_:)(v19, v18);

  return v2;
}

void type metadata completion function for NearbyInvitationScanner(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<Set<NearbyAdvertisement>>(319);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of NearbyInvitationScanner.start()()
{
  v4 = (*(*v0 + 248) + **(*v0 + 248));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in NearbyGroupTable.cleanUpIfNotPresent(_:);

  return v4();
}

uint64_t dispatch thunk of NearbyInvitationScanner.stop()()
{
  v4 = (*(*v0 + 256) + **(*v0 + 256));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in NearbyGroupTable.firstGroup();

  return v4();
}

void type metadata accessor for Published<Set<NearbyAdvertisement>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<Set<NearbyAdvertisement>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy14NearbySessions0A13AdvertisementCGMd, &_sShy14NearbySessions0A13AdvertisementCGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<Set<NearbyAdvertisement>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AddressableMember();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void partial apply for closure #1 in closure #2 in NearbyInvitationScanner<>.request(_:displayName:userInfo:)(NSObject *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  closure #1 in closure #2 in NearbyInvitationScanner<>.request(_:displayName:userInfo:)(a1, v3, v4);
}

uint64_t partial apply for closure #1 in closure #3 in NearbyInvitationScanner<>.request(_:displayName:userInfo:)(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions14InvitationBlobCs5Error_pGMd, &_sScCy14NearbySessions14InvitationBlobCs5Error_pGMR) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #3 in NearbyInvitationScanner<>.request(_:displayName:userInfo:)(a1, a2, v2 + v6, v9, v10, v11);
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for closure #1 in closure #1 in NearbyInvitationScanner<>.request(_:displayName:userInfo:)(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCSgs5Error_pGMd, &_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCSgs5Error_pGMR) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in NearbyInvitationScanner<>.request(_:displayName:userInfo:)(a1, a2, v2 + v6, v7);
}

void *partial apply for closure #1 in closure #1 in NearbyInvitationScanner.stop()(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);

  return closure #1 in closure #1 in NearbyInvitationScanner.stop()(a1);
}

uint64_t partial apply for closure #2 in closure #1 in NearbyInvitationScanner.start()(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  return closure #1 in closure #1 in NearbyInvitationScanner.start()(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t outlined init with copy of NearbyInvitation<NearbyGroup>.PendingMember(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions0A10InvitationC13PendingMemberVyAA0A5GroupC_GMd, &_s14NearbySessions0A10InvitationC13PendingMemberVyAA0A5GroupC_GMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of NearbyInvitation<NearbyGroup>.PendingMember(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions0A10InvitationC13PendingMemberVyAA0A5GroupC_GMd, &_s14NearbySessions0A10InvitationC13PendingMemberVyAA0A5GroupC_GMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double NearbyGroupSessionProvider.nearbyGroup.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t NearbyGroupSessionProvider.nearbyGroup.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

double NearbyGroupSessionProvider.members.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t NearbyGroupSessionProvider.members.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t NearbyGroupSessionProvider.id.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t NearbyGroupSessionProvider.id.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

double NearbyGroupSessionProvider.state.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t NearbyGroupSessionProvider.state.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t NearbyGroupSessionProvider.cancellables.setter(uint64_t a1)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t NearbyGroupSessionProvider.localMember.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  return outlined init with copy of (UUID, Bool)(v1 + v3, a1, &_s15GroupActivities6Member_pSgMd, &_s15GroupActivities6Member_pSgMR);
}

uint64_t NearbyGroupSessionProvider.localMember.setter(uint64_t a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  outlined assign with take of Member?(a1, v1 + v3);
  return swift_endAccess();
}

char *NearbyGroupSessionProvider.__allocating_init(nearbyGroup:activity:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_allocObject();
  v6 = specialized NearbyGroupSessionProvider.init(nearbyGroup:activity:)(a1, a2);
  (*(*(*(v3 + 80) - 8) + 8))(a2);

  return v6;
}

char *NearbyGroupSessionProvider.init(nearbyGroup:activity:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = specialized NearbyGroupSessionProvider.init(nearbyGroup:activity:)(a1, a2);
  (*(*(*(v4 + 80) - 8) + 8))(a2);

  return v5;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14NearbySessions0D5GroupC6MemberVG_0F10Activities011AddressableG0Vs5NeverOTg504_s14d12Sessions0A20f69SessionProviderC06nearbyC08activityACyxGAA0aC0C_xtcfc0C10Activities17iG12VAH0J0VXEfU_Tf1cn_nTm(uint64_t a1)
{
  v35 = type metadata accessor for AddressableMember();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v28[1] = v1;
  v37 = MEMORY[0x277D84F90];
  v30 = v4;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  v8 = v37;
  v9 = v30 + 56;
  result = _HashTable.startBucket.getter();
  v11 = result;
  v12 = v30;
  v13 = 0;
  v33 = v3 + 32;
  v34 = v3;
  v29 = v30 + 64;
  v31 = v7;
  v32 = v9;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v12 + 32))
  {
    v16 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_22;
    }

    v36 = *(v12 + 36);
    v17 = v12;

    AddressableMember.init(handle:)();
    v37 = v8;
    v18 = v6;
    v20 = *(v8 + 16);
    v19 = *(v8 + 24);
    if (v20 >= v19 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
      v8 = v37;
    }

    *(v8 + 16) = v20 + 1;
    result = (*(v34 + 32))(v8 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v20, v18, v35);
    v14 = 1 << *(v17 + 32);
    if (v11 >= v14)
    {
      goto LABEL_23;
    }

    v12 = v17;
    v9 = v32;
    v21 = *(v32 + 8 * v16);
    if ((v21 & (1 << v11)) == 0)
    {
      goto LABEL_24;
    }

    if (v36 != *(v12 + 36))
    {
      goto LABEL_25;
    }

    v6 = v18;
    v22 = v21 & (-2 << (v11 & 0x3F));
    if (v22)
    {
      v14 = __clz(__rbit64(v22)) | v11 & 0x7FFFFFFFFFFFFFC0;
      v15 = v31;
    }

    else
    {
      v23 = v16 << 6;
      v24 = v16 + 1;
      v25 = (v29 + 8 * v16);
      v15 = v31;
      while (v24 < (v14 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = outlined consume of Set<NearbyGroup.Member>.Index._Variant(v11, v36, 0);
          v12 = v30;
          v14 = __clz(__rbit64(v26)) + v23;
          goto LABEL_19;
        }
      }

      result = outlined consume of Set<NearbyGroup.Member>.Index._Variant(v11, v36, 0);
      v12 = v30;
LABEL_19:
      v6 = v18;
    }

    ++v13;
    v11 = v14;
    if (v13 == v15)
    {
      return v8;
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
  return result;
}

uint64_t closure #2 in NearbyGroupSessionProvider.init(nearbyGroup:activity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = type metadata accessor for AddressableMember();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VyShy14NearbySessions0E5GroupC6MemberVG_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VyShy14NearbySessions0E5GroupC6MemberVG_GGMR);
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D5GroupC6MemberVG_GMd, &_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D5GroupC6MemberVG_GMR);
  v5[21] = v8;
  v5[22] = *(v8 - 8);
  v5[23] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy14NearbySessions0F5GroupC6MemberVG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy14NearbySessions0F5GroupC6MemberVG_G_GMR);
  v5[24] = v9;
  v5[25] = *(v9 - 8);
  v5[26] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v5[27] = v10;
  v5[28] = *(v10 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in NearbyGroupSessionProvider.init(nearbyGroup:activity:), 0, 0);
}

uint64_t closure #2 in NearbyGroupSessionProvider.init(nearbyGroup:activity:)()
{
  v33 = v0;
  if (one-time initialization token for provider != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[33] = __swift_project_value_buffer(v1, static Log.provider);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v31 = v3;
    v4 = v0[31];
    v5 = v0[32];
    v6 = v0[27];
    v7 = v0[28];
    v8 = v0[12];
    v9 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v9 = 136315138;
    v10 = *(v7 + 16);
    v10(v5, v8 + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_id, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    outlined init with copy of (UUID, Bool)(v5, v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      v11 = 0xE300000000000000;
      v12 = 7104878;
    }

    else
    {
      v13 = v0[30];
      v14 = v0[28];
      v15 = v0[29];
      v16 = v0[27];
      (*(v14 + 32))(v13, v0[31], v16);
      v10(v15, v13, v16);
      v12 = String.init<A>(reflecting:)();
      v11 = v17;
      (*(v14 + 8))(v13, v16);
    }

    outlined destroy of NSObject?(v0[32], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v32);

    *(v9 + 4) = v18;
    _os_log_impl(&dword_25B7C4000, v2, v31, "Starting task to listen for NearbyGroup updates for members: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x25F86FE20](v30, -1, -1);
    MEMORY[0x25F86FE20](v9, -1, -1);
  }

  v20 = v0[22];
  v19 = v0[23];
  v21 = v0[20];
  v22 = v0[21];
  v23 = v0[18];
  v24 = v0[19];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14NearbySessions0C5GroupC6MemberVGGMd, &_s7Combine9PublishedVyShy14NearbySessions0C5GroupC6MemberVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  v25 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<Set<NearbyGroup.Member>>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D5GroupC6MemberVG_GMd, &_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D5GroupC6MemberVG_GMR, MEMORY[0x277CBCEC8]);
  MEMORY[0x25F86EF60](v22, v25);
  (*(v20 + 8))(v19, v22);
  AsyncPublisher.makeAsyncIterator()();
  (*(v24 + 8))(v21, v23);
  swift_beginAccess();
  v26 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<Set<NearbyGroup.Member>>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy14NearbySessions0F5GroupC6MemberVG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy14NearbySessions0F5GroupC6MemberVG_G_GMR, MEMORY[0x277CBCDD0]);
  v27 = swift_task_alloc();
  v0[34] = v27;
  *v27 = v0;
  v27[1] = closure #2 in NearbyGroupSessionProvider.init(nearbyGroup:activity:);
  v28 = v0[24];

  return MEMORY[0x282200308](v0 + 8, v28, v26);
}

{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = closure #2 in NearbyGroupSessionProvider.init(nearbyGroup:activity:);
  }

  else
  {
    v2 = closure #2 in NearbyGroupSessionProvider.init(nearbyGroup:activity:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  *(v0 + 288) = *(v0 + 64);
  return MEMORY[0x2822009F8](closure #2 in NearbyGroupSessionProvider.init(nearbyGroup:activity:), 0, 0);
}

{
  v35 = v0;
  v1 = v0[36];
  if (v1)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = Strong;

      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v34 = v7;
        *v6 = 136315138;
        lazy protocol witness table accessor for type NearbyGroup.Member and conformance NearbyGroup.Member();
        v8 = Set.description.getter();
        v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v34);

        *(v6 + 4) = v10;
        _os_log_impl(&dword_25B7C4000, v4, v5, "Updating session provider with participants: %s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v7);
        MEMORY[0x25F86FE20](v7, -1, -1);
        MEMORY[0x25F86FE20](v6, -1, -1);
      }

      v11 = v0[14];
      (*(*v3 + 176))();
      v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14NearbySessions0D5GroupC6MemberVG_0F10Activities011AddressableG0Vs5NeverOTg504_s14d12Sessions0A20f69SessionProviderC06nearbyC08activityACyxGAA0aC0C_xtcfc0C10Activities17iG12VAH0J0VXEfU_Tf1cn_nTm(v1);

      v13 = *(v12 + 16);
      v14 = lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember, MEMORY[0x277CCB298]);
      v15 = MEMORY[0x25F86F230](v13, v11, v14);
      v0[10] = v15;
      v16 = *(v12 + 16);
      if (v16)
      {
        v17 = v0[15];
        v18 = v12 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
        v19 = *(v17 + 72);
        v20 = *(v17 + 16);
        do
        {
          v22 = v0[16];
          v21 = v0[17];
          v24 = v0[14];
          v23 = v0[15];
          v20(v21, v18, v24);
          specialized Set._Variant.insert(_:)(v22, v21);
          (*(v23 + 8))(v22, v24);
          v18 += v19;
          --v16;
        }

        while (v16);

        v25 = v0[10];
      }

      else
      {
        v25 = v15;
      }

      v0[11] = v25;
      CurrentValueSubject.send(_:)();

      v31 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<Set<NearbyGroup.Member>>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy14NearbySessions0F5GroupC6MemberVG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy14NearbySessions0F5GroupC6MemberVG_G_GMR, MEMORY[0x277CBCDD0]);
      v32 = swift_task_alloc();
      v0[34] = v32;
      *v32 = v0;
      v32[1] = closure #2 in NearbyGroupSessionProvider.init(nearbyGroup:activity:);
      v33 = v0[24];

      return MEMORY[0x282200308](v0 + 8, v33, v31);
    }

    (*(v0[25] + 8))(v0[26], v0[24]);
  }

  else
  {
    (*(v0[25] + 8))(v0[26], v0[24]);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_25B7C4000, v26, v27, "Subscription ended on NearbySession", v28, 2u);
      MEMORY[0x25F86FE20](v28, -1, -1);
    }
  }

  v29 = v0[1];

  return v29();
}

{
  *(v0 + 72) = *(v0 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of (UUID, Bool)(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
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

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

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

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
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

uint64_t closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v8 = type metadata accessor for GroupSessionProviderState();
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy14NearbySessions0E5GroupC5StateO_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy14NearbySessions0E5GroupC5StateO_GGMR);
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14NearbySessions0D5GroupC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy14NearbySessions0D5GroupC5StateO_GMR);
  v7[20] = v10;
  v7[21] = *(v10 - 8);
  v7[22] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy14NearbySessions0F5GroupC5StateO_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy14NearbySessions0F5GroupC5StateO_G_GMR);
  v7[23] = v11;
  v7[24] = *(v11 - 8);
  v7[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:), 0, 0);
}

uint64_t closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:)()
{
  if (one-time initialization token for provider != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 208) = __swift_project_value_buffer(v1, static Log.provider);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25B7C4000, v2, v3, "Starting task to listen for NearbyGroup state updates.", v4, 2u);
    MEMORY[0x25F86FE20](v4, -1, -1);
  }

  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v7 = *(v0 + 152);
  v8 = *(v0 + 160);
  v9 = *(v0 + 136);
  v10 = *(v0 + 144);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14NearbySessions0C5GroupC5StateOGMd, &_s7Combine9PublishedVy14NearbySessions0C5GroupC5StateOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  v11 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<NearbyGroup.State>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy14NearbySessions0D5GroupC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy14NearbySessions0D5GroupC5StateO_GMR, MEMORY[0x277CBCEC8]);
  MEMORY[0x25F86EF60](v8, v11);
  (*(v6 + 8))(v5, v8);
  AsyncPublisher.makeAsyncIterator()();
  (*(v10 + 8))(v7, v9);
  swift_beginAccess();
  *(v0 + 256) = *MEMORY[0x277CCB1A0];
  v12 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<NearbyGroup.State>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy14NearbySessions0F5GroupC5StateO_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy14NearbySessions0F5GroupC5StateO_G_GMR, MEMORY[0x277CBCDD0]);
  v13 = swift_task_alloc();
  *(v0 + 216) = v13;
  *v13 = v0;
  v13[1] = closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:);
  v14 = *(v0 + 184);

  return MEMORY[0x282200308](v0 + 64, v14, v12);
}

{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:);
  }

  else
  {
    v2 = closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return MEMORY[0x2822009F8](closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:), 0, 0);
}

{
  v23 = v0;
  v1 = v0[8];
  v0[29] = v1;
  if (v1 < 2)
  {
    outlined consume of NearbyGroup.State?(v1);
    v2 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<NearbyGroup.State>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy14NearbySessions0F5GroupC5StateO_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy14NearbySessions0F5GroupC5StateO_G_GMR, MEMORY[0x277CBCDD0]);
    v3 = swift_task_alloc();
    v0[27] = v3;
    *v3 = v0;
    v3[1] = closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:);
    v4 = v0[23];

    return MEMORY[0x282200308](v0 + 8, v4, v2);
  }

  if (v1 == 2)
  {
    (*(v0[24] + 8))(v0[25], v0[23]);
  }

  else
  {
    v5 = v1;
    outlined copy of NearbyGroup.State?(v1);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136315138;
      v10 = NearbyGroup.description.getter();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v22);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_25B7C4000, v6, v7, "NearbyGroup %s invalidated.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x25F86FE20](v9, -1, -1);
      MEMORY[0x25F86FE20](v8, -1, -1);
    }

    Strong = swift_weakLoadStrong();
    v0[30] = Strong;
    if (Strong)
    {
      v15 = v0[12];
      v14 = v0[13];
      v16 = swift_task_alloc();
      v0[31] = v16;
      v18 = type metadata accessor for NearbyGroupSessionProvider(0, v15, v14, v17);
      WitnessTable = swift_getWitnessTable();
      *v16 = v0;
      v16[1] = closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:);

      return MEMORY[0x28211FBF8](v18, WitnessTable);
    }

    (*(v0[24] + 8))(v0[25], v0[23]);
    outlined consume of NearbyGroup.State?(v5);
    outlined consume of NearbyGroup.State?(v5);
  }

  v20 = v0[1];

  return v20();
}

{
  *(v0 + 72) = *(v0 + 224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

{

  if (v0)
  {

    v1 = closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:);
  }

  else
  {
    v1 = closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:);
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

{
  v1 = *(v0 + 232);
  v2 = *(v0 + 256);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 112);
  (*(**(v0 + 240) + 224))();
  *v3 = v1;
  (*(v4 + 104))(v3, v2, v5);
  outlined copy of NearbyGroup.State(v1);
  CurrentValueSubject.send(_:)();

  outlined consume of NearbyGroup.State?(v1);
  outlined consume of NearbyGroup.State?(v1);
  (*(v4 + 8))(v3, v5);
  v6 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<NearbyGroup.State>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy14NearbySessions0F5GroupC5StateO_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy14NearbySessions0F5GroupC5StateO_G_GMR, MEMORY[0x277CBCDD0]);
  v7 = swift_task_alloc();
  *(v0 + 216) = v7;
  *v7 = v0;
  v7[1] = closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:);
  v8 = *(v0 + 184);

  return MEMORY[0x282200308](v0 + 64, v8, v6);
}

char *NearbyGroupSessionProvider.deinit()
{
  v1 = v0;
  v2 = *v0;
  if (one-time initialization token for provider != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.provider);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = (*(*v0 + 304))();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_25B7C4000, v4, v5, "%s Deinit'd", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x25F86FE20](v7, -1, -1);
    MEMORY[0x25F86FE20](v6, -1, -1);
  }

  else
  {
  }

  (*(*(*(v2 + 80) - 8) + 8))(v1 + *(*v1 + 128));

  outlined destroy of NSObject?(v1 + *(*v1 + 144), &_s15GroupActivities6Member_pSgMd, &_s15GroupActivities6Member_pSgMR);
  return v1;
}

uint64_t NearbyGroupSessionProvider.__deallocating_deinit()
{
  NearbyGroupSessionProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t NearbyGroupSessionProvider.description.getter()
{
  _StringGuts.grow(_:)(48);
  MEMORY[0x25F86F070](0xD00000000000001BLL, 0x800000025B8307D0);
  v1 = _typeName(_:qualified:)();
  MEMORY[0x25F86F070](v1);

  MEMORY[0x25F86F070](0x203A666C6573283ELL, 0xE800000000000000);
  _print_unlocked<A, B>(_:_:)();
  v2 = MEMORY[0x25F86F070](0x203A6469202CLL, 0xE600000000000000);
  v3 = (*(*v0 + 200))(v2);
  MEMORY[0x25F86F070](v3);

  MEMORY[0x25F86F070](41, 0xE100000000000000);
  return 0;
}

uint64_t protocol witness for Identifiable.id.getter in conformance NearbyGroupSessionProvider<A>@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 200))();
  *a1 = result;
  a1[1] = v4;
  return result;
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

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
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

char *specialized NearbyGroupSessionProvider.init(nearbyGroup:activity:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = *v2;
  v33 = a2;
  v34 = v32;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v32 - v6;
  v7 = type metadata accessor for GroupSessionProviderState();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *MEMORY[0x277CCB1A8];
  v12 = *(v8 + 104);
  v12(v10, v11, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities0E20SessionProviderStateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities0E20SessionProviderStateOs5NeverOGMR);
  swift_allocObject();
  v2[6] = CurrentValueSubject.init(_:)();
  v13 = v2 + 6;
  *(v2 + *(*v2 + 136)) = MEMORY[0x277D84FA0];
  v14 = &v3[*(*v3 + 144)];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  v2[4] = UUID.uuidString.getter();
  v2[5] = v15;
  v12(v10, v11, v7);
  swift_allocObject();
  v16 = CurrentValueSubject.init(_:)();
  swift_beginAccess();
  *v13 = v16;

  v17 = *(v32 + 80);
  (*(*(v17 - 8) + 16))(&v3[*(*v3 + 128)], v33, v17);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v18 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14NearbySessions0D5GroupC6MemberVG_0F10Activities011AddressableG0Vs5NeverOTg504_s14d12Sessions0A20f69SessionProviderC06nearbyC08activityACyxGAA0aC0C_xtcfc0C10Activities17iG12VAH0J0VXEfU_Tf1cn_nTm(v36);

  v19 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15GroupActivities17AddressableMemberV_SayAFGTt0g5Tf4g_n(v18);

  *&v36 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMR);
  swift_allocObject();
  v20 = CurrentValueSubject.init(_:)();
  *(v3 + 2) = a1;
  *(v3 + 3) = v20;
  v21 = a1 + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_localMemberHandle;
  swift_beginAccess();
  if (*(v21 + 8))
  {
    *(&v37 + 1) = type metadata accessor for AddressableMember();
    v38 = lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember, MEMORY[0x277CCB288]);
    __swift_allocate_boxed_opaque_existential_1(&v36);

    AddressableMember.init(handle:)();
  }

  else
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
  }

  v22 = *(*v3 + 144);
  swift_beginAccess();
  outlined assign with take of Member?(&v36, &v3[v22]);
  swift_endAccess();
  v23 = type metadata accessor for TaskPriority();
  v24 = *(v23 - 8);
  v32 = *(v24 + 56);
  v33 = v24 + 56;
  v25 = v35;
  (v32)(v35, 1, 1, v23);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v17;
  v34 = *(v34 + 88);
  v27[5] = v34;
  v27[6] = a1;
  v27[7] = v26;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v25, &async function pointer to partial apply for closure #2 in NearbyGroupSessionProvider.init(nearbyGroup:activity:), v27);
  type metadata accessor for AnyCancellable();
  swift_allocObject();

  AnyCancellable.init(_:)();
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  (v32)(v25, 1, 1, v23);
  v28 = swift_allocObject();
  swift_weakInit();

  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v30 = v34;
  v29[4] = v17;
  v29[5] = v30;
  v29[6] = a1;
  v29[7] = v28;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v25, &async function pointer to partial apply for closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:), v29);
  swift_allocObject();

  AnyCancellable.init(_:)();
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v3;
}

uint64_t type metadata completion function for NearbyGroupSessionProvider(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t outlined assign with take of Member?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities6Member_pSgMd, &_s15GroupActivities6Member_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in NearbyGroupSessionProvider.init(nearbyGroup:activity:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[6];
  v6 = v1[7];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in NearbyGroupTable.firstGroup();

  return closure #2 in NearbyGroupSessionProvider.init(nearbyGroup:activity:)(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_26Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t partial apply for closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in NearbyGroupTable.cleanUpIfNotPresent(_:);

  return closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:)(a1, v6, v7, v9, v8, v4, v5);
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

void outlined consume of NearbyGroup.State?(id a1)
{
  if (a1 != 2)
  {
    outlined consume of NearbyGroup.State(a1);
  }
}

id outlined copy of NearbyGroup.State?(id result)
{
  if (result != 2)
  {
    return outlined copy of NearbyGroup.State(result);
  }

  return result;
}

id outlined copy of NearbyGroup.State(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in NearbyGroupTable.cleanUpIfNotPresent(_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_43(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in NearbyGroupTable.firstGroup();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t outlined consume of Set<NearbyGroup.Member>.Index._Variant(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t NearbyGroup.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NearbyGroupMember();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject, type metadata accessor for NearbyGroupMember, MEMORY[0x277D85378]);
    result = Set.Iterator.init(_cocoa:)();
    v2 = v28;
    v4 = v29;
    v6 = v30;
    v5 = v31;
    v7 = v32;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v6 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v5 = 0;
  }

  v11 = (v6 + 64) >> 6;
  v12 = MEMORY[0x277D84F90];
  v25 = v4;
  v26 = v2;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v5;
    v14 = v7;
    v15 = v5;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v2 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_22:
      outlined consume of Set<NearbyGroupMember>.Iterator._Variant(v2);
      return v12;
    }

    while (1)
    {
      v27 = v16;
      v19 = *&v17[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_handle];
      v18 = *&v17[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_handle + 8];
      v20 = *&v17[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_tokenID];
      v21 = *&v17[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_tokenID + 8];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1, v12);
        v12 = result;
      }

      v23 = *(v12 + 16);
      v22 = *(v12 + 24);
      if (v23 >= v22 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v12);
        v12 = result;
      }

      *(v12 + 16) = v23 + 1;
      v24 = (v12 + 32 * v23);
      v24[4] = v19;
      v24[5] = v18;
      v24[6] = v20;
      v24[7] = v21;
      v5 = v15;
      v2 = v26;
      v7 = v27;
      v4 = v25;
      if ((v26 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NearbyGroupMember();
        swift_dynamicCast();
        v17 = v33;
        v15 = v5;
        v16 = v7;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
      goto LABEL_22;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySDy10Foundation4UUIDV14NearbySessions0L19GroupConnectionInfoCG_G_G_Tg5(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySDy10Foundation4UUIDV14NearbySessions0H19GroupConnectionInfoCG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySDy10Foundation4UUIDV14NearbySessions0H19GroupConnectionInfoCG_G_GMR);
  v4 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<[UUID : NearbyGroupConnectionInfo]>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySDy10Foundation4UUIDV14NearbySessions0H19GroupConnectionInfoCG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySDy10Foundation4UUIDV14NearbySessions0H19GroupConnectionInfoCG_G_GMR, MEMORY[0x277CBCDD0]);
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySDy10Foundation4UUIDV14NearbySessions0L19GroupConnectionInfoCG_G_G_Tg5TQ0_;

  return MEMORY[0x282200308](v2 + 2, v3, v4);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySDy10Foundation4UUIDV14NearbySessions0L19GroupConnectionInfoCG_G_G_Tg5TQ0_()
{
  v2 = *(*v1 + 32);
  *(*v1 + 56) = v0;

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

    v6 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySDy10Foundation4UUIDV14NearbySessions0L19GroupConnectionInfoCG_G_G_Tg5TY2_;
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

    v6 = NearbyInvitationsController.createGroup(with:);
  }

  return MEMORY[0x2822009F8](v6, v3, v5);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySDy10Foundation4UUIDV14NearbySessions0L19GroupConnectionInfoCG_G_G_Tg5TY2_()
{
  v0[3] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t InvitationRequest<>.request()(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy14NearbySessions0D5GroupC__GMd, &_sScS12ContinuationV15BufferingPolicyOy14NearbySessions0D5GroupC__GMR);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A5GroupCGMd, &_sScSy14NearbySessions0A5GroupCGMR);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy14NearbySessions0B5GroupC_GMd, &_sScS8IteratorVy14NearbySessions0B5GroupC_GMR);
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](InvitationRequest<>.request(), 0, 0);
}

{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v4 = InvitationRequest<>.request();
  }

  else
  {
    v4 = InvitationRequest<>.request();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t InvitationRequest<>.request()()
{
  v14 = v0;
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[26] = __swift_project_value_buffer(v1, static Log.group);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[9];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v0[7] = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions17InvitationRequestCyAA0A5GroupCGMd, &_s14NearbySessions17InvitationRequestCyAA0A5GroupCGMR);
    v7 = String.init<A>(reflecting:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25B7C4000, v2, v3, "Requesting to be let in with request: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x25F86FE20](v6, -1, -1);
    MEMORY[0x25F86FE20](v5, -1, -1);
  }

  v12 = (*(*v0[9] + 200) + **(*v0[9] + 200));
  v10 = swift_task_alloc();
  v0[27] = v10;
  *v10 = v0;
  v10[1] = InvitationRequest<>.request();

  return v12();
}

{
  v50 = v0;
  v1 = *(v0 + 224);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 224);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v49[0] = v6;
    *v5 = 136315138;
    v7 = *(v4 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_sessionIdentifier + 8);
    if (v7)
    {
      *(v0 + 16) = *(v4 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_sessionIdentifier);
      *(v0 + 24) = v7;

      v8 = String.init<A>(reflecting:)();
      v10 = v9;
    }

    else
    {
      v10 = 0xE300000000000000;
      v8 = 7104878;
    }

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v49);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_25B7C4000, v2, v3, "Waiting for group with ID: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x25F86FE20](v6, -1, -1);
    MEMORY[0x25F86FE20](v5, -1, -1);
  }

  v12 = *(v0 + 224);
  if (!*&v12[OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_sessionIdentifier + 8])
  {
    goto LABEL_9;
  }

  v13 = *(v0 + 168);
  v14 = *(v0 + 176);
  v15 = *(v0 + 160);

  UUID.init(uuidString:)();

  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    outlined destroy of NSObject?(*(v0 + 160), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v12 = *(v0 + 224);
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions17InvitationRequestC6ErrorsOyAA0A5GroupC_GMd, &_s14NearbySessions17InvitationRequestC6ErrorsOyAA0A5GroupC_GMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type InvitationRequest<NearbyGroup>.Errors and conformance InvitationRequest<A>.Errors, &_s14NearbySessions17InvitationRequestC6ErrorsOyAA0A5GroupC_GMd, &_s14NearbySessions17InvitationRequestC6ErrorsOyAA0A5GroupC_GMR, "yѠ&ȁ");
    v16 = swift_allocError();
    *v17 = 2;
    swift_willThrow();

    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 72);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v49[0] = v23;
      *v22 = 136315394;
      *(v0 + 32) = v21;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions17InvitationRequestCyAA0A5GroupCGMd, &_s14NearbySessions17InvitationRequestCyAA0A5GroupCGMR);
      v24 = String.init<A>(reflecting:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v49);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      *(v0 + 40) = v16;
      v27 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v28 = String.init<A>(reflecting:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v49);

      *(v22 + 14) = v30;
      _os_log_impl(&dword_25B7C4000, v19, v20, "%s failed to request access, reason: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F86FE20](v23, -1, -1);
      MEMORY[0x25F86FE20](v22, -1, -1);
    }

    swift_willThrow();

    v31 = *(v0 + 8);

    return v31();
  }

  v33 = *(v0 + 200);
  v34 = *(v0 + 168);
  v35 = *(v0 + 176);
  v36 = *(v0 + 152);
  (*(v35 + 32))(v33, *(v0 + 160), v34);
  v37 = *(v35 + 16);
  *(v0 + 240) = v37;
  *(v0 + 248) = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v37(v36, v33, v34);
  (*(v35 + 56))(v36, 0, 1, v34);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 152);
  v40 = *(v0 + 112);
  v39 = *(v0 + 120);
  v42 = *(v0 + 96);
  v41 = *(v0 + 104);
  v44 = *(v0 + 80);
  v43 = *(v0 + 88);
  v45 = static NearbyInvitationsController.shared;
  v46 = swift_task_alloc();
  *(v46 + 16) = v45;
  *(v46 + 24) = v38;
  type metadata accessor for NearbyGroup(0);
  (*(v43 + 104))(v42, *MEMORY[0x277D85778], v44);
  AsyncStream.init(_:bufferingPolicy:_:)();

  outlined destroy of NSObject?(v38, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  AsyncStream.makeAsyncIterator()();
  (*(v40 + 8))(v39, v41);
  v47 = swift_task_alloc();
  *(v0 + 256) = v47;
  *v47 = v0;
  v47[1] = InvitationRequest<>.request();
  v48 = *(v0 + 128);

  return MEMORY[0x2822003E8](v0 + 48, 0, 0, v48);
}

{

  return MEMORY[0x2822009F8](InvitationRequest<>.request(), 0, 0);
}

{
  v61 = v0;
  v1 = *(v0 + 48);
  if (v1)
  {
    (*(v0 + 240))(*(v0 + 192), *(v0 + 200), *(v0 + 168));

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    v59 = v1;
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 240);
      v52 = *(v0 + 192);
      v54 = v3;
      v5 = *(v0 + 176);
      v6 = *(v0 + 184);
      v7 = *(v0 + 168);
      v57 = *(v0 + 144);
      v58 = *(v0 + 200);
      v55 = *(v0 + 136);
      v56 = *(v0 + 128);
      v8 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v60[0] = v53;
      *v8 = 136315394;
      v4(v6, v1 + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_id, v7);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = v10;
      v12 = *(v5 + 8);
      v12(v6, v7);
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v60);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2080;
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v12(v52, v7);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v60);

      *(v8 + 14) = v17;
      _os_log_impl(&dword_25B7C4000, v2, v54, "Observed group: %s, waiting for %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F86FE20](v53, -1, -1);
      MEMORY[0x25F86FE20](v8, -1, -1);

      (*(v55 + 8))(v57, v56);
      v12(v58, v7);
    }

    else
    {
      v40 = *(v0 + 192);
      v39 = *(v0 + 200);
      v42 = *(v0 + 168);
      v41 = *(v0 + 176);
      v44 = *(v0 + 136);
      v43 = *(v0 + 144);
      v45 = *(v0 + 128);

      v46 = *(v41 + 8);
      v46(v40, v42);
      (*(v44 + 8))(v43, v45);
      v46(v39, v42);
    }

    v47 = *(v0 + 224);
    v48 = *(v0 + 64);
    v49 = *&v47[OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_userInfo];
    v50 = *&v47[OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_userInfo + 8];
    outlined copy of Data?(v49, v50);

    *v48 = v49;
    v48[1] = v50;

    v51 = *(v0 + 8);

    return v51(v59);
  }

  else
  {
    v18 = *(v0 + 224);
    v19 = *(v0 + 200);
    v20 = *(v0 + 168);
    v21 = *(v0 + 176);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions17InvitationRequestC6ErrorsOyAA0A5GroupC_GMd, &_s14NearbySessions17InvitationRequestC6ErrorsOyAA0A5GroupC_GMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type InvitationRequest<NearbyGroup>.Errors and conformance InvitationRequest<A>.Errors, &_s14NearbySessions17InvitationRequestC6ErrorsOyAA0A5GroupC_GMd, &_s14NearbySessions17InvitationRequestC6ErrorsOyAA0A5GroupC_GMR, "yѠ&ȁ");
    v22 = swift_allocError();
    *v23 = 0;
    swift_willThrow();

    (*(v21 + 8))(v19, v20);

    v24 = v22;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 72);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v60[0] = v29;
      *v28 = 136315394;
      *(v0 + 32) = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions17InvitationRequestCyAA0A5GroupCGMd, &_s14NearbySessions17InvitationRequestCyAA0A5GroupCGMR);
      v30 = String.init<A>(reflecting:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v60);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      *(v0 + 40) = v22;
      v33 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v34 = String.init<A>(reflecting:)();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v60);

      *(v28 + 14) = v36;
      _os_log_impl(&dword_25B7C4000, v25, v26, "%s failed to request access, reason: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F86FE20](v29, -1, -1);
      MEMORY[0x25F86FE20](v28, -1, -1);
    }

    swift_willThrow();

    v37 = *(v0 + 8);

    return v37();
  }
}

{
  v18 = v0;
  v1 = v0[29];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17[0] = v7;
    *v6 = 136315394;
    v0[4] = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions17InvitationRequestCyAA0A5GroupCGMd, &_s14NearbySessions17InvitationRequestCyAA0A5GroupCGMR);
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v17);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v0[5] = v1;
    v11 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v17);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_25B7C4000, v3, v4, "%s failed to request access, reason: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v7, -1, -1);
    MEMORY[0x25F86FE20](v6, -1, -1);
  }

  swift_willThrow();

  v15 = v0[1];

  return v15();
}

{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = NearbyInvitationScanner<>.request(_:displayName:userInfo:);

  return InvitationRequest<>.request()(v0 + 16);
}

uint64_t NearbyGroup.members.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_14NearbySessions0D11GroupMemberCs5NeverOTg504_s14d11Sessions0A5f71C7members7serviceACShySSG_AA0A25InvitationSessionProviderOtYaKcfcAA0aC6G8CSSXEfU_Tf1cn_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v29 = MEMORY[0x277D84F90];
    v26 = a1;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v26 + 56;
    result = _HashTable.startBucket.getter();
    v5 = v26;
    v6 = result;
    v7 = 0;
    v8 = *(v26 + 36);
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v5 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v5 + 36))
      {
        goto LABEL_22;
      }

      v27 = v7;
      v11 = v4;
      v12 = (*(v5 + 48) + 16 * v6);
      v14 = *v12;
      v13 = v12[1];
      v15 = type metadata accessor for NearbyGroupMember();
      v16 = objc_allocWithZone(v15);
      v17 = &v16[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_handle];
      *v17 = v14;
      *(v17 + 1) = v13;
      v18 = &v16[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_tokenID];
      *v18 = 0;
      *(v18 + 1) = 0;
      v28.receiver = v16;
      v28.super_class = v15;

      objc_msgSendSuper2(&v28, sel_init);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v5 = v26;
      v9 = 1 << *(v26 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v19 = *(v11 + 8 * v10);
      if ((v19 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v26 + 36))
      {
        goto LABEL_25;
      }

      v4 = v11;
      v20 = v19 & (-2 << (v6 & 0x3F));
      if (v20)
      {
        v9 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (v26 + 64 + 8 * v10);
        while (v22 < (v9 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = outlined consume of Set<NearbyGroup.Member>.Index._Variant(v6, v8, 0);
            v5 = v26;
            v9 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<NearbyGroup.Member>.Index._Variant(v6, v8, 0);
        v5 = v26;
      }

LABEL_4:
      v7 = v27 + 1;
      v6 = v9;
      if (v27 + 1 == v2)
      {
        return v29;
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
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t NearbyGroup.$members.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t NearbyGroup.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14NearbySessions11NearbyGroup_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

Swift::Int NearbyGroup.Errors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F86F720](a1);
  return Hasher._finalize()();
}

uint64_t NearbyGroup.Member.handle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NearbyGroup.Member.handle.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NearbyGroup.Member.tokenDestination.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NearbyGroup.Member.tokenDestination.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static NearbyGroup.Member.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

void NearbyGroup.Member.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  String.hash(into:)();
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

Swift::Int NearbyGroup.Member.hashValue.getter()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

NearbySessions::NearbyGroup::Member __swiftcall NearbyGroup.Member.init(handle:tokenDestination:)(Swift::String handle, Swift::String_optional tokenDestination)
{
  v2->value = handle;
  v2[1] = tokenDestination;
  result.tokenDestination = tokenDestination;
  result.handle = handle;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NearbyGroup.Member()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance NearbyGroup.Member(uint64_t a1)
{
  v2 = *(v1 + 24);
  String.hash(into:)();
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

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NearbyGroup.Member(uint64_t a1)
{
  v2 = *(v1 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NearbyGroup.Member(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t key path getter for NearbyGroup.members : NearbyGroup@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t key path setter for NearbyGroup.members : NearbyGroup(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for NearbyGroup.$members : NearbyGroup(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D5GroupC6MemberVG_GMd, &_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D5GroupC6MemberVG_GMR);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14NearbySessions0C5GroupC6MemberVGGMd, &_s7Combine9PublishedVyShy14NearbySessions0C5GroupC6MemberVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t key path getter for NearbyGroup.state : NearbyGroup@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t key path setter for NearbyGroup.state : NearbyGroup(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined copy of NearbyGroup.State(v2);

  return static Published.subscript.setter();
}

uint64_t key path getter for NearbyGroup.$members : NearbyGroup(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for NearbyGroup.$state : NearbyGroup(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14NearbySessions0D5GroupC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy14NearbySessions0D5GroupC5StateO_GMR);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14NearbySessions0C5GroupC5StateOGMd, &_s7Combine9PublishedVy14NearbySessions0C5GroupC5StateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t NearbyGroup.localMemberHandle.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_localMemberHandle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t NearbyGroup.__allocating_init(members:service:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for UUID();
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](NearbyGroup.__allocating_init(members:service:), 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](NearbyGroup.__allocating_init(members:service:), 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t NearbyGroup.__allocating_init(members:service:)()
{
  v1 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_14NearbySessions0D11GroupMemberCs5NeverOTg504_s14d11Sessions0A5f71C7members7serviceACShySSG_AA0A25InvitationSessionProviderOtYaKcfcAA0aC6G8CSSXEfU_Tf1cn_n(v0[2]);

  UUID.init()();
  v2 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14NearbySessions0B11GroupMemberC_SayAFGTt0g5Tf4g_n(v1);

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static NearbyInvitationsController.shared;

  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = NearbyGroup.__allocating_init(members:service:);
  v5 = v0[3];

  return specialized NearbyGroup.__allocating_init(id:members:controller:)(v5, v2, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t NearbyGroup.__allocating_init(id:members:controller:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = NearbyGroup.__allocating_init(id:members:controller:);

  return specialized NearbyGroup.__allocating_init(id:members:controller:)(a1, a2, a3);
}

uint64_t NearbyGroup.__allocating_init(id:members:controller:)(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t NearbyGroup.__allocating_init(connectionInfo:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](NearbyGroup.__allocating_init(connectionInfo:), 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 56);
  *(*v2 + 72) = v1;

  if (v1)
  {
    v6 = NearbyGroup.__allocating_init(connectionInfo:);
  }

  else
  {
    *(v4 + 80) = a1;
    v6 = NearbyGroup.__allocating_init(connectionInfo:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t NearbyGroup.__allocating_init(connectionInfo:)()
{
  v1 = v0[2];
  (*(v0[5] + 16))(v0[6], v1 + OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_id, v0[4]);
  v2 = *(v1 + OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_endpoint);
  v0[7] = v2;
  swift_allocObject();
  v3 = v2;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = NearbyGroup.__allocating_init(connectionInfo:);
  v5 = v0[6];

  return specialized NearbyGroup.init(id:endpoint:)(v5, v3);
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in NearbyGroup.init(id:members:controller:)(uint64_t a1)
{
  v4 = *(v1 + 8);

  return v4(v2);
}

uint64_t NearbyGroup.__allocating_init(id:endpoint:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  swift_allocObject();
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = NearbyGroup.__allocating_init(id:endpoint:);

  return specialized NearbyGroup.init(id:endpoint:)(a1, a2);
}

uint64_t NearbyGroup.__allocating_init(id:endpoint:)(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t NearbyGroup.init(id:endpoint:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = NearbyGroup.init(id:endpoint:);

  return specialized NearbyGroup.init(id:endpoint:)(a1, a2);
}

uint64_t closure #1 in NearbyGroup.init(id:endpoint:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    lazy protocol witness table accessor for type NearbyGroup.Errors and conformance NearbyGroup.Errors();
    v2 = swift_allocError();
    *v3 = 0;
    NearbyGroup.invalidate(reason:)(v2);
  }

  return result;
}

uint64_t NearbyGroup.invalidate(reason:)(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.group);

  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26 = v3;
    v12 = v11;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v12 = 136315394;
    v15 = NearbyGroup.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, aBlock);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = a1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    _os_log_impl(&dword_25B7C4000, v9, v10, "%s Invalidating for reason: %@", v12, 0x16u);
    outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x25F86FE20](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x25F86FE20](v14, -1, -1);
    v20 = v12;
    v3 = v26;
    MEMORY[0x25F86FE20](v20, -1, -1);
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v1;
  *(v21 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in NearbyGroup.invalidate(reason:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_1;
  v22 = _Block_copy(aBlock);

  v23 = a1;
  static DispatchQoS.unspecified.getter();
  v31 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  v24 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F86F310](0, v6, v24, v22);
  _Block_release(v22);
  (*(v30 + 8))(v24, v3);
  (*(v27 + 8))(v6, v29);
}

uint64_t closure #2 in NearbyGroup.init(id:endpoint:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_queue);
    v12 = result;
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = v12;
    v18 = v12;
    aBlock[4] = partial apply for closure #1 in closure #2 in NearbyGroup.init(id:endpoint:);
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_147_0;
    v14 = v8;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v20 = MEMORY[0x277D84F90];
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v17 = v7;
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x25F86F310](0, v10, v6, v15);
    _Block_release(v15);
    (*(v4 + 8))(v6, v3);
    (*(v14 + 8))(v10, v17);
  }

  return result;
}

uint64_t closure #1 in closure #2 in NearbyGroup.init(id:endpoint:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.group);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14NearbySessions0A11GroupMemberCGMd, &_sShy14NearbySessions0A11GroupMemberCGMR);
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25B7C4000, v4, v5, "Received updated membership list %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x25F86FE20](v7, -1, -1);
    MEMORY[0x25F86FE20](v6, -1, -1);
  }

  v12 = specialized Sequence.compactMap<A>(_:)(a1, v11);
  v13 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14NearbySessions0B5GroupC6MemberV_SayAHGTt0g5Tf4g_n(v12);

  swift_getKeyPath();
  swift_getKeyPath();
  v15 = v13;

  return static Published.subscript.setter();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #3 in NearbyGroup.init(id:endpoint:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.group);

  v10 = a4;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v11, v12))
  {

    if (!a4)
    {
      goto LABEL_19;
    }

LABEL_7:

    v20 = a4;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v55[0] = v24;
      *v23 = 136315394;
      v25 = NearbyGroup.description.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v55);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v54[0] = a4;
      v28 = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v29 = String.init<A>(reflecting:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v55);

      *(v23 + 14) = v31;
      _os_log_impl(&dword_25B7C4000, v21, v22, "%s was told an error remotely when trying to join %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F86FE20](v24, -1, -1);
      MEMORY[0x25F86FE20](v23, -1, -1);
    }

    v55[0] = a4;
    goto LABEL_10;
  }

  v13 = swift_slowAlloc();
  v52 = swift_slowAlloc();
  v54[0] = v52;
  *v13 = 136315906;
  v14 = NearbyGroup.description.getter();
  v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v54);

  *(v13 + 4) = v16;
  *(v13 + 12) = 2080;
  if (a2)
  {
    v55[0] = a1;
    v55[1] = a2;

    v17 = String.init<A>(reflecting:)();
    v19 = v18;
  }

  else
  {
    v19 = 0xE300000000000000;
    v17 = 7104878;
  }

  v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v54);

  *(v13 + 14) = v33;
  *(v13 + 22) = 2080;
  if (a3)
  {
    v55[0] = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14NearbySessions0A11GroupMemberCGMd, &_sShy14NearbySessions0A11GroupMemberCGMR);
    v34 = String.init<A>(reflecting:)();
    v36 = v35;
  }

  else
  {
    v36 = 0xE300000000000000;
    v34 = 7104878;
  }

  v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v54);

  *(v13 + 24) = v37;
  *(v13 + 32) = 2080;
  if (a4)
  {
    v55[0] = a4;
    v38 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v39 = String.init<A>(reflecting:)();
    v41 = v40;
  }

  else
  {
    v41 = 0xE300000000000000;
    v39 = 7104878;
  }

  v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v54);

  *(v13 + 34) = v42;
  _os_log_impl(&dword_25B7C4000, v11, v12, "%s received response: (localHandle: %s, members: %s, error: %s)", v13, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x25F86FE20](v52, -1, -1);
  MEMORY[0x25F86FE20](v13, -1, -1);

  if (a4)
  {
    goto LABEL_7;
  }

LABEL_19:
  if (!a3)
  {
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_25B7C4000, v47, v48, "Received invalid callback where we didn't have an error, but also didn't have a membership list!", v49, 2u);
      MEMORY[0x25F86FE20](v49, -1, -1);
    }

    lazy protocol witness table accessor for type NearbyGroup.Errors and conformance NearbyGroup.Errors();
    v50 = swift_allocError();
    *v51 = 0;
    v55[0] = v50;
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  v43 = (a5 + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_localMemberHandle);
  swift_beginAccess();
  *v43 = a1;
  v43[1] = a2;

  v45 = specialized Sequence.compactMap<A>(_:)(a3, v44);
  v46 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14NearbySessions0B5GroupC6MemberV_SayAHGTt0g5Tf4g_n(v45);

  swift_getKeyPath();
  swift_getKeyPath();
  v54[0] = v46;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v54[0] = 1;

  static Published.subscript.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed String?, @guaranteed Set<NearbyGroupMember>?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  v9 = 0;
  if (a3)
  {
LABEL_3:
    type metadata accessor for NearbyGroupMember();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject, type metadata accessor for NearbyGroupMember, MEMORY[0x277D85378]);
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:

  v10 = a4;
  v6(v7, v9, v5, a4);
}

uint64_t closure #1 in NearbyGroup.invalidate(reason:)(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a2;

  return static Published.subscript.setter();
}

uint64_t NearbyGroup.addMember(_:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](NearbyGroup.addMember(_:), 0, 0);
}

uint64_t NearbyGroup.addMember(_:)()
{
  v31 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = 0;
  v2 = v0[6];
  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 56);
  v6 = (63 - v4) >> 6;
  while (v5)
  {
LABEL_9:
    v8 = v0[7];
    v9 = v0[8];
    v10 = (*(v2 + 48) + ((v1 << 11) | (32 * __clz(__rbit64(v5)))));
    v12 = *v10;
    v11 = v10[1];
    v0[10] = v11;
    v14 = v10[2];
    v13 = v10[3];
    v0[11] = v13;
    if (v12 == v8 && v11 == v9)
    {
      v12 = v8;
LABEL_22:

      v0[2] = v12;
      v0[3] = v11;
      v0[4] = v14;
      v0[5] = v13;
      v29 = swift_task_alloc();
      v0[12] = v29;
      *v29 = v0;
      v29[1] = NearbyGroup.addMember(_:);

      return NearbyGroup.addMember(_:)(v0 + 2);
    }

    v5 &= v5 - 1;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_22;
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 56 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_9;
    }
  }

  if (one-time initialization token for group == -1)
  {
    goto LABEL_16;
  }

LABEL_26:
  swift_once();
LABEL_16:
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.group);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = v0[8];
    v20 = v0[7];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30[0] = v22;
    *v21 = 136315394;
    v23 = NearbyGroup.description.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v30);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, v30);
    _os_log_impl(&dword_25B7C4000, v17, v18, "%s There is no member: %s in NearbyGroup.Member list", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v22, -1, -1);
    MEMORY[0x25F86FE20](v21, -1, -1);
  }

  lazy protocol witness table accessor for type NearbyGroup.Errors and conformance NearbyGroup.Errors();
  swift_allocError();
  *v26 = 1;
  swift_willThrow();
  v27 = v0[1];

  return v27();
}

{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](NearbyGroup.addMember(_:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v31 = v0;
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6].super_class = __swift_project_value_buffer(v1, static Log.group);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    super_class = v0[5].super_class;
    receiver = v0[6].receiver;
    v5 = v0[4].super_class;
    v4 = v0[5].receiver;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30 = v7;
    *v6 = 136315394;
    v8 = NearbyGroup.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v30);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v0[1].receiver = v5;
    v0[1].super_class = v4;
    v0[2].receiver = super_class;
    v0[2].super_class = receiver;

    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v30);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_25B7C4000, v2, v3, "%s received request to add member: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v7, -1, -1);
    MEMORY[0x25F86FE20](v6, -1, -1);
  }

  v15 = v0[5].super_class;
  v14 = v0[6].receiver;
  v17 = v0[4].super_class;
  v16 = v0[5].receiver;
  v18 = v0[4].receiver;
  v19 = type metadata accessor for NearbyGroupMember();
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_handle];
  *v21 = v17;
  *(v21 + 1) = v16;
  v22 = &v20[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_tokenID];
  *v22 = v15;
  *(v22 + 1) = v14;
  v0[3].receiver = v20;
  v0[3].super_class = v19;

  v23 = objc_msgSendSuper2(v0 + 3, sel_init);
  v0[7].receiver = v23;
  v24 = swift_task_alloc();
  v0[7].super_class = v24;
  *(v24 + 16) = v18;
  *(v24 + 24) = v23;
  v25 = swift_task_alloc();
  v0[8].receiver = v25;
  *v25 = v0;
  v25[1] = NearbyGroup.addMember(_:);
  v26 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v25, 0, 0, 0x65626D654D646461, 0xED0000293A5F2872, partial apply for closure #1 in NearbyGroup.addMember(_:), v24, v26);
}

{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = NearbyGroup.addMember(_:);
  }

  else
  {

    v2 = NearbyGroup.addMember(_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v20 = v0;
  v1 = *(v0 + 112);

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 112);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315394;
    v9 = NearbyGroup.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = [v6 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v19);

    *(v7 + 14) = v16;
    _os_log_impl(&dword_25B7C4000, v3, v4, "%s successfully added member: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v8, -1, -1);
    MEMORY[0x25F86FE20](v7, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t NearbyGroup.addMember(_:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  *(v2 + 64) = v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = v4;
  *(v2 + 88) = *(a1 + 1);
  return MEMORY[0x2822009F8](NearbyGroup.addMember(_:), 0, 0);
}

uint64_t closure #1 in NearbyGroup.addMember(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = XPCClient.queue.getter();
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v9, v6);
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in closure #1 in NearbyGroup.addMember(_:);
  *(v13 + 24) = v12;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_107;
  v14 = _Block_copy(aBlock);

  v15 = a3;

  dispatch_sync(v10, v14);

  _Block_release(v14);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in NearbyGroup.addMember(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-v8];
  v14 = a2;
  v15 = a3;
  v16 = a1;
  (*(v7 + 16))(&v13[-v8], a3, v6);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  (*(v7 + 32))(v11 + v10, v9, v6);

  XPCClient.withSynchronousHost<A>(body:errorHandler:)();
}

uint64_t NearbyGroup.kickMember(_:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](NearbyGroup.kickMember(_:), 0, 0);
}

uint64_t NearbyGroup.kickMember(_:)()
{
  v31 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = 0;
  v2 = v0[6];
  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 56);
  v6 = (63 - v4) >> 6;
  while (v5)
  {
LABEL_9:
    v8 = v0[7];
    v9 = v0[8];
    v10 = (*(v2 + 48) + ((v1 << 11) | (32 * __clz(__rbit64(v5)))));
    v12 = *v10;
    v11 = v10[1];
    v0[10] = v11;
    v14 = v10[2];
    v13 = v10[3];
    v0[11] = v13;
    if (v12 == v8 && v11 == v9)
    {
      v12 = v8;
LABEL_22:

      v0[2] = v12;
      v0[3] = v11;
      v0[4] = v14;
      v0[5] = v13;
      v29 = swift_task_alloc();
      v0[12] = v29;
      *v29 = v0;
      v29[1] = NearbyGroup.kickMember(_:);

      return NearbyGroup.kickMember(member:)(v0 + 2);
    }

    v5 &= v5 - 1;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_22;
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 56 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_9;
    }
  }

  if (one-time initialization token for group == -1)
  {
    goto LABEL_16;
  }

LABEL_26:
  swift_once();
LABEL_16:
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.group);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = v0[8];
    v20 = v0[7];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30[0] = v22;
    *v21 = 136315394;
    v23 = NearbyGroup.description.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v30);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, v30);
    _os_log_impl(&dword_25B7C4000, v17, v18, "%s There is no member: %s in NearbyGroup.Member list", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v22, -1, -1);
    MEMORY[0x25F86FE20](v21, -1, -1);
  }

  lazy protocol witness table accessor for type NearbyGroup.Errors and conformance NearbyGroup.Errors();
  swift_allocError();
  *v26 = 1;
  swift_willThrow();
  v27 = v0[1];

  return v27();
}

{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](NearbyGroup.kickMember(_:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t NearbyGroup.kickMember(member:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  *(v2 + 64) = v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = v4;
  *(v2 + 88) = *(a1 + 1);
  return MEMORY[0x2822009F8](NearbyGroup.kickMember(member:), 0, 0);
}

uint64_t NearbyGroup.kickMember(member:)()
{
  v31 = v0;
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6].super_class = __swift_project_value_buffer(v1, static Log.group);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    super_class = v0[5].super_class;
    receiver = v0[6].receiver;
    v5 = v0[4].super_class;
    v4 = v0[5].receiver;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30 = v7;
    *v6 = 136315394;
    v8 = NearbyGroup.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v30);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v0[1].receiver = v5;
    v0[1].super_class = v4;
    v0[2].receiver = super_class;
    v0[2].super_class = receiver;

    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v30);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_25B7C4000, v2, v3, "%s received request to kick member: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v7, -1, -1);
    MEMORY[0x25F86FE20](v6, -1, -1);
  }

  v15 = v0[5].super_class;
  v14 = v0[6].receiver;
  v17 = v0[4].super_class;
  v16 = v0[5].receiver;
  v18 = v0[4].receiver;
  v19 = type metadata accessor for NearbyGroupMember();
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_handle];
  *v21 = v17;
  *(v21 + 1) = v16;
  v22 = &v20[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_tokenID];
  *v22 = v15;
  *(v22 + 1) = v14;
  v0[3].receiver = v20;
  v0[3].super_class = v19;

  v23 = objc_msgSendSuper2(v0 + 3, sel_init);
  v0[7].receiver = v23;
  v24 = swift_task_alloc();
  v0[7].super_class = v24;
  *(v24 + 16) = v18;
  *(v24 + 24) = v23;
  v25 = swift_task_alloc();
  v0[8].receiver = v25;
  *v25 = v0;
  v25[1] = NearbyGroup.kickMember(member:);
  v26 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v25, 0, 0, 0xD000000000000013, 0x800000025B830840, partial apply for closure #1 in NearbyGroup.kickMember(member:), v24, v26);
}

{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = NearbyGroup.kickMember(member:);
  }

  else
  {

    v2 = NearbyGroup.kickMember(member:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v20 = v0;
  v1 = *(v0 + 112);

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 112);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315394;
    v9 = NearbyGroup.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = [v6 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v19);

    *(v7 + 14) = v16;
    _os_log_impl(&dword_25B7C4000, v3, v4, "%s successfully kicked member: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v8, -1, -1);
    MEMORY[0x25F86FE20](v7, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in NearbyGroup.kickMember(member:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = XPCClient.queue.getter();
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v9, v6);
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in closure #1 in NearbyGroup.kickMember(member:);
  *(v13 + 24) = v12;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_88_0;
  v14 = _Block_copy(aBlock);

  v15 = a3;

  dispatch_sync(v10, v14);

  _Block_release(v14);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in NearbyGroup.kickMember(member:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14[-v8];
  v15 = a2;
  v16 = a3;
  v17 = a1;
  (*(v7 + 16))(&v14[-v8], a3, v6);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  (*(v7 + 32))(v11 + v10, v9, v6);

  v12 = a2;
  XPCClient.withSynchronousHost<A>(body:errorHandler:)();
}

void closure #1 in closure #1 in closure #1 in NearbyGroup.addMember(_:)(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v25 = a7;
  v26 = a8;
  v22[1] = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  v24 = *a1;
  (*(v13 + 16))(v22 - v15, a3, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v17, v16, v12);
  *(v19 + v18) = a4;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = v23;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = v25;
  v20 = _Block_copy(aBlock);

  v21 = a2;

  [v24 *v26];
  _Block_release(v20);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in NearbyGroup.addMember(_:)(void *a1, uint64_t a2, uint64_t a3, void *a4, const char *a5)
{
  if (a1)
  {
    v8 = a1;
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.group);
    v10 = a1;

    v11 = a4;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v29 = v15;
      *v14 = 136315650;
      v16 = NearbyGroup.description.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v29);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v19 = [v11 description];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v29);

      *(v14 + 14) = v23;
      *(v14 + 22) = 2080;
      v24 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v25 = String.init<A>(reflecting:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v29);

      *(v14 + 24) = v27;
      _os_log_impl(&dword_25B7C4000, v12, v13, a5, v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F86FE20](v15, -1, -1);
      MEMORY[0x25F86FE20](v14, -1, -1);
    }

    v29 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t closure #2 in closure #1 in closure #1 in NearbyGroup.kickMember(member:)(void *a1, uint64_t a2, void *a3)
{
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.group);

  v6 = a3;
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315650;
    v12 = NearbyGroup.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v26);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = [v6 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v26);

    *(v10 + 14) = v19;
    *(v10 + 22) = 2080;
    v20 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v21 = String.init<A>(reflecting:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v26);

    *(v10 + 24) = v23;
    _os_log_impl(&dword_25B7C4000, v8, v9, "%s Had errorHandler called when trying to kick member: %s, error: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v11, -1, -1);
    MEMORY[0x25F86FE20](v10, -1, -1);
  }

  v26 = a1;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t NearbyGroup.leave()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](NearbyGroup.leave(), 0, 0);
}

{
  v14 = v0;
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[3] = __swift_project_value_buffer(v1, static Log.group);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v6 = NearbyGroup.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25B7C4000, v2, v3, "%s received request to leave", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x25F86FE20](v5, -1, -1);
    MEMORY[0x25F86FE20](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[4] = v9;
  *v9 = v0;
  v9[1] = NearbyGroup.leave();
  v10 = v0[2];
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v9, 0, 0, 0x2928657661656CLL, 0xE700000000000000, partial apply for closure #1 in NearbyGroup.leave(), v10, v11);
}

{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = NearbyInvitationScanner<>.request(_:displayName:userInfo:);
  }

  else
  {
    v2 = NearbyGroup.leave();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
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
    v5 = NearbyGroup.description.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_25B7C4000, v1, v2, "%s successfully left", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x25F86FE20](v4, -1, -1);
    MEMORY[0x25F86FE20](v3, -1, -1);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t closure #1 in NearbyGroup.leave()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = XPCClient.queue.getter();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v5 + 32))(v10 + v9, v7, v4);
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in closure #1 in NearbyGroup.leave();
  *(v11 + 24) = v10;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_69_0;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v8, v12);

  _Block_release(v12);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in NearbyGroup.leave()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-v6];
  v12 = a2;
  v13 = a1;
  (*(v5 + 16))(&v11[-v6], a2, v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  (*(v5 + 32))(v9 + v8, v7, v4);

  XPCClient.withSynchronousHost<A>(body:errorHandler:)();
}

void closure #1 in closure #1 in closure #1 in NearbyGroup.leave()(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = *a1;
  (*(v7 + 16))(aBlock - v9, a2, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in NearbyGroup.leave();
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_78;
  v14 = _Block_copy(aBlock);

  [v11 leaveWithCompletion_];
  _Block_release(v14);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in NearbyGroup.leave()(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a1;
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.group);
    v6 = a1;

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136315394;
      v11 = NearbyGroup.description.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v19);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      v14 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v15 = String.init<A>(reflecting:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v19);

      *(v9 + 14) = v17;
      _os_log_impl(&dword_25B7C4000, v7, v8, "%s was told an error remotely when trying to leave, error: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F86FE20](v10, -1, -1);
      MEMORY[0x25F86FE20](v9, -1, -1);
    }

    v19 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t closure #2 in closure #1 in closure #3 in NearbyGroup.init(id:endpoint:)(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.group);

  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315394;
    v12 = NearbyGroup.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v21);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v16 = String.init<A>(reflecting:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v21);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_25B7C4000, v8, v9, a4, v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v11, -1, -1);
    MEMORY[0x25F86FE20](v10, -1, -1);
  }

  v21 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t NearbyGroup.deinit()
{
  v1 = OBJC_IVAR____TtC14NearbySessions11NearbyGroup_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14NearbySessions11NearbyGroup__members;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14NearbySessions0C5GroupC6MemberVGGMd, &_s7Combine9PublishedVyShy14NearbySessions0C5GroupC6MemberVGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14NearbySessions11NearbyGroup__state;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14NearbySessions0C5GroupC5StateOGMd, &_s7Combine9PublishedVy14NearbySessions0C5GroupC5StateOGMR);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

uint64_t NearbyGroup.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14NearbySessions11NearbyGroup_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14NearbySessions11NearbyGroup__members;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14NearbySessions0C5GroupC6MemberVGGMd, &_s7Combine9PublishedVyShy14NearbySessions0C5GroupC6MemberVGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14NearbySessions11NearbyGroup__state;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14NearbySessions0C5GroupC5StateOGMd, &_s7Combine9PublishedVy14NearbySessions0C5GroupC5StateOGMR);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t protocol witness for InvitationSourceProvider.id.getter in conformance NearbyGroup@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14NearbySessions11NearbyGroup_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t protocol witness for InvitationSourceProvider.didApproveMember(member:) in conformance NearbyGroup(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in NearbyGroupTable.firstGroup();

  return NearbyGroup.didApproveMember(member:)(a1);
}

uint64_t NearbyGroup.didApproveMember(member:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  *(v2 + 80) = v1;
  *(v2 + 88) = v3;
  *(v2 + 96) = v4;
  *(v2 + 104) = *(a1 + 1);
  return MEMORY[0x2822009F8](NearbyGroup.didApproveMember(member:), 0, 0);
}

uint64_t NearbyGroup.didApproveMember(member:)()
{
  v17 = v0;
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.group);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v0 + 48) = v7;
    *(v0 + 56) = v6;
    *(v0 + 64) = v5;
    *(v0 + 72) = v4;

    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_25B7C4000, v2, v3, "Received approved member: %s attempting to add now", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x25F86FE20](v9, -1, -1);
    MEMORY[0x25F86FE20](v8, -1, -1);
  }

  v13 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 88);
  *(v0 + 24) = v13;
  *(v0 + 32) = *(v0 + 104);
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *v14 = v0;
  v14[1] = NearbyGroup.didApproveMember(member:);

  return NearbyGroup.addMember(_:)((v0 + 16));
}

{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](NearbyGroup.didApproveMember(member:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  return (*(v0 + 8))();
}

uint64_t static NearbyGroup.groups(service:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy14NearbySessions0D5GroupC__GMd, &_sScS12ContinuationV15BufferingPolicyOy14NearbySessions0D5GroupC__GMR);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for UUID();
  v8 = (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  if (one-time initialization token for shared != -1)
  {
    v8 = swift_once();
  }

  MEMORY[0x28223BE20](v8);
  *(&v11 - 2) = v9;
  *(&v11 - 1) = v6;
  (*(v1 + 104))(v3, *MEMORY[0x277D85778], v0);
  AsyncStream.init(_:bufferingPolicy:_:)();
  return outlined destroy of NSObject?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t static NearbyGroup.groups(service:identifier:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy14NearbySessions0D5GroupC__GMd, &_sScS12ContinuationV15BufferingPolicyOy14NearbySessions0D5GroupC__GMR);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  if (one-time initialization token for shared != -1)
  {
    v5 = swift_once();
  }

  MEMORY[0x28223BE20](v5);
  *(&v10 - 2) = v8;
  *(&v10 - 1) = a2;
  (*(v4 + 104))(v7, *MEMORY[0x277D85778], v3);
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t closure #1 in static NearbyGroup.groups(service:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v31 = a1;
  v33 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B5GroupC_GMd, &_sScS12ContinuationVy14NearbySessions0B5GroupC_GMR);
  v5 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v7 = v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(v8 - 8);
  v29[0] = *(v9 + 64);
  v10 = v29[0];
  MEMORY[0x28223BE20](v8 - 8);
  v12 = v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v29 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  outlined init with copy of (UUID, Bool)(a3, v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = v7;
  v18 = v7;
  v19 = v32;
  (*(v5 + 16))(v18, a1, v32);
  v20 = *(v9 + 80);
  v21 = (v20 + 40) & ~v20;
  v29[1] = v20 | 7;
  v22 = (v10 + *(v5 + 80) + v21) & ~*(v5 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v33;
  outlined init with take of UUID?(v12, &v23[v21], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(v5 + 32))(&v23[v22], v17, v19);

  v24 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:), v23);
  outlined init with copy of (UUID, Bool)(v30, v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v25 = (v20 + 16) & ~v20;
  v26 = (v29[0] + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  outlined init with take of UUID?(v12, v27 + v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v27 + v26) = v24;
  return AsyncStream.Continuation.onTermination.setter();
}

uint64_t closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetSgMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetSgMR);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14NearbySessions0D5GroupC__GMd, &_sScS12ContinuationV11YieldResultOy14NearbySessions0D5GroupC__GMR);
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6[18] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v6[19] = v8;
  v6[20] = *(v8 - 8);
  v6[21] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
  v6[22] = v9;
  v10 = *(v9 - 8);
  v6[23] = v10;
  v6[24] = *(v10 + 64);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySDy10Foundation4UUIDV14NearbySessions0G19GroupConnectionInfoCG_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySDy10Foundation4UUIDV14NearbySessions0G19GroupConnectionInfoCG_GGMR);
  v6[33] = v11;
  v6[34] = *(v11 - 8);
  v6[35] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV14NearbySessions0F19GroupConnectionInfoCG_GMd, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV14NearbySessions0F19GroupConnectionInfoCG_GMR);
  v6[36] = v12;
  v6[37] = *(v12 - 8);
  v6[38] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySDy10Foundation4UUIDV14NearbySessions0H19GroupConnectionInfoCG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySDy10Foundation4UUIDV14NearbySessions0H19GroupConnectionInfoCG_G_GMR);
  v6[39] = v13;
  v6[40] = *(v13 - 8);
  v6[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:), 0, 0);
}

uint64_t closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:)()
{
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[42] = __swift_project_value_buffer(v1, static Log.group);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25B7C4000, v2, v3, "Waiting for groups", v4, 2u);
    MEMORY[0x25F86FE20](v4, -1, -1);
  }

  v6 = v0[37];
  v5 = v0[38];
  v7 = v0[35];
  v8 = v0[36];
  v9 = v0[33];
  v10 = v0[34];

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  v11 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[UUID : NearbyGroupConnectionInfo]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV14NearbySessions0F19GroupConnectionInfoCG_GMd, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV14NearbySessions0F19GroupConnectionInfoCG_GMR, MEMORY[0x277CBCEC8]);
  MEMORY[0x25F86EF60](v8, v11);
  (*(v6 + 8))(v5, v8);
  AsyncPublisher.makeAsyncIterator()();
  (*(v10 + 8))(v7, v9);
  v0[43] = OBJC_IVAR____TtC14NearbySessions27NearbyInvitationsController_groupTable;
  v12 = swift_task_alloc();
  v0[44] = v12;
  *v12 = v0;
  v12[1] = closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySDy10Foundation4UUIDV14NearbySessions0L19GroupConnectionInfoCG_G_G_Tg5(0, 0);
}

{

  return MEMORY[0x2822009F8](closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:), 0, 0);
}

{
  *(v0 + 64) = *(v0 + 432);
  v1 = *(v0 + 232);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B5GroupC_GMd, &_sScS12ContinuationVy14NearbySessions0B5GroupC_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v4);
  result = outlined destroy of NSObject?(v1, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
  v6 = *(v0 + 400);
  v7 = (*(v0 + 392) - 1) & *(v0 + 392);
  if (v7)
  {
    while (1)
    {
      v8 = *(v0 + 360);
LABEL_7:
      *(v0 + 392) = v7;
      *(v0 + 400) = v6;
      v10 = *(v0 + 232);
      v31 = *(v0 + 240);
      v32 = *(v0 + 176);
      v12 = *(v0 + 152);
      v11 = *(v0 + 160);
      v33 = *(v0 + 88);
      v34 = *(v0 + 144);
      (*(v11 + 16))();
      v13 = *(v11 + 32);
      v14 = *(*(v8 + 56) + 8 * (__clz(__rbit64(v7)) | (v6 << 6)));
      v15 = *(v32 + 48);
      v13(v10, v31, v12);
      *(v10 + v15) = v14;
      outlined init with copy of (UUID, Bool)(v33, v34, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if ((*(v11 + 48))(v34, 1, v12) == 1)
      {
        break;
      }

      v17 = *(v0 + 160);
      v16 = *(v0 + 168);
      v18 = *(v0 + 152);
      v13(v16, *(v0 + 144), v18);
      v19 = v14;
      v20 = static UUID.== infix(_:_:)();
      (*(v17 + 8))(v16, v18);
      if (v20)
      {
        goto LABEL_15;
      }

      v7 &= v7 - 1;
      result = outlined destroy of NSObject?(*(v0 + 232), &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
      if (!v7)
      {
        goto LABEL_3;
      }
    }

    v22 = *(v0 + 144);
    v23 = v14;
    outlined destroy of NSObject?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_15:
    v24 = *(v0 + 376);
    v25 = *(v0 + 224);
    v26 = *(v0 + 184);
    outlined init with copy of (UUID, Bool)(*(v0 + 232), v25, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
    v27 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v28 = swift_allocObject();
    *(v0 + 408) = v28;
    outlined init with take of UUID?(v25, v28 + v27, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
    v35 = (*(*v24 + 152) + **(*v24 + 152));
    v29 = swift_task_alloc();
    *(v0 + 416) = v29;
    *v29 = v0;
    v29[1] = closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);
    v30 = *(v0 + 232);

    return v35(v30, &async function pointer to partial apply for closure #2 in closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:), v28);
  }

  else
  {
    while (1)
    {
LABEL_3:
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        return result;
      }

      v8 = *(v0 + 360);
      if (v9 >= (((1 << *(v0 + 440)) + 63) >> 6))
      {
        break;
      }

      v7 = *(v8 + 8 * v9 + 64);
      ++v6;
      if (v7)
      {
        v6 = v9;
        goto LABEL_7;
      }
    }

    v21 = swift_task_alloc();
    *(v0 + 352) = v21;
    *v21 = v0;
    v21[1] = closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);

    return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySDy10Foundation4UUIDV14NearbySessions0L19GroupConnectionInfoCG_G_G_Tg5(0, 0);
  }
}

{
  v1 = *(v0 + 424);
  outlined init with copy of (UUID, Bool)(*(v0 + 232), *(v0 + 216), &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 216);
    v7 = *(v0 + 176);
    v6 = *(v0 + 184);
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v10 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *(v0 + 48) = v57;
    *v10 = 136315394;
    outlined init with copy of (UUID, Bool)(v5, v8, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
    (*(v6 + 56))(v8, 0, 1, v7);
    outlined init with copy of (UUID, Bool)(v8, v9, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetSgMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetSgMR);
    if ((*(v6 + 48))(v9, 1, v7) == 1)
    {
      v11 = 0xE300000000000000;
      v12 = 7104878;
    }

    else
    {
      v18 = *(v0 + 200);
      v17 = *(v0 + 208);
      outlined init with take of UUID?(*(v0 + 104), v17, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
      outlined init with copy of (UUID, Bool)(v17, v18, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
      v12 = String.init<A>(reflecting:)();
      v11 = v19;
      outlined destroy of NSObject?(v17, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
    }

    v20 = *(v0 + 424);
    v21 = *(v0 + 232);
    v22 = *(v0 + 216);
    outlined destroy of NSObject?(*(v0 + 112), &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetSgMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetSgMR);
    outlined destroy of NSObject?(v22, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, (v0 + 48));

    *(v10 + 4) = v23;
    *(v10 + 12) = 2080;
    *(v0 + 56) = v20;
    v24 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v25 = String.init<A>(reflecting:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, (v0 + 48));

    *(v10 + 14) = v27;
    _os_log_impl(&dword_25B7C4000, v3, v4, "Failed to create new nearbyGroup %s, error: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v57, -1, -1);
    MEMORY[0x25F86FE20](v10, -1, -1);

    v16 = v21;
  }

  else
  {
    v13 = *(v0 + 424);
    v14 = *(v0 + 232);
    v15 = *(v0 + 216);

    outlined destroy of NSObject?(v15, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
    v16 = v14;
  }

  result = outlined destroy of NSObject?(v16, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
  v29 = *(v0 + 400);
  v30 = (*(v0 + 392) - 1) & *(v0 + 392);
  if (v30)
  {
    while (1)
    {
      v31 = *(v0 + 360);
LABEL_13:
      *(v0 + 392) = v30;
      *(v0 + 400) = v29;
      v33 = *(v0 + 232);
      v54 = *(v0 + 240);
      v55 = *(v0 + 176);
      v35 = *(v0 + 152);
      v34 = *(v0 + 160);
      v56 = *(v0 + 88);
      v58 = *(v0 + 144);
      (*(v34 + 16))();
      v36 = *(v34 + 32);
      v37 = *(*(v31 + 56) + 8 * (__clz(__rbit64(v30)) | (v29 << 6)));
      v38 = *(v55 + 48);
      v36(v33, v54, v35);
      *(v33 + v38) = v37;
      outlined init with copy of (UUID, Bool)(v56, v58, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if ((*(v34 + 48))(v58, 1, v35) == 1)
      {
        break;
      }

      v40 = *(v0 + 160);
      v39 = *(v0 + 168);
      v41 = *(v0 + 152);
      v36(v39, *(v0 + 144), v41);
      v42 = v37;
      v43 = static UUID.== infix(_:_:)();
      (*(v40 + 8))(v39, v41);
      if (v43)
      {
        goto LABEL_21;
      }

      v30 &= v30 - 1;
      result = outlined destroy of NSObject?(*(v0 + 232), &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
      if (!v30)
      {
        goto LABEL_9;
      }
    }

    v45 = *(v0 + 144);
    v46 = v37;
    outlined destroy of NSObject?(v45, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_21:
    v47 = *(v0 + 376);
    v48 = *(v0 + 224);
    v49 = *(v0 + 184);
    outlined init with copy of (UUID, Bool)(*(v0 + 232), v48, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
    v50 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    v51 = swift_allocObject();
    *(v0 + 408) = v51;
    outlined init with take of UUID?(v48, v51 + v50, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
    v59 = (*(*v47 + 152) + **(*v47 + 152));
    v52 = swift_task_alloc();
    *(v0 + 416) = v52;
    *v52 = v0;
    v52[1] = closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);
    v53 = *(v0 + 232);

    return v59(v53, &async function pointer to partial apply for closure #2 in closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:), v51);
  }

  else
  {
    while (1)
    {
LABEL_9:
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        return result;
      }

      v31 = *(v0 + 360);
      if (v32 >= (((1 << *(v0 + 440)) + 63) >> 6))
      {
        break;
      }

      v30 = *(v31 + 8 * v32 + 64);
      ++v29;
      if (v30)
      {
        v29 = v32;
        goto LABEL_13;
      }
    }

    v44 = swift_task_alloc();
    *(v0 + 352) = v44;
    *v44 = v0;
    v44[1] = closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);

    return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySDy10Foundation4UUIDV14NearbySessions0L19GroupConnectionInfoCG_G_G_Tg5(0, 0);
  }
}

uint64_t closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:)(uint64_t a1)
{
  *(*v2 + 360) = a1;

  if (!v1)
  {

    return MEMORY[0x2822009F8](closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:), 0, 0);
  }

  return result;
}

{
  v4 = *v2;
  *(*v2 + 424) = v1;

  if (v1)
  {
    v5 = closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);
  }

  else
  {
    *(v4 + 432) = a1;
    v5 = closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

unint64_t closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:)()
{
  v57 = v0;
  v1 = v0[45];
  if (v1)
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v56 = v5;
      *v4 = 136315138;
      v0[9] = v1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV14NearbySessions0C19GroupConnectionInfoCGMd, &_sSDy10Foundation4UUIDV14NearbySessions0C19GroupConnectionInfoCGMR);
      v6 = String.init<A>(reflecting:)();
      v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v56);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_25B7C4000, v2, v3, "Heard about groups: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x25F86FE20](v5, -1, -1);
      MEMORY[0x25F86FE20](v4, -1, -1);
    }

    v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SbTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v10 = v1 + 64;
    v11 = -1;
    v12 = -1 << *(v1 + 32);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v13 = v11 & *(v1 + 64);
    v14 = (63 - v12) >> 6;

    v16 = 0;
    v50 = v14;
    v51 = v1 + 64;
    v52 = v1;
    while (1)
    {
      v0[46] = v9;
      if (!v13)
      {
        break;
      }

LABEL_14:
      v19 = v0[31];
      v18 = v0[32];
      v20 = v0[22];
      v21 = v0[20];
      v22 = __clz(__rbit64(v13)) | (v16 << 6);
      v53 = *(v21 + 72);
      v54 = *(v21 + 16);
      v54(v18, *(v1 + 48) + v53 * v22, v0[19]);
      v23 = *(*(v1 + 56) + 8 * v22);
      *(v18 + *(v20 + 48)) = v23;
      outlined init with copy of (UUID, Bool)(v18, v19, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
      v24 = *(v19 + *(v20 + 48));
      v25 = v23;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[5] = v9;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v19);
      v28 = v9[2];
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return result;
      }

      v32 = v27;
      if (v9[3] >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v41 = result;
          specialized _NativeDictionary.copy()();
          result = v41;
        }
      }

      else
      {
        v33 = v0[31];
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, isUniquelyReferenced_nonNull_native);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v33);
        if ((v32 & 1) != (v34 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v9 = v0[5];
      v35 = v0[32];
      if (v32)
      {
        *(v9[7] + result) = 1;
        outlined destroy of NSObject?(v35, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
      }

      else
      {
        v36 = v0[31];
        v37 = v0[19];
        v9[(result >> 6) + 8] |= 1 << result;
        v38 = result;
        v54(v9[6] + result * v53, v36, v37);
        *(v9[7] + v38) = 1;
        result = outlined destroy of NSObject?(v35, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
        v39 = v9[2];
        v30 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v30)
        {
          goto LABEL_36;
        }

        v9[2] = v40;
      }

      v13 &= v13 - 1;
      result = (*(v0[20] + 8))(v0[31], v0[19]);
      v10 = v51;
      v1 = v52;
      v14 = v50;
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v17 >= v14)
      {
        break;
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        v16 = v17;
        goto LABEL_14;
      }
    }

    v42 = v0[43];
    v43 = v0[10];

    v44 = *(v43 + v42);
    v0[47] = v44;
    v55 = (*(*v44 + 144) + **(*v44 + 144));
    v45 = swift_task_alloc();
    v0[48] = v45;
    *v45 = v0;
    v45[1] = closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);

    return v55(v9);
  }

  else
  {
    (*(v0[40] + 8))(v0[41], v0[39]);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_25B7C4000, v46, v47, "No longer waiting for groups", v48, 2u);
      MEMORY[0x25F86FE20](v48, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B5GroupC_GMd, &_sScS12ContinuationVy14NearbySessions0B5GroupC_GMR);
    AsyncStream.Continuation.finish()();

    v49 = v0[1];

    return v49();
  }
}

void closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:)()
{
  v1 = 0;
  v2 = *(v0 + 360);
  v3 = *(v2 + 32);
  *(v0 + 440) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  if (v6)
  {
    while (1)
    {
      v7 = *(v0 + 360);
LABEL_10:
      *(v0 + 392) = v6;
      *(v0 + 400) = v1;
      v9 = *(v0 + 232);
      v30 = *(v0 + 240);
      v31 = *(v0 + 176);
      v11 = *(v0 + 152);
      v10 = *(v0 + 160);
      v32 = *(v0 + 88);
      v33 = *(v0 + 144);
      (*(v10 + 16))();
      v12 = *(v10 + 32);
      v13 = *(*(v7 + 56) + 8 * (__clz(__rbit64(v6)) | (v1 << 6)));
      v14 = *(v31 + 48);
      v12(v9, v30, v11);
      *(v9 + v14) = v13;
      outlined init with copy of (UUID, Bool)(v32, v33, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if ((*(v10 + 48))(v33, 1, v11) == 1)
      {
        break;
      }

      v16 = *(v0 + 160);
      v15 = *(v0 + 168);
      v17 = *(v0 + 152);
      v12(v15, *(v0 + 144), v17);
      v18 = v13;
      v19 = static UUID.== infix(_:_:)();
      (*(v16 + 8))(v15, v17);
      if (v19)
      {
        goto LABEL_18;
      }

      v6 &= v6 - 1;
      outlined destroy of NSObject?(*(v0 + 232), &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v21 = *(v0 + 144);
    v22 = v13;
    outlined destroy of NSObject?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_18:
    v23 = *(v0 + 376);
    v24 = *(v0 + 224);
    v25 = *(v0 + 184);
    outlined init with copy of (UUID, Bool)(*(v0 + 232), v24, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
    v26 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v27 = swift_allocObject();
    *(v0 + 408) = v27;
    outlined init with take of UUID?(v24, v27 + v26, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
    v34 = (*(*v23 + 152) + **(*v23 + 152));
    v28 = swift_task_alloc();
    *(v0 + 416) = v28;
    *v28 = v0;
    v28[1] = closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);
    v29 = *(v0 + 232);

    v34(v29, &async function pointer to partial apply for closure #2 in closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:), v27);
  }

  else
  {
    while (1)
    {
LABEL_6:
      v8 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      v7 = *(v0 + 360);
      if (v8 >= (((1 << *(v0 + 440)) + 63) >> 6))
      {
        break;
      }

      v6 = *(v7 + 8 * v8 + 64);
      ++v1;
      if (v6)
      {
        v1 = v8;
        goto LABEL_10;
      }
    }

    v20 = swift_task_alloc();
    *(v0 + 352) = v20;
    *v20 = v0;
    v20[1] = closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);

    _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySDy10Foundation4UUIDV14NearbySessions0L19GroupConnectionInfoCG_G_G_Tg5(0, 0);
  }
}

uint64_t closure #2 in closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:)(uint64_t a1)
{
  v1[3] = a1;
  v2 = type metadata accessor for UUID();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:), 0, 0);
}

{
  v3 = *v2;
  v4 = *(*v2 + 112);
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v5 = closure #2 in closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);
  }

  else
  {
    v5 = closure #2 in closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t closure #2 in closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:)()
{
  v31 = v0;
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  v0[12] = __swift_project_value_buffer(v3, static Log.group);
  outlined init with copy of (UUID, Bool)(v2, v1, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = v0[10];
    v9 = v0[7];
    v10 = v0[8];
    v12 = v0[4];
    v11 = v0[5];
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v13 = 136315138;
    outlined init with copy of (UUID, Bool)(v7, v8, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);

    (*(v11 + 32))(v9, v8, v12);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v9, v12);
    outlined destroy of NSObject?(v7, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v30);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_25B7C4000, v4, v5, "Creating NearbyGroup: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x25F86FE20](v29, -1, -1);
    MEMORY[0x25F86FE20](v13, -1, -1);
  }

  else
  {

    outlined destroy of NSObject?(v7, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
  }

  v19 = v0[8];
  v18 = v0[9];
  v21 = v0[5];
  v20 = v0[6];
  v22 = v0[4];
  outlined init with copy of (UUID, Bool)(v0[3], v18, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
  v23 = *(v18 + *(v19 + 48));
  v0[13] = v23;
  (*(v21 + 16))(v20, v23 + OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_id, v22);
  v24 = *(v23 + OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_endpoint);
  v0[14] = v24;
  v0[15] = type metadata accessor for NearbyGroup(0);
  swift_allocObject();
  v25 = v24;
  v26 = swift_task_alloc();
  v0[16] = v26;
  *v26 = v0;
  v26[1] = closure #2 in closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);
  v27 = v0[6];

  return specialized NearbyGroup.init(id:endpoint:)(v27, v25);
}

{
  v16 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  (*(v3 + 8))(v1, v2);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    *(v0 + 16) = v6;

    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_25B7C4000, v4, v5, "Created NearbyGroup: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x25F86FE20](v8, -1, -1);
    MEMORY[0x25F86FE20](v7, -1, -1);
  }

  v12 = *(v0 + 8);
  v13 = *(v0 + 136);

  return v12(v13);
}

{
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #2 in closure #1 in static NearbyGroup.groups(service:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Log.group);
  outlined init with copy of (UUID, Bool)(a2, v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v28 = a3;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29 = v22;
    *v21 = 136315138;
    outlined init with copy of (UUID, Bool)(v17, v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((*(v6 + 48))(v15, 1, v5) == 1)
    {
      v23 = 0xE300000000000000;
      v24 = 7104878;
    }

    else
    {
      (*(v6 + 32))(v11, v15, v5);
      (*(v6 + 16))(v9, v11, v5);
      v24 = String.init<A>(reflecting:)();
      v23 = v25;
      (*(v6 + 8))(v11, v5);
    }

    outlined destroy of NSObject?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, &v29);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_25B7C4000, v19, v20, "Group listener for id: %s cancelled.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x25F86FE20](v22, -1, -1);
    MEMORY[0x25F86FE20](v21, -1, -1);

    a3 = v28;
  }

  else
  {

    outlined destroy of NSObject?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  return MEMORY[0x25F86F1F0](a3, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
}

uint64_t InvitationRequest<>.Context.userInfo.getter()
{
  v1 = *v0;
  outlined copy of Data?(*v0, *(v0 + 8));
  return v1;
}

uint64_t InvitationRequest<>.Context.userInfo.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

double InvitationRequest<>.Context.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_25B82C300;
  return result;
}

uint64_t InvitationRequest<>.Context.init(userInfo:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v29 = type metadata accessor for UUID();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV14NearbySessions0E10GroupTableC04WeakeG0VGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV14NearbySessions0E10GroupTableC04WeakeG0VGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 8;
        outlined init with copy of NearbyGroupTable.WeakNearbyGroup(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        result = outlined init with take of NearbyGroupTable.WeakNearbyGroup(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
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

        v1 = v25;
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
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

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
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

{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSbGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSbGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
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
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
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

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15GroupActivities17AddressableMemberV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for AddressableMember();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember, MEMORY[0x277CCB290], MEMORY[0x277CCB298]);
  result = MEMORY[0x25F86F230](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14NearbySessions0B11GroupMemberC_SayAFGTt0g5Tf4g_n(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v4 = type metadata accessor for NearbyGroupMember();
    v5 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject, type metadata accessor for NearbyGroupMember, MEMORY[0x277D85378]);
    result = MEMORY[0x25F86F230](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x25F86F4A0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14NearbySessions0B5GroupC6MemberV_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type NearbyGroup.Member and conformance NearbyGroup.Member();
  result = MEMORY[0x25F86F230](v2, &type metadata for NearbyGroup.Member, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);

      specialized Set._Variant.insert(_:)(&v10, v9, v8, v7, v6);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t specialized NearbyGroup.__allocating_init(id:members:controller:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = type metadata accessor for UUID();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized NearbyGroup.__allocating_init(id:members:controller:), 0, 0);
}

uint64_t specialized NearbyGroup.__allocating_init(id:members:controller:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  if (v1)
  {
    v5 = specialized NearbyGroup.__allocating_init(id:members:controller:);
  }

  else
  {
    v5 = specialized NearbyGroup.__allocating_init(id:members:controller:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v4 = specialized NearbyGroup.__allocating_init(id:members:controller:);
  }

  else
  {
    v4 = specialized NearbyGroup.__allocating_init(id:members:controller:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

unint64_t lazy protocol witness table accessor for type NearbyGroup.Errors and conformance NearbyGroup.Errors()
{
  result = lazy protocol witness table cache variable for type NearbyGroup.Errors and conformance NearbyGroup.Errors;
  if (!lazy protocol witness table cache variable for type NearbyGroup.Errors and conformance NearbyGroup.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroup.Errors and conformance NearbyGroup.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyGroup.Errors and conformance NearbyGroup.Errors;
  if (!lazy protocol witness table cache variable for type NearbyGroup.Errors and conformance NearbyGroup.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroup.Errors and conformance NearbyGroup.Errors);
  }

  return result;
}

void type metadata completion function for NearbyGroup(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<Set<NearbyGroup.Member>>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<NearbyGroup.State>();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of NearbyGroup.__allocating_init(id:endpoint:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 136) + **(v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of NearbyGroupTable.registerIfNotPresent(identifier:generationBlock:);

  return v8(a1, a2);
}

void type metadata accessor for Published<Set<NearbyGroup.Member>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<Set<NearbyGroup.Member>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy14NearbySessions0A5GroupC6MemberVGMd, &_sShy14NearbySessions0A5GroupC6MemberVGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<Set<NearbyGroup.Member>>);
    }
  }
}

void type metadata accessor for Published<NearbyGroup.State>()
{
  if (!lazy cache variable for type metadata for Published<NearbyGroup.State>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<NearbyGroup.State>);
    }
  }
}

uint64_t getEnumTagSinglePayload for NearbyGroup.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for NearbyGroup.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for NearbyGroup.State(void *result, int a2)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for NearbyGroup.Member(uint64_t a1, int a2)
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

uint64_t type metadata instantiation function for InvitationRequest<>.Context(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for InvitationRequest<>.Context(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for InvitationRequest<>.Context(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in NearbyGroup.leave()(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in closure #1 in closure #1 in NearbyGroup.leave()(a1, v1 + v4, v5);
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in NearbyGroup.kickMember(member:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  return closure #2 in closure #1 in closure #1 in NearbyGroup.kickMember(member:)(a1, v3, v4);
}

uint64_t objectdestroy_80Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in NearbyGroup.kickMember(member:)(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t objectdestroy_93Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in NearbyGroup.kickMember(member:)(void *a1, const char *a2, ...)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in closure #1 in closure #1 in closure #1 in NearbyGroup.addMember(_:)(a1, v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t objectdestroy_62Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #3 in NearbyGroup.init(id:endpoint:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v9 = *(v4 + 16);

  return closure #1 in closure #1 in closure #1 in closure #3 in NearbyGroup.init(id:endpoint:)(a1, a2, a3, a4, v9);
}

uint64_t objectdestroyTm_2(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, 32, 7);
}

uint64_t partial apply for closure #1 in NearbyGroup.init(id:members:controller:)()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of NearbyGroupTable.firstGroup();

  return closure #1 in NearbyGroup.init(id:members:controller:)(v0);
}

uint64_t partial apply for closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B5GroupC_GMd, &_sScS12ContinuationVy14NearbySessions0B5GroupC_GMR) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for closure #1 in NearbyGroupTable.firstGroup();

  return closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:)(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t partial apply for closure #2 in closure #1 in static NearbyGroup.groups(service:identifier:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #2 in closure #1 in static NearbyGroup.groups(service:identifier:)(a1, v1 + v4, v5);
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of NearbyGroupTable.registerIfNotPresent(identifier:generationBlock:);

  return closure #2 in closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:)(v0 + v3);
}

uint64_t key path getter for NearbyGroupClientConnection.serverDisconnectedCallback : NearbyGroupClientConnection@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + direct field offset for NearbyGroupClientConnection.serverDisconnectedCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOy_0(v4, v5);
}

uint64_t key path setter for NearbyGroupClientConnection.serverDisconnectedCallback : NearbyGroupClientConnection(uint64_t *a1, void *a2)
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

  v7 = (*a2 + direct field offset for NearbyGroupClientConnection.serverDisconnectedCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOy_0(v3, v4);
  return _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOe_0(v8, v9);
}

uint64_t key path getter for NearbyGroupClientConnection.setMembersCallback : NearbyGroupClientConnection@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + direct field offset for NearbyGroupClientConnection.setMembersCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Set<NearbyGroupMember>) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOy_0(v4, v5);
}

uint64_t key path setter for NearbyGroupClientConnection.setMembersCallback : NearbyGroupClientConnection(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Set<NearbyGroupMember>) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for NearbyGroupClientConnection.setMembersCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOy_0(v3, v4);
  return _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOe_0(v8, v9);
}

uint64_t NearbyGroupClientConnection.serverDisconnectedCallback.getter(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t NearbyGroupClientConnection.serverDisconnectedCallback.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

Swift::Void __swiftcall NearbyGroupClientConnection.handleServerDisconnect()()
{
  v1 = v0 + direct field offset for NearbyGroupClientConnection.serverDisconnectedCallback;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);
    _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOe_0(v2, v3);
  }
}

uint64_t NearbyGroupClientConnection.setMembers(_:)(uint64_t a1)
{
  v3 = v1 + direct field offset for NearbyGroupClientConnection.setMembersCallback;
  result = swift_beginAccess();
  v5 = *v3;
  if (*v3)
  {
    v6 = *(v3 + 8);

    v5(a1);
    return _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOe_0(v5, v6);
  }

  return result;
}

uint64_t @objc NearbyGroupClientConnection.setMembers(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for NearbyGroupMember();
  lazy protocol witness table accessor for type NearbyGroupMember and conformance NSObject();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = &a1[direct field offset for NearbyGroupClientConnection.setMembersCallback];
  swift_beginAccess();
  v6 = *v5;
  if (!*v5)
  {
  }

  v7 = *(v5 + 1);
  v8 = a1;
  _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOy_0(v6, v7);
  v6(v4);

  return _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOe_0(v6, v7);
}

id NearbyGroupClientConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NearbyGroupClientConnection.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[direct field offset for NearbyGroupClientConnection.serverDisconnectedCallback];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[direct field offset for NearbyGroupClientConnection.setMembersCallback];
  *v3 = 0;
  *(v3 + 1) = 0;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t NearbyGroupClientConnection.__ivar_destroyer()
{
  _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOe_0(*(v0 + direct field offset for NearbyGroupClientConnection.serverDisconnectedCallback), *(v0 + direct field offset for NearbyGroupClientConnection.serverDisconnectedCallback + 8));
  v1 = *(v0 + direct field offset for NearbyGroupClientConnection.setMembersCallback);
  v2 = *(v0 + direct field offset for NearbyGroupClientConnection.setMembersCallback + 8);

  return _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOe_0(v1, v2);
}

id NearbyGroupClientConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc NearbyGroupClientConnection.__ivar_destroyer(uint64_t a1)
{
  _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOe_0(*(a1 + direct field offset for NearbyGroupClientConnection.serverDisconnectedCallback), *(a1 + direct field offset for NearbyGroupClientConnection.serverDisconnectedCallback + 8));
  v2 = *(a1 + direct field offset for NearbyGroupClientConnection.setMembersCallback);
  v3 = *(a1 + direct field offset for NearbyGroupClientConnection.setMembersCallback + 8);

  return _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOe_0(v2, v3);
}

unint64_t lazy protocol witness table accessor for type NearbyGroupMember and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject)
  {
    type metadata accessor for NearbyGroupMember();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Set<NearbyGroupMember>) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

id NearbyAdvertisementRequest.__allocating_init(identifier:invitation:route:activityType:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_identifier;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v11[v12], a1, v13);
  v15 = &v11[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_invitation];
  *v15 = a2;
  v15[1] = a3;
  v11[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_route] = a4;
  *&v11[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_activityType] = a5;
  v18.receiver = v11;
  v18.super_class = v5;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v14 + 8))(a1, v13);
  return v16;
}

uint64_t NearbyAdvertisementRequest.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_identifier;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NearbyAdvertisementRequest.invitation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_invitation);
  outlined copy of Data._Representation(v1, *(v0 + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_invitation + 8));
  return v1;
}

id NearbyAdvertisementRequest.init(identifier:invitation:route:activityType:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v11 = OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_identifier;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v5[v11], a1, v12);
  v14 = &v5[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_invitation];
  *v14 = a2;
  v14[1] = a3;
  v5[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_route] = a4;
  *&v5[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_activityType] = a5;
  v17.receiver = v5;
  v17.super_class = type metadata accessor for NearbyAdvertisementRequest(0);
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v13 + 8))(a1, v12);
  return v15;
}

uint64_t type metadata accessor for NearbyAdvertisementRequest(uint64_t a1)
{
  result = type metadata singleton initialization cache for NearbyAdvertisementRequest;
  if (!type metadata singleton initialization cache for NearbyAdvertisementRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall NearbyAdvertisementRequest.encode(with:)(NSCoder with)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = MEMORY[0x25F86F000](0x696669746E656469, 0xEA00000000007265);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v3];

  v4 = Data._bridgeToObjectiveC()().super.isa;
  v5 = MEMORY[0x25F86F000](0x6974617469766E69, 0xEA00000000006E6FLL);
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = UInt8._bridgeToObjectiveC()().super.super.isa;
  v7 = MEMORY[0x25F86F000](0x6574756F72, 0xE500000000000000);
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];

  v8 = UInt32._bridgeToObjectiveC()().super.super.isa;
  v9 = MEMORY[0x25F86F000](0x7974697669746361, 0xEC00000065707954);
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];
}

void NearbyAdvertisementRequest.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSUUID, 0x277CCAD78);
  v14 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = v14;
  (*(v8 + 56))(v6, 1, 1, v7);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC9620]);
  dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    goto LABEL_6;
  }

  v16 = *(v8 + 32);
  v16(v11, v6, v7);
  v16(v13, v11, v7);
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
  v17 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v17 || (v29 = xmmword_25B82C300, v18 = v17, static Data._conditionallyBridgeFromObjectiveC(_:result:)(), v18, v19 = *(&v29 + 1), *(&v29 + 1) >> 60 == 15))
  {
    (*(v8 + 8))(v13, v7);
LABEL_6:

    type metadata accessor for NearbyAdvertisementRequest(0);
    swift_deallocPartialClassInstance();
    return;
  }

  v27 = v29;
  v20 = MEMORY[0x25F86F000](0x6574756F72, 0xE500000000000000);
  v21 = [a1 decodeIntegerForKey_];

  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v26 = v16;
  if (v21 > 0xFF)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = MEMORY[0x25F86F000](0x7974697669746361, 0xEC00000065707954);
  v23 = [a1 decodeIntegerForKey_];

  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(v23))
  {
LABEL_17:
    __break(1u);
    return;
  }

  if (v23 >= 2)
  {
    (*(v8 + 8))(v13, v7);
    outlined consume of Data?(v27, v19);
    goto LABEL_6;
  }

  v26(&v2[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_identifier], v13, v7);
  v24 = &v2[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_invitation];
  *v24 = v27;
  v24[1] = v19;
  v2[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_route] = v21;
  *&v2[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_activityType] = v23;
  v25 = type metadata accessor for NearbyAdvertisementRequest(0);
  v28.receiver = v2;
  v28.super_class = v25;
  objc_msgSendSuper2(&v28, sel_init);
}

uint64_t NearbyAdvertisementRequest.description.getter()
{
  swift_getObjectType();
  _StringGuts.grow(_:)(69);
  MEMORY[0x25F86F070](60, 0xE100000000000000);
  v1 = _typeName(_:qualified:)();
  MEMORY[0x25F86F070](v1);

  MEMORY[0x25F86F070](8250, 0xE200000000000000);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC9628]);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x25F86F070](v2);

  MEMORY[0x25F86F070](0xD000000000000014, 0x800000025B8309E0);
  v3 = Data.description.getter();
  MEMORY[0x25F86F070](v3);

  MEMORY[0x25F86F070](0x206574756F72202CLL, 0xEE00203A65707974);
  type metadata accessor for CBNearbyInfoV2InvitationRouteType();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x25F86F070](0xD000000000000015, 0x800000025B830A00);
  v5 = *(v0 + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_activityType);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x25F86F070](62, 0xE100000000000000);
  return HIDWORD(v5);
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id NearbyAdvertisementRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NearbyAdvertisementRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyAdvertisementRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata completion function for NearbyAdvertisementRequest(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

unint64_t NearbyInvitationActivityType.init(rawValue:)(unsigned int a1)
{
  v1 = a1;
  if (a1 == 1)
  {
    v2 = 0;
  }

  else
  {
    v1 = 0;
    v2 = 1;
  }

  if (!a1)
  {
    v1 = 0;
    v2 = 0;
  }

  return v1 | (v2 << 32);
}

uint64_t *NearbyInvitation.__allocating_init<A>(id:displayName:hostInfo:userInfo:controller:invitationSourceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_allocObject();
  v16 = specialized NearbyInvitation.init<A>(id:displayName:hostInfo:userInfo:controller:invitationSourceProvider:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  (*(*(a9 - 8) + 8))(a8, a9);

  outlined consume of Data?(a5, a6);

  return v16;
}

id NearbyAdvertisement.__allocating_init(scannerID:identifier:activityType:contactID:handle:displayName:userInfo:deviceColor:deviceModel:deviceID:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18;
  v23 = objc_allocWithZone(v19);
  v24 = &v23[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceColor];
  *v24 = 0;
  v24[8] = 1;
  v25 = &v23[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceModel];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v23[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceID];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v23[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement____lazy_storage___dataSource];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_scannerID;
  v29 = type metadata accessor for UUID();
  v30 = *(v29 - 8);
  v31 = &v23[v28];
  v32 = a1;
  (*(v30 + 16))(v31, a1, v29);
  v33 = &v23[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier];
  *v33 = a2;
  *(v33 + 1) = a3;
  *&v23[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_activityType] = a4;
  v34 = &v23[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID];
  *v34 = a5;
  *(v34 + 1) = a6;
  v35 = &v23[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle];
  *v35 = a7;
  *(v35 + 1) = a8;
  v36 = &v23[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName];
  *v36 = a9;
  *(v36 + 1) = a10;
  v37 = &v23[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo];
  *v37 = a11;
  *(v37 + 1) = a12;
  swift_beginAccess();
  *v24 = a13;
  v24[8] = a14 & 1;
  swift_beginAccess();
  *v25 = a15;
  *(v25 + 1) = a16;
  swift_beginAccess();
  *v26 = a17;
  *(v26 + 1) = a18;
  v46.receiver = v23;
  v46.super_class = v45;
  v38 = objc_msgSendSuper2(&v46, sel_init);
  (*(v30 + 8))(v32, v29);
  return v38;
}

uint64_t InvitationRequest.__allocating_init(invitationData:displayName:userInfo:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v14 = specialized static NearbyInvitationData.create(from:)(a1, a2);
  if (v7)
  {
    v15 = v7;
    outlined consume of Data?(a5, a6);
  }

  else
  {
    v15 = (*(v6 + 192))(v14, a3, a4, a5, a6);
  }

  outlined consume of Data._Representation(a1, a2);
  return v15;
}

uint64_t _s14NearbySessions24InvitationSourceProviderPAAE18providerIdentifierSSvgZAA0A5GroupC_Ttg5()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x25F86F070](46, 0xE100000000000000);
    MEMORY[0x25F86F070](0x724779627261654ELL, 0xEB0000000070756FLL);
    return v2;
  }

  else
  {
    _StringGuts.grow(_:)(148);
    MEMORY[0x25F86F070](0xD000000000000091, 0x800000025B830B40);
    MEMORY[0x25F86F070](0x724779627261654ELL, 0xEB0000000070756FLL);
    MEMORY[0x25F86F070](46, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static InvitationSourceProvider.providerIdentifier.getter(uint64_t a1)
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x25F86F070](46, 0xE100000000000000);
    v4 = _typeName(_:qualified:)();
    MEMORY[0x25F86F070](v4);

    return v3;
  }

  else
  {
    _StringGuts.grow(_:)(148);
    MEMORY[0x25F86F070](0xD000000000000091, 0x800000025B830B40);
    v6 = _typeName(_:qualified:)();
    MEMORY[0x25F86F070](v6);

    MEMORY[0x25F86F070](46, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  return static InvitationSourceProvider.providerIdentifier.getter(a1);
}

Swift::String __swiftcall NearbyInvitationActivityType.description()()
{
  if (v0)
  {
    if (v0 == 1)
    {
      v1 = 0xEB00000000636973;
      v2 = 0x754D20656C707041;
    }

    else
    {
      v2 = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
    }
  }

  else
  {
    v1 = 0xE400000000000000;
    v2 = 1701736302;
  }

  result._object = v1;
  result._countAndFlagsBits = v2;
  return result;
}

unsigned int *protocol witness for RawRepresentable.init(rawValue:) in conformance NearbyInvitationActivityType@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

Swift::String __swiftcall NearbyInvitationScopeType.description()()
{
  if (v0)
  {
    if (v0 == 2)
    {
      v1 = 0xE900000000000079;
      v2 = 0x74696D69786F7270;
    }

    else if (v0 == 1)
    {
      v1 = 0xE700000000000000;
      v2 = 0x73646E65697266;
    }

    else
    {
      v2 = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
    }
  }

  else
  {
    v1 = 0xE800000000000000;
    v2 = 0x656E6F7972657665;
  }

  result._object = v1;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall NearbyInvitationRouteType.description()()
{
  if (v0)
  {
    if (v0 == 2)
    {
      v1 = 0xE700000000000000;
      v2 = 0x646F70656D6F68;
    }

    else if (v0 == 1)
    {
      v1 = 0xE700000000000000;
      v2 = 0x72656B61657073;
    }

    else
    {
      v2 = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
    }
  }

  else
  {
    v1 = 0xE300000000000000;
    v2 = 7496035;
  }

  result._object = v1;
  result._countAndFlagsBits = v2;
  return result;
}

unint64_t NearbyInvitationScopeType.init(rawValue:)(unsigned int a1)
{
  v1 = a1;
  v2 = 2;
  if (a1 != 2)
  {
    v2 = 0;
  }

  v3 = a1 != 2;
  if (a1 == 1)
  {
    v3 = 0;
  }

  else
  {
    v1 = v2;
  }

  if (!a1)
  {
    v1 = 0;
    v3 = 0;
  }

  return v1 | (v3 << 32);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NearbyInvitationActivityType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NearbyInvitationActivityType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t NearbyInvitationParameters.serviceName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_serviceName);

  return v1;
}

id NearbyInvitationParameters.__allocating_init(serviceName:browserType:listner:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_serviceName];
  *v10 = a1;
  *(v10 + 1) = a2;
  *&v9[OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_browserType] = a3;
  v11 = &v9[OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_routeType];
  *v11 = a4;
  v11[4] = BYTE4(a4) & 1;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id NearbyInvitationParameters.init(serviceName:browserType:listner:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_serviceName];
  *v5 = a1;
  *(v5 + 1) = a2;
  *&v4[OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_browserType] = a3;
  v6 = &v4[OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_routeType];
  *v6 = a4;
  v6[4] = BYTE4(a4) & 1;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for NearbyInvitationParameters();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t NearbyInvitationParameters.description.getter()
{
  swift_getObjectType();
  *&v6[8] = 0;
  _StringGuts.grow(_:)(55);
  MEMORY[0x25F86F070](60, 0xE100000000000000);
  v1 = _typeName(_:qualified:)();
  MEMORY[0x25F86F070](v1);

  MEMORY[0x25F86F070](0x6563697672657320, 0xEE00203A656D614ELL);
  MEMORY[0x25F86F070](*(v0 + OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_serviceName), *(v0 + OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_serviceName + 8));
  MEMORY[0x25F86F070](0x6573776F7262202CLL, 0xEF203A6570795472);
  *v6 = *(v0 + OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_browserType);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x25F86F070](0xD000000000000011, 0x800000025B830BE0);
  if (*(v0 + OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_routeType + 4))
  {
    v2 = 0xE300000000000000;
    v3 = 7104878;
  }

  else
  {
    v3 = String.init<A>(reflecting:)();
    v2 = v4;
  }

  MEMORY[0x25F86F070](v3, v2);

  return *&v6[4];
}

Swift::Void __swiftcall NearbyInvitationParameters.encode(with:)(NSCoder with)
{
  v3 = MEMORY[0x25F86F000](*(v1 + OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_serviceName), *(v1 + OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_serviceName + 8));
  v4 = MEMORY[0x25F86F000](0x4E65636976726573, 0xEB00000000656D61);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  isa = UInt32._bridgeToObjectiveC()().super.super.isa;
  v6 = MEMORY[0x25F86F000](0x54726573776F7262, 0xEB00000000657079);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v6];

  if (*(v1 + OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_routeType + 4))
  {
    v7 = 0;
  }

  else
  {
    v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  v8 = MEMORY[0x25F86F000](0x7079546574756F72, 0xE900000000000065);
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();
}

id NearbyInvitationParameters.init(coder:)(void *a1)
{
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v2 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v2)
  {
    v3 = v2;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  type metadata accessor for NearbyInvitationParameters();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t InvitationJoinResponse.sessionIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_sessionIdentifier);

  return v1;
}

uint64_t InvitationJoinResponse.userInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_userInfo);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_userInfo + 8));
  return v1;
}

id one-time initialization function for denied(uint64_t a1)
{
  v1 = type metadata accessor for InvitationJoinResponse();
  v2 = objc_allocWithZone(v1);
  v3 = &v2[OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_sessionIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v2[OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_memberHandles] = 0;
  *&v2[OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_userInfo] = xmmword_25B82C300;
  v5.receiver = v2;
  v5.super_class = v1;
  result = objc_msgSendSuper2(&v5, sel_init);
  static InvitationJoinResponse.denied = result;
  return result;
}

id static InvitationJoinResponse.denied.getter()
{
  if (one-time initialization token for denied != -1)
  {
    swift_once();
  }

  v1 = static InvitationJoinResponse.denied;

  return v1;
}

id static InvitationJoinResponse.approved(sessionIdentifier:memberHandles:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = type metadata accessor for InvitationJoinResponse();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_sessionIdentifier];
  *v12 = a1;
  *(v12 + 1) = a2;
  *&v11[OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_memberHandles] = a3;
  v13 = &v11[OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_userInfo];
  *v13 = a4;
  *(v13 + 1) = a5;

  outlined copy of Data?(a4, a5);
  v15.receiver = v11;
  v15.super_class = v10;
  return objc_msgSendSuper2(&v15, sel_init);
}

Swift::Void __swiftcall InvitationJoinResponse.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_sessionIdentifier + 8))
  {
    v3 = MEMORY[0x25F86F000](*(v1 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_sessionIdentifier));
  }

  else
  {
    v3 = 0;
  }

  v4 = MEMORY[0x25F86F000](0xD000000000000011, 0x800000025B830C30);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_memberHandles))
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = MEMORY[0x25F86F000](0x61487265626D656DLL, 0xED000073656C646ELL);
  [(objc_class *)with.super.isa encodeObject:v5.super.isa forKey:v6];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_userInfo + 8) >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v8 = MEMORY[0x25F86F000](0x6F666E4972657375, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v8];
  swift_unknownObjectRelease();
}

id InvitationJoinResponse.init(coder:)(void *a1)
{
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v2 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v2)
  {
    v3 = v2;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t InvitationJoinResponse.description.getter()
{
  v1 = 7104878;
  swift_getObjectType();
  _StringGuts.grow(_:)(45);
  MEMORY[0x25F86F070](60, 0xE100000000000000);
  v2 = _typeName(_:qualified:)();
  MEMORY[0x25F86F070](v2);

  MEMORY[0x25F86F070](0x6973736573202D20, 0xEE00203A44496E6FLL);
  if (*(v0 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_sessionIdentifier + 8))
  {

    v3 = String.init<A>(reflecting:)();
    v5 = v4;
  }

  else
  {
    v5 = 0xE300000000000000;
    v3 = 7104878;
  }

  MEMORY[0x25F86F070](v3, v5);

  MEMORY[0x25F86F070](0x73656C646E616820, 0xEA0000000000203ALL);
  if (*(v0 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_memberHandles))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v6 = String.init<A>(reflecting:)();
    v8 = v7;
  }

  else
  {
    v8 = 0xE300000000000000;
    v6 = 7104878;
  }

  MEMORY[0x25F86F070](v6, v8);

  MEMORY[0x25F86F070](0x666E497265737520, 0xEB00000000203A6FLL);
  v9 = *(v0 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_userInfo + 8);
  if (v9 >> 60 == 15)
  {
    v10 = 0xE300000000000000;
  }

  else
  {
    outlined copy of Data._Representation(*(v0 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_userInfo), v9);
    v1 = String.init<A>(reflecting:)();
    v10 = v11;
  }

  MEMORY[0x25F86F070](v1, v10);

  MEMORY[0x25F86F070](62, 0xE100000000000000);
  return 0;
}

id NearbyInvitationParameters.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t InvitationBlob.invitationID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_invitationID);

  return v1;
}

uint64_t InvitationBlob.dataBlob.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_dataBlob);
  outlined copy of Data._Representation(v1, *(v0 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_dataBlob + 8));
  return v1;
}

uint64_t InvitationBlob.description.getter()
{
  _StringGuts.grow(_:)(56);
  MEMORY[0x25F86F070](0xD000000000000015, 0x800000025B830C80);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x25F86F070](0xD000000000000010, 0x800000025B830CA0);
  MEMORY[0x25F86F070](*(v0 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_invitationID), *(v0 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_invitationID + 8));
  MEMORY[0x25F86F070](0x6C4261746164202CLL, 0xEC000000203A626FLL);
  v1 = Data.description.getter();
  MEMORY[0x25F86F070](v1);

  MEMORY[0x25F86F070](41, 0xE100000000000000);
  return 0;
}

Swift::Void __swiftcall InvitationBlob.encode(with:)(NSCoder with)
{
  v3 = MEMORY[0x25F86F000](*(v1 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_invitationID), *(v1 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_invitationID + 8));
  v4 = MEMORY[0x25F86F000](0x6974617469766E69, 0xEC00000044496E6FLL);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = MEMORY[0x25F86F000](0x626F6C4261746164, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v6];
}

id InvitationBlob.init(coder:)(void *a1)
{
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v2 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v2)
  {
    v3 = v2;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  type metadata accessor for InvitationBlob();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance InvitationBlob.CodingKeys()
{
  if (*v0)
  {
    return 0x626F6C4261746164;
  }

  else
  {
    return 0x6974617469766E69;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance InvitationBlob.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6974617469766E69 && a2 == 0xEC00000044496E6FLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x626F6C4261746164 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InvitationBlob.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InvitationBlob.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InvitationBlob.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14NearbySessions14InvitationBlobC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMd, &_ss22KeyedEncodingContainerVy14NearbySessions14InvitationBlobC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_dataBlob + 8);
    v12 = *(v3 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_dataBlob);
    v13 = v9;
    v11[15] = 1;
    outlined copy of Data._Representation(v12, v9);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v12, v13);
  }

  return (*(v6 + 8))(v8, v5);
}

void *InvitationBlob.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14NearbySessions14InvitationBlobC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMd, &_ss22KeyedDecodingContainerVy14NearbySessions14InvitationBlobC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for InvitationBlob();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v15) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = (v1 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_invitationID);
    *v11 = v9;
    v11[1] = v12;
    v16 = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_dataBlob) = v15;
    v13 = type metadata accessor for InvitationBlob();
    v14.receiver = v1;
    v14.super_class = v13;
    v3 = objc_msgSendSuper2(&v14, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t protocol witness for Decodable.init(from:) in conformance InvitationBlob@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t IncomingInvitationJoinRequest.remotePseudonym.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePseudonym);

  return v1;
}

uint64_t IncomingInvitationJoinRequest.remotePublicKey.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePublicKey);
  outlined copy of Data._Representation(v1, *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePublicKey + 8));
  return v1;
}

uint64_t IncomingInvitationJoinRequest.displayName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_displayName);

  return v1;
}

uint64_t IncomingInvitationJoinRequest.destinationToken.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_destinationToken);

  return v1;
}

uint64_t IncomingInvitationJoinRequest.userInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_userInfo);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_userInfo + 8));
  return v1;
}

void *IncomingInvitationJoinRequest.hostInfo.getter()
{
  v1 = OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_hostInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void IncomingInvitationJoinRequest.hostInfo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_hostInfo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id IncomingInvitationJoinRequest.__allocating_init(invitationID:remotePseudonym:destinationToken:remotePublicKey:displayName:userInfo:hostInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = objc_allocWithZone(v12);
  v18 = OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_hostInfo;
  *&v17[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_hostInfo] = 0;
  v19 = OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_invitationID;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v17[v19], a1, v20);
  v22 = &v17[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePseudonym];
  *v22 = a2;
  *(v22 + 1) = a3;
  v23 = &v17[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_destinationToken];
  *v23 = a4;
  *(v23 + 1) = a5;
  v24 = &v17[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePublicKey];
  *v24 = a6;
  *(v24 + 1) = a7;
  v25 = &v17[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_displayName];
  *v25 = a8;
  *(v25 + 1) = a9;
  v26 = &v17[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_userInfo];
  *v26 = a10;
  *(v26 + 1) = a11;
  swift_beginAccess();
  *&v17[v18] = a12;
  v33.receiver = v17;
  v33.super_class = v12;
  v27 = objc_msgSendSuper2(&v33, sel_init);
  (*(v21 + 8))(a1, v20);
  return v27;
}

id IncomingInvitationJoinRequest.init(invitationID:remotePseudonym:destinationToken:remotePublicKey:displayName:userInfo:hostInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_hostInfo;
  *&v12[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_hostInfo] = 0;
  v19 = OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_invitationID;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v12[v19], a1, v20);
  v22 = &v12[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePseudonym];
  *v22 = a2;
  *(v22 + 1) = a3;
  v23 = &v12[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_destinationToken];
  *v23 = a4;
  *(v23 + 1) = a5;
  v24 = &v12[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePublicKey];
  *v24 = a6;
  *(v24 + 1) = a7;
  v25 = &v12[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_displayName];
  *v25 = a8;
  *(v25 + 1) = a9;
  v26 = &v12[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_userInfo];
  *v26 = a10;
  *(v26 + 1) = a11;
  swift_beginAccess();
  *&v12[v18] = a12;
  v32.receiver = v12;
  v32.super_class = type metadata accessor for IncomingInvitationJoinRequest(0);
  v27 = objc_msgSendSuper2(&v32, sel_init);
  (*(v21 + 8))(a1, v20);
  return v27;
}

uint64_t IncomingInvitationJoinRequest.description.getter()
{
  v1 = 7104878;
  swift_getObjectType();
  _StringGuts.grow(_:)(127);
  MEMORY[0x25F86F070](60, 0xE100000000000000);
  v2 = _typeName(_:qualified:)();
  MEMORY[0x25F86F070](v2);

  MEMORY[0x25F86F070](0x74617469766E6920, 0xEF203A44496E6F69);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x25F86F070](v3);

  MEMORY[0x25F86F070](0xD000000000000012, 0x800000025B830CE0);
  MEMORY[0x25F86F070](*(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePseudonym), *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePseudonym + 8));
  MEMORY[0x25F86F070](0xD000000000000014, 0x800000025B830D00);
  if (*(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_destinationToken + 8))
  {

    v4 = String.init<A>(reflecting:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x25F86F070](v4, v6);

  MEMORY[0x25F86F070](0xD000000000000013, 0x800000025B830D20);
  v7 = Data.description.getter();
  MEMORY[0x25F86F070](v7);

  MEMORY[0x25F86F070](0x79616C7073696420, 0xEE00203A656D614ELL);
  MEMORY[0x25F86F070](*(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_displayName), *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_displayName + 8));
  MEMORY[0x25F86F070](0x6E4972657375202CLL, 0xEC000000203A6F66);
  v8 = *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_userInfo + 8);
  if (v8 >> 60 == 15)
  {
    v9 = 0xE300000000000000;
    v10 = 7104878;
  }

  else
  {
    outlined copy of Data._Representation(*(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_userInfo), v8);
    v10 = String.init<A>(reflecting:)();
    v9 = v11;
  }

  MEMORY[0x25F86F070](v10, v9);

  v12 = MEMORY[0x25F86F070](0x666E4974736F6820, 0xEB00000000203A6FLL);
  v13 = (*((*MEMORY[0x277D85000] & *v0) + 0x88))(v12);
  if (v13)
  {
    type metadata accessor for NearbyInvitationJoinRequestMetadata();
    v14 = v13;
    v1 = String.init<A>(reflecting:)();
    v16 = v15;
  }

  else
  {
    v16 = 0xE300000000000000;
  }

  MEMORY[0x25F86F070](v1, v16);

  MEMORY[0x25F86F070](62, 0xE100000000000000);
  return 0;
}

Swift::Void __swiftcall IncomingInvitationJoinRequest.encode(with:)(NSCoder with)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = MEMORY[0x25F86F000](0x6974617469766E69, 0xEC00000044496E6FLL);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v4];

  v5 = MEMORY[0x25F86F000](*(v1 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePseudonym), *(v1 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePseudonym + 8));
  v6 = MEMORY[0x25F86F000](0x735065746F6D6572, 0xEF6D796E6F647565);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  if (*(v1 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_destinationToken + 8))
  {
    v7 = MEMORY[0x25F86F000](*(v1 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_destinationToken));
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x25F86F000](0xD000000000000010, 0x800000025B830D40);
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  v9 = Data._bridgeToObjectiveC()().super.isa;
  v10 = MEMORY[0x25F86F000](0x755065746F6D6572, 0xEF79654B63696C62);
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = MEMORY[0x25F86F000](*(v1 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_displayName), *(v1 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_displayName + 8));
  v12 = MEMORY[0x25F86F000](0x4E79616C70736964, 0xEB00000000656D61);
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  if (*(v1 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_userInfo + 8) >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = Data._bridgeToObjectiveC()().super.isa;
  }

  v14 = MEMORY[0x25F86F000](0x6F666E4972657375, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
  swift_unknownObjectRelease();

  v15 = (*((*MEMORY[0x277D85000] & *v1) + 0x88))();
  v16 = MEMORY[0x25F86F000](0x6F666E4974736F68, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];
}

id IncomingInvitationJoinRequest.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v50 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v50 - v12;
  v14 = OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_hostInfo;
  *&v1[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_hostInfo] = 0;
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSUUID, 0x277CCAD78);
  v15 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v15 || (v16 = v15, (*(v8 + 56))(v6, 1, 1, v7), _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9620]), dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)(), v16, (*(v8 + 48))(v6, 1, v7) == 1))
  {

LABEL_20:
    type metadata accessor for IncomingInvitationJoinRequest(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v54 = v14;
  v17 = *(v8 + 32);
  v17(v11, v6, v7);
  v17(v13, v11, v7);
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v18 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v18)
  {
    (*(v8 + 8))(v13, v7);

    goto LABEL_19;
  }

  v56 = 0uLL;
  v19 = v18;
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  v20 = *(&v56 + 1);
  if (!*(&v56 + 1))
  {
LABEL_18:

    (*(v8 + 8))(v13, v7);
    goto LABEL_19;
  }

  v21 = v56;
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
  v22 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v22 || (v56 = xmmword_25B82C300, v23 = v22, static Data._conditionallyBridgeFromObjectiveC(_:result:)(), v23, *(&v56 + 1) >> 60 == 15))
  {
    (*(v8 + 8))(v13, v7);

LABEL_19:
    v14 = v54;
    goto LABEL_20;
  }

  v51 = v21;
  v53 = *(&v56 + 1);
  v24 = v56;
  v25 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v25)
  {
    (*(v8 + 8))(v13, v7);

    outlined consume of Data?(v24, v53);
    goto LABEL_19;
  }

  v52 = v24;
  v56 = 0uLL;
  v26 = v25;
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  if (!*(&v56 + 1))
  {

    outlined consume of Data?(v52, v53);
    goto LABEL_18;
  }

  v50 = v56;
  v27 = NSCoder.decodeObject<A>(of:forKey:)();
  v28 = v53;
  if (v27)
  {
    v56 = 0uLL;
    v29 = v27;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v30 = *(&v56 + 1);
    v31 = v56;
    if (!*(&v56 + 1))
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
    v30 = 0;
  }

  v33 = v52;
  v34 = &v2[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_destinationToken];
  *v34 = v31;
  *(v34 + 1) = v30;
  (*(v8 + 16))(&v2[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_invitationID], v13, v7);
  v35 = &v2[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePseudonym];
  *v35 = v51;
  *(v35 + 1) = v20;
  v36 = &v2[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePublicKey];
  *v36 = v33;
  v36[1] = v28;
  v37 = &v2[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_displayName];
  v38 = *(&v50 + 1);
  *v37 = v50;
  *(v37 + 1) = v38;
  outlined copy of Data._Representation(v33, v28);
  v39 = NSCoder.decodeObject<A>(of:forKey:)();
  v40 = v54;
  if (v39)
  {
    v41 = v39;
    v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0xF000000000000000;
  }

  v45 = &v2[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_userInfo];
  *v45 = v42;
  v45[1] = v44;
  type metadata accessor for NearbyInvitationJoinRequestMetadata();
  v46 = NSCoder.decodeObject<A>(of:forKey:)();
  outlined consume of Data?(v52, v28);
  (*(v8 + 8))(v13, v7);
  swift_beginAccess();
  v47 = *&v2[v40];
  *&v2[v40] = v46;

  v48 = type metadata accessor for IncomingInvitationJoinRequest(0);
  v55.receiver = v2;
  v55.super_class = v48;
  v49 = objc_msgSendSuper2(&v55, sel_init);

  return v49;
}

Swift::Int InvitationRequest.Errors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F86F720](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InvitationRequest<A>.Errors(uint64_t a1)
{
  Hasher.init(_seed:)();
  InvitationRequest.Errors.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t InvitationRequest.displayName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t InvitationRequest.displayName.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t InvitationRequest.userInfo.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  outlined copy of Data?(v1, *(v0 + 40));
  return v1;
}

uint64_t InvitationRequest.userInfo.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return outlined consume of Data?(v5, v6);
}

uint64_t InvitationRequest.invitationDisplayName.getter()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName);

  return v1;
}

uint64_t InvitationRequest.invitationUserInfo.getter()
{
  v1 = *(v0 + 48) + OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo;
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t InvitationRequest.__allocating_init(remoteInvitationData:providerType:displayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  InvitationRequest.init(remoteInvitationData:providerType:displayName:)(a1, v8, a3, a4);
  return v7;
}

void *InvitationRequest.init(remoteInvitationData:providerType:displayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = 0;
  v4[4] = 0;
  v4[2] = 0;
  v4[5] = 0xF000000000000000;
  v4[6] = a1;
  swift_beginAccess();
  v4[2] = a3;
  v4[3] = a4;
  swift_beginAccess();
  v7 = v4[4];
  v8 = v4[5];
  *(v4 + 2) = xmmword_25B82C300;
  outlined consume of Data?(v7, v8);
  return v4;
}

void *InvitationRequest.__allocating_init(remoteInvitationData:displayName:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_allocObject();
  v10 = specialized InvitationRequest.init(remoteInvitationData:displayName:userInfo:)(a1, a2, a3, a4, a5);
  outlined consume of Data?(a4, a5);
  return v10;
}

void *InvitationRequest.init(remoteInvitationData:displayName:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = specialized InvitationRequest.init(remoteInvitationData:displayName:userInfo:)(a1, a2, a3, a4, a5);
  outlined consume of Data?(a4, a5);
  return v7;
}

uint64_t InvitationRequest.requestApproval()()
{
  *(v1 + 24) = v0;
  return MEMORY[0x2822009F8](InvitationRequest.requestApproval(), 0, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = static NearbyInvitationsController.shared;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = type metadata accessor for InvitationJoinResponse();
  *v4 = v0;
  v4[1] = InvitationRequest.requestApproval();

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000011, 0x800000025B830D90, partial apply for closure #1 in InvitationRequest.requestApproval(), v3, v5);
}

{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = InvitationRequest.requestApproval();
  }

  else
  {

    v2 = NearbyInvitationsController.createGroup(with:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in InvitationRequest.requestApproval()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions22InvitationJoinResponseCs5Error_pGMd, &_sScCy14NearbySessions22InvitationJoinResponseCs5Error_pGMR);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v12 = (*(v6 + 120))(v9);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v42 = v7;
    v16 = a2[6];
    v17 = (*(*a2 + 144))();
    v43 = a3;
    v19 = v18;
    v20 = type metadata accessor for InvitationApprovalRequest();
    v41 = a1;
    v21 = v20;
    v22 = objc_allocWithZone(v20);
    *&v22[OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_remoteInvitationData] = v16;
    v23 = &v22[OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_displayName];
    *v23 = v14;
    *(v23 + 1) = v15;
    v24 = &v22[OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_userInfo];
    *v24 = v17;
    v24[1] = v19;
    v44.receiver = v22;
    v44.super_class = v21;
    v25 = v16;
    v26 = objc_msgSendSuper2(&v44, sel_init);
    v27 = v42;
    (*(v8 + 16))(v11, v41, v42);
    v28 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = *(v6 + 80);
    *(v29 + 24) = *(v6 + 88);
    (*(v8 + 32))(v29 + v28, v11, v27);
    NearbyInvitationsController.requestApproval(with:completion:)(v26, partial apply for closure #1 in closure #1 in InvitationRequest.requestApproval(), v29);
  }

  else
  {
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Log.client);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      type metadata accessor for InvitationRequest.Errors(0, *(v6 + 80), *(v6 + 88), v35);
      swift_getWitnessTable();
      swift_allocError();
      *v36 = 1;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v37;
      *v34 = v37;
      _os_log_impl(&dword_25B7C4000, v31, v32, "Passed an invalid displayName to the provider %@", v33, 0xCu);
      outlined destroy of NSObject?(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x25F86FE20](v34, -1, -1);
      MEMORY[0x25F86FE20](v33, -1, -1);
    }

    else
    {

      type metadata accessor for InvitationRequest.Errors(0, *(v6 + 80), *(v6 + 88), v38);
    }

    swift_getWitnessTable();
    v39 = swift_allocError();
    *v40 = 1;
    v45 = v39;
    CheckedContinuation.resume(throwing:)();
  }
}

id InvitationApprovalRequest.__allocating_init(remoteInvitationData:displayName:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_remoteInvitationData] = a1;
  v12 = &v11[OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_displayName];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR____TtC14NearbySessions25InvitationApprovalRequest_userInfo];
  *v13 = a4;
  *(v13 + 1) = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t closure #1 in closure #1 in InvitationRequest.requestApproval()(void *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions22InvitationJoinResponseCs5Error_pGMd, &_sScCy14NearbySessions22InvitationJoinResponseCs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a1)
  {
    type metadata accessor for InvitationRequest.Errors(0, a4, a5, a4);
    swift_getWitnessTable();
    swift_allocError();
    *v8 = 2;
    goto LABEL_3;
  }

  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions22InvitationJoinResponseCs5Error_pGMd, &_sScCy14NearbySessions22InvitationJoinResponseCs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t InvitationRequest.deinit()
{

  outlined consume of Data?(*(v0 + 32), *(v0 + 40));

  return v0;
}

uint64_t InvitationRequest.__deallocating_deinit()
{
  InvitationRequest.deinit();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t Handle.handle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Handle.tokenDestination.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

NearbySessions::Handle __swiftcall Handle.init(handle:tokenDestination:)(Swift::String handle, Swift::String_optional tokenDestination)
{
  v2->value = handle;
  v2[1] = tokenDestination;
  result.tokenDestination = tokenDestination;
  result.handle = handle;
  return result;
}

uint64_t Handle.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  _StringGuts.grow(_:)(46);
  MEMORY[0x25F86F070](0xD000000000000016, 0x800000025B830DB0);
  MEMORY[0x25F86F070](v1, v2);
  MEMORY[0x25F86F070](0xD000000000000014, 0x800000025B830DD0);
  if (v3)
  {

    v4 = String.init<A>(reflecting:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x25F86F070](v4, v6);

  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Handle()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  _StringGuts.grow(_:)(46);
  MEMORY[0x25F86F070](0xD000000000000016, 0x800000025B830DB0);
  MEMORY[0x25F86F070](v1, v2);
  MEMORY[0x25F86F070](0xD000000000000014, 0x800000025B830DD0);
  if (v3)
  {

    v4 = String.init<A>(reflecting:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x25F86F070](v4, v6);

  return 0;
}

uint64_t NearbyInvitation.displayName.getter()
{
  v1 = *(v0 + direct field offset for NearbyInvitation.displayName);

  return v1;
}

uint64_t NearbyInvitation.userInfo.getter()
{
  v1 = *(v0 + direct field offset for NearbyInvitation.userInfo);
  outlined copy of Data?(v1, *(v0 + direct field offset for NearbyInvitation.userInfo + 8));
  return v1;
}

uint64_t NearbyInvitation.invitationData.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NearbyInvitationData(0);

  v3 = objc_allocWithZone(v2);
  v4 = specialized NearbyInvitationData.init<A>(from:)(v1);

  v6 = (*((*MEMORY[0x277D85000] & *v4) + 0x80))(v5);

  return v6;
}

id NearbyInvitationData.__allocating_init<A>(from:)(uint64_t a1)
{
  v1 = specialized NearbyInvitationData.__allocating_init<A>(from:)(a1);

  return v1;
}

Swift::Int NearbyInvitation.PendingMember.Errors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x25F86F720](0);
  return Hasher._finalize()();
}

uint64_t NearbyInvitation.PendingMember.displayName.getter()
{
  v0 = specialized NearbyInvitation.PendingMember.displayName.getter();

  return v0;
}

uint64_t NearbyInvitation.PendingMember.joinRequestUserInfo.getter()
{
  v1 = *v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_userInfo;
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t NearbyInvitation.PendingMember.invitationID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_invitationID;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t key path getter for NearbyInvitation.PendingMember.invitation : <A>NearbyInvitation<A>.PendingMember@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for NearbyInvitation.PendingMember(0, *(a2 + a3 - 16), *(a2 + a3 - 8), a5);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_weakLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a4 = Strong;
  return result;
}

uint64_t NearbyInvitation.PendingMember.invitation.setter(uint64_t a1)
{
  swift_weakAssign();
}

uint64_t (*NearbyInvitation.PendingMember.invitation.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_weakLoadStrong();
  return NearbyInvitation.PendingMember.invitation.modify;
}

uint64_t NearbyInvitation.PendingMember.invitation.modify(void *a1)
{
  swift_weakAssign();
}

uint64_t NearbyInvitation.PendingMember.description.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(27);

  v2 = _typeName(_:qualified:)();
  MEMORY[0x25F86F070](v2);

  MEMORY[0x25F86F070](2108704, 0xE300000000000000);
  v3 = *v1;
  v4 = *(*v1 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_displayName);
  v5 = *(*v1 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_displayName + 8);

  MEMORY[0x25F86F070](v4, v5);

  MEMORY[0x25F86F070](0xD000000000000010, 0x800000025B830DF0);
  v6 = [v3 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  MEMORY[0x25F86F070](v7, v9);

  MEMORY[0x25F86F070](62, 0xE100000000000000);
  return 60;
}

uint64_t NearbyInvitation.PendingMember.init(joinRequest:invitation:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_weakInit();
  v6 = *(a2 + direct field offset for NearbyInvitation.invitationHostInfo);
  v7 = *((*MEMORY[0x277D85000] & *a1) + 0x90);
  v8 = a1;
  v9 = v6;
  v7(v6);

  *a3 = v8;
  swift_weakAssign();
}

uint64_t NearbyInvitation.PendingMember.approve()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in NearbyGroupTable.firstGroup();

  return NearbyInvitation.PendingMember.approve(userInfo:)(0, 0xF000000000000000, a1);
}

uint64_t NearbyInvitation.PendingMember.approve(userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](NearbyInvitation.PendingMember.approve(userInfo:), 0, 0);
}

uint64_t NearbyInvitation.PendingMember.approve(userInfo:)()
{
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v9 = (*(*Strong + 264) + **(*Strong + 264));
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = NearbyInvitation.PendingMember.approve(userInfo:);
    v4 = v0[5];
    v5 = v0[2];
    v6 = v0[3];

    return v9(v4, v5, v6);
  }

  else
  {
    type metadata accessor for NearbyInvitation.PendingMember.Errors(0, *(v0[4] + 16), *(v0[4] + 24), v2);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = NearbyInvitation.PendingMember.approve(userInfo:);
  }

  else
  {
    v2 = NearbyInvitation.PendingMember.approve(userInfo:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t NearbyInvitation.PendingMember.reject()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](NearbyInvitation.PendingMember.reject(), 0, 0);
}

uint64_t NearbyInvitation.PendingMember.reject()()
{
  Strong = swift_weakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {
    v7 = (*(*Strong + 272) + **(*Strong + 272));
    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = NearbyInvitation.PendingMember.reject();
    v4 = v0[3];

    return v7(v4);
  }

  else
  {
    type metadata accessor for NearbyInvitation.PendingMember.Errors(0, *(v0[2] + 16), *(v0[2] + 24), v2);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = NearbyInvitation.PendingMember.reject();
  }

  else
  {
    v2 = NearbyInvitation.PendingMember.reject();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Int NearbyInvitation.PendingMember.hashValue.getter()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t property wrapper backing initializer of NearbyInvitation.pendingMembers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  type metadata accessor for NearbyInvitation.PendingMember(255, a2, a3, a4);
  swift_getWitnessTable();
  v4 = type metadata accessor for Set();
  return Published.init(wrappedValue:)(&v6, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NearbyInvitation<A>.PendingMember(uint64_t a1)
{
  Hasher.init(_seed:)();
  NearbyInvitation.PendingMember.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t key path getter for NearbyInvitation.pendingMembers : <A>NearbyInvitation<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t key path setter for NearbyInvitation.pendingMembers : <A>NearbyInvitation<A>(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 176);

  return v2(v3);
}

uint64_t NearbyInvitation.pendingMembers.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t NearbyInvitation.pendingMembers.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*NearbyInvitation.pendingMembers.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  MEMORY[0x28223BE20](v2);
  KeyPath = swift_getKeyPath();
  v3[4] = KeyPath;
  MEMORY[0x28223BE20](KeyPath);
  v3[5] = swift_getKeyPath();
  v3[6] = static Published.subscript.modify();
  return NearbyInvitationsController.groups.modify;
}

uint64_t key path setter for NearbyInvitation.$pendingMembers : <A>NearbyInvitation<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NearbyInvitation.PendingMember(255, *(a3 + a4 - 16), *(a3 + a4 - 8), a4);
  swift_getWitnessTable();
  type metadata accessor for Set();
  v6 = type metadata accessor for Published.Publisher();
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  return (*(**a2 + 200))(v8);
}

uint64_t NearbyInvitation.$pendingMembers.getter()
{
  v1 = *v0;
  swift_beginAccess();
  type metadata accessor for NearbyInvitation.PendingMember(255, *(v1 + 80), *(v1 + 88), v2);
  swift_getWitnessTable();
  type metadata accessor for Set();
  type metadata accessor for Published();
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t NearbyInvitation.$pendingMembers.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  specialized NearbyInvitation.$pendingMembers.setter(a1, a2, a3, a4);
  type metadata accessor for NearbyInvitation.PendingMember(255, *(v6 + 80), *(v6 + 88), v7);
  swift_getWitnessTable();
  type metadata accessor for Set();
  v8 = type metadata accessor for Published.Publisher();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1, v8);
}

void (*NearbyInvitation.$pendingMembers.modify(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v6 = v4;
  *a1 = v4;
  *v4 = v1;
  type metadata accessor for NearbyInvitation.PendingMember(255, *(*v1 + 80), *(*v1 + 88), v5);
  swift_getWitnessTable();
  type metadata accessor for Set();
  v7 = type metadata accessor for Published.Publisher();
  v6[1] = v7;
  v8 = *(v7 - 8);
  v6[2] = v8;
  v9 = *(v8 + 64);
  if (v3)
  {
    v6[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v6[4] = v10;
  NearbyInvitation.$pendingMembers.getter();
  return NearbyInvitation.$pendingMembers.modify;
}

void NearbyInvitation.$pendingMembers.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  v7 = *(*a1 + 8);
  v8 = *(*a1 + 16);
  if (a2)
  {
    (*(v8 + 16))(*(*a1 + 24), v6, v7);
    specialized NearbyInvitation.$pendingMembers.setter(v5, v9, v10, v11);
    v12 = *(v8 + 8);
    v12(v5, v7);
    v12(v6, v7);
  }

  else
  {
    specialized NearbyInvitation.$pendingMembers.setter(*(*a1 + 32), a2, a3, a4);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t NearbyInvitation.cancellables.setter(uint64_t a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t NearbyInvitation.__allocating_init(displayName:service:userInfo:invitationSourceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a6;
  v7[7] = v6;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a2;
  type metadata accessor for UUID();
  v7[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](NearbyInvitation.__allocating_init(displayName:service:userInfo:invitationSourceProvider:), 0, 0);
}

uint64_t NearbyInvitation.__allocating_init(displayName:service:userInfo:invitationSourceProvider:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  UUID.init()();
  outlined copy of Data?(v3, v2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static NearbyInvitationsController.shared;
  v6 = *(v4 - 8);
  v7 = swift_task_alloc();
  v0[9] = v7;
  (*(v6 + 16))();

  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = NearbyInvitation.__allocating_init(displayName:service:userInfo:invitationSourceProvider:);
  v9 = v0[8];
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[2];
  v13 = v0[3];

  return NearbyInvitation.__allocating_init<A>(id:displayName:userInfo:controller:invitationSourceProvider:)(v9, v12, v13, v10, v11, v5, v7, v4);
}

{
  v1 = v0[6];
  outlined consume of Data?(v0[4], v0[5]);
  __swift_destroy_boxed_opaque_existential_0(v1);

  v2 = v0[1];
  v3 = v0[12];

  return v2(v3);
}

{
  v1 = v0[6];
  outlined consume of Data?(v0[4], v0[5]);

  __swift_destroy_boxed_opaque_existential_0(v1);

  v2 = v0[1];

  return v2();
}

uint64_t NearbyInvitation.__allocating_init(displayName:service:userInfo:invitationSourceProvider:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = NearbyInvitation.__allocating_init(displayName:service:userInfo:invitationSourceProvider:);
  }

  else
  {
    *(v4 + 96) = a1;

    v5 = NearbyInvitation.__allocating_init(displayName:service:userInfo:invitationSourceProvider:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t NearbyInvitation.__allocating_init<A>(id:displayName:userInfo:controller:invitationSourceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[11] = v13;
  v9[12] = v8;
  v9[9] = a7;
  v9[10] = a8;
  v9[7] = a5;
  v9[8] = a6;
  v9[5] = a3;
  v9[6] = a4;
  v9[3] = a1;
  v9[4] = a2;
  v9[13] = *(a8 - 8);
  v9[14] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v9[15] = v10;
  v9[16] = *(v10 - 8);
  v9[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](NearbyInvitation.__allocating_init<A>(id:displayName:userInfo:controller:invitationSourceProvider:), 0, 0);
}

uint64_t NearbyInvitation.__allocating_init<A>(id:displayName:userInfo:controller:invitationSourceProvider:)()
{
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  v2 = type metadata accessor for NearbyInvitationJoinRequestMetadata();
  *v1 = v0;
  v1[1] = NearbyInvitation.__allocating_init<A>(id:displayName:userInfo:controller:invitationSourceProvider:);
  v3 = *(v0 + 64);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000042, 0x800000025B830E10, partial apply for closure #1 in NearbyInvitation.init<A>(id:displayName:userInfo:controller:invitationSourceProvider:), v3, v2);
}

{
  *(*v1 + 152) = v0;

  if (v0)
  {

    v2 = NearbyInvitation.__allocating_init<A>(id:displayName:userInfo:controller:invitationSourceProvider:);
  }

  else
  {
    v2 = NearbyInvitation.__allocating_init<A>(id:displayName:userInfo:controller:invitationSourceProvider:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[9];
  v24 = v0[8];
  v25 = v0[19];
  v23 = v0[7];
  v21 = v0[11];
  v22 = v0[6];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  (*(v0[16] + 16))(v1, v0[3], v0[15]);
  (*(v4 + 16))(v2, v6, v5);
  v10 = (*(v3 + 240))(v1, v7, v8, v9, v22, v23, v24, v2, v5, v21);
  if (v25)
  {
    v11 = v0[15];
    v12 = v0[16];
    v13 = v0[3];
    (*(v0[13] + 8))(v0[9], v0[10]);
    (*(v12 + 8))(v13, v11);

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v0[16];
    v17 = v0[15];
    v18 = v0[3];
    v19 = v10;
    (*(v0[13] + 8))(v0[9], v0[10]);
    (*(v16 + 8))(v18, v17);

    v20 = v0[1];

    return v20(v19);
  }
}

{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[6];
  v8 = v0[3];

  outlined consume of Data?(v7, v6);
  (*(v3 + 8))(v5, v4);
  (*(v2 + 8))(v8, v1);

  v9 = v0[1];

  return v9();
}

uint64_t closure #1 in NearbyInvitation.init<A>(id:displayName:userInfo:controller:invitationSourceProvider:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCs5Error_pGMd, &_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCs5Error_pGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  NearbyInvitationsController.generateNearbyInvitation(response:)(partial apply for closure #1 in closure #1 in NearbyInvitation.init<A>(id:displayName:userInfo:controller:invitationSourceProvider:), v7);
}

void *closure #1 in closure #1 in NearbyInvitation.init<A>(id:displayName:userInfo:controller:invitationSourceProvider:)(void *result, id a2)
{
  if (result)
  {
    v2 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCs5Error_pGMd, &_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }

  else if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCs5Error_pGMd, &_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *NearbyInvitation.init<A>(id:displayName:hostInfo:userInfo:controller:invitationSourceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = specialized NearbyInvitation.init<A>(id:displayName:hostInfo:userInfo:controller:invitationSourceProvider:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  (*(*(a9 - 8) + 8))(a8, a9);

  outlined consume of Data?(a5, a6);

  return v14;
}

uint64_t closure #1 in NearbyInvitation.init<A>(id:displayName:hostInfo:userInfo:controller:invitationSourceProvider:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = (*((*MEMORY[0x277D85000] & *v7) + 0x88))();
    if (v10)
    {
      v12 = *(v10 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym);
      v11 = *(v10 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym + 8);
      v13 = v10;

      v14 = (*(v9 + direct field offset for NearbyInvitation.invitationHostInfo) + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym);
      if (v12 == *v14 && v11 == v14[1])
      {
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
        }
      }

      v17 = v7;

      NearbyInvitation.PendingMember.init(joinRequest:invitation:)(v17, v9, &v22);
      v18 = (*(*v9 + 184))(v21);
      v20 = type metadata accessor for NearbyInvitation.PendingMember(255, a3, a5, v19);
      swift_getWitnessTable();
      type metadata accessor for Set();
      Set.insert(_:)();
      (*(*(v20 - 8) + 8))(v23, v20);
      v18(v21, 0);
    }
  }

  return result;
}

char *NearbyInvitation.deinit()
{
  v17 = *v0;
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = direct field offset for NearbyInvitation.controller;
  v16 = direct field offset for NearbyInvitation.invitationHostInfo;
  v5 = *(v0 + direct field offset for NearbyInvitation.invitationHostInfo);
  v6 = direct field offset for NearbyInvitation.id;
  (*(v2 + 16))(v4, v0 + direct field offset for NearbyInvitation.id, v1);
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  (*(v2 + 32))(v9 + v7, v4, v1);
  *(v9 + v8) = v5;
  v10 = v5;

  NearbyInvitationsController.releaseInvitation(_:response:)(v10, partial apply for closure #1 in NearbyInvitation.deinit, v9);

  (*(v2 + 8))(v0 + v6, v1);

  outlined consume of Data?(*(v0 + direct field offset for NearbyInvitation.userInfo), *(v0 + direct field offset for NearbyInvitation.userInfo + 8));

  __swift_destroy_boxed_opaque_existential_0((v0 + direct field offset for NearbyInvitation.sourceProvider));
  v11 = *(*v0 + 144);
  type metadata accessor for NearbyInvitation.PendingMember(255, *(v17 + 80), *(v17 + 88), v12);
  swift_getWitnessTable();
  type metadata accessor for Set();
  v13 = type metadata accessor for Published();
  (*(*(v13 - 8) + 8))(v0 + v11, v13);

  return v0;
}

void closure #1 in NearbyInvitation.deinit(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  if (a1)
  {
    v13 = a1;
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Log.client);
    (*(v7 + 16))(v12, a2, v6);
    v15 = a1;
    v16 = a3;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v19 = 136315650;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v43 = v17;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v7 + 8))(v12, v6);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v45);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v16;
      *v20 = v16;
      *(v19 + 22) = 2112;
      v25 = a1;
      v26 = v16;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v27;
      v20[1] = v27;
      v28 = v43;
      _os_log_impl(&dword_25B7C4000, v43, v18, "Failed to release invitation: %s - %@, reason: %@", v19, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x25F86FE20](v20, -1, -1);
      v29 = v44;
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x25F86FE20](v29, -1, -1);
      MEMORY[0x25F86FE20](v19, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }
  }

  else
  {
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Log.client);
    (*(v7 + 16))(v10, a2, v6);
    v31 = a3;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v34 = 136315394;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      (*(v7 + 8))(v10, v6);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v45);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2112;
      *(v34 + 14) = v31;
      *v35 = v31;
      v40 = v31;
      _os_log_impl(&dword_25B7C4000, v32, v33, "Successfully released invitation: %s - %@", v34, 0x16u);
      outlined destroy of NSObject?(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x25F86FE20](v35, -1, -1);
      v41 = v44;
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x25F86FE20](v41, -1, -1);
      MEMORY[0x25F86FE20](v34, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }
}

uint64_t NearbyInvitation.__deallocating_deinit()
{
  NearbyInvitation.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t NearbyInvitation.description.getter()
{
  _StringGuts.grow(_:)(28);
  v1 = _typeName(_:qualified:)();

  v8 = v1;
  MEMORY[0x25F86F070](1029990688, 0xE400000000000000);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x25F86F070](v2);

  MEMORY[0x25F86F070](0x3D656D616E20, 0xE600000000000000);
  MEMORY[0x25F86F070](*(v0 + direct field offset for NearbyInvitation.displayName), *(v0 + direct field offset for NearbyInvitation.displayName + 8));
  MEMORY[0x25F86F070](0x666E4974736F6820, 0xEA00000000003D6FLL);
  v3 = [*(v0 + direct field offset for NearbyInvitation.invitationHostInfo) description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  MEMORY[0x25F86F070](v4, v6);

  return v8;
}

uint64_t NearbyInvitation.markUsed()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](NearbyInvitation.markUsed(), 0, 0);
}

{
  v19 = v0;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.client);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 16);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315394;
    v8 = *(*v5 + 248);

    v10 = v8(v9);
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v18);

    *(v6 + 4) = v13;
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x646573556B72616DLL, 0xEA00000000002928, &v18);
    _os_log_impl(&dword_25B7C4000, v2, v3, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v7, -1, -1);
    MEMORY[0x25F86FE20](v6, -1, -1);
  }

  else
  {
  }

  v14 = swift_task_alloc();
  *(v0 + 24) = v14;
  *v14 = v0;
  v14[1] = NearbyInvitation.markUsed();
  v15 = *(v0 + 16);
  v16 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v14, 0, 0, 0x646573556B72616DLL, 0xEA00000000002928, partial apply for closure #1 in NearbyInvitation.markUsed(), v15, v16);
}

{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = NearbyInvitation.markUsed();
  }

  else
  {
    v2 = NearbyInvitationAdvertiser.stop();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return (*(v0 + 8))();
}