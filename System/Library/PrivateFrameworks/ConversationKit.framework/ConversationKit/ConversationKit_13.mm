void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15ConversationKit16CaptionSectionerV0F0VG_AJs5NeverOTg5(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for CaptionSectioner.Caption(0);
  v7 = OUTLINED_FUNCTION_9_0(v6);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = *(a3 + 16);
  if (v13)
  {
    v19 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v14 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    while (1)
    {
      a1(v14);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v16 = *(v19 + 16);
      if (v16 >= *(v19 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      *(v19 + 16) = v16 + 1;
      OUTLINED_FUNCTION_1_45();
      _s15ConversationKit11ParticipantVWObTm_0(v12, v17);
      v14 += v15;
      if (!--v13)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_58_1();
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_12CoreGraphics7CGFloatVs5NeverOTg5(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v6 = v17;
    while (v9 < v5)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_15;
      }

      v15 = a3 + v9;
      a1(&v16, &v15);
      if (v4)
      {
        goto LABEL_20;
      }

      v11 = v16;
      v17 = v6;
      v12 = *(v6 + 16);
      if (v12 >= *(v6 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v6 = v17;
      }

      *(v6 + 16) = v12 + 1;
      *(v6 + 8 * v12 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_16;
      }

      ++v9;
      if ((a3 + v9 - 1) >= a4)
      {
        goto LABEL_17;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI14LayoutSubviewsV_12CoreGraphics7CGFloatVs5NeverOTg5(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  v3 = v2;
  v4 = v1;
  v5 = type metadata accessor for LayoutSubview();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v12 = type metadata accessor for LayoutSubviews();
  v13 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  OUTLINED_FUNCTION_32_2();
  v14 = dispatch thunk of Collection.count.getter();
  if (v14)
  {
    v35 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v32 = v35;
    OUTLINED_FUNCTION_32_2();
    dispatch thunk of Collection.startIndex.getter();
    if ((v14 & 0x8000000000000000) == 0)
    {
      v15 = v7;
      v16 = 0;
      v28 = (v15 + 16);
      v29 = (v15 + 8);
      v26 = v14;
      v27 = v11;
      while (!__OFADD__(v16, 1))
      {
        v31 = v16 + 1;
        v17 = v12;
        v18 = v4;
        v19 = v13;
        v20 = v17;
        v21 = v19;
        v22 = dispatch thunk of Collection.subscript.read();
        (*v28)(v11);
        v22(&v33, 0);
        a1(&v34, v11);
        if (v3)
        {
          goto LABEL_12;
        }

        v3 = 0;
        (*v29)(v11, v5);
        v23 = v34;
        v24 = v32;
        v35 = v32;
        v25 = *(v32 + 16);
        if (v25 >= *(v32 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v24 = v35;
        }

        *(v24 + 16) = v25 + 1;
        v32 = v24;
        *(v24 + 8 * v25 + 32) = v23;
        v4 = v18;
        v12 = v20;
        v13 = v21;
        dispatch thunk of Collection.formIndex(after:)();
        ++v16;
        v11 = v27;
        if (v31 == v26)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v29)(v11, v5);

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_58_1();
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo18NSNotificationNameaG_So8NSObject_ps5NeverOTg5(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v13 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    for (i = (a3 + 32); ; ++i)
    {
      v11 = *i;
      v10 = v11;
      a1(&v12, &v11);
      if (v4)
      {
        break;
      }

      v4 = 0;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15ConversationKit22TranscriptionViewModelC7CaptionVG_SSs5NeverOTg5(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v6 = v20;
  v8 = type metadata accessor for TranscriptionViewModel.Caption(0);
  OUTLINED_FUNCTION_9_0(v8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v17 = *(v11 + 72);
  while (1)
  {
    a1(v19, v10);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v12 = v19[0];
    v13 = v19[1];
    v20 = v6;
    v14 = *(v6 + 16);
    if (v14 >= *(v6 + 24) >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = v20;
    }

    *(v6 + 16) = v14 + 1;
    v15 = v6 + 16 * v14;
    *(v15 + 32) = v12;
    *(v15 + 40) = v13;
    v10 += v17;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

Swift::Int CaptionSectioner.Caption.Visibility.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CaptionSectioner.Caption.Visibility(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  CaptionSectioner.Caption.Visibility.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t CaptionSectioner.Caption.participant.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for CaptionSectioner.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t CaptionSectioner.Caption.dateCreated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CaptionSectioner.Caption(0) + 24);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t CaptionSectioner.Caption.dateCreated.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for CaptionSectioner.Caption(v2) + 24);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t CaptionSectioner.Caption.dateCreated.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for CaptionSectioner.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t CaptionSectioner.Caption.dateUpdated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CaptionSectioner.Caption(0) + 28);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t CaptionSectioner.Caption.dateUpdated.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for CaptionSectioner.Caption(v2) + 28);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t CaptionSectioner.Caption.dateUpdated.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for CaptionSectioner.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t CaptionSectioner.Caption.image.getter()
{
  type metadata accessor for CaptionSectioner.Caption(0);
}

uint64_t CaptionSectioner.Caption.image.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for CaptionSectioner.Caption(v2) + 32);

  *(v1 + v3) = v0;
  return result;
}

uint64_t CaptionSectioner.Caption.image.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for CaptionSectioner.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t CaptionSectioner.Caption.text.getter()
{
  type metadata accessor for CaptionSectioner.Caption(0);

  return OUTLINED_FUNCTION_46();
}

void CaptionSectioner.Caption.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CaptionSectioner.Caption(0) + 36));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t CaptionSectioner.Caption.text.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for CaptionSectioner.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t CaptionSectioner.Caption.isBadTranscription.setter(char a1)
{
  result = type metadata accessor for CaptionSectioner.Caption(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t CaptionSectioner.Caption.isBadTranscription.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for CaptionSectioner.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

double CaptionSectioner.Caption.lowConfidenceRanges.getter()
{
  type metadata accessor for CaptionSectioner.Caption(0);

  return result;
}

void CaptionSectioner.Caption.lowConfidenceRanges.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for CaptionSectioner.Caption(v2) + 44);

  *(v1 + v3) = v0;
}

uint64_t CaptionSectioner.Caption.lowConfidenceRanges.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for CaptionSectioner.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t CaptionSectioner.Caption.visibility.setter(char a1)
{
  result = OUTLINED_FUNCTION_51_0();
  *(v1 + v4) = a1;
  return result;
}

uint64_t CaptionSectioner.Caption.visibility.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for CaptionSectioner.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t CaptionSectioner.Caption.isDisplayEquivalent(to:)(void *a1)
{
  if (*v2 != *a1)
  {
    goto LABEL_22;
  }

  v4 = OUTLINED_FUNCTION_17_1();
  v5 = type metadata accessor for CaptionSectioner.Caption(v4);
  v6 = v5[5];
  v7 = v2 + v6;
  v8 = v1 + v6;
  OUTLINED_FUNCTION_33_0();
  static Participant.State.== infix(_:_:)();
  if ((v9 & 1) == 0)
  {
    goto LABEL_22;
  }

  v10 = type metadata accessor for Participant(0);
  if ((OUTLINED_FUNCTION_63_3(v10) & 1) == 0)
  {
    goto LABEL_22;
  }

  v11 = *(v3 + 28);
  v12 = *&v7[v11];
  if (!*(v8 + v11))
  {
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_22:
    LOBYTE(v12) = 0;
    return v12 & 1;
  }

  if (!v12)
  {
    return v12 & 1;
  }

LABEL_8:
  OUTLINED_FUNCTION_21_12();
  v14 = *(v13 + 4);
  if (v15)
  {
    v16 = 0x100000000;
  }

  else
  {
    v16 = 0;
  }

  if (v14)
  {
    v17 = 0x100000000;
  }

  else
  {
    v17 = 0;
  }

  if (!OUTLINED_FUNCTION_54_1(v16, v17))
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_36_8();
  v20 = v20 && v18 == v19;
  if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(v2 + v5[12]) == 2) == (*(v1 + v5[12]) != 2))
  {
    goto LABEL_22;
  }

  LOBYTE(v12) = *(v2 + v5[10]) ^ *(v1 + v5[10]) ^ 1;
  return v12 & 1;
}

BOOL static CaptionSectioner.Caption.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_24_1();
  v6 = type metadata accessor for CaptionSectioner.Caption(v5);
  v7 = v6[5];
  v8 = v2 + v7;
  v9 = a2 + v7;
  OUTLINED_FUNCTION_33_0();
  static Participant.State.== infix(_:_:)();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = type metadata accessor for Participant(0);
  if ((OUTLINED_FUNCTION_63_3(v11) & 1) == 0)
  {
    return 0;
  }

  v12 = *(v3 + 28);
  v13 = *(v8 + v12);
  if (*&v9[v12])
  {
    if (!v13)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  OUTLINED_FUNCTION_21_12();
  v16 = *(v15 + 4);
  if (v17)
  {
    v18 = 0x100000000;
  }

  else
  {
    v18 = 0;
  }

  if (v16)
  {
    v19 = 0x100000000;
  }

  else
  {
    v19 = 0;
  }

  if (!OUTLINED_FUNCTION_54_1(v18, v19) || (static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v20 = v6[8];
  v21 = *(a2 + v20);
  if (*(v2 + v20))
  {
    if (!v21)
    {
      return 0;
    }

    OUTLINED_FUNCTION_33_0();
    v22 = static Image.== infix(_:_:)();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  OUTLINED_FUNCTION_36_8();
  v25 = v25 && v23 == v24;
  if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v2 + v6[10]) == *(a2 + v6[10]) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSo8_NSRangeV_Tt1g5(*(v2 + v6[11]), *(a2 + v6[11])))
  {
    return *(v2 + v6[12]) == *(a2 + v6[12]);
  }

  return 0;
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit11ParticipantV_Tt1g5()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_13_24();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_44_5();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = *(v4 + 16);
  if (v9 == *(v2 + 16) && v9 && v4 != v2)
  {
    OUTLINED_FUNCTION_14_13();
    v11 = v4 + v10;
    v12 = v2 + v10;
    v27 = *(v13 + 72);
    v28 = v14;
    while (1)
    {
      outlined init with copy of Participant(v11, v8);
      outlined init with copy of Participant(v12, v0);
      static Participant.State.== infix(_:_:)();
      v15 = v28;
      if ((v16 & 1) == 0 || (static UUID.== infix(_:_:)() & 1) == 0 || (*(v0 + *(v15 + 28)) == 0) != (*&v8[*(v15 + 28)] == 0))
      {
        break;
      }

      v17 = &v8[*(v15 + 24)];
      v18 = *v17;
      v29 = v17[1];
      v30 = v18;
      v19 = v17[2];
      v31 = v17[3];
      v32 = v19;
      v33 = v17[4];
      v34 = v9;
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      v20 = (v0 + *(v15 + 24));
      v21 = *v20;
      v22 = v20[1];
      v23 = v20[2];
      v24 = v20[3];
      v25 = v20[4];
      v26 = v34;
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      if (((v30 ^ v21 | v29 ^ v22 | v32 ^ v23 | v31 ^ v24 | v33 ^ v25) & 1) == 0)
      {
        v12 += v27;
        v11 += v27;
        v9 = v26 - 1;
        if (v9)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    OUTLINED_FUNCTION_56_2();
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
  }

LABEL_13:
  OUTLINED_FUNCTION_30_0();
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit27ClarityUIOutgoingCallActionV_Tt1g5()
{
  OUTLINED_FUNCTION_40_9();
  if (v9 && v0 && v1 != v2)
  {
    v3 = (v2 + 56);
    v4 = (v1 + 56);
    do
    {
      v5 = *(v4 - 8);
      v6 = *v4;
      v7 = *(v3 - 8);
      v8 = *v3;
      v9 = *(v4 - 3) == *(v3 - 3) && *(v4 - 2) == *(v3 - 2);
      if (v9)
      {
        if (v5 != v7)
        {
          return;
        }
      }

      else if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v5 ^ v7))
      {
        return;
      }

      if (v8)
      {
        if (!v6)
        {
          return;
        }
      }

      else if (v6)
      {
        return;
      }

      v3 += 5;
      v4 += 5;
      --v0;
    }

    while (v0);
  }
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit25GameControllerPressActionV_Tt1g5()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for GameControllerPressAction(0);
  v6 = OUTLINED_FUNCTION_38_6(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_11();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_45_6();
  v11 = *(v4 + 16);
  if (v11 == *(v2 + 16) && v11 && v4 != v2)
  {
    OUTLINED_FUNCTION_14_13();
    v13 = v4 + v12;
    v14 = v2 + v12;
    v16 = *(v15 + 72);
    do
    {
      outlined init with copy of Participant(v13, v0);
      outlined init with copy of Participant(v14, v9);
      type metadata accessor for GCButtonElementName();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName, MEMORY[0x1E696B170], MEMORY[0x1E696B180]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v21 == v19 && v22 == v20)
      {
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();

        if ((v18 & 1) == 0)
        {
          break;
        }
      }

      v14 += v16;
      v13 += v16;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_30_0();
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit22TranscriptionViewModelC7CaptionV_Tt1g5()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for TranscriptionViewModel.Caption(0);
  OUTLINED_FUNCTION_13_24();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_44_5();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_45_6();
  v9 = *(v5 + 16);
  if (v9 == *(v3 + 16) && v9 && v5 != v3)
  {
    v10 = 0;
    OUTLINED_FUNCTION_14_13();
    v12 = v5 + v11;
    v13 = v3 + v11;
    v15 = *(v14 + 72);
    while (1)
    {
      outlined init with copy of Participant(v12 + v15 * v10, v1);
      if (v10 == v9)
      {
        break;
      }

      outlined init with copy of Participant(v13 + v15 * v10, v0);
      if (*v1 != *v0 || (static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0 || ((v16 = v6[7], v17 = *(v1 + v16), v18 = *(v1 + v16 + 8), v19 = (v0 + v16), v17 == *v19) ? (v20 = v18 == v19[1]) : (v20 = 0), !v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v1 + v6[8]) != *(v0 + v6[8]) || (v21 = v6[9], v22 = *(v1 + v21), v23 = *(v0 + v21), v24 = *(v22 + 16), v24 != *(v23 + 16))))
      {
LABEL_27:
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        goto LABEL_28;
      }

      if (v24)
      {
        v25 = v22 == v23;
      }

      else
      {
        v25 = 1;
      }

      if (!v25)
      {
        while (v24)
        {
          OUTLINED_FUNCTION_31_8();
          if ((v27 & 1) == 0)
          {
            goto LABEL_27;
          }

          v24 = v26 - 1;
          if (!v24)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        break;
      }

LABEL_23:
      v28 = *(v1 + v6[10]) ^ *(v0 + v6[10]);
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      OUTLINED_FUNCTION_62_0();
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      if ((v28 & 1) == 0 && ++v10 != v9)
      {
        continue;
      }

      goto LABEL_28;
    }

    __break(1u);
  }

  else
  {
LABEL_28:
    OUTLINED_FUNCTION_30_0();
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSo8_NSRangeV_Tt1g5(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 == a2[1].i64[0])
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = a1 + 2;
      v4 = a2 + 2;
      do
      {
        v5 = *v3++;
        v6 = v5;
        v7 = *v4++;
        *v6.i8 = vmovn_s64(vceqq_s64(v6, v7));
        v8 = v6.i8[0] & v6.i8[4];
        if ((v6.i8[0] & v6.i8[4] & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit16CaptionSectionerV0D0V_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CaptionSectioner.Caption(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v41 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = a1 + v13;
  v42 = a2 + v13;
  v15 = *(v8 + 72);
  while (1)
  {
    result = outlined init with copy of Participant(v14 + v15 * v12, v10);
    if (v12 == v11)
    {
      break;
    }

    outlined init with copy of Participant(v42 + v15 * v12, v6);
    if (*v10 != *v6)
    {
      goto LABEL_38;
    }

    v17 = v4[5];
    v18 = v10 + v17;
    v19 = v6 + v17;
    static Participant.State.== infix(_:_:)();
    if ((v20 & 1) == 0)
    {
      goto LABEL_38;
    }

    v21 = type metadata accessor for Participant(0);
    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_38;
    }

    if ((*&v19[*(v21 + 28)] == 0) != (*&v18[*(v21 + 28)] == 0))
    {
      goto LABEL_38;
    }

    v22 = *(v21 + 24);
    v23 = &v18[v22];
    v24 = v18[v22];
    v25 = &v19[v22];
    if (v24 != *v25 || ((v23[1] ^ v25[1]) & 1) != 0 || ((v23[2] ^ v25[2]) & 1) != 0 || ((v23[3] ^ v25[3]) & 1) != 0 || ((v23[4] ^ v25[4]) & 1) != 0 || (static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_38;
    }

    v26 = v4[8];
    v27 = *(v6 + v26);
    if (*(v10 + v26))
    {
      if (!v27)
      {
        goto LABEL_38;
      }

      v28 = static Image.== infix(_:_:)();

      if ((v28 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if (v27)
    {
      goto LABEL_38;
    }

    v29 = v4[9];
    v30 = *(v10 + v29);
    v31 = *(v10 + v29 + 8);
    v32 = (v6 + v29);
    v33 = v30 == *v32 && v31 == v32[1];
    if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_38;
    }

    if (*(v10 + v4[10]) != *(v6 + v4[10]))
    {
      goto LABEL_38;
    }

    v34 = v4[11];
    v35 = *(v10 + v34);
    v36 = *(v6 + v34);
    v37 = v35[1].i64[0];
    if (v37 != v36[1].i64[0])
    {
      goto LABEL_38;
    }

    if (v37 && v35 != v36)
    {
      v38 = v35 + 2;
      v39 = v36 + 2;
      while (1)
      {
        v40 = vmovn_s64(vceqq_s64(*v38, *v39));
        if ((v40.i32[0] & v40.i32[1] & 1) == 0)
        {
          break;
        }

        ++v38;
        ++v39;
        if (!--v37)
        {
          goto LABEL_34;
        }
      }

LABEL_38:
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      return 0;
    }

LABEL_34:
    if (*(v10 + v4[12]) != *(v6 + v4[12]))
    {
      goto LABEL_38;
    }

    ++v12;
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    result = 1;
    if (v12 == v11)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit0B14ControlsActionO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationControlsAction(0);
  v5 = OUTLINED_FUNCTION_38_6(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_11();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_14_13();
      v14 = a1 + v13;
      v15 = a2 + v13;
      v17 = *(v16 + 72);
      do
      {
        outlined init with copy of Participant(v14, v11);
        outlined init with copy of Participant(v15, v8);
        static ConversationControlsAction.== infix(_:_:)();
        v19 = v18;
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        if ((v19 & 1) == 0)
        {
          break;
        }

        v15 += v17;
        v14 += v17;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit19ParticipantReactionV_Tt1g5()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v5 = v4;
  type metadata accessor for ParticipantReaction(0);
  OUTLINED_FUNCTION_13_24();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_44_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_45_6();
  v8 = *(v5 + 16);
  if (v8 == *(v3 + 16) && v8 && v5 != v3)
  {
    OUTLINED_FUNCTION_14_13();
    v10 = v5 + v9;
    v11 = v3 + v9;
    v13 = *(v12 + 72);
    while (1)
    {
      outlined init with copy of Participant(v10, v1);
      outlined init with copy of Participant(v11, v0);
      type metadata accessor for Participant(0);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
      if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
      {

        OUTLINED_FUNCTION_23_15();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        OUTLINED_FUNCTION_23_15();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        if ((v19 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v11 += v13;
      v10 += v13;
      if (!--v8)
      {
        goto LABEL_16;
      }
    }

    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
  }

LABEL_16:
  OUTLINED_FUNCTION_30_0();
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ7Combine14AnyCancellableC_Tt1g5(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v5 = a2 >> 62 ? __CocoaSet.count.getter() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (i != v5 || !i)
    {
      break;
    }

    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_60_0();
    if (!v9)
    {
      v8 = a2;
    }

    if (a2 >> 62)
    {
      v7 = v8;
    }

    if (v6 == v7)
    {
      break;
    }

    if (i < 0)
    {
      __break(1u);
      return;
    }

    type metadata accessor for AnyCancellable();
    v10 = 4;
    while (1)
    {
      v11 = v10 - 4;
      v12 = v10 - 3;
      if (__OFADD__(v10 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = OUTLINED_FUNCTION_57_1();
        MEMORY[0x1BFB22010](v13);
      }

      else
      {
        if (v11 >= *(v17 + 16))
        {
          goto LABEL_29;
        }
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v14 = OUTLINED_FUNCTION_56_2();
        MEMORY[0x1BFB22010](v14);
      }

      else
      {
        if (v11 >= *(v16 + 16))
        {
          goto LABEL_30;
        }
      }

      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v15)
      {
        ++v10;
        if (v12 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit16CaptionSectionerV14SpeakerSectionV_Tt1g5()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for CaptionSectioner.Caption(0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v71 - v10);
  type metadata accessor for CaptionSectioner.SpeakerSection(0);
  OUTLINED_FUNCTION_13_24();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15_11();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v71 - v18;
  v20 = *(v2 + 16);
  v84 = *(v4 + 16);
  if (v84 == v20 && v84 && v4 != v2)
  {
    v83 = v17;
    OUTLINED_FUNCTION_14_13();
    v22 = v4 + v21;
    v23 = 0;
    v80 = v2 + v21;
    v81 = v7;
    v25 = *(v24 + 72);
    v77 = v25;
    v78 = v22;
    while (1)
    {
      OUTLINED_FUNCTION_22_12();
      outlined init with copy of Participant(v22 + v25 * v23, v19);
      if (v23 == v84)
      {
        __break(1u);
        goto LABEL_60;
      }

      v82 = v23;
      OUTLINED_FUNCTION_22_12();
      outlined init with copy of Participant(v80 + v25 * v23, v15);
      if (static UUID.== infix(_:_:)() & 1) == 0 || (static Participant.State.== infix(_:_:)(), (v26 & 1) == 0) || (v27 = type metadata accessor for Participant(0), (static UUID.== infix(_:_:)() & 1) == 0) || (OUTLINED_FUNCTION_52_0(), ((v29 ^ (v28 == 0))) || (OUTLINED_FUNCTION_37_10(), !v60) || (OUTLINED_FUNCTION_47_3(), (v30) || (OUTLINED_FUNCTION_42_8(), (v31) || (OUTLINED_FUNCTION_46_5(), (v32) || (OUTLINED_FUNCTION_41_6(), (v33) || (v34 = *(v83 + 24), v35 = *&v19[v34], v36 = *(v15 + v34), v37 = *(v35 + 16), v37 != *(v36 + 16)))
      {
LABEL_57:
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        goto LABEL_58;
      }

      if (v37 && v35 != v36)
      {
        break;
      }

LABEL_53:
      v23 = v82 + 1;
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      v25 = v77;
      v22 = v78;
      if (v23 == v84)
      {
        goto LABEL_58;
      }
    }

    v38 = 0;
    v39 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v75 = v36 + v39;
    v76 = v35 + v39;
    v73 = v36;
    v74 = v5;
    v72 = v37;
    while (v38 < *(v35 + 16))
    {
      v40 = v27;
      v41 = v19;
      v42 = v15;
      v43 = v38;
      v44 = *(v81 + 72) * v38;
      OUTLINED_FUNCTION_0_39();
      outlined init with copy of Participant(v76 + v44, v11);
      v45 = *(v36 + 16);
      v79 = v43;
      if (v43 >= v45)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_0_39();
      outlined init with copy of Participant(v75 + v44, v0);
      v15 = v42;
      v19 = v41;
      if (*v11 != *v0)
      {
        goto LABEL_56;
      }

      v27 = v40;
      static Participant.State.== infix(_:_:)();
      if ((v46 & 1) == 0)
      {
        goto LABEL_56;
      }

      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_52_0();
      if ((v48 ^ (v47 == 0)))
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_37_10();
      if (!v60)
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_47_3();
      if (v49)
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_42_8();
      if (v50)
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_46_5();
      if (v51)
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_41_6();
      if ((v52 & 1) != 0 || (static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_56;
      }

      v53 = v5[8];
      v54 = *(v0 + v53);
      if (*(v11 + v53))
      {
        if (!v54)
        {
          goto LABEL_56;
        }

        v55 = static Image.== infix(_:_:)();

        if ((v55 & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      else if (v54)
      {
        goto LABEL_56;
      }

      v56 = v5[9];
      v57 = *(v11 + v56);
      v58 = *(v11 + v56 + 8);
      v59 = (v0 + v56);
      v60 = v57 == *v59 && v58 == v59[1];
      if (!v60 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_56;
      }

      if (*(v11 + v5[10]) != *(v0 + v5[10]))
      {
        goto LABEL_56;
      }

      v61 = v5[11];
      v62 = *(v11 + v61);
      v63 = *(v0 + v61);
      v64 = *(v62 + 16);
      if (v64 != *(v63 + 16))
      {
        goto LABEL_56;
      }

      if (v64 && v62 != v63)
      {
        while (1)
        {
          OUTLINED_FUNCTION_31_8();
          if ((v66 & 1) == 0)
          {
            break;
          }

          if (v65 == 1)
          {
            goto LABEL_50;
          }
        }

LABEL_56:
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        goto LABEL_57;
      }

LABEL_50:
      v67 = v5[12];
      v68 = *(v11 + v67);
      v69 = v35;
      v70 = *(v0 + v67);
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      v60 = v68 == v70;
      v36 = v73;
      v5 = v74;
      if (!v60)
      {
        goto LABEL_57;
      }

      v35 = v69;
      v38 = v79 + 1;
      if (v79 + 1 == v72)
      {
        goto LABEL_53;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  else
  {
LABEL_58:
    OUTLINED_FUNCTION_30_0();
  }
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5()
{
  OUTLINED_FUNCTION_40_9();
  if (v5 && v0 && v1 != v2)
  {
    v3 = (v1 + 40);
    v4 = (v2 + 40);
    do
    {
      v5 = *(v3 - 1) == *(v4 - 1) && *v3 == *v4;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      v4 += 2;
      --v0;
    }

    while (v0);
  }
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit17ClarityUIFavoriteV_Tt1g5()
{
  OUTLINED_FUNCTION_40_9();
  if (v5 && v0 && v1 != v2)
  {
    v3 = (v1 + 40);
    v4 = (v2 + 40);
    do
    {
      v5 = *(v3 - 1) == *(v4 - 1) && *v3 == *v4;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 7;
      v4 += 7;
      --v0;
    }

    while (v0);
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSf_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit0B4LinkV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v5 = a2 + 48;
    v6 = a1 + 48;
    do
    {
      v7 = *(v5 - 16);
      v8 = *(v6 - 16);

      v9 = v7;

      LOBYTE(v7) = static NSObject.== infix(_:_:)();

      if ((v7 & 1) == 0)
      {
        break;
      }

      v5 += 24;
      v6 += 24;
      --v2;
    }

    while (v2);
  }
}

uint64_t CaptionSectioner.Caption.init(id:participant:dateCreated:dateUpdated:image:text:isBadTranscription:lowConfidenceRanges:visibility:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, char a11)
{
  *a9 = a1;
  v16 = type metadata accessor for CaptionSectioner.Caption(0);
  OUTLINED_FUNCTION_3_38();
  _s15ConversationKit11ParticipantVWObTm_0(a2, &a9[v17]);
  v18 = v16[6];
  v19 = type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  v21 = *(v20 + 32);
  v21(&a9[v18], a3, v19);
  result = (v21)(&a9[v16[7]], a4, v19);
  *&a9[v16[8]] = a5;
  v23 = &a9[v16[9]];
  *v23 = a6;
  *(v23 + 1) = a7;
  a9[v16[10]] = a8;
  *&a9[v16[11]] = a10;
  a9[v16[12]] = a11;
  return result;
}

uint64_t CaptionSectioner.Caption.participant.getter@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1(0);
  OUTLINED_FUNCTION_2_44();
  return outlined init with copy of Participant(v2 + v4, a2);
}

uint64_t CaptionSectioner.Caption.participant.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v4 = v3(v2);
  return outlined assign with take of Participant(v0, v1 + *(v4 + 20));
}

uint64_t CaptionSectioner.SpeakerSection.participant.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for CaptionSectioner.SpeakerSection(v0);
  return OUTLINED_FUNCTION_26_0();
}

double CaptionSectioner.SpeakerSection.captions.getter()
{
  type metadata accessor for CaptionSectioner.SpeakerSection(0);

  return result;
}

void CaptionSectioner.SpeakerSection.captions.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for CaptionSectioner.SpeakerSection(v2) + 24);

  *(v1 + v3) = v0;
}

uint64_t CaptionSectioner.SpeakerSection.captions.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for CaptionSectioner.SpeakerSection(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t static CaptionSectioner.SpeakerSection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CaptionSectioner.SpeakerSection(0);
  if (!static Participant.== infix(_:_:)())
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit16CaptionSectionerV0D0V_Tt1g5(v6, v7);
}

uint64_t CaptionSectioner.SpeakerSection.init(id:participant:captions:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_11_19();
  _s15ConversationKit11ParticipantVWObTm_0(v6, v7);
  v8 = type metadata accessor for CaptionSectioner.SpeakerSection(0);
  OUTLINED_FUNCTION_3_38();
  result = _s15ConversationKit11ParticipantVWObTm_0(a1, a3 + v9);
  *(a3 + *(v8 + 24)) = a2;
  return result;
}

Swift::Int CaptionSectioner.CaptionID.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CaptionSectioner.CaptionID(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  CaptionSectioner.CaptionID.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t CaptionSectioner.SectionID.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

uint64_t CaptionSectioner.SectionID.hash(into:)()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_10_15();
  lazy protocol witness table accessor for type UUID and conformance UUID(v0, v1, MEMORY[0x1E69695B8]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int CaptionSectioner.SectionID.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_10_15();
  lazy protocol witness table accessor for type UUID and conformance UUID(v0, v1, MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CaptionSectioner.SectionID(uint64_t a1)
{
  Hasher.init(_seed:)();
  CaptionSectioner.SectionID.hash(into:)();
  return Hasher._finalize()();
}

void CaptionSectioner.init(participants:badCaptionCountThreshold:suppressionAge:maximumAge:currentDate:)()
{
  OUTLINED_FUNCTION_48_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v34 = v11;
  v35 = v9;
  v12 = v11;
  v14 = v13;
  v15 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v32 - v23;
  v36[5] = MEMORY[0x1E69E7CC0];
  v36[6] = v8;
  v36[7] = v6;
  v36[8] = v12;
  v36[9] = v10;
  v36[10] = v4;
  v36[11] = v2;
  CaptionSectioner.gatherAndSortCaptions()();
  v32 = v25;
  v33 = v2;
  v4();
  Date.addingTimeInterval(_:)();
  v26 = *(v17 + 8);
  v27 = v26(v21, v15);
  (v4)(v27);
  Date.addingTimeInterval(_:)();
  v26(v0, v15);
  v36[2] = v21;
  v36[3] = v24;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15ConversationKit16CaptionSectionerV0F0VG_AJs5NeverOTg5(partial apply for closure #1 in CaptionSectioner.updateCaptions(), v36, v32);

  CaptionSectioner.chunkSections(sortedCaptions:)();
  v29 = v28;

  v26(v21, v15);
  v26(v24, v15);
  *v14 = v29;
  v14[1] = v8;
  v14[2] = v6;
  v30 = v35;
  v14[3] = v34;
  v14[4] = v30;
  v31 = v33;
  v14[5] = v4;
  v14[6] = v31;
  OUTLINED_FUNCTION_20_6();
}

Swift::Void __swiftcall CaptionSectioner.updateCaptions()()
{
  OUTLINED_FUNCTION_48_2();
  v2 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_39_3();
  v22 = v0;
  v10 = v0[2];
  v26 = v0[1];
  v27 = v10;
  v25 = *v0;
  v28 = *(v0 + 6);
  v11 = *(&v10 + 1);
  CaptionSectioner.gatherAndSortCaptions()();
  v13 = v12;
  v11();
  Date.addingTimeInterval(_:)();
  v14 = *(v4 + 8);
  v15 = OUTLINED_FUNCTION_33_0();
  v16 = v14(v15);
  (v11)(v16);
  Date.addingTimeInterval(_:)();
  v17 = OUTLINED_FUNCTION_62_0();
  v14(v17);
  v23[2] = v8;
  v24 = v1;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15ConversationKit16CaptionSectionerV0F0VG_AJs5NeverOTg5(closure #1 in CaptionSectioner.updateCaptions()partial apply, v23, v13);

  v29 = v25;
  CaptionSectioner.chunkSections(sortedCaptions:)();
  v19 = v18;

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v29, &_sSay15ConversationKit16CaptionSectionerV14SpeakerSectionVGMd, &_sSay15ConversationKit16CaptionSectionerV14SpeakerSectionVGMR);
  *v22 = v19;
  v20 = OUTLINED_FUNCTION_33_0();
  v14(v20);
  (v14)(v1, v2);
  OUTLINED_FUNCTION_20_6();
}

void CaptionSectioner.update(for:)(uint64_t a1)
{
  v2 = v1;
  v6 = *(v1 + 24);
  v4 = (v1 + 24);
  v5 = v6;
  v7 = specialized Collection<>.firstIndex(of:)(a1, v6);
  if ((v8 & 1) == 0)
  {
    v12 = v7;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      specialized _ArrayBuffer._consumeAndCreateNew()();
      v5 = v16;
      if ((v12 & 0x8000000000000000) == 0)
      {
LABEL_5:
        if (v12 < *(v5 + 16))
        {
          v13 = type metadata accessor for Participant(0);
          OUTLINED_FUNCTION_9_0(v13);
          outlined assign with copy of Participant(a1, v5 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v15 + 72) * v12);
          goto LABEL_7;
        }

LABEL_12:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v9 = *(*v4 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v9);
  v5 = *v4;
  *(*v4 + 16) = v9 + 1;
  v10 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_9_0(v10);
  OUTLINED_FUNCTION_2_44();
  outlined init with copy of Participant(a1, v11);
LABEL_7:
  *(v2 + 24) = v5;

  CaptionSectioner.updateCaptions()();
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_24_1();
  v5 = type metadata accessor for Participant(v4);
  OUTLINED_FUNCTION_13_24();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = 0;
  OUTLINED_FUNCTION_14_13();
  v12 = a2 + v11;
  v14 = *(v13 + 72);
  while (1)
  {
    OUTLINED_FUNCTION_2_44();
    v15 = OUTLINED_FUNCTION_33_0();
    outlined init with copy of Participant(v15, v16);
    static Participant.State.== infix(_:_:)();
    if ((v17 & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && (*(v2 + *(v5 + 28)) == 0) == (*&v8[*(v5 + 28)] == 0) && v8[*(v5 + 24)] == *(v2 + *(v5 + 24)))
    {
      OUTLINED_FUNCTION_47_3();
      if ((v18 & 1) == 0)
      {
        OUTLINED_FUNCTION_42_8();
        if ((v19 & 1) == 0)
        {
          OUTLINED_FUNCTION_46_5();
          if ((v20 & 1) == 0)
          {
            OUTLINED_FUNCTION_41_6();
            if ((v21 & 1) == 0)
            {
              break;
            }
          }
        }
      }
    }

    OUTLINED_FUNCTION_12_18();
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    ++v10;
    v12 += v14;
    if (v9 == v10)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_12_18();
  _s15ConversationKit0A14ControlsActionOWOhTm_0();
  return v10;
}

void specialized Collection<>.firstIndex(of:)()
{
  OUTLINED_FUNCTION_48_2();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  OUTLINED_FUNCTION_13_24();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v3 + 8;
    v11 = *v3;
    OUTLINED_FUNCTION_14_13();
    v13 = v1 + v12;
    v15 = *(v14 + 72);
    v31 = v3 + 8;
    v32 = v4;
    while (1)
    {
      outlined init with copy of Participant(v13, v7);
      if (*v7 != v11 || (static ConversationControlsType.== infix(_:_:)((v7 + 8), v10) & 1) == 0)
      {
LABEL_7:
        OUTLINED_FUNCTION_5_22();
        goto LABEL_8;
      }

      v16 = *(v3 + 64);
      if (v7[64])
      {
        if (!*(v3 + 64))
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (*(v7 + 7) != *(v3 + 56))
        {
          v16 = 1;
        }

        if (v16)
        {
          goto LABEL_7;
        }
      }

      v17 = &v7[*(v4 + 44)];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v17 + 1);
        ObjectType = swift_getObjectType();
        v33 = (*(v18 + 56))(ObjectType, v18);
        v21 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v33 = 0;
        v21 = 0;
      }

      v22 = v3 + *(v4 + 44);
      if (!swift_unknownObjectWeakLoadStrong())
      {
        break;
      }

      v23 = *(v22 + 8);
      v24 = swift_getObjectType();
      v25 = (*(v23 + 56))(v24, v23);
      v27 = v26;
      swift_unknownObjectRelease();
      if (!v21)
      {
        goto LABEL_28;
      }

      if (!v27)
      {
        goto LABEL_26;
      }

      v4 = v32;
      if (v33 == v25 && v21 == v27)
      {

        OUTLINED_FUNCTION_5_22();
        goto LABEL_30;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      OUTLINED_FUNCTION_5_22();
      v10 = v31;
      if (v29)
      {
        goto LABEL_30;
      }

LABEL_8:
      ++v9;
      v13 += v15;
      if (v8 == v9)
      {
        goto LABEL_30;
      }
    }

    if (v21)
    {
LABEL_26:

      OUTLINED_FUNCTION_5_22();
      v10 = v31;
      v4 = v32;
      goto LABEL_8;
    }

    v27 = 0;
LABEL_28:
    v4 = v32;
    OUTLINED_FUNCTION_5_22();
    v10 = v31;
    if (!v27)
    {
      goto LABEL_30;
    }

    goto LABEL_8;
  }

LABEL_30:
  OUTLINED_FUNCTION_20_6();
}

{
  OUTLINED_FUNCTION_29();
  v0 = 0;
  v2 = *(v1 + 16);
  for (i = v1 + 48; v2 != v0; i += 24)
  {
    v4 = *(i - 16);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v5 = v4;

    OUTLINED_FUNCTION_56_2();
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
      break;
    }

    ++v0;
  }

  OUTLINED_FUNCTION_30_0();
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = specialized Array.count.getter();
  v3 = 0;
  while (1)
  {
    if (v2 == v3)
    {
LABEL_11:
      OUTLINED_FUNCTION_30_0();
      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v8 = OUTLINED_FUNCTION_62_0();
      v4 = MEMORY[0x1BFB22010](v8);
      goto LABEL_6;
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v4 = *(v1 + 8 * v3 + 32);
LABEL_6:
    v5 = v4;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SGURL, 0x1E69992A8);
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
      goto LABEL_11;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2)
{
  v3 = specialized Array.count.getter();
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v9 = OUTLINED_FUNCTION_62_0();
      v5 = MEMORY[0x1BFB22010](v9);
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    type metadata accessor for MomentsIndicatorBubble();
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

void CaptionSectioner.gatherAndSortCaptions()()
{
  OUTLINED_FUNCTION_48_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CaptionSectionerV0C0VSgMd, &_s15ConversationKit16CaptionSectionerV0C0VSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v106 - v3;
  v134 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  v133 = v8 - v9;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_32();
  v12 = v11;
  v128 = type metadata accessor for CaptionSectioner.Caption(0);
  OUTLINED_FUNCTION_1();
  v126 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v116 = &v106 - v19;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v20);
  v120 = &v106 - v21;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_39_3();
  v113 = type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  v26 = v25 - v24;
  v27 = type metadata accessor for Participant(0);
  v28 = OUTLINED_FUNCTION_38_6(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_15_11();
  v132 = v29 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v127 = &v106 - v33;
  v107 = v0;
  v34 = *(v0 + 24);
  v35 = *(v34 + 16);
  v36 = MEMORY[0x1E69E7CC0];
  v115 = v4;
  v118 = v17;
  v110 = v35;
  if (!v35)
  {
    goto LABEL_42;
  }

  v37 = 0;
  v38 = *(v32 + 80);
  v111 = *(v32 + 72);
  v112 = v34 + ((v38 + 32) & ~v38);
  v108 = (v6 + 8);
  v109 = v26;
  v121 = (v6 + 32);
  v122 = (v6 + 16);
  v39 = MEMORY[0x1E69E7CC0];
  v131 = v12;
  while (1)
  {
    v119 = v39;
    v117 = v37;
    OUTLINED_FUNCTION_2_44();
    v40 = v127;
    outlined init with copy of Participant(v41, v127);
    outlined init with copy of Participant(v40, v26);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v43 = *(v42 + 48);
      v44 = (v26 + *(v42 + 64));
      outlined consume of Participant.CopresenceInfo?(*v44, v44[1], v44[2], v44[3], v44[4], v44[5], v44[6], v44[7]);
      memcpy(v136, (v26 + v43), 0x150uLL);
      (*v108)(v26, v134);
      v45 = v136[39];
      v46 = v136[41];
      outlined copy of Participant.CaptionInfo?(v136[39], v136[40], v136[41]);
      outlined destroy of Participant.MediaInfo(v136);
      if (v45)
      {
        swift_unknownObjectRelease();
        goto LABEL_8;
      }
    }

    else
    {
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
    }

    v46 = v36;
LABEL_8:
    v39 = v119;
    v47 = *(v46 + 16);
    if (v47)
    {
      break;
    }

    v81 = v4;

    v82 = v36;
LABEL_29:
    OUTLINED_FUNCTION_12_18();
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    v83 = v82[2];
    v84 = *(v39 + 16);
    if (__OFADD__(v84, v83))
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);

      __break(1u);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v84 + v83 > *(v39 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v39 = v85;
    }

    v36 = MEMORY[0x1E69E7CC0];
    v84 = v82;
    if (v82[2])
    {
      if ((*(v39 + 24) >> 1) - *(v39 + 16) < v83)
      {
        goto LABEL_65;
      }

      v4 = v81;
      swift_arrayInitWithCopy();

      v86 = v117;
      if (v83)
      {
        v87 = *(v39 + 16);
        v65 = __OFADD__(v87, v83);
        v88 = v87 + v83;
        if (v65)
        {
          goto LABEL_66;
        }

        *(v39 + 16) = v88;
      }
    }

    else
    {

      v86 = v117;
      v4 = v81;
      if (v83)
      {
        goto LABEL_63;
      }
    }

    v37 = v86 + 1;
    v26 = v109;
    if (v37 == v110)
    {
      goto LABEL_43;
    }
  }

  v136[0] = v36;
  v123 = v47;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v135 = v136[0];
  v17 = 0;
  v129 = type metadata accessor for Participant.Caption(0);
  v48 = *(v129 - 8);
  v49 = *(v48 + 80);
  v114 = v46;
  v125 = v46 + ((v49 + 32) & ~v49);
  v124 = *(v48 + 72);
  v50 = v12;
  while (1)
  {
    v36 = (v125 + v124 * v17);
    v51 = *v36;
    OUTLINED_FUNCTION_2_44();
    outlined init with copy of Participant(v127, v132);
    v52 = v129;
    v53 = *v122;
    v54 = v50;
    v55 = v134;
    (*v122)(v54, v36 + *(v129 + 20), v134);
    v53(v133, v36 + v52[6], v55);
    v56 = v52[8];
    v57 = (v36 + v52[7]);
    v58 = *v57;
    v59 = v57[1];
    v4 = *(v36 + v56);

    v130 = v59;
    if (v4 == 1)
    {
      break;
    }

    v67 = v58;
    v68 = 0;
LABEL_20:
    v69 = MEMORY[0x1E69E7CC0];
LABEL_24:
    *v1 = v51;
    v70 = v128;
    OUTLINED_FUNCTION_3_38();
    _s15ConversationKit11ParticipantVWObTm_0(v132, &v1[v71]);
    v72 = *v121;
    v73 = v134;
    (*v121)(&v1[v70[6]], v131, v134);
    v72(&v1[v70[7]], v133, v73);
    *&v1[v70[8]] = 0;
    v74 = &v1[v70[9]];
    v75 = v130;
    *v74 = v67;
    *(v74 + 1) = v75;
    v1[v70[10]] = v68;
    *&v1[v70[11]] = v69;
    v1[v70[12]] = 0;
    v76 = v135;
    v136[0] = v135;
    v78 = *(v135 + 16);
    v77 = *(v135 + 24);
    if (v78 >= v77 >> 1)
    {
      OUTLINED_FUNCTION_59_3(v77);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v76 = v136[0];
    }

    ++v17;
    *(v76 + 16) = v78 + 1;
    OUTLINED_FUNCTION_17_17();
    v135 = v79;
    OUTLINED_FUNCTION_1_45();
    _s15ConversationKit11ParticipantVWObTm_0(v1, v80);
    v50 = v131;
    if (v17 == v123)
    {
      v12 = v131;

      v81 = v115;
      v17 = v118;
      v39 = v119;
      v82 = v135;
      goto LABEL_29;
    }
  }

  if (String.count.getter() < 1)
  {
    v68 = 0;
    if (*(v36 + v56) == 1)
    {
      goto LABEL_23;
    }

LABEL_19:
    v67 = v58;
    goto LABEL_20;
  }

  v60 = *(v36 + *(v129 + 36));
  v61 = *(v60 + 16);
  if (!v61)
  {
    v66 = 0.0;
LABEL_22:
    v68 = (v66 / String.count.getter()) > 0.75;
    if (*(v36 + v56))
    {
LABEL_23:
      v67 = v58;
      v69 = *(v36 + *(v129 + 36));

      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v62 = 0;
  v63 = (v60 + 40);
  while (1)
  {
    v64 = *v63;
    v63 += 2;
    v65 = __OFADD__(v62, v64);
    v62 += v64;
    if (v65)
    {
      break;
    }

    if (!--v61)
    {
      v66 = v62;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_42:
  v39 = v36;
LABEL_43:
  v136[0] = v39;

  specialized MutableCollection<>.sort(by:)(v136);

  v89 = *(v136[0] + 16);
  if (v89)
  {
    v90 = 0;
    v91 = *(v107 + 32);
    OUTLINED_FUNCTION_17_17();
    v133 = v92;
    v134 = v93;
    v135 = v94;
    v95 = v92 + v93;
    v97 = *(v96 + 72);
    v84 = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_0_39();
      v98 = v120;
      outlined init with copy of Participant(v95, v120);
      if (*(v98 + v135) == 1)
      {
        v65 = __OFADD__(v90++, 1);
        if (v65)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v90 = 0;
      }

      OUTLINED_FUNCTION_1_45();
      _s15ConversationKit11ParticipantVWObTm_0(v120, v17);
      *(v17 + v128[10]) = v90 >= v91;
      if (v91 >= v90)
      {
        OUTLINED_FUNCTION_1_45();
        _s15ConversationKit11ParticipantVWObTm_0(v17, v4);
        v99 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_4_25();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        v99 = 1;
      }

      v100 = v128;
      __swift_storeEnumTagSinglePayload(v4, v99, 1, v128);
      if (__swift_getEnumTagSinglePayload(v4, 1, v100) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit16CaptionSectionerV0C0VSgMd, &_s15ConversationKit16CaptionSectionerV0C0VSgMR);
      }

      else
      {
        OUTLINED_FUNCTION_1_45();
        _s15ConversationKit11ParticipantVWObTm_0(v4, v116);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_43();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v84 = v104;
        }

        v102 = v84[2];
        v101 = v84[3];
        if (v102 >= v101 >> 1)
        {
          OUTLINED_FUNCTION_59_3(v101);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v84 = v105;
        }

        v84[2] = v102 + 1;
        OUTLINED_FUNCTION_1_45();
        _s15ConversationKit11ParticipantVWObTm_0(v116, v103);
        v4 = v115;
      }

      v95 += v97;
      --v89;
      v17 = v118;
    }

    while (v89);
  }

  OUTLINED_FUNCTION_20_6();
}

uint64_t closure #1 in CaptionSectioner.updateCaptions()@<X0>(uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_0_39();
  outlined init with copy of Participant(v4, v5);
  v6 = type metadata accessor for CaptionSectioner.Caption(0);
  result = static Date.< infix(_:_:)();
  if (result)
  {
    v8 = *(v6 + 48);
    v9 = 2;
LABEL_5:
    *(a3 + v8) = v9;
    return result;
  }

  result = static Date.< infix(_:_:)();
  v8 = *(v6 + 48);
  if (result)
  {
    v9 = 1;
    goto LABEL_5;
  }

  *(a3 + v8) = 0;
  return result;
}

void CaptionSectioner.chunkSections(sortedCaptions:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v116 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_32();
  v115 = v9;
  v10 = type metadata accessor for CaptionSectioner.SectionID(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_17();
  v106 = v11 - v12;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_32();
  v114 = v14;
  v107 = type metadata accessor for CaptionSectioner.SpeakerSection(0);
  OUTLINED_FUNCTION_1();
  v108 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_32();
  v113 = v18;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit16CaptionSectionerV0D0V7elementtMd, &_sSi6offset_15ConversationKit16CaptionSectionerV0D0V7elementtMR);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v19);
  v109 = (&v98 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit16CaptionSectionerV0D0V7elementtSgMd, &_sSi6offset_15ConversationKit16CaptionSectionerV0D0V7elementtSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  OUTLINED_FUNCTION_17();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v98 - v26);
  v119 = type metadata accessor for CaptionSectioner.Caption(0);
  OUTLINED_FUNCTION_1();
  v121 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_17();
  v110 = v30 - v31;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v32);
  v123 = &v98 - v33;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v34);
  if (!*(v3 + 16))
  {
LABEL_58:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v111 = &v98 - v35;
  v101 = v7;
  v100 = v1;

  v36 = specialized BidirectionalCollection.suffix(_:)(50, v3);
  v38 = v37;
  v40 = v39;
  v42 = v41;
  if (v41)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v45 = swift_dynamicCastClass();
    if (!v45)
    {
      swift_unknownObjectRelease();
      v45 = MEMORY[0x1E69E7CC0];
    }

    v46 = *(v45 + 16);

    if (__OFSUB__(v42 >> 1, v40))
    {
      goto LABEL_65;
    }

    if (v46 != (v42 >> 1) - v40)
    {
      goto LABEL_66;
    }

    v44 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v42 = v111;
    if (v44)
    {
      goto LABEL_12;
    }

    v44 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v36, v38, v40, v42);
    v44 = v43;
    v42 = v111;
LABEL_11:
    swift_unknownObjectRelease();
LABEL_12:
    if (*(v44 + 16))
    {
      break;
    }

LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    swift_unknownObjectRelease();
  }

  v98 = *(v121 + 80);
  v99 = (v98 + 32) & ~v98;
  OUTLINED_FUNCTION_0_39();
  v118 = v47;
  outlined init with copy of Participant(v47, v42);
  v0 = *v0;
  KeyPath = swift_getKeyPath();
  v36 = swift_getKeyPath();
  v49 = swift_getKeyPath();
  v124 = 0;
  v125 = v0;
  v126 = closure #1 in CaptionSectioner.chunkSections(sortedCaptions:);
  v127 = 0;
  v103 = KeyPath;
  v128 = KeyPath;
  v129 = v36;
  v104 = v36;
  v102 = v49;
  v130 = v49;
  v50 = *(v44 + 16);
  v122 = v44;

  v105 = v0;

  v51 = 0;
  v40 = 0;
  v117 = MEMORY[0x1E69E7CC0];
  v38 = v120;
  for (i = v50; ; v50 = i)
  {
    if (v40 == v50)
    {
      v52 = 1;
      v40 = v50;
    }

    else
    {
      if ((v40 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      if (v40 >= *(v122 + 16))
      {
        goto LABEL_60;
      }

      v36 = v109;
      *v109 = v40;
      OUTLINED_FUNCTION_0_39();
      outlined init with copy of Participant(v54, v36 + v53);
      outlined init with take of (offset: Int, element: CaptionSectioner.Caption)(v36, v24, &_sSi6offset_15ConversationKit16CaptionSectionerV0D0V7elementtMd, &_sSi6offset_15ConversationKit16CaptionSectionerV0D0V7elementtMR);
      v52 = 0;
      ++v40;
    }

    __swift_storeEnumTagSinglePayload(v24, v52, 1, v38);
    outlined init with take of (offset: Int, element: CaptionSectioner.Caption)(v24, v27, &_sSi6offset_15ConversationKit16CaptionSectionerV0D0V7elementtSgMd, &_sSi6offset_15ConversationKit16CaptionSectionerV0D0V7elementtSgMR);
    if (__swift_getEnumTagSinglePayload(v27, 1, v38) == 1)
    {
      v73 = v122;

      if (v51 == v50)
      {

        OUTLINED_FUNCTION_4_25();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        goto LABEL_58;
      }

      if (v51 >= *(v73 + 16))
      {
        __break(1u);
        goto LABEL_68;
      }

      OUTLINED_FUNCTION_0_39();
      v74 = v110;
      outlined init with copy of Participant(v75, v110);
      specialized FindMatchByWalking.callAsFunction(firstRowInNewSection:)(v74, v106);
      OUTLINED_FUNCTION_4_25();
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      OUTLINED_FUNCTION_2_44();
      v77 = v101;
      outlined init with copy of Participant(v42 + v76, v101);
      specialized MutableCollection.subscript.getter(v51, v73);
      v79 = v78;
      v81 = v80;

      v82 = v117;
      if (v81)
      {
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v87 = swift_dynamicCastClass();
        if (!v87)
        {
          swift_unknownObjectRelease();
          v87 = MEMORY[0x1E69E7CC0];
        }

        v88 = *(v87 + 16);

        if (__OFSUB__(v81 >> 1, v79))
        {
          __break(1u);
        }

        else if (v88 == (v81 >> 1) - v79)
        {
          v86 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          v36 = v100;
          v77 = v101;
          if (v86)
          {
            goto LABEL_54;
          }

          v86 = MEMORY[0x1E69E7CC0];
LABEL_53:
          swift_unknownObjectRelease();
LABEL_54:
          OUTLINED_FUNCTION_11_19();
          v89 = OUTLINED_FUNCTION_57_1();
          _s15ConversationKit11ParticipantVWObTm_0(v89, v90);
          v91 = v107;
          OUTLINED_FUNCTION_3_38();
          _s15ConversationKit11ParticipantVWObTm_0(v77, v36 + v92);
          *(v36 + *(v91 + 24)) = v86;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_55:
            v94 = *(v82 + 16);
            v93 = *(v82 + 24);
            if (v94 >= v93 >> 1)
            {
              OUTLINED_FUNCTION_59_3(v93);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v82 = v97;
            }

            OUTLINED_FUNCTION_4_25();
            _s15ConversationKit0A14ControlsActionOWOhTm_0();
            *(v82 + 16) = v94 + 1;
            OUTLINED_FUNCTION_17_17();
            OUTLINED_FUNCTION_25_13();
            _s15ConversationKit11ParticipantVWObTm_0(v36, v95);
            goto LABEL_58;
          }

LABEL_68:
          OUTLINED_FUNCTION_43();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v82 = v96;
          goto LABEL_55;
        }

        swift_unknownObjectRelease_n();
        v77 = v101;
      }

      v83 = OUTLINED_FUNCTION_46();
      specialized _copyCollectionToContiguousArray<A>(_:)(v83, v84, v79, v81);
      v86 = v85;
      v36 = v100;
      goto LABEL_53;
    }

    v55 = v24;
    v56 = *v27;
    OUTLINED_FUNCTION_1_45();
    v58 = v123;
    _s15ConversationKit11ParticipantVWObTm_0(v27 + v57, v123);
    v59 = *(v119 + 20);
    v36 = v58 + v59;
    v38 = *(v116 + 20);
    v24 = v42 + v59;
    v0 = type metadata accessor for UUID();
    OUTLINED_FUNCTION_10_15();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, v60, MEMORY[0x1E69695C8]);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      OUTLINED_FUNCTION_4_25();
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      v24 = v55;
      v38 = v120;
      goto LABEL_32;
    }

    if (v51 >= *(v122 + 16))
    {
      goto LABEL_61;
    }

    v38 = *(v121 + 72);
    v36 = v118 + v38 * v51;
    OUTLINED_FUNCTION_0_39();
    v42 = v110;
    outlined init with copy of Participant(v36, v110);
    specialized FindMatchByWalking.callAsFunction(firstRowInNewSection:)(v42, v114);
    OUTLINED_FUNCTION_4_25();
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    OUTLINED_FUNCTION_2_44();
    outlined init with copy of Participant(v24, v115);
    v0 = v56 - v51;
    if (v56 < v51)
    {
      goto LABEL_62;
    }

    v42 = v122;
    v61 = *(v122 + 16);
    if (v61 < v56)
    {
      goto LABEL_63;
    }

    if (v61 != v0)
    {
      break;
    }

    v62 = v117;
    v24 = v55;
LABEL_27:
    OUTLINED_FUNCTION_11_19();
    v63 = v113;
    _s15ConversationKit11ParticipantVWObTm_0(v114, v113);
    v64 = v107;
    OUTLINED_FUNCTION_3_38();
    _s15ConversationKit11ParticipantVWObTm_0(v115, v63 + v65);
    *(v63 + *(v64 + 24)) = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_43();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v62 = v71;
    }

    v42 = v111;
    v38 = v120;
    v36 = *(v62 + 16);
    v66 = *(v62 + 24);
    v0 = v36 + 1;
    if (v36 >= v66 >> 1)
    {
      OUTLINED_FUNCTION_59_3(v66);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v62 = v72;
    }

    OUTLINED_FUNCTION_4_25();
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    *(v62 + 16) = v0;
    OUTLINED_FUNCTION_17_17();
    v117 = v62;
    OUTLINED_FUNCTION_25_13();
    _s15ConversationKit11ParticipantVWObTm_0(v113, v67);
    v51 = v56;
LABEL_32:
    OUTLINED_FUNCTION_1_45();
    _s15ConversationKit11ParticipantVWObTm_0(v123, v42);
  }

  v42 = MEMORY[0x1E69E7CC0];
  v70 = v56 == v51;
  v62 = v117;
  v24 = v55;
  if (v70)
  {
    goto LABEL_27;
  }

  if (v0 < 1)
  {
LABEL_41:
    swift_arrayInitWithCopy();
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit16CaptionSectionerV0F0VGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit16CaptionSectionerV0F0VGMR);
  v68 = v99;
  v42 = swift_allocObject();
  v69 = _swift_stdlib_malloc_size(v42);
  if (v38)
  {
    v70 = v69 - v68 == 0x8000000000000000 && v38 == -1;
    if (v70)
    {
      goto LABEL_72;
    }

    *(v42 + 16) = v0;
    *(v42 + 24) = 2 * ((v69 - v68) / v38);
    goto LABEL_41;
  }

  __break(1u);
LABEL_72:
  __break(1u);
}

uint64_t FindMatchByWalking.init(currentSections:newID:sectionRow:rowAgeKey:groupedByPivot:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = 0;
  a7[1] = result;
  a7[2] = a2;
  a7[3] = a3;
  a7[4] = a4;
  a7[5] = a5;
  a7[6] = a6;
  return result;
}

void specialized FindMatchByWalking.callAsFunction(firstRowInNewSection:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v43 = a2;
  v44 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v44);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v39 - v6;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = type metadata accessor for CaptionSectioner.SpeakerSection(0);
  v51 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v41 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  v18 = type metadata accessor for CaptionSectioner.Caption(0);
  v46 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v2;
  v22 = v2[1];
  v53 = v2;
  v50 = v22;
  v24 = *(v22 + 16);
  if (v23 >= v24)
  {
LABEL_23:
    (v53[2])(v19);
    return;
  }

  v25 = v53[4];
  v48 = v50 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
  v49 = v25;
  v26 = (v8 + 8);
  v45 = v7;
  while (1)
  {
    if (v23 >= v24)
    {
      __break(1u);
      goto LABEL_27;
    }

    v27 = v48 + *(v51 + 72) * v23;
    outlined init with copy of Participant(v27, v17);
    swift_getAtKeyPath();
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    v28 = *(v54 + 16);
    if (!v28)
    {

      goto LABEL_12;
    }

    outlined init with copy of Participant(v54 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * (v28 - 1), v21);

    swift_getAtKeyPath();
    v29 = v52;
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    static Participant.State.== infix(_:_:)();
    if ((v30 & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && (*&v4[*(v44 + 28)] == 0) == (*&v29[*(v44 + 28)] == 0))
    {
      v31 = *(v44 + 24);
      v32 = &v29[v31];
      v33 = v29[v31];
      v34 = &v4[v31];
      v35 = v45;
      if (v33 != *v34 || ((v32[1] ^ v34[1]) & 1) != 0 || ((v32[2] ^ v34[2]) & 1) != 0 || ((v32[3] ^ v34[3]) & 1) != 0)
      {
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        (*v26)(v12, v35);
        goto LABEL_9;
      }

      if (v34[4] == v32[4])
      {
        break;
      }
    }

    (*v26)(v12, v45);
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
LABEL_9:
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
LABEL_10:
    v19 = _s15ConversationKit0A14ControlsActionOWOhTm_0();
LABEL_12:
    *v53 = ++v23;
    v24 = *(v50 + 16);
    if (v23 >= v24)
    {
      goto LABEL_23;
    }
  }

  _s15ConversationKit0A14ControlsActionOWOhTm_0();
  swift_getAtKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v39 = v12;
  v40 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v36 = *v26;
  (*v26)(v42, v35);
  if ((v40 & 1) == 0)
  {
    v12 = v39;
    v36(v39, v35);
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    goto LABEL_10;
  }

  if (v23 < *(v50 + 16))
  {
    v37 = v27;
    v38 = v41;
    outlined init with copy of Participant(v37, v41);
    v36(v12, v45);
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    outlined init with copy of Participant(v38, v43);
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    *v53 = v23 + 1;
    return;
  }

LABEL_27:
  __break(1u);
}

void FindMatchByWalking.callAsFunction(firstRowInNewSection:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v58[1] = v3;
  v77 = *(v1 + 32);
  OUTLINED_FUNCTION_2_7();
  v69 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v66 = v6 - v7;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v58 - v9;
  v68 = *(v11 + 40);
  OUTLINED_FUNCTION_2_7();
  v67 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  v59 = (v14 - v15);
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v58 - v17;
  v20 = *(v19 + 24);
  v65 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_1();
  v60 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v76 = v58 - v23;
  v24 = *(v2 + 16);
  OUTLINED_FUNCTION_2_7();
  v73 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_17();
  v58[0] = v27 - v28;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_32();
  v74 = v30;
  OUTLINED_FUNCTION_2_7();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_8();
  v75 = v35 - v34;
  v37 = *v0;
  v36 = v0[1];
  if (v37 >= MEMORY[0x1BFB20DB0](v36, v24))
  {
LABEL_10:
    (v0[2])();
LABEL_11:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v72 = v0[4];
  ++v73;
  v61 = v32 + 32;
  v62 = (v69 + 8);
  ++v67;
  v63 = (v32 + 8);
  ++v60;
  v64 = v10;
  v78 = v20;
  v79 = v0;
  v70 = v24;
  v71 = v36;
  while (1)
  {
    v38 = v74;
    Array.subscript.getter();
    swift_getAtKeyPath();
    v69 = *v73;
    (v69)(v38, v24);
    v80 = v81;
    type metadata accessor for Array();
    swift_getWitnessTable();
    v39 = v76;
    v40 = v78;
    BidirectionalCollection.last.getter();
    if (__swift_getEnumTagSinglePayload(v39, 1, v40) != 1)
    {
      break;
    }

    (*v60)(v39, v65);

    v0 = v79;
    v41 = *v79 + 1;
    if (__OFADD__(*v79, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v42 = v71;
LABEL_9:
    *v0 = v41;
    v24 = v70;
    if (v41 >= MEMORY[0x1BFB20DB0](v42, v70))
    {
      goto LABEL_10;
    }
  }

  v43 = OUTLINED_FUNCTION_56_2();
  v44(v43);

  OUTLINED_FUNCTION_57_1();
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  v45 = v18;
  v46 = v66;
  swift_getAtKeyPath();
  OUTLINED_FUNCTION_33_0();
  v47 = v77;
  v48 = v2;
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v50 = *v62;
  v51 = v46;
  v18 = v45;
  (*v62)(v51, v47);
  if ((v49 & 1) == 0 || (v52 = v59, OUTLINED_FUNCTION_57_1(), swift_getAtKeyPath(), v53 = v68, v54 = dispatch thunk of static Comparable.>= infix(_:_:)(), v55 = *v67, (*v67)(v52, v53), (v54 & 1) == 0))
  {
    v2 = v48;
    v50(v64, v77);
    (*v67)(v18, v68);
    (*v63)(v75, v78);
    v0 = v79;
    v41 = *v79 + 1;
    v42 = v71;
    if (__OFADD__(*v79, 1))
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  v56 = v58[0];
  v57 = v70;
  Array.subscript.getter();
  dispatch thunk of Identifiable.id.getter();
  (v69)(v56, v57);
  v50(v64, v77);
  v55(v18, v68);
  (*v63)(v75, v78);
  if (!__OFADD__(*v79, 1))
  {
    ++*v79;
    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
}

void specialized MutableCollection.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) < a1)
  {
    __break(1u);
  }

  else if ((a1 & 0x8000000000000000) == 0)
  {
    type metadata accessor for CaptionSectioner.Caption(0);

    return;
  }

  __break(1u);
}

void specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *(type metadata accessor for CaptionSectioner.Caption(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
}

{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()();
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v4);
  *a1 = v2;
}

{
  v2 = *(type metadata accessor for TranscriptionViewModel.Caption(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
}

{
  v2 = *(type metadata accessor for Participant(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
}

{
  v2 = *(type metadata accessor for HUDActivityManager.BannerUpdate(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v3 = v5;
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
}

{
  v2 = *(type metadata accessor for Participant.Caption(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
}

{
  v2 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_22(v2);
  v4 = v3;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v7;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, MEMORY[0x1E6969C28], specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
  *a1 = v5;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
}

{
  v2 = *(type metadata accessor for Participant(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
}

{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
}

{
  v2 = *(type metadata accessor for Participant(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
}

uint64_t outlined assign with take of Participant(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

{
  v4 = type metadata accessor for Participant(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void specialized _ArrayBuffer._consumeAndCreateNew()()
{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  v0 = OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v0, v1, v2, v3);
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  v0 = OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v0, v1, v2, v3);
}

{
  v0 = OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v0, v1, v2, v3);
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  v0 = OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v0, v1, v2, v3);
}

uint64_t outlined assign with copy of Participant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CaptionSectioner.Caption.Visibility and conformance CaptionSectioner.Caption.Visibility()
{
  result = lazy protocol witness table cache variable for type CaptionSectioner.Caption.Visibility and conformance CaptionSectioner.Caption.Visibility;
  if (!lazy protocol witness table cache variable for type CaptionSectioner.Caption.Visibility and conformance CaptionSectioner.Caption.Visibility)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CaptionSectioner.Caption.Visibility and conformance CaptionSectioner.Caption.Visibility);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CaptionSectioner.CaptionID and conformance CaptionSectioner.CaptionID()
{
  result = lazy protocol witness table cache variable for type CaptionSectioner.CaptionID and conformance CaptionSectioner.CaptionID;
  if (!lazy protocol witness table cache variable for type CaptionSectioner.CaptionID and conformance CaptionSectioner.CaptionID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CaptionSectioner.CaptionID and conformance CaptionSectioner.CaptionID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CaptionSectioner.CaptionID and conformance CaptionSectioner.CaptionID;
  if (!lazy protocol witness table cache variable for type CaptionSectioner.CaptionID and conformance CaptionSectioner.CaptionID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CaptionSectioner.CaptionID and conformance CaptionSectioner.CaptionID);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CaptionSectioner(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CaptionSectioner(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void type metadata completion function for CaptionSectioner.Caption(uint64_t a1)
{
  type metadata accessor for Participant(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Image?();
      if (v3 <= 0x3F)
      {
        type metadata accessor for [_NSRange](319, &lazy cache variable for type metadata for [_NSRange], type metadata accessor for _NSRange);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Image?()
{
  if (!lazy cache variable for type metadata for Image?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Image?);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CaptionSectioner.Caption.Visibility(_BYTE *result, unsigned int a2, unsigned int a3)
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

void type metadata completion function for CaptionSectioner.SpeakerSection(uint64_t a1)
{
  type metadata accessor for CaptionSectioner.SectionID(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Participant(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [_NSRange](319, &lazy cache variable for type metadata for [CaptionSectioner.Caption], type metadata accessor for CaptionSectioner.Caption);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [_NSRange](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for CaptionSectioner.SectionID(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata instantiation function for FindMatchByWalking(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for FindMatchByWalking(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for FindMatchByWalking(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for CaptionSectioner.Caption(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for CaptionSectioner.Caption(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v3 = a1[1];
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 < v3)
  {
    v5 = v4;
    UninitializedySayxG_SpyxGtSiFZSo8NSNumberC_Tt0g5Tm = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo8NSNumberC_Tt0g5Tm(v3 / 2, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((UninitializedySayxG_SpyxGtSiFZSo8NSNumberC_Tt0g5Tm & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v3, 1, a1);
  }
}

{
  v3 = a1[1];
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 < v3)
  {
    v5 = v4;
    UninitializedySayxG_SpyxGtSiFZSo5SGURLC_Tt0g5 = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo5SGURLC_Tt0g5(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((UninitializedySayxG_SpyxGtSiFZSo5SGURLC_Tt0g5 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v3, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for TranscriptionViewModel.Caption(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for TranscriptionViewModel.Caption(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for HUDActivityManager.BannerUpdate(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for HUDActivityManager.BannerUpdate(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for HUDActivityManager.BannerUpdate(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
      OUTLINED_FUNCTION_22(v7);
      OUTLINED_FUNCTION_40_3();
      v9[0] = v6 + v8;
      v9[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, v10, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Participant.Caption(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Participant.Caption(0) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v3 = a1[1];
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 < v3)
  {
    v5 = v4;
    UninitializedySayxG_SpyxGtSiFZSo8UIWindowC_Tt0g5 = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo8UIWindowC_Tt0g5(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((UninitializedySayxG_SpyxGtSiFZSo8UIWindowC_Tt0g5 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v3, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Participant(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Participant(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pMd, &_s15ConversationKit8Activity_pMR);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Participant(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Participant(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for CaptionSectioner.Caption(0);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v31 = v19;
      v32 = a3;
      v29 = v22;
      v30 = v21;
      do
      {
        outlined init with copy of Participant(v22, v16);
        outlined init with copy of Participant(v19, v12);
        v23 = static Date.< infix(_:_:)();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        if ((v23 & 1) == 0)
        {
          break;
        }

        if (!v33)
        {
          __break(1u);
          return;
        }

        v24 = v34;
        _s15ConversationKit11ParticipantVWObTm_0(v22, v34);
        swift_arrayInitWithTakeFrontToBack();
        _s15ConversationKit11ParticipantVWObTm_0(v24, v19);
        v19 += v20;
        v22 += v20;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v32 + 1;
      v19 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = v8;
        v13 = v11;
        [v12 floatValue];
        v15 = v14;
        [v13 floatValue];
        v17 = v16;

        if (v15 >= v17)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v18 = *v10;
        v8 = *(v10 + 8);
        *v10 = v8;
        *(v10 + 8) = v18;
        v10 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 += 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

{
  v34 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  v29 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v35 = *a4;
    v14 = v35 + 8 * a3 - 8;
    v15 = a1 - a3;
    while (2)
    {
      v31 = v14;
      v32 = a3;
      v16 = *(v35 + 8 * a3);
      v30 = v15;
      v17 = v14;
      do
      {
        v18 = *v17;
        v19 = v16;
        v20 = v18;
        SGURL.recentsDate.getter(v12);
        v21 = v33;
        SGURL.recentsDate.getter(v33);
        v22 = Date.compare(_:)();
        v23 = *v13;
        v24 = v21;
        v25 = v34;
        (*v13)(v24, v34);
        v23(v12, v25);

        if (v22 != -1)
        {
          break;
        }

        if (!v35)
        {
          __break(1u);
          return;
        }

        v26 = *v17;
        v16 = *(v17 + 8);
        *v17 = v16;
        *(v17 + 8) = v26;
        v17 -= 8;
      }

      while (!__CFADD__(v15++, 1));
      a3 = v32 + 1;
      v14 = v31 + 8;
      v15 = v30 - 1;
      if (v32 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }
}

{
  v33 = type metadata accessor for TranscriptionViewModel.Caption(0);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v32 = v17;
    v26 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v30 = v19;
      v31 = a3;
      v28 = v22;
      v29 = v21;
      do
      {
        outlined init with copy of Participant.Caption(v22, v16, type metadata accessor for TranscriptionViewModel.Caption);
        outlined init with copy of Participant.Caption(v19, v12, type metadata accessor for TranscriptionViewModel.Caption);
        v23 = static Date.< infix(_:_:)();
        outlined destroy of Participant.Caption(v12, type metadata accessor for TranscriptionViewModel.Caption);
        outlined destroy of Participant.Caption(v16, type metadata accessor for TranscriptionViewModel.Caption);
        if ((v23 & 1) == 0)
        {
          break;
        }

        if (!v32)
        {
          __break(1u);
          return;
        }

        outlined init with take of TranscriptionViewModel.Caption(v22, v9);
        swift_arrayInitWithTakeFrontToBack();
        outlined init with take of TranscriptionViewModel.Caption(v9, v19);
        v19 += v20;
        v22 += v20;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v31 + 1;
      v19 = v30 + v26;
      v21 = v29 - 1;
      v22 = v28 + v26;
      if (v31 + 1 != v27)
      {
        continue;
      }

      break;
    }
  }
}

{
  v8 = type metadata accessor for IndexPath();
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  v38 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v20 = *(v14 + 16);
    v19 = v14 + 16;
    v21 = *(v19 + 56);
    v47 = (v19 - 8);
    v48 = v20;
    v49 = v19;
    v44 = (v19 + 16);
    v45 = v18;
    v22 = (v18 + v21 * (a3 - 1));
    v43 = -v21;
    v23 = a1 - a3;
    v37 = v21;
    v24 = v18 + v21 * a3;
    while (2)
    {
      v41 = v22;
      v42 = a3;
      v39 = v24;
      v40 = v23;
      v25 = v23;
      v26 = v22;
      do
      {
        v27 = v48;
        (v48)(v17, v24, v8, v15);
        v27(v12, v26, v8);
        v28 = IndexPath.section.getter();
        if (v28 == IndexPath.section.getter())
        {
          v29 = IndexPath.item.getter();
          v30 = IndexPath.item.getter();
        }

        else
        {
          v29 = IndexPath.section.getter();
          v30 = IndexPath.section.getter();
        }

        v31 = v29 < v30;
        v32 = *v47;
        (*v47)(v12, v8);
        v32(v17, v8);
        if (!v31)
        {
          break;
        }

        if (!v45)
        {
          __break(1u);
          return;
        }

        v33 = *v44;
        v34 = v46;
        (*v44)(v46, v24, v8);
        swift_arrayInitWithTakeFrontToBack();
        v33(v26, v34, v8);
        v26 += v43;
        v24 += v43;
      }

      while (!__CFADD__(v25++, 1));
      a3 = v42 + 1;
      v22 = &v41[v37];
      v23 = v40 - 1;
      v24 = v39 + v37;
      if (v42 + 1 != v38)
      {
        continue;
      }

      break;
    }
  }
}

{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v43[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v43[-v13];
  v14 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v43[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v44 = a2;
  if (a3 == a2)
  {
    return;
  }

  v19 = *a4;
  v54 = (v17 + 32);
  v49 = (v17 + 8);
  v56 = v19;
  v20 = v19 + 40 * a3;
  v21 = a1 - a3;
  v67 = v14;
  v50 = &v43[-v18];
  while (2)
  {
    v47 = a3;
    v45 = v21;
    v22 = v21;
    v46 = v20;
    do
    {
      v60 = v22;
      outlined init with copy of IDSLookupManager(v20, &v64);
      v59 = (v20 - 40);
      outlined init with copy of IDSLookupManager(v20 - 40, v61);
      v23 = v65;
      v24 = v66;
      v25 = __swift_project_boxed_opaque_existential_1(&v64, v65);
      v26 = *(v24 + 8);
      v27 = v58;
      v26(v23, v24);
      if (__swift_getEnumTagSinglePayload(v27, 1, v14) == 1)
      {
        goto LABEL_7;
      }

      v52 = v25;
      v53 = v26;
      v28 = v50;
      v51 = *v54;
      v51(v50, v58, v14);
      v29 = v62;
      v30 = v63;
      v31 = v57;
      __swift_project_boxed_opaque_existential_1(v61, v62);
      v32 = v29;
      v14 = v67;
      (*(v30 + 8))(v32, v30);
      if (__swift_getEnumTagSinglePayload(v31, 1, v14) == 1)
      {
        (*v49)(v28, v14);
        v27 = v57;
        v26 = v53;
LABEL_7:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v33 = v55;
        v26(v23, v24);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, v67);
        v35 = v33;
        v14 = v67;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v35, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        __swift_destroy_boxed_opaque_existential_1(v61);
        __swift_destroy_boxed_opaque_existential_1(&v64);
        v36 = v60;
        if (EnumTagSinglePayload == 1)
        {
          break;
        }

        goto LABEL_10;
      }

      v37 = v48;
      v51(v48, v57, v14);
      v38 = static Date.> infix(_:_:)();
      v39 = *v49;
      (*v49)(v37, v14);
      v39(v28, v14);
      __swift_destroy_boxed_opaque_existential_1(v61);
      __swift_destroy_boxed_opaque_existential_1(&v64);
      v36 = v60;
      if ((v38 & 1) == 0)
      {
        break;
      }

LABEL_10:
      if (!v56)
      {
        __break(1u);
        return;
      }

      outlined init with take of ImageName(v20, &v64);
      v40 = v59;
      v41 = v59[1];
      *v20 = *v59;
      *(v20 + 16) = v41;
      *(v20 + 32) = *(v40 + 32);
      outlined init with take of ImageName(&v64, v40);
      v20 = v40;
      v42 = __CFADD__(v36, 1);
      v22 = v36 + 1;
    }

    while (!v42);
    a3 = v47 + 1;
    v20 = v46 + 40;
    v21 = v45 - 1;
    if (v47 + 1 != v44)
    {
      continue;
    }

    break;
  }
}

{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v49[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v61 = &v49[-v13];
  v14 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v49[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v50 = a2;
  if (a3 == a2)
  {
    return;
  }

  v19 = *a4;
  v55 = (v17 + 8);
  v62 = v19;
  v20 = v19 + 40 * a3;
  v21 = a1 - a3;
  v59 = &v49[-v18];
  v60 = v14;
  v58 = (v17 + 32);
  while (2)
  {
    v53 = a3;
    v51 = v21;
    v22 = v21;
    v52 = v20;
    v23 = v20;
    do
    {
      v71 = v22;
      outlined init with copy of IDSLookupManager(v23, &v68);
      v63 = (v23 - 40);
      v64 = v23;
      outlined init with copy of IDSLookupManager(v23 - 40, v65);
      v24 = v69;
      v25 = v70;
      __swift_project_boxed_opaque_existential_1(&v68, v69);
      v26 = *(v25 + 32);
      v27 = v26(v24, v25);
      v28 = v66;
      v29 = v67;
      __swift_project_boxed_opaque_existential_1(v65, v66);
      if ((v27 ^ (*(v29 + 32))(v28, v29)))
      {
        v30 = v26(v24, v25);
        goto LABEL_6;
      }

      v33 = v69;
      v34 = v70;
      __swift_project_boxed_opaque_existential_1(&v68, v69);
      v35 = v61;
      (*(v34 + 8))(v33, v34);
      v36 = v60;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v60);
      v38 = v59;
      if (EnumTagSinglePayload != 1)
      {
        v39 = *v58;
        (*v58)(v59, v61, v36);
        v40 = v66;
        v41 = v67;
        __swift_project_boxed_opaque_existential_1(v65, v66);
        v35 = v56;
        (*(v41 + 8))(v40, v41);
        if (__swift_getEnumTagSinglePayload(v35, 1, v36) != 1)
        {
          v47 = v54;
          v39(v54, v35, v36);
          v30 = static Date.> infix(_:_:)();
          v48 = *v55;
          (*v55)(v47, v36);
          v48(v38, v36);
LABEL_6:
          __swift_destroy_boxed_opaque_existential_1(v65);
          __swift_destroy_boxed_opaque_existential_1(&v68);
          v31 = v71;
          v32 = v64;
          if ((v30 & 1) == 0)
          {
            break;
          }

          goto LABEL_12;
        }

        (*v55)(v38, v36);
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v35, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v42 = v69;
      v43 = v70;
      __swift_project_boxed_opaque_existential_1(&v68, v69);
      v44 = v57;
      (*(v43 + 8))(v42, v43);
      LODWORD(v42) = __swift_getEnumTagSinglePayload(v44, 1, v36);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v44, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      __swift_destroy_boxed_opaque_existential_1(v65);
      __swift_destroy_boxed_opaque_existential_1(&v68);
      v31 = v71;
      v32 = v64;
      if (v42 == 1)
      {
        break;
      }

LABEL_12:
      if (!v62)
      {
        __break(1u);
        return;
      }

      outlined init with take of ImageName(v32, &v68);
      v23 = v63;
      v45 = v63[1];
      *v32 = *v63;
      *(v32 + 16) = v45;
      *(v32 + 32) = *(v23 + 32);
      outlined init with take of ImageName(&v68, v23);
      v46 = __CFADD__(v31, 1);
      v22 = v31 + 1;
    }

    while (!v46);
    a3 = v53 + 1;
    v20 = v52 + 40;
    v21 = v51 - 1;
    if (v53 + 1 != v50)
    {
      continue;
    }

    break;
  }
}

{
  v8 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - v16;
  v46 = a2;
  if (a3 != a2)
  {
    v18 = v14;
    v19 = *a4;
    v20 = *(v15 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v51 = -v20;
    v52 = v19;
    v22 = a1 - a3;
    v45 = v20;
    v23 = v19 + v20 * a3;
    while (2)
    {
      v49 = v21;
      v50 = a3;
      v47 = v23;
      v48 = v22;
      v24 = v22;
      while (1)
      {
        outlined init with copy of ParticipantReaction();
        outlined init with copy of ParticipantReaction();
        v25 = *(v18 + 28);
        v26 = *&v17[v25];
        if (v26)
        {
          v27 = [v26 value];
          v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v29;

          v25 = *(v18 + 28);
        }

        else
        {
          v28 = 0;
          v30 = 0xE000000000000000;
        }

        v55 = v24;
        v31 = *&v12[v25];
        if (v31)
        {
          v32 = [v31 value];
          v54 = v28;
          v33 = v17;
          v34 = v12;
          v35 = v18;
          v36 = v32;
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v38;

          v18 = v35;
          v12 = v34;
          v17 = v33;
          v28 = v54;
        }

        else
        {
          v37 = 0;
          v39 = 0xE000000000000000;
        }

        if (v37 == v28 && v39 == v30)
        {
          break;
        }

        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

        _s15ConversationKit11ParticipantVWOhTm_12();
        _s15ConversationKit11ParticipantVWOhTm_12();
        v42 = v55;
        if (v41)
        {
          if (!v52)
          {
            __break(1u);
            return;
          }

          _s15ConversationKit11ParticipantVWObTm_4();
          swift_arrayInitWithTakeFrontToBack();
          _s15ConversationKit11ParticipantVWObTm_4();
          v21 += v51;
          v23 += v51;
          v43 = __CFADD__(v42, 1);
          v24 = v42 + 1;
          if (!v43)
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      _s15ConversationKit11ParticipantVWOhTm_12();
      _s15ConversationKit11ParticipantVWOhTm_12();
LABEL_20:
      a3 = v50 + 1;
      v21 = v49 + v45;
      v22 = v48 - 1;
      v23 = v47 + v45;
      if (v50 + 1 != v46)
      {
        continue;
      }

      break;
    }
  }
}

{
  v34 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v32 = v17;
    v26 = v18;
    v22 = v17 + v18 * a3;
LABEL_4:
    v30 = v19;
    v31 = a3;
    v28 = v22;
    v29 = v21;
    while (1)
    {
      _s15ConversationKit11ParticipantVWOcTm_6(v22, v16, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOcTm_6(v19, v12, type metadata accessor for Participant);
      v23 = closure #1 in Array<A>.sortForInCallControls()(v16, v12);
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      if (v4)
      {
        break;
      }

      if (v23)
      {
        if (!v32)
        {
          __break(1u);
          return;
        }

        v24 = v33;
        outlined init with take of Participant(v22, v33);
        swift_arrayInitWithTakeFrontToBack();
        outlined init with take of Participant(v24, v19);
        v19 += v20;
        v22 += v20;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v31 + 1;
      v19 = v30 + v26;
      v21 = v29 - 1;
      v22 = v28 + v26;
      if (v31 + 1 != v27)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

{
  v73 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v73);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v55 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v55 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v55 - v15;
  v67 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v77 = &v55 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v72 = &v55 - v21;
  v57 = a2;
  if (a3 == a2)
  {
    return;
  }

  v22 = *a4;
  v23 = *(v20 + 72);
  v24 = *a4 + v23 * (a3 - 1);
  v64 = -v23;
  v65 = v22;
  v25 = a1 - a3;
  v56 = v23;
  v26 = v22 + v23 * a3;
  v62 = v9;
  while (2)
  {
    v60 = v24;
    v61 = a3;
    v58 = v26;
    v59 = v25;
    do
    {
      v70 = v25;
      v27 = v72;
      _s15ConversationKit11ParticipantVWOcTm_6(v26, v72, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOcTm_6(v24, v77, type metadata accessor for Participant);
      v28 = v68;
      _s15ConversationKit11ParticipantVWOcTm_6(v27, v68, type metadata accessor for Participant.State);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        memset(v76, 0, 24);
        v76[3] = 1;
        bzero(&v76[4], 0xB1uLL);
LABEL_10:
        outlined destroy of Participant.ScreenInfo?(v76);
        v71 = 0;
        v36 = v69;
        goto LABEL_11;
      }

      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v30 = *(v29 + 48);
      v31 = (v28 + *(v29 + 64));
      outlined consume of Participant.CopresenceInfo?(*v31, v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7]);
      memcpy(v75, (v28 + v30), sizeof(v75));
      v32 = type metadata accessor for Date();
      v33 = *(*(v32 - 8) + 8);
      v33(v28, v32);
      outlined init with copy of Participant.ScreenInfo?(&v75[96], v76);
      outlined destroy of Participant.MediaInfo(v75);
      if (v76[3] == 1)
      {
        goto LABEL_10;
      }

      outlined destroy of Participant.ScreenInfo?(v76);
      _s15ConversationKit11ParticipantVWOcTm_6(v72, v63, type metadata accessor for Participant.State);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v34 = *(v29 + 48);
        v35 = (v63 + *(v29 + 64));
        outlined consume of Participant.CopresenceInfo?(*v35, v35[1], v35[2], v35[3], v35[4], v35[5], v35[6], v35[7]);
        memcpy(v75, (v63 + v34), sizeof(v75));
        v33(v63, v32);
        outlined init with copy of Participant.ScreenInfo?(&v75[96], v74);
        outlined destroy of Participant.MediaInfo(v75);
        v36 = v69;
        if (v74[3] != 1)
        {
          memcpy(v76, v74, 0xD1uLL);
          v71 = LOBYTE(v76[5]);
          outlined destroy of Participant.ScreenInfo(v76);
          goto LABEL_11;
        }
      }

      else
      {
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        memset(v74, 0, 24);
        v74[3] = 1;
        bzero(&v74[4], 0xB1uLL);
        v36 = v69;
      }

      outlined destroy of Participant.ScreenInfo?(v74);
      v71 = 0;
LABEL_11:
      _s15ConversationKit11ParticipantVWOcTm_6(v77, v36, type metadata accessor for Participant.State);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        memset(v76, 0, 24);
        v76[3] = 1;
        bzero(&v76[4], 0xB1uLL);
LABEL_17:
        v46 = v76;
        goto LABEL_18;
      }

      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v38 = *(v37 + 48);
      v39 = (v36 + *(v37 + 64));
      outlined consume of Participant.CopresenceInfo?(*v39, v39[1], v39[2], v39[3], v39[4], v39[5], v39[6], v39[7]);
      memcpy(v75, (v36 + v38), sizeof(v75));
      v40 = type metadata accessor for Date();
      v41 = *(*(v40 - 8) + 8);
      v41(v36, v40);
      outlined init with copy of Participant.ScreenInfo?(&v75[96], v76);
      outlined destroy of Participant.MediaInfo(v75);
      if (v76[3] == 1)
      {
        goto LABEL_17;
      }

      outlined destroy of Participant.ScreenInfo?(v76);
      v42 = v62;
      _s15ConversationKit11ParticipantVWOcTm_6(v77, v62, type metadata accessor for Participant.State);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        _s15ConversationKit11ParticipantV5StateOWOhTm_0();
        memset(v74, 0, 24);
        v74[3] = 1;
        bzero(&v74[4], 0xB1uLL);
LABEL_27:
        v46 = v74;
LABEL_18:
        outlined destroy of Participant.ScreenInfo?(v46);
        v45 = 0;
        goto LABEL_19;
      }

      v43 = *(v37 + 48);
      v44 = (v42 + *(v37 + 64));
      outlined consume of Participant.CopresenceInfo?(*v44, v44[1], v44[2], v44[3], v44[4], v44[5], v44[6], v44[7]);
      memcpy(v75, (v42 + v43), sizeof(v75));
      v41(v42, v40);
      outlined init with copy of Participant.ScreenInfo?(&v75[96], v74);
      outlined destroy of Participant.MediaInfo(v75);
      if (v74[3] == 1)
      {
        goto LABEL_27;
      }

      memcpy(v76, v74, 0xD1uLL);
      v45 = LOBYTE(v76[5]);
      outlined destroy of Participant.ScreenInfo(v76);
LABEL_19:
      v47 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v48 = [v47 integerValue];

      v49 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v50 = [v49 initWithBool_];
      v51 = [v50 integerValue];

      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      v52 = v70;
      if (v48 >= v51)
      {
        break;
      }

      if (!v65)
      {
        __break(1u);
        return;
      }

      v53 = v66;
      outlined init with take of Participant(v26, v66);
      swift_arrayInitWithTakeFrontToBack();
      outlined init with take of Participant(v53, v24);
      v24 += v64;
      v26 += v64;
      v54 = __CFADD__(v52, 1);
      v25 = v52 + 1;
    }

    while (!v54);
    a3 = v61 + 1;
    v24 = v60 + v56;
    v25 = v59 - 1;
    v26 = v58 + v56;
    if (v61 + 1 != v57)
    {
      continue;
    }

    break;
  }
}

{
  v36 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v26 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v26 - v15);
  v28 = a2;
  if (a3 == a2)
  {
    return;
  }

  v17 = *a4;
  v18 = *(v14 + 72);
  v19 = *a4 + v18 * (a3 - 1);
  v20 = -v18;
  v21 = a1 - a3;
  v27 = v18;
  v22 = v17 + v18 * a3;
  while (2)
  {
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    v23 = v21;
    while (1)
    {
      outlined init with copy of HUDActivityManager.BannerUpdate(v22, v16);
      outlined init with copy of HUDActivityManager.BannerUpdate(v19, v12);
      outlined init with copy of ConversationControlsType((v16 + 1), v33);
      outlined init with copy of ConversationControlsType((v12 + 1), v34);
      if (v33[40] == 1)
      {
        break;
      }

      if (v35 != 1)
      {
        v24 = *v16 < *v12 || *v16 == *v12 && Date.compare(_:)() == -1;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v33, &_s15ConversationKit0A12ControlsTypeO_ACtMd, &_s15ConversationKit0A12ControlsTypeO_ACtMR);
LABEL_15:
        outlined destroy of HUDActivityManager.BannerUpdate(v12);
        outlined destroy of HUDActivityManager.BannerUpdate(v16);
        if (!v24)
        {
          goto LABEL_21;
        }

        goto LABEL_16;
      }

      outlined destroy of ConversationControlsType(v34);
      outlined destroy of ConversationControlsType(v33);
      outlined destroy of HUDActivityManager.BannerUpdate(v12);
      outlined destroy of HUDActivityManager.BannerUpdate(v16);
LABEL_16:
      if (!v17)
      {
        __break(1u);
        return;
      }

      outlined init with take of HUDActivityManager.BannerUpdate(v22, v9);
      swift_arrayInitWithTakeFrontToBack();
      outlined init with take of HUDActivityManager.BannerUpdate(v9, v19);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_21;
      }
    }

    if (v35 == 1)
    {
      v24 = *v16 < *v12;
      outlined destroy of ConversationControlsType(v34);
      outlined destroy of ConversationControlsType(v33);
      goto LABEL_15;
    }

    outlined destroy of ConversationControlsType(v33);
    outlined destroy of ConversationControlsType(v34);
    outlined destroy of HUDActivityManager.BannerUpdate(v12);
    outlined destroy of HUDActivityManager.BannerUpdate(v16);
LABEL_21:
    a3 = v32 + 1;
    v19 = v31 + v27;
    v21 = v30 - 1;
    v22 = v29 + v27;
    if (v32 + 1 != v28)
    {
      continue;
    }

    break;
  }
}

{
  v9 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v29 - v17);
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v30 = v20;
    v24 = v19 + v20 * a3;
    while (2)
    {
      v35 = a3;
      v32 = v24;
      v33 = v23;
      v25 = v23;
      v34 = v21;
      do
      {
        outlined init with copy of HUDActivityManager.BannerUpdate(v24, v18);
        outlined init with copy of HUDActivityManager.BannerUpdate(v21, v14);
        v26 = *v18;
        v27 = OUTLINED_FUNCTION_84_7();
        outlined destroy of HUDActivityManager.BannerUpdate(v27);
        outlined destroy of HUDActivityManager.BannerUpdate(v18);
        if (v26 >= v4)
        {
          break;
        }

        if (!v19)
        {
          __break(1u);
          return;
        }

        outlined init with take of HUDActivityManager.BannerUpdate(v24, v11);
        swift_arrayInitWithTakeFrontToBack();
        outlined init with take of HUDActivityManager.BannerUpdate(v11, v21);
        v21 += v22;
        v24 += v22;
      }

      while (!__CFADD__(v25++, 1));
      a3 = v35 + 1;
      v21 = v34 + v30;
      v23 = v33 - 1;
      v24 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }
}

{
  v34 = type metadata accessor for Participant.Caption(0);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v25 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v25 - v14);
  v27 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v32 = v16;
    v26 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v30 = v18;
      v31 = a3;
      v28 = v21;
      v29 = v20;
      do
      {
        _s15ConversationKit11ParticipantV5StateOWOcTm_0();
        _s15ConversationKit11ParticipantV5StateOWOcTm_0();
        v22 = *v15;
        v23 = *v11;
        _s15ConversationKit11ParticipantV5StateOWOhTm_1();
        _s15ConversationKit11ParticipantV5StateOWOhTm_1();
        if (v22 >= v23)
        {
          break;
        }

        if (!v32)
        {
          __break(1u);
          return;
        }

        _s15ConversationKit11ParticipantVWObTm_6();
        swift_arrayInitWithTakeFrontToBack();
        _s15ConversationKit11ParticipantVWObTm_6();
        v18 += v19;
        v21 += v19;
      }

      while (!__CFADD__(v20++, 1));
      a3 = v31 + 1;
      v18 = v30 + v26;
      v20 = v29 - 1;
      v21 = v28 + v26;
      if (v31 + 1 != v27)
      {
        continue;
      }

      break;
    }
  }
}

{
  v109 = type metadata accessor for PersonNameComponents();
  v8 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v113 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for Date();
  v10 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v110 = &v101 - v13;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v121);
  v126 = &v101 - v14;
  v15 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v15);
  v122 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v123 = &v101 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v120 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v125 = &v101 - v22;
  v23 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v23);
  v119 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v116 = &v101 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v136 = &v101 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v128 = &v101 - v31;
  v103 = a2;
  if (a3 == a2)
  {
    return;
  }

  v32 = *a4;
  v124 = (v10 + 32);
  v114 = (v10 + 8);
  v108 = (v8 + 8);
  v33 = *(v30 + 72);
  v34 = v32 + v33 * (a3 - 1);
  v117 = -v33;
  v35 = a1 - a3;
  v118 = v32;
  v102 = v33;
  v36 = v32 + v33 * a3;
  v115 = v15;
  v127 = v23;
  while (2)
  {
    v107 = a3;
    v104 = v36;
    v130 = v36;
    v105 = v35;
    v106 = v34;
    v129 = v34;
    v37 = v112;
    v38 = v122;
    v39 = v123;
    while (1)
    {
      v40 = v128;
      _s15ConversationKit11ParticipantVWOcTm_6(v130, v128, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOcTm_6(v129, v136, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOcTm_6(v40, v39, type metadata accessor for Participant.State);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
        v42 = *(v41 + 48);
        v43 = (v39 + *(v41 + 64));
        v44 = outlined consume of Participant.CopresenceInfo?(*v43, v43[1], v43[2], v43[3], v43[4], v43[5], v43[6], v43[7]);
        v45 = v125;
        (*v124)(v125, v39, v37, v44);
        outlined destroy of Participant.MediaInfo(v39 + v42);
        v46 = 0;
      }

      else
      {
        _s15ConversationKit11ParticipantVWOhTm_16(v39, type metadata accessor for Participant.State);
        v46 = 1;
        v45 = v125;
      }

      __swift_storeEnumTagSinglePayload(v45, v46, 1, v37);
      _s15ConversationKit11ParticipantVWOcTm_6(v136, v38, type metadata accessor for Participant.State);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v48 = v120;
      if (EnumCaseMultiPayload == 4)
      {
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
        v50 = *(v49 + 48);
        v51 = (v38 + *(v49 + 64));
        v52 = outlined consume of Participant.CopresenceInfo?(*v51, v51[1], v51[2], v51[3], v51[4], v51[5], v51[6], v51[7]);
        (*v124)(v48, v38, v37, v52);
        v45 = v125;
        outlined destroy of Participant.MediaInfo(v38 + v50);
        v53 = 0;
      }

      else
      {
        _s15ConversationKit11ParticipantVWOhTm_16(v38, type metadata accessor for Participant.State);
        v53 = 1;
      }

      __swift_storeEnumTagSinglePayload(v48, v53, 1, v37);
      v54 = *(v121 + 48);
      v55 = v48;
      v56 = v126;
      outlined init with take of Date?(v45, v126);
      outlined init with take of Date?(v55, v56 + v54);
      LODWORD(v55) = __swift_getEnumTagSinglePayload(v56, 1, v37);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v56 + v54, 1, v37);
      if (v55 == 1)
      {
        break;
      }

      if (EnumTagSinglePayload != 1)
      {
        v73 = *v124;
        v74 = v110;
        v75 = v126;
        (*v124)(v110, v126, v37);
        v76 = v75 + v54;
        v77 = v111;
        v73(v111, v76, v37);
        v78 = v114;
        v79 = static Date.< infix(_:_:)();
        v80 = *v78;
        (*v78)(v77, v37);
        v80(v74, v37);
        v39 = v123;
        goto LABEL_34;
      }

      (*v114)(v126, v37);
      _s15ConversationKit11ParticipantVWOhTm_16(v136, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOhTm_16(v128, type metadata accessor for Participant);
      v38 = v122;
      v39 = v123;
LABEL_35:
      if (!v118)
      {
        __break(1u);
        return;
      }

      v97 = v35;
      v98 = v130;
      v99 = v119;
      outlined init with take of Participant(v130, v119);
      v100 = v129;
      swift_arrayInitWithTakeFrontToBack();
      outlined init with take of Participant(v99, v100);
      v129 = v100 + v117;
      v130 = v98 + v117;
      v35 = v97 + 1;
      if (v97 == -1)
      {
        goto LABEL_39;
      }
    }

    v58 = v127;
    if (EnumTagSinglePayload == 1)
    {
      v59 = *(v128 + *(v127 + 28));
      if (v59)
      {
        v60 = v59;
        v61 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v60);
        if (v62)
        {
          v63 = v61;
          v64 = v62;
          if ([v60 shouldHideContact])
          {
            v65 = v113;
            PersonNameComponents.init()();
            PersonNameComponents.givenName.setter();
            PersonNameComponents.familyName.setter();
            if (one-time initialization token for initials != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v66 = static NSPersonNameComponentsFormatter.initials;
            isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
            v68 = [v66 stringFromPersonNameComponents_];

            v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v71 = v70;

            (*v108)(v65, v109);
            v133 = v69;
            v134 = v71;
            lazy protocol witness table accessor for type String and conformance String();
            StringProtocol.localizedUppercase.getter();

            v72 = 0;
            v37 = v112;
            v58 = v127;
LABEL_24:

            v131 = v63;
            v132 = v64;
            v82 = *(v136 + *(v58 + 28));
            v39 = v123;
            if (v82)
            {
              v83 = v82;
              v84 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v83);
              if (v85)
              {
                v86 = v84;
                v87 = v85;
                if ([v83 shouldHideContact])
                {
                  PersonNameComponents.init()();
                  PersonNameComponents.givenName.setter();
                  PersonNameComponents.familyName.setter();
                  if (one-time initialization token for initials != -1)
                  {
                    swift_once();
                  }

                  swift_beginAccess();
                  v88 = static NSPersonNameComponentsFormatter.initials;
                  v89 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
                  v90 = [v88 stringFromPersonNameComponents_];

                  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v93 = v92;

                  (*v108)(v113, v109);
                  v133 = v91;
                  v134 = v93;
                  lazy protocol witness table accessor for type String and conformance String();
                  StringProtocol.localizedUppercase.getter();

                  v94 = 0;
                  v37 = v112;
                  v39 = v123;
                  goto LABEL_33;
                }
              }

              else
              {
              }
            }

            v95 = v116;
            _s15ConversationKit11ParticipantVWOcTm_6(v136, v116, type metadata accessor for Participant);

            ParticipantContactDetailsCache.contactDetails(for:)();

            _s15ConversationKit11ParticipantVWOhTm_16(v95, type metadata accessor for Participant);
            v94 = v133;
            v86 = v134;
            v87 = v135;
LABEL_33:

            v133 = v86;
            v134 = v87;
            lazy protocol witness table accessor for type String and conformance String();
            v96 = StringProtocol.localizedCompare<A>(_:)();

            v79 = v96 == 1;
LABEL_34:
            _s15ConversationKit11ParticipantVWOhTm_16(v136, type metadata accessor for Participant);
            _s15ConversationKit11ParticipantVWOhTm_16(v128, type metadata accessor for Participant);
            v38 = v122;
            if ((v79 & 1) == 0)
            {
              goto LABEL_39;
            }

            goto LABEL_35;
          }
        }

        else
        {
        }
      }

      v81 = v116;
      _s15ConversationKit11ParticipantVWOcTm_6(v128, v116, type metadata accessor for Participant);

      ParticipantContactDetailsCache.contactDetails(for:)();

      _s15ConversationKit11ParticipantVWOhTm_16(v81, type metadata accessor for Participant);
      v72 = v133;
      v63 = v134;
      v64 = v135;
      goto LABEL_24;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v126 + v54, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    _s15ConversationKit11ParticipantVWOhTm_16(v136, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOhTm_16(v128, type metadata accessor for Participant);
LABEL_39:
    a3 = v107 + 1;
    v34 = v106 + v102;
    v35 = v105 - 1;
    v36 = v104 + v102;
    if (v107 + 1 != v103)
    {
      continue;
    }

    break;
  }
}

{
  v8 = type metadata accessor for IndexPath();
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v31 - v11;
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v36 = v19;
      v37 = a3;
      v34 = v21;
      v35 = v20;
      v22 = v19;
      do
      {
        v23 = v44;
        v24 = v42;
        (v42)(v44, v21, v8, v14);
        v25 = v45;
        v24(v45, v22, v8);
        _s10Foundation4UUIDVACSQAAWlTm_1(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C48]);
        v26 = dispatch thunk of static Comparable.< infix(_:_:)();
        v27 = *v18;
        (*v18)(v25, v8);
        v27(v23, v8);
        if ((v26 & 1) == 0)
        {
          break;
        }

        if (!v40)
        {
          __break(1u);
          return;
        }

        v28 = *v39;
        v29 = v41;
        (*v39)(v41, v21, v8);
        swift_arrayInitWithTakeFrontToBack();
        v28(v22, v29, v8);
        v22 += v38;
        v21 += v38;
      }

      while (!__CFADD__(v20++, 1));
      a3 = v37 + 1;
      v19 = &v36[v32];
      v20 = v35 - 1;
      v21 = v34 + v32;
      if (v37 + 1 != v33)
      {
        continue;
      }

      break;
    }
  }
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    type metadata accessor for UIWindowLevel(0);
    v7 = v6 + 8 * v4 - 8;
    v8 = a1 - v4;
    while (2)
    {
      v9 = *(v6 + 8 * v4);
      v17 = v8;
      v18 = v7;
      do
      {
        v10 = *v7;
        v11 = v9;
        v12 = v10;
        [v11 windowLevel];
        [v12 windowLevel];
        lazy protocol witness table accessor for type UIWindowLevel and conformance UIWindowLevel();
        v13 = dispatch thunk of static Comparable.< infix(_:_:)();

        if ((v13 & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return;
        }

        v14 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v14;
        v7 -= 8;
      }

      while (!__CFADD__(v8++, 1));
      ++v4;
      v7 = v18 + 8;
      v8 = v17 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

{
  v83 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v83);
  v79 = &v61[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v61[-v10];
  v77 = type metadata accessor for Date();
  v12 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v73 = &v61[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v61[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v61[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61[-v19];
  v71 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v61[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v61[-v23];
  MEMORY[0x1EEE9AC00](v25);
  v84 = &v61[-v27];
  v63 = a2;
  if (a3 != a2)
  {
    v28 = v20;
    v29 = *a4;
    v30 = *(v26 + 72);
    v31 = (v12 + 32);
    v74 = (v12 + 8);
    v32 = v29 + v30 * (a3 - 1);
    v68 = -v30;
    v69 = v29;
    v33 = a1 - a3;
    v62 = v30;
    v34 = v29 + v30 * a3;
    v75 = v31;
    v76 = v11;
    while (2)
    {
      v66 = v32;
      v67 = a3;
      v64 = v34;
      v65 = v33;
      v35 = v33;
      v85 = v32;
      while (1)
      {
        v82 = v34;
        v36 = v34;
        v37 = v84;
        _s15ConversationKit11ParticipantVWOcTm_17(v36, v84);
        _s15ConversationKit11ParticipantVWOcTm_17(v85, v24);
        _s15ConversationKit11ParticipantVWOcTm_17(v37, v11);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          _s15ConversationKit11ParticipantVWOhTm_18(v11, type metadata accessor for Participant.State);
          goto LABEL_12;
        }

        v80 = v35;
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
        v39 = v77;
        v81 = *(v38 + 48);
        v40 = v24;
        v41 = v28;
        v42 = v11;
        v43 = &v11[*(v38 + 64)];
        v44 = outlined consume of Participant.CopresenceInfo?(*v43, v43[1], v43[2], v43[3], v43[4], v43[5], v43[6], v43[7]);
        v45 = *v75;
        v46 = v78;
        (*v75)(v78, v42, v39, v44);
        v47 = &v42[v81];
        v28 = v41;
        v24 = v40;
        outlined destroy of Participant.MediaInfo(v47);
        v45(v28, v46, v39);
        v48 = v79;
        _s15ConversationKit11ParticipantVWOcTm_17(v40, v79);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          break;
        }

        v49 = *(v38 + 48);
        v50 = &v48[*(v38 + 64)];
        v51 = outlined consume of Participant.CopresenceInfo?(*v50, v50[1], v50[2], v50[3], v50[4], v50[5], v50[6], v50[7]);
        v52 = v73;
        (v45)(v73, v48, v39, v51);
        outlined destroy of Participant.MediaInfo(&v48[v49]);
        v53 = v72;
        v54 = v52;
        v24 = v40;
        v45(v72, v54, v39);
        v55 = static Date.< infix(_:_:)();
        v56 = *v74;
        (*v74)(v53, v39);
        v56(v28, v39);
        _s15ConversationKit11ParticipantVWOhTm_18(v40, type metadata accessor for Participant);
        _s15ConversationKit11ParticipantVWOhTm_18(v84, type metadata accessor for Participant);
        v11 = v76;
        v57 = v82;
        if (v55)
        {
          if (!v69)
          {
            __break(1u);
            return;
          }

          v58 = v80;
          v59 = v70;
          _s15ConversationKit11ParticipantVWObTm_8(v82, v70);
          v60 = v85;
          swift_arrayInitWithTakeFrontToBack();
          _s15ConversationKit11ParticipantVWObTm_8(v59, v60);
          v85 = v60 + v68;
          v34 = v57 + v68;
          v35 = v58 + 1;
          if (v58 != -1)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      _s15ConversationKit11ParticipantVWOhTm_18(v48, type metadata accessor for Participant.State);
      (*v74)(v28, v39);
      v11 = v76;
LABEL_12:
      _s15ConversationKit11ParticipantVWOhTm_18(v24, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOhTm_18(v84, type metadata accessor for Participant);
LABEL_13:
      a3 = v67 + 1;
      v32 = v66 + v62;
      v33 = v65 - 1;
      v34 = v64 + v62;
      if (v67 + 1 != v63)
      {
        continue;
      }

      break;
    }
  }
}

{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  v31 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v36 = -v18;
    v37 = v17;
    v20 = a1 - a3;
    v30 = v18;
    v21 = v17 + v18 * a3;
    while (2)
    {
      v34 = v19;
      v35 = a3;
      v32 = v21;
      v33 = v20;
      v22 = v20;
      do
      {
        outlined init with copy of Participant?(v21, v16, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
        outlined init with copy of Participant?(v19, v12, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
        v23 = *(v8 + 36);
        v24 = *(v8 + 48);
        v25 = *&v16[v23] * *&v16[v24];
        v26 = *&v12[v23] * *&v12[v24];
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
        if (v26 >= v25)
        {
          break;
        }

        if (!v37)
        {
          __break(1u);
          return;
        }

        v27 = v38;
        outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v21, v38, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
        swift_arrayInitWithTakeFrontToBack();
        outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v27, v19, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
        v19 += v36;
        v21 += v36;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v35 + 1;
      v19 = v34 + v30;
      v20 = v33 - 1;
      v21 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }
}

{
  v37 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - v11;
  v32 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v44 = *a4;
    v14 = v44 + 40 * a3;
    v15 = a1 - a3;
    while (2)
    {
      v34 = v14;
      v35 = a3;
      v33 = v15;
      while (1)
      {
        outlined init with copy of IDSLookupManager(v14, &v41);
        outlined init with copy of IDSLookupManager(v14 - 40, v38);
        v16 = v42;
        v17 = v43;
        __swift_project_boxed_opaque_existential_1(&v41, v42);
        v18 = (*(v17 + 104))(v16, v17);
        if (!v18)
        {
          break;
        }

        v19 = v18;
        v21 = v39;
        v20 = v40;
        __swift_project_boxed_opaque_existential_1(v38, v39);
        v22 = (*(v20 + 104))(v21, v20);
        if (v22)
        {
          v23 = v22;
          v24 = [v19 timestamp];
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v25 = [v23 timestamp];
          v26 = v36;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          LOBYTE(v25) = static Date.> infix(_:_:)();
          v27 = *v13;
          v28 = v37;
          (*v13)(v26, v37);
          v27(v12, v28);
          __swift_destroy_boxed_opaque_existential_1(v38);
          __swift_destroy_boxed_opaque_existential_1(&v41);
          if ((v25 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v38);
          __swift_destroy_boxed_opaque_existential_1(&v41);
        }

        if (!v44)
        {
          __break(1u);
          return;
        }

        outlined init with take of TapInteractionHandler(v14, &v41);
        v29 = *(v14 - 24);
        *v14 = *(v14 - 40);
        *(v14 + 16) = v29;
        *(v14 + 32) = *(v14 - 8);
        outlined init with take of TapInteractionHandler(&v41, v14 - 40);
        v14 -= 40;
        if (__CFADD__(v15++, 1))
        {
          goto LABEL_14;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v38);
      __swift_destroy_boxed_opaque_existential_1(&v41);
LABEL_14:
      a3 = v35 + 1;
      v14 = v34 + 40;
      v15 = v33 - 1;
      if (v35 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }
}

{
  v34 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v31 = v19;
      v32 = a3;
      v29 = v22;
      v30 = v21;
      v23 = v34;
      do
      {
        _s15ConversationKit11ParticipantVWOcTm_6(v22, v16, type metadata accessor for Participant);
        _s15ConversationKit11ParticipantVWOcTm_6(v19, v12, type metadata accessor for Participant);
        v24 = MEMORY[0x1BFB1A420](&v16[*(v23 + 20)], &v12[*(v23 + 20)]);
        _s15ConversationKit11ParticipantVWOhTm_16(v12, type metadata accessor for Participant);
        _s15ConversationKit11ParticipantVWOhTm_16(v16, type metadata accessor for Participant);
        if ((v24 & 1) == 0)
        {
          break;
        }

        if (!v33)
        {
          __break(1u);
          return;
        }

        outlined init with take of Participant(v22, v9);
        v23 = v34;
        swift_arrayInitWithTakeFrontToBack();
        outlined init with take of Participant(v9, v19);
        v19 += v20;
        v22 += v20;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v32 + 1;
      v19 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v103 = a1;
  v9 = type metadata accessor for CaptionSectioner.Caption(0);
  v111 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v101 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v116 = &v101 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v101 - v16;
  v113 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v5 = *v103;
    if (!*v103)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v95 = v20 + 16;
      v96 = *(v20 + 2);
      for (i = v20; v96 >= 2; v20 = i)
      {
        if (!*v113)
        {
          goto LABEL_139;
        }

        v97 = &v20[16 * v96];
        v98 = *v97;
        v20 = &v95[2 * v96];
        v99 = *(v20 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v113 + *(v111 + 72) * *v97, *v113 + *(v111 + 72) * *v20, *v113 + *(v111 + 72) * v99, v5);
        if (v6)
        {
          break;
        }

        if (v99 < v98)
        {
          goto LABEL_127;
        }

        if (v96 - 2 >= *v95)
        {
          goto LABEL_128;
        }

        *v97 = v98;
        *(v97 + 1) = v99;
        v100 = *v95 - v96;
        if (*v95 < v96)
        {
          goto LABEL_129;
        }

        v96 = *v95 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v20 + 16, v100, v20);
        *v95 = v96;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
    goto LABEL_103;
  }

  v102 = a4;
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v117 = v9;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    i = v20;
    v104 = v19;
    if (v19 + 1 < v18)
    {
      v23 = *v113;
      v24 = *(v111 + 72);
      v25 = v19;
      v26 = *v113 + v24 * v22;
      v110 = v18;
      outlined init with copy of Participant(v26, v17);
      v27 = v23 + v24 * v25;
      v5 = v116;
      outlined init with copy of Participant(v27, v116);
      LODWORD(v109) = static Date.< infix(_:_:)();
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      v28 = v110;
      v29 = v104 + 2;
      v112 = v24;
      v20 = (v23 + v24 * (v104 + 2));
      while (1)
      {
        v30 = v29;
        if (++v22 >= v28)
        {
          break;
        }

        outlined init with copy of Participant(v20, v17);
        v5 = v116;
        outlined init with copy of Participant(v26, v116);
        v31 = static Date.< infix(_:_:)() & 1;
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        v20 += v112;
        v26 += v112;
        v29 = v30 + 1;
        v28 = v110;
        if ((v109 & 1) != v31)
        {
          goto LABEL_9;
        }
      }

      v22 = v28;
LABEL_9:
      if (v109)
      {
        v21 = v104;
        if (v22 < v104)
        {
          goto LABEL_133;
        }

        if (v104 >= v22)
        {
          v20 = i;
          goto LABEL_32;
        }

        v101 = v6;
        if (v28 >= v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = v28;
        }

        v33 = v112 * (v32 - 1);
        v34 = v104;
        v35 = v112 * v32;
        v36 = v104 * v112;
        v37 = v22;
        v20 = i;
        do
        {
          if (v34 != --v37)
          {
            v5 = v22;
            v38 = *v113;
            if (!*v113)
            {
              goto LABEL_140;
            }

            _s15ConversationKit11ParticipantVWObTm_0(v38 + v36, v107);
            v39 = v36 < v33 || v38 + v36 >= (v38 + v35);
            if (v39)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v36 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            _s15ConversationKit11ParticipantVWObTm_0(v107, v38 + v33);
            v20 = i;
            v22 = v5;
          }

          ++v34;
          v33 -= v112;
          v35 -= v112;
          v36 += v112;
        }

        while (v34 < v37);
        v6 = v101;
      }

      else
      {
        v20 = i;
      }

      v21 = v104;
    }

LABEL_32:
    v40 = v113[1];
    if (v22 < v40)
    {
      if (__OFSUB__(v22, v21))
      {
        goto LABEL_132;
      }

      if (v22 - v21 < v102)
      {
        break;
      }
    }

LABEL_48:
    if (v22 < v21)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
      v20 = v93;
    }

    v51 = *(v20 + 2);
    v50 = *(v20 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v50 > 1, v51 + 1, 1, v20);
      v20 = v94;
    }

    *(v20 + 2) = v52;
    v53 = v20 + 32;
    v54 = &v20[16 * v51 + 32];
    *v54 = v104;
    *(v54 + 1) = v22;
    v110 = *v103;
    if (!v110)
    {
      goto LABEL_141;
    }

    v112 = v22;
    if (v51)
    {
      i = v20;
      while (1)
      {
        v55 = v52 - 1;
        v56 = &v53[16 * v52 - 16];
        v57 = &v20[16 * v52];
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_69:
          if (v61)
          {
            goto LABEL_118;
          }

          v73 = *v57;
          v72 = *(v57 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_121;
          }

          v77 = *(v56 + 1);
          v78 = v77 - *v56;
          if (__OFSUB__(v77, *v56))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v75, v78))
          {
            goto LABEL_126;
          }

          if (v75 + v78 >= v60)
          {
            if (v60 < v78)
            {
              v55 = v52 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v52 < 2)
        {
          goto LABEL_120;
        }

        v80 = *v57;
        v79 = *(v57 + 1);
        v68 = __OFSUB__(v79, v80);
        v75 = v79 - v80;
        v76 = v68;
LABEL_84:
        if (v76)
        {
          goto LABEL_123;
        }

        v82 = *v56;
        v81 = *(v56 + 1);
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_125;
        }

        if (v83 < v75)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v55 - 1 >= v52)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v113)
        {
          goto LABEL_138;
        }

        v5 = v17;
        v87 = &v53[16 * v55 - 16];
        v88 = *v87;
        v89 = v53;
        v90 = v55;
        v20 = &v53[16 * v55];
        v91 = *(v20 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v113 + *(v111 + 72) * *v87, *v113 + *(v111 + 72) * *v20, *v113 + *(v111 + 72) * v91, v110);
        if (v6)
        {
          goto LABEL_111;
        }

        if (v91 < v88)
        {
          goto LABEL_113;
        }

        v6 = *(i + 2);
        if (v90 > v6)
        {
          goto LABEL_114;
        }

        *v87 = v88;
        *(v87 + 1) = v91;
        if (v90 >= v6)
        {
          goto LABEL_115;
        }

        v52 = v6 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v20 + 16, v6 - 1 - v90, v20);
        v20 = i;
        *(i + 2) = v6 - 1;
        v92 = v6 > 2;
        v6 = 0;
        v53 = v89;
        v17 = v5;
        if (!v92)
        {
          goto LABEL_98;
        }
      }

      v62 = &v53[16 * v52];
      v63 = *(v62 - 8);
      v64 = *(v62 - 7);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_116;
      }

      v67 = *(v62 - 6);
      v66 = *(v62 - 5);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_117;
      }

      v69 = *(v57 + 1);
      v70 = v69 - *v57;
      if (__OFSUB__(v69, *v57))
      {
        goto LABEL_119;
      }

      v68 = __OFADD__(v60, v70);
      v71 = v60 + v70;
      if (v68)
      {
        goto LABEL_122;
      }

      if (v71 >= v65)
      {
        v85 = *v56;
        v84 = *(v56 + 1);
        v68 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v68)
        {
          goto LABEL_130;
        }

        if (v60 < v86)
        {
          v55 = v52 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v19 = v112;
    v18 = v113[1];
    if (v112 >= v18)
    {
      goto LABEL_101;
    }
  }

  v41 = v21 + v102;
  if (__OFADD__(v21, v102))
  {
    goto LABEL_134;
  }

  if (v41 >= v40)
  {
    v41 = v113[1];
  }

  if (v41 < v21)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v22 == v41)
  {
    goto LABEL_48;
  }

  v101 = v6;
  v42 = *v113;
  v43 = *(v111 + 72);
  v44 = *v113 + v43 * (v22 - 1);
  v45 = -v43;
  v46 = v21 - v22;
  v105 = v43;
  v106 = v41;
  v47 = v42 + v22 * v43;
LABEL_41:
  v112 = v22;
  v108 = v47;
  v109 = v46;
  v110 = v44;
  v48 = v44;
  while (1)
  {
    outlined init with copy of Participant(v47, v17);
    v5 = v116;
    outlined init with copy of Participant(v48, v116);
    v49 = static Date.< infix(_:_:)();
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    if ((v49 & 1) == 0)
    {
LABEL_46:
      v22 = v112 + 1;
      v44 = v110 + v105;
      v46 = v109 - 1;
      v47 = v108 + v105;
      if (v112 + 1 == v106)
      {
        v22 = v106;
        v6 = v101;
        v20 = i;
        v21 = v104;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v42)
    {
      break;
    }

    v5 = v115;
    _s15ConversationKit11ParticipantVWObTm_0(v47, v115);
    swift_arrayInitWithTakeFrontToBack();
    _s15ConversationKit11ParticipantVWObTm_0(v5, v48);
    v48 += v45;
    v47 += v45;
    v39 = __CFADD__(v46++, 1);
    if (v39)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

{
  v6 = v4;
  v102 = a1;
  v9 = type metadata accessor for TranscriptionViewModel.Caption(0);
  v111 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v106 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v99 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v116 = &v99 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v99 - v16;
  v113 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v5 = *v102;
    if (!*v102)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v93 = v20 + 16;
      v94 = *(v20 + 2);
      for (i = v20; v94 >= 2; v20 = i)
      {
        if (!*v113)
        {
          goto LABEL_139;
        }

        v95 = &v20[16 * v94];
        v96 = *v95;
        v20 = &v93[2 * v94];
        v97 = *(v20 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v113 + *(v111 + 72) * *v95, *v113 + *(v111 + 72) * *v20, *v113 + *(v111 + 72) * v97, v5);
        if (v6)
        {
          break;
        }

        if (v97 < v96)
        {
          goto LABEL_127;
        }

        if (v94 - 2 >= *v93)
        {
          goto LABEL_128;
        }

        *v95 = v96;
        *(v95 + 1) = v97;
        v98 = *v93 - v94;
        if (*v93 < v94)
        {
          goto LABEL_129;
        }

        v94 = *v93 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v20 + 16, v98, v20);
        *v93 = v94;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
    goto LABEL_103;
  }

  v101 = a4;
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v117 = v9;
  v107 = &v99 - v16;
  while (1)
  {
    v21 = v19++;
    i = v20;
    v103 = v21;
    if (v19 < v18)
    {
      v22 = *v113;
      v5 = *(v111 + 72);
      v23 = v21;
      v24 = *v113 + v5 * v19;
      v110 = v18;
      outlined init with copy of Participant.Caption(v24, v17, type metadata accessor for TranscriptionViewModel.Caption);
      v25 = v22 + v5 * v23;
      v26 = v116;
      outlined init with copy of Participant.Caption(v25, v116, type metadata accessor for TranscriptionViewModel.Caption);
      LODWORD(v109) = static Date.< infix(_:_:)();
      outlined destroy of Participant.Caption(v26, type metadata accessor for TranscriptionViewModel.Caption);
      outlined destroy of Participant.Caption(v17, type metadata accessor for TranscriptionViewModel.Caption);
      v27 = v110;
      v28 = v103 + 2;
      v112 = v5;
      v20 = (v22 + v5 * (v103 + 2));
      while (1)
      {
        v29 = v28;
        if (++v19 >= v27)
        {
          break;
        }

        outlined init with copy of Participant.Caption(v20, v17, type metadata accessor for TranscriptionViewModel.Caption);
        v5 = v116;
        outlined init with copy of Participant.Caption(v24, v116, type metadata accessor for TranscriptionViewModel.Caption);
        v30 = static Date.< infix(_:_:)() & 1;
        outlined destroy of Participant.Caption(v5, type metadata accessor for TranscriptionViewModel.Caption);
        outlined destroy of Participant.Caption(v17, type metadata accessor for TranscriptionViewModel.Caption);
        v20 += v112;
        v24 += v112;
        v28 = v29 + 1;
        v27 = v110;
        if ((v109 & 1) != v30)
        {
          goto LABEL_9;
        }
      }

      v19 = v27;
LABEL_9:
      if (v109)
      {
        v21 = v103;
        if (v19 < v103)
        {
          goto LABEL_133;
        }

        if (v103 >= v19)
        {
          v20 = i;
          goto LABEL_32;
        }

        v100 = v6;
        if (v27 >= v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = v27;
        }

        v32 = v112 * (v31 - 1);
        v33 = v103;
        v34 = v112 * v31;
        v35 = v103 * v112;
        v36 = v19;
        v20 = i;
        do
        {
          if (v33 != --v36)
          {
            v5 = *v113;
            if (!*v113)
            {
              goto LABEL_140;
            }

            outlined init with take of TranscriptionViewModel.Caption(v5 + v35, v106);
            v37 = v35 < v32 || v5 + v35 >= v5 + v34;
            if (v37)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v35 != v32)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            outlined init with take of TranscriptionViewModel.Caption(v106, v5 + v32);
            v20 = i;
          }

          ++v33;
          v32 -= v112;
          v34 -= v112;
          v35 += v112;
        }

        while (v33 < v36);
        v6 = v100;
      }

      else
      {
        v20 = i;
      }

      v21 = v103;
    }

LABEL_32:
    v38 = v113[1];
    if (v19 < v38)
    {
      if (__OFSUB__(v19, v21))
      {
        goto LABEL_132;
      }

      if (v19 - v21 < v101)
      {
        break;
      }
    }

LABEL_48:
    if (v19 < v21)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
      v20 = v91;
    }

    v49 = *(v20 + 2);
    v48 = *(v20 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v48 > 1, v49 + 1, 1, v20);
      v20 = v92;
    }

    *(v20 + 2) = v50;
    v51 = v20 + 32;
    v52 = &v20[16 * v49 + 32];
    *v52 = v103;
    *(v52 + 1) = v19;
    v112 = *v102;
    if (!v112)
    {
      goto LABEL_141;
    }

    v53 = v17;
    if (v49)
    {
      i = v20;
      while (1)
      {
        v54 = v50 - 1;
        v55 = &v51[16 * v50 - 16];
        v56 = &v20[16 * v50];
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v57 = *(v20 + 4);
          v58 = *(v20 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_69:
          if (v60)
          {
            goto LABEL_118;
          }

          v72 = *v56;
          v71 = *(v56 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_121;
          }

          v76 = *(v55 + 1);
          v77 = v76 - *v55;
          if (__OFSUB__(v76, *v55))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v74, v77))
          {
            goto LABEL_126;
          }

          if (v74 + v77 >= v59)
          {
            if (v59 < v77)
            {
              v54 = v50 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v50 < 2)
        {
          goto LABEL_120;
        }

        v79 = *v56;
        v78 = *(v56 + 1);
        v67 = __OFSUB__(v78, v79);
        v74 = v78 - v79;
        v75 = v67;
LABEL_84:
        if (v75)
        {
          goto LABEL_123;
        }

        v81 = *v55;
        v80 = *(v55 + 1);
        v67 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v67)
        {
          goto LABEL_125;
        }

        if (v82 < v74)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v54 - 1 >= v50)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v113)
        {
          goto LABEL_138;
        }

        v86 = &v51[16 * v54 - 16];
        v87 = *v86;
        v88 = v51;
        v5 = v54;
        v20 = &v51[16 * v54];
        v89 = *(v20 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v113 + *(v111 + 72) * *v86, *v113 + *(v111 + 72) * *v20, *v113 + *(v111 + 72) * v89, v112);
        if (v6)
        {
          goto LABEL_111;
        }

        if (v89 < v87)
        {
          goto LABEL_113;
        }

        v6 = *(i + 2);
        if (v5 > v6)
        {
          goto LABEL_114;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        if (v5 >= v6)
        {
          goto LABEL_115;
        }

        v50 = v6 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v20 + 16, v6 - 1 - v5, v20);
        v20 = i;
        *(i + 2) = v6 - 1;
        v90 = v6 > 2;
        v6 = 0;
        v53 = v107;
        v51 = v88;
        if (!v90)
        {
          goto LABEL_98;
        }
      }

      v61 = &v51[16 * v50];
      v62 = *(v61 - 8);
      v63 = *(v61 - 7);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_116;
      }

      v66 = *(v61 - 6);
      v65 = *(v61 - 5);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_117;
      }

      v68 = *(v56 + 1);
      v69 = v68 - *v56;
      if (__OFSUB__(v68, *v56))
      {
        goto LABEL_119;
      }

      v67 = __OFADD__(v59, v69);
      v70 = v59 + v69;
      if (v67)
      {
        goto LABEL_122;
      }

      if (v70 >= v64)
      {
        v84 = *v55;
        v83 = *(v55 + 1);
        v67 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v67)
        {
          goto LABEL_130;
        }

        if (v59 < v85)
        {
          v54 = v50 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v18 = v113[1];
    v17 = v53;
    if (v19 >= v18)
    {
      goto LABEL_101;
    }
  }

  v39 = v21 + v101;
  if (__OFADD__(v21, v101))
  {
    goto LABEL_134;
  }

  if (v39 >= v38)
  {
    v39 = v113[1];
  }

  if (v39 < v21)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v19 == v39)
  {
    goto LABEL_48;
  }

  v100 = v6;
  v40 = *v113;
  v41 = *(v111 + 72);
  v5 = *v113 + v41 * (v19 - 1);
  v42 = -v41;
  v43 = v21 - v19;
  v104 = v41;
  v105 = v39;
  v44 = v40 + v19 * v41;
LABEL_41:
  v112 = v19;
  v108 = v44;
  v109 = v43;
  v110 = v5;
  while (1)
  {
    outlined init with copy of Participant.Caption(v44, v17, type metadata accessor for TranscriptionViewModel.Caption);
    v45 = v116;
    outlined init with copy of Participant.Caption(v5, v116, type metadata accessor for TranscriptionViewModel.Caption);
    v46 = static Date.< infix(_:_:)();
    outlined destroy of Participant.Caption(v45, type metadata accessor for TranscriptionViewModel.Caption);
    outlined destroy of Participant.Caption(v17, type metadata accessor for TranscriptionViewModel.Caption);
    if ((v46 & 1) == 0)
    {
LABEL_46:
      v19 = v112 + 1;
      v5 = v110 + v104;
      v43 = v109 - 1;
      v44 = v108 + v104;
      if (v112 + 1 == v105)
      {
        v19 = v105;
        v6 = v100;
        v20 = i;
        v21 = v103;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v40)
    {
      break;
    }

    v47 = v115;
    outlined init with take of TranscriptionViewModel.Caption(v44, v115);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of TranscriptionViewModel.Caption(v47, v5);
    v5 += v42;
    v44 += v42;
    v37 = __CFADD__(v43++, 1);
    if (v37)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

{
  v122 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
  v131 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v126 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v135 = &v119 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v137 = &v119 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v136 = &v119 - v14;
  v132 = a3;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v19 = *v122;
    if (!*v122)
    {
      goto LABEL_140;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_100:
      v111 = v17 + 16;
      v112 = *(v17 + 2);
      while (v112 >= 2)
      {
        if (!*v132)
        {
          goto LABEL_137;
        }

        v113 = v17;
        v114 = &v17[16 * v112];
        v17 = *v114;
        v115 = &v111[2 * v112];
        v116 = *(v115 + 1);
        v117 = v133;
        specialized _merge<A>(low:mid:high:buffer:by:)(*v132 + *(v131 + 72) * *v114, *v132 + *(v131 + 72) * *v115, *v132 + *(v131 + 72) * v116, v19);
        v133 = v117;
        if (v117)
        {
          break;
        }

        if (v116 < v17)
        {
          goto LABEL_125;
        }

        if (v112 - 2 >= *v111)
        {
          goto LABEL_126;
        }

        *v114 = v17;
        *(v114 + 1) = v116;
        v118 = *v111 - v112;
        if (*v111 < v112)
        {
          goto LABEL_127;
        }

        v112 = *v111 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v115 + 16, v118, v115);
        *v111 = v112;
        v17 = v113;
      }

LABEL_108:

      return;
    }

LABEL_134:
    v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
    goto LABEL_100;
  }

  v138 = v13;
  v120 = a4;
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = v16;
    v19 = v16 + 1;
    v123 = v16;
    if (v16 + 1 < v15)
    {
      v121 = v17;
      v20 = v16;
      v21 = *v132;
      v22 = *(v131 + 72);
      v23 = v16 + 1;
      v19 = *v132 + v22 * v19;
      v24 = v136;
      v130 = v15;
      outlined init with copy of Participant?(v19, v136, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      v25 = v137;
      outlined init with copy of Participant?(v21 + v22 * v20, v137, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      v26 = *(v138 + 36);
      v27 = *(v138 + 48);
      v28 = *(v24 + v26) * *(v24 + v27);
      v29 = *(v25 + v26) * *(v25 + v27);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      v30 = v130;
      v31 = (v20 + 2);
      v134 = v22;
      v32 = v21 + v22 * (v20 + 2);
      while (1)
      {
        v17 = v31;
        if (v23 + 1 >= v30)
        {
          break;
        }

        ++v23;
        v33 = v136;
        outlined init with copy of Participant?(v32, v136, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
        v34 = v137;
        outlined init with copy of Participant?(v19, v137, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
        v35 = *(v138 + 36);
        v36 = *(v138 + 48);
        v37 = *(v33 + v35) * *(v33 + v36);
        v38 = *(v34 + v35) * *(v34 + v36);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v34, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v33, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
        v30 = v130;
        v32 += v134;
        v19 += v134;
        v31 = v17 + 1;
        if (v29 < v28 == v38 >= v37)
        {
          goto LABEL_9;
        }
      }

      v23 = v30;
LABEL_9:
      if (v29 < v28)
      {
        v18 = v123;
        if (v23 < v123)
        {
          goto LABEL_131;
        }

        v19 = v23;
        if (v123 >= v23)
        {
          v17 = v121;
          goto LABEL_30;
        }

        if (v30 >= v17)
        {
          v39 = v17;
        }

        else
        {
          v39 = v30;
        }

        v40 = v134 * (v39 - 1);
        v41 = v23;
        v42 = v123;
        v43 = v134 * v39;
        v44 = v123 * v134;
        do
        {
          if (v42 != --v41)
          {
            v45 = *v132;
            if (!*v132)
            {
              goto LABEL_138;
            }

            outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v45 + v44, v126, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
            v46 = v44 < v40 || v45 + v44 >= (v45 + v43);
            if (v46)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v44 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v126, v45 + v40, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
          }

          ++v42;
          v40 -= v134;
          v43 -= v134;
          v44 += v134;
        }

        while (v42 < v41);
      }

      v17 = v121;
      v19 = v23;
      v18 = v123;
    }

LABEL_30:
    v47 = v132[1];
    if (v19 < v47)
    {
      if (__OFSUB__(v19, v18))
      {
        goto LABEL_130;
      }

      if (v19 - v18 < v120)
      {
        break;
      }
    }

LABEL_46:
    if (v19 < v18)
    {
      goto LABEL_129;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v130 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
      v17 = v109;
    }

    v65 = *(v17 + 2);
    v64 = *(v17 + 3);
    v66 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v64 > 1, v65 + 1, 1, v17);
      v17 = v110;
    }

    *(v17 + 2) = v66;
    v67 = v17 + 32;
    v68 = &v17[16 * v65 + 32];
    v69 = v130;
    *v68 = v123;
    *(v68 + 1) = v69;
    v70 = *v122;
    if (!*v122)
    {
      goto LABEL_139;
    }

    if (v65)
    {
      while (1)
      {
        v71 = v66 - 1;
        v72 = &v67[16 * v66 - 16];
        v73 = &v17[16 * v66];
        if (v66 >= 4)
        {
          break;
        }

        v74 = v133;
        if (v66 == 3)
        {
          v75 = *(v17 + 4);
          v76 = *(v17 + 5);
          v85 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          v78 = v85;
LABEL_66:
          if (v78)
          {
            goto LABEL_116;
          }

          v90 = *v73;
          v89 = *(v73 + 1);
          v91 = __OFSUB__(v89, v90);
          v92 = v89 - v90;
          v93 = v91;
          if (v91)
          {
            goto LABEL_119;
          }

          v94 = *(v72 + 1);
          v95 = v94 - *v72;
          if (__OFSUB__(v94, *v72))
          {
            goto LABEL_122;
          }

          if (__OFADD__(v92, v95))
          {
            goto LABEL_124;
          }

          if (v92 + v95 >= v77)
          {
            if (v77 < v95)
            {
              v71 = v66 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        if (v66 < 2)
        {
          goto LABEL_118;
        }

        v97 = *v73;
        v96 = *(v73 + 1);
        v85 = __OFSUB__(v96, v97);
        v92 = v96 - v97;
        v93 = v85;
LABEL_81:
        if (v93)
        {
          goto LABEL_121;
        }

        v99 = *v72;
        v98 = *(v72 + 1);
        v85 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v85)
        {
          goto LABEL_123;
        }

        if (v100 < v92)
        {
          goto LABEL_95;
        }

LABEL_88:
        if (v71 - 1 >= v66)
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (!*v132)
        {
          goto LABEL_136;
        }

        v104 = v17;
        v105 = &v67[16 * v71 - 16];
        v17 = *v105;
        v106 = v71;
        v19 = &v67[16 * v71];
        v107 = *(v19 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v132 + *(v131 + 72) * *v105, *v132 + *(v131 + 72) * *v19, *v132 + *(v131 + 72) * v107, v70);
        if (v74)
        {
          goto LABEL_108;
        }

        if (v107 < v17)
        {
          goto LABEL_111;
        }

        v133 = 0;
        v108 = *(v104 + 2);
        if (v106 > v108)
        {
          goto LABEL_112;
        }

        *v105 = v17;
        *(v105 + 1) = v107;
        if (v106 >= v108)
        {
          goto LABEL_113;
        }

        v66 = v108 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v19 + 16), v108 - 1 - v106, v19);
        v17 = v104;
        *(v104 + 2) = v108 - 1;
        if (v108 <= 2)
        {
          goto LABEL_95;
        }
      }

      v79 = &v67[16 * v66];
      v80 = *(v79 - 8);
      v81 = *(v79 - 7);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_114;
      }

      v84 = *(v79 - 6);
      v83 = *(v79 - 5);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      v74 = v133;
      if (v85)
      {
        goto LABEL_115;
      }

      v86 = *(v73 + 1);
      v87 = v86 - *v73;
      if (__OFSUB__(v86, *v73))
      {
        goto LABEL_117;
      }

      v85 = __OFADD__(v77, v87);
      v88 = v77 + v87;
      if (v85)
      {
        goto LABEL_120;
      }

      if (v88 >= v82)
      {
        v102 = *v72;
        v101 = *(v72 + 1);
        v85 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v85)
        {
          goto LABEL_128;
        }

        if (v77 < v103)
        {
          v71 = v66 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_66;
    }

LABEL_95:
    v15 = v132[1];
    v16 = v130;
    if (v130 >= v15)
    {
      goto LABEL_98;
    }
  }

  v48 = v18 + v120;
  if (__OFADD__(v18, v120))
  {
    goto LABEL_132;
  }

  if (v48 >= v47)
  {
    v48 = v132[1];
  }

  if (v48 < v18)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (v19 == v48)
  {
    goto LABEL_46;
  }

  v121 = v17;
  v49 = *(v131 + 72);
  v50 = *v132 + v49 * (v19 - 1);
  v51 = -v49;
  v52 = v18 - v19;
  v134 = *v132;
  v124 = v49;
  v125 = v48;
  v53 = v134 + v19 * v49;
LABEL_39:
  v129 = v50;
  v130 = v19;
  v127 = v53;
  v128 = v52;
  v54 = v53;
  v55 = v138;
  while (1)
  {
    v56 = v136;
    outlined init with copy of Participant?(v54, v136, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
    v57 = v137;
    outlined init with copy of Participant?(v50, v137, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
    v58 = *(v55 + 36);
    v59 = *(v55 + 48);
    v60 = *(v56 + v58) * *(v56 + v59);
    v61 = *(v57 + v58) * *(v57 + v59);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v57, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v56, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
    if (v61 >= v60)
    {
LABEL_44:
      v19 = v130 + 1;
      v50 = v129 + v124;
      v52 = v128 - 1;
      v53 = v127 + v124;
      if (v130 + 1 == v125)
      {
        v19 = v125;
        v17 = v121;
        v18 = v123;
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    if (!v134)
    {
      break;
    }

    v62 = v135;
    outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v54, v135, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
    v55 = v138;
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v62, v50, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
    v50 += v51;
    v54 += v51;
    v46 = __CFADD__(v52++, 1);
    if (v46)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
}

{
  v6 = v4;
  v102 = a1;
  v9 = type metadata accessor for Participant(0);
  v111 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v106 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v99 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v116 = &v99 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v99 - v16;
  v113 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v5 = *v102;
    if (!*v102)
    {
      goto LABEL_144;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_105:
      v93 = v20 + 16;
      v94 = *(v20 + 2);
      for (i = v20; v94 >= 2; v20 = i)
      {
        if (!*v113)
        {
          goto LABEL_141;
        }

        v95 = &v20[16 * v94];
        v96 = *v95;
        v20 = &v93[2 * v94];
        v97 = *(v20 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v113 + *(v111 + 72) * *v95, *v113 + *(v111 + 72) * *v20, *v113 + *(v111 + 72) * v97, v5);
        if (v6)
        {
          break;
        }

        if (v97 < v96)
        {
          goto LABEL_129;
        }

        if (v94 - 2 >= *v93)
        {
          goto LABEL_130;
        }

        *v95 = v96;
        *(v95 + 1) = v97;
        v98 = *v93 - v94;
        if (*v93 < v94)
        {
          goto LABEL_131;
        }

        v94 = *v93 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v20 + 16, v98, v20);
        *v93 = v94;
      }

LABEL_113:

      return;
    }

LABEL_138:
    v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
    goto LABEL_105;
  }

  v101 = a4;
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v117 = v9;
  v107 = &v99 - v16;
  while (1)
  {
    v21 = v19++;
    i = v20;
    v103 = v21;
    if (v19 < v18)
    {
      v22 = *v113;
      v5 = *(v111 + 72);
      v23 = v21;
      v24 = *v113 + v5 * v19;
      v110 = v18;
      _s15ConversationKit11ParticipantVWOcTm_6(v24, v17, type metadata accessor for Participant);
      v25 = v22 + v5 * v23;
      v26 = v116;
      _s15ConversationKit11ParticipantVWOcTm_6(v25, v116, type metadata accessor for Participant);
      LODWORD(v109) = MEMORY[0x1BFB1A420](&v17[*(v9 + 20)], v26 + *(v9 + 20));
      _s15ConversationKit11ParticipantVWOhTm_16(v26, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOhTm_16(v17, type metadata accessor for Participant);
      v27 = v110;
      v28 = v103 + 2;
      v112 = v5;
      v20 = (v22 + v5 * (v103 + 2));
      while (1)
      {
        v29 = v28;
        if (++v19 >= v27)
        {
          break;
        }

        _s15ConversationKit11ParticipantVWOcTm_6(v20, v17, type metadata accessor for Participant);
        v5 = v116;
        _s15ConversationKit11ParticipantVWOcTm_6(v24, v116, type metadata accessor for Participant);
        v30 = MEMORY[0x1BFB1A420](&v17[*(v117 + 20)], v5 + *(v117 + 20)) & 1;
        _s15ConversationKit11ParticipantVWOhTm_16(v5, type metadata accessor for Participant);
        _s15ConversationKit11ParticipantVWOhTm_16(v17, type metadata accessor for Participant);
        v20 += v112;
        v24 += v112;
        v28 = v29 + 1;
        v27 = v110;
        if ((v109 & 1) != v30)
        {
          goto LABEL_9;
        }
      }

      v19 = v27;
LABEL_9:
      if (v109)
      {
        v21 = v103;
        if (v19 < v103)
        {
          goto LABEL_135;
        }

        if (v103 >= v19)
        {
          v20 = i;
          v9 = v117;
          goto LABEL_32;
        }

        v100 = v6;
        if (v27 >= v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = v27;
        }

        v32 = v112 * (v31 - 1);
        v33 = v103;
        v34 = v112 * v31;
        v35 = v103 * v112;
        v36 = v19;
        v20 = i;
        do
        {
          if (v33 != --v36)
          {
            v5 = *v113;
            if (!*v113)
            {
              goto LABEL_142;
            }

            outlined init with take of Participant(v5 + v35, v106);
            v37 = v35 < v32 || v5 + v35 >= v5 + v34;
            if (v37)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v35 != v32)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            outlined init with take of Participant(v106, v5 + v32);
            v20 = i;
          }

          ++v33;
          v32 -= v112;
          v34 -= v112;
          v35 += v112;
        }

        while (v33 < v36);
        v6 = v100;
      }

      else
      {
        v20 = i;
      }

      v9 = v117;
      v21 = v103;
    }

LABEL_32:
    v38 = v113[1];
    if (v19 < v38)
    {
      if (__OFSUB__(v19, v21))
      {
        goto LABEL_134;
      }

      if (v19 - v21 < v101)
      {
        break;
      }
    }

LABEL_50:
    if (v19 < v21)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
      v20 = v91;
    }

    v49 = *(v20 + 2);
    v48 = *(v20 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v48 > 1, v49 + 1, 1, v20);
      v20 = v92;
    }

    *(v20 + 2) = v50;
    v51 = v20 + 32;
    v52 = &v20[16 * v49 + 32];
    *v52 = v103;
    *(v52 + 1) = v19;
    v112 = *v102;
    if (!v112)
    {
      goto LABEL_143;
    }

    v53 = v17;
    if (v49)
    {
      i = v20;
      while (1)
      {
        v54 = v50 - 1;
        v55 = &v51[16 * v50 - 16];
        v56 = &v20[16 * v50];
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v57 = *(v20 + 4);
          v58 = *(v20 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_71:
          if (v60)
          {
            goto LABEL_120;
          }

          v72 = *v56;
          v71 = *(v56 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_123;
          }

          v76 = *(v55 + 1);
          v77 = v76 - *v55;
          if (__OFSUB__(v76, *v55))
          {
            goto LABEL_126;
          }

          if (__OFADD__(v74, v77))
          {
            goto LABEL_128;
          }

          if (v74 + v77 >= v59)
          {
            if (v59 < v77)
            {
              v54 = v50 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        if (v50 < 2)
        {
          goto LABEL_122;
        }

        v79 = *v56;
        v78 = *(v56 + 1);
        v67 = __OFSUB__(v78, v79);
        v74 = v78 - v79;
        v75 = v67;
LABEL_86:
        if (v75)
        {
          goto LABEL_125;
        }

        v81 = *v55;
        v80 = *(v55 + 1);
        v67 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v67)
        {
          goto LABEL_127;
        }

        if (v82 < v74)
        {
          goto LABEL_100;
        }

LABEL_93:
        if (v54 - 1 >= v50)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*v113)
        {
          goto LABEL_140;
        }

        v86 = &v51[16 * v54 - 16];
        v87 = *v86;
        v88 = v51;
        v5 = v54;
        v20 = &v51[16 * v54];
        v89 = *(v20 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v113 + *(v111 + 72) * *v86, *v113 + *(v111 + 72) * *v20, *v113 + *(v111 + 72) * v89, v112);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v89 < v87)
        {
          goto LABEL_115;
        }

        v6 = *(i + 2);
        if (v5 > v6)
        {
          goto LABEL_116;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        if (v5 >= v6)
        {
          goto LABEL_117;
        }

        v50 = v6 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v20 + 16, v6 - 1 - v5, v20);
        v20 = i;
        *(i + 2) = v6 - 1;
        v90 = v6 > 2;
        v6 = 0;
        v9 = v117;
        v53 = v107;
        v51 = v88;
        if (!v90)
        {
          goto LABEL_100;
        }
      }

      v61 = &v51[16 * v50];
      v62 = *(v61 - 8);
      v63 = *(v61 - 7);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_118;
      }

      v66 = *(v61 - 6);
      v65 = *(v61 - 5);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_119;
      }

      v68 = *(v56 + 1);
      v69 = v68 - *v56;
      if (__OFSUB__(v68, *v56))
      {
        goto LABEL_121;
      }

      v67 = __OFADD__(v59, v69);
      v70 = v59 + v69;
      if (v67)
      {
        goto LABEL_124;
      }

      if (v70 >= v64)
      {
        v84 = *v55;
        v83 = *(v55 + 1);
        v67 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v67)
        {
          goto LABEL_132;
        }

        if (v59 < v85)
        {
          v54 = v50 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_71;
    }

LABEL_100:
    v18 = v113[1];
    v17 = v53;
    if (v19 >= v18)
    {
      goto LABEL_103;
    }
  }

  v39 = v21 + v101;
  if (__OFADD__(v21, v101))
  {
    goto LABEL_136;
  }

  if (v39 >= v38)
  {
    v39 = v113[1];
  }

  if (v39 < v21)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v19 == v39)
  {
    goto LABEL_50;
  }

  v100 = v6;
  v40 = *v113;
  v41 = *(v111 + 72);
  v5 = *v113 + v41 * (v19 - 1);
  v42 = -v41;
  v43 = v21 - v19;
  v104 = v41;
  v105 = v39;
  v44 = v40 + v19 * v41;
LABEL_41:
  v112 = v19;
  v108 = v44;
  v109 = v43;
  v110 = v5;
  while (1)
  {
    _s15ConversationKit11ParticipantVWOcTm_6(v44, v17, type metadata accessor for Participant);
    v45 = v116;
    _s15ConversationKit11ParticipantVWOcTm_6(v5, v116, type metadata accessor for Participant);
    v46 = MEMORY[0x1BFB1A420](&v17[*(v9 + 20)], v45 + *(v9 + 20));
    _s15ConversationKit11ParticipantVWOhTm_16(v45, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOhTm_16(v17, type metadata accessor for Participant);
    if ((v46 & 1) == 0)
    {
      v9 = v117;
LABEL_48:
      v19 = v112 + 1;
      v5 = v110 + v104;
      v43 = v109 - 1;
      v44 = v108 + v104;
      if (v112 + 1 == v105)
      {
        v19 = v105;
        v6 = v100;
        v20 = i;
        v21 = v103;
        goto LABEL_50;
      }

      goto LABEL_41;
    }

    if (!v40)
    {
      break;
    }

    v47 = v115;
    outlined init with take of Participant(v44, v115);
    v9 = v117;
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of Participant(v47, v5);
    v5 += v42;
    v44 += v42;
    v37 = __CFADD__(v43++, 1);
    if (v37)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = type metadata accessor for CaptionSectioner.Caption(0);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v18 = v14 / v13;
  v51 = a1;
  v50 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v16 / v13, a4);
    v27 = a4 + v19 * v13;
    v28 = -v13;
    v29 = v27;
    v43 = a1;
    v44 = v28;
LABEL_36:
    v45 = a2 + v28;
    v46 = a2;
    v30 = a3;
    v31 = v29;
    v42 = v29;
    while (1)
    {
      if (v27 <= a4)
      {
        v51 = v46;
        v49 = v31;
        goto LABEL_58;
      }

      if (v46 <= a1)
      {
        break;
      }

      v41 = v31;
      v32 = v30 + v28;
      v33 = v27 + v28;
      v34 = v30;
      outlined init with copy of Participant(v27 + v28, v11);
      outlined init with copy of Participant(v45, v47);
      v35 = static Date.< infix(_:_:)();
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      if (v35)
      {
        if (v34 < v46 || v32 >= v46)
        {
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          a3 = v32;
          v29 = v41;
          a1 = v43;
          v28 = v44;
        }

        else
        {
          v15 = v34 == v46;
          v28 = v44;
          v39 = v45;
          a2 = v45;
          a3 = v32;
          v29 = v41;
          a1 = v43;
          if (!v15)
          {
            v29 = v41;
            swift_arrayInitWithTakeBackToFront();
            a2 = v39;
          }
        }

        goto LABEL_36;
      }

      if (v34 < v27 || v32 >= v27)
      {
        swift_arrayInitWithTakeFrontToBack();
        v30 = v32;
        v27 += v28;
        v31 = v33;
        a1 = v43;
        v28 = v44;
        v29 = v42;
      }

      else
      {
        v31 = v27 + v28;
        v15 = v27 == v34;
        v30 = v32;
        v27 += v28;
        v37 = v32;
        a1 = v43;
        v28 = v44;
        v29 = v42;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v30 = v37;
          v27 = v33;
          v31 = v33;
        }
      }
    }

    v51 = v46;
    v49 = v29;
  }

  else
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v14 / v13, a4);
    v46 = a4 + v18 * v13;
    v49 = v46;
    while (a4 < v46 && a2 < a3)
    {
      v21 = a3;
      outlined init with copy of Participant(a2, v11);
      v22 = a2;
      outlined init with copy of Participant(a4, v47);
      v23 = static Date.< infix(_:_:)();
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      if (v23)
      {
        a2 += v13;
        v24 = a1 < v22 || a1 >= a2;
        v25 = v22;
        if (v24)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (a1 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v50 = a4 + v13;
        a4 += v13;
      }

      a1 += v13;
      v51 = a1;
    }
  }

LABEL_58:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v51, &v50, &v49);
}

{
  v53 = type metadata accessor for TranscriptionViewModel.Caption(0);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v18 = v14 / v13;
  v56 = a1;
  v55 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v16 / v13, a4);
    v28 = a4 + v19 * v13;
    v29 = -v13;
    v30 = v28;
    v48 = a1;
    v49 = v29;
LABEL_36:
    v50 = a2 + v29;
    v51 = a2;
    v31 = a3;
    v32 = v30;
    v47 = v30;
    while (1)
    {
      if (v28 <= a4)
      {
        v56 = v51;
        v54 = v32;
        goto LABEL_58;
      }

      if (v51 <= a1)
      {
        break;
      }

      v46 = v32;
      v33 = a4;
      v34 = v31 + v29;
      v35 = v28 + v29;
      v36 = v31;
      outlined init with copy of Participant.Caption(v28 + v29, v11, type metadata accessor for TranscriptionViewModel.Caption);
      v37 = v11;
      v38 = v52;
      outlined init with copy of Participant.Caption(v50, v52, type metadata accessor for TranscriptionViewModel.Caption);
      v39 = static Date.< infix(_:_:)();
      v40 = v38;
      v11 = v37;
      outlined destroy of Participant.Caption(v40, type metadata accessor for TranscriptionViewModel.Caption);
      outlined destroy of Participant.Caption(v37, type metadata accessor for TranscriptionViewModel.Caption);
      if (v39)
      {
        v43 = v36 < v51 || v34 >= v51;
        a4 = v33;
        if (v43)
        {
          a2 = v50;
          swift_arrayInitWithTakeFrontToBack();
          a3 = v34;
          v30 = v46;
          a1 = v48;
          v29 = v49;
        }

        else
        {
          v15 = v36 == v51;
          v29 = v49;
          v44 = v50;
          a2 = v50;
          a3 = v34;
          v30 = v46;
          a1 = v48;
          if (!v15)
          {
            v30 = v46;
            swift_arrayInitWithTakeBackToFront();
            a2 = v44;
          }
        }

        goto LABEL_36;
      }

      v41 = v36 < v28 || v34 >= v28;
      a4 = v33;
      if (v41)
      {
        swift_arrayInitWithTakeFrontToBack();
        v31 = v34;
        v28 = v35;
        v32 = v35;
        a1 = v48;
        v29 = v49;
        v30 = v47;
      }

      else
      {
        v32 = v35;
        v15 = v28 == v36;
        v31 = v34;
        v28 = v35;
        v42 = v34;
        a1 = v48;
        v29 = v49;
        v30 = v47;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v31 = v42;
          v28 = v35;
          v32 = v35;
        }
      }
    }

    v56 = v51;
    v54 = v30;
  }

  else
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v14 / v13, a4);
    v51 = a4 + v18 * v13;
    v54 = v51;
    while (a4 < v51 && a2 < a3)
    {
      v21 = a3;
      outlined init with copy of Participant.Caption(a2, v11, type metadata accessor for TranscriptionViewModel.Caption);
      v22 = a2;
      v23 = v52;
      outlined init with copy of Participant.Caption(a4, v52, type metadata accessor for TranscriptionViewModel.Caption);
      v24 = static Date.< infix(_:_:)();
      outlined destroy of Participant.Caption(v23, type metadata accessor for TranscriptionViewModel.Caption);
      outlined destroy of Participant.Caption(v11, type metadata accessor for TranscriptionViewModel.Caption);
      if (v24)
      {
        a2 = v22 + v13;
        v25 = a1 < v22 || a1 >= a2;
        v26 = v22;
        if (v25)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (a1 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        a2 = v22;
        if (a1 < a4 || a1 >= a4 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v55 = a4 + v13;
        a4 += v13;
      }

      a1 += v13;
      v56 = a1;
    }
  }

LABEL_58:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v56, &v55, &v54);
}

{
  v74 = a3;
  v7 = type metadata accessor for IndexPath();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v63 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v63 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v63 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  v22 = a2 - a1 == 0x8000000000000000 && v21 == -1;
  if (v22)
  {
    goto LABEL_70;
  }

  v23 = v74 - a2;
  if (v74 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_71;
  }

  v79 = a1;
  v78 = a4;
  v75 = (v17 + 8);
  v76 = (v17 + 16);
  if ((a2 - a1) / v21 >= v23 / v21)
  {
    v37 = v23 / v21;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v23 / v21, a4);
    v38 = a4 + v37 * v21;
    v39 = -v21;
    v40 = v38;
    v41 = v74;
    v67 = v39;
    v68 = a1;
    v73 = v7;
    v66 = a4;
    v64 = v9;
LABEL_40:
    v42 = a2 + v39;
    v43 = v41;
    v44 = v40;
    v69 = a2 + v39;
    v70 = a2;
    v71 = v40;
    while (1)
    {
      if (v38 <= a4)
      {
        v79 = a2;
        v77 = v44;
        goto LABEL_68;
      }

      if (a2 <= a1)
      {
        break;
      }

      v45 = v43;
      v65 = v44;
      v74 = v38;
      v46 = *v76;
      v72 = v38 + v39;
      (v46)(v12);
      v46(v9, v42, v7);
      v47 = IndexPath.section.getter();
      if (v47 == IndexPath.section.getter())
      {
        v48 = IndexPath.item.getter();
        v49 = IndexPath.item.getter();
      }

      else
      {
        v48 = IndexPath.section.getter();
        v49 = IndexPath.section.getter();
      }

      v50 = v48 < v49;
      v51 = v9;
      v52 = v50;
      v41 = v45 + v39;
      v53 = *v75;
      v54 = v51;
      v55 = v73;
      (*v75)();
      (v53)(v12, v55);
      if (v52)
      {
        v60 = v69;
        v61 = v45 < v70 || v41 >= v70;
        a4 = v66;
        if (v61)
        {
          a2 = v69;
          v62 = v73;
          swift_arrayInitWithTakeFrontToBack();
          v40 = v65;
          v9 = v54;
          v39 = v67;
          a1 = v68;
          v7 = v62;
          v38 = v74;
        }

        else
        {
          v40 = v65;
          v22 = v45 == v70;
          a2 = v69;
          v9 = v54;
          v39 = v67;
          a1 = v68;
          v7 = v73;
          v38 = v74;
          if (!v22)
          {
            swift_arrayInitWithTakeBackToFront();
            v38 = v74;
            a2 = v60;
            v40 = v65;
          }
        }

        goto LABEL_40;
      }

      v56 = v45 < v74 || v41 >= v74;
      a4 = v66;
      a2 = v70;
      if (v56)
      {
        v57 = v72;
        v58 = v73;
        swift_arrayInitWithTakeFrontToBack();
        v43 = v41;
        v38 = v57;
        v44 = v57;
        v9 = v54;
        v39 = v67;
        a1 = v68;
        v7 = v58;
        v42 = v69;
        v40 = v71;
      }

      else
      {
        v40 = v71;
        v44 = v72;
        v22 = v74 == v45;
        v43 = v41;
        v38 = v72;
        v9 = v54;
        v39 = v67;
        a1 = v68;
        v7 = v73;
        v42 = v69;
        if (!v22)
        {
          v59 = v72;
          swift_arrayInitWithTakeBackToFront();
          v40 = v71;
          v43 = v41;
          v38 = v59;
          v44 = v59;
          v9 = v64;
        }
      }
    }

    v79 = a2;
    v77 = v40;
  }

  else
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / v21, a4);
    v72 = v21;
    v73 = a4 + (a2 - a1) / v21 * v21;
    v77 = v73;
    for (i = v74; a4 < v73 && a2 < i; i = v74)
    {
      v27 = *v76;
      (*v76)(v19, a2, v7);
      v27(v15, a4, v7);
      v28 = IndexPath.section.getter();
      if (v28 == IndexPath.section.getter())
      {
        v29 = IndexPath.item.getter();
        v30 = IndexPath.item.getter();
      }

      else
      {
        v29 = IndexPath.section.getter();
        v30 = IndexPath.section.getter();
      }

      v31 = v29 < v30;
      v32 = *v75;
      (*v75)(v15, v7);
      (v32)(v19, v7);
      if (v31)
      {
        v33 = v72;
        if (a1 < a2 || a1 >= a2 + v72)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v33;
      }

      else
      {
        v33 = v72;
        v35 = a4 + v72;
        if (a1 < a4 || a1 >= v35)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v78 = v35;
        a4 += v33;
      }

      a1 += v33;
      v79 = a1;
    }
  }

LABEL_68:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v79, &v78, &v77);
}

{
  v8 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v75 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v75 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v75 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    return;
  }

  v21 = a2 - a1;
  v22 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v22)
  {
    goto LABEL_84;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_85;
  }

  v82 = v16;
  v25 = v21 / v20;
  v86 = a1;
  v85 = a4;
  v26 = v23 / v20;
  if (v21 / v20 < v23 / v20)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v21 / v20, a4);
    v79 = a3;
    v80 = (a4 + v25 * v20);
    v84 = v80;
    v27 = v82;
    while (1)
    {
      if (a4 >= v80 || a2 >= a3)
      {
        goto LABEL_82;
      }

      outlined init with copy of ParticipantReaction();
      outlined init with copy of ParticipantReaction();
      v29 = *(v27 + 28);
      v30 = *&v18[v29];
      if (v30)
      {
        v31 = [v30 value];
        v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v29 = *(v27 + 28);
      }

      else
      {
        v83 = 0;
        v33 = 0xE000000000000000;
      }

      v34 = *&v14[v29];
      if (v34)
      {
        v35 = [v34 value];
        v81 = v33;
        v36 = v18;
        v37 = a1;
        v38 = v14;
        v39 = v20;
        v40 = a4;
        v41 = a2;
        v42 = v35;
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        a2 = v41;
        a4 = v40;
        v20 = v39;
        v14 = v38;
        a1 = v37;
        v18 = v36;
        v33 = v81;
      }

      else
      {
        v43 = 0;
        v45 = 0xE000000000000000;
      }

      if (v43 == v83 && v45 == v33)
      {

        _s15ConversationKit11ParticipantVWOhTm_12();
        _s15ConversationKit11ParticipantVWOhTm_12();
      }

      else
      {
        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

        _s15ConversationKit11ParticipantVWOhTm_12();
        _s15ConversationKit11ParticipantVWOhTm_12();
        if (v47)
        {
          v48 = a1 < a2 || a1 >= a2 + v20;
          a3 = v79;
          if (v48)
          {
            v27 = v82;
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            v27 = v82;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          a2 += v20;
          goto LABEL_46;
        }
      }

      v49 = a1 < a4 || a1 >= a4 + v20;
      a3 = v79;
      if (v49)
      {
        v27 = v82;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v27 = v82;
        if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v85 = a4 + v20;
      a4 += v20;
LABEL_46:
      a1 += v20;
      v86 = a1;
    }
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v23 / v20, a4);
  v50 = a4 + v26 * v20;
  v51 = -v20;
  v52 = v50;
  v53 = v82;
  v78 = -v20;
LABEL_48:
  v79 = a2 + v51;
  v81 = a3;
  v75 = v52;
  v77 = a2;
  while (1)
  {
    if (v50 <= a4)
    {
      v86 = a2;
      v84 = v52;
      goto LABEL_82;
    }

    if (a2 <= a1)
    {
      break;
    }

    v76 = v52;
    v54 = v50 + v51;
    v55 = v80;
    outlined init with copy of ParticipantReaction();
    outlined init with copy of ParticipantReaction();
    v56 = *(v53 + 28);
    v57 = *&v55[v56];
    if (v57)
    {
      v58 = [v57 value];
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      v56 = *(v53 + 28);
    }

    else
    {
      v59 = 0;
      v61 = 0xE000000000000000;
    }

    v62 = *&v83[v56];
    if (v62)
    {
      v63 = [v62 value];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;
    }

    else
    {
      v64 = 0;
      v66 = 0xE000000000000000;
    }

    if (v64 == v59 && v66 == v61)
    {
      v68 = 0;
    }

    else
    {
      v68 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v53 = v82;

    v69 = v81;
    a3 = v81 + v78;
    _s15ConversationKit11ParticipantVWOhTm_12();
    _s15ConversationKit11ParticipantVWOhTm_12();
    if (v68)
    {
      if (v69 < v77 || a3 >= v77)
      {
        a2 = v79;
        swift_arrayInitWithTakeFrontToBack();
        v52 = v76;
        v51 = v78;
      }

      else
      {
        v52 = v76;
        v22 = v69 == v77;
        v51 = v78;
        v73 = v79;
        a2 = v79;
        if (!v22)
        {
          v74 = v76;
          swift_arrayInitWithTakeBackToFront();
          a2 = v73;
          v52 = v74;
        }
      }

      goto LABEL_48;
    }

    v70 = v69 < v50 || a3 >= v50;
    v71 = v69;
    a2 = v77;
    if (v70)
    {
      swift_arrayInitWithTakeFrontToBack();
      v81 = a3;
      v50 = v54;
      v52 = v54;
      v51 = v78;
    }

    else
    {
      v52 = v54;
      v22 = v50 == v71;
      v81 = a3;
      v50 = v54;
      v51 = v78;
      if (!v22)
      {
        swift_arrayInitWithTakeBackToFront();
        v81 = a3;
        v50 = v54;
        v52 = v54;
      }
    }
  }

  v86 = a2;
  v84 = v75;
LABEL_82:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v86, &v85, &v84);
}

{
  v51 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  MEMORY[0x1EEE9AC00](v51);
  v50 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v49 = (&v44 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v44 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v44 - v15);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    return;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_86;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_87;
  }

  v23 = v19 / v18;
  v58 = a1;
  v57 = a4;
  v24 = v21 / v18;
  if (v19 / v18 < v21 / v18)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v19 / v18, a4);
    v25 = a4 + v23 * v18;
    v56 = v25;
    while (1)
    {
      if (a4 >= v25 || a2 >= a3)
      {
        goto LABEL_84;
      }

      outlined init with copy of HUDActivityManager.BannerUpdate(a2, v16);
      outlined init with copy of HUDActivityManager.BannerUpdate(a4, v13);
      outlined init with copy of ConversationControlsType((v16 + 1), v52);
      outlined init with copy of ConversationControlsType((v13 + 1), v54);
      if (v53 == 1)
      {
        if (v55 != 1)
        {
          outlined destroy of ConversationControlsType(v52);
          outlined destroy of ConversationControlsType(v54);
          outlined destroy of HUDActivityManager.BannerUpdate(v13);
          outlined destroy of HUDActivityManager.BannerUpdate(v16);
          goto LABEL_35;
        }

        v27 = *v16 < *v13;
        outlined destroy of ConversationControlsType(v54);
        outlined destroy of ConversationControlsType(v52);
      }

      else
      {
        if (v55 == 1)
        {
          outlined destroy of ConversationControlsType(v54);
          outlined destroy of ConversationControlsType(v52);
          outlined destroy of HUDActivityManager.BannerUpdate(v13);
          outlined destroy of HUDActivityManager.BannerUpdate(v16);
LABEL_29:
          if (a1 < a2 || a1 >= a2 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v18;
          goto LABEL_47;
        }

        v27 = *v16 < *v13 || *v16 == *v13 && Date.compare(_:)() == -1;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v52, &_s15ConversationKit0A12ControlsTypeO_ACtMd, &_s15ConversationKit0A12ControlsTypeO_ACtMR);
      }

      outlined destroy of HUDActivityManager.BannerUpdate(v13);
      outlined destroy of HUDActivityManager.BannerUpdate(v16);
      if (v27)
      {
        goto LABEL_29;
      }

LABEL_35:
      if (a1 < a4 || a1 >= a4 + v18)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v57 = a4 + v18;
      a4 += v18;
LABEL_47:
      a1 += v18;
      v58 = a1;
    }
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v21 / v18, a4);
  v30 = a4 + v24 * v18;
  v31 = -v18;
  v32 = v30;
  v48 = v31;
LABEL_49:
  v33 = a2 + v31;
  v34 = a3;
  v45 = v32;
  v47 = a2 + v31;
  while (1)
  {
    if (v30 <= a4)
    {
      v58 = a2;
      goto LABEL_83;
    }

    if (a2 <= a1)
    {
      break;
    }

    v46 = v32;
    v35 = v30 + v31;
    v36 = v49;
    outlined init with copy of HUDActivityManager.BannerUpdate(v30 + v31, v49);
    v37 = v33;
    v38 = v50;
    outlined init with copy of HUDActivityManager.BannerUpdate(v37, v50);
    outlined init with copy of ConversationControlsType((v36 + 1), v52);
    outlined init with copy of ConversationControlsType((v38 + 1), v54);
    if (v53 == 1)
    {
      if (v55 == 1)
      {
        v39 = *v49 < *v50;
        outlined destroy of ConversationControlsType(v54);
        outlined destroy of ConversationControlsType(v52);
      }

      else
      {
        outlined destroy of ConversationControlsType(v52);
        outlined destroy of ConversationControlsType(v54);
        v39 = 0;
      }
    }

    else if (v55 == 1)
    {
      outlined destroy of ConversationControlsType(v54);
      outlined destroy of ConversationControlsType(v52);
      v39 = 1;
    }

    else
    {
      v39 = *v49 < *v50 || *v49 == *v50 && Date.compare(_:)() == -1;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v52, &_s15ConversationKit0A12ControlsTypeO_ACtMd, &_s15ConversationKit0A12ControlsTypeO_ACtMR);
    }

    a3 = v34 + v48;
    outlined destroy of HUDActivityManager.BannerUpdate(v50);
    outlined destroy of HUDActivityManager.BannerUpdate(v49);
    if (v39)
    {
      if (v34 < a2 || a3 >= a2)
      {
        a2 = v47;
        swift_arrayInitWithTakeFrontToBack();
        v32 = v46;
        v31 = v48;
      }

      else
      {
        v42 = v47;
        v32 = v46;
        v20 = v34 == a2;
        a2 = v47;
        v31 = v48;
        if (!v20)
        {
          v43 = v46;
          swift_arrayInitWithTakeBackToFront();
          a2 = v42;
          v32 = v43;
        }
      }

      goto LABEL_49;
    }

    if (v34 < v30 || a3 >= v30)
    {
      swift_arrayInitWithTakeFrontToBack();
      v34 = a3;
      v30 += v31;
      v32 = v35;
      v33 = v47;
      v31 = v48;
    }

    else
    {
      v32 = v30 + v31;
      v20 = v30 == v34;
      v34 = a3;
      v30 += v31;
      v33 = v47;
      v31 = v48;
      if (!v20)
      {
        swift_arrayInitWithTakeBackToFront();
        v34 = a3;
        v30 = v35;
        v32 = v35;
      }
    }
  }

  v58 = a2;
  v32 = v45;
LABEL_83:
  v56 = v32;
LABEL_84:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v58, &v57, &v56);
}

{
  v50 = a3;
  v51 = type metadata accessor for Participant.Caption(0);
  MEMORY[0x1EEE9AC00](v51);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v42 - v10);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = v50 - a2;
  if (v50 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v18 = v14 / v13;
  v54 = a1;
  v53 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v16 / v13, a4);
    v26 = a4 + v19 * v13;
    v27 = -v13;
    v28 = v26;
    v29 = v50;
    v47 = v8;
    v48 = a1;
    v46 = -v13;
    v44 = v11;
LABEL_36:
    v49 = a2;
    v50 = a2 + v27;
    v30 = v29;
    v31 = v28;
    v32 = v28;
    v45 = v28;
    while (1)
    {
      if (v26 <= a4)
      {
        v54 = a2;
        v52 = v31;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v43 = v31;
      v33 = v30 + v27;
      v34 = v26 + v27;
      v35 = v26;
      v36 = v30;
      _s15ConversationKit11ParticipantV5StateOWOcTm_0();
      _s15ConversationKit11ParticipantV5StateOWOcTm_0();
      v37 = *v11;
      v38 = *v8;
      _s15ConversationKit11ParticipantV5StateOWOhTm_1();
      _s15ConversationKit11ParticipantV5StateOWOhTm_1();
      if (v37 < v38)
      {
        v40 = v36 < v49 || v33 >= v49;
        v29 = v33;
        if (v40)
        {
          a2 = v50;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v43;
          v11 = v44;
          v8 = v47;
          a1 = v48;
          v26 = v35;
          v27 = v46;
        }

        else
        {
          v28 = v43;
          v11 = v44;
          v15 = v36 == v49;
          v41 = v50;
          a2 = v50;
          v8 = v47;
          a1 = v48;
          v26 = v35;
          v27 = v46;
          if (!v15)
          {
            swift_arrayInitWithTakeBackToFront();
            v26 = v35;
            a2 = v41;
            v28 = v43;
          }
        }

        goto LABEL_36;
      }

      if (v36 < v35 || v33 >= v35)
      {
        swift_arrayInitWithTakeFrontToBack();
        v30 = v33;
        v26 = v34;
        v31 = v34;
        v8 = v47;
        a1 = v48;
        v11 = v44;
        v32 = v45;
        a2 = v49;
        v27 = v46;
      }

      else
      {
        v31 = v34;
        v15 = v35 == v36;
        v30 = v33;
        v26 = v34;
        v8 = v47;
        a1 = v48;
        v11 = v44;
        v32 = v45;
        a2 = v49;
        v27 = v46;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v30 = v33;
          v26 = v34;
          v31 = v34;
        }
      }
    }

    v54 = a2;
    v52 = v32;
  }

  else
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v14 / v13, a4);
    v49 = a4 + v18 * v13;
    v52 = v49;
    while (a4 < v49 && a2 < v50)
    {
      _s15ConversationKit11ParticipantV5StateOWOcTm_0();
      _s15ConversationKit11ParticipantV5StateOWOcTm_0();
      v21 = a2;
      v22 = *v11;
      v23 = *v8;
      _s15ConversationKit11ParticipantV5StateOWOhTm_1();
      _s15ConversationKit11ParticipantV5StateOWOhTm_1();
      if (v22 >= v23)
      {
        if (a1 < a4 || a1 >= a4 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v21;
        }

        else
        {
          a2 = v21;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v53 = a4 + v13;
        a4 += v13;
      }

      else
      {
        a2 = v21 + v13;
        if (a1 < v21 || a1 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      a1 += v13;
      v54 = a1;
    }
  }

LABEL_58:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v54, &v53, &v52);
}

{
  v198 = type metadata accessor for PersonNameComponents();
  v213 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v199 = &v195 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v203 = &v195 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v202 = &v195 - v13;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v216);
  v201 = &v195 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v219 = &v195 - v16;
  v217 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v217);
  v207 = &v195 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v206 = &v195 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v215 = &v195 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v214 = &v195 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v204 = &v195 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v195 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v210 = &v195 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v195 - v32;
  v220 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v220);
  v218 = &v195 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v205 = &v195 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v208 = &v195 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v225 = &v195 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v223 = &v195 - v42;
  v44 = *(v43 + 72);
  if (!v44)
  {
    __break(1u);
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v45 = a2 - a1 == 0x8000000000000000 && v44 == -1;
  if (v45)
  {
    goto LABEL_122;
  }

  v46 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v44 != -1)
  {
    v221 = v33;
    v224 = a2;
    v48 = (a2 - a1) / v44;
    v233 = a1;
    v232 = a4;
    v222 = (v10 + 32);
    v209 = (v10 + 8);
    v197 = (v213 + 8);
    v49 = v46 / v44;
    v50 = v217;
    if (v48 >= v46 / v44)
    {
      v221 = v28;
      v212 = a1;
      v122 = v224;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v224, v49, a4);
      v213 = a4;
      v123 = a4 + v49 * v44;
      v124 = -v44;
      v125 = v123;
      v126 = v201;
      v127 = v207;
      v128 = v206;
      v129 = v205;
      v223 = v124;
LABEL_67:
      v130 = v125;
      v224 = v122;
      v219 = v122 + v124;
      v196 = v125;
      while (1)
      {
        if (v123 <= v213)
        {
          v233 = v224;
          v231 = v130;
          goto LABEL_120;
        }

        if (v224 <= v212)
        {
          v233 = v224;
          v231 = v196;
          goto LABEL_120;
        }

        v225 = a3;
        v215 = v130;
        v131 = v223;
        v132 = v123 + v223;
        _s15ConversationKit11ParticipantVWOcTm_6(v123 + v223, v129, type metadata accessor for Participant);
        _s15ConversationKit11ParticipantVWOcTm_6(v219, v218, type metadata accessor for Participant);
        _s15ConversationKit11ParticipantVWOcTm_6(v129, v128, type metadata accessor for Participant.State);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
          v134 = *(v133 + 48);
          v135 = (v128 + *(v133 + 64));
          v136 = outlined consume of Participant.CopresenceInfo?(*v135, v135[1], v135[2], v135[3], v135[4], v135[5], v135[6], v135[7]);
          v137 = v221;
          (*v222)(v221, v128, v9, v136);
          outlined destroy of Participant.MediaInfo(v128 + v134);
          v138 = 0;
        }

        else
        {
          _s15ConversationKit11ParticipantVWOhTm_16(v128, type metadata accessor for Participant.State);
          v138 = 1;
          v137 = v221;
        }

        __swift_storeEnumTagSinglePayload(v137, v138, 1, v9);
        _s15ConversationKit11ParticipantVWOcTm_6(v218, v127, type metadata accessor for Participant.State);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v140 = v204;
        if (EnumCaseMultiPayload == 4)
        {
          v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
          v142 = *(v141 + 48);
          v143 = (v127 + *(v141 + 64));
          v144 = outlined consume of Participant.CopresenceInfo?(*v143, v143[1], v143[2], v143[3], v143[4], v143[5], v143[6], v143[7]);
          (*v222)(v140, v127, v9, v144);
          v137 = v221;
          outlined destroy of Participant.MediaInfo(v127 + v142);
          v145 = 0;
        }

        else
        {
          _s15ConversationKit11ParticipantVWOhTm_16(v127, type metadata accessor for Participant.State);
          v145 = 1;
        }

        __swift_storeEnumTagSinglePayload(v140, v145, 1, v9);
        v146 = *(v216 + 48);
        outlined init with take of Date?(v137, v126);
        outlined init with take of Date?(v140, v126 + v146);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v126, 1, v9);
        v148 = __swift_getEnumTagSinglePayload(v126 + v146, 1, v9);
        if (EnumTagSinglePayload == 1)
        {
          break;
        }

        v129 = v205;
        if (v148 == 1)
        {
          (*v209)(v126, v9);
          v166 = 1;
        }

        else
        {
          v167 = *v222;
          v168 = v202;
          (*v222)(v202, v126, v9);
          v169 = v126 + v146;
          v170 = v203;
          v167(v203, v169, v9);
          v166 = static Date.< infix(_:_:)();
          v171 = *v209;
          v172 = v170;
          v126 = v201;
          (*v209)(v172, v9);
          v173 = v168;
          v131 = v223;
          v171(v173, v9);
        }

LABEL_101:
        v189 = v225 + v131;
        v190 = v225;
        _s15ConversationKit11ParticipantVWOhTm_16(v218, type metadata accessor for Participant);
        _s15ConversationKit11ParticipantVWOhTm_16(v129, type metadata accessor for Participant);
        if (v166)
        {
          v193 = v190 < v224 || v189 >= v224;
          v194 = v190;
          a3 = v189;
          if (v193)
          {
            v122 = v219;
            swift_arrayInitWithTakeFrontToBack();
            v125 = v215;
            v127 = v207;
            v128 = v206;
            v124 = v223;
          }

          else
          {
            v125 = v215;
            v122 = v219;
            v127 = v207;
            v128 = v206;
            v124 = v223;
            if (v194 != v224)
            {
              v122 = v219;
              swift_arrayInitWithTakeBackToFront();
              v125 = v215;
            }
          }

          goto LABEL_67;
        }

        v191 = v190 < v123 || v189 >= v123;
        v192 = v189;
        if (v191)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v189;
          v123 = v132;
          v130 = v132;
          v127 = v207;
          v128 = v206;
        }

        else
        {
          v130 = v132;
          v45 = v123 == v190;
          a3 = v189;
          v123 = v132;
          v127 = v207;
          v128 = v206;
          if (!v45)
          {
            swift_arrayInitWithTakeBackToFront();
            a3 = v192;
            v123 = v132;
            v130 = v132;
          }
        }
      }

      v129 = v205;
      if (v148 != 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v126 + v146, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v166 = 0;
        goto LABEL_101;
      }

      v149 = v220;
      v150 = *&v205[*(v220 + 28)];
      v211 = v132;
      if (v150)
      {
        v151 = v150;
        v152 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v151);
        if (v153)
        {
          v154 = v152;
          v155 = v153;
          if ([v151 shouldHideContact])
          {
            v214 = v154;
            v156 = v199;
            PersonNameComponents.init()();
            PersonNameComponents.givenName.setter();
            PersonNameComponents.familyName.setter();
            if (one-time initialization token for initials != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v157 = static NSPersonNameComponentsFormatter.initials;
            isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
            v159 = [v157 stringFromPersonNameComponents_];

            v160 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v162 = v161;

            (*v197)(v156, v198);
            v228 = v160;
            v229 = v162;
            lazy protocol witness table accessor for type String and conformance String();
            StringProtocol.localizedUppercase.getter();

            v163 = v155;

            v164 = 0;
            v149 = v220;
            v165 = v214;
LABEL_91:

            v226 = v165;
            v227 = v163;
            v175 = *(v218 + *(v149 + 28));
            v132 = v211;
            v214 = v163;
            if (v175)
            {
              v176 = v175;
              v210 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v176);
              if (v177)
              {
                v178 = v177;
                if ([v176 shouldHideContact])
                {
                  PersonNameComponents.init()();
                  PersonNameComponents.givenName.setter();
                  PersonNameComponents.familyName.setter();
                  if (one-time initialization token for initials != -1)
                  {
                    swift_once();
                  }

                  swift_beginAccess();
                  v179 = static NSPersonNameComponentsFormatter.initials;
                  v195 = v179;
                  v180 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
                  v181 = [v179 stringFromPersonNameComponents_];

                  v182 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v184 = v183;

                  (*v197)(v199, v198);
                  v228 = v182;
                  v229 = v184;
                  lazy protocol witness table accessor for type String and conformance String();
                  StringProtocol.localizedUppercase.getter();

                  v185 = 0;
                  v186 = v210;
                  goto LABEL_100;
                }
              }

              else
              {
              }
            }

            v187 = v208;
            _s15ConversationKit11ParticipantVWOcTm_6(v218, v208, type metadata accessor for Participant);

            ParticipantContactDetailsCache.contactDetails(for:)();

            _s15ConversationKit11ParticipantVWOhTm_16(v187, type metadata accessor for Participant);
            v185 = v228;
            v186 = v229;
            v178 = v230;
LABEL_100:

            v228 = v186;
            v229 = v178;
            lazy protocol witness table accessor for type String and conformance String();
            v188 = StringProtocol.localizedCompare<A>(_:)();

            v166 = v188 == 1;
            v126 = v201;
            v131 = v223;
            goto LABEL_101;
          }
        }

        else
        {
        }
      }

      v174 = v208;
      _s15ConversationKit11ParticipantVWOcTm_6(v129, v208, type metadata accessor for Participant);

      ParticipantContactDetailsCache.contactDetails(for:)();

      _s15ConversationKit11ParticipantVWOhTm_16(v174, type metadata accessor for Participant);
      v164 = v228;
      v165 = v229;
      v163 = v230;
      goto LABEL_91;
    }

    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v48, a4);
    v218 = a4 + v48 * v44;
    v231 = v218;
    v51 = v224;
    v211 = a3;
    v52 = v210;
    v200 = v9;
    while (1)
    {
      if (a4 >= v218 || v51 >= a3)
      {
LABEL_120:
        specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v233, &v232, &v231);
        return;
      }

      v54 = v44;
      v55 = v223;
      _s15ConversationKit11ParticipantVWOcTm_6(v51, v223, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOcTm_6(a4, v225, type metadata accessor for Participant);
      v56 = v214;
      _s15ConversationKit11ParticipantVWOcTm_6(v55, v214, type metadata accessor for Participant.State);
      v57 = v50;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
        v59 = *(v58 + 48);
        v60 = (v56 + *(v58 + 64));
        v61 = outlined consume of Participant.CopresenceInfo?(*v60, v60[1], v60[2], v60[3], v60[4], v60[5], v60[6], v60[7]);
        v62 = v221;
        (*v222)(v221, v56, v9, v61);
        v63 = v56 + v59;
        v52 = v210;
        outlined destroy of Participant.MediaInfo(v63);
        v64 = 0;
        v65 = v215;
      }

      else
      {
        _s15ConversationKit11ParticipantVWOhTm_16(v56, type metadata accessor for Participant.State);
        v64 = 1;
        v65 = v215;
        v62 = v221;
      }

      __swift_storeEnumTagSinglePayload(v62, v64, 1, v9);
      _s15ConversationKit11ParticipantVWOcTm_6(v225, v65, type metadata accessor for Participant.State);
      v50 = v57;
      v66 = swift_getEnumCaseMultiPayload();
      v224 = v51;
      if (v66 == 4)
      {
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
        v68 = v65;
        v69 = *(v67 + 48);
        v70 = (v68 + *(v67 + 64));
        v71 = outlined consume of Participant.CopresenceInfo?(*v70, v70[1], v70[2], v70[3], v70[4], v70[5], v70[6], v70[7]);
        (*v222)(v52, v68, v9, v71);
        outlined destroy of Participant.MediaInfo(v68 + v69);
        v72 = 0;
      }

      else
      {
        _s15ConversationKit11ParticipantVWOhTm_16(v65, type metadata accessor for Participant.State);
        v72 = 1;
      }

      __swift_storeEnumTagSinglePayload(v52, v72, 1, v9);
      v73 = *(v216 + 48);
      v74 = v219;
      outlined init with take of Date?(v221, v219);
      outlined init with take of Date?(v52, v74 + v73);
      v75 = __swift_getEnumTagSinglePayload(v74, 1, v9);
      v76 = __swift_getEnumTagSinglePayload(v74 + v73, 1, v9);
      if (v75 != 1)
      {
        v44 = v54;
        if (v76 == 1)
        {
          (*v209)(v219, v9);
          _s15ConversationKit11ParticipantVWOhTm_16(v225, type metadata accessor for Participant);
          _s15ConversationKit11ParticipantVWOhTm_16(v223, type metadata accessor for Participant);
          a3 = v211;
LABEL_49:
          v51 = v224 + v44;
          if (a1 < v224 || a1 >= v51)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v224)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          goto LABEL_66;
        }

        v95 = *v222;
        v96 = v202;
        v97 = v219;
        (*v222)(v202, v219, v9);
        v98 = v203;
        v95(v203, v97 + v73, v9);
        v99 = static Date.< infix(_:_:)();
        v100 = *v209;
        (*v209)(v98, v9);
        v101 = v96;
        v50 = v217;
        v100(v101, v9);
        v52 = v210;
        a3 = v211;
        goto LABEL_48;
      }

      v44 = v54;
      if (v76 != 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v219 + v73, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        _s15ConversationKit11ParticipantVWOhTm_16(v225, type metadata accessor for Participant);
        _s15ConversationKit11ParticipantVWOhTm_16(v223, type metadata accessor for Participant);
        a3 = v211;
        goto LABEL_55;
      }

      v212 = a1;
      v77 = v220;
      v78 = *(v223 + *(v220 + 28));
      v213 = a4;
      if (!v78)
      {
        goto LABEL_37;
      }

      v79 = v78;
      v80 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v79);
      if (!v81)
      {
        break;
      }

      v82 = v80;
      v83 = v81;
      if (([v79 shouldHideContact] & 1) == 0)
      {

        goto LABEL_37;
      }

      v207 = v82;
      v84 = v83;
      v85 = v199;
      PersonNameComponents.init()();
      PersonNameComponents.givenName.setter();
      PersonNameComponents.familyName.setter();
      if (one-time initialization token for initials != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v86 = static NSPersonNameComponentsFormatter.initials;
      v87 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v88 = [v86 stringFromPersonNameComponents_];

      v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v91 = v90;

      (*v197)(v85, v198);
      v228 = v89;
      v229 = v91;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.localizedUppercase.getter();

      v92 = v84;

      v93 = 0;
      v77 = v220;
      v52 = v210;
      v94 = v207;
LABEL_38:

      v226 = v94;
      v227 = v92;
      v207 = v92;
      v103 = *(v225 + *(v77 + 28));
      v9 = v200;
      if (v103)
      {
        v104 = v103;
        v105 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v104);
        if (v106)
        {
          v107 = v105;
          v108 = v106;
          if ([v104 shouldHideContact])
          {
            v206 = v107;
            v109 = v199;
            PersonNameComponents.init()();
            PersonNameComponents.givenName.setter();
            PersonNameComponents.familyName.setter();
            if (one-time initialization token for initials != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v110 = static NSPersonNameComponentsFormatter.initials;
            v111 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
            v112 = [v110 stringFromPersonNameComponents_];

            v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v115 = v114;

            (*v197)(v109, v198);
            v228 = v113;
            v229 = v115;
            lazy protocol witness table accessor for type String and conformance String();
            StringProtocol.localizedUppercase.getter();

            v116 = 0;
            a3 = v211;
            v52 = v210;
            v117 = v206;
            goto LABEL_47;
          }
        }

        else
        {
        }
      }

      v118 = v208;
      _s15ConversationKit11ParticipantVWOcTm_6(v225, v208, type metadata accessor for Participant);

      ParticipantContactDetailsCache.contactDetails(for:)();

      _s15ConversationKit11ParticipantVWOhTm_16(v118, type metadata accessor for Participant);
      v116 = v228;
      v117 = v229;
      v108 = v230;
      a3 = v211;
LABEL_47:

      v228 = v117;
      v229 = v108;
      lazy protocol witness table accessor for type String and conformance String();
      v119 = StringProtocol.localizedCompare<A>(_:)();

      v99 = v119 == 1;
      a1 = v212;
      a4 = v213;
      v50 = v217;
LABEL_48:
      _s15ConversationKit11ParticipantVWOhTm_16(v225, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOhTm_16(v223, type metadata accessor for Participant);
      if (v99)
      {
        goto LABEL_49;
      }

LABEL_55:
      v121 = a1 < a4 || a1 >= a4 + v44;
      v51 = v224;
      if (v121)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v232 = a4 + v44;
      a4 += v44;
LABEL_66:
      a1 += v44;
      v233 = a1;
    }

LABEL_37:
    v102 = v208;
    _s15ConversationKit11ParticipantVWOcTm_6(v223, v208, type metadata accessor for Participant);

    ParticipantContactDetailsCache.contactDetails(for:)();

    _s15ConversationKit11ParticipantVWOhTm_16(v102, type metadata accessor for Participant);
    v93 = v228;
    v94 = v229;
    v92 = v230;
    goto LABEL_38;
  }

LABEL_123:
  __break(1u);
}

{
  v62 = a4;
  v7 = type metadata accessor for IndexPath();
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v50 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v14 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v14)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v17 = (a2 - a1) / v13;
  v65 = a1;
  v64 = v62;
  v57 = (v10 + 8);
  v58 = (v10 + 16);
  v18 = v13;
  v19 = v15 / v13;
  if (v17 >= v15 / v13)
  {
    v34 = v62;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v15 / v13, v62);
    v35 = v34 + v19 * v18;
    v36 = -v18;
    v37 = v35;
    v53 = -v18;
    v54 = a1;
LABEL_36:
    v55 = a2;
    v56 = a2 + v36;
    v38 = a3;
    v51 = v37;
    while (1)
    {
      if (v35 <= v62)
      {
        v65 = a2;
        v63 = v37;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v52 = v37;
      v61 = v38 + v36;
      v39 = v35 + v36;
      v40 = v35;
      v41 = v59;
      v42 = *v58;
      (*v58)(v59, v39, v7);
      v43 = v60;
      v42(v60, v56, v7);
      _s10Foundation4UUIDVACSQAAWlTm_1(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C48]);
      LOBYTE(v42) = dispatch thunk of static Comparable.< infix(_:_:)();
      v44 = *v57;
      (*v57)(v43, v7);
      v44(v41, v7);
      if (v42)
      {
        v35 = v40;
        a3 = v61;
        if (v38 < v55 || v61 >= v55)
        {
          a2 = v56;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v52;
          v36 = v53;
          a1 = v54;
        }

        else
        {
          v48 = v52;
          v36 = v53;
          v37 = v52;
          v14 = v38 == v55;
          v49 = v56;
          a2 = v56;
          a1 = v54;
          if (!v14)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v49;
            v37 = v48;
          }
        }

        goto LABEL_36;
      }

      v45 = v61;
      if (v38 < v40 || v61 >= v40)
      {
        swift_arrayInitWithTakeFrontToBack();
        v38 = v45;
        v35 = v39;
        v37 = v39;
        a1 = v54;
        a2 = v55;
        v36 = v53;
      }

      else
      {
        v37 = v39;
        v14 = v40 == v38;
        v38 = v61;
        v35 = v39;
        a1 = v54;
        a2 = v55;
        v36 = v53;
        if (!v14)
        {
          swift_arrayInitWithTakeBackToFront();
          v38 = v45;
          v35 = v39;
          v37 = v39;
        }
      }
    }

    v65 = a2;
    v63 = v51;
  }

  else
  {
    v20 = v62;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / v13, v62);
    v56 = v20 + v17 * v18;
    v63 = v56;
    v21 = v18;
    v61 = a3;
    while (v62 < v56 && a2 < a3)
    {
      v23 = a1;
      v24 = v59;
      v25 = *v58;
      (*v58)(v59, a2, v7);
      v26 = a2;
      v27 = v60;
      v25(v60, v62, v7);
      _s10Foundation4UUIDVACSQAAWlTm_1(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C48]);
      v28 = dispatch thunk of static Comparable.< infix(_:_:)();
      v29 = *v57;
      (*v57)(v27, v7);
      v29(v24, v7);
      if (v28)
      {
        a2 = v26 + v21;
        v30 = v23;
        if (v23 < v26 || v23 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v61;
        }

        else
        {
          a3 = v61;
          if (v23 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v32 = v62 + v21;
        v30 = v23;
        if (v23 < v62 || v23 >= v32)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v26;
          a3 = v61;
        }

        else
        {
          a3 = v61;
          a2 = v26;
          if (v23 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v64 = v32;
        v62 = v32;
      }

      a1 = v30 + v21;
      v65 = a1;
    }
  }

LABEL_58:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v65, &v64, &v63);
}

{
  v49 = a3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v13 = a2 - a1;
  v14 = a2 - a1 == 0x8000000000000000 && v12 == -1;
  if (v14)
  {
    goto LABEL_61;
  }

  v15 = v49 - a2;
  if (v49 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v17 = v13 / v12;
  v54 = a1;
  v53 = a4;
  v18 = v15 / v12;
  if (v13 / v12 >= v15 / v12)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v15 / v12, a4);
    v27 = a4 + v18 * v12;
    v28 = -v12;
    v29 = v27;
    v30 = v49;
    v48 = v28;
    v45 = v10;
    v46 = a1;
LABEL_37:
    v49 = a2 + v28;
    v43 = v29;
    v47 = a2;
    while (1)
    {
      if (v27 <= a4)
      {
        v54 = a2;
        v52 = v29;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v44 = v29;
      v31 = v30 + v48;
      v32 = v27 + v48;
      v33 = v30;
      outlined init with copy of Participant?(v27 + v48, v10, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      v34 = v50;
      outlined init with copy of Participant?(v49, v50, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      v35 = *(v51 + 36);
      v36 = *(v51 + 48);
      v37 = *&v10[v35] * *&v10[v36];
      v38 = *(v34 + v35) * *(v34 + v36);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v34, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      if (v38 < v37)
      {
        v40 = v33 < v47 || v31 >= v47;
        v30 = v31;
        if (v40)
        {
          a2 = v49;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v44;
          v10 = v45;
          v28 = v48;
          a1 = v46;
        }

        else
        {
          v10 = v45;
          v29 = v44;
          v14 = v33 == v47;
          v28 = v48;
          v41 = v49;
          a2 = v49;
          a1 = v46;
          if (!v14)
          {
            v42 = v44;
            swift_arrayInitWithTakeBackToFront();
            a2 = v41;
            v29 = v42;
          }
        }

        goto LABEL_37;
      }

      if (v33 < v27 || v31 >= v27)
      {
        swift_arrayInitWithTakeFrontToBack();
        v30 = v31;
        v27 = v32;
        v29 = v32;
        a1 = v46;
        a2 = v47;
        v10 = v45;
      }

      else
      {
        v29 = v32;
        v14 = v27 == v33;
        v30 = v31;
        v27 = v32;
        a1 = v46;
        a2 = v47;
        v10 = v45;
        if (!v14)
        {
          swift_arrayInitWithTakeBackToFront();
          v30 = v31;
          v27 = v32;
          v29 = v32;
        }
      }
    }

    v54 = a2;
    v52 = v43;
  }

  else
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v13 / v12, a4);
    v48 = a4 + v17 * v12;
    v52 = v48;
    while (a4 < v48 && a2 < v49)
    {
      outlined init with copy of Participant?(a2, v10, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      v20 = v50;
      outlined init with copy of Participant?(a4, v50, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      v21 = *(v51 + 36);
      v22 = *(v51 + 48);
      v23 = *&v10[v21] * *&v10[v22];
      v24 = *(v20 + v21) * *(v20 + v22);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      if (v24 >= v23)
      {
        if (a1 < a4 || a1 >= a4 + v12)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v53 = a4 + v12;
        a4 += v12;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v12)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v12;
      }

      a1 += v12;
      v54 = a1;
    }
  }

LABEL_59:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v54, &v53, &v52);
}

{
  v53 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v18 = v14 / v13;
  v56 = a1;
  v55 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v16 / v13, a4);
    v28 = a4 + v19 * v13;
    v29 = -v13;
    v30 = v28;
    v48 = a1;
    v49 = v29;
LABEL_36:
    v50 = a2 + v29;
    v51 = a2;
    v31 = a3;
    v32 = v30;
    v47 = v30;
    while (1)
    {
      if (v28 <= a4)
      {
        v56 = v51;
        v54 = v32;
        goto LABEL_58;
      }

      if (v51 <= a1)
      {
        break;
      }

      v46 = v32;
      v33 = a4;
      v34 = v31 + v29;
      v35 = v28 + v29;
      v36 = v31;
      _s15ConversationKit11ParticipantVWOcTm_6(v28 + v29, v11, type metadata accessor for Participant);
      v37 = v11;
      v38 = v52;
      _s15ConversationKit11ParticipantVWOcTm_6(v50, v52, type metadata accessor for Participant);
      v39 = MEMORY[0x1BFB1A420](v37 + *(v53 + 20), v38 + *(v53 + 20));
      v40 = v38;
      v11 = v37;
      _s15ConversationKit11ParticipantVWOhTm_16(v40, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOhTm_16(v37, type metadata accessor for Participant);
      if (v39)
      {
        v43 = v36 < v51 || v34 >= v51;
        a4 = v33;
        if (v43)
        {
          a2 = v50;
          swift_arrayInitWithTakeFrontToBack();
          a3 = v34;
          v30 = v46;
          a1 = v48;
          v29 = v49;
        }

        else
        {
          v15 = v36 == v51;
          v29 = v49;
          v44 = v50;
          a2 = v50;
          a3 = v34;
          v30 = v46;
          a1 = v48;
          if (!v15)
          {
            v30 = v46;
            swift_arrayInitWithTakeBackToFront();
            a2 = v44;
          }
        }

        goto LABEL_36;
      }

      v41 = v36 < v28 || v34 >= v28;
      a4 = v33;
      if (v41)
      {
        swift_arrayInitWithTakeFrontToBack();
        v31 = v34;
        v28 = v35;
        v32 = v35;
        a1 = v48;
        v29 = v49;
        v30 = v47;
      }

      else
      {
        v32 = v35;
        v15 = v28 == v36;
        v31 = v34;
        v28 = v35;
        v42 = v34;
        a1 = v48;
        v29 = v49;
        v30 = v47;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v31 = v42;
          v28 = v35;
          v32 = v35;
        }
      }
    }

    v56 = v51;
    v54 = v30;
  }

  else
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v14 / v13, a4);
    v51 = a4 + v18 * v13;
    v54 = v51;
    while (a4 < v51 && a2 < a3)
    {
      v21 = a3;
      _s15ConversationKit11ParticipantVWOcTm_6(a2, v11, type metadata accessor for Participant);
      v22 = a2;
      v23 = v52;
      _s15ConversationKit11ParticipantVWOcTm_6(a4, v52, type metadata accessor for Participant);
      v24 = MEMORY[0x1BFB1A420](&v11[*(v53 + 20)], v23 + *(v53 + 20));
      _s15ConversationKit11ParticipantVWOhTm_16(v23, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOhTm_16(v11, type metadata accessor for Participant);
      if (v24)
      {
        a2 = v22 + v13;
        v25 = a1 < v22 || a1 >= a2;
        v26 = v22;
        if (v25)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (a1 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        a2 = v22;
        if (a1 < a4 || a1 >= a4 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v55 = a4 + v13;
        a4 += v13;
      }

      a1 += v13;
      v56 = a1;
    }
  }

LABEL_58:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v56, &v55, &v54, type metadata accessor for Participant);
}