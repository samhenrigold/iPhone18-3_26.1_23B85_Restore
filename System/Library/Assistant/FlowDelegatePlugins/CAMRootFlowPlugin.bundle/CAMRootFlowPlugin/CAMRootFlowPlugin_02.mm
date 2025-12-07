unint64_t sub_3802C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5B94(&qword_72E78, &unk_5D0B0);
    v3 = sub_5B6A8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1AE38(v4, &v13, &unk_72450, &unk_5C470);
      v5 = v13;
      v6 = v14;
      result = sub_37278(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_302D4(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_3815C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_381B0()
{
  result = qword_71C10;
  if (!qword_71C10)
  {
    sub_5A318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71C10);
  }

  return result;
}

unint64_t sub_38208(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5B94(&qword_72E70, &qword_5D0A8);
    v3 = sub_5B6A8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1AE38(v4, v13, &qword_72508, &unk_5D130);
      result = sub_372F0(v13);
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
      result = sub_302D4(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_38344(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5B94(&qword_72F60, &qword_5D158);
    v3 = sub_5B6A8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_37278(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_38458(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_5B94(&qword_72F68, &qword_5D600);
  v3 = sub_5B6A8();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_37334(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 9);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_37334(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

id sub_3856C(uint64_t a1)
{
  v2 = objc_allocWithZone(SKIDirectInvocationPayload);
  v3 = sub_5B338();
  v4 = [v2 initWithIdentifier:v3];

  sub_5B94(&qword_724F8, &qword_5C638);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  v12 = 0x7865646E69;
  v13 = 0xE500000000000000;
  sub_5B568();
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = a1;
  sub_38208(inited);
  swift_setDeallocating();
  sub_38750(inited + 32);
  isa = sub_5B2E8().super.isa;

  [v4 setUserData:{isa, v12, v13}];

  sub_5A868();
  sub_5CBC(&v12, v14);
  v7 = sub_5A248();
  sub_5D00(&v12);
  v8 = objc_opt_self();
  v9 = [v8 runSiriKitExecutorCommandWithContext:v7 payload:v4];
  v10 = [v8 wrapCommandInStartLocalRequest:v9];

  return v10;
}

uint64_t sub_38750(uint64_t a1)
{
  v2 = sub_5B94(&qword_72508, &unk_5D130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_38868(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  if (!swift_getEnumCaseMultiPayload())
  {
    v10 = sub_5A318();
    v11 = *(*(v10 - 8) + 16);
    v11(a1, a2, v10);
    v12 = sub_5B94(&qword_71C98, &qword_5C2A8);
    v11((a1 + *(v12 + 48)), (a2 + *(v12 + 48)), v10);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v7 = *(v6 + 64);

  return memcpy(a1, a2, v7);
}

uint64_t sub_389B4(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v4 = sub_5A318();
    v6 = *(*(v4 - 8) + 8);
    (v6)((v4 - 8), a1, v4);
    v5 = a1 + *(sub_5B94(&qword_71C98, &qword_5C2A8) + 48);

    return v6(v5, v4);
  }

  return result;
}

char *sub_38A74(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = sub_5A318();
    v9 = *(*(v8 - 8) + 16);
    v9(a1, a2, v8);
    v10 = sub_5B94(&qword_71C98, &qword_5C2A8);
    v9(&a1[*(v10 + 48)], &a2[*(v10 + 48)], v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

char *sub_38B80(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_2EA30(a1);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = sub_5A318();
    v9 = *(*(v8 - 8) + 16);
    v9(a1, a2, v8);
    v10 = sub_5B94(&qword_71C98, &qword_5C2A8);
    v9(&a1[*(v10 + 48)], &a2[*(v10 + 48)], v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

char *sub_38C9C(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = sub_5A318();
    v9 = *(*(v8 - 8) + 32);
    v9(a1, a2, v8);
    v10 = sub_5B94(&qword_71C98, &qword_5C2A8);
    v9(&a1[*(v10 + 48)], &a2[*(v10 + 48)], v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

char *sub_38DA8(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_2EA30(a1);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = sub_5A318();
    v9 = *(*(v8 - 8) + 32);
    v9(a1, a2, v8);
    v10 = sub_5B94(&qword_71C98, &qword_5C2A8);
    v9(&a1[*(v10 + 48)], &a2[*(v10 + 48)], v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_38EC4(uint64_t a1)
{
  result = sub_5A318();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v3[4] = v3;
    v3[5] = &value witness table for Builtin.Int64 + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_38F68(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000014;
  v3 = &unk_5E4E0;
  if (a1 == 5)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0xD000000000000015;
  }

  if (a1 == 5)
  {
    v5 = "unknownErrorResponse";
  }

  else
  {
    v5 = "notUndoableResponse";
  }

  if (a1 == 3)
  {
    v6 = "mitigateSilently";
  }

  else
  {
    v6 = "networkErrorResponse";
  }

  if (a1 <= 4u)
  {
    v7 = 0xD000000000000014;
  }

  else
  {
    v7 = v4;
  }

  if (a1 <= 4u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  if (a1 == 1)
  {
    v9 = 0xD000000000000011;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (a1 == 1)
  {
    v10 = "airplaneModeResponse";
  }

  else
  {
    v10 = "gibberishResponse";
  }

  if (!a1)
  {
    v9 = 0xD000000000000014;
    v10 = &unk_5E4E0;
  }

  v11 = a1 <= 2u;
  if (a1 <= 2u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v7;
  }

  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = v8;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xD000000000000011;
        v3 = "airplaneModeResponse";
      }

      else
      {
        v2 = 0xD000000000000010;
        v3 = "gibberishResponse";
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0xD000000000000013;
      v3 = "unknownErrorResponse";
    }

    else
    {
      v2 = 0xD000000000000015;
      v3 = "notUndoableResponse";
    }
  }

  else if (a2 == 3)
  {
    v3 = "mitigateSilently";
  }

  else
  {
    v3 = "networkErrorResponse";
  }

  if (v12 == v2 && (v13 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_5B7A8();
  }

  return v14 & 1;
}

Swift::Int sub_390F0(uint64_t a1, unsigned __int8 a2)
{
  sub_5B848();
  sub_5B378();

  return sub_5B868();
}

uint64_t sub_39204(uint64_t a1)
{
  sub_5B378();
}

unint64_t sub_392F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_3C5A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_39324(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = *v1;
  v4 = &unk_5E4E0;
  v5 = "unknownErrorResponse";
  v6 = 0xD000000000000013;
  if (v3 != 5)
  {
    v6 = 0xD000000000000015;
    v5 = "notUndoableResponse";
  }

  v7 = "mitigateSilently";
  if (v3 != 3)
  {
    v7 = "networkErrorResponse";
  }

  if (*v1 <= 4u)
  {
    v6 = 0xD000000000000014;
    v5 = v7;
  }

  v8 = "airplaneModeResponse";
  v9 = 0xD000000000000011;
  if (v3 != 1)
  {
    v9 = 0xD000000000000010;
    v8 = "gibberishResponse";
  }

  if (*v1)
  {
    v2 = v9;
    v4 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v2 = v6;
    v10 = v5;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
}

uint64_t sub_393E0(uint64_t a1)
{
  v2 = sub_5B94(&qword_71C88, &qword_5C2A0);
  __chkstk_darwin(v2 - 8);
  v95 = v80 - v3;
  v4 = type metadata accessor for CAMDirectInvocation(0);
  v85 = *(v4 - 8);
  v86 = v4;
  v5 = __chkstk_darwin(v4);
  v83 = v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v87 = v80 - v7;
  v8 = sub_5A858();
  v93 = *(v8 - 8);
  v94 = v8;
  __chkstk_darwin(v8);
  v10 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5A838();
  v91 = *(v11 - 8);
  v92 = v11;
  __chkstk_darwin(v11);
  v13 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_5A7D8();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v90 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v80 - v18;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v20 = sub_5B228();
  v21 = sub_5B44(v20, qword_763B8);
  v22 = *(v15 + 16);
  v96 = a1;
  v88 = v22;
  v22(v19, a1, v14);
  v23 = sub_5B218();
  v24 = sub_5B4B8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v82 = v21;
    v26 = v25;
    v81 = swift_slowAlloc();
    v99[0] = v81;
    *v26 = 136315138;
    sub_3C664(&qword_71C90, 255, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v27 = sub_5B798();
    v80[1] = v15 + 16;
    v28 = v10;
    v30 = v29;
    v89 = *(v15 + 8);
    v89(v19, v14);
    v31 = sub_2DC10(v27, v30, v99);
    v10 = v28;

    *(v26 + 4) = v31;
    _os_log_impl(&dword_0, v23, v24, "FallbackEntryFlow: on called with %s", v26, 0xCu);
    sub_5D00(v81);
  }

  else
  {

    v89 = *(v15 + 8);
    v89(v19, v14);
  }

  v32 = v96;
  sub_5A7C8();
  v34 = v93;
  v33 = v94;
  v35 = (*(v93 + 88))(v10, v94);
  v36 = v95;
  if (v35 != enum case for Parse.directInvocation(_:))
  {
    (*(v34 + 8))(v10, v33);
    goto LABEL_10;
  }

  (*(v34 + 96))(v10, v33);
  (*(v91 + 32))(v13, v10, v92);
  sub_3601C(v36);
  if ((*(v85 + 48))(v36, 1, v86) == 1)
  {
    (*(v91 + 8))(v13, v92);
    sub_5D4C(v36, &qword_71C88, &qword_5C2A0);
LABEL_10:
    v37 = v90;
    v88(v90, v32, v14);
    v38 = sub_5B218();
    v39 = sub_5B4C8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = v14;
      v42 = swift_slowAlloc();
      v99[0] = v42;
      *v40 = 136315138;
      sub_3C664(&qword_71C90, 255, &type metadata accessor for Input, &protocol conformance descriptor for Input);
      v43 = sub_5B798();
      v45 = v44;
      v89(v37, v41);
      v46 = sub_2DC10(v43, v45, v99);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_0, v38, v39, "FallbackEntryFlow called with unexpected input %s", v40, 0xCu);
      sub_5D00(v42);
    }

    else
    {

      v89(v37, v14);
    }

    return 0;
  }

  v48 = v36;
  v49 = v87;
  sub_1AF04(v48, v87);
  v50 = v83;
  sub_2E9CC(v49, v83);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_2EA30(v87);
    (*(v91 + 8))(v13, v92);
    sub_2EA30(v50);
    goto LABEL_10;
  }

  sub_2EA30(v50);
  v51 = sub_5A828();
  if (v51)
  {
    v52 = v51;
    v53 = *(v51 + 16);
    if (v53)
    {
      v54 = sub_37278(0x724573656D6D6F70, 0xEB00000000726F72);
      if (v55)
      {
        sub_C0A0(*(v52 + 56) + 32 * v54, v99);
        v56 = swift_dynamicCast();
        v53 = v97;
        v57 = v98;
        if (!v56)
        {
          v53 = 0;
          v57 = 0;
        }

LABEL_23:
        v58 = v84;
        *(v84 + 16) = v53;
        *(v58 + 24) = v57;

        v59 = *(v52 + 16);
        if (v59)
        {
          v60 = sub_37278(0xD000000000000012, 0x800000000005F130);
          if (v61)
          {
            sub_C0A0(*(v52 + 56) + 32 * v60, v99);
            v62 = swift_dynamicCast();
            v59 = v97;
            v63 = v98;
            if (!v62)
            {
              v59 = 0;
              v63 = 0;
            }

            goto LABEL_29;
          }

          v59 = 0;
        }

        v63 = 0;
LABEL_29:
        v64 = v84;
        *(v84 + 32) = v59;
        *(v64 + 40) = v63;

        v65 = *(v52 + 16);
        if (v65)
        {
          v66 = sub_37278(0x494C4E7974706D65, 0xEC0000007475706ELL);
          if ((v67 & 1) != 0 && (sub_C0A0(*(v52 + 56) + 32 * v66, v99), swift_dynamicCast()))
          {
            LOBYTE(v65) = v97;
          }

          else
          {
            LOBYTE(v65) = 0;
          }
        }

        *(v84 + 48) = v65;
        v68 = *(v52 + 16);
        if (v68)
        {
          v69 = sub_37278(0x526F646E55736168, 0xEE00747365757165);
          if ((v70 & 1) != 0 && (sub_C0A0(*(v52 + 56) + 32 * v69, v99), swift_dynamicCast()))
          {
            LOBYTE(v68) = v97;
          }

          else
          {
            LOBYTE(v68) = 0;
          }
        }

        *(v84 + 49) = v68;
        if (*(v52 + 16) && (v71 = sub_37278(0x74636E756A6E6F63, 0xEF6F666E496E6F69), (v72 & 1) != 0))
        {
          sub_C0A0(*(v52 + 56) + 32 * v71, v99);

          if (swift_dynamicCast())
          {
            v73 = v97;
            v74 = v98;
            sub_59DB8();
            swift_allocObject();
            sub_59DA8();
            sub_5B0A8();
            sub_3C664(&qword_73260, 255, &type metadata accessor for RequestConjunctionInfo, &protocol conformance descriptor for RequestConjunctionInfo);
            sub_59D98();
            sub_293D8(v73, v74);

            v79 = *(v84 + 56);
            *(v84 + 56) = v99[0];
          }
        }

        else
        {
        }

        goto LABEL_44;
      }

      v53 = 0;
    }

    v57 = 0;
    goto LABEL_23;
  }

LABEL_44:
  v75 = v84;
  *(v75 + 64) = sub_39F9C();
  v76 = sub_5B218();
  v77 = sub_5B4B8();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&dword_0, v76, v77, "FallbackEntryFlow: input accepted", v78, 2u);
  }

  sub_2EA30(v87);
  (*(v91 + 8))(v13, v92);
  return 1;
}

uint64_t sub_39F9C()
{
  v1 = v0;
  v94 = sub_5AF58();
  v2 = *(v94 - 8);
  __chkstk_darwin(v94);
  v4 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_5B94(&qword_73238, &qword_5D3D0);
  __chkstk_darwin(v89);
  v93 = &v85 - v5;
  v6 = sub_5B94(&qword_73240, &qword_5D3D8);
  v7 = __chkstk_darwin(v6 - 8);
  v88 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v91 = &v85 - v10;
  __chkstk_darwin(v9);
  v95 = &v85 - v11;
  v12 = sub_5AFB8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v16 = sub_5B228();
  v17 = sub_5B44(v16, qword_763B8);
  v18 = sub_5B218();
  v19 = sub_5B4B8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "FallbackEntryFlow: evalExecutionDecision", v20, 2u);
  }

  if (*(v1 + 48) == 1)
  {
    v21 = sub_5B218();
    v22 = sub_5B4B8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = 2;
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v21, v22, "FallbackEntryFlow: emptyNLInput == true", v24, 2u);
    }

    else
    {

      return 2;
    }

    return v23;
  }

  v86 = v4;
  v87 = v2;
  sub_5AEF8();
  sub_5AEE8();
  v25 = sub_5AED8();

  v92 = v25;

  v90 = v17;
  v26 = sub_5B218();
  v27 = sub_5B4B8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v85 = v1;
    v29 = v28;
    v30 = swift_slowAlloc();
    v96 = v30;
    *v29 = 67109378;
    *(v29 + 4) = sub_5AFA8() & 1;

    *(v29 + 8) = 2080;
    sub_5AFC8();
    sub_3C664(&qword_73258, 255, &type metadata accessor for NetworkAvailability.Status, &protocol conformance descriptor for NetworkAvailability.Status);
    v31 = sub_5B798();
    v33 = v32;
    (*(v13 + 8))(v15, v12);
    v34 = sub_2DC10(v31, v33, &v96);

    *(v29 + 10) = v34;
    _os_log_impl(&dword_0, v26, v27, "FallbackEntryFlow network states: isInAirplaneMode: %{BOOL}d networkAvailabilityProvider.status: %s", v29, 0x12u);
    sub_5D00(v30);

    v1 = v85;
  }

  else
  {
  }

  v35 = sub_5B218();
  v36 = sub_5B4B8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *v37 = 136315394;
    v38 = *(v1 + 40);
    v96 = *(v1 + 32);
    v97 = v38;

    sub_5B94(&qword_73250, &unk_5D3E0);
    v39 = sub_5B358();
    v41 = sub_2DC10(v39, v40, &v98);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    v42 = *(v1 + 24);
    v96 = *(v1 + 16);
    v97 = v42;

    v43 = sub_5B358();
    v45 = sub_2DC10(v43, v44, &v98);

    *(v37 + 14) = v45;
    _os_log_impl(&dword_0, v35, v36, "FallbackEntryFlow: pommesSearchReason = %s pommesError = %s", v37, 0x16u);
    swift_arrayDestroy();
  }

  v47 = v93;
  v46 = v94;
  v48 = v95;
  if (sub_5AEC8())
  {
  }

  else
  {
    v49 = sub_5B218();
    v50 = sub_5B4B8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_0, v49, v50, "SiriEnvironment.forCurrentTask is nil", v51, 2u);
    }
  }

  if (*(v1 + 49) != 1)
  {
    if (sub_5AEC8())
    {
      sub_5AE98();

      sub_5B0B8();

      v59 = 0;
    }

    else
    {
      v59 = 1;
    }

    v60 = v87;
    v61 = *(v87 + 56);
    v61(v48, v59, 1, v46);
    v62 = v91;
    (*(v60 + 104))(v91, enum case for InputOrigin.magusFollowup(_:), v46);
    v61(v62, 0, 1, v46);
    v63 = v62;
    v64 = *(v89 + 48);
    sub_3C5F4(v48, v47);
    sub_3C5F4(v63, v47 + v64);
    v65 = v48;
    v66 = *(v60 + 48);
    if (v66(v47, 1, v46) == 1)
    {
      sub_5D4C(v63, &qword_73240, &qword_5D3D8);
      sub_5D4C(v65, &qword_73240, &qword_5D3D8);
      if (v66(v47 + v64, 1, v46) == 1)
      {
        sub_5D4C(v47, &qword_73240, &qword_5D3D8);
LABEL_45:
        v82 = sub_5B218();
        v83 = sub_5B4B8();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&dword_0, v82, v83, "FallbackEntryFlow: inputOrigin == magusFollowup", v84, 2u);
        }

        v71 = sub_3AE38(v92);
LABEL_48:
        v23 = v71;

        return v23;
      }
    }

    else
    {
      v67 = v88;
      sub_3C5F4(v47, v88);
      if (v66(v47 + v64, 1, v46) != 1)
      {
        v78 = v86;
        v79 = v87;
        (*(v87 + 32))(v86, v47 + v64, v46);
        sub_3C664(&qword_73248, 255, &type metadata accessor for InputOrigin, &protocol conformance descriptor for InputOrigin);
        v80 = sub_5B328();
        v81 = *(v79 + 8);
        v81(v78, v46);
        sub_5D4C(v91, &qword_73240, &qword_5D3D8);
        sub_5D4C(v95, &qword_73240, &qword_5D3D8);
        v81(v67, v46);
        sub_5D4C(v47, &qword_73240, &qword_5D3D8);
        if (v80)
        {
          goto LABEL_45;
        }

LABEL_35:
        v68 = sub_5B218();
        v69 = sub_5B4B8();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&dword_0, v68, v69, "FallbackEntryFlow: inputOrigin != magusFollowup", v70, 2u);
        }

        v71 = sub_3AC80(v92);
        goto LABEL_48;
      }

      sub_5D4C(v91, &qword_73240, &qword_5D3D8);
      sub_5D4C(v95, &qword_73240, &qword_5D3D8);
      (*(v87 + 8))(v67, v46);
    }

    sub_5D4C(v47, &qword_73238, &qword_5D3D0);
    goto LABEL_35;
  }

  v52 = *(v1 + 56);
  if (!v52)
  {
    goto LABEL_39;
  }

  v53 = v52;
  v54 = sub_5B098();
  result = sub_5B088();
  if (result)
  {
    if (v54 < result - 1)
    {
      v56 = sub_5B218();
      v57 = sub_5B4B8();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_0, v56, v57, "FallbackEntryFlow: unhandled undo not final request, mitigating silently", v58, 2u);
      }

      return 2;
    }

LABEL_39:
    v72 = sub_5B218();
    v73 = sub_5B4B8();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_0, v72, v73, "FallbackEntryFlow: missing conjunctionInfo", v74, 2u);
    }

    v75 = sub_5B218();
    v76 = sub_5B4B8();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_0, v75, v76, "FallbackEntryFlow: unhandled undo request", v77, 2u);
    }

    return 5;
  }

  __break(1u);
  return result;
}

