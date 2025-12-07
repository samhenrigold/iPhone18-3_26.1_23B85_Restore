void sub_1884ACF38(int a1)
{
  sub_188445778();
  if ((v2 ^ a1))
  {
    __break(1u);
  }
}

id sub_1884ACF88(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x18CFD5010](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1884AD008()
{
  sub_1883F8AF0();
  type metadata accessor for AuthenticatedSession.Configuration.Encryption.ServiceIdentity.Payload();
  sub_1883F70DC();
  MEMORY[0x1EEE9AC00](v1);
  sub_1883F7100();
  sub_1883FED1C();
  type metadata accessor for AuthenticatedSession.Configuration.Encryption.ServiceIdentity();
  sub_1883F70DC();
  v29 = v3;
  v30 = v2;
  MEMORY[0x1EEE9AC00](v2);
  sub_1883F7100();
  v6 = v5 - v4;
  v7 = sub_18844E6FC(&qword_1EA90E228, &unk_1886FA940);
  sub_1883F8AE4(v7);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F83A4();
  v9 = type metadata accessor for AnySessionConfiguration();
  sub_1883F70DC();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1883F7100();
  v15 = v14 - v13;
  v16 = type metadata accessor for AuthenticatedSession.Configuration.Encryption();
  sub_1883F70DC();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1883F7100();
  v22 = v21 - v20;
  sub_188445AC0();
  AnySessionConfiguration.encryption.getter();
  (*(v11 + 8))(v15, v9);
  if (sub_1883F971C(v0, 1, v16) == 1)
  {
    sub_188442B84(v0, &qword_1EA90E228, &unk_1886FA940);
LABEL_6:
    sub_1883FF490();
    goto LABEL_7;
  }

  (*(v18 + 32))(v22, v0, v16);
  AuthenticatedSession.Configuration.Encryption.serviceIdentity.getter();
  AuthenticatedSession.Configuration.Encryption.ServiceIdentity.payload.getter();
  (*(v29 + 8))(v6, v30);
  (*(v18 + 8))(v22, v16);
  v23 = sub_1883F7CD4();
  if (v24(v23) != *MEMORY[0x1E69947F0])
  {
    v27 = sub_1883F7E8C();
    v28(v27);
    goto LABEL_6;
  }

  v25 = sub_1883F7E8C();
  v26(v25);
LABEL_7:
  sub_1883F8178();
}

void sub_1884AD334(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
  __break(1u);
}

void sub_1884AD38C()
{
  sub_1883FF15C();
  sub_1883F92B0();

  _typeName(_:qualified:)();
  sub_1883FA3E4();

  sub_188405548();
  MEMORY[0x18CFD5140](0xD000000000000015, 0x8000000188700FF0);
  sub_1883F95DC();
  v0 = sub_18844E6FC(&qword_1EA90E230, &qword_1886F9A30);
  sub_188400858(v0, v1, v2);
  sub_1883FE048();

  sub_1883FA110("Fatal error", v3, v4, 0xD000000000000015, 0x8000000188701030, "CloudKit/CloudCoreContainerOptions.swift", v5, v6, 182, 0);
  __break(1u);
}

void sub_1884AD484(char a1)
{
  swift_getObjectType();
  _StringGuts.grow(_:)(32);

  v2 = _typeName(_:qualified:)();
  MEMORY[0x18CFD5140](v2);

  MEMORY[0x18CFD5140](2126631, 0xE300000000000000);
  MEMORY[0x18CFD5140](0xD000000000000013, 0x8000000188701010);
  MEMORY[0x18CFD5140](8250, 0xE200000000000000);
  if (a1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x18CFD5140](v3, v4);

  sub_1883FA110("Fatal error", v5, v6, 0xD000000000000015, 0x8000000188701030, "CloudKit/CloudCoreContainerOptions.swift", v7, v8, 193, 0);
  __break(1u);
}

uint64_t sub_1884AD5D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&unk_1EA90E238, &qword_1886FA950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id CKAccountOverrideInfo.init(sessionConfiguration:)(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90E260, &qword_1886FA968);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v39 - v3;
  v5 = type metadata accessor for AuthenticatedSession.Configuration.Account.ExplicitCredentials();
  sub_1883F70DC();
  v42 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18844E6FC(&qword_1EA90E258, &qword_1886FA960);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  sub_1883F70DC();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AnySessionConfiguration.account.getter();
  if (sub_1883F971C(v12, 1, v13) == 1)
  {
    type metadata accessor for AnySessionConfiguration();
    sub_1883F7158();
    (*(v19 + 8))(a1);
    v20 = &qword_1EA90E258;
    v21 = &qword_1886FA960;
    v22 = v12;
LABEL_5:
    sub_18845B1B0(v22, v20, v21);
    return 0;
  }

  (*(v15 + 32))(v18, v12, v13);
  AuthenticatedSession.Configuration.Account.explicitCredentials.getter();
  if (sub_1883F971C(v4, 1, v5) == 1)
  {
    type metadata accessor for AnySessionConfiguration();
    sub_1883F7158();
    (*(v23 + 8))(a1);
    (*(v15 + 8))(v18, v13);
    v20 = &qword_1EA90E260;
    v21 = &qword_1886FA968;
    v22 = v4;
    goto LABEL_5;
  }

  (*(v42 + 32))(v9, v4, v5);
  v25 = AuthenticatedSession.Configuration.Account.ExplicitCredentials.hsa2RecoveryKey.getter();
  if (v26)
  {
    v27 = v25;
    v28 = v26;
    v41 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v29 = AuthenticatedSession.Configuration.Account.ExplicitCredentials.username.getter();
    v40 = MEMORY[0x18CFD5010](v29);

    v30 = AuthenticatedSession.Configuration.Account.ExplicitCredentials.password.getter();
    v31 = MEMORY[0x18CFD5010](v30);

    v32 = MEMORY[0x18CFD5010](v27, v28);

    v33 = v40;
    v24 = [v41 initWithEmail:v40 password:v31 recoveryKey:v32];
  }

  else
  {
    v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v35 = AuthenticatedSession.Configuration.Account.ExplicitCredentials.username.getter();
    v31 = MEMORY[0x18CFD5010](v35);

    v36 = AuthenticatedSession.Configuration.Account.ExplicitCredentials.password.getter();
    v32 = MEMORY[0x18CFD5010](v36);

    v24 = [v34 initWithEmail:v31 password:v32];
  }

  type metadata accessor for AnySessionConfiguration();
  sub_1883F7158();
  (*(v37 + 8))(a1);
  (*(v42 + 8))(v9, v5);
  (*(v15 + 8))(v18, v13);
  return v24;
}

void EntitlementsProtocol.ckCompatibilityOverlay(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v105 = a1;
  v104 = type metadata accessor for AuthenticatedSession.Configuration.System();
  sub_1883F70DC();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1883F7100();
  v8 = v7 - v6;
  v91 = type metadata accessor for BundleID.Payload();
  sub_1883F70DC();
  v89 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1883F7100();
  v13 = v12 - v11;
  v93 = type metadata accessor for BundleID();
  sub_1883F70DC();
  v90 = v14;
  MEMORY[0x1EEE9AC00](v15);
  sub_1883F7100();
  v88 = v17 - v16;
  type metadata accessor for AuthenticatedSession.Configuration.Account.AuthorizationUI.Payload();
  sub_1883F70DC();
  v99 = v18;
  v100 = v19;
  MEMORY[0x1EEE9AC00](v18);
  sub_1883F926C();
  v94 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v96 = &v84 - v22;
  type metadata accessor for AuthenticatedSession.Configuration.Account.AuthorizationUI();
  sub_1883F70DC();
  v97 = v24;
  v98 = v23;
  MEMORY[0x1EEE9AC00](v23);
  sub_1883F926C();
  v92 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v95 = &v84 - v27;
  v28 = sub_18844E6FC(&qword_1EA90E258, &qword_1886FA960);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v84 - v29;
  v103 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  sub_1883F70DC();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  sub_1883F7100();
  v102 = v35 - v34;
  v36 = dispatch thunk of EntitlementsProtocol.allowCustomBundleIDs.getter();
  v37 = MEMORY[0x1E69E7CC8];
  if (v36)
  {
    v38 = MEMORY[0x1E69E7CC8];
    v39 = v32;
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = v4;
    v42 = v41;
    swift_isUniquelyReferenced_nonNull_native();
    v106 = v38;
    v43 = sub_1883FDAC4();
    v44 = v40;
    v32 = v39;
    sub_1884AF200(v43, v45, v44, v42, v46);
    v4 = v101;

    v37 = v106;
  }

  if (dispatch thunk of EntitlementsProtocol.allowCustomAuthorizationUI.getter())
  {
    AnySessionConfiguration.account.getter();
    if (sub_1883F971C(v30, 1, v103) == 1)
    {
      sub_1884AF354(v30);
    }

    else
    {
      v86 = v37;
      v85 = v13;
      v87 = v8;
      v101 = v4;
      (*(v32 + 4))(v102, v30, v103);
      v47 = v95;
      AuthenticatedSession.Configuration.Account.accessGrantedVia.getter();
      v48 = v96;
      AuthenticatedSession.Configuration.Account.AuthorizationUI.payload.getter();
      v49 = v98;
      v97 = *(v97 + 8);
      (v97)(v47, v98);
      v51 = v99;
      v50 = v100;
      v52 = *(v100 + 88);
      LODWORD(v47) = v52(v48, v99);
      v53 = *MEMORY[0x1E6994800];
      v96 = *(v50 + 8);
      (v96)(v48, v51);
      if (v47 == v53)
      {
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;
        v57 = v86;
        swift_isUniquelyReferenced_nonNull_native();
        v106 = v57;
        v58 = sub_1883FDAC4();
        sub_1884AF200(v58, v59, v54, v56, v60);

        (*(v32 + 1))(v102, v103);
        v37 = v106;
        v4 = v101;
        v8 = v87;
      }

      else
      {
        v95 = v32;
        v61 = v92;
        v62 = v102;
        AuthenticatedSession.Configuration.Account.accessGrantedVia.getter();
        v63 = v94;
        AuthenticatedSession.Configuration.Account.AuthorizationUI.payload.getter();
        (v97)(v61, v49);
        if (v52(v63, v51) == *MEMORY[0x1E6994808])
        {
          (*(v100 + 96))(v63, v51);
          v64 = v90;
          v65 = v88;
          (*(v90 + 32))(v88, v63, v93);
          v66 = v85;
          BundleID.payload.getter();
          v67 = v89;
          v68 = v91;
          v69 = (*(v89 + 88))(v66, v91);
          v4 = v101;
          v37 = v86;
          v8 = v87;
          if (v69 == *MEMORY[0x1E69948C0])
          {
            (*(v67 + 8))(v66, v68);
            v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v71 = v65;
            v73 = v72;
            swift_isUniquelyReferenced_nonNull_native();
            v106 = v37;
            v74 = sub_1883FDAC4();
            sub_1884AF200(v74, v75, v70, v73, v76);

            (*(v64 + 8))(v71, v93);
            (*(v95 + 1))(v102, v103);
            v37 = v106;
          }

          else
          {
            (*(v64 + 8))(v65, v93);
            (*(v95 + 1))(v102, v103);
            (*(v67 + 8))(v66, v68);
          }
        }

        else
        {
          (*(v95 + 1))(v62, v103);
          (v96)(v63, v51);
          v4 = v101;
          v37 = v86;
          v8 = v87;
        }
      }
    }
  }

  AnySessionConfiguration.system.getter();
  v77 = AuthenticatedSession.Configuration.System.allowAccessDuringBuddy.getter();
  (*(v4 + 8))(v8, v104);
  if (v77)
  {
    v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v79;
    swift_isUniquelyReferenced_nonNull_native();
    v106 = v37;
    v81 = sub_1883FDAC4();
    sub_1884AF200(v81, v82, v78, v80, v83);
  }

  sub_1883F8178();
}

void sub_1884AE418(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  sub_1883F70DC();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1883F7100();
  v12 = v11 - v10;
  sub_1884863DC();
  sub_1883F8964();
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v13;
  v17 = v14;
  sub_18844E6FC(&qword_1EA90E308, &qword_1886FA9F8);
  if (!sub_1883F8438())
  {
    goto LABEL_5;
  }

  sub_1884863DC();
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v3;
  if (v17)
  {
    v21 = v20[7] + 16 * v16;
    *v21 = a1;
    *(v21 + 8) = a2 & 1;
    sub_1883F8178();

    sub_18844CAFC(v22);
  }

  else
  {
    (*(v8 + 16))(v12, a3, v6);
    sub_1884AF6EC(v16, v12, a1, a2 & 1, v20);
    sub_1883F8178();
  }
}

void sub_1884AEB48(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void (*a8)(uint64_t, uint64_t))
{
  sub_188420F2C(a3, a4);
  sub_1883F8964();
  if (v16)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = v14;
  v18 = v15;
  sub_18844E6FC(a6, a7);
  if (!sub_1883F8438())
  {
    goto LABEL_5;
  }

  v19 = sub_188420F2C(a3, a4);
  if ((v18 & 1) != (v20 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v17 = v19;
LABEL_5:
  v21 = *v8;
  if (v18)
  {
    v22 = *(v21 + 56) + 16 * v17;
    v23 = *v22;
    v24 = *(v22 + 8);
    *v22 = a1;
    *(v22 + 8) = a2 & 1;

    a8(v23, v24);
  }

  else
  {
    sub_1884AF7B4(v17, a3, a4, a1, a2 & 1, v21);
  }
}

void sub_1884AF200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_188420F2C(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v13;
  v19 = v14;
  sub_18844E6FC(&qword_1EA90E2B8, &qword_1886FA9A8);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a5 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = sub_188420F2C(a3, a4);
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v18 = v20;
LABEL_5:
  v22 = *v6;
  if (v19)
  {
    v23 = (v22[7] + 16 * v18);
    *v23 = a1;
    v23[1] = a2;
  }

  else
  {
    sub_1884AF980(v18, a3, a4, a1, a2, v22);
  }
}

uint64_t sub_1884AF354(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90E258, &qword_1886FA960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_1884AF3BC(_OWORD *a1, uint64_t a2)
{
  sub_1884864E0();
  sub_1883F8964();
  if (v7)
  {
    __break(1u);
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  sub_18844E6FC(&qword_1EA90E2B0, &qword_1886FA9A0);
  v10 = sub_1883F8E7C();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11))
  {
    sub_1884864E0();
    sub_1883F7AE8();
    if (!v13)
    {
      goto LABEL_12;
    }

    v8 = v12;
  }

  v14 = *v2;
  if (v9)
  {
    v15 = (v14[7] + 32 * v8);
    sub_1883FE944(v15);

    return sub_188419138(a1, v15);
  }

  else
  {
    sub_1884802A8(a2, v17);
    return sub_1884AF9CC(v8, v17, a1, v14);
  }
}

uint64_t sub_1884AF6EC(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for URL();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = a5[7] + 16 * a1;
  *v13 = a3;
  *(v13 + 8) = a4 & 1;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_1884AF7B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_1883F9834(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = v7[7] + 16 * result;
  *v11 = v12;
  *(v11 + 8) = v13 & 1;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

uint64_t sub_1884AF808(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1883F9834(a1, a5 + 8 * (a1 >> 6));
  *(v6[6] + 8 * result) = v7;
  v8 = v6[7] + 16 * result;
  *v8 = v9;
  *(v8 + 8) = v10 & 1;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v6[2] = v13;
  }

  return result;
}

unint64_t sub_1884AF858(unint64_t result, uint64_t a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1884AF89C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1884AF8F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1883F9834(a1, a5 + 8 * (a1 >> 6));
  v7 = (v6[6] + 16 * result);
  *v7 = v8;
  v7[1] = v9;
  *(v6[7] + 8 * result) = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v6[2] = v13;
  }

  return result;
}

uint64_t sub_1884AF93C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1883F9834(a1, a4 + 8 * (a1 >> 6));
  *(v5[6] + 8 * result) = v6;
  *(v5[7] + 8 * result) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v10;
  }

  return result;
}

unint64_t sub_1884AF980(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

_OWORD *sub_1884AF9CC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_188419138(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1884AFA48(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&qword_1EA90E278, &unk_1886FB440);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1884AFAB8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1883F9834(a1, a8 + 8 * (a1 >> 6));
  v10 = (v9[6] + 16 * result);
  *v10 = v11;
  v10[1] = v12;
  v13 = v9[7] + 32 * result;
  *v13 = v14;
  *(v13 + 8) = v15;
  *(v13 + 16) = v16;
  *(v13 + 24) = v17;
  v18 = v9[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v9[2] = v20;
  }

  return result;
}

unint64_t sub_1884AFB0C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1884AFB5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18844E6FC(&unk_1EA90E170, &qword_1886FA450);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v42 - v5;
  v7 = type metadata accessor for SessionInvalidationContext();
  sub_1883F70DC();
  v44 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1883F7100();
  v12 = (v11 - v10);
  v13 = sub_18844E6FC(&qword_1EA90E0D0, &qword_1886FA1A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v42 - v14;
  v16 = type metadata accessor for SessionReadinessError();
  sub_1883F70DC();
  v45 = v17;
  MEMORY[0x1EEE9AC00](v18);
  sub_1883F7100();
  v21 = (v20 - v19);
  v47 = a1;
  v22 = a1;
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  type metadata accessor for CKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v25 = *MEMORY[0x1E6994780];
    type metadata accessor for CloudCoreError();
    sub_1883F7308();
    return (*(v26 + 104))(a2, v25);
  }

  v43 = a2;
  v23 = v46;
  v47 = v46;
  sub_1884B034C(&qword_1EA90CAE0, type metadata accessor for CKError, &unk_1886F6978);
  _BridgedStoredNSError.code.getter();
  if (v46 == 3)
  {

    v24 = MEMORY[0x1E6994778];
  }

  else
  {
    if (v46 == 170)
    {
      related decl 'e' for CKErrorCode.underlyingSessionReadinessError.getter(v23);
      if (sub_1883F971C(v15, 1, v16) == 1)
      {

        v28 = &qword_1EA90E0D0;
        v29 = &qword_1886FA1A0;
        v30 = v15;
      }

      else
      {
        v33 = v45;
        v42 = *(v45 + 32);
        v42(v21, v15, v16);
        related decl 'e' for CKErrorCode.underlyingSessionInvalidationContext.getter(v23);

        if (sub_1883F971C(v6, 1, v7) != 1)
        {
          v37 = *(v44 + 32);
          v37(v12, v6, v7);
          v38 = *(sub_18844E6FC(&qword_1EA90E320, &unk_1886FAA10) + 48);
          v39 = v43;
          v42(v43, v21, v16);
          v37((v39 + v38), v12, v7);
          v40 = *MEMORY[0x1E6994788];
          type metadata accessor for CloudCoreError();
          sub_1883F7308();
          return (*(v41 + 104))(v39, v40);
        }

        (*(v33 + 8))(v21, v16);
        v28 = &unk_1EA90E170;
        v29 = &qword_1886FA450;
        v30 = v6;
      }

      sub_188442B84(v30, v28, v29);
      v34 = v43;
      v35 = *MEMORY[0x1E6994780];
      type metadata accessor for CloudCoreError();
      sub_1883F7308();
      return (*(v36 + 104))(v34, v35);
    }

    if (v46 == 5)
    {

      v24 = MEMORY[0x1E6994770];
    }

    else if (v46 == 4)
    {

      v24 = MEMORY[0x1E6994768];
    }

    else
    {

      v24 = MEMORY[0x1E6994780];
    }
  }

  v31 = *v24;
  type metadata accessor for CloudCoreError();
  sub_1883F7308();
  return (*(v32 + 104))(v43, v31);
}

