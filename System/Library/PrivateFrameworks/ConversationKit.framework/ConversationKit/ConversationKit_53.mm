Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo34TUConversationInvitationPreferenceC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo34TUConversationInvitationPreferenceCGMd, &_ss11_SetStorageCySo34TUConversationInvitationPreferenceCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationInvitationPreference, 0x1E69D8B68);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        specialized _NativeSet.resize(capacity:)(v3 + 1);
      }

      v2 = v15;
      result = NSObject._rawHashValue(seed:)(*(v15 + 40));
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_8:
      v8 = *v3;
      v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_15;
        }

        v9 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_8:
      v8 = *v3;
      v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_15;
        }

        v9 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_8:
      v8 = *v3;
      v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_15;
        }

        v9 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_8:
      v8 = *v3;
      v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SGURL, 0x1E69992A8);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_15;
        }

        v9 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_8:
      v8 = *v3;
      v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_15;
        }

        v9 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_8:
      v8 = *v3;
      v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationInvitationPreference, 0x1E69D8B68);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_15;
        }

        v9 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
LABEL_10:
      v12 = *v3;
      Hasher.init(_seed:)();
      MEMORY[0x1BFB22640](v5);
      v13 = Hasher._finalize()();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()(&_ss11_SetStorageCy15ConversationKit11BezelEffectOGMd, &_ss11_SetStorageCy15ConversationKit11BezelEffectOGMR);
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
LABEL_10:
      v12 = *v3;
      Hasher.init(_seed:)();
      MEMORY[0x1BFB22640](result);
      v13 = Hasher._finalize()();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == result)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