uint64_t sub_3AC80(uint64_t a1)
{
  v2 = v1[5];
  if (v1[3])
  {
    if (!v2)
    {
      return 1;
    }
  }

  else if (!v2)
  {
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v9 = sub_5B228();
    sub_5B44(v9, qword_763B8);
    v10 = sub_5B218();
    v11 = sub_5B4B8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "FallbackEntryFlow: No pommes signals, returning gibberishResponse", v12, 2u);
    }

    return 1;
  }

  if (v1[4] != 0x616D6F446F666E69 || v2 != 0xEF65737261506E69)
  {
    v4 = a1;
    v5 = sub_5B7A8();
    a1 = v4;
    if ((v5 & 1) == 0)
    {
      v6 = v1[5];
      if (!v6)
      {
        return 1;
      }

      if (v6 != 0x800000000005F1D0 || v1[4] != 0xD000000000000016)
      {
        v7 = sub_5B7A8();
        a1 = v4;
        if ((v7 & 1) == 0)
        {
          return 1;
        }
      }
    }
  }

  return sub_3AFE0(a1, 0);
}

uint64_t sub_3AE38(uint64_t a1)
{
  v2 = *(v1 + 40);
  if (v2 && (*(v1 + 32) == 0x616D6F446F666E69 ? (v3 = v2 == 0xEF65737261506E69) : (v3 = 0), v3 || (v4 = a1, v5 = sub_5B7A8(), a1 = v4, (v5 & 1) != 0) || (v6 = *(v1 + 40)) != 0 && (v6 == 0x800000000005F1D0 && *(v1 + 32) == 0xD000000000000016 || (v7 = sub_5B7A8(), a1 = v4, (v7 & 1) != 0))))
  {

    return sub_3AFE0(a1, 1);
  }

  else
  {
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v9 = sub_5B228();
    sub_5B44(v9, qword_763B8);
    v10 = sub_5B218();
    v11 = sub_5B4B8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "FallbackEntryFlow: mitigateSilently", v12, 2u);
    }

    return 2;
  }
}

uint64_t sub_3AFE0(uint64_t a1, int a2)
{
  v3 = v2;
  v38 = a2;
  v4 = sub_5B068();
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_5AFB8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v41 = &v36 - v12;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v13 = sub_5B228();
  sub_5B44(v13, qword_763B8);
  v14 = sub_5B218();
  v15 = sub_5B4B8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v37 = v11;
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "FallbackEntryFlow: explicit pegasus call", v16, 2u);
    v11 = v37;
  }

  if (sub_5AFA8())
  {
    return 0;
  }

  v18 = v41;
  sub_5AFC8();
  (*(v8 + 104))(v11, enum case for NetworkAvailability.Status.available(_:), v7);
  sub_3C664(&qword_73230, 255, &type metadata accessor for NetworkAvailability.Status, &protocol conformance descriptor for NetworkAvailability.Status);
  v19 = sub_5B328();
  v20 = *(v8 + 8);
  v20(v11, v7);
  v20(v18, v7);
  if ((v19 & 1) == 0)
  {
    return 3;
  }

  v22 = *(v3 + 16);
  v21 = *(v3 + 24);
  if (!v21)
  {
    v27 = 0;
    goto LABEL_21;
  }

  if ((v22 != 0x746C757365526F6ELL || v21 != 0xE900000000000073) && (sub_5B7A8() & 1) == 0)
  {
    v22 = *(v3 + 16);
    v27 = *(v3 + 24);
LABEL_21:
    v30 = v39;
    v29 = v40;
    (*(v39 + 104))(v6, enum case for PommesError.timedOut(_:), v40);

    v31 = sub_5B058();
    v33 = v32;
    (*(v30 + 8))(v6, v29);
    if (v27)
    {
      if (v22 == v31 && v27 == v33)
      {

        return 6;
      }

      v34 = sub_5B7A8();

      if (v34)
      {
        return 6;
      }
    }

    else
    {
    }

    return 4;
  }

  v23 = sub_5B218();
  v24 = sub_5B4B8();
  v25 = os_log_type_enabled(v23, v24);
  if (v38)
  {
    if (v25)
    {
      v17 = 2;
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v23, v24, "no pommes results on FF so mitigate silently", v26, 2u);
    }

    else
    {

      return 2;
    }
  }

  else
  {
    if (v25)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v23, v24, "no pommes results on initial input so render gibberish", v28, 2u);
    }

    return 1;
  }

  return v17;
}

uint64_t sub_3B4E4(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  v3 = sub_5B068();
  v2[40] = v3;
  v2[41] = *(v3 - 8);
  v2[42] = swift_task_alloc();

  return _swift_task_switch(sub_3B5A4, 0, 0);
}

uint64_t sub_3B5A4()
{
  v57 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);

  v2 = sub_5B218();
  v3 = sub_5B4B8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 312);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v55 = v6;
    *v5 = 136315138;
    *(v0 + 344) = *(v4 + 64);
    sub_5B94(&qword_73228, &qword_5D3C8);
    v7 = sub_5B358();
    v9 = sub_2DC10(v7, v8, &v55);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v2, v3, "FallbackEntryFlow: execute called with decision %s", v5, 0xCu);
    sub_5D00(v6);
  }

  v10 = *(v0 + 312);
  v11 = *(v10 + 64);
  if (v11 > 3)
  {
    if (*(v10 + 64) > 5u)
    {
      if (v11 == 6)
      {
        v24 = *(v0 + 328);
        v23 = *(v0 + 336);
        v25 = *(v0 + 320);
        v55 = 0;
        v56 = 0xE000000000000000;
        sub_5B5A8(27);

        v55 = 0xD000000000000019;
        v56 = 0x800000000005F1B0;
        (*(v24 + 104))(v23, enum case for PommesError.timedOut(_:), v25);
        v26 = sub_5B058();
        v28 = v27;
        (*(v24 + 8))(v23, v25);
        v60._countAndFlagsBits = v26;
        v60._object = v28;
        sub_5B388(v60);

        v29 = v55;
        v30 = v56;
        sub_5A6C8();
        sub_5A148();
        type metadata accessor for PommesTimeoutFlow();
        swift_allocObject();
        *(v0 + 272) = sub_43E14(v29, v30, v54, &v55);
        sub_3C664(&qword_73208, 255, type metadata accessor for PommesTimeoutFlow, &unk_5D670);
      }

      else
      {
        v49 = sub_5B218();
        v50 = sub_5B4B8();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_0, v49, v50, "no decision found, should not typically happen", v51, 2u);
        }

        sub_5A6C8();
        sub_5A148();
        type metadata accessor for CamErrorFlow();
        swift_allocObject();
        *(v0 + 256) = sub_3147C(0xD000000000000010, 0x800000000005F170, v54, &v55);
        sub_3C664(&qword_72550, 255, type metadata accessor for CamErrorFlow, &unk_5CE08);
      }

      goto LABEL_26;
    }

    if (v11 == 4)
    {
      v19 = *(v10 + 24);
      if (v19)
      {
        v20 = *(v10 + 16);
        v55 = 0;
        v56 = 0xE000000000000000;

        sub_5B5A8(27);

        v55 = 0xD000000000000019;
        v56 = 0x800000000005F1B0;
        v59._countAndFlagsBits = v20;
        v59._object = v19;
        sub_5B388(v59);

        v22 = v55;
        v21 = v56;
      }

      else
      {
        v21 = 0x800000000005F190;
        v22 = 0xD000000000000015;
      }

      sub_5A6C8();
      sub_5A148();
      type metadata accessor for CamErrorFlow();
      swift_allocObject();
      *(v0 + 264) = sub_3147C(v22, v21, v54, &v55);
      sub_3C664(&qword_72550, 255, type metadata accessor for CamErrorFlow, &unk_5CE08);
      goto LABEL_26;
    }

    goto LABEL_14;
  }

  if (*(v10 + 64) > 1u)
  {
    if (v11 != 2)
    {
      v42 = type metadata accessor for DefaultCatExecutor();
      v43 = swift_allocObject();
      sub_5A6C8();
      sub_5A148();
      *(v0 + 40) = v42;
      *(v0 + 48) = &off_6E270;
      *(v0 + 16) = v43;
      type metadata accessor for NetworkUnavailableFlow();
      v44 = swift_allocObject();
      v45 = sub_5EDC(v0 + 16, v42);
      v46 = *(v42 - 8);
      v47 = swift_task_alloc();
      (*(v46 + 16))(v47, v45, v42);
      v48 = sub_33814(*v47, v54, &v55, v44, "NetworkUnavailableFlow new instance initialised");
      sub_5D00((v0 + 16));

      *(v0 + 280) = v48;
      sub_3C664(&qword_73210, 255, type metadata accessor for NetworkUnavailableFlow, &unk_5D5A0);
      goto LABEL_26;
    }

LABEL_14:
    sub_5A438();
    goto LABEL_28;
  }

  if (*(v10 + 64))
  {
    v31 = type metadata accessor for DefaultCatExecutor();
    v32 = swift_allocObject();
    sub_5A6C8();
    sub_5A148();
    sub_5B048();
    swift_allocObject();
    v33 = sub_5B038();
    *(v0 + 160) = v31;
    *(v0 + 168) = &off_6E270;
    *(v0 + 136) = v32;
    type metadata accessor for GibberishFlow();
    v34 = swift_allocObject();
    v35 = sub_5EDC(v0 + 136, v31);
    v36 = *(v31 - 8);
    v37 = swift_task_alloc();
    (*(v36 + 16))(v37, v35, v31);
    v38 = *v37;
    *(v0 + 200) = v31;
    *(v0 + 208) = &off_6E270;
    *(v0 + 176) = v38;
    sub_5F90(v0 + 176, v34 + 16);
    sub_5F90(v0 + 56, v34 + 56);
    sub_5F90(v0 + 96, v34 + 96);
    *(v34 + 136) = v33;

    v39 = sub_5B218();
    v40 = sub_5B4B8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_0, v39, v40, "GibberishFlow new instance initialised", v41, 2u);
    }

    sub_5D00((v0 + 96));
    sub_5D00((v0 + 56));
    sub_5D00((v0 + 176));
    sub_5D00((v0 + 136));

    *(v0 + 288) = v34;
    sub_3C664(&qword_73218, 255, type metadata accessor for GibberishFlow, &unk_5D438);
    sub_5A418();
    goto LABEL_27;
  }

  v12 = type metadata accessor for DefaultCatExecutor();
  v13 = swift_allocObject();
  sub_5A6C8();
  sub_5A148();
  *(v0 + 240) = v12;
  *(v0 + 248) = &off_6E270;
  *(v0 + 216) = v13;
  type metadata accessor for AirplaneModeFlow();
  v14 = swift_allocObject();
  v15 = sub_5EDC(v0 + 216, v12);
  v16 = *(v12 - 8);
  v17 = swift_task_alloc();
  (*(v16 + 16))(v17, v15, v12);
  v18 = sub_33814(*v17, v54, &v55, v14, "AirplaneModeFlow new instance initialised");
  sub_5D00((v0 + 216));

  *(v0 + 296) = v18;
  sub_3C664(&qword_73220, 255, type metadata accessor for AirplaneModeFlow, &unk_5C400);
LABEL_26:
  sub_5A418();
LABEL_27:

LABEL_28:

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_3C028()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for FallbackEntryFlow.ExecutionDecision(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FallbackEntryFlow.ExecutionDecision(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_3C1E8()
{
  result = qword_731F8;
  if (!qword_731F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_731F8);
  }

  return result;
}

uint64_t (*sub_3C284(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_5AF28();
  return sub_3C310;
}

void sub_3C310(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_3C3DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5934;

  return sub_3B4E4(a1);
}

uint64_t sub_3C478(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FallbackEntryFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_3C540(uint64_t a1)
{
  [objc_msgSend(objc_opt_self() "sharedStream")];

  return swift_unknownObjectRelease();
}

unint64_t sub_3C5A8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_6DC20;
  v6._object = a2;
  v4 = sub_5B6B8(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_3C5F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_73240, &qword_5D3D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3C664(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3C6AC(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  sub_5B94(&unk_73CE0, &unk_5CB30);
  v2[39] = swift_task_alloc();
  v3 = sub_5A2A8();
  v2[40] = v3;
  v2[41] = *(v3 - 8);
  v2[42] = swift_task_alloc();
  sub_5B94(&unk_72440, &unk_5C460);
  v2[43] = swift_task_alloc();
  v4 = sub_5A908();
  v2[44] = v4;
  v2[45] = *(v4 - 8);
  v2[46] = swift_task_alloc();
  v5 = sub_5A648();
  v2[47] = v5;
  v2[48] = *(v5 - 8);
  v2[49] = swift_task_alloc();
  v6 = sub_5A588();
  v2[50] = v6;
  v2[51] = *(v6 - 8);
  v2[52] = swift_task_alloc();
  sub_5B94(&qword_73338, &qword_5D490);
  v2[53] = swift_task_alloc();
  sub_5B94(&qword_73340, &qword_5D498);
  v2[54] = swift_task_alloc();

  return _swift_task_switch(sub_3C960, 0, 0);
}

uint64_t sub_3C960()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "GibberishFlow: execute called", v4, 2u);
  }

  v5 = v0[38];

  sub_5CBC((v5 + 16), *(v5 + 40));
  v6 = sub_38208(_swiftEmptyArrayStorage);
  v0[55] = v6;
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  *(inited + 32) = 0x65736E6F70736572;
  v8 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEC00000065646F4DLL;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v9 = sub_3802C(inited);
  v0[56] = v9;
  swift_setDeallocating();
  sub_5D4C(v8, &unk_72450, &unk_5C470);
  v10 = swift_task_alloc();
  v0[57] = v10;
  *v10 = v0;
  v10[1] = sub_3CB98;

  return sub_3419C(0xD000000000000016, 0x800000000005F240, v6, v9);
}

uint64_t sub_3CB98(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 464) = a1;
  *(v3 + 472) = v1;

  if (v1)
  {
    v4 = sub_3D198;
  }

  else
  {
    v4 = sub_3CCF0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_3CCF0()
{
  v1 = *(v0 + 464);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = sub_5A968();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_5B078();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = v1;
  v7 = sub_5B028();
  sub_5D4C(v3, &qword_73338, &qword_5D490);
  sub_5D4C(v2, &qword_73340, &qword_5D498);
  if (v7)
  {
    sub_5B008();
    sub_5AFE8();
    sub_5AFD8();
    sub_5AFF8();
  }

  v8 = *(v0 + 464);
  v10 = *(v0 + 384);
  v9 = *(v0 + 392);
  v11 = *(v0 + 376);
  v25 = *(v0 + 368);
  v27 = *(v0 + 352);
  v28 = *(v0 + 360);
  v12 = *(v0 + 344);
  v26 = *(v0 + 304);
  v13 = [v8 speak];
  sub_5B3D8();

  v14 = [v8 print];
  sub_5B3D8();

  (*(v10 + 104))(v9, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v11);
  v15 = [v8 print];
  v16 = sub_5B3D8();

  v17 = *(v16 + 16);

  sub_41CC4(0, 0xE000000000000000, v17);
  v18 = [v8 meta];

  sub_5B2F8();
  sub_5A528();
  sub_5A868();
  sub_5A868();
  sub_5CBC((v0 + 136), *(v0 + 160));
  sub_5A218();
  v19 = sub_5A488();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  *(v0 + 208) = 0;
  *(v0 + 192) = 0u;
  *(v0 + 176) = 0u;
  sub_5A3E8();
  sub_5D4C(v0 + 176, &qword_721D8, &qword_5C480);
  sub_5D4C(v12, &unk_72440, &unk_5C460);
  sub_5D00((v0 + 96));
  sub_5D00((v0 + 136));
  v20 = v26[10];
  v21 = v26[11];
  sub_5CBC(v26 + 7, v20);
  *(v0 + 240) = v27;
  *(v0 + 248) = &protocol witness table for AceOutput;
  v22 = sub_5F2C((v0 + 216));
  (*(v28 + 16))(v22, v25, v27);
  v23 = swift_task_alloc();
  *(v0 + 480) = v23;
  *v23 = v0;
  v23[1] = sub_3D344;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 216, v20, v21);
}

uint64_t sub_3D198()
{
  v5 = v0;
  sub_5B5A8(43);

  v4[0] = 0xD000000000000029;
  v4[1] = 0x800000000005F260;
  swift_getErrorValue();
  v7._countAndFlagsBits = sub_5B7E8();
  sub_5B388(v7);

  sub_5A6C8();
  sub_5A148();
  type metadata accessor for CamErrorFlow();
  swift_allocObject();
  *(v0 + 288) = sub_3147C(0xD000000000000029, 0x800000000005F260, v3, v4);
  sub_C118();
  sub_5A418();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3D344()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_3D68C;
  }

  else
  {
    sub_5D00((v2 + 216));
    v3 = sub_3D470;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_3D470()
{
  v1 = v0[51];
  v13 = v0[50];
  v14 = v0[52];
  v2 = v0[45];
  v11 = v0[58];
  v12 = v0[46];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[39];
  v6 = v0[40];
  v10 = v0[44];
  sub_5CBC((v0[38] + 96), *(v0[38] + 120));
  sub_5A1E8();
  (*(v4 + 104))(v3, enum case for ActivityType.failed(_:), v6);
  v7 = sub_5A168();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_5A1C8();
  sub_5A158();

  sub_5A438();

  (*(v2 + 8))(v12, v10);
  (*(v1 + 8))(v14, v13);

  v8 = v0[1];

  return v8();
}

uint64_t sub_3D68C()
{
  sub_5D00(v0 + 27);
  v1 = v0[51];
  v13 = v0[50];
  v14 = v0[52];
  v2 = v0[45];
  v11 = v0[58];
  v12 = v0[46];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[39];
  v6 = v0[40];
  v10 = v0[44];
  sub_5CBC((v0[38] + 96), *(v0[38] + 120));
  sub_5A1E8();
  (*(v4 + 104))(v3, enum case for ActivityType.failed(_:), v6);
  v7 = sub_5A168();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_5A1C8();
  sub_5A158();

  sub_5A438();

  (*(v2 + 8))(v12, v10);
  (*(v1 + 8))(v14, v13);

  v8 = v0[1];

  return v8();
}

uint64_t sub_3D8EC()
{
  sub_5D00(v0 + 2);
  sub_5D00(v0 + 7);
  sub_5D00(v0 + 12);

  return swift_deallocClassInstance();
}

uint64_t sub_3D9BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5934;

  return sub_3C6AC(a1);
}

uint64_t sub_3DA58(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GibberishFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_3DA90(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  sub_5B94(&unk_73CE0, &unk_5CB30);
  v2[39] = swift_task_alloc();
  v3 = sub_5A2A8();
  v2[40] = v3;
  v2[41] = *(v3 - 8);
  v2[42] = swift_task_alloc();
  sub_5B94(&unk_72440, &unk_5C460);
  v2[43] = swift_task_alloc();
  v4 = sub_5A908();
  v2[44] = v4;
  v2[45] = *(v4 - 8);
  v2[46] = swift_task_alloc();
  v5 = sub_5A648();
  v2[47] = v5;
  v2[48] = *(v5 - 8);
  v2[49] = swift_task_alloc();
  v6 = sub_5A588();
  v2[50] = v6;
  v2[51] = *(v6 - 8);
  v2[52] = swift_task_alloc();

  return _swift_task_switch(sub_3DCD4, 0, 0);
}

uint64_t sub_3DCD4()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "GiveUpRepeatFlow: execute called", v4, 2u);
  }

  v5 = v0[38];

  sub_5CBC((v5 + 16), *(v5 + 40));
  v6 = sub_38208(_swiftEmptyArrayStorage);
  v0[53] = v6;
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  *(inited + 32) = 0x65736E6F70736572;
  v8 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEC00000065646F4DLL;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v9 = sub_3802C(inited);
  v0[54] = v9;
  swift_setDeallocating();
  sub_5D4C(v8, &unk_72450, &unk_5C470);
  v10 = swift_task_alloc();
  v0[55] = v10;
  *v10 = v0;
  v10[1] = sub_3DF0C;

  return sub_3419C(0xD000000000000016, 0x800000000005F2C0, v6, v9);
}

