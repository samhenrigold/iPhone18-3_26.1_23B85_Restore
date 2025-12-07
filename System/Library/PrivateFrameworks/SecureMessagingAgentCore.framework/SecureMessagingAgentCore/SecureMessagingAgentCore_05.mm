void __swiftcall RegisterKeyPackageResponse.init()(SecureMessagingAgentCore::RegisterKeyPackageResponse *__return_ptr retstr)
{
  retstr->status.value = 0;
  retstr->status.is_nil = 1;
  retstr->splunkHint = 0u;
  retstr->message = 0u;
}

uint64_t RegisterKeyPackageRequest.init(telURI:keyPackage:pnaToken:pnaType:pushTokenForTesting:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t RegisterKeyPackageResponse.status.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t RegisterKeyPackageResponse.splunkHint.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RegisterKeyPackageResponse.splunkHint.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RegisterKeyPackageResponse.message.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t RegisterKeyPackageResponse.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall RegisterKeyPackageResponse.init(status:splunkHint:message:)(SecureMessagingAgentCore::RegisterKeyPackageResponse *__return_ptr retstr, Swift::Int_optional status, Swift::String_optional splunkHint, Swift::String_optional message)
{
  retstr->status.value = status.value;
  retstr->status.is_nil = status.is_nil;
  retstr->splunkHint = splunkHint;
  retstr->message = message;
}

uint64_t RegisterKeyPackageRequestMessage.telURI.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_telURI);

  return v1;
}

uint64_t RegisterKeyPackageRequestMessage.keyPackage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_keyPackage);
  outlined copy of Data._Representation(v1, *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_keyPackage + 8));
  return v1;
}

uint64_t RegisterKeyPackageRequestMessage.pnaToken.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaToken);

  return v1;
}

uint64_t RegisterKeyPackageRequestMessage.pnaType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaType);

  return v1;
}

uint64_t RegisterKeyPackageRequestMessage.pushTokenForTesting.getter()
{
  v1 = v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pushTokenForTesting;
  swift_beginAccess();
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

void RegisterKeyPackageRequestMessage.pushTokenForTesting.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pushTokenForTesting);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  outlined consume of Data?(v6, v7);
}

id RegisterKeyPackageRequestMessage.init(telURI:keyPackage:pnaToken:pnaType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v8[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pushTokenForTesting] = xmmword_2653419D0;
  v9 = &v8[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_telURI];
  *v9 = a1;
  *(v9 + 1) = a2;
  v10 = &v8[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_keyPackage];
  *v10 = a3;
  *(v10 + 1) = a4;
  v11 = &v8[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaToken];
  *v11 = a5;
  *(v11 + 1) = a6;
  v12 = &v8[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaType];
  *v12 = a7;
  *(v12 + 1) = a8;
  v14.receiver = v8;
  v14.super_class = type metadata accessor for RegisterKeyPackageRequestMessage();
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_2652C2968()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in RegisterKeyPackageRequest.toIDSMessage(with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return closure #1 in RegisterKeyPackageRequest.toIDSMessage(with:)(a1, a2, a3, a4, v10);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double RegisterKeyPackageRequestMessage.requiredKeys.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v0 = swift_allocObject();
  *&result = 2;
  v2 = MEMORY[0x277D837D0];
  *(v0 + 16) = xmmword_265343880;
  *(v0 + 32) = 6910581;
  *(v0 + 40) = 0xE300000000000000;
  *(v0 + 88) = v2;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0x616B63615079656BLL;
  *(v0 + 72) = 0xEA00000000006567;
  return result;
}

unint64_t RegisterKeyPackageRequestMessage.messageBody.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265342D80;
  v2 = MEMORY[0x277D837D0];
  AnyHashable.init<A>(_:)();
  v4 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_telURI);
  v3 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_telURI + 8);
  *(inited + 96) = v2;
  *(inited + 72) = v4;
  *(inited + 80) = v3;

  AnyHashable.init<A>(_:)();
  v5 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_keyPackage);
  v6 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_keyPackage + 8);
  *(inited + 168) = MEMORY[0x277CC9318];
  *(inited + 144) = v5;
  *(inited + 152) = v6;
  outlined copy of Data._Representation(v5, v6);
  AnyHashable.init<A>(_:)();
  v8 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaToken);
  v7 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaToken + 8);
  *(inited + 240) = v2;
  *(inited + 216) = v8;
  *(inited + 224) = v7;

  AnyHashable.init<A>(_:)();
  v10 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaType);
  v9 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaType + 8);
  *(inited + 312) = v2;
  *(inited + 288) = v10;
  *(inited + 296) = v9;

  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  swift_arrayDestroy();
  return v11;
}

id RegisterKeyPackageRequestMessage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RegisterKeyPackageRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RegisterKeyPackageRequestMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2652C3020@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2652C307C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x88);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RegisterKeyPackageRequest(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for RegisterKeyPackageRequest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2652C3298()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t GroupMemberModel.init(clientIdentifier:groupID:uri:member:state:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 68) = a11 & 1;
  return result;
}

uint64_t GroupMemberModel.clientIdentifier.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t GroupMemberModel.groupID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GroupMemberModel.uri.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t GroupMemberModel.member.getter()
{
  v1 = *(v0 + 48);
  outlined copy of Data?(v1, *(v0 + 56));
  return v1;
}

void GroupMemberModel.insertStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  if (!*(v1 + 40) || (v2 = *(v1 + 56), v2 >> 60 == 15) || (*(v1 + 68) & 1) != 0)
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v3 = 5;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    swift_willThrow();
    return;
  }

  v5 = *(v1 + 48);
  LODWORD(v6) = *(v1 + 64);
  ppStmt[0] = 0;
  outlined copy of Data._Representation(v5, v2);
  v7 = strdup("INSERT OR REPLACE INTO Member_Table (client_id, group_id, uri, member, state) VALUES (?, ?, ?, ?, ?);");
  if (!v7)
  {
    goto LABEL_104;
  }

  v8 = sqlite3_prepare_v2(a1, v7, -1, ppStmt, 0);
  if (v8)
  {
LABEL_7:
    *&v57 = 0x726F7272456C7173;
    *(&v57 + 1) = 0xE90000000000003ALL;
LABEL_8:
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v9);

    v10 = v57;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v11 = 0;
    *(v11 + 8) = v10;
    swift_willThrow();
    outlined consume of Data?(v5, v2);
    return;
  }

  v12 = *v1;
  v13 = *(v1 + 8);
  v14 = v13 >> 62;
  if ((v13 >> 62) <= 1)
  {
    if (!v14)
    {
      *&v57 = *v1;
      DWORD2(v57) = v13;
      WORD6(v57) = WORD2(v13);
      v8 = ppStmt[0];
      LODWORD(v15) = BYTE6(v13);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_12:
        v16 = SQLITE_TRANSIENT;
        v17 = v15;
        goto LABEL_23;
      }

LABEL_90:
      v51 = v8;
      swift_once();
      v8 = v51;
      goto LABEL_12;
    }

    v56 = v6;
    v21 = v12;
    v22 = v12 >> 32;
    v6 = v22 - v21;
    if (v22 >= v21)
    {
      v23 = __DataStorage._bytes.getter();
      v54 = v5;
      if (!v23)
      {
        v5 = 0;
LABEL_38:
        v8 = MEMORY[0x2667557A0]();
        if (v8 >= v6)
        {
          v15 = v6;
        }

        else
        {
          v15 = v8;
        }

        if (v5)
        {
          LODWORD(v6) = v56;
          if (v15 < 0xFFFFFFFF80000000)
          {
            __break(1u);
            goto LABEL_90;
          }

          if (v15 <= 0x7FFFFFFF)
          {
            goto LABEL_46;
          }

          __break(1u);
        }

        LODWORD(v15) = 0;
        LODWORD(v6) = v56;
LABEL_46:
        v32 = ppStmt[0];
        if (one-time initialization token for SQLITE_TRANSIENT != -1)
        {
          swift_once();
        }

        v19 = v32;
        v16 = SQLITE_TRANSIENT;
        v29 = v5;
        v30 = v15;
        v31 = SQLITE_TRANSIENT;
LABEL_49:
        v5 = v54;
        if (sqlite3_bind_blob(v19, 1, v29, v30, v31))
        {
          goto LABEL_7;
        }

        goto LABEL_50;
      }

      v24 = v23;
      v25 = __DataStorage._offset.getter();
      if (!__OFSUB__(v21, v25))
      {
        v5 = v21 - v25 + v24;
        goto LABEL_38;
      }

LABEL_98:
      __break(1u);
    }

    __break(1u);
    goto LABEL_92;
  }

  if (v14 == 2)
  {
    v55 = v6;
    v6 = *(v12 + 16);
    v18 = *(v12 + 24);
    v19 = __DataStorage._bytes.getter();
    v54 = v5;
    if (v19)
    {
      a1 = v19;
      v19 = __DataStorage._offset.getter();
      if (__OFSUB__(v6, v19))
      {
        __break(1u);
        goto LABEL_98;
      }

      v20 = a1 + v6 - v19;
    }

    else
    {
      v20 = 0;
    }

    v26 = __OFSUB__(v18, v6);
    v27 = (v18 - v6);
    if (v26)
    {
      __break(1u);
    }

    else
    {
      v19 = MEMORY[0x2667557A0]();
      if (v19 >= v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = v19;
      }

      if (v20)
      {
        a1 = v28;
      }

      else
      {
        a1 = 0;
      }

      LODWORD(v6) = v55;
      if (a1 >= 0xFFFFFFFF80000000)
      {
        if (a1 <= 0x7FFFFFFF)
        {
          v19 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_36:
            v16 = SQLITE_TRANSIENT;
            v29 = v20;
            v30 = a1;
            v31 = SQLITE_TRANSIENT;
            goto LABEL_49;
          }

LABEL_96:
          v53 = v19;
          swift_once();
          v19 = v53;
          goto LABEL_36;
        }

LABEL_95:
        __break(1u);
        goto LABEL_96;
      }
    }

    __break(1u);
    goto LABEL_95;
  }

  *(&v57 + 6) = 0;
  *&v57 = 0;
  v8 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_92:
    v52 = v8;
    swift_once();
    v8 = v52;
  }

  v16 = SQLITE_TRANSIENT;
  v17 = 0;
LABEL_23:
  if (sqlite3_bind_blob(v8, 1, &v57, v17, v16))
  {
    goto LABEL_7;
  }

LABEL_50:
  v33 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  v34 = String.utf8CString.getter();
  v35 = sqlite3_bind_text(v33, 2, (v34 + 32), -1, v16);

  if (v35 || (v36 = ppStmt[0], v37 = String.utf8CString.getter(), LODWORD(v36) = sqlite3_bind_text(v36, 3, (v37 + 32), -1, v16), , v36))
  {
    *&v57 = 0x726F7272456C7173;
    *(&v57 + 1) = 0xE90000000000003ALL;
    goto LABEL_8;
  }

  v38 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v38 != 2)
    {
LABEL_82:
      *(&v57 + 6) = 0;
      *&v57 = 0;
      v40 = ppStmt[0];
      v41 = &v57;
      LODWORD(v39) = 0;
      goto LABEL_86;
    }

    v43 = *(v5 + 16);
    v42 = *(v5 + 24);
    v44 = __DataStorage._bytes.getter();
    if (v44)
    {
      v45 = __DataStorage._offset.getter();
      if (__OFSUB__(v43, v45))
      {
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      v44 += v43 - v45;
    }

    v26 = __OFSUB__(v42, v43);
    v46 = v42 - v43;
    if (v26)
    {
      goto LABEL_100;
    }

    v47 = MEMORY[0x2667557A0]();
    if (v47 >= v46)
    {
      v48 = v46;
    }

    else
    {
      v48 = v47;
    }

    if (v44)
    {
      v39 = v48;
    }

    else
    {
      v39 = 0;
    }

    if (v39 < 0xFFFFFFFF80000000)
    {
      goto LABEL_101;
    }

    if (v39 <= 0x7FFFFFFF)
    {
      goto LABEL_85;
    }

    __break(1u);
  }

  else if (!v38)
  {
    *&v57 = v5;
    WORD4(v57) = v2;
    BYTE10(v57) = BYTE2(v2);
    BYTE11(v57) = BYTE3(v2);
    BYTE12(v57) = BYTE4(v2);
    BYTE13(v57) = BYTE5(v2);
    LODWORD(v39) = BYTE6(v2);
    v40 = ppStmt[0];
    v41 = &v57;
    goto LABEL_86;
  }

  if (v5 >> 32 < v5)
  {
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v44 = __DataStorage._bytes.getter();
  if (!v44)
  {
    goto LABEL_76;
  }

  v49 = __DataStorage._offset.getter();
  if (__OFSUB__(v5, v49))
  {
    goto LABEL_103;
  }

  v44 += v5 - v49;
LABEL_76:
  v50 = MEMORY[0x2667557A0]();
  if (v50 >= (v5 >> 32) - v5)
  {
    v39 = (v5 >> 32) - v5;
  }

  else
  {
    v39 = v50;
  }

  if (!v44)
  {
    LODWORD(v39) = 0;
    goto LABEL_85;
  }

  if (v39 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_82;
  }

  if (v39 > 0x7FFFFFFF)
  {
LABEL_105:
    __break(1u);
    return;
  }

LABEL_85:
  v40 = ppStmt[0];
  v41 = v44;
LABEL_86:
  if (sqlite3_bind_blob(v40, 4, v41, v39, v16) || sqlite3_bind_int(ppStmt[0], 5, v6))
  {
    goto LABEL_7;
  }

  outlined consume of Data?(v5, v2);
}

void GroupMemberModel.updateStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  if (!*(v1 + 40) || (v2 = *(v1 + 56), v2 >> 60 == 15) || (*(v1 + 68) & 1) != 0)
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v3 = 5;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    swift_willThrow();
    return;
  }

  v5 = *(v1 + 32);
  v6 = *(v1 + 48);
  v7 = *(v1 + 64);
  ppStmt[0] = 0;
  outlined copy of Data._Representation(v6, v2);
  v8 = strdup("UPDATE Member_Table SET\n    member = ?, state = ?\nWHERE\n    client_id = ? AND group_id = ? AND uri = ?;");
  if (!v8)
  {
    goto LABEL_117;
  }

  v9 = sqlite3_prepare_v2(a1, v8, -1, ppStmt, 0);
  if (v9)
  {
LABEL_7:
    *&v70 = 0x726F7272456C7173;
    *(&v70 + 1) = 0xE90000000000003ALL;
LABEL_8:
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v10);

    v11 = v70;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v12 = 0;
    *(v12 + 8) = v11;
    swift_willThrow();
    outlined consume of Data?(v6, v2);
    return;
  }

  v13 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v13 != 2)
    {
      *(&v70 + 6) = 0;
      *&v70 = 0;
      v9 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_22:
        v15 = SQLITE_TRANSIENT;
        v16 = 0;
LABEL_23:
        if (sqlite3_bind_blob(v9, 1, &v70, v16, v15))
        {
          goto LABEL_7;
        }

LABEL_50:
        v30 = sqlite3_bind_int(ppStmt[0], 2, v7);
        if (v30)
        {
          goto LABEL_7;
        }

        v68 = v15;
        v32 = *v1;
        v33 = *(v1 + 8);
        v34 = v33 >> 62;
        if ((v33 >> 62) <= 1)
        {
          if (!v34)
          {
            *&v70 = *v1;
            DWORD2(v70) = v33;
            WORD6(v70) = WORD2(v33);
            v30 = ppStmt[0];
            v35 = BYTE6(v33);
            if (one-time initialization token for SQLITE_TRANSIENT != -1)
            {
              v61 = ppStmt[0];
              swift_once();
              v30 = v61;
            }

            v36 = &v70;
            v37 = v35;
            v31 = v68;
LABEL_78:
            if (sqlite3_bind_blob(v30, 3, v36, v37, v31))
            {
              goto LABEL_7;
            }

LABEL_79:
            v20 = ppStmt[0];
            if (one-time initialization token for SQLITE_TRANSIENT == -1)
            {
              goto LABEL_80;
            }

            goto LABEL_107;
          }

          v41 = v32;
          v42 = v32 >> 32;
          v43 = v42 - v41;
          if (v42 >= v41)
          {
            v44 = __DataStorage._bytes.getter();
            if (!v44)
            {
              v47 = 0;
              goto LABEL_84;
            }

            v45 = v44;
            v46 = __DataStorage._offset.getter();
            if (!__OFSUB__(v41, v46))
            {
              v47 = (v41 - v46 + v45);
LABEL_84:
              v54 = MEMORY[0x2667557A0]();
              if (v54 >= v43)
              {
                v55 = v43;
              }

              else
              {
                v55 = v54;
              }

              if (!v47)
              {
                goto LABEL_90;
              }

              v56 = v68;
              if (v55 < 0xFFFFFFFF80000000)
              {
                __break(1u);
LABEL_90:
                LODWORD(v55) = 0;
                v56 = v68;
                goto LABEL_92;
              }

              if (v55 <= 0x7FFFFFFF)
              {
LABEL_92:
                v57 = ppStmt[0];
                if (one-time initialization token for SQLITE_TRANSIENT != -1)
                {
                  v66 = ppStmt[0];
                  swift_once();
                  v57 = v66;
                  v56 = v68;
                }

                if (sqlite3_bind_blob(v57, 3, v47, v55, v56))
                {
                  goto LABEL_7;
                }

                goto LABEL_79;
              }

              goto LABEL_116;
            }

LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            return;
          }

          __break(1u);
          goto LABEL_109;
        }

        if (v34 != 2)
        {
          *(&v70 + 6) = 0;
          *&v70 = 0;
          v30 = ppStmt[0];
          v31 = v68;
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_65:
            v36 = &v70;
            v37 = 0;
            goto LABEL_78;
          }

LABEL_109:
          v62 = v30;
          v63 = v31;
          swift_once();
          v31 = v63;
          v30 = v62;
          goto LABEL_65;
        }

        v38 = *(v32 + 16);
        v67 = *(v32 + 24);
        v30 = __DataStorage._bytes.getter();
        if (v30)
        {
          v39 = v30;
          v30 = __DataStorage._offset.getter();
          if (__OFSUB__(v38, v30))
          {
            __break(1u);
            goto LABEL_115;
          }

          v40 = (v38 - v30 + v39);
        }

        else
        {
          v40 = 0;
        }

        v48 = v67 - v38;
        if (__OFSUB__(v67, v38))
        {
          __break(1u);
        }

        else
        {
          v30 = MEMORY[0x2667557A0]();
          if (v30 >= v48)
          {
            v49 = v67 - v38;
          }

          else
          {
            v49 = v30;
          }

          v36 = v40;
          if (v40)
          {
            v48 = v49;
          }

          else
          {
            v48 = 0;
          }

          if (v48 >= 0xFFFFFFFF80000000)
          {
            v31 = v68;
            if (v48 <= 0x7FFFFFFF)
            {
              v30 = ppStmt[0];
              if (one-time initialization token for SQLITE_TRANSIENT == -1)
              {
LABEL_77:
                v37 = v48;
                goto LABEL_78;
              }

LABEL_113:
              v64 = v30;
              v65 = v36;
              swift_once();
              v36 = v65;
              v30 = v64;
              v31 = v68;
              goto LABEL_77;
            }

LABEL_112:
            __break(1u);
            goto LABEL_113;
          }
        }

        __break(1u);
        goto LABEL_112;
      }