unint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
LABEL_10:
      v12 = *v3;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v5);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for CNKGameControllerButton(0);
        if (*(*(v12 + 48) + 4 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = specialized _NativeSet.copy()();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 4 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
LABEL_10:
      v15 = *v3;
      Hasher.init(_seed:)();
      ConversationControlsType.hash(into:)(v18);
      result = Hasher._finalize()();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a2 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        outlined init with copy of ConversationControlsType(*(v15 + 48) + 48 * a2, v18);
        v17 = static ConversationControlsType.== infix(_:_:)(v18, v6);
        outlined destroy of ConversationControlsType(v18);
        if (v17)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = specialized _NativeSet.copy()();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v10 = (*(v9 + 48) + 48 * a2);
  v11 = v6[1];
  *v10 = *v6;
  v10[1] = v11;
  *(v10 + 25) = *(v6 + 25);
  v12 = *(v9 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v14;
  }

  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_17_1();
  v9 = type metadata accessor for Participant(v8);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_24_5();
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 > v11 && (v5 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (v5)
  {
    v13 = OUTLINED_FUNCTION_242_1(v11);
    specialized _NativeSet.resize(capacity:)(v13);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_19;
    }

    v14 = OUTLINED_FUNCTION_242_1(v11);
    specialized _NativeSet.copyAndResize(capacity:)(v14);
  }

  v15 = *v3;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_4_121();
  _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v16, v17, MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  OUTLINED_FUNCTION_16_7();
  v7 = v19 & ~v18;
  if ((*(v15 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v20 = ~v18;
    do
    {
      OUTLINED_FUNCTION_22_42();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
      static Participant.State.== infix(_:_:)();
      if ((v21 & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && (*(v0 + *(v9 + 28)) == 0) == (*(v2 + *(v9 + 28)) == 0))
      {
        v22 = *(v9 + 24);
        v23 = (v2 + v22);
        v24 = *(v2 + v22);
        v25 = (v0 + v22);
        if (v24 == *v25 && ((v23[1] ^ v25[1]) & 1) == 0 && ((v23[2] ^ v25[2]) & 1) == 0 && ((v23[3] ^ v25[3]) & 1) == 0 && ((v23[4] ^ v25[4]) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      OUTLINED_FUNCTION_50_18();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      v7 = (v7 + 1) & v20;
      OUTLINED_FUNCTION_239_1();
    }

    while (((*(v15 + 56 + v26) >> v7) & 1) != 0);
  }

LABEL_19:
  v27 = *v3;
  *(*v3 + 8 * (v7 >> 6) + 56) |= 1 << v7;
  OUTLINED_FUNCTION_49_18();
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
  v28 = *(v27 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v27 + 16) = v30;
    OUTLINED_FUNCTION_30_0();
    return;
  }

  __break(1u);
LABEL_22:
  OUTLINED_FUNCTION_50_18();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v11 = *(*v8 + 16);
  v12 = *(*v8 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v11 + 1, a2, a3, a4, a5, a6, a7, a8, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, vars0, vars8);
      goto LABEL_10;
    }

    if (v12 <= v11)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
LABEL_10:
      v17 = *v8;
      Hasher.init(_seed:)();
      HUDActivity.hash(into:)();
      v18 = Hasher._finalize()();
      v19 = ~(-1 << *(v17 + 32));
      while (1)
      {
        v9 = v18 & v19;
        if (((*(v17 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for CoupledHUDActivity(0);

        v21 = static HUDActivity.== infix(_:_:)(v20, result);

        if (v21)
        {
          goto LABEL_15;
        }

        v18 = v9 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_7:
  v13 = *v8;
  *(*v8 + 8 * (v9 >> 6) + 56) |= 1 << v9;
  *(*(v13 + 48) + 8 * v9) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 <= v11 || (a5 & 1) == 0)
  {
    if (a5)
    {
      specialized _NativeSet.resize(capacity:)();
    }

    else
    {
      if (v12 > v11)
      {
        specialized _NativeSet.copy()();
        goto LABEL_24;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
    }

    v13 = *v5;
    Hasher.init(_seed:)();
    MEMORY[0x1BFB22640](v10);
    if (a3)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v14 = Hasher._finalize()();
    v15 = v13 + 56;
    v16 = -1 << *(v13 + 32);
    a4 = v14 & ~v16;
    if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v17 = ~v16;
      v18 = *(v13 + 48);
      do
      {
        v19 = (v18 + 24 * a4);
        if (*v19 == v10)
        {
          v20 = *(v19 + 2);
          if (v20)
          {
            if (a3)
            {
              v21 = *(v19 + 1) == a2 && v20 == a3;
              if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                goto LABEL_27;
              }
            }
          }

          else if (!a3)
          {
            goto LABEL_27;
          }
        }

        a4 = (a4 + 1) & v17;
      }

      while (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
    }
  }

LABEL_24:
  v22 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = *(v22 + 48) + 24 * a4;
  *v23 = v10;
  *(v23 + 8) = a2;
  *(v23 + 16) = a3;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
LABEL_27:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = MEMORY[0x1BFB22620](*(*v3 + 40), result);
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == result)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(char a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v6 > v5)
    {
      specialized _NativeSet.copy()(&_ss11_SetStorageCy15ConversationKit13VideoReactionOGMd, &_ss11_SetStorageCy15ConversationKit13VideoReactionOGMR);
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v7 = *v3;
  v8 = specialized RawRepresentable<>._rawHashValue(seed:)(*(*v3 + 40));
  v9 = -1 << *(v7 + 32);
  a2 = v8 & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {
        goto LABEL_19;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = a1;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v12 = OUTLINED_FUNCTION_242_1(v10);
      v13(v12);
      goto LABEL_10;
    }

    if (v11 <= v10)
    {
      OUTLINED_FUNCTION_242_1(v10);
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_10:
      v18 = *v7;
      Hasher.init(_seed:)();
      MEMORY[0x1BFB22640](a1);
      Hasher._finalize()();
      OUTLINED_FUNCTION_86_5();
      while (1)
      {
        a2 = v19 & v21;
        if (((*(v20 + (((v19 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v21)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v18 + 48) + 8 * a2) == a1)
        {
          goto LABEL_15;
        }

        v19 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()(a6, a7);
  }

LABEL_7:
  v14 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v17;
  }
}

void specialized _NativeSet.copy()()
{
  specialized _NativeSet.copy()();
}

{
  OUTLINED_FUNCTION_50_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  OUTLINED_FUNCTION_91_8();
  OUTLINED_FUNCTION_139_4();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_11_80();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      OUTLINED_FUNCTION_194_3(v5, v6);
    }

    OUTLINED_FUNCTION_27_40();
    while (v3)
    {
      OUTLINED_FUNCTION_67_9();
LABEL_15:
      OUTLINED_FUNCTION_240_2();
      v16 = (v15 + 16 * v14);
      v17 = v16[1];
      v18 = (v0[6] + 16 * v14);
      *v18 = *v16;
      v18[1] = v17;
    }

    v10 = v1;
    while (1)
    {
      v1 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_241_1();
      if (v11)
      {
        OUTLINED_FUNCTION_7_1();
        v3 = v13 & v12;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
    OUTLINED_FUNCTION_49();
  }
}

{
  OUTLINED_FUNCTION_29();
  v2 = OUTLINED_FUNCTION_129();
  v3 = type metadata accessor for Participant(v2);
  v4 = OUTLINED_FUNCTION_9_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit11ParticipantVGMd, &_ss11_SetStorageCy15ConversationKit11ParticipantVGMR);
  v5 = *v0;
  v6 = static _SetStorage.copy(original:)();
  if (*(v5 + 16))
  {
    OUTLINED_FUNCTION_35_22();
    OUTLINED_FUNCTION_210_0();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      memmove(v7, v1, 8 * v8);
    }

    v12 = 0;
    *(v6 + 16) = *(v5 + 16);
    OUTLINED_FUNCTION_39_18();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_93();
LABEL_15:
        OUTLINED_FUNCTION_236_2();
        OUTLINED_FUNCTION_22_42();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
        OUTLINED_FUNCTION_49_18();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      }

      while (v15);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_237_2();
      if (v19)
      {
        OUTLINED_FUNCTION_7_1();
        v15 = v21 & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v6;
    OUTLINED_FUNCTION_30_0();
  }
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit18CallGameControllerC0fG8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVGMd, &_ss11_SetStorageCy15ConversationKit18CallGameControllerC0fG8EventBox33_27FD5918DCC98DD7DE0C1CE9822B82EELLVGMR);
  OUTLINED_FUNCTION_91_8();
  OUTLINED_FUNCTION_139_4();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_11_80();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      OUTLINED_FUNCTION_194_3(v5, v6);
    }

    OUTLINED_FUNCTION_27_40();
    for (; v3; *(v17 + 16) = v19)
    {
      OUTLINED_FUNCTION_67_9();
LABEL_15:
      OUTLINED_FUNCTION_240_2();
      v15 = 5 * v14;
      outlined init with copy of CallGameController.GameControllerEventBox(v16 + 40 * v14, v20);
      v17 = v0[6] + 8 * v15;
      v18 = v20[0];
      v19 = v20[1];
      *(v17 + 32) = v21;
      *v17 = v18;
    }

    v10 = v1;
    while (1)
    {
      v1 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_241_1();
      if (v11)
      {
        OUTLINED_FUNCTION_7_1();
        v3 = v13 & v12;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

{
  OUTLINED_FUNCTION_50_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit18CoupledHUDActivity33_1110C52F52D8EDCF5F7A893547109D29LLCGMd, &_ss11_SetStorageCy15ConversationKit18CoupledHUDActivity33_1110C52F52D8EDCF5F7A893547109D29LLCGMR);
  OUTLINED_FUNCTION_91_8();
  OUTLINED_FUNCTION_139_4();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_11_80();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      OUTLINED_FUNCTION_194_3(v5, v6);
    }

    OUTLINED_FUNCTION_27_40();
    while (v3)
    {
      OUTLINED_FUNCTION_67_9();
LABEL_15:
      OUTLINED_FUNCTION_240_2();
      *(v0[6] + 8 * v14) = *(v15 + 8 * v14);
    }

    v10 = v1;
    while (1)
    {
      v1 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_241_1();
      if (v11)
      {
        OUTLINED_FUNCTION_7_1();
        v3 = v13 & v12;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
    OUTLINED_FUNCTION_49();
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit17RecentsCallHandleVGMd, &_ss11_SetStorageCy15ConversationKit17RecentsCallHandleVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v20 = *(v18 + 8);
        v19 = *(v18 + 16);
        v21 = *(v4 + 48) + 8 * v17;
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v19;
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
}

{
  specialized _NativeSet.copy()();
}

{
  OUTLINED_FUNCTION_50_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_91_8();
  OUTLINED_FUNCTION_139_4();
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_11_80();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      OUTLINED_FUNCTION_194_3(v7, v8);
    }

    OUTLINED_FUNCTION_27_40();
    for (; v3; v19 = v18)
    {
      OUTLINED_FUNCTION_67_9();
LABEL_15:
      OUTLINED_FUNCTION_240_2();
      v18 = *(v17 + 8 * v16);
      *(v0[6] + 8 * v16) = v18;
    }

    v12 = v1;
    while (1)
    {
      v1 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_241_1();
      if (v13)
      {
        OUTLINED_FUNCTION_7_1();
        v3 = v15 & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
    OUTLINED_FUNCTION_49();
  }
}

{
  OUTLINED_FUNCTION_29();
  v2 = OUTLINED_FUNCTION_129();
  v3 = type metadata accessor for CountdownVoucher(v2);
  v4 = OUTLINED_FUNCTION_9_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit16CountdownVoucherVGMd, &_ss11_SetStorageCy15ConversationKit16CountdownVoucherVGMR);
  v5 = *v0;
  v6 = static _SetStorage.copy(original:)();
  if (*(v5 + 16))
  {
    OUTLINED_FUNCTION_35_22();
    OUTLINED_FUNCTION_210_0();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      memmove(v7, v1, 8 * v8);
    }

    v12 = 0;
    *(v6 + 16) = *(v5 + 16);
    OUTLINED_FUNCTION_39_18();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_93();
LABEL_15:
        OUTLINED_FUNCTION_236_2();
        OUTLINED_FUNCTION_33_30();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
        OUTLINED_FUNCTION_93_5();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      }

      while (v15);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_237_2();
      if (v19)
      {
        OUTLINED_FUNCTION_7_1();
        v15 = v21 & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v6;
    OUTLINED_FUNCTION_30_0();
  }
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt64VGMd, &_ss11_SetStorageCys6UInt64VGMR);
  OUTLINED_FUNCTION_91_8();
  OUTLINED_FUNCTION_139_4();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_11_80();
    if (v5)
    {
      v6 = v2 >= v4;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      OUTLINED_FUNCTION_194_3(v2, v3);
    }

    OUTLINED_FUNCTION_28_41();
    if (v9)
    {
      do
      {
        OUTLINED_FUNCTION_57_15();
LABEL_15:
        OUTLINED_FUNCTION_129_1();
      }

      while (v12);
    }

    v10 = v7;
    while (!__OFADD__(v10, 1))
    {
      if (v10 + 1 >= v8)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_233_2();
      if (v11)
      {
        OUTLINED_FUNCTION_56_14();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

{
  OUTLINED_FUNCTION_29();
  v1 = OUTLINED_FUNCTION_129();
  v3 = v2(v1);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = OUTLINED_FUNCTION_157();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v11 = *v0;
  v12 = static _SetStorage.copy(original:)();
  if (v11[2])
  {
    v29 = v0;
    v13 = OUTLINED_FUNCTION_35_22();
    v15 = (v14 + 63) >> 6;
    if (v12 != v11 || v13 >= &v11[v15 + 7])
    {
      memmove(v13, v11 + 7, 8 * v15);
    }

    v17 = 0;
    *(v12 + 16) = v11[2];
    OUTLINED_FUNCTION_39_18();
    v20 = v19 & v18;
    v22 = (v21 + 63) >> 6;
    v30 = v5 + 32;
    v31 = v5 + 16;
    if ((v19 & v18) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
LABEL_15:
        v27 = *(v5 + 72) * (v23 | (v17 << 6));
        (*(v5 + 16))(v8, v11[6] + v27, v3);
        (*(v5 + 32))(*(v12 + 48) + v27, v8, v3);
      }

      while (v20);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v0 = v29;
        goto LABEL_19;
      }

      ++v24;
      if (v11[v17 + 7])
      {
        OUTLINED_FUNCTION_7_1();
        v20 = v26 & v25;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_19:
    *v0 = v12;
    OUTLINED_FUNCTION_30_0();
  }
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit19InCallControlsStateOGMd, &_ss11_SetStorageCy15ConversationKit19InCallControlsStateOGMR);
  OUTLINED_FUNCTION_91_8();
  OUTLINED_FUNCTION_139_4();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_11_80();
    if (v5)
    {
      v6 = v2 >= v4;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      OUTLINED_FUNCTION_194_3(v2, v3);
    }

    OUTLINED_FUNCTION_28_41();
    if (v9)
    {
      do
      {
        OUTLINED_FUNCTION_57_15();
LABEL_15:
        OUTLINED_FUNCTION_129_1();
      }

      while (v12);
    }

    v10 = v7;
    while (!__OFADD__(v10, 1))
    {
      if (v10 + 1 >= v8)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_233_2();
      if (v11)
      {
        OUTLINED_FUNCTION_56_14();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo23CNKGameControllerButtonVGMd, &_ss11_SetStorageCySo23CNKGameControllerButtonVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
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

{
  v1 = v0;
  v2 = type metadata accessor for ConversationControlsAction(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit0C14ControlsActionOGMd, &_ss11_SetStorageCy15ConversationKit0C14ControlsActionOGMR);
  v3 = *v0;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v13 &= v13 - 1;
LABEL_17:
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
        result = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      }

      while (v13);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v16 = *(v3 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v13 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v5;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit0C12ControlsTypeOGMd, &_ss11_SetStorageCy15ConversationKit0C12ControlsTypeOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = 3 * v17;
        result = outlined init with copy of ConversationControlsType(*(v2 + 48) + 48 * v17, &v22);
        v19 = (*(v4 + 48) + 16 * v18);
        v20 = v22;
        v21 = v23[0];
        *(v19 + 25) = *(v23 + 9);
        *v19 = v20;
        v19[1] = v21;
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

{
  v1 = v0;
  v2 = type metadata accessor for RecentsCallItem(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15ConversationKit15RecentsCallItemVGMd, &_ss11_SetStorageCy15ConversationKit15RecentsCallItemVGMR);
  v3 = *v0;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v13 &= v13 - 1;
LABEL_17:
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
        result = _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      }

      while (v13);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v16 = *(v3 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v13 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v5;
  }

  return result;
}

void specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_91_8();
  OUTLINED_FUNCTION_139_4();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_11_80();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      OUTLINED_FUNCTION_194_3(v5, v6);
    }

    OUTLINED_FUNCTION_28_41();
    if (v12)
    {
      do
      {
        OUTLINED_FUNCTION_57_15();
LABEL_15:
        *(v2[6] + v14) = *(*(v3 + 48) + v14);
      }

      while (v13);
    }

    v15 = v10;
    while (!__OFADD__(v15, 1))
    {
      if (v15 + 1 >= v11)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_233_2();
      if (v16)
      {
        OUTLINED_FUNCTION_56_14();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v2;
  }
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_91_8();
  OUTLINED_FUNCTION_139_4();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_11_80();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_194_3(v4, v5);
    }

    OUTLINED_FUNCTION_28_41();
    if (v11)
    {
      do
      {
        OUTLINED_FUNCTION_57_15();
LABEL_15:
        OUTLINED_FUNCTION_129_1();
      }

      while (v14);
    }

    v12 = v9;
    while (!__OFADD__(v12, 1))
    {
      if (v12 + 1 >= v10)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_233_2();
      if (v13)
      {
        OUTLINED_FUNCTION_56_14();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v2;
  }
}

Swift::Int specialized Set._Variant.filter(_:)(uint64_t a1, uint64_t *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return specialized _NativeSet.filter(_:)(a1, a2);
  }

  v3 = MEMORY[0x1E69E7CD0];
  v38 = MEMORY[0x1E69E7CD0];
  __CocoaSet.makeIterator()();
  while (1)
  {
LABEL_3:
    if (!__CocoaSet.Iterator.next()())
    {

      return v3;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    swift_dynamicCast();
    v4 = *a2;

    v5 = [v37 value];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (*(v4 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v9 = Hasher._finalize()();
      v10 = ~(-1 << *(v4 + 32));
      while (1)
      {
        v11 = v9 & v10;
        if (((*(v4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          break;
        }

        v12 = (*(v4 + 48) + 16 * v11);
        if (*v12 != v6 || v12[1] != v8)
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v9 = v11 + 1;
          if ((v14 & 1) == 0)
          {
            continue;
          }
        }

LABEL_27:

        goto LABEL_3;
      }
    }

    v15 = *a2;

    v16 = outlined bridged method (pb) of @objc TUHandle.normalizedValue.getter(v37);
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0xE000000000000000;
    }

    if (*(v15 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = ~(-1 << *(v15 + 32));
      while (1)
      {
        v22 = v20 & v21;
        if (((*(v15 + 56 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
        {
          break;
        }

        v23 = (*(v15 + 48) + 16 * v22);
        if (*v23 != v18 || v23[1] != v19)
        {
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v20 = v22 + 1;
          if ((v25 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_27;
      }
    }

    v26 = *(v3 + 16);
    if (*(v3 + 24) <= v26)
    {
      specialized _NativeSet.resize(capacity:)(v26 + 1);
    }

    v3 = v38;
    result = NSObject._rawHashValue(seed:)(*(v38 + 40));
    v28 = v38 + 56;
    v29 = -1 << *(v38 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v38 + 56 + 8 * (v30 >> 6))) == 0)
    {
      break;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v38 + 56 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_39:
    *(v28 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    *(*(v38 + 48) + 8 * v32) = v37;
    ++*(v38 + 16);
  }

  v33 = 0;
  v34 = (63 - v29) >> 6;
  while (++v31 != v34 || (v33 & 1) == 0)
  {
    v35 = v31 == v34;
    if (v31 == v34)
    {
      v31 = 0;
    }

    v33 |= v35;
    v36 = *(v28 + 8 * v31);
    if (v36 != -1)
    {
      v32 = __clz(__rbit64(~v36)) + (v31 << 6);
      goto LABEL_39;
    }
  }

  __break(1u);
  return result;
}

void *specialized _NativeSet.filter(_:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v50 = a2;
  v4 = a1;
  v53 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  v7 = 8 * v6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v45 = v3;
    v43 = &v43;
    MEMORY[0x1EEE9AC00](a1);
    v44 = v6;
    v46 = &v43 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v6, v46);
    v47 = 0;
    v6 = 0;
    v3 = v4 + 56;
    v8 = 1 << *(v4 + 32);
    v9 = v8 < 64 ? ~(-1 << v8) : -1;
    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v49 = v4;
LABEL_6:
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v51 = (v10 - 1) & v10;
LABEL_13:
      v15 = v12 | (v6 << 6);
      v16 = *(v4 + 48);
      v48 = v15;
      v17 = *v50;
      v18 = *(v16 + 8 * v15);

      v52 = v18;
      v19 = [v18 value];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v21;

      if (*(v17 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v22 = Hasher._finalize()();
        v23 = ~(-1 << *(v17 + 32));
        while (1)
        {
          v24 = v22 & v23;
          if (((*(v17 + 56 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v23)) & 1) == 0)
          {
            break;
          }

          v25 = (*(v17 + 48) + 16 * v24);
          if (*v25 != v20 || v25[1] != v7)
          {
            v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v22 = v24 + 1;
            if ((v27 & 1) == 0)
            {
              continue;
            }
          }

LABEL_36:
          v10 = v51;

          v4 = v49;
          goto LABEL_6;
        }
      }

      v28 = *v50;

      v29 = outlined bridged method (pb) of @objc TUHandle.normalizedValue.getter(v52);
      if (v30)
      {
        v31 = v29;
      }

      else
      {
        v31 = 0;
      }

      if (v30)
      {
        v7 = v30;
      }

      else
      {
        v7 = 0xE000000000000000;
      }

      if (*(v28 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v32 = Hasher._finalize()();
        v33 = ~(-1 << *(v28 + 32));
        while (1)
        {
          v34 = v32 & v33;
          if (((*(v28 + 56 + (((v32 & v33) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v32 & v33)) & 1) == 0)
          {
            break;
          }

          v35 = (*(v28 + 48) + 16 * v34);
          if (*v35 != v31 || v35[1] != v7)
          {
            v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v32 = v34 + 1;
            if ((v37 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_36;
        }
      }

      v4 = v49;
      *(v46 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      v38 = __OFADD__(v47++, 1);
      v10 = v51;
      if (v38)
      {
        __break(1u);
LABEL_40:
        specialized _NativeSet.extractSubset(using:count:)(v46, v44, v47, v4);
        return v39;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_40;
      }

      v14 = *(v3 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v51 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_43:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v42 = swift_slowAlloc();
  v40 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo8TUHandleCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So8I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n0150_s15ConversationKit15RecentsCallItemV32formattedOriginatorTitleFromLink33_82A9A7220E7FDFEBE573EE0F414688B9LL_2inSSSgAA0aJ0V_So14TUConversationCSgtFZSbpI7CXEfU0_ShySSGTf1nnc_n(v42, v6, v4, v50);

  MEMORY[0x1BFB23DF0](v42, -1, -1);
  return v40;
}

void specialized closure #1 in _NativeSet.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
LABEL_5:
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v43 = (v8 - 1) & v8;
LABEL_12:
    v40 = v10 | (v4 << 6);
    v13 = *a4;
    v14 = *(*(a3 + 48) + 8 * v40);

    v15 = [v14 value];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (*(v13 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v19 = Hasher._finalize()();
      v20 = ~(-1 << *(v13 + 32));
      while (1)
      {
        v21 = v19 & v20;
        if (((*(v13 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {
          break;
        }

        v22 = (*(v13 + 48) + 16 * v21);
        if (*v22 != v16 || v22[1] != v18)
        {
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v19 = v21 + 1;
          if ((v24 & 1) == 0)
          {
            continue;
          }
        }

LABEL_35:
        v8 = v43;

        goto LABEL_5;
      }
    }

    v25 = *a4;

    v26 = outlined bridged method (pb) of @objc TUHandle.normalizedValue.getter(v14);
    if (v27)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0;
    }

    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0xE000000000000000;
    }

    if (*(v25 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v30 = Hasher._finalize()();
      v31 = ~(-1 << *(v25 + 32));
      while (1)
      {
        v32 = v30 & v31;
        if (((*(v25 + 56 + (((v30 & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v30 & v31)) & 1) == 0)
        {
          break;
        }

        v33 = (*(v25 + 48) + 16 * v32);
        if (*v33 != v28 || v33[1] != v29)
        {
          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v30 = v32 + 1;
          if ((v35 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_35;
      }
    }

    *(a1 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
    v36 = __OFADD__(v39++, 1);
    v8 = v43;
    if (v36)
    {
      __break(1u);
LABEL_39:

      specialized _NativeSet.extractSubset(using:count:)(a1, a2, v39, a3);
      return;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_39;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v43 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo8TUHandleCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So8I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n0150_s15ConversationKit15RecentsCallItemV32formattedOriginatorTitleFromLink33_82A9A7220E7FDFEBE573EE0F414688B9LL_2inSSSgAA0aJ0V_So14TUConversationCSgtFZSbpI7CXEfU0_ShySSGTf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeSet.filter(_:)(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc TUConversationLink.linkName.getter(void *a1)
{
  v1 = [a1 linkName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc IMAccount.aliases.getter(void *a1)
{
  v2 = [a1 aliases];

  if (!v2)
  {
    return 0;
  }

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized Set.endIndex.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.endIndex.getter();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

void specialized Set.hash(into:)(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = Hasher._finalize()();
  if ((a2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    Set.Iterator.init(_cocoa:)();
    a2 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  v11 = 0;
  if (a2 < 0)
  {
    goto LABEL_10;
  }

  while (v7)
  {
    v12 = v6;
LABEL_17:
    v15 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v17 = *(*(a2 + 48) + ((v12 << 9) | (8 * v15)));
    for (i = v17; ; i = v17)
    {
      v16 = NSObject._rawHashValue(seed:)(v3);

      v11 ^= v16;
      if ((a2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_10:
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_20;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
      swift_dynamicCast();
    }
  }

  v14 = v6;
  while (1)
  {
    v12 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v12 >= ((v5 + 64) >> 6))
    {
LABEL_20:
      outlined consume of Set<TUHandle>.Iterator._Variant(a2);
      MEMORY[0x1BFB22640](v11);
      return;
    }

    v7 = *(v4 + 8 * v12);
    ++v14;
    if (v7)
    {
      v6 = v12;
      goto LABEL_17;
    }
  }

  __break(1u);
}

{
  memcpy(__dst, __src, sizeof(__dst));
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x1BFB22640](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_8:
        v10 = (*(a2 + 48) + 24 * (__clz(__rbit64(v5)) | (v8 << 6)));
        v11 = *v10;
        v12 = *(v10 + 2);
        Hasher.init(_seed:)();
        MEMORY[0x1BFB22640](v11);
        if (v12)
        {
          Hasher._combine(_:)(1u);

          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v5 &= v5 - 1;
        v13 = Hasher._finalize()();

        v7 ^= v13;
      }

      while (v5);
    }
  }

  __break(1u);
}

uint64_t outlined assign with take of RecentsCallItemType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentsCallItemType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type RecentsCallItem.VideoMessageError and conformance RecentsCallItem.VideoMessageError()
{
  result = lazy protocol witness table cache variable for type RecentsCallItem.VideoMessageError and conformance RecentsCallItem.VideoMessageError;
  if (!lazy protocol witness table cache variable for type RecentsCallItem.VideoMessageError and conformance RecentsCallItem.VideoMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecentsCallItem.VideoMessageError and conformance RecentsCallItem.VideoMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RecentsCallItem.VideoMessageError and conformance RecentsCallItem.VideoMessageError;
  if (!lazy protocol witness table cache variable for type RecentsCallItem.VideoMessageError and conformance RecentsCallItem.VideoMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecentsCallItem.VideoMessageError and conformance RecentsCallItem.VideoMessageError);
  }

  return result;
}

uint64_t partial apply for closure #1 in RecentsCallItem.saveVideoMessage(_:)(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_9_0(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = (v1 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for closure #2 in RecentsListViewController.presentBlockAllAction(of:);

  return closure #1 in RecentsCallItem.saveVideoMessage(_:)(a1, v9, v10, v11, v1 + v7, v13, v14);
}

unint64_t lazy protocol witness table accessor for type RecentsCallHandleType and conformance RecentsCallHandleType()
{
  result = lazy protocol witness table cache variable for type RecentsCallHandleType and conformance RecentsCallHandleType;
  if (!lazy protocol witness table cache variable for type RecentsCallHandleType and conformance RecentsCallHandleType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecentsCallHandleType and conformance RecentsCallHandleType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RecentsCallHandleType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RecentsCallItem.VideoMessageError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SkipHashableMessage and conformance SkipHashableMessage()
{
  result = lazy protocol witness table cache variable for type SkipHashableMessage and conformance SkipHashableMessage;
  if (!lazy protocol witness table cache variable for type SkipHashableMessage and conformance SkipHashableMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SkipHashableMessage and conformance SkipHashableMessage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InCallControlsState and conformance InCallControlsState()
{
  result = lazy protocol witness table cache variable for type InCallControlsState and conformance InCallControlsState;
  if (!lazy protocol witness table cache variable for type InCallControlsState and conformance InCallControlsState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallControlsState and conformance InCallControlsState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InCallControlsState and conformance InCallControlsState;
  if (!lazy protocol witness table cache variable for type InCallControlsState and conformance InCallControlsState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallControlsState and conformance InCallControlsState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TranscriptionViewModel.CaptionID and conformance TranscriptionViewModel.CaptionID()
{
  result = lazy protocol witness table cache variable for type TranscriptionViewModel.CaptionID and conformance TranscriptionViewModel.CaptionID;
  if (!lazy protocol witness table cache variable for type TranscriptionViewModel.CaptionID and conformance TranscriptionViewModel.CaptionID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptionViewModel.CaptionID and conformance TranscriptionViewModel.CaptionID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TranscriptionViewModel.CaptionID and conformance TranscriptionViewModel.CaptionID;
  if (!lazy protocol witness table cache variable for type TranscriptionViewModel.CaptionID and conformance TranscriptionViewModel.CaptionID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptionViewModel.CaptionID and conformance TranscriptionViewModel.CaptionID);
  }

  return result;
}

id OUTLINED_FUNCTION_140_4()
{

  return v0;
}

id OUTLINED_FUNCTION_143_3()
{

  return v0;
}

Swift::Int OUTLINED_FUNCTION_146_1()
{
  v2 = *(v0 + 40);

  return NSObject._rawHashValue(seed:)(v2);
}

void OUTLINED_FUNCTION_166_2()
{

  Hasher._combine(_:)(1u);
}

void *OUTLINED_FUNCTION_194_3@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memmove(a1, v2, 8 * a2);
}

uint64_t OUTLINED_FUNCTION_215_1()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_248()
{

  return outlined init with copy of [CaptionSectioner.SpeakerSection]();
}

void *OUTLINED_FUNCTION_250_0()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);

  return outlined consume of ConversationLink?(v2, v3, v4);
}

uint64_t ClarityUIContactsList.__allocating_init()()
{
  v0 = swift_allocObject();
  ClarityUIContactsList.init()();
  return v0;
}

double ClarityUIContactsList.allContactIdentifiers.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_170();
  lazy protocol witness table accessor for type ClarityUIContactsList and conformance ClarityUIContactsList(v0, v1, &protocol conformance descriptor for ClarityUIContactsList);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  return result;
}

ConversationKit::ClarityUIContact __swiftcall ClarityUIContactsList.contact(for:)(Swift::String a1)
{
  v3 = v2;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v6 = v1;
  v109 = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMd, &_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMR);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v93 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v90 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v90 - v16;

  ClarityUIContactsList.contactCache.getter(v17);
  v104 = countAndFlagsBits;
  v105 = object;
  Cache.subscript.getter();

  v18 = *(v9 + 8);
  v100 = v9 + 8;
  v101 = v7;
  v99 = v18;
  v18(v17, v7);
  if (v106)
  {
    outlined consume of ClarityUIContact?(v106, v107);
    goto LABEL_47;
  }

  ClarityUIContactsList.allContactIdentifiers.getter();
  v91 = countAndFlagsBits;
  v92 = object;
  v20 = specialized Collection<>.firstIndex(of:)(countAndFlagsBits, object, v19);
  v22 = v21;

  if (v22)
  {
    if (one-time initialization token for clarityUI == -1)
    {
LABEL_5:
      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, &static Log.clarityUI);
      v24 = v92;

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_42();
        v28 = swift_slowAlloc();
        v106 = v28;
        *v27 = 136315138;
        countAndFlagsBits = v91;
        *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v24, &v106);
        _os_log_impl(&dword_1BBC58000, v25, v26, "Unable to find index of identifier %s.", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        OUTLINED_FUNCTION_4_4();
        OUTLINED_FUNCTION_27();

        object = v24;
        goto LABEL_47;
      }

      object = v24;
      goto LABEL_46;
    }

LABEL_51:
    OUTLINED_FUNCTION_0_158(&one-time initialization token for clarityUI);
    goto LABEL_5;
  }

  v90 = v6;
  v6 = *(v2 + OBJC_IVAR____TtC15ConversationKit21ClarityUIContactsList_maximumNumberOfContactsPerFetch) / 2;
  if (__OFSUB__(v20, v6))
  {
    __break(1u);
    goto LABEL_53;
  }

  ClarityUIContactsList.allContactIdentifiers.getter();
  v31 = *(v30 + 16);

  if (__OFADD__(v20, v6))
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    OUTLINED_FUNCTION_0_158(&one-time initialization token for clarityUI);
LABEL_16:
    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, &static Log.clarityUI);

    v20 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 134218496;
      *(v43 + 4) = specialized Array.count.getter();

      *(v43 + 12) = 2048;
      *(v43 + 14) = v97;
      *(v43 + 22) = 2048;
      *(v43 + 24) = countAndFlagsBits;
      _os_log_impl(&dword_1BBC58000, v20, v42, "Fetched %ld contacts within range [%ld..<%ld].", v43, 0x20u);
      OUTLINED_FUNCTION_4_4();
    }

    else
    {
    }

    v69 = specialized Array.count.getter();
    object = v92;
    countAndFlagsBits = v91;
    if (!v69)
    {

      goto LABEL_47;
    }

    if (v69 >= 1)
    {
      v70 = 0;
      v94 = v14 & 0xC000000000000001;
      v95 = OBJC_IVAR____TtC15ConversationKit21ClarityUIContactsList__contactCache;
      v96 = v69;
      v97 = v14;
      do
      {
        if (v94)
        {
          v71 = MEMORY[0x1BFB22010](v70, v14);
        }

        else
        {
          v71 = *(v14 + 8 * v70 + 32);
        }

        v72 = v71;
        ++v70;
        v73 = [v71 identifier];
        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v75;

        v77 = v72;
        v78 = v98;
        v79 = v98;
        v80 = [v77 identifier];
        v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v83 = v82;

        v106 = v77;
        *&v107 = v78;
        *(&v107 + 1) = v81;
        v108 = v83;
        v102 = v74;
        v103 = v76;
        swift_getKeyPath();
        v104 = v3;
        OUTLINED_FUNCTION_0_170();
        lazy protocol witness table accessor for type ClarityUIContactsList and conformance ClarityUIContactsList(&lazy protocol witness table cache variable for type ClarityUIContactsList and conformance ClarityUIContactsList, v84, &protocol conformance descriptor for ClarityUIContactsList);
        OUTLINED_FUNCTION_5_117();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v104 = v3;
        swift_getKeyPath();
        OUTLINED_FUNCTION_5_117();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        swift_beginAccess();
        Cache.subscript.setter();
        swift_endAccess();
        v104 = v3;
        swift_getKeyPath();
        OUTLINED_FUNCTION_5_117();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();

        v14 = v97;
      }

      while (v96 != v70);

      v6 = v90;
      goto LABEL_45;
    }

    goto LABEL_57;
  }

  v29 = v20 - v6;
  v32 = v29 & ~(v29 >> 63);
  if (v20 + v6 >= v31)
  {
    countAndFlagsBits = v31;
  }

  else
  {
    countAndFlagsBits = v20 + v6;
  }

  if (countAndFlagsBits < v32)
  {
    goto LABEL_54;
  }

  v97 = v29 & ~(v29 >> 63);
  if (v32 == countAndFlagsBits)
  {
LABEL_14:
    v33 = *(v3 + 24);
    v34 = objc_opt_self();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v36 = [v34 predicateForContactsWithIdentifiers_];

    static ClarityUIContact.requiredDescriptors(for:)(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
    v37 = Array._bridgeToObjectiveC()().super.isa;

    v106 = 0;
    v98 = v33;
    v38 = [v33 unifiedContactsMatchingPredicate:v36 keysToFetch:v37 error:&v106];

    v39 = v106;
    if (!v38)
    {
      v60 = v106;
      v20 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v6 = v90;
      if (one-time initialization token for clarityUI == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_58;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact, 0x1E695CD58);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v6 = v90;
    if (one-time initialization token for clarityUI == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_55;
  }

  if (v32 < countAndFlagsBits)
  {
    v6 = 16 * v32;
    v44 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      ClarityUIContactsList.allContactIdentifiers.getter();
      if (v32 >= *(v45 + 16))
      {
        break;
      }

      v46 = *(v45 + v6 + 32);
      v47 = *(v45 + v6 + 40);
      swift_bridgeObjectRetain_n();

      ClarityUIContactsList.contactCache.getter(v14);
      v104 = v46;
      v105 = v47;
      v48 = v101;
      Cache.subscript.getter();

      v99(v14, v48);
      v49 = v106;
      if (v106)
      {
        v98 = v108;
        v50 = v14;
        v51 = v44;
        v52 = v3;
        v53 = countAndFlagsBits;
        v54 = v107;

        v55 = v54;
        countAndFlagsBits = v53;
        v3 = v52;
        v44 = v51;
        v14 = v50;
        outlined consume of ClarityUIContact?(v49, v55);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v44 = v58;
        }

        v56 = *(v44 + 16);
        if (v56 >= *(v44 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v44 = v59;
        }

        *(v44 + 16) = v56 + 1;
        v57 = v44 + 16 * v56;
        *(v57 + 32) = v46;
        *(v57 + 40) = v47;
      }

      ++v32;
      v6 += 16;
      if (countAndFlagsBits == v32)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  OUTLINED_FUNCTION_0_158(&one-time initialization token for clarityUI);
LABEL_32:
  v61 = type metadata accessor for Logger();
  __swift_project_value_buffer(v61, &static Log.clarityUI);
  v62 = v20;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = OUTLINED_FUNCTION_42();
    v66 = swift_slowAlloc();
    *v65 = 138412290;
    v67 = v20;
    v68 = _swift_stdlib_bridgeErrorToNSError();
    *(v65 + 4) = v68;
    *v66 = v68;
    _os_log_impl(&dword_1BBC58000, v63, v64, "Unable to enumerate contacts: %@", v65, 0xCu);
    outlined destroy of CallControlsService?(v66, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

LABEL_45:
  object = v92;
LABEL_46:
  countAndFlagsBits = v91;
LABEL_47:

  v85 = v93;
  ClarityUIContactsList.contactCache.getter(v93);
  v104 = countAndFlagsBits;
  v105 = object;
  v86 = v101;
  Cache.subscript.getter();

  v87.cnContact.super.isa = (v99)(v85, v86);
  if (!v106)
  {
    return ClarityUIContact.init(cnContact:contactStore:)([objc_allocWithZone(MEMORY[0x1E695CD58]) init], *(v3 + 24));
  }

  v88 = v108;
  v89 = v107;
  *v6 = v106;
  *(v6 + 8) = v89;
  *(v6 + 24) = v88;
  return v87;
}

double ClarityUIContactsList.allContactIdentifiers.setter(uint64_t a1)
{
  swift_beginAccess();
  _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5();
  if (v3)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v7[2] = v1;
    v7[3] = a1;
    specialized ClarityUIContactsList.withMutation<A, B>(keyPath:_:)(v6, partial apply for closure #1 in SensitiveContentRecentsTipViewModel.participants.setter, v7);
  }

  return result;
}

uint64_t ClarityUIContactsList.access<A>(keyPath:)(uint64_t a1)
{
  OUTLINED_FUNCTION_0_170();
  lazy protocol witness table accessor for type ClarityUIContactsList and conformance ClarityUIContactsList(v1, v2, &protocol conformance descriptor for ClarityUIContactsList);
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t specialized ClarityUIContactsList.withMutation<A, B>(keyPath:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_170();
  lazy protocol witness table accessor for type ClarityUIContactsList and conformance ClarityUIContactsList(v3, v4, &protocol conformance descriptor for ClarityUIContactsList);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t ClarityUIContactsList.withMutation<A, B>(keyPath:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_170();
  lazy protocol witness table accessor for type ClarityUIContactsList and conformance ClarityUIContactsList(v4, v5, &protocol conformance descriptor for ClarityUIContactsList);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t (*ClarityUIContactsList.allContactIdentifiers.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  swift_getKeyPath();
  v3[4] = OBJC_IVAR____TtC15ConversationKit21ClarityUIContactsList___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_170();
  v3[5] = lazy protocol witness table accessor for type ClarityUIContactsList and conformance ClarityUIContactsList(v4, v5, &protocol conformance descriptor for ClarityUIContactsList);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v3 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return ClarityUIContactsList.allContactIdentifiers.modify;
}

void ClarityUIContactsList.allContactIdentifiers.modify(void *a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t ClarityUIContactsList.contactStoreDidUpdateTask.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ClarityUIContactsList and conformance ClarityUIContactsList(&lazy protocol witness table cache variable for type ClarityUIContactsList and conformance ClarityUIContactsList, type metadata accessor for ClarityUIContactsList, &protocol conformance descriptor for ClarityUIContactsList);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t ClarityUIContactsList.contactStoreDidUpdateTask.setter(uint64_t a1)
{

  v4 = specialized ObservableNotificationHandler.shouldNotifyObservers<A>(_:_:)(v3, a1);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v8[2] = v1;
    v8[3] = a1;
    specialized ClarityUIContactsList.withMutation<A, B>(keyPath:_:)(v6, partial apply for closure #1 in ClarityUIContactsList.contactStoreDidUpdateTask.setter, v8);
  }

  else
  {
    *(v1 + 32) = a1;
  }
}

uint64_t closure #1 in ClarityUIContactsList.contactStoreDidUpdateTask.setter(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
}

uint64_t ClarityUIContactsList.contactCache.init@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMd, &_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMR);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t ClarityUIContactsList.contactCache.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  lazy protocol witness table accessor for type ClarityUIContactsList and conformance ClarityUIContactsList(&lazy protocol witness table cache variable for type ClarityUIContactsList and conformance ClarityUIContactsList, type metadata accessor for ClarityUIContactsList, &protocol conformance descriptor for ClarityUIContactsList);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC15ConversationKit21ClarityUIContactsList__contactCache;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMd, &_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMR);
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t key path setter for ClarityUIContactsList.contactCache : ClarityUIContactsList(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMd, &_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMR);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return ClarityUIContactsList.contactCache.setter(v5);
}

uint64_t ClarityUIContactsList.contactCache.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v7 = v1;
  v8 = a1;
  specialized ClarityUIContactsList.withMutation<A, B>(keyPath:_:)(KeyPath, partial apply for closure #1 in ClarityUIContactsList.contactCache.setter, &v6);

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMd, &_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMR);
  return (*(*(v4 - 8) + 8))(a1, v4);
}

uint64_t closure #1 in ClarityUIContactsList.contactCache.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ConversationKit21ClarityUIContactsList__contactCache;
  swift_beginAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMd, &_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMR);
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

void *ClarityUIContactsList.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMd, &_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMR);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v1[2] = MEMORY[0x1E69E7CC0];
  v1[3] = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v1[4] = 0;
  Cache.init(countLimit:)();
  (*(v7 + 32))(v1 + OBJC_IVAR____TtC15ConversationKit21ClarityUIContactsList__contactCache, v10, v5);
  *(v1 + OBJC_IVAR____TtC15ConversationKit21ClarityUIContactsList_fetchDelay) = 0x3FB999999999999ALL;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21ClarityUIContactsList_maximumNumberOfContactsPerFetch) = 100;
  v11 = OBJC_IVAR____TtC15ConversationKit21ClarityUIContactsList_favoritesList;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(v1 + v11) = static ClarityUIFavoritesList.shared;

  ObservationRegistrar.init()();
  ClarityUIContactsList.updateFromContactStore()();
  v12 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;

  v17 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
  ClarityUIContactsList.contactStoreDidUpdateTask.setter(v17);
  return v1;
}

uint64_t type metadata accessor for ClarityUIContactsList(uint64_t a1)
{
  result = type metadata singleton initialization cache for ClarityUIContactsList;
  if (!type metadata singleton initialization cache for ClarityUIContactsList)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ClarityUIContactsList.updateFromContactStore()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMd, &_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  ClarityUIContactsList.contactCache.getter(&v14 - v7);
  Cache.removeAllObjects()();
  (*(v6 + 8))(v8, v5);
  v9 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v9);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in ClarityUIContactsList.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd, &_s10Foundation12NotificationVSgMR);
  v4[14] = swift_task_alloc();
  v5 = type metadata accessor for Notification();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVySo20NSNotificationCenterC10FoundationE13NotificationsCSSGMd, &_ss16AsyncMapSequenceVySo20NSNotificationCenterC10FoundationE13NotificationsCSSGMR);
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVySo20NSNotificationCenterC10FoundationE13NotificationsCSS_GMd, &_ss16AsyncMapSequenceV8IteratorVySo20NSNotificationCenterC10FoundationE13NotificationsCSS_GMR);
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = type metadata accessor for MainActor();
  v4[27] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[28] = v9;
  v4[29] = v8;

  return MEMORY[0x1EEE6DFA0](closure #1 in ClarityUIContactsList.init(), v9, v8);
}

uint64_t closure #1 in ClarityUIContactsList.init()()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = [objc_opt_self() defaultCenter];
  v5 = NSNotificationCenter.notifications(named:object:)();

  v0[11] = v5;
  type metadata accessor for NSNotificationCenter.Notifications();
  lazy protocol witness table accessor for type ClarityUIContactsList and conformance ClarityUIContactsList(&lazy protocol witness table cache variable for type NSNotificationCenter.Notifications and conformance NSNotificationCenter.Notifications, MEMORY[0x1E6969F08], MEMORY[0x1E6969F10]);
  AsyncMapSequence.init(_:transform:)();
  MEMORY[0x1BFB221C0](v3);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.Iterator.transform.getter();
  (*(v1 + 8))(v2, v3);
  AsyncMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  v6 = static MainActor.shared.getter();
  v0[30] = v6;
  if (v6)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = OUTLINED_FUNCTION_3_130(v9, v7);

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[30];
  v0[33] = AsyncMapSequence.Iterator.baseIterator.modify();
  lazy protocol witness table accessor for type ClarityUIContactsList and conformance ClarityUIContactsList(&lazy protocol witness table cache variable for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator, MEMORY[0x1E6969EF8], MEMORY[0x1E6969F00]);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  v0[34] = v2;
  *v2 = v3;
  v2[1] = closure #1 in ClarityUIContactsList.init();
  v4 = v0[14];
  v5 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v4, v1, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;

  if (v0)
  {
    v6 = *(v3 + 248);
    v7 = *(v3 + 256);
    v8 = closure #1 in ClarityUIContactsList.init();
  }

  else
  {
    (*(v3 + 264))();
    v6 = *(v3 + 248);
    v7 = *(v3 + 256);
    v8 = closure #1 in ClarityUIContactsList.init();
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

{
  v2 = v0[14];
  v1 = v0[15];
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {

    outlined destroy of CallControlsService?(v2, &_s10Foundation12NotificationVSgMd, &_s10Foundation12NotificationVSgMR);
    v3 = v0[28];
    v4 = v0[29];

    return MEMORY[0x1EEE6DFA0](closure #1 in ClarityUIContactsList.init(), v3, v4);
  }

  else
  {
    (*(v0[16] + 32))(v0[17], v2, v1);
    v5 = AsyncMapSequence.Iterator.transform.getter();
    v0[35] = v6;
    v11 = (v5 + *v5);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_4();
    v0[36] = v7;
    *v7 = v8;
    v7[1] = closure #1 in ClarityUIContactsList.init();
    v9 = v0[17];

    return (v11)(v0 + 9, v9);
  }
}

{
  return (*(v0 + 264))();
}

{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 120);
  v5 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);

  v7 = *(v1 + 256);
  v8 = *(v1 + 248);

  return MEMORY[0x1EEE6DFA0](closure #1 in ClarityUIContactsList.init(), v8, v7);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return MEMORY[0x1EEE6DFA0](closure #1 in ClarityUIContactsList.init(), v1, v2);
}

{
  OUTLINED_FUNCTION_9();
  if (swift_weakLoadStrong())
  {
    if (one-time initialization token for clarityUI != -1)
    {
      OUTLINED_FUNCTION_0_158(&one-time initialization token for clarityUI);
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, &static Log.clarityUI);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1BBC58000, v2, v3, "Contact store did change.", v4, 2u);
      OUTLINED_FUNCTION_4_4();
    }

    ClarityUIContactsList.updateFromContactStore()();

    v5 = static MainActor.shared.getter();
    v0[30] = v5;
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v11 = OUTLINED_FUNCTION_3_130(v8, v6);

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    (*(v0[24] + 8))(v0[25], v0[23]);

    OUTLINED_FUNCTION_11_81();

    OUTLINED_FUNCTION_13();

    return v9();
  }
}

{
  OUTLINED_FUNCTION_9();
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_11_81();

  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t closure #1 in closure #1 in ClarityUIContactsList.init()()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_13();
  return v2();
}

uint64_t closure #1 in ClarityUIContactsList.updateFromContactStore()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = closure #1 in ClarityUIContactsList.updateFromContactStore();

  return ClarityUIContactsList.fetchContactIdentifiers()();
}

uint64_t closure #1 in ClarityUIContactsList.updateFromContactStore()()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;
  *(v4 + 48) = v3;

  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ClarityUIContactsList.updateFromContactStore(), v6, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 48);

  ClarityUIContactsList.allContactIdentifiers.setter(v1);
  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t ClarityUIContactsList.fetchContactIdentifiers()()
{
  *(v1 + 72) = v0;
  type metadata accessor for MainActor();
  *(v1 + 80) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ClarityUIContactsList.fetchContactIdentifiers(), v3, v2);
}

{
  v48 = v0;
  v47[2] = *MEMORY[0x1E69E9840];
  v0[8] = MEMORY[0x1E69E7CC8];
  v1 = v0 + 8;
  v2 = v0[9];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContactFetchRequest, 0x1E695CD78);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact, 0x1E695CD58);
  v3 = static CNContact.requiredDescriptorsForClarityUIDisplayName.getter();
  v4.super.super.isa = CNContactFetchRequest.__allocating_init(keysToFetch:)(v3).super.super.isa;
  [(objc_class *)v4.super.super.isa setUnifyResults:1];
  [(objc_class *)v4.super.super.isa setSortOrder:0];
  v5 = *(v2 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v0 + 8;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in ClarityUIContactsList.fetchContactIdentifiers();
  *(v7 + 24) = v6;
  v0[6] = partial apply for thunk for @callee_guaranteed (@guaranteed CNContact, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v0[7] = v7;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed (@guaranteed CNContact, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v0[5] = &block_descriptor_75;
  v8 = _Block_copy(v0 + 2);
  v9 = v0[7];

  v0[2] = 0;
  v10 = [v5 enumerateContactsWithFetchRequest:v4.super.super.isa error:v0 + 2 usingBlock:v8];
  _Block_release(v8);
  v11 = v0[2];
  v12 = v11;
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
LABEL_28:
    OUTLINED_FUNCTION_0_158(&one-time initialization token for clarityUI);
    goto LABEL_4;
  }

  v9 = &one-time initialization token for shopTogether;
  if (v10)
  {
    goto LABEL_7;
  }

  v11 = _convertNSErrorToError(_:)();

  swift_willThrow();
  if (one-time initialization token for clarityUI != -1)
  {
    goto LABEL_28;
  }

LABEL_4:
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, &static Log.clarityUI);
  v14 = v11;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_42();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v11;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_1BBC58000, v15, v16, "Unable to enumerate contact identifiers: %@", v17, 0xCu);
    outlined destroy of CallControlsService?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

LABEL_7:

  v47[0] = specialized _copyCollectionToContiguousArray<A>(_:)(v21);
  specialized MutableCollection<>.sort(by:)(v47);

  v22 = v47[0];
  if (v9[48] != -1)
  {
    OUTLINED_FUNCTION_0_158(&one-time initialization token for clarityUI);
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, &static Log.clarityUI);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  isa = v4.super.super.isa;
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_42();
    *v26 = 134217984;
    *(v26 + 4) = *(v22 + 16);

    _os_log_impl(&dword_1BBC58000, v24, v25, "Number of contacts: %ld", v26, 0xCu);
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  v27 = *(v22 + 16);
  if (v27)
  {
    v45 = v0;
    v28 = (v22 + 40);
    v29 = MEMORY[0x1E69E7CC0];
    do
    {
      v30 = *v1;
      if (*(*v1 + 16))
      {
        v31 = *(v28 - 1);
        v32 = *v28;

        v33 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32);
        v35 = v34;

        if (v35)
        {
          v36 = (*(v30 + 56) + 16 * v33);
          v38 = *v36;
          v37 = v36[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v29 = v41;
          }

          v39 = *(v29 + 16);
          if (v39 >= *(v29 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v29 = v42;
          }

          *(v29 + 16) = v39 + 1;
          v40 = v29 + 16 * v39;
          *(v40 + 32) = v38;
          *(v40 + 40) = v37;
        }
      }

      v28 += 2;
      --v27;
    }

    while (v27);

    v0 = v45;
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  v43 = v0[1];

  return v43(v29);
}

double closure #1 in ClarityUIContactsList.fetchContactIdentifiers()(void *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  ClarityUIFavoritesList.favorites.getter();
  v26 = -*(v5 + 16);
  v28 = v5;
  v6 = (v5 + 40);
  v7 = -1;
  while (v26 + v7 != -1)
  {
    if (++v7 >= *(v28 + 16))
    {
      __break(1u);
      goto LABEL_22;
    }

    v9 = *(v6 - 1);
    v8 = *v6;
    v10 = v6[2];
    v11 = v6[3];

    v29 = v10;
    v12 = v11;

    v13 = [a1 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (v9 == v14 && v8 == v16)
    {

LABEL_18:

      return result;
    }

    v6 += 7;
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
      goto LABEL_18;
    }
  }

  if (one-time initialization token for shared == -1)
  {
    goto LABEL_11;
  }

LABEL_22:
  swift_once();
LABEL_11:
  if ((ClarityUIOutgoingCallActionProvider.areEmailAddressesRelevant.getter() & 1) != 0 && (v19 = [a1 emailAddresses], __swift_instantiateConcreteTypeFromMangledNameV2(_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR), static Array._unconditionallyBridgeFromObjectiveC(_:)(), v19, v20 = specialized Array.count.getter(), , v20) || (ClarityUIOutgoingCallActionProvider.arePhoneNumbersRelevant.getter() & 1) != 0 && (v22 = objc_msgSend(a1, sel_phoneNumbers), __swift_instantiateConcreteTypeFromMangledNameV2(_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR), static Array._unconditionallyBridgeFromObjectiveC(_:)(), v22, v23 = specialized Array.count.getter(), , v23))
  {
    CNContact.clarityUIDisplayName.getter();
    v24 = [a1 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    swift_isUniquelyReferenced_nonNull_native();
    v30 = *a5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
    *a5 = v30;
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed CNContact, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t ClarityUIContactsList.deinit()
{

  v1 = OBJC_IVAR____TtC15ConversationKit21ClarityUIContactsList__contactCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMd, &_s14CopresenceCore5CacheVySS15ConversationKit16ClarityUIContactVGMR);
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC15ConversationKit21ClarityUIContactsList___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  OUTLINED_FUNCTION_15_1();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t ClarityUIContactsList.__deallocating_deinit()
{
  ClarityUIContactsList.deinit();

  return swift_deallocClassInstance();
}

double outlined consume of ClarityUIContact?(void *a1, void *a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in ClarityUIContactsList.init()()
{
  OUTLINED_FUNCTION_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in ClarityUIContactsList.init()(v3, v4, v5, v6);
}

void type metadata completion function for ClarityUIContactsList(uint64_t a1)
{
  type metadata accessor for Cache<String, ClarityUIContact>();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Cache<String, ClarityUIContact>()
{
  if (!lazy cache variable for type metadata for Cache<String, ClarityUIContact>)
  {
    v0 = type metadata accessor for Cache();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Cache<String, ClarityUIContact>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ClarityUIContactsList and conformance ClarityUIContactsList(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in ClarityUIContactsList.updateFromContactStore()()
{
  OUTLINED_FUNCTION_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in ClarityUIContactsList.updateFromContactStore()(v3, v4, v5, v6);
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    lazy protocol witness table accessor for type String and conformance String();
    v7 = v5 - v4;
    v8 = (v6 + 16 * v4);
    while (2)
    {
      v14 = v7;
      v9 = v8;
      do
      {
        result = StringProtocol.localizedStandardCompare<A>(_:)();
        if (result != -1)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = v9[1];
        *v9 = *(v9 - 1);
        *(v9 - 1) = v11;
        *(v9 - 2) = v10;
        v9 -= 2;
      }

      while (!__CFADD__(v7++, 1));
      ++v4;
      v8 += 2;
      v7 = v14 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *(v9 - 1);
        if (v7 >= v10)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v10;
        *--v9 = v7;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      ++v5;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3 - 40;
    v8 = result - a3;
    while (2)
    {
      v9 = v6 + 40 * v4;
      result = *(v9 + 16);
      v10 = *(v9 + 24);
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 + 16) && v10 == *(v12 + 24))
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v12 + 48);
        result = *(v12 + 56);
        v15 = *(v12 + 16);
        v17 = *(v12 + 32);
        v16 = *(v12 + 40);
        *(v12 + 40) = *v12;
        v18 = *(v12 + 64);
        *(v12 + 56) = v15;
        *(v12 + 72) = v17;
        *(v12 + 24) = v18;
        v10 = v18;
        *v12 = v16;
        *(v12 + 8) = v14;
        *(v12 + 16) = result;
        v12 -= 40;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 40;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t *VideoCallTranslationController.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_171(&one-time initialization token for shared);
  }

  return &static VideoCallTranslationController.shared;
}

uint64_t VideoCallTranslationController.hudViewModel.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = closure #1 in VideoCallTranslationController.hudViewModel.getter();
    *(v0 + 16) = v1;
  }

  return v1;
}

void *one-time initialization function for shared()
{
  type metadata accessor for VideoCallTranslationController();
  v0 = swift_allocObject();
  result = VideoCallTranslationController.init()();
  static VideoCallTranslationController.shared = v0;
  return result;
}

{
  type metadata accessor for ClarityUIFavoritesList(0);
  swift_allocObject();
  result = ClarityUIFavoritesList.().init()();
  static ClarityUIFavoritesList.shared = result;
  return result;
}

uint64_t VideoCallTranslationController.__allocating_init()()
{
  v0 = swift_allocObject();
  VideoCallTranslationController.init()();
  return v0;
}

uint64_t static VideoCallTranslationController.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_171(&one-time initialization token for shared);
  }
}

uint64_t closure #1 in VideoCallTranslationController.hudViewModel.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = static CallTranslationHUDViewModel.shared;
  v1 = swift_allocObject();
  swift_weakInit();

  CallTranslationHUDViewModel.stop.setter(partial apply for closure #1 in closure #1 in VideoCallTranslationController.hudViewModel.getter, v1);

  return v0;
}

uint64_t closure #1 in closure #1 in VideoCallTranslationController.hudViewModel.getter(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    VideoCallTranslationController.stopTranslation()();
  }

  return result;
}

Swift::Void __swiftcall VideoCallTranslationController.stopTranslation()()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = v1;
    CallTranslationService.stopTranslation()();
  }
}

uint64_t VideoCallTranslationController.updateCall(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  if (!a1)
  {
    goto LABEL_14;
  }

  v5 = a1;
  v6 = [v5 uniqueProxyIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (*(v2 + 48))
  {

    v10 = CallFacade.uniqueProxyIdentifier.getter();
    v12 = v11;

    if (v7 == v10 && v9 == v12)
    {

      goto LABEL_14;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
LABEL_12:

LABEL_14:
      VideoCallTranslationController.hudViewModel.getter();

      type metadata accessor for Locale();
      OUTLINED_FUNCTION_2_133();
      dispatch thunk of LanguagePair.local.setter();

      OUTLINED_FUNCTION_2_133();

      dispatch thunk of LanguagePair.remote.setter();

      CallTranslationHUDViewModel.isTranslationStarted.setter(0, v21);

      CallTranslationHUDViewModel.clear()();
    }
  }

  else
  {
  }

  type metadata accessor for CallCenterFacade();
  static CallCenterFacade.shared.getter();
  v15 = [v5 uniqueProxyIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = CallCenterFacade.call(with:)();

  if (!v16)
  {
    goto LABEL_12;
  }

  VideoCallTranslationController.hudViewModel.getter();
  CallTranslationHUDViewModel.clear()();

  v17 = type metadata accessor for CallTranslationService();

  v18 = CallTranslationService.__allocating_init(call:videoCall:)();
  swift_beginAccess();
  v23[3] = v17;
  v23[4] = MEMORY[0x1E6995F18];
  v23[0] = v18;

  v19 = v18;
  CallTranslationMoreMenuViewModel.update(_:)();

  outlined destroy of TapInteractionHandler?(v23, &_s20CommunicationsUICore24CallTranslationServicing_pSgMd, &_s20CommunicationsUICore24CallTranslationServicing_pSgMR);
  v20 = v19;
  specialized VideoCallTranslationController.subscribeTranslationState(service:)(v20, v2);
  VideoCallTranslationController.currentService.setter(v20);

  *(v2 + 48) = v16;
}

void VideoCallTranslationController.currentService.setter(void *a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  if (v2)
  {
    v4 = v2;
    v3 = a1;
    CallTranslationService.stopTranslation()();
  }
}

void VideoCallTranslationController.startTranslation(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  if (v3)
  {
    v4 = v3;
    CallTranslationService.startTranslation(localLocale:remoteLocale:)();
  }
}

uint64_t VideoCallTranslationController.availableLanguages()()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](VideoCallTranslationController.availableLanguages(), v3, v2);
}

{
  v1 = *(v0[2] + 56);
  v0[6] = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = VideoCallTranslationController.availableLanguages();

    return MEMORY[0x1EEDF73A0]();
  }

  else
  {

    v3 = v0[1];
    v4 = MEMORY[0x1E69E7CC0];

    return v3(v4);
  }
}

{

  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t VideoCallTranslationController.availableLanguages()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 64) = a1;

  v4 = *(v2 + 40);
  v5 = *(v2 + 32);

  return MEMORY[0x1EEE6DFA0](VideoCallTranslationController.availableLanguages(), v5, v4);
}

uint64_t VideoCallTranslationController.createMoreMenuItemProvider()()
{
  v1 = [*(v0 + 24) videoCallTranslationEnabled];
  if (!v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_24(v1);
}

uint64_t closure #1 in VideoCallTranslationController.subscribeTranslationState(service:)(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    VideoCallTranslationController.hudViewModel.getter();

    CallTranslationHUDViewModel.isTranslationStarted.setter(v2, v4);
  }

  return result;
}

uint64_t closure #2 in VideoCallTranslationController.subscribeTranslationState(service:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV5local_AC6remotetSgMd, &_s10Foundation6LocaleV5local_AC6remotetSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26[-v13];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    VideoCallTranslationController.hudViewModel.getter();

    outlined init with copy of (local: Locale, remote: Locale)?(a1, v8);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV5local_AC6remotetMd, &_s10Foundation6LocaleV5local_AC6remotetMR);
    if (__swift_getEnumTagSinglePayload(v8, 1, v15) == 1)
    {
      outlined destroy of TapInteractionHandler?(v8, &_s10Foundation6LocaleV5local_AC6remotetSgMd, &_s10Foundation6LocaleV5local_AC6remotetSgMR);
      v16 = type metadata accessor for Locale();
      __swift_storeEnumTagSinglePayload(v14, 1, 1, v16);
    }

    else
    {
      v17 = *(v15 + 48);
      v18 = type metadata accessor for Locale();
      v19 = *(v18 - 8);
      (*(v19 + 32))(v14, v8, v18);
      __swift_storeEnumTagSinglePayload(v14, 0, 1, v18);
      (*(v19 + 8))(&v8[v17], v18);
    }

    dispatch thunk of LanguagePair.local.setter();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    VideoCallTranslationController.hudViewModel.getter();

    outlined init with copy of (local: Locale, remote: Locale)?(a1, v5);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV5local_AC6remotetMd, &_s10Foundation6LocaleV5local_AC6remotetMR);
    if (__swift_getEnumTagSinglePayload(v5, 1, v21) == 1)
    {
      outlined destroy of TapInteractionHandler?(v5, &_s10Foundation6LocaleV5local_AC6remotetSgMd, &_s10Foundation6LocaleV5local_AC6remotetSgMR);
      v22 = type metadata accessor for Locale();
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v22);
    }

    else
    {
      v23 = *(v21 + 48);
      v24 = type metadata accessor for Locale();
      v25 = *(v24 - 8);
      (*(v25 + 32))(v11, &v5[v23], v24);
      __swift_storeEnumTagSinglePayload(v11, 0, 1, v24);
      (*(v25 + 8))(v5, v24);
    }

    dispatch thunk of LanguagePair.remote.setter();
  }

  return result;
}

double closure #3 in VideoCallTranslationController.subscribeTranslationState(service:)(uint64_t a1, uint64_t a2)
{
  if ((CallTranslationTranscript.isLocal.getter() & 1) == 0)
  {
    v3 = CallTranslationTranscript.translatedText.getter();
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE000000000000000;
    }

    if (String.count.getter() < 1)
    {
    }

    else
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        VideoCallTranslationController.hudViewModel.getter();

        v7 = (CallTranslationTranscript.isTranslating.getter() & 1) == 0;
        v8._countAndFlagsBits = v5;
        v8._object = v6;
        CallTranslationHUDViewModel.updateTranscript(_:isCompleted:)(v8, v7);
      }
    }
  }

  return result;
}

uint64_t VideoCallTranslationController.deinit()
{

  MEMORY[0x1BFB23F10](v0 + 40);

  return v0;
}

uint64_t VideoCallTranslationController.__deallocating_deinit()
{
  VideoCallTranslationController.deinit();

  return swift_deallocClassInstance();
}

void *VideoCallTranslationController.init()()
{
  v0[2] = 0;
  v0[3] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  type metadata accessor for CallTranslationMoreMenuViewModel();
  swift_allocObject();
  v0[4] = CallTranslationMoreMenuViewModel.init(service:)();
  swift_unknownObjectWeakInit();
  v0[6] = 0;
  v0[7] = 0;
  v0[8] = MEMORY[0x1E69E7CC0];
  return v0;
}

uint64_t specialized VideoCallTranslationController.subscribeTranslationState(service:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy20CommunicationsUICore25CallTranslationTranscriptVs5NeverOGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy20CommunicationsUICore25CallTranslationTranscriptVs5NeverOGSo9NSRunLoopCGMR);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation6LocaleV5local_AJ6remotetSgs5NeverOGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation6LocaleV5local_AJ6remotetSgs5NeverOGSo9NSRunLoopCGMR);
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v60 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMR);
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV5local_AC6remotetSgMd, &_s10Foundation6LocaleV5local_AC6remotetSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v52 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v52 - v25;
  v73 = a1;
  swift_beginAccess();
  *(a2 + 64) = MEMORY[0x1E69E7CC0];
  v56 = a1;

  v69 = type metadata accessor for CallTranslationService();
  dispatch thunk of CallTranslationServicing.currentLanguagePair.getter();
  VideoCallTranslationController.hudViewModel.getter();

  v70 = v26;
  outlined init with copy of (local: Locale, remote: Locale)?(v26, v23);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV5local_AC6remotetMd, &_s10Foundation6LocaleV5local_AC6remotetMR);
  if (__swift_getEnumTagSinglePayload(v23, 1, v27) == 1)
  {
    outlined destroy of TapInteractionHandler?(v23, &_s10Foundation6LocaleV5local_AC6remotetSgMd, &_s10Foundation6LocaleV5local_AC6remotetSgMR);
    v28 = type metadata accessor for Locale();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v28);
  }

  else
  {
    v29 = *(v27 + 48);
    v30 = type metadata accessor for Locale();
    v31 = *(v30 - 8);
    (*(v31 + 32))(v17, v23, v30);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v30);
    (*(v31 + 8))(&v23[v29], v30);
  }

  dispatch thunk of LanguagePair.local.setter();

  outlined init with copy of (local: Locale, remote: Locale)?(v70, v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v27) == 1)
  {

    outlined destroy of TapInteractionHandler?(v20, &_s10Foundation6LocaleV5local_AC6remotetSgMd, &_s10Foundation6LocaleV5local_AC6remotetSgMR);
    v32 = type metadata accessor for Locale();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v32);
  }

  else
  {
    v33 = *(v27 + 48);
    v34 = type metadata accessor for Locale();
    v35 = *(v34 - 8);
    (*(v35 + 32))(v14, &v20[v33], v34);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v34);
    v36 = *(v35 + 8);

    v36(v20, v34);
  }

  dispatch thunk of LanguagePair.remote.setter();

  v71 = dispatch thunk of CallTranslationServicing.isTranslationStartedPublisher.getter();
  v54 = objc_opt_self();
  v37 = [v54 mainRunLoop];
  v72 = v37;
  v53 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v38 = v60;
  __swift_storeEnumTagSinglePayload(v60, 1, 1, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
  v68 = type metadata accessor for NSRunLoop();
  v52 = MEMORY[0x1E695BED8];
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR, MEMORY[0x1E695BED8]);
  v67 = lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  v39 = v55;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v38, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);

  swift_allocObject();
  swift_weakInit();
  v66 = MEMORY[0x1E695BE98];
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<Bool, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMR, MEMORY[0x1E695BE98]);
  v40 = v65;
  Publisher<>.sink(receiveValue:)();

  (*(v64 + 8))(v39, v40);
  swift_beginAccess();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine14AnyCancellableCGMd, &_sSay7Combine14AnyCancellableCGMR);
  v64 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [AnyCancellable] and conformance [A], &_sSay7Combine14AnyCancellableCGMd, &_sSay7Combine14AnyCancellableCGMR, MEMORY[0x1E69E6348]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v71 = dispatch thunk of CallTranslationServicing.languagePairPublisher.getter();
  v41 = v54;
  v42 = [v54 mainRunLoop];
  v72 = v42;
  v43 = v53;
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10Foundation6LocaleV5local_AF6remotetSgs5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation6LocaleV5local_AF6remotetSgs5NeverOGMR);
  v44 = v52;
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<(local: Locale, remote: Locale)?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10Foundation6LocaleV5local_AF6remotetSgs5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation6LocaleV5local_AF6remotetSgs5NeverOGMR, v52);
  v45 = v57;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v38, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<(local: Locale, remote: Locale)?, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation6LocaleV5local_AJ6remotetSgs5NeverOGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation6LocaleV5local_AJ6remotetSgs5NeverOGSo9NSRunLoopCGMR, v66);
  v46 = v59;
  Publisher<>.sink(receiveValue:)();

  (*(v58 + 8))(v45, v46);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v47 = dispatch thunk of CallTranslationServicing.transcriptsPublisher.getter();

  v71 = v47;
  v48 = [v41 mainRunLoop];
  v72 = v48;
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy20CommunicationsUICore25CallTranslationTranscriptVs5NeverOGMd, &_s7Combine12AnyPublisherVy20CommunicationsUICore25CallTranslationTranscriptVs5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CallTranslationTranscript, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy20CommunicationsUICore25CallTranslationTranscriptVs5NeverOGMd, &_s7Combine12AnyPublisherVy20CommunicationsUICore25CallTranslationTranscriptVs5NeverOGMR, v44);
  v49 = v61;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v38, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<CallTranslationTranscript, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy20CommunicationsUICore25CallTranslationTranscriptVs5NeverOGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy20CommunicationsUICore25CallTranslationTranscriptVs5NeverOGSo9NSRunLoopCGMR, v66);
  v50 = v63;
  Publisher<>.sink(receiveValue:)();

  (*(v62 + 8))(v49, v50);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  return outlined destroy of TapInteractionHandler?(v70, &_s10Foundation6LocaleV5local_AC6remotetSgMd, &_s10Foundation6LocaleV5local_AC6remotetSgMR);
}

uint64_t outlined init with copy of (local: Locale, remote: Locale)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV5local_AC6remotetSgMd, &_s10Foundation6LocaleV5local_AC6remotetSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void LinkShareCoordinator.start(with:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC15ConversationKit20LinkShareCoordinator_type);
  v6 = *(v2 + OBJC_IVAR____TtC15ConversationKit20LinkShareCoordinator_type + 8);
  if (v6)
  {

    LinkShareCoordinator.start(for:with:)(v7, a1, a2);
  }

  else
  {
    LinkShareCoordinator.start(for:with:)(v5, a1, a2);
  }

  outlined consume of LinkShareCoordinatorType(v5, v6);
}

void LinkShareCoordinator.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit20LinkShareCoordinator_type);
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit20LinkShareCoordinator_type + 8);
  *a1 = v2;
  *(a1 + 8) = v3;
  outlined copy of LinkShareCoordinatorType(v2, v3);
}