uint64_t sub_3DF0C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v1;

  if (v1)
  {
    v4 = sub_3E50C;
  }

  else
  {
    v4 = sub_3E064;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_3E064()
{
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  v18 = *(v0 + 368);
  v20 = *(v0 + 352);
  v21 = *(v0 + 360);
  v4 = *(v0 + 344);
  v19 = *(v0 + 304);
  v5 = *(v0 + 448);
  v6 = [v5 speak];
  sub_5B3D8();

  v7 = [v5 print];
  sub_5B3D8();

  (*(v2 + 104))(v1, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v3);
  v8 = [v5 print];
  v9 = sub_5B3D8();

  v10 = *(v9 + 16);

  sub_41CC4(0, 0xE000000000000000, v10);
  v11 = [v5 meta];

  sub_5B2F8();
  sub_5A528();
  sub_5A868();
  sub_5A868();
  sub_5CBC((v0 + 136), *(v0 + 160));
  sub_5A218();
  v12 = sub_5A488();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  *(v0 + 208) = 0;
  *(v0 + 192) = 0u;
  *(v0 + 176) = 0u;
  sub_5A3E8();
  sub_5D4C(v0 + 176, &qword_721D8, &qword_5C480);
  sub_5D4C(v4, &unk_72440, &unk_5C460);
  sub_5D00((v0 + 96));
  sub_5D00((v0 + 136));
  v13 = v19[10];
  v14 = v19[11];
  sub_5CBC(v19 + 7, v13);
  *(v0 + 240) = v20;
  *(v0 + 248) = &protocol witness table for AceOutput;
  v15 = sub_5F2C((v0 + 216));
  (*(v21 + 16))(v15, v18, v20);
  v16 = swift_task_alloc();
  *(v0 + 464) = v16;
  *v16 = v0;
  v16[1] = sub_3E3E0;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 216, v13, v14);
}

uint64_t sub_3E3E0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_3E910;
  }

  else
  {
    sub_5D00((v2 + 216));
    v3 = sub_3E6CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_3E50C()
{
  v5 = v0;
  sub_5B5A8(46);

  v4[0] = 0xD00000000000002CLL;
  v4[1] = 0x800000000005F2E0;
  swift_getErrorValue();
  v7._countAndFlagsBits = sub_5B7E8();
  sub_5B388(v7);

  sub_5A6C8();
  sub_5A148();
  type metadata accessor for CamErrorFlow();
  swift_allocObject();
  *(v0 + 288) = sub_3147C(0xD00000000000002CLL, 0x800000000005F2E0, v3, v4);
  sub_2EA8C(&qword_72550, type metadata accessor for CamErrorFlow, &unk_5CE08);
  sub_5A418();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3E6CC()
{
  v1 = v0[51];
  v15 = v0[50];
  v16 = v0[52];
  v2 = v0[45];
  v13 = v0[56];
  v14 = v0[46];
  v4 = v0[41];
  v3 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  v12 = v0[44];
  sub_5CBC((v0[38] + 96), *(v0[38] + 120));
  sub_5A1E8();
  (*(v4 + 104))(v3, enum case for ActivityType.giveUpAskRepeat(_:), v5);
  v7 = enum case for SiriKitReliabilityCodes.promptFailure(_:);
  v8 = sub_5A168();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v6, v7, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  sub_5A1C8();
  sub_5A158();

  sub_5A438();

  (*(v2 + 8))(v14, v12);
  (*(v1 + 8))(v16, v15);

  v10 = v0[1];

  return v10();
}

uint64_t sub_3E910()
{
  sub_5D00(v0 + 27);
  v1 = v0[51];
  v15 = v0[50];
  v16 = v0[52];
  v2 = v0[45];
  v13 = v0[56];
  v14 = v0[46];
  v4 = v0[41];
  v3 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  v12 = v0[44];
  sub_5CBC((v0[38] + 96), *(v0[38] + 120));
  sub_5A1E8();
  (*(v4 + 104))(v3, enum case for ActivityType.giveUpAskRepeat(_:), v5);
  v7 = enum case for SiriKitReliabilityCodes.promptFailure(_:);
  v8 = sub_5A168();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v6, v7, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  sub_5A1C8();
  sub_5A158();

  sub_5A438();

  (*(v2 + 8))(v14, v12);
  (*(v1 + 8))(v16, v15);

  v10 = v0[1];

  return v10();
}

uint64_t sub_3EBE0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5934;

  return sub_3DA90(a1);
}

uint64_t sub_3EC7C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GiveUpRepeatFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_3ECB4(uint64_t a1)
{
  v2 = sub_5B94(&qword_71C88, &qword_5C2A0);
  __chkstk_darwin(v2 - 8);
  v68 = &v54 - v3;
  v4 = type metadata accessor for CAMDirectInvocation(0);
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = __chkstk_darwin(v4);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v56 = &v54 - v7;
  v8 = sub_5A858();
  v66 = *(v8 - 8);
  v67 = v8;
  __chkstk_darwin(v8);
  v64 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_5A838();
  v10 = *(v63 - 8);
  __chkstk_darwin(v63);
  v69 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_5A7D8();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v62 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v18 = sub_5B228();
  v19 = sub_5B44(v18, qword_763B8);
  v59 = *(v13 + 16);
  v60 = v13 + 16;
  v59(v17, a1, v12);
  v65 = v19;
  v20 = sub_5B218();
  v21 = sub_5B4B8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v70 = v12;
    v23 = v22;
    v24 = swift_slowAlloc();
    v54 = v10;
    v25 = v24;
    v71 = v24;
    *v23 = 136315138;
    sub_2EA8C(&qword_71C90, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v26 = sub_5B798();
    v27 = a1;
    v29 = v28;
    v61 = *(v13 + 8);
    v61(v17, v70);
    v30 = sub_2DC10(v26, v29, &v71);
    a1 = v27;

    *(v23 + 4) = v30;
    _os_log_impl(&dword_0, v20, v21, "GiveUpRepeatFlow: on called with %s", v23, 0xCu);
    sub_5D00(v25);
    v10 = v54;

    v12 = v70;
  }

  else
  {

    v61 = *(v13 + 8);
    v61(v17, v12);
  }

  v31 = v64;
  sub_5A7C8();
  v33 = v66;
  v32 = v67;
  v34 = (*(v66 + 88))(v31, v67);
  v35 = v68;
  v36 = v69;
  if (v34 != enum case for Parse.directInvocation(_:))
  {
    (*(v33 + 8))(v31, v32);
    goto LABEL_10;
  }

  (*(v33 + 96))(v31, v32);
  (*(v10 + 32))(v36, v31, v63);
  sub_3601C(v35);
  if ((*(v57 + 48))(v35, 1, v58) == 1)
  {
    (*(v10 + 8))(v36, v63);
    sub_5D4C(v35, &qword_71C88, &qword_5C2A0);
LABEL_10:
    v37 = v62;
    v59(v62, a1, v12);
    v38 = sub_5B218();
    v39 = sub_5B4C8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v71 = v41;
      *v40 = 136315138;
      sub_2EA8C(&qword_71C90, &type metadata accessor for Input, &protocol conformance descriptor for Input);
      v42 = sub_5B798();
      v44 = v43;
      v61(v37, v12);
      v45 = sub_2DC10(v42, v44, &v71);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_0, v38, v39, "GiveUpRepeatFlow called with unexpected input %s", v40, 0xCu);
      sub_5D00(v41);
    }

    else
    {

      v61(v37, v12);
    }

    return 0;
  }

  v47 = v35;
  v48 = v56;
  sub_1AF04(v47, v56);
  v49 = v48;
  v50 = v55;
  sub_2E9CC(v49, v55);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_2EA30(v56);
    (*(v10 + 8))(v36, v63);
    sub_2EA30(v50);
    goto LABEL_10;
  }

  sub_2EA30(v50);
  v51 = sub_5B218();
  v52 = sub_5B4B8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_0, v51, v52, "GiveUpRepeatFlow: input accepted", v53, 2u);
  }

  sub_2EA30(v56);
  (*(v10 + 8))(v36, v63);
  return 1;
}

uint64_t sub_3F4C8(uint64_t a1)
{
  v2 = sub_5B94(&qword_73410, &qword_5D548);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  sub_3FD64(a1, &v13 - v6);
  v8 = sub_5AD48();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_3FD64(v7, v5);
    v11 = (*(v9 + 88))(v5, v8);
    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Fourth(_:))
    {
      v10 = 3;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Second(_:))
    {
      v10 = 1;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Beginning(_:))
    {
      goto LABEL_8;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentyFourth(_:))
    {
      v10 = 23;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Seventeenth(_:))
    {
      v10 = 16;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Eighth(_:))
    {
      v10 = 7;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_ThirdToLast(_:))
    {
      v10 = -3;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Sixth(_:))
    {
      v10 = 5;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Nineteenth(_:))
    {
      v10 = 18;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentyFifth(_:))
    {
      v10 = 24;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Ninth(_:))
    {
      v10 = 8;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Eleventh(_:))
    {
      v10 = 10;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_End(_:))
    {
      goto LABEL_28;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Fourteenth(_:))
    {
      v10 = 13;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_SecondToLast(_:))
    {
      v10 = -2;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentyFirst(_:))
    {
      v10 = 20;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Thirteenth(_:))
    {
      v10 = 12;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Last(_:))
    {
LABEL_28:
      v10 = -1;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentySecond(_:))
    {
      v10 = 21;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Fifteenth(_:))
    {
      v10 = 14;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Twentieth(_:))
    {
      v10 = 19;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Fifth(_:))
    {
      v10 = 4;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Sixteenth(_:))
    {
      v10 = 15;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_First(_:))
    {
LABEL_8:
      v10 = 0;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Seventh(_:))
    {
      v10 = 6;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Eighteenth(_:))
    {
      v10 = 17;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentyThird(_:))
    {
      v10 = 22;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Twelfth(_:))
    {
      v10 = 11;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Third(_:))
    {
      v10 = 2;
      goto LABEL_37;
    }

    if (v11 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Tenth(_:))
    {
      v10 = 9;
      goto LABEL_37;
    }

    (*(v9 + 8))(v5, v8);
  }

  v10 = 0;
LABEL_37:
  sub_3FCFC(v7);
  return v10;
}