LABEL_100:
      v59 = v9;
      swift_once();
      v9 = v59;
      goto LABEL_22;
    }

    v69 = v1;
    v17 = *(v6 + 16);
    v18 = *(v6 + 24);
    v1 = v2 & 0x3FFFFFFFFFFFFFFFLL;
    v19 = __DataStorage._bytes.getter();
    LODWORD(v68) = v7;
    if (v19)
    {
      v20 = v19;
      v1 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      v19 = __DataStorage._offset.getter();
      if (__OFSUB__(v17, v19))
      {
        __break(1u);
        goto LABEL_106;
      }

      v21 = v20 + v17 - v19;
    }

    else
    {
      v21 = 0;
    }

    v25 = v18 - v17;
    if (__OFSUB__(v18, v17))
    {
      __break(1u);
    }

    else
    {
      v1 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      v19 = MEMORY[0x2667557A0]();
      if (v19 >= v25)
      {
        v26 = (v18 - v17);
      }

      else
      {
        v26 = v19;
      }

      if (v21)
      {
        v25 = v26;
      }

      else
      {
        v25 = 0;
      }

      if (v25 >= 0xFFFFFFFF80000000)
      {
        v1 = v69;
        if (v25 <= 0x7FFFFFFF)
        {
          v19 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_36:
            v15 = SQLITE_TRANSIENT;
            v27 = sqlite3_bind_blob(v19, 1, v21, v25, SQLITE_TRANSIENT);
            goto LABEL_49;
          }

LABEL_104:
          v60 = v19;
          swift_once();
          v19 = v60;
          goto LABEL_36;
        }

LABEL_103:
        __break(1u);
        goto LABEL_104;
      }
    }

    __break(1u);
    goto LABEL_103;
  }

  if (!v13)
  {
    *&v70 = v6;
    WORD4(v70) = v2;
    BYTE10(v70) = BYTE2(v2);
    BYTE11(v70) = BYTE3(v2);
    BYTE12(v70) = BYTE4(v2);
    BYTE13(v70) = BYTE5(v2);
    v9 = ppStmt[0];
    LODWORD(v14) = BYTE6(v2);
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_12:
      v15 = SQLITE_TRANSIENT;
      v16 = v14;
      goto LABEL_23;
    }

LABEL_98:
    v58 = v9;
    swift_once();
    v9 = v58;
    goto LABEL_12;
  }

  LODWORD(v68) = v7;
  v7 = v5;
  if (v6 >> 32 < v6)
  {
    __break(1u);
    goto LABEL_100;
  }

  v22 = __DataStorage._bytes.getter();
  if (!v22)
  {
    v24 = 0;
LABEL_38:
    v9 = MEMORY[0x2667557A0]();
    if (v9 >= (v6 >> 32) - v6)
    {
      v14 = (v6 >> 32) - v6;
    }

    else
    {
      v14 = v9;
    }

    if (v24)
    {
      if (v14 < 0xFFFFFFFF80000000)
      {
        __break(1u);
        goto LABEL_98;
      }

      if (v14 <= 0x7FFFFFFF)
      {
        goto LABEL_46;
      }

      __break(1u);
    }

    LODWORD(v14) = 0;
LABEL_46:
    v28 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT != -1)
    {
      swift_once();
    }

    v29 = v28;
    v15 = SQLITE_TRANSIENT;
    v27 = sqlite3_bind_blob(v29, 1, v24, v14, SQLITE_TRANSIENT);
LABEL_49:
    v7 = v68;
    if (v27)
    {
      goto LABEL_7;
    }

    goto LABEL_50;
  }

  v20 = v22;
  v23 = __DataStorage._offset.getter();
  if (!__OFSUB__(v6, v23))
  {
    v24 = v20 + v6 - v23;
    goto LABEL_38;
  }

LABEL_106:
  __break(1u);
LABEL_107:
  swift_once();
LABEL_80:
  v50 = (String.utf8CString.getter() + 32);
  v51 = sqlite3_bind_text(v20, 4, v50, -1, v68);

  if (v51 || (v52 = ppStmt[0], v53 = String.utf8CString.getter(), LODWORD(v52) = sqlite3_bind_text(v52, 5, (v53 + 32), -1, v68), , v52))
  {
    *&v70 = 0x726F7272456C7173;
    *(&v70 + 1) = 0xE90000000000003ALL;
    goto LABEL_8;
  }

  outlined consume of Data?(v6, v2);
}

sqlite3_stmt *GroupMemberModel.deleteStatement(_:)(uint64_t a1)
{
  v3 = v1;
  ppStmt[1] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for MLS.PersistedMember.MemberState();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt[0] = 0;
  if (*(v1 + 40) && (*(v1 + 68) & 1) == 0)
  {
    v17 = *(v1 + 32);
    v71 = v2;
    v72 = v17;
    v18 = *(v1 + 64);
    v19 = *(v6 + 104);
    v68 = *MEMORY[0x277D4CD30];
    v69 = v6 + 104;
    v67 = v19;
    v19(v9);
    MLS.PersistedMember.MemberState.rawValue.getter();
    v66 = *(v6 + 8);
    v66(v9, v5);
    v70 = v18;
    v20 = String.utf8CString.getter();
    v21 = strdup((v20 + 32));

    if (!v21)
    {
      goto LABEL_116;
    }

    v11 = sqlite3_prepare_v2(a1, v21, -1, ppStmt, 0);
    if (v11)
    {
      goto LABEL_87;
    }

    v22 = *v3;
    a1 = v3[1];
    v23 = a1 >> 62;
    if ((a1 >> 62) <= 1)
    {
      if (!v23)
      {
        *&v74 = *v3;
        DWORD2(v74) = a1;
        WORD6(v74) = WORD2(a1);
        v11 = ppStmt[0];
        LODWORD(a1) = BYTE6(a1);
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_15:
          v24 = SQLITE_TRANSIENT;
          v25 = &v74;
LABEL_85:
          v45 = a1;
LABEL_86:
          LODWORD(v11) = sqlite3_bind_blob(v11, 1, v25, v45, v24);
          if (v11)
          {
            goto LABEL_87;
          }

          a1 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
            goto LABEL_90;
          }

          goto LABEL_101;
        }

LABEL_105:
        v60 = v11;
        swift_once();
        v11 = v60;
        goto LABEL_15;
      }

      v39 = v22;
      v40 = v22 >> 32;
      v65 = (v40 - v39);
      if (v40 >= v39)
      {
        v41 = __DataStorage._bytes.getter();
        if (v41)
        {
          v42 = v41;
          v43 = __DataStorage._offset.getter();
          if (__OFSUB__(v39, v43))
          {
            goto LABEL_114;
          }

          v44 = (v39 - v43 + v42);
        }

        else
        {
          v44 = 0;
        }

        v11 = MEMORY[0x2667557A0]();
        if (v11 >= v65)
        {
          a1 = v65;
        }

        else
        {
          a1 = v11;
        }

        if (v44)
        {
          if (a1 < 0xFFFFFFFF80000000)
          {
LABEL_104:
            __break(1u);
            goto LABEL_105;
          }

          if (a1 <= 0x7FFFFFFF)
          {
LABEL_82:
            v11 = ppStmt[0];
            if (one-time initialization token for SQLITE_TRANSIENT != -1)
            {
              v63 = ppStmt[0];
              swift_once();
              v11 = v63;
            }

            v24 = SQLITE_TRANSIENT;
            v25 = v44;
            goto LABEL_85;
          }

          __break(1u);
        }

        LODWORD(a1) = 0;
        goto LABEL_82;
      }

      __break(1u);
      goto LABEL_107;
    }

    if (v23 != 2)
    {
      *(&v74 + 6) = 0;
      *&v74 = 0;
      v11 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_62:
        v24 = SQLITE_TRANSIENT;
        v25 = &v74;
        v45 = 0;
        goto LABEL_86;
      }

LABEL_107:
      v61 = v11;
      swift_once();
      v11 = v61;
      goto LABEL_62;
    }

    v34 = *(v22 + 16);
    v65 = *(v22 + 24);
    v11 = __DataStorage._bytes.getter();
    v35 = v11;
    if (v11)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v34, v11))
      {
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
      }

      v35 = (v35 + v34 - v11);
    }

    v36 = __OFSUB__(v65, v34);
    v37 = (v65 - v34);
    if (v36)
    {
      __break(1u);
    }

    else
    {
      v11 = MEMORY[0x2667557A0]();
      if (v11 >= v37)
      {
        v38 = v37;
      }

      else
      {
        v38 = v11;
      }

      if (v35)
      {
        a1 = v38;
      }

      else
      {
        a1 = 0;
      }

      if (a1 >= 0xFFFFFFFF80000000)
      {
        if (a1 <= 0x7FFFFFFF)
        {
          v11 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_56:
            v24 = SQLITE_TRANSIENT;
            v25 = v35;
            goto LABEL_85;
          }

LABEL_111:
          v62 = v11;
          swift_once();
          v11 = v62;
          goto LABEL_56;
        }

LABEL_110:
        __break(1u);
        goto LABEL_111;
      }
    }

    __break(1u);
    goto LABEL_110;
  }

  result = strdup("DELETE FROM Member_Table WHERE client_id = ? AND group_id = ?;");
  if (result)
  {
    v11 = sqlite3_prepare_v2(a1, result, -1, ppStmt, 0);
    if (v11)
    {
      goto LABEL_87;
    }

    v12 = *v1;
    v9 = *(v1 + 8);
    v13 = v9 >> 62;
    if ((v9 >> 62) <= 1)
    {
      if (!v13)
      {
        *&v74 = *v1;
        DWORD2(v74) = v9;
        WORD6(v74) = WORD2(v9);
        v11 = ppStmt[0];
        if (one-time initialization token for SQLITE_TRANSIENT != -1)
        {
          v58 = ppStmt[0];
          swift_once();
          v11 = v58;
        }

        v14 = SQLITE_TRANSIENT;
        v15 = &v74;
        v16 = BYTE6(v9);
        goto LABEL_68;
      }

      v30 = v12;
      v31 = v12 >> 32;
      v32 = v31 - v30;
      if (v31 < v30)
      {
        __break(1u);
        goto LABEL_97;
      }

      v5 = __DataStorage._bytes.getter();
      if (!v5)
      {
        goto LABEL_34;
      }

      v11 = __DataStorage._offset.getter();
      if (!__OFSUB__(v30, v11))
      {
        v5 += v30 - v11;
LABEL_34:
        v33 = MEMORY[0x2667557A0]();
        if (v33 >= v32)
        {
          v9 = v32;
        }

        else
        {
          v9 = v33;
        }

        if (!v5)
        {
          LODWORD(v9) = 0;
          goto LABEL_65;
        }

        if (v9 < 0xFFFFFFFF80000000)
        {
          __break(1u);
LABEL_40:
          *(&v74 + 6) = 0;
          *&v74 = 0;
          v11 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_41:
            v14 = SQLITE_TRANSIENT;
            v15 = &v74;
            v16 = 0;
            goto LABEL_68;
          }

LABEL_97:
          v59 = v11;
          swift_once();
          v11 = v59;
          goto LABEL_41;
        }

        if (v9 <= 0x7FFFFFFF)
        {
LABEL_65:
          v11 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT != -1)
          {
            v57 = ppStmt[0];
            swift_once();
            v11 = v57;
          }

          v14 = SQLITE_TRANSIENT;
          v15 = v5;
          v16 = v9;
LABEL_68:
          LODWORD(v11) = sqlite3_bind_blob(v11, 1, v15, v16, v14);
          if (!v11)
          {
            v46 = ppStmt[0];
            if (one-time initialization token for SQLITE_TRANSIENT != -1)
            {
              swift_once();
            }

            v47 = String.utf8CString.getter();
            v48 = sqlite3_bind_text(v46, 2, (v47 + 32), -1, v14);

            if (v48)
            {
LABEL_72:
              *&v74 = 0x726F7272456C7173;
              *(&v74 + 1) = 0xE90000000000003ALL;
              v73 = v48;
LABEL_88:
              v49 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x266756A70](v49);

              v50 = v74;
              lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
              swift_allocError();
              *v51 = 0;
              *(v51 + 8) = v50;
              return swift_willThrow();
            }

            return ppStmt[0];
          }

LABEL_87:
          *&v74 = 0x726F7272456C7173;
          *(&v74 + 1) = 0xE90000000000003ALL;
          v73 = v11;
          goto LABEL_88;
        }

        __break(1u);
        goto LABEL_113;
      }

      goto LABEL_103;
    }

    if (v13 != 2)
    {
      goto LABEL_40;
    }

    v26 = *(v12 + 16);
    v27 = *(v12 + 24);
    v24 = (v9 & 0x3FFFFFFFFFFFFFFFLL);
    v5 = __DataStorage._bytes.getter();
    if (v5)
    {
      v24 = (v9 & 0x3FFFFFFFFFFFFFFFLL);
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v26, v11))
      {
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v5 += v26 - v11;
    }

    if (__OFSUB__(v27, v26))
    {
      __break(1u);
    }

    else
    {
      v24 = (v9 & 0x3FFFFFFFFFFFFFFFLL);
      v28 = MEMORY[0x2667557A0]();
      if (v28 >= v27 - v26)
      {
        v29 = v27 - v26;
      }

      else
      {
        v29 = v28;
      }

      if (v5)
      {
        v9 = v29;
      }

      else
      {
        v9 = 0;
      }

      if (v9 >= 0xFFFFFFFF80000000)
      {
        if (v9 <= 0x7FFFFFFF)
        {
          goto LABEL_65;
        }

        goto LABEL_100;
      }
    }

    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    swift_once();
LABEL_90:
    v52 = String.utf8CString.getter();
    v53 = sqlite3_bind_text(a1, 2, (v52 + 32), -1, v24);

    if (v53)
    {
      *&v74 = 0x726F7272456C7173;
      *(&v74 + 1) = 0xE90000000000003ALL;
      v73 = v53;
      goto LABEL_88;
    }

    v54 = ppStmt[0];
    v55 = String.utf8CString.getter();
    v48 = sqlite3_bind_text(v54, 3, (v55 + 32), -1, v24);

    if (v48)
    {
      goto LABEL_72;
    }

    v67(v9, v68, v5);
    v56 = MLS.PersistedMember.MemberState.rawValue.getter();
    v66(v9, v5);
    if (v70 == v56)
    {
      return ppStmt[0];
    }

    LODWORD(v11) = sqlite3_bind_int(ppStmt[0], 4, v70);
    if (!v11)
    {
      return ppStmt[0];
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_116:
  __break(1u);
  return result;
}

