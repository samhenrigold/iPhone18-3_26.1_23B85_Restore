uint64_t specialized Set._Variant._migrateToNative(_:removing:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo18CKShareParticipantC_Tt1g5(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = NSObject._rawHashValue(seed:)(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    type metadata accessor for CKShareParticipant(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
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

uint64_t specialized _NativeSet._delete(at:)(int64_t a1)
{
  v3 = type metadata accessor for Participant();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;

    v14 = _HashTable.previousHole(before:)();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v15 = v13;
      v16 = (v14 + 1) & v13;
      v36 = *(v4 + 16);
      v37 = v4 + 16;
      v17 = *(v4 + 72);
      v34 = (v4 + 8);
      v35 = v10;
      v18 = v17;
      do
      {
        v19 = v18;
        v20 = v18 * v12;
        v36(v8, *(v9 + 48) + v18 * v12, v3);
        v21 = v9;
        v22 = v16;
        v23 = v15;
        v24 = v21;
        lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x277CCB248], MEMORY[0x277CCB250]);
        v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v34)(v8, v3);
        v26 = v25 & v23;
        v15 = v23;
        v16 = v22;
        if (a1 >= v22)
        {
          if (v26 >= v22 && a1 >= v26)
          {
LABEL_16:
            v9 = v24;
            v29 = *(v24 + 48);
            v18 = v19;
            v30 = v19 * a1;
            if (v19 * a1 < v20 || v29 + v19 * a1 >= (v29 + v20 + v19))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v30 != v20)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v26 >= v22 || a1 >= v26)
        {
          goto LABEL_16;
        }

        v9 = v24;
        v18 = v19;
LABEL_5:
        v12 = (v12 + 1) & v15;
        v10 = v35;
      }

      while (((*(v35 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v31 = *(v9 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v33;
    ++*(v9 + 36);
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
      v23 = v9;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        if (v10)
        {
          v11 = v10;
          if ([v11 acceptanceStatus] == 2 && (v12 = objc_msgSend(v11, sel_userIdentity), v13 = objc_msgSend(v12, sel_userRecordID), v12, v13))
          {
            v14 = [v13 recordName];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            Hasher._combine(_:)(1u);
            v9 = v23;
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
          v11 = 0;
        }

        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v9)
        {
          if (v16 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v9)
        {
          goto LABEL_17;
        }

        if (v2 >= v16)
        {
LABEL_17:
          v17 = *(v3 + 48);
          v18 = (v17 + 8 * v2);
          v19 = (v17 + 8 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CKShareParticipantC_Tt0g5Tf4g_n(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo18CKShareParticipantCGMd, &_ss11_SetStorageCySo18CKShareParticipantCGMR);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = __CocoaSet.count.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = MEMORY[0x2743D7610](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for CKShareParticipant(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = v1 + 32;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v38)
    {
      v23 = *(v3 + 40);
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *(v6 + 8 * (v27 >> 6));
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for CKShareParticipant(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
        do
        {
          v32 = *(*(v3 + 48) + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v39;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *(v6 + 8 * (v27 >> 6));
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v39;
      }

      *(v6 + 8 * v28) = v30 | v29;
      *(*(v3 + 48) + 8 * v27) = v24;
      v34 = *(v3 + 16);
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type CKShareParticipant and conformance NSObject;
  if (!lazy protocol witness table cache variable for type CKShareParticipant and conformance NSObject)
  {
    type metadata accessor for CKShareParticipant(255, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CKShareParticipant and conformance NSObject);
  }

  return result;
}

uint64_t outlined copy of PresenceUpdateMessage?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    outlined copy of PresenceUpdateMessage.Kind(result, a2, a3, a4);
  }

  return result;
}

uint64_t outlined consume of PresenceUpdateMessage?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    outlined consume of PresenceUpdateMessage.Kind(result, a2, a3, a4);
  }

  return result;
}

uint64_t type metadata accessor for CKShareParticipant(uint64_t a1, unint64_t *a2, void *a3)
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

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Participant and conformance Participant(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void outlined copy of ParticipantPresenceCoordinator.ConnectionManagerStore.SharedConnection?(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = a2;
  }
}

char *CKShareGroupSessionProvider.__allocating_init(id:activity:share:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  swift_allocObject();
  v10 = specialized CKShareGroupSessionProvider.init(id:activity:share:)(a1, a2, a3, a4);
  (*(*(*(v5 + 80) - 8) + 8))(a3);
  return v10;
}

uint64_t CKShareGroupSessionProvider.id.getter()
{
  v0 = specialized CKShareGroupSessionProvider.id.getter();

  return v0;
}

uint64_t CKShareGroupSessionProvider.id.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t CKShareGroupSessionProvider.state.getter()
{
  specialized CKShareGroupSessionProvider.state.getter();
}

uint64_t CKShareGroupSessionProvider.state.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t CKShareGroupSessionProvider.presenceInfo.getter()
{
  specialized CKShareGroupSessionProvider.presenceInfo.getter();
}

uint64_t CKShareGroupSessionProvider.presenceInfo.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t CKShareGroupSessionProvider.members.getter()
{
  specialized CKShareGroupSessionProvider.members.getter();
}

uint64_t CKShareGroupSessionProvider.members.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t CKShareGroupSessionProvider.share.didset()
{
  swift_beginAccess();
  v1 = *(*v0 + 144);
  swift_beginAccess();
  v2 = *(v0 + v1);

  v3 = v2;
  CKShare.members.getter();

  CurrentValueSubject.send(_:)();
}

void *CKShare.members.getter()
{
  v1 = type metadata accessor for AddressableMember();
  v2 = *(v1 - 8);
  v41 = v1;
  v42 = v2;
  MEMORY[0x28223BE20](v1, v3);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 participants];
  type metadata accessor for CKShareParticipant();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = MEMORY[0x277D84F90];
  v7 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
LABEL_43:
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    v38 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v10 = 0;
  v11 = v6 & 0xC000000000000001;
  v38 = MEMORY[0x277D84F90];
  do
  {
    v12 = v10;
    while (1)
    {
      if (v11)
      {
        v13 = MEMORY[0x2743D7610](v12, v6);
      }

      else
      {
        if (v12 >= *(v7 + 16))
        {
          goto LABEL_42;
        }

        v13 = *(v6 + 8 * v12 + 32);
      }

      v14 = v13;
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if ([v13 acceptanceStatus] != 2)
      {
        goto LABEL_7;
      }

      v15 = [v14 userIdentity];
      v16 = [v15 lookupInfo];

      if (!v16)
      {
        goto LABEL_7;
      }

      v17 = v11;
      v18 = v7;
      v19 = [v16 emailAddress];
      if (v19)
      {
        v20 = v19;
        v21 = [objc_opt_self() normalizedEmailAddressHandleForValue_];
        goto LABEL_19;
      }

      v22 = [v16 phoneNumber];
      if (v22)
      {
        break;
      }

      v11 = v17;
LABEL_7:

LABEL_8:
      ++v12;
      if (v10 == v8)
      {
        v9 = MEMORY[0x277D84F90];
        goto LABEL_28;
      }
    }

    v20 = v22;
    v21 = [objc_opt_self() normalizedPhoneNumberHandleForValue:v22 isoCountryCode:0];
LABEL_19:
    v23 = v21;

    v7 = v18;
    v11 = v17;
    if (!v23)
    {
      goto LABEL_8;
    }

    MEMORY[0x2743D7260]();
    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v11 = v17;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v38 = v43;
    v9 = MEMORY[0x277D84F90];
  }

  while (v10 != v8);
LABEL_28:

  v24 = v38;
  if (v38 >> 62)
  {
    v25 = __CocoaSet.count.getter();
    if (!v25)
    {
      goto LABEL_45;
    }

LABEL_30:
    v43 = v9;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25 & ~(v25 >> 63), 0);
    if ((v25 & 0x8000000000000000) == 0)
    {
      v27 = 0;
      v28 = v24;
      v39 = v24 & 0xC000000000000001;
      v29 = v43;
      do
      {
        if (v39)
        {
          v30 = MEMORY[0x2743D7610](v27, v28);
        }

        else
        {
          v30 = *(v28 + 8 * v27 + 32);
        }

        v31 = v30;
        v32 = [v30 normalizedValue];
        if (!v32)
        {
          v32 = [v31 value];
        }

        v33 = v32;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v34 = v40;
        AddressableMember.init(handle:)();

        v43 = v29;
        v36 = *(v29 + 16);
        v35 = *(v29 + 24);
        if (v36 >= v35 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
          v29 = v43;
        }

        ++v27;
        *(v29 + 16) = v36 + 1;
        (*(v42 + 32))(v29 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v36, v34, v41);
      }

      while (v25 != v27);

      goto LABEL_46;
    }

    __break(1u);
  }

  else
  {
    v25 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_30;
    }

LABEL_45:

    v29 = MEMORY[0x277D84F90];
LABEL_46:
    v37 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15GroupActivities17AddressableMemberV_SayAFGTt0g5Tf4g_n(v29);

    return v37;
  }

  return result;
}

id CKShareGroupSessionProvider.share.getter()
{
  v0 = specialized CKShareGroupSessionProvider.share.getter();

  return v0;
}

void CKShareGroupSessionProvider.share.setter(void *a1)
{
  specialized CKShareGroupSessionProvider.share.setter(a1);
}

uint64_t (*CKShareGroupSessionProvider.share.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CKShareGroupSessionProvider.share.modify;
}

uint64_t CKShareGroupSessionProvider.share.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return CKShareGroupSessionProvider.share.didset();
  }

  return result;
}

char *CKShareGroupSessionProvider.init(id:activity:share:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *v4;
  v7 = specialized CKShareGroupSessionProvider.init(id:activity:share:)(a1, a2, a3, a4);
  (*(*(*(v6 + 80) - 8) + 8))(a3);
  return v7;
}

id CKShareParticipant.handle.getter()
{
  v1 = [v0 userIdentity];
  v2 = [v1 lookupInfo];

  if (v2)
  {
    v3 = [v2 emailAddress];
    if (v3)
    {
      v4 = v3;
      v5 = [objc_opt_self() normalizedEmailAddressHandleForValue_];
LABEL_6:
      v7 = v5;

      return v7;
    }

    v6 = [v2 phoneNumber];
    if (v6)
    {
      v4 = v6;
      v5 = [objc_opt_self() normalizedPhoneNumberHandleForValue:v6 isoCountryCode:0];
      goto LABEL_6;
    }
  }

  return 0;
}

char *CKShareGroupSessionProvider.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128));
  outlined destroy of Member?(v0 + *(*v0 + 136));

  return v0;
}

uint64_t CKShareGroupSessionProvider.__deallocating_deinit()
{
  CKShareGroupSessionProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Identifiable.id.getter in conformance CKShareGroupSessionProvider<A>@<X0>(uint64_t *a1@<X8>)
{
  *a1 = specialized CKShareGroupSessionProvider.id.getter();
  a1[1] = v2;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17WebBookmarksSwift20ParticipantHandleMapC0E4KindO_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type ParticipantHandleMap.ParticipantKind and conformance ParticipantHandleMap.ParticipantKind();
  result = MEMORY[0x2743D7430](v2, &type metadata for ParticipantHandleMap.ParticipantKind, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      specialized Set._Variant.insert(_:)(&v8, v6);

      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15GroupActivities17AddressableMemberV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for AddressableMember();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember, MEMORY[0x277CCB290], MEMORY[0x277CCB298]);
  result = MEMORY[0x2743D7430](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v7, v17, v2);
      specialized Set._Variant.insert(_:)(v10, v7);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo18CKShareParticipantC_SayAEGTt0g5Tf4g_n(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v4 = type metadata accessor for CKShareParticipant();
    v5 = lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember(&lazy protocol witness table cache variable for type CKShareParticipant and conformance NSObject, type metadata accessor for CKShareParticipant, MEMORY[0x277D85378]);
    result = MEMORY[0x2743D7430](i, v4, v5);
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
        v9 = MEMORY[0x2743D7610](j, a1);
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

char *specialized CKShareGroupSessionProvider.init(id:activity:share:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v54 = *v4;
  v10 = v54;
  v11 = type metadata accessor for PresenceSessionInfo();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v13 = type metadata accessor for GroupSessionProviderState();
  MEMORY[0x28223BE20](v13, v14);
  (*(v16 + 104))(&v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CCB1A8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities0E20SessionProviderStateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities0E20SessionProviderStateOs5NeverOGMR);
  swift_allocObject();
  *(v4 + 4) = CurrentValueSubject.init(_:)();
  static PresenceSessionInfo.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMR);
  swift_allocObject();
  *(v4 + 5) = CurrentValueSubject.init(_:)();
  *(v4 + 2) = a1;
  *(v4 + 3) = a2;
  v17 = *(*v4 + 128);
  v18 = *(v10 + 80);
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v4[v17], a3, v18);
  *&v4[*(*v4 + 144)] = a4;
  v20 = a4;
  *&v51 = CKShare.members.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMR);
  swift_allocObject();
  *(v4 + 6) = CurrentValueSubject.init(_:)();
  v21 = [v20 currentUserParticipant];
  if (v21 && (v22 = v21, v23 = CKShareParticipant.handle.getter(), v22, v23))
  {
    v24 = [v23 normalizedValue];
    if (!v24)
    {
      v24 = [v23 value];
    }

    v25 = v24;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    *(&v52 + 1) = type metadata accessor for AddressableMember();
    v53 = lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember, MEMORY[0x277CCB290], MEMORY[0x277CCB288]);
    __swift_allocate_boxed_opaque_existential_1(&v51);
    AddressableMember.init(handle:)();

    v26 = &v5[*(*v5 + 136)];
    v27 = v52;
    *v26 = v51;
    *(v26 + 1) = v27;
    *(v26 + 4) = v53;
  }

  else
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.tabGroup);
    v29 = v20;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v51 = v49;
      *v32 = 136315138;
      v33 = [v29 recordID];
      v50 = v17;
      v34 = v33;
      v35 = [v33 ckShortDescription];
      HIDWORD(v48) = v31;
      v36 = v29;
      v37 = v19;
      v38 = v35;

      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v19 = v37;
      v29 = v36;
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v51);

      *(v32 + 4) = v42;
      v17 = v50;
      _os_log_impl(&dword_272D1B000, v30, BYTE4(v48), "Share %s does not have a currentUserParticipant", v32, 0xCu);
      v43 = v49;
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x2743D7F00](v43, -1, -1);
      MEMORY[0x2743D7F00](v32, -1, -1);
    }

    v44 = *(v54 + 88);
    type metadata accessor for CKShareGroupSessionProvider.Errors(0, v18, v44, v45);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();

    (*(v19 + 8))(&v5[v17], v18);

    type metadata accessor for CKShareGroupSessionProvider(0, v18, v44, v46);
    swift_deallocPartialClassInstance();
  }

  return v5;
}

