uint64_t specialized implicit closure #3 in implicit closure #2 in closure #3 in Data.append<A>(contentsOf:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = NSData.startIndex.getter();
  v9 = result;
  if (!a2)
  {
LABEL_12:
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_15:
    *a1 = a4;
    a1[1] = v9;
    v14 = a4;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    while (1)
    {
      v11 = v9 + v10;
      if (v9 + v10 == NSData.endIndex.getter())
      {
        v9 += v10;
        a3 = v10;
        goto LABEL_15;
      }

      v12 = NSData.subscript.getter();
      v13 = NSData.startIndex.getter();
      result = NSData.endIndex.getter();
      if (v11 < v13 || v11 >= result)
      {
        break;
      }

      *(a2 + v10) = v12;
      if (a3 - 1 == v10)
      {
        v9 += v10 + 1;
        goto LABEL_15;
      }

      if (__OFADD__(++v10, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL specialized closure #1 in TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:)(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = *(v7 + 16);
  v13(&v25 - v11, *a1 + OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_receivingKey, v6);
  v14 = a3(0);
  v15 = (v13)(v10, a2 + *(v14 + 28), v6);
  v16 = MEMORY[0x231891580](v15);
  v18 = v17;
  v19 = MEMORY[0x231891580]();
  v21 = v20;
  v22 = specialized static Data.== infix(_:_:)(v16, v18, v19, v20);
  outlined consume of Data._Representation(v19, v21);
  outlined consume of Data._Representation(v16, v18);
  v23 = *(v7 + 8);
  v23(v10, v6);
  v23(v12, v6);
  return v22;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x231890D50]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL specialized static Data.== infix(_:_:)(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for TetraSessionState(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v4, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR, type metadata accessor for TetraSessionState);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

void specialized static TetraAPI.conversationInfo(sendingURI:sendingPushToken:senderPublicKeyCompactRepresentation:receivingURI:receivingPushToken:receivingPublicKeyCompactRepresentation:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, void *a8, uint64_t a9, unint64_t a10)
{
  v14 = static os_log_type_t.info.getter();
  v15 = v14;
  v16 = MessageProtectionLog(v14);
  if (!v16)
  {
    goto LABEL_43;
  }

  v17 = v16;
  v19 = a9;
  v18 = a10;
  v117 = a8;
  if (os_log_type_enabled(v16, v15))
  {
    v20 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v124 = v115;
    *v20 = 136316418;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v124);
    *(v20 + 12) = 2080;
    v21 = [a3 base64EncodedStringWithOptions_];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v114 = v15;
    v23 = a5;
    v25 = v24;

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v25, &v124);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2080;
    v27 = Data.base64EncodedString(options:)(0);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27._countAndFlagsBits, v27._object, &v124);

    *(v20 + 24) = v28;
    *(v20 + 32) = 2080;
    *(v20 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a6, a7, &v124);
    *(v20 + 42) = 2080;
    v29 = [a8 base64EncodedStringWithOptions_];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v124);
    v19 = a9;

    *(v20 + 44) = v33;
    *(v20 + 52) = 2080;
    v18 = a10;
    v34 = Data.base64EncodedString(options:)(0);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34._countAndFlagsBits, v34._object, &v124);
    a5 = v23;

    *(v20 + 54) = v35;
    _os_log_impl(&dword_22B404000, v17, v114, "Computing ConversationID with sendingURI:%s, sendingPushToken:%s, sendingPublicKey:%s receivingURI: %s receivingPushToken: %s receivingPublicKey:%s", v20, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x231892DF0](v115, -1, -1);
    MEMORY[0x231892DF0](v20, -1, -1);
  }

  v36 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v36)
    {
      v37 = BYTE6(a5);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v36 != 2)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v39 = *(a4 + 16);
  v38 = *(a4 + 24);
  v40 = __OFSUB__(v38, v39);
  v37 = v38 - v39;
  if (v40)
  {
    __break(1u);
LABEL_11:
    LODWORD(v37) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v37 = v37;
  }