uint64_t closure #1 in variable initialization expression of static GroupMemberModel.converter@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X8>)
{
  if (sqlite3_column_type(a1, 0) == 5)
  {
    goto LABEL_14;
  }

  v4 = sqlite3_column_blob(a1, 0);
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  v6 = sqlite3_column_bytes(a1, 0);
  v7 = specialized Data.init(bytes:count:)(v5, v6);
  v9 = v8;
  if (sqlite3_column_type(a1, 1) == 5 || !sqlite3_column_text(a1, 1))
  {
LABEL_13:
    outlined consume of Data._Representation(v7, v9);
LABEL_14:
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v21 = 3;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    return swift_willThrow();
  }

  v10 = String.init(cString:)();
  v12 = v11;
  if (sqlite3_column_type(a1, 2) == 5 || !sqlite3_column_text(a1, 2))
  {
LABEL_12:

    goto LABEL_13;
  }

  v13 = String.init(cString:)();
  v15 = v14;
  if (sqlite3_column_type(a1, 3) == 5 || (v24 = v13, (v16 = sqlite3_column_blob(a1, 3)) == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v17 = v16;
  v18 = sqlite3_column_bytes(a1, 3);
  v23 = specialized Data.init(bytes:count:)(v17, v18);
  v20 = v19;
  if (sqlite3_column_type(a1, 4) == 5)
  {
    outlined consume of Data._Representation(v23, v20);
    goto LABEL_11;
  }

  result = sqlite3_column_int(a1, 4);
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  *(a2 + 32) = v24;
  *(a2 + 40) = v15;
  *(a2 + 48) = v23;
  *(a2 + 56) = v20;
  *(a2 + 64) = result;
  *(a2 + 68) = 0;
  return result;
}

uint64_t (*static GroupMemberModel.converter.getter())()
{
  swift_beginAccess();
  v0 = static GroupMemberModel.converter;

  return v0;
}

uint64_t static GroupMemberModel.converter.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  static GroupMemberModel.converter = a1;
  qword_281EF8248 = a2;
}

uint64_t key path getter for static GroupMemberModel.converter : GroupMemberModel.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = static GroupMemberModel.converter;
  v2 = qword_281EF8248;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupMemberModel?, @error @owned Error)partial apply;
  a1[1] = v4;
}

uint64_t key path setter for static GroupMemberModel.converter : GroupMemberModel.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  static GroupMemberModel.converter = thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out GroupMemberModel?, @error @owned Error)partial apply;
  qword_281EF8248 = v3;
}

double (*protocol witness for static SqlSchema.converter.getter in conformance GroupMemberModel())@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v1 = static GroupMemberModel.converter;
  v0 = qword_281EF8248;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupMemberModel?, @error @owned Error)partial apply;
}

uint64_t *GroupMemberQuery.converter.unsafeMutableAddressor()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  return &static GroupMemberQuery.converter;
}

uint64_t (*static GroupMemberQuery.converter.modify(uint64_t a1))()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static StateMachineQuery.converter.modify;
}

uint64_t key path getter for static GroupMemberQuery.converter : GroupMemberQuery.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static GroupMemberQuery.converter;
  v2 = qword_280016878;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupMemberModel?, @error @owned Error)partial apply;
  a1[1] = v4;
}

uint64_t key path setter for static GroupMemberQuery.converter : GroupMemberQuery.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = one-time initialization token for converter;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static GroupMemberQuery.converter = thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out GroupMemberModel?, @error @owned Error)partial apply;
  qword_280016878 = v3;
}

sqlite3_stmt *GroupMemberQuery.queryStatement(_:)(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v8 = strdup("SELECT * FROM Member_Table WHERE client_id = ? AND group_id = ? AND (state = 0 OR state = 2) ;");
  if (!v8)
  {
LABEL_55:
    __break(1u);
  }

  v9 = sqlite3_prepare_v2(a1, v8, -1, ppStmt, 0);
  if (v9)
  {
LABEL_40:
    *&v32 = 0x726F7272456C7173;
    *(&v32 + 1) = 0xE90000000000003ALL;
LABEL_41:
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v22);

    v23 = v32;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v24 = 0;
    *(v24 + 8) = v23;
    return swift_willThrow();
  }

  v10 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_32;
    }

    v13 = *(a2 + 16);
    v14 = *(a2 + 24);
    v15 = __DataStorage._bytes.getter();
    if (v15)
    {
      v16 = __DataStorage._offset.getter();
      if (__OFSUB__(v13, v16))
      {
        goto LABEL_53;
      }

      v15 += v13 - v16;
    }

    v17 = __OFSUB__(v14, v13);
    v18 = v14 - v13;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      a2 = a3 & 0x3FFFFFFFFFFFFFFFLL;
      v9 = MEMORY[0x2667557A0]();
      if (v9 >= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v9;
      }

      if (v15)
      {
        a3 = v19;
      }

      else
      {
        a3 = 0;
      }

      if (a3 >= 0xFFFFFFFF80000000)
      {
        if (a3 <= 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v10)
  {
LABEL_21:
    if (a2 >> 32 < a2)
    {
      __break(1u);
      goto LABEL_50;
    }

    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
LABEL_25:
      v9 = MEMORY[0x2667557A0]();
      if (v9 >= (a2 >> 32) - a2)
      {
        a3 = (a2 >> 32) - a2;
      }

      else
      {
        a3 = v9;
      }

      if (v15)
      {
        if (a3 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_48;
        }

        if (a3 > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_32:
          *(&v32 + 6) = 0;
          *&v32 = 0;
          v9 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_33:
            v11 = SQLITE_TRANSIENT;
            v12 = &v32;
            v21 = 0;
            goto LABEL_39;
          }

LABEL_50:
          v31 = v9;
          swift_once();
          v9 = v31;
          goto LABEL_33;
        }
      }

      else
      {
        LODWORD(a3) = 0;
      }

LABEL_35:
      v9 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v29 = ppStmt[0];
        swift_once();
        v9 = v29;
      }

      v11 = SQLITE_TRANSIENT;
      v12 = v15;
      goto LABEL_38;
    }

    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(a2, v20))
    {
      v15 += a2 - v20;
      goto LABEL_25;
    }

    goto LABEL_54;
  }

  *&v32 = a2;
  WORD4(v32) = a3;
  BYTE10(v32) = BYTE2(a3);
  BYTE11(v32) = BYTE3(a3);
  BYTE12(v32) = BYTE4(a3);
  BYTE13(v32) = BYTE5(a3);
  v9 = ppStmt[0];
  LODWORD(a3) = BYTE6(a3);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_48:
    v30 = v9;
    swift_once();
    v9 = v30;
  }

  v11 = SQLITE_TRANSIENT;
  v12 = &v32;
LABEL_38:
  v21 = a3;
LABEL_39:
  if (sqlite3_bind_blob(v9, 1, v12, v21, v11))
  {
    goto LABEL_40;
  }

  v26 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  v27 = String.utf8CString.getter();
  v28 = sqlite3_bind_text(v26, 2, (v27 + 32), -1, v11);

  if (v28)
  {
    *&v32 = 0x726F7272456C7173;
    *(&v32 + 1) = 0xE90000000000003ALL;
    goto LABEL_41;
  }

  return ppStmt[0];
}

double (*protocol witness for static SqlQuery.converter.getter in conformance GroupMemberQuery())@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static GroupMemberQuery.converter;
  v0 = qword_280016878;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupMemberModel?, @error @owned Error)partial apply;
}

uint64_t *PendingGroupMemberQuery.converter.unsafeMutableAddressor()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  return &static PendingGroupMemberQuery.converter;
}

uint64_t (*static PendingGroupMemberQuery.converter.modify(uint64_t a1))()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static StateMachineQuery.converter.modify;
}

uint64_t key path getter for static PendingGroupMemberQuery.converter : PendingGroupMemberQuery.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static PendingGroupMemberQuery.converter;
  v2 = qword_280016888;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupMemberModel?, @error @owned Error);
  a1[1] = v4;
}

uint64_t key path setter for static PendingGroupMemberQuery.converter : PendingGroupMemberQuery.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = one-time initialization token for converter;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static PendingGroupMemberQuery.converter = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out GroupMemberModel?, @error @owned Error);
  qword_280016888 = v3;
}

sqlite3_stmt *PendingGroupMemberQuery.queryStatement(_:)(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v8 = strdup("SELECT * FROM Member_Table WHERE client_id = ? AND group_id = ? AND (state = 0 OR state = 1);");
  if (!v8)
  {
LABEL_55:
    __break(1u);
  }

  v9 = sqlite3_prepare_v2(a1, v8, -1, ppStmt, 0);
  if (v9)
  {
LABEL_40:
    *&v32 = 0x726F7272456C7173;
    *(&v32 + 1) = 0xE90000000000003ALL;
LABEL_41:
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v22);

    v23 = v32;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v24 = 0;
    *(v24 + 8) = v23;
    return swift_willThrow();
  }

  v10 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_32;
    }

    v13 = *(a2 + 16);
    v14 = *(a2 + 24);
    v15 = __DataStorage._bytes.getter();
    if (v15)
    {
      v16 = __DataStorage._offset.getter();
      if (__OFSUB__(v13, v16))
      {
        goto LABEL_53;
      }

      v15 += v13 - v16;
    }

    v17 = __OFSUB__(v14, v13);
    v18 = v14 - v13;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      a2 = a3 & 0x3FFFFFFFFFFFFFFFLL;
      v9 = MEMORY[0x2667557A0]();
      if (v9 >= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v9;
      }

      if (v15)
      {
        a3 = v19;
      }

      else
      {
        a3 = 0;
      }

      if (a3 >= 0xFFFFFFFF80000000)
      {
        if (a3 <= 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v10)
  {
LABEL_21:
    if (a2 >> 32 < a2)
    {
      __break(1u);
      goto LABEL_50;
    }

    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
LABEL_25:
      v9 = MEMORY[0x2667557A0]();
      if (v9 >= (a2 >> 32) - a2)
      {
        a3 = (a2 >> 32) - a2;
      }

      else
      {
        a3 = v9;
      }

      if (v15)
      {
        if (a3 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_48;
        }

        if (a3 > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_32:
          *(&v32 + 6) = 0;
          *&v32 = 0;
          v9 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_33:
            v11 = SQLITE_TRANSIENT;
            v12 = &v32;
            v21 = 0;
            goto LABEL_39;
          }

LABEL_50:
          v31 = v9;
          swift_once();
          v9 = v31;
          goto LABEL_33;
        }
      }

      else
      {
        LODWORD(a3) = 0;
      }

LABEL_35:
      v9 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v29 = ppStmt[0];
        swift_once();
        v9 = v29;
      }

      v11 = SQLITE_TRANSIENT;
      v12 = v15;
      goto LABEL_38;
    }

    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(a2, v20))
    {
      v15 += a2 - v20;
      goto LABEL_25;
    }

    goto LABEL_54;
  }

  *&v32 = a2;
  WORD4(v32) = a3;
  BYTE10(v32) = BYTE2(a3);
  BYTE11(v32) = BYTE3(a3);
  BYTE12(v32) = BYTE4(a3);
  BYTE13(v32) = BYTE5(a3);
  v9 = ppStmt[0];
  LODWORD(a3) = BYTE6(a3);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_48:
    v30 = v9;
    swift_once();
    v9 = v30;
  }

  v11 = SQLITE_TRANSIENT;
  v12 = &v32;
LABEL_38:
  v21 = a3;
LABEL_39:
  if (sqlite3_bind_blob(v9, 1, v12, v21, v11))
  {
    goto LABEL_40;
  }

  v26 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  v27 = String.utf8CString.getter();
  v28 = sqlite3_bind_text(v26, 2, (v27 + 32), -1, v11);

  if (v28)
  {
    *&v32 = 0x726F7272456C7173;
    *(&v32 + 1) = 0xE90000000000003ALL;
    goto LABEL_41;
  }

  return ppStmt[0];
}

double (*protocol witness for static SqlQuery.converter.getter in conformance PendingGroupMemberQuery())@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static PendingGroupMemberQuery.converter;
  v0 = qword_280016888;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupMemberModel?, @error @owned Error);
}

sqlite3_stmt *specialized static GroupMemberModel.createStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE TABLE IF NOT EXISTS Member_Table (\n    client_id BLOB NOT NULL,\n    group_id TEXT NOT NULL,\n    uri TEXT NOT NULL,\n    member BLOB NOT NULL,\n    state INTEGER,\n    PRIMARY KEY (uri, group_id, client_id)\n);");
  if (!v2)
  {
    __break(1u);
  }

  if (!sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    return ppStmt[0];
  }

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v3);

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0x726F7272456C7173;
  *(v4 + 16) = 0xE90000000000003ALL;
  return swift_willThrow();
}

uint64_t specialized static GroupMemberModel.createIndexStatements(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE INDEX IF NOT EXISTS Member_Table_State_Index ON Member_Table(uri, group_id, client_id, state);");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    return swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVSgGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVSgGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_2653419E0;
    *(result + 32) = ppStmt[0];
  }

  return result;
}

sqlite3_stmt *specialized static GroupMemberModel.dropStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("DROP TABLE IF EXISTS Member_Table");
  if (!v2)
  {
    __break(1u);
  }

  if (!sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    return ppStmt[0];
  }

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v3);

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0x726F7272456C7173;
  *(v4 + 16) = 0xE90000000000003ALL;
  return swift_willThrow();
}

__n128 __swift_memcpy69_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GroupMemberModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 69))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupMemberModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 69) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 69) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2652C67E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

__n128 partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out GroupMemberModel?, @error @owned Error)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v10 = a1;
  v5(v8, &v10);
  if (!v3)
  {
    v7 = *v9;
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v7;
    *(a2 + 61) = *&v9[13];
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

__n128 partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupMemberModel?, @error @owned Error)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  (*(v2 + 16))(v7, *a1);
  if (!v3)
  {
    v6 = *v8;
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v6;
    *(a2 + 61) = *&v8[13];
    result = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = result;
  }

  return result;
}

__n128 partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupMemberModel?, @error @owned Error)@<Q0>(uint64_t a1@<X8>)
{
  (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = *v7;
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 61) = *&v7[13];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t CommunicatorBroadcaster.__allocating_init(clientConnection:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t CommunicatorBroadcaster.send(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MLSActor();
  v4[6] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](CommunicatorBroadcaster.send(event:forGroup:), v6, v5);
}

uint64_t CommunicatorBroadcaster.send(event:forGroup:)()
{
  v1 = type metadata accessor for MLS.SendResult();
  v2 = type metadata accessor for MLS.SendError();
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  v5 = MEMORY[0x277D4CC50];
  _s15SecureMessaging8MLSActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MLS.SendResult and conformance MLS.SendResult, MEMORY[0x277D4CC50], MEMORY[0x277D4CC60]);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MLS.SendResult and conformance MLS.SendResult, v5, MEMORY[0x277D4CC58]);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError, MEMORY[0x277D4D250], MEMORY[0x277D4D248]);
  *v4 = v0;
  v4[1] = DelegateBroadcaster.fetchMember(uri:context:);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);

  return MEMORY[0x2821ACBF8](v7, v1, v2, partial apply for closure #1 in CommunicatorBroadcaster.send(event:forGroup:), v3, partial apply for closure #2 in CommunicatorBroadcaster.send(event:forGroup:), v6, v1);
}

void closure #1 in CommunicatorBroadcaster.send(event:forGroup:)(uint64_t *a3@<X8>)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  lazy protocol witness table accessor for type MLS.OutgoingEventType<MLS.AllMember, Data> and conformance MLS.OutgoingEventType<A, B>();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  if (!v3)
  {
    swift_allocObject();
    JSONEncoder.init()();
    type metadata accessor for MLS.Group();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group, MEMORY[0x277D4D1E0], MEMORY[0x277D4D1E8]);
    v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v10 = v9;

    *a3 = v5;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v10;
  }
}

void closure #2 in CommunicatorBroadcaster.send(event:forGroup:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = *(a4 + 16);
  outlined copy of Data._Representation(*a1, v7);
  outlined copy of Data._Representation(v8, v9);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12 = Data._bridgeToObjectiveC()().super.isa;
  v14[4] = a2;
  v14[5] = a3;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  v14[3] = &block_descriptor_6;
  v13 = _Block_copy(v14);

  [v10 sendWithEvent:isa forGroup:v12 completion:v13];
  _Block_release(v13);

  outlined consume of Data._Representation(v8, v9);
  outlined consume of Data._Representation(v6, v7);
}

uint64_t CommunicatorBroadcaster.__deallocating_deinit(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  swift_unknownObjectRelease(*(v8 + 16), a2, a3, a4, a5, a6, a7, a8);

  return MEMORY[0x2821FE8D8](v8, 24, 7);
}

uint64_t protocol witness for MLS.Communicator.send(event:forGroup:) in conformance CommunicatorBroadcaster(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 96) + **(*v3 + 96));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of CommunicatorBroadcaster.send(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 96) + **(*v3 + 96));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v10(a1, a2, a3);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventType<MLS.AllMember, Data> and conformance MLS.OutgoingEventType<A, B>()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventType<MLS.AllMember, Data> and conformance MLS.OutgoingEventType<A, B>;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventType<MLS.AllMember, Data> and conformance MLS.OutgoingEventType<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventType<MLS.AllMember, Data> and conformance MLS.OutgoingEventType<A, B>);
  }

  return result;
}