uint64_t related decl e for CKUnderlyingErrorCode.init(sessionReadinessError:invalidationContext:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionInvalidationContext();
  sub_1883F70DC();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1883F7100();
  v10 = v9 - v8;
  v11 = type metadata accessor for SessionReadinessError();
  sub_1883F70DC();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1883F7100();
  v17 = v16 - v15;
  (*(v13 + 16))(v16 - v15, a1, v11);
  v18 = objc_allocWithZone(type metadata accessor for CKSessionReadinessErrorBox());
  v19 = CKSessionReadinessErrorBox.init(_:)(v17);
  (*(v6 + 16))(v10, a2, v4);
  v20 = objc_allocWithZone(type metadata accessor for CKSessionInvalidationContext());
  v21 = CKSessionInvalidationContext.init(_:)(v10);
  v22 = related decl 'e' for CKUnderlyingErrorCode.init(sessionReadinessErrorBox:invalidationContextBox:)(v19, v21);
  (*(v6 + 8))(a2, v4);
  (*(v13 + 8))(a1, v11);
  return v22;
}

uint64_t related decl e for CKUnderlyingErrorCode.init(sessionReadinessErrorBox:invalidationContextBox:)(void *a1, void *a2)
{
  type metadata accessor for CKUnderlyingError(0);
  sub_18844E6FC(&qword_1EA90D870, &qword_1886F89B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1886F8960;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  *(inited + 72) = type metadata accessor for CKSessionReadinessErrorBox();
  *(inited + 48) = a1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v6;
  *(inited + 120) = type metadata accessor for CKSessionInvalidationContext();
  *(inited + 96) = a2;
  v7 = a1;
  v8 = a2;
  Dictionary.init(dictionaryLiteral:)();
  sub_1884B034C(&qword_1EA90C588, type metadata accessor for CKUnderlyingError, &unk_1886F6878);
  _BridgedStoredNSError.init(_:userInfo:)();

  return v10;
}

uint64_t sub_1884B034C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id CKSecureCodingBox.init(wrapping:)(uint64_t a1)
{
  sub_18840B008(a1);
  sub_1883F9C28();
  MEMORY[0x1EEE9AC00](v2);
  v4 = sub_1883F8978(v3, v14);
  v5(v4);
  v6 = sub_1883F92F0();
  v12 = sub_1884B19D8(v6, v7, v8, v9, v10, v11);
  sub_1883FE944(v1);
  return v12;
}

id CKSecureCodingBox.init(coder:wrappedType:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v53 = type metadata accessor for Logger();
  sub_1883F9C28();
  v52 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  sub_1884B1ADC();
  v18 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v18)
  {
    CCLog.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v58[0] = v30;
      *v29 = 136315138;
      v31 = sub_1883F828C();
      v33 = sub_1883FE340(v31, v32, v58);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1883EA000, v27, v28, "No data found in secure-coded %s)", v29, 0xCu);
      sub_1883FE944(v30);
      sub_1883F7B60();
      sub_1883F7B60();
    }

    sub_1883FF188();
    v46(v14, v53);
    goto LABEL_12;
  }

  v19 = v18;
  v49 = v17;
  v20 = a1;
  v50 = v5;
  v21 = type metadata accessor for JSONDecoder();
  sub_1883FEA90(v21);
  v22 = v19;
  JSONDecoder.init()();
  v23 = v22;
  v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v58[3] = a2;
  v58[4] = a3;
  v58[5] = a4;
  v58[6] = a5;
  sub_188403664(v58);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_188423CCC(v24, v26);

  sub_1884B1B70(v58, &v55, &qword_1EA90E328, &qword_1886FAA20);
  if (!v56)
  {
    sub_18840E840(&v55, &qword_1EA90E328, &qword_1886FAA20);
    v36 = v49;
    CCLog.getter();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *&v57[0] = swift_slowAlloc();
      *v39 = 136315394;
      v40 = sub_1883F828C();
      v42 = sub_1883FE340(v40, v41, v57);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2080;
      v43 = _typeName(_:qualified:)();
      v45 = sub_1883FE340(v43, v44, v57);

      *(v39 + 14) = v45;
      _os_log_impl(&dword_1883EA000, v37, v38, "%s data couldn't be parsed as an encoded %s", v39, 0x16u);
      swift_arrayDestroy();
      sub_1883F7B60();
      sub_1883F7B60();
    }

    else
    {
    }

    sub_1883FF188();
    v47(v36, v53);
    sub_18840E840(v58, &qword_1EA90E328, &qword_1886FAA20);
LABEL_12:
    type metadata accessor for CKSecureCodingBox();
    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_188499B68(&v55, v57);
  sub_188499B68(v57, v50 + OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped);
  sub_18840E840(v58, &qword_1EA90E328, &qword_1886FAA20);
  v34 = type metadata accessor for CKSecureCodingBox();
  sub_1883FDAD8(v34);
  v35 = objc_msgSendSuper2(&v54, sel_init);

  return v35;
}

uint64_t sub_1884B097C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  sub_1883FE5A0(v1 + OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped, v5);
  return sub_188445B70(v1 + v3, a1);
}

uint64_t sub_1884B09CC(uint64_t a1)
{
  sub_18840B008(a1);
  sub_1883F9C28();
  MEMORY[0x1EEE9AC00](v2);
  v4 = sub_1883F8978(v3, v13);
  v5(v4);
  v6 = sub_1883F92F0();
  sub_1884B192C(v6, v7, v8, v9, v10, v11);
  return sub_1883FE944(v1);
}

uint64_t sub_1884B0AE0(void *a1)
{
  v3 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  sub_1883FE5A0(v1 + OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped, v12);
  sub_188445B70(v1 + v3, v13);
  sub_188400B68(v13, v13[3]);
  v4 = type metadata accessor for JSONEncoder();
  sub_1883FEA90(v4);
  JSONEncoder.init()();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  sub_1883FE944(v13);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = sub_1883F95F8();
  v10 = MEMORY[0x18CFD5010](v9, 0xE700000000000000);
  [a1 encodeObject:isa forKey:v10];

  return sub_188423CCC(v5, v7);
}

uint64_t sub_1884B0C0C()
{
  v1 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  sub_1883FE5A0(v0 + OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped, v7);
  sub_188445B70(v0 + v1, v8);
  sub_188400B68(v8, v8[3]);
  v2 = type metadata accessor for JSONEncoder();
  sub_1883FEA90(v2);
  JSONEncoder.init()();
  dispatch thunk of JSONEncoder.encode<A>(_:)();

  sub_1883FE944(v8);
  countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
  v4 = sub_1883F7EE0();
  sub_188423CCC(v4, v5);
  return countAndFlagsBits;
}

uint64_t sub_1884B0D10(uint64_t a1, uint64_t *a2)
{
  sub_188445B70(a1, v15);
  v3 = *a2;
  v4 = v16;
  v5 = v17;
  v6 = v18;
  v7 = v19;
  v8 = sub_1884B1A8C(v15, v16);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  sub_1884B192C(v11, v3, v4, v5, v6, v7);
  return sub_1883FE944(v15);
}

id CKSecureCodingBox.__allocating_init(wrapping:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1884B1A8C(a1, a1[3]);
  sub_1883F9C28();
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1883F8978(v5, v16);
  v7(v6);
  v8 = sub_1883F92F0();
  v14 = sub_1884B19D8(v8, v9, v10, v11, v12, v13);
  sub_1883FE944(a1);
  return v14;
}

uint64_t sub_1884B1028(uint64_t a1)
{
  swift_getObjectType();
  sub_1884B1B70(a1, v22, &qword_1EA90DD10, &qword_1886F8770);
  if (!v23)
  {
    sub_18840E840(v22, &qword_1EA90DD10, &qword_1886F8770);
    goto LABEL_5;
  }

  v2 = swift_dynamicCast();
  if ((v2 & 1) == 0)
  {
LABEL_5:
    v17 = 0;
    return v17 & 1;
  }

  v3 = v20[0];
  sub_1883F7BE8(v2, v21);
  v4 = sub_1883F7EE0();
  sub_188400B68(v4, v5);
  sub_1883F9C28();
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1883F7434(v7, v19[0]);
  v9(v8);
  sub_1883F7EE0();
  v10 = AnyHashable.init<A>(_:)();
  sub_1883F7BE8(v10, v19);
  v11 = sub_1883F7EE0();
  sub_188400B68(v11, v12);
  sub_1883F9C28();
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v13);
  v15 = sub_1883F7434(v14, v19[0]);
  v16(v15);
  sub_1883F7EE0();
  AnyHashable.init<A>(_:)();
  v17 = MEMORY[0x18CFD58F0](v22, v20);

  sub_1884889C4(v20);
  sub_1884889C4(v22);
  return v17 & 1;
}

uint64_t sub_1884B12F8(uint64_t a1)
{
  sub_1883F7BE8(a1, v10);
  v1 = sub_1883F7EE0();
  sub_188400B68(v1, v2);
  sub_1883F9C28();
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v3);
  v5 = sub_1883F7434(v4, v9[0]);
  v6(v5);
  sub_1883F7EE0();
  AnyHashable.init<A>(_:)();
  v7 = AnyHashable.hashValue.getter();
  sub_1884889C4(v9);
  return v7;
}

id CKSecureCodingBox.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKSecureCodingBox.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKSecureCodingBox();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CKSecureCodingBox.propertyDescriptions.getter()
{
  v1 = type metadata accessor for OSLogPrivacy();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_18844E6FC(&qword_1EA90E340, &qword_1886F9FF0);
  type metadata accessor for PropertyDescription();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1886F7400;
  v3 = (v0 + OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped);
  sub_1883FE5A0(v3, v8);
  v4 = v3[3];
  sub_188400B68(v3, v4);
  v7[3] = v4;
  sub_188403664(v7);
  sub_1883F7930();
  (*(v5 + 16))();
  static OSLogPrivacy.auto.getter();
  sub_1883F95F8();
  PropertyDescription.init(_:_:privacy:)();
  return v2;
}

id sub_1884B1764(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x18CFD5010](v5, v7);

  return v8;
}

uint64_t CKSecureCodingBox.description.getter()
{
  v13 = 0;
  v14 = 0xE000000000000000;
  MEMORY[0x18CFD5140](60, 0xE100000000000000);
  swift_getObjectType();
  v1 = _typeName(_:qualified:)();
  MEMORY[0x18CFD5140](v1);

  MEMORY[0x18CFD5140](8250, 0xE200000000000000);
  v12[0] = v0;
  _print_unlocked<A, B>(_:_:)();
  v2 = MEMORY[0x18CFD5140](8251, 0xE200000000000000);
  sub_1883F7BE8(v2, v12);
  v3 = sub_1883F7EE0();
  sub_188400B68(v3, v4);
  sub_1883F9C28();
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1883F7434(v6, v11);
  v8(v7);
  sub_1883F7EE0();
  v9 = String.init<A>(describing:)();
  MEMORY[0x18CFD5140](v9);

  MEMORY[0x18CFD5140](62, 0xE100000000000000);
  return v13;
}

uint64_t sub_1884B192C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  sub_188403664(&v10);
  sub_1883F7930();
  (*(v7 + 32))();
  v8 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  swift_beginAccess();
  sub_1883FE944((a2 + v8));
  sub_188499B68(&v10, a2 + v8);
  return swift_endAccess();
}

id sub_1884B19D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = a6;
  v9 = sub_188403664(v13);
  (*(*(a3 - 8) + 32))(v9, a1, a3);
  sub_188445B70(v13, a2 + OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped);
  v12.receiver = a2;
  v12.super_class = type metadata accessor for CKSecureCodingBox();
  v10 = objc_msgSendSuper2(&v12, sel_init);
  sub_1883FE944(v13);
  return v10;
}

uint64_t sub_1884B1A8C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_1884B1ADC()
{
  result = qword_1EA90C330;
  if (!qword_1EA90C330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA90C330);
  }

  return result;
}

uint64_t sub_1884B1B20(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x18CFD7E80);
  }

  return result;
}

uint64_t sub_1884B1B70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_18844E6FC(a3, a4);
  sub_1883F7930();
  v5 = sub_1883F7EE0();
  v6(v5);
  return a2;
}

unint64_t sub_1884B1BD4()
{
  result = qword_1EA90E348;
  if (!qword_1EA90E348)
  {
    type metadata accessor for CKSecureCodingBox();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E348);
  }

  return result;
}

id static CloudCoreEntryPoint.makeContainer<A>(sessionID:sessionConfiguration:anySessionAcquiredInfo:testDeviceReferenceProtocol:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = type metadata accessor for SessionID();
  sub_1883F70DC();
  v29 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1883F7100();
  v30 = v9 - v8;
  v10 = type metadata accessor for AnySessionAcquiredInfo();
  sub_1883F70DC();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1883F7100();
  v16 = v15 - v14;
  v17 = type metadata accessor for AnySessionConfiguration();
  MEMORY[0x1EEE9AC00](v17 - 8);
  sub_1883F7100();
  v18 = type metadata accessor for ContainerID();
  MEMORY[0x1EEE9AC00](v18 - 8);
  sub_1883F7100();
  v21 = v20 - v19;
  sub_1884B208C();
  dispatch thunk of SessionConfiguration.containerID.getter();
  v22 = CKContainerID.init(_:)(v21);
  dispatch thunk of SessionConfiguration.asAnySessionConfiguration.getter();
  (*(v12 + 16))(v16, a3, v10);
  v23 = objc_allocWithZone(type metadata accessor for CloudCoreContainerOptions());
  swift_unknownObjectRetain();
  sub_1884AB648();
  v25 = v24;
  (*(v29 + 16))(v30, a1, v32);
  v26 = objc_allocWithZone(type metadata accessor for CloudCoreContainer());
  v27 = sub_1884A6B24(v22, v30, v25);
  sub_1884B2154(&qword_1EA90C2D8, type metadata accessor for CloudCoreContainer, &unk_1886FA810);
  return v27;
}

unint64_t sub_1884B208C()
{
  result = qword_1EA90C8C0;
  if (!qword_1EA90C8C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA90C8C0);
  }

  return result;
}

uint64_t CloudCoreEntryPoint.sessionAcquisitionManager.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for CKSessionAcquisitionManager();
  inited = swift_initStaticObject();
  a1[3] = v2;
  result = sub_1884B2154(qword_1EA90C1E8, type metadata accessor for CKSessionAcquisitionManager, &protocol conformance descriptor for CKSessionAcquisitionManager);
  a1[4] = result;
  *a1 = inited;
  return result;
}

uint64_t sub_1884B2154(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id CloudCoreEntryPoint.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CloudCoreEntryPoint.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CloudCoreEntryPoint.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void CKQueryOperation.desiredKeys.setter(uint64_t a1)
{
  if (a1)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v1 setDesiredKeys_];
}

id CKQueryOperation.recordMatchedBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    sub_1883F71C0();
    v9[1] = 1107296256;
    v9[2] = sub_1884953A4;
    v9[3] = &unk_1EFA291C0;
    v7 = _Block_copy(v9);

    [v3 setRecordMatchedBlock_];
    _Block_release(v7);
    return sub_1883F5BA0(a1, a2);
  }

  else
  {

    return [v2 setRecordMatchedBlock_];
  }
}

id CKQueryOperation.queryResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1883F8708();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    sub_1883F71C0();
    v8[1] = 1107296256;
    v8[2] = sub_18845C9D8;
    v8[3] = &unk_1EFA29210;
    v6 = _Block_copy(v8);

    [v2 setQueryCompletionBlock_];
    _Block_release(v6);
    [v2 setCanDropItemResultsEarly_];
    return sub_1883F5BA0(a1, a2);
  }

  else
  {

    return [v2 setQueryCompletionBlock_];
  }
}

void (*CKQueryOperation.desiredKeys.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1884B2BF8(v1);
  return sub_1884B25F0;
}

void sub_1884B25F0(uint64_t *a1, char a2)
{
  if (a2)
  {

    CKQueryOperation.desiredKeys.setter(v2);
  }

  else
  {
    CKQueryOperation.desiredKeys.setter(*a1);
  }
}

uint64_t (*CKQueryOperation.recordMatchedBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 recordMatchedBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188495208;
    *(v4 + 24) = v3;
    return sub_188495210;
  }

  return result;
}

uint64_t (*sub_1884B26E4@<X0>(uint64_t (**a1)()@<X8>))(uint64_t a1, uint64_t a2, char a3)
{
  result = CKQueryOperation.recordMatchedBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884B2D14;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884B2754(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1884B2D08;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKQueryOperation.recordMatchedBlock.setter(v4, v3);
}

uint64_t (*CKQueryOperation.recordMatchedBlock.modify(uint64_t (**a1)(uint64_t a1, uint64_t a2, char a3)))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = CKQueryOperation.recordMatchedBlock.getter();
  a1[1] = v3;
  return sub_1884B282C;
}

uint64_t (*CKQueryOperation.queryResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 queryCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884957EC;
    *(v4 + 24) = v3;
    return sub_1884B2C50;
  }

  return result;
}

uint64_t (*sub_1884B2908@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = CKQueryOperation.queryResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884B2CD4;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884B2978(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1884B2C94;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKQueryOperation.queryResultBlock.setter(v4, v3);
}

void sub_1884B2A08(void *a1, void *a2, void (*a3)(void *, uint64_t))
{
  if (!a2)
  {
    goto LABEL_4;
  }

  swift_getErrorValue();
  v6 = a2;
  if (sub_1885164AC(v8))
  {

LABEL_4:
    a3(a1, 0);
    return;
  }

  v7 = a2;
  a3(a2, 1);
}

uint64_t (*CKQueryOperation.queryResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2)))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = CKQueryOperation.queryResultBlock.getter();
  a1[1] = v3;
  return sub_1884B2B24;
}

uint64_t sub_1884B2B64(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = sub_1883F7BC0();
    v11 = v5;
    v6(v4);
    v7 = sub_1883F7BC0();
    a3(v7);
    v8 = sub_1883F7BC0();

    return v11(v8);
  }

  else
  {
    v10 = sub_1883F7BC0();
    return a3(v10);
  }
}

uint64_t sub_1884B2BF8(void *a1)
{
  v1 = [a1 desiredKeys];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1884B2C50(uint64_t a1, char a2)
{
  v3 = a1;
  if (a2)
  {
    a1 = 0;
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return (*(v2 + 16))(a1, v4);
}

uint64_t sub_1884B2C94(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

void CKFetchRecordsOperation.desiredKeys.setter(uint64_t a1)
{
  if (a1)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v1 setDesiredKeys_];
}

id CKFetchRecordsOperation.perRecordResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    v5[2] = v2;
    v5[3] = a1;
    v5[4] = a2;
    sub_1883F71C0();
    v13[1] = 1107296256;
    v13[2] = sub_1884B3490;
    v13[3] = &unk_1EFA293A0;
    v6 = _Block_copy(v13);
    v7 = v2;
    v8 = sub_1883F7E8C();
    sub_1883F5CC0(v8, v9);

    [v7 setPerRecordCompletionBlock_];
    _Block_release(v6);
    v10 = sub_1883F7E8C();
    return sub_1883F5BA0(v10, v11);
  }

  else
  {

    return [v2 setPerRecordCompletionBlock_];
  }
}

