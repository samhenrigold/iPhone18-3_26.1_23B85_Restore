Swift::Void __swiftcall ActivitySession.SceneAssociationCoordinator.scenesInBranchDidChange(branchIndex:)(Swift::Int branchIndex)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = atomic_load(&v2[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch]);
  if (v13 != -1 && v13 == branchIndex)
  {
    v24 = v10;
    v25 = v5;
    if (one-time initialization token for sceneAssociation != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Log.sceneAssociation);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock[0] = v19;
      *v18 = 136446210;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001AEE307A0, aBlock);
      _os_log_impl(&dword_1AEB26000, v16, v17, "%{public}s: Scenes in associated branch did change.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1B27120C0](v19, -1, -1);
      MEMORY[0x1B27120C0](v18, -1, -1);
    }

    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    aBlock[4] = partial apply for closure #1 in ActivitySession.SceneAssociationCoordinator.scenesInBranchDidChange(branchIndex:);
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_6_0;
    v21 = _Block_copy(aBlock);
    v22 = v2;
    static DispatchQoS.unspecified.getter();
    v26 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v12, v7, v21);
    _Block_release(v21);
    (*(v25 + 8))(v7, v4);
    (*(v9 + 8))(v12, v24);
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore017AttachmentLedger_D12AuthGetTokenV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v44[3] = *MEMORY[0x1E69E9840];
  Token = type metadata accessor for AttachmentLedger_AttachmentAuthGetToken(0);
  v4 = MEMORY[0x1EEE9AC00](Token);
  v6 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v9 = (&v38 - v8);
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (v10 && a1 != a2)
    {
      v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v12 = a1 + v11;
      v13 = a2 + v11;
      v14 = *(v7 + 72);
      v40 = 0;
      v41 = v14;
      while (1)
      {
        outlined init with copy of CP_KeyValue(v12, v9, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);
        outlined init with copy of CP_KeyValue(v13, v6, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);
        v15 = *v9;
        v16 = v9[1];
        v17 = *v6;
        v18 = v6[1];
        v19 = v16 >> 62;
        v20 = v18 >> 62;
        if (v16 >> 62 == 3)
        {
          break;
        }

        if (v19 > 1)
        {
          if (v19 == 2)
          {
            v27 = *(v15 + 16);
            v26 = *(v15 + 24);
            v24 = __OFSUB__(v26, v27);
            v21 = v26 - v27;
            if (v24)
            {
              goto LABEL_70;
            }

            goto LABEL_21;
          }

          v21 = 0;
          if (v20 <= 1)
          {
            goto LABEL_22;
          }
        }

        else if (v19)
        {
          LODWORD(v21) = HIDWORD(v15) - v15;
          if (__OFSUB__(HIDWORD(v15), v15))
          {
            goto LABEL_69;
          }

          v21 = v21;
          if (v20 <= 1)
          {
LABEL_22:
            if (v20)
            {
              LODWORD(v25) = HIDWORD(v17) - v17;
              if (__OFSUB__(HIDWORD(v17), v17))
              {
                goto LABEL_68;
              }

              v25 = v25;
            }

            else
            {
              v25 = BYTE6(v18);
            }

            goto LABEL_28;
          }
        }

        else
        {
          v21 = BYTE6(v16);
          if (v20 <= 1)
          {
            goto LABEL_22;
          }
        }

LABEL_15:
        if (v20 != 2)
        {
          if (v21)
          {
            goto LABEL_65;
          }

          goto LABEL_54;
        }

        v23 = *(v17 + 16);
        v22 = *(v17 + 24);
        v24 = __OFSUB__(v22, v23);
        v25 = v22 - v23;
        if (v24)
        {
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
        }

LABEL_28:
        if (v21 != v25)
        {
          goto LABEL_65;
        }

        if (v21 < 1)
        {
          goto LABEL_54;
        }

        if (v19 > 1)
        {
          if (v19 != 2)
          {
            memset(v44, 0, 14);
LABEL_50:
            v34 = v40;
            closure #1 in static Data.== infix(_:_:)(v44, v17, v18, &v43);
            v40 = v34;
            if (!v43)
            {
              goto LABEL_65;
            }

            goto LABEL_54;
          }

          v28 = *(v15 + 16);
          v38 = *(v15 + 24);
          v39 = v17;
          v29 = __DataStorage._bytes.getter();
          if (v29)
          {
            v30 = __DataStorage._offset.getter();
            if (__OFSUB__(v28, v30))
            {
              goto LABEL_73;
            }

            v29 += v28 - v30;
          }

          if (__OFSUB__(v38, v28))
          {
            goto LABEL_72;
          }
        }

        else
        {
          if (!v19)
          {
            v44[0] = *v9;
            LOWORD(v44[1]) = v16;
            BYTE2(v44[1]) = BYTE2(v16);
            BYTE3(v44[1]) = BYTE3(v16);
            BYTE4(v44[1]) = BYTE4(v16);
            BYTE5(v44[1]) = BYTE5(v16);
            goto LABEL_50;
          }

          v39 = *v6;
          v31 = v15;
          if (v15 >> 32 < v15)
          {
            goto LABEL_71;
          }

          v32 = __DataStorage._bytes.getter();
          if (v32)
          {
            v38 = v32;
            v33 = __DataStorage._offset.getter();
            if (__OFSUB__(v31, v33))
            {
              goto LABEL_74;
            }

            v29 = v31 - v33 + v38;
          }

          else
          {
            v29 = 0;
          }
        }

        MEMORY[0x1B270E950]();
        v35 = v40;
        closure #1 in static Data.== infix(_:_:)(v29, v39, v18, v44);
        v40 = v35;
        if ((v44[0] & 1) == 0)
        {
          goto LABEL_65;
        }

LABEL_54:
        if ((v9[2] != v6[2] || v9[3] != v6[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v9[4] != v6[4] || v9[5] != v6[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v9[6] != v6[6])
        {
LABEL_65:
          outlined destroy of CP_KeyValue(v6, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);
          outlined destroy of CP_KeyValue(v9, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);
          goto LABEL_66;
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v36 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CP_KeyValue(v6, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);
        outlined destroy of CP_KeyValue(v9, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);
        if (v36)
        {
          v13 += v41;
          v12 += v41;
          if (--v10)
          {
            continue;
          }
        }

        return v36 & 1;
      }

      v21 = 0;
      if (!v15 && v16 == 0xC000000000000000 && v18 >> 62 == 3)
      {
        v21 = 0;
        if (!v17 && v18 == 0xC000000000000000)
        {
          goto LABEL_54;
        }
      }

LABEL_21:
      if (v20 <= 1)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    v36 = 1;
  }

  else
  {
LABEL_66:
    v36 = 0;
  }

  return v36 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v33[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          outlined copy of Data._Representation(v7, v6);
          outlined copy of Data._Representation(v9, v8);
          v22 = __DataStorage._bytes.getter();
          if (v22)
          {
            v23 = __DataStorage._offset.getter();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          MEMORY[0x1B270E950]();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        outlined copy of Data._Representation(v7, v6);
        outlined copy of Data._Representation(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          outlined copy of Data._Representation(v7, v6);
          outlined copy of Data._Representation(v9, v8);
          v27 = __DataStorage._bytes.getter();
          if (v27)
          {
            v28 = __DataStorage._offset.getter();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          MEMORY[0x1B270E950]();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          closure #1 in static Data.== infix(_:_:)(v24, v25, v26, v33);
          outlined consume of Data._Representation(v9, v8);
          outlined consume of Data._Representation(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        outlined copy of Data._Representation(v7, v6);
        outlined copy of Data._Representation(v9, v8);
      }

      closure #1 in static Data.== infix(_:_:)(v33, v9, v8, &v32);
      outlined consume of Data._Representation(v9, v8);
      outlined consume of Data._Representation(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(uint64_t result, uint64_t a2)
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
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV19MissingEncryptionIDV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v66 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v59 - v8);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v67);
  v71 = &v59 - v10;
  v63 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
  v11 = MEMORY[0x1EEE9AC00](v63);
  v64 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v59 - v14);
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
LABEL_48:
    v56 = 0;
    return v56 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v56 = 1;
    return v56 & 1;
  }

  v65 = v4;
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v61 = v9;
  v62 = (v5 + 48);
  v20 = *(v13 + 72);
  v59 = 0;
  v60 = v20;
  v21 = v63;
  v22 = v64;
  while (1)
  {
    outlined init with copy of CP_KeyValue(v18, v15, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
    v69 = v19;
    outlined init with copy of CP_KeyValue(v19, v22, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
    if (*v15 != *v22)
    {
      goto LABEL_47;
    }

    v70 = v16;
    v68 = v18;
    v23 = *(v21 + 24);
    v24 = *(v67 + 48);
    v25 = v71;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v15 + v23, v71, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    v26 = v22;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v22 + v23, v25 + v24, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    v27 = *v62;
    v28 = v65;
    if ((*v62)(v25, 1, v65) == 1)
    {
      v29 = v27(v25 + v24, 1, v28) == 1;
      v30 = v25;
      v22 = v26;
      if (!v29)
      {
        goto LABEL_45;
      }

      outlined destroy of NSObject?(v25, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
      v31 = v68;
      v32 = v70;
      goto LABEL_39;
    }

    v33 = v61;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v25, v61, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    if (v27(v25 + v24, 1, v28) == 1)
    {
      outlined destroy of CP_KeyValue(v33, type metadata accessor for AttachmentLedger_EncryptionID);
      v30 = v25;
      v22 = v26;
LABEL_45:
      v57 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMd;
      v58 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMR;
      goto LABEL_46;
    }

    v34 = v25 + v24;
    v35 = v66;
    result = outlined init with take of CP_EncryptionID(v34, v66, type metadata accessor for AttachmentLedger_EncryptionID);
    v38 = *v33;
    v37 = v33[1];
    v39 = *v35;
    v40 = v35[1];
    v41 = v37 >> 62;
    v42 = v40 >> 62;
    v22 = v26;
    if (v37 >> 62 == 3)
    {
      v43 = 0;
      v32 = v70;
      if (!v38 && v37 == 0xC000000000000000 && v40 >> 62 == 3)
      {
        v43 = 0;
        if (!v39 && v40 == 0xC000000000000000)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      v32 = v70;
      if (v41)
      {
        if (v41 == 1)
        {
          LODWORD(v43) = HIDWORD(v38) - v38;
          if (__OFSUB__(HIDWORD(v38), v38))
          {
            goto LABEL_52;
          }

          v43 = v43;
        }

        else
        {
          v45 = *(v38 + 16);
          v44 = *(v38 + 24);
          v46 = __OFSUB__(v44, v45);
          v43 = v44 - v45;
          if (v46)
          {
            goto LABEL_51;
          }
        }
      }

      else
      {
        v43 = BYTE6(v37);
      }
    }

    if (v42 <= 1)
    {
      if (v42)
      {
        LODWORD(v47) = HIDWORD(v39) - v39;
        if (__OFSUB__(HIDWORD(v39), v39))
        {
          goto LABEL_50;
        }

        v47 = v47;
      }

      else
      {
        v47 = BYTE6(v40);
      }

LABEL_33:
      if (v43 != v47 || v43 >= 1 && (outlined copy of Data._Representation(v39, v40), v50 = v59, v51 = specialized Data.withUnsafeBytes<A>(_:)(v38, v37, v39, v40), v59 = v50, (v51 & 1) == 0))
      {
LABEL_43:
        outlined destroy of CP_KeyValue(v66, type metadata accessor for AttachmentLedger_EncryptionID);
        outlined destroy of CP_KeyValue(v61, type metadata accessor for AttachmentLedger_EncryptionID);
        v57 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd;
        v58 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR;
        v30 = v71;
LABEL_46:
        outlined destroy of NSObject?(v30, v57, v58);
LABEL_47:
        outlined destroy of CP_KeyValue(v22, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
        outlined destroy of CP_KeyValue(v15, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
        goto LABEL_48;
      }

      goto LABEL_38;
    }

    if (v42 == 2)
    {
      break;
    }

    if (v43)
    {
      goto LABEL_43;
    }

LABEL_38:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v52 = v61;
    v53 = v66;
    v54 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of CP_KeyValue(v53, type metadata accessor for AttachmentLedger_EncryptionID);
    v55 = v52;
    v22 = v64;
    outlined destroy of CP_KeyValue(v55, type metadata accessor for AttachmentLedger_EncryptionID);
    outlined destroy of NSObject?(v71, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    v21 = v63;
    v31 = v68;
    if ((v54 & 1) == 0)
    {
      goto LABEL_47;
    }

LABEL_39:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v56 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of CP_KeyValue(v22, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
    outlined destroy of CP_KeyValue(v15, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
    if (v56)
    {
      v19 = v69 + v60;
      v18 = v31 + v60;
      v16 = v32 - 1;
      if (v16)
      {
        continue;
      }
    }

    return v56 & 1;
  }

  v49 = *(v39 + 16);
  v48 = *(v39 + 24);
  v46 = __OFSUB__(v48, v49);
  v47 = v48 - v49;
  if (!v46)
  {
    goto LABEL_33;
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0D8SnapshotV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v66[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentO_AItMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentO_AItMR);
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v66[-v7];
  v83 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  v8 = *(v83 - 8);
  v9 = MEMORY[0x1EEE9AC00](v83);
  v75 = &v66[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v66[-v12];
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v66[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v66[-v16];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSg_AJtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSg_AJtMR);
  MEMORY[0x1EEE9AC00](v82);
  v19 = &v66[-v18];
  v80 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot(0);
  v20 = MEMORY[0x1EEE9AC00](v80);
  v22 = &v66[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v78 = &v66[-v24];
  v25 = *(a1 + 16);
  if (v25 != *(a2 + 16))
  {
LABEL_57:
    v65 = 0;
    return v65 & 1;
  }

  if (!v25 || a1 == a2)
  {
    v65 = 1;
    return v65 & 1;
  }

  v69 = v6;
  v70 = v13;
  v68 = 0;
  v26 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v27 = a1 + v26;
  v28 = a2 + v26;
  v29 = (v8 + 48);
  v77 = *(v23 + 72);
  v30 = v78;
  v73 = v22;
  v74 = v17;
  v71 = (v8 + 48);
  v72 = v19;
  while (1)
  {
    v85 = v27;
    outlined init with copy of CP_KeyValue(v27, v30, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot);
    v86 = v25;
    v84 = v28;
    outlined init with copy of CP_KeyValue(v28, v22, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot);
    v31 = *(v82 + 48);
    v32 = v30;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v30, v19, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v22, &v19[v31], &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
    v33 = *v29;
    v34 = v83;
    if ((*v29)(v19, 1, v83) != 1)
    {
      break;
    }

    v35 = v33(&v19[v31], 1, v34);
    v36 = v86;
    if (v35 != 1)
    {
      goto LABEL_49;
    }

LABEL_44:
    outlined destroy of NSObject?(v19, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v30 = v32;
    v65 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of CP_KeyValue(v22, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot);
    outlined destroy of CP_KeyValue(v32, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot);
    if (v65)
    {
      v28 = v84 + v77;
      v27 = v85 + v77;
      v25 = v36 - 1;
      if (v25)
      {
        continue;
      }
    }

    return v65 & 1;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v19, v17, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  if (v33(&v19[v31], 1, v34) == 1)
  {
    outlined destroy of CP_KeyValue(v17, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
LABEL_49:
    outlined destroy of NSObject?(v19, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSg_AJtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSg_AJtMR);
    goto LABEL_56;
  }

  v37 = v81;
  outlined init with take of CP_EncryptionID(&v19[v31], v81, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
  v38 = v79;
  v39 = &v79[*(v76 + 48)];
  outlined init with copy of CP_KeyValue(v17, v79, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
  outlined init with copy of CP_KeyValue(v37, v39, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = v75;
    outlined init with copy of CP_KeyValue(v38, v75, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v36 = v86;
    if (EnumCaseMultiPayload == 1)
    {
      v42 = v69;
      outlined init with take of CP_EncryptionID(v39, v69, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      v43 = static AttachmentLedger_AttachmentMetadata.== infix(_:_:)(v40, v42);
      outlined destroy of CP_KeyValue(v42, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      outlined destroy of CP_KeyValue(v40, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      v22 = v73;
      v44 = v74;
      v32 = v78;
      v19 = v72;
      if ((v43 & 1) == 0)
      {
        outlined destroy of CP_KeyValue(v38, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
        v30 = v32;
        goto LABEL_55;
      }

      goto LABEL_43;
    }

    outlined destroy of CP_KeyValue(v40, type metadata accessor for AttachmentLedger_AttachmentMetadata);
LABEL_52:
    v19 = v72;
    v22 = v73;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentO_AItMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentO_AItMR);
    v44 = v74;
    v30 = v78;
    goto LABEL_55;
  }

  v45 = v70;
  outlined init with copy of CP_KeyValue(v38, v70, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
  v47 = *v45;
  v46 = v45[1];
  v48 = swift_getEnumCaseMultiPayload();
  v36 = v86;
  if (v48 == 1)
  {
    outlined consume of Data._Representation(v47, v46);
    v38 = v79;
    goto LABEL_52;
  }

  result = *v39;
  v50 = v39[1];
  v51 = v46 >> 62;
  v52 = v50 >> 62;
  v19 = v72;
  v22 = v73;
  if (v46 >> 62 == 3)
  {
    v53 = 0;
    v54 = v74;
    v30 = v78;
    if (!v47 && v46 == 0xC000000000000000 && v50 >> 62 == 3)
    {
      v53 = 0;
      if (!result && v50 == 0xC000000000000000)
      {
        v32 = v78;
        outlined consume of Data._Representation(0, 0xC000000000000000);
        v55 = 0;
        v56 = 0xC000000000000000;
LABEL_42:
        outlined consume of Data._Representation(v55, v56);
        v38 = v79;
        v44 = v54;
LABEL_43:
        outlined destroy of CP_KeyValue(v38, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
        outlined destroy of CP_KeyValue(v81, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
        v17 = v44;
        outlined destroy of CP_KeyValue(v44, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
        v29 = v71;
        goto LABEL_44;
      }
    }
  }

  else
  {
    v54 = v74;
    v30 = v78;
    if (v51)
    {
      if (v51 == 1)
      {
        LODWORD(v53) = HIDWORD(v47) - v47;
        if (__OFSUB__(HIDWORD(v47), v47))
        {
          goto LABEL_61;
        }

        v53 = v53;
      }

      else
      {
        v58 = *(v47 + 16);
        v57 = *(v47 + 24);
        v59 = __OFSUB__(v57, v58);
        v53 = v57 - v58;
        if (v59)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      v53 = BYTE6(v46);
    }
  }

  if (v52 <= 1)
  {
    if (v52)
    {
      LODWORD(v60) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        goto LABEL_59;
      }

      v60 = v60;
    }

    else
    {
      v60 = BYTE6(v50);
    }

    goto LABEL_36;
  }

  if (v52 != 2)
  {
    if (v53)
    {
LABEL_53:
      outlined consume of Data._Representation(result, v50);
      outlined consume of Data._Representation(v47, v46);
LABEL_54:
      outlined destroy of CP_KeyValue(v79, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
      v44 = v54;
LABEL_55:
      outlined destroy of CP_KeyValue(v81, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
      outlined destroy of CP_KeyValue(v44, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
      outlined destroy of NSObject?(v19, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
LABEL_56:
      outlined destroy of CP_KeyValue(v22, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot);
      outlined destroy of CP_KeyValue(v30, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot);
      goto LABEL_57;
    }

LABEL_41:
    v32 = v30;
    outlined consume of Data._Representation(result, v50);
    v55 = v47;
    v56 = v46;
    goto LABEL_42;
  }

  v62 = *(result + 16);
  v61 = *(result + 24);
  v59 = __OFSUB__(v61, v62);
  v60 = v61 - v62;
  if (!v59)
  {
LABEL_36:
    if (v53 != v60)
    {
      goto LABEL_53;
    }

    if (v53 >= 1)
    {
      v63 = result;
      outlined copy of Data._Representation(result, v50);
      v64 = v68;
      v67 = specialized Data.withUnsafeBytes<A>(_:)(v47, v46, v63, v50);
      v68 = v64;
      v30 = v78;
      outlined consume of Data._Representation(v63, v50);
      outlined consume of Data._Representation(v47, v46);
      if ((v67 & 1) == 0)
      {
        goto LABEL_54;
      }

      v32 = v30;
      v38 = v79;
      v44 = v54;
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore29AttachmentLedger_EncryptionIDV_Tt1g5(uint64_t a1, uint64_t a2)
{

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore29AttachmentLedger_EncryptionIDV_Tt1g5Tm(a1, a2, type metadata accessor for AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore017AttachmentLedger_D8MetadataV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v89[3] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v77 - v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSg_ADtMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v86);
  v11 = &v77 - v10;
  v87 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v12 = MEMORY[0x1EEE9AC00](v87);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v17 = (&v77 - v16);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
    goto LABEL_130;
  }

  if (!v18 || a1 == a2)
  {
    v75 = 1;
    return v75 & 1;
  }

  v82 = 0;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v79 = *(v15 + 72);
  v80 = (v5 + 48);
  v77 = v9;
  v78 = v11;
  while (1)
  {
    v85 = v20;
    outlined init with copy of CP_KeyValue(v20, v17, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    if (!v18)
    {
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
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
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
    }

    v83 = v21;
    v84 = v18;
    outlined init with copy of CP_KeyValue(v21, v14, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    v22 = *v17;
    v23 = v17[1];
    v25 = *v14;
    v24 = *(v14 + 1);
    v26 = v23 >> 62;
    v27 = v24 >> 62;
    if (v23 >> 62 == 3)
    {
      v28 = 0;
      if (!v22 && v23 == 0xC000000000000000 && v24 >> 62 == 3)
      {
        v28 = 0;
        if (!v25 && v24 == 0xC000000000000000)
        {
          goto LABEL_55;
        }
      }

LABEL_22:
      if (v27 <= 1)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v34 = *(v22 + 16);
        v33 = *(v22 + 24);
        v31 = __OFSUB__(v33, v34);
        v28 = v33 - v34;
        if (v31)
        {
          goto LABEL_138;
        }

        goto LABEL_22;
      }

      v28 = 0;
      if (v27 <= 1)
      {
        goto LABEL_23;
      }
    }

    else if (v26)
    {
      LODWORD(v28) = HIDWORD(v22) - v22;
      if (__OFSUB__(HIDWORD(v22), v22))
      {
        goto LABEL_137;
      }

      v28 = v28;
      if (v27 <= 1)
      {
LABEL_23:
        if (v27)
        {
          LODWORD(v32) = HIDWORD(v25) - v25;
          if (__OFSUB__(HIDWORD(v25), v25))
          {
            goto LABEL_133;
          }

          v32 = v32;
        }

        else
        {
          v32 = BYTE6(v24);
        }

        goto LABEL_29;
      }
    }

    else
    {
      v28 = BYTE6(v23);
      if (v27 <= 1)
      {
        goto LABEL_23;
      }
    }

LABEL_16:
    if (v27 != 2)
    {
      if (v28)
      {
        goto LABEL_129;
      }

      goto LABEL_55;
    }

    v30 = *(v25 + 16);
    v29 = *(v25 + 24);
    v31 = __OFSUB__(v29, v30);
    v32 = v29 - v30;
    if (v31)
    {
      goto LABEL_134;
    }

LABEL_29:
    if (v28 != v32)
    {
      goto LABEL_129;
    }

    if (v28 < 1)
    {
      goto LABEL_55;
    }

    if (v26 > 1)
    {
      if (v26 != 2)
      {
        memset(v89, 0, 14);
        goto LABEL_53;
      }

      v35 = *(v22 + 16);
      v36 = *(v22 + 24);
      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v38 = __DataStorage._offset.getter();
        if (__OFSUB__(v35, v38))
        {
          goto LABEL_145;
        }

        v37 += v35 - v38;
      }

      if (__OFSUB__(v36, v35))
      {
        goto LABEL_142;
      }

LABEL_51:
      MEMORY[0x1B270E950]();
      v42 = v82;
      closure #1 in static Data.== infix(_:_:)(v37, v25, v24, v89);
      v82 = v42;
      v43 = v89[0];
      v9 = v77;
      goto LABEL_54;
    }

    if (v26)
    {
      v39 = v4;
      v40 = v22;
      if (v22 >> 32 < v22)
      {
        goto LABEL_141;
      }

      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v41 = __DataStorage._offset.getter();
        if (__OFSUB__(v40, v41))
        {
          goto LABEL_146;
        }

        v37 += v40 - v41;
      }

      v4 = v39;
      goto LABEL_51;
    }

    v89[0] = *v17;
    LOWORD(v89[1]) = v23;
    BYTE2(v89[1]) = BYTE2(v23);
    BYTE3(v89[1]) = BYTE3(v23);
    BYTE4(v89[1]) = BYTE4(v23);
    BYTE5(v89[1]) = BYTE5(v23);
LABEL_53:
    v44 = v82;
    closure #1 in static Data.== infix(_:_:)(v89, v25, v24, &v88);
    v82 = v44;
    v43 = v88;
LABEL_54:
    v11 = v78;
    if ((v43 & 1) == 0)
    {
      goto LABEL_129;
    }

LABEL_55:
    if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt64V_14CopresenceCore017AttachmentLedger_E10EncryptionVTt1g5(v17[2], *(v14 + 2)) & 1) == 0)
    {
      goto LABEL_129;
    }

    v45 = *(v87 + 36);
    v46 = *(v86 + 48);
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v17 + v45, v11, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(&v14[v45], &v11[v46], &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
    v47 = *v80;
    if ((*v80)(v11, 1, v4) == 1)
    {
      if (v47(&v11[v46], 1, v4) != 1)
      {
        goto LABEL_128;
      }

      outlined destroy of NSObject?(v11, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
      goto LABEL_61;
    }

    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v11, v9, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
    if (v47(&v11[v46], 1, v4) == 1)
    {
      break;
    }

    v48 = v81;
    outlined init with take of CP_EncryptionID(&v11[v46], v81, type metadata accessor for AttachmentLedger_MMCSMetadata);
    v49 = static AttachmentLedger_MMCSMetadata.== infix(_:_:)(v9, v48);
    outlined destroy of CP_KeyValue(v48, type metadata accessor for AttachmentLedger_MMCSMetadata);
    outlined destroy of CP_KeyValue(v9, type metadata accessor for AttachmentLedger_MMCSMetadata);
    outlined destroy of NSObject?(v11, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
    if ((v49 & 1) == 0)
    {
      goto LABEL_129;
    }

LABEL_61:
    v50 = v17[3];
    v51 = *(v14 + 3);
    if (v14[32] == 1)
    {
      if (v51 > 1)
      {
        if (v51 == 2)
        {
          if (v50 != 2)
          {
            goto LABEL_129;
          }
        }

        else if (v50 != 3)
        {
          goto LABEL_129;
        }
      }

      else if (v51)
      {
        if (v50 != 1)
        {
          goto LABEL_129;
        }
      }

      else if (v50)
      {
        goto LABEL_129;
      }
    }

    else if (v50 != v51)
    {
      goto LABEL_129;
    }

    v52 = v17[5];
    v53 = v17[6];
    v54 = *(v14 + 5);
    v55 = *(v14 + 6);
    v56 = v53 >> 62;
    v57 = v55 >> 62;
    if (v53 >> 62 == 3)
    {
      v58 = 0;
      if (!v52 && v53 == 0xC000000000000000 && v55 >> 62 == 3)
      {
        v58 = 0;
        if (!v54 && v55 == 0xC000000000000000)
        {
          goto LABEL_123;
        }
      }

LABEL_86:
      if (v57 > 1)
      {
        goto LABEL_77;
      }

      goto LABEL_87;
    }

    if (v56 > 1)
    {
      if (v56 == 2)
      {
        v63 = *(v52 + 16);
        v62 = *(v52 + 24);
        v31 = __OFSUB__(v62, v63);
        v58 = v62 - v63;
        if (v31)
        {
          goto LABEL_139;
        }

        goto LABEL_86;
      }

      v58 = 0;
      if (v57 > 1)
      {
        goto LABEL_77;
      }
    }

    else if (v56)
    {
      LODWORD(v58) = HIDWORD(v52) - v52;
      if (__OFSUB__(HIDWORD(v52), v52))
      {
        goto LABEL_140;
      }

      v58 = v58;
      if (v57 > 1)
      {
LABEL_77:
        if (v57 != 2)
        {
          if (v58)
          {
            goto LABEL_129;
          }

          goto LABEL_123;
        }

        v60 = *(v54 + 16);
        v59 = *(v54 + 24);
        v31 = __OFSUB__(v59, v60);
        v61 = v59 - v60;
        if (v31)
        {
          goto LABEL_136;
        }

        goto LABEL_93;
      }
    }

    else
    {
      v58 = BYTE6(v53);
      if (v57 > 1)
      {
        goto LABEL_77;
      }
    }

LABEL_87:
    if (v57)
    {
      LODWORD(v61) = HIDWORD(v54) - v54;
      if (__OFSUB__(HIDWORD(v54), v54))
      {
        goto LABEL_135;
      }

      v61 = v61;
    }

    else
    {
      v61 = BYTE6(v55);
    }

LABEL_93:
    if (v58 != v61)
    {
      goto LABEL_129;
    }

    if (v58 >= 1)
    {
      if (v56 > 1)
      {
        if (v56 == 2)
        {
          v64 = *(v52 + 16);
          v65 = *(v52 + 24);
          outlined copy of Data._Representation(*(v14 + 5), *(v14 + 6));
          v66 = __DataStorage._bytes.getter();
          if (v66)
          {
            v67 = __DataStorage._offset.getter();
            if (__OFSUB__(v64, v67))
            {
              goto LABEL_147;
            }

            v66 += v64 - v67;
          }

          if (__OFSUB__(v65, v64))
          {
            goto LABEL_144;
          }

          goto LABEL_121;
        }

        memset(v89, 0, 14);
        outlined copy of Data._Representation(v54, v55);
LABEL_119:
        v72 = v82;
        closure #1 in static Data.== infix(_:_:)(v89, v54, v55, &v88);
        v82 = v72;
        outlined consume of Data._Representation(v54, v55);
        v73 = v88;
      }

      else
      {
        if (!v56)
        {
          v89[0] = v17[5];
          LOWORD(v89[1]) = v53;
          BYTE2(v89[1]) = BYTE2(v53);
          BYTE3(v89[1]) = BYTE3(v53);
          BYTE4(v89[1]) = BYTE4(v53);
          BYTE5(v89[1]) = BYTE5(v53);
          outlined copy of Data._Representation(v54, v55);
          goto LABEL_119;
        }

        v68 = v52;
        if (v52 >> 32 < v52)
        {
          goto LABEL_143;
        }

        outlined copy of Data._Representation(*(v14 + 5), *(v14 + 6));
        v69 = __DataStorage._bytes.getter();
        if (v69)
        {
          v70 = v69;
          v71 = __DataStorage._offset.getter();
          if (__OFSUB__(v68, v71))
          {
            goto LABEL_148;
          }

          v66 = v68 - v71 + v70;
        }

        else
        {
          v66 = 0;
        }

LABEL_121:
        MEMORY[0x1B270E950]();
        v74 = v82;
        closure #1 in static Data.== infix(_:_:)(v66, v54, v55, v89);
        v82 = v74;
        outlined consume of Data._Representation(v54, v55);
        v73 = v89[0];
        v9 = v77;
      }

      v11 = v78;
      if ((v73 & 1) == 0)
      {
        goto LABEL_129;
      }
    }

LABEL_123:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v75 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of CP_KeyValue(v14, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    outlined destroy of CP_KeyValue(v17, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    if (v75)
    {
      v18 = v84 - 1;
      v21 = v83 + v79;
      v20 = v85 + v79;
      if (v84 != 1)
      {
        continue;
      }
    }

    return v75 & 1;
  }

  outlined destroy of CP_KeyValue(v9, type metadata accessor for AttachmentLedger_MMCSMetadata);
LABEL_128:
  outlined destroy of NSObject?(v11, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSg_ADtMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSg_ADtMR);
LABEL_129:
  outlined destroy of CP_KeyValue(v14, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  outlined destroy of CP_KeyValue(v17, type metadata accessor for AttachmentLedger_AttachmentMetadata);
LABEL_130:
  v75 = 0;
  return v75 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore11CP_KeyValueV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v45[3] = *MEMORY[0x1E69E9840];
  v43 = type metadata accessor for CP_KeyValue(0);
  v4 = MEMORY[0x1EEE9AC00](v43);
  v6 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v9 = (&v39 - v8);
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (v10 && a1 != a2)
    {
      v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v12 = a1 + v11;
      v13 = a2 + v11;
      v14 = *(v7 + 72);
      v41 = 0;
      v42 = v14;
      while (1)
      {
        outlined init with copy of CP_KeyValue(v12, v9, type metadata accessor for CP_KeyValue);
        outlined init with copy of CP_KeyValue(v13, v6, type metadata accessor for CP_KeyValue);
        v15 = *v9 == *v6 && v9[1] == v6[1];
        if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
LABEL_63:
          outlined destroy of CP_KeyValue(v6, type metadata accessor for CP_KeyValue);
          outlined destroy of CP_KeyValue(v9, type metadata accessor for CP_KeyValue);
          goto LABEL_64;
        }

        v16 = v9[2];
        v17 = v9[3];
        v18 = v6[2];
        v19 = v6[3];
        v20 = v17 >> 62;
        v21 = v19 >> 62;
        if (v17 >> 62 == 3)
        {
          break;
        }

        if (v20 > 1)
        {
          if (v20 == 2)
          {
            v28 = *(v16 + 16);
            v27 = *(v16 + 24);
            v25 = __OFSUB__(v27, v28);
            v22 = v27 - v28;
            if (v25)
            {
              goto LABEL_68;
            }

            goto LABEL_26;
          }

          v22 = 0;
          if (v21 > 1)
          {
            goto LABEL_20;
          }
        }

        else if (v20)
        {
          LODWORD(v22) = HIDWORD(v16) - v16;
          if (__OFSUB__(HIDWORD(v16), v16))
          {
            goto LABEL_67;
          }

          v22 = v22;
          if (v21 > 1)
          {
LABEL_20:
            if (v21 != 2)
            {
              if (v22)
              {
                goto LABEL_63;
              }

              goto LABEL_59;
            }

            v24 = *(v18 + 16);
            v23 = *(v18 + 24);
            v25 = __OFSUB__(v23, v24);
            v26 = v23 - v24;
            if (v25)
            {
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
            }

            goto LABEL_33;
          }
        }

        else
        {
          v22 = BYTE6(v17);
          if (v21 > 1)
          {
            goto LABEL_20;
          }
        }

LABEL_27:
        if (v21)
        {
          LODWORD(v26) = HIDWORD(v18) - v18;
          if (__OFSUB__(HIDWORD(v18), v18))
          {
            goto LABEL_66;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v19);
        }

LABEL_33:
        if (v22 != v26)
        {
          goto LABEL_63;
        }

        if (v22 >= 1)
        {
          if (v20 > 1)
          {
            if (v20 == 2)
            {
              v29 = *(v16 + 16);
              v39 = *(v16 + 24);
              v40 = v18;
              v30 = __DataStorage._bytes.getter();
              if (v30)
              {
                v31 = __DataStorage._offset.getter();
                if (__OFSUB__(v29, v31))
                {
                  goto LABEL_71;
                }

                v30 += v29 - v31;
              }

              if (__OFSUB__(v39, v29))
              {
                goto LABEL_70;
              }

              goto LABEL_58;
            }

            memset(v45, 0, 14);
          }

          else
          {
            if (v20)
            {
              v40 = v6[2];
              v32 = v16;
              if (v16 >> 32 < v16)
              {
                goto LABEL_69;
              }

              v33 = __DataStorage._bytes.getter();
              if (v33)
              {
                v39 = v33;
                v34 = __DataStorage._offset.getter();
                if (__OFSUB__(v32, v34))
                {
                  goto LABEL_72;
                }

                v30 = v32 - v34 + v39;
              }

              else
              {
                v30 = 0;
              }

LABEL_58:
              MEMORY[0x1B270E950]();
              v36 = v41;
              closure #1 in static Data.== infix(_:_:)(v30, v40, v19, v45);
              v41 = v36;
              if ((v45[0] & 1) == 0)
              {
                goto LABEL_63;
              }

              goto LABEL_59;
            }

            v45[0] = v9[2];
            LOWORD(v45[1]) = v17;
            BYTE2(v45[1]) = BYTE2(v17);
            BYTE3(v45[1]) = BYTE3(v17);
            BYTE4(v45[1]) = BYTE4(v17);
            BYTE5(v45[1]) = BYTE5(v17);
          }

          v35 = v41;
          closure #1 in static Data.== infix(_:_:)(v45, v18, v19, &v44);
          v41 = v35;
          if (!v44)
          {
            goto LABEL_63;
          }
        }

LABEL_59:
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v37 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CP_KeyValue(v6, type metadata accessor for CP_KeyValue);
        outlined destroy of CP_KeyValue(v9, type metadata accessor for CP_KeyValue);
        if (v37)
        {
          v13 += v42;
          v12 += v42;
          if (--v10)
          {
            continue;
          }
        }

        return v37 & 1;
      }

      v22 = 0;
      if (!v16 && v17 == 0xC000000000000000 && v19 >> 62 == 3)
      {
        v22 = 0;
        if (!v18 && v19 == 0xC000000000000000)
        {
          goto LABEL_59;
        }
      }

LABEL_26:
      if (v21 > 1)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }

    v37 = 1;
  }

  else
  {
LABEL_64:
    v37 = 0;
  }

  return v37 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19MissingEncryptionIDV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_EncryptionID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v66 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v59 - v8);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSg_ADtMd, &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v67);
  v71 = &v59 - v10;
  v63 = type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
  v11 = MEMORY[0x1EEE9AC00](v63);
  v64 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v59 - v14);
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
LABEL_48:
    v56 = 0;
    return v56 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v56 = 1;
    return v56 & 1;
  }

  v65 = v4;
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v61 = v9;
  v62 = (v5 + 48);
  v20 = *(v13 + 72);
  v59 = 0;
  v60 = v20;
  v21 = v63;
  v22 = v64;
  while (1)
  {
    outlined init with copy of CP_KeyValue(v18, v15, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
    v69 = v19;
    outlined init with copy of CP_KeyValue(v19, v22, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
    if (*v15 != *v22)
    {
      goto LABEL_47;
    }

    v70 = v16;
    v68 = v18;
    v23 = *(v21 + 24);
    v24 = *(v67 + 48);
    v25 = v71;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v15 + v23, v71, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    v26 = v22;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v22 + v23, v25 + v24, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    v27 = *v62;
    v28 = v65;
    if ((*v62)(v25, 1, v65) == 1)
    {
      v29 = v27(v25 + v24, 1, v28) == 1;
      v30 = v25;
      v22 = v26;
      if (!v29)
      {
        goto LABEL_45;
      }

      outlined destroy of NSObject?(v25, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
      v31 = v68;
      v32 = v70;
      goto LABEL_39;
    }

    v33 = v61;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v25, v61, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    if (v27(v25 + v24, 1, v28) == 1)
    {
      outlined destroy of CP_KeyValue(v33, type metadata accessor for CP_EncryptionID);
      v30 = v25;
      v22 = v26;
LABEL_45:
      v57 = &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMd;
      v58 = &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMR;
      goto LABEL_46;
    }

    v34 = v25 + v24;
    v35 = v66;
    result = outlined init with take of CP_EncryptionID(v34, v66, type metadata accessor for CP_EncryptionID);
    v38 = *v33;
    v37 = v33[1];
    v39 = *v35;
    v40 = v35[1];
    v41 = v37 >> 62;
    v42 = v40 >> 62;
    v22 = v26;
    if (v37 >> 62 == 3)
    {
      v43 = 0;
      v32 = v70;
      if (!v38 && v37 == 0xC000000000000000 && v40 >> 62 == 3)
      {
        v43 = 0;
        if (!v39 && v40 == 0xC000000000000000)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      v32 = v70;
      if (v41)
      {
        if (v41 == 1)
        {
          LODWORD(v43) = HIDWORD(v38) - v38;
          if (__OFSUB__(HIDWORD(v38), v38))
          {
            goto LABEL_52;
          }

          v43 = v43;
        }

        else
        {
          v45 = *(v38 + 16);
          v44 = *(v38 + 24);
          v46 = __OFSUB__(v44, v45);
          v43 = v44 - v45;
          if (v46)
          {
            goto LABEL_51;
          }
        }
      }

      else
      {
        v43 = BYTE6(v37);
      }
    }

    if (v42 <= 1)
    {
      if (v42)
      {
        LODWORD(v47) = HIDWORD(v39) - v39;
        if (__OFSUB__(HIDWORD(v39), v39))
        {
          goto LABEL_50;
        }

        v47 = v47;
      }

      else
      {
        v47 = BYTE6(v40);
      }

LABEL_33:
      if (v43 != v47 || v43 >= 1 && (outlined copy of Data._Representation(v39, v40), v50 = v59, v51 = specialized Data.withUnsafeBytes<A>(_:)(v38, v37, v39, v40), v59 = v50, (v51 & 1) == 0))
      {
LABEL_43:
        outlined destroy of CP_KeyValue(v66, type metadata accessor for CP_EncryptionID);
        outlined destroy of CP_KeyValue(v61, type metadata accessor for CP_EncryptionID);
        v57 = &_s14CopresenceCore15CP_EncryptionIDVSgMd;
        v58 = &_s14CopresenceCore15CP_EncryptionIDVSgMR;
        v30 = v71;
LABEL_46:
        outlined destroy of NSObject?(v30, v57, v58);
LABEL_47:
        outlined destroy of CP_KeyValue(v22, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
        outlined destroy of CP_KeyValue(v15, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
        goto LABEL_48;
      }

      goto LABEL_38;
    }

    if (v42 == 2)
    {
      break;
    }

    if (v43)
    {
      goto LABEL_43;
    }

LABEL_38:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v52 = v61;
    v53 = v66;
    v54 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of CP_KeyValue(v53, type metadata accessor for CP_EncryptionID);
    v55 = v52;
    v22 = v64;
    outlined destroy of CP_KeyValue(v55, type metadata accessor for CP_EncryptionID);
    outlined destroy of NSObject?(v71, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    v21 = v63;
    v31 = v68;
    if ((v54 & 1) == 0)
    {
      goto LABEL_47;
    }

LABEL_39:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v56 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of CP_KeyValue(v22, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
    outlined destroy of CP_KeyValue(v15, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
    if (v56)
    {
      v19 = v69 + v60;
      v18 = v31 + v60;
      v16 = v32 - 1;
      if (v16)
      {
        continue;
      }
    }

    return v56 & 1;
  }

  v49 = *(v39 + 16);
  v48 = *(v39 + 24);
  v46 = __OFSUB__(v48, v49);
  v47 = v48 - v49;
  if (!v46)
  {
    goto LABEL_33;
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore17CP_SequenceNumberV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SequenceNumber(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_12:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      outlined init with copy of CP_KeyValue(v13, v10, type metadata accessor for CP_SequenceNumber);
      outlined init with copy of CP_KeyValue(v14, v7, type metadata accessor for CP_SequenceNumber);
      if (*v10 != *v7 || v10[1] != v7[1])
      {
        break;
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of CP_KeyValue(v7, type metadata accessor for CP_SequenceNumber);
      outlined destroy of CP_KeyValue(v10, type metadata accessor for CP_SequenceNumber);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    outlined destroy of CP_KeyValue(v7, type metadata accessor for CP_SequenceNumber);
    outlined destroy of CP_KeyValue(v10, type metadata accessor for CP_SequenceNumber);
    goto LABEL_12;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore19CP_TopicSubscribersV0eF4InfoV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v26 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_25:
    v25 = 0;
    return v25 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v8 + 72);
  while (1)
  {
    result = outlined init with copy of CP_KeyValue(v14 + v16 * v12, v10, type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo);
    if (v12 == v11)
    {
      break;
    }

    outlined init with copy of CP_KeyValue(v15 + v16 * v12, v7, type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo);
    result = *v10;
    v18 = *v10 == *v7 && v10[1] == v7[1];
    if (!v18 && (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0) || (v19 = v10[2], v20 = v7[2], v21 = *(v19 + 16), v21 != *(v20 + 16)))
    {
LABEL_24:
      outlined destroy of CP_KeyValue(v7, type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo);
      outlined destroy of CP_KeyValue(v10, type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo);
      goto LABEL_25;
    }

    if (v21)
    {
      v22 = v19 == v20;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (v19 + 32);
      v24 = (v20 + 32);
      while (v21)
      {
        if (*v23 != *v24)
        {
          goto LABEL_24;
        }

        ++v23;
        ++v24;
        if (!--v21)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      break;
    }

LABEL_20:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of CP_KeyValue(v7, type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo);
    outlined destroy of CP_KeyValue(v10, type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo);
    if ((v25 & 1) != 0 && ++v12 != v11)
    {
      continue;
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore19CP_TopicSubscribersV09TerminateE0V_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_TopicSubscribers.TerminateTopic(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v19 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        outlined init with copy of CP_KeyValue(v13, v10, type metadata accessor for CP_TopicSubscribers.TerminateTopic);
        outlined init with copy of CP_KeyValue(v14, v7, type metadata accessor for CP_TopicSubscribers.TerminateTopic);
        v16 = *v10 == *v7 && v10[1] == v7[1];
        if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CP_KeyValue(v7, type metadata accessor for CP_TopicSubscribers.TerminateTopic);
        outlined destroy of CP_KeyValue(v10, type metadata accessor for CP_TopicSubscribers.TerminateTopic);
        if (v17)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v17 & 1;
      }

      outlined destroy of CP_KeyValue(v7, type metadata accessor for CP_TopicSubscribers.TerminateTopic);
      outlined destroy of CP_KeyValue(v10, type metadata accessor for CP_TopicSubscribers.TerminateTopic);
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore15CP_EncryptionIDV_Tt1g5(uint64_t a1, uint64_t a2)
{

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore29AttachmentLedger_EncryptionIDV_Tt1g5Tm(a1, a2, type metadata accessor for CP_EncryptionID, type metadata accessor for CP_EncryptionID, type metadata accessor for CP_EncryptionID);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore29AttachmentLedger_EncryptionIDV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v52[3] = *MEMORY[0x1E69E9840];
  v50 = a3(0);
  v9 = MEMORY[0x1EEE9AC00](v50);
  v11 = (&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v14 = (&v44 - v13);
  v15 = *(a1 + 16);
  if (v15 == *(a2 + 16))
  {
    if (v15 && a1 != a2)
    {
      v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v17 = a1 + v16;
      v18 = a2 + v16;
      v19 = *(v12 + 72);
      v47 = 0;
      v48 = v19;
      v46 = a5;
      v49 = a4;
      while (1)
      {
        outlined init with copy of CP_KeyValue(v17, v14, a4);
        outlined init with copy of CP_KeyValue(v18, v11, a4);
        v20 = *v14;
        v21 = v14[1];
        v22 = *v11;
        v23 = v11[1];
        v24 = v21 >> 62;
        v25 = v23 >> 62;
        if (v21 >> 62 == 3)
        {
          break;
        }

        if (v24 > 1)
        {
          if (v24 == 2)
          {
            v32 = *(v20 + 16);
            v31 = *(v20 + 24);
            v29 = __OFSUB__(v31, v32);
            v26 = v31 - v32;
            if (v29)
            {
              goto LABEL_63;
            }

            goto LABEL_21;
          }

          v26 = 0;
          if (v25 <= 1)
          {
            goto LABEL_22;
          }
        }

        else if (v24)
        {
          LODWORD(v26) = HIDWORD(v20) - v20;
          if (__OFSUB__(HIDWORD(v20), v20))
          {
            goto LABEL_64;
          }

          v26 = v26;
          if (v25 <= 1)
          {
LABEL_22:
            if (v25)
            {
              LODWORD(v30) = HIDWORD(v22) - v22;
              if (__OFSUB__(HIDWORD(v22), v22))
              {
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
              }

              v30 = v30;
            }

            else
            {
              v30 = BYTE6(v23);
            }

            goto LABEL_28;
          }
        }

        else
        {
          v26 = BYTE6(v21);
          if (v25 <= 1)
          {
            goto LABEL_22;
          }
        }

LABEL_15:
        if (v25 != 2)
        {
          if (v26)
          {
            goto LABEL_58;
          }

          goto LABEL_54;
        }

        v28 = *(v22 + 16);
        v27 = *(v22 + 24);
        v29 = __OFSUB__(v27, v28);
        v30 = v27 - v28;
        if (v29)
        {
          goto LABEL_62;
        }

LABEL_28:
        if (v26 != v30)
        {
          goto LABEL_58;
        }

        if (v26 < 1)
        {
          goto LABEL_54;
        }

        if (v24 > 1)
        {
          if (v24 != 2)
          {
            memset(v52, 0, 14);
            goto LABEL_50;
          }

          v33 = *(v20 + 16);
          v44 = *(v20 + 24);
          v45 = v22;
          v34 = __DataStorage._bytes.getter();
          if (v34)
          {
            v35 = __DataStorage._offset.getter();
            if (__OFSUB__(v33, v35))
            {
              goto LABEL_67;
            }

            v34 += v33 - v35;
          }

          if (__OFSUB__(v44, v33))
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (!v24)
          {
            v52[0] = *v14;
            LOWORD(v52[1]) = v21;
            BYTE2(v52[1]) = BYTE2(v21);
            BYTE3(v52[1]) = BYTE3(v21);
            BYTE4(v52[1]) = BYTE4(v21);
            BYTE5(v52[1]) = BYTE5(v21);
LABEL_50:
            v39 = v47;
            closure #1 in static Data.== infix(_:_:)(v52, v22, v23, &v51);
            v47 = v39;
            v40 = v51;
            goto LABEL_53;
          }

          v36 = v20;
          if (v20 >> 32 < v20)
          {
            goto LABEL_65;
          }

          v45 = *v11;
          v37 = __DataStorage._bytes.getter();
          if (v37)
          {
            v44 = v37;
            v38 = __DataStorage._offset.getter();
            if (__OFSUB__(v36, v38))
            {
              goto LABEL_68;
            }

            v34 = v36 - v38 + v44;
          }

          else
          {
            v34 = 0;
          }
        }

        MEMORY[0x1B270E950]();
        v41 = v47;
        closure #1 in static Data.== infix(_:_:)(v34, v45, v23, v52);
        v47 = v41;
        v40 = v52[0];
LABEL_53:
        a5 = v46;
        if ((v40 & 1) == 0)
        {
LABEL_58:
          outlined destroy of CP_KeyValue(v11, a5);
          outlined destroy of CP_KeyValue(v14, a5);
          goto LABEL_59;
        }

LABEL_54:
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v42 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CP_KeyValue(v11, a5);
        outlined destroy of CP_KeyValue(v14, a5);
        if (v42)
        {
          a4 = v49;
          v18 += v48;
          v17 += v48;
          if (--v15)
          {
            continue;
          }
        }

        return v42 & 1;
      }

      v26 = 0;
      if (!v20 && v21 == 0xC000000000000000 && v23 >> 62 == 3)
      {
        v26 = 0;
        if (!v22 && v23 == 0xC000000000000000)
        {
          goto LABEL_54;
        }
      }

LABEL_21:
      if (v25 <= 1)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    v42 = 1;
  }

  else
  {
LABEL_59:
    v42 = 0;
  }

  return v42 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore19BiomeSessionDonatorC32EquatableConversationInformation33_C53903DDEF271B50C85204C9B2FDAD46LLV08ActivityE0V_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v9 = *(v3 - 3);
      v10 = *(v3 - 2);
      v11 = *(v3 - 1);
      v12 = *v3;
      if (v5)
      {
        if (!v9)
        {
          return 0;
        }

        v13 = *(v4 - 4) == *(v3 - 4) && v5 == v9;
        if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v9)
      {
        return 0;
      }

      if (v6 == v10 && v7 == v11)
      {
        if (v8 != v12)
        {
          return 0;
        }
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = 0;
        if (v15 & 1) == 0 || ((v8 ^ v12))
        {
          return result;
        }
      }

      v4 += 40;
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore24GroupActivityAssociationC_Tt1g5(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for GroupActivityAssociation();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1B2710B10](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1B2710B10](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = __CocoaSet.count.getter();
  }

  result = __CocoaSet.count.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v12);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t type metadata accessor for ActivitySession.SceneAssociationCoordinator(uint64_t a1)
{
  result = type metadata singleton initialization cache for ActivitySession.SceneAssociationCoordinator;
  if (!type metadata singleton initialization cache for ActivitySession.SceneAssociationCoordinator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ActivitySession.SceneAssociationCoordinator(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

  MEMORY[0x1B270E950]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t outlined destroy of CP_KeyValue(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of CP_EncryptionID(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of CP_KeyValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t SharableObjectIdentifierEncoder.userInfo.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t SharableObjectIdentifierEncoder.encode<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = (*(*v4 + 88))();
  v11 = type metadata accessor for _SharableObjectIdentifierEncoder(0);
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  *(v12 + 24) = v10;
  v13 = OBJC_IVAR____TtC14CopresenceCoreP33_E889BDE102B72D706F1FB007A250847732_SharableObjectIdentifierEncoder_output;
  SHA256.init()();
  v15[3] = v11;
  v15[4] = lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder, type metadata accessor for _SharableObjectIdentifierEncoder, &protocol conformance descriptor for _SharableObjectIdentifierEncoder);
  v15[0] = v12;
  __swift_mutable_project_boxed_opaque_existential_1(v15, v11);

  _SharableObjectIdentifierEncoder.encode<A>(_:)(a1, a2, a3);
  if (!v5)
  {
    swift_beginAccess();
    outlined init with copy of SharableObjectIdentifier(v12 + v13, a4);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v15);
}

uint64_t type metadata accessor for _SharableObjectIdentifierEncoder(uint64_t a1)
{
  result = type metadata singleton initialization cache for _SharableObjectIdentifierEncoder;
  if (!type metadata singleton initialization cache for _SharableObjectIdentifierEncoder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SharableObjectIdentifierEncoder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SharableObjectIdentifierEncoder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  return v0;
}

uint64_t _SharableObjectIdentifierEncoder.container<A>(keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _SharableObjectIdentifierKeyedEncodingContainer(0, a2, a3, a4);
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = swift_allocObject();

  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yyKcTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v6[3] = v5;
  v6[4] = v7;
  v6[2] = v4;
  swift_getWitnessTable();
  return KeyedEncodingContainer.init<A>(_:)();
}

void *_SharableObjectIdentifierKeyedEncodingContainer.__allocating_init(referencing:codingPath:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yyKcTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4[3] = a2;
  v4[4] = v5;
  v4[2] = a1;
  return v4;
}

uint64_t _SharableObjectIdentifierEncoder.__deallocating_deinit()
{

  outlined destroy of SharableObjectIdentifier(v0 + OBJC_IVAR____TtC14CopresenceCoreP33_E889BDE102B72D706F1FB007A250847732_SharableObjectIdentifierEncoder_output);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Encoder.unkeyedContainer() in conformance _SharableObjectIdentifierEncoder@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  a1[3] = &unk_1F24996C0;
  a1[4] = lazy protocol witness table accessor for type _SharableObjectIdentifierUnkeyedEncodingContainer and conformance _SharableObjectIdentifierUnkeyedEncodingContainer();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = 0;
}

uint64_t protocol witness for Encoder.singleValueContainer() in conformance _SharableObjectIdentifierEncoder@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for _SharableObjectIdentifierEncoder(0);
  a1[4] = lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder, type metadata accessor for _SharableObjectIdentifierEncoder, &protocol conformance descriptor for _SharableObjectIdentifierEncoder);
  *a1 = v3;
}

void *_SharableObjectIdentifierKeyedEncodingContainer.deinit()
{
  _SharableObjectIdentifierKeyedEncodingContainer.finalize()();

  return v0;
}

uint64_t _SharableObjectIdentifierKeyedEncodingContainer.__deallocating_deinit()
{
  _SharableObjectIdentifierKeyedEncodingContainer.deinit();

  return swift_deallocClassInstance();
}

uint64_t _SharableObjectIdentifierKeyedEncodingContainer.finalize()()
{
  v2 = v1;
  swift_beginAccess();
  v17 = v0;
  v3 = *(v0 + 32);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_yyKc5valuet_Tt1g5(v4, 0);
    v6 = specialized Sequence._copySequenceContents(initializing:)(v16, (v5 + 4), v4, v3);
    v7 = v16[0];
    v8 = v16[3];
    swift_bridgeObjectRetain_n();
    outlined consume of Set<String>.Iterator._Variant(v7);
    if (v6 != v4)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v2 = v1;
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v16[0] = v5;
  specialized MutableCollection<>.sort(by:)(v16);
  v8 = v2;
  if (!v2)
  {

    v9 = v16[0];
    v10 = *(v16[0] + 16);
    if (!v10)
    {
LABEL_10:

      *(v17 + 32) = MEMORY[0x1E69E7CC8];
    }

    v11 = 0;
    v12 = v16[0] + 56;
    while (v11 < *(v9 + 16))
    {
      v13 = *(v12 - 8);
      swift_retain_n();

      v13(v14);

      ++v11;
      v12 += 32;
      if (v10 == v11)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_13:

  __break(1u);
  return result;
}

uint64_t _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(char a1)
{
  v2 = v1;
  v4 = dispatch thunk of CodingKey.stringValue.getter();
  v6 = v5;
  v7 = *(v1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:);
  *(v9 + 24) = v8;
  swift_beginAccess();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 32);
  *(v2 + 32) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed () -> ()partial apply, v9, v4, v6, isUniquelyReferenced_nonNull_native);

  *(v2 + 32) = v12;
  swift_endAccess();
}

uint64_t _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = dispatch thunk of CodingKey.stringValue.getter();
  v8 = v7;
  v9 = *(v2 + 16);
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:);
  *(v11 + 24) = v10;
  swift_beginAccess();
  swift_retain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v3 + 32);
  *(v3 + 32) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed () -> ()partial apply, v11, v6, v8, isUniquelyReferenced_nonNull_native);

  *(v3 + 32) = v14;
  swift_endAccess();
}

{
  return _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(a1, a2, &unk_1F249F9D0, &unk_1F249F9F8, partial apply for closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:), thunk for @escaping @callee_guaranteed () -> ()partial apply);
}

{
  return _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(a1, a2, &unk_1F249F980, &unk_1F249F9A8, partial apply for closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:), thunk for @escaping @callee_guaranteed () -> ()partial apply);
}

{
  return _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(a1, a2, &unk_1F249F930, &unk_1F249F958, partial apply for closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:), thunk for @escaping @callee_guaranteed () -> ()partial apply);
}

{
  return _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(a1, a2, &unk_1F249F8E0, &unk_1F249F908, partial apply for closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:), thunk for @escaping @callee_guaranteed () -> ()partial apply);
}

{
  return _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(a1, a2, &unk_1F249F890, &unk_1F249F8B8, partial apply for closure #1 in _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:), thunk for @escaping @callee_guaranteed () -> ()partial apply);
}

{
  return _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(a1, a2, &unk_1F249F840, &unk_1F249F868, partial apply for closure #1 in _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:), thunk for @escaping @callee_guaranteed () -> ()partial apply);
}

{
  return _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(a1, a2, &unk_1F249F7F0, &unk_1F249F818, partial apply for closure #1 in _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:), thunk for @escaping @callee_guaranteed () -> ()partial apply);
}

{
  return _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(a1, a2, &unk_1F249F7A0, &unk_1F249F7C8, partial apply for closure #1 in _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:), thunk for @escaping @callee_guaranteed () -> ()partial apply);
}

{
  return _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(a1, a2, &unk_1F249F750, &unk_1F249F778, partial apply for closure #1 in _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:), thunk for @escaping @callee_guaranteed () -> ()partial apply);
}

{
  return _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(a1, a2, &unk_1F249F700, &unk_1F249F728, partial apply for closure #1 in _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:), thunk for @escaping @callee_guaranteed () -> ()partial apply);
}

uint64_t _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(double a1)
{
  v2 = v1;
  v4 = dispatch thunk of CodingKey.stringValue.getter();
  v6 = v5;
  v7 = *(v1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:);
  *(v9 + 24) = v8;
  swift_beginAccess();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 32);
  *(v2 + 32) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed () -> ()partial apply, v9, v4, v6, isUniquelyReferenced_nonNull_native);

  *(v2 + 32) = v12;
  swift_endAccess();
}

uint64_t _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(float a1)
{
  v2 = v1;
  v4 = dispatch thunk of CodingKey.stringValue.getter();
  v6 = v5;
  v7 = *(v1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:);
  *(v9 + 24) = v8;
  swift_beginAccess();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 32);
  *(v2 + 32) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed () -> ()partial apply, v9, v4, v6, isUniquelyReferenced_nonNull_native);

  *(v2 + 32) = v12;
  swift_endAccess();
}

uint64_t closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v4 = a2;
  MEMORY[0x1B2710120](&v4, v5);
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  dispatch thunk of HashFunction.update(bufferPointer:)();
  return swift_endAccess();
}

uint64_t _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = dispatch thunk of CodingKey.stringValue.getter();
  v11 = v10;
  v12 = *(v6 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = v13;
  swift_beginAccess();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v6 + 32);
  *(v6 + 32) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a6, v14, v9, v11, isUniquelyReferenced_nonNull_native);

  *(v6 + 32) = v18;
  swift_endAccess();
}

uint64_t closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, char a2)
{
  v6 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v4 = a2;
  MEMORY[0x1B2710120](&v4, v5);
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  dispatch thunk of HashFunction.update(bufferPointer:)();
  return swift_endAccess();
}

uint64_t _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = dispatch thunk of CodingKey.stringValue.getter();
  v11 = v10;
  v12 = *(v6 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = v13;
  swift_beginAccess();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v6 + 32);
  *(v6 + 32) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a6, v14, v9, v11, isUniquelyReferenced_nonNull_native);

  *(v6 + 32) = v18;
  swift_endAccess();
}

uint64_t closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, __int16 a2)
{
  v6 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v4 = a2;
  MEMORY[0x1B2710120](&v4, v5);
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  dispatch thunk of HashFunction.update(bufferPointer:)();
  return swift_endAccess();
}

uint64_t _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = dispatch thunk of CodingKey.stringValue.getter();
  v11 = v10;
  v12 = *(v6 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = v13;
  swift_beginAccess();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v6 + 32);
  *(v6 + 32) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a6, v14, v9, v11, isUniquelyReferenced_nonNull_native);

  *(v6 + 32) = v18;
  swift_endAccess();
}

uint64_t closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v4 = a2;
  MEMORY[0x1B2710120](&v4, v5);
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  dispatch thunk of HashFunction.update(bufferPointer:)();
  return swift_endAccess();
}

uint64_t _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = dispatch thunk of CodingKey.stringValue.getter();
  v11 = v10;
  v12 = *(v6 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = v13;
  swift_beginAccess();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v6 + 32);
  *(v6 + 32) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a6, v14, v9, v11, isUniquelyReferenced_nonNull_native);

  *(v6 + 32) = v18;
  swift_endAccess();
}

uint64_t _SharableObjectIdentifierKeyedEncodingContainer.encode<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v5 = v4;
  v29 = a1;
  v30 = a4;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v27 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v26 - v14;
  v28 = *(v16 + 88);
  v17 = dispatch thunk of CodingKey.stringValue.getter();
  v31 = v18;
  v32 = v17;
  v26 = *(v5 + 16);
  (*(v12 + 16))(v15, a2, v11);
  v19 = v33;
  (*(v7 + 16))(&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v33);
  v20 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v21 = (v13 + *(v7 + 80) + v20) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v11;
  *(v22 + 3) = v19;
  v23 = v30;
  *(v22 + 4) = v28;
  *(v22 + 5) = v23;
  *(v22 + 6) = v26;
  (*(v12 + 32))(&v22[v20], v15, v11);
  (*(v7 + 32))(&v22[v21], v27, v33);
  swift_beginAccess();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v5 + 32);
  *(v5 + 32) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.encode<A>(_:forKey:), v22, v32, v31, isUniquelyReferenced_nonNull_native);

  *(v5 + 32) = v34;
  swift_endAccess();
}

uint64_t closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.encode<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a5;
  v30[6] = a7;
  v26 = a6;
  v27 = a3;
  v9 = *(a4 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  v15 = *(v9 + 16);
  v15(&v25 - v13);
  swift_beginAccess();
  v16 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
    *(a1 + 16) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
    *(a1 + 16) = v16;
  }

  (v15)(v12, v14, a4);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v19, v12, (a1 + 16), a4, v26);
  (*(v9 + 8))(v14, a4);
  *(a1 + 16) = v16;
  swift_endAccess();
  v30[3] = type metadata accessor for _SharableObjectIdentifierEncoder(0);
  v30[4] = lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder, type metadata accessor for _SharableObjectIdentifierEncoder, &protocol conformance descriptor for _SharableObjectIdentifierEncoder);
  v30[0] = a1;

  v20 = v29;
  dispatch thunk of Encodable.encode(to:)();
  result = __swift_destroy_boxed_opaque_existential_1Tm(v30);
  if (!v20)
  {
    swift_beginAccess();
    v22 = *(a1 + 16);
    if (v22[2])
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v23 = v22[2];
        if (v23)
        {
LABEL_9:
          v24 = v23 - 1;
          __swift_destroy_boxed_opaque_existential_1Tm(&v22[5 * v23 - 1]);
          v22[2] = v24;
          *(a1 + 16) = v22;
          return swift_endAccess();
        }

LABEL_13:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
    v22 = result;
    v23 = *(result + 16);
    if (v23)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t _SharableObjectIdentifierKeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v29 = a2;
  v30 = a3;
  v28[1] = a4;
  v28[0] = *v4;
  v5 = *(v28[0] + 80);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v28 - v10;
  v12 = *(v6 + 16);
  v12(v28 - v10);
  swift_beginAccess();
  v13 = v4[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[3] = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
    v4[3] = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
    v4[3] = v13;
  }

  (v12)(v9, v11, v5);
  v17 = *(v28[0] + 88);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v16, v9, v4 + 3, v5, v17);
  (*(v6 + 8))(v11, v5);
  v4[3] = v13;
  swift_endAccess();
  type metadata accessor for _SharableObjectIdentifierKeyedEncodingContainer(0, v29, v30, v18);
  v19 = v4[2];
  v20 = swift_allocObject();

  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yyKcTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v20[3] = v13;
  v20[4] = v21;
  v20[2] = v19;
  v22 = dispatch thunk of CodingKey.stringValue.getter();
  v24 = v23;
  v25 = swift_allocObject();
  v25[2] = v5;
  v25[3] = v17;
  v25[4] = v20;
  swift_beginAccess();

  v26 = swift_isUniquelyReferenced_nonNull_native();
  v31 = v4[4];
  v4[4] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:), v25, v22, v24, v26);

  v4[4] = v31;
  swift_endAccess();
  v32 = v20;
  swift_getWitnessTable();
  KeyedEncodingContainer.init<A>(_:)();
  return $defer #1 <A><A1>() in _SharableObjectIdentifierKeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)(v4);
}

uint64_t $defer #1 <A><A1>() in _SharableObjectIdentifierKeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v5 = v4 - 1;
    __swift_destroy_boxed_opaque_existential_1Tm(&v2[5 * v4 - 1]);
    v2[2] = v5;
    *(a1 + 24) = v2;
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t _SharableObjectIdentifierKeyedEncodingContainer.nestedUnkeyedContainer(forKey:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  v27 = *v3;
  v5 = *(v27 + 80);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  v12 = *(v6 + 16);
  v12(&v27 - v10, a1, v5);
  swift_beginAccess();
  v13 = v3[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[3] = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
    v3[3] = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
    v3[3] = v13;
  }

  v12(v9, v11, v5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v16, v9, v3 + 3, v5, *(v27 + 88));
  (*(v6 + 8))(v11, v5);
  v3[3] = v13;
  swift_endAccess();
  v17 = v3[2];
  v18 = type metadata accessor for _DeferredSharableObjectIdentifierUnkeyedEncodingContainer();
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E7CC0];
  v19[3] = v13;
  v19[4] = v20;
  v19[2] = v17;

  v21 = dispatch thunk of CodingKey.stringValue.getter();
  v23 = v22;
  swift_beginAccess();

  v24 = swift_isUniquelyReferenced_nonNull_native();
  v29 = v3[4];
  v3[4] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.nestedUnkeyedContainer(forKey:), v19, v21, v23, v24);

  v3[4] = v29;
  swift_endAccess();
  v25 = v28;
  v28[3] = v18;
  v25[4] = lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type _DeferredSharableObjectIdentifierUnkeyedEncodingContainer and conformance _DeferredSharableObjectIdentifierUnkeyedEncodingContainer, type metadata accessor for _DeferredSharableObjectIdentifierUnkeyedEncodingContainer, &protocol conformance descriptor for _DeferredSharableObjectIdentifierUnkeyedEncodingContainer);
  *v25 = v19;
  return $defer #1 <A><A1>() in _SharableObjectIdentifierKeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)(v3);
}

uint64_t _SharableObjectIdentifierKeyedEncodingContainer.superEncoder()@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  a1[3] = type metadata accessor for _SharableObjectIdentifierEncoder(0);
  a1[4] = lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder, type metadata accessor for _SharableObjectIdentifierEncoder, &protocol conformance descriptor for _SharableObjectIdentifierEncoder);
  *a1 = v3;
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _SharableObjectIdentifierKeyedEncodingContainer<A>(uint64_t a1, uint64_t a2)
{
  return _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(a1, a2);
}

{
  return _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(a1, a2);
}

{
  return _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(a1, a2);
}

{
  return _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(a1, a2);
}

{
  return _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(a1, a2);
}

{
  return _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(a1, a2);
}

{
  return _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(a1, a2);
}

{
  return _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(a1, a2);
}

{
  return _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(a1, a2);
}

{
  return _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(a1, a2);
}

{
  return _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(a1, a2);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _SharableObjectIdentifierKeyedEncodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _SharableObjectIdentifierKeyedEncodingContainer<A>(a1, a2, a3, a4, a5, MEMORY[0x1E69E71F0]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _SharableObjectIdentifierKeyedEncodingContainer<A>(a1, a2, a3, a4, a5, MEMORY[0x1E69E71F8]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _SharableObjectIdentifierKeyedEncodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _SharableObjectIdentifierKeyedEncodingContainer(0, *(a3 + 80), *(a3 + 88), a4);
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _SharableObjectIdentifierKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71A0]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _SharableObjectIdentifierKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71A8]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _SharableObjectIdentifierKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71C0]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _SharableObjectIdentifierKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71D0]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _SharableObjectIdentifierKeyedEncodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _SharableObjectIdentifierKeyedEncodingContainer(0, *(a4 + 80), *(a4 + 88), a4);
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _SharableObjectIdentifierKeyedEncodingContainer<A>(a1, a2, a3, a4, a5, MEMORY[0x1E69E7180]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _SharableObjectIdentifierKeyedEncodingContainer<A>(a1, a2, a3, a4, a5, MEMORY[0x1E69E7190]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _SharableObjectIdentifierKeyedEncodingContainer<A>(a1, a2, a3, a4, a5, MEMORY[0x1E69E71B8]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _SharableObjectIdentifierKeyedEncodingContainer<A>(a1, a2, a3, a4, a5, MEMORY[0x1E69E7198]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _SharableObjectIdentifierKeyedEncodingContainer<A>(a1, a2, a3, a4, a5, MEMORY[0x1E69E71E0]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _SharableObjectIdentifierKeyedEncodingContainer<A>(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _SharableObjectIdentifierKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E7188]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _SharableObjectIdentifierKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71B0]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _SharableObjectIdentifierKeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71D8]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _SharableObjectIdentifierKeyedEncodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _SharableObjectIdentifierKeyedEncodingContainer<A>(a1, a2, a3, a4, a5, a6, MEMORY[0x1E69E71C8]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _SharableObjectIdentifierKeyedEncodingContainer<A>(a1, a2, a3, a4, a5, a6, MEMORY[0x1E69E71E8]);
}

uint64_t _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.finalize()()
{
  swift_beginAccess();
  v2 = *(v0 + 32);
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = 0;
    v6 = v2 + 40;
    while (v5 < *(v2 + 16))
    {
      v7 = *(v6 - 8);

      v7(v8);

      if (v1)
      {
      }

      ++v5;
      v6 += 16;
      if (v3 == v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    *(v0 + 32) = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(char a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:);
  *(v5 + 24) = v4;
  swift_beginAccess();
  v6 = *(v1 + 32);
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 32) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    *(v1 + 32) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v10[5] = v5;
  *(v1 + 32) = v6;
  swift_endAccess();
}

uint64_t _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:);
  *(v7 + 24) = v6;
  swift_beginAccess();
  v8 = *(v2 + 32);
  swift_retain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 32) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
    *(v2 + 32) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v12[5] = v7;
  *(v2 + 32) = v8;
  swift_endAccess();
}

uint64_t closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for String.Encoding();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC14CopresenceCoreP33_E889BDE102B72D706F1FB007A250847732_SharableObjectIdentifierEncoder_output;
  swift_beginAccess();
  v15[1] = a2;
  v15[2] = a3;
  static String.Encoding.utf8.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v11 = StringProtocol.data(using:allowLossyConversion:)();
  v13 = v12;
  result = (*(v7 + 8))(v9, v6);
  if (v13 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    outlined copy of Data._Representation(v11, v13);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v11, v13, a1 + v10);
    outlined consume of Data?(v11, v13);
    outlined consume of Data?(v11, v13);
    return swift_endAccess();
  }

  return result;
}

uint64_t _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(double a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:);
  *(v5 + 24) = v4;
  swift_beginAccess();
  v6 = *(v1 + 32);
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 32) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    *(v1 + 32) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v10[5] = v5;
  *(v1 + 32) = v6;
  swift_endAccess();
}

uint64_t closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, double a2)
{
  v6 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v4 = a2;
  MEMORY[0x1B2710120](&v4, v5);
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  dispatch thunk of HashFunction.update(bufferPointer:)();
  return swift_endAccess();
}

uint64_t _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(float a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:);
  *(v5 + 24) = v4;
  swift_beginAccess();
  v6 = *(v1 + 32);
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 32) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    *(v1 + 32) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v10[5] = v5;
  *(v1 + 32) = v6;
  swift_endAccess();
}

uint64_t closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, float a2)
{
  v6 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v4 = a2;
  MEMORY[0x1B2710120](&v4, v5);
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  dispatch thunk of HashFunction.update(bufferPointer:)();
  return swift_endAccess();
}

uint64_t _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(uint64_t a1)
{
  return _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(a1, &unk_1F249F520, &unk_1F249F548, partial apply for closure #1 in _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:), thunk for @escaping @callee_guaranteed () -> ()partial apply);
}

{
  return _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(a1, &unk_1F249F4D0, &unk_1F249F4F8, partial apply for closure #1 in _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:), thunk for @escaping @callee_guaranteed () -> ()partial apply);
}

{
  return _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(a1, &unk_1F249F480, &unk_1F249F4A8, partial apply for closure #1 in _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:), thunk for @escaping @callee_guaranteed () -> ()partial apply);
}

{
  return _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(a1, &unk_1F249F430, &unk_1F249F458, partial apply for closure #1 in _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:), thunk for @escaping @callee_guaranteed () -> ()partial apply);
}

{
  return _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(a1, &unk_1F249F3E0, &unk_1F249F408, partial apply for closure #1 in _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:), thunk for @escaping @callee_guaranteed () -> ()partial apply);
}

{
  return _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(a1, &unk_1F249F390, &unk_1F249F3B8, partial apply for closure #1 in _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:), thunk for @escaping @callee_guaranteed () -> ()partial apply);
}

{
  return _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(a1, &unk_1F249F340, &unk_1F249F368, partial apply for closure #1 in _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:), thunk for @escaping @callee_guaranteed () -> ()partial apply);
}

{
  return _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(a1, &unk_1F249F2F0, &unk_1F249F318, partial apply for closure #1 in _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:), thunk for @escaping @callee_guaranteed () -> ()partial apply);
}

{
  return _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(a1, &unk_1F249F2A0, &unk_1F249F2C8, partial apply for closure #1 in _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:), thunk for @escaping @callee_guaranteed () -> ()partial apply);
}

{
  return _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(a1, &unk_1F249F250, &unk_1F249F278, partial apply for closure #1 in _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:), partial apply for thunk for @escaping @callee_guaranteed () -> ());
}

uint64_t _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = v10;
  swift_beginAccess();
  v12 = *(v5 + 32);
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 32) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
    *(v5 + 32) = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  v16 = &v12[2 * v15];
  v16[4] = a5;
  v16[5] = v11;
  *(v5 + 32) = v12;
  swift_endAccess();
}

uint64_t _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = v10;
  swift_beginAccess();
  v12 = *(v5 + 32);
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 32) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
    *(v5 + 32) = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  v16 = &v12[2 * v15];
  v16[4] = a5;
  v16[5] = v11;
  *(v5 + 32) = v12;
  swift_endAccess();
}

uint64_t _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = v10;
  swift_beginAccess();
  v12 = *(v5 + 32);
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 32) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
    *(v5 + 32) = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  v16 = &v12[2 * v15];
  v16[4] = a5;
  v16[5] = v11;
  *(v5 + 32) = v12;
  swift_endAccess();
}

uint64_t _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = v10;
  swift_beginAccess();
  v12 = *(v5 + 32);
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 32) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
    *(v5 + 32) = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  v16 = &v12[2 * v15];
  v16[4] = a5;
  v16[5] = v11;
  *(v5 + 32) = v12;
  swift_endAccess();
}

uint64_t _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + 16);
  (*(v6 + 16))(v8);
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = (v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v6 + 32))(v12 + v10, v8, a2);
  *(v12 + v11) = v9;
  swift_beginAccess();
  v13 = *(v3 + 32);
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 32) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
    *(v3 + 32) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  v17 = &v13[2 * v16];
  v17[4] = partial apply for closure #1 in _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode<A>(_:);
  v17[5] = v12;
  *(v3 + 32) = v13;
  swift_endAccess();
}

uint64_t closure #1 in _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[3] = type metadata accessor for _SharableObjectIdentifierEncoder(0);
  v6[4] = lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder, type metadata accessor for _SharableObjectIdentifierEncoder, &protocol conformance descriptor for _SharableObjectIdentifierEncoder);
  v6[0] = a2;

  dispatch thunk of Encodable.encode(to:)();
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.nestedContainer<A>(keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _SharableObjectIdentifierKeyedEncodingContainer(0, a2, a3, a4);
  v5 = v4[2];
  v6 = v4[3];
  v7 = swift_allocObject();

  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yyKcTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v7[3] = v6;
  v7[4] = v8;
  v7[2] = v5;
  swift_beginAccess();
  v9 = v4[4];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[4] = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
    v4[4] = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  v13 = &v9[2 * v12];
  v13[4] = partial apply for closure #1 in _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.nestedContainer<A>(keyedBy:);
  v13[5] = v7;
  v4[4] = v9;
  swift_endAccess();
  swift_getWitnessTable();
  return KeyedEncodingContainer.init<A>(_:)();
}

uint64_t _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.nestedUnkeyedContainer()@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = type metadata accessor for _DeferredSharableObjectIdentifierUnkeyedEncodingContainer();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  v6[3] = v4;
  v6[4] = v7;
  v6[2] = v3;
  swift_beginAccess();
  v8 = v1[4];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[4] = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
    v1[4] = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = partial apply for closure #1 in _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.nestedUnkeyedContainer();
  v12[5] = v6;
  v1[4] = v8;
  swift_endAccess();
  a1[3] = v5;
  result = lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type _DeferredSharableObjectIdentifierUnkeyedEncodingContainer and conformance _DeferredSharableObjectIdentifierUnkeyedEncodingContainer, type metadata accessor for _DeferredSharableObjectIdentifierUnkeyedEncodingContainer, &protocol conformance descriptor for _DeferredSharableObjectIdentifierUnkeyedEncodingContainer);
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for UnkeyedEncodingContainer.count.getter in conformance _DeferredSharableObjectIdentifierUnkeyedEncodingContainer()
{
  v1 = *v0;
  swift_beginAccess();
  return *(*(v1 + 32) + 16);
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _DeferredSharableObjectIdentifierUnkeyedEncodingContainer(uint64_t a1)
{
  return _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(a1);
}

{
  return _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(a1);
}

{
  return _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(a1);
}

{
  return _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(a1);
}

{
  return _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(a1);
}

{
  return _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(a1);
}

{
  return _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(a1);
}

{
  return _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(a1);
}

{
  return _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(a1);
}

{
  return _DeferredSharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(a1);
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _DeferredSharableObjectIdentifierUnkeyedEncodingContainer()
{
  return UnkeyedEncodingContainer.encode(_:)();
}

{
  return UnkeyedEncodingContainer.encode(_:)();
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode<A>(contentsOf:) in conformance _DeferredSharableObjectIdentifierUnkeyedEncodingContainer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

uint64_t protocol witness for UnkeyedEncodingContainer.superEncoder() in conformance _DeferredSharableObjectIdentifierUnkeyedEncodingContainer@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 16);
  a1[3] = type metadata accessor for _SharableObjectIdentifierEncoder(0);
  a1[4] = lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder, type metadata accessor for _SharableObjectIdentifierEncoder, &protocol conformance descriptor for _SharableObjectIdentifierEncoder);
  *a1 = v3;
}

uint64_t _SharableObjectIdentifierUnkeyedEncodingContainer.encode(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for String.Encoding();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v11 = OBJC_IVAR____TtC14CopresenceCoreP33_E889BDE102B72D706F1FB007A250847732_SharableObjectIdentifierEncoder_output;
  swift_beginAccess();
  v19[1] = a1;
  v19[2] = a2;
  static String.Encoding.utf8.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v12 = StringProtocol.data(using:allowLossyConversion:)();
  v14 = v13;
  result = (*(v7 + 8))(v9, v6);
  if (v14 >> 60 != 15)
  {
    outlined copy of Data._Representation(v12, v14);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v12, v14, v10 + v11);
    outlined consume of Data?(v12, v14);
    outlined consume of Data?(v12, v14);
    result = swift_endAccess();
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (!v17)
    {
      v3[2] = v18;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _SharableObjectIdentifierUnkeyedEncodingContainer.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v10[3] = type metadata accessor for _SharableObjectIdentifierEncoder(0);
  v10[4] = lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder, type metadata accessor for _SharableObjectIdentifierEncoder, &protocol conformance descriptor for _SharableObjectIdentifierEncoder);
  v10[0] = v5;

  dispatch thunk of Encodable.encode(to:)();
  result = __swift_destroy_boxed_opaque_existential_1Tm(v10);
  if (!v4)
  {
    v7 = v3[2];
    v8 = __OFADD__(v7, 1);
    v9 = v7 + 1;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      v3[2] = v9;
    }
  }

  return result;
}

void _SharableObjectIdentifierUnkeyedEncodingContainer.nestedContainer<A>(keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v4[2] = v7;
    type metadata accessor for _SharableObjectIdentifierKeyedEncodingContainer(0, a2, a3, a4);
    v9 = *v4;
    v8 = v4[1];
    v10 = swift_allocObject();

    v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yyKcTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v10[3] = v8;
    v10[4] = v11;
    v10[2] = v9;
    swift_getWitnessTable();
    KeyedEncodingContainer.init<A>(_:)();
  }
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _SharableObjectIdentifierUnkeyedEncodingContainer(char a1)
{
  v2 = v1;
  v10 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v8 = a1;
  MEMORY[0x1B2710120](&v8, v9);
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  dispatch thunk of HashFunction.update(bufferPointer:)();
  result = swift_endAccess();
  v5 = *(v2 + 16);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  *(v2 + 16) = v7;
  return result;
}

{
  return sub_1AEB34290(a1);
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _SharableObjectIdentifierUnkeyedEncodingContainer(double a1)
{
  v9 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v7 = a1;
  MEMORY[0x1B2710120](&v7, v8);
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  dispatch thunk of HashFunction.update(bufferPointer:)();
  result = swift_endAccess();
  v4 = *(v1 + 16);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  *(v1 + 16) = v6;
  return result;
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _SharableObjectIdentifierUnkeyedEncodingContainer(float a1)
{
  v9 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v7 = a1;
  MEMORY[0x1B2710120](&v7, v8);
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  dispatch thunk of HashFunction.update(bufferPointer:)();
  result = swift_endAccess();
  v4 = *(v1 + 16);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  *(v1 + 16) = v6;
  return result;
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _SharableObjectIdentifierUnkeyedEncodingContainer(uint64_t a1)
{
  v2 = v1;
  v10 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v8 = a1;
  MEMORY[0x1B2710120](&v8, v9);
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  dispatch thunk of HashFunction.update(bufferPointer:)();
  result = swift_endAccess();
  v5 = *(v2 + 16);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  *(v2 + 16) = v7;
  return result;
}

{
  return sub_1AEB34244(a1);
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _SharableObjectIdentifierUnkeyedEncodingContainer(__int16 a1)
{
  v2 = v1;
  v10 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v8 = a1;
  MEMORY[0x1B2710120](&v8, v9);
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  dispatch thunk of HashFunction.update(bufferPointer:)();
  result = swift_endAccess();
  v5 = *(v2 + 16);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  *(v2 + 16) = v7;
  return result;
}

{
  return sub_1AEB342DC(a1);
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _SharableObjectIdentifierUnkeyedEncodingContainer(int a1)
{
  v2 = v1;
  v10 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v8 = a1;
  MEMORY[0x1B2710120](&v8, v9);
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  dispatch thunk of HashFunction.update(bufferPointer:)();
  result = swift_endAccess();
  v5 = *(v2 + 16);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  *(v2 + 16) = v7;
  return result;
}

{
  return sub_1AEB34328(a1);
}

uint64_t protocol witness for UnkeyedEncodingContainer.nestedUnkeyedContainer() in conformance _SharableObjectIdentifierUnkeyedEncodingContainer@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v3[2] = v6;
    v7 = *v3;
    v8 = v3[1];
    a3[3] = result;
    a3[4] = a2;
    *a3 = v7;
    a3[1] = v8;
    a3[2] = 0;
  }

  return result;
}

uint64_t protocol witness for UnkeyedEncodingContainer.superEncoder() in conformance _SharableObjectIdentifierUnkeyedEncodingContainer@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for _SharableObjectIdentifierEncoder(0);
  a1[4] = lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder, type metadata accessor for _SharableObjectIdentifierEncoder, &protocol conformance descriptor for _SharableObjectIdentifierEncoder);
  *a1 = v3;
}

uint64_t _SharableObjectIdentifierEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[3] = type metadata accessor for _SharableObjectIdentifierEncoder(0);
  v5[4] = lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder, type metadata accessor for _SharableObjectIdentifierEncoder, &protocol conformance descriptor for _SharableObjectIdentifierEncoder);
  v5[0] = v3;

  dispatch thunk of Encodable.encode(to:)();
  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SharableObjectIdentifierEncoder(char a1)
{
  v5 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v3 = a1;
  MEMORY[0x1B2710120](&v3, v4);
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  dispatch thunk of HashFunction.update(bufferPointer:)();
  return swift_endAccess();
}

{
  return sub_1AEB343C0(a1);
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SharableObjectIdentifierEncoder(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for String.Encoding();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = OBJC_IVAR____TtC14CopresenceCoreP33_E889BDE102B72D706F1FB007A250847732_SharableObjectIdentifierEncoder_output;
  swift_beginAccess();
  v15[1] = a1;
  v15[2] = a2;
  static String.Encoding.utf8.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v11 = StringProtocol.data(using:allowLossyConversion:)();
  v13 = v12;
  result = (*(v6 + 8))(v8, v5);
  if (v13 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    outlined copy of Data._Representation(v11, v13);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v11, v13, v9 + v10);
    outlined consume of Data?(v11, v13);
    outlined consume of Data?(v11, v13);
    return swift_endAccess();
  }

  return result;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SharableObjectIdentifierEncoder(double a1)
{
  v5 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v3 = a1;
  MEMORY[0x1B2710120](&v3, v4);
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  dispatch thunk of HashFunction.update(bufferPointer:)();
  return swift_endAccess();
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SharableObjectIdentifierEncoder(float a1)
{
  v5 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v3 = a1;
  MEMORY[0x1B2710120](&v3, v4);
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  dispatch thunk of HashFunction.update(bufferPointer:)();
  return swift_endAccess();
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SharableObjectIdentifierEncoder(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v3 = a1;
  MEMORY[0x1B2710120](&v3, v4);
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  dispatch thunk of HashFunction.update(bufferPointer:)();
  return swift_endAccess();
}

{
  return sub_1AEB34374(a1);
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SharableObjectIdentifierEncoder()
{
  return SingleValueEncodingContainer.encode(_:)();
}

{
  return SingleValueEncodingContainer.encode(_:)();
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SharableObjectIdentifierEncoder(__int16 a1)
{
  v5 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v3 = a1;
  MEMORY[0x1B2710120](&v3, v4);
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  dispatch thunk of HashFunction.update(bufferPointer:)();
  return swift_endAccess();
}

{
  return sub_1AEB3440C(a1);
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SharableObjectIdentifierEncoder(int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v3 = a1;
  MEMORY[0x1B2710120](&v3, v4);
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  dispatch thunk of HashFunction.update(bufferPointer:)();
  return swift_endAccess();
}

{
  return sub_1AEB34458(a1);
}

uint64_t outlined init with copy of SharableObjectIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharableObjectIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_yyKc5valuetMd, &_sSS3key_yyKc5valuetMR);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 32 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *(v12 + 32);
      v14 = *(v12 + 56);
      v15 = *(v12 + 40);
      v16 = *(v12 + 16);
      *(v12 + 32) = *v12;
      *(v12 + 48) = v16;
      *v12 = result;
      *(v12 + 8) = v15;
      *(v12 + 24) = v14;
      v10 = v15;
      v12 -= 32;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()();
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14CopresenceCore23IDSGroupSessionProviderC07CurrentG4InfoVGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore23IDSGroupSessionProviderC07CurrentG4InfoVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14CopresenceCore11PubSubTopicC7MessageVGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore11PubSubTopicC7MessageVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt64V_ADtGMd, &_ss23_ContiguousArrayStorageCys6UInt64V_ADtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14CopresenceCore13PresentDevice_pAC20EmptyPresenceContextV0J0AcDPRts_XPGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore13PresentDevice_pAC20EmptyPresenceContextV0J0AcDPRts_XPGMR, &_s14CopresenceCore13PresentDevice_pAA20EmptyPresenceContextV0G0AaBPRts_XPMd, &_s14CopresenceCore13PresentDevice_pAA20EmptyPresenceContextV0G0AaBPRts_XPMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14CopresenceCore13PresentDevice_pAC27ActivityListPresenceContextV0K0AcDPRts_XPGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore13PresentDevice_pAC27ActivityListPresenceContextV0K0AcDPRts_XPGMR, &_s14CopresenceCore13PresentDevice_pAA27ActivityListPresenceContextV0H0AaBPRts_XPMd, &_s14CopresenceCore13PresentDevice_pAA27ActivityListPresenceContextV0H0AaBPRts_XPMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14CopresenceCore29AttachmentLedger_EncryptionIDVGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore29AttachmentLedger_EncryptionIDVGMR, type metadata accessor for AttachmentLedger_EncryptionID);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14CopresenceCore13PresentDevice_pGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore13PresentDevice_pGMR, &_s14CopresenceCore13PresentDevice_pMd, &_s14CopresenceCore13PresentDevice_pMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14CopresenceCore11CP_KeyValueVGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore11CP_KeyValueVGMR, type metadata accessor for CP_KeyValue);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14CopresenceCore15CP_EncryptionIDVGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore15CP_EncryptionIDVGMR, type metadata accessor for CP_EncryptionID);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14CopresenceCore17CP_SequenceNumberVGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore17CP_SequenceNumberVGMR, type metadata accessor for CP_SequenceNumber);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_yyKc5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_yyKc5valuetGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_yyc5valuetMd, &_sSS3key_yyc5valuetMR);
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt64V_10Foundation4UUIDVtGMd, &_ss23_ContiguousArrayStorageCys6UInt64V_10Foundation4UUIDVtGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR) - 8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14CopresenceCore11PubSubTopicC14ReceivedRecordVGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore11PubSubTopicC14ReceivedRecordVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10Foundation4DataVtGMd, &_ss23_ContiguousArrayStorageCySS_10Foundation4DataVtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation4DataVtMd, &_sSS_10Foundation4DataVtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14CopresenceCore19BiomeSessionDonatorC32EquatableConversationInformation33_C53903DDEF271B50C85204C9B2FDAD46LLV08ActivityG0VGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore19BiomeSessionDonatorC32EquatableConversationInformation33_C53903DDEF271B50C85204C9B2FDAD46LLV08ActivityG0VGMR, &type metadata for BiomeSessionDonator.EquatableConversationInformation.ActivitySession);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14CopresenceCore9TopicInfoOGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore9TopicInfoOGMR, &type metadata for TopicInfo);
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
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
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

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[40 * v11])
    {
      memmove(v15, v16, 40 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of ContiguousBytes(&v12, v10 + 40 * a1 + 32);
}

uint64_t type metadata completion function for _SharableObjectIdentifierEncoder(uint64_t a1)
{
  result = type metadata accessor for SHA256();
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

unint64_t lazy protocol witness table accessor for type _SharableObjectIdentifierUnkeyedEncodingContainer and conformance _SharableObjectIdentifierUnkeyedEncodingContainer()
{
  result = lazy protocol witness table cache variable for type _SharableObjectIdentifierUnkeyedEncodingContainer and conformance _SharableObjectIdentifierUnkeyedEncodingContainer;
  if (!lazy protocol witness table cache variable for type _SharableObjectIdentifierUnkeyedEncodingContainer and conformance _SharableObjectIdentifierUnkeyedEncodingContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SharableObjectIdentifierUnkeyedEncodingContainer and conformance _SharableObjectIdentifierUnkeyedEncodingContainer);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _SharableObjectIdentifierEncoder and conformance _SharableObjectIdentifierEncoder(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)()
{
  return closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(*(v0 + 16), *(v0 + 24));
}

{
  return closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(*(v0 + 16), *(v0 + 24));
}

{
  return closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(*(v0 + 16), *(v0 + 24));
}

{
  return closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(*(v0 + 16), *(v0 + 24));
}

{
  return closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(*(v0 + 16), *(v0 + 24));
}

{
  return closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(*(v0 + 16), *(v0 + 24));
}

{
  return closure #1 in _SharableObjectIdentifierKeyedEncodingContainer.encode(_:forKey:)(v0[2], v0[3], v0[4]);
}

uint64_t objectdestroy_121Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t outlined destroy of SharableObjectIdentifier(uint64_t a1)
{
  v2 = type metadata accessor for SharableObjectIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _SharableObjectIdentifierUnkeyedEncodingContainer(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for _SharableObjectIdentifierUnkeyedEncodingContainer(uint64_t result, int a2, int a3)
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

void RTCReporter.reportAttachmentEvent(report:)(void *a1)
{
  v2 = v1;
  v106 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v5 = Strong, v6 = MEMORY[0x1E69E7D40], v7 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x328))(), v5, v8 = [v7 bundleIdentifier], v7, !v8))
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Log.default);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_27;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1AEB26000, v32, v33, "RTC Reporting: reportAttachmentEvent failed - no bundleID found", v34, 2u);
    v35 = v34;
    goto LABEL_26;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = *((*v6 & *a1) + 0x1D8);
  v13 = v12();
  if ((v14 & 1) == 0 && v13 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1AEE09AF0;
    strcpy((v15 + 32), "app_bundle_id");
    v16 = MEMORY[0x1E69E6158];
    *(v15 + 46) = -4864;
    *(v15 + 48) = v9;
    *(v15 + 56) = v11;
    *(v15 + 72) = v16;
    *(v15 + 80) = 0x616F6C70755F7369;
    *(v15 + 88) = 0xE900000000000064;
    v17 = *((*v6 & *a1) + 0xB8);

    v19 = v17(v18);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    *(v15 + 96) = v19;
    *(v15 + 120) = v20;
    *(v15 + 128) = 0xD000000000000010;
    *(v15 + 136) = 0x80000001AEE30B20;
    v21 = (*((*v6 & *a1) + 0xD0))();
    v23 = v22;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    *(v15 + 144) = v21;
    *(v15 + 152) = v23 & 1;
    *(v15 + 168) = v24;
    *(v15 + 176) = 0xD000000000000011;
    *(v15 + 184) = 0x80000001AEE30B40;
    *(v15 + 192) = (*((*v6 & *a1) + 0xE8))();
    *(v15 + 216) = v20;
    *(v15 + 224) = 0xD000000000000012;
    *(v15 + 232) = 0x80000001AEE30B60;
    v25 = (*((*v6 & *a1) + 0x130))();
    LOBYTE(v20) = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
    *(v15 + 240) = v25;
    *(v15 + 248) = v20 & 1;
    *(v15 + 264) = v27;
    *(v15 + 272) = 0x6D69745F64616F6CLL;
    *(v15 + 280) = 0xE900000000000065;
    v28 = (*((*v6 & *a1) + 0x148))();
    *(v15 + 312) = v27;
    *(v15 + 288) = v28;
    *(v15 + 296) = v29 & 1;
    v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v15);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    swift_arrayDestroy();
    swift_deallocClassInstance();
LABEL_17:
    swift_beginAccess();
    *(v2 + 48) = v30;

    goto LABEL_18;
  }

  v36 = (v12)(v13);
  if ((v37 & 1) == 0 && v36 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AEE09B00;
    strcpy((inited + 32), "app_bundle_id");
    v39 = MEMORY[0x1E69E6158];
    *(inited + 46) = -4864;
    *(inited + 48) = v9;
    *(inited + 56) = v11;
    *(inited + 72) = v39;
    strcpy((inited + 80), "is_subscribe");
    *(inited + 93) = 0;
    *(inited + 94) = -5120;
    v40 = *((*v6 & *a1) + 0x100);

    v42 = v40(v41);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    *(inited + 96) = v42;
    *(inited + 120) = v43;
    strcpy((inited + 128), "response_time");
    *(inited + 142) = -4864;
    v44 = (*((*v6 & *a1) + 0x118))();
    v46 = v45;
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
    *(inited + 144) = v44;
    *(inited + 152) = v46 & 1;
    v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
LABEL_16:
    swift_arrayDestroy();
    goto LABEL_17;
  }

  v47 = (v12)(v36);
  if ((v48 & 1) == 0 && v47 == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    v49 = swift_initStackObject();
    *(v49 + 16) = xmmword_1AEE09AF0;
    strcpy((v49 + 32), "app_bundle_id");
    v50 = MEMORY[0x1E69E6158];
    *(v49 + 46) = -4864;
    *(v49 + 48) = v9;
    *(v49 + 56) = v11;
    *(v49 + 72) = v50;
    *(v49 + 80) = 0xD000000000000011;
    *(v49 + 88) = 0x80000001AEE30AC0;
    v51 = *((*v6 & *a1) + 0x160);

    v53 = v51(v52);
    LOBYTE(v51) = v54;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    *(v49 + 96) = v53;
    *(v49 + 104) = v51 & 1;
    *(v49 + 120) = v55;
    *(v49 + 128) = 0xD000000000000016;
    *(v49 + 136) = 0x80000001AEE30AE0;
    v56 = (*((*v6 & *a1) + 0x178))();
    v58 = v57;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
    *(v49 + 144) = v56;
    *(v49 + 152) = v58 & 1;
    *(v49 + 168) = v59;
    *(v49 + 176) = 0xD000000000000014;
    *(v49 + 184) = 0x80000001AEE30B00;
    *(v49 + 192) = (*((*v6 & *a1) + 0x190))();
    *(v49 + 200) = v60 & 1;
    *(v49 + 216) = v59;
    strcpy((v49 + 224), "download_speed");
    *(v49 + 239) = -18;
    *(v49 + 240) = (*((*v6 & *a1) + 0x1A8))();
    *(v49 + 248) = v61 & 1;
    *(v49 + 264) = v59;
    strcpy((v49 + 272), "upload_speed");
    *(v49 + 285) = 0;
    *(v49 + 286) = -5120;
    v62 = (*((*v6 & *a1) + 0x1C0))();
    *(v49 + 312) = v59;
    *(v49 + 288) = v62;
    *(v49 + 296) = v63 & 1;
    v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v49);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    goto LABEL_16;
  }

LABEL_18:
  if (!*MEMORY[0x1E69C6A88])
  {
    __break(1u);
    goto LABEL_35;
  }

  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;
  v67 = MEMORY[0x1E69E6530];
  v105 = MEMORY[0x1E69E6530];
  *&v104 = 0;
  outlined init with take of Any(&v104, v103);
  v68 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v102 = v68;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v103, v64, v66, isUniquelyReferenced_nonNull_native);

  if (!*MEMORY[0x1E69C6A98])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v71;
  v105 = v67;
  *&v104 = 0;
  outlined init with take of Any(&v104, v103);
  v73 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v103, v70, v72, v73);

  if (!*MEMORY[0x1E69C6A90])
  {
LABEL_36:
    __break(1u);
    return;
  }

  v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v75;
  swift_beginAccess();
  v77 = *(v2 + 48);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  *&v104 = v77;
  outlined init with take of Any(&v104, v103);

  v78 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v103, v74, v76, v78);

  v79 = *(v2 + 16);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v102);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *&v104 = 0;
  LODWORD(v77) = [v79 sendMessageWithDictionary:isa error:&v104];

  if (v77)
  {
    v81 = one-time initialization token for default;
    v82 = v104;
    if (v81 != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    __swift_project_value_buffer(v83, static Log.default);

    v32 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v32, v84))
    {

      goto LABEL_27;
    }

    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *&v104 = v86;
    *v85 = 136315138;
    *&v103[0] = v102;
    v87 = String.init<A>(reflecting:)();
    v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, &v104);

    *(v85 + 4) = v89;
    _os_log_impl(&dword_1AEB26000, v32, v84, "Sent attachment data to RTC reporting %s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v86);
    MEMORY[0x1B27120C0](v86, -1, -1);
    v35 = v85;
LABEL_26:
    MEMORY[0x1B27120C0](v35, -1, -1);
LABEL_27:

    return;
  }

  v90 = v104;

  v91 = _convertNSErrorToError(_:)();

  swift_willThrow();
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v92 = type metadata accessor for Logger();
  __swift_project_value_buffer(v92, static Log.default);
  v93 = v91;
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *&v104 = v97;
    *v96 = 136315138;
    *&v103[0] = v91;
    v98 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v99 = String.init<A>(reflecting:)();
    v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v100, &v104);

    *(v96 + 4) = v101;
    _os_log_impl(&dword_1AEB26000, v94, v95, "Could not report attachment event: %s", v96, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v97);
    MEMORY[0x1B27120C0](v97, -1, -1);
    MEMORY[0x1B27120C0](v96, -1, -1);
  }

  else
  {
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RTCReporterCategory()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RTCReporterCategory(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](0);
  return Hasher._finalize()();
}