uint64_t _s15SecureMessaging8MLSActorCACScAAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t XPCServer.xpcDaemons.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore9XPCServer_xpcDaemons;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id XPCServer.init(xpcDaemons:deliveryDaemon:registrationDaemon:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v6 = type metadata accessor for LogCategory();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC24SecureMessagingAgentCore9XPCServer_listener;
  v12 = static XPCUtils.SecureMessagingAgentXPCName.getter();
  v14 = v13;
  v15 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v16 = MEMORY[0x266756A10](v12, v14);

  v17 = [v15 initWithMachServiceName_];

  *&v3[v11] = v17;
  (*(v7 + 104))(v10, *MEMORY[0x277D4C928], v6);
  secureMessagingLogger(category:)();
  (*(v7 + 8))(v10, v6);
  *&v3[OBJC_IVAR____TtC24SecureMessagingAgentCore9XPCServer_xpcDaemons] = a1;
  *&v3[OBJC_IVAR____TtC24SecureMessagingAgentCore9XPCServer_deliveryDaemon] = a2;
  *&v3[OBJC_IVAR____TtC24SecureMessagingAgentCore9XPCServer_registrationDaemon] = v21;
  v18 = type metadata accessor for XPCServer(0);
  v22.receiver = v3;
  v22.super_class = v18;
  return objc_msgSendSuper2(&v22, sel_init);
}

void closure #1 in XPCServer.listener(_:shouldAcceptNewConnection:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = *((*MEMORY[0x277D85000] & *v4) + 0x88);

      v7 = v6(v8);
      specialized Set._Variant.remove(_:)(v5);

      v7(v8, 0);
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t XPCDaemon.__allocating_init(interfaceProvider:clientConnection:featureFlagStore:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = specialized XPCDaemon.__allocating_init(interfaceProvider:clientConnection:featureFlagStore:)(v9, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

Swift::Void __swiftcall XPCServer.setupXPCListener()()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26524C000, v2, v3, "XPCServer -- setting up XPC listener", v4, 2u);
    MEMORY[0x2667577B0](v4, -1, -1);
  }

  v5 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore9XPCServer_listener);
  [v5 setDelegate_];
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26524C000, v6, v7, "Listener start", v8, 2u);
    MEMORY[0x2667577B0](v8, -1, -1);
  }

  [v5 resume];
  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26524C000, oslog, v9, "Listener done", v10, 2u);
    MEMORY[0x2667577B0](v10, -1, -1);
  }
}

id XPCServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCServer(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t XPCServer.logger.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t XPCDaemon.init(interfaceProvider:clientConnection:featureFlagStore:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  MEMORY[0x28223BE20](v9, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = specialized XPCDaemon.init(interfaceProvider:clientConnection:featureFlagStore:)(v11, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v13;
}

Swift::Void __swiftcall XPCDaemon.setupXPCConnection()()
{
  v1 = *(v0 + 56);
  v2 = MEMORY[0x266756730]();
  [v1 setExportedInterface_];

  [v1 setExportedObject_];

  [v1 resume];
}

void XPCDaemon.deliveryInterface(completion:)(void (*a1)(_TtC24SecureMessagingAgentCore21KDSRegistrationDaemon *, uint64_t, unint64_t))
{
  v2 = v1;
  v4 = type metadata accessor for XPCUtils.XPCClientCreationError.ErrorType();
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for XPCUtils.XPCClientCreationError();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SMAFeatureFlagsKey();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, *MEMORY[0x277D4CC38], v12);
  v17 = SMAFeatureFlagsStore.isEnabled(feature:)();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    goto LABEL_4;
  }

  v18 = v2[7];
  v19 = static XPCUtils.SecureMessagingAgentDeliveryEntitlement.getter();
  v20 = MEMORY[0x266756A10](v19);

  v21 = [v18 valueForEntitlement_];

  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease(v21, v22, v23, v24, v25, v26, v27, v28);
    outlined destroy of Any?(v53);
LABEL_4:
    v29 = v2[5];
    v30 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v29);
    v31 = (*(v30 + 8))(v29, v30);
    a1(v31, 0, 0xF000000000000000);
    swift_unknownObjectRelease(v31, v32, v33, v34, v35, v36, v37, v38);
    return;
  }

  memset(v53, 0, sizeof(v53));
  outlined destroy of Any?(v53);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  (*(v50 + 104))(v7, *MEMORY[0x277D4D298], v4);
  XPCUtils.XPCClientCreationError.init(type:underlyingErrorDescription:)();
  lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError(&lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError, MEMORY[0x277D4D2A0], MEMORY[0x277D4D2A8]);
  v39 = v52;
  v40 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v42 = v41;
  (*(v51 + 8))(v11, v39);

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v53[0] = v46;
    *v45 = 136315138;
    v47 = static XPCUtils.SecureMessagingAgentDeliveryEntitlement.getter();
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v53);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_26524C000, v43, v44, "Client missing required entitlement { %s }", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x2667577B0](v46, -1, -1);
    MEMORY[0x2667577B0](v45, -1, -1);
  }

  a1(0, v40, v42);
  outlined consume of Data?(v40, v42);
}

void XPCDaemon.registrationInterface(completion:)(void (*a1)(_TtC24SecureMessagingAgentCore21KDSRegistrationDaemon *, uint64_t, unint64_t))
{
  v2 = v1;
  v4 = type metadata accessor for XPCUtils.XPCClientCreationError.ErrorType();
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for XPCUtils.XPCClientCreationError();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SMAFeatureFlagsKey();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, *MEMORY[0x277D4CC38], v12);
  v17 = SMAFeatureFlagsStore.isEnabled(feature:)();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    goto LABEL_4;
  }

  v18 = v2[7];
  v19 = static XPCUtils.SecureMessagingAgentRegistrationEntitlement.getter();
  v20 = MEMORY[0x266756A10](v19);

  v21 = [v18 valueForEntitlement_];

  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease(v21, v22, v23, v24, v25, v26, v27, v28);
    outlined destroy of Any?(v53);
LABEL_4:
    v29 = v2[5];
    v30 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v29);
    v31 = (*(v30 + 16))(v29, v30);
    a1(v31, 0, 0xF000000000000000);
    swift_unknownObjectRelease(v31, v32, v33, v34, v35, v36, v37, v38);
    return;
  }

  memset(v53, 0, sizeof(v53));
  outlined destroy of Any?(v53);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  (*(v50 + 104))(v7, *MEMORY[0x277D4D298], v4);
  XPCUtils.XPCClientCreationError.init(type:underlyingErrorDescription:)();
  lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError(&lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError, MEMORY[0x277D4D2A0], MEMORY[0x277D4D2A8]);
  v39 = v52;
  v40 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v42 = v41;
  (*(v51 + 8))(v11, v39);

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v53[0] = v46;
    *v45 = 136315138;
    v47 = static XPCUtils.SecureMessagingAgentRegistrationEntitlement.getter();
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v53);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_26524C000, v43, v44, "Client missing required entitlement { %s }", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x2667577B0](v46, -1, -1);
    MEMORY[0x2667577B0](v45, -1, -1);
  }

  a1(0, v40, v42);
  outlined consume of Data?(v40, v42);
}