id CKFetchRecordsOperation.fetchRecordsResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1883F8708();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    sub_1883F71C0();
    v10[1] = 1107296256;
    v10[2] = sub_1884B2FD4;
    v10[3] = &unk_1EFA293F0;
    v6 = _Block_copy(v10);

    [v2 setFetchRecordsCompletionBlock_];
    _Block_release(v6);
    [v2 setCanDropItemResultsEarly_];
    v7 = sub_1883F7E8C();
    return sub_1883F5BA0(v7, v8);
  }

  else
  {

    return [v2 setFetchRecordsCompletionBlock_];
  }
}

uint64_t sub_1884B2FD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
    sub_1883F4C5C(0, &qword_1EA90C758, off_1E70BA5F8);
    sub_1884B3B58();
    sub_1883F7BC0();
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a3;
  v6 = sub_1883F7E8C();
  v4(v6);
}

void (*CKFetchRecordsOperation.desiredKeys.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1884B2BF8(v1);
  return sub_1884B311C;
}

void sub_1884B311C(uint64_t *a1, char a2)
{
  if (a2)
  {

    CKFetchRecordsOperation.desiredKeys.setter(v2);
  }

  else
  {
    CKFetchRecordsOperation.desiredKeys.setter(*a1);
  }
}

uint64_t (*CKFetchRecordsOperation.perRecordResultBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 perRecordCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188495208;
    *(v4 + 24) = v3;
    return sub_1884B3AFC;
  }

  return result;
}

uint64_t (*sub_1884B3210@<X0>(uint64_t (**a1)(uint64_t a1, uint64_t a2)@<X8>))()
{
  result = CKFetchRecordsOperation.perRecordResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884B2D14;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884B3280(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1884B2D08;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKFetchRecordsOperation.perRecordResultBlock.setter(v4, v3);
}

void sub_1884B3310(void *a1, void *a2, void *a3, uint64_t a4, void (*a5)(id, void *, uint64_t))
{
  if (a2)
  {
    if (a3)
    {
      v8 = a2;
      v9 = a3;
      a5(v8, a3, 1);

      v10 = a3;

LABEL_5:

      return;
    }

    if (a1)
    {
      v14 = a2;
      v12 = a1;
      a5(v14, a1, 0);

      v10 = v14;

      goto LABEL_5;
    }

    type metadata accessor for CKError(0);
    v13 = a2;
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_18847A4EC();
    _BridgedStoredNSError.init(_:userInfo:)();
    a5(v13, v15, 1);
  }
}

void sub_1884B3490(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

uint64_t (*CKFetchRecordsOperation.perRecordResultBlock.modify(uint64_t (**a1)(uint64_t a1, uint64_t a2, char a3)))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = CKFetchRecordsOperation.perRecordResultBlock.getter();
  a1[1] = v3;
  return sub_1884B3580;
}

uint64_t (*CKFetchRecordsOperation.fetchRecordsResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 fetchRecordsCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884B3B44;
    *(v4 + 24) = v3;
    return sub_1884B3B4C;
  }

  return result;
}

uint64_t (*sub_1884B365C@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>))()
{
  result = CKFetchRecordsOperation.fetchRecordsResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_18847A480;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884B36CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_18847A474;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKFetchRecordsOperation.fetchRecordsResultBlock.setter(v4, v3);
}

void sub_1884B375C(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
    sub_1883F4C5C(0, &qword_1EA90C758, off_1E70BA5F8);
    sub_1884B3B58();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_1884B383C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (qword_1ED4B5C68 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1883FDE5C(v6, qword_1ED4B5C70);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    MEMORY[0x18CFD7E80](v9, -1, -1);
  }

  if (a2)
  {
    return a3(0, a1);
  }

  sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  sub_1883F4C5C(0, &qword_1EA90C758, off_1E70BA5F8);
  sub_1884B3B58();
  v11 = Dictionary.init(dictionaryLiteral:)();
  a3(v11, 0);
}

uint64_t (*CKFetchRecordsOperation.fetchRecordsResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2)))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = CKFetchRecordsOperation.fetchRecordsResultBlock.getter();
  a1[1] = v3;
  return sub_1884B3A28;
}

uint64_t sub_1884B3A68(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = sub_1883F7BC0();
    v11 = v5;
    v6(v4);
    v7 = sub_1883F7BC0();
    a3(v7);
    v8 = sub_1883F7BC0();

    return v11(v8);
  }

  else
  {
    v10 = sub_1883F7BC0();
    return a3(v10);
  }
}

uint64_t sub_1884B3AFC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v6 = 0;
    v7 = a2;
  }

  else
  {
    v6 = a2;
    v7 = 0;
  }

  return (*(v3 + 16))(v6, a1, v7);
}

unint64_t sub_1884B3B58()
{
  result = qword_1EA90C7E0;
  if (!qword_1EA90C7E0)
  {
    sub_1883F4C5C(255, &qword_1EA90CA70, off_1E70BA618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C7E0);
  }

  return result;
}

void __swiftcall CKFetchRecordZoneChangesConfiguration.init(previousServerChangeToken:resultsLimit:desiredKeys:)(CKFetchRecordZoneChangesConfiguration *__return_ptr retstr, CKServerChangeToken_optional previousServerChangeToken, Swift::Int_optional resultsLimit, Swift::OpaquePointer_optional desiredKeys)
{
  value = resultsLimit.value;
  is_nil = previousServerChangeToken.is_nil;
  data = previousServerChangeToken.value._data;
  isa = previousServerChangeToken.value.super.isa;
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = v8;
  if (isa)
  {
    [v8 setPreviousServerChangeToken_];
  }

  if (!is_nil)
  {
    [v9 setResultsLimit_];
  }

  if (value)
  {
    CKFetchRecordZoneChangesConfiguration.desiredKeys.setter(value);
  }
}

void __swiftcall CKFetchRecordZoneChangesOperation.init(recordZoneIDs:configurationsByRecordZoneID:)(CKFetchRecordZoneChangesOperation *__return_ptr retstr, Swift::OpaquePointer_optional recordZoneIDs, Swift::OpaquePointer_optional configurationsByRecordZoneID)
{
  v3 = *&recordZoneIDs.is_nil;
  rawValue = recordZoneIDs.value._rawValue;
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = v5;
  if (rawValue)
  {
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    v7 = v6;
    sub_1883F7BC0();
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9 = v5;
    v8.super.isa = 0;
  }

  [v6 setRecordZoneIDs_];

  if (v3)
  {
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    sub_1883F4C5C(0, &qword_1EA90CA88, off_1E70BA2D8);
    sub_18841A9C8();
    v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  [v6 setConfigurationsByRecordZoneID_];
}

void CKFetchRecordZoneChangesOperation.recordWasChangedBlock.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t a1, void *a2, void *a3, void *a4), void *a12, void (*a13)(uint64_t a1, void *a2, void *a3), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1883F82A4();
  a21 = v23;
  a22 = v26;
  if (v24)
  {
    v27 = v25;
    v28 = v24;
    v29 = sub_1883FEAA8();
    [v29 v30];
    sub_1883F8708();
    v31 = swift_allocObject();
    *(v31 + 16) = v28;
    *(v31 + 24) = v27;
    a13 = sub_18849539C;
    a14 = v31;
    sub_1883F7188();
    sub_1883F8E8C();
    a11 = sub_1884953A4;
    a12 = &unk_1EFA29580;
    _Block_copy(&a9);
    sub_1883F899C();

    sub_1883F7A00(v32, sel_setRecordWasChangedBlock_);
    _Block_release(v22);
    sub_1883FDAEC();
    sub_1883FE68C();
  }

  else
  {
    sub_1883FEAA8();
    sub_1883FE68C();

    [v33 v34];
  }
}

void CKFetchRecordZoneChangesOperation.recordWithIDWasDeletedBlock.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t a1, void *a2, uint64_t a3), void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1883F82A4();
  a21 = v25;
  a22 = v26;
  sub_1883F9DA4();
  if (v27)
  {
    a13 = v23;
    a14 = v22;
    sub_1883F7188();
    sub_1883F8E8C();
    a11 = sub_1884B4610;
    a12 = &unk_1EFA295A8;
    _Block_copy(&a9);
    sub_1883F899C();
  }

  else
  {
    v24 = 0;
  }

  sub_1883F7A00(v27, sel_setRecordWithIDWasDeletedBlock_);
  _Block_release(v24);
  sub_1883FDAEC();
  sub_1883FE68C();
}

void CKFetchRecordZoneChangesOperation.recordZoneFetchResultBlock.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void (*a13)(void *a1, void *a2, uint64_t a3, unint64_t a4, char a5, void *a6), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1883F82A4();
  a21 = v24;
  a22 = v27;
  if (v25)
  {
    v28 = v26;
    v29 = v25;
    [v22 setErrorReportingStyle_];
    sub_1883F8708();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v28;
    a13 = sub_1884B5B80;
    a14 = v30;
    sub_1883F7188();
    sub_1883FA158();
    a11 = v31;
    a12 = &unk_1EFA295F8;
    _Block_copy(&a9);
    sub_1883F899C();

    [v22 setRecordZoneFetchCompletionBlock_];
    _Block_release(v23);
    [v22 setCanDropItemResultsEarly_];
    sub_1883F5BA0(v29, v28);
    sub_1883FE68C();
  }

  else
  {
    sub_1883FE68C();

    [v32 v33];
  }
}

void CKFetchRecordZoneChangesOperation.fetchRecordZoneChangesResultBlock.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void (*a13)(void *a1), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1883F82A4();
  a21 = v23;
  a22 = v26;
  if (v24)
  {
    v27 = v25;
    v28 = v24;
    v29 = sub_1883FEAA8();
    [v29 v30];
    sub_1883F8708();
    v31 = swift_allocObject();
    *(v31 + 16) = v28;
    *(v31 + 24) = v27;
    a13 = sub_1884B5B88;
    a14 = v31;
    sub_1883F7188();
    sub_1883F930C();
    a11 = v32;
    a12 = &unk_1EFA29648;
    _Block_copy(&a9);
    sub_1883F899C();

    sub_1883F7A00(v33, sel_setFetchRecordZoneChangesCompletionBlock_);
    _Block_release(v22);
    sub_1883FDAEC();
    sub_1883FE68C();
  }

  else
  {
    sub_1883FEAA8();
    sub_1883FE68C();

    [v34 v35];
  }
}

void CKFetchRecordZoneChangesOperation.zoneAttributesChangedBlock.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(), void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1883F82A4();
  a21 = v25;
  a22 = v26;
  sub_1883F9DA4();
  if (v27)
  {
    a13 = v23;
    a14 = v22;
    sub_1883F7188();
    sub_1883F8E8C();
    a11 = sub_1884B5E6C;
    a12 = &unk_1EFA29670;
    _Block_copy(&a9);
    sub_1883F899C();
  }

  else
  {
    v24 = 0;
  }

  sub_1883F7A00(v27, sel_setZoneAttributesChangedBlock_);
  _Block_release(v24);
  sub_1883FDAEC();
  sub_1883FE68C();
}

uint64_t (*CKFetchRecordZoneChangesOperation.undeprecated_recordChangedBlock.getter())()
{
  result = [v0 recordChangedBlock];
  if (result)
  {
    sub_1883F7B88();
    v2 = swift_allocObject();
    sub_1883FF194(v2);
    return sub_1884B5E64;
  }

  return result;
}

uint64_t (*sub_1884B4228@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = CKFetchRecordZoneChangesOperation.undeprecated_recordChangedBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884B5E68;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void CKFetchRecordZoneChangesOperation.undeprecated_recordChangedBlock.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(), void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1883F82A4();
  a21 = v25;
  a22 = v26;
  sub_1883F9DA4();
  if (v27)
  {
    a13 = v23;
    a14 = v22;
    sub_1883F7188();
    sub_1883F8E8C();
    a11 = sub_1884B5E6C;
    a12 = &unk_1EFA296C0;
    _Block_copy(&a9);
    sub_1883F899C();
  }

  else
  {
    v24 = 0;
  }

  sub_1883F7A00(v27, sel_setRecordChangedBlock_);
  _Block_release(v24);
  sub_1883FDAEC();
  sub_1883FE68C();
}

uint64_t CKFetchRecordZoneChangesOperation.undeprecated_recordChangedBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKFetchRecordZoneChangesOperation.undeprecated_recordChangedBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

void (*CKFetchRecordZoneChangesOperation.recordWithIDWasDeletedBlock.getter())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [v0 recordWithIDWasDeletedBlock];
  if (result)
  {
    sub_1883F7B88();
    v2 = swift_allocObject();
    sub_1883FF194(v2);
    return sub_1884B5B90;
  }

  return result;
}

uint64_t (*sub_1884B44A8@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = CKFetchRecordZoneChangesOperation.recordWithIDWasDeletedBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884B5DF0;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_1884B45A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x18CFD5010](a2, a3);
  (*(a4 + 16))(a4, a1, v6);
}

void sub_1884B4610(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = a2;
  v4();
}

uint64_t CKFetchRecordZoneChangesOperation.recordWithIDWasDeletedBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKFetchRecordZoneChangesOperation.recordWithIDWasDeletedBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t (*CKFetchRecordZoneChangesOperation.zoneAttributesChangedBlock.getter())()
{
  result = [v0 zoneAttributesChangedBlock];
  if (result)
  {
    sub_1883F7B88();
    v2 = swift_allocObject();
    sub_1883FF194(v2);
    return sub_1884B5B98;
  }

  return result;
}

uint64_t (*sub_1884B478C@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = CKFetchRecordZoneChangesOperation.zoneAttributesChangedBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884B5D84;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t CKFetchRecordZoneChangesOperation.zoneAttributesChangedBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKFetchRecordZoneChangesOperation.zoneAttributesChangedBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t (*CKFetchRecordZoneChangesOperation.recordWasChangedBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 recordWasChangedBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188495208;
    *(v4 + 24) = v3;
    return sub_188495210;
  }

  return result;
}

uint64_t (*sub_1884B49A4@<X0>(uint64_t (**a1)(uint64_t a1, uint64_t a2)@<X8>))(uint64_t a1, uint64_t a2, char a3)
{
  result = CKFetchRecordZoneChangesOperation.recordWasChangedBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884B2D14;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t CKFetchRecordZoneChangesOperation.recordWasChangedBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKFetchRecordZoneChangesOperation.recordWasChangedBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

void (*CKFetchRecordZoneChangesOperation.undeprecated_recordZoneFetchCompletionBlock.getter())(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6)
{
  result = [v0 recordZoneFetchCompletionBlock];
  if (result)
  {
    sub_1883F7B88();
    v2 = swift_allocObject();
    sub_1883FF194(v2);
    return sub_1884B5BAC;
  }

  return result;
}

uint64_t (*sub_1884B4B90@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = CKFetchRecordZoneChangesOperation.undeprecated_recordZoneFetchCompletionBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884B5D04;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1884B4C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t (*a7)(uint64_t *, uint64_t *, void *, char *, uint64_t *))
{
  v12 = a1;
  v10[1] = a4;
  v11 = a2;
  v10[0] = a3;
  v9 = a5;
  v8 = a6;
  return a7(&v12, &v11, v10, &v9, &v8);
}

void CKFetchRecordZoneChangesOperation.undeprecated_recordZoneFetchCompletionBlock.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1883F82A4();
  a21 = v25;
  a22 = v26;
  sub_1883F9DA4();
  if (v27)
  {
    a13 = v23;
    a14 = v22;
    sub_1883F7188();
    sub_1883FA158();
    a11 = v28;
    a12 = &unk_1EFA297B0;
    _Block_copy(&a9);
    sub_1883F899C();
  }

  else
  {
    v24 = 0;
  }

  sub_1883F7A00(v27, sel_setRecordZoneFetchCompletionBlock_);
  _Block_release(v24);
  sub_1883FDAEC();
  sub_1883FE68C();
}