uint64_t AttachmentDataReport.isUpload.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isUpload;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AttachmentDataReport.isUpload.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isUpload;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AttachmentDataReport.assetTotalSize.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_assetTotalSize;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t AttachmentDataReport.isServerBlocked.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isServerBlocked;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AttachmentDataReport.isServerBlocked.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isServerBlocked;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AttachmentDataReport.isSubscribe.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isSubscribe;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AttachmentDataReport.isSubscribe.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isSubscribe;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AttachmentDataReport.responseTime.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_responseTime;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t AttachmentDataReport.endToEndAttachmentLatency.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_endToEndAttachmentLatency;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t AttachmentDataReport.loadTime.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_loadTime;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t AttachmentDataReport.totalAttachments.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_totalAttachments;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t AttachmentDataReport.totalDownloadBytes.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_totalDownloadBytes;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t AttachmentDataReport.totalUploadBytes.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_totalUploadBytes;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t AttachmentDataReport.downloadSpeed.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_downloadSpeed;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t AttachmentDataReport.uploadSpeed.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_uploadSpeed;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t AttachmentDataReport.assetTotalSize.getter(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t AttachmentDataReport.reportType.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_reportType;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

Swift::Void __swiftcall AttachmentDataReport.encode(with:)(NSCoder with)
{
  v3 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0xB8))() == 2)
  {
    isa = 0;
  }

  else
  {
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  v5 = MEMORY[0x1B270FF70](0x64616F6C70557369, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v5];
  swift_unknownObjectRelease();

  (*((*v3 & *v1) + 0xD0))();
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = Int._bridgeToObjectiveC()().super.super.isa;
  }

  v8 = MEMORY[0x1B270FF70](0x746F547465737361, 0xEE00657A69536C61);
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  if ((*((*v3 & *v1) + 0xE8))() == 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  v10 = MEMORY[0x1B270FF70](0x7265767265537369, 0xEF64656B636F6C42);
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  if ((*((*v3 & *v1) + 0x100))() == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  v12 = MEMORY[0x1B270FF70](0x7263736275537369, 0xEB00000000656269);
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  v13 = COERCE_DOUBLE((*((*v3 & *v1) + 0x118))());
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = MEMORY[0x1B2710490](v13);
  }

  v16 = MEMORY[0x1B270FF70](0x65736E6F70736572, 0xEC000000656D6954);
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];
  swift_unknownObjectRelease();

  v17 = COERCE_DOUBLE((*((*v3 & *v1) + 0x130))());
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = MEMORY[0x1B2710490](v17);
  }

  v20 = MEMORY[0x1B270FF70](0xD000000000000019, 0x80000001AEE30B80);
  [(objc_class *)with.super.isa encodeObject:v19 forKey:v20];
  swift_unknownObjectRelease();

  v21 = COERCE_DOUBLE((*((*v3 & *v1) + 0x148))());
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = MEMORY[0x1B2710490](v21);
  }

  v24 = MEMORY[0x1B270FF70](0x656D695464616F6CLL, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v23 forKey:v24];
  swift_unknownObjectRelease();

  (*((*v3 & *v1) + 0x160))();
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = Int._bridgeToObjectiveC()().super.super.isa;
  }

  v27 = MEMORY[0x1B270FF70](0xD000000000000010, 0x80000001AEE30BA0);
  [(objc_class *)with.super.isa encodeObject:v26 forKey:v27];
  swift_unknownObjectRelease();

  v28 = COERCE_DOUBLE((*((*v3 & *v1) + 0x178))());
  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = MEMORY[0x1B2710490](v28);
  }

  v31 = MEMORY[0x1B270FF70](0xD000000000000012, 0x80000001AEE30BC0);
  [(objc_class *)with.super.isa encodeObject:v30 forKey:v31];
  swift_unknownObjectRelease();

  v32 = COERCE_DOUBLE((*((*v3 & *v1) + 0x190))());
  if (v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = MEMORY[0x1B2710490](v32);
  }

  v35 = MEMORY[0x1B270FF70](0xD000000000000010, 0x80000001AEE30BE0);
  [(objc_class *)with.super.isa encodeObject:v34 forKey:v35];
  swift_unknownObjectRelease();

  v36 = COERCE_DOUBLE((*((*v3 & *v1) + 0x1A8))());
  if (v37)
  {
    v38 = 0;
  }

  else
  {
    v38 = MEMORY[0x1B2710490](v36);
  }

  v39 = MEMORY[0x1B270FF70](0x64616F6C6E776F64, 0xED00006465657053);
  [(objc_class *)with.super.isa encodeObject:v38 forKey:v39];
  swift_unknownObjectRelease();

  v40 = COERCE_DOUBLE((*((*v3 & *v1) + 0x1C0))());
  if (v41)
  {
    v42 = 0;
  }

  else
  {
    v42 = MEMORY[0x1B2710490](v40);
  }

  v43 = MEMORY[0x1B270FF70](0x705364616F6C7075, 0xEB00000000646565);
  [(objc_class *)with.super.isa encodeObject:v42 forKey:v43];
  swift_unknownObjectRelease();

  (*((*v3 & *v1) + 0x1D8))();
  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = Int._bridgeToObjectiveC()().super.super.isa;
  }

  v46 = MEMORY[0x1B270FF70](0x795474726F706572, 0xEA00000000006570);
  [(objc_class *)with.super.isa encodeObject:v45 forKey:v46];
  swift_unknownObjectRelease();
}