uint64_t @objc XPCDaemon.deliveryInterface(completion:)(uint64_t a1, int a2, void *aBlock, void (*a4)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  a4(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

uint64_t XPCDaemon.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore9XPCDaemon_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore9XPCDaemon_featureFlagStore;
  v4 = type metadata accessor for SMAFeatureFlagsStore();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t XPCDaemon.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore9XPCDaemon_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore9XPCDaemon_featureFlagStore;
  v4 = type metadata accessor for SMAFeatureFlagsStore();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

Swift::Int XPCDaemon.hashValue.getter()
{
  Hasher.init(_seed:)();
  (*(*v0 + 144))(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCDaemon(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(**v1 + 144))(v3);
  return Hasher._finalize()();
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x266756F40](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v96 = *MEMORY[0x277D85DE8];
  v6 = *v3;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_141:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *__s1 = *v82;
    outlined copy of Data._Representation(a2, a3);
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v82 = *__s1;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = a3 >> 62;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v88 = v14;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v85 = v15;
  v84 = v6;
  v80 = (a2 >> 32) - a2;
  v81 = a2 >> 32;
  v86 = v6 + 56;
  v87 = v11;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || a3 >> 62 != 3;
      if (((v22 | v88) & 1) == 0)
      {
        v75 = 0;
        v76 = 0xC000000000000000;
LABEL_142:
        outlined consume of Data._Representation(v75, v76);
LABEL_143:
        v77 = *(*(v6 + 48) + 16 * v10);
        *a1 = v77;
        outlined copy of Data._Representation(v77, *(&v77 + 1));
        return 0;
      }

LABEL_36:
      v23 = 0;
      if (v12 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_147;
      }

      if (v12 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_146;
      }

      v23 = v23;
      if (v12 <= 1)
      {
LABEL_33:
        v27 = BYTE6(a3);
        if (v12)
        {
          v27 = HIDWORD(a2) - a2;
          if (v85)
          {
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v12 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v12 != 2)
    {
      if (!v23)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_145;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_140;
    }

    if (v19 > 1)
    {
      break;
    }

    if (v19)
    {
      if (v18 > v18 >> 32)
      {
        goto LABEL_148;
      }

      outlined copy of Data._Representation(v18, v17);
      v40 = __DataStorage._bytes.getter();
      if (v40)
      {
        v41 = v40;
        v42 = __DataStorage._offset.getter();
        if (__OFSUB__(v18, v42))
        {
          goto LABEL_150;
        }

        v39 = (v18 - v42 + v41);
      }

      else
      {
        v39 = 0;
      }

      MEMORY[0x2667557A0]();
      v11 = v87;
      if (v12 == 2)
      {
        v67 = *(a2 + 16);
        v79 = *(a2 + 24);
        v49 = __DataStorage._bytes.getter();
        if (v49)
        {
          v68 = __DataStorage._offset.getter();
          if (__OFSUB__(v67, v68))
          {
            goto LABEL_164;
          }

          v49 += v67 - v68;
        }

        v26 = __OFSUB__(v79, v67);
        v69 = v79 - v67;
        if (v26)
        {
          goto LABEL_160;
        }

        result = MEMORY[0x2667557A0]();
        if (result >= v69)
        {
          v52 = v69;
        }

        else
        {
          v52 = result;
        }

        if (!v39)
        {
          goto LABEL_176;
        }

        v8 = v86;
        v11 = v87;
        if (!v49)
        {
          goto LABEL_175;
        }
      }

      else
      {
        if (v12 != 1)
        {
          v8 = v86;
          *__s1 = a2;
          *&__s1[8] = a3;
          __s1[10] = BYTE2(a3);
          __s1[11] = BYTE3(a3);
          __s1[12] = BYTE4(a3);
          __s1[13] = BYTE5(a3);
          if (!v39)
          {
            goto LABEL_171;
          }

          goto LABEL_138;
        }

        if (v81 < a2)
        {
          goto LABEL_159;
        }

        v49 = __DataStorage._bytes.getter();
        if (v49)
        {
          v53 = __DataStorage._offset.getter();
          if (__OFSUB__(a2, v53))
          {
            goto LABEL_166;
          }

          v49 += a2 - v53;
        }

        result = MEMORY[0x2667557A0]();
        v52 = (a2 >> 32) - a2;
        if (result < v80)
        {
          v52 = result;
        }

        if (!v39)
        {
          goto LABEL_180;
        }

        v8 = v86;
        if (!v49)
        {
          goto LABEL_179;
        }
      }

      goto LABEL_135;
    }

    *__s1 = v18;
    *&__s1[8] = v17;
    __s1[10] = BYTE2(v17);
    __s1[11] = BYTE3(v17);
    __s1[12] = BYTE4(v17);
    __s1[13] = BYTE5(v17);
    if (!v12)
    {
      goto LABEL_69;
    }

    if (v12 == 1)
    {
      if (v81 < a2)
      {
        goto LABEL_152;
      }

      outlined copy of Data._Representation(v18, v17);
      v30 = __DataStorage._bytes.getter();
      if (!v30)
      {
        goto LABEL_174;
      }

      v31 = v30;
      v32 = __DataStorage._offset.getter();
      if (__OFSUB__(a2, v32))
      {
        goto LABEL_156;
      }

      v33 = (a2 - v32 + v31);
      v34 = MEMORY[0x2667557A0]();
      if (!v33)
      {
        goto LABEL_172;
      }

      goto LABEL_109;
    }

    v55 = *(a2 + 16);
    v54 = *(a2 + 24);
    outlined copy of Data._Representation(v18, v17);
    v45 = __DataStorage._bytes.getter();
    if (v45)
    {
      v56 = __DataStorage._offset.getter();
      if (__OFSUB__(v55, v56))
      {
        goto LABEL_161;
      }

      v45 += v55 - v56;
    }

    v26 = __OFSUB__(v54, v55);
    v47 = v54 - v55;
    if (v26)
    {
      goto LABEL_153;
    }

    v48 = MEMORY[0x2667557A0]();
    v6 = v84;
    if (!v45)
    {
      goto LABEL_170;
    }

LABEL_100:
    if (v48 >= v47)
    {
      v57 = v47;
    }

    else
    {
      v57 = v48;
    }

    v58 = memcmp(__s1, v45, v57);
    outlined consume of Data._Representation(v18, v17);
    v8 = v86;
    v11 = v87;
    if (!v58)
    {
LABEL_140:
      v75 = a2;
      v76 = a3;
      goto LABEL_142;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  if (v19 == 2)
  {
    v35 = *(v18 + 16);
    outlined copy of Data._Representation(v18, v17);
    v36 = __DataStorage._bytes.getter();
    if (v36)
    {
      v37 = v36;
      v38 = __DataStorage._offset.getter();
      if (__OFSUB__(v35, v38))
      {
        goto LABEL_149;
      }

      v39 = (v35 - v38 + v37);
    }

    else
    {
      v39 = 0;
    }

    MEMORY[0x2667557A0]();
    v11 = v87;
    if (v12 != 2)
    {
      if (v12 == 1)
      {
        if (v81 < a2)
        {
          goto LABEL_155;
        }

        v49 = __DataStorage._bytes.getter();
        if (v49)
        {
          v50 = __DataStorage._offset.getter();
          if (__OFSUB__(a2, v50))
          {
            goto LABEL_165;
          }

          v49 += a2 - v50;
        }

        result = MEMORY[0x2667557A0]();
        v52 = (a2 >> 32) - a2;
        if (result < v80)
        {
          v52 = result;
        }

        if (!v39)
        {
          goto LABEL_178;
        }

        v8 = v86;
        if (!v49)
        {
          goto LABEL_177;
        }

        goto LABEL_135;
      }

      v8 = v86;
      *__s1 = a2;
      *&__s1[8] = a3;
      __s1[10] = BYTE2(a3);
      __s1[11] = BYTE3(a3);
      __s1[12] = BYTE4(a3);
      __s1[13] = BYTE5(a3);
      if (!v39)
      {
        goto LABEL_169;
      }

LABEL_138:
      v72 = __s1;
      v71 = v39;
      v70 = BYTE6(a3);
LABEL_139:
      v73 = memcmp(v71, v72, v70);
      outlined consume of Data._Representation(v18, v17);
      v6 = v84;
      if (!v73)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v64 = *(a2 + 16);
    v78 = *(a2 + 24);
    v49 = __DataStorage._bytes.getter();
    if (v49)
    {
      v65 = __DataStorage._offset.getter();
      if (__OFSUB__(v64, v65))
      {
        goto LABEL_163;
      }

      v49 += v64 - v65;
    }

    v26 = __OFSUB__(v78, v64);
    v66 = v78 - v64;
    if (v26)
    {
      goto LABEL_158;
    }

    result = MEMORY[0x2667557A0]();
    if (result >= v66)
    {
      v52 = v66;
    }

    else
    {
      v52 = result;
    }

    if (!v39)
    {
      goto LABEL_182;
    }

    v8 = v86;
    v11 = v87;
    if (!v49)
    {
      goto LABEL_181;
    }

LABEL_135:
    if (v39 == v49)
    {
      outlined consume of Data._Representation(v18, v17);
      outlined consume of Data._Representation(a2, a3);
      v6 = v84;
      goto LABEL_143;
    }

    v70 = v52;
    v71 = v39;
    v72 = v49;
    goto LABEL_139;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v12)
  {
LABEL_69:
    __s2 = a2;
    v90 = a3;
    v91 = BYTE2(a3);
    v92 = BYTE3(a3);
    v93 = BYTE4(a3);
    v94 = BYTE5(a3);
    if (!memcmp(__s1, &__s2, BYTE6(a3)))
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  if (v12 == 2)
  {
    v44 = *(a2 + 16);
    v43 = *(a2 + 24);
    outlined copy of Data._Representation(v18, v17);
    v45 = __DataStorage._bytes.getter();
    if (v45)
    {
      v46 = __DataStorage._offset.getter();
      if (__OFSUB__(v44, v46))
      {
        goto LABEL_162;
      }

      v45 += v44 - v46;
    }

    v26 = __OFSUB__(v43, v44);
    v47 = v43 - v44;
    if (v26)
    {
      goto LABEL_154;
    }

    v48 = MEMORY[0x2667557A0]();
    v6 = v84;
    if (!v45)
    {
      goto LABEL_173;
    }

    goto LABEL_100;
  }

  if (v81 < a2)
  {
    goto LABEL_151;
  }

  outlined copy of Data._Representation(v18, v17);
  v59 = __DataStorage._bytes.getter();
  if (v59)
  {
    v60 = v59;
    v61 = __DataStorage._offset.getter();
    if (__OFSUB__(a2, v61))
    {
      goto LABEL_157;
    }

    v33 = (a2 - v61 + v60);
    v34 = MEMORY[0x2667557A0]();
    if (!v33)
    {
      goto LABEL_168;
    }

LABEL_109:
    if (v34 >= v80)
    {
      v62 = (a2 >> 32) - a2;
    }

    else
    {
      v62 = v34;
    }

    v63 = memcmp(__s1, v33, v62);
    outlined consume of Data._Representation(v18, v17);
    v8 = v86;
    if (!v63)
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  MEMORY[0x2667557A0]();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  result = MEMORY[0x2667557A0]();
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = (v6 & 0xFFFFFFFFFFFFFF8);
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      v25[9] = v8;
      type metadata accessor for XPCDaemon(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v25[0];
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v22 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC24SecureMessagingAgentCore9XPCDaemonC_Tt1g5(v7, result + 1, v16, v17, v18, v19, v20, v21);
    v25[0] = v22;
    v23 = *(v22 + 16);
    if (*(v22 + 24) <= v23)
    {
      specialized _NativeSet.resize(capacity:)(v23 + 1);
      v22 = v25[0];
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v24, v22);

    *v3 = v22;
    goto LABEL_16;
  }

  Hasher.init(_seed:)();
  (*(*a2 + 144))(v25);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25[0] = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v25[0];
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (([*(*(*(v6 + 48) + 8 * v12) + 56) isEqual_] & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  (*(*a1 + 144))(v5);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC24SecureMessagingAgentCore9XPCDaemonC_Tt1g5(_TtC24SecureMessagingAgentCore21KDSRegistrationDaemon *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy24SecureMessagingAgentCore9XPCDaemonCGMd, &_ss11_SetStorageCy24SecureMessagingAgentCore9XPCDaemonCGMR);
    v8 = static _SetStorage.convert(_:capacity:)();
    v25 = v8;
    __CocoaSet.makeIterator()();
    v9 = __CocoaSet.Iterator.next()();
    if (v9)
    {
      v10 = v9;
      type metadata accessor for XPCDaemon(0);
      v11 = v10;
      do
      {
        v24[0] = v11;
        swift_dynamicCast();
        v19 = *(v8 + 16);
        if (*(v8 + 24) <= v19)
        {
          specialized _NativeSet.resize(capacity:)(v19 + 1);
        }

        v12 = v24[9];
        v8 = v25;
        Hasher.init(_seed:)();
        (*(*v12 + 144))(v24);
        result = Hasher._finalize()();
        v14 = v8 + 56;
        v15 = -1 << *(v8 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v8 + 56 + 8 * (v16 >> 6))) != 0)
        {
          v18 = __clz(__rbit64((-1 << v16) & ~*(v8 + 56 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = 0;
          v21 = (63 - v15) >> 6;
          do
          {
            if (++v17 == v21 && (v20 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v22 = v17 == v21;
            if (v17 == v21)
            {
              v17 = 0;
            }

            v20 |= v22;
            v23 = *(v14 + 8 * v17);
          }

          while (v23 == -1);
          v18 = __clz(__rbit64(~v23)) + (v17 << 6);
        }

        *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v8 + 48) + 8 * v18) = v12;
        ++*(v8 + 16);
        v11 = __CocoaSet.Iterator.next()();
      }

      while (v11);
    }
  }

  else
  {
    swift_unknownObjectRelease(a1, 0, a3, a4, a5, a6, a7, a8);
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = MEMORY[0x266756F40](*(v5 + 40), v17);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4DataVGMd, &_ss11_SetStorageCy10Foundation4DataVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy24SecureMessagingAgentCore9XPCDaemonCGMd, &_ss11_SetStorageCy24SecureMessagingAgentCore9XPCDaemonCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      (*(*v17 + 144))(v26);
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x266756F40](*(*v3 + 40), v4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  v92 = *MEMORY[0x277D85DE8];
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_143;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      specialized _NativeSet.copy()();
      goto LABEL_143;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  a3 = v11 & ~v13;
  if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
LABEL_143:
    v71 = *v80;
    *(*v80 + 8 * (a3 >> 6) + 56) |= 1 << a3;
    v72 = (*(v71 + 48) + 16 * a3);
    *v72 = a1;
    v72[1] = a2;
    v73 = *(v71 + 16);
    v30 = __OFADD__(v73, 1);
    v74 = v73 + 1;
    if (!v30)
    {
      *(v71 + 16) = v74;
      return;
    }

LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
  }

  v14 = ~v13;
  v15 = a2 >> 62;
  if (a1)
  {
    v16 = 0;
  }

  else
  {
    v16 = a2 == 0xC000000000000000;
  }

  v17 = !v16;
  v84 = v17;
  v79 = v10;
  v18 = __OFSUB__(HIDWORD(a1), a1);
  v81 = v18;
  v77 = (a1 >> 32) - a1;
  v78 = a1 >> 32;
  v82 = v14;
  v83 = v10 + 56;
  while (1)
  {
    v19 = (*(v10 + 48) + 16 * a3);
    v21 = *v19;
    v20 = v19[1];
    v22 = v20 >> 62;
    if (v20 >> 62 == 3)
    {
      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || a2 >> 62 != 3;
      if (((v25 | v84) & 1) == 0)
      {
        goto LABEL_185;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }

    if (v22 > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_32;
      }

      v37 = *(v21 + 16);
      v36 = *(v21 + 24);
      v30 = __OFSUB__(v36, v37);
      v26 = v36 - v37;
      if (v30)
      {
        goto LABEL_147;
      }
    }

    else if (v22)
    {
      LODWORD(v26) = HIDWORD(v21) - v21;
      if (__OFSUB__(HIDWORD(v21), v21))
      {
        goto LABEL_148;
      }

      v26 = v26;
    }

    else
    {
      v26 = BYTE6(v20);
    }

LABEL_33:
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        if (!v26)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v29 = *(a1 + 16);
      v28 = *(a1 + 24);
      v30 = __OFSUB__(v28, v29);
      v27 = v28 - v29;
      if (v30)
      {
        goto LABEL_145;
      }
    }

    else
    {
      v27 = BYTE6(a2);
      if (v15)
      {
        v27 = HIDWORD(a1) - a1;
        if (v81)
        {
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }
      }
    }

    if (v26 == v27)
    {
      break;
    }

LABEL_20:
    a3 = (a3 + 1) & v14;
    if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_143;
    }
  }

  if (v26 < 1)
  {
    goto LABEL_185;
  }

  if (v22 <= 1)
  {
    if (!v22)
    {
      *__s1 = v21;
      *&__s1[8] = v20;
      __s1[10] = BYTE2(v20);
      __s1[11] = BYTE3(v20);
      __s1[12] = BYTE4(v20);
      __s1[13] = BYTE5(v20);
      if (!v15)
      {
        goto LABEL_97;
      }

      if (v15 == 1)
      {
        if (v78 < a1)
        {
          goto LABEL_152;
        }

        outlined copy of Data._Representation(v21, v20);
        v31 = __DataStorage._bytes.getter();
        if (!v31)
        {
          goto LABEL_175;
        }

        v32 = v31;
        v33 = __DataStorage._offset.getter();
        if (__OFSUB__(a1, v33))
        {
          goto LABEL_158;
        }

        v34 = a1 - v33 + v32;
        v35 = MEMORY[0x2667557A0]();
        if (!v34)
        {
          goto LABEL_174;
        }

LABEL_111:
        if (v35 >= v77)
        {
          v56 = (a1 >> 32) - a1;
        }

        else
        {
          v56 = v35;
        }

LABEL_114:
        v60 = __s1;
        v61 = v34;
LABEL_140:
        v70 = memcmp(v60, v61, v56);
        outlined consume of Data._Representation(v21, v20);
LABEL_141:
        v14 = v82;
        v12 = v83;
        if (!v70)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v54 = *(a1 + 16);
      v53 = *(a1 + 24);
      outlined copy of Data._Representation(v21, v20);
      v34 = __DataStorage._bytes.getter();
      if (v34)
      {
        v55 = __DataStorage._offset.getter();
        if (__OFSUB__(v54, v55))
        {
          goto LABEL_162;
        }

        v34 += v54 - v55;
      }

      v30 = __OFSUB__(v53, v54);
      v51 = v53 - v54;
      if (v30)
      {
        goto LABEL_156;
      }

      v52 = MEMORY[0x2667557A0]();
      v10 = v79;
      if (!v34)
      {
        goto LABEL_172;
      }

LABEL_104:
      if (v52 >= v51)
      {
        v56 = v51;
      }

      else
      {
        v56 = v52;
      }

      goto LABEL_114;
    }

    if (v21 > v21 >> 32)
    {
      goto LABEL_149;
    }

    outlined copy of Data._Representation(v21, v20);
    v39 = __DataStorage._bytes.getter();
    if (v39)
    {
      v45 = __DataStorage._offset.getter();
      if (__OFSUB__(v21, v45))
      {
        goto LABEL_151;
      }

      v39 += v21 - v45;
    }

    MEMORY[0x2667557A0]();
    if (v15 == 2)
    {
      v66 = *(a1 + 16);
      v76 = *(a1 + 24);
      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v67 = __DataStorage._offset.getter();
        if (__OFSUB__(v66, v67))
        {
          goto LABEL_166;
        }

        v41 += v66 - v67;
      }

      v30 = __OFSUB__(v76, v66);
      v68 = v76 - v66;
      if (v30)
      {
        goto LABEL_161;
      }

      v69 = MEMORY[0x2667557A0]();
      if (v69 >= v68)
      {
        v44 = v68;
      }

      else
      {
        v44 = v69;
      }

      if (!v39)
      {
        goto LABEL_177;
      }

      if (!v41)
      {
        goto LABEL_176;
      }

      goto LABEL_136;
    }

    if (v15 == 1)
    {
      if (v78 < a1)
      {
        goto LABEL_160;
      }

      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v46 = __DataStorage._offset.getter();
        if (__OFSUB__(a1, v46))
        {
          goto LABEL_167;
        }

        v41 += a1 - v46;
      }

      v47 = MEMORY[0x2667557A0]();
      v44 = (a1 >> 32) - a1;
      if (v47 < v77)
      {
        v44 = v47;
      }

      if (!v39)
      {
        goto LABEL_181;
      }

      if (!v41)
      {
        goto LABEL_180;
      }

      goto LABEL_136;
    }

    *__s1 = a1;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v39)
    {
      goto LABEL_173;
    }

    goto LABEL_139;
  }

  if (v22 == 2)
  {
    v38 = *(v21 + 16);
    outlined copy of Data._Representation(v21, v20);
    v39 = __DataStorage._bytes.getter();
    if (v39)
    {
      v40 = __DataStorage._offset.getter();
      if (__OFSUB__(v38, v40))
      {
        goto LABEL_150;
      }

      v39 += v38 - v40;
    }

    MEMORY[0x2667557A0]();
    if (v15 == 2)
    {
      v62 = *(a1 + 16);
      v75 = *(a1 + 24);
      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v63 = __DataStorage._offset.getter();
        if (__OFSUB__(v62, v63))
        {
          goto LABEL_164;
        }

        v41 += v62 - v63;
      }

      v30 = __OFSUB__(v75, v62);
      v64 = v75 - v62;
      if (v30)
      {
        goto LABEL_159;
      }

      v65 = MEMORY[0x2667557A0]();
      if (v65 >= v64)
      {
        v44 = v64;
      }

      else
      {
        v44 = v65;
      }

      if (!v39)
      {
        goto LABEL_183;
      }

      if (!v41)
      {
        goto LABEL_182;
      }

      goto LABEL_136;
    }

    if (v15 == 1)
    {
      if (v78 < a1)
      {
        goto LABEL_155;
      }

      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v42 = __DataStorage._offset.getter();
        if (__OFSUB__(a1, v42))
        {
          goto LABEL_165;
        }

        v41 += a1 - v42;
      }

      v43 = MEMORY[0x2667557A0]();
      v44 = (a1 >> 32) - a1;
      if (v43 < v77)
      {
        v44 = v43;
      }

      if (!v39)
      {
        goto LABEL_179;
      }

      if (!v41)
      {
        goto LABEL_178;
      }

LABEL_136:
      if (v39 == v41)
      {
        goto LABEL_184;
      }

      v70 = memcmp(v39, v41, v44);
      outlined consume of Data._Representation(v21, v20);
      v10 = v79;
      goto LABEL_141;
    }

    *__s1 = a1;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v39)
    {
      goto LABEL_170;
    }

LABEL_139:
    v61 = __s1;
    v60 = v39;
    v56 = BYTE6(a2);
    goto LABEL_140;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v15)
  {
LABEL_97:
    __s2 = a1;
    v86 = a2;
    v87 = BYTE2(a2);
    v88 = BYTE3(a2);
    v89 = BYTE4(a2);
    v90 = BYTE5(a2);
    if (!memcmp(__s1, &__s2, BYTE6(a2)))
    {
      goto LABEL_185;
    }

    goto LABEL_20;
  }

  if (v15 == 2)
  {
    v49 = *(a1 + 16);
    v48 = *(a1 + 24);
    outlined copy of Data._Representation(v21, v20);
    v34 = __DataStorage._bytes.getter();
    if (v34)
    {
      v50 = __DataStorage._offset.getter();
      if (__OFSUB__(v49, v50))
      {
        goto LABEL_163;
      }

      v34 += v49 - v50;
    }

    v30 = __OFSUB__(v48, v49);
    v51 = v48 - v49;
    if (v30)
    {
      goto LABEL_154;
    }

    v52 = MEMORY[0x2667557A0]();
    v10 = v79;
    if (!v34)
    {
      goto LABEL_171;
    }

    goto LABEL_104;
  }

  if (v78 < a1)
  {
    goto LABEL_153;
  }

  outlined copy of Data._Representation(v21, v20);
  v57 = __DataStorage._bytes.getter();
  if (v57)
  {
    v58 = v57;
    v59 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v59))
    {
      goto LABEL_157;
    }

    v34 = a1 - v59 + v58;
    v35 = MEMORY[0x2667557A0]();
    if (!v34)
    {
      goto LABEL_169;
    }

    goto LABEL_111;
  }

  MEMORY[0x2667557A0]();
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  MEMORY[0x2667557A0]();
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  outlined consume of Data._Representation(v21, v20);
LABEL_185:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  (*(*v5 + 144))(v15);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    type metadata accessor for XPCDaemon(0);
    do
    {
      result = [*(*(*(v8 + 48) + 8 * a2) + 56) isEqual_];
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy24SecureMessagingAgentCore9XPCDaemonCGMd, &_ss11_SetStorageCy24SecureMessagingAgentCore9XPCDaemonCGMR);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4DataVGMd, &_ss11_SetStorageCy10Foundation4DataVGMR);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        outlined copy of Data._Representation(v18, *(&v18 + 1));
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

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = MEMORY[0x266756F40](*(v5 + 40), v16);
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4DataVGMd, &_ss11_SetStorageCy10Foundation4DataVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      outlined copy of Data._Representation(v18, v19);
      Data.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy24SecureMessagingAgentCore9XPCDaemonCGMd, &_ss11_SetStorageCy24SecureMessagingAgentCore9XPCDaemonCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v26 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      v18 = *(*v17 + 144);

      v18(v27);
      result = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v2 = v5;
  }

  return result;
}

id specialized Set._Variant.remove(_:)(void *a1)
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

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = specialized Set._Variant._migrateToNative(_:removing:)(v4, a1);

      return v6;
    }

    return 0;
  }

  Hasher.init(_seed:)();
  (*(*a1 + 144))(v15);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v3 + 32);
  v10 = v8 & ~v9;
  if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (([*(*(*(v3 + 48) + 8 * v10) + 56) isEqual_] & 1) == 0)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15[0] = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v13 = v15[0];
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  specialized _NativeSet._delete(at:)(v10);
  result = v14;
  *v1 = v15[0];
  return result;
}