void sub_1884B4D70(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  if (a4 >> 60 == 15)
  {
    isa = 0;
    if (a6)
    {
LABEL_3:
      v13 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  v14 = v13;
  (*(a7 + 16))(a7, a1, a2, isa, a5 & 1);
}

uint64_t sub_1884B4E30(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v8 = a4;
  v11 = *(a1 + 32);
  if (a4)
  {

    v12 = a2;
    v13 = a3;
    v14 = v8;
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {

    v17 = a2;
    v18 = a3;
    v16 = 0xF000000000000000;
  }

  v19 = a6;
  v11(a2, a3, v8, v16, a5, a6);

  sub_18841BA74(v8, v16);
}

uint64_t CKFetchRecordZoneChangesOperation.undeprecated_recordZoneFetchCompletionBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKFetchRecordZoneChangesOperation.undeprecated_recordZoneFetchCompletionBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t (*CKFetchRecordZoneChangesOperation.recordZoneFetchResultBlock.getter())(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, __int16 a5)
{
  result = [v0 recordZoneFetchCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884B5E44;
    *(v4 + 24) = v3;
    return sub_1884B5BB4;
  }

  return result;
}

uint64_t (*sub_1884B5034@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = CKFetchRecordZoneChangesOperation.recordZoneFetchResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884B5CF4;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1884B5184(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, __int16 a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v7 = a2;
  if ((a5 & 0x100) != 0)
  {
    a2 = 0;
    a3 = 0;
    a4 = 0xF000000000000000;
    v8 = 0;
  }

  else
  {
    v8 = a5 & 1;
    v7 = 0;
  }

  return a6(a1, a2, a3, a4, v8, v7);
}

void sub_1884B51D8(void *a1, void *a2, uint64_t a3, unint64_t a4, char a5, void *a6, void (*a7)(void *, void *, uint64_t, unint64_t, uint64_t))
{
  v8 = a5;
  if (a6)
  {
    swift_getErrorValue();
    v14 = a6;
    if (!sub_1885164AC(v25[8]))
    {
      v20 = a6;
      a7(a1, a6, 0, 0, 256);

      v19 = a6;
      goto LABEL_7;
    }

    v26 = a6;
    v15 = a6;
    sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
    type metadata accessor for CKError(0);
    swift_dynamicCast();
    v16 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();

    if (v16)
    {
      sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
      sub_18841A9C8();
      v23 = a1;
      AnyHashable.init<A>(_:)();
      v17 = sub_18847E698(v25, v16);

      sub_1884889C4(v25);
      if (v17)
      {
        v18 = v17;
        a7(v23, v17, 0, 0, 256);

        v19 = v17;
LABEL_7:

        return;
      }
    }

    v8 = a5;
  }

  if (a2)
  {
    v21 = a2;
    sub_188424184(a3, a4);
    a7(a1, a2, a3, a4, v8 & 1);

    sub_18841BA74(a3, a4);
  }

  else
  {
    type metadata accessor for CKError(0);
    v26 = 1;
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_18847A4EC();
    _BridgedStoredNSError.init(_:userInfo:)();
    v22 = v25[0];
    a7(a1, v25[0], 0, 0, 256);
  }
}

uint64_t CKFetchRecordZoneChangesOperation.recordZoneFetchResultBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKFetchRecordZoneChangesOperation.recordZoneFetchResultBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

void (*CKFetchRecordZoneChangesOperation.undeprecated_fetchRecordZoneChangesCompletionBlock.getter())(uint64_t a1)
{
  result = [v0 fetchRecordZoneChangesCompletionBlock];
  if (result)
  {
    sub_1883F7B88();
    v2 = swift_allocObject();
    sub_1883FF194(v2);
    return sub_188412818;
  }

  return result;
}

uint64_t (*sub_1884B5568@<X0>(uint64_t (**a1)()@<X8>))(uint64_t a1)
{
  result = CKFetchRecordZoneChangesOperation.undeprecated_fetchRecordZoneChangesCompletionBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884B5CA0;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void CKFetchRecordZoneChangesOperation.undeprecated_fetchRecordZoneChangesCompletionBlock.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1883F82A4();
  a21 = v25;
  a22 = v26;
  sub_1883F9DA4();
  if (v27)
  {
    a13 = v23;
    a14 = v22;
    sub_1883F7188();
    sub_1883F930C();
    a11 = v28;
    a12 = &unk_1EFA29850;
    _Block_copy(&a9);
    sub_1883F899C();
  }

  else
  {
    v24 = 0;
  }

  sub_1883F7A00(v27, sel_setFetchRecordZoneChangesCompletionBlock_);
  _Block_release(v24);
  sub_1883FDAEC();
  sub_1883FE68C();
}

uint64_t CKFetchRecordZoneChangesOperation.undeprecated_fetchRecordZoneChangesCompletionBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKFetchRecordZoneChangesOperation.undeprecated_fetchRecordZoneChangesCompletionBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t (*CKFetchRecordZoneChangesOperation.fetchRecordZoneChangesResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 fetchRecordZoneChangesCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188412CC8;
    *(v4 + 24) = v3;
    return sub_1884B5BC8;
  }

  return result;
}

uint64_t (*sub_1884B5808@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>))()
{
  result = CKFetchRecordZoneChangesOperation.fetchRecordZoneChangesResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_18847A480;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_1884B5908(void *a1, void (*a2)(void *, uint64_t))
{
  if (!a1)
  {
    goto LABEL_4;
  }

  swift_getErrorValue();
  v4 = a1;
  if (sub_1885164AC(v6))
  {

LABEL_4:
    a2(0, 0);
    return;
  }

  v5 = a1;
  a2(a1, 1);
}

uint64_t CKFetchRecordZoneChangesOperation.fetchRecordZoneChangesResultBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKFetchRecordZoneChangesOperation.fetchRecordZoneChangesResultBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t sub_1884B5A44(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = sub_1883F7BC0();
    v11 = v5;
    v6(v4);
    v7 = sub_1883F7BC0();
    a3(v7);
    v8 = sub_1883F7BC0();

    return v11(v8);
  }

  else
  {
    v10 = sub_1883F7BC0();
    return a3(v10);
  }
}

void CKFetchRecordZoneChangesConfiguration.desiredKeys.setter(uint64_t a1)
{
  if (a1)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v1 setDesiredKeys_];
}

uint64_t sub_1884B5BC8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    a1 = 0;
  }

  return (*(v2 + 16))(a1);
}

uint64_t CKFetchRecordZoneChangesConfiguration.desiredKeys.modify(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1884B2BF8(v1);
  return sub_1883F7BCC();
}

void sub_1884B5C40(uint64_t *a1, char a2)
{
  if (a2)
  {

    CKFetchRecordZoneChangesConfiguration.desiredKeys.setter(v2);
  }

  else
  {
    CKFetchRecordZoneChangesConfiguration.desiredKeys.setter(*a1);
  }
}

uint64_t sub_1884B5CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v6 = *(v5 + 16);
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v9 = a5 & 0x1FF;
  v10 = a1;
  return v6(&v10, v8);
}

uint64_t sub_1884B5D4C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1884B5DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[1] = a3;
  v7 = a1;
  v6[0] = a2;
  return v4(&v7, v6);
}

void __swiftcall CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(CKModifyRecordsOperation *__return_ptr retstr, Swift::OpaquePointer_optional recordsToSave, Swift::OpaquePointer_optional recordIDsToDelete)
{
  v3 = *&recordsToSave.is_nil;
  rawValue = recordsToSave.value._rawValue;
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = v5;
  if (rawValue)
  {
    sub_1883F4C5C(0, &qword_1EA90C758, off_1E70BA5F8);
    v7 = v6;
    sub_1883F7BC0();
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9 = v5;
    v8.super.isa = 0;
  }

  [v6 setRecordsToSave_];

  if (v3)
  {
    sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
    v10.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  [v6 setRecordIDsToDelete_];
}

void CKModifyRecordsOperation.perRecordSaveBlock.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    sub_1883F8708();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v11[4] = sub_18849539C;
    v11[5] = v7;
    sub_1883F7188();
    v11[1] = 1107296256;
    v11[2] = sub_1884953A4;
    v11[3] = &unk_1EFA29B70;
    _Block_copy(v11);
    sub_1883F899C();

    [v4 setPerRecordSaveBlock_];
    _Block_release(v3);
    sub_1883F5BA0(a1, a2);
    sub_1883FE68C();
  }

  else
  {
    sub_1883FE68C();

    [v8 v9];
  }
}

void CKModifyRecordsOperation.perRecordDeleteBlock.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    sub_1883F8708();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v11[4] = sub_1884958AC;
    v11[5] = v7;
    sub_1883F7188();
    v11[1] = 1107296256;
    v11[2] = sub_1884958B4;
    v11[3] = &unk_1EFA29BC0;
    _Block_copy(v11);
    sub_1883F899C();

    [v4 setPerRecordDeleteBlock_];
    _Block_release(v3);
    sub_1883F5BA0(a1, a2);
    sub_1883FE68C();
  }

  else
  {
    sub_1883FE68C();

    [v8 v9];
  }
}

void CKModifyRecordsOperation.modifyRecordsResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v11[4] = sub_1884B6F50;
    v11[5] = v6;
    sub_1883F7188();
    sub_1883F9DB4();
    v11[2] = v7;
    v11[3] = &unk_1EFA29C10;
    _Block_copy(v11);
    sub_1883F899C();

    [v2 setModifyRecordsCompletionBlock_];
    _Block_release(v3);
    [v2 setCanDropItemResultsEarly_];
    sub_1883F5BA0(a1, a2);
    sub_1883FE68C();
  }

  else
  {
    sub_1883FE68C();

    [v8 v9];
  }
}

uint64_t sub_1884B62BC(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  v7 = a1;
  v5 = a2;
  v6 = a3 & 1;
  return a4(&v7, &v5);
}

uint64_t (*CKModifyRecordsOperation.perRecordSaveBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 perRecordSaveBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188495208;
    *(v4 + 24) = v3;
    return sub_188495210;
  }

  return result;
}

uint64_t (*sub_1884B639C@<X0>(uint64_t (**a1)()@<X8>))(uint64_t a1, uint64_t a2, char a3)
{
  result = CKModifyRecordsOperation.perRecordSaveBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_188495AA8;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_1884B640C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_188495A5C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  CKModifyRecordsOperation.perRecordSaveBlock.setter(v4, v3);
}

uint64_t CKModifyRecordsOperation.perRecordSaveBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifyRecordsOperation.perRecordSaveBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t (*CKModifyRecordsOperation.perRecordDeleteBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 perRecordDeleteBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884957EC;
    *(v4 + 24) = v3;
    return sub_1884957F4;
  }

  return result;
}

uint64_t (*sub_1884B65B4@<X0>(uint64_t (**a1)()@<X8>))(uint64_t a1, uint64_t a2, char a3)
{
  result = CKModifyRecordsOperation.perRecordDeleteBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_188495AEC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_1884B6624(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_188495AE8;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  CKModifyRecordsOperation.perRecordDeleteBlock.setter(v4, v3);
}

uint64_t CKModifyRecordsOperation.perRecordDeleteBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifyRecordsOperation.perRecordDeleteBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

void (*CKModifyRecordsOperation.undeprecated_modifyRecordsCompletionBlock.getter())(objc_class *a1, objc_class *a2, uint64_t a3)
{
  result = [v0 modifyRecordsCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    *(swift_allocObject() + 16) = v2;
    return sub_1884B6F58;
  }

  return result;
}

uint64_t (*sub_1884B67A4@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = CKModifyRecordsOperation.undeprecated_modifyRecordsCompletionBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884B7088;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_1884B6814(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1884B7080;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  CKModifyRecordsOperation.undeprecated_modifyRecordsCompletionBlock.setter(v4, v3);
}

uint64_t sub_1884B68A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *, uint64_t *))
{
  v6 = a2;
  v7 = a1;
  v5 = a3;
  return a4(&v7, &v6, &v5);
}

void CKModifyRecordsOperation.undeprecated_modifyRecordsCompletionBlock.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    v8[4] = a1;
    v8[5] = a2;
    sub_1883F7188();
    sub_1883F9DB4();
    v8[2] = v7;
    v8[3] = &unk_1EFA29D00;
    _Block_copy(v8);
    sub_1883F899C();
  }

  else
  {
    v3 = 0;
  }

  [v4 setModifyRecordsCompletionBlock_];
  _Block_release(v3);
  sub_1883F5BA0(a1, a2);
  sub_1883FE68C();
}

void sub_1884B698C(objc_class *a1, Class a2, uint64_t a3, uint64_t a4)
{
  isa = a1;
  if (a1)
  {
    sub_1883F4C5C(0, &qword_1EA90C758, off_1E70BA5F8);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
    a2 = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a3)
  {
    v8 = _convertErrorToNSError(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, isa, a2);
}

uint64_t sub_1884B6A70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_1883F4C5C(0, &qword_1EA90C758, off_1E70BA5F8);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a3)
  {
    sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a4;
  v7(v6, a3, a4);
}

uint64_t CKModifyRecordsOperation.undeprecated_modifyRecordsCompletionBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifyRecordsOperation.undeprecated_modifyRecordsCompletionBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t (*CKModifyRecordsOperation.modifyRecordsResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 modifyRecordsCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884B70C8;
    *(v4 + 24) = v3;
    return sub_1884B6F60;
  }

  return result;
}

uint64_t (*sub_1884B6C68@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>))()
{
  result = CKModifyRecordsOperation.modifyRecordsResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_18847A480;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_1884B6CD8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_18847A474;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  CKModifyRecordsOperation.modifyRecordsResultBlock.setter(v4, v3);
}

uint64_t sub_1884B6D68(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (qword_1ED4B5C68 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1883FDE5C(v6, qword_1ED4B5C70);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    MEMORY[0x18CFD7E80](v9, -1, -1);
  }

  if (a2)
  {
    v10 = 0;
    v11 = 0;
    v12 = a1;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];
    v12 = 0;
  }

  return a3(v10, v11, v12);
}

void sub_1884B6E90(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *, uint64_t))
{
  if (!a3)
  {
    goto LABEL_4;
  }

  swift_getErrorValue();
  v6 = a3;
  if (sub_1885164AC(v8))
  {

LABEL_4:
    a4(0, 0);
    return;
  }

  v7 = a3;
  a4(a3, 1);
}

uint64_t CKModifyRecordsOperation.modifyRecordsResultBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifyRecordsOperation.modifyRecordsResultBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t sub_1884B6FEC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = sub_1883F7BC0();
    v11 = v5;
    v6(v4);
    v7 = sub_1883F7BC0();
    a3(v7);
    v8 = sub_1883F7BC0();

    return v11(v8);
  }

  else
  {
    v10 = sub_1883F7BC0();
    return a3(v10);
  }
}

id CKAcceptSharesOperation.perShareResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    sub_1883F71C0();
    v9[1] = 1107296256;
    v9[2] = sub_1884953A4;
    v9[3] = &unk_1EFA29EE0;
    v7 = _Block_copy(v9);

    [v3 setPerShareCompletionBlock_];
    _Block_release(v7);
    return sub_1883F5BA0(a1, a2);
  }

  else
  {

    return [v2 setPerShareCompletionBlock_];
  }
}

id CKAcceptSharesOperation.acceptSharesResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1883F8708();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    sub_1883F71C0();
    v8[1] = 1107296256;
    v8[2] = sub_1884C0074;
    v8[3] = &unk_1EFA29F30;
    v6 = _Block_copy(v8);

    [v2 setAcceptSharesCompletionBlock_];
    _Block_release(v6);
    [v2 setCanDropItemResultsEarly_];
    return sub_1883F5BA0(a1, a2);
  }

  else
  {

    return [v2 setAcceptSharesCompletionBlock_];
  }
}

uint64_t (*CKAcceptSharesOperation.perShareResultBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 perShareCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188495208;
    *(v4 + 24) = v3;
    return sub_188495210;
  }

  return result;
}

uint64_t (*sub_1884B73AC@<X0>(void *a1@<X8>))(uint64_t a1, uint64_t a2, char a3)
{
  result = CKAcceptSharesOperation.perShareResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_188495AAC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884B741C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_188495A60;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKAcceptSharesOperation.perShareResultBlock.setter(v4, v3);
}

void sub_1884B74AC(uint64_t a1, void *a2, id a3, void (*a4)(uint64_t, void *, uint64_t))
{
  if (a2)
  {
    v10 = a2;
    a4(a1, a2, 0);
    v7 = v10;

LABEL_4:

    return;
  }

  if (a3)
  {
    v9 = a3;
    a4(a1, a3, 1);
    v7 = a3;

    goto LABEL_4;
  }

  type metadata accessor for CKError(0);
  sub_188498E9C(MEMORY[0x1E69E7CC0]);
  sub_18847A4EC();
  _BridgedStoredNSError.init(_:userInfo:)();
  a4(a1, v11, 1);
}

uint64_t (*CKAcceptSharesOperation.perShareResultBlock.modify(uint64_t (**a1)(uint64_t a1, uint64_t a2, char a3)))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = CKAcceptSharesOperation.perShareResultBlock.getter();
  a1[1] = v3;
  return sub_1884B7644;
}

uint64_t (*CKAcceptSharesOperation.acceptSharesResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 acceptSharesCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188412818;
    *(v4 + 24) = v3;
    return sub_1884B5BC8;
  }

  return result;
}

uint64_t (*sub_1884B7720@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>))(uint64_t a1, char a2)
{
  result = CKAcceptSharesOperation.acceptSharesResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_18847A480;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884B7790(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_18847A474;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKAcceptSharesOperation.acceptSharesResultBlock.setter(v4, v3);
}

uint64_t (*CKAcceptSharesOperation.acceptSharesResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2)))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = CKAcceptSharesOperation.acceptSharesResultBlock.getter();
  a1[1] = v3;
  return sub_1884B7868;
}

uint64_t sub_1884B78A8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = sub_1883F7BC0();
    v11 = v5;
    v6(v4);
    v7 = sub_1883F7BC0();
    a3(v7);
    v8 = sub_1883F7BC0();

    return v11(v8);
  }

  else
  {
    v10 = sub_1883F7BC0();
    return a3(v10);
  }
}

id CKDeclineSharesOperation.perShareResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    sub_1883F71C0();
    v9[1] = 1107296256;
    v9[2] = sub_1884958B4;
    v9[3] = &unk_1EFA2A0C0;
    v7 = _Block_copy(v9);

    [v3 setPerShareCompletionBlock_];
    _Block_release(v7);
    return sub_1883F5BA0(a1, a2);
  }

  else
  {

    return [v2 setPerShareCompletionBlock_];
  }
}

id CKDeclineSharesOperation.declineSharesResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1883F8708();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    sub_1883F71C0();
    v8[1] = 1107296256;
    v8[2] = sub_1884C0074;
    v8[3] = &unk_1EFA2A110;
    v6 = _Block_copy(v8);

    [v2 setDeclineSharesCompletionBlock_];
    _Block_release(v6);
    [v2 setCanDropItemResultsEarly_];
    return sub_1883F5BA0(a1, a2);
  }

  else
  {

    return [v2 setDeclineSharesCompletionBlock_];
  }
}

uint64_t (*CKDeclineSharesOperation.perShareResultBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 perShareCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884957EC;
    *(v4 + 24) = v3;
    return sub_1884957F4;
  }

  return result;
}

uint64_t (*sub_1884B7C18@<X0>(void *a1@<X8>))(uint64_t a1, uint64_t a2, char a3)
{
  result = CKDeclineSharesOperation.perShareResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_188495AAC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884B7C88(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_188495A60;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKDeclineSharesOperation.perShareResultBlock.setter(v4, v3);
}

void sub_1884B7D18(uint64_t a1, void *a2, void (*a3)(uint64_t, void *, uint64_t))
{
  if (!a2)
  {
    goto LABEL_4;
  }

  swift_getErrorValue();
  v6 = a2;
  if (sub_1885164AC(v8))
  {

LABEL_4:
    a3(a1, 0, 0);
    return;
  }

  v7 = a2;
  a3(a1, a2, 1);
}

uint64_t (*CKDeclineSharesOperation.perShareResultBlock.modify(uint64_t (**a1)(uint64_t a1, uint64_t a2, char a3)))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = CKDeclineSharesOperation.perShareResultBlock.getter();
  a1[1] = v3;
  return sub_1884B7E3C;
}

uint64_t (*CKDeclineSharesOperation.declineSharesResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 declineSharesCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188412818;
    *(v4 + 24) = v3;
    return sub_1884B5BC8;
  }

  return result;
}

uint64_t (*sub_1884B7F18@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>))(uint64_t a1, char a2)
{
  result = CKDeclineSharesOperation.declineSharesResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_18847A480;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884B7F88(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_18847A474;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKDeclineSharesOperation.declineSharesResultBlock.setter(v4, v3);
}

uint64_t (*CKDeclineSharesOperation.declineSharesResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2)))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = CKDeclineSharesOperation.declineSharesResultBlock.getter();
  a1[1] = v3;
  return sub_1884B8060;
}

uint64_t sub_1884B80A0(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = sub_1883F7BC0();
    v11 = v5;
    v6(v4);
    v7 = sub_1883F7BC0();
    a3(v7);
    v8 = sub_1883F7BC0();

    return v11(v8);
  }

  else
  {
    v10 = sub_1883F7BC0();
    return a3(v10);
  }
}

id CKFetchShareMetadataOperation.perShareMetadataResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    sub_1883F71C0();
    v9[1] = 1107296256;
    v9[2] = sub_1884B883C;
    v9[3] = &unk_1EFA2A2A0;
    v7 = _Block_copy(v9);

    [v3 setPerShareMetadataBlock_];
    _Block_release(v7);
    return sub_1883F5BA0(a1, a2);
  }

  else
  {

    return [v2 setPerShareMetadataBlock_];
  }
}

id CKFetchShareMetadataOperation.fetchShareMetadataResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1883F8708();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    sub_1883F71C0();
    v8[1] = 1107296256;
    v8[2] = sub_1884C0074;
    v8[3] = &unk_1EFA2A2F0;
    v6 = _Block_copy(v8);

    [v2 setFetchShareMetadataCompletionBlock_];
    _Block_release(v6);
    [v2 setCanDropItemResultsEarly_];
    return sub_1883F5BA0(a1, a2);
  }

  else
  {

    return [v2 setFetchShareMetadataCompletionBlock_];
  }
}