id AttachmentDataReport.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized AttachmentDataReport.init(coder:)(a1);

  return v4;
}

id AttachmentDataReport.init(coder:)(void *a1)
{
  v2 = specialized AttachmentDataReport.init(coder:)(a1);

  return v2;
}

id AttachmentDataReport.__allocating_init(isUpload:assetTotalSize:isServerBlocked:endToEndAttachmentLatency:loadTime:)(char a1, uint64_t a2, char a3, double a4, double a5)
{
  v9 = objc_allocWithZone(v5);
  v10 = OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isUpload;
  v9[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isUpload] = 2;
  v11 = &v9[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_assetTotalSize];
  *v11 = 0;
  v11[8] = 1;
  v12 = OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isServerBlocked;
  v9[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isServerBlocked] = 2;
  v9[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isSubscribe] = 2;
  v13 = &v9[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_responseTime];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v9[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_endToEndAttachmentLatency];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v9[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_loadTime];
  *v15 = 0;
  v15[8] = 1;
  v16 = &v9[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_totalAttachments];
  *v16 = 0;
  v16[8] = 1;
  v17 = &v9[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_totalDownloadBytes];
  *v17 = 0;
  v17[8] = 1;
  v18 = &v9[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_totalUploadBytes];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v9[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_downloadSpeed];
  *v19 = 0;
  v19[8] = 1;
  v20 = &v9[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_uploadSpeed];
  *v20 = 0;
  v20[8] = 1;
  v21 = &v9[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_reportType];
  *v21 = 0;
  v21[8] = 1;
  swift_beginAccess();
  v9[v10] = a1;
  swift_beginAccess();
  *v11 = a2;
  v11[8] = 0;
  swift_beginAccess();
  v9[v12] = a3;
  swift_beginAccess();
  *v14 = a4;
  v14[8] = 0;
  swift_beginAccess();
  *v15 = a5;
  v15[8] = 0;
  swift_beginAccess();
  *v21 = 1;
  v21[8] = 0;
  v25.receiver = v9;
  v25.super_class = v5;
  return objc_msgSendSuper2(&v25, sel_init);
}