id specialized Set._Variant._migrateToNative(_:removing:)(uint64_t a1, void *a2)
{

  v5 = __CocoaSet.count.getter();
  v6 = swift_unknownObjectRetain();
  v13 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC24SecureMessagingAgentCore9XPCDaemonC_Tt1g5(v6, v5, v7, v8, v9, v10, v11, v12);
  v23 = v13;
  Hasher.init(_seed:)();
  v14 = *(*a2 + 144);
  v15 = (*a2 + 144);

  v14(&v22);
  v16 = Hasher._finalize()();
  v17 = -1 << *(v13 + 32);
  v18 = v16 & ~v17;
  if ((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    v3 = &unk_279B93000;
    while (1)
    {
      v15 = a2[7];
      if ([*(*(*(v13 + 48) + 8 * v18) + 56) isEqual_])
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
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

  v20 = *(*(v13 + 48) + 8 * v18);
  specialized _NativeSet._delete(at:)(v18);
  result = [v15 v3[84]];
  if (result)
  {
    *v2 = v23;
    return v20;
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
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        v11 = *(*v10 + 144);

        v11(v20);
        v12 = Hasher._finalize()();

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
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

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t specialized XPCDaemon.init(interfaceProvider:clientConnection:featureFlagStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for LogCategory();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a5;
  v24 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  (*(v13 + 104))(v16, *MEMORY[0x277D4C928], v12);
  secureMessagingLogger(category:)();
  (*(v13 + 8))(v16, v12);
  outlined init with take of MLS.SwiftMLSPersisterProtocol(&v22, a4 + 16);
  *(a4 + 56) = a2;
  v18 = OBJC_IVAR____TtC24SecureMessagingAgentCore9XPCDaemon_featureFlagStore;
  v19 = type metadata accessor for SMAFeatureFlagsStore();
  (*(*(v19 - 8) + 32))(a4 + v18, a3, v19);
  return a4;
}

uint64_t specialized XPCServer.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for LogCategory();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SMAFeatureFlagsStore();
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26524C000, v13, v14, "XPCServer -- New Incoming Connection", v15, 2u);
    MEMORY[0x2667577B0](v15, -1, -1);
  }

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  v29[1] = v16;
  v36 = partial apply for closure #1 in XPCServer.listener(_:shouldAcceptNewConnection:);
  v37 = v18;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v34 = thunk for @escaping @callee_guaranteed () -> ();
  v35 = &block_descriptor_7;
  v19 = _Block_copy(&aBlock);

  [a1 setInvalidationHandler_];
  _Block_release(v19);
  default argument 0 of SMAFeatureFlagsStore.init(overrides:)();
  SMAFeatureFlagsStore.init(overrides:)();
  type metadata accessor for XPCDaemon(0);
  v20 = swift_allocObject();
  v35 = type metadata accessor for XPCServer(0);
  v36 = &protocol witness table for XPCServer;
  *&aBlock = v2;
  (*(v5 + 104))(v8, *MEMORY[0x277D4C928], v4);
  v21 = v2;
  secureMessagingLogger(category:)();
  (*(v5 + 8))(v8, v4);
  outlined init with take of MLS.SwiftMLSPersisterProtocol(&aBlock, (v20 + 2));
  v20[7] = a1;
  (*(v30 + 32))(v20 + OBJC_IVAR____TtC24SecureMessagingAgentCore9XPCDaemon_featureFlagStore, v12, v31);
  swift_beginAccess();
  *(v16 + 16) = v20;
  v22 = a1;

  v23 = v20[7];

  v25 = MEMORY[0x266756730](v24);
  [v23 setExportedInterface_];

  [v23 setExportedObject_];
  [v23 resume];
  v26 = *((*MEMORY[0x277D85000] & *v21) + 0x88);

  v27 = v26(&aBlock);
  specialized Set._Variant.insert(_:)(&v32, v20);

  v27(&aBlock, 0);

  return 1;
}

uint64_t specialized XPCDaemon.__allocating_init(interfaceProvider:clientConnection:featureFlagStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCDaemon(0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a1, a5);
  return specialized XPCDaemon.init(interfaceProvider:clientConnection:featureFlagStore:)(v13, a2, a3, v14, a5, a6);
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for XPCServer(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2652CC760@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_2652CC7BC(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x80);

  return v2(v3);
}

uint64_t type metadata completion function for XPCServer(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t type metadata completion function for XPCDaemon(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SMAFeatureFlagsStore();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void specialized XPCDaemon.deliveryInterface(completion:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCUtils.XPCClientCreationError.ErrorType();
  v51 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for XPCUtils.XPCClientCreationError();
  v52 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SMAFeatureFlagsKey();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, *MEMORY[0x277D4CC38], v12);
  v17 = SMAFeatureFlagsStore.isEnabled(feature:)();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    goto LABEL_4;
  }

  v18 = a1[7];
  v19 = static XPCUtils.SecureMessagingAgentDeliveryEntitlement.getter();
  v20 = MEMORY[0x266756A10](v19);

  v21 = [v18 valueForEntitlement_];

  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease(v21, v22, v23, v24, v25, v26, v27, v28);
    outlined destroy of Any?(v53);
LABEL_4:
    v29 = a1[5];
    v30 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v29);
    v31 = (*(v30 + 8))(v29, v30);
    (*(a2 + 16))(a2, v31, 0);
    swift_unknownObjectRelease(v31, v32, v33, v34, v35, v36, v37, v38);
    return;
  }

  memset(v53, 0, sizeof(v53));
  outlined destroy of Any?(v53);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  (*(v51 + 104))(v7, *MEMORY[0x277D4D298], v4);
  XPCUtils.XPCClientCreationError.init(type:underlyingErrorDescription:)();
  lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError(&lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError, MEMORY[0x277D4D2A0], MEMORY[0x277D4D2A8]);
  v39 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v41 = v40;
  (*(v52 + 8))(v11, v8);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v53[0] = v45;
    *v44 = 136315138;
    v46 = static XPCUtils.SecureMessagingAgentDeliveryEntitlement.getter();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v53);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_26524C000, v42, v43, "Client missing required entitlement { %s }", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x2667577B0](v45, -1, -1);
    MEMORY[0x2667577B0](v44, -1, -1);
  }

  if (v41 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  (*(a2 + 16))(a2, 0, isa);

  outlined consume of Data?(v39, v41);
}

void specialized XPCDaemon.registrationInterface(completion:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCUtils.XPCClientCreationError.ErrorType();
  v51 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for XPCUtils.XPCClientCreationError();
  v52 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SMAFeatureFlagsKey();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, *MEMORY[0x277D4CC38], v12);
  v17 = SMAFeatureFlagsStore.isEnabled(feature:)();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    goto LABEL_4;
  }

  v18 = a1[7];
  v19 = static XPCUtils.SecureMessagingAgentRegistrationEntitlement.getter();
  v20 = MEMORY[0x266756A10](v19);

  v21 = [v18 valueForEntitlement_];

  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease(v21, v22, v23, v24, v25, v26, v27, v28);
    outlined destroy of Any?(v53);
LABEL_4:
    v29 = a1[5];
    v30 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v29);
    v31 = (*(v30 + 16))(v29, v30);
    (*(a2 + 16))(a2, v31, 0);
    swift_unknownObjectRelease(v31, v32, v33, v34, v35, v36, v37, v38);
    return;
  }

  memset(v53, 0, sizeof(v53));
  outlined destroy of Any?(v53);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  (*(v51 + 104))(v7, *MEMORY[0x277D4D298], v4);
  XPCUtils.XPCClientCreationError.init(type:underlyingErrorDescription:)();
  lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError(&lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError, MEMORY[0x277D4D2A0], MEMORY[0x277D4D2A8]);
  v39 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v41 = v40;
  (*(v52 + 8))(v11, v8);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v53[0] = v45;
    *v44 = 136315138;
    v46 = static XPCUtils.SecureMessagingAgentRegistrationEntitlement.getter();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v53);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_26524C000, v42, v43, "Client missing required entitlement { %s }", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x2667577B0](v45, -1, -1);
    MEMORY[0x2667577B0](v44, -1, -1);
  }

  if (v41 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  (*(a2 + 16))(a2, 0, isa);

  outlined consume of Data?(v39, v41);
}

uint64_t sub_2652CD65C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2652CD694()
{
  MEMORY[0x266757840](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2652CD6CC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static SqliteError.failed(_:)()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v0);

  return 0;
}

uint64_t SqliteStore.__allocating_init()()
{
  v0 = type metadata accessor for LogCategory();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  (*(v1 + 104))(v4, *MEMORY[0x277D4C920], v0);
  secureMessagingLogger(category:)();
  (*(v1 + 8))(v4, v0);
  *(v5 + OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db) = 0;
  return v5;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SqliteError.ErrorType@<X0>(Swift::Int *a1@<X0>, SecureMessagingAgentCore::SqliteError::ErrorType_optional *a2@<X8>)
{
  result = specialized SqliteError.ErrorType.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

uint64_t protocol witness for Error._code.getter in conformance SqliteError.ErrorType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type SqliteError.ErrorType and conformance SqliteError.ErrorType();
  v5 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SqliteError.CodingKeys()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SqliteError.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000026534B580 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SqliteError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SqliteError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SqliteError.encode(to:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore11SqliteErrorV10CodingKeys33_062584879AC908161C18F54013E1E93ALLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore11SqliteErrorV10CodingKeys33_062584879AC908161C18F54013E1E93ALLOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v15 = 0;
  lazy protocol witness table accessor for type SqliteError.ErrorType and conformance SqliteError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t protocol witness for VersatileError.underlyingErrorDescription.getter in conformance SqliteError()
{
  v1 = *(v0 + 8);

  return v1;
}

_BYTE *protocol witness for VersatileError.init(type:underlyingErrorDescription:) in conformance SqliteError@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance SqliteError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SqliteError and conformance SqliteError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance SqliteError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SqliteError and conformance SqliteError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance SqliteError@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = specialized SqliteError.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t protocol witness for CustomNSError.errorCode.getter in conformance SqliteError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SqliteError and conformance SqliteError();

  return MEMORY[0x2821AC530](a1, v2);
}

uint64_t protocol witness for CustomNSError.errorUserInfo.getter in conformance SqliteError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SqliteError and conformance SqliteError();

  return MEMORY[0x2821AC528](a1, v2);
}

uint64_t SQLITE_TRANSIENT.getter()
{
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  return SQLITE_TRANSIENT;
}

uint64_t SqliteStore.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SqliteStore.db.getter()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SqliteStore.db.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SqliteStore.init()()
{
  v1 = type metadata accessor for LogCategory();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  (*(v2 + 104))(v5, *MEMORY[0x277D4C920], v1);
  secureMessagingLogger(category:)();
  (*(v2 + 8))(v5, v1);
  *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db) = 0;
  return v0;
}

uint64_t SqliteStore.prepare(_:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;

  return MEMORY[0x2822009F8](SqliteStore.prepare(_:), v2, 0);
}

const char *SqliteStore.prepare(_:)()
{
  v27 = v0;
  v26 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!v3)
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v20 = 1;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    goto LABEL_9;
  }

  *(v0 + 40) = 0;
  v4 = String.utf8CString.getter();
  v5 = strdup((v4 + 32));

  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = sqlite3_prepare_v2(v3, v5, -1, (v0 + 40), 0);
  if (v7)
  {
    v8 = v7;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v9, v10))
    {
LABEL_7:

      v24 = 0x726F7272456C7173;
      v25 = 0xE90000000000003ALL;
      *(v0 + 72) = v8;
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266756A70](v16);

      v17 = v24;
      v18 = v25;
      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v19 = 0;
      *(v19 + 8) = v17;
      *(v19 + 16) = v18;
LABEL_9:
      swift_willThrow();
      v21 = *(v0 + 8);

      return v21();
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 67109378;
    *(v11 + 4) = v8;
    *(v11 + 8) = 2080;
    result = sqlite3_errmsg(v3);
    if (result)
    {
      v13 = String.init(cString:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v24);

      *(v11 + 10) = v15;
      _os_log_impl(&dword_26524C000, v9, v10, "prepare: SQLite error %d: %s", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x2667577B0](v12, -1, -1);
      MEMORY[0x2667577B0](v11, -1, -1);
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
    return result;
  }

  v22 = *(v0 + 40);
  v23 = *(v0 + 8);

  return v23(v22);
}

uint64_t SqliteStore.execute(_:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](SqliteStore.execute(_:), v1, 0);
}

uint64_t SqliteStore.execute(_:)()
{
  v32 = v0;
  if (sqlite3_sql(*(v0 + 40)))
  {
    v1 = String.init(cString:)();
    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v30 = v7;
      *v6 = 136315138;
      v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, &v30);

      *(v6 + 4) = v8;
      _os_log_impl(&dword_26524C000, v4, v5, "%s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x2667577B0](v7, -1, -1);
      MEMORY[0x2667577B0](v6, -1, -1);
    }

    else
    {
    }
  }

  v9 = sqlite3_step(*(v0 + 40));
  if (v9 != 101)
  {
    v12 = v9;
    v13 = *(v0 + 48);
    v14 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
    swift_beginAccess();
    if (*(v13 + v14))
    {

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v15, v16))
      {

        goto LABEL_16;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v18;
      *v17 = 67109378;
      *(v17 + 4) = v12;
      *(v17 + 8) = 2080;
      v19 = sqlite3_errmsg(*(v13 + v14));

      if (!v19)
      {
        __break(1u);
        return result;
      }

      v21 = String.init(cString:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v30);

      *(v17 + 10) = v23;
      _os_log_impl(&dword_26524C000, v15, v16, "execute: SQLite error %d: %s", v17, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x2667577B0](v18, -1, -1);
    }

    else
    {
      v15 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v15, v24))
      {
LABEL_14:

LABEL_16:
        v25 = *(v0 + 40);
        v30 = 0x726F7272456C7173;
        v31 = 0xE90000000000003ALL;
        *(v0 + 56) = v12;
        v26 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v26);

        v27 = v30;
        v28 = v31;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v29 = 0;
        *(v29 + 8) = v27;
        *(v29 + 16) = v28;
        swift_willThrow();
        sqlite3_finalize(v25);
        v10 = *(v0 + 8);
        v11 = 0;
        goto LABEL_17;
      }

      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = v12;
      _os_log_impl(&dword_26524C000, v15, v24, "execute: SQLite error %d: no db", v17, 8u);
    }

    MEMORY[0x2667577B0](v17, -1, -1);
    goto LABEL_14;
  }

  sqlite3_finalize(*(v0 + 40));
  v10 = *(v0 + 8);
  v11 = 1;
LABEL_17:

  return v10(v11);
}

uint64_t SqliteStore.createTable(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](SqliteStore.createTable(_:), v2, 0);
}

uint64_t SqliteStore.createTable(_:)()
{
  v20 = v0;
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  v0[8] = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[9] = v3;
  if (v3)
  {
    v4 = (*(v0[6] + 8))();
    if (v4)
    {
      v5 = v4;
      v6 = swift_task_alloc();
      v0[10] = v6;
      *v6 = v0;
      v6[1] = SqliteStore.createTable(_:);

      return SqliteStore.execute(_:)(v5);
    }

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      v15 = sqlite3_errmsg(*(v1 + v2));

      if (!v15)
      {
        __break(1u);
        return result;
      }

      v16 = String.init(cString:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v19);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_26524C000, v11, v12, "createTable: SQLite error %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x2667577B0](v14, -1, -1);
      MEMORY[0x2667577B0](v13, -1, -1);
    }

    else
    {
    }

    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v9 = v8;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  swift_willThrow();
  v10 = v0[1];

  return v10(0);
}

{
  v20 = v0;
  if (*(v0 + 128) != 1)
  {
    v4 = 0;
LABEL_5:
    v3 = *(v0 + 8);
    goto LABEL_6;
  }

  v1 = *(v0 + 88);
  result = (*(*(v0 + 48) + 16))(*(v0 + 72));
  *(v0 + 96) = result;
  if (v1)
  {
LABEL_3:
    v3 = *(v0 + 8);
    v4 = 0;
LABEL_6:

    return v3(v4);
  }

  v5 = *(result + 16);
  *(v0 + 104) = v5;
  *(v0 + 112) = 0;
  if (!v5)
  {

    v4 = *(v0 + 112) == *(v0 + 104);
    goto LABEL_5;
  }

  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_22;
  }

  v6 = *(result + 32);
  if (!v6)
  {

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v8, v9))
    {

      goto LABEL_20;
    }

    v10 = *(v0 + 56);
    v11 = *(v0 + 64);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    v14 = sqlite3_errmsg(*(v10 + v11));

    if (v14)
    {
      v15 = String.init(cString:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_26524C000, v8, v9, "createTable: SQLite error %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x2667577B0](v13, -1, -1);
      MEMORY[0x2667577B0](v12, -1, -1);

LABEL_20:
      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v18 = 2;
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      swift_willThrow();
      goto LABEL_3;
    }

LABEL_22:
    __break(1u);
    return result;
  }

  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = SqliteStore.createTable(_:);

  return SqliteStore.execute(_:)(v6);
}