LABEL_13:
  if (v37 != 32)
  {
    goto LABEL_44;
  }

  v41 = v18 >> 62;
  if ((v18 >> 62) <= 1)
  {
    if (!v41)
    {
      v42 = BYTE6(v18);
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v41 != 2)
  {
    goto LABEL_45;
  }

  v44 = *(v19 + 16);
  v43 = *(v19 + 24);
  v40 = __OFSUB__(v43, v44);
  v42 = v43 - v44;
  if (v40)
  {
    __break(1u);
LABEL_21:
    LODWORD(v42) = HIDWORD(v19) - v19;
    if (__OFSUB__(HIDWORD(v19), v19))
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v42 = v42;
  }

LABEL_23:
  if (v42 == 32)
  {
    v116 = a5;
    v45 = String.count.getter();
    v46 = I2OSP(value:outputByteCount:)(v45, 4);
    v48 = v47;

    v49 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(a1, a2);
    v51 = v50;
    v128 = v46;
    v129 = v48;
    v52 = MEMORY[0x277CC9318];
    v126 = MEMORY[0x277CC9318];
    v127 = MEMORY[0x277CC9300];
    v124 = v49;
    v125 = v50;
    v53 = __swift_project_boxed_opaque_existential_1(&v124, MEMORY[0x277CC9318]);
    v54 = *v53;
    v55 = v53[1];
    outlined copy of Data._Representation(v46, v48);
    outlined copy of Data._Representation(v49, v51);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v54, v55, &v128);
    outlined consume of Data._Representation(v49, v51);
    outlined consume of Data._Representation(v46, v48);
    __swift_destroy_boxed_opaque_existential_1(&v124);
    v56 = v128;
    v57 = v129;
    v58 = NSData.startIndex.getter();
    v59 = NSData.endIndex.getter();
    v60 = NSData.startIndex.getter();
    v61 = NSData.endIndex.getter();
    if (v58 < v60 || v61 < v58)
    {
      __break(1u);
    }

    else
    {
      v62 = NSData.startIndex.getter();
      v63 = NSData.endIndex.getter();
      if (v59 >= v62 && v63 >= v59)
      {
        if (!__OFSUB__(v59, v58))
        {
          v64 = I2OSP(value:outputByteCount:)(v59 - v58, 4);
          v66 = v65;
          v130 = v56;
          v131 = v57;
          v126 = v52;
          v67 = MEMORY[0x277CC9300];
          v127 = MEMORY[0x277CC9300];
          v124 = v64;
          v125 = v65;
          v68 = __swift_project_boxed_opaque_existential_1(&v124, v52);
          v69 = *v68;
          v70 = v68[1];
          outlined copy of Data._Representation(v56, v57);
          outlined copy of Data._Representation(v64, v66);
          specialized Data._Representation.withUnsafeBytes<A>(_:)(v69, v70, &v130);
          outlined consume of Data._Representation(v64, v66);
          outlined consume of Data._Representation(v56, v57);
          __swift_destroy_boxed_opaque_existential_1(&v124);
          v71 = v130;
          v72 = v131;
          v128 = v130;
          v129 = v131;
          outlined copy of Data._Representation(v130, v131);
          specialized Data.append<A>(contentsOf:)(a3);
          outlined consume of Data._Representation(v71, v72);
          v73 = v128;
          v74 = v129;
          v130 = v128;
          v131 = v129;
          v126 = v52;
          v127 = v67;
          v124 = a4;
          v125 = v116;
          v75 = __swift_project_boxed_opaque_existential_1(&v124, v52);
          v76 = *v75;
          v77 = v75[1];
          outlined copy of Data._Representation(a4, v116);
          outlined copy of Data._Representation(v73, v74);
          specialized Data._Representation.withUnsafeBytes<A>(_:)(v76, v77, &v130);
          outlined consume of Data._Representation(v73, v74);
          __swift_destroy_boxed_opaque_existential_1(&v124);
          v78 = v130;
          v123 = v131;
          v79 = String.count.getter();
          v80 = I2OSP(value:outputByteCount:)(v79, 4);
          v82 = v81;

          v83 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(a6, a7);
          v85 = v84;
          v128 = v80;
          v129 = v82;
          v126 = v52;
          v127 = v67;
          v124 = v83;
          v125 = v84;
          v86 = __swift_project_boxed_opaque_existential_1(&v124, v52);
          v87 = *v86;
          v88 = v86[1];
          outlined copy of Data._Representation(v80, v82);
          outlined copy of Data._Representation(v83, v85);
          specialized Data._Representation.withUnsafeBytes<A>(_:)(v87, v88, &v128);
          outlined consume of Data._Representation(v83, v85);
          outlined consume of Data._Representation(v80, v82);
          __swift_destroy_boxed_opaque_existential_1(&v124);
          v89 = v128;
          v90 = v129;
          v91 = NSData.startIndex.getter();
          v92 = NSData.endIndex.getter();
          v93 = NSData.startIndex.getter();
          v94 = NSData.endIndex.getter();
          if (v91 >= v93 && v94 >= v91)
          {
            v95 = NSData.startIndex.getter();
            v96 = NSData.endIndex.getter();
            if (v92 >= v95 && v96 >= v92)
            {
              if (!__OFSUB__(v92, v91))
              {
                v97 = I2OSP(value:outputByteCount:)(v92 - v91, 4);
                v99 = v98;
                v130 = v89;
                v131 = v90;
                v126 = v52;
                v121 = v78;
                v100 = MEMORY[0x277CC9300];
                v127 = MEMORY[0x277CC9300];
                v124 = v97;
                v125 = v98;
                v101 = __swift_project_boxed_opaque_existential_1(&v124, v52);
                v102 = *v101;
                v103 = v101[1];
                outlined copy of Data._Representation(v89, v90);
                outlined copy of Data._Representation(v97, v99);
                specialized Data._Representation.withUnsafeBytes<A>(_:)(v102, v103, &v130);
                outlined consume of Data._Representation(v97, v99);
                outlined consume of Data._Representation(v89, v90);
                __swift_destroy_boxed_opaque_existential_1(&v124);
                v104 = v130;
                v105 = v131;
                v128 = v130;
                v129 = v131;
                outlined copy of Data._Representation(v130, v131);
                specialized Data.append<A>(contentsOf:)(v117);
                outlined consume of Data._Representation(v104, v105);
                v106 = v128;
                v107 = v129;
                v130 = v128;
                v131 = v129;
                v126 = v52;
                v127 = v100;
                v124 = a9;
                v125 = a10;
                v108 = __swift_project_boxed_opaque_existential_1(&v124, v52);
                v109 = *v108;
                v110 = v108[1];
                outlined copy of Data._Representation(a9, a10);
                outlined copy of Data._Representation(v106, v107);
                specialized Data._Representation.withUnsafeBytes<A>(_:)(v109, v110, &v130);
                outlined consume of Data._Representation(v106, v107);
                __swift_destroy_boxed_opaque_existential_1(&v124);
                v111 = v130;
                v112 = v131;
                v113 = swift_allocObject();
                v113[2] = v121;
                v113[3] = v123;
                v113[4] = v111;
                v113[5] = v112;
                return;
              }

              goto LABEL_40;
            }

LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_45:
  __break(1u);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_yXlTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefayXlGMd, &_ss18_DictionaryStorageCySo11CFStringRefayXlGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaypGMd, &_ss18_DictionaryStorageCySo11CFStringRefaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of TetraSessionStates?(v4, &v11, &_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t specialized static TetraAPI.markForStateReset(ourURI:ourPushToken:theirURI:theirPushToken:theirRegistration:signedByOur:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, char *a6, char *a7, void *a8)
{
  v217 = a5;
  v218 = a6;
  v215 = a3;
  v216 = a4;
  v220[3] = *MEMORY[0x277D85DE8];
  v207 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v201 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v202 = &v191 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v203 = &v191 - v14;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR);
  MEMORY[0x28223BE20](v204);
  v205 = &v191 - v15;
  v213 = type metadata accessor for TetraSessionState(0);
  v206 = *(v213 - 1);
  v16 = MEMORY[0x28223BE20](v213);
  v210 = &v191 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v209 = &v191 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v211 = (&v191 - v21);
  MEMORY[0x28223BE20](v20);
  v214 = &v191 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v191 - v24;
  v26 = type metadata accessor for TetraSessionStates(0);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v212 = (&v191 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = [a8 publicKey];
  v30 = [v29 compactRepresentation];

  v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v208 = a7;
  v34 = [*&a7[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signingPublicKey] compactRepresentation];
  v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  specialized static TetraAPI.conversationInfo(sendingURI:sendingPushToken:senderPublicKeyCompactRepresentation:receivingURI:receivingPushToken:receivingPublicKeyCompactRepresentation:)(a1, a2, v215, v31, v33, v216, v217, v218, v35, v37);
  v39 = v38;
  v41 = v40;
  outlined consume of Data._Representation(v35, v37);
  outlined consume of Data._Representation(v31, v33);
  v42 = v39(1);
  v44 = v43;
  v45.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v42, v44);
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v46 = static TetraDBManager.sharedInstance;
  TetraDBManager.getSessionForNGMIdentity(conversationID:)(v45.super.isa, v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    outlined destroy of TetraSessionStates?(v25, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
    v47 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
    v48 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v48, v47))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      *(v49 + 4) = v45;
      v50->super.isa = v45.super.isa;
      v51 = v45.super.isa;
      _os_log_impl(&dword_22B404000, v48, v47, "We failed to reset the session state for the provided session: %@.", v49, 0xCu);
      outlined destroy of TetraSessionStates?(v50, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x231892DF0](v50, -1, -1);
      MEMORY[0x231892DF0](v49, -1, -1);
    }

    v52 = 0;
LABEL_7:

    return v52;
  }

  v54 = v212;
  outlined init with take of TetraRatchetOuterMessage(v25, v212, type metadata accessor for TetraSessionStates);
  v55 = *(v26 + 20);
  v56 = *(v54 + v55);
  if ((v56 == 2 || (v56 & 1) == 0) && (*(v54 + v213[9]) & 1) == 0)
  {
LABEL_29:
    TetraDBManager.saveTetraSession(conversationID:sessionStates:needsSync:)(v45.super.isa, v54, 0);
    v79 = static os_log_type_t.info.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
    isa = static OS_os_log.default.getter();
    if (os_log_type_enabled(isa, v79))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138412290;
      *(v81 + 4) = v45;
      v82->super.isa = v45.super.isa;
      v83 = v45.super.isa;
      _os_log_impl(&dword_22B404000, isa, v79, "Persisted the request to reset the following session: %@.", v81, 0xCu);
      outlined destroy of TetraSessionStates?(v82, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x231892DF0](v82, -1, -1);
      MEMORY[0x231892DF0](v81, -1, -1);
    }

    else
    {
      v83 = isa;
      isa = v45.super.isa;
    }

    outlined destroy of TetraOuterMessageType(v54, type metadata accessor for TetraSessionStates);
    v52 = 1;
    goto LABEL_7;
  }

  v57 = v208;
  v58 = v214;
  TetraSessionState.init(remoteTetraRegistration:sessionDST:)(v57, v39, v41, v214);
  v200 = v55;
  v59 = v58;
  if (specialized static TetraSessionState.== infix(_:_:)(v54, v58))
  {
    outlined assign with copy of TetraSessionState(v58, v54);
LABEL_28:
    TetraSessionStates.cleanupPreviousSessionStates()();
    outlined destroy of TetraOuterMessageType(v59, type metadata accessor for TetraSessionState);
    *(v54 + v200) = 0;
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR);
  v60 = ((*(v206 + 80) + 32) & ~*(v206 + 80));
  v216 = *(v206 + 72);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_22B48D7C0;
  v208 = v60;
  outlined init with copy of TetraOuterMessageType(v54, &v60[v61], type metadata accessor for TetraSessionState);
  v62 = *(v26 + 24);
  v63 = *(v54 + v62);
  v220[0] = v61;
  specialized Array.append<A>(contentsOf:)(v63);
  v64 = v220[0];
  v65 = outlined assign with copy of TetraSessionState(v59, v54);
  MEMORY[0x28223BE20](v65);
  v190 = v59;
  v66 = specialized Collection.firstIndex(where:)(closure #1 in TetraSessionStates.makeDefault(_:)partial apply, (&v191 - 4), v64);
  if (v67)
  {
    v68 = *(v64 + 16);
    v69 = v68;
    goto LABEL_19;
  }

  v69 = v66;
  v197 = v62;
  v198 = v46;
  v68 = v66 + 1;
  if (__OFADD__(v66, 1))
  {
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
  }

  v199 = &v191;
  v71 = (v64 + 16);
  v70 = *(v64 + 16);
  v72 = v211;
  v73 = v214;
  if (v68 == v70)
  {
LABEL_17:
    if (v68 >= v69)
    {
      v62 = v197;
      if ((v69 & 0x8000000000000000) == 0)
      {
LABEL_19:
        v215 = v69;
        if (!__OFADD__(v68, v69 - v68))
        {
          v74 = v68;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v212 + v62) = v64;
          if (isUniquelyReferenced_nonNull_native && v69 <= *(v64 + 24) >> 1)
          {
            v76 = v74;
            v54 = v212;
          }

          else
          {
            if (v74 <= v69)
            {
              v77 = v69;
            }

            else
            {
              v77 = v74;
            }

            v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v77, 1, v64, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR, type metadata accessor for TetraSessionState);
            v76 = v74;
            v64 = v78;
            v54 = v212;
            *(v212 + v62) = v78;
          }

          specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v215, v76, 0);
          *(v54 + v62) = v64;
          v59 = v214;
          goto LABEL_28;
        }

        goto LABEL_197;
      }

LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
      goto LABEL_200;
    }

LABEL_195:
    __break(1u);
    goto LABEL_196;
  }

  v196 = (v201 + 48);
  v193 = (v201 + 32);
  v194 = (v201 + 8);
  v84 = &v208[v216 * v68];
  while (1)
  {
    v218 = v68;
    if (v68 >= v70)
    {
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
      goto LABEL_195;
    }

    v217 = v64;
    v85 = outlined init with copy of TetraOuterMessageType(&v84[v64], v72, type metadata accessor for TetraSessionState);
    if (*v72 != *v73)
    {
      goto LABEL_157;
    }

    v215 = v69;
    v86 = MEMORY[0x231891720](v85);
    v88 = v87;
    v89 = MEMORY[0x231891720]();
    v91 = v88 >> 62;
    v92 = v90 >> 62;
    v206 = v86;
    if (v88 >> 62 == 3)
    {
      v93 = 0;
      if (v86)
      {
        v72 = v211;
        v69 = v215;
      }

      else
      {
        v72 = v211;
        v69 = v215;
        if (v88 == 0xC000000000000000 && v90 >> 62 == 3)
        {
          v93 = 0;
          if (!v89 && v90 == 0xC000000000000000)
          {
            outlined consume of Data._Representation(0, 0xC000000000000000);
            v94 = 0;
            v95 = 0xC000000000000000;
            goto LABEL_71;
          }
        }
      }
    }

    else if (v91 > 1)
    {
      v72 = v211;
      v69 = v215;
      if (v91 == 2)
      {
        v97 = *(v206 + 16);
        v96 = *(v206 + 24);
        v98 = __OFSUB__(v96, v97);
        v93 = v96 - v97;
        if (v98)
        {
          goto LABEL_202;
        }
      }

      else
      {
        v93 = 0;
      }
    }

    else
    {
      v72 = v211;
      v69 = v215;
      if (v91)
      {
        LODWORD(v93) = HIDWORD(v206) - v206;
        if (__OFSUB__(HIDWORD(v206), v206))
        {
          goto LABEL_201;
        }

        v93 = v93;
      }

      else
      {
        v93 = BYTE6(v88);
      }
    }

    v201 = v88;
    if (v92 > 1)
    {
      if (v92 != 2)
      {
        if (v93)
        {
LABEL_69:
          outlined consume of Data._Representation(v89, v90);
          outlined consume of Data._Representation(v206, v201);
          goto LABEL_157;
        }

LABEL_70:
        outlined consume of Data._Representation(v89, v90);
        v94 = v206;
        v95 = v201;
LABEL_71:
        outlined consume of Data._Representation(v94, v95);
        goto LABEL_72;
      }

      v101 = *(v89 + 16);
      v100 = *(v89 + 24);
      v98 = __OFSUB__(v100, v101);
      v99 = v100 - v101;
      if (v98)
      {
        goto LABEL_199;
      }
    }

    else if (v92)
    {
      LODWORD(v99) = HIDWORD(v89) - v89;
      if (__OFSUB__(HIDWORD(v89), v89))
      {
        goto LABEL_198;
      }

      v99 = v99;
    }

    else
    {
      v99 = BYTE6(v90);
    }

    if (v93 != v99)
    {
      goto LABEL_69;
    }

    if (v93 < 1)
    {
      goto LABEL_70;
    }

    if (v91 > 1)
    {
      if (v91 != 2)
      {
        memset(v220, 0, 14);
        v136 = v89;
        v137 = v90;
        outlined copy of Data._Representation(v89, v90);
        closure #1 in static Data.== infix(_:_:)(v220, v136, v137, &v219);
        outlined consume of Data._Representation(v136, v137);
        outlined consume of Data._Representation(v136, v137);
        outlined consume of Data._Representation(v206, v201);
        if ((v219 & 1) == 0)
        {
          goto LABEL_157;
        }

        goto LABEL_72;
      }

      v117 = *(v206 + 16);
      v192 = *(v206 + 24);
      v195 = v89;
      v118 = v90;
      outlined copy of Data._Representation(v89, v90);
      v119 = v201;
      v120 = __DataStorage._bytes.getter();
      if (v120)
      {
        v121 = __DataStorage._offset.getter();
        if (__OFSUB__(v117, v121))
        {
          goto LABEL_209;
        }

        v120 += v117 - v121;
        v119 = v201;
      }

      if (__OFSUB__(v192, v117))
      {
        goto LABEL_208;
      }

      MEMORY[0x231890D50]();
      v122 = v195;
      closure #1 in static Data.== infix(_:_:)(v120, v195, v118, v220);
      outlined consume of Data._Representation(v122, v118);
      v123 = v122;
      v124 = v118;
    }

    else
    {
      if (!v91)
      {
        v220[0] = v206;
        v102 = v206;
        v103 = v201;
        LODWORD(v220[1]) = v201;
        WORD2(v220[1]) = WORD2(v201);
        v195 = v220 + BYTE6(v201);
        v104 = v89;
        v105 = v90;
        outlined copy of Data._Representation(v89, v90);
        closure #1 in static Data.== infix(_:_:)(v220, v104, v105, &v219);
        outlined consume of Data._Representation(v104, v105);
        outlined consume of Data._Representation(v104, v105);
        outlined consume of Data._Representation(v102, v103);
        v106 = v219;
        goto LABEL_156;
      }

      v131 = v206;
      if (v206 >> 32 < v206)
      {
        goto LABEL_207;
      }

      v195 = v89;
      v192 = v90;
      outlined copy of Data._Representation(v89, v90);
      v132 = __DataStorage._bytes.getter();
      if (v132)
      {
        v133 = v132;
        v134 = __DataStorage._offset.getter();
        if (__OFSUB__(v131, v134))
        {
          goto LABEL_210;
        }

        v135 = v131 - v134 + v133;
      }

      else
      {
        v135 = 0;
      }

      v119 = v201;
      MEMORY[0x231890D50]();
      v170 = v195;
      v171 = v192;
      closure #1 in static Data.== infix(_:_:)(v135, v195, v192, v220);
      outlined consume of Data._Representation(v170, v171);
      v123 = v170;
      v124 = v171;
    }

    outlined consume of Data._Representation(v123, v124);
    outlined consume of Data._Representation(v206, v119);
    v106 = v220[0];
    v72 = v211;
LABEL_156:
    v69 = v215;
    if ((v106 & 1) == 0)
    {
      goto LABEL_157;
    }

LABEL_72:
    v107 = v213[8];
    v108 = *(v72 + v107);
    v109 = *(v72 + v107 + 8);
    v110 = &v214[v107];
    result = *v110;
    v111 = v110[1];
    v112 = v109 >> 62;
    v113 = v111 >> 62;
    if (v109 >> 62 == 3)
    {
      v114 = 0;
      if (!v108 && v109 == 0xC000000000000000 && v111 >> 62 == 3)
      {
        v114 = 0;
        if (!result && v111 == 0xC000000000000000)
        {
          goto LABEL_109;
        }
      }
    }

    else if (v112 > 1)
    {
      if (v112 == 2)
      {
        v116 = *(v108 + 16);
        v115 = *(v108 + 24);
        v98 = __OFSUB__(v115, v116);
        v114 = v115 - v116;
        if (v98)
        {
          goto LABEL_205;
        }
      }

      else
      {
        v114 = 0;
      }
    }

    else if (v112)
    {
      LODWORD(v114) = HIDWORD(v108) - v108;
      if (__OFSUB__(HIDWORD(v108), v108))
      {
        goto LABEL_206;
      }

      v114 = v114;
    }

    else
    {
      v114 = BYTE6(v109);
    }

    if (v113 > 1)
    {
      if (v113 != 2)
      {
        v130 = v207;
        v69 = v215;
        if (!v114)
        {
          goto LABEL_133;
        }

        goto LABEL_157;
      }

      v127 = *(result + 16);
      v126 = *(result + 24);
      v98 = __OFSUB__(v126, v127);
      v125 = v126 - v127;
      if (v98)
      {
        goto LABEL_204;
      }
    }

    else if (v113)
    {
      LODWORD(v125) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        goto LABEL_203;
      }

      v125 = v125;
    }

    else
    {
      v125 = BYTE6(v111);
    }

    if (v114 != v125)
    {
      goto LABEL_141;
    }

    if (v114 < 1)
    {
LABEL_109:
      v130 = v207;
LABEL_133:
      v201 = v84;
      v145 = v72;
      v146 = v213[7];
      v147 = v205;
      v148 = *(v204 + 48);
      outlined init with copy of TetraSessionStates?(v145 + v146, v205, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      v206 = v148;
      v149 = v130;
      outlined init with copy of TetraSessionStates?(&v214[v146], v147 + v148, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      v150 = *v196;
      if ((*v196)(v147, 1, v130) == 1)
      {
        v151 = v150(v147 + v206, 1, v130) == 1;
        v152 = v147;
        v84 = v201;
        if (v151)
        {
          outlined destroy of TetraSessionStates?(v147, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
          v72 = v211;
          outlined destroy of TetraOuterMessageType(v211, type metadata accessor for TetraSessionState);
          v64 = v217;
          v153 = v218;
          v73 = v214;
          v69 = v215;
          goto LABEL_167;
        }

LABEL_139:
        v158 = &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd;
        v159 = &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR;
LABEL_140:
        outlined destroy of TetraSessionStates?(v152, v158, v159);
        v72 = v211;
LABEL_141:
        v69 = v215;
        goto LABEL_157;
      }

      v154 = v147;
      v155 = v147;
      v156 = v203;
      outlined init with copy of TetraSessionStates?(v154, v203, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      v157 = v206;
      if (v150(v155 + v206, 1, v149) == 1)
      {
        (*v194)(v156, v149);
        v152 = v155;
        v84 = v201;
        goto LABEL_139;
      }

      v160 = (*v193)(v202, v155 + v157, v149);
      v161 = MEMORY[0x231891580](v160);
      v163 = v162;
      result = MEMORY[0x231891580]();
      v165 = v163 >> 62;
      v166 = v164 >> 62;
      v84 = v201;
      if (v163 >> 62 == 3)
      {
        v167 = 0;
        if (!v161 && v163 == 0xC000000000000000 && v164 >> 62 == 3)
        {
          v167 = 0;
          if (!result && v164 == 0xC000000000000000)
          {
            outlined consume of Data._Representation(0, 0xC000000000000000);
            v168 = 0;
            v169 = 0xC000000000000000;
LABEL_189:
            outlined consume of Data._Representation(v168, v169);
            v188 = *v194;
            v189 = v207;
            (*v194)(v202, v207);
            v188(v203, v189);
            outlined destroy of TetraSessionStates?(v205, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
            v72 = v211;
            outlined destroy of TetraOuterMessageType(v211, type metadata accessor for TetraSessionState);
            v73 = v214;
            v69 = v215;
            v64 = v217;
            v153 = v218;
            goto LABEL_167;
          }
        }
      }

      else if (v165 == 2)
      {
        v177 = *(v161 + 16);
        v176 = *(v161 + 24);
        v98 = __OFSUB__(v176, v177);
        v167 = v176 - v177;
        if (v98)
        {
          goto LABEL_217;
        }
      }

      else if (v165 == 1)
      {
        LODWORD(v167) = HIDWORD(v161) - v161;
        if (__OFSUB__(HIDWORD(v161), v161))
        {
          goto LABEL_218;
        }

        v167 = v167;
      }

      else
      {
        v167 = BYTE6(v163);
      }

      if (v166 <= 1)
      {
        if (v166)
        {
          LODWORD(v178) = HIDWORD(result) - result;
          if (__OFSUB__(HIDWORD(result), result))
          {
            goto LABEL_216;
          }

          v178 = v178;
        }

        else
        {
          v178 = BYTE6(v164);
        }

        goto LABEL_182;
      }

      if (v166 == 2)
      {
        v180 = *(result + 16);
        v179 = *(result + 24);
        v98 = __OFSUB__(v179, v180);
        v178 = v179 - v180;
        if (v98)
        {
          goto LABEL_215;
        }

LABEL_182:
        if (v167 == v178)
        {
          if (v167 < 1)
          {
            goto LABEL_188;
          }

          v181 = result;
          v182 = v164;
          outlined copy of Data._Representation(result, v164);
          v183 = specialized Data.withUnsafeBytes<A>(_:)(v161, v163, v181, v182);
          outlined consume of Data._Representation(v181, v182);
          outlined consume of Data._Representation(v161, v163);
          v184 = *v194;
          v185 = v207;
          (*v194)(v202, v207);
          v184(v203, v185);
          outlined destroy of TetraSessionStates?(v205, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
          v72 = v211;
          outlined destroy of TetraOuterMessageType(v211, type metadata accessor for TetraSessionState);
          v73 = v214;
          v69 = v215;
          if (v183)
          {
            v64 = v217;
            v153 = v218;
            goto LABEL_167;
          }

          goto LABEL_158;
        }
      }

      else if (!v167)
      {
LABEL_188:
        outlined consume of Data._Representation(result, v164);
        v168 = v161;
        v169 = v163;
        goto LABEL_189;
      }

      outlined consume of Data._Representation(result, v164);
      outlined consume of Data._Representation(v161, v163);
      v186 = *v194;
      v187 = v207;
      (*v194)(v202, v207);
      v186(v203, v187);
      v152 = v205;
      v158 = &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd;
      v159 = _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR;
      goto LABEL_140;
    }

    if (v112 <= 1)
    {
      break;
    }

    if (v112 == 2)
    {
      v138 = *(v108 + 16);
      v201 = *(v108 + 24);
      v206 = result;
      outlined copy of Data._Representation(result, v111);
      result = __DataStorage._bytes.getter();
      v139 = result;
      if (result)
      {
        result = __DataStorage._offset.getter();
        if (__OFSUB__(v138, result))
        {
          goto LABEL_213;
        }

        v139 += v138 - result;
      }

      if (__OFSUB__(v201, v138))
      {
        goto LABEL_212;
      }

      goto LABEL_129;
    }

    memset(v220, 0, 14);
    v144 = result;
    outlined copy of Data._Representation(result, v111);
    closure #1 in static Data.== infix(_:_:)(v220, v144, v111, &v219);
    v129 = v144;
LABEL_131:
    outlined consume of Data._Representation(v129, v111);
    v143 = v219;
    v130 = v207;
LABEL_132:
    v69 = v215;
    if (v143)
    {
      goto LABEL_133;
    }

LABEL_157:
    outlined destroy of TetraOuterMessageType(v72, type metadata accessor for TetraSessionState);
    v73 = v214;
LABEL_158:
    v64 = v217;
    v153 = v218;
    if (v218 != v69)
    {
      if (v69 < 0)
      {
        goto LABEL_191;
      }

      v172 = *v71;
      if (v69 >= *v71)
      {
        goto LABEL_192;
      }

      v173 = v69;
      v174 = v69 * v216;
      outlined init with copy of TetraOuterMessageType(&v208[v217 + v174], v209, type metadata accessor for TetraSessionState);
      if (v218 >= v172)
      {
        goto LABEL_193;
      }

      outlined init with copy of TetraOuterMessageType(&v84[v64], v210, type metadata accessor for TetraSessionState);
      v175 = swift_isUniquelyReferenced_nonNull_native();
      v72 = v211;
      if ((v175 & 1) == 0)
      {
        v64 = specialized _ArrayBuffer._consumeAndCreateNew()(v64);
      }

      outlined assign with take of TetraSessionState(v210, &v208[v64 + v174], type metadata accessor for TetraSessionState);
      if (v218 >= *(v64 + 16))
      {
        goto LABEL_194;
      }

      outlined assign with take of TetraSessionState(v209, &v84[v64], type metadata accessor for TetraSessionState);
      v69 = v173;
      v153 = v218;
    }

    ++v69;
LABEL_167:
    v68 = (v153 + 1);
    v71 = (v64 + 16);
    v70 = *(v64 + 16);
    v84 += v216;
    if (v68 == v70)
    {
      goto LABEL_17;
    }
  }

  if (!v112)
  {
    v220[0] = v108;
    LOWORD(v220[1]) = v109;
    BYTE2(v220[1]) = BYTE2(v109);
    BYTE3(v220[1]) = BYTE3(v109);
    BYTE4(v220[1]) = BYTE4(v109);
    BYTE5(v220[1]) = BYTE5(v109);
    v128 = result;
    outlined copy of Data._Representation(result, v111);
    closure #1 in static Data.== infix(_:_:)(v220, v128, v111, &v219);
    v129 = v128;
    goto LABEL_131;
  }

  v140 = v108;
  v141 = v108 >> 32;
  v201 = (v141 - v140);
  if (v141 >= v140)
  {
    v206 = result;
    outlined copy of Data._Representation(result, v111);
    v139 = __DataStorage._bytes.getter();
    if (v139)
    {
      result = __DataStorage._offset.getter();
      if (__OFSUB__(v140, result))
      {
        goto LABEL_214;
      }

      v139 += v140 - result;
    }

LABEL_129:
    MEMORY[0x231890D50]();
    v142 = v206;
    closure #1 in static Data.== infix(_:_:)(v139, v206, v111, v220);
    outlined consume of Data._Representation(v142, v111);
    v143 = v220[0];
    v130 = v207;
    v72 = v211;
    goto LABEL_132;
  }

  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
  return result;
}

Class specialized static TetraAPI.seal(message:authenticatedData:guid:sendingURI:sendingPushToken:receivingURI:receivingPushToken:receiverRegistration:encryptedAttributes:resetState:signedBy:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, char *a6, unint64_t a7, uint64_t a8, unint64_t a9, void *a10, char *a11, uint64_t a12, char a13, void *a14)
{
  v522 = a5;
  v530 = a8;
  v523 = a6;
  v524 = a7;
  v503 = a4;
  v502 = a3;
  v531 = a1;
  v525 = a14;
  v529 = a11;
  v537 = *MEMORY[0x277D85DE8];
  v501 = type metadata accessor for TetraKEM768Key(0);
  v500 = *(v501 - 1);
  MEMORY[0x28223BE20](v501);
  v496 = &v474 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v505 = &v474 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v488 = &v474 - v20;
  MEMORY[0x28223BE20](v19);
  v508 = (&v474 - v21);
  v504 = type metadata accessor for TetraRatchetOuterMessage(0);
  v22 = MEMORY[0x28223BE20](v504);
  v498 = &v474 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v486 = &v474 - v25;
  MEMORY[0x28223BE20](v24);
  v499 = &v474 - v26;
  v509 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v517 = *(v509 - 8);
  v27 = MEMORY[0x28223BE20](v509);
  v510 = &v474 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v483 = &v474 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v487 = &v474 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v506 = &v474 - v34;
  MEMORY[0x28223BE20](v33);
  v485 = &v474 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v39 = &v474 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v491 = &v474 - v40;
  v494 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR);
  v41 = MEMORY[0x28223BE20](v494);
  v484 = &v474 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v495 = &v474 - v43;
  v520 = type metadata accessor for TetraSessionState(0);
  v497 = *(v520 - 1);
  v44 = MEMORY[0x28223BE20](v520);
  v514 = &v474 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v492 = &v474 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v493 = &v474 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v490 = &v474 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v507 = &v474 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v513 = (&v474 - v55);
  v56 = MEMORY[0x28223BE20](v54);
  v512 = &v474 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v511 = (&v474 - v59);
  MEMORY[0x28223BE20](v58);
  v515 = &v474 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  MEMORY[0x28223BE20](v61 - 8);
  v63 = &v474 - v62;
  v519 = type metadata accessor for TetraSessionStates(0);
  v516 = *(v519 - 8);
  v64 = MEMORY[0x28223BE20](v519);
  v489 = &v474 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v518 = (&v474 - v66);
  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a12 + 16))
  {
    v69 = specialized __RawDictionaryStorage.find<A>(_:)(v67, v68);
    v71 = v70;

    if (v71)
    {
      v72 = *(a12 + 56) + 16 * v69;
      v73 = *v72;
      v526 = *(v72 + 8);
      v527 = v73;
      outlined copy of Data._Representation(v73, v526);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v526 = 0xF000000000000000;
  v527 = 0;
LABEL_6:
  v528 = a2;
  outlined copy of Data._Representation(v531, a2);
  v74 = [v525 publicKey];
  v75 = [v74 compactRepresentation];

  v76 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v77;

  v79 = [*(v529 + OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signingPublicKey) compactRepresentation];
  v80 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v81;

  specialized static TetraAPI.conversationInfo(sendingURI:sendingPushToken:senderPublicKeyCompactRepresentation:receivingURI:receivingPushToken:receivingPublicKeyCompactRepresentation:)(v522, v523, v524, v76, v78, v530, a9, a10, v80, v82);
  v84 = v83;
  v86 = v85;
  outlined consume of Data._Representation(v80, v82);
  outlined consume of Data._Representation(v76, v78);

  v524 = v84;
  v87 = v84(1);
  v89 = v88;
  v530 = v86;

  v90.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v87, v89);
  v91 = static os_log_type_t.info.getter();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  v92 = static OS_os_log.default.getter();
  v93 = os_log_type_enabled(v92, v91);
  v523 = v39;
  if (v93)
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    *&v533 = v95;
    *v94 = 136315138;
    v96 = [(objc_class *)v90.super.isa base64EncodedStringWithOptions:0];
    isa = v90.super.isa;
    v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v99;

    v101 = v98;
    v90.super.isa = isa;
    v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v100, &v533);

    *(v94 + 4) = v102;
    _os_log_impl(&dword_22B404000, v92, v91, "Encrypting for conversationID: %s", v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v95);
    MEMORY[0x231892DF0](v95, -1, -1);
    MEMORY[0x231892DF0](v94, -1, -1);
  }

  v103 = static os_log_type_t.debug.getter();
  v104 = MessageProtectionLog(v103);
  v105 = v528;
  if (!v104)
  {
    goto LABEL_430;
  }

  v106 = v104;
  os_log(_:dso:log:_:_:)(v103, &dword_22B404000, v104, "Tetra Conversation Lock: Locking.", 33, 2, MEMORY[0x277D84F90]);

  if (one-time initialization token for conversationLock != -1)
  {
    swift_once();
  }

  v107 = &unk_280F9F000;
  v108 = conversationLock;
  OS_dispatch_semaphore.wait()();

  v109 = static os_log_type_t.debug.getter();
  v110 = MessageProtectionLog(v109);
  if (!v110)
  {
LABEL_431:
    __break(1u);
  }

  v111 = v110;
  v112 = MEMORY[0x277D84F90];
  os_log(_:dso:log:_:_:)(v109, &dword_22B404000, v110, "Tetra Conversation Lock: Locked.", 32, 2, MEMORY[0x277D84F90]);

  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v113 = static TetraDBManager.sharedInstance;
  v114 = v521;
  TetraDBManager.getSessionForNGMIdentity(conversationID:)(v90.super.isa, v63);
  v115 = v114;
  if (v114)
  {
    goto LABEL_64;
  }

  v521 = v113;
  v116 = v517;
  v117 = v519;
  if ((*(v516 + 48))(v63, 1, v519) == 1)
  {
    v516 = v116;
    outlined destroy of TetraSessionStates?(v63, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
    v118 = v530;

    v119 = v529;
    v120 = v514;
    TetraSessionState.init(remoteTetraRegistration:sessionDST:)(v119, v524, v118, v514);
    v482 = v90.super.isa;

    v121 = TetraRegistration.computeKeysHash()();
    v123 = v121;
    v124 = *&v119[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_tetraVersion];
    if (v124 >= 0xF)
    {
      v124 = 15;
    }

    LODWORD(v518) = v124;
    *v120 = v124;
    v125 = *(v120 + v520[9]);
    v522 = v122;
    if (v125)
    {
      v529 = 0;
      v523 = 0xF000000000000000;
    }

    else
    {
      v135 = v122;
      outlined copy of Data._Representation(v121, v122);
      v529 = v123;
      v523 = v135;
    }

    v136 = v120 + v520[5];
    v137 = type metadata accessor for TetraRatchetState(0);
    v138 = &v136[*(v137 + 24)];

    TetraOutgoingSymmetricRatchet.sealMessage(_:)(v531, v528, v527, v526, &v533);
    v139 = v533;
    v140 = *(v137 + 28);
    v141 = *&v136[v140];
    if (v141 < 0x28)
    {
      *&v136[v140] = v141 + 1;
    }

    LODWORD(v515) = v534;
    v520 = v535;
    v517 = v536;
    v507 = *(&v139 + 1);
    v513 = v139;
    outlined copy of Data._Representation(v139, *(&v139 + 1));
    TetraECDHKey.publicKey.getter();
    v142 = type metadata accessor for TetraOutgoingKeyContent(0);
    v143 = *(v142 + 20);
    v144 = 1;
    if (!(*(v500 + 48))(&v138[v143], 1, v501))
    {
      v145 = v496;
      outlined init with copy of TetraOuterMessageType(&v138[v143], v496, type metadata accessor for TetraKEM768Key);
      TetraKEM768Key.publicKey.getter(v505);
      outlined destroy of TetraOuterMessageType(v145, type metadata accessor for TetraKEM768Key);
      v144 = 0;
    }

    v146 = type metadata accessor for Kyber768.PublicKey();
    v501 = *(*(v146 - 8) + 56);
    v501(v505, v144, 1, v146);
    v147 = &v138[*(v142 + 28)];
    v148 = v147[1];
    v511 = *v147;
    v508 = v148;
    outlined copy of Data?(v511, v148);
    v524 = (v524)(1);
    v512 = v149;
    outlined consume of Data._Representation(v123, v522);
    v150 = v513;
    v151 = v507;
    outlined consume of Data._Representation(v513, v507);
    v152 = v504;
    v506 = *(v504 + 32);
    v153 = v498;
    v501(v498 + v506, 1, 1, v146);
    v154 = v153 + v152[9];
    *v154 = xmmword_22B48D7D0;
    v155 = v153 + v152[10];
    *v155 = xmmword_22B48D7D0;
    v156 = v152[12];
    v522 = v153 + v152[13];
    *(v153 + 8) = v150;
    *(v153 + 16) = v151;
    v157 = (v153 + v156);
    v158 = v502;
    v159 = v503;
    *v157 = v502;
    v157[1] = v159;
    *(v153 + 24) = v515;
    (*(v516 + 32))(v153 + v152[7], v510, v509);
    outlined copy of Data._Representation(v158, v159);
    outlined assign with take of P256.KeyAgreement.PublicKey?(v505, v153 + v506, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
    outlined consume of Data?(*v154, *(v154 + 8));
    v160 = v508;
    *v154 = v511;
    *(v154 + 8) = v160;
    outlined consume of Data?(*v155, *(v155 + 8));

    v161 = v523;
    *v155 = v529;
    *(v155 + 8) = v161;
    v162 = (v153 + v152[11]);
    v163 = v517;
    *v162 = v520;
    v162[1] = v163;
    *v153 = v518;
    v164 = (v153 + v152[14]);
    v165 = v525;
    v166 = v512;
    *v164 = v524;
    v164[1] = v166;
    v167 = v522;
    *v522 = 0;
    *(v167 + 4) = 1;
    v63 = TetraRatchetOuterMessage.serializedData(signedBy:)(v165);
    v109 = v237;
    outlined destroy of TetraOuterMessageType(v153, type metadata accessor for TetraRatchetOuterMessage);
    v238 = v514;
    v239 = v489;
    outlined init with copy of TetraOuterMessageType(v514, v489, type metadata accessor for TetraSessionState);
    v240 = v519;
    *(v239 + *(v519 + 20)) = 0;
    *(v239 + *(v240 + 24)) = v112;
    v112 = v239;
    v241 = v482;
    TetraDBManager.saveTetraSession(conversationID:sessionStates:needsSync:)(v482, v239, 1);
    v105 = v528;
    outlined destroy of TetraOuterMessageType(v239, type metadata accessor for TetraSessionStates);
    v229 = static os_log_type_t.debug.getter();
    v373 = MessageProtectionLog(v229);
    if (v373)
    {
      v374 = v373;
      os_log(_:dso:log:_:_:)(v229, &dword_22B404000, v373, "Tetra Conversation Lock: Unlocked.", 34, 2, MEMORY[0x277D84F90]);

      v375 = conversationLock;
      OS_dispatch_semaphore.signal()();

      v231 = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v531, v105);
      outlined consume of Data?(v527, v526);
      outlined consume of Data._Representation(v63, v109);

      v341 = type metadata accessor for TetraSessionState;
      v342 = v238;
      goto LABEL_241;
    }

LABEL_455:
    __break(1u);
    for (i = v480; ; i = v112)
    {
      outlined consume of Data._Representation(i, v229);
      __break(1u);
      outlined consume of Data._Representation(v480, v479);
      __break(1u);
      outlined consume of Data._Representation(v480, v105);
      __break(1u);
      outlined consume of Data._Representation(v63, v109);
      __break(1u);
    }
  }

  v126 = v63;
  v127 = v518;
  outlined init with take of TetraRatchetOuterMessage(v126, v518, type metadata accessor for TetraSessionStates);
  v128 = *(v127 + *(v117 + 20));
  v129 = v520;
  v130 = v529;
  if ((v128 == 2 || (v128 & 1) == 0) && (*(v127 + v520[9]) != 1 || (a13 & 1) == 0))
  {
    v516 = v116;
    goto LABEL_48;
  }

  v498 = *(v117 + 20);
  v131 = v530;

  v132 = v130;
  v133 = v515;
  TetraSessionState.init(remoteTetraRegistration:sessionDST:)(v132, v524, v131, v515);
  v516 = v116;
  v134 = v133;
  if (!specialized static TetraSessionState.== infix(_:_:)(v127, v133))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR);
    v168 = (*(v497 + 80) + 32) & ~*(v497 + 80);
    v514 = *(v497 + 72);
    v169 = swift_allocObject();
    *(v169 + 16) = xmmword_22B48D7C0;
    v510 = v168;
    outlined init with copy of TetraOuterMessageType(v127, v169 + v168, type metadata accessor for TetraSessionState);
    v489 = *(v519 + 24);
    v170 = *(v127 + v489);
    *&v533 = v169;
    specialized Array.append<A>(contentsOf:)(v170);
    v171 = v533;
    v172 = outlined assign with copy of TetraSessionState(v134, v127);
    v481 = &v474;
    MEMORY[0x28223BE20](v172);
    v473 = v134;
    v173 = specialized Collection.firstIndex(where:)(closure #1 in TetraSessionStates.makeDefault(_:)partial apply, (&v474 - 4), v171);
    if (v174)
    {
      v112 = *(v171 + 16);
      v173 = v112;
LABEL_39:
      v178 = v173;
      if (__OFADD__(v112, v173 - v112))
      {
        goto LABEL_408;
      }

      v179 = v173;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v181 = v489;
      *(v127 + v489) = v171;
      if (!isUniquelyReferenced_nonNull_native || v178 > *(v171 + 24) >> 1)
      {
        if (v112 <= v178)
        {
          v182 = v178;
        }

        else
        {
          v182 = v112;
        }

        v183 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v182, 1, v171, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR, type metadata accessor for TetraSessionState);
        v181 = v489;
        v171 = v183;
        *(v127 + v489) = v183;
      }

      v184 = v112;
      v185 = v181;
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v179, v184, 0);
      *(v127 + v185) = v171;
      v129 = v520;
      v134 = v515;
      goto LABEL_47;
    }

    v482 = v90.super.isa;
    v112 = v173 + 1;
    if (__OFADD__(v173, 1))
    {
      goto LABEL_412;
    }

    v176 = (v171 + 16);
    v175 = *(v171 + 16);
    v177 = v511;
    if (v112 == v175)
    {
LABEL_37:
      if (v112 < v173)
      {
        goto LABEL_406;
      }

      v105 = v528;
      v90.super.isa = v482;
      if (v173 < 0)
      {
        goto LABEL_407;
      }

      goto LABEL_39;
    }

    v478 = (v517 + 48);
    v476 = (v517 + 32);
    v477 = (v517 + 8);
    v242 = &v510[v514 * v112];
    while (1)
    {
      if (v112 >= v175)
      {
        __break(1u);
LABEL_402:
        __break(1u);
LABEL_403:
        __break(1u);
LABEL_404:
        __break(1u);
LABEL_405:
        __break(1u);
LABEL_406:
        __break(1u);
LABEL_407:
        __break(1u);
LABEL_408:
        __break(1u);
LABEL_409:
        __break(1u);
LABEL_410:
        __break(1u);
LABEL_411:
        __break(1u);
LABEL_412:
        __break(1u);
LABEL_413:
        __break(1u);
LABEL_414:
        __break(1u);
LABEL_415:
        __break(1u);
LABEL_416:
        __break(1u);
LABEL_417:
        __break(1u);
LABEL_418:
        __break(1u);
LABEL_419:
        __break(1u);
LABEL_420:
        __break(1u);
LABEL_421:
        __break(1u);
LABEL_422:
        __break(1u);
LABEL_423:
        __break(1u);
LABEL_424:
        __break(1u);
LABEL_425:
        __break(1u);
LABEL_426:
        __break(1u);
LABEL_427:
        __break(1u);
LABEL_428:
        __break(1u);
LABEL_429:
        __break(1u);
LABEL_430:
        __break(1u);
        goto LABEL_431;
      }

      v522 = v173;
      v243 = outlined init with copy of TetraOuterMessageType(v171 + v242, v177, type metadata accessor for TetraSessionState);
      if (*v177 != *v134)
      {
        goto LABEL_160;
      }

      v505 = v171;
      v244 = v520;
      v245 = MEMORY[0x231891720](v243);
      v247 = v246;
      v229 = &v134[v244[6]];
      v248 = MEMORY[0x231891720]();
      v250 = v247 >> 62;
      v251 = v249 >> 62;
      if (v247 >> 62 == 3)
      {
        v252 = 0;
        if (v245)
        {
          v177 = v511;
        }

        else
        {
          v177 = v511;
          if (v247 == 0xC000000000000000 && v249 >> 62 == 3)
          {
            v252 = 0;
            if (!v248 && v249 == 0xC000000000000000)
            {
              outlined consume of Data._Representation(0, 0xC000000000000000);
              v253 = 0;
              v254 = 0xC000000000000000;
              goto LABEL_110;
            }
          }
        }
      }

      else if (v250 > 1)
      {
        v177 = v511;
        if (v250 == 2)
        {
          v256 = *(v245 + 16);
          v255 = *(v245 + 24);
          v257 = __OFSUB__(v255, v256);
          v252 = v255 - v256;
          if (v257)
          {
            goto LABEL_414;
          }
        }

        else
        {
          v252 = 0;
        }
      }

      else
      {
        v177 = v511;
        if (v250)
        {
          LODWORD(v252) = HIDWORD(v245) - v245;
          if (__OFSUB__(HIDWORD(v245), v245))
          {
            goto LABEL_413;
          }

          v252 = v252;
        }

        else
        {
          v252 = BYTE6(v247);
        }
      }

      if (v251 > 1)
      {
        if (v251 != 2)
        {
          if (v252)
          {
LABEL_108:
            outlined consume of Data._Representation(v248, v249);
            outlined consume of Data._Representation(v245, v247);
LABEL_158:
            v127 = v518;
            goto LABEL_159;
          }

LABEL_109:
          outlined consume of Data._Representation(v248, v249);
          v253 = v245;
          v254 = v247;
LABEL_110:
          outlined consume of Data._Representation(v253, v254);
          goto LABEL_127;
        }

        v260 = *(v248 + 16);
        v259 = *(v248 + 24);
        v257 = __OFSUB__(v259, v260);
        v258 = v259 - v260;
        if (v257)
        {
          goto LABEL_410;
        }
      }

      else if (v251)
      {
        LODWORD(v258) = HIDWORD(v248) - v248;
        if (__OFSUB__(HIDWORD(v248), v248))
        {
          goto LABEL_409;
        }

        v258 = v258;
      }

      else
      {
        v258 = BYTE6(v249);
      }

      if (v252 != v258)
      {
        goto LABEL_108;
      }

      if (v252 < 1)
      {
        goto LABEL_109;
      }

      v480 = v248;
      if (v250 > 1)
      {
        if (v250 != 2)
        {
          *(&v533 + 6) = 0;
          *&v533 = 0;
          v270 = v248;
          v271 = v249;
          outlined copy of Data._Representation(v248, v249);
          v272 = v270;
          v229 = v271;
          closure #1 in static Data.== infix(_:_:)(&v533, v272, v271, &v532);
          v115 = 0;
          v273 = v480;
          outlined consume of Data._Representation(v480, v229);
          v263 = v273;
          v264 = v229;
          goto LABEL_123;
        }

        v265 = *(v245 + 16);
        v475 = *(v245 + 24);
        v479 = v249;
        outlined copy of Data._Representation(v248, v249);
        v266 = __DataStorage._bytes.getter();
        if (v266)
        {
          v267 = __DataStorage._offset.getter();
          if (__OFSUB__(v265, v267))
          {
            goto LABEL_425;
          }

          v266 += v265 - v267;
        }

        if (__OFSUB__(v475, v265))
        {
          goto LABEL_424;
        }
      }

      else
      {
        if (!v250)
        {
          *&v533 = v245;
          WORD4(v533) = v247;
          BYTE10(v533) = BYTE2(v247);
          BYTE11(v533) = BYTE3(v247);
          BYTE12(v533) = BYTE4(v247);
          BYTE13(v533) = BYTE5(v247);
          v261 = v248;
          v229 = v249;
          outlined copy of Data._Representation(v248, v249);
          closure #1 in static Data.== infix(_:_:)(&v533, v261, v229, &v532);
          v115 = 0;
          v262 = v480;
          outlined consume of Data._Representation(v480, v229);
          v263 = v262;
          v264 = v229;
LABEL_123:
          outlined consume of Data._Representation(v263, v264);
          outlined consume of Data._Representation(v245, v247);
          v274 = v532;
          goto LABEL_126;
        }

        if (v245 >> 32 < v245)
        {
          goto LABEL_423;
        }

        v479 = v249;
        outlined copy of Data._Representation(v248, v249);
        v268 = __DataStorage._bytes.getter();
        if (v268)
        {
          v475 = v268;
          v269 = __DataStorage._offset.getter();
          if (__OFSUB__(v245, v269))
          {
            goto LABEL_426;
          }

          v266 = v245 - v269 + v475;
        }

        else
        {
          v266 = 0;
        }
      }

      MEMORY[0x231890D50]();
      closure #1 in static Data.== infix(_:_:)(v266, v480, v479, &v533);
      v115 = 0;
      v229 = v480;
      v275 = v479;
      outlined consume of Data._Representation(v480, v479);
      outlined consume of Data._Representation(v229, v275);
      outlined consume of Data._Representation(v245, v247);
      v274 = v533;
LABEL_126:
      v127 = v518;
      v177 = v511;
      v171 = v505;
      if (!v274)
      {
        goto LABEL_160;
      }

LABEL_127:
      v276 = v520[8];
      v277 = *(v177 + v276);
      v278 = *(v177 + v276 + 8);
      v279 = &v515[v276];
      v63 = *v279;
      v109 = *(v279 + 1);
      v280 = v278 >> 62;
      v281 = v109 >> 62;
      if (v278 >> 62 == 3)
      {
        v282 = 0;
        if (!v277 && v278 == 0xC000000000000000 && v109 >> 62 == 3)
        {
          v282 = 0;
          if (!v63 && v109 == 0xC000000000000000)
          {
            goto LABEL_172;
          }
        }
      }

      else if (v280 > 1)
      {
        if (v280 == 2)
        {
          v284 = *(v277 + 16);
          v283 = *(v277 + 24);
          v257 = __OFSUB__(v283, v284);
          v282 = v283 - v284;
          if (v257)
          {
            goto LABEL_421;
          }
        }

        else
        {
          v282 = 0;
        }
      }

      else if (v280)
      {
        LODWORD(v282) = HIDWORD(v277) - v277;
        if (__OFSUB__(HIDWORD(v277), v277))
        {
          goto LABEL_422;
        }

        v282 = v282;
      }

      else
      {
        v282 = BYTE6(v278);
      }

      if (v281 > 1)
      {
        if (v281 != 2)
        {
          v127 = v518;
          v171 = v505;
          if (v282)
          {
            goto LABEL_160;
          }

          goto LABEL_187;
        }

        v287 = *(v63 + 2);
        v286 = *(v63 + 3);
        v257 = __OFSUB__(v286, v287);
        v285 = v286 - v287;
        if (v257)
        {
          goto LABEL_415;
        }
      }

      else if (v281)
      {
        LODWORD(v285) = HIDWORD(v63) - v63;
        if (__OFSUB__(HIDWORD(v63), v63))
        {
          goto LABEL_416;
        }

        v285 = v285;
      }

      else
      {
        v285 = BYTE6(v109);
      }

      if (v282 != v285)
      {
        goto LABEL_158;
      }

      if (v282 < 1)
      {
LABEL_172:
        v127 = v518;
        goto LABEL_187;
      }

      if (v280 > 1)
      {
        if (v280 == 2)
        {
          v294 = *(v277 + 16);
          v295 = *(v277 + 24);
          outlined copy of Data._Representation(v63, v109);
          LOBYTE(v294) = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v294, v295, v278 & 0x3FFFFFFFFFFFFFFFLL, v63, v109);
          v115 = 0;
          outlined consume of Data._Representation(v63, v109);
          v127 = v518;
          v177 = v511;
          v171 = v505;
          if ((v294 & 1) == 0)
          {
            goto LABEL_160;
          }
        }

        else
        {
          *(&v533 + 6) = 0;
          *&v533 = 0;
          outlined copy of Data._Representation(v63, v109);
          closure #1 in static Data.== infix(_:_:)(&v533, v63, v109, &v532);
          v115 = 0;
          outlined consume of Data._Representation(v63, v109);
          v127 = v518;
          v171 = v505;
          if (!v532)
          {
            goto LABEL_160;
          }
        }
      }

      else
      {
        if (v280)
        {
          v105 = v277;
          v296 = v277 >> 32;
          v480 = v296 - v105;
          if (v296 < v105)
          {
            goto LABEL_433;
          }

          outlined copy of Data._Representation(v63, v109);
          v297 = __DataStorage._bytes.getter();
          if (v297)
          {
            v479 = v297;
            v229 = v278 & 0x3FFFFFFFFFFFFFFFLL;
            v298 = __DataStorage._offset.getter();
            if (__OFSUB__(v105, v298))
            {
              goto LABEL_436;
            }

            v299 = v105 - v298 + v479;
          }

          else
          {
            v299 = 0;
          }

          MEMORY[0x231890D50]();
          closure #1 in static Data.== infix(_:_:)(v299, v63, v109, &v533);
          v115 = 0;
          outlined consume of Data._Representation(v63, v109);
          v288 = v533;
          v127 = v518;
          v177 = v511;
        }

        else
        {
          *&v533 = v277;
          WORD4(v533) = v278;
          BYTE10(v533) = BYTE2(v278);
          BYTE11(v533) = BYTE3(v278);
          BYTE12(v533) = BYTE4(v278);
          BYTE13(v533) = BYTE5(v278);
          outlined copy of Data._Representation(v63, v109);
          closure #1 in static Data.== infix(_:_:)(&v533, v63, v109, &v532);
          v115 = 0;
          outlined consume of Data._Representation(v63, v109);
          v288 = v532;
          v127 = v518;
        }

        v171 = v505;
        if (!v288)
        {
          goto LABEL_160;
        }
      }

LABEL_187:
      v479 = v242;
      v300 = v520[7];
      v301 = *(v494 + 48);
      v302 = v177 + v300;
      v303 = v495;
      outlined init with copy of TetraSessionStates?(v302, v495, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      v480 = v301;
      outlined init with copy of TetraSessionStates?(&v515[v300], v303 + v301, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      v304 = *v478;
      v305 = v509;
      if ((*v478)(v303, 1, v509) == 1)
      {
        v306 = v304(v303 + v480, 1, v305);
        v242 = v479;
        if (v306 == 1)
        {
          outlined destroy of TetraSessionStates?(v303, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
          v177 = v511;
          outlined destroy of TetraOuterMessageType(v511, type metadata accessor for TetraSessionState);
          goto LABEL_227;
        }

        goto LABEL_192;
      }

      v307 = v491;
      outlined init with copy of TetraSessionStates?(v303, v491, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      if (v304(v303 + v480, 1, v305) == 1)
      {
        (*v477)(v307, v305);
        v242 = v479;
LABEL_192:
        outlined destroy of TetraSessionStates?(v303, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR);
        goto LABEL_193;
      }

      v308 = v303 + v480;
      v309 = v485;
      v310 = (*v476)(v485, v308, v305);
      v63 = MEMORY[0x231891580](v310);
      v109 = v311;
      v229 = v309;
      v312 = MEMORY[0x231891580]();
      v314 = v109 >> 62;
      v315 = v313 >> 62;
      v242 = v479;
      if (v109 >> 62 == 3)
      {
        v316 = 0;
        if (v63)
        {
          v105 = v491;
        }

        else
        {
          v105 = v491;
          if (v109 == 0xC000000000000000 && v313 >> 62 == 3)
          {
            v316 = 0;
            if (!v312 && v313 == 0xC000000000000000)
            {
              outlined consume of Data._Representation(0, 0xC000000000000000);
              v317 = 0;
              v318 = 0xC000000000000000;
              goto LABEL_226;
            }
          }
        }
      }

      else if (v314 == 2)
      {
        v320 = *(v63 + 2);
        v319 = *(v63 + 3);
        v257 = __OFSUB__(v319, v320);
        v316 = v319 - v320;
        v105 = v491;
        if (v257)
        {
          goto LABEL_444;
        }
      }

      else
      {
        v105 = v491;
        if (v314 == 1)
        {
          LODWORD(v316) = HIDWORD(v63) - v63;
          if (__OFSUB__(HIDWORD(v63), v63))
          {
            goto LABEL_445;
          }

          v316 = v316;
        }

        else
        {
          v316 = BYTE6(v109);
        }
      }

      if (v315 > 1)
      {
        if (v315 != 2)
        {
          if (!v316)
          {
LABEL_225:
            outlined consume of Data._Representation(v312, v313);
            v317 = v63;
            v318 = v109;
LABEL_226:
            outlined consume of Data._Representation(v317, v318);
            v331 = *v477;
            v332 = v509;
            (*v477)(v485, v509);
            v331(v105, v332);
            outlined destroy of TetraSessionStates?(v495, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
            v177 = v511;
            outlined destroy of TetraOuterMessageType(v511, type metadata accessor for TetraSessionState);
            v127 = v518;
LABEL_227:
            v171 = v505;
LABEL_228:
            v173 = v522;
            v134 = v515;
            goto LABEL_170;
          }

LABEL_224:
          outlined consume of Data._Representation(v312, v313);
          outlined consume of Data._Representation(v63, v109);
          v329 = *v477;
          v330 = v509;
          (*v477)(v485, v509);
          v329(v105, v330);
          outlined destroy of TetraSessionStates?(v495, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
          v127 = v518;
LABEL_193:
          v177 = v511;
LABEL_159:
          v171 = v505;
LABEL_160:
          outlined destroy of TetraOuterMessageType(v177, type metadata accessor for TetraSessionState);
          goto LABEL_161;
        }

        v323 = *(v312 + 16);
        v322 = *(v312 + 24);
        v257 = __OFSUB__(v322, v323);
        v321 = v322 - v323;
        if (v257)
        {
          goto LABEL_440;
        }
      }

      else if (v315)
      {
        LODWORD(v321) = HIDWORD(v312) - v312;
        if (__OFSUB__(HIDWORD(v312), v312))
        {
          goto LABEL_441;
        }

        v321 = v321;
      }

      else
      {
        v321 = BYTE6(v313);
      }

      if (v316 != v321)
      {
        goto LABEL_224;
      }

      if (v316 < 1)
      {
        goto LABEL_225;
      }

      v324 = v312;
      v325 = v313;
      outlined copy of Data._Representation(v312, v313);
      LODWORD(v480) = specialized Data.withUnsafeBytes<A>(_:)(v63, v109, v324, v325);
      v326 = v325;
      v327 = v509;
      outlined consume of Data._Representation(v324, v326);
      outlined consume of Data._Representation(v63, v109);
      v328 = *v477;
      (*v477)(v485, v327);
      v328(v491, v327);
      outlined destroy of TetraSessionStates?(v495, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      v177 = v511;
      outlined destroy of TetraOuterMessageType(v511, type metadata accessor for TetraSessionState);
      v127 = v518;
      v171 = v505;
      if (v480)
      {
        goto LABEL_228;
      }

LABEL_161:
      v289 = v522;
      v134 = v515;
      if (v112 != v522)
      {
        if ((v522 & 0x8000000000000000) != 0)
        {
          goto LABEL_402;
        }

        v290 = v171;
        v291 = *v176;
        if (v522 >= *v176)
        {
          goto LABEL_403;
        }

        v292 = v290;
        v293 = v522 * v514;
        outlined init with copy of TetraOuterMessageType(&v510[v290 + v522 * v514], v512, type metadata accessor for TetraSessionState);
        if (v112 >= v291)
        {
          goto LABEL_404;
        }

        outlined init with copy of TetraOuterMessageType(v292 + v242, v513, type metadata accessor for TetraSessionState);
        v171 = v292;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v171 = specialized _ArrayBuffer._consumeAndCreateNew()(v292);
        }

        outlined assign with take of TetraSessionState(v513, &v510[v171 + v293], type metadata accessor for TetraSessionState);
        if (v112 >= *(v171 + 16))
        {
          goto LABEL_405;
        }

        outlined assign with take of TetraSessionState(v512, v171 + v242, type metadata accessor for TetraSessionState);
        v289 = v522;
      }

      v173 = v289 + 1;
LABEL_170:
      ++v112;
      v176 = (v171 + 16);
      v175 = *(v171 + 16);
      v242 += v514;
      if (v112 == v175)
      {
        goto LABEL_37;
      }
    }
  }

  outlined assign with copy of TetraSessionState(v133, v127);
LABEL_47:
  TetraSessionStates.cleanupPreviousSessionStates()();
  outlined destroy of TetraOuterMessageType(v134, type metadata accessor for TetraSessionState);

  *(v127 + v498) = 0;
  v130 = v529;
LABEL_48:
  v186 = TetraRegistration.computeKeysHash()();
  v188 = v187;
  v189 = *(v127 + v129[9]);
  v522 = v186;
  if (v189)
  {
    v190 = *&v130[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_tetraVersion];
    if (v190 >= 0xF)
    {
      v190 = 15;
    }

    LODWORD(v519) = v190;
    *v127 = v190;

    v529 = 0;
    v523 = 0xF000000000000000;
LABEL_56:
    v196 = v127 + v129[5];
    v197 = type metadata accessor for TetraRatchetState(0);
    v198 = &v196[*(v197 + 24)];
    TetraOutgoingSymmetricRatchet.sealMessage(_:)(v531, v105, v527, v526, &v533);
    v513 = 0;
    v482 = v90.super.isa;
    v199 = v533;
    v200 = *(v197 + 28);
    v201 = *&v196[v200];
    if (v201 < 0x28)
    {
      *&v196[v200] = v201 + 1;
    }

    v515 = v188;
    LODWORD(v514) = v534;
    v520 = v535;
    v517 = v536;
    outlined copy of Data._Representation(v199, *(&v199 + 1));
    TetraECDHKey.publicKey.getter();
    v202 = type metadata accessor for TetraOutgoingKeyContent(0);
    v203 = *(v202 + 20);
    v204 = 1;
    if (!(*(v500 + 48))(&v198[v203], 1, v501))
    {
      v205 = v496;
      outlined init with copy of TetraOuterMessageType(&v198[v203], v496, type metadata accessor for TetraKEM768Key);
      TetraKEM768Key.publicKey.getter(v508);
      outlined destroy of TetraOuterMessageType(v205, type metadata accessor for TetraKEM768Key);
      v204 = 0;
    }

    v206 = type metadata accessor for Kyber768.PublicKey();
    v207 = *(*(v206 - 8) + 56);
    v207(v508, v204, 1, v206);
    v208 = &v198[*(v202 + 28)];
    v209 = v208[1];
    v511 = *v208;
    v510 = v209;
    outlined copy of Data?(v511, v209);
    v524 = (v524)(1);
    v512 = v210;
    outlined consume of Data._Representation(v522, v515);
    outlined consume of Data._Representation(v199, *(&v199 + 1));
    v109 = v504;
    v211 = *(v504 + 32);
    v112 = v499;
    v207(&v499[v211], 1, 1, v206);
    v212 = v112 + *(v109 + 36);
    *v212 = xmmword_22B48D7D0;
    v213 = v112 + *(v109 + 40);
    *v213 = xmmword_22B48D7D0;
    v214 = *(v109 + 48);
    v522 = v112 + *(v109 + 52);
    *(v112 + 8) = v199;
    v215 = (v112 + v214);
    v216 = v502;
    v217 = v503;
    *v215 = v502;
    v215[1] = v217;
    *(v112 + 24) = v514;
    (*(v516 + 32))(v112 + *(v109 + 28), v506, v509);
    outlined copy of Data._Representation(v216, v217);
    outlined assign with take of P256.KeyAgreement.PublicKey?(v508, v112 + v211, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
    outlined consume of Data?(*v212, *(v212 + 8));
    v218 = v510;
    *v212 = v511;
    *(v212 + 8) = v218;
    outlined consume of Data?(*v213, *(v213 + 8));

    v219 = v523;
    *v213 = v529;
    *(v213 + 8) = v219;
    v220 = (v112 + *(v109 + 44));
    v221 = v517;
    *v220 = v520;
    v220[1] = v221;
    *v112 = v519;
    v222 = (v112 + *(v109 + 56));
    v223 = v512;
    *v222 = v524;
    v222[1] = v223;
    v224 = v522;
    *v522 = 0;
    *(v224 + 4) = 1;
    v105 = v528;
    v90.super.isa = v482;
    v107 = &unk_280F9F000;
    v63 = v518;
    v115 = v513;
    goto LABEL_61;
  }

  v191 = v186;
  v192 = (v127 + v129[8]);
  v194 = *v192;
  v193 = v192[1];

  if (specialized static Data.== infix(_:_:)(v194, v193, v191, v188))
  {
    v195 = *(v529 + OBJC_IVAR____TtC17MessageProtection17TetraRegistration_tetraVersion);
    if (v195 >= 0xF)
    {
      v195 = 15;
    }

    LODWORD(v519) = v195;
    *v127 = v195;
    outlined copy of Data._Representation(v191, v188);
    v529 = v191;
    v523 = v188;
    v129 = v520;
    goto LABEL_56;
  }

  v227 = v529;
  v228 = v507;
  TetraSessionState.init(remoteTetraRegistration:sessionDST:)(v227, v524, v530, v507);
  v235 = *&v227[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_tetraVersion];
  if (v235 >= 0xF)
  {
    v235 = 15;
  }

  LODWORD(v513) = v235;
  *v228 = v235;
  v236 = v520;
  if (v228[v520[9]])
  {
    v529 = 0;
    v514 = 0xF000000000000000;
  }

  else
  {
    v333 = v522;
    outlined copy of Data._Representation(v522, v188);
    v529 = v333;
    v514 = v188;
  }

  v334 = &v228[v236[5]];
  v335 = type metadata accessor for TetraRatchetState(0);
  v336 = &v334[*(v335 + 24)];
  TetraOutgoingSymmetricRatchet.sealMessage(_:)(v531, v105, v527, v526, &v533);
  v482 = v90.super.isa;
  v343 = v533;
  v344 = *(v335 + 28);
  v345 = *&v334[v344];
  if (v345 < 0x28)
  {
    *&v334[v344] = v345 + 1;
  }

  v515 = v188;
  LODWORD(v510) = v534;
  v512 = v535;
  v511 = v536;
  outlined copy of Data._Representation(v343, *(&v343 + 1));
  TetraECDHKey.publicKey.getter();
  v346 = type metadata accessor for TetraOutgoingKeyContent(0);
  v347 = *(v346 + 20);
  v348 = 1;
  if (!(*(v500 + 48))(&v336[v347], 1, v501))
  {
    v349 = v496;
    outlined init with copy of TetraOuterMessageType(&v336[v347], v496, type metadata accessor for TetraKEM768Key);
    TetraKEM768Key.publicKey.getter(v488);
    outlined destroy of TetraOuterMessageType(v349, type metadata accessor for TetraKEM768Key);
    v348 = 0;
  }

  v350 = type metadata accessor for Kyber768.PublicKey();
  v351 = *(*(v350 - 8) + 56);
  v351(v488, v348, 1, v350);
  v352 = &v336[*(v346 + 28)];
  v353 = v352[1];
  v506 = *v352;
  v505 = v353;
  outlined copy of Data?(v506, v353);
  v524 = (v524)(1);
  v508 = v354;
  outlined consume of Data._Representation(v343, *(&v343 + 1));
  v355 = v504;
  v356 = *(v504 + 32);
  v357 = v486;
  v351(v486 + v356, 1, 1, v350);
  v358 = v357 + v355[9];
  *v358 = xmmword_22B48D7D0;
  v359 = v357 + v355[10];
  *v359 = xmmword_22B48D7D0;
  v360 = v355[12];
  v361 = v357 + v355[13];
  *(v357 + 8) = v343;
  v362 = (v357 + v360);
  v363 = v502;
  v364 = v503;
  *v362 = v502;
  v362[1] = v364;
  *(v357 + 24) = v510;
  v365 = *(v516 + 32);
  v366 = v357 + v355[7];
  v516 += 32;
  v510 = v365;
  (v365)(v366, v487, v509);
  outlined copy of Data._Representation(v363, v364);
  outlined assign with take of P256.KeyAgreement.PublicKey?(v488, v357 + v356, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  outlined consume of Data?(*v358, *(v358 + 8));
  v367 = v505;
  *v358 = v506;
  *(v358 + 8) = v367;
  outlined consume of Data?(*v359, *(v359 + 8));
  v368 = v514;
  *v359 = v529;
  *(v359 + 8) = v368;
  v369 = (v357 + v355[11]);
  v370 = v511;
  *v369 = v512;
  v369[1] = v370;
  *v357 = v513;
  v371 = (v357 + v355[14]);
  v372 = v508;
  *v371 = v524;
  v371[1] = v372;
  *v361 = 0;
  *(v361 + 4) = 1;
  v63 = v518;
  v109 = v507;
  if (!specialized static TetraSessionState.== infix(_:_:)(v518, v507))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR);
    v105 = (*(v497 + 80) + 32) & ~*(v497 + 80);
    v514 = *(v497 + 72);
    v376 = swift_allocObject();
    *(v376 + 16) = xmmword_22B48D7C0;
    outlined init with copy of TetraOuterMessageType(v63, v376 + v105, type metadata accessor for TetraSessionState);
    v109 = *(v519 + 24);
    v377 = *&v63[v109];
    *&v533 = v376;
    specialized Array.append<A>(contentsOf:)(v377);
    v229 = v507;
    v112 = v533;
    v378 = outlined assign with copy of TetraSessionState(v507, v63);
    MEMORY[0x28223BE20](v378);
    v473 = v229;
    v379 = specialized Collection.firstIndex(where:)(closure #1 in TetraSessionStates.makeDefault(_:)partial apply, (&v474 - 4), v112);
    v107 = &unk_280F9F000;
    v513 = &v474;
    v529 = v112;
    if (v380)
    {
      v381 = *(v112 + 16);
      v379 = v381;
LABEL_248:
      v383 = v379;
      if (__OFADD__(v381, v379 - v381))
      {
        goto LABEL_429;
      }

      v384 = v379;
      v385 = v529;
      v386 = swift_isUniquelyReferenced_nonNull_native();
      *&v63[v109] = v385;
      if (!v386 || v383 > v385[3] >> 1)
      {
        if (v381 <= v383)
        {
          v387 = v383;
        }

        else
        {
          v387 = v381;
        }

        v385 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v386, v387, 1, v385, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR, type metadata accessor for TetraSessionState);
        *&v63[v109] = v385;
      }

      v112 = v499;
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v384, v381, 0);
      *&v63[v109] = v385;
      v105 = v528;
      v90.super.isa = v482;
      v109 = v507;
      goto LABEL_256;
    }

    v519 = v105;
    v511 = v109;
    v381 = v379 + 1;
    if (__OFADD__(v379, 1))
    {
LABEL_437:
      __break(1u);
LABEL_438:
      __break(1u);
LABEL_439:
      __break(1u);
LABEL_440:
      __break(1u);
LABEL_441:
      __break(1u);
LABEL_442:
      __break(1u);
LABEL_443:
      __break(1u);
LABEL_444:
      __break(1u);
LABEL_445:
      __break(1u);
LABEL_446:
      __break(1u);
LABEL_447:
      __break(1u);
LABEL_448:
      __break(1u);
LABEL_449:
      __break(1u);
LABEL_450:
      __break(1u);
LABEL_451:
      __break(1u);
LABEL_452:
      __break(1u);
LABEL_453:
      __break(1u);
LABEL_454:
      __break(1u);
      goto LABEL_455;
    }

    v105 = v529 + 16;
    v382 = *(v529 + 16);
    v112 = v520;
    v109 = v490;
    if (v381 == v382)
    {
LABEL_246:
      v63 = v518;
      if (v381 < v379)
      {
        goto LABEL_427;
      }

      v109 = v511;
      if (v379 < 0)
      {
        goto LABEL_428;
      }

      goto LABEL_248;
    }

    v508 = (v517 + 48);
    v506 = v517 + 8;
    v63 = (v519 + v514 * v381);
    while (1)
    {
      v524 = v379;
      if (v381 >= v382)
      {
        goto LABEL_411;
      }

      v389 = outlined init with copy of TetraOuterMessageType(&v63[v529], v109, type metadata accessor for TetraSessionState);
      if (*v109 != *v229)
      {
        goto LABEL_354;
      }

      v390 = MEMORY[0x231891720](v389);
      v392 = v391;
      v393 = MEMORY[0x231891720]();
      v395 = v392 >> 62;
      v396 = v394 >> 62;
      if (v392 >> 62 == 3)
      {
        v397 = 0;
        if (v390)
        {
          v229 = v507;
          v109 = v490;
        }

        else
        {
          v229 = v507;
          v109 = v490;
          if (v392 == 0xC000000000000000 && v394 >> 62 == 3)
          {
            v397 = 0;
            if (!v393 && v394 == 0xC000000000000000)
            {
              outlined consume of Data._Representation(0, 0xC000000000000000);
              v398 = 0;
              v399 = 0xC000000000000000;
              goto LABEL_295;
            }
          }
        }
      }

      else if (v395 > 1)
      {
        v229 = v507;
        v109 = v490;
        if (v395 == 2)
        {
          v401 = *(v390 + 16);
          v400 = *(v390 + 24);
          v257 = __OFSUB__(v400, v401);
          v397 = v400 - v401;
          if (v257)
          {
            goto LABEL_439;
          }
        }

        else
        {
          v397 = 0;
        }
      }

      else
      {
        v229 = v507;
        v109 = v490;
        if (v395)
        {
          LODWORD(v397) = HIDWORD(v390) - v390;
          if (__OFSUB__(HIDWORD(v390), v390))
          {
            goto LABEL_438;
          }

          v397 = v397;
        }

        else
        {
          v397 = BYTE6(v392);
        }
      }

      if (v396 > 1)
      {
        if (v396 != 2)
        {
          if (v397)
          {
LABEL_293:
            outlined consume of Data._Representation(v393, v394);
            outlined consume of Data._Representation(v390, v392);
            v107 = &unk_280F9F000;
            goto LABEL_354;
          }

LABEL_294:
          outlined consume of Data._Representation(v393, v394);
          v398 = v390;
          v399 = v392;
LABEL_295:
          outlined consume of Data._Representation(v398, v399);
          goto LABEL_296;
        }

        v404 = *(v393 + 16);
        v403 = *(v393 + 24);
        v257 = __OFSUB__(v403, v404);
        v402 = v403 - v404;
        if (v257)
        {
          goto LABEL_435;
        }
      }

      else if (v396)
      {
        LODWORD(v402) = HIDWORD(v393) - v393;
        if (__OFSUB__(HIDWORD(v393), v393))
        {
          goto LABEL_434;
        }

        v402 = v402;
      }

      else
      {
        v402 = BYTE6(v394);
      }

      if (v397 != v402)
      {
        goto LABEL_293;
      }

      if (v397 < 1)
      {
        goto LABEL_294;
      }

      v517 = v393;
      if (v395 > 1)
      {
        if (v395 == 2)
        {
          v419 = *(v390 + 24);
          v512 = *(v390 + 16);
          v505 = v419;
          v420 = v393;
          v421 = v394;
          outlined copy of Data._Representation(v393, v394);
          v422 = v512;
          v512 = v421;
          LODWORD(v505) = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v422, v505, v392 & 0x3FFFFFFFFFFFFFFFLL, v420, v421);
          v115 = 0;
          v423 = v517;
          v424 = v512;
          outlined consume of Data._Representation(v517, v512);
          outlined consume of Data._Representation(v423, v424);
          v425 = v390;
          goto LABEL_335;
        }

        *(&v533 + 6) = 0;
        *&v533 = 0;
        v432 = v393;
        v433 = v394;
        outlined copy of Data._Representation(v393, v394);
        v434 = v432;
        v409 = v433;
        closure #1 in static Data.== infix(_:_:)(&v533, v434, v433, &v532);
        v115 = 0;
        v407 = v517;
        v408 = v517;
      }

      else
      {
        if (v395)
        {
          v112 = v390;
          v512 = v390;
          v229 = v390 >> 32;
          if (v390 >> 32 < v390)
          {
            goto LABEL_448;
          }

          v429 = v394;
          outlined copy of Data._Representation(v393, v394);
          v430 = v112;
          v431 = v517;
          LODWORD(v505) = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v430, v229, v392 & 0x3FFFFFFFFFFFFFFFLL, v517, v429);
          v115 = 0;
          outlined consume of Data._Representation(v431, v429);
          outlined consume of Data._Representation(v431, v429);
          v425 = v512;
LABEL_335:
          outlined consume of Data._Representation(v425, v392);
          v107 = &unk_280F9F000;
          v229 = v507;
          if ((v505 & 1) == 0)
          {
            goto LABEL_354;
          }

          goto LABEL_296;
        }

        *&v533 = v390;
        WORD4(v533) = v392;
        BYTE10(v533) = BYTE2(v392);
        BYTE11(v533) = BYTE3(v392);
        BYTE12(v533) = BYTE4(v392);
        BYTE13(v533) = BYTE5(v392);
        v512 = &v533 + BYTE6(v392);
        v405 = v393;
        v406 = v394;
        outlined copy of Data._Representation(v393, v394);
        v512 = v406;
        closure #1 in static Data.== infix(_:_:)(&v533, v405, v406, &v532);
        v115 = 0;
        v407 = v517;
        v408 = v517;
        v409 = v512;
      }

      outlined consume of Data._Representation(v408, v409);
      outlined consume of Data._Representation(v407, v409);
      outlined consume of Data._Representation(v390, v392);
      v107 = &unk_280F9F000;
      v229 = v507;
      if (!v532)
      {
        goto LABEL_354;
      }

LABEL_296:
      v410 = v520[8];
      v411 = *(v109 + v410);
      v112 = *(v109 + v410 + 8);
      v412 = (v229 + v410);
      v413 = *v412;
      v229 = v412[1];
      v414 = v112 >> 62;
      v415 = v229 >> 62;
      if (v112 >> 62 == 3)
      {
        v416 = 0;
        if (!v411 && v112 == 0xC000000000000000 && v229 >> 62 == 3)
        {
          v416 = 0;
          if (!v413 && v229 == 0xC000000000000000)
          {
            goto LABEL_330;
          }
        }
      }

      else if (v414 > 1)
      {
        if (v414 == 2)
        {
          v418 = *(v411 + 16);
          v417 = *(v411 + 24);
          v257 = __OFSUB__(v417, v418);
          v416 = v417 - v418;
          if (v257)
          {
            goto LABEL_447;
          }
        }

        else
        {
          v416 = 0;
        }
      }

      else if (v414)
      {
        LODWORD(v416) = HIDWORD(v411) - v411;
        if (__OFSUB__(HIDWORD(v411), v411))
        {
          goto LABEL_446;
        }

        v416 = v416;
      }

      else
      {
        v416 = BYTE6(v112);
      }

      if (v415 > 1)
      {
        if (v415 != 2)
        {
          v107 = &unk_280F9F000;
          v229 = v507;
          if (v416)
          {
            goto LABEL_354;
          }

          goto LABEL_347;
        }

        v428 = *(v413 + 16);
        v427 = *(v413 + 24);
        v257 = __OFSUB__(v427, v428);
        v426 = v427 - v428;
        if (v257)
        {
          goto LABEL_443;
        }
      }

      else if (v415)
      {
        LODWORD(v426) = HIDWORD(v413) - v413;
        if (__OFSUB__(HIDWORD(v413), v413))
        {
          goto LABEL_442;
        }

        v426 = v426;
      }

      else
      {
        v426 = BYTE6(v229);
      }

      if (v416 != v426)
      {
        v107 = &unk_280F9F000;
        v229 = v507;
        goto LABEL_354;
      }

      if (v416 < 1)
      {
LABEL_330:
        v107 = &unk_280F9F000;
        goto LABEL_347;
      }

      if (v414 > 1)
      {
        if (v414 == 2)
        {
          v435 = *(v411 + 16);
          v109 = *(v411 + 24);
          goto LABEL_343;
        }

        *(&v533 + 6) = 0;
        *&v533 = 0;
        outlined copy of Data._Representation(v413, v229);
      }

      else
      {
        if (v414)
        {
          v435 = v411;
          v109 = v411 >> 32;
          if (v411 >> 32 < v411)
          {
            goto LABEL_449;
          }

LABEL_343:
          outlined copy of Data._Representation(v413, v229);
          v436 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v435, v109, v112 & 0x3FFFFFFFFFFFFFFFLL, v413, v229);
          v115 = 0;
          outlined consume of Data._Representation(v413, v229);
          v107 = &unk_280F9F000;
          v229 = v507;
          v109 = v490;
          if ((v436 & 1) == 0)
          {
            goto LABEL_354;
          }

          goto LABEL_347;
        }

        *&v533 = v411;
        WORD4(v533) = v112;
        BYTE10(v533) = BYTE2(v112);
        BYTE11(v533) = BYTE3(v112);
        BYTE12(v533) = BYTE4(v112);
        BYTE13(v533) = BYTE5(v112);
        outlined copy of Data._Representation(v413, v229);
      }

      closure #1 in static Data.== infix(_:_:)(&v533, v413, v229, &v532);
      v115 = 0;
      outlined consume of Data._Representation(v413, v229);
      v107 = &unk_280F9F000;
      v229 = v507;
      if (!v532)
      {
        goto LABEL_354;
      }

LABEL_347:
      v512 = v63;
      v437 = v520[7];
      v438 = *(v494 + 48);
      v439 = v484;
      outlined init with copy of TetraSessionStates?(v109 + v437, v484, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      v517 = v438;
      outlined init with copy of TetraSessionStates?(&v507[v437], v439 + v438, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      v63 = *v508;
      v440 = v509;
      if ((*v508)(v439, 1, v509) == 1)
      {
        v441 = (v63)(v439 + v517, 1, v440);
        v63 = v512;
        if (v441 == 1)
        {
          outlined destroy of TetraSessionStates?(v439, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
          v109 = v490;
          outlined destroy of TetraOuterMessageType(v490, type metadata accessor for TetraSessionState);
          goto LABEL_399;
        }

        goto LABEL_352;
      }

      outlined init with copy of TetraSessionStates?(v439, v523, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      v109 = v517;
      if ((v63)(v439 + v517, 1, v440) == 1)
      {
        (*v506)(v523, v440);
        v63 = v512;
LABEL_352:
        outlined destroy of TetraSessionStates?(v439, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR);
        goto LABEL_353;
      }

      v449 = v439 + v109;
      v112 = v483;
      v450 = (v510)(v483, v449, v440);
      v451 = MEMORY[0x231891580](v450);
      v453 = v452;
      v229 = v112;
      v454 = MEMORY[0x231891580]();
      v456 = v453 >> 62;
      v457 = v455 >> 62;
      if (v453 >> 62 == 3)
      {
        v458 = 0;
        if (!v451 && v453 == 0xC000000000000000 && v455 >> 62 == 3)
        {
          v458 = 0;
          if (!v454 && v455 == 0xC000000000000000)
          {
            outlined consume of Data._Representation(0, 0xC000000000000000);
            outlined consume of Data._Representation(0, 0xC000000000000000);
            v63 = v512;
            goto LABEL_398;
          }
        }
      }

      else if (v456 == 2)
      {
        v460 = *(v451 + 16);
        v459 = *(v451 + 24);
        v257 = __OFSUB__(v459, v460);
        v458 = v459 - v460;
        if (v257)
        {
          goto LABEL_452;
        }
      }

      else if (v456 == 1)
      {
        LODWORD(v458) = HIDWORD(v451) - v451;
        if (__OFSUB__(HIDWORD(v451), v451))
        {
          goto LABEL_453;
        }

        v458 = v458;
      }

      else
      {
        v458 = BYTE6(v453);
      }

      if (v457 > 1)
      {
        if (v457 != 2)
        {
          v63 = v512;
          if (!v458)
          {
LABEL_397:
            outlined consume of Data._Representation(v454, v455);
            outlined consume of Data._Representation(v451, v453);
LABEL_398:
            v470 = *v506;
            v471 = v509;
            (*v506)(v483, v509);
            v470(v523, v471);
            outlined destroy of TetraSessionStates?(v484, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
            v109 = v490;
            outlined destroy of TetraOuterMessageType(v490, type metadata accessor for TetraSessionState);
            v107 = &unk_280F9F000;
LABEL_399:
            v112 = v520;
            v229 = v507;
            goto LABEL_400;
          }

LABEL_396:
          outlined consume of Data._Representation(v454, v455);
          outlined consume of Data._Representation(v451, v453);
          v468 = *v506;
          v469 = v509;
          (*v506)(v483, v509);
          v468(v523, v469);
          outlined destroy of TetraSessionStates?(v484, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
          v107 = &unk_280F9F000;
LABEL_353:
          v229 = v507;
          v109 = v490;
LABEL_354:
          outlined destroy of TetraOuterMessageType(v109, type metadata accessor for TetraSessionState);
          goto LABEL_355;
        }

        v463 = *(v454 + 16);
        v462 = *(v454 + 24);
        v257 = __OFSUB__(v462, v463);
        v461 = v462 - v463;
        if (v257)
        {
          goto LABEL_451;
        }
      }

      else if (v457)
      {
        LODWORD(v461) = HIDWORD(v454) - v454;
        if (__OFSUB__(HIDWORD(v454), v454))
        {
          goto LABEL_450;
        }

        v461 = v461;
      }

      else
      {
        v461 = BYTE6(v455);
      }

      v63 = v512;
      if (v458 != v461)
      {
        goto LABEL_396;
      }

      if (v458 < 1)
      {
        goto LABEL_397;
      }

      v464 = v454;
      v465 = v455;
      outlined copy of Data._Representation(v454, v455);
      LODWORD(v517) = specialized Data.withUnsafeBytes<A>(_:)(v451, v453, v464, v465);
      outlined consume of Data._Representation(v464, v465);
      outlined consume of Data._Representation(v451, v453);
      v466 = *v506;
      v467 = v509;
      (*v506)(v483, v509);
      v466(v523, v467);
      outlined destroy of TetraSessionStates?(v484, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      v109 = v490;
      outlined destroy of TetraOuterMessageType(v490, type metadata accessor for TetraSessionState);
      v107 = &unk_280F9F000;
      v229 = v507;
      if (v517)
      {
        v112 = v520;
LABEL_400:
        v443 = v529;
        v379 = v524;
        goto LABEL_365;
      }

LABEL_355:
      v442 = v524;
      if (v381 == v524)
      {
        v112 = v520;
        v443 = v529;
      }

      else
      {
        if ((v524 & 0x8000000000000000) != 0)
        {
          goto LABEL_417;
        }

        v444 = *v105;
        if (v524 >= *v105)
        {
          goto LABEL_418;
        }

        v443 = v529;
        v445 = v519;
        v446 = v524 * v514;
        outlined init with copy of TetraOuterMessageType(v529 + v519 + v524 * v514, v493, type metadata accessor for TetraSessionState);
        if (v381 >= v444)
        {
          goto LABEL_419;
        }

        outlined init with copy of TetraOuterMessageType(&v63[v443], v492, type metadata accessor for TetraSessionState);
        v447 = swift_isUniquelyReferenced_nonNull_native();
        v229 = v507;
        if ((v447 & 1) == 0)
        {
          v443 = specialized _ArrayBuffer._consumeAndCreateNew()(v443);
        }

        outlined assign with take of TetraSessionState(v492, v443 + v445 + v446, type metadata accessor for TetraSessionState);
        if (v381 >= *(v443 + 16))
        {
          goto LABEL_420;
        }

        outlined assign with take of TetraSessionState(v493, &v63[v443], type metadata accessor for TetraSessionState);
        v112 = v520;
        v442 = v524;
      }

      v379 = v442 + 1;
LABEL_365:
      ++v381;
      v529 = v443;
      v448 = *(v443 + 16);
      v105 = v443 + 16;
      v382 = v448;
      v63 += v514;
      if (v381 == v448)
      {
        goto LABEL_246;
      }
    }
  }

  outlined assign with copy of TetraSessionState(v109, v63);
  v105 = v528;
  v90.super.isa = v482;
  v107 = &unk_280F9F000;
  v112 = v499;
LABEL_256:
  v388 = v515;
  TetraSessionStates.cleanupPreviousSessionStates()();
  outlined consume of Data._Representation(v522, v388);
  outlined destroy of TetraOuterMessageType(v109, type metadata accessor for TetraSessionState);
  outlined init with take of TetraRatchetOuterMessage(v486, v112, type metadata accessor for TetraRatchetOuterMessage);

LABEL_61:
  v225 = TetraRatchetOuterMessage.serializedData(signedBy:)(v525);
  if (!v115)
  {
    v109 = v225;
    v234 = v112;
    v112 = v226;
    outlined destroy of TetraOuterMessageType(v234, type metadata accessor for TetraRatchetOuterMessage);
    v229 = v521;
    TetraDBManager.saveTetraSession(conversationID:sessionStates:needsSync:)(v90.super.isa, v63, 1);
    v63 = static os_log_type_t.debug.getter();
    v337 = MessageProtectionLog(v63);
    if (v337)
    {
      v338 = v337;
      os_log(_:dso:log:_:_:)(v63, &dword_22B404000, v337, "Tetra Conversation Lock: Unlocked.", 34, 2, MEMORY[0x277D84F90]);

      v339 = v107[483];
      OS_dispatch_semaphore.signal()();

      v340 = v112;
      v231 = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v109, v340);
      outlined consume of Data._Representation(v531, v105);
      outlined consume of Data?(v527, v526);

      v341 = type metadata accessor for TetraSessionStates;
      v342 = v518;
LABEL_241:
      outlined destroy of TetraOuterMessageType(v342, v341);

      return v231;
    }

    goto LABEL_454;
  }

  outlined destroy of TetraOuterMessageType(v112, type metadata accessor for TetraRatchetOuterMessage);
  outlined destroy of TetraOuterMessageType(v63, type metadata accessor for TetraSessionStates);
LABEL_64:
  v229 = static os_log_type_t.debug.getter();
  v230 = MessageProtectionLog(v229);
  if (!v230)
  {
    __break(1u);
LABEL_433:
    __break(1u);
LABEL_434:
    __break(1u);
LABEL_435:
    __break(1u);
LABEL_436:
    __break(1u);
    goto LABEL_437;
  }

  v231 = v230;
  os_log(_:dso:log:_:_:)(v229, &dword_22B404000, v230, "Tetra Conversation Lock: Unlocked.", 34, 2, MEMORY[0x277D84F90]);

  v232 = v107[483];
  OS_dispatch_semaphore.signal()();

  swift_willThrow();

  outlined consume of Data._Representation(v531, v105);
  outlined consume of Data?(v527, v526);
  return v231;
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

unint64_t lazy protocol witness table accessor for type MessageProtectionFeatureFlags and conformance MessageProtectionFeatureFlags()
{
  result = lazy protocol witness table cache variable for type MessageProtectionFeatureFlags and conformance MessageProtectionFeatureFlags;
  if (!lazy protocol witness table cache variable for type MessageProtectionFeatureFlags and conformance MessageProtectionFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageProtectionFeatureFlags and conformance MessageProtectionFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageProtectionFeatureFlags and conformance MessageProtectionFeatureFlags;
  if (!lazy protocol witness table cache variable for type MessageProtectionFeatureFlags and conformance MessageProtectionFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageProtectionFeatureFlags and conformance MessageProtectionFeatureFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError()
{
  result = lazy protocol witness table cache variable for type TetraGeneralError and conformance TetraGeneralError;
  if (!lazy protocol witness table cache variable for type TetraGeneralError and conformance TetraGeneralError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraGeneralError and conformance TetraGeneralError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraGeneralError and conformance TetraGeneralError;
  if (!lazy protocol witness table cache variable for type TetraGeneralError and conformance TetraGeneralError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraGeneralError and conformance TetraGeneralError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TetraAKE and conformance TetraAKE()
{
  result = lazy protocol witness table cache variable for type TetraAKE and conformance TetraAKE;
  if (!lazy protocol witness table cache variable for type TetraAKE and conformance TetraAKE)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraAKE and conformance TetraAKE);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraAKE and conformance TetraAKE;
  if (!lazy protocol witness table cache variable for type TetraAKE and conformance TetraAKE)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraAKE and conformance TetraAKE);
  }

  return result;
}

void outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    outlined copy of Data._Representation(a1, a2);
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of TetraSessionStates?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSyXlGMd, &_ss18_DictionaryStorageCySSyXlGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of TetraSessionStates?(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = a3;
  v6 = a2;
  v7 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v8 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ReceivingKeyTetraRatchet(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v10);
  v10 = v3 - v10;
  if (v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v10)
  {
    goto LABEL_20;
  }

  v9 = v7 >> 62;
  if (!(v7 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_24:
  if (v7 < 0)
  {
    v18 = v7;
  }

  else
  {
    v18 = v4;
  }

  result = MEMORY[0x231891D10](v18);
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_29;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v8[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v9)
  {
    if (v7 < 0)
    {
      v17 = v7;
    }

    else
    {
      v17 = v4;
    }

    result = MEMORY[0x231891D10](v17);
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_30;
  }

  v4[2] = result + v10;
LABEL_20:
  if (v3 > 0)
  {
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    a3 = *v4 & 0xFFFFFFFFFFFFFF8;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }
  }

  if (v6 < 0)
  {
    v13 = v6;
  }

  else
  {
    v13 = a3;
  }

  result = MEMORY[0x231891D10](v13);
  if (result < v3)
  {
    goto LABEL_21;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  if (v7)
  {
    if (v6 < 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v10 = MEMORY[0x231891D10](v11);
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v12)
  {
    goto LABEL_24;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v5, v3, 0);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      outlined copy of Data._Representation(v7, v8);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t outlined assign with copy of TetraSessionState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraSessionState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void specialized static TetraAPI.open(message:authenticatedData:guid:sendingURI:sendingPushToken:receivingURI:receivingPushToken:theirIdentity:signedBy:tetraVersion:ourPrekeys:ourSigningPublicKeyCompactRepresentation:decryptionBlock:)(unint64_t a1, void *a2, Swift::Int a3, objc_class *a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, void *a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, objc_class *a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19)
{
  v503 = a7;
  v495 = a6;
  v494 = a5;
  v501 = a4;
  v500 = a3;
  v499 = a2;
  v498 = a1;
  v20 = a19;
  v502 = a12;
  v515 = *MEMORY[0x277D85DE8];
  v459 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR);
  MEMORY[0x28223BE20](v459);
  v462 = &v455 - v21;
  v22 = type metadata accessor for TetraRatchetState(0);
  MEMORY[0x28223BE20](v22 - 8);
  v474 = &v455 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v472 = type metadata accessor for P256.Signing.PublicKey();
  v471 = *(v472 - 1);
  MEMORY[0x28223BE20](v472);
  v476 = &v455 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v473 = type metadata accessor for TetraSessionState(0);
  v461 = *(v473 - 8);
  v25 = MEMORY[0x28223BE20](v473);
  v466 = &v455 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v465 = &v455 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v467 = (&v455 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v469 = (&v455 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v470 = (&v455 - v34);
  MEMORY[0x28223BE20](v33);
  v468 = (&v455 - v35);
  v482 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v481 = *(v482 - 8);
  v36 = MEMORY[0x28223BE20](v482);
  v458 = &v455 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v477 = v37;
  MEMORY[0x28223BE20](v36);
  v478 = &v455 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  v40 = MEMORY[0x28223BE20](v39 - 8);
  v460 = &v455 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v475 = &v455 - v43;
  MEMORY[0x28223BE20](v42);
  v480 = &v455 - v44;
  v486 = type metadata accessor for TetraSessionStates(0);
  v485 = *(v486 - 8);
  v45 = MEMORY[0x28223BE20](v486);
  v479 = &v455 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v496 = &v455 - v48;
  MEMORY[0x28223BE20](v47);
  v488 = &v455 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  v51 = MEMORY[0x28223BE20](v50 - 8);
  v463 = &v455 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v464 = (&v455 - v54);
  v55 = MEMORY[0x28223BE20](v53);
  v483 = &v455 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v484 = &v455 - v58;
  MEMORY[0x28223BE20](v57);
  v491 = &v455 - v59;
  v487 = type metadata accessor for TetraRatchetOuterMessage(0);
  MEMORY[0x28223BE20](v487);
  v61 = &v455 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for TetraNoRatchetOuterMessage(0);
  MEMORY[0x28223BE20](v62 - 8);
  v489 = (&v455 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v497 = type metadata accessor for TetraOuterMessageType(0);
  v64 = MEMORY[0x28223BE20](v497);
  v492 = &v455 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v64);
  v490 = &v455 - v67;
  MEMORY[0x28223BE20](v66);
  v504 = a14;
  v505 = &v455 - v68;
  v509 = a19;
  v69 = [(objc_class *)a14 compactRepresentation];
  v70 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v71;

  v73 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v75 = v74;
  specialized static TetraAPI.conversationInfo(sendingURI:sendingPushToken:senderPublicKeyCompactRepresentation:receivingURI:receivingPushToken:receivingPublicKeyCompactRepresentation:)(v503, a8, a9, v70, v72, a10, a11, v502, v73, v74);
  v77 = v76;
  v79 = v78;
  outlined consume of Data._Representation(v73, v75);
  outlined consume of Data._Representation(v70, v72);

  v80 = v77(0);
  v82 = v81;

  v83.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v80, v82);
  v84 = static os_log_type_t.info.getter();
  v503 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  v85 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v85, v84))
  {
    v86 = swift_slowAlloc();
    v502 = swift_slowAlloc();
    *&aBlock = v502;
    *v86 = 136315138;
    v87 = [(objc_class *)v83.super.isa base64EncodedStringWithOptions:0];
    v88 = v77;
    v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    LODWORD(v457) = v84;
    v90 = v79;
    v92 = v91;

    v93 = v89;
    v77 = v88;
    v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v92, &aBlock);
    v79 = v90;
    v20 = a19;

    *(v86 + 4) = v94;
    _os_log_impl(&dword_22B404000, v85, v457, "Decrypting for conversationID: %s", v86, 0xCu);
    v95 = v502;
    __swift_destroy_boxed_opaque_existential_1(v502);
    MEMORY[0x231892DF0](v95, -1, -1);
    MEMORY[0x231892DF0](v86, -1, -1);
  }

  v96 = static os_log_type_t.debug.getter();
  v97 = MessageProtectionLog(v96);
  v98 = v505;
  if (!v97)
  {
LABEL_298:
    __break(1u);
    goto LABEL_299;
  }

  v99 = v97;
  v100 = v20;
  os_log(_:dso:log:_:_:)(v96, &dword_22B404000, v97, "Tetra Conversation Lock: Locking.", 33, 2, MEMORY[0x277D84F90]);

  if (one-time initialization token for conversationLock != -1)
  {
    swift_once();
  }

  v493 = v61;
  isa = v83.super.isa;
  v102 = conversationLock;
  OS_dispatch_semaphore.wait()();

  v103 = static os_log_type_t.debug.getter();
  v104 = MessageProtectionLog(v103);
  if (!v104)
  {
LABEL_299:
    __break(1u);
  }

  v105 = v104;
  v106 = MEMORY[0x277D84F90];
  os_log(_:dso:log:_:_:)(v103, &dword_22B404000, v104, "Tetra Conversation Lock: Locked.", 32, 2, MEMORY[0x277D84F90]);

  v107 = v77;
  v108 = v77(1);
  v110 = v109;

  v111 = v98;
  v112 = v504;
  v113 = 0;
  parseTetraOuterMessage(serializedData:authenticatedData:signedBy:onSessionWithDST:)(v498, v499, v500, v501, v504, v108, v110, v111);
  v502 = a16;
  LODWORD(v501) = a15;
  outlined consume of Data._Representation(v108, v110);
  v512 = &type metadata for MessageProtectionFeatureFlags;
  v513 = lazy protocol witness table accessor for type MessageProtectionFeatureFlags and conformance MessageProtectionFeatureFlags();
  LOBYTE(aBlock) = 3;
  v141 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v142 = v107;
  v143 = isa;
  v144 = v100;
  v145 = v496;
  if (v141)
  {
    v146 = v490;
    outlined init with copy of TetraOuterMessageType(v505, v490, type metadata accessor for TetraOuterMessageType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v147 = a13;
      v148 = v489;
      outlined init with take of TetraRatchetOuterMessage(v146, v489, type metadata accessor for TetraNoRatchetOuterMessage);
      v149 = static os_log_type_t.info.getter();
      v150 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v150, v149))
      {
        v151 = swift_slowAlloc();
        v503 = a13;
        v152 = v151;
        v153 = swift_slowAlloc();
        *&aBlock = v153;
        *v152 = 136315138;
        v154 = v142;
        v155 = [(objc_class *)v143 base64EncodedStringWithOptions:0];
        v156 = v143;
        v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v158 = v79;
        v160 = v159;

        v161 = v157;
        v143 = v156;
        v112 = v504;
        v162 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v161, v160, &aBlock);
        v79 = v158;

        *(v152 + 4) = v162;
        v142 = v154;
        v148 = v489;
        _os_log_impl(&dword_22B404000, v150, v149, "Decrypting TetraNoRatchet for conversationID: %s", v152, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v153);
        MEMORY[0x231892DF0](v153, -1, -1);
        v163 = v152;
        v147 = v503;
        MEMORY[0x231892DF0](v163, -1, -1);
      }

      if (v147)
      {

        specialized static TetraAPI.openNoRatchet(tetraOuterMessage:sessionDST:guid:authenticatedData:ourPrekeys:theirIdentity:tetraVersion:signedBy:decryptionBlock:)(v148, v142, v79, v494, v495, v502, v147, v501, v112, partial apply for thunk for @callee_unowned @convention(block) (@unowned NSData?, @unowned NSDictionary?, @unowned NSError?, @unowned (@escaping @callee_unowned @convention(block) (@unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned ObjCBool))?) -> (), v508);

        v164 = static os_log_type_t.debug.getter();
        v165 = MessageProtectionLog(v164);
        if (v165)
        {
          v166 = v165;
          os_log(_:dso:log:_:_:)(v164, &dword_22B404000, v165, "Tetra Conversation Lock: Unlocked.", 34, 2, MEMORY[0x277D84F90]);

          v167 = conversationLock;
          OS_dispatch_semaphore.signal()();

          outlined destroy of TetraOuterMessageType(v148, type metadata accessor for TetraNoRatchetOuterMessage);
          outlined destroy of TetraOuterMessageType(v505, type metadata accessor for TetraOuterMessageType);
          goto LABEL_18;
        }

        goto LABEL_305;
      }

LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
      goto LABEL_310;
    }

    outlined destroy of TetraOuterMessageType(v146, type metadata accessor for TetraOuterMessageType);
  }

  v168 = v143;
  v169 = v505;
  v170 = v492;
  outlined init with copy of TetraOuterMessageType(v505, v492, type metadata accessor for TetraOuterMessageType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of TetraOuterMessageType(v170, type metadata accessor for TetraOuterMessageType);
    lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
    v171 = swift_allocError();
    *v172 = 0;
    swift_willThrow();
    outlined destroy of TetraOuterMessageType(v169, type metadata accessor for TetraOuterMessageType);
    v173 = v168;
    goto LABEL_8;
  }

  outlined init with take of TetraRatchetOuterMessage(v170, v493, type metadata accessor for TetraRatchetOuterMessage);
  if (one-time initialization token for sharedInstance != -1)
  {
    goto LABEL_98;
  }

LABEL_30:
  v174 = static TetraDBManager.sharedInstance;
  v175 = v491;
  v173 = v168;
  TetraDBManager.getSessionForNGMIdentity(conversationID:)(v168, v491);
  v500 = v113;
  if (v113)
  {
    outlined destroy of TetraOuterMessageType(v505, type metadata accessor for TetraOuterMessageType);
    outlined destroy of TetraOuterMessageType(v493, type metadata accessor for TetraRatchetOuterMessage);
LABEL_32:
    v171 = v500;
    goto LABEL_8;
  }

  v492 = v174;
  v457 = a18;
  v176 = v175;
  v177 = v484;
  outlined init with copy of TetraSessionStates?(v176, v484, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  v178 = *(v485 + 48);
  v490 = v485 + 48;
  v489 = v178;
  v179 = (v178)(v177, 1, v486);
  v180 = v493;
  if (v179 == 1)
  {
    outlined destroy of TetraSessionStates?(v177, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  }

  else
  {
    outlined init with take of TetraRatchetOuterMessage(v177, v488, type metadata accessor for TetraSessionStates);
    v507 = 0;
    v184 = v487;
    if (*(v180 + *(v487 + 36) + 8) >> 60 == 15)
    {
      goto LABEL_41;
    }

    v185 = (v180 + *(v487 + 40));
    if (v185[1] >> 60 == 15)
    {
      goto LABEL_41;
    }

    v186 = v487;
    outlined init with copy of TetraOuterMessageType(v488, v145, type metadata accessor for TetraSessionStates);
    v187 = v481;
    v188 = v180 + *(v186 + 28);
    v145 = v480;
    v189 = v482;
    (*(v481 + 16))(v480, v188, v482);
    (*(v187 + 56))(v145, 0, 1, v189);
    v190 = v185[1];
    if (v190 >> 60 == 15)
    {
      goto LABEL_318;
    }

    v191 = v496;
    v192 = TetraSessionStates.hasSessionForEphemeralAndPrekeyHash(_:prekeyHash:)(v145, *v185, v190);
    outlined destroy of TetraSessionStates?(v145, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
    outlined destroy of TetraOuterMessageType(v191, type metadata accessor for TetraSessionStates);
    v184 = v487;
    if (v192)
    {
LABEL_41:
      v193 = v180 + *(v184 + 40);
      v194 = *v193;
      v195 = *(v193 + 8);

      v196 = v500;
      v197 = TetraSessionStates.openMessage(_:prekeysHash:sessionDST:theirTetraVersion:didRatchet:)(v180, v194, v195, v142, v79, v501, &v507);
      v171 = v196;
      if (v196)
      {

        *&aBlock = v196;
        v213 = v196;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v214 = swift_dynamicCast();
        v215 = v506;

        v180 = v493;
        v216 = v483;
        if (v214 && v215 != 2)
        {
          TetraDBManager.getSessionForNGMIdentity(conversationID:)(v173, v483);
          v230 = v486;
          v231 = (v489)(v216, 1, v486);
          if (v231 == 1)
          {
            outlined destroy of TetraSessionStates?(v216, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
            v232 = static os_log_type_t.fault.getter();
            v233 = static OS_os_log.default.getter();
            if (os_log_type_enabled(v233, v232))
            {
              v234 = swift_slowAlloc();
              v235 = swift_slowAlloc();
              *v234 = 138412290;
              *(v234 + 4) = v173;
              *v235 = v173;
              v236 = v173;
              _os_log_impl(&dword_22B404000, v233, v232, "Failed to retrieve the session state %@ for saving errored state.", v234, 0xCu);
              outlined destroy of TetraSessionStates?(v235, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              v237 = v235;
              v180 = v493;
              MEMORY[0x231892DF0](v237, -1, -1);
              MEMORY[0x231892DF0](v234, -1, -1);
            }
          }

          else
          {
            v265 = v216;
            v266 = v479;
            outlined init with take of TetraRatchetOuterMessage(v265, v479, type metadata accessor for TetraSessionStates);
            *(v266 + *(v230 + 20)) = 1;
            TetraDBManager.saveTetraSession(conversationID:sessionStates:needsSync:)(v173, v266, 0);
            outlined destroy of TetraOuterMessageType(v479, type metadata accessor for TetraSessionStates);
          }
        }

        swift_willThrow();
        outlined destroy of TetraOuterMessageType(v488, type metadata accessor for TetraSessionStates);
        goto LABEL_294;
      }

      v202 = v199;
      v203 = v200;
      v204 = v173;
      v502 = v197;
      v504 = v198;

      v205 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      if (v203 >> 60 != 15)
      {
        v206 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v207 = v144;
        v208 = v79;
        v210 = v209;
        outlined copy of Data._Representation(v202, v203);
        outlined copy of Data._Representation(v202, v203);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&aBlock = v205;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v202, v203, v206, v210, isUniquelyReferenced_nonNull_native);
        outlined consume of Data?(v202, v203);
        v79 = v208;
        v144 = v207;

        v205 = aBlock;
      }

      v212 = v482;
      TetraDBManager.saveTetraSession(conversationID:sessionStates:needsSync:)(v204, v488, v507);
      v456 = v144;
      v503 = v79;
      v238 = static os_log_type_t.debug.getter();
      v239 = MessageProtectionLog(v238);
      if (v239)
      {
        v240 = v239;
        os_log(_:dso:log:_:_:)(v238, &dword_22B404000, v239, "Tetra Conversation Lock: Unlocked.", 34, 2, MEMORY[0x277D84F90]);

        v241 = conversationLock;
        OS_dispatch_semaphore.signal()();

        v500 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v205);

        v242 = *(v493 + 6);
        v243 = v481;
        v244 = v478;
        (*(v481 + 16))(v478, &v493[*(v487 + 28)], v212);
        v245 = (*(v243 + 80) + 32) & ~*(v243 + 80);
        v246 = (v477 + v245 + 7) & 0xFFFFFFFFFFFFFFF8;
        v247 = swift_allocObject();
        *(v247 + 16) = v457;
        *(v247 + 24) = v204;
        (*(v243 + 32))(v247 + v245, v244, v212);
        *(v247 + v246) = v242;
        v501 = v204;
        v248 = v502;
        v249 = v504;
        v250 = Data._bridgeToObjectiveC()().super.isa;
        v251 = Dictionary._bridgeToObjectiveC()().super.isa;
        v513 = closure #1 in static TetraAPI.commitStateAfterSuccessfulDecryptionOfMessage(conversationID:ephemeralECDHPublicKey:messageIndex:)partial apply;
        v514 = v247;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v511 = thunk for @escaping @callee_guaranteed (@unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool);
        v512 = &block_descriptor_17;
        v252 = _Block_copy(&aBlock);

        (*(v456 + 2))(v456, v250, v251, 0, v252);
        _Block_release(v252);

        outlined consume of Data._Representation(v248, v249);
        outlined consume of Data?(v202, v203);

        outlined destroy of TetraOuterMessageType(v488, type metadata accessor for TetraSessionStates);
        outlined destroy of TetraOuterMessageType(v505, type metadata accessor for TetraOuterMessageType);
        outlined destroy of TetraSessionStates?(v491, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
        v253 = v493;
LABEL_76:
        outlined destroy of TetraOuterMessageType(v253, type metadata accessor for TetraRatchetOuterMessage);
        goto LABEL_18;
      }

LABEL_321:
      __break(1u);
LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      __break(1u);
LABEL_326:
      __break(1u);
LABEL_327:
      __break(1u);
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
LABEL_335:
      __break(1u);
LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
LABEL_339:
      __break(1u);
      return;
    }

    outlined destroy of TetraOuterMessageType(v488, type metadata accessor for TetraSessionStates);
  }

  v181 = (v180 + *(v487 + 40));
  v182 = v181[1];
  v113 = v502;
  if (v182 >> 60 == 15)
  {
    lazy protocol witness table accessor for type TetraAKE and conformance TetraAKE();
    v171 = swift_allocError();
    *v183 = 0;
LABEL_45:
    swift_willThrow();
    goto LABEL_294;
  }

  if (*(v180 + *(v487 + 36) + 8) >> 60 == 15)
  {
    lazy protocol witness table accessor for type TetraAKE and conformance TetraAKE();
    v171 = swift_allocError();
    *v201 = 1;
    goto LABEL_45;
  }

  v217 = *v181;
  *&aBlock = v106;
  if (v502 >> 62)
  {
    v448 = v217;
    if (v502 < 0)
    {
      v449 = v502;
    }

    else
    {
      v449 = v502 & 0xFFFFFFFFFFFFFF8;
    }

    v450 = v182;
    v451 = MEMORY[0x231891D10](v449);
    v182 = v450;
    v218 = v451;
    v217 = v448;
  }

  else
  {
    v218 = *((v502 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v497 = v217;
  v498 = v182;
  outlined copy of Data._Representation(v217, v182);
  v455 = v142;
  if (!v218)
  {
    v229 = MEMORY[0x277D84F90];
    goto LABEL_78;
  }

  v168 = 0;
  v503 = v113 & 0xC000000000000001;
  v499 = (v113 & 0xFFFFFFFFFFFFFF8);
  v456 = v144;
  v496 = v218;
  do
  {
    if (v503)
    {
      v220 = MEMORY[0x231891C80](v168, v113);
    }

    else
    {
      if (v168 >= v499[2])
      {
        goto LABEL_97;
      }

      v220 = *(v113 + 8 * v168 + 32);
    }

    v145 = v220;
    v144 = (v168 + 1);
    if (__OFADD__(v168, 1))
    {
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      swift_once();
      goto LABEL_30;
    }

    v221 = [v220 tetraRegistration];
    if (v221)
    {
      v222 = v221;
      v223 = v142;
      v106 = v173;
      v224 = v79;
      v225 = TetraRegistration.computeKeysHash()();
      v227 = v226;
      v228 = specialized static Data.== infix(_:_:)(v225, v226, v497, v498);
      outlined consume of Data._Representation(v225, v227);

      if (v228)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v79 = v224;
      v173 = v106;
      v142 = v223;
      v113 = v502;
      v218 = v496;
    }

    else
    {
    }

    ++v168;
    v219 = v144 == v218;
    v144 = v456;
  }

  while (!v219);
  v229 = aBlock;
  v180 = v493;
LABEL_78:
  if (v229 < 0 || (v229 & 0x4000000000000000) != 0)
  {
    if (!MEMORY[0x231891D10](v229))
    {
      goto LABEL_292;
    }

    if (MEMORY[0x231891D10](v229) != 1)
    {
      goto LABEL_291;
    }

LABEL_82:
    if ((v229 & 0xC000000000000001) != 0)
    {
      v255 = v180;
      v256 = MEMORY[0x231891C80](0, v229);
      goto LABEL_85;
    }

    if (*(v229 + 16))
    {
      v255 = v180;
      v256 = *(v229 + 32);
LABEL_85:
      v257 = v256;
      v258 = [v504 compactRepresentation];
      v259 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v261 = v260;

      *&aBlock = v259;
      *(&aBlock + 1) = v261;
      v262 = v476;
      v263 = v500;
      P256.Signing.PublicKey.init<A>(compactRepresentation:)();
      v171 = v263;
      if (v263)
      {
        outlined destroy of TetraOuterMessageType(v505, type metadata accessor for TetraOuterMessageType);
        outlined consume of Data?(v497, v498);

        outlined destroy of TetraSessionStates?(v491, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
        v264 = v255;
        goto LABEL_295;
      }

      v502 = v229;
      v504 = v173;
      v267 = v481;
      v268 = *(v481 + 16);
      v484 = *(v487 + 28);
      v269 = v475;
      v270 = v482;
      v488 = v481 + 16;
      v487 = v268;
      v268(v475, v255 + v484, v482);
      v271 = *(v267 + 56);
      v271(v269, 0, 1, v270);
      v272 = v473;
      v273 = v470;
      v503 = *(v473 + 28);
      v271(v470 + v503, 1, 1, v270);
      v274 = &v273[v272[8]];
      v275 = v497;
      v276 = v498;
      v499 = v274;
      *v274 = v497;
      *(v274 + 1) = v276;
      v277 = v471;
      v278 = *(v471 + 16);
      v496 = v272[6];
      v279 = v262;
      v280 = v472;
      v278(&v273[v496], v279, v472);
      v273[v272[9]] = 1;
      outlined copy of Data?(v275, v276);
      v281 = v257;
      TetraRatchetState.init(asReceiverWithFullPrekey:)(v281, v474);
      v500 = 0;
      v499 = v281;
      (*(v277 + 8))(v476, v280);
      outlined init with take of TetraRatchetOuterMessage(v474, &v273[v272[5]], type metadata accessor for TetraRatchetState);
      if (v501 >= 0xF)
      {
        v282 = 15;
      }

      else
      {
        v282 = v501;
      }

      *v273 = v282;
      outlined assign with take of P256.KeyAgreement.PublicKey?(v475, &v273[v503], &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      v283 = v468;
      outlined init with take of TetraRatchetOuterMessage(v273, v468, type metadata accessor for TetraSessionState);
      v507 = 0;
      *v283 = v282;
      *(v283 + v272[9]) = 1;

      v284 = v493;
      v285 = v500;
      specialized TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:)(v493, v455, v79, &v507);
      v500 = v285;
      if (v285)
      {

        outlined consume of Data?(v497, v498);
        outlined destroy of TetraOuterMessageType(v283, type metadata accessor for TetraSessionState);
        outlined destroy of TetraOuterMessageType(v505, type metadata accessor for TetraOuterMessageType);

        outlined destroy of TetraSessionStates?(v491, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
        outlined destroy of TetraOuterMessageType(v284, type metadata accessor for TetraRatchetOuterMessage);
        v173 = v504;
        goto LABEL_32;
      }

      v474 = v286;
      v475 = v287;
      v480 = v288;
      v483 = v289;
      v456 = v144;
      v503 = v79;

      v290 = v491;
      v291 = v464;
      outlined init with copy of TetraSessionStates?(v491, v464, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
      v292 = v486;
      v293 = (v489)(v291, 1, v486);
      outlined destroy of TetraSessionStates?(v291, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
      if (v293 == 1)
      {
        outlined destroy of TetraSessionStates?(v290, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
        outlined init with copy of TetraOuterMessageType(v283, v290, type metadata accessor for TetraSessionState);
        *(v290 + *(v292 + 20)) = 0;
        *(v290 + *(v292 + 24)) = MEMORY[0x277D84F90];
        (*(v485 + 56))(v290, 0, 1, v292);
LABEL_118:
        v316 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v317 = v483;
        if (v483 >> 60 != 15)
        {
          v318 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v320 = v319;
          v321 = v480;
          outlined copy of Data._Representation(v480, v317);
          outlined copy of Data._Representation(v321, v317);
          v322 = swift_isUniquelyReferenced_nonNull_native();
          *&aBlock = v316;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v321, v317, v318, v320, v322);
          outlined consume of Data?(v321, v317);

          v316 = aBlock;
        }

        v323 = v463;
        outlined init with copy of TetraSessionStates?(v491, v463, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
        if ((v489)(v323, 1, v486) == 1)
        {
          goto LABEL_336;
        }

        v324 = v500;
        TetraDBManager.saveTetraSession(conversationID:sessionStates:needsSync:)(v504, v323, v507);
        if (v324)
        {
          v171 = v324;

          outlined consume of Data._Representation(v474, v475);
          outlined consume of Data?(v480, v483);

          outlined consume of Data?(v497, v498);
          outlined destroy of TetraOuterMessageType(v468, type metadata accessor for TetraSessionState);
          outlined destroy of TetraOuterMessageType(v505, type metadata accessor for TetraOuterMessageType);

          outlined destroy of TetraOuterMessageType(v323, type metadata accessor for TetraSessionStates);
          outlined destroy of TetraSessionStates?(v491, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
          outlined destroy of TetraOuterMessageType(v493, type metadata accessor for TetraRatchetOuterMessage);
          v173 = v504;
          v144 = v456;
          goto LABEL_8;
        }

        outlined destroy of TetraOuterMessageType(v323, type metadata accessor for TetraSessionStates);
        v325 = static os_log_type_t.debug.getter();
        v326 = MessageProtectionLog(v325);
        if (!v326)
        {
          goto LABEL_338;
        }

        v327 = v326;
        os_log(_:dso:log:_:_:)(v325, &dword_22B404000, v326, "Tetra Conversation Lock: Unlocked.", 34, 2, MEMORY[0x277D84F90]);

        v328 = conversationLock;
        OS_dispatch_semaphore.signal()();

        v329 = static os_log_type_t.info.getter();
        v330 = v329;
        v331 = MessageProtectionLog(v329);
        if (v331)
        {
          v332 = v331;

          if (os_log_type_enabled(v332, v330))
          {
            v333 = swift_slowAlloc();
            v334 = swift_slowAlloc();
            *&aBlock = v334;
            *v333 = 136315138;
            *(v333 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v494, v495, &aBlock);
            _os_log_impl(&dword_22B404000, v332, v330, "Successfully decrypted %s", v333, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v334);
            MEMORY[0x231892DF0](v334, -1, -1);
            MEMORY[0x231892DF0](v333, -1, -1);
          }

          specialized _dictionaryUpCast<A, B, C, D>(_:)(v316);

          v335 = v493;
          v336 = *(v493 + 6);
          v337 = v478;
          v338 = v482;
          (v487)(v478, &v493[v484], v482);
          v339 = v481;
          v340 = (*(v481 + 80) + 32) & ~*(v481 + 80);
          v341 = (v477 + v340 + 7) & 0xFFFFFFFFFFFFFFF8;
          v342 = swift_allocObject();
          v343 = v504;
          *(v342 + 16) = v457;
          *(v342 + 24) = v343;
          (*(v339 + 32))(v342 + v340, v337, v338);
          *(v342 + v341) = v336;
          v344 = v343;
          v345 = v474;
          v346 = v475;
          v347 = Data._bridgeToObjectiveC()().super.isa;
          v348 = Dictionary._bridgeToObjectiveC()().super.isa;
          v513 = closure #1 in static TetraAPI.commitStateAfterSuccessfulDecryptionOfMessage(conversationID:ephemeralECDHPublicKey:messageIndex:)partial apply;
          v514 = v342;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v511 = thunk for @escaping @callee_guaranteed (@unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool);
          v512 = &block_descriptor;
          v349 = _Block_copy(&aBlock);

          (*(v456 + 2))(v456, v347, v348, 0, v349);
          _Block_release(v349);

          outlined consume of Data._Representation(v345, v346);
          outlined consume of Data?(v480, v483);

          outlined consume of Data?(v497, v498);
          outlined destroy of TetraOuterMessageType(v468, type metadata accessor for TetraSessionState);
          outlined destroy of TetraOuterMessageType(v505, type metadata accessor for TetraOuterMessageType);
          outlined destroy of TetraSessionStates?(v491, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
          v253 = v335;
          goto LABEL_76;
        }

        goto LABEL_339;
      }

      outlined init with copy of TetraOuterMessageType(v283, v469, type metadata accessor for TetraSessionState);
      if ((v489)(v290, 1, v292) == 1)
      {
        goto LABEL_337;
      }

      if (specialized static TetraSessionState.== infix(_:_:)(v491, v469))
      {
        outlined assign with copy of TetraSessionState(v469, v491);
LABEL_117:
        TetraSessionStates.cleanupPreviousSessionStates()();
        outlined destroy of TetraOuterMessageType(v469, type metadata accessor for TetraSessionState);
        goto LABEL_118;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR);
      v294 = (*(v461 + 80) + 32) & ~*(v461 + 80);
      v496 = *(v461 + 72);
      v295 = swift_allocObject();
      *(v295 + 16) = xmmword_22B48D7C0;
      v485 = v294;
      v296 = v491;
      outlined init with copy of TetraOuterMessageType(v491, v295 + v294, type metadata accessor for TetraSessionState);
      v297 = *(v486 + 24);
      *&aBlock = v295;

      specialized Array.append<A>(contentsOf:)(v298);
      *&v297[v296] = aBlock;

      v299 = v469;
      v300 = outlined assign with copy of TetraSessionState(v469, v296);
      v472 = &v455;
      MEMORY[0x28223BE20](v300);
      v454[2] = v299;
      v476 = v297;
      v301 = *&v297[v296];
      v302 = v301;
      v303 = v500;
      v304 = specialized Collection.firstIndex(where:)(closure #1 in TetraSessionStates.makeDefault(_:)partial apply, v454, v301);
      v500 = v303;
      if (v305)
      {
        v306 = v302[2];
LABEL_107:
        v310 = *&v476[v491];
        v311 = v310[2];
        if (v306 > v311)
        {
LABEL_310:
          __break(1u);
          goto LABEL_311;
        }

        if (v306 < 0)
        {
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          __break(1u);
LABEL_314:
          __break(1u);
LABEL_315:
          __break(1u);
LABEL_316:
          __break(1u);
LABEL_317:
          __break(1u);
LABEL_318:
          __break(1u);
LABEL_319:
          __break(1u);
LABEL_320:
          __break(1u);
          goto LABEL_321;
        }

        if (__OFADD__(v311, v306 - v311))
        {
          goto LABEL_312;
        }

        v312 = swift_isUniquelyReferenced_nonNull_native();
        *&v476[v491] = v310;
        if (!v312 || v306 > v310[3] >> 1)
        {
          if (v311 <= v306)
          {
            v313 = v306;
          }

          else
          {
            v313 = v311;
          }

          v310 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v312, v313, 1, v310, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR, type metadata accessor for TetraSessionState);
          *&v476[v491] = v310;
        }

        v314 = v491;
        v315 = v476;
        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v306, v311, 0);
        *&v315[v314] = v310;
        goto LABEL_117;
      }

      v307 = v304 + 1;
      if (__OFADD__(v304, 1))
      {
        goto LABEL_315;
      }

      v309 = v302 + 2;
      v308 = v302[2];
      if (v307 == v308)
      {
        v306 = v304;
        goto LABEL_107;
      }

      v471 = v481 + 48;
      v464 = (v481 + 32);
      v470 = (v481 + 8);
      v350 = v485 + v496 * v307;
      v351 = v467;
      v306 = v304;
      while (1)
      {
        if (v307 >= v308)
        {
          goto LABEL_303;
        }

        v501 = v302;
        v352 = outlined init with copy of TetraOuterMessageType(v302 + v350, v351, type metadata accessor for TetraSessionState);
        if (*v351 != *v469)
        {
          goto LABEL_238;
        }

        v479 = v306;
        v353 = MEMORY[0x231891720](v352);
        v355 = v354;
        v356 = MEMORY[0x231891720]();
        v358 = v356;
        v359 = v357;
        v360 = v355 >> 62;
        v361 = v357 >> 62;
        if (v355 >> 62 == 3)
        {
          v362 = 0;
          v363 = v353;
          if (!v353 && v355 == 0xC000000000000000 && v357 >> 62 == 3)
          {
            v362 = 0;
            if (!v356 && v357 == 0xC000000000000000)
            {
              outlined consume of Data._Representation(0, 0xC000000000000000);
              v364 = 0;
              v365 = 0xC000000000000000;
              goto LABEL_165;
            }
          }
        }

        else
        {
          v363 = v353;
          if (v360 > 1)
          {
            if (v360 == 2)
            {
              v367 = *(v353 + 16);
              v366 = *(v353 + 24);
              v368 = __OFSUB__(v366, v367);
              v362 = v366 - v367;
              if (v368)
              {
                goto LABEL_317;
              }
            }

            else
            {
              v362 = 0;
            }
          }

          else if (v360)
          {
            LODWORD(v362) = HIDWORD(v353) - v353;
            if (__OFSUB__(HIDWORD(v353), v353))
            {
              goto LABEL_316;
            }

            v362 = v362;
          }

          else
          {
            v362 = BYTE6(v355);
          }
        }

        if (v361 > 1)
        {
          if (v361 != 2)
          {
            if (v362)
            {
LABEL_163:
              outlined consume of Data._Representation(v356, v357);
              outlined consume of Data._Representation(v363, v355);
              goto LABEL_237;
            }

LABEL_164:
            outlined consume of Data._Representation(v356, v357);
            v364 = v363;
            v365 = v355;
LABEL_165:
            outlined consume of Data._Representation(v364, v365);
            v351 = v467;
            goto LABEL_182;
          }

          v371 = *(v356 + 16);
          v370 = *(v356 + 24);
          v368 = __OFSUB__(v370, v371);
          v369 = v370 - v371;
          if (v368)
          {
            goto LABEL_314;
          }
        }

        else if (v361)
        {
          LODWORD(v369) = HIDWORD(v356) - v356;
          if (__OFSUB__(HIDWORD(v356), v356))
          {
            goto LABEL_313;
          }

          v369 = v369;
        }

        else
        {
          v369 = BYTE6(v357);
        }

        if (v362 != v369)
        {
          goto LABEL_163;
        }

        if (v362 < 1)
        {
          goto LABEL_164;
        }

        if (v360 > 1)
        {
          if (v360 != 2)
          {
            *(&aBlock + 6) = 0;
            *&aBlock = 0;
            outlined copy of Data._Representation(v356, v357);
            v384 = v500;
            closure #1 in static Data.== infix(_:_:)(&aBlock, v358, v359, &v506);
            v500 = v384;
            outlined consume of Data._Representation(v358, v359);
            outlined consume of Data._Representation(v358, v359);
            v373 = v363;
            goto LABEL_177;
          }

          v374 = *(v363 + 16);
          v461 = *(v363 + 24);
          outlined copy of Data._Representation(v356, v357);
          v375 = __DataStorage._bytes.getter();
          if (v375)
          {
            v376 = __DataStorage._offset.getter();
            if (__OFSUB__(v374, v376))
            {
              goto LABEL_326;
            }

            v375 += v374 - v376;
          }

          if (__OFSUB__(v461, v374))
          {
            goto LABEL_325;
          }

          MEMORY[0x231890D50]();
          v377 = v375;
          v378 = v500;
          closure #1 in static Data.== infix(_:_:)(v377, v358, v359, &aBlock);
          v500 = v378;
          outlined consume of Data._Representation(v358, v359);
          outlined consume of Data._Representation(v358, v359);
          v379 = v363;
        }

        else
        {
          if (!v360)
          {
            *&aBlock = v363;
            WORD4(aBlock) = v355;
            BYTE10(aBlock) = BYTE2(v355);
            BYTE11(aBlock) = BYTE3(v355);
            BYTE12(aBlock) = BYTE4(v355);
            BYTE13(aBlock) = BYTE5(v355);
            outlined copy of Data._Representation(v356, v357);
            v372 = v500;
            closure #1 in static Data.== infix(_:_:)(&aBlock, v358, v359, &v506);
            v500 = v372;
            outlined consume of Data._Representation(v358, v359);
            outlined consume of Data._Representation(v358, v359);
            v373 = v363;
LABEL_177:
            outlined consume of Data._Representation(v373, v355);
            v385 = v506;
            goto LABEL_181;
          }

          v461 = v363;
          if (v363 >> 32 < v363)
          {
            goto LABEL_324;
          }

          outlined copy of Data._Representation(v356, v357);
          v380 = __DataStorage._bytes.getter();
          if (v380)
          {
            v381 = v380;
            v382 = __DataStorage._offset.getter();
            if (__OFSUB__(v363, v382))
            {
              goto LABEL_327;
            }

            v383 = v363 - v382 + v381;
          }

          else
          {
            v383 = 0;
          }

          MEMORY[0x231890D50]();
          v386 = v383;
          v387 = v500;
          closure #1 in static Data.== infix(_:_:)(v386, v358, v359, &aBlock);
          v500 = v387;
          outlined consume of Data._Representation(v358, v359);
          outlined consume of Data._Representation(v358, v359);
          v379 = v461;
        }

        outlined consume of Data._Representation(v379, v355);
        v385 = aBlock;
LABEL_181:
        v351 = v467;
        v306 = v479;
        if (!v385)
        {
          goto LABEL_238;
        }

LABEL_182:
        v388 = *(v473 + 32);
        v389 = *(v351 + v388);
        v390 = *(v351 + v388 + 8);
        v391 = (v469 + v388);
        v393 = *v391;
        v392 = v391[1];
        v394 = v390 >> 62;
        v395 = v392 >> 62;
        if (v390 >> 62 == 3)
        {
          v396 = 0;
          if (!v389 && v390 == 0xC000000000000000 && v392 >> 62 == 3)
          {
            v396 = 0;
            if (!v393 && v392 == 0xC000000000000000)
            {
              goto LABEL_213;
            }
          }
        }

        else if (v394 > 1)
        {
          if (v394 == 2)
          {
            v398 = *(v389 + 16);
            v397 = *(v389 + 24);
            v368 = __OFSUB__(v397, v398);
            v396 = v397 - v398;
            if (v368)
            {
              goto LABEL_322;
            }
          }

          else
          {
            v396 = 0;
          }
        }

        else if (v394)
        {
          LODWORD(v396) = HIDWORD(v389) - v389;
          if (__OFSUB__(HIDWORD(v389), v389))
          {
            goto LABEL_323;
          }

          v396 = v396;
        }

        else
        {
          v396 = BYTE6(v390);
        }

        if (v395 > 1)
        {
          if (v395 != 2)
          {
            v351 = v467;
            v306 = v479;
            if (v396)
            {
              goto LABEL_238;
            }

            goto LABEL_230;
          }

          v401 = *(v393 + 16);
          v400 = *(v393 + 24);
          v368 = __OFSUB__(v400, v401);
          v399 = v400 - v401;
          if (v368)
          {
            goto LABEL_320;
          }
        }

        else if (v395)
        {
          LODWORD(v399) = HIDWORD(v393) - v393;
          if (__OFSUB__(HIDWORD(v393), v393))
          {
            goto LABEL_319;
          }

          v399 = v399;
        }

        else
        {
          v399 = BYTE6(v392);
        }

        if (v396 != v399)
        {
          goto LABEL_237;
        }

        if (v396 < 1)
        {
LABEL_213:
          v351 = v467;
          goto LABEL_230;
        }

        if (v394 > 1)
        {
          if (v394 == 2)
          {
            v403 = *(v389 + 16);
            v402 = *(v389 + 24);
            outlined copy of Data._Representation(v393, v392);
            v404 = __DataStorage._bytes.getter();
            if (v404)
            {
              v405 = __DataStorage._offset.getter();
              if (__OFSUB__(v403, v405))
              {
                goto LABEL_330;
              }

              v404 += v403 - v405;
            }

            if (__OFSUB__(v402, v403))
            {
              goto LABEL_329;
            }

            goto LABEL_226;
          }

          *(&aBlock + 6) = 0;
          *&aBlock = 0;
          outlined copy of Data._Representation(v393, v392);
        }

        else
        {
          if (v394)
          {
            v406 = v389;
            if (v389 >> 32 < v389)
            {
              goto LABEL_328;
            }

            outlined copy of Data._Representation(v393, v392);
            v404 = __DataStorage._bytes.getter();
            if (v404)
            {
              v407 = __DataStorage._offset.getter();
              if (__OFSUB__(v406, v407))
              {
                goto LABEL_331;
              }

              v404 += v406 - v407;
            }

LABEL_226:
            MEMORY[0x231890D50]();
            v408 = v500;
            closure #1 in static Data.== infix(_:_:)(v404, v393, v392, &aBlock);
            v500 = v408;
            outlined consume of Data._Representation(v393, v392);
            v409 = aBlock;
            goto LABEL_229;
          }

          *&aBlock = v389;
          WORD4(aBlock) = v390;
          BYTE10(aBlock) = BYTE2(v390);
          BYTE11(aBlock) = BYTE3(v390);
          BYTE12(aBlock) = BYTE4(v390);
          BYTE13(aBlock) = BYTE5(v390);
          outlined copy of Data._Representation(v393, v392);
        }

        v410 = v500;
        closure #1 in static Data.== infix(_:_:)(&aBlock, v393, v392, &v506);
        v500 = v410;
        outlined consume of Data._Representation(v393, v392);
        v409 = v506;
LABEL_229:
        v351 = v467;
        v306 = v479;
        if (!v409)
        {
          goto LABEL_238;
        }

LABEL_230:
        v411 = *(v473 + 28);
        v412 = *(v459 + 48);
        v413 = v462;
        outlined init with copy of TetraSessionStates?(v351 + v411, v462, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
        outlined init with copy of TetraSessionStates?(v469 + v411, v413 + v412, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
        v414 = *v471;
        if ((*v471)(v413, 1, v482) == 1)
        {
          if (v414(v462 + v412, 1, v482) == 1)
          {
            goto LABEL_283;
          }

          goto LABEL_235;
        }

        v415 = v462;
        outlined init with copy of TetraSessionStates?(v462, v460, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
        if (v414(v415 + v412, 1, v482) == 1)
        {
          (*v470)(v460, v482);
LABEL_235:
          v416 = v462;
          v417 = &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd;
          v418 = &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR;
          goto LABEL_236;
        }

        v422 = (*v464)(v458, v462 + v412, v482);
        v423 = MEMORY[0x231891580](v422);
        v425 = v424;
        v426 = MEMORY[0x231891580]();
        v428 = v426;
        v429 = v427;
        v430 = v425 >> 62;
        v431 = v427 >> 62;
        if (v425 >> 62 == 3)
        {
          v432 = 0;
          if (!v423 && v425 == 0xC000000000000000 && v427 >> 62 == 3)
          {
            v432 = 0;
            if (!v426 && v427 == 0xC000000000000000)
            {
              outlined consume of Data._Representation(0, 0xC000000000000000);
              v433 = 0;
              v434 = 0xC000000000000000;
              goto LABEL_282;
            }
          }
        }

        else if (v430 == 2)
        {
          v436 = *(v423 + 16);
          v435 = *(v423 + 24);
          v368 = __OFSUB__(v435, v436);
          v432 = v435 - v436;
          if (v368)
          {
            goto LABEL_334;
          }
        }

        else if (v430 == 1)
        {
          LODWORD(v432) = HIDWORD(v423) - v423;
          if (__OFSUB__(HIDWORD(v423), v423))
          {
            goto LABEL_335;
          }

          v432 = v432;
        }

        else
        {
          v432 = BYTE6(v425);
        }

        if (v431 > 1)
        {
          if (v431 != 2)
          {
            if (!v432)
            {
LABEL_281:
              outlined consume of Data._Representation(v426, v427);
              v433 = v423;
              v434 = v425;
LABEL_282:
              outlined consume of Data._Representation(v433, v434);
              v446 = *v470;
              v447 = v482;
              (*v470)(v458, v482);
              v446(v460, v447);
LABEL_283:
              outlined destroy of TetraSessionStates?(v462, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
              v351 = v467;
              outlined destroy of TetraOuterMessageType(v467, type metadata accessor for TetraSessionState);
              v306 = v479;
LABEL_284:
              v302 = v501;
              goto LABEL_249;
            }

LABEL_280:
            outlined consume of Data._Representation(v426, v427);
            outlined consume of Data._Representation(v423, v425);
            v444 = *v470;
            v445 = v482;
            (*v470)(v458, v482);
            v444(v460, v445);
            v416 = v462;
            v417 = &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd;
            v418 = _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR;
LABEL_236:
            outlined destroy of TetraSessionStates?(v416, v417, v418);
LABEL_237:
            v351 = v467;
            v306 = v479;
LABEL_238:
            outlined destroy of TetraOuterMessageType(v351, type metadata accessor for TetraSessionState);
            goto LABEL_239;
          }

          v439 = *(v426 + 16);
          v438 = *(v426 + 24);
          v368 = __OFSUB__(v438, v439);
          v437 = v438 - v439;
          if (v368)
          {
            goto LABEL_332;
          }
        }

        else if (v431)
        {
          LODWORD(v437) = HIDWORD(v426) - v426;
          if (__OFSUB__(HIDWORD(v426), v426))
          {
            goto LABEL_333;
          }

          v437 = v437;
        }

        else
        {
          v437 = BYTE6(v427);
        }

        if (v432 != v437)
        {
          goto LABEL_280;
        }

        if (v432 < 1)
        {
          goto LABEL_281;
        }

        outlined copy of Data._Representation(v426, v427);
        v440 = v500;
        v441 = specialized Data.withUnsafeBytes<A>(_:)(v423, v425, v428, v429);
        v500 = v440;
        outlined consume of Data._Representation(v428, v429);
        outlined consume of Data._Representation(v423, v425);
        v442 = *v470;
        v443 = v482;
        (*v470)(v458, v482);
        v442(v460, v443);
        outlined destroy of TetraSessionStates?(v462, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
        v351 = v467;
        outlined destroy of TetraOuterMessageType(v467, type metadata accessor for TetraSessionState);
        v306 = v479;
        if (v441)
        {
          goto LABEL_284;
        }

LABEL_239:
        if (v307 == v306)
        {
          v302 = v501;
        }

        else
        {
          if (v306 < 0)
          {
            goto LABEL_306;
          }

          v419 = *v309;
          if (v306 >= *v309)
          {
            goto LABEL_307;
          }

          v420 = v501;
          v421 = v306 * v496;
          outlined init with copy of TetraOuterMessageType(v501 + v485 + v306 * v496, v465, type metadata accessor for TetraSessionState);
          if (v307 >= v419)
          {
            goto LABEL_308;
          }

          outlined init with copy of TetraOuterMessageType(v420 + v350, v466, type metadata accessor for TetraSessionState);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v501 = specialized _ArrayBuffer._consumeAndCreateNew()(v501);
          }

          v302 = v501;
          outlined assign with take of TetraSessionState(v466, v501 + v485 + v421, type metadata accessor for TetraSessionState);
          if (v307 >= v302[2])
          {
            goto LABEL_309;
          }

          outlined assign with take of TetraSessionState(v465, v302 + v350, type metadata accessor for TetraSessionState);
          *&v476[v491] = v302;
          v351 = v467;
        }

        ++v306;
LABEL_249:
        ++v307;
        v309 = v302 + 2;
        v308 = v302[2];
        v350 += v496;
        if (v307 == v308)
        {
          goto LABEL_107;
        }
      }
    }

    __break(1u);
    goto LABEL_298;
  }

  v254 = *(v229 + 16);
  if (!v254)
  {
LABEL_292:

    lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
    v171 = swift_allocError();
    v453 = 4;
    goto LABEL_293;
  }

  if (v254 == 1)
  {
    goto LABEL_82;
  }

LABEL_291:

  lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
  v171 = swift_allocError();
  v453 = 5;
LABEL_293:
  *v452 = v453;
  swift_willThrow();
  outlined consume of Data?(v497, v498);
LABEL_294:
  outlined destroy of TetraOuterMessageType(v505, type metadata accessor for TetraOuterMessageType);
  outlined destroy of TetraSessionStates?(v491, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  v264 = v180;
LABEL_295:
  outlined destroy of TetraOuterMessageType(v264, type metadata accessor for TetraRatchetOuterMessage);
LABEL_8:
  *&aBlock = v171;
  v114 = v171;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast() && v507 == 3)
  {
    v115 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v116 = MEMORY[0x231891960](0xD00000000000001BLL, 0x800000022B494BB0);
    v117 = [v115 initWithDomain:v116 code:5 userInfo:0];

    v118 = static os_log_type_t.debug.getter();
    v119 = MessageProtectionLog(v118);
    if (v119)
    {
      v120 = v119;
      os_log(_:dso:log:_:_:)(v118, &dword_22B404000, v119, "Tetra Conversation Lock: Unlocked.", 34, 2, MEMORY[0x277D84F90]);

      v121 = conversationLock;
      OS_dispatch_semaphore.signal()();

      v122 = v117;
      v123 = _convertErrorToNSError(_:)();
      (*(v144 + 2))(v144, 0, 0, v123, 0);

      v124 = aBlock;
      goto LABEL_17;
    }

LABEL_301:
    __break(1u);
    goto LABEL_302;
  }

  v125 = v171;
  v126 = static os_log_type_t.error.getter();
  v127 = v126;
  v128 = MessageProtectionLog(v126);
  if (!v128)
  {
    __break(1u);
    goto LABEL_301;
  }

  v129 = v128;
  if (os_log_type_enabled(v128, v127))
  {
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    *&aBlock = v131;
    *v130 = 67109634;
    *(v130 + 4) = 1;
    *(v130 + 8) = 2080;
    *(v130 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v494, v495, &aBlock);
    *(v130 + 18) = 2080;
    swift_getErrorValue();
    v132 = Error.localizedDescription.getter();
    v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v133, &aBlock);

    *(v130 + 20) = v134;
    _os_log_impl(&dword_22B404000, v129, v127, "Tetra (Tetra Ratchet = %{BOOL}d) failed decrypting %s with error: %s", v130, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x231892DF0](v131, -1, -1);
    MEMORY[0x231892DF0](v130, -1, -1);
  }

  v135 = static os_log_type_t.debug.getter();
  v136 = MessageProtectionLog(v135);
  if (!v136)
  {
LABEL_302:
    __break(1u);
LABEL_303:
    __break(1u);
    goto LABEL_304;
  }

  v137 = v136;
  os_log(_:dso:log:_:_:)(v135, &dword_22B404000, v136, "Tetra Conversation Lock: Unlocked.", 34, 2, MEMORY[0x277D84F90]);

  v138 = conversationLock;
  OS_dispatch_semaphore.signal()();

  v139 = v171;
  v140 = _convertErrorToNSError(_:)();
  (*(v144 + 2))(v144, 0, 0, v140, 0);

  v124 = v171;
LABEL_17:

LABEL_18:
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 8, v5 | 7);
}

NSObject *partial apply for closure #1 in static TetraAPI.commitStateAfterSuccessfulDecryptionOfMessage(conversationID:ephemeralECDHPublicKey:messageIndex:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for P256.KeyAgreement.PublicKey() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);

  return closure #1 in static TetraAPI.commitStateAfterSuccessfulDecryptionOfMessage(conversationID:ephemeralECDHPublicKey:messageIndex:)(a1, v7, v8, v2 + v5, v6);
}

uint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL partial apply for specialized closure #1 in TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:)(void *a1)
{
  return specialized closure #1 in TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:)(a1, *(v1 + 16), type metadata accessor for TetraNoRatchetOuterMessage);
}

{
  return specialized closure #1 in TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:)(a1, *(v1 + 16), type metadata accessor for TetraRatchetOuterMessage);
}

unint64_t lazy protocol witness table accessor for type TetraRatchetingErrors and conformance TetraRatchetingErrors()
{
  result = lazy protocol witness table cache variable for type TetraRatchetingErrors and conformance TetraRatchetingErrors;
  if (!lazy protocol witness table cache variable for type TetraRatchetingErrors and conformance TetraRatchetingErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraRatchetingErrors and conformance TetraRatchetingErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraRatchetingErrors and conformance TetraRatchetingErrors;
  if (!lazy protocol witness table cache variable for type TetraRatchetingErrors and conformance TetraRatchetingErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraRatchetingErrors and conformance TetraRatchetingErrors);
  }

  return result;
}

uint64_t outlined init with take of TetraRatchetOuterMessage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of TetraSessionState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of P256.KeyAgreement.PublicKey?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of KEM.EncapsulationResult?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3KEMO19EncapsulationResultVSgMd, &_s9CryptoKit3KEMO19EncapsulationResultVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of TetraSessionStates?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TetraCommitmentError and conformance TetraCommitmentError()
{
  result = lazy protocol witness table cache variable for type TetraCommitmentError and conformance TetraCommitmentError;
  if (!lazy protocol witness table cache variable for type TetraCommitmentError and conformance TetraCommitmentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraCommitmentError and conformance TetraCommitmentError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraCommitmentError and conformance TetraCommitmentError;
  if (!lazy protocol witness table cache variable for type TetraCommitmentError and conformance TetraCommitmentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraCommitmentError and conformance TetraCommitmentError);
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for OS_os_log(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t outlined destroy of TetraSessionStates?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id partial apply for specialized closure #3 in Data.append<A>(contentsOf:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized closure #3 in Data.append<A>(contentsOf:)(a1, a2, *(v3 + 16), **(v3 + 32));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
  }

  return result;
}

uint64_t outlined init with take of ContiguousBytes(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id specialized closure #3 in Data.append<A>(contentsOf:)(id result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = result;
  if (!result)
  {
    v8 = a4;
    NSData.startIndex.getter();
    return v8;
  }

  v6 = a2 - result - a3;
  if (!__OFSUB__(a2 - result, a3))
  {
    v7 = a4;
    specialized implicit closure #3 in implicit closure #2 in closure #3 in Data.append<A>(contentsOf:)(&v9, v4 + a3, v6, v7);
    v8 = v9;

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of TetraOuterMessageType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TetraOuterMessageType(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id Kyber1024ObjC.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *Kyber1024ObjCPrivateKey.init(sepKeyBytes:)(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v5 = type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TetraKEM1024Key(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined copy of Data._Representation(a1, a2);
  SecureEnclave.Kyber1024.PrivateKey.init(dataRepresentation:)(a1, a2, v8);
  if (v2)
  {
    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    v12 = type metadata accessor for Kyber1024.PrivateKey();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    v13 = *(v9 + 20);
    outlined init with take of SecureEnclave.Kyber1024.PrivateKey(v8, &v11[v13], type metadata accessor for SecureEnclave.Kyber1024.PrivateKey);
    (*(v6 + 56))(&v11[v13], 0, 1, v5);
    v14 = type metadata accessor for Kyber1024ObjCPrivateKey(0);
    v15 = objc_allocWithZone(v14);
    outlined init with copy of TetraKEM1024Key(v11, v15 + OBJC_IVAR____TtC17MessageProtection23Kyber1024ObjCPrivateKey_privKey);
    v17.receiver = v15;
    v17.super_class = v14;
    v5 = objc_msgSendSuper2(&v17, sel_init);
    outlined consume of Data._Representation(a1, a2);
    outlined destroy of TetraKEM1024Key(v11);
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

void *Kyber1024ObjCPrivateKey.init(apKeyBytes:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Kyber1024.PrivateKey();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TetraKEM1024Key(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  outlined copy of Data._Representation(a1, a2);
  Kyber1024.PrivateKey.init<A>(bytes:)();
  if (v2)
  {
    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    (*(v6 + 32))(v11, v8, v5);
    (*(v6 + 56))(v11, 0, 1, v5);
    v12 = *(v9 + 20);
    v13 = type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
    (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
    v14 = type metadata accessor for Kyber1024ObjCPrivateKey(0);
    v15 = objc_allocWithZone(v14);
    outlined init with copy of TetraKEM1024Key(v11, v15 + OBJC_IVAR____TtC17MessageProtection23Kyber1024ObjCPrivateKey_privKey);
    v17.receiver = v15;
    v17.super_class = v14;
    v5 = objc_msgSendSuper2(&v17, sel_init);
    outlined consume of Data._Representation(a1, a2);
    outlined destroy of TetraKEM1024Key(v11);
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t @objc Kyber1024ObjCPrivateKey.init(sepKeyBytes:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = a3;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  return a5(v7, v9);
}

uint64_t type metadata accessor for Kyber1024ObjCPublicKey(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for Kyber1024ObjCPublicKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t outlined init with copy of TetraKEM1024Key(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraKEM1024Key(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TetraKEM1024Key(uint64_t a1)
{
  v2 = type metadata accessor for TetraKEM1024Key(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of SecureEnclave.Kyber1024.PrivateKey(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id TetraMessageHasher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TetraMessageHasher.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TetraMessageHasher();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TetraMessageHasher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TetraMessageHasher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized static TetraMessageHasher.hashMessage(_:)(uint64_t a1)
{
  v1 = type metadata accessor for SHA256();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SHA256Digest();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = type metadata accessor for TetraPB_TetraMessage(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v13;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type TetraPB_TetraMessage and conformance TetraPB_TetraMessage(&lazy protocol witness table cache variable for type TetraPB_TetraMessage and conformance TetraPB_TetraMessage, type metadata accessor for TetraPB_TetraMessage, &protocol conformance descriptor for TetraPB_TetraMessage);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v14 = &v12[*(v10 + 24)];
  v15 = *v14;
  v16 = v14[1];
  if (v16 >> 60 == 15)
  {
    v17 = 0;
  }

  else
  {
    v17 = *v14;
  }

  v26 = v5;
  v27 = v6;
  v18 = v8;
  if (v16 >> 60 == 15)
  {
    v19 = 0xC000000000000000;
  }

  else
  {
    v19 = v16;
  }

  outlined copy of Data?(v15, v16);
  lazy protocol witness table accessor for type TetraPB_TetraMessage and conformance TetraPB_TetraMessage(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(v17, v19);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v17, v19, v4);
  outlined consume of Data._Representation(v17, v19);
  dispatch thunk of HashFunction.finalize()();
  outlined consume of Data._Representation(v17, v19);
  (*(v2 + 8))(v4, v1);
  v20 = v26;
  *(&v29 + 1) = v26;
  v30 = lazy protocol witness table accessor for type TetraPB_TetraMessage and conformance TetraPB_TetraMessage(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
  v22 = v27;
  (*(v27 + 16))(boxed_opaque_existential_1, v18, v20);
  __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v22 + 8))(v18, v20);
  outlined destroy of TetraPB_TetraMessage(v12);
  v23 = v31;
  __swift_destroy_boxed_opaque_existential_1(&v28);
  return v23;
}

uint64_t lazy protocol witness table accessor for type TetraPB_TetraMessage and conformance TetraPB_TetraMessage(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined destroy of TetraPB_TetraMessage(uint64_t a1)
{
  v2 = type metadata accessor for TetraPB_TetraMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for StructWrapper(uint64_t a1)
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TetraDBErrors()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x231891EE0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TetraDBErrors()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x231891EE0](v1);
  return Hasher._finalize()();
}

id StructWrapper.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for StructWrapper(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id one-time initialization function for sharedInstance()
{
  result = [objc_allocWithZone(type metadata accessor for TetraDBManager()) init];
  static TetraDBManager.sharedInstance = result;
  return result;
}

char *TetraDBManager.().init()()
{
  *&v0[OBJC_IVAR____TtC17MessageProtection14TetraDBManager__persistentContainer] = 0;
  v1 = OBJC_IVAR____TtC17MessageProtection14TetraDBManager_cache;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *&v0[OBJC_IVAR____TtC17MessageProtection14TetraDBManager____lazy_storage___persistentContainer] = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for TetraDBManager();
  v2 = objc_msgSendSuper2(&v7, sel_init);
  v3 = OBJC_IVAR____TtC17MessageProtection14TetraDBManager_cache;
  v4 = *&v2[OBJC_IVAR____TtC17MessageProtection14TetraDBManager_cache];
  v5 = v2;
  [v4 setCountLimit_];
  [*&v2[v3] setDelegate_];

  return v5;
}

id TetraDBManager.persistentContainer.getter()
{
  v1 = OBJC_IVAR____TtC17MessageProtection14TetraDBManager____lazy_storage___persistentContainer;
  v2 = *(v0 + OBJC_IVAR____TtC17MessageProtection14TetraDBManager____lazy_storage___persistentContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17MessageProtection14TetraDBManager____lazy_storage___persistentContainer);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = closure #1 in TetraDBManager.persistentContainer.getter(ObjectType);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id closure #1 in TetraDBManager.persistentContainer.getter(uint64_t a1)
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &aBlock - v6;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = MEMORY[0x231891960](0x42446172746554, 0xE700000000000000);
  v11 = MEMORY[0x231891960](1684893549, 0xE400000000000000);
  v12 = [v9 URLForResource:v10 withExtension:v11];

  if (v12)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v2 + 32))(v7, v5, v1);
    v13 = objc_allocWithZone(MEMORY[0x277CBE450]);
    URL._bridgeToObjectiveC()(v14);
    v16 = v15;
    v17 = [v13 initWithContentsOfURL_];

    if (v17)
    {
      v18 = specialized static TetraDBManager.persistentStoreDescription()();
      v19 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
      v20 = v17;
      v21 = MEMORY[0x231891960](0x42446172746554, 0xE700000000000000);
      v22 = [v19 initWithName:v21 managedObjectModel:v20];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_22B48D980;
      *(v23 + 32) = v18;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSPersistentStoreDescription, 0x277CBE4E0);
      v24 = v18;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v22 setPersistentStoreDescriptions_];

      v33 = closure #1 in closure #1 in TetraDBManager.persistentContainer.getter;
      v34 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v30 = 1107296256;
      v31 = thunk for @escaping @callee_guaranteed (@guaranteed NSPersistentStoreDescription, @guaranteed Error?) -> ();
      v32 = &block_descriptor_0;
      v26 = _Block_copy(&aBlock);
      [v22 loadPersistentStoresWithCompletionHandler_];
      _Block_release(v26);

      (*(v2 + 8))(v7, v1);
      return v22;
    }

    aBlock = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    aBlock = 0xD000000000000022;
    v30 = 0x800000022B494FE0;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2318919B0](v28);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void closure #1 in closure #1 in TetraDBManager.persistentContainer.getter(uint64_t a1, id a2)
{
  if (a2)
  {
    goto LABEL_7;
  }

  v2 = static os_log_type_t.info.getter();
  v3 = MessageProtectionLog(v2);
  if (!v3)
  {
    __break(1u);
LABEL_7:
    v4 = a2;
    _StringGuts.grow(_:)(40);

    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    MEMORY[0x2318919B0](v5);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v6 = v3;
  os_log(_:dso:log:_:_:)(v2, &dword_22B404000, v3, "Successfully loaded the persistent store.", 41, 2, MEMORY[0x277D84F90]);
}

void thunk for @escaping @callee_guaranteed (@guaranteed NSPersistentStoreDescription, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t TetraDBManager.getSessionForNGMIdentity(conversationID:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x277CBE440]) initWithConcurrencyType_];
  v10 = TetraDBManager.persistentContainer.getter();
  v11 = [v10 persistentStoreCoordinator];

  [v9 setPersistentStoreCoordinator_];
  [v9 setMergePolicy_];
  [v9 setShouldPerformSecureOperation_];
  v12 = *(v2 + OBJC_IVAR____TtC17MessageProtection14TetraDBManager_cache);
  v13 = [v12 objectForKey_];
  if (v13)
  {
    v14 = v13;
    v15 = *((*MEMORY[0x277D85000] & *v13) + 0x58);
    swift_beginAccess();
    v16 = TetraSessionStates.hasSessionWithCompatibleVersion()();
    swift_endAccess();
    if (v16)
    {

      outlined init with copy of TetraSessionStates(v14 + v15, a2);
      v17 = type metadata accessor for TetraSessionStates(0);
      return (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
    }

    [v12 removeObjectForKey_];
  }

  v32 = a2;
  v19 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v20 = MEMORY[0x231891960](0xD000000000000016, 0x800000022B495160);
  v21 = [v19 initWithEntityName_];

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSPredicate, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22B48D7C0;
  v23 = [a1 base64EncodedStringWithOptions_];
  v24 = v8;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v3;
  v27 = v26;

  *(v22 + 56) = MEMORY[0x277D837D0];
  *(v22 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v22 + 32) = v25;
  *(v22 + 40) = v27;
  v28 = NSPredicate.init(format:_:)();
  [v21 setPredicate_];

  [v21 setFetchLimit_];
  v29 = type metadata accessor for TetraSessionStates(0);
  v30 = (*(*(v29 - 8) + 56))(v24, 1, 1, v29);
  MEMORY[0x28223BE20](v30);
  *(&v32 - 4) = v9;
  *(&v32 - 3) = v21;
  *(&v32 - 2) = v24;
  v31 = v33;
  NSManagedObjectContext.performAndWait<A>(_:)();

  if (v31)
  {
    return outlined destroy of TetraSessionStates?(v24, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  }

  else
  {
    return outlined init with take of TetraSessionStates?(v24, v32);
  }
}

uint64_t closure #1 in TetraDBManager.getSessionForNGMIdentity(conversationID:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TetraSessionStates(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TetraSessionSerialized();
  v10 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {

    v11 = 2;
LABEL_6:
    lazy protocol witness table accessor for type TetraDBErrors and conformance TetraDBErrors();
    swift_allocError();
    *v16 = v11;
    return swift_willThrow();
  }

  v12 = v10 & 0xFFFFFFFFFFFFFF8;
  v13 = v10 >> 62;
  if (v10 >> 62)
  {
    if (v10 < 0)
    {
      v12 = v10;
    }

    v18 = v10;
    v14 = MEMORY[0x231891D10](v12);
    v10 = v18;
    v15 = v14 == 1;
    if (v14 > 1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = v14 == 1;
    if (v14 > 1)
    {
LABEL_5:

      v11 = 3;
      goto LABEL_6;
    }
  }

  if (!v15)
  {
    if (!v14)
    {
    }

    goto LABEL_35;
  }

  v19 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v13)
  {
    if (v10 < 0)
    {
      v19 = v10;
    }

    v21 = v10;
    v20 = MEMORY[0x231891D10](v19);
    v10 = v21;
  }

  else
  {
    v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v20)
  {
    __break(1u);
    goto LABEL_31;
  }

  v35[1] = v10;
  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_31:
    v22 = MEMORY[0x231891C80](0, v10);
    goto LABEL_23;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_33;
  }

  v22 = *(v10 + 32);
LABEL_23:
  v23 = v22;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v35[3] = PropertyListDecoder.init()();
  v35[0] = v23;
  v24 = [v23 serializedSession];
  if (!v24)
  {
LABEL_33:
    __break(1u);
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v25 = v24;
  v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type TetraSessionStates and conformance TetraSessionStates, type metadata accessor for TetraSessionStates, &protocol conformance descriptor for TetraSessionStates);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  outlined consume of Data._Representation(v26, v28);
  if (TetraSessionStates.hasSessionWithCompatibleVersion()())
  {

    outlined destroy of TetraSessionStates?(a3, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
    outlined init with take of TetraSessionStates(v9, a3);
    return (*(v7 + 56))(a3, 0, 1, v6);
  }

  v29 = static os_log_type_t.error.getter();
  v30 = v29;
  v31 = MessageProtectionLog(v29);
  v32 = v35[0];
  if (!v31)
  {
    goto LABEL_34;
  }

  v33 = v31;

  if (os_log_type_enabled(v33, v30))
  {
    v34 = swift_slowAlloc();
    *v34 = 67109120;
    *(v34 + 4) = 15;
    _os_log_impl(&dword_22B404000, v33, v30, "Deleting session states due to not having a valid session version (expected: %u.", v34, 8u);
    MEMORY[0x231892DF0](v34, -1, -1);
  }

  [a1 deleteObject_];

  return outlined destroy of TetraSessionStates(v9);
}

void TetraDBManager.saveTetraSession(conversationID:sessionStates:needsSync:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for TetraSessionStates(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v3 + OBJC_IVAR____TtC17MessageProtection14TetraDBManager_cache);
  outlined init with copy of TetraSessionStates(a2, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection13StructWrapperCyAA18TetraSessionStatesVGMd, &_s17MessageProtection13StructWrapperCyAA18TetraSessionStatesVGMR);
  v12 = objc_allocWithZone(v11);
  outlined init with copy of TetraSessionStates(v9, v12 + *((*MEMORY[0x277D85000] & *v12) + 0x58));
  v22.receiver = v12;
  v22.super_class = v11;
  v13 = objc_msgSendSuper2(&v22, sel_init);
  outlined destroy of TetraSessionStates(v9);
  [v10 setObject:v13 forKey:a1];

  v14 = [objc_allocWithZone(MEMORY[0x277CBE440]) initWithConcurrencyType_];
  v15 = TetraDBManager.persistentContainer.getter();
  v16 = [v15 persistentStoreCoordinator];

  [v14 setPersistentStoreCoordinator_];
  [v14 setMergePolicy_];
  [v14 setShouldPerformSecureOperation_];
  v18 = v14;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  NSManagedObjectContext.performAndWait<A>(_:)();
}

void closure #1 in TetraDBManager.saveTetraSession(conversationID:sessionStates:needsSync:)(void *a1, void *a2, uint64_t a3)
{
  v25[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for TetraSessionSerialized();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v7 = [a2 base64EncodedStringWithOptions_];
  if (!v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = MEMORY[0x231891960](v8);
  }

  [v6 setRemoteIdentifier_];

  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for TetraSessionStates(0);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type TetraSessionStates and conformance TetraSessionStates, type metadata accessor for TetraSessionStates, &protocol conformance descriptor for TetraSessionStates);
  v9 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v3)
  {

    v11 = static os_log_type_t.error.getter();
    v12 = v11;
    v13 = MessageProtectionLog(v11);
    if (v13)
    {
      v14 = v13;
      if (os_log_type_enabled(v13, v12))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        v17 = v3;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 4) = v18;
        *v16 = v18;
        _os_log_impl(&dword_22B404000, v14, v12, "Failed to encode the session: %@", v15, 0xCu);
        outlined destroy of TetraSessionStates?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x231892DF0](v16, -1, -1);
        MEMORY[0x231892DF0](v15, -1, -1);
      }

      lazy protocol witness table accessor for type TetraDBErrors and conformance TetraDBErrors();
      swift_allocError();
      *v19 = 0;
      swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v20 = v9;
    v21 = v10;
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v20, v21);
    [v6 setSerializedSession_];

    v25[0] = 0;
    if ([a1 save_])
    {
      v23 = v25[0];
    }

    else
    {
      v24 = v25[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

id TetraDBManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TetraDBManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized static TetraDBManager.isBATS()()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v2 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(1398030658, 0xE400000000000000), (v3 & 1) != 0) && *(v2 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(4478800, 0xE300000000000000), (v5 & 1) != 0))
  {
    v6 = (*(v2 + 56) + 16 * v4);
    v8 = *v6;
    v7 = v6[1];

    if (v8 == 0xD000000000000032 && 0x800000022B4950F0 == v7)
    {

      return 1;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v10 & 1;
    }
  }

  else
  {

    return 0;
  }
}

id specialized static TetraDBManager.persistentStoreDescription()()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22B48D990;
  v6 = NSHomeDirectory();
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  *(v5 + 48) = 0xD000000000000019;
  *(v5 + 56) = 0x800000022B4950B0;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v4 pathWithComponents_];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = objc_opt_self();
  v16 = [v15 processInfo];
  v17 = [v16 environment];

  v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v18 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000022B4950D0), (v19 & 1) == 0))
  {

    if ((specialized static TetraDBManager.isBATS()() & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v20._countAndFlagsBits = 0x747365746378;
  v20._object = 0xE600000000000000;
  v21 = String.hasSuffix(_:)(v20);

  if (v21 || (specialized static TetraDBManager.isBATS()() & 1) != 0)
  {
LABEL_5:

    v22 = NSTemporaryDirectory();
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v23;
  }

LABEL_6:
  v38 = 0x424461727465542FLL;
  v39 = 0xE90000000000002DLL;
  v24 = [v15 processInfo];
  v25 = [v24 processName];

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  MEMORY[0x2318919B0](v26, v28);

  MEMORY[0x2318919B0](6448174, 0xE300000000000000);
  v36 = v12;
  v37 = v14;
  v36 = String.init<A>(_:)();
  v37 = v29;
  String.append<A>(contentsOf:)();

  URL.init(fileURLWithPath:)();

  v30 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
  URL._bridgeToObjectiveC()(v31);
  v33 = v32;
  v34 = [v30 initWithURL_];

  [v34 setOption:*MEMORY[0x277CCA1A0] forKey:*MEMORY[0x277CBE240]];
  [v34 setShouldAddStoreAsynchronously_];
  (*(v1 + 8))(v3, v0);
  return v34;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void specialized TetraDBManager.cache(_:willEvictObject:)(uint64_t a1)
{
  v2 = type metadata accessor for P256.Signing.PublicKey();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = static os_log_type_t.info.getter();
  v7 = v6;
  v8 = MessageProtectionLog(v6);
  if (v8)
  {
    v9 = v8;
    outlined init with copy of Any(a1, v25);
    if (os_log_type_enabled(v9, v7))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136315138;
      outlined init with copy of Any(v25, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection13StructWrapperCyAA18TetraSessionStatesVGMd, &_s17MessageProtection13StructWrapperCyAA18TetraSessionStatesVGMR);
      swift_dynamicCast();
      v12 = v22;
      v13 = v22 + *((*MEMORY[0x277D85000] & *v22) + 0x58);
      swift_beginAccess();
      v14 = type metadata accessor for TetraSessionState(0);
      v15 = (*(v3 + 16))(v5, &v13[*(v14 + 24)], v2);
      v16 = MEMORY[0x231891720](v15);
      v18 = v17;
      (*(v3 + 8))(v5, v2);
      v19 = Data.base64EncodedString(options:)(0);
      outlined consume of Data._Representation(v16, v18);

      __swift_destroy_boxed_opaque_existential_1(v25);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19._countAndFlagsBits, v19._object, &v24);

      *(v10 + 4) = v20;
      _os_log_impl(&dword_22B404000, v9, v7, "TetraCache: Removing object %s from cache.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x231892DF0](v11, -1, -1);
      MEMORY[0x231892DF0](v10, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v25);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t outlined init with copy of TetraSessionStates(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraSessionStates(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TetraSessionStates(uint64_t a1)
{
  v2 = type metadata accessor for TetraSessionStates(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TetraDBErrors and conformance TetraDBErrors()
{
  result = lazy protocol witness table cache variable for type TetraDBErrors and conformance TetraDBErrors;
  if (!lazy protocol witness table cache variable for type TetraDBErrors and conformance TetraDBErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraDBErrors and conformance TetraDBErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraDBErrors and conformance TetraDBErrors;
  if (!lazy protocol witness table cache variable for type TetraDBErrors and conformance TetraDBErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraDBErrors and conformance TetraDBErrors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined init with take of TetraSessionStates?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with take of TetraSessionStates(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraSessionStates(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for TetraDBErrors(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TetraDBErrors(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t one-time initialization function for GLT_SEED_EXTRACTION_LABEL()
{
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD000000000000017, 0x800000022B495490);
  GLT_SEED_EXTRACTION_LABEL = result;
  *algn_27D8C1E88 = v1;
  return result;
}

id GLTDiversifiedKey.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GLTKeyDiversificationSwift.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GLTKeyDiversificationSwift();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GLTDiversifiedKey.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, size_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      *(&bytes + 7) = 0;
      *&bytes = 0;
      return SecRandomCopyBytes(*MEMORY[0x277CDC540], a2, &bytes);
    }

    outlined consume of Data._Representation(v4, v3);
    *&bytes = v4;
    *(&bytes + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_22B48D660;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v9 = *(&bytes + 1);
    v10 = *(bytes + 16);
    result = __DataStorage._bytes.getter();
    if (!result)
    {
      __break(1u);
      goto LABEL_25;
    }

    v11 = result;
    v12 = __DataStorage._offset.getter();
    v13 = __OFSUB__(v10, v12);
    v14 = v10 - v12;
    if (!v13)
    {
      MEMORY[0x231890D50]();
      result = SecRandomCopyBytes(*MEMORY[0x277CDC540], a2, (v11 + v14));
      *a1 = bytes;
      a1[1] = v9 | 0x8000000000000000;
      return result;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v5)
  {
    outlined consume of Data._Representation(v4, v3);
    *&bytes = v4;
    WORD4(bytes) = v3;
    BYTE10(bytes) = BYTE2(v3);
    BYTE11(bytes) = BYTE3(v3);
    BYTE12(bytes) = BYTE4(v3);
    BYTE13(bytes) = BYTE5(v3);
    BYTE14(bytes) = BYTE6(v3);
    result = SecRandomCopyBytes(*MEMORY[0x277CDC540], a2, &bytes);
    v7 = DWORD2(bytes) | ((WORD6(bytes) | (BYTE14(bytes) << 16)) << 32);
    *a1 = bytes;
    a1[1] = v7;
    return result;
  }

  v15 = v3 & 0x3FFFFFFFFFFFFFFFLL;

  outlined consume of Data._Representation(v4, v3);
  *a1 = xmmword_22B48D660;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  v16 = v4 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v16 < v4)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v4, __DataStorage._offset.getter()))
    {
LABEL_23:
      __break(1u);
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v17 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v15 = v17;
  }

  if (v16 < v4)
  {
    goto LABEL_20;
  }

  result = __DataStorage._bytes.getter();
  if (result)
  {
    v18 = result;
    v19 = __DataStorage._offset.getter();
    v20 = v4 - v19;
    if (!__OFSUB__(v4, v19))
    {
      MEMORY[0x231890D50]();
      v21 = SecRandomCopyBytes(*MEMORY[0x277CDC540], a2, (v18 + v20));

      *a1 = v4;
      a1[1] = v15 | 0x4000000000000000;
      return v21;
    }

    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
  return result;
}

void specialized static GLTKeyDiversificationSwift.validateKeyType(_:isPublicKey:)(__SecKey *a1, char a2)
{
  v2 = SecKeyCopyAttributes(a1);
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v5 = 0;
      type metadata accessor for CFStringRef(0);
      lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  lazy protocol witness table accessor for type GLTKeyDiversificationError and conformance GLTKeyDiversificationError();
  swift_allocError();
  *v4 = 2;
  swift_willThrow();
}

void specialized static GLTKeyDiversificationSwift.diversify(publicKey:trackingPreventionSalt:docId:)(__SecKey *a1, uint64_t a2, unint64_t a3, uint64_t a4, const __CFData *a5)
{
  v73 = a4;
  isa = a5;
  error[1] = *MEMORY[0x277D85DE8];
  v9 = type metadata accessor for P256.Signing.PublicKey();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v66 - v14;
  error[0] = 0;
  specialized static GLTKeyDiversificationSwift.validateKeyType(_:isPublicKey:)(a1, 1);
  if (!v5)
  {
    v70 = a2;
    v71 = v13;
    v16 = isa;
    v72 = v15;
    v68 = v9;
    v69 = v10;
    v17 = SecKeyCopyExternalRepresentation(a1, error);
    if (v17)
    {
      v18 = v17;
      v76 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v19;
      v20 = MEMORY[0x277CC9318];
      P256.Signing.PublicKey.init<A>(x963Representation:)();
      v66 = v18;
      v67 = 0;
      v23 = a3;
      if (a3 >> 60 == 15)
      {
        type metadata accessor for __DataStorage();
        swift_allocObject();
        v24 = __DataStorage.init(length:)();
        v76 = 0x2000000000;
        v77 = v24;
        v25 = v67;
        specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(&v76, 0);
        v82 = v76;
        v83 = v77 | 0x4000000000000000;
        v26 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v82, 0x20uLL);
        v67 = v25;
        if (v26)
        {
          __break(1u);
        }

        v28 = v82;
        v27 = v83;
        v29 = v73;
        v30 = v70;
      }

      else
      {
        v30 = v70;
        v82 = v70;
        v83 = a3;
        v27 = a3;
        v28 = v70;
        v29 = v73;
      }

      outlined copy of Data?(v30, v23);
      v31 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v29, v16);
      v33 = v32;
      v80 = v28;
      v81 = v27;
      v78 = v20;
      v79 = MEMORY[0x277CC9300];
      v76 = v31;
      v77 = v32;
      v34 = __swift_project_boxed_opaque_existential_1(&v76, v20);
      v35 = v28;
      v36 = *v34;
      v37 = v34[1];
      outlined copy of Data._Representation(v35, v27);
      outlined copy of Data._Representation(v31, v33);
      v38 = v67;
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v36, v37, &v80);
      v67 = v38;
      outlined consume of Data._Representation(v31, v33);
      __swift_destroy_boxed_opaque_existential_1(&v76);
      v39 = v80;
      v40 = v81;
      if (one-time initialization token for GLT_SEED_EXTRACTION_LABEL != -1)
      {
        swift_once();
      }

      P256.Signing.PublicKey.keyFromDiversification(with:seedExtractionLabel:)();
      outlined consume of Data._Representation(v39, v40);
      v41 = MEMORY[0x231891740]();
      v43 = v42;
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v41, v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22B48DAE0;
      v45 = *MEMORY[0x277CDC028];
      *(inited + 32) = *MEMORY[0x277CDC028];
      v46 = *MEMORY[0x277CDC040];
      type metadata accessor for CFStringRef(0);
      v47 = MEMORY[0x277CDBFE0];
      *(inited + 40) = v46;
      v48 = *v47;
      *(inited + 64) = v49;
      *(inited + 72) = v48;
      v50 = *MEMORY[0x277CDC000];
      *(inited + 80) = *MEMORY[0x277CDC000];
      v51 = *MEMORY[0x277CDC018];
      *(inited + 104) = v49;
      *(inited + 112) = v51;
      *(inited + 144) = MEMORY[0x277D83B88];
      *(inited + 120) = 256;
      v52 = v45;
      v53 = v46;
      v54 = v48;
      v55 = v50;
      v56 = v51;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
      swift_arrayDestroy();
      lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
      v57 = Dictionary._bridgeToObjectiveC()().super.isa;

      v58 = isa;
      v59 = SecKeyCreateWithData(isa, v57, error);

      v60 = v71;
      if (v59)
      {
        v61 = Data._bridgeToObjectiveC()().super.isa;
        v62 = type metadata accessor for GLTDiversifiedKey();
        v63 = objc_allocWithZone(v62);
        *&v63[OBJC_IVAR____TtC17MessageProtection17GLTDiversifiedKey_diversifiedKey] = v59;
        *&v63[OBJC_IVAR____TtC17MessageProtection17GLTDiversifiedKey_trackingPreventionSalt] = v61;
        v75.receiver = v63;
        v75.super_class = v62;
        [(__SecKey *)&v75 init];

        v64 = v68;
        v65 = *(v69 + 8);
        v65(v60, v68);
        v65(v72, v64);
        outlined consume of Data._Representation(v82, v83);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v21 = error[0];
      lazy protocol witness table accessor for type GLTKeyDiversificationError and conformance GLTKeyDiversificationError();
      swift_allocError();
      *v22 = v21;
      swift_willThrow();
    }
  }
}

void specialized static GLTKeyDiversificationSwift.diversify(privateKey:docId:trackingPreventionSalt:)(__SecKey *a1, uint64_t a2, unint64_t a3, uint64_t a4, const __CFData *a5)
{
  isa = a5;
  error[1] = *MEMORY[0x277D85DE8];
  v10 = type metadata accessor for P256.Signing.PrivateKey();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v62 - v15;
  error[0] = 0;
  specialized static GLTKeyDiversificationSwift.validateKeyType(_:isPublicKey:)(a1, 0);
  if (v5)
  {
    return;
  }

  v64 = v14;
  v65 = v11;
  v17 = SecKeyCopyExternalRepresentation(a1, error);
  if (!v17)
  {
    v21 = error[0];
    lazy protocol witness table accessor for type GLTKeyDiversificationError and conformance GLTKeyDiversificationError();
    swift_allocError();
    *v22 = v21;
    swift_willThrow();
    return;
  }

  v18 = v17;
  v67 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v19;
  v20 = v16;
  P256.Signing.PrivateKey.init<A>(x963Representation:)();
  v23 = isa >> 62;
  if ((isa >> 62) <= 1)
  {
    v24 = v65;
    v25 = v10;
    v26 = a4;
    if (!v23)
    {
      v27 = BYTE6(isa);
      goto LABEL_11;
    }

    v60 = HIDWORD(a4) - a4;
    if (!__OFSUB__(HIDWORD(a4), a4))
    {
      v31 = a2;
      if (v60 == 32)
      {
        goto LABEL_12;
      }

LABEL_18:
      lazy protocol witness table accessor for type GLTKeyDiversificationError and conformance GLTKeyDiversificationError();
      swift_allocError();
      *v61 = 1;
      swift_willThrow();

      (*(v24 + 8))(v20, v25);
      return;
    }

LABEL_20:
    __break(1u);
  }

  v24 = v65;
  v25 = v10;
  if (v23 != 2)
  {
    goto LABEL_18;
  }

  v26 = a4;
  v29 = *(a4 + 16);
  v28 = *(a4 + 24);
  v30 = __OFSUB__(v28, v29);
  v27 = v28 - v29;
  if (v30)
  {
    __break(1u);
    goto LABEL_20;
  }

LABEL_11:
  v31 = a2;
  if (v27 != 32)
  {
    goto LABEL_18;
  }

LABEL_12:

  v32 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v31, a3);
  v34 = v33;
  v35 = isa;
  v71 = v26;
  v72 = isa;
  v69 = MEMORY[0x277CC9318];
  v70 = MEMORY[0x277CC9300];
  v67 = v32;
  v68 = v33;
  v36 = __swift_project_boxed_opaque_existential_1(&v67, MEMORY[0x277CC9318]);
  v37 = *v36;
  v63 = v36[1];
  outlined copy of Data._Representation(v26, v35);
  outlined copy of Data._Representation(v32, v34);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v37, v63, &v71);
  v62[1] = 0;
  outlined consume of Data._Representation(v32, v34);
  __swift_destroy_boxed_opaque_existential_1(&v67);
  v38 = v71;
  v39 = v72;
  if (one-time initialization token for GLT_SEED_EXTRACTION_LABEL != -1)
  {
    swift_once();
  }

  MEMORY[0x2318916B0](v38, v39, GLT_SEED_EXTRACTION_LABEL, *algn_27D8C1E88);
  outlined consume of Data._Representation(v38, v39);
  v40 = MEMORY[0x231891680]();
  v42 = v41;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v40, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B48DAE0;
  v44 = *MEMORY[0x277CDC028];
  *(inited + 32) = *MEMORY[0x277CDC028];
  v63 = inited + 32;
  v45 = *MEMORY[0x277CDC040];
  type metadata accessor for CFStringRef(0);
  v62[2] = v46;
  v47 = MEMORY[0x277CDBFE0];
  *(inited + 40) = v45;
  v48 = *v47;
  *(inited + 64) = v46;
  *(inited + 72) = v48;
  v49 = *MEMORY[0x277CDBFF0];
  *(inited + 80) = *MEMORY[0x277CDBFF0];
  v50 = *MEMORY[0x277CDC018];
  *(inited + 104) = v46;
  *(inited + 112) = v50;
  *(inited + 144) = MEMORY[0x277D83B88];
  *(inited + 120) = 256;
  v51 = v44;
  v52 = v45;
  v53 = v48;
  v54 = v49;
  v55 = v50;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  swift_arrayDestroy();
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  v56 = Dictionary._bridgeToObjectiveC()().super.isa;

  v57 = isa;
  v58 = SecKeyCreateWithData(isa, v56, error);

  if (v58)
  {

    v59 = *(v65 + 8);
    v59(v64, v10);
    v59(v20, v10);
  }

  else
  {
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type GLTKeyDiversificationError and conformance GLTKeyDiversificationError()
{
  result = lazy protocol witness table cache variable for type GLTKeyDiversificationError and conformance GLTKeyDiversificationError;
  if (!lazy protocol witness table cache variable for type GLTKeyDiversificationError and conformance GLTKeyDiversificationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GLTKeyDiversificationError and conformance GLTKeyDiversificationError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GLTKeyDiversificationError(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
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

  v5 = v4 + 1;
  v6 = v4 - 3;
  if (v5 >= 5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GLTKeyDiversificationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTag for GLTKeyDiversificationError(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

void *destructiveInjectEnumTag for GLTKeyDiversificationError(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

void MPPB_SKPaddedStatus.paddedData()()
{
  v2 = type metadata accessor for MPPB_SKPaddedStatus(0);
  lazy protocol witness table accessor for type MPPB_RatchetState and conformance MPPB_RatchetState(&lazy protocol witness table cache variable for type MPPB_SKPaddedStatus and conformance MPPB_SKPaddedStatus, type metadata accessor for MPPB_SKPaddedStatus, &protocol conformance descriptor for MPPB_SKPaddedStatus);
  v3 = Message.serializedData(partial:)();
  if (v1)
  {
    return;
  }

  v5 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = BYTE6(v4);
      outlined consume of Data._Representation(v3, v4);
      v7 = v6;
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (v5 != 2)
  {
    goto LABEL_13;
  }

  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  outlined consume of Data._Representation(v3, v4);
  v10 = __OFSUB__(v8, v9);
  v7 = v8 - v9;
  if (v10)
  {
    __break(1u);
LABEL_9:
    v11 = HIDWORD(v3);
    v12 = v3;
    outlined consume of Data._Representation(v3, v4);
    if (__OFSUB__(v11, v12))
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = v11 - v12;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_13:
  outlined consume of Data._Representation(v3, v4);
  v7 = 0;
LABEL_14:
  v13 = static Padme.paddedMessageByteCount(_:)();
  if (v14)
  {
    lazy protocol witness table accessor for type StatusKitErrors and conformance StatusKitErrors();
    swift_allocError();
    *v15 = 6;
    swift_willThrow();
    return;
  }

  v16 = v13 >= v7;
  v17 = v13 - v7;
  if (!v16)
  {
    goto LABEL_35;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v18 = v13;
  v29 = specialized Data.init(count:)(v17);
  v30 = v19;
  if (specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v29, v17))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v20 = v29;
  v21 = v30;
  v22 = v0 + *(v2 + 24);
  outlined consume of Data?(*v22, *(v22 + 8));
  *v22 = v20;
  *(v22 + 8) = v21;
  v23 = Message.serializedData(partial:)();
  v25 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v25 != 2)
    {
      v26 = 0;
      goto LABEL_32;
    }

    v28 = *(v23 + 16);
    v27 = *(v23 + 24);
    v10 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (!v10)
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  else if (!v25)
  {
    v26 = BYTE6(v24);
    goto LABEL_32;
  }

  LODWORD(v26) = HIDWORD(v23) - v23;
  if (__OFSUB__(HIDWORD(v23), v23))
  {
LABEL_39:
    __break(1u);
    return;
  }

  v26 = v26;
LABEL_32:
  if (v26 < 0 || v26 != v18)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }
}

id closure #1 in SymmetricKey.toZeroizingNSData()@<X0>(id result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result)
  {
    result = [objc_opt_self() _newZeroingDataWithBytes_length_];
    if (result)
    {
      *a3 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SymmetricRatchet.init(data:step:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a2;
  v86 = a3;
  v6 = type metadata accessor for SymmetricKey();
  v95 = *(v6 - 8);
  v96 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v101 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v93 = v81 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v91 = v81 - v11;
  v89 = type metadata accessor for MPPB_KeyAndIndex(0);
  v97 = *(v89 - 8);
  v12 = MEMORY[0x28223BE20](v89);
  v94 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v90 = v81 - v14;
  v15 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection17MPPB_RatchetStateVSgMd, &_s17MessageProtection17MPPB_RatchetStateVSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v81 - v17;
  v19 = type metadata accessor for MPPB_RatchetState(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for SymmetricRatchet(0);
  v24 = *(v23 + 20);
  v84 = a4;
  *&v24[a4] = MEMORY[0x277D84F98];
  v25 = v85;
  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  outlined copy of Data._Representation(a1, v85);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type MPPB_RatchetState and conformance MPPB_RatchetState(&lazy protocol witness table cache variable for type MPPB_RatchetState and conformance MPPB_RatchetState, type metadata accessor for MPPB_RatchetState, &protocol conformance descriptor for MPPB_RatchetState);
  v26 = v92;
  Message.init(serializedData:extensions:partial:options:)();
  if (v26)
  {

    (*(v20 + 56))(v18, 1, 1, v19);
    outlined destroy of TetraSessionStates?(v18, &_s17MessageProtection17MPPB_RatchetStateVSgMd, &_s17MessageProtection17MPPB_RatchetStateVSgMR);
    lazy protocol witness table accessor for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors();
    swift_allocError();
    *v27 = 2;
    swift_willThrow();
    outlined consume of Data._Representation(a1, v25);
    return __swift_destroy_boxed_opaque_existential_1(v86);
  }

  v29 = a1;
  v81[1] = 0;
  v92 = v24;
  (*(v20 + 56))(v18, 0, 1, v19);
  outlined init with take of MPPB_KeyAndIndex(v18, v22, type metadata accessor for MPPB_RatchetState);
  v30 = *(v23 + 24);
  v31 = v84;
  outlined init with copy of SymmetricRatchetStep(v86, v84 + v30);
  v32 = v91;
  outlined init with copy of TetraSessionStates?(v22 + *(v19 + 24), v91, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  v33 = *(v97 + 48);
  v34 = v89;
  v35 = v33(v32, 1, v89);
  v83 = v29;
  if (v35 == 1)
  {
    v36 = v90;
    UnknownStorage.init()();
    *(v36 + *(v34 + 20)) = xmmword_22B48D7D0;
    v37 = v36 + *(v34 + 24);
    *v37 = 0;
    *(v37 + 8) = 1;
    v38 = v33(v32, 1, v34);
    v39 = v95;
    v40 = v93;
    if (v38 != 1)
    {
      outlined destroy of TetraSessionStates?(v91, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
    }
  }

  else
  {
    v36 = v90;
    outlined init with take of MPPB_KeyAndIndex(v32, v90, type metadata accessor for MPPB_KeyAndIndex);
    v39 = v95;
    v40 = v93;
  }

  v41 = (v36 + *(v34 + 20));
  v42 = *v41;
  v43 = v41[1];
  if (v43 >> 60 == 15)
  {
    v44 = 0;
  }

  else
  {
    v44 = *v41;
  }

  v45 = 0xC000000000000000;
  if (v43 >> 60 != 15)
  {
    v45 = v43;
  }

  *&v98 = v44;
  *(&v98 + 1) = v45;
  outlined copy of Data?(v42, v43);
  SymmetricKey.init<A>(data:)();
  v46 = v36 + *(v34 + 24);
  v47 = *v46;
  v48 = *(v46 + 8);
  outlined destroy of MPPB_RatchetState(v36, type metadata accessor for MPPB_KeyAndIndex);
  if (v48)
  {
    v47 = 0;
  }

  *(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR) + 48)) = v47;
  v82 = v22;
  v91 = *v22;
  v50 = v96;
  v49 = v97;
  v51 = v94;
  v52 = v92;
  v90 = *(v91 + 16);
  if (!v90)
  {
LABEL_38:
    outlined consume of Data._Representation(v83, v85);
    __swift_destroy_boxed_opaque_existential_1(v86);
    return outlined destroy of MPPB_RatchetState(v82, type metadata accessor for MPPB_RatchetState);
  }

  v53 = 0;
  v54 = *(v34 + 20);
  v89 = v94 + *(v34 + 24);
  v55 = (v94 + v54);
  v88 = v91 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
  v56 = (v39 + 32);
  v87 = v39 + 40;
  while (v53 < *(v91 + 16))
  {
    outlined init with copy of MPPB_KeyAndIndex(v88 + *(v49 + 72) * v53, v51);
    if (*(v89 + 8))
    {
      v58 = 0;
    }

    else
    {
      v58 = *v89;
    }

    v59 = *v55;
    v60 = v55[1];
    if (v60 >> 60 == 15)
    {
      v61 = 0;
    }

    else
    {
      v61 = *v55;
    }

    v62 = 0xC000000000000000;
    if (v60 >> 60 != 15)
    {
      v62 = v55[1];
    }

    *&v98 = v61;
    *(&v98 + 1) = v62;
    outlined copy of Data?(v59, v60);
    SymmetricKey.init<A>(data:)();
    v63 = *v56;
    (*v56)(v101, v40, v50);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v52;
    v66 = isUniquelyReferenced_nonNull_native;
    v67 = v31;
    *&v98 = *&v65[v31];
    v68 = v98;
    v69 = specialized __RawDictionaryStorage.find<A>(_:)(v58);
    v71 = *(v68 + 16);
    v72 = (v70 & 1) == 0;
    v73 = __OFADD__(v71, v72);
    v74 = v71 + v72;
    if (v73)
    {
      goto LABEL_40;
    }

    v75 = v70;
    if (*(v68 + 24) >= v74)
    {
      v50 = v96;
      if (v66)
      {
        v77 = v98;
        if (v70)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v80 = v69;
        specialized _NativeDictionary.copy()();
        v50 = v96;
        v69 = v80;
        v77 = v98;
        if (v75)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v74, v66);
      v69 = specialized __RawDictionaryStorage.find<A>(_:)(v58);
      if ((v75 & 1) != (v76 & 1))
      {
        goto LABEL_42;
      }

      v50 = v96;
      v77 = v98;
      if (v75)
      {
LABEL_16:
        (*(v95 + 40))(v77[7] + *(v95 + 72) * v69, v101, v50);
        v51 = v94;
        outlined destroy of MPPB_RatchetState(v94, type metadata accessor for MPPB_KeyAndIndex);
        goto LABEL_17;
      }
    }

    v77[(v69 >> 6) + 8] |= 1 << v69;
    *(v77[6] + 8 * v69) = v58;
    v63((v77[7] + *(v95 + 72) * v69), v101, v50);
    v51 = v94;
    outlined destroy of MPPB_RatchetState(v94, type metadata accessor for MPPB_KeyAndIndex);
    v78 = v77[2];
    v73 = __OFADD__(v78, 1);
    v79 = v78 + 1;
    if (v73)
    {
      goto LABEL_41;
    }

    v77[2] = v79;
LABEL_17:
    ++v53;
    v31 = v67;
    v57 = v92;
    *&v92[v67] = v77;
    v52 = v57;
    v40 = v93;
    v49 = v97;
    if (v90 == v53)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t SymmetricRatchet.serializedData()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v107 = &v80 - v2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v3 = MEMORY[0x28223BE20](v84);
  v88 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v89 = &v80 - v5;
  v6 = type metadata accessor for MPPB_KeyAndIndex(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v82 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v80 = &v80 - v11;
  MEMORY[0x28223BE20](v10);
  v87 = &v80 - v12;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_9CryptoKit12SymmetricKeyV5valuetMd, &_ss6UInt64V3key_9CryptoKit12SymmetricKeyV5valuetMR);
  v13 = MEMORY[0x28223BE20](v105);
  v96 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v95 = &v80 - v16;
  MEMORY[0x28223BE20](v15);
  v104 = (&v80 - v17);
  v18 = type metadata accessor for MPPB_RatchetState(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  v86 = v18;
  v21 = *(v18 + 24);
  v22 = *(v7 + 56);
  v91 = v20;
  v83 = v21;
  v100 = v7 + 56;
  v101 = v6;
  v99 = v22;
  v22(&v20[v21], 1, 1, v6);
  v23 = *(type metadata accessor for SymmetricRatchet(0) + 20);
  v85 = v0;
  v24 = *(v0 + v23);
  v25 = v24 + 64;
  v26 = 1 << *(v24 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v24 + 64);
  v29 = (v26 + 63) >> 6;
  v81 = v7;
  v92 = (v7 + 48);
  v97 = v24;

  v30 = 0;
  v106 = 0;
  v90 = MEMORY[0x277D84F90];
  v98 = xmmword_22B48D7D0;
  v93 = v29;
  v94 = v25;
  v31 = v95;
LABEL_4:
  v32 = v30;
  if (!v28)
  {
    goto LABEL_6;
  }

  do
  {
    v30 = v32;
LABEL_9:
    v33 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v34 = v33 | (v30 << 6);
    v35 = *(v97 + 56);
    v36 = *(*(v97 + 48) + 8 * v34);
    v37 = type metadata accessor for SymmetricKey();
    v103 = *(v37 - 8);
    v38 = v35 + *(v103 + 72) * v34;
    v40 = v104;
    v39 = v105;
    v41 = *(v105 + 48);
    v42 = *(v103 + 16);
    v102 = v37;
    v42(v104 + v41, v38, v37);
    *v40 = v36;
    *v31 = v36;
    v42(&v31[*(v39 + 48)], v40 + v41, v37);
    UnknownStorage.init()();
    v43 = v101;
    v44 = v107 + *(v101 + 20);
    *v44 = v98;
    v45 = v107 + *(v43 + 24);
    *v45 = 0;
    *(v45 + 8) = 1;
    type metadata accessor for NSData();
    v46 = v106;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v106 = v46;
    v47 = v108;
    v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v51 = *v44;
    v52 = *(v44 + 8);
    *v44 = v48;
    *(v44 + 8) = v50;
    outlined consume of Data?(v51, v52);
    v53 = v96;
    outlined init with take of (key: UInt64, value: SymmetricKey)(v31, v96);
    v54 = *v53;
    (*(v103 + 8))(&v53[*(v105 + 48)], v102);
    *v45 = v54;
    v55 = v107;
    *(v45 + 8) = 0;
    v99(v55, 0, 1, v43);
    outlined destroy of TetraSessionStates?(v104, &_ss6UInt64V3key_9CryptoKit12SymmetricKeyV5valuetMd, &_ss6UInt64V3key_9CryptoKit12SymmetricKeyV5valuetMR);
    if ((*v92)(v55, 1, v43) != 1)
    {
      v56 = v80;
      outlined init with take of MPPB_KeyAndIndex(v107, v80, type metadata accessor for MPPB_KeyAndIndex);
      outlined init with take of MPPB_KeyAndIndex(v56, v82, type metadata accessor for MPPB_KeyAndIndex);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v93;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v90[2] + 1, 1, v90);
      }

      v59 = v90[2];
      v58 = v90[3];
      if (v59 >= v58 >> 1)
      {
        v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v90);
      }

      v60 = v90;
      v90[2] = v59 + 1;
      outlined init with take of MPPB_KeyAndIndex(v82, v60 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v59, type metadata accessor for MPPB_KeyAndIndex);
      v25 = v94;
      goto LABEL_4;
    }

    outlined destroy of TetraSessionStates?(v107, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
    v32 = v30;
    v29 = v93;
    v25 = v94;
  }

  while (v28);
  while (1)
  {
LABEL_6:
    v30 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v30 >= v29)
    {
      break;
    }

    v28 = *(v25 + 8 * v30);
    ++v32;
    if (v28)
    {
      goto LABEL_9;
    }
  }

  *v91 = v90;
  v61 = v89;
  outlined init with copy of TetraSessionStates?(v85, v89, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v62 = v84;
  v105 = *(v61 + *(v84 + 48));
  v63 = v105;
  v107 = type metadata accessor for SymmetricKey();
  v64 = *(v107 - 8);
  v65 = v88;
  (*(v64 + 16))(v88, v61, v107);
  *(v65 + *(v62 + 48)) = v63;
  v66 = v87;
  UnknownStorage.init()();
  v67 = v101;
  v68 = v66 + *(v101 + 20);
  *v68 = v98;
  v69 = v66 + *(v67 + 24);
  *v69 = 0;
  *(v69 + 8) = 1;
  type metadata accessor for NSData();
  v70 = v106;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v71 = v108;
  v72 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v73;

  outlined destroy of TetraSessionStates?(v65, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  outlined consume of Data?(*v68, *(v68 + 8));
  *v68 = v72;
  *(v68 + 8) = v74;
  *v69 = v105;
  *(v69 + 8) = 0;
  (*(v64 + 8))(v61, v107);
  v75 = v83;
  v76 = v91;
  outlined destroy of TetraSessionStates?(v91 + v83, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  outlined init with take of MPPB_KeyAndIndex(v66, v76 + v75, type metadata accessor for MPPB_KeyAndIndex);
  v99(v76 + v75, 0, 1, v101);
  lazy protocol witness table accessor for type MPPB_RatchetState and conformance MPPB_RatchetState(&lazy protocol witness table cache variable for type MPPB_RatchetState and conformance MPPB_RatchetState, type metadata accessor for MPPB_RatchetState, &protocol conformance descriptor for MPPB_RatchetState);
  v77 = Message.serializedData(partial:)();
  if (!v70)
  {
    v78 = v77;
    outlined destroy of MPPB_RatchetState(v76, type metadata accessor for MPPB_RatchetState);
    return v78;
  }

LABEL_20:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t type metadata accessor for NSData()
{
  result = lazy cache variable for type metadata for NSData;
  if (!lazy cache variable for type metadata for NSData)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSData);
  }

  return result;
}

uint64_t outlined init with take of (key: UInt64, value: SymmetricKey)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_9CryptoKit12SymmetricKeyV5valuetMd, &_ss6UInt64V3key_9CryptoKit12SymmetricKeyV5valuetMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type MPPB_RatchetState and conformance MPPB_RatchetState(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type StatusKitErrors and conformance StatusKitErrors()
{
  result = lazy protocol witness table cache variable for type StatusKitErrors and conformance StatusKitErrors;
  if (!lazy protocol witness table cache variable for type StatusKitErrors and conformance StatusKitErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StatusKitErrors and conformance StatusKitErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StatusKitErrors and conformance StatusKitErrors;
  if (!lazy protocol witness table cache variable for type StatusKitErrors and conformance StatusKitErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StatusKitErrors and conformance StatusKitErrors);
  }

  return result;
}

uint64_t specialized Data.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return specialized Data.InlineData.init(count:)(result);
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors()
{
  result = lazy protocol witness table cache variable for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors;
  if (!lazy protocol witness table cache variable for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors;
  if (!lazy protocol witness table cache variable for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors);
  }

  return result;
}

uint64_t outlined init with take of MPPB_KeyAndIndex(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of SymmetricRatchetStep(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined destroy of MPPB_RatchetState(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of MPPB_KeyAndIndex(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MPPB_KeyAndIndex(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata completion function for MPPB_RatchetState(uint64_t a1)
{
  type metadata accessor for [MPPB_KeyAndIndex](319, &lazy cache variable for type metadata for [MPPB_KeyAndIndex], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for [MPPB_KeyAndIndex](319, &lazy cache variable for type metadata for MPPB_KeyAndIndex?, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [MPPB_KeyAndIndex](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MPPB_KeyAndIndex(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata completion function for MPPB_KeyAndIndex(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Data?(319, &lazy cache variable for type metadata for UInt64?, MEMORY[0x277D84D38]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Data?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t one-time initialization function for _protobuf_nameMap()
{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static MPPB_SKPaddedStatus._protobuf_nameMap);
  __swift_project_value_buffer(v0, static MPPB_SKPaddedStatus._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B48D990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "payload";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "padding";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static MPPB_KeyAndIndex._protobuf_nameMap);
  __swift_project_value_buffer(v0, static MPPB_KeyAndIndex._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B48D990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "index";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static MPPB_RatchetState._protobuf_nameMap);
  __swift_project_value_buffer(v0, static MPPB_RatchetState._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B48D990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "chainKey";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "messageKeys";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static MPPB_SKIncomingRatchet._protobuf_nameMap);
  __swift_project_value_buffer(v0, static MPPB_SKIncomingRatchet._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B48DAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ratchetState";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "messageKeys";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "publicSigningKey";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static MPPB_SKOutgoingRatchet._protobuf_nameMap);
  __swift_project_value_buffer(v0, static MPPB_SKOutgoingRatchet._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B48DBE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ratchetState";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "privateSigningKey";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "currentMessageKey";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "subscriptionKey";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static MPPB_LiteRatchet._protobuf_nameMap);
  __swift_project_value_buffer(v0, static MPPB_LiteRatchet._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B48DAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ratchetState";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "senderKeyID";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "conversationDST";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static TetraPB_KyberSecurityLevel._protobuf_nameMap);
  __swift_project_value_buffer(v0, static TetraPB_KyberSecurityLevel._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B48D990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "securityLevel768";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "securityLevel1024";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static TetraPB_PrivateKeyBackingStore._protobuf_nameMap);
  __swift_project_value_buffer(v0, static TetraPB_PrivateKeyBackingStore._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B48D990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "AP";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SEP";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static TetraPB_KyberPrivateKey._protobuf_nameMap);
  __swift_project_value_buffer(v0, static TetraPB_KyberPrivateKey._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B48DAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "keyData";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "securityLevel";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "backingStore";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static TetraPB_TetraPublicPrekey._protobuf_nameMap);
  __swift_project_value_buffer(v0, static TetraPB_TetraPublicPrekey._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B48D990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "pqPrekey";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pqPrekeySignature";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static TetraPB_TetraInitiationMessage._protobuf_nameMap);
  __swift_project_value_buffer(v0, static TetraPB_TetraInitiationMessage._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B48D990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "registeredKeyBundle";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "TetraMessage";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static TetraPB_TetraMessage._protobuf_nameMap);
  __swift_project_value_buffer(v0, static TetraPB_TetraMessage._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_22B490B20;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "messageVersion";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "ciphertext";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "signature";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "ecdhPublicKey";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "kemPublicKey";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "kemEncap";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "messageIndex";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "usedRegisteredKeys";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "messageKeyIndicator";
  *(v22 + 8) = 19;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "messageReplayCounterNoRatchet";
  *(v24 + 1) = 29;
  v24[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static TetraPB_TetraInnerMessage._protobuf_nameMap);
  __swift_project_value_buffer(v0, static TetraPB_TetraInnerMessage._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B48D990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "plaintext";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ktGossipData";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static TetraPB_PaddyKeyDistributionMessage._protobuf_nameMap);
  __swift_project_value_buffer(v0, static TetraPB_PaddyKeyDistributionMessage._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B48DAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ciphertext";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "messageIndex";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "ecdhPublicKeyPrefix";
  *(v11 + 8) = 19;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}