uint64_t sub_3F9D8()
{
  v0 = sub_5B94(&qword_73410, &qword_5D548);
  __chkstk_darwin(v0 - 8);
  v2 = v16 - v1;
  if (!sub_4FA30())
  {
    return 0;
  }

  v3 = sub_5AE28();
  if (!*(v3 + 16) || (v4 = sub_37278(0x797469746E65, 0xE600000000000000), (v5 & 1) == 0))
  {

    goto LABEL_22;
  }

  v6 = *(*(v3 + 56) + 8 * v4);

  if (v6 >> 62)
  {
    if (!sub_5B678())
    {
      goto LABEL_33;
    }
  }

  else if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_33:

    return 0;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    sub_5B5B8();
  }

  else
  {
    if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_31;
    }
  }

  v7 = sub_5AE78();

  if (!v7)
  {
LABEL_22:

    return 0;
  }

  v8 = sub_5AE88();
  if (!*(v8 + 16) || (v9 = sub_37278(0x507473694C6F7375, 0xEF6E6F697469736FLL), (v10 & 1) == 0))
  {

LABEL_25:

    goto LABEL_22;
  }

  v6 = *(*(v8 + 56) + 8 * v9);

  if (!(v6 >> 62))
  {
    if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = sub_5B678();
  if (!result)
  {
LABEL_32:

    goto LABEL_33;
  }

LABEL_14:
  if ((v6 & 0xC000000000000001) != 0)
  {
    sub_5B5B8();
LABEL_17:

    v12 = sub_5AE78();

    if (v12)
    {
      sub_5AD58();

      sub_5ACB8();

      if (v16[1])
      {
        sub_5AD38();
        v13 = sub_3F4C8(v2);
        v15 = v14;

        sub_3FCFC(v2);
        if ((v15 & 1) == 0)
        {
          return v13;
        }

        return 0;
      }

      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
  {

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_3FCFC(uint64_t a1)
{
  v2 = sub_5B94(&qword_73410, &qword_5D548);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3FD64(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_73410, &qword_5D548);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3FDD4()
{
  v0 = sub_5B228();
  sub_3FE60(v0, qword_763B8);
  sub_5B44(v0, qword_763B8);
  if (qword_71A60 != -1)
  {
    swift_once();
  }

  v1 = qword_763D0;
  return sub_5B238();
}

uint64_t *sub_3FE60(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_3FEC4()
{
  sub_3FF1C();
  result = sub_5B4F8();
  qword_763D0 = result;
  return result;
}

unint64_t sub_3FF1C()
{
  result = qword_73418;
  if (!qword_73418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_73418);
  }

  return result;
}

uint64_t sub_3FF68(uint64_t a1)
{
  v2[54] = a1;
  v2[55] = v1;
  sub_5B94(&unk_73CE0, &unk_5CB30);
  v2[56] = swift_task_alloc();
  v3 = sub_5A2A8();
  v2[57] = v3;
  v2[58] = *(v3 - 8);
  v2[59] = swift_task_alloc();
  sub_5B94(&unk_72440, &unk_5C460);
  v2[60] = swift_task_alloc();
  v4 = sub_5A908();
  v2[61] = v4;
  v2[62] = *(v4 - 8);
  v2[63] = swift_task_alloc();
  v5 = sub_5A648();
  v2[64] = v5;
  v2[65] = *(v5 - 8);
  v2[66] = swift_task_alloc();
  v6 = sub_5A588();
  v2[67] = v6;
  v2[68] = *(v6 - 8);
  v2[69] = swift_task_alloc();

  return _swift_task_switch(sub_401AC, 0, 0);
}

uint64_t sub_401AC()
{
  v19 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "NetworkUnavailableFlow: execute called", v4, 2u);
  }

  sub_5B018();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v0[70] = v6;
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  *(inited + 32) = 0x65736E6F70736572;
  v8 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEC00000065646F4DLL;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v9 = sub_3802C(inited);
  swift_setDeallocating();
  sub_5D4C(v8, &unk_72450, &unk_5C470);
  v10 = sub_5B338();
  v0[71] = v10;
  isa = sub_5B2E8().super.isa;
  v0[72] = isa;
  v12 = sub_5A2B8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v12;
  sub_357CC(v9, sub_41B18, 0, isUniquelyReferenced_nonNull_native, &v18);

  v14 = objc_opt_self();
  v15 = sub_5B2E8().super.isa;
  v0[73] = v15;

  v0[2] = v0;
  v0[7] = v0 + 51;
  v0[3] = sub_40578;
  v16 = swift_continuation_init();
  v0[27] = sub_5B94(&qword_721D0, &qword_5D0A0);
  v0[20] = _NSConcreteStackBlock;
  v0[21] = 1107296256;
  v0[22] = sub_35658;
  v0[23] = &unk_6E3C8;
  v0[24] = v16;
  [v14 execute:v6 catId:v10 parameters:isa globals:v15 completion:v0 + 20];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_40578()
{
  v1 = *(*v0 + 48);
  *(*v0 + 592) = v1;
  if (v1)
  {
    v2 = sub_40B58;
  }

  else
  {
    v2 = sub_40688;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_40688()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 528);
  v5 = *(v0 + 520);
  v6 = *(v0 + 512);
  v22 = *(v0 + 504);
  v24 = *(v0 + 488);
  v25 = *(v0 + 496);
  v7 = *(v0 + 480);
  v23 = *(v0 + 440);

  v8 = *(v0 + 408);
  *(v0 + 600) = v8;

  v9 = v8;
  v10 = [v9 speak];
  sub_5B3D8();

  v11 = [v9 print];
  sub_5B3D8();

  (*(v5 + 104))(v4, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v6);
  v12 = [v9 print];
  v13 = sub_5B3D8();

  v14 = *(v13 + 16);

  sub_41CC4(0, 0xE000000000000000, v14);
  v15 = [v9 meta];

  sub_5B2F8();
  sub_5A528();
  sub_5A868();
  sub_5A868();
  sub_5CBC((v0 + 264), *(v0 + 288));
  sub_5A218();
  v16 = sub_5A488();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  *(v0 + 336) = 0;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  sub_5A3E8();
  sub_5D4C(v0 + 304, &qword_721D8, &qword_5C480);
  sub_5D4C(v7, &unk_72440, &unk_5C460);
  sub_5D00((v0 + 224));
  sub_5D00((v0 + 264));
  v17 = v23[10];
  v18 = v23[11];
  sub_5CBC(v23 + 7, v17);
  *(v0 + 368) = v24;
  *(v0 + 376) = &protocol witness table for AceOutput;
  v19 = sub_5F2C((v0 + 344));
  (*(v25 + 16))(v19, v22, v24);
  v20 = swift_task_alloc();
  *(v0 + 608) = v20;
  *v20 = v0;
  v20[1] = sub_40A2C;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 344, v17, v18);
}

uint64_t sub_40A2C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_40F28;
  }

  else
  {
    sub_5D00((v2 + 344));
    v3 = sub_40D1C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_40B58(uint64_t a1)
{
  v10 = v1;
  v2 = v1[73];
  v3 = v1[72];
  v4 = v1[71];
  v5 = v1[70];
  swift_willThrow();

  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_5B5A8(52);
  v12._object = 0x800000000005F360;
  v12._countAndFlagsBits = 0xD000000000000032;
  sub_5B388(v12);
  swift_getErrorValue();
  v13._countAndFlagsBits = sub_5B7E8();
  sub_5B388(v13);

  sub_5A6C8();
  sub_5A148();
  type metadata accessor for CamErrorFlow();
  swift_allocObject();
  v1[53] = sub_3147C(0, 0xE000000000000000, v8, v9);
  sub_C118();
  sub_5A418();

  v6 = v1[1];

  return v6();
}

uint64_t sub_40D1C()
{
  v1 = v0[68];
  v13 = v0[67];
  v14 = v0[69];
  v2 = v0[62];
  v11 = v0[75];
  v12 = v0[63];
  v4 = v0[58];
  v3 = v0[59];
  v5 = v0[56];
  v6 = v0[57];
  v10 = v0[61];
  sub_5CBC((v0[55] + 96), *(v0[55] + 120));
  sub_5A1E8();
  (*(v4 + 104))(v3, enum case for ActivityType.completed(_:), v6);
  v7 = sub_5A168();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_5A1C8();
  sub_5A158();

  sub_5A438();

  (*(v2 + 8))(v12, v10);
  (*(v1 + 8))(v14, v13);

  v8 = v0[1];

  return v8();
}

uint64_t sub_40F28()
{
  sub_5D00(v0 + 43);
  v1 = v0[68];
  v13 = v0[67];
  v14 = v0[69];
  v2 = v0[62];
  v11 = v0[75];
  v12 = v0[63];
  v4 = v0[58];
  v3 = v0[59];
  v5 = v0[56];
  v6 = v0[57];
  v10 = v0[61];
  sub_5CBC((v0[55] + 96), *(v0[55] + 120));
  sub_5A1E8();
  (*(v4 + 104))(v3, enum case for ActivityType.completed(_:), v6);
  v7 = sub_5A168();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_5A1C8();
  sub_5A158();

  sub_5A438();

  (*(v2 + 8))(v12, v10);
  (*(v1 + 8))(v14, v13);

  v8 = v0[1];

  return v8();
}

uint64_t sub_411FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5934;

  return sub_3FF68(a1);
}

uint64_t sub_41298(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NetworkUnavailableFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_412D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_5B94(&qword_72E78, &unk_5D0B0);
  v33 = v4;
  result = sub_5B698();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_302D4(v24, v34);
      }

      else
      {
        sub_C0A0(v24, v34);
      }

      sub_5B848();
      sub_5B378();
      result = sub_5B868();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_302D4(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_41588(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_5B94(&qword_72F68, &qword_5D600);
  v34 = v4;
  result = sub_5B698();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = sub_5B838();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_4180C()
{
  v1 = v0;
  sub_5B94(&qword_72E78, &unk_5D0B0);
  v2 = *v0;
  v3 = sub_5B688();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_C0A0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_302D4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_419B0()
{
  v1 = v0;
  sub_5B94(&qword_72F68, &qword_5D600);
  v2 = *v0;
  v3 = sub_5B688();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_41B18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_C0A0((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_41B64@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_C0A0(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_302D4(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_5D4C(v21, &qword_734E8, &qword_5D5F8);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_41CC4(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return _swiftEmptyArrayStorage;
    }

    v4 = result;
    v6 = sub_5B3F8();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t sub_41D60()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v0 = sub_5B228();
  sub_5B44(v0, qword_763B8);
  v1 = sub_5B218();
  v2 = sub_5B4B8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "NetworkUnavailableFlow input accepted", v3, 2u);
  }

  return 1;
}

uint64_t sub_41E68()
{
  v1 = sub_5B94(&qword_734F0, &qword_5D608);
  __chkstk_darwin(v1 - 8);
  v148 = &v136 - v2;
  v3 = sub_5A7B8();
  v158 = *(v3 - 8);
  v159 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v150 = &v136 - v7;
  v8 = sub_5B94(&qword_724E0, &qword_5C620);
  __chkstk_darwin(v8 - 8);
  v140 = (&v136 - v9);
  v149 = sub_59E98();
  v141 = *(v149 - 8);
  v10 = __chkstk_darwin(v149);
  v137 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v138 = &v136 - v12;
  v13 = sub_5B94(&unk_72520, &qword_5C320);
  __chkstk_darwin(v13 - 8);
  v160 = &v136 - v14;
  v161 = sub_5A858();
  v15 = *(v161 - 8);
  v16 = __chkstk_darwin(v161);
  v153 = (&v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v157 = &v136 - v18;
  v165 = sub_5A7D8();
  v167 = *(v165 - 8);
  v19 = __chkstk_darwin(v165);
  v151 = &v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v156 = &v136 - v21;
  v166 = sub_5A8E8();
  v164 = *(v166 - 8);
  __chkstk_darwin(v166);
  v23 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_5B94(&unk_73C70, &unk_5C300);
  __chkstk_darwin(v24 - 8);
  v26 = &v136 - v25;
  v27 = sub_5A318();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v139 = &v136 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v147 = &v136 - v32;
  __chkstk_darwin(v31);
  v34 = &v136 - v33;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v35 = sub_5B228();
  v36 = sub_5B44(v35, qword_763B8);
  v37 = *(v28 + 16);
  v163 = v0;
  v143 = v28 + 16;
  v142 = v37;
  v37(v34, v0, v27);
  v162 = v36;
  v38 = sub_5B218();
  v39 = sub_5B4B8();
  v40 = os_log_type_enabled(v38, v39);
  v152 = v23;
  v155 = v6;
  v146 = v27;
  v145 = v28;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v154 = v15;
    v42 = v41;
    v43 = swift_slowAlloc();
    v168 = v43;
    *v42 = 136315138;
    v44 = sub_5A2C8();
    v46 = v45;
    v144 = *(v28 + 8);
    v144(v34, v27);
    v47 = sub_2DC10(v44, v46, &v168);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_0, v38, v39, "Finding app bundle id for %s action", v42, 0xCu);
    sub_5D00(v43);

    v15 = v154;
  }

  else
  {

    v144 = *(v28 + 8);
    v144(v34, v27);
  }

  v48 = v160;
  v49 = v163;
  sub_5A2D8();
  v50 = sub_5A518();
  v51 = *(v50 - 8);
  v52 = (*(v51 + 48))(v26, 1, v50);
  v53 = v161;
  if (v52 == 1)
  {
    sub_5D4C(v26, &unk_73C70, &unk_5C300);
    v54 = v166;
    v55 = v164;
  }

  else
  {
    v160 = sub_5A508();
    v57 = v56;
    (*(v51 + 8))(v26, v50);
    v54 = v166;
    v55 = v164;
    if (v57)
    {

      v58 = sub_5B218();
      v59 = sub_5B4B8();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v168 = v61;
        *v60 = 136315138;
        v62 = v160;
        *(v60 + 4) = sub_2DC10(v160, v57, &v168);
        _os_log_impl(&dword_0, v58, v59, "Value %s found in action paraphrase", v60, 0xCu);
        sub_5D00(v61);
      }

      else
      {

        return v160;
      }

      return v62;
    }
  }

  v63 = v156;
  sub_5A2F8();
  v64 = v157;
  sub_5A7C8();
  v65 = v64;
  v66 = v167[1];
  ++v167;
  v66(v63, v165);
  v67 = *(v15 + 88);
  if (v67(v65, v53) == enum case for Parse.uso(_:))
  {
    v154 = v15;
    (*(v15 + 96))(v65, v53);
    v68 = v65;
    v69 = v152;
    (*(v55 + 32))(v152, v68, v54);
    LOBYTE(v168) = 1;
    sub_5A8B8();
    v70 = sub_5A638();
    v71 = v55;
    v72 = *(v70 - 8);
    if ((*(v72 + 48))(v48, 1, v70) != 1)
    {
      v62 = sub_5A628();
      v107 = v106;
      (*(v72 + 8))(v48, v70);

      v108 = sub_5B218();
      v109 = sub_5B4B8();

      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v168 = v111;
        *v110 = 136315138;
        *(v110 + 4) = sub_2DC10(v62, v107, &v168);
        _os_log_impl(&dword_0, v108, v109, "Value %s found in app shortcut invocation", v110, 0xCu);
        sub_5D00(v111);
      }

      (*(v164 + 8))(v152, v166);
      return v62;
    }

    (*(v71 + 8))(v69, v166);
    sub_5D4C(v48, &unk_72520, &qword_5C320);
    v15 = v154;
  }

  else
  {
    (*(v15 + 8))(v65, v53);
  }

  v73 = v151;
  sub_5A2F8();
  v74 = v153;
  sub_5A7C8();
  v66(v73, v165);
  if (v67(v74, v53) == enum case for Parse.pommesResponse(_:))
  {
    (*(v15 + 96))(v74, v53);
    v75 = *v74;
    v76 = v140;
    sub_438F4(v140);
    v77 = v141;
    v78 = v149;
    v79 = (*(v141 + 48))(v76, 1, v149);
    v80 = v155;
    if (v79 != 1)
    {
      v112 = v138;
      (*(v77 + 32))(v138, v76, v78);
      v113 = v137;
      (*(v77 + 16))(v137, v112, v78);
      v114 = sub_5B218();
      v115 = sub_5B4B8();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        v168 = v167;
        *v116 = 136315138;
        v117 = sub_59E78();
        v119 = v118;
        v120 = *(v77 + 8);
        v120(v113, v149);
        v121 = sub_2DC10(v117, v119, &v168);

        *(v116 + 4) = v121;
        _os_log_impl(&dword_0, v114, v115, "Using %s from PommesResponse sash", v116, 0xCu);
        sub_5D00(v167);

        v78 = v149;
      }

      else
      {

        v120 = *(v77 + 8);
        v120(v113, v78);
      }

      v62 = sub_59E78();

      v120(v112, v78);
      return v62;
    }

    sub_5D4C(v76, &qword_724E0, &qword_5C620);
  }

  else
  {
    (*(v15 + 8))(v74, v53);
    v80 = v155;
  }

  sub_5A2C8();
  v81 = v148;
  sub_5A788();

  v82 = (*(v158 + 48))(v81, 1, v159);
  v83 = v147;
  if (v82 == 1)
  {
    sub_5D4C(v81, &qword_734F0, &qword_5D608);
    v84 = v139;
    v85 = v146;
    v142(v139, v49, v146);
    v86 = sub_5B218();
    v87 = sub_5B4C8();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v168 = v89;
      *v88 = 136315138;
      v90 = sub_5A2C8();
      v92 = v91;
      v144(v84, v85);
      v93 = sub_2DC10(v90, v92, &v168);

      *(v88 + 4) = v93;
      _os_log_impl(&dword_0, v86, v87, "%s was not found in plugin manifest", v88, 0xCu);
      sub_5D00(v89);
    }

    else
    {

      v144(v84, v85);
    }

    return 0;
  }

  (*(v158 + 32))(v150, v81, v159);
  v94 = sub_5A7A8();
  if (!v95)
  {
    (*(v158 + 16))(v80, v150, v159);
    v122 = sub_5B218();
    v123 = sub_5B4C8();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = v80;
      v126 = swift_slowAlloc();
      v168 = v126;
      *v124 = 136315138;
      v127 = sub_5A798();
      v129 = v128;
      v130 = v159;
      v131 = *(v158 + 8);
      v131(v125, v159);
      v132 = sub_2DC10(v127, v129, &v168);

      *(v124 + 4) = v132;
      _os_log_impl(&dword_0, v122, v123, "No app is associated with %s in plugin manifest", v124, 0xCu);
      sub_5D00(v126);

      v131(v150, v130);
    }

    else
    {

      v133 = v159;
      v134 = *(v158 + 8);
      v134(v80, v159);
      v134(v150, v133);
    }

    return 0;
  }

  v62 = v94;
  v96 = v95;
  v97 = v49;
  v98 = v146;
  v142(v83, v97, v146);

  v99 = sub_5B218();
  v100 = sub_5B4B8();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    *v101 = 136315394;
    *(v101 + 4) = sub_2DC10(v62, v96, &v168);
    *(v101 + 12) = 2080;
    v102 = sub_5A2C8();
    v104 = v103;
    v144(v83, v98);
    v105 = sub_2DC10(v102, v104, &v168);

    *(v101 + 14) = v105;
    _os_log_impl(&dword_0, v99, v100, "Using %s from being associated with %s", v101, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v144(v83, v98);
  }

  (*(v158 + 8))(v150, v159);
  return v62;
}

uint64_t sub_4315C@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v2 = sub_5B94(&qword_72530, &qword_5C660);
  __chkstk_darwin(v2 - 8);
  v61 = &v49 - v3;
  v59 = sub_59E38();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v60 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_5B94(&qword_734F8, &unk_5D610);
  __chkstk_darwin(v5 - 8);
  v53 = (&v49 - v6);
  v7 = sub_5A968();
  __chkstk_darwin(v7 - 8);
  v52 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5A858();
  v65 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v54 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v49 - v12;
  v14 = sub_5A7D8();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v49 - v19;
  v21 = sub_5A8E8();
  v50 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_5B248();
  v55 = *(v24 - 8);
  v56 = v24;
  v25 = __chkstk_darwin(v24);
  v63 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v64 = (&v49 - v27);
  v28 = v1;
  sub_5A2F8();
  sub_5A7C8();
  v29 = v9;
  v30 = *(v15 + 8);
  v51 = v14;
  v30(v20, v14);
  v31 = *(v65 + 88);
  v32 = v31(v13, v29);
  v58 = v28;
  if (v32 == enum case for Parse.uso(_:))
  {
    v33 = v21;
    (*(v65 + 96))(v13, v29);
    v34 = v50;
    (*(v50 + 32))(v23, v13, v33);
    sub_5A8D8();
    sub_5A898();
    sub_5A888();
    sub_5A878();
    v35 = v64;
    sub_5B258();
    (*(v34 + 8))(v23, v33);
    v36 = &enum case for CamParse.uso(_:);
    v38 = v60;
    v37 = v61;
    v39 = v59;
    v41 = v56;
    v40 = v57;
    v42 = v55;
    v43 = v35;
  }

  else
  {
    v53 = *(v65 + 8);
    v53(v13, v29);
    v44 = v29;
    sub_5A2F8();
    v45 = v54;
    sub_5A7C8();
    v30(v18, v51);
    if (v31(v45, v29) == enum case for Parse.pommesResponse(_:))
    {
      v46 = v54;
      (*(v65 + 96))(v54, v44);
      v43 = v64;
      *v64 = *v46;
      v36 = &enum case for CamParse.pommesResponse(_:);
      v38 = v60;
      v37 = v61;
      v39 = v59;
      v41 = v56;
      v40 = v57;
      v42 = v55;
    }

    else
    {
      v53(v54, v29);
      v36 = &enum case for CamParse.empty(_:);
      v38 = v60;
      v37 = v61;
      v39 = v59;
      v41 = v56;
      v40 = v57;
      v42 = v55;
      v43 = v64;
    }
  }

  (*(v42 + 104))(v43, *v36, v41);
  sub_5A2C8();
  (*(v42 + 16))(v63, v43, v41);
  sub_5A308();
  v47 = *(v40 + 48);
  if (v47(v37, 1, v39) == 1)
  {
    sub_59E28();
    if (v47(v37, 1, v39) != 1)
    {
      sub_4388C(v37);
    }
  }

  else
  {
    (*(v40 + 32))(v38, v37, v39);
  }

  sub_5B268();
  return (*(v42 + 8))(v64, v41);
}

uint64_t sub_4388C(uint64_t a1)
{
  v2 = sub_5B94(&qword_72530, &qword_5C660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_438F4@<X0>(void (*a1)(char *, uint64_t)@<X8>)
{
  v39 = sub_59EE8();
  v3 = *(v39 - 8);
  __chkstk_darwin(v39);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_59EB8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = (&v32 - v11);
  result = sub_5B148();
  if (result >> 62)
  {
    goto LABEL_16;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    do
    {
      if ((result & 0xC000000000000001) != 0)
      {
        v14 = sub_5B5B8();
      }

      else
      {
        if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v14 = *(result + 32);
      }

      v15 = v14;

      sub_5B168();
      v16 = swift_dynamicCastClass();
      if (!v16)
      {

        goto LABEL_18;
      }

      v34 = v1;
      v35 = v15;
      v33 = v12;
      v36 = a1;
      v1 = v16;
      result = sub_5B158();
      v17 = result;
      v38 = *(result + 16);
      if (!v38)
      {
LABEL_12:

        a1 = v36;
        v1 = v34;
        goto LABEL_18;
      }

      v18 = 0;
      v37 = v7 + 16;
      ++v3;
      v12 = (v7 + 8);
      while (v18 < *(v17 + 16))
      {
        (*(v7 + 16))(v10, v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, v6);
        sub_59EA8();
        v1 = sub_59ED8();
        a1 = *v3;
        (*v3)(v5, v39);
        if (v1)
        {

          v19 = v33;
          (*(v7 + 32))(v33, v10, v6);
          sub_59EA8();
          v20 = v36;
          sub_59EC8();

          a1(v5, v39);
          a1 = v20;
          (*(v7 + 8))(v19, v6);
          v21 = 0;
          goto LABEL_23;
        }

        ++v18;
        result = (*v12)(v10, v6);
        if (v38 == v18)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_16:
      v22 = result;
      v23 = sub_5B678();
      result = v22;
    }

    while (v23);
  }

LABEL_18:
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v24 = sub_5B228();
  sub_5B44(v24, qword_763B8);
  v25 = v1;
  v26 = sub_5B218();
  v27 = sub_5B4C8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v30 = v25;
    _os_log_impl(&dword_0, v26, v27, "No sash found in pommes response: %@", v28, 0xCu);
    sub_43DAC(v29);
  }

  v21 = 1;
LABEL_23:
  v31 = sub_59E98();
  return (*(*(v31 - 8) + 56))(a1, v21, 1, v31);
}

uint64_t sub_43DAC(uint64_t a1)
{
  v2 = sub_5B94(&qword_72538, &qword_5C668);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_43E14(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  sub_5F90(a3, v5 + 16);
  sub_5F90(a4, v5 + 56);
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v10 = sub_5B228();
  sub_5B44(v10, qword_763B8);
  v11 = sub_5B218();
  v12 = sub_5B4B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "PommesTimeoutFlow: new instance initialised", v13, 2u);
  }

  sub_5D00(a4);
  sub_5D00(a3);
  return v5;
}

uint64_t sub_43F38(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  sub_5B94(&unk_73CE0, &unk_5CB30);
  v2[24] = swift_task_alloc();
  v3 = sub_5A2A8();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  sub_5B94(&unk_72440, &unk_5C460);
  v2[28] = swift_task_alloc();
  v4 = sub_5A908();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  sub_5B94(&qword_72C90, &unk_5CE60);
  v2[32] = swift_task_alloc();
  v5 = sub_5A588();
  v2[33] = v5;
  v2[34] = *(v5 - 8);
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_44158, 0, 0);
}

uint64_t sub_44158()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  v0[36] = sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "PommesTimeoutFlow: execute called", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[37] = v5;
  *v5 = v0;
  v5[1] = sub_31918;
  v6 = v0[32];

  return static ErrorTemplates.pommesTimeout()(v6);
}

uint64_t sub_44334(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5934;

  return sub_43F38(a1);
}