{
  v20 = v0;
  if ((*(v0 + 129) & 1) == 0 || (v1 = *(v0 + 104), v2 = *(v0 + 112) + 1, *(v0 + 112) = v2, v2 == v1))
  {

    v3 = *(v0 + 112) == *(v0 + 104);
    v4 = *(v0 + 8);
LABEL_4:

    return v4(v3);
  }

  result = *(v0 + 96);
  if (v2 >= *(result + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = *(result + 8 * v2 + 32);
  if (!v6)
  {

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v8, v9))
    {

      goto LABEL_16;
    }

    v10 = *(v0 + 56);
    v11 = *(v0 + 64);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    v14 = sqlite3_errmsg(*(v10 + v11));

    if (v14)
    {
      v15 = String.init(cString:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_26524C000, v8, v9, "createTable: SQLite error %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x2667577B0](v13, -1, -1);
      MEMORY[0x2667577B0](v12, -1, -1);

LABEL_16:
      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v18 = 2;
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      swift_willThrow();
      v4 = *(v0 + 8);
      v3 = 0;
      goto LABEL_4;
    }

LABEL_18:
    __break(1u);
    return result;
  }

  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = SqliteStore.createTable(_:);

  return SqliteStore.execute(_:)(v6);
}

uint64_t SqliteStore.createTable(_:)(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    v8 = *(v4 + 56);
    *(v4 + 128) = a1 & 1;

    return MEMORY[0x2822009F8](SqliteStore.createTable(_:), v8, 0);
  }
}

{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    v8 = *(v4 + 56);
    *(v4 + 129) = a1 & 1;

    return MEMORY[0x2822009F8](SqliteStore.createTable(_:), v8, 0);
  }
}

uint64_t SqliteStore.dropTable(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](SqliteStore.dropTable(_:), v2, 0);
}

uint64_t SqliteStore.dropTable(_:)()
{
  v19 = v0;
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = (*(v0[6] + 24))();
    if (v3)
    {
      v4 = v3;
      v5 = swift_task_alloc();
      v0[8] = v5;
      *v5 = v0;
      v5[1] = SqliteStore.dropTable(_:);

      return SqliteStore.execute(_:)(v4);
    }

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      v14 = sqlite3_errmsg(*(v1 + v2));

      if (!v14)
      {
        __break(1u);
        return result;
      }

      v15 = String.init(cString:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v18);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_26524C000, v10, v11, "dropTable: SQLite error %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x2667577B0](v13, -1, -1);
      MEMORY[0x2667577B0](v12, -1, -1);
    }

    else
    {
    }

    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v8 = v7;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  swift_willThrow();
  v9 = v0[1];

  return v9(0);
}

uint64_t SqliteStore.dropTable(_:)(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t SqliteStore.insert(_:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](SqliteStore.insert(_:), v1, 0);
}

uint64_t SqliteStore.insert(_:)()
{
  v23 = v0;
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v0[5];
    v5 = v4[3];
    v6 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v7 = (*(v6 + 32))(v3, v5, v6);
    if (v7)
    {
      v8 = v7;
      v9 = swift_task_alloc();
      v0[7] = v9;
      *v9 = v0;
      v9[1] = SqliteStore.update(_:);

      return SqliteStore.execute(_:)(v8);
    }

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      v18 = sqlite3_errmsg(*(v1 + v2));

      if (!v18)
      {
        __break(1u);
        return result;
      }

      v19 = String.init(cString:)();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v22);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_26524C000, v14, v15, "insert: SQLite error %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x2667577B0](v17, -1, -1);
      MEMORY[0x2667577B0](v16, -1, -1);
    }

    else
    {
    }

    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v12 = v11;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  swift_willThrow();
  v13 = v0[1];

  return v13(0);
}

uint64_t SqliteStore.update(_:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](SqliteStore.update(_:), v1, 0);
}

uint64_t SqliteStore.update(_:)()
{
  v23 = v0;
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v0[5];
    v5 = v4[3];
    v6 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v7 = (*(v6 + 40))(v3, v5, v6);
    if (v7)
    {
      v8 = v7;
      v9 = swift_task_alloc();
      v0[7] = v9;
      *v9 = v0;
      v9[1] = SqliteStore.update(_:);

      return SqliteStore.execute(_:)(v8);
    }

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      v18 = sqlite3_errmsg(*(v1 + v2));

      if (!v18)
      {
        __break(1u);
        return result;
      }

      v19 = String.init(cString:)();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v22);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_26524C000, v14, v15, "update: SQLite error %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x2667577B0](v17, -1, -1);
      MEMORY[0x2667577B0](v16, -1, -1);
    }

    else
    {
    }

    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v12 = v11;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  swift_willThrow();
  v13 = v0[1];

  return v13(0);
}

uint64_t SqliteStore.delete(_:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](SqliteStore.delete(_:), v1, 0);
}

uint64_t SqliteStore.delete(_:)()
{
  v23 = v0;
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v0[5];
    v5 = v4[3];
    v6 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v7 = (*(v6 + 48))(v3, v5, v6);
    if (v7)
    {
      v8 = v7;
      v9 = swift_task_alloc();
      v0[7] = v9;
      *v9 = v0;
      v9[1] = SqliteStore.delete(_:);

      return SqliteStore.execute(_:)(v8);
    }

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      v18 = sqlite3_errmsg(*(v1 + v2));

      if (!v18)
      {
        __break(1u);
        return result;
      }

      v19 = String.init(cString:)();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v22);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_26524C000, v14, v15, "delete: SQLite error %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x2667577B0](v17, -1, -1);
      MEMORY[0x2667577B0](v16, -1, -1);
    }

    else
    {
    }

    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v12 = v11;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  swift_willThrow();
  v13 = v0[1];

  return v13(0);
}

uint64_t SqliteStore.delete(_:)(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t SqliteStore.query<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[9] = AssociatedTypeWitness;
  v6 = type metadata accessor for Optional();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = *(AssociatedTypeWitness - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](SqliteStore.query<A>(_:), v3, 0);
}

uint64_t SqliteStore.query<A>(_:)()
{
  v48 = v0;
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = (*(*(v0 + 56) + 24))(v3, *(v0 + 48));
    v5 = v4;
    if (v4)
    {
      v6 = sqlite3_step(v4);
      if ((v6 & 0xFFFFFFFE) == 0x64)
      {
        v7 = Array.init()();
        v46 = v7;
        if (v6 == 100)
        {
          v8 = *(v0 + 104);
          v9 = *(*(v0 + 56) + 16);
          v10 = (v8 + 48);
          v44 = (v8 + 16);
          v45 = (v8 + 32);
          v43 = (v8 + 8);
          v11 = (*(v0 + 88) + 8);
          do
          {
            v19 = v9();
            v19(v5);
            v20 = *(v0 + 96);
            v21 = *(v0 + 72);

            if ((*v10)(v20, 1, v21) == 1)
            {
              (*v11)(*(v0 + 96), *(v0 + 80));
            }

            else
            {
              v17 = *(v0 + 112);
              v16 = *(v0 + 120);
              v18 = *(v0 + 72);
              (*v45)(v16, *(v0 + 96), v18);
              (*v44)(v17, v16, v18);
              type metadata accessor for Array();
              Array.append(_:)();
              (*v43)(v16, v18);
            }
          }

          while (sqlite3_step(v5) == 100);
          v7 = v46;
        }

        sqlite3_finalize(v5);

        v42 = *(v0 + 8);

        return v42(v7);
      }

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v30, v31))
      {

        goto LABEL_24;
      }

      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v46 = v33;
      *v32 = 136315138;
      v34 = sqlite3_errmsg(*(v1 + v2));

      if (v34)
      {
        v35 = String.init(cString:)();
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v46);

        *(v32 + 4) = v37;
        _os_log_impl(&dword_26524C000, v30, v31, "query-sqlite3_step: SQLite error %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        MEMORY[0x2667577B0](v33, -1, -1);
        MEMORY[0x2667577B0](v32, -1, -1);

LABEL_24:
        v46 = 0x726F7272456C7173;
        v47 = 0xE90000000000003ALL;
        *(v0 + 128) = v6;
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v38);

        v39 = v46;
        v40 = v47;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v41 = 0;
        *(v41 + 8) = v39;
        *(v41 + 16) = v40;
        swift_willThrow();
        sqlite3_finalize(v5);
        goto LABEL_8;
      }

LABEL_30:
      __break(1u);
      return result;
    }

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v46 = v25;
      *v24 = 136315138;
      v26 = sqlite3_errmsg(*(v1 + v2));

      if (!v26)
      {
        __break(1u);
        goto LABEL_30;
      }

      v27 = String.init(cString:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v46);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_26524C000, v22, v23, "query-queryStatement: SQLite error %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2667577B0](v25, -1, -1);
      MEMORY[0x2667577B0](v24, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v13 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v13 = 1;
  }

  *v12 = v13;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  swift_willThrow();
LABEL_8:

  v14 = *(v0 + 8);

  return v14();
}

uint64_t SqliteStore.beginTransaction()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = SqliteStore.beginTransaction();

  return SqliteStore.prepare(_:)(0xD000000000000012, 0x800000026534A630);
}

{
  v1 = v0[4];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = SqliteStore.beginTransaction();

    return SqliteStore.execute(_:)(v1);
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 2;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    swift_willThrow();
    v5 = v0[1];

    return v5(0);
  }
}

uint64_t SqliteStore.beginTransaction()(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5(0);
  }

  else
  {
    v7 = *(v3 + 16);

    return MEMORY[0x2822009F8](SqliteStore.beginTransaction(), v7, 0);
  }
}

uint64_t SqliteStore.endTransaction()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = SqliteStore.endTransaction();

  return SqliteStore.prepare(_:)(0x3B54494D4D4F43, 0xE700000000000000);
}

{
  v1 = v0[4];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = SqliteStore.endTransaction();

    return SqliteStore.execute(_:)(v1);
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 2;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    swift_willThrow();
    v5 = v0[1];

    return v5(0);
  }
}

uint64_t SqliteStore.endTransaction()(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5(0);
  }

  else
  {
    v7 = *(v3 + 16);

    return MEMORY[0x2822009F8](SqliteStore.endTransaction(), v7, 0);
  }
}

uint64_t SqliteStore.endTransaction()(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t SqliteStore.rollbackTransaction()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = SqliteStore.beginTransaction();

  return SqliteStore.prepare(_:)(0x4B4341424C4C4F52, 0xE90000000000003BLL);
}

uint64_t SqliteStore.open(filePath:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](SqliteStore.open(filePath:), v2, 0);
}

uint64_t SqliteStore.open(filePath:)()
{
  v27 = v0;
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26524C000, v1, v2, "Opening DB.", v3, 2u);
    MEMORY[0x2667577B0](v3, -1, -1);
  }

  v4 = String.utf8CString.getter();
  v5 = strdup((v4 + 32));

  if (!v5)
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = *(v0 + 56);
  v8 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v9 = sqlite3_open(v5, (v7 + v8));
  swift_endAccess();
  if (v9)
  {
    if (!*(v7 + v8))
    {
      v10 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v10, v20))
      {
LABEL_13:

LABEL_15:
        v25 = 0x726F7272456C7173;
        v26 = 0xE90000000000003ALL;
        *(v0 + 16) = v9;
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v21);

        v22 = v25;
        v23 = v26;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v24 = 0;
        *(v24 + 8) = v22;
        *(v24 + 16) = v23;
        swift_willThrow();
        v18 = *(v0 + 8);
        v19 = 0;
        goto LABEL_16;
      }

      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = v9;
      _os_log_impl(&dword_26524C000, v10, v20, "open: SQLite error %d: no db", v12, 8u);
LABEL_12:
      MEMORY[0x2667577B0](v12, -1, -1);
      goto LABEL_13;
    }

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v10, v11))
    {

      goto LABEL_15;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 67109378;
    *(v12 + 4) = v9;
    *(v12 + 8) = 2080;
    v14 = sqlite3_errmsg(*(v7 + v8));

    if (v14)
    {
      v15 = String.init(cString:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v25);

      *(v12 + 10) = v17;
      _os_log_impl(&dword_26524C000, v10, v11, "open: SQLite error %d: %s", v12, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x2667577B0](v13, -1, -1);
      goto LABEL_12;
    }

LABEL_20:
    __break(1u);
    return result;
  }

  v18 = *(v0 + 8);
  v19 = 1;
LABEL_16:

  return v18(v19);
}

uint64_t SqliteStore.close()()
{
  *(v1 + 40) = v0;
  return MEMORY[0x2822009F8](SqliteStore.close(), v0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!v3)
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v15 = 1;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
LABEL_10:
    swift_willThrow();
    v16 = *(v0 + 8);
    v17 = 0;
    goto LABEL_11;
  }

  v4 = sqlite3_close_v2(v3);
  if (v4)
  {
    v5 = v4;

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 67109378;
      *(v8 + 4) = v5;
      *(v8 + 8) = 2080;
      v10 = sqlite3_errmsg(*(v1 + v2));

      if (!v10)
      {
        __break(1u);
        return result;
      }

      v12 = String.init(cString:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v22);

      *(v8 + 10) = v14;
      _os_log_impl(&dword_26524C000, v6, v7, "close: SQLite error %d: %s", v8, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x2667577B0](v9, -1, -1);
      MEMORY[0x2667577B0](v8, -1, -1);
    }

    else
    {
    }

    v22 = 0x726F7272456C7173;
    v23 = 0xE90000000000003ALL;
    *(v0 + 48) = v5;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v18);

    v19 = v22;
    v20 = v23;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v21 = 0;
    *(v21 + 8) = v19;
    *(v21 + 16) = v20;
    goto LABEL_10;
  }

  v16 = *(v0 + 8);
  v17 = 1;
LABEL_11:

  return v16(v17);
}

uint64_t SqliteStore.deinit()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SqliteStore.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