id AttachmentDataReport.init(isUpload:assetTotalSize:isServerBlocked:endToEndAttachmentLatency:loadTime:)(char a1, uint64_t a2, char a3, double a4, double a5)
{
  v10 = OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isUpload;
  v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isUpload] = 2;
  v11 = &v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_assetTotalSize];
  *v11 = 0;
  v11[8] = 1;
  v12 = OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isServerBlocked;
  v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isServerBlocked] = 2;
  v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isSubscribe] = 2;
  v13 = &v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_responseTime];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_endToEndAttachmentLatency];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_loadTime];
  *v15 = 0;
  v15[8] = 1;
  v16 = &v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_totalAttachments];
  *v16 = 0;
  v16[8] = 1;
  v17 = &v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_totalDownloadBytes];
  *v17 = 0;
  v17[8] = 1;
  v18 = &v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_totalUploadBytes];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_downloadSpeed];
  *v19 = 0;
  v19[8] = 1;
  v20 = &v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_uploadSpeed];
  *v20 = 0;
  v20[8] = 1;
  v21 = &v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_reportType];
  *v21 = 0;
  v21[8] = 1;
  swift_beginAccess();
  v5[v10] = a1;
  swift_beginAccess();
  *v11 = a2;
  v11[8] = 0;
  swift_beginAccess();
  v5[v12] = a3;
  swift_beginAccess();
  *v14 = a4;
  v14[8] = 0;
  swift_beginAccess();
  *v15 = a5;
  v15[8] = 0;
  swift_beginAccess();
  *v21 = 1;
  v21[8] = 0;
  v24.receiver = v5;
  v24.super_class = type metadata accessor for AttachmentDataReport();
  return objc_msgSendSuper2(&v24, sel_init);
}