uint64_t sub_443D0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PommesTimeoutFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_44408(uint64_t a1)
{
  v2 = sub_5A7D8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v6 = sub_5B228();
  sub_5B44(v6, qword_763B8);
  (*(v3 + 16))(v5, a1, v2);
  v7 = sub_5B218();
  v8 = sub_5B4B8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    sub_326D8();
    v11 = sub_5B798();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_2DC10(v11, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_0, v7, v8, "PommesTimeoutFlow: on called with %s", v9, 0xCu);
    sub_5D00(v10);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  return 0;
}

uint64_t sub_4464C@<X0>(uint64_t a1@<X8>)
{
  sub_5AEF8();
  if (sub_5AEC8())
  {
    sub_5AE98();

    sub_5B0C8();

    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = sub_5AF88();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, v2, 1, v3);
}

uint64_t sub_44708(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_5B94(&qword_73710, &qword_5D828);
  v2[9] = swift_task_alloc();
  v3 = sub_5A858();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_44800, 0, 0);
}

uint64_t sub_44800()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = *(v4 + 136);
  *(v4 + 136) = 4;
  sub_49148(v5);
  sub_5A7C8();
  v6 = sub_4916C(v1);
  (*(v2 + 8))(v1, v3);
  if (v6 <= 1u)
  {
    if (!v6)
    {
      v7 = swift_task_alloc();
      v0[13] = v7;
      *v7 = v0;
      v7[1] = sub_44CFC;
      v8 = 0;
      v9 = 0;
LABEL_11:

      return sub_453EC(v8, v9);
    }

    v0[5] = &type metadata for CAMRootFlowPluginFeatureFlags;
    v0[6] = sub_339C4();
    v16 = sub_5A918();
    sub_5D00(v0 + 2);
    if ((v16 & 1) == 0)
    {
      if (qword_71A58 != -1)
      {
        swift_once();
      }

      v28 = sub_5B228();
      sub_5B44(v28, qword_763B8);
      v29 = sub_5B218();
      v30 = sub_5B4A8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_0, v29, v30, "'Go back' is not supported on this device.", v31, 2u);
      }

      v22 = 0;
      goto LABEL_31;
    }

    v17 = v0[9];
    v18 = *(v0[8] + 144);

    v18(v19);

    v20 = sub_46BE8();
    sub_5D4C(v17, &qword_73710, &qword_5D828);
    if (v20)
    {
      v14 = swift_task_alloc();
      v0[15] = v14;
      *v14 = v0;
      v15 = sub_44F4C;
      goto LABEL_10;
    }

    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v32 = sub_5B228();
    sub_5B44(v32, qword_763B8);
    v33 = sub_5B218();
    v34 = sub_5B4A8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "'Go back' not supported in current response mode.", v35, 2u);
    }

    v27 = *(v4 + 136);
    *(v4 + 136) = 2;
    goto LABEL_30;
  }

  if (v6 == 2)
  {
    v10 = v0[9];
    v11 = *(v0[8] + 144);

    v11(v12);

    v13 = sub_46BE8();
    sub_5D4C(v10, &qword_73710, &qword_5D828);
    if (v13)
    {
      v14 = swift_task_alloc();
      v0[17] = v14;
      *v14 = v0;
      v15 = sub_4519C;
LABEL_10:
      v14[1] = v15;
      v8 = 1;
      v9 = 1;
      goto LABEL_11;
    }

    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v23 = sub_5B228();
    sub_5B44(v23, qword_763B8);
    v24 = sub_5B218();
    v25 = sub_5B4A8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "Indirect dismissal silently dismissing Siri in current response mode.", v26, 2u);
    }

    v27 = *(v4 + 136);
    *(v4 + 136) = 0;
LABEL_30:
    sub_49148(v27);
    v22 = 1;
    goto LABEL_31;
  }

  v22 = 0;
LABEL_31:

  v36 = v0[1];

  return v36(v22);
}

uint64_t sub_44CFC(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_44DFC, 0, 0);
}

uint64_t sub_44DFC()
{
  v1 = v0[14];
  if (v1)
  {
    v2 = v0[8];
  }

  else
  {
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v3 = sub_5B228();
    sub_5B44(v3, qword_763B8);
    v4 = sub_5B218();
    v5 = sub_5B4A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "No repeatable last dialog.", v6, 2u);
    }

    v2 = v0[8];

    v1 = 3;
  }

  v7 = *(v2 + 136);
  *(v2 + 136) = v1;
  sub_49148(v7);

  v8 = v0[1];

  return v8(1);
}

uint64_t sub_44F4C(uint64_t a1)
{
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_4504C, 0, 0);
}

uint64_t sub_4504C()
{
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[8];
  }

  else
  {
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v3 = sub_5B228();
    sub_5B44(v3, qword_763B8);
    v4 = sub_5B218();
    v5 = sub_5B4A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "No repeatable dialog before last when asked to go back.", v6, 2u);
    }

    v2 = v0[8];

    v1 = 2;
  }

  v7 = *(v2 + 136);
  *(v2 + 136) = v1;
  sub_49148(v7);

  v8 = v0[1];

  return v8(1);
}

uint64_t sub_4519C(uint64_t a1)
{
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_4529C, 0, 0);
}

uint64_t sub_4529C()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[8];
  }

  else
  {
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v3 = sub_5B228();
    sub_5B44(v3, qword_763B8);
    v4 = sub_5B218();
    v5 = sub_5B4A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "No repeatable dialog before last during indirect dismissal.", v6, 2u);
    }

    v2 = v0[8];

    v1 = 1;
  }

  v7 = *(v2 + 136);
  *(v2 + 136) = v1;
  sub_49148(v7);

  v8 = v0[1];

  return v8(1);
}

uint64_t sub_453EC(uint64_t a1, char a2)
{
  *(v3 + 120) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v4 = sub_5A298();
  *(v3 + 72) = v4;
  *(v3 + 80) = *(v4 - 8);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_454BC, 0, 0);
}

uint64_t sub_454BC()
{
  v1 = *(v0 + 64);
  v2 = v1[5];
  v3 = v1[6];
  sub_5CBC(v1 + 2, v2);
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_45574;

  return dispatch thunk of AceServiceInvokerAsync.recentDialogs()(v2, v3);
}

uint64_t sub_45574(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_45674, 0, 0);
}

id sub_45674()
{
  v2 = *(v1 + 112);
  if (v2 >> 62)
  {
    v3 = sub_5B678();
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = *(v1 + 56);
  if (v3 <= v4)
  {
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v11 = sub_5B228();
    sub_5B44(v11, qword_763B8);

    v12 = sub_5B218();
    v13 = sub_5B4A8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v1 + 56);
      v15 = swift_slowAlloc();
      *v15 = 134218240;
      *(v15 + 4) = v14;
      *(v15 + 12) = 2048;
      if (v2 >> 62)
      {
        v16 = sub_5B678();
      }

      else
      {
        v16 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
      }

      *(v15 + 14) = v16;

      _os_log_impl(&dword_0, v12, v13, "No recent dialog found. numStepsBack was %ld, but had %ld recent dialogs stored.", v15, 0x16u);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    goto LABEL_57;
  }

  if ((v2 & 0xC000000000000001) == 0)
  {
    if (v4 < 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)) > v4)
    {
      v5 = *(*(v1 + 112) + 8 * v4 + 32);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_70;
  }

  v5 = sub_5B5B8();
LABEL_8:
  v0 = v5;
  v6 = sub_5A338();
  v7 = [v6 dialogPhase];

  if (v7)
  {
    v8 = sub_5B348();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v17 = *(v1 + 96);
  v18 = *(v1 + 72);
  v19 = *(v1 + 80);
  sub_5A278();
  v20 = sub_5A288();
  v22 = v21;
  v23 = *(v19 + 8);
  v23(v17, v18);
  if (v10)
  {
    if (v20 == v8 && v10 == v22)
    {

LABEL_23:

      goto LABEL_32;
    }

    v24 = sub_5B7A8();

    if (v24)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v25 = *(v1 + 88);
  v26 = *(v1 + 72);
  sub_5A258();
  v27 = sub_5A288();
  v29 = v28;
  v23(v25, v26);
  if (!v10)
  {

    goto LABEL_47;
  }

  if (v27 == v8 && v10 == v29)
  {

    goto LABEL_32;
  }

  v30 = sub_5B7A8();

  if ((v30 & 1) == 0)
  {
LABEL_47:

    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v46 = sub_5B228();
    sub_5B44(v46, qword_763B8);
    v12 = sub_5B218();
    v47 = sub_5B4B8();
    if (!os_log_type_enabled(v12, v47))
    {
      goto LABEL_56;
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = "The recent dialog is in a non-repeatable phase, won't repeat it.";
    goto LABEL_55;
  }

LABEL_32:
  if (*(v1 + 120) != 1)
  {

    if (qword_71A58 == -1)
    {
LABEL_44:
      v42 = sub_5B228();
      sub_5B44(v42, qword_763B8);
      v43 = sub_5B218();
      v44 = sub_5B4A8();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_0, v43, v44, "Returning a recent dialog for replaying.", v45, 2u);
      }

      v41 = v0;
      goto LABEL_58;
    }

LABEL_70:
    swift_once();
    goto LABEL_44;
  }

  v31 = sub_5A338();
  [v31 copy];

  sub_5B538();
  swift_unknownObjectRelease();
  sub_1AB38(0, &qword_73720, SAUIAddViews_ptr);
  if (!swift_dynamicCast())
  {

    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v50 = sub_5B228();
    sub_5B44(v50, qword_763B8);
    v12 = sub_5B218();
    v47 = sub_5B4C8();
    if (!os_log_type_enabled(v12, v47))
    {
      goto LABEL_56;
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = "Failed cloning SAUIAddViews for filtering.";
LABEL_55:
    _os_log_impl(&dword_0, v12, v47, v49, v48, 2u);

LABEL_56:

    goto LABEL_57;
  }

  v32 = *(v1 + 48);
  sub_45ED4();
  result = [v32 views];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v34 = result;

  sub_1AB38(0, &qword_73728, SAAceView_ptr);
  v35 = sub_5B3D8();

  if (v35 >> 62)
  {
    v36 = sub_5B678();
  }

  else
  {
    v36 = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
  }

  if (v36)
  {
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v37 = sub_5B228();
    sub_5B44(v37, qword_763B8);
    v38 = sub_5B218();
    v39 = sub_5B4A8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v38, v39, "Returning a recent dialog for replaying filtered down to visuals only.", v40, 2u);
    }

    v41 = sub_5A328();
    goto LABEL_58;
  }

  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v52 = sub_5B228();
  sub_5B44(v52, qword_763B8);
  v12 = sub_5B218();
  v53 = sub_5B4B8();
  if (os_log_type_enabled(v12, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_0, v12, v53, "The recent dialog contained no visuals.", v54, 2u);
  }

LABEL_57:
  v41 = 0;
LABEL_58:

  v51 = *(v1 + 8);

  return v51(v41);
}

void sub_45ED4()
{
  v1 = v0;
  p_weak_ivar_lyt = &GiveUpRepeatFlow.weak_ivar_lyt;
  v3 = [v0 views];
  if (!v3)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);

    __break(1u);
    return;
  }

  v4 = v3;
  sub_1AB38(0, &qword_73728, SAAceView_ptr);
  v5 = sub_5B3D8();

  v33 = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    goto LABEL_46;
  }

  v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
LABEL_4:
  v29 = v1;
  if (v6)
  {
    p_weak_ivar_lyt = 0;
    v1 = (v5 & 0xC000000000000001);
    while (1)
    {
      if (v1)
      {
        v7 = sub_5B5B8();
      }

      else
      {
        if (p_weak_ivar_lyt >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_43;
        }

        v7 = *(v5 + 8 * p_weak_ivar_lyt + 32);
      }

      v8 = v7;
      v9 = p_weak_ivar_lyt + 1;
      if (__OFADD__(p_weak_ivar_lyt, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        v6 = sub_5B678();
        goto LABEL_4;
      }

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        break;
      }

LABEL_7:
      ++p_weak_ivar_lyt;
      if (v9 == v6)
      {
        v1 = v29;
        p_weak_ivar_lyt = &GiveUpRepeatFlow.weak_ivar_lyt;
        goto LABEL_25;
      }
    }

    v11 = v10;
    v12 = v8;
    v13 = [v11 itemType];
    if (v13)
    {
      v14 = v13;
      v15 = sub_5B348();
      v17 = v16;

      v18 = sub_5B348();
      if (v17)
      {
        if (v15 == v18 && v17 == v19)
        {

LABEL_22:
          goto LABEL_7;
        }

        v20 = sub_5B7A8();

        if (v20)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }
    }

    else
    {
      sub_5B348();
    }

LABEL_20:
    sub_5B618();
    sub_5B648();
    sub_5B658();
    sub_5B628();
    goto LABEL_7;
  }

LABEL_25:

  isa = sub_5B3C8().super.isa;

  v22 = &GiveUpRepeatFlow.weak_ivar_lyt;
  [v1 setViews:isa];

  v23 = [v1 *(p_weak_ivar_lyt + 1856)];
  if (!v23)
  {
    goto LABEL_50;
  }

  v24 = v23;
  v25 = sub_5B3D8();

  if (v25 >> 62)
  {
    p_weak_ivar_lyt = sub_5B678();
  }

  else
  {
    p_weak_ivar_lyt = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
  }

  if (p_weak_ivar_lyt)
  {
    v33 = _swiftEmptyArrayStorage;
    sub_5B638();
    if ((p_weak_ivar_lyt & 0x8000000000000000) == 0)
    {
      v26 = 0;
      v5 = 0;
      while (1)
      {
        v1 = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
          goto LABEL_44;
        }

        if ((v25 & 0xC000000000000001) != 0)
        {
          v27 = sub_5B5B8();
        }

        else
        {
          if (v26 >= *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_45;
          }

          v27 = *(v25 + 8 * v26 + 32);
        }

        v28 = v27;
        v31 = v27;
        sub_48C80(&v31, &v32);

        sub_5B618();
        sub_5B648();
        sub_5B658();
        sub_5B628();
        ++v26;
        if (v1 == p_weak_ivar_lyt)
        {

          v1 = v29;
          v22 = (&GiveUpRepeatFlow + 56);
          goto LABEL_39;
        }
      }
    }

    __break(1u);
    goto LABEL_49;
  }

LABEL_39:
  v30 = sub_5B3C8().super.isa;

  [v1 v22[234]];
}

uint64_t sub_4631C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_4633C, 0, 0);
}

uint64_t sub_4633C()
{
  v1 = *(v0[3] + 136);
  v0[4] = v1;
  if (v1 <= 1)
  {
    if (!v1)
    {
      v14 = "og#acknowledgeDismissal";
      v15 = swift_task_alloc();
      v0[6] = v15;
      *v15 = v0;
      v16 = sub_46818;
LABEL_19:
      v15[1] = v16;
      v10 = v0[2];
      v13 = v14 | 0x8000000000000000;
      v11 = 0xD000000000000022;
      goto LABEL_20;
    }

    if (v1 != (&dword_0 + 1))
    {
LABEL_23:
      sub_49138(v1);
      v17 = swift_task_alloc();
      v0[5] = v17;
      *v17 = v0;
      v17[1] = sub_466BC;
      v18 = v0[2];

      return sub_47284(v18, v1);
    }

    v8 = "og#nothingToRepeat";
    v9 = swift_task_alloc();
    v0[7] = v9;
    *v9 = v0;
    v9[1] = sub_4690C;
    v10 = v0[2];
    v11 = 0xD000000000000027;
  }

  else
  {
    if (v1 != (&dword_0 + 2))
    {
      if (v1 != (&dword_0 + 3))
      {
        if (v1 == &dword_4)
        {
          if (qword_71A58 != -1)
          {
            swift_once();
          }

          v2 = sub_5B228();
          sub_5B44(v2, qword_763B8);
          v3 = sub_5B218();
          v4 = sub_5B4C8();
          if (os_log_type_enabled(v3, v4))
          {
            v5 = swift_slowAlloc();
            *v5 = 0;
          }

          sub_5A438();
          v6 = v0[1];

          return v6();
        }

        goto LABEL_23;
      }

      v14 = "og#couldntGoBack";
      v15 = swift_task_alloc();
      v0[8] = v15;
      *v15 = v0;
      v16 = sub_46A00;
      goto LABEL_19;
    }

    v8 = "responseModeProvider";
    v12 = swift_task_alloc();
    v0[9] = v12;
    *v12 = v0;
    v12[1] = sub_46AF4;
    v10 = v0[2];
    v11 = 0xD000000000000020;
  }

  v13 = v8 | 0x8000000000000000;
LABEL_20:

  return sub_47938(v10, v11, v13);
}

uint64_t sub_466BC()
{

  return _swift_task_switch(sub_467B8, 0, 0);
}