void CKFetchShareMetadataOperation.rootRecordDesiredKeys.setter(uint64_t a1)
{
  if (a1)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v1 setRootRecordDesiredKeys_];
}

void (*CKFetchShareMetadataOperation.rootRecordDesiredKeys.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1884B8CAC(v1);
  return sub_1884B8468;
}

void sub_1884B8468(uint64_t *a1, char a2)
{
  if (a2)
  {

    CKFetchShareMetadataOperation.rootRecordDesiredKeys.setter(v2);
  }

  else
  {
    CKFetchShareMetadataOperation.rootRecordDesiredKeys.setter(*a1);
  }
}

uint64_t (*CKFetchShareMetadataOperation.perShareMetadataResultBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 perShareMetadataBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884B8D04;
    *(v4 + 24) = v3;
    return sub_1884B8D0C;
  }

  return result;
}

uint64_t (*sub_1884B855C@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = CKFetchShareMetadataOperation.perShareMetadataResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884B8D90;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884B85CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1884B8D50;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKFetchShareMetadataOperation.perShareMetadataResultBlock.setter(v4, v3);
}

void sub_1884B865C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, NSURL *a4@<X8>)
{
  URL._bridgeToObjectiveC()(a4);
  v8 = v7;
  if (a2)
  {
    v9 = _convertErrorToNSError(_:)();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  (*(a3 + 16))(a3, v8, a1);
}

void sub_1884B86EC(uint64_t a1, void *a2, id a3, void (*a4)(uint64_t, id, uint64_t))
{
  if (a3)
  {
    v7 = a3;
    a4(a1, a3, 1);
    v8 = a3;

LABEL_4:

    return;
  }

  if (a2)
  {
    v10 = a2;
    a4(a1, a2, 0);
    v8 = v10;

    goto LABEL_4;
  }

  type metadata accessor for CKError(0);
  sub_188498E9C(MEMORY[0x1E69E7CC0]);
  sub_18847A4EC();
  _BridgedStoredNSError.init(_:userInfo:)();
  a4(a1, v11, 1);
}

uint64_t sub_1884B883C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = a3;
  v13 = a4;
  v11(v10, a3, a4);

  return (*(v8 + 8))(v10, v7);
}

uint64_t (*CKFetchShareMetadataOperation.perShareMetadataResultBlock.modify(uint64_t (**a1)(uint64_t a1, uint64_t a2, char a3)))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = CKFetchShareMetadataOperation.perShareMetadataResultBlock.getter();
  a1[1] = v3;
  return sub_1884B89B4;
}

uint64_t (*CKFetchShareMetadataOperation.fetchShareMetadataResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 fetchShareMetadataCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188412818;
    *(v4 + 24) = v3;
    return sub_1884B5BC8;
  }

  return result;
}

uint64_t (*sub_1884B8A90@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>))(uint64_t a1, char a2)
{
  result = CKFetchShareMetadataOperation.fetchShareMetadataResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_18847A480;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884B8B00(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_18847A474;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKFetchShareMetadataOperation.fetchShareMetadataResultBlock.setter(v4, v3);
}

uint64_t (*CKFetchShareMetadataOperation.fetchShareMetadataResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2)))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = CKFetchShareMetadataOperation.fetchShareMetadataResultBlock.getter();
  a1[1] = v3;
  return sub_1884B8BD8;
}

uint64_t sub_1884B8C18(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = sub_1883F7BC0();
    v11 = v5;
    v6(v4);
    v7 = sub_1883F7BC0();
    a3(v7);
    v8 = sub_1883F7BC0();

    return v11(v8);
  }

  else
  {
    v10 = sub_1883F7BC0();
    return a3(v10);
  }
}

uint64_t sub_1884B8CAC(void *a1)
{
  v1 = [a1 rootRecordDesiredKeys];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1884B8D0C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  if (a3)
  {
    a2 = 0;
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return (*(v3 + 16))(a1, a2, v5);
}

uint64_t sub_1884B8D50(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6 = a2;
  v7 = a3 & 1;
  return v4(a1, &v6);
}

id CKShareRequestAccessOperation.shareAccessRequestResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1883F8708();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    sub_1883F71C0();
    v8[1] = 1107296256;
    v8[2] = sub_1884C0074;
    v8[3] = &unk_1EFA2A480;
    v6 = _Block_copy(v8);

    [v2 setShareRequestAccessCompletionBlock_];
    _Block_release(v6);
    [v2 setCanDropItemResultsEarly_];
    return sub_1883F5BA0(a1, a2);
  }

  else
  {

    return [v2 setShareRequestAccessCompletionBlock_];
  }
}

void (*CKShareRequestAccessOperation.perShareAccessRequestResultBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 perShareAccessRequestCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884B9734;
    *(v4 + 24) = v3;
    return sub_1884B973C;
  }

  return result;
}

uint64_t (*sub_1884B8F8C@<X0>(uint64_t (**a1)(uint64_t a1, uint64_t a2)@<X8>))()
{
  result = CKShareRequestAccessOperation.perShareAccessRequestResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884B8D90;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884B8FFC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1884B8D50;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKShareRequestAccessOperation.perShareAccessRequestResultBlock.setter(v4, v3);
}

id CKShareRequestAccessOperation.perShareAccessRequestResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    sub_1883F71C0();
    v9[1] = 1107296256;
    v9[2] = sub_1884B938C;
    v9[3] = &unk_1EFA2A520;
    v7 = _Block_copy(v9);

    [v3 setPerShareAccessRequestCompletionBlock_];
    _Block_release(v7);
    return sub_1883F5BA0(a1, a2);
  }

  else
  {

    return [v2 setPerShareAccessRequestCompletionBlock_];
  }
}

void sub_1884B91A0(uint64_t a1@<X1>, uint64_t a2@<X2>, NSURL *a3@<X8>)
{
  URL._bridgeToObjectiveC()(a3);
  v6 = v5;
  if (a1)
  {
    v7 = _convertErrorToNSError(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a2 + 16))(a2, v6);
}

void sub_1884B9228(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, id))
{
  if (a3)
  {
    v6 = _convertErrorToNSError(_:)();
    a4(a1, v6);
  }

  else
  {
    a4(a1, 0);
  }
}

void sub_1884B92B8(uint64_t a1, void *a2, void (*a3)(uint64_t, void *, uint64_t))
{
  if (!a2)
  {
    goto LABEL_4;
  }

  swift_getErrorValue();
  v6 = a2;
  if (sub_1885164AC(v8))
  {

LABEL_4:
    a3(a1, 0, 0);
    return;
  }

  v7 = a2;
  a3(a1, a2, 1);
}

uint64_t sub_1884B938C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = a3;
  v9(v8, a3);

  return (*(v6 + 8))(v8, v5);
}

uint64_t (*CKShareRequestAccessOperation.perShareAccessRequestResultBlock.modify(void (**a1)(uint64_t a1, uint64_t a2, char a3)))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = CKShareRequestAccessOperation.perShareAccessRequestResultBlock.getter();
  a1[1] = v3;
  return sub_1884B94E8;
}

void (*CKShareRequestAccessOperation.shareAccessRequestResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 shareRequestAccessCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188412818;
    *(v4 + 24) = v3;
    return sub_1884B9750;
  }

  return result;
}

uint64_t (*sub_1884B95C4@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>))()
{
  result = CKShareRequestAccessOperation.shareAccessRequestResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_18847A480;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884B9634(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_18847A474;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKShareRequestAccessOperation.shareAccessRequestResultBlock.setter(v4, v3);
}

void sub_1884B96C4(uint64_t a1, char a2, void (*a3)(void))
{
  if (a2)
  {
    v4 = _convertErrorToNSError(_:)();
    a3();
  }

  else
  {
    (a3)(0);
  }
}

uint64_t (*CKShareRequestAccessOperation.shareAccessRequestResultBlock.modify(void (**a1)(uint64_t a1, char a2)))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = CKShareRequestAccessOperation.shareAccessRequestResultBlock.getter();
  a1[1] = v3;
  return sub_1884B97A4;
}

uint64_t sub_1884B97E4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = sub_1883F7BC0();
    v11 = v5;
    v6(v4);
    v7 = sub_1883F7BC0();
    a3(v7);
    v8 = sub_1883F7BC0();

    return v11(v8);
  }

  else
  {
    v10 = sub_1883F7BC0();
    return a3(v10);
  }
}

void __swiftcall CKFetchSubscriptionsOperation.init(subscriptionIDs:)(CKFetchSubscriptionsOperation *__return_ptr retstr, Swift::OpaquePointer subscriptionIDs)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 initWithSubscriptionIDs_];
}

id CKFetchSubscriptionsOperation.perSubscriptionResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    sub_1883F8708();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v9[4] = sub_1884BA014;
    v9[5] = v7;
    sub_1883F7188();
    v9[1] = 1107296256;
    v9[2] = sub_1884BA01C;
    v9[3] = &unk_1EFA2A660;
    _Block_copy(v9);
    sub_1883F899C();

    [v4 setPerSubscriptionCompletionBlock_];
    _Block_release(v3);
    return sub_1883F5BA0(a1, a2);
  }

  else
  {

    return [v2 setPerSubscriptionCompletionBlock_];
  }
}

id CKFetchSubscriptionsOperation.fetchSubscriptionsResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_188479A50;
    v9[5] = v6;
    sub_1883F7188();
    sub_1883F9DCC();
    v9[2] = v7;
    v9[3] = &unk_1EFA2A6B0;
    _Block_copy(v9);
    sub_1883F899C();

    [v2 setFetchSubscriptionCompletionBlock_];
    _Block_release(v3);
    [v2 setCanDropItemResultsEarly_];
    return sub_1883F5BA0(a1, a2);
  }

  else
  {

    return [v2 setFetchSubscriptionCompletionBlock_];
  }
}

void CKFetchSubscriptionsOperation.subscriptionIDs.setter(uint64_t a1)
{
  if (a1)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v1 setSubscriptionIDs_];
}

uint64_t CKFetchSubscriptionsOperation.subscriptionIDs.modify(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1884BA964(v1);
  return sub_1883F7BCC();
}

void sub_1884B9BFC(uint64_t *a1, char a2)
{
  if (a2)
  {

    CKFetchSubscriptionsOperation.subscriptionIDs.setter(v2);
  }

  else
  {
    CKFetchSubscriptionsOperation.subscriptionIDs.setter(*a1);
  }
}

uint64_t (*CKFetchSubscriptionsOperation.perSubscriptionResultBlock.getter())(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = [v0 perSubscriptionCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884BA9BC;
    *(v4 + 24) = v3;
    return sub_1884BA9C4;
  }

  return result;
}

uint64_t (*sub_1884B9CEC@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = CKFetchSubscriptionsOperation.perSubscriptionResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884BAA5C;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884B9D5C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1884BAA50;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKFetchSubscriptionsOperation.perSubscriptionResultBlock.setter(v4, v3);
}

void sub_1884B9DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x18CFD5010](a1, a2);
  if (a4)
  {
    v9 = _convertErrorToNSError(_:)();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  (*(a5 + 16))(a5, v8, a3);
}

uint64_t sub_1884B9E78(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = a3;
  if (a4)
  {
    a3 = 0;
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return a5(a1, a2, a3, v6);
}

void sub_1884B9EBC(uint64_t a1, uint64_t a2, void *a3, id a4, void (*a5)(uint64_t, uint64_t, id, uint64_t))
{
  if (a4)
  {
    v9 = a4;
    a5(a1, a2, a4, 1);
    v10 = a4;

LABEL_4:

    return;
  }

  if (a3)
  {
    v12 = a3;
    a5(a1, a2, a3, 0);
    v10 = v12;

    goto LABEL_4;
  }

  type metadata accessor for CKError(0);
  sub_188498E9C(MEMORY[0x1E69E7CC0]);
  sub_18847A4EC();
  _BridgedStoredNSError.init(_:userInfo:)();
  a5(a1, a2, v13, 1);
}

void sub_1884BA01C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v11 = a3;
  v10 = a4;
  v6(v7, v9, a3, a4);
}

uint64_t CKFetchSubscriptionsOperation.perSubscriptionResultBlock.modify(uint64_t (**a1)(uint64_t a1, uint64_t a2, uint64_t a3, char a4))
{
  a1[2] = v1;
  *a1 = CKFetchSubscriptionsOperation.perSubscriptionResultBlock.getter();
  a1[1] = v3;
  return sub_1883F7BCC();
}

void (*CKFetchSubscriptionsOperation.fetchSubscriptionCompletionBlock.getter())(objc_class *a1, uint64_t a2)
{
  result = [v0 fetchSubscriptionCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    *(swift_allocObject() + 16) = v2;
    return sub_1884BA9D0;
  }

  return result;
}

uint64_t (*sub_1884BA1C4@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = CKFetchSubscriptionsOperation.fetchSubscriptionCompletionBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884BAA20;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1884BA234(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1884BA9E4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKFetchSubscriptionsOperation.fetchSubscriptionCompletionBlock.setter(v4, v3);
}

uint64_t CKFetchSubscriptionsOperation.fetchSubscriptionCompletionBlock.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    v9[4] = a1;
    v9[5] = a2;
    sub_1883F7188();
    sub_1883F9DCC();
    v9[2] = v7;
    v9[3] = &unk_1EFA2A750;
    _Block_copy(v9);
    sub_1883F899C();
  }

  else
  {
    v3 = 0;
  }

  [v4 setFetchSubscriptionCompletionBlock_];
  _Block_release(v3);
  return sub_1883F5BA0(a1, a2);
}

void sub_1884BA36C(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_1884BAA64();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_1884BA418(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1884BAA64();
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t CKFetchSubscriptionsOperation.fetchSubscriptionCompletionBlock.modify(void (**a1)(objc_class *a1, uint64_t a2))
{
  a1[2] = v1;
  *a1 = CKFetchSubscriptionsOperation.fetchSubscriptionCompletionBlock.getter();
  a1[1] = v3;
  return sub_1883F7BCC();
}

uint64_t (*CKFetchSubscriptionsOperation.fetchSubscriptionsResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 fetchSubscriptionCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884BAAB0;
    *(v4 + 24) = v3;
    return sub_1884BA9D8;
  }

  return result;
}

uint64_t (*sub_1884BA5D8@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>))()
{
  result = CKFetchSubscriptionsOperation.fetchSubscriptionsResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_18847A480;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884BA648(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_18847A474;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKFetchSubscriptionsOperation.fetchSubscriptionsResultBlock.setter(v4, v3);
}

uint64_t sub_1884BA6D8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (qword_1ED4B5C68 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1883FDE5C(v6, qword_1ED4B5C70);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    MEMORY[0x18CFD7E80](v9, -1, -1);
  }

  if (a2)
  {
    return a3(0, a1);
  }

  sub_1884BAA64();
  v11 = Dictionary.init(dictionaryLiteral:)();
  a3(v11, 0);
}

uint64_t CKFetchSubscriptionsOperation.fetchSubscriptionsResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2))
{
  a1[2] = v1;
  *a1 = CKFetchSubscriptionsOperation.fetchSubscriptionsResultBlock.getter();
  a1[1] = v3;
  return sub_1883F7BCC();
}

uint64_t sub_1884BA8D0(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = sub_1883F7BC0();
    v11 = v5;
    v6(v4);
    v7 = sub_1883F7BC0();
    a3(v7);
    v8 = sub_1883F7BC0();

    return v11(v8);
  }

  else
  {
    v10 = sub_1883F7BC0();
    return a3(v10);
  }
}

uint64_t sub_1884BA964(void *a1)
{
  v1 = [a1 subscriptionIDs];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1884BA9E4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

unint64_t sub_1884BAA64()
{
  result = qword_1EA90CA90;
  if (!qword_1EA90CA90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA90CA90);
  }

  return result;
}

void __swiftcall CKModifySubscriptionsOperation.init(subscriptionsToSave:subscriptionIDsToDelete:)(CKModifySubscriptionsOperation *__return_ptr retstr, Swift::OpaquePointer_optional subscriptionsToSave, Swift::OpaquePointer_optional subscriptionIDsToDelete)
{
  v3 = *&subscriptionsToSave.is_nil;
  rawValue = subscriptionsToSave.value._rawValue;
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = v5;
  if (rawValue)
  {
    sub_1884BAA64();
    v7 = v6;
    sub_1883F7BC0();
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9 = v5;
    v8.super.isa = 0;
  }

  [v6 setSubscriptionsToSave_];

  if (v3)
  {
    v10.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  [v6 setSubscriptionIDsToDelete_];
}

void CKModifySubscriptionsOperation.perSubscriptionSaveBlock.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    sub_1883F8708();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v11[4] = sub_1884BA014;
    v11[5] = v7;
    sub_1883F7188();
    v11[1] = 1107296256;
    v11[2] = sub_1884BA01C;
    v11[3] = &unk_1EFA2A8E0;
    _Block_copy(v11);
    sub_1883F899C();

    [v4 setPerSubscriptionSaveBlock_];
    _Block_release(v3);
    sub_1883F5BA0(a1, a2);
    sub_1883FE68C();
  }

  else
  {
    sub_1883FE68C();

    [v8 v9];
  }
}

void CKModifySubscriptionsOperation.perSubscriptionDeleteBlock.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    sub_1883F8708();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v11[4] = sub_1884BB54C;
    v11[5] = v7;
    sub_1883F7188();
    v11[1] = 1107296256;
    v11[2] = sub_1884BB554;
    v11[3] = &unk_1EFA2A930;
    _Block_copy(v11);
    sub_1883F899C();

    [v4 setPerSubscriptionDeleteBlock_];
    _Block_release(v3);
    sub_1883F5BA0(a1, a2);
    sub_1883FE68C();
  }

  else
  {
    sub_1883FE68C();

    [v8 v9];
  }
}

void CKModifySubscriptionsOperation.modifySubscriptionsResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v11[4] = sub_1884B6F50;
    v11[5] = v6;
    sub_1883F7188();
    sub_1883F9DE4();
    v11[2] = v7;
    v11[3] = &unk_1EFA2A980;
    _Block_copy(v11);
    sub_1883F899C();

    [v2 setModifySubscriptionsCompletionBlock_];
    _Block_release(v3);
    [v2 setCanDropItemResultsEarly_];
    sub_1883F5BA0(a1, a2);
    sub_1883FE68C();
  }

  else
  {
    sub_1883FE68C();

    [v8 v9];
  }
}

uint64_t sub_1884BAEE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void *, uint64_t *))
{
  v8[0] = a1;
  v8[1] = a2;
  v6 = a3;
  v7 = a4 & 1;
  return a5(v8, &v6);
}

void CKModifySubscriptionsOperation.subscriptionIDsToDelete.setter(uint64_t a1)
{
  if (a1)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v1 setSubscriptionIDsToDelete_];
}

uint64_t CKModifySubscriptionsOperation.subscriptionIDsToDelete.modify(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1884BC04C(v1);
  return sub_1883F7BCC();
}

void sub_1884BB020(uint64_t *a1, char a2)
{
  if (a2)
  {

    CKModifySubscriptionsOperation.subscriptionIDsToDelete.setter(v2);
  }

  else
  {
    CKModifySubscriptionsOperation.subscriptionIDsToDelete.setter(*a1);
  }
}