id AttachmentDataReport.__allocating_init(isSubscribe:responseTime:)(uint64_t a1, double a2)
{
  v4 = a1;
  v5 = objc_allocWithZone(v2);
  return AttachmentDataReport.init(isSubscribe:responseTime:)(v4, a2);
}

id AttachmentDataReport.init(isSubscribe:responseTime:)(char a1, double a2)
{
  v2[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isUpload] = 2;
  v5 = &v2[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_assetTotalSize];
  *v5 = 0;
  v5[8] = 1;
  v2[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isServerBlocked] = 2;
  v6 = OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isSubscribe;
  v2[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isSubscribe] = 2;
  v7 = &v2[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_responseTime];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v2[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_endToEndAttachmentLatency];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v2[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_loadTime];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v2[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_totalAttachments];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v2[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_totalDownloadBytes];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v2[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_totalUploadBytes];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v2[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_downloadSpeed];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v2[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_uploadSpeed];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v2[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_reportType];
  *v15 = 0;
  v15[8] = 1;
  swift_beginAccess();
  v2[v6] = a1;
  swift_beginAccess();
  *v7 = a2;
  v7[8] = 0;
  swift_beginAccess();
  *v15 = 2;
  v15[8] = 0;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for AttachmentDataReport();
  return objc_msgSendSuper2(&v17, sel_init);
}