uint64_t sub_467B8()
{
  sub_49148(*(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_46818()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_4690C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_46A00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_46AF4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

BOOL sub_46BE8()
{
  v1 = sub_5AF88();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v44 = &v36[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_5B94(&qword_73708, &qword_5D820);
  v5 = __chkstk_darwin(v4);
  v43 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v8 = &v36[-v7];
  v9 = sub_5B94(&qword_73710, &qword_5D828);
  v10 = __chkstk_darwin(v9 - 8);
  v39 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v42 = &v36[-v13];
  v14 = __chkstk_darwin(v12);
  v16 = &v36[-v15];
  v17 = __chkstk_darwin(v14);
  v19 = &v36[-v18];
  __chkstk_darwin(v17);
  v21 = &v36[-v20];
  v22 = *(v0 + 144);

  v22(v23);

  sub_5AF68();
  v40 = *(v2 + 56);
  v40(v19, 0, 1, v1);
  v41 = v4;
  v24 = *(v4 + 48);
  sub_49010(v19, v8);
  sub_49010(v21, &v8[v24]);
  v25 = *(v2 + 48);
  if (v25(v8, 1, v1) == 1)
  {
    sub_5D4C(v19, &qword_73710, &qword_5D828);
    if (v25(&v8[v24], 1, v1) == 1)
    {
      sub_5D4C(v8, &qword_73710, &qword_5D828);
LABEL_15:
      v29 = v21;
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  sub_49010(v8, v16);
  if (v25(&v8[v24], 1, v1) == 1)
  {
    sub_5D4C(v19, &qword_73710, &qword_5D828);
    (*(v2 + 8))(v16, v1);
LABEL_6:
    sub_5D4C(v8, &qword_73708, &qword_5D820);
    goto LABEL_7;
  }

  (*(v2 + 32))(v44, &v8[v24], v1);
  sub_490F0(&qword_73718, 255, &type metadata accessor for ResponseMode, &protocol conformance descriptor for ResponseMode);
  v37 = sub_5B328();
  v38 = v2;
  v32 = *(v2 + 8);
  v32(v44, v1);
  sub_5D4C(v19, &qword_73710, &qword_5D828);
  v32(v16, v1);
  v2 = v38;
  sub_5D4C(v8, &qword_73710, &qword_5D828);
  if (v37)
  {
    goto LABEL_15;
  }

LABEL_7:
  v26 = v42;
  sub_5AF78();
  v40(v26, 0, 1, v1);
  v27 = *(v41 + 48);
  v28 = v43;
  sub_49010(v26, v43);
  sub_49080(v21, &v28[v27]);
  if (v25(v28, 1, v1) != 1)
  {
    v30 = v39;
    sub_49010(v28, v39);
    if (v25(&v28[v27], 1, v1) != 1)
    {
      v33 = v44;
      (*(v2 + 32))(v44, &v28[v27], v1);
      sub_490F0(&qword_73718, 255, &type metadata accessor for ResponseMode, &protocol conformance descriptor for ResponseMode);
      v34 = sub_5B328();
      v35 = *(v2 + 8);
      v35(v33, v1);
      sub_5D4C(v26, &qword_73710, &qword_5D828);
      v35(v30, v1);
      sub_5D4C(v28, &qword_73710, &qword_5D828);
      return (v34 & 1) == 0;
    }

    sub_5D4C(v26, &qword_73710, &qword_5D828);
    (*(v2 + 8))(v30, v1);
LABEL_12:
    sub_5D4C(v28, &qword_73708, &qword_5D820);
    return 1;
  }

  sub_5D4C(v26, &qword_73710, &qword_5D828);
  if (v25(&v28[v27], 1, v1) != 1)
  {
    goto LABEL_12;
  }

  v29 = v28;
LABEL_16:
  sub_5D4C(v29, &qword_73710, &qword_5D828);
  return 0;
}

uint64_t sub_47284(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  sub_5B94(&unk_72440, &unk_5C460);
  v3[10] = swift_task_alloc();
  v4 = sub_5A908();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = sub_5A488();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_473DC, 0, 0);
}

uint64_t sub_473DC()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Re-rendering a recent dialog", v4, 2u);
  }

  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[14];
  v8 = v0[12];
  v17 = v0[13];
  v18 = v0[11];
  v9 = v0[9];
  v10 = v0[10];

  sub_5A478();
  sub_5A348();
  sub_5A468();
  sub_5B94(&qword_72460, &unk_5C5E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_5C4A0;
  *(v11 + 32) = sub_5A338();
  (*(v5 + 16))(v10, v6, v7);
  (*(v5 + 56))(v10, 0, 1, v7);
  sub_5A8F8();
  v12 = v9[10];
  v13 = v9[11];
  sub_5CBC(v9 + 7, v12);
  v0[5] = v18;
  v0[6] = &protocol witness table for AceOutput;
  v14 = sub_5F2C(v0 + 2);
  (*(v8 + 16))(v14, v17, v18);
  v15 = swift_task_alloc();
  v0[17] = v15;
  *v15 = v0;
  v15[1] = sub_47664;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 2, v12, v13);
}

uint64_t sub_47664()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_47860;
  }

  else
  {
    sub_5D00((v2 + 16));
    v3 = sub_47790;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_47790(uint64_t a1)
{
  v3 = v1[15];
  v2 = v1[16];
  v5 = v1[13];
  v4 = v1[14];
  v6 = v1[11];
  v7 = v1[12];
  sub_5A438();
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);

  v8 = v1[1];

  return v8();
}

uint64_t sub_47860()
{
  sub_5D00(v0 + 2);
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  sub_5A438();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_47938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[34] = a3;
  v4[35] = v3;
  v4[32] = a1;
  v4[33] = a2;
  sub_5B94(&unk_72440, &unk_5C460);
  v4[36] = swift_task_alloc();
  v5 = sub_5A908();
  v4[37] = v5;
  v4[38] = *(v5 - 8);
  v4[39] = swift_task_alloc();
  v6 = sub_5A648();
  v4[40] = v6;
  v4[41] = *(v6 - 8);
  v4[42] = swift_task_alloc();
  v7 = sub_5A588();
  v4[43] = v7;
  v4[44] = *(v7 - 8);
  v4[45] = swift_task_alloc();

  return _swift_task_switch(sub_47AEC, 0, 0);
}

uint64_t sub_47AEC()
{
  sub_5CBC((v0[35] + 96), *(v0[35] + 120));
  v1 = sub_38208(_swiftEmptyArrayStorage);
  v0[46] = v1;
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  *(inited + 32) = 0x65736E6F70736572;
  v3 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEC00000065646F4DLL;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v4 = sub_3802C(inited);
  v0[47] = v4;
  swift_setDeallocating();
  sub_5D4C(v3, &unk_72450, &unk_5C470);
  v5 = swift_task_alloc();
  v0[48] = v5;
  *v5 = v0;
  v5[1] = sub_47C58;
  v7 = v0[33];
  v6 = v0[34];

  return sub_3419C(v7, v6, v1, v4);
}

uint64_t sub_47C58(uint64_t a1)
{
  *(*v2 + 392) = a1;

  if (v1)
  {

    v3 = sub_48214;
  }

  else
  {

    v3 = sub_47DCC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_47DCC()
{
  v27 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);

  v2 = sub_5B218();
  v3 = sub_5B4A8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 264);
    v4 = *(v0 + 272);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2DC10(v5, v4, &v26);
    _os_log_impl(&dword_0, v2, v3, "Executing dialog %s and dismissing Siri", v6, 0xCu);
    sub_5D00(v7);
  }

  v8 = *(v0 + 392);
  v10 = *(v0 + 328);
  v9 = *(v0 + 336);
  v11 = *(v0 + 320);
  v24 = *(v0 + 296);
  v25 = *(v0 + 304);
  v21 = *(v0 + 288);
  v22 = *(v0 + 312);
  v23 = *(v0 + 280);

  v12 = [v8 speak];
  sub_5B3D8();

  v13 = [v8 print];
  sub_5B3D8();

  (*(v10 + 104))(v9, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v11);
  sub_5A538();
  sub_5A868();
  sub_5A868();
  sub_5CBC((v0 + 136), *(v0 + 160));
  sub_5A218();
  v14 = sub_5A488();
  (*(*(v14 - 8) + 56))(v21, 1, 1, v14);
  sub_5B94(&qword_72460, &unk_5C5E0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_5C4A0;
  *(v15 + 32) = [objc_allocWithZone(SAUICloseAssistant) init];
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0;
  *(v0 + 176) = 0u;
  sub_5A3C8();

  sub_5D4C(v0 + 176, &qword_721D8, &qword_5C480);
  sub_5D4C(v21, &unk_72440, &unk_5C460);
  sub_5D00((v0 + 96));
  sub_5D00((v0 + 136));
  v16 = v23[10];
  v17 = v23[11];
  sub_5CBC(v23 + 7, v16);
  *(v0 + 240) = v24;
  *(v0 + 248) = &protocol witness table for AceOutput;
  v18 = sub_5F2C((v0 + 216));
  (*(v25 + 16))(v18, v22, v24);
  v19 = swift_task_alloc();
  *(v0 + 400) = v19;
  *v19 = v0;
  v19[1] = sub_483CC;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 216, v16, v17);
}

uint64_t sub_48214()
{
  v11 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);

  v2 = sub_5B218();
  v3 = sub_5B4C8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[33];
    v4 = v0[34];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2DC10(v5, v4, &v10);
    _os_log_impl(&dword_0, v2, v3, "Couldn't create a dialog %s.", v6, 0xCu);
    sub_5D00(v7);
  }

  sub_5A438();

  v8 = v0[1];

  return v8();
}

uint64_t sub_483CC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_485E4;
  }

  else
  {
    sub_5D00((v2 + 216));
    v3 = sub_484F8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_484F8(uint64_t a1)
{
  v2 = v1[49];
  v4 = v1[44];
  v3 = v1[45];
  v5 = v1[43];
  v7 = v1[38];
  v6 = v1[39];
  v8 = v1[37];
  sub_5A438();

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  v9 = v1[1];

  return v9();
}

uint64_t sub_485E4()
{
  sub_5D00(v0 + 27);
  v1 = v0[49];
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[43];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[37];
  sub_5A438();

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_486D8()
{
  sub_5D00((v0 + 16));
  sub_5D00((v0 + 56));
  sub_5D00((v0 + 96));
  sub_49148(*(v0 + 136));

  return swift_deallocClassInstance();
}

void *_s17CAMRootFlowPlugin22RepeatRecentDialogFlowC6ActionOwCP_0(void *result, void **a2)
{
  v2 = *a2;
  if (*a2 >= 0xFFFFFFFF)
  {
    v3 = result;
    v4 = v2;
    result = v3;
  }

  *result = v2;
  return result;
}

void destroy for RepeatRecentDialogFlow.Action(void **a1)
{
  v1 = *a1;
  if (v1 >= 0xFFFFFFFF)
  {
  }
}

void **assignWithCopy for RepeatRecentDialogFlow.Action(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 < 0xFFFFFFFF)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = v4;
      v6 = v4;
      return a1;
    }

LABEL_7:
    *a1 = v4;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {

    v4 = *a2;
    goto LABEL_7;
  }

  *a1 = v4;
  v5 = v4;

  return a1;
}

void **assignWithTake for RepeatRecentDialogFlow.Action(void **result, void **a2)
{
  v2 = *result;
  v3 = *a2;
  if (*result < 0xFFFFFFFF)
  {
    *result = v3;
  }

  else if (v3 < 0xFFFFFFFF)
  {
    v5 = result;

    result = v5;
    *v5 = v3;
  }

  else
  {
    *result = v3;
    v4 = result;

    return v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RepeatRecentDialogFlow.Action(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RepeatRecentDialogFlow.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_48950(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_48968(void *result, int a2)
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

void (*sub_48998(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_5AF28();
  return sub_3C310;
}

uint64_t sub_48A28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_573C;

  return sub_44708(a1);
}

uint64_t sub_48B1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5934;

  return sub_4631C(a1);
}

uint64_t sub_48BB8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RepeatRecentDialogFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

void sub_48C80(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    *a2 = v3;
    v14 = v3;
    return;
  }

  v5 = v4;
  v6 = v3;
  v7 = [v5 dialog];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 content];
    if (v9)
    {
      v10 = v9;
      [v5 copy];
      sub_5B538();
      swift_unknownObjectRelease();
      sub_1AB38(0, &qword_73730, SAUISnippet_ptr);
      if (swift_dynamicCast())
      {
        [v8 copy];
        sub_5B538();
        swift_unknownObjectRelease();
        sub_1AB38(0, &qword_73738, SADialog_ptr);
        if (swift_dynamicCast())
        {
          [v10 copy];
          sub_5B538();
          swift_unknownObjectRelease();
          sub_1AB38(0, &qword_73740, SADialogText_ptr);
          v11 = swift_dynamicCast();

          if (v11)
          {
            v12 = sub_5B338();
            [v15 setSpeakableTextOverride:v12];

            [v15 setContent:v15];
            v13 = v15;
            [v13 setDialog:v15];

            *a2 = v13;
            return;
          }
        }

        else
        {
        }
      }

      else
      {
      }

      goto LABEL_14;
    }
  }

LABEL_14:
  *a2 = v5;
}

uint64_t sub_48F34()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v0 = sub_5B228();
  sub_5B44(v0, qword_763B8);
  v1 = sub_5B218();
  v2 = sub_5B4D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Non-async on(input:) is not supported in RepeatRecentDialogFlow.", v3, 2u);
  }

  return 0;
}

uint64_t sub_49010(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_73710, &qword_5D828);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_49080(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_73710, &qword_5D828);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_490F0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_49138(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

void sub_49148(id result)
{
  if (result != &dword_4)
  {
    sub_49158(result);
  }
}

void sub_49158(id a1)
{
  if (a1 >= 4)
  {
  }
}

unint64_t sub_4916C(uint64_t a1)
{
  v53 = sub_5AD28();
  v57 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_5B94(&qword_73748, &qword_5D830);
  __chkstk_darwin(v52);
  v55 = &v46 - v3;
  v4 = sub_5B94(&qword_73750, &qword_5D838);
  v5 = __chkstk_darwin(v4 - 8);
  v51 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v54 = &v46 - v8;
  __chkstk_darwin(v7);
  v56 = &v46 - v9;
  v10 = sub_5AA18();
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = __chkstk_darwin(v10);
  v58 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v61 = &v46 - v13;
  v14 = sub_5A968();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_5A858();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_5A8E8();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v21, a1, v18);
  if ((*(v19 + 88))(v21, v18) != enum case for Parse.uso(_:))
  {
    (*(v19 + 8))(v21, v18);
    return 3;
  }

  (*(v19 + 96))(v21, v18);
  (*(v23 + 32))(v25, v21, v22);
  sub_5A8D8();
  v26 = sub_5A958();
  (*(v15 + 8))(v17, v14);
  v27 = v22;
  if (!*(v26 + 16))
  {

    (*(v23 + 8))(v25, v22);
    return 3;
  }

  v28 = v58;
  v29 = v59;
  v30 = v60;
  (*(v59 + 16))(v58, v26 + ((*(v29 + 80) + 32) & ~*(v29 + 80)), v60);

  v31 = v61;
  (*(v29 + 32))(v61, v28, v30);
  if (sub_5A9F8())
  {
    (*(v29 + 8))(v31, v30);
    (*(v23 + 8))(v25, v27);
    return 0;
  }

  result = sub_5AB58();
  if (result >> 62)
  {
    v34 = result;
    v35 = sub_5B678();
    result = v34;
    v33 = v57;
    if (!v35)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v33 = v57;
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_15:

      sub_5ACA8();

      if (v64)
      {
        sub_302D4(&v63, v65);
        sub_C0A0(v65, &v63);
        sub_5AD08();
        if (swift_dynamicCast())
        {
          sub_5D00(v65);
          (*(v29 + 8))(v31, v30);
          (*(v23 + 8))(v25, v27);

          sub_5D00(&v63);
          return 0;
        }

        sub_5AD88();
        if (swift_dynamicCast())
        {
          sub_5D00(v65);
          (*(v29 + 8))(v31, v30);
          (*(v23 + 8))(v25, v27);

          sub_5D00(&v63);
          return 1;
        }

        sub_5ADA8();
        if (swift_dynamicCast() && (, sub_C0A0(v65, v62), swift_dynamicCast()))
        {

          sub_5AB88();

          v49 = v27;
          v48 = v25;
          v47 = v23;
          v36 = v56;
          if (v62[0])
          {
            sub_5AD18();

            v37 = v53;
          }

          else
          {
            v37 = v53;
            (*(v33 + 56))(v56, 1, 1, v53);
          }

          v38 = v55;
          v39 = v54;
          (*(v33 + 104))(v54, enum case for UsoEntity_common_Interjection.DefinedValues.common_Interjection_IndirectDismissal(_:), v37);
          (*(v33 + 56))(v39, 0, 1, v37);
          v40 = *(v52 + 48);
          sub_49DDC(v36, v38);
          sub_49DDC(v39, v38 + v40);
          v41 = *(v33 + 48);
          if (v41(v38, 1, v37) == 1)
          {

            sub_5D4C(v39, &qword_73750, &qword_5D838);
            v42 = v55;
            sub_5D4C(v56, &qword_73750, &qword_5D838);
            sub_5D00(v65);
            (*(v29 + 8))(v61, v30);
            (*(v47 + 8))(v48, v49);
            if (v41(v42 + v40, 1, v37) == 1)
            {
              sub_5D4C(v42, &qword_73750, &qword_5D838);
LABEL_35:
              sub_5D00(&v63);
              return 2;
            }
          }

          else
          {
            v43 = v51;
            sub_49DDC(v38, v51);
            if (v41(v38 + v40, 1, v37) != 1)
            {
              v44 = v50;
              (*(v33 + 32))(v50, v38 + v40, v37);
              sub_49E4C();
              LODWORD(v58) = sub_5B328();

              v45 = *(v33 + 8);
              v45(v44, v37);
              sub_5D4C(v54, &qword_73750, &qword_5D838);
              sub_5D4C(v56, &qword_73750, &qword_5D838);
              sub_5D00(v65);
              (*(v29 + 8))(v61, v30);
              (*(v47 + 8))(v48, v49);
              v45(v43, v37);
              sub_5D4C(v38, &qword_73750, &qword_5D838);
              if (v58)
              {
                goto LABEL_35;
              }

              goto LABEL_26;
            }

            sub_5D4C(v54, &qword_73750, &qword_5D838);
            v42 = v55;
            sub_5D4C(v56, &qword_73750, &qword_5D838);
            sub_5D00(v65);
            (*(v29 + 8))(v61, v30);
            (*(v47 + 8))(v48, v49);
            (*(v33 + 8))(v43, v37);
          }

          sub_5D4C(v42, &qword_73748, &qword_5D830);
        }

        else
        {
          sub_5D00(v65);
          (*(v29 + 8))(v31, v30);
          (*(v23 + 8))(v25, v27);
        }

LABEL_26:
        sub_5D00(&v63);
        return 3;
      }

      (*(v29 + 8))(v31, v30);
      (*(v23 + 8))(v25, v27);
      sub_5D4C(&v63, &qword_73758, &unk_5D840);
      return 3;
    }
  }

  if ((result & 0xC000000000000001) != 0)
  {
    sub_5B5B8();
    goto LABEL_15;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_49DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_73750, &qword_5D838);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_49E4C()
{
  result = qword_73760;
  if (!qword_73760)
  {
    sub_5AD28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73760);
  }

  return result;
}

uint64_t sub_49EA4()
{
  sub_59DE8();
  swift_allocObject();
  result = sub_59DD8();
  qword_763D8 = result;
  return result;
}

uint64_t sub_49EE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  if (a11 >= 4u)
  {
    if (a11 != 4)
    {
      return v11;
    }
  }

  else
  {
  }
}

uint64_t sub_49FB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  if (a11 >= 4u)
  {
    if (a11 != 4)
    {
      return v11;
    }
  }

  else
  {
  }
}