uint64_t (*CKModifySubscriptionsOperation.perSubscriptionSaveBlock.getter())(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = [v0 perSubscriptionSaveBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884BA9BC;
    *(v4 + 24) = v3;
    return sub_1884BA9C4;
  }

  return result;
}

uint64_t (*sub_1884BB110@<X0>(uint64_t (**a1)()@<X8>))(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = CKModifySubscriptionsOperation.perSubscriptionSaveBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884BC140;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_1884BB180(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1884BC0F4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  CKModifySubscriptionsOperation.perSubscriptionSaveBlock.setter(v4, v3);
}

uint64_t CKModifySubscriptionsOperation.perSubscriptionSaveBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifySubscriptionsOperation.perSubscriptionSaveBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t (*CKModifySubscriptionsOperation.perSubscriptionDeleteBlock.getter())(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = [v0 perSubscriptionDeleteBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884BC0A4;
    *(v4 + 24) = v3;
    return sub_1884BC0AC;
  }

  return result;
}

uint64_t (*sub_1884BB328@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = CKModifySubscriptionsOperation.perSubscriptionDeleteBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884BC190;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_1884BB398(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1884BC198;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  CKModifySubscriptionsOperation.perSubscriptionDeleteBlock.setter(v4, v3);
}

void sub_1884BB428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x18CFD5010](a1, a2);
  if (a3)
  {
    v7 = _convertErrorToNSError(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

void sub_1884BB4AC(uint64_t a1, uint64_t a2, id a3, void (*a4)(uint64_t, uint64_t, id, uint64_t))
{
  if (a3)
  {
    v8 = a3;
    a4(a1, a2, a3, 1);
  }

  else
  {
    a4(a1, a2, 0, 0);
  }
}

void sub_1884BB554(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t CKModifySubscriptionsOperation.perSubscriptionDeleteBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifySubscriptionsOperation.perSubscriptionDeleteBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t sub_1884BB668(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = sub_1883F7BC0();
    v11 = v5;
    v6(v4);
    v7 = sub_1883F7BC0();
    a3(v7);
    v8 = sub_1883F7BC0();

    return v11(v8);
  }

  else
  {
    v10 = sub_1883F7BC0();
    return a3(v10);
  }
}

void (*CKModifySubscriptionsOperation.modifySubscriptionsCompletionBlock.getter())(objc_class *a1, objc_class *a2, uint64_t a3)
{
  result = [v0 modifySubscriptionsCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    *(swift_allocObject() + 16) = v2;
    return sub_1884BC0DC;
  }

  return result;
}

uint64_t (*sub_1884BB76C@<X0>(void *a1@<X8>))()
{
  result = CKModifySubscriptionsOperation.modifySubscriptionsCompletionBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884BC194;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_1884BB7DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1884BC1B0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  CKModifySubscriptionsOperation.modifySubscriptionsCompletionBlock.setter(v4, v3);
}

void sub_1884BB878(objc_class *a1, Class a2, uint64_t a3, uint64_t a4)
{
  isa = a1;
  if (a1)
  {
    sub_1884BAA64();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    a2 = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a3)
  {
    v8 = _convertErrorToNSError(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, isa, a2);
}

uint64_t sub_1884BB938(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_1884BAA64();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a3)
  {
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a4;
  v7(v6, a3, a4);
}

uint64_t CKModifySubscriptionsOperation.modifySubscriptionsCompletionBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifySubscriptionsOperation.modifySubscriptionsCompletionBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

void (*CKModifySubscriptionsOperation.undeprecated_modifySubscriptionsCompletionBlock.getter())(objc_class *a1, objc_class *a2, uint64_t a3)
{
  result = [v0 modifySubscriptionsCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    *(swift_allocObject() + 16) = v2;
    return sub_1884BC19C;
  }

  return result;
}

uint64_t (*sub_1884BBAE4@<X0>(void *a1@<X8>))()
{
  result = CKModifySubscriptionsOperation.undeprecated_modifySubscriptionsCompletionBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884BC0F0;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_1884BBB54(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1884B7080;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  CKModifySubscriptionsOperation.undeprecated_modifySubscriptionsCompletionBlock.setter(v4, v3);
}

void sub_1884BBBF0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    v9[4] = a1;
    v9[5] = a2;
    sub_1883F7188();
    sub_1883F9DE4();
    v9[2] = v8;
    v9[3] = v7;
    _Block_copy(v9);
    sub_1883F899C();
  }

  else
  {
    v3 = 0;
  }

  [v4 setModifySubscriptionsCompletionBlock_];
  _Block_release(v3);
  sub_1883F5BA0(a1, a2);
  sub_1883FE68C();
}

uint64_t CKModifySubscriptionsOperation.undeprecated_modifySubscriptionsCompletionBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifySubscriptionsOperation.undeprecated_modifySubscriptionsCompletionBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t (*CKModifySubscriptionsOperation.modifySubscriptionsResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 modifySubscriptionsCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884BC19C;
    *(v4 + 24) = v3;
    return sub_1884BC0E4;
  }

  return result;
}

uint64_t (*sub_1884BBDA4@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>))()
{
  result = CKModifySubscriptionsOperation.modifySubscriptionsResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_18847A480;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_1884BBE14(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_18847A474;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  CKModifySubscriptionsOperation.modifySubscriptionsResultBlock.setter(v4, v3);
}

uint64_t sub_1884BBEA4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (qword_1ED4B5C68 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1883FDE5C(v6, qword_1ED4B5C70);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    MEMORY[0x18CFD7E80](v9, -1, -1);
  }

  if (a2)
  {
    v10 = 0;
    v11 = 0;
    v12 = a1;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];
    v12 = 0;
  }

  return a3(v10, v11, v12);
}

uint64_t CKModifySubscriptionsOperation.modifySubscriptionsResultBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifySubscriptionsOperation.modifySubscriptionsResultBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t sub_1884BC04C(void *a1)
{
  v1 = [a1 subscriptionIDsToDelete];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1884BC0AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    a3 = 0;
  }

  return (*(v4 + 16))(a1, a2, a3);
}

uint64_t sub_1884BC0F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  v9[0] = a1;
  v9[1] = a2;
  v7 = a3;
  v8 = a4 & 1;
  return v5(v9, &v7);
}

void (*CKFetchDatabaseChangesOperation.undeprecated_fetchDatabaseChangesCompletionBlock.getter())(uint64_t a1, char a2, uint64_t a3)
{
  result = [v0 fetchDatabaseChangesCompletionBlock];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_1884BC92C;
  }

  return result;
}

uint64_t (*sub_1884BC228@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = CKFetchDatabaseChangesOperation.undeprecated_fetchDatabaseChangesCompletionBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884BCAB8;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1884BC298(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1884BCAB0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKFetchDatabaseChangesOperation.undeprecated_fetchDatabaseChangesCompletionBlock.setter(v4, v3);
}

uint64_t sub_1884BC328(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t *, char *, uint64_t *))
{
  v7 = a1;
  v6 = a2;
  v5 = a3;
  return a4(&v7, &v6, &v5);
}

uint64_t CKFetchDatabaseChangesOperation.undeprecated_fetchDatabaseChangesCompletionBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v9[4] = a1;
    v9[5] = a2;
    sub_1883F7188();
    sub_1883F7450();
    v9[2] = v6;
    v9[3] = &unk_1EFA2AD40;
    v7 = _Block_copy(v9);
  }

  else
  {
    v7 = 0;
  }

  [v3 setFetchDatabaseChangesCompletionBlock_];
  _Block_release(v7);
  return sub_1883F5BA0(a1, a2);
}

void sub_1884BC424(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = _convertErrorToNSError(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2 & 1);
}

void sub_1884BC4A4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t (*CKFetchDatabaseChangesOperation.undeprecated_fetchDatabaseChangesCompletionBlock.modify(void (**a1)(uint64_t a1, char a2, uint64_t a3)))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = CKFetchDatabaseChangesOperation.undeprecated_fetchDatabaseChangesCompletionBlock.getter();
  a1[1] = v3;
  return sub_1884BC580;
}

uint64_t (*CKFetchDatabaseChangesOperation.fetchDatabaseChangesResultBlock.getter())(uint64_t a1, __int16 a2)
{
  result = [v0 fetchDatabaseChangesCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884BCAF0;
    *(v4 + 24) = v3;
    return sub_1884BC934;
  }

  return result;
}

uint64_t (*sub_1884BC660@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = CKFetchDatabaseChangesOperation.fetchDatabaseChangesResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884BCAA8;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884BC718(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1884BCA64;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKFetchDatabaseChangesOperation.fetchDatabaseChangesResultBlock.setter(v4, v3);
}

uint64_t sub_1884BC7A8(uint64_t a1, __int16 a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = a1;
  if ((a2 & 0x100) != 0)
  {
    a1 = 0;
    v5 = 0;
  }

  else
  {
    v5 = a2 & 1;
    v4 = 0;
  }

  return a3(a1, v5, v4);
}

void sub_1884BC7F4(void *a1, char a2, void *a3, void (*a4)(void *, uint64_t))
{
  if (a3)
  {
    swift_getErrorValue();
    v8 = a3;
    if (!sub_1885164AC(v13))
    {
      v12 = a3;
      a4(a3, 256);

      return;
    }
  }

  if (a1)
  {
    v9 = a1;
    v10 = a2 & 1;
    v11 = a1;
  }

  else
  {
    type metadata accessor for CKError(0);
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_18847A4EC();
    _BridgedStoredNSError.init(_:userInfo:)();
    v9 = v14;
    v11 = v14;
    v10 = 256;
  }

  a4(v11, v10);
}

uint64_t (*CKFetchDatabaseChangesOperation.fetchDatabaseChangesResultBlock.modify(uint64_t (**a1)(uint64_t a1, __int16 a2)))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = CKFetchDatabaseChangesOperation.fetchDatabaseChangesResultBlock.getter();
  a1[1] = v3;
  return sub_1884BC990;
}

uint64_t sub_1884BC9D0(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = sub_1883F7BC0();
    v11 = v5;
    v6(v4);
    v7 = sub_1883F7BC0();
    a3(v7);
    v8 = sub_1883F7BC0();

    return v11(v8);
  }

  else
  {
    v10 = sub_1883F7BC0();
    return a3(v10);
  }
}

uint64_t sub_1884BCA64(uint64_t a1, __int16 a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 0x1FF;
  return v3(&v5);
}

id CKFetchRecordZonesOperation.perRecordZoneResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    sub_1883F8708();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v9[4] = sub_18849539C;
    v9[5] = v7;
    sub_1883F7188();
    v9[1] = 1107296256;
    v9[2] = sub_1884953A4;
    v9[3] = &unk_1EFA2AE80;
    _Block_copy(v9);
    sub_1883F899C();

    [v4 setPerRecordZoneCompletionBlock_];
    _Block_release(v3);
    return sub_1883F5BA0(a1, a2);
  }

  else
  {

    return [v2 setPerRecordZoneCompletionBlock_];
  }
}

id CKFetchRecordZonesOperation.fetchRecordZonesResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_188479A50;
    v9[5] = v6;
    sub_1883F7188();
    sub_1883F9DFC();
    v9[2] = v7;
    v9[3] = &unk_1EFA2AED0;
    _Block_copy(v9);
    sub_1883F899C();

    [v2 setFetchRecordZonesCompletionBlock_];
    _Block_release(v3);
    [v2 setCanDropItemResultsEarly_];
    return sub_1883F5BA0(a1, a2);
  }

  else
  {

    return [v2 setFetchRecordZonesCompletionBlock_];
  }
}

uint64_t (*CKFetchRecordZonesOperation.perRecordZoneResultBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 perRecordZoneCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188495208;
    *(v4 + 24) = v3;
    return sub_188495210;
  }

  return result;
}

uint64_t (*sub_1884BCDA8@<X0>(uint64_t (**a1)(uint64_t a1, uint64_t a2)@<X8>))(uint64_t a1, uint64_t a2, char a3)
{
  result = CKFetchRecordZonesOperation.perRecordZoneResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884B2D14;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884BCE18(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1884B2D08;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKFetchRecordZonesOperation.perRecordZoneResultBlock.setter(v4, v3);
}

uint64_t (*CKFetchRecordZonesOperation.perRecordZoneResultBlock.modify(uint64_t (**a1)(uint64_t a1, uint64_t a2, char a3)))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = CKFetchRecordZonesOperation.perRecordZoneResultBlock.getter();
  a1[1] = v3;
  return sub_1884BCEF0;
}

void (*CKFetchRecordZonesOperation.undeprecated_fetchRecordZonesCompletionBlock.getter())(objc_class *a1, uint64_t a2)
{
  result = [v0 fetchRecordZonesCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    *(swift_allocObject() + 16) = v2;
    return sub_1884BD6BC;
  }

  return result;
}

uint64_t (*sub_1884BCFA0@<X0>(void *a1@<X8>))()
{
  result = CKFetchRecordZonesOperation.undeprecated_fetchRecordZonesCompletionBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884BAA20;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1884BD010(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1884BA9E4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKFetchRecordZonesOperation.undeprecated_fetchRecordZonesCompletionBlock.setter(v4, v3);
}

uint64_t CKFetchRecordZonesOperation.undeprecated_fetchRecordZonesCompletionBlock.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    v9[4] = a1;
    v9[5] = a2;
    sub_1883F7188();
    sub_1883F9DFC();
    v9[2] = v7;
    v9[3] = &unk_1EFA2AF70;
    _Block_copy(v9);
    sub_1883F899C();
  }

  else
  {
    v3 = 0;
  }

  [v4 setFetchRecordZonesCompletionBlock_];
  _Block_release(v3);
  return sub_1883F5BA0(a1, a2);
}

void sub_1884BD148(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    sub_1883F4C5C(0, &unk_1EA90CA40, off_1E70BA640);
    sub_18841A9C8();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_1884BD228(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    sub_1883F4C5C(0, &unk_1EA90CA40, off_1E70BA640);
    sub_18841A9C8();
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t (*CKFetchRecordZonesOperation.undeprecated_fetchRecordZonesCompletionBlock.modify(void (**a1)(objc_class *a1, uint64_t a2)))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = CKFetchRecordZonesOperation.undeprecated_fetchRecordZonesCompletionBlock.getter();
  a1[1] = v3;
  return sub_1884BD340;
}

uint64_t (*CKFetchRecordZonesOperation.fetchRecordZonesResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 fetchRecordZonesCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884BD7F4;
    *(v4 + 24) = v3;
    return sub_1884BD6C4;
  }

  return result;
}

uint64_t (*sub_1884BD418@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>))()
{
  result = CKFetchRecordZonesOperation.fetchRecordZonesResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_18847A480;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884BD488(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_18847A474;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKFetchRecordZonesOperation.fetchRecordZonesResultBlock.setter(v4, v3);
}

uint64_t sub_1884BD518(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (qword_1ED4B5C68 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1883FDE5C(v6, qword_1ED4B5C70);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    MEMORY[0x18CFD7E80](v9, -1, -1);
  }

  if (a2)
  {
    return a3(0, a1);
  }

  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  sub_1883F4C5C(0, &unk_1EA90CA40, off_1E70BA640);
  sub_18841A9C8();
  v11 = Dictionary.init(dictionaryLiteral:)();
  a3(v11, 0);
}

uint64_t (*CKFetchRecordZonesOperation.fetchRecordZonesResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2)))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = CKFetchRecordZonesOperation.fetchRecordZonesResultBlock.getter();
  a1[1] = v3;
  return sub_1884BD718;
}

uint64_t sub_1884BD758(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = sub_1883F7BC0();
    v11 = v5;
    v6(v4);
    v7 = sub_1883F7BC0();
    a3(v7);
    v8 = sub_1883F7BC0();

    return v11(v8);
  }

  else
  {
    v10 = sub_1883F7BC0();
    return a3(v10);
  }
}

void __swiftcall CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(CKModifyRecordZonesOperation *__return_ptr retstr, Swift::OpaquePointer_optional recordZonesToSave, Swift::OpaquePointer_optional recordZoneIDsToDelete)
{
  v3 = *&recordZonesToSave.is_nil;
  rawValue = recordZonesToSave.value._rawValue;
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = v5;
  if (rawValue)
  {
    sub_1883F4C5C(0, &unk_1EA90CA40, off_1E70BA640);
    v7 = v6;
    sub_1883F7BC0();
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9 = v5;
    v8.super.isa = 0;
  }

  [v6 setRecordZonesToSave_];

  if (v3)
  {
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    v10.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  [v6 setRecordZoneIDsToDelete_];
}

void CKModifyRecordZonesOperation.perRecordZoneSaveBlock.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    sub_1883F8708();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v11[4] = sub_18849539C;
    v11[5] = v7;
    sub_1883F7188();
    v11[1] = 1107296256;
    v11[2] = sub_1884953A4;
    v11[3] = &unk_1EFA2B100;
    _Block_copy(v11);
    sub_1883F899C();

    [v4 setPerRecordZoneSaveBlock_];
    _Block_release(v3);
    sub_1883F5BA0(a1, a2);
    sub_1883FE68C();
  }

  else
  {
    sub_1883FE68C();

    [v8 v9];
  }
}

void CKModifyRecordZonesOperation.perRecordZoneDeleteBlock.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    sub_1883F8708();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v11[4] = sub_1884958AC;
    v11[5] = v7;
    sub_1883F7188();
    v11[1] = 1107296256;
    v11[2] = sub_1884958B4;
    v11[3] = &unk_1EFA2B150;
    _Block_copy(v11);
    sub_1883F899C();

    [v4 setPerRecordZoneDeleteBlock_];
    _Block_release(v3);
    sub_1883F5BA0(a1, a2);
    sub_1883FE68C();
  }

  else
  {
    sub_1883FE68C();

    [v8 v9];
  }
}

void CKModifyRecordZonesOperation.modifyRecordZonesResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v11[4] = sub_1884B6F50;
    v11[5] = v6;
    sub_1883F7188();
    sub_1883F9E14();
    v11[2] = v7;
    v11[3] = &unk_1EFA2B1A0;
    _Block_copy(v11);
    sub_1883F899C();

    [v2 setModifyRecordZonesCompletionBlock_];
    _Block_release(v3);
    [v2 setCanDropItemResultsEarly_];
    sub_1883F5BA0(a1, a2);
    sub_1883FE68C();
  }

  else
  {
    sub_1883FE68C();

    [v8 v9];
  }
}

uint64_t (*CKModifyRecordZonesOperation.perRecordZoneSaveBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 perRecordZoneSaveBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188495208;
    *(v4 + 24) = v3;
    return sub_188495210;
  }

  return result;
}

uint64_t (*sub_1884BDCA8@<X0>(uint64_t (**a1)()@<X8>))(uint64_t a1, uint64_t a2, char a3)
{
  result = CKModifyRecordZonesOperation.perRecordZoneSaveBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_188495AA8;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_1884BDD18(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_188495A5C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  CKModifyRecordZonesOperation.perRecordZoneSaveBlock.setter(v4, v3);
}

uint64_t CKModifyRecordZonesOperation.perRecordZoneSaveBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifyRecordZonesOperation.perRecordZoneSaveBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t (*CKModifyRecordZonesOperation.perRecordZoneDeleteBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 perRecordZoneDeleteBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884957EC;
    *(v4 + 24) = v3;
    return sub_1884957F4;
  }

  return result;
}