uint64_t outlined init with copy of Member?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities6Member_pSgMd, &_s15GroupActivities6Member_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized CKShareGroupSessionProvider.share.getter()
{
  v1 = *(*v0 + 144);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t specialized CKShareGroupSessionProvider.share.setter(void *a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  return CKShareGroupSessionProvider.share.didset();
}

uint64_t outlined destroy of Member?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities6Member_pSgMd, &_s15GroupActivities6Member_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t keypath_get_1Tm@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  *a2 = a1();
}

uint64_t type metadata completion function for CKShareGroupSessionProvider(uint64_t a1)
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

uint64_t lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalDeviceCoordinationActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalDeviceCoordinationActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance PersonalDeviceCoordinationActivity@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV10CodingKeys33_2E2785385871484D9EC6B327441CA1D2LLOGMd, &_ss22KeyedDecodingContainerVy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV10CodingKeys33_2E2785385871484D9EC6B327441CA1D2LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys();
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

uint64_t protocol witness for Encodable.encode(to:) in conformance PersonalDeviceCoordinationActivity(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV10CodingKeys33_2E2785385871484D9EC6B327441CA1D2LLOGMd, &_ss22KeyedEncodingContainerVy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV10CodingKeys33_2E2785385871484D9EC6B327441CA1D2LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t lazy protocol witness table accessor for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity()
{
  result = lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity;
  if (!lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity;
  if (!lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity;
  if (!lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity;
  if (!lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17WebBookmarksSwift21PresenceUpdateMessageV4KindO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for PresenceUpdateMessage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PresenceUpdateMessage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 6907764;
    }

    else
    {
      v3 = 107;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE100000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE200000000000000;
    v3 = 26484;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 103;
    }

    else
    {
      v3 = 26980;
    }

    if (v2 == 3)
    {
      v4 = 0xE100000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 6907764;
    }

    else
    {
      v6 = 107;
    }

    if (a2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE100000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE200000000000000;
    if (v3 != 26484)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE100000000000000;
    if (v3 != 103)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE200000000000000;
    if (v3 != 26980)
    {
LABEL_34:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t protocol witness for static Comparable.< infix(_:_:) in conformance CRDTGeneration(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return *a1 < *a2;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 0;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance CRDTGeneration(void *a1, void *a2)
{
  if (*a2 == *a1)
  {
    v2 = a1[1];
    v3 = a1[2];
    v4 = a2[1];
    v5 = a2[2];
    if (v4 == v2 && v5 == v3)
    {
      v7 = 0;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v7 = *a2 < *a1;
  }

  return (v7 & 1) == 0;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance CRDTGeneration(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    if (a1[1] == a2[1] && a1[2] == a2[2])
    {
      v3 = 0;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v3 = *a1 < *a2;
  }

  return (v3 & 1) == 0;
}

uint64_t protocol witness for static Comparable.> infix(_:_:) in conformance CRDTGeneration(void *a1, void *a2)
{
  if (*a2 != *a1)
  {
    return *a2 < *a1;
  }

  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CRDTGeneration(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CRDTGeneration()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743D7240](v3);

  MEMORY[0x2743D7240](8236, 0xE200000000000000);
  MEMORY[0x2743D7240](v1, v2);
  MEMORY[0x2743D7240](15904, 0xE200000000000000);
  return 8252;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PresenceUpdateMessage.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PresenceUpdateMessage.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PresenceUpdateMessage.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PresenceUpdateMessage.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized PresenceUpdateMessage.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PresenceUpdateMessage.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 107;
  v5 = 0xE200000000000000;
  v6 = 26484;
  v7 = 0xE100000000000000;
  v8 = 103;
  if (v2 != 3)
  {
    v8 = 26980;
    v7 = 0xE200000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 6907764;
    v3 = 0xE300000000000000;
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

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PresenceUpdateMessage.CodingKeys()
{
  v1 = *v0;
  v2 = 107;
  v3 = 26484;
  v4 = 103;
  if (v1 != 3)
  {
    v4 = 26980;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 6907764;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance PresenceUpdateMessage.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized PresenceUpdateMessage.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PresenceUpdateMessage.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys();

  return MEMORY[0x2821FE718](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PresenceUpdateMessage.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys();

  return MEMORY[0x2821FE720](a1, updated);
}

uint64_t PresenceUpdateMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17WebBookmarksSwift21PresenceUpdateMessageV10CodingKeys33_D1800A617CCBB8875C2948DFDD679592LLOGMd, &_ss22KeyedEncodingContainerVy17WebBookmarksSwift21PresenceUpdateMessageV10CodingKeys33_D1800A617CCBB8875C2948DFDD679592LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11[14] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (*(v3 + 8))
  {
    v11[13] = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11[12] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11[11] = 2;
  }

  else
  {
    v11[10] = 0;
  }

  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t PresenceUpdateMessage.description.getter()
{
  v1 = v0[1];
  if (v1)
  {
    v3 = v0[2];
    v2 = v0[3];
    v4 = *v0;
    _StringGuts.grow(_:)(94);
    MEMORY[0x2743D7240](0xD000000000000038, 0x8000000272D68A00);
    MEMORY[0x2743D7240](v4, v1);
    MEMORY[0x2743D7240](0xD000000000000011, 0x8000000272D68A40);
    MEMORY[0x2743D7240](v3, v2);
    v5 = 0x6172656E6567203BLL;
    v6 = 0xEE00203A6E6F6974;
  }

  else
  {
    _StringGuts.grow(_:)(52);
    v5 = 0xD000000000000031;
    v6 = 0x8000000272D68A60;
  }

  MEMORY[0x2743D7240](v5, v6);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x2743D7240](62, 0xE100000000000000);
  return 0;
}

double protocol witness for Decodable.init(from:) in conformance PresenceUpdateMessage@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized PresenceUpdateMessage.init(from:)(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PresenceUpdateMessage(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  a1[2] = lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  result = lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  a1[3] = result;
  return result;
}

unint64_t specialized PresenceUpdateMessage.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PresenceUpdateMessage.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized PresenceUpdateMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17WebBookmarksSwift21PresenceUpdateMessageV10CodingKeys33_D1800A617CCBB8875C2948DFDD679592LLOGMd, &_ss22KeyedDecodingContainerVy17WebBookmarksSwift21PresenceUpdateMessageV10CodingKeys33_D1800A617CCBB8875C2948DFDD679592LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_3;
  }

  v33 = 3;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = 4;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v27 = v10;
  v31 = 0;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  v17._countAndFlagsBits = v14;
  v17._object = v16;
  v18 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PresenceUpdateMessage.KindCodingValue.init(rawValue:), v17);

  if (v18 == 1)
  {
    v30 = 1;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 = v23;
    v29 = 2;
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v19 = v24;
    (*(v6 + 8))(v9, v5);
    v21 = v25;
    v20 = v26;
    goto LABEL_7;
  }

  if (v18)
  {
    lazy protocol witness table accessor for type PresenceUpdateMessageError and conformance PresenceUpdateMessageError();
    swift_allocError();
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(a1);
    outlined consume of PresenceUpdateMessage.Kind(0, 0, 0, 0);
  }

  (*(v6 + 8))(v9, v5);
  v19 = 0;
  v20 = 0;
  v21 = 0;
LABEL_7:
  outlined copy of PresenceUpdateMessage.Kind(v21, v20, v18, v19);

  __swift_destroy_boxed_opaque_existential_1(a1);
  outlined consume of PresenceUpdateMessage.Kind(v21, v20, v18, v19);

  *a2 = v21;
  a2[1] = v20;
  a2[2] = v18;
  a2[3] = v19;
  v22 = v27;
  a2[4] = v28;
  a2[5] = v22;
  a2[6] = v13;
  return result;
}

unint64_t lazy protocol witness table accessor for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PresenceUpdateMessageError and conformance PresenceUpdateMessageError()
{
  result = lazy protocol witness table cache variable for type PresenceUpdateMessageError and conformance PresenceUpdateMessageError;
  if (!lazy protocol witness table cache variable for type PresenceUpdateMessageError and conformance PresenceUpdateMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceUpdateMessageError and conformance PresenceUpdateMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresenceUpdateMessageError and conformance PresenceUpdateMessageError;
  if (!lazy protocol witness table cache variable for type PresenceUpdateMessageError and conformance PresenceUpdateMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceUpdateMessageError and conformance PresenceUpdateMessageError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PresenceUpdateMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PresenceUpdateMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CRDTGeneration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CRDTGeneration(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PresenceUpdateMessage.Kind(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PresenceUpdateMessage.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
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

void *destructiveInjectEnumTag for PresenceUpdateMessage.Kind(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CRDTGeneration and conformance CRDTGeneration()
{
  result = lazy protocol witness table cache variable for type CRDTGeneration and conformance CRDTGeneration;
  if (!lazy protocol witness table cache variable for type CRDTGeneration and conformance CRDTGeneration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRDTGeneration and conformance CRDTGeneration);
  }

  return result;
}

void type metadata completion function for GroupSession.JoinState(uint64_t a1)
{
  type metadata accessor for GroupSession();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (DispatchWorkItem, CheckedContinuation<(), Error>)(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (DispatchWorkItem, CheckedContinuation<(), Error>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (DispatchWorkItem, CheckedContinuation<(), Error>))
  {
    type metadata accessor for DispatchWorkItem();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (DispatchWorkItem, CheckedContinuation<(), Error>));
    }
  }
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA18]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB58]();
}