id AttachmentDataReport.__allocating_init(totalAttachments:totalDownloadBytes:totalUploadBytes:downloadSpeed:uploadSpeed:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  v11[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isUpload] = 2;
  v12 = &v11[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_assetTotalSize];
  *v12 = 0;
  v12[8] = 1;
  v11[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isServerBlocked] = 2;
  v11[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isSubscribe] = 2;
  v13 = &v11[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_responseTime];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v11[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_endToEndAttachmentLatency];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v11[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_loadTime];
  *v15 = 0;
  v15[8] = 1;
  v16 = &v11[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_totalAttachments];
  *v16 = 0;
  v16[8] = 1;
  v17 = &v11[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_totalDownloadBytes];
  *v17 = 0;
  v17[8] = 1;
  v18 = &v11[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_totalUploadBytes];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v11[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_downloadSpeed];
  *v19 = 0;
  v19[8] = 1;
  v20 = &v11[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_uploadSpeed];
  *v20 = 0;
  v20[8] = 1;
  v21 = &v11[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_reportType];
  *v21 = 0;
  v21[8] = 1;
  swift_beginAccess();
  *v16 = a1;
  v16[8] = 0;
  swift_beginAccess();
  *v17 = a2;
  v17[8] = 0;
  swift_beginAccess();
  *v18 = a3;
  v18[8] = 0;
  swift_beginAccess();
  *v19 = a4;
  v19[8] = 0;
  swift_beginAccess();
  *v20 = a5;
  v20[8] = 0;
  swift_beginAccess();
  *v21 = 3;
  v21[8] = 0;
  v23.receiver = v11;
  v23.super_class = v5;
  return objc_msgSendSuper2(&v23, sel_init);
}