uint64_t (*sub_1884BDEC0@<X0>(uint64_t (**a1)()@<X8>))(uint64_t a1, uint64_t a2, char a3)
{
  result = CKModifyRecordZonesOperation.perRecordZoneDeleteBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_188495AEC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_1884BDF30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_188495AE8;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  CKModifyRecordZonesOperation.perRecordZoneDeleteBlock.setter(v4, v3);
}

uint64_t CKModifyRecordZonesOperation.perRecordZoneDeleteBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifyRecordZonesOperation.perRecordZoneDeleteBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

void (*CKModifyRecordZonesOperation.undeprecated_modifyRecordZonesCompletionBlock.getter())(objc_class *a1, objc_class *a2, uint64_t a3)
{
  result = [v0 modifyRecordZonesCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    *(swift_allocObject() + 16) = v2;
    return sub_1884BE758;
  }

  return result;
}

uint64_t (*sub_1884BE0B0@<X0>(void *a1@<X8>))()
{
  result = CKModifyRecordZonesOperation.undeprecated_modifyRecordZonesCompletionBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884B7088;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_1884BE120(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1884B7080;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  CKModifyRecordZonesOperation.undeprecated_modifyRecordZonesCompletionBlock.setter(v4, v3);
}

void CKModifyRecordZonesOperation.undeprecated_modifyRecordZonesCompletionBlock.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    v8[4] = a1;
    v8[5] = a2;
    sub_1883F7188();
    sub_1883F9E14();
    v8[2] = v7;
    v8[3] = &unk_1EFA2B290;
    _Block_copy(v8);
    sub_1883F899C();
  }

  else
  {
    v3 = 0;
  }

  [v4 setModifyRecordZonesCompletionBlock_];
  _Block_release(v3);
  sub_1883F5BA0(a1, a2);
  sub_1883FE68C();
}

void sub_1884BE254(objc_class *a1, Class a2, uint64_t a3, uint64_t a4)
{
  isa = a1;
  if (a1)
  {
    sub_1883F4C5C(0, &unk_1EA90CA40, off_1E70BA640);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    a2 = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a3)
  {
    v8 = _convertErrorToNSError(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, isa, a2);
}

uint64_t sub_1884BE338(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_1883F4C5C(0, &unk_1EA90CA40, off_1E70BA640);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a3)
  {
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a4;
  v7(v6, a3, a4);
}

uint64_t CKModifyRecordZonesOperation.undeprecated_modifyRecordZonesCompletionBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifyRecordZonesOperation.undeprecated_modifyRecordZonesCompletionBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t (*CKModifyRecordZonesOperation.modifyRecordZonesResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 modifyRecordZonesCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884BE88C;
    *(v4 + 24) = v3;
    return sub_1884BE760;
  }

  return result;
}

uint64_t (*sub_1884BE530@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>))()
{
  result = CKModifyRecordZonesOperation.modifyRecordZonesResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_18847A480;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_1884BE5A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_18847A474;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  CKModifyRecordZonesOperation.modifyRecordZonesResultBlock.setter(v4, v3);
}

uint64_t sub_1884BE630(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (qword_1ED4B5C68 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1883FDE5C(v6, qword_1ED4B5C70);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    MEMORY[0x18CFD7E80](v9, -1, -1);
  }

  if (a2)
  {
    v10 = 0;
    v11 = 0;
    v12 = a1;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];
    v12 = 0;
  }

  return a3(v10, v11, v12);
}

uint64_t CKModifyRecordZonesOperation.modifyRecordZonesResultBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifyRecordZonesOperation.modifyRecordZonesResultBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t sub_1884BE7EC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = sub_1883F7BC0();
    v11 = v5;
    v6(v4);
    v7 = sub_1883F7BC0();
    a3(v7);
    v8 = sub_1883F7BC0();

    return v11(v8);
  }

  else
  {
    v10 = sub_1883F7BC0();
    return a3(v10);
  }
}

id CKFetchRegisteredBundleIDsOperation.fetchRegisteredBundleIDsResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_1884BEED0;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1884BEFEC;
    v9[3] = &unk_1EFA2B470;
    v7 = _Block_copy(v9);

    [v3 setFetchRegisteredBundleIDsCompletionBlock_];
    _Block_release(v7);
    return sub_1883F5BA0(a1, a2);
  }

  else
  {

    return [v2 setFetchRegisteredBundleIDsCompletionBlock_];
  }
}

uint64_t (*CKFetchRegisteredBundleIDsOperation.fetchRegisteredBundleIDsResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 fetchRegisteredBundleIDsCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884BF088;
    *(v4 + 24) = v3;
    return sub_1884BF090;
  }

  return result;
}

uint64_t (*sub_1884BEA70@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>))()
{
  result = CKFetchRegisteredBundleIDsOperation.fetchRegisteredBundleIDsResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884B2CD4;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884BEAE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1884B2C94;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKFetchRegisteredBundleIDsOperation.fetchRegisteredBundleIDsResultBlock.setter(v4, v3);
}

void sub_1884BEB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

uint64_t sub_1884BEC0C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    return a3(0, a1);
  }

  v5 = sub_1884BEC8C(a1);
  a3(v5, 0);
}

uint64_t sub_1884BEC8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1884778FC(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1884778FC((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_188419138(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1884BED8C(uint64_t a1, void *a2, void (*a3)(void *, uint64_t))
{
  if (a2)
  {
    swift_getErrorValue();
    v6 = a2;
    if (!sub_1885164AC(v8))
    {
      v7 = a2;
      a3(a2, 1);

      return;
    }
  }

  if (a1 && sub_1884BEED8(a1))
  {
    (a3)();
  }

  else
  {
    type metadata accessor for CKError(0);
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_18847A4EC();
    _BridgedStoredNSError.init(_:userInfo:)();
    a3(v9, 1);
  }
}

uint64_t sub_1884BEED8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_18840489C(0, v2, 0);
  v3 = v12;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_188405DF8(v4, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_18840489C((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1884BEFEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

id (*CKFetchRegisteredBundleIDsOperation.fetchRegisteredBundleIDsResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2)))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = CKFetchRegisteredBundleIDsOperation.fetchRegisteredBundleIDsResultBlock.getter();
  a1[1] = v3;
  return sub_1884BF0E4;
}

id sub_1884BF0E4(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = sub_1883F7228();
    sub_1883F5CC0(v2, v3);
    v4 = sub_1883F7228();
    CKFetchRegisteredBundleIDsOperation.fetchRegisteredBundleIDsResultBlock.setter(v4, v5);
    v6 = sub_1883F7228();

    return sub_1883F5BA0(v6, v7);
  }

  else
  {
    v9 = sub_1883F7228();
    return CKFetchRegisteredBundleIDsOperation.fetchRegisteredBundleIDsResultBlock.setter(v9, v10);
  }
}

id CKFetchUserQuotaOperation.fetchUserQuotaResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_1884B2AD4;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1884BF424;
    v9[3] = &unk_1EFA2B560;
    v7 = _Block_copy(v9);

    [v3 setFetchUserQuotaCompletionBlock_];
    _Block_release(v7);
    return sub_1883F5BA0(a1, a2);
  }

  else
  {

    return [v2 setFetchUserQuotaCompletionBlock_];
  }
}

uint64_t (*CKFetchUserQuotaOperation.fetchUserQuotaResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 fetchUserQuotaCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884957EC;
    *(v4 + 24) = v3;
    return sub_1884BF49C;
  }

  return result;
}

uint64_t (*sub_1884BF324@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>))()
{
  result = CKFetchUserQuotaOperation.fetchUserQuotaResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884B2CD4;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884BF394(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1884B2C94;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKFetchUserQuotaOperation.fetchUserQuotaResultBlock.setter(v4, v3);
}

void sub_1884BF424(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1884BF49C(uint64_t a1, char a2)
{
  v3 = a1;
  if (a2)
  {
    a1 = 0;
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return (*(v2 + 16))(a1, v4);
}

id (*CKFetchUserQuotaOperation.fetchUserQuotaResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2)))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = CKFetchUserQuotaOperation.fetchUserQuotaResultBlock.getter();
  a1[1] = v3;
  return sub_1884BF528;
}

id sub_1884BF528(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = sub_1883F7228();
    sub_1883F5CC0(v2, v3);
    v4 = sub_1883F7228();
    CKFetchUserQuotaOperation.fetchUserQuotaResultBlock.setter(v4, v5);
    v6 = sub_1883F7228();

    return sub_1883F5BA0(v6, v7);
  }

  else
  {
    v9 = sub_1883F7228();
    return CKFetchUserQuotaOperation.fetchUserQuotaResultBlock.setter(v9, v10);
  }
}

uint64_t (*CKFetchWebAuthTokenOperation.fetchWebAuthTokenResultBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 fetchWebAuthTokenCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884BF8F8;
    *(v4 + 24) = v3;
    return sub_1884BF900;
  }

  return result;
}

uint64_t (*sub_1884BF634@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = CKFetchWebAuthTokenOperation.fetchWebAuthTokenResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884BFB84;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884BF6A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1884BFB44;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKFetchWebAuthTokenOperation.fetchWebAuthTokenResultBlock.setter(v4, v3);
}

id CKFetchWebAuthTokenOperation.fetchWebAuthTokenResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_1884BFA88;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1884641A8;
    v9[3] = &unk_1EFA2B6A0;
    v7 = _Block_copy(v9);

    [v3 setFetchWebAuthTokenCompletionBlock_];
    _Block_release(v7);
    return sub_1883F5BA0(a1, a2);
  }

  else
  {

    return [v2 setFetchWebAuthTokenCompletionBlock_];
  }
}

void sub_1884BF868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = MEMORY[0x18CFD5010](a1);
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_1884BF900(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a1;
  if (a3)
  {
    a1 = 0;
    a2 = 0;
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return (*(v3 + 16))(a1, a2, v5);
}

void sub_1884BF948(void *a1, uint64_t a2, void *a3, void (*a4)(void *, uint64_t, uint64_t))
{
  if (a3)
  {
    swift_getErrorValue();
    v8 = a3;
    if (!sub_1885164AC(v10))
    {
      v9 = a3;
      a4(a3, 0, 1);

      return;
    }
  }

  if (a2)
  {
    a4(a1, a2, 0);
  }

  else
  {
    type metadata accessor for CKError(0);
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_18847A4EC();
    _BridgedStoredNSError.init(_:userInfo:)();
    a4(v11, 0, 1);
  }
}

id (*CKFetchWebAuthTokenOperation.fetchWebAuthTokenResultBlock.modify(uint64_t (**a1)(uint64_t a1, uint64_t a2, char a3)))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = CKFetchWebAuthTokenOperation.fetchWebAuthTokenResultBlock.getter();
  a1[1] = v3;
  return sub_1884BFAD8;
}

id sub_1884BFAD8(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = sub_1883F7228();
    sub_1883F5CC0(v2, v3);
    v4 = sub_1883F7228();
    CKFetchWebAuthTokenOperation.fetchWebAuthTokenResultBlock.setter(v4, v5);
    v6 = sub_1883F7228();

    return sub_1883F5BA0(v6, v7);
  }

  else
  {
    v9 = sub_1883F7228();
    return CKFetchWebAuthTokenOperation.fetchWebAuthTokenResultBlock.setter(v9, v10);
  }
}

uint64_t sub_1884BFB44(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  return v4(v6);
}

uint64_t (*CKDiscoverAllUserIdentitiesOperation.discoverAllUserIdentitiesResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 discoverAllUserIdentitiesCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188412818;
    *(v4 + 24) = v3;
    return sub_1884B5BC8;
  }

  return result;
}

uint64_t (*sub_1884BFC58@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>))(uint64_t a1, char a2)
{
  result = CKDiscoverAllUserIdentitiesOperation.discoverAllUserIdentitiesResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_18847A480;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884BFCC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_18847A474;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKDiscoverAllUserIdentitiesOperation.discoverAllUserIdentitiesResultBlock.setter(v4, v3);
}

id CKDiscoverAllUserIdentitiesOperation.discoverAllUserIdentitiesResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_1884B5B88;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1884C0074;
    v9[3] = &unk_1EFA2B790;
    v7 = _Block_copy(v9);

    [v3 setDiscoverAllUserIdentitiesCompletionBlock_];
    _Block_release(v7);
    return sub_18847A594(a1, a2);
  }

  else
  {

    return [v2 setDiscoverAllUserIdentitiesCompletionBlock_];
  }
}

id (*CKDiscoverAllUserIdentitiesOperation.discoverAllUserIdentitiesResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2)))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = CKDiscoverAllUserIdentitiesOperation.discoverAllUserIdentitiesResultBlock.getter();
  a1[1] = v3;
  return sub_1884BFED4;
}

id sub_1884BFED4(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = sub_1883F7228();
    sub_1883F5CC0(v2, v3);
    v4 = sub_1883F7228();
    CKDiscoverAllUserIdentitiesOperation.discoverAllUserIdentitiesResultBlock.setter(v4, v5);
    v6 = sub_1883F7228();

    return sub_18847A594(v6, v7);
  }

  else
  {
    v9 = sub_1883F7228();
    return CKDiscoverAllUserIdentitiesOperation.discoverAllUserIdentitiesResultBlock.setter(v9, v10);
  }
}

id CKDiscoverUserIdentitiesOperation.discoverUserIdentitiesResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_1884B5B88;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1884C0074;
    v9[3] = &unk_1EFA2B830;
    v7 = _Block_copy(v9);

    [v3 setDiscoverUserIdentitiesCompletionBlock_];
    _Block_release(v7);
    return sub_18847A594(a1, a2);
  }

  else
  {

    return [v2 setDiscoverUserIdentitiesCompletionBlock_];
  }
}

void sub_1884C0074(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t (*CKDiscoverUserIdentitiesOperation.discoverUserIdentitiesResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 discoverUserIdentitiesCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188412818;
    *(v4 + 24) = v3;
    return sub_1884B5BC8;
  }

  return result;
}

uint64_t (*sub_1884C0180@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>))(uint64_t a1, char a2)
{
  result = CKDiscoverUserIdentitiesOperation.discoverUserIdentitiesResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_18847A480;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884C01F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_18847A474;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKDiscoverUserIdentitiesOperation.discoverUserIdentitiesResultBlock.setter(v4, v3);
}

id (*CKDiscoverUserIdentitiesOperation.discoverUserIdentitiesResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2)))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = CKDiscoverUserIdentitiesOperation.discoverUserIdentitiesResultBlock.getter();
  a1[1] = v3;
  return sub_1884C02C8;
}

id sub_1884C02C8(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = sub_1883F7228();
    sub_1883F5CC0(v2, v3);
    v4 = sub_1883F7228();
    CKDiscoverUserIdentitiesOperation.discoverUserIdentitiesResultBlock.setter(v4, v5);
    v6 = sub_1883F7228();

    return sub_18847A594(v6, v7);
  }

  else
  {
    v9 = sub_1883F7228();
    return CKDiscoverUserIdentitiesOperation.discoverUserIdentitiesResultBlock.setter(v9, v10);
  }
}

id CKFetchShareParticipantsOperation.perShareParticipantResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    sub_1883F71C0();
    v9[1] = 1107296256;
    v9[2] = sub_1884953A4;
    v9[3] = &unk_1EFA2B920;
    v7 = _Block_copy(v9);

    [v3 setPerShareParticipantCompletionBlock_];
    _Block_release(v7);
    return sub_1883F5BA0(a1, a2);
  }

  else
  {

    return [v2 setPerShareParticipantCompletionBlock_];
  }
}

id CKFetchShareParticipantsOperation.fetchShareParticipantsResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1883F8708();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    sub_1883F71C0();
    v8[1] = 1107296256;
    v8[2] = sub_1884C0074;
    v8[3] = &unk_1EFA2B970;
    v6 = _Block_copy(v8);

    [v2 setFetchShareParticipantsCompletionBlock_];
    _Block_release(v6);
    [v2 setCanDropItemResultsEarly_];
    return sub_1883F5BA0(a1, a2);
  }

  else
  {

    return [v2 setFetchShareParticipantsCompletionBlock_];
  }
}

uint64_t sub_1884C05A4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t (*CKFetchShareParticipantsOperation.perShareParticipantResultBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 perShareParticipantCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188495208;
    *(v4 + 24) = v3;
    return sub_188495210;
  }

  return result;
}

uint64_t (*sub_1884C0680@<X0>(void *a1@<X8>))(uint64_t a1, uint64_t a2, char a3)
{
  result = CKFetchShareParticipantsOperation.perShareParticipantResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_188495AAC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884C06F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_188495A60;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKFetchShareParticipantsOperation.perShareParticipantResultBlock.setter(v4, v3);
}

uint64_t (*CKFetchShareParticipantsOperation.perShareParticipantResultBlock.modify(uint64_t (**a1)(uint64_t a1, uint64_t a2, char a3)))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = CKFetchShareParticipantsOperation.perShareParticipantResultBlock.getter();
  a1[1] = v3;
  return sub_1884C07C8;
}

uint64_t (*CKFetchShareParticipantsOperation.fetchShareParticipantsResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 fetchShareParticipantsCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188412818;
    *(v4 + 24) = v3;
    return sub_1884B5BC8;
  }

  return result;
}

uint64_t (*sub_1884C08A4@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>))(uint64_t a1, char a2)
{
  result = CKFetchShareParticipantsOperation.fetchShareParticipantsResultBlock.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_1884B2CD4;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1884C0914(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1884B2C94;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1883F5CC0(v1, v2);
  return CKFetchShareParticipantsOperation.fetchShareParticipantsResultBlock.setter(v4, v3);
}

uint64_t (*CKFetchShareParticipantsOperation.fetchShareParticipantsResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2)))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = CKFetchShareParticipantsOperation.fetchShareParticipantsResultBlock.getter();
  a1[1] = v3;
  return sub_1884C09EC;
}

uint64_t sub_1884C0A2C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = sub_1883F7BC0();
    v11 = v5;
    v6(v4);
    v7 = sub_1883F7BC0();
    a3(v7);
    v8 = sub_1883F7BC0();

    return v11(v8);
  }

  else
  {
    v10 = sub_1883F7BC0();
    return a3(v10);
  }
}

uint64_t CKOperation.operationID.getter()
{
  v1 = [v0 operationID];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_1884C0B74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignpostIntervalStateWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1884C0BBC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignposter();
  sub_188420F44(v4, qword_1EA90C620);
  sub_1883FDE5C(v4, qword_1EA90C620);
  if (qword_1EA90C5F0 != -1)
  {
    swift_once();
  }

  v5 = sub_1883FDE5C(v0, qword_1EA90C5F8);
  (*(v1 + 16))(v3, v5, v0);
  return OSSignposter.init(logger:)();
}