uint64_t initializeWithCopy for SiriLinkViewModel(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  sub_49EE4(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  return a1;
}

uint64_t assignWithCopy for SiriLinkViewModel(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v24 = *(a2 + 72);
  v25 = *(a2 + 80);
  sub_49EE4(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v24, v25);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v24;
  *(a1 + 80) = v25;
  sub_49FB8(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
  return a1;
}

__n128 initializeWithTake for SiriLinkViewModel(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for SiriLinkViewModel(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v15;
  v16 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v16;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  sub_49FB8(v4, v6, v5, v7, v8, v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t getEnumTagSinglePayload for SiriLinkViewModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 81))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 80);
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

uint64_t storeEnumTagSinglePayload for SiriLinkViewModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_4A338(void *a1)
{
  v2 = v1;
  v4 = sub_5B94(&qword_73768, &qword_5D8B8);
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v49 = &v42 - v5;
  v6 = sub_5B94(&qword_73770, &qword_5D8C0);
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v48 = &v42 - v7;
  v8 = sub_5B94(&qword_73778, &qword_5D8C8);
  v46 = *(v8 - 8);
  v47 = v8;
  __chkstk_darwin(v8);
  v45 = &v42 - v9;
  v10 = sub_5B94(&qword_73780, &qword_5D8D0);
  v44 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v42 - v11;
  v13 = sub_5B94(&qword_73788, &qword_5D8D8);
  v43 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  v16 = sub_5B94(&qword_73790, &qword_5D8E0);
  v55 = *(v16 - 8);
  v56 = v16;
  __chkstk_darwin(v16);
  v18 = &v42 - v17;
  sub_5CBC(a1, a1[3]);
  sub_4AEDC();
  v54 = v18;
  sub_5B888();
  v20 = *v2;
  v19 = v2[1];
  v21 = *(v2 + 80);
  if (v21 <= 1)
  {
    if (*(v2 + 80))
    {
      LOBYTE(v57) = 1;
      sub_4B080();
      v38 = v56;
      v39 = v54;
      sub_5B738();
      v57 = v20;
      v58 = v19;
      v40 = *(v2 + 2);
      v59 = *(v2 + 1);
      v60 = v40;
      v41 = *(v2 + 4);
      v61 = *(v2 + 3);
      v62 = v41;
      sub_4AFD8();
      sub_5B778();
      (*(v44 + 8))(v12, v10);
      return (*(v55 + 8))(v39, v38);
    }

    else
    {
      LOBYTE(v57) = 0;
      sub_4B0D4();
      v30 = v56;
      v31 = v54;
      sub_5B738();
      v57 = v20;
      v58 = v19;
      v32 = *(v2 + 2);
      v59 = *(v2 + 1);
      v60 = v32;
      v33 = *(v2 + 4);
      v61 = *(v2 + 3);
      v62 = v33;
      sub_4AFD8();
      sub_5B778();
      (*(v43 + 8))(v15, v13);
      return (*(v55 + 8))(v31, v30);
    }
  }

  else
  {
    if (v21 == 2)
    {
      LOBYTE(v57) = 2;
      v35 = v19;
      sub_4B02C();
      v23 = v45;
      v24 = v56;
      v25 = v54;
      sub_5B738();
      v57 = v20;
      v58 = v35;
      v36 = *(v2 + 2);
      v59 = *(v2 + 1);
      v60 = v36;
      v37 = *(v2 + 4);
      v61 = *(v2 + 3);
      v62 = v37;
      sub_4AFD8();
      v28 = v47;
      sub_5B778();
      v29 = v46;
    }

    else
    {
      v22 = v2[1];
      if (v21 == 3)
      {
        LOBYTE(v57) = 3;
        sub_4AF84();
        v23 = v48;
        v24 = v56;
        v25 = v54;
        sub_5B738();
        v57 = v20;
        v58 = v22;
        v26 = *(v2 + 2);
        v59 = *(v2 + 1);
        v60 = v26;
        v27 = *(v2 + 4);
        v61 = *(v2 + 3);
        v62 = v27;
        sub_4AFD8();
        v28 = v51;
        sub_5B778();
        v29 = v50;
      }

      else
      {
        LOBYTE(v57) = 4;
        sub_4AF30();
        v23 = v49;
        v24 = v56;
        v25 = v54;
        sub_5B738();
        v28 = v53;
        sub_5B758();
        v29 = v52;
      }
    }

    (*(v29 + 8))(v23, v28);
    return (*(v55 + 8))(v25, v24);
  }
}

uint64_t sub_4AA34(uint64_t a1)
{
  v2 = sub_4B02C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_4AA70(uint64_t a1)
{
  v2 = sub_4B02C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_4AAAC(uint64_t a1)
{
  v2 = sub_4AF84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_4AAE8(uint64_t a1)
{
  v2 = sub_4AF84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_4AB24(uint64_t a1)
{
  v2 = sub_4B0D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_4AB60(uint64_t a1)
{
  v2 = sub_4B0D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_4AB9C(uint64_t a1)
{
  v2 = sub_4B080();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_4ABD8(uint64_t a1)
{
  v2 = sub_4B080();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_4AC14()
{
  v1 = *v0;
  v2 = 0x654874706D6F7270;
  if (v1 == 3)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000016;
  }

  v3 = 0xD000000000000014;
  if (*v0)
  {
    v3 = 0xD000000000000019;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_4ACC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_4B128(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_4ACF8(uint64_t a1)
{
  v2 = sub_4AEDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_4AD34(uint64_t a1)
{
  v2 = sub_4AEDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_4AD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_5B7A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_4ADF0(uint64_t a1)
{
  v2 = sub_4AF30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_4AE2C(uint64_t a1)
{
  v2 = sub_4AF30();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_4AE68@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_4B2E4(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_4AEDC()
{
  result = qword_73798;
  if (!qword_73798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73798);
  }

  return result;
}

unint64_t sub_4AF30()
{
  result = qword_737A0;
  if (!qword_737A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_737A0);
  }

  return result;
}

unint64_t sub_4AF84()
{
  result = qword_737A8;
  if (!qword_737A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_737A8);
  }

  return result;
}

unint64_t sub_4AFD8()
{
  result = qword_737B0;
  if (!qword_737B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_737B0);
  }

  return result;
}

unint64_t sub_4B02C()
{
  result = qword_737B8;
  if (!qword_737B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_737B8);
  }

  return result;
}

unint64_t sub_4B080()
{
  result = qword_737C0;
  if (!qword_737C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_737C0);
  }

  return result;
}

unint64_t sub_4B0D4()
{
  result = qword_737C8;
  if (!qword_737C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_737C8);
  }

  return result;
}

uint64_t sub_4B128(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000000005F560 == a2 || (sub_5B7A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x800000000005F580 == a2 || (sub_5B7A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000000005F5A0 == a2 || (sub_5B7A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000000005F5C0 == a2 || (sub_5B7A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x654874706D6F7270 && a2 == 0xEC00000072656461)
  {

    return 4;
  }

  else
  {
    v5 = sub_5B7A8();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

double sub_4B2E4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v56 = sub_5B94(&qword_737D0, &qword_5D8E8);
  v63 = *(v56 - 8);
  __chkstk_darwin(v56);
  v64 = &v53 - v3;
  v62 = sub_5B94(&qword_737D8, &qword_5D8F0);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v67 = &v53 - v4;
  v59 = sub_5B94(&qword_737E0, &qword_5D8F8);
  v60 = *(v59 - 8);
  __chkstk_darwin(v59);
  v66 = &v53 - v5;
  v58 = sub_5B94(&qword_737E8, &qword_5D900);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v7 = &v53 - v6;
  v8 = sub_5B94(&qword_737F0, &qword_5D908);
  v55 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v53 - v9;
  v11 = sub_5B94(&qword_737F8, &qword_5D910);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v53 - v13;
  v15 = a1[3];
  v79 = a1;
  sub_5CBC(a1, v15);
  sub_4AEDC();
  v16 = v68;
  sub_5B878();
  if (v16)
  {
    goto LABEL_9;
  }

  v53 = v8;
  v17 = v66;
  v18 = v67;
  v68 = v12;
  v19 = v11;
  v54 = v14;
  v20 = sub_5B728();
  v21 = *(v20 + 16);
  if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 5) : (v23 = 1), v23))
  {
    v24 = sub_5B5E8();
    swift_allocError();
    v26 = v25;
    sub_5B94(&qword_73800, &qword_5D918);
    *v26 = &type metadata for SiriLinkViewModel;
    v27 = v54;
    sub_5B6D8();
    sub_5B5D8();
    (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v24);
    swift_willThrow();
    (*(v68 + 8))(v27, v19);
    swift_unknownObjectRelease();
LABEL_9:
    sub_5D00(v79);
    return result;
  }

  if (*(v20 + 32) <= 1u)
  {
    if (*(v20 + 32))
    {
      LOBYTE(v69) = 1;
      sub_4B080();
      v40 = v54;
      sub_5B6C8();
      sub_4BE20();
      v47 = v58;
      sub_5B718();
      v55 = 0;
      (*(v57 + 8))(v7, v47);
      (*(v68 + 8))(v40, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      LOBYTE(v69) = 0;
      sub_4B0D4();
      v33 = v10;
      v34 = v54;
      sub_5B6C8();
      sub_4BE20();
      v46 = v53;
      sub_5B718();
      (*(v55 + 8))(v33, v46);
      (*(v68 + 8))(v34, v11);
      swift_unknownObjectRelease();
      v55 = 0;
    }

    v48 = v69;
    v50 = v70;
    v75 = v71;
    v76 = v72;
    v77 = v73;
    v78 = v74;
    goto LABEL_21;
  }

  v58 = v20;
  v29 = v65;
  if (v22 != 2)
  {
    LODWORD(v66) = v22;
    v23 = v22 == 3;
    v30 = v68;
    v31 = v19;
    if (v23)
    {
      LOBYTE(v69) = 3;
      sub_4AF84();
      v32 = v54;
      sub_5B6C8();
      sub_4BE20();
      v42 = v62;
      sub_5B718();
      v55 = 0;
      (*(v61 + 8))(v18, v42);
      (*(v30 + 8))(v32, v19);
      swift_unknownObjectRelease();
      v48 = v69;
      v50 = v70;
      v75 = v71;
      v76 = v72;
      v77 = v73;
      v78 = v74;
    }

    else
    {
      LOBYTE(v69) = 4;
      sub_4AF30();
      v38 = v64;
      v39 = v54;
      sub_5B6C8();
      v43 = v56;
      v44 = sub_5B6F8();
      v45 = v38;
      v55 = 0;
      v48 = v44;
      v50 = v49;
      (*(v63 + 8))(v45, v43);
      (*(v30 + 8))(v39, v31);
      swift_unknownObjectRelease();
    }

    LOBYTE(v22) = v66;
LABEL_21:
    v29 = v65;
    goto LABEL_22;
  }

  LOBYTE(v69) = 2;
  sub_4B02C();
  v35 = v17;
  v36 = v54;
  sub_5B6C8();
  v37 = v68;
  sub_4BE20();
  v41 = v59;
  sub_5B718();
  v55 = 0;
  (*(v60 + 8))(v35, v41);
  (*(v37 + 8))(v36, v19);
  swift_unknownObjectRelease();
  v48 = v69;
  v50 = v70;
  v75 = v71;
  v76 = v72;
  v77 = v73;
  v78 = v74;
LABEL_22:
  sub_5D00(v79);
  *v29 = v48;
  *(v29 + 8) = v50;
  v51 = v76;
  *(v29 + 16) = v75;
  *(v29 + 32) = v51;
  result = *&v77;
  v52 = v78;
  *(v29 + 48) = v77;
  *(v29 + 64) = v52;
  *(v29 + 80) = v22;
  return result;
}

unint64_t sub_4BE20()
{
  result = qword_73808;
  if (!qword_73808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73808);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriLinkViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SiriLinkViewModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_4C020()
{
  result = qword_73810;
  if (!qword_73810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73810);
  }

  return result;
}

unint64_t sub_4C078()
{
  result = qword_73818;
  if (!qword_73818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73818);
  }

  return result;
}

unint64_t sub_4C0D0()
{
  result = qword_73820;
  if (!qword_73820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73820);
  }

  return result;
}

unint64_t sub_4C128()
{
  result = qword_73828;
  if (!qword_73828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73828);
  }

  return result;
}

unint64_t sub_4C180()
{
  result = qword_73830;
  if (!qword_73830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73830);
  }

  return result;
}

unint64_t sub_4C1D8()
{
  result = qword_73838;
  if (!qword_73838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73838);
  }

  return result;
}

unint64_t sub_4C230()
{
  result = qword_73840;
  if (!qword_73840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73840);
  }

  return result;
}

unint64_t sub_4C288()
{
  result = qword_73848;
  if (!qword_73848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73848);
  }

  return result;
}

unint64_t sub_4C2E0()
{
  result = qword_73850;
  if (!qword_73850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73850);
  }

  return result;
}

unint64_t sub_4C338()
{
  result = qword_73858;
  if (!qword_73858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73858);
  }

  return result;
}

unint64_t sub_4C390()
{
  result = qword_73860;
  if (!qword_73860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73860);
  }

  return result;
}

unint64_t sub_4C3E8()
{
  result = qword_73868;
  if (!qword_73868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73868);
  }

  return result;
}

unint64_t sub_4C440()
{
  result = qword_73870;
  if (!qword_73870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73870);
  }

  return result;
}

unint64_t sub_4C498()
{
  result = qword_73878;
  if (!qword_73878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73878);
  }

  return result;
}

unint64_t sub_4C4F0()
{
  result = qword_73880;
  if (!qword_73880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73880);
  }

  return result;
}

unint64_t sub_4C548()
{
  result = qword_73888;
  if (!qword_73888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73888);
  }

  return result;
}

unint64_t sub_4C5A0()
{
  result = qword_73890;
  if (!qword_73890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73890);
  }

  return result;
}

unint64_t sub_4C5F8()
{
  result = qword_73898;
  if (!qword_73898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73898);
  }

  return result;
}

uint64_t sub_4C678()
{
  sub_5B94(&qword_72D68, &unk_5CF50);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_5AF08();

  return v1;
}

uint64_t sub_4C71C()
{
  v1 = v0;
  v2 = sub_5B0F8();
  v29 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v28 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v28 - v5;
  v7 = sub_5A738();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5A858();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 176) = 2;
  sub_5A7C8();
  if ((sub_5A808() & 1) == 0 && (sub_5A7E8() & 1) == 0)
  {
    if (sub_5A848())
    {
      (*(v12 + 8))(v14, v11);
      v23 = 1;
    }

    else
    {
      v27 = sub_5A7F8();
      (*(v12 + 8))(v14, v11);
      if ((v27 & 1) == 0)
      {
        return 0;
      }

      v23 = 4;
    }

LABEL_14:
    *(v1 + 176) = v23;
    return 1;
  }

  (*(v12 + 8))(v14, v11);
  (*(v8 + 104))(v10, enum case for UniversalActionFeatureFlags.cancelDefaultBehavior(_:), v7);
  v15 = sub_5A728();
  (*(v8 + 8))(v10, v7);
  if (v15)
  {
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v16 = sub_5B228();
    sub_5B44(v16, qword_763B8);

    v17 = sub_5B218();
    v18 = sub_5B4B8();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v29;
    if (v19)
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      sub_5B94(&qword_72D68, &unk_5CF50);
      swift_getKeyPath();
      swift_getKeyPath();
      v30 = v1;

      sub_5AF08();

      sub_5B0D8();

      v22 = sub_5B0E8();
      (*(v20 + 8))(v6, v2);
      *(v21 + 4) = v22;

      _os_log_impl(&dword_0, v17, v18, "UniversalAction currentRequest.positionInSession: %ld", v21, 0xCu);
    }

    else
    {
    }

    sub_5B94(&qword_72D68, &unk_5CF50);
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v1;

    sub_5AF08();

    sub_5B0D8();

    v24 = v28;
    (*(v20 + 104))(v28, enum case for RequestPositionInSession.first(_:), v2);
    sub_4EA4C(&qword_739B8, 255, &type metadata accessor for RequestPositionInSession, &protocol conformance descriptor for RequestPositionInSession);
    sub_5B3A8();
    sub_5B3A8();
    v25 = *(v20 + 8);
    v25(v24, v2);
    v25(v6, v2);
    if (v31 == v30)
    {
      v23 = 0;
    }

    else
    {
      v23 = 3;
    }

    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_4CCD0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_4CCF0, 0, 0);
}

uint64_t sub_4CCF0()
{
  v1 = v0[3];
  v2 = *(v1 + 176);
  if (v2 != 2)
  {
    if (v2 == 3)
    {
      sub_5CBC((v1 + 136), *(v1 + 160));
      sub_5A1E8();
      LOBYTE(v25) = 0;
      sub_5A1D8();
      sub_5A158();

      sub_5B94(&qword_72460, &unk_5C5E0);
      v4 = swift_allocObject();
      v0[12] = v4;
      *(v4 + 16) = xmmword_5C4A0;
      *(v4 + 32) = [objc_allocWithZone(SAUIClearScreen) init];
      v10 = swift_task_alloc();
      v0[13] = v10;
      *v10 = v0;
      v10[1] = sub_4D67C;
      v7 = v0[2];
      v9 = 0x800000000005F640;
      v8 = 0xD00000000000001CLL;
    }

    else
    {
      if (v2 != 4)
      {
        v18 = [objc_allocWithZone(SAUICloseAssistant) init];
        v0[4] = v18;
        if (v2)
        {
          v19 = "UniversalActionDialog#dismiss";
          sub_5B94(&qword_72460, &unk_5C5E0);
          v20 = swift_allocObject();
          v0[8] = v20;
          *(v20 + 16) = xmmword_5C4A0;
          *(v20 + 32) = v18;
          v21 = v18;
          v22 = swift_task_alloc();
          v0[9] = v22;
          *v22 = v0;
          v22[1] = sub_4D3EC;
          v7 = v0[2];
          v8 = 0xD000000000000025;
        }

        else
        {
          sub_5CBC((v0[3] + 136), *(v0[3] + 160));
          sub_5A1E8();
          sub_5A1D8();
          sub_5A158();

          v19 = "UniversalActionDialog#cancel";
          sub_5B94(&qword_72460, &unk_5C5E0);
          v20 = swift_allocObject();
          v0[10] = v20;
          *(v20 + 16) = xmmword_5C4A0;
          *(v20 + 32) = v18;
          v23 = v18;
          v24 = swift_task_alloc();
          v0[11] = v24;
          *v24 = v0;
          v24[1] = sub_4D564;
          v7 = v0[2];
          v8 = 0xD00000000000001DLL;
        }

        v9 = v19 | 0x8000000000000000;
        v11 = v20;
        goto LABEL_18;
      }

      v3 = [objc_allocWithZone(SAUICloseAssistant) init];
      v0[5] = v3;
      sub_5B94(&qword_72460, &unk_5C5E0);
      v4 = swift_allocObject();
      v0[6] = v4;
      *(v4 + 16) = xmmword_5C4A0;
      *(v4 + 32) = v3;
      v5 = v3;
      v6 = swift_task_alloc();
      v0[7] = v6;
      *v6 = v0;
      v6[1] = sub_4D274;
      v7 = v0[2];
      v8 = 0xD00000000000001ELL;
      v9 = 0x800000000005F6B0;
    }

    v11 = v4;
LABEL_18:

    return sub_4D78C(v7, v8, v9, v11);
  }

  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v12 = sub_5B228();
  sub_5B44(v12, qword_763B8);
  v13 = sub_5B218();
  v14 = sub_5B4C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
  }

  sub_5A438();
  v16 = v0[1];

  return v16();
}

uint64_t sub_4D274()
{

  return _swift_task_switch(sub_4D38C, 0, 0);
}

uint64_t sub_4D38C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_4D3EC()
{

  return _swift_task_switch(sub_4D504, 0, 0);
}

uint64_t sub_4D504()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_4D564()
{

  return _swift_task_switch(sub_4EA94, 0, 0);
}

uint64_t sub_4D67C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_4D78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[39] = a4;
  v5[40] = v4;
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  sub_5B94(&unk_72440, &unk_5C460);
  v5[41] = swift_task_alloc();
  v6 = sub_5A908();
  v5[42] = v6;
  v5[43] = *(v6 - 8);
  v5[44] = swift_task_alloc();
  v7 = sub_5A648();
  v5[45] = v7;
  v5[46] = *(v7 - 8);
  v5[47] = swift_task_alloc();
  v8 = sub_5A588();
  v5[48] = v8;
  v5[49] = *(v8 - 8);
  v5[50] = swift_task_alloc();

  return _swift_task_switch(sub_4D944, 0, 0);
}

uint64_t sub_4D944()
{
  sub_5CBC((v0[40] + 96), *(v0[40] + 120));
  v1 = sub_38208(_swiftEmptyArrayStorage);
  v0[51] = v1;
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  *(inited + 32) = 0x65736E6F70736572;
  v3 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEC00000065646F4DLL;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v4 = sub_3802C(inited);
  v0[52] = v4;
  swift_setDeallocating();
  sub_5D4C(v3, &unk_72450, &unk_5C470);
  v5 = swift_task_alloc();
  v0[53] = v5;
  *v5 = v0;
  v5[1] = sub_4DAB0;
  v7 = v0[37];
  v6 = v0[38];

  return sub_3419C(v7, v6, v1, v4);
}