id AttachmentDataReport.init(totalAttachments:totalDownloadBytes:totalUploadBytes:downloadSpeed:uploadSpeed:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isUpload] = 2;
  v11 = &v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_assetTotalSize];
  *v11 = 0;
  v11[8] = 1;
  v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isServerBlocked] = 2;
  v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isSubscribe] = 2;
  v12 = &v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_responseTime];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_endToEndAttachmentLatency];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_loadTime];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_totalAttachments];
  *v15 = 0;
  v15[8] = 1;
  v16 = &v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_totalDownloadBytes];
  *v16 = 0;
  v16[8] = 1;
  v17 = &v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_totalUploadBytes];
  *v17 = 0;
  v17[8] = 1;
  v18 = &v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_downloadSpeed];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_uploadSpeed];
  *v19 = 0;
  v19[8] = 1;
  v20 = &v5[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_reportType];
  *v20 = 0;
  v20[8] = 1;
  swift_beginAccess();
  *v15 = a1;
  v15[8] = 0;
  swift_beginAccess();
  *v16 = a2;
  v16[8] = 0;
  swift_beginAccess();
  *v17 = a3;
  v17[8] = 0;
  swift_beginAccess();
  *v18 = a4;
  v18[8] = 0;
  swift_beginAccess();
  *v19 = a5;
  v19[8] = 0;
  swift_beginAccess();
  *v20 = 3;
  v20[8] = 0;
  v22.receiver = v5;
  v22.super_class = type metadata accessor for AttachmentDataReport();
  return objc_msgSendSuper2(&v22, sel_init);
}