void CKOperationSignpostBegin(_:_:)(void *a1, const char *a2, uint64_t a3, char a4)
{
  v7 = type metadata accessor for OSSignpostID();
  sub_1883F70DC();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1883F8844();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  if (qword_1EA90C618 != -1)
  {
    sub_1883F9E2C(&qword_1EA90C618);
  }

  v17 = type metadata accessor for OSSignposter();
  sub_1883FDE5C(v17, qword_1EA90C620);
  v18 = a1;
  static OSSignpostID.exclusive.getter();
  v19 = OSSignposter.logHandle.getter();
  v20 = static os_signpost_type_t.begin.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

LABEL_20:
    (*(v9 + 16))(v13, v16, v7);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v47 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v9 + 8))(v16, v7);
    v48 = type metadata accessor for SignpostIntervalStateWrapper();
    v49 = objc_allocWithZone(v48);
    *&v49[OBJC_IVAR____TtC8CloudKitP33_D874BC29987C0F9F89EC9BDAEEBD096F28SignpostIntervalStateWrapper_wrapped] = v47;
    v57.receiver = v49;
    v57.super_class = v48;

    v50 = objc_msgSendSuper2(&v57, sel_init);
    sub_188615CFC(v18, v50);

    return;
  }

  v55 = v7;
  v54 = v20;
  if ((a4 & 1) == 0)
  {

    if (a2)
    {
      v53 = a2;
LABEL_12:
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v56 = v52;
      *v21 = 136316418;
      v23 = [v18 operationID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = sub_1883F7CE8();

      *(v21 + 4) = v24;
      *(v21 + 12) = 2112;
      v25 = [v18 containerID];
      *(v21 + 14) = v25;
      v51 = v22;
      *v22 = v25;
      *(v21 + 22) = 2080;
      v26 = [v18 group];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 operationGroupID];

        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;
      }

      else
      {
        v31 = 0xE400000000000000;
        v29 = 1701736270;
      }

      v32 = sub_1883FE340(v29, v31, &v56);

      *(v21 + 24) = v32;
      *(v21 + 32) = 2082;
      v33 = [v18 group];
      if (v33 && (v34 = sub_1883F6078(v33), v35))
      {
        v36 = v35;
      }

      else
      {

        v36 = 0xE400000000000000;
        v34 = 1701736270;
      }

      v37 = sub_1883FE340(v34, v36, &v56);

      *(v21 + 34) = v37;
      *(v21 + 42) = 2082;
      v38 = [v18 operationInfo];
      v39 = [v38 discretionaryNetworkBehavior];

      v40 = CKStringForDiscretionaryNetworkBehavior(v39);
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v41 = sub_1883F7CE8();

      *(v21 + 44) = v41;
      *(v21 + 52) = 2082;
      v42 = [v18 qualityOfService];
      v44 = CKStringForQOS(v42, v43);
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = sub_1883F7CE8();

      *(v21 + 54) = v45;
      v46 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v19, v54, v46, v53, "ID: %{name=ID}s, Container: %{name=Container}@, GroupID: %{name=GroupID}s, GroupName: %{name=GroupName,public}s, Behavior: %{name=Behavior,public}s, QoS: %{name=QoS,public}s", v21, 0x3Eu);
      sub_188442B84(v51, &qword_1EA90DC70, &unk_1886FA190);
      sub_1883F7B60();
      swift_arrayDestroy();
      sub_1883F7B60();
      sub_1883F7B60();

      v7 = v55;
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (a2 >> 32)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a2 & 0xFFFFF800) != 0xD800)
  {
    if (a2 >> 16 <= 0x10)
    {

      v53 = &v56;
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
}

void CKOperationSignpostEnd(_:_:error:)(uint64_t a1, const char *a2, uint64_t a3, unsigned __int8 a4, NSObject *a5)
{
  v9 = type metadata accessor for OSSignpostError();
  sub_1883F70DC();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1883F8844();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48[-v17];
  v51 = type metadata accessor for OSSignpostID();
  sub_1883F70DC();
  v53 = v19;
  MEMORY[0x1EEE9AC00](v20);
  sub_1883F8844();
  v23 = (v21 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v48[-v25];
  v52 = a1;
  if (sub_188615CE8(a1))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  v58[0] = v56;
  v58[1] = v57;
  if (!*(&v57 + 1))
  {
    goto LABEL_13;
  }

  type metadata accessor for SignpostIntervalStateWrapper();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    if (qword_1ED4B5C68 != -1)
    {
      sub_1883F7264(&qword_1ED4B5C68);
    }

    v31 = type metadata accessor for Logger();
    sub_1883FDE5C(v31, qword_1ED4B5C70);
    v27 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1883EA000, v27, v32, "Tried to end a signpost, but none was in effect", v33, 2u);
      sub_1883F7B60();
    }

    goto LABEL_45;
  }

  LODWORD(v50) = a4;
  v27 = v55;
  if (a5)
  {
    v28 = a5;
    if (qword_1EA90C618 != -1)
    {
      sub_1883F9E2C(&qword_1EA90C618);
    }

    v29 = type metadata accessor for OSSignposter();
    sub_1883FDE5C(v29, qword_1EA90C620);
    v30 = a5;
    v15 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v49 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      if ((v50 & 1) == 0)
      {

        if (!a2)
        {
          __break(1u);
LABEL_13:
          sub_188442B84(v58, &qword_1EA90DD10, &qword_1886F8770);
          goto LABEL_14;
        }

        goto LABEL_31;
      }

      if (a2 >> 32)
      {
        __break(1u);
      }

      else
      {
        if ((a2 & 0xFFFFF800) == 0xD800)
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        if (a2 >> 16 <= 0x10)
        {

          a2 = v58;
LABEL_31:

          checkForErrorAndConsumeState(state:)();

          if ((*(v11 + 88))(v18, v9) == *MEMORY[0x1E69E93E8])
          {
            v38 = 0;
            v39 = 0;
            v50 = "[Error] Interval already ended";
          }

          else
          {
            (*(v11 + 8))(v18, v9);
            v50 = "Error: %{name=Error}@";
            v39 = 2;
            v38 = 1;
          }

          v37 = v51;
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *v40 = v39;
          *(v40 + 1) = v38;
          *(v40 + 2) = 2112;
          v42 = a5;
          v43 = _swift_stdlib_bridgeErrorToNSError();
          *(v40 + 4) = v43;
          *v41 = v43;
          v44 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&dword_1883EA000, v15, v49, v44, a2, v50, v40, 0xCu);
          sub_188442B84(v41, &qword_1EA90DC70, &unk_1886FA190);
          sub_1883F7B60();
          sub_1883F7B60();

          v36 = v53;
LABEL_43:
          v35 = v52;
          goto LABEL_44;
        }
      }

      __break(1u);
      goto LABEL_48;
    }

    goto LABEL_24;
  }

  if (qword_1EA90C618 != -1)
  {
    sub_1883F9E2C(&qword_1EA90C618);
  }

  v34 = type metadata accessor for OSSignposter();
  sub_1883FDE5C(v34, qword_1EA90C620);
  a5 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v26 = static os_signpost_type_t.end.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

    v26 = v23;
    goto LABEL_26;
  }

  if ((v50 & 1) == 0)
  {
    if (!a2)
    {
      __break(1u);
LABEL_24:

LABEL_26:
      v35 = v52;
      v36 = v53;
      v37 = v51;
LABEL_44:
      (*(v36 + 8))(v26, v37);
      sub_188615CFC(v35, 0);
LABEL_45:

      return;
    }

LABEL_39:

    checkForErrorAndConsumeState(state:)();

    if ((*(v11 + 88))(v15, v9) == *MEMORY[0x1E69E93E8])
    {
      v45 = "[Error] Interval already ended";
    }

    else
    {
      (*(v11 + 8))(v15, v9);
      v45 = "";
    }

    v36 = v53;
    v37 = v51;
    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1883EA000, a5, v26, v47, a2, v45, v46, 2u);
    sub_1883F7B60();

    v26 = v23;
    goto LABEL_43;
  }

  if (a2 >> 32)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if ((a2 & 0xFFFFF800) != 0xD800)
  {
    if (a2 >> 16 > 0x10)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    a2 = &v54;
    goto LABEL_39;
  }

LABEL_51:
  __break(1u);
}

uint64_t sub_1884C1928(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  sub_1883F90F4(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a1;
  v14[7] = a2;
  v14[8] = a3;

  v15 = a1;

  sub_1884C1CB0(0, 0, v12, &unk_1886FAB48, v14);

  return sub_1884C20C0(v12);
}

uint64_t sub_1884C1A54(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v8[4] = v10;
  *v10 = v8;
  v10[1] = sub_1884C1B50;

  return v12(a6);
}

uint64_t sub_1884C1B50()
{
  sub_1883F7120();
  *(*v0 + 40) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1884C1C4C, 0, 0);
}

uint64_t sub_1884C1C4C()
{
  sub_1883F7120();
  (*(v0 + 16))(*(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1884C1CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1884C2128(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_1883F971C(v11, 1, v12);

  if (v13 == 1)
  {
    sub_1884C20C0(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_1884C1F34(uint64_t a1, void *a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v5;

  v6 = a2;
  v4();
}

uint64_t sub_1884C1FEC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  v11 = sub_1883F7E38(v10);
  *v11 = v12;
  v11[1] = sub_18840F9FC;

  return sub_1884C1A54(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1884C20C0(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1884C2128(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1884C2198(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  sub_1883F90F4(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1886FABE0;
  v9[5] = v8;
  sub_1884C4478(0, 0, v6, &unk_1886FABF0, v9);
}

uint64_t CKSymptomDiagnosticsReporter.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  sub_1883F7D04();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t CKSymptomDiagnosticsReporter.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t CKSymptomDiagnosticsReporter.__allocating_init()()
{
  sub_1883F7D04();
  v0 = swift_allocObject();
  return sub_1883F9324(v0);
}

uint64_t CKSymptomDiagnosticsReporter.init()()
{
  result = v0;
  *(v0 + 16) = sub_1884C2328;
  *(v0 + 24) = 0;
  return result;
}

id sub_1884C2328()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69D4F80]);

  return [v0 init];
}

uint64_t CKSymptomDiagnosticsReporter.report(type:subType:reason:context:processName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1883F7120();
  v11[76] = v10;
  v11[75] = a10;
  v11[74] = a9;
  v11[73] = v12;
  v11[72] = v13;
  v11[71] = v14;
  v11[70] = v15;
  v11[69] = v16;
  v11[68] = v17;
  v11[67] = v18;
  v11[66] = v19;
  v20 = sub_18844E6FC(&qword_1EA90E6B0, &unk_1886FBC90);
  v11[77] = v20;
  v11[78] = *(v20 - 8);
  v11[79] = swift_task_alloc();
  v21 = sub_18844E6FC(&qword_1EA90E368, &qword_1886FAB68);
  v11[80] = v21;
  v11[81] = *(v21 - 8);
  v11[82] = swift_task_alloc();
  sub_1883F7FD8();
  return sub_1883FDB04(v22, v23, v24);
}

uint64_t sub_1884C24AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v14[75])
  {
    v15 = v14[74];
    v16 = v14[75];
  }

  else
  {
    v17 = [objc_opt_self() processInfo];
    v18 = [v17 processName];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v19;
  }

  v14[84] = v16;
  v14[83] = v15;

  if ((CKRunningInClientProcess() & 1) == 0)
  {
    v33 = v14[69];
    v34 = v14[68];
    v35 = v14[67];
    v36 = v14[66];
    v37 = (*(v14[76] + 16))();
    v14[85] = v37;
    v38 = sub_1884C483C(0x74694B64756F6C43, 0xE800000000000000, v36, v35, v34, v33, v15, v16, 0, 0xE000000000000000, v37);

    if (v38)
    {
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    if (qword_1ED4B5C68 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1883FDE5C(v39, qword_1ED4B5C70);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1883EA000, v40, v41, "Failed to generate diagnostic signature", v42, 2u);
      MEMORY[0x18CFD7E80](v42, -1, -1);
    }

    related decl 'e' for CKErrorCode.init(_:description:)(1, 0xD000000000000027, 0x80000001887015C0);
    swift_willThrow();

    sub_1883F7A18();

    sub_1883F816C();
    sub_1883F85A4();

    __asm { BRAA            X1, X16 }
  }

  v20 = v14[82];
  v21 = v14[81];
  v22 = v14[80];
  v23 = [objc_opt_self() sharedXPCConnection];
  v14[89] = v23;
  v14[2] = v14;
  v14[7] = v14 + 65;
  v14[3] = sub_1884C2C38;
  swift_continuation_init();
  v14[25] = v22;
  v24 = sub_188403664(v14 + 22);
  sub_18844E6FC(&qword_1EA90E370, &unk_1886FAB70);
  v14[90] = sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  CheckedContinuation.init(continuation:function:)();
  (*(v21 + 32))(v24, v20, v22);
  v14[18] = MEMORY[0x1E69E9820];
  v14[19] = 1107296256;
  v14[20] = sub_1884C32EC;
  v14[21] = &unk_1EFA2BBC8;
  [v23 getAdopterProcessScopedDaemonProxyCreatorSynchronous:0 completionHandler:?];
  (*(v21 + 8))(v24, v22);
  sub_1883F85A4();

  return MEMORY[0x1EEE6DEC8](v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1884C2ABC()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F78D4();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 704) = v0;

  if (!v0)
  {
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884C2BC0()
{
  sub_1883F7120();

  sub_1883F816C();

  return v1();
}

uint64_t sub_1884C2C38()
{
  sub_1883F7120();
  sub_1883F78D4();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 728) = v4;
  if (v4)
  {
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1884C2D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14[89];
  v16 = v14[71];
  v17 = v14[69];
  v18 = v14[68];
  v19 = v14[67];
  v20 = v14[66];
  v41 = v14[65];
  v14[92] = v41;

  v40 = MEMORY[0x18CFD5010](v20, v19);
  v14[93] = v40;
  v39 = MEMORY[0x18CFD5010](v18, v17);
  v14[94] = v39;
  if (v16)
  {
    v21 = MEMORY[0x18CFD5010](v14[70], v14[71]);
  }

  else
  {
    v21 = 0;
  }

  v38 = v21;
  v14[95] = v21;
  if (v14[73])
  {
    v22 = MEMORY[0x18CFD5010](v14[72]);
  }

  else
  {
    v22 = 0;
  }

  v14[96] = v22;
  v37 = v22;
  v23 = v14[79];
  v24 = v14[78];
  v25 = v14[77];
  v26 = MEMORY[0x18CFD5010](v14[83], v14[84]);
  v14[97] = v26;

  v14[10] = v14;
  v14[11] = sub_1884C2F90;
  swift_continuation_init();
  v14[33] = v25;
  v27 = sub_188403664(v14 + 30);
  CheckedContinuation.init(continuation:function:)();
  (*(v24 + 32))(v27, v23, v25);
  v14[26] = MEMORY[0x1E69E9820];
  v14[27] = 1107296256;
  v14[28] = sub_1884C339C;
  v14[29] = &unk_1EFA2BBF0;
  [v41 reportSymptomDiagnosticsWithType:v40 subType:v39 reason:v38 context:v37 processName:v26 completionHandler:v14 + 26];
  (*(v24 + 8))(v27, v25);
  sub_1883F85A4();

  return MEMORY[0x1EEE6DEC8](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1884C2F90()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 784) = *(v3 + 112);
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884C3090()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[95];
  v4 = v0[94];
  v5 = v0[93];
  swift_unknownObjectRelease();

  sub_1883F816C();

  return v6();
}

uint64_t sub_1884C313C(uint64_t a1)
{
  v2 = *(v1 + 712);
  swift_willThrow();

  sub_1883F7A18();

  sub_1883F816C();

  return v3();
}

uint64_t sub_1884C31B8(uint64_t a1)
{
  v2 = v1[97];
  v3 = v1[96];
  v4 = v1[95];
  v5 = v1[94];
  v6 = v1[93];
  swift_willThrow();
  swift_unknownObjectRelease();

  sub_1883F7A18();

  sub_1883F816C();

  return v7();
}

uint64_t sub_1884C3270()
{
  sub_1883F7120();

  sub_1883F7A18();

  sub_1883F816C();

  return v1();
}

void sub_1884C32EC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_188400B68((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_1884E0AAC();
  }

  else if (a2)
  {
    swift_unknownObjectRetain();

    sub_1884E0C2C();
  }

  else
  {
    __break(1u);
  }
}

void sub_1884C339C(uint64_t a1, void *a2)
{
  sub_188400B68((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    sub_1884E0AD4();
  }

  else
  {

    sub_1884E0C70();
  }
}

void sub_1884C3428(uint64_t a1, void *a2, uint64_t *a3)
{
  v16 = a2;
  v5 = sub_18844E6FC(&qword_1EA90E6B0, &unk_1886FBC90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v9 = *a3;

  v10 = MEMORY[0x1E69E7CC0];
  v15 = Dictionary.init(dictionaryLiteral:)();
  v11 = Dictionary.init(dictionaryLiteral:)();
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v8, v5);
  aBlock[4] = sub_1884C4DB8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1884C3A64;
  aBlock[3] = &unk_1EFA2BD30;
  v14 = _Block_copy(aBlock);

  sub_1884C4E4C(0.0, v9, v10, v15, v11, v14, v16);
  _Block_release(v14);
}

uint64_t sub_1884C3648(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1ED4B5C68 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1883FDE5C(v3, qword_1ED4B5C70);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1883EA000, v4, v5, "Failed to report diagnostics, invalid reply", v6, 2u);
      MEMORY[0x18CFD7E80](v6, -1, -1);
    }

    v7 = 0xD00000000000002BLL;
    v8 = 0x80000001887017A0;
    goto LABEL_22;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  sub_18847E6E4(a1, &v22);
  sub_1884889C4(&v20);
  if (v23)
  {
    if ((swift_dynamicCast() & 1) != 0 && v17 == 1)
    {
      sub_18844E6FC(&qword_1EA90E6B0, &unk_1886FBC90);
      return CheckedContinuation.resume(returning:)();
    }
  }

  else
  {
    sub_18845B1B0(&v22, &qword_1EA90DD10, &qword_1886F8770);
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v9;
  AnyHashable.init<A>(_:)();
  sub_18847E6E4(a1, &v22);
  sub_1884889C4(&v20);
  if (!v23)
  {
    sub_18845B1B0(&v22, &qword_1EA90DD10, &qword_1886F8770);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v10 = 0xED0000726F727245;
    v11 = 0x206E776F6E6B6E55;
    goto LABEL_17;
  }

  v11 = v18;
  v10 = v19;
LABEL_17:
  if (qword_1ED4B5C68 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1883FDE5C(v12, qword_1ED4B5C70);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1883FE340(v11, v10, &v20);
    _os_log_impl(&dword_1883EA000, v13, v14, "Failed to report diagnostics: %s", v15, 0xCu);
    sub_1883FE944(v16);
    MEMORY[0x18CFD7E80](v16, -1, -1);
    MEMORY[0x18CFD7E80](v15, -1, -1);
  }

  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v20 = 0xD00000000000001ELL;
  v21 = 0x80000001887017D0;
  MEMORY[0x18CFD5140](v11, v10);

  v7 = v20;
  v8 = v21;
LABEL_22:
  v20 = related decl 'e' for CKErrorCode.init(_:description:)(1, v7, v8);
  sub_18844E6FC(&qword_1EA90E6B0, &unk_1886FBC90);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1884C3A64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t CKSymptomDiagnosticsReporter.__deallocating_deinit()
{

  v0 = sub_1883F7D04();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id sub_1884C3B6C()
{
  v0 = objc_allocWithZone(CKSymptomDiagnosticsReporter);

  return [v0 init];
}