id LinkShareCoordinator.init(type:hostViewController:originatingView:)()
{
  OUTLINED_FUNCTION_1_138();
  ObjectType = swift_getObjectType();
  v5 = *v3;
  v6 = *(v3 + 8);
  *&v1[OBJC_IVAR____TtC15ConversationKit20LinkShareCoordinator_shareSheetViewController] = 0;
  v7 = &v1[OBJC_IVAR____TtC15ConversationKit20LinkShareCoordinator_type];
  *v7 = v5;
  v7[8] = v6;
  swift_unknownObjectUnownedInit();
  swift_unknownObjectUnownedInit();
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

id LinkShareCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LinkShareCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void LinkShareCoordinator.start(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = [objc_allocWithZone(MEMORY[0x1E69D8C20]) initWithTUConversationLink_];
  v8 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUStringShareItem, 0x1E69D8CF8);
  v9 = [objc_opt_self() conversationKit];
  v42._object = 0xE000000000000000;
  v10.value._countAndFlagsBits = 0x61737265766E6F43;
  v10.value._object = 0xEF74694B6E6F6974;
  v11._object = 0x80000001BC4F97A0;
  v11._countAndFlagsBits = 0xD000000000000010;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v42._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, v9, v12, v42);

  v13 = TUStringShareItem.__allocating_init(message:)();
  type metadata accessor for LinkShareActivityViewController();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BC4BAA20;
  v15 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TULinkShareItem, 0x1E69D8C20);
  *(v14 + 32) = v7;
  *(v14 + 88) = v8;
  *(v14 + 56) = v15;
  *(v14 + 64) = v13;
  v16 = v7;
  v17 = v13;
  v18 = LinkShareActivityViewController.__allocating_init(activityItems:applicationActivities:)(v14, 0);
  [v18 setOverrideUserInterfaceStyle_];
  v19 = v18;
  [v19 setAllowsCustomPresentationStyle_];
  v20 = [objc_opt_self() currentDevice];
  v21 = [v20 userInterfaceIdiom];

  if (v21 == 1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v23 = [Strong traitCollection];

    v24 = [v23 horizontalSizeClass];
    if (v24 == 2)
    {
      [v19 setModalPresentationStyle_];
    }
  }

  v25 = [v19 popoverPresentationController];

  if (v25)
  {
    v26 = swift_unknownObjectUnownedLoadStrong();
    [v25 setSourceView_];

    if (static Platform.current.getter() != 3)
    {
      v27 = swift_unknownObjectUnownedLoadStrong();
      [v27 bounds];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;

      [v25 setSourceRect_];
      [v25 setCanOverlapSourceViewRect_];
    }
  }

  v36 = swift_allocObject();
  v36[2] = a2;
  v36[3] = a3;
  v36[4] = v16;
  aBlock[4] = partial apply for closure #1 in LinkShareCoordinator.start(for:with:);
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIActivityType?, @unowned Bool, @guaranteed [Any]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_76;
  v37 = _Block_copy(aBlock);
  v38 = v16;

  [v19 setCompletionWithItemsHandler_];
  _Block_release(v37);
  v39 = swift_unknownObjectUnownedLoadStrong();
  [v39 presentViewController:v19 animated:1 completion:0];

  v40 = *(v4 + OBJC_IVAR____TtC15ConversationKit20LinkShareCoordinator_shareSheetViewController);
  *(v4 + OBJC_IVAR____TtC15ConversationKit20LinkShareCoordinator_shareSheetViewController) = v19;
}