id AttachmentDataReport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AttachmentDataReport.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AttachmentDataReport();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void RTCReporter.activitySession.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*RTCReporter.activitySession.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return RTCReporter.activitySession.modify;
}

void RTCReporter.activitySession.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t RTCReporter.reportSessionInfo.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t RTCReporter.userInfo.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t RTCReporter.attachmentData.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

void *RTCReporter.init(session:)(void *a1)
{
  v2 = v1;
  v4 = v1 + 3;
  v33[1] = *v1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B30;
  result = *MEMORY[0x1E69C6AB0];
  if (!*MEMORY[0x1E69C6AB0])
  {
    __break(1u);
    goto LABEL_10;
  }

  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithChar_];
  v13 = type metadata accessor for NSNumber();
  *(inited + 72) = v13;
  *(inited + 48) = v12;
  result = *MEMORY[0x1E69C6AB8];
  if (!*MEMORY[0x1E69C6AB8])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v34 = a1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v14;
  *(inited + 120) = MEMORY[0x1E69E6158];
  *(inited + 96) = 3223088;
  *(inited + 104) = 0xE300000000000000;
  result = *MEMORY[0x1E69C6AD8];
  if (!*MEMORY[0x1E69C6AD8])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v15;
  UUID.init()();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  v19 = MEMORY[0x1B2710080](v16, v18);

  v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 168) = v13;
  *(inited + 144) = v20;
  result = *MEMORY[0x1E69C6AA0];
  if (!*MEMORY[0x1E69C6AA0])
  {
LABEL_12:
    __break(1u);
    return result;
  }

  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v21;
  v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(inited + 216) = v13;
  *(inited + 192) = v22;
  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v24 = MEMORY[0x1E69E7CC8];
  v2[5] = MEMORY[0x1E69E7CC8];
  v2[4] = v23;
  v2[6] = v24;

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v25);

  swift_beginAccess();

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v26);

  v27 = objc_allocWithZone(MEMORY[0x1E69C6A80]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v29 = Dictionary._bridgeToObjectiveC()().super.isa;

  v30 = Array._bridgeToObjectiveC()().super.isa;
  v31 = [v27 initWithSessionInfo:isa userInfo:v29 frameworksToCheck:v30];

  if (v31)
  {
    swift_beginAccess();
    v32 = v34;
    swift_unknownObjectWeakAssign();
    v2[2] = v31;
    [v31 startConfigurationWithCompletionHandler_];
  }

  else
  {

    MEMORY[0x1B27121C0](v4);

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t RTCReporter.deinit()
{
  MEMORY[0x1B27121C0](v0 + 24);

  return v0;
}

uint64_t RTCReporter.__deallocating_deinit()
{
  MEMORY[0x1B27121C0](v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return MEMORY[0x1EEE66BB8]();
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return outlined init with take of Any(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
  }

  return result;
}

{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)();
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(*(v20 + 56) + 8 * v14) = a1;
}

{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)();
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(*(v20 + 56) + 8 * v14) = a1;
}

{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
  }

  return result;
}

{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for AttachmentLedger_AttachmentEncryption(0) - 8) + 72) * v10;

    return outlined assign with take of AttachmentLedger_AttachmentEncryption(a1, v18);
  }

LABEL_13:

  return specialized _NativeDictionary._insert(at:key:value:)(v10, a2, a1, v16);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>, specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>, specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, a5, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, a5, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v19)
  {
    v23 = (*(*v6 + 56) + 16 * v13);
    *v23 = a1;
    v23[1] = a2;

    return swift_unknownObjectRelease();
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)();
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of AnyHashable(a2, v21);
      return specialized _NativeDictionary._insert(at:key:value:)(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return outlined init with take of Any(a1, v17);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return MEMORY[0x1EEE66BB8]();
    }
  }

LABEL_8:
  if (v17)
  {
    *(*(*v5 + 56) + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  specialized _NativeDictionary._insert(at:key:value:)();
}

{
  v5 = v4;
  v28 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_9;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, v23, a2, v24);
  }
}

{
  v5 = v4;
  v28 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_9;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, v23, a2, v24);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), MEMORY[0x1E6977B10], specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), MEMORY[0x1E69695A8], specialized _NativeDictionary._insert(at:key:value:));
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(void), void (*a7)(uint64_t, void), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v8;
  v17 = *v8;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_16;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 < v23 || (a5 & 1) == 0)
  {
    if (v25 >= v23 && (a5 & 1) == 0)
    {
      v26 = v18;
      a6();
      v18 = v26;
      goto LABEL_8;
    }

    a7(v23, a5 & 1);
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if ((v24 & 1) != (v27 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v11;
  if (v24)
  {
    v29 = (*(v28 + 56) + 16 * v18);
    *v29 = a1;
    v29[1] = a2;
  }

  else
  {
    a8(v18, a3, a4, a1, a2, v28);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), uint64_t (*a7)(uint64_t, void *), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = v8;
  v17 = *v8;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_16;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 < v23 || (a4 & 1) == 0)
  {
    if (v25 >= v23 && (a4 & 1) == 0)
    {
      v26 = v18;
      a5();
      v18 = v26;
      goto LABEL_8;
    }

    a6(v23, a4 & 1);
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v24 & 1) != (v27 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v12;
  if (v24)
  {
    v29 = (*(v28 + 56) + 40 * v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);

    return a7(a1, v29);
  }

  else
  {
    a8(v18, a2, a3, a1, v28);
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v29 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_9;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_9:
  v23 = v29;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    v26 = v25[1];
    v29 = *v25;
    *v25 = v23;
    v25[1] = a2;

    v27 = v29;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    specialized _NativeDictionary._insert(at:key:value:)(v15, v12, v23, a2, v24);
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      specialized _NativeDictionary._insert(at:key:value:)();
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = *(v20 + 56);
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v15 = *v7;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      a4();
      goto LABEL_7;
    }

    a5();
    v31 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v21 & 1) == (v32 & 1))
    {
      v17 = v31;
      v23 = *v11;
      if (v21)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v11;
  if (v21)
  {
LABEL_8:
    v24 = *(v23 + 56);
    v25 = a6(0);
    v26 = *(v25 - 8);
    v27 = *(v26 + 40);
    v28 = v25;
    v29 = v24 + *(v26 + 72) * v17;

    return v27(v29, a1, v28);
  }

LABEL_13:

  return a7(v17, a2, a1, v23);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 16 * result;
    *v22 = a1;
    *(v22 + 8) = a2 & 1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a3, a1, a2 & 1, v21);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

id specialized AttachmentDataReport.init(coder:)(void *a1)
{
  v40 = OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isUpload;
  v1[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isUpload] = 2;
  v3 = &v1[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_assetTotalSize];
  *v3 = 0;
  v3[8] = 1;
  v41 = OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isServerBlocked;
  v1[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isServerBlocked] = 2;
  v4 = OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isSubscribe;
  v1[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_isSubscribe] = 2;
  v5 = &v1[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_responseTime];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v1[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_endToEndAttachmentLatency];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v1[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_loadTime];
  *v7 = 0;
  v7[8] = 1;
  v42 = v4;
  v43 = &v1[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_totalAttachments];
  *v43 = 0;
  v43[8] = 1;
  v44 = &v1[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_totalDownloadBytes];
  *v44 = 0;
  v44[8] = 1;
  v45 = &v1[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_totalUploadBytes];
  *v45 = 0;
  v45[8] = 1;
  v46 = &v1[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_downloadSpeed];
  *v46 = 0;
  v46[8] = 1;
  v47 = &v1[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_uploadSpeed];
  *v47 = 0;
  v47[8] = 1;
  v48 = &v1[OBJC_IVAR____TtC14CopresenceCore20AttachmentDataReport_reportType];
  *v48 = 0;
  v48[8] = 1;
  v8 = MEMORY[0x1B270FF70](0x64616F6C70557369, 0xE800000000000000);
  v39 = [a1 decodeBoolForKey_];

  v9 = MEMORY[0x1B270FF70](0x746F547465737361, 0xEE00657A69536C61);
  v38 = [a1 decodeIntegerForKey_];

  v10 = MEMORY[0x1B270FF70](0x7265767265537369, 0xEF64656B636F6C42);
  LOBYTE(v9) = [a1 decodeBoolForKey_];

  v11 = MEMORY[0x1B270FF70](0xD000000000000019, 0x80000001AEE30B80);
  [a1 decodeDoubleForKey_];
  v13 = v12;

  v14 = MEMORY[0x1B270FF70](0x656D695464616F6CLL, 0xE800000000000000);
  [a1 decodeDoubleForKey_];
  v16 = v15;

  swift_beginAccess();
  v1[v40] = v39;
  swift_beginAccess();
  *v3 = v38;
  v3[8] = 0;
  swift_beginAccess();
  v1[v41] = v9;
  swift_beginAccess();
  *v6 = v13;
  v6[8] = 0;
  swift_beginAccess();
  *v7 = v16;
  v7[8] = 0;
  v17 = MEMORY[0x1B270FF70](0x7263736275537369, 0xEB00000000656269);
  LOBYTE(v3) = [a1 decodeBoolForKey_];

  v18 = MEMORY[0x1B270FF70](0x65736E6F70736572, 0xEC000000656D6954);
  [a1 decodeDoubleForKey_];
  v20 = v19;

  swift_beginAccess();
  v1[v42] = v3;
  swift_beginAccess();
  *v5 = v20;
  v5[8] = 0;
  v21 = MEMORY[0x1B270FF70](0xD000000000000010, 0x80000001AEE30BA0);
  v22 = [a1 decodeIntegerForKey_];

  v23 = MEMORY[0x1B270FF70](0xD000000000000012, 0x80000001AEE30BC0);
  [a1 &selRef:v23 setSender:?];
  v25 = v24;

  v26 = MEMORY[0x1B270FF70](0xD000000000000010, 0x80000001AEE30BE0);
  [a1 &selRef:v26 setSender:?];
  v28 = v27;

  v29 = MEMORY[0x1B270FF70](0x64616F6C6E776F64, 0xED00006465657053);
  [a1 &selRef:v29 setSender:?];
  v31 = v30;

  v32 = MEMORY[0x1B270FF70](0x705364616F6C7075, 0xEB00000000646565);
  [a1 &selRef:v32 setSender:?];
  v34 = v33;

  swift_beginAccess();
  *v43 = v22;
  v43[8] = 0;
  swift_beginAccess();
  *v44 = v25;
  v44[8] = 0;
  swift_beginAccess();
  *v45 = v28;
  v45[8] = 0;
  swift_beginAccess();
  *v46 = v31;
  v46[8] = 0;
  swift_beginAccess();
  *v47 = v34;
  v47[8] = 0;
  v35 = MEMORY[0x1B270FF70](0x795474726F706572, 0xEA00000000006570);
  v36 = [a1 decodeIntegerForKey_];

  swift_beginAccess();
  *v48 = v36;
  v48[8] = 0;
  v49.receiver = v1;
  v49.super_class = type metadata accessor for AttachmentDataReport();
  return objc_msgSendSuper2(&v49, sel_init);
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RTCReporterCategory and conformance RTCReporterCategory()
{
  result = lazy protocol witness table cache variable for type RTCReporterCategory and conformance RTCReporterCategory;
  if (!lazy protocol witness table cache variable for type RTCReporterCategory and conformance RTCReporterCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RTCReporterCategory and conformance RTCReporterCategory);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RTCReporterType and conformance RTCReporterType()
{
  result = lazy protocol witness table cache variable for type RTCReporterType and conformance RTCReporterType;
  if (!lazy protocol witness table cache variable for type RTCReporterType and conformance RTCReporterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RTCReporterType and conformance RTCReporterType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RTCReporterCategory(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RTCReporterCategory(_WORD *result, int a2, int a3)
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

uint64_t outlined assign with take of AttachmentLedger_AttachmentEncryption(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t Double.milliseconds.getter(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  v2 = a1 * 1000.0;
  if (COERCE_UNSIGNED_INT64(a1 * 1000.0) >> 52 > 0x7FE)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v2 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  return v2;
}

uint64_t one-time initialization function for log()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, log);
  __swift_project_value_buffer(v0, log);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, log);
  __swift_project_value_buffer(v0, log);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, log);
  __swift_project_value_buffer(v0, log);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, log);
  __swift_project_value_buffer(v0, log);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, log);
  v1 = __swift_project_value_buffer(v0, log);
  if (one-time initialization token for pubSubReporter != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Log.pubSubReporter);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, log);
  __swift_project_value_buffer(v0, log);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, log);
  __swift_project_value_buffer(v0, log);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, log);
  __swift_project_value_buffer(v0, log);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, log);
  v1 = __swift_project_value_buffer(v0, log);
  if (one-time initialization token for unreliableMessenger != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Log.unreliableMessenger);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, log);
  __swift_project_value_buffer(v0, log);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, log);
  v1 = __swift_project_value_buffer(v0, log);
  if (one-time initialization token for pubsub != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Log.pubsub);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, log);
  __swift_project_value_buffer(v0, log);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, log);
  v1 = __swift_project_value_buffer(v0, log);
  if (one-time initialization token for pubsub != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Log.pubsub);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, log);
  v1 = __swift_project_value_buffer(v0, log);
  if (one-time initialization token for pubsub != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Log.pubsub);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, log);
  v1 = __swift_project_value_buffer(v0, log);
  if (one-time initialization token for cryptor != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Log.cryptor);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t PluginRpcStream.definition.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t PluginRpcStream.InputSubscriber.__allocating_init()()
{
  v0 = swift_allocObject();
  PluginRpcStream.InputSubscriber.init()();
  return v0;
}

uint64_t *PluginRpcStream.__allocating_init(definition:input:traceId:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized PluginRpcStream.__allocating_init(definition:input:traceId:)(a1, a2, a3);

  return v3;
}

uint64_t *PluginRpcStream.init(definition:input:traceId:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized PluginRpcStream.init(definition:input:traceId:)(a1, a2, a3);

  return v3;
}

uint64_t PluginRpcStream.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for NWConnection.SendCompletion();
  v21 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for NWConnection.State();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v22 = direct field offset for PluginRpcStream.inputSubscriber;
  v12 = *(**(v0 + direct field offset for PluginRpcStream.inputSubscriber) + 216);

  v12(v13);

  v14 = direct field offset for PluginRpcStream.stream;
  swift_beginAccess();
  if (*(v0 + v14))
  {
    v20 = v2;

    NWConnection.state.getter();
    (*(v6 + 104))(v9, *MEMORY[0x1E6977C00], v5);
    v15 = MEMORY[0x1B270F7E0](v11, v9);
    v16 = *(v6 + 8);
    v16(v9, v5);
    v16(v11, v5);
    if (v15)
    {
      type metadata accessor for NWConnection.ContentContext();
      static NWConnection.ContentContext.finalMessage.getter();
      *v4 = destructiveProjectEnumData for ActivitySession.Errors;
      v4[1] = 0;
      v17 = v20;
      v18 = v21;
      (*(v21 + 104))(v4, *MEMORY[0x1E6977BF8], v20);
      NWConnection.send(content:contentContext:isComplete:completion:)();

      (*(v18 + 8))(v4, v17);
    }

    else
    {
    }
  }

  outlined destroy of NSObject?(v1 + direct field offset for PluginRpcStream.traceId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  return v1;
}

uint64_t PluginRpcStream.__deallocating_deinit()
{
  PluginRpcStream.deinit();

  return swift_deallocClassInstance();
}

void PluginRpcStream.start(stream:)(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *v1 + 192;

  v2(v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = *(v3 - 112);
  *(v6 + 24) = *(v3 - 104);
  *(v6 + 40) = *(v3 - 88);
  *(v6 + 48) = v5;

  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(partial apply for closure #1 in PluginRpcStream.start(stream:), v6);
  NWConnection.stateUpdateHandler.setter();

  PluginRpcStream.sendPath()();
}