char *String.toUnsafePointer()(uint64_t a1, uint64_t a2)
{
  v2 = String.utf8CString.getter();
  v3 = strdup((v2 + 32));

  if (v3)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t specialized static SqliteError.== infix(_:_:)(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4)
  {
    if (a3)
    {
      if (a6)
      {
        if (a2 == a5 && a3 == a6)
        {
          return 1;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t specialized SqliteError.ErrorType.init(rawValue:)(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys;
  if (!lazy protocol witness table cache variable for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys;
  if (!lazy protocol witness table cache variable for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys;
  if (!lazy protocol witness table cache variable for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys;
  if (!lazy protocol witness table cache variable for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SqliteError.ErrorType and conformance SqliteError.ErrorType()
{
  result = lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType;
  if (!lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType;
  if (!lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType;
  if (!lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType;
  if (!lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType;
  if (!lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType);
  }

  return result;
}

uint64_t specialized SqliteError.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore11SqliteErrorV10CodingKeys33_062584879AC908161C18F54013E1E93ALLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore11SqliteErrorV10CodingKeys33_062584879AC908161C18F54013E1E93ALLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[14] = 0;
    lazy protocol witness table accessor for type SqliteError.ErrorType and conformance SqliteError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v10[15];
    v10[13] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t sub_2652D1E10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2652D1E68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SqliteError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for SqliteError(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SqliteError.ErrorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SqliteError.ErrorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for SqliteStore(uint64_t a1)
{
  result = type metadata singleton initialization cache for SqliteStore;
  if (!type metadata singleton initialization cache for SqliteStore)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SqliteStore(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t dispatch thunk of SqliteStore.prepare(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 136) + **(*v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return v8(a1, a2);
}

uint64_t dispatch thunk of SqliteStore.execute(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 144) + **(*v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return v6(a1);
}

uint64_t dispatch thunk of SqliteStore.createTable(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of SqliteStore.dropTable(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 160) + **(*v2 + 160));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return v8(a1, a2);
}

uint64_t dispatch thunk of SqliteStore.insert(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 168) + **(*v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return v6(a1);
}

uint64_t dispatch thunk of SqliteStore.update(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return v6(a1);
}

uint64_t dispatch thunk of SqliteStore.delete(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 184) + **(*v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return v6(a1);
}

uint64_t dispatch thunk of SqliteStore.query<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 192) + **(*v3 + 192));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of SqliteStore.beginTransaction()()
{
  v4 = (*(*v0 + 200) + **(*v0 + 200));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return v4();
}

uint64_t dispatch thunk of SqliteStore.endTransaction()()
{
  v4 = (*(*v0 + 208) + **(*v0 + 208));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return v4();
}

uint64_t dispatch thunk of SqliteStore.rollbackTransaction()()
{
  v4 = (*(*v0 + 216) + **(*v0 + 216));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return v4();
}

uint64_t dispatch thunk of SqliteStore.open(filePath:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 224) + **(*v2 + 224));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return v8(a1, a2);
}

uint64_t dispatch thunk of SqliteStore.close()()
{
  v4 = (*(*v0 + 232) + **(*v0 + 232));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return v4();
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t GroupStateModel.init(clientIdentifier:groupID:groupStateData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t GroupStateModel.clientIdentifier.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t GroupStateModel.groupID.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t GroupStateModel.groupStateData.getter()
{
  v1 = *(v0 + 32);
  outlined copy of Data._Representation(v1, *(v0 + 40));
  return v1;
}

sqlite3_stmt *GroupStateModel.insertStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v4 = strdup("INSERT OR REPLACE INTO Group_State_Table (client_id, group_id, group_state_data) VALUES (?, ?, ?);");
  if (!v4)
  {
LABEL_142:
    __break(1u);
  }

  v5 = sqlite3_prepare_v2(a1, v4, -1, ppStmt, 0);
  if (v5)
  {
LABEL_115:
    *&v66 = 0x726F7272456C7173;
    *(&v66 + 1) = 0xE90000000000003ALL;
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v51);

    v52 = v66;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v53 = 0;
    *(v53 + 8) = v52;
    return swift_willThrow();
  }

  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      *&v66 = *v1;
      DWORD2(v66) = v7;
      WORD6(v66) = WORD2(v7);
      v5 = ppStmt[0];
      LODWORD(v9) = BYTE6(v7);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v10 = SQLITE_TRANSIENT;
        v11 = &v66;
        LODWORD(v12) = v9;
        goto LABEL_42;
      }

LABEL_118:
      v57 = v5;
      swift_once();
      v5 = v57;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v8 != 2)
  {
    *(&v66 + 6) = 0;
    *&v66 = 0;
    v5 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v10 = SQLITE_TRANSIENT;
      v11 = &v66;
      LODWORD(v12) = 0;
      goto LABEL_42;
    }

LABEL_120:
    v58 = v5;
    swift_once();
    v5 = v58;
    goto LABEL_25;
  }

  v13 = v1;
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = __DataStorage._bytes.getter();
  if (v16)
  {
    v10 = v16;
    v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v5 = __DataStorage._offset.getter();
    if (__OFSUB__(v14, v5))
    {
      __break(1u);
      goto LABEL_124;
    }

    v9 = v10 + v14 - v5;
    v10 = (v15 - v14);
    if (!__OFSUB__(v15, v14))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = 0;
  v10 = (v15 - v14);
  if (__OFSUB__(v15, v14))
  {
    goto LABEL_28;
  }

LABEL_11:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v5;
  }

  if (v9)
  {
    v12 = v17;
  }

  else
  {
    v12 = 0;
  }

  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_122;
  }

  v6 = 0x7FFFFFFFLL;
  if (v12 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v2 = v6;
  v18 = v6 >> 32;
  v14 = v18 - v2;
  if (v18 < v2)
  {
    __break(1u);
    goto LABEL_120;
  }

  v13 = v1;
  v19 = __DataStorage._bytes.getter();
  if (!v19)
  {
LABEL_29:
    v9 = 0;
    goto LABEL_30;
  }

  v10 = v19;
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = __DataStorage._offset.getter();
  if (__OFSUB__(v2, v5))
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v9 = v10 + v2 - v5;
LABEL_30:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v14)
  {
    v12 = v14;
  }

  else
  {
    v12 = v5;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_118;
    }

    v1 = v13;
    if (v12 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v12) = 0;
LABEL_38:
  v1 = v13;
LABEL_39:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v55 = ppStmt[0];
    v56 = v12;
    swift_once();
    v5 = v55;
    LODWORD(v12) = v56;
  }

  v10 = SQLITE_TRANSIENT;
  v11 = v9;
LABEL_42:
  v5 = sqlite3_bind_blob(v5, 1, v11, v12, v10);
  if (v5)
  {
    goto LABEL_115;
  }

  v20 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2)
    {
      goto LABEL_71;
    }

    v24 = v1;
    v25 = *(v20 + 16);
    v26 = *(v20 + 24);
    LODWORD(v1) = *(v1 + 24);
    v27 = __DataStorage._bytes.getter();
    v9 = v27;
    if (v27)
    {
      LODWORD(v1) = v21;
      v27 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v27))
      {
LABEL_131:
        __break(1u);
        goto LABEL_132;
      }

      v9 += v25 - v27;
    }

    v28 = __OFSUB__(v26, v25);
    v29 = v26 - v25;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v1) = v21;
      v27 = MEMORY[0x2667557A0]();
      if (v27 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v27;
      }

      if (v9)
      {
        v12 = v30;
      }

      else
      {
        v12 = 0;
      }

      if (v12 >= 0xFFFFFFFF80000000)
      {
        if (v12 <= 0x7FFFFFFF)
        {
          v1 = v24;
          goto LABEL_75;
        }

        goto LABEL_130;
      }
    }

    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (!v22)
  {
    *&v66 = *(v1 + 16);
    DWORD2(v66) = v21;
    WORD6(v66) = WORD2(v21);
    v5 = ppStmt[0];
    LODWORD(v2) = BYTE6(v21);
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_46:
      v23 = &v66;
      LODWORD(v12) = v2;
      goto LABEL_77;
    }

LABEL_125:
    v61 = v5;
    swift_once();
    v5 = v61;
    goto LABEL_46;
  }

  v31 = v20;
  v32 = v20 >> 32;
  v33 = v32 - v31;
  if (v32 < v31)
  {
    __break(1u);
    goto LABEL_127;
  }

  v34 = v1;
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    LODWORD(v1) = v21;
    v27 = __DataStorage._offset.getter();
    if (!__OFSUB__(v31, v27))
    {
      v9 += v31 - v27;
      goto LABEL_65;
    }

LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

LABEL_65:
  v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
  v35 = MEMORY[0x2667557A0]();
  if (v35 >= v33)
  {
    v12 = v33;
  }

  else
  {
    v12 = v35;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_71:
      *(&v66 + 6) = 0;
      *&v66 = 0;
      v5 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_72:
        v23 = &v66;
        LODWORD(v12) = 0;
        goto LABEL_77;
      }

LABEL_127:
      v62 = v5;
      swift_once();
      v5 = v62;
      goto LABEL_72;
    }

    v1 = v34;
    if (v12 > 0x7FFFFFFF)
    {
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }
  }

  else
  {
    LODWORD(v12) = 0;
    v1 = v34;
  }

LABEL_75:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_122:
    v59 = v5;
    v60 = v12;
    swift_once();
    v5 = v59;
    LODWORD(v12) = v60;
  }

  v23 = v9;
LABEL_77:
  v27 = sqlite3_bind_blob(v5, 2, v23, v12, v10);
  if (v27)
  {
    goto LABEL_115;
  }

  v36 = *(v1 + 32);
  v37 = *(v1 + 40);
  v38 = v37 >> 62;
  if ((v37 >> 62) <= 1)
  {
    if (!v38)
    {
      *&v66 = *(v1 + 32);
      DWORD2(v66) = v37;
      WORD6(v66) = WORD2(v37);
      v27 = ppStmt[0];
      LODWORD(v1) = BYTE6(v37);
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v64 = ppStmt[0];
        swift_once();
        v27 = v64;
      }

      v39 = &v66;
      goto LABEL_113;
    }

    goto LABEL_97;
  }

  if (v38 != 2)
  {
    goto LABEL_107;
  }

  v40 = *(v36 + 16);
  v41 = *(v36 + 24);
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v42 = __DataStorage._offset.getter();
    if (__OFSUB__(v40, v42))
    {
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    v9 += v40 - v42;
  }

  v28 = __OFSUB__(v41, v40);
  v43 = v41 - v40;
  if (v28)
  {
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v27 = MEMORY[0x2667557A0]();
  if (v27 >= v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = v27;
  }

  if (v9)
  {
    v1 = v44;
  }

  else
  {
    v1 = 0;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_137;
  }

  v36 = 0x7FFFFFFFLL;
  if (v1 <= 0x7FFFFFFF)
  {
    goto LABEL_111;
  }

  __break(1u);
LABEL_97:
  v45 = v36;
  v46 = v36 >> 32;
  v47 = v46 - v45;
  if (v46 < v45)
  {
    __break(1u);
    goto LABEL_135;
  }

  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v48 = __DataStorage._offset.getter();
    if (!__OFSUB__(v45, v48))
    {
      v9 += v45 - v48;
      goto LABEL_101;
    }

LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

LABEL_101:
  v49 = MEMORY[0x2667557A0]();
  if (v49 >= v47)
  {
    v1 = v47;
  }

  else
  {
    v1 = v49;
  }

  if (!v9)
  {
    LODWORD(v1) = 0;
    goto LABEL_111;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_107:
    *(&v66 + 6) = 0;
    *&v66 = 0;
    v27 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_108:
      v39 = &v66;
      v50 = 0;
      goto LABEL_114;
    }

LABEL_135:
    v65 = v27;
    swift_once();
    v27 = v65;
    goto LABEL_108;
  }

  if (v1 > 0x7FFFFFFF)
  {
    goto LABEL_141;
  }

LABEL_111:
  v27 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_133:
    v63 = v27;
    swift_once();
    v27 = v63;
  }

  v39 = v9;
LABEL_113:
  v50 = v1;
LABEL_114:
  if (sqlite3_bind_blob(v27, 3, v39, v50, v10))
  {
    goto LABEL_115;
  }

  return ppStmt[0];
}

sqlite3_stmt *GroupStateModel.updateStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v4 = strdup("UPDATE Group_State_Table SET\n    group_state_data = ?\nWHERE\n    client_id = ? AND group_id = ?;");
  if (!v4)
  {
LABEL_142:
    __break(1u);
  }

  v5 = sqlite3_prepare_v2(a1, v4, -1, ppStmt, 0);
  if (v5)
  {
LABEL_115:
    *&v66 = 0x726F7272456C7173;
    *(&v66 + 1) = 0xE90000000000003ALL;
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v51);

    v52 = v66;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v53 = 0;
    *(v53 + 8) = v52;
    return swift_willThrow();
  }

  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      *&v66 = *(v1 + 32);
      DWORD2(v66) = v7;
      WORD6(v66) = WORD2(v7);
      v5 = ppStmt[0];
      LODWORD(v9) = BYTE6(v7);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v10 = SQLITE_TRANSIENT;
        v11 = &v66;
        LODWORD(v12) = v9;
        goto LABEL_42;
      }

LABEL_118:
      v57 = v5;
      swift_once();
      v5 = v57;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v8 != 2)
  {
    *(&v66 + 6) = 0;
    *&v66 = 0;
    v5 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v10 = SQLITE_TRANSIENT;
      v11 = &v66;
      LODWORD(v12) = 0;
      goto LABEL_42;
    }

LABEL_120:
    v58 = v5;
    swift_once();
    v5 = v58;
    goto LABEL_25;
  }

  v13 = v1;
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = __DataStorage._bytes.getter();
  if (v16)
  {
    v10 = v16;
    v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v5 = __DataStorage._offset.getter();
    if (__OFSUB__(v14, v5))
    {
      __break(1u);
      goto LABEL_124;
    }

    v9 = v10 + v14 - v5;
    v10 = (v15 - v14);
    if (!__OFSUB__(v15, v14))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = 0;
  v10 = (v15 - v14);
  if (__OFSUB__(v15, v14))
  {
    goto LABEL_28;
  }

LABEL_11:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v5;
  }

  if (v9)
  {
    v12 = v17;
  }

  else
  {
    v12 = 0;
  }

  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_122;
  }

  v6 = 0x7FFFFFFFLL;
  if (v12 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v2 = v6;
  v18 = v6 >> 32;
  v14 = v18 - v2;
  if (v18 < v2)
  {
    __break(1u);
    goto LABEL_120;
  }

  v13 = v1;
  v19 = __DataStorage._bytes.getter();
  if (!v19)
  {
LABEL_29:
    v9 = 0;
    goto LABEL_30;
  }

  v10 = v19;
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = __DataStorage._offset.getter();
  if (__OFSUB__(v2, v5))
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v9 = v10 + v2 - v5;
LABEL_30:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v14)
  {
    v12 = v14;
  }

  else
  {
    v12 = v5;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_118;
    }

    v1 = v13;
    if (v12 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v12) = 0;
LABEL_38:
  v1 = v13;
LABEL_39:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v55 = ppStmt[0];
    v56 = v12;
    swift_once();
    v5 = v55;
    LODWORD(v12) = v56;
  }

  v10 = SQLITE_TRANSIENT;
  v11 = v9;
LABEL_42:
  v5 = sqlite3_bind_blob(v5, 1, v11, v12, v10);
  if (v5)
  {
    goto LABEL_115;
  }

  v20 = *v1;
  v21 = *(v1 + 8);
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2)
    {
      goto LABEL_71;
    }

    v24 = v1;
    v25 = *(v20 + 16);
    v26 = *(v20 + 24);
    LODWORD(v1) = *(v1 + 8);
    v27 = __DataStorage._bytes.getter();
    v9 = v27;
    if (v27)
    {
      LODWORD(v1) = v21;
      v27 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v27))
      {
LABEL_131:
        __break(1u);
        goto LABEL_132;
      }

      v9 += v25 - v27;
    }

    v28 = __OFSUB__(v26, v25);
    v29 = v26 - v25;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v1) = v21;
      v27 = MEMORY[0x2667557A0]();
      if (v27 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v27;
      }

      if (v9)
      {
        v12 = v30;
      }

      else
      {
        v12 = 0;
      }

      if (v12 >= 0xFFFFFFFF80000000)
      {
        if (v12 <= 0x7FFFFFFF)
        {
          v1 = v24;
          goto LABEL_75;
        }

        goto LABEL_130;
      }
    }

    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (!v22)
  {
    *&v66 = *v1;
    DWORD2(v66) = v21;
    WORD6(v66) = WORD2(v21);
    v5 = ppStmt[0];
    LODWORD(v2) = BYTE6(v21);
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_46:
      v23 = &v66;
      LODWORD(v12) = v2;
      goto LABEL_77;
    }

LABEL_125:
    v61 = v5;
    swift_once();
    v5 = v61;
    goto LABEL_46;
  }

  v31 = v20;
  v32 = v20 >> 32;
  v33 = v32 - v31;
  if (v32 < v31)
  {
    __break(1u);
    goto LABEL_127;
  }

  v34 = v1;
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    LODWORD(v1) = v21;
    v27 = __DataStorage._offset.getter();
    if (!__OFSUB__(v31, v27))
    {
      v9 += v31 - v27;
      goto LABEL_65;
    }

LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

LABEL_65:
  v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
  v35 = MEMORY[0x2667557A0]();
  if (v35 >= v33)
  {
    v12 = v33;
  }

  else
  {
    v12 = v35;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_71:
      *(&v66 + 6) = 0;
      *&v66 = 0;
      v5 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_72:
        v23 = &v66;
        LODWORD(v12) = 0;
        goto LABEL_77;
      }

LABEL_127:
      v62 = v5;
      swift_once();
      v5 = v62;
      goto LABEL_72;
    }

    v1 = v34;
    if (v12 > 0x7FFFFFFF)
    {
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }
  }

  else
  {
    LODWORD(v12) = 0;
    v1 = v34;
  }

LABEL_75:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_122:
    v59 = v5;
    v60 = v12;
    swift_once();
    v5 = v59;
    LODWORD(v12) = v60;
  }

  v23 = v9;
LABEL_77:
  v27 = sqlite3_bind_blob(v5, 2, v23, v12, v10);
  if (v27)
  {
    goto LABEL_115;
  }

  v36 = *(v1 + 16);
  v37 = *(v1 + 24);
  v38 = v37 >> 62;
  if ((v37 >> 62) <= 1)
  {
    if (!v38)
    {
      *&v66 = *(v1 + 16);
      DWORD2(v66) = v37;
      WORD6(v66) = WORD2(v37);
      v27 = ppStmt[0];
      LODWORD(v1) = BYTE6(v37);
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v64 = ppStmt[0];
        swift_once();
        v27 = v64;
      }

      v39 = &v66;
      goto LABEL_113;
    }

    goto LABEL_97;
  }

  if (v38 != 2)
  {
    goto LABEL_107;
  }

  v40 = *(v36 + 16);
  v41 = *(v36 + 24);
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v42 = __DataStorage._offset.getter();
    if (__OFSUB__(v40, v42))
    {
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    v9 += v40 - v42;
  }

  v28 = __OFSUB__(v41, v40);
  v43 = v41 - v40;
  if (v28)
  {
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v27 = MEMORY[0x2667557A0]();
  if (v27 >= v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = v27;
  }

  if (v9)
  {
    v1 = v44;
  }

  else
  {
    v1 = 0;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_137;
  }

  v36 = 0x7FFFFFFFLL;
  if (v1 <= 0x7FFFFFFF)
  {
    goto LABEL_111;
  }

  __break(1u);
LABEL_97:
  v45 = v36;
  v46 = v36 >> 32;
  v47 = v46 - v45;
  if (v46 < v45)
  {
    __break(1u);
    goto LABEL_135;
  }

  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v48 = __DataStorage._offset.getter();
    if (!__OFSUB__(v45, v48))
    {
      v9 += v45 - v48;
      goto LABEL_101;
    }

LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

LABEL_101:
  v49 = MEMORY[0x2667557A0]();
  if (v49 >= v47)
  {
    v1 = v47;
  }

  else
  {
    v1 = v49;
  }

  if (!v9)
  {
    LODWORD(v1) = 0;
    goto LABEL_111;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_107:
    *(&v66 + 6) = 0;
    *&v66 = 0;
    v27 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_108:
      v39 = &v66;
      v50 = 0;
      goto LABEL_114;
    }

LABEL_135:
    v65 = v27;
    swift_once();
    v27 = v65;
    goto LABEL_108;
  }

  if (v1 > 0x7FFFFFFF)
  {
    goto LABEL_141;
  }

LABEL_111:
  v27 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_133:
    v63 = v27;
    swift_once();
    v27 = v63;
  }

  v39 = v9;
LABEL_113:
  v50 = v1;
LABEL_114:
  if (sqlite3_bind_blob(v27, 3, v39, v50, v10))
  {
    goto LABEL_115;
  }

  return ppStmt[0];
}