{
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 conversationManager];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a2;
  v9[4] = a3;
  v11[4] = partial apply for closure #1 in LinkShareCoordinator.start(for:with:);
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed ASCLockupRequest?, @guaranteed Error?) -> ();
  v11[3] = &block_descriptor_12_3;
  v10 = _Block_copy(v11);

  [v6 generateLinkWithInvitedMemberHandles:isa linkLifetimeScope:0 completionHandler:v10];
  _Block_release(v10);
}

void outlined consume of LinkShareCoordinatorType(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void outlined copy of LinkShareCoordinatorType(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    v2 = a1;
  }
}

Swift::Void __swiftcall LinkShareCoordinator.stop()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit20LinkShareCoordinator_shareSheetViewController);
  if (v1)
  {
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

id protocol witness for LinkShareCoordinatorProtocol.init(type:hostViewController:originatingView:) in conformance LinkShareCoordinator@<X0>(uint64_t *a1@<X8>)
{
  result = LinkShareCoordinator.__allocating_init(type:hostViewController:originatingView:)();
  *a1 = result;
  return result;
}

uint64_t closure #1 in LinkShareCoordinator.start(for:with:)(uint64_t a1, char a2, __n128 a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.conversationKit;
    v11 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BC4BA940;
    v13 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(reflecting:)();
    v16 = v15;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    os_log(_:dso:log:type:_:)("Share sheet completed with error: %@", 36, 2, &dword_1BBC58000, v10, v11, v12);

    v17 = 0;
    v18 = 0;
  }

  else
  {
    v17 = a2 & 1;
    v18 = a8;
  }

  return a6(v17, v18);
}

void closure #1 in LinkShareCoordinator.start(for:with:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a1)
    {
      v11 = one-time initialization token for conversationKit;
      v12 = a1;
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = static OS_os_log.conversationKit;
      v14 = static os_log_type_t.info.getter();
      os_log(_:dso:log:type:_:)("Link successfully generated", 27, 2, &dword_1BBC58000, v13, v14, MEMORY[0x1E69E7CC0]);
      LinkShareCoordinator.start(for:with:)(v12, a4, a5);
    }

    else
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v15 = static OS_os_log.conversationKit;
      v16 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1BC4BA940;
      if (a2)
      {
        v18 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v19 = String.init<A>(reflecting:)();
        v21 = v20;
      }

      else
      {
        v21 = 0xE300000000000000;
        v19 = 7104878;
      }

      *(v17 + 56) = MEMORY[0x1E69E6158];
      *(v17 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v17 + 32) = v19;
      *(v17 + 40) = v21;
      os_log(_:dso:log:type:_:)("Error generating link %@", 24, 2, &dword_1BBC58000, v15, v16, v17);
    }
  }
}

id HeldInCallControlsView.Style.backgroundColor.getter()
{
  if (*v0 == 1)
  {
    return [objc_opt_self() blackColor];
  }

  else
  {
    return 0;
  }
}

double HeldInCallControlsView.Style.avatarDiameter.getter()
{
  result = 50.0;
  if (*v0)
  {
    return 60.0;
  }

  return result;
}

double HeldInCallControlsView.Style.avatarMargins.getter()
{
  result = 14.0;
  if (*v0)
  {
    return 20.0;
  }

  return result;
}

id HeldInCallControlsView.Style.primaryFont.getter()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = 16.67;
  if (v1)
  {
    v3 = 20.0;
  }

  v4 = [v2 systemFontOfSize:v3 weight:*MEMORY[0x1E69DB970]];

  return v4;
}

id HeldInCallControlsView.Style.secondaryFont.getter()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = 14.0;
  if (v1)
  {
    v3 = 17.0;
  }

  v4 = [v2 systemFontOfSize:v3 weight:*MEMORY[0x1E69DB978]];

  return v4;
}

double HeldInCallControlsView.Style.actionMargins.getter()
{
  result = 17.0;
  if (*v0)
  {
    return 20.0;
  }

  return result;
}

Swift::Int HeldInCallControlsView.Style.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

void *HeldInCallControlsView.__allocating_init(callCenter:style:)(NSObject *a1, char *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = [a1 callWithStatus:1];
  if (!v6)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, &static Logger.conversationControls);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1BBC58000, v19, v20, "unable to create held call controls: no active call in container", v21, 2u);
      OUTLINED_FUNCTION_27();
    }

    v7 = a1;
    goto LABEL_17;
  }

  v7 = v6;
  v8 = [a1 callWithStatus:2];
  if (!v8)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, &static Logger.conversationControls);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1BBC58000, v23, v24, "unable to create held call controls: no held call in container", v25, 2u);
      OUTLINED_FUNCTION_4_4();
    }

    v19 = a1;
LABEL_17:

    v17 = 0;
LABEL_18:

    return v17;
  }

  v9 = v8;
  v10 = [a1 activeConversationForCall:v8];
  v11 = objc_opt_self();
  v12 = v7;
  v13 = [v11 sharedInstance];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = static PlaceholderCallCenter.shared;
  v15 = objc_allocWithZone(type metadata accessor for CallCenter());
  CallCenter.init(callCenter:placeholderCallCenter:shouldRegisterForMediaControllerChanges:shouldRegisterForReactionsControllerChanges:)(v13, v14, 0, 0);
  v16 = _s15ConversationKit0A15ControlsManagerC10activeCall10callCenterAcA0F0_p_AA0fH8Provider_ptcfCTf4nen_nAA0fH0C_Tg5Tf4enn_nSo6TUCallC_Tt1g5();
  v27 = v5;
  v17 = (*(v3 + 160))(v9, v10, v16, 0, 0, &v27);
  v7 = v17;

  if (v17)
  {
    goto LABEL_18;
  }

  return v17;
}