uint64_t sub_4DAB0(uint64_t a1)
{
  *(*v2 + 432) = a1;

  if (v1)
  {

    v3 = sub_4E020;
  }

  else
  {

    v3 = sub_4DC24;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_4DC24()
{
  v1 = *(v0 + 432);
  v3 = *(v0 + 368);
  v2 = *(v0 + 376);
  v13 = *(v0 + 360);
  v16 = *(v0 + 336);
  v17 = *(v0 + 344);
  v4 = *(v0 + 328);
  v15 = *(v0 + 320);
  v14 = *(v0 + 352);

  v5 = [v1 speak];
  sub_5B3D8();

  v6 = [v1 print];
  sub_5B3D8();

  (*(v3 + 104))(v2, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v13);
  sub_5A538();
  sub_5A868();
  sub_5A868();
  sub_5CBC((v0 + 136), *(v0 + 160));
  sub_5A218();
  v7 = sub_5A488();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  *(v0 + 208) = 0;
  *(v0 + 192) = 0u;
  *(v0 + 176) = 0u;
  sub_5A3C8();
  sub_5D4C(v0 + 176, &qword_721D8, &qword_5C480);
  sub_5D4C(v4, &unk_72440, &unk_5C460);
  sub_5D00((v0 + 96));
  sub_5D00((v0 + 136));
  v8 = v15[10];
  v9 = v15[11];
  sub_5CBC(v15 + 7, v8);
  *(v0 + 240) = v16;
  *(v0 + 248) = &protocol witness table for AceOutput;
  v10 = sub_5F2C((v0 + 216));
  (*(v17 + 16))(v10, v14, v16);
  v11 = swift_task_alloc();
  *(v0 + 440) = v11;
  *v11 = v0;
  v11[1] = sub_4DF04;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 216, v8, v9);
}

uint64_t sub_4DF04()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = sub_4E2C4;
  }

  else
  {
    sub_5D00((v2 + 216));
    v3 = sub_4E1D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_4E020()
{
  v11 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);

  v2 = sub_5B218();
  v3 = sub_5B4C8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[37];
    v4 = v0[38];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2DC10(v5, v4, &v10);
    _os_log_impl(&dword_0, v2, v3, "Couldn't create a dialog for %s.", v6, 0xCu);
    sub_5D00(v7);
  }

  sub_5A438();

  v8 = v0[1];

  return v8();
}

uint64_t sub_4E1D8(uint64_t a1)
{
  v2 = v1[54];
  v4 = v1[49];
  v3 = v1[50];
  v5 = v1[48];
  v7 = v1[43];
  v6 = v1[44];
  v8 = v1[42];
  sub_5A438();

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  v9 = v1[1];

  return v9();
}

uint64_t sub_4E2C4()
{
  v19 = v0;
  sub_5D00(v0 + 27);
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  swift_errorRetain();
  v2 = sub_5B218();
  v3 = sub_5B4C8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_5B7E8();
    v8 = sub_2DC10(v6, v7, &v18);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Error publishing output %s.", v4, 0xCu);
    sub_5D00(v5);
  }

  else
  {
  }

  v9 = v0[54];
  v11 = v0[49];
  v10 = v0[50];
  v12 = v0[48];
  v14 = v0[43];
  v13 = v0[44];
  v15 = v0[42];
  sub_5A438();

  (*(v14 + 8))(v13, v15);
  (*(v11 + 8))(v10, v12);

  v16 = v0[1];

  return v16();
}

uint64_t sub_4E508()
{
  sub_5D00(v0 + 2);
  sub_5D00(v0 + 7);
  sub_5D00(v0 + 12);
  sub_5D00(v0 + 17);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for UniversalActionTaskInterruptionFlow.Action(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for UniversalActionTaskInterruptionFlow.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_4E6DC(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_4E6F8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void (*sub_4E720(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_5AF28();
  return sub_3C310;
}

uint64_t sub_4E830(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5934;

  return sub_4CCD0(a1);
}

uint64_t sub_4E8CC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UniversalActionTaskInterruptionFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_4E994@<X0>(void *a2@<X8>)
{
  sub_5B94(&qword_72D68, &unk_5CF50);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_5AF08();

  *a2 = v4;
  return result;
}

uint64_t sub_4EA4C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_4EA98(uint64_t a1)
{
  v2 = sub_5B278();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_377B8(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = v7[2];
      v12 = v7[3];
      if (v13 >= v12 >> 1)
      {
        sub_377B8((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = &protocol witness table for ActionCandidate;
      v14 = sub_5F2C(&v18);
      v9(v14, v5, v2);
      v7 = v21;
      v21[2] = v13 + 1;
      sub_5B7C(&v18, &v7[5 * v13 + 4]);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

char *sub_4EC64(uint64_t a1, uint64_t a2, char *a3)
{
  v55 = a3;
  v56 = a2;
  v3 = sub_59E38();
  v53 = *(v3 - 8);
  v54 = v3;
  __chkstk_darwin(v3);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_5B2D8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5B94(&qword_73A68, &qword_5E278);
  v10 = sub_5B278();
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_5C2D0;
  v14 = v13 + v12;
  sub_4315C(v14);
  v15 = v14 + v11;
  v16 = v9;
  sub_4315C(v15);
  sub_4EA98(v13);

  sub_5B2C8();
  v17 = v58;
  v18 = sub_5B2A8();
  if (!v17)
  {
    v58 = v6;
    v20 = v7;
    if (v19)
    {
      v56 = v18;
      v21 = sub_5B2B8();
      if (v22)
      {
        v50 = v21;
        v51 = v7;
        v52 = v22;
        v57[3] = v10;
        v57[4] = &protocol witness table for ActionCandidate;
        v31 = sub_5F2C(v57);
        sub_4315C(v31);
        v32 = sub_5B298();
        v34 = v33;
        sub_5D00(v57);
        if ((v34 & 1) == 0)
        {
          v44 = [objc_allocWithZone(sub_5B108()) init];
          v55 = v9;
          v16 = v44;
          sub_59E28();
          sub_59E18();
          (*(v53 + 8))(v5, v54);
          v45 = sub_5B338();

          [v16 setIdentifier:v45];

          v46 = sub_5B338();
          [v16 _setLaunchId:v46];

          v47 = sub_5B338();

          [v16 setCandidateBundles:v47];

          v48 = sub_5B338();

          [v16 setCandidateActions:v48];

          v57[0] = v32;
          sub_5B798();
          v49 = sub_5B338();

          [v16 setSelectedCandidateIndex:v49];

          (*(v51 + 8))(v55, v58);
          return v16;
        }

        if (qword_71A58 != -1)
        {
          swift_once();
        }

        v35 = sub_5B228();
        sub_5B44(v35, qword_763B8);
        v36 = sub_5B218();
        v37 = sub_5B4B8();
        v38 = os_log_type_enabled(v36, v37);
        v39 = v58;
        if (v38)
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_0, v36, v37, "[DisambiguateActionsIntent] Could not serialise selected index.", v40, 2u);
        }

        (*(v51 + 8))(v9, v39);
        return 0;
      }

      if (qword_71A58 != -1)
      {
        swift_once();
      }

      v41 = sub_5B228();
      sub_5B44(v41, qword_763B8);
      v24 = sub_5B218();
      v25 = sub_5B4B8();
      v42 = os_log_type_enabled(v24, v25);
      v27 = v58;
      if (v42)
      {
        v28 = v20;
        v29 = swift_slowAlloc();
        *v29 = 0;
        v30 = "[DisambiguateActionsIntent] Could not serialise action representations.";
        goto LABEL_9;
      }
    }

    else
    {
      if (qword_71A58 != -1)
      {
        swift_once();
      }

      v23 = sub_5B228();
      sub_5B44(v23, qword_763B8);
      v24 = sub_5B218();
      v25 = sub_5B4B8();
      v26 = os_log_type_enabled(v24, v25);
      v27 = v58;
      if (v26)
      {
        v28 = v20;
        v29 = swift_slowAlloc();
        *v29 = 0;
        v30 = "[DisambiguateActionsIntent] Could not serialise action bundles.";
LABEL_9:
        _os_log_impl(&dword_0, v24, v25, v30, v29, 2u);

        (*(v28 + 8))(v9, v27);
        return 0;
      }
    }

    (*(v20 + 8))(v9, v27);
    return 0;
  }

  (*(v7 + 8))(v9, v6);
  return v16;
}

uint64_t sub_4F350(uint64_t a1, void *a2)
{
  v3 = sub_5CBC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_5B94(&qword_724C8, &qword_5E270);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_4F420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return _swift_task_switch(sub_4F444, 0, 0);
}

uint64_t sub_4F444()
{
  v1 = sub_4EC64(*(v0 + 144), *(v0 + 152), *(v0 + 160));
  *(v0 + 168) = v1;
  if (v1)
  {
    v3 = [objc_allocWithZone(INInteraction) initWithIntent:v1 response:0];
    *(v0 + 176) = v3;
    [v3 _setDonatedBySiri:1];
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_4F600;
    v4 = swift_continuation_init();
    *(v0 + 136) = sub_5B94(&qword_73A60, &unk_5E260);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_4F350;
    *(v0 + 104) = &unk_6E940;
    *(v0 + 112) = v4;
    [v3 donateInteractionWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_4F600()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_4F84C;
  }

  else
  {
    v2 = sub_4F710;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_4F710()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[21];
  v6 = v0[22];
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v2, v3, "[DisambiguateActionsIntent] Donation success.", v7, 2u);
  }

  else
  {

    v2 = v5;
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_4F84C(uint64_t a1)
{
  v2 = v1[22];
  swift_willThrow();

  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v3 = sub_5B228();
  sub_5B44(v3, qword_763B8);
  swift_errorRetain();
  v4 = sub_5B218();
  v5 = sub_5B4C8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[21];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_0, v4, v5, "[DisambiguateActionsIntent] Donation failed: %@", v8, 0xCu);
    sub_43DAC(v9);
  }

  else
  {
  }

  v11 = v1[1];

  return v11();
}

unint64_t sub_4FA30()
{
  v0 = sub_5A968();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_5AA18();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v16[-v9];
  sub_5A8D8();
  v11 = sub_5A958();
  (*(v1 + 8))(v3, v0);
  if (!*(v11 + 16))
  {

    return 0;
  }

  (*(v5 + 16))(v8, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

  (*(v5 + 32))(v10, v8, v4);
  result = sub_5AB58();
  if (result >> 62)
  {
    v14 = result;
    v15 = sub_5B678();
    result = v14;
    if (v15)
    {
      goto LABEL_6;
    }

LABEL_11:

    v13 = 0;
    goto LABEL_12;
  }

  if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((result & 0xC000000000000001) != 0)
  {
    v13 = sub_5B5B8();
  }

  else
  {
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v13 = *(result + 32);
  }

LABEL_12:
  (*(v5 + 8))(v10, v4);
  return v13;
}

uint64_t sub_4FCF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  sub_5B94(&qword_73CA0, &qword_5C910);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_4FDA0, 0, 0);
}

uint64_t sub_4FDA0()
{
  v1 = v0[11];
  v2 = sub_37670(0, 0, 0);
  v7 = _swiftEmptyArrayStorage;
  v40 = *(v1 + 16);
  if (v40)
  {
    v37 = v0 + 2;
    v8 = v0[11];
    v9 = sub_5B468();
    v10 = 0;
    v11 = *(v9 - 8);
    v39 = *(v11 + 56);
    v38 = (v11 + 48);
    v36 = (v11 + 8);
    v12 = (v8 + 56);
    do
    {
      v43 = v7;
      v44 = v10;
      v14 = v0[12];
      v13 = v0[13];
      v15 = v0[9];
      v16 = v0[10];
      v17 = *v12;
      v41 = *(v12 - 1);
      v18 = v0;
      v42 = v12;
      v19 = *(v12 - 3);
      v20 = *(v12 - 2);
      v39(v13, 1, 1, v9);
      v21 = swift_allocObject();
      v21[2] = 0;
      v21[3] = 0;
      v21[4] = v15;
      v21[5] = v16;
      v22 = v44;
      v21[6] = v44;
      v21[7] = v19;
      v0 = v18;
      v21[8] = v20;
      v21[9] = v41;
      v21[10] = v17;
      sub_1AE38(v13, v14, &qword_73CA0, &qword_5C910);
      LODWORD(v14) = (*v38)(v14, 1, v9);

      v23 = v18[12];
      if (v14 == 1)
      {
        sub_5D4C(v18[12], &qword_73CA0, &qword_5C910);
      }

      else
      {
        sub_5B458();
        (*v36)(v23, v9);
      }

      v24 = v21[2];
      swift_unknownObjectRetain();

      v7 = v43;
      if (v24)
      {
        swift_getObjectType();
        v25 = sub_5B418();
        v27 = v26;
        swift_unknownObjectRelease();
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      sub_5D4C(v0[13], &qword_73CA0, &qword_5C910);
      if (v27 | v25)
      {
        *v37 = 0;
        v37[1] = 0;
        v0[4] = v25;
        v0[5] = v27;
      }

      v2 = swift_task_create();
      v29 = v43[2];
      v28 = v43[3];
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v31 = v2;
        sub_37670((v28 > 1), v29 + 1, 1);
        v2 = v31;
        v22 = v44;
        v7 = v43;
      }

      v10 = v22 + 1;
      v12 = v42 + 4;
      v7[2] = v30;
      v7[v29 + 4] = v2;
    }

    while (v40 != v10);
    goto LABEL_16;
  }

  v30 = _swiftEmptyArrayStorage[2];
  if (v30)
  {
LABEL_16:
    v0[14] = v7;
    v0[15] = v30;
    v0[16] = _swiftEmptyArrayStorage;
    v0[17] = 0;
    if (v7[2])
    {
      v32 = v7[4];
      v0[18] = v32;

      v33 = swift_task_alloc();
      v0[19] = v33;
      v5 = sub_5B94(&qword_724C8, &qword_5E270);
      *v33 = v0;
      v33[1] = sub_501E4;
      v4 = &type metadata for AppNameDisambiguationFlow.Card;
      v6 = &protocol self-conformance witness table for Error;
      v2 = (v0 + 6);
      v3 = v32;
    }

    else
    {
      __break(1u);
    }

    return Task.value.getter(v2, v3, v4, v5, v6);
  }

  v34 = v0[1];

  return v34(_swiftEmptyArrayStorage);
}

uint64_t sub_501E4()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {

    v3 = sub_5052C;
  }

  else
  {
    *(v2 + 168) = *(v2 + 48);
    *(v2 + 184) = *(v2 + 64);
    v3 = sub_5031C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_5031C()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 128);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_58700(0, *(v2 + 2) + 1, 1, *(v0 + 128));
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_58700((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 184);
  v20 = *(v0 + 168);
  v6 = *(v0 + 136);
  v7 = *(v0 + 120);

  *(v2 + 2) = v4 + 1;
  v13 = &v2[24 * v4];
  *(v13 + 2) = v20;
  *(v13 + 6) = v5;
  if (v6 + 1 == v7)
  {

    v14 = *(v0 + 8);

    return v14(v2);
  }

  else
  {
    v16 = *(v0 + 136) + 1;
    *(v0 + 128) = v2;
    *(v0 + 136) = v16;
    v17 = *(v0 + 112);
    if (v16 >= *(v17 + 16))
    {
      __break(1u);
    }

    else
    {
      v18 = *(v17 + 8 * v16 + 32);
      *(v0 + 144) = v18;

      v19 = swift_task_alloc();
      *(v0 + 152) = v19;
      v11 = sub_5B94(&qword_724C8, &qword_5E270);
      *v19 = v0;
      v19[1] = sub_501E4;
      v10 = &type metadata for AppNameDisambiguationFlow.Card;
      v12 = &protocol self-conformance witness table for Error;
      v8 = v0 + 48;
      v9 = v18;
    }

    return Task.value.getter(v8, v9, v10, v11, v12);
  }
}

uint64_t sub_5052C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_505A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  sub_5B94(&qword_73CA0, &qword_5C910);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v4 = sub_5A318();
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v3[19] = *(v5 + 64);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_506F0, 0, 0);
}

uint64_t sub_506F0()
{
  v1 = *(v0[12] + 16);
  sub_37778(0, v1, 0);
  v6 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v7 = v0[18];
    v36 = *(v7 + 16);
    v8 = *(v7 + 80);
    v2 = v0[12] + ((v8 + 32) & ~v8);
    v35 = *(v7 + 72);
    v34 = (v8 + 48) & ~v8;
    v32 = (v7 + 8);
    v33 = (v7 + 32);
    do
    {
      v40 = v1;
      v41 = v6;
      v10 = v0[20];
      v9 = v0[21];
      v11 = v0[17];
      v13 = v0[13];
      v12 = v0[14];
      v37 = v0[10];
      v38 = v0[11];
      v39 = v2;
      v36(v9);
      v14 = sub_5B468();
      v15 = *(v14 - 8);
      (*(v15 + 56))(v12, 1, 1, v14);
      (v36)(v10, v9, v11);
      v16 = swift_allocObject();
      *(v16 + 2) = 0;
      *(v16 + 3) = 0;
      *(v16 + 4) = v37;
      *(v16 + 5) = v38;
      (*v33)(&v16[v34], v10, v11);
      sub_1AE38(v12, v13, &qword_73CA0, &qword_5C910);
      LODWORD(v11) = (*(v15 + 48))(v13, 1, v14);

      v17 = v0[13];
      if (v11 == 1)
      {
        sub_5D4C(v0[13], &qword_73CA0, &qword_5C910);
      }

      else
      {
        sub_5B458();
        (*(v15 + 8))(v17, v14);
      }

      v18 = *(v16 + 2);
      swift_unknownObjectRetain();

      if (v18)
      {
        swift_getObjectType();
        v19 = sub_5B418();
        v21 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      sub_5D4C(v0[14], &qword_73CA0, &qword_5C910);
      if (v21 | v19)
      {
        v0[2] = 0;
        v0[3] = 0;
        v0[4] = v19;
        v0[5] = v21;
      }

      v22 = v0[21];
      v23 = v0[17];
      v24 = swift_task_create();
      (*v32)(v22, v23);
      v6 = v41;
      v26 = v41[2];
      v25 = v41[3];
      if (v26 >= v25 >> 1)
      {
        sub_37778((v25 > 1), v26 + 1, 1);
        v6 = v41;
      }

      v6[2] = v26 + 1;
      v6[v26 + 4] = v24;
      v2 = v39 + v35;
      v1 = v40 - 1;
    }

    while (v40 != 1);
  }

  v0[24] = v6;
  v27 = v6[2];
  v0[25] = v27;
  if (v27)
  {
    v0[27] = 0;
    v0[26] = _swiftEmptyArrayStorage;
    if (v6[2])
    {
      v28 = v6[4];
      v0[28] = v28;

      v29 = swift_task_alloc();
      v0[29] = v29;
      v4 = sub_5B94(&qword_724C8, &qword_5E270);
      *v29 = v0;
      v29[1] = sub_50BE8;
      v3 = &type metadata for AppNameDisambiguationFlow.AppDisambiguationDisplayInfo;
      v5 = &protocol self-conformance witness table for Error;
      v6 = v0 + 6;
      v2 = v28;
    }

    else
    {
      __break(1u);
    }

    return Task.value.getter(v6, v2, v3, v4, v5);
  }

  else
  {

    v30 = v0[1];

    return v30(_swiftEmptyArrayStorage);
  }
}