char *HeldInCallControlsView.init(heldCall:heldConversation:controlsManager:menuHostViewController:style:)(void *a1, void *a2, void *a3, void *a4, void *a5, unsigned __int8 *a6)
{
  v7 = v6;
  v98 = a5;
  v100 = a2;
  v12 = type metadata accessor for ConversationControlsAction(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = *a6;
  v15 = OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_avatar;
  *(v7 + OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_avatar) = 0;
  v16 = OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_primaryLabel;
  v17 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v99 = v16;
  *(v7 + v16) = v17;
  v18 = OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_secondaryLabel;
  v19 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v101 = v18;
  *(v7 + v18) = v19;
  v20 = OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_blurView;
  v21 = [objc_opt_self() effectWithStyle_];
  v22 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  v23 = a1;
  *(v7 + v20) = v22;
  v24 = [a1 isOnHold];
  v103 = a4;
  if (v24)
  {
    *(v7 + OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_style) = v102;
    swift_storeEnumTagMultiPayload();
    v106 = 0;
    memset(v105, 0, sizeof(v105));
    v97 = a3;
    ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
    v26 = v25;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v105);
    outlined destroy of ConversationControlsAction(v14);
    *(v7 + OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_swapButton) = v26;
    v27 = objc_opt_self();
    v98 = v27;
    v28 = v100;
    v29 = v100;
    v30 = v23;
    v31 = _s15ConversationKit0A35ControlsBadgingAvatarViewControllerC4call12conversation10badgeImage0J15BackgroundColorAcA4Call_p_So14TUConversationCSgSo7UIImageCSgSo7UIColorCtcfCTf4ennnn_nSo6TUCallC_Tt3g5(v30, v28, 0, [v27 clearColor]);
    v32 = *(v7 + v15);
    *(v7 + v15) = v31;

    v33 = *(v7 + v99);
    if (v28)
    {
      v34 = v29;
    }

    else
    {
      v34 = v30;
    }

    v43 = [v34 displayName];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    outlined bridged method (mbnn) of @objc UILabel.text.setter(v44, v46, v33);
    v47 = one-time initialization token for conversationKit;
    v48 = *&v101[v7];
    if (v47 != -1)
    {
      swift_once();
    }

    v107._object = 0xE000000000000000;
    v49._object = 0x80000001BC511BA0;
    v49._countAndFlagsBits = 0xD000000000000017;
    v50._countAndFlagsBits = 0;
    v50._object = 0xE000000000000000;
    v107._countAndFlagsBits = 0;
    v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(v49, xmmword_1EDDCCEE8, static LocalizationSource.conversationKit, v50, v107);
    outlined bridged method (mbnn) of @objc UILabel.text.setter(v51._countAndFlagsBits, v51._object, v48);

    *(v7 + OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_brandedIconView) = 0;
    v52 = type metadata accessor for HeldInCallControlsView();
    v104.receiver = v7;
    v104.super_class = v52;
    v42 = objc_msgSendSuper2(&v104, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v53 = [v98 clearColor];
    [v42 setBackgroundColor_];

    v54 = OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_blurView;
    [v42 addSubview_];
    v55 = *&v42[OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_avatar];
    if (v55)
    {
      v56 = v55;
      v57 = [v56 view];
      [v42 addSubview_];
    }

    v100 = v30;
    v101 = v29;
    v58 = [*&v42[v54] contentView];
    v59 = OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_primaryLabel;
    [v58 addSubview_];

    v60 = [*&v42[v54] contentView];
    v61 = OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_secondaryLabel;
    [v60 addSubview_];

    v62 = [*&v42[v54] contentView];
    [v62 addSubview_];

    v63 = *&v42[OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_brandedIconView];
    if (v63)
    {
      v64 = *&v42[v54];
      v65 = v63;
      v66 = [v64 contentView];
      [v66 addSubview_];
    }

    v67 = *&v42[v59];
    v68 = objc_opt_self();
    v69 = *MEMORY[0x1E69DB970];
    v70 = v67;
    v71 = v102;
    v72 = 16.67;
    if (v102)
    {
      v72 = 20.0;
      v73 = 17.0;
    }

    else
    {
      v73 = 14.0;
    }

    v74 = [v68 systemFontOfSize:v72 weight:v69];
    [v70 setFont_];

    v75 = *&v42[v59];
    v76 = v98;
    v77 = [v98 whiteColor];
    [v75 setTextColor_];

    v78 = *&v42[v61];
    v79 = objc_opt_self();
    v80 = *MEMORY[0x1E69DB978];
    v81 = v78;
    v82 = [v79 systemFontOfSize:v73 weight:v80];
    [v81 setFont_];

    v83 = *&v42[v61];
    v84 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v85 = v83;
    v86 = [v84 initWithWhite:1.0 alpha:0.4];
    [v85 setTextColor_];

    if (v71)
    {
      v87 = [v76 blackColor];
      v88 = v103;
      v89 = v97;
      v90 = v100;
      if (v87)
      {
        v91 = v87;
        v92 = [*&v42[v54] contentView];
        [v92 setBackgroundColor_];

        v93 = *&v42[v54];
        [v93 setEffect_];

        v94 = v101;
      }

      else
      {
        v93 = v100;
        v90 = v101;
        v94 = v42;
      }
    }

    else
    {
      v93 = v100;
      v90 = v101;
      v94 = v42;
      v88 = v103;
      v89 = v97;
    }
  }

  else
  {
    v35 = v15;
    v37 = v99;
    v36 = v100;
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, &static Logger.conversationControls);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();
    if (OUTLINED_FUNCTION_18_0(v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1BBC58000, v39, v40, "Unable to make HeldInCallControlsView for call that is not on hold", v41, 2u);
      OUTLINED_FUNCTION_27();
    }

    type metadata accessor for HeldInCallControlsView();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v42;
}

id HeldInCallControlsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void HeldInCallControlsView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_avatar) = 0;
  v1 = OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_primaryLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_secondaryLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_blurView;
  v4 = [objc_opt_self() effectWithStyle_];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  *(v0 + v3) = v5;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall HeldInCallControlsView.layoutSubviews()()
{
  v2 = v0;
  swift_getObjectType();
  v131.receiver = v0;
  v131.super_class = type metadata accessor for HeldInCallControlsView();
  objc_msgSendSuper2(&v131, sel_layoutSubviews);
  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_blurView];
  OUTLINED_FUNCTION_5_118();
  v4 = &selRef_isRecordingAllowed;
  [v3 setFrame_];
  OUTLINED_FUNCTION_5_118();
  [v3 _setContinuousCornerRadius_];
  v5 = OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_style;
  OUTLINED_FUNCTION_7_86();
  if (v6)
  {
    v7 = 50.0;
  }

  else
  {
    v7 = 60.0;
  }

  if (v6)
  {
    v8 = 16.0;
  }

  else
  {
    v8 = 20.0;
  }

  OUTLINED_FUNCTION_5_118();
  v9 = (CGRectGetHeight(v133) - v7) * 0.5;
  v115 = OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_avatar;
  v10 = *&v2[OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_avatar];
  if (v10)
  {
    v11 = [v10 view];
    [v11 setFrame_];
  }

  if (one-time initialization token for conversationControls != -1)
  {
LABEL_86:
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, &static Logger.conversationControls);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  rect_24 = v9;
  if (OUTLINED_FUNCTION_9_80(v14))
  {
    OUTLINED_FUNCTION_30_1();
    v130 = OUTLINED_FUNCTION_16_8();
    *i = 136446466;
    v15 = _typeName(_:qualified:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v130);
    OUTLINED_FUNCTION_4_122();

    OUTLINED_FUNCTION_8_60();
    v126 = *&v8;
    v127 = v9;
    v128 = v7;
    v129 = v7;
    type metadata accessor for CGRect(0);
    v17 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v130);
    OUTLINED_FUNCTION_4_122();

    *(i + 14) = 0x1FAA53000;
    OUTLINED_FUNCTION_23_3(&dword_1BBC58000, v19, v20, "[%{public}s][layout] leadingFrame is %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_4_4();
  }

  OUTLINED_FUNCTION_5_118();
  Width = CGRectGetWidth(v134);
  OUTLINED_FUNCTION_7_86();
  if (v22)
  {
    v23 = 10.0;
  }

  else
  {
    v23 = 13.0;
  }

  if (v22)
  {
    v24 = 16.0;
  }

  else
  {
    v24 = 20.0;
  }

  OUTLINED_FUNCTION_5_118();
  CGRectGetHeight(v135);
  OUTLINED_FUNCTION_7_86();
  v26 = 17.0;
  if (!v6)
  {
    v26 = 20.0;
  }

  v27 = *&v2[OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_swapButton];
  [v27 sizeThatFits_];
  v29 = v28;
  v31 = v30;
  OUTLINED_FUNCTION_5_118();
  CGRectGetWidth(v136);
  OUTLINED_FUNCTION_7_86();
  if (v6)
  {
    v33 = 16.0;
  }

  else
  {
    v33 = 20.0;
  }

  v34 = v32 - v33 - v29;
  OUTLINED_FUNCTION_5_118();
  v35 = (CGRectGetHeight(v137) - v31) * 0.5;
  v114 = v27;
  [v27 v4[63]];
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  v112 = v31;
  v122 = v29;
  if (os_log_type_enabled(v36, v37))
  {
    v38 = OUTLINED_FUNCTION_30_1();
    v130 = swift_slowAlloc();
    *v38 = 136446466;
    v39 = _typeName(_:qualified:)();
    v41 = v4;
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v130);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    v126 = *&v34;
    v127 = v35;
    v128 = v29;
    v129 = v31;
    type metadata accessor for CGRect(0);
    v43 = String.init<A>(reflecting:)();
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v130);

    *(v38 + 14) = v45;
    v4 = v41;
    _os_log_impl(&dword_1BBC58000, v36, v37, "[%{public}s][layout] swapFrame is %s", v38, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v138.origin.y = rect_24;
  rect = v8;
  v138.origin.x = v8;
  v138.size.width = v7;
  v138.size.height = v7;
  MaxX = CGRectGetMaxX(v138);
  OUTLINED_FUNCTION_7_86();
  if (v47)
  {
    v48 = 9.0;
  }

  else
  {
    v48 = 13.0;
  }

  if (v47)
  {
    v49 = 10.0;
  }

  else
  {
    v49 = 13.0;
  }

  if (v47)
  {
    v50 = 16.0;
  }

  else
  {
    v50 = 20.0;
  }

  OUTLINED_FUNCTION_5_118();
  v51 = CGRectGetWidth(v139);
  v52 = *&v2[OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_primaryLabel];
  v53 = [v52 font];
  if (!v53)
  {
    __break(1u);
LABEL_88:
    __break(1u);
    return;
  }

  v54 = v53;
  v121 = v7;
  [v53 lineHeight];
  v56 = v55;

  v57 = *&v2[OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_brandedIconView];
  if (v57)
  {
    v58 = 14.0;
  }

  else
  {
    v58 = 0.0;
  }

  v59 = *&v2[OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_secondaryLabel];
  v60 = [v59 font];
  if (!v60)
  {
    goto LABEL_88;
  }

  v61 = v60;
  v7 = MaxX + v48;
  v62 = v51 - (v50 + v122 + v49) - (MaxX + v48);
  [v60 lineHeight];
  v64 = v63;

  if (v64 > v58)
  {
    v65 = v64;
  }

  else
  {
    v65 = v58;
  }

  v66 = v56 + v65;
  OUTLINED_FUNCTION_5_118();
  v67 = (CGRectGetHeight(v140) - v66) * 0.5;
  v141.origin.x = v7;
  v141.origin.y = v67;
  v141.size.width = v62;
  v141.size.height = v56;
  MaxY = CGRectGetMaxY(v141);
  v69 = 18.0;
  if (!v57)
  {
    v69 = 0.0;
  }

  v70 = v62 - v69;
  v71 = (v58 - v64) * 0.5;
  if (!v57)
  {
    v71 = 0.0;
  }

  v72 = v7 + v69;
  v73 = v71 + MaxY;
  v116 = v58;
  v117 = v62;
  v74 = (v64 - v58) * 0.5;
  if (v57)
  {
    v75 = v7;
  }

  else
  {
    v75 = 0.0;
  }

  if (v57)
  {
    v76 = v74;
  }

  else
  {
    v76 = 0.0;
  }

  v119 = v76;
  v120 = v75;
  v77 = v62;
  v8 = v70;
  [v52 v4[63]];
  v118 = v72;
  [v59 v4[63]];
  if (v57)
  {
    [v57 setBounds_];
  }

  v142.origin.x = rect;
  v142.origin.y = rect_24;
  v142.size.width = v121;
  v142.size.height = v121;
  v78 = CGRectGetMaxY(v142);
  v79 = v2[v5];
  v143.origin.x = v7;
  v143.origin.y = v67;
  v143.size.width = v117;
  v143.size.height = v56;
  MinY = CGRectGetMinY(v143);
  v144.origin.x = v118;
  v144.origin.y = v73;
  v144.size.width = v8;
  v144.size.height = v64;
  v9 = CGRectGetMaxY(v144);
  v145.origin.y = v119;
  v145.origin.x = v120;
  v145.size.width = v116;
  v145.size.height = v116;
  v81 = CGRectGetMaxY(v145);
  v82 = v2[v5];
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v84))
  {
    v85 = 17.0;
    if (v82)
    {
      v85 = 20.0;
    }

    v86 = v85 + v113 + v85;
    if (v9 > v81)
    {
      v87 = v9;
    }

    else
    {
      v87 = v81;
    }

    v9 = MinY + v87;
    v88 = 14.0;
    if (v79)
    {
      v88 = 20.0;
    }

    v89 = v78 + v88;
    rect_24a = v52;
    v90 = swift_slowAlloc();
    v91 = v59;
    v92 = v4;
    v93 = swift_slowAlloc();
    v126 = v93;
    *v90 = 136446978;
    v94 = _typeName(_:qualified:)();
    v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v95, &v126);

    *(v90 + 4) = v96;
    *(v90 + 12) = 2048;
    *(v90 + 14) = v89;
    *(v90 + 22) = 2048;
    *(v90 + 24) = v9;
    *(v90 + 32) = 2048;
    *(v90 + 34) = v86;
    _os_log_impl(&dword_1BBC58000, v83, v84, "[%{public}s][layout] avatarMaxY: %f, textMaxY: %f, %f", v90, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v93);
    v4 = v92;
    v59 = v91;
    OUTLINED_FUNCTION_27();
    v52 = rect_24a;
    OUTLINED_FUNCTION_27();
  }

  if ([v2 effectiveUserInterfaceLayoutDirection] == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6UIViewCSgGMd, &_ss23_ContiguousArrayStorageCySo6UIViewCSgGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BE790;
    v98 = *&v2[v115];
    if (v98)
    {
      v98 = [v98 view];
    }

    *(inited + 32) = v98;
    *(inited + 40) = v59;
    *(inited + 48) = v52;
    *(inited + 56) = v114;
    *(inited + 64) = v57;
    v5 = MEMORY[0x1E69E7CC0];
    v126 = MEMORY[0x1E69E7CC0];
    v99 = v57;
    v100 = v59;
    v101 = v52;
    v102 = v114;
    for (i = 0; i != 5; ++i)
    {
      if (i > 4)
      {
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v103 = *(inited + 8 * i + 32);
      if (v103)
      {
        v104 = v103;
        MEMORY[0x1BFB20CC0]();
        if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v5 = v126;
      }
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v105 = specialized Array.count.getter();
    for (j = 0; v105 != j; ++j)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v107 = MEMORY[0x1BFB22010](j, v5);
      }

      else
      {
        if (j >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_85;
        }

        v107 = *(v5 + 8 * j + 32);
      }

      i = v107;
      if (__OFADD__(j, 1))
      {
        goto LABEL_84;
      }

      OUTLINED_FUNCTION_5_118();
      v108 = CGRectGetWidth(v146);
      OUTLINED_FUNCTION_12_67();
      v110 = v108 - v109;
      OUTLINED_FUNCTION_12_67();
      v9 = v110 - CGRectGetMinX(v147);
      OUTLINED_FUNCTION_12_67();
      v111 = CGRectGetMinY(v148);
      OUTLINED_FUNCTION_12_67();
      [i v4[63]];
    }
  }
}

CGSize __swiftcall HeldInCallControlsView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  ObjectType = swift_getObjectType();
  v6 = 1.79769313e308;
  if (height > 2.22507386e-308)
  {
    v6 = height;
  }

  *&v94 = v6;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, &static Logger.conversationControls);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_9_80(v9))
  {
    OUTLINED_FUNCTION_30_1();
    v99 = OUTLINED_FUNCTION_16_8();
    *v2 = 136446466;
    v10 = _typeName(_:qualified:)();
    OUTLINED_FUNCTION_26_6(v10, v11, v12, v13, v14, v15, v16, v17, v87, ObjectType, v94, v97);
    OUTLINED_FUNCTION_4_122();

    OUTLINED_FUNCTION_8_60();
    v98 = *&v95;
    type metadata accessor for CGSize(0);
    v18 = String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_26_6(v18, v19, v20, v21, v22, v23, v24, v25, v88, v92, v95, *&width);
    OUTLINED_FUNCTION_4_122();

    *(v2 + 14) = v3;
    OUTLINED_FUNCTION_23_3(&dword_1BBC58000, v26, v27, "[%{public}s][sizing] sizingThatFits %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_4_4();
  }

  [v1 bounds];
  v28 = CGRectGetWidth(v100);
  OUTLINED_FUNCTION_11_82();
  if (v29)
  {
    v30 = 10.0;
  }

  else
  {
    v30 = 13.0;
  }

  if (v29)
  {
    v31 = 16.0;
  }

  else
  {
    v31 = 20.0;
  }

  [v1 bounds];
  CGRectGetHeight(v101);
  OUTLINED_FUNCTION_11_82();
  v33 = 17.0;
  if (!v29)
  {
    v33 = 20.0;
  }

  [*&v1[OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_swapButton] sizeThatFits_];
  v35 = v34;
  v37 = v36;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_9_80(v39))
  {
    OUTLINED_FUNCTION_30_1();
    v99 = OUTLINED_FUNCTION_16_8();
    *v2 = 136446466;
    v40 = _typeName(_:qualified:)();
    OUTLINED_FUNCTION_26_6(v40, v41, v42, v43, v44, v45, v46, v47, v87, ObjectType, v94, v97);
    OUTLINED_FUNCTION_4_122();

    OUTLINED_FUNCTION_8_60();
    v98 = v37;
    type metadata accessor for CGSize(0);
    v48 = String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_26_6(v48, v49, v50, v51, v52, v53, v54, v55, v89, v93, v96, v35);
    OUTLINED_FUNCTION_4_122();

    *(v2 + 14) = v3;
    OUTLINED_FUNCTION_23_3(&dword_1BBC58000, v56, v57, "[%{public}s][sizing] actionsSize is  %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_4_4();
  }

  OUTLINED_FUNCTION_11_82();
  v59 = 16.0;
  if (v58)
  {
    v60 = 75.0;
  }

  else
  {
    v59 = 20.0;
    v60 = 93.0;
  }

  v61 = 10.0;
  if (!v58)
  {
    v61 = 13.0;
  }

  v62 = v59 + *&v35 + v61;
  v63 = 0.0;
  if (*&v1[OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_brandedIconView])
  {
    v64 = 14.0;
  }

  else
  {
    v64 = 0.0;
  }

  if (v64 > 0.0)
  {
    v63 = v64 + 4.0;
  }

  v65 = width - v62 - v60 - v63;
  [*&v1[OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_primaryLabel] sizeThatFits_];
  [*&v1[OBJC_IVAR____TtC15ConversationKit22HeldInCallControlsView_secondaryLabel] sizeThatFits_];
  OUTLINED_FUNCTION_11_82();
  v70 = 78.0;
  if (!v67)
  {
    v70 = 100.0;
  }

  v71 = 20.0;
  if (v67)
  {
    v71 = 17.0;
  }

  v72 = v71 + v37 + v71;
  v73 = v68 + 17.0 + 17.0;
  if (v69 <= 156.0)
  {
    v69 = 156.0;
  }

  v74 = v62 + v60 + v69;
  specialized max<A>(_:_:_:_:)(MEMORY[0x1E69E7CC0], v70, v73, v72);
  v76 = v75;
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v97 = v80;
    *v79 = 136446722;
    v81 = _typeName(_:qualified:)();
    v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, &v97);

    *(v79 + 4) = v83;
    *(v79 + 12) = 2048;
    *(v79 + 14) = v74;
    *(v79 + 22) = 2048;
    *(v79 + 24) = v76;
    _os_log_impl(&dword_1BBC58000, v77, v78, "[%{public}s][sizing] measuredWidth: %f, measuredHeight: %f", v79, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v80);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_27();
  }

  v84 = v90;
  if (v74 < v90)
  {
    v84 = v74;
  }

  v85 = *&v94;
  if (v76 < *&v94)
  {
    v85 = v76;
  }

  result.height = v85;
  result.width = v84;
  return result;
}

CGSize __swiftcall HeldInCallControlsView.systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)(CGSize _, __C::UILayoutPriority withHorizontalFittingPriority, __C::UILayoutPriority verticalFittingPriority)
{
  [v3 sizeThatFits_];
  result.height = v5;
  result.width = v4;
  return result;
}

id HeldInCallControlsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id HeldInCallControlsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeldInCallControlsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type HeldInCallControlsView.Style and conformance HeldInCallControlsView.Style()
{
  result = lazy protocol witness table cache variable for type HeldInCallControlsView.Style and conformance HeldInCallControlsView.Style;
  if (!lazy protocol witness table cache variable for type HeldInCallControlsView.Style and conformance HeldInCallControlsView.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeldInCallControlsView.Style and conformance HeldInCallControlsView.Style);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HeldInCallControlsView.Style(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

double SystemApertureAccessoryView.preferredLayoutMargins.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

id ConversationCapabilities.().init()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ConversationCapabilities();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  ConversationCapabilities.startForwardingCaptionEnablementNotifications()();

  return v1;
}

id ConversationCapabilities.__deallocating_deinit()
{
  ConversationCapabilities.stopForwardingCaptionEnablementNotifications()();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationCapabilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id one-time initialization function for shared(uint64_t a1)
{
  result = [objc_allocWithZone(type metadata accessor for ConversationCapabilities()) init];
  static ConversationCapabilities.shared = result;
  return result;
}

{
  return one-time initialization function for shared(a1, type metadata accessor for HUDActivityManager, &static HUDActivityManager.shared);
}

{
  return one-time initialization function for shared(a1, type metadata accessor for BannerActivityManager, &static BannerActivityManager.shared);
}

uint64_t key path getter for ConversationCapabilities.captioningAccessibilitySettingEnabled : ConversationCapabilities@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x50))();
  *a2 = result & 1;
  return result;
}

uint64_t ConversationCapabilities.captioningAccessibilitySettingEnabled.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  return (*(*static Defaults.shared + 752))() & 1;
}

void ConversationCapabilities.captioningAccessibilitySettingEnabled.setter(char a1)
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  (*(*static Defaults.shared + 760))(a1 & 1);
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&dword_1BBC58000, oslog, v3, "Captions user accessibility enablement set to: %{BOOL}d", v4, 8u);
    OUTLINED_FUNCTION_27();
  }
}

void (*ConversationCapabilities.captioningAccessibilitySettingEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  *(a1 + 8) = (*(*static Defaults.shared + 752))() & 1;
  return ConversationCapabilities.captioningAccessibilitySettingEnabled.modify;
}

uint64_t ConversationCapabilities.captioningSettingEnabledPublisher.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSbGMd, &_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSbGMR);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_SaySbGs5NeverOGAC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSbGGMd, &_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_SaySbGs5NeverOGAC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSbGGMR);
  OUTLINED_FUNCTION_1();
  v30 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC11ConcatenateVy_AC8SequenceVy_SaySbGs5NeverOGAC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSbGGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC11ConcatenateVy_AC8SequenceVy_SaySbGs5NeverOGAC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSbGGGMR);
  OUTLINED_FUNCTION_1();
  v29 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - v19;
  v21 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for captionEnablementChangedNotification != -1)
  {
    swift_once();
  }

  NSNotificationCenter.publisher(for:object:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher();
  Publisher.map<A>(_:)();

  (*(v4 + 8))(v7, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BC4BA940;
  *(v22 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x50))() & 1;
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<NSNotificationCenter.Publisher, Bool> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSbGMd, &_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSbGMR, MEMORY[0x1E695BD60]);
  v23 = v32;
  Publisher.prepend(_:)();

  (*(v9 + 8))(v12, v23);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Concatenate<Publishers.Sequence<[Bool], Never>, Publishers.Map<NSNotificationCenter.Publisher, Bool>> and conformance Publishers.Concatenate<A, B>, &_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_SaySbGs5NeverOGAC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSbGGMd, &_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_SaySbGs5NeverOGAC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSbGGMR, MEMORY[0x1E695BCA8]);
  v24 = v33;
  Publisher<>.removeDuplicates()();
  (*(v30 + 8))(v16, v24);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Publishers.Concatenate<Publishers.Sequence<[Bool], Never>, Publishers.Map<NSNotificationCenter.Publisher, Bool>>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC11ConcatenateVy_AC8SequenceVy_SaySbGs5NeverOGAC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSbGGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC11ConcatenateVy_AC8SequenceVy_SaySbGs5NeverOGAC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSbGGGMR, MEMORY[0x1E695BD38]);
  v25 = v31;
  v26 = Publisher.eraseToAnyPublisher()();
  (*(v29 + 8))(v20, v25);
  return v26;
}

void closure #1 in ConversationCapabilities.captioningSettingEnabledPublisher.getter(_BYTE *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x50))();

    v6 = v5 & 1;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

uint64_t ConversationCapabilities.isCaptioningSupported.getter()
{
  if ([objc_opt_self() isCaptioningSupported])
  {
    v0 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
    v1 = [v0 ftlcPrimaryLanguageControlledEnabled];

    if (v1)
    {
      v2 = TUFTLiveCaptionsActivatable();
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, &static Logger.conversationControls);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 67109120;
        *(v6 + 4) = v2;
        _os_log_impl(&dword_1BBC58000, v4, v5, "Captions Supported: %{BOOL}d", v6, 8u);
        OUTLINED_FUNCTION_27();
      }
    }

    else
    {
      v43 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(&outlined read-only object #0 of ConversationCapabilities.isCaptioningSupported.getter);
      v11 = [objc_opt_self() activeInputModes];
      type metadata accessor for UITextInputMode();
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = specialized Array.count.getter();
      v14 = 0;
      v15 = MEMORY[0x1E69E7CC0];
      while (v13 != v14)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1BFB22010](v14, v12);
        }

        else
        {
          if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v16 = *(v12 + 8 * v14 + 32);
        }

        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v18 = v16;
        v19 = [v18 primaryLanguage];
        if (v19)
        {
          v20 = v19;
          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v22;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v15 = v25;
          }

          v23 = *(v15 + 16);
          if (v23 >= *(v15 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v15 = v26;
          }

          *(v15 + 16) = v23 + 1;
          v24 = v15 + 16 * v23;
          *(v24 + 32) = v21;
          *(v24 + 40) = v42;
          v14 = v17;
        }

        else
        {

          ++v14;
        }
      }

      v27 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v15);
      specialized Set.isDisjoint(with:)(v43, v27);
      LOBYTE(v2) = v28 ^ 1;
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, &static Logger.conversationControls);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v32 = 67109634;
        *(v32 + 4) = v2 & 1;
        *(v32 + 8) = 2080;
        v33 = Set.description.getter();
        v35 = v34;

        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v44);

        *(v32 + 10) = v36;
        *(v32 + 18) = 2080;
        v37 = Set.description.getter();
        v39 = v38;

        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v44);

        *(v32 + 20) = v40;
        _os_log_impl(&dword_1BBC58000, v30, v31, "Captions Supported: %{BOOL}d\nSupported Locales: %s\nDevice Locales: %s", v32, 0x1Cu);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      else
      {
      }
    }
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
LABEL_35:
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, &static Logger.conversationControls);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BBC58000, v8, v9, "Captioning not supported on this device.", v10, 2u);
      OUTLINED_FUNCTION_27();
    }

    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

void specialized Set.isDisjoint(with:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (v2 >= v3)
      {
        v4 = a1;
      }

      else
      {
        v4 = a2;
      }

      v5 = v4 + 56;
      if (v2 >= v3)
      {
        v6 = a2;
      }

      else
      {
        v6 = a1;
      }

      v7 = 1 << *(v4 + 32);
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & *(v4 + 56);
      v10 = (v7 + 63) >> 6;

      v11 = 0;
LABEL_13:
      while (v9)
      {
        v12 = v9;
LABEL_19:
        v9 = (v12 - 1) & v12;
        if (*(v6 + 16))
        {
          v23 = v4;
          v14 = (*(v4 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v12)))));
          v16 = *v14;
          v15 = v14[1];
          Hasher.init(_seed:)();

          String.hash(into:)();
          v17 = Hasher._finalize()();
          v18 = ~(-1 << *(v6 + 32));
          do
          {
            v19 = v17 & v18;
            if (((*(v6 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
            {

              v4 = v23;
              goto LABEL_13;
            }

            v20 = (*(v6 + 48) + 16 * v19);
            if (*v20 == v16 && v20[1] == v15)
            {
              break;
            }

            v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v17 = v19 + 1;
          }

          while ((v22 & 1) == 0);

          return;
        }
      }

      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v10)
        {

          return;
        }

        v12 = *(v5 + 8 * v13);
        ++v11;
        if (v12)
        {
          v11 = v13;
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }
}

uint64_t one-time initialization function for captionEnablementChangedNotification()
{
  result = MEMORY[0x1BFB209B0](0xD00000000000003ELL, 0x80000001BC511CD0);
  static ConversationCapabilities.captionEnablementChangedNotification = result;
  return result;
}

void ConversationCapabilities.startForwardingCaptionEnablementNotifications()()
{
  v1 = v0;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_75(&dword_1BBC58000, v5, v6, "Starting to foward caption enablement notifications");
    OUTLINED_FUNCTION_27();
  }

  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  if (*MEMORY[0x1E69E4B80])
  {
    v8 = v7;
    name = *MEMORY[0x1E69E4B80];
    CFNotificationCenterAddObserver(v8, v1, @objc closure #1 in ConversationCapabilities.startForwardingCaptionEnablementNotifications(), name, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in ConversationCapabilities.startForwardingCaptionEnablementNotifications()()
{
  v0 = type metadata accessor for Notification();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, &static Logger.conversationControls);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BBC58000, v5, v6, "Forwarding captions enablement notification from Dawrin Notifaction center", v7, 2u);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }

  v8 = MEMORY[0x1BFB209B0](0xD00000000000003ELL, 0x80000001BC511CD0);
  memset(v13, 0, sizeof(v13));
  v9 = v8;
  Notification.init(name:object:userInfo:)();
  v10 = [objc_opt_self() defaultCenter];
  isa = Notification._bridgeToObjectiveC()().super.isa;
  [v10 postNotification_];

  return (*(v1 + 8))(v3, v0);
}

void @objc closure #1 in ConversationCapabilities.startForwardingCaptionEnablementNotifications()(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a1;
  v8 = a3;
  v9 = a5;
  closure #1 in ConversationCapabilities.startForwardingCaptionEnablementNotifications()();
}

void ConversationCapabilities.stopForwardingCaptionEnablementNotifications()()
{
  v1 = v0;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_75(&dword_1BBC58000, v5, v6, "Stopping forwarding of caption enablement notifactions");
    OUTLINED_FUNCTION_27();
  }

  center = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(center, v1);
}

unint64_t type metadata accessor for UITextInputMode()
{
  result = lazy cache variable for type metadata for UITextInputMode;
  if (!lazy cache variable for type metadata for UITextInputMode)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UITextInputMode);
  }

  return result;
}

uint64_t ScreenSharingContentLayout.callAsFunction<A, B, C>(_:title:toolbar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, __int128 a10, uint64_t a11)
{
  v14 = v12[1];
  v28 = *v12;
  v29 = v14;
  v30[0] = v12[2];
  *(v30 + 9) = *(v12 + 41);
  v19[2] = a7;
  v19[3] = a8;
  v19[4] = a9;
  v20 = a10;
  v21 = a11;
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy15ConversationKit0F7RoleKey33_29D1C8137BB167A1D34FE391A0AB3398LLVGGMd, &_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy15ConversationKit0F7RoleKey33_29D1C8137BB167A1D34FE391A0AB3398LLVGGMR);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_19_39();
  swift_getTupleTypeMetadata3();
  v15 = type metadata accessor for TupleView();
  v16 = lazy protocol witness table accessor for type ScreenSharingContentLayout and conformance ScreenSharingContentLayout();
  OUTLINED_FUNCTION_0_10();
  WitnessTable = swift_getWitnessTable();
  return Layout.callAsFunction<A>(_:)(partial apply for closure #1 in ScreenSharingContentLayout.callAsFunction<A, B, C>(_:title:toolbar:), v19, &type metadata for ScreenSharingContentLayout, v15, v16, WitnessTable, x8_0);
}

uint64_t ScreenSharingContentLayout.init(contentMode:safeAreaInsets:toolbarPlacement:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  *a3 = xmmword_1BC4C1A40;
  *(a3 + 16) = result & 1;
  *(a3 + 24) = a4;
  *(a3 + 32) = a5;
  *(a3 + 40) = a6;
  *(a3 + 48) = a7;
  *(a3 + 56) = a2;
  return result;
}

uint64_t Layout.callAsFunction<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21[0] = a6;
  v21[1] = a7;
  OUTLINED_FUNCTION_2_7();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _LayoutRoot();
  OUTLINED_FUNCTION_7_0();
  v19 = MEMORY[0x1EEE9AC00](v18);
  (*(v14 + 16))(v17, v7, a3, v19);
  _LayoutRoot.init(_:)();
  v21[4] = a3;
  v21[5] = a4;
  v21[6] = a5;
  v21[7] = v21[0];
  v21[8] = a1;
  v21[9] = a2;
  swift_getWitnessTable();
  return _VariadicView.Tree.init(_:content:)();
}

double ScreenSharingContentLayout.additionalSafeAreaInsets.getter()
{
  v1 = Edge.rawValue.getter();
  if (v1 == Edge.rawValue.getter())
  {
    v2 = 9.0 - *(v0 + 24);
    if (v2 <= 0.0)
    {
      v2 = 0.0;
    }

    return v2 + 4.0;
  }

  else
  {
    v4 = Edge.rawValue.getter();
    v5 = Edge.rawValue.getter();
    v6 = *(v0 + 24);
    v7 = 11.0 - v6;
    if (11.0 - v6 <= 0.0)
    {
      v7 = 0.0;
    }

    result = 36.0 - v6;
    if (result <= 0.0)
    {
      result = 0.0;
    }

    if (v4 != v5)
    {
      return v7;
    }
  }

  return result;
}

double CGRect.center.getter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

__C::CGRect __swiftcall CGRect.init(center:size:)(CGPoint center, CGSize size)
{
  v2 = center.x - size.width * 0.5;
  v3 = center.y - size.height * 0.5;
  result.size.height = size.height;
  result.size.width = size.width;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

double ScreenSharingContentLayout.contentBounds(in:titleSize:toolbarSize:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if ((static ContentMode.== infix(_:_:)() & 1) == 0)
  {
    v25 = -*(v8 + 24);
    v26 = -*(v8 + 32);
    return UIEdgeInsetsInsetRect(a1, a2, a3, a4, v25, v26);
  }

  v31 = a6;
  v16 = ScreenSharingContentLayout.additionalSafeAreaInsets.getter();
  v17 = *(v8 + 8);
  ScreenSharingContentLayout.additionalSafeAreaInsets.getter();
  v18 = UIEdgeInsetsInsetRect(a1, a2, a3, a4, v16, v17);
  v22 = *v8;
  switch(*(v8 + 56))
  {
    case 1:
      v24 = v22 + a7;
      v23 = 0.0;
      break;
    case 2:
      v23 = 0.0;
      v24 = 0.0;
      break;
    case 3:
      v23 = 0.0;
      v24 = 0.0;
      break;
    default:
      v23 = v22 + a8;
      v24 = 0.0;
      break;
  }

  a1 = UIEdgeInsetsInsetRect(v18, v19, v20, v21, v23, v24);
  a2 = v27;
  a3 = v28;
  a4 = v29;
  if (v31 > 0.0)
  {
    v25 = v22 + v31;
    v26 = 0.0;
    return UIEdgeInsetsInsetRect(a1, a2, a3, a4, v25, v26);
  }

  return a1;
}

double ScreenSharingContentLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

uint64_t ScreenSharingContentLayout.placeSubviews(in:proposal:subviews:cache:)(CGFloat a1, CGFloat a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v223 = a4;
  v224 = a3;
  v214 = a2;
  v213 = a1;
  v10 = type metadata accessor for LayoutSubview();
  OUTLINED_FUNCTION_2_7();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v227 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v225 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v222 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v24);
  v221 = v199 - v25;
  v26 = type metadata accessor for LayoutSubviews();
  OUTLINED_FUNCTION_2_7();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v199 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_17();
  v37 = (v35 - v36);
  MEMORY[0x1EEE9AC00](v38);
  v40 = v199 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = v199 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
  MEMORY[0x1EEE9AC00](v44 - 8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  v50 = MEMORY[0x1EEE9AC00](v49);
  v205 = v199 - v51;
  v52 = *(v28 + 16);
  v220 = *&a9;
  *&v218 = v28 + 16;
  v216 = v52;
  v52(v32, a9, v26, v50);
  *&v53 = COERCE_DOUBLE(lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x1E697E3D0]));
  v207 = v32;
  v54 = v200;
  v215 = *&v53;
  dispatch thunk of Sequence.makeIterator()();
  v217 = v33;
  v55 = *(v33 + 36);
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x1E697E3D8]);
  v228 = v12 + 16;
  v226 = (v12 + 32);
  v210 = v12;
  v229 = (v12 + 8);
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v43[v55] == v231)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
      v62 = 1;
      v63 = v205;
      goto LABEL_7;
    }

    dispatch thunk of Collection.subscript.read();
    OUTLINED_FUNCTION_14_52();
    v56 = v221;
    v57(v221);
    (v43)(&v231, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v58 = v54;
    v59 = *v226;
    (*v226)(*&v58, v56, v10);
    lazy protocol witness table accessor for type LayoutRoleKey and conformance LayoutRoleKey();
    LayoutSubview.subscript.getter();
    if (!v231)
    {
      break;
    }

    v60 = OUTLINED_FUNCTION_2_134();
    v61(v60);
    v54 = v58;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
  v63 = v205;
  v64 = OUTLINED_FUNCTION_15_50();
  v59(v64);
  v62 = 0;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v63, v62, 1, v10);
  v65 = v201;
  outlined init with copy of LayoutSubview?(v63, v201);
  OUTLINED_FUNCTION_6_95();
  if (v151)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v65, &_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
    v71 = 0.0;
    v73 = 0.0;
  }

  else
  {
    v66 = static ProposedViewSize.unspecified.getter();
    OUTLINED_FUNCTION_3_131(v66, v67, v68, v69);
    v71 = v70;
    v73 = v72;
    v74 = OUTLINED_FUNCTION_2_134();
    v75(v74);
  }

  v76 = OUTLINED_FUNCTION_8_85(&v232);
  v77(v76);
  dispatch thunk of Sequence.makeIterator()();
  v78 = *(v217 + 36);
  v79 = v222;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v40[v78] == v231)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v40, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
      v84 = 1;
      v85 = v206;
      goto LABEL_16;
    }

    dispatch thunk of Collection.subscript.read();
    OUTLINED_FUNCTION_14_52();
    v80(*&v79);
    (v40)(&v231, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v81 = *v226;
    (*v226)(COERCE_CGFLOAT(*&v225), *&v79, v10);
    lazy protocol witness table accessor for type LayoutRoleKey and conformance LayoutRoleKey();
    OUTLINED_FUNCTION_23_44();
    LayoutSubview.subscript.getter();
    if (v231 == 2)
    {
      break;
    }

    v82 = OUTLINED_FUNCTION_2_134();
    v83(v82);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v40, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
  v85 = v206;
  v86 = OUTLINED_FUNCTION_15_50();
  v81(v86);
  v84 = 0;
LABEL_16:
  __swift_storeEnumTagSinglePayload(v85, v84, 1, v10);
  v87 = v208;
  outlined init with copy of LayoutSubview?(v85, v208);
  OUTLINED_FUNCTION_6_95();
  v88 = v212;
  if (v151)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v87, &_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
    v94 = 0.0;
    v96 = 0.0;
  }

  else
  {
    v89 = static ProposedViewSize.unspecified.getter();
    OUTLINED_FUNCTION_3_131(v89, v90, v91, v92);
    v94 = v93;
    v96 = v95;
    v97 = OUTLINED_FUNCTION_2_134();
    v98(v97);
  }

  v99 = OUTLINED_FUNCTION_8_85(&v233);
  v100(v99);
  dispatch thunk of Sequence.makeIterator()();
  v101 = *(v217 + 36);
  v207 = MEMORY[0x1E69E7CC0];
  v217 = v10;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v37[v101] == v231)
    {
      break;
    }

    dispatch thunk of Collection.subscript.read();
    OUTLINED_FUNCTION_14_52();
    v102(*&v88);
    (v37)(&v231, 0);
    dispatch thunk of Collection.formIndex(after:)();
    lazy protocol witness table accessor for type LayoutRoleKey and conformance LayoutRoleKey();
    OUTLINED_FUNCTION_23_44();
    LayoutSubview.subscript.getter();
    if (v231 == 1)
    {
      v105 = *v226;
      (*v226)(COERCE_DOUBLE(*&x), *&v88, v10);
      v106 = v207;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v230 = v106;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v106 = v230;
      }

      v108 = *(v106 + 2);
      if (v108 >= *(v106 + 3) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v106 = v230;
      }

      *(v106 + 2) = v108 + 1;
      OUTLINED_FUNCTION_17_51();
      v207 = v106;
      v111 = &v106[v109 + *(v110 + 72) * v108];
      v10 = v217;
      (v105)(v111, *&x, v217);
      v88 = v212;
    }

    else
    {
      v103 = OUTLINED_FUNCTION_22_43();
      v104(v103);
    }
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v37, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
  v112 = OUTLINED_FUNCTION_1_139();
  v113 = v219;
  v218 = ScreenSharingContentLayout.contentBounds(in:titleSize:toolbarSize:)(v112, v114, v115, v116, v71, v73, v94, v96);
  v222 = v119;
  v120 = v117;
  v121 = v118;
  v122 = *(v207 + 2);
  v220 = v118;
  v225 = v117;
  *&v199[1] = v96;
  v201 = *&v94;
  v200 = v71;
  *&v199[2] = v73;
  if (v122)
  {
    v209 = 0.0;
    v208 = 0;
    v123 = v117;
    v124 = v118;
    OUTLINED_FUNCTION_17_51();
    v127 = v125 + v126;
    v221 = *(v128 + 72);
    v129 = *(v128 + 16);
    *&v216 = -0.461538462;
    v215 = fabs(v224 / v223 + -0.461538462);
    LODWORD(v210) = 1;
    v130 = v227;
    v131 = v218;
    do
    {
      v129(v130, v127, v10);
      v132 = v123;
      v133 = v124;
      if (static ContentMode.== infix(_:_:)())
      {
        static ProposedViewSize.unspecified.getter();
        OUTLINED_FUNCTION_11_83();
        LOBYTE(v231) = v134 & 1;
        LOBYTE(v230) = v135 & 1;
        v132 = v123;
        v133 = v124;
        if ((static ProposedViewSize.== infix(_:_:)() & 1) == 0)
        {
          v136 = static ProposedViewSize.unspecified.getter();
          OUTLINED_FUNCTION_3_131(v136, v137, v138, v139);
          v141 = v140;
          v143 = v142;
          v144 = static ContentMode.== infix(_:_:)();
          v145 = static ProposedViewSize.unspecified.getter();
          if (v144)
          {
            if ((OUTLINED_FUNCTION_9_81(v145, v146, v147, v148) & 1) == 0)
            {
              if (v141 == 0.0 && v120 == 0.0)
              {
                v141 = 0.0;
                v149 = fmin(v121 / v143, INFINITY);
                if (v121 == 0.0)
                {
                  v149 = INFINITY;
                }

                v150 = fmin(v121 / v143, INFINITY);
                if (v143 == 0.0)
                {
                  v150 = v149;
                }
              }

              else
              {
                v150 = v120 / v141;
                if ((v143 != 0.0 || v121 != 0.0) && v121 / v143 < v150)
                {
                  v150 = v121 / v143;
                }

                if (v141 == 0.0)
                {
                  v141 = 0.0;
                }

                else
                {
                  v141 = v141 * v150;
                }
              }

              v156 = v143 * v150;
              if (v143 == 0.0)
              {
                v143 = 0.0;
              }

              else
              {
                v143 = v156;
              }
            }
          }

          else if ((OUTLINED_FUNCTION_9_81(v145, v146, v147, v148) & 1) == 0)
          {
            v151 = v120 == 0.0 && v141 == 0.0;
            v152 = v120 / v141;
            v153 = -INFINITY;
            if (v151)
            {
              v152 = -INFINITY;
            }

            if (v121 != 0.0 || v143 != 0.0)
            {
              v153 = v121 / v143;
            }

            if (v152 <= v153)
            {
              v152 = v153;
            }

            if (v141 == 0.0)
            {
              v141 = 0.0;
            }

            else
            {
              v141 = v141 * v152;
            }

            v155 = v143 * v152;
            if (v143 == 0.0)
            {
              v143 = 0.0;
            }

            else
            {
              v143 = v155;
            }
          }

          v132 = v141;
          v133 = v143;
        }
      }

      if (v224 < v223)
      {
        v157 = static ProposedViewSize.unspecified.getter();
        OUTLINED_FUNCTION_3_131(v157, v158, v159, v160);
        if (fabs(v161 / v162 + *&v216) < 0.01 && v215 < 0.06)
        {
          LODWORD(v210) = 0;
          v209 = v132;
          v208 = *&v133;
        }
      }

      if ((static ContentMode.== infix(_:_:)() & 1) != 0 && (v163 = Axis.rawValue.getter(), v151 = v163 == Axis.rawValue.getter(), v10 = v217, v151) && (v234.origin.x = OUTLINED_FUNCTION_1_139(), MidX = CGRectGetMidX(v234), v235.origin.x = v131, v165 = v222, v235.origin.y = v222, v166 = v225, v235.size.width = v225, v235.size.height = v121, MidY = CGRectGetMidY(v235), v236.origin.x = MidX - v132 * 0.5, x = v236.origin.x, v236.origin.y = MidY - v133 * 0.5, v212 = v132, v236.size.width = v132, v236.size.height = v133, MinX = CGRectGetMinX(v236), v237.origin.x = v218, v237.origin.y = v165, v131 = v218, v237.size.width = v166, v237.size.height = v220, v169 = CGRectGetMinX(v237), v121 = v220, v169 <= MinX) && (v238.origin.x = x, v238.origin.y = MidY - v133 * 0.5, v238.size.width = v212, v238.size.height = v133, CGRectGetMaxX(v238), v239.origin.x = OUTLINED_FUNCTION_16_54(), v239.size.width = v225, v239.size.height = v220, MaxX = CGRectGetMaxX(v239), v121 = v220, v133 <= MaxX))
      {
        v120 = v225;
      }

      else
      {
        v120 = v225;
        OUTLINED_FUNCTION_24_40();
        CGRectGetMidX(v240);
        OUTLINED_FUNCTION_24_40();
        CGRectGetMidY(v241);
      }

      static UnitPoint.center.getter();
      OUTLINED_FUNCTION_11_83();
      LayoutSubview.place(at:anchor:proposal:)();
      v130 = v227;
      v171 = OUTLINED_FUNCTION_2_134();
      v172(v171);
      v127 += v221;
      --v122;
    }

    while (v122);

    v173 = v209;
    v113 = v219;
  }

  else
  {

    LODWORD(v210) = 1;
    v173 = 0.0;
  }

  v174 = v202;
  outlined init with copy of LayoutSubview?(v205, v202);
  OUTLINED_FUNCTION_6_95();
  v175 = v204;
  v176 = v206;
  if (v151)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v174, &_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
  }

  else
  {
    v177 = v199[3];
    v178 = OUTLINED_FUNCTION_15_50();
    v179(v178);
    v180 = v213;
    v242.origin.x = v213;
    v181 = v214;
    v242.origin.y = v214;
    v182 = v223;
    v183 = v224;
    v242.size.width = v224;
    v242.size.height = v223;
    CGRectGetMidX(v242);
    v243.origin.x = v180;
    v243.origin.y = v181;
    v243.size.width = v183;
    v243.size.height = v182;
    CGRectGetMinY(v243);
    ScreenSharingContentLayout.additionalSafeAreaInsets.getter();
    static UnitPoint.top.getter();
    OUTLINED_FUNCTION_11_83();
    v120 = v225;
    LayoutSubview.place(at:anchor:proposal:)();
    (*v229)(v177, v10);
  }

  v184 = v203;
  outlined init with copy of LayoutSubview?(v176, v203);
  OUTLINED_FUNCTION_6_95();
  if (v151)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v176, &_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
  }

  else
  {
    (*v226)(v175, v184, v10);
    v185 = *(v113 + 56);
    v186 = Axis.rawValue.getter();
    v187 = Axis.rawValue.getter();
    v188 = static ContentMode.== infix(_:_:)();
    if (v186 == v187)
    {
      if (v188)
      {
        if (v210)
        {
          v189 = v120;
        }

        else
        {
          v189 = v173;
        }
      }

      else
      {
        v189 = v224 - (*(v113 + 8) + *(v113 + 8));
      }

      v201 = *&v189;
    }

    switch(v185)
    {
      case 1:
        v248.origin.x = OUTLINED_FUNCTION_1_139();
        CGRectGetMinX(v248);
        OUTLINED_FUNCTION_16_54();
        OUTLINED_FUNCTION_24_40();
        CGRectGetMidY(v249);
        static UnitPoint.leading.getter();
        break;
      case 2:
        OUTLINED_FUNCTION_10_72();
        v245.origin.x = OUTLINED_FUNCTION_18_48();
        CGRectGetMaxY(v245);
        ScreenSharingContentLayout.additionalSafeAreaInsets.getter();
        static UnitPoint.bottom.getter();
        break;
      case 3:
        v246.origin.x = OUTLINED_FUNCTION_1_139();
        CGRectGetMaxX(v246);
        OUTLINED_FUNCTION_16_54();
        OUTLINED_FUNCTION_24_40();
        CGRectGetMidY(v247);
        static UnitPoint.trailing.getter();
        break;
      default:
        OUTLINED_FUNCTION_10_72();
        v244.origin.x = OUTLINED_FUNCTION_18_48();
        CGRectGetMinY(v244);
        ScreenSharingContentLayout.additionalSafeAreaInsets.getter();
        static UnitPoint.top.getter();
        break;
    }

    OUTLINED_FUNCTION_11_83();
    LayoutSubview.place(at:anchor:proposal:)();
    v190 = OUTLINED_FUNCTION_22_43();
    v191(v190);
  }

  OUTLINED_FUNCTION_31_2();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v192, v193, v194);
  OUTLINED_FUNCTION_31_2();
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v195, v196, v197);
}

uint64_t LayoutSubview.scaledSize(in:contentMode:)(uint64_t a1, char a2, uint64_t a3, char a4, char a5)
{
  static ProposedViewSize.unspecified.getter();
  if ((static ProposedViewSize.== infix(_:_:)() & 1) == 0)
  {
    static ProposedViewSize.unspecified.getter();
    LayoutSubview.sizeThatFits(_:)();
    if (static ContentMode.== infix(_:_:)())
    {
      v6 = OUTLINED_FUNCTION_20_45();
      v12 = CGSize.scaledToFit(_:)(v7, v8, v9, v10, v6, v11);
    }

    else
    {
      v13 = OUTLINED_FUNCTION_20_45();
      v12 = CGSize.scaledToFill(_:)(v14, v15, v16, v17, v13, v18);
    }

    return *&v12;
  }

  return a1;
}

Swift::Bool __swiftcall LayoutSubview.shouldConstrainToolbar(in:)(__C::CGRect in)
{
  if (in.size.width >= in.size.height)
  {
    return 0;
  }

  height = in.size.height;
  width = in.size.width;
  static ProposedViewSize.unspecified.getter();
  LayoutSubview.sizeThatFits(_:)();
  v5 = fabs(width / height + -0.461538462) < 0.06;
  return fabs(v3 / v4 + -0.461538462) < 0.01 && v5;
}

void (*protocol witness for Animatable.animatableData.modify in conformance ScreenSharingContentLayout(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = Animatable<>.animatableData.modify();
  return protocol witness for Control.cnkContentAlpha.modify in conformance BaseButton;
}

uint64_t closure #1 in ScreenSharingContentLayout.callAsFunction<A, B, C>(_:title:toolbar:)@<X0>(void (*a1)(double)@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t (*a11)(char *, uint64_t), uint64_t a12)
{
  v82 = a5;
  v83 = a4;
  v73 = a3;
  v74 = a2;
  v70 = a1;
  v85 = a8;
  v75 = a10;
  v76 = a9;
  v84 = *(a9 - 8);
  v81 = a12;
  v71 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v78 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy15ConversationKit0F7RoleKey33_29D1C8137BB167A1D34FE391A0AB3398LLVGGMd, &_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy15ConversationKit0F7RoleKey33_29D1C8137BB167A1D34FE391A0AB3398LLVGGMR);
  v79 = type metadata accessor for ModifiedContent();
  v80 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v92 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v65 - v17;
  v69 = a6;
  v72 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ModifiedContent();
  v22 = *(v21 - 8);
  v89 = v21;
  v90 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v88 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v91 = &v65 - v25;
  v26 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ModifiedContent();
  v67 = *(v30 - 8);
  v31 = v67;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v65 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v87 = &v65 - v36;
  v70(v35);
  LOBYTE(v97[0]) = 1;
  v65 = lazy protocol witness table accessor for type LayoutRoleKey and conformance LayoutRoleKey();
  v37 = v71;
  View.layoutValue<A>(key:value:)();
  (*(v26 + 8))(v29, a7);
  v38 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<_LayoutTrait<LayoutRoleKey>> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy15ConversationKit0F7RoleKey33_29D1C8137BB167A1D34FE391A0AB3398LLVGGMd, &_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy15ConversationKit0F7RoleKey33_29D1C8137BB167A1D34FE391A0AB3398LLVGGMR, MEMORY[0x1E697FDC0]);
  v97[7] = v37;
  v97[8] = v38;
  v66 = v30;
  WitnessTable = swift_getWitnessTable();
  v86 = v33;
  static ViewBuilder.buildExpression<A>(_:)();
  v39 = *(v31 + 8);
  v70 = (v31 + 8);
  v71 = v39;
  v40 = v39(v33, v30);
  v74(v40);
  LOBYTE(v97[0]) = 0;
  v41 = v88;
  v42 = v69;
  v43 = v75;
  View.layoutValue<A>(key:value:)();
  (*(v72 + 8))(v20, v42);
  v97[5] = v43;
  v97[6] = v38;
  v44 = v89;
  v73 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v74 = *(v90 + 8);
  v75 = v90 + 8;
  v45 = (v74)(v41, v44);
  v46 = v78;
  v83(v45);
  LOBYTE(v97[0]) = 2;
  v47 = v92;
  v48 = v76;
  v49 = v81;
  View.layoutValue<A>(key:value:)();
  (*(v84 + 8))(v46, v48);
  v97[3] = v49;
  v97[4] = v38;
  v50 = v79;
  v51 = swift_getWitnessTable();
  v52 = v77;
  v53 = v47;
  static ViewBuilder.buildExpression<A>(_:)();
  v54 = v80;
  v84 = *(v80 + 8);
  (v84)(v53, v50);
  v55 = v86;
  v56 = v66;
  (*(v67 + 16))(v86, v87, v66);
  v97[0] = v55;
  v57 = v91;
  v58 = v89;
  (*(v90 + 16))(v41, v91, v89);
  v97[1] = v41;
  (*(v54 + 16))(v53, v52, v50);
  v97[2] = v53;
  v96[0] = v56;
  v96[1] = v58;
  v59 = v58;
  v96[2] = v50;
  v93 = WitnessTable;
  v94 = v73;
  v95 = v51;
  static ViewBuilder.buildBlock<each A>(_:)(v97, 3, v96);
  v60 = v84;
  (v84)(v52, v50);
  v61 = v58;
  v62 = v74;
  (v74)(v57, v61);
  v63 = v71;
  v71(v87, v56);
  v60(v92, v50);
  (v62)(v88, v59);
  return v63(v86, v56);
}

unint64_t lazy protocol witness table accessor for type ScreenSharingContentLayout and conformance ScreenSharingContentLayout()
{
  result = lazy protocol witness table cache variable for type ScreenSharingContentLayout and conformance ScreenSharingContentLayout;
  if (!lazy protocol witness table cache variable for type ScreenSharingContentLayout and conformance ScreenSharingContentLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSharingContentLayout and conformance ScreenSharingContentLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScreenSharingContentLayout and conformance ScreenSharingContentLayout;
  if (!lazy protocol witness table cache variable for type ScreenSharingContentLayout and conformance ScreenSharingContentLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSharingContentLayout and conformance ScreenSharingContentLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LayoutRoleKey and conformance LayoutRoleKey()
{
  result = lazy protocol witness table cache variable for type LayoutRoleKey and conformance LayoutRoleKey;
  if (!lazy protocol witness table cache variable for type LayoutRoleKey and conformance LayoutRoleKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutRoleKey and conformance LayoutRoleKey);
  }

  return result;
}

uint64_t closure #1 in Layout.callAsFunction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12(v9);
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v5 + 8);
  v13(v7, a4);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v11, a4);
}

uint64_t getEnumTagSinglePayload for ScreenSharingContentLayout(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 57))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ScreenSharingContentLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LayoutRole(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LayoutRole and conformance LayoutRole()
{
  result = lazy protocol witness table cache variable for type LayoutRole and conformance LayoutRole;
  if (!lazy protocol witness table cache variable for type LayoutRole and conformance LayoutRole)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutRole and conformance LayoutRole);
  }

  return result;
}

uint64_t AnimatedSaveView.SaveState.image.getter(unsigned __int8 a1)
{
  if (a1 >= 2u)
  {
    return 0x72616D6B63656863;
  }

  else
  {
    return 0xD000000000000015;
  }
}

double AnimatedSaveView.SaveState.scale.getter(char a1)
{
  result = 1.0;
  if (!a1)
  {
    return 0.0;
  }

  return result;
}

double AnimatedSaveView.SaveState.largeScale.getter(char a1)
{
  result = 2.0;
  if (!a1)
  {
    return 0.0;
  }

  return result;
}

uint64_t AnimatedSaveView.SaveState.color.getter(uint64_t a1)
{
  if (a1)
  {

    return static Color.white.getter();
  }

  else
  {
    static Color.gray.getter();
    v3 = Color.opacity(_:)();

    return v3;
  }
}

double AnimatedSaveView.SaveState.yImageOffset.getter(char a1)
{
  result = 0.0;
  if ((a1 & 0xFE) == 0)
  {
    return -2.0;
  }

  return result;
}

Swift::Int AnimatedSaveView.SaveState.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnimatedSaveView.SaveState(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  AnimatedSaveView.SaveState.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t AnimatedSaveView.saveState.getter()
{
  OUTLINED_FUNCTION_0_173();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy15ConversationKit16AnimatedSaveViewV0G5StateOGMd, &_s7SwiftUI7BindingVy15ConversationKit16AnimatedSaveViewV0G5StateOGMR);
  MEMORY[0x1BFB20050](&v2, v0);
  return v2;
}

uint64_t key path getter for AnimatedSaveView.saveState : AnimatedSaveView@<X0>(_BYTE *a1@<X8>)
{
  result = AnimatedSaveView.saveState.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for AnimatedSaveView.saveState : AnimatedSaveView(unsigned __int8 *a1)
{

  AnimatedSaveView.saveState.setter();
}

uint64_t AnimatedSaveView.saveState.setter()
{
  OUTLINED_FUNCTION_0_173();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy15ConversationKit16AnimatedSaveViewV0G5StateOGMd, &_s7SwiftUI7BindingVy15ConversationKit16AnimatedSaveViewV0G5StateOGMR);
  return Binding.wrappedValue.setter();
}

void (*AnimatedSaveView.saveState.modify(void *a1))(uint64_t *a1)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v4 = *v1;
  v5 = v1[1];
  v3[6] = *v1;
  v3[7] = v5;
  v6 = *(v1 + 16);
  *(v3 + 19) = v6;
  *v3 = v4;
  v3[1] = v5;
  *(v3 + 16) = v6;

  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy15ConversationKit16AnimatedSaveViewV0G5StateOGMd, &_s7SwiftUI7BindingVy15ConversationKit16AnimatedSaveViewV0G5StateOGMR);
  MEMORY[0x1BFB20050]();
  return AnimatedSaveView.saveState.modify;
}

void AnimatedSaveView.saveState.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 56);
  *(*a1 + 24) = *(*a1 + 48);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  Binding.wrappedValue.setter();

  free(v1);
}

uint64_t AnimatedSaveView.$saveState.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy15ConversationKit16AnimatedSaveViewV0G5StateOGMd, &_s7SwiftUI7BindingVy15ConversationKit16AnimatedSaveViewV0G5StateOGMR);
  Binding.projectedValue.getter();
  return v1;
}

double AnimatedSaveView.body.getter@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 24);
  v7 = *(v2 + 16);
  v8 = static Alignment.center.getter();
  v10 = v9;
  closure #1 in AnimatedSaveView.body.getter(v4, v5, v7, __src, v6);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v24, __src, 0xE0uLL);
  outlined init with copy of Conversation?(__dst, &v18, &_s7SwiftUI9TupleViewVyAA5GroupVyACyAA15ModifiedContentVyAGyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveD0V0R5StateOGG_AGyAGyAGyAGyAnA08_OpacityL0VGAPGAA012_TransactionN0VGAYGtGG_AGyAGyAGyAGyAA5ImageVAA022_EnvironmentKeyWritingN0VyAMSgGGA4_GA12_yAA4FontVSgGGAA07_OffsetL0VGtGMd, &_s7SwiftUI9TupleViewVyAA5GroupVyACyAA15ModifiedContentVyAGyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveD0V0R5StateOGG_AGyAGyAGyAGyAnA08_OpacityL0VGAPGAA012_TransactionN0VGAYGtGG_AGyAGyAGyAGyAA5ImageVAA022_EnvironmentKeyWritingN0VyAMSgGGA4_GA12_yAA4FontVSgGGAA07_OffsetL0VGtGMR);
  outlined destroy of TapInteractionHandler?(v24, &_s7SwiftUI9TupleViewVyAA5GroupVyACyAA15ModifiedContentVyAGyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveD0V0R5StateOGG_AGyAGyAGyAGyAnA08_OpacityL0VGAPGAA012_TransactionN0VGAYGtGG_AGyAGyAGyAGyAA5ImageVAA022_EnvironmentKeyWritingN0VyAMSgGGA4_GA12_yAA4FontVSgGGAA07_OffsetL0VGtGMd, &_s7SwiftUI9TupleViewVyAA5GroupVyACyAA15ModifiedContentVyAGyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveD0V0R5StateOGG_AGyAGyAGyAGyAnA08_OpacityL0VGAPGAA012_TransactionN0VGAYGtGG_AGyAGyAGyAGyAA5ImageVAA022_EnvironmentKeyWritingN0VyAMSgGGA4_GA12_yAA4FontVSgGGAA07_OffsetL0VGtGMR);
  memcpy(__src, __dst, sizeof(__src));
  *&v18 = v4;
  *(&v18 + 1) = v5;
  LOBYTE(v19) = v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy15ConversationKit16AnimatedSaveViewV0G5StateOGMd, &_s7SwiftUI7BindingVy15ConversationKit16AnimatedSaveViewV0G5StateOGMR);
  MEMORY[0x1BFB20050](&v17);
  if (v17 == 2)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 1.0;
  }

  static Animation.easeIn(duration:)();
  v13 = Animation.delay(_:)();

  *&v18 = v4;
  *(&v18 + 1) = v5;
  LOBYTE(v19) = v7;
  MEMORY[0x1BFB20050](&v17, v11);
  v14 = v17;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v22[7] = v18;
  *&v22[23] = v19;
  *&v22[39] = v20;
  *a2 = v8;
  *(a2 + 8) = v10;
  memcpy((a2 + 16), __src, 0xE0uLL);
  *(a2 + 240) = v12;
  *(a2 + 248) = v13;
  *(a2 + 256) = v14;
  v15 = *&v22[16];
  *(a2 + 257) = *v22;
  *(a2 + 273) = v15;
  result = *&v22[32];
  *(a2 + 289) = *&v22[32];
  *(a2 + 304) = *&v22[47];
  return result;
}

uint64_t closure #1 in AnimatedSaveView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  v6 = a3;
  v22 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  closure #1 in closure #1 in AnimatedSaveView.body.getter(a1, a2, v6, __src, a5);
  v27[0] = a1;
  v27[1] = a2;
  LOBYTE(v27[2]) = v6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy15ConversationKit16AnimatedSaveViewV0G5StateOGMd, &_s7SwiftUI7BindingVy15ConversationKit16AnimatedSaveViewV0G5StateOGMR);
  MEMORY[0x1BFB20050](v24);
  v21 = Image.init(systemName:)();
  v27[0] = a1;
  v27[1] = a2;
  LOBYTE(v27[2]) = v6;
  MEMORY[0x1BFB20050](v24, v12);
  if (LOBYTE(v24[0]))
  {
    v13 = static Color.white.getter();
  }

  else
  {
    static Color.gray.getter();
    v13 = Color.opacity(_:)();
  }

  KeyPath = swift_getKeyPath();
  static Font.Weight.medium.getter();
  v15 = type metadata accessor for Font.Design();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v15);
  v16 = static Font.system(size:weight:design:)();
  outlined destroy of TapInteractionHandler?(v11, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v17 = swift_getKeyPath();
  v27[0] = a1;
  v27[1] = a2;
  LOBYTE(v27[2]) = v6;
  MEMORY[0x1BFB20050](v24, v12);
  if (LOBYTE(v24[0]) >= 2u)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = -2.0;
  }

  memcpy(v24, __src, 0x91uLL);
  memcpy(v23, __src, 0x91uLL);
  v19 = v21;
  v25[0] = v21;
  v25[1] = KeyPath;
  v25[2] = v13;
  v25[3] = closure #1 in ScreeningTranscriptLabel.body.getter;
  v25[4] = 0;
  v25[5] = v17;
  v25[6] = v16;
  v25[7] = 0;
  *&v25[8] = v18;
  memcpy(&v23[152], v25, 0x48uLL);
  memcpy(v22, v23, 0xE0uLL);
  v26[0] = v19;
  v26[1] = KeyPath;
  v26[2] = v13;
  v26[3] = closure #1 in ScreeningTranscriptLabel.body.getter;
  v26[4] = 0;
  v26[5] = v17;
  v26[6] = v16;
  v26[7] = 0;
  *&v26[8] = v18;
  outlined init with copy of Conversation?(v24, v27, &_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAGyAA06_ShapeE0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveE0V0R5StateOGG_AGyAGyAGyAGyAnA08_OpacityL0VGAPGAA012_TransactionN0VGAYGtGGMd, &_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAGyAA06_ShapeE0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveE0V0R5StateOGG_AGyAGyAGyAGyAnA08_OpacityL0VGAPGAA012_TransactionN0VGAYGtGGMR);
  outlined init with copy of Conversation?(v25, v27, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA012_TransactionI0VGAGyAA4FontVSgGGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA012_TransactionI0VGAGyAA4FontVSgGGAA13_OffsetEffectVGMR);
  outlined destroy of TapInteractionHandler?(v26, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA012_TransactionI0VGAGyAA4FontVSgGGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA012_TransactionI0VGAGyAA4FontVSgGGAA13_OffsetEffectVGMR);
  memcpy(v27, __src, 0x91uLL);
  return outlined destroy of TapInteractionHandler?(v27, &_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAGyAA06_ShapeE0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveE0V0R5StateOGG_AGyAGyAGyAGyAnA08_OpacityL0VGAPGAA012_TransactionN0VGAYGtGGMd, &_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAGyAA06_ShapeE0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveE0V0R5StateOGG_AGyAGyAGyAGyAnA08_OpacityL0VGAPGAA012_TransactionN0VGAYGtGGMR);
}

uint64_t closure #1 in closure #1 in AnimatedSaveView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>, double a5@<D0>)
{
  v31 = static Color.green.getter();
  v46 = a1;
  v47 = a2;
  LOBYTE(v48) = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy15ConversationKit16AnimatedSaveViewV0G5StateOGMd, &_s7SwiftUI7BindingVy15ConversationKit16AnimatedSaveViewV0G5StateOGMR);
  MEMORY[0x1BFB20050](__src);
  if (LOBYTE(__src[0]))
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = static UnitPoint.center.getter();
  v13 = v12;
  v15 = v14;
  v16 = MEMORY[0x1BFB203B0](v11, a5, 1.0, 0.0);
  v46 = a1;
  v47 = a2;
  LOBYTE(v48) = a3;
  MEMORY[0x1BFB20050](__src, v9);
  v17 = __src[0];
  v18 = static Color.green.getter();
  v46 = a1;
  v47 = a2;
  LOBYTE(v48) = a3;
  MEMORY[0x1BFB20050](__src, v9);
  v19 = LOBYTE(__src[0]);
  v46 = a1;
  v47 = a2;
  LOBYTE(v48) = a3;
  MEMORY[0x1BFB20050](__src, v9);
  if (LOBYTE(__src[0]))
  {
    v20 = 2.0;
  }

  else
  {
    v20 = 0.0;
  }

  if (v19)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = 1.0;
  }

  static UnitPoint.center.getter();
  v23 = v22;
  v25 = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  *(v26 + 32) = a3;
  *(v26 + 40) = a5;

  v28 = MEMORY[0x1BFB203B0](v27, 0.5, 1.0, 0.0);
  v46 = a1;
  v47 = a2;
  LOBYTE(v48) = a3;
  MEMORY[0x1BFB20050](__src, v9);
  v29 = __src[0];
  *&v42 = v31;
  WORD4(v42) = 256;
  *&v43 = v10;
  *(&v43 + 1) = v10;
  *v44 = v13;
  *&v44[8] = v15;
  *&v44[16] = v16;
  v44[24] = v17;
  v41[0] = v42;
  v41[1] = v43;
  v41[2] = *v44;
  *(&v41[2] + 9) = *&v44[9];
  __src[0] = v18;
  LOWORD(__src[1]) = 256;
  *&__src[2] = v21;
  *&__src[3] = v20;
  *&__src[4] = v20;
  __src[5] = v23;
  __src[6] = v25;
  __src[7] = partial apply for closure #1 in closure #1 in closure #1 in AnimatedSaveView.body.getter;
  __src[8] = v26;
  __src[9] = v28;
  LOBYTE(__src[10]) = v29;
  memcpy(&v41[4], __src, 0x51uLL);
  memcpy(a4, v41, 0x91uLL);
  v46 = v18;
  LOWORD(v47) = 256;
  v48 = v21;
  v49 = v20;
  v50 = v20;
  v51 = v23;
  v52 = v25;
  v53 = partial apply for closure #1 in closure #1 in closure #1 in AnimatedSaveView.body.getter;
  v54 = v26;
  v55 = v28;
  v56 = v29;
  outlined init with copy of Conversation?(&v42, &v33, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveF0V0P5StateOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveF0V0P5StateOGGMR);
  outlined init with copy of Conversation?(__src, &v33, &_s7SwiftUI15ModifiedContentVyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_OpacityEffectVGAA06_ScaleJ0VGAA20_TransactionModifierVGAA010_AnimationM0Vy15ConversationKit012AnimatedSaveF0V0R5StateOGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_OpacityEffectVGAA06_ScaleJ0VGAA20_TransactionModifierVGAA010_AnimationM0Vy15ConversationKit012AnimatedSaveF0V0R5StateOGGMR);
  outlined destroy of TapInteractionHandler?(&v46, &_s7SwiftUI15ModifiedContentVyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_OpacityEffectVGAA06_ScaleJ0VGAA20_TransactionModifierVGAA010_AnimationM0Vy15ConversationKit012AnimatedSaveF0V0R5StateOGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_OpacityEffectVGAA06_ScaleJ0VGAA20_TransactionModifierVGAA010_AnimationM0Vy15ConversationKit012AnimatedSaveF0V0R5StateOGGMR);
  v33 = v31;
  v34 = 256;
  v35 = v10;
  v36 = v10;
  v37 = v13;
  v38 = v15;
  v39 = v16;
  v40 = v17;
  return outlined destroy of TapInteractionHandler?(&v33, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveF0V0P5StateOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveF0V0P5StateOGGMR);
}

uint64_t closure #1 in closure #1 in closure #1 in AnimatedSaveView.body.getter(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = type metadata accessor for AnimationCompletionCriteria();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = a5;
  *(v13 + 40) = a1;

  static AnimationCompletionCriteria.logicallyComplete.getter();
  Transaction.addAnimationCompletion(criteria:_:)();

  return (*(v10 + 8))(v12, v9);
}

void *closure #1 in closure #1 in closure #1 in closure #1 in AnimatedSaveView.body.getter(uint64_t a1, uint64_t a2, char a3)
{
  v8 = a1;
  v9 = a2;
  v10 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy15ConversationKit16AnimatedSaveViewV0G5StateOGMd, &_s7SwiftUI7BindingVy15ConversationKit16AnimatedSaveViewV0G5StateOGMR);
  result = MEMORY[0x1BFB20050](&v7);
  if (v7 == 1)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
    v7 = 2;
    return Binding.wrappedValue.setter();
  }

  return result;
}

uint64_t AnimatedSaveView.init(saveState:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0x3FD6666666666666;
  return result;
}

unint64_t lazy protocol witness table accessor for type AnimatedSaveView.SaveState and conformance AnimatedSaveView.SaveState()
{
  result = lazy protocol witness table cache variable for type AnimatedSaveView.SaveState and conformance AnimatedSaveView.SaveState;
  if (!lazy protocol witness table cache variable for type AnimatedSaveView.SaveState and conformance AnimatedSaveView.SaveState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatedSaveView.SaveState and conformance AnimatedSaveView.SaveState);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnimatedSaveView.SaveState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA5GroupVyAGyACyACyAA06_ShapeG0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveG0V0S5StateOGG_ACyACyACyACyApA08_OpacityM0VGARGAA012_TransactionO0VGA_GtGG_ACyACyACyACyAA5ImageVAA022_EnvironmentKeyWritingO0VyAOSgGGA6_GA14_yAA4FontVSgGGAA07_OffsetM0VGtGGA2_GA_GAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA5GroupVyAGyACyACyAA06_ShapeG0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveG0V0S5StateOGG_ACyACyACyACyApA08_OpacityM0VGARGAA012_TransactionO0VGA_GtGG_ACyACyACyACyAA5ImageVAA022_EnvironmentKeyWritingO0VyAOSgGGA6_GA14_yAA4FontVSgGGAA07_OffsetM0VGtGGA2_GA_GAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect>, _AnimationModifier<AnimatedSaveView.SaveState>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect>, _AnimationModifier<AnimatedSaveView.SaveState>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect>, _AnimationModifier<AnimatedSaveView.SaveState>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect>, _AnimationModifier<AnimatedSaveView.SaveState>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA5GroupVyAGyACyACyAA06_ShapeG0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveG0V0S5StateOGG_ACyACyACyACyApA08_OpacityM0VGARGAA012_TransactionO0VGA_GtGG_ACyACyACyACyAA5ImageVAA022_EnvironmentKeyWritingO0VyAOSgGGA6_GA14_yAA4FontVSgGGAA07_OffsetM0VGtGGA2_GA_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA5GroupVyAGyACyACyAA06_ShapeG0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveG0V0S5StateOGG_ACyACyACyACyApA08_OpacityM0VGARGAA012_TransactionO0VGA_GtGG_ACyACyACyACyAA5ImageVAA022_EnvironmentKeyWritingO0VyAOSgGGA6_GA14_yAA4FontVSgGGAA07_OffsetM0VGtGGA2_GA_GMR);
    lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnimationModifier<AnimatedSaveView.SaveState> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVy15ConversationKit16AnimatedSaveViewV0H5StateOGMd, &_s7SwiftUI18_AnimationModifierVy15ConversationKit16AnimatedSaveViewV0H5StateOGMR, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect>, _AnimationModifier<AnimatedSaveView.SaveState>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA5GroupVyAGyACyACyAA06_ShapeG0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveG0V0S5StateOGG_ACyACyACyACyApA08_OpacityM0VGARGAA012_TransactionO0VGA_GtGG_ACyACyACyACyAA5ImageVAA022_EnvironmentKeyWritingO0VyAOSgGGA6_GA14_yAA4FontVSgGGAA07_OffsetM0VGtGGA2_GMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA5GroupVyAGyACyACyAA06_ShapeG0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveG0V0S5StateOGG_ACyACyACyACyApA08_OpacityM0VGARGAA012_TransactionO0VGA_GtGG_ACyACyACyACyAA5ImageVAA022_EnvironmentKeyWritingO0VyAOSgGGA6_GA14_yAA4FontVSgGGAA07_OffsetM0VGtGGA2_GMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA5GroupVyAEyAA15ModifiedContentVyAIyAA06_ShapeE0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveE0V0S5StateOGG_AIyAIyAIyAIyApA08_OpacityM0VGARGAA012_TransactionO0VGA_GtGG_AIyAIyAIyAIyAA5ImageVAA022_EnvironmentKeyWritingO0VyAOSgGGA6_GA14_yAA4FontVSgGGAA07_OffsetM0VGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA5GroupVyAEyAA15ModifiedContentVyAIyAA06_ShapeE0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveE0V0S5StateOGG_AIyAIyAIyAIyApA08_OpacityM0VGARGAA012_TransactionO0VGA_GtGG_AIyAIyAIyAIyAA5ImageVAA022_EnvironmentKeyWritingO0VyAOSgGGA6_GA14_yAA4FontVSgGGAA07_OffsetM0VGtGGMR, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

id LinkShareActivityViewController.__allocating_init(activityItems:applicationActivities:)(uint64_t a1, uint64_t a2)
{
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (a2)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIActivity, 0x1E69CD9E8);
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = [objc_allocWithZone(v2) initWithActivityItems:v4.super.isa applicationActivities:v5.super.isa];

  return v6;
}

id LinkShareActivityViewController.init(activityItems:applicationActivities:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC15ConversationKit31LinkShareActivityViewController_cnkActivityItems] = a1;

  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (a2)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIActivity, 0x1E69CD9E8);
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v11.receiver = v2;
  v11.super_class = type metadata accessor for LinkShareActivityViewController();
  v6 = objc_msgSendSuper2(&v11, sel_initWithActivityItems_applicationActivities_, v4.super.isa, v5.super.isa);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14UIActivityTypeaGMd, &_ss23_ContiguousArrayStorageCySo14UIActivityTypeaGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BA940;
  v8 = *MEMORY[0x1E69CDB18];
  *(v7 + 32) = *MEMORY[0x1E69CDB18];
  v9 = v8;
  outlined bridged method (mbnn) of @objc UIActivityViewController.excludedActivityTypes.setter(v7, v6);
  return v6;
}

Swift::Void __swiftcall LinkShareActivityViewController._prepare(_:)(UIActivity a1)
{
  v38.receiver = v1;
  v38.super_class = type metadata accessor for LinkShareActivityViewController();
  objc_msgSendSuper2(&v38, sel__prepareActivity_, a1.super.isa);
  v3 = [(objc_class *)a1.super.isa activityType];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return;
    }
  }

  v11 = [(objc_class *)a1.super.isa activityViewController];
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {

LABEL_17:
    if (one-time initialization token for conversationKit != -1)
    {
LABEL_30:
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v19 = static OS_os_log.conversationKit;
    v20 = static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)("Failed to create a mail compose view controller even though the mail activity was selected", 90, 2, &dword_1BBC58000, v19, v20, MEMORY[0x1E69E7CC0]);
    return;
  }

  v14 = v13;
  v15 = 0;
  v16 = *&v1[OBJC_IVAR____TtC15ConversationKit31LinkShareActivityViewController_cnkActivityItems];
  v17 = *(v16 + 16);
  v18 = v16 + 32;
  while (v17 != v15)
  {
    if (v15 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    outlined init with copy of Any(v18, v36);
    outlined init with copy of Any(v36, v35);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TULinkShareItem, 0x1E69D8C20);
    if (swift_dynamicCast())
    {

      outlined init with take of Any(v36, &v37);
      if (swift_dynamicCast())
      {
        v21 = *&v36[0];
        type metadata accessor for LinkShareItemHTMLTextGenerator();
        v22 = static LinkShareItemHTMLTextGenerator.htmlFragment(forLinkShareItem:)(v21);
        if (v23)
        {
          v24 = MEMORY[0x1BFB209B0](v22);

          [v14 setMessageBody:v24 isHTML:1];
        }

        else
        {
          if (one-time initialization token for conversationKit != -1)
          {
            OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
          }

          v27 = static OS_os_log.conversationKit;
          v28 = static os_log_type_t.error.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_1BC4BA940;
          *&v37 = v21;
          v30 = v21;
          v31 = String.init<A>(reflecting:)();
          v33 = v32;
          *(v29 + 56) = MEMORY[0x1E69E6158];
          *(v29 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v29 + 32) = v31;
          *(v29 + 40) = v33;
          os_log(_:dso:log:type:_:)("Failed to generate HTML for link share item %@", 46, 2, &dword_1BBC58000, v27, v28, v29);
        }

        return;
      }

      break;
    }

    ++v15;
    __swift_destroy_boxed_opaque_existential_1(v36);
    v18 += 32;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v25 = static OS_os_log.conversationKit;
  v26 = static os_log_type_t.error.getter();
  os_log(_:dso:log:type:_:)("Failed to fetch the shared link from the share sheet", 52, 2, &dword_1BBC58000, v25, v26, MEMORY[0x1E69E7CC0]);
}

id LinkShareActivityViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkShareActivityViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void outlined bridged method (mbnn) of @objc UIActivityViewController.excludedActivityTypes.setter(uint64_t a1, void *a2)
{
  type metadata accessor for UIActivityType(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setExcludedActivityTypes_];
}

void ScreenSharingInteraction.view.setter(void *a1)
{
  OUTLINED_FUNCTION_3_12(a1);
  swift_unknownObjectWeakAssign();
}

uint64_t key path getter for ScreenSharingInteraction.view : ScreenSharingInteraction@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ScreenSharingInteraction.view : ScreenSharingInteraction(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x90);
  v4 = *a1;
  return v3(v2);
}

void (*ScreenSharingInteraction.view.modify(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_view;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return TapInteraction.view.modify;
}

void ScreenSharingInteraction.captureInteraction.didset(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v41 - v5;
  v7 = MEMORY[0x1E69E7D40];
  if (a1)
  {
    v8 = one-time initialization token for screenSharing;
    v42 = a1;
    if (v8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, &static Log.screenSharing);
    v10 = v2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v44 = v14;
      *v13 = 136315138;
      v15 = (*((*v7 & *v10) + 0x88))();
      if (v15)
      {
        v43 = v15;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
        v16 = String.init<A>(reflecting:)();
        v18 = v17;
      }

      else
      {
        v16 = 7104878;
        v18 = 0xE300000000000000;
      }

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v44);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_1BBC58000, v11, v12, "Removing screen sharing capture interaction from view: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1BFB23DF0](v14, -1, -1);
      MEMORY[0x1BFB23DF0](v13, -1, -1);

      v7 = MEMORY[0x1E69E7D40];
    }

    else
    {
    }

    v20 = (*((*v7 & *v10) + 0x88))();
    v21 = v42;
    if (v20)
    {
      v22 = v20;
      [v20 removeInteraction_];
    }

    v23 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v21;
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
  }

  v25 = *&v2[OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_captureInteraction];
  if (v25)
  {
    v26 = one-time initialization token for screenSharing;
    v27 = v25;
    if (v26 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, &static Log.screenSharing);
    v29 = v2;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44 = v33;
      *v32 = 136315138;
      v34 = (*((*v7 & *v29) + 0x88))();
      if (v34)
      {
        v43 = v34;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
        v35 = String.init<A>(reflecting:)();
        v37 = v36;
      }

      else
      {
        v35 = 7104878;
        v37 = 0xE300000000000000;
      }

      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v44);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_1BBC58000, v30, v31, "Adding screen sharing capture interaction to view: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1BFB23DF0](v33, -1, -1);
      MEMORY[0x1BFB23DF0](v32, -1, -1);
    }

    else
    {
    }

    v39 = (*((*v7 & *v29) + 0x88))();
    if (v39)
    {
      v40 = v39;
      [v39 addInteraction_];
    }

    (*((*v7 & *v29) + 0x100))();
    CaptureUIInteraction.deviceOrientation.setter